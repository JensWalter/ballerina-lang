/*
 *  Copyright (c) 2018, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
 *  WSO2 Inc. licenses this file to you under the Apache License,
 *  Version 2.0 (the "License"); you may not use this file except
 *  in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 *
 */
package org.ballerinalang.observe.nativeimpl;

import org.ballerinalang.bre.Context;
import org.ballerinalang.bre.bvm.BlockingNativeCallableUnit;
import org.ballerinalang.jvm.observability.metrics.Gauge;
import org.ballerinalang.jvm.observability.metrics.StatisticConfig;
import org.ballerinalang.jvm.scheduling.Strand;
import org.ballerinalang.jvm.values.ArrayValue;
import org.ballerinalang.jvm.values.MapValue;
import org.ballerinalang.jvm.values.ObjectValue;
import org.ballerinalang.model.types.TypeKind;
import org.ballerinalang.natives.annotations.BallerinaFunction;
import org.ballerinalang.natives.annotations.Receiver;

import java.time.Duration;

/**
 * This is the native initialize function that's getting called when instantiating the Gauge object.
 *
 * @since 0.980.0
 */
@BallerinaFunction(
        orgName = "ballerina",
        packageName = "observe",
        functionName = "initialize",
        receiver = @Receiver(type = TypeKind.OBJECT, structType = ObserveNativeImplConstants.GAUGE,
                structPackage = ObserveNativeImplConstants.OBSERVE_PACKAGE_PATH)
)
public class GaugeInitialize extends BlockingNativeCallableUnit {
    @Override
    public void execute(Context context) {
//        BMap<String, BValue> bStruct = (BMap<String, BValue>) context.getRefArgument(0);
//        BValueArray summaryConfigs = (BValueArray) bStruct.
//                get(ObserveNativeImplConstants.STATISTICS_CONFIG_FIELD);
//        Gauge.Builder gaugeBuilder = Gauge.builder(bStruct.get(ObserveNativeImplConstants.NAME_FIELD).stringValue())
//                .description(bStruct.get(ObserveNativeImplConstants.DESCRIPTION_FIELD).stringValue())
//                .tags(Utils.toStringMap((BMap) bStruct.get(ObserveNativeImplConstants.TAGS_FIELD)));
//        if (summaryConfigs != null && summaryConfigs.size() > 0) {
//            for (int i = 0; i < summaryConfigs.size(); i++) {
//                BMap summaryConfigStruct = (BMap) summaryConfigs.getBValue(i);
//                StatisticConfig.Builder statisticBuilder = StatisticConfig.builder()
//                        .expiry(Duration.ofMillis(((BInteger) summaryConfigStruct
//                                .get(ObserveNativeImplConstants.EXPIRY_FIELD)).intValue()))
//                        .buckets(((BInteger) summaryConfigStruct
//                                .get(ObserveNativeImplConstants.BUCKETS_FIELD)).intValue());
//                BValueArray bFloatArray = (BValueArray) summaryConfigStruct.
//                        get(ObserveNativeImplConstants.PERCENTILES_FIELD);
//                double[] percentiles = new double[(int) bFloatArray.size()];
//                for (int j = 0; j < bFloatArray.size(); j++) {
//                    percentiles[j] = bFloatArray.getFloat(j);
//                }
//                statisticBuilder.percentiles(percentiles);
//                StatisticConfig config = statisticBuilder.build();
//                gaugeBuilder.summarize(config);
//            }
//        }
//        Gauge gauge = gaugeBuilder.build();
//        bStruct.addNativeData(ObserveNativeImplConstants.METRIC_NATIVE_INSTANCE_KEY, gauge);
    }

    public static void initialize(Strand strand, ObjectValue guage) {
        ArrayValue summaryConfigs = (ArrayValue) guage.get(ObserveNativeImplConstants.STATISTICS_CONFIG_FIELD);
        Gauge.Builder gaugeBuilder = Gauge.builder((String) guage.get(ObserveNativeImplConstants.NAME_FIELD))
                .description((String) guage.get(ObserveNativeImplConstants.DESCRIPTION_FIELD))
                .tags(Utils.toStringMap((MapValue<?, ?>) guage.get(ObserveNativeImplConstants.TAGS_FIELD)));
        if (summaryConfigs != null && summaryConfigs.size() > 0) {
            for (int i = 0; i < summaryConfigs.size(); i++) {
                MapValue<String, Object> summaryConfigStruct = (MapValue<String, Object>) summaryConfigs.get(i);
                StatisticConfig.Builder statisticBuilder = StatisticConfig.builder()
                        .expiry(Duration
                                .ofMillis(((long) summaryConfigStruct.get(ObserveNativeImplConstants.EXPIRY_FIELD))))
                        .buckets(((long) summaryConfigStruct.get(ObserveNativeImplConstants.BUCKETS_FIELD)));
                ArrayValue bFloatArray =
                        (ArrayValue) summaryConfigStruct.get(ObserveNativeImplConstants.PERCENTILES_FIELD);
                double[] percentiles = new double[(int) bFloatArray.size()];
                for (int j = 0; j < bFloatArray.size(); j++) {
                    percentiles[j] = bFloatArray.getFloat(j);
                }
                statisticBuilder.percentiles(percentiles);
                StatisticConfig config = statisticBuilder.build();
                gaugeBuilder.summarize(config);
            }
        }
        Gauge gauge = gaugeBuilder.build();
        guage.addNativeData(ObserveNativeImplConstants.METRIC_NATIVE_INSTANCE_KEY, gauge);
    }
}
