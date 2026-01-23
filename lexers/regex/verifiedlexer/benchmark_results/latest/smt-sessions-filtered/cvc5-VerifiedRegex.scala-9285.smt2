; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!492824 () Bool)

(assert start!492824)

(declare-datatypes ((K!15712 0))(
  ( (K!15713 (val!20875 Int)) )
))
(declare-fun key!5896 () K!15712)

(declare-fun b!4789253 () Bool)

(declare-datatypes ((V!15958 0))(
  ( (V!15959 (val!20876 Int)) )
))
(declare-datatypes ((tuple2!56724 0))(
  ( (tuple2!56725 (_1!31656 K!15712) (_2!31656 V!15958)) )
))
(declare-datatypes ((List!54267 0))(
  ( (Nil!54143) (Cons!54143 (h!60567 tuple2!56724) (t!361717 List!54267)) )
))
(declare-datatypes ((tuple2!56726 0))(
  ( (tuple2!56727 (_1!31657 (_ BitVec 64)) (_2!31657 List!54267)) )
))
(declare-datatypes ((List!54268 0))(
  ( (Nil!54144) (Cons!54144 (h!60568 tuple2!56726) (t!361718 List!54268)) )
))
(declare-datatypes ((ListLongMap!5279 0))(
  ( (ListLongMap!5280 (toList!6857 List!54268)) )
))
(declare-fun lm!2473 () ListLongMap!5279)

(declare-fun e!2990281 () Bool)

(declare-fun lt!1949234 () (_ BitVec 64))

(declare-datatypes ((Option!13044 0))(
  ( (None!13043) (Some!13043 (v!48314 tuple2!56724)) )
))
(declare-fun isDefined!10186 (Option!13044) Bool)

(declare-fun getPair!861 (List!54267 K!15712) Option!13044)

(declare-fun apply!12950 (ListLongMap!5279 (_ BitVec 64)) List!54267)

(assert (=> b!4789253 (= e!2990281 (isDefined!10186 (getPair!861 (apply!12950 lm!2473 lt!1949234) key!5896)))))

(declare-fun b!4789254 () Bool)

(declare-fun e!2990278 () Bool)

(declare-fun e!2990279 () Bool)

(assert (=> b!4789254 (= e!2990278 (not e!2990279))))

(declare-fun res!2035061 () Bool)

(assert (=> b!4789254 (=> res!2035061 e!2990279)))

(declare-fun value!3111 () V!15958)

(declare-fun getValue!85 (List!54268 K!15712) V!15958)

(assert (=> b!4789254 (= res!2035061 (not (= (getValue!85 (toList!6857 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!539 (List!54268 K!15712) Bool)

(assert (=> b!4789254 (containsKeyBiggerList!539 (toList!6857 lm!2473) key!5896)))

(declare-datatypes ((Hashable!6889 0))(
  ( (HashableExt!6888 (__x!32912 Int)) )
))
(declare-fun hashF!1559 () Hashable!6889)

(declare-datatypes ((Unit!139688 0))(
  ( (Unit!139689) )
))
(declare-fun lt!1949233 () Unit!139688)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!279 (ListLongMap!5279 K!15712 Hashable!6889) Unit!139688)

(assert (=> b!4789254 (= lt!1949233 (lemmaInLongMapThenContainsKeyBiggerList!279 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4789254 e!2990281))

(declare-fun res!2035066 () Bool)

(assert (=> b!4789254 (=> (not res!2035066) (not e!2990281))))

(declare-fun contains!17744 (ListLongMap!5279 (_ BitVec 64)) Bool)

(assert (=> b!4789254 (= res!2035066 (contains!17744 lm!2473 lt!1949234))))

(declare-fun hash!4915 (Hashable!6889 K!15712) (_ BitVec 64))

(assert (=> b!4789254 (= lt!1949234 (hash!4915 hashF!1559 key!5896))))

(declare-fun lt!1949235 () Unit!139688)

(declare-fun lemmaInGenericMapThenInLongMap!293 (ListLongMap!5279 K!15712 Hashable!6889) Unit!139688)

(assert (=> b!4789254 (= lt!1949235 (lemmaInGenericMapThenInLongMap!293 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4789256 () Bool)

(declare-fun e!2990280 () Bool)

(declare-fun tp!1357841 () Bool)

(assert (=> b!4789256 (= e!2990280 tp!1357841)))

(declare-fun b!4789257 () Bool)

(declare-fun res!2035062 () Bool)

(assert (=> b!4789257 (=> res!2035062 e!2990279)))

(declare-fun containsKey!3907 (List!54267 K!15712) Bool)

(assert (=> b!4789257 (= res!2035062 (containsKey!3907 (_2!31657 (h!60568 (toList!6857 lm!2473))) key!5896))))

(declare-fun b!4789258 () Bool)

(declare-fun e!2990277 () Unit!139688)

(declare-fun lt!1949231 () Unit!139688)

(assert (=> b!4789258 (= e!2990277 lt!1949231)))

(declare-fun lt!1949230 () ListLongMap!5279)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!15 (ListLongMap!5279 K!15712 Hashable!6889) Unit!139688)

(assert (=> b!4789258 (= lt!1949231 (lemmaHashNotInLongMapThenNotInGenerated!15 lt!1949230 key!5896 hashF!1559))))

(declare-datatypes ((ListMap!6329 0))(
  ( (ListMap!6330 (toList!6858 List!54267)) )
))
(declare-fun contains!17745 (ListMap!6329 K!15712) Bool)

(declare-fun extractMap!2416 (List!54268) ListMap!6329)

(assert (=> b!4789258 (not (contains!17745 (extractMap!2416 (toList!6857 lt!1949230)) key!5896))))

(declare-fun res!2035067 () Bool)

(assert (=> start!492824 (=> (not res!2035067) (not e!2990278))))

(declare-fun lambda!229934 () Int)

(declare-fun forall!12206 (List!54268 Int) Bool)

(assert (=> start!492824 (= res!2035067 (forall!12206 (toList!6857 lm!2473) lambda!229934))))

(assert (=> start!492824 e!2990278))

(declare-fun inv!69739 (ListLongMap!5279) Bool)

(assert (=> start!492824 (and (inv!69739 lm!2473) e!2990280)))

(assert (=> start!492824 true))

(declare-fun tp_is_empty!33437 () Bool)

(assert (=> start!492824 tp_is_empty!33437))

(declare-fun tp_is_empty!33439 () Bool)

(assert (=> start!492824 tp_is_empty!33439))

(declare-fun b!4789255 () Bool)

(declare-fun res!2035063 () Bool)

(assert (=> b!4789255 (=> (not res!2035063) (not e!2990278))))

(assert (=> b!4789255 (= res!2035063 (contains!17745 (extractMap!2416 (toList!6857 lm!2473)) key!5896))))

(declare-fun b!4789259 () Bool)

(declare-fun Unit!139690 () Unit!139688)

(assert (=> b!4789259 (= e!2990277 Unit!139690)))

(declare-fun b!4789260 () Bool)

(declare-fun isEmpty!29418 (ListLongMap!5279) Bool)

(assert (=> b!4789260 (= e!2990279 (not (isEmpty!29418 lm!2473)))))

(declare-fun lt!1949232 () Unit!139688)

(assert (=> b!4789260 (= lt!1949232 e!2990277)))

(declare-fun c!816286 () Bool)

(assert (=> b!4789260 (= c!816286 (not (contains!17744 lt!1949230 lt!1949234)))))

(declare-fun tail!9238 (ListLongMap!5279) ListLongMap!5279)

(assert (=> b!4789260 (= lt!1949230 (tail!9238 lm!2473))))

(declare-fun b!4789261 () Bool)

(declare-fun res!2035064 () Bool)

(assert (=> b!4789261 (=> (not res!2035064) (not e!2990278))))

(declare-fun allKeysSameHashInMap!2294 (ListLongMap!5279 Hashable!6889) Bool)

(assert (=> b!4789261 (= res!2035064 (allKeysSameHashInMap!2294 lm!2473 hashF!1559))))

(declare-fun b!4789262 () Bool)

(declare-fun res!2035065 () Bool)

(assert (=> b!4789262 (=> res!2035065 e!2990279)))

(assert (=> b!4789262 (= res!2035065 (not (is-Cons!54144 (toList!6857 lm!2473))))))

(assert (= (and start!492824 res!2035067) b!4789261))

(assert (= (and b!4789261 res!2035064) b!4789255))

(assert (= (and b!4789255 res!2035063) b!4789254))

(assert (= (and b!4789254 res!2035066) b!4789253))

(assert (= (and b!4789254 (not res!2035061)) b!4789262))

(assert (= (and b!4789262 (not res!2035065)) b!4789257))

(assert (= (and b!4789257 (not res!2035062)) b!4789260))

(assert (= (and b!4789260 c!816286) b!4789258))

(assert (= (and b!4789260 (not c!816286)) b!4789259))

(assert (= start!492824 b!4789256))

(declare-fun m!5768842 () Bool)

(assert (=> b!4789255 m!5768842))

(assert (=> b!4789255 m!5768842))

(declare-fun m!5768844 () Bool)

(assert (=> b!4789255 m!5768844))

(declare-fun m!5768846 () Bool)

(assert (=> b!4789254 m!5768846))

(declare-fun m!5768848 () Bool)

(assert (=> b!4789254 m!5768848))

(declare-fun m!5768850 () Bool)

(assert (=> b!4789254 m!5768850))

(declare-fun m!5768852 () Bool)

(assert (=> b!4789254 m!5768852))

(declare-fun m!5768854 () Bool)

(assert (=> b!4789254 m!5768854))

(declare-fun m!5768856 () Bool)

(assert (=> b!4789254 m!5768856))

(declare-fun m!5768858 () Bool)

(assert (=> b!4789260 m!5768858))

(declare-fun m!5768860 () Bool)

(assert (=> b!4789260 m!5768860))

(declare-fun m!5768862 () Bool)

(assert (=> b!4789260 m!5768862))

(declare-fun m!5768864 () Bool)

(assert (=> b!4789253 m!5768864))

(assert (=> b!4789253 m!5768864))

(declare-fun m!5768866 () Bool)

(assert (=> b!4789253 m!5768866))

(assert (=> b!4789253 m!5768866))

(declare-fun m!5768868 () Bool)

(assert (=> b!4789253 m!5768868))

(declare-fun m!5768870 () Bool)

(assert (=> b!4789257 m!5768870))

(declare-fun m!5768872 () Bool)

(assert (=> b!4789258 m!5768872))

(declare-fun m!5768874 () Bool)

(assert (=> b!4789258 m!5768874))

(assert (=> b!4789258 m!5768874))

(declare-fun m!5768876 () Bool)

(assert (=> b!4789258 m!5768876))

(declare-fun m!5768878 () Bool)

(assert (=> b!4789261 m!5768878))

(declare-fun m!5768880 () Bool)

(assert (=> start!492824 m!5768880))

(declare-fun m!5768882 () Bool)

(assert (=> start!492824 m!5768882))

(push 1)

(assert (not b!4789254))

(assert (not b!4789260))

(assert (not b!4789257))

(assert tp_is_empty!33439)

(assert tp_is_empty!33437)

(assert (not b!4789261))

(assert (not b!4789258))

(assert (not start!492824))

(assert (not b!4789256))

(assert (not b!4789255))

(assert (not b!4789253))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1532044 () Bool)

(declare-fun res!2035093 () Bool)

(declare-fun e!2990301 () Bool)

(assert (=> d!1532044 (=> res!2035093 e!2990301)))

(assert (=> d!1532044 (= res!2035093 (and (is-Cons!54143 (_2!31657 (h!60568 (toList!6857 lm!2473)))) (= (_1!31656 (h!60567 (_2!31657 (h!60568 (toList!6857 lm!2473))))) key!5896)))))

(assert (=> d!1532044 (= (containsKey!3907 (_2!31657 (h!60568 (toList!6857 lm!2473))) key!5896) e!2990301)))

(declare-fun b!4789297 () Bool)

(declare-fun e!2990302 () Bool)

(assert (=> b!4789297 (= e!2990301 e!2990302)))

(declare-fun res!2035094 () Bool)

(assert (=> b!4789297 (=> (not res!2035094) (not e!2990302))))

(assert (=> b!4789297 (= res!2035094 (is-Cons!54143 (_2!31657 (h!60568 (toList!6857 lm!2473)))))))

(declare-fun b!4789298 () Bool)

(assert (=> b!4789298 (= e!2990302 (containsKey!3907 (t!361717 (_2!31657 (h!60568 (toList!6857 lm!2473)))) key!5896))))

(assert (= (and d!1532044 (not res!2035093)) b!4789297))

(assert (= (and b!4789297 res!2035094) b!4789298))

(declare-fun m!5768926 () Bool)

(assert (=> b!4789298 m!5768926))

(assert (=> b!4789257 d!1532044))

(declare-fun bs!1154002 () Bool)

(declare-fun d!1532046 () Bool)

(assert (= bs!1154002 (and d!1532046 start!492824)))

(declare-fun lambda!229940 () Int)

(assert (=> bs!1154002 (= lambda!229940 lambda!229934)))

(assert (=> d!1532046 (not (contains!17745 (extractMap!2416 (toList!6857 lt!1949230)) key!5896))))

(declare-fun lt!1949256 () Unit!139688)

(declare-fun choose!34454 (ListLongMap!5279 K!15712 Hashable!6889) Unit!139688)

(assert (=> d!1532046 (= lt!1949256 (choose!34454 lt!1949230 key!5896 hashF!1559))))

(assert (=> d!1532046 (forall!12206 (toList!6857 lt!1949230) lambda!229940)))

(assert (=> d!1532046 (= (lemmaHashNotInLongMapThenNotInGenerated!15 lt!1949230 key!5896 hashF!1559) lt!1949256)))

(declare-fun bs!1154003 () Bool)

(assert (= bs!1154003 d!1532046))

(assert (=> bs!1154003 m!5768874))

(assert (=> bs!1154003 m!5768874))

(assert (=> bs!1154003 m!5768876))

(declare-fun m!5768928 () Bool)

(assert (=> bs!1154003 m!5768928))

(declare-fun m!5768930 () Bool)

(assert (=> bs!1154003 m!5768930))

(assert (=> b!4789258 d!1532046))

(declare-fun b!4789329 () Bool)

(declare-fun e!2990330 () Bool)

(declare-fun e!2990329 () Bool)

(assert (=> b!4789329 (= e!2990330 e!2990329)))

(declare-fun res!2035112 () Bool)

(assert (=> b!4789329 (=> (not res!2035112) (not e!2990329))))

(declare-datatypes ((Option!13046 0))(
  ( (None!13045) (Some!13045 (v!48316 V!15958)) )
))
(declare-fun isDefined!10188 (Option!13046) Bool)

(declare-fun getValueByKey!2331 (List!54267 K!15712) Option!13046)

(assert (=> b!4789329 (= res!2035112 (isDefined!10188 (getValueByKey!2331 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896)))))

(declare-fun b!4789330 () Bool)

(declare-fun e!2990326 () Unit!139688)

(declare-fun e!2990328 () Unit!139688)

(assert (=> b!4789330 (= e!2990326 e!2990328)))

(declare-fun c!816296 () Bool)

(declare-fun call!334939 () Bool)

(assert (=> b!4789330 (= c!816296 call!334939)))

(declare-fun b!4789331 () Bool)

(declare-datatypes ((List!54271 0))(
  ( (Nil!54147) (Cons!54147 (h!60571 K!15712) (t!361721 List!54271)) )
))
(declare-fun e!2990325 () List!54271)

(declare-fun getKeysList!1066 (List!54267) List!54271)

(assert (=> b!4789331 (= e!2990325 (getKeysList!1066 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))))))

(declare-fun b!4789332 () Bool)

(declare-fun e!2990327 () Bool)

(declare-fun contains!17748 (List!54271 K!15712) Bool)

(declare-fun keys!19755 (ListMap!6329) List!54271)

(assert (=> b!4789332 (= e!2990327 (not (contains!17748 (keys!19755 (extractMap!2416 (toList!6857 lt!1949230))) key!5896)))))

(declare-fun bm!334934 () Bool)

(assert (=> bm!334934 (= call!334939 (contains!17748 e!2990325 key!5896))))

(declare-fun c!816298 () Bool)

(declare-fun c!816297 () Bool)

(assert (=> bm!334934 (= c!816298 c!816297)))

(declare-fun b!4789333 () Bool)

(declare-fun Unit!139694 () Unit!139688)

(assert (=> b!4789333 (= e!2990328 Unit!139694)))

(declare-fun b!4789334 () Bool)

(declare-fun lt!1949275 () Unit!139688)

(assert (=> b!4789334 (= e!2990326 lt!1949275)))

(declare-fun lt!1949276 () Unit!139688)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2123 (List!54267 K!15712) Unit!139688)

(assert (=> b!4789334 (= lt!1949276 (lemmaContainsKeyImpliesGetValueByKeyDefined!2123 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896))))

(assert (=> b!4789334 (isDefined!10188 (getValueByKey!2331 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896))))

(declare-fun lt!1949277 () Unit!139688)

(assert (=> b!4789334 (= lt!1949277 lt!1949276)))

(declare-fun lemmaInListThenGetKeysListContains!1061 (List!54267 K!15712) Unit!139688)

(assert (=> b!4789334 (= lt!1949275 (lemmaInListThenGetKeysListContains!1061 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896))))

(assert (=> b!4789334 call!334939))

(declare-fun b!4789335 () Bool)

(assert (=> b!4789335 (= e!2990325 (keys!19755 (extractMap!2416 (toList!6857 lt!1949230))))))

(declare-fun b!4789336 () Bool)

(assert (=> b!4789336 false))

(declare-fun lt!1949280 () Unit!139688)

(declare-fun lt!1949274 () Unit!139688)

(assert (=> b!4789336 (= lt!1949280 lt!1949274)))

(declare-fun containsKey!3909 (List!54267 K!15712) Bool)

(assert (=> b!4789336 (containsKey!3909 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1066 (List!54267 K!15712) Unit!139688)

(assert (=> b!4789336 (= lt!1949274 (lemmaInGetKeysListThenContainsKey!1066 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896))))

(declare-fun Unit!139695 () Unit!139688)

(assert (=> b!4789336 (= e!2990328 Unit!139695)))

(declare-fun d!1532050 () Bool)

(assert (=> d!1532050 e!2990330))

(declare-fun res!2035111 () Bool)

(assert (=> d!1532050 (=> res!2035111 e!2990330)))

(assert (=> d!1532050 (= res!2035111 e!2990327)))

(declare-fun res!2035113 () Bool)

(assert (=> d!1532050 (=> (not res!2035113) (not e!2990327))))

(declare-fun lt!1949273 () Bool)

(assert (=> d!1532050 (= res!2035113 (not lt!1949273))))

(declare-fun lt!1949279 () Bool)

(assert (=> d!1532050 (= lt!1949273 lt!1949279)))

(declare-fun lt!1949278 () Unit!139688)

(assert (=> d!1532050 (= lt!1949278 e!2990326)))

(assert (=> d!1532050 (= c!816297 lt!1949279)))

(assert (=> d!1532050 (= lt!1949279 (containsKey!3909 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896))))

(assert (=> d!1532050 (= (contains!17745 (extractMap!2416 (toList!6857 lt!1949230)) key!5896) lt!1949273)))

(declare-fun b!4789337 () Bool)

(assert (=> b!4789337 (= e!2990329 (contains!17748 (keys!19755 (extractMap!2416 (toList!6857 lt!1949230))) key!5896))))

(assert (= (and d!1532050 c!816297) b!4789334))

(assert (= (and d!1532050 (not c!816297)) b!4789330))

(assert (= (and b!4789330 c!816296) b!4789336))

(assert (= (and b!4789330 (not c!816296)) b!4789333))

(assert (= (or b!4789334 b!4789330) bm!334934))

(assert (= (and bm!334934 c!816298) b!4789331))

(assert (= (and bm!334934 (not c!816298)) b!4789335))

(assert (= (and d!1532050 res!2035113) b!4789332))

(assert (= (and d!1532050 (not res!2035111)) b!4789329))

(assert (= (and b!4789329 res!2035112) b!4789337))

(assert (=> b!4789335 m!5768874))

(declare-fun m!5768936 () Bool)

(assert (=> b!4789335 m!5768936))

(declare-fun m!5768938 () Bool)

(assert (=> bm!334934 m!5768938))

(declare-fun m!5768940 () Bool)

(assert (=> b!4789331 m!5768940))

(declare-fun m!5768942 () Bool)

(assert (=> d!1532050 m!5768942))

(assert (=> b!4789336 m!5768942))

(declare-fun m!5768944 () Bool)

(assert (=> b!4789336 m!5768944))

(declare-fun m!5768946 () Bool)

(assert (=> b!4789329 m!5768946))

(assert (=> b!4789329 m!5768946))

(declare-fun m!5768948 () Bool)

(assert (=> b!4789329 m!5768948))

(assert (=> b!4789332 m!5768874))

(assert (=> b!4789332 m!5768936))

(assert (=> b!4789332 m!5768936))

(declare-fun m!5768950 () Bool)

(assert (=> b!4789332 m!5768950))

(declare-fun m!5768952 () Bool)

(assert (=> b!4789334 m!5768952))

(assert (=> b!4789334 m!5768946))

(assert (=> b!4789334 m!5768946))

(assert (=> b!4789334 m!5768948))

(declare-fun m!5768954 () Bool)

(assert (=> b!4789334 m!5768954))

(assert (=> b!4789337 m!5768874))

(assert (=> b!4789337 m!5768936))

(assert (=> b!4789337 m!5768936))

(assert (=> b!4789337 m!5768950))

(assert (=> b!4789258 d!1532050))

(declare-fun bs!1154007 () Bool)

(declare-fun d!1532056 () Bool)

(assert (= bs!1154007 (and d!1532056 start!492824)))

(declare-fun lambda!229946 () Int)

(assert (=> bs!1154007 (= lambda!229946 lambda!229934)))

(declare-fun bs!1154008 () Bool)

(assert (= bs!1154008 (and d!1532056 d!1532046)))

(assert (=> bs!1154008 (= lambda!229946 lambda!229940)))

(declare-fun lt!1949283 () ListMap!6329)

(declare-fun invariantList!1720 (List!54267) Bool)

(assert (=> d!1532056 (invariantList!1720 (toList!6858 lt!1949283))))

(declare-fun e!2990344 () ListMap!6329)

(assert (=> d!1532056 (= lt!1949283 e!2990344)))

(declare-fun c!816301 () Bool)

(assert (=> d!1532056 (= c!816301 (is-Cons!54144 (toList!6857 lt!1949230)))))

(assert (=> d!1532056 (forall!12206 (toList!6857 lt!1949230) lambda!229946)))

(assert (=> d!1532056 (= (extractMap!2416 (toList!6857 lt!1949230)) lt!1949283)))

(declare-fun b!4789353 () Bool)

(declare-fun addToMapMapFromBucket!1691 (List!54267 ListMap!6329) ListMap!6329)

(assert (=> b!4789353 (= e!2990344 (addToMapMapFromBucket!1691 (_2!31657 (h!60568 (toList!6857 lt!1949230))) (extractMap!2416 (t!361718 (toList!6857 lt!1949230)))))))

(declare-fun b!4789354 () Bool)

(assert (=> b!4789354 (= e!2990344 (ListMap!6330 Nil!54143))))

(assert (= (and d!1532056 c!816301) b!4789353))

(assert (= (and d!1532056 (not c!816301)) b!4789354))

(declare-fun m!5768964 () Bool)

(assert (=> d!1532056 m!5768964))

(declare-fun m!5768966 () Bool)

(assert (=> d!1532056 m!5768966))

(declare-fun m!5768968 () Bool)

(assert (=> b!4789353 m!5768968))

(assert (=> b!4789353 m!5768968))

(declare-fun m!5768970 () Bool)

(assert (=> b!4789353 m!5768970))

(assert (=> b!4789258 d!1532056))

(declare-fun d!1532064 () Bool)

(declare-fun isEmpty!29420 (Option!13044) Bool)

(assert (=> d!1532064 (= (isDefined!10186 (getPair!861 (apply!12950 lm!2473 lt!1949234) key!5896)) (not (isEmpty!29420 (getPair!861 (apply!12950 lm!2473 lt!1949234) key!5896))))))

(declare-fun bs!1154009 () Bool)

(assert (= bs!1154009 d!1532064))

(assert (=> bs!1154009 m!5768866))

(declare-fun m!5768972 () Bool)

(assert (=> bs!1154009 m!5768972))

(assert (=> b!4789253 d!1532064))

(declare-fun b!4789371 () Bool)

(declare-fun e!2990358 () Bool)

(declare-fun lt!1949289 () Option!13044)

(declare-fun contains!17749 (List!54267 tuple2!56724) Bool)

(declare-fun get!18442 (Option!13044) tuple2!56724)

(assert (=> b!4789371 (= e!2990358 (contains!17749 (apply!12950 lm!2473 lt!1949234) (get!18442 lt!1949289)))))

(declare-fun b!4789372 () Bool)

(declare-fun e!2990359 () Option!13044)

(declare-fun e!2990357 () Option!13044)

(assert (=> b!4789372 (= e!2990359 e!2990357)))

(declare-fun c!816307 () Bool)

(assert (=> b!4789372 (= c!816307 (is-Cons!54143 (apply!12950 lm!2473 lt!1949234)))))

(declare-fun b!4789373 () Bool)

(assert (=> b!4789373 (= e!2990357 (getPair!861 (t!361717 (apply!12950 lm!2473 lt!1949234)) key!5896))))

(declare-fun b!4789374 () Bool)

(declare-fun e!2990356 () Bool)

(assert (=> b!4789374 (= e!2990356 (not (containsKey!3907 (apply!12950 lm!2473 lt!1949234) key!5896)))))

(declare-fun b!4789375 () Bool)

(declare-fun res!2035134 () Bool)

(assert (=> b!4789375 (=> (not res!2035134) (not e!2990358))))

(assert (=> b!4789375 (= res!2035134 (= (_1!31656 (get!18442 lt!1949289)) key!5896))))

(declare-fun b!4789376 () Bool)

(declare-fun e!2990355 () Bool)

(assert (=> b!4789376 (= e!2990355 e!2990358)))

(declare-fun res!2035133 () Bool)

(assert (=> b!4789376 (=> (not res!2035133) (not e!2990358))))

(assert (=> b!4789376 (= res!2035133 (isDefined!10186 lt!1949289))))

(declare-fun d!1532066 () Bool)

(assert (=> d!1532066 e!2990355))

(declare-fun res!2035135 () Bool)

(assert (=> d!1532066 (=> res!2035135 e!2990355)))

(assert (=> d!1532066 (= res!2035135 e!2990356)))

(declare-fun res!2035136 () Bool)

(assert (=> d!1532066 (=> (not res!2035136) (not e!2990356))))

(assert (=> d!1532066 (= res!2035136 (isEmpty!29420 lt!1949289))))

(assert (=> d!1532066 (= lt!1949289 e!2990359)))

(declare-fun c!816306 () Bool)

(assert (=> d!1532066 (= c!816306 (and (is-Cons!54143 (apply!12950 lm!2473 lt!1949234)) (= (_1!31656 (h!60567 (apply!12950 lm!2473 lt!1949234))) key!5896)))))

(declare-fun noDuplicateKeys!2322 (List!54267) Bool)

(assert (=> d!1532066 (noDuplicateKeys!2322 (apply!12950 lm!2473 lt!1949234))))

(assert (=> d!1532066 (= (getPair!861 (apply!12950 lm!2473 lt!1949234) key!5896) lt!1949289)))

(declare-fun b!4789377 () Bool)

(assert (=> b!4789377 (= e!2990357 None!13043)))

(declare-fun b!4789378 () Bool)

(assert (=> b!4789378 (= e!2990359 (Some!13043 (h!60567 (apply!12950 lm!2473 lt!1949234))))))

(assert (= (and d!1532066 c!816306) b!4789378))

(assert (= (and d!1532066 (not c!816306)) b!4789372))

(assert (= (and b!4789372 c!816307) b!4789373))

(assert (= (and b!4789372 (not c!816307)) b!4789377))

(assert (= (and d!1532066 res!2035136) b!4789374))

(assert (= (and d!1532066 (not res!2035135)) b!4789376))

(assert (= (and b!4789376 res!2035133) b!4789375))

(assert (= (and b!4789375 res!2035134) b!4789371))

(declare-fun m!5768974 () Bool)

(assert (=> d!1532066 m!5768974))

(assert (=> d!1532066 m!5768864))

(declare-fun m!5768976 () Bool)

(assert (=> d!1532066 m!5768976))

(declare-fun m!5768978 () Bool)

(assert (=> b!4789373 m!5768978))

(declare-fun m!5768980 () Bool)

(assert (=> b!4789375 m!5768980))

(declare-fun m!5768982 () Bool)

(assert (=> b!4789376 m!5768982))

(assert (=> b!4789371 m!5768980))

(assert (=> b!4789371 m!5768864))

(assert (=> b!4789371 m!5768980))

(declare-fun m!5768984 () Bool)

(assert (=> b!4789371 m!5768984))

(assert (=> b!4789374 m!5768864))

(declare-fun m!5768988 () Bool)

(assert (=> b!4789374 m!5768988))

(assert (=> b!4789253 d!1532066))

(declare-fun d!1532068 () Bool)

(declare-datatypes ((Option!13047 0))(
  ( (None!13046) (Some!13046 (v!48317 List!54267)) )
))
(declare-fun get!18443 (Option!13047) List!54267)

(declare-fun getValueByKey!2332 (List!54268 (_ BitVec 64)) Option!13047)

(assert (=> d!1532068 (= (apply!12950 lm!2473 lt!1949234) (get!18443 (getValueByKey!2332 (toList!6857 lm!2473) lt!1949234)))))

(declare-fun bs!1154013 () Bool)

(assert (= bs!1154013 d!1532068))

(declare-fun m!5768992 () Bool)

(assert (=> bs!1154013 m!5768992))

(assert (=> bs!1154013 m!5768992))

(declare-fun m!5768994 () Bool)

(assert (=> bs!1154013 m!5768994))

(assert (=> b!4789253 d!1532068))

(declare-fun d!1532072 () Bool)

(declare-fun e!2990365 () Bool)

(assert (=> d!1532072 e!2990365))

(declare-fun res!2035139 () Bool)

(assert (=> d!1532072 (=> res!2035139 e!2990365)))

(declare-fun lt!1949299 () Bool)

(assert (=> d!1532072 (= res!2035139 (not lt!1949299))))

(declare-fun lt!1949301 () Bool)

(assert (=> d!1532072 (= lt!1949299 lt!1949301)))

(declare-fun lt!1949300 () Unit!139688)

(declare-fun e!2990364 () Unit!139688)

(assert (=> d!1532072 (= lt!1949300 e!2990364)))

(declare-fun c!816310 () Bool)

(assert (=> d!1532072 (= c!816310 lt!1949301)))

(declare-fun containsKey!3910 (List!54268 (_ BitVec 64)) Bool)

(assert (=> d!1532072 (= lt!1949301 (containsKey!3910 (toList!6857 lm!2473) lt!1949234))))

(assert (=> d!1532072 (= (contains!17744 lm!2473 lt!1949234) lt!1949299)))

(declare-fun b!4789385 () Bool)

(declare-fun lt!1949298 () Unit!139688)

(assert (=> b!4789385 (= e!2990364 lt!1949298)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2124 (List!54268 (_ BitVec 64)) Unit!139688)

(assert (=> b!4789385 (= lt!1949298 (lemmaContainsKeyImpliesGetValueByKeyDefined!2124 (toList!6857 lm!2473) lt!1949234))))

(declare-fun isDefined!10189 (Option!13047) Bool)

(assert (=> b!4789385 (isDefined!10189 (getValueByKey!2332 (toList!6857 lm!2473) lt!1949234))))

(declare-fun b!4789386 () Bool)

(declare-fun Unit!139696 () Unit!139688)

(assert (=> b!4789386 (= e!2990364 Unit!139696)))

(declare-fun b!4789387 () Bool)

(assert (=> b!4789387 (= e!2990365 (isDefined!10189 (getValueByKey!2332 (toList!6857 lm!2473) lt!1949234)))))

(assert (= (and d!1532072 c!816310) b!4789385))

(assert (= (and d!1532072 (not c!816310)) b!4789386))

(assert (= (and d!1532072 (not res!2035139)) b!4789387))

(declare-fun m!5768996 () Bool)

(assert (=> d!1532072 m!5768996))

(declare-fun m!5768998 () Bool)

(assert (=> b!4789385 m!5768998))

(assert (=> b!4789385 m!5768992))

(assert (=> b!4789385 m!5768992))

(declare-fun m!5769000 () Bool)

(assert (=> b!4789385 m!5769000))

(assert (=> b!4789387 m!5768992))

(assert (=> b!4789387 m!5768992))

(assert (=> b!4789387 m!5769000))

(assert (=> b!4789254 d!1532072))

(declare-fun d!1532074 () Bool)

(declare-fun res!2035147 () Bool)

(declare-fun e!2990373 () Bool)

(assert (=> d!1532074 (=> res!2035147 e!2990373)))

(declare-fun e!2990372 () Bool)

(assert (=> d!1532074 (= res!2035147 e!2990372)))

(declare-fun res!2035148 () Bool)

(assert (=> d!1532074 (=> (not res!2035148) (not e!2990372))))

(assert (=> d!1532074 (= res!2035148 (is-Cons!54144 (toList!6857 lm!2473)))))

(assert (=> d!1532074 (= (containsKeyBiggerList!539 (toList!6857 lm!2473) key!5896) e!2990373)))

(declare-fun b!4789394 () Bool)

(assert (=> b!4789394 (= e!2990372 (containsKey!3907 (_2!31657 (h!60568 (toList!6857 lm!2473))) key!5896))))

(declare-fun b!4789395 () Bool)

(declare-fun e!2990374 () Bool)

(assert (=> b!4789395 (= e!2990373 e!2990374)))

(declare-fun res!2035146 () Bool)

(assert (=> b!4789395 (=> (not res!2035146) (not e!2990374))))

(assert (=> b!4789395 (= res!2035146 (is-Cons!54144 (toList!6857 lm!2473)))))

(declare-fun b!4789396 () Bool)

(assert (=> b!4789396 (= e!2990374 (containsKeyBiggerList!539 (t!361718 (toList!6857 lm!2473)) key!5896))))

(assert (= (and d!1532074 res!2035148) b!4789394))

(assert (= (and d!1532074 (not res!2035147)) b!4789395))

(assert (= (and b!4789395 res!2035146) b!4789396))

(assert (=> b!4789394 m!5768870))

(declare-fun m!5769002 () Bool)

(assert (=> b!4789396 m!5769002))

(assert (=> b!4789254 d!1532074))

(declare-fun bs!1154014 () Bool)

(declare-fun d!1532076 () Bool)

(assert (= bs!1154014 (and d!1532076 start!492824)))

(declare-fun lambda!229954 () Int)

(assert (=> bs!1154014 (= lambda!229954 lambda!229934)))

(declare-fun bs!1154015 () Bool)

(assert (= bs!1154015 (and d!1532076 d!1532046)))

(assert (=> bs!1154015 (= lambda!229954 lambda!229940)))

(declare-fun bs!1154016 () Bool)

(assert (= bs!1154016 (and d!1532076 d!1532056)))

(assert (=> bs!1154016 (= lambda!229954 lambda!229946)))

(assert (=> d!1532076 (containsKeyBiggerList!539 (toList!6857 lm!2473) key!5896)))

(declare-fun lt!1949306 () Unit!139688)

(declare-fun choose!34455 (ListLongMap!5279 K!15712 Hashable!6889) Unit!139688)

(assert (=> d!1532076 (= lt!1949306 (choose!34455 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1532076 (forall!12206 (toList!6857 lm!2473) lambda!229954)))

(assert (=> d!1532076 (= (lemmaInLongMapThenContainsKeyBiggerList!279 lm!2473 key!5896 hashF!1559) lt!1949306)))

(declare-fun bs!1154017 () Bool)

(assert (= bs!1154017 d!1532076))

(assert (=> bs!1154017 m!5768846))

(declare-fun m!5769004 () Bool)

(assert (=> bs!1154017 m!5769004))

(declare-fun m!5769006 () Bool)

(assert (=> bs!1154017 m!5769006))

(assert (=> b!4789254 d!1532076))

(declare-fun bs!1154021 () Bool)

(declare-fun d!1532078 () Bool)

(assert (= bs!1154021 (and d!1532078 start!492824)))

(declare-fun lambda!229958 () Int)

(assert (=> bs!1154021 (= lambda!229958 lambda!229934)))

(declare-fun bs!1154022 () Bool)

(assert (= bs!1154022 (and d!1532078 d!1532046)))

(assert (=> bs!1154022 (= lambda!229958 lambda!229940)))

(declare-fun bs!1154023 () Bool)

(assert (= bs!1154023 (and d!1532078 d!1532056)))

(assert (=> bs!1154023 (= lambda!229958 lambda!229946)))

(declare-fun bs!1154024 () Bool)

(assert (= bs!1154024 (and d!1532078 d!1532076)))

(assert (=> bs!1154024 (= lambda!229958 lambda!229954)))

(declare-fun e!2990380 () Bool)

(assert (=> d!1532078 e!2990380))

(declare-fun res!2035154 () Bool)

(assert (=> d!1532078 (=> (not res!2035154) (not e!2990380))))

(assert (=> d!1532078 (= res!2035154 (contains!17744 lm!2473 (hash!4915 hashF!1559 key!5896)))))

(declare-fun lt!1949310 () Unit!139688)

(declare-fun choose!34456 (ListLongMap!5279 K!15712 Hashable!6889) Unit!139688)

(assert (=> d!1532078 (= lt!1949310 (choose!34456 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1532078 (forall!12206 (toList!6857 lm!2473) lambda!229958)))

(assert (=> d!1532078 (= (lemmaInGenericMapThenInLongMap!293 lm!2473 key!5896 hashF!1559) lt!1949310)))

(declare-fun b!4789402 () Bool)

(assert (=> b!4789402 (= e!2990380 (isDefined!10186 (getPair!861 (apply!12950 lm!2473 (hash!4915 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1532078 res!2035154) b!4789402))

(assert (=> d!1532078 m!5768850))

(assert (=> d!1532078 m!5768850))

(declare-fun m!5769020 () Bool)

(assert (=> d!1532078 m!5769020))

(declare-fun m!5769022 () Bool)

(assert (=> d!1532078 m!5769022))

(declare-fun m!5769024 () Bool)

(assert (=> d!1532078 m!5769024))

(assert (=> b!4789402 m!5768850))

(assert (=> b!4789402 m!5768850))

(declare-fun m!5769026 () Bool)

(assert (=> b!4789402 m!5769026))

(assert (=> b!4789402 m!5769026))

(declare-fun m!5769028 () Bool)

(assert (=> b!4789402 m!5769028))

(assert (=> b!4789402 m!5769028))

(declare-fun m!5769030 () Bool)

(assert (=> b!4789402 m!5769030))

(assert (=> b!4789254 d!1532078))

(declare-fun d!1532082 () Bool)

(declare-fun c!816315 () Bool)

(declare-fun e!2990390 () Bool)

(assert (=> d!1532082 (= c!816315 e!2990390)))

(declare-fun res!2035159 () Bool)

(assert (=> d!1532082 (=> (not res!2035159) (not e!2990390))))

(assert (=> d!1532082 (= res!2035159 (is-Cons!54144 (toList!6857 lm!2473)))))

(declare-fun e!2990389 () V!15958)

(assert (=> d!1532082 (= (getValue!85 (toList!6857 lm!2473) key!5896) e!2990389)))

(declare-fun b!4789417 () Bool)

(assert (=> b!4789417 (= e!2990390 (containsKey!3907 (_2!31657 (h!60568 (toList!6857 lm!2473))) key!5896))))

(declare-fun b!4789415 () Bool)

(assert (=> b!4789415 (= e!2990389 (_2!31656 (get!18442 (getPair!861 (_2!31657 (h!60568 (toList!6857 lm!2473))) key!5896))))))

(declare-fun b!4789416 () Bool)

(assert (=> b!4789416 (= e!2990389 (getValue!85 (t!361718 (toList!6857 lm!2473)) key!5896))))

(assert (= (and d!1532082 res!2035159) b!4789417))

(assert (= (and d!1532082 c!816315) b!4789415))

(assert (= (and d!1532082 (not c!816315)) b!4789416))

(assert (=> b!4789417 m!5768870))

(declare-fun m!5769032 () Bool)

(assert (=> b!4789415 m!5769032))

(assert (=> b!4789415 m!5769032))

(declare-fun m!5769034 () Bool)

(assert (=> b!4789415 m!5769034))

(declare-fun m!5769036 () Bool)

(assert (=> b!4789416 m!5769036))

(assert (=> b!4789254 d!1532082))

(declare-fun d!1532084 () Bool)

(declare-fun hash!4917 (Hashable!6889 K!15712) (_ BitVec 64))

(assert (=> d!1532084 (= (hash!4915 hashF!1559 key!5896) (hash!4917 hashF!1559 key!5896))))

(declare-fun bs!1154025 () Bool)

(assert (= bs!1154025 d!1532084))

(declare-fun m!5769038 () Bool)

(assert (=> bs!1154025 m!5769038))

(assert (=> b!4789254 d!1532084))

(declare-fun d!1532086 () Bool)

(declare-fun isEmpty!29421 (List!54268) Bool)

(assert (=> d!1532086 (= (isEmpty!29418 lm!2473) (isEmpty!29421 (toList!6857 lm!2473)))))

(declare-fun bs!1154026 () Bool)

(assert (= bs!1154026 d!1532086))

(declare-fun m!5769040 () Bool)

(assert (=> bs!1154026 m!5769040))

(assert (=> b!4789260 d!1532086))

(declare-fun d!1532088 () Bool)

(declare-fun e!2990394 () Bool)

(assert (=> d!1532088 e!2990394))

(declare-fun res!2035161 () Bool)

(assert (=> d!1532088 (=> res!2035161 e!2990394)))

(declare-fun lt!1949312 () Bool)

(assert (=> d!1532088 (= res!2035161 (not lt!1949312))))

(declare-fun lt!1949314 () Bool)

(assert (=> d!1532088 (= lt!1949312 lt!1949314)))

(declare-fun lt!1949313 () Unit!139688)

(declare-fun e!2990393 () Unit!139688)

(assert (=> d!1532088 (= lt!1949313 e!2990393)))

(declare-fun c!816317 () Bool)

(assert (=> d!1532088 (= c!816317 lt!1949314)))

(assert (=> d!1532088 (= lt!1949314 (containsKey!3910 (toList!6857 lt!1949230) lt!1949234))))

(assert (=> d!1532088 (= (contains!17744 lt!1949230 lt!1949234) lt!1949312)))

(declare-fun b!4789421 () Bool)

(declare-fun lt!1949311 () Unit!139688)

(assert (=> b!4789421 (= e!2990393 lt!1949311)))

(assert (=> b!4789421 (= lt!1949311 (lemmaContainsKeyImpliesGetValueByKeyDefined!2124 (toList!6857 lt!1949230) lt!1949234))))

(assert (=> b!4789421 (isDefined!10189 (getValueByKey!2332 (toList!6857 lt!1949230) lt!1949234))))

(declare-fun b!4789422 () Bool)

(declare-fun Unit!139697 () Unit!139688)

(assert (=> b!4789422 (= e!2990393 Unit!139697)))

(declare-fun b!4789423 () Bool)

(assert (=> b!4789423 (= e!2990394 (isDefined!10189 (getValueByKey!2332 (toList!6857 lt!1949230) lt!1949234)))))

(assert (= (and d!1532088 c!816317) b!4789421))

(assert (= (and d!1532088 (not c!816317)) b!4789422))

(assert (= (and d!1532088 (not res!2035161)) b!4789423))

(declare-fun m!5769044 () Bool)

(assert (=> d!1532088 m!5769044))

(declare-fun m!5769046 () Bool)

(assert (=> b!4789421 m!5769046))

(declare-fun m!5769048 () Bool)

(assert (=> b!4789421 m!5769048))

(assert (=> b!4789421 m!5769048))

(declare-fun m!5769050 () Bool)

(assert (=> b!4789421 m!5769050))

(assert (=> b!4789423 m!5769048))

(assert (=> b!4789423 m!5769048))

(assert (=> b!4789423 m!5769050))

(assert (=> b!4789260 d!1532088))

(declare-fun d!1532090 () Bool)

(declare-fun tail!9240 (List!54268) List!54268)

(assert (=> d!1532090 (= (tail!9238 lm!2473) (ListLongMap!5280 (tail!9240 (toList!6857 lm!2473))))))

(declare-fun bs!1154027 () Bool)

(assert (= bs!1154027 d!1532090))

(declare-fun m!5769056 () Bool)

(assert (=> bs!1154027 m!5769056))

(assert (=> b!4789260 d!1532090))

(declare-fun b!4789424 () Bool)

(declare-fun e!2990400 () Bool)

(declare-fun e!2990399 () Bool)

(assert (=> b!4789424 (= e!2990400 e!2990399)))

(declare-fun res!2035163 () Bool)

(assert (=> b!4789424 (=> (not res!2035163) (not e!2990399))))

(assert (=> b!4789424 (= res!2035163 (isDefined!10188 (getValueByKey!2331 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896)))))

(declare-fun b!4789425 () Bool)

(declare-fun e!2990396 () Unit!139688)

(declare-fun e!2990398 () Unit!139688)

(assert (=> b!4789425 (= e!2990396 e!2990398)))

(declare-fun c!816318 () Bool)

(declare-fun call!334940 () Bool)

(assert (=> b!4789425 (= c!816318 call!334940)))

(declare-fun b!4789426 () Bool)

(declare-fun e!2990395 () List!54271)

(assert (=> b!4789426 (= e!2990395 (getKeysList!1066 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))))))

(declare-fun b!4789427 () Bool)

(declare-fun e!2990397 () Bool)

(assert (=> b!4789427 (= e!2990397 (not (contains!17748 (keys!19755 (extractMap!2416 (toList!6857 lm!2473))) key!5896)))))

(declare-fun bm!334935 () Bool)

(assert (=> bm!334935 (= call!334940 (contains!17748 e!2990395 key!5896))))

(declare-fun c!816320 () Bool)

(declare-fun c!816319 () Bool)

(assert (=> bm!334935 (= c!816320 c!816319)))

(declare-fun b!4789428 () Bool)

(declare-fun Unit!139698 () Unit!139688)

(assert (=> b!4789428 (= e!2990398 Unit!139698)))

(declare-fun b!4789429 () Bool)

(declare-fun lt!1949317 () Unit!139688)

(assert (=> b!4789429 (= e!2990396 lt!1949317)))

(declare-fun lt!1949318 () Unit!139688)

(assert (=> b!4789429 (= lt!1949318 (lemmaContainsKeyImpliesGetValueByKeyDefined!2123 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896))))

(assert (=> b!4789429 (isDefined!10188 (getValueByKey!2331 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896))))

(declare-fun lt!1949319 () Unit!139688)

(assert (=> b!4789429 (= lt!1949319 lt!1949318)))

(assert (=> b!4789429 (= lt!1949317 (lemmaInListThenGetKeysListContains!1061 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896))))

(assert (=> b!4789429 call!334940))

(declare-fun b!4789430 () Bool)

(assert (=> b!4789430 (= e!2990395 (keys!19755 (extractMap!2416 (toList!6857 lm!2473))))))

(declare-fun b!4789431 () Bool)

(assert (=> b!4789431 false))

(declare-fun lt!1949322 () Unit!139688)

(declare-fun lt!1949316 () Unit!139688)

(assert (=> b!4789431 (= lt!1949322 lt!1949316)))

(assert (=> b!4789431 (containsKey!3909 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896)))

(assert (=> b!4789431 (= lt!1949316 (lemmaInGetKeysListThenContainsKey!1066 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896))))

(declare-fun Unit!139699 () Unit!139688)

(assert (=> b!4789431 (= e!2990398 Unit!139699)))

(declare-fun d!1532094 () Bool)

(assert (=> d!1532094 e!2990400))

(declare-fun res!2035162 () Bool)

(assert (=> d!1532094 (=> res!2035162 e!2990400)))

(assert (=> d!1532094 (= res!2035162 e!2990397)))

(declare-fun res!2035164 () Bool)

(assert (=> d!1532094 (=> (not res!2035164) (not e!2990397))))

(declare-fun lt!1949315 () Bool)

(assert (=> d!1532094 (= res!2035164 (not lt!1949315))))

(declare-fun lt!1949321 () Bool)

(assert (=> d!1532094 (= lt!1949315 lt!1949321)))

(declare-fun lt!1949320 () Unit!139688)

(assert (=> d!1532094 (= lt!1949320 e!2990396)))

(assert (=> d!1532094 (= c!816319 lt!1949321)))

(assert (=> d!1532094 (= lt!1949321 (containsKey!3909 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896))))

(assert (=> d!1532094 (= (contains!17745 (extractMap!2416 (toList!6857 lm!2473)) key!5896) lt!1949315)))

(declare-fun b!4789432 () Bool)

(assert (=> b!4789432 (= e!2990399 (contains!17748 (keys!19755 (extractMap!2416 (toList!6857 lm!2473))) key!5896))))

(assert (= (and d!1532094 c!816319) b!4789429))

(assert (= (and d!1532094 (not c!816319)) b!4789425))

(assert (= (and b!4789425 c!816318) b!4789431))

(assert (= (and b!4789425 (not c!816318)) b!4789428))

(assert (= (or b!4789429 b!4789425) bm!334935))

(assert (= (and bm!334935 c!816320) b!4789426))

(assert (= (and bm!334935 (not c!816320)) b!4789430))

(assert (= (and d!1532094 res!2035164) b!4789427))

(assert (= (and d!1532094 (not res!2035162)) b!4789424))

(assert (= (and b!4789424 res!2035163) b!4789432))

(assert (=> b!4789430 m!5768842))

(declare-fun m!5769058 () Bool)

(assert (=> b!4789430 m!5769058))

(declare-fun m!5769060 () Bool)

(assert (=> bm!334935 m!5769060))

(declare-fun m!5769062 () Bool)

(assert (=> b!4789426 m!5769062))

(declare-fun m!5769064 () Bool)

(assert (=> d!1532094 m!5769064))

(assert (=> b!4789431 m!5769064))

(declare-fun m!5769066 () Bool)

(assert (=> b!4789431 m!5769066))

(declare-fun m!5769068 () Bool)

(assert (=> b!4789424 m!5769068))

(assert (=> b!4789424 m!5769068))

(declare-fun m!5769070 () Bool)

(assert (=> b!4789424 m!5769070))

(assert (=> b!4789427 m!5768842))

(assert (=> b!4789427 m!5769058))

(assert (=> b!4789427 m!5769058))

(declare-fun m!5769072 () Bool)

(assert (=> b!4789427 m!5769072))

(declare-fun m!5769074 () Bool)

(assert (=> b!4789429 m!5769074))

(assert (=> b!4789429 m!5769068))

(assert (=> b!4789429 m!5769068))

(assert (=> b!4789429 m!5769070))

(declare-fun m!5769076 () Bool)

(assert (=> b!4789429 m!5769076))

(assert (=> b!4789432 m!5768842))

(assert (=> b!4789432 m!5769058))

(assert (=> b!4789432 m!5769058))

(assert (=> b!4789432 m!5769072))

(assert (=> b!4789255 d!1532094))

(declare-fun bs!1154028 () Bool)

(declare-fun d!1532096 () Bool)

(assert (= bs!1154028 (and d!1532096 d!1532076)))

(declare-fun lambda!229959 () Int)

(assert (=> bs!1154028 (= lambda!229959 lambda!229954)))

(declare-fun bs!1154029 () Bool)

(assert (= bs!1154029 (and d!1532096 d!1532046)))

(assert (=> bs!1154029 (= lambda!229959 lambda!229940)))

(declare-fun bs!1154030 () Bool)

(assert (= bs!1154030 (and d!1532096 d!1532078)))

(assert (=> bs!1154030 (= lambda!229959 lambda!229958)))

(declare-fun bs!1154031 () Bool)

(assert (= bs!1154031 (and d!1532096 d!1532056)))

(assert (=> bs!1154031 (= lambda!229959 lambda!229946)))

(declare-fun bs!1154032 () Bool)

(assert (= bs!1154032 (and d!1532096 start!492824)))

(assert (=> bs!1154032 (= lambda!229959 lambda!229934)))

(declare-fun lt!1949323 () ListMap!6329)

(assert (=> d!1532096 (invariantList!1720 (toList!6858 lt!1949323))))

(declare-fun e!2990401 () ListMap!6329)

(assert (=> d!1532096 (= lt!1949323 e!2990401)))

(declare-fun c!816321 () Bool)

(assert (=> d!1532096 (= c!816321 (is-Cons!54144 (toList!6857 lm!2473)))))

(assert (=> d!1532096 (forall!12206 (toList!6857 lm!2473) lambda!229959)))

(assert (=> d!1532096 (= (extractMap!2416 (toList!6857 lm!2473)) lt!1949323)))

(declare-fun b!4789433 () Bool)

(assert (=> b!4789433 (= e!2990401 (addToMapMapFromBucket!1691 (_2!31657 (h!60568 (toList!6857 lm!2473))) (extractMap!2416 (t!361718 (toList!6857 lm!2473)))))))

(declare-fun b!4789434 () Bool)

(assert (=> b!4789434 (= e!2990401 (ListMap!6330 Nil!54143))))

(assert (= (and d!1532096 c!816321) b!4789433))

(assert (= (and d!1532096 (not c!816321)) b!4789434))

(declare-fun m!5769078 () Bool)

(assert (=> d!1532096 m!5769078))

(declare-fun m!5769080 () Bool)

(assert (=> d!1532096 m!5769080))

(declare-fun m!5769082 () Bool)

(assert (=> b!4789433 m!5769082))

(assert (=> b!4789433 m!5769082))

(declare-fun m!5769084 () Bool)

(assert (=> b!4789433 m!5769084))

(assert (=> b!4789255 d!1532096))

(declare-fun bs!1154033 () Bool)

(declare-fun d!1532098 () Bool)

(assert (= bs!1154033 (and d!1532098 d!1532076)))

(declare-fun lambda!229962 () Int)

(assert (=> bs!1154033 (not (= lambda!229962 lambda!229954))))

(declare-fun bs!1154034 () Bool)

(assert (= bs!1154034 (and d!1532098 d!1532046)))

(assert (=> bs!1154034 (not (= lambda!229962 lambda!229940))))

(declare-fun bs!1154035 () Bool)

(assert (= bs!1154035 (and d!1532098 d!1532096)))

(assert (=> bs!1154035 (not (= lambda!229962 lambda!229959))))

(declare-fun bs!1154036 () Bool)

(assert (= bs!1154036 (and d!1532098 d!1532078)))

(assert (=> bs!1154036 (not (= lambda!229962 lambda!229958))))

(declare-fun bs!1154037 () Bool)

(assert (= bs!1154037 (and d!1532098 d!1532056)))

(assert (=> bs!1154037 (not (= lambda!229962 lambda!229946))))

(declare-fun bs!1154038 () Bool)

(assert (= bs!1154038 (and d!1532098 start!492824)))

(assert (=> bs!1154038 (not (= lambda!229962 lambda!229934))))

(assert (=> d!1532098 true))

(assert (=> d!1532098 (= (allKeysSameHashInMap!2294 lm!2473 hashF!1559) (forall!12206 (toList!6857 lm!2473) lambda!229962))))

(declare-fun bs!1154039 () Bool)

(assert (= bs!1154039 d!1532098))

(declare-fun m!5769086 () Bool)

(assert (=> bs!1154039 m!5769086))

(assert (=> b!4789261 d!1532098))

(declare-fun d!1532100 () Bool)

(declare-fun res!2035169 () Bool)

(declare-fun e!2990406 () Bool)

(assert (=> d!1532100 (=> res!2035169 e!2990406)))

(assert (=> d!1532100 (= res!2035169 (is-Nil!54144 (toList!6857 lm!2473)))))

(assert (=> d!1532100 (= (forall!12206 (toList!6857 lm!2473) lambda!229934) e!2990406)))

(declare-fun b!4789441 () Bool)

(declare-fun e!2990407 () Bool)

(assert (=> b!4789441 (= e!2990406 e!2990407)))

(declare-fun res!2035170 () Bool)

(assert (=> b!4789441 (=> (not res!2035170) (not e!2990407))))

(declare-fun dynLambda!22046 (Int tuple2!56726) Bool)

(assert (=> b!4789441 (= res!2035170 (dynLambda!22046 lambda!229934 (h!60568 (toList!6857 lm!2473))))))

(declare-fun b!4789442 () Bool)

(assert (=> b!4789442 (= e!2990407 (forall!12206 (t!361718 (toList!6857 lm!2473)) lambda!229934))))

(assert (= (and d!1532100 (not res!2035169)) b!4789441))

(assert (= (and b!4789441 res!2035170) b!4789442))

(declare-fun b_lambda!186421 () Bool)

(assert (=> (not b_lambda!186421) (not b!4789441)))

(declare-fun m!5769088 () Bool)

(assert (=> b!4789441 m!5769088))

(declare-fun m!5769090 () Bool)

(assert (=> b!4789442 m!5769090))

(assert (=> start!492824 d!1532100))

(declare-fun d!1532102 () Bool)

(declare-fun isStrictlySorted!868 (List!54268) Bool)

(assert (=> d!1532102 (= (inv!69739 lm!2473) (isStrictlySorted!868 (toList!6857 lm!2473)))))

(declare-fun bs!1154040 () Bool)

(assert (= bs!1154040 d!1532102))

(declare-fun m!5769092 () Bool)

(assert (=> bs!1154040 m!5769092))

(assert (=> start!492824 d!1532102))

(declare-fun b!4789447 () Bool)

(declare-fun e!2990410 () Bool)

(declare-fun tp!1357849 () Bool)

(declare-fun tp!1357850 () Bool)

(assert (=> b!4789447 (= e!2990410 (and tp!1357849 tp!1357850))))

(assert (=> b!4789256 (= tp!1357841 e!2990410)))

(assert (= (and b!4789256 (is-Cons!54144 (toList!6857 lm!2473))) b!4789447))

(declare-fun b_lambda!186423 () Bool)

(assert (= b_lambda!186421 (or start!492824 b_lambda!186423)))

(declare-fun bs!1154041 () Bool)

(declare-fun d!1532104 () Bool)

(assert (= bs!1154041 (and d!1532104 start!492824)))

(assert (=> bs!1154041 (= (dynLambda!22046 lambda!229934 (h!60568 (toList!6857 lm!2473))) (noDuplicateKeys!2322 (_2!31657 (h!60568 (toList!6857 lm!2473)))))))

(declare-fun m!5769094 () Bool)

(assert (=> bs!1154041 m!5769094))

(assert (=> b!4789441 d!1532104))

(push 1)

(assert (not bm!334934))

(assert (not b!4789442))

(assert (not d!1532084))

(assert (not b!4789336))

(assert (not b!4789402))

(assert (not bs!1154041))

(assert (not d!1532050))

(assert (not b!4789373))

(assert (not d!1532086))

(assert (not b!4789371))

(assert (not b!4789337))

(assert (not d!1532090))

(assert (not b!4789417))

(assert (not b!4789353))

(assert (not b!4789423))

(assert (not b!4789334))

(assert (not d!1532064))

(assert (not b!4789332))

(assert (not b!4789421))

(assert (not d!1532066))

(assert (not b!4789433))

(assert (not d!1532076))

(assert (not b!4789387))

(assert (not d!1532098))

(assert (not b_lambda!186423))

(assert (not d!1532068))

(assert (not d!1532072))

(assert (not b!4789447))

(assert (not b!4789415))

(assert tp_is_empty!33439)

(assert (not b!4789331))

(assert tp_is_empty!33437)

(assert (not b!4789429))

(assert (not d!1532088))

(assert (not d!1532078))

(assert (not d!1532056))

(assert (not b!4789329))

(assert (not b!4789375))

(assert (not d!1532096))

(assert (not b!4789374))

(assert (not b!4789385))

(assert (not bm!334935))

(assert (not b!4789424))

(assert (not d!1532102))

(assert (not d!1532094))

(assert (not b!4789394))

(assert (not b!4789298))

(assert (not b!4789431))

(assert (not d!1532046))

(assert (not b!4789335))

(assert (not b!4789432))

(assert (not b!4789426))

(assert (not b!4789376))

(assert (not b!4789427))

(assert (not b!4789430))

(assert (not b!4789416))

(assert (not b!4789396))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1532132 () Bool)

(declare-fun res!2035199 () Bool)

(declare-fun e!2990465 () Bool)

(assert (=> d!1532132 (=> res!2035199 e!2990465)))

(assert (=> d!1532132 (= res!2035199 (and (is-Cons!54143 (t!361717 (_2!31657 (h!60568 (toList!6857 lm!2473))))) (= (_1!31656 (h!60567 (t!361717 (_2!31657 (h!60568 (toList!6857 lm!2473)))))) key!5896)))))

(assert (=> d!1532132 (= (containsKey!3907 (t!361717 (_2!31657 (h!60568 (toList!6857 lm!2473)))) key!5896) e!2990465)))

(declare-fun b!4789533 () Bool)

(declare-fun e!2990466 () Bool)

(assert (=> b!4789533 (= e!2990465 e!2990466)))

(declare-fun res!2035200 () Bool)

(assert (=> b!4789533 (=> (not res!2035200) (not e!2990466))))

(assert (=> b!4789533 (= res!2035200 (is-Cons!54143 (t!361717 (_2!31657 (h!60568 (toList!6857 lm!2473))))))))

(declare-fun b!4789534 () Bool)

(assert (=> b!4789534 (= e!2990466 (containsKey!3907 (t!361717 (t!361717 (_2!31657 (h!60568 (toList!6857 lm!2473))))) key!5896))))

(assert (= (and d!1532132 (not res!2035199)) b!4789533))

(assert (= (and b!4789533 res!2035200) b!4789534))

(declare-fun m!5769198 () Bool)

(assert (=> b!4789534 m!5769198))

(assert (=> b!4789298 d!1532132))

(declare-fun d!1532134 () Bool)

(declare-fun lt!1949384 () Bool)

(declare-fun content!9692 (List!54271) (Set K!15712))

(assert (=> d!1532134 (= lt!1949384 (set.member key!5896 (content!9692 e!2990325)))))

(declare-fun e!2990471 () Bool)

(assert (=> d!1532134 (= lt!1949384 e!2990471)))

(declare-fun res!2035206 () Bool)

(assert (=> d!1532134 (=> (not res!2035206) (not e!2990471))))

(assert (=> d!1532134 (= res!2035206 (is-Cons!54147 e!2990325))))

(assert (=> d!1532134 (= (contains!17748 e!2990325 key!5896) lt!1949384)))

(declare-fun b!4789539 () Bool)

(declare-fun e!2990472 () Bool)

(assert (=> b!4789539 (= e!2990471 e!2990472)))

(declare-fun res!2035205 () Bool)

(assert (=> b!4789539 (=> res!2035205 e!2990472)))

(assert (=> b!4789539 (= res!2035205 (= (h!60571 e!2990325) key!5896))))

(declare-fun b!4789540 () Bool)

(assert (=> b!4789540 (= e!2990472 (contains!17748 (t!361721 e!2990325) key!5896))))

(assert (= (and d!1532134 res!2035206) b!4789539))

(assert (= (and b!4789539 (not res!2035205)) b!4789540))

(declare-fun m!5769200 () Bool)

(assert (=> d!1532134 m!5769200))

(declare-fun m!5769202 () Bool)

(assert (=> d!1532134 m!5769202))

(declare-fun m!5769204 () Bool)

(assert (=> b!4789540 m!5769204))

(assert (=> bm!334934 d!1532134))

(assert (=> b!4789417 d!1532044))

(declare-fun d!1532136 () Bool)

(assert (=> d!1532136 (isDefined!10188 (getValueByKey!2331 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896))))

(declare-fun lt!1949387 () Unit!139688)

(declare-fun choose!34460 (List!54267 K!15712) Unit!139688)

(assert (=> d!1532136 (= lt!1949387 (choose!34460 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896))))

(assert (=> d!1532136 (invariantList!1720 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))))

(assert (=> d!1532136 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2123 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896) lt!1949387)))

(declare-fun bs!1154064 () Bool)

(assert (= bs!1154064 d!1532136))

(assert (=> bs!1154064 m!5768946))

(assert (=> bs!1154064 m!5768946))

(assert (=> bs!1154064 m!5768948))

(declare-fun m!5769206 () Bool)

(assert (=> bs!1154064 m!5769206))

(declare-fun m!5769208 () Bool)

(assert (=> bs!1154064 m!5769208))

(assert (=> b!4789334 d!1532136))

(declare-fun d!1532138 () Bool)

(declare-fun isEmpty!29424 (Option!13046) Bool)

(assert (=> d!1532138 (= (isDefined!10188 (getValueByKey!2331 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896)) (not (isEmpty!29424 (getValueByKey!2331 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896))))))

(declare-fun bs!1154065 () Bool)

(assert (= bs!1154065 d!1532138))

(assert (=> bs!1154065 m!5768946))

(declare-fun m!5769210 () Bool)

(assert (=> bs!1154065 m!5769210))

(assert (=> b!4789334 d!1532138))

(declare-fun b!4789551 () Bool)

(declare-fun e!2990478 () Option!13046)

(assert (=> b!4789551 (= e!2990478 (getValueByKey!2331 (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) key!5896))))

(declare-fun b!4789552 () Bool)

(assert (=> b!4789552 (= e!2990478 None!13045)))

(declare-fun d!1532140 () Bool)

(declare-fun c!816352 () Bool)

(assert (=> d!1532140 (= c!816352 (and (is-Cons!54143 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (= (_1!31656 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))) key!5896)))))

(declare-fun e!2990477 () Option!13046)

(assert (=> d!1532140 (= (getValueByKey!2331 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896) e!2990477)))

(declare-fun b!4789549 () Bool)

(assert (=> b!4789549 (= e!2990477 (Some!13045 (_2!31656 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))))))))

(declare-fun b!4789550 () Bool)

(assert (=> b!4789550 (= e!2990477 e!2990478)))

(declare-fun c!816353 () Bool)

(assert (=> b!4789550 (= c!816353 (and (is-Cons!54143 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (not (= (_1!31656 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))) key!5896))))))

(assert (= (and d!1532140 c!816352) b!4789549))

(assert (= (and d!1532140 (not c!816352)) b!4789550))

(assert (= (and b!4789550 c!816353) b!4789551))

(assert (= (and b!4789550 (not c!816353)) b!4789552))

(declare-fun m!5769212 () Bool)

(assert (=> b!4789551 m!5769212))

(assert (=> b!4789334 d!1532140))

(declare-fun d!1532142 () Bool)

(assert (=> d!1532142 (contains!17748 (getKeysList!1066 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) key!5896)))

(declare-fun lt!1949390 () Unit!139688)

(declare-fun choose!34461 (List!54267 K!15712) Unit!139688)

(assert (=> d!1532142 (= lt!1949390 (choose!34461 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896))))

(assert (=> d!1532142 (invariantList!1720 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))))

(assert (=> d!1532142 (= (lemmaInListThenGetKeysListContains!1061 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896) lt!1949390)))

(declare-fun bs!1154066 () Bool)

(assert (= bs!1154066 d!1532142))

(assert (=> bs!1154066 m!5768940))

(assert (=> bs!1154066 m!5768940))

(declare-fun m!5769214 () Bool)

(assert (=> bs!1154066 m!5769214))

(declare-fun m!5769216 () Bool)

(assert (=> bs!1154066 m!5769216))

(assert (=> bs!1154066 m!5769208))

(assert (=> b!4789334 d!1532142))

(declare-fun d!1532144 () Bool)

(declare-fun res!2035211 () Bool)

(declare-fun e!2990483 () Bool)

(assert (=> d!1532144 (=> res!2035211 e!2990483)))

(assert (=> d!1532144 (= res!2035211 (not (is-Cons!54143 (_2!31657 (h!60568 (toList!6857 lm!2473))))))))

(assert (=> d!1532144 (= (noDuplicateKeys!2322 (_2!31657 (h!60568 (toList!6857 lm!2473)))) e!2990483)))

(declare-fun b!4789557 () Bool)

(declare-fun e!2990484 () Bool)

(assert (=> b!4789557 (= e!2990483 e!2990484)))

(declare-fun res!2035212 () Bool)

(assert (=> b!4789557 (=> (not res!2035212) (not e!2990484))))

(assert (=> b!4789557 (= res!2035212 (not (containsKey!3907 (t!361717 (_2!31657 (h!60568 (toList!6857 lm!2473)))) (_1!31656 (h!60567 (_2!31657 (h!60568 (toList!6857 lm!2473))))))))))

(declare-fun b!4789558 () Bool)

(assert (=> b!4789558 (= e!2990484 (noDuplicateKeys!2322 (t!361717 (_2!31657 (h!60568 (toList!6857 lm!2473))))))))

(assert (= (and d!1532144 (not res!2035211)) b!4789557))

(assert (= (and b!4789557 res!2035212) b!4789558))

(declare-fun m!5769218 () Bool)

(assert (=> b!4789557 m!5769218))

(declare-fun m!5769220 () Bool)

(assert (=> b!4789558 m!5769220))

(assert (=> bs!1154041 d!1532144))

(declare-fun d!1532146 () Bool)

(assert (=> d!1532146 (= (get!18442 (getPair!861 (_2!31657 (h!60568 (toList!6857 lm!2473))) key!5896)) (v!48314 (getPair!861 (_2!31657 (h!60568 (toList!6857 lm!2473))) key!5896)))))

(assert (=> b!4789415 d!1532146))

(declare-fun b!4789559 () Bool)

(declare-fun e!2990488 () Bool)

(declare-fun lt!1949391 () Option!13044)

(assert (=> b!4789559 (= e!2990488 (contains!17749 (_2!31657 (h!60568 (toList!6857 lm!2473))) (get!18442 lt!1949391)))))

(declare-fun b!4789560 () Bool)

(declare-fun e!2990489 () Option!13044)

(declare-fun e!2990487 () Option!13044)

(assert (=> b!4789560 (= e!2990489 e!2990487)))

(declare-fun c!816355 () Bool)

(assert (=> b!4789560 (= c!816355 (is-Cons!54143 (_2!31657 (h!60568 (toList!6857 lm!2473)))))))

(declare-fun b!4789561 () Bool)

(assert (=> b!4789561 (= e!2990487 (getPair!861 (t!361717 (_2!31657 (h!60568 (toList!6857 lm!2473)))) key!5896))))

(declare-fun b!4789562 () Bool)

(declare-fun e!2990486 () Bool)

(assert (=> b!4789562 (= e!2990486 (not (containsKey!3907 (_2!31657 (h!60568 (toList!6857 lm!2473))) key!5896)))))

(declare-fun b!4789563 () Bool)

(declare-fun res!2035214 () Bool)

(assert (=> b!4789563 (=> (not res!2035214) (not e!2990488))))

(assert (=> b!4789563 (= res!2035214 (= (_1!31656 (get!18442 lt!1949391)) key!5896))))

(declare-fun b!4789564 () Bool)

(declare-fun e!2990485 () Bool)

(assert (=> b!4789564 (= e!2990485 e!2990488)))

(declare-fun res!2035213 () Bool)

(assert (=> b!4789564 (=> (not res!2035213) (not e!2990488))))

(assert (=> b!4789564 (= res!2035213 (isDefined!10186 lt!1949391))))

(declare-fun d!1532148 () Bool)

(assert (=> d!1532148 e!2990485))

(declare-fun res!2035215 () Bool)

(assert (=> d!1532148 (=> res!2035215 e!2990485)))

(assert (=> d!1532148 (= res!2035215 e!2990486)))

(declare-fun res!2035216 () Bool)

(assert (=> d!1532148 (=> (not res!2035216) (not e!2990486))))

(assert (=> d!1532148 (= res!2035216 (isEmpty!29420 lt!1949391))))

(assert (=> d!1532148 (= lt!1949391 e!2990489)))

(declare-fun c!816354 () Bool)

(assert (=> d!1532148 (= c!816354 (and (is-Cons!54143 (_2!31657 (h!60568 (toList!6857 lm!2473)))) (= (_1!31656 (h!60567 (_2!31657 (h!60568 (toList!6857 lm!2473))))) key!5896)))))

(assert (=> d!1532148 (noDuplicateKeys!2322 (_2!31657 (h!60568 (toList!6857 lm!2473))))))

(assert (=> d!1532148 (= (getPair!861 (_2!31657 (h!60568 (toList!6857 lm!2473))) key!5896) lt!1949391)))

(declare-fun b!4789565 () Bool)

(assert (=> b!4789565 (= e!2990487 None!13043)))

(declare-fun b!4789566 () Bool)

(assert (=> b!4789566 (= e!2990489 (Some!13043 (h!60567 (_2!31657 (h!60568 (toList!6857 lm!2473))))))))

(assert (= (and d!1532148 c!816354) b!4789566))

(assert (= (and d!1532148 (not c!816354)) b!4789560))

(assert (= (and b!4789560 c!816355) b!4789561))

(assert (= (and b!4789560 (not c!816355)) b!4789565))

(assert (= (and d!1532148 res!2035216) b!4789562))

(assert (= (and d!1532148 (not res!2035215)) b!4789564))

(assert (= (and b!4789564 res!2035213) b!4789563))

(assert (= (and b!4789563 res!2035214) b!4789559))

(declare-fun m!5769222 () Bool)

(assert (=> d!1532148 m!5769222))

(assert (=> d!1532148 m!5769094))

(declare-fun m!5769224 () Bool)

(assert (=> b!4789561 m!5769224))

(declare-fun m!5769226 () Bool)

(assert (=> b!4789563 m!5769226))

(declare-fun m!5769228 () Bool)

(assert (=> b!4789564 m!5769228))

(assert (=> b!4789559 m!5769226))

(assert (=> b!4789559 m!5769226))

(declare-fun m!5769230 () Bool)

(assert (=> b!4789559 m!5769230))

(assert (=> b!4789562 m!5768870))

(assert (=> b!4789415 d!1532148))

(declare-fun b!4789578 () Bool)

(assert (=> b!4789578 true))

(declare-fun bs!1154067 () Bool)

(declare-fun b!4789577 () Bool)

(assert (= bs!1154067 (and b!4789577 b!4789578)))

(declare-fun lambda!229999 () Int)

(declare-fun lambda!229998 () Int)

(assert (=> bs!1154067 (= lambda!229999 lambda!229998)))

(assert (=> b!4789577 true))

(declare-fun lt!1949453 () ListMap!6329)

(declare-fun lambda!230000 () Int)

(assert (=> bs!1154067 (= (= lt!1949453 (extractMap!2416 (t!361718 (toList!6857 lm!2473)))) (= lambda!230000 lambda!229998))))

(assert (=> b!4789577 (= (= lt!1949453 (extractMap!2416 (t!361718 (toList!6857 lm!2473)))) (= lambda!230000 lambda!229999))))

(assert (=> b!4789577 true))

(declare-fun bs!1154068 () Bool)

(declare-fun d!1532150 () Bool)

(assert (= bs!1154068 (and d!1532150 b!4789578)))

(declare-fun lt!1949441 () ListMap!6329)

(declare-fun lambda!230001 () Int)

(assert (=> bs!1154068 (= (= lt!1949441 (extractMap!2416 (t!361718 (toList!6857 lm!2473)))) (= lambda!230001 lambda!229998))))

(declare-fun bs!1154069 () Bool)

(assert (= bs!1154069 (and d!1532150 b!4789577)))

(assert (=> bs!1154069 (= (= lt!1949441 (extractMap!2416 (t!361718 (toList!6857 lm!2473)))) (= lambda!230001 lambda!229999))))

(assert (=> bs!1154069 (= (= lt!1949441 lt!1949453) (= lambda!230001 lambda!230000))))

(assert (=> d!1532150 true))

(declare-fun call!334952 () Bool)

(declare-fun c!816358 () Bool)

(declare-fun bm!334946 () Bool)

(declare-fun forall!12208 (List!54267 Int) Bool)

(assert (=> bm!334946 (= call!334952 (forall!12208 (toList!6858 (extractMap!2416 (t!361718 (toList!6857 lm!2473)))) (ite c!816358 lambda!229998 lambda!230000)))))

(declare-fun e!2990497 () ListMap!6329)

(assert (=> b!4789577 (= e!2990497 lt!1949453)))

(declare-fun lt!1949450 () ListMap!6329)

(declare-fun +!2479 (ListMap!6329 tuple2!56724) ListMap!6329)

(assert (=> b!4789577 (= lt!1949450 (+!2479 (extractMap!2416 (t!361718 (toList!6857 lm!2473))) (h!60567 (_2!31657 (h!60568 (toList!6857 lm!2473))))))))

(assert (=> b!4789577 (= lt!1949453 (addToMapMapFromBucket!1691 (t!361717 (_2!31657 (h!60568 (toList!6857 lm!2473)))) (+!2479 (extractMap!2416 (t!361718 (toList!6857 lm!2473))) (h!60567 (_2!31657 (h!60568 (toList!6857 lm!2473)))))))))

(declare-fun lt!1949454 () Unit!139688)

(declare-fun call!334953 () Unit!139688)

(assert (=> b!4789577 (= lt!1949454 call!334953)))

(assert (=> b!4789577 (forall!12208 (toList!6858 (extractMap!2416 (t!361718 (toList!6857 lm!2473)))) lambda!229999)))

(declare-fun lt!1949435 () Unit!139688)

(assert (=> b!4789577 (= lt!1949435 lt!1949454)))

(assert (=> b!4789577 (forall!12208 (toList!6858 lt!1949450) lambda!230000)))

(declare-fun lt!1949442 () Unit!139688)

(declare-fun Unit!139706 () Unit!139688)

(assert (=> b!4789577 (= lt!1949442 Unit!139706)))

(assert (=> b!4789577 (forall!12208 (t!361717 (_2!31657 (h!60568 (toList!6857 lm!2473)))) lambda!230000)))

(declare-fun lt!1949447 () Unit!139688)

(declare-fun Unit!139707 () Unit!139688)

(assert (=> b!4789577 (= lt!1949447 Unit!139707)))

(declare-fun lt!1949449 () Unit!139688)

(declare-fun Unit!139708 () Unit!139688)

(assert (=> b!4789577 (= lt!1949449 Unit!139708)))

(declare-fun lt!1949443 () Unit!139688)

(declare-fun forallContained!4144 (List!54267 Int tuple2!56724) Unit!139688)

(assert (=> b!4789577 (= lt!1949443 (forallContained!4144 (toList!6858 lt!1949450) lambda!230000 (h!60567 (_2!31657 (h!60568 (toList!6857 lm!2473))))))))

(assert (=> b!4789577 (contains!17745 lt!1949450 (_1!31656 (h!60567 (_2!31657 (h!60568 (toList!6857 lm!2473))))))))

(declare-fun lt!1949438 () Unit!139688)

(declare-fun Unit!139709 () Unit!139688)

(assert (=> b!4789577 (= lt!1949438 Unit!139709)))

(assert (=> b!4789577 (contains!17745 lt!1949453 (_1!31656 (h!60567 (_2!31657 (h!60568 (toList!6857 lm!2473))))))))

(declare-fun lt!1949440 () Unit!139688)

(declare-fun Unit!139710 () Unit!139688)

(assert (=> b!4789577 (= lt!1949440 Unit!139710)))

(assert (=> b!4789577 (forall!12208 (_2!31657 (h!60568 (toList!6857 lm!2473))) lambda!230000)))

(declare-fun lt!1949445 () Unit!139688)

(declare-fun Unit!139711 () Unit!139688)

(assert (=> b!4789577 (= lt!1949445 Unit!139711)))

(assert (=> b!4789577 (forall!12208 (toList!6858 lt!1949450) lambda!230000)))

(declare-fun lt!1949439 () Unit!139688)

(declare-fun Unit!139712 () Unit!139688)

(assert (=> b!4789577 (= lt!1949439 Unit!139712)))

(declare-fun lt!1949434 () Unit!139688)

(declare-fun Unit!139713 () Unit!139688)

(assert (=> b!4789577 (= lt!1949434 Unit!139713)))

(declare-fun lt!1949444 () Unit!139688)

(declare-fun addForallContainsKeyThenBeforeAdding!934 (ListMap!6329 ListMap!6329 K!15712 V!15958) Unit!139688)

(assert (=> b!4789577 (= lt!1949444 (addForallContainsKeyThenBeforeAdding!934 (extractMap!2416 (t!361718 (toList!6857 lm!2473))) lt!1949453 (_1!31656 (h!60567 (_2!31657 (h!60568 (toList!6857 lm!2473))))) (_2!31656 (h!60567 (_2!31657 (h!60568 (toList!6857 lm!2473)))))))))

(assert (=> b!4789577 (forall!12208 (toList!6858 (extractMap!2416 (t!361718 (toList!6857 lm!2473)))) lambda!230000)))

(declare-fun lt!1949451 () Unit!139688)

(assert (=> b!4789577 (= lt!1949451 lt!1949444)))

(declare-fun call!334951 () Bool)

(assert (=> b!4789577 call!334951))

(declare-fun lt!1949448 () Unit!139688)

(declare-fun Unit!139714 () Unit!139688)

(assert (=> b!4789577 (= lt!1949448 Unit!139714)))

(declare-fun res!2035223 () Bool)

(assert (=> b!4789577 (= res!2035223 (forall!12208 (_2!31657 (h!60568 (toList!6857 lm!2473))) lambda!230000))))

(declare-fun e!2990496 () Bool)

(assert (=> b!4789577 (=> (not res!2035223) (not e!2990496))))

(assert (=> b!4789577 e!2990496))

(declare-fun lt!1949446 () Unit!139688)

(declare-fun Unit!139715 () Unit!139688)

(assert (=> b!4789577 (= lt!1949446 Unit!139715)))

(assert (=> b!4789578 (= e!2990497 (extractMap!2416 (t!361718 (toList!6857 lm!2473))))))

(declare-fun lt!1949436 () Unit!139688)

(assert (=> b!4789578 (= lt!1949436 call!334953)))

(assert (=> b!4789578 call!334952))

(declare-fun lt!1949437 () Unit!139688)

(assert (=> b!4789578 (= lt!1949437 lt!1949436)))

(assert (=> b!4789578 call!334951))

(declare-fun lt!1949452 () Unit!139688)

(declare-fun Unit!139716 () Unit!139688)

(assert (=> b!4789578 (= lt!1949452 Unit!139716)))

(declare-fun b!4789579 () Bool)

(assert (=> b!4789579 (= e!2990496 call!334952)))

(declare-fun e!2990498 () Bool)

(assert (=> d!1532150 e!2990498))

(declare-fun res!2035224 () Bool)

(assert (=> d!1532150 (=> (not res!2035224) (not e!2990498))))

(assert (=> d!1532150 (= res!2035224 (forall!12208 (_2!31657 (h!60568 (toList!6857 lm!2473))) lambda!230001))))

(assert (=> d!1532150 (= lt!1949441 e!2990497)))

(assert (=> d!1532150 (= c!816358 (is-Nil!54143 (_2!31657 (h!60568 (toList!6857 lm!2473)))))))

(assert (=> d!1532150 (noDuplicateKeys!2322 (_2!31657 (h!60568 (toList!6857 lm!2473))))))

(assert (=> d!1532150 (= (addToMapMapFromBucket!1691 (_2!31657 (h!60568 (toList!6857 lm!2473))) (extractMap!2416 (t!361718 (toList!6857 lm!2473)))) lt!1949441)))

(declare-fun b!4789580 () Bool)

(assert (=> b!4789580 (= e!2990498 (invariantList!1720 (toList!6858 lt!1949441)))))

(declare-fun bm!334947 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!935 (ListMap!6329) Unit!139688)

(assert (=> bm!334947 (= call!334953 (lemmaContainsAllItsOwnKeys!935 (extractMap!2416 (t!361718 (toList!6857 lm!2473)))))))

(declare-fun bm!334948 () Bool)

(assert (=> bm!334948 (= call!334951 (forall!12208 (toList!6858 (extractMap!2416 (t!361718 (toList!6857 lm!2473)))) (ite c!816358 lambda!229998 lambda!230000)))))

(declare-fun b!4789581 () Bool)

(declare-fun res!2035225 () Bool)

(assert (=> b!4789581 (=> (not res!2035225) (not e!2990498))))

(assert (=> b!4789581 (= res!2035225 (forall!12208 (toList!6858 (extractMap!2416 (t!361718 (toList!6857 lm!2473)))) lambda!230001))))

(assert (= (and d!1532150 c!816358) b!4789578))

(assert (= (and d!1532150 (not c!816358)) b!4789577))

(assert (= (and b!4789577 res!2035223) b!4789579))

(assert (= (or b!4789578 b!4789579) bm!334946))

(assert (= (or b!4789578 b!4789577) bm!334948))

(assert (= (or b!4789578 b!4789577) bm!334947))

(assert (= (and d!1532150 res!2035224) b!4789581))

(assert (= (and b!4789581 res!2035225) b!4789580))

(declare-fun m!5769232 () Bool)

(assert (=> b!4789577 m!5769232))

(declare-fun m!5769234 () Bool)

(assert (=> b!4789577 m!5769234))

(assert (=> b!4789577 m!5769082))

(declare-fun m!5769236 () Bool)

(assert (=> b!4789577 m!5769236))

(declare-fun m!5769238 () Bool)

(assert (=> b!4789577 m!5769238))

(assert (=> b!4789577 m!5769082))

(declare-fun m!5769240 () Bool)

(assert (=> b!4789577 m!5769240))

(assert (=> b!4789577 m!5769240))

(declare-fun m!5769242 () Bool)

(assert (=> b!4789577 m!5769242))

(declare-fun m!5769244 () Bool)

(assert (=> b!4789577 m!5769244))

(declare-fun m!5769246 () Bool)

(assert (=> b!4789577 m!5769246))

(assert (=> b!4789577 m!5769244))

(declare-fun m!5769248 () Bool)

(assert (=> b!4789577 m!5769248))

(assert (=> b!4789577 m!5769246))

(declare-fun m!5769250 () Bool)

(assert (=> b!4789577 m!5769250))

(declare-fun m!5769252 () Bool)

(assert (=> b!4789577 m!5769252))

(declare-fun m!5769254 () Bool)

(assert (=> bm!334948 m!5769254))

(declare-fun m!5769256 () Bool)

(assert (=> b!4789580 m!5769256))

(assert (=> bm!334946 m!5769254))

(assert (=> bm!334947 m!5769082))

(declare-fun m!5769258 () Bool)

(assert (=> bm!334947 m!5769258))

(declare-fun m!5769260 () Bool)

(assert (=> b!4789581 m!5769260))

(declare-fun m!5769262 () Bool)

(assert (=> d!1532150 m!5769262))

(assert (=> d!1532150 m!5769094))

(assert (=> b!4789433 d!1532150))

(declare-fun bs!1154070 () Bool)

(declare-fun d!1532152 () Bool)

(assert (= bs!1154070 (and d!1532152 d!1532076)))

(declare-fun lambda!230002 () Int)

(assert (=> bs!1154070 (= lambda!230002 lambda!229954)))

(declare-fun bs!1154071 () Bool)

(assert (= bs!1154071 (and d!1532152 d!1532046)))

(assert (=> bs!1154071 (= lambda!230002 lambda!229940)))

(declare-fun bs!1154072 () Bool)

(assert (= bs!1154072 (and d!1532152 d!1532096)))

(assert (=> bs!1154072 (= lambda!230002 lambda!229959)))

(declare-fun bs!1154073 () Bool)

(assert (= bs!1154073 (and d!1532152 d!1532078)))

(assert (=> bs!1154073 (= lambda!230002 lambda!229958)))

(declare-fun bs!1154074 () Bool)

(assert (= bs!1154074 (and d!1532152 d!1532056)))

(assert (=> bs!1154074 (= lambda!230002 lambda!229946)))

(declare-fun bs!1154075 () Bool)

(assert (= bs!1154075 (and d!1532152 d!1532098)))

(assert (=> bs!1154075 (not (= lambda!230002 lambda!229962))))

(declare-fun bs!1154076 () Bool)

(assert (= bs!1154076 (and d!1532152 start!492824)))

(assert (=> bs!1154076 (= lambda!230002 lambda!229934)))

(declare-fun lt!1949455 () ListMap!6329)

(assert (=> d!1532152 (invariantList!1720 (toList!6858 lt!1949455))))

(declare-fun e!2990499 () ListMap!6329)

(assert (=> d!1532152 (= lt!1949455 e!2990499)))

(declare-fun c!816359 () Bool)

(assert (=> d!1532152 (= c!816359 (is-Cons!54144 (t!361718 (toList!6857 lm!2473))))))

(assert (=> d!1532152 (forall!12206 (t!361718 (toList!6857 lm!2473)) lambda!230002)))

(assert (=> d!1532152 (= (extractMap!2416 (t!361718 (toList!6857 lm!2473))) lt!1949455)))

(declare-fun b!4789584 () Bool)

(assert (=> b!4789584 (= e!2990499 (addToMapMapFromBucket!1691 (_2!31657 (h!60568 (t!361718 (toList!6857 lm!2473)))) (extractMap!2416 (t!361718 (t!361718 (toList!6857 lm!2473))))))))

(declare-fun b!4789585 () Bool)

(assert (=> b!4789585 (= e!2990499 (ListMap!6330 Nil!54143))))

(assert (= (and d!1532152 c!816359) b!4789584))

(assert (= (and d!1532152 (not c!816359)) b!4789585))

(declare-fun m!5769264 () Bool)

(assert (=> d!1532152 m!5769264))

(declare-fun m!5769266 () Bool)

(assert (=> d!1532152 m!5769266))

(declare-fun m!5769268 () Bool)

(assert (=> b!4789584 m!5769268))

(assert (=> b!4789584 m!5769268))

(declare-fun m!5769270 () Bool)

(assert (=> b!4789584 m!5769270))

(assert (=> b!4789433 d!1532152))

(declare-fun d!1532154 () Bool)

(declare-fun res!2035230 () Bool)

(declare-fun e!2990504 () Bool)

(assert (=> d!1532154 (=> res!2035230 e!2990504)))

(assert (=> d!1532154 (= res!2035230 (and (is-Cons!54143 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (= (_1!31656 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))) key!5896)))))

(assert (=> d!1532154 (= (containsKey!3909 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896) e!2990504)))

(declare-fun b!4789590 () Bool)

(declare-fun e!2990505 () Bool)

(assert (=> b!4789590 (= e!2990504 e!2990505)))

(declare-fun res!2035231 () Bool)

(assert (=> b!4789590 (=> (not res!2035231) (not e!2990505))))

(assert (=> b!4789590 (= res!2035231 (is-Cons!54143 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))))))

(declare-fun b!4789591 () Bool)

(assert (=> b!4789591 (= e!2990505 (containsKey!3909 (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) key!5896))))

(assert (= (and d!1532154 (not res!2035230)) b!4789590))

(assert (= (and b!4789590 res!2035231) b!4789591))

(declare-fun m!5769272 () Bool)

(assert (=> b!4789591 m!5769272))

(assert (=> b!4789336 d!1532154))

(declare-fun d!1532156 () Bool)

(assert (=> d!1532156 (containsKey!3909 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896)))

(declare-fun lt!1949458 () Unit!139688)

(declare-fun choose!34462 (List!54267 K!15712) Unit!139688)

(assert (=> d!1532156 (= lt!1949458 (choose!34462 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896))))

(assert (=> d!1532156 (invariantList!1720 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))))

(assert (=> d!1532156 (= (lemmaInGetKeysListThenContainsKey!1066 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) key!5896) lt!1949458)))

(declare-fun bs!1154077 () Bool)

(assert (= bs!1154077 d!1532156))

(assert (=> bs!1154077 m!5768942))

(declare-fun m!5769274 () Bool)

(assert (=> bs!1154077 m!5769274))

(assert (=> bs!1154077 m!5769208))

(assert (=> b!4789336 d!1532156))

(assert (=> d!1532046 d!1532050))

(assert (=> d!1532046 d!1532056))

(declare-fun d!1532158 () Bool)

(assert (=> d!1532158 (not (contains!17745 (extractMap!2416 (toList!6857 lt!1949230)) key!5896))))

(assert (=> d!1532158 true))

(declare-fun _$28!814 () Unit!139688)

(assert (=> d!1532158 (= (choose!34454 lt!1949230 key!5896 hashF!1559) _$28!814)))

(declare-fun bs!1154078 () Bool)

(assert (= bs!1154078 d!1532158))

(assert (=> bs!1154078 m!5768874))

(assert (=> bs!1154078 m!5768874))

(assert (=> bs!1154078 m!5768876))

(assert (=> d!1532046 d!1532158))

(declare-fun d!1532160 () Bool)

(declare-fun res!2035232 () Bool)

(declare-fun e!2990506 () Bool)

(assert (=> d!1532160 (=> res!2035232 e!2990506)))

(assert (=> d!1532160 (= res!2035232 (is-Nil!54144 (toList!6857 lt!1949230)))))

(assert (=> d!1532160 (= (forall!12206 (toList!6857 lt!1949230) lambda!229940) e!2990506)))

(declare-fun b!4789592 () Bool)

(declare-fun e!2990507 () Bool)

(assert (=> b!4789592 (= e!2990506 e!2990507)))

(declare-fun res!2035233 () Bool)

(assert (=> b!4789592 (=> (not res!2035233) (not e!2990507))))

(assert (=> b!4789592 (= res!2035233 (dynLambda!22046 lambda!229940 (h!60568 (toList!6857 lt!1949230))))))

(declare-fun b!4789593 () Bool)

(assert (=> b!4789593 (= e!2990507 (forall!12206 (t!361718 (toList!6857 lt!1949230)) lambda!229940))))

(assert (= (and d!1532160 (not res!2035232)) b!4789592))

(assert (= (and b!4789592 res!2035233) b!4789593))

(declare-fun b_lambda!186427 () Bool)

(assert (=> (not b_lambda!186427) (not b!4789592)))

(declare-fun m!5769276 () Bool)

(assert (=> b!4789592 m!5769276))

(declare-fun m!5769278 () Bool)

(assert (=> b!4789593 m!5769278))

(assert (=> d!1532046 d!1532160))

(declare-fun d!1532162 () Bool)

(assert (=> d!1532162 (= (isEmpty!29421 (toList!6857 lm!2473)) (is-Nil!54144 (toList!6857 lm!2473)))))

(assert (=> d!1532086 d!1532162))

(declare-fun d!1532164 () Bool)

(assert (=> d!1532164 (= (isEmpty!29420 (getPair!861 (apply!12950 lm!2473 lt!1949234) key!5896)) (not (is-Some!13043 (getPair!861 (apply!12950 lm!2473 lt!1949234) key!5896))))))

(assert (=> d!1532064 d!1532164))

(declare-fun d!1532166 () Bool)

(declare-fun noDuplicatedKeys!432 (List!54267) Bool)

(assert (=> d!1532166 (= (invariantList!1720 (toList!6858 lt!1949323)) (noDuplicatedKeys!432 (toList!6858 lt!1949323)))))

(declare-fun bs!1154079 () Bool)

(assert (= bs!1154079 d!1532166))

(declare-fun m!5769280 () Bool)

(assert (=> bs!1154079 m!5769280))

(assert (=> d!1532096 d!1532166))

(declare-fun d!1532168 () Bool)

(declare-fun res!2035234 () Bool)

(declare-fun e!2990508 () Bool)

(assert (=> d!1532168 (=> res!2035234 e!2990508)))

(assert (=> d!1532168 (= res!2035234 (is-Nil!54144 (toList!6857 lm!2473)))))

(assert (=> d!1532168 (= (forall!12206 (toList!6857 lm!2473) lambda!229959) e!2990508)))

(declare-fun b!4789594 () Bool)

(declare-fun e!2990509 () Bool)

(assert (=> b!4789594 (= e!2990508 e!2990509)))

(declare-fun res!2035235 () Bool)

(assert (=> b!4789594 (=> (not res!2035235) (not e!2990509))))

(assert (=> b!4789594 (= res!2035235 (dynLambda!22046 lambda!229959 (h!60568 (toList!6857 lm!2473))))))

(declare-fun b!4789595 () Bool)

(assert (=> b!4789595 (= e!2990509 (forall!12206 (t!361718 (toList!6857 lm!2473)) lambda!229959))))

(assert (= (and d!1532168 (not res!2035234)) b!4789594))

(assert (= (and b!4789594 res!2035235) b!4789595))

(declare-fun b_lambda!186429 () Bool)

(assert (=> (not b_lambda!186429) (not b!4789594)))

(declare-fun m!5769282 () Bool)

(assert (=> b!4789594 m!5769282))

(declare-fun m!5769284 () Bool)

(assert (=> b!4789595 m!5769284))

(assert (=> d!1532096 d!1532168))

(declare-fun d!1532170 () Bool)

(assert (=> d!1532170 (= (isDefined!10186 lt!1949289) (not (isEmpty!29420 lt!1949289)))))

(declare-fun bs!1154080 () Bool)

(assert (= bs!1154080 d!1532170))

(assert (=> bs!1154080 m!5768974))

(assert (=> b!4789376 d!1532170))

(declare-fun d!1532172 () Bool)

(declare-fun res!2035236 () Bool)

(declare-fun e!2990510 () Bool)

(assert (=> d!1532172 (=> res!2035236 e!2990510)))

(assert (=> d!1532172 (= res!2035236 (is-Nil!54144 (toList!6857 lm!2473)))))

(assert (=> d!1532172 (= (forall!12206 (toList!6857 lm!2473) lambda!229962) e!2990510)))

(declare-fun b!4789596 () Bool)

(declare-fun e!2990511 () Bool)

(assert (=> b!4789596 (= e!2990510 e!2990511)))

(declare-fun res!2035237 () Bool)

(assert (=> b!4789596 (=> (not res!2035237) (not e!2990511))))

(assert (=> b!4789596 (= res!2035237 (dynLambda!22046 lambda!229962 (h!60568 (toList!6857 lm!2473))))))

(declare-fun b!4789597 () Bool)

(assert (=> b!4789597 (= e!2990511 (forall!12206 (t!361718 (toList!6857 lm!2473)) lambda!229962))))

(assert (= (and d!1532172 (not res!2035236)) b!4789596))

(assert (= (and b!4789596 res!2035237) b!4789597))

(declare-fun b_lambda!186431 () Bool)

(assert (=> (not b_lambda!186431) (not b!4789596)))

(declare-fun m!5769286 () Bool)

(assert (=> b!4789596 m!5769286))

(declare-fun m!5769288 () Bool)

(assert (=> b!4789597 m!5769288))

(assert (=> d!1532098 d!1532172))

(declare-fun d!1532174 () Bool)

(assert (=> d!1532174 (= (tail!9240 (toList!6857 lm!2473)) (t!361718 (toList!6857 lm!2473)))))

(assert (=> d!1532090 d!1532174))

(declare-fun d!1532176 () Bool)

(declare-fun res!2035238 () Bool)

(declare-fun e!2990512 () Bool)

(assert (=> d!1532176 (=> res!2035238 e!2990512)))

(assert (=> d!1532176 (= res!2035238 (and (is-Cons!54143 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) (= (_1!31656 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))) key!5896)))))

(assert (=> d!1532176 (= (containsKey!3909 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896) e!2990512)))

(declare-fun b!4789598 () Bool)

(declare-fun e!2990513 () Bool)

(assert (=> b!4789598 (= e!2990512 e!2990513)))

(declare-fun res!2035239 () Bool)

(assert (=> b!4789598 (=> (not res!2035239) (not e!2990513))))

(assert (=> b!4789598 (= res!2035239 (is-Cons!54143 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))))))

(declare-fun b!4789599 () Bool)

(assert (=> b!4789599 (= e!2990513 (containsKey!3909 (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) key!5896))))

(assert (= (and d!1532176 (not res!2035238)) b!4789598))

(assert (= (and b!4789598 res!2035239) b!4789599))

(declare-fun m!5769290 () Bool)

(assert (=> b!4789599 m!5769290))

(assert (=> b!4789431 d!1532176))

(declare-fun d!1532178 () Bool)

(assert (=> d!1532178 (containsKey!3909 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896)))

(declare-fun lt!1949459 () Unit!139688)

(assert (=> d!1532178 (= lt!1949459 (choose!34462 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896))))

(assert (=> d!1532178 (invariantList!1720 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))))

(assert (=> d!1532178 (= (lemmaInGetKeysListThenContainsKey!1066 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896) lt!1949459)))

(declare-fun bs!1154081 () Bool)

(assert (= bs!1154081 d!1532178))

(assert (=> bs!1154081 m!5769064))

(declare-fun m!5769292 () Bool)

(assert (=> bs!1154081 m!5769292))

(declare-fun m!5769294 () Bool)

(assert (=> bs!1154081 m!5769294))

(assert (=> b!4789431 d!1532178))

(declare-fun d!1532180 () Bool)

(declare-fun res!2035240 () Bool)

(declare-fun e!2990514 () Bool)

(assert (=> d!1532180 (=> res!2035240 e!2990514)))

(assert (=> d!1532180 (= res!2035240 (and (is-Cons!54143 (apply!12950 lm!2473 lt!1949234)) (= (_1!31656 (h!60567 (apply!12950 lm!2473 lt!1949234))) key!5896)))))

(assert (=> d!1532180 (= (containsKey!3907 (apply!12950 lm!2473 lt!1949234) key!5896) e!2990514)))

(declare-fun b!4789600 () Bool)

(declare-fun e!2990515 () Bool)

(assert (=> b!4789600 (= e!2990514 e!2990515)))

(declare-fun res!2035241 () Bool)

(assert (=> b!4789600 (=> (not res!2035241) (not e!2990515))))

(assert (=> b!4789600 (= res!2035241 (is-Cons!54143 (apply!12950 lm!2473 lt!1949234)))))

(declare-fun b!4789601 () Bool)

(assert (=> b!4789601 (= e!2990515 (containsKey!3907 (t!361717 (apply!12950 lm!2473 lt!1949234)) key!5896))))

(assert (= (and d!1532180 (not res!2035240)) b!4789600))

(assert (= (and b!4789600 res!2035241) b!4789601))

(declare-fun m!5769296 () Bool)

(assert (=> b!4789601 m!5769296))

(assert (=> b!4789374 d!1532180))

(assert (=> d!1532076 d!1532074))

(declare-fun d!1532182 () Bool)

(assert (=> d!1532182 (containsKeyBiggerList!539 (toList!6857 lm!2473) key!5896)))

(assert (=> d!1532182 true))

(declare-fun _$33!811 () Unit!139688)

(assert (=> d!1532182 (= (choose!34455 lm!2473 key!5896 hashF!1559) _$33!811)))

(declare-fun bs!1154082 () Bool)

(assert (= bs!1154082 d!1532182))

(assert (=> bs!1154082 m!5768846))

(assert (=> d!1532076 d!1532182))

(declare-fun d!1532184 () Bool)

(declare-fun res!2035242 () Bool)

(declare-fun e!2990516 () Bool)

(assert (=> d!1532184 (=> res!2035242 e!2990516)))

(assert (=> d!1532184 (= res!2035242 (is-Nil!54144 (toList!6857 lm!2473)))))

(assert (=> d!1532184 (= (forall!12206 (toList!6857 lm!2473) lambda!229954) e!2990516)))

(declare-fun b!4789602 () Bool)

(declare-fun e!2990517 () Bool)

(assert (=> b!4789602 (= e!2990516 e!2990517)))

(declare-fun res!2035243 () Bool)

(assert (=> b!4789602 (=> (not res!2035243) (not e!2990517))))

(assert (=> b!4789602 (= res!2035243 (dynLambda!22046 lambda!229954 (h!60568 (toList!6857 lm!2473))))))

(declare-fun b!4789603 () Bool)

(assert (=> b!4789603 (= e!2990517 (forall!12206 (t!361718 (toList!6857 lm!2473)) lambda!229954))))

(assert (= (and d!1532184 (not res!2035242)) b!4789602))

(assert (= (and b!4789602 res!2035243) b!4789603))

(declare-fun b_lambda!186433 () Bool)

(assert (=> (not b_lambda!186433) (not b!4789602)))

(declare-fun m!5769298 () Bool)

(assert (=> b!4789602 m!5769298))

(declare-fun m!5769300 () Bool)

(assert (=> b!4789603 m!5769300))

(assert (=> d!1532076 d!1532184))

(declare-fun d!1532186 () Bool)

(declare-fun res!2035248 () Bool)

(declare-fun e!2990522 () Bool)

(assert (=> d!1532186 (=> res!2035248 e!2990522)))

(assert (=> d!1532186 (= res!2035248 (or (is-Nil!54144 (toList!6857 lm!2473)) (is-Nil!54144 (t!361718 (toList!6857 lm!2473)))))))

(assert (=> d!1532186 (= (isStrictlySorted!868 (toList!6857 lm!2473)) e!2990522)))

(declare-fun b!4789608 () Bool)

(declare-fun e!2990523 () Bool)

(assert (=> b!4789608 (= e!2990522 e!2990523)))

(declare-fun res!2035249 () Bool)

(assert (=> b!4789608 (=> (not res!2035249) (not e!2990523))))

(assert (=> b!4789608 (= res!2035249 (bvslt (_1!31657 (h!60568 (toList!6857 lm!2473))) (_1!31657 (h!60568 (t!361718 (toList!6857 lm!2473))))))))

(declare-fun b!4789609 () Bool)

(assert (=> b!4789609 (= e!2990523 (isStrictlySorted!868 (t!361718 (toList!6857 lm!2473))))))

(assert (= (and d!1532186 (not res!2035248)) b!4789608))

(assert (= (and b!4789608 res!2035249) b!4789609))

(declare-fun m!5769302 () Bool)

(assert (=> b!4789609 m!5769302))

(assert (=> d!1532102 d!1532186))

(assert (=> d!1532050 d!1532154))

(declare-fun d!1532188 () Bool)

(assert (=> d!1532188 (isDefined!10188 (getValueByKey!2331 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896))))

(declare-fun lt!1949460 () Unit!139688)

(assert (=> d!1532188 (= lt!1949460 (choose!34460 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896))))

(assert (=> d!1532188 (invariantList!1720 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))))

(assert (=> d!1532188 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2123 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896) lt!1949460)))

(declare-fun bs!1154083 () Bool)

(assert (= bs!1154083 d!1532188))

(assert (=> bs!1154083 m!5769068))

(assert (=> bs!1154083 m!5769068))

(assert (=> bs!1154083 m!5769070))

(declare-fun m!5769304 () Bool)

(assert (=> bs!1154083 m!5769304))

(assert (=> bs!1154083 m!5769294))

(assert (=> b!4789429 d!1532188))

(declare-fun d!1532190 () Bool)

(assert (=> d!1532190 (= (isDefined!10188 (getValueByKey!2331 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896)) (not (isEmpty!29424 (getValueByKey!2331 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896))))))

(declare-fun bs!1154084 () Bool)

(assert (= bs!1154084 d!1532190))

(assert (=> bs!1154084 m!5769068))

(declare-fun m!5769306 () Bool)

(assert (=> bs!1154084 m!5769306))

(assert (=> b!4789429 d!1532190))

(declare-fun b!4789612 () Bool)

(declare-fun e!2990525 () Option!13046)

(assert (=> b!4789612 (= e!2990525 (getValueByKey!2331 (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) key!5896))))

(declare-fun b!4789613 () Bool)

(assert (=> b!4789613 (= e!2990525 None!13045)))

(declare-fun d!1532192 () Bool)

(declare-fun c!816360 () Bool)

(assert (=> d!1532192 (= c!816360 (and (is-Cons!54143 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) (= (_1!31656 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))) key!5896)))))

(declare-fun e!2990524 () Option!13046)

(assert (=> d!1532192 (= (getValueByKey!2331 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896) e!2990524)))

(declare-fun b!4789610 () Bool)

(assert (=> b!4789610 (= e!2990524 (Some!13045 (_2!31656 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))))))))

(declare-fun b!4789611 () Bool)

(assert (=> b!4789611 (= e!2990524 e!2990525)))

(declare-fun c!816361 () Bool)

(assert (=> b!4789611 (= c!816361 (and (is-Cons!54143 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) (not (= (_1!31656 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))) key!5896))))))

(assert (= (and d!1532192 c!816360) b!4789610))

(assert (= (and d!1532192 (not c!816360)) b!4789611))

(assert (= (and b!4789611 c!816361) b!4789612))

(assert (= (and b!4789611 (not c!816361)) b!4789613))

(declare-fun m!5769308 () Bool)

(assert (=> b!4789612 m!5769308))

(assert (=> b!4789429 d!1532192))

(declare-fun d!1532194 () Bool)

(assert (=> d!1532194 (contains!17748 (getKeysList!1066 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) key!5896)))

(declare-fun lt!1949461 () Unit!139688)

(assert (=> d!1532194 (= lt!1949461 (choose!34461 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896))))

(assert (=> d!1532194 (invariantList!1720 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))))

(assert (=> d!1532194 (= (lemmaInListThenGetKeysListContains!1061 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) key!5896) lt!1949461)))

(declare-fun bs!1154085 () Bool)

(assert (= bs!1154085 d!1532194))

(assert (=> bs!1154085 m!5769062))

(assert (=> bs!1154085 m!5769062))

(declare-fun m!5769310 () Bool)

(assert (=> bs!1154085 m!5769310))

(declare-fun m!5769312 () Bool)

(assert (=> bs!1154085 m!5769312))

(assert (=> bs!1154085 m!5769294))

(assert (=> b!4789429 d!1532194))

(declare-fun d!1532196 () Bool)

(assert (=> d!1532196 (= (invariantList!1720 (toList!6858 lt!1949283)) (noDuplicatedKeys!432 (toList!6858 lt!1949283)))))

(declare-fun bs!1154086 () Bool)

(assert (= bs!1154086 d!1532196))

(declare-fun m!5769314 () Bool)

(assert (=> bs!1154086 m!5769314))

(assert (=> d!1532056 d!1532196))

(declare-fun d!1532198 () Bool)

(declare-fun res!2035250 () Bool)

(declare-fun e!2990526 () Bool)

(assert (=> d!1532198 (=> res!2035250 e!2990526)))

(assert (=> d!1532198 (= res!2035250 (is-Nil!54144 (toList!6857 lt!1949230)))))

(assert (=> d!1532198 (= (forall!12206 (toList!6857 lt!1949230) lambda!229946) e!2990526)))

(declare-fun b!4789614 () Bool)

(declare-fun e!2990527 () Bool)

(assert (=> b!4789614 (= e!2990526 e!2990527)))

(declare-fun res!2035251 () Bool)

(assert (=> b!4789614 (=> (not res!2035251) (not e!2990527))))

(assert (=> b!4789614 (= res!2035251 (dynLambda!22046 lambda!229946 (h!60568 (toList!6857 lt!1949230))))))

(declare-fun b!4789615 () Bool)

(assert (=> b!4789615 (= e!2990527 (forall!12206 (t!361718 (toList!6857 lt!1949230)) lambda!229946))))

(assert (= (and d!1532198 (not res!2035250)) b!4789614))

(assert (= (and b!4789614 res!2035251) b!4789615))

(declare-fun b_lambda!186435 () Bool)

(assert (=> (not b_lambda!186435) (not b!4789614)))

(declare-fun m!5769316 () Bool)

(assert (=> b!4789614 m!5769316))

(declare-fun m!5769318 () Bool)

(assert (=> b!4789615 m!5769318))

(assert (=> d!1532056 d!1532198))

(declare-fun d!1532200 () Bool)

(declare-fun res!2035256 () Bool)

(declare-fun e!2990532 () Bool)

(assert (=> d!1532200 (=> res!2035256 e!2990532)))

(assert (=> d!1532200 (= res!2035256 (and (is-Cons!54144 (toList!6857 lt!1949230)) (= (_1!31657 (h!60568 (toList!6857 lt!1949230))) lt!1949234)))))

(assert (=> d!1532200 (= (containsKey!3910 (toList!6857 lt!1949230) lt!1949234) e!2990532)))

(declare-fun b!4789620 () Bool)

(declare-fun e!2990533 () Bool)

(assert (=> b!4789620 (= e!2990532 e!2990533)))

(declare-fun res!2035257 () Bool)

(assert (=> b!4789620 (=> (not res!2035257) (not e!2990533))))

(assert (=> b!4789620 (= res!2035257 (and (or (not (is-Cons!54144 (toList!6857 lt!1949230))) (bvsle (_1!31657 (h!60568 (toList!6857 lt!1949230))) lt!1949234)) (is-Cons!54144 (toList!6857 lt!1949230)) (bvslt (_1!31657 (h!60568 (toList!6857 lt!1949230))) lt!1949234)))))

(declare-fun b!4789621 () Bool)

(assert (=> b!4789621 (= e!2990533 (containsKey!3910 (t!361718 (toList!6857 lt!1949230)) lt!1949234))))

(assert (= (and d!1532200 (not res!2035256)) b!4789620))

(assert (= (and b!4789620 res!2035257) b!4789621))

(declare-fun m!5769320 () Bool)

(assert (=> b!4789621 m!5769320))

(assert (=> d!1532088 d!1532200))

(declare-fun d!1532202 () Bool)

(declare-fun lt!1949462 () Bool)

(assert (=> d!1532202 (= lt!1949462 (set.member key!5896 (content!9692 e!2990395)))))

(declare-fun e!2990534 () Bool)

(assert (=> d!1532202 (= lt!1949462 e!2990534)))

(declare-fun res!2035259 () Bool)

(assert (=> d!1532202 (=> (not res!2035259) (not e!2990534))))

(assert (=> d!1532202 (= res!2035259 (is-Cons!54147 e!2990395))))

(assert (=> d!1532202 (= (contains!17748 e!2990395 key!5896) lt!1949462)))

(declare-fun b!4789622 () Bool)

(declare-fun e!2990535 () Bool)

(assert (=> b!4789622 (= e!2990534 e!2990535)))

(declare-fun res!2035258 () Bool)

(assert (=> b!4789622 (=> res!2035258 e!2990535)))

(assert (=> b!4789622 (= res!2035258 (= (h!60571 e!2990395) key!5896))))

(declare-fun b!4789623 () Bool)

(assert (=> b!4789623 (= e!2990535 (contains!17748 (t!361721 e!2990395) key!5896))))

(assert (= (and d!1532202 res!2035259) b!4789622))

(assert (= (and b!4789622 (not res!2035258)) b!4789623))

(declare-fun m!5769322 () Bool)

(assert (=> d!1532202 m!5769322))

(declare-fun m!5769324 () Bool)

(assert (=> d!1532202 m!5769324))

(declare-fun m!5769326 () Bool)

(assert (=> b!4789623 m!5769326))

(assert (=> bm!334935 d!1532202))

(declare-fun b!4789650 () Bool)

(assert (=> b!4789650 true))

(declare-fun bs!1154087 () Bool)

(declare-fun b!4789643 () Bool)

(assert (= bs!1154087 (and b!4789643 b!4789650)))

(declare-fun lambda!230012 () Int)

(declare-fun lambda!230011 () Int)

(assert (=> bs!1154087 (= (= (Cons!54143 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))) (= lambda!230012 lambda!230011))))

(assert (=> b!4789643 true))

(declare-fun bs!1154088 () Bool)

(declare-fun b!4789648 () Bool)

(assert (= bs!1154088 (and b!4789648 b!4789650)))

(declare-fun lambda!230013 () Int)

(assert (=> bs!1154088 (= (= (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))) (= lambda!230013 lambda!230011))))

(declare-fun bs!1154089 () Bool)

(assert (= bs!1154089 (and b!4789648 b!4789643)))

(assert (=> bs!1154089 (= (= (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) (Cons!54143 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))))) (= lambda!230013 lambda!230012))))

(assert (=> b!4789648 true))

(declare-fun b!4789642 () Bool)

(declare-fun res!2035267 () Bool)

(declare-fun e!2990544 () Bool)

(assert (=> b!4789642 (=> (not res!2035267) (not e!2990544))))

(declare-fun lt!1949477 () List!54271)

(declare-fun length!680 (List!54271) Int)

(declare-fun length!681 (List!54267) Int)

(assert (=> b!4789642 (= res!2035267 (= (length!680 lt!1949477) (length!681 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))))))

(declare-fun e!2990546 () List!54271)

(assert (=> b!4789643 (= e!2990546 (Cons!54147 (_1!31656 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))) (getKeysList!1066 (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))))))))

(declare-fun c!816369 () Bool)

(assert (=> b!4789643 (= c!816369 (containsKey!3909 (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) (_1!31656 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))))))))

(declare-fun lt!1949480 () Unit!139688)

(declare-fun e!2990547 () Unit!139688)

(assert (=> b!4789643 (= lt!1949480 e!2990547)))

(declare-fun c!816368 () Bool)

(assert (=> b!4789643 (= c!816368 (contains!17748 (getKeysList!1066 (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))) (_1!31656 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))))))))

(declare-fun lt!1949483 () Unit!139688)

(declare-fun e!2990545 () Unit!139688)

(assert (=> b!4789643 (= lt!1949483 e!2990545)))

(declare-fun lt!1949481 () List!54271)

(assert (=> b!4789643 (= lt!1949481 (getKeysList!1066 (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))))))

(declare-fun lt!1949482 () Unit!139688)

(declare-fun lemmaForallContainsAddHeadPreserves!327 (List!54267 List!54271 tuple2!56724) Unit!139688)

(assert (=> b!4789643 (= lt!1949482 (lemmaForallContainsAddHeadPreserves!327 (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) lt!1949481 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))))))

(declare-fun forall!12209 (List!54271 Int) Bool)

(assert (=> b!4789643 (forall!12209 lt!1949481 lambda!230012)))

(declare-fun lt!1949478 () Unit!139688)

(assert (=> b!4789643 (= lt!1949478 lt!1949482)))

(declare-fun b!4789644 () Bool)

(assert (=> b!4789644 false))

(declare-fun Unit!139717 () Unit!139688)

(assert (=> b!4789644 (= e!2990547 Unit!139717)))

(declare-fun d!1532204 () Bool)

(assert (=> d!1532204 e!2990544))

(declare-fun res!2035268 () Bool)

(assert (=> d!1532204 (=> (not res!2035268) (not e!2990544))))

(declare-fun noDuplicate!912 (List!54271) Bool)

(assert (=> d!1532204 (= res!2035268 (noDuplicate!912 lt!1949477))))

(assert (=> d!1532204 (= lt!1949477 e!2990546)))

(declare-fun c!816370 () Bool)

(assert (=> d!1532204 (= c!816370 (is-Cons!54143 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))))))

(assert (=> d!1532204 (invariantList!1720 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))))

(assert (=> d!1532204 (= (getKeysList!1066 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) lt!1949477)))

(declare-fun b!4789645 () Bool)

(declare-fun Unit!139718 () Unit!139688)

(assert (=> b!4789645 (= e!2990547 Unit!139718)))

(declare-fun b!4789646 () Bool)

(assert (=> b!4789646 (= e!2990546 Nil!54147)))

(declare-fun lambda!230014 () Int)

(declare-fun b!4789647 () Bool)

(declare-fun map!12218 (List!54267 Int) List!54271)

(assert (=> b!4789647 (= e!2990544 (= (content!9692 lt!1949477) (content!9692 (map!12218 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) lambda!230014))))))

(declare-fun res!2035266 () Bool)

(assert (=> b!4789648 (=> (not res!2035266) (not e!2990544))))

(assert (=> b!4789648 (= res!2035266 (forall!12209 lt!1949477 lambda!230013))))

(declare-fun b!4789649 () Bool)

(declare-fun Unit!139719 () Unit!139688)

(assert (=> b!4789649 (= e!2990545 Unit!139719)))

(assert (=> b!4789650 false))

(declare-fun lt!1949479 () Unit!139688)

(declare-fun forallContained!4145 (List!54271 Int K!15712) Unit!139688)

(assert (=> b!4789650 (= lt!1949479 (forallContained!4145 (getKeysList!1066 (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))) lambda!230011 (_1!31656 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))))))))

(declare-fun Unit!139720 () Unit!139688)

(assert (=> b!4789650 (= e!2990545 Unit!139720)))

(assert (= (and d!1532204 c!816370) b!4789643))

(assert (= (and d!1532204 (not c!816370)) b!4789646))

(assert (= (and b!4789643 c!816369) b!4789644))

(assert (= (and b!4789643 (not c!816369)) b!4789645))

(assert (= (and b!4789643 c!816368) b!4789650))

(assert (= (and b!4789643 (not c!816368)) b!4789649))

(assert (= (and d!1532204 res!2035268) b!4789642))

(assert (= (and b!4789642 res!2035267) b!4789648))

(assert (= (and b!4789648 res!2035266) b!4789647))

(declare-fun m!5769328 () Bool)

(assert (=> b!4789642 m!5769328))

(declare-fun m!5769330 () Bool)

(assert (=> b!4789642 m!5769330))

(declare-fun m!5769332 () Bool)

(assert (=> d!1532204 m!5769332))

(assert (=> d!1532204 m!5769294))

(declare-fun m!5769334 () Bool)

(assert (=> b!4789650 m!5769334))

(assert (=> b!4789650 m!5769334))

(declare-fun m!5769336 () Bool)

(assert (=> b!4789650 m!5769336))

(assert (=> b!4789643 m!5769334))

(declare-fun m!5769338 () Bool)

(assert (=> b!4789643 m!5769338))

(assert (=> b!4789643 m!5769334))

(declare-fun m!5769340 () Bool)

(assert (=> b!4789643 m!5769340))

(declare-fun m!5769342 () Bool)

(assert (=> b!4789643 m!5769342))

(declare-fun m!5769344 () Bool)

(assert (=> b!4789643 m!5769344))

(declare-fun m!5769346 () Bool)

(assert (=> b!4789647 m!5769346))

(declare-fun m!5769348 () Bool)

(assert (=> b!4789647 m!5769348))

(assert (=> b!4789647 m!5769348))

(declare-fun m!5769350 () Bool)

(assert (=> b!4789647 m!5769350))

(declare-fun m!5769352 () Bool)

(assert (=> b!4789648 m!5769352))

(assert (=> b!4789426 d!1532204))

(assert (=> b!4789424 d!1532190))

(assert (=> b!4789424 d!1532192))

(declare-fun d!1532206 () Bool)

(declare-fun isEmpty!29425 (Option!13047) Bool)

(assert (=> d!1532206 (= (isDefined!10189 (getValueByKey!2332 (toList!6857 lm!2473) lt!1949234)) (not (isEmpty!29425 (getValueByKey!2332 (toList!6857 lm!2473) lt!1949234))))))

(declare-fun bs!1154090 () Bool)

(assert (= bs!1154090 d!1532206))

(assert (=> bs!1154090 m!5768992))

(declare-fun m!5769354 () Bool)

(assert (=> bs!1154090 m!5769354))

(assert (=> b!4789387 d!1532206))

(declare-fun b!4789662 () Bool)

(declare-fun e!2990552 () Option!13047)

(declare-fun e!2990553 () Option!13047)

(assert (=> b!4789662 (= e!2990552 e!2990553)))

(declare-fun c!816376 () Bool)

(assert (=> b!4789662 (= c!816376 (and (is-Cons!54144 (toList!6857 lm!2473)) (not (= (_1!31657 (h!60568 (toList!6857 lm!2473))) lt!1949234))))))

(declare-fun b!4789663 () Bool)

(assert (=> b!4789663 (= e!2990553 (getValueByKey!2332 (t!361718 (toList!6857 lm!2473)) lt!1949234))))

(declare-fun b!4789661 () Bool)

(assert (=> b!4789661 (= e!2990552 (Some!13046 (_2!31657 (h!60568 (toList!6857 lm!2473)))))))

(declare-fun b!4789664 () Bool)

(assert (=> b!4789664 (= e!2990553 None!13046)))

(declare-fun d!1532208 () Bool)

(declare-fun c!816375 () Bool)

(assert (=> d!1532208 (= c!816375 (and (is-Cons!54144 (toList!6857 lm!2473)) (= (_1!31657 (h!60568 (toList!6857 lm!2473))) lt!1949234)))))

(assert (=> d!1532208 (= (getValueByKey!2332 (toList!6857 lm!2473) lt!1949234) e!2990552)))

(assert (= (and d!1532208 c!816375) b!4789661))

(assert (= (and d!1532208 (not c!816375)) b!4789662))

(assert (= (and b!4789662 c!816376) b!4789663))

(assert (= (and b!4789662 (not c!816376)) b!4789664))

(declare-fun m!5769356 () Bool)

(assert (=> b!4789663 m!5769356))

(assert (=> b!4789387 d!1532208))

(declare-fun d!1532210 () Bool)

(declare-fun res!2035269 () Bool)

(declare-fun e!2990554 () Bool)

(assert (=> d!1532210 (=> res!2035269 e!2990554)))

(assert (=> d!1532210 (= res!2035269 (is-Nil!54144 (t!361718 (toList!6857 lm!2473))))))

(assert (=> d!1532210 (= (forall!12206 (t!361718 (toList!6857 lm!2473)) lambda!229934) e!2990554)))

(declare-fun b!4789665 () Bool)

(declare-fun e!2990555 () Bool)

(assert (=> b!4789665 (= e!2990554 e!2990555)))

(declare-fun res!2035270 () Bool)

(assert (=> b!4789665 (=> (not res!2035270) (not e!2990555))))

(assert (=> b!4789665 (= res!2035270 (dynLambda!22046 lambda!229934 (h!60568 (t!361718 (toList!6857 lm!2473)))))))

(declare-fun b!4789666 () Bool)

(assert (=> b!4789666 (= e!2990555 (forall!12206 (t!361718 (t!361718 (toList!6857 lm!2473))) lambda!229934))))

(assert (= (and d!1532210 (not res!2035269)) b!4789665))

(assert (= (and b!4789665 res!2035270) b!4789666))

(declare-fun b_lambda!186437 () Bool)

(assert (=> (not b_lambda!186437) (not b!4789665)))

(declare-fun m!5769358 () Bool)

(assert (=> b!4789665 m!5769358))

(declare-fun m!5769360 () Bool)

(assert (=> b!4789666 m!5769360))

(assert (=> b!4789442 d!1532210))

(declare-fun bs!1154091 () Bool)

(declare-fun b!4789668 () Bool)

(assert (= bs!1154091 (and b!4789668 b!4789578)))

(declare-fun lambda!230015 () Int)

(assert (=> bs!1154091 (= (= (extractMap!2416 (t!361718 (toList!6857 lt!1949230))) (extractMap!2416 (t!361718 (toList!6857 lm!2473)))) (= lambda!230015 lambda!229998))))

(declare-fun bs!1154092 () Bool)

(assert (= bs!1154092 (and b!4789668 b!4789577)))

(assert (=> bs!1154092 (= (= (extractMap!2416 (t!361718 (toList!6857 lt!1949230))) (extractMap!2416 (t!361718 (toList!6857 lm!2473)))) (= lambda!230015 lambda!229999))))

(assert (=> bs!1154092 (= (= (extractMap!2416 (t!361718 (toList!6857 lt!1949230))) lt!1949453) (= lambda!230015 lambda!230000))))

(declare-fun bs!1154093 () Bool)

(assert (= bs!1154093 (and b!4789668 d!1532150)))

(assert (=> bs!1154093 (= (= (extractMap!2416 (t!361718 (toList!6857 lt!1949230))) lt!1949441) (= lambda!230015 lambda!230001))))

(assert (=> b!4789668 true))

(declare-fun bs!1154094 () Bool)

(declare-fun b!4789667 () Bool)

(assert (= bs!1154094 (and b!4789667 d!1532150)))

(declare-fun lambda!230016 () Int)

(assert (=> bs!1154094 (= (= (extractMap!2416 (t!361718 (toList!6857 lt!1949230))) lt!1949441) (= lambda!230016 lambda!230001))))

(declare-fun bs!1154095 () Bool)

(assert (= bs!1154095 (and b!4789667 b!4789668)))

(assert (=> bs!1154095 (= lambda!230016 lambda!230015)))

(declare-fun bs!1154096 () Bool)

(assert (= bs!1154096 (and b!4789667 b!4789577)))

(assert (=> bs!1154096 (= (= (extractMap!2416 (t!361718 (toList!6857 lt!1949230))) (extractMap!2416 (t!361718 (toList!6857 lm!2473)))) (= lambda!230016 lambda!229999))))

(declare-fun bs!1154097 () Bool)

(assert (= bs!1154097 (and b!4789667 b!4789578)))

(assert (=> bs!1154097 (= (= (extractMap!2416 (t!361718 (toList!6857 lt!1949230))) (extractMap!2416 (t!361718 (toList!6857 lm!2473)))) (= lambda!230016 lambda!229998))))

(assert (=> bs!1154096 (= (= (extractMap!2416 (t!361718 (toList!6857 lt!1949230))) lt!1949453) (= lambda!230016 lambda!230000))))

(assert (=> b!4789667 true))

(declare-fun lt!1949503 () ListMap!6329)

(declare-fun lambda!230017 () Int)

(assert (=> bs!1154094 (= (= lt!1949503 lt!1949441) (= lambda!230017 lambda!230001))))

(assert (=> bs!1154095 (= (= lt!1949503 (extractMap!2416 (t!361718 (toList!6857 lt!1949230)))) (= lambda!230017 lambda!230015))))

(assert (=> b!4789667 (= (= lt!1949503 (extractMap!2416 (t!361718 (toList!6857 lt!1949230)))) (= lambda!230017 lambda!230016))))

(assert (=> bs!1154096 (= (= lt!1949503 (extractMap!2416 (t!361718 (toList!6857 lm!2473)))) (= lambda!230017 lambda!229999))))

(assert (=> bs!1154097 (= (= lt!1949503 (extractMap!2416 (t!361718 (toList!6857 lm!2473)))) (= lambda!230017 lambda!229998))))

(assert (=> bs!1154096 (= (= lt!1949503 lt!1949453) (= lambda!230017 lambda!230000))))

(assert (=> b!4789667 true))

(declare-fun bs!1154098 () Bool)

(declare-fun d!1532212 () Bool)

(assert (= bs!1154098 (and d!1532212 d!1532150)))

(declare-fun lt!1949491 () ListMap!6329)

(declare-fun lambda!230018 () Int)

(assert (=> bs!1154098 (= (= lt!1949491 lt!1949441) (= lambda!230018 lambda!230001))))

(declare-fun bs!1154099 () Bool)

(assert (= bs!1154099 (and d!1532212 b!4789668)))

(assert (=> bs!1154099 (= (= lt!1949491 (extractMap!2416 (t!361718 (toList!6857 lt!1949230)))) (= lambda!230018 lambda!230015))))

(declare-fun bs!1154100 () Bool)

(assert (= bs!1154100 (and d!1532212 b!4789667)))

(assert (=> bs!1154100 (= (= lt!1949491 (extractMap!2416 (t!361718 (toList!6857 lt!1949230)))) (= lambda!230018 lambda!230016))))

(declare-fun bs!1154101 () Bool)

(assert (= bs!1154101 (and d!1532212 b!4789577)))

(assert (=> bs!1154101 (= (= lt!1949491 (extractMap!2416 (t!361718 (toList!6857 lm!2473)))) (= lambda!230018 lambda!229999))))

(assert (=> bs!1154100 (= (= lt!1949491 lt!1949503) (= lambda!230018 lambda!230017))))

(declare-fun bs!1154102 () Bool)

(assert (= bs!1154102 (and d!1532212 b!4789578)))

(assert (=> bs!1154102 (= (= lt!1949491 (extractMap!2416 (t!361718 (toList!6857 lm!2473)))) (= lambda!230018 lambda!229998))))

(assert (=> bs!1154101 (= (= lt!1949491 lt!1949453) (= lambda!230018 lambda!230000))))

(assert (=> d!1532212 true))

(declare-fun c!816377 () Bool)

(declare-fun call!334955 () Bool)

(declare-fun bm!334949 () Bool)

(assert (=> bm!334949 (= call!334955 (forall!12208 (toList!6858 (extractMap!2416 (t!361718 (toList!6857 lt!1949230)))) (ite c!816377 lambda!230015 lambda!230017)))))

(declare-fun e!2990557 () ListMap!6329)

(assert (=> b!4789667 (= e!2990557 lt!1949503)))

(declare-fun lt!1949500 () ListMap!6329)

(assert (=> b!4789667 (= lt!1949500 (+!2479 (extractMap!2416 (t!361718 (toList!6857 lt!1949230))) (h!60567 (_2!31657 (h!60568 (toList!6857 lt!1949230))))))))

(assert (=> b!4789667 (= lt!1949503 (addToMapMapFromBucket!1691 (t!361717 (_2!31657 (h!60568 (toList!6857 lt!1949230)))) (+!2479 (extractMap!2416 (t!361718 (toList!6857 lt!1949230))) (h!60567 (_2!31657 (h!60568 (toList!6857 lt!1949230)))))))))

(declare-fun lt!1949504 () Unit!139688)

(declare-fun call!334956 () Unit!139688)

(assert (=> b!4789667 (= lt!1949504 call!334956)))

(assert (=> b!4789667 (forall!12208 (toList!6858 (extractMap!2416 (t!361718 (toList!6857 lt!1949230)))) lambda!230016)))

(declare-fun lt!1949485 () Unit!139688)

(assert (=> b!4789667 (= lt!1949485 lt!1949504)))

(assert (=> b!4789667 (forall!12208 (toList!6858 lt!1949500) lambda!230017)))

(declare-fun lt!1949492 () Unit!139688)

(declare-fun Unit!139721 () Unit!139688)

(assert (=> b!4789667 (= lt!1949492 Unit!139721)))

(assert (=> b!4789667 (forall!12208 (t!361717 (_2!31657 (h!60568 (toList!6857 lt!1949230)))) lambda!230017)))

(declare-fun lt!1949497 () Unit!139688)

(declare-fun Unit!139722 () Unit!139688)

(assert (=> b!4789667 (= lt!1949497 Unit!139722)))

(declare-fun lt!1949499 () Unit!139688)

(declare-fun Unit!139723 () Unit!139688)

(assert (=> b!4789667 (= lt!1949499 Unit!139723)))

(declare-fun lt!1949493 () Unit!139688)

(assert (=> b!4789667 (= lt!1949493 (forallContained!4144 (toList!6858 lt!1949500) lambda!230017 (h!60567 (_2!31657 (h!60568 (toList!6857 lt!1949230))))))))

(assert (=> b!4789667 (contains!17745 lt!1949500 (_1!31656 (h!60567 (_2!31657 (h!60568 (toList!6857 lt!1949230))))))))

(declare-fun lt!1949488 () Unit!139688)

(declare-fun Unit!139724 () Unit!139688)

(assert (=> b!4789667 (= lt!1949488 Unit!139724)))

(assert (=> b!4789667 (contains!17745 lt!1949503 (_1!31656 (h!60567 (_2!31657 (h!60568 (toList!6857 lt!1949230))))))))

(declare-fun lt!1949490 () Unit!139688)

(declare-fun Unit!139725 () Unit!139688)

(assert (=> b!4789667 (= lt!1949490 Unit!139725)))

(assert (=> b!4789667 (forall!12208 (_2!31657 (h!60568 (toList!6857 lt!1949230))) lambda!230017)))

(declare-fun lt!1949495 () Unit!139688)

(declare-fun Unit!139726 () Unit!139688)

(assert (=> b!4789667 (= lt!1949495 Unit!139726)))

(assert (=> b!4789667 (forall!12208 (toList!6858 lt!1949500) lambda!230017)))

(declare-fun lt!1949489 () Unit!139688)

(declare-fun Unit!139727 () Unit!139688)

(assert (=> b!4789667 (= lt!1949489 Unit!139727)))

(declare-fun lt!1949484 () Unit!139688)

(declare-fun Unit!139728 () Unit!139688)

(assert (=> b!4789667 (= lt!1949484 Unit!139728)))

(declare-fun lt!1949494 () Unit!139688)

(assert (=> b!4789667 (= lt!1949494 (addForallContainsKeyThenBeforeAdding!934 (extractMap!2416 (t!361718 (toList!6857 lt!1949230))) lt!1949503 (_1!31656 (h!60567 (_2!31657 (h!60568 (toList!6857 lt!1949230))))) (_2!31656 (h!60567 (_2!31657 (h!60568 (toList!6857 lt!1949230)))))))))

(assert (=> b!4789667 (forall!12208 (toList!6858 (extractMap!2416 (t!361718 (toList!6857 lt!1949230)))) lambda!230017)))

(declare-fun lt!1949501 () Unit!139688)

(assert (=> b!4789667 (= lt!1949501 lt!1949494)))

(declare-fun call!334954 () Bool)

(assert (=> b!4789667 call!334954))

(declare-fun lt!1949498 () Unit!139688)

(declare-fun Unit!139729 () Unit!139688)

(assert (=> b!4789667 (= lt!1949498 Unit!139729)))

(declare-fun res!2035271 () Bool)

(assert (=> b!4789667 (= res!2035271 (forall!12208 (_2!31657 (h!60568 (toList!6857 lt!1949230))) lambda!230017))))

(declare-fun e!2990556 () Bool)

(assert (=> b!4789667 (=> (not res!2035271) (not e!2990556))))

(assert (=> b!4789667 e!2990556))

(declare-fun lt!1949496 () Unit!139688)

(declare-fun Unit!139730 () Unit!139688)

(assert (=> b!4789667 (= lt!1949496 Unit!139730)))

(assert (=> b!4789668 (= e!2990557 (extractMap!2416 (t!361718 (toList!6857 lt!1949230))))))

(declare-fun lt!1949486 () Unit!139688)

(assert (=> b!4789668 (= lt!1949486 call!334956)))

(assert (=> b!4789668 call!334955))

(declare-fun lt!1949487 () Unit!139688)

(assert (=> b!4789668 (= lt!1949487 lt!1949486)))

(assert (=> b!4789668 call!334954))

(declare-fun lt!1949502 () Unit!139688)

(declare-fun Unit!139731 () Unit!139688)

(assert (=> b!4789668 (= lt!1949502 Unit!139731)))

(declare-fun b!4789669 () Bool)

(assert (=> b!4789669 (= e!2990556 call!334955)))

(declare-fun e!2990558 () Bool)

(assert (=> d!1532212 e!2990558))

(declare-fun res!2035272 () Bool)

(assert (=> d!1532212 (=> (not res!2035272) (not e!2990558))))

(assert (=> d!1532212 (= res!2035272 (forall!12208 (_2!31657 (h!60568 (toList!6857 lt!1949230))) lambda!230018))))

(assert (=> d!1532212 (= lt!1949491 e!2990557)))

(assert (=> d!1532212 (= c!816377 (is-Nil!54143 (_2!31657 (h!60568 (toList!6857 lt!1949230)))))))

(assert (=> d!1532212 (noDuplicateKeys!2322 (_2!31657 (h!60568 (toList!6857 lt!1949230))))))

(assert (=> d!1532212 (= (addToMapMapFromBucket!1691 (_2!31657 (h!60568 (toList!6857 lt!1949230))) (extractMap!2416 (t!361718 (toList!6857 lt!1949230)))) lt!1949491)))

(declare-fun b!4789670 () Bool)

(assert (=> b!4789670 (= e!2990558 (invariantList!1720 (toList!6858 lt!1949491)))))

(declare-fun bm!334950 () Bool)

(assert (=> bm!334950 (= call!334956 (lemmaContainsAllItsOwnKeys!935 (extractMap!2416 (t!361718 (toList!6857 lt!1949230)))))))

(declare-fun bm!334951 () Bool)

(assert (=> bm!334951 (= call!334954 (forall!12208 (toList!6858 (extractMap!2416 (t!361718 (toList!6857 lt!1949230)))) (ite c!816377 lambda!230015 lambda!230017)))))

(declare-fun b!4789671 () Bool)

(declare-fun res!2035273 () Bool)

(assert (=> b!4789671 (=> (not res!2035273) (not e!2990558))))

(assert (=> b!4789671 (= res!2035273 (forall!12208 (toList!6858 (extractMap!2416 (t!361718 (toList!6857 lt!1949230)))) lambda!230018))))

(assert (= (and d!1532212 c!816377) b!4789668))

(assert (= (and d!1532212 (not c!816377)) b!4789667))

(assert (= (and b!4789667 res!2035271) b!4789669))

(assert (= (or b!4789668 b!4789669) bm!334949))

(assert (= (or b!4789668 b!4789667) bm!334951))

(assert (= (or b!4789668 b!4789667) bm!334950))

(assert (= (and d!1532212 res!2035272) b!4789671))

(assert (= (and b!4789671 res!2035273) b!4789670))

(declare-fun m!5769362 () Bool)

(assert (=> b!4789667 m!5769362))

(declare-fun m!5769364 () Bool)

(assert (=> b!4789667 m!5769364))

(assert (=> b!4789667 m!5768968))

(declare-fun m!5769366 () Bool)

(assert (=> b!4789667 m!5769366))

(declare-fun m!5769368 () Bool)

(assert (=> b!4789667 m!5769368))

(assert (=> b!4789667 m!5768968))

(declare-fun m!5769370 () Bool)

(assert (=> b!4789667 m!5769370))

(assert (=> b!4789667 m!5769370))

(declare-fun m!5769372 () Bool)

(assert (=> b!4789667 m!5769372))

(declare-fun m!5769374 () Bool)

(assert (=> b!4789667 m!5769374))

(declare-fun m!5769376 () Bool)

(assert (=> b!4789667 m!5769376))

(assert (=> b!4789667 m!5769374))

(declare-fun m!5769378 () Bool)

(assert (=> b!4789667 m!5769378))

(assert (=> b!4789667 m!5769376))

(declare-fun m!5769380 () Bool)

(assert (=> b!4789667 m!5769380))

(declare-fun m!5769382 () Bool)

(assert (=> b!4789667 m!5769382))

(declare-fun m!5769384 () Bool)

(assert (=> bm!334951 m!5769384))

(declare-fun m!5769386 () Bool)

(assert (=> b!4789670 m!5769386))

(assert (=> bm!334949 m!5769384))

(assert (=> bm!334950 m!5768968))

(declare-fun m!5769388 () Bool)

(assert (=> bm!334950 m!5769388))

(declare-fun m!5769390 () Bool)

(assert (=> b!4789671 m!5769390))

(declare-fun m!5769392 () Bool)

(assert (=> d!1532212 m!5769392))

(declare-fun m!5769394 () Bool)

(assert (=> d!1532212 m!5769394))

(assert (=> b!4789353 d!1532212))

(declare-fun bs!1154103 () Bool)

(declare-fun d!1532214 () Bool)

(assert (= bs!1154103 (and d!1532214 d!1532076)))

(declare-fun lambda!230019 () Int)

(assert (=> bs!1154103 (= lambda!230019 lambda!229954)))

(declare-fun bs!1154104 () Bool)

(assert (= bs!1154104 (and d!1532214 d!1532046)))

(assert (=> bs!1154104 (= lambda!230019 lambda!229940)))

(declare-fun bs!1154105 () Bool)

(assert (= bs!1154105 (and d!1532214 d!1532096)))

(assert (=> bs!1154105 (= lambda!230019 lambda!229959)))

(declare-fun bs!1154106 () Bool)

(assert (= bs!1154106 (and d!1532214 d!1532152)))

(assert (=> bs!1154106 (= lambda!230019 lambda!230002)))

(declare-fun bs!1154107 () Bool)

(assert (= bs!1154107 (and d!1532214 d!1532078)))

(assert (=> bs!1154107 (= lambda!230019 lambda!229958)))

(declare-fun bs!1154108 () Bool)

(assert (= bs!1154108 (and d!1532214 d!1532056)))

(assert (=> bs!1154108 (= lambda!230019 lambda!229946)))

(declare-fun bs!1154109 () Bool)

(assert (= bs!1154109 (and d!1532214 d!1532098)))

(assert (=> bs!1154109 (not (= lambda!230019 lambda!229962))))

(declare-fun bs!1154110 () Bool)

(assert (= bs!1154110 (and d!1532214 start!492824)))

(assert (=> bs!1154110 (= lambda!230019 lambda!229934)))

(declare-fun lt!1949505 () ListMap!6329)

(assert (=> d!1532214 (invariantList!1720 (toList!6858 lt!1949505))))

(declare-fun e!2990559 () ListMap!6329)

(assert (=> d!1532214 (= lt!1949505 e!2990559)))

(declare-fun c!816378 () Bool)

(assert (=> d!1532214 (= c!816378 (is-Cons!54144 (t!361718 (toList!6857 lt!1949230))))))

(assert (=> d!1532214 (forall!12206 (t!361718 (toList!6857 lt!1949230)) lambda!230019)))

(assert (=> d!1532214 (= (extractMap!2416 (t!361718 (toList!6857 lt!1949230))) lt!1949505)))

(declare-fun b!4789672 () Bool)

(assert (=> b!4789672 (= e!2990559 (addToMapMapFromBucket!1691 (_2!31657 (h!60568 (t!361718 (toList!6857 lt!1949230)))) (extractMap!2416 (t!361718 (t!361718 (toList!6857 lt!1949230))))))))

(declare-fun b!4789673 () Bool)

(assert (=> b!4789673 (= e!2990559 (ListMap!6330 Nil!54143))))

(assert (= (and d!1532214 c!816378) b!4789672))

(assert (= (and d!1532214 (not c!816378)) b!4789673))

(declare-fun m!5769396 () Bool)

(assert (=> d!1532214 m!5769396))

(declare-fun m!5769398 () Bool)

(assert (=> d!1532214 m!5769398))

(declare-fun m!5769400 () Bool)

(assert (=> b!4789672 m!5769400))

(assert (=> b!4789672 m!5769400))

(declare-fun m!5769402 () Bool)

(assert (=> b!4789672 m!5769402))

(assert (=> b!4789353 d!1532214))

(declare-fun d!1532216 () Bool)

(declare-fun lt!1949506 () Bool)

(assert (=> d!1532216 (= lt!1949506 (set.member key!5896 (content!9692 (keys!19755 (extractMap!2416 (toList!6857 lt!1949230))))))))

(declare-fun e!2990560 () Bool)

(assert (=> d!1532216 (= lt!1949506 e!2990560)))

(declare-fun res!2035275 () Bool)

(assert (=> d!1532216 (=> (not res!2035275) (not e!2990560))))

(assert (=> d!1532216 (= res!2035275 (is-Cons!54147 (keys!19755 (extractMap!2416 (toList!6857 lt!1949230)))))))

(assert (=> d!1532216 (= (contains!17748 (keys!19755 (extractMap!2416 (toList!6857 lt!1949230))) key!5896) lt!1949506)))

(declare-fun b!4789674 () Bool)

(declare-fun e!2990561 () Bool)

(assert (=> b!4789674 (= e!2990560 e!2990561)))

(declare-fun res!2035274 () Bool)

(assert (=> b!4789674 (=> res!2035274 e!2990561)))

(assert (=> b!4789674 (= res!2035274 (= (h!60571 (keys!19755 (extractMap!2416 (toList!6857 lt!1949230)))) key!5896))))

(declare-fun b!4789675 () Bool)

(assert (=> b!4789675 (= e!2990561 (contains!17748 (t!361721 (keys!19755 (extractMap!2416 (toList!6857 lt!1949230)))) key!5896))))

(assert (= (and d!1532216 res!2035275) b!4789674))

(assert (= (and b!4789674 (not res!2035274)) b!4789675))

(assert (=> d!1532216 m!5768936))

(declare-fun m!5769404 () Bool)

(assert (=> d!1532216 m!5769404))

(declare-fun m!5769406 () Bool)

(assert (=> d!1532216 m!5769406))

(declare-fun m!5769408 () Bool)

(assert (=> b!4789675 m!5769408))

(assert (=> b!4789332 d!1532216))

(declare-fun bs!1154111 () Bool)

(declare-fun b!4789683 () Bool)

(assert (= bs!1154111 (and b!4789683 b!4789650)))

(declare-fun lambda!230024 () Int)

(assert (=> bs!1154111 (= (= (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))) (= lambda!230024 lambda!230011))))

(declare-fun bs!1154112 () Bool)

(assert (= bs!1154112 (and b!4789683 b!4789643)))

(assert (=> bs!1154112 (= (= (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) (Cons!54143 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))))) (= lambda!230024 lambda!230012))))

(declare-fun bs!1154113 () Bool)

(assert (= bs!1154113 (and b!4789683 b!4789648)))

(assert (=> bs!1154113 (= (= (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) (= lambda!230024 lambda!230013))))

(assert (=> b!4789683 true))

(declare-fun bs!1154114 () Bool)

(declare-fun b!4789684 () Bool)

(assert (= bs!1154114 (and b!4789684 b!4789647)))

(declare-fun lambda!230025 () Int)

(assert (=> bs!1154114 (= lambda!230025 lambda!230014)))

(declare-fun d!1532218 () Bool)

(declare-fun e!2990564 () Bool)

(assert (=> d!1532218 e!2990564))

(declare-fun res!2035282 () Bool)

(assert (=> d!1532218 (=> (not res!2035282) (not e!2990564))))

(declare-fun lt!1949509 () List!54271)

(assert (=> d!1532218 (= res!2035282 (noDuplicate!912 lt!1949509))))

(assert (=> d!1532218 (= lt!1949509 (getKeysList!1066 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))))))

(assert (=> d!1532218 (= (keys!19755 (extractMap!2416 (toList!6857 lt!1949230))) lt!1949509)))

(declare-fun b!4789682 () Bool)

(declare-fun res!2035283 () Bool)

(assert (=> b!4789682 (=> (not res!2035283) (not e!2990564))))

(assert (=> b!4789682 (= res!2035283 (= (length!680 lt!1949509) (length!681 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))))))

(declare-fun res!2035284 () Bool)

(assert (=> b!4789683 (=> (not res!2035284) (not e!2990564))))

(assert (=> b!4789683 (= res!2035284 (forall!12209 lt!1949509 lambda!230024))))

(assert (=> b!4789684 (= e!2990564 (= (content!9692 lt!1949509) (content!9692 (map!12218 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) lambda!230025))))))

(assert (= (and d!1532218 res!2035282) b!4789682))

(assert (= (and b!4789682 res!2035283) b!4789683))

(assert (= (and b!4789683 res!2035284) b!4789684))

(declare-fun m!5769410 () Bool)

(assert (=> d!1532218 m!5769410))

(assert (=> d!1532218 m!5768940))

(declare-fun m!5769412 () Bool)

(assert (=> b!4789682 m!5769412))

(declare-fun m!5769414 () Bool)

(assert (=> b!4789682 m!5769414))

(declare-fun m!5769416 () Bool)

(assert (=> b!4789683 m!5769416))

(declare-fun m!5769418 () Bool)

(assert (=> b!4789684 m!5769418))

(declare-fun m!5769420 () Bool)

(assert (=> b!4789684 m!5769420))

(assert (=> b!4789684 m!5769420))

(declare-fun m!5769422 () Bool)

(assert (=> b!4789684 m!5769422))

(assert (=> b!4789332 d!1532218))

(declare-fun d!1532220 () Bool)

(assert (=> d!1532220 (= (isDefined!10186 (getPair!861 (apply!12950 lm!2473 (hash!4915 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29420 (getPair!861 (apply!12950 lm!2473 (hash!4915 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1154115 () Bool)

(assert (= bs!1154115 d!1532220))

(assert (=> bs!1154115 m!5769028))

(declare-fun m!5769424 () Bool)

(assert (=> bs!1154115 m!5769424))

(assert (=> b!4789402 d!1532220))

(declare-fun lt!1949510 () Option!13044)

(declare-fun e!2990568 () Bool)

(declare-fun b!4789687 () Bool)

(assert (=> b!4789687 (= e!2990568 (contains!17749 (apply!12950 lm!2473 (hash!4915 hashF!1559 key!5896)) (get!18442 lt!1949510)))))

(declare-fun b!4789688 () Bool)

(declare-fun e!2990569 () Option!13044)

(declare-fun e!2990567 () Option!13044)

(assert (=> b!4789688 (= e!2990569 e!2990567)))

(declare-fun c!816380 () Bool)

(assert (=> b!4789688 (= c!816380 (is-Cons!54143 (apply!12950 lm!2473 (hash!4915 hashF!1559 key!5896))))))

(declare-fun b!4789689 () Bool)

(assert (=> b!4789689 (= e!2990567 (getPair!861 (t!361717 (apply!12950 lm!2473 (hash!4915 hashF!1559 key!5896))) key!5896))))

(declare-fun b!4789690 () Bool)

(declare-fun e!2990566 () Bool)

(assert (=> b!4789690 (= e!2990566 (not (containsKey!3907 (apply!12950 lm!2473 (hash!4915 hashF!1559 key!5896)) key!5896)))))

(declare-fun b!4789691 () Bool)

(declare-fun res!2035286 () Bool)

(assert (=> b!4789691 (=> (not res!2035286) (not e!2990568))))

(assert (=> b!4789691 (= res!2035286 (= (_1!31656 (get!18442 lt!1949510)) key!5896))))

(declare-fun b!4789692 () Bool)

(declare-fun e!2990565 () Bool)

(assert (=> b!4789692 (= e!2990565 e!2990568)))

(declare-fun res!2035285 () Bool)

(assert (=> b!4789692 (=> (not res!2035285) (not e!2990568))))

(assert (=> b!4789692 (= res!2035285 (isDefined!10186 lt!1949510))))

(declare-fun d!1532222 () Bool)

(assert (=> d!1532222 e!2990565))

(declare-fun res!2035287 () Bool)

(assert (=> d!1532222 (=> res!2035287 e!2990565)))

(assert (=> d!1532222 (= res!2035287 e!2990566)))

(declare-fun res!2035288 () Bool)

(assert (=> d!1532222 (=> (not res!2035288) (not e!2990566))))

(assert (=> d!1532222 (= res!2035288 (isEmpty!29420 lt!1949510))))

(assert (=> d!1532222 (= lt!1949510 e!2990569)))

(declare-fun c!816379 () Bool)

(assert (=> d!1532222 (= c!816379 (and (is-Cons!54143 (apply!12950 lm!2473 (hash!4915 hashF!1559 key!5896))) (= (_1!31656 (h!60567 (apply!12950 lm!2473 (hash!4915 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1532222 (noDuplicateKeys!2322 (apply!12950 lm!2473 (hash!4915 hashF!1559 key!5896)))))

(assert (=> d!1532222 (= (getPair!861 (apply!12950 lm!2473 (hash!4915 hashF!1559 key!5896)) key!5896) lt!1949510)))

(declare-fun b!4789693 () Bool)

(assert (=> b!4789693 (= e!2990567 None!13043)))

(declare-fun b!4789694 () Bool)

(assert (=> b!4789694 (= e!2990569 (Some!13043 (h!60567 (apply!12950 lm!2473 (hash!4915 hashF!1559 key!5896)))))))

(assert (= (and d!1532222 c!816379) b!4789694))

(assert (= (and d!1532222 (not c!816379)) b!4789688))

(assert (= (and b!4789688 c!816380) b!4789689))

(assert (= (and b!4789688 (not c!816380)) b!4789693))

(assert (= (and d!1532222 res!2035288) b!4789690))

(assert (= (and d!1532222 (not res!2035287)) b!4789692))

(assert (= (and b!4789692 res!2035285) b!4789691))

(assert (= (and b!4789691 res!2035286) b!4789687))

(declare-fun m!5769426 () Bool)

(assert (=> d!1532222 m!5769426))

(assert (=> d!1532222 m!5769026))

(declare-fun m!5769428 () Bool)

(assert (=> d!1532222 m!5769428))

(declare-fun m!5769430 () Bool)

(assert (=> b!4789689 m!5769430))

(declare-fun m!5769432 () Bool)

(assert (=> b!4789691 m!5769432))

(declare-fun m!5769434 () Bool)

(assert (=> b!4789692 m!5769434))

(assert (=> b!4789687 m!5769432))

(assert (=> b!4789687 m!5769026))

(assert (=> b!4789687 m!5769432))

(declare-fun m!5769436 () Bool)

(assert (=> b!4789687 m!5769436))

(assert (=> b!4789690 m!5769026))

(declare-fun m!5769438 () Bool)

(assert (=> b!4789690 m!5769438))

(assert (=> b!4789402 d!1532222))

(declare-fun d!1532224 () Bool)

(assert (=> d!1532224 (= (apply!12950 lm!2473 (hash!4915 hashF!1559 key!5896)) (get!18443 (getValueByKey!2332 (toList!6857 lm!2473) (hash!4915 hashF!1559 key!5896))))))

(declare-fun bs!1154116 () Bool)

(assert (= bs!1154116 d!1532224))

(assert (=> bs!1154116 m!5768850))

(declare-fun m!5769440 () Bool)

(assert (=> bs!1154116 m!5769440))

(assert (=> bs!1154116 m!5769440))

(declare-fun m!5769442 () Bool)

(assert (=> bs!1154116 m!5769442))

(assert (=> b!4789402 d!1532224))

(assert (=> b!4789402 d!1532084))

(declare-fun d!1532226 () Bool)

(assert (=> d!1532226 (isDefined!10189 (getValueByKey!2332 (toList!6857 lm!2473) lt!1949234))))

(declare-fun lt!1949513 () Unit!139688)

(declare-fun choose!34463 (List!54268 (_ BitVec 64)) Unit!139688)

(assert (=> d!1532226 (= lt!1949513 (choose!34463 (toList!6857 lm!2473) lt!1949234))))

(declare-fun e!2990572 () Bool)

(assert (=> d!1532226 e!2990572))

(declare-fun res!2035291 () Bool)

(assert (=> d!1532226 (=> (not res!2035291) (not e!2990572))))

(assert (=> d!1532226 (= res!2035291 (isStrictlySorted!868 (toList!6857 lm!2473)))))

(assert (=> d!1532226 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2124 (toList!6857 lm!2473) lt!1949234) lt!1949513)))

(declare-fun b!4789697 () Bool)

(assert (=> b!4789697 (= e!2990572 (containsKey!3910 (toList!6857 lm!2473) lt!1949234))))

(assert (= (and d!1532226 res!2035291) b!4789697))

(assert (=> d!1532226 m!5768992))

(assert (=> d!1532226 m!5768992))

(assert (=> d!1532226 m!5769000))

(declare-fun m!5769444 () Bool)

(assert (=> d!1532226 m!5769444))

(assert (=> d!1532226 m!5769092))

(assert (=> b!4789697 m!5768996))

(assert (=> b!4789385 d!1532226))

(assert (=> b!4789385 d!1532206))

(assert (=> b!4789385 d!1532208))

(declare-fun d!1532228 () Bool)

(assert (=> d!1532228 (= (isDefined!10189 (getValueByKey!2332 (toList!6857 lt!1949230) lt!1949234)) (not (isEmpty!29425 (getValueByKey!2332 (toList!6857 lt!1949230) lt!1949234))))))

(declare-fun bs!1154117 () Bool)

(assert (= bs!1154117 d!1532228))

(assert (=> bs!1154117 m!5769048))

(declare-fun m!5769446 () Bool)

(assert (=> bs!1154117 m!5769446))

(assert (=> b!4789423 d!1532228))

(declare-fun b!4789699 () Bool)

(declare-fun e!2990573 () Option!13047)

(declare-fun e!2990574 () Option!13047)

(assert (=> b!4789699 (= e!2990573 e!2990574)))

(declare-fun c!816382 () Bool)

(assert (=> b!4789699 (= c!816382 (and (is-Cons!54144 (toList!6857 lt!1949230)) (not (= (_1!31657 (h!60568 (toList!6857 lt!1949230))) lt!1949234))))))

(declare-fun b!4789700 () Bool)

(assert (=> b!4789700 (= e!2990574 (getValueByKey!2332 (t!361718 (toList!6857 lt!1949230)) lt!1949234))))

(declare-fun b!4789698 () Bool)

(assert (=> b!4789698 (= e!2990573 (Some!13046 (_2!31657 (h!60568 (toList!6857 lt!1949230)))))))

(declare-fun b!4789701 () Bool)

(assert (=> b!4789701 (= e!2990574 None!13046)))

(declare-fun d!1532230 () Bool)

(declare-fun c!816381 () Bool)

(assert (=> d!1532230 (= c!816381 (and (is-Cons!54144 (toList!6857 lt!1949230)) (= (_1!31657 (h!60568 (toList!6857 lt!1949230))) lt!1949234)))))

(assert (=> d!1532230 (= (getValueByKey!2332 (toList!6857 lt!1949230) lt!1949234) e!2990573)))

(assert (= (and d!1532230 c!816381) b!4789698))

(assert (= (and d!1532230 (not c!816381)) b!4789699))

(assert (= (and b!4789699 c!816382) b!4789700))

(assert (= (and b!4789699 (not c!816382)) b!4789701))

(declare-fun m!5769448 () Bool)

(assert (=> b!4789700 m!5769448))

(assert (=> b!4789423 d!1532230))

(declare-fun d!1532232 () Bool)

(declare-fun c!816383 () Bool)

(declare-fun e!2990576 () Bool)

(assert (=> d!1532232 (= c!816383 e!2990576)))

(declare-fun res!2035292 () Bool)

(assert (=> d!1532232 (=> (not res!2035292) (not e!2990576))))

(assert (=> d!1532232 (= res!2035292 (is-Cons!54144 (t!361718 (toList!6857 lm!2473))))))

(declare-fun e!2990575 () V!15958)

(assert (=> d!1532232 (= (getValue!85 (t!361718 (toList!6857 lm!2473)) key!5896) e!2990575)))

(declare-fun b!4789704 () Bool)

(assert (=> b!4789704 (= e!2990576 (containsKey!3907 (_2!31657 (h!60568 (t!361718 (toList!6857 lm!2473)))) key!5896))))

(declare-fun b!4789702 () Bool)

(assert (=> b!4789702 (= e!2990575 (_2!31656 (get!18442 (getPair!861 (_2!31657 (h!60568 (t!361718 (toList!6857 lm!2473)))) key!5896))))))

(declare-fun b!4789703 () Bool)

(assert (=> b!4789703 (= e!2990575 (getValue!85 (t!361718 (t!361718 (toList!6857 lm!2473))) key!5896))))

(assert (= (and d!1532232 res!2035292) b!4789704))

(assert (= (and d!1532232 c!816383) b!4789702))

(assert (= (and d!1532232 (not c!816383)) b!4789703))

(declare-fun m!5769450 () Bool)

(assert (=> b!4789704 m!5769450))

(declare-fun m!5769452 () Bool)

(assert (=> b!4789702 m!5769452))

(assert (=> b!4789702 m!5769452))

(declare-fun m!5769454 () Bool)

(assert (=> b!4789702 m!5769454))

(declare-fun m!5769456 () Bool)

(assert (=> b!4789703 m!5769456))

(assert (=> b!4789416 d!1532232))

(declare-fun d!1532234 () Bool)

(assert (=> d!1532234 (isDefined!10189 (getValueByKey!2332 (toList!6857 lt!1949230) lt!1949234))))

(declare-fun lt!1949514 () Unit!139688)

(assert (=> d!1532234 (= lt!1949514 (choose!34463 (toList!6857 lt!1949230) lt!1949234))))

(declare-fun e!2990577 () Bool)

(assert (=> d!1532234 e!2990577))

(declare-fun res!2035293 () Bool)

(assert (=> d!1532234 (=> (not res!2035293) (not e!2990577))))

(assert (=> d!1532234 (= res!2035293 (isStrictlySorted!868 (toList!6857 lt!1949230)))))

(assert (=> d!1532234 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2124 (toList!6857 lt!1949230) lt!1949234) lt!1949514)))

(declare-fun b!4789705 () Bool)

(assert (=> b!4789705 (= e!2990577 (containsKey!3910 (toList!6857 lt!1949230) lt!1949234))))

(assert (= (and d!1532234 res!2035293) b!4789705))

(assert (=> d!1532234 m!5769048))

(assert (=> d!1532234 m!5769048))

(assert (=> d!1532234 m!5769050))

(declare-fun m!5769458 () Bool)

(assert (=> d!1532234 m!5769458))

(declare-fun m!5769460 () Bool)

(assert (=> d!1532234 m!5769460))

(assert (=> b!4789705 m!5769044))

(assert (=> b!4789421 d!1532234))

(assert (=> b!4789421 d!1532228))

(assert (=> b!4789421 d!1532230))

(assert (=> b!4789335 d!1532218))

(assert (=> b!4789337 d!1532216))

(assert (=> b!4789337 d!1532218))

(declare-fun d!1532236 () Bool)

(assert (=> d!1532236 (= (get!18443 (getValueByKey!2332 (toList!6857 lm!2473) lt!1949234)) (v!48317 (getValueByKey!2332 (toList!6857 lm!2473) lt!1949234)))))

(assert (=> d!1532068 d!1532236))

(assert (=> d!1532068 d!1532208))

(declare-fun d!1532238 () Bool)

(declare-fun lt!1949515 () Bool)

(assert (=> d!1532238 (= lt!1949515 (set.member key!5896 (content!9692 (keys!19755 (extractMap!2416 (toList!6857 lm!2473))))))))

(declare-fun e!2990578 () Bool)

(assert (=> d!1532238 (= lt!1949515 e!2990578)))

(declare-fun res!2035295 () Bool)

(assert (=> d!1532238 (=> (not res!2035295) (not e!2990578))))

(assert (=> d!1532238 (= res!2035295 (is-Cons!54147 (keys!19755 (extractMap!2416 (toList!6857 lm!2473)))))))

(assert (=> d!1532238 (= (contains!17748 (keys!19755 (extractMap!2416 (toList!6857 lm!2473))) key!5896) lt!1949515)))

(declare-fun b!4789706 () Bool)

(declare-fun e!2990579 () Bool)

(assert (=> b!4789706 (= e!2990578 e!2990579)))

(declare-fun res!2035294 () Bool)

(assert (=> b!4789706 (=> res!2035294 e!2990579)))

(assert (=> b!4789706 (= res!2035294 (= (h!60571 (keys!19755 (extractMap!2416 (toList!6857 lm!2473)))) key!5896))))

(declare-fun b!4789707 () Bool)

(assert (=> b!4789707 (= e!2990579 (contains!17748 (t!361721 (keys!19755 (extractMap!2416 (toList!6857 lm!2473)))) key!5896))))

(assert (= (and d!1532238 res!2035295) b!4789706))

(assert (= (and b!4789706 (not res!2035294)) b!4789707))

(assert (=> d!1532238 m!5769058))

(declare-fun m!5769462 () Bool)

(assert (=> d!1532238 m!5769462))

(declare-fun m!5769464 () Bool)

(assert (=> d!1532238 m!5769464))

(declare-fun m!5769466 () Bool)

(assert (=> b!4789707 m!5769466))

(assert (=> b!4789432 d!1532238))

(declare-fun bs!1154118 () Bool)

(declare-fun b!4789709 () Bool)

(assert (= bs!1154118 (and b!4789709 b!4789650)))

(declare-fun lambda!230026 () Int)

(assert (=> bs!1154118 (= (= (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))) (= lambda!230026 lambda!230011))))

(declare-fun bs!1154119 () Bool)

(assert (= bs!1154119 (and b!4789709 b!4789643)))

(assert (=> bs!1154119 (= (= (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) (Cons!54143 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))))) (= lambda!230026 lambda!230012))))

(declare-fun bs!1154120 () Bool)

(assert (= bs!1154120 (and b!4789709 b!4789648)))

(assert (=> bs!1154120 (= lambda!230026 lambda!230013)))

(declare-fun bs!1154121 () Bool)

(assert (= bs!1154121 (and b!4789709 b!4789683)))

(assert (=> bs!1154121 (= (= (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (= lambda!230026 lambda!230024))))

(assert (=> b!4789709 true))

(declare-fun bs!1154122 () Bool)

(declare-fun b!4789710 () Bool)

(assert (= bs!1154122 (and b!4789710 b!4789647)))

(declare-fun lambda!230027 () Int)

(assert (=> bs!1154122 (= lambda!230027 lambda!230014)))

(declare-fun bs!1154123 () Bool)

(assert (= bs!1154123 (and b!4789710 b!4789684)))

(assert (=> bs!1154123 (= lambda!230027 lambda!230025)))

(declare-fun d!1532240 () Bool)

(declare-fun e!2990580 () Bool)

(assert (=> d!1532240 e!2990580))

(declare-fun res!2035296 () Bool)

(assert (=> d!1532240 (=> (not res!2035296) (not e!2990580))))

(declare-fun lt!1949516 () List!54271)

(assert (=> d!1532240 (= res!2035296 (noDuplicate!912 lt!1949516))))

(assert (=> d!1532240 (= lt!1949516 (getKeysList!1066 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))))))

(assert (=> d!1532240 (= (keys!19755 (extractMap!2416 (toList!6857 lm!2473))) lt!1949516)))

(declare-fun b!4789708 () Bool)

(declare-fun res!2035297 () Bool)

(assert (=> b!4789708 (=> (not res!2035297) (not e!2990580))))

(assert (=> b!4789708 (= res!2035297 (= (length!680 lt!1949516) (length!681 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))))))

(declare-fun res!2035298 () Bool)

(assert (=> b!4789709 (=> (not res!2035298) (not e!2990580))))

(assert (=> b!4789709 (= res!2035298 (forall!12209 lt!1949516 lambda!230026))))

(assert (=> b!4789710 (= e!2990580 (= (content!9692 lt!1949516) (content!9692 (map!12218 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))) lambda!230027))))))

(assert (= (and d!1532240 res!2035296) b!4789708))

(assert (= (and b!4789708 res!2035297) b!4789709))

(assert (= (and b!4789709 res!2035298) b!4789710))

(declare-fun m!5769468 () Bool)

(assert (=> d!1532240 m!5769468))

(assert (=> d!1532240 m!5769062))

(declare-fun m!5769470 () Bool)

(assert (=> b!4789708 m!5769470))

(assert (=> b!4789708 m!5769330))

(declare-fun m!5769472 () Bool)

(assert (=> b!4789709 m!5769472))

(declare-fun m!5769474 () Bool)

(assert (=> b!4789710 m!5769474))

(declare-fun m!5769476 () Bool)

(assert (=> b!4789710 m!5769476))

(assert (=> b!4789710 m!5769476))

(declare-fun m!5769478 () Bool)

(assert (=> b!4789710 m!5769478))

(assert (=> b!4789432 d!1532240))

(declare-fun d!1532242 () Bool)

(assert (=> d!1532242 (= (get!18442 lt!1949289) (v!48314 lt!1949289))))

(assert (=> b!4789375 d!1532242))

(assert (=> b!4789430 d!1532240))

(declare-fun b!4789711 () Bool)

(declare-fun e!2990584 () Bool)

(declare-fun lt!1949517 () Option!13044)

(assert (=> b!4789711 (= e!2990584 (contains!17749 (t!361717 (apply!12950 lm!2473 lt!1949234)) (get!18442 lt!1949517)))))

(declare-fun b!4789712 () Bool)

(declare-fun e!2990585 () Option!13044)

(declare-fun e!2990583 () Option!13044)

(assert (=> b!4789712 (= e!2990585 e!2990583)))

(declare-fun c!816385 () Bool)

(assert (=> b!4789712 (= c!816385 (is-Cons!54143 (t!361717 (apply!12950 lm!2473 lt!1949234))))))

(declare-fun b!4789713 () Bool)

(assert (=> b!4789713 (= e!2990583 (getPair!861 (t!361717 (t!361717 (apply!12950 lm!2473 lt!1949234))) key!5896))))

(declare-fun b!4789714 () Bool)

(declare-fun e!2990582 () Bool)

(assert (=> b!4789714 (= e!2990582 (not (containsKey!3907 (t!361717 (apply!12950 lm!2473 lt!1949234)) key!5896)))))

(declare-fun b!4789715 () Bool)

(declare-fun res!2035300 () Bool)

(assert (=> b!4789715 (=> (not res!2035300) (not e!2990584))))

(assert (=> b!4789715 (= res!2035300 (= (_1!31656 (get!18442 lt!1949517)) key!5896))))

(declare-fun b!4789716 () Bool)

(declare-fun e!2990581 () Bool)

(assert (=> b!4789716 (= e!2990581 e!2990584)))

(declare-fun res!2035299 () Bool)

(assert (=> b!4789716 (=> (not res!2035299) (not e!2990584))))

(assert (=> b!4789716 (= res!2035299 (isDefined!10186 lt!1949517))))

(declare-fun d!1532244 () Bool)

(assert (=> d!1532244 e!2990581))

(declare-fun res!2035301 () Bool)

(assert (=> d!1532244 (=> res!2035301 e!2990581)))

(assert (=> d!1532244 (= res!2035301 e!2990582)))

(declare-fun res!2035302 () Bool)

(assert (=> d!1532244 (=> (not res!2035302) (not e!2990582))))

(assert (=> d!1532244 (= res!2035302 (isEmpty!29420 lt!1949517))))

(assert (=> d!1532244 (= lt!1949517 e!2990585)))

(declare-fun c!816384 () Bool)

(assert (=> d!1532244 (= c!816384 (and (is-Cons!54143 (t!361717 (apply!12950 lm!2473 lt!1949234))) (= (_1!31656 (h!60567 (t!361717 (apply!12950 lm!2473 lt!1949234)))) key!5896)))))

(assert (=> d!1532244 (noDuplicateKeys!2322 (t!361717 (apply!12950 lm!2473 lt!1949234)))))

(assert (=> d!1532244 (= (getPair!861 (t!361717 (apply!12950 lm!2473 lt!1949234)) key!5896) lt!1949517)))

(declare-fun b!4789717 () Bool)

(assert (=> b!4789717 (= e!2990583 None!13043)))

(declare-fun b!4789718 () Bool)

(assert (=> b!4789718 (= e!2990585 (Some!13043 (h!60567 (t!361717 (apply!12950 lm!2473 lt!1949234)))))))

(assert (= (and d!1532244 c!816384) b!4789718))

(assert (= (and d!1532244 (not c!816384)) b!4789712))

(assert (= (and b!4789712 c!816385) b!4789713))

(assert (= (and b!4789712 (not c!816385)) b!4789717))

(assert (= (and d!1532244 res!2035302) b!4789714))

(assert (= (and d!1532244 (not res!2035301)) b!4789716))

(assert (= (and b!4789716 res!2035299) b!4789715))

(assert (= (and b!4789715 res!2035300) b!4789711))

(declare-fun m!5769480 () Bool)

(assert (=> d!1532244 m!5769480))

(declare-fun m!5769482 () Bool)

(assert (=> d!1532244 m!5769482))

(declare-fun m!5769484 () Bool)

(assert (=> b!4789713 m!5769484))

(declare-fun m!5769486 () Bool)

(assert (=> b!4789715 m!5769486))

(declare-fun m!5769488 () Bool)

(assert (=> b!4789716 m!5769488))

(assert (=> b!4789711 m!5769486))

(assert (=> b!4789711 m!5769486))

(declare-fun m!5769490 () Bool)

(assert (=> b!4789711 m!5769490))

(assert (=> b!4789714 m!5769296))

(assert (=> b!4789373 d!1532244))

(declare-fun d!1532246 () Bool)

(declare-fun lt!1949520 () Bool)

(declare-fun content!9693 (List!54267) (Set tuple2!56724))

(assert (=> d!1532246 (= lt!1949520 (set.member (get!18442 lt!1949289) (content!9693 (apply!12950 lm!2473 lt!1949234))))))

(declare-fun e!2990590 () Bool)

(assert (=> d!1532246 (= lt!1949520 e!2990590)))

(declare-fun res!2035307 () Bool)

(assert (=> d!1532246 (=> (not res!2035307) (not e!2990590))))

(assert (=> d!1532246 (= res!2035307 (is-Cons!54143 (apply!12950 lm!2473 lt!1949234)))))

(assert (=> d!1532246 (= (contains!17749 (apply!12950 lm!2473 lt!1949234) (get!18442 lt!1949289)) lt!1949520)))

(declare-fun b!4789723 () Bool)

(declare-fun e!2990591 () Bool)

(assert (=> b!4789723 (= e!2990590 e!2990591)))

(declare-fun res!2035308 () Bool)

(assert (=> b!4789723 (=> res!2035308 e!2990591)))

(assert (=> b!4789723 (= res!2035308 (= (h!60567 (apply!12950 lm!2473 lt!1949234)) (get!18442 lt!1949289)))))

(declare-fun b!4789724 () Bool)

(assert (=> b!4789724 (= e!2990591 (contains!17749 (t!361717 (apply!12950 lm!2473 lt!1949234)) (get!18442 lt!1949289)))))

(assert (= (and d!1532246 res!2035307) b!4789723))

(assert (= (and b!4789723 (not res!2035308)) b!4789724))

(assert (=> d!1532246 m!5768864))

(declare-fun m!5769492 () Bool)

(assert (=> d!1532246 m!5769492))

(assert (=> d!1532246 m!5768980))

(declare-fun m!5769494 () Bool)

(assert (=> d!1532246 m!5769494))

(assert (=> b!4789724 m!5768980))

(declare-fun m!5769496 () Bool)

(assert (=> b!4789724 m!5769496))

(assert (=> b!4789371 d!1532246))

(assert (=> b!4789371 d!1532242))

(declare-fun d!1532248 () Bool)

(declare-fun res!2035309 () Bool)

(declare-fun e!2990592 () Bool)

(assert (=> d!1532248 (=> res!2035309 e!2990592)))

(assert (=> d!1532248 (= res!2035309 (and (is-Cons!54144 (toList!6857 lm!2473)) (= (_1!31657 (h!60568 (toList!6857 lm!2473))) lt!1949234)))))

(assert (=> d!1532248 (= (containsKey!3910 (toList!6857 lm!2473) lt!1949234) e!2990592)))

(declare-fun b!4789725 () Bool)

(declare-fun e!2990593 () Bool)

(assert (=> b!4789725 (= e!2990592 e!2990593)))

(declare-fun res!2035310 () Bool)

(assert (=> b!4789725 (=> (not res!2035310) (not e!2990593))))

(assert (=> b!4789725 (= res!2035310 (and (or (not (is-Cons!54144 (toList!6857 lm!2473))) (bvsle (_1!31657 (h!60568 (toList!6857 lm!2473))) lt!1949234)) (is-Cons!54144 (toList!6857 lm!2473)) (bvslt (_1!31657 (h!60568 (toList!6857 lm!2473))) lt!1949234)))))

(declare-fun b!4789726 () Bool)

(assert (=> b!4789726 (= e!2990593 (containsKey!3910 (t!361718 (toList!6857 lm!2473)) lt!1949234))))

(assert (= (and d!1532248 (not res!2035309)) b!4789725))

(assert (= (and b!4789725 res!2035310) b!4789726))

(declare-fun m!5769498 () Bool)

(assert (=> b!4789726 m!5769498))

(assert (=> d!1532072 d!1532248))

(assert (=> b!4789427 d!1532238))

(assert (=> b!4789427 d!1532240))

(declare-fun d!1532250 () Bool)

(declare-fun res!2035312 () Bool)

(declare-fun e!2990595 () Bool)

(assert (=> d!1532250 (=> res!2035312 e!2990595)))

(declare-fun e!2990594 () Bool)

(assert (=> d!1532250 (= res!2035312 e!2990594)))

(declare-fun res!2035313 () Bool)

(assert (=> d!1532250 (=> (not res!2035313) (not e!2990594))))

(assert (=> d!1532250 (= res!2035313 (is-Cons!54144 (t!361718 (toList!6857 lm!2473))))))

(assert (=> d!1532250 (= (containsKeyBiggerList!539 (t!361718 (toList!6857 lm!2473)) key!5896) e!2990595)))

(declare-fun b!4789727 () Bool)

(assert (=> b!4789727 (= e!2990594 (containsKey!3907 (_2!31657 (h!60568 (t!361718 (toList!6857 lm!2473)))) key!5896))))

(declare-fun b!4789728 () Bool)

(declare-fun e!2990596 () Bool)

(assert (=> b!4789728 (= e!2990595 e!2990596)))

(declare-fun res!2035311 () Bool)

(assert (=> b!4789728 (=> (not res!2035311) (not e!2990596))))

(assert (=> b!4789728 (= res!2035311 (is-Cons!54144 (t!361718 (toList!6857 lm!2473))))))

(declare-fun b!4789729 () Bool)

(assert (=> b!4789729 (= e!2990596 (containsKeyBiggerList!539 (t!361718 (t!361718 (toList!6857 lm!2473))) key!5896))))

(assert (= (and d!1532250 res!2035313) b!4789727))

(assert (= (and d!1532250 (not res!2035312)) b!4789728))

(assert (= (and b!4789728 res!2035311) b!4789729))

(assert (=> b!4789727 m!5769450))

(declare-fun m!5769500 () Bool)

(assert (=> b!4789729 m!5769500))

(assert (=> b!4789396 d!1532250))

(declare-fun d!1532252 () Bool)

(declare-fun choose!34464 (Hashable!6889 K!15712) (_ BitVec 64))

(assert (=> d!1532252 (= (hash!4917 hashF!1559 key!5896) (choose!34464 hashF!1559 key!5896))))

(declare-fun bs!1154124 () Bool)

(assert (= bs!1154124 d!1532252))

(declare-fun m!5769502 () Bool)

(assert (=> bs!1154124 m!5769502))

(assert (=> d!1532084 d!1532252))

(assert (=> b!4789394 d!1532044))

(declare-fun d!1532254 () Bool)

(declare-fun e!2990598 () Bool)

(assert (=> d!1532254 e!2990598))

(declare-fun res!2035314 () Bool)

(assert (=> d!1532254 (=> res!2035314 e!2990598)))

(declare-fun lt!1949522 () Bool)

(assert (=> d!1532254 (= res!2035314 (not lt!1949522))))

(declare-fun lt!1949524 () Bool)

(assert (=> d!1532254 (= lt!1949522 lt!1949524)))

(declare-fun lt!1949523 () Unit!139688)

(declare-fun e!2990597 () Unit!139688)

(assert (=> d!1532254 (= lt!1949523 e!2990597)))

(declare-fun c!816386 () Bool)

(assert (=> d!1532254 (= c!816386 lt!1949524)))

(assert (=> d!1532254 (= lt!1949524 (containsKey!3910 (toList!6857 lm!2473) (hash!4915 hashF!1559 key!5896)))))

(assert (=> d!1532254 (= (contains!17744 lm!2473 (hash!4915 hashF!1559 key!5896)) lt!1949522)))

(declare-fun b!4789730 () Bool)

(declare-fun lt!1949521 () Unit!139688)

(assert (=> b!4789730 (= e!2990597 lt!1949521)))

(assert (=> b!4789730 (= lt!1949521 (lemmaContainsKeyImpliesGetValueByKeyDefined!2124 (toList!6857 lm!2473) (hash!4915 hashF!1559 key!5896)))))

(assert (=> b!4789730 (isDefined!10189 (getValueByKey!2332 (toList!6857 lm!2473) (hash!4915 hashF!1559 key!5896)))))

(declare-fun b!4789731 () Bool)

(declare-fun Unit!139732 () Unit!139688)

(assert (=> b!4789731 (= e!2990597 Unit!139732)))

(declare-fun b!4789732 () Bool)

(assert (=> b!4789732 (= e!2990598 (isDefined!10189 (getValueByKey!2332 (toList!6857 lm!2473) (hash!4915 hashF!1559 key!5896))))))

(assert (= (and d!1532254 c!816386) b!4789730))

(assert (= (and d!1532254 (not c!816386)) b!4789731))

(assert (= (and d!1532254 (not res!2035314)) b!4789732))

(assert (=> d!1532254 m!5768850))

(declare-fun m!5769504 () Bool)

(assert (=> d!1532254 m!5769504))

(assert (=> b!4789730 m!5768850))

(declare-fun m!5769506 () Bool)

(assert (=> b!4789730 m!5769506))

(assert (=> b!4789730 m!5768850))

(assert (=> b!4789730 m!5769440))

(assert (=> b!4789730 m!5769440))

(declare-fun m!5769508 () Bool)

(assert (=> b!4789730 m!5769508))

(assert (=> b!4789732 m!5768850))

(assert (=> b!4789732 m!5769440))

(assert (=> b!4789732 m!5769440))

(assert (=> b!4789732 m!5769508))

(assert (=> d!1532078 d!1532254))

(assert (=> d!1532078 d!1532084))

(declare-fun d!1532256 () Bool)

(declare-fun e!2990601 () Bool)

(assert (=> d!1532256 e!2990601))

(declare-fun res!2035317 () Bool)

(assert (=> d!1532256 (=> (not res!2035317) (not e!2990601))))

(assert (=> d!1532256 (= res!2035317 (contains!17744 lm!2473 (hash!4915 hashF!1559 key!5896)))))

(assert (=> d!1532256 true))

(declare-fun _$5!193 () Unit!139688)

(assert (=> d!1532256 (= (choose!34456 lm!2473 key!5896 hashF!1559) _$5!193)))

(declare-fun b!4789735 () Bool)

(assert (=> b!4789735 (= e!2990601 (isDefined!10186 (getPair!861 (apply!12950 lm!2473 (hash!4915 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1532256 res!2035317) b!4789735))

(assert (=> d!1532256 m!5768850))

(assert (=> d!1532256 m!5768850))

(assert (=> d!1532256 m!5769020))

(assert (=> b!4789735 m!5768850))

(assert (=> b!4789735 m!5768850))

(assert (=> b!4789735 m!5769026))

(assert (=> b!4789735 m!5769026))

(assert (=> b!4789735 m!5769028))

(assert (=> b!4789735 m!5769028))

(assert (=> b!4789735 m!5769030))

(assert (=> d!1532078 d!1532256))

(declare-fun d!1532258 () Bool)

(declare-fun res!2035318 () Bool)

(declare-fun e!2990602 () Bool)

(assert (=> d!1532258 (=> res!2035318 e!2990602)))

(assert (=> d!1532258 (= res!2035318 (is-Nil!54144 (toList!6857 lm!2473)))))

(assert (=> d!1532258 (= (forall!12206 (toList!6857 lm!2473) lambda!229958) e!2990602)))

(declare-fun b!4789736 () Bool)

(declare-fun e!2990603 () Bool)

(assert (=> b!4789736 (= e!2990602 e!2990603)))

(declare-fun res!2035319 () Bool)

(assert (=> b!4789736 (=> (not res!2035319) (not e!2990603))))

(assert (=> b!4789736 (= res!2035319 (dynLambda!22046 lambda!229958 (h!60568 (toList!6857 lm!2473))))))

(declare-fun b!4789737 () Bool)

(assert (=> b!4789737 (= e!2990603 (forall!12206 (t!361718 (toList!6857 lm!2473)) lambda!229958))))

(assert (= (and d!1532258 (not res!2035318)) b!4789736))

(assert (= (and b!4789736 res!2035319) b!4789737))

(declare-fun b_lambda!186439 () Bool)

(assert (=> (not b_lambda!186439) (not b!4789736)))

(declare-fun m!5769510 () Bool)

(assert (=> b!4789736 m!5769510))

(declare-fun m!5769512 () Bool)

(assert (=> b!4789737 m!5769512))

(assert (=> d!1532078 d!1532258))

(assert (=> b!4789329 d!1532138))

(assert (=> b!4789329 d!1532140))

(assert (=> d!1532094 d!1532176))

(declare-fun d!1532260 () Bool)

(assert (=> d!1532260 (= (isEmpty!29420 lt!1949289) (not (is-Some!13043 lt!1949289)))))

(assert (=> d!1532066 d!1532260))

(declare-fun d!1532262 () Bool)

(declare-fun res!2035320 () Bool)

(declare-fun e!2990604 () Bool)

(assert (=> d!1532262 (=> res!2035320 e!2990604)))

(assert (=> d!1532262 (= res!2035320 (not (is-Cons!54143 (apply!12950 lm!2473 lt!1949234))))))

(assert (=> d!1532262 (= (noDuplicateKeys!2322 (apply!12950 lm!2473 lt!1949234)) e!2990604)))

(declare-fun b!4789738 () Bool)

(declare-fun e!2990605 () Bool)

(assert (=> b!4789738 (= e!2990604 e!2990605)))

(declare-fun res!2035321 () Bool)

(assert (=> b!4789738 (=> (not res!2035321) (not e!2990605))))

(assert (=> b!4789738 (= res!2035321 (not (containsKey!3907 (t!361717 (apply!12950 lm!2473 lt!1949234)) (_1!31656 (h!60567 (apply!12950 lm!2473 lt!1949234))))))))

(declare-fun b!4789739 () Bool)

(assert (=> b!4789739 (= e!2990605 (noDuplicateKeys!2322 (t!361717 (apply!12950 lm!2473 lt!1949234))))))

(assert (= (and d!1532262 (not res!2035320)) b!4789738))

(assert (= (and b!4789738 res!2035321) b!4789739))

(declare-fun m!5769514 () Bool)

(assert (=> b!4789738 m!5769514))

(assert (=> b!4789739 m!5769482))

(assert (=> d!1532066 d!1532262))

(declare-fun bs!1154125 () Bool)

(declare-fun b!4789748 () Bool)

(assert (= bs!1154125 (and b!4789748 b!4789709)))

(declare-fun lambda!230028 () Int)

(assert (=> bs!1154125 (= (= (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) (= lambda!230028 lambda!230026))))

(declare-fun bs!1154126 () Bool)

(assert (= bs!1154126 (and b!4789748 b!4789683)))

(assert (=> bs!1154126 (= (= (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (= lambda!230028 lambda!230024))))

(declare-fun bs!1154127 () Bool)

(assert (= bs!1154127 (and b!4789748 b!4789643)))

(assert (=> bs!1154127 (= (= (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (Cons!54143 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))))) (= lambda!230028 lambda!230012))))

(declare-fun bs!1154128 () Bool)

(assert (= bs!1154128 (and b!4789748 b!4789648)))

(assert (=> bs!1154128 (= (= (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) (= lambda!230028 lambda!230013))))

(declare-fun bs!1154129 () Bool)

(assert (= bs!1154129 (and b!4789748 b!4789650)))

(assert (=> bs!1154129 (= (= (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))) (= lambda!230028 lambda!230011))))

(assert (=> b!4789748 true))

(declare-fun bs!1154130 () Bool)

(declare-fun b!4789741 () Bool)

(assert (= bs!1154130 (and b!4789741 b!4789709)))

(declare-fun lambda!230029 () Int)

(assert (=> bs!1154130 (= (= (Cons!54143 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))) (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) (= lambda!230029 lambda!230026))))

(declare-fun bs!1154131 () Bool)

(assert (= bs!1154131 (and b!4789741 b!4789683)))

(assert (=> bs!1154131 (= (= (Cons!54143 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))) (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (= lambda!230029 lambda!230024))))

(declare-fun bs!1154132 () Bool)

(assert (= bs!1154132 (and b!4789741 b!4789643)))

(assert (=> bs!1154132 (= (= (Cons!54143 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))) (Cons!54143 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))))) (= lambda!230029 lambda!230012))))

(declare-fun bs!1154133 () Bool)

(assert (= bs!1154133 (and b!4789741 b!4789648)))

(assert (=> bs!1154133 (= (= (Cons!54143 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))) (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) (= lambda!230029 lambda!230013))))

(declare-fun bs!1154134 () Bool)

(assert (= bs!1154134 (and b!4789741 b!4789748)))

(assert (=> bs!1154134 (= (= (Cons!54143 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))) (= lambda!230029 lambda!230028))))

(declare-fun bs!1154135 () Bool)

(assert (= bs!1154135 (and b!4789741 b!4789650)))

(assert (=> bs!1154135 (= (= (Cons!54143 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))) (= lambda!230029 lambda!230011))))

(assert (=> b!4789741 true))

(declare-fun bs!1154136 () Bool)

(declare-fun b!4789746 () Bool)

(assert (= bs!1154136 (and b!4789746 b!4789709)))

(declare-fun lambda!230030 () Int)

(assert (=> bs!1154136 (= (= (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) (= lambda!230030 lambda!230026))))

(declare-fun bs!1154137 () Bool)

(assert (= bs!1154137 (and b!4789746 b!4789643)))

(assert (=> bs!1154137 (= (= (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) (Cons!54143 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))))) (= lambda!230030 lambda!230012))))

(declare-fun bs!1154138 () Bool)

(assert (= bs!1154138 (and b!4789746 b!4789648)))

(assert (=> bs!1154138 (= (= (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) (toList!6858 (extractMap!2416 (toList!6857 lm!2473)))) (= lambda!230030 lambda!230013))))

(declare-fun bs!1154139 () Bool)

(assert (= bs!1154139 (and b!4789746 b!4789748)))

(assert (=> bs!1154139 (= (= (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))) (= lambda!230030 lambda!230028))))

(declare-fun bs!1154140 () Bool)

(assert (= bs!1154140 (and b!4789746 b!4789650)))

(assert (=> bs!1154140 (= (= (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lm!2473))))) (= lambda!230030 lambda!230011))))

(declare-fun bs!1154141 () Bool)

(assert (= bs!1154141 (and b!4789746 b!4789741)))

(assert (=> bs!1154141 (= (= (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) (Cons!54143 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))))) (= lambda!230030 lambda!230029))))

(declare-fun bs!1154142 () Bool)

(assert (= bs!1154142 (and b!4789746 b!4789683)))

(assert (=> bs!1154142 (= lambda!230030 lambda!230024)))

(assert (=> b!4789746 true))

(declare-fun bs!1154143 () Bool)

(declare-fun b!4789745 () Bool)

(assert (= bs!1154143 (and b!4789745 b!4789647)))

(declare-fun lambda!230031 () Int)

(assert (=> bs!1154143 (= lambda!230031 lambda!230014)))

(declare-fun bs!1154144 () Bool)

(assert (= bs!1154144 (and b!4789745 b!4789684)))

(assert (=> bs!1154144 (= lambda!230031 lambda!230025)))

(declare-fun bs!1154145 () Bool)

(assert (= bs!1154145 (and b!4789745 b!4789710)))

(assert (=> bs!1154145 (= lambda!230031 lambda!230027)))

(declare-fun b!4789740 () Bool)

(declare-fun res!2035323 () Bool)

(declare-fun e!2990606 () Bool)

(assert (=> b!4789740 (=> (not res!2035323) (not e!2990606))))

(declare-fun lt!1949525 () List!54271)

(assert (=> b!4789740 (= res!2035323 (= (length!680 lt!1949525) (length!681 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))))))

(declare-fun e!2990608 () List!54271)

(assert (=> b!4789741 (= e!2990608 (Cons!54147 (_1!31656 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))) (getKeysList!1066 (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))))))))

(declare-fun c!816388 () Bool)

(assert (=> b!4789741 (= c!816388 (containsKey!3909 (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) (_1!31656 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))))))))

(declare-fun lt!1949528 () Unit!139688)

(declare-fun e!2990609 () Unit!139688)

(assert (=> b!4789741 (= lt!1949528 e!2990609)))

(declare-fun c!816387 () Bool)

(assert (=> b!4789741 (= c!816387 (contains!17748 (getKeysList!1066 (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))) (_1!31656 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))))))))

(declare-fun lt!1949531 () Unit!139688)

(declare-fun e!2990607 () Unit!139688)

(assert (=> b!4789741 (= lt!1949531 e!2990607)))

(declare-fun lt!1949529 () List!54271)

(assert (=> b!4789741 (= lt!1949529 (getKeysList!1066 (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))))))

(declare-fun lt!1949530 () Unit!139688)

(assert (=> b!4789741 (= lt!1949530 (lemmaForallContainsAddHeadPreserves!327 (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) lt!1949529 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))))))

(assert (=> b!4789741 (forall!12209 lt!1949529 lambda!230029)))

(declare-fun lt!1949526 () Unit!139688)

(assert (=> b!4789741 (= lt!1949526 lt!1949530)))

(declare-fun b!4789742 () Bool)

(assert (=> b!4789742 false))

(declare-fun Unit!139733 () Unit!139688)

(assert (=> b!4789742 (= e!2990609 Unit!139733)))

(declare-fun d!1532264 () Bool)

(assert (=> d!1532264 e!2990606))

(declare-fun res!2035324 () Bool)

(assert (=> d!1532264 (=> (not res!2035324) (not e!2990606))))

(assert (=> d!1532264 (= res!2035324 (noDuplicate!912 lt!1949525))))

(assert (=> d!1532264 (= lt!1949525 e!2990608)))

(declare-fun c!816389 () Bool)

(assert (=> d!1532264 (= c!816389 (is-Cons!54143 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))))))

(assert (=> d!1532264 (invariantList!1720 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))))

(assert (=> d!1532264 (= (getKeysList!1066 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))) lt!1949525)))

(declare-fun b!4789743 () Bool)

(declare-fun Unit!139734 () Unit!139688)

(assert (=> b!4789743 (= e!2990609 Unit!139734)))

(declare-fun b!4789744 () Bool)

(assert (=> b!4789744 (= e!2990608 Nil!54147)))

(assert (=> b!4789745 (= e!2990606 (= (content!9692 lt!1949525) (content!9692 (map!12218 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))) lambda!230031))))))

(declare-fun res!2035322 () Bool)

(assert (=> b!4789746 (=> (not res!2035322) (not e!2990606))))

(assert (=> b!4789746 (= res!2035322 (forall!12209 lt!1949525 lambda!230030))))

(declare-fun b!4789747 () Bool)

(declare-fun Unit!139735 () Unit!139688)

(assert (=> b!4789747 (= e!2990607 Unit!139735)))

(assert (=> b!4789748 false))

(declare-fun lt!1949527 () Unit!139688)

(assert (=> b!4789748 (= lt!1949527 (forallContained!4145 (getKeysList!1066 (t!361717 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230))))) lambda!230028 (_1!31656 (h!60567 (toList!6858 (extractMap!2416 (toList!6857 lt!1949230)))))))))

(declare-fun Unit!139736 () Unit!139688)

(assert (=> b!4789748 (= e!2990607 Unit!139736)))

(assert (= (and d!1532264 c!816389) b!4789741))

(assert (= (and d!1532264 (not c!816389)) b!4789744))

(assert (= (and b!4789741 c!816388) b!4789742))

(assert (= (and b!4789741 (not c!816388)) b!4789743))

(assert (= (and b!4789741 c!816387) b!4789748))

(assert (= (and b!4789741 (not c!816387)) b!4789747))

(assert (= (and d!1532264 res!2035324) b!4789740))

(assert (= (and b!4789740 res!2035323) b!4789746))

(assert (= (and b!4789746 res!2035322) b!4789745))

(declare-fun m!5769516 () Bool)

(assert (=> b!4789740 m!5769516))

(assert (=> b!4789740 m!5769414))

(declare-fun m!5769518 () Bool)

(assert (=> d!1532264 m!5769518))

(assert (=> d!1532264 m!5769208))

(declare-fun m!5769520 () Bool)

(assert (=> b!4789748 m!5769520))

(assert (=> b!4789748 m!5769520))

(declare-fun m!5769522 () Bool)

(assert (=> b!4789748 m!5769522))

(assert (=> b!4789741 m!5769520))

(declare-fun m!5769524 () Bool)

(assert (=> b!4789741 m!5769524))

(assert (=> b!4789741 m!5769520))

(declare-fun m!5769526 () Bool)

(assert (=> b!4789741 m!5769526))

(declare-fun m!5769528 () Bool)

(assert (=> b!4789741 m!5769528))

(declare-fun m!5769530 () Bool)

(assert (=> b!4789741 m!5769530))

(declare-fun m!5769532 () Bool)

(assert (=> b!4789745 m!5769532))

(declare-fun m!5769534 () Bool)

(assert (=> b!4789745 m!5769534))

(assert (=> b!4789745 m!5769534))

(declare-fun m!5769536 () Bool)

(assert (=> b!4789745 m!5769536))

(declare-fun m!5769538 () Bool)

(assert (=> b!4789746 m!5769538))

(assert (=> b!4789331 d!1532264))

(declare-fun b!4789753 () Bool)

(declare-fun tp!1357859 () Bool)

(declare-fun e!2990612 () Bool)

(assert (=> b!4789753 (= e!2990612 (and tp_is_empty!33437 tp_is_empty!33439 tp!1357859))))

(assert (=> b!4789447 (= tp!1357849 e!2990612)))

(assert (= (and b!4789447 (is-Cons!54143 (_2!31657 (h!60568 (toList!6857 lm!2473))))) b!4789753))

(declare-fun b!4789754 () Bool)

(declare-fun e!2990613 () Bool)

(declare-fun tp!1357860 () Bool)

(declare-fun tp!1357861 () Bool)

(assert (=> b!4789754 (= e!2990613 (and tp!1357860 tp!1357861))))

(assert (=> b!4789447 (= tp!1357850 e!2990613)))

(assert (= (and b!4789447 (is-Cons!54144 (t!361718 (toList!6857 lm!2473)))) b!4789754))

(declare-fun b_lambda!186441 () Bool)

(assert (= b_lambda!186435 (or d!1532056 b_lambda!186441)))

(declare-fun bs!1154146 () Bool)

(declare-fun d!1532266 () Bool)

(assert (= bs!1154146 (and d!1532266 d!1532056)))

(assert (=> bs!1154146 (= (dynLambda!22046 lambda!229946 (h!60568 (toList!6857 lt!1949230))) (noDuplicateKeys!2322 (_2!31657 (h!60568 (toList!6857 lt!1949230)))))))

(assert (=> bs!1154146 m!5769394))

(assert (=> b!4789614 d!1532266))

(declare-fun b_lambda!186443 () Bool)

(assert (= b_lambda!186433 (or d!1532076 b_lambda!186443)))

(declare-fun bs!1154147 () Bool)

(declare-fun d!1532268 () Bool)

(assert (= bs!1154147 (and d!1532268 d!1532076)))

(assert (=> bs!1154147 (= (dynLambda!22046 lambda!229954 (h!60568 (toList!6857 lm!2473))) (noDuplicateKeys!2322 (_2!31657 (h!60568 (toList!6857 lm!2473)))))))

(assert (=> bs!1154147 m!5769094))

(assert (=> b!4789602 d!1532268))

(declare-fun b_lambda!186445 () Bool)

(assert (= b_lambda!186429 (or d!1532096 b_lambda!186445)))

(declare-fun bs!1154148 () Bool)

(declare-fun d!1532270 () Bool)

(assert (= bs!1154148 (and d!1532270 d!1532096)))

(assert (=> bs!1154148 (= (dynLambda!22046 lambda!229959 (h!60568 (toList!6857 lm!2473))) (noDuplicateKeys!2322 (_2!31657 (h!60568 (toList!6857 lm!2473)))))))

(assert (=> bs!1154148 m!5769094))

(assert (=> b!4789594 d!1532270))

(declare-fun b_lambda!186447 () Bool)

(assert (= b_lambda!186427 (or d!1532046 b_lambda!186447)))

(declare-fun bs!1154149 () Bool)

(declare-fun d!1532272 () Bool)

(assert (= bs!1154149 (and d!1532272 d!1532046)))

(assert (=> bs!1154149 (= (dynLambda!22046 lambda!229940 (h!60568 (toList!6857 lt!1949230))) (noDuplicateKeys!2322 (_2!31657 (h!60568 (toList!6857 lt!1949230)))))))

(assert (=> bs!1154149 m!5769394))

(assert (=> b!4789592 d!1532272))

(declare-fun b_lambda!186449 () Bool)

(assert (= b_lambda!186439 (or d!1532078 b_lambda!186449)))

(declare-fun bs!1154150 () Bool)

(declare-fun d!1532274 () Bool)

(assert (= bs!1154150 (and d!1532274 d!1532078)))

(assert (=> bs!1154150 (= (dynLambda!22046 lambda!229958 (h!60568 (toList!6857 lm!2473))) (noDuplicateKeys!2322 (_2!31657 (h!60568 (toList!6857 lm!2473)))))))

(assert (=> bs!1154150 m!5769094))

(assert (=> b!4789736 d!1532274))

(declare-fun b_lambda!186451 () Bool)

(assert (= b_lambda!186437 (or start!492824 b_lambda!186451)))

(declare-fun bs!1154151 () Bool)

(declare-fun d!1532276 () Bool)

(assert (= bs!1154151 (and d!1532276 start!492824)))

(assert (=> bs!1154151 (= (dynLambda!22046 lambda!229934 (h!60568 (t!361718 (toList!6857 lm!2473)))) (noDuplicateKeys!2322 (_2!31657 (h!60568 (t!361718 (toList!6857 lm!2473))))))))

(declare-fun m!5769540 () Bool)

(assert (=> bs!1154151 m!5769540))

(assert (=> b!4789665 d!1532276))

(declare-fun b_lambda!186453 () Bool)

(assert (= b_lambda!186431 (or d!1532098 b_lambda!186453)))

(declare-fun bs!1154152 () Bool)

(declare-fun d!1532278 () Bool)

(assert (= bs!1154152 (and d!1532278 d!1532098)))

(declare-fun allKeysSameHash!1952 (List!54267 (_ BitVec 64) Hashable!6889) Bool)

(assert (=> bs!1154152 (= (dynLambda!22046 lambda!229962 (h!60568 (toList!6857 lm!2473))) (allKeysSameHash!1952 (_2!31657 (h!60568 (toList!6857 lm!2473))) (_1!31657 (h!60568 (toList!6857 lm!2473))) hashF!1559))))

(declare-fun m!5769542 () Bool)

(assert (=> bs!1154152 m!5769542))

(assert (=> b!4789596 d!1532278))

(push 1)

(assert (not b!4789689))

(assert (not d!1532212))

(assert (not d!1532204))

(assert (not d!1532216))

(assert (not b!4789671))

(assert (not b!4789735))

(assert (not b!4789675))

(assert (not d!1532188))

(assert (not d!1532218))

(assert (not b!4789692))

(assert (not b!4789682))

(assert (not b!4789666))

(assert (not bm!334951))

(assert (not d!1532214))

(assert (not b!4789599))

(assert (not b!4789713))

(assert (not d!1532196))

(assert (not b!4789708))

(assert (not b!4789609))

(assert (not b!4789739))

(assert (not b!4789559))

(assert (not b!4789601))

(assert (not b!4789558))

(assert (not b!4789709))

(assert (not b!4789726))

(assert (not b!4789561))

(assert (not b!4789741))

(assert (not b!4789691))

(assert (not b!4789748))

(assert (not b!4789580))

(assert (not d!1532182))

(assert (not b_lambda!186447))

(assert (not b!4789595))

(assert (not b!4789754))

(assert (not b!4789753))

(assert (not b!4789715))

(assert (not bs!1154146))

(assert (not b!4789612))

(assert (not b!4789647))

(assert (not d!1532234))

(assert (not b!4789650))

(assert (not bs!1154152))

(assert (not b!4789732))

(assert (not d!1532246))

(assert (not b!4789700))

(assert (not d!1532228))

(assert (not b_lambda!186443))

(assert (not d!1532194))

(assert (not b!4789714))

(assert (not b!4789648))

(assert (not d!1532240))

(assert (not d!1532244))

(assert (not d!1532136))

(assert (not b_lambda!186423))

(assert (not b!4789729))

(assert (not b!4789564))

(assert (not d!1532220))

(assert (not b!4789593))

(assert (not b!4789621))

(assert (not b!4789738))

(assert (not d!1532254))

(assert (not bs!1154149))

(assert (not b!4789702))

(assert (not d!1532170))

(assert (not b!4789745))

(assert (not bm!334948))

(assert (not b!4789740))

(assert (not b!4789746))

(assert (not b!4789716))

(assert (not d!1532150))

(assert (not b!4789730))

(assert (not b!4789540))

(assert tp_is_empty!33439)

(assert (not bm!334947))

(assert (not b_lambda!186449))

(assert (not d!1532264))

(assert (not b!4789687))

(assert (not b!4789703))

(assert (not d!1532226))

(assert (not b!4789643))

(assert (not b!4789577))

(assert (not b!4789724))

(assert (not d!1532152))

(assert (not b!4789710))

(assert (not b!4789581))

(assert (not d!1532166))

(assert (not b!4789557))

(assert (not b_lambda!186451))

(assert tp_is_empty!33437)

(assert (not bs!1154147))

(assert (not d!1532252))

(assert (not b!4789663))

(assert (not d!1532134))

(assert (not b!4789603))

(assert (not bs!1154150))

(assert (not b!4789704))

(assert (not d!1532224))

(assert (not d!1532142))

(assert (not bs!1154151))

(assert (not b!4789584))

(assert (not b!4789697))

(assert (not b!4789597))

(assert (not b!4789591))

(assert (not d!1532256))

(assert (not d!1532158))

(assert (not bs!1154148))

(assert (not b!4789737))

(assert (not b!4789683))

(assert (not d!1532156))

(assert (not b!4789642))

(assert (not b!4789562))

(assert (not b!4789534))

(assert (not b_lambda!186441))

(assert (not bm!334950))

(assert (not b!4789711))

(assert (not d!1532190))

(assert (not d!1532138))

(assert (not bm!334946))

(assert (not b_lambda!186453))

(assert (not b!4789690))

(assert (not b!4789684))

(assert (not bm!334949))

(assert (not b!4789670))

(assert (not d!1532206))

(assert (not b!4789563))

(assert (not b!4789551))

(assert (not b!4789707))

(assert (not d!1532148))

(assert (not b!4789623))

(assert (not b!4789667))

(assert (not b!4789672))

(assert (not b!4789615))

(assert (not d!1532222))

(assert (not d!1532238))

(assert (not b_lambda!186445))

(assert (not d!1532202))

(assert (not b!4789727))

(assert (not b!4789705))

(assert (not d!1532178))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

