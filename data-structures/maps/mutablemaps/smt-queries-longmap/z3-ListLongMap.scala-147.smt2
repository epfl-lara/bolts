; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2724 () Bool)

(assert start!2724)

(declare-fun b_free!561 () Bool)

(declare-fun b_next!561 () Bool)

(assert (=> start!2724 (= b_free!561 (not b_next!561))))

(declare-fun tp!2830 () Bool)

(declare-fun b_and!1085 () Bool)

(assert (=> start!2724 (= tp!2830 b_and!1085)))

(declare-fun res!12002 () Bool)

(declare-fun e!9837 () Bool)

(assert (=> start!2724 (=> (not res!12002) (not e!9837))))

(declare-datatypes ((B!682 0))(
  ( (B!683 (val!439 Int)) )
))
(declare-datatypes ((tuple2!660 0))(
  ( (tuple2!661 (_1!330 (_ BitVec 64)) (_2!330 B!682)) )
))
(declare-datatypes ((List!519 0))(
  ( (Nil!516) (Cons!515 (h!1081 tuple2!660) (t!3035 List!519)) )
))
(declare-datatypes ((ListLongMap!491 0))(
  ( (ListLongMap!492 (toList!261 List!519)) )
))
(declare-fun lm!221 () ListLongMap!491)

(declare-fun p!191 () Int)

(declare-fun forall!141 (List!519 Int) Bool)

(assert (=> start!2724 (= res!12002 (forall!141 (toList!261 lm!221) p!191))))

(assert (=> start!2724 e!9837))

(declare-fun e!9836 () Bool)

(declare-fun inv!881 (ListLongMap!491) Bool)

(assert (=> start!2724 (and (inv!881 lm!221) e!9836)))

(assert (=> start!2724 tp!2830))

(declare-fun b!16041 () Bool)

(declare-fun e!9838 () Bool)

(assert (=> b!16041 (= e!9837 e!9838)))

(declare-fun res!12003 () Bool)

(assert (=> b!16041 (=> (not res!12003) (not e!9838))))

(declare-fun lt!3939 () ListLongMap!491)

(assert (=> b!16041 (= res!12003 (forall!141 (toList!261 lt!3939) p!191))))

(declare-fun tail!75 (ListLongMap!491) ListLongMap!491)

(assert (=> b!16041 (= lt!3939 (tail!75 lm!221))))

(declare-fun b!16042 () Bool)

(declare-fun size!508 (List!519) Int)

(assert (=> b!16042 (= e!9838 (>= (size!508 (toList!261 lt!3939)) (size!508 (toList!261 lm!221))))))

(declare-fun b!16043 () Bool)

(declare-fun tp!2831 () Bool)

(assert (=> b!16043 (= e!9836 tp!2831)))

(declare-fun b!16040 () Bool)

(declare-fun res!12004 () Bool)

(assert (=> b!16040 (=> (not res!12004) (not e!9837))))

(declare-fun isEmpty!151 (ListLongMap!491) Bool)

(assert (=> b!16040 (= res!12004 (not (isEmpty!151 lm!221)))))

(assert (= (and start!2724 res!12002) b!16040))

(assert (= (and b!16040 res!12004) b!16041))

(assert (= (and b!16041 res!12003) b!16042))

(assert (= start!2724 b!16043))

(declare-fun m!11043 () Bool)

(assert (=> start!2724 m!11043))

(declare-fun m!11045 () Bool)

(assert (=> start!2724 m!11045))

(declare-fun m!11047 () Bool)

(assert (=> b!16041 m!11047))

(declare-fun m!11049 () Bool)

(assert (=> b!16041 m!11049))

(declare-fun m!11051 () Bool)

(assert (=> b!16042 m!11051))

(declare-fun m!11053 () Bool)

(assert (=> b!16042 m!11053))

(declare-fun m!11055 () Bool)

(assert (=> b!16040 m!11055))

(check-sat (not b!16043) (not start!2724) (not b!16041) (not b!16042) b_and!1085 (not b!16040) (not b_next!561))
(check-sat b_and!1085 (not b_next!561))
(get-model)

(declare-fun d!2946 () Bool)

(declare-fun lt!3949 () Int)

(assert (=> d!2946 (>= lt!3949 0)))

(declare-fun e!9852 () Int)

(assert (=> d!2946 (= lt!3949 e!9852)))

(declare-fun c!1507 () Bool)

(get-info :version)

(assert (=> d!2946 (= c!1507 ((_ is Nil!516) (toList!261 lt!3939)))))

(assert (=> d!2946 (= (size!508 (toList!261 lt!3939)) lt!3949)))

(declare-fun b!16066 () Bool)

(assert (=> b!16066 (= e!9852 0)))

(declare-fun b!16067 () Bool)

(assert (=> b!16067 (= e!9852 (+ 1 (size!508 (t!3035 (toList!261 lt!3939)))))))

(assert (= (and d!2946 c!1507) b!16066))

(assert (= (and d!2946 (not c!1507)) b!16067))

(declare-fun m!11073 () Bool)

(assert (=> b!16067 m!11073))

(assert (=> b!16042 d!2946))

(declare-fun d!2951 () Bool)

(declare-fun lt!3950 () Int)

(assert (=> d!2951 (>= lt!3950 0)))

(declare-fun e!9855 () Int)

(assert (=> d!2951 (= lt!3950 e!9855)))

(declare-fun c!1510 () Bool)

(assert (=> d!2951 (= c!1510 ((_ is Nil!516) (toList!261 lm!221)))))

(assert (=> d!2951 (= (size!508 (toList!261 lm!221)) lt!3950)))

(declare-fun b!16070 () Bool)

(assert (=> b!16070 (= e!9855 0)))

(declare-fun b!16071 () Bool)

(assert (=> b!16071 (= e!9855 (+ 1 (size!508 (t!3035 (toList!261 lm!221)))))))

(assert (= (and d!2951 c!1510) b!16070))

(assert (= (and d!2951 (not c!1510)) b!16071))

(declare-fun m!11075 () Bool)

(assert (=> b!16071 m!11075))

(assert (=> b!16042 d!2951))

(declare-fun d!2953 () Bool)

(declare-fun res!12022 () Bool)

(declare-fun e!9868 () Bool)

(assert (=> d!2953 (=> res!12022 e!9868)))

(assert (=> d!2953 (= res!12022 ((_ is Nil!516) (toList!261 lm!221)))))

(assert (=> d!2953 (= (forall!141 (toList!261 lm!221) p!191) e!9868)))

(declare-fun b!16088 () Bool)

(declare-fun e!9869 () Bool)

(assert (=> b!16088 (= e!9868 e!9869)))

(declare-fun res!12023 () Bool)

(assert (=> b!16088 (=> (not res!12023) (not e!9869))))

(declare-fun dynLambda!123 (Int tuple2!660) Bool)

(assert (=> b!16088 (= res!12023 (dynLambda!123 p!191 (h!1081 (toList!261 lm!221))))))

(declare-fun b!16089 () Bool)

(assert (=> b!16089 (= e!9869 (forall!141 (t!3035 (toList!261 lm!221)) p!191))))

(assert (= (and d!2953 (not res!12022)) b!16088))

(assert (= (and b!16088 res!12023) b!16089))

(declare-fun b_lambda!1199 () Bool)

(assert (=> (not b_lambda!1199) (not b!16088)))

(declare-fun t!3038 () Bool)

(declare-fun tb!507 () Bool)

(assert (=> (and start!2724 (= p!191 p!191) t!3038) tb!507))

(declare-fun result!867 () Bool)

(assert (=> tb!507 (= result!867 true)))

(assert (=> b!16088 t!3038))

(declare-fun b_and!1089 () Bool)

(assert (= b_and!1085 (and (=> t!3038 result!867) b_and!1089)))

(declare-fun m!11085 () Bool)

(assert (=> b!16088 m!11085))

(declare-fun m!11087 () Bool)

(assert (=> b!16089 m!11087))

(assert (=> start!2724 d!2953))

(declare-fun d!2963 () Bool)

(declare-fun isStrictlySorted!158 (List!519) Bool)

(assert (=> d!2963 (= (inv!881 lm!221) (isStrictlySorted!158 (toList!261 lm!221)))))

(declare-fun bs!747 () Bool)

(assert (= bs!747 d!2963))

(declare-fun m!11093 () Bool)

(assert (=> bs!747 m!11093))

(assert (=> start!2724 d!2963))

(declare-fun d!2967 () Bool)

(declare-fun res!12032 () Bool)

(declare-fun e!9878 () Bool)

(assert (=> d!2967 (=> res!12032 e!9878)))

(assert (=> d!2967 (= res!12032 ((_ is Nil!516) (toList!261 lt!3939)))))

(assert (=> d!2967 (= (forall!141 (toList!261 lt!3939) p!191) e!9878)))

(declare-fun b!16098 () Bool)

(declare-fun e!9879 () Bool)

(assert (=> b!16098 (= e!9878 e!9879)))

(declare-fun res!12033 () Bool)

(assert (=> b!16098 (=> (not res!12033) (not e!9879))))

(assert (=> b!16098 (= res!12033 (dynLambda!123 p!191 (h!1081 (toList!261 lt!3939))))))

(declare-fun b!16099 () Bool)

(assert (=> b!16099 (= e!9879 (forall!141 (t!3035 (toList!261 lt!3939)) p!191))))

(assert (= (and d!2967 (not res!12032)) b!16098))

(assert (= (and b!16098 res!12033) b!16099))

(declare-fun b_lambda!1205 () Bool)

(assert (=> (not b_lambda!1205) (not b!16098)))

(declare-fun t!3044 () Bool)

(declare-fun tb!513 () Bool)

(assert (=> (and start!2724 (= p!191 p!191) t!3044) tb!513))

(declare-fun result!873 () Bool)

(assert (=> tb!513 (= result!873 true)))

(assert (=> b!16098 t!3044))

(declare-fun b_and!1095 () Bool)

(assert (= b_and!1089 (and (=> t!3044 result!873) b_and!1095)))

(declare-fun m!11101 () Bool)

(assert (=> b!16098 m!11101))

(declare-fun m!11103 () Bool)

(assert (=> b!16099 m!11103))

(assert (=> b!16041 d!2967))

(declare-fun d!2973 () Bool)

(declare-fun tail!77 (List!519) List!519)

(assert (=> d!2973 (= (tail!75 lm!221) (ListLongMap!492 (tail!77 (toList!261 lm!221))))))

(declare-fun bs!750 () Bool)

(assert (= bs!750 d!2973))

(declare-fun m!11111 () Bool)

(assert (=> bs!750 m!11111))

(assert (=> b!16041 d!2973))

(declare-fun d!2979 () Bool)

(declare-fun isEmpty!154 (List!519) Bool)

(assert (=> d!2979 (= (isEmpty!151 lm!221) (isEmpty!154 (toList!261 lm!221)))))

(declare-fun bs!753 () Bool)

(assert (= bs!753 d!2979))

(declare-fun m!11121 () Bool)

(assert (=> bs!753 m!11121))

(assert (=> b!16040 d!2979))

(declare-fun b!16113 () Bool)

(declare-fun e!9889 () Bool)

(declare-fun tp_is_empty!825 () Bool)

(declare-fun tp!2843 () Bool)

(assert (=> b!16113 (= e!9889 (and tp_is_empty!825 tp!2843))))

(assert (=> b!16043 (= tp!2831 e!9889)))

(assert (= (and b!16043 ((_ is Cons!515) (toList!261 lm!221))) b!16113))

(declare-fun b_lambda!1215 () Bool)

(assert (= b_lambda!1199 (or (and start!2724 b_free!561) b_lambda!1215)))

(declare-fun b_lambda!1217 () Bool)

(assert (= b_lambda!1205 (or (and start!2724 b_free!561) b_lambda!1217)))

(check-sat (not b!16099) (not b!16113) (not b!16089) b_and!1095 (not b_lambda!1215) (not b_lambda!1217) (not d!2973) (not b!16067) tp_is_empty!825 (not b!16071) (not d!2963) (not d!2979) (not b_next!561))
(check-sat b_and!1095 (not b_next!561))
(get-model)

(declare-fun d!2987 () Bool)

(assert (=> d!2987 (= (tail!77 (toList!261 lm!221)) (t!3035 (toList!261 lm!221)))))

(assert (=> d!2973 d!2987))

(declare-fun d!2989 () Bool)

(declare-fun lt!3955 () Int)

(assert (=> d!2989 (>= lt!3955 0)))

(declare-fun e!9893 () Int)

(assert (=> d!2989 (= lt!3955 e!9893)))

(declare-fun c!1515 () Bool)

(assert (=> d!2989 (= c!1515 ((_ is Nil!516) (t!3035 (toList!261 lm!221))))))

(assert (=> d!2989 (= (size!508 (t!3035 (toList!261 lm!221))) lt!3955)))

(declare-fun b!16119 () Bool)

(assert (=> b!16119 (= e!9893 0)))

(declare-fun b!16120 () Bool)

(assert (=> b!16120 (= e!9893 (+ 1 (size!508 (t!3035 (t!3035 (toList!261 lm!221))))))))

(assert (= (and d!2989 c!1515) b!16119))

(assert (= (and d!2989 (not c!1515)) b!16120))

(declare-fun m!11125 () Bool)

(assert (=> b!16120 m!11125))

(assert (=> b!16071 d!2989))

(declare-fun d!2991 () Bool)

(declare-fun res!12038 () Bool)

(declare-fun e!9894 () Bool)

(assert (=> d!2991 (=> res!12038 e!9894)))

(assert (=> d!2991 (= res!12038 ((_ is Nil!516) (t!3035 (toList!261 lt!3939))))))

(assert (=> d!2991 (= (forall!141 (t!3035 (toList!261 lt!3939)) p!191) e!9894)))

(declare-fun b!16121 () Bool)

(declare-fun e!9895 () Bool)

(assert (=> b!16121 (= e!9894 e!9895)))

(declare-fun res!12039 () Bool)

(assert (=> b!16121 (=> (not res!12039) (not e!9895))))

(assert (=> b!16121 (= res!12039 (dynLambda!123 p!191 (h!1081 (t!3035 (toList!261 lt!3939)))))))

(declare-fun b!16122 () Bool)

(assert (=> b!16122 (= e!9895 (forall!141 (t!3035 (t!3035 (toList!261 lt!3939))) p!191))))

(assert (= (and d!2991 (not res!12038)) b!16121))

(assert (= (and b!16121 res!12039) b!16122))

(declare-fun b_lambda!1223 () Bool)

(assert (=> (not b_lambda!1223) (not b!16121)))

(declare-fun t!3050 () Bool)

(declare-fun tb!519 () Bool)

(assert (=> (and start!2724 (= p!191 p!191) t!3050) tb!519))

(declare-fun result!885 () Bool)

(assert (=> tb!519 (= result!885 true)))

(assert (=> b!16121 t!3050))

(declare-fun b_and!1101 () Bool)

(assert (= b_and!1095 (and (=> t!3050 result!885) b_and!1101)))

(declare-fun m!11127 () Bool)

(assert (=> b!16121 m!11127))

(declare-fun m!11129 () Bool)

(assert (=> b!16122 m!11129))

(assert (=> b!16099 d!2991))

(declare-fun d!2993 () Bool)

(declare-fun res!12050 () Bool)

(declare-fun e!9908 () Bool)

(assert (=> d!2993 (=> res!12050 e!9908)))

(assert (=> d!2993 (= res!12050 (or ((_ is Nil!516) (toList!261 lm!221)) ((_ is Nil!516) (t!3035 (toList!261 lm!221)))))))

(assert (=> d!2993 (= (isStrictlySorted!158 (toList!261 lm!221)) e!9908)))

(declare-fun b!16137 () Bool)

(declare-fun e!9909 () Bool)

(assert (=> b!16137 (= e!9908 e!9909)))

(declare-fun res!12051 () Bool)

(assert (=> b!16137 (=> (not res!12051) (not e!9909))))

(assert (=> b!16137 (= res!12051 (bvslt (_1!330 (h!1081 (toList!261 lm!221))) (_1!330 (h!1081 (t!3035 (toList!261 lm!221))))))))

(declare-fun b!16138 () Bool)

(assert (=> b!16138 (= e!9909 (isStrictlySorted!158 (t!3035 (toList!261 lm!221))))))

(assert (= (and d!2993 (not res!12050)) b!16137))

(assert (= (and b!16137 res!12051) b!16138))

(declare-fun m!11137 () Bool)

(assert (=> b!16138 m!11137))

(assert (=> d!2963 d!2993))

(declare-fun d!3003 () Bool)

(declare-fun res!12054 () Bool)

(declare-fun e!9912 () Bool)

(assert (=> d!3003 (=> res!12054 e!9912)))

(assert (=> d!3003 (= res!12054 ((_ is Nil!516) (t!3035 (toList!261 lm!221))))))

(assert (=> d!3003 (= (forall!141 (t!3035 (toList!261 lm!221)) p!191) e!9912)))

(declare-fun b!16141 () Bool)

(declare-fun e!9913 () Bool)

(assert (=> b!16141 (= e!9912 e!9913)))

(declare-fun res!12055 () Bool)

(assert (=> b!16141 (=> (not res!12055) (not e!9913))))

(assert (=> b!16141 (= res!12055 (dynLambda!123 p!191 (h!1081 (t!3035 (toList!261 lm!221)))))))

(declare-fun b!16142 () Bool)

(assert (=> b!16142 (= e!9913 (forall!141 (t!3035 (t!3035 (toList!261 lm!221))) p!191))))

(assert (= (and d!3003 (not res!12054)) b!16141))

(assert (= (and b!16141 res!12055) b!16142))

(declare-fun b_lambda!1227 () Bool)

(assert (=> (not b_lambda!1227) (not b!16141)))

(declare-fun t!3054 () Bool)

(declare-fun tb!523 () Bool)

(assert (=> (and start!2724 (= p!191 p!191) t!3054) tb!523))

(declare-fun result!889 () Bool)

(assert (=> tb!523 (= result!889 true)))

(assert (=> b!16141 t!3054))

(declare-fun b_and!1105 () Bool)

(assert (= b_and!1101 (and (=> t!3054 result!889) b_and!1105)))

(declare-fun m!11143 () Bool)

(assert (=> b!16141 m!11143))

(declare-fun m!11145 () Bool)

(assert (=> b!16142 m!11145))

(assert (=> b!16089 d!3003))

(declare-fun d!3009 () Bool)

(assert (=> d!3009 (= (isEmpty!154 (toList!261 lm!221)) ((_ is Nil!516) (toList!261 lm!221)))))

(assert (=> d!2979 d!3009))

(declare-fun d!3017 () Bool)

(declare-fun lt!3959 () Int)

(assert (=> d!3017 (>= lt!3959 0)))

(declare-fun e!9917 () Int)

(assert (=> d!3017 (= lt!3959 e!9917)))

(declare-fun c!1519 () Bool)

(assert (=> d!3017 (= c!1519 ((_ is Nil!516) (t!3035 (toList!261 lt!3939))))))

(assert (=> d!3017 (= (size!508 (t!3035 (toList!261 lt!3939))) lt!3959)))

(declare-fun b!16147 () Bool)

(assert (=> b!16147 (= e!9917 0)))

(declare-fun b!16148 () Bool)

(assert (=> b!16148 (= e!9917 (+ 1 (size!508 (t!3035 (t!3035 (toList!261 lt!3939))))))))

(assert (= (and d!3017 c!1519) b!16147))

(assert (= (and d!3017 (not c!1519)) b!16148))

(declare-fun m!11153 () Bool)

(assert (=> b!16148 m!11153))

(assert (=> b!16067 d!3017))

(declare-fun b!16150 () Bool)

(declare-fun e!9919 () Bool)

(declare-fun tp!2848 () Bool)

(assert (=> b!16150 (= e!9919 (and tp_is_empty!825 tp!2848))))

(assert (=> b!16113 (= tp!2843 e!9919)))

(assert (= (and b!16113 ((_ is Cons!515) (t!3035 (toList!261 lm!221)))) b!16150))

(declare-fun b_lambda!1235 () Bool)

(assert (= b_lambda!1223 (or (and start!2724 b_free!561) b_lambda!1235)))

(declare-fun b_lambda!1237 () Bool)

(assert (= b_lambda!1227 (or (and start!2724 b_free!561) b_lambda!1237)))

(check-sat (not b_lambda!1237) (not b!16122) (not b!16148) (not b!16138) (not b!16120) (not b_next!561) (not b!16142) (not b_lambda!1215) (not b_lambda!1217) (not b!16150) (not b_lambda!1235) b_and!1105 tp_is_empty!825)
(check-sat b_and!1105 (not b_next!561))
