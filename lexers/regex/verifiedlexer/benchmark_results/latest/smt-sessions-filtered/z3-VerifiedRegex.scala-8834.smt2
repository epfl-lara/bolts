; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472084 () Bool)

(assert start!472084)

(declare-fun b!4676962 () Bool)

(declare-fun res!1970074 () Bool)

(declare-fun e!2918127 () Bool)

(assert (=> b!4676962 (=> res!1970074 e!2918127)))

(declare-datatypes ((K!13575 0))(
  ( (K!13576 (val!19131 Int)) )
))
(declare-datatypes ((V!13821 0))(
  ( (V!13822 (val!19132 Int)) )
))
(declare-datatypes ((tuple2!53474 0))(
  ( (tuple2!53475 (_1!30031 K!13575) (_2!30031 V!13821)) )
))
(declare-datatypes ((List!52321 0))(
  ( (Nil!52197) (Cons!52197 (h!58398 tuple2!53474) (t!359465 List!52321)) )
))
(declare-fun lt!1836704 () List!52321)

(declare-fun key!4653 () K!13575)

(declare-fun containsKey!2905 (List!52321 K!13575) Bool)

(assert (=> b!4676962 (= res!1970074 (containsKey!2905 lt!1836704 key!4653))))

(declare-fun b!4676963 () Bool)

(declare-fun res!1970073 () Bool)

(declare-fun e!2918134 () Bool)

(assert (=> b!4676963 (=> (not res!1970073) (not e!2918134))))

(declare-datatypes ((Hashable!6139 0))(
  ( (HashableExt!6138 (__x!31842 Int)) )
))
(declare-fun hashF!1323 () Hashable!6139)

(declare-fun oldBucket!34 () List!52321)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1596 (List!52321 (_ BitVec 64) Hashable!6139) Bool)

(assert (=> b!4676963 (= res!1970073 (allKeysSameHash!1596 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4676964 () Bool)

(declare-fun res!1970082 () Bool)

(declare-fun e!2918132 () Bool)

(assert (=> b!4676964 (=> (not res!1970082) (not e!2918132))))

(declare-datatypes ((tuple2!53476 0))(
  ( (tuple2!53477 (_1!30032 (_ BitVec 64)) (_2!30032 List!52321)) )
))
(declare-datatypes ((List!52322 0))(
  ( (Nil!52198) (Cons!52198 (h!58399 tuple2!53476) (t!359466 List!52322)) )
))
(declare-datatypes ((ListLongMap!3959 0))(
  ( (ListLongMap!3960 (toList!5429 List!52322)) )
))
(declare-fun lm!2023 () ListLongMap!3959)

(declare-fun allKeysSameHashInMap!1684 (ListLongMap!3959 Hashable!6139) Bool)

(assert (=> b!4676964 (= res!1970082 (allKeysSameHashInMap!1684 lm!2023 hashF!1323))))

(declare-fun b!4676965 () Bool)

(declare-fun res!1970078 () Bool)

(assert (=> b!4676965 (=> (not res!1970078) (not e!2918132))))

(get-info :version)

(assert (=> b!4676965 (= res!1970078 ((_ is Cons!52198) (toList!5429 lm!2023)))))

(declare-fun b!4676966 () Bool)

(declare-fun res!1970083 () Bool)

(assert (=> b!4676966 (=> (not res!1970083) (not e!2918132))))

(declare-fun newBucket!218 () List!52321)

(assert (=> b!4676966 (= res!1970083 (allKeysSameHash!1596 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4676967 () Bool)

(declare-fun res!1970075 () Bool)

(assert (=> b!4676967 (=> (not res!1970075) (not e!2918132))))

(declare-fun hash!3938 (Hashable!6139 K!13575) (_ BitVec 64))

(assert (=> b!4676967 (= res!1970075 (= (hash!3938 hashF!1323 key!4653) hash!405))))

(declare-fun b!4676968 () Bool)

(declare-fun e!2918131 () Bool)

(assert (=> b!4676968 (= e!2918131 e!2918127)))

(declare-fun res!1970071 () Bool)

(assert (=> b!4676968 (=> res!1970071 e!2918127)))

(declare-datatypes ((ListMap!4793 0))(
  ( (ListMap!4794 (toList!5430 List!52321)) )
))
(declare-fun lt!1836710 () ListMap!4793)

(declare-fun lt!1836709 () ListMap!4793)

(declare-fun eq!959 (ListMap!4793 ListMap!4793) Bool)

(declare-fun +!2072 (ListMap!4793 tuple2!53474) ListMap!4793)

(declare-fun addToMapMapFromBucket!1202 (List!52321 ListMap!4793) ListMap!4793)

(assert (=> b!4676968 (= res!1970071 (not (eq!959 (+!2072 lt!1836709 (h!58398 oldBucket!34)) (addToMapMapFromBucket!1202 oldBucket!34 lt!1836710))))))

(declare-fun lt!1836705 () tuple2!53474)

(assert (=> b!4676968 (eq!959 (addToMapMapFromBucket!1202 (Cons!52197 lt!1836705 lt!1836704) lt!1836710) (+!2072 lt!1836709 lt!1836705))))

(declare-datatypes ((Unit!121847 0))(
  ( (Unit!121848) )
))
(declare-fun lt!1836708 () Unit!121847)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!208 (tuple2!53474 List!52321 ListMap!4793) Unit!121847)

(assert (=> b!4676968 (= lt!1836708 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!208 lt!1836705 lt!1836704 lt!1836710))))

(declare-fun head!9831 (List!52321) tuple2!53474)

(assert (=> b!4676968 (= lt!1836705 (head!9831 oldBucket!34))))

(declare-fun b!4676969 () Bool)

(assert (=> b!4676969 (= e!2918134 e!2918132)))

(declare-fun res!1970076 () Bool)

(assert (=> b!4676969 (=> (not res!1970076) (not e!2918132))))

(declare-fun lt!1836706 () ListMap!4793)

(declare-fun contains!15338 (ListMap!4793 K!13575) Bool)

(assert (=> b!4676969 (= res!1970076 (contains!15338 lt!1836706 key!4653))))

(declare-fun extractMap!1796 (List!52322) ListMap!4793)

(assert (=> b!4676969 (= lt!1836706 (extractMap!1796 (toList!5429 lm!2023)))))

(declare-fun b!4676970 () Bool)

(declare-fun e!2918125 () Bool)

(assert (=> b!4676970 (= e!2918125 e!2918131)))

(declare-fun res!1970072 () Bool)

(assert (=> b!4676970 (=> res!1970072 e!2918131)))

(assert (=> b!4676970 (= res!1970072 (not (= lt!1836709 (addToMapMapFromBucket!1202 newBucket!218 lt!1836710))))))

(assert (=> b!4676970 (= lt!1836709 (addToMapMapFromBucket!1202 lt!1836704 lt!1836710))))

(declare-fun b!4676971 () Bool)

(declare-fun e!2918129 () Bool)

(declare-fun tp!1344720 () Bool)

(assert (=> b!4676971 (= e!2918129 tp!1344720)))

(declare-fun e!2918130 () Bool)

(declare-fun tp_is_empty!30375 () Bool)

(declare-fun b!4676973 () Bool)

(declare-fun tp_is_empty!30373 () Bool)

(declare-fun tp!1344721 () Bool)

(assert (=> b!4676973 (= e!2918130 (and tp_is_empty!30373 tp_is_empty!30375 tp!1344721))))

(declare-fun b!4676974 () Bool)

(declare-fun res!1970077 () Bool)

(assert (=> b!4676974 (=> (not res!1970077) (not e!2918132))))

(declare-fun head!9832 (List!52322) tuple2!53476)

(assert (=> b!4676974 (= res!1970077 (= (head!9832 (toList!5429 lm!2023)) (tuple2!53477 hash!405 oldBucket!34)))))

(declare-fun tp!1344719 () Bool)

(declare-fun b!4676975 () Bool)

(declare-fun e!2918126 () Bool)

(assert (=> b!4676975 (= e!2918126 (and tp_is_empty!30373 tp_is_empty!30375 tp!1344719))))

(declare-fun b!4676976 () Bool)

(declare-fun e!2918128 () Bool)

(assert (=> b!4676976 (= e!2918132 (not e!2918128))))

(declare-fun res!1970079 () Bool)

(assert (=> b!4676976 (=> res!1970079 e!2918128)))

(assert (=> b!4676976 (= res!1970079 (or (not ((_ is Cons!52197) oldBucket!34)) (not (= (_1!30031 (h!58398 oldBucket!34)) key!4653))))))

(assert (=> b!4676976 (= lt!1836706 (addToMapMapFromBucket!1202 (_2!30032 (h!58399 (toList!5429 lm!2023))) lt!1836710))))

(assert (=> b!4676976 (= lt!1836710 (extractMap!1796 (t!359466 (toList!5429 lm!2023))))))

(declare-fun tail!8388 (ListLongMap!3959) ListLongMap!3959)

(assert (=> b!4676976 (= (t!359466 (toList!5429 lm!2023)) (toList!5429 (tail!8388 lm!2023)))))

(declare-fun b!4676977 () Bool)

(declare-fun e!2918133 () Bool)

(assert (=> b!4676977 (= e!2918133 e!2918125)))

(declare-fun res!1970070 () Bool)

(assert (=> b!4676977 (=> res!1970070 e!2918125)))

(declare-fun lt!1836707 () List!52322)

(assert (=> b!4676977 (= res!1970070 (not (= (extractMap!1796 lt!1836707) (extractMap!1796 (Cons!52198 (tuple2!53477 hash!405 newBucket!218) (t!359466 (toList!5429 lm!2023)))))))))

(assert (=> b!4676977 (= lt!1836707 (Cons!52198 (tuple2!53477 hash!405 lt!1836704) (t!359466 (toList!5429 lm!2023))))))

(declare-fun b!4676978 () Bool)

(declare-fun res!1970081 () Bool)

(assert (=> b!4676978 (=> (not res!1970081) (not e!2918134))))

(declare-fun noDuplicateKeys!1770 (List!52321) Bool)

(assert (=> b!4676978 (= res!1970081 (noDuplicateKeys!1770 oldBucket!34))))

(declare-fun b!4676979 () Bool)

(declare-fun res!1970084 () Bool)

(assert (=> b!4676979 (=> (not res!1970084) (not e!2918134))))

(assert (=> b!4676979 (= res!1970084 (noDuplicateKeys!1770 newBucket!218))))

(declare-fun b!4676980 () Bool)

(assert (=> b!4676980 (= e!2918128 e!2918133)))

(declare-fun res!1970085 () Bool)

(assert (=> b!4676980 (=> res!1970085 e!2918133)))

(assert (=> b!4676980 (= res!1970085 (not (= lt!1836704 newBucket!218)))))

(declare-fun tail!8389 (List!52321) List!52321)

(assert (=> b!4676980 (= lt!1836704 (tail!8389 oldBucket!34))))

(declare-fun b!4676981 () Bool)

(declare-fun res!1970069 () Bool)

(assert (=> b!4676981 (=> (not res!1970069) (not e!2918134))))

(declare-fun removePairForKey!1365 (List!52321 K!13575) List!52321)

(assert (=> b!4676981 (= res!1970069 (= (removePairForKey!1365 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4676972 () Bool)

(declare-fun lambda!203845 () Int)

(declare-fun forall!11193 (List!52322 Int) Bool)

(assert (=> b!4676972 (= e!2918127 (forall!11193 lt!1836707 lambda!203845))))

(declare-fun res!1970080 () Bool)

(assert (=> start!472084 (=> (not res!1970080) (not e!2918134))))

(assert (=> start!472084 (= res!1970080 (forall!11193 (toList!5429 lm!2023) lambda!203845))))

(assert (=> start!472084 e!2918134))

(declare-fun inv!67449 (ListLongMap!3959) Bool)

(assert (=> start!472084 (and (inv!67449 lm!2023) e!2918129)))

(assert (=> start!472084 tp_is_empty!30373))

(assert (=> start!472084 e!2918126))

(assert (=> start!472084 true))

(assert (=> start!472084 e!2918130))

(assert (= (and start!472084 res!1970080) b!4676978))

(assert (= (and b!4676978 res!1970081) b!4676979))

(assert (= (and b!4676979 res!1970084) b!4676981))

(assert (= (and b!4676981 res!1970069) b!4676963))

(assert (= (and b!4676963 res!1970073) b!4676969))

(assert (= (and b!4676969 res!1970076) b!4676967))

(assert (= (and b!4676967 res!1970075) b!4676966))

(assert (= (and b!4676966 res!1970083) b!4676964))

(assert (= (and b!4676964 res!1970082) b!4676974))

(assert (= (and b!4676974 res!1970077) b!4676965))

(assert (= (and b!4676965 res!1970078) b!4676976))

(assert (= (and b!4676976 (not res!1970079)) b!4676980))

(assert (= (and b!4676980 (not res!1970085)) b!4676977))

(assert (= (and b!4676977 (not res!1970070)) b!4676970))

(assert (= (and b!4676970 (not res!1970072)) b!4676968))

(assert (= (and b!4676968 (not res!1970071)) b!4676962))

(assert (= (and b!4676962 (not res!1970074)) b!4676972))

(assert (= start!472084 b!4676971))

(assert (= (and start!472084 ((_ is Cons!52197) oldBucket!34)) b!4676975))

(assert (= (and start!472084 ((_ is Cons!52197) newBucket!218)) b!4676973))

(declare-fun m!5571137 () Bool)

(assert (=> b!4676974 m!5571137))

(declare-fun m!5571139 () Bool)

(assert (=> b!4676964 m!5571139))

(declare-fun m!5571141 () Bool)

(assert (=> b!4676977 m!5571141))

(declare-fun m!5571143 () Bool)

(assert (=> b!4676977 m!5571143))

(declare-fun m!5571145 () Bool)

(assert (=> b!4676980 m!5571145))

(declare-fun m!5571147 () Bool)

(assert (=> b!4676962 m!5571147))

(declare-fun m!5571149 () Bool)

(assert (=> b!4676979 m!5571149))

(declare-fun m!5571151 () Bool)

(assert (=> b!4676981 m!5571151))

(declare-fun m!5571153 () Bool)

(assert (=> b!4676967 m!5571153))

(declare-fun m!5571155 () Bool)

(assert (=> b!4676976 m!5571155))

(declare-fun m!5571157 () Bool)

(assert (=> b!4676976 m!5571157))

(declare-fun m!5571159 () Bool)

(assert (=> b!4676976 m!5571159))

(declare-fun m!5571161 () Bool)

(assert (=> start!472084 m!5571161))

(declare-fun m!5571163 () Bool)

(assert (=> start!472084 m!5571163))

(declare-fun m!5571165 () Bool)

(assert (=> b!4676966 m!5571165))

(declare-fun m!5571167 () Bool)

(assert (=> b!4676972 m!5571167))

(declare-fun m!5571169 () Bool)

(assert (=> b!4676963 m!5571169))

(declare-fun m!5571171 () Bool)

(assert (=> b!4676969 m!5571171))

(declare-fun m!5571173 () Bool)

(assert (=> b!4676969 m!5571173))

(declare-fun m!5571175 () Bool)

(assert (=> b!4676978 m!5571175))

(declare-fun m!5571177 () Bool)

(assert (=> b!4676970 m!5571177))

(declare-fun m!5571179 () Bool)

(assert (=> b!4676970 m!5571179))

(declare-fun m!5571181 () Bool)

(assert (=> b!4676968 m!5571181))

(declare-fun m!5571183 () Bool)

(assert (=> b!4676968 m!5571183))

(declare-fun m!5571185 () Bool)

(assert (=> b!4676968 m!5571185))

(declare-fun m!5571187 () Bool)

(assert (=> b!4676968 m!5571187))

(assert (=> b!4676968 m!5571183))

(declare-fun m!5571189 () Bool)

(assert (=> b!4676968 m!5571189))

(assert (=> b!4676968 m!5571181))

(declare-fun m!5571191 () Bool)

(assert (=> b!4676968 m!5571191))

(assert (=> b!4676968 m!5571187))

(assert (=> b!4676968 m!5571191))

(declare-fun m!5571193 () Bool)

(assert (=> b!4676968 m!5571193))

(declare-fun m!5571195 () Bool)

(assert (=> b!4676968 m!5571195))

(check-sat (not b!4676978) (not b!4676977) (not b!4676971) (not b!4676970) (not b!4676969) (not b!4676967) (not b!4676973) tp_is_empty!30375 (not start!472084) (not b!4676975) (not b!4676981) (not b!4676964) (not b!4676968) (not b!4676979) (not b!4676976) (not b!4676962) (not b!4676980) (not b!4676974) tp_is_empty!30373 (not b!4676966) (not b!4676963) (not b!4676972))
(check-sat)
(get-model)

(declare-fun d!1486689 () Bool)

(declare-fun res!1970090 () Bool)

(declare-fun e!2918151 () Bool)

(assert (=> d!1486689 (=> res!1970090 e!2918151)))

(assert (=> d!1486689 (= res!1970090 (and ((_ is Cons!52197) lt!1836704) (= (_1!30031 (h!58398 lt!1836704)) key!4653)))))

(assert (=> d!1486689 (= (containsKey!2905 lt!1836704 key!4653) e!2918151)))

(declare-fun b!4677010 () Bool)

(declare-fun e!2918152 () Bool)

(assert (=> b!4677010 (= e!2918151 e!2918152)))

(declare-fun res!1970091 () Bool)

(assert (=> b!4677010 (=> (not res!1970091) (not e!2918152))))

(assert (=> b!4677010 (= res!1970091 ((_ is Cons!52197) lt!1836704))))

(declare-fun b!4677011 () Bool)

(assert (=> b!4677011 (= e!2918152 (containsKey!2905 (t!359465 lt!1836704) key!4653))))

(assert (= (and d!1486689 (not res!1970090)) b!4677010))

(assert (= (and b!4677010 res!1970091) b!4677011))

(declare-fun m!5571201 () Bool)

(assert (=> b!4677011 m!5571201))

(assert (=> b!4676962 d!1486689))

(declare-fun d!1486691 () Bool)

(assert (=> d!1486691 true))

(assert (=> d!1486691 true))

(declare-fun lambda!203848 () Int)

(declare-fun forall!11194 (List!52321 Int) Bool)

(assert (=> d!1486691 (= (allKeysSameHash!1596 oldBucket!34 hash!405 hashF!1323) (forall!11194 oldBucket!34 lambda!203848))))

(declare-fun bs!1080370 () Bool)

(assert (= bs!1080370 d!1486691))

(declare-fun m!5571203 () Bool)

(assert (=> bs!1080370 m!5571203))

(assert (=> b!4676963 d!1486691))

(declare-fun d!1486693 () Bool)

(assert (=> d!1486693 (= (head!9832 (toList!5429 lm!2023)) (h!58399 (toList!5429 lm!2023)))))

(assert (=> b!4676974 d!1486693))

(declare-fun bs!1080371 () Bool)

(declare-fun d!1486695 () Bool)

(assert (= bs!1080371 (and d!1486695 start!472084)))

(declare-fun lambda!203851 () Int)

(assert (=> bs!1080371 (not (= lambda!203851 lambda!203845))))

(assert (=> d!1486695 true))

(assert (=> d!1486695 (= (allKeysSameHashInMap!1684 lm!2023 hashF!1323) (forall!11193 (toList!5429 lm!2023) lambda!203851))))

(declare-fun bs!1080372 () Bool)

(assert (= bs!1080372 d!1486695))

(declare-fun m!5571207 () Bool)

(assert (=> bs!1080372 m!5571207))

(assert (=> b!4676964 d!1486695))

(declare-fun d!1486697 () Bool)

(declare-fun res!1970105 () Bool)

(declare-fun e!2918169 () Bool)

(assert (=> d!1486697 (=> res!1970105 e!2918169)))

(assert (=> d!1486697 (= res!1970105 ((_ is Nil!52198) (toList!5429 lm!2023)))))

(assert (=> d!1486697 (= (forall!11193 (toList!5429 lm!2023) lambda!203845) e!2918169)))

(declare-fun b!4677037 () Bool)

(declare-fun e!2918170 () Bool)

(assert (=> b!4677037 (= e!2918169 e!2918170)))

(declare-fun res!1970106 () Bool)

(assert (=> b!4677037 (=> (not res!1970106) (not e!2918170))))

(declare-fun dynLambda!21668 (Int tuple2!53476) Bool)

(assert (=> b!4677037 (= res!1970106 (dynLambda!21668 lambda!203845 (h!58399 (toList!5429 lm!2023))))))

(declare-fun b!4677038 () Bool)

(assert (=> b!4677038 (= e!2918170 (forall!11193 (t!359466 (toList!5429 lm!2023)) lambda!203845))))

(assert (= (and d!1486697 (not res!1970105)) b!4677037))

(assert (= (and b!4677037 res!1970106) b!4677038))

(declare-fun b_lambda!176581 () Bool)

(assert (=> (not b_lambda!176581) (not b!4677037)))

(declare-fun m!5571227 () Bool)

(assert (=> b!4677037 m!5571227))

(declare-fun m!5571229 () Bool)

(assert (=> b!4677038 m!5571229))

(assert (=> start!472084 d!1486697))

(declare-fun d!1486701 () Bool)

(declare-fun isStrictlySorted!605 (List!52322) Bool)

(assert (=> d!1486701 (= (inv!67449 lm!2023) (isStrictlySorted!605 (toList!5429 lm!2023)))))

(declare-fun bs!1080373 () Bool)

(assert (= bs!1080373 d!1486701))

(declare-fun m!5571231 () Bool)

(assert (=> bs!1080373 m!5571231))

(assert (=> start!472084 d!1486701))

(declare-fun bs!1080385 () Bool)

(declare-fun b!4677081 () Bool)

(assert (= bs!1080385 (and b!4677081 d!1486691)))

(declare-fun lambda!203902 () Int)

(assert (=> bs!1080385 (not (= lambda!203902 lambda!203848))))

(assert (=> b!4677081 true))

(declare-fun bs!1080386 () Bool)

(declare-fun b!4677079 () Bool)

(assert (= bs!1080386 (and b!4677079 d!1486691)))

(declare-fun lambda!203903 () Int)

(assert (=> bs!1080386 (not (= lambda!203903 lambda!203848))))

(declare-fun bs!1080387 () Bool)

(assert (= bs!1080387 (and b!4677079 b!4677081)))

(assert (=> bs!1080387 (= lambda!203903 lambda!203902)))

(assert (=> b!4677079 true))

(declare-fun lambda!203906 () Int)

(assert (=> bs!1080386 (not (= lambda!203906 lambda!203848))))

(declare-fun lt!1836827 () ListMap!4793)

(assert (=> bs!1080387 (= (= lt!1836827 lt!1836710) (= lambda!203906 lambda!203902))))

(assert (=> b!4677079 (= (= lt!1836827 lt!1836710) (= lambda!203906 lambda!203903))))

(assert (=> b!4677079 true))

(declare-fun bs!1080388 () Bool)

(declare-fun d!1486703 () Bool)

(assert (= bs!1080388 (and d!1486703 d!1486691)))

(declare-fun lambda!203909 () Int)

(assert (=> bs!1080388 (not (= lambda!203909 lambda!203848))))

(declare-fun bs!1080389 () Bool)

(assert (= bs!1080389 (and d!1486703 b!4677081)))

(declare-fun lt!1836832 () ListMap!4793)

(assert (=> bs!1080389 (= (= lt!1836832 lt!1836710) (= lambda!203909 lambda!203902))))

(declare-fun bs!1080390 () Bool)

(assert (= bs!1080390 (and d!1486703 b!4677079)))

(assert (=> bs!1080390 (= (= lt!1836832 lt!1836710) (= lambda!203909 lambda!203903))))

(assert (=> bs!1080390 (= (= lt!1836832 lt!1836827) (= lambda!203909 lambda!203906))))

(assert (=> d!1486703 true))

(declare-fun b!4677077 () Bool)

(declare-fun e!2918196 () Bool)

(declare-fun invariantList!1366 (List!52321) Bool)

(assert (=> b!4677077 (= e!2918196 (invariantList!1366 (toList!5430 lt!1836832)))))

(declare-fun b!4677078 () Bool)

(declare-fun res!1970127 () Bool)

(assert (=> b!4677078 (=> (not res!1970127) (not e!2918196))))

(assert (=> b!4677078 (= res!1970127 (forall!11194 (toList!5430 lt!1836710) lambda!203909))))

(declare-fun e!2918197 () ListMap!4793)

(assert (=> b!4677079 (= e!2918197 lt!1836827)))

(declare-fun lt!1836833 () ListMap!4793)

(assert (=> b!4677079 (= lt!1836833 (+!2072 lt!1836710 (h!58398 (_2!30032 (h!58399 (toList!5429 lm!2023))))))))

(assert (=> b!4677079 (= lt!1836827 (addToMapMapFromBucket!1202 (t!359465 (_2!30032 (h!58399 (toList!5429 lm!2023)))) (+!2072 lt!1836710 (h!58398 (_2!30032 (h!58399 (toList!5429 lm!2023)))))))))

(declare-fun lt!1836818 () Unit!121847)

(declare-fun call!326830 () Unit!121847)

(assert (=> b!4677079 (= lt!1836818 call!326830)))

(declare-fun call!326831 () Bool)

(assert (=> b!4677079 call!326831))

(declare-fun lt!1836835 () Unit!121847)

(assert (=> b!4677079 (= lt!1836835 lt!1836818)))

(assert (=> b!4677079 (forall!11194 (toList!5430 lt!1836833) lambda!203906)))

(declare-fun lt!1836823 () Unit!121847)

(declare-fun Unit!121851 () Unit!121847)

(assert (=> b!4677079 (= lt!1836823 Unit!121851)))

(declare-fun call!326829 () Bool)

(assert (=> b!4677079 call!326829))

(declare-fun lt!1836830 () Unit!121847)

(declare-fun Unit!121852 () Unit!121847)

(assert (=> b!4677079 (= lt!1836830 Unit!121852)))

(declare-fun lt!1836825 () Unit!121847)

(declare-fun Unit!121853 () Unit!121847)

(assert (=> b!4677079 (= lt!1836825 Unit!121853)))

(declare-fun lt!1836829 () Unit!121847)

(declare-fun forallContained!3337 (List!52321 Int tuple2!53474) Unit!121847)

(assert (=> b!4677079 (= lt!1836829 (forallContained!3337 (toList!5430 lt!1836833) lambda!203906 (h!58398 (_2!30032 (h!58399 (toList!5429 lm!2023))))))))

(assert (=> b!4677079 (contains!15338 lt!1836833 (_1!30031 (h!58398 (_2!30032 (h!58399 (toList!5429 lm!2023))))))))

(declare-fun lt!1836826 () Unit!121847)

(declare-fun Unit!121854 () Unit!121847)

(assert (=> b!4677079 (= lt!1836826 Unit!121854)))

(assert (=> b!4677079 (contains!15338 lt!1836827 (_1!30031 (h!58398 (_2!30032 (h!58399 (toList!5429 lm!2023))))))))

(declare-fun lt!1836822 () Unit!121847)

(declare-fun Unit!121856 () Unit!121847)

(assert (=> b!4677079 (= lt!1836822 Unit!121856)))

(assert (=> b!4677079 (forall!11194 (_2!30032 (h!58399 (toList!5429 lm!2023))) lambda!203906)))

(declare-fun lt!1836834 () Unit!121847)

(declare-fun Unit!121857 () Unit!121847)

(assert (=> b!4677079 (= lt!1836834 Unit!121857)))

(assert (=> b!4677079 (forall!11194 (toList!5430 lt!1836833) lambda!203906)))

(declare-fun lt!1836821 () Unit!121847)

(declare-fun Unit!121858 () Unit!121847)

(assert (=> b!4677079 (= lt!1836821 Unit!121858)))

(declare-fun lt!1836831 () Unit!121847)

(declare-fun Unit!121859 () Unit!121847)

(assert (=> b!4677079 (= lt!1836831 Unit!121859)))

(declare-fun lt!1836819 () Unit!121847)

(declare-fun addForallContainsKeyThenBeforeAdding!652 (ListMap!4793 ListMap!4793 K!13575 V!13821) Unit!121847)

(assert (=> b!4677079 (= lt!1836819 (addForallContainsKeyThenBeforeAdding!652 lt!1836710 lt!1836827 (_1!30031 (h!58398 (_2!30032 (h!58399 (toList!5429 lm!2023))))) (_2!30031 (h!58398 (_2!30032 (h!58399 (toList!5429 lm!2023)))))))))

(assert (=> b!4677079 (forall!11194 (toList!5430 lt!1836710) lambda!203906)))

(declare-fun lt!1836816 () Unit!121847)

(assert (=> b!4677079 (= lt!1836816 lt!1836819)))

(assert (=> b!4677079 (forall!11194 (toList!5430 lt!1836710) lambda!203906)))

(declare-fun lt!1836824 () Unit!121847)

(declare-fun Unit!121860 () Unit!121847)

(assert (=> b!4677079 (= lt!1836824 Unit!121860)))

(declare-fun res!1970125 () Bool)

(assert (=> b!4677079 (= res!1970125 (forall!11194 (_2!30032 (h!58399 (toList!5429 lm!2023))) lambda!203906))))

(declare-fun e!2918198 () Bool)

(assert (=> b!4677079 (=> (not res!1970125) (not e!2918198))))

(assert (=> b!4677079 e!2918198))

(declare-fun lt!1836820 () Unit!121847)

(declare-fun Unit!121862 () Unit!121847)

(assert (=> b!4677079 (= lt!1836820 Unit!121862)))

(declare-fun bm!326824 () Bool)

(declare-fun c!800260 () Bool)

(assert (=> bm!326824 (= call!326829 (forall!11194 (ite c!800260 (toList!5430 lt!1836710) (t!359465 (_2!30032 (h!58399 (toList!5429 lm!2023))))) (ite c!800260 lambda!203902 lambda!203906)))))

(declare-fun bm!326825 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!654 (ListMap!4793) Unit!121847)

(assert (=> bm!326825 (= call!326830 (lemmaContainsAllItsOwnKeys!654 lt!1836710))))

(declare-fun b!4677080 () Bool)

(assert (=> b!4677080 (= e!2918198 (forall!11194 (toList!5430 lt!1836710) lambda!203906))))

(assert (=> d!1486703 e!2918196))

(declare-fun res!1970126 () Bool)

(assert (=> d!1486703 (=> (not res!1970126) (not e!2918196))))

(assert (=> d!1486703 (= res!1970126 (forall!11194 (_2!30032 (h!58399 (toList!5429 lm!2023))) lambda!203909))))

(assert (=> d!1486703 (= lt!1836832 e!2918197)))

(assert (=> d!1486703 (= c!800260 ((_ is Nil!52197) (_2!30032 (h!58399 (toList!5429 lm!2023)))))))

(assert (=> d!1486703 (noDuplicateKeys!1770 (_2!30032 (h!58399 (toList!5429 lm!2023))))))

(assert (=> d!1486703 (= (addToMapMapFromBucket!1202 (_2!30032 (h!58399 (toList!5429 lm!2023))) lt!1836710) lt!1836832)))

(assert (=> b!4677081 (= e!2918197 lt!1836710)))

(declare-fun lt!1836828 () Unit!121847)

(assert (=> b!4677081 (= lt!1836828 call!326830)))

(assert (=> b!4677081 call!326831))

(declare-fun lt!1836815 () Unit!121847)

(assert (=> b!4677081 (= lt!1836815 lt!1836828)))

(assert (=> b!4677081 call!326829))

(declare-fun lt!1836817 () Unit!121847)

(declare-fun Unit!121870 () Unit!121847)

(assert (=> b!4677081 (= lt!1836817 Unit!121870)))

(declare-fun bm!326826 () Bool)

(assert (=> bm!326826 (= call!326831 (forall!11194 (toList!5430 lt!1836710) (ite c!800260 lambda!203902 lambda!203903)))))

(assert (= (and d!1486703 c!800260) b!4677081))

(assert (= (and d!1486703 (not c!800260)) b!4677079))

(assert (= (and b!4677079 res!1970125) b!4677080))

(assert (= (or b!4677081 b!4677079) bm!326825))

(assert (= (or b!4677081 b!4677079) bm!326826))

(assert (= (or b!4677081 b!4677079) bm!326824))

(assert (= (and d!1486703 res!1970126) b!4677078))

(assert (= (and b!4677078 res!1970127) b!4677077))

(declare-fun m!5571263 () Bool)

(assert (=> d!1486703 m!5571263))

(declare-fun m!5571265 () Bool)

(assert (=> d!1486703 m!5571265))

(declare-fun m!5571267 () Bool)

(assert (=> bm!326824 m!5571267))

(declare-fun m!5571269 () Bool)

(assert (=> b!4677078 m!5571269))

(declare-fun m!5571271 () Bool)

(assert (=> b!4677077 m!5571271))

(declare-fun m!5571273 () Bool)

(assert (=> b!4677080 m!5571273))

(declare-fun m!5571275 () Bool)

(assert (=> bm!326826 m!5571275))

(declare-fun m!5571277 () Bool)

(assert (=> bm!326825 m!5571277))

(declare-fun m!5571279 () Bool)

(assert (=> b!4677079 m!5571279))

(declare-fun m!5571281 () Bool)

(assert (=> b!4677079 m!5571281))

(declare-fun m!5571283 () Bool)

(assert (=> b!4677079 m!5571283))

(declare-fun m!5571285 () Bool)

(assert (=> b!4677079 m!5571285))

(assert (=> b!4677079 m!5571281))

(declare-fun m!5571287 () Bool)

(assert (=> b!4677079 m!5571287))

(declare-fun m!5571289 () Bool)

(assert (=> b!4677079 m!5571289))

(declare-fun m!5571291 () Bool)

(assert (=> b!4677079 m!5571291))

(declare-fun m!5571293 () Bool)

(assert (=> b!4677079 m!5571293))

(assert (=> b!4677079 m!5571291))

(assert (=> b!4677079 m!5571273))

(assert (=> b!4677079 m!5571279))

(assert (=> b!4677079 m!5571273))

(assert (=> b!4676976 d!1486703))

(declare-fun bs!1080394 () Bool)

(declare-fun d!1486717 () Bool)

(assert (= bs!1080394 (and d!1486717 start!472084)))

(declare-fun lambda!203926 () Int)

(assert (=> bs!1080394 (= lambda!203926 lambda!203845)))

(declare-fun bs!1080395 () Bool)

(assert (= bs!1080395 (and d!1486717 d!1486695)))

(assert (=> bs!1080395 (not (= lambda!203926 lambda!203851))))

(declare-fun lt!1836871 () ListMap!4793)

(assert (=> d!1486717 (invariantList!1366 (toList!5430 lt!1836871))))

(declare-fun e!2918208 () ListMap!4793)

(assert (=> d!1486717 (= lt!1836871 e!2918208)))

(declare-fun c!800264 () Bool)

(assert (=> d!1486717 (= c!800264 ((_ is Cons!52198) (t!359466 (toList!5429 lm!2023))))))

(assert (=> d!1486717 (forall!11193 (t!359466 (toList!5429 lm!2023)) lambda!203926)))

(assert (=> d!1486717 (= (extractMap!1796 (t!359466 (toList!5429 lm!2023))) lt!1836871)))

(declare-fun b!4677101 () Bool)

(assert (=> b!4677101 (= e!2918208 (addToMapMapFromBucket!1202 (_2!30032 (h!58399 (t!359466 (toList!5429 lm!2023)))) (extractMap!1796 (t!359466 (t!359466 (toList!5429 lm!2023))))))))

(declare-fun b!4677102 () Bool)

(assert (=> b!4677102 (= e!2918208 (ListMap!4794 Nil!52197))))

(assert (= (and d!1486717 c!800264) b!4677101))

(assert (= (and d!1486717 (not c!800264)) b!4677102))

(declare-fun m!5571295 () Bool)

(assert (=> d!1486717 m!5571295))

(declare-fun m!5571297 () Bool)

(assert (=> d!1486717 m!5571297))

(declare-fun m!5571299 () Bool)

(assert (=> b!4677101 m!5571299))

(assert (=> b!4677101 m!5571299))

(declare-fun m!5571301 () Bool)

(assert (=> b!4677101 m!5571301))

(assert (=> b!4676976 d!1486717))

(declare-fun d!1486719 () Bool)

(declare-fun tail!8390 (List!52322) List!52322)

(assert (=> d!1486719 (= (tail!8388 lm!2023) (ListLongMap!3960 (tail!8390 (toList!5429 lm!2023))))))

(declare-fun bs!1080396 () Bool)

(assert (= bs!1080396 d!1486719))

(declare-fun m!5571313 () Bool)

(assert (=> bs!1080396 m!5571313))

(assert (=> b!4676976 d!1486719))

(declare-fun bs!1080397 () Bool)

(declare-fun d!1486721 () Bool)

(assert (= bs!1080397 (and d!1486721 b!4677079)))

(declare-fun lambda!203927 () Int)

(assert (=> bs!1080397 (not (= lambda!203927 lambda!203903))))

(declare-fun bs!1080398 () Bool)

(assert (= bs!1080398 (and d!1486721 d!1486691)))

(assert (=> bs!1080398 (= lambda!203927 lambda!203848)))

(declare-fun bs!1080399 () Bool)

(assert (= bs!1080399 (and d!1486721 d!1486703)))

(assert (=> bs!1080399 (not (= lambda!203927 lambda!203909))))

(assert (=> bs!1080397 (not (= lambda!203927 lambda!203906))))

(declare-fun bs!1080400 () Bool)

(assert (= bs!1080400 (and d!1486721 b!4677081)))

(assert (=> bs!1080400 (not (= lambda!203927 lambda!203902))))

(assert (=> d!1486721 true))

(assert (=> d!1486721 true))

(assert (=> d!1486721 (= (allKeysSameHash!1596 newBucket!218 hash!405 hashF!1323) (forall!11194 newBucket!218 lambda!203927))))

(declare-fun bs!1080402 () Bool)

(assert (= bs!1080402 d!1486721))

(declare-fun m!5571339 () Bool)

(assert (=> bs!1080402 m!5571339))

(assert (=> b!4676966 d!1486721))

(declare-fun bs!1080405 () Bool)

(declare-fun d!1486725 () Bool)

(assert (= bs!1080405 (and d!1486725 start!472084)))

(declare-fun lambda!203929 () Int)

(assert (=> bs!1080405 (= lambda!203929 lambda!203845)))

(declare-fun bs!1080407 () Bool)

(assert (= bs!1080407 (and d!1486725 d!1486695)))

(assert (=> bs!1080407 (not (= lambda!203929 lambda!203851))))

(declare-fun bs!1080409 () Bool)

(assert (= bs!1080409 (and d!1486725 d!1486717)))

(assert (=> bs!1080409 (= lambda!203929 lambda!203926)))

(declare-fun lt!1836873 () ListMap!4793)

(assert (=> d!1486725 (invariantList!1366 (toList!5430 lt!1836873))))

(declare-fun e!2918210 () ListMap!4793)

(assert (=> d!1486725 (= lt!1836873 e!2918210)))

(declare-fun c!800266 () Bool)

(assert (=> d!1486725 (= c!800266 ((_ is Cons!52198) lt!1836707))))

(assert (=> d!1486725 (forall!11193 lt!1836707 lambda!203929)))

(assert (=> d!1486725 (= (extractMap!1796 lt!1836707) lt!1836873)))

(declare-fun b!4677105 () Bool)

(assert (=> b!4677105 (= e!2918210 (addToMapMapFromBucket!1202 (_2!30032 (h!58399 lt!1836707)) (extractMap!1796 (t!359466 lt!1836707))))))

(declare-fun b!4677106 () Bool)

(assert (=> b!4677106 (= e!2918210 (ListMap!4794 Nil!52197))))

(assert (= (and d!1486725 c!800266) b!4677105))

(assert (= (and d!1486725 (not c!800266)) b!4677106))

(declare-fun m!5571343 () Bool)

(assert (=> d!1486725 m!5571343))

(declare-fun m!5571347 () Bool)

(assert (=> d!1486725 m!5571347))

(declare-fun m!5571349 () Bool)

(assert (=> b!4677105 m!5571349))

(assert (=> b!4677105 m!5571349))

(declare-fun m!5571355 () Bool)

(assert (=> b!4677105 m!5571355))

(assert (=> b!4676977 d!1486725))

(declare-fun bs!1080410 () Bool)

(declare-fun d!1486729 () Bool)

(assert (= bs!1080410 (and d!1486729 start!472084)))

(declare-fun lambda!203930 () Int)

(assert (=> bs!1080410 (= lambda!203930 lambda!203845)))

(declare-fun bs!1080411 () Bool)

(assert (= bs!1080411 (and d!1486729 d!1486695)))

(assert (=> bs!1080411 (not (= lambda!203930 lambda!203851))))

(declare-fun bs!1080412 () Bool)

(assert (= bs!1080412 (and d!1486729 d!1486717)))

(assert (=> bs!1080412 (= lambda!203930 lambda!203926)))

(declare-fun bs!1080413 () Bool)

(assert (= bs!1080413 (and d!1486729 d!1486725)))

(assert (=> bs!1080413 (= lambda!203930 lambda!203929)))

(declare-fun lt!1836874 () ListMap!4793)

(assert (=> d!1486729 (invariantList!1366 (toList!5430 lt!1836874))))

(declare-fun e!2918211 () ListMap!4793)

(assert (=> d!1486729 (= lt!1836874 e!2918211)))

(declare-fun c!800267 () Bool)

(assert (=> d!1486729 (= c!800267 ((_ is Cons!52198) (Cons!52198 (tuple2!53477 hash!405 newBucket!218) (t!359466 (toList!5429 lm!2023)))))))

(assert (=> d!1486729 (forall!11193 (Cons!52198 (tuple2!53477 hash!405 newBucket!218) (t!359466 (toList!5429 lm!2023))) lambda!203930)))

(assert (=> d!1486729 (= (extractMap!1796 (Cons!52198 (tuple2!53477 hash!405 newBucket!218) (t!359466 (toList!5429 lm!2023)))) lt!1836874)))

(declare-fun b!4677107 () Bool)

(assert (=> b!4677107 (= e!2918211 (addToMapMapFromBucket!1202 (_2!30032 (h!58399 (Cons!52198 (tuple2!53477 hash!405 newBucket!218) (t!359466 (toList!5429 lm!2023))))) (extractMap!1796 (t!359466 (Cons!52198 (tuple2!53477 hash!405 newBucket!218) (t!359466 (toList!5429 lm!2023)))))))))

(declare-fun b!4677108 () Bool)

(assert (=> b!4677108 (= e!2918211 (ListMap!4794 Nil!52197))))

(assert (= (and d!1486729 c!800267) b!4677107))

(assert (= (and d!1486729 (not c!800267)) b!4677108))

(declare-fun m!5571359 () Bool)

(assert (=> d!1486729 m!5571359))

(declare-fun m!5571361 () Bool)

(assert (=> d!1486729 m!5571361))

(declare-fun m!5571363 () Bool)

(assert (=> b!4677107 m!5571363))

(assert (=> b!4677107 m!5571363))

(declare-fun m!5571365 () Bool)

(assert (=> b!4677107 m!5571365))

(assert (=> b!4676977 d!1486729))

(declare-fun d!1486733 () Bool)

(declare-fun hash!3939 (Hashable!6139 K!13575) (_ BitVec 64))

(assert (=> d!1486733 (= (hash!3938 hashF!1323 key!4653) (hash!3939 hashF!1323 key!4653))))

(declare-fun bs!1080415 () Bool)

(assert (= bs!1080415 d!1486733))

(declare-fun m!5571371 () Bool)

(assert (=> bs!1080415 m!5571371))

(assert (=> b!4676967 d!1486733))

(declare-fun d!1486737 () Bool)

(declare-fun res!1970143 () Bool)

(declare-fun e!2918218 () Bool)

(assert (=> d!1486737 (=> res!1970143 e!2918218)))

(assert (=> d!1486737 (= res!1970143 (not ((_ is Cons!52197) oldBucket!34)))))

(assert (=> d!1486737 (= (noDuplicateKeys!1770 oldBucket!34) e!2918218)))

(declare-fun b!4677115 () Bool)

(declare-fun e!2918219 () Bool)

(assert (=> b!4677115 (= e!2918218 e!2918219)))

(declare-fun res!1970144 () Bool)

(assert (=> b!4677115 (=> (not res!1970144) (not e!2918219))))

(assert (=> b!4677115 (= res!1970144 (not (containsKey!2905 (t!359465 oldBucket!34) (_1!30031 (h!58398 oldBucket!34)))))))

(declare-fun b!4677116 () Bool)

(assert (=> b!4677116 (= e!2918219 (noDuplicateKeys!1770 (t!359465 oldBucket!34)))))

(assert (= (and d!1486737 (not res!1970143)) b!4677115))

(assert (= (and b!4677115 res!1970144) b!4677116))

(declare-fun m!5571373 () Bool)

(assert (=> b!4677115 m!5571373))

(declare-fun m!5571375 () Bool)

(assert (=> b!4677116 m!5571375))

(assert (=> b!4676978 d!1486737))

(declare-fun d!1486739 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9089 (List!52321) (InoxSet tuple2!53474))

(assert (=> d!1486739 (= (eq!959 (+!2072 lt!1836709 (h!58398 oldBucket!34)) (addToMapMapFromBucket!1202 oldBucket!34 lt!1836710)) (= (content!9089 (toList!5430 (+!2072 lt!1836709 (h!58398 oldBucket!34)))) (content!9089 (toList!5430 (addToMapMapFromBucket!1202 oldBucket!34 lt!1836710)))))))

(declare-fun bs!1080416 () Bool)

(assert (= bs!1080416 d!1486739))

(declare-fun m!5571377 () Bool)

(assert (=> bs!1080416 m!5571377))

(declare-fun m!5571379 () Bool)

(assert (=> bs!1080416 m!5571379))

(assert (=> b!4676968 d!1486739))

(declare-fun d!1486741 () Bool)

(declare-fun e!2918225 () Bool)

(assert (=> d!1486741 e!2918225))

(declare-fun res!1970156 () Bool)

(assert (=> d!1486741 (=> (not res!1970156) (not e!2918225))))

(declare-fun lt!1836897 () ListMap!4793)

(assert (=> d!1486741 (= res!1970156 (contains!15338 lt!1836897 (_1!30031 (h!58398 oldBucket!34))))))

(declare-fun lt!1836895 () List!52321)

(assert (=> d!1486741 (= lt!1836897 (ListMap!4794 lt!1836895))))

(declare-fun lt!1836896 () Unit!121847)

(declare-fun lt!1836898 () Unit!121847)

(assert (=> d!1486741 (= lt!1836896 lt!1836898)))

(declare-datatypes ((Option!11961 0))(
  ( (None!11960) (Some!11960 (v!46323 V!13821)) )
))
(declare-fun getValueByKey!1709 (List!52321 K!13575) Option!11961)

(assert (=> d!1486741 (= (getValueByKey!1709 lt!1836895 (_1!30031 (h!58398 oldBucket!34))) (Some!11960 (_2!30031 (h!58398 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!968 (List!52321 K!13575 V!13821) Unit!121847)

(assert (=> d!1486741 (= lt!1836898 (lemmaContainsTupThenGetReturnValue!968 lt!1836895 (_1!30031 (h!58398 oldBucket!34)) (_2!30031 (h!58398 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!476 (List!52321 K!13575 V!13821) List!52321)

(assert (=> d!1486741 (= lt!1836895 (insertNoDuplicatedKeys!476 (toList!5430 lt!1836709) (_1!30031 (h!58398 oldBucket!34)) (_2!30031 (h!58398 oldBucket!34))))))

(assert (=> d!1486741 (= (+!2072 lt!1836709 (h!58398 oldBucket!34)) lt!1836897)))

(declare-fun b!4677127 () Bool)

(declare-fun res!1970155 () Bool)

(assert (=> b!4677127 (=> (not res!1970155) (not e!2918225))))

(assert (=> b!4677127 (= res!1970155 (= (getValueByKey!1709 (toList!5430 lt!1836897) (_1!30031 (h!58398 oldBucket!34))) (Some!11960 (_2!30031 (h!58398 oldBucket!34)))))))

(declare-fun b!4677128 () Bool)

(declare-fun contains!15341 (List!52321 tuple2!53474) Bool)

(assert (=> b!4677128 (= e!2918225 (contains!15341 (toList!5430 lt!1836897) (h!58398 oldBucket!34)))))

(assert (= (and d!1486741 res!1970156) b!4677127))

(assert (= (and b!4677127 res!1970155) b!4677128))

(declare-fun m!5571393 () Bool)

(assert (=> d!1486741 m!5571393))

(declare-fun m!5571395 () Bool)

(assert (=> d!1486741 m!5571395))

(declare-fun m!5571397 () Bool)

(assert (=> d!1486741 m!5571397))

(declare-fun m!5571399 () Bool)

(assert (=> d!1486741 m!5571399))

(declare-fun m!5571401 () Bool)

(assert (=> b!4677127 m!5571401))

(declare-fun m!5571403 () Bool)

(assert (=> b!4677128 m!5571403))

(assert (=> b!4676968 d!1486741))

(declare-fun bs!1080417 () Bool)

(declare-fun b!4677133 () Bool)

(assert (= bs!1080417 (and b!4677133 d!1486721)))

(declare-fun lambda!203931 () Int)

(assert (=> bs!1080417 (not (= lambda!203931 lambda!203927))))

(declare-fun bs!1080418 () Bool)

(assert (= bs!1080418 (and b!4677133 b!4677079)))

(assert (=> bs!1080418 (= lambda!203931 lambda!203903)))

(declare-fun bs!1080419 () Bool)

(assert (= bs!1080419 (and b!4677133 d!1486691)))

(assert (=> bs!1080419 (not (= lambda!203931 lambda!203848))))

(declare-fun bs!1080420 () Bool)

(assert (= bs!1080420 (and b!4677133 d!1486703)))

(assert (=> bs!1080420 (= (= lt!1836710 lt!1836832) (= lambda!203931 lambda!203909))))

(assert (=> bs!1080418 (= (= lt!1836710 lt!1836827) (= lambda!203931 lambda!203906))))

(declare-fun bs!1080421 () Bool)

(assert (= bs!1080421 (and b!4677133 b!4677081)))

(assert (=> bs!1080421 (= lambda!203931 lambda!203902)))

(assert (=> b!4677133 true))

(declare-fun bs!1080422 () Bool)

(declare-fun b!4677131 () Bool)

(assert (= bs!1080422 (and b!4677131 d!1486721)))

(declare-fun lambda!203932 () Int)

(assert (=> bs!1080422 (not (= lambda!203932 lambda!203927))))

(declare-fun bs!1080423 () Bool)

(assert (= bs!1080423 (and b!4677131 b!4677133)))

(assert (=> bs!1080423 (= lambda!203932 lambda!203931)))

(declare-fun bs!1080424 () Bool)

(assert (= bs!1080424 (and b!4677131 b!4677079)))

(assert (=> bs!1080424 (= lambda!203932 lambda!203903)))

(declare-fun bs!1080425 () Bool)

(assert (= bs!1080425 (and b!4677131 d!1486691)))

(assert (=> bs!1080425 (not (= lambda!203932 lambda!203848))))

(declare-fun bs!1080426 () Bool)

(assert (= bs!1080426 (and b!4677131 d!1486703)))

(assert (=> bs!1080426 (= (= lt!1836710 lt!1836832) (= lambda!203932 lambda!203909))))

(assert (=> bs!1080424 (= (= lt!1836710 lt!1836827) (= lambda!203932 lambda!203906))))

(declare-fun bs!1080427 () Bool)

(assert (= bs!1080427 (and b!4677131 b!4677081)))

(assert (=> bs!1080427 (= lambda!203932 lambda!203902)))

(assert (=> b!4677131 true))

(declare-fun lambda!203933 () Int)

(assert (=> bs!1080422 (not (= lambda!203933 lambda!203927))))

(declare-fun lt!1836911 () ListMap!4793)

(assert (=> b!4677131 (= (= lt!1836911 lt!1836710) (= lambda!203933 lambda!203932))))

(assert (=> bs!1080423 (= (= lt!1836911 lt!1836710) (= lambda!203933 lambda!203931))))

(assert (=> bs!1080424 (= (= lt!1836911 lt!1836710) (= lambda!203933 lambda!203903))))

(assert (=> bs!1080425 (not (= lambda!203933 lambda!203848))))

(assert (=> bs!1080426 (= (= lt!1836911 lt!1836832) (= lambda!203933 lambda!203909))))

(assert (=> bs!1080424 (= (= lt!1836911 lt!1836827) (= lambda!203933 lambda!203906))))

(assert (=> bs!1080427 (= (= lt!1836911 lt!1836710) (= lambda!203933 lambda!203902))))

(assert (=> b!4677131 true))

(declare-fun bs!1080428 () Bool)

(declare-fun d!1486745 () Bool)

(assert (= bs!1080428 (and d!1486745 d!1486721)))

(declare-fun lambda!203934 () Int)

(assert (=> bs!1080428 (not (= lambda!203934 lambda!203927))))

(declare-fun bs!1080429 () Bool)

(assert (= bs!1080429 (and d!1486745 b!4677131)))

(declare-fun lt!1836916 () ListMap!4793)

(assert (=> bs!1080429 (= (= lt!1836916 lt!1836710) (= lambda!203934 lambda!203932))))

(declare-fun bs!1080430 () Bool)

(assert (= bs!1080430 (and d!1486745 b!4677133)))

(assert (=> bs!1080430 (= (= lt!1836916 lt!1836710) (= lambda!203934 lambda!203931))))

(assert (=> bs!1080429 (= (= lt!1836916 lt!1836911) (= lambda!203934 lambda!203933))))

(declare-fun bs!1080431 () Bool)

(assert (= bs!1080431 (and d!1486745 b!4677079)))

(assert (=> bs!1080431 (= (= lt!1836916 lt!1836710) (= lambda!203934 lambda!203903))))

(declare-fun bs!1080432 () Bool)

(assert (= bs!1080432 (and d!1486745 d!1486691)))

(assert (=> bs!1080432 (not (= lambda!203934 lambda!203848))))

(declare-fun bs!1080433 () Bool)

(assert (= bs!1080433 (and d!1486745 d!1486703)))

(assert (=> bs!1080433 (= (= lt!1836916 lt!1836832) (= lambda!203934 lambda!203909))))

(assert (=> bs!1080431 (= (= lt!1836916 lt!1836827) (= lambda!203934 lambda!203906))))

(declare-fun bs!1080434 () Bool)

(assert (= bs!1080434 (and d!1486745 b!4677081)))

(assert (=> bs!1080434 (= (= lt!1836916 lt!1836710) (= lambda!203934 lambda!203902))))

(assert (=> d!1486745 true))

(declare-fun b!4677129 () Bool)

(declare-fun e!2918226 () Bool)

(assert (=> b!4677129 (= e!2918226 (invariantList!1366 (toList!5430 lt!1836916)))))

(declare-fun b!4677130 () Bool)

(declare-fun res!1970159 () Bool)

(assert (=> b!4677130 (=> (not res!1970159) (not e!2918226))))

(assert (=> b!4677130 (= res!1970159 (forall!11194 (toList!5430 lt!1836710) lambda!203934))))

(declare-fun e!2918227 () ListMap!4793)

(assert (=> b!4677131 (= e!2918227 lt!1836911)))

(declare-fun lt!1836917 () ListMap!4793)

(assert (=> b!4677131 (= lt!1836917 (+!2072 lt!1836710 (h!58398 (Cons!52197 lt!1836705 lt!1836704))))))

(assert (=> b!4677131 (= lt!1836911 (addToMapMapFromBucket!1202 (t!359465 (Cons!52197 lt!1836705 lt!1836704)) (+!2072 lt!1836710 (h!58398 (Cons!52197 lt!1836705 lt!1836704)))))))

(declare-fun lt!1836902 () Unit!121847)

(declare-fun call!326842 () Unit!121847)

(assert (=> b!4677131 (= lt!1836902 call!326842)))

(declare-fun call!326843 () Bool)

(assert (=> b!4677131 call!326843))

(declare-fun lt!1836919 () Unit!121847)

(assert (=> b!4677131 (= lt!1836919 lt!1836902)))

(assert (=> b!4677131 (forall!11194 (toList!5430 lt!1836917) lambda!203933)))

(declare-fun lt!1836907 () Unit!121847)

(declare-fun Unit!121884 () Unit!121847)

(assert (=> b!4677131 (= lt!1836907 Unit!121884)))

(declare-fun call!326841 () Bool)

(assert (=> b!4677131 call!326841))

(declare-fun lt!1836914 () Unit!121847)

(declare-fun Unit!121885 () Unit!121847)

(assert (=> b!4677131 (= lt!1836914 Unit!121885)))

(declare-fun lt!1836909 () Unit!121847)

(declare-fun Unit!121886 () Unit!121847)

(assert (=> b!4677131 (= lt!1836909 Unit!121886)))

(declare-fun lt!1836913 () Unit!121847)

(assert (=> b!4677131 (= lt!1836913 (forallContained!3337 (toList!5430 lt!1836917) lambda!203933 (h!58398 (Cons!52197 lt!1836705 lt!1836704))))))

(assert (=> b!4677131 (contains!15338 lt!1836917 (_1!30031 (h!58398 (Cons!52197 lt!1836705 lt!1836704))))))

(declare-fun lt!1836910 () Unit!121847)

(declare-fun Unit!121887 () Unit!121847)

(assert (=> b!4677131 (= lt!1836910 Unit!121887)))

(assert (=> b!4677131 (contains!15338 lt!1836911 (_1!30031 (h!58398 (Cons!52197 lt!1836705 lt!1836704))))))

(declare-fun lt!1836906 () Unit!121847)

(declare-fun Unit!121888 () Unit!121847)

(assert (=> b!4677131 (= lt!1836906 Unit!121888)))

(assert (=> b!4677131 (forall!11194 (Cons!52197 lt!1836705 lt!1836704) lambda!203933)))

(declare-fun lt!1836918 () Unit!121847)

(declare-fun Unit!121889 () Unit!121847)

(assert (=> b!4677131 (= lt!1836918 Unit!121889)))

(assert (=> b!4677131 (forall!11194 (toList!5430 lt!1836917) lambda!203933)))

(declare-fun lt!1836905 () Unit!121847)

(declare-fun Unit!121890 () Unit!121847)

(assert (=> b!4677131 (= lt!1836905 Unit!121890)))

(declare-fun lt!1836915 () Unit!121847)

(declare-fun Unit!121891 () Unit!121847)

(assert (=> b!4677131 (= lt!1836915 Unit!121891)))

(declare-fun lt!1836903 () Unit!121847)

(assert (=> b!4677131 (= lt!1836903 (addForallContainsKeyThenBeforeAdding!652 lt!1836710 lt!1836911 (_1!30031 (h!58398 (Cons!52197 lt!1836705 lt!1836704))) (_2!30031 (h!58398 (Cons!52197 lt!1836705 lt!1836704)))))))

(assert (=> b!4677131 (forall!11194 (toList!5430 lt!1836710) lambda!203933)))

(declare-fun lt!1836900 () Unit!121847)

(assert (=> b!4677131 (= lt!1836900 lt!1836903)))

(assert (=> b!4677131 (forall!11194 (toList!5430 lt!1836710) lambda!203933)))

(declare-fun lt!1836908 () Unit!121847)

(declare-fun Unit!121892 () Unit!121847)

(assert (=> b!4677131 (= lt!1836908 Unit!121892)))

(declare-fun res!1970157 () Bool)

(assert (=> b!4677131 (= res!1970157 (forall!11194 (Cons!52197 lt!1836705 lt!1836704) lambda!203933))))

(declare-fun e!2918228 () Bool)

(assert (=> b!4677131 (=> (not res!1970157) (not e!2918228))))

(assert (=> b!4677131 e!2918228))

(declare-fun lt!1836904 () Unit!121847)

(declare-fun Unit!121893 () Unit!121847)

(assert (=> b!4677131 (= lt!1836904 Unit!121893)))

(declare-fun bm!326836 () Bool)

(declare-fun c!800268 () Bool)

(assert (=> bm!326836 (= call!326841 (forall!11194 (ite c!800268 (toList!5430 lt!1836710) (t!359465 (Cons!52197 lt!1836705 lt!1836704))) (ite c!800268 lambda!203931 lambda!203933)))))

(declare-fun bm!326837 () Bool)

(assert (=> bm!326837 (= call!326842 (lemmaContainsAllItsOwnKeys!654 lt!1836710))))

(declare-fun b!4677132 () Bool)

(assert (=> b!4677132 (= e!2918228 (forall!11194 (toList!5430 lt!1836710) lambda!203933))))

(assert (=> d!1486745 e!2918226))

(declare-fun res!1970158 () Bool)

(assert (=> d!1486745 (=> (not res!1970158) (not e!2918226))))

(assert (=> d!1486745 (= res!1970158 (forall!11194 (Cons!52197 lt!1836705 lt!1836704) lambda!203934))))

(assert (=> d!1486745 (= lt!1836916 e!2918227)))

(assert (=> d!1486745 (= c!800268 ((_ is Nil!52197) (Cons!52197 lt!1836705 lt!1836704)))))

(assert (=> d!1486745 (noDuplicateKeys!1770 (Cons!52197 lt!1836705 lt!1836704))))

(assert (=> d!1486745 (= (addToMapMapFromBucket!1202 (Cons!52197 lt!1836705 lt!1836704) lt!1836710) lt!1836916)))

(assert (=> b!4677133 (= e!2918227 lt!1836710)))

(declare-fun lt!1836912 () Unit!121847)

(assert (=> b!4677133 (= lt!1836912 call!326842)))

(assert (=> b!4677133 call!326843))

(declare-fun lt!1836899 () Unit!121847)

(assert (=> b!4677133 (= lt!1836899 lt!1836912)))

(assert (=> b!4677133 call!326841))

(declare-fun lt!1836901 () Unit!121847)

(declare-fun Unit!121894 () Unit!121847)

(assert (=> b!4677133 (= lt!1836901 Unit!121894)))

(declare-fun bm!326838 () Bool)

(assert (=> bm!326838 (= call!326843 (forall!11194 (toList!5430 lt!1836710) (ite c!800268 lambda!203931 lambda!203932)))))

(assert (= (and d!1486745 c!800268) b!4677133))

(assert (= (and d!1486745 (not c!800268)) b!4677131))

(assert (= (and b!4677131 res!1970157) b!4677132))

(assert (= (or b!4677133 b!4677131) bm!326837))

(assert (= (or b!4677133 b!4677131) bm!326838))

(assert (= (or b!4677133 b!4677131) bm!326836))

(assert (= (and d!1486745 res!1970158) b!4677130))

(assert (= (and b!4677130 res!1970159) b!4677129))

(declare-fun m!5571405 () Bool)

(assert (=> d!1486745 m!5571405))

(declare-fun m!5571407 () Bool)

(assert (=> d!1486745 m!5571407))

(declare-fun m!5571409 () Bool)

(assert (=> bm!326836 m!5571409))

(declare-fun m!5571411 () Bool)

(assert (=> b!4677130 m!5571411))

(declare-fun m!5571413 () Bool)

(assert (=> b!4677129 m!5571413))

(declare-fun m!5571415 () Bool)

(assert (=> b!4677132 m!5571415))

(declare-fun m!5571417 () Bool)

(assert (=> bm!326838 m!5571417))

(assert (=> bm!326837 m!5571277))

(declare-fun m!5571419 () Bool)

(assert (=> b!4677131 m!5571419))

(declare-fun m!5571421 () Bool)

(assert (=> b!4677131 m!5571421))

(declare-fun m!5571423 () Bool)

(assert (=> b!4677131 m!5571423))

(declare-fun m!5571425 () Bool)

(assert (=> b!4677131 m!5571425))

(assert (=> b!4677131 m!5571421))

(declare-fun m!5571429 () Bool)

(assert (=> b!4677131 m!5571429))

(declare-fun m!5571431 () Bool)

(assert (=> b!4677131 m!5571431))

(declare-fun m!5571433 () Bool)

(assert (=> b!4677131 m!5571433))

(declare-fun m!5571435 () Bool)

(assert (=> b!4677131 m!5571435))

(assert (=> b!4677131 m!5571433))

(assert (=> b!4677131 m!5571415))

(assert (=> b!4677131 m!5571419))

(assert (=> b!4677131 m!5571415))

(assert (=> b!4676968 d!1486745))

(declare-fun d!1486747 () Bool)

(declare-fun e!2918229 () Bool)

(assert (=> d!1486747 e!2918229))

(declare-fun res!1970161 () Bool)

(assert (=> d!1486747 (=> (not res!1970161) (not e!2918229))))

(declare-fun lt!1836925 () ListMap!4793)

(assert (=> d!1486747 (= res!1970161 (contains!15338 lt!1836925 (_1!30031 lt!1836705)))))

(declare-fun lt!1836923 () List!52321)

(assert (=> d!1486747 (= lt!1836925 (ListMap!4794 lt!1836923))))

(declare-fun lt!1836924 () Unit!121847)

(declare-fun lt!1836926 () Unit!121847)

(assert (=> d!1486747 (= lt!1836924 lt!1836926)))

(assert (=> d!1486747 (= (getValueByKey!1709 lt!1836923 (_1!30031 lt!1836705)) (Some!11960 (_2!30031 lt!1836705)))))

(assert (=> d!1486747 (= lt!1836926 (lemmaContainsTupThenGetReturnValue!968 lt!1836923 (_1!30031 lt!1836705) (_2!30031 lt!1836705)))))

(assert (=> d!1486747 (= lt!1836923 (insertNoDuplicatedKeys!476 (toList!5430 lt!1836709) (_1!30031 lt!1836705) (_2!30031 lt!1836705)))))

(assert (=> d!1486747 (= (+!2072 lt!1836709 lt!1836705) lt!1836925)))

(declare-fun b!4677134 () Bool)

(declare-fun res!1970160 () Bool)

(assert (=> b!4677134 (=> (not res!1970160) (not e!2918229))))

(assert (=> b!4677134 (= res!1970160 (= (getValueByKey!1709 (toList!5430 lt!1836925) (_1!30031 lt!1836705)) (Some!11960 (_2!30031 lt!1836705))))))

(declare-fun b!4677135 () Bool)

(assert (=> b!4677135 (= e!2918229 (contains!15341 (toList!5430 lt!1836925) lt!1836705))))

(assert (= (and d!1486747 res!1970161) b!4677134))

(assert (= (and b!4677134 res!1970160) b!4677135))

(declare-fun m!5571443 () Bool)

(assert (=> d!1486747 m!5571443))

(declare-fun m!5571445 () Bool)

(assert (=> d!1486747 m!5571445))

(declare-fun m!5571449 () Bool)

(assert (=> d!1486747 m!5571449))

(declare-fun m!5571453 () Bool)

(assert (=> d!1486747 m!5571453))

(declare-fun m!5571457 () Bool)

(assert (=> b!4677134 m!5571457))

(declare-fun m!5571461 () Bool)

(assert (=> b!4677135 m!5571461))

(assert (=> b!4676968 d!1486747))

(declare-fun d!1486751 () Bool)

(assert (=> d!1486751 (= (eq!959 (addToMapMapFromBucket!1202 (Cons!52197 lt!1836705 lt!1836704) lt!1836710) (+!2072 lt!1836709 lt!1836705)) (= (content!9089 (toList!5430 (addToMapMapFromBucket!1202 (Cons!52197 lt!1836705 lt!1836704) lt!1836710))) (content!9089 (toList!5430 (+!2072 lt!1836709 lt!1836705)))))))

(declare-fun bs!1080436 () Bool)

(assert (= bs!1080436 d!1486751))

(declare-fun m!5571467 () Bool)

(assert (=> bs!1080436 m!5571467))

(declare-fun m!5571469 () Bool)

(assert (=> bs!1080436 m!5571469))

(assert (=> b!4676968 d!1486751))

(declare-fun bs!1080438 () Bool)

(declare-fun b!4677147 () Bool)

(assert (= bs!1080438 (and b!4677147 d!1486721)))

(declare-fun lambda!203936 () Int)

(assert (=> bs!1080438 (not (= lambda!203936 lambda!203927))))

(declare-fun bs!1080440 () Bool)

(assert (= bs!1080440 (and b!4677147 b!4677131)))

(assert (=> bs!1080440 (= lambda!203936 lambda!203932)))

(declare-fun bs!1080442 () Bool)

(assert (= bs!1080442 (and b!4677147 b!4677133)))

(assert (=> bs!1080442 (= lambda!203936 lambda!203931)))

(assert (=> bs!1080440 (= (= lt!1836710 lt!1836911) (= lambda!203936 lambda!203933))))

(declare-fun bs!1080443 () Bool)

(assert (= bs!1080443 (and b!4677147 b!4677079)))

(assert (=> bs!1080443 (= lambda!203936 lambda!203903)))

(declare-fun bs!1080444 () Bool)

(assert (= bs!1080444 (and b!4677147 d!1486691)))

(assert (=> bs!1080444 (not (= lambda!203936 lambda!203848))))

(declare-fun bs!1080445 () Bool)

(assert (= bs!1080445 (and b!4677147 d!1486703)))

(assert (=> bs!1080445 (= (= lt!1836710 lt!1836832) (= lambda!203936 lambda!203909))))

(declare-fun bs!1080446 () Bool)

(assert (= bs!1080446 (and b!4677147 b!4677081)))

(assert (=> bs!1080446 (= lambda!203936 lambda!203902)))

(declare-fun bs!1080448 () Bool)

(assert (= bs!1080448 (and b!4677147 d!1486745)))

(assert (=> bs!1080448 (= (= lt!1836710 lt!1836916) (= lambda!203936 lambda!203934))))

(assert (=> bs!1080443 (= (= lt!1836710 lt!1836827) (= lambda!203936 lambda!203906))))

(assert (=> b!4677147 true))

(declare-fun bs!1080452 () Bool)

(declare-fun b!4677145 () Bool)

(assert (= bs!1080452 (and b!4677145 b!4677131)))

(declare-fun lambda!203938 () Int)

(assert (=> bs!1080452 (= lambda!203938 lambda!203932)))

(declare-fun bs!1080453 () Bool)

(assert (= bs!1080453 (and b!4677145 b!4677133)))

(assert (=> bs!1080453 (= lambda!203938 lambda!203931)))

(assert (=> bs!1080452 (= (= lt!1836710 lt!1836911) (= lambda!203938 lambda!203933))))

(declare-fun bs!1080454 () Bool)

(assert (= bs!1080454 (and b!4677145 b!4677079)))

(assert (=> bs!1080454 (= lambda!203938 lambda!203903)))

(declare-fun bs!1080455 () Bool)

(assert (= bs!1080455 (and b!4677145 d!1486691)))

(assert (=> bs!1080455 (not (= lambda!203938 lambda!203848))))

(declare-fun bs!1080456 () Bool)

(assert (= bs!1080456 (and b!4677145 d!1486703)))

(assert (=> bs!1080456 (= (= lt!1836710 lt!1836832) (= lambda!203938 lambda!203909))))

(declare-fun bs!1080457 () Bool)

(assert (= bs!1080457 (and b!4677145 b!4677081)))

(assert (=> bs!1080457 (= lambda!203938 lambda!203902)))

(declare-fun bs!1080458 () Bool)

(assert (= bs!1080458 (and b!4677145 b!4677147)))

(assert (=> bs!1080458 (= lambda!203938 lambda!203936)))

(declare-fun bs!1080459 () Bool)

(assert (= bs!1080459 (and b!4677145 d!1486721)))

(assert (=> bs!1080459 (not (= lambda!203938 lambda!203927))))

(declare-fun bs!1080460 () Bool)

(assert (= bs!1080460 (and b!4677145 d!1486745)))

(assert (=> bs!1080460 (= (= lt!1836710 lt!1836916) (= lambda!203938 lambda!203934))))

(assert (=> bs!1080454 (= (= lt!1836710 lt!1836827) (= lambda!203938 lambda!203906))))

(assert (=> b!4677145 true))

(declare-fun lt!1836964 () ListMap!4793)

(declare-fun lambda!203940 () Int)

(assert (=> bs!1080452 (= (= lt!1836964 lt!1836710) (= lambda!203940 lambda!203932))))

(assert (=> bs!1080453 (= (= lt!1836964 lt!1836710) (= lambda!203940 lambda!203931))))

(assert (=> bs!1080452 (= (= lt!1836964 lt!1836911) (= lambda!203940 lambda!203933))))

(assert (=> bs!1080454 (= (= lt!1836964 lt!1836710) (= lambda!203940 lambda!203903))))

(assert (=> bs!1080455 (not (= lambda!203940 lambda!203848))))

(assert (=> bs!1080456 (= (= lt!1836964 lt!1836832) (= lambda!203940 lambda!203909))))

(assert (=> bs!1080458 (= (= lt!1836964 lt!1836710) (= lambda!203940 lambda!203936))))

(assert (=> bs!1080459 (not (= lambda!203940 lambda!203927))))

(assert (=> bs!1080460 (= (= lt!1836964 lt!1836916) (= lambda!203940 lambda!203934))))

(assert (=> bs!1080454 (= (= lt!1836964 lt!1836827) (= lambda!203940 lambda!203906))))

(assert (=> b!4677145 (= (= lt!1836964 lt!1836710) (= lambda!203940 lambda!203938))))

(assert (=> bs!1080457 (= (= lt!1836964 lt!1836710) (= lambda!203940 lambda!203902))))

(assert (=> b!4677145 true))

(declare-fun bs!1080466 () Bool)

(declare-fun d!1486755 () Bool)

(assert (= bs!1080466 (and d!1486755 b!4677131)))

(declare-fun lt!1836969 () ListMap!4793)

(declare-fun lambda!203942 () Int)

(assert (=> bs!1080466 (= (= lt!1836969 lt!1836710) (= lambda!203942 lambda!203932))))

(declare-fun bs!1080467 () Bool)

(assert (= bs!1080467 (and d!1486755 b!4677133)))

(assert (=> bs!1080467 (= (= lt!1836969 lt!1836710) (= lambda!203942 lambda!203931))))

(assert (=> bs!1080466 (= (= lt!1836969 lt!1836911) (= lambda!203942 lambda!203933))))

(declare-fun bs!1080468 () Bool)

(assert (= bs!1080468 (and d!1486755 b!4677079)))

(assert (=> bs!1080468 (= (= lt!1836969 lt!1836710) (= lambda!203942 lambda!203903))))

(declare-fun bs!1080469 () Bool)

(assert (= bs!1080469 (and d!1486755 b!4677145)))

(assert (=> bs!1080469 (= (= lt!1836969 lt!1836964) (= lambda!203942 lambda!203940))))

(declare-fun bs!1080470 () Bool)

(assert (= bs!1080470 (and d!1486755 d!1486691)))

(assert (=> bs!1080470 (not (= lambda!203942 lambda!203848))))

(declare-fun bs!1080471 () Bool)

(assert (= bs!1080471 (and d!1486755 d!1486703)))

(assert (=> bs!1080471 (= (= lt!1836969 lt!1836832) (= lambda!203942 lambda!203909))))

(declare-fun bs!1080472 () Bool)

(assert (= bs!1080472 (and d!1486755 b!4677147)))

(assert (=> bs!1080472 (= (= lt!1836969 lt!1836710) (= lambda!203942 lambda!203936))))

(declare-fun bs!1080473 () Bool)

(assert (= bs!1080473 (and d!1486755 d!1486721)))

(assert (=> bs!1080473 (not (= lambda!203942 lambda!203927))))

(declare-fun bs!1080474 () Bool)

(assert (= bs!1080474 (and d!1486755 d!1486745)))

(assert (=> bs!1080474 (= (= lt!1836969 lt!1836916) (= lambda!203942 lambda!203934))))

(assert (=> bs!1080468 (= (= lt!1836969 lt!1836827) (= lambda!203942 lambda!203906))))

(assert (=> bs!1080469 (= (= lt!1836969 lt!1836710) (= lambda!203942 lambda!203938))))

(declare-fun bs!1080475 () Bool)

(assert (= bs!1080475 (and d!1486755 b!4677081)))

(assert (=> bs!1080475 (= (= lt!1836969 lt!1836710) (= lambda!203942 lambda!203902))))

(assert (=> d!1486755 true))

(declare-fun b!4677143 () Bool)

(declare-fun e!2918234 () Bool)

(assert (=> b!4677143 (= e!2918234 (invariantList!1366 (toList!5430 lt!1836969)))))

(declare-fun b!4677144 () Bool)

(declare-fun res!1970169 () Bool)

(assert (=> b!4677144 (=> (not res!1970169) (not e!2918234))))

(assert (=> b!4677144 (= res!1970169 (forall!11194 (toList!5430 lt!1836710) lambda!203942))))

(declare-fun e!2918235 () ListMap!4793)

(assert (=> b!4677145 (= e!2918235 lt!1836964)))

(declare-fun lt!1836970 () ListMap!4793)

(assert (=> b!4677145 (= lt!1836970 (+!2072 lt!1836710 (h!58398 oldBucket!34)))))

(assert (=> b!4677145 (= lt!1836964 (addToMapMapFromBucket!1202 (t!359465 oldBucket!34) (+!2072 lt!1836710 (h!58398 oldBucket!34))))))

(declare-fun lt!1836955 () Unit!121847)

(declare-fun call!326848 () Unit!121847)

(assert (=> b!4677145 (= lt!1836955 call!326848)))

(declare-fun call!326849 () Bool)

(assert (=> b!4677145 call!326849))

(declare-fun lt!1836972 () Unit!121847)

(assert (=> b!4677145 (= lt!1836972 lt!1836955)))

(assert (=> b!4677145 (forall!11194 (toList!5430 lt!1836970) lambda!203940)))

(declare-fun lt!1836960 () Unit!121847)

(declare-fun Unit!121906 () Unit!121847)

(assert (=> b!4677145 (= lt!1836960 Unit!121906)))

(declare-fun call!326847 () Bool)

(assert (=> b!4677145 call!326847))

(declare-fun lt!1836967 () Unit!121847)

(declare-fun Unit!121907 () Unit!121847)

(assert (=> b!4677145 (= lt!1836967 Unit!121907)))

(declare-fun lt!1836962 () Unit!121847)

(declare-fun Unit!121908 () Unit!121847)

(assert (=> b!4677145 (= lt!1836962 Unit!121908)))

(declare-fun lt!1836966 () Unit!121847)

(assert (=> b!4677145 (= lt!1836966 (forallContained!3337 (toList!5430 lt!1836970) lambda!203940 (h!58398 oldBucket!34)))))

(assert (=> b!4677145 (contains!15338 lt!1836970 (_1!30031 (h!58398 oldBucket!34)))))

(declare-fun lt!1836963 () Unit!121847)

(declare-fun Unit!121909 () Unit!121847)

(assert (=> b!4677145 (= lt!1836963 Unit!121909)))

(assert (=> b!4677145 (contains!15338 lt!1836964 (_1!30031 (h!58398 oldBucket!34)))))

(declare-fun lt!1836959 () Unit!121847)

(declare-fun Unit!121910 () Unit!121847)

(assert (=> b!4677145 (= lt!1836959 Unit!121910)))

(assert (=> b!4677145 (forall!11194 oldBucket!34 lambda!203940)))

(declare-fun lt!1836971 () Unit!121847)

(declare-fun Unit!121911 () Unit!121847)

(assert (=> b!4677145 (= lt!1836971 Unit!121911)))

(assert (=> b!4677145 (forall!11194 (toList!5430 lt!1836970) lambda!203940)))

(declare-fun lt!1836958 () Unit!121847)

(declare-fun Unit!121912 () Unit!121847)

(assert (=> b!4677145 (= lt!1836958 Unit!121912)))

(declare-fun lt!1836968 () Unit!121847)

(declare-fun Unit!121913 () Unit!121847)

(assert (=> b!4677145 (= lt!1836968 Unit!121913)))

(declare-fun lt!1836956 () Unit!121847)

(assert (=> b!4677145 (= lt!1836956 (addForallContainsKeyThenBeforeAdding!652 lt!1836710 lt!1836964 (_1!30031 (h!58398 oldBucket!34)) (_2!30031 (h!58398 oldBucket!34))))))

(assert (=> b!4677145 (forall!11194 (toList!5430 lt!1836710) lambda!203940)))

(declare-fun lt!1836953 () Unit!121847)

(assert (=> b!4677145 (= lt!1836953 lt!1836956)))

(assert (=> b!4677145 (forall!11194 (toList!5430 lt!1836710) lambda!203940)))

(declare-fun lt!1836961 () Unit!121847)

(declare-fun Unit!121914 () Unit!121847)

(assert (=> b!4677145 (= lt!1836961 Unit!121914)))

(declare-fun res!1970167 () Bool)

(assert (=> b!4677145 (= res!1970167 (forall!11194 oldBucket!34 lambda!203940))))

(declare-fun e!2918236 () Bool)

(assert (=> b!4677145 (=> (not res!1970167) (not e!2918236))))

(assert (=> b!4677145 e!2918236))

(declare-fun lt!1836957 () Unit!121847)

(declare-fun Unit!121915 () Unit!121847)

(assert (=> b!4677145 (= lt!1836957 Unit!121915)))

(declare-fun c!800270 () Bool)

(declare-fun bm!326842 () Bool)

(assert (=> bm!326842 (= call!326847 (forall!11194 (ite c!800270 (toList!5430 lt!1836710) (t!359465 oldBucket!34)) (ite c!800270 lambda!203936 lambda!203940)))))

(declare-fun bm!326843 () Bool)

(assert (=> bm!326843 (= call!326848 (lemmaContainsAllItsOwnKeys!654 lt!1836710))))

(declare-fun b!4677146 () Bool)

(assert (=> b!4677146 (= e!2918236 (forall!11194 (toList!5430 lt!1836710) lambda!203940))))

(assert (=> d!1486755 e!2918234))

(declare-fun res!1970168 () Bool)

(assert (=> d!1486755 (=> (not res!1970168) (not e!2918234))))

(assert (=> d!1486755 (= res!1970168 (forall!11194 oldBucket!34 lambda!203942))))

(assert (=> d!1486755 (= lt!1836969 e!2918235)))

(assert (=> d!1486755 (= c!800270 ((_ is Nil!52197) oldBucket!34))))

(assert (=> d!1486755 (noDuplicateKeys!1770 oldBucket!34)))

(assert (=> d!1486755 (= (addToMapMapFromBucket!1202 oldBucket!34 lt!1836710) lt!1836969)))

(assert (=> b!4677147 (= e!2918235 lt!1836710)))

(declare-fun lt!1836965 () Unit!121847)

(assert (=> b!4677147 (= lt!1836965 call!326848)))

(assert (=> b!4677147 call!326849))

(declare-fun lt!1836952 () Unit!121847)

(assert (=> b!4677147 (= lt!1836952 lt!1836965)))

(assert (=> b!4677147 call!326847))

(declare-fun lt!1836954 () Unit!121847)

(declare-fun Unit!121917 () Unit!121847)

(assert (=> b!4677147 (= lt!1836954 Unit!121917)))

(declare-fun bm!326844 () Bool)

(assert (=> bm!326844 (= call!326849 (forall!11194 (toList!5430 lt!1836710) (ite c!800270 lambda!203936 lambda!203938)))))

(assert (= (and d!1486755 c!800270) b!4677147))

(assert (= (and d!1486755 (not c!800270)) b!4677145))

(assert (= (and b!4677145 res!1970167) b!4677146))

(assert (= (or b!4677147 b!4677145) bm!326843))

(assert (= (or b!4677147 b!4677145) bm!326844))

(assert (= (or b!4677147 b!4677145) bm!326842))

(assert (= (and d!1486755 res!1970168) b!4677144))

(assert (= (and b!4677144 res!1970169) b!4677143))

(declare-fun m!5571501 () Bool)

(assert (=> d!1486755 m!5571501))

(assert (=> d!1486755 m!5571175))

(declare-fun m!5571503 () Bool)

(assert (=> bm!326842 m!5571503))

(declare-fun m!5571505 () Bool)

(assert (=> b!4677144 m!5571505))

(declare-fun m!5571507 () Bool)

(assert (=> b!4677143 m!5571507))

(declare-fun m!5571509 () Bool)

(assert (=> b!4677146 m!5571509))

(declare-fun m!5571511 () Bool)

(assert (=> bm!326844 m!5571511))

(assert (=> bm!326843 m!5571277))

(declare-fun m!5571513 () Bool)

(assert (=> b!4677145 m!5571513))

(declare-fun m!5571515 () Bool)

(assert (=> b!4677145 m!5571515))

(declare-fun m!5571517 () Bool)

(assert (=> b!4677145 m!5571517))

(declare-fun m!5571521 () Bool)

(assert (=> b!4677145 m!5571521))

(assert (=> b!4677145 m!5571515))

(declare-fun m!5571525 () Bool)

(assert (=> b!4677145 m!5571525))

(declare-fun m!5571527 () Bool)

(assert (=> b!4677145 m!5571527))

(declare-fun m!5571529 () Bool)

(assert (=> b!4677145 m!5571529))

(declare-fun m!5571531 () Bool)

(assert (=> b!4677145 m!5571531))

(assert (=> b!4677145 m!5571529))

(assert (=> b!4677145 m!5571509))

(assert (=> b!4677145 m!5571513))

(assert (=> b!4677145 m!5571509))

(assert (=> b!4676968 d!1486755))

(declare-fun d!1486763 () Bool)

(assert (=> d!1486763 (eq!959 (addToMapMapFromBucket!1202 (Cons!52197 lt!1836705 lt!1836704) lt!1836710) (+!2072 (addToMapMapFromBucket!1202 lt!1836704 lt!1836710) lt!1836705))))

(declare-fun lt!1836996 () Unit!121847)

(declare-fun choose!32355 (tuple2!53474 List!52321 ListMap!4793) Unit!121847)

(assert (=> d!1486763 (= lt!1836996 (choose!32355 lt!1836705 lt!1836704 lt!1836710))))

(assert (=> d!1486763 (noDuplicateKeys!1770 lt!1836704)))

(assert (=> d!1486763 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!208 lt!1836705 lt!1836704 lt!1836710) lt!1836996)))

(declare-fun bs!1080499 () Bool)

(assert (= bs!1080499 d!1486763))

(assert (=> bs!1080499 m!5571187))

(assert (=> bs!1080499 m!5571179))

(declare-fun m!5571569 () Bool)

(assert (=> bs!1080499 m!5571569))

(assert (=> bs!1080499 m!5571179))

(declare-fun m!5571571 () Bool)

(assert (=> bs!1080499 m!5571571))

(assert (=> bs!1080499 m!5571187))

(assert (=> bs!1080499 m!5571569))

(declare-fun m!5571573 () Bool)

(assert (=> bs!1080499 m!5571573))

(declare-fun m!5571575 () Bool)

(assert (=> bs!1080499 m!5571575))

(assert (=> b!4676968 d!1486763))

(declare-fun d!1486769 () Bool)

(assert (=> d!1486769 (= (head!9831 oldBucket!34) (h!58398 oldBucket!34))))

(assert (=> b!4676968 d!1486769))

(declare-fun d!1486771 () Bool)

(declare-fun res!1970173 () Bool)

(declare-fun e!2918240 () Bool)

(assert (=> d!1486771 (=> res!1970173 e!2918240)))

(assert (=> d!1486771 (= res!1970173 (not ((_ is Cons!52197) newBucket!218)))))

(assert (=> d!1486771 (= (noDuplicateKeys!1770 newBucket!218) e!2918240)))

(declare-fun b!4677157 () Bool)

(declare-fun e!2918241 () Bool)

(assert (=> b!4677157 (= e!2918240 e!2918241)))

(declare-fun res!1970174 () Bool)

(assert (=> b!4677157 (=> (not res!1970174) (not e!2918241))))

(assert (=> b!4677157 (= res!1970174 (not (containsKey!2905 (t!359465 newBucket!218) (_1!30031 (h!58398 newBucket!218)))))))

(declare-fun b!4677158 () Bool)

(assert (=> b!4677158 (= e!2918241 (noDuplicateKeys!1770 (t!359465 newBucket!218)))))

(assert (= (and d!1486771 (not res!1970173)) b!4677157))

(assert (= (and b!4677157 res!1970174) b!4677158))

(declare-fun m!5571577 () Bool)

(assert (=> b!4677157 m!5571577))

(declare-fun m!5571579 () Bool)

(assert (=> b!4677158 m!5571579))

(assert (=> b!4676979 d!1486771))

(declare-fun b!4677187 () Bool)

(declare-fun e!2918260 () Unit!121847)

(declare-fun e!2918264 () Unit!121847)

(assert (=> b!4677187 (= e!2918260 e!2918264)))

(declare-fun c!800282 () Bool)

(declare-fun call!326861 () Bool)

(assert (=> b!4677187 (= c!800282 call!326861)))

(declare-fun b!4677188 () Bool)

(declare-fun e!2918265 () Bool)

(declare-datatypes ((List!52324 0))(
  ( (Nil!52200) (Cons!52200 (h!58403 K!13575) (t!359470 List!52324)) )
))
(declare-fun contains!15342 (List!52324 K!13575) Bool)

(declare-fun keys!18585 (ListMap!4793) List!52324)

(assert (=> b!4677188 (= e!2918265 (contains!15342 (keys!18585 lt!1836706) key!4653))))

(declare-fun b!4677190 () Bool)

(assert (=> b!4677190 false))

(declare-fun lt!1837055 () Unit!121847)

(declare-fun lt!1837057 () Unit!121847)

(assert (=> b!4677190 (= lt!1837055 lt!1837057)))

(declare-fun containsKey!2907 (List!52321 K!13575) Bool)

(assert (=> b!4677190 (containsKey!2907 (toList!5430 lt!1836706) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!805 (List!52321 K!13575) Unit!121847)

(assert (=> b!4677190 (= lt!1837057 (lemmaInGetKeysListThenContainsKey!805 (toList!5430 lt!1836706) key!4653))))

(declare-fun Unit!121928 () Unit!121847)

(assert (=> b!4677190 (= e!2918264 Unit!121928)))

(declare-fun b!4677191 () Bool)

(declare-fun e!2918263 () List!52324)

(assert (=> b!4677191 (= e!2918263 (keys!18585 lt!1836706))))

(declare-fun b!4677192 () Bool)

(declare-fun e!2918262 () Bool)

(assert (=> b!4677192 (= e!2918262 e!2918265)))

(declare-fun res!1970189 () Bool)

(assert (=> b!4677192 (=> (not res!1970189) (not e!2918265))))

(declare-fun isDefined!9216 (Option!11961) Bool)

(assert (=> b!4677192 (= res!1970189 (isDefined!9216 (getValueByKey!1709 (toList!5430 lt!1836706) key!4653)))))

(declare-fun bm!326856 () Bool)

(assert (=> bm!326856 (= call!326861 (contains!15342 e!2918263 key!4653))))

(declare-fun c!800281 () Bool)

(declare-fun c!800280 () Bool)

(assert (=> bm!326856 (= c!800281 c!800280)))

(declare-fun b!4677193 () Bool)

(declare-fun getKeysList!806 (List!52321) List!52324)

(assert (=> b!4677193 (= e!2918263 (getKeysList!806 (toList!5430 lt!1836706)))))

(declare-fun d!1486773 () Bool)

(assert (=> d!1486773 e!2918262))

(declare-fun res!1970187 () Bool)

(assert (=> d!1486773 (=> res!1970187 e!2918262)))

(declare-fun e!2918261 () Bool)

(assert (=> d!1486773 (= res!1970187 e!2918261)))

(declare-fun res!1970188 () Bool)

(assert (=> d!1486773 (=> (not res!1970188) (not e!2918261))))

(declare-fun lt!1837061 () Bool)

(assert (=> d!1486773 (= res!1970188 (not lt!1837061))))

(declare-fun lt!1837058 () Bool)

(assert (=> d!1486773 (= lt!1837061 lt!1837058)))

(declare-fun lt!1837062 () Unit!121847)

(assert (=> d!1486773 (= lt!1837062 e!2918260)))

(assert (=> d!1486773 (= c!800280 lt!1837058)))

(assert (=> d!1486773 (= lt!1837058 (containsKey!2907 (toList!5430 lt!1836706) key!4653))))

(assert (=> d!1486773 (= (contains!15338 lt!1836706 key!4653) lt!1837061)))

(declare-fun b!4677189 () Bool)

(declare-fun lt!1837059 () Unit!121847)

(assert (=> b!4677189 (= e!2918260 lt!1837059)))

(declare-fun lt!1837060 () Unit!121847)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1601 (List!52321 K!13575) Unit!121847)

(assert (=> b!4677189 (= lt!1837060 (lemmaContainsKeyImpliesGetValueByKeyDefined!1601 (toList!5430 lt!1836706) key!4653))))

(assert (=> b!4677189 (isDefined!9216 (getValueByKey!1709 (toList!5430 lt!1836706) key!4653))))

(declare-fun lt!1837056 () Unit!121847)

(assert (=> b!4677189 (= lt!1837056 lt!1837060)))

(declare-fun lemmaInListThenGetKeysListContains!801 (List!52321 K!13575) Unit!121847)

(assert (=> b!4677189 (= lt!1837059 (lemmaInListThenGetKeysListContains!801 (toList!5430 lt!1836706) key!4653))))

(assert (=> b!4677189 call!326861))

(declare-fun b!4677194 () Bool)

(assert (=> b!4677194 (= e!2918261 (not (contains!15342 (keys!18585 lt!1836706) key!4653)))))

(declare-fun b!4677195 () Bool)

(declare-fun Unit!121929 () Unit!121847)

(assert (=> b!4677195 (= e!2918264 Unit!121929)))

(assert (= (and d!1486773 c!800280) b!4677189))

(assert (= (and d!1486773 (not c!800280)) b!4677187))

(assert (= (and b!4677187 c!800282) b!4677190))

(assert (= (and b!4677187 (not c!800282)) b!4677195))

(assert (= (or b!4677189 b!4677187) bm!326856))

(assert (= (and bm!326856 c!800281) b!4677193))

(assert (= (and bm!326856 (not c!800281)) b!4677191))

(assert (= (and d!1486773 res!1970188) b!4677194))

(assert (= (and d!1486773 (not res!1970187)) b!4677192))

(assert (= (and b!4677192 res!1970189) b!4677188))

(declare-fun m!5571641 () Bool)

(assert (=> b!4677194 m!5571641))

(assert (=> b!4677194 m!5571641))

(declare-fun m!5571643 () Bool)

(assert (=> b!4677194 m!5571643))

(declare-fun m!5571647 () Bool)

(assert (=> b!4677190 m!5571647))

(declare-fun m!5571649 () Bool)

(assert (=> b!4677190 m!5571649))

(declare-fun m!5571651 () Bool)

(assert (=> bm!326856 m!5571651))

(declare-fun m!5571653 () Bool)

(assert (=> b!4677193 m!5571653))

(assert (=> b!4677191 m!5571641))

(declare-fun m!5571655 () Bool)

(assert (=> b!4677189 m!5571655))

(declare-fun m!5571657 () Bool)

(assert (=> b!4677189 m!5571657))

(assert (=> b!4677189 m!5571657))

(declare-fun m!5571659 () Bool)

(assert (=> b!4677189 m!5571659))

(declare-fun m!5571661 () Bool)

(assert (=> b!4677189 m!5571661))

(assert (=> b!4677192 m!5571657))

(assert (=> b!4677192 m!5571657))

(assert (=> b!4677192 m!5571659))

(assert (=> b!4677188 m!5571641))

(assert (=> b!4677188 m!5571641))

(assert (=> b!4677188 m!5571643))

(assert (=> d!1486773 m!5571647))

(assert (=> b!4676969 d!1486773))

(declare-fun bs!1080589 () Bool)

(declare-fun d!1486781 () Bool)

(assert (= bs!1080589 (and d!1486781 d!1486729)))

(declare-fun lambda!203959 () Int)

(assert (=> bs!1080589 (= lambda!203959 lambda!203930)))

(declare-fun bs!1080592 () Bool)

(assert (= bs!1080592 (and d!1486781 d!1486717)))

(assert (=> bs!1080592 (= lambda!203959 lambda!203926)))

(declare-fun bs!1080594 () Bool)

(assert (= bs!1080594 (and d!1486781 start!472084)))

(assert (=> bs!1080594 (= lambda!203959 lambda!203845)))

(declare-fun bs!1080596 () Bool)

(assert (= bs!1080596 (and d!1486781 d!1486725)))

(assert (=> bs!1080596 (= lambda!203959 lambda!203929)))

(declare-fun bs!1080597 () Bool)

(assert (= bs!1080597 (and d!1486781 d!1486695)))

(assert (=> bs!1080597 (not (= lambda!203959 lambda!203851))))

(declare-fun lt!1837063 () ListMap!4793)

(assert (=> d!1486781 (invariantList!1366 (toList!5430 lt!1837063))))

(declare-fun e!2918266 () ListMap!4793)

(assert (=> d!1486781 (= lt!1837063 e!2918266)))

(declare-fun c!800283 () Bool)

(assert (=> d!1486781 (= c!800283 ((_ is Cons!52198) (toList!5429 lm!2023)))))

(assert (=> d!1486781 (forall!11193 (toList!5429 lm!2023) lambda!203959)))

(assert (=> d!1486781 (= (extractMap!1796 (toList!5429 lm!2023)) lt!1837063)))

(declare-fun b!4677196 () Bool)

(assert (=> b!4677196 (= e!2918266 (addToMapMapFromBucket!1202 (_2!30032 (h!58399 (toList!5429 lm!2023))) (extractMap!1796 (t!359466 (toList!5429 lm!2023)))))))

(declare-fun b!4677197 () Bool)

(assert (=> b!4677197 (= e!2918266 (ListMap!4794 Nil!52197))))

(assert (= (and d!1486781 c!800283) b!4677196))

(assert (= (and d!1486781 (not c!800283)) b!4677197))

(declare-fun m!5571663 () Bool)

(assert (=> d!1486781 m!5571663))

(declare-fun m!5571665 () Bool)

(assert (=> d!1486781 m!5571665))

(assert (=> b!4677196 m!5571157))

(assert (=> b!4677196 m!5571157))

(declare-fun m!5571667 () Bool)

(assert (=> b!4677196 m!5571667))

(assert (=> b!4676969 d!1486781))

(declare-fun d!1486783 () Bool)

(assert (=> d!1486783 (= (tail!8389 oldBucket!34) (t!359465 oldBucket!34))))

(assert (=> b!4676980 d!1486783))

(declare-fun bs!1080607 () Bool)

(declare-fun b!4677202 () Bool)

(assert (= bs!1080607 (and b!4677202 b!4677131)))

(declare-fun lambda!203960 () Int)

(assert (=> bs!1080607 (= lambda!203960 lambda!203932)))

(declare-fun bs!1080608 () Bool)

(assert (= bs!1080608 (and b!4677202 b!4677133)))

(assert (=> bs!1080608 (= lambda!203960 lambda!203931)))

(assert (=> bs!1080607 (= (= lt!1836710 lt!1836911) (= lambda!203960 lambda!203933))))

(declare-fun bs!1080609 () Bool)

(assert (= bs!1080609 (and b!4677202 b!4677079)))

(assert (=> bs!1080609 (= lambda!203960 lambda!203903)))

(declare-fun bs!1080611 () Bool)

(assert (= bs!1080611 (and b!4677202 b!4677145)))

(assert (=> bs!1080611 (= (= lt!1836710 lt!1836964) (= lambda!203960 lambda!203940))))

(declare-fun bs!1080612 () Bool)

(assert (= bs!1080612 (and b!4677202 d!1486691)))

(assert (=> bs!1080612 (not (= lambda!203960 lambda!203848))))

(declare-fun bs!1080613 () Bool)

(assert (= bs!1080613 (and b!4677202 d!1486703)))

(assert (=> bs!1080613 (= (= lt!1836710 lt!1836832) (= lambda!203960 lambda!203909))))

(declare-fun bs!1080614 () Bool)

(assert (= bs!1080614 (and b!4677202 b!4677147)))

(assert (=> bs!1080614 (= lambda!203960 lambda!203936)))

(declare-fun bs!1080615 () Bool)

(assert (= bs!1080615 (and b!4677202 d!1486721)))

(assert (=> bs!1080615 (not (= lambda!203960 lambda!203927))))

(declare-fun bs!1080616 () Bool)

(assert (= bs!1080616 (and b!4677202 d!1486745)))

(assert (=> bs!1080616 (= (= lt!1836710 lt!1836916) (= lambda!203960 lambda!203934))))

(declare-fun bs!1080617 () Bool)

(assert (= bs!1080617 (and b!4677202 d!1486755)))

(assert (=> bs!1080617 (= (= lt!1836710 lt!1836969) (= lambda!203960 lambda!203942))))

(assert (=> bs!1080609 (= (= lt!1836710 lt!1836827) (= lambda!203960 lambda!203906))))

(assert (=> bs!1080611 (= lambda!203960 lambda!203938)))

(declare-fun bs!1080618 () Bool)

(assert (= bs!1080618 (and b!4677202 b!4677081)))

(assert (=> bs!1080618 (= lambda!203960 lambda!203902)))

(assert (=> b!4677202 true))

(declare-fun bs!1080619 () Bool)

(declare-fun b!4677200 () Bool)

(assert (= bs!1080619 (and b!4677200 b!4677131)))

(declare-fun lambda!203961 () Int)

(assert (=> bs!1080619 (= lambda!203961 lambda!203932)))

(declare-fun bs!1080620 () Bool)

(assert (= bs!1080620 (and b!4677200 b!4677202)))

(assert (=> bs!1080620 (= lambda!203961 lambda!203960)))

(declare-fun bs!1080621 () Bool)

(assert (= bs!1080621 (and b!4677200 b!4677133)))

(assert (=> bs!1080621 (= lambda!203961 lambda!203931)))

(assert (=> bs!1080619 (= (= lt!1836710 lt!1836911) (= lambda!203961 lambda!203933))))

(declare-fun bs!1080622 () Bool)

(assert (= bs!1080622 (and b!4677200 b!4677079)))

(assert (=> bs!1080622 (= lambda!203961 lambda!203903)))

(declare-fun bs!1080623 () Bool)

(assert (= bs!1080623 (and b!4677200 b!4677145)))

(assert (=> bs!1080623 (= (= lt!1836710 lt!1836964) (= lambda!203961 lambda!203940))))

(declare-fun bs!1080624 () Bool)

(assert (= bs!1080624 (and b!4677200 d!1486691)))

(assert (=> bs!1080624 (not (= lambda!203961 lambda!203848))))

(declare-fun bs!1080625 () Bool)

(assert (= bs!1080625 (and b!4677200 d!1486703)))

(assert (=> bs!1080625 (= (= lt!1836710 lt!1836832) (= lambda!203961 lambda!203909))))

(declare-fun bs!1080626 () Bool)

(assert (= bs!1080626 (and b!4677200 b!4677147)))

(assert (=> bs!1080626 (= lambda!203961 lambda!203936)))

(declare-fun bs!1080627 () Bool)

(assert (= bs!1080627 (and b!4677200 d!1486721)))

(assert (=> bs!1080627 (not (= lambda!203961 lambda!203927))))

(declare-fun bs!1080628 () Bool)

(assert (= bs!1080628 (and b!4677200 d!1486745)))

(assert (=> bs!1080628 (= (= lt!1836710 lt!1836916) (= lambda!203961 lambda!203934))))

(declare-fun bs!1080629 () Bool)

(assert (= bs!1080629 (and b!4677200 d!1486755)))

(assert (=> bs!1080629 (= (= lt!1836710 lt!1836969) (= lambda!203961 lambda!203942))))

(assert (=> bs!1080622 (= (= lt!1836710 lt!1836827) (= lambda!203961 lambda!203906))))

(assert (=> bs!1080623 (= lambda!203961 lambda!203938)))

(declare-fun bs!1080630 () Bool)

(assert (= bs!1080630 (and b!4677200 b!4677081)))

(assert (=> bs!1080630 (= lambda!203961 lambda!203902)))

(assert (=> b!4677200 true))

(declare-fun lambda!203962 () Int)

(declare-fun lt!1837076 () ListMap!4793)

(assert (=> bs!1080619 (= (= lt!1837076 lt!1836710) (= lambda!203962 lambda!203932))))

(assert (=> bs!1080620 (= (= lt!1837076 lt!1836710) (= lambda!203962 lambda!203960))))

(assert (=> bs!1080621 (= (= lt!1837076 lt!1836710) (= lambda!203962 lambda!203931))))

(assert (=> bs!1080619 (= (= lt!1837076 lt!1836911) (= lambda!203962 lambda!203933))))

(assert (=> bs!1080622 (= (= lt!1837076 lt!1836710) (= lambda!203962 lambda!203903))))

(assert (=> bs!1080623 (= (= lt!1837076 lt!1836964) (= lambda!203962 lambda!203940))))

(assert (=> b!4677200 (= (= lt!1837076 lt!1836710) (= lambda!203962 lambda!203961))))

(assert (=> bs!1080624 (not (= lambda!203962 lambda!203848))))

(assert (=> bs!1080625 (= (= lt!1837076 lt!1836832) (= lambda!203962 lambda!203909))))

(assert (=> bs!1080626 (= (= lt!1837076 lt!1836710) (= lambda!203962 lambda!203936))))

(assert (=> bs!1080627 (not (= lambda!203962 lambda!203927))))

(assert (=> bs!1080628 (= (= lt!1837076 lt!1836916) (= lambda!203962 lambda!203934))))

(assert (=> bs!1080629 (= (= lt!1837076 lt!1836969) (= lambda!203962 lambda!203942))))

(assert (=> bs!1080622 (= (= lt!1837076 lt!1836827) (= lambda!203962 lambda!203906))))

(assert (=> bs!1080623 (= (= lt!1837076 lt!1836710) (= lambda!203962 lambda!203938))))

(assert (=> bs!1080630 (= (= lt!1837076 lt!1836710) (= lambda!203962 lambda!203902))))

(assert (=> b!4677200 true))

(declare-fun bs!1080632 () Bool)

(declare-fun d!1486785 () Bool)

(assert (= bs!1080632 (and d!1486785 b!4677131)))

(declare-fun lambda!203963 () Int)

(declare-fun lt!1837081 () ListMap!4793)

(assert (=> bs!1080632 (= (= lt!1837081 lt!1836710) (= lambda!203963 lambda!203932))))

(declare-fun bs!1080633 () Bool)

(assert (= bs!1080633 (and d!1486785 b!4677202)))

(assert (=> bs!1080633 (= (= lt!1837081 lt!1836710) (= lambda!203963 lambda!203960))))

(declare-fun bs!1080634 () Bool)

(assert (= bs!1080634 (and d!1486785 b!4677133)))

(assert (=> bs!1080634 (= (= lt!1837081 lt!1836710) (= lambda!203963 lambda!203931))))

(assert (=> bs!1080632 (= (= lt!1837081 lt!1836911) (= lambda!203963 lambda!203933))))

(declare-fun bs!1080635 () Bool)

(assert (= bs!1080635 (and d!1486785 b!4677079)))

(assert (=> bs!1080635 (= (= lt!1837081 lt!1836710) (= lambda!203963 lambda!203903))))

(declare-fun bs!1080636 () Bool)

(assert (= bs!1080636 (and d!1486785 b!4677145)))

(assert (=> bs!1080636 (= (= lt!1837081 lt!1836964) (= lambda!203963 lambda!203940))))

(declare-fun bs!1080637 () Bool)

(assert (= bs!1080637 (and d!1486785 b!4677200)))

(assert (=> bs!1080637 (= (= lt!1837081 lt!1836710) (= lambda!203963 lambda!203961))))

(declare-fun bs!1080638 () Bool)

(assert (= bs!1080638 (and d!1486785 d!1486691)))

(assert (=> bs!1080638 (not (= lambda!203963 lambda!203848))))

(declare-fun bs!1080639 () Bool)

(assert (= bs!1080639 (and d!1486785 d!1486703)))

(assert (=> bs!1080639 (= (= lt!1837081 lt!1836832) (= lambda!203963 lambda!203909))))

(declare-fun bs!1080640 () Bool)

(assert (= bs!1080640 (and d!1486785 b!4677147)))

(assert (=> bs!1080640 (= (= lt!1837081 lt!1836710) (= lambda!203963 lambda!203936))))

(declare-fun bs!1080641 () Bool)

(assert (= bs!1080641 (and d!1486785 d!1486721)))

(assert (=> bs!1080641 (not (= lambda!203963 lambda!203927))))

(assert (=> bs!1080637 (= (= lt!1837081 lt!1837076) (= lambda!203963 lambda!203962))))

(declare-fun bs!1080642 () Bool)

(assert (= bs!1080642 (and d!1486785 d!1486745)))

(assert (=> bs!1080642 (= (= lt!1837081 lt!1836916) (= lambda!203963 lambda!203934))))

(declare-fun bs!1080643 () Bool)

(assert (= bs!1080643 (and d!1486785 d!1486755)))

(assert (=> bs!1080643 (= (= lt!1837081 lt!1836969) (= lambda!203963 lambda!203942))))

(assert (=> bs!1080635 (= (= lt!1837081 lt!1836827) (= lambda!203963 lambda!203906))))

(assert (=> bs!1080636 (= (= lt!1837081 lt!1836710) (= lambda!203963 lambda!203938))))

(declare-fun bs!1080644 () Bool)

(assert (= bs!1080644 (and d!1486785 b!4677081)))

(assert (=> bs!1080644 (= (= lt!1837081 lt!1836710) (= lambda!203963 lambda!203902))))

(assert (=> d!1486785 true))

(declare-fun b!4677198 () Bool)

(declare-fun e!2918267 () Bool)

(assert (=> b!4677198 (= e!2918267 (invariantList!1366 (toList!5430 lt!1837081)))))

(declare-fun b!4677199 () Bool)

(declare-fun res!1970192 () Bool)

(assert (=> b!4677199 (=> (not res!1970192) (not e!2918267))))

(assert (=> b!4677199 (= res!1970192 (forall!11194 (toList!5430 lt!1836710) lambda!203963))))

(declare-fun e!2918268 () ListMap!4793)

(assert (=> b!4677200 (= e!2918268 lt!1837076)))

(declare-fun lt!1837082 () ListMap!4793)

(assert (=> b!4677200 (= lt!1837082 (+!2072 lt!1836710 (h!58398 newBucket!218)))))

(assert (=> b!4677200 (= lt!1837076 (addToMapMapFromBucket!1202 (t!359465 newBucket!218) (+!2072 lt!1836710 (h!58398 newBucket!218))))))

(declare-fun lt!1837067 () Unit!121847)

(declare-fun call!326863 () Unit!121847)

(assert (=> b!4677200 (= lt!1837067 call!326863)))

(declare-fun call!326864 () Bool)

(assert (=> b!4677200 call!326864))

(declare-fun lt!1837084 () Unit!121847)

(assert (=> b!4677200 (= lt!1837084 lt!1837067)))

(assert (=> b!4677200 (forall!11194 (toList!5430 lt!1837082) lambda!203962)))

(declare-fun lt!1837072 () Unit!121847)

(declare-fun Unit!121941 () Unit!121847)

(assert (=> b!4677200 (= lt!1837072 Unit!121941)))

(declare-fun call!326862 () Bool)

(assert (=> b!4677200 call!326862))

(declare-fun lt!1837079 () Unit!121847)

(declare-fun Unit!121942 () Unit!121847)

(assert (=> b!4677200 (= lt!1837079 Unit!121942)))

(declare-fun lt!1837074 () Unit!121847)

(declare-fun Unit!121943 () Unit!121847)

(assert (=> b!4677200 (= lt!1837074 Unit!121943)))

(declare-fun lt!1837078 () Unit!121847)

(assert (=> b!4677200 (= lt!1837078 (forallContained!3337 (toList!5430 lt!1837082) lambda!203962 (h!58398 newBucket!218)))))

(assert (=> b!4677200 (contains!15338 lt!1837082 (_1!30031 (h!58398 newBucket!218)))))

(declare-fun lt!1837075 () Unit!121847)

(declare-fun Unit!121944 () Unit!121847)

(assert (=> b!4677200 (= lt!1837075 Unit!121944)))

(assert (=> b!4677200 (contains!15338 lt!1837076 (_1!30031 (h!58398 newBucket!218)))))

(declare-fun lt!1837071 () Unit!121847)

(declare-fun Unit!121945 () Unit!121847)

(assert (=> b!4677200 (= lt!1837071 Unit!121945)))

(assert (=> b!4677200 (forall!11194 newBucket!218 lambda!203962)))

(declare-fun lt!1837083 () Unit!121847)

(declare-fun Unit!121946 () Unit!121847)

(assert (=> b!4677200 (= lt!1837083 Unit!121946)))

(assert (=> b!4677200 (forall!11194 (toList!5430 lt!1837082) lambda!203962)))

(declare-fun lt!1837070 () Unit!121847)

(declare-fun Unit!121947 () Unit!121847)

(assert (=> b!4677200 (= lt!1837070 Unit!121947)))

(declare-fun lt!1837080 () Unit!121847)

(declare-fun Unit!121948 () Unit!121847)

(assert (=> b!4677200 (= lt!1837080 Unit!121948)))

(declare-fun lt!1837068 () Unit!121847)

(assert (=> b!4677200 (= lt!1837068 (addForallContainsKeyThenBeforeAdding!652 lt!1836710 lt!1837076 (_1!30031 (h!58398 newBucket!218)) (_2!30031 (h!58398 newBucket!218))))))

(assert (=> b!4677200 (forall!11194 (toList!5430 lt!1836710) lambda!203962)))

(declare-fun lt!1837065 () Unit!121847)

(assert (=> b!4677200 (= lt!1837065 lt!1837068)))

(assert (=> b!4677200 (forall!11194 (toList!5430 lt!1836710) lambda!203962)))

(declare-fun lt!1837073 () Unit!121847)

(declare-fun Unit!121949 () Unit!121847)

(assert (=> b!4677200 (= lt!1837073 Unit!121949)))

(declare-fun res!1970190 () Bool)

(assert (=> b!4677200 (= res!1970190 (forall!11194 newBucket!218 lambda!203962))))

(declare-fun e!2918269 () Bool)

(assert (=> b!4677200 (=> (not res!1970190) (not e!2918269))))

(assert (=> b!4677200 e!2918269))

(declare-fun lt!1837069 () Unit!121847)

(declare-fun Unit!121950 () Unit!121847)

(assert (=> b!4677200 (= lt!1837069 Unit!121950)))

(declare-fun bm!326857 () Bool)

(declare-fun c!800284 () Bool)

(assert (=> bm!326857 (= call!326862 (forall!11194 (ite c!800284 (toList!5430 lt!1836710) (t!359465 newBucket!218)) (ite c!800284 lambda!203960 lambda!203962)))))

(declare-fun bm!326858 () Bool)

(assert (=> bm!326858 (= call!326863 (lemmaContainsAllItsOwnKeys!654 lt!1836710))))

(declare-fun b!4677201 () Bool)

(assert (=> b!4677201 (= e!2918269 (forall!11194 (toList!5430 lt!1836710) lambda!203962))))

(assert (=> d!1486785 e!2918267))

(declare-fun res!1970191 () Bool)

(assert (=> d!1486785 (=> (not res!1970191) (not e!2918267))))

(assert (=> d!1486785 (= res!1970191 (forall!11194 newBucket!218 lambda!203963))))

(assert (=> d!1486785 (= lt!1837081 e!2918268)))

(assert (=> d!1486785 (= c!800284 ((_ is Nil!52197) newBucket!218))))

(assert (=> d!1486785 (noDuplicateKeys!1770 newBucket!218)))

(assert (=> d!1486785 (= (addToMapMapFromBucket!1202 newBucket!218 lt!1836710) lt!1837081)))

(assert (=> b!4677202 (= e!2918268 lt!1836710)))

(declare-fun lt!1837077 () Unit!121847)

(assert (=> b!4677202 (= lt!1837077 call!326863)))

(assert (=> b!4677202 call!326864))

(declare-fun lt!1837064 () Unit!121847)

(assert (=> b!4677202 (= lt!1837064 lt!1837077)))

(assert (=> b!4677202 call!326862))

(declare-fun lt!1837066 () Unit!121847)

(declare-fun Unit!121951 () Unit!121847)

(assert (=> b!4677202 (= lt!1837066 Unit!121951)))

(declare-fun bm!326859 () Bool)

(assert (=> bm!326859 (= call!326864 (forall!11194 (toList!5430 lt!1836710) (ite c!800284 lambda!203960 lambda!203961)))))

(assert (= (and d!1486785 c!800284) b!4677202))

(assert (= (and d!1486785 (not c!800284)) b!4677200))

(assert (= (and b!4677200 res!1970190) b!4677201))

(assert (= (or b!4677202 b!4677200) bm!326858))

(assert (= (or b!4677202 b!4677200) bm!326859))

(assert (= (or b!4677202 b!4677200) bm!326857))

(assert (= (and d!1486785 res!1970191) b!4677199))

(assert (= (and b!4677199 res!1970192) b!4677198))

(declare-fun m!5571685 () Bool)

(assert (=> d!1486785 m!5571685))

(assert (=> d!1486785 m!5571149))

(declare-fun m!5571687 () Bool)

(assert (=> bm!326857 m!5571687))

(declare-fun m!5571689 () Bool)

(assert (=> b!4677199 m!5571689))

(declare-fun m!5571691 () Bool)

(assert (=> b!4677198 m!5571691))

(declare-fun m!5571693 () Bool)

(assert (=> b!4677201 m!5571693))

(declare-fun m!5571695 () Bool)

(assert (=> bm!326859 m!5571695))

(assert (=> bm!326858 m!5571277))

(declare-fun m!5571697 () Bool)

(assert (=> b!4677200 m!5571697))

(declare-fun m!5571699 () Bool)

(assert (=> b!4677200 m!5571699))

(declare-fun m!5571701 () Bool)

(assert (=> b!4677200 m!5571701))

(declare-fun m!5571703 () Bool)

(assert (=> b!4677200 m!5571703))

(assert (=> b!4677200 m!5571699))

(declare-fun m!5571705 () Bool)

(assert (=> b!4677200 m!5571705))

(declare-fun m!5571707 () Bool)

(assert (=> b!4677200 m!5571707))

(declare-fun m!5571709 () Bool)

(assert (=> b!4677200 m!5571709))

(declare-fun m!5571711 () Bool)

(assert (=> b!4677200 m!5571711))

(assert (=> b!4677200 m!5571709))

(assert (=> b!4677200 m!5571693))

(assert (=> b!4677200 m!5571697))

(assert (=> b!4677200 m!5571693))

(assert (=> b!4676970 d!1486785))

(declare-fun bs!1080647 () Bool)

(declare-fun b!4677226 () Bool)

(assert (= bs!1080647 (and b!4677226 b!4677131)))

(declare-fun lambda!203964 () Int)

(assert (=> bs!1080647 (= lambda!203964 lambda!203932)))

(declare-fun bs!1080648 () Bool)

(assert (= bs!1080648 (and b!4677226 b!4677202)))

(assert (=> bs!1080648 (= lambda!203964 lambda!203960)))

(declare-fun bs!1080649 () Bool)

(assert (= bs!1080649 (and b!4677226 b!4677133)))

(assert (=> bs!1080649 (= lambda!203964 lambda!203931)))

(assert (=> bs!1080647 (= (= lt!1836710 lt!1836911) (= lambda!203964 lambda!203933))))

(declare-fun bs!1080650 () Bool)

(assert (= bs!1080650 (and b!4677226 b!4677079)))

(assert (=> bs!1080650 (= lambda!203964 lambda!203903)))

(declare-fun bs!1080651 () Bool)

(assert (= bs!1080651 (and b!4677226 b!4677145)))

(assert (=> bs!1080651 (= (= lt!1836710 lt!1836964) (= lambda!203964 lambda!203940))))

(declare-fun bs!1080652 () Bool)

(assert (= bs!1080652 (and b!4677226 b!4677200)))

(assert (=> bs!1080652 (= lambda!203964 lambda!203961)))

(declare-fun bs!1080653 () Bool)

(assert (= bs!1080653 (and b!4677226 d!1486691)))

(assert (=> bs!1080653 (not (= lambda!203964 lambda!203848))))

(declare-fun bs!1080654 () Bool)

(assert (= bs!1080654 (and b!4677226 d!1486703)))

(assert (=> bs!1080654 (= (= lt!1836710 lt!1836832) (= lambda!203964 lambda!203909))))

(declare-fun bs!1080655 () Bool)

(assert (= bs!1080655 (and b!4677226 d!1486785)))

(assert (=> bs!1080655 (= (= lt!1836710 lt!1837081) (= lambda!203964 lambda!203963))))

(declare-fun bs!1080656 () Bool)

(assert (= bs!1080656 (and b!4677226 b!4677147)))

(assert (=> bs!1080656 (= lambda!203964 lambda!203936)))

(declare-fun bs!1080657 () Bool)

(assert (= bs!1080657 (and b!4677226 d!1486721)))

(assert (=> bs!1080657 (not (= lambda!203964 lambda!203927))))

(assert (=> bs!1080652 (= (= lt!1836710 lt!1837076) (= lambda!203964 lambda!203962))))

(declare-fun bs!1080658 () Bool)

(assert (= bs!1080658 (and b!4677226 d!1486745)))

(assert (=> bs!1080658 (= (= lt!1836710 lt!1836916) (= lambda!203964 lambda!203934))))

(declare-fun bs!1080659 () Bool)

(assert (= bs!1080659 (and b!4677226 d!1486755)))

(assert (=> bs!1080659 (= (= lt!1836710 lt!1836969) (= lambda!203964 lambda!203942))))

(assert (=> bs!1080650 (= (= lt!1836710 lt!1836827) (= lambda!203964 lambda!203906))))

(assert (=> bs!1080651 (= lambda!203964 lambda!203938)))

(declare-fun bs!1080660 () Bool)

(assert (= bs!1080660 (and b!4677226 b!4677081)))

(assert (=> bs!1080660 (= lambda!203964 lambda!203902)))

(assert (=> b!4677226 true))

(declare-fun bs!1080661 () Bool)

(declare-fun b!4677224 () Bool)

(assert (= bs!1080661 (and b!4677224 b!4677131)))

(declare-fun lambda!203965 () Int)

(assert (=> bs!1080661 (= lambda!203965 lambda!203932)))

(declare-fun bs!1080662 () Bool)

(assert (= bs!1080662 (and b!4677224 b!4677202)))

(assert (=> bs!1080662 (= lambda!203965 lambda!203960)))

(declare-fun bs!1080663 () Bool)

(assert (= bs!1080663 (and b!4677224 b!4677133)))

(assert (=> bs!1080663 (= lambda!203965 lambda!203931)))

(declare-fun bs!1080664 () Bool)

(assert (= bs!1080664 (and b!4677224 b!4677226)))

(assert (=> bs!1080664 (= lambda!203965 lambda!203964)))

(assert (=> bs!1080661 (= (= lt!1836710 lt!1836911) (= lambda!203965 lambda!203933))))

(declare-fun bs!1080665 () Bool)

(assert (= bs!1080665 (and b!4677224 b!4677079)))

(assert (=> bs!1080665 (= lambda!203965 lambda!203903)))

(declare-fun bs!1080666 () Bool)

(assert (= bs!1080666 (and b!4677224 b!4677145)))

(assert (=> bs!1080666 (= (= lt!1836710 lt!1836964) (= lambda!203965 lambda!203940))))

(declare-fun bs!1080667 () Bool)

(assert (= bs!1080667 (and b!4677224 b!4677200)))

(assert (=> bs!1080667 (= lambda!203965 lambda!203961)))

(declare-fun bs!1080668 () Bool)

(assert (= bs!1080668 (and b!4677224 d!1486691)))

(assert (=> bs!1080668 (not (= lambda!203965 lambda!203848))))

(declare-fun bs!1080669 () Bool)

(assert (= bs!1080669 (and b!4677224 d!1486703)))

(assert (=> bs!1080669 (= (= lt!1836710 lt!1836832) (= lambda!203965 lambda!203909))))

(declare-fun bs!1080670 () Bool)

(assert (= bs!1080670 (and b!4677224 d!1486785)))

(assert (=> bs!1080670 (= (= lt!1836710 lt!1837081) (= lambda!203965 lambda!203963))))

(declare-fun bs!1080671 () Bool)

(assert (= bs!1080671 (and b!4677224 b!4677147)))

(assert (=> bs!1080671 (= lambda!203965 lambda!203936)))

(declare-fun bs!1080672 () Bool)

(assert (= bs!1080672 (and b!4677224 d!1486721)))

(assert (=> bs!1080672 (not (= lambda!203965 lambda!203927))))

(assert (=> bs!1080667 (= (= lt!1836710 lt!1837076) (= lambda!203965 lambda!203962))))

(declare-fun bs!1080673 () Bool)

(assert (= bs!1080673 (and b!4677224 d!1486745)))

(assert (=> bs!1080673 (= (= lt!1836710 lt!1836916) (= lambda!203965 lambda!203934))))

(declare-fun bs!1080674 () Bool)

(assert (= bs!1080674 (and b!4677224 d!1486755)))

(assert (=> bs!1080674 (= (= lt!1836710 lt!1836969) (= lambda!203965 lambda!203942))))

(assert (=> bs!1080665 (= (= lt!1836710 lt!1836827) (= lambda!203965 lambda!203906))))

(assert (=> bs!1080666 (= lambda!203965 lambda!203938)))

(declare-fun bs!1080675 () Bool)

(assert (= bs!1080675 (and b!4677224 b!4677081)))

(assert (=> bs!1080675 (= lambda!203965 lambda!203902)))

(assert (=> b!4677224 true))

(declare-fun lt!1837097 () ListMap!4793)

(declare-fun lambda!203966 () Int)

(assert (=> bs!1080661 (= (= lt!1837097 lt!1836710) (= lambda!203966 lambda!203932))))

(assert (=> bs!1080662 (= (= lt!1837097 lt!1836710) (= lambda!203966 lambda!203960))))

(assert (=> bs!1080663 (= (= lt!1837097 lt!1836710) (= lambda!203966 lambda!203931))))

(assert (=> bs!1080664 (= (= lt!1837097 lt!1836710) (= lambda!203966 lambda!203964))))

(assert (=> bs!1080661 (= (= lt!1837097 lt!1836911) (= lambda!203966 lambda!203933))))

(assert (=> bs!1080665 (= (= lt!1837097 lt!1836710) (= lambda!203966 lambda!203903))))

(assert (=> bs!1080666 (= (= lt!1837097 lt!1836964) (= lambda!203966 lambda!203940))))

(assert (=> bs!1080667 (= (= lt!1837097 lt!1836710) (= lambda!203966 lambda!203961))))

(assert (=> bs!1080668 (not (= lambda!203966 lambda!203848))))

(assert (=> bs!1080670 (= (= lt!1837097 lt!1837081) (= lambda!203966 lambda!203963))))

(assert (=> bs!1080671 (= (= lt!1837097 lt!1836710) (= lambda!203966 lambda!203936))))

(assert (=> bs!1080672 (not (= lambda!203966 lambda!203927))))

(assert (=> bs!1080667 (= (= lt!1837097 lt!1837076) (= lambda!203966 lambda!203962))))

(assert (=> bs!1080669 (= (= lt!1837097 lt!1836832) (= lambda!203966 lambda!203909))))

(assert (=> b!4677224 (= (= lt!1837097 lt!1836710) (= lambda!203966 lambda!203965))))

(assert (=> bs!1080673 (= (= lt!1837097 lt!1836916) (= lambda!203966 lambda!203934))))

(assert (=> bs!1080674 (= (= lt!1837097 lt!1836969) (= lambda!203966 lambda!203942))))

(assert (=> bs!1080665 (= (= lt!1837097 lt!1836827) (= lambda!203966 lambda!203906))))

(assert (=> bs!1080666 (= (= lt!1837097 lt!1836710) (= lambda!203966 lambda!203938))))

(assert (=> bs!1080675 (= (= lt!1837097 lt!1836710) (= lambda!203966 lambda!203902))))

(assert (=> b!4677224 true))

(declare-fun bs!1080676 () Bool)

(declare-fun d!1486801 () Bool)

(assert (= bs!1080676 (and d!1486801 b!4677224)))

(declare-fun lambda!203967 () Int)

(declare-fun lt!1837102 () ListMap!4793)

(assert (=> bs!1080676 (= (= lt!1837102 lt!1837097) (= lambda!203967 lambda!203966))))

(declare-fun bs!1080677 () Bool)

(assert (= bs!1080677 (and d!1486801 b!4677131)))

(assert (=> bs!1080677 (= (= lt!1837102 lt!1836710) (= lambda!203967 lambda!203932))))

(declare-fun bs!1080678 () Bool)

(assert (= bs!1080678 (and d!1486801 b!4677202)))

(assert (=> bs!1080678 (= (= lt!1837102 lt!1836710) (= lambda!203967 lambda!203960))))

(declare-fun bs!1080679 () Bool)

(assert (= bs!1080679 (and d!1486801 b!4677133)))

(assert (=> bs!1080679 (= (= lt!1837102 lt!1836710) (= lambda!203967 lambda!203931))))

(declare-fun bs!1080680 () Bool)

(assert (= bs!1080680 (and d!1486801 b!4677226)))

(assert (=> bs!1080680 (= (= lt!1837102 lt!1836710) (= lambda!203967 lambda!203964))))

(assert (=> bs!1080677 (= (= lt!1837102 lt!1836911) (= lambda!203967 lambda!203933))))

(declare-fun bs!1080681 () Bool)

(assert (= bs!1080681 (and d!1486801 b!4677079)))

(assert (=> bs!1080681 (= (= lt!1837102 lt!1836710) (= lambda!203967 lambda!203903))))

(declare-fun bs!1080682 () Bool)

(assert (= bs!1080682 (and d!1486801 b!4677145)))

(assert (=> bs!1080682 (= (= lt!1837102 lt!1836964) (= lambda!203967 lambda!203940))))

(declare-fun bs!1080683 () Bool)

(assert (= bs!1080683 (and d!1486801 b!4677200)))

(assert (=> bs!1080683 (= (= lt!1837102 lt!1836710) (= lambda!203967 lambda!203961))))

(declare-fun bs!1080684 () Bool)

(assert (= bs!1080684 (and d!1486801 d!1486691)))

(assert (=> bs!1080684 (not (= lambda!203967 lambda!203848))))

(declare-fun bs!1080685 () Bool)

(assert (= bs!1080685 (and d!1486801 d!1486785)))

(assert (=> bs!1080685 (= (= lt!1837102 lt!1837081) (= lambda!203967 lambda!203963))))

(declare-fun bs!1080686 () Bool)

(assert (= bs!1080686 (and d!1486801 b!4677147)))

(assert (=> bs!1080686 (= (= lt!1837102 lt!1836710) (= lambda!203967 lambda!203936))))

(declare-fun bs!1080687 () Bool)

(assert (= bs!1080687 (and d!1486801 d!1486721)))

(assert (=> bs!1080687 (not (= lambda!203967 lambda!203927))))

(assert (=> bs!1080683 (= (= lt!1837102 lt!1837076) (= lambda!203967 lambda!203962))))

(declare-fun bs!1080688 () Bool)

(assert (= bs!1080688 (and d!1486801 d!1486703)))

(assert (=> bs!1080688 (= (= lt!1837102 lt!1836832) (= lambda!203967 lambda!203909))))

(assert (=> bs!1080676 (= (= lt!1837102 lt!1836710) (= lambda!203967 lambda!203965))))

(declare-fun bs!1080689 () Bool)

(assert (= bs!1080689 (and d!1486801 d!1486745)))

(assert (=> bs!1080689 (= (= lt!1837102 lt!1836916) (= lambda!203967 lambda!203934))))

(declare-fun bs!1080690 () Bool)

(assert (= bs!1080690 (and d!1486801 d!1486755)))

(assert (=> bs!1080690 (= (= lt!1837102 lt!1836969) (= lambda!203967 lambda!203942))))

(assert (=> bs!1080681 (= (= lt!1837102 lt!1836827) (= lambda!203967 lambda!203906))))

(assert (=> bs!1080682 (= (= lt!1837102 lt!1836710) (= lambda!203967 lambda!203938))))

(declare-fun bs!1080691 () Bool)

(assert (= bs!1080691 (and d!1486801 b!4677081)))

(assert (=> bs!1080691 (= (= lt!1837102 lt!1836710) (= lambda!203967 lambda!203902))))

(assert (=> d!1486801 true))

(declare-fun b!4677222 () Bool)

(declare-fun e!2918285 () Bool)

(assert (=> b!4677222 (= e!2918285 (invariantList!1366 (toList!5430 lt!1837102)))))

(declare-fun b!4677223 () Bool)

(declare-fun res!1970203 () Bool)

(assert (=> b!4677223 (=> (not res!1970203) (not e!2918285))))

(assert (=> b!4677223 (= res!1970203 (forall!11194 (toList!5430 lt!1836710) lambda!203967))))

(declare-fun e!2918286 () ListMap!4793)

(assert (=> b!4677224 (= e!2918286 lt!1837097)))

(declare-fun lt!1837103 () ListMap!4793)

(assert (=> b!4677224 (= lt!1837103 (+!2072 lt!1836710 (h!58398 lt!1836704)))))

(assert (=> b!4677224 (= lt!1837097 (addToMapMapFromBucket!1202 (t!359465 lt!1836704) (+!2072 lt!1836710 (h!58398 lt!1836704))))))

(declare-fun lt!1837088 () Unit!121847)

(declare-fun call!326866 () Unit!121847)

(assert (=> b!4677224 (= lt!1837088 call!326866)))

(declare-fun call!326867 () Bool)

(assert (=> b!4677224 call!326867))

(declare-fun lt!1837105 () Unit!121847)

(assert (=> b!4677224 (= lt!1837105 lt!1837088)))

(assert (=> b!4677224 (forall!11194 (toList!5430 lt!1837103) lambda!203966)))

(declare-fun lt!1837093 () Unit!121847)

(declare-fun Unit!121952 () Unit!121847)

(assert (=> b!4677224 (= lt!1837093 Unit!121952)))

(declare-fun call!326865 () Bool)

(assert (=> b!4677224 call!326865))

(declare-fun lt!1837100 () Unit!121847)

(declare-fun Unit!121953 () Unit!121847)

(assert (=> b!4677224 (= lt!1837100 Unit!121953)))

(declare-fun lt!1837095 () Unit!121847)

(declare-fun Unit!121954 () Unit!121847)

(assert (=> b!4677224 (= lt!1837095 Unit!121954)))

(declare-fun lt!1837099 () Unit!121847)

(assert (=> b!4677224 (= lt!1837099 (forallContained!3337 (toList!5430 lt!1837103) lambda!203966 (h!58398 lt!1836704)))))

(assert (=> b!4677224 (contains!15338 lt!1837103 (_1!30031 (h!58398 lt!1836704)))))

(declare-fun lt!1837096 () Unit!121847)

(declare-fun Unit!121955 () Unit!121847)

(assert (=> b!4677224 (= lt!1837096 Unit!121955)))

(assert (=> b!4677224 (contains!15338 lt!1837097 (_1!30031 (h!58398 lt!1836704)))))

(declare-fun lt!1837092 () Unit!121847)

(declare-fun Unit!121956 () Unit!121847)

(assert (=> b!4677224 (= lt!1837092 Unit!121956)))

(assert (=> b!4677224 (forall!11194 lt!1836704 lambda!203966)))

(declare-fun lt!1837104 () Unit!121847)

(declare-fun Unit!121957 () Unit!121847)

(assert (=> b!4677224 (= lt!1837104 Unit!121957)))

(assert (=> b!4677224 (forall!11194 (toList!5430 lt!1837103) lambda!203966)))

(declare-fun lt!1837091 () Unit!121847)

(declare-fun Unit!121958 () Unit!121847)

(assert (=> b!4677224 (= lt!1837091 Unit!121958)))

(declare-fun lt!1837101 () Unit!121847)

(declare-fun Unit!121959 () Unit!121847)

(assert (=> b!4677224 (= lt!1837101 Unit!121959)))

(declare-fun lt!1837089 () Unit!121847)

(assert (=> b!4677224 (= lt!1837089 (addForallContainsKeyThenBeforeAdding!652 lt!1836710 lt!1837097 (_1!30031 (h!58398 lt!1836704)) (_2!30031 (h!58398 lt!1836704))))))

(assert (=> b!4677224 (forall!11194 (toList!5430 lt!1836710) lambda!203966)))

(declare-fun lt!1837086 () Unit!121847)

(assert (=> b!4677224 (= lt!1837086 lt!1837089)))

(assert (=> b!4677224 (forall!11194 (toList!5430 lt!1836710) lambda!203966)))

(declare-fun lt!1837094 () Unit!121847)

(declare-fun Unit!121960 () Unit!121847)

(assert (=> b!4677224 (= lt!1837094 Unit!121960)))

(declare-fun res!1970201 () Bool)

(assert (=> b!4677224 (= res!1970201 (forall!11194 lt!1836704 lambda!203966))))

(declare-fun e!2918287 () Bool)

(assert (=> b!4677224 (=> (not res!1970201) (not e!2918287))))

(assert (=> b!4677224 e!2918287))

(declare-fun lt!1837090 () Unit!121847)

(declare-fun Unit!121961 () Unit!121847)

(assert (=> b!4677224 (= lt!1837090 Unit!121961)))

(declare-fun bm!326860 () Bool)

(declare-fun c!800285 () Bool)

(assert (=> bm!326860 (= call!326865 (forall!11194 (ite c!800285 (toList!5430 lt!1836710) (t!359465 lt!1836704)) (ite c!800285 lambda!203964 lambda!203966)))))

(declare-fun bm!326861 () Bool)

(assert (=> bm!326861 (= call!326866 (lemmaContainsAllItsOwnKeys!654 lt!1836710))))

(declare-fun b!4677225 () Bool)

(assert (=> b!4677225 (= e!2918287 (forall!11194 (toList!5430 lt!1836710) lambda!203966))))

(assert (=> d!1486801 e!2918285))

(declare-fun res!1970202 () Bool)

(assert (=> d!1486801 (=> (not res!1970202) (not e!2918285))))

(assert (=> d!1486801 (= res!1970202 (forall!11194 lt!1836704 lambda!203967))))

(assert (=> d!1486801 (= lt!1837102 e!2918286)))

(assert (=> d!1486801 (= c!800285 ((_ is Nil!52197) lt!1836704))))

(assert (=> d!1486801 (noDuplicateKeys!1770 lt!1836704)))

(assert (=> d!1486801 (= (addToMapMapFromBucket!1202 lt!1836704 lt!1836710) lt!1837102)))

(assert (=> b!4677226 (= e!2918286 lt!1836710)))

(declare-fun lt!1837098 () Unit!121847)

(assert (=> b!4677226 (= lt!1837098 call!326866)))

(assert (=> b!4677226 call!326867))

(declare-fun lt!1837085 () Unit!121847)

(assert (=> b!4677226 (= lt!1837085 lt!1837098)))

(assert (=> b!4677226 call!326865))

(declare-fun lt!1837087 () Unit!121847)

(declare-fun Unit!121962 () Unit!121847)

(assert (=> b!4677226 (= lt!1837087 Unit!121962)))

(declare-fun bm!326862 () Bool)

(assert (=> bm!326862 (= call!326867 (forall!11194 (toList!5430 lt!1836710) (ite c!800285 lambda!203964 lambda!203965)))))

(assert (= (and d!1486801 c!800285) b!4677226))

(assert (= (and d!1486801 (not c!800285)) b!4677224))

(assert (= (and b!4677224 res!1970201) b!4677225))

(assert (= (or b!4677226 b!4677224) bm!326861))

(assert (= (or b!4677226 b!4677224) bm!326862))

(assert (= (or b!4677226 b!4677224) bm!326860))

(assert (= (and d!1486801 res!1970202) b!4677223))

(assert (= (and b!4677223 res!1970203) b!4677222))

(declare-fun m!5571713 () Bool)

(assert (=> d!1486801 m!5571713))

(assert (=> d!1486801 m!5571575))

(declare-fun m!5571715 () Bool)

(assert (=> bm!326860 m!5571715))

(declare-fun m!5571717 () Bool)

(assert (=> b!4677223 m!5571717))

(declare-fun m!5571719 () Bool)

(assert (=> b!4677222 m!5571719))

(declare-fun m!5571721 () Bool)

(assert (=> b!4677225 m!5571721))

(declare-fun m!5571723 () Bool)

(assert (=> bm!326862 m!5571723))

(assert (=> bm!326861 m!5571277))

(declare-fun m!5571725 () Bool)

(assert (=> b!4677224 m!5571725))

(declare-fun m!5571727 () Bool)

(assert (=> b!4677224 m!5571727))

(declare-fun m!5571729 () Bool)

(assert (=> b!4677224 m!5571729))

(declare-fun m!5571731 () Bool)

(assert (=> b!4677224 m!5571731))

(assert (=> b!4677224 m!5571727))

(declare-fun m!5571733 () Bool)

(assert (=> b!4677224 m!5571733))

(declare-fun m!5571735 () Bool)

(assert (=> b!4677224 m!5571735))

(declare-fun m!5571737 () Bool)

(assert (=> b!4677224 m!5571737))

(declare-fun m!5571739 () Bool)

(assert (=> b!4677224 m!5571739))

(assert (=> b!4677224 m!5571737))

(assert (=> b!4677224 m!5571721))

(assert (=> b!4677224 m!5571725))

(assert (=> b!4677224 m!5571721))

(assert (=> b!4676970 d!1486801))

(declare-fun b!4677238 () Bool)

(declare-fun e!2918292 () List!52321)

(assert (=> b!4677238 (= e!2918292 Nil!52197)))

(declare-fun b!4677237 () Bool)

(assert (=> b!4677237 (= e!2918292 (Cons!52197 (h!58398 oldBucket!34) (removePairForKey!1365 (t!359465 oldBucket!34) key!4653)))))

(declare-fun b!4677236 () Bool)

(declare-fun e!2918293 () List!52321)

(assert (=> b!4677236 (= e!2918293 e!2918292)))

(declare-fun c!800291 () Bool)

(assert (=> b!4677236 (= c!800291 ((_ is Cons!52197) oldBucket!34))))

(declare-fun b!4677235 () Bool)

(assert (=> b!4677235 (= e!2918293 (t!359465 oldBucket!34))))

(declare-fun d!1486803 () Bool)

(declare-fun lt!1837108 () List!52321)

(assert (=> d!1486803 (not (containsKey!2905 lt!1837108 key!4653))))

(assert (=> d!1486803 (= lt!1837108 e!2918293)))

(declare-fun c!800290 () Bool)

(assert (=> d!1486803 (= c!800290 (and ((_ is Cons!52197) oldBucket!34) (= (_1!30031 (h!58398 oldBucket!34)) key!4653)))))

(assert (=> d!1486803 (noDuplicateKeys!1770 oldBucket!34)))

(assert (=> d!1486803 (= (removePairForKey!1365 oldBucket!34 key!4653) lt!1837108)))

(assert (= (and d!1486803 c!800290) b!4677235))

(assert (= (and d!1486803 (not c!800290)) b!4677236))

(assert (= (and b!4677236 c!800291) b!4677237))

(assert (= (and b!4677236 (not c!800291)) b!4677238))

(declare-fun m!5571741 () Bool)

(assert (=> b!4677237 m!5571741))

(declare-fun m!5571743 () Bool)

(assert (=> d!1486803 m!5571743))

(assert (=> d!1486803 m!5571175))

(assert (=> b!4676981 d!1486803))

(declare-fun d!1486805 () Bool)

(declare-fun res!1970204 () Bool)

(declare-fun e!2918294 () Bool)

(assert (=> d!1486805 (=> res!1970204 e!2918294)))

(assert (=> d!1486805 (= res!1970204 ((_ is Nil!52198) lt!1836707))))

(assert (=> d!1486805 (= (forall!11193 lt!1836707 lambda!203845) e!2918294)))

(declare-fun b!4677239 () Bool)

(declare-fun e!2918295 () Bool)

(assert (=> b!4677239 (= e!2918294 e!2918295)))

(declare-fun res!1970205 () Bool)

(assert (=> b!4677239 (=> (not res!1970205) (not e!2918295))))

(assert (=> b!4677239 (= res!1970205 (dynLambda!21668 lambda!203845 (h!58399 lt!1836707)))))

(declare-fun b!4677240 () Bool)

(assert (=> b!4677240 (= e!2918295 (forall!11193 (t!359466 lt!1836707) lambda!203845))))

(assert (= (and d!1486805 (not res!1970204)) b!4677239))

(assert (= (and b!4677239 res!1970205) b!4677240))

(declare-fun b_lambda!176591 () Bool)

(assert (=> (not b_lambda!176591) (not b!4677239)))

(declare-fun m!5571745 () Bool)

(assert (=> b!4677239 m!5571745))

(declare-fun m!5571747 () Bool)

(assert (=> b!4677240 m!5571747))

(assert (=> b!4676972 d!1486805))

(declare-fun b!4677245 () Bool)

(declare-fun tp!1344734 () Bool)

(declare-fun e!2918298 () Bool)

(assert (=> b!4677245 (= e!2918298 (and tp_is_empty!30373 tp_is_empty!30375 tp!1344734))))

(assert (=> b!4676973 (= tp!1344721 e!2918298)))

(assert (= (and b!4676973 ((_ is Cons!52197) (t!359465 newBucket!218))) b!4677245))

(declare-fun b!4677246 () Bool)

(declare-fun e!2918299 () Bool)

(declare-fun tp!1344735 () Bool)

(assert (=> b!4677246 (= e!2918299 (and tp_is_empty!30373 tp_is_empty!30375 tp!1344735))))

(assert (=> b!4676975 (= tp!1344719 e!2918299)))

(assert (= (and b!4676975 ((_ is Cons!52197) (t!359465 oldBucket!34))) b!4677246))

(declare-fun b!4677251 () Bool)

(declare-fun e!2918302 () Bool)

(declare-fun tp!1344740 () Bool)

(declare-fun tp!1344741 () Bool)

(assert (=> b!4677251 (= e!2918302 (and tp!1344740 tp!1344741))))

(assert (=> b!4676971 (= tp!1344720 e!2918302)))

(assert (= (and b!4676971 ((_ is Cons!52198) (toList!5429 lm!2023))) b!4677251))

(declare-fun b_lambda!176593 () Bool)

(assert (= b_lambda!176581 (or start!472084 b_lambda!176593)))

(declare-fun bs!1080692 () Bool)

(declare-fun d!1486807 () Bool)

(assert (= bs!1080692 (and d!1486807 start!472084)))

(assert (=> bs!1080692 (= (dynLambda!21668 lambda!203845 (h!58399 (toList!5429 lm!2023))) (noDuplicateKeys!1770 (_2!30032 (h!58399 (toList!5429 lm!2023)))))))

(assert (=> bs!1080692 m!5571265))

(assert (=> b!4677037 d!1486807))

(declare-fun b_lambda!176595 () Bool)

(assert (= b_lambda!176591 (or start!472084 b_lambda!176595)))

(declare-fun bs!1080693 () Bool)

(declare-fun d!1486809 () Bool)

(assert (= bs!1080693 (and d!1486809 start!472084)))

(assert (=> bs!1080693 (= (dynLambda!21668 lambda!203845 (h!58399 lt!1836707)) (noDuplicateKeys!1770 (_2!30032 (h!58399 lt!1836707))))))

(declare-fun m!5571749 () Bool)

(assert (=> bs!1080693 m!5571749))

(assert (=> b!4677239 d!1486809))

(check-sat (not b!4677200) (not d!1486729) (not bm!326843) (not b!4677157) (not b!4677222) (not b!4677237) (not b!4677128) (not d!1486803) (not bm!326824) (not d!1486725) (not d!1486695) (not bm!326825) (not b!4677116) (not bm!326860) (not d!1486719) (not b!4677127) (not bm!326857) (not bm!326844) (not b!4677130) (not b_lambda!176593) (not b!4677245) (not b!4677246) (not b!4677193) (not bm!326858) (not b!4677223) (not b!4677190) (not b!4677199) (not d!1486751) (not d!1486755) (not d!1486717) (not b!4677251) (not d!1486773) (not d!1486703) (not bm!326861) (not b!4677201) (not d!1486785) (not bs!1080693) (not b!4677135) (not b!4677011) (not b!4677192) (not b!4677077) (not d!1486739) (not b_lambda!176595) (not bm!326836) (not b!4677131) (not b!4677198) (not b!4677107) (not b!4677188) (not b!4677101) (not d!1486781) (not b!4677240) (not b!4677225) (not b!4677080) (not d!1486721) tp_is_empty!30375 (not bm!326862) (not b!4677134) (not d!1486747) (not b!4677129) (not b!4677224) (not d!1486763) (not b!4677078) (not b!4677115) (not bs!1080692) (not bm!326838) (not bm!326842) (not b!4677145) (not d!1486701) (not d!1486741) (not b!4677158) (not b!4677079) (not bm!326837) tp_is_empty!30373 (not b!4677194) (not bm!326826) (not d!1486801) (not b!4677132) (not b!4677105) (not bm!326859) (not b!4677144) (not bm!326856) (not b!4677191) (not d!1486733) (not d!1486745) (not d!1486691) (not b!4677189) (not b!4677038) (not b!4677196) (not b!4677143) (not b!4677146))
(check-sat)
