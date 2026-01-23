; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472164 () Bool)

(assert start!472164)

(declare-fun b!4677497 () Bool)

(declare-fun res!1970424 () Bool)

(declare-fun e!2918424 () Bool)

(assert (=> b!4677497 (=> (not res!1970424) (not e!2918424))))

(declare-datatypes ((K!13585 0))(
  ( (K!13586 (val!19139 Int)) )
))
(declare-datatypes ((V!13831 0))(
  ( (V!13832 (val!19140 Int)) )
))
(declare-datatypes ((tuple2!53490 0))(
  ( (tuple2!53491 (_1!30039 K!13585) (_2!30039 V!13831)) )
))
(declare-datatypes ((List!52331 0))(
  ( (Nil!52207) (Cons!52207 (h!58410 tuple2!53490) (t!359477 List!52331)) )
))
(declare-fun oldBucket!34 () List!52331)

(declare-fun noDuplicateKeys!1774 (List!52331) Bool)

(assert (=> b!4677497 (= res!1970424 (noDuplicateKeys!1774 oldBucket!34))))

(declare-fun tp_is_empty!30391 () Bool)

(declare-fun e!2918432 () Bool)

(declare-fun tp_is_empty!30389 () Bool)

(declare-fun b!4677498 () Bool)

(declare-fun tp!1344776 () Bool)

(assert (=> b!4677498 (= e!2918432 (and tp_is_empty!30389 tp_is_empty!30391 tp!1344776))))

(declare-fun b!4677499 () Bool)

(declare-fun e!2918430 () Bool)

(declare-fun e!2918428 () Bool)

(assert (=> b!4677499 (= e!2918430 (not e!2918428))))

(declare-fun res!1970434 () Bool)

(assert (=> b!4677499 (=> res!1970434 e!2918428)))

(declare-fun key!4653 () K!13585)

(get-info :version)

(assert (=> b!4677499 (= res!1970434 (or (not ((_ is Cons!52207) oldBucket!34)) (not (= (_1!30039 (h!58410 oldBucket!34)) key!4653))))))

(declare-datatypes ((ListMap!4801 0))(
  ( (ListMap!4802 (toList!5437 List!52331)) )
))
(declare-fun lt!1837208 () ListMap!4801)

(declare-datatypes ((tuple2!53492 0))(
  ( (tuple2!53493 (_1!30040 (_ BitVec 64)) (_2!30040 List!52331)) )
))
(declare-datatypes ((List!52332 0))(
  ( (Nil!52208) (Cons!52208 (h!58411 tuple2!53492) (t!359478 List!52332)) )
))
(declare-datatypes ((ListLongMap!3967 0))(
  ( (ListLongMap!3968 (toList!5438 List!52332)) )
))
(declare-fun lm!2023 () ListLongMap!3967)

(declare-fun lt!1837207 () ListMap!4801)

(declare-fun addToMapMapFromBucket!1206 (List!52331 ListMap!4801) ListMap!4801)

(assert (=> b!4677499 (= lt!1837208 (addToMapMapFromBucket!1206 (_2!30040 (h!58411 (toList!5438 lm!2023))) lt!1837207))))

(declare-fun extractMap!1800 (List!52332) ListMap!4801)

(assert (=> b!4677499 (= lt!1837207 (extractMap!1800 (t!359478 (toList!5438 lm!2023))))))

(declare-fun tail!8398 (ListLongMap!3967) ListLongMap!3967)

(assert (=> b!4677499 (= (t!359478 (toList!5438 lm!2023)) (toList!5438 (tail!8398 lm!2023)))))

(declare-fun tp!1344777 () Bool)

(declare-fun e!2918427 () Bool)

(declare-fun b!4677501 () Bool)

(assert (=> b!4677501 (= e!2918427 (and tp_is_empty!30389 tp_is_empty!30391 tp!1344777))))

(declare-fun b!4677502 () Bool)

(declare-fun res!1970438 () Bool)

(declare-fun e!2918425 () Bool)

(assert (=> b!4677502 (=> res!1970438 e!2918425)))

(declare-fun lt!1837203 () List!52331)

(declare-fun containsKey!2911 (List!52331 K!13585) Bool)

(assert (=> b!4677502 (= res!1970438 (containsKey!2911 lt!1837203 key!4653))))

(declare-fun b!4677503 () Bool)

(declare-fun e!2918426 () Bool)

(assert (=> b!4677503 (= e!2918428 e!2918426)))

(declare-fun res!1970435 () Bool)

(assert (=> b!4677503 (=> res!1970435 e!2918426)))

(declare-fun newBucket!218 () List!52331)

(assert (=> b!4677503 (= res!1970435 (not (= lt!1837203 newBucket!218)))))

(declare-fun tail!8399 (List!52331) List!52331)

(assert (=> b!4677503 (= lt!1837203 (tail!8399 oldBucket!34))))

(declare-fun b!4677504 () Bool)

(declare-fun e!2918429 () Bool)

(declare-fun lt!1837201 () List!52332)

(declare-fun lambda!203987 () Int)

(declare-fun forall!11199 (List!52332 Int) Bool)

(assert (=> b!4677504 (= e!2918429 (forall!11199 lt!1837201 lambda!203987))))

(declare-fun b!4677505 () Bool)

(declare-fun res!1970431 () Bool)

(assert (=> b!4677505 (=> (not res!1970431) (not e!2918424))))

(declare-datatypes ((Hashable!6143 0))(
  ( (HashableExt!6142 (__x!31846 Int)) )
))
(declare-fun hashF!1323 () Hashable!6143)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1600 (List!52331 (_ BitVec 64) Hashable!6143) Bool)

(assert (=> b!4677505 (= res!1970431 (allKeysSameHash!1600 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4677506 () Bool)

(declare-fun res!1970427 () Bool)

(assert (=> b!4677506 (=> (not res!1970427) (not e!2918424))))

(assert (=> b!4677506 (= res!1970427 (noDuplicateKeys!1774 newBucket!218))))

(declare-fun b!4677507 () Bool)

(declare-fun e!2918433 () Bool)

(declare-fun tp!1344775 () Bool)

(assert (=> b!4677507 (= e!2918433 tp!1344775)))

(declare-fun b!4677508 () Bool)

(assert (=> b!4677508 (= e!2918425 e!2918429)))

(declare-fun res!1970432 () Bool)

(assert (=> b!4677508 (=> res!1970432 e!2918429)))

(assert (=> b!4677508 (= res!1970432 (not (forall!11199 lt!1837201 lambda!203987)))))

(declare-fun lt!1837210 () ListLongMap!3967)

(assert (=> b!4677508 (= lt!1837210 (ListLongMap!3968 lt!1837201))))

(declare-fun b!4677509 () Bool)

(declare-fun res!1970421 () Bool)

(assert (=> b!4677509 (=> (not res!1970421) (not e!2918430))))

(declare-fun allKeysSameHashInMap!1688 (ListLongMap!3967 Hashable!6143) Bool)

(assert (=> b!4677509 (= res!1970421 (allKeysSameHashInMap!1688 lm!2023 hashF!1323))))

(declare-fun res!1970425 () Bool)

(assert (=> start!472164 (=> (not res!1970425) (not e!2918424))))

(assert (=> start!472164 (= res!1970425 (forall!11199 (toList!5438 lm!2023) lambda!203987))))

(assert (=> start!472164 e!2918424))

(declare-fun inv!67459 (ListLongMap!3967) Bool)

(assert (=> start!472164 (and (inv!67459 lm!2023) e!2918433)))

(assert (=> start!472164 tp_is_empty!30389))

(assert (=> start!472164 e!2918432))

(assert (=> start!472164 true))

(assert (=> start!472164 e!2918427))

(declare-fun b!4677500 () Bool)

(declare-fun res!1970426 () Bool)

(assert (=> b!4677500 (=> (not res!1970426) (not e!2918424))))

(declare-fun removePairForKey!1369 (List!52331 K!13585) List!52331)

(assert (=> b!4677500 (= res!1970426 (= (removePairForKey!1369 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4677510 () Bool)

(declare-fun res!1970430 () Bool)

(assert (=> b!4677510 (=> res!1970430 e!2918429)))

(assert (=> b!4677510 (= res!1970430 (not (allKeysSameHashInMap!1688 lt!1837210 hashF!1323)))))

(declare-fun b!4677511 () Bool)

(declare-fun e!2918423 () Bool)

(assert (=> b!4677511 (= e!2918424 e!2918423)))

(declare-fun res!1970433 () Bool)

(assert (=> b!4677511 (=> (not res!1970433) (not e!2918423))))

(declare-fun contains!15347 (ListMap!4801 K!13585) Bool)

(assert (=> b!4677511 (= res!1970433 (contains!15347 lt!1837208 key!4653))))

(assert (=> b!4677511 (= lt!1837208 (extractMap!1800 (toList!5438 lm!2023)))))

(declare-fun b!4677512 () Bool)

(declare-fun res!1970423 () Bool)

(assert (=> b!4677512 (=> (not res!1970423) (not e!2918430))))

(declare-fun head!9839 (List!52332) tuple2!53492)

(assert (=> b!4677512 (= res!1970423 (= (head!9839 (toList!5438 lm!2023)) (tuple2!53493 hash!405 oldBucket!34)))))

(declare-fun b!4677513 () Bool)

(declare-fun e!2918434 () Bool)

(assert (=> b!4677513 (= e!2918426 e!2918434)))

(declare-fun res!1970418 () Bool)

(assert (=> b!4677513 (=> res!1970418 e!2918434)))

(declare-fun lt!1837205 () ListMap!4801)

(assert (=> b!4677513 (= res!1970418 (not (= lt!1837205 (extractMap!1800 (Cons!52208 (tuple2!53493 hash!405 newBucket!218) (t!359478 (toList!5438 lm!2023)))))))))

(assert (=> b!4677513 (= lt!1837205 (extractMap!1800 lt!1837201))))

(assert (=> b!4677513 (= lt!1837201 (Cons!52208 (tuple2!53493 hash!405 lt!1837203) (t!359478 (toList!5438 lm!2023))))))

(declare-fun b!4677514 () Bool)

(declare-fun res!1970428 () Bool)

(assert (=> b!4677514 (=> (not res!1970428) (not e!2918430))))

(assert (=> b!4677514 (= res!1970428 (allKeysSameHash!1600 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4677515 () Bool)

(declare-fun e!2918431 () Bool)

(assert (=> b!4677515 (= e!2918434 e!2918431)))

(declare-fun res!1970420 () Bool)

(assert (=> b!4677515 (=> res!1970420 e!2918431)))

(declare-fun lt!1837206 () ListMap!4801)

(assert (=> b!4677515 (= res!1970420 (not (= lt!1837206 (addToMapMapFromBucket!1206 newBucket!218 lt!1837207))))))

(assert (=> b!4677515 (= lt!1837206 (addToMapMapFromBucket!1206 lt!1837203 lt!1837207))))

(declare-fun b!4677516 () Bool)

(declare-fun res!1970436 () Bool)

(assert (=> b!4677516 (=> res!1970436 e!2918425)))

(assert (=> b!4677516 (= res!1970436 (not (= lt!1837206 lt!1837205)))))

(declare-fun b!4677517 () Bool)

(assert (=> b!4677517 (= e!2918423 e!2918430)))

(declare-fun res!1970419 () Bool)

(assert (=> b!4677517 (=> (not res!1970419) (not e!2918430))))

(declare-fun lt!1837204 () (_ BitVec 64))

(assert (=> b!4677517 (= res!1970419 (= lt!1837204 hash!405))))

(declare-fun hash!3944 (Hashable!6143 K!13585) (_ BitVec 64))

(assert (=> b!4677517 (= lt!1837204 (hash!3944 hashF!1323 key!4653))))

(declare-fun b!4677518 () Bool)

(declare-fun res!1970437 () Bool)

(assert (=> b!4677518 (=> res!1970437 e!2918429)))

(declare-fun apply!12287 (ListLongMap!3967 (_ BitVec 64)) List!52331)

(assert (=> b!4677518 (= res!1970437 (containsKey!2911 (apply!12287 lt!1837210 lt!1837204) key!4653))))

(declare-fun b!4677519 () Bool)

(declare-fun res!1970422 () Bool)

(assert (=> b!4677519 (=> (not res!1970422) (not e!2918430))))

(assert (=> b!4677519 (= res!1970422 ((_ is Cons!52208) (toList!5438 lm!2023)))))

(declare-fun b!4677520 () Bool)

(assert (=> b!4677520 (= e!2918431 e!2918425)))

(declare-fun res!1970429 () Bool)

(assert (=> b!4677520 (=> res!1970429 e!2918425)))

(declare-fun eq!963 (ListMap!4801 ListMap!4801) Bool)

(declare-fun +!2076 (ListMap!4801 tuple2!53490) ListMap!4801)

(assert (=> b!4677520 (= res!1970429 (not (eq!963 (+!2076 lt!1837206 (h!58410 oldBucket!34)) (addToMapMapFromBucket!1206 oldBucket!34 lt!1837207))))))

(declare-fun lt!1837209 () tuple2!53490)

(assert (=> b!4677520 (eq!963 (addToMapMapFromBucket!1206 (Cons!52207 lt!1837209 lt!1837203) lt!1837207) (+!2076 lt!1837206 lt!1837209))))

(declare-datatypes ((Unit!121969 0))(
  ( (Unit!121970) )
))
(declare-fun lt!1837202 () Unit!121969)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!212 (tuple2!53490 List!52331 ListMap!4801) Unit!121969)

(assert (=> b!4677520 (= lt!1837202 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!212 lt!1837209 lt!1837203 lt!1837207))))

(declare-fun head!9840 (List!52331) tuple2!53490)

(assert (=> b!4677520 (= lt!1837209 (head!9840 oldBucket!34))))

(declare-fun b!4677521 () Bool)

(declare-fun res!1970439 () Bool)

(assert (=> b!4677521 (=> res!1970439 e!2918429)))

(declare-fun contains!15348 (ListLongMap!3967 (_ BitVec 64)) Bool)

(assert (=> b!4677521 (= res!1970439 (not (contains!15348 lt!1837210 lt!1837204)))))

(assert (= (and start!472164 res!1970425) b!4677497))

(assert (= (and b!4677497 res!1970424) b!4677506))

(assert (= (and b!4677506 res!1970427) b!4677500))

(assert (= (and b!4677500 res!1970426) b!4677505))

(assert (= (and b!4677505 res!1970431) b!4677511))

(assert (= (and b!4677511 res!1970433) b!4677517))

(assert (= (and b!4677517 res!1970419) b!4677514))

(assert (= (and b!4677514 res!1970428) b!4677509))

(assert (= (and b!4677509 res!1970421) b!4677512))

(assert (= (and b!4677512 res!1970423) b!4677519))

(assert (= (and b!4677519 res!1970422) b!4677499))

(assert (= (and b!4677499 (not res!1970434)) b!4677503))

(assert (= (and b!4677503 (not res!1970435)) b!4677513))

(assert (= (and b!4677513 (not res!1970418)) b!4677515))

(assert (= (and b!4677515 (not res!1970420)) b!4677520))

(assert (= (and b!4677520 (not res!1970429)) b!4677502))

(assert (= (and b!4677502 (not res!1970438)) b!4677516))

(assert (= (and b!4677516 (not res!1970436)) b!4677508))

(assert (= (and b!4677508 (not res!1970432)) b!4677510))

(assert (= (and b!4677510 (not res!1970430)) b!4677521))

(assert (= (and b!4677521 (not res!1970439)) b!4677518))

(assert (= (and b!4677518 (not res!1970437)) b!4677504))

(assert (= start!472164 b!4677507))

(assert (= (and start!472164 ((_ is Cons!52207) oldBucket!34)) b!4677498))

(assert (= (and start!472164 ((_ is Cons!52207) newBucket!218)) b!4677501))

(declare-fun m!5571935 () Bool)

(assert (=> b!4677515 m!5571935))

(declare-fun m!5571937 () Bool)

(assert (=> b!4677515 m!5571937))

(declare-fun m!5571939 () Bool)

(assert (=> b!4677511 m!5571939))

(declare-fun m!5571941 () Bool)

(assert (=> b!4677511 m!5571941))

(declare-fun m!5571943 () Bool)

(assert (=> b!4677505 m!5571943))

(declare-fun m!5571945 () Bool)

(assert (=> b!4677521 m!5571945))

(declare-fun m!5571947 () Bool)

(assert (=> b!4677509 m!5571947))

(declare-fun m!5571949 () Bool)

(assert (=> start!472164 m!5571949))

(declare-fun m!5571951 () Bool)

(assert (=> start!472164 m!5571951))

(declare-fun m!5571953 () Bool)

(assert (=> b!4677502 m!5571953))

(declare-fun m!5571955 () Bool)

(assert (=> b!4677518 m!5571955))

(assert (=> b!4677518 m!5571955))

(declare-fun m!5571957 () Bool)

(assert (=> b!4677518 m!5571957))

(declare-fun m!5571959 () Bool)

(assert (=> b!4677513 m!5571959))

(declare-fun m!5571961 () Bool)

(assert (=> b!4677513 m!5571961))

(declare-fun m!5571963 () Bool)

(assert (=> b!4677499 m!5571963))

(declare-fun m!5571965 () Bool)

(assert (=> b!4677499 m!5571965))

(declare-fun m!5571967 () Bool)

(assert (=> b!4677499 m!5571967))

(declare-fun m!5571969 () Bool)

(assert (=> b!4677520 m!5571969))

(declare-fun m!5571971 () Bool)

(assert (=> b!4677520 m!5571971))

(declare-fun m!5571973 () Bool)

(assert (=> b!4677520 m!5571973))

(declare-fun m!5571975 () Bool)

(assert (=> b!4677520 m!5571975))

(declare-fun m!5571977 () Bool)

(assert (=> b!4677520 m!5571977))

(declare-fun m!5571979 () Bool)

(assert (=> b!4677520 m!5571979))

(assert (=> b!4677520 m!5571971))

(declare-fun m!5571981 () Bool)

(assert (=> b!4677520 m!5571981))

(assert (=> b!4677520 m!5571975))

(assert (=> b!4677520 m!5571977))

(declare-fun m!5571983 () Bool)

(assert (=> b!4677520 m!5571983))

(assert (=> b!4677520 m!5571969))

(declare-fun m!5571985 () Bool)

(assert (=> b!4677510 m!5571985))

(declare-fun m!5571987 () Bool)

(assert (=> b!4677497 m!5571987))

(declare-fun m!5571989 () Bool)

(assert (=> b!4677506 m!5571989))

(declare-fun m!5571991 () Bool)

(assert (=> b!4677508 m!5571991))

(declare-fun m!5571993 () Bool)

(assert (=> b!4677517 m!5571993))

(declare-fun m!5571995 () Bool)

(assert (=> b!4677512 m!5571995))

(declare-fun m!5571997 () Bool)

(assert (=> b!4677514 m!5571997))

(assert (=> b!4677504 m!5571991))

(declare-fun m!5571999 () Bool)

(assert (=> b!4677503 m!5571999))

(declare-fun m!5572001 () Bool)

(assert (=> b!4677500 m!5572001))

(check-sat (not b!4677497) (not b!4677508) (not b!4677520) tp_is_empty!30389 (not b!4677507) (not b!4677505) (not b!4677517) (not b!4677514) tp_is_empty!30391 (not b!4677518) (not b!4677511) (not b!4677501) (not b!4677510) (not b!4677498) (not b!4677515) (not b!4677513) (not b!4677521) (not b!4677502) (not start!472164) (not b!4677509) (not b!4677504) (not b!4677506) (not b!4677503) (not b!4677512) (not b!4677499) (not b!4677500))
(check-sat)
