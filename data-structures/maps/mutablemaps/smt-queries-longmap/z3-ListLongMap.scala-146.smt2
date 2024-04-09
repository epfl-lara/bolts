; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2676 () Bool)

(assert start!2676)

(declare-fun b_free!555 () Bool)

(declare-fun b_next!555 () Bool)

(assert (=> start!2676 (= b_free!555 (not b_next!555))))

(declare-fun tp!2800 () Bool)

(declare-fun b_and!1055 () Bool)

(assert (=> start!2676 (= tp!2800 b_and!1055)))

(declare-fun res!11925 () Bool)

(declare-fun e!9747 () Bool)

(assert (=> start!2676 (=> (not res!11925) (not e!9747))))

(declare-datatypes ((B!676 0))(
  ( (B!677 (val!436 Int)) )
))
(declare-datatypes ((tuple2!654 0))(
  ( (tuple2!655 (_1!327 (_ BitVec 64)) (_2!327 B!676)) )
))
(declare-datatypes ((List!516 0))(
  ( (Nil!513) (Cons!512 (h!1078 tuple2!654) (t!3008 List!516)) )
))
(declare-datatypes ((ListLongMap!485 0))(
  ( (ListLongMap!486 (toList!258 List!516)) )
))
(declare-fun lm!221 () ListLongMap!485)

(declare-fun p!191 () Int)

(declare-fun forall!138 (List!516 Int) Bool)

(assert (=> start!2676 (= res!11925 (forall!138 (toList!258 lm!221) p!191))))

(assert (=> start!2676 e!9747))

(declare-fun e!9748 () Bool)

(declare-fun inv!873 (ListLongMap!485) Bool)

(assert (=> start!2676 (and (inv!873 lm!221) e!9748)))

(assert (=> start!2676 tp!2800))

(declare-fun b!15936 () Bool)

(declare-fun res!11926 () Bool)

(assert (=> b!15936 (=> (not res!11926) (not e!9747))))

(declare-fun isEmpty!145 (ListLongMap!485) Bool)

(assert (=> b!15936 (= res!11926 (not (isEmpty!145 lm!221)))))

(declare-fun b!15937 () Bool)

(declare-fun tail!69 (ListLongMap!485) ListLongMap!485)

(assert (=> b!15937 (= e!9747 (not (forall!138 (toList!258 (tail!69 lm!221)) p!191)))))

(declare-fun b!15938 () Bool)

(declare-fun tp!2801 () Bool)

(assert (=> b!15938 (= e!9748 tp!2801)))

(assert (= (and start!2676 res!11925) b!15936))

(assert (= (and b!15936 res!11926) b!15937))

(assert (= start!2676 b!15938))

(declare-fun m!10937 () Bool)

(assert (=> start!2676 m!10937))

(declare-fun m!10939 () Bool)

(assert (=> start!2676 m!10939))

(declare-fun m!10941 () Bool)

(assert (=> b!15936 m!10941))

(declare-fun m!10943 () Bool)

(assert (=> b!15937 m!10943))

(declare-fun m!10945 () Bool)

(assert (=> b!15937 m!10945))

(check-sat (not start!2676) (not b_next!555) b_and!1055 (not b!15938) (not b!15937) (not b!15936))
(check-sat b_and!1055 (not b_next!555))
(get-model)

(declare-fun d!2887 () Bool)

(declare-fun isEmpty!149 (List!516) Bool)

(assert (=> d!2887 (= (isEmpty!145 lm!221) (isEmpty!149 (toList!258 lm!221)))))

(declare-fun bs!736 () Bool)

(assert (= bs!736 d!2887))

(declare-fun m!10963 () Bool)

(assert (=> bs!736 m!10963))

(assert (=> b!15936 d!2887))

(declare-fun d!2893 () Bool)

(declare-fun res!11951 () Bool)

(declare-fun e!9773 () Bool)

(assert (=> d!2893 (=> res!11951 e!9773)))

(get-info :version)

(assert (=> d!2893 (= res!11951 ((_ is Nil!513) (toList!258 (tail!69 lm!221))))))

(assert (=> d!2893 (= (forall!138 (toList!258 (tail!69 lm!221)) p!191) e!9773)))

(declare-fun b!15966 () Bool)

(declare-fun e!9774 () Bool)

(assert (=> b!15966 (= e!9773 e!9774)))

(declare-fun res!11952 () Bool)

(assert (=> b!15966 (=> (not res!11952) (not e!9774))))

(declare-fun dynLambda!122 (Int tuple2!654) Bool)

(assert (=> b!15966 (= res!11952 (dynLambda!122 p!191 (h!1078 (toList!258 (tail!69 lm!221)))))))

(declare-fun b!15967 () Bool)

(assert (=> b!15967 (= e!9774 (forall!138 (t!3008 (toList!258 (tail!69 lm!221))) p!191))))

(assert (= (and d!2893 (not res!11951)) b!15966))

(assert (= (and b!15966 res!11952) b!15967))

(declare-fun b_lambda!1157 () Bool)

(assert (=> (not b_lambda!1157) (not b!15966)))

(declare-fun t!3017 () Bool)

(declare-fun tb!489 () Bool)

(assert (=> (and start!2676 (= p!191 p!191) t!3017) tb!489))

(declare-fun result!845 () Bool)

(assert (=> tb!489 (= result!845 true)))

(assert (=> b!15966 t!3017))

(declare-fun b_and!1065 () Bool)

(assert (= b_and!1055 (and (=> t!3017 result!845) b_and!1065)))

(declare-fun m!10979 () Bool)

(assert (=> b!15966 m!10979))

(declare-fun m!10981 () Bool)

(assert (=> b!15967 m!10981))

(assert (=> b!15937 d!2893))

(declare-fun d!2901 () Bool)

(declare-fun tail!73 (List!516) List!516)

(assert (=> d!2901 (= (tail!69 lm!221) (ListLongMap!486 (tail!73 (toList!258 lm!221))))))

(declare-fun bs!740 () Bool)

(assert (= bs!740 d!2901))

(declare-fun m!10989 () Bool)

(assert (=> bs!740 m!10989))

(assert (=> b!15937 d!2901))

(declare-fun d!2907 () Bool)

(declare-fun res!11955 () Bool)

(declare-fun e!9780 () Bool)

(assert (=> d!2907 (=> res!11955 e!9780)))

(assert (=> d!2907 (= res!11955 ((_ is Nil!513) (toList!258 lm!221)))))

(assert (=> d!2907 (= (forall!138 (toList!258 lm!221) p!191) e!9780)))

(declare-fun b!15975 () Bool)

(declare-fun e!9781 () Bool)

(assert (=> b!15975 (= e!9780 e!9781)))

(declare-fun res!11956 () Bool)

(assert (=> b!15975 (=> (not res!11956) (not e!9781))))

(assert (=> b!15975 (= res!11956 (dynLambda!122 p!191 (h!1078 (toList!258 lm!221))))))

(declare-fun b!15976 () Bool)

(assert (=> b!15976 (= e!9781 (forall!138 (t!3008 (toList!258 lm!221)) p!191))))

(assert (= (and d!2907 (not res!11955)) b!15975))

(assert (= (and b!15975 res!11956) b!15976))

(declare-fun b_lambda!1165 () Bool)

(assert (=> (not b_lambda!1165) (not b!15975)))

(declare-fun t!3021 () Bool)

(declare-fun tb!493 () Bool)

(assert (=> (and start!2676 (= p!191 p!191) t!3021) tb!493))

(declare-fun result!849 () Bool)

(assert (=> tb!493 (= result!849 true)))

(assert (=> b!15975 t!3021))

(declare-fun b_and!1069 () Bool)

(assert (= b_and!1065 (and (=> t!3021 result!849) b_and!1069)))

(declare-fun m!10991 () Bool)

(assert (=> b!15975 m!10991))

(declare-fun m!10993 () Bool)

(assert (=> b!15976 m!10993))

(assert (=> start!2676 d!2907))

(declare-fun d!2909 () Bool)

(declare-fun isStrictlySorted!156 (List!516) Bool)

(assert (=> d!2909 (= (inv!873 lm!221) (isStrictlySorted!156 (toList!258 lm!221)))))

(declare-fun bs!742 () Bool)

(assert (= bs!742 d!2909))

(declare-fun m!10997 () Bool)

(assert (=> bs!742 m!10997))

(assert (=> start!2676 d!2909))

(declare-fun b!15986 () Bool)

(declare-fun e!9787 () Bool)

(declare-fun tp_is_empty!821 () Bool)

(declare-fun tp!2816 () Bool)

(assert (=> b!15986 (= e!9787 (and tp_is_empty!821 tp!2816))))

(assert (=> b!15938 (= tp!2801 e!9787)))

(assert (= (and b!15938 ((_ is Cons!512) (toList!258 lm!221))) b!15986))

(declare-fun b_lambda!1171 () Bool)

(assert (= b_lambda!1157 (or (and start!2676 b_free!555) b_lambda!1171)))

(declare-fun b_lambda!1173 () Bool)

(assert (= b_lambda!1165 (or (and start!2676 b_free!555) b_lambda!1173)))

(check-sat (not d!2901) (not d!2909) (not b!15986) (not b!15976) tp_is_empty!821 (not b_next!555) b_and!1069 (not b_lambda!1173) (not b_lambda!1171) (not b!15967) (not d!2887))
(check-sat b_and!1069 (not b_next!555))
(get-model)

(declare-fun d!2921 () Bool)

(assert (=> d!2921 (= (tail!73 (toList!258 lm!221)) (t!3008 (toList!258 lm!221)))))

(assert (=> d!2901 d!2921))

(declare-fun d!2923 () Bool)

(declare-fun res!11963 () Bool)

(declare-fun e!9794 () Bool)

(assert (=> d!2923 (=> res!11963 e!9794)))

(assert (=> d!2923 (= res!11963 ((_ is Nil!513) (t!3008 (toList!258 lm!221))))))

(assert (=> d!2923 (= (forall!138 (t!3008 (toList!258 lm!221)) p!191) e!9794)))

(declare-fun b!15991 () Bool)

(declare-fun e!9795 () Bool)

(assert (=> b!15991 (= e!9794 e!9795)))

(declare-fun res!11964 () Bool)

(assert (=> b!15991 (=> (not res!11964) (not e!9795))))

(assert (=> b!15991 (= res!11964 (dynLambda!122 p!191 (h!1078 (t!3008 (toList!258 lm!221)))))))

(declare-fun b!15992 () Bool)

(assert (=> b!15992 (= e!9795 (forall!138 (t!3008 (t!3008 (toList!258 lm!221))) p!191))))

(assert (= (and d!2923 (not res!11963)) b!15991))

(assert (= (and b!15991 res!11964) b!15992))

(declare-fun b_lambda!1179 () Bool)

(assert (=> (not b_lambda!1179) (not b!15991)))

(declare-fun t!3027 () Bool)

(declare-fun tb!499 () Bool)

(assert (=> (and start!2676 (= p!191 p!191) t!3027) tb!499))

(declare-fun result!859 () Bool)

(assert (=> tb!499 (= result!859 true)))

(assert (=> b!15991 t!3027))

(declare-fun b_and!1075 () Bool)

(assert (= b_and!1069 (and (=> t!3027 result!859) b_and!1075)))

(declare-fun m!11007 () Bool)

(assert (=> b!15991 m!11007))

(declare-fun m!11009 () Bool)

(assert (=> b!15992 m!11009))

(assert (=> b!15976 d!2923))

(declare-fun d!2925 () Bool)

(declare-fun res!11973 () Bool)

(declare-fun e!9805 () Bool)

(assert (=> d!2925 (=> res!11973 e!9805)))

(assert (=> d!2925 (= res!11973 (or ((_ is Nil!513) (toList!258 lm!221)) ((_ is Nil!513) (t!3008 (toList!258 lm!221)))))))

(assert (=> d!2925 (= (isStrictlySorted!156 (toList!258 lm!221)) e!9805)))

(declare-fun b!16004 () Bool)

(declare-fun e!9806 () Bool)

(assert (=> b!16004 (= e!9805 e!9806)))

(declare-fun res!11974 () Bool)

(assert (=> b!16004 (=> (not res!11974) (not e!9806))))

(assert (=> b!16004 (= res!11974 (bvslt (_1!327 (h!1078 (toList!258 lm!221))) (_1!327 (h!1078 (t!3008 (toList!258 lm!221))))))))

(declare-fun b!16005 () Bool)

(assert (=> b!16005 (= e!9806 (isStrictlySorted!156 (t!3008 (toList!258 lm!221))))))

(assert (= (and d!2925 (not res!11973)) b!16004))

(assert (= (and b!16004 res!11974) b!16005))

(declare-fun m!11013 () Bool)

(assert (=> b!16005 m!11013))

(assert (=> d!2909 d!2925))

(declare-fun d!2927 () Bool)

(declare-fun res!11975 () Bool)

(declare-fun e!9807 () Bool)

(assert (=> d!2927 (=> res!11975 e!9807)))

(assert (=> d!2927 (= res!11975 ((_ is Nil!513) (t!3008 (toList!258 (tail!69 lm!221)))))))

(assert (=> d!2927 (= (forall!138 (t!3008 (toList!258 (tail!69 lm!221))) p!191) e!9807)))

(declare-fun b!16006 () Bool)

(declare-fun e!9808 () Bool)

(assert (=> b!16006 (= e!9807 e!9808)))

(declare-fun res!11976 () Bool)

(assert (=> b!16006 (=> (not res!11976) (not e!9808))))

(assert (=> b!16006 (= res!11976 (dynLambda!122 p!191 (h!1078 (t!3008 (toList!258 (tail!69 lm!221))))))))

(declare-fun b!16007 () Bool)

(assert (=> b!16007 (= e!9808 (forall!138 (t!3008 (t!3008 (toList!258 (tail!69 lm!221)))) p!191))))

(assert (= (and d!2927 (not res!11975)) b!16006))

(assert (= (and b!16006 res!11976) b!16007))

(declare-fun b_lambda!1185 () Bool)

(assert (=> (not b_lambda!1185) (not b!16006)))

(declare-fun t!3029 () Bool)

(declare-fun tb!501 () Bool)

(assert (=> (and start!2676 (= p!191 p!191) t!3029) tb!501))

(declare-fun result!861 () Bool)

(assert (=> tb!501 (= result!861 true)))

(assert (=> b!16006 t!3029))

(declare-fun b_and!1077 () Bool)

(assert (= b_and!1075 (and (=> t!3029 result!861) b_and!1077)))

(declare-fun m!11015 () Bool)

(assert (=> b!16006 m!11015))

(declare-fun m!11017 () Bool)

(assert (=> b!16007 m!11017))

(assert (=> b!15967 d!2927))

(declare-fun d!2931 () Bool)

(assert (=> d!2931 (= (isEmpty!149 (toList!258 lm!221)) ((_ is Nil!513) (toList!258 lm!221)))))

(assert (=> d!2887 d!2931))

(declare-fun b!16012 () Bool)

(declare-fun e!9813 () Bool)

(declare-fun tp!2818 () Bool)

(assert (=> b!16012 (= e!9813 (and tp_is_empty!821 tp!2818))))

(assert (=> b!15986 (= tp!2816 e!9813)))

(assert (= (and b!15986 ((_ is Cons!512) (t!3008 (toList!258 lm!221)))) b!16012))

(declare-fun b_lambda!1191 () Bool)

(assert (= b_lambda!1179 (or (and start!2676 b_free!555) b_lambda!1191)))

(declare-fun b_lambda!1193 () Bool)

(assert (= b_lambda!1185 (or (and start!2676 b_free!555) b_lambda!1193)))

(check-sat (not b!15992) b_and!1077 (not b_lambda!1191) (not b!16012) (not b!16007) tp_is_empty!821 (not b_next!555) (not b_lambda!1173) (not b_lambda!1171) (not b!16005) (not b_lambda!1193))
