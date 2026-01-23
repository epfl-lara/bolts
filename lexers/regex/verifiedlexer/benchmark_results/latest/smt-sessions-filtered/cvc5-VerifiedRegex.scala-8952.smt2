; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!480266 () Bool)

(assert start!480266)

(declare-fun b!4719142 () Bool)

(declare-fun res!1996032 () Bool)

(declare-fun e!2943106 () Bool)

(assert (=> b!4719142 (=> (not res!1996032) (not e!2943106))))

(declare-datatypes ((Hashable!6374 0))(
  ( (HashableExt!6373 (__x!32077 Int)) )
))
(declare-fun hashF!1323 () Hashable!6374)

(declare-datatypes ((K!14163 0))(
  ( (K!14164 (val!19601 Int)) )
))
(declare-datatypes ((V!14409 0))(
  ( (V!14410 (val!19602 Int)) )
))
(declare-datatypes ((tuple2!54414 0))(
  ( (tuple2!54415 (_1!30501 K!14163) (_2!30501 V!14409)) )
))
(declare-datatypes ((List!52928 0))(
  ( (Nil!52804) (Cons!52804 (h!59143 tuple2!54414) (t!360184 List!52928)) )
))
(declare-fun newBucket!218 () List!52928)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1831 (List!52928 (_ BitVec 64) Hashable!6374) Bool)

(assert (=> b!4719142 (= res!1996032 (allKeysSameHash!1831 newBucket!218 hash!405 hashF!1323))))

(declare-fun res!1996043 () Bool)

(declare-fun e!2943110 () Bool)

(assert (=> start!480266 (=> (not res!1996043) (not e!2943110))))

(declare-datatypes ((tuple2!54416 0))(
  ( (tuple2!54417 (_1!30502 (_ BitVec 64)) (_2!30502 List!52928)) )
))
(declare-datatypes ((List!52929 0))(
  ( (Nil!52805) (Cons!52805 (h!59144 tuple2!54416) (t!360185 List!52929)) )
))
(declare-datatypes ((ListLongMap!4429 0))(
  ( (ListLongMap!4430 (toList!5899 List!52929)) )
))
(declare-fun lm!2023 () ListLongMap!4429)

(declare-fun lambda!214761 () Int)

(declare-fun forall!11567 (List!52929 Int) Bool)

(assert (=> start!480266 (= res!1996043 (forall!11567 (toList!5899 lm!2023) lambda!214761))))

(assert (=> start!480266 e!2943110))

(declare-fun e!2943109 () Bool)

(declare-fun inv!68038 (ListLongMap!4429) Bool)

(assert (=> start!480266 (and (inv!68038 lm!2023) e!2943109)))

(declare-fun tp_is_empty!31313 () Bool)

(assert (=> start!480266 tp_is_empty!31313))

(declare-fun e!2943111 () Bool)

(assert (=> start!480266 e!2943111))

(assert (=> start!480266 true))

(declare-fun e!2943108 () Bool)

(assert (=> start!480266 e!2943108))

(declare-fun b!4719143 () Bool)

(declare-fun res!1996040 () Bool)

(assert (=> b!4719143 (=> (not res!1996040) (not e!2943106))))

(declare-fun allKeysSameHashInMap!1919 (ListLongMap!4429 Hashable!6374) Bool)

(assert (=> b!4719143 (= res!1996040 (allKeysSameHashInMap!1919 lm!2023 hashF!1323))))

(declare-fun b!4719144 () Bool)

(declare-fun res!1996045 () Bool)

(assert (=> b!4719144 (=> (not res!1996045) (not e!2943106))))

(declare-fun oldBucket!34 () List!52928)

(declare-fun head!10231 (List!52929) tuple2!54416)

(assert (=> b!4719144 (= res!1996045 (= (head!10231 (toList!5899 lm!2023)) (tuple2!54417 hash!405 oldBucket!34)))))

(declare-fun tp_is_empty!31315 () Bool)

(declare-fun tp!1348225 () Bool)

(declare-fun b!4719145 () Bool)

(assert (=> b!4719145 (= e!2943111 (and tp_is_empty!31313 tp_is_empty!31315 tp!1348225))))

(declare-fun b!4719146 () Bool)

(declare-fun res!1996038 () Bool)

(declare-fun e!2943105 () Bool)

(assert (=> b!4719146 (=> res!1996038 e!2943105)))

(declare-fun lt!1884366 () List!52928)

(declare-datatypes ((ListMap!5263 0))(
  ( (ListMap!5264 (toList!5900 List!52928)) )
))
(declare-fun lt!1884367 () ListMap!5263)

(declare-fun addToMapMapFromBucket!1435 (List!52928 ListMap!5263) ListMap!5263)

(assert (=> b!4719146 (= res!1996038 (not (= (addToMapMapFromBucket!1435 lt!1884366 lt!1884367) (addToMapMapFromBucket!1435 newBucket!218 lt!1884367))))))

(declare-fun tp!1348226 () Bool)

(declare-fun b!4719147 () Bool)

(assert (=> b!4719147 (= e!2943108 (and tp_is_empty!31313 tp_is_empty!31315 tp!1348226))))

(declare-fun b!4719148 () Bool)

(declare-fun res!1996039 () Bool)

(assert (=> b!4719148 (=> (not res!1996039) (not e!2943106))))

(assert (=> b!4719148 (= res!1996039 (is-Cons!52805 (toList!5899 lm!2023)))))

(declare-fun b!4719149 () Bool)

(declare-fun res!1996044 () Bool)

(assert (=> b!4719149 (=> (not res!1996044) (not e!2943110))))

(assert (=> b!4719149 (= res!1996044 (allKeysSameHash!1831 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4719150 () Bool)

(declare-fun res!1996035 () Bool)

(assert (=> b!4719150 (=> (not res!1996035) (not e!2943106))))

(declare-fun key!4653 () K!14163)

(declare-fun hash!4367 (Hashable!6374 K!14163) (_ BitVec 64))

(assert (=> b!4719150 (= res!1996035 (= (hash!4367 hashF!1323 key!4653) hash!405))))

(declare-fun b!4719151 () Bool)

(declare-fun tp!1348224 () Bool)

(assert (=> b!4719151 (= e!2943109 tp!1348224)))

(declare-fun b!4719152 () Bool)

(declare-fun res!1996034 () Bool)

(assert (=> b!4719152 (=> res!1996034 e!2943105)))

(declare-fun extractMap!2031 (List!52929) ListMap!5263)

(assert (=> b!4719152 (= res!1996034 (not (= (extractMap!2031 (Cons!52805 (tuple2!54417 hash!405 lt!1884366) (t!360185 (toList!5899 lm!2023)))) (extractMap!2031 (Cons!52805 (tuple2!54417 hash!405 newBucket!218) (t!360185 (toList!5899 lm!2023)))))))))

(declare-fun b!4719153 () Bool)

(declare-fun res!1996033 () Bool)

(assert (=> b!4719153 (=> (not res!1996033) (not e!2943110))))

(declare-fun noDuplicateKeys!2005 (List!52928) Bool)

(assert (=> b!4719153 (= res!1996033 (noDuplicateKeys!2005 newBucket!218))))

(declare-fun b!4719154 () Bool)

(declare-fun e!2943107 () Bool)

(assert (=> b!4719154 (= e!2943106 (not e!2943107))))

(declare-fun res!1996031 () Bool)

(assert (=> b!4719154 (=> res!1996031 e!2943107)))

(assert (=> b!4719154 (= res!1996031 (or (not (is-Cons!52804 oldBucket!34)) (not (= (_1!30501 (h!59143 oldBucket!34)) key!4653))))))

(declare-fun lt!1884368 () ListMap!5263)

(assert (=> b!4719154 (= lt!1884368 (addToMapMapFromBucket!1435 (_2!30502 (h!59144 (toList!5899 lm!2023))) lt!1884367))))

(assert (=> b!4719154 (= lt!1884367 (extractMap!2031 (t!360185 (toList!5899 lm!2023))))))

(declare-fun tail!8976 (ListLongMap!4429) ListLongMap!4429)

(assert (=> b!4719154 (= (t!360185 (toList!5899 lm!2023)) (toList!5899 (tail!8976 lm!2023)))))

(declare-fun b!4719155 () Bool)

(declare-fun res!1996041 () Bool)

(assert (=> b!4719155 (=> (not res!1996041) (not e!2943110))))

(assert (=> b!4719155 (= res!1996041 (noDuplicateKeys!2005 oldBucket!34))))

(declare-fun b!4719156 () Bool)

(declare-fun res!1996030 () Bool)

(assert (=> b!4719156 (=> res!1996030 e!2943105)))

(assert (=> b!4719156 (= res!1996030 (not (noDuplicateKeys!2005 lt!1884366)))))

(declare-fun b!4719157 () Bool)

(declare-fun res!1996042 () Bool)

(assert (=> b!4719157 (=> (not res!1996042) (not e!2943110))))

(declare-fun removePairForKey!1600 (List!52928 K!14163) List!52928)

(assert (=> b!4719157 (= res!1996042 (= (removePairForKey!1600 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4719158 () Bool)

(assert (=> b!4719158 (= e!2943107 e!2943105)))

(declare-fun res!1996037 () Bool)

(assert (=> b!4719158 (=> res!1996037 e!2943105)))

(assert (=> b!4719158 (= res!1996037 (not (= lt!1884366 newBucket!218)))))

(declare-fun tail!8977 (List!52928) List!52928)

(assert (=> b!4719158 (= lt!1884366 (tail!8977 oldBucket!34))))

(declare-fun b!4719159 () Bool)

(declare-fun head!10232 (List!52928) tuple2!54414)

(assert (=> b!4719159 (= e!2943105 (noDuplicateKeys!2005 (Cons!52804 (head!10232 oldBucket!34) lt!1884366)))))

(declare-fun b!4719160 () Bool)

(assert (=> b!4719160 (= e!2943110 e!2943106)))

(declare-fun res!1996036 () Bool)

(assert (=> b!4719160 (=> (not res!1996036) (not e!2943106))))

(declare-fun contains!16151 (ListMap!5263 K!14163) Bool)

(assert (=> b!4719160 (= res!1996036 (contains!16151 lt!1884368 key!4653))))

(assert (=> b!4719160 (= lt!1884368 (extractMap!2031 (toList!5899 lm!2023)))))

(assert (= (and start!480266 res!1996043) b!4719155))

(assert (= (and b!4719155 res!1996041) b!4719153))

(assert (= (and b!4719153 res!1996033) b!4719157))

(assert (= (and b!4719157 res!1996042) b!4719149))

(assert (= (and b!4719149 res!1996044) b!4719160))

(assert (= (and b!4719160 res!1996036) b!4719150))

(assert (= (and b!4719150 res!1996035) b!4719142))

(assert (= (and b!4719142 res!1996032) b!4719143))

(assert (= (and b!4719143 res!1996040) b!4719144))

(assert (= (and b!4719144 res!1996045) b!4719148))

(assert (= (and b!4719148 res!1996039) b!4719154))

(assert (= (and b!4719154 (not res!1996031)) b!4719158))

(assert (= (and b!4719158 (not res!1996037)) b!4719152))

(assert (= (and b!4719152 (not res!1996034)) b!4719146))

(assert (= (and b!4719146 (not res!1996038)) b!4719156))

(assert (= (and b!4719156 (not res!1996030)) b!4719159))

(assert (= start!480266 b!4719151))

(assert (= (and start!480266 (is-Cons!52804 oldBucket!34)) b!4719145))

(assert (= (and start!480266 (is-Cons!52804 newBucket!218)) b!4719147))

(declare-fun m!5651065 () Bool)

(assert (=> b!4719157 m!5651065))

(declare-fun m!5651067 () Bool)

(assert (=> start!480266 m!5651067))

(declare-fun m!5651069 () Bool)

(assert (=> start!480266 m!5651069))

(declare-fun m!5651071 () Bool)

(assert (=> b!4719144 m!5651071))

(declare-fun m!5651073 () Bool)

(assert (=> b!4719142 m!5651073))

(declare-fun m!5651075 () Bool)

(assert (=> b!4719158 m!5651075))

(declare-fun m!5651077 () Bool)

(assert (=> b!4719156 m!5651077))

(declare-fun m!5651079 () Bool)

(assert (=> b!4719154 m!5651079))

(declare-fun m!5651081 () Bool)

(assert (=> b!4719154 m!5651081))

(declare-fun m!5651083 () Bool)

(assert (=> b!4719154 m!5651083))

(declare-fun m!5651085 () Bool)

(assert (=> b!4719143 m!5651085))

(declare-fun m!5651087 () Bool)

(assert (=> b!4719160 m!5651087))

(declare-fun m!5651089 () Bool)

(assert (=> b!4719160 m!5651089))

(declare-fun m!5651091 () Bool)

(assert (=> b!4719155 m!5651091))

(declare-fun m!5651093 () Bool)

(assert (=> b!4719150 m!5651093))

(declare-fun m!5651095 () Bool)

(assert (=> b!4719149 m!5651095))

(declare-fun m!5651097 () Bool)

(assert (=> b!4719153 m!5651097))

(declare-fun m!5651099 () Bool)

(assert (=> b!4719159 m!5651099))

(declare-fun m!5651101 () Bool)

(assert (=> b!4719159 m!5651101))

(declare-fun m!5651103 () Bool)

(assert (=> b!4719146 m!5651103))

(declare-fun m!5651105 () Bool)

(assert (=> b!4719146 m!5651105))

(declare-fun m!5651107 () Bool)

(assert (=> b!4719152 m!5651107))

(declare-fun m!5651109 () Bool)

(assert (=> b!4719152 m!5651109))

(push 1)

(assert (not b!4719160))

(assert (not start!480266))

(assert (not b!4719144))

(assert tp_is_empty!31313)

(assert (not b!4719154))

(assert tp_is_empty!31315)

(assert (not b!4719146))

(assert (not b!4719150))

(assert (not b!4719157))

(assert (not b!4719143))

(assert (not b!4719153))

(assert (not b!4719147))

(assert (not b!4719156))

(assert (not b!4719151))

(assert (not b!4719155))

(assert (not b!4719159))

(assert (not b!4719145))

(assert (not b!4719149))

(assert (not b!4719152))

(assert (not b!4719142))

(assert (not b!4719158))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1106272 () Bool)

(declare-fun d!1501861 () Bool)

(assert (= bs!1106272 (and d!1501861 start!480266)))

(declare-fun lambda!214770 () Int)

(assert (=> bs!1106272 (= lambda!214770 lambda!214761)))

(declare-fun lt!1884380 () ListMap!5263)

(declare-fun invariantList!1502 (List!52928) Bool)

(assert (=> d!1501861 (invariantList!1502 (toList!5900 lt!1884380))))

(declare-fun e!2943147 () ListMap!5263)

(assert (=> d!1501861 (= lt!1884380 e!2943147)))

(declare-fun c!805922 () Bool)

(assert (=> d!1501861 (= c!805922 (is-Cons!52805 (Cons!52805 (tuple2!54417 hash!405 lt!1884366) (t!360185 (toList!5899 lm!2023)))))))

(assert (=> d!1501861 (forall!11567 (Cons!52805 (tuple2!54417 hash!405 lt!1884366) (t!360185 (toList!5899 lm!2023))) lambda!214770)))

(assert (=> d!1501861 (= (extractMap!2031 (Cons!52805 (tuple2!54417 hash!405 lt!1884366) (t!360185 (toList!5899 lm!2023)))) lt!1884380)))

(declare-fun b!4719238 () Bool)

(assert (=> b!4719238 (= e!2943147 (addToMapMapFromBucket!1435 (_2!30502 (h!59144 (Cons!52805 (tuple2!54417 hash!405 lt!1884366) (t!360185 (toList!5899 lm!2023))))) (extractMap!2031 (t!360185 (Cons!52805 (tuple2!54417 hash!405 lt!1884366) (t!360185 (toList!5899 lm!2023)))))))))

(declare-fun b!4719239 () Bool)

(assert (=> b!4719239 (= e!2943147 (ListMap!5264 Nil!52804))))

(assert (= (and d!1501861 c!805922) b!4719238))

(assert (= (and d!1501861 (not c!805922)) b!4719239))

(declare-fun m!5651171 () Bool)

(assert (=> d!1501861 m!5651171))

(declare-fun m!5651173 () Bool)

(assert (=> d!1501861 m!5651173))

(declare-fun m!5651175 () Bool)

(assert (=> b!4719238 m!5651175))

(assert (=> b!4719238 m!5651175))

(declare-fun m!5651177 () Bool)

(assert (=> b!4719238 m!5651177))

(assert (=> b!4719152 d!1501861))

(declare-fun bs!1106273 () Bool)

(declare-fun d!1501869 () Bool)

(assert (= bs!1106273 (and d!1501869 start!480266)))

(declare-fun lambda!214771 () Int)

(assert (=> bs!1106273 (= lambda!214771 lambda!214761)))

(declare-fun bs!1106274 () Bool)

(assert (= bs!1106274 (and d!1501869 d!1501861)))

(assert (=> bs!1106274 (= lambda!214771 lambda!214770)))

(declare-fun lt!1884381 () ListMap!5263)

(assert (=> d!1501869 (invariantList!1502 (toList!5900 lt!1884381))))

(declare-fun e!2943148 () ListMap!5263)

(assert (=> d!1501869 (= lt!1884381 e!2943148)))

(declare-fun c!805923 () Bool)

(assert (=> d!1501869 (= c!805923 (is-Cons!52805 (Cons!52805 (tuple2!54417 hash!405 newBucket!218) (t!360185 (toList!5899 lm!2023)))))))

(assert (=> d!1501869 (forall!11567 (Cons!52805 (tuple2!54417 hash!405 newBucket!218) (t!360185 (toList!5899 lm!2023))) lambda!214771)))

(assert (=> d!1501869 (= (extractMap!2031 (Cons!52805 (tuple2!54417 hash!405 newBucket!218) (t!360185 (toList!5899 lm!2023)))) lt!1884381)))

(declare-fun b!4719240 () Bool)

(assert (=> b!4719240 (= e!2943148 (addToMapMapFromBucket!1435 (_2!30502 (h!59144 (Cons!52805 (tuple2!54417 hash!405 newBucket!218) (t!360185 (toList!5899 lm!2023))))) (extractMap!2031 (t!360185 (Cons!52805 (tuple2!54417 hash!405 newBucket!218) (t!360185 (toList!5899 lm!2023)))))))))

(declare-fun b!4719241 () Bool)

(assert (=> b!4719241 (= e!2943148 (ListMap!5264 Nil!52804))))

(assert (= (and d!1501869 c!805923) b!4719240))

(assert (= (and d!1501869 (not c!805923)) b!4719241))

(declare-fun m!5651179 () Bool)

(assert (=> d!1501869 m!5651179))

(declare-fun m!5651181 () Bool)

(assert (=> d!1501869 m!5651181))

(declare-fun m!5651183 () Bool)

(assert (=> b!4719240 m!5651183))

(assert (=> b!4719240 m!5651183))

(declare-fun m!5651185 () Bool)

(assert (=> b!4719240 m!5651185))

(assert (=> b!4719152 d!1501869))

(declare-fun d!1501871 () Bool)

(assert (=> d!1501871 true))

(assert (=> d!1501871 true))

(declare-fun lambda!214774 () Int)

(declare-fun forall!11569 (List!52928 Int) Bool)

(assert (=> d!1501871 (= (allKeysSameHash!1831 newBucket!218 hash!405 hashF!1323) (forall!11569 newBucket!218 lambda!214774))))

(declare-fun bs!1106275 () Bool)

(assert (= bs!1106275 d!1501871))

(declare-fun m!5651187 () Bool)

(assert (=> bs!1106275 m!5651187))

(assert (=> b!4719142 d!1501871))

(declare-fun d!1501873 () Bool)

(declare-fun res!1996110 () Bool)

(declare-fun e!2943153 () Bool)

(assert (=> d!1501873 (=> res!1996110 e!2943153)))

(assert (=> d!1501873 (= res!1996110 (not (is-Cons!52804 newBucket!218)))))

(assert (=> d!1501873 (= (noDuplicateKeys!2005 newBucket!218) e!2943153)))

(declare-fun b!4719250 () Bool)

(declare-fun e!2943154 () Bool)

(assert (=> b!4719250 (= e!2943153 e!2943154)))

(declare-fun res!1996111 () Bool)

(assert (=> b!4719250 (=> (not res!1996111) (not e!2943154))))

(declare-fun containsKey!3352 (List!52928 K!14163) Bool)

(assert (=> b!4719250 (= res!1996111 (not (containsKey!3352 (t!360184 newBucket!218) (_1!30501 (h!59143 newBucket!218)))))))

(declare-fun b!4719251 () Bool)

(assert (=> b!4719251 (= e!2943154 (noDuplicateKeys!2005 (t!360184 newBucket!218)))))

(assert (= (and d!1501873 (not res!1996110)) b!4719250))

(assert (= (and b!4719250 res!1996111) b!4719251))

(declare-fun m!5651189 () Bool)

(assert (=> b!4719250 m!5651189))

(declare-fun m!5651191 () Bool)

(assert (=> b!4719251 m!5651191))

(assert (=> b!4719153 d!1501873))

(declare-fun d!1501875 () Bool)

(declare-fun res!1996116 () Bool)

(declare-fun e!2943159 () Bool)

(assert (=> d!1501875 (=> res!1996116 e!2943159)))

(assert (=> d!1501875 (= res!1996116 (is-Nil!52805 (toList!5899 lm!2023)))))

(assert (=> d!1501875 (= (forall!11567 (toList!5899 lm!2023) lambda!214761) e!2943159)))

(declare-fun b!4719256 () Bool)

(declare-fun e!2943160 () Bool)

(assert (=> b!4719256 (= e!2943159 e!2943160)))

(declare-fun res!1996117 () Bool)

(assert (=> b!4719256 (=> (not res!1996117) (not e!2943160))))

(declare-fun dynLambda!21807 (Int tuple2!54416) Bool)

(assert (=> b!4719256 (= res!1996117 (dynLambda!21807 lambda!214761 (h!59144 (toList!5899 lm!2023))))))

(declare-fun b!4719257 () Bool)

(assert (=> b!4719257 (= e!2943160 (forall!11567 (t!360185 (toList!5899 lm!2023)) lambda!214761))))

(assert (= (and d!1501875 (not res!1996116)) b!4719256))

(assert (= (and b!4719256 res!1996117) b!4719257))

(declare-fun b_lambda!177887 () Bool)

(assert (=> (not b_lambda!177887) (not b!4719256)))

(declare-fun m!5651193 () Bool)

(assert (=> b!4719256 m!5651193))

(declare-fun m!5651195 () Bool)

(assert (=> b!4719257 m!5651195))

(assert (=> start!480266 d!1501875))

(declare-fun d!1501877 () Bool)

(declare-fun isStrictlySorted!741 (List!52929) Bool)

(assert (=> d!1501877 (= (inv!68038 lm!2023) (isStrictlySorted!741 (toList!5899 lm!2023)))))

(declare-fun bs!1106276 () Bool)

(assert (= bs!1106276 d!1501877))

(declare-fun m!5651197 () Bool)

(assert (=> bs!1106276 m!5651197))

(assert (=> start!480266 d!1501877))

(declare-fun bs!1106277 () Bool)

(declare-fun d!1501879 () Bool)

(assert (= bs!1106277 (and d!1501879 start!480266)))

(declare-fun lambda!214777 () Int)

(assert (=> bs!1106277 (not (= lambda!214777 lambda!214761))))

(declare-fun bs!1106278 () Bool)

(assert (= bs!1106278 (and d!1501879 d!1501861)))

(assert (=> bs!1106278 (not (= lambda!214777 lambda!214770))))

(declare-fun bs!1106279 () Bool)

(assert (= bs!1106279 (and d!1501879 d!1501869)))

(assert (=> bs!1106279 (not (= lambda!214777 lambda!214771))))

(assert (=> d!1501879 true))

(assert (=> d!1501879 (= (allKeysSameHashInMap!1919 lm!2023 hashF!1323) (forall!11567 (toList!5899 lm!2023) lambda!214777))))

(declare-fun bs!1106280 () Bool)

(assert (= bs!1106280 d!1501879))

(declare-fun m!5651199 () Bool)

(assert (=> bs!1106280 m!5651199))

(assert (=> b!4719143 d!1501879))

(declare-fun bs!1106282 () Bool)

(declare-fun b!4719321 () Bool)

(assert (= bs!1106282 (and b!4719321 d!1501871)))

(declare-fun lambda!214809 () Int)

(assert (=> bs!1106282 (not (= lambda!214809 lambda!214774))))

(assert (=> b!4719321 true))

(declare-fun bs!1106283 () Bool)

(declare-fun b!4719317 () Bool)

(assert (= bs!1106283 (and b!4719317 d!1501871)))

(declare-fun lambda!214810 () Int)

(assert (=> bs!1106283 (not (= lambda!214810 lambda!214774))))

(declare-fun bs!1106284 () Bool)

(assert (= bs!1106284 (and b!4719317 b!4719321)))

(assert (=> bs!1106284 (= lambda!214810 lambda!214809)))

(assert (=> b!4719317 true))

(declare-fun lambda!214811 () Int)

(assert (=> bs!1106283 (not (= lambda!214811 lambda!214774))))

(declare-fun lt!1884472 () ListMap!5263)

(assert (=> bs!1106284 (= (= lt!1884472 lt!1884367) (= lambda!214811 lambda!214809))))

(assert (=> b!4719317 (= (= lt!1884472 lt!1884367) (= lambda!214811 lambda!214810))))

(assert (=> b!4719317 true))

(declare-fun bs!1106285 () Bool)

(declare-fun d!1501881 () Bool)

(assert (= bs!1106285 (and d!1501881 d!1501871)))

(declare-fun lambda!214812 () Int)

(assert (=> bs!1106285 (not (= lambda!214812 lambda!214774))))

(declare-fun bs!1106286 () Bool)

(assert (= bs!1106286 (and d!1501881 b!4719321)))

(declare-fun lt!1884465 () ListMap!5263)

(assert (=> bs!1106286 (= (= lt!1884465 lt!1884367) (= lambda!214812 lambda!214809))))

(declare-fun bs!1106287 () Bool)

(assert (= bs!1106287 (and d!1501881 b!4719317)))

(assert (=> bs!1106287 (= (= lt!1884465 lt!1884367) (= lambda!214812 lambda!214810))))

(assert (=> bs!1106287 (= (= lt!1884465 lt!1884472) (= lambda!214812 lambda!214811))))

(assert (=> d!1501881 true))

(declare-fun e!2943197 () ListMap!5263)

(assert (=> b!4719317 (= e!2943197 lt!1884472)))

(declare-fun lt!1884471 () ListMap!5263)

(declare-fun +!2260 (ListMap!5263 tuple2!54414) ListMap!5263)

(assert (=> b!4719317 (= lt!1884471 (+!2260 lt!1884367 (h!59143 (_2!30502 (h!59144 (toList!5899 lm!2023))))))))

(assert (=> b!4719317 (= lt!1884472 (addToMapMapFromBucket!1435 (t!360184 (_2!30502 (h!59144 (toList!5899 lm!2023)))) (+!2260 lt!1884367 (h!59143 (_2!30502 (h!59144 (toList!5899 lm!2023)))))))))

(declare-datatypes ((Unit!129176 0))(
  ( (Unit!129177) )
))
(declare-fun lt!1884457 () Unit!129176)

(declare-fun call!329917 () Unit!129176)

(assert (=> b!4719317 (= lt!1884457 call!329917)))

(assert (=> b!4719317 (forall!11569 (toList!5900 lt!1884367) lambda!214810)))

(declare-fun lt!1884467 () Unit!129176)

(assert (=> b!4719317 (= lt!1884467 lt!1884457)))

(assert (=> b!4719317 (forall!11569 (toList!5900 lt!1884471) lambda!214811)))

(declare-fun lt!1884468 () Unit!129176)

(declare-fun Unit!129178 () Unit!129176)

(assert (=> b!4719317 (= lt!1884468 Unit!129178)))

(assert (=> b!4719317 (forall!11569 (t!360184 (_2!30502 (h!59144 (toList!5899 lm!2023)))) lambda!214811)))

(declare-fun lt!1884460 () Unit!129176)

(declare-fun Unit!129179 () Unit!129176)

(assert (=> b!4719317 (= lt!1884460 Unit!129179)))

(declare-fun lt!1884458 () Unit!129176)

(declare-fun Unit!129180 () Unit!129176)

(assert (=> b!4719317 (= lt!1884458 Unit!129180)))

(declare-fun lt!1884462 () Unit!129176)

(declare-fun forallContained!3626 (List!52928 Int tuple2!54414) Unit!129176)

(assert (=> b!4719317 (= lt!1884462 (forallContained!3626 (toList!5900 lt!1884471) lambda!214811 (h!59143 (_2!30502 (h!59144 (toList!5899 lm!2023))))))))

(assert (=> b!4719317 (contains!16151 lt!1884471 (_1!30501 (h!59143 (_2!30502 (h!59144 (toList!5899 lm!2023))))))))

(declare-fun lt!1884463 () Unit!129176)

(declare-fun Unit!129181 () Unit!129176)

(assert (=> b!4719317 (= lt!1884463 Unit!129181)))

(assert (=> b!4719317 (contains!16151 lt!1884472 (_1!30501 (h!59143 (_2!30502 (h!59144 (toList!5899 lm!2023))))))))

(declare-fun lt!1884469 () Unit!129176)

(declare-fun Unit!129182 () Unit!129176)

(assert (=> b!4719317 (= lt!1884469 Unit!129182)))

(assert (=> b!4719317 (forall!11569 (_2!30502 (h!59144 (toList!5899 lm!2023))) lambda!214811)))

(declare-fun lt!1884461 () Unit!129176)

(declare-fun Unit!129183 () Unit!129176)

(assert (=> b!4719317 (= lt!1884461 Unit!129183)))

(assert (=> b!4719317 (forall!11569 (toList!5900 lt!1884471) lambda!214811)))

(declare-fun lt!1884456 () Unit!129176)

(declare-fun Unit!129184 () Unit!129176)

(assert (=> b!4719317 (= lt!1884456 Unit!129184)))

(declare-fun lt!1884455 () Unit!129176)

(declare-fun Unit!129185 () Unit!129176)

(assert (=> b!4719317 (= lt!1884455 Unit!129185)))

(declare-fun lt!1884466 () Unit!129176)

(declare-fun addForallContainsKeyThenBeforeAdding!787 (ListMap!5263 ListMap!5263 K!14163 V!14409) Unit!129176)

(assert (=> b!4719317 (= lt!1884466 (addForallContainsKeyThenBeforeAdding!787 lt!1884367 lt!1884472 (_1!30501 (h!59143 (_2!30502 (h!59144 (toList!5899 lm!2023))))) (_2!30501 (h!59143 (_2!30502 (h!59144 (toList!5899 lm!2023)))))))))

(assert (=> b!4719317 (forall!11569 (toList!5900 lt!1884367) lambda!214811)))

(declare-fun lt!1884474 () Unit!129176)

(assert (=> b!4719317 (= lt!1884474 lt!1884466)))

(declare-fun call!329915 () Bool)

(assert (=> b!4719317 call!329915))

(declare-fun lt!1884459 () Unit!129176)

(declare-fun Unit!129186 () Unit!129176)

(assert (=> b!4719317 (= lt!1884459 Unit!129186)))

(declare-fun res!1996137 () Bool)

(declare-fun call!329916 () Bool)

(assert (=> b!4719317 (= res!1996137 call!329916)))

(declare-fun e!2943196 () Bool)

(assert (=> b!4719317 (=> (not res!1996137) (not e!2943196))))

(assert (=> b!4719317 e!2943196))

(declare-fun lt!1884454 () Unit!129176)

(declare-fun Unit!129187 () Unit!129176)

(assert (=> b!4719317 (= lt!1884454 Unit!129187)))

(declare-fun c!805944 () Bool)

(declare-fun bm!329910 () Bool)

(assert (=> bm!329910 (= call!329916 (forall!11569 (ite c!805944 (toList!5900 lt!1884367) (_2!30502 (h!59144 (toList!5899 lm!2023)))) (ite c!805944 lambda!214809 lambda!214811)))))

(declare-fun b!4719318 () Bool)

(assert (=> b!4719318 (= e!2943196 (forall!11569 (toList!5900 lt!1884367) lambda!214811))))

(declare-fun bm!329911 () Bool)

(assert (=> bm!329911 (= call!329915 (forall!11569 (toList!5900 lt!1884367) (ite c!805944 lambda!214809 lambda!214811)))))

(declare-fun b!4719319 () Bool)

(declare-fun res!1996136 () Bool)

(declare-fun e!2943198 () Bool)

(assert (=> b!4719319 (=> (not res!1996136) (not e!2943198))))

(assert (=> b!4719319 (= res!1996136 (forall!11569 (toList!5900 lt!1884367) lambda!214812))))

(declare-fun bm!329912 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!788 (ListMap!5263) Unit!129176)

(assert (=> bm!329912 (= call!329917 (lemmaContainsAllItsOwnKeys!788 lt!1884367))))

(declare-fun b!4719320 () Bool)

(assert (=> b!4719320 (= e!2943198 (invariantList!1502 (toList!5900 lt!1884465)))))

(assert (=> b!4719321 (= e!2943197 lt!1884367)))

(declare-fun lt!1884473 () Unit!129176)

(assert (=> b!4719321 (= lt!1884473 call!329917)))

(assert (=> b!4719321 call!329916))

(declare-fun lt!1884464 () Unit!129176)

(assert (=> b!4719321 (= lt!1884464 lt!1884473)))

(assert (=> b!4719321 call!329915))

(declare-fun lt!1884470 () Unit!129176)

(declare-fun Unit!129188 () Unit!129176)

(assert (=> b!4719321 (= lt!1884470 Unit!129188)))

(assert (=> d!1501881 e!2943198))

(declare-fun res!1996135 () Bool)

(assert (=> d!1501881 (=> (not res!1996135) (not e!2943198))))

(assert (=> d!1501881 (= res!1996135 (forall!11569 (_2!30502 (h!59144 (toList!5899 lm!2023))) lambda!214812))))

(assert (=> d!1501881 (= lt!1884465 e!2943197)))

(assert (=> d!1501881 (= c!805944 (is-Nil!52804 (_2!30502 (h!59144 (toList!5899 lm!2023)))))))

(assert (=> d!1501881 (noDuplicateKeys!2005 (_2!30502 (h!59144 (toList!5899 lm!2023))))))

(assert (=> d!1501881 (= (addToMapMapFromBucket!1435 (_2!30502 (h!59144 (toList!5899 lm!2023))) lt!1884367) lt!1884465)))

(assert (= (and d!1501881 c!805944) b!4719321))

(assert (= (and d!1501881 (not c!805944)) b!4719317))

(assert (= (and b!4719317 res!1996137) b!4719318))

(assert (= (or b!4719321 b!4719317) bm!329912))

(assert (= (or b!4719321 b!4719317) bm!329911))

(assert (= (or b!4719321 b!4719317) bm!329910))

(assert (= (and d!1501881 res!1996135) b!4719319))

(assert (= (and b!4719319 res!1996136) b!4719320))

(declare-fun m!5651235 () Bool)

(assert (=> bm!329912 m!5651235))

(declare-fun m!5651237 () Bool)

(assert (=> d!1501881 m!5651237))

(declare-fun m!5651239 () Bool)

(assert (=> d!1501881 m!5651239))

(declare-fun m!5651241 () Bool)

(assert (=> b!4719318 m!5651241))

(declare-fun m!5651243 () Bool)

(assert (=> b!4719320 m!5651243))

(declare-fun m!5651245 () Bool)

(assert (=> b!4719317 m!5651245))

(declare-fun m!5651247 () Bool)

(assert (=> b!4719317 m!5651247))

(declare-fun m!5651249 () Bool)

(assert (=> b!4719317 m!5651249))

(declare-fun m!5651251 () Bool)

(assert (=> b!4719317 m!5651251))

(declare-fun m!5651253 () Bool)

(assert (=> b!4719317 m!5651253))

(declare-fun m!5651255 () Bool)

(assert (=> b!4719317 m!5651255))

(declare-fun m!5651257 () Bool)

(assert (=> b!4719317 m!5651257))

(declare-fun m!5651259 () Bool)

(assert (=> b!4719317 m!5651259))

(assert (=> b!4719317 m!5651241))

(assert (=> b!4719317 m!5651245))

(declare-fun m!5651261 () Bool)

(assert (=> b!4719317 m!5651261))

(assert (=> b!4719317 m!5651259))

(declare-fun m!5651263 () Bool)

(assert (=> b!4719317 m!5651263))

(declare-fun m!5651265 () Bool)

(assert (=> bm!329911 m!5651265))

(declare-fun m!5651267 () Bool)

(assert (=> bm!329910 m!5651267))

(declare-fun m!5651269 () Bool)

(assert (=> b!4719319 m!5651269))

(assert (=> b!4719154 d!1501881))

(declare-fun bs!1106288 () Bool)

(declare-fun d!1501895 () Bool)

(assert (= bs!1106288 (and d!1501895 start!480266)))

(declare-fun lambda!214813 () Int)

(assert (=> bs!1106288 (= lambda!214813 lambda!214761)))

(declare-fun bs!1106289 () Bool)

(assert (= bs!1106289 (and d!1501895 d!1501861)))

(assert (=> bs!1106289 (= lambda!214813 lambda!214770)))

(declare-fun bs!1106290 () Bool)

(assert (= bs!1106290 (and d!1501895 d!1501869)))

(assert (=> bs!1106290 (= lambda!214813 lambda!214771)))

(declare-fun bs!1106291 () Bool)

(assert (= bs!1106291 (and d!1501895 d!1501879)))

(assert (=> bs!1106291 (not (= lambda!214813 lambda!214777))))

(declare-fun lt!1884475 () ListMap!5263)

(assert (=> d!1501895 (invariantList!1502 (toList!5900 lt!1884475))))

(declare-fun e!2943199 () ListMap!5263)

(assert (=> d!1501895 (= lt!1884475 e!2943199)))

(declare-fun c!805945 () Bool)

(assert (=> d!1501895 (= c!805945 (is-Cons!52805 (t!360185 (toList!5899 lm!2023))))))

(assert (=> d!1501895 (forall!11567 (t!360185 (toList!5899 lm!2023)) lambda!214813)))

(assert (=> d!1501895 (= (extractMap!2031 (t!360185 (toList!5899 lm!2023))) lt!1884475)))

(declare-fun b!4719324 () Bool)

(assert (=> b!4719324 (= e!2943199 (addToMapMapFromBucket!1435 (_2!30502 (h!59144 (t!360185 (toList!5899 lm!2023)))) (extractMap!2031 (t!360185 (t!360185 (toList!5899 lm!2023))))))))

(declare-fun b!4719325 () Bool)

(assert (=> b!4719325 (= e!2943199 (ListMap!5264 Nil!52804))))

(assert (= (and d!1501895 c!805945) b!4719324))

(assert (= (and d!1501895 (not c!805945)) b!4719325))

(declare-fun m!5651271 () Bool)

(assert (=> d!1501895 m!5651271))

(declare-fun m!5651273 () Bool)

(assert (=> d!1501895 m!5651273))

(declare-fun m!5651275 () Bool)

(assert (=> b!4719324 m!5651275))

(assert (=> b!4719324 m!5651275))

(declare-fun m!5651277 () Bool)

(assert (=> b!4719324 m!5651277))

(assert (=> b!4719154 d!1501895))

(declare-fun d!1501897 () Bool)

(declare-fun tail!8980 (List!52929) List!52929)

(assert (=> d!1501897 (= (tail!8976 lm!2023) (ListLongMap!4430 (tail!8980 (toList!5899 lm!2023))))))

(declare-fun bs!1106292 () Bool)

(assert (= bs!1106292 d!1501897))

(declare-fun m!5651279 () Bool)

(assert (=> bs!1106292 m!5651279))

(assert (=> b!4719154 d!1501897))

(declare-fun d!1501899 () Bool)

(assert (=> d!1501899 (= (head!10231 (toList!5899 lm!2023)) (h!59144 (toList!5899 lm!2023)))))

(assert (=> b!4719144 d!1501899))

(declare-fun d!1501901 () Bool)

(declare-fun res!1996138 () Bool)

(declare-fun e!2943200 () Bool)

(assert (=> d!1501901 (=> res!1996138 e!2943200)))

(assert (=> d!1501901 (= res!1996138 (not (is-Cons!52804 oldBucket!34)))))

(assert (=> d!1501901 (= (noDuplicateKeys!2005 oldBucket!34) e!2943200)))

(declare-fun b!4719326 () Bool)

(declare-fun e!2943201 () Bool)

(assert (=> b!4719326 (= e!2943200 e!2943201)))

(declare-fun res!1996139 () Bool)

(assert (=> b!4719326 (=> (not res!1996139) (not e!2943201))))

(assert (=> b!4719326 (= res!1996139 (not (containsKey!3352 (t!360184 oldBucket!34) (_1!30501 (h!59143 oldBucket!34)))))))

(declare-fun b!4719327 () Bool)

(assert (=> b!4719327 (= e!2943201 (noDuplicateKeys!2005 (t!360184 oldBucket!34)))))

(assert (= (and d!1501901 (not res!1996138)) b!4719326))

(assert (= (and b!4719326 res!1996139) b!4719327))

(declare-fun m!5651281 () Bool)

(assert (=> b!4719326 m!5651281))

(declare-fun m!5651283 () Bool)

(assert (=> b!4719327 m!5651283))

(assert (=> b!4719155 d!1501901))

(declare-fun d!1501903 () Bool)

(declare-fun res!1996140 () Bool)

(declare-fun e!2943202 () Bool)

(assert (=> d!1501903 (=> res!1996140 e!2943202)))

(assert (=> d!1501903 (= res!1996140 (not (is-Cons!52804 lt!1884366)))))

(assert (=> d!1501903 (= (noDuplicateKeys!2005 lt!1884366) e!2943202)))

(declare-fun b!4719328 () Bool)

(declare-fun e!2943203 () Bool)

(assert (=> b!4719328 (= e!2943202 e!2943203)))

(declare-fun res!1996141 () Bool)

(assert (=> b!4719328 (=> (not res!1996141) (not e!2943203))))

(assert (=> b!4719328 (= res!1996141 (not (containsKey!3352 (t!360184 lt!1884366) (_1!30501 (h!59143 lt!1884366)))))))

(declare-fun b!4719329 () Bool)

(assert (=> b!4719329 (= e!2943203 (noDuplicateKeys!2005 (t!360184 lt!1884366)))))

(assert (= (and d!1501903 (not res!1996140)) b!4719328))

(assert (= (and b!4719328 res!1996141) b!4719329))

(declare-fun m!5651285 () Bool)

(assert (=> b!4719328 m!5651285))

(declare-fun m!5651287 () Bool)

(assert (=> b!4719329 m!5651287))

(assert (=> b!4719156 d!1501903))

(declare-fun bs!1106293 () Bool)

(declare-fun b!4719334 () Bool)

(assert (= bs!1106293 (and b!4719334 d!1501871)))

(declare-fun lambda!214814 () Int)

(assert (=> bs!1106293 (not (= lambda!214814 lambda!214774))))

(declare-fun bs!1106294 () Bool)

(assert (= bs!1106294 (and b!4719334 d!1501881)))

(assert (=> bs!1106294 (= (= lt!1884367 lt!1884465) (= lambda!214814 lambda!214812))))

(declare-fun bs!1106295 () Bool)

(assert (= bs!1106295 (and b!4719334 b!4719317)))

(assert (=> bs!1106295 (= (= lt!1884367 lt!1884472) (= lambda!214814 lambda!214811))))

(assert (=> bs!1106295 (= lambda!214814 lambda!214810)))

(declare-fun bs!1106296 () Bool)

(assert (= bs!1106296 (and b!4719334 b!4719321)))

(assert (=> bs!1106296 (= lambda!214814 lambda!214809)))

(assert (=> b!4719334 true))

(declare-fun bs!1106297 () Bool)

(declare-fun b!4719330 () Bool)

(assert (= bs!1106297 (and b!4719330 d!1501871)))

(declare-fun lambda!214815 () Int)

(assert (=> bs!1106297 (not (= lambda!214815 lambda!214774))))

(declare-fun bs!1106298 () Bool)

(assert (= bs!1106298 (and b!4719330 b!4719334)))

(assert (=> bs!1106298 (= lambda!214815 lambda!214814)))

(declare-fun bs!1106299 () Bool)

(assert (= bs!1106299 (and b!4719330 d!1501881)))

(assert (=> bs!1106299 (= (= lt!1884367 lt!1884465) (= lambda!214815 lambda!214812))))

(declare-fun bs!1106300 () Bool)

(assert (= bs!1106300 (and b!4719330 b!4719317)))

(assert (=> bs!1106300 (= (= lt!1884367 lt!1884472) (= lambda!214815 lambda!214811))))

(assert (=> bs!1106300 (= lambda!214815 lambda!214810)))

(declare-fun bs!1106301 () Bool)

(assert (= bs!1106301 (and b!4719330 b!4719321)))

(assert (=> bs!1106301 (= lambda!214815 lambda!214809)))

(assert (=> b!4719330 true))

(declare-fun lambda!214816 () Int)

(assert (=> bs!1106297 (not (= lambda!214816 lambda!214774))))

(declare-fun lt!1884494 () ListMap!5263)

(assert (=> bs!1106298 (= (= lt!1884494 lt!1884367) (= lambda!214816 lambda!214814))))

(assert (=> bs!1106299 (= (= lt!1884494 lt!1884465) (= lambda!214816 lambda!214812))))

(assert (=> bs!1106300 (= (= lt!1884494 lt!1884472) (= lambda!214816 lambda!214811))))

(assert (=> bs!1106300 (= (= lt!1884494 lt!1884367) (= lambda!214816 lambda!214810))))

(assert (=> bs!1106301 (= (= lt!1884494 lt!1884367) (= lambda!214816 lambda!214809))))

(assert (=> b!4719330 (= (= lt!1884494 lt!1884367) (= lambda!214816 lambda!214815))))

(assert (=> b!4719330 true))

(declare-fun bs!1106302 () Bool)

(declare-fun d!1501905 () Bool)

(assert (= bs!1106302 (and d!1501905 d!1501871)))

(declare-fun lambda!214817 () Int)

(assert (=> bs!1106302 (not (= lambda!214817 lambda!214774))))

(declare-fun bs!1106303 () Bool)

(assert (= bs!1106303 (and d!1501905 b!4719334)))

(declare-fun lt!1884487 () ListMap!5263)

(assert (=> bs!1106303 (= (= lt!1884487 lt!1884367) (= lambda!214817 lambda!214814))))

(declare-fun bs!1106304 () Bool)

(assert (= bs!1106304 (and d!1501905 d!1501881)))

(assert (=> bs!1106304 (= (= lt!1884487 lt!1884465) (= lambda!214817 lambda!214812))))

(declare-fun bs!1106305 () Bool)

(assert (= bs!1106305 (and d!1501905 b!4719317)))

(assert (=> bs!1106305 (= (= lt!1884487 lt!1884367) (= lambda!214817 lambda!214810))))

(declare-fun bs!1106306 () Bool)

(assert (= bs!1106306 (and d!1501905 b!4719321)))

(assert (=> bs!1106306 (= (= lt!1884487 lt!1884367) (= lambda!214817 lambda!214809))))

(declare-fun bs!1106307 () Bool)

(assert (= bs!1106307 (and d!1501905 b!4719330)))

(assert (=> bs!1106307 (= (= lt!1884487 lt!1884367) (= lambda!214817 lambda!214815))))

(assert (=> bs!1106305 (= (= lt!1884487 lt!1884472) (= lambda!214817 lambda!214811))))

(assert (=> bs!1106307 (= (= lt!1884487 lt!1884494) (= lambda!214817 lambda!214816))))

(assert (=> d!1501905 true))

(declare-fun e!2943205 () ListMap!5263)

(assert (=> b!4719330 (= e!2943205 lt!1884494)))

(declare-fun lt!1884493 () ListMap!5263)

(assert (=> b!4719330 (= lt!1884493 (+!2260 lt!1884367 (h!59143 lt!1884366)))))

(assert (=> b!4719330 (= lt!1884494 (addToMapMapFromBucket!1435 (t!360184 lt!1884366) (+!2260 lt!1884367 (h!59143 lt!1884366))))))

(declare-fun lt!1884479 () Unit!129176)

(declare-fun call!329920 () Unit!129176)

(assert (=> b!4719330 (= lt!1884479 call!329920)))

(assert (=> b!4719330 (forall!11569 (toList!5900 lt!1884367) lambda!214815)))

(declare-fun lt!1884489 () Unit!129176)

(assert (=> b!4719330 (= lt!1884489 lt!1884479)))

(assert (=> b!4719330 (forall!11569 (toList!5900 lt!1884493) lambda!214816)))

(declare-fun lt!1884490 () Unit!129176)

(declare-fun Unit!129189 () Unit!129176)

(assert (=> b!4719330 (= lt!1884490 Unit!129189)))

(assert (=> b!4719330 (forall!11569 (t!360184 lt!1884366) lambda!214816)))

(declare-fun lt!1884482 () Unit!129176)

(declare-fun Unit!129190 () Unit!129176)

(assert (=> b!4719330 (= lt!1884482 Unit!129190)))

(declare-fun lt!1884480 () Unit!129176)

(declare-fun Unit!129191 () Unit!129176)

(assert (=> b!4719330 (= lt!1884480 Unit!129191)))

(declare-fun lt!1884484 () Unit!129176)

(assert (=> b!4719330 (= lt!1884484 (forallContained!3626 (toList!5900 lt!1884493) lambda!214816 (h!59143 lt!1884366)))))

(assert (=> b!4719330 (contains!16151 lt!1884493 (_1!30501 (h!59143 lt!1884366)))))

(declare-fun lt!1884485 () Unit!129176)

(declare-fun Unit!129192 () Unit!129176)

(assert (=> b!4719330 (= lt!1884485 Unit!129192)))

(assert (=> b!4719330 (contains!16151 lt!1884494 (_1!30501 (h!59143 lt!1884366)))))

(declare-fun lt!1884491 () Unit!129176)

(declare-fun Unit!129193 () Unit!129176)

(assert (=> b!4719330 (= lt!1884491 Unit!129193)))

(assert (=> b!4719330 (forall!11569 lt!1884366 lambda!214816)))

(declare-fun lt!1884483 () Unit!129176)

(declare-fun Unit!129194 () Unit!129176)

(assert (=> b!4719330 (= lt!1884483 Unit!129194)))

(assert (=> b!4719330 (forall!11569 (toList!5900 lt!1884493) lambda!214816)))

(declare-fun lt!1884478 () Unit!129176)

(declare-fun Unit!129195 () Unit!129176)

(assert (=> b!4719330 (= lt!1884478 Unit!129195)))

(declare-fun lt!1884477 () Unit!129176)

(declare-fun Unit!129196 () Unit!129176)

(assert (=> b!4719330 (= lt!1884477 Unit!129196)))

(declare-fun lt!1884488 () Unit!129176)

(assert (=> b!4719330 (= lt!1884488 (addForallContainsKeyThenBeforeAdding!787 lt!1884367 lt!1884494 (_1!30501 (h!59143 lt!1884366)) (_2!30501 (h!59143 lt!1884366))))))

(assert (=> b!4719330 (forall!11569 (toList!5900 lt!1884367) lambda!214816)))

(declare-fun lt!1884496 () Unit!129176)

(assert (=> b!4719330 (= lt!1884496 lt!1884488)))

(declare-fun call!329918 () Bool)

(assert (=> b!4719330 call!329918))

(declare-fun lt!1884481 () Unit!129176)

(declare-fun Unit!129197 () Unit!129176)

(assert (=> b!4719330 (= lt!1884481 Unit!129197)))

(declare-fun res!1996144 () Bool)

(declare-fun call!329919 () Bool)

(assert (=> b!4719330 (= res!1996144 call!329919)))

(declare-fun e!2943204 () Bool)

(assert (=> b!4719330 (=> (not res!1996144) (not e!2943204))))

(assert (=> b!4719330 e!2943204))

(declare-fun lt!1884476 () Unit!129176)

(declare-fun Unit!129198 () Unit!129176)

(assert (=> b!4719330 (= lt!1884476 Unit!129198)))

(declare-fun bm!329913 () Bool)

(declare-fun c!805946 () Bool)

(assert (=> bm!329913 (= call!329919 (forall!11569 (ite c!805946 (toList!5900 lt!1884367) lt!1884366) (ite c!805946 lambda!214814 lambda!214816)))))

(declare-fun b!4719331 () Bool)

(assert (=> b!4719331 (= e!2943204 (forall!11569 (toList!5900 lt!1884367) lambda!214816))))

(declare-fun bm!329914 () Bool)

(assert (=> bm!329914 (= call!329918 (forall!11569 (toList!5900 lt!1884367) (ite c!805946 lambda!214814 lambda!214816)))))

(declare-fun b!4719332 () Bool)

(declare-fun res!1996143 () Bool)

(declare-fun e!2943206 () Bool)

(assert (=> b!4719332 (=> (not res!1996143) (not e!2943206))))

(assert (=> b!4719332 (= res!1996143 (forall!11569 (toList!5900 lt!1884367) lambda!214817))))

(declare-fun bm!329915 () Bool)

(assert (=> bm!329915 (= call!329920 (lemmaContainsAllItsOwnKeys!788 lt!1884367))))

(declare-fun b!4719333 () Bool)

(assert (=> b!4719333 (= e!2943206 (invariantList!1502 (toList!5900 lt!1884487)))))

(assert (=> b!4719334 (= e!2943205 lt!1884367)))

(declare-fun lt!1884495 () Unit!129176)

(assert (=> b!4719334 (= lt!1884495 call!329920)))

(assert (=> b!4719334 call!329919))

(declare-fun lt!1884486 () Unit!129176)

(assert (=> b!4719334 (= lt!1884486 lt!1884495)))

(assert (=> b!4719334 call!329918))

(declare-fun lt!1884492 () Unit!129176)

(declare-fun Unit!129199 () Unit!129176)

(assert (=> b!4719334 (= lt!1884492 Unit!129199)))

(assert (=> d!1501905 e!2943206))

(declare-fun res!1996142 () Bool)

(assert (=> d!1501905 (=> (not res!1996142) (not e!2943206))))

(assert (=> d!1501905 (= res!1996142 (forall!11569 lt!1884366 lambda!214817))))

(assert (=> d!1501905 (= lt!1884487 e!2943205)))

(assert (=> d!1501905 (= c!805946 (is-Nil!52804 lt!1884366))))

(assert (=> d!1501905 (noDuplicateKeys!2005 lt!1884366)))

(assert (=> d!1501905 (= (addToMapMapFromBucket!1435 lt!1884366 lt!1884367) lt!1884487)))

(assert (= (and d!1501905 c!805946) b!4719334))

(assert (= (and d!1501905 (not c!805946)) b!4719330))

(assert (= (and b!4719330 res!1996144) b!4719331))

(assert (= (or b!4719334 b!4719330) bm!329915))

(assert (= (or b!4719334 b!4719330) bm!329914))

(assert (= (or b!4719334 b!4719330) bm!329913))

(assert (= (and d!1501905 res!1996142) b!4719332))

(assert (= (and b!4719332 res!1996143) b!4719333))

(assert (=> bm!329915 m!5651235))

(declare-fun m!5651289 () Bool)

(assert (=> d!1501905 m!5651289))

(assert (=> d!1501905 m!5651077))

(declare-fun m!5651291 () Bool)

(assert (=> b!4719331 m!5651291))

(declare-fun m!5651293 () Bool)

(assert (=> b!4719333 m!5651293))

(declare-fun m!5651295 () Bool)

(assert (=> b!4719330 m!5651295))

(declare-fun m!5651297 () Bool)

(assert (=> b!4719330 m!5651297))

(declare-fun m!5651299 () Bool)

(assert (=> b!4719330 m!5651299))

(declare-fun m!5651301 () Bool)

(assert (=> b!4719330 m!5651301))

(declare-fun m!5651303 () Bool)

(assert (=> b!4719330 m!5651303))

(declare-fun m!5651305 () Bool)

(assert (=> b!4719330 m!5651305))

(declare-fun m!5651307 () Bool)

(assert (=> b!4719330 m!5651307))

(declare-fun m!5651309 () Bool)

(assert (=> b!4719330 m!5651309))

(assert (=> b!4719330 m!5651291))

(assert (=> b!4719330 m!5651295))

(declare-fun m!5651311 () Bool)

(assert (=> b!4719330 m!5651311))

(assert (=> b!4719330 m!5651309))

(declare-fun m!5651313 () Bool)

(assert (=> b!4719330 m!5651313))

(declare-fun m!5651315 () Bool)

(assert (=> bm!329914 m!5651315))

(declare-fun m!5651317 () Bool)

(assert (=> bm!329913 m!5651317))

(declare-fun m!5651319 () Bool)

(assert (=> b!4719332 m!5651319))

(assert (=> b!4719146 d!1501905))

(declare-fun bs!1106308 () Bool)

(declare-fun b!4719339 () Bool)

(assert (= bs!1106308 (and b!4719339 d!1501871)))

(declare-fun lambda!214818 () Int)

(assert (=> bs!1106308 (not (= lambda!214818 lambda!214774))))

(declare-fun bs!1106309 () Bool)

(assert (= bs!1106309 (and b!4719339 b!4719334)))

(assert (=> bs!1106309 (= lambda!214818 lambda!214814)))

(declare-fun bs!1106310 () Bool)

(assert (= bs!1106310 (and b!4719339 d!1501881)))

(assert (=> bs!1106310 (= (= lt!1884367 lt!1884465) (= lambda!214818 lambda!214812))))

(declare-fun bs!1106311 () Bool)

(assert (= bs!1106311 (and b!4719339 b!4719317)))

(assert (=> bs!1106311 (= lambda!214818 lambda!214810)))

(declare-fun bs!1106312 () Bool)

(assert (= bs!1106312 (and b!4719339 b!4719321)))

(assert (=> bs!1106312 (= lambda!214818 lambda!214809)))

(declare-fun bs!1106313 () Bool)

(assert (= bs!1106313 (and b!4719339 b!4719330)))

(assert (=> bs!1106313 (= lambda!214818 lambda!214815)))

(declare-fun bs!1106314 () Bool)

(assert (= bs!1106314 (and b!4719339 d!1501905)))

(assert (=> bs!1106314 (= (= lt!1884367 lt!1884487) (= lambda!214818 lambda!214817))))

(assert (=> bs!1106311 (= (= lt!1884367 lt!1884472) (= lambda!214818 lambda!214811))))

(assert (=> bs!1106313 (= (= lt!1884367 lt!1884494) (= lambda!214818 lambda!214816))))

(assert (=> b!4719339 true))

(declare-fun bs!1106315 () Bool)

(declare-fun b!4719335 () Bool)

(assert (= bs!1106315 (and b!4719335 d!1501871)))

(declare-fun lambda!214819 () Int)

(assert (=> bs!1106315 (not (= lambda!214819 lambda!214774))))

(declare-fun bs!1106316 () Bool)

(assert (= bs!1106316 (and b!4719335 b!4719334)))

(assert (=> bs!1106316 (= lambda!214819 lambda!214814)))

(declare-fun bs!1106317 () Bool)

(assert (= bs!1106317 (and b!4719335 d!1501881)))

(assert (=> bs!1106317 (= (= lt!1884367 lt!1884465) (= lambda!214819 lambda!214812))))

(declare-fun bs!1106318 () Bool)

(assert (= bs!1106318 (and b!4719335 b!4719317)))

(assert (=> bs!1106318 (= lambda!214819 lambda!214810)))

(declare-fun bs!1106319 () Bool)

(assert (= bs!1106319 (and b!4719335 b!4719339)))

(assert (=> bs!1106319 (= lambda!214819 lambda!214818)))

(declare-fun bs!1106320 () Bool)

(assert (= bs!1106320 (and b!4719335 b!4719321)))

(assert (=> bs!1106320 (= lambda!214819 lambda!214809)))

(declare-fun bs!1106321 () Bool)

(assert (= bs!1106321 (and b!4719335 b!4719330)))

(assert (=> bs!1106321 (= lambda!214819 lambda!214815)))

(declare-fun bs!1106322 () Bool)

(assert (= bs!1106322 (and b!4719335 d!1501905)))

(assert (=> bs!1106322 (= (= lt!1884367 lt!1884487) (= lambda!214819 lambda!214817))))

(assert (=> bs!1106318 (= (= lt!1884367 lt!1884472) (= lambda!214819 lambda!214811))))

(assert (=> bs!1106321 (= (= lt!1884367 lt!1884494) (= lambda!214819 lambda!214816))))

(assert (=> b!4719335 true))

(declare-fun lambda!214820 () Int)

(assert (=> bs!1106315 (not (= lambda!214820 lambda!214774))))

(declare-fun lt!1884515 () ListMap!5263)

(assert (=> bs!1106316 (= (= lt!1884515 lt!1884367) (= lambda!214820 lambda!214814))))

(assert (=> bs!1106317 (= (= lt!1884515 lt!1884465) (= lambda!214820 lambda!214812))))

(assert (=> b!4719335 (= (= lt!1884515 lt!1884367) (= lambda!214820 lambda!214819))))

(assert (=> bs!1106318 (= (= lt!1884515 lt!1884367) (= lambda!214820 lambda!214810))))

(assert (=> bs!1106319 (= (= lt!1884515 lt!1884367) (= lambda!214820 lambda!214818))))

(assert (=> bs!1106320 (= (= lt!1884515 lt!1884367) (= lambda!214820 lambda!214809))))

(assert (=> bs!1106321 (= (= lt!1884515 lt!1884367) (= lambda!214820 lambda!214815))))

(assert (=> bs!1106322 (= (= lt!1884515 lt!1884487) (= lambda!214820 lambda!214817))))

(assert (=> bs!1106318 (= (= lt!1884515 lt!1884472) (= lambda!214820 lambda!214811))))

(assert (=> bs!1106321 (= (= lt!1884515 lt!1884494) (= lambda!214820 lambda!214816))))

(assert (=> b!4719335 true))

(declare-fun bs!1106323 () Bool)

(declare-fun d!1501907 () Bool)

(assert (= bs!1106323 (and d!1501907 b!4719335)))

(declare-fun lt!1884508 () ListMap!5263)

(declare-fun lambda!214821 () Int)

(assert (=> bs!1106323 (= (= lt!1884508 lt!1884515) (= lambda!214821 lambda!214820))))

(declare-fun bs!1106324 () Bool)

(assert (= bs!1106324 (and d!1501907 d!1501871)))

(assert (=> bs!1106324 (not (= lambda!214821 lambda!214774))))

(declare-fun bs!1106325 () Bool)

(assert (= bs!1106325 (and d!1501907 b!4719334)))

(assert (=> bs!1106325 (= (= lt!1884508 lt!1884367) (= lambda!214821 lambda!214814))))

(declare-fun bs!1106326 () Bool)

(assert (= bs!1106326 (and d!1501907 d!1501881)))

(assert (=> bs!1106326 (= (= lt!1884508 lt!1884465) (= lambda!214821 lambda!214812))))

(assert (=> bs!1106323 (= (= lt!1884508 lt!1884367) (= lambda!214821 lambda!214819))))

(declare-fun bs!1106327 () Bool)

(assert (= bs!1106327 (and d!1501907 b!4719317)))

(assert (=> bs!1106327 (= (= lt!1884508 lt!1884367) (= lambda!214821 lambda!214810))))

(declare-fun bs!1106328 () Bool)

(assert (= bs!1106328 (and d!1501907 b!4719339)))

(assert (=> bs!1106328 (= (= lt!1884508 lt!1884367) (= lambda!214821 lambda!214818))))

(declare-fun bs!1106329 () Bool)

(assert (= bs!1106329 (and d!1501907 b!4719321)))

(assert (=> bs!1106329 (= (= lt!1884508 lt!1884367) (= lambda!214821 lambda!214809))))

(declare-fun bs!1106330 () Bool)

(assert (= bs!1106330 (and d!1501907 b!4719330)))

(assert (=> bs!1106330 (= (= lt!1884508 lt!1884367) (= lambda!214821 lambda!214815))))

(declare-fun bs!1106331 () Bool)

(assert (= bs!1106331 (and d!1501907 d!1501905)))

(assert (=> bs!1106331 (= (= lt!1884508 lt!1884487) (= lambda!214821 lambda!214817))))

(assert (=> bs!1106327 (= (= lt!1884508 lt!1884472) (= lambda!214821 lambda!214811))))

(assert (=> bs!1106330 (= (= lt!1884508 lt!1884494) (= lambda!214821 lambda!214816))))

(assert (=> d!1501907 true))

(declare-fun e!2943208 () ListMap!5263)

(assert (=> b!4719335 (= e!2943208 lt!1884515)))

(declare-fun lt!1884514 () ListMap!5263)

(assert (=> b!4719335 (= lt!1884514 (+!2260 lt!1884367 (h!59143 newBucket!218)))))

(assert (=> b!4719335 (= lt!1884515 (addToMapMapFromBucket!1435 (t!360184 newBucket!218) (+!2260 lt!1884367 (h!59143 newBucket!218))))))

(declare-fun lt!1884500 () Unit!129176)

(declare-fun call!329923 () Unit!129176)

(assert (=> b!4719335 (= lt!1884500 call!329923)))

(assert (=> b!4719335 (forall!11569 (toList!5900 lt!1884367) lambda!214819)))

(declare-fun lt!1884510 () Unit!129176)

(assert (=> b!4719335 (= lt!1884510 lt!1884500)))

(assert (=> b!4719335 (forall!11569 (toList!5900 lt!1884514) lambda!214820)))

(declare-fun lt!1884511 () Unit!129176)

(declare-fun Unit!129200 () Unit!129176)

(assert (=> b!4719335 (= lt!1884511 Unit!129200)))

(assert (=> b!4719335 (forall!11569 (t!360184 newBucket!218) lambda!214820)))

(declare-fun lt!1884503 () Unit!129176)

(declare-fun Unit!129201 () Unit!129176)

(assert (=> b!4719335 (= lt!1884503 Unit!129201)))

(declare-fun lt!1884501 () Unit!129176)

(declare-fun Unit!129202 () Unit!129176)

(assert (=> b!4719335 (= lt!1884501 Unit!129202)))

(declare-fun lt!1884505 () Unit!129176)

(assert (=> b!4719335 (= lt!1884505 (forallContained!3626 (toList!5900 lt!1884514) lambda!214820 (h!59143 newBucket!218)))))

(assert (=> b!4719335 (contains!16151 lt!1884514 (_1!30501 (h!59143 newBucket!218)))))

(declare-fun lt!1884506 () Unit!129176)

(declare-fun Unit!129203 () Unit!129176)

(assert (=> b!4719335 (= lt!1884506 Unit!129203)))

(assert (=> b!4719335 (contains!16151 lt!1884515 (_1!30501 (h!59143 newBucket!218)))))

(declare-fun lt!1884512 () Unit!129176)

(declare-fun Unit!129204 () Unit!129176)

(assert (=> b!4719335 (= lt!1884512 Unit!129204)))

(assert (=> b!4719335 (forall!11569 newBucket!218 lambda!214820)))

(declare-fun lt!1884504 () Unit!129176)

(declare-fun Unit!129205 () Unit!129176)

(assert (=> b!4719335 (= lt!1884504 Unit!129205)))

(assert (=> b!4719335 (forall!11569 (toList!5900 lt!1884514) lambda!214820)))

(declare-fun lt!1884499 () Unit!129176)

(declare-fun Unit!129206 () Unit!129176)

(assert (=> b!4719335 (= lt!1884499 Unit!129206)))

(declare-fun lt!1884498 () Unit!129176)

(declare-fun Unit!129207 () Unit!129176)

(assert (=> b!4719335 (= lt!1884498 Unit!129207)))

(declare-fun lt!1884509 () Unit!129176)

(assert (=> b!4719335 (= lt!1884509 (addForallContainsKeyThenBeforeAdding!787 lt!1884367 lt!1884515 (_1!30501 (h!59143 newBucket!218)) (_2!30501 (h!59143 newBucket!218))))))

(assert (=> b!4719335 (forall!11569 (toList!5900 lt!1884367) lambda!214820)))

(declare-fun lt!1884517 () Unit!129176)

(assert (=> b!4719335 (= lt!1884517 lt!1884509)))

(declare-fun call!329921 () Bool)

(assert (=> b!4719335 call!329921))

(declare-fun lt!1884502 () Unit!129176)

(declare-fun Unit!129208 () Unit!129176)

(assert (=> b!4719335 (= lt!1884502 Unit!129208)))

(declare-fun res!1996147 () Bool)

(declare-fun call!329922 () Bool)

(assert (=> b!4719335 (= res!1996147 call!329922)))

(declare-fun e!2943207 () Bool)

(assert (=> b!4719335 (=> (not res!1996147) (not e!2943207))))

(assert (=> b!4719335 e!2943207))

(declare-fun lt!1884497 () Unit!129176)

(declare-fun Unit!129209 () Unit!129176)

(assert (=> b!4719335 (= lt!1884497 Unit!129209)))

(declare-fun bm!329916 () Bool)

(declare-fun c!805947 () Bool)

(assert (=> bm!329916 (= call!329922 (forall!11569 (ite c!805947 (toList!5900 lt!1884367) newBucket!218) (ite c!805947 lambda!214818 lambda!214820)))))

(declare-fun b!4719336 () Bool)

(assert (=> b!4719336 (= e!2943207 (forall!11569 (toList!5900 lt!1884367) lambda!214820))))

(declare-fun bm!329917 () Bool)

(assert (=> bm!329917 (= call!329921 (forall!11569 (toList!5900 lt!1884367) (ite c!805947 lambda!214818 lambda!214820)))))

(declare-fun b!4719337 () Bool)

(declare-fun res!1996146 () Bool)

(declare-fun e!2943209 () Bool)

(assert (=> b!4719337 (=> (not res!1996146) (not e!2943209))))

(assert (=> b!4719337 (= res!1996146 (forall!11569 (toList!5900 lt!1884367) lambda!214821))))

(declare-fun bm!329918 () Bool)

(assert (=> bm!329918 (= call!329923 (lemmaContainsAllItsOwnKeys!788 lt!1884367))))

(declare-fun b!4719338 () Bool)

(assert (=> b!4719338 (= e!2943209 (invariantList!1502 (toList!5900 lt!1884508)))))

(assert (=> b!4719339 (= e!2943208 lt!1884367)))

(declare-fun lt!1884516 () Unit!129176)

(assert (=> b!4719339 (= lt!1884516 call!329923)))

(assert (=> b!4719339 call!329922))

(declare-fun lt!1884507 () Unit!129176)

(assert (=> b!4719339 (= lt!1884507 lt!1884516)))

(assert (=> b!4719339 call!329921))

(declare-fun lt!1884513 () Unit!129176)

(declare-fun Unit!129212 () Unit!129176)

(assert (=> b!4719339 (= lt!1884513 Unit!129212)))

(assert (=> d!1501907 e!2943209))

(declare-fun res!1996145 () Bool)

(assert (=> d!1501907 (=> (not res!1996145) (not e!2943209))))

(assert (=> d!1501907 (= res!1996145 (forall!11569 newBucket!218 lambda!214821))))

(assert (=> d!1501907 (= lt!1884508 e!2943208)))

(assert (=> d!1501907 (= c!805947 (is-Nil!52804 newBucket!218))))

(assert (=> d!1501907 (noDuplicateKeys!2005 newBucket!218)))

(assert (=> d!1501907 (= (addToMapMapFromBucket!1435 newBucket!218 lt!1884367) lt!1884508)))

(assert (= (and d!1501907 c!805947) b!4719339))

(assert (= (and d!1501907 (not c!805947)) b!4719335))

(assert (= (and b!4719335 res!1996147) b!4719336))

(assert (= (or b!4719339 b!4719335) bm!329918))

(assert (= (or b!4719339 b!4719335) bm!329917))

(assert (= (or b!4719339 b!4719335) bm!329916))

(assert (= (and d!1501907 res!1996145) b!4719337))

(assert (= (and b!4719337 res!1996146) b!4719338))

(assert (=> bm!329918 m!5651235))

(declare-fun m!5651321 () Bool)

(assert (=> d!1501907 m!5651321))

(assert (=> d!1501907 m!5651097))

(declare-fun m!5651323 () Bool)

(assert (=> b!4719336 m!5651323))

(declare-fun m!5651325 () Bool)

(assert (=> b!4719338 m!5651325))

(declare-fun m!5651327 () Bool)

(assert (=> b!4719335 m!5651327))

(declare-fun m!5651329 () Bool)

(assert (=> b!4719335 m!5651329))

(declare-fun m!5651331 () Bool)

(assert (=> b!4719335 m!5651331))

(declare-fun m!5651333 () Bool)

(assert (=> b!4719335 m!5651333))

(declare-fun m!5651335 () Bool)

(assert (=> b!4719335 m!5651335))

(declare-fun m!5651337 () Bool)

(assert (=> b!4719335 m!5651337))

(declare-fun m!5651339 () Bool)

(assert (=> b!4719335 m!5651339))

(declare-fun m!5651341 () Bool)

(assert (=> b!4719335 m!5651341))

(assert (=> b!4719335 m!5651323))

(assert (=> b!4719335 m!5651327))

(declare-fun m!5651343 () Bool)

(assert (=> b!4719335 m!5651343))

(assert (=> b!4719335 m!5651341))

(declare-fun m!5651345 () Bool)

(assert (=> b!4719335 m!5651345))

(declare-fun m!5651347 () Bool)

(assert (=> bm!329917 m!5651347))

(declare-fun m!5651349 () Bool)

(assert (=> bm!329916 m!5651349))

(declare-fun m!5651351 () Bool)

(assert (=> b!4719337 m!5651351))

(assert (=> b!4719146 d!1501907))

(declare-fun d!1501909 () Bool)

(declare-fun lt!1884520 () List!52928)

(assert (=> d!1501909 (not (containsKey!3352 lt!1884520 key!4653))))

(declare-fun e!2943214 () List!52928)

(assert (=> d!1501909 (= lt!1884520 e!2943214)))

(declare-fun c!805952 () Bool)

(assert (=> d!1501909 (= c!805952 (and (is-Cons!52804 oldBucket!34) (= (_1!30501 (h!59143 oldBucket!34)) key!4653)))))

(assert (=> d!1501909 (noDuplicateKeys!2005 oldBucket!34)))

(assert (=> d!1501909 (= (removePairForKey!1600 oldBucket!34 key!4653) lt!1884520)))

(declare-fun b!4719350 () Bool)

(declare-fun e!2943215 () List!52928)

(assert (=> b!4719350 (= e!2943215 (Cons!52804 (h!59143 oldBucket!34) (removePairForKey!1600 (t!360184 oldBucket!34) key!4653)))))

(declare-fun b!4719348 () Bool)

(assert (=> b!4719348 (= e!2943214 (t!360184 oldBucket!34))))

(declare-fun b!4719349 () Bool)

(assert (=> b!4719349 (= e!2943214 e!2943215)))

(declare-fun c!805953 () Bool)

(assert (=> b!4719349 (= c!805953 (is-Cons!52804 oldBucket!34))))

(declare-fun b!4719351 () Bool)

(assert (=> b!4719351 (= e!2943215 Nil!52804)))

(assert (= (and d!1501909 c!805952) b!4719348))

(assert (= (and d!1501909 (not c!805952)) b!4719349))

(assert (= (and b!4719349 c!805953) b!4719350))

(assert (= (and b!4719349 (not c!805953)) b!4719351))

(declare-fun m!5651353 () Bool)

(assert (=> d!1501909 m!5651353))

(assert (=> d!1501909 m!5651091))

(declare-fun m!5651355 () Bool)

(assert (=> b!4719350 m!5651355))

(assert (=> b!4719157 d!1501909))

(declare-fun d!1501911 () Bool)

(assert (=> d!1501911 (= (tail!8977 oldBucket!34) (t!360184 oldBucket!34))))

(assert (=> b!4719158 d!1501911))

(declare-fun d!1501913 () Bool)

(declare-fun res!1996148 () Bool)

(declare-fun e!2943216 () Bool)

(assert (=> d!1501913 (=> res!1996148 e!2943216)))

(assert (=> d!1501913 (= res!1996148 (not (is-Cons!52804 (Cons!52804 (head!10232 oldBucket!34) lt!1884366))))))

(assert (=> d!1501913 (= (noDuplicateKeys!2005 (Cons!52804 (head!10232 oldBucket!34) lt!1884366)) e!2943216)))

(declare-fun b!4719352 () Bool)

(declare-fun e!2943217 () Bool)

(assert (=> b!4719352 (= e!2943216 e!2943217)))

(declare-fun res!1996149 () Bool)

(assert (=> b!4719352 (=> (not res!1996149) (not e!2943217))))

(assert (=> b!4719352 (= res!1996149 (not (containsKey!3352 (t!360184 (Cons!52804 (head!10232 oldBucket!34) lt!1884366)) (_1!30501 (h!59143 (Cons!52804 (head!10232 oldBucket!34) lt!1884366))))))))

(declare-fun b!4719353 () Bool)

(assert (=> b!4719353 (= e!2943217 (noDuplicateKeys!2005 (t!360184 (Cons!52804 (head!10232 oldBucket!34) lt!1884366))))))

(assert (= (and d!1501913 (not res!1996148)) b!4719352))

(assert (= (and b!4719352 res!1996149) b!4719353))

(declare-fun m!5651357 () Bool)

(assert (=> b!4719352 m!5651357))

(declare-fun m!5651359 () Bool)

(assert (=> b!4719353 m!5651359))

(assert (=> b!4719159 d!1501913))

(declare-fun d!1501915 () Bool)

(assert (=> d!1501915 (= (head!10232 oldBucket!34) (h!59143 oldBucket!34))))

(assert (=> b!4719159 d!1501915))

(declare-fun bs!1106332 () Bool)

(declare-fun d!1501917 () Bool)

(assert (= bs!1106332 (and d!1501917 b!4719335)))

(declare-fun lambda!214822 () Int)

(assert (=> bs!1106332 (not (= lambda!214822 lambda!214820))))

(declare-fun bs!1106333 () Bool)

(assert (= bs!1106333 (and d!1501917 d!1501871)))

(assert (=> bs!1106333 (= lambda!214822 lambda!214774)))

(declare-fun bs!1106334 () Bool)

(assert (= bs!1106334 (and d!1501917 b!4719334)))

(assert (=> bs!1106334 (not (= lambda!214822 lambda!214814))))

(assert (=> bs!1106332 (not (= lambda!214822 lambda!214819))))

(declare-fun bs!1106335 () Bool)

(assert (= bs!1106335 (and d!1501917 b!4719317)))

(assert (=> bs!1106335 (not (= lambda!214822 lambda!214810))))

(declare-fun bs!1106336 () Bool)

(assert (= bs!1106336 (and d!1501917 b!4719339)))

(assert (=> bs!1106336 (not (= lambda!214822 lambda!214818))))

(declare-fun bs!1106337 () Bool)

(assert (= bs!1106337 (and d!1501917 b!4719321)))

(assert (=> bs!1106337 (not (= lambda!214822 lambda!214809))))

(declare-fun bs!1106338 () Bool)

(assert (= bs!1106338 (and d!1501917 b!4719330)))

(assert (=> bs!1106338 (not (= lambda!214822 lambda!214815))))

(declare-fun bs!1106339 () Bool)

(assert (= bs!1106339 (and d!1501917 d!1501905)))

(assert (=> bs!1106339 (not (= lambda!214822 lambda!214817))))

(declare-fun bs!1106340 () Bool)

(assert (= bs!1106340 (and d!1501917 d!1501907)))

(assert (=> bs!1106340 (not (= lambda!214822 lambda!214821))))

(declare-fun bs!1106341 () Bool)

(assert (= bs!1106341 (and d!1501917 d!1501881)))

(assert (=> bs!1106341 (not (= lambda!214822 lambda!214812))))

(assert (=> bs!1106335 (not (= lambda!214822 lambda!214811))))

(assert (=> bs!1106338 (not (= lambda!214822 lambda!214816))))

(assert (=> d!1501917 true))

(assert (=> d!1501917 true))

(assert (=> d!1501917 (= (allKeysSameHash!1831 oldBucket!34 hash!405 hashF!1323) (forall!11569 oldBucket!34 lambda!214822))))

(declare-fun bs!1106342 () Bool)

(assert (= bs!1106342 d!1501917))

(declare-fun m!5651361 () Bool)

(assert (=> bs!1106342 m!5651361))

(assert (=> b!4719149 d!1501917))

(declare-fun b!4719372 () Bool)

(declare-datatypes ((List!52933 0))(
  ( (Nil!52809) (Cons!52809 (h!59150 K!14163) (t!360189 List!52933)) )
))
(declare-fun e!2943233 () List!52933)

(declare-fun keys!18958 (ListMap!5263) List!52933)

(assert (=> b!4719372 (= e!2943233 (keys!18958 lt!1884368))))

(declare-fun b!4719373 () Bool)

(declare-fun e!2943235 () Unit!129176)

(declare-fun Unit!129215 () Unit!129176)

(assert (=> b!4719373 (= e!2943235 Unit!129215)))

(declare-fun b!4719374 () Bool)

(declare-fun e!2943234 () Unit!129176)

(assert (=> b!4719374 (= e!2943234 e!2943235)))

(declare-fun c!805961 () Bool)

(declare-fun call!329926 () Bool)

(assert (=> b!4719374 (= c!805961 call!329926)))

(declare-fun d!1501919 () Bool)

(declare-fun e!2943230 () Bool)

(assert (=> d!1501919 e!2943230))

(declare-fun res!1996158 () Bool)

(assert (=> d!1501919 (=> res!1996158 e!2943230)))

(declare-fun e!2943232 () Bool)

(assert (=> d!1501919 (= res!1996158 e!2943232)))

(declare-fun res!1996156 () Bool)

(assert (=> d!1501919 (=> (not res!1996156) (not e!2943232))))

(declare-fun lt!1884538 () Bool)

(assert (=> d!1501919 (= res!1996156 (not lt!1884538))))

(declare-fun lt!1884539 () Bool)

(assert (=> d!1501919 (= lt!1884538 lt!1884539)))

(declare-fun lt!1884542 () Unit!129176)

(assert (=> d!1501919 (= lt!1884542 e!2943234)))

(declare-fun c!805960 () Bool)

(assert (=> d!1501919 (= c!805960 lt!1884539)))

(declare-fun containsKey!3355 (List!52928 K!14163) Bool)

(assert (=> d!1501919 (= lt!1884539 (containsKey!3355 (toList!5900 lt!1884368) key!4653))))

(assert (=> d!1501919 (= (contains!16151 lt!1884368 key!4653) lt!1884538)))

(declare-fun b!4719375 () Bool)

(declare-fun lt!1884541 () Unit!129176)

(assert (=> b!4719375 (= e!2943234 lt!1884541)))

(declare-fun lt!1884540 () Unit!129176)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1838 (List!52928 K!14163) Unit!129176)

(assert (=> b!4719375 (= lt!1884540 (lemmaContainsKeyImpliesGetValueByKeyDefined!1838 (toList!5900 lt!1884368) key!4653))))

(declare-datatypes ((Option!12351 0))(
  ( (None!12350) (Some!12350 (v!46919 V!14409)) )
))
(declare-fun isDefined!9605 (Option!12351) Bool)

(declare-fun getValueByKey!1947 (List!52928 K!14163) Option!12351)

(assert (=> b!4719375 (isDefined!9605 (getValueByKey!1947 (toList!5900 lt!1884368) key!4653))))

(declare-fun lt!1884544 () Unit!129176)

(assert (=> b!4719375 (= lt!1884544 lt!1884540)))

(declare-fun lemmaInListThenGetKeysListContains!938 (List!52928 K!14163) Unit!129176)

(assert (=> b!4719375 (= lt!1884541 (lemmaInListThenGetKeysListContains!938 (toList!5900 lt!1884368) key!4653))))

(assert (=> b!4719375 call!329926))

(declare-fun b!4719376 () Bool)

(assert (=> b!4719376 false))

(declare-fun lt!1884537 () Unit!129176)

(declare-fun lt!1884543 () Unit!129176)

(assert (=> b!4719376 (= lt!1884537 lt!1884543)))

(assert (=> b!4719376 (containsKey!3355 (toList!5900 lt!1884368) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!942 (List!52928 K!14163) Unit!129176)

(assert (=> b!4719376 (= lt!1884543 (lemmaInGetKeysListThenContainsKey!942 (toList!5900 lt!1884368) key!4653))))

(declare-fun Unit!129216 () Unit!129176)

(assert (=> b!4719376 (= e!2943235 Unit!129216)))

(declare-fun b!4719377 () Bool)

(declare-fun contains!16154 (List!52933 K!14163) Bool)

(assert (=> b!4719377 (= e!2943232 (not (contains!16154 (keys!18958 lt!1884368) key!4653)))))

(declare-fun bm!329921 () Bool)

(assert (=> bm!329921 (= call!329926 (contains!16154 e!2943233 key!4653))))

(declare-fun c!805962 () Bool)

(assert (=> bm!329921 (= c!805962 c!805960)))

(declare-fun b!4719378 () Bool)

(declare-fun e!2943231 () Bool)

(assert (=> b!4719378 (= e!2943230 e!2943231)))

(declare-fun res!1996157 () Bool)

(assert (=> b!4719378 (=> (not res!1996157) (not e!2943231))))

(assert (=> b!4719378 (= res!1996157 (isDefined!9605 (getValueByKey!1947 (toList!5900 lt!1884368) key!4653)))))

(declare-fun b!4719379 () Bool)

(assert (=> b!4719379 (= e!2943231 (contains!16154 (keys!18958 lt!1884368) key!4653))))

(declare-fun b!4719380 () Bool)

(declare-fun getKeysList!943 (List!52928) List!52933)

(assert (=> b!4719380 (= e!2943233 (getKeysList!943 (toList!5900 lt!1884368)))))

(assert (= (and d!1501919 c!805960) b!4719375))

(assert (= (and d!1501919 (not c!805960)) b!4719374))

(assert (= (and b!4719374 c!805961) b!4719376))

(assert (= (and b!4719374 (not c!805961)) b!4719373))

(assert (= (or b!4719375 b!4719374) bm!329921))

(assert (= (and bm!329921 c!805962) b!4719380))

(assert (= (and bm!329921 (not c!805962)) b!4719372))

(assert (= (and d!1501919 res!1996156) b!4719377))

(assert (= (and d!1501919 (not res!1996158)) b!4719378))

(assert (= (and b!4719378 res!1996157) b!4719379))

(declare-fun m!5651363 () Bool)

(assert (=> bm!329921 m!5651363))

(declare-fun m!5651365 () Bool)

(assert (=> b!4719380 m!5651365))

(declare-fun m!5651367 () Bool)

(assert (=> b!4719375 m!5651367))

(declare-fun m!5651369 () Bool)

(assert (=> b!4719375 m!5651369))

(assert (=> b!4719375 m!5651369))

(declare-fun m!5651371 () Bool)

(assert (=> b!4719375 m!5651371))

(declare-fun m!5651373 () Bool)

(assert (=> b!4719375 m!5651373))

(declare-fun m!5651375 () Bool)

(assert (=> d!1501919 m!5651375))

(assert (=> b!4719376 m!5651375))

(declare-fun m!5651377 () Bool)

(assert (=> b!4719376 m!5651377))

(declare-fun m!5651379 () Bool)

(assert (=> b!4719377 m!5651379))

(assert (=> b!4719377 m!5651379))

(declare-fun m!5651381 () Bool)

(assert (=> b!4719377 m!5651381))

(assert (=> b!4719378 m!5651369))

(assert (=> b!4719378 m!5651369))

(assert (=> b!4719378 m!5651371))

(assert (=> b!4719379 m!5651379))

(assert (=> b!4719379 m!5651379))

(assert (=> b!4719379 m!5651381))

(assert (=> b!4719372 m!5651379))

(assert (=> b!4719160 d!1501919))

(declare-fun bs!1106343 () Bool)

(declare-fun d!1501921 () Bool)

(assert (= bs!1106343 (and d!1501921 d!1501861)))

(declare-fun lambda!214823 () Int)

(assert (=> bs!1106343 (= lambda!214823 lambda!214770)))

(declare-fun bs!1106344 () Bool)

(assert (= bs!1106344 (and d!1501921 d!1501895)))

(assert (=> bs!1106344 (= lambda!214823 lambda!214813)))

(declare-fun bs!1106345 () Bool)

(assert (= bs!1106345 (and d!1501921 start!480266)))

(assert (=> bs!1106345 (= lambda!214823 lambda!214761)))

(declare-fun bs!1106346 () Bool)

(assert (= bs!1106346 (and d!1501921 d!1501869)))

(assert (=> bs!1106346 (= lambda!214823 lambda!214771)))

(declare-fun bs!1106347 () Bool)

(assert (= bs!1106347 (and d!1501921 d!1501879)))

(assert (=> bs!1106347 (not (= lambda!214823 lambda!214777))))

(declare-fun lt!1884545 () ListMap!5263)

(assert (=> d!1501921 (invariantList!1502 (toList!5900 lt!1884545))))

(declare-fun e!2943236 () ListMap!5263)

(assert (=> d!1501921 (= lt!1884545 e!2943236)))

(declare-fun c!805963 () Bool)

(assert (=> d!1501921 (= c!805963 (is-Cons!52805 (toList!5899 lm!2023)))))

(assert (=> d!1501921 (forall!11567 (toList!5899 lm!2023) lambda!214823)))

(assert (=> d!1501921 (= (extractMap!2031 (toList!5899 lm!2023)) lt!1884545)))

(declare-fun b!4719381 () Bool)

(assert (=> b!4719381 (= e!2943236 (addToMapMapFromBucket!1435 (_2!30502 (h!59144 (toList!5899 lm!2023))) (extractMap!2031 (t!360185 (toList!5899 lm!2023)))))))

(declare-fun b!4719382 () Bool)

(assert (=> b!4719382 (= e!2943236 (ListMap!5264 Nil!52804))))

(assert (= (and d!1501921 c!805963) b!4719381))

(assert (= (and d!1501921 (not c!805963)) b!4719382))

(declare-fun m!5651383 () Bool)

(assert (=> d!1501921 m!5651383))

(declare-fun m!5651385 () Bool)

(assert (=> d!1501921 m!5651385))

(assert (=> b!4719381 m!5651081))

(assert (=> b!4719381 m!5651081))

(declare-fun m!5651387 () Bool)

(assert (=> b!4719381 m!5651387))

(assert (=> b!4719160 d!1501921))

(declare-fun d!1501923 () Bool)

(declare-fun hash!4370 (Hashable!6374 K!14163) (_ BitVec 64))

(assert (=> d!1501923 (= (hash!4367 hashF!1323 key!4653) (hash!4370 hashF!1323 key!4653))))

(declare-fun bs!1106348 () Bool)

(assert (= bs!1106348 d!1501923))

(declare-fun m!5651389 () Bool)

(assert (=> bs!1106348 m!5651389))

(assert (=> b!4719150 d!1501923))

(declare-fun b!4719387 () Bool)

(declare-fun e!2943239 () Bool)

(declare-fun tp!1348240 () Bool)

(declare-fun tp!1348241 () Bool)

(assert (=> b!4719387 (= e!2943239 (and tp!1348240 tp!1348241))))

(assert (=> b!4719151 (= tp!1348224 e!2943239)))

(assert (= (and b!4719151 (is-Cons!52805 (toList!5899 lm!2023))) b!4719387))

(declare-fun b!4719392 () Bool)

(declare-fun e!2943242 () Bool)

(declare-fun tp!1348244 () Bool)

(assert (=> b!4719392 (= e!2943242 (and tp_is_empty!31313 tp_is_empty!31315 tp!1348244))))

(assert (=> b!4719147 (= tp!1348226 e!2943242)))

(assert (= (and b!4719147 (is-Cons!52804 (t!360184 newBucket!218))) b!4719392))

(declare-fun e!2943243 () Bool)

(declare-fun b!4719393 () Bool)

(declare-fun tp!1348245 () Bool)

(assert (=> b!4719393 (= e!2943243 (and tp_is_empty!31313 tp_is_empty!31315 tp!1348245))))

(assert (=> b!4719145 (= tp!1348225 e!2943243)))

(assert (= (and b!4719145 (is-Cons!52804 (t!360184 oldBucket!34))) b!4719393))

(declare-fun b_lambda!177889 () Bool)

(assert (= b_lambda!177887 (or start!480266 b_lambda!177889)))

(declare-fun bs!1106349 () Bool)

(declare-fun d!1501925 () Bool)

(assert (= bs!1106349 (and d!1501925 start!480266)))

(assert (=> bs!1106349 (= (dynLambda!21807 lambda!214761 (h!59144 (toList!5899 lm!2023))) (noDuplicateKeys!2005 (_2!30502 (h!59144 (toList!5899 lm!2023)))))))

(assert (=> bs!1106349 m!5651239))

(assert (=> b!4719256 d!1501925))

(push 1)

(assert (not b!4719257))

(assert (not b!4719379))

(assert (not b!4719330))

(assert (not b!4719335))

(assert (not b!4719317))

(assert (not d!1501879))

(assert (not b!4719238))

(assert (not b_lambda!177889))

(assert (not b!4719240))

(assert (not b!4719377))

(assert (not d!1501917))

(assert (not b!4719380))

(assert (not d!1501897))

(assert (not b!4719319))

(assert (not d!1501909))

(assert (not b!4719329))

(assert (not b!4719376))

(assert (not b!4719324))

(assert (not b!4719381))

(assert (not b!4719250))

(assert (not d!1501919))

(assert (not bm!329917))

(assert (not b!4719331))

(assert (not b!4719327))

(assert (not b!4719328))

(assert (not d!1501907))

(assert (not d!1501877))

(assert (not d!1501871))

(assert (not bm!329916))

(assert (not bm!329921))

(assert (not b!4719353))

(assert (not b!4719338))

(assert (not bm!329918))

(assert (not bm!329913))

(assert (not b!4719387))

(assert (not b!4719318))

(assert (not b!4719326))

(assert (not bm!329911))

(assert (not b!4719251))

(assert tp_is_empty!31313)

(assert (not b!4719393))

(assert (not bm!329912))

(assert (not d!1501921))

(assert (not b!4719352))

(assert (not b!4719332))

(assert (not bm!329914))

(assert (not b!4719337))

(assert (not d!1501923))

(assert (not b!4719378))

(assert tp_is_empty!31315)

(assert (not b!4719375))

(assert (not d!1501861))

(assert (not d!1501895))

(assert (not b!4719372))

(assert (not d!1501881))

(assert (not bs!1106349))

(assert (not d!1501905))

(assert (not d!1501869))

(assert (not b!4719336))

(assert (not b!4719350))

(assert (not b!4719392))

(assert (not b!4719333))

(assert (not b!4719320))

(assert (not bm!329910))

(assert (not bm!329915))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

