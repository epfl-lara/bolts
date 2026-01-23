; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!468000 () Bool)

(assert start!468000)

(declare-fun b!4651580 () Bool)

(declare-fun e!2902051 () Bool)

(declare-fun e!2902062 () Bool)

(assert (=> b!4651580 (= e!2902051 (not e!2902062))))

(declare-fun res!1955230 () Bool)

(assert (=> b!4651580 (=> res!1955230 e!2902062)))

(declare-datatypes ((K!13225 0))(
  ( (K!13226 (val!18851 Int)) )
))
(declare-datatypes ((V!13471 0))(
  ( (V!13472 (val!18852 Int)) )
))
(declare-datatypes ((tuple2!52966 0))(
  ( (tuple2!52967 (_1!29777 K!13225) (_2!29777 V!13471)) )
))
(declare-datatypes ((List!51992 0))(
  ( (Nil!51868) (Cons!51868 (h!58004 tuple2!52966) (t!359100 List!51992)) )
))
(declare-fun oldBucket!40 () List!51992)

(declare-fun key!4968 () K!13225)

(get-info :version)

(assert (=> b!4651580 (= res!1955230 (or (not ((_ is Cons!51868) oldBucket!40)) (not (= (_1!29777 (h!58004 oldBucket!40)) key!4968))))))

(declare-fun e!2902058 () Bool)

(assert (=> b!4651580 e!2902058))

(declare-fun res!1955232 () Bool)

(assert (=> b!4651580 (=> (not res!1955232) (not e!2902058))))

(declare-datatypes ((ListMap!4529 0))(
  ( (ListMap!4530 (toList!5191 List!51992)) )
))
(declare-fun lt!1814955 () ListMap!4529)

(declare-fun lt!1814962 () ListMap!4529)

(declare-fun addToMapMapFromBucket!1087 (List!51992 ListMap!4529) ListMap!4529)

(assert (=> b!4651580 (= res!1955232 (= lt!1814955 (addToMapMapFromBucket!1087 oldBucket!40 lt!1814962)))))

(declare-datatypes ((tuple2!52968 0))(
  ( (tuple2!52969 (_1!29778 (_ BitVec 64)) (_2!29778 List!51992)) )
))
(declare-datatypes ((List!51993 0))(
  ( (Nil!51869) (Cons!51869 (h!58005 tuple2!52968) (t!359101 List!51993)) )
))
(declare-fun extractMap!1686 (List!51993) ListMap!4529)

(assert (=> b!4651580 (= lt!1814962 (extractMap!1686 Nil!51869))))

(assert (=> b!4651580 true))

(declare-fun res!1955236 () Bool)

(declare-fun e!2902056 () Bool)

(assert (=> start!468000 (=> (not res!1955236) (not e!2902056))))

(declare-fun noDuplicateKeys!1630 (List!51992) Bool)

(assert (=> start!468000 (= res!1955236 (noDuplicateKeys!1630 oldBucket!40))))

(assert (=> start!468000 e!2902056))

(assert (=> start!468000 true))

(declare-fun e!2902057 () Bool)

(assert (=> start!468000 e!2902057))

(declare-fun tp_is_empty!29813 () Bool)

(assert (=> start!468000 tp_is_empty!29813))

(declare-fun e!2902061 () Bool)

(assert (=> start!468000 e!2902061))

(declare-fun b!4651581 () Bool)

(declare-fun res!1955225 () Bool)

(assert (=> b!4651581 (=> (not res!1955225) (not e!2902056))))

(declare-fun newBucket!224 () List!51992)

(assert (=> b!4651581 (= res!1955225 (noDuplicateKeys!1630 newBucket!224))))

(declare-fun b!4651582 () Bool)

(declare-fun e!2902059 () Bool)

(declare-datatypes ((ListLongMap!3747 0))(
  ( (ListLongMap!3748 (toList!5192 List!51993)) )
))
(declare-fun lt!1814960 () ListLongMap!3747)

(declare-fun lt!1814958 () (_ BitVec 64))

(declare-fun contains!15010 (ListLongMap!3747 (_ BitVec 64)) Bool)

(assert (=> b!4651582 (= e!2902059 (contains!15010 lt!1814960 lt!1814958))))

(declare-fun b!4651583 () Bool)

(declare-fun res!1955227 () Bool)

(assert (=> b!4651583 (=> (not res!1955227) (not e!2902056))))

(declare-fun removePairForKey!1253 (List!51992 K!13225) List!51992)

(assert (=> b!4651583 (= res!1955227 (= (removePairForKey!1253 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4651584 () Bool)

(declare-fun res!1955226 () Bool)

(assert (=> b!4651584 (=> (not res!1955226) (not e!2902051))))

(declare-datatypes ((Hashable!6027 0))(
  ( (HashableExt!6026 (__x!31730 Int)) )
))
(declare-fun hashF!1389 () Hashable!6027)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1484 (List!51992 (_ BitVec 64) Hashable!6027) Bool)

(assert (=> b!4651584 (= res!1955226 (allKeysSameHash!1484 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4651585 () Bool)

(declare-fun e!2902052 () Bool)

(declare-fun e!2902055 () Bool)

(assert (=> b!4651585 (= e!2902052 e!2902055)))

(declare-fun res!1955223 () Bool)

(assert (=> b!4651585 (=> res!1955223 e!2902055)))

(declare-fun lt!1814959 () ListMap!4529)

(assert (=> b!4651585 (= res!1955223 (not (= lt!1814959 (addToMapMapFromBucket!1087 newBucket!224 (ListMap!4530 Nil!51868)))))))

(declare-fun lt!1814957 () List!51992)

(assert (=> b!4651585 (= lt!1814959 (addToMapMapFromBucket!1087 lt!1814957 (ListMap!4530 Nil!51868)))))

(declare-fun b!4651586 () Bool)

(declare-fun e!2902054 () Bool)

(assert (=> b!4651586 (= e!2902054 e!2902051)))

(declare-fun res!1955222 () Bool)

(assert (=> b!4651586 (=> (not res!1955222) (not e!2902051))))

(assert (=> b!4651586 (= res!1955222 (= lt!1814958 hash!414))))

(declare-fun hash!3759 (Hashable!6027 K!13225) (_ BitVec 64))

(assert (=> b!4651586 (= lt!1814958 (hash!3759 hashF!1389 key!4968))))

(declare-fun b!4651587 () Bool)

(declare-fun e!2902053 () Bool)

(assert (=> b!4651587 (= e!2902053 e!2902059)))

(declare-fun res!1955231 () Bool)

(assert (=> b!4651587 (=> res!1955231 e!2902059)))

(declare-fun lt!1814954 () List!51993)

(declare-fun lambda!198470 () Int)

(declare-fun forall!11002 (List!51993 Int) Bool)

(assert (=> b!4651587 (= res!1955231 (not (forall!11002 lt!1814954 lambda!198470)))))

(assert (=> b!4651587 (= lt!1814960 (ListLongMap!3748 lt!1814954))))

(declare-fun b!4651588 () Bool)

(assert (=> b!4651588 (= e!2902056 e!2902054)))

(declare-fun res!1955235 () Bool)

(assert (=> b!4651588 (=> (not res!1955235) (not e!2902054))))

(declare-fun contains!15011 (ListMap!4529 K!13225) Bool)

(assert (=> b!4651588 (= res!1955235 (contains!15011 lt!1814955 key!4968))))

(assert (=> b!4651588 (= lt!1814955 (extractMap!1686 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))))

(declare-fun b!4651589 () Bool)

(declare-fun res!1955220 () Bool)

(assert (=> b!4651589 (=> res!1955220 e!2902053)))

(declare-fun lt!1814963 () ListMap!4529)

(assert (=> b!4651589 (= res!1955220 (not (= lt!1814959 lt!1814963)))))

(declare-fun b!4651590 () Bool)

(assert (=> b!4651590 (= e!2902055 e!2902053)))

(declare-fun res!1955234 () Bool)

(assert (=> b!4651590 (=> res!1955234 e!2902053)))

(declare-fun eq!909 (ListMap!4529 ListMap!4529) Bool)

(declare-fun +!1974 (ListMap!4529 tuple2!52966) ListMap!4529)

(assert (=> b!4651590 (= res!1955234 (not (eq!909 (+!1974 lt!1814959 (h!58004 oldBucket!40)) (addToMapMapFromBucket!1087 oldBucket!40 (ListMap!4530 Nil!51868)))))))

(declare-fun lt!1814956 () tuple2!52966)

(assert (=> b!4651590 (eq!909 (addToMapMapFromBucket!1087 (Cons!51868 lt!1814956 lt!1814957) (ListMap!4530 Nil!51868)) (+!1974 lt!1814959 lt!1814956))))

(declare-datatypes ((Unit!117676 0))(
  ( (Unit!117677) )
))
(declare-fun lt!1814961 () Unit!117676)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!160 (tuple2!52966 List!51992 ListMap!4529) Unit!117676)

(assert (=> b!4651590 (= lt!1814961 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!160 lt!1814956 lt!1814957 (ListMap!4530 Nil!51868)))))

(declare-fun head!9730 (List!51992) tuple2!52966)

(assert (=> b!4651590 (= lt!1814956 (head!9730 oldBucket!40))))

(declare-fun b!4651591 () Bool)

(declare-fun e!2902060 () Bool)

(assert (=> b!4651591 (= e!2902060 e!2902052)))

(declare-fun res!1955228 () Bool)

(assert (=> b!4651591 (=> res!1955228 e!2902052)))

(assert (=> b!4651591 (= res!1955228 (not (= lt!1814963 (extractMap!1686 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))))))

(assert (=> b!4651591 (= lt!1814963 (extractMap!1686 lt!1814954))))

(assert (=> b!4651591 (= lt!1814954 (Cons!51869 (tuple2!52969 hash!414 lt!1814957) Nil!51869))))

(declare-fun b!4651592 () Bool)

(assert (=> b!4651592 (= e!2902058 (= lt!1814962 (ListMap!4530 Nil!51868)))))

(declare-fun b!4651593 () Bool)

(declare-fun res!1955224 () Bool)

(assert (=> b!4651593 (=> res!1955224 e!2902053)))

(declare-fun containsKey!2702 (List!51992 K!13225) Bool)

(assert (=> b!4651593 (= res!1955224 (containsKey!2702 lt!1814957 key!4968))))

(declare-fun b!4651594 () Bool)

(assert (=> b!4651594 (= e!2902062 e!2902060)))

(declare-fun res!1955229 () Bool)

(assert (=> b!4651594 (=> res!1955229 e!2902060)))

(assert (=> b!4651594 (= res!1955229 (not (= lt!1814957 newBucket!224)))))

(declare-fun tail!8245 (List!51992) List!51992)

(assert (=> b!4651594 (= lt!1814957 (tail!8245 oldBucket!40))))

(declare-fun b!4651595 () Bool)

(declare-fun res!1955233 () Bool)

(assert (=> b!4651595 (=> res!1955233 e!2902059)))

(declare-fun allKeysSameHashInMap!1594 (ListLongMap!3747 Hashable!6027) Bool)

(assert (=> b!4651595 (= res!1955233 (not (allKeysSameHashInMap!1594 lt!1814960 hashF!1389)))))

(declare-fun tp!1343207 () Bool)

(declare-fun tp_is_empty!29815 () Bool)

(declare-fun b!4651596 () Bool)

(assert (=> b!4651596 (= e!2902057 (and tp_is_empty!29813 tp_is_empty!29815 tp!1343207))))

(declare-fun tp!1343206 () Bool)

(declare-fun b!4651597 () Bool)

(assert (=> b!4651597 (= e!2902061 (and tp_is_empty!29813 tp_is_empty!29815 tp!1343206))))

(declare-fun b!4651598 () Bool)

(declare-fun res!1955221 () Bool)

(assert (=> b!4651598 (=> (not res!1955221) (not e!2902056))))

(assert (=> b!4651598 (= res!1955221 (allKeysSameHash!1484 oldBucket!40 hash!414 hashF!1389))))

(assert (= (and start!468000 res!1955236) b!4651581))

(assert (= (and b!4651581 res!1955225) b!4651583))

(assert (= (and b!4651583 res!1955227) b!4651598))

(assert (= (and b!4651598 res!1955221) b!4651588))

(assert (= (and b!4651588 res!1955235) b!4651586))

(assert (= (and b!4651586 res!1955222) b!4651584))

(assert (= (and b!4651584 res!1955226) b!4651580))

(assert (= (and b!4651580 res!1955232) b!4651592))

(assert (= (and b!4651580 (not res!1955230)) b!4651594))

(assert (= (and b!4651594 (not res!1955229)) b!4651591))

(assert (= (and b!4651591 (not res!1955228)) b!4651585))

(assert (= (and b!4651585 (not res!1955223)) b!4651590))

(assert (= (and b!4651590 (not res!1955234)) b!4651593))

(assert (= (and b!4651593 (not res!1955224)) b!4651589))

(assert (= (and b!4651589 (not res!1955220)) b!4651587))

(assert (= (and b!4651587 (not res!1955231)) b!4651595))

(assert (= (and b!4651595 (not res!1955233)) b!4651582))

(assert (= (and start!468000 ((_ is Cons!51868) oldBucket!40)) b!4651596))

(assert (= (and start!468000 ((_ is Cons!51868) newBucket!224)) b!4651597))

(declare-fun m!5526965 () Bool)

(assert (=> b!4651594 m!5526965))

(declare-fun m!5526967 () Bool)

(assert (=> b!4651598 m!5526967))

(declare-fun m!5526969 () Bool)

(assert (=> b!4651591 m!5526969))

(declare-fun m!5526971 () Bool)

(assert (=> b!4651591 m!5526971))

(declare-fun m!5526973 () Bool)

(assert (=> b!4651581 m!5526973))

(declare-fun m!5526975 () Bool)

(assert (=> b!4651593 m!5526975))

(declare-fun m!5526977 () Bool)

(assert (=> b!4651584 m!5526977))

(declare-fun m!5526979 () Bool)

(assert (=> b!4651586 m!5526979))

(declare-fun m!5526981 () Bool)

(assert (=> b!4651590 m!5526981))

(declare-fun m!5526983 () Bool)

(assert (=> b!4651590 m!5526983))

(declare-fun m!5526985 () Bool)

(assert (=> b!4651590 m!5526985))

(declare-fun m!5526987 () Bool)

(assert (=> b!4651590 m!5526987))

(assert (=> b!4651590 m!5526981))

(assert (=> b!4651590 m!5526987))

(declare-fun m!5526989 () Bool)

(assert (=> b!4651590 m!5526989))

(declare-fun m!5526991 () Bool)

(assert (=> b!4651590 m!5526991))

(declare-fun m!5526993 () Bool)

(assert (=> b!4651590 m!5526993))

(assert (=> b!4651590 m!5526983))

(declare-fun m!5526995 () Bool)

(assert (=> b!4651590 m!5526995))

(assert (=> b!4651590 m!5526993))

(declare-fun m!5526997 () Bool)

(assert (=> b!4651585 m!5526997))

(declare-fun m!5526999 () Bool)

(assert (=> b!4651585 m!5526999))

(declare-fun m!5527001 () Bool)

(assert (=> b!4651595 m!5527001))

(declare-fun m!5527003 () Bool)

(assert (=> b!4651587 m!5527003))

(declare-fun m!5527005 () Bool)

(assert (=> b!4651580 m!5527005))

(declare-fun m!5527007 () Bool)

(assert (=> b!4651580 m!5527007))

(declare-fun m!5527009 () Bool)

(assert (=> b!4651588 m!5527009))

(declare-fun m!5527011 () Bool)

(assert (=> b!4651588 m!5527011))

(declare-fun m!5527013 () Bool)

(assert (=> b!4651583 m!5527013))

(declare-fun m!5527015 () Bool)

(assert (=> b!4651582 m!5527015))

(declare-fun m!5527017 () Bool)

(assert (=> start!468000 m!5527017))

(check-sat (not b!4651595) tp_is_empty!29813 (not b!4651590) (not b!4651588) (not b!4651586) (not b!4651594) (not b!4651580) (not b!4651596) (not b!4651584) (not b!4651591) (not b!4651582) (not b!4651597) (not start!468000) (not b!4651583) tp_is_empty!29815 (not b!4651585) (not b!4651598) (not b!4651587) (not b!4651593) (not b!4651581))
(check-sat)
(get-model)

(declare-fun d!1474365 () Bool)

(assert (=> d!1474365 true))

(assert (=> d!1474365 true))

(declare-fun lambda!198476 () Int)

(declare-fun forall!11004 (List!51992 Int) Bool)

(assert (=> d!1474365 (= (allKeysSameHash!1484 newBucket!224 hash!414 hashF!1389) (forall!11004 newBucket!224 lambda!198476))))

(declare-fun bs!1059187 () Bool)

(assert (= bs!1059187 d!1474365))

(declare-fun m!5527021 () Bool)

(assert (=> bs!1059187 m!5527021))

(assert (=> b!4651584 d!1474365))

(declare-fun d!1474371 () Bool)

(declare-fun lt!1814969 () List!51992)

(assert (=> d!1474371 (not (containsKey!2702 lt!1814969 key!4968))))

(declare-fun e!2902090 () List!51992)

(assert (=> d!1474371 (= lt!1814969 e!2902090)))

(declare-fun c!796117 () Bool)

(assert (=> d!1474371 (= c!796117 (and ((_ is Cons!51868) oldBucket!40) (= (_1!29777 (h!58004 oldBucket!40)) key!4968)))))

(assert (=> d!1474371 (noDuplicateKeys!1630 oldBucket!40)))

(assert (=> d!1474371 (= (removePairForKey!1253 oldBucket!40 key!4968) lt!1814969)))

(declare-fun b!4651643 () Bool)

(declare-fun e!2902089 () List!51992)

(assert (=> b!4651643 (= e!2902089 (Cons!51868 (h!58004 oldBucket!40) (removePairForKey!1253 (t!359100 oldBucket!40) key!4968)))))

(declare-fun b!4651642 () Bool)

(assert (=> b!4651642 (= e!2902090 e!2902089)))

(declare-fun c!796118 () Bool)

(assert (=> b!4651642 (= c!796118 ((_ is Cons!51868) oldBucket!40))))

(declare-fun b!4651641 () Bool)

(assert (=> b!4651641 (= e!2902090 (t!359100 oldBucket!40))))

(declare-fun b!4651644 () Bool)

(assert (=> b!4651644 (= e!2902089 Nil!51868)))

(assert (= (and d!1474371 c!796117) b!4651641))

(assert (= (and d!1474371 (not c!796117)) b!4651642))

(assert (= (and b!4651642 c!796118) b!4651643))

(assert (= (and b!4651642 (not c!796118)) b!4651644))

(declare-fun m!5527037 () Bool)

(assert (=> d!1474371 m!5527037))

(assert (=> d!1474371 m!5527017))

(declare-fun m!5527039 () Bool)

(assert (=> b!4651643 m!5527039))

(assert (=> b!4651583 d!1474371))

(declare-fun d!1474381 () Bool)

(assert (=> d!1474381 (= (tail!8245 oldBucket!40) (t!359100 oldBucket!40))))

(assert (=> b!4651594 d!1474381))

(declare-fun d!1474383 () Bool)

(declare-fun res!1955259 () Bool)

(declare-fun e!2902097 () Bool)

(assert (=> d!1474383 (=> res!1955259 e!2902097)))

(assert (=> d!1474383 (= res!1955259 (and ((_ is Cons!51868) lt!1814957) (= (_1!29777 (h!58004 lt!1814957)) key!4968)))))

(assert (=> d!1474383 (= (containsKey!2702 lt!1814957 key!4968) e!2902097)))

(declare-fun b!4651651 () Bool)

(declare-fun e!2902098 () Bool)

(assert (=> b!4651651 (= e!2902097 e!2902098)))

(declare-fun res!1955260 () Bool)

(assert (=> b!4651651 (=> (not res!1955260) (not e!2902098))))

(assert (=> b!4651651 (= res!1955260 ((_ is Cons!51868) lt!1814957))))

(declare-fun b!4651652 () Bool)

(assert (=> b!4651652 (= e!2902098 (containsKey!2702 (t!359100 lt!1814957) key!4968))))

(assert (= (and d!1474383 (not res!1955259)) b!4651651))

(assert (= (and b!4651651 res!1955260) b!4651652))

(declare-fun m!5527041 () Bool)

(assert (=> b!4651652 m!5527041))

(assert (=> b!4651593 d!1474383))

(declare-fun d!1474385 () Bool)

(declare-fun e!2902109 () Bool)

(assert (=> d!1474385 e!2902109))

(declare-fun res!1955266 () Bool)

(assert (=> d!1474385 (=> res!1955266 e!2902109)))

(declare-fun lt!1814992 () Bool)

(assert (=> d!1474385 (= res!1955266 (not lt!1814992))))

(declare-fun lt!1814990 () Bool)

(assert (=> d!1474385 (= lt!1814992 lt!1814990)))

(declare-fun lt!1814993 () Unit!117676)

(declare-fun e!2902110 () Unit!117676)

(assert (=> d!1474385 (= lt!1814993 e!2902110)))

(declare-fun c!796124 () Bool)

(assert (=> d!1474385 (= c!796124 lt!1814990)))

(declare-fun containsKey!2704 (List!51993 (_ BitVec 64)) Bool)

(assert (=> d!1474385 (= lt!1814990 (containsKey!2704 (toList!5192 lt!1814960) lt!1814958))))

(assert (=> d!1474385 (= (contains!15010 lt!1814960 lt!1814958) lt!1814992)))

(declare-fun b!4651668 () Bool)

(declare-fun lt!1814991 () Unit!117676)

(assert (=> b!4651668 (= e!2902110 lt!1814991)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1500 (List!51993 (_ BitVec 64)) Unit!117676)

(assert (=> b!4651668 (= lt!1814991 (lemmaContainsKeyImpliesGetValueByKeyDefined!1500 (toList!5192 lt!1814960) lt!1814958))))

(declare-datatypes ((Option!11810 0))(
  ( (None!11809) (Some!11809 (v!46069 List!51992)) )
))
(declare-fun isDefined!9075 (Option!11810) Bool)

(declare-fun getValueByKey!1598 (List!51993 (_ BitVec 64)) Option!11810)

(assert (=> b!4651668 (isDefined!9075 (getValueByKey!1598 (toList!5192 lt!1814960) lt!1814958))))

(declare-fun b!4651669 () Bool)

(declare-fun Unit!117701 () Unit!117676)

(assert (=> b!4651669 (= e!2902110 Unit!117701)))

(declare-fun b!4651670 () Bool)

(assert (=> b!4651670 (= e!2902109 (isDefined!9075 (getValueByKey!1598 (toList!5192 lt!1814960) lt!1814958)))))

(assert (= (and d!1474385 c!796124) b!4651668))

(assert (= (and d!1474385 (not c!796124)) b!4651669))

(assert (= (and d!1474385 (not res!1955266)) b!4651670))

(declare-fun m!5527051 () Bool)

(assert (=> d!1474385 m!5527051))

(declare-fun m!5527053 () Bool)

(assert (=> b!4651668 m!5527053))

(declare-fun m!5527055 () Bool)

(assert (=> b!4651668 m!5527055))

(assert (=> b!4651668 m!5527055))

(declare-fun m!5527057 () Bool)

(assert (=> b!4651668 m!5527057))

(assert (=> b!4651670 m!5527055))

(assert (=> b!4651670 m!5527055))

(assert (=> b!4651670 m!5527057))

(assert (=> b!4651582 d!1474385))

(declare-fun d!1474389 () Bool)

(declare-fun hash!3761 (Hashable!6027 K!13225) (_ BitVec 64))

(assert (=> d!1474389 (= (hash!3759 hashF!1389 key!4968) (hash!3761 hashF!1389 key!4968))))

(declare-fun bs!1059188 () Bool)

(assert (= bs!1059188 d!1474389))

(declare-fun m!5527059 () Bool)

(assert (=> bs!1059188 m!5527059))

(assert (=> b!4651586 d!1474389))

(declare-fun bs!1059327 () Bool)

(declare-fun b!4651766 () Bool)

(assert (= bs!1059327 (and b!4651766 d!1474365)))

(declare-fun lambda!198562 () Int)

(assert (=> bs!1059327 (not (= lambda!198562 lambda!198476))))

(assert (=> b!4651766 true))

(declare-fun bs!1059328 () Bool)

(declare-fun b!4651765 () Bool)

(assert (= bs!1059328 (and b!4651765 d!1474365)))

(declare-fun lambda!198563 () Int)

(assert (=> bs!1059328 (not (= lambda!198563 lambda!198476))))

(declare-fun bs!1059329 () Bool)

(assert (= bs!1059329 (and b!4651765 b!4651766)))

(assert (=> bs!1059329 (= lambda!198563 lambda!198562)))

(assert (=> b!4651765 true))

(declare-fun lambda!198564 () Int)

(assert (=> bs!1059328 (not (= lambda!198564 lambda!198476))))

(declare-fun lt!1815223 () ListMap!4529)

(assert (=> bs!1059329 (= (= lt!1815223 (ListMap!4530 Nil!51868)) (= lambda!198564 lambda!198562))))

(assert (=> b!4651765 (= (= lt!1815223 (ListMap!4530 Nil!51868)) (= lambda!198564 lambda!198563))))

(assert (=> b!4651765 true))

(declare-fun bs!1059340 () Bool)

(declare-fun d!1474391 () Bool)

(assert (= bs!1059340 (and d!1474391 d!1474365)))

(declare-fun lambda!198566 () Int)

(assert (=> bs!1059340 (not (= lambda!198566 lambda!198476))))

(declare-fun bs!1059342 () Bool)

(assert (= bs!1059342 (and d!1474391 b!4651766)))

(declare-fun lt!1815213 () ListMap!4529)

(assert (=> bs!1059342 (= (= lt!1815213 (ListMap!4530 Nil!51868)) (= lambda!198566 lambda!198562))))

(declare-fun bs!1059344 () Bool)

(assert (= bs!1059344 (and d!1474391 b!4651765)))

(assert (=> bs!1059344 (= (= lt!1815213 (ListMap!4530 Nil!51868)) (= lambda!198566 lambda!198563))))

(assert (=> bs!1059344 (= (= lt!1815213 lt!1815223) (= lambda!198566 lambda!198564))))

(assert (=> d!1474391 true))

(declare-fun e!2902166 () Bool)

(assert (=> d!1474391 e!2902166))

(declare-fun res!1955307 () Bool)

(assert (=> d!1474391 (=> (not res!1955307) (not e!2902166))))

(assert (=> d!1474391 (= res!1955307 (forall!11004 newBucket!224 lambda!198566))))

(declare-fun e!2902164 () ListMap!4529)

(assert (=> d!1474391 (= lt!1815213 e!2902164)))

(declare-fun c!796149 () Bool)

(assert (=> d!1474391 (= c!796149 ((_ is Nil!51868) newBucket!224))))

(assert (=> d!1474391 (noDuplicateKeys!1630 newBucket!224)))

(assert (=> d!1474391 (= (addToMapMapFromBucket!1087 newBucket!224 (ListMap!4530 Nil!51868)) lt!1815213)))

(declare-fun b!4651763 () Bool)

(declare-fun res!1955305 () Bool)

(assert (=> b!4651763 (=> (not res!1955305) (not e!2902166))))

(assert (=> b!4651763 (= res!1955305 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198566))))

(declare-fun call!324977 () Bool)

(declare-fun bm!324971 () Bool)

(assert (=> bm!324971 (= call!324977 (forall!11004 (ite c!796149 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 newBucket!224)) (ite c!796149 lambda!198562 lambda!198564)))))

(declare-fun bm!324972 () Bool)

(declare-fun call!324978 () Bool)

(assert (=> bm!324972 (= call!324978 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) (ite c!796149 lambda!198562 lambda!198564)))))

(declare-fun b!4651764 () Bool)

(declare-fun invariantList!1290 (List!51992) Bool)

(assert (=> b!4651764 (= e!2902166 (invariantList!1290 (toList!5191 lt!1815213)))))

(assert (=> b!4651765 (= e!2902164 lt!1815223)))

(declare-fun lt!1815218 () ListMap!4529)

(assert (=> b!4651765 (= lt!1815218 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)))))

(assert (=> b!4651765 (= lt!1815223 (addToMapMapFromBucket!1087 (t!359100 newBucket!224) (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))))))

(declare-fun lt!1815216 () Unit!117676)

(declare-fun call!324976 () Unit!117676)

(assert (=> b!4651765 (= lt!1815216 call!324976)))

(assert (=> b!4651765 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198563)))

(declare-fun lt!1815226 () Unit!117676)

(assert (=> b!4651765 (= lt!1815226 lt!1815216)))

(assert (=> b!4651765 (forall!11004 (toList!5191 lt!1815218) lambda!198564)))

(declare-fun lt!1815225 () Unit!117676)

(declare-fun Unit!117704 () Unit!117676)

(assert (=> b!4651765 (= lt!1815225 Unit!117704)))

(assert (=> b!4651765 call!324977))

(declare-fun lt!1815217 () Unit!117676)

(declare-fun Unit!117706 () Unit!117676)

(assert (=> b!4651765 (= lt!1815217 Unit!117706)))

(declare-fun lt!1815222 () Unit!117676)

(declare-fun Unit!117707 () Unit!117676)

(assert (=> b!4651765 (= lt!1815222 Unit!117707)))

(declare-fun lt!1815214 () Unit!117676)

(declare-fun forallContained!3212 (List!51992 Int tuple2!52966) Unit!117676)

(assert (=> b!4651765 (= lt!1815214 (forallContained!3212 (toList!5191 lt!1815218) lambda!198564 (h!58004 newBucket!224)))))

(assert (=> b!4651765 (contains!15011 lt!1815218 (_1!29777 (h!58004 newBucket!224)))))

(declare-fun lt!1815231 () Unit!117676)

(declare-fun Unit!117710 () Unit!117676)

(assert (=> b!4651765 (= lt!1815231 Unit!117710)))

(assert (=> b!4651765 (contains!15011 lt!1815223 (_1!29777 (h!58004 newBucket!224)))))

(declare-fun lt!1815221 () Unit!117676)

(declare-fun Unit!117712 () Unit!117676)

(assert (=> b!4651765 (= lt!1815221 Unit!117712)))

(assert (=> b!4651765 (forall!11004 newBucket!224 lambda!198564)))

(declare-fun lt!1815227 () Unit!117676)

(declare-fun Unit!117715 () Unit!117676)

(assert (=> b!4651765 (= lt!1815227 Unit!117715)))

(assert (=> b!4651765 (forall!11004 (toList!5191 lt!1815218) lambda!198564)))

(declare-fun lt!1815224 () Unit!117676)

(declare-fun Unit!117716 () Unit!117676)

(assert (=> b!4651765 (= lt!1815224 Unit!117716)))

(declare-fun lt!1815233 () Unit!117676)

(declare-fun Unit!117717 () Unit!117676)

(assert (=> b!4651765 (= lt!1815233 Unit!117717)))

(declare-fun lt!1815215 () Unit!117676)

(declare-fun addForallContainsKeyThenBeforeAdding!589 (ListMap!4529 ListMap!4529 K!13225 V!13471) Unit!117676)

(assert (=> b!4651765 (= lt!1815215 (addForallContainsKeyThenBeforeAdding!589 (ListMap!4530 Nil!51868) lt!1815223 (_1!29777 (h!58004 newBucket!224)) (_2!29777 (h!58004 newBucket!224))))))

(assert (=> b!4651765 call!324978))

(declare-fun lt!1815220 () Unit!117676)

(assert (=> b!4651765 (= lt!1815220 lt!1815215)))

(assert (=> b!4651765 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198564)))

(declare-fun lt!1815229 () Unit!117676)

(declare-fun Unit!117719 () Unit!117676)

(assert (=> b!4651765 (= lt!1815229 Unit!117719)))

(declare-fun res!1955306 () Bool)

(assert (=> b!4651765 (= res!1955306 (forall!11004 newBucket!224 lambda!198564))))

(declare-fun e!2902165 () Bool)

(assert (=> b!4651765 (=> (not res!1955306) (not e!2902165))))

(assert (=> b!4651765 e!2902165))

(declare-fun lt!1815219 () Unit!117676)

(declare-fun Unit!117721 () Unit!117676)

(assert (=> b!4651765 (= lt!1815219 Unit!117721)))

(assert (=> b!4651766 (= e!2902164 (ListMap!4530 Nil!51868))))

(declare-fun lt!1815232 () Unit!117676)

(assert (=> b!4651766 (= lt!1815232 call!324976)))

(assert (=> b!4651766 call!324978))

(declare-fun lt!1815230 () Unit!117676)

(assert (=> b!4651766 (= lt!1815230 lt!1815232)))

(assert (=> b!4651766 call!324977))

(declare-fun lt!1815228 () Unit!117676)

(declare-fun Unit!117722 () Unit!117676)

(assert (=> b!4651766 (= lt!1815228 Unit!117722)))

(declare-fun bm!324973 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!590 (ListMap!4529) Unit!117676)

(assert (=> bm!324973 (= call!324976 (lemmaContainsAllItsOwnKeys!590 (ListMap!4530 Nil!51868)))))

(declare-fun b!4651767 () Bool)

(assert (=> b!4651767 (= e!2902165 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198564))))

(assert (= (and d!1474391 c!796149) b!4651766))

(assert (= (and d!1474391 (not c!796149)) b!4651765))

(assert (= (and b!4651765 res!1955306) b!4651767))

(assert (= (or b!4651766 b!4651765) bm!324973))

(assert (= (or b!4651766 b!4651765) bm!324971))

(assert (= (or b!4651766 b!4651765) bm!324972))

(assert (= (and d!1474391 res!1955307) b!4651763))

(assert (= (and b!4651763 res!1955305) b!4651764))

(declare-fun m!5527253 () Bool)

(assert (=> b!4651767 m!5527253))

(declare-fun m!5527255 () Bool)

(assert (=> b!4651764 m!5527255))

(declare-fun m!5527257 () Bool)

(assert (=> b!4651763 m!5527257))

(declare-fun m!5527259 () Bool)

(assert (=> bm!324973 m!5527259))

(declare-fun m!5527261 () Bool)

(assert (=> bm!324971 m!5527261))

(declare-fun m!5527263 () Bool)

(assert (=> d!1474391 m!5527263))

(assert (=> d!1474391 m!5526973))

(declare-fun m!5527265 () Bool)

(assert (=> bm!324972 m!5527265))

(declare-fun m!5527267 () Bool)

(assert (=> b!4651765 m!5527267))

(declare-fun m!5527269 () Bool)

(assert (=> b!4651765 m!5527269))

(assert (=> b!4651765 m!5527269))

(declare-fun m!5527275 () Bool)

(assert (=> b!4651765 m!5527275))

(declare-fun m!5527277 () Bool)

(assert (=> b!4651765 m!5527277))

(assert (=> b!4651765 m!5527253))

(declare-fun m!5527283 () Bool)

(assert (=> b!4651765 m!5527283))

(declare-fun m!5527289 () Bool)

(assert (=> b!4651765 m!5527289))

(assert (=> b!4651765 m!5527283))

(assert (=> b!4651765 m!5527275))

(declare-fun m!5527295 () Bool)

(assert (=> b!4651765 m!5527295))

(declare-fun m!5527299 () Bool)

(assert (=> b!4651765 m!5527299))

(declare-fun m!5527301 () Bool)

(assert (=> b!4651765 m!5527301))

(assert (=> b!4651585 d!1474391))

(declare-fun bs!1059349 () Bool)

(declare-fun b!4651773 () Bool)

(assert (= bs!1059349 (and b!4651773 b!4651765)))

(declare-fun lambda!198567 () Int)

(assert (=> bs!1059349 (= (= (ListMap!4530 Nil!51868) lt!1815223) (= lambda!198567 lambda!198564))))

(declare-fun bs!1059350 () Bool)

(assert (= bs!1059350 (and b!4651773 b!4651766)))

(assert (=> bs!1059350 (= lambda!198567 lambda!198562)))

(assert (=> bs!1059349 (= lambda!198567 lambda!198563)))

(declare-fun bs!1059351 () Bool)

(assert (= bs!1059351 (and b!4651773 d!1474391)))

(assert (=> bs!1059351 (= (= (ListMap!4530 Nil!51868) lt!1815213) (= lambda!198567 lambda!198566))))

(declare-fun bs!1059352 () Bool)

(assert (= bs!1059352 (and b!4651773 d!1474365)))

(assert (=> bs!1059352 (not (= lambda!198567 lambda!198476))))

(assert (=> b!4651773 true))

(declare-fun bs!1059353 () Bool)

(declare-fun b!4651772 () Bool)

(assert (= bs!1059353 (and b!4651772 b!4651765)))

(declare-fun lambda!198568 () Int)

(assert (=> bs!1059353 (= (= (ListMap!4530 Nil!51868) lt!1815223) (= lambda!198568 lambda!198564))))

(declare-fun bs!1059354 () Bool)

(assert (= bs!1059354 (and b!4651772 b!4651766)))

(assert (=> bs!1059354 (= lambda!198568 lambda!198562)))

(declare-fun bs!1059355 () Bool)

(assert (= bs!1059355 (and b!4651772 d!1474391)))

(assert (=> bs!1059355 (= (= (ListMap!4530 Nil!51868) lt!1815213) (= lambda!198568 lambda!198566))))

(declare-fun bs!1059356 () Bool)

(assert (= bs!1059356 (and b!4651772 d!1474365)))

(assert (=> bs!1059356 (not (= lambda!198568 lambda!198476))))

(assert (=> bs!1059353 (= lambda!198568 lambda!198563)))

(declare-fun bs!1059357 () Bool)

(assert (= bs!1059357 (and b!4651772 b!4651773)))

(assert (=> bs!1059357 (= lambda!198568 lambda!198567)))

(assert (=> b!4651772 true))

(declare-fun lt!1815244 () ListMap!4529)

(declare-fun lambda!198569 () Int)

(assert (=> bs!1059353 (= (= lt!1815244 lt!1815223) (= lambda!198569 lambda!198564))))

(assert (=> bs!1059354 (= (= lt!1815244 (ListMap!4530 Nil!51868)) (= lambda!198569 lambda!198562))))

(assert (=> b!4651772 (= (= lt!1815244 (ListMap!4530 Nil!51868)) (= lambda!198569 lambda!198568))))

(assert (=> bs!1059355 (= (= lt!1815244 lt!1815213) (= lambda!198569 lambda!198566))))

(assert (=> bs!1059356 (not (= lambda!198569 lambda!198476))))

(assert (=> bs!1059353 (= (= lt!1815244 (ListMap!4530 Nil!51868)) (= lambda!198569 lambda!198563))))

(assert (=> bs!1059357 (= (= lt!1815244 (ListMap!4530 Nil!51868)) (= lambda!198569 lambda!198567))))

(assert (=> b!4651772 true))

(declare-fun bs!1059358 () Bool)

(declare-fun d!1474425 () Bool)

(assert (= bs!1059358 (and d!1474425 b!4651772)))

(declare-fun lt!1815234 () ListMap!4529)

(declare-fun lambda!198570 () Int)

(assert (=> bs!1059358 (= (= lt!1815234 lt!1815244) (= lambda!198570 lambda!198569))))

(declare-fun bs!1059359 () Bool)

(assert (= bs!1059359 (and d!1474425 b!4651765)))

(assert (=> bs!1059359 (= (= lt!1815234 lt!1815223) (= lambda!198570 lambda!198564))))

(declare-fun bs!1059360 () Bool)

(assert (= bs!1059360 (and d!1474425 b!4651766)))

(assert (=> bs!1059360 (= (= lt!1815234 (ListMap!4530 Nil!51868)) (= lambda!198570 lambda!198562))))

(assert (=> bs!1059358 (= (= lt!1815234 (ListMap!4530 Nil!51868)) (= lambda!198570 lambda!198568))))

(declare-fun bs!1059361 () Bool)

(assert (= bs!1059361 (and d!1474425 d!1474391)))

(assert (=> bs!1059361 (= (= lt!1815234 lt!1815213) (= lambda!198570 lambda!198566))))

(declare-fun bs!1059362 () Bool)

(assert (= bs!1059362 (and d!1474425 d!1474365)))

(assert (=> bs!1059362 (not (= lambda!198570 lambda!198476))))

(assert (=> bs!1059359 (= (= lt!1815234 (ListMap!4530 Nil!51868)) (= lambda!198570 lambda!198563))))

(declare-fun bs!1059363 () Bool)

(assert (= bs!1059363 (and d!1474425 b!4651773)))

(assert (=> bs!1059363 (= (= lt!1815234 (ListMap!4530 Nil!51868)) (= lambda!198570 lambda!198567))))

(assert (=> d!1474425 true))

(declare-fun e!2902169 () Bool)

(assert (=> d!1474425 e!2902169))

(declare-fun res!1955310 () Bool)

(assert (=> d!1474425 (=> (not res!1955310) (not e!2902169))))

(assert (=> d!1474425 (= res!1955310 (forall!11004 lt!1814957 lambda!198570))))

(declare-fun e!2902167 () ListMap!4529)

(assert (=> d!1474425 (= lt!1815234 e!2902167)))

(declare-fun c!796150 () Bool)

(assert (=> d!1474425 (= c!796150 ((_ is Nil!51868) lt!1814957))))

(assert (=> d!1474425 (noDuplicateKeys!1630 lt!1814957)))

(assert (=> d!1474425 (= (addToMapMapFromBucket!1087 lt!1814957 (ListMap!4530 Nil!51868)) lt!1815234)))

(declare-fun b!4651770 () Bool)

(declare-fun res!1955308 () Bool)

(assert (=> b!4651770 (=> (not res!1955308) (not e!2902169))))

(assert (=> b!4651770 (= res!1955308 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198570))))

(declare-fun bm!324974 () Bool)

(declare-fun call!324980 () Bool)

(assert (=> bm!324974 (= call!324980 (forall!11004 (ite c!796150 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 lt!1814957)) (ite c!796150 lambda!198567 lambda!198569)))))

(declare-fun bm!324975 () Bool)

(declare-fun call!324981 () Bool)

(assert (=> bm!324975 (= call!324981 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) (ite c!796150 lambda!198567 lambda!198569)))))

(declare-fun b!4651771 () Bool)

(assert (=> b!4651771 (= e!2902169 (invariantList!1290 (toList!5191 lt!1815234)))))

(assert (=> b!4651772 (= e!2902167 lt!1815244)))

(declare-fun lt!1815239 () ListMap!4529)

(assert (=> b!4651772 (= lt!1815239 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)))))

(assert (=> b!4651772 (= lt!1815244 (addToMapMapFromBucket!1087 (t!359100 lt!1814957) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))))))

(declare-fun lt!1815237 () Unit!117676)

(declare-fun call!324979 () Unit!117676)

(assert (=> b!4651772 (= lt!1815237 call!324979)))

(assert (=> b!4651772 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198568)))

(declare-fun lt!1815247 () Unit!117676)

(assert (=> b!4651772 (= lt!1815247 lt!1815237)))

(assert (=> b!4651772 (forall!11004 (toList!5191 lt!1815239) lambda!198569)))

(declare-fun lt!1815246 () Unit!117676)

(declare-fun Unit!117724 () Unit!117676)

(assert (=> b!4651772 (= lt!1815246 Unit!117724)))

(assert (=> b!4651772 call!324980))

(declare-fun lt!1815238 () Unit!117676)

(declare-fun Unit!117726 () Unit!117676)

(assert (=> b!4651772 (= lt!1815238 Unit!117726)))

(declare-fun lt!1815243 () Unit!117676)

(declare-fun Unit!117727 () Unit!117676)

(assert (=> b!4651772 (= lt!1815243 Unit!117727)))

(declare-fun lt!1815235 () Unit!117676)

(assert (=> b!4651772 (= lt!1815235 (forallContained!3212 (toList!5191 lt!1815239) lambda!198569 (h!58004 lt!1814957)))))

(assert (=> b!4651772 (contains!15011 lt!1815239 (_1!29777 (h!58004 lt!1814957)))))

(declare-fun lt!1815252 () Unit!117676)

(declare-fun Unit!117728 () Unit!117676)

(assert (=> b!4651772 (= lt!1815252 Unit!117728)))

(assert (=> b!4651772 (contains!15011 lt!1815244 (_1!29777 (h!58004 lt!1814957)))))

(declare-fun lt!1815242 () Unit!117676)

(declare-fun Unit!117729 () Unit!117676)

(assert (=> b!4651772 (= lt!1815242 Unit!117729)))

(assert (=> b!4651772 (forall!11004 lt!1814957 lambda!198569)))

(declare-fun lt!1815248 () Unit!117676)

(declare-fun Unit!117730 () Unit!117676)

(assert (=> b!4651772 (= lt!1815248 Unit!117730)))

(assert (=> b!4651772 (forall!11004 (toList!5191 lt!1815239) lambda!198569)))

(declare-fun lt!1815245 () Unit!117676)

(declare-fun Unit!117731 () Unit!117676)

(assert (=> b!4651772 (= lt!1815245 Unit!117731)))

(declare-fun lt!1815254 () Unit!117676)

(declare-fun Unit!117732 () Unit!117676)

(assert (=> b!4651772 (= lt!1815254 Unit!117732)))

(declare-fun lt!1815236 () Unit!117676)

(assert (=> b!4651772 (= lt!1815236 (addForallContainsKeyThenBeforeAdding!589 (ListMap!4530 Nil!51868) lt!1815244 (_1!29777 (h!58004 lt!1814957)) (_2!29777 (h!58004 lt!1814957))))))

(assert (=> b!4651772 call!324981))

(declare-fun lt!1815241 () Unit!117676)

(assert (=> b!4651772 (= lt!1815241 lt!1815236)))

(assert (=> b!4651772 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198569)))

(declare-fun lt!1815250 () Unit!117676)

(declare-fun Unit!117734 () Unit!117676)

(assert (=> b!4651772 (= lt!1815250 Unit!117734)))

(declare-fun res!1955309 () Bool)

(assert (=> b!4651772 (= res!1955309 (forall!11004 lt!1814957 lambda!198569))))

(declare-fun e!2902168 () Bool)

(assert (=> b!4651772 (=> (not res!1955309) (not e!2902168))))

(assert (=> b!4651772 e!2902168))

(declare-fun lt!1815240 () Unit!117676)

(declare-fun Unit!117735 () Unit!117676)

(assert (=> b!4651772 (= lt!1815240 Unit!117735)))

(assert (=> b!4651773 (= e!2902167 (ListMap!4530 Nil!51868))))

(declare-fun lt!1815253 () Unit!117676)

(assert (=> b!4651773 (= lt!1815253 call!324979)))

(assert (=> b!4651773 call!324981))

(declare-fun lt!1815251 () Unit!117676)

(assert (=> b!4651773 (= lt!1815251 lt!1815253)))

(assert (=> b!4651773 call!324980))

(declare-fun lt!1815249 () Unit!117676)

(declare-fun Unit!117736 () Unit!117676)

(assert (=> b!4651773 (= lt!1815249 Unit!117736)))

(declare-fun bm!324976 () Bool)

(assert (=> bm!324976 (= call!324979 (lemmaContainsAllItsOwnKeys!590 (ListMap!4530 Nil!51868)))))

(declare-fun b!4651774 () Bool)

(assert (=> b!4651774 (= e!2902168 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198569))))

(assert (= (and d!1474425 c!796150) b!4651773))

(assert (= (and d!1474425 (not c!796150)) b!4651772))

(assert (= (and b!4651772 res!1955309) b!4651774))

(assert (= (or b!4651773 b!4651772) bm!324976))

(assert (= (or b!4651773 b!4651772) bm!324974))

(assert (= (or b!4651773 b!4651772) bm!324975))

(assert (= (and d!1474425 res!1955310) b!4651770))

(assert (= (and b!4651770 res!1955308) b!4651771))

(declare-fun m!5527317 () Bool)

(assert (=> b!4651774 m!5527317))

(declare-fun m!5527319 () Bool)

(assert (=> b!4651771 m!5527319))

(declare-fun m!5527321 () Bool)

(assert (=> b!4651770 m!5527321))

(assert (=> bm!324976 m!5527259))

(declare-fun m!5527323 () Bool)

(assert (=> bm!324974 m!5527323))

(declare-fun m!5527325 () Bool)

(assert (=> d!1474425 m!5527325))

(declare-fun m!5527327 () Bool)

(assert (=> d!1474425 m!5527327))

(declare-fun m!5527329 () Bool)

(assert (=> bm!324975 m!5527329))

(declare-fun m!5527331 () Bool)

(assert (=> b!4651772 m!5527331))

(declare-fun m!5527333 () Bool)

(assert (=> b!4651772 m!5527333))

(assert (=> b!4651772 m!5527333))

(declare-fun m!5527335 () Bool)

(assert (=> b!4651772 m!5527335))

(declare-fun m!5527337 () Bool)

(assert (=> b!4651772 m!5527337))

(assert (=> b!4651772 m!5527317))

(declare-fun m!5527339 () Bool)

(assert (=> b!4651772 m!5527339))

(declare-fun m!5527341 () Bool)

(assert (=> b!4651772 m!5527341))

(assert (=> b!4651772 m!5527339))

(assert (=> b!4651772 m!5527335))

(declare-fun m!5527343 () Bool)

(assert (=> b!4651772 m!5527343))

(declare-fun m!5527345 () Bool)

(assert (=> b!4651772 m!5527345))

(declare-fun m!5527347 () Bool)

(assert (=> b!4651772 m!5527347))

(assert (=> b!4651585 d!1474425))

(declare-fun bs!1059364 () Bool)

(declare-fun d!1474429 () Bool)

(assert (= bs!1059364 (and d!1474429 b!4651587)))

(declare-fun lambda!198573 () Int)

(assert (=> bs!1059364 (not (= lambda!198573 lambda!198470))))

(assert (=> d!1474429 true))

(assert (=> d!1474429 (= (allKeysSameHashInMap!1594 lt!1814960 hashF!1389) (forall!11002 (toList!5192 lt!1814960) lambda!198573))))

(declare-fun bs!1059365 () Bool)

(assert (= bs!1059365 d!1474429))

(declare-fun m!5527349 () Bool)

(assert (=> bs!1059365 m!5527349))

(assert (=> b!4651595 d!1474429))

(declare-fun b!4651809 () Bool)

(declare-fun e!2902191 () Unit!117676)

(declare-fun Unit!117737 () Unit!117676)

(assert (=> b!4651809 (= e!2902191 Unit!117737)))

(declare-fun b!4651810 () Bool)

(declare-fun e!2902190 () Unit!117676)

(assert (=> b!4651810 (= e!2902190 e!2902191)))

(declare-fun c!796158 () Bool)

(declare-fun call!324984 () Bool)

(assert (=> b!4651810 (= c!796158 call!324984)))

(declare-fun b!4651811 () Bool)

(declare-fun lt!1815293 () Unit!117676)

(assert (=> b!4651811 (= e!2902190 lt!1815293)))

(declare-fun lt!1815294 () Unit!117676)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1502 (List!51992 K!13225) Unit!117676)

(assert (=> b!4651811 (= lt!1815294 (lemmaContainsKeyImpliesGetValueByKeyDefined!1502 (toList!5191 lt!1814955) key!4968))))

(declare-datatypes ((Option!11812 0))(
  ( (None!11811) (Some!11811 (v!46071 V!13471)) )
))
(declare-fun isDefined!9077 (Option!11812) Bool)

(declare-fun getValueByKey!1600 (List!51992 K!13225) Option!11812)

(assert (=> b!4651811 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1814955) key!4968))))

(declare-fun lt!1815295 () Unit!117676)

(assert (=> b!4651811 (= lt!1815295 lt!1815294)))

(declare-fun lemmaInListThenGetKeysListContains!736 (List!51992 K!13225) Unit!117676)

(assert (=> b!4651811 (= lt!1815293 (lemmaInListThenGetKeysListContains!736 (toList!5191 lt!1814955) key!4968))))

(assert (=> b!4651811 call!324984))

(declare-fun b!4651812 () Bool)

(declare-datatypes ((List!51995 0))(
  ( (Nil!51871) (Cons!51871 (h!58009 K!13225) (t!359105 List!51995)) )
))
(declare-fun e!2902194 () List!51995)

(declare-fun keys!18366 (ListMap!4529) List!51995)

(assert (=> b!4651812 (= e!2902194 (keys!18366 lt!1814955))))

(declare-fun b!4651813 () Bool)

(declare-fun getKeysList!741 (List!51992) List!51995)

(assert (=> b!4651813 (= e!2902194 (getKeysList!741 (toList!5191 lt!1814955)))))

(declare-fun d!1474431 () Bool)

(declare-fun e!2902195 () Bool)

(assert (=> d!1474431 e!2902195))

(declare-fun res!1955327 () Bool)

(assert (=> d!1474431 (=> res!1955327 e!2902195)))

(declare-fun e!2902193 () Bool)

(assert (=> d!1474431 (= res!1955327 e!2902193)))

(declare-fun res!1955325 () Bool)

(assert (=> d!1474431 (=> (not res!1955325) (not e!2902193))))

(declare-fun lt!1815296 () Bool)

(assert (=> d!1474431 (= res!1955325 (not lt!1815296))))

(declare-fun lt!1815291 () Bool)

(assert (=> d!1474431 (= lt!1815296 lt!1815291)))

(declare-fun lt!1815297 () Unit!117676)

(assert (=> d!1474431 (= lt!1815297 e!2902190)))

(declare-fun c!796157 () Bool)

(assert (=> d!1474431 (= c!796157 lt!1815291)))

(declare-fun containsKey!2706 (List!51992 K!13225) Bool)

(assert (=> d!1474431 (= lt!1815291 (containsKey!2706 (toList!5191 lt!1814955) key!4968))))

(assert (=> d!1474431 (= (contains!15011 lt!1814955 key!4968) lt!1815296)))

(declare-fun b!4651814 () Bool)

(declare-fun contains!15013 (List!51995 K!13225) Bool)

(assert (=> b!4651814 (= e!2902193 (not (contains!15013 (keys!18366 lt!1814955) key!4968)))))

(declare-fun b!4651815 () Bool)

(declare-fun e!2902192 () Bool)

(assert (=> b!4651815 (= e!2902195 e!2902192)))

(declare-fun res!1955326 () Bool)

(assert (=> b!4651815 (=> (not res!1955326) (not e!2902192))))

(assert (=> b!4651815 (= res!1955326 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1814955) key!4968)))))

(declare-fun b!4651816 () Bool)

(assert (=> b!4651816 (= e!2902192 (contains!15013 (keys!18366 lt!1814955) key!4968))))

(declare-fun b!4651817 () Bool)

(assert (=> b!4651817 false))

(declare-fun lt!1815290 () Unit!117676)

(declare-fun lt!1815292 () Unit!117676)

(assert (=> b!4651817 (= lt!1815290 lt!1815292)))

(assert (=> b!4651817 (containsKey!2706 (toList!5191 lt!1814955) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!740 (List!51992 K!13225) Unit!117676)

(assert (=> b!4651817 (= lt!1815292 (lemmaInGetKeysListThenContainsKey!740 (toList!5191 lt!1814955) key!4968))))

(declare-fun Unit!117738 () Unit!117676)

(assert (=> b!4651817 (= e!2902191 Unit!117738)))

(declare-fun bm!324979 () Bool)

(assert (=> bm!324979 (= call!324984 (contains!15013 e!2902194 key!4968))))

(declare-fun c!796159 () Bool)

(assert (=> bm!324979 (= c!796159 c!796157)))

(assert (= (and d!1474431 c!796157) b!4651811))

(assert (= (and d!1474431 (not c!796157)) b!4651810))

(assert (= (and b!4651810 c!796158) b!4651817))

(assert (= (and b!4651810 (not c!796158)) b!4651809))

(assert (= (or b!4651811 b!4651810) bm!324979))

(assert (= (and bm!324979 c!796159) b!4651813))

(assert (= (and bm!324979 (not c!796159)) b!4651812))

(assert (= (and d!1474431 res!1955325) b!4651814))

(assert (= (and d!1474431 (not res!1955327)) b!4651815))

(assert (= (and b!4651815 res!1955326) b!4651816))

(declare-fun m!5527387 () Bool)

(assert (=> d!1474431 m!5527387))

(declare-fun m!5527389 () Bool)

(assert (=> b!4651816 m!5527389))

(assert (=> b!4651816 m!5527389))

(declare-fun m!5527391 () Bool)

(assert (=> b!4651816 m!5527391))

(declare-fun m!5527393 () Bool)

(assert (=> b!4651815 m!5527393))

(assert (=> b!4651815 m!5527393))

(declare-fun m!5527395 () Bool)

(assert (=> b!4651815 m!5527395))

(declare-fun m!5527397 () Bool)

(assert (=> bm!324979 m!5527397))

(declare-fun m!5527399 () Bool)

(assert (=> b!4651811 m!5527399))

(assert (=> b!4651811 m!5527393))

(assert (=> b!4651811 m!5527393))

(assert (=> b!4651811 m!5527395))

(declare-fun m!5527401 () Bool)

(assert (=> b!4651811 m!5527401))

(assert (=> b!4651814 m!5527389))

(assert (=> b!4651814 m!5527389))

(assert (=> b!4651814 m!5527391))

(assert (=> b!4651812 m!5527389))

(assert (=> b!4651817 m!5527387))

(declare-fun m!5527403 () Bool)

(assert (=> b!4651817 m!5527403))

(declare-fun m!5527405 () Bool)

(assert (=> b!4651813 m!5527405))

(assert (=> b!4651588 d!1474431))

(declare-fun bs!1059369 () Bool)

(declare-fun d!1474441 () Bool)

(assert (= bs!1059369 (and d!1474441 b!4651587)))

(declare-fun lambda!198576 () Int)

(assert (=> bs!1059369 (= lambda!198576 lambda!198470)))

(declare-fun bs!1059370 () Bool)

(assert (= bs!1059370 (and d!1474441 d!1474429)))

(assert (=> bs!1059370 (not (= lambda!198576 lambda!198573))))

(declare-fun lt!1815300 () ListMap!4529)

(assert (=> d!1474441 (invariantList!1290 (toList!5191 lt!1815300))))

(declare-fun e!2902198 () ListMap!4529)

(assert (=> d!1474441 (= lt!1815300 e!2902198)))

(declare-fun c!796162 () Bool)

(assert (=> d!1474441 (= c!796162 ((_ is Cons!51869) (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))))

(assert (=> d!1474441 (forall!11002 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869) lambda!198576)))

(assert (=> d!1474441 (= (extractMap!1686 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)) lt!1815300)))

(declare-fun b!4651822 () Bool)

(assert (=> b!4651822 (= e!2902198 (addToMapMapFromBucket!1087 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))))))

(declare-fun b!4651823 () Bool)

(assert (=> b!4651823 (= e!2902198 (ListMap!4530 Nil!51868))))

(assert (= (and d!1474441 c!796162) b!4651822))

(assert (= (and d!1474441 (not c!796162)) b!4651823))

(declare-fun m!5527407 () Bool)

(assert (=> d!1474441 m!5527407))

(declare-fun m!5527409 () Bool)

(assert (=> d!1474441 m!5527409))

(declare-fun m!5527411 () Bool)

(assert (=> b!4651822 m!5527411))

(assert (=> b!4651822 m!5527411))

(declare-fun m!5527413 () Bool)

(assert (=> b!4651822 m!5527413))

(assert (=> b!4651588 d!1474441))

(declare-fun d!1474443 () Bool)

(declare-fun res!1955332 () Bool)

(declare-fun e!2902203 () Bool)

(assert (=> d!1474443 (=> res!1955332 e!2902203)))

(assert (=> d!1474443 (= res!1955332 ((_ is Nil!51869) lt!1814954))))

(assert (=> d!1474443 (= (forall!11002 lt!1814954 lambda!198470) e!2902203)))

(declare-fun b!4651828 () Bool)

(declare-fun e!2902204 () Bool)

(assert (=> b!4651828 (= e!2902203 e!2902204)))

(declare-fun res!1955333 () Bool)

(assert (=> b!4651828 (=> (not res!1955333) (not e!2902204))))

(declare-fun dynLambda!21574 (Int tuple2!52968) Bool)

(assert (=> b!4651828 (= res!1955333 (dynLambda!21574 lambda!198470 (h!58005 lt!1814954)))))

(declare-fun b!4651829 () Bool)

(assert (=> b!4651829 (= e!2902204 (forall!11002 (t!359101 lt!1814954) lambda!198470))))

(assert (= (and d!1474443 (not res!1955332)) b!4651828))

(assert (= (and b!4651828 res!1955333) b!4651829))

(declare-fun b_lambda!172997 () Bool)

(assert (=> (not b_lambda!172997) (not b!4651828)))

(declare-fun m!5527415 () Bool)

(assert (=> b!4651828 m!5527415))

(declare-fun m!5527417 () Bool)

(assert (=> b!4651829 m!5527417))

(assert (=> b!4651587 d!1474443))

(declare-fun bs!1059371 () Bool)

(declare-fun d!1474445 () Bool)

(assert (= bs!1059371 (and d!1474445 b!4651772)))

(declare-fun lambda!198577 () Int)

(assert (=> bs!1059371 (not (= lambda!198577 lambda!198569))))

(declare-fun bs!1059372 () Bool)

(assert (= bs!1059372 (and d!1474445 b!4651765)))

(assert (=> bs!1059372 (not (= lambda!198577 lambda!198564))))

(declare-fun bs!1059373 () Bool)

(assert (= bs!1059373 (and d!1474445 b!4651766)))

(assert (=> bs!1059373 (not (= lambda!198577 lambda!198562))))

(assert (=> bs!1059371 (not (= lambda!198577 lambda!198568))))

(declare-fun bs!1059374 () Bool)

(assert (= bs!1059374 (and d!1474445 d!1474425)))

(assert (=> bs!1059374 (not (= lambda!198577 lambda!198570))))

(declare-fun bs!1059375 () Bool)

(assert (= bs!1059375 (and d!1474445 d!1474391)))

(assert (=> bs!1059375 (not (= lambda!198577 lambda!198566))))

(declare-fun bs!1059376 () Bool)

(assert (= bs!1059376 (and d!1474445 d!1474365)))

(assert (=> bs!1059376 (= lambda!198577 lambda!198476)))

(assert (=> bs!1059372 (not (= lambda!198577 lambda!198563))))

(declare-fun bs!1059377 () Bool)

(assert (= bs!1059377 (and d!1474445 b!4651773)))

(assert (=> bs!1059377 (not (= lambda!198577 lambda!198567))))

(assert (=> d!1474445 true))

(assert (=> d!1474445 true))

(assert (=> d!1474445 (= (allKeysSameHash!1484 oldBucket!40 hash!414 hashF!1389) (forall!11004 oldBucket!40 lambda!198577))))

(declare-fun bs!1059378 () Bool)

(assert (= bs!1059378 d!1474445))

(declare-fun m!5527419 () Bool)

(assert (=> bs!1059378 m!5527419))

(assert (=> b!4651598 d!1474445))

(declare-fun d!1474447 () Bool)

(declare-fun res!1955338 () Bool)

(declare-fun e!2902209 () Bool)

(assert (=> d!1474447 (=> res!1955338 e!2902209)))

(assert (=> d!1474447 (= res!1955338 (not ((_ is Cons!51868) newBucket!224)))))

(assert (=> d!1474447 (= (noDuplicateKeys!1630 newBucket!224) e!2902209)))

(declare-fun b!4651834 () Bool)

(declare-fun e!2902210 () Bool)

(assert (=> b!4651834 (= e!2902209 e!2902210)))

(declare-fun res!1955339 () Bool)

(assert (=> b!4651834 (=> (not res!1955339) (not e!2902210))))

(assert (=> b!4651834 (= res!1955339 (not (containsKey!2702 (t!359100 newBucket!224) (_1!29777 (h!58004 newBucket!224)))))))

(declare-fun b!4651835 () Bool)

(assert (=> b!4651835 (= e!2902210 (noDuplicateKeys!1630 (t!359100 newBucket!224)))))

(assert (= (and d!1474447 (not res!1955338)) b!4651834))

(assert (= (and b!4651834 res!1955339) b!4651835))

(declare-fun m!5527421 () Bool)

(assert (=> b!4651834 m!5527421))

(declare-fun m!5527423 () Bool)

(assert (=> b!4651835 m!5527423))

(assert (=> b!4651581 d!1474447))

(declare-fun d!1474449 () Bool)

(declare-fun res!1955340 () Bool)

(declare-fun e!2902211 () Bool)

(assert (=> d!1474449 (=> res!1955340 e!2902211)))

(assert (=> d!1474449 (= res!1955340 (not ((_ is Cons!51868) oldBucket!40)))))

(assert (=> d!1474449 (= (noDuplicateKeys!1630 oldBucket!40) e!2902211)))

(declare-fun b!4651836 () Bool)

(declare-fun e!2902212 () Bool)

(assert (=> b!4651836 (= e!2902211 e!2902212)))

(declare-fun res!1955341 () Bool)

(assert (=> b!4651836 (=> (not res!1955341) (not e!2902212))))

(assert (=> b!4651836 (= res!1955341 (not (containsKey!2702 (t!359100 oldBucket!40) (_1!29777 (h!58004 oldBucket!40)))))))

(declare-fun b!4651837 () Bool)

(assert (=> b!4651837 (= e!2902212 (noDuplicateKeys!1630 (t!359100 oldBucket!40)))))

(assert (= (and d!1474449 (not res!1955340)) b!4651836))

(assert (= (and b!4651836 res!1955341) b!4651837))

(declare-fun m!5527425 () Bool)

(assert (=> b!4651836 m!5527425))

(declare-fun m!5527427 () Bool)

(assert (=> b!4651837 m!5527427))

(assert (=> start!468000 d!1474449))

(declare-fun bs!1059379 () Bool)

(declare-fun d!1474451 () Bool)

(assert (= bs!1059379 (and d!1474451 b!4651587)))

(declare-fun lambda!198578 () Int)

(assert (=> bs!1059379 (= lambda!198578 lambda!198470)))

(declare-fun bs!1059380 () Bool)

(assert (= bs!1059380 (and d!1474451 d!1474429)))

(assert (=> bs!1059380 (not (= lambda!198578 lambda!198573))))

(declare-fun bs!1059381 () Bool)

(assert (= bs!1059381 (and d!1474451 d!1474441)))

(assert (=> bs!1059381 (= lambda!198578 lambda!198576)))

(declare-fun lt!1815301 () ListMap!4529)

(assert (=> d!1474451 (invariantList!1290 (toList!5191 lt!1815301))))

(declare-fun e!2902213 () ListMap!4529)

(assert (=> d!1474451 (= lt!1815301 e!2902213)))

(declare-fun c!796163 () Bool)

(assert (=> d!1474451 (= c!796163 ((_ is Cons!51869) (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))))

(assert (=> d!1474451 (forall!11002 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869) lambda!198578)))

(assert (=> d!1474451 (= (extractMap!1686 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)) lt!1815301)))

(declare-fun b!4651838 () Bool)

(assert (=> b!4651838 (= e!2902213 (addToMapMapFromBucket!1087 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))))))

(declare-fun b!4651839 () Bool)

(assert (=> b!4651839 (= e!2902213 (ListMap!4530 Nil!51868))))

(assert (= (and d!1474451 c!796163) b!4651838))

(assert (= (and d!1474451 (not c!796163)) b!4651839))

(declare-fun m!5527429 () Bool)

(assert (=> d!1474451 m!5527429))

(declare-fun m!5527431 () Bool)

(assert (=> d!1474451 m!5527431))

(declare-fun m!5527433 () Bool)

(assert (=> b!4651838 m!5527433))

(assert (=> b!4651838 m!5527433))

(declare-fun m!5527435 () Bool)

(assert (=> b!4651838 m!5527435))

(assert (=> b!4651591 d!1474451))

(declare-fun bs!1059382 () Bool)

(declare-fun d!1474453 () Bool)

(assert (= bs!1059382 (and d!1474453 b!4651587)))

(declare-fun lambda!198579 () Int)

(assert (=> bs!1059382 (= lambda!198579 lambda!198470)))

(declare-fun bs!1059383 () Bool)

(assert (= bs!1059383 (and d!1474453 d!1474429)))

(assert (=> bs!1059383 (not (= lambda!198579 lambda!198573))))

(declare-fun bs!1059384 () Bool)

(assert (= bs!1059384 (and d!1474453 d!1474441)))

(assert (=> bs!1059384 (= lambda!198579 lambda!198576)))

(declare-fun bs!1059385 () Bool)

(assert (= bs!1059385 (and d!1474453 d!1474451)))

(assert (=> bs!1059385 (= lambda!198579 lambda!198578)))

(declare-fun lt!1815302 () ListMap!4529)

(assert (=> d!1474453 (invariantList!1290 (toList!5191 lt!1815302))))

(declare-fun e!2902214 () ListMap!4529)

(assert (=> d!1474453 (= lt!1815302 e!2902214)))

(declare-fun c!796164 () Bool)

(assert (=> d!1474453 (= c!796164 ((_ is Cons!51869) lt!1814954))))

(assert (=> d!1474453 (forall!11002 lt!1814954 lambda!198579)))

(assert (=> d!1474453 (= (extractMap!1686 lt!1814954) lt!1815302)))

(declare-fun b!4651840 () Bool)

(assert (=> b!4651840 (= e!2902214 (addToMapMapFromBucket!1087 (_2!29778 (h!58005 lt!1814954)) (extractMap!1686 (t!359101 lt!1814954))))))

(declare-fun b!4651841 () Bool)

(assert (=> b!4651841 (= e!2902214 (ListMap!4530 Nil!51868))))

(assert (= (and d!1474453 c!796164) b!4651840))

(assert (= (and d!1474453 (not c!796164)) b!4651841))

(declare-fun m!5527437 () Bool)

(assert (=> d!1474453 m!5527437))

(declare-fun m!5527439 () Bool)

(assert (=> d!1474453 m!5527439))

(declare-fun m!5527441 () Bool)

(assert (=> b!4651840 m!5527441))

(assert (=> b!4651840 m!5527441))

(declare-fun m!5527443 () Bool)

(assert (=> b!4651840 m!5527443))

(assert (=> b!4651591 d!1474453))

(declare-fun bs!1059386 () Bool)

(declare-fun b!4651845 () Bool)

(assert (= bs!1059386 (and b!4651845 b!4651772)))

(declare-fun lambda!198580 () Int)

(assert (=> bs!1059386 (= (= lt!1814962 lt!1815244) (= lambda!198580 lambda!198569))))

(declare-fun bs!1059387 () Bool)

(assert (= bs!1059387 (and b!4651845 b!4651765)))

(assert (=> bs!1059387 (= (= lt!1814962 lt!1815223) (= lambda!198580 lambda!198564))))

(declare-fun bs!1059388 () Bool)

(assert (= bs!1059388 (and b!4651845 b!4651766)))

(assert (=> bs!1059388 (= (= lt!1814962 (ListMap!4530 Nil!51868)) (= lambda!198580 lambda!198562))))

(assert (=> bs!1059386 (= (= lt!1814962 (ListMap!4530 Nil!51868)) (= lambda!198580 lambda!198568))))

(declare-fun bs!1059389 () Bool)

(assert (= bs!1059389 (and b!4651845 d!1474425)))

(assert (=> bs!1059389 (= (= lt!1814962 lt!1815234) (= lambda!198580 lambda!198570))))

(declare-fun bs!1059390 () Bool)

(assert (= bs!1059390 (and b!4651845 d!1474445)))

(assert (=> bs!1059390 (not (= lambda!198580 lambda!198577))))

(declare-fun bs!1059391 () Bool)

(assert (= bs!1059391 (and b!4651845 d!1474391)))

(assert (=> bs!1059391 (= (= lt!1814962 lt!1815213) (= lambda!198580 lambda!198566))))

(declare-fun bs!1059392 () Bool)

(assert (= bs!1059392 (and b!4651845 d!1474365)))

(assert (=> bs!1059392 (not (= lambda!198580 lambda!198476))))

(assert (=> bs!1059387 (= (= lt!1814962 (ListMap!4530 Nil!51868)) (= lambda!198580 lambda!198563))))

(declare-fun bs!1059393 () Bool)

(assert (= bs!1059393 (and b!4651845 b!4651773)))

(assert (=> bs!1059393 (= (= lt!1814962 (ListMap!4530 Nil!51868)) (= lambda!198580 lambda!198567))))

(assert (=> b!4651845 true))

(declare-fun bs!1059394 () Bool)

(declare-fun b!4651844 () Bool)

(assert (= bs!1059394 (and b!4651844 b!4651772)))

(declare-fun lambda!198581 () Int)

(assert (=> bs!1059394 (= (= lt!1814962 lt!1815244) (= lambda!198581 lambda!198569))))

(declare-fun bs!1059395 () Bool)

(assert (= bs!1059395 (and b!4651844 b!4651765)))

(assert (=> bs!1059395 (= (= lt!1814962 lt!1815223) (= lambda!198581 lambda!198564))))

(declare-fun bs!1059396 () Bool)

(assert (= bs!1059396 (and b!4651844 b!4651845)))

(assert (=> bs!1059396 (= lambda!198581 lambda!198580)))

(declare-fun bs!1059397 () Bool)

(assert (= bs!1059397 (and b!4651844 b!4651766)))

(assert (=> bs!1059397 (= (= lt!1814962 (ListMap!4530 Nil!51868)) (= lambda!198581 lambda!198562))))

(assert (=> bs!1059394 (= (= lt!1814962 (ListMap!4530 Nil!51868)) (= lambda!198581 lambda!198568))))

(declare-fun bs!1059398 () Bool)

(assert (= bs!1059398 (and b!4651844 d!1474425)))

(assert (=> bs!1059398 (= (= lt!1814962 lt!1815234) (= lambda!198581 lambda!198570))))

(declare-fun bs!1059399 () Bool)

(assert (= bs!1059399 (and b!4651844 d!1474445)))

(assert (=> bs!1059399 (not (= lambda!198581 lambda!198577))))

(declare-fun bs!1059400 () Bool)

(assert (= bs!1059400 (and b!4651844 d!1474391)))

(assert (=> bs!1059400 (= (= lt!1814962 lt!1815213) (= lambda!198581 lambda!198566))))

(declare-fun bs!1059401 () Bool)

(assert (= bs!1059401 (and b!4651844 d!1474365)))

(assert (=> bs!1059401 (not (= lambda!198581 lambda!198476))))

(assert (=> bs!1059395 (= (= lt!1814962 (ListMap!4530 Nil!51868)) (= lambda!198581 lambda!198563))))

(declare-fun bs!1059402 () Bool)

(assert (= bs!1059402 (and b!4651844 b!4651773)))

(assert (=> bs!1059402 (= (= lt!1814962 (ListMap!4530 Nil!51868)) (= lambda!198581 lambda!198567))))

(assert (=> b!4651844 true))

(declare-fun lambda!198582 () Int)

(declare-fun lt!1815313 () ListMap!4529)

(assert (=> bs!1059394 (= (= lt!1815313 lt!1815244) (= lambda!198582 lambda!198569))))

(assert (=> bs!1059395 (= (= lt!1815313 lt!1815223) (= lambda!198582 lambda!198564))))

(assert (=> bs!1059396 (= (= lt!1815313 lt!1814962) (= lambda!198582 lambda!198580))))

(assert (=> bs!1059397 (= (= lt!1815313 (ListMap!4530 Nil!51868)) (= lambda!198582 lambda!198562))))

(assert (=> bs!1059398 (= (= lt!1815313 lt!1815234) (= lambda!198582 lambda!198570))))

(assert (=> bs!1059399 (not (= lambda!198582 lambda!198577))))

(assert (=> bs!1059400 (= (= lt!1815313 lt!1815213) (= lambda!198582 lambda!198566))))

(assert (=> bs!1059401 (not (= lambda!198582 lambda!198476))))

(assert (=> bs!1059395 (= (= lt!1815313 (ListMap!4530 Nil!51868)) (= lambda!198582 lambda!198563))))

(assert (=> bs!1059402 (= (= lt!1815313 (ListMap!4530 Nil!51868)) (= lambda!198582 lambda!198567))))

(assert (=> bs!1059394 (= (= lt!1815313 (ListMap!4530 Nil!51868)) (= lambda!198582 lambda!198568))))

(assert (=> b!4651844 (= (= lt!1815313 lt!1814962) (= lambda!198582 lambda!198581))))

(assert (=> b!4651844 true))

(declare-fun bs!1059403 () Bool)

(declare-fun d!1474455 () Bool)

(assert (= bs!1059403 (and d!1474455 b!4651772)))

(declare-fun lambda!198583 () Int)

(declare-fun lt!1815303 () ListMap!4529)

(assert (=> bs!1059403 (= (= lt!1815303 lt!1815244) (= lambda!198583 lambda!198569))))

(declare-fun bs!1059404 () Bool)

(assert (= bs!1059404 (and d!1474455 b!4651845)))

(assert (=> bs!1059404 (= (= lt!1815303 lt!1814962) (= lambda!198583 lambda!198580))))

(declare-fun bs!1059405 () Bool)

(assert (= bs!1059405 (and d!1474455 b!4651766)))

(assert (=> bs!1059405 (= (= lt!1815303 (ListMap!4530 Nil!51868)) (= lambda!198583 lambda!198562))))

(declare-fun bs!1059406 () Bool)

(assert (= bs!1059406 (and d!1474455 d!1474425)))

(assert (=> bs!1059406 (= (= lt!1815303 lt!1815234) (= lambda!198583 lambda!198570))))

(declare-fun bs!1059407 () Bool)

(assert (= bs!1059407 (and d!1474455 d!1474445)))

(assert (=> bs!1059407 (not (= lambda!198583 lambda!198577))))

(declare-fun bs!1059408 () Bool)

(assert (= bs!1059408 (and d!1474455 b!4651765)))

(assert (=> bs!1059408 (= (= lt!1815303 lt!1815223) (= lambda!198583 lambda!198564))))

(declare-fun bs!1059409 () Bool)

(assert (= bs!1059409 (and d!1474455 b!4651844)))

(assert (=> bs!1059409 (= (= lt!1815303 lt!1815313) (= lambda!198583 lambda!198582))))

(declare-fun bs!1059410 () Bool)

(assert (= bs!1059410 (and d!1474455 d!1474391)))

(assert (=> bs!1059410 (= (= lt!1815303 lt!1815213) (= lambda!198583 lambda!198566))))

(declare-fun bs!1059411 () Bool)

(assert (= bs!1059411 (and d!1474455 d!1474365)))

(assert (=> bs!1059411 (not (= lambda!198583 lambda!198476))))

(assert (=> bs!1059408 (= (= lt!1815303 (ListMap!4530 Nil!51868)) (= lambda!198583 lambda!198563))))

(declare-fun bs!1059412 () Bool)

(assert (= bs!1059412 (and d!1474455 b!4651773)))

(assert (=> bs!1059412 (= (= lt!1815303 (ListMap!4530 Nil!51868)) (= lambda!198583 lambda!198567))))

(assert (=> bs!1059403 (= (= lt!1815303 (ListMap!4530 Nil!51868)) (= lambda!198583 lambda!198568))))

(assert (=> bs!1059409 (= (= lt!1815303 lt!1814962) (= lambda!198583 lambda!198581))))

(assert (=> d!1474455 true))

(declare-fun e!2902217 () Bool)

(assert (=> d!1474455 e!2902217))

(declare-fun res!1955344 () Bool)

(assert (=> d!1474455 (=> (not res!1955344) (not e!2902217))))

(assert (=> d!1474455 (= res!1955344 (forall!11004 oldBucket!40 lambda!198583))))

(declare-fun e!2902215 () ListMap!4529)

(assert (=> d!1474455 (= lt!1815303 e!2902215)))

(declare-fun c!796165 () Bool)

(assert (=> d!1474455 (= c!796165 ((_ is Nil!51868) oldBucket!40))))

(assert (=> d!1474455 (noDuplicateKeys!1630 oldBucket!40)))

(assert (=> d!1474455 (= (addToMapMapFromBucket!1087 oldBucket!40 lt!1814962) lt!1815303)))

(declare-fun b!4651842 () Bool)

(declare-fun res!1955342 () Bool)

(assert (=> b!4651842 (=> (not res!1955342) (not e!2902217))))

(assert (=> b!4651842 (= res!1955342 (forall!11004 (toList!5191 lt!1814962) lambda!198583))))

(declare-fun bm!324980 () Bool)

(declare-fun call!324986 () Bool)

(assert (=> bm!324980 (= call!324986 (forall!11004 (ite c!796165 (toList!5191 lt!1814962) (t!359100 oldBucket!40)) (ite c!796165 lambda!198580 lambda!198582)))))

(declare-fun bm!324981 () Bool)

(declare-fun call!324987 () Bool)

(assert (=> bm!324981 (= call!324987 (forall!11004 (toList!5191 lt!1814962) (ite c!796165 lambda!198580 lambda!198582)))))

(declare-fun b!4651843 () Bool)

(assert (=> b!4651843 (= e!2902217 (invariantList!1290 (toList!5191 lt!1815303)))))

(assert (=> b!4651844 (= e!2902215 lt!1815313)))

(declare-fun lt!1815308 () ListMap!4529)

(assert (=> b!4651844 (= lt!1815308 (+!1974 lt!1814962 (h!58004 oldBucket!40)))))

(assert (=> b!4651844 (= lt!1815313 (addToMapMapFromBucket!1087 (t!359100 oldBucket!40) (+!1974 lt!1814962 (h!58004 oldBucket!40))))))

(declare-fun lt!1815306 () Unit!117676)

(declare-fun call!324985 () Unit!117676)

(assert (=> b!4651844 (= lt!1815306 call!324985)))

(assert (=> b!4651844 (forall!11004 (toList!5191 lt!1814962) lambda!198581)))

(declare-fun lt!1815316 () Unit!117676)

(assert (=> b!4651844 (= lt!1815316 lt!1815306)))

(assert (=> b!4651844 (forall!11004 (toList!5191 lt!1815308) lambda!198582)))

(declare-fun lt!1815315 () Unit!117676)

(declare-fun Unit!117750 () Unit!117676)

(assert (=> b!4651844 (= lt!1815315 Unit!117750)))

(assert (=> b!4651844 call!324986))

(declare-fun lt!1815307 () Unit!117676)

(declare-fun Unit!117751 () Unit!117676)

(assert (=> b!4651844 (= lt!1815307 Unit!117751)))

(declare-fun lt!1815312 () Unit!117676)

(declare-fun Unit!117752 () Unit!117676)

(assert (=> b!4651844 (= lt!1815312 Unit!117752)))

(declare-fun lt!1815304 () Unit!117676)

(assert (=> b!4651844 (= lt!1815304 (forallContained!3212 (toList!5191 lt!1815308) lambda!198582 (h!58004 oldBucket!40)))))

(assert (=> b!4651844 (contains!15011 lt!1815308 (_1!29777 (h!58004 oldBucket!40)))))

(declare-fun lt!1815321 () Unit!117676)

(declare-fun Unit!117753 () Unit!117676)

(assert (=> b!4651844 (= lt!1815321 Unit!117753)))

(assert (=> b!4651844 (contains!15011 lt!1815313 (_1!29777 (h!58004 oldBucket!40)))))

(declare-fun lt!1815311 () Unit!117676)

(declare-fun Unit!117754 () Unit!117676)

(assert (=> b!4651844 (= lt!1815311 Unit!117754)))

(assert (=> b!4651844 (forall!11004 oldBucket!40 lambda!198582)))

(declare-fun lt!1815317 () Unit!117676)

(declare-fun Unit!117755 () Unit!117676)

(assert (=> b!4651844 (= lt!1815317 Unit!117755)))

(assert (=> b!4651844 (forall!11004 (toList!5191 lt!1815308) lambda!198582)))

(declare-fun lt!1815314 () Unit!117676)

(declare-fun Unit!117756 () Unit!117676)

(assert (=> b!4651844 (= lt!1815314 Unit!117756)))

(declare-fun lt!1815323 () Unit!117676)

(declare-fun Unit!117757 () Unit!117676)

(assert (=> b!4651844 (= lt!1815323 Unit!117757)))

(declare-fun lt!1815305 () Unit!117676)

(assert (=> b!4651844 (= lt!1815305 (addForallContainsKeyThenBeforeAdding!589 lt!1814962 lt!1815313 (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))))))

(assert (=> b!4651844 call!324987))

(declare-fun lt!1815310 () Unit!117676)

(assert (=> b!4651844 (= lt!1815310 lt!1815305)))

(assert (=> b!4651844 (forall!11004 (toList!5191 lt!1814962) lambda!198582)))

(declare-fun lt!1815319 () Unit!117676)

(declare-fun Unit!117758 () Unit!117676)

(assert (=> b!4651844 (= lt!1815319 Unit!117758)))

(declare-fun res!1955343 () Bool)

(assert (=> b!4651844 (= res!1955343 (forall!11004 oldBucket!40 lambda!198582))))

(declare-fun e!2902216 () Bool)

(assert (=> b!4651844 (=> (not res!1955343) (not e!2902216))))

(assert (=> b!4651844 e!2902216))

(declare-fun lt!1815309 () Unit!117676)

(declare-fun Unit!117759 () Unit!117676)

(assert (=> b!4651844 (= lt!1815309 Unit!117759)))

(assert (=> b!4651845 (= e!2902215 lt!1814962)))

(declare-fun lt!1815322 () Unit!117676)

(assert (=> b!4651845 (= lt!1815322 call!324985)))

(assert (=> b!4651845 call!324987))

(declare-fun lt!1815320 () Unit!117676)

(assert (=> b!4651845 (= lt!1815320 lt!1815322)))

(assert (=> b!4651845 call!324986))

(declare-fun lt!1815318 () Unit!117676)

(declare-fun Unit!117760 () Unit!117676)

(assert (=> b!4651845 (= lt!1815318 Unit!117760)))

(declare-fun bm!324982 () Bool)

(assert (=> bm!324982 (= call!324985 (lemmaContainsAllItsOwnKeys!590 lt!1814962))))

(declare-fun b!4651846 () Bool)

(assert (=> b!4651846 (= e!2902216 (forall!11004 (toList!5191 lt!1814962) lambda!198582))))

(assert (= (and d!1474455 c!796165) b!4651845))

(assert (= (and d!1474455 (not c!796165)) b!4651844))

(assert (= (and b!4651844 res!1955343) b!4651846))

(assert (= (or b!4651845 b!4651844) bm!324982))

(assert (= (or b!4651845 b!4651844) bm!324980))

(assert (= (or b!4651845 b!4651844) bm!324981))

(assert (= (and d!1474455 res!1955344) b!4651842))

(assert (= (and b!4651842 res!1955342) b!4651843))

(declare-fun m!5527445 () Bool)

(assert (=> b!4651846 m!5527445))

(declare-fun m!5527447 () Bool)

(assert (=> b!4651843 m!5527447))

(declare-fun m!5527449 () Bool)

(assert (=> b!4651842 m!5527449))

(declare-fun m!5527451 () Bool)

(assert (=> bm!324982 m!5527451))

(declare-fun m!5527453 () Bool)

(assert (=> bm!324980 m!5527453))

(declare-fun m!5527455 () Bool)

(assert (=> d!1474455 m!5527455))

(assert (=> d!1474455 m!5527017))

(declare-fun m!5527457 () Bool)

(assert (=> bm!324981 m!5527457))

(declare-fun m!5527459 () Bool)

(assert (=> b!4651844 m!5527459))

(declare-fun m!5527461 () Bool)

(assert (=> b!4651844 m!5527461))

(assert (=> b!4651844 m!5527461))

(declare-fun m!5527463 () Bool)

(assert (=> b!4651844 m!5527463))

(declare-fun m!5527465 () Bool)

(assert (=> b!4651844 m!5527465))

(assert (=> b!4651844 m!5527445))

(declare-fun m!5527467 () Bool)

(assert (=> b!4651844 m!5527467))

(declare-fun m!5527469 () Bool)

(assert (=> b!4651844 m!5527469))

(assert (=> b!4651844 m!5527467))

(assert (=> b!4651844 m!5527463))

(declare-fun m!5527471 () Bool)

(assert (=> b!4651844 m!5527471))

(declare-fun m!5527473 () Bool)

(assert (=> b!4651844 m!5527473))

(declare-fun m!5527475 () Bool)

(assert (=> b!4651844 m!5527475))

(assert (=> b!4651580 d!1474455))

(declare-fun bs!1059413 () Bool)

(declare-fun d!1474457 () Bool)

(assert (= bs!1059413 (and d!1474457 d!1474451)))

(declare-fun lambda!198584 () Int)

(assert (=> bs!1059413 (= lambda!198584 lambda!198578)))

(declare-fun bs!1059414 () Bool)

(assert (= bs!1059414 (and d!1474457 d!1474441)))

(assert (=> bs!1059414 (= lambda!198584 lambda!198576)))

(declare-fun bs!1059415 () Bool)

(assert (= bs!1059415 (and d!1474457 b!4651587)))

(assert (=> bs!1059415 (= lambda!198584 lambda!198470)))

(declare-fun bs!1059416 () Bool)

(assert (= bs!1059416 (and d!1474457 d!1474429)))

(assert (=> bs!1059416 (not (= lambda!198584 lambda!198573))))

(declare-fun bs!1059417 () Bool)

(assert (= bs!1059417 (and d!1474457 d!1474453)))

(assert (=> bs!1059417 (= lambda!198584 lambda!198579)))

(declare-fun lt!1815324 () ListMap!4529)

(assert (=> d!1474457 (invariantList!1290 (toList!5191 lt!1815324))))

(declare-fun e!2902218 () ListMap!4529)

(assert (=> d!1474457 (= lt!1815324 e!2902218)))

(declare-fun c!796166 () Bool)

(assert (=> d!1474457 (= c!796166 ((_ is Cons!51869) Nil!51869))))

(assert (=> d!1474457 (forall!11002 Nil!51869 lambda!198584)))

(assert (=> d!1474457 (= (extractMap!1686 Nil!51869) lt!1815324)))

(declare-fun b!4651847 () Bool)

(assert (=> b!4651847 (= e!2902218 (addToMapMapFromBucket!1087 (_2!29778 (h!58005 Nil!51869)) (extractMap!1686 (t!359101 Nil!51869))))))

(declare-fun b!4651848 () Bool)

(assert (=> b!4651848 (= e!2902218 (ListMap!4530 Nil!51868))))

(assert (= (and d!1474457 c!796166) b!4651847))

(assert (= (and d!1474457 (not c!796166)) b!4651848))

(declare-fun m!5527477 () Bool)

(assert (=> d!1474457 m!5527477))

(declare-fun m!5527479 () Bool)

(assert (=> d!1474457 m!5527479))

(declare-fun m!5527481 () Bool)

(assert (=> b!4651847 m!5527481))

(assert (=> b!4651847 m!5527481))

(declare-fun m!5527483 () Bool)

(assert (=> b!4651847 m!5527483))

(assert (=> b!4651580 d!1474457))

(declare-fun d!1474459 () Bool)

(assert (=> d!1474459 (eq!909 (addToMapMapFromBucket!1087 (Cons!51868 lt!1814956 lt!1814957) (ListMap!4530 Nil!51868)) (+!1974 (addToMapMapFromBucket!1087 lt!1814957 (ListMap!4530 Nil!51868)) lt!1814956))))

(declare-fun lt!1815327 () Unit!117676)

(declare-fun choose!31943 (tuple2!52966 List!51992 ListMap!4529) Unit!117676)

(assert (=> d!1474459 (= lt!1815327 (choose!31943 lt!1814956 lt!1814957 (ListMap!4530 Nil!51868)))))

(assert (=> d!1474459 (noDuplicateKeys!1630 lt!1814957)))

(assert (=> d!1474459 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!160 lt!1814956 lt!1814957 (ListMap!4530 Nil!51868)) lt!1815327)))

(declare-fun bs!1059418 () Bool)

(assert (= bs!1059418 d!1474459))

(assert (=> bs!1059418 m!5526981))

(declare-fun m!5527485 () Bool)

(assert (=> bs!1059418 m!5527485))

(assert (=> bs!1059418 m!5526999))

(assert (=> bs!1059418 m!5526981))

(declare-fun m!5527487 () Bool)

(assert (=> bs!1059418 m!5527487))

(declare-fun m!5527489 () Bool)

(assert (=> bs!1059418 m!5527489))

(assert (=> bs!1059418 m!5527327))

(assert (=> bs!1059418 m!5526999))

(assert (=> bs!1059418 m!5527487))

(assert (=> b!4651590 d!1474459))

(declare-fun bs!1059419 () Bool)

(declare-fun b!4651852 () Bool)

(assert (= bs!1059419 (and b!4651852 b!4651772)))

(declare-fun lambda!198585 () Int)

(assert (=> bs!1059419 (= (= (ListMap!4530 Nil!51868) lt!1815244) (= lambda!198585 lambda!198569))))

(declare-fun bs!1059420 () Bool)

(assert (= bs!1059420 (and b!4651852 b!4651845)))

(assert (=> bs!1059420 (= (= (ListMap!4530 Nil!51868) lt!1814962) (= lambda!198585 lambda!198580))))

(declare-fun bs!1059421 () Bool)

(assert (= bs!1059421 (and b!4651852 b!4651766)))

(assert (=> bs!1059421 (= lambda!198585 lambda!198562)))

(declare-fun bs!1059422 () Bool)

(assert (= bs!1059422 (and b!4651852 d!1474455)))

(assert (=> bs!1059422 (= (= (ListMap!4530 Nil!51868) lt!1815303) (= lambda!198585 lambda!198583))))

(declare-fun bs!1059423 () Bool)

(assert (= bs!1059423 (and b!4651852 d!1474425)))

(assert (=> bs!1059423 (= (= (ListMap!4530 Nil!51868) lt!1815234) (= lambda!198585 lambda!198570))))

(declare-fun bs!1059424 () Bool)

(assert (= bs!1059424 (and b!4651852 d!1474445)))

(assert (=> bs!1059424 (not (= lambda!198585 lambda!198577))))

(declare-fun bs!1059425 () Bool)

(assert (= bs!1059425 (and b!4651852 b!4651765)))

(assert (=> bs!1059425 (= (= (ListMap!4530 Nil!51868) lt!1815223) (= lambda!198585 lambda!198564))))

(declare-fun bs!1059426 () Bool)

(assert (= bs!1059426 (and b!4651852 b!4651844)))

(assert (=> bs!1059426 (= (= (ListMap!4530 Nil!51868) lt!1815313) (= lambda!198585 lambda!198582))))

(declare-fun bs!1059427 () Bool)

(assert (= bs!1059427 (and b!4651852 d!1474391)))

(assert (=> bs!1059427 (= (= (ListMap!4530 Nil!51868) lt!1815213) (= lambda!198585 lambda!198566))))

(declare-fun bs!1059428 () Bool)

(assert (= bs!1059428 (and b!4651852 d!1474365)))

(assert (=> bs!1059428 (not (= lambda!198585 lambda!198476))))

(assert (=> bs!1059425 (= lambda!198585 lambda!198563)))

(declare-fun bs!1059429 () Bool)

(assert (= bs!1059429 (and b!4651852 b!4651773)))

(assert (=> bs!1059429 (= lambda!198585 lambda!198567)))

(assert (=> bs!1059419 (= lambda!198585 lambda!198568)))

(assert (=> bs!1059426 (= (= (ListMap!4530 Nil!51868) lt!1814962) (= lambda!198585 lambda!198581))))

(assert (=> b!4651852 true))

(declare-fun bs!1059430 () Bool)

(declare-fun b!4651851 () Bool)

(assert (= bs!1059430 (and b!4651851 b!4651772)))

(declare-fun lambda!198586 () Int)

(assert (=> bs!1059430 (= (= (ListMap!4530 Nil!51868) lt!1815244) (= lambda!198586 lambda!198569))))

(declare-fun bs!1059431 () Bool)

(assert (= bs!1059431 (and b!4651851 b!4651852)))

(assert (=> bs!1059431 (= lambda!198586 lambda!198585)))

(declare-fun bs!1059432 () Bool)

(assert (= bs!1059432 (and b!4651851 b!4651845)))

(assert (=> bs!1059432 (= (= (ListMap!4530 Nil!51868) lt!1814962) (= lambda!198586 lambda!198580))))

(declare-fun bs!1059433 () Bool)

(assert (= bs!1059433 (and b!4651851 b!4651766)))

(assert (=> bs!1059433 (= lambda!198586 lambda!198562)))

(declare-fun bs!1059434 () Bool)

(assert (= bs!1059434 (and b!4651851 d!1474455)))

(assert (=> bs!1059434 (= (= (ListMap!4530 Nil!51868) lt!1815303) (= lambda!198586 lambda!198583))))

(declare-fun bs!1059435 () Bool)

(assert (= bs!1059435 (and b!4651851 d!1474425)))

(assert (=> bs!1059435 (= (= (ListMap!4530 Nil!51868) lt!1815234) (= lambda!198586 lambda!198570))))

(declare-fun bs!1059436 () Bool)

(assert (= bs!1059436 (and b!4651851 d!1474445)))

(assert (=> bs!1059436 (not (= lambda!198586 lambda!198577))))

(declare-fun bs!1059437 () Bool)

(assert (= bs!1059437 (and b!4651851 b!4651765)))

(assert (=> bs!1059437 (= (= (ListMap!4530 Nil!51868) lt!1815223) (= lambda!198586 lambda!198564))))

(declare-fun bs!1059438 () Bool)

(assert (= bs!1059438 (and b!4651851 b!4651844)))

(assert (=> bs!1059438 (= (= (ListMap!4530 Nil!51868) lt!1815313) (= lambda!198586 lambda!198582))))

(declare-fun bs!1059439 () Bool)

(assert (= bs!1059439 (and b!4651851 d!1474391)))

(assert (=> bs!1059439 (= (= (ListMap!4530 Nil!51868) lt!1815213) (= lambda!198586 lambda!198566))))

(declare-fun bs!1059440 () Bool)

(assert (= bs!1059440 (and b!4651851 d!1474365)))

(assert (=> bs!1059440 (not (= lambda!198586 lambda!198476))))

(assert (=> bs!1059437 (= lambda!198586 lambda!198563)))

(declare-fun bs!1059441 () Bool)

(assert (= bs!1059441 (and b!4651851 b!4651773)))

(assert (=> bs!1059441 (= lambda!198586 lambda!198567)))

(assert (=> bs!1059430 (= lambda!198586 lambda!198568)))

(assert (=> bs!1059438 (= (= (ListMap!4530 Nil!51868) lt!1814962) (= lambda!198586 lambda!198581))))

(assert (=> b!4651851 true))

(declare-fun lambda!198587 () Int)

(declare-fun lt!1815338 () ListMap!4529)

(assert (=> bs!1059430 (= (= lt!1815338 lt!1815244) (= lambda!198587 lambda!198569))))

(assert (=> bs!1059431 (= (= lt!1815338 (ListMap!4530 Nil!51868)) (= lambda!198587 lambda!198585))))

(assert (=> b!4651851 (= (= lt!1815338 (ListMap!4530 Nil!51868)) (= lambda!198587 lambda!198586))))

(assert (=> bs!1059432 (= (= lt!1815338 lt!1814962) (= lambda!198587 lambda!198580))))

(assert (=> bs!1059433 (= (= lt!1815338 (ListMap!4530 Nil!51868)) (= lambda!198587 lambda!198562))))

(assert (=> bs!1059434 (= (= lt!1815338 lt!1815303) (= lambda!198587 lambda!198583))))

(assert (=> bs!1059435 (= (= lt!1815338 lt!1815234) (= lambda!198587 lambda!198570))))

(assert (=> bs!1059436 (not (= lambda!198587 lambda!198577))))

(assert (=> bs!1059437 (= (= lt!1815338 lt!1815223) (= lambda!198587 lambda!198564))))

(assert (=> bs!1059438 (= (= lt!1815338 lt!1815313) (= lambda!198587 lambda!198582))))

(assert (=> bs!1059439 (= (= lt!1815338 lt!1815213) (= lambda!198587 lambda!198566))))

(assert (=> bs!1059440 (not (= lambda!198587 lambda!198476))))

(assert (=> bs!1059437 (= (= lt!1815338 (ListMap!4530 Nil!51868)) (= lambda!198587 lambda!198563))))

(assert (=> bs!1059441 (= (= lt!1815338 (ListMap!4530 Nil!51868)) (= lambda!198587 lambda!198567))))

(assert (=> bs!1059430 (= (= lt!1815338 (ListMap!4530 Nil!51868)) (= lambda!198587 lambda!198568))))

(assert (=> bs!1059438 (= (= lt!1815338 lt!1814962) (= lambda!198587 lambda!198581))))

(assert (=> b!4651851 true))

(declare-fun bs!1059442 () Bool)

(declare-fun d!1474461 () Bool)

(assert (= bs!1059442 (and d!1474461 b!4651772)))

(declare-fun lt!1815328 () ListMap!4529)

(declare-fun lambda!198588 () Int)

(assert (=> bs!1059442 (= (= lt!1815328 lt!1815244) (= lambda!198588 lambda!198569))))

(declare-fun bs!1059443 () Bool)

(assert (= bs!1059443 (and d!1474461 b!4651852)))

(assert (=> bs!1059443 (= (= lt!1815328 (ListMap!4530 Nil!51868)) (= lambda!198588 lambda!198585))))

(declare-fun bs!1059444 () Bool)

(assert (= bs!1059444 (and d!1474461 b!4651851)))

(assert (=> bs!1059444 (= (= lt!1815328 (ListMap!4530 Nil!51868)) (= lambda!198588 lambda!198586))))

(declare-fun bs!1059445 () Bool)

(assert (= bs!1059445 (and d!1474461 b!4651845)))

(assert (=> bs!1059445 (= (= lt!1815328 lt!1814962) (= lambda!198588 lambda!198580))))

(declare-fun bs!1059446 () Bool)

(assert (= bs!1059446 (and d!1474461 b!4651766)))

(assert (=> bs!1059446 (= (= lt!1815328 (ListMap!4530 Nil!51868)) (= lambda!198588 lambda!198562))))

(declare-fun bs!1059447 () Bool)

(assert (= bs!1059447 (and d!1474461 d!1474455)))

(assert (=> bs!1059447 (= (= lt!1815328 lt!1815303) (= lambda!198588 lambda!198583))))

(declare-fun bs!1059448 () Bool)

(assert (= bs!1059448 (and d!1474461 d!1474425)))

(assert (=> bs!1059448 (= (= lt!1815328 lt!1815234) (= lambda!198588 lambda!198570))))

(declare-fun bs!1059449 () Bool)

(assert (= bs!1059449 (and d!1474461 d!1474445)))

(assert (=> bs!1059449 (not (= lambda!198588 lambda!198577))))

(assert (=> bs!1059444 (= (= lt!1815328 lt!1815338) (= lambda!198588 lambda!198587))))

(declare-fun bs!1059450 () Bool)

(assert (= bs!1059450 (and d!1474461 b!4651765)))

(assert (=> bs!1059450 (= (= lt!1815328 lt!1815223) (= lambda!198588 lambda!198564))))

(declare-fun bs!1059451 () Bool)

(assert (= bs!1059451 (and d!1474461 b!4651844)))

(assert (=> bs!1059451 (= (= lt!1815328 lt!1815313) (= lambda!198588 lambda!198582))))

(declare-fun bs!1059452 () Bool)

(assert (= bs!1059452 (and d!1474461 d!1474391)))

(assert (=> bs!1059452 (= (= lt!1815328 lt!1815213) (= lambda!198588 lambda!198566))))

(declare-fun bs!1059453 () Bool)

(assert (= bs!1059453 (and d!1474461 d!1474365)))

(assert (=> bs!1059453 (not (= lambda!198588 lambda!198476))))

(assert (=> bs!1059450 (= (= lt!1815328 (ListMap!4530 Nil!51868)) (= lambda!198588 lambda!198563))))

(declare-fun bs!1059454 () Bool)

(assert (= bs!1059454 (and d!1474461 b!4651773)))

(assert (=> bs!1059454 (= (= lt!1815328 (ListMap!4530 Nil!51868)) (= lambda!198588 lambda!198567))))

(assert (=> bs!1059442 (= (= lt!1815328 (ListMap!4530 Nil!51868)) (= lambda!198588 lambda!198568))))

(assert (=> bs!1059451 (= (= lt!1815328 lt!1814962) (= lambda!198588 lambda!198581))))

(assert (=> d!1474461 true))

(declare-fun e!2902221 () Bool)

(assert (=> d!1474461 e!2902221))

(declare-fun res!1955347 () Bool)

(assert (=> d!1474461 (=> (not res!1955347) (not e!2902221))))

(assert (=> d!1474461 (= res!1955347 (forall!11004 (Cons!51868 lt!1814956 lt!1814957) lambda!198588))))

(declare-fun e!2902219 () ListMap!4529)

(assert (=> d!1474461 (= lt!1815328 e!2902219)))

(declare-fun c!796167 () Bool)

(assert (=> d!1474461 (= c!796167 ((_ is Nil!51868) (Cons!51868 lt!1814956 lt!1814957)))))

(assert (=> d!1474461 (noDuplicateKeys!1630 (Cons!51868 lt!1814956 lt!1814957))))

(assert (=> d!1474461 (= (addToMapMapFromBucket!1087 (Cons!51868 lt!1814956 lt!1814957) (ListMap!4530 Nil!51868)) lt!1815328)))

(declare-fun b!4651849 () Bool)

(declare-fun res!1955345 () Bool)

(assert (=> b!4651849 (=> (not res!1955345) (not e!2902221))))

(assert (=> b!4651849 (= res!1955345 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198588))))

(declare-fun bm!324983 () Bool)

(declare-fun call!324989 () Bool)

(assert (=> bm!324983 (= call!324989 (forall!11004 (ite c!796167 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 (Cons!51868 lt!1814956 lt!1814957))) (ite c!796167 lambda!198585 lambda!198587)))))

(declare-fun bm!324984 () Bool)

(declare-fun call!324990 () Bool)

(assert (=> bm!324984 (= call!324990 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) (ite c!796167 lambda!198585 lambda!198587)))))

(declare-fun b!4651850 () Bool)

(assert (=> b!4651850 (= e!2902221 (invariantList!1290 (toList!5191 lt!1815328)))))

(assert (=> b!4651851 (= e!2902219 lt!1815338)))

(declare-fun lt!1815333 () ListMap!4529)

(assert (=> b!4651851 (= lt!1815333 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))))))

(assert (=> b!4651851 (= lt!1815338 (addToMapMapFromBucket!1087 (t!359100 (Cons!51868 lt!1814956 lt!1814957)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(declare-fun lt!1815331 () Unit!117676)

(declare-fun call!324988 () Unit!117676)

(assert (=> b!4651851 (= lt!1815331 call!324988)))

(assert (=> b!4651851 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198586)))

(declare-fun lt!1815341 () Unit!117676)

(assert (=> b!4651851 (= lt!1815341 lt!1815331)))

(assert (=> b!4651851 (forall!11004 (toList!5191 lt!1815333) lambda!198587)))

(declare-fun lt!1815340 () Unit!117676)

(declare-fun Unit!117772 () Unit!117676)

(assert (=> b!4651851 (= lt!1815340 Unit!117772)))

(assert (=> b!4651851 call!324989))

(declare-fun lt!1815332 () Unit!117676)

(declare-fun Unit!117773 () Unit!117676)

(assert (=> b!4651851 (= lt!1815332 Unit!117773)))

(declare-fun lt!1815337 () Unit!117676)

(declare-fun Unit!117774 () Unit!117676)

(assert (=> b!4651851 (= lt!1815337 Unit!117774)))

(declare-fun lt!1815329 () Unit!117676)

(assert (=> b!4651851 (= lt!1815329 (forallContained!3212 (toList!5191 lt!1815333) lambda!198587 (h!58004 (Cons!51868 lt!1814956 lt!1814957))))))

(assert (=> b!4651851 (contains!15011 lt!1815333 (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957))))))

(declare-fun lt!1815346 () Unit!117676)

(declare-fun Unit!117775 () Unit!117676)

(assert (=> b!4651851 (= lt!1815346 Unit!117775)))

(assert (=> b!4651851 (contains!15011 lt!1815338 (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957))))))

(declare-fun lt!1815336 () Unit!117676)

(declare-fun Unit!117776 () Unit!117676)

(assert (=> b!4651851 (= lt!1815336 Unit!117776)))

(assert (=> b!4651851 (forall!11004 (Cons!51868 lt!1814956 lt!1814957) lambda!198587)))

(declare-fun lt!1815342 () Unit!117676)

(declare-fun Unit!117777 () Unit!117676)

(assert (=> b!4651851 (= lt!1815342 Unit!117777)))

(assert (=> b!4651851 (forall!11004 (toList!5191 lt!1815333) lambda!198587)))

(declare-fun lt!1815339 () Unit!117676)

(declare-fun Unit!117778 () Unit!117676)

(assert (=> b!4651851 (= lt!1815339 Unit!117778)))

(declare-fun lt!1815348 () Unit!117676)

(declare-fun Unit!117779 () Unit!117676)

(assert (=> b!4651851 (= lt!1815348 Unit!117779)))

(declare-fun lt!1815330 () Unit!117676)

(assert (=> b!4651851 (= lt!1815330 (addForallContainsKeyThenBeforeAdding!589 (ListMap!4530 Nil!51868) lt!1815338 (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (_2!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(assert (=> b!4651851 call!324990))

(declare-fun lt!1815335 () Unit!117676)

(assert (=> b!4651851 (= lt!1815335 lt!1815330)))

(assert (=> b!4651851 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198587)))

(declare-fun lt!1815344 () Unit!117676)

(declare-fun Unit!117780 () Unit!117676)

(assert (=> b!4651851 (= lt!1815344 Unit!117780)))

(declare-fun res!1955346 () Bool)

(assert (=> b!4651851 (= res!1955346 (forall!11004 (Cons!51868 lt!1814956 lt!1814957) lambda!198587))))

(declare-fun e!2902220 () Bool)

(assert (=> b!4651851 (=> (not res!1955346) (not e!2902220))))

(assert (=> b!4651851 e!2902220))

(declare-fun lt!1815334 () Unit!117676)

(declare-fun Unit!117781 () Unit!117676)

(assert (=> b!4651851 (= lt!1815334 Unit!117781)))

(assert (=> b!4651852 (= e!2902219 (ListMap!4530 Nil!51868))))

(declare-fun lt!1815347 () Unit!117676)

(assert (=> b!4651852 (= lt!1815347 call!324988)))

(assert (=> b!4651852 call!324990))

(declare-fun lt!1815345 () Unit!117676)

(assert (=> b!4651852 (= lt!1815345 lt!1815347)))

(assert (=> b!4651852 call!324989))

(declare-fun lt!1815343 () Unit!117676)

(declare-fun Unit!117782 () Unit!117676)

(assert (=> b!4651852 (= lt!1815343 Unit!117782)))

(declare-fun bm!324985 () Bool)

(assert (=> bm!324985 (= call!324988 (lemmaContainsAllItsOwnKeys!590 (ListMap!4530 Nil!51868)))))

(declare-fun b!4651853 () Bool)

(assert (=> b!4651853 (= e!2902220 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198587))))

(assert (= (and d!1474461 c!796167) b!4651852))

(assert (= (and d!1474461 (not c!796167)) b!4651851))

(assert (= (and b!4651851 res!1955346) b!4651853))

(assert (= (or b!4651852 b!4651851) bm!324985))

(assert (= (or b!4651852 b!4651851) bm!324983))

(assert (= (or b!4651852 b!4651851) bm!324984))

(assert (= (and d!1474461 res!1955347) b!4651849))

(assert (= (and b!4651849 res!1955345) b!4651850))

(declare-fun m!5527491 () Bool)

(assert (=> b!4651853 m!5527491))

(declare-fun m!5527493 () Bool)

(assert (=> b!4651850 m!5527493))

(declare-fun m!5527495 () Bool)

(assert (=> b!4651849 m!5527495))

(assert (=> bm!324985 m!5527259))

(declare-fun m!5527497 () Bool)

(assert (=> bm!324983 m!5527497))

(declare-fun m!5527499 () Bool)

(assert (=> d!1474461 m!5527499))

(declare-fun m!5527501 () Bool)

(assert (=> d!1474461 m!5527501))

(declare-fun m!5527503 () Bool)

(assert (=> bm!324984 m!5527503))

(declare-fun m!5527505 () Bool)

(assert (=> b!4651851 m!5527505))

(declare-fun m!5527507 () Bool)

(assert (=> b!4651851 m!5527507))

(assert (=> b!4651851 m!5527507))

(declare-fun m!5527509 () Bool)

(assert (=> b!4651851 m!5527509))

(declare-fun m!5527511 () Bool)

(assert (=> b!4651851 m!5527511))

(assert (=> b!4651851 m!5527491))

(declare-fun m!5527513 () Bool)

(assert (=> b!4651851 m!5527513))

(declare-fun m!5527515 () Bool)

(assert (=> b!4651851 m!5527515))

(assert (=> b!4651851 m!5527513))

(assert (=> b!4651851 m!5527509))

(declare-fun m!5527517 () Bool)

(assert (=> b!4651851 m!5527517))

(declare-fun m!5527519 () Bool)

(assert (=> b!4651851 m!5527519))

(declare-fun m!5527521 () Bool)

(assert (=> b!4651851 m!5527521))

(assert (=> b!4651590 d!1474461))

(declare-fun d!1474463 () Bool)

(declare-fun e!2902224 () Bool)

(assert (=> d!1474463 e!2902224))

(declare-fun res!1955352 () Bool)

(assert (=> d!1474463 (=> (not res!1955352) (not e!2902224))))

(declare-fun lt!1815359 () ListMap!4529)

(assert (=> d!1474463 (= res!1955352 (contains!15011 lt!1815359 (_1!29777 lt!1814956)))))

(declare-fun lt!1815360 () List!51992)

(assert (=> d!1474463 (= lt!1815359 (ListMap!4530 lt!1815360))))

(declare-fun lt!1815357 () Unit!117676)

(declare-fun lt!1815358 () Unit!117676)

(assert (=> d!1474463 (= lt!1815357 lt!1815358)))

(assert (=> d!1474463 (= (getValueByKey!1600 lt!1815360 (_1!29777 lt!1814956)) (Some!11811 (_2!29777 lt!1814956)))))

(declare-fun lemmaContainsTupThenGetReturnValue!918 (List!51992 K!13225 V!13471) Unit!117676)

(assert (=> d!1474463 (= lt!1815358 (lemmaContainsTupThenGetReturnValue!918 lt!1815360 (_1!29777 lt!1814956) (_2!29777 lt!1814956)))))

(declare-fun insertNoDuplicatedKeys!426 (List!51992 K!13225 V!13471) List!51992)

(assert (=> d!1474463 (= lt!1815360 (insertNoDuplicatedKeys!426 (toList!5191 lt!1814959) (_1!29777 lt!1814956) (_2!29777 lt!1814956)))))

(assert (=> d!1474463 (= (+!1974 lt!1814959 lt!1814956) lt!1815359)))

(declare-fun b!4651858 () Bool)

(declare-fun res!1955353 () Bool)

(assert (=> b!4651858 (=> (not res!1955353) (not e!2902224))))

(assert (=> b!4651858 (= res!1955353 (= (getValueByKey!1600 (toList!5191 lt!1815359) (_1!29777 lt!1814956)) (Some!11811 (_2!29777 lt!1814956))))))

(declare-fun b!4651859 () Bool)

(declare-fun contains!15015 (List!51992 tuple2!52966) Bool)

(assert (=> b!4651859 (= e!2902224 (contains!15015 (toList!5191 lt!1815359) lt!1814956))))

(assert (= (and d!1474463 res!1955352) b!4651858))

(assert (= (and b!4651858 res!1955353) b!4651859))

(declare-fun m!5527523 () Bool)

(assert (=> d!1474463 m!5527523))

(declare-fun m!5527525 () Bool)

(assert (=> d!1474463 m!5527525))

(declare-fun m!5527527 () Bool)

(assert (=> d!1474463 m!5527527))

(declare-fun m!5527529 () Bool)

(assert (=> d!1474463 m!5527529))

(declare-fun m!5527531 () Bool)

(assert (=> b!4651858 m!5527531))

(declare-fun m!5527533 () Bool)

(assert (=> b!4651859 m!5527533))

(assert (=> b!4651590 d!1474463))

(declare-fun d!1474465 () Bool)

(assert (=> d!1474465 (= (head!9730 oldBucket!40) (h!58004 oldBucket!40))))

(assert (=> b!4651590 d!1474465))

(declare-fun bs!1059455 () Bool)

(declare-fun b!4651863 () Bool)

(assert (= bs!1059455 (and b!4651863 b!4651772)))

(declare-fun lambda!198589 () Int)

(assert (=> bs!1059455 (= (= (ListMap!4530 Nil!51868) lt!1815244) (= lambda!198589 lambda!198569))))

(declare-fun bs!1059456 () Bool)

(assert (= bs!1059456 (and b!4651863 d!1474461)))

(assert (=> bs!1059456 (= (= (ListMap!4530 Nil!51868) lt!1815328) (= lambda!198589 lambda!198588))))

(declare-fun bs!1059457 () Bool)

(assert (= bs!1059457 (and b!4651863 b!4651852)))

(assert (=> bs!1059457 (= lambda!198589 lambda!198585)))

(declare-fun bs!1059458 () Bool)

(assert (= bs!1059458 (and b!4651863 b!4651851)))

(assert (=> bs!1059458 (= lambda!198589 lambda!198586)))

(declare-fun bs!1059459 () Bool)

(assert (= bs!1059459 (and b!4651863 b!4651845)))

(assert (=> bs!1059459 (= (= (ListMap!4530 Nil!51868) lt!1814962) (= lambda!198589 lambda!198580))))

(declare-fun bs!1059460 () Bool)

(assert (= bs!1059460 (and b!4651863 b!4651766)))

(assert (=> bs!1059460 (= lambda!198589 lambda!198562)))

(declare-fun bs!1059461 () Bool)

(assert (= bs!1059461 (and b!4651863 d!1474455)))

(assert (=> bs!1059461 (= (= (ListMap!4530 Nil!51868) lt!1815303) (= lambda!198589 lambda!198583))))

(declare-fun bs!1059462 () Bool)

(assert (= bs!1059462 (and b!4651863 d!1474425)))

(assert (=> bs!1059462 (= (= (ListMap!4530 Nil!51868) lt!1815234) (= lambda!198589 lambda!198570))))

(declare-fun bs!1059463 () Bool)

(assert (= bs!1059463 (and b!4651863 d!1474445)))

(assert (=> bs!1059463 (not (= lambda!198589 lambda!198577))))

(assert (=> bs!1059458 (= (= (ListMap!4530 Nil!51868) lt!1815338) (= lambda!198589 lambda!198587))))

(declare-fun bs!1059464 () Bool)

(assert (= bs!1059464 (and b!4651863 b!4651765)))

(assert (=> bs!1059464 (= (= (ListMap!4530 Nil!51868) lt!1815223) (= lambda!198589 lambda!198564))))

(declare-fun bs!1059465 () Bool)

(assert (= bs!1059465 (and b!4651863 b!4651844)))

(assert (=> bs!1059465 (= (= (ListMap!4530 Nil!51868) lt!1815313) (= lambda!198589 lambda!198582))))

(declare-fun bs!1059466 () Bool)

(assert (= bs!1059466 (and b!4651863 d!1474391)))

(assert (=> bs!1059466 (= (= (ListMap!4530 Nil!51868) lt!1815213) (= lambda!198589 lambda!198566))))

(declare-fun bs!1059467 () Bool)

(assert (= bs!1059467 (and b!4651863 d!1474365)))

(assert (=> bs!1059467 (not (= lambda!198589 lambda!198476))))

(assert (=> bs!1059464 (= lambda!198589 lambda!198563)))

(declare-fun bs!1059468 () Bool)

(assert (= bs!1059468 (and b!4651863 b!4651773)))

(assert (=> bs!1059468 (= lambda!198589 lambda!198567)))

(assert (=> bs!1059455 (= lambda!198589 lambda!198568)))

(assert (=> bs!1059465 (= (= (ListMap!4530 Nil!51868) lt!1814962) (= lambda!198589 lambda!198581))))

(assert (=> b!4651863 true))

(declare-fun bs!1059469 () Bool)

(declare-fun b!4651862 () Bool)

(assert (= bs!1059469 (and b!4651862 b!4651772)))

(declare-fun lambda!198590 () Int)

(assert (=> bs!1059469 (= (= (ListMap!4530 Nil!51868) lt!1815244) (= lambda!198590 lambda!198569))))

(declare-fun bs!1059470 () Bool)

(assert (= bs!1059470 (and b!4651862 d!1474461)))

(assert (=> bs!1059470 (= (= (ListMap!4530 Nil!51868) lt!1815328) (= lambda!198590 lambda!198588))))

(declare-fun bs!1059471 () Bool)

(assert (= bs!1059471 (and b!4651862 b!4651852)))

(assert (=> bs!1059471 (= lambda!198590 lambda!198585)))

(declare-fun bs!1059472 () Bool)

(assert (= bs!1059472 (and b!4651862 b!4651851)))

(assert (=> bs!1059472 (= lambda!198590 lambda!198586)))

(declare-fun bs!1059473 () Bool)

(assert (= bs!1059473 (and b!4651862 b!4651845)))

(assert (=> bs!1059473 (= (= (ListMap!4530 Nil!51868) lt!1814962) (= lambda!198590 lambda!198580))))

(declare-fun bs!1059474 () Bool)

(assert (= bs!1059474 (and b!4651862 b!4651766)))

(assert (=> bs!1059474 (= lambda!198590 lambda!198562)))

(declare-fun bs!1059475 () Bool)

(assert (= bs!1059475 (and b!4651862 d!1474455)))

(assert (=> bs!1059475 (= (= (ListMap!4530 Nil!51868) lt!1815303) (= lambda!198590 lambda!198583))))

(declare-fun bs!1059476 () Bool)

(assert (= bs!1059476 (and b!4651862 d!1474425)))

(assert (=> bs!1059476 (= (= (ListMap!4530 Nil!51868) lt!1815234) (= lambda!198590 lambda!198570))))

(declare-fun bs!1059477 () Bool)

(assert (= bs!1059477 (and b!4651862 d!1474445)))

(assert (=> bs!1059477 (not (= lambda!198590 lambda!198577))))

(assert (=> bs!1059472 (= (= (ListMap!4530 Nil!51868) lt!1815338) (= lambda!198590 lambda!198587))))

(declare-fun bs!1059478 () Bool)

(assert (= bs!1059478 (and b!4651862 b!4651765)))

(assert (=> bs!1059478 (= (= (ListMap!4530 Nil!51868) lt!1815223) (= lambda!198590 lambda!198564))))

(declare-fun bs!1059479 () Bool)

(assert (= bs!1059479 (and b!4651862 b!4651844)))

(assert (=> bs!1059479 (= (= (ListMap!4530 Nil!51868) lt!1815313) (= lambda!198590 lambda!198582))))

(declare-fun bs!1059480 () Bool)

(assert (= bs!1059480 (and b!4651862 d!1474391)))

(assert (=> bs!1059480 (= (= (ListMap!4530 Nil!51868) lt!1815213) (= lambda!198590 lambda!198566))))

(declare-fun bs!1059481 () Bool)

(assert (= bs!1059481 (and b!4651862 d!1474365)))

(assert (=> bs!1059481 (not (= lambda!198590 lambda!198476))))

(assert (=> bs!1059478 (= lambda!198590 lambda!198563)))

(declare-fun bs!1059482 () Bool)

(assert (= bs!1059482 (and b!4651862 b!4651773)))

(assert (=> bs!1059482 (= lambda!198590 lambda!198567)))

(declare-fun bs!1059483 () Bool)

(assert (= bs!1059483 (and b!4651862 b!4651863)))

(assert (=> bs!1059483 (= lambda!198590 lambda!198589)))

(assert (=> bs!1059469 (= lambda!198590 lambda!198568)))

(assert (=> bs!1059479 (= (= (ListMap!4530 Nil!51868) lt!1814962) (= lambda!198590 lambda!198581))))

(assert (=> b!4651862 true))

(declare-fun lambda!198591 () Int)

(declare-fun lt!1815371 () ListMap!4529)

(assert (=> bs!1059469 (= (= lt!1815371 lt!1815244) (= lambda!198591 lambda!198569))))

(assert (=> bs!1059470 (= (= lt!1815371 lt!1815328) (= lambda!198591 lambda!198588))))

(assert (=> bs!1059471 (= (= lt!1815371 (ListMap!4530 Nil!51868)) (= lambda!198591 lambda!198585))))

(assert (=> bs!1059472 (= (= lt!1815371 (ListMap!4530 Nil!51868)) (= lambda!198591 lambda!198586))))

(assert (=> bs!1059473 (= (= lt!1815371 lt!1814962) (= lambda!198591 lambda!198580))))

(assert (=> bs!1059474 (= (= lt!1815371 (ListMap!4530 Nil!51868)) (= lambda!198591 lambda!198562))))

(assert (=> bs!1059475 (= (= lt!1815371 lt!1815303) (= lambda!198591 lambda!198583))))

(assert (=> b!4651862 (= (= lt!1815371 (ListMap!4530 Nil!51868)) (= lambda!198591 lambda!198590))))

(assert (=> bs!1059476 (= (= lt!1815371 lt!1815234) (= lambda!198591 lambda!198570))))

(assert (=> bs!1059477 (not (= lambda!198591 lambda!198577))))

(assert (=> bs!1059472 (= (= lt!1815371 lt!1815338) (= lambda!198591 lambda!198587))))

(assert (=> bs!1059478 (= (= lt!1815371 lt!1815223) (= lambda!198591 lambda!198564))))

(assert (=> bs!1059479 (= (= lt!1815371 lt!1815313) (= lambda!198591 lambda!198582))))

(assert (=> bs!1059480 (= (= lt!1815371 lt!1815213) (= lambda!198591 lambda!198566))))

(assert (=> bs!1059481 (not (= lambda!198591 lambda!198476))))

(assert (=> bs!1059478 (= (= lt!1815371 (ListMap!4530 Nil!51868)) (= lambda!198591 lambda!198563))))

(assert (=> bs!1059482 (= (= lt!1815371 (ListMap!4530 Nil!51868)) (= lambda!198591 lambda!198567))))

(assert (=> bs!1059483 (= (= lt!1815371 (ListMap!4530 Nil!51868)) (= lambda!198591 lambda!198589))))

(assert (=> bs!1059469 (= (= lt!1815371 (ListMap!4530 Nil!51868)) (= lambda!198591 lambda!198568))))

(assert (=> bs!1059479 (= (= lt!1815371 lt!1814962) (= lambda!198591 lambda!198581))))

(assert (=> b!4651862 true))

(declare-fun bs!1059484 () Bool)

(declare-fun d!1474467 () Bool)

(assert (= bs!1059484 (and d!1474467 b!4651772)))

(declare-fun lt!1815361 () ListMap!4529)

(declare-fun lambda!198592 () Int)

(assert (=> bs!1059484 (= (= lt!1815361 lt!1815244) (= lambda!198592 lambda!198569))))

(declare-fun bs!1059485 () Bool)

(assert (= bs!1059485 (and d!1474467 d!1474461)))

(assert (=> bs!1059485 (= (= lt!1815361 lt!1815328) (= lambda!198592 lambda!198588))))

(declare-fun bs!1059486 () Bool)

(assert (= bs!1059486 (and d!1474467 b!4651852)))

(assert (=> bs!1059486 (= (= lt!1815361 (ListMap!4530 Nil!51868)) (= lambda!198592 lambda!198585))))

(declare-fun bs!1059487 () Bool)

(assert (= bs!1059487 (and d!1474467 b!4651851)))

(assert (=> bs!1059487 (= (= lt!1815361 (ListMap!4530 Nil!51868)) (= lambda!198592 lambda!198586))))

(declare-fun bs!1059488 () Bool)

(assert (= bs!1059488 (and d!1474467 b!4651845)))

(assert (=> bs!1059488 (= (= lt!1815361 lt!1814962) (= lambda!198592 lambda!198580))))

(declare-fun bs!1059489 () Bool)

(assert (= bs!1059489 (and d!1474467 b!4651766)))

(assert (=> bs!1059489 (= (= lt!1815361 (ListMap!4530 Nil!51868)) (= lambda!198592 lambda!198562))))

(declare-fun bs!1059490 () Bool)

(assert (= bs!1059490 (and d!1474467 d!1474455)))

(assert (=> bs!1059490 (= (= lt!1815361 lt!1815303) (= lambda!198592 lambda!198583))))

(declare-fun bs!1059491 () Bool)

(assert (= bs!1059491 (and d!1474467 b!4651862)))

(assert (=> bs!1059491 (= (= lt!1815361 (ListMap!4530 Nil!51868)) (= lambda!198592 lambda!198590))))

(declare-fun bs!1059492 () Bool)

(assert (= bs!1059492 (and d!1474467 d!1474445)))

(assert (=> bs!1059492 (not (= lambda!198592 lambda!198577))))

(assert (=> bs!1059487 (= (= lt!1815361 lt!1815338) (= lambda!198592 lambda!198587))))

(declare-fun bs!1059493 () Bool)

(assert (= bs!1059493 (and d!1474467 b!4651765)))

(assert (=> bs!1059493 (= (= lt!1815361 lt!1815223) (= lambda!198592 lambda!198564))))

(declare-fun bs!1059494 () Bool)

(assert (= bs!1059494 (and d!1474467 b!4651844)))

(assert (=> bs!1059494 (= (= lt!1815361 lt!1815313) (= lambda!198592 lambda!198582))))

(declare-fun bs!1059495 () Bool)

(assert (= bs!1059495 (and d!1474467 d!1474391)))

(assert (=> bs!1059495 (= (= lt!1815361 lt!1815213) (= lambda!198592 lambda!198566))))

(declare-fun bs!1059496 () Bool)

(assert (= bs!1059496 (and d!1474467 d!1474365)))

(assert (=> bs!1059496 (not (= lambda!198592 lambda!198476))))

(assert (=> bs!1059493 (= (= lt!1815361 (ListMap!4530 Nil!51868)) (= lambda!198592 lambda!198563))))

(declare-fun bs!1059497 () Bool)

(assert (= bs!1059497 (and d!1474467 b!4651773)))

(assert (=> bs!1059497 (= (= lt!1815361 (ListMap!4530 Nil!51868)) (= lambda!198592 lambda!198567))))

(declare-fun bs!1059498 () Bool)

(assert (= bs!1059498 (and d!1474467 b!4651863)))

(assert (=> bs!1059498 (= (= lt!1815361 (ListMap!4530 Nil!51868)) (= lambda!198592 lambda!198589))))

(assert (=> bs!1059484 (= (= lt!1815361 (ListMap!4530 Nil!51868)) (= lambda!198592 lambda!198568))))

(assert (=> bs!1059494 (= (= lt!1815361 lt!1814962) (= lambda!198592 lambda!198581))))

(declare-fun bs!1059499 () Bool)

(assert (= bs!1059499 (and d!1474467 d!1474425)))

(assert (=> bs!1059499 (= (= lt!1815361 lt!1815234) (= lambda!198592 lambda!198570))))

(assert (=> bs!1059491 (= (= lt!1815361 lt!1815371) (= lambda!198592 lambda!198591))))

(assert (=> d!1474467 true))

(declare-fun e!2902227 () Bool)

(assert (=> d!1474467 e!2902227))

(declare-fun res!1955356 () Bool)

(assert (=> d!1474467 (=> (not res!1955356) (not e!2902227))))

(assert (=> d!1474467 (= res!1955356 (forall!11004 oldBucket!40 lambda!198592))))

(declare-fun e!2902225 () ListMap!4529)

(assert (=> d!1474467 (= lt!1815361 e!2902225)))

(declare-fun c!796168 () Bool)

(assert (=> d!1474467 (= c!796168 ((_ is Nil!51868) oldBucket!40))))

(assert (=> d!1474467 (noDuplicateKeys!1630 oldBucket!40)))

(assert (=> d!1474467 (= (addToMapMapFromBucket!1087 oldBucket!40 (ListMap!4530 Nil!51868)) lt!1815361)))

(declare-fun b!4651860 () Bool)

(declare-fun res!1955354 () Bool)

(assert (=> b!4651860 (=> (not res!1955354) (not e!2902227))))

(assert (=> b!4651860 (= res!1955354 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198592))))

(declare-fun bm!324986 () Bool)

(declare-fun call!324992 () Bool)

(assert (=> bm!324986 (= call!324992 (forall!11004 (ite c!796168 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 oldBucket!40)) (ite c!796168 lambda!198589 lambda!198591)))))

(declare-fun bm!324987 () Bool)

(declare-fun call!324993 () Bool)

(assert (=> bm!324987 (= call!324993 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) (ite c!796168 lambda!198589 lambda!198591)))))

(declare-fun b!4651861 () Bool)

(assert (=> b!4651861 (= e!2902227 (invariantList!1290 (toList!5191 lt!1815361)))))

(assert (=> b!4651862 (= e!2902225 lt!1815371)))

(declare-fun lt!1815366 () ListMap!4529)

(assert (=> b!4651862 (= lt!1815366 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)))))

(assert (=> b!4651862 (= lt!1815371 (addToMapMapFromBucket!1087 (t!359100 oldBucket!40) (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))))))

(declare-fun lt!1815364 () Unit!117676)

(declare-fun call!324991 () Unit!117676)

(assert (=> b!4651862 (= lt!1815364 call!324991)))

(assert (=> b!4651862 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198590)))

(declare-fun lt!1815374 () Unit!117676)

(assert (=> b!4651862 (= lt!1815374 lt!1815364)))

(assert (=> b!4651862 (forall!11004 (toList!5191 lt!1815366) lambda!198591)))

(declare-fun lt!1815373 () Unit!117676)

(declare-fun Unit!117783 () Unit!117676)

(assert (=> b!4651862 (= lt!1815373 Unit!117783)))

(assert (=> b!4651862 call!324992))

(declare-fun lt!1815365 () Unit!117676)

(declare-fun Unit!117784 () Unit!117676)

(assert (=> b!4651862 (= lt!1815365 Unit!117784)))

(declare-fun lt!1815370 () Unit!117676)

(declare-fun Unit!117785 () Unit!117676)

(assert (=> b!4651862 (= lt!1815370 Unit!117785)))

(declare-fun lt!1815362 () Unit!117676)

(assert (=> b!4651862 (= lt!1815362 (forallContained!3212 (toList!5191 lt!1815366) lambda!198591 (h!58004 oldBucket!40)))))

(assert (=> b!4651862 (contains!15011 lt!1815366 (_1!29777 (h!58004 oldBucket!40)))))

(declare-fun lt!1815379 () Unit!117676)

(declare-fun Unit!117786 () Unit!117676)

(assert (=> b!4651862 (= lt!1815379 Unit!117786)))

(assert (=> b!4651862 (contains!15011 lt!1815371 (_1!29777 (h!58004 oldBucket!40)))))

(declare-fun lt!1815369 () Unit!117676)

(declare-fun Unit!117787 () Unit!117676)

(assert (=> b!4651862 (= lt!1815369 Unit!117787)))

(assert (=> b!4651862 (forall!11004 oldBucket!40 lambda!198591)))

(declare-fun lt!1815375 () Unit!117676)

(declare-fun Unit!117788 () Unit!117676)

(assert (=> b!4651862 (= lt!1815375 Unit!117788)))

(assert (=> b!4651862 (forall!11004 (toList!5191 lt!1815366) lambda!198591)))

(declare-fun lt!1815372 () Unit!117676)

(declare-fun Unit!117789 () Unit!117676)

(assert (=> b!4651862 (= lt!1815372 Unit!117789)))

(declare-fun lt!1815381 () Unit!117676)

(declare-fun Unit!117790 () Unit!117676)

(assert (=> b!4651862 (= lt!1815381 Unit!117790)))

(declare-fun lt!1815363 () Unit!117676)

(assert (=> b!4651862 (= lt!1815363 (addForallContainsKeyThenBeforeAdding!589 (ListMap!4530 Nil!51868) lt!1815371 (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))))))

(assert (=> b!4651862 call!324993))

(declare-fun lt!1815368 () Unit!117676)

(assert (=> b!4651862 (= lt!1815368 lt!1815363)))

(assert (=> b!4651862 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198591)))

(declare-fun lt!1815377 () Unit!117676)

(declare-fun Unit!117791 () Unit!117676)

(assert (=> b!4651862 (= lt!1815377 Unit!117791)))

(declare-fun res!1955355 () Bool)

(assert (=> b!4651862 (= res!1955355 (forall!11004 oldBucket!40 lambda!198591))))

(declare-fun e!2902226 () Bool)

(assert (=> b!4651862 (=> (not res!1955355) (not e!2902226))))

(assert (=> b!4651862 e!2902226))

(declare-fun lt!1815367 () Unit!117676)

(declare-fun Unit!117792 () Unit!117676)

(assert (=> b!4651862 (= lt!1815367 Unit!117792)))

(assert (=> b!4651863 (= e!2902225 (ListMap!4530 Nil!51868))))

(declare-fun lt!1815380 () Unit!117676)

(assert (=> b!4651863 (= lt!1815380 call!324991)))

(assert (=> b!4651863 call!324993))

(declare-fun lt!1815378 () Unit!117676)

(assert (=> b!4651863 (= lt!1815378 lt!1815380)))

(assert (=> b!4651863 call!324992))

(declare-fun lt!1815376 () Unit!117676)

(declare-fun Unit!117793 () Unit!117676)

(assert (=> b!4651863 (= lt!1815376 Unit!117793)))

(declare-fun bm!324988 () Bool)

(assert (=> bm!324988 (= call!324991 (lemmaContainsAllItsOwnKeys!590 (ListMap!4530 Nil!51868)))))

(declare-fun b!4651864 () Bool)

(assert (=> b!4651864 (= e!2902226 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198591))))

(assert (= (and d!1474467 c!796168) b!4651863))

(assert (= (and d!1474467 (not c!796168)) b!4651862))

(assert (= (and b!4651862 res!1955355) b!4651864))

(assert (= (or b!4651863 b!4651862) bm!324988))

(assert (= (or b!4651863 b!4651862) bm!324986))

(assert (= (or b!4651863 b!4651862) bm!324987))

(assert (= (and d!1474467 res!1955356) b!4651860))

(assert (= (and b!4651860 res!1955354) b!4651861))

(declare-fun m!5527535 () Bool)

(assert (=> b!4651864 m!5527535))

(declare-fun m!5527537 () Bool)

(assert (=> b!4651861 m!5527537))

(declare-fun m!5527539 () Bool)

(assert (=> b!4651860 m!5527539))

(assert (=> bm!324988 m!5527259))

(declare-fun m!5527541 () Bool)

(assert (=> bm!324986 m!5527541))

(declare-fun m!5527543 () Bool)

(assert (=> d!1474467 m!5527543))

(assert (=> d!1474467 m!5527017))

(declare-fun m!5527545 () Bool)

(assert (=> bm!324987 m!5527545))

(declare-fun m!5527547 () Bool)

(assert (=> b!4651862 m!5527547))

(declare-fun m!5527549 () Bool)

(assert (=> b!4651862 m!5527549))

(assert (=> b!4651862 m!5527549))

(declare-fun m!5527551 () Bool)

(assert (=> b!4651862 m!5527551))

(declare-fun m!5527553 () Bool)

(assert (=> b!4651862 m!5527553))

(assert (=> b!4651862 m!5527535))

(declare-fun m!5527555 () Bool)

(assert (=> b!4651862 m!5527555))

(declare-fun m!5527557 () Bool)

(assert (=> b!4651862 m!5527557))

(assert (=> b!4651862 m!5527555))

(assert (=> b!4651862 m!5527551))

(declare-fun m!5527559 () Bool)

(assert (=> b!4651862 m!5527559))

(declare-fun m!5527561 () Bool)

(assert (=> b!4651862 m!5527561))

(declare-fun m!5527563 () Bool)

(assert (=> b!4651862 m!5527563))

(assert (=> b!4651590 d!1474467))

(declare-fun d!1474469 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8985 (List!51992) (InoxSet tuple2!52966))

(assert (=> d!1474469 (= (eq!909 (addToMapMapFromBucket!1087 (Cons!51868 lt!1814956 lt!1814957) (ListMap!4530 Nil!51868)) (+!1974 lt!1814959 lt!1814956)) (= (content!8985 (toList!5191 (addToMapMapFromBucket!1087 (Cons!51868 lt!1814956 lt!1814957) (ListMap!4530 Nil!51868)))) (content!8985 (toList!5191 (+!1974 lt!1814959 lt!1814956)))))))

(declare-fun bs!1059500 () Bool)

(assert (= bs!1059500 d!1474469))

(declare-fun m!5527565 () Bool)

(assert (=> bs!1059500 m!5527565))

(declare-fun m!5527567 () Bool)

(assert (=> bs!1059500 m!5527567))

(assert (=> b!4651590 d!1474469))

(declare-fun d!1474471 () Bool)

(assert (=> d!1474471 (= (eq!909 (+!1974 lt!1814959 (h!58004 oldBucket!40)) (addToMapMapFromBucket!1087 oldBucket!40 (ListMap!4530 Nil!51868))) (= (content!8985 (toList!5191 (+!1974 lt!1814959 (h!58004 oldBucket!40)))) (content!8985 (toList!5191 (addToMapMapFromBucket!1087 oldBucket!40 (ListMap!4530 Nil!51868))))))))

(declare-fun bs!1059501 () Bool)

(assert (= bs!1059501 d!1474471))

(declare-fun m!5527569 () Bool)

(assert (=> bs!1059501 m!5527569))

(declare-fun m!5527571 () Bool)

(assert (=> bs!1059501 m!5527571))

(assert (=> b!4651590 d!1474471))

(declare-fun d!1474473 () Bool)

(declare-fun e!2902228 () Bool)

(assert (=> d!1474473 e!2902228))

(declare-fun res!1955357 () Bool)

(assert (=> d!1474473 (=> (not res!1955357) (not e!2902228))))

(declare-fun lt!1815384 () ListMap!4529)

(assert (=> d!1474473 (= res!1955357 (contains!15011 lt!1815384 (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun lt!1815385 () List!51992)

(assert (=> d!1474473 (= lt!1815384 (ListMap!4530 lt!1815385))))

(declare-fun lt!1815382 () Unit!117676)

(declare-fun lt!1815383 () Unit!117676)

(assert (=> d!1474473 (= lt!1815382 lt!1815383)))

(assert (=> d!1474473 (= (getValueByKey!1600 lt!1815385 (_1!29777 (h!58004 oldBucket!40))) (Some!11811 (_2!29777 (h!58004 oldBucket!40))))))

(assert (=> d!1474473 (= lt!1815383 (lemmaContainsTupThenGetReturnValue!918 lt!1815385 (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))))))

(assert (=> d!1474473 (= lt!1815385 (insertNoDuplicatedKeys!426 (toList!5191 lt!1814959) (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))))))

(assert (=> d!1474473 (= (+!1974 lt!1814959 (h!58004 oldBucket!40)) lt!1815384)))

(declare-fun b!4651865 () Bool)

(declare-fun res!1955358 () Bool)

(assert (=> b!4651865 (=> (not res!1955358) (not e!2902228))))

(assert (=> b!4651865 (= res!1955358 (= (getValueByKey!1600 (toList!5191 lt!1815384) (_1!29777 (h!58004 oldBucket!40))) (Some!11811 (_2!29777 (h!58004 oldBucket!40)))))))

(declare-fun b!4651866 () Bool)

(assert (=> b!4651866 (= e!2902228 (contains!15015 (toList!5191 lt!1815384) (h!58004 oldBucket!40)))))

(assert (= (and d!1474473 res!1955357) b!4651865))

(assert (= (and b!4651865 res!1955358) b!4651866))

(declare-fun m!5527573 () Bool)

(assert (=> d!1474473 m!5527573))

(declare-fun m!5527575 () Bool)

(assert (=> d!1474473 m!5527575))

(declare-fun m!5527577 () Bool)

(assert (=> d!1474473 m!5527577))

(declare-fun m!5527579 () Bool)

(assert (=> d!1474473 m!5527579))

(declare-fun m!5527581 () Bool)

(assert (=> b!4651865 m!5527581))

(declare-fun m!5527583 () Bool)

(assert (=> b!4651866 m!5527583))

(assert (=> b!4651590 d!1474473))

(declare-fun tp!1343214 () Bool)

(declare-fun e!2902231 () Bool)

(declare-fun b!4651871 () Bool)

(assert (=> b!4651871 (= e!2902231 (and tp_is_empty!29813 tp_is_empty!29815 tp!1343214))))

(assert (=> b!4651597 (= tp!1343206 e!2902231)))

(assert (= (and b!4651597 ((_ is Cons!51868) (t!359100 newBucket!224))) b!4651871))

(declare-fun tp!1343215 () Bool)

(declare-fun b!4651872 () Bool)

(declare-fun e!2902232 () Bool)

(assert (=> b!4651872 (= e!2902232 (and tp_is_empty!29813 tp_is_empty!29815 tp!1343215))))

(assert (=> b!4651596 (= tp!1343207 e!2902232)))

(assert (= (and b!4651596 ((_ is Cons!51868) (t!359100 oldBucket!40))) b!4651872))

(declare-fun b_lambda!172999 () Bool)

(assert (= b_lambda!172997 (or b!4651587 b_lambda!172999)))

(declare-fun bs!1059502 () Bool)

(declare-fun d!1474475 () Bool)

(assert (= bs!1059502 (and d!1474475 b!4651587)))

(assert (=> bs!1059502 (= (dynLambda!21574 lambda!198470 (h!58005 lt!1814954)) (noDuplicateKeys!1630 (_2!29778 (h!58005 lt!1814954))))))

(declare-fun m!5527585 () Bool)

(assert (=> bs!1059502 m!5527585))

(assert (=> b!4651828 d!1474475))

(check-sat tp_is_empty!29813 (not b!4651814) (not b!4651872) (not b!4651822) (not b!4651837) (not d!1474467) (not b!4651771) (not bm!324987) (not b!4651815) (not bs!1059502) (not d!1474457) (not b!4651670) (not b!4651865) (not b!4651812) (not d!1474431) (not bm!324975) (not b!4651829) (not b!4651836) (not b!4651817) (not bm!324986) (not d!1474459) (not b!4651862) (not bm!324981) (not b!4651652) (not b!4651765) (not b!4651811) (not d!1474469) (not b!4651835) (not bm!324982) (not b!4651847) (not b!4651843) (not b!4651838) (not b!4651668) (not bm!324983) (not d!1474389) (not bm!324976) (not b!4651767) (not b!4651842) (not b!4651859) (not b!4651861) (not b!4651864) (not d!1474463) (not b!4651866) (not bm!324988) (not d!1474391) (not b!4651851) (not d!1474471) (not d!1474371) (not d!1474441) (not d!1474429) (not bm!324973) (not d!1474453) (not b!4651846) (not d!1474461) (not b!4651858) (not bm!324980) (not d!1474455) (not b!4651816) (not b!4651774) (not d!1474425) (not b!4651834) (not b!4651772) tp_is_empty!29815 (not d!1474365) (not bm!324971) (not b!4651871) (not b!4651853) (not b!4651840) (not bm!324984) (not b!4651770) (not d!1474385) (not d!1474473) (not b!4651860) (not b!4651849) (not bm!324974) (not d!1474451) (not d!1474445) (not bm!324979) (not b!4651764) (not b!4651850) (not b!4651844) (not bm!324985) (not b_lambda!172999) (not bm!324972) (not b!4651813) (not b!4651643) (not b!4651763))
(check-sat)
(get-model)

(declare-fun d!1474477 () Bool)

(declare-fun res!1955363 () Bool)

(declare-fun e!2902237 () Bool)

(assert (=> d!1474477 (=> res!1955363 e!2902237)))

(assert (=> d!1474477 (= res!1955363 ((_ is Nil!51868) (toList!5191 lt!1814962)))))

(assert (=> d!1474477 (= (forall!11004 (toList!5191 lt!1814962) (ite c!796165 lambda!198580 lambda!198582)) e!2902237)))

(declare-fun b!4651877 () Bool)

(declare-fun e!2902238 () Bool)

(assert (=> b!4651877 (= e!2902237 e!2902238)))

(declare-fun res!1955364 () Bool)

(assert (=> b!4651877 (=> (not res!1955364) (not e!2902238))))

(declare-fun dynLambda!21575 (Int tuple2!52966) Bool)

(assert (=> b!4651877 (= res!1955364 (dynLambda!21575 (ite c!796165 lambda!198580 lambda!198582) (h!58004 (toList!5191 lt!1814962))))))

(declare-fun b!4651878 () Bool)

(assert (=> b!4651878 (= e!2902238 (forall!11004 (t!359100 (toList!5191 lt!1814962)) (ite c!796165 lambda!198580 lambda!198582)))))

(assert (= (and d!1474477 (not res!1955363)) b!4651877))

(assert (= (and b!4651877 res!1955364) b!4651878))

(declare-fun b_lambda!173001 () Bool)

(assert (=> (not b_lambda!173001) (not b!4651877)))

(declare-fun m!5527587 () Bool)

(assert (=> b!4651877 m!5527587))

(declare-fun m!5527589 () Bool)

(assert (=> b!4651878 m!5527589))

(assert (=> bm!324981 d!1474477))

(declare-fun d!1474479 () Bool)

(declare-fun res!1955365 () Bool)

(declare-fun e!2902239 () Bool)

(assert (=> d!1474479 (=> res!1955365 e!2902239)))

(assert (=> d!1474479 (= res!1955365 ((_ is Nil!51868) (ite c!796167 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 (Cons!51868 lt!1814956 lt!1814957)))))))

(assert (=> d!1474479 (= (forall!11004 (ite c!796167 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 (Cons!51868 lt!1814956 lt!1814957))) (ite c!796167 lambda!198585 lambda!198587)) e!2902239)))

(declare-fun b!4651879 () Bool)

(declare-fun e!2902240 () Bool)

(assert (=> b!4651879 (= e!2902239 e!2902240)))

(declare-fun res!1955366 () Bool)

(assert (=> b!4651879 (=> (not res!1955366) (not e!2902240))))

(assert (=> b!4651879 (= res!1955366 (dynLambda!21575 (ite c!796167 lambda!198585 lambda!198587) (h!58004 (ite c!796167 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 (Cons!51868 lt!1814956 lt!1814957))))))))

(declare-fun b!4651880 () Bool)

(assert (=> b!4651880 (= e!2902240 (forall!11004 (t!359100 (ite c!796167 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 (Cons!51868 lt!1814956 lt!1814957)))) (ite c!796167 lambda!198585 lambda!198587)))))

(assert (= (and d!1474479 (not res!1955365)) b!4651879))

(assert (= (and b!4651879 res!1955366) b!4651880))

(declare-fun b_lambda!173003 () Bool)

(assert (=> (not b_lambda!173003) (not b!4651879)))

(declare-fun m!5527591 () Bool)

(assert (=> b!4651879 m!5527591))

(declare-fun m!5527593 () Bool)

(assert (=> b!4651880 m!5527593))

(assert (=> bm!324983 d!1474479))

(declare-fun d!1474481 () Bool)

(declare-fun res!1955367 () Bool)

(declare-fun e!2902241 () Bool)

(assert (=> d!1474481 (=> res!1955367 e!2902241)))

(assert (=> d!1474481 (= res!1955367 ((_ is Nil!51868) (toList!5191 (ListMap!4530 Nil!51868))))))

(assert (=> d!1474481 (= (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198591) e!2902241)))

(declare-fun b!4651881 () Bool)

(declare-fun e!2902242 () Bool)

(assert (=> b!4651881 (= e!2902241 e!2902242)))

(declare-fun res!1955368 () Bool)

(assert (=> b!4651881 (=> (not res!1955368) (not e!2902242))))

(assert (=> b!4651881 (= res!1955368 (dynLambda!21575 lambda!198591 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))))))

(declare-fun b!4651882 () Bool)

(assert (=> b!4651882 (= e!2902242 (forall!11004 (t!359100 (toList!5191 (ListMap!4530 Nil!51868))) lambda!198591))))

(assert (= (and d!1474481 (not res!1955367)) b!4651881))

(assert (= (and b!4651881 res!1955368) b!4651882))

(declare-fun b_lambda!173005 () Bool)

(assert (=> (not b_lambda!173005) (not b!4651881)))

(declare-fun m!5527595 () Bool)

(assert (=> b!4651881 m!5527595))

(declare-fun m!5527597 () Bool)

(assert (=> b!4651882 m!5527597))

(assert (=> b!4651864 d!1474481))

(declare-fun d!1474483 () Bool)

(declare-fun res!1955369 () Bool)

(declare-fun e!2902243 () Bool)

(assert (=> d!1474483 (=> res!1955369 e!2902243)))

(assert (=> d!1474483 (= res!1955369 (and ((_ is Cons!51868) (t!359100 oldBucket!40)) (= (_1!29777 (h!58004 (t!359100 oldBucket!40))) (_1!29777 (h!58004 oldBucket!40)))))))

(assert (=> d!1474483 (= (containsKey!2702 (t!359100 oldBucket!40) (_1!29777 (h!58004 oldBucket!40))) e!2902243)))

(declare-fun b!4651883 () Bool)

(declare-fun e!2902244 () Bool)

(assert (=> b!4651883 (= e!2902243 e!2902244)))

(declare-fun res!1955370 () Bool)

(assert (=> b!4651883 (=> (not res!1955370) (not e!2902244))))

(assert (=> b!4651883 (= res!1955370 ((_ is Cons!51868) (t!359100 oldBucket!40)))))

(declare-fun b!4651884 () Bool)

(assert (=> b!4651884 (= e!2902244 (containsKey!2702 (t!359100 (t!359100 oldBucket!40)) (_1!29777 (h!58004 oldBucket!40))))))

(assert (= (and d!1474483 (not res!1955369)) b!4651883))

(assert (= (and b!4651883 res!1955370) b!4651884))

(declare-fun m!5527599 () Bool)

(assert (=> b!4651884 m!5527599))

(assert (=> b!4651836 d!1474483))

(declare-fun d!1474485 () Bool)

(declare-fun lt!1815388 () Bool)

(declare-fun content!8986 (List!51995) (InoxSet K!13225))

(assert (=> d!1474485 (= lt!1815388 (select (content!8986 (keys!18366 lt!1814955)) key!4968))))

(declare-fun e!2902249 () Bool)

(assert (=> d!1474485 (= lt!1815388 e!2902249)))

(declare-fun res!1955376 () Bool)

(assert (=> d!1474485 (=> (not res!1955376) (not e!2902249))))

(assert (=> d!1474485 (= res!1955376 ((_ is Cons!51871) (keys!18366 lt!1814955)))))

(assert (=> d!1474485 (= (contains!15013 (keys!18366 lt!1814955) key!4968) lt!1815388)))

(declare-fun b!4651889 () Bool)

(declare-fun e!2902250 () Bool)

(assert (=> b!4651889 (= e!2902249 e!2902250)))

(declare-fun res!1955375 () Bool)

(assert (=> b!4651889 (=> res!1955375 e!2902250)))

(assert (=> b!4651889 (= res!1955375 (= (h!58009 (keys!18366 lt!1814955)) key!4968))))

(declare-fun b!4651890 () Bool)

(assert (=> b!4651890 (= e!2902250 (contains!15013 (t!359105 (keys!18366 lt!1814955)) key!4968))))

(assert (= (and d!1474485 res!1955376) b!4651889))

(assert (= (and b!4651889 (not res!1955375)) b!4651890))

(assert (=> d!1474485 m!5527389))

(declare-fun m!5527601 () Bool)

(assert (=> d!1474485 m!5527601))

(declare-fun m!5527603 () Bool)

(assert (=> d!1474485 m!5527603))

(declare-fun m!5527605 () Bool)

(assert (=> b!4651890 m!5527605))

(assert (=> b!4651816 d!1474485))

(declare-fun b!4651904 () Bool)

(assert (=> b!4651904 true))

(declare-fun d!1474487 () Bool)

(declare-fun e!2902259 () Bool)

(assert (=> d!1474487 e!2902259))

(declare-fun res!1955389 () Bool)

(assert (=> d!1474487 (=> (not res!1955389) (not e!2902259))))

(declare-fun lt!1815391 () List!51995)

(declare-fun noDuplicate!831 (List!51995) Bool)

(assert (=> d!1474487 (= res!1955389 (noDuplicate!831 lt!1815391))))

(assert (=> d!1474487 (= lt!1815391 (getKeysList!741 (toList!5191 lt!1814955)))))

(assert (=> d!1474487 (= (keys!18366 lt!1814955) lt!1815391)))

(declare-fun b!4651903 () Bool)

(declare-fun res!1955390 () Bool)

(assert (=> b!4651903 (=> (not res!1955390) (not e!2902259))))

(declare-fun length!518 (List!51995) Int)

(declare-fun length!519 (List!51992) Int)

(assert (=> b!4651903 (= res!1955390 (= (length!518 lt!1815391) (length!519 (toList!5191 lt!1814955))))))

(declare-fun res!1955391 () Bool)

(assert (=> b!4651904 (=> (not res!1955391) (not e!2902259))))

(declare-fun lambda!198597 () Int)

(declare-fun forall!11005 (List!51995 Int) Bool)

(assert (=> b!4651904 (= res!1955391 (forall!11005 lt!1815391 lambda!198597))))

(declare-fun b!4651905 () Bool)

(declare-fun lambda!198598 () Int)

(declare-fun map!11459 (List!51992 Int) List!51995)

(assert (=> b!4651905 (= e!2902259 (= (content!8986 lt!1815391) (content!8986 (map!11459 (toList!5191 lt!1814955) lambda!198598))))))

(assert (= (and d!1474487 res!1955389) b!4651903))

(assert (= (and b!4651903 res!1955390) b!4651904))

(assert (= (and b!4651904 res!1955391) b!4651905))

(declare-fun m!5527611 () Bool)

(assert (=> d!1474487 m!5527611))

(assert (=> d!1474487 m!5527405))

(declare-fun m!5527613 () Bool)

(assert (=> b!4651903 m!5527613))

(declare-fun m!5527615 () Bool)

(assert (=> b!4651903 m!5527615))

(declare-fun m!5527617 () Bool)

(assert (=> b!4651904 m!5527617))

(declare-fun m!5527619 () Bool)

(assert (=> b!4651905 m!5527619))

(declare-fun m!5527623 () Bool)

(assert (=> b!4651905 m!5527623))

(assert (=> b!4651905 m!5527623))

(declare-fun m!5527625 () Bool)

(assert (=> b!4651905 m!5527625))

(assert (=> b!4651816 d!1474487))

(declare-fun d!1474493 () Bool)

(declare-fun res!1955394 () Bool)

(declare-fun e!2902262 () Bool)

(assert (=> d!1474493 (=> res!1955394 e!2902262)))

(assert (=> d!1474493 (= res!1955394 ((_ is Nil!51868) oldBucket!40))))

(assert (=> d!1474493 (= (forall!11004 oldBucket!40 lambda!198592) e!2902262)))

(declare-fun b!4651910 () Bool)

(declare-fun e!2902263 () Bool)

(assert (=> b!4651910 (= e!2902262 e!2902263)))

(declare-fun res!1955395 () Bool)

(assert (=> b!4651910 (=> (not res!1955395) (not e!2902263))))

(assert (=> b!4651910 (= res!1955395 (dynLambda!21575 lambda!198592 (h!58004 oldBucket!40)))))

(declare-fun b!4651911 () Bool)

(assert (=> b!4651911 (= e!2902263 (forall!11004 (t!359100 oldBucket!40) lambda!198592))))

(assert (= (and d!1474493 (not res!1955394)) b!4651910))

(assert (= (and b!4651910 res!1955395) b!4651911))

(declare-fun b_lambda!173011 () Bool)

(assert (=> (not b_lambda!173011) (not b!4651910)))

(declare-fun m!5527629 () Bool)

(assert (=> b!4651910 m!5527629))

(declare-fun m!5527631 () Bool)

(assert (=> b!4651911 m!5527631))

(assert (=> d!1474467 d!1474493))

(assert (=> d!1474467 d!1474449))

(declare-fun d!1474497 () Bool)

(declare-fun noDuplicatedKeys!345 (List!51992) Bool)

(assert (=> d!1474497 (= (invariantList!1290 (toList!5191 lt!1815328)) (noDuplicatedKeys!345 (toList!5191 lt!1815328)))))

(declare-fun bs!1059503 () Bool)

(assert (= bs!1059503 d!1474497))

(declare-fun m!5527637 () Bool)

(assert (=> bs!1059503 m!5527637))

(assert (=> b!4651850 d!1474497))

(declare-fun d!1474501 () Bool)

(declare-fun lt!1815393 () Bool)

(assert (=> d!1474501 (= lt!1815393 (select (content!8986 e!2902194) key!4968))))

(declare-fun e!2902266 () Bool)

(assert (=> d!1474501 (= lt!1815393 e!2902266)))

(declare-fun res!1955397 () Bool)

(assert (=> d!1474501 (=> (not res!1955397) (not e!2902266))))

(assert (=> d!1474501 (= res!1955397 ((_ is Cons!51871) e!2902194))))

(assert (=> d!1474501 (= (contains!15013 e!2902194 key!4968) lt!1815393)))

(declare-fun b!4651916 () Bool)

(declare-fun e!2902267 () Bool)

(assert (=> b!4651916 (= e!2902266 e!2902267)))

(declare-fun res!1955396 () Bool)

(assert (=> b!4651916 (=> res!1955396 e!2902267)))

(assert (=> b!4651916 (= res!1955396 (= (h!58009 e!2902194) key!4968))))

(declare-fun b!4651917 () Bool)

(assert (=> b!4651917 (= e!2902267 (contains!15013 (t!359105 e!2902194) key!4968))))

(assert (= (and d!1474501 res!1955397) b!4651916))

(assert (= (and b!4651916 (not res!1955396)) b!4651917))

(declare-fun m!5527639 () Bool)

(assert (=> d!1474501 m!5527639))

(declare-fun m!5527641 () Bool)

(assert (=> d!1474501 m!5527641))

(declare-fun m!5527643 () Bool)

(assert (=> b!4651917 m!5527643))

(assert (=> bm!324979 d!1474501))

(declare-fun bs!1059506 () Bool)

(declare-fun d!1474503 () Bool)

(assert (= bs!1059506 (and d!1474503 b!4651772)))

(declare-fun lambda!198603 () Int)

(assert (=> bs!1059506 (= (= lt!1815313 lt!1815244) (= lambda!198603 lambda!198569))))

(declare-fun bs!1059507 () Bool)

(assert (= bs!1059507 (and d!1474503 d!1474461)))

(assert (=> bs!1059507 (= (= lt!1815313 lt!1815328) (= lambda!198603 lambda!198588))))

(declare-fun bs!1059508 () Bool)

(assert (= bs!1059508 (and d!1474503 b!4651852)))

(assert (=> bs!1059508 (= (= lt!1815313 (ListMap!4530 Nil!51868)) (= lambda!198603 lambda!198585))))

(declare-fun bs!1059509 () Bool)

(assert (= bs!1059509 (and d!1474503 b!4651851)))

(assert (=> bs!1059509 (= (= lt!1815313 (ListMap!4530 Nil!51868)) (= lambda!198603 lambda!198586))))

(declare-fun bs!1059510 () Bool)

(assert (= bs!1059510 (and d!1474503 b!4651845)))

(assert (=> bs!1059510 (= (= lt!1815313 lt!1814962) (= lambda!198603 lambda!198580))))

(declare-fun bs!1059511 () Bool)

(assert (= bs!1059511 (and d!1474503 d!1474455)))

(assert (=> bs!1059511 (= (= lt!1815313 lt!1815303) (= lambda!198603 lambda!198583))))

(declare-fun bs!1059512 () Bool)

(assert (= bs!1059512 (and d!1474503 b!4651862)))

(assert (=> bs!1059512 (= (= lt!1815313 (ListMap!4530 Nil!51868)) (= lambda!198603 lambda!198590))))

(declare-fun bs!1059513 () Bool)

(assert (= bs!1059513 (and d!1474503 d!1474445)))

(assert (=> bs!1059513 (not (= lambda!198603 lambda!198577))))

(assert (=> bs!1059509 (= (= lt!1815313 lt!1815338) (= lambda!198603 lambda!198587))))

(declare-fun bs!1059515 () Bool)

(assert (= bs!1059515 (and d!1474503 b!4651765)))

(assert (=> bs!1059515 (= (= lt!1815313 lt!1815223) (= lambda!198603 lambda!198564))))

(declare-fun bs!1059516 () Bool)

(assert (= bs!1059516 (and d!1474503 b!4651844)))

(assert (=> bs!1059516 (= lambda!198603 lambda!198582)))

(declare-fun bs!1059517 () Bool)

(assert (= bs!1059517 (and d!1474503 d!1474391)))

(assert (=> bs!1059517 (= (= lt!1815313 lt!1815213) (= lambda!198603 lambda!198566))))

(declare-fun bs!1059518 () Bool)

(assert (= bs!1059518 (and d!1474503 d!1474365)))

(assert (=> bs!1059518 (not (= lambda!198603 lambda!198476))))

(declare-fun bs!1059519 () Bool)

(assert (= bs!1059519 (and d!1474503 b!4651766)))

(assert (=> bs!1059519 (= (= lt!1815313 (ListMap!4530 Nil!51868)) (= lambda!198603 lambda!198562))))

(declare-fun bs!1059520 () Bool)

(assert (= bs!1059520 (and d!1474503 d!1474467)))

(assert (=> bs!1059520 (= (= lt!1815313 lt!1815361) (= lambda!198603 lambda!198592))))

(assert (=> bs!1059515 (= (= lt!1815313 (ListMap!4530 Nil!51868)) (= lambda!198603 lambda!198563))))

(declare-fun bs!1059521 () Bool)

(assert (= bs!1059521 (and d!1474503 b!4651773)))

(assert (=> bs!1059521 (= (= lt!1815313 (ListMap!4530 Nil!51868)) (= lambda!198603 lambda!198567))))

(declare-fun bs!1059522 () Bool)

(assert (= bs!1059522 (and d!1474503 b!4651863)))

(assert (=> bs!1059522 (= (= lt!1815313 (ListMap!4530 Nil!51868)) (= lambda!198603 lambda!198589))))

(assert (=> bs!1059506 (= (= lt!1815313 (ListMap!4530 Nil!51868)) (= lambda!198603 lambda!198568))))

(assert (=> bs!1059516 (= (= lt!1815313 lt!1814962) (= lambda!198603 lambda!198581))))

(declare-fun bs!1059523 () Bool)

(assert (= bs!1059523 (and d!1474503 d!1474425)))

(assert (=> bs!1059523 (= (= lt!1815313 lt!1815234) (= lambda!198603 lambda!198570))))

(assert (=> bs!1059512 (= (= lt!1815313 lt!1815371) (= lambda!198603 lambda!198591))))

(assert (=> d!1474503 true))

(assert (=> d!1474503 (forall!11004 (toList!5191 lt!1814962) lambda!198603)))

(declare-fun lt!1815399 () Unit!117676)

(declare-fun choose!31945 (ListMap!4529 ListMap!4529 K!13225 V!13471) Unit!117676)

(assert (=> d!1474503 (= lt!1815399 (choose!31945 lt!1814962 lt!1815313 (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))))))

(assert (=> d!1474503 (forall!11004 (toList!5191 (+!1974 lt!1814962 (tuple2!52967 (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))))) lambda!198603)))

(assert (=> d!1474503 (= (addForallContainsKeyThenBeforeAdding!589 lt!1814962 lt!1815313 (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))) lt!1815399)))

(declare-fun bs!1059524 () Bool)

(assert (= bs!1059524 d!1474503))

(declare-fun m!5527661 () Bool)

(assert (=> bs!1059524 m!5527661))

(declare-fun m!5527663 () Bool)

(assert (=> bs!1059524 m!5527663))

(declare-fun m!5527665 () Bool)

(assert (=> bs!1059524 m!5527665))

(declare-fun m!5527667 () Bool)

(assert (=> bs!1059524 m!5527667))

(assert (=> b!4651844 d!1474503))

(declare-fun d!1474515 () Bool)

(declare-fun res!1955398 () Bool)

(declare-fun e!2902272 () Bool)

(assert (=> d!1474515 (=> res!1955398 e!2902272)))

(assert (=> d!1474515 (= res!1955398 ((_ is Nil!51868) (toList!5191 lt!1814962)))))

(assert (=> d!1474515 (= (forall!11004 (toList!5191 lt!1814962) lambda!198582) e!2902272)))

(declare-fun b!4651927 () Bool)

(declare-fun e!2902273 () Bool)

(assert (=> b!4651927 (= e!2902272 e!2902273)))

(declare-fun res!1955399 () Bool)

(assert (=> b!4651927 (=> (not res!1955399) (not e!2902273))))

(assert (=> b!4651927 (= res!1955399 (dynLambda!21575 lambda!198582 (h!58004 (toList!5191 lt!1814962))))))

(declare-fun b!4651928 () Bool)

(assert (=> b!4651928 (= e!2902273 (forall!11004 (t!359100 (toList!5191 lt!1814962)) lambda!198582))))

(assert (= (and d!1474515 (not res!1955398)) b!4651927))

(assert (= (and b!4651927 res!1955399) b!4651928))

(declare-fun b_lambda!173013 () Bool)

(assert (=> (not b_lambda!173013) (not b!4651927)))

(declare-fun m!5527669 () Bool)

(assert (=> b!4651927 m!5527669))

(declare-fun m!5527671 () Bool)

(assert (=> b!4651928 m!5527671))

(assert (=> b!4651844 d!1474515))

(declare-fun d!1474517 () Bool)

(declare-fun res!1955400 () Bool)

(declare-fun e!2902274 () Bool)

(assert (=> d!1474517 (=> res!1955400 e!2902274)))

(assert (=> d!1474517 (= res!1955400 ((_ is Nil!51868) (toList!5191 lt!1815308)))))

(assert (=> d!1474517 (= (forall!11004 (toList!5191 lt!1815308) lambda!198582) e!2902274)))

(declare-fun b!4651929 () Bool)

(declare-fun e!2902275 () Bool)

(assert (=> b!4651929 (= e!2902274 e!2902275)))

(declare-fun res!1955401 () Bool)

(assert (=> b!4651929 (=> (not res!1955401) (not e!2902275))))

(assert (=> b!4651929 (= res!1955401 (dynLambda!21575 lambda!198582 (h!58004 (toList!5191 lt!1815308))))))

(declare-fun b!4651930 () Bool)

(assert (=> b!4651930 (= e!2902275 (forall!11004 (t!359100 (toList!5191 lt!1815308)) lambda!198582))))

(assert (= (and d!1474517 (not res!1955400)) b!4651929))

(assert (= (and b!4651929 res!1955401) b!4651930))

(declare-fun b_lambda!173015 () Bool)

(assert (=> (not b_lambda!173015) (not b!4651929)))

(declare-fun m!5527673 () Bool)

(assert (=> b!4651929 m!5527673))

(declare-fun m!5527675 () Bool)

(assert (=> b!4651930 m!5527675))

(assert (=> b!4651844 d!1474517))

(declare-fun d!1474519 () Bool)

(declare-fun e!2902278 () Bool)

(assert (=> d!1474519 e!2902278))

(declare-fun res!1955402 () Bool)

(assert (=> d!1474519 (=> (not res!1955402) (not e!2902278))))

(declare-fun lt!1815402 () ListMap!4529)

(assert (=> d!1474519 (= res!1955402 (contains!15011 lt!1815402 (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun lt!1815403 () List!51992)

(assert (=> d!1474519 (= lt!1815402 (ListMap!4530 lt!1815403))))

(declare-fun lt!1815400 () Unit!117676)

(declare-fun lt!1815401 () Unit!117676)

(assert (=> d!1474519 (= lt!1815400 lt!1815401)))

(assert (=> d!1474519 (= (getValueByKey!1600 lt!1815403 (_1!29777 (h!58004 oldBucket!40))) (Some!11811 (_2!29777 (h!58004 oldBucket!40))))))

(assert (=> d!1474519 (= lt!1815401 (lemmaContainsTupThenGetReturnValue!918 lt!1815403 (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))))))

(assert (=> d!1474519 (= lt!1815403 (insertNoDuplicatedKeys!426 (toList!5191 lt!1814962) (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))))))

(assert (=> d!1474519 (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815402)))

(declare-fun b!4651935 () Bool)

(declare-fun res!1955403 () Bool)

(assert (=> b!4651935 (=> (not res!1955403) (not e!2902278))))

(assert (=> b!4651935 (= res!1955403 (= (getValueByKey!1600 (toList!5191 lt!1815402) (_1!29777 (h!58004 oldBucket!40))) (Some!11811 (_2!29777 (h!58004 oldBucket!40)))))))

(declare-fun b!4651936 () Bool)

(assert (=> b!4651936 (= e!2902278 (contains!15015 (toList!5191 lt!1815402) (h!58004 oldBucket!40)))))

(assert (= (and d!1474519 res!1955402) b!4651935))

(assert (= (and b!4651935 res!1955403) b!4651936))

(declare-fun m!5527677 () Bool)

(assert (=> d!1474519 m!5527677))

(declare-fun m!5527679 () Bool)

(assert (=> d!1474519 m!5527679))

(declare-fun m!5527681 () Bool)

(assert (=> d!1474519 m!5527681))

(declare-fun m!5527683 () Bool)

(assert (=> d!1474519 m!5527683))

(declare-fun m!5527685 () Bool)

(assert (=> b!4651935 m!5527685))

(declare-fun m!5527687 () Bool)

(assert (=> b!4651936 m!5527687))

(assert (=> b!4651844 d!1474519))

(declare-fun b!4651941 () Bool)

(declare-fun e!2902282 () Unit!117676)

(declare-fun Unit!117794 () Unit!117676)

(assert (=> b!4651941 (= e!2902282 Unit!117794)))

(declare-fun b!4651942 () Bool)

(declare-fun e!2902281 () Unit!117676)

(assert (=> b!4651942 (= e!2902281 e!2902282)))

(declare-fun c!796180 () Bool)

(declare-fun call!324994 () Bool)

(assert (=> b!4651942 (= c!796180 call!324994)))

(declare-fun b!4651943 () Bool)

(declare-fun lt!1815407 () Unit!117676)

(assert (=> b!4651943 (= e!2902281 lt!1815407)))

(declare-fun lt!1815408 () Unit!117676)

(assert (=> b!4651943 (= lt!1815408 (lemmaContainsKeyImpliesGetValueByKeyDefined!1502 (toList!5191 lt!1815308) (_1!29777 (h!58004 oldBucket!40))))))

(assert (=> b!4651943 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815308) (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun lt!1815409 () Unit!117676)

(assert (=> b!4651943 (= lt!1815409 lt!1815408)))

(assert (=> b!4651943 (= lt!1815407 (lemmaInListThenGetKeysListContains!736 (toList!5191 lt!1815308) (_1!29777 (h!58004 oldBucket!40))))))

(assert (=> b!4651943 call!324994))

(declare-fun b!4651944 () Bool)

(declare-fun e!2902285 () List!51995)

(assert (=> b!4651944 (= e!2902285 (keys!18366 lt!1815308))))

(declare-fun b!4651945 () Bool)

(assert (=> b!4651945 (= e!2902285 (getKeysList!741 (toList!5191 lt!1815308)))))

(declare-fun d!1474521 () Bool)

(declare-fun e!2902286 () Bool)

(assert (=> d!1474521 e!2902286))

(declare-fun res!1955406 () Bool)

(assert (=> d!1474521 (=> res!1955406 e!2902286)))

(declare-fun e!2902284 () Bool)

(assert (=> d!1474521 (= res!1955406 e!2902284)))

(declare-fun res!1955404 () Bool)

(assert (=> d!1474521 (=> (not res!1955404) (not e!2902284))))

(declare-fun lt!1815410 () Bool)

(assert (=> d!1474521 (= res!1955404 (not lt!1815410))))

(declare-fun lt!1815405 () Bool)

(assert (=> d!1474521 (= lt!1815410 lt!1815405)))

(declare-fun lt!1815411 () Unit!117676)

(assert (=> d!1474521 (= lt!1815411 e!2902281)))

(declare-fun c!796179 () Bool)

(assert (=> d!1474521 (= c!796179 lt!1815405)))

(assert (=> d!1474521 (= lt!1815405 (containsKey!2706 (toList!5191 lt!1815308) (_1!29777 (h!58004 oldBucket!40))))))

(assert (=> d!1474521 (= (contains!15011 lt!1815308 (_1!29777 (h!58004 oldBucket!40))) lt!1815410)))

(declare-fun b!4651946 () Bool)

(assert (=> b!4651946 (= e!2902284 (not (contains!15013 (keys!18366 lt!1815308) (_1!29777 (h!58004 oldBucket!40)))))))

(declare-fun b!4651947 () Bool)

(declare-fun e!2902283 () Bool)

(assert (=> b!4651947 (= e!2902286 e!2902283)))

(declare-fun res!1955405 () Bool)

(assert (=> b!4651947 (=> (not res!1955405) (not e!2902283))))

(assert (=> b!4651947 (= res!1955405 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815308) (_1!29777 (h!58004 oldBucket!40)))))))

(declare-fun b!4651948 () Bool)

(assert (=> b!4651948 (= e!2902283 (contains!15013 (keys!18366 lt!1815308) (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun b!4651949 () Bool)

(assert (=> b!4651949 false))

(declare-fun lt!1815404 () Unit!117676)

(declare-fun lt!1815406 () Unit!117676)

(assert (=> b!4651949 (= lt!1815404 lt!1815406)))

(assert (=> b!4651949 (containsKey!2706 (toList!5191 lt!1815308) (_1!29777 (h!58004 oldBucket!40)))))

(assert (=> b!4651949 (= lt!1815406 (lemmaInGetKeysListThenContainsKey!740 (toList!5191 lt!1815308) (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun Unit!117795 () Unit!117676)

(assert (=> b!4651949 (= e!2902282 Unit!117795)))

(declare-fun bm!324989 () Bool)

(assert (=> bm!324989 (= call!324994 (contains!15013 e!2902285 (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun c!796181 () Bool)

(assert (=> bm!324989 (= c!796181 c!796179)))

(assert (= (and d!1474521 c!796179) b!4651943))

(assert (= (and d!1474521 (not c!796179)) b!4651942))

(assert (= (and b!4651942 c!796180) b!4651949))

(assert (= (and b!4651942 (not c!796180)) b!4651941))

(assert (= (or b!4651943 b!4651942) bm!324989))

(assert (= (and bm!324989 c!796181) b!4651945))

(assert (= (and bm!324989 (not c!796181)) b!4651944))

(assert (= (and d!1474521 res!1955404) b!4651946))

(assert (= (and d!1474521 (not res!1955406)) b!4651947))

(assert (= (and b!4651947 res!1955405) b!4651948))

(declare-fun m!5527689 () Bool)

(assert (=> d!1474521 m!5527689))

(declare-fun m!5527691 () Bool)

(assert (=> b!4651948 m!5527691))

(assert (=> b!4651948 m!5527691))

(declare-fun m!5527693 () Bool)

(assert (=> b!4651948 m!5527693))

(declare-fun m!5527695 () Bool)

(assert (=> b!4651947 m!5527695))

(assert (=> b!4651947 m!5527695))

(declare-fun m!5527697 () Bool)

(assert (=> b!4651947 m!5527697))

(declare-fun m!5527699 () Bool)

(assert (=> bm!324989 m!5527699))

(declare-fun m!5527701 () Bool)

(assert (=> b!4651943 m!5527701))

(assert (=> b!4651943 m!5527695))

(assert (=> b!4651943 m!5527695))

(assert (=> b!4651943 m!5527697))

(declare-fun m!5527703 () Bool)

(assert (=> b!4651943 m!5527703))

(assert (=> b!4651946 m!5527691))

(assert (=> b!4651946 m!5527691))

(assert (=> b!4651946 m!5527693))

(assert (=> b!4651944 m!5527691))

(assert (=> b!4651949 m!5527689))

(declare-fun m!5527705 () Bool)

(assert (=> b!4651949 m!5527705))

(declare-fun m!5527707 () Bool)

(assert (=> b!4651945 m!5527707))

(assert (=> b!4651844 d!1474521))

(declare-fun d!1474523 () Bool)

(assert (=> d!1474523 (dynLambda!21575 lambda!198582 (h!58004 oldBucket!40))))

(declare-fun lt!1815414 () Unit!117676)

(declare-fun choose!31949 (List!51992 Int tuple2!52966) Unit!117676)

(assert (=> d!1474523 (= lt!1815414 (choose!31949 (toList!5191 lt!1815308) lambda!198582 (h!58004 oldBucket!40)))))

(declare-fun e!2902291 () Bool)

(assert (=> d!1474523 e!2902291))

(declare-fun res!1955409 () Bool)

(assert (=> d!1474523 (=> (not res!1955409) (not e!2902291))))

(assert (=> d!1474523 (= res!1955409 (forall!11004 (toList!5191 lt!1815308) lambda!198582))))

(assert (=> d!1474523 (= (forallContained!3212 (toList!5191 lt!1815308) lambda!198582 (h!58004 oldBucket!40)) lt!1815414)))

(declare-fun b!4651956 () Bool)

(assert (=> b!4651956 (= e!2902291 (contains!15015 (toList!5191 lt!1815308) (h!58004 oldBucket!40)))))

(assert (= (and d!1474523 res!1955409) b!4651956))

(declare-fun b_lambda!173017 () Bool)

(assert (=> (not b_lambda!173017) (not d!1474523)))

(declare-fun m!5527711 () Bool)

(assert (=> d!1474523 m!5527711))

(declare-fun m!5527713 () Bool)

(assert (=> d!1474523 m!5527713))

(assert (=> d!1474523 m!5527461))

(declare-fun m!5527715 () Bool)

(assert (=> b!4651956 m!5527715))

(assert (=> b!4651844 d!1474523))

(declare-fun b!4651957 () Bool)

(declare-fun e!2902293 () Unit!117676)

(declare-fun Unit!117796 () Unit!117676)

(assert (=> b!4651957 (= e!2902293 Unit!117796)))

(declare-fun b!4651958 () Bool)

(declare-fun e!2902292 () Unit!117676)

(assert (=> b!4651958 (= e!2902292 e!2902293)))

(declare-fun c!796185 () Bool)

(declare-fun call!324995 () Bool)

(assert (=> b!4651958 (= c!796185 call!324995)))

(declare-fun b!4651959 () Bool)

(declare-fun lt!1815418 () Unit!117676)

(assert (=> b!4651959 (= e!2902292 lt!1815418)))

(declare-fun lt!1815419 () Unit!117676)

(assert (=> b!4651959 (= lt!1815419 (lemmaContainsKeyImpliesGetValueByKeyDefined!1502 (toList!5191 lt!1815313) (_1!29777 (h!58004 oldBucket!40))))))

(assert (=> b!4651959 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815313) (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun lt!1815420 () Unit!117676)

(assert (=> b!4651959 (= lt!1815420 lt!1815419)))

(assert (=> b!4651959 (= lt!1815418 (lemmaInListThenGetKeysListContains!736 (toList!5191 lt!1815313) (_1!29777 (h!58004 oldBucket!40))))))

(assert (=> b!4651959 call!324995))

(declare-fun b!4651960 () Bool)

(declare-fun e!2902296 () List!51995)

(assert (=> b!4651960 (= e!2902296 (keys!18366 lt!1815313))))

(declare-fun b!4651961 () Bool)

(assert (=> b!4651961 (= e!2902296 (getKeysList!741 (toList!5191 lt!1815313)))))

(declare-fun d!1474527 () Bool)

(declare-fun e!2902297 () Bool)

(assert (=> d!1474527 e!2902297))

(declare-fun res!1955412 () Bool)

(assert (=> d!1474527 (=> res!1955412 e!2902297)))

(declare-fun e!2902295 () Bool)

(assert (=> d!1474527 (= res!1955412 e!2902295)))

(declare-fun res!1955410 () Bool)

(assert (=> d!1474527 (=> (not res!1955410) (not e!2902295))))

(declare-fun lt!1815421 () Bool)

(assert (=> d!1474527 (= res!1955410 (not lt!1815421))))

(declare-fun lt!1815416 () Bool)

(assert (=> d!1474527 (= lt!1815421 lt!1815416)))

(declare-fun lt!1815422 () Unit!117676)

(assert (=> d!1474527 (= lt!1815422 e!2902292)))

(declare-fun c!796184 () Bool)

(assert (=> d!1474527 (= c!796184 lt!1815416)))

(assert (=> d!1474527 (= lt!1815416 (containsKey!2706 (toList!5191 lt!1815313) (_1!29777 (h!58004 oldBucket!40))))))

(assert (=> d!1474527 (= (contains!15011 lt!1815313 (_1!29777 (h!58004 oldBucket!40))) lt!1815421)))

(declare-fun b!4651962 () Bool)

(assert (=> b!4651962 (= e!2902295 (not (contains!15013 (keys!18366 lt!1815313) (_1!29777 (h!58004 oldBucket!40)))))))

(declare-fun b!4651963 () Bool)

(declare-fun e!2902294 () Bool)

(assert (=> b!4651963 (= e!2902297 e!2902294)))

(declare-fun res!1955411 () Bool)

(assert (=> b!4651963 (=> (not res!1955411) (not e!2902294))))

(assert (=> b!4651963 (= res!1955411 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815313) (_1!29777 (h!58004 oldBucket!40)))))))

(declare-fun b!4651964 () Bool)

(assert (=> b!4651964 (= e!2902294 (contains!15013 (keys!18366 lt!1815313) (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun b!4651965 () Bool)

(assert (=> b!4651965 false))

(declare-fun lt!1815415 () Unit!117676)

(declare-fun lt!1815417 () Unit!117676)

(assert (=> b!4651965 (= lt!1815415 lt!1815417)))

(assert (=> b!4651965 (containsKey!2706 (toList!5191 lt!1815313) (_1!29777 (h!58004 oldBucket!40)))))

(assert (=> b!4651965 (= lt!1815417 (lemmaInGetKeysListThenContainsKey!740 (toList!5191 lt!1815313) (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun Unit!117797 () Unit!117676)

(assert (=> b!4651965 (= e!2902293 Unit!117797)))

(declare-fun bm!324990 () Bool)

(assert (=> bm!324990 (= call!324995 (contains!15013 e!2902296 (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun c!796186 () Bool)

(assert (=> bm!324990 (= c!796186 c!796184)))

(assert (= (and d!1474527 c!796184) b!4651959))

(assert (= (and d!1474527 (not c!796184)) b!4651958))

(assert (= (and b!4651958 c!796185) b!4651965))

(assert (= (and b!4651958 (not c!796185)) b!4651957))

(assert (= (or b!4651959 b!4651958) bm!324990))

(assert (= (and bm!324990 c!796186) b!4651961))

(assert (= (and bm!324990 (not c!796186)) b!4651960))

(assert (= (and d!1474527 res!1955410) b!4651962))

(assert (= (and d!1474527 (not res!1955412)) b!4651963))

(assert (= (and b!4651963 res!1955411) b!4651964))

(declare-fun m!5527717 () Bool)

(assert (=> d!1474527 m!5527717))

(declare-fun m!5527719 () Bool)

(assert (=> b!4651964 m!5527719))

(assert (=> b!4651964 m!5527719))

(declare-fun m!5527721 () Bool)

(assert (=> b!4651964 m!5527721))

(declare-fun m!5527723 () Bool)

(assert (=> b!4651963 m!5527723))

(assert (=> b!4651963 m!5527723))

(declare-fun m!5527725 () Bool)

(assert (=> b!4651963 m!5527725))

(declare-fun m!5527727 () Bool)

(assert (=> bm!324990 m!5527727))

(declare-fun m!5527729 () Bool)

(assert (=> b!4651959 m!5527729))

(assert (=> b!4651959 m!5527723))

(assert (=> b!4651959 m!5527723))

(assert (=> b!4651959 m!5527725))

(declare-fun m!5527731 () Bool)

(assert (=> b!4651959 m!5527731))

(assert (=> b!4651962 m!5527719))

(assert (=> b!4651962 m!5527719))

(assert (=> b!4651962 m!5527721))

(assert (=> b!4651960 m!5527719))

(assert (=> b!4651965 m!5527717))

(declare-fun m!5527733 () Bool)

(assert (=> b!4651965 m!5527733))

(declare-fun m!5527735 () Bool)

(assert (=> b!4651961 m!5527735))

(assert (=> b!4651844 d!1474527))

(declare-fun d!1474529 () Bool)

(declare-fun res!1955413 () Bool)

(declare-fun e!2902298 () Bool)

(assert (=> d!1474529 (=> res!1955413 e!2902298)))

(assert (=> d!1474529 (= res!1955413 ((_ is Nil!51868) (toList!5191 lt!1814962)))))

(assert (=> d!1474529 (= (forall!11004 (toList!5191 lt!1814962) lambda!198581) e!2902298)))

(declare-fun b!4651966 () Bool)

(declare-fun e!2902299 () Bool)

(assert (=> b!4651966 (= e!2902298 e!2902299)))

(declare-fun res!1955414 () Bool)

(assert (=> b!4651966 (=> (not res!1955414) (not e!2902299))))

(assert (=> b!4651966 (= res!1955414 (dynLambda!21575 lambda!198581 (h!58004 (toList!5191 lt!1814962))))))

(declare-fun b!4651967 () Bool)

(assert (=> b!4651967 (= e!2902299 (forall!11004 (t!359100 (toList!5191 lt!1814962)) lambda!198581))))

(assert (= (and d!1474529 (not res!1955413)) b!4651966))

(assert (= (and b!4651966 res!1955414) b!4651967))

(declare-fun b_lambda!173019 () Bool)

(assert (=> (not b_lambda!173019) (not b!4651966)))

(declare-fun m!5527737 () Bool)

(assert (=> b!4651966 m!5527737))

(declare-fun m!5527739 () Bool)

(assert (=> b!4651967 m!5527739))

(assert (=> b!4651844 d!1474529))

(declare-fun bs!1059525 () Bool)

(declare-fun b!4651971 () Bool)

(assert (= bs!1059525 (and b!4651971 b!4651772)))

(declare-fun lambda!198604 () Int)

(assert (=> bs!1059525 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815244) (= lambda!198604 lambda!198569))))

(declare-fun bs!1059526 () Bool)

(assert (= bs!1059526 (and b!4651971 d!1474461)))

(assert (=> bs!1059526 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815328) (= lambda!198604 lambda!198588))))

(declare-fun bs!1059527 () Bool)

(assert (= bs!1059527 (and b!4651971 b!4651851)))

(assert (=> bs!1059527 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198604 lambda!198586))))

(declare-fun bs!1059528 () Bool)

(assert (= bs!1059528 (and b!4651971 b!4651845)))

(assert (=> bs!1059528 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1814962) (= lambda!198604 lambda!198580))))

(declare-fun bs!1059529 () Bool)

(assert (= bs!1059529 (and b!4651971 d!1474455)))

(assert (=> bs!1059529 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815303) (= lambda!198604 lambda!198583))))

(declare-fun bs!1059530 () Bool)

(assert (= bs!1059530 (and b!4651971 b!4651862)))

(assert (=> bs!1059530 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198604 lambda!198590))))

(declare-fun bs!1059531 () Bool)

(assert (= bs!1059531 (and b!4651971 d!1474445)))

(assert (=> bs!1059531 (not (= lambda!198604 lambda!198577))))

(assert (=> bs!1059527 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815338) (= lambda!198604 lambda!198587))))

(declare-fun bs!1059532 () Bool)

(assert (= bs!1059532 (and b!4651971 b!4651765)))

(assert (=> bs!1059532 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815223) (= lambda!198604 lambda!198564))))

(declare-fun bs!1059533 () Bool)

(assert (= bs!1059533 (and b!4651971 b!4651844)))

(assert (=> bs!1059533 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815313) (= lambda!198604 lambda!198582))))

(declare-fun bs!1059534 () Bool)

(assert (= bs!1059534 (and b!4651971 d!1474503)))

(assert (=> bs!1059534 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815313) (= lambda!198604 lambda!198603))))

(declare-fun bs!1059535 () Bool)

(assert (= bs!1059535 (and b!4651971 b!4651852)))

(assert (=> bs!1059535 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198604 lambda!198585))))

(declare-fun bs!1059536 () Bool)

(assert (= bs!1059536 (and b!4651971 d!1474391)))

(assert (=> bs!1059536 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815213) (= lambda!198604 lambda!198566))))

(declare-fun bs!1059537 () Bool)

(assert (= bs!1059537 (and b!4651971 d!1474365)))

(assert (=> bs!1059537 (not (= lambda!198604 lambda!198476))))

(declare-fun bs!1059538 () Bool)

(assert (= bs!1059538 (and b!4651971 b!4651766)))

(assert (=> bs!1059538 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198604 lambda!198562))))

(declare-fun bs!1059539 () Bool)

(assert (= bs!1059539 (and b!4651971 d!1474467)))

(assert (=> bs!1059539 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815361) (= lambda!198604 lambda!198592))))

(assert (=> bs!1059532 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198604 lambda!198563))))

(declare-fun bs!1059540 () Bool)

(assert (= bs!1059540 (and b!4651971 b!4651773)))

(assert (=> bs!1059540 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198604 lambda!198567))))

(declare-fun bs!1059541 () Bool)

(assert (= bs!1059541 (and b!4651971 b!4651863)))

(assert (=> bs!1059541 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198604 lambda!198589))))

(assert (=> bs!1059525 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198604 lambda!198568))))

(assert (=> bs!1059533 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1814962) (= lambda!198604 lambda!198581))))

(declare-fun bs!1059542 () Bool)

(assert (= bs!1059542 (and b!4651971 d!1474425)))

(assert (=> bs!1059542 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815234) (= lambda!198604 lambda!198570))))

(assert (=> bs!1059530 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815371) (= lambda!198604 lambda!198591))))

(assert (=> b!4651971 true))

(declare-fun bs!1059544 () Bool)

(declare-fun b!4651970 () Bool)

(assert (= bs!1059544 (and b!4651970 b!4651772)))

(declare-fun lambda!198605 () Int)

(assert (=> bs!1059544 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815244) (= lambda!198605 lambda!198569))))

(declare-fun bs!1059545 () Bool)

(assert (= bs!1059545 (and b!4651970 d!1474461)))

(assert (=> bs!1059545 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815328) (= lambda!198605 lambda!198588))))

(declare-fun bs!1059546 () Bool)

(assert (= bs!1059546 (and b!4651970 b!4651851)))

(assert (=> bs!1059546 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198605 lambda!198586))))

(declare-fun bs!1059547 () Bool)

(assert (= bs!1059547 (and b!4651970 b!4651845)))

(assert (=> bs!1059547 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1814962) (= lambda!198605 lambda!198580))))

(declare-fun bs!1059548 () Bool)

(assert (= bs!1059548 (and b!4651970 b!4651971)))

(assert (=> bs!1059548 (= lambda!198605 lambda!198604)))

(declare-fun bs!1059549 () Bool)

(assert (= bs!1059549 (and b!4651970 d!1474455)))

(assert (=> bs!1059549 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815303) (= lambda!198605 lambda!198583))))

(declare-fun bs!1059550 () Bool)

(assert (= bs!1059550 (and b!4651970 b!4651862)))

(assert (=> bs!1059550 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198605 lambda!198590))))

(declare-fun bs!1059551 () Bool)

(assert (= bs!1059551 (and b!4651970 d!1474445)))

(assert (=> bs!1059551 (not (= lambda!198605 lambda!198577))))

(assert (=> bs!1059546 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815338) (= lambda!198605 lambda!198587))))

(declare-fun bs!1059552 () Bool)

(assert (= bs!1059552 (and b!4651970 b!4651765)))

(assert (=> bs!1059552 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815223) (= lambda!198605 lambda!198564))))

(declare-fun bs!1059553 () Bool)

(assert (= bs!1059553 (and b!4651970 b!4651844)))

(assert (=> bs!1059553 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815313) (= lambda!198605 lambda!198582))))

(declare-fun bs!1059554 () Bool)

(assert (= bs!1059554 (and b!4651970 d!1474503)))

(assert (=> bs!1059554 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815313) (= lambda!198605 lambda!198603))))

(declare-fun bs!1059555 () Bool)

(assert (= bs!1059555 (and b!4651970 b!4651852)))

(assert (=> bs!1059555 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198605 lambda!198585))))

(declare-fun bs!1059556 () Bool)

(assert (= bs!1059556 (and b!4651970 d!1474391)))

(assert (=> bs!1059556 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815213) (= lambda!198605 lambda!198566))))

(declare-fun bs!1059557 () Bool)

(assert (= bs!1059557 (and b!4651970 d!1474365)))

(assert (=> bs!1059557 (not (= lambda!198605 lambda!198476))))

(declare-fun bs!1059558 () Bool)

(assert (= bs!1059558 (and b!4651970 b!4651766)))

(assert (=> bs!1059558 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198605 lambda!198562))))

(declare-fun bs!1059559 () Bool)

(assert (= bs!1059559 (and b!4651970 d!1474467)))

(assert (=> bs!1059559 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815361) (= lambda!198605 lambda!198592))))

(assert (=> bs!1059552 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198605 lambda!198563))))

(declare-fun bs!1059560 () Bool)

(assert (= bs!1059560 (and b!4651970 b!4651773)))

(assert (=> bs!1059560 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198605 lambda!198567))))

(declare-fun bs!1059561 () Bool)

(assert (= bs!1059561 (and b!4651970 b!4651863)))

(assert (=> bs!1059561 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198605 lambda!198589))))

(assert (=> bs!1059544 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198605 lambda!198568))))

(assert (=> bs!1059553 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1814962) (= lambda!198605 lambda!198581))))

(declare-fun bs!1059562 () Bool)

(assert (= bs!1059562 (and b!4651970 d!1474425)))

(assert (=> bs!1059562 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815234) (= lambda!198605 lambda!198570))))

(assert (=> bs!1059550 (= (= (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815371) (= lambda!198605 lambda!198591))))

(assert (=> b!4651970 true))

(declare-fun lambda!198606 () Int)

(declare-fun lt!1815433 () ListMap!4529)

(assert (=> bs!1059544 (= (= lt!1815433 lt!1815244) (= lambda!198606 lambda!198569))))

(assert (=> b!4651970 (= (= lt!1815433 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198606 lambda!198605))))

(assert (=> bs!1059545 (= (= lt!1815433 lt!1815328) (= lambda!198606 lambda!198588))))

(assert (=> bs!1059546 (= (= lt!1815433 (ListMap!4530 Nil!51868)) (= lambda!198606 lambda!198586))))

(assert (=> bs!1059547 (= (= lt!1815433 lt!1814962) (= lambda!198606 lambda!198580))))

(assert (=> bs!1059548 (= (= lt!1815433 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198606 lambda!198604))))

(assert (=> bs!1059549 (= (= lt!1815433 lt!1815303) (= lambda!198606 lambda!198583))))

(assert (=> bs!1059550 (= (= lt!1815433 (ListMap!4530 Nil!51868)) (= lambda!198606 lambda!198590))))

(assert (=> bs!1059551 (not (= lambda!198606 lambda!198577))))

(assert (=> bs!1059546 (= (= lt!1815433 lt!1815338) (= lambda!198606 lambda!198587))))

(assert (=> bs!1059552 (= (= lt!1815433 lt!1815223) (= lambda!198606 lambda!198564))))

(assert (=> bs!1059553 (= (= lt!1815433 lt!1815313) (= lambda!198606 lambda!198582))))

(assert (=> bs!1059554 (= (= lt!1815433 lt!1815313) (= lambda!198606 lambda!198603))))

(assert (=> bs!1059555 (= (= lt!1815433 (ListMap!4530 Nil!51868)) (= lambda!198606 lambda!198585))))

(assert (=> bs!1059556 (= (= lt!1815433 lt!1815213) (= lambda!198606 lambda!198566))))

(assert (=> bs!1059557 (not (= lambda!198606 lambda!198476))))

(assert (=> bs!1059558 (= (= lt!1815433 (ListMap!4530 Nil!51868)) (= lambda!198606 lambda!198562))))

(assert (=> bs!1059559 (= (= lt!1815433 lt!1815361) (= lambda!198606 lambda!198592))))

(assert (=> bs!1059552 (= (= lt!1815433 (ListMap!4530 Nil!51868)) (= lambda!198606 lambda!198563))))

(assert (=> bs!1059560 (= (= lt!1815433 (ListMap!4530 Nil!51868)) (= lambda!198606 lambda!198567))))

(assert (=> bs!1059561 (= (= lt!1815433 (ListMap!4530 Nil!51868)) (= lambda!198606 lambda!198589))))

(assert (=> bs!1059544 (= (= lt!1815433 (ListMap!4530 Nil!51868)) (= lambda!198606 lambda!198568))))

(assert (=> bs!1059553 (= (= lt!1815433 lt!1814962) (= lambda!198606 lambda!198581))))

(assert (=> bs!1059562 (= (= lt!1815433 lt!1815234) (= lambda!198606 lambda!198570))))

(assert (=> bs!1059550 (= (= lt!1815433 lt!1815371) (= lambda!198606 lambda!198591))))

(assert (=> b!4651970 true))

(declare-fun bs!1059564 () Bool)

(declare-fun d!1474531 () Bool)

(assert (= bs!1059564 (and d!1474531 b!4651970)))

(declare-fun lt!1815423 () ListMap!4529)

(declare-fun lambda!198607 () Int)

(assert (=> bs!1059564 (= (= lt!1815423 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198607 lambda!198605))))

(declare-fun bs!1059565 () Bool)

(assert (= bs!1059565 (and d!1474531 d!1474461)))

(assert (=> bs!1059565 (= (= lt!1815423 lt!1815328) (= lambda!198607 lambda!198588))))

(declare-fun bs!1059566 () Bool)

(assert (= bs!1059566 (and d!1474531 b!4651851)))

(assert (=> bs!1059566 (= (= lt!1815423 (ListMap!4530 Nil!51868)) (= lambda!198607 lambda!198586))))

(declare-fun bs!1059567 () Bool)

(assert (= bs!1059567 (and d!1474531 b!4651845)))

(assert (=> bs!1059567 (= (= lt!1815423 lt!1814962) (= lambda!198607 lambda!198580))))

(declare-fun bs!1059568 () Bool)

(assert (= bs!1059568 (and d!1474531 b!4651971)))

(assert (=> bs!1059568 (= (= lt!1815423 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198607 lambda!198604))))

(declare-fun bs!1059569 () Bool)

(assert (= bs!1059569 (and d!1474531 d!1474455)))

(assert (=> bs!1059569 (= (= lt!1815423 lt!1815303) (= lambda!198607 lambda!198583))))

(declare-fun bs!1059570 () Bool)

(assert (= bs!1059570 (and d!1474531 b!4651862)))

(assert (=> bs!1059570 (= (= lt!1815423 (ListMap!4530 Nil!51868)) (= lambda!198607 lambda!198590))))

(declare-fun bs!1059571 () Bool)

(assert (= bs!1059571 (and d!1474531 d!1474445)))

(assert (=> bs!1059571 (not (= lambda!198607 lambda!198577))))

(assert (=> bs!1059566 (= (= lt!1815423 lt!1815338) (= lambda!198607 lambda!198587))))

(assert (=> bs!1059564 (= (= lt!1815423 lt!1815433) (= lambda!198607 lambda!198606))))

(declare-fun bs!1059573 () Bool)

(assert (= bs!1059573 (and d!1474531 b!4651772)))

(assert (=> bs!1059573 (= (= lt!1815423 lt!1815244) (= lambda!198607 lambda!198569))))

(declare-fun bs!1059574 () Bool)

(assert (= bs!1059574 (and d!1474531 b!4651765)))

(assert (=> bs!1059574 (= (= lt!1815423 lt!1815223) (= lambda!198607 lambda!198564))))

(declare-fun bs!1059575 () Bool)

(assert (= bs!1059575 (and d!1474531 b!4651844)))

(assert (=> bs!1059575 (= (= lt!1815423 lt!1815313) (= lambda!198607 lambda!198582))))

(declare-fun bs!1059576 () Bool)

(assert (= bs!1059576 (and d!1474531 d!1474503)))

(assert (=> bs!1059576 (= (= lt!1815423 lt!1815313) (= lambda!198607 lambda!198603))))

(declare-fun bs!1059577 () Bool)

(assert (= bs!1059577 (and d!1474531 b!4651852)))

(assert (=> bs!1059577 (= (= lt!1815423 (ListMap!4530 Nil!51868)) (= lambda!198607 lambda!198585))))

(declare-fun bs!1059578 () Bool)

(assert (= bs!1059578 (and d!1474531 d!1474391)))

(assert (=> bs!1059578 (= (= lt!1815423 lt!1815213) (= lambda!198607 lambda!198566))))

(declare-fun bs!1059579 () Bool)

(assert (= bs!1059579 (and d!1474531 d!1474365)))

(assert (=> bs!1059579 (not (= lambda!198607 lambda!198476))))

(declare-fun bs!1059580 () Bool)

(assert (= bs!1059580 (and d!1474531 b!4651766)))

(assert (=> bs!1059580 (= (= lt!1815423 (ListMap!4530 Nil!51868)) (= lambda!198607 lambda!198562))))

(declare-fun bs!1059581 () Bool)

(assert (= bs!1059581 (and d!1474531 d!1474467)))

(assert (=> bs!1059581 (= (= lt!1815423 lt!1815361) (= lambda!198607 lambda!198592))))

(assert (=> bs!1059574 (= (= lt!1815423 (ListMap!4530 Nil!51868)) (= lambda!198607 lambda!198563))))

(declare-fun bs!1059582 () Bool)

(assert (= bs!1059582 (and d!1474531 b!4651773)))

(assert (=> bs!1059582 (= (= lt!1815423 (ListMap!4530 Nil!51868)) (= lambda!198607 lambda!198567))))

(declare-fun bs!1059583 () Bool)

(assert (= bs!1059583 (and d!1474531 b!4651863)))

(assert (=> bs!1059583 (= (= lt!1815423 (ListMap!4530 Nil!51868)) (= lambda!198607 lambda!198589))))

(assert (=> bs!1059573 (= (= lt!1815423 (ListMap!4530 Nil!51868)) (= lambda!198607 lambda!198568))))

(assert (=> bs!1059575 (= (= lt!1815423 lt!1814962) (= lambda!198607 lambda!198581))))

(declare-fun bs!1059584 () Bool)

(assert (= bs!1059584 (and d!1474531 d!1474425)))

(assert (=> bs!1059584 (= (= lt!1815423 lt!1815234) (= lambda!198607 lambda!198570))))

(assert (=> bs!1059570 (= (= lt!1815423 lt!1815371) (= lambda!198607 lambda!198591))))

(assert (=> d!1474531 true))

(declare-fun e!2902302 () Bool)

(assert (=> d!1474531 e!2902302))

(declare-fun res!1955417 () Bool)

(assert (=> d!1474531 (=> (not res!1955417) (not e!2902302))))

(assert (=> d!1474531 (= res!1955417 (forall!11004 (t!359100 oldBucket!40) lambda!198607))))

(declare-fun e!2902300 () ListMap!4529)

(assert (=> d!1474531 (= lt!1815423 e!2902300)))

(declare-fun c!796187 () Bool)

(assert (=> d!1474531 (= c!796187 ((_ is Nil!51868) (t!359100 oldBucket!40)))))

(assert (=> d!1474531 (noDuplicateKeys!1630 (t!359100 oldBucket!40))))

(assert (=> d!1474531 (= (addToMapMapFromBucket!1087 (t!359100 oldBucket!40) (+!1974 lt!1814962 (h!58004 oldBucket!40))) lt!1815423)))

(declare-fun b!4651968 () Bool)

(declare-fun res!1955415 () Bool)

(assert (=> b!4651968 (=> (not res!1955415) (not e!2902302))))

(assert (=> b!4651968 (= res!1955415 (forall!11004 (toList!5191 (+!1974 lt!1814962 (h!58004 oldBucket!40))) lambda!198607))))

(declare-fun bm!324991 () Bool)

(declare-fun call!324997 () Bool)

(assert (=> bm!324991 (= call!324997 (forall!11004 (ite c!796187 (toList!5191 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (t!359100 (t!359100 oldBucket!40))) (ite c!796187 lambda!198604 lambda!198606)))))

(declare-fun bm!324992 () Bool)

(declare-fun call!324998 () Bool)

(assert (=> bm!324992 (= call!324998 (forall!11004 (toList!5191 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (ite c!796187 lambda!198604 lambda!198606)))))

(declare-fun b!4651969 () Bool)

(assert (=> b!4651969 (= e!2902302 (invariantList!1290 (toList!5191 lt!1815423)))))

(assert (=> b!4651970 (= e!2902300 lt!1815433)))

(declare-fun lt!1815428 () ListMap!4529)

(assert (=> b!4651970 (= lt!1815428 (+!1974 (+!1974 lt!1814962 (h!58004 oldBucket!40)) (h!58004 (t!359100 oldBucket!40))))))

(assert (=> b!4651970 (= lt!1815433 (addToMapMapFromBucket!1087 (t!359100 (t!359100 oldBucket!40)) (+!1974 (+!1974 lt!1814962 (h!58004 oldBucket!40)) (h!58004 (t!359100 oldBucket!40)))))))

(declare-fun lt!1815426 () Unit!117676)

(declare-fun call!324996 () Unit!117676)

(assert (=> b!4651970 (= lt!1815426 call!324996)))

(assert (=> b!4651970 (forall!11004 (toList!5191 (+!1974 lt!1814962 (h!58004 oldBucket!40))) lambda!198605)))

(declare-fun lt!1815436 () Unit!117676)

(assert (=> b!4651970 (= lt!1815436 lt!1815426)))

(assert (=> b!4651970 (forall!11004 (toList!5191 lt!1815428) lambda!198606)))

(declare-fun lt!1815435 () Unit!117676)

(declare-fun Unit!117798 () Unit!117676)

(assert (=> b!4651970 (= lt!1815435 Unit!117798)))

(assert (=> b!4651970 call!324997))

(declare-fun lt!1815427 () Unit!117676)

(declare-fun Unit!117799 () Unit!117676)

(assert (=> b!4651970 (= lt!1815427 Unit!117799)))

(declare-fun lt!1815432 () Unit!117676)

(declare-fun Unit!117800 () Unit!117676)

(assert (=> b!4651970 (= lt!1815432 Unit!117800)))

(declare-fun lt!1815424 () Unit!117676)

(assert (=> b!4651970 (= lt!1815424 (forallContained!3212 (toList!5191 lt!1815428) lambda!198606 (h!58004 (t!359100 oldBucket!40))))))

(assert (=> b!4651970 (contains!15011 lt!1815428 (_1!29777 (h!58004 (t!359100 oldBucket!40))))))

(declare-fun lt!1815441 () Unit!117676)

(declare-fun Unit!117801 () Unit!117676)

(assert (=> b!4651970 (= lt!1815441 Unit!117801)))

(assert (=> b!4651970 (contains!15011 lt!1815433 (_1!29777 (h!58004 (t!359100 oldBucket!40))))))

(declare-fun lt!1815431 () Unit!117676)

(declare-fun Unit!117802 () Unit!117676)

(assert (=> b!4651970 (= lt!1815431 Unit!117802)))

(assert (=> b!4651970 (forall!11004 (t!359100 oldBucket!40) lambda!198606)))

(declare-fun lt!1815437 () Unit!117676)

(declare-fun Unit!117803 () Unit!117676)

(assert (=> b!4651970 (= lt!1815437 Unit!117803)))

(assert (=> b!4651970 (forall!11004 (toList!5191 lt!1815428) lambda!198606)))

(declare-fun lt!1815434 () Unit!117676)

(declare-fun Unit!117804 () Unit!117676)

(assert (=> b!4651970 (= lt!1815434 Unit!117804)))

(declare-fun lt!1815443 () Unit!117676)

(declare-fun Unit!117805 () Unit!117676)

(assert (=> b!4651970 (= lt!1815443 Unit!117805)))

(declare-fun lt!1815425 () Unit!117676)

(assert (=> b!4651970 (= lt!1815425 (addForallContainsKeyThenBeforeAdding!589 (+!1974 lt!1814962 (h!58004 oldBucket!40)) lt!1815433 (_1!29777 (h!58004 (t!359100 oldBucket!40))) (_2!29777 (h!58004 (t!359100 oldBucket!40)))))))

(assert (=> b!4651970 call!324998))

(declare-fun lt!1815430 () Unit!117676)

(assert (=> b!4651970 (= lt!1815430 lt!1815425)))

(assert (=> b!4651970 (forall!11004 (toList!5191 (+!1974 lt!1814962 (h!58004 oldBucket!40))) lambda!198606)))

(declare-fun lt!1815439 () Unit!117676)

(declare-fun Unit!117806 () Unit!117676)

(assert (=> b!4651970 (= lt!1815439 Unit!117806)))

(declare-fun res!1955416 () Bool)

(assert (=> b!4651970 (= res!1955416 (forall!11004 (t!359100 oldBucket!40) lambda!198606))))

(declare-fun e!2902301 () Bool)

(assert (=> b!4651970 (=> (not res!1955416) (not e!2902301))))

(assert (=> b!4651970 e!2902301))

(declare-fun lt!1815429 () Unit!117676)

(declare-fun Unit!117807 () Unit!117676)

(assert (=> b!4651970 (= lt!1815429 Unit!117807)))

(assert (=> b!4651971 (= e!2902300 (+!1974 lt!1814962 (h!58004 oldBucket!40)))))

(declare-fun lt!1815442 () Unit!117676)

(assert (=> b!4651971 (= lt!1815442 call!324996)))

(assert (=> b!4651971 call!324998))

(declare-fun lt!1815440 () Unit!117676)

(assert (=> b!4651971 (= lt!1815440 lt!1815442)))

(assert (=> b!4651971 call!324997))

(declare-fun lt!1815438 () Unit!117676)

(declare-fun Unit!117808 () Unit!117676)

(assert (=> b!4651971 (= lt!1815438 Unit!117808)))

(declare-fun bm!324993 () Bool)

(assert (=> bm!324993 (= call!324996 (lemmaContainsAllItsOwnKeys!590 (+!1974 lt!1814962 (h!58004 oldBucket!40))))))

(declare-fun b!4651972 () Bool)

(assert (=> b!4651972 (= e!2902301 (forall!11004 (toList!5191 (+!1974 lt!1814962 (h!58004 oldBucket!40))) lambda!198606))))

(assert (= (and d!1474531 c!796187) b!4651971))

(assert (= (and d!1474531 (not c!796187)) b!4651970))

(assert (= (and b!4651970 res!1955416) b!4651972))

(assert (= (or b!4651971 b!4651970) bm!324993))

(assert (= (or b!4651971 b!4651970) bm!324991))

(assert (= (or b!4651971 b!4651970) bm!324992))

(assert (= (and d!1474531 res!1955417) b!4651968))

(assert (= (and b!4651968 res!1955415) b!4651969))

(declare-fun m!5527781 () Bool)

(assert (=> b!4651972 m!5527781))

(declare-fun m!5527783 () Bool)

(assert (=> b!4651969 m!5527783))

(declare-fun m!5527785 () Bool)

(assert (=> b!4651968 m!5527785))

(assert (=> bm!324993 m!5527463))

(declare-fun m!5527787 () Bool)

(assert (=> bm!324993 m!5527787))

(declare-fun m!5527789 () Bool)

(assert (=> bm!324991 m!5527789))

(declare-fun m!5527791 () Bool)

(assert (=> d!1474531 m!5527791))

(assert (=> d!1474531 m!5527427))

(declare-fun m!5527793 () Bool)

(assert (=> bm!324992 m!5527793))

(declare-fun m!5527795 () Bool)

(assert (=> b!4651970 m!5527795))

(declare-fun m!5527797 () Bool)

(assert (=> b!4651970 m!5527797))

(assert (=> b!4651970 m!5527797))

(declare-fun m!5527799 () Bool)

(assert (=> b!4651970 m!5527799))

(declare-fun m!5527801 () Bool)

(assert (=> b!4651970 m!5527801))

(assert (=> b!4651970 m!5527781))

(declare-fun m!5527803 () Bool)

(assert (=> b!4651970 m!5527803))

(declare-fun m!5527805 () Bool)

(assert (=> b!4651970 m!5527805))

(assert (=> b!4651970 m!5527803))

(assert (=> b!4651970 m!5527463))

(assert (=> b!4651970 m!5527799))

(declare-fun m!5527807 () Bool)

(assert (=> b!4651970 m!5527807))

(assert (=> b!4651970 m!5527463))

(declare-fun m!5527809 () Bool)

(assert (=> b!4651970 m!5527809))

(declare-fun m!5527811 () Bool)

(assert (=> b!4651970 m!5527811))

(assert (=> b!4651844 d!1474531))

(declare-fun d!1474555 () Bool)

(declare-fun res!1955436 () Bool)

(declare-fun e!2902321 () Bool)

(assert (=> d!1474555 (=> res!1955436 e!2902321)))

(assert (=> d!1474555 (= res!1955436 ((_ is Nil!51868) oldBucket!40))))

(assert (=> d!1474555 (= (forall!11004 oldBucket!40 lambda!198582) e!2902321)))

(declare-fun b!4651991 () Bool)

(declare-fun e!2902322 () Bool)

(assert (=> b!4651991 (= e!2902321 e!2902322)))

(declare-fun res!1955437 () Bool)

(assert (=> b!4651991 (=> (not res!1955437) (not e!2902322))))

(assert (=> b!4651991 (= res!1955437 (dynLambda!21575 lambda!198582 (h!58004 oldBucket!40)))))

(declare-fun b!4651992 () Bool)

(assert (=> b!4651992 (= e!2902322 (forall!11004 (t!359100 oldBucket!40) lambda!198582))))

(assert (= (and d!1474555 (not res!1955436)) b!4651991))

(assert (= (and b!4651991 res!1955437) b!4651992))

(declare-fun b_lambda!173035 () Bool)

(assert (=> (not b_lambda!173035) (not b!4651991)))

(assert (=> b!4651991 m!5527711))

(declare-fun m!5527813 () Bool)

(assert (=> b!4651992 m!5527813))

(assert (=> b!4651844 d!1474555))

(declare-fun d!1474557 () Bool)

(declare-fun choose!31951 (Hashable!6027 K!13225) (_ BitVec 64))

(assert (=> d!1474557 (= (hash!3761 hashF!1389 key!4968) (choose!31951 hashF!1389 key!4968))))

(declare-fun bs!1059585 () Bool)

(assert (= bs!1059585 d!1474557))

(declare-fun m!5527819 () Bool)

(assert (=> bs!1059585 m!5527819))

(assert (=> d!1474389 d!1474557))

(declare-fun d!1474561 () Bool)

(declare-fun res!1955440 () Bool)

(declare-fun e!2902325 () Bool)

(assert (=> d!1474561 (=> res!1955440 e!2902325)))

(assert (=> d!1474561 (= res!1955440 (not ((_ is Cons!51868) (_2!29778 (h!58005 lt!1814954)))))))

(assert (=> d!1474561 (= (noDuplicateKeys!1630 (_2!29778 (h!58005 lt!1814954))) e!2902325)))

(declare-fun b!4651995 () Bool)

(declare-fun e!2902326 () Bool)

(assert (=> b!4651995 (= e!2902325 e!2902326)))

(declare-fun res!1955441 () Bool)

(assert (=> b!4651995 (=> (not res!1955441) (not e!2902326))))

(assert (=> b!4651995 (= res!1955441 (not (containsKey!2702 (t!359100 (_2!29778 (h!58005 lt!1814954))) (_1!29777 (h!58004 (_2!29778 (h!58005 lt!1814954)))))))))

(declare-fun b!4651996 () Bool)

(assert (=> b!4651996 (= e!2902326 (noDuplicateKeys!1630 (t!359100 (_2!29778 (h!58005 lt!1814954)))))))

(assert (= (and d!1474561 (not res!1955440)) b!4651995))

(assert (= (and b!4651995 res!1955441) b!4651996))

(declare-fun m!5527825 () Bool)

(assert (=> b!4651995 m!5527825))

(declare-fun m!5527827 () Bool)

(assert (=> b!4651996 m!5527827))

(assert (=> bs!1059502 d!1474561))

(declare-fun b!4651997 () Bool)

(declare-fun e!2902328 () Unit!117676)

(declare-fun Unit!117809 () Unit!117676)

(assert (=> b!4651997 (= e!2902328 Unit!117809)))

(declare-fun b!4651998 () Bool)

(declare-fun e!2902327 () Unit!117676)

(assert (=> b!4651998 (= e!2902327 e!2902328)))

(declare-fun c!796189 () Bool)

(declare-fun call!324999 () Bool)

(assert (=> b!4651998 (= c!796189 call!324999)))

(declare-fun b!4651999 () Bool)

(declare-fun lt!1815450 () Unit!117676)

(assert (=> b!4651999 (= e!2902327 lt!1815450)))

(declare-fun lt!1815451 () Unit!117676)

(assert (=> b!4651999 (= lt!1815451 (lemmaContainsKeyImpliesGetValueByKeyDefined!1502 (toList!5191 lt!1815359) (_1!29777 lt!1814956)))))

(assert (=> b!4651999 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815359) (_1!29777 lt!1814956)))))

(declare-fun lt!1815452 () Unit!117676)

(assert (=> b!4651999 (= lt!1815452 lt!1815451)))

(assert (=> b!4651999 (= lt!1815450 (lemmaInListThenGetKeysListContains!736 (toList!5191 lt!1815359) (_1!29777 lt!1814956)))))

(assert (=> b!4651999 call!324999))

(declare-fun b!4652000 () Bool)

(declare-fun e!2902331 () List!51995)

(assert (=> b!4652000 (= e!2902331 (keys!18366 lt!1815359))))

(declare-fun b!4652001 () Bool)

(assert (=> b!4652001 (= e!2902331 (getKeysList!741 (toList!5191 lt!1815359)))))

(declare-fun d!1474565 () Bool)

(declare-fun e!2902332 () Bool)

(assert (=> d!1474565 e!2902332))

(declare-fun res!1955444 () Bool)

(assert (=> d!1474565 (=> res!1955444 e!2902332)))

(declare-fun e!2902330 () Bool)

(assert (=> d!1474565 (= res!1955444 e!2902330)))

(declare-fun res!1955442 () Bool)

(assert (=> d!1474565 (=> (not res!1955442) (not e!2902330))))

(declare-fun lt!1815453 () Bool)

(assert (=> d!1474565 (= res!1955442 (not lt!1815453))))

(declare-fun lt!1815448 () Bool)

(assert (=> d!1474565 (= lt!1815453 lt!1815448)))

(declare-fun lt!1815454 () Unit!117676)

(assert (=> d!1474565 (= lt!1815454 e!2902327)))

(declare-fun c!796188 () Bool)

(assert (=> d!1474565 (= c!796188 lt!1815448)))

(assert (=> d!1474565 (= lt!1815448 (containsKey!2706 (toList!5191 lt!1815359) (_1!29777 lt!1814956)))))

(assert (=> d!1474565 (= (contains!15011 lt!1815359 (_1!29777 lt!1814956)) lt!1815453)))

(declare-fun b!4652002 () Bool)

(assert (=> b!4652002 (= e!2902330 (not (contains!15013 (keys!18366 lt!1815359) (_1!29777 lt!1814956))))))

(declare-fun b!4652003 () Bool)

(declare-fun e!2902329 () Bool)

(assert (=> b!4652003 (= e!2902332 e!2902329)))

(declare-fun res!1955443 () Bool)

(assert (=> b!4652003 (=> (not res!1955443) (not e!2902329))))

(assert (=> b!4652003 (= res!1955443 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815359) (_1!29777 lt!1814956))))))

(declare-fun b!4652004 () Bool)

(assert (=> b!4652004 (= e!2902329 (contains!15013 (keys!18366 lt!1815359) (_1!29777 lt!1814956)))))

(declare-fun b!4652005 () Bool)

(assert (=> b!4652005 false))

(declare-fun lt!1815447 () Unit!117676)

(declare-fun lt!1815449 () Unit!117676)

(assert (=> b!4652005 (= lt!1815447 lt!1815449)))

(assert (=> b!4652005 (containsKey!2706 (toList!5191 lt!1815359) (_1!29777 lt!1814956))))

(assert (=> b!4652005 (= lt!1815449 (lemmaInGetKeysListThenContainsKey!740 (toList!5191 lt!1815359) (_1!29777 lt!1814956)))))

(declare-fun Unit!117810 () Unit!117676)

(assert (=> b!4652005 (= e!2902328 Unit!117810)))

(declare-fun bm!324994 () Bool)

(assert (=> bm!324994 (= call!324999 (contains!15013 e!2902331 (_1!29777 lt!1814956)))))

(declare-fun c!796190 () Bool)

(assert (=> bm!324994 (= c!796190 c!796188)))

(assert (= (and d!1474565 c!796188) b!4651999))

(assert (= (and d!1474565 (not c!796188)) b!4651998))

(assert (= (and b!4651998 c!796189) b!4652005))

(assert (= (and b!4651998 (not c!796189)) b!4651997))

(assert (= (or b!4651999 b!4651998) bm!324994))

(assert (= (and bm!324994 c!796190) b!4652001))

(assert (= (and bm!324994 (not c!796190)) b!4652000))

(assert (= (and d!1474565 res!1955442) b!4652002))

(assert (= (and d!1474565 (not res!1955444)) b!4652003))

(assert (= (and b!4652003 res!1955443) b!4652004))

(declare-fun m!5527829 () Bool)

(assert (=> d!1474565 m!5527829))

(declare-fun m!5527831 () Bool)

(assert (=> b!4652004 m!5527831))

(assert (=> b!4652004 m!5527831))

(declare-fun m!5527833 () Bool)

(assert (=> b!4652004 m!5527833))

(assert (=> b!4652003 m!5527531))

(assert (=> b!4652003 m!5527531))

(declare-fun m!5527835 () Bool)

(assert (=> b!4652003 m!5527835))

(declare-fun m!5527837 () Bool)

(assert (=> bm!324994 m!5527837))

(declare-fun m!5527839 () Bool)

(assert (=> b!4651999 m!5527839))

(assert (=> b!4651999 m!5527531))

(assert (=> b!4651999 m!5527531))

(assert (=> b!4651999 m!5527835))

(declare-fun m!5527841 () Bool)

(assert (=> b!4651999 m!5527841))

(assert (=> b!4652002 m!5527831))

(assert (=> b!4652002 m!5527831))

(assert (=> b!4652002 m!5527833))

(assert (=> b!4652000 m!5527831))

(assert (=> b!4652005 m!5527829))

(declare-fun m!5527843 () Bool)

(assert (=> b!4652005 m!5527843))

(declare-fun m!5527845 () Bool)

(assert (=> b!4652001 m!5527845))

(assert (=> d!1474463 d!1474565))

(declare-fun b!4652014 () Bool)

(declare-fun e!2902337 () Option!11812)

(assert (=> b!4652014 (= e!2902337 (Some!11811 (_2!29777 (h!58004 lt!1815360))))))

(declare-fun b!4652017 () Bool)

(declare-fun e!2902338 () Option!11812)

(assert (=> b!4652017 (= e!2902338 None!11811)))

(declare-fun b!4652015 () Bool)

(assert (=> b!4652015 (= e!2902337 e!2902338)))

(declare-fun c!796196 () Bool)

(assert (=> b!4652015 (= c!796196 (and ((_ is Cons!51868) lt!1815360) (not (= (_1!29777 (h!58004 lt!1815360)) (_1!29777 lt!1814956)))))))

(declare-fun b!4652016 () Bool)

(assert (=> b!4652016 (= e!2902338 (getValueByKey!1600 (t!359100 lt!1815360) (_1!29777 lt!1814956)))))

(declare-fun d!1474567 () Bool)

(declare-fun c!796195 () Bool)

(assert (=> d!1474567 (= c!796195 (and ((_ is Cons!51868) lt!1815360) (= (_1!29777 (h!58004 lt!1815360)) (_1!29777 lt!1814956))))))

(assert (=> d!1474567 (= (getValueByKey!1600 lt!1815360 (_1!29777 lt!1814956)) e!2902337)))

(assert (= (and d!1474567 c!796195) b!4652014))

(assert (= (and d!1474567 (not c!796195)) b!4652015))

(assert (= (and b!4652015 c!796196) b!4652016))

(assert (= (and b!4652015 (not c!796196)) b!4652017))

(declare-fun m!5527847 () Bool)

(assert (=> b!4652016 m!5527847))

(assert (=> d!1474463 d!1474567))

(declare-fun d!1474569 () Bool)

(assert (=> d!1474569 (= (getValueByKey!1600 lt!1815360 (_1!29777 lt!1814956)) (Some!11811 (_2!29777 lt!1814956)))))

(declare-fun lt!1815459 () Unit!117676)

(declare-fun choose!31952 (List!51992 K!13225 V!13471) Unit!117676)

(assert (=> d!1474569 (= lt!1815459 (choose!31952 lt!1815360 (_1!29777 lt!1814956) (_2!29777 lt!1814956)))))

(declare-fun e!2902341 () Bool)

(assert (=> d!1474569 e!2902341))

(declare-fun res!1955449 () Bool)

(assert (=> d!1474569 (=> (not res!1955449) (not e!2902341))))

(assert (=> d!1474569 (= res!1955449 (invariantList!1290 lt!1815360))))

(assert (=> d!1474569 (= (lemmaContainsTupThenGetReturnValue!918 lt!1815360 (_1!29777 lt!1814956) (_2!29777 lt!1814956)) lt!1815459)))

(declare-fun b!4652022 () Bool)

(declare-fun res!1955450 () Bool)

(assert (=> b!4652022 (=> (not res!1955450) (not e!2902341))))

(assert (=> b!4652022 (= res!1955450 (containsKey!2706 lt!1815360 (_1!29777 lt!1814956)))))

(declare-fun b!4652023 () Bool)

(assert (=> b!4652023 (= e!2902341 (contains!15015 lt!1815360 (tuple2!52967 (_1!29777 lt!1814956) (_2!29777 lt!1814956))))))

(assert (= (and d!1474569 res!1955449) b!4652022))

(assert (= (and b!4652022 res!1955450) b!4652023))

(assert (=> d!1474569 m!5527525))

(declare-fun m!5527849 () Bool)

(assert (=> d!1474569 m!5527849))

(declare-fun m!5527851 () Bool)

(assert (=> d!1474569 m!5527851))

(declare-fun m!5527853 () Bool)

(assert (=> b!4652022 m!5527853))

(declare-fun m!5527855 () Bool)

(assert (=> b!4652023 m!5527855))

(assert (=> d!1474463 d!1474569))

(declare-fun bm!325006 () Bool)

(declare-fun call!325011 () List!51992)

(declare-fun call!325014 () List!51992)

(assert (=> bm!325006 (= call!325011 call!325014)))

(declare-fun c!796211 () Bool)

(declare-fun c!796208 () Bool)

(assert (=> bm!325006 (= c!796211 c!796208)))

(declare-fun b!4652075 () Bool)

(declare-fun e!2902383 () List!51992)

(declare-fun e!2902380 () List!51992)

(assert (=> b!4652075 (= e!2902383 e!2902380)))

(declare-fun res!1955483 () Bool)

(assert (=> b!4652075 (= res!1955483 ((_ is Cons!51868) (toList!5191 lt!1814959)))))

(declare-fun e!2902381 () Bool)

(assert (=> b!4652075 (=> (not res!1955483) (not e!2902381))))

(declare-fun c!796209 () Bool)

(assert (=> b!4652075 (= c!796209 e!2902381)))

(declare-fun b!4652076 () Bool)

(declare-fun e!2902379 () List!51992)

(declare-fun lt!1815509 () List!51992)

(assert (=> b!4652076 (= e!2902379 lt!1815509)))

(assert (=> b!4652076 (= lt!1815509 call!325011)))

(declare-fun c!796212 () Bool)

(assert (=> b!4652076 (= c!796212 (containsKey!2706 (insertNoDuplicatedKeys!426 (t!359100 (toList!5191 lt!1814959)) (_1!29777 lt!1814956) (_2!29777 lt!1814956)) (_1!29777 (h!58004 (toList!5191 lt!1814959)))))))

(declare-fun lt!1815517 () Unit!117676)

(declare-fun e!2902377 () Unit!117676)

(assert (=> b!4652076 (= lt!1815517 e!2902377)))

(declare-fun b!4652077 () Bool)

(declare-fun e!2902382 () List!51992)

(assert (=> b!4652077 (= e!2902382 (insertNoDuplicatedKeys!426 (t!359100 (toList!5191 lt!1814959)) (_1!29777 lt!1814956) (_2!29777 lt!1814956)))))

(declare-fun b!4652078 () Bool)

(assert (=> b!4652078 (= e!2902379 call!325011)))

(declare-fun c!796210 () Bool)

(declare-fun lt!1815512 () List!51992)

(declare-fun call!325012 () List!51995)

(declare-fun bm!325007 () Bool)

(assert (=> bm!325007 (= call!325012 (getKeysList!741 (ite c!796210 (toList!5191 lt!1814959) lt!1815512)))))

(declare-fun b!4652079 () Bool)

(declare-fun call!325013 () List!51992)

(assert (=> b!4652079 (= e!2902383 call!325013)))

(declare-fun lt!1815516 () List!51995)

(assert (=> b!4652079 (= lt!1815516 call!325012)))

(declare-fun lt!1815511 () Unit!117676)

(declare-fun lemmaSubseqRefl!126 (List!51995) Unit!117676)

(assert (=> b!4652079 (= lt!1815511 (lemmaSubseqRefl!126 lt!1815516))))

(declare-fun subseq!642 (List!51995 List!51995) Bool)

(assert (=> b!4652079 (subseq!642 lt!1815516 lt!1815516)))

(declare-fun lt!1815515 () Unit!117676)

(assert (=> b!4652079 (= lt!1815515 lt!1815511)))

(declare-fun b!4652080 () Bool)

(declare-fun res!1955481 () Bool)

(declare-fun e!2902378 () Bool)

(assert (=> b!4652080 (=> (not res!1955481) (not e!2902378))))

(declare-fun lt!1815508 () List!51992)

(assert (=> b!4652080 (= res!1955481 (containsKey!2706 lt!1815508 (_1!29777 lt!1814956)))))

(declare-fun bm!325008 () Bool)

(assert (=> bm!325008 (= call!325014 call!325013)))

(declare-fun b!4652081 () Bool)

(assert (=> b!4652081 (= e!2902378 (= (content!8986 (getKeysList!741 lt!1815508)) ((_ map or) (content!8986 (getKeysList!741 (toList!5191 lt!1814959))) (store ((as const (Array K!13225 Bool)) false) (_1!29777 lt!1814956) true))))))

(declare-fun d!1474571 () Bool)

(assert (=> d!1474571 e!2902378))

(declare-fun res!1955480 () Bool)

(assert (=> d!1474571 (=> (not res!1955480) (not e!2902378))))

(assert (=> d!1474571 (= res!1955480 (invariantList!1290 lt!1815508))))

(assert (=> d!1474571 (= lt!1815508 e!2902383)))

(assert (=> d!1474571 (= c!796210 (and ((_ is Cons!51868) (toList!5191 lt!1814959)) (= (_1!29777 (h!58004 (toList!5191 lt!1814959))) (_1!29777 lt!1814956))))))

(assert (=> d!1474571 (invariantList!1290 (toList!5191 lt!1814959))))

(assert (=> d!1474571 (= (insertNoDuplicatedKeys!426 (toList!5191 lt!1814959) (_1!29777 lt!1814956) (_2!29777 lt!1814956)) lt!1815508)))

(declare-fun b!4652082 () Bool)

(declare-fun res!1955482 () Bool)

(assert (=> b!4652082 (=> (not res!1955482) (not e!2902378))))

(assert (=> b!4652082 (= res!1955482 (contains!15015 lt!1815508 (tuple2!52967 (_1!29777 lt!1814956) (_2!29777 lt!1814956))))))

(declare-fun b!4652083 () Bool)

(assert (=> b!4652083 (= e!2902381 (not (containsKey!2706 (toList!5191 lt!1814959) (_1!29777 lt!1814956))))))

(declare-fun b!4652084 () Bool)

(declare-fun Unit!117819 () Unit!117676)

(assert (=> b!4652084 (= e!2902377 Unit!117819)))

(declare-fun b!4652085 () Bool)

(assert (=> b!4652085 (= c!796208 ((_ is Cons!51868) (toList!5191 lt!1814959)))))

(assert (=> b!4652085 (= e!2902380 e!2902379)))

(declare-fun b!4652086 () Bool)

(assert (=> b!4652086 (= e!2902380 call!325014)))

(declare-fun b!4652087 () Bool)

(assert (=> b!4652087 (= e!2902382 Nil!51868)))

(declare-fun bm!325009 () Bool)

(declare-fun $colon$colon!1057 (List!51992 tuple2!52966) List!51992)

(assert (=> bm!325009 (= call!325013 ($colon$colon!1057 (ite c!796210 (t!359100 (toList!5191 lt!1814959)) (ite c!796209 (toList!5191 lt!1814959) e!2902382)) (ite (or c!796210 c!796209) (tuple2!52967 (_1!29777 lt!1814956) (_2!29777 lt!1814956)) (ite c!796208 (h!58004 (toList!5191 lt!1814959)) (tuple2!52967 (_1!29777 lt!1814956) (_2!29777 lt!1814956))))))))

(declare-fun b!4652088 () Bool)

(assert (=> b!4652088 false))

(declare-fun lt!1815514 () Unit!117676)

(declare-fun lt!1815513 () Unit!117676)

(assert (=> b!4652088 (= lt!1815514 lt!1815513)))

(assert (=> b!4652088 (containsKey!2706 (t!359100 (toList!5191 lt!1814959)) (_1!29777 (h!58004 (toList!5191 lt!1814959))))))

(assert (=> b!4652088 (= lt!1815513 (lemmaInGetKeysListThenContainsKey!740 (t!359100 (toList!5191 lt!1814959)) (_1!29777 (h!58004 (toList!5191 lt!1814959)))))))

(declare-fun lt!1815510 () Unit!117676)

(declare-fun lt!1815507 () Unit!117676)

(assert (=> b!4652088 (= lt!1815510 lt!1815507)))

(assert (=> b!4652088 (contains!15013 call!325012 (_1!29777 (h!58004 (toList!5191 lt!1814959))))))

(assert (=> b!4652088 (= lt!1815507 (lemmaInListThenGetKeysListContains!736 lt!1815512 (_1!29777 (h!58004 (toList!5191 lt!1814959)))))))

(assert (=> b!4652088 (= lt!1815512 (insertNoDuplicatedKeys!426 (t!359100 (toList!5191 lt!1814959)) (_1!29777 lt!1814956) (_2!29777 lt!1814956)))))

(declare-fun Unit!117822 () Unit!117676)

(assert (=> b!4652088 (= e!2902377 Unit!117822)))

(assert (= (and d!1474571 c!796210) b!4652079))

(assert (= (and d!1474571 (not c!796210)) b!4652075))

(assert (= (and b!4652075 res!1955483) b!4652083))

(assert (= (and b!4652075 c!796209) b!4652086))

(assert (= (and b!4652075 (not c!796209)) b!4652085))

(assert (= (and b!4652085 c!796208) b!4652076))

(assert (= (and b!4652085 (not c!796208)) b!4652078))

(assert (= (and b!4652076 c!796212) b!4652088))

(assert (= (and b!4652076 (not c!796212)) b!4652084))

(assert (= (or b!4652076 b!4652078) bm!325006))

(assert (= (and bm!325006 c!796211) b!4652077))

(assert (= (and bm!325006 (not c!796211)) b!4652087))

(assert (= (or b!4652086 bm!325006) bm!325008))

(assert (= (or b!4652079 b!4652088) bm!325007))

(assert (= (or b!4652079 bm!325008) bm!325009))

(assert (= (and d!1474571 res!1955480) b!4652080))

(assert (= (and b!4652080 res!1955481) b!4652082))

(assert (= (and b!4652082 res!1955482) b!4652081))

(declare-fun m!5527891 () Bool)

(assert (=> b!4652077 m!5527891))

(declare-fun m!5527893 () Bool)

(assert (=> bm!325009 m!5527893))

(declare-fun m!5527895 () Bool)

(assert (=> b!4652079 m!5527895))

(declare-fun m!5527897 () Bool)

(assert (=> b!4652079 m!5527897))

(assert (=> b!4652076 m!5527891))

(assert (=> b!4652076 m!5527891))

(declare-fun m!5527899 () Bool)

(assert (=> b!4652076 m!5527899))

(declare-fun m!5527901 () Bool)

(assert (=> bm!325007 m!5527901))

(declare-fun m!5527903 () Bool)

(assert (=> b!4652082 m!5527903))

(declare-fun m!5527905 () Bool)

(assert (=> b!4652083 m!5527905))

(declare-fun m!5527907 () Bool)

(assert (=> b!4652081 m!5527907))

(declare-fun m!5527909 () Bool)

(assert (=> b!4652081 m!5527909))

(declare-fun m!5527911 () Bool)

(assert (=> b!4652081 m!5527911))

(assert (=> b!4652081 m!5527909))

(declare-fun m!5527913 () Bool)

(assert (=> b!4652081 m!5527913))

(assert (=> b!4652081 m!5527911))

(declare-fun m!5527915 () Bool)

(assert (=> b!4652081 m!5527915))

(declare-fun m!5527917 () Bool)

(assert (=> b!4652088 m!5527917))

(declare-fun m!5527919 () Bool)

(assert (=> b!4652088 m!5527919))

(declare-fun m!5527921 () Bool)

(assert (=> b!4652088 m!5527921))

(assert (=> b!4652088 m!5527891))

(declare-fun m!5527923 () Bool)

(assert (=> b!4652088 m!5527923))

(declare-fun m!5527925 () Bool)

(assert (=> b!4652080 m!5527925))

(declare-fun m!5527927 () Bool)

(assert (=> d!1474571 m!5527927))

(declare-fun m!5527929 () Bool)

(assert (=> d!1474571 m!5527929))

(assert (=> d!1474463 d!1474571))

(assert (=> b!4651812 d!1474487))

(declare-fun d!1474589 () Bool)

(declare-fun c!796215 () Bool)

(assert (=> d!1474589 (= c!796215 ((_ is Nil!51868) (toList!5191 (+!1974 lt!1814959 (h!58004 oldBucket!40)))))))

(declare-fun e!2902386 () (InoxSet tuple2!52966))

(assert (=> d!1474589 (= (content!8985 (toList!5191 (+!1974 lt!1814959 (h!58004 oldBucket!40)))) e!2902386)))

(declare-fun b!4652093 () Bool)

(assert (=> b!4652093 (= e!2902386 ((as const (Array tuple2!52966 Bool)) false))))

(declare-fun b!4652094 () Bool)

(assert (=> b!4652094 (= e!2902386 ((_ map or) (store ((as const (Array tuple2!52966 Bool)) false) (h!58004 (toList!5191 (+!1974 lt!1814959 (h!58004 oldBucket!40)))) true) (content!8985 (t!359100 (toList!5191 (+!1974 lt!1814959 (h!58004 oldBucket!40)))))))))

(assert (= (and d!1474589 c!796215) b!4652093))

(assert (= (and d!1474589 (not c!796215)) b!4652094))

(declare-fun m!5527931 () Bool)

(assert (=> b!4652094 m!5527931))

(declare-fun m!5527933 () Bool)

(assert (=> b!4652094 m!5527933))

(assert (=> d!1474471 d!1474589))

(declare-fun d!1474591 () Bool)

(declare-fun c!796216 () Bool)

(assert (=> d!1474591 (= c!796216 ((_ is Nil!51868) (toList!5191 (addToMapMapFromBucket!1087 oldBucket!40 (ListMap!4530 Nil!51868)))))))

(declare-fun e!2902387 () (InoxSet tuple2!52966))

(assert (=> d!1474591 (= (content!8985 (toList!5191 (addToMapMapFromBucket!1087 oldBucket!40 (ListMap!4530 Nil!51868)))) e!2902387)))

(declare-fun b!4652095 () Bool)

(assert (=> b!4652095 (= e!2902387 ((as const (Array tuple2!52966 Bool)) false))))

(declare-fun b!4652096 () Bool)

(assert (=> b!4652096 (= e!2902387 ((_ map or) (store ((as const (Array tuple2!52966 Bool)) false) (h!58004 (toList!5191 (addToMapMapFromBucket!1087 oldBucket!40 (ListMap!4530 Nil!51868)))) true) (content!8985 (t!359100 (toList!5191 (addToMapMapFromBucket!1087 oldBucket!40 (ListMap!4530 Nil!51868)))))))))

(assert (= (and d!1474591 c!796216) b!4652095))

(assert (= (and d!1474591 (not c!796216)) b!4652096))

(declare-fun m!5527935 () Bool)

(assert (=> b!4652096 m!5527935))

(declare-fun m!5527937 () Bool)

(assert (=> b!4652096 m!5527937))

(assert (=> d!1474471 d!1474591))

(declare-fun d!1474593 () Bool)

(assert (=> d!1474593 (= (invariantList!1290 (toList!5191 lt!1815361)) (noDuplicatedKeys!345 (toList!5191 lt!1815361)))))

(declare-fun bs!1059661 () Bool)

(assert (= bs!1059661 d!1474593))

(declare-fun m!5527939 () Bool)

(assert (=> bs!1059661 m!5527939))

(assert (=> b!4651861 d!1474593))

(declare-fun d!1474595 () Bool)

(assert (=> d!1474595 (= (invariantList!1290 (toList!5191 lt!1815213)) (noDuplicatedKeys!345 (toList!5191 lt!1815213)))))

(declare-fun bs!1059662 () Bool)

(assert (= bs!1059662 d!1474595))

(declare-fun m!5527941 () Bool)

(assert (=> bs!1059662 m!5527941))

(assert (=> b!4651764 d!1474595))

(assert (=> b!4651814 d!1474485))

(assert (=> b!4651814 d!1474487))

(declare-fun d!1474597 () Bool)

(declare-fun res!1955484 () Bool)

(declare-fun e!2902388 () Bool)

(assert (=> d!1474597 (=> res!1955484 e!2902388)))

(assert (=> d!1474597 (= res!1955484 ((_ is Nil!51868) (toList!5191 lt!1814962)))))

(assert (=> d!1474597 (= (forall!11004 (toList!5191 lt!1814962) lambda!198583) e!2902388)))

(declare-fun b!4652097 () Bool)

(declare-fun e!2902389 () Bool)

(assert (=> b!4652097 (= e!2902388 e!2902389)))

(declare-fun res!1955485 () Bool)

(assert (=> b!4652097 (=> (not res!1955485) (not e!2902389))))

(assert (=> b!4652097 (= res!1955485 (dynLambda!21575 lambda!198583 (h!58004 (toList!5191 lt!1814962))))))

(declare-fun b!4652098 () Bool)

(assert (=> b!4652098 (= e!2902389 (forall!11004 (t!359100 (toList!5191 lt!1814962)) lambda!198583))))

(assert (= (and d!1474597 (not res!1955484)) b!4652097))

(assert (= (and b!4652097 res!1955485) b!4652098))

(declare-fun b_lambda!173047 () Bool)

(assert (=> (not b_lambda!173047) (not b!4652097)))

(declare-fun m!5527943 () Bool)

(assert (=> b!4652097 m!5527943))

(declare-fun m!5527945 () Bool)

(assert (=> b!4652098 m!5527945))

(assert (=> b!4651842 d!1474597))

(declare-fun d!1474599 () Bool)

(declare-fun res!1955486 () Bool)

(declare-fun e!2902390 () Bool)

(assert (=> d!1474599 (=> res!1955486 e!2902390)))

(assert (=> d!1474599 (= res!1955486 ((_ is Nil!51868) (toList!5191 (ListMap!4530 Nil!51868))))))

(assert (=> d!1474599 (= (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198564) e!2902390)))

(declare-fun b!4652099 () Bool)

(declare-fun e!2902391 () Bool)

(assert (=> b!4652099 (= e!2902390 e!2902391)))

(declare-fun res!1955487 () Bool)

(assert (=> b!4652099 (=> (not res!1955487) (not e!2902391))))

(assert (=> b!4652099 (= res!1955487 (dynLambda!21575 lambda!198564 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))))))

(declare-fun b!4652100 () Bool)

(assert (=> b!4652100 (= e!2902391 (forall!11004 (t!359100 (toList!5191 (ListMap!4530 Nil!51868))) lambda!198564))))

(assert (= (and d!1474599 (not res!1955486)) b!4652099))

(assert (= (and b!4652099 res!1955487) b!4652100))

(declare-fun b_lambda!173049 () Bool)

(assert (=> (not b_lambda!173049) (not b!4652099)))

(declare-fun m!5527947 () Bool)

(assert (=> b!4652099 m!5527947))

(declare-fun m!5527949 () Bool)

(assert (=> b!4652100 m!5527949))

(assert (=> b!4651767 d!1474599))

(assert (=> d!1474459 d!1474461))

(declare-fun d!1474601 () Bool)

(declare-fun e!2902392 () Bool)

(assert (=> d!1474601 e!2902392))

(declare-fun res!1955488 () Bool)

(assert (=> d!1474601 (=> (not res!1955488) (not e!2902392))))

(declare-fun lt!1815520 () ListMap!4529)

(assert (=> d!1474601 (= res!1955488 (contains!15011 lt!1815520 (_1!29777 lt!1814956)))))

(declare-fun lt!1815521 () List!51992)

(assert (=> d!1474601 (= lt!1815520 (ListMap!4530 lt!1815521))))

(declare-fun lt!1815518 () Unit!117676)

(declare-fun lt!1815519 () Unit!117676)

(assert (=> d!1474601 (= lt!1815518 lt!1815519)))

(assert (=> d!1474601 (= (getValueByKey!1600 lt!1815521 (_1!29777 lt!1814956)) (Some!11811 (_2!29777 lt!1814956)))))

(assert (=> d!1474601 (= lt!1815519 (lemmaContainsTupThenGetReturnValue!918 lt!1815521 (_1!29777 lt!1814956) (_2!29777 lt!1814956)))))

(assert (=> d!1474601 (= lt!1815521 (insertNoDuplicatedKeys!426 (toList!5191 (addToMapMapFromBucket!1087 lt!1814957 (ListMap!4530 Nil!51868))) (_1!29777 lt!1814956) (_2!29777 lt!1814956)))))

(assert (=> d!1474601 (= (+!1974 (addToMapMapFromBucket!1087 lt!1814957 (ListMap!4530 Nil!51868)) lt!1814956) lt!1815520)))

(declare-fun b!4652101 () Bool)

(declare-fun res!1955489 () Bool)

(assert (=> b!4652101 (=> (not res!1955489) (not e!2902392))))

(assert (=> b!4652101 (= res!1955489 (= (getValueByKey!1600 (toList!5191 lt!1815520) (_1!29777 lt!1814956)) (Some!11811 (_2!29777 lt!1814956))))))

(declare-fun b!4652102 () Bool)

(assert (=> b!4652102 (= e!2902392 (contains!15015 (toList!5191 lt!1815520) lt!1814956))))

(assert (= (and d!1474601 res!1955488) b!4652101))

(assert (= (and b!4652101 res!1955489) b!4652102))

(declare-fun m!5527963 () Bool)

(assert (=> d!1474601 m!5527963))

(declare-fun m!5527965 () Bool)

(assert (=> d!1474601 m!5527965))

(declare-fun m!5527967 () Bool)

(assert (=> d!1474601 m!5527967))

(declare-fun m!5527971 () Bool)

(assert (=> d!1474601 m!5527971))

(declare-fun m!5527975 () Bool)

(assert (=> b!4652101 m!5527975))

(declare-fun m!5527977 () Bool)

(assert (=> b!4652102 m!5527977))

(assert (=> d!1474459 d!1474601))

(declare-fun d!1474603 () Bool)

(assert (=> d!1474603 (= (eq!909 (addToMapMapFromBucket!1087 (Cons!51868 lt!1814956 lt!1814957) (ListMap!4530 Nil!51868)) (+!1974 (addToMapMapFromBucket!1087 lt!1814957 (ListMap!4530 Nil!51868)) lt!1814956)) (= (content!8985 (toList!5191 (addToMapMapFromBucket!1087 (Cons!51868 lt!1814956 lt!1814957) (ListMap!4530 Nil!51868)))) (content!8985 (toList!5191 (+!1974 (addToMapMapFromBucket!1087 lt!1814957 (ListMap!4530 Nil!51868)) lt!1814956)))))))

(declare-fun bs!1059663 () Bool)

(assert (= bs!1059663 d!1474603))

(assert (=> bs!1059663 m!5527565))

(declare-fun m!5527983 () Bool)

(assert (=> bs!1059663 m!5527983))

(assert (=> d!1474459 d!1474603))

(declare-fun d!1474605 () Bool)

(declare-fun res!1955490 () Bool)

(declare-fun e!2902393 () Bool)

(assert (=> d!1474605 (=> res!1955490 e!2902393)))

(assert (=> d!1474605 (= res!1955490 (not ((_ is Cons!51868) lt!1814957)))))

(assert (=> d!1474605 (= (noDuplicateKeys!1630 lt!1814957) e!2902393)))

(declare-fun b!4652103 () Bool)

(declare-fun e!2902394 () Bool)

(assert (=> b!4652103 (= e!2902393 e!2902394)))

(declare-fun res!1955491 () Bool)

(assert (=> b!4652103 (=> (not res!1955491) (not e!2902394))))

(assert (=> b!4652103 (= res!1955491 (not (containsKey!2702 (t!359100 lt!1814957) (_1!29777 (h!58004 lt!1814957)))))))

(declare-fun b!4652104 () Bool)

(assert (=> b!4652104 (= e!2902394 (noDuplicateKeys!1630 (t!359100 lt!1814957)))))

(assert (= (and d!1474605 (not res!1955490)) b!4652103))

(assert (= (and b!4652103 res!1955491) b!4652104))

(declare-fun m!5527995 () Bool)

(assert (=> b!4652103 m!5527995))

(declare-fun m!5527999 () Bool)

(assert (=> b!4652104 m!5527999))

(assert (=> d!1474459 d!1474605))

(declare-fun d!1474607 () Bool)

(assert (=> d!1474607 (eq!909 (addToMapMapFromBucket!1087 (Cons!51868 lt!1814956 lt!1814957) (ListMap!4530 Nil!51868)) (+!1974 (addToMapMapFromBucket!1087 lt!1814957 (ListMap!4530 Nil!51868)) lt!1814956))))

(assert (=> d!1474607 true))

(declare-fun _$30!140 () Unit!117676)

(assert (=> d!1474607 (= (choose!31943 lt!1814956 lt!1814957 (ListMap!4530 Nil!51868)) _$30!140)))

(declare-fun bs!1059672 () Bool)

(assert (= bs!1059672 d!1474607))

(assert (=> bs!1059672 m!5526981))

(assert (=> bs!1059672 m!5526999))

(assert (=> bs!1059672 m!5526999))

(assert (=> bs!1059672 m!5527487))

(assert (=> bs!1059672 m!5526981))

(assert (=> bs!1059672 m!5527487))

(assert (=> bs!1059672 m!5527489))

(assert (=> d!1474459 d!1474607))

(assert (=> d!1474459 d!1474425))

(declare-fun bs!1059673 () Bool)

(declare-fun b!4652135 () Bool)

(assert (= bs!1059673 (and b!4652135 b!4651970)))

(declare-fun lambda!198616 () Int)

(assert (=> bs!1059673 (= (= (extractMap!1686 (t!359101 lt!1814954)) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198616 lambda!198605))))

(declare-fun bs!1059674 () Bool)

(assert (= bs!1059674 (and b!4652135 d!1474461)))

(assert (=> bs!1059674 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815328) (= lambda!198616 lambda!198588))))

(declare-fun bs!1059675 () Bool)

(assert (= bs!1059675 (and b!4652135 b!4651851)))

(assert (=> bs!1059675 (= (= (extractMap!1686 (t!359101 lt!1814954)) (ListMap!4530 Nil!51868)) (= lambda!198616 lambda!198586))))

(declare-fun bs!1059676 () Bool)

(assert (= bs!1059676 (and b!4652135 b!4651845)))

(assert (=> bs!1059676 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1814962) (= lambda!198616 lambda!198580))))

(declare-fun bs!1059677 () Bool)

(assert (= bs!1059677 (and b!4652135 b!4651971)))

(assert (=> bs!1059677 (= (= (extractMap!1686 (t!359101 lt!1814954)) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198616 lambda!198604))))

(declare-fun bs!1059678 () Bool)

(assert (= bs!1059678 (and b!4652135 d!1474531)))

(assert (=> bs!1059678 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815423) (= lambda!198616 lambda!198607))))

(declare-fun bs!1059679 () Bool)

(assert (= bs!1059679 (and b!4652135 d!1474455)))

(assert (=> bs!1059679 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815303) (= lambda!198616 lambda!198583))))

(declare-fun bs!1059680 () Bool)

(assert (= bs!1059680 (and b!4652135 b!4651862)))

(assert (=> bs!1059680 (= (= (extractMap!1686 (t!359101 lt!1814954)) (ListMap!4530 Nil!51868)) (= lambda!198616 lambda!198590))))

(declare-fun bs!1059681 () Bool)

(assert (= bs!1059681 (and b!4652135 d!1474445)))

(assert (=> bs!1059681 (not (= lambda!198616 lambda!198577))))

(assert (=> bs!1059675 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815338) (= lambda!198616 lambda!198587))))

(assert (=> bs!1059673 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815433) (= lambda!198616 lambda!198606))))

(declare-fun bs!1059682 () Bool)

(assert (= bs!1059682 (and b!4652135 b!4651772)))

(assert (=> bs!1059682 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815244) (= lambda!198616 lambda!198569))))

(declare-fun bs!1059683 () Bool)

(assert (= bs!1059683 (and b!4652135 b!4651765)))

(assert (=> bs!1059683 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815223) (= lambda!198616 lambda!198564))))

(declare-fun bs!1059684 () Bool)

(assert (= bs!1059684 (and b!4652135 b!4651844)))

(assert (=> bs!1059684 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815313) (= lambda!198616 lambda!198582))))

(declare-fun bs!1059685 () Bool)

(assert (= bs!1059685 (and b!4652135 d!1474503)))

(assert (=> bs!1059685 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815313) (= lambda!198616 lambda!198603))))

(declare-fun bs!1059686 () Bool)

(assert (= bs!1059686 (and b!4652135 b!4651852)))

(assert (=> bs!1059686 (= (= (extractMap!1686 (t!359101 lt!1814954)) (ListMap!4530 Nil!51868)) (= lambda!198616 lambda!198585))))

(declare-fun bs!1059687 () Bool)

(assert (= bs!1059687 (and b!4652135 d!1474391)))

(assert (=> bs!1059687 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815213) (= lambda!198616 lambda!198566))))

(declare-fun bs!1059688 () Bool)

(assert (= bs!1059688 (and b!4652135 d!1474365)))

(assert (=> bs!1059688 (not (= lambda!198616 lambda!198476))))

(declare-fun bs!1059689 () Bool)

(assert (= bs!1059689 (and b!4652135 b!4651766)))

(assert (=> bs!1059689 (= (= (extractMap!1686 (t!359101 lt!1814954)) (ListMap!4530 Nil!51868)) (= lambda!198616 lambda!198562))))

(declare-fun bs!1059690 () Bool)

(assert (= bs!1059690 (and b!4652135 d!1474467)))

(assert (=> bs!1059690 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815361) (= lambda!198616 lambda!198592))))

(assert (=> bs!1059683 (= (= (extractMap!1686 (t!359101 lt!1814954)) (ListMap!4530 Nil!51868)) (= lambda!198616 lambda!198563))))

(declare-fun bs!1059691 () Bool)

(assert (= bs!1059691 (and b!4652135 b!4651773)))

(assert (=> bs!1059691 (= (= (extractMap!1686 (t!359101 lt!1814954)) (ListMap!4530 Nil!51868)) (= lambda!198616 lambda!198567))))

(declare-fun bs!1059692 () Bool)

(assert (= bs!1059692 (and b!4652135 b!4651863)))

(assert (=> bs!1059692 (= (= (extractMap!1686 (t!359101 lt!1814954)) (ListMap!4530 Nil!51868)) (= lambda!198616 lambda!198589))))

(assert (=> bs!1059682 (= (= (extractMap!1686 (t!359101 lt!1814954)) (ListMap!4530 Nil!51868)) (= lambda!198616 lambda!198568))))

(assert (=> bs!1059684 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1814962) (= lambda!198616 lambda!198581))))

(declare-fun bs!1059693 () Bool)

(assert (= bs!1059693 (and b!4652135 d!1474425)))

(assert (=> bs!1059693 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815234) (= lambda!198616 lambda!198570))))

(assert (=> bs!1059680 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815371) (= lambda!198616 lambda!198591))))

(assert (=> b!4652135 true))

(declare-fun bs!1059694 () Bool)

(declare-fun b!4652134 () Bool)

(assert (= bs!1059694 (and b!4652134 b!4651970)))

(declare-fun lambda!198617 () Int)

(assert (=> bs!1059694 (= (= (extractMap!1686 (t!359101 lt!1814954)) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198617 lambda!198605))))

(declare-fun bs!1059695 () Bool)

(assert (= bs!1059695 (and b!4652134 d!1474461)))

(assert (=> bs!1059695 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815328) (= lambda!198617 lambda!198588))))

(declare-fun bs!1059696 () Bool)

(assert (= bs!1059696 (and b!4652134 b!4651851)))

(assert (=> bs!1059696 (= (= (extractMap!1686 (t!359101 lt!1814954)) (ListMap!4530 Nil!51868)) (= lambda!198617 lambda!198586))))

(declare-fun bs!1059697 () Bool)

(assert (= bs!1059697 (and b!4652134 b!4651845)))

(assert (=> bs!1059697 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1814962) (= lambda!198617 lambda!198580))))

(declare-fun bs!1059698 () Bool)

(assert (= bs!1059698 (and b!4652134 b!4651971)))

(assert (=> bs!1059698 (= (= (extractMap!1686 (t!359101 lt!1814954)) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198617 lambda!198604))))

(declare-fun bs!1059699 () Bool)

(assert (= bs!1059699 (and b!4652134 d!1474531)))

(assert (=> bs!1059699 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815423) (= lambda!198617 lambda!198607))))

(declare-fun bs!1059700 () Bool)

(assert (= bs!1059700 (and b!4652134 d!1474455)))

(assert (=> bs!1059700 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815303) (= lambda!198617 lambda!198583))))

(declare-fun bs!1059701 () Bool)

(assert (= bs!1059701 (and b!4652134 b!4651862)))

(assert (=> bs!1059701 (= (= (extractMap!1686 (t!359101 lt!1814954)) (ListMap!4530 Nil!51868)) (= lambda!198617 lambda!198590))))

(declare-fun bs!1059702 () Bool)

(assert (= bs!1059702 (and b!4652134 d!1474445)))

(assert (=> bs!1059702 (not (= lambda!198617 lambda!198577))))

(assert (=> bs!1059696 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815338) (= lambda!198617 lambda!198587))))

(assert (=> bs!1059694 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815433) (= lambda!198617 lambda!198606))))

(declare-fun bs!1059703 () Bool)

(assert (= bs!1059703 (and b!4652134 b!4651772)))

(assert (=> bs!1059703 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815244) (= lambda!198617 lambda!198569))))

(declare-fun bs!1059704 () Bool)

(assert (= bs!1059704 (and b!4652134 b!4651765)))

(assert (=> bs!1059704 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815223) (= lambda!198617 lambda!198564))))

(declare-fun bs!1059705 () Bool)

(assert (= bs!1059705 (and b!4652134 b!4651844)))

(assert (=> bs!1059705 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815313) (= lambda!198617 lambda!198582))))

(declare-fun bs!1059706 () Bool)

(assert (= bs!1059706 (and b!4652134 d!1474503)))

(assert (=> bs!1059706 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815313) (= lambda!198617 lambda!198603))))

(declare-fun bs!1059707 () Bool)

(assert (= bs!1059707 (and b!4652134 b!4651852)))

(assert (=> bs!1059707 (= (= (extractMap!1686 (t!359101 lt!1814954)) (ListMap!4530 Nil!51868)) (= lambda!198617 lambda!198585))))

(declare-fun bs!1059708 () Bool)

(assert (= bs!1059708 (and b!4652134 d!1474391)))

(assert (=> bs!1059708 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815213) (= lambda!198617 lambda!198566))))

(declare-fun bs!1059709 () Bool)

(assert (= bs!1059709 (and b!4652134 d!1474365)))

(assert (=> bs!1059709 (not (= lambda!198617 lambda!198476))))

(declare-fun bs!1059710 () Bool)

(assert (= bs!1059710 (and b!4652134 b!4651766)))

(assert (=> bs!1059710 (= (= (extractMap!1686 (t!359101 lt!1814954)) (ListMap!4530 Nil!51868)) (= lambda!198617 lambda!198562))))

(declare-fun bs!1059711 () Bool)

(assert (= bs!1059711 (and b!4652134 d!1474467)))

(assert (=> bs!1059711 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815361) (= lambda!198617 lambda!198592))))

(assert (=> bs!1059704 (= (= (extractMap!1686 (t!359101 lt!1814954)) (ListMap!4530 Nil!51868)) (= lambda!198617 lambda!198563))))

(declare-fun bs!1059712 () Bool)

(assert (= bs!1059712 (and b!4652134 b!4652135)))

(assert (=> bs!1059712 (= lambda!198617 lambda!198616)))

(declare-fun bs!1059713 () Bool)

(assert (= bs!1059713 (and b!4652134 b!4651773)))

(assert (=> bs!1059713 (= (= (extractMap!1686 (t!359101 lt!1814954)) (ListMap!4530 Nil!51868)) (= lambda!198617 lambda!198567))))

(declare-fun bs!1059714 () Bool)

(assert (= bs!1059714 (and b!4652134 b!4651863)))

(assert (=> bs!1059714 (= (= (extractMap!1686 (t!359101 lt!1814954)) (ListMap!4530 Nil!51868)) (= lambda!198617 lambda!198589))))

(assert (=> bs!1059703 (= (= (extractMap!1686 (t!359101 lt!1814954)) (ListMap!4530 Nil!51868)) (= lambda!198617 lambda!198568))))

(assert (=> bs!1059705 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1814962) (= lambda!198617 lambda!198581))))

(declare-fun bs!1059715 () Bool)

(assert (= bs!1059715 (and b!4652134 d!1474425)))

(assert (=> bs!1059715 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815234) (= lambda!198617 lambda!198570))))

(assert (=> bs!1059701 (= (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815371) (= lambda!198617 lambda!198591))))

(assert (=> b!4652134 true))

(declare-fun lambda!198618 () Int)

(declare-fun lt!1815549 () ListMap!4529)

(assert (=> bs!1059695 (= (= lt!1815549 lt!1815328) (= lambda!198618 lambda!198588))))

(assert (=> bs!1059696 (= (= lt!1815549 (ListMap!4530 Nil!51868)) (= lambda!198618 lambda!198586))))

(assert (=> bs!1059697 (= (= lt!1815549 lt!1814962) (= lambda!198618 lambda!198580))))

(assert (=> bs!1059698 (= (= lt!1815549 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198618 lambda!198604))))

(assert (=> bs!1059699 (= (= lt!1815549 lt!1815423) (= lambda!198618 lambda!198607))))

(assert (=> bs!1059700 (= (= lt!1815549 lt!1815303) (= lambda!198618 lambda!198583))))

(assert (=> bs!1059701 (= (= lt!1815549 (ListMap!4530 Nil!51868)) (= lambda!198618 lambda!198590))))

(assert (=> bs!1059702 (not (= lambda!198618 lambda!198577))))

(assert (=> bs!1059696 (= (= lt!1815549 lt!1815338) (= lambda!198618 lambda!198587))))

(assert (=> bs!1059694 (= (= lt!1815549 lt!1815433) (= lambda!198618 lambda!198606))))

(assert (=> bs!1059703 (= (= lt!1815549 lt!1815244) (= lambda!198618 lambda!198569))))

(assert (=> bs!1059694 (= (= lt!1815549 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198618 lambda!198605))))

(assert (=> b!4652134 (= (= lt!1815549 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198618 lambda!198617))))

(assert (=> bs!1059704 (= (= lt!1815549 lt!1815223) (= lambda!198618 lambda!198564))))

(assert (=> bs!1059705 (= (= lt!1815549 lt!1815313) (= lambda!198618 lambda!198582))))

(assert (=> bs!1059706 (= (= lt!1815549 lt!1815313) (= lambda!198618 lambda!198603))))

(assert (=> bs!1059707 (= (= lt!1815549 (ListMap!4530 Nil!51868)) (= lambda!198618 lambda!198585))))

(assert (=> bs!1059708 (= (= lt!1815549 lt!1815213) (= lambda!198618 lambda!198566))))

(assert (=> bs!1059709 (not (= lambda!198618 lambda!198476))))

(assert (=> bs!1059710 (= (= lt!1815549 (ListMap!4530 Nil!51868)) (= lambda!198618 lambda!198562))))

(assert (=> bs!1059711 (= (= lt!1815549 lt!1815361) (= lambda!198618 lambda!198592))))

(assert (=> bs!1059704 (= (= lt!1815549 (ListMap!4530 Nil!51868)) (= lambda!198618 lambda!198563))))

(assert (=> bs!1059712 (= (= lt!1815549 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198618 lambda!198616))))

(assert (=> bs!1059713 (= (= lt!1815549 (ListMap!4530 Nil!51868)) (= lambda!198618 lambda!198567))))

(assert (=> bs!1059714 (= (= lt!1815549 (ListMap!4530 Nil!51868)) (= lambda!198618 lambda!198589))))

(assert (=> bs!1059703 (= (= lt!1815549 (ListMap!4530 Nil!51868)) (= lambda!198618 lambda!198568))))

(assert (=> bs!1059705 (= (= lt!1815549 lt!1814962) (= lambda!198618 lambda!198581))))

(assert (=> bs!1059715 (= (= lt!1815549 lt!1815234) (= lambda!198618 lambda!198570))))

(assert (=> bs!1059701 (= (= lt!1815549 lt!1815371) (= lambda!198618 lambda!198591))))

(assert (=> b!4652134 true))

(declare-fun bs!1059716 () Bool)

(declare-fun d!1474629 () Bool)

(assert (= bs!1059716 (and d!1474629 d!1474461)))

(declare-fun lt!1815539 () ListMap!4529)

(declare-fun lambda!198623 () Int)

(assert (=> bs!1059716 (= (= lt!1815539 lt!1815328) (= lambda!198623 lambda!198588))))

(declare-fun bs!1059717 () Bool)

(assert (= bs!1059717 (and d!1474629 b!4651851)))

(assert (=> bs!1059717 (= (= lt!1815539 (ListMap!4530 Nil!51868)) (= lambda!198623 lambda!198586))))

(declare-fun bs!1059718 () Bool)

(assert (= bs!1059718 (and d!1474629 b!4651971)))

(assert (=> bs!1059718 (= (= lt!1815539 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198623 lambda!198604))))

(declare-fun bs!1059719 () Bool)

(assert (= bs!1059719 (and d!1474629 d!1474531)))

(assert (=> bs!1059719 (= (= lt!1815539 lt!1815423) (= lambda!198623 lambda!198607))))

(declare-fun bs!1059720 () Bool)

(assert (= bs!1059720 (and d!1474629 d!1474455)))

(assert (=> bs!1059720 (= (= lt!1815539 lt!1815303) (= lambda!198623 lambda!198583))))

(declare-fun bs!1059721 () Bool)

(assert (= bs!1059721 (and d!1474629 b!4651862)))

(assert (=> bs!1059721 (= (= lt!1815539 (ListMap!4530 Nil!51868)) (= lambda!198623 lambda!198590))))

(declare-fun bs!1059722 () Bool)

(assert (= bs!1059722 (and d!1474629 d!1474445)))

(assert (=> bs!1059722 (not (= lambda!198623 lambda!198577))))

(assert (=> bs!1059717 (= (= lt!1815539 lt!1815338) (= lambda!198623 lambda!198587))))

(declare-fun bs!1059725 () Bool)

(assert (= bs!1059725 (and d!1474629 b!4651970)))

(assert (=> bs!1059725 (= (= lt!1815539 lt!1815433) (= lambda!198623 lambda!198606))))

(declare-fun bs!1059727 () Bool)

(assert (= bs!1059727 (and d!1474629 b!4651772)))

(assert (=> bs!1059727 (= (= lt!1815539 lt!1815244) (= lambda!198623 lambda!198569))))

(assert (=> bs!1059725 (= (= lt!1815539 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198623 lambda!198605))))

(declare-fun bs!1059729 () Bool)

(assert (= bs!1059729 (and d!1474629 b!4652134)))

(assert (=> bs!1059729 (= (= lt!1815539 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198623 lambda!198617))))

(declare-fun bs!1059731 () Bool)

(assert (= bs!1059731 (and d!1474629 b!4651765)))

(assert (=> bs!1059731 (= (= lt!1815539 lt!1815223) (= lambda!198623 lambda!198564))))

(declare-fun bs!1059733 () Bool)

(assert (= bs!1059733 (and d!1474629 b!4651844)))

(assert (=> bs!1059733 (= (= lt!1815539 lt!1815313) (= lambda!198623 lambda!198582))))

(declare-fun bs!1059735 () Bool)

(assert (= bs!1059735 (and d!1474629 d!1474503)))

(assert (=> bs!1059735 (= (= lt!1815539 lt!1815313) (= lambda!198623 lambda!198603))))

(declare-fun bs!1059736 () Bool)

(assert (= bs!1059736 (and d!1474629 b!4651852)))

(assert (=> bs!1059736 (= (= lt!1815539 (ListMap!4530 Nil!51868)) (= lambda!198623 lambda!198585))))

(declare-fun bs!1059738 () Bool)

(assert (= bs!1059738 (and d!1474629 d!1474391)))

(assert (=> bs!1059738 (= (= lt!1815539 lt!1815213) (= lambda!198623 lambda!198566))))

(declare-fun bs!1059740 () Bool)

(assert (= bs!1059740 (and d!1474629 d!1474365)))

(assert (=> bs!1059740 (not (= lambda!198623 lambda!198476))))

(assert (=> bs!1059729 (= (= lt!1815539 lt!1815549) (= lambda!198623 lambda!198618))))

(declare-fun bs!1059742 () Bool)

(assert (= bs!1059742 (and d!1474629 b!4651845)))

(assert (=> bs!1059742 (= (= lt!1815539 lt!1814962) (= lambda!198623 lambda!198580))))

(declare-fun bs!1059744 () Bool)

(assert (= bs!1059744 (and d!1474629 b!4651766)))

(assert (=> bs!1059744 (= (= lt!1815539 (ListMap!4530 Nil!51868)) (= lambda!198623 lambda!198562))))

(declare-fun bs!1059745 () Bool)

(assert (= bs!1059745 (and d!1474629 d!1474467)))

(assert (=> bs!1059745 (= (= lt!1815539 lt!1815361) (= lambda!198623 lambda!198592))))

(assert (=> bs!1059731 (= (= lt!1815539 (ListMap!4530 Nil!51868)) (= lambda!198623 lambda!198563))))

(declare-fun bs!1059748 () Bool)

(assert (= bs!1059748 (and d!1474629 b!4652135)))

(assert (=> bs!1059748 (= (= lt!1815539 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198623 lambda!198616))))

(declare-fun bs!1059750 () Bool)

(assert (= bs!1059750 (and d!1474629 b!4651773)))

(assert (=> bs!1059750 (= (= lt!1815539 (ListMap!4530 Nil!51868)) (= lambda!198623 lambda!198567))))

(declare-fun bs!1059751 () Bool)

(assert (= bs!1059751 (and d!1474629 b!4651863)))

(assert (=> bs!1059751 (= (= lt!1815539 (ListMap!4530 Nil!51868)) (= lambda!198623 lambda!198589))))

(assert (=> bs!1059727 (= (= lt!1815539 (ListMap!4530 Nil!51868)) (= lambda!198623 lambda!198568))))

(assert (=> bs!1059733 (= (= lt!1815539 lt!1814962) (= lambda!198623 lambda!198581))))

(declare-fun bs!1059755 () Bool)

(assert (= bs!1059755 (and d!1474629 d!1474425)))

(assert (=> bs!1059755 (= (= lt!1815539 lt!1815234) (= lambda!198623 lambda!198570))))

(assert (=> bs!1059721 (= (= lt!1815539 lt!1815371) (= lambda!198623 lambda!198591))))

(assert (=> d!1474629 true))

(declare-fun e!2902419 () Bool)

(assert (=> d!1474629 e!2902419))

(declare-fun res!1955513 () Bool)

(assert (=> d!1474629 (=> (not res!1955513) (not e!2902419))))

(assert (=> d!1474629 (= res!1955513 (forall!11004 (_2!29778 (h!58005 lt!1814954)) lambda!198623))))

(declare-fun e!2902417 () ListMap!4529)

(assert (=> d!1474629 (= lt!1815539 e!2902417)))

(declare-fun c!796221 () Bool)

(assert (=> d!1474629 (= c!796221 ((_ is Nil!51868) (_2!29778 (h!58005 lt!1814954))))))

(assert (=> d!1474629 (noDuplicateKeys!1630 (_2!29778 (h!58005 lt!1814954)))))

(assert (=> d!1474629 (= (addToMapMapFromBucket!1087 (_2!29778 (h!58005 lt!1814954)) (extractMap!1686 (t!359101 lt!1814954))) lt!1815539)))

(declare-fun b!4652132 () Bool)

(declare-fun res!1955511 () Bool)

(assert (=> b!4652132 (=> (not res!1955511) (not e!2902419))))

(assert (=> b!4652132 (= res!1955511 (forall!11004 (toList!5191 (extractMap!1686 (t!359101 lt!1814954))) lambda!198623))))

(declare-fun call!325017 () Bool)

(declare-fun bm!325011 () Bool)

(assert (=> bm!325011 (= call!325017 (forall!11004 (ite c!796221 (toList!5191 (extractMap!1686 (t!359101 lt!1814954))) (t!359100 (_2!29778 (h!58005 lt!1814954)))) (ite c!796221 lambda!198616 lambda!198618)))))

(declare-fun bm!325012 () Bool)

(declare-fun call!325018 () Bool)

(assert (=> bm!325012 (= call!325018 (forall!11004 (toList!5191 (extractMap!1686 (t!359101 lt!1814954))) (ite c!796221 lambda!198616 lambda!198618)))))

(declare-fun b!4652133 () Bool)

(assert (=> b!4652133 (= e!2902419 (invariantList!1290 (toList!5191 lt!1815539)))))

(assert (=> b!4652134 (= e!2902417 lt!1815549)))

(declare-fun lt!1815544 () ListMap!4529)

(assert (=> b!4652134 (= lt!1815544 (+!1974 (extractMap!1686 (t!359101 lt!1814954)) (h!58004 (_2!29778 (h!58005 lt!1814954)))))))

(assert (=> b!4652134 (= lt!1815549 (addToMapMapFromBucket!1087 (t!359100 (_2!29778 (h!58005 lt!1814954))) (+!1974 (extractMap!1686 (t!359101 lt!1814954)) (h!58004 (_2!29778 (h!58005 lt!1814954))))))))

(declare-fun lt!1815542 () Unit!117676)

(declare-fun call!325016 () Unit!117676)

(assert (=> b!4652134 (= lt!1815542 call!325016)))

(assert (=> b!4652134 (forall!11004 (toList!5191 (extractMap!1686 (t!359101 lt!1814954))) lambda!198617)))

(declare-fun lt!1815552 () Unit!117676)

(assert (=> b!4652134 (= lt!1815552 lt!1815542)))

(assert (=> b!4652134 (forall!11004 (toList!5191 lt!1815544) lambda!198618)))

(declare-fun lt!1815551 () Unit!117676)

(declare-fun Unit!117826 () Unit!117676)

(assert (=> b!4652134 (= lt!1815551 Unit!117826)))

(assert (=> b!4652134 call!325017))

(declare-fun lt!1815543 () Unit!117676)

(declare-fun Unit!117827 () Unit!117676)

(assert (=> b!4652134 (= lt!1815543 Unit!117827)))

(declare-fun lt!1815548 () Unit!117676)

(declare-fun Unit!117828 () Unit!117676)

(assert (=> b!4652134 (= lt!1815548 Unit!117828)))

(declare-fun lt!1815540 () Unit!117676)

(assert (=> b!4652134 (= lt!1815540 (forallContained!3212 (toList!5191 lt!1815544) lambda!198618 (h!58004 (_2!29778 (h!58005 lt!1814954)))))))

(assert (=> b!4652134 (contains!15011 lt!1815544 (_1!29777 (h!58004 (_2!29778 (h!58005 lt!1814954)))))))

(declare-fun lt!1815557 () Unit!117676)

(declare-fun Unit!117829 () Unit!117676)

(assert (=> b!4652134 (= lt!1815557 Unit!117829)))

(assert (=> b!4652134 (contains!15011 lt!1815549 (_1!29777 (h!58004 (_2!29778 (h!58005 lt!1814954)))))))

(declare-fun lt!1815547 () Unit!117676)

(declare-fun Unit!117830 () Unit!117676)

(assert (=> b!4652134 (= lt!1815547 Unit!117830)))

(assert (=> b!4652134 (forall!11004 (_2!29778 (h!58005 lt!1814954)) lambda!198618)))

(declare-fun lt!1815553 () Unit!117676)

(declare-fun Unit!117831 () Unit!117676)

(assert (=> b!4652134 (= lt!1815553 Unit!117831)))

(assert (=> b!4652134 (forall!11004 (toList!5191 lt!1815544) lambda!198618)))

(declare-fun lt!1815550 () Unit!117676)

(declare-fun Unit!117832 () Unit!117676)

(assert (=> b!4652134 (= lt!1815550 Unit!117832)))

(declare-fun lt!1815559 () Unit!117676)

(declare-fun Unit!117833 () Unit!117676)

(assert (=> b!4652134 (= lt!1815559 Unit!117833)))

(declare-fun lt!1815541 () Unit!117676)

(assert (=> b!4652134 (= lt!1815541 (addForallContainsKeyThenBeforeAdding!589 (extractMap!1686 (t!359101 lt!1814954)) lt!1815549 (_1!29777 (h!58004 (_2!29778 (h!58005 lt!1814954)))) (_2!29777 (h!58004 (_2!29778 (h!58005 lt!1814954))))))))

(assert (=> b!4652134 call!325018))

(declare-fun lt!1815546 () Unit!117676)

(assert (=> b!4652134 (= lt!1815546 lt!1815541)))

(assert (=> b!4652134 (forall!11004 (toList!5191 (extractMap!1686 (t!359101 lt!1814954))) lambda!198618)))

(declare-fun lt!1815555 () Unit!117676)

(declare-fun Unit!117834 () Unit!117676)

(assert (=> b!4652134 (= lt!1815555 Unit!117834)))

(declare-fun res!1955512 () Bool)

(assert (=> b!4652134 (= res!1955512 (forall!11004 (_2!29778 (h!58005 lt!1814954)) lambda!198618))))

(declare-fun e!2902418 () Bool)

(assert (=> b!4652134 (=> (not res!1955512) (not e!2902418))))

(assert (=> b!4652134 e!2902418))

(declare-fun lt!1815545 () Unit!117676)

(declare-fun Unit!117835 () Unit!117676)

(assert (=> b!4652134 (= lt!1815545 Unit!117835)))

(assert (=> b!4652135 (= e!2902417 (extractMap!1686 (t!359101 lt!1814954)))))

(declare-fun lt!1815558 () Unit!117676)

(assert (=> b!4652135 (= lt!1815558 call!325016)))

(assert (=> b!4652135 call!325018))

(declare-fun lt!1815556 () Unit!117676)

(assert (=> b!4652135 (= lt!1815556 lt!1815558)))

(assert (=> b!4652135 call!325017))

(declare-fun lt!1815554 () Unit!117676)

(declare-fun Unit!117836 () Unit!117676)

(assert (=> b!4652135 (= lt!1815554 Unit!117836)))

(declare-fun bm!325013 () Bool)

(assert (=> bm!325013 (= call!325016 (lemmaContainsAllItsOwnKeys!590 (extractMap!1686 (t!359101 lt!1814954))))))

(declare-fun b!4652136 () Bool)

(assert (=> b!4652136 (= e!2902418 (forall!11004 (toList!5191 (extractMap!1686 (t!359101 lt!1814954))) lambda!198618))))

(assert (= (and d!1474629 c!796221) b!4652135))

(assert (= (and d!1474629 (not c!796221)) b!4652134))

(assert (= (and b!4652134 res!1955512) b!4652136))

(assert (= (or b!4652135 b!4652134) bm!325013))

(assert (= (or b!4652135 b!4652134) bm!325011))

(assert (= (or b!4652135 b!4652134) bm!325012))

(assert (= (and d!1474629 res!1955513) b!4652132))

(assert (= (and b!4652132 res!1955511) b!4652133))

(declare-fun m!5528083 () Bool)

(assert (=> b!4652136 m!5528083))

(declare-fun m!5528085 () Bool)

(assert (=> b!4652133 m!5528085))

(declare-fun m!5528087 () Bool)

(assert (=> b!4652132 m!5528087))

(assert (=> bm!325013 m!5527441))

(declare-fun m!5528089 () Bool)

(assert (=> bm!325013 m!5528089))

(declare-fun m!5528091 () Bool)

(assert (=> bm!325011 m!5528091))

(declare-fun m!5528093 () Bool)

(assert (=> d!1474629 m!5528093))

(assert (=> d!1474629 m!5527585))

(declare-fun m!5528095 () Bool)

(assert (=> bm!325012 m!5528095))

(declare-fun m!5528101 () Bool)

(assert (=> b!4652134 m!5528101))

(declare-fun m!5528103 () Bool)

(assert (=> b!4652134 m!5528103))

(assert (=> b!4652134 m!5528103))

(declare-fun m!5528105 () Bool)

(assert (=> b!4652134 m!5528105))

(declare-fun m!5528107 () Bool)

(assert (=> b!4652134 m!5528107))

(assert (=> b!4652134 m!5528083))

(declare-fun m!5528109 () Bool)

(assert (=> b!4652134 m!5528109))

(declare-fun m!5528111 () Bool)

(assert (=> b!4652134 m!5528111))

(assert (=> b!4652134 m!5528109))

(assert (=> b!4652134 m!5527441))

(assert (=> b!4652134 m!5528105))

(declare-fun m!5528113 () Bool)

(assert (=> b!4652134 m!5528113))

(assert (=> b!4652134 m!5527441))

(declare-fun m!5528119 () Bool)

(assert (=> b!4652134 m!5528119))

(declare-fun m!5528121 () Bool)

(assert (=> b!4652134 m!5528121))

(assert (=> b!4651840 d!1474629))

(declare-fun bs!1059761 () Bool)

(declare-fun d!1474641 () Bool)

(assert (= bs!1059761 (and d!1474641 d!1474451)))

(declare-fun lambda!198625 () Int)

(assert (=> bs!1059761 (= lambda!198625 lambda!198578)))

(declare-fun bs!1059763 () Bool)

(assert (= bs!1059763 (and d!1474641 d!1474441)))

(assert (=> bs!1059763 (= lambda!198625 lambda!198576)))

(declare-fun bs!1059764 () Bool)

(assert (= bs!1059764 (and d!1474641 b!4651587)))

(assert (=> bs!1059764 (= lambda!198625 lambda!198470)))

(declare-fun bs!1059766 () Bool)

(assert (= bs!1059766 (and d!1474641 d!1474429)))

(assert (=> bs!1059766 (not (= lambda!198625 lambda!198573))))

(declare-fun bs!1059768 () Bool)

(assert (= bs!1059768 (and d!1474641 d!1474453)))

(assert (=> bs!1059768 (= lambda!198625 lambda!198579)))

(declare-fun bs!1059770 () Bool)

(assert (= bs!1059770 (and d!1474641 d!1474457)))

(assert (=> bs!1059770 (= lambda!198625 lambda!198584)))

(declare-fun lt!1815584 () ListMap!4529)

(assert (=> d!1474641 (invariantList!1290 (toList!5191 lt!1815584))))

(declare-fun e!2902429 () ListMap!4529)

(assert (=> d!1474641 (= lt!1815584 e!2902429)))

(declare-fun c!796223 () Bool)

(assert (=> d!1474641 (= c!796223 ((_ is Cons!51869) (t!359101 lt!1814954)))))

(assert (=> d!1474641 (forall!11002 (t!359101 lt!1814954) lambda!198625)))

(assert (=> d!1474641 (= (extractMap!1686 (t!359101 lt!1814954)) lt!1815584)))

(declare-fun b!4652149 () Bool)

(assert (=> b!4652149 (= e!2902429 (addToMapMapFromBucket!1087 (_2!29778 (h!58005 (t!359101 lt!1814954))) (extractMap!1686 (t!359101 (t!359101 lt!1814954)))))))

(declare-fun b!4652150 () Bool)

(assert (=> b!4652150 (= e!2902429 (ListMap!4530 Nil!51868))))

(assert (= (and d!1474641 c!796223) b!4652149))

(assert (= (and d!1474641 (not c!796223)) b!4652150))

(declare-fun m!5528123 () Bool)

(assert (=> d!1474641 m!5528123))

(declare-fun m!5528125 () Bool)

(assert (=> d!1474641 m!5528125))

(declare-fun m!5528127 () Bool)

(assert (=> b!4652149 m!5528127))

(assert (=> b!4652149 m!5528127))

(declare-fun m!5528129 () Bool)

(assert (=> b!4652149 m!5528129))

(assert (=> b!4651840 d!1474641))

(declare-fun d!1474643 () Bool)

(assert (=> d!1474643 (= (invariantList!1290 (toList!5191 lt!1815324)) (noDuplicatedKeys!345 (toList!5191 lt!1815324)))))

(declare-fun bs!1059777 () Bool)

(assert (= bs!1059777 d!1474643))

(declare-fun m!5528131 () Bool)

(assert (=> bs!1059777 m!5528131))

(assert (=> d!1474457 d!1474643))

(declare-fun d!1474645 () Bool)

(declare-fun res!1955523 () Bool)

(declare-fun e!2902430 () Bool)

(assert (=> d!1474645 (=> res!1955523 e!2902430)))

(assert (=> d!1474645 (= res!1955523 ((_ is Nil!51869) Nil!51869))))

(assert (=> d!1474645 (= (forall!11002 Nil!51869 lambda!198584) e!2902430)))

(declare-fun b!4652151 () Bool)

(declare-fun e!2902431 () Bool)

(assert (=> b!4652151 (= e!2902430 e!2902431)))

(declare-fun res!1955524 () Bool)

(assert (=> b!4652151 (=> (not res!1955524) (not e!2902431))))

(assert (=> b!4652151 (= res!1955524 (dynLambda!21574 lambda!198584 (h!58005 Nil!51869)))))

(declare-fun b!4652152 () Bool)

(assert (=> b!4652152 (= e!2902431 (forall!11002 (t!359101 Nil!51869) lambda!198584))))

(assert (= (and d!1474645 (not res!1955523)) b!4652151))

(assert (= (and b!4652151 res!1955524) b!4652152))

(declare-fun b_lambda!173063 () Bool)

(assert (=> (not b_lambda!173063) (not b!4652151)))

(declare-fun m!5528133 () Bool)

(assert (=> b!4652151 m!5528133))

(declare-fun m!5528135 () Bool)

(assert (=> b!4652152 m!5528135))

(assert (=> d!1474457 d!1474645))

(declare-fun d!1474647 () Bool)

(declare-fun lt!1815587 () Bool)

(assert (=> d!1474647 (= lt!1815587 (select (content!8985 (toList!5191 lt!1815384)) (h!58004 oldBucket!40)))))

(declare-fun e!2902436 () Bool)

(assert (=> d!1474647 (= lt!1815587 e!2902436)))

(declare-fun res!1955529 () Bool)

(assert (=> d!1474647 (=> (not res!1955529) (not e!2902436))))

(assert (=> d!1474647 (= res!1955529 ((_ is Cons!51868) (toList!5191 lt!1815384)))))

(assert (=> d!1474647 (= (contains!15015 (toList!5191 lt!1815384) (h!58004 oldBucket!40)) lt!1815587)))

(declare-fun b!4652157 () Bool)

(declare-fun e!2902437 () Bool)

(assert (=> b!4652157 (= e!2902436 e!2902437)))

(declare-fun res!1955530 () Bool)

(assert (=> b!4652157 (=> res!1955530 e!2902437)))

(assert (=> b!4652157 (= res!1955530 (= (h!58004 (toList!5191 lt!1815384)) (h!58004 oldBucket!40)))))

(declare-fun b!4652158 () Bool)

(assert (=> b!4652158 (= e!2902437 (contains!15015 (t!359100 (toList!5191 lt!1815384)) (h!58004 oldBucket!40)))))

(assert (= (and d!1474647 res!1955529) b!4652157))

(assert (= (and b!4652157 (not res!1955530)) b!4652158))

(declare-fun m!5528137 () Bool)

(assert (=> d!1474647 m!5528137))

(declare-fun m!5528139 () Bool)

(assert (=> d!1474647 m!5528139))

(declare-fun m!5528141 () Bool)

(assert (=> b!4652158 m!5528141))

(assert (=> b!4651866 d!1474647))

(declare-fun bs!1059826 () Bool)

(declare-fun d!1474649 () Bool)

(assert (= bs!1059826 (and d!1474649 d!1474461)))

(declare-fun lambda!198632 () Int)

(assert (=> bs!1059826 (= (= (ListMap!4530 Nil!51868) lt!1815328) (= lambda!198632 lambda!198588))))

(declare-fun bs!1059829 () Bool)

(assert (= bs!1059829 (and d!1474649 b!4651851)))

(assert (=> bs!1059829 (= lambda!198632 lambda!198586)))

(declare-fun bs!1059831 () Bool)

(assert (= bs!1059831 (and d!1474649 b!4651971)))

(assert (=> bs!1059831 (= (= (ListMap!4530 Nil!51868) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198632 lambda!198604))))

(declare-fun bs!1059832 () Bool)

(assert (= bs!1059832 (and d!1474649 d!1474629)))

(assert (=> bs!1059832 (= (= (ListMap!4530 Nil!51868) lt!1815539) (= lambda!198632 lambda!198623))))

(declare-fun bs!1059834 () Bool)

(assert (= bs!1059834 (and d!1474649 d!1474531)))

(assert (=> bs!1059834 (= (= (ListMap!4530 Nil!51868) lt!1815423) (= lambda!198632 lambda!198607))))

(declare-fun bs!1059836 () Bool)

(assert (= bs!1059836 (and d!1474649 d!1474455)))

(assert (=> bs!1059836 (= (= (ListMap!4530 Nil!51868) lt!1815303) (= lambda!198632 lambda!198583))))

(declare-fun bs!1059838 () Bool)

(assert (= bs!1059838 (and d!1474649 b!4651862)))

(assert (=> bs!1059838 (= lambda!198632 lambda!198590)))

(declare-fun bs!1059840 () Bool)

(assert (= bs!1059840 (and d!1474649 d!1474445)))

(assert (=> bs!1059840 (not (= lambda!198632 lambda!198577))))

(assert (=> bs!1059829 (= (= (ListMap!4530 Nil!51868) lt!1815338) (= lambda!198632 lambda!198587))))

(declare-fun bs!1059842 () Bool)

(assert (= bs!1059842 (and d!1474649 b!4651970)))

(assert (=> bs!1059842 (= (= (ListMap!4530 Nil!51868) lt!1815433) (= lambda!198632 lambda!198606))))

(declare-fun bs!1059844 () Bool)

(assert (= bs!1059844 (and d!1474649 b!4651772)))

(assert (=> bs!1059844 (= (= (ListMap!4530 Nil!51868) lt!1815244) (= lambda!198632 lambda!198569))))

(assert (=> bs!1059842 (= (= (ListMap!4530 Nil!51868) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198632 lambda!198605))))

(declare-fun bs!1059846 () Bool)

(assert (= bs!1059846 (and d!1474649 b!4652134)))

(assert (=> bs!1059846 (= (= (ListMap!4530 Nil!51868) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198632 lambda!198617))))

(declare-fun bs!1059848 () Bool)

(assert (= bs!1059848 (and d!1474649 b!4651765)))

(assert (=> bs!1059848 (= (= (ListMap!4530 Nil!51868) lt!1815223) (= lambda!198632 lambda!198564))))

(declare-fun bs!1059849 () Bool)

(assert (= bs!1059849 (and d!1474649 b!4651844)))

(assert (=> bs!1059849 (= (= (ListMap!4530 Nil!51868) lt!1815313) (= lambda!198632 lambda!198582))))

(declare-fun bs!1059850 () Bool)

(assert (= bs!1059850 (and d!1474649 d!1474503)))

(assert (=> bs!1059850 (= (= (ListMap!4530 Nil!51868) lt!1815313) (= lambda!198632 lambda!198603))))

(declare-fun bs!1059851 () Bool)

(assert (= bs!1059851 (and d!1474649 b!4651852)))

(assert (=> bs!1059851 (= lambda!198632 lambda!198585)))

(declare-fun bs!1059852 () Bool)

(assert (= bs!1059852 (and d!1474649 d!1474391)))

(assert (=> bs!1059852 (= (= (ListMap!4530 Nil!51868) lt!1815213) (= lambda!198632 lambda!198566))))

(declare-fun bs!1059853 () Bool)

(assert (= bs!1059853 (and d!1474649 d!1474365)))

(assert (=> bs!1059853 (not (= lambda!198632 lambda!198476))))

(assert (=> bs!1059846 (= (= (ListMap!4530 Nil!51868) lt!1815549) (= lambda!198632 lambda!198618))))

(declare-fun bs!1059854 () Bool)

(assert (= bs!1059854 (and d!1474649 b!4651845)))

(assert (=> bs!1059854 (= (= (ListMap!4530 Nil!51868) lt!1814962) (= lambda!198632 lambda!198580))))

(declare-fun bs!1059855 () Bool)

(assert (= bs!1059855 (and d!1474649 b!4651766)))

(assert (=> bs!1059855 (= lambda!198632 lambda!198562)))

(declare-fun bs!1059856 () Bool)

(assert (= bs!1059856 (and d!1474649 d!1474467)))

(assert (=> bs!1059856 (= (= (ListMap!4530 Nil!51868) lt!1815361) (= lambda!198632 lambda!198592))))

(assert (=> bs!1059848 (= lambda!198632 lambda!198563)))

(declare-fun bs!1059857 () Bool)

(assert (= bs!1059857 (and d!1474649 b!4652135)))

(assert (=> bs!1059857 (= (= (ListMap!4530 Nil!51868) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198632 lambda!198616))))

(declare-fun bs!1059858 () Bool)

(assert (= bs!1059858 (and d!1474649 b!4651773)))

(assert (=> bs!1059858 (= lambda!198632 lambda!198567)))

(declare-fun bs!1059859 () Bool)

(assert (= bs!1059859 (and d!1474649 b!4651863)))

(assert (=> bs!1059859 (= lambda!198632 lambda!198589)))

(assert (=> bs!1059844 (= lambda!198632 lambda!198568)))

(assert (=> bs!1059849 (= (= (ListMap!4530 Nil!51868) lt!1814962) (= lambda!198632 lambda!198581))))

(declare-fun bs!1059860 () Bool)

(assert (= bs!1059860 (and d!1474649 d!1474425)))

(assert (=> bs!1059860 (= (= (ListMap!4530 Nil!51868) lt!1815234) (= lambda!198632 lambda!198570))))

(assert (=> bs!1059838 (= (= (ListMap!4530 Nil!51868) lt!1815371) (= lambda!198632 lambda!198591))))

(assert (=> d!1474649 true))

(assert (=> d!1474649 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198632)))

(declare-fun lt!1815590 () Unit!117676)

(declare-fun choose!31954 (ListMap!4529) Unit!117676)

(assert (=> d!1474649 (= lt!1815590 (choose!31954 (ListMap!4530 Nil!51868)))))

(assert (=> d!1474649 (= (lemmaContainsAllItsOwnKeys!590 (ListMap!4530 Nil!51868)) lt!1815590)))

(declare-fun bs!1059861 () Bool)

(assert (= bs!1059861 d!1474649))

(declare-fun m!5528143 () Bool)

(assert (=> bs!1059861 m!5528143))

(declare-fun m!5528145 () Bool)

(assert (=> bs!1059861 m!5528145))

(assert (=> bm!324976 d!1474649))

(declare-fun d!1474651 () Bool)

(declare-fun res!1955531 () Bool)

(declare-fun e!2902438 () Bool)

(assert (=> d!1474651 (=> res!1955531 e!2902438)))

(assert (=> d!1474651 (= res!1955531 ((_ is Nil!51868) (toList!5191 (ListMap!4530 Nil!51868))))))

(assert (=> d!1474651 (= (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198566) e!2902438)))

(declare-fun b!4652159 () Bool)

(declare-fun e!2902439 () Bool)

(assert (=> b!4652159 (= e!2902438 e!2902439)))

(declare-fun res!1955532 () Bool)

(assert (=> b!4652159 (=> (not res!1955532) (not e!2902439))))

(assert (=> b!4652159 (= res!1955532 (dynLambda!21575 lambda!198566 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))))))

(declare-fun b!4652160 () Bool)

(assert (=> b!4652160 (= e!2902439 (forall!11004 (t!359100 (toList!5191 (ListMap!4530 Nil!51868))) lambda!198566))))

(assert (= (and d!1474651 (not res!1955531)) b!4652159))

(assert (= (and b!4652159 res!1955532) b!4652160))

(declare-fun b_lambda!173065 () Bool)

(assert (=> (not b_lambda!173065) (not b!4652159)))

(declare-fun m!5528173 () Bool)

(assert (=> b!4652159 m!5528173))

(declare-fun m!5528177 () Bool)

(assert (=> b!4652160 m!5528177))

(assert (=> b!4651763 d!1474651))

(declare-fun d!1474653 () Bool)

(declare-fun res!1955533 () Bool)

(declare-fun e!2902440 () Bool)

(assert (=> d!1474653 (=> res!1955533 e!2902440)))

(assert (=> d!1474653 (= res!1955533 ((_ is Nil!51868) (toList!5191 (ListMap!4530 Nil!51868))))))

(assert (=> d!1474653 (= (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198592) e!2902440)))

(declare-fun b!4652161 () Bool)

(declare-fun e!2902442 () Bool)

(assert (=> b!4652161 (= e!2902440 e!2902442)))

(declare-fun res!1955534 () Bool)

(assert (=> b!4652161 (=> (not res!1955534) (not e!2902442))))

(assert (=> b!4652161 (= res!1955534 (dynLambda!21575 lambda!198592 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))))))

(declare-fun b!4652162 () Bool)

(assert (=> b!4652162 (= e!2902442 (forall!11004 (t!359100 (toList!5191 (ListMap!4530 Nil!51868))) lambda!198592))))

(assert (= (and d!1474653 (not res!1955533)) b!4652161))

(assert (= (and b!4652161 res!1955534) b!4652162))

(declare-fun b_lambda!173067 () Bool)

(assert (=> (not b_lambda!173067) (not b!4652161)))

(declare-fun m!5528183 () Bool)

(assert (=> b!4652161 m!5528183))

(declare-fun m!5528185 () Bool)

(assert (=> b!4652162 m!5528185))

(assert (=> b!4651860 d!1474653))

(declare-fun d!1474657 () Bool)

(declare-fun res!1955538 () Bool)

(declare-fun e!2902448 () Bool)

(assert (=> d!1474657 (=> res!1955538 e!2902448)))

(assert (=> d!1474657 (= res!1955538 ((_ is Nil!51868) (toList!5191 (ListMap!4530 Nil!51868))))))

(assert (=> d!1474657 (= (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) (ite c!796150 lambda!198567 lambda!198569)) e!2902448)))

(declare-fun b!4652172 () Bool)

(declare-fun e!2902449 () Bool)

(assert (=> b!4652172 (= e!2902448 e!2902449)))

(declare-fun res!1955539 () Bool)

(assert (=> b!4652172 (=> (not res!1955539) (not e!2902449))))

(assert (=> b!4652172 (= res!1955539 (dynLambda!21575 (ite c!796150 lambda!198567 lambda!198569) (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))))))

(declare-fun b!4652173 () Bool)

(assert (=> b!4652173 (= e!2902449 (forall!11004 (t!359100 (toList!5191 (ListMap!4530 Nil!51868))) (ite c!796150 lambda!198567 lambda!198569)))))

(assert (= (and d!1474657 (not res!1955538)) b!4652172))

(assert (= (and b!4652172 res!1955539) b!4652173))

(declare-fun b_lambda!173069 () Bool)

(assert (=> (not b_lambda!173069) (not b!4652172)))

(declare-fun m!5528207 () Bool)

(assert (=> b!4652172 m!5528207))

(declare-fun m!5528209 () Bool)

(assert (=> b!4652173 m!5528209))

(assert (=> bm!324975 d!1474657))

(declare-fun d!1474661 () Bool)

(declare-fun lt!1815599 () Bool)

(assert (=> d!1474661 (= lt!1815599 (select (content!8985 (toList!5191 lt!1815359)) lt!1814956))))

(declare-fun e!2902450 () Bool)

(assert (=> d!1474661 (= lt!1815599 e!2902450)))

(declare-fun res!1955540 () Bool)

(assert (=> d!1474661 (=> (not res!1955540) (not e!2902450))))

(assert (=> d!1474661 (= res!1955540 ((_ is Cons!51868) (toList!5191 lt!1815359)))))

(assert (=> d!1474661 (= (contains!15015 (toList!5191 lt!1815359) lt!1814956) lt!1815599)))

(declare-fun b!4652174 () Bool)

(declare-fun e!2902451 () Bool)

(assert (=> b!4652174 (= e!2902450 e!2902451)))

(declare-fun res!1955541 () Bool)

(assert (=> b!4652174 (=> res!1955541 e!2902451)))

(assert (=> b!4652174 (= res!1955541 (= (h!58004 (toList!5191 lt!1815359)) lt!1814956))))

(declare-fun b!4652175 () Bool)

(assert (=> b!4652175 (= e!2902451 (contains!15015 (t!359100 (toList!5191 lt!1815359)) lt!1814956))))

(assert (= (and d!1474661 res!1955540) b!4652174))

(assert (= (and b!4652174 (not res!1955541)) b!4652175))

(declare-fun m!5528211 () Bool)

(assert (=> d!1474661 m!5528211))

(declare-fun m!5528213 () Bool)

(assert (=> d!1474661 m!5528213))

(declare-fun m!5528215 () Bool)

(assert (=> b!4652175 m!5528215))

(assert (=> b!4651859 d!1474661))

(declare-fun bs!1059862 () Bool)

(declare-fun d!1474663 () Bool)

(assert (= bs!1059862 (and d!1474663 d!1474461)))

(declare-fun lambda!198633 () Int)

(assert (=> bs!1059862 (= (= lt!1814962 lt!1815328) (= lambda!198633 lambda!198588))))

(declare-fun bs!1059863 () Bool)

(assert (= bs!1059863 (and d!1474663 b!4651851)))

(assert (=> bs!1059863 (= (= lt!1814962 (ListMap!4530 Nil!51868)) (= lambda!198633 lambda!198586))))

(declare-fun bs!1059864 () Bool)

(assert (= bs!1059864 (and d!1474663 d!1474629)))

(assert (=> bs!1059864 (= (= lt!1814962 lt!1815539) (= lambda!198633 lambda!198623))))

(declare-fun bs!1059865 () Bool)

(assert (= bs!1059865 (and d!1474663 d!1474531)))

(assert (=> bs!1059865 (= (= lt!1814962 lt!1815423) (= lambda!198633 lambda!198607))))

(declare-fun bs!1059866 () Bool)

(assert (= bs!1059866 (and d!1474663 d!1474455)))

(assert (=> bs!1059866 (= (= lt!1814962 lt!1815303) (= lambda!198633 lambda!198583))))

(declare-fun bs!1059867 () Bool)

(assert (= bs!1059867 (and d!1474663 b!4651862)))

(assert (=> bs!1059867 (= (= lt!1814962 (ListMap!4530 Nil!51868)) (= lambda!198633 lambda!198590))))

(declare-fun bs!1059868 () Bool)

(assert (= bs!1059868 (and d!1474663 d!1474445)))

(assert (=> bs!1059868 (not (= lambda!198633 lambda!198577))))

(assert (=> bs!1059863 (= (= lt!1814962 lt!1815338) (= lambda!198633 lambda!198587))))

(declare-fun bs!1059869 () Bool)

(assert (= bs!1059869 (and d!1474663 b!4651970)))

(assert (=> bs!1059869 (= (= lt!1814962 lt!1815433) (= lambda!198633 lambda!198606))))

(declare-fun bs!1059870 () Bool)

(assert (= bs!1059870 (and d!1474663 b!4651772)))

(assert (=> bs!1059870 (= (= lt!1814962 lt!1815244) (= lambda!198633 lambda!198569))))

(assert (=> bs!1059869 (= (= lt!1814962 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198633 lambda!198605))))

(declare-fun bs!1059871 () Bool)

(assert (= bs!1059871 (and d!1474663 b!4652134)))

(assert (=> bs!1059871 (= (= lt!1814962 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198633 lambda!198617))))

(declare-fun bs!1059872 () Bool)

(assert (= bs!1059872 (and d!1474663 b!4651765)))

(assert (=> bs!1059872 (= (= lt!1814962 lt!1815223) (= lambda!198633 lambda!198564))))

(declare-fun bs!1059873 () Bool)

(assert (= bs!1059873 (and d!1474663 b!4651844)))

(assert (=> bs!1059873 (= (= lt!1814962 lt!1815313) (= lambda!198633 lambda!198582))))

(declare-fun bs!1059874 () Bool)

(assert (= bs!1059874 (and d!1474663 d!1474503)))

(assert (=> bs!1059874 (= (= lt!1814962 lt!1815313) (= lambda!198633 lambda!198603))))

(declare-fun bs!1059875 () Bool)

(assert (= bs!1059875 (and d!1474663 b!4651852)))

(assert (=> bs!1059875 (= (= lt!1814962 (ListMap!4530 Nil!51868)) (= lambda!198633 lambda!198585))))

(declare-fun bs!1059876 () Bool)

(assert (= bs!1059876 (and d!1474663 d!1474391)))

(assert (=> bs!1059876 (= (= lt!1814962 lt!1815213) (= lambda!198633 lambda!198566))))

(declare-fun bs!1059877 () Bool)

(assert (= bs!1059877 (and d!1474663 d!1474365)))

(assert (=> bs!1059877 (not (= lambda!198633 lambda!198476))))

(assert (=> bs!1059871 (= (= lt!1814962 lt!1815549) (= lambda!198633 lambda!198618))))

(declare-fun bs!1059878 () Bool)

(assert (= bs!1059878 (and d!1474663 b!4651845)))

(assert (=> bs!1059878 (= lambda!198633 lambda!198580)))

(declare-fun bs!1059879 () Bool)

(assert (= bs!1059879 (and d!1474663 b!4651766)))

(assert (=> bs!1059879 (= (= lt!1814962 (ListMap!4530 Nil!51868)) (= lambda!198633 lambda!198562))))

(declare-fun bs!1059880 () Bool)

(assert (= bs!1059880 (and d!1474663 d!1474467)))

(assert (=> bs!1059880 (= (= lt!1814962 lt!1815361) (= lambda!198633 lambda!198592))))

(declare-fun bs!1059881 () Bool)

(assert (= bs!1059881 (and d!1474663 b!4651971)))

(assert (=> bs!1059881 (= (= lt!1814962 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198633 lambda!198604))))

(declare-fun bs!1059882 () Bool)

(assert (= bs!1059882 (and d!1474663 d!1474649)))

(assert (=> bs!1059882 (= (= lt!1814962 (ListMap!4530 Nil!51868)) (= lambda!198633 lambda!198632))))

(assert (=> bs!1059872 (= (= lt!1814962 (ListMap!4530 Nil!51868)) (= lambda!198633 lambda!198563))))

(declare-fun bs!1059883 () Bool)

(assert (= bs!1059883 (and d!1474663 b!4652135)))

(assert (=> bs!1059883 (= (= lt!1814962 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198633 lambda!198616))))

(declare-fun bs!1059884 () Bool)

(assert (= bs!1059884 (and d!1474663 b!4651773)))

(assert (=> bs!1059884 (= (= lt!1814962 (ListMap!4530 Nil!51868)) (= lambda!198633 lambda!198567))))

(declare-fun bs!1059885 () Bool)

(assert (= bs!1059885 (and d!1474663 b!4651863)))

(assert (=> bs!1059885 (= (= lt!1814962 (ListMap!4530 Nil!51868)) (= lambda!198633 lambda!198589))))

(assert (=> bs!1059870 (= (= lt!1814962 (ListMap!4530 Nil!51868)) (= lambda!198633 lambda!198568))))

(assert (=> bs!1059873 (= lambda!198633 lambda!198581)))

(declare-fun bs!1059886 () Bool)

(assert (= bs!1059886 (and d!1474663 d!1474425)))

(assert (=> bs!1059886 (= (= lt!1814962 lt!1815234) (= lambda!198633 lambda!198570))))

(assert (=> bs!1059867 (= (= lt!1814962 lt!1815371) (= lambda!198633 lambda!198591))))

(assert (=> d!1474663 true))

(assert (=> d!1474663 (forall!11004 (toList!5191 lt!1814962) lambda!198633)))

(declare-fun lt!1815600 () Unit!117676)

(assert (=> d!1474663 (= lt!1815600 (choose!31954 lt!1814962))))

(assert (=> d!1474663 (= (lemmaContainsAllItsOwnKeys!590 lt!1814962) lt!1815600)))

(declare-fun bs!1059887 () Bool)

(assert (= bs!1059887 d!1474663))

(declare-fun m!5528221 () Bool)

(assert (=> bs!1059887 m!5528221))

(declare-fun m!5528223 () Bool)

(assert (=> bs!1059887 m!5528223))

(assert (=> bm!324982 d!1474663))

(declare-fun d!1474667 () Bool)

(declare-fun res!1955545 () Bool)

(declare-fun e!2902455 () Bool)

(assert (=> d!1474667 (=> res!1955545 e!2902455)))

(assert (=> d!1474667 (= res!1955545 ((_ is Nil!51868) (toList!5191 (ListMap!4530 Nil!51868))))))

(assert (=> d!1474667 (= (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198570) e!2902455)))

(declare-fun b!4652179 () Bool)

(declare-fun e!2902456 () Bool)

(assert (=> b!4652179 (= e!2902455 e!2902456)))

(declare-fun res!1955546 () Bool)

(assert (=> b!4652179 (=> (not res!1955546) (not e!2902456))))

(assert (=> b!4652179 (= res!1955546 (dynLambda!21575 lambda!198570 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))))))

(declare-fun b!4652180 () Bool)

(assert (=> b!4652180 (= e!2902456 (forall!11004 (t!359100 (toList!5191 (ListMap!4530 Nil!51868))) lambda!198570))))

(assert (= (and d!1474667 (not res!1955545)) b!4652179))

(assert (= (and b!4652179 res!1955546) b!4652180))

(declare-fun b_lambda!173073 () Bool)

(assert (=> (not b_lambda!173073) (not b!4652179)))

(declare-fun m!5528227 () Bool)

(assert (=> b!4652179 m!5528227))

(declare-fun m!5528229 () Bool)

(assert (=> b!4652180 m!5528229))

(assert (=> b!4651770 d!1474667))

(declare-fun d!1474671 () Bool)

(declare-fun res!1955547 () Bool)

(declare-fun e!2902457 () Bool)

(assert (=> d!1474671 (=> res!1955547 e!2902457)))

(assert (=> d!1474671 (= res!1955547 ((_ is Nil!51868) (toList!5191 (ListMap!4530 Nil!51868))))))

(assert (=> d!1474671 (= (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198587) e!2902457)))

(declare-fun b!4652181 () Bool)

(declare-fun e!2902458 () Bool)

(assert (=> b!4652181 (= e!2902457 e!2902458)))

(declare-fun res!1955548 () Bool)

(assert (=> b!4652181 (=> (not res!1955548) (not e!2902458))))

(assert (=> b!4652181 (= res!1955548 (dynLambda!21575 lambda!198587 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))))))

(declare-fun b!4652182 () Bool)

(assert (=> b!4652182 (= e!2902458 (forall!11004 (t!359100 (toList!5191 (ListMap!4530 Nil!51868))) lambda!198587))))

(assert (= (and d!1474671 (not res!1955547)) b!4652181))

(assert (= (and b!4652181 res!1955548) b!4652182))

(declare-fun b_lambda!173075 () Bool)

(assert (=> (not b_lambda!173075) (not b!4652181)))

(declare-fun m!5528231 () Bool)

(assert (=> b!4652181 m!5528231))

(declare-fun m!5528233 () Bool)

(assert (=> b!4652182 m!5528233))

(assert (=> b!4651853 d!1474671))

(declare-fun d!1474673 () Bool)

(declare-fun res!1955549 () Bool)

(declare-fun e!2902459 () Bool)

(assert (=> d!1474673 (=> res!1955549 e!2902459)))

(assert (=> d!1474673 (= res!1955549 ((_ is Nil!51868) (toList!5191 (ListMap!4530 Nil!51868))))))

(assert (=> d!1474673 (= (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198568) e!2902459)))

(declare-fun b!4652183 () Bool)

(declare-fun e!2902460 () Bool)

(assert (=> b!4652183 (= e!2902459 e!2902460)))

(declare-fun res!1955550 () Bool)

(assert (=> b!4652183 (=> (not res!1955550) (not e!2902460))))

(assert (=> b!4652183 (= res!1955550 (dynLambda!21575 lambda!198568 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))))))

(declare-fun b!4652184 () Bool)

(assert (=> b!4652184 (= e!2902460 (forall!11004 (t!359100 (toList!5191 (ListMap!4530 Nil!51868))) lambda!198568))))

(assert (= (and d!1474673 (not res!1955549)) b!4652183))

(assert (= (and b!4652183 res!1955550) b!4652184))

(declare-fun b_lambda!173077 () Bool)

(assert (=> (not b_lambda!173077) (not b!4652183)))

(declare-fun m!5528235 () Bool)

(assert (=> b!4652183 m!5528235))

(declare-fun m!5528237 () Bool)

(assert (=> b!4652184 m!5528237))

(assert (=> b!4651772 d!1474673))

(declare-fun d!1474675 () Bool)

(declare-fun res!1955551 () Bool)

(declare-fun e!2902463 () Bool)

(assert (=> d!1474675 (=> res!1955551 e!2902463)))

(assert (=> d!1474675 (= res!1955551 ((_ is Nil!51868) lt!1814957))))

(assert (=> d!1474675 (= (forall!11004 lt!1814957 lambda!198569) e!2902463)))

(declare-fun b!4652189 () Bool)

(declare-fun e!2902464 () Bool)

(assert (=> b!4652189 (= e!2902463 e!2902464)))

(declare-fun res!1955552 () Bool)

(assert (=> b!4652189 (=> (not res!1955552) (not e!2902464))))

(assert (=> b!4652189 (= res!1955552 (dynLambda!21575 lambda!198569 (h!58004 lt!1814957)))))

(declare-fun b!4652190 () Bool)

(assert (=> b!4652190 (= e!2902464 (forall!11004 (t!359100 lt!1814957) lambda!198569))))

(assert (= (and d!1474675 (not res!1955551)) b!4652189))

(assert (= (and b!4652189 res!1955552) b!4652190))

(declare-fun b_lambda!173079 () Bool)

(assert (=> (not b_lambda!173079) (not b!4652189)))

(declare-fun m!5528239 () Bool)

(assert (=> b!4652189 m!5528239))

(declare-fun m!5528241 () Bool)

(assert (=> b!4652190 m!5528241))

(assert (=> b!4651772 d!1474675))

(declare-fun bs!1059889 () Bool)

(declare-fun d!1474677 () Bool)

(assert (= bs!1059889 (and d!1474677 d!1474461)))

(declare-fun lambda!198634 () Int)

(assert (=> bs!1059889 (= (= lt!1815244 lt!1815328) (= lambda!198634 lambda!198588))))

(declare-fun bs!1059890 () Bool)

(assert (= bs!1059890 (and d!1474677 d!1474663)))

(assert (=> bs!1059890 (= (= lt!1815244 lt!1814962) (= lambda!198634 lambda!198633))))

(declare-fun bs!1059891 () Bool)

(assert (= bs!1059891 (and d!1474677 b!4651851)))

(assert (=> bs!1059891 (= (= lt!1815244 (ListMap!4530 Nil!51868)) (= lambda!198634 lambda!198586))))

(declare-fun bs!1059892 () Bool)

(assert (= bs!1059892 (and d!1474677 d!1474629)))

(assert (=> bs!1059892 (= (= lt!1815244 lt!1815539) (= lambda!198634 lambda!198623))))

(declare-fun bs!1059893 () Bool)

(assert (= bs!1059893 (and d!1474677 d!1474531)))

(assert (=> bs!1059893 (= (= lt!1815244 lt!1815423) (= lambda!198634 lambda!198607))))

(declare-fun bs!1059894 () Bool)

(assert (= bs!1059894 (and d!1474677 d!1474455)))

(assert (=> bs!1059894 (= (= lt!1815244 lt!1815303) (= lambda!198634 lambda!198583))))

(declare-fun bs!1059895 () Bool)

(assert (= bs!1059895 (and d!1474677 b!4651862)))

(assert (=> bs!1059895 (= (= lt!1815244 (ListMap!4530 Nil!51868)) (= lambda!198634 lambda!198590))))

(declare-fun bs!1059896 () Bool)

(assert (= bs!1059896 (and d!1474677 d!1474445)))

(assert (=> bs!1059896 (not (= lambda!198634 lambda!198577))))

(assert (=> bs!1059891 (= (= lt!1815244 lt!1815338) (= lambda!198634 lambda!198587))))

(declare-fun bs!1059897 () Bool)

(assert (= bs!1059897 (and d!1474677 b!4651970)))

(assert (=> bs!1059897 (= (= lt!1815244 lt!1815433) (= lambda!198634 lambda!198606))))

(declare-fun bs!1059898 () Bool)

(assert (= bs!1059898 (and d!1474677 b!4651772)))

(assert (=> bs!1059898 (= lambda!198634 lambda!198569)))

(assert (=> bs!1059897 (= (= lt!1815244 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198634 lambda!198605))))

(declare-fun bs!1059899 () Bool)

(assert (= bs!1059899 (and d!1474677 b!4652134)))

(assert (=> bs!1059899 (= (= lt!1815244 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198634 lambda!198617))))

(declare-fun bs!1059900 () Bool)

(assert (= bs!1059900 (and d!1474677 b!4651765)))

(assert (=> bs!1059900 (= (= lt!1815244 lt!1815223) (= lambda!198634 lambda!198564))))

(declare-fun bs!1059901 () Bool)

(assert (= bs!1059901 (and d!1474677 b!4651844)))

(assert (=> bs!1059901 (= (= lt!1815244 lt!1815313) (= lambda!198634 lambda!198582))))

(declare-fun bs!1059902 () Bool)

(assert (= bs!1059902 (and d!1474677 d!1474503)))

(assert (=> bs!1059902 (= (= lt!1815244 lt!1815313) (= lambda!198634 lambda!198603))))

(declare-fun bs!1059903 () Bool)

(assert (= bs!1059903 (and d!1474677 b!4651852)))

(assert (=> bs!1059903 (= (= lt!1815244 (ListMap!4530 Nil!51868)) (= lambda!198634 lambda!198585))))

(declare-fun bs!1059904 () Bool)

(assert (= bs!1059904 (and d!1474677 d!1474391)))

(assert (=> bs!1059904 (= (= lt!1815244 lt!1815213) (= lambda!198634 lambda!198566))))

(declare-fun bs!1059905 () Bool)

(assert (= bs!1059905 (and d!1474677 d!1474365)))

(assert (=> bs!1059905 (not (= lambda!198634 lambda!198476))))

(assert (=> bs!1059899 (= (= lt!1815244 lt!1815549) (= lambda!198634 lambda!198618))))

(declare-fun bs!1059906 () Bool)

(assert (= bs!1059906 (and d!1474677 b!4651845)))

(assert (=> bs!1059906 (= (= lt!1815244 lt!1814962) (= lambda!198634 lambda!198580))))

(declare-fun bs!1059907 () Bool)

(assert (= bs!1059907 (and d!1474677 b!4651766)))

(assert (=> bs!1059907 (= (= lt!1815244 (ListMap!4530 Nil!51868)) (= lambda!198634 lambda!198562))))

(declare-fun bs!1059908 () Bool)

(assert (= bs!1059908 (and d!1474677 d!1474467)))

(assert (=> bs!1059908 (= (= lt!1815244 lt!1815361) (= lambda!198634 lambda!198592))))

(declare-fun bs!1059909 () Bool)

(assert (= bs!1059909 (and d!1474677 b!4651971)))

(assert (=> bs!1059909 (= (= lt!1815244 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198634 lambda!198604))))

(declare-fun bs!1059910 () Bool)

(assert (= bs!1059910 (and d!1474677 d!1474649)))

(assert (=> bs!1059910 (= (= lt!1815244 (ListMap!4530 Nil!51868)) (= lambda!198634 lambda!198632))))

(assert (=> bs!1059900 (= (= lt!1815244 (ListMap!4530 Nil!51868)) (= lambda!198634 lambda!198563))))

(declare-fun bs!1059911 () Bool)

(assert (= bs!1059911 (and d!1474677 b!4652135)))

(assert (=> bs!1059911 (= (= lt!1815244 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198634 lambda!198616))))

(declare-fun bs!1059912 () Bool)

(assert (= bs!1059912 (and d!1474677 b!4651773)))

(assert (=> bs!1059912 (= (= lt!1815244 (ListMap!4530 Nil!51868)) (= lambda!198634 lambda!198567))))

(declare-fun bs!1059913 () Bool)

(assert (= bs!1059913 (and d!1474677 b!4651863)))

(assert (=> bs!1059913 (= (= lt!1815244 (ListMap!4530 Nil!51868)) (= lambda!198634 lambda!198589))))

(assert (=> bs!1059898 (= (= lt!1815244 (ListMap!4530 Nil!51868)) (= lambda!198634 lambda!198568))))

(assert (=> bs!1059901 (= (= lt!1815244 lt!1814962) (= lambda!198634 lambda!198581))))

(declare-fun bs!1059914 () Bool)

(assert (= bs!1059914 (and d!1474677 d!1474425)))

(assert (=> bs!1059914 (= (= lt!1815244 lt!1815234) (= lambda!198634 lambda!198570))))

(assert (=> bs!1059895 (= (= lt!1815244 lt!1815371) (= lambda!198634 lambda!198591))))

(assert (=> d!1474677 true))

(assert (=> d!1474677 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198634)))

(declare-fun lt!1815604 () Unit!117676)

(assert (=> d!1474677 (= lt!1815604 (choose!31945 (ListMap!4530 Nil!51868) lt!1815244 (_1!29777 (h!58004 lt!1814957)) (_2!29777 (h!58004 lt!1814957))))))

(assert (=> d!1474677 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (tuple2!52967 (_1!29777 (h!58004 lt!1814957)) (_2!29777 (h!58004 lt!1814957))))) lambda!198634)))

(assert (=> d!1474677 (= (addForallContainsKeyThenBeforeAdding!589 (ListMap!4530 Nil!51868) lt!1815244 (_1!29777 (h!58004 lt!1814957)) (_2!29777 (h!58004 lt!1814957))) lt!1815604)))

(declare-fun bs!1059915 () Bool)

(assert (= bs!1059915 d!1474677))

(declare-fun m!5528251 () Bool)

(assert (=> bs!1059915 m!5528251))

(declare-fun m!5528253 () Bool)

(assert (=> bs!1059915 m!5528253))

(declare-fun m!5528255 () Bool)

(assert (=> bs!1059915 m!5528255))

(declare-fun m!5528257 () Bool)

(assert (=> bs!1059915 m!5528257))

(assert (=> b!4651772 d!1474677))

(declare-fun b!4652201 () Bool)

(declare-fun e!2902472 () Unit!117676)

(declare-fun Unit!117850 () Unit!117676)

(assert (=> b!4652201 (= e!2902472 Unit!117850)))

(declare-fun b!4652202 () Bool)

(declare-fun e!2902471 () Unit!117676)

(assert (=> b!4652202 (= e!2902471 e!2902472)))

(declare-fun c!796234 () Bool)

(declare-fun call!325023 () Bool)

(assert (=> b!4652202 (= c!796234 call!325023)))

(declare-fun b!4652203 () Bool)

(declare-fun lt!1815609 () Unit!117676)

(assert (=> b!4652203 (= e!2902471 lt!1815609)))

(declare-fun lt!1815610 () Unit!117676)

(assert (=> b!4652203 (= lt!1815610 (lemmaContainsKeyImpliesGetValueByKeyDefined!1502 (toList!5191 lt!1815244) (_1!29777 (h!58004 lt!1814957))))))

(assert (=> b!4652203 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815244) (_1!29777 (h!58004 lt!1814957))))))

(declare-fun lt!1815611 () Unit!117676)

(assert (=> b!4652203 (= lt!1815611 lt!1815610)))

(assert (=> b!4652203 (= lt!1815609 (lemmaInListThenGetKeysListContains!736 (toList!5191 lt!1815244) (_1!29777 (h!58004 lt!1814957))))))

(assert (=> b!4652203 call!325023))

(declare-fun b!4652204 () Bool)

(declare-fun e!2902475 () List!51995)

(assert (=> b!4652204 (= e!2902475 (keys!18366 lt!1815244))))

(declare-fun b!4652205 () Bool)

(assert (=> b!4652205 (= e!2902475 (getKeysList!741 (toList!5191 lt!1815244)))))

(declare-fun d!1474683 () Bool)

(declare-fun e!2902476 () Bool)

(assert (=> d!1474683 e!2902476))

(declare-fun res!1955557 () Bool)

(assert (=> d!1474683 (=> res!1955557 e!2902476)))

(declare-fun e!2902474 () Bool)

(assert (=> d!1474683 (= res!1955557 e!2902474)))

(declare-fun res!1955555 () Bool)

(assert (=> d!1474683 (=> (not res!1955555) (not e!2902474))))

(declare-fun lt!1815612 () Bool)

(assert (=> d!1474683 (= res!1955555 (not lt!1815612))))

(declare-fun lt!1815607 () Bool)

(assert (=> d!1474683 (= lt!1815612 lt!1815607)))

(declare-fun lt!1815613 () Unit!117676)

(assert (=> d!1474683 (= lt!1815613 e!2902471)))

(declare-fun c!796233 () Bool)

(assert (=> d!1474683 (= c!796233 lt!1815607)))

(assert (=> d!1474683 (= lt!1815607 (containsKey!2706 (toList!5191 lt!1815244) (_1!29777 (h!58004 lt!1814957))))))

(assert (=> d!1474683 (= (contains!15011 lt!1815244 (_1!29777 (h!58004 lt!1814957))) lt!1815612)))

(declare-fun b!4652206 () Bool)

(assert (=> b!4652206 (= e!2902474 (not (contains!15013 (keys!18366 lt!1815244) (_1!29777 (h!58004 lt!1814957)))))))

(declare-fun b!4652207 () Bool)

(declare-fun e!2902473 () Bool)

(assert (=> b!4652207 (= e!2902476 e!2902473)))

(declare-fun res!1955556 () Bool)

(assert (=> b!4652207 (=> (not res!1955556) (not e!2902473))))

(assert (=> b!4652207 (= res!1955556 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815244) (_1!29777 (h!58004 lt!1814957)))))))

(declare-fun b!4652208 () Bool)

(assert (=> b!4652208 (= e!2902473 (contains!15013 (keys!18366 lt!1815244) (_1!29777 (h!58004 lt!1814957))))))

(declare-fun b!4652209 () Bool)

(assert (=> b!4652209 false))

(declare-fun lt!1815606 () Unit!117676)

(declare-fun lt!1815608 () Unit!117676)

(assert (=> b!4652209 (= lt!1815606 lt!1815608)))

(assert (=> b!4652209 (containsKey!2706 (toList!5191 lt!1815244) (_1!29777 (h!58004 lt!1814957)))))

(assert (=> b!4652209 (= lt!1815608 (lemmaInGetKeysListThenContainsKey!740 (toList!5191 lt!1815244) (_1!29777 (h!58004 lt!1814957))))))

(declare-fun Unit!117851 () Unit!117676)

(assert (=> b!4652209 (= e!2902472 Unit!117851)))

(declare-fun bm!325018 () Bool)

(assert (=> bm!325018 (= call!325023 (contains!15013 e!2902475 (_1!29777 (h!58004 lt!1814957))))))

(declare-fun c!796235 () Bool)

(assert (=> bm!325018 (= c!796235 c!796233)))

(assert (= (and d!1474683 c!796233) b!4652203))

(assert (= (and d!1474683 (not c!796233)) b!4652202))

(assert (= (and b!4652202 c!796234) b!4652209))

(assert (= (and b!4652202 (not c!796234)) b!4652201))

(assert (= (or b!4652203 b!4652202) bm!325018))

(assert (= (and bm!325018 c!796235) b!4652205))

(assert (= (and bm!325018 (not c!796235)) b!4652204))

(assert (= (and d!1474683 res!1955555) b!4652206))

(assert (= (and d!1474683 (not res!1955557)) b!4652207))

(assert (= (and b!4652207 res!1955556) b!4652208))

(declare-fun m!5528259 () Bool)

(assert (=> d!1474683 m!5528259))

(declare-fun m!5528261 () Bool)

(assert (=> b!4652208 m!5528261))

(assert (=> b!4652208 m!5528261))

(declare-fun m!5528263 () Bool)

(assert (=> b!4652208 m!5528263))

(declare-fun m!5528265 () Bool)

(assert (=> b!4652207 m!5528265))

(assert (=> b!4652207 m!5528265))

(declare-fun m!5528267 () Bool)

(assert (=> b!4652207 m!5528267))

(declare-fun m!5528269 () Bool)

(assert (=> bm!325018 m!5528269))

(declare-fun m!5528271 () Bool)

(assert (=> b!4652203 m!5528271))

(assert (=> b!4652203 m!5528265))

(assert (=> b!4652203 m!5528265))

(assert (=> b!4652203 m!5528267))

(declare-fun m!5528273 () Bool)

(assert (=> b!4652203 m!5528273))

(assert (=> b!4652206 m!5528261))

(assert (=> b!4652206 m!5528261))

(assert (=> b!4652206 m!5528263))

(assert (=> b!4652204 m!5528261))

(assert (=> b!4652209 m!5528259))

(declare-fun m!5528275 () Bool)

(assert (=> b!4652209 m!5528275))

(declare-fun m!5528277 () Bool)

(assert (=> b!4652205 m!5528277))

(assert (=> b!4651772 d!1474683))

(declare-fun d!1474685 () Bool)

(declare-fun res!1955558 () Bool)

(declare-fun e!2902477 () Bool)

(assert (=> d!1474685 (=> res!1955558 e!2902477)))

(assert (=> d!1474685 (= res!1955558 ((_ is Nil!51868) (toList!5191 lt!1815239)))))

(assert (=> d!1474685 (= (forall!11004 (toList!5191 lt!1815239) lambda!198569) e!2902477)))

(declare-fun b!4652210 () Bool)

(declare-fun e!2902478 () Bool)

(assert (=> b!4652210 (= e!2902477 e!2902478)))

(declare-fun res!1955559 () Bool)

(assert (=> b!4652210 (=> (not res!1955559) (not e!2902478))))

(assert (=> b!4652210 (= res!1955559 (dynLambda!21575 lambda!198569 (h!58004 (toList!5191 lt!1815239))))))

(declare-fun b!4652211 () Bool)

(assert (=> b!4652211 (= e!2902478 (forall!11004 (t!359100 (toList!5191 lt!1815239)) lambda!198569))))

(assert (= (and d!1474685 (not res!1955558)) b!4652210))

(assert (= (and b!4652210 res!1955559) b!4652211))

(declare-fun b_lambda!173081 () Bool)

(assert (=> (not b_lambda!173081) (not b!4652210)))

(declare-fun m!5528279 () Bool)

(assert (=> b!4652210 m!5528279))

(declare-fun m!5528281 () Bool)

(assert (=> b!4652211 m!5528281))

(assert (=> b!4651772 d!1474685))

(declare-fun bs!1059916 () Bool)

(declare-fun b!4652215 () Bool)

(assert (= bs!1059916 (and b!4652215 d!1474461)))

(declare-fun lambda!198635 () Int)

(assert (=> bs!1059916 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815328) (= lambda!198635 lambda!198588))))

(declare-fun bs!1059917 () Bool)

(assert (= bs!1059917 (and b!4652215 d!1474663)))

(assert (=> bs!1059917 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1814962) (= lambda!198635 lambda!198633))))

(declare-fun bs!1059918 () Bool)

(assert (= bs!1059918 (and b!4652215 b!4651851)))

(assert (=> bs!1059918 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (ListMap!4530 Nil!51868)) (= lambda!198635 lambda!198586))))

(declare-fun bs!1059919 () Bool)

(assert (= bs!1059919 (and b!4652215 d!1474629)))

(assert (=> bs!1059919 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815539) (= lambda!198635 lambda!198623))))

(declare-fun bs!1059920 () Bool)

(assert (= bs!1059920 (and b!4652215 d!1474531)))

(assert (=> bs!1059920 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815423) (= lambda!198635 lambda!198607))))

(declare-fun bs!1059921 () Bool)

(assert (= bs!1059921 (and b!4652215 d!1474455)))

(assert (=> bs!1059921 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815303) (= lambda!198635 lambda!198583))))

(declare-fun bs!1059922 () Bool)

(assert (= bs!1059922 (and b!4652215 b!4651862)))

(assert (=> bs!1059922 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (ListMap!4530 Nil!51868)) (= lambda!198635 lambda!198590))))

(declare-fun bs!1059923 () Bool)

(assert (= bs!1059923 (and b!4652215 d!1474445)))

(assert (=> bs!1059923 (not (= lambda!198635 lambda!198577))))

(declare-fun bs!1059924 () Bool)

(assert (= bs!1059924 (and b!4652215 b!4651970)))

(assert (=> bs!1059924 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815433) (= lambda!198635 lambda!198606))))

(declare-fun bs!1059925 () Bool)

(assert (= bs!1059925 (and b!4652215 b!4651772)))

(assert (=> bs!1059925 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815244) (= lambda!198635 lambda!198569))))

(assert (=> bs!1059924 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198635 lambda!198605))))

(declare-fun bs!1059926 () Bool)

(assert (= bs!1059926 (and b!4652215 b!4652134)))

(assert (=> bs!1059926 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198635 lambda!198617))))

(declare-fun bs!1059927 () Bool)

(assert (= bs!1059927 (and b!4652215 b!4651765)))

(assert (=> bs!1059927 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815223) (= lambda!198635 lambda!198564))))

(declare-fun bs!1059928 () Bool)

(assert (= bs!1059928 (and b!4652215 b!4651844)))

(assert (=> bs!1059928 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815313) (= lambda!198635 lambda!198582))))

(declare-fun bs!1059929 () Bool)

(assert (= bs!1059929 (and b!4652215 d!1474503)))

(assert (=> bs!1059929 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815313) (= lambda!198635 lambda!198603))))

(declare-fun bs!1059930 () Bool)

(assert (= bs!1059930 (and b!4652215 b!4651852)))

(assert (=> bs!1059930 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (ListMap!4530 Nil!51868)) (= lambda!198635 lambda!198585))))

(declare-fun bs!1059931 () Bool)

(assert (= bs!1059931 (and b!4652215 d!1474391)))

(assert (=> bs!1059931 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815213) (= lambda!198635 lambda!198566))))

(declare-fun bs!1059932 () Bool)

(assert (= bs!1059932 (and b!4652215 d!1474365)))

(assert (=> bs!1059932 (not (= lambda!198635 lambda!198476))))

(assert (=> bs!1059926 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815549) (= lambda!198635 lambda!198618))))

(declare-fun bs!1059933 () Bool)

(assert (= bs!1059933 (and b!4652215 b!4651845)))

(assert (=> bs!1059933 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1814962) (= lambda!198635 lambda!198580))))

(declare-fun bs!1059934 () Bool)

(assert (= bs!1059934 (and b!4652215 b!4651766)))

(assert (=> bs!1059934 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (ListMap!4530 Nil!51868)) (= lambda!198635 lambda!198562))))

(declare-fun bs!1059935 () Bool)

(assert (= bs!1059935 (and b!4652215 d!1474467)))

(assert (=> bs!1059935 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815361) (= lambda!198635 lambda!198592))))

(declare-fun bs!1059936 () Bool)

(assert (= bs!1059936 (and b!4652215 b!4651971)))

(assert (=> bs!1059936 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198635 lambda!198604))))

(declare-fun bs!1059937 () Bool)

(assert (= bs!1059937 (and b!4652215 d!1474649)))

(assert (=> bs!1059937 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (ListMap!4530 Nil!51868)) (= lambda!198635 lambda!198632))))

(assert (=> bs!1059927 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (ListMap!4530 Nil!51868)) (= lambda!198635 lambda!198563))))

(declare-fun bs!1059938 () Bool)

(assert (= bs!1059938 (and b!4652215 b!4652135)))

(assert (=> bs!1059938 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198635 lambda!198616))))

(declare-fun bs!1059939 () Bool)

(assert (= bs!1059939 (and b!4652215 b!4651773)))

(assert (=> bs!1059939 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (ListMap!4530 Nil!51868)) (= lambda!198635 lambda!198567))))

(declare-fun bs!1059940 () Bool)

(assert (= bs!1059940 (and b!4652215 b!4651863)))

(assert (=> bs!1059940 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (ListMap!4530 Nil!51868)) (= lambda!198635 lambda!198589))))

(assert (=> bs!1059925 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (ListMap!4530 Nil!51868)) (= lambda!198635 lambda!198568))))

(assert (=> bs!1059928 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1814962) (= lambda!198635 lambda!198581))))

(declare-fun bs!1059941 () Bool)

(assert (= bs!1059941 (and b!4652215 d!1474425)))

(assert (=> bs!1059941 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815234) (= lambda!198635 lambda!198570))))

(assert (=> bs!1059922 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815371) (= lambda!198635 lambda!198591))))

(declare-fun bs!1059942 () Bool)

(assert (= bs!1059942 (and b!4652215 d!1474677)))

(assert (=> bs!1059942 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815244) (= lambda!198635 lambda!198634))))

(assert (=> bs!1059918 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815338) (= lambda!198635 lambda!198587))))

(assert (=> b!4652215 true))

(declare-fun bs!1059943 () Bool)

(declare-fun b!4652214 () Bool)

(assert (= bs!1059943 (and b!4652214 d!1474461)))

(declare-fun lambda!198641 () Int)

(assert (=> bs!1059943 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815328) (= lambda!198641 lambda!198588))))

(declare-fun bs!1059944 () Bool)

(assert (= bs!1059944 (and b!4652214 d!1474663)))

(assert (=> bs!1059944 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1814962) (= lambda!198641 lambda!198633))))

(declare-fun bs!1059945 () Bool)

(assert (= bs!1059945 (and b!4652214 b!4651851)))

(assert (=> bs!1059945 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (ListMap!4530 Nil!51868)) (= lambda!198641 lambda!198586))))

(declare-fun bs!1059946 () Bool)

(assert (= bs!1059946 (and b!4652214 d!1474629)))

(assert (=> bs!1059946 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815539) (= lambda!198641 lambda!198623))))

(declare-fun bs!1059947 () Bool)

(assert (= bs!1059947 (and b!4652214 d!1474455)))

(assert (=> bs!1059947 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815303) (= lambda!198641 lambda!198583))))

(declare-fun bs!1059948 () Bool)

(assert (= bs!1059948 (and b!4652214 b!4651862)))

(assert (=> bs!1059948 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (ListMap!4530 Nil!51868)) (= lambda!198641 lambda!198590))))

(declare-fun bs!1059949 () Bool)

(assert (= bs!1059949 (and b!4652214 d!1474445)))

(assert (=> bs!1059949 (not (= lambda!198641 lambda!198577))))

(declare-fun bs!1059950 () Bool)

(assert (= bs!1059950 (and b!4652214 b!4651970)))

(assert (=> bs!1059950 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815433) (= lambda!198641 lambda!198606))))

(declare-fun bs!1059951 () Bool)

(assert (= bs!1059951 (and b!4652214 b!4651772)))

(assert (=> bs!1059951 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815244) (= lambda!198641 lambda!198569))))

(assert (=> bs!1059950 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198641 lambda!198605))))

(declare-fun bs!1059952 () Bool)

(assert (= bs!1059952 (and b!4652214 b!4652134)))

(assert (=> bs!1059952 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198641 lambda!198617))))

(declare-fun bs!1059953 () Bool)

(assert (= bs!1059953 (and b!4652214 b!4651765)))

(assert (=> bs!1059953 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815223) (= lambda!198641 lambda!198564))))

(declare-fun bs!1059954 () Bool)

(assert (= bs!1059954 (and b!4652214 b!4651844)))

(assert (=> bs!1059954 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815313) (= lambda!198641 lambda!198582))))

(declare-fun bs!1059955 () Bool)

(assert (= bs!1059955 (and b!4652214 d!1474503)))

(assert (=> bs!1059955 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815313) (= lambda!198641 lambda!198603))))

(declare-fun bs!1059956 () Bool)

(assert (= bs!1059956 (and b!4652214 b!4651852)))

(assert (=> bs!1059956 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (ListMap!4530 Nil!51868)) (= lambda!198641 lambda!198585))))

(declare-fun bs!1059957 () Bool)

(assert (= bs!1059957 (and b!4652214 d!1474391)))

(assert (=> bs!1059957 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815213) (= lambda!198641 lambda!198566))))

(declare-fun bs!1059958 () Bool)

(assert (= bs!1059958 (and b!4652214 d!1474365)))

(assert (=> bs!1059958 (not (= lambda!198641 lambda!198476))))

(assert (=> bs!1059952 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815549) (= lambda!198641 lambda!198618))))

(declare-fun bs!1059959 () Bool)

(assert (= bs!1059959 (and b!4652214 b!4651845)))

(assert (=> bs!1059959 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1814962) (= lambda!198641 lambda!198580))))

(declare-fun bs!1059960 () Bool)

(assert (= bs!1059960 (and b!4652214 b!4651766)))

(assert (=> bs!1059960 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (ListMap!4530 Nil!51868)) (= lambda!198641 lambda!198562))))

(declare-fun bs!1059961 () Bool)

(assert (= bs!1059961 (and b!4652214 d!1474467)))

(assert (=> bs!1059961 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815361) (= lambda!198641 lambda!198592))))

(declare-fun bs!1059962 () Bool)

(assert (= bs!1059962 (and b!4652214 b!4651971)))

(assert (=> bs!1059962 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198641 lambda!198604))))

(declare-fun bs!1059963 () Bool)

(assert (= bs!1059963 (and b!4652214 d!1474649)))

(assert (=> bs!1059963 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (ListMap!4530 Nil!51868)) (= lambda!198641 lambda!198632))))

(assert (=> bs!1059953 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (ListMap!4530 Nil!51868)) (= lambda!198641 lambda!198563))))

(declare-fun bs!1059964 () Bool)

(assert (= bs!1059964 (and b!4652214 b!4652135)))

(assert (=> bs!1059964 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198641 lambda!198616))))

(declare-fun bs!1059965 () Bool)

(assert (= bs!1059965 (and b!4652214 b!4651773)))

(assert (=> bs!1059965 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (ListMap!4530 Nil!51868)) (= lambda!198641 lambda!198567))))

(declare-fun bs!1059966 () Bool)

(assert (= bs!1059966 (and b!4652214 d!1474531)))

(assert (=> bs!1059966 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815423) (= lambda!198641 lambda!198607))))

(declare-fun bs!1059967 () Bool)

(assert (= bs!1059967 (and b!4652214 b!4652215)))

(assert (=> bs!1059967 (= lambda!198641 lambda!198635)))

(declare-fun bs!1059968 () Bool)

(assert (= bs!1059968 (and b!4652214 b!4651863)))

(assert (=> bs!1059968 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (ListMap!4530 Nil!51868)) (= lambda!198641 lambda!198589))))

(assert (=> bs!1059951 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (ListMap!4530 Nil!51868)) (= lambda!198641 lambda!198568))))

(assert (=> bs!1059954 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1814962) (= lambda!198641 lambda!198581))))

(declare-fun bs!1059969 () Bool)

(assert (= bs!1059969 (and b!4652214 d!1474425)))

(assert (=> bs!1059969 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815234) (= lambda!198641 lambda!198570))))

(assert (=> bs!1059948 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815371) (= lambda!198641 lambda!198591))))

(declare-fun bs!1059970 () Bool)

(assert (= bs!1059970 (and b!4652214 d!1474677)))

(assert (=> bs!1059970 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815244) (= lambda!198641 lambda!198634))))

(assert (=> bs!1059945 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815338) (= lambda!198641 lambda!198587))))

(assert (=> b!4652214 true))

(declare-fun lt!1815624 () ListMap!4529)

(declare-fun lambda!198643 () Int)

(assert (=> b!4652214 (= (= lt!1815624 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198643 lambda!198641))))

(assert (=> bs!1059943 (= (= lt!1815624 lt!1815328) (= lambda!198643 lambda!198588))))

(assert (=> bs!1059944 (= (= lt!1815624 lt!1814962) (= lambda!198643 lambda!198633))))

(assert (=> bs!1059945 (= (= lt!1815624 (ListMap!4530 Nil!51868)) (= lambda!198643 lambda!198586))))

(assert (=> bs!1059946 (= (= lt!1815624 lt!1815539) (= lambda!198643 lambda!198623))))

(assert (=> bs!1059947 (= (= lt!1815624 lt!1815303) (= lambda!198643 lambda!198583))))

(assert (=> bs!1059948 (= (= lt!1815624 (ListMap!4530 Nil!51868)) (= lambda!198643 lambda!198590))))

(assert (=> bs!1059949 (not (= lambda!198643 lambda!198577))))

(assert (=> bs!1059950 (= (= lt!1815624 lt!1815433) (= lambda!198643 lambda!198606))))

(assert (=> bs!1059951 (= (= lt!1815624 lt!1815244) (= lambda!198643 lambda!198569))))

(assert (=> bs!1059950 (= (= lt!1815624 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198643 lambda!198605))))

(assert (=> bs!1059952 (= (= lt!1815624 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198643 lambda!198617))))

(assert (=> bs!1059953 (= (= lt!1815624 lt!1815223) (= lambda!198643 lambda!198564))))

(assert (=> bs!1059954 (= (= lt!1815624 lt!1815313) (= lambda!198643 lambda!198582))))

(assert (=> bs!1059955 (= (= lt!1815624 lt!1815313) (= lambda!198643 lambda!198603))))

(assert (=> bs!1059956 (= (= lt!1815624 (ListMap!4530 Nil!51868)) (= lambda!198643 lambda!198585))))

(assert (=> bs!1059957 (= (= lt!1815624 lt!1815213) (= lambda!198643 lambda!198566))))

(assert (=> bs!1059958 (not (= lambda!198643 lambda!198476))))

(assert (=> bs!1059952 (= (= lt!1815624 lt!1815549) (= lambda!198643 lambda!198618))))

(assert (=> bs!1059959 (= (= lt!1815624 lt!1814962) (= lambda!198643 lambda!198580))))

(assert (=> bs!1059960 (= (= lt!1815624 (ListMap!4530 Nil!51868)) (= lambda!198643 lambda!198562))))

(assert (=> bs!1059961 (= (= lt!1815624 lt!1815361) (= lambda!198643 lambda!198592))))

(assert (=> bs!1059962 (= (= lt!1815624 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198643 lambda!198604))))

(assert (=> bs!1059963 (= (= lt!1815624 (ListMap!4530 Nil!51868)) (= lambda!198643 lambda!198632))))

(assert (=> bs!1059953 (= (= lt!1815624 (ListMap!4530 Nil!51868)) (= lambda!198643 lambda!198563))))

(assert (=> bs!1059964 (= (= lt!1815624 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198643 lambda!198616))))

(assert (=> bs!1059965 (= (= lt!1815624 (ListMap!4530 Nil!51868)) (= lambda!198643 lambda!198567))))

(assert (=> bs!1059966 (= (= lt!1815624 lt!1815423) (= lambda!198643 lambda!198607))))

(assert (=> bs!1059967 (= (= lt!1815624 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198643 lambda!198635))))

(assert (=> bs!1059968 (= (= lt!1815624 (ListMap!4530 Nil!51868)) (= lambda!198643 lambda!198589))))

(assert (=> bs!1059951 (= (= lt!1815624 (ListMap!4530 Nil!51868)) (= lambda!198643 lambda!198568))))

(assert (=> bs!1059954 (= (= lt!1815624 lt!1814962) (= lambda!198643 lambda!198581))))

(assert (=> bs!1059969 (= (= lt!1815624 lt!1815234) (= lambda!198643 lambda!198570))))

(assert (=> bs!1059948 (= (= lt!1815624 lt!1815371) (= lambda!198643 lambda!198591))))

(assert (=> bs!1059970 (= (= lt!1815624 lt!1815244) (= lambda!198643 lambda!198634))))

(assert (=> bs!1059945 (= (= lt!1815624 lt!1815338) (= lambda!198643 lambda!198587))))

(assert (=> b!4652214 true))

(declare-fun bs!1059971 () Bool)

(declare-fun d!1474687 () Bool)

(assert (= bs!1059971 (and d!1474687 b!4652214)))

(declare-fun lambda!198644 () Int)

(declare-fun lt!1815614 () ListMap!4529)

(assert (=> bs!1059971 (= (= lt!1815614 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198644 lambda!198641))))

(assert (=> bs!1059971 (= (= lt!1815614 lt!1815624) (= lambda!198644 lambda!198643))))

(declare-fun bs!1059972 () Bool)

(assert (= bs!1059972 (and d!1474687 d!1474461)))

(assert (=> bs!1059972 (= (= lt!1815614 lt!1815328) (= lambda!198644 lambda!198588))))

(declare-fun bs!1059973 () Bool)

(assert (= bs!1059973 (and d!1474687 d!1474663)))

(assert (=> bs!1059973 (= (= lt!1815614 lt!1814962) (= lambda!198644 lambda!198633))))

(declare-fun bs!1059974 () Bool)

(assert (= bs!1059974 (and d!1474687 b!4651851)))

(assert (=> bs!1059974 (= (= lt!1815614 (ListMap!4530 Nil!51868)) (= lambda!198644 lambda!198586))))

(declare-fun bs!1059975 () Bool)

(assert (= bs!1059975 (and d!1474687 d!1474629)))

(assert (=> bs!1059975 (= (= lt!1815614 lt!1815539) (= lambda!198644 lambda!198623))))

(declare-fun bs!1059976 () Bool)

(assert (= bs!1059976 (and d!1474687 d!1474455)))

(assert (=> bs!1059976 (= (= lt!1815614 lt!1815303) (= lambda!198644 lambda!198583))))

(declare-fun bs!1059977 () Bool)

(assert (= bs!1059977 (and d!1474687 b!4651862)))

(assert (=> bs!1059977 (= (= lt!1815614 (ListMap!4530 Nil!51868)) (= lambda!198644 lambda!198590))))

(declare-fun bs!1059978 () Bool)

(assert (= bs!1059978 (and d!1474687 d!1474445)))

(assert (=> bs!1059978 (not (= lambda!198644 lambda!198577))))

(declare-fun bs!1059979 () Bool)

(assert (= bs!1059979 (and d!1474687 b!4651970)))

(assert (=> bs!1059979 (= (= lt!1815614 lt!1815433) (= lambda!198644 lambda!198606))))

(declare-fun bs!1059980 () Bool)

(assert (= bs!1059980 (and d!1474687 b!4651772)))

(assert (=> bs!1059980 (= (= lt!1815614 lt!1815244) (= lambda!198644 lambda!198569))))

(assert (=> bs!1059979 (= (= lt!1815614 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198644 lambda!198605))))

(declare-fun bs!1059981 () Bool)

(assert (= bs!1059981 (and d!1474687 b!4652134)))

(assert (=> bs!1059981 (= (= lt!1815614 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198644 lambda!198617))))

(declare-fun bs!1059982 () Bool)

(assert (= bs!1059982 (and d!1474687 b!4651765)))

(assert (=> bs!1059982 (= (= lt!1815614 lt!1815223) (= lambda!198644 lambda!198564))))

(declare-fun bs!1059983 () Bool)

(assert (= bs!1059983 (and d!1474687 b!4651844)))

(assert (=> bs!1059983 (= (= lt!1815614 lt!1815313) (= lambda!198644 lambda!198582))))

(declare-fun bs!1059984 () Bool)

(assert (= bs!1059984 (and d!1474687 d!1474503)))

(assert (=> bs!1059984 (= (= lt!1815614 lt!1815313) (= lambda!198644 lambda!198603))))

(declare-fun bs!1059985 () Bool)

(assert (= bs!1059985 (and d!1474687 b!4651852)))

(assert (=> bs!1059985 (= (= lt!1815614 (ListMap!4530 Nil!51868)) (= lambda!198644 lambda!198585))))

(declare-fun bs!1059986 () Bool)

(assert (= bs!1059986 (and d!1474687 d!1474391)))

(assert (=> bs!1059986 (= (= lt!1815614 lt!1815213) (= lambda!198644 lambda!198566))))

(declare-fun bs!1059987 () Bool)

(assert (= bs!1059987 (and d!1474687 d!1474365)))

(assert (=> bs!1059987 (not (= lambda!198644 lambda!198476))))

(assert (=> bs!1059981 (= (= lt!1815614 lt!1815549) (= lambda!198644 lambda!198618))))

(declare-fun bs!1059988 () Bool)

(assert (= bs!1059988 (and d!1474687 b!4651845)))

(assert (=> bs!1059988 (= (= lt!1815614 lt!1814962) (= lambda!198644 lambda!198580))))

(declare-fun bs!1059989 () Bool)

(assert (= bs!1059989 (and d!1474687 b!4651766)))

(assert (=> bs!1059989 (= (= lt!1815614 (ListMap!4530 Nil!51868)) (= lambda!198644 lambda!198562))))

(declare-fun bs!1059990 () Bool)

(assert (= bs!1059990 (and d!1474687 d!1474467)))

(assert (=> bs!1059990 (= (= lt!1815614 lt!1815361) (= lambda!198644 lambda!198592))))

(declare-fun bs!1059991 () Bool)

(assert (= bs!1059991 (and d!1474687 b!4651971)))

(assert (=> bs!1059991 (= (= lt!1815614 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198644 lambda!198604))))

(declare-fun bs!1059992 () Bool)

(assert (= bs!1059992 (and d!1474687 d!1474649)))

(assert (=> bs!1059992 (= (= lt!1815614 (ListMap!4530 Nil!51868)) (= lambda!198644 lambda!198632))))

(assert (=> bs!1059982 (= (= lt!1815614 (ListMap!4530 Nil!51868)) (= lambda!198644 lambda!198563))))

(declare-fun bs!1059993 () Bool)

(assert (= bs!1059993 (and d!1474687 b!4652135)))

(assert (=> bs!1059993 (= (= lt!1815614 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198644 lambda!198616))))

(declare-fun bs!1059994 () Bool)

(assert (= bs!1059994 (and d!1474687 b!4651773)))

(assert (=> bs!1059994 (= (= lt!1815614 (ListMap!4530 Nil!51868)) (= lambda!198644 lambda!198567))))

(declare-fun bs!1059995 () Bool)

(assert (= bs!1059995 (and d!1474687 d!1474531)))

(assert (=> bs!1059995 (= (= lt!1815614 lt!1815423) (= lambda!198644 lambda!198607))))

(declare-fun bs!1059996 () Bool)

(assert (= bs!1059996 (and d!1474687 b!4652215)))

(assert (=> bs!1059996 (= (= lt!1815614 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198644 lambda!198635))))

(declare-fun bs!1059997 () Bool)

(assert (= bs!1059997 (and d!1474687 b!4651863)))

(assert (=> bs!1059997 (= (= lt!1815614 (ListMap!4530 Nil!51868)) (= lambda!198644 lambda!198589))))

(assert (=> bs!1059980 (= (= lt!1815614 (ListMap!4530 Nil!51868)) (= lambda!198644 lambda!198568))))

(assert (=> bs!1059983 (= (= lt!1815614 lt!1814962) (= lambda!198644 lambda!198581))))

(declare-fun bs!1059998 () Bool)

(assert (= bs!1059998 (and d!1474687 d!1474425)))

(assert (=> bs!1059998 (= (= lt!1815614 lt!1815234) (= lambda!198644 lambda!198570))))

(assert (=> bs!1059977 (= (= lt!1815614 lt!1815371) (= lambda!198644 lambda!198591))))

(declare-fun bs!1059999 () Bool)

(assert (= bs!1059999 (and d!1474687 d!1474677)))

(assert (=> bs!1059999 (= (= lt!1815614 lt!1815244) (= lambda!198644 lambda!198634))))

(assert (=> bs!1059974 (= (= lt!1815614 lt!1815338) (= lambda!198644 lambda!198587))))

(assert (=> d!1474687 true))

(declare-fun e!2902481 () Bool)

(assert (=> d!1474687 e!2902481))

(declare-fun res!1955562 () Bool)

(assert (=> d!1474687 (=> (not res!1955562) (not e!2902481))))

(assert (=> d!1474687 (= res!1955562 (forall!11004 (t!359100 lt!1814957) lambda!198644))))

(declare-fun e!2902479 () ListMap!4529)

(assert (=> d!1474687 (= lt!1815614 e!2902479)))

(declare-fun c!796236 () Bool)

(assert (=> d!1474687 (= c!796236 ((_ is Nil!51868) (t!359100 lt!1814957)))))

(assert (=> d!1474687 (noDuplicateKeys!1630 (t!359100 lt!1814957))))

(assert (=> d!1474687 (= (addToMapMapFromBucket!1087 (t!359100 lt!1814957) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) lt!1815614)))

(declare-fun b!4652212 () Bool)

(declare-fun res!1955560 () Bool)

(assert (=> b!4652212 (=> (not res!1955560) (not e!2902481))))

(assert (=> b!4652212 (= res!1955560 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) lambda!198644))))

(declare-fun bm!325019 () Bool)

(declare-fun call!325025 () Bool)

(assert (=> bm!325019 (= call!325025 (forall!11004 (ite c!796236 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (t!359100 (t!359100 lt!1814957))) (ite c!796236 lambda!198635 lambda!198643)))))

(declare-fun call!325026 () Bool)

(declare-fun bm!325020 () Bool)

(assert (=> bm!325020 (= call!325026 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (ite c!796236 lambda!198635 lambda!198643)))))

(declare-fun b!4652213 () Bool)

(assert (=> b!4652213 (= e!2902481 (invariantList!1290 (toList!5191 lt!1815614)))))

(assert (=> b!4652214 (= e!2902479 lt!1815624)))

(declare-fun lt!1815619 () ListMap!4529)

(assert (=> b!4652214 (= lt!1815619 (+!1974 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (h!58004 (t!359100 lt!1814957))))))

(assert (=> b!4652214 (= lt!1815624 (addToMapMapFromBucket!1087 (t!359100 (t!359100 lt!1814957)) (+!1974 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) (h!58004 (t!359100 lt!1814957)))))))

(declare-fun lt!1815617 () Unit!117676)

(declare-fun call!325024 () Unit!117676)

(assert (=> b!4652214 (= lt!1815617 call!325024)))

(assert (=> b!4652214 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) lambda!198641)))

(declare-fun lt!1815627 () Unit!117676)

(assert (=> b!4652214 (= lt!1815627 lt!1815617)))

(assert (=> b!4652214 (forall!11004 (toList!5191 lt!1815619) lambda!198643)))

(declare-fun lt!1815626 () Unit!117676)

(declare-fun Unit!117856 () Unit!117676)

(assert (=> b!4652214 (= lt!1815626 Unit!117856)))

(assert (=> b!4652214 call!325025))

(declare-fun lt!1815618 () Unit!117676)

(declare-fun Unit!117857 () Unit!117676)

(assert (=> b!4652214 (= lt!1815618 Unit!117857)))

(declare-fun lt!1815623 () Unit!117676)

(declare-fun Unit!117858 () Unit!117676)

(assert (=> b!4652214 (= lt!1815623 Unit!117858)))

(declare-fun lt!1815615 () Unit!117676)

(assert (=> b!4652214 (= lt!1815615 (forallContained!3212 (toList!5191 lt!1815619) lambda!198643 (h!58004 (t!359100 lt!1814957))))))

(assert (=> b!4652214 (contains!15011 lt!1815619 (_1!29777 (h!58004 (t!359100 lt!1814957))))))

(declare-fun lt!1815632 () Unit!117676)

(declare-fun Unit!117859 () Unit!117676)

(assert (=> b!4652214 (= lt!1815632 Unit!117859)))

(assert (=> b!4652214 (contains!15011 lt!1815624 (_1!29777 (h!58004 (t!359100 lt!1814957))))))

(declare-fun lt!1815622 () Unit!117676)

(declare-fun Unit!117860 () Unit!117676)

(assert (=> b!4652214 (= lt!1815622 Unit!117860)))

(assert (=> b!4652214 (forall!11004 (t!359100 lt!1814957) lambda!198643)))

(declare-fun lt!1815628 () Unit!117676)

(declare-fun Unit!117861 () Unit!117676)

(assert (=> b!4652214 (= lt!1815628 Unit!117861)))

(assert (=> b!4652214 (forall!11004 (toList!5191 lt!1815619) lambda!198643)))

(declare-fun lt!1815625 () Unit!117676)

(declare-fun Unit!117862 () Unit!117676)

(assert (=> b!4652214 (= lt!1815625 Unit!117862)))

(declare-fun lt!1815634 () Unit!117676)

(declare-fun Unit!117863 () Unit!117676)

(assert (=> b!4652214 (= lt!1815634 Unit!117863)))

(declare-fun lt!1815616 () Unit!117676)

(assert (=> b!4652214 (= lt!1815616 (addForallContainsKeyThenBeforeAdding!589 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815624 (_1!29777 (h!58004 (t!359100 lt!1814957))) (_2!29777 (h!58004 (t!359100 lt!1814957)))))))

(assert (=> b!4652214 call!325026))

(declare-fun lt!1815621 () Unit!117676)

(assert (=> b!4652214 (= lt!1815621 lt!1815616)))

(assert (=> b!4652214 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) lambda!198643)))

(declare-fun lt!1815630 () Unit!117676)

(declare-fun Unit!117864 () Unit!117676)

(assert (=> b!4652214 (= lt!1815630 Unit!117864)))

(declare-fun res!1955561 () Bool)

(assert (=> b!4652214 (= res!1955561 (forall!11004 (t!359100 lt!1814957) lambda!198643))))

(declare-fun e!2902480 () Bool)

(assert (=> b!4652214 (=> (not res!1955561) (not e!2902480))))

(assert (=> b!4652214 e!2902480))

(declare-fun lt!1815620 () Unit!117676)

(declare-fun Unit!117865 () Unit!117676)

(assert (=> b!4652214 (= lt!1815620 Unit!117865)))

(assert (=> b!4652215 (= e!2902479 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)))))

(declare-fun lt!1815633 () Unit!117676)

(assert (=> b!4652215 (= lt!1815633 call!325024)))

(assert (=> b!4652215 call!325026))

(declare-fun lt!1815631 () Unit!117676)

(assert (=> b!4652215 (= lt!1815631 lt!1815633)))

(assert (=> b!4652215 call!325025))

(declare-fun lt!1815629 () Unit!117676)

(declare-fun Unit!117866 () Unit!117676)

(assert (=> b!4652215 (= lt!1815629 Unit!117866)))

(declare-fun bm!325021 () Bool)

(assert (=> bm!325021 (= call!325024 (lemmaContainsAllItsOwnKeys!590 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))))))

(declare-fun b!4652216 () Bool)

(assert (=> b!4652216 (= e!2902480 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) lambda!198643))))

(assert (= (and d!1474687 c!796236) b!4652215))

(assert (= (and d!1474687 (not c!796236)) b!4652214))

(assert (= (and b!4652214 res!1955561) b!4652216))

(assert (= (or b!4652215 b!4652214) bm!325021))

(assert (= (or b!4652215 b!4652214) bm!325019))

(assert (= (or b!4652215 b!4652214) bm!325020))

(assert (= (and d!1474687 res!1955562) b!4652212))

(assert (= (and b!4652212 res!1955560) b!4652213))

(declare-fun m!5528317 () Bool)

(assert (=> b!4652216 m!5528317))

(declare-fun m!5528319 () Bool)

(assert (=> b!4652213 m!5528319))

(declare-fun m!5528321 () Bool)

(assert (=> b!4652212 m!5528321))

(assert (=> bm!325021 m!5527335))

(declare-fun m!5528323 () Bool)

(assert (=> bm!325021 m!5528323))

(declare-fun m!5528325 () Bool)

(assert (=> bm!325019 m!5528325))

(declare-fun m!5528327 () Bool)

(assert (=> d!1474687 m!5528327))

(assert (=> d!1474687 m!5527999))

(declare-fun m!5528329 () Bool)

(assert (=> bm!325020 m!5528329))

(declare-fun m!5528331 () Bool)

(assert (=> b!4652214 m!5528331))

(declare-fun m!5528333 () Bool)

(assert (=> b!4652214 m!5528333))

(assert (=> b!4652214 m!5528333))

(declare-fun m!5528335 () Bool)

(assert (=> b!4652214 m!5528335))

(declare-fun m!5528337 () Bool)

(assert (=> b!4652214 m!5528337))

(assert (=> b!4652214 m!5528317))

(declare-fun m!5528339 () Bool)

(assert (=> b!4652214 m!5528339))

(declare-fun m!5528341 () Bool)

(assert (=> b!4652214 m!5528341))

(assert (=> b!4652214 m!5528339))

(assert (=> b!4652214 m!5527335))

(assert (=> b!4652214 m!5528335))

(declare-fun m!5528343 () Bool)

(assert (=> b!4652214 m!5528343))

(assert (=> b!4652214 m!5527335))

(declare-fun m!5528345 () Bool)

(assert (=> b!4652214 m!5528345))

(declare-fun m!5528347 () Bool)

(assert (=> b!4652214 m!5528347))

(assert (=> b!4651772 d!1474687))

(declare-fun d!1474703 () Bool)

(declare-fun res!1955587 () Bool)

(declare-fun e!2902500 () Bool)

(assert (=> d!1474703 (=> res!1955587 e!2902500)))

(assert (=> d!1474703 (= res!1955587 ((_ is Nil!51868) (toList!5191 (ListMap!4530 Nil!51868))))))

(assert (=> d!1474703 (= (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198569) e!2902500)))

(declare-fun b!4652243 () Bool)

(declare-fun e!2902501 () Bool)

(assert (=> b!4652243 (= e!2902500 e!2902501)))

(declare-fun res!1955588 () Bool)

(assert (=> b!4652243 (=> (not res!1955588) (not e!2902501))))

(assert (=> b!4652243 (= res!1955588 (dynLambda!21575 lambda!198569 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))))))

(declare-fun b!4652244 () Bool)

(assert (=> b!4652244 (= e!2902501 (forall!11004 (t!359100 (toList!5191 (ListMap!4530 Nil!51868))) lambda!198569))))

(assert (= (and d!1474703 (not res!1955587)) b!4652243))

(assert (= (and b!4652243 res!1955588) b!4652244))

(declare-fun b_lambda!173089 () Bool)

(assert (=> (not b_lambda!173089) (not b!4652243)))

(declare-fun m!5528349 () Bool)

(assert (=> b!4652243 m!5528349))

(declare-fun m!5528351 () Bool)

(assert (=> b!4652244 m!5528351))

(assert (=> b!4651772 d!1474703))

(declare-fun b!4652245 () Bool)

(declare-fun e!2902503 () Unit!117676)

(declare-fun Unit!117867 () Unit!117676)

(assert (=> b!4652245 (= e!2902503 Unit!117867)))

(declare-fun b!4652246 () Bool)

(declare-fun e!2902502 () Unit!117676)

(assert (=> b!4652246 (= e!2902502 e!2902503)))

(declare-fun c!796238 () Bool)

(declare-fun call!325027 () Bool)

(assert (=> b!4652246 (= c!796238 call!325027)))

(declare-fun b!4652247 () Bool)

(declare-fun lt!1815645 () Unit!117676)

(assert (=> b!4652247 (= e!2902502 lt!1815645)))

(declare-fun lt!1815646 () Unit!117676)

(assert (=> b!4652247 (= lt!1815646 (lemmaContainsKeyImpliesGetValueByKeyDefined!1502 (toList!5191 lt!1815239) (_1!29777 (h!58004 lt!1814957))))))

(assert (=> b!4652247 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815239) (_1!29777 (h!58004 lt!1814957))))))

(declare-fun lt!1815647 () Unit!117676)

(assert (=> b!4652247 (= lt!1815647 lt!1815646)))

(assert (=> b!4652247 (= lt!1815645 (lemmaInListThenGetKeysListContains!736 (toList!5191 lt!1815239) (_1!29777 (h!58004 lt!1814957))))))

(assert (=> b!4652247 call!325027))

(declare-fun b!4652248 () Bool)

(declare-fun e!2902506 () List!51995)

(assert (=> b!4652248 (= e!2902506 (keys!18366 lt!1815239))))

(declare-fun b!4652249 () Bool)

(assert (=> b!4652249 (= e!2902506 (getKeysList!741 (toList!5191 lt!1815239)))))

(declare-fun d!1474705 () Bool)

(declare-fun e!2902507 () Bool)

(assert (=> d!1474705 e!2902507))

(declare-fun res!1955591 () Bool)

(assert (=> d!1474705 (=> res!1955591 e!2902507)))

(declare-fun e!2902505 () Bool)

(assert (=> d!1474705 (= res!1955591 e!2902505)))

(declare-fun res!1955589 () Bool)

(assert (=> d!1474705 (=> (not res!1955589) (not e!2902505))))

(declare-fun lt!1815648 () Bool)

(assert (=> d!1474705 (= res!1955589 (not lt!1815648))))

(declare-fun lt!1815643 () Bool)

(assert (=> d!1474705 (= lt!1815648 lt!1815643)))

(declare-fun lt!1815649 () Unit!117676)

(assert (=> d!1474705 (= lt!1815649 e!2902502)))

(declare-fun c!796237 () Bool)

(assert (=> d!1474705 (= c!796237 lt!1815643)))

(assert (=> d!1474705 (= lt!1815643 (containsKey!2706 (toList!5191 lt!1815239) (_1!29777 (h!58004 lt!1814957))))))

(assert (=> d!1474705 (= (contains!15011 lt!1815239 (_1!29777 (h!58004 lt!1814957))) lt!1815648)))

(declare-fun b!4652250 () Bool)

(assert (=> b!4652250 (= e!2902505 (not (contains!15013 (keys!18366 lt!1815239) (_1!29777 (h!58004 lt!1814957)))))))

(declare-fun b!4652251 () Bool)

(declare-fun e!2902504 () Bool)

(assert (=> b!4652251 (= e!2902507 e!2902504)))

(declare-fun res!1955590 () Bool)

(assert (=> b!4652251 (=> (not res!1955590) (not e!2902504))))

(assert (=> b!4652251 (= res!1955590 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815239) (_1!29777 (h!58004 lt!1814957)))))))

(declare-fun b!4652252 () Bool)

(assert (=> b!4652252 (= e!2902504 (contains!15013 (keys!18366 lt!1815239) (_1!29777 (h!58004 lt!1814957))))))

(declare-fun b!4652253 () Bool)

(assert (=> b!4652253 false))

(declare-fun lt!1815642 () Unit!117676)

(declare-fun lt!1815644 () Unit!117676)

(assert (=> b!4652253 (= lt!1815642 lt!1815644)))

(assert (=> b!4652253 (containsKey!2706 (toList!5191 lt!1815239) (_1!29777 (h!58004 lt!1814957)))))

(assert (=> b!4652253 (= lt!1815644 (lemmaInGetKeysListThenContainsKey!740 (toList!5191 lt!1815239) (_1!29777 (h!58004 lt!1814957))))))

(declare-fun Unit!117868 () Unit!117676)

(assert (=> b!4652253 (= e!2902503 Unit!117868)))

(declare-fun bm!325022 () Bool)

(assert (=> bm!325022 (= call!325027 (contains!15013 e!2902506 (_1!29777 (h!58004 lt!1814957))))))

(declare-fun c!796239 () Bool)

(assert (=> bm!325022 (= c!796239 c!796237)))

(assert (= (and d!1474705 c!796237) b!4652247))

(assert (= (and d!1474705 (not c!796237)) b!4652246))

(assert (= (and b!4652246 c!796238) b!4652253))

(assert (= (and b!4652246 (not c!796238)) b!4652245))

(assert (= (or b!4652247 b!4652246) bm!325022))

(assert (= (and bm!325022 c!796239) b!4652249))

(assert (= (and bm!325022 (not c!796239)) b!4652248))

(assert (= (and d!1474705 res!1955589) b!4652250))

(assert (= (and d!1474705 (not res!1955591)) b!4652251))

(assert (= (and b!4652251 res!1955590) b!4652252))

(declare-fun m!5528357 () Bool)

(assert (=> d!1474705 m!5528357))

(declare-fun m!5528359 () Bool)

(assert (=> b!4652252 m!5528359))

(assert (=> b!4652252 m!5528359))

(declare-fun m!5528361 () Bool)

(assert (=> b!4652252 m!5528361))

(declare-fun m!5528363 () Bool)

(assert (=> b!4652251 m!5528363))

(assert (=> b!4652251 m!5528363))

(declare-fun m!5528365 () Bool)

(assert (=> b!4652251 m!5528365))

(declare-fun m!5528367 () Bool)

(assert (=> bm!325022 m!5528367))

(declare-fun m!5528369 () Bool)

(assert (=> b!4652247 m!5528369))

(assert (=> b!4652247 m!5528363))

(assert (=> b!4652247 m!5528363))

(assert (=> b!4652247 m!5528365))

(declare-fun m!5528371 () Bool)

(assert (=> b!4652247 m!5528371))

(assert (=> b!4652250 m!5528359))

(assert (=> b!4652250 m!5528359))

(assert (=> b!4652250 m!5528361))

(assert (=> b!4652248 m!5528359))

(assert (=> b!4652253 m!5528357))

(declare-fun m!5528373 () Bool)

(assert (=> b!4652253 m!5528373))

(declare-fun m!5528375 () Bool)

(assert (=> b!4652249 m!5528375))

(assert (=> b!4651772 d!1474705))

(declare-fun d!1474713 () Bool)

(declare-fun e!2902510 () Bool)

(assert (=> d!1474713 e!2902510))

(declare-fun res!1955594 () Bool)

(assert (=> d!1474713 (=> (not res!1955594) (not e!2902510))))

(declare-fun lt!1815652 () ListMap!4529)

(assert (=> d!1474713 (= res!1955594 (contains!15011 lt!1815652 (_1!29777 (h!58004 lt!1814957))))))

(declare-fun lt!1815653 () List!51992)

(assert (=> d!1474713 (= lt!1815652 (ListMap!4530 lt!1815653))))

(declare-fun lt!1815650 () Unit!117676)

(declare-fun lt!1815651 () Unit!117676)

(assert (=> d!1474713 (= lt!1815650 lt!1815651)))

(assert (=> d!1474713 (= (getValueByKey!1600 lt!1815653 (_1!29777 (h!58004 lt!1814957))) (Some!11811 (_2!29777 (h!58004 lt!1814957))))))

(assert (=> d!1474713 (= lt!1815651 (lemmaContainsTupThenGetReturnValue!918 lt!1815653 (_1!29777 (h!58004 lt!1814957)) (_2!29777 (h!58004 lt!1814957))))))

(assert (=> d!1474713 (= lt!1815653 (insertNoDuplicatedKeys!426 (toList!5191 (ListMap!4530 Nil!51868)) (_1!29777 (h!58004 lt!1814957)) (_2!29777 (h!58004 lt!1814957))))))

(assert (=> d!1474713 (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957)) lt!1815652)))

(declare-fun b!4652256 () Bool)

(declare-fun res!1955595 () Bool)

(assert (=> b!4652256 (=> (not res!1955595) (not e!2902510))))

(assert (=> b!4652256 (= res!1955595 (= (getValueByKey!1600 (toList!5191 lt!1815652) (_1!29777 (h!58004 lt!1814957))) (Some!11811 (_2!29777 (h!58004 lt!1814957)))))))

(declare-fun b!4652257 () Bool)

(assert (=> b!4652257 (= e!2902510 (contains!15015 (toList!5191 lt!1815652) (h!58004 lt!1814957)))))

(assert (= (and d!1474713 res!1955594) b!4652256))

(assert (= (and b!4652256 res!1955595) b!4652257))

(declare-fun m!5528383 () Bool)

(assert (=> d!1474713 m!5528383))

(declare-fun m!5528385 () Bool)

(assert (=> d!1474713 m!5528385))

(declare-fun m!5528387 () Bool)

(assert (=> d!1474713 m!5528387))

(declare-fun m!5528389 () Bool)

(assert (=> d!1474713 m!5528389))

(declare-fun m!5528391 () Bool)

(assert (=> b!4652256 m!5528391))

(declare-fun m!5528393 () Bool)

(assert (=> b!4652257 m!5528393))

(assert (=> b!4651772 d!1474713))

(declare-fun d!1474719 () Bool)

(assert (=> d!1474719 (dynLambda!21575 lambda!198569 (h!58004 lt!1814957))))

(declare-fun lt!1815654 () Unit!117676)

(assert (=> d!1474719 (= lt!1815654 (choose!31949 (toList!5191 lt!1815239) lambda!198569 (h!58004 lt!1814957)))))

(declare-fun e!2902513 () Bool)

(assert (=> d!1474719 e!2902513))

(declare-fun res!1955598 () Bool)

(assert (=> d!1474719 (=> (not res!1955598) (not e!2902513))))

(assert (=> d!1474719 (= res!1955598 (forall!11004 (toList!5191 lt!1815239) lambda!198569))))

(assert (=> d!1474719 (= (forallContained!3212 (toList!5191 lt!1815239) lambda!198569 (h!58004 lt!1814957)) lt!1815654)))

(declare-fun b!4652260 () Bool)

(assert (=> b!4652260 (= e!2902513 (contains!15015 (toList!5191 lt!1815239) (h!58004 lt!1814957)))))

(assert (= (and d!1474719 res!1955598) b!4652260))

(declare-fun b_lambda!173095 () Bool)

(assert (=> (not b_lambda!173095) (not d!1474719)))

(assert (=> d!1474719 m!5528239))

(declare-fun m!5528399 () Bool)

(assert (=> d!1474719 m!5528399))

(assert (=> d!1474719 m!5527333))

(declare-fun m!5528401 () Bool)

(assert (=> b!4652260 m!5528401))

(assert (=> b!4651772 d!1474719))

(declare-fun d!1474723 () Bool)

(declare-fun res!1955602 () Bool)

(declare-fun e!2902520 () Bool)

(assert (=> d!1474723 (=> res!1955602 e!2902520)))

(assert (=> d!1474723 (= res!1955602 ((_ is Nil!51868) (Cons!51868 lt!1814956 lt!1814957)))))

(assert (=> d!1474723 (= (forall!11004 (Cons!51868 lt!1814956 lt!1814957) lambda!198588) e!2902520)))

(declare-fun b!4652270 () Bool)

(declare-fun e!2902521 () Bool)

(assert (=> b!4652270 (= e!2902520 e!2902521)))

(declare-fun res!1955603 () Bool)

(assert (=> b!4652270 (=> (not res!1955603) (not e!2902521))))

(assert (=> b!4652270 (= res!1955603 (dynLambda!21575 lambda!198588 (h!58004 (Cons!51868 lt!1814956 lt!1814957))))))

(declare-fun b!4652271 () Bool)

(assert (=> b!4652271 (= e!2902521 (forall!11004 (t!359100 (Cons!51868 lt!1814956 lt!1814957)) lambda!198588))))

(assert (= (and d!1474723 (not res!1955602)) b!4652270))

(assert (= (and b!4652270 res!1955603) b!4652271))

(declare-fun b_lambda!173097 () Bool)

(assert (=> (not b_lambda!173097) (not b!4652270)))

(declare-fun m!5528403 () Bool)

(assert (=> b!4652270 m!5528403))

(declare-fun m!5528405 () Bool)

(assert (=> b!4652271 m!5528405))

(assert (=> d!1474461 d!1474723))

(declare-fun d!1474725 () Bool)

(declare-fun res!1955604 () Bool)

(declare-fun e!2902522 () Bool)

(assert (=> d!1474725 (=> res!1955604 e!2902522)))

(assert (=> d!1474725 (= res!1955604 (not ((_ is Cons!51868) (Cons!51868 lt!1814956 lt!1814957))))))

(assert (=> d!1474725 (= (noDuplicateKeys!1630 (Cons!51868 lt!1814956 lt!1814957)) e!2902522)))

(declare-fun b!4652272 () Bool)

(declare-fun e!2902523 () Bool)

(assert (=> b!4652272 (= e!2902522 e!2902523)))

(declare-fun res!1955605 () Bool)

(assert (=> b!4652272 (=> (not res!1955605) (not e!2902523))))

(assert (=> b!4652272 (= res!1955605 (not (containsKey!2702 (t!359100 (Cons!51868 lt!1814956 lt!1814957)) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957))))))))

(declare-fun b!4652273 () Bool)

(assert (=> b!4652273 (= e!2902523 (noDuplicateKeys!1630 (t!359100 (Cons!51868 lt!1814956 lt!1814957))))))

(assert (= (and d!1474725 (not res!1955604)) b!4652272))

(assert (= (and b!4652272 res!1955605) b!4652273))

(declare-fun m!5528407 () Bool)

(assert (=> b!4652272 m!5528407))

(declare-fun m!5528409 () Bool)

(assert (=> b!4652273 m!5528409))

(assert (=> d!1474461 d!1474725))

(declare-fun d!1474727 () Bool)

(declare-fun res!1955606 () Bool)

(declare-fun e!2902524 () Bool)

(assert (=> d!1474727 (=> res!1955606 e!2902524)))

(assert (=> d!1474727 (= res!1955606 ((_ is Nil!51868) oldBucket!40))))

(assert (=> d!1474727 (= (forall!11004 oldBucket!40 lambda!198583) e!2902524)))

(declare-fun b!4652274 () Bool)

(declare-fun e!2902525 () Bool)

(assert (=> b!4652274 (= e!2902524 e!2902525)))

(declare-fun res!1955607 () Bool)

(assert (=> b!4652274 (=> (not res!1955607) (not e!2902525))))

(assert (=> b!4652274 (= res!1955607 (dynLambda!21575 lambda!198583 (h!58004 oldBucket!40)))))

(declare-fun b!4652275 () Bool)

(assert (=> b!4652275 (= e!2902525 (forall!11004 (t!359100 oldBucket!40) lambda!198583))))

(assert (= (and d!1474727 (not res!1955606)) b!4652274))

(assert (= (and b!4652274 res!1955607) b!4652275))

(declare-fun b_lambda!173099 () Bool)

(assert (=> (not b_lambda!173099) (not b!4652274)))

(declare-fun m!5528427 () Bool)

(assert (=> b!4652274 m!5528427))

(declare-fun m!5528429 () Bool)

(assert (=> b!4652275 m!5528429))

(assert (=> d!1474455 d!1474727))

(assert (=> d!1474455 d!1474449))

(declare-fun d!1474729 () Bool)

(assert (=> d!1474729 (= (invariantList!1290 (toList!5191 lt!1815302)) (noDuplicatedKeys!345 (toList!5191 lt!1815302)))))

(declare-fun bs!1060028 () Bool)

(assert (= bs!1060028 d!1474729))

(declare-fun m!5528433 () Bool)

(assert (=> bs!1060028 m!5528433))

(assert (=> d!1474453 d!1474729))

(declare-fun d!1474733 () Bool)

(declare-fun res!1955608 () Bool)

(declare-fun e!2902528 () Bool)

(assert (=> d!1474733 (=> res!1955608 e!2902528)))

(assert (=> d!1474733 (= res!1955608 ((_ is Nil!51869) lt!1814954))))

(assert (=> d!1474733 (= (forall!11002 lt!1814954 lambda!198579) e!2902528)))

(declare-fun b!4652280 () Bool)

(declare-fun e!2902529 () Bool)

(assert (=> b!4652280 (= e!2902528 e!2902529)))

(declare-fun res!1955609 () Bool)

(assert (=> b!4652280 (=> (not res!1955609) (not e!2902529))))

(assert (=> b!4652280 (= res!1955609 (dynLambda!21574 lambda!198579 (h!58005 lt!1814954)))))

(declare-fun b!4652281 () Bool)

(assert (=> b!4652281 (= e!2902529 (forall!11002 (t!359101 lt!1814954) lambda!198579))))

(assert (= (and d!1474733 (not res!1955608)) b!4652280))

(assert (= (and b!4652280 res!1955609) b!4652281))

(declare-fun b_lambda!173101 () Bool)

(assert (=> (not b_lambda!173101) (not b!4652280)))

(declare-fun m!5528437 () Bool)

(assert (=> b!4652280 m!5528437))

(declare-fun m!5528439 () Bool)

(assert (=> b!4652281 m!5528439))

(assert (=> d!1474453 d!1474733))

(declare-fun d!1474737 () Bool)

(declare-fun res!1955610 () Bool)

(declare-fun e!2902530 () Bool)

(assert (=> d!1474737 (=> res!1955610 e!2902530)))

(assert (=> d!1474737 (= res!1955610 (not ((_ is Cons!51868) (t!359100 newBucket!224))))))

(assert (=> d!1474737 (= (noDuplicateKeys!1630 (t!359100 newBucket!224)) e!2902530)))

(declare-fun b!4652282 () Bool)

(declare-fun e!2902531 () Bool)

(assert (=> b!4652282 (= e!2902530 e!2902531)))

(declare-fun res!1955611 () Bool)

(assert (=> b!4652282 (=> (not res!1955611) (not e!2902531))))

(assert (=> b!4652282 (= res!1955611 (not (containsKey!2702 (t!359100 (t!359100 newBucket!224)) (_1!29777 (h!58004 (t!359100 newBucket!224))))))))

(declare-fun b!4652283 () Bool)

(assert (=> b!4652283 (= e!2902531 (noDuplicateKeys!1630 (t!359100 (t!359100 newBucket!224))))))

(assert (= (and d!1474737 (not res!1955610)) b!4652282))

(assert (= (and b!4652282 res!1955611) b!4652283))

(declare-fun m!5528441 () Bool)

(assert (=> b!4652282 m!5528441))

(declare-fun m!5528443 () Bool)

(assert (=> b!4652283 m!5528443))

(assert (=> b!4651835 d!1474737))

(declare-fun d!1474739 () Bool)

(declare-fun res!1955612 () Bool)

(declare-fun e!2902532 () Bool)

(assert (=> d!1474739 (=> res!1955612 e!2902532)))

(assert (=> d!1474739 (= res!1955612 ((_ is Nil!51868) lt!1814957))))

(assert (=> d!1474739 (= (forall!11004 lt!1814957 lambda!198570) e!2902532)))

(declare-fun b!4652284 () Bool)

(declare-fun e!2902533 () Bool)

(assert (=> b!4652284 (= e!2902532 e!2902533)))

(declare-fun res!1955613 () Bool)

(assert (=> b!4652284 (=> (not res!1955613) (not e!2902533))))

(assert (=> b!4652284 (= res!1955613 (dynLambda!21575 lambda!198570 (h!58004 lt!1814957)))))

(declare-fun b!4652285 () Bool)

(assert (=> b!4652285 (= e!2902533 (forall!11004 (t!359100 lt!1814957) lambda!198570))))

(assert (= (and d!1474739 (not res!1955612)) b!4652284))

(assert (= (and b!4652284 res!1955613) b!4652285))

(declare-fun b_lambda!173103 () Bool)

(assert (=> (not b_lambda!173103) (not b!4652284)))

(declare-fun m!5528445 () Bool)

(assert (=> b!4652284 m!5528445))

(declare-fun m!5528447 () Bool)

(assert (=> b!4652285 m!5528447))

(assert (=> d!1474425 d!1474739))

(assert (=> d!1474425 d!1474605))

(declare-fun d!1474741 () Bool)

(declare-fun res!1955614 () Bool)

(declare-fun e!2902534 () Bool)

(assert (=> d!1474741 (=> res!1955614 e!2902534)))

(assert (=> d!1474741 (= res!1955614 ((_ is Nil!51869) (toList!5192 lt!1814960)))))

(assert (=> d!1474741 (= (forall!11002 (toList!5192 lt!1814960) lambda!198573) e!2902534)))

(declare-fun b!4652286 () Bool)

(declare-fun e!2902535 () Bool)

(assert (=> b!4652286 (= e!2902534 e!2902535)))

(declare-fun res!1955615 () Bool)

(assert (=> b!4652286 (=> (not res!1955615) (not e!2902535))))

(assert (=> b!4652286 (= res!1955615 (dynLambda!21574 lambda!198573 (h!58005 (toList!5192 lt!1814960))))))

(declare-fun b!4652287 () Bool)

(assert (=> b!4652287 (= e!2902535 (forall!11002 (t!359101 (toList!5192 lt!1814960)) lambda!198573))))

(assert (= (and d!1474741 (not res!1955614)) b!4652286))

(assert (= (and b!4652286 res!1955615) b!4652287))

(declare-fun b_lambda!173105 () Bool)

(assert (=> (not b_lambda!173105) (not b!4652286)))

(declare-fun m!5528449 () Bool)

(assert (=> b!4652286 m!5528449))

(declare-fun m!5528451 () Bool)

(assert (=> b!4652287 m!5528451))

(assert (=> d!1474429 d!1474741))

(declare-fun d!1474743 () Bool)

(declare-fun res!1955616 () Bool)

(declare-fun e!2902536 () Bool)

(assert (=> d!1474743 (=> res!1955616 e!2902536)))

(assert (=> d!1474743 (= res!1955616 (not ((_ is Cons!51868) (t!359100 oldBucket!40))))))

(assert (=> d!1474743 (= (noDuplicateKeys!1630 (t!359100 oldBucket!40)) e!2902536)))

(declare-fun b!4652288 () Bool)

(declare-fun e!2902537 () Bool)

(assert (=> b!4652288 (= e!2902536 e!2902537)))

(declare-fun res!1955617 () Bool)

(assert (=> b!4652288 (=> (not res!1955617) (not e!2902537))))

(assert (=> b!4652288 (= res!1955617 (not (containsKey!2702 (t!359100 (t!359100 oldBucket!40)) (_1!29777 (h!58004 (t!359100 oldBucket!40))))))))

(declare-fun b!4652289 () Bool)

(assert (=> b!4652289 (= e!2902537 (noDuplicateKeys!1630 (t!359100 (t!359100 oldBucket!40))))))

(assert (= (and d!1474743 (not res!1955616)) b!4652288))

(assert (= (and b!4652288 res!1955617) b!4652289))

(declare-fun m!5528453 () Bool)

(assert (=> b!4652288 m!5528453))

(declare-fun m!5528455 () Bool)

(assert (=> b!4652289 m!5528455))

(assert (=> b!4651837 d!1474743))

(declare-fun d!1474745 () Bool)

(declare-fun res!1955626 () Bool)

(declare-fun e!2902544 () Bool)

(assert (=> d!1474745 (=> res!1955626 e!2902544)))

(assert (=> d!1474745 (= res!1955626 (and ((_ is Cons!51868) (toList!5191 lt!1814955)) (= (_1!29777 (h!58004 (toList!5191 lt!1814955))) key!4968)))))

(assert (=> d!1474745 (= (containsKey!2706 (toList!5191 lt!1814955) key!4968) e!2902544)))

(declare-fun b!4652298 () Bool)

(declare-fun e!2902545 () Bool)

(assert (=> b!4652298 (= e!2902544 e!2902545)))

(declare-fun res!1955627 () Bool)

(assert (=> b!4652298 (=> (not res!1955627) (not e!2902545))))

(assert (=> b!4652298 (= res!1955627 ((_ is Cons!51868) (toList!5191 lt!1814955)))))

(declare-fun b!4652299 () Bool)

(assert (=> b!4652299 (= e!2902545 (containsKey!2706 (t!359100 (toList!5191 lt!1814955)) key!4968))))

(assert (= (and d!1474745 (not res!1955626)) b!4652298))

(assert (= (and b!4652298 res!1955627) b!4652299))

(declare-fun m!5528457 () Bool)

(assert (=> b!4652299 m!5528457))

(assert (=> b!4651817 d!1474745))

(declare-fun d!1474747 () Bool)

(assert (=> d!1474747 (containsKey!2706 (toList!5191 lt!1814955) key!4968)))

(declare-fun lt!1815668 () Unit!117676)

(declare-fun choose!31958 (List!51992 K!13225) Unit!117676)

(assert (=> d!1474747 (= lt!1815668 (choose!31958 (toList!5191 lt!1814955) key!4968))))

(assert (=> d!1474747 (invariantList!1290 (toList!5191 lt!1814955))))

(assert (=> d!1474747 (= (lemmaInGetKeysListThenContainsKey!740 (toList!5191 lt!1814955) key!4968) lt!1815668)))

(declare-fun bs!1060029 () Bool)

(assert (= bs!1060029 d!1474747))

(assert (=> bs!1060029 m!5527387))

(declare-fun m!5528467 () Bool)

(assert (=> bs!1060029 m!5528467))

(declare-fun m!5528469 () Bool)

(assert (=> bs!1060029 m!5528469))

(assert (=> b!4651817 d!1474747))

(declare-fun d!1474751 () Bool)

(assert (=> d!1474751 (= (invariantList!1290 (toList!5191 lt!1815303)) (noDuplicatedKeys!345 (toList!5191 lt!1815303)))))

(declare-fun bs!1060030 () Bool)

(assert (= bs!1060030 d!1474751))

(declare-fun m!5528471 () Bool)

(assert (=> bs!1060030 m!5528471))

(assert (=> b!4651843 d!1474751))

(declare-fun d!1474753 () Bool)

(declare-fun res!1955630 () Bool)

(declare-fun e!2902547 () Bool)

(assert (=> d!1474753 (=> res!1955630 e!2902547)))

(assert (=> d!1474753 (= res!1955630 ((_ is Nil!51868) (toList!5191 (ListMap!4530 Nil!51868))))))

(assert (=> d!1474753 (= (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198588) e!2902547)))

(declare-fun b!4652302 () Bool)

(declare-fun e!2902548 () Bool)

(assert (=> b!4652302 (= e!2902547 e!2902548)))

(declare-fun res!1955631 () Bool)

(assert (=> b!4652302 (=> (not res!1955631) (not e!2902548))))

(assert (=> b!4652302 (= res!1955631 (dynLambda!21575 lambda!198588 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))))))

(declare-fun b!4652303 () Bool)

(assert (=> b!4652303 (= e!2902548 (forall!11004 (t!359100 (toList!5191 (ListMap!4530 Nil!51868))) lambda!198588))))

(assert (= (and d!1474753 (not res!1955630)) b!4652302))

(assert (= (and b!4652302 res!1955631) b!4652303))

(declare-fun b_lambda!173107 () Bool)

(assert (=> (not b_lambda!173107) (not b!4652302)))

(declare-fun m!5528473 () Bool)

(assert (=> b!4652302 m!5528473))

(declare-fun m!5528475 () Bool)

(assert (=> b!4652303 m!5528475))

(assert (=> b!4651849 d!1474753))

(declare-fun d!1474755 () Bool)

(declare-fun res!1955632 () Bool)

(declare-fun e!2902549 () Bool)

(assert (=> d!1474755 (=> res!1955632 e!2902549)))

(assert (=> d!1474755 (= res!1955632 (and ((_ is Cons!51868) lt!1814969) (= (_1!29777 (h!58004 lt!1814969)) key!4968)))))

(assert (=> d!1474755 (= (containsKey!2702 lt!1814969 key!4968) e!2902549)))

(declare-fun b!4652304 () Bool)

(declare-fun e!2902550 () Bool)

(assert (=> b!4652304 (= e!2902549 e!2902550)))

(declare-fun res!1955633 () Bool)

(assert (=> b!4652304 (=> (not res!1955633) (not e!2902550))))

(assert (=> b!4652304 (= res!1955633 ((_ is Cons!51868) lt!1814969))))

(declare-fun b!4652305 () Bool)

(assert (=> b!4652305 (= e!2902550 (containsKey!2702 (t!359100 lt!1814969) key!4968))))

(assert (= (and d!1474755 (not res!1955632)) b!4652304))

(assert (= (and b!4652304 res!1955633) b!4652305))

(declare-fun m!5528477 () Bool)

(assert (=> b!4652305 m!5528477))

(assert (=> d!1474371 d!1474755))

(assert (=> d!1474371 d!1474449))

(declare-fun d!1474757 () Bool)

(declare-fun isEmpty!28997 (Option!11812) Bool)

(assert (=> d!1474757 (= (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1814955) key!4968)) (not (isEmpty!28997 (getValueByKey!1600 (toList!5191 lt!1814955) key!4968))))))

(declare-fun bs!1060031 () Bool)

(assert (= bs!1060031 d!1474757))

(assert (=> bs!1060031 m!5527393))

(declare-fun m!5528479 () Bool)

(assert (=> bs!1060031 m!5528479))

(assert (=> b!4651815 d!1474757))

(declare-fun b!4652306 () Bool)

(declare-fun e!2902551 () Option!11812)

(assert (=> b!4652306 (= e!2902551 (Some!11811 (_2!29777 (h!58004 (toList!5191 lt!1814955)))))))

(declare-fun b!4652309 () Bool)

(declare-fun e!2902552 () Option!11812)

(assert (=> b!4652309 (= e!2902552 None!11811)))

(declare-fun b!4652307 () Bool)

(assert (=> b!4652307 (= e!2902551 e!2902552)))

(declare-fun c!796246 () Bool)

(assert (=> b!4652307 (= c!796246 (and ((_ is Cons!51868) (toList!5191 lt!1814955)) (not (= (_1!29777 (h!58004 (toList!5191 lt!1814955))) key!4968))))))

(declare-fun b!4652308 () Bool)

(assert (=> b!4652308 (= e!2902552 (getValueByKey!1600 (t!359100 (toList!5191 lt!1814955)) key!4968))))

(declare-fun d!1474759 () Bool)

(declare-fun c!796245 () Bool)

(assert (=> d!1474759 (= c!796245 (and ((_ is Cons!51868) (toList!5191 lt!1814955)) (= (_1!29777 (h!58004 (toList!5191 lt!1814955))) key!4968)))))

(assert (=> d!1474759 (= (getValueByKey!1600 (toList!5191 lt!1814955) key!4968) e!2902551)))

(assert (= (and d!1474759 c!796245) b!4652306))

(assert (= (and d!1474759 (not c!796245)) b!4652307))

(assert (= (and b!4652307 c!796246) b!4652308))

(assert (= (and b!4652307 (not c!796246)) b!4652309))

(declare-fun m!5528481 () Bool)

(assert (=> b!4652308 m!5528481))

(assert (=> b!4651815 d!1474759))

(declare-fun d!1474761 () Bool)

(declare-fun res!1955634 () Bool)

(declare-fun e!2902553 () Bool)

(assert (=> d!1474761 (=> res!1955634 e!2902553)))

(assert (=> d!1474761 (= res!1955634 ((_ is Nil!51868) (ite c!796165 (toList!5191 lt!1814962) (t!359100 oldBucket!40))))))

(assert (=> d!1474761 (= (forall!11004 (ite c!796165 (toList!5191 lt!1814962) (t!359100 oldBucket!40)) (ite c!796165 lambda!198580 lambda!198582)) e!2902553)))

(declare-fun b!4652310 () Bool)

(declare-fun e!2902554 () Bool)

(assert (=> b!4652310 (= e!2902553 e!2902554)))

(declare-fun res!1955635 () Bool)

(assert (=> b!4652310 (=> (not res!1955635) (not e!2902554))))

(assert (=> b!4652310 (= res!1955635 (dynLambda!21575 (ite c!796165 lambda!198580 lambda!198582) (h!58004 (ite c!796165 (toList!5191 lt!1814962) (t!359100 oldBucket!40)))))))

(declare-fun b!4652311 () Bool)

(assert (=> b!4652311 (= e!2902554 (forall!11004 (t!359100 (ite c!796165 (toList!5191 lt!1814962) (t!359100 oldBucket!40))) (ite c!796165 lambda!198580 lambda!198582)))))

(assert (= (and d!1474761 (not res!1955634)) b!4652310))

(assert (= (and b!4652310 res!1955635) b!4652311))

(declare-fun b_lambda!173109 () Bool)

(assert (=> (not b_lambda!173109) (not b!4652310)))

(declare-fun m!5528483 () Bool)

(assert (=> b!4652310 m!5528483))

(declare-fun m!5528485 () Bool)

(assert (=> b!4652311 m!5528485))

(assert (=> bm!324980 d!1474761))

(declare-fun d!1474763 () Bool)

(declare-fun res!1955636 () Bool)

(declare-fun e!2902555 () Bool)

(assert (=> d!1474763 (=> res!1955636 e!2902555)))

(assert (=> d!1474763 (= res!1955636 ((_ is Nil!51868) (toList!5191 (ListMap!4530 Nil!51868))))))

(assert (=> d!1474763 (= (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) (ite c!796167 lambda!198585 lambda!198587)) e!2902555)))

(declare-fun b!4652312 () Bool)

(declare-fun e!2902556 () Bool)

(assert (=> b!4652312 (= e!2902555 e!2902556)))

(declare-fun res!1955637 () Bool)

(assert (=> b!4652312 (=> (not res!1955637) (not e!2902556))))

(assert (=> b!4652312 (= res!1955637 (dynLambda!21575 (ite c!796167 lambda!198585 lambda!198587) (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))))))

(declare-fun b!4652313 () Bool)

(assert (=> b!4652313 (= e!2902556 (forall!11004 (t!359100 (toList!5191 (ListMap!4530 Nil!51868))) (ite c!796167 lambda!198585 lambda!198587)))))

(assert (= (and d!1474763 (not res!1955636)) b!4652312))

(assert (= (and b!4652312 res!1955637) b!4652313))

(declare-fun b_lambda!173111 () Bool)

(assert (=> (not b_lambda!173111) (not b!4652312)))

(declare-fun m!5528487 () Bool)

(assert (=> b!4652312 m!5528487))

(declare-fun m!5528489 () Bool)

(assert (=> b!4652313 m!5528489))

(assert (=> bm!324984 d!1474763))

(declare-fun b!4652314 () Bool)

(declare-fun e!2902558 () Unit!117676)

(declare-fun Unit!117881 () Unit!117676)

(assert (=> b!4652314 (= e!2902558 Unit!117881)))

(declare-fun b!4652315 () Bool)

(declare-fun e!2902557 () Unit!117676)

(assert (=> b!4652315 (= e!2902557 e!2902558)))

(declare-fun c!796248 () Bool)

(declare-fun call!325029 () Bool)

(assert (=> b!4652315 (= c!796248 call!325029)))

(declare-fun b!4652316 () Bool)

(declare-fun lt!1815672 () Unit!117676)

(assert (=> b!4652316 (= e!2902557 lt!1815672)))

(declare-fun lt!1815673 () Unit!117676)

(assert (=> b!4652316 (= lt!1815673 (lemmaContainsKeyImpliesGetValueByKeyDefined!1502 (toList!5191 lt!1815384) (_1!29777 (h!58004 oldBucket!40))))))

(assert (=> b!4652316 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815384) (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun lt!1815674 () Unit!117676)

(assert (=> b!4652316 (= lt!1815674 lt!1815673)))

(assert (=> b!4652316 (= lt!1815672 (lemmaInListThenGetKeysListContains!736 (toList!5191 lt!1815384) (_1!29777 (h!58004 oldBucket!40))))))

(assert (=> b!4652316 call!325029))

(declare-fun b!4652317 () Bool)

(declare-fun e!2902561 () List!51995)

(assert (=> b!4652317 (= e!2902561 (keys!18366 lt!1815384))))

(declare-fun b!4652318 () Bool)

(assert (=> b!4652318 (= e!2902561 (getKeysList!741 (toList!5191 lt!1815384)))))

(declare-fun d!1474765 () Bool)

(declare-fun e!2902562 () Bool)

(assert (=> d!1474765 e!2902562))

(declare-fun res!1955640 () Bool)

(assert (=> d!1474765 (=> res!1955640 e!2902562)))

(declare-fun e!2902560 () Bool)

(assert (=> d!1474765 (= res!1955640 e!2902560)))

(declare-fun res!1955638 () Bool)

(assert (=> d!1474765 (=> (not res!1955638) (not e!2902560))))

(declare-fun lt!1815675 () Bool)

(assert (=> d!1474765 (= res!1955638 (not lt!1815675))))

(declare-fun lt!1815670 () Bool)

(assert (=> d!1474765 (= lt!1815675 lt!1815670)))

(declare-fun lt!1815676 () Unit!117676)

(assert (=> d!1474765 (= lt!1815676 e!2902557)))

(declare-fun c!796247 () Bool)

(assert (=> d!1474765 (= c!796247 lt!1815670)))

(assert (=> d!1474765 (= lt!1815670 (containsKey!2706 (toList!5191 lt!1815384) (_1!29777 (h!58004 oldBucket!40))))))

(assert (=> d!1474765 (= (contains!15011 lt!1815384 (_1!29777 (h!58004 oldBucket!40))) lt!1815675)))

(declare-fun b!4652319 () Bool)

(assert (=> b!4652319 (= e!2902560 (not (contains!15013 (keys!18366 lt!1815384) (_1!29777 (h!58004 oldBucket!40)))))))

(declare-fun b!4652320 () Bool)

(declare-fun e!2902559 () Bool)

(assert (=> b!4652320 (= e!2902562 e!2902559)))

(declare-fun res!1955639 () Bool)

(assert (=> b!4652320 (=> (not res!1955639) (not e!2902559))))

(assert (=> b!4652320 (= res!1955639 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815384) (_1!29777 (h!58004 oldBucket!40)))))))

(declare-fun b!4652321 () Bool)

(assert (=> b!4652321 (= e!2902559 (contains!15013 (keys!18366 lt!1815384) (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun b!4652322 () Bool)

(assert (=> b!4652322 false))

(declare-fun lt!1815669 () Unit!117676)

(declare-fun lt!1815671 () Unit!117676)

(assert (=> b!4652322 (= lt!1815669 lt!1815671)))

(assert (=> b!4652322 (containsKey!2706 (toList!5191 lt!1815384) (_1!29777 (h!58004 oldBucket!40)))))

(assert (=> b!4652322 (= lt!1815671 (lemmaInGetKeysListThenContainsKey!740 (toList!5191 lt!1815384) (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun Unit!117883 () Unit!117676)

(assert (=> b!4652322 (= e!2902558 Unit!117883)))

(declare-fun bm!325024 () Bool)

(assert (=> bm!325024 (= call!325029 (contains!15013 e!2902561 (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun c!796249 () Bool)

(assert (=> bm!325024 (= c!796249 c!796247)))

(assert (= (and d!1474765 c!796247) b!4652316))

(assert (= (and d!1474765 (not c!796247)) b!4652315))

(assert (= (and b!4652315 c!796248) b!4652322))

(assert (= (and b!4652315 (not c!796248)) b!4652314))

(assert (= (or b!4652316 b!4652315) bm!325024))

(assert (= (and bm!325024 c!796249) b!4652318))

(assert (= (and bm!325024 (not c!796249)) b!4652317))

(assert (= (and d!1474765 res!1955638) b!4652319))

(assert (= (and d!1474765 (not res!1955640)) b!4652320))

(assert (= (and b!4652320 res!1955639) b!4652321))

(declare-fun m!5528491 () Bool)

(assert (=> d!1474765 m!5528491))

(declare-fun m!5528493 () Bool)

(assert (=> b!4652321 m!5528493))

(assert (=> b!4652321 m!5528493))

(declare-fun m!5528495 () Bool)

(assert (=> b!4652321 m!5528495))

(assert (=> b!4652320 m!5527581))

(assert (=> b!4652320 m!5527581))

(declare-fun m!5528497 () Bool)

(assert (=> b!4652320 m!5528497))

(declare-fun m!5528499 () Bool)

(assert (=> bm!325024 m!5528499))

(declare-fun m!5528501 () Bool)

(assert (=> b!4652316 m!5528501))

(assert (=> b!4652316 m!5527581))

(assert (=> b!4652316 m!5527581))

(assert (=> b!4652316 m!5528497))

(declare-fun m!5528503 () Bool)

(assert (=> b!4652316 m!5528503))

(assert (=> b!4652319 m!5528493))

(assert (=> b!4652319 m!5528493))

(assert (=> b!4652319 m!5528495))

(assert (=> b!4652317 m!5528493))

(assert (=> b!4652322 m!5528491))

(declare-fun m!5528505 () Bool)

(assert (=> b!4652322 m!5528505))

(declare-fun m!5528507 () Bool)

(assert (=> b!4652318 m!5528507))

(assert (=> d!1474473 d!1474765))

(declare-fun b!4652323 () Bool)

(declare-fun e!2902563 () Option!11812)

(assert (=> b!4652323 (= e!2902563 (Some!11811 (_2!29777 (h!58004 lt!1815385))))))

(declare-fun b!4652326 () Bool)

(declare-fun e!2902564 () Option!11812)

(assert (=> b!4652326 (= e!2902564 None!11811)))

(declare-fun b!4652324 () Bool)

(assert (=> b!4652324 (= e!2902563 e!2902564)))

(declare-fun c!796251 () Bool)

(assert (=> b!4652324 (= c!796251 (and ((_ is Cons!51868) lt!1815385) (not (= (_1!29777 (h!58004 lt!1815385)) (_1!29777 (h!58004 oldBucket!40))))))))

(declare-fun b!4652325 () Bool)

(assert (=> b!4652325 (= e!2902564 (getValueByKey!1600 (t!359100 lt!1815385) (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun d!1474767 () Bool)

(declare-fun c!796250 () Bool)

(assert (=> d!1474767 (= c!796250 (and ((_ is Cons!51868) lt!1815385) (= (_1!29777 (h!58004 lt!1815385)) (_1!29777 (h!58004 oldBucket!40)))))))

(assert (=> d!1474767 (= (getValueByKey!1600 lt!1815385 (_1!29777 (h!58004 oldBucket!40))) e!2902563)))

(assert (= (and d!1474767 c!796250) b!4652323))

(assert (= (and d!1474767 (not c!796250)) b!4652324))

(assert (= (and b!4652324 c!796251) b!4652325))

(assert (= (and b!4652324 (not c!796251)) b!4652326))

(declare-fun m!5528509 () Bool)

(assert (=> b!4652325 m!5528509))

(assert (=> d!1474473 d!1474767))

(declare-fun d!1474769 () Bool)

(assert (=> d!1474769 (= (getValueByKey!1600 lt!1815385 (_1!29777 (h!58004 oldBucket!40))) (Some!11811 (_2!29777 (h!58004 oldBucket!40))))))

(declare-fun lt!1815677 () Unit!117676)

(assert (=> d!1474769 (= lt!1815677 (choose!31952 lt!1815385 (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))))))

(declare-fun e!2902565 () Bool)

(assert (=> d!1474769 e!2902565))

(declare-fun res!1955641 () Bool)

(assert (=> d!1474769 (=> (not res!1955641) (not e!2902565))))

(assert (=> d!1474769 (= res!1955641 (invariantList!1290 lt!1815385))))

(assert (=> d!1474769 (= (lemmaContainsTupThenGetReturnValue!918 lt!1815385 (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))) lt!1815677)))

(declare-fun b!4652327 () Bool)

(declare-fun res!1955642 () Bool)

(assert (=> b!4652327 (=> (not res!1955642) (not e!2902565))))

(assert (=> b!4652327 (= res!1955642 (containsKey!2706 lt!1815385 (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun b!4652328 () Bool)

(assert (=> b!4652328 (= e!2902565 (contains!15015 lt!1815385 (tuple2!52967 (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40)))))))

(assert (= (and d!1474769 res!1955641) b!4652327))

(assert (= (and b!4652327 res!1955642) b!4652328))

(assert (=> d!1474769 m!5527575))

(declare-fun m!5528511 () Bool)

(assert (=> d!1474769 m!5528511))

(declare-fun m!5528513 () Bool)

(assert (=> d!1474769 m!5528513))

(declare-fun m!5528515 () Bool)

(assert (=> b!4652327 m!5528515))

(declare-fun m!5528517 () Bool)

(assert (=> b!4652328 m!5528517))

(assert (=> d!1474473 d!1474769))

(declare-fun bm!325025 () Bool)

(declare-fun call!325030 () List!51992)

(declare-fun call!325033 () List!51992)

(assert (=> bm!325025 (= call!325030 call!325033)))

(declare-fun c!796255 () Bool)

(declare-fun c!796252 () Bool)

(assert (=> bm!325025 (= c!796255 c!796252)))

(declare-fun b!4652329 () Bool)

(declare-fun e!2902572 () List!51992)

(declare-fun e!2902569 () List!51992)

(assert (=> b!4652329 (= e!2902572 e!2902569)))

(declare-fun res!1955646 () Bool)

(assert (=> b!4652329 (= res!1955646 ((_ is Cons!51868) (toList!5191 lt!1814959)))))

(declare-fun e!2902570 () Bool)

(assert (=> b!4652329 (=> (not res!1955646) (not e!2902570))))

(declare-fun c!796253 () Bool)

(assert (=> b!4652329 (= c!796253 e!2902570)))

(declare-fun b!4652330 () Bool)

(declare-fun e!2902568 () List!51992)

(declare-fun lt!1815680 () List!51992)

(assert (=> b!4652330 (= e!2902568 lt!1815680)))

(assert (=> b!4652330 (= lt!1815680 call!325030)))

(declare-fun c!796256 () Bool)

(assert (=> b!4652330 (= c!796256 (containsKey!2706 (insertNoDuplicatedKeys!426 (t!359100 (toList!5191 lt!1814959)) (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))) (_1!29777 (h!58004 (toList!5191 lt!1814959)))))))

(declare-fun lt!1815688 () Unit!117676)

(declare-fun e!2902566 () Unit!117676)

(assert (=> b!4652330 (= lt!1815688 e!2902566)))

(declare-fun b!4652331 () Bool)

(declare-fun e!2902571 () List!51992)

(assert (=> b!4652331 (= e!2902571 (insertNoDuplicatedKeys!426 (t!359100 (toList!5191 lt!1814959)) (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))))))

(declare-fun b!4652332 () Bool)

(assert (=> b!4652332 (= e!2902568 call!325030)))

(declare-fun c!796254 () Bool)

(declare-fun call!325031 () List!51995)

(declare-fun lt!1815683 () List!51992)

(declare-fun bm!325026 () Bool)

(assert (=> bm!325026 (= call!325031 (getKeysList!741 (ite c!796254 (toList!5191 lt!1814959) lt!1815683)))))

(declare-fun b!4652333 () Bool)

(declare-fun call!325032 () List!51992)

(assert (=> b!4652333 (= e!2902572 call!325032)))

(declare-fun lt!1815687 () List!51995)

(assert (=> b!4652333 (= lt!1815687 call!325031)))

(declare-fun lt!1815682 () Unit!117676)

(assert (=> b!4652333 (= lt!1815682 (lemmaSubseqRefl!126 lt!1815687))))

(assert (=> b!4652333 (subseq!642 lt!1815687 lt!1815687)))

(declare-fun lt!1815686 () Unit!117676)

(assert (=> b!4652333 (= lt!1815686 lt!1815682)))

(declare-fun b!4652334 () Bool)

(declare-fun res!1955644 () Bool)

(declare-fun e!2902567 () Bool)

(assert (=> b!4652334 (=> (not res!1955644) (not e!2902567))))

(declare-fun lt!1815679 () List!51992)

(assert (=> b!4652334 (= res!1955644 (containsKey!2706 lt!1815679 (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun bm!325027 () Bool)

(assert (=> bm!325027 (= call!325033 call!325032)))

(declare-fun b!4652335 () Bool)

(assert (=> b!4652335 (= e!2902567 (= (content!8986 (getKeysList!741 lt!1815679)) ((_ map or) (content!8986 (getKeysList!741 (toList!5191 lt!1814959))) (store ((as const (Array K!13225 Bool)) false) (_1!29777 (h!58004 oldBucket!40)) true))))))

(declare-fun d!1474771 () Bool)

(assert (=> d!1474771 e!2902567))

(declare-fun res!1955643 () Bool)

(assert (=> d!1474771 (=> (not res!1955643) (not e!2902567))))

(assert (=> d!1474771 (= res!1955643 (invariantList!1290 lt!1815679))))

(assert (=> d!1474771 (= lt!1815679 e!2902572)))

(assert (=> d!1474771 (= c!796254 (and ((_ is Cons!51868) (toList!5191 lt!1814959)) (= (_1!29777 (h!58004 (toList!5191 lt!1814959))) (_1!29777 (h!58004 oldBucket!40)))))))

(assert (=> d!1474771 (invariantList!1290 (toList!5191 lt!1814959))))

(assert (=> d!1474771 (= (insertNoDuplicatedKeys!426 (toList!5191 lt!1814959) (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))) lt!1815679)))

(declare-fun b!4652336 () Bool)

(declare-fun res!1955645 () Bool)

(assert (=> b!4652336 (=> (not res!1955645) (not e!2902567))))

(assert (=> b!4652336 (= res!1955645 (contains!15015 lt!1815679 (tuple2!52967 (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40)))))))

(declare-fun b!4652337 () Bool)

(assert (=> b!4652337 (= e!2902570 (not (containsKey!2706 (toList!5191 lt!1814959) (_1!29777 (h!58004 oldBucket!40)))))))

(declare-fun b!4652338 () Bool)

(declare-fun Unit!117886 () Unit!117676)

(assert (=> b!4652338 (= e!2902566 Unit!117886)))

(declare-fun b!4652339 () Bool)

(assert (=> b!4652339 (= c!796252 ((_ is Cons!51868) (toList!5191 lt!1814959)))))

(assert (=> b!4652339 (= e!2902569 e!2902568)))

(declare-fun b!4652340 () Bool)

(assert (=> b!4652340 (= e!2902569 call!325033)))

(declare-fun b!4652341 () Bool)

(assert (=> b!4652341 (= e!2902571 Nil!51868)))

(declare-fun bm!325028 () Bool)

(assert (=> bm!325028 (= call!325032 ($colon$colon!1057 (ite c!796254 (t!359100 (toList!5191 lt!1814959)) (ite c!796253 (toList!5191 lt!1814959) e!2902571)) (ite (or c!796254 c!796253) (tuple2!52967 (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))) (ite c!796252 (h!58004 (toList!5191 lt!1814959)) (tuple2!52967 (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40)))))))))

(declare-fun b!4652342 () Bool)

(assert (=> b!4652342 false))

(declare-fun lt!1815685 () Unit!117676)

(declare-fun lt!1815684 () Unit!117676)

(assert (=> b!4652342 (= lt!1815685 lt!1815684)))

(assert (=> b!4652342 (containsKey!2706 (t!359100 (toList!5191 lt!1814959)) (_1!29777 (h!58004 (toList!5191 lt!1814959))))))

(assert (=> b!4652342 (= lt!1815684 (lemmaInGetKeysListThenContainsKey!740 (t!359100 (toList!5191 lt!1814959)) (_1!29777 (h!58004 (toList!5191 lt!1814959)))))))

(declare-fun lt!1815681 () Unit!117676)

(declare-fun lt!1815678 () Unit!117676)

(assert (=> b!4652342 (= lt!1815681 lt!1815678)))

(assert (=> b!4652342 (contains!15013 call!325031 (_1!29777 (h!58004 (toList!5191 lt!1814959))))))

(assert (=> b!4652342 (= lt!1815678 (lemmaInListThenGetKeysListContains!736 lt!1815683 (_1!29777 (h!58004 (toList!5191 lt!1814959)))))))

(assert (=> b!4652342 (= lt!1815683 (insertNoDuplicatedKeys!426 (t!359100 (toList!5191 lt!1814959)) (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))))))

(declare-fun Unit!117887 () Unit!117676)

(assert (=> b!4652342 (= e!2902566 Unit!117887)))

(assert (= (and d!1474771 c!796254) b!4652333))

(assert (= (and d!1474771 (not c!796254)) b!4652329))

(assert (= (and b!4652329 res!1955646) b!4652337))

(assert (= (and b!4652329 c!796253) b!4652340))

(assert (= (and b!4652329 (not c!796253)) b!4652339))

(assert (= (and b!4652339 c!796252) b!4652330))

(assert (= (and b!4652339 (not c!796252)) b!4652332))

(assert (= (and b!4652330 c!796256) b!4652342))

(assert (= (and b!4652330 (not c!796256)) b!4652338))

(assert (= (or b!4652330 b!4652332) bm!325025))

(assert (= (and bm!325025 c!796255) b!4652331))

(assert (= (and bm!325025 (not c!796255)) b!4652341))

(assert (= (or b!4652340 bm!325025) bm!325027))

(assert (= (or b!4652333 b!4652342) bm!325026))

(assert (= (or b!4652333 bm!325027) bm!325028))

(assert (= (and d!1474771 res!1955643) b!4652334))

(assert (= (and b!4652334 res!1955644) b!4652336))

(assert (= (and b!4652336 res!1955645) b!4652335))

(declare-fun m!5528519 () Bool)

(assert (=> b!4652331 m!5528519))

(declare-fun m!5528521 () Bool)

(assert (=> bm!325028 m!5528521))

(declare-fun m!5528523 () Bool)

(assert (=> b!4652333 m!5528523))

(declare-fun m!5528525 () Bool)

(assert (=> b!4652333 m!5528525))

(assert (=> b!4652330 m!5528519))

(assert (=> b!4652330 m!5528519))

(declare-fun m!5528527 () Bool)

(assert (=> b!4652330 m!5528527))

(declare-fun m!5528529 () Bool)

(assert (=> bm!325026 m!5528529))

(declare-fun m!5528531 () Bool)

(assert (=> b!4652336 m!5528531))

(declare-fun m!5528533 () Bool)

(assert (=> b!4652337 m!5528533))

(declare-fun m!5528535 () Bool)

(assert (=> b!4652335 m!5528535))

(assert (=> b!4652335 m!5527909))

(declare-fun m!5528537 () Bool)

(assert (=> b!4652335 m!5528537))

(assert (=> b!4652335 m!5527909))

(assert (=> b!4652335 m!5527913))

(assert (=> b!4652335 m!5528537))

(declare-fun m!5528539 () Bool)

(assert (=> b!4652335 m!5528539))

(declare-fun m!5528541 () Bool)

(assert (=> b!4652342 m!5528541))

(assert (=> b!4652342 m!5527919))

(declare-fun m!5528543 () Bool)

(assert (=> b!4652342 m!5528543))

(assert (=> b!4652342 m!5528519))

(assert (=> b!4652342 m!5527923))

(declare-fun m!5528545 () Bool)

(assert (=> b!4652334 m!5528545))

(declare-fun m!5528547 () Bool)

(assert (=> d!1474771 m!5528547))

(assert (=> d!1474771 m!5527929))

(assert (=> d!1474473 d!1474771))

(assert (=> d!1474431 d!1474745))

(declare-fun b!4652343 () Bool)

(declare-fun e!2902573 () Option!11812)

(assert (=> b!4652343 (= e!2902573 (Some!11811 (_2!29777 (h!58004 (toList!5191 lt!1815359)))))))

(declare-fun b!4652346 () Bool)

(declare-fun e!2902574 () Option!11812)

(assert (=> b!4652346 (= e!2902574 None!11811)))

(declare-fun b!4652344 () Bool)

(assert (=> b!4652344 (= e!2902573 e!2902574)))

(declare-fun c!796258 () Bool)

(assert (=> b!4652344 (= c!796258 (and ((_ is Cons!51868) (toList!5191 lt!1815359)) (not (= (_1!29777 (h!58004 (toList!5191 lt!1815359))) (_1!29777 lt!1814956)))))))

(declare-fun b!4652345 () Bool)

(assert (=> b!4652345 (= e!2902574 (getValueByKey!1600 (t!359100 (toList!5191 lt!1815359)) (_1!29777 lt!1814956)))))

(declare-fun d!1474773 () Bool)

(declare-fun c!796257 () Bool)

(assert (=> d!1474773 (= c!796257 (and ((_ is Cons!51868) (toList!5191 lt!1815359)) (= (_1!29777 (h!58004 (toList!5191 lt!1815359))) (_1!29777 lt!1814956))))))

(assert (=> d!1474773 (= (getValueByKey!1600 (toList!5191 lt!1815359) (_1!29777 lt!1814956)) e!2902573)))

(assert (= (and d!1474773 c!796257) b!4652343))

(assert (= (and d!1474773 (not c!796257)) b!4652344))

(assert (= (and b!4652344 c!796258) b!4652345))

(assert (= (and b!4652344 (not c!796258)) b!4652346))

(declare-fun m!5528549 () Bool)

(assert (=> b!4652345 m!5528549))

(assert (=> b!4651858 d!1474773))

(declare-fun d!1474775 () Bool)

(assert (=> d!1474775 (= (invariantList!1290 (toList!5191 lt!1815300)) (noDuplicatedKeys!345 (toList!5191 lt!1815300)))))

(declare-fun bs!1060032 () Bool)

(assert (= bs!1060032 d!1474775))

(declare-fun m!5528551 () Bool)

(assert (=> bs!1060032 m!5528551))

(assert (=> d!1474441 d!1474775))

(declare-fun d!1474777 () Bool)

(declare-fun res!1955647 () Bool)

(declare-fun e!2902575 () Bool)

(assert (=> d!1474777 (=> res!1955647 e!2902575)))

(assert (=> d!1474777 (= res!1955647 ((_ is Nil!51869) (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))))

(assert (=> d!1474777 (= (forall!11002 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869) lambda!198576) e!2902575)))

(declare-fun b!4652347 () Bool)

(declare-fun e!2902576 () Bool)

(assert (=> b!4652347 (= e!2902575 e!2902576)))

(declare-fun res!1955648 () Bool)

(assert (=> b!4652347 (=> (not res!1955648) (not e!2902576))))

(assert (=> b!4652347 (= res!1955648 (dynLambda!21574 lambda!198576 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))))))

(declare-fun b!4652348 () Bool)

(assert (=> b!4652348 (= e!2902576 (forall!11002 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)) lambda!198576))))

(assert (= (and d!1474777 (not res!1955647)) b!4652347))

(assert (= (and b!4652347 res!1955648) b!4652348))

(declare-fun b_lambda!173113 () Bool)

(assert (=> (not b_lambda!173113) (not b!4652347)))

(declare-fun m!5528553 () Bool)

(assert (=> b!4652347 m!5528553))

(declare-fun m!5528555 () Bool)

(assert (=> b!4652348 m!5528555))

(assert (=> d!1474441 d!1474777))

(declare-fun d!1474779 () Bool)

(declare-fun res!1955649 () Bool)

(declare-fun e!2902577 () Bool)

(assert (=> d!1474779 (=> res!1955649 e!2902577)))

(assert (=> d!1474779 (= res!1955649 ((_ is Nil!51868) (toList!5191 lt!1815333)))))

(assert (=> d!1474779 (= (forall!11004 (toList!5191 lt!1815333) lambda!198587) e!2902577)))

(declare-fun b!4652349 () Bool)

(declare-fun e!2902578 () Bool)

(assert (=> b!4652349 (= e!2902577 e!2902578)))

(declare-fun res!1955650 () Bool)

(assert (=> b!4652349 (=> (not res!1955650) (not e!2902578))))

(assert (=> b!4652349 (= res!1955650 (dynLambda!21575 lambda!198587 (h!58004 (toList!5191 lt!1815333))))))

(declare-fun b!4652350 () Bool)

(assert (=> b!4652350 (= e!2902578 (forall!11004 (t!359100 (toList!5191 lt!1815333)) lambda!198587))))

(assert (= (and d!1474779 (not res!1955649)) b!4652349))

(assert (= (and b!4652349 res!1955650) b!4652350))

(declare-fun b_lambda!173115 () Bool)

(assert (=> (not b_lambda!173115) (not b!4652349)))

(declare-fun m!5528557 () Bool)

(assert (=> b!4652349 m!5528557))

(declare-fun m!5528559 () Bool)

(assert (=> b!4652350 m!5528559))

(assert (=> b!4651851 d!1474779))

(declare-fun b!4652351 () Bool)

(declare-fun e!2902580 () Unit!117676)

(declare-fun Unit!117889 () Unit!117676)

(assert (=> b!4652351 (= e!2902580 Unit!117889)))

(declare-fun b!4652352 () Bool)

(declare-fun e!2902579 () Unit!117676)

(assert (=> b!4652352 (= e!2902579 e!2902580)))

(declare-fun c!796260 () Bool)

(declare-fun call!325034 () Bool)

(assert (=> b!4652352 (= c!796260 call!325034)))

(declare-fun b!4652353 () Bool)

(declare-fun lt!1815692 () Unit!117676)

(assert (=> b!4652353 (= e!2902579 lt!1815692)))

(declare-fun lt!1815693 () Unit!117676)

(assert (=> b!4652353 (= lt!1815693 (lemmaContainsKeyImpliesGetValueByKeyDefined!1502 (toList!5191 lt!1815333) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(assert (=> b!4652353 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815333) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(declare-fun lt!1815694 () Unit!117676)

(assert (=> b!4652353 (= lt!1815694 lt!1815693)))

(assert (=> b!4652353 (= lt!1815692 (lemmaInListThenGetKeysListContains!736 (toList!5191 lt!1815333) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(assert (=> b!4652353 call!325034))

(declare-fun b!4652354 () Bool)

(declare-fun e!2902583 () List!51995)

(assert (=> b!4652354 (= e!2902583 (keys!18366 lt!1815333))))

(declare-fun b!4652355 () Bool)

(assert (=> b!4652355 (= e!2902583 (getKeysList!741 (toList!5191 lt!1815333)))))

(declare-fun d!1474781 () Bool)

(declare-fun e!2902584 () Bool)

(assert (=> d!1474781 e!2902584))

(declare-fun res!1955653 () Bool)

(assert (=> d!1474781 (=> res!1955653 e!2902584)))

(declare-fun e!2902582 () Bool)

(assert (=> d!1474781 (= res!1955653 e!2902582)))

(declare-fun res!1955651 () Bool)

(assert (=> d!1474781 (=> (not res!1955651) (not e!2902582))))

(declare-fun lt!1815695 () Bool)

(assert (=> d!1474781 (= res!1955651 (not lt!1815695))))

(declare-fun lt!1815690 () Bool)

(assert (=> d!1474781 (= lt!1815695 lt!1815690)))

(declare-fun lt!1815696 () Unit!117676)

(assert (=> d!1474781 (= lt!1815696 e!2902579)))

(declare-fun c!796259 () Bool)

(assert (=> d!1474781 (= c!796259 lt!1815690)))

(assert (=> d!1474781 (= lt!1815690 (containsKey!2706 (toList!5191 lt!1815333) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(assert (=> d!1474781 (= (contains!15011 lt!1815333 (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) lt!1815695)))

(declare-fun b!4652356 () Bool)

(assert (=> b!4652356 (= e!2902582 (not (contains!15013 (keys!18366 lt!1815333) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957))))))))

(declare-fun b!4652357 () Bool)

(declare-fun e!2902581 () Bool)

(assert (=> b!4652357 (= e!2902584 e!2902581)))

(declare-fun res!1955652 () Bool)

(assert (=> b!4652357 (=> (not res!1955652) (not e!2902581))))

(assert (=> b!4652357 (= res!1955652 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815333) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957))))))))

(declare-fun b!4652358 () Bool)

(assert (=> b!4652358 (= e!2902581 (contains!15013 (keys!18366 lt!1815333) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(declare-fun b!4652359 () Bool)

(assert (=> b!4652359 false))

(declare-fun lt!1815689 () Unit!117676)

(declare-fun lt!1815691 () Unit!117676)

(assert (=> b!4652359 (= lt!1815689 lt!1815691)))

(assert (=> b!4652359 (containsKey!2706 (toList!5191 lt!1815333) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957))))))

(assert (=> b!4652359 (= lt!1815691 (lemmaInGetKeysListThenContainsKey!740 (toList!5191 lt!1815333) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(declare-fun Unit!117891 () Unit!117676)

(assert (=> b!4652359 (= e!2902580 Unit!117891)))

(declare-fun bm!325029 () Bool)

(assert (=> bm!325029 (= call!325034 (contains!15013 e!2902583 (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(declare-fun c!796261 () Bool)

(assert (=> bm!325029 (= c!796261 c!796259)))

(assert (= (and d!1474781 c!796259) b!4652353))

(assert (= (and d!1474781 (not c!796259)) b!4652352))

(assert (= (and b!4652352 c!796260) b!4652359))

(assert (= (and b!4652352 (not c!796260)) b!4652351))

(assert (= (or b!4652353 b!4652352) bm!325029))

(assert (= (and bm!325029 c!796261) b!4652355))

(assert (= (and bm!325029 (not c!796261)) b!4652354))

(assert (= (and d!1474781 res!1955651) b!4652356))

(assert (= (and d!1474781 (not res!1955653)) b!4652357))

(assert (= (and b!4652357 res!1955652) b!4652358))

(declare-fun m!5528561 () Bool)

(assert (=> d!1474781 m!5528561))

(declare-fun m!5528563 () Bool)

(assert (=> b!4652358 m!5528563))

(assert (=> b!4652358 m!5528563))

(declare-fun m!5528565 () Bool)

(assert (=> b!4652358 m!5528565))

(declare-fun m!5528567 () Bool)

(assert (=> b!4652357 m!5528567))

(assert (=> b!4652357 m!5528567))

(declare-fun m!5528569 () Bool)

(assert (=> b!4652357 m!5528569))

(declare-fun m!5528571 () Bool)

(assert (=> bm!325029 m!5528571))

(declare-fun m!5528573 () Bool)

(assert (=> b!4652353 m!5528573))

(assert (=> b!4652353 m!5528567))

(assert (=> b!4652353 m!5528567))

(assert (=> b!4652353 m!5528569))

(declare-fun m!5528575 () Bool)

(assert (=> b!4652353 m!5528575))

(assert (=> b!4652356 m!5528563))

(assert (=> b!4652356 m!5528563))

(assert (=> b!4652356 m!5528565))

(assert (=> b!4652354 m!5528563))

(assert (=> b!4652359 m!5528561))

(declare-fun m!5528577 () Bool)

(assert (=> b!4652359 m!5528577))

(declare-fun m!5528579 () Bool)

(assert (=> b!4652355 m!5528579))

(assert (=> b!4651851 d!1474781))

(declare-fun bs!1060033 () Bool)

(declare-fun b!4652363 () Bool)

(assert (= bs!1060033 (and b!4652363 b!4652214)))

(declare-fun lambda!198646 () Int)

(assert (=> bs!1060033 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198646 lambda!198641))))

(assert (=> bs!1060033 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815624) (= lambda!198646 lambda!198643))))

(declare-fun bs!1060034 () Bool)

(assert (= bs!1060034 (and b!4652363 d!1474461)))

(assert (=> bs!1060034 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815328) (= lambda!198646 lambda!198588))))

(declare-fun bs!1060035 () Bool)

(assert (= bs!1060035 (and b!4652363 d!1474663)))

(assert (=> bs!1060035 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1814962) (= lambda!198646 lambda!198633))))

(declare-fun bs!1060036 () Bool)

(assert (= bs!1060036 (and b!4652363 b!4651851)))

(assert (=> bs!1060036 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (ListMap!4530 Nil!51868)) (= lambda!198646 lambda!198586))))

(declare-fun bs!1060037 () Bool)

(assert (= bs!1060037 (and b!4652363 d!1474629)))

(assert (=> bs!1060037 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815539) (= lambda!198646 lambda!198623))))

(declare-fun bs!1060038 () Bool)

(assert (= bs!1060038 (and b!4652363 b!4651862)))

(assert (=> bs!1060038 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (ListMap!4530 Nil!51868)) (= lambda!198646 lambda!198590))))

(declare-fun bs!1060039 () Bool)

(assert (= bs!1060039 (and b!4652363 d!1474445)))

(assert (=> bs!1060039 (not (= lambda!198646 lambda!198577))))

(declare-fun bs!1060040 () Bool)

(assert (= bs!1060040 (and b!4652363 b!4651970)))

(assert (=> bs!1060040 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815433) (= lambda!198646 lambda!198606))))

(declare-fun bs!1060041 () Bool)

(assert (= bs!1060041 (and b!4652363 b!4651772)))

(assert (=> bs!1060041 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815244) (= lambda!198646 lambda!198569))))

(assert (=> bs!1060040 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198646 lambda!198605))))

(declare-fun bs!1060042 () Bool)

(assert (= bs!1060042 (and b!4652363 b!4652134)))

(assert (=> bs!1060042 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198646 lambda!198617))))

(declare-fun bs!1060043 () Bool)

(assert (= bs!1060043 (and b!4652363 b!4651765)))

(assert (=> bs!1060043 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815223) (= lambda!198646 lambda!198564))))

(declare-fun bs!1060044 () Bool)

(assert (= bs!1060044 (and b!4652363 b!4651844)))

(assert (=> bs!1060044 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815313) (= lambda!198646 lambda!198582))))

(declare-fun bs!1060045 () Bool)

(assert (= bs!1060045 (and b!4652363 d!1474503)))

(assert (=> bs!1060045 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815313) (= lambda!198646 lambda!198603))))

(declare-fun bs!1060046 () Bool)

(assert (= bs!1060046 (and b!4652363 b!4651852)))

(assert (=> bs!1060046 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (ListMap!4530 Nil!51868)) (= lambda!198646 lambda!198585))))

(declare-fun bs!1060047 () Bool)

(assert (= bs!1060047 (and b!4652363 d!1474391)))

(assert (=> bs!1060047 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815213) (= lambda!198646 lambda!198566))))

(declare-fun bs!1060048 () Bool)

(assert (= bs!1060048 (and b!4652363 d!1474365)))

(assert (=> bs!1060048 (not (= lambda!198646 lambda!198476))))

(assert (=> bs!1060042 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815549) (= lambda!198646 lambda!198618))))

(declare-fun bs!1060049 () Bool)

(assert (= bs!1060049 (and b!4652363 b!4651845)))

(assert (=> bs!1060049 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1814962) (= lambda!198646 lambda!198580))))

(declare-fun bs!1060050 () Bool)

(assert (= bs!1060050 (and b!4652363 b!4651766)))

(assert (=> bs!1060050 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (ListMap!4530 Nil!51868)) (= lambda!198646 lambda!198562))))

(declare-fun bs!1060051 () Bool)

(assert (= bs!1060051 (and b!4652363 d!1474467)))

(assert (=> bs!1060051 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815361) (= lambda!198646 lambda!198592))))

(declare-fun bs!1060052 () Bool)

(assert (= bs!1060052 (and b!4652363 b!4651971)))

(assert (=> bs!1060052 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198646 lambda!198604))))

(declare-fun bs!1060053 () Bool)

(assert (= bs!1060053 (and b!4652363 d!1474649)))

(assert (=> bs!1060053 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (ListMap!4530 Nil!51868)) (= lambda!198646 lambda!198632))))

(assert (=> bs!1060043 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (ListMap!4530 Nil!51868)) (= lambda!198646 lambda!198563))))

(declare-fun bs!1060054 () Bool)

(assert (= bs!1060054 (and b!4652363 b!4652135)))

(assert (=> bs!1060054 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198646 lambda!198616))))

(declare-fun bs!1060055 () Bool)

(assert (= bs!1060055 (and b!4652363 b!4651773)))

(assert (=> bs!1060055 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (ListMap!4530 Nil!51868)) (= lambda!198646 lambda!198567))))

(declare-fun bs!1060056 () Bool)

(assert (= bs!1060056 (and b!4652363 d!1474531)))

(assert (=> bs!1060056 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815423) (= lambda!198646 lambda!198607))))

(declare-fun bs!1060057 () Bool)

(assert (= bs!1060057 (and b!4652363 b!4652215)))

(assert (=> bs!1060057 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198646 lambda!198635))))

(declare-fun bs!1060058 () Bool)

(assert (= bs!1060058 (and b!4652363 d!1474687)))

(assert (=> bs!1060058 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815614) (= lambda!198646 lambda!198644))))

(declare-fun bs!1060059 () Bool)

(assert (= bs!1060059 (and b!4652363 d!1474455)))

(assert (=> bs!1060059 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815303) (= lambda!198646 lambda!198583))))

(declare-fun bs!1060060 () Bool)

(assert (= bs!1060060 (and b!4652363 b!4651863)))

(assert (=> bs!1060060 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (ListMap!4530 Nil!51868)) (= lambda!198646 lambda!198589))))

(assert (=> bs!1060041 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (ListMap!4530 Nil!51868)) (= lambda!198646 lambda!198568))))

(assert (=> bs!1060044 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1814962) (= lambda!198646 lambda!198581))))

(declare-fun bs!1060061 () Bool)

(assert (= bs!1060061 (and b!4652363 d!1474425)))

(assert (=> bs!1060061 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815234) (= lambda!198646 lambda!198570))))

(assert (=> bs!1060038 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815371) (= lambda!198646 lambda!198591))))

(declare-fun bs!1060062 () Bool)

(assert (= bs!1060062 (and b!4652363 d!1474677)))

(assert (=> bs!1060062 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815244) (= lambda!198646 lambda!198634))))

(assert (=> bs!1060036 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815338) (= lambda!198646 lambda!198587))))

(assert (=> b!4652363 true))

(declare-fun bs!1060063 () Bool)

(declare-fun b!4652362 () Bool)

(assert (= bs!1060063 (and b!4652362 b!4652214)))

(declare-fun lambda!198647 () Int)

(assert (=> bs!1060063 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198647 lambda!198641))))

(declare-fun bs!1060064 () Bool)

(assert (= bs!1060064 (and b!4652362 d!1474461)))

(assert (=> bs!1060064 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815328) (= lambda!198647 lambda!198588))))

(declare-fun bs!1060065 () Bool)

(assert (= bs!1060065 (and b!4652362 d!1474663)))

(assert (=> bs!1060065 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1814962) (= lambda!198647 lambda!198633))))

(declare-fun bs!1060066 () Bool)

(assert (= bs!1060066 (and b!4652362 b!4651851)))

(assert (=> bs!1060066 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (ListMap!4530 Nil!51868)) (= lambda!198647 lambda!198586))))

(declare-fun bs!1060067 () Bool)

(assert (= bs!1060067 (and b!4652362 d!1474629)))

(assert (=> bs!1060067 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815539) (= lambda!198647 lambda!198623))))

(declare-fun bs!1060068 () Bool)

(assert (= bs!1060068 (and b!4652362 b!4651862)))

(assert (=> bs!1060068 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (ListMap!4530 Nil!51868)) (= lambda!198647 lambda!198590))))

(declare-fun bs!1060069 () Bool)

(assert (= bs!1060069 (and b!4652362 d!1474445)))

(assert (=> bs!1060069 (not (= lambda!198647 lambda!198577))))

(declare-fun bs!1060070 () Bool)

(assert (= bs!1060070 (and b!4652362 b!4652363)))

(assert (=> bs!1060070 (= lambda!198647 lambda!198646)))

(assert (=> bs!1060063 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815624) (= lambda!198647 lambda!198643))))

(declare-fun bs!1060071 () Bool)

(assert (= bs!1060071 (and b!4652362 b!4651970)))

(assert (=> bs!1060071 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815433) (= lambda!198647 lambda!198606))))

(declare-fun bs!1060072 () Bool)

(assert (= bs!1060072 (and b!4652362 b!4651772)))

(assert (=> bs!1060072 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815244) (= lambda!198647 lambda!198569))))

(assert (=> bs!1060071 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198647 lambda!198605))))

(declare-fun bs!1060073 () Bool)

(assert (= bs!1060073 (and b!4652362 b!4652134)))

(assert (=> bs!1060073 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198647 lambda!198617))))

(declare-fun bs!1060074 () Bool)

(assert (= bs!1060074 (and b!4652362 b!4651765)))

(assert (=> bs!1060074 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815223) (= lambda!198647 lambda!198564))))

(declare-fun bs!1060075 () Bool)

(assert (= bs!1060075 (and b!4652362 b!4651844)))

(assert (=> bs!1060075 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815313) (= lambda!198647 lambda!198582))))

(declare-fun bs!1060076 () Bool)

(assert (= bs!1060076 (and b!4652362 d!1474503)))

(assert (=> bs!1060076 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815313) (= lambda!198647 lambda!198603))))

(declare-fun bs!1060077 () Bool)

(assert (= bs!1060077 (and b!4652362 b!4651852)))

(assert (=> bs!1060077 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (ListMap!4530 Nil!51868)) (= lambda!198647 lambda!198585))))

(declare-fun bs!1060078 () Bool)

(assert (= bs!1060078 (and b!4652362 d!1474391)))

(assert (=> bs!1060078 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815213) (= lambda!198647 lambda!198566))))

(declare-fun bs!1060079 () Bool)

(assert (= bs!1060079 (and b!4652362 d!1474365)))

(assert (=> bs!1060079 (not (= lambda!198647 lambda!198476))))

(assert (=> bs!1060073 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815549) (= lambda!198647 lambda!198618))))

(declare-fun bs!1060080 () Bool)

(assert (= bs!1060080 (and b!4652362 b!4651845)))

(assert (=> bs!1060080 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1814962) (= lambda!198647 lambda!198580))))

(declare-fun bs!1060081 () Bool)

(assert (= bs!1060081 (and b!4652362 b!4651766)))

(assert (=> bs!1060081 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (ListMap!4530 Nil!51868)) (= lambda!198647 lambda!198562))))

(declare-fun bs!1060082 () Bool)

(assert (= bs!1060082 (and b!4652362 d!1474467)))

(assert (=> bs!1060082 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815361) (= lambda!198647 lambda!198592))))

(declare-fun bs!1060083 () Bool)

(assert (= bs!1060083 (and b!4652362 b!4651971)))

(assert (=> bs!1060083 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198647 lambda!198604))))

(declare-fun bs!1060084 () Bool)

(assert (= bs!1060084 (and b!4652362 d!1474649)))

(assert (=> bs!1060084 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (ListMap!4530 Nil!51868)) (= lambda!198647 lambda!198632))))

(assert (=> bs!1060074 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (ListMap!4530 Nil!51868)) (= lambda!198647 lambda!198563))))

(declare-fun bs!1060085 () Bool)

(assert (= bs!1060085 (and b!4652362 b!4652135)))

(assert (=> bs!1060085 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198647 lambda!198616))))

(declare-fun bs!1060086 () Bool)

(assert (= bs!1060086 (and b!4652362 b!4651773)))

(assert (=> bs!1060086 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (ListMap!4530 Nil!51868)) (= lambda!198647 lambda!198567))))

(declare-fun bs!1060087 () Bool)

(assert (= bs!1060087 (and b!4652362 d!1474531)))

(assert (=> bs!1060087 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815423) (= lambda!198647 lambda!198607))))

(declare-fun bs!1060088 () Bool)

(assert (= bs!1060088 (and b!4652362 b!4652215)))

(assert (=> bs!1060088 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198647 lambda!198635))))

(declare-fun bs!1060089 () Bool)

(assert (= bs!1060089 (and b!4652362 d!1474687)))

(assert (=> bs!1060089 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815614) (= lambda!198647 lambda!198644))))

(declare-fun bs!1060090 () Bool)

(assert (= bs!1060090 (and b!4652362 d!1474455)))

(assert (=> bs!1060090 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815303) (= lambda!198647 lambda!198583))))

(declare-fun bs!1060091 () Bool)

(assert (= bs!1060091 (and b!4652362 b!4651863)))

(assert (=> bs!1060091 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (ListMap!4530 Nil!51868)) (= lambda!198647 lambda!198589))))

(assert (=> bs!1060072 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (ListMap!4530 Nil!51868)) (= lambda!198647 lambda!198568))))

(assert (=> bs!1060075 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1814962) (= lambda!198647 lambda!198581))))

(declare-fun bs!1060092 () Bool)

(assert (= bs!1060092 (and b!4652362 d!1474425)))

(assert (=> bs!1060092 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815234) (= lambda!198647 lambda!198570))))

(assert (=> bs!1060068 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815371) (= lambda!198647 lambda!198591))))

(declare-fun bs!1060093 () Bool)

(assert (= bs!1060093 (and b!4652362 d!1474677)))

(assert (=> bs!1060093 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815244) (= lambda!198647 lambda!198634))))

(assert (=> bs!1060066 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815338) (= lambda!198647 lambda!198587))))

(assert (=> b!4652362 true))

(declare-fun lambda!198648 () Int)

(declare-fun lt!1815707 () ListMap!4529)

(assert (=> bs!1060063 (= (= lt!1815707 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198648 lambda!198641))))

(assert (=> bs!1060064 (= (= lt!1815707 lt!1815328) (= lambda!198648 lambda!198588))))

(assert (=> bs!1060065 (= (= lt!1815707 lt!1814962) (= lambda!198648 lambda!198633))))

(assert (=> bs!1060066 (= (= lt!1815707 (ListMap!4530 Nil!51868)) (= lambda!198648 lambda!198586))))

(assert (=> b!4652362 (= (= lt!1815707 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198648 lambda!198647))))

(assert (=> bs!1060067 (= (= lt!1815707 lt!1815539) (= lambda!198648 lambda!198623))))

(assert (=> bs!1060068 (= (= lt!1815707 (ListMap!4530 Nil!51868)) (= lambda!198648 lambda!198590))))

(assert (=> bs!1060069 (not (= lambda!198648 lambda!198577))))

(assert (=> bs!1060070 (= (= lt!1815707 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198648 lambda!198646))))

(assert (=> bs!1060063 (= (= lt!1815707 lt!1815624) (= lambda!198648 lambda!198643))))

(assert (=> bs!1060071 (= (= lt!1815707 lt!1815433) (= lambda!198648 lambda!198606))))

(assert (=> bs!1060072 (= (= lt!1815707 lt!1815244) (= lambda!198648 lambda!198569))))

(assert (=> bs!1060071 (= (= lt!1815707 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198648 lambda!198605))))

(assert (=> bs!1060073 (= (= lt!1815707 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198648 lambda!198617))))

(assert (=> bs!1060074 (= (= lt!1815707 lt!1815223) (= lambda!198648 lambda!198564))))

(assert (=> bs!1060075 (= (= lt!1815707 lt!1815313) (= lambda!198648 lambda!198582))))

(assert (=> bs!1060076 (= (= lt!1815707 lt!1815313) (= lambda!198648 lambda!198603))))

(assert (=> bs!1060077 (= (= lt!1815707 (ListMap!4530 Nil!51868)) (= lambda!198648 lambda!198585))))

(assert (=> bs!1060078 (= (= lt!1815707 lt!1815213) (= lambda!198648 lambda!198566))))

(assert (=> bs!1060079 (not (= lambda!198648 lambda!198476))))

(assert (=> bs!1060073 (= (= lt!1815707 lt!1815549) (= lambda!198648 lambda!198618))))

(assert (=> bs!1060080 (= (= lt!1815707 lt!1814962) (= lambda!198648 lambda!198580))))

(assert (=> bs!1060081 (= (= lt!1815707 (ListMap!4530 Nil!51868)) (= lambda!198648 lambda!198562))))

(assert (=> bs!1060082 (= (= lt!1815707 lt!1815361) (= lambda!198648 lambda!198592))))

(assert (=> bs!1060083 (= (= lt!1815707 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198648 lambda!198604))))

(assert (=> bs!1060084 (= (= lt!1815707 (ListMap!4530 Nil!51868)) (= lambda!198648 lambda!198632))))

(assert (=> bs!1060074 (= (= lt!1815707 (ListMap!4530 Nil!51868)) (= lambda!198648 lambda!198563))))

(assert (=> bs!1060085 (= (= lt!1815707 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198648 lambda!198616))))

(assert (=> bs!1060086 (= (= lt!1815707 (ListMap!4530 Nil!51868)) (= lambda!198648 lambda!198567))))

(assert (=> bs!1060087 (= (= lt!1815707 lt!1815423) (= lambda!198648 lambda!198607))))

(assert (=> bs!1060088 (= (= lt!1815707 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198648 lambda!198635))))

(assert (=> bs!1060089 (= (= lt!1815707 lt!1815614) (= lambda!198648 lambda!198644))))

(assert (=> bs!1060090 (= (= lt!1815707 lt!1815303) (= lambda!198648 lambda!198583))))

(assert (=> bs!1060091 (= (= lt!1815707 (ListMap!4530 Nil!51868)) (= lambda!198648 lambda!198589))))

(assert (=> bs!1060072 (= (= lt!1815707 (ListMap!4530 Nil!51868)) (= lambda!198648 lambda!198568))))

(assert (=> bs!1060075 (= (= lt!1815707 lt!1814962) (= lambda!198648 lambda!198581))))

(assert (=> bs!1060092 (= (= lt!1815707 lt!1815234) (= lambda!198648 lambda!198570))))

(assert (=> bs!1060068 (= (= lt!1815707 lt!1815371) (= lambda!198648 lambda!198591))))

(assert (=> bs!1060093 (= (= lt!1815707 lt!1815244) (= lambda!198648 lambda!198634))))

(assert (=> bs!1060066 (= (= lt!1815707 lt!1815338) (= lambda!198648 lambda!198587))))

(assert (=> b!4652362 true))

(declare-fun bs!1060094 () Bool)

(declare-fun d!1474783 () Bool)

(assert (= bs!1060094 (and d!1474783 b!4652214)))

(declare-fun lt!1815697 () ListMap!4529)

(declare-fun lambda!198649 () Int)

(assert (=> bs!1060094 (= (= lt!1815697 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198649 lambda!198641))))

(declare-fun bs!1060095 () Bool)

(assert (= bs!1060095 (and d!1474783 d!1474461)))

(assert (=> bs!1060095 (= (= lt!1815697 lt!1815328) (= lambda!198649 lambda!198588))))

(declare-fun bs!1060096 () Bool)

(assert (= bs!1060096 (and d!1474783 d!1474663)))

(assert (=> bs!1060096 (= (= lt!1815697 lt!1814962) (= lambda!198649 lambda!198633))))

(declare-fun bs!1060097 () Bool)

(assert (= bs!1060097 (and d!1474783 b!4651851)))

(assert (=> bs!1060097 (= (= lt!1815697 (ListMap!4530 Nil!51868)) (= lambda!198649 lambda!198586))))

(declare-fun bs!1060098 () Bool)

(assert (= bs!1060098 (and d!1474783 b!4652362)))

(assert (=> bs!1060098 (= (= lt!1815697 lt!1815707) (= lambda!198649 lambda!198648))))

(assert (=> bs!1060098 (= (= lt!1815697 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198649 lambda!198647))))

(declare-fun bs!1060099 () Bool)

(assert (= bs!1060099 (and d!1474783 d!1474629)))

(assert (=> bs!1060099 (= (= lt!1815697 lt!1815539) (= lambda!198649 lambda!198623))))

(declare-fun bs!1060100 () Bool)

(assert (= bs!1060100 (and d!1474783 b!4651862)))

(assert (=> bs!1060100 (= (= lt!1815697 (ListMap!4530 Nil!51868)) (= lambda!198649 lambda!198590))))

(declare-fun bs!1060101 () Bool)

(assert (= bs!1060101 (and d!1474783 d!1474445)))

(assert (=> bs!1060101 (not (= lambda!198649 lambda!198577))))

(declare-fun bs!1060102 () Bool)

(assert (= bs!1060102 (and d!1474783 b!4652363)))

(assert (=> bs!1060102 (= (= lt!1815697 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198649 lambda!198646))))

(assert (=> bs!1060094 (= (= lt!1815697 lt!1815624) (= lambda!198649 lambda!198643))))

(declare-fun bs!1060103 () Bool)

(assert (= bs!1060103 (and d!1474783 b!4651970)))

(assert (=> bs!1060103 (= (= lt!1815697 lt!1815433) (= lambda!198649 lambda!198606))))

(declare-fun bs!1060104 () Bool)

(assert (= bs!1060104 (and d!1474783 b!4651772)))

(assert (=> bs!1060104 (= (= lt!1815697 lt!1815244) (= lambda!198649 lambda!198569))))

(assert (=> bs!1060103 (= (= lt!1815697 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198649 lambda!198605))))

(declare-fun bs!1060105 () Bool)

(assert (= bs!1060105 (and d!1474783 b!4652134)))

(assert (=> bs!1060105 (= (= lt!1815697 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198649 lambda!198617))))

(declare-fun bs!1060106 () Bool)

(assert (= bs!1060106 (and d!1474783 b!4651765)))

(assert (=> bs!1060106 (= (= lt!1815697 lt!1815223) (= lambda!198649 lambda!198564))))

(declare-fun bs!1060107 () Bool)

(assert (= bs!1060107 (and d!1474783 b!4651844)))

(assert (=> bs!1060107 (= (= lt!1815697 lt!1815313) (= lambda!198649 lambda!198582))))

(declare-fun bs!1060108 () Bool)

(assert (= bs!1060108 (and d!1474783 d!1474503)))

(assert (=> bs!1060108 (= (= lt!1815697 lt!1815313) (= lambda!198649 lambda!198603))))

(declare-fun bs!1060109 () Bool)

(assert (= bs!1060109 (and d!1474783 b!4651852)))

(assert (=> bs!1060109 (= (= lt!1815697 (ListMap!4530 Nil!51868)) (= lambda!198649 lambda!198585))))

(declare-fun bs!1060110 () Bool)

(assert (= bs!1060110 (and d!1474783 d!1474391)))

(assert (=> bs!1060110 (= (= lt!1815697 lt!1815213) (= lambda!198649 lambda!198566))))

(declare-fun bs!1060111 () Bool)

(assert (= bs!1060111 (and d!1474783 d!1474365)))

(assert (=> bs!1060111 (not (= lambda!198649 lambda!198476))))

(assert (=> bs!1060105 (= (= lt!1815697 lt!1815549) (= lambda!198649 lambda!198618))))

(declare-fun bs!1060112 () Bool)

(assert (= bs!1060112 (and d!1474783 b!4651845)))

(assert (=> bs!1060112 (= (= lt!1815697 lt!1814962) (= lambda!198649 lambda!198580))))

(declare-fun bs!1060113 () Bool)

(assert (= bs!1060113 (and d!1474783 b!4651766)))

(assert (=> bs!1060113 (= (= lt!1815697 (ListMap!4530 Nil!51868)) (= lambda!198649 lambda!198562))))

(declare-fun bs!1060114 () Bool)

(assert (= bs!1060114 (and d!1474783 d!1474467)))

(assert (=> bs!1060114 (= (= lt!1815697 lt!1815361) (= lambda!198649 lambda!198592))))

(declare-fun bs!1060115 () Bool)

(assert (= bs!1060115 (and d!1474783 b!4651971)))

(assert (=> bs!1060115 (= (= lt!1815697 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198649 lambda!198604))))

(declare-fun bs!1060116 () Bool)

(assert (= bs!1060116 (and d!1474783 d!1474649)))

(assert (=> bs!1060116 (= (= lt!1815697 (ListMap!4530 Nil!51868)) (= lambda!198649 lambda!198632))))

(assert (=> bs!1060106 (= (= lt!1815697 (ListMap!4530 Nil!51868)) (= lambda!198649 lambda!198563))))

(declare-fun bs!1060117 () Bool)

(assert (= bs!1060117 (and d!1474783 b!4652135)))

(assert (=> bs!1060117 (= (= lt!1815697 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198649 lambda!198616))))

(declare-fun bs!1060118 () Bool)

(assert (= bs!1060118 (and d!1474783 b!4651773)))

(assert (=> bs!1060118 (= (= lt!1815697 (ListMap!4530 Nil!51868)) (= lambda!198649 lambda!198567))))

(declare-fun bs!1060119 () Bool)

(assert (= bs!1060119 (and d!1474783 d!1474531)))

(assert (=> bs!1060119 (= (= lt!1815697 lt!1815423) (= lambda!198649 lambda!198607))))

(declare-fun bs!1060120 () Bool)

(assert (= bs!1060120 (and d!1474783 b!4652215)))

(assert (=> bs!1060120 (= (= lt!1815697 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198649 lambda!198635))))

(declare-fun bs!1060121 () Bool)

(assert (= bs!1060121 (and d!1474783 d!1474687)))

(assert (=> bs!1060121 (= (= lt!1815697 lt!1815614) (= lambda!198649 lambda!198644))))

(declare-fun bs!1060122 () Bool)

(assert (= bs!1060122 (and d!1474783 d!1474455)))

(assert (=> bs!1060122 (= (= lt!1815697 lt!1815303) (= lambda!198649 lambda!198583))))

(declare-fun bs!1060123 () Bool)

(assert (= bs!1060123 (and d!1474783 b!4651863)))

(assert (=> bs!1060123 (= (= lt!1815697 (ListMap!4530 Nil!51868)) (= lambda!198649 lambda!198589))))

(assert (=> bs!1060104 (= (= lt!1815697 (ListMap!4530 Nil!51868)) (= lambda!198649 lambda!198568))))

(assert (=> bs!1060107 (= (= lt!1815697 lt!1814962) (= lambda!198649 lambda!198581))))

(declare-fun bs!1060124 () Bool)

(assert (= bs!1060124 (and d!1474783 d!1474425)))

(assert (=> bs!1060124 (= (= lt!1815697 lt!1815234) (= lambda!198649 lambda!198570))))

(assert (=> bs!1060100 (= (= lt!1815697 lt!1815371) (= lambda!198649 lambda!198591))))

(declare-fun bs!1060125 () Bool)

(assert (= bs!1060125 (and d!1474783 d!1474677)))

(assert (=> bs!1060125 (= (= lt!1815697 lt!1815244) (= lambda!198649 lambda!198634))))

(assert (=> bs!1060097 (= (= lt!1815697 lt!1815338) (= lambda!198649 lambda!198587))))

(assert (=> d!1474783 true))

(declare-fun e!2902587 () Bool)

(assert (=> d!1474783 e!2902587))

(declare-fun res!1955656 () Bool)

(assert (=> d!1474783 (=> (not res!1955656) (not e!2902587))))

(assert (=> d!1474783 (= res!1955656 (forall!11004 (t!359100 (Cons!51868 lt!1814956 lt!1814957)) lambda!198649))))

(declare-fun e!2902585 () ListMap!4529)

(assert (=> d!1474783 (= lt!1815697 e!2902585)))

(declare-fun c!796262 () Bool)

(assert (=> d!1474783 (= c!796262 ((_ is Nil!51868) (t!359100 (Cons!51868 lt!1814956 lt!1814957))))))

(assert (=> d!1474783 (noDuplicateKeys!1630 (t!359100 (Cons!51868 lt!1814956 lt!1814957)))))

(assert (=> d!1474783 (= (addToMapMapFromBucket!1087 (t!359100 (Cons!51868 lt!1814956 lt!1814957)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) lt!1815697)))

(declare-fun b!4652360 () Bool)

(declare-fun res!1955654 () Bool)

(assert (=> b!4652360 (=> (not res!1955654) (not e!2902587))))

(assert (=> b!4652360 (= res!1955654 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) lambda!198649))))

(declare-fun bm!325030 () Bool)

(declare-fun call!325036 () Bool)

(assert (=> bm!325030 (= call!325036 (forall!11004 (ite c!796262 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (t!359100 (t!359100 (Cons!51868 lt!1814956 lt!1814957)))) (ite c!796262 lambda!198646 lambda!198648)))))

(declare-fun bm!325031 () Bool)

(declare-fun call!325037 () Bool)

(assert (=> bm!325031 (= call!325037 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (ite c!796262 lambda!198646 lambda!198648)))))

(declare-fun b!4652361 () Bool)

(assert (=> b!4652361 (= e!2902587 (invariantList!1290 (toList!5191 lt!1815697)))))

(assert (=> b!4652362 (= e!2902585 lt!1815707)))

(declare-fun lt!1815702 () ListMap!4529)

(assert (=> b!4652362 (= lt!1815702 (+!1974 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (h!58004 (t!359100 (Cons!51868 lt!1814956 lt!1814957)))))))

(assert (=> b!4652362 (= lt!1815707 (addToMapMapFromBucket!1087 (t!359100 (t!359100 (Cons!51868 lt!1814956 lt!1814957))) (+!1974 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (h!58004 (t!359100 (Cons!51868 lt!1814956 lt!1814957))))))))

(declare-fun lt!1815700 () Unit!117676)

(declare-fun call!325035 () Unit!117676)

(assert (=> b!4652362 (= lt!1815700 call!325035)))

(assert (=> b!4652362 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) lambda!198647)))

(declare-fun lt!1815710 () Unit!117676)

(assert (=> b!4652362 (= lt!1815710 lt!1815700)))

(assert (=> b!4652362 (forall!11004 (toList!5191 lt!1815702) lambda!198648)))

(declare-fun lt!1815709 () Unit!117676)

(declare-fun Unit!117894 () Unit!117676)

(assert (=> b!4652362 (= lt!1815709 Unit!117894)))

(assert (=> b!4652362 call!325036))

(declare-fun lt!1815701 () Unit!117676)

(declare-fun Unit!117895 () Unit!117676)

(assert (=> b!4652362 (= lt!1815701 Unit!117895)))

(declare-fun lt!1815706 () Unit!117676)

(declare-fun Unit!117896 () Unit!117676)

(assert (=> b!4652362 (= lt!1815706 Unit!117896)))

(declare-fun lt!1815698 () Unit!117676)

(assert (=> b!4652362 (= lt!1815698 (forallContained!3212 (toList!5191 lt!1815702) lambda!198648 (h!58004 (t!359100 (Cons!51868 lt!1814956 lt!1814957)))))))

(assert (=> b!4652362 (contains!15011 lt!1815702 (_1!29777 (h!58004 (t!359100 (Cons!51868 lt!1814956 lt!1814957)))))))

(declare-fun lt!1815715 () Unit!117676)

(declare-fun Unit!117897 () Unit!117676)

(assert (=> b!4652362 (= lt!1815715 Unit!117897)))

(assert (=> b!4652362 (contains!15011 lt!1815707 (_1!29777 (h!58004 (t!359100 (Cons!51868 lt!1814956 lt!1814957)))))))

(declare-fun lt!1815705 () Unit!117676)

(declare-fun Unit!117898 () Unit!117676)

(assert (=> b!4652362 (= lt!1815705 Unit!117898)))

(assert (=> b!4652362 (forall!11004 (t!359100 (Cons!51868 lt!1814956 lt!1814957)) lambda!198648)))

(declare-fun lt!1815711 () Unit!117676)

(declare-fun Unit!117899 () Unit!117676)

(assert (=> b!4652362 (= lt!1815711 Unit!117899)))

(assert (=> b!4652362 (forall!11004 (toList!5191 lt!1815702) lambda!198648)))

(declare-fun lt!1815708 () Unit!117676)

(declare-fun Unit!117900 () Unit!117676)

(assert (=> b!4652362 (= lt!1815708 Unit!117900)))

(declare-fun lt!1815717 () Unit!117676)

(declare-fun Unit!117901 () Unit!117676)

(assert (=> b!4652362 (= lt!1815717 Unit!117901)))

(declare-fun lt!1815699 () Unit!117676)

(assert (=> b!4652362 (= lt!1815699 (addForallContainsKeyThenBeforeAdding!589 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815707 (_1!29777 (h!58004 (t!359100 (Cons!51868 lt!1814956 lt!1814957)))) (_2!29777 (h!58004 (t!359100 (Cons!51868 lt!1814956 lt!1814957))))))))

(assert (=> b!4652362 call!325037))

(declare-fun lt!1815704 () Unit!117676)

(assert (=> b!4652362 (= lt!1815704 lt!1815699)))

(assert (=> b!4652362 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) lambda!198648)))

(declare-fun lt!1815713 () Unit!117676)

(declare-fun Unit!117902 () Unit!117676)

(assert (=> b!4652362 (= lt!1815713 Unit!117902)))

(declare-fun res!1955655 () Bool)

(assert (=> b!4652362 (= res!1955655 (forall!11004 (t!359100 (Cons!51868 lt!1814956 lt!1814957)) lambda!198648))))

(declare-fun e!2902586 () Bool)

(assert (=> b!4652362 (=> (not res!1955655) (not e!2902586))))

(assert (=> b!4652362 e!2902586))

(declare-fun lt!1815703 () Unit!117676)

(declare-fun Unit!117903 () Unit!117676)

(assert (=> b!4652362 (= lt!1815703 Unit!117903)))

(assert (=> b!4652363 (= e!2902585 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))))))

(declare-fun lt!1815716 () Unit!117676)

(assert (=> b!4652363 (= lt!1815716 call!325035)))

(assert (=> b!4652363 call!325037))

(declare-fun lt!1815714 () Unit!117676)

(assert (=> b!4652363 (= lt!1815714 lt!1815716)))

(assert (=> b!4652363 call!325036))

(declare-fun lt!1815712 () Unit!117676)

(declare-fun Unit!117904 () Unit!117676)

(assert (=> b!4652363 (= lt!1815712 Unit!117904)))

(declare-fun bm!325032 () Bool)

(assert (=> bm!325032 (= call!325035 (lemmaContainsAllItsOwnKeys!590 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(declare-fun b!4652364 () Bool)

(assert (=> b!4652364 (= e!2902586 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) lambda!198648))))

(assert (= (and d!1474783 c!796262) b!4652363))

(assert (= (and d!1474783 (not c!796262)) b!4652362))

(assert (= (and b!4652362 res!1955655) b!4652364))

(assert (= (or b!4652363 b!4652362) bm!325032))

(assert (= (or b!4652363 b!4652362) bm!325030))

(assert (= (or b!4652363 b!4652362) bm!325031))

(assert (= (and d!1474783 res!1955656) b!4652360))

(assert (= (and b!4652360 res!1955654) b!4652361))

(declare-fun m!5528597 () Bool)

(assert (=> b!4652364 m!5528597))

(declare-fun m!5528601 () Bool)

(assert (=> b!4652361 m!5528601))

(declare-fun m!5528603 () Bool)

(assert (=> b!4652360 m!5528603))

(assert (=> bm!325032 m!5527509))

(declare-fun m!5528607 () Bool)

(assert (=> bm!325032 m!5528607))

(declare-fun m!5528609 () Bool)

(assert (=> bm!325030 m!5528609))

(declare-fun m!5528613 () Bool)

(assert (=> d!1474783 m!5528613))

(assert (=> d!1474783 m!5528409))

(declare-fun m!5528621 () Bool)

(assert (=> bm!325031 m!5528621))

(declare-fun m!5528625 () Bool)

(assert (=> b!4652362 m!5528625))

(declare-fun m!5528629 () Bool)

(assert (=> b!4652362 m!5528629))

(assert (=> b!4652362 m!5528629))

(declare-fun m!5528637 () Bool)

(assert (=> b!4652362 m!5528637))

(declare-fun m!5528641 () Bool)

(assert (=> b!4652362 m!5528641))

(assert (=> b!4652362 m!5528597))

(declare-fun m!5528643 () Bool)

(assert (=> b!4652362 m!5528643))

(declare-fun m!5528645 () Bool)

(assert (=> b!4652362 m!5528645))

(assert (=> b!4652362 m!5528643))

(assert (=> b!4652362 m!5527509))

(assert (=> b!4652362 m!5528637))

(declare-fun m!5528647 () Bool)

(assert (=> b!4652362 m!5528647))

(assert (=> b!4652362 m!5527509))

(declare-fun m!5528649 () Bool)

(assert (=> b!4652362 m!5528649))

(declare-fun m!5528651 () Bool)

(assert (=> b!4652362 m!5528651))

(assert (=> b!4651851 d!1474783))

(declare-fun bs!1060130 () Bool)

(declare-fun d!1474787 () Bool)

(assert (= bs!1060130 (and d!1474787 b!4652214)))

(declare-fun lambda!198651 () Int)

(assert (=> bs!1060130 (= (= lt!1815338 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198651 lambda!198641))))

(declare-fun bs!1060131 () Bool)

(assert (= bs!1060131 (and d!1474787 d!1474663)))

(assert (=> bs!1060131 (= (= lt!1815338 lt!1814962) (= lambda!198651 lambda!198633))))

(declare-fun bs!1060133 () Bool)

(assert (= bs!1060133 (and d!1474787 b!4651851)))

(assert (=> bs!1060133 (= (= lt!1815338 (ListMap!4530 Nil!51868)) (= lambda!198651 lambda!198586))))

(declare-fun bs!1060135 () Bool)

(assert (= bs!1060135 (and d!1474787 b!4652362)))

(assert (=> bs!1060135 (= (= lt!1815338 lt!1815707) (= lambda!198651 lambda!198648))))

(assert (=> bs!1060135 (= (= lt!1815338 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198651 lambda!198647))))

(declare-fun bs!1060137 () Bool)

(assert (= bs!1060137 (and d!1474787 d!1474629)))

(assert (=> bs!1060137 (= (= lt!1815338 lt!1815539) (= lambda!198651 lambda!198623))))

(declare-fun bs!1060139 () Bool)

(assert (= bs!1060139 (and d!1474787 b!4651862)))

(assert (=> bs!1060139 (= (= lt!1815338 (ListMap!4530 Nil!51868)) (= lambda!198651 lambda!198590))))

(declare-fun bs!1060141 () Bool)

(assert (= bs!1060141 (and d!1474787 d!1474445)))

(assert (=> bs!1060141 (not (= lambda!198651 lambda!198577))))

(declare-fun bs!1060143 () Bool)

(assert (= bs!1060143 (and d!1474787 b!4652363)))

(assert (=> bs!1060143 (= (= lt!1815338 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198651 lambda!198646))))

(assert (=> bs!1060130 (= (= lt!1815338 lt!1815624) (= lambda!198651 lambda!198643))))

(declare-fun bs!1060145 () Bool)

(assert (= bs!1060145 (and d!1474787 b!4651970)))

(assert (=> bs!1060145 (= (= lt!1815338 lt!1815433) (= lambda!198651 lambda!198606))))

(declare-fun bs!1060147 () Bool)

(assert (= bs!1060147 (and d!1474787 b!4651772)))

(assert (=> bs!1060147 (= (= lt!1815338 lt!1815244) (= lambda!198651 lambda!198569))))

(assert (=> bs!1060145 (= (= lt!1815338 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198651 lambda!198605))))

(declare-fun bs!1060150 () Bool)

(assert (= bs!1060150 (and d!1474787 b!4652134)))

(assert (=> bs!1060150 (= (= lt!1815338 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198651 lambda!198617))))

(declare-fun bs!1060152 () Bool)

(assert (= bs!1060152 (and d!1474787 d!1474461)))

(assert (=> bs!1060152 (= (= lt!1815338 lt!1815328) (= lambda!198651 lambda!198588))))

(declare-fun bs!1060154 () Bool)

(assert (= bs!1060154 (and d!1474787 d!1474783)))

(assert (=> bs!1060154 (= (= lt!1815338 lt!1815697) (= lambda!198651 lambda!198649))))

(declare-fun bs!1060155 () Bool)

(assert (= bs!1060155 (and d!1474787 b!4651765)))

(assert (=> bs!1060155 (= (= lt!1815338 lt!1815223) (= lambda!198651 lambda!198564))))

(declare-fun bs!1060156 () Bool)

(assert (= bs!1060156 (and d!1474787 b!4651844)))

(assert (=> bs!1060156 (= (= lt!1815338 lt!1815313) (= lambda!198651 lambda!198582))))

(declare-fun bs!1060157 () Bool)

(assert (= bs!1060157 (and d!1474787 d!1474503)))

(assert (=> bs!1060157 (= (= lt!1815338 lt!1815313) (= lambda!198651 lambda!198603))))

(declare-fun bs!1060158 () Bool)

(assert (= bs!1060158 (and d!1474787 b!4651852)))

(assert (=> bs!1060158 (= (= lt!1815338 (ListMap!4530 Nil!51868)) (= lambda!198651 lambda!198585))))

(declare-fun bs!1060160 () Bool)

(assert (= bs!1060160 (and d!1474787 d!1474391)))

(assert (=> bs!1060160 (= (= lt!1815338 lt!1815213) (= lambda!198651 lambda!198566))))

(declare-fun bs!1060162 () Bool)

(assert (= bs!1060162 (and d!1474787 d!1474365)))

(assert (=> bs!1060162 (not (= lambda!198651 lambda!198476))))

(assert (=> bs!1060150 (= (= lt!1815338 lt!1815549) (= lambda!198651 lambda!198618))))

(declare-fun bs!1060165 () Bool)

(assert (= bs!1060165 (and d!1474787 b!4651845)))

(assert (=> bs!1060165 (= (= lt!1815338 lt!1814962) (= lambda!198651 lambda!198580))))

(declare-fun bs!1060167 () Bool)

(assert (= bs!1060167 (and d!1474787 b!4651766)))

(assert (=> bs!1060167 (= (= lt!1815338 (ListMap!4530 Nil!51868)) (= lambda!198651 lambda!198562))))

(declare-fun bs!1060168 () Bool)

(assert (= bs!1060168 (and d!1474787 d!1474467)))

(assert (=> bs!1060168 (= (= lt!1815338 lt!1815361) (= lambda!198651 lambda!198592))))

(declare-fun bs!1060170 () Bool)

(assert (= bs!1060170 (and d!1474787 b!4651971)))

(assert (=> bs!1060170 (= (= lt!1815338 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198651 lambda!198604))))

(declare-fun bs!1060171 () Bool)

(assert (= bs!1060171 (and d!1474787 d!1474649)))

(assert (=> bs!1060171 (= (= lt!1815338 (ListMap!4530 Nil!51868)) (= lambda!198651 lambda!198632))))

(assert (=> bs!1060155 (= (= lt!1815338 (ListMap!4530 Nil!51868)) (= lambda!198651 lambda!198563))))

(declare-fun bs!1060174 () Bool)

(assert (= bs!1060174 (and d!1474787 b!4652135)))

(assert (=> bs!1060174 (= (= lt!1815338 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198651 lambda!198616))))

(declare-fun bs!1060176 () Bool)

(assert (= bs!1060176 (and d!1474787 b!4651773)))

(assert (=> bs!1060176 (= (= lt!1815338 (ListMap!4530 Nil!51868)) (= lambda!198651 lambda!198567))))

(declare-fun bs!1060178 () Bool)

(assert (= bs!1060178 (and d!1474787 d!1474531)))

(assert (=> bs!1060178 (= (= lt!1815338 lt!1815423) (= lambda!198651 lambda!198607))))

(declare-fun bs!1060179 () Bool)

(assert (= bs!1060179 (and d!1474787 b!4652215)))

(assert (=> bs!1060179 (= (= lt!1815338 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198651 lambda!198635))))

(declare-fun bs!1060180 () Bool)

(assert (= bs!1060180 (and d!1474787 d!1474687)))

(assert (=> bs!1060180 (= (= lt!1815338 lt!1815614) (= lambda!198651 lambda!198644))))

(declare-fun bs!1060181 () Bool)

(assert (= bs!1060181 (and d!1474787 d!1474455)))

(assert (=> bs!1060181 (= (= lt!1815338 lt!1815303) (= lambda!198651 lambda!198583))))

(declare-fun bs!1060182 () Bool)

(assert (= bs!1060182 (and d!1474787 b!4651863)))

(assert (=> bs!1060182 (= (= lt!1815338 (ListMap!4530 Nil!51868)) (= lambda!198651 lambda!198589))))

(assert (=> bs!1060147 (= (= lt!1815338 (ListMap!4530 Nil!51868)) (= lambda!198651 lambda!198568))))

(assert (=> bs!1060156 (= (= lt!1815338 lt!1814962) (= lambda!198651 lambda!198581))))

(declare-fun bs!1060183 () Bool)

(assert (= bs!1060183 (and d!1474787 d!1474425)))

(assert (=> bs!1060183 (= (= lt!1815338 lt!1815234) (= lambda!198651 lambda!198570))))

(assert (=> bs!1060139 (= (= lt!1815338 lt!1815371) (= lambda!198651 lambda!198591))))

(declare-fun bs!1060184 () Bool)

(assert (= bs!1060184 (and d!1474787 d!1474677)))

(assert (=> bs!1060184 (= (= lt!1815338 lt!1815244) (= lambda!198651 lambda!198634))))

(assert (=> bs!1060133 (= lambda!198651 lambda!198587)))

(assert (=> d!1474787 true))

(assert (=> d!1474787 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198651)))

(declare-fun lt!1815772 () Unit!117676)

(assert (=> d!1474787 (= lt!1815772 (choose!31945 (ListMap!4530 Nil!51868) lt!1815338 (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (_2!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(assert (=> d!1474787 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (tuple2!52967 (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (_2!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))) lambda!198651)))

(assert (=> d!1474787 (= (addForallContainsKeyThenBeforeAdding!589 (ListMap!4530 Nil!51868) lt!1815338 (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (_2!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) lt!1815772)))

(declare-fun bs!1060192 () Bool)

(assert (= bs!1060192 d!1474787))

(declare-fun m!5528653 () Bool)

(assert (=> bs!1060192 m!5528653))

(declare-fun m!5528655 () Bool)

(assert (=> bs!1060192 m!5528655))

(declare-fun m!5528657 () Bool)

(assert (=> bs!1060192 m!5528657))

(declare-fun m!5528659 () Bool)

(assert (=> bs!1060192 m!5528659))

(assert (=> b!4651851 d!1474787))

(declare-fun d!1474789 () Bool)

(declare-fun e!2902612 () Bool)

(assert (=> d!1474789 e!2902612))

(declare-fun res!1955672 () Bool)

(assert (=> d!1474789 (=> (not res!1955672) (not e!2902612))))

(declare-fun lt!1815775 () ListMap!4529)

(assert (=> d!1474789 (= res!1955672 (contains!15011 lt!1815775 (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(declare-fun lt!1815776 () List!51992)

(assert (=> d!1474789 (= lt!1815775 (ListMap!4530 lt!1815776))))

(declare-fun lt!1815773 () Unit!117676)

(declare-fun lt!1815774 () Unit!117676)

(assert (=> d!1474789 (= lt!1815773 lt!1815774)))

(assert (=> d!1474789 (= (getValueByKey!1600 lt!1815776 (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (Some!11811 (_2!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(assert (=> d!1474789 (= lt!1815774 (lemmaContainsTupThenGetReturnValue!918 lt!1815776 (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (_2!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(assert (=> d!1474789 (= lt!1815776 (insertNoDuplicatedKeys!426 (toList!5191 (ListMap!4530 Nil!51868)) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (_2!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(assert (=> d!1474789 (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815775)))

(declare-fun b!4652412 () Bool)

(declare-fun res!1955673 () Bool)

(assert (=> b!4652412 (=> (not res!1955673) (not e!2902612))))

(assert (=> b!4652412 (= res!1955673 (= (getValueByKey!1600 (toList!5191 lt!1815775) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (Some!11811 (_2!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957))))))))

(declare-fun b!4652413 () Bool)

(assert (=> b!4652413 (= e!2902612 (contains!15015 (toList!5191 lt!1815775) (h!58004 (Cons!51868 lt!1814956 lt!1814957))))))

(assert (= (and d!1474789 res!1955672) b!4652412))

(assert (= (and b!4652412 res!1955673) b!4652413))

(declare-fun m!5528661 () Bool)

(assert (=> d!1474789 m!5528661))

(declare-fun m!5528663 () Bool)

(assert (=> d!1474789 m!5528663))

(declare-fun m!5528665 () Bool)

(assert (=> d!1474789 m!5528665))

(declare-fun m!5528667 () Bool)

(assert (=> d!1474789 m!5528667))

(declare-fun m!5528669 () Bool)

(assert (=> b!4652412 m!5528669))

(declare-fun m!5528671 () Bool)

(assert (=> b!4652413 m!5528671))

(assert (=> b!4651851 d!1474789))

(declare-fun d!1474791 () Bool)

(declare-fun res!1955674 () Bool)

(declare-fun e!2902613 () Bool)

(assert (=> d!1474791 (=> res!1955674 e!2902613)))

(assert (=> d!1474791 (= res!1955674 ((_ is Nil!51868) (Cons!51868 lt!1814956 lt!1814957)))))

(assert (=> d!1474791 (= (forall!11004 (Cons!51868 lt!1814956 lt!1814957) lambda!198587) e!2902613)))

(declare-fun b!4652414 () Bool)

(declare-fun e!2902614 () Bool)

(assert (=> b!4652414 (= e!2902613 e!2902614)))

(declare-fun res!1955675 () Bool)

(assert (=> b!4652414 (=> (not res!1955675) (not e!2902614))))

(assert (=> b!4652414 (= res!1955675 (dynLambda!21575 lambda!198587 (h!58004 (Cons!51868 lt!1814956 lt!1814957))))))

(declare-fun b!4652415 () Bool)

(assert (=> b!4652415 (= e!2902614 (forall!11004 (t!359100 (Cons!51868 lt!1814956 lt!1814957)) lambda!198587))))

(assert (= (and d!1474791 (not res!1955674)) b!4652414))

(assert (= (and b!4652414 res!1955675) b!4652415))

(declare-fun b_lambda!173117 () Bool)

(assert (=> (not b_lambda!173117) (not b!4652414)))

(declare-fun m!5528673 () Bool)

(assert (=> b!4652414 m!5528673))

(declare-fun m!5528675 () Bool)

(assert (=> b!4652415 m!5528675))

(assert (=> b!4651851 d!1474791))

(declare-fun d!1474793 () Bool)

(assert (=> d!1474793 (dynLambda!21575 lambda!198587 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))

(declare-fun lt!1815777 () Unit!117676)

(assert (=> d!1474793 (= lt!1815777 (choose!31949 (toList!5191 lt!1815333) lambda!198587 (h!58004 (Cons!51868 lt!1814956 lt!1814957))))))

(declare-fun e!2902615 () Bool)

(assert (=> d!1474793 e!2902615))

(declare-fun res!1955676 () Bool)

(assert (=> d!1474793 (=> (not res!1955676) (not e!2902615))))

(assert (=> d!1474793 (= res!1955676 (forall!11004 (toList!5191 lt!1815333) lambda!198587))))

(assert (=> d!1474793 (= (forallContained!3212 (toList!5191 lt!1815333) lambda!198587 (h!58004 (Cons!51868 lt!1814956 lt!1814957))) lt!1815777)))

(declare-fun b!4652416 () Bool)

(assert (=> b!4652416 (= e!2902615 (contains!15015 (toList!5191 lt!1815333) (h!58004 (Cons!51868 lt!1814956 lt!1814957))))))

(assert (= (and d!1474793 res!1955676) b!4652416))

(declare-fun b_lambda!173119 () Bool)

(assert (=> (not b_lambda!173119) (not d!1474793)))

(assert (=> d!1474793 m!5528673))

(declare-fun m!5528677 () Bool)

(assert (=> d!1474793 m!5528677))

(assert (=> d!1474793 m!5527507))

(declare-fun m!5528679 () Bool)

(assert (=> b!4652416 m!5528679))

(assert (=> b!4651851 d!1474793))

(declare-fun b!4652417 () Bool)

(declare-fun e!2902617 () Unit!117676)

(declare-fun Unit!117915 () Unit!117676)

(assert (=> b!4652417 (= e!2902617 Unit!117915)))

(declare-fun b!4652418 () Bool)

(declare-fun e!2902616 () Unit!117676)

(assert (=> b!4652418 (= e!2902616 e!2902617)))

(declare-fun c!796280 () Bool)

(declare-fun call!325053 () Bool)

(assert (=> b!4652418 (= c!796280 call!325053)))

(declare-fun b!4652419 () Bool)

(declare-fun lt!1815781 () Unit!117676)

(assert (=> b!4652419 (= e!2902616 lt!1815781)))

(declare-fun lt!1815782 () Unit!117676)

(assert (=> b!4652419 (= lt!1815782 (lemmaContainsKeyImpliesGetValueByKeyDefined!1502 (toList!5191 lt!1815338) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(assert (=> b!4652419 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815338) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(declare-fun lt!1815783 () Unit!117676)

(assert (=> b!4652419 (= lt!1815783 lt!1815782)))

(assert (=> b!4652419 (= lt!1815781 (lemmaInListThenGetKeysListContains!736 (toList!5191 lt!1815338) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(assert (=> b!4652419 call!325053))

(declare-fun b!4652420 () Bool)

(declare-fun e!2902620 () List!51995)

(assert (=> b!4652420 (= e!2902620 (keys!18366 lt!1815338))))

(declare-fun b!4652421 () Bool)

(assert (=> b!4652421 (= e!2902620 (getKeysList!741 (toList!5191 lt!1815338)))))

(declare-fun d!1474795 () Bool)

(declare-fun e!2902621 () Bool)

(assert (=> d!1474795 e!2902621))

(declare-fun res!1955679 () Bool)

(assert (=> d!1474795 (=> res!1955679 e!2902621)))

(declare-fun e!2902619 () Bool)

(assert (=> d!1474795 (= res!1955679 e!2902619)))

(declare-fun res!1955677 () Bool)

(assert (=> d!1474795 (=> (not res!1955677) (not e!2902619))))

(declare-fun lt!1815784 () Bool)

(assert (=> d!1474795 (= res!1955677 (not lt!1815784))))

(declare-fun lt!1815779 () Bool)

(assert (=> d!1474795 (= lt!1815784 lt!1815779)))

(declare-fun lt!1815785 () Unit!117676)

(assert (=> d!1474795 (= lt!1815785 e!2902616)))

(declare-fun c!796279 () Bool)

(assert (=> d!1474795 (= c!796279 lt!1815779)))

(assert (=> d!1474795 (= lt!1815779 (containsKey!2706 (toList!5191 lt!1815338) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(assert (=> d!1474795 (= (contains!15011 lt!1815338 (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) lt!1815784)))

(declare-fun b!4652422 () Bool)

(assert (=> b!4652422 (= e!2902619 (not (contains!15013 (keys!18366 lt!1815338) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957))))))))

(declare-fun b!4652423 () Bool)

(declare-fun e!2902618 () Bool)

(assert (=> b!4652423 (= e!2902621 e!2902618)))

(declare-fun res!1955678 () Bool)

(assert (=> b!4652423 (=> (not res!1955678) (not e!2902618))))

(assert (=> b!4652423 (= res!1955678 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815338) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957))))))))

(declare-fun b!4652424 () Bool)

(assert (=> b!4652424 (= e!2902618 (contains!15013 (keys!18366 lt!1815338) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(declare-fun b!4652425 () Bool)

(assert (=> b!4652425 false))

(declare-fun lt!1815778 () Unit!117676)

(declare-fun lt!1815780 () Unit!117676)

(assert (=> b!4652425 (= lt!1815778 lt!1815780)))

(assert (=> b!4652425 (containsKey!2706 (toList!5191 lt!1815338) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957))))))

(assert (=> b!4652425 (= lt!1815780 (lemmaInGetKeysListThenContainsKey!740 (toList!5191 lt!1815338) (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(declare-fun Unit!117917 () Unit!117676)

(assert (=> b!4652425 (= e!2902617 Unit!117917)))

(declare-fun bm!325048 () Bool)

(assert (=> bm!325048 (= call!325053 (contains!15013 e!2902620 (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(declare-fun c!796281 () Bool)

(assert (=> bm!325048 (= c!796281 c!796279)))

(assert (= (and d!1474795 c!796279) b!4652419))

(assert (= (and d!1474795 (not c!796279)) b!4652418))

(assert (= (and b!4652418 c!796280) b!4652425))

(assert (= (and b!4652418 (not c!796280)) b!4652417))

(assert (= (or b!4652419 b!4652418) bm!325048))

(assert (= (and bm!325048 c!796281) b!4652421))

(assert (= (and bm!325048 (not c!796281)) b!4652420))

(assert (= (and d!1474795 res!1955677) b!4652422))

(assert (= (and d!1474795 (not res!1955679)) b!4652423))

(assert (= (and b!4652423 res!1955678) b!4652424))

(declare-fun m!5528681 () Bool)

(assert (=> d!1474795 m!5528681))

(declare-fun m!5528683 () Bool)

(assert (=> b!4652424 m!5528683))

(assert (=> b!4652424 m!5528683))

(declare-fun m!5528685 () Bool)

(assert (=> b!4652424 m!5528685))

(declare-fun m!5528687 () Bool)

(assert (=> b!4652423 m!5528687))

(assert (=> b!4652423 m!5528687))

(declare-fun m!5528689 () Bool)

(assert (=> b!4652423 m!5528689))

(declare-fun m!5528691 () Bool)

(assert (=> bm!325048 m!5528691))

(declare-fun m!5528693 () Bool)

(assert (=> b!4652419 m!5528693))

(assert (=> b!4652419 m!5528687))

(assert (=> b!4652419 m!5528687))

(assert (=> b!4652419 m!5528689))

(declare-fun m!5528695 () Bool)

(assert (=> b!4652419 m!5528695))

(assert (=> b!4652422 m!5528683))

(assert (=> b!4652422 m!5528683))

(assert (=> b!4652422 m!5528685))

(assert (=> b!4652420 m!5528683))

(assert (=> b!4652425 m!5528681))

(declare-fun m!5528697 () Bool)

(assert (=> b!4652425 m!5528697))

(declare-fun m!5528699 () Bool)

(assert (=> b!4652421 m!5528699))

(assert (=> b!4651851 d!1474795))

(declare-fun d!1474797 () Bool)

(declare-fun res!1955680 () Bool)

(declare-fun e!2902622 () Bool)

(assert (=> d!1474797 (=> res!1955680 e!2902622)))

(assert (=> d!1474797 (= res!1955680 ((_ is Nil!51868) (toList!5191 (ListMap!4530 Nil!51868))))))

(assert (=> d!1474797 (= (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198586) e!2902622)))

(declare-fun b!4652426 () Bool)

(declare-fun e!2902623 () Bool)

(assert (=> b!4652426 (= e!2902622 e!2902623)))

(declare-fun res!1955681 () Bool)

(assert (=> b!4652426 (=> (not res!1955681) (not e!2902623))))

(assert (=> b!4652426 (= res!1955681 (dynLambda!21575 lambda!198586 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))))))

(declare-fun b!4652427 () Bool)

(assert (=> b!4652427 (= e!2902623 (forall!11004 (t!359100 (toList!5191 (ListMap!4530 Nil!51868))) lambda!198586))))

(assert (= (and d!1474797 (not res!1955680)) b!4652426))

(assert (= (and b!4652426 res!1955681) b!4652427))

(declare-fun b_lambda!173121 () Bool)

(assert (=> (not b_lambda!173121) (not b!4652426)))

(declare-fun m!5528701 () Bool)

(assert (=> b!4652426 m!5528701))

(declare-fun m!5528703 () Bool)

(assert (=> b!4652427 m!5528703))

(assert (=> b!4651851 d!1474797))

(assert (=> b!4651851 d!1474671))

(declare-fun d!1474799 () Bool)

(declare-fun c!796282 () Bool)

(assert (=> d!1474799 (= c!796282 ((_ is Nil!51868) (toList!5191 (addToMapMapFromBucket!1087 (Cons!51868 lt!1814956 lt!1814957) (ListMap!4530 Nil!51868)))))))

(declare-fun e!2902624 () (InoxSet tuple2!52966))

(assert (=> d!1474799 (= (content!8985 (toList!5191 (addToMapMapFromBucket!1087 (Cons!51868 lt!1814956 lt!1814957) (ListMap!4530 Nil!51868)))) e!2902624)))

(declare-fun b!4652428 () Bool)

(assert (=> b!4652428 (= e!2902624 ((as const (Array tuple2!52966 Bool)) false))))

(declare-fun b!4652429 () Bool)

(assert (=> b!4652429 (= e!2902624 ((_ map or) (store ((as const (Array tuple2!52966 Bool)) false) (h!58004 (toList!5191 (addToMapMapFromBucket!1087 (Cons!51868 lt!1814956 lt!1814957) (ListMap!4530 Nil!51868)))) true) (content!8985 (t!359100 (toList!5191 (addToMapMapFromBucket!1087 (Cons!51868 lt!1814956 lt!1814957) (ListMap!4530 Nil!51868)))))))))

(assert (= (and d!1474799 c!796282) b!4652428))

(assert (= (and d!1474799 (not c!796282)) b!4652429))

(declare-fun m!5528705 () Bool)

(assert (=> b!4652429 m!5528705))

(declare-fun m!5528707 () Bool)

(assert (=> b!4652429 m!5528707))

(assert (=> d!1474469 d!1474799))

(declare-fun d!1474801 () Bool)

(declare-fun c!796283 () Bool)

(assert (=> d!1474801 (= c!796283 ((_ is Nil!51868) (toList!5191 (+!1974 lt!1814959 lt!1814956))))))

(declare-fun e!2902625 () (InoxSet tuple2!52966))

(assert (=> d!1474801 (= (content!8985 (toList!5191 (+!1974 lt!1814959 lt!1814956))) e!2902625)))

(declare-fun b!4652430 () Bool)

(assert (=> b!4652430 (= e!2902625 ((as const (Array tuple2!52966 Bool)) false))))

(declare-fun b!4652431 () Bool)

(assert (=> b!4652431 (= e!2902625 ((_ map or) (store ((as const (Array tuple2!52966 Bool)) false) (h!58004 (toList!5191 (+!1974 lt!1814959 lt!1814956))) true) (content!8985 (t!359100 (toList!5191 (+!1974 lt!1814959 lt!1814956))))))))

(assert (= (and d!1474801 c!796283) b!4652430))

(assert (= (and d!1474801 (not c!796283)) b!4652431))

(declare-fun m!5528709 () Bool)

(assert (=> b!4652431 m!5528709))

(declare-fun m!5528711 () Bool)

(assert (=> b!4652431 m!5528711))

(assert (=> d!1474469 d!1474801))

(declare-fun d!1474803 () Bool)

(assert (=> d!1474803 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1814955) key!4968))))

(declare-fun lt!1815788 () Unit!117676)

(declare-fun choose!31959 (List!51992 K!13225) Unit!117676)

(assert (=> d!1474803 (= lt!1815788 (choose!31959 (toList!5191 lt!1814955) key!4968))))

(assert (=> d!1474803 (invariantList!1290 (toList!5191 lt!1814955))))

(assert (=> d!1474803 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1502 (toList!5191 lt!1814955) key!4968) lt!1815788)))

(declare-fun bs!1060218 () Bool)

(assert (= bs!1060218 d!1474803))

(assert (=> bs!1060218 m!5527393))

(assert (=> bs!1060218 m!5527393))

(assert (=> bs!1060218 m!5527395))

(declare-fun m!5528713 () Bool)

(assert (=> bs!1060218 m!5528713))

(assert (=> bs!1060218 m!5528469))

(assert (=> b!4651811 d!1474803))

(assert (=> b!4651811 d!1474757))

(assert (=> b!4651811 d!1474759))

(declare-fun d!1474805 () Bool)

(assert (=> d!1474805 (contains!15013 (getKeysList!741 (toList!5191 lt!1814955)) key!4968)))

(declare-fun lt!1815791 () Unit!117676)

(declare-fun choose!31960 (List!51992 K!13225) Unit!117676)

(assert (=> d!1474805 (= lt!1815791 (choose!31960 (toList!5191 lt!1814955) key!4968))))

(assert (=> d!1474805 (invariantList!1290 (toList!5191 lt!1814955))))

(assert (=> d!1474805 (= (lemmaInListThenGetKeysListContains!736 (toList!5191 lt!1814955) key!4968) lt!1815791)))

(declare-fun bs!1060242 () Bool)

(assert (= bs!1060242 d!1474805))

(assert (=> bs!1060242 m!5527405))

(assert (=> bs!1060242 m!5527405))

(declare-fun m!5528715 () Bool)

(assert (=> bs!1060242 m!5528715))

(declare-fun m!5528717 () Bool)

(assert (=> bs!1060242 m!5528717))

(assert (=> bs!1060242 m!5528469))

(assert (=> b!4651811 d!1474805))

(declare-fun d!1474807 () Bool)

(declare-fun res!1955682 () Bool)

(declare-fun e!2902626 () Bool)

(assert (=> d!1474807 (=> res!1955682 e!2902626)))

(assert (=> d!1474807 (= res!1955682 ((_ is Nil!51868) (toList!5191 (ListMap!4530 Nil!51868))))))

(assert (=> d!1474807 (= (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) (ite c!796168 lambda!198589 lambda!198591)) e!2902626)))

(declare-fun b!4652432 () Bool)

(declare-fun e!2902627 () Bool)

(assert (=> b!4652432 (= e!2902626 e!2902627)))

(declare-fun res!1955683 () Bool)

(assert (=> b!4652432 (=> (not res!1955683) (not e!2902627))))

(assert (=> b!4652432 (= res!1955683 (dynLambda!21575 (ite c!796168 lambda!198589 lambda!198591) (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))))))

(declare-fun b!4652433 () Bool)

(assert (=> b!4652433 (= e!2902627 (forall!11004 (t!359100 (toList!5191 (ListMap!4530 Nil!51868))) (ite c!796168 lambda!198589 lambda!198591)))))

(assert (= (and d!1474807 (not res!1955682)) b!4652432))

(assert (= (and b!4652432 res!1955683) b!4652433))

(declare-fun b_lambda!173123 () Bool)

(assert (=> (not b_lambda!173123) (not b!4652432)))

(declare-fun m!5528751 () Bool)

(assert (=> b!4652432 m!5528751))

(declare-fun m!5528753 () Bool)

(assert (=> b!4652433 m!5528753))

(assert (=> bm!324987 d!1474807))

(declare-fun b!4652436 () Bool)

(declare-fun e!2902630 () Unit!117676)

(declare-fun Unit!117920 () Unit!117676)

(assert (=> b!4652436 (= e!2902630 Unit!117920)))

(declare-fun b!4652437 () Bool)

(declare-fun e!2902629 () Unit!117676)

(assert (=> b!4652437 (= e!2902629 e!2902630)))

(declare-fun c!796286 () Bool)

(declare-fun call!325054 () Bool)

(assert (=> b!4652437 (= c!796286 call!325054)))

(declare-fun b!4652438 () Bool)

(declare-fun lt!1815796 () Unit!117676)

(assert (=> b!4652438 (= e!2902629 lt!1815796)))

(declare-fun lt!1815797 () Unit!117676)

(assert (=> b!4652438 (= lt!1815797 (lemmaContainsKeyImpliesGetValueByKeyDefined!1502 (toList!5191 lt!1815223) (_1!29777 (h!58004 newBucket!224))))))

(assert (=> b!4652438 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815223) (_1!29777 (h!58004 newBucket!224))))))

(declare-fun lt!1815798 () Unit!117676)

(assert (=> b!4652438 (= lt!1815798 lt!1815797)))

(assert (=> b!4652438 (= lt!1815796 (lemmaInListThenGetKeysListContains!736 (toList!5191 lt!1815223) (_1!29777 (h!58004 newBucket!224))))))

(assert (=> b!4652438 call!325054))

(declare-fun b!4652439 () Bool)

(declare-fun e!2902633 () List!51995)

(assert (=> b!4652439 (= e!2902633 (keys!18366 lt!1815223))))

(declare-fun b!4652440 () Bool)

(assert (=> b!4652440 (= e!2902633 (getKeysList!741 (toList!5191 lt!1815223)))))

(declare-fun d!1474811 () Bool)

(declare-fun e!2902634 () Bool)

(assert (=> d!1474811 e!2902634))

(declare-fun res!1955686 () Bool)

(assert (=> d!1474811 (=> res!1955686 e!2902634)))

(declare-fun e!2902632 () Bool)

(assert (=> d!1474811 (= res!1955686 e!2902632)))

(declare-fun res!1955684 () Bool)

(assert (=> d!1474811 (=> (not res!1955684) (not e!2902632))))

(declare-fun lt!1815799 () Bool)

(assert (=> d!1474811 (= res!1955684 (not lt!1815799))))

(declare-fun lt!1815794 () Bool)

(assert (=> d!1474811 (= lt!1815799 lt!1815794)))

(declare-fun lt!1815800 () Unit!117676)

(assert (=> d!1474811 (= lt!1815800 e!2902629)))

(declare-fun c!796285 () Bool)

(assert (=> d!1474811 (= c!796285 lt!1815794)))

(assert (=> d!1474811 (= lt!1815794 (containsKey!2706 (toList!5191 lt!1815223) (_1!29777 (h!58004 newBucket!224))))))

(assert (=> d!1474811 (= (contains!15011 lt!1815223 (_1!29777 (h!58004 newBucket!224))) lt!1815799)))

(declare-fun b!4652441 () Bool)

(assert (=> b!4652441 (= e!2902632 (not (contains!15013 (keys!18366 lt!1815223) (_1!29777 (h!58004 newBucket!224)))))))

(declare-fun b!4652442 () Bool)

(declare-fun e!2902631 () Bool)

(assert (=> b!4652442 (= e!2902634 e!2902631)))

(declare-fun res!1955685 () Bool)

(assert (=> b!4652442 (=> (not res!1955685) (not e!2902631))))

(assert (=> b!4652442 (= res!1955685 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815223) (_1!29777 (h!58004 newBucket!224)))))))

(declare-fun b!4652443 () Bool)

(assert (=> b!4652443 (= e!2902631 (contains!15013 (keys!18366 lt!1815223) (_1!29777 (h!58004 newBucket!224))))))

(declare-fun b!4652444 () Bool)

(assert (=> b!4652444 false))

(declare-fun lt!1815793 () Unit!117676)

(declare-fun lt!1815795 () Unit!117676)

(assert (=> b!4652444 (= lt!1815793 lt!1815795)))

(assert (=> b!4652444 (containsKey!2706 (toList!5191 lt!1815223) (_1!29777 (h!58004 newBucket!224)))))

(assert (=> b!4652444 (= lt!1815795 (lemmaInGetKeysListThenContainsKey!740 (toList!5191 lt!1815223) (_1!29777 (h!58004 newBucket!224))))))

(declare-fun Unit!117923 () Unit!117676)

(assert (=> b!4652444 (= e!2902630 Unit!117923)))

(declare-fun bm!325049 () Bool)

(assert (=> bm!325049 (= call!325054 (contains!15013 e!2902633 (_1!29777 (h!58004 newBucket!224))))))

(declare-fun c!796287 () Bool)

(assert (=> bm!325049 (= c!796287 c!796285)))

(assert (= (and d!1474811 c!796285) b!4652438))

(assert (= (and d!1474811 (not c!796285)) b!4652437))

(assert (= (and b!4652437 c!796286) b!4652444))

(assert (= (and b!4652437 (not c!796286)) b!4652436))

(assert (= (or b!4652438 b!4652437) bm!325049))

(assert (= (and bm!325049 c!796287) b!4652440))

(assert (= (and bm!325049 (not c!796287)) b!4652439))

(assert (= (and d!1474811 res!1955684) b!4652441))

(assert (= (and d!1474811 (not res!1955686)) b!4652442))

(assert (= (and b!4652442 res!1955685) b!4652443))

(declare-fun m!5528755 () Bool)

(assert (=> d!1474811 m!5528755))

(declare-fun m!5528757 () Bool)

(assert (=> b!4652443 m!5528757))

(assert (=> b!4652443 m!5528757))

(declare-fun m!5528759 () Bool)

(assert (=> b!4652443 m!5528759))

(declare-fun m!5528761 () Bool)

(assert (=> b!4652442 m!5528761))

(assert (=> b!4652442 m!5528761))

(declare-fun m!5528763 () Bool)

(assert (=> b!4652442 m!5528763))

(declare-fun m!5528765 () Bool)

(assert (=> bm!325049 m!5528765))

(declare-fun m!5528767 () Bool)

(assert (=> b!4652438 m!5528767))

(assert (=> b!4652438 m!5528761))

(assert (=> b!4652438 m!5528761))

(assert (=> b!4652438 m!5528763))

(declare-fun m!5528771 () Bool)

(assert (=> b!4652438 m!5528771))

(assert (=> b!4652441 m!5528757))

(assert (=> b!4652441 m!5528757))

(assert (=> b!4652441 m!5528759))

(assert (=> b!4652439 m!5528757))

(assert (=> b!4652444 m!5528755))

(declare-fun m!5528777 () Bool)

(assert (=> b!4652444 m!5528777))

(declare-fun m!5528781 () Bool)

(assert (=> b!4652440 m!5528781))

(assert (=> b!4651765 d!1474811))

(assert (=> b!4651765 d!1474599))

(declare-fun bs!1060251 () Bool)

(declare-fun d!1474815 () Bool)

(assert (= bs!1060251 (and d!1474815 b!4652214)))

(declare-fun lambda!198656 () Int)

(assert (=> bs!1060251 (= (= lt!1815223 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198656 lambda!198641))))

(declare-fun bs!1060252 () Bool)

(assert (= bs!1060252 (and d!1474815 d!1474663)))

(assert (=> bs!1060252 (= (= lt!1815223 lt!1814962) (= lambda!198656 lambda!198633))))

(declare-fun bs!1060253 () Bool)

(assert (= bs!1060253 (and d!1474815 b!4651851)))

(assert (=> bs!1060253 (= (= lt!1815223 (ListMap!4530 Nil!51868)) (= lambda!198656 lambda!198586))))

(declare-fun bs!1060254 () Bool)

(assert (= bs!1060254 (and d!1474815 b!4652362)))

(assert (=> bs!1060254 (= (= lt!1815223 lt!1815707) (= lambda!198656 lambda!198648))))

(assert (=> bs!1060254 (= (= lt!1815223 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198656 lambda!198647))))

(declare-fun bs!1060255 () Bool)

(assert (= bs!1060255 (and d!1474815 d!1474787)))

(assert (=> bs!1060255 (= (= lt!1815223 lt!1815338) (= lambda!198656 lambda!198651))))

(declare-fun bs!1060256 () Bool)

(assert (= bs!1060256 (and d!1474815 d!1474629)))

(assert (=> bs!1060256 (= (= lt!1815223 lt!1815539) (= lambda!198656 lambda!198623))))

(declare-fun bs!1060257 () Bool)

(assert (= bs!1060257 (and d!1474815 b!4651862)))

(assert (=> bs!1060257 (= (= lt!1815223 (ListMap!4530 Nil!51868)) (= lambda!198656 lambda!198590))))

(declare-fun bs!1060258 () Bool)

(assert (= bs!1060258 (and d!1474815 d!1474445)))

(assert (=> bs!1060258 (not (= lambda!198656 lambda!198577))))

(declare-fun bs!1060259 () Bool)

(assert (= bs!1060259 (and d!1474815 b!4652363)))

(assert (=> bs!1060259 (= (= lt!1815223 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198656 lambda!198646))))

(assert (=> bs!1060251 (= (= lt!1815223 lt!1815624) (= lambda!198656 lambda!198643))))

(declare-fun bs!1060260 () Bool)

(assert (= bs!1060260 (and d!1474815 b!4651970)))

(assert (=> bs!1060260 (= (= lt!1815223 lt!1815433) (= lambda!198656 lambda!198606))))

(declare-fun bs!1060261 () Bool)

(assert (= bs!1060261 (and d!1474815 b!4651772)))

(assert (=> bs!1060261 (= (= lt!1815223 lt!1815244) (= lambda!198656 lambda!198569))))

(assert (=> bs!1060260 (= (= lt!1815223 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198656 lambda!198605))))

(declare-fun bs!1060262 () Bool)

(assert (= bs!1060262 (and d!1474815 b!4652134)))

(assert (=> bs!1060262 (= (= lt!1815223 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198656 lambda!198617))))

(declare-fun bs!1060263 () Bool)

(assert (= bs!1060263 (and d!1474815 d!1474461)))

(assert (=> bs!1060263 (= (= lt!1815223 lt!1815328) (= lambda!198656 lambda!198588))))

(declare-fun bs!1060264 () Bool)

(assert (= bs!1060264 (and d!1474815 d!1474783)))

(assert (=> bs!1060264 (= (= lt!1815223 lt!1815697) (= lambda!198656 lambda!198649))))

(declare-fun bs!1060265 () Bool)

(assert (= bs!1060265 (and d!1474815 b!4651765)))

(assert (=> bs!1060265 (= lambda!198656 lambda!198564)))

(declare-fun bs!1060266 () Bool)

(assert (= bs!1060266 (and d!1474815 b!4651844)))

(assert (=> bs!1060266 (= (= lt!1815223 lt!1815313) (= lambda!198656 lambda!198582))))

(declare-fun bs!1060267 () Bool)

(assert (= bs!1060267 (and d!1474815 d!1474503)))

(assert (=> bs!1060267 (= (= lt!1815223 lt!1815313) (= lambda!198656 lambda!198603))))

(declare-fun bs!1060268 () Bool)

(assert (= bs!1060268 (and d!1474815 b!4651852)))

(assert (=> bs!1060268 (= (= lt!1815223 (ListMap!4530 Nil!51868)) (= lambda!198656 lambda!198585))))

(declare-fun bs!1060269 () Bool)

(assert (= bs!1060269 (and d!1474815 d!1474391)))

(assert (=> bs!1060269 (= (= lt!1815223 lt!1815213) (= lambda!198656 lambda!198566))))

(declare-fun bs!1060270 () Bool)

(assert (= bs!1060270 (and d!1474815 d!1474365)))

(assert (=> bs!1060270 (not (= lambda!198656 lambda!198476))))

(assert (=> bs!1060262 (= (= lt!1815223 lt!1815549) (= lambda!198656 lambda!198618))))

(declare-fun bs!1060271 () Bool)

(assert (= bs!1060271 (and d!1474815 b!4651845)))

(assert (=> bs!1060271 (= (= lt!1815223 lt!1814962) (= lambda!198656 lambda!198580))))

(declare-fun bs!1060272 () Bool)

(assert (= bs!1060272 (and d!1474815 b!4651766)))

(assert (=> bs!1060272 (= (= lt!1815223 (ListMap!4530 Nil!51868)) (= lambda!198656 lambda!198562))))

(declare-fun bs!1060273 () Bool)

(assert (= bs!1060273 (and d!1474815 d!1474467)))

(assert (=> bs!1060273 (= (= lt!1815223 lt!1815361) (= lambda!198656 lambda!198592))))

(declare-fun bs!1060274 () Bool)

(assert (= bs!1060274 (and d!1474815 b!4651971)))

(assert (=> bs!1060274 (= (= lt!1815223 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198656 lambda!198604))))

(declare-fun bs!1060275 () Bool)

(assert (= bs!1060275 (and d!1474815 d!1474649)))

(assert (=> bs!1060275 (= (= lt!1815223 (ListMap!4530 Nil!51868)) (= lambda!198656 lambda!198632))))

(assert (=> bs!1060265 (= (= lt!1815223 (ListMap!4530 Nil!51868)) (= lambda!198656 lambda!198563))))

(declare-fun bs!1060276 () Bool)

(assert (= bs!1060276 (and d!1474815 b!4652135)))

(assert (=> bs!1060276 (= (= lt!1815223 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198656 lambda!198616))))

(declare-fun bs!1060277 () Bool)

(assert (= bs!1060277 (and d!1474815 b!4651773)))

(assert (=> bs!1060277 (= (= lt!1815223 (ListMap!4530 Nil!51868)) (= lambda!198656 lambda!198567))))

(declare-fun bs!1060278 () Bool)

(assert (= bs!1060278 (and d!1474815 d!1474531)))

(assert (=> bs!1060278 (= (= lt!1815223 lt!1815423) (= lambda!198656 lambda!198607))))

(declare-fun bs!1060279 () Bool)

(assert (= bs!1060279 (and d!1474815 b!4652215)))

(assert (=> bs!1060279 (= (= lt!1815223 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198656 lambda!198635))))

(declare-fun bs!1060280 () Bool)

(assert (= bs!1060280 (and d!1474815 d!1474687)))

(assert (=> bs!1060280 (= (= lt!1815223 lt!1815614) (= lambda!198656 lambda!198644))))

(declare-fun bs!1060281 () Bool)

(assert (= bs!1060281 (and d!1474815 d!1474455)))

(assert (=> bs!1060281 (= (= lt!1815223 lt!1815303) (= lambda!198656 lambda!198583))))

(declare-fun bs!1060282 () Bool)

(assert (= bs!1060282 (and d!1474815 b!4651863)))

(assert (=> bs!1060282 (= (= lt!1815223 (ListMap!4530 Nil!51868)) (= lambda!198656 lambda!198589))))

(assert (=> bs!1060261 (= (= lt!1815223 (ListMap!4530 Nil!51868)) (= lambda!198656 lambda!198568))))

(assert (=> bs!1060266 (= (= lt!1815223 lt!1814962) (= lambda!198656 lambda!198581))))

(declare-fun bs!1060283 () Bool)

(assert (= bs!1060283 (and d!1474815 d!1474425)))

(assert (=> bs!1060283 (= (= lt!1815223 lt!1815234) (= lambda!198656 lambda!198570))))

(assert (=> bs!1060257 (= (= lt!1815223 lt!1815371) (= lambda!198656 lambda!198591))))

(declare-fun bs!1060284 () Bool)

(assert (= bs!1060284 (and d!1474815 d!1474677)))

(assert (=> bs!1060284 (= (= lt!1815223 lt!1815244) (= lambda!198656 lambda!198634))))

(assert (=> bs!1060253 (= (= lt!1815223 lt!1815338) (= lambda!198656 lambda!198587))))

(assert (=> d!1474815 true))

(assert (=> d!1474815 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198656)))

(declare-fun lt!1815801 () Unit!117676)

(assert (=> d!1474815 (= lt!1815801 (choose!31945 (ListMap!4530 Nil!51868) lt!1815223 (_1!29777 (h!58004 newBucket!224)) (_2!29777 (h!58004 newBucket!224))))))

(assert (=> d!1474815 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (tuple2!52967 (_1!29777 (h!58004 newBucket!224)) (_2!29777 (h!58004 newBucket!224))))) lambda!198656)))

(assert (=> d!1474815 (= (addForallContainsKeyThenBeforeAdding!589 (ListMap!4530 Nil!51868) lt!1815223 (_1!29777 (h!58004 newBucket!224)) (_2!29777 (h!58004 newBucket!224))) lt!1815801)))

(declare-fun bs!1060285 () Bool)

(assert (= bs!1060285 d!1474815))

(declare-fun m!5528803 () Bool)

(assert (=> bs!1060285 m!5528803))

(declare-fun m!5528805 () Bool)

(assert (=> bs!1060285 m!5528805))

(declare-fun m!5528807 () Bool)

(assert (=> bs!1060285 m!5528807))

(declare-fun m!5528809 () Bool)

(assert (=> bs!1060285 m!5528809))

(assert (=> b!4651765 d!1474815))

(declare-fun d!1474829 () Bool)

(declare-fun res!1955700 () Bool)

(declare-fun e!2902653 () Bool)

(assert (=> d!1474829 (=> res!1955700 e!2902653)))

(assert (=> d!1474829 (= res!1955700 ((_ is Nil!51868) newBucket!224))))

(assert (=> d!1474829 (= (forall!11004 newBucket!224 lambda!198564) e!2902653)))

(declare-fun b!4652468 () Bool)

(declare-fun e!2902654 () Bool)

(assert (=> b!4652468 (= e!2902653 e!2902654)))

(declare-fun res!1955701 () Bool)

(assert (=> b!4652468 (=> (not res!1955701) (not e!2902654))))

(assert (=> b!4652468 (= res!1955701 (dynLambda!21575 lambda!198564 (h!58004 newBucket!224)))))

(declare-fun b!4652469 () Bool)

(assert (=> b!4652469 (= e!2902654 (forall!11004 (t!359100 newBucket!224) lambda!198564))))

(assert (= (and d!1474829 (not res!1955700)) b!4652468))

(assert (= (and b!4652468 res!1955701) b!4652469))

(declare-fun b_lambda!173129 () Bool)

(assert (=> (not b_lambda!173129) (not b!4652468)))

(declare-fun m!5528827 () Bool)

(assert (=> b!4652468 m!5528827))

(declare-fun m!5528831 () Bool)

(assert (=> b!4652469 m!5528831))

(assert (=> b!4651765 d!1474829))

(declare-fun d!1474831 () Bool)

(assert (=> d!1474831 (dynLambda!21575 lambda!198564 (h!58004 newBucket!224))))

(declare-fun lt!1815810 () Unit!117676)

(assert (=> d!1474831 (= lt!1815810 (choose!31949 (toList!5191 lt!1815218) lambda!198564 (h!58004 newBucket!224)))))

(declare-fun e!2902655 () Bool)

(assert (=> d!1474831 e!2902655))

(declare-fun res!1955702 () Bool)

(assert (=> d!1474831 (=> (not res!1955702) (not e!2902655))))

(assert (=> d!1474831 (= res!1955702 (forall!11004 (toList!5191 lt!1815218) lambda!198564))))

(assert (=> d!1474831 (= (forallContained!3212 (toList!5191 lt!1815218) lambda!198564 (h!58004 newBucket!224)) lt!1815810)))

(declare-fun b!4652470 () Bool)

(assert (=> b!4652470 (= e!2902655 (contains!15015 (toList!5191 lt!1815218) (h!58004 newBucket!224)))))

(assert (= (and d!1474831 res!1955702) b!4652470))

(declare-fun b_lambda!173131 () Bool)

(assert (=> (not b_lambda!173131) (not d!1474831)))

(assert (=> d!1474831 m!5528827))

(declare-fun m!5528833 () Bool)

(assert (=> d!1474831 m!5528833))

(assert (=> d!1474831 m!5527269))

(declare-fun m!5528837 () Bool)

(assert (=> b!4652470 m!5528837))

(assert (=> b!4651765 d!1474831))

(declare-fun d!1474837 () Bool)

(declare-fun res!1955705 () Bool)

(declare-fun e!2902659 () Bool)

(assert (=> d!1474837 (=> res!1955705 e!2902659)))

(assert (=> d!1474837 (= res!1955705 ((_ is Nil!51868) (toList!5191 (ListMap!4530 Nil!51868))))))

(assert (=> d!1474837 (= (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198563) e!2902659)))

(declare-fun b!4652477 () Bool)

(declare-fun e!2902660 () Bool)

(assert (=> b!4652477 (= e!2902659 e!2902660)))

(declare-fun res!1955706 () Bool)

(assert (=> b!4652477 (=> (not res!1955706) (not e!2902660))))

(assert (=> b!4652477 (= res!1955706 (dynLambda!21575 lambda!198563 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))))))

(declare-fun b!4652478 () Bool)

(assert (=> b!4652478 (= e!2902660 (forall!11004 (t!359100 (toList!5191 (ListMap!4530 Nil!51868))) lambda!198563))))

(assert (= (and d!1474837 (not res!1955705)) b!4652477))

(assert (= (and b!4652477 res!1955706) b!4652478))

(declare-fun b_lambda!173133 () Bool)

(assert (=> (not b_lambda!173133) (not b!4652477)))

(declare-fun m!5528847 () Bool)

(assert (=> b!4652477 m!5528847))

(declare-fun m!5528849 () Bool)

(assert (=> b!4652478 m!5528849))

(assert (=> b!4651765 d!1474837))

(declare-fun d!1474841 () Bool)

(declare-fun res!1955711 () Bool)

(declare-fun e!2902668 () Bool)

(assert (=> d!1474841 (=> res!1955711 e!2902668)))

(assert (=> d!1474841 (= res!1955711 ((_ is Nil!51868) (toList!5191 lt!1815218)))))

(assert (=> d!1474841 (= (forall!11004 (toList!5191 lt!1815218) lambda!198564) e!2902668)))

(declare-fun b!4652493 () Bool)

(declare-fun e!2902669 () Bool)

(assert (=> b!4652493 (= e!2902668 e!2902669)))

(declare-fun res!1955712 () Bool)

(assert (=> b!4652493 (=> (not res!1955712) (not e!2902669))))

(assert (=> b!4652493 (= res!1955712 (dynLambda!21575 lambda!198564 (h!58004 (toList!5191 lt!1815218))))))

(declare-fun b!4652494 () Bool)

(assert (=> b!4652494 (= e!2902669 (forall!11004 (t!359100 (toList!5191 lt!1815218)) lambda!198564))))

(assert (= (and d!1474841 (not res!1955711)) b!4652493))

(assert (= (and b!4652493 res!1955712) b!4652494))

(declare-fun b_lambda!173135 () Bool)

(assert (=> (not b_lambda!173135) (not b!4652493)))

(declare-fun m!5528851 () Bool)

(assert (=> b!4652493 m!5528851))

(declare-fun m!5528853 () Bool)

(assert (=> b!4652494 m!5528853))

(assert (=> b!4651765 d!1474841))

(declare-fun b!4652495 () Bool)

(declare-fun e!2902671 () Unit!117676)

(declare-fun Unit!117924 () Unit!117676)

(assert (=> b!4652495 (= e!2902671 Unit!117924)))

(declare-fun b!4652496 () Bool)

(declare-fun e!2902670 () Unit!117676)

(assert (=> b!4652496 (= e!2902670 e!2902671)))

(declare-fun c!796301 () Bool)

(declare-fun call!325060 () Bool)

(assert (=> b!4652496 (= c!796301 call!325060)))

(declare-fun b!4652497 () Bool)

(declare-fun lt!1815826 () Unit!117676)

(assert (=> b!4652497 (= e!2902670 lt!1815826)))

(declare-fun lt!1815827 () Unit!117676)

(assert (=> b!4652497 (= lt!1815827 (lemmaContainsKeyImpliesGetValueByKeyDefined!1502 (toList!5191 lt!1815218) (_1!29777 (h!58004 newBucket!224))))))

(assert (=> b!4652497 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815218) (_1!29777 (h!58004 newBucket!224))))))

(declare-fun lt!1815828 () Unit!117676)

(assert (=> b!4652497 (= lt!1815828 lt!1815827)))

(assert (=> b!4652497 (= lt!1815826 (lemmaInListThenGetKeysListContains!736 (toList!5191 lt!1815218) (_1!29777 (h!58004 newBucket!224))))))

(assert (=> b!4652497 call!325060))

(declare-fun b!4652498 () Bool)

(declare-fun e!2902674 () List!51995)

(assert (=> b!4652498 (= e!2902674 (keys!18366 lt!1815218))))

(declare-fun b!4652499 () Bool)

(assert (=> b!4652499 (= e!2902674 (getKeysList!741 (toList!5191 lt!1815218)))))

(declare-fun d!1474843 () Bool)

(declare-fun e!2902675 () Bool)

(assert (=> d!1474843 e!2902675))

(declare-fun res!1955715 () Bool)

(assert (=> d!1474843 (=> res!1955715 e!2902675)))

(declare-fun e!2902673 () Bool)

(assert (=> d!1474843 (= res!1955715 e!2902673)))

(declare-fun res!1955713 () Bool)

(assert (=> d!1474843 (=> (not res!1955713) (not e!2902673))))

(declare-fun lt!1815829 () Bool)

(assert (=> d!1474843 (= res!1955713 (not lt!1815829))))

(declare-fun lt!1815824 () Bool)

(assert (=> d!1474843 (= lt!1815829 lt!1815824)))

(declare-fun lt!1815830 () Unit!117676)

(assert (=> d!1474843 (= lt!1815830 e!2902670)))

(declare-fun c!796300 () Bool)

(assert (=> d!1474843 (= c!796300 lt!1815824)))

(assert (=> d!1474843 (= lt!1815824 (containsKey!2706 (toList!5191 lt!1815218) (_1!29777 (h!58004 newBucket!224))))))

(assert (=> d!1474843 (= (contains!15011 lt!1815218 (_1!29777 (h!58004 newBucket!224))) lt!1815829)))

(declare-fun b!4652500 () Bool)

(assert (=> b!4652500 (= e!2902673 (not (contains!15013 (keys!18366 lt!1815218) (_1!29777 (h!58004 newBucket!224)))))))

(declare-fun b!4652501 () Bool)

(declare-fun e!2902672 () Bool)

(assert (=> b!4652501 (= e!2902675 e!2902672)))

(declare-fun res!1955714 () Bool)

(assert (=> b!4652501 (=> (not res!1955714) (not e!2902672))))

(assert (=> b!4652501 (= res!1955714 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815218) (_1!29777 (h!58004 newBucket!224)))))))

(declare-fun b!4652502 () Bool)

(assert (=> b!4652502 (= e!2902672 (contains!15013 (keys!18366 lt!1815218) (_1!29777 (h!58004 newBucket!224))))))

(declare-fun b!4652503 () Bool)

(assert (=> b!4652503 false))

(declare-fun lt!1815823 () Unit!117676)

(declare-fun lt!1815825 () Unit!117676)

(assert (=> b!4652503 (= lt!1815823 lt!1815825)))

(assert (=> b!4652503 (containsKey!2706 (toList!5191 lt!1815218) (_1!29777 (h!58004 newBucket!224)))))

(assert (=> b!4652503 (= lt!1815825 (lemmaInGetKeysListThenContainsKey!740 (toList!5191 lt!1815218) (_1!29777 (h!58004 newBucket!224))))))

(declare-fun Unit!117925 () Unit!117676)

(assert (=> b!4652503 (= e!2902671 Unit!117925)))

(declare-fun bm!325055 () Bool)

(assert (=> bm!325055 (= call!325060 (contains!15013 e!2902674 (_1!29777 (h!58004 newBucket!224))))))

(declare-fun c!796302 () Bool)

(assert (=> bm!325055 (= c!796302 c!796300)))

(assert (= (and d!1474843 c!796300) b!4652497))

(assert (= (and d!1474843 (not c!796300)) b!4652496))

(assert (= (and b!4652496 c!796301) b!4652503))

(assert (= (and b!4652496 (not c!796301)) b!4652495))

(assert (= (or b!4652497 b!4652496) bm!325055))

(assert (= (and bm!325055 c!796302) b!4652499))

(assert (= (and bm!325055 (not c!796302)) b!4652498))

(assert (= (and d!1474843 res!1955713) b!4652500))

(assert (= (and d!1474843 (not res!1955715)) b!4652501))

(assert (= (and b!4652501 res!1955714) b!4652502))

(declare-fun m!5528855 () Bool)

(assert (=> d!1474843 m!5528855))

(declare-fun m!5528857 () Bool)

(assert (=> b!4652502 m!5528857))

(assert (=> b!4652502 m!5528857))

(declare-fun m!5528859 () Bool)

(assert (=> b!4652502 m!5528859))

(declare-fun m!5528861 () Bool)

(assert (=> b!4652501 m!5528861))

(assert (=> b!4652501 m!5528861))

(declare-fun m!5528863 () Bool)

(assert (=> b!4652501 m!5528863))

(declare-fun m!5528867 () Bool)

(assert (=> bm!325055 m!5528867))

(declare-fun m!5528871 () Bool)

(assert (=> b!4652497 m!5528871))

(assert (=> b!4652497 m!5528861))

(assert (=> b!4652497 m!5528861))

(assert (=> b!4652497 m!5528863))

(declare-fun m!5528879 () Bool)

(assert (=> b!4652497 m!5528879))

(assert (=> b!4652500 m!5528857))

(assert (=> b!4652500 m!5528857))

(assert (=> b!4652500 m!5528859))

(assert (=> b!4652498 m!5528857))

(assert (=> b!4652503 m!5528855))

(declare-fun m!5528885 () Bool)

(assert (=> b!4652503 m!5528885))

(declare-fun m!5528887 () Bool)

(assert (=> b!4652499 m!5528887))

(assert (=> b!4651765 d!1474843))

(declare-fun bs!1060286 () Bool)

(declare-fun b!4652507 () Bool)

(assert (= bs!1060286 (and b!4652507 b!4652214)))

(declare-fun lambda!198657 () Int)

(assert (=> bs!1060286 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198657 lambda!198641))))

(declare-fun bs!1060287 () Bool)

(assert (= bs!1060287 (and b!4652507 d!1474815)))

(assert (=> bs!1060287 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815223) (= lambda!198657 lambda!198656))))

(declare-fun bs!1060288 () Bool)

(assert (= bs!1060288 (and b!4652507 d!1474663)))

(assert (=> bs!1060288 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1814962) (= lambda!198657 lambda!198633))))

(declare-fun bs!1060289 () Bool)

(assert (= bs!1060289 (and b!4652507 b!4651851)))

(assert (=> bs!1060289 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (ListMap!4530 Nil!51868)) (= lambda!198657 lambda!198586))))

(declare-fun bs!1060290 () Bool)

(assert (= bs!1060290 (and b!4652507 b!4652362)))

(assert (=> bs!1060290 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815707) (= lambda!198657 lambda!198648))))

(assert (=> bs!1060290 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198657 lambda!198647))))

(declare-fun bs!1060291 () Bool)

(assert (= bs!1060291 (and b!4652507 d!1474787)))

(assert (=> bs!1060291 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815338) (= lambda!198657 lambda!198651))))

(declare-fun bs!1060292 () Bool)

(assert (= bs!1060292 (and b!4652507 d!1474629)))

(assert (=> bs!1060292 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815539) (= lambda!198657 lambda!198623))))

(declare-fun bs!1060293 () Bool)

(assert (= bs!1060293 (and b!4652507 b!4651862)))

(assert (=> bs!1060293 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (ListMap!4530 Nil!51868)) (= lambda!198657 lambda!198590))))

(declare-fun bs!1060294 () Bool)

(assert (= bs!1060294 (and b!4652507 d!1474445)))

(assert (=> bs!1060294 (not (= lambda!198657 lambda!198577))))

(declare-fun bs!1060295 () Bool)

(assert (= bs!1060295 (and b!4652507 b!4652363)))

(assert (=> bs!1060295 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198657 lambda!198646))))

(assert (=> bs!1060286 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815624) (= lambda!198657 lambda!198643))))

(declare-fun bs!1060296 () Bool)

(assert (= bs!1060296 (and b!4652507 b!4651970)))

(assert (=> bs!1060296 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815433) (= lambda!198657 lambda!198606))))

(declare-fun bs!1060297 () Bool)

(assert (= bs!1060297 (and b!4652507 b!4651772)))

(assert (=> bs!1060297 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815244) (= lambda!198657 lambda!198569))))

(assert (=> bs!1060296 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198657 lambda!198605))))

(declare-fun bs!1060298 () Bool)

(assert (= bs!1060298 (and b!4652507 b!4652134)))

(assert (=> bs!1060298 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198657 lambda!198617))))

(declare-fun bs!1060299 () Bool)

(assert (= bs!1060299 (and b!4652507 d!1474461)))

(assert (=> bs!1060299 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815328) (= lambda!198657 lambda!198588))))

(declare-fun bs!1060300 () Bool)

(assert (= bs!1060300 (and b!4652507 d!1474783)))

(assert (=> bs!1060300 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815697) (= lambda!198657 lambda!198649))))

(declare-fun bs!1060301 () Bool)

(assert (= bs!1060301 (and b!4652507 b!4651765)))

(assert (=> bs!1060301 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815223) (= lambda!198657 lambda!198564))))

(declare-fun bs!1060302 () Bool)

(assert (= bs!1060302 (and b!4652507 b!4651844)))

(assert (=> bs!1060302 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815313) (= lambda!198657 lambda!198582))))

(declare-fun bs!1060303 () Bool)

(assert (= bs!1060303 (and b!4652507 d!1474503)))

(assert (=> bs!1060303 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815313) (= lambda!198657 lambda!198603))))

(declare-fun bs!1060304 () Bool)

(assert (= bs!1060304 (and b!4652507 b!4651852)))

(assert (=> bs!1060304 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (ListMap!4530 Nil!51868)) (= lambda!198657 lambda!198585))))

(declare-fun bs!1060305 () Bool)

(assert (= bs!1060305 (and b!4652507 d!1474391)))

(assert (=> bs!1060305 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815213) (= lambda!198657 lambda!198566))))

(declare-fun bs!1060306 () Bool)

(assert (= bs!1060306 (and b!4652507 d!1474365)))

(assert (=> bs!1060306 (not (= lambda!198657 lambda!198476))))

(assert (=> bs!1060298 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815549) (= lambda!198657 lambda!198618))))

(declare-fun bs!1060307 () Bool)

(assert (= bs!1060307 (and b!4652507 b!4651845)))

(assert (=> bs!1060307 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1814962) (= lambda!198657 lambda!198580))))

(declare-fun bs!1060308 () Bool)

(assert (= bs!1060308 (and b!4652507 b!4651766)))

(assert (=> bs!1060308 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (ListMap!4530 Nil!51868)) (= lambda!198657 lambda!198562))))

(declare-fun bs!1060309 () Bool)

(assert (= bs!1060309 (and b!4652507 d!1474467)))

(assert (=> bs!1060309 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815361) (= lambda!198657 lambda!198592))))

(declare-fun bs!1060310 () Bool)

(assert (= bs!1060310 (and b!4652507 b!4651971)))

(assert (=> bs!1060310 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198657 lambda!198604))))

(declare-fun bs!1060311 () Bool)

(assert (= bs!1060311 (and b!4652507 d!1474649)))

(assert (=> bs!1060311 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (ListMap!4530 Nil!51868)) (= lambda!198657 lambda!198632))))

(assert (=> bs!1060301 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (ListMap!4530 Nil!51868)) (= lambda!198657 lambda!198563))))

(declare-fun bs!1060312 () Bool)

(assert (= bs!1060312 (and b!4652507 b!4652135)))

(assert (=> bs!1060312 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198657 lambda!198616))))

(declare-fun bs!1060313 () Bool)

(assert (= bs!1060313 (and b!4652507 b!4651773)))

(assert (=> bs!1060313 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (ListMap!4530 Nil!51868)) (= lambda!198657 lambda!198567))))

(declare-fun bs!1060314 () Bool)

(assert (= bs!1060314 (and b!4652507 d!1474531)))

(assert (=> bs!1060314 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815423) (= lambda!198657 lambda!198607))))

(declare-fun bs!1060315 () Bool)

(assert (= bs!1060315 (and b!4652507 b!4652215)))

(assert (=> bs!1060315 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198657 lambda!198635))))

(declare-fun bs!1060316 () Bool)

(assert (= bs!1060316 (and b!4652507 d!1474687)))

(assert (=> bs!1060316 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815614) (= lambda!198657 lambda!198644))))

(declare-fun bs!1060317 () Bool)

(assert (= bs!1060317 (and b!4652507 d!1474455)))

(assert (=> bs!1060317 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815303) (= lambda!198657 lambda!198583))))

(declare-fun bs!1060318 () Bool)

(assert (= bs!1060318 (and b!4652507 b!4651863)))

(assert (=> bs!1060318 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (ListMap!4530 Nil!51868)) (= lambda!198657 lambda!198589))))

(assert (=> bs!1060297 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (ListMap!4530 Nil!51868)) (= lambda!198657 lambda!198568))))

(assert (=> bs!1060302 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1814962) (= lambda!198657 lambda!198581))))

(declare-fun bs!1060319 () Bool)

(assert (= bs!1060319 (and b!4652507 d!1474425)))

(assert (=> bs!1060319 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815234) (= lambda!198657 lambda!198570))))

(assert (=> bs!1060293 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815371) (= lambda!198657 lambda!198591))))

(declare-fun bs!1060320 () Bool)

(assert (= bs!1060320 (and b!4652507 d!1474677)))

(assert (=> bs!1060320 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815244) (= lambda!198657 lambda!198634))))

(assert (=> bs!1060289 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815338) (= lambda!198657 lambda!198587))))

(assert (=> b!4652507 true))

(declare-fun bs!1060326 () Bool)

(declare-fun b!4652506 () Bool)

(assert (= bs!1060326 (and b!4652506 b!4652214)))

(declare-fun lambda!198659 () Int)

(assert (=> bs!1060326 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198659 lambda!198641))))

(declare-fun bs!1060328 () Bool)

(assert (= bs!1060328 (and b!4652506 d!1474815)))

(assert (=> bs!1060328 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815223) (= lambda!198659 lambda!198656))))

(declare-fun bs!1060330 () Bool)

(assert (= bs!1060330 (and b!4652506 d!1474663)))

(assert (=> bs!1060330 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1814962) (= lambda!198659 lambda!198633))))

(declare-fun bs!1060332 () Bool)

(assert (= bs!1060332 (and b!4652506 b!4651851)))

(assert (=> bs!1060332 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (ListMap!4530 Nil!51868)) (= lambda!198659 lambda!198586))))

(declare-fun bs!1060334 () Bool)

(assert (= bs!1060334 (and b!4652506 b!4652362)))

(assert (=> bs!1060334 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815707) (= lambda!198659 lambda!198648))))

(assert (=> bs!1060334 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198659 lambda!198647))))

(declare-fun bs!1060336 () Bool)

(assert (= bs!1060336 (and b!4652506 d!1474787)))

(assert (=> bs!1060336 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815338) (= lambda!198659 lambda!198651))))

(declare-fun bs!1060338 () Bool)

(assert (= bs!1060338 (and b!4652506 d!1474629)))

(assert (=> bs!1060338 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815539) (= lambda!198659 lambda!198623))))

(declare-fun bs!1060340 () Bool)

(assert (= bs!1060340 (and b!4652506 b!4651862)))

(assert (=> bs!1060340 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (ListMap!4530 Nil!51868)) (= lambda!198659 lambda!198590))))

(declare-fun bs!1060342 () Bool)

(assert (= bs!1060342 (and b!4652506 d!1474445)))

(assert (=> bs!1060342 (not (= lambda!198659 lambda!198577))))

(declare-fun bs!1060344 () Bool)

(assert (= bs!1060344 (and b!4652506 b!4652363)))

(assert (=> bs!1060344 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198659 lambda!198646))))

(assert (=> bs!1060326 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815624) (= lambda!198659 lambda!198643))))

(declare-fun bs!1060347 () Bool)

(assert (= bs!1060347 (and b!4652506 b!4651970)))

(assert (=> bs!1060347 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815433) (= lambda!198659 lambda!198606))))

(declare-fun bs!1060349 () Bool)

(assert (= bs!1060349 (and b!4652506 b!4651772)))

(assert (=> bs!1060349 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815244) (= lambda!198659 lambda!198569))))

(assert (=> bs!1060347 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198659 lambda!198605))))

(declare-fun bs!1060351 () Bool)

(assert (= bs!1060351 (and b!4652506 b!4652134)))

(assert (=> bs!1060351 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198659 lambda!198617))))

(declare-fun bs!1060353 () Bool)

(assert (= bs!1060353 (and b!4652506 d!1474461)))

(assert (=> bs!1060353 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815328) (= lambda!198659 lambda!198588))))

(declare-fun bs!1060355 () Bool)

(assert (= bs!1060355 (and b!4652506 d!1474783)))

(assert (=> bs!1060355 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815697) (= lambda!198659 lambda!198649))))

(declare-fun bs!1060357 () Bool)

(assert (= bs!1060357 (and b!4652506 b!4651765)))

(assert (=> bs!1060357 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815223) (= lambda!198659 lambda!198564))))

(declare-fun bs!1060359 () Bool)

(assert (= bs!1060359 (and b!4652506 b!4651844)))

(assert (=> bs!1060359 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815313) (= lambda!198659 lambda!198582))))

(declare-fun bs!1060361 () Bool)

(assert (= bs!1060361 (and b!4652506 d!1474503)))

(assert (=> bs!1060361 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815313) (= lambda!198659 lambda!198603))))

(declare-fun bs!1060363 () Bool)

(assert (= bs!1060363 (and b!4652506 b!4651852)))

(assert (=> bs!1060363 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (ListMap!4530 Nil!51868)) (= lambda!198659 lambda!198585))))

(declare-fun bs!1060364 () Bool)

(assert (= bs!1060364 (and b!4652506 d!1474391)))

(assert (=> bs!1060364 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815213) (= lambda!198659 lambda!198566))))

(declare-fun bs!1060366 () Bool)

(assert (= bs!1060366 (and b!4652506 d!1474365)))

(assert (=> bs!1060366 (not (= lambda!198659 lambda!198476))))

(assert (=> bs!1060351 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815549) (= lambda!198659 lambda!198618))))

(declare-fun bs!1060368 () Bool)

(assert (= bs!1060368 (and b!4652506 b!4651845)))

(assert (=> bs!1060368 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1814962) (= lambda!198659 lambda!198580))))

(declare-fun bs!1060370 () Bool)

(assert (= bs!1060370 (and b!4652506 b!4651766)))

(assert (=> bs!1060370 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (ListMap!4530 Nil!51868)) (= lambda!198659 lambda!198562))))

(declare-fun bs!1060372 () Bool)

(assert (= bs!1060372 (and b!4652506 d!1474467)))

(assert (=> bs!1060372 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815361) (= lambda!198659 lambda!198592))))

(declare-fun bs!1060374 () Bool)

(assert (= bs!1060374 (and b!4652506 b!4651971)))

(assert (=> bs!1060374 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198659 lambda!198604))))

(declare-fun bs!1060375 () Bool)

(assert (= bs!1060375 (and b!4652506 b!4652507)))

(assert (=> bs!1060375 (= lambda!198659 lambda!198657)))

(declare-fun bs!1060376 () Bool)

(assert (= bs!1060376 (and b!4652506 d!1474649)))

(assert (=> bs!1060376 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (ListMap!4530 Nil!51868)) (= lambda!198659 lambda!198632))))

(assert (=> bs!1060357 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (ListMap!4530 Nil!51868)) (= lambda!198659 lambda!198563))))

(declare-fun bs!1060377 () Bool)

(assert (= bs!1060377 (and b!4652506 b!4652135)))

(assert (=> bs!1060377 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198659 lambda!198616))))

(declare-fun bs!1060378 () Bool)

(assert (= bs!1060378 (and b!4652506 b!4651773)))

(assert (=> bs!1060378 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (ListMap!4530 Nil!51868)) (= lambda!198659 lambda!198567))))

(declare-fun bs!1060379 () Bool)

(assert (= bs!1060379 (and b!4652506 d!1474531)))

(assert (=> bs!1060379 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815423) (= lambda!198659 lambda!198607))))

(declare-fun bs!1060380 () Bool)

(assert (= bs!1060380 (and b!4652506 b!4652215)))

(assert (=> bs!1060380 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198659 lambda!198635))))

(declare-fun bs!1060381 () Bool)

(assert (= bs!1060381 (and b!4652506 d!1474687)))

(assert (=> bs!1060381 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815614) (= lambda!198659 lambda!198644))))

(declare-fun bs!1060382 () Bool)

(assert (= bs!1060382 (and b!4652506 d!1474455)))

(assert (=> bs!1060382 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815303) (= lambda!198659 lambda!198583))))

(declare-fun bs!1060384 () Bool)

(assert (= bs!1060384 (and b!4652506 b!4651863)))

(assert (=> bs!1060384 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (ListMap!4530 Nil!51868)) (= lambda!198659 lambda!198589))))

(assert (=> bs!1060349 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (ListMap!4530 Nil!51868)) (= lambda!198659 lambda!198568))))

(assert (=> bs!1060359 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1814962) (= lambda!198659 lambda!198581))))

(declare-fun bs!1060385 () Bool)

(assert (= bs!1060385 (and b!4652506 d!1474425)))

(assert (=> bs!1060385 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815234) (= lambda!198659 lambda!198570))))

(assert (=> bs!1060340 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815371) (= lambda!198659 lambda!198591))))

(declare-fun bs!1060386 () Bool)

(assert (= bs!1060386 (and b!4652506 d!1474677)))

(assert (=> bs!1060386 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815244) (= lambda!198659 lambda!198634))))

(assert (=> bs!1060332 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815338) (= lambda!198659 lambda!198587))))

(assert (=> b!4652506 true))

(declare-fun lt!1815841 () ListMap!4529)

(declare-fun lambda!198660 () Int)

(assert (=> bs!1060326 (= (= lt!1815841 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198660 lambda!198641))))

(assert (=> bs!1060328 (= (= lt!1815841 lt!1815223) (= lambda!198660 lambda!198656))))

(assert (=> bs!1060330 (= (= lt!1815841 lt!1814962) (= lambda!198660 lambda!198633))))

(assert (=> bs!1060332 (= (= lt!1815841 (ListMap!4530 Nil!51868)) (= lambda!198660 lambda!198586))))

(assert (=> bs!1060334 (= (= lt!1815841 lt!1815707) (= lambda!198660 lambda!198648))))

(assert (=> bs!1060334 (= (= lt!1815841 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198660 lambda!198647))))

(assert (=> bs!1060336 (= (= lt!1815841 lt!1815338) (= lambda!198660 lambda!198651))))

(assert (=> bs!1060338 (= (= lt!1815841 lt!1815539) (= lambda!198660 lambda!198623))))

(assert (=> b!4652506 (= (= lt!1815841 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198660 lambda!198659))))

(assert (=> bs!1060340 (= (= lt!1815841 (ListMap!4530 Nil!51868)) (= lambda!198660 lambda!198590))))

(assert (=> bs!1060342 (not (= lambda!198660 lambda!198577))))

(assert (=> bs!1060344 (= (= lt!1815841 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198660 lambda!198646))))

(assert (=> bs!1060326 (= (= lt!1815841 lt!1815624) (= lambda!198660 lambda!198643))))

(assert (=> bs!1060347 (= (= lt!1815841 lt!1815433) (= lambda!198660 lambda!198606))))

(assert (=> bs!1060349 (= (= lt!1815841 lt!1815244) (= lambda!198660 lambda!198569))))

(assert (=> bs!1060347 (= (= lt!1815841 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198660 lambda!198605))))

(assert (=> bs!1060351 (= (= lt!1815841 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198660 lambda!198617))))

(assert (=> bs!1060353 (= (= lt!1815841 lt!1815328) (= lambda!198660 lambda!198588))))

(assert (=> bs!1060355 (= (= lt!1815841 lt!1815697) (= lambda!198660 lambda!198649))))

(assert (=> bs!1060357 (= (= lt!1815841 lt!1815223) (= lambda!198660 lambda!198564))))

(assert (=> bs!1060359 (= (= lt!1815841 lt!1815313) (= lambda!198660 lambda!198582))))

(assert (=> bs!1060361 (= (= lt!1815841 lt!1815313) (= lambda!198660 lambda!198603))))

(assert (=> bs!1060363 (= (= lt!1815841 (ListMap!4530 Nil!51868)) (= lambda!198660 lambda!198585))))

(assert (=> bs!1060364 (= (= lt!1815841 lt!1815213) (= lambda!198660 lambda!198566))))

(assert (=> bs!1060366 (not (= lambda!198660 lambda!198476))))

(assert (=> bs!1060351 (= (= lt!1815841 lt!1815549) (= lambda!198660 lambda!198618))))

(assert (=> bs!1060368 (= (= lt!1815841 lt!1814962) (= lambda!198660 lambda!198580))))

(assert (=> bs!1060370 (= (= lt!1815841 (ListMap!4530 Nil!51868)) (= lambda!198660 lambda!198562))))

(assert (=> bs!1060372 (= (= lt!1815841 lt!1815361) (= lambda!198660 lambda!198592))))

(assert (=> bs!1060374 (= (= lt!1815841 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198660 lambda!198604))))

(assert (=> bs!1060375 (= (= lt!1815841 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198660 lambda!198657))))

(assert (=> bs!1060376 (= (= lt!1815841 (ListMap!4530 Nil!51868)) (= lambda!198660 lambda!198632))))

(assert (=> bs!1060357 (= (= lt!1815841 (ListMap!4530 Nil!51868)) (= lambda!198660 lambda!198563))))

(assert (=> bs!1060377 (= (= lt!1815841 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198660 lambda!198616))))

(assert (=> bs!1060378 (= (= lt!1815841 (ListMap!4530 Nil!51868)) (= lambda!198660 lambda!198567))))

(assert (=> bs!1060379 (= (= lt!1815841 lt!1815423) (= lambda!198660 lambda!198607))))

(assert (=> bs!1060380 (= (= lt!1815841 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198660 lambda!198635))))

(assert (=> bs!1060381 (= (= lt!1815841 lt!1815614) (= lambda!198660 lambda!198644))))

(assert (=> bs!1060382 (= (= lt!1815841 lt!1815303) (= lambda!198660 lambda!198583))))

(assert (=> bs!1060384 (= (= lt!1815841 (ListMap!4530 Nil!51868)) (= lambda!198660 lambda!198589))))

(assert (=> bs!1060349 (= (= lt!1815841 (ListMap!4530 Nil!51868)) (= lambda!198660 lambda!198568))))

(assert (=> bs!1060359 (= (= lt!1815841 lt!1814962) (= lambda!198660 lambda!198581))))

(assert (=> bs!1060385 (= (= lt!1815841 lt!1815234) (= lambda!198660 lambda!198570))))

(assert (=> bs!1060340 (= (= lt!1815841 lt!1815371) (= lambda!198660 lambda!198591))))

(assert (=> bs!1060386 (= (= lt!1815841 lt!1815244) (= lambda!198660 lambda!198634))))

(assert (=> bs!1060332 (= (= lt!1815841 lt!1815338) (= lambda!198660 lambda!198587))))

(assert (=> b!4652506 true))

(declare-fun bs!1060400 () Bool)

(declare-fun d!1474845 () Bool)

(assert (= bs!1060400 (and d!1474845 b!4652214)))

(declare-fun lambda!198662 () Int)

(declare-fun lt!1815831 () ListMap!4529)

(assert (=> bs!1060400 (= (= lt!1815831 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198662 lambda!198641))))

(declare-fun bs!1060402 () Bool)

(assert (= bs!1060402 (and d!1474845 d!1474815)))

(assert (=> bs!1060402 (= (= lt!1815831 lt!1815223) (= lambda!198662 lambda!198656))))

(declare-fun bs!1060404 () Bool)

(assert (= bs!1060404 (and d!1474845 d!1474663)))

(assert (=> bs!1060404 (= (= lt!1815831 lt!1814962) (= lambda!198662 lambda!198633))))

(declare-fun bs!1060406 () Bool)

(assert (= bs!1060406 (and d!1474845 b!4651851)))

(assert (=> bs!1060406 (= (= lt!1815831 (ListMap!4530 Nil!51868)) (= lambda!198662 lambda!198586))))

(declare-fun bs!1060409 () Bool)

(assert (= bs!1060409 (and d!1474845 b!4652362)))

(assert (=> bs!1060409 (= (= lt!1815831 lt!1815707) (= lambda!198662 lambda!198648))))

(declare-fun bs!1060410 () Bool)

(assert (= bs!1060410 (and d!1474845 b!4652506)))

(assert (=> bs!1060410 (= (= lt!1815831 lt!1815841) (= lambda!198662 lambda!198660))))

(assert (=> bs!1060409 (= (= lt!1815831 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198662 lambda!198647))))

(declare-fun bs!1060412 () Bool)

(assert (= bs!1060412 (and d!1474845 d!1474787)))

(assert (=> bs!1060412 (= (= lt!1815831 lt!1815338) (= lambda!198662 lambda!198651))))

(declare-fun bs!1060414 () Bool)

(assert (= bs!1060414 (and d!1474845 d!1474629)))

(assert (=> bs!1060414 (= (= lt!1815831 lt!1815539) (= lambda!198662 lambda!198623))))

(assert (=> bs!1060410 (= (= lt!1815831 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198662 lambda!198659))))

(declare-fun bs!1060416 () Bool)

(assert (= bs!1060416 (and d!1474845 b!4651862)))

(assert (=> bs!1060416 (= (= lt!1815831 (ListMap!4530 Nil!51868)) (= lambda!198662 lambda!198590))))

(declare-fun bs!1060418 () Bool)

(assert (= bs!1060418 (and d!1474845 d!1474445)))

(assert (=> bs!1060418 (not (= lambda!198662 lambda!198577))))

(declare-fun bs!1060420 () Bool)

(assert (= bs!1060420 (and d!1474845 b!4652363)))

(assert (=> bs!1060420 (= (= lt!1815831 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198662 lambda!198646))))

(assert (=> bs!1060400 (= (= lt!1815831 lt!1815624) (= lambda!198662 lambda!198643))))

(declare-fun bs!1060423 () Bool)

(assert (= bs!1060423 (and d!1474845 b!4651970)))

(assert (=> bs!1060423 (= (= lt!1815831 lt!1815433) (= lambda!198662 lambda!198606))))

(declare-fun bs!1060424 () Bool)

(assert (= bs!1060424 (and d!1474845 b!4651772)))

(assert (=> bs!1060424 (= (= lt!1815831 lt!1815244) (= lambda!198662 lambda!198569))))

(assert (=> bs!1060423 (= (= lt!1815831 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198662 lambda!198605))))

(declare-fun bs!1060426 () Bool)

(assert (= bs!1060426 (and d!1474845 b!4652134)))

(assert (=> bs!1060426 (= (= lt!1815831 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198662 lambda!198617))))

(declare-fun bs!1060428 () Bool)

(assert (= bs!1060428 (and d!1474845 d!1474461)))

(assert (=> bs!1060428 (= (= lt!1815831 lt!1815328) (= lambda!198662 lambda!198588))))

(declare-fun bs!1060430 () Bool)

(assert (= bs!1060430 (and d!1474845 d!1474783)))

(assert (=> bs!1060430 (= (= lt!1815831 lt!1815697) (= lambda!198662 lambda!198649))))

(declare-fun bs!1060432 () Bool)

(assert (= bs!1060432 (and d!1474845 b!4651765)))

(assert (=> bs!1060432 (= (= lt!1815831 lt!1815223) (= lambda!198662 lambda!198564))))

(declare-fun bs!1060434 () Bool)

(assert (= bs!1060434 (and d!1474845 b!4651844)))

(assert (=> bs!1060434 (= (= lt!1815831 lt!1815313) (= lambda!198662 lambda!198582))))

(declare-fun bs!1060435 () Bool)

(assert (= bs!1060435 (and d!1474845 d!1474503)))

(assert (=> bs!1060435 (= (= lt!1815831 lt!1815313) (= lambda!198662 lambda!198603))))

(declare-fun bs!1060436 () Bool)

(assert (= bs!1060436 (and d!1474845 b!4651852)))

(assert (=> bs!1060436 (= (= lt!1815831 (ListMap!4530 Nil!51868)) (= lambda!198662 lambda!198585))))

(declare-fun bs!1060437 () Bool)

(assert (= bs!1060437 (and d!1474845 d!1474391)))

(assert (=> bs!1060437 (= (= lt!1815831 lt!1815213) (= lambda!198662 lambda!198566))))

(declare-fun bs!1060438 () Bool)

(assert (= bs!1060438 (and d!1474845 d!1474365)))

(assert (=> bs!1060438 (not (= lambda!198662 lambda!198476))))

(assert (=> bs!1060426 (= (= lt!1815831 lt!1815549) (= lambda!198662 lambda!198618))))

(declare-fun bs!1060439 () Bool)

(assert (= bs!1060439 (and d!1474845 b!4651845)))

(assert (=> bs!1060439 (= (= lt!1815831 lt!1814962) (= lambda!198662 lambda!198580))))

(declare-fun bs!1060440 () Bool)

(assert (= bs!1060440 (and d!1474845 b!4651766)))

(assert (=> bs!1060440 (= (= lt!1815831 (ListMap!4530 Nil!51868)) (= lambda!198662 lambda!198562))))

(declare-fun bs!1060441 () Bool)

(assert (= bs!1060441 (and d!1474845 d!1474467)))

(assert (=> bs!1060441 (= (= lt!1815831 lt!1815361) (= lambda!198662 lambda!198592))))

(declare-fun bs!1060442 () Bool)

(assert (= bs!1060442 (and d!1474845 b!4651971)))

(assert (=> bs!1060442 (= (= lt!1815831 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198662 lambda!198604))))

(declare-fun bs!1060444 () Bool)

(assert (= bs!1060444 (and d!1474845 b!4652507)))

(assert (=> bs!1060444 (= (= lt!1815831 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198662 lambda!198657))))

(declare-fun bs!1060446 () Bool)

(assert (= bs!1060446 (and d!1474845 d!1474649)))

(assert (=> bs!1060446 (= (= lt!1815831 (ListMap!4530 Nil!51868)) (= lambda!198662 lambda!198632))))

(assert (=> bs!1060432 (= (= lt!1815831 (ListMap!4530 Nil!51868)) (= lambda!198662 lambda!198563))))

(declare-fun bs!1060448 () Bool)

(assert (= bs!1060448 (and d!1474845 b!4652135)))

(assert (=> bs!1060448 (= (= lt!1815831 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198662 lambda!198616))))

(declare-fun bs!1060450 () Bool)

(assert (= bs!1060450 (and d!1474845 b!4651773)))

(assert (=> bs!1060450 (= (= lt!1815831 (ListMap!4530 Nil!51868)) (= lambda!198662 lambda!198567))))

(declare-fun bs!1060452 () Bool)

(assert (= bs!1060452 (and d!1474845 d!1474531)))

(assert (=> bs!1060452 (= (= lt!1815831 lt!1815423) (= lambda!198662 lambda!198607))))

(declare-fun bs!1060454 () Bool)

(assert (= bs!1060454 (and d!1474845 b!4652215)))

(assert (=> bs!1060454 (= (= lt!1815831 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198662 lambda!198635))))

(declare-fun bs!1060456 () Bool)

(assert (= bs!1060456 (and d!1474845 d!1474687)))

(assert (=> bs!1060456 (= (= lt!1815831 lt!1815614) (= lambda!198662 lambda!198644))))

(declare-fun bs!1060457 () Bool)

(assert (= bs!1060457 (and d!1474845 d!1474455)))

(assert (=> bs!1060457 (= (= lt!1815831 lt!1815303) (= lambda!198662 lambda!198583))))

(declare-fun bs!1060459 () Bool)

(assert (= bs!1060459 (and d!1474845 b!4651863)))

(assert (=> bs!1060459 (= (= lt!1815831 (ListMap!4530 Nil!51868)) (= lambda!198662 lambda!198589))))

(assert (=> bs!1060424 (= (= lt!1815831 (ListMap!4530 Nil!51868)) (= lambda!198662 lambda!198568))))

(assert (=> bs!1060434 (= (= lt!1815831 lt!1814962) (= lambda!198662 lambda!198581))))

(declare-fun bs!1060462 () Bool)

(assert (= bs!1060462 (and d!1474845 d!1474425)))

(assert (=> bs!1060462 (= (= lt!1815831 lt!1815234) (= lambda!198662 lambda!198570))))

(assert (=> bs!1060416 (= (= lt!1815831 lt!1815371) (= lambda!198662 lambda!198591))))

(declare-fun bs!1060464 () Bool)

(assert (= bs!1060464 (and d!1474845 d!1474677)))

(assert (=> bs!1060464 (= (= lt!1815831 lt!1815244) (= lambda!198662 lambda!198634))))

(assert (=> bs!1060406 (= (= lt!1815831 lt!1815338) (= lambda!198662 lambda!198587))))

(assert (=> d!1474845 true))

(declare-fun e!2902678 () Bool)

(assert (=> d!1474845 e!2902678))

(declare-fun res!1955718 () Bool)

(assert (=> d!1474845 (=> (not res!1955718) (not e!2902678))))

(assert (=> d!1474845 (= res!1955718 (forall!11004 (t!359100 newBucket!224) lambda!198662))))

(declare-fun e!2902676 () ListMap!4529)

(assert (=> d!1474845 (= lt!1815831 e!2902676)))

(declare-fun c!796303 () Bool)

(assert (=> d!1474845 (= c!796303 ((_ is Nil!51868) (t!359100 newBucket!224)))))

(assert (=> d!1474845 (noDuplicateKeys!1630 (t!359100 newBucket!224))))

(assert (=> d!1474845 (= (addToMapMapFromBucket!1087 (t!359100 newBucket!224) (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) lt!1815831)))

(declare-fun b!4652504 () Bool)

(declare-fun res!1955716 () Bool)

(assert (=> b!4652504 (=> (not res!1955716) (not e!2902678))))

(assert (=> b!4652504 (= res!1955716 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) lambda!198662))))

(declare-fun bm!325056 () Bool)

(declare-fun call!325062 () Bool)

(assert (=> bm!325056 (= call!325062 (forall!11004 (ite c!796303 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (t!359100 (t!359100 newBucket!224))) (ite c!796303 lambda!198657 lambda!198660)))))

(declare-fun bm!325057 () Bool)

(declare-fun call!325063 () Bool)

(assert (=> bm!325057 (= call!325063 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (ite c!796303 lambda!198657 lambda!198660)))))

(declare-fun b!4652505 () Bool)

(assert (=> b!4652505 (= e!2902678 (invariantList!1290 (toList!5191 lt!1815831)))))

(assert (=> b!4652506 (= e!2902676 lt!1815841)))

(declare-fun lt!1815836 () ListMap!4529)

(assert (=> b!4652506 (= lt!1815836 (+!1974 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (h!58004 (t!359100 newBucket!224))))))

(assert (=> b!4652506 (= lt!1815841 (addToMapMapFromBucket!1087 (t!359100 (t!359100 newBucket!224)) (+!1974 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) (h!58004 (t!359100 newBucket!224)))))))

(declare-fun lt!1815834 () Unit!117676)

(declare-fun call!325061 () Unit!117676)

(assert (=> b!4652506 (= lt!1815834 call!325061)))

(assert (=> b!4652506 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) lambda!198659)))

(declare-fun lt!1815844 () Unit!117676)

(assert (=> b!4652506 (= lt!1815844 lt!1815834)))

(assert (=> b!4652506 (forall!11004 (toList!5191 lt!1815836) lambda!198660)))

(declare-fun lt!1815843 () Unit!117676)

(declare-fun Unit!117937 () Unit!117676)

(assert (=> b!4652506 (= lt!1815843 Unit!117937)))

(assert (=> b!4652506 call!325062))

(declare-fun lt!1815835 () Unit!117676)

(declare-fun Unit!117938 () Unit!117676)

(assert (=> b!4652506 (= lt!1815835 Unit!117938)))

(declare-fun lt!1815840 () Unit!117676)

(declare-fun Unit!117939 () Unit!117676)

(assert (=> b!4652506 (= lt!1815840 Unit!117939)))

(declare-fun lt!1815832 () Unit!117676)

(assert (=> b!4652506 (= lt!1815832 (forallContained!3212 (toList!5191 lt!1815836) lambda!198660 (h!58004 (t!359100 newBucket!224))))))

(assert (=> b!4652506 (contains!15011 lt!1815836 (_1!29777 (h!58004 (t!359100 newBucket!224))))))

(declare-fun lt!1815849 () Unit!117676)

(declare-fun Unit!117940 () Unit!117676)

(assert (=> b!4652506 (= lt!1815849 Unit!117940)))

(assert (=> b!4652506 (contains!15011 lt!1815841 (_1!29777 (h!58004 (t!359100 newBucket!224))))))

(declare-fun lt!1815839 () Unit!117676)

(declare-fun Unit!117941 () Unit!117676)

(assert (=> b!4652506 (= lt!1815839 Unit!117941)))

(assert (=> b!4652506 (forall!11004 (t!359100 newBucket!224) lambda!198660)))

(declare-fun lt!1815845 () Unit!117676)

(declare-fun Unit!117942 () Unit!117676)

(assert (=> b!4652506 (= lt!1815845 Unit!117942)))

(assert (=> b!4652506 (forall!11004 (toList!5191 lt!1815836) lambda!198660)))

(declare-fun lt!1815842 () Unit!117676)

(declare-fun Unit!117943 () Unit!117676)

(assert (=> b!4652506 (= lt!1815842 Unit!117943)))

(declare-fun lt!1815851 () Unit!117676)

(declare-fun Unit!117944 () Unit!117676)

(assert (=> b!4652506 (= lt!1815851 Unit!117944)))

(declare-fun lt!1815833 () Unit!117676)

(assert (=> b!4652506 (= lt!1815833 (addForallContainsKeyThenBeforeAdding!589 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815841 (_1!29777 (h!58004 (t!359100 newBucket!224))) (_2!29777 (h!58004 (t!359100 newBucket!224)))))))

(assert (=> b!4652506 call!325063))

(declare-fun lt!1815838 () Unit!117676)

(assert (=> b!4652506 (= lt!1815838 lt!1815833)))

(assert (=> b!4652506 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) lambda!198660)))

(declare-fun lt!1815847 () Unit!117676)

(declare-fun Unit!117945 () Unit!117676)

(assert (=> b!4652506 (= lt!1815847 Unit!117945)))

(declare-fun res!1955717 () Bool)

(assert (=> b!4652506 (= res!1955717 (forall!11004 (t!359100 newBucket!224) lambda!198660))))

(declare-fun e!2902677 () Bool)

(assert (=> b!4652506 (=> (not res!1955717) (not e!2902677))))

(assert (=> b!4652506 e!2902677))

(declare-fun lt!1815837 () Unit!117676)

(declare-fun Unit!117946 () Unit!117676)

(assert (=> b!4652506 (= lt!1815837 Unit!117946)))

(assert (=> b!4652507 (= e!2902676 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)))))

(declare-fun lt!1815850 () Unit!117676)

(assert (=> b!4652507 (= lt!1815850 call!325061)))

(assert (=> b!4652507 call!325063))

(declare-fun lt!1815848 () Unit!117676)

(assert (=> b!4652507 (= lt!1815848 lt!1815850)))

(assert (=> b!4652507 call!325062))

(declare-fun lt!1815846 () Unit!117676)

(declare-fun Unit!117947 () Unit!117676)

(assert (=> b!4652507 (= lt!1815846 Unit!117947)))

(declare-fun bm!325058 () Bool)

(assert (=> bm!325058 (= call!325061 (lemmaContainsAllItsOwnKeys!590 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))))))

(declare-fun b!4652508 () Bool)

(assert (=> b!4652508 (= e!2902677 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) lambda!198660))))

(assert (= (and d!1474845 c!796303) b!4652507))

(assert (= (and d!1474845 (not c!796303)) b!4652506))

(assert (= (and b!4652506 res!1955717) b!4652508))

(assert (= (or b!4652507 b!4652506) bm!325058))

(assert (= (or b!4652507 b!4652506) bm!325056))

(assert (= (or b!4652507 b!4652506) bm!325057))

(assert (= (and d!1474845 res!1955718) b!4652504))

(assert (= (and b!4652504 res!1955716) b!4652505))

(declare-fun m!5528991 () Bool)

(assert (=> b!4652508 m!5528991))

(declare-fun m!5528993 () Bool)

(assert (=> b!4652505 m!5528993))

(declare-fun m!5528995 () Bool)

(assert (=> b!4652504 m!5528995))

(assert (=> bm!325058 m!5527275))

(declare-fun m!5528997 () Bool)

(assert (=> bm!325058 m!5528997))

(declare-fun m!5528999 () Bool)

(assert (=> bm!325056 m!5528999))

(declare-fun m!5529001 () Bool)

(assert (=> d!1474845 m!5529001))

(assert (=> d!1474845 m!5527423))

(declare-fun m!5529003 () Bool)

(assert (=> bm!325057 m!5529003))

(declare-fun m!5529005 () Bool)

(assert (=> b!4652506 m!5529005))

(declare-fun m!5529007 () Bool)

(assert (=> b!4652506 m!5529007))

(assert (=> b!4652506 m!5529007))

(declare-fun m!5529009 () Bool)

(assert (=> b!4652506 m!5529009))

(declare-fun m!5529011 () Bool)

(assert (=> b!4652506 m!5529011))

(assert (=> b!4652506 m!5528991))

(declare-fun m!5529013 () Bool)

(assert (=> b!4652506 m!5529013))

(declare-fun m!5529015 () Bool)

(assert (=> b!4652506 m!5529015))

(assert (=> b!4652506 m!5529013))

(assert (=> b!4652506 m!5527275))

(assert (=> b!4652506 m!5529009))

(declare-fun m!5529017 () Bool)

(assert (=> b!4652506 m!5529017))

(assert (=> b!4652506 m!5527275))

(declare-fun m!5529019 () Bool)

(assert (=> b!4652506 m!5529019))

(declare-fun m!5529021 () Bool)

(assert (=> b!4652506 m!5529021))

(assert (=> b!4651765 d!1474845))

(declare-fun d!1474871 () Bool)

(declare-fun e!2902708 () Bool)

(assert (=> d!1474871 e!2902708))

(declare-fun res!1955743 () Bool)

(assert (=> d!1474871 (=> (not res!1955743) (not e!2902708))))

(declare-fun lt!1815897 () ListMap!4529)

(assert (=> d!1474871 (= res!1955743 (contains!15011 lt!1815897 (_1!29777 (h!58004 newBucket!224))))))

(declare-fun lt!1815898 () List!51992)

(assert (=> d!1474871 (= lt!1815897 (ListMap!4530 lt!1815898))))

(declare-fun lt!1815895 () Unit!117676)

(declare-fun lt!1815896 () Unit!117676)

(assert (=> d!1474871 (= lt!1815895 lt!1815896)))

(assert (=> d!1474871 (= (getValueByKey!1600 lt!1815898 (_1!29777 (h!58004 newBucket!224))) (Some!11811 (_2!29777 (h!58004 newBucket!224))))))

(assert (=> d!1474871 (= lt!1815896 (lemmaContainsTupThenGetReturnValue!918 lt!1815898 (_1!29777 (h!58004 newBucket!224)) (_2!29777 (h!58004 newBucket!224))))))

(assert (=> d!1474871 (= lt!1815898 (insertNoDuplicatedKeys!426 (toList!5191 (ListMap!4530 Nil!51868)) (_1!29777 (h!58004 newBucket!224)) (_2!29777 (h!58004 newBucket!224))))))

(assert (=> d!1474871 (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224)) lt!1815897)))

(declare-fun b!4652547 () Bool)

(declare-fun res!1955744 () Bool)

(assert (=> b!4652547 (=> (not res!1955744) (not e!2902708))))

(assert (=> b!4652547 (= res!1955744 (= (getValueByKey!1600 (toList!5191 lt!1815897) (_1!29777 (h!58004 newBucket!224))) (Some!11811 (_2!29777 (h!58004 newBucket!224)))))))

(declare-fun b!4652548 () Bool)

(assert (=> b!4652548 (= e!2902708 (contains!15015 (toList!5191 lt!1815897) (h!58004 newBucket!224)))))

(assert (= (and d!1474871 res!1955743) b!4652547))

(assert (= (and b!4652547 res!1955744) b!4652548))

(declare-fun m!5529023 () Bool)

(assert (=> d!1474871 m!5529023))

(declare-fun m!5529025 () Bool)

(assert (=> d!1474871 m!5529025))

(declare-fun m!5529027 () Bool)

(assert (=> d!1474871 m!5529027))

(declare-fun m!5529029 () Bool)

(assert (=> d!1474871 m!5529029))

(declare-fun m!5529031 () Bool)

(assert (=> b!4652547 m!5529031))

(declare-fun m!5529033 () Bool)

(assert (=> b!4652548 m!5529033))

(assert (=> b!4651765 d!1474871))

(declare-fun d!1474873 () Bool)

(declare-fun res!1955745 () Bool)

(declare-fun e!2902709 () Bool)

(assert (=> d!1474873 (=> res!1955745 e!2902709)))

(assert (=> d!1474873 (= res!1955745 ((_ is Nil!51868) (toList!5191 (ListMap!4530 Nil!51868))))))

(assert (=> d!1474873 (= (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) (ite c!796149 lambda!198562 lambda!198564)) e!2902709)))

(declare-fun b!4652549 () Bool)

(declare-fun e!2902710 () Bool)

(assert (=> b!4652549 (= e!2902709 e!2902710)))

(declare-fun res!1955746 () Bool)

(assert (=> b!4652549 (=> (not res!1955746) (not e!2902710))))

(assert (=> b!4652549 (= res!1955746 (dynLambda!21575 (ite c!796149 lambda!198562 lambda!198564) (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))))))

(declare-fun b!4652550 () Bool)

(assert (=> b!4652550 (= e!2902710 (forall!11004 (t!359100 (toList!5191 (ListMap!4530 Nil!51868))) (ite c!796149 lambda!198562 lambda!198564)))))

(assert (= (and d!1474873 (not res!1955745)) b!4652549))

(assert (= (and b!4652549 res!1955746) b!4652550))

(declare-fun b_lambda!173149 () Bool)

(assert (=> (not b_lambda!173149) (not b!4652549)))

(declare-fun m!5529035 () Bool)

(assert (=> b!4652549 m!5529035))

(declare-fun m!5529037 () Bool)

(assert (=> b!4652550 m!5529037))

(assert (=> bm!324972 d!1474873))

(declare-fun d!1474875 () Bool)

(assert (not d!1474875))

(assert (=> b!4651847 d!1474875))

(declare-fun d!1474877 () Bool)

(assert (not d!1474877))

(assert (=> b!4651847 d!1474877))

(assert (=> bm!324973 d!1474649))

(declare-fun d!1474879 () Bool)

(declare-fun res!1955751 () Bool)

(declare-fun e!2902715 () Bool)

(assert (=> d!1474879 (=> res!1955751 e!2902715)))

(assert (=> d!1474879 (= res!1955751 (and ((_ is Cons!51869) (toList!5192 lt!1814960)) (= (_1!29778 (h!58005 (toList!5192 lt!1814960))) lt!1814958)))))

(assert (=> d!1474879 (= (containsKey!2704 (toList!5192 lt!1814960) lt!1814958) e!2902715)))

(declare-fun b!4652555 () Bool)

(declare-fun e!2902716 () Bool)

(assert (=> b!4652555 (= e!2902715 e!2902716)))

(declare-fun res!1955752 () Bool)

(assert (=> b!4652555 (=> (not res!1955752) (not e!2902716))))

(assert (=> b!4652555 (= res!1955752 (and (or (not ((_ is Cons!51869) (toList!5192 lt!1814960))) (bvsle (_1!29778 (h!58005 (toList!5192 lt!1814960))) lt!1814958)) ((_ is Cons!51869) (toList!5192 lt!1814960)) (bvslt (_1!29778 (h!58005 (toList!5192 lt!1814960))) lt!1814958)))))

(declare-fun b!4652556 () Bool)

(assert (=> b!4652556 (= e!2902716 (containsKey!2704 (t!359101 (toList!5192 lt!1814960)) lt!1814958))))

(assert (= (and d!1474879 (not res!1955751)) b!4652555))

(assert (= (and b!4652555 res!1955752) b!4652556))

(declare-fun m!5529039 () Bool)

(assert (=> b!4652556 m!5529039))

(assert (=> d!1474385 d!1474879))

(declare-fun b!4652557 () Bool)

(declare-fun e!2902718 () Unit!117676)

(declare-fun Unit!117948 () Unit!117676)

(assert (=> b!4652557 (= e!2902718 Unit!117948)))

(declare-fun b!4652558 () Bool)

(declare-fun e!2902717 () Unit!117676)

(assert (=> b!4652558 (= e!2902717 e!2902718)))

(declare-fun c!796312 () Bool)

(declare-fun call!325069 () Bool)

(assert (=> b!4652558 (= c!796312 call!325069)))

(declare-fun b!4652559 () Bool)

(declare-fun lt!1815902 () Unit!117676)

(assert (=> b!4652559 (= e!2902717 lt!1815902)))

(declare-fun lt!1815903 () Unit!117676)

(assert (=> b!4652559 (= lt!1815903 (lemmaContainsKeyImpliesGetValueByKeyDefined!1502 (toList!5191 lt!1815371) (_1!29777 (h!58004 oldBucket!40))))))

(assert (=> b!4652559 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815371) (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun lt!1815904 () Unit!117676)

(assert (=> b!4652559 (= lt!1815904 lt!1815903)))

(assert (=> b!4652559 (= lt!1815902 (lemmaInListThenGetKeysListContains!736 (toList!5191 lt!1815371) (_1!29777 (h!58004 oldBucket!40))))))

(assert (=> b!4652559 call!325069))

(declare-fun b!4652560 () Bool)

(declare-fun e!2902721 () List!51995)

(assert (=> b!4652560 (= e!2902721 (keys!18366 lt!1815371))))

(declare-fun b!4652561 () Bool)

(assert (=> b!4652561 (= e!2902721 (getKeysList!741 (toList!5191 lt!1815371)))))

(declare-fun d!1474881 () Bool)

(declare-fun e!2902722 () Bool)

(assert (=> d!1474881 e!2902722))

(declare-fun res!1955755 () Bool)

(assert (=> d!1474881 (=> res!1955755 e!2902722)))

(declare-fun e!2902720 () Bool)

(assert (=> d!1474881 (= res!1955755 e!2902720)))

(declare-fun res!1955753 () Bool)

(assert (=> d!1474881 (=> (not res!1955753) (not e!2902720))))

(declare-fun lt!1815905 () Bool)

(assert (=> d!1474881 (= res!1955753 (not lt!1815905))))

(declare-fun lt!1815900 () Bool)

(assert (=> d!1474881 (= lt!1815905 lt!1815900)))

(declare-fun lt!1815906 () Unit!117676)

(assert (=> d!1474881 (= lt!1815906 e!2902717)))

(declare-fun c!796311 () Bool)

(assert (=> d!1474881 (= c!796311 lt!1815900)))

(assert (=> d!1474881 (= lt!1815900 (containsKey!2706 (toList!5191 lt!1815371) (_1!29777 (h!58004 oldBucket!40))))))

(assert (=> d!1474881 (= (contains!15011 lt!1815371 (_1!29777 (h!58004 oldBucket!40))) lt!1815905)))

(declare-fun b!4652562 () Bool)

(assert (=> b!4652562 (= e!2902720 (not (contains!15013 (keys!18366 lt!1815371) (_1!29777 (h!58004 oldBucket!40)))))))

(declare-fun b!4652563 () Bool)

(declare-fun e!2902719 () Bool)

(assert (=> b!4652563 (= e!2902722 e!2902719)))

(declare-fun res!1955754 () Bool)

(assert (=> b!4652563 (=> (not res!1955754) (not e!2902719))))

(assert (=> b!4652563 (= res!1955754 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815371) (_1!29777 (h!58004 oldBucket!40)))))))

(declare-fun b!4652564 () Bool)

(assert (=> b!4652564 (= e!2902719 (contains!15013 (keys!18366 lt!1815371) (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun b!4652565 () Bool)

(assert (=> b!4652565 false))

(declare-fun lt!1815899 () Unit!117676)

(declare-fun lt!1815901 () Unit!117676)

(assert (=> b!4652565 (= lt!1815899 lt!1815901)))

(assert (=> b!4652565 (containsKey!2706 (toList!5191 lt!1815371) (_1!29777 (h!58004 oldBucket!40)))))

(assert (=> b!4652565 (= lt!1815901 (lemmaInGetKeysListThenContainsKey!740 (toList!5191 lt!1815371) (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun Unit!117949 () Unit!117676)

(assert (=> b!4652565 (= e!2902718 Unit!117949)))

(declare-fun bm!325064 () Bool)

(assert (=> bm!325064 (= call!325069 (contains!15013 e!2902721 (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun c!796313 () Bool)

(assert (=> bm!325064 (= c!796313 c!796311)))

(assert (= (and d!1474881 c!796311) b!4652559))

(assert (= (and d!1474881 (not c!796311)) b!4652558))

(assert (= (and b!4652558 c!796312) b!4652565))

(assert (= (and b!4652558 (not c!796312)) b!4652557))

(assert (= (or b!4652559 b!4652558) bm!325064))

(assert (= (and bm!325064 c!796313) b!4652561))

(assert (= (and bm!325064 (not c!796313)) b!4652560))

(assert (= (and d!1474881 res!1955753) b!4652562))

(assert (= (and d!1474881 (not res!1955755)) b!4652563))

(assert (= (and b!4652563 res!1955754) b!4652564))

(declare-fun m!5529041 () Bool)

(assert (=> d!1474881 m!5529041))

(declare-fun m!5529043 () Bool)

(assert (=> b!4652564 m!5529043))

(assert (=> b!4652564 m!5529043))

(declare-fun m!5529045 () Bool)

(assert (=> b!4652564 m!5529045))

(declare-fun m!5529047 () Bool)

(assert (=> b!4652563 m!5529047))

(assert (=> b!4652563 m!5529047))

(declare-fun m!5529049 () Bool)

(assert (=> b!4652563 m!5529049))

(declare-fun m!5529051 () Bool)

(assert (=> bm!325064 m!5529051))

(declare-fun m!5529053 () Bool)

(assert (=> b!4652559 m!5529053))

(assert (=> b!4652559 m!5529047))

(assert (=> b!4652559 m!5529047))

(assert (=> b!4652559 m!5529049))

(declare-fun m!5529055 () Bool)

(assert (=> b!4652559 m!5529055))

(assert (=> b!4652562 m!5529043))

(assert (=> b!4652562 m!5529043))

(assert (=> b!4652562 m!5529045))

(assert (=> b!4652560 m!5529043))

(assert (=> b!4652565 m!5529041))

(declare-fun m!5529057 () Bool)

(assert (=> b!4652565 m!5529057))

(declare-fun m!5529059 () Bool)

(assert (=> b!4652561 m!5529059))

(assert (=> b!4651862 d!1474881))

(declare-fun d!1474883 () Bool)

(declare-fun e!2902723 () Bool)

(assert (=> d!1474883 e!2902723))

(declare-fun res!1955756 () Bool)

(assert (=> d!1474883 (=> (not res!1955756) (not e!2902723))))

(declare-fun lt!1815909 () ListMap!4529)

(assert (=> d!1474883 (= res!1955756 (contains!15011 lt!1815909 (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun lt!1815910 () List!51992)

(assert (=> d!1474883 (= lt!1815909 (ListMap!4530 lt!1815910))))

(declare-fun lt!1815907 () Unit!117676)

(declare-fun lt!1815908 () Unit!117676)

(assert (=> d!1474883 (= lt!1815907 lt!1815908)))

(assert (=> d!1474883 (= (getValueByKey!1600 lt!1815910 (_1!29777 (h!58004 oldBucket!40))) (Some!11811 (_2!29777 (h!58004 oldBucket!40))))))

(assert (=> d!1474883 (= lt!1815908 (lemmaContainsTupThenGetReturnValue!918 lt!1815910 (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))))))

(assert (=> d!1474883 (= lt!1815910 (insertNoDuplicatedKeys!426 (toList!5191 (ListMap!4530 Nil!51868)) (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))))))

(assert (=> d!1474883 (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815909)))

(declare-fun b!4652566 () Bool)

(declare-fun res!1955757 () Bool)

(assert (=> b!4652566 (=> (not res!1955757) (not e!2902723))))

(assert (=> b!4652566 (= res!1955757 (= (getValueByKey!1600 (toList!5191 lt!1815909) (_1!29777 (h!58004 oldBucket!40))) (Some!11811 (_2!29777 (h!58004 oldBucket!40)))))))

(declare-fun b!4652567 () Bool)

(assert (=> b!4652567 (= e!2902723 (contains!15015 (toList!5191 lt!1815909) (h!58004 oldBucket!40)))))

(assert (= (and d!1474883 res!1955756) b!4652566))

(assert (= (and b!4652566 res!1955757) b!4652567))

(declare-fun m!5529061 () Bool)

(assert (=> d!1474883 m!5529061))

(declare-fun m!5529063 () Bool)

(assert (=> d!1474883 m!5529063))

(declare-fun m!5529065 () Bool)

(assert (=> d!1474883 m!5529065))

(declare-fun m!5529067 () Bool)

(assert (=> d!1474883 m!5529067))

(declare-fun m!5529069 () Bool)

(assert (=> b!4652566 m!5529069))

(declare-fun m!5529071 () Bool)

(assert (=> b!4652567 m!5529071))

(assert (=> b!4651862 d!1474883))

(declare-fun d!1474885 () Bool)

(assert (=> d!1474885 (dynLambda!21575 lambda!198591 (h!58004 oldBucket!40))))

(declare-fun lt!1815911 () Unit!117676)

(assert (=> d!1474885 (= lt!1815911 (choose!31949 (toList!5191 lt!1815366) lambda!198591 (h!58004 oldBucket!40)))))

(declare-fun e!2902724 () Bool)

(assert (=> d!1474885 e!2902724))

(declare-fun res!1955758 () Bool)

(assert (=> d!1474885 (=> (not res!1955758) (not e!2902724))))

(assert (=> d!1474885 (= res!1955758 (forall!11004 (toList!5191 lt!1815366) lambda!198591))))

(assert (=> d!1474885 (= (forallContained!3212 (toList!5191 lt!1815366) lambda!198591 (h!58004 oldBucket!40)) lt!1815911)))

(declare-fun b!4652568 () Bool)

(assert (=> b!4652568 (= e!2902724 (contains!15015 (toList!5191 lt!1815366) (h!58004 oldBucket!40)))))

(assert (= (and d!1474885 res!1955758) b!4652568))

(declare-fun b_lambda!173151 () Bool)

(assert (=> (not b_lambda!173151) (not d!1474885)))

(declare-fun m!5529091 () Bool)

(assert (=> d!1474885 m!5529091))

(declare-fun m!5529093 () Bool)

(assert (=> d!1474885 m!5529093))

(assert (=> d!1474885 m!5527549))

(declare-fun m!5529097 () Bool)

(assert (=> b!4652568 m!5529097))

(assert (=> b!4651862 d!1474885))

(declare-fun bs!1060518 () Bool)

(declare-fun d!1474887 () Bool)

(assert (= bs!1060518 (and d!1474887 b!4652214)))

(declare-fun lambda!198666 () Int)

(assert (=> bs!1060518 (= (= lt!1815371 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198666 lambda!198641))))

(declare-fun bs!1060519 () Bool)

(assert (= bs!1060519 (and d!1474887 d!1474815)))

(assert (=> bs!1060519 (= (= lt!1815371 lt!1815223) (= lambda!198666 lambda!198656))))

(declare-fun bs!1060520 () Bool)

(assert (= bs!1060520 (and d!1474887 d!1474663)))

(assert (=> bs!1060520 (= (= lt!1815371 lt!1814962) (= lambda!198666 lambda!198633))))

(declare-fun bs!1060521 () Bool)

(assert (= bs!1060521 (and d!1474887 b!4651851)))

(assert (=> bs!1060521 (= (= lt!1815371 (ListMap!4530 Nil!51868)) (= lambda!198666 lambda!198586))))

(declare-fun bs!1060522 () Bool)

(assert (= bs!1060522 (and d!1474887 b!4652362)))

(assert (=> bs!1060522 (= (= lt!1815371 lt!1815707) (= lambda!198666 lambda!198648))))

(declare-fun bs!1060523 () Bool)

(assert (= bs!1060523 (and d!1474887 b!4652506)))

(assert (=> bs!1060523 (= (= lt!1815371 lt!1815841) (= lambda!198666 lambda!198660))))

(assert (=> bs!1060522 (= (= lt!1815371 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198666 lambda!198647))))

(declare-fun bs!1060524 () Bool)

(assert (= bs!1060524 (and d!1474887 d!1474787)))

(assert (=> bs!1060524 (= (= lt!1815371 lt!1815338) (= lambda!198666 lambda!198651))))

(declare-fun bs!1060525 () Bool)

(assert (= bs!1060525 (and d!1474887 d!1474629)))

(assert (=> bs!1060525 (= (= lt!1815371 lt!1815539) (= lambda!198666 lambda!198623))))

(assert (=> bs!1060523 (= (= lt!1815371 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198666 lambda!198659))))

(declare-fun bs!1060526 () Bool)

(assert (= bs!1060526 (and d!1474887 d!1474445)))

(assert (=> bs!1060526 (not (= lambda!198666 lambda!198577))))

(declare-fun bs!1060527 () Bool)

(assert (= bs!1060527 (and d!1474887 b!4652363)))

(assert (=> bs!1060527 (= (= lt!1815371 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198666 lambda!198646))))

(assert (=> bs!1060518 (= (= lt!1815371 lt!1815624) (= lambda!198666 lambda!198643))))

(declare-fun bs!1060528 () Bool)

(assert (= bs!1060528 (and d!1474887 b!4651970)))

(assert (=> bs!1060528 (= (= lt!1815371 lt!1815433) (= lambda!198666 lambda!198606))))

(declare-fun bs!1060529 () Bool)

(assert (= bs!1060529 (and d!1474887 b!4651772)))

(assert (=> bs!1060529 (= (= lt!1815371 lt!1815244) (= lambda!198666 lambda!198569))))

(assert (=> bs!1060528 (= (= lt!1815371 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198666 lambda!198605))))

(declare-fun bs!1060530 () Bool)

(assert (= bs!1060530 (and d!1474887 b!4652134)))

(assert (=> bs!1060530 (= (= lt!1815371 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198666 lambda!198617))))

(declare-fun bs!1060531 () Bool)

(assert (= bs!1060531 (and d!1474887 d!1474461)))

(assert (=> bs!1060531 (= (= lt!1815371 lt!1815328) (= lambda!198666 lambda!198588))))

(declare-fun bs!1060532 () Bool)

(assert (= bs!1060532 (and d!1474887 d!1474783)))

(assert (=> bs!1060532 (= (= lt!1815371 lt!1815697) (= lambda!198666 lambda!198649))))

(declare-fun bs!1060533 () Bool)

(assert (= bs!1060533 (and d!1474887 b!4651765)))

(assert (=> bs!1060533 (= (= lt!1815371 lt!1815223) (= lambda!198666 lambda!198564))))

(declare-fun bs!1060534 () Bool)

(assert (= bs!1060534 (and d!1474887 b!4651844)))

(assert (=> bs!1060534 (= (= lt!1815371 lt!1815313) (= lambda!198666 lambda!198582))))

(declare-fun bs!1060535 () Bool)

(assert (= bs!1060535 (and d!1474887 d!1474503)))

(assert (=> bs!1060535 (= (= lt!1815371 lt!1815313) (= lambda!198666 lambda!198603))))

(declare-fun bs!1060536 () Bool)

(assert (= bs!1060536 (and d!1474887 b!4651852)))

(assert (=> bs!1060536 (= (= lt!1815371 (ListMap!4530 Nil!51868)) (= lambda!198666 lambda!198585))))

(declare-fun bs!1060537 () Bool)

(assert (= bs!1060537 (and d!1474887 d!1474391)))

(assert (=> bs!1060537 (= (= lt!1815371 lt!1815213) (= lambda!198666 lambda!198566))))

(declare-fun bs!1060538 () Bool)

(assert (= bs!1060538 (and d!1474887 d!1474365)))

(assert (=> bs!1060538 (not (= lambda!198666 lambda!198476))))

(assert (=> bs!1060530 (= (= lt!1815371 lt!1815549) (= lambda!198666 lambda!198618))))

(declare-fun bs!1060539 () Bool)

(assert (= bs!1060539 (and d!1474887 b!4651845)))

(assert (=> bs!1060539 (= (= lt!1815371 lt!1814962) (= lambda!198666 lambda!198580))))

(declare-fun bs!1060540 () Bool)

(assert (= bs!1060540 (and d!1474887 b!4651766)))

(assert (=> bs!1060540 (= (= lt!1815371 (ListMap!4530 Nil!51868)) (= lambda!198666 lambda!198562))))

(declare-fun bs!1060541 () Bool)

(assert (= bs!1060541 (and d!1474887 d!1474467)))

(assert (=> bs!1060541 (= (= lt!1815371 lt!1815361) (= lambda!198666 lambda!198592))))

(declare-fun bs!1060542 () Bool)

(assert (= bs!1060542 (and d!1474887 b!4651971)))

(assert (=> bs!1060542 (= (= lt!1815371 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198666 lambda!198604))))

(declare-fun bs!1060543 () Bool)

(assert (= bs!1060543 (and d!1474887 b!4652507)))

(assert (=> bs!1060543 (= (= lt!1815371 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198666 lambda!198657))))

(declare-fun bs!1060544 () Bool)

(assert (= bs!1060544 (and d!1474887 d!1474649)))

(assert (=> bs!1060544 (= (= lt!1815371 (ListMap!4530 Nil!51868)) (= lambda!198666 lambda!198632))))

(assert (=> bs!1060533 (= (= lt!1815371 (ListMap!4530 Nil!51868)) (= lambda!198666 lambda!198563))))

(declare-fun bs!1060545 () Bool)

(assert (= bs!1060545 (and d!1474887 b!4652135)))

(assert (=> bs!1060545 (= (= lt!1815371 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198666 lambda!198616))))

(declare-fun bs!1060546 () Bool)

(assert (= bs!1060546 (and d!1474887 b!4651773)))

(assert (=> bs!1060546 (= (= lt!1815371 (ListMap!4530 Nil!51868)) (= lambda!198666 lambda!198567))))

(declare-fun bs!1060547 () Bool)

(assert (= bs!1060547 (and d!1474887 d!1474531)))

(assert (=> bs!1060547 (= (= lt!1815371 lt!1815423) (= lambda!198666 lambda!198607))))

(declare-fun bs!1060548 () Bool)

(assert (= bs!1060548 (and d!1474887 b!4652215)))

(assert (=> bs!1060548 (= (= lt!1815371 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198666 lambda!198635))))

(declare-fun bs!1060549 () Bool)

(assert (= bs!1060549 (and d!1474887 d!1474687)))

(assert (=> bs!1060549 (= (= lt!1815371 lt!1815614) (= lambda!198666 lambda!198644))))

(declare-fun bs!1060550 () Bool)

(assert (= bs!1060550 (and d!1474887 d!1474455)))

(assert (=> bs!1060550 (= (= lt!1815371 lt!1815303) (= lambda!198666 lambda!198583))))

(declare-fun bs!1060552 () Bool)

(assert (= bs!1060552 (and d!1474887 b!4651863)))

(assert (=> bs!1060552 (= (= lt!1815371 (ListMap!4530 Nil!51868)) (= lambda!198666 lambda!198589))))

(assert (=> bs!1060529 (= (= lt!1815371 (ListMap!4530 Nil!51868)) (= lambda!198666 lambda!198568))))

(assert (=> bs!1060534 (= (= lt!1815371 lt!1814962) (= lambda!198666 lambda!198581))))

(declare-fun bs!1060555 () Bool)

(assert (= bs!1060555 (and d!1474887 b!4651862)))

(assert (=> bs!1060555 (= (= lt!1815371 (ListMap!4530 Nil!51868)) (= lambda!198666 lambda!198590))))

(declare-fun bs!1060557 () Bool)

(assert (= bs!1060557 (and d!1474887 d!1474845)))

(assert (=> bs!1060557 (= (= lt!1815371 lt!1815831) (= lambda!198666 lambda!198662))))

(declare-fun bs!1060559 () Bool)

(assert (= bs!1060559 (and d!1474887 d!1474425)))

(assert (=> bs!1060559 (= (= lt!1815371 lt!1815234) (= lambda!198666 lambda!198570))))

(assert (=> bs!1060555 (= lambda!198666 lambda!198591)))

(declare-fun bs!1060561 () Bool)

(assert (= bs!1060561 (and d!1474887 d!1474677)))

(assert (=> bs!1060561 (= (= lt!1815371 lt!1815244) (= lambda!198666 lambda!198634))))

(assert (=> bs!1060521 (= (= lt!1815371 lt!1815338) (= lambda!198666 lambda!198587))))

(assert (=> d!1474887 true))

(assert (=> d!1474887 (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198666)))

(declare-fun lt!1815912 () Unit!117676)

(assert (=> d!1474887 (= lt!1815912 (choose!31945 (ListMap!4530 Nil!51868) lt!1815371 (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))))))

(assert (=> d!1474887 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (tuple2!52967 (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))))) lambda!198666)))

(assert (=> d!1474887 (= (addForallContainsKeyThenBeforeAdding!589 (ListMap!4530 Nil!51868) lt!1815371 (_1!29777 (h!58004 oldBucket!40)) (_2!29777 (h!58004 oldBucket!40))) lt!1815912)))

(declare-fun bs!1060570 () Bool)

(assert (= bs!1060570 d!1474887))

(declare-fun m!5529159 () Bool)

(assert (=> bs!1060570 m!5529159))

(declare-fun m!5529161 () Bool)

(assert (=> bs!1060570 m!5529161))

(declare-fun m!5529163 () Bool)

(assert (=> bs!1060570 m!5529163))

(declare-fun m!5529165 () Bool)

(assert (=> bs!1060570 m!5529165))

(assert (=> b!4651862 d!1474887))

(assert (=> b!4651862 d!1474481))

(declare-fun d!1474899 () Bool)

(declare-fun res!1955767 () Bool)

(declare-fun e!2902739 () Bool)

(assert (=> d!1474899 (=> res!1955767 e!2902739)))

(assert (=> d!1474899 (= res!1955767 ((_ is Nil!51868) (toList!5191 (ListMap!4530 Nil!51868))))))

(assert (=> d!1474899 (= (forall!11004 (toList!5191 (ListMap!4530 Nil!51868)) lambda!198590) e!2902739)))

(declare-fun b!4652589 () Bool)

(declare-fun e!2902740 () Bool)

(assert (=> b!4652589 (= e!2902739 e!2902740)))

(declare-fun res!1955768 () Bool)

(assert (=> b!4652589 (=> (not res!1955768) (not e!2902740))))

(assert (=> b!4652589 (= res!1955768 (dynLambda!21575 lambda!198590 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))))))

(declare-fun b!4652590 () Bool)

(assert (=> b!4652590 (= e!2902740 (forall!11004 (t!359100 (toList!5191 (ListMap!4530 Nil!51868))) lambda!198590))))

(assert (= (and d!1474899 (not res!1955767)) b!4652589))

(assert (= (and b!4652589 res!1955768) b!4652590))

(declare-fun b_lambda!173155 () Bool)

(assert (=> (not b_lambda!173155) (not b!4652589)))

(declare-fun m!5529167 () Bool)

(assert (=> b!4652589 m!5529167))

(declare-fun m!5529169 () Bool)

(assert (=> b!4652590 m!5529169))

(assert (=> b!4651862 d!1474899))

(declare-fun b!4652591 () Bool)

(declare-fun e!2902742 () Unit!117676)

(declare-fun Unit!117950 () Unit!117676)

(assert (=> b!4652591 (= e!2902742 Unit!117950)))

(declare-fun b!4652592 () Bool)

(declare-fun e!2902741 () Unit!117676)

(assert (=> b!4652592 (= e!2902741 e!2902742)))

(declare-fun c!796321 () Bool)

(declare-fun call!325072 () Bool)

(assert (=> b!4652592 (= c!796321 call!325072)))

(declare-fun b!4652593 () Bool)

(declare-fun lt!1815933 () Unit!117676)

(assert (=> b!4652593 (= e!2902741 lt!1815933)))

(declare-fun lt!1815934 () Unit!117676)

(assert (=> b!4652593 (= lt!1815934 (lemmaContainsKeyImpliesGetValueByKeyDefined!1502 (toList!5191 lt!1815366) (_1!29777 (h!58004 oldBucket!40))))))

(assert (=> b!4652593 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815366) (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun lt!1815935 () Unit!117676)

(assert (=> b!4652593 (= lt!1815935 lt!1815934)))

(assert (=> b!4652593 (= lt!1815933 (lemmaInListThenGetKeysListContains!736 (toList!5191 lt!1815366) (_1!29777 (h!58004 oldBucket!40))))))

(assert (=> b!4652593 call!325072))

(declare-fun b!4652594 () Bool)

(declare-fun e!2902745 () List!51995)

(assert (=> b!4652594 (= e!2902745 (keys!18366 lt!1815366))))

(declare-fun b!4652595 () Bool)

(assert (=> b!4652595 (= e!2902745 (getKeysList!741 (toList!5191 lt!1815366)))))

(declare-fun d!1474901 () Bool)

(declare-fun e!2902746 () Bool)

(assert (=> d!1474901 e!2902746))

(declare-fun res!1955771 () Bool)

(assert (=> d!1474901 (=> res!1955771 e!2902746)))

(declare-fun e!2902744 () Bool)

(assert (=> d!1474901 (= res!1955771 e!2902744)))

(declare-fun res!1955769 () Bool)

(assert (=> d!1474901 (=> (not res!1955769) (not e!2902744))))

(declare-fun lt!1815936 () Bool)

(assert (=> d!1474901 (= res!1955769 (not lt!1815936))))

(declare-fun lt!1815931 () Bool)

(assert (=> d!1474901 (= lt!1815936 lt!1815931)))

(declare-fun lt!1815937 () Unit!117676)

(assert (=> d!1474901 (= lt!1815937 e!2902741)))

(declare-fun c!796320 () Bool)

(assert (=> d!1474901 (= c!796320 lt!1815931)))

(assert (=> d!1474901 (= lt!1815931 (containsKey!2706 (toList!5191 lt!1815366) (_1!29777 (h!58004 oldBucket!40))))))

(assert (=> d!1474901 (= (contains!15011 lt!1815366 (_1!29777 (h!58004 oldBucket!40))) lt!1815936)))

(declare-fun b!4652596 () Bool)

(assert (=> b!4652596 (= e!2902744 (not (contains!15013 (keys!18366 lt!1815366) (_1!29777 (h!58004 oldBucket!40)))))))

(declare-fun b!4652597 () Bool)

(declare-fun e!2902743 () Bool)

(assert (=> b!4652597 (= e!2902746 e!2902743)))

(declare-fun res!1955770 () Bool)

(assert (=> b!4652597 (=> (not res!1955770) (not e!2902743))))

(assert (=> b!4652597 (= res!1955770 (isDefined!9077 (getValueByKey!1600 (toList!5191 lt!1815366) (_1!29777 (h!58004 oldBucket!40)))))))

(declare-fun b!4652598 () Bool)

(assert (=> b!4652598 (= e!2902743 (contains!15013 (keys!18366 lt!1815366) (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun b!4652599 () Bool)

(assert (=> b!4652599 false))

(declare-fun lt!1815930 () Unit!117676)

(declare-fun lt!1815932 () Unit!117676)

(assert (=> b!4652599 (= lt!1815930 lt!1815932)))

(assert (=> b!4652599 (containsKey!2706 (toList!5191 lt!1815366) (_1!29777 (h!58004 oldBucket!40)))))

(assert (=> b!4652599 (= lt!1815932 (lemmaInGetKeysListThenContainsKey!740 (toList!5191 lt!1815366) (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun Unit!117951 () Unit!117676)

(assert (=> b!4652599 (= e!2902742 Unit!117951)))

(declare-fun bm!325067 () Bool)

(assert (=> bm!325067 (= call!325072 (contains!15013 e!2902745 (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun c!796322 () Bool)

(assert (=> bm!325067 (= c!796322 c!796320)))

(assert (= (and d!1474901 c!796320) b!4652593))

(assert (= (and d!1474901 (not c!796320)) b!4652592))

(assert (= (and b!4652592 c!796321) b!4652599))

(assert (= (and b!4652592 (not c!796321)) b!4652591))

(assert (= (or b!4652593 b!4652592) bm!325067))

(assert (= (and bm!325067 c!796322) b!4652595))

(assert (= (and bm!325067 (not c!796322)) b!4652594))

(assert (= (and d!1474901 res!1955769) b!4652596))

(assert (= (and d!1474901 (not res!1955771)) b!4652597))

(assert (= (and b!4652597 res!1955770) b!4652598))

(declare-fun m!5529171 () Bool)

(assert (=> d!1474901 m!5529171))

(declare-fun m!5529173 () Bool)

(assert (=> b!4652598 m!5529173))

(assert (=> b!4652598 m!5529173))

(declare-fun m!5529175 () Bool)

(assert (=> b!4652598 m!5529175))

(declare-fun m!5529177 () Bool)

(assert (=> b!4652597 m!5529177))

(assert (=> b!4652597 m!5529177))

(declare-fun m!5529179 () Bool)

(assert (=> b!4652597 m!5529179))

(declare-fun m!5529181 () Bool)

(assert (=> bm!325067 m!5529181))

(declare-fun m!5529183 () Bool)

(assert (=> b!4652593 m!5529183))

(assert (=> b!4652593 m!5529177))

(assert (=> b!4652593 m!5529177))

(assert (=> b!4652593 m!5529179))

(declare-fun m!5529185 () Bool)

(assert (=> b!4652593 m!5529185))

(assert (=> b!4652596 m!5529173))

(assert (=> b!4652596 m!5529173))

(assert (=> b!4652596 m!5529175))

(assert (=> b!4652594 m!5529173))

(assert (=> b!4652599 m!5529171))

(declare-fun m!5529187 () Bool)

(assert (=> b!4652599 m!5529187))

(declare-fun m!5529189 () Bool)

(assert (=> b!4652595 m!5529189))

(assert (=> b!4651862 d!1474901))

(declare-fun d!1474903 () Bool)

(declare-fun res!1955772 () Bool)

(declare-fun e!2902747 () Bool)

(assert (=> d!1474903 (=> res!1955772 e!2902747)))

(assert (=> d!1474903 (= res!1955772 ((_ is Nil!51868) oldBucket!40))))

(assert (=> d!1474903 (= (forall!11004 oldBucket!40 lambda!198591) e!2902747)))

(declare-fun b!4652600 () Bool)

(declare-fun e!2902748 () Bool)

(assert (=> b!4652600 (= e!2902747 e!2902748)))

(declare-fun res!1955773 () Bool)

(assert (=> b!4652600 (=> (not res!1955773) (not e!2902748))))

(assert (=> b!4652600 (= res!1955773 (dynLambda!21575 lambda!198591 (h!58004 oldBucket!40)))))

(declare-fun b!4652601 () Bool)

(assert (=> b!4652601 (= e!2902748 (forall!11004 (t!359100 oldBucket!40) lambda!198591))))

(assert (= (and d!1474903 (not res!1955772)) b!4652600))

(assert (= (and b!4652600 res!1955773) b!4652601))

(declare-fun b_lambda!173157 () Bool)

(assert (=> (not b_lambda!173157) (not b!4652600)))

(assert (=> b!4652600 m!5529091))

(declare-fun m!5529195 () Bool)

(assert (=> b!4652601 m!5529195))

(assert (=> b!4651862 d!1474903))

(declare-fun d!1474905 () Bool)

(declare-fun res!1955774 () Bool)

(declare-fun e!2902749 () Bool)

(assert (=> d!1474905 (=> res!1955774 e!2902749)))

(assert (=> d!1474905 (= res!1955774 ((_ is Nil!51868) (toList!5191 lt!1815366)))))

(assert (=> d!1474905 (= (forall!11004 (toList!5191 lt!1815366) lambda!198591) e!2902749)))

(declare-fun b!4652602 () Bool)

(declare-fun e!2902750 () Bool)

(assert (=> b!4652602 (= e!2902749 e!2902750)))

(declare-fun res!1955775 () Bool)

(assert (=> b!4652602 (=> (not res!1955775) (not e!2902750))))

(assert (=> b!4652602 (= res!1955775 (dynLambda!21575 lambda!198591 (h!58004 (toList!5191 lt!1815366))))))

(declare-fun b!4652603 () Bool)

(assert (=> b!4652603 (= e!2902750 (forall!11004 (t!359100 (toList!5191 lt!1815366)) lambda!198591))))

(assert (= (and d!1474905 (not res!1955774)) b!4652602))

(assert (= (and b!4652602 res!1955775) b!4652603))

(declare-fun b_lambda!173159 () Bool)

(assert (=> (not b_lambda!173159) (not b!4652602)))

(declare-fun m!5529201 () Bool)

(assert (=> b!4652602 m!5529201))

(declare-fun m!5529203 () Bool)

(assert (=> b!4652603 m!5529203))

(assert (=> b!4651862 d!1474905))

(declare-fun bs!1060591 () Bool)

(declare-fun b!4652608 () Bool)

(assert (= bs!1060591 (and b!4652608 b!4652214)))

(declare-fun lambda!198668 () Int)

(assert (=> bs!1060591 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198668 lambda!198641))))

(declare-fun bs!1060592 () Bool)

(assert (= bs!1060592 (and b!4652608 d!1474815)))

(assert (=> bs!1060592 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815223) (= lambda!198668 lambda!198656))))

(declare-fun bs!1060593 () Bool)

(assert (= bs!1060593 (and b!4652608 d!1474663)))

(assert (=> bs!1060593 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1814962) (= lambda!198668 lambda!198633))))

(declare-fun bs!1060594 () Bool)

(assert (= bs!1060594 (and b!4652608 b!4651851)))

(assert (=> bs!1060594 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198668 lambda!198586))))

(declare-fun bs!1060595 () Bool)

(assert (= bs!1060595 (and b!4652608 b!4652362)))

(assert (=> bs!1060595 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815707) (= lambda!198668 lambda!198648))))

(declare-fun bs!1060596 () Bool)

(assert (= bs!1060596 (and b!4652608 b!4652506)))

(assert (=> bs!1060596 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815841) (= lambda!198668 lambda!198660))))

(assert (=> bs!1060595 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198668 lambda!198647))))

(declare-fun bs!1060597 () Bool)

(assert (= bs!1060597 (and b!4652608 d!1474787)))

(assert (=> bs!1060597 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815338) (= lambda!198668 lambda!198651))))

(declare-fun bs!1060598 () Bool)

(assert (= bs!1060598 (and b!4652608 d!1474629)))

(assert (=> bs!1060598 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815539) (= lambda!198668 lambda!198623))))

(declare-fun bs!1060599 () Bool)

(assert (= bs!1060599 (and b!4652608 d!1474445)))

(assert (=> bs!1060599 (not (= lambda!198668 lambda!198577))))

(declare-fun bs!1060600 () Bool)

(assert (= bs!1060600 (and b!4652608 b!4652363)))

(assert (=> bs!1060600 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198668 lambda!198646))))

(assert (=> bs!1060591 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815624) (= lambda!198668 lambda!198643))))

(declare-fun bs!1060601 () Bool)

(assert (= bs!1060601 (and b!4652608 b!4651970)))

(assert (=> bs!1060601 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815433) (= lambda!198668 lambda!198606))))

(declare-fun bs!1060602 () Bool)

(assert (= bs!1060602 (and b!4652608 b!4651772)))

(assert (=> bs!1060602 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815244) (= lambda!198668 lambda!198569))))

(assert (=> bs!1060601 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198668 lambda!198605))))

(declare-fun bs!1060604 () Bool)

(assert (= bs!1060604 (and b!4652608 b!4652134)))

(assert (=> bs!1060604 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198668 lambda!198617))))

(declare-fun bs!1060606 () Bool)

(assert (= bs!1060606 (and b!4652608 d!1474461)))

(assert (=> bs!1060606 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815328) (= lambda!198668 lambda!198588))))

(declare-fun bs!1060608 () Bool)

(assert (= bs!1060608 (and b!4652608 d!1474783)))

(assert (=> bs!1060608 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815697) (= lambda!198668 lambda!198649))))

(declare-fun bs!1060610 () Bool)

(assert (= bs!1060610 (and b!4652608 b!4651765)))

(assert (=> bs!1060610 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815223) (= lambda!198668 lambda!198564))))

(declare-fun bs!1060612 () Bool)

(assert (= bs!1060612 (and b!4652608 b!4651844)))

(assert (=> bs!1060612 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815313) (= lambda!198668 lambda!198582))))

(declare-fun bs!1060614 () Bool)

(assert (= bs!1060614 (and b!4652608 d!1474503)))

(assert (=> bs!1060614 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815313) (= lambda!198668 lambda!198603))))

(declare-fun bs!1060616 () Bool)

(assert (= bs!1060616 (and b!4652608 b!4651852)))

(assert (=> bs!1060616 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198668 lambda!198585))))

(declare-fun bs!1060618 () Bool)

(assert (= bs!1060618 (and b!4652608 d!1474391)))

(assert (=> bs!1060618 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815213) (= lambda!198668 lambda!198566))))

(declare-fun bs!1060619 () Bool)

(assert (= bs!1060619 (and b!4652608 d!1474365)))

(assert (=> bs!1060619 (not (= lambda!198668 lambda!198476))))

(assert (=> bs!1060604 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815549) (= lambda!198668 lambda!198618))))

(declare-fun bs!1060622 () Bool)

(assert (= bs!1060622 (and b!4652608 b!4651845)))

(assert (=> bs!1060622 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1814962) (= lambda!198668 lambda!198580))))

(declare-fun bs!1060623 () Bool)

(assert (= bs!1060623 (and b!4652608 b!4651766)))

(assert (=> bs!1060623 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198668 lambda!198562))))

(declare-fun bs!1060625 () Bool)

(assert (= bs!1060625 (and b!4652608 d!1474467)))

(assert (=> bs!1060625 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815361) (= lambda!198668 lambda!198592))))

(declare-fun bs!1060627 () Bool)

(assert (= bs!1060627 (and b!4652608 b!4651971)))

(assert (=> bs!1060627 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198668 lambda!198604))))

(declare-fun bs!1060629 () Bool)

(assert (= bs!1060629 (and b!4652608 b!4652507)))

(assert (=> bs!1060629 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198668 lambda!198657))))

(declare-fun bs!1060630 () Bool)

(assert (= bs!1060630 (and b!4652608 d!1474649)))

(assert (=> bs!1060630 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198668 lambda!198632))))

(assert (=> bs!1060610 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198668 lambda!198563))))

(declare-fun bs!1060633 () Bool)

(assert (= bs!1060633 (and b!4652608 b!4652135)))

(assert (=> bs!1060633 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198668 lambda!198616))))

(declare-fun bs!1060635 () Bool)

(assert (= bs!1060635 (and b!4652608 b!4651773)))

(assert (=> bs!1060635 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198668 lambda!198567))))

(declare-fun bs!1060637 () Bool)

(assert (= bs!1060637 (and b!4652608 d!1474887)))

(assert (=> bs!1060637 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815371) (= lambda!198668 lambda!198666))))

(assert (=> bs!1060596 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198668 lambda!198659))))

(declare-fun bs!1060640 () Bool)

(assert (= bs!1060640 (and b!4652608 d!1474531)))

(assert (=> bs!1060640 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815423) (= lambda!198668 lambda!198607))))

(declare-fun bs!1060641 () Bool)

(assert (= bs!1060641 (and b!4652608 b!4652215)))

(assert (=> bs!1060641 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198668 lambda!198635))))

(declare-fun bs!1060642 () Bool)

(assert (= bs!1060642 (and b!4652608 d!1474687)))

(assert (=> bs!1060642 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815614) (= lambda!198668 lambda!198644))))

(declare-fun bs!1060644 () Bool)

(assert (= bs!1060644 (and b!4652608 d!1474455)))

(assert (=> bs!1060644 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815303) (= lambda!198668 lambda!198583))))

(declare-fun bs!1060646 () Bool)

(assert (= bs!1060646 (and b!4652608 b!4651863)))

(assert (=> bs!1060646 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198668 lambda!198589))))

(assert (=> bs!1060602 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198668 lambda!198568))))

(assert (=> bs!1060612 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1814962) (= lambda!198668 lambda!198581))))

(declare-fun bs!1060649 () Bool)

(assert (= bs!1060649 (and b!4652608 b!4651862)))

(assert (=> bs!1060649 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198668 lambda!198590))))

(declare-fun bs!1060651 () Bool)

(assert (= bs!1060651 (and b!4652608 d!1474845)))

(assert (=> bs!1060651 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815831) (= lambda!198668 lambda!198662))))

(declare-fun bs!1060653 () Bool)

(assert (= bs!1060653 (and b!4652608 d!1474425)))

(assert (=> bs!1060653 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815234) (= lambda!198668 lambda!198570))))

(assert (=> bs!1060649 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815371) (= lambda!198668 lambda!198591))))

(declare-fun bs!1060656 () Bool)

(assert (= bs!1060656 (and b!4652608 d!1474677)))

(assert (=> bs!1060656 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815244) (= lambda!198668 lambda!198634))))

(assert (=> bs!1060594 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815338) (= lambda!198668 lambda!198587))))

(assert (=> b!4652608 true))

(declare-fun bs!1060664 () Bool)

(declare-fun b!4652607 () Bool)

(assert (= bs!1060664 (and b!4652607 b!4652214)))

(declare-fun lambda!198670 () Int)

(assert (=> bs!1060664 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198670 lambda!198641))))

(declare-fun bs!1060665 () Bool)

(assert (= bs!1060665 (and b!4652607 d!1474815)))

(assert (=> bs!1060665 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815223) (= lambda!198670 lambda!198656))))

(declare-fun bs!1060666 () Bool)

(assert (= bs!1060666 (and b!4652607 d!1474663)))

(assert (=> bs!1060666 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1814962) (= lambda!198670 lambda!198633))))

(declare-fun bs!1060667 () Bool)

(assert (= bs!1060667 (and b!4652607 b!4651851)))

(assert (=> bs!1060667 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198670 lambda!198586))))

(declare-fun bs!1060668 () Bool)

(assert (= bs!1060668 (and b!4652607 b!4652362)))

(assert (=> bs!1060668 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815707) (= lambda!198670 lambda!198648))))

(declare-fun bs!1060669 () Bool)

(assert (= bs!1060669 (and b!4652607 b!4652506)))

(assert (=> bs!1060669 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815841) (= lambda!198670 lambda!198660))))

(assert (=> bs!1060668 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198670 lambda!198647))))

(declare-fun bs!1060670 () Bool)

(assert (= bs!1060670 (and b!4652607 d!1474787)))

(assert (=> bs!1060670 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815338) (= lambda!198670 lambda!198651))))

(declare-fun bs!1060672 () Bool)

(assert (= bs!1060672 (and b!4652607 d!1474629)))

(assert (=> bs!1060672 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815539) (= lambda!198670 lambda!198623))))

(declare-fun bs!1060674 () Bool)

(assert (= bs!1060674 (and b!4652607 d!1474445)))

(assert (=> bs!1060674 (not (= lambda!198670 lambda!198577))))

(declare-fun bs!1060676 () Bool)

(assert (= bs!1060676 (and b!4652607 b!4652363)))

(assert (=> bs!1060676 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198670 lambda!198646))))

(assert (=> bs!1060664 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815624) (= lambda!198670 lambda!198643))))

(declare-fun bs!1060679 () Bool)

(assert (= bs!1060679 (and b!4652607 b!4651970)))

(assert (=> bs!1060679 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815433) (= lambda!198670 lambda!198606))))

(declare-fun bs!1060681 () Bool)

(assert (= bs!1060681 (and b!4652607 b!4651772)))

(assert (=> bs!1060681 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815244) (= lambda!198670 lambda!198569))))

(assert (=> bs!1060679 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198670 lambda!198605))))

(declare-fun bs!1060683 () Bool)

(assert (= bs!1060683 (and b!4652607 b!4652134)))

(assert (=> bs!1060683 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198670 lambda!198617))))

(declare-fun bs!1060685 () Bool)

(assert (= bs!1060685 (and b!4652607 d!1474461)))

(assert (=> bs!1060685 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815328) (= lambda!198670 lambda!198588))))

(declare-fun bs!1060687 () Bool)

(assert (= bs!1060687 (and b!4652607 d!1474783)))

(assert (=> bs!1060687 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815697) (= lambda!198670 lambda!198649))))

(declare-fun bs!1060689 () Bool)

(assert (= bs!1060689 (and b!4652607 b!4651765)))

(assert (=> bs!1060689 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815223) (= lambda!198670 lambda!198564))))

(declare-fun bs!1060691 () Bool)

(assert (= bs!1060691 (and b!4652607 b!4651844)))

(assert (=> bs!1060691 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815313) (= lambda!198670 lambda!198582))))

(declare-fun bs!1060692 () Bool)

(assert (= bs!1060692 (and b!4652607 d!1474503)))

(assert (=> bs!1060692 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815313) (= lambda!198670 lambda!198603))))

(declare-fun bs!1060694 () Bool)

(assert (= bs!1060694 (and b!4652607 b!4651852)))

(assert (=> bs!1060694 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198670 lambda!198585))))

(declare-fun bs!1060696 () Bool)

(assert (= bs!1060696 (and b!4652607 d!1474391)))

(assert (=> bs!1060696 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815213) (= lambda!198670 lambda!198566))))

(declare-fun bs!1060698 () Bool)

(assert (= bs!1060698 (and b!4652607 d!1474365)))

(assert (=> bs!1060698 (not (= lambda!198670 lambda!198476))))

(assert (=> bs!1060683 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815549) (= lambda!198670 lambda!198618))))

(declare-fun bs!1060700 () Bool)

(assert (= bs!1060700 (and b!4652607 b!4651845)))

(assert (=> bs!1060700 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1814962) (= lambda!198670 lambda!198580))))

(declare-fun bs!1060702 () Bool)

(assert (= bs!1060702 (and b!4652607 b!4651766)))

(assert (=> bs!1060702 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198670 lambda!198562))))

(declare-fun bs!1060704 () Bool)

(assert (= bs!1060704 (and b!4652607 d!1474467)))

(assert (=> bs!1060704 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815361) (= lambda!198670 lambda!198592))))

(declare-fun bs!1060706 () Bool)

(assert (= bs!1060706 (and b!4652607 b!4651971)))

(assert (=> bs!1060706 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198670 lambda!198604))))

(declare-fun bs!1060708 () Bool)

(assert (= bs!1060708 (and b!4652607 b!4652507)))

(assert (=> bs!1060708 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198670 lambda!198657))))

(declare-fun bs!1060710 () Bool)

(assert (= bs!1060710 (and b!4652607 d!1474649)))

(assert (=> bs!1060710 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198670 lambda!198632))))

(assert (=> bs!1060689 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198670 lambda!198563))))

(declare-fun bs!1060712 () Bool)

(assert (= bs!1060712 (and b!4652607 b!4652135)))

(assert (=> bs!1060712 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198670 lambda!198616))))

(declare-fun bs!1060714 () Bool)

(assert (= bs!1060714 (and b!4652607 b!4651773)))

(assert (=> bs!1060714 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198670 lambda!198567))))

(declare-fun bs!1060715 () Bool)

(assert (= bs!1060715 (and b!4652607 d!1474887)))

(assert (=> bs!1060715 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815371) (= lambda!198670 lambda!198666))))

(assert (=> bs!1060669 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198670 lambda!198659))))

(declare-fun bs!1060717 () Bool)

(assert (= bs!1060717 (and b!4652607 d!1474531)))

(assert (=> bs!1060717 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815423) (= lambda!198670 lambda!198607))))

(declare-fun bs!1060719 () Bool)

(assert (= bs!1060719 (and b!4652607 b!4652215)))

(assert (=> bs!1060719 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198670 lambda!198635))))

(declare-fun bs!1060721 () Bool)

(assert (= bs!1060721 (and b!4652607 b!4652608)))

(assert (=> bs!1060721 (= lambda!198670 lambda!198668)))

(declare-fun bs!1060723 () Bool)

(assert (= bs!1060723 (and b!4652607 d!1474687)))

(assert (=> bs!1060723 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815614) (= lambda!198670 lambda!198644))))

(declare-fun bs!1060725 () Bool)

(assert (= bs!1060725 (and b!4652607 d!1474455)))

(assert (=> bs!1060725 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815303) (= lambda!198670 lambda!198583))))

(declare-fun bs!1060727 () Bool)

(assert (= bs!1060727 (and b!4652607 b!4651863)))

(assert (=> bs!1060727 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198670 lambda!198589))))

(assert (=> bs!1060681 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198670 lambda!198568))))

(assert (=> bs!1060691 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1814962) (= lambda!198670 lambda!198581))))

(declare-fun bs!1060730 () Bool)

(assert (= bs!1060730 (and b!4652607 b!4651862)))

(assert (=> bs!1060730 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (ListMap!4530 Nil!51868)) (= lambda!198670 lambda!198590))))

(declare-fun bs!1060732 () Bool)

(assert (= bs!1060732 (and b!4652607 d!1474845)))

(assert (=> bs!1060732 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815831) (= lambda!198670 lambda!198662))))

(declare-fun bs!1060733 () Bool)

(assert (= bs!1060733 (and b!4652607 d!1474425)))

(assert (=> bs!1060733 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815234) (= lambda!198670 lambda!198570))))

(assert (=> bs!1060730 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815371) (= lambda!198670 lambda!198591))))

(declare-fun bs!1060736 () Bool)

(assert (= bs!1060736 (and b!4652607 d!1474677)))

(assert (=> bs!1060736 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815244) (= lambda!198670 lambda!198634))))

(assert (=> bs!1060667 (= (= (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815338) (= lambda!198670 lambda!198587))))

(assert (=> b!4652607 true))

(declare-fun lt!1815949 () ListMap!4529)

(declare-fun lambda!198672 () Int)

(assert (=> bs!1060664 (= (= lt!1815949 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198672 lambda!198641))))

(assert (=> bs!1060665 (= (= lt!1815949 lt!1815223) (= lambda!198672 lambda!198656))))

(assert (=> bs!1060666 (= (= lt!1815949 lt!1814962) (= lambda!198672 lambda!198633))))

(assert (=> bs!1060667 (= (= lt!1815949 (ListMap!4530 Nil!51868)) (= lambda!198672 lambda!198586))))

(assert (=> bs!1060668 (= (= lt!1815949 lt!1815707) (= lambda!198672 lambda!198648))))

(assert (=> bs!1060669 (= (= lt!1815949 lt!1815841) (= lambda!198672 lambda!198660))))

(assert (=> bs!1060668 (= (= lt!1815949 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198672 lambda!198647))))

(assert (=> bs!1060670 (= (= lt!1815949 lt!1815338) (= lambda!198672 lambda!198651))))

(assert (=> bs!1060672 (= (= lt!1815949 lt!1815539) (= lambda!198672 lambda!198623))))

(assert (=> bs!1060674 (not (= lambda!198672 lambda!198577))))

(assert (=> bs!1060676 (= (= lt!1815949 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198672 lambda!198646))))

(assert (=> bs!1060664 (= (= lt!1815949 lt!1815624) (= lambda!198672 lambda!198643))))

(assert (=> bs!1060679 (= (= lt!1815949 lt!1815433) (= lambda!198672 lambda!198606))))

(assert (=> bs!1060681 (= (= lt!1815949 lt!1815244) (= lambda!198672 lambda!198569))))

(assert (=> bs!1060679 (= (= lt!1815949 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198672 lambda!198605))))

(assert (=> bs!1060683 (= (= lt!1815949 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198672 lambda!198617))))

(assert (=> bs!1060685 (= (= lt!1815949 lt!1815328) (= lambda!198672 lambda!198588))))

(assert (=> bs!1060687 (= (= lt!1815949 lt!1815697) (= lambda!198672 lambda!198649))))

(assert (=> bs!1060689 (= (= lt!1815949 lt!1815223) (= lambda!198672 lambda!198564))))

(assert (=> bs!1060691 (= (= lt!1815949 lt!1815313) (= lambda!198672 lambda!198582))))

(assert (=> bs!1060692 (= (= lt!1815949 lt!1815313) (= lambda!198672 lambda!198603))))

(assert (=> bs!1060694 (= (= lt!1815949 (ListMap!4530 Nil!51868)) (= lambda!198672 lambda!198585))))

(assert (=> bs!1060696 (= (= lt!1815949 lt!1815213) (= lambda!198672 lambda!198566))))

(assert (=> bs!1060698 (not (= lambda!198672 lambda!198476))))

(assert (=> bs!1060683 (= (= lt!1815949 lt!1815549) (= lambda!198672 lambda!198618))))

(assert (=> bs!1060700 (= (= lt!1815949 lt!1814962) (= lambda!198672 lambda!198580))))

(assert (=> bs!1060702 (= (= lt!1815949 (ListMap!4530 Nil!51868)) (= lambda!198672 lambda!198562))))

(assert (=> bs!1060704 (= (= lt!1815949 lt!1815361) (= lambda!198672 lambda!198592))))

(assert (=> bs!1060706 (= (= lt!1815949 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198672 lambda!198604))))

(assert (=> bs!1060708 (= (= lt!1815949 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198672 lambda!198657))))

(assert (=> bs!1060710 (= (= lt!1815949 (ListMap!4530 Nil!51868)) (= lambda!198672 lambda!198632))))

(assert (=> bs!1060689 (= (= lt!1815949 (ListMap!4530 Nil!51868)) (= lambda!198672 lambda!198563))))

(assert (=> bs!1060712 (= (= lt!1815949 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198672 lambda!198616))))

(assert (=> bs!1060714 (= (= lt!1815949 (ListMap!4530 Nil!51868)) (= lambda!198672 lambda!198567))))

(assert (=> bs!1060715 (= (= lt!1815949 lt!1815371) (= lambda!198672 lambda!198666))))

(assert (=> bs!1060669 (= (= lt!1815949 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198672 lambda!198659))))

(assert (=> bs!1060717 (= (= lt!1815949 lt!1815423) (= lambda!198672 lambda!198607))))

(assert (=> bs!1060719 (= (= lt!1815949 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198672 lambda!198635))))

(assert (=> bs!1060721 (= (= lt!1815949 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198672 lambda!198668))))

(assert (=> bs!1060723 (= (= lt!1815949 lt!1815614) (= lambda!198672 lambda!198644))))

(assert (=> bs!1060725 (= (= lt!1815949 lt!1815303) (= lambda!198672 lambda!198583))))

(assert (=> b!4652607 (= (= lt!1815949 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198672 lambda!198670))))

(assert (=> bs!1060727 (= (= lt!1815949 (ListMap!4530 Nil!51868)) (= lambda!198672 lambda!198589))))

(assert (=> bs!1060681 (= (= lt!1815949 (ListMap!4530 Nil!51868)) (= lambda!198672 lambda!198568))))

(assert (=> bs!1060691 (= (= lt!1815949 lt!1814962) (= lambda!198672 lambda!198581))))

(assert (=> bs!1060730 (= (= lt!1815949 (ListMap!4530 Nil!51868)) (= lambda!198672 lambda!198590))))

(assert (=> bs!1060732 (= (= lt!1815949 lt!1815831) (= lambda!198672 lambda!198662))))

(assert (=> bs!1060733 (= (= lt!1815949 lt!1815234) (= lambda!198672 lambda!198570))))

(assert (=> bs!1060730 (= (= lt!1815949 lt!1815371) (= lambda!198672 lambda!198591))))

(assert (=> bs!1060736 (= (= lt!1815949 lt!1815244) (= lambda!198672 lambda!198634))))

(assert (=> bs!1060667 (= (= lt!1815949 lt!1815338) (= lambda!198672 lambda!198587))))

(assert (=> b!4652607 true))

(declare-fun bs!1060742 () Bool)

(declare-fun d!1474909 () Bool)

(assert (= bs!1060742 (and d!1474909 b!4652214)))

(declare-fun lambda!198675 () Int)

(declare-fun lt!1815939 () ListMap!4529)

(assert (=> bs!1060742 (= (= lt!1815939 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198675 lambda!198641))))

(declare-fun bs!1060744 () Bool)

(assert (= bs!1060744 (and d!1474909 d!1474815)))

(assert (=> bs!1060744 (= (= lt!1815939 lt!1815223) (= lambda!198675 lambda!198656))))

(declare-fun bs!1060746 () Bool)

(assert (= bs!1060746 (and d!1474909 b!4651851)))

(assert (=> bs!1060746 (= (= lt!1815939 (ListMap!4530 Nil!51868)) (= lambda!198675 lambda!198586))))

(declare-fun bs!1060748 () Bool)

(assert (= bs!1060748 (and d!1474909 b!4652362)))

(assert (=> bs!1060748 (= (= lt!1815939 lt!1815707) (= lambda!198675 lambda!198648))))

(declare-fun bs!1060750 () Bool)

(assert (= bs!1060750 (and d!1474909 b!4652506)))

(assert (=> bs!1060750 (= (= lt!1815939 lt!1815841) (= lambda!198675 lambda!198660))))

(assert (=> bs!1060748 (= (= lt!1815939 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198675 lambda!198647))))

(declare-fun bs!1060753 () Bool)

(assert (= bs!1060753 (and d!1474909 d!1474787)))

(assert (=> bs!1060753 (= (= lt!1815939 lt!1815338) (= lambda!198675 lambda!198651))))

(declare-fun bs!1060754 () Bool)

(assert (= bs!1060754 (and d!1474909 d!1474629)))

(assert (=> bs!1060754 (= (= lt!1815939 lt!1815539) (= lambda!198675 lambda!198623))))

(declare-fun bs!1060756 () Bool)

(assert (= bs!1060756 (and d!1474909 d!1474445)))

(assert (=> bs!1060756 (not (= lambda!198675 lambda!198577))))

(declare-fun bs!1060758 () Bool)

(assert (= bs!1060758 (and d!1474909 b!4652363)))

(assert (=> bs!1060758 (= (= lt!1815939 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198675 lambda!198646))))

(assert (=> bs!1060742 (= (= lt!1815939 lt!1815624) (= lambda!198675 lambda!198643))))

(declare-fun bs!1060760 () Bool)

(assert (= bs!1060760 (and d!1474909 b!4651970)))

(assert (=> bs!1060760 (= (= lt!1815939 lt!1815433) (= lambda!198675 lambda!198606))))

(declare-fun bs!1060762 () Bool)

(assert (= bs!1060762 (and d!1474909 b!4651772)))

(assert (=> bs!1060762 (= (= lt!1815939 lt!1815244) (= lambda!198675 lambda!198569))))

(assert (=> bs!1060760 (= (= lt!1815939 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198675 lambda!198605))))

(declare-fun bs!1060764 () Bool)

(assert (= bs!1060764 (and d!1474909 b!4652134)))

(assert (=> bs!1060764 (= (= lt!1815939 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198675 lambda!198617))))

(declare-fun bs!1060766 () Bool)

(assert (= bs!1060766 (and d!1474909 d!1474461)))

(assert (=> bs!1060766 (= (= lt!1815939 lt!1815328) (= lambda!198675 lambda!198588))))

(declare-fun bs!1060768 () Bool)

(assert (= bs!1060768 (and d!1474909 d!1474783)))

(assert (=> bs!1060768 (= (= lt!1815939 lt!1815697) (= lambda!198675 lambda!198649))))

(declare-fun bs!1060770 () Bool)

(assert (= bs!1060770 (and d!1474909 b!4651765)))

(assert (=> bs!1060770 (= (= lt!1815939 lt!1815223) (= lambda!198675 lambda!198564))))

(declare-fun bs!1060772 () Bool)

(assert (= bs!1060772 (and d!1474909 b!4651844)))

(assert (=> bs!1060772 (= (= lt!1815939 lt!1815313) (= lambda!198675 lambda!198582))))

(declare-fun bs!1060774 () Bool)

(assert (= bs!1060774 (and d!1474909 b!4652607)))

(assert (=> bs!1060774 (= (= lt!1815939 lt!1815949) (= lambda!198675 lambda!198672))))

(declare-fun bs!1060776 () Bool)

(assert (= bs!1060776 (and d!1474909 d!1474663)))

(assert (=> bs!1060776 (= (= lt!1815939 lt!1814962) (= lambda!198675 lambda!198633))))

(declare-fun bs!1060777 () Bool)

(assert (= bs!1060777 (and d!1474909 d!1474503)))

(assert (=> bs!1060777 (= (= lt!1815939 lt!1815313) (= lambda!198675 lambda!198603))))

(declare-fun bs!1060779 () Bool)

(assert (= bs!1060779 (and d!1474909 b!4651852)))

(assert (=> bs!1060779 (= (= lt!1815939 (ListMap!4530 Nil!51868)) (= lambda!198675 lambda!198585))))

(declare-fun bs!1060781 () Bool)

(assert (= bs!1060781 (and d!1474909 d!1474391)))

(assert (=> bs!1060781 (= (= lt!1815939 lt!1815213) (= lambda!198675 lambda!198566))))

(declare-fun bs!1060782 () Bool)

(assert (= bs!1060782 (and d!1474909 d!1474365)))

(assert (=> bs!1060782 (not (= lambda!198675 lambda!198476))))

(assert (=> bs!1060764 (= (= lt!1815939 lt!1815549) (= lambda!198675 lambda!198618))))

(declare-fun bs!1060785 () Bool)

(assert (= bs!1060785 (and d!1474909 b!4651845)))

(assert (=> bs!1060785 (= (= lt!1815939 lt!1814962) (= lambda!198675 lambda!198580))))

(declare-fun bs!1060787 () Bool)

(assert (= bs!1060787 (and d!1474909 b!4651766)))

(assert (=> bs!1060787 (= (= lt!1815939 (ListMap!4530 Nil!51868)) (= lambda!198675 lambda!198562))))

(declare-fun bs!1060789 () Bool)

(assert (= bs!1060789 (and d!1474909 d!1474467)))

(assert (=> bs!1060789 (= (= lt!1815939 lt!1815361) (= lambda!198675 lambda!198592))))

(declare-fun bs!1060791 () Bool)

(assert (= bs!1060791 (and d!1474909 b!4651971)))

(assert (=> bs!1060791 (= (= lt!1815939 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198675 lambda!198604))))

(declare-fun bs!1060793 () Bool)

(assert (= bs!1060793 (and d!1474909 b!4652507)))

(assert (=> bs!1060793 (= (= lt!1815939 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198675 lambda!198657))))

(declare-fun bs!1060795 () Bool)

(assert (= bs!1060795 (and d!1474909 d!1474649)))

(assert (=> bs!1060795 (= (= lt!1815939 (ListMap!4530 Nil!51868)) (= lambda!198675 lambda!198632))))

(assert (=> bs!1060770 (= (= lt!1815939 (ListMap!4530 Nil!51868)) (= lambda!198675 lambda!198563))))

(declare-fun bs!1060796 () Bool)

(assert (= bs!1060796 (and d!1474909 b!4652135)))

(assert (=> bs!1060796 (= (= lt!1815939 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198675 lambda!198616))))

(declare-fun bs!1060798 () Bool)

(assert (= bs!1060798 (and d!1474909 b!4651773)))

(assert (=> bs!1060798 (= (= lt!1815939 (ListMap!4530 Nil!51868)) (= lambda!198675 lambda!198567))))

(declare-fun bs!1060799 () Bool)

(assert (= bs!1060799 (and d!1474909 d!1474887)))

(assert (=> bs!1060799 (= (= lt!1815939 lt!1815371) (= lambda!198675 lambda!198666))))

(assert (=> bs!1060750 (= (= lt!1815939 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198675 lambda!198659))))

(declare-fun bs!1060802 () Bool)

(assert (= bs!1060802 (and d!1474909 d!1474531)))

(assert (=> bs!1060802 (= (= lt!1815939 lt!1815423) (= lambda!198675 lambda!198607))))

(declare-fun bs!1060803 () Bool)

(assert (= bs!1060803 (and d!1474909 b!4652215)))

(assert (=> bs!1060803 (= (= lt!1815939 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198675 lambda!198635))))

(declare-fun bs!1060805 () Bool)

(assert (= bs!1060805 (and d!1474909 b!4652608)))

(assert (=> bs!1060805 (= (= lt!1815939 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198675 lambda!198668))))

(declare-fun bs!1060807 () Bool)

(assert (= bs!1060807 (and d!1474909 d!1474687)))

(assert (=> bs!1060807 (= (= lt!1815939 lt!1815614) (= lambda!198675 lambda!198644))))

(declare-fun bs!1060809 () Bool)

(assert (= bs!1060809 (and d!1474909 d!1474455)))

(assert (=> bs!1060809 (= (= lt!1815939 lt!1815303) (= lambda!198675 lambda!198583))))

(assert (=> bs!1060774 (= (= lt!1815939 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198675 lambda!198670))))

(declare-fun bs!1060811 () Bool)

(assert (= bs!1060811 (and d!1474909 b!4651863)))

(assert (=> bs!1060811 (= (= lt!1815939 (ListMap!4530 Nil!51868)) (= lambda!198675 lambda!198589))))

(assert (=> bs!1060762 (= (= lt!1815939 (ListMap!4530 Nil!51868)) (= lambda!198675 lambda!198568))))

(assert (=> bs!1060772 (= (= lt!1815939 lt!1814962) (= lambda!198675 lambda!198581))))

(declare-fun bs!1060812 () Bool)

(assert (= bs!1060812 (and d!1474909 b!4651862)))

(assert (=> bs!1060812 (= (= lt!1815939 (ListMap!4530 Nil!51868)) (= lambda!198675 lambda!198590))))

(declare-fun bs!1060813 () Bool)

(assert (= bs!1060813 (and d!1474909 d!1474845)))

(assert (=> bs!1060813 (= (= lt!1815939 lt!1815831) (= lambda!198675 lambda!198662))))

(declare-fun bs!1060814 () Bool)

(assert (= bs!1060814 (and d!1474909 d!1474425)))

(assert (=> bs!1060814 (= (= lt!1815939 lt!1815234) (= lambda!198675 lambda!198570))))

(assert (=> bs!1060812 (= (= lt!1815939 lt!1815371) (= lambda!198675 lambda!198591))))

(declare-fun bs!1060815 () Bool)

(assert (= bs!1060815 (and d!1474909 d!1474677)))

(assert (=> bs!1060815 (= (= lt!1815939 lt!1815244) (= lambda!198675 lambda!198634))))

(assert (=> bs!1060746 (= (= lt!1815939 lt!1815338) (= lambda!198675 lambda!198587))))

(assert (=> d!1474909 true))

(declare-fun e!2902754 () Bool)

(assert (=> d!1474909 e!2902754))

(declare-fun res!1955779 () Bool)

(assert (=> d!1474909 (=> (not res!1955779) (not e!2902754))))

(assert (=> d!1474909 (= res!1955779 (forall!11004 (t!359100 oldBucket!40) lambda!198675))))

(declare-fun e!2902752 () ListMap!4529)

(assert (=> d!1474909 (= lt!1815939 e!2902752)))

(declare-fun c!796323 () Bool)

(assert (=> d!1474909 (= c!796323 ((_ is Nil!51868) (t!359100 oldBucket!40)))))

(assert (=> d!1474909 (noDuplicateKeys!1630 (t!359100 oldBucket!40))))

(assert (=> d!1474909 (= (addToMapMapFromBucket!1087 (t!359100 oldBucket!40) (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) lt!1815939)))

(declare-fun b!4652605 () Bool)

(declare-fun res!1955777 () Bool)

(assert (=> b!4652605 (=> (not res!1955777) (not e!2902754))))

(assert (=> b!4652605 (= res!1955777 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) lambda!198675))))

(declare-fun call!325074 () Bool)

(declare-fun bm!325068 () Bool)

(assert (=> bm!325068 (= call!325074 (forall!11004 (ite c!796323 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (t!359100 (t!359100 oldBucket!40))) (ite c!796323 lambda!198668 lambda!198672)))))

(declare-fun bm!325069 () Bool)

(declare-fun call!325075 () Bool)

(assert (=> bm!325069 (= call!325075 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (ite c!796323 lambda!198668 lambda!198672)))))

(declare-fun b!4652606 () Bool)

(assert (=> b!4652606 (= e!2902754 (invariantList!1290 (toList!5191 lt!1815939)))))

(assert (=> b!4652607 (= e!2902752 lt!1815949)))

(declare-fun lt!1815944 () ListMap!4529)

(assert (=> b!4652607 (= lt!1815944 (+!1974 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (h!58004 (t!359100 oldBucket!40))))))

(assert (=> b!4652607 (= lt!1815949 (addToMapMapFromBucket!1087 (t!359100 (t!359100 oldBucket!40)) (+!1974 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) (h!58004 (t!359100 oldBucket!40)))))))

(declare-fun lt!1815942 () Unit!117676)

(declare-fun call!325073 () Unit!117676)

(assert (=> b!4652607 (= lt!1815942 call!325073)))

(assert (=> b!4652607 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) lambda!198670)))

(declare-fun lt!1815952 () Unit!117676)

(assert (=> b!4652607 (= lt!1815952 lt!1815942)))

(assert (=> b!4652607 (forall!11004 (toList!5191 lt!1815944) lambda!198672)))

(declare-fun lt!1815951 () Unit!117676)

(declare-fun Unit!117967 () Unit!117676)

(assert (=> b!4652607 (= lt!1815951 Unit!117967)))

(assert (=> b!4652607 call!325074))

(declare-fun lt!1815943 () Unit!117676)

(declare-fun Unit!117968 () Unit!117676)

(assert (=> b!4652607 (= lt!1815943 Unit!117968)))

(declare-fun lt!1815948 () Unit!117676)

(declare-fun Unit!117969 () Unit!117676)

(assert (=> b!4652607 (= lt!1815948 Unit!117969)))

(declare-fun lt!1815940 () Unit!117676)

(assert (=> b!4652607 (= lt!1815940 (forallContained!3212 (toList!5191 lt!1815944) lambda!198672 (h!58004 (t!359100 oldBucket!40))))))

(assert (=> b!4652607 (contains!15011 lt!1815944 (_1!29777 (h!58004 (t!359100 oldBucket!40))))))

(declare-fun lt!1815957 () Unit!117676)

(declare-fun Unit!117970 () Unit!117676)

(assert (=> b!4652607 (= lt!1815957 Unit!117970)))

(assert (=> b!4652607 (contains!15011 lt!1815949 (_1!29777 (h!58004 (t!359100 oldBucket!40))))))

(declare-fun lt!1815947 () Unit!117676)

(declare-fun Unit!117971 () Unit!117676)

(assert (=> b!4652607 (= lt!1815947 Unit!117971)))

(assert (=> b!4652607 (forall!11004 (t!359100 oldBucket!40) lambda!198672)))

(declare-fun lt!1815953 () Unit!117676)

(declare-fun Unit!117972 () Unit!117676)

(assert (=> b!4652607 (= lt!1815953 Unit!117972)))

(assert (=> b!4652607 (forall!11004 (toList!5191 lt!1815944) lambda!198672)))

(declare-fun lt!1815950 () Unit!117676)

(declare-fun Unit!117973 () Unit!117676)

(assert (=> b!4652607 (= lt!1815950 Unit!117973)))

(declare-fun lt!1815959 () Unit!117676)

(declare-fun Unit!117974 () Unit!117676)

(assert (=> b!4652607 (= lt!1815959 Unit!117974)))

(declare-fun lt!1815941 () Unit!117676)

(assert (=> b!4652607 (= lt!1815941 (addForallContainsKeyThenBeforeAdding!589 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)) lt!1815949 (_1!29777 (h!58004 (t!359100 oldBucket!40))) (_2!29777 (h!58004 (t!359100 oldBucket!40)))))))

(assert (=> b!4652607 call!325075))

(declare-fun lt!1815946 () Unit!117676)

(assert (=> b!4652607 (= lt!1815946 lt!1815941)))

(assert (=> b!4652607 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) lambda!198672)))

(declare-fun lt!1815955 () Unit!117676)

(declare-fun Unit!117975 () Unit!117676)

(assert (=> b!4652607 (= lt!1815955 Unit!117975)))

(declare-fun res!1955778 () Bool)

(assert (=> b!4652607 (= res!1955778 (forall!11004 (t!359100 oldBucket!40) lambda!198672))))

(declare-fun e!2902753 () Bool)

(assert (=> b!4652607 (=> (not res!1955778) (not e!2902753))))

(assert (=> b!4652607 e!2902753))

(declare-fun lt!1815945 () Unit!117676)

(declare-fun Unit!117976 () Unit!117676)

(assert (=> b!4652607 (= lt!1815945 Unit!117976)))

(assert (=> b!4652608 (= e!2902752 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40)))))

(declare-fun lt!1815958 () Unit!117676)

(assert (=> b!4652608 (= lt!1815958 call!325073)))

(assert (=> b!4652608 call!325075))

(declare-fun lt!1815956 () Unit!117676)

(assert (=> b!4652608 (= lt!1815956 lt!1815958)))

(assert (=> b!4652608 call!325074))

(declare-fun lt!1815954 () Unit!117676)

(declare-fun Unit!117977 () Unit!117676)

(assert (=> b!4652608 (= lt!1815954 Unit!117977)))

(declare-fun bm!325070 () Bool)

(assert (=> bm!325070 (= call!325073 (lemmaContainsAllItsOwnKeys!590 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))))))

(declare-fun b!4652609 () Bool)

(assert (=> b!4652609 (= e!2902753 (forall!11004 (toList!5191 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) lambda!198672))))

(assert (= (and d!1474909 c!796323) b!4652608))

(assert (= (and d!1474909 (not c!796323)) b!4652607))

(assert (= (and b!4652607 res!1955778) b!4652609))

(assert (= (or b!4652608 b!4652607) bm!325070))

(assert (= (or b!4652608 b!4652607) bm!325068))

(assert (= (or b!4652608 b!4652607) bm!325069))

(assert (= (and d!1474909 res!1955779) b!4652605))

(assert (= (and b!4652605 res!1955777) b!4652606))

(declare-fun m!5529241 () Bool)

(assert (=> b!4652609 m!5529241))

(declare-fun m!5529245 () Bool)

(assert (=> b!4652606 m!5529245))

(declare-fun m!5529249 () Bool)

(assert (=> b!4652605 m!5529249))

(assert (=> bm!325070 m!5527551))

(declare-fun m!5529253 () Bool)

(assert (=> bm!325070 m!5529253))

(declare-fun m!5529257 () Bool)

(assert (=> bm!325068 m!5529257))

(declare-fun m!5529259 () Bool)

(assert (=> d!1474909 m!5529259))

(assert (=> d!1474909 m!5527427))

(declare-fun m!5529261 () Bool)

(assert (=> bm!325069 m!5529261))

(declare-fun m!5529263 () Bool)

(assert (=> b!4652607 m!5529263))

(declare-fun m!5529265 () Bool)

(assert (=> b!4652607 m!5529265))

(assert (=> b!4652607 m!5529265))

(declare-fun m!5529267 () Bool)

(assert (=> b!4652607 m!5529267))

(declare-fun m!5529269 () Bool)

(assert (=> b!4652607 m!5529269))

(assert (=> b!4652607 m!5529241))

(declare-fun m!5529271 () Bool)

(assert (=> b!4652607 m!5529271))

(declare-fun m!5529273 () Bool)

(assert (=> b!4652607 m!5529273))

(assert (=> b!4652607 m!5529271))

(assert (=> b!4652607 m!5527551))

(assert (=> b!4652607 m!5529267))

(declare-fun m!5529275 () Bool)

(assert (=> b!4652607 m!5529275))

(assert (=> b!4652607 m!5527551))

(declare-fun m!5529277 () Bool)

(assert (=> b!4652607 m!5529277))

(declare-fun m!5529279 () Bool)

(assert (=> b!4652607 m!5529279))

(assert (=> b!4651862 d!1474909))

(assert (=> bm!324988 d!1474649))

(declare-fun bs!1060900 () Bool)

(declare-fun b!4652672 () Bool)

(assert (= bs!1060900 (and b!4652672 b!4651904)))

(declare-fun lambda!198688 () Int)

(assert (=> bs!1060900 (= (= (t!359100 (toList!5191 lt!1814955)) (toList!5191 lt!1814955)) (= lambda!198688 lambda!198597))))

(assert (=> b!4652672 true))

(declare-fun bs!1060904 () Bool)

(declare-fun b!4652671 () Bool)

(assert (= bs!1060904 (and b!4652671 b!4651904)))

(declare-fun lambda!198689 () Int)

(assert (=> bs!1060904 (= (= (Cons!51868 (h!58004 (toList!5191 lt!1814955)) (t!359100 (toList!5191 lt!1814955))) (toList!5191 lt!1814955)) (= lambda!198689 lambda!198597))))

(declare-fun bs!1060906 () Bool)

(assert (= bs!1060906 (and b!4652671 b!4652672)))

(assert (=> bs!1060906 (= (= (Cons!51868 (h!58004 (toList!5191 lt!1814955)) (t!359100 (toList!5191 lt!1814955))) (t!359100 (toList!5191 lt!1814955))) (= lambda!198689 lambda!198688))))

(assert (=> b!4652671 true))

(declare-fun bs!1060910 () Bool)

(declare-fun b!4652667 () Bool)

(assert (= bs!1060910 (and b!4652667 b!4651904)))

(declare-fun lambda!198690 () Int)

(assert (=> bs!1060910 (= lambda!198690 lambda!198597)))

(declare-fun bs!1060912 () Bool)

(assert (= bs!1060912 (and b!4652667 b!4652672)))

(assert (=> bs!1060912 (= (= (toList!5191 lt!1814955) (t!359100 (toList!5191 lt!1814955))) (= lambda!198690 lambda!198688))))

(declare-fun bs!1060913 () Bool)

(assert (= bs!1060913 (and b!4652667 b!4652671)))

(assert (=> bs!1060913 (= (= (toList!5191 lt!1814955) (Cons!51868 (h!58004 (toList!5191 lt!1814955)) (t!359100 (toList!5191 lt!1814955)))) (= lambda!198690 lambda!198689))))

(assert (=> b!4652667 true))

(declare-fun bs!1060917 () Bool)

(declare-fun b!4652673 () Bool)

(assert (= bs!1060917 (and b!4652673 b!4651905)))

(declare-fun lambda!198691 () Int)

(assert (=> bs!1060917 (= lambda!198691 lambda!198598)))

(declare-fun b!4652666 () Bool)

(declare-fun e!2902795 () Unit!117676)

(declare-fun Unit!117978 () Unit!117676)

(assert (=> b!4652666 (= e!2902795 Unit!117978)))

(declare-fun b!4652668 () Bool)

(declare-fun e!2902794 () Unit!117676)

(declare-fun Unit!117979 () Unit!117676)

(assert (=> b!4652668 (= e!2902794 Unit!117979)))

(declare-fun b!4652669 () Bool)

(declare-fun e!2902792 () List!51995)

(assert (=> b!4652669 (= e!2902792 Nil!51871)))

(declare-fun b!4652670 () Bool)

(assert (=> b!4652670 false))

(declare-fun Unit!117980 () Unit!117676)

(assert (=> b!4652670 (= e!2902795 Unit!117980)))

(assert (=> b!4652671 (= e!2902792 (Cons!51871 (_1!29777 (h!58004 (toList!5191 lt!1814955))) (getKeysList!741 (t!359100 (toList!5191 lt!1814955)))))))

(declare-fun c!796336 () Bool)

(assert (=> b!4652671 (= c!796336 (containsKey!2706 (t!359100 (toList!5191 lt!1814955)) (_1!29777 (h!58004 (toList!5191 lt!1814955)))))))

(declare-fun lt!1816029 () Unit!117676)

(assert (=> b!4652671 (= lt!1816029 e!2902795)))

(declare-fun c!796337 () Bool)

(assert (=> b!4652671 (= c!796337 (contains!15013 (getKeysList!741 (t!359100 (toList!5191 lt!1814955))) (_1!29777 (h!58004 (toList!5191 lt!1814955)))))))

(declare-fun lt!1816025 () Unit!117676)

(assert (=> b!4652671 (= lt!1816025 e!2902794)))

(declare-fun lt!1816024 () List!51995)

(assert (=> b!4652671 (= lt!1816024 (getKeysList!741 (t!359100 (toList!5191 lt!1814955))))))

(declare-fun lt!1816026 () Unit!117676)

(declare-fun lemmaForallContainsAddHeadPreserves!252 (List!51992 List!51995 tuple2!52966) Unit!117676)

(assert (=> b!4652671 (= lt!1816026 (lemmaForallContainsAddHeadPreserves!252 (t!359100 (toList!5191 lt!1814955)) lt!1816024 (h!58004 (toList!5191 lt!1814955))))))

(assert (=> b!4652671 (forall!11005 lt!1816024 lambda!198689)))

(declare-fun lt!1816028 () Unit!117676)

(assert (=> b!4652671 (= lt!1816028 lt!1816026)))

(assert (=> b!4652672 false))

(declare-fun lt!1816027 () Unit!117676)

(declare-fun forallContained!3214 (List!51995 Int K!13225) Unit!117676)

(assert (=> b!4652672 (= lt!1816027 (forallContained!3214 (getKeysList!741 (t!359100 (toList!5191 lt!1814955))) lambda!198688 (_1!29777 (h!58004 (toList!5191 lt!1814955)))))))

(declare-fun Unit!117982 () Unit!117676)

(assert (=> b!4652672 (= e!2902794 Unit!117982)))

(declare-fun res!1955814 () Bool)

(declare-fun e!2902793 () Bool)

(assert (=> b!4652667 (=> (not res!1955814) (not e!2902793))))

(declare-fun lt!1816023 () List!51995)

(assert (=> b!4652667 (= res!1955814 (forall!11005 lt!1816023 lambda!198690))))

(declare-fun d!1474919 () Bool)

(assert (=> d!1474919 e!2902793))

(declare-fun res!1955813 () Bool)

(assert (=> d!1474919 (=> (not res!1955813) (not e!2902793))))

(assert (=> d!1474919 (= res!1955813 (noDuplicate!831 lt!1816023))))

(assert (=> d!1474919 (= lt!1816023 e!2902792)))

(declare-fun c!796338 () Bool)

(assert (=> d!1474919 (= c!796338 ((_ is Cons!51868) (toList!5191 lt!1814955)))))

(assert (=> d!1474919 (invariantList!1290 (toList!5191 lt!1814955))))

(assert (=> d!1474919 (= (getKeysList!741 (toList!5191 lt!1814955)) lt!1816023)))

(assert (=> b!4652673 (= e!2902793 (= (content!8986 lt!1816023) (content!8986 (map!11459 (toList!5191 lt!1814955) lambda!198691))))))

(declare-fun b!4652674 () Bool)

(declare-fun res!1955812 () Bool)

(assert (=> b!4652674 (=> (not res!1955812) (not e!2902793))))

(assert (=> b!4652674 (= res!1955812 (= (length!518 lt!1816023) (length!519 (toList!5191 lt!1814955))))))

(assert (= (and d!1474919 c!796338) b!4652671))

(assert (= (and d!1474919 (not c!796338)) b!4652669))

(assert (= (and b!4652671 c!796336) b!4652670))

(assert (= (and b!4652671 (not c!796336)) b!4652666))

(assert (= (and b!4652671 c!796337) b!4652672))

(assert (= (and b!4652671 (not c!796337)) b!4652668))

(assert (= (and d!1474919 res!1955813) b!4652674))

(assert (= (and b!4652674 res!1955812) b!4652667))

(assert (= (and b!4652667 res!1955814) b!4652673))

(declare-fun m!5529325 () Bool)

(assert (=> b!4652667 m!5529325))

(declare-fun m!5529327 () Bool)

(assert (=> b!4652673 m!5529327))

(declare-fun m!5529329 () Bool)

(assert (=> b!4652673 m!5529329))

(assert (=> b!4652673 m!5529329))

(declare-fun m!5529331 () Bool)

(assert (=> b!4652673 m!5529331))

(declare-fun m!5529333 () Bool)

(assert (=> b!4652672 m!5529333))

(assert (=> b!4652672 m!5529333))

(declare-fun m!5529335 () Bool)

(assert (=> b!4652672 m!5529335))

(declare-fun m!5529337 () Bool)

(assert (=> d!1474919 m!5529337))

(assert (=> d!1474919 m!5528469))

(declare-fun m!5529339 () Bool)

(assert (=> b!4652671 m!5529339))

(declare-fun m!5529341 () Bool)

(assert (=> b!4652671 m!5529341))

(assert (=> b!4652671 m!5529333))

(declare-fun m!5529343 () Bool)

(assert (=> b!4652671 m!5529343))

(assert (=> b!4652671 m!5529333))

(declare-fun m!5529345 () Bool)

(assert (=> b!4652671 m!5529345))

(declare-fun m!5529347 () Bool)

(assert (=> b!4652674 m!5529347))

(assert (=> b!4652674 m!5527615))

(assert (=> b!4651813 d!1474919))

(declare-fun d!1474945 () Bool)

(declare-fun res!1955815 () Bool)

(declare-fun e!2902796 () Bool)

(assert (=> d!1474945 (=> res!1955815 e!2902796)))

(assert (=> d!1474945 (= res!1955815 ((_ is Nil!51868) newBucket!224))))

(assert (=> d!1474945 (= (forall!11004 newBucket!224 lambda!198476) e!2902796)))

(declare-fun b!4652677 () Bool)

(declare-fun e!2902797 () Bool)

(assert (=> b!4652677 (= e!2902796 e!2902797)))

(declare-fun res!1955816 () Bool)

(assert (=> b!4652677 (=> (not res!1955816) (not e!2902797))))

(assert (=> b!4652677 (= res!1955816 (dynLambda!21575 lambda!198476 (h!58004 newBucket!224)))))

(declare-fun b!4652678 () Bool)

(assert (=> b!4652678 (= e!2902797 (forall!11004 (t!359100 newBucket!224) lambda!198476))))

(assert (= (and d!1474945 (not res!1955815)) b!4652677))

(assert (= (and b!4652677 res!1955816) b!4652678))

(declare-fun b_lambda!173177 () Bool)

(assert (=> (not b_lambda!173177) (not b!4652677)))

(declare-fun m!5529349 () Bool)

(assert (=> b!4652677 m!5529349))

(declare-fun m!5529351 () Bool)

(assert (=> b!4652678 m!5529351))

(assert (=> d!1474365 d!1474945))

(declare-fun d!1474947 () Bool)

(declare-fun res!1955817 () Bool)

(declare-fun e!2902798 () Bool)

(assert (=> d!1474947 (=> res!1955817 e!2902798)))

(assert (=> d!1474947 (= res!1955817 ((_ is Nil!51868) newBucket!224))))

(assert (=> d!1474947 (= (forall!11004 newBucket!224 lambda!198566) e!2902798)))

(declare-fun b!4652679 () Bool)

(declare-fun e!2902799 () Bool)

(assert (=> b!4652679 (= e!2902798 e!2902799)))

(declare-fun res!1955818 () Bool)

(assert (=> b!4652679 (=> (not res!1955818) (not e!2902799))))

(assert (=> b!4652679 (= res!1955818 (dynLambda!21575 lambda!198566 (h!58004 newBucket!224)))))

(declare-fun b!4652680 () Bool)

(assert (=> b!4652680 (= e!2902799 (forall!11004 (t!359100 newBucket!224) lambda!198566))))

(assert (= (and d!1474947 (not res!1955817)) b!4652679))

(assert (= (and b!4652679 res!1955818) b!4652680))

(declare-fun b_lambda!173179 () Bool)

(assert (=> (not b_lambda!173179) (not b!4652679)))

(declare-fun m!5529353 () Bool)

(assert (=> b!4652679 m!5529353))

(declare-fun m!5529355 () Bool)

(assert (=> b!4652680 m!5529355))

(assert (=> d!1474391 d!1474947))

(assert (=> d!1474391 d!1474447))

(declare-fun d!1474949 () Bool)

(declare-fun res!1955819 () Bool)

(declare-fun e!2902800 () Bool)

(assert (=> d!1474949 (=> res!1955819 e!2902800)))

(assert (=> d!1474949 (= res!1955819 (and ((_ is Cons!51868) (t!359100 lt!1814957)) (= (_1!29777 (h!58004 (t!359100 lt!1814957))) key!4968)))))

(assert (=> d!1474949 (= (containsKey!2702 (t!359100 lt!1814957) key!4968) e!2902800)))

(declare-fun b!4652681 () Bool)

(declare-fun e!2902801 () Bool)

(assert (=> b!4652681 (= e!2902800 e!2902801)))

(declare-fun res!1955820 () Bool)

(assert (=> b!4652681 (=> (not res!1955820) (not e!2902801))))

(assert (=> b!4652681 (= res!1955820 ((_ is Cons!51868) (t!359100 lt!1814957)))))

(declare-fun b!4652682 () Bool)

(assert (=> b!4652682 (= e!2902801 (containsKey!2702 (t!359100 (t!359100 lt!1814957)) key!4968))))

(assert (= (and d!1474949 (not res!1955819)) b!4652681))

(assert (= (and b!4652681 res!1955820) b!4652682))

(declare-fun m!5529357 () Bool)

(assert (=> b!4652682 m!5529357))

(assert (=> b!4651652 d!1474949))

(assert (=> b!4651774 d!1474703))

(declare-fun d!1474951 () Bool)

(assert (=> d!1474951 (isDefined!9075 (getValueByKey!1598 (toList!5192 lt!1814960) lt!1814958))))

(declare-fun lt!1816033 () Unit!117676)

(declare-fun choose!31962 (List!51993 (_ BitVec 64)) Unit!117676)

(assert (=> d!1474951 (= lt!1816033 (choose!31962 (toList!5192 lt!1814960) lt!1814958))))

(declare-fun e!2902805 () Bool)

(assert (=> d!1474951 e!2902805))

(declare-fun res!1955823 () Bool)

(assert (=> d!1474951 (=> (not res!1955823) (not e!2902805))))

(declare-fun isStrictlySorted!570 (List!51993) Bool)

(assert (=> d!1474951 (= res!1955823 (isStrictlySorted!570 (toList!5192 lt!1814960)))))

(assert (=> d!1474951 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1500 (toList!5192 lt!1814960) lt!1814958) lt!1816033)))

(declare-fun b!4652687 () Bool)

(assert (=> b!4652687 (= e!2902805 (containsKey!2704 (toList!5192 lt!1814960) lt!1814958))))

(assert (= (and d!1474951 res!1955823) b!4652687))

(assert (=> d!1474951 m!5527055))

(assert (=> d!1474951 m!5527055))

(assert (=> d!1474951 m!5527057))

(declare-fun m!5529393 () Bool)

(assert (=> d!1474951 m!5529393))

(declare-fun m!5529395 () Bool)

(assert (=> d!1474951 m!5529395))

(assert (=> b!4652687 m!5527051))

(assert (=> b!4651668 d!1474951))

(declare-fun d!1474955 () Bool)

(declare-fun isEmpty!28998 (Option!11810) Bool)

(assert (=> d!1474955 (= (isDefined!9075 (getValueByKey!1598 (toList!5192 lt!1814960) lt!1814958)) (not (isEmpty!28998 (getValueByKey!1598 (toList!5192 lt!1814960) lt!1814958))))))

(declare-fun bs!1060947 () Bool)

(assert (= bs!1060947 d!1474955))

(assert (=> bs!1060947 m!5527055))

(declare-fun m!5529397 () Bool)

(assert (=> bs!1060947 m!5529397))

(assert (=> b!4651668 d!1474955))

(declare-fun b!4652703 () Bool)

(declare-fun e!2902815 () Option!11810)

(declare-fun e!2902816 () Option!11810)

(assert (=> b!4652703 (= e!2902815 e!2902816)))

(declare-fun c!796345 () Bool)

(assert (=> b!4652703 (= c!796345 (and ((_ is Cons!51869) (toList!5192 lt!1814960)) (not (= (_1!29778 (h!58005 (toList!5192 lt!1814960))) lt!1814958))))))

(declare-fun d!1474957 () Bool)

(declare-fun c!796344 () Bool)

(assert (=> d!1474957 (= c!796344 (and ((_ is Cons!51869) (toList!5192 lt!1814960)) (= (_1!29778 (h!58005 (toList!5192 lt!1814960))) lt!1814958)))))

(assert (=> d!1474957 (= (getValueByKey!1598 (toList!5192 lt!1814960) lt!1814958) e!2902815)))

(declare-fun b!4652704 () Bool)

(assert (=> b!4652704 (= e!2902816 (getValueByKey!1598 (t!359101 (toList!5192 lt!1814960)) lt!1814958))))

(declare-fun b!4652702 () Bool)

(assert (=> b!4652702 (= e!2902815 (Some!11809 (_2!29778 (h!58005 (toList!5192 lt!1814960)))))))

(declare-fun b!4652705 () Bool)

(assert (=> b!4652705 (= e!2902816 None!11809)))

(assert (= (and d!1474957 c!796344) b!4652702))

(assert (= (and d!1474957 (not c!796344)) b!4652703))

(assert (= (and b!4652703 c!796345) b!4652704))

(assert (= (and b!4652703 (not c!796345)) b!4652705))

(declare-fun m!5529425 () Bool)

(assert (=> b!4652704 m!5529425))

(assert (=> b!4651668 d!1474957))

(declare-fun bs!1060948 () Bool)

(declare-fun b!4652709 () Bool)

(assert (= bs!1060948 (and b!4652709 b!4652214)))

(declare-fun lambda!198693 () Int)

(assert (=> bs!1060948 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198693 lambda!198641))))

(declare-fun bs!1060949 () Bool)

(assert (= bs!1060949 (and b!4652709 d!1474815)))

(assert (=> bs!1060949 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815223) (= lambda!198693 lambda!198656))))

(declare-fun bs!1060950 () Bool)

(assert (= bs!1060950 (and b!4652709 b!4651851)))

(assert (=> bs!1060950 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198693 lambda!198586))))

(declare-fun bs!1060951 () Bool)

(assert (= bs!1060951 (and b!4652709 b!4652362)))

(assert (=> bs!1060951 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815707) (= lambda!198693 lambda!198648))))

(declare-fun bs!1060952 () Bool)

(assert (= bs!1060952 (and b!4652709 b!4652506)))

(assert (=> bs!1060952 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815841) (= lambda!198693 lambda!198660))))

(assert (=> bs!1060951 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198693 lambda!198647))))

(declare-fun bs!1060953 () Bool)

(assert (= bs!1060953 (and b!4652709 d!1474909)))

(assert (=> bs!1060953 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815939) (= lambda!198693 lambda!198675))))

(declare-fun bs!1060954 () Bool)

(assert (= bs!1060954 (and b!4652709 d!1474787)))

(assert (=> bs!1060954 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815338) (= lambda!198693 lambda!198651))))

(declare-fun bs!1060955 () Bool)

(assert (= bs!1060955 (and b!4652709 d!1474629)))

(assert (=> bs!1060955 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815539) (= lambda!198693 lambda!198623))))

(declare-fun bs!1060956 () Bool)

(assert (= bs!1060956 (and b!4652709 d!1474445)))

(assert (=> bs!1060956 (not (= lambda!198693 lambda!198577))))

(declare-fun bs!1060957 () Bool)

(assert (= bs!1060957 (and b!4652709 b!4652363)))

(assert (=> bs!1060957 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198693 lambda!198646))))

(assert (=> bs!1060948 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815624) (= lambda!198693 lambda!198643))))

(declare-fun bs!1060958 () Bool)

(assert (= bs!1060958 (and b!4652709 b!4651970)))

(assert (=> bs!1060958 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815433) (= lambda!198693 lambda!198606))))

(declare-fun bs!1060959 () Bool)

(assert (= bs!1060959 (and b!4652709 b!4651772)))

(assert (=> bs!1060959 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815244) (= lambda!198693 lambda!198569))))

(assert (=> bs!1060958 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198693 lambda!198605))))

(declare-fun bs!1060960 () Bool)

(assert (= bs!1060960 (and b!4652709 b!4652134)))

(assert (=> bs!1060960 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198693 lambda!198617))))

(declare-fun bs!1060961 () Bool)

(assert (= bs!1060961 (and b!4652709 d!1474461)))

(assert (=> bs!1060961 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815328) (= lambda!198693 lambda!198588))))

(declare-fun bs!1060962 () Bool)

(assert (= bs!1060962 (and b!4652709 d!1474783)))

(assert (=> bs!1060962 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815697) (= lambda!198693 lambda!198649))))

(declare-fun bs!1060963 () Bool)

(assert (= bs!1060963 (and b!4652709 b!4651765)))

(assert (=> bs!1060963 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815223) (= lambda!198693 lambda!198564))))

(declare-fun bs!1060964 () Bool)

(assert (= bs!1060964 (and b!4652709 b!4651844)))

(assert (=> bs!1060964 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815313) (= lambda!198693 lambda!198582))))

(declare-fun bs!1060965 () Bool)

(assert (= bs!1060965 (and b!4652709 b!4652607)))

(assert (=> bs!1060965 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815949) (= lambda!198693 lambda!198672))))

(declare-fun bs!1060966 () Bool)

(assert (= bs!1060966 (and b!4652709 d!1474663)))

(assert (=> bs!1060966 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1814962) (= lambda!198693 lambda!198633))))

(declare-fun bs!1060967 () Bool)

(assert (= bs!1060967 (and b!4652709 d!1474503)))

(assert (=> bs!1060967 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815313) (= lambda!198693 lambda!198603))))

(declare-fun bs!1060968 () Bool)

(assert (= bs!1060968 (and b!4652709 b!4651852)))

(assert (=> bs!1060968 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198693 lambda!198585))))

(declare-fun bs!1060969 () Bool)

(assert (= bs!1060969 (and b!4652709 d!1474391)))

(assert (=> bs!1060969 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815213) (= lambda!198693 lambda!198566))))

(declare-fun bs!1060970 () Bool)

(assert (= bs!1060970 (and b!4652709 d!1474365)))

(assert (=> bs!1060970 (not (= lambda!198693 lambda!198476))))

(assert (=> bs!1060960 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815549) (= lambda!198693 lambda!198618))))

(declare-fun bs!1060971 () Bool)

(assert (= bs!1060971 (and b!4652709 b!4651845)))

(assert (=> bs!1060971 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1814962) (= lambda!198693 lambda!198580))))

(declare-fun bs!1060972 () Bool)

(assert (= bs!1060972 (and b!4652709 b!4651766)))

(assert (=> bs!1060972 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198693 lambda!198562))))

(declare-fun bs!1060973 () Bool)

(assert (= bs!1060973 (and b!4652709 d!1474467)))

(assert (=> bs!1060973 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815361) (= lambda!198693 lambda!198592))))

(declare-fun bs!1060974 () Bool)

(assert (= bs!1060974 (and b!4652709 b!4651971)))

(assert (=> bs!1060974 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198693 lambda!198604))))

(declare-fun bs!1060975 () Bool)

(assert (= bs!1060975 (and b!4652709 b!4652507)))

(assert (=> bs!1060975 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198693 lambda!198657))))

(declare-fun bs!1060976 () Bool)

(assert (= bs!1060976 (and b!4652709 d!1474649)))

(assert (=> bs!1060976 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198693 lambda!198632))))

(assert (=> bs!1060963 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198693 lambda!198563))))

(declare-fun bs!1060977 () Bool)

(assert (= bs!1060977 (and b!4652709 b!4652135)))

(assert (=> bs!1060977 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198693 lambda!198616))))

(declare-fun bs!1060978 () Bool)

(assert (= bs!1060978 (and b!4652709 b!4651773)))

(assert (=> bs!1060978 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198693 lambda!198567))))

(declare-fun bs!1060979 () Bool)

(assert (= bs!1060979 (and b!4652709 d!1474887)))

(assert (=> bs!1060979 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815371) (= lambda!198693 lambda!198666))))

(assert (=> bs!1060952 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198693 lambda!198659))))

(declare-fun bs!1060980 () Bool)

(assert (= bs!1060980 (and b!4652709 d!1474531)))

(assert (=> bs!1060980 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815423) (= lambda!198693 lambda!198607))))

(declare-fun bs!1060981 () Bool)

(assert (= bs!1060981 (and b!4652709 b!4652215)))

(assert (=> bs!1060981 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198693 lambda!198635))))

(declare-fun bs!1060982 () Bool)

(assert (= bs!1060982 (and b!4652709 b!4652608)))

(assert (=> bs!1060982 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198693 lambda!198668))))

(declare-fun bs!1060983 () Bool)

(assert (= bs!1060983 (and b!4652709 d!1474687)))

(assert (=> bs!1060983 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815614) (= lambda!198693 lambda!198644))))

(declare-fun bs!1060984 () Bool)

(assert (= bs!1060984 (and b!4652709 d!1474455)))

(assert (=> bs!1060984 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815303) (= lambda!198693 lambda!198583))))

(assert (=> bs!1060965 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198693 lambda!198670))))

(declare-fun bs!1060985 () Bool)

(assert (= bs!1060985 (and b!4652709 b!4651863)))

(assert (=> bs!1060985 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198693 lambda!198589))))

(assert (=> bs!1060959 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198693 lambda!198568))))

(assert (=> bs!1060964 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1814962) (= lambda!198693 lambda!198581))))

(declare-fun bs!1060986 () Bool)

(assert (= bs!1060986 (and b!4652709 b!4651862)))

(assert (=> bs!1060986 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198693 lambda!198590))))

(declare-fun bs!1060987 () Bool)

(assert (= bs!1060987 (and b!4652709 d!1474845)))

(assert (=> bs!1060987 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815831) (= lambda!198693 lambda!198662))))

(declare-fun bs!1060988 () Bool)

(assert (= bs!1060988 (and b!4652709 d!1474425)))

(assert (=> bs!1060988 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815234) (= lambda!198693 lambda!198570))))

(assert (=> bs!1060986 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815371) (= lambda!198693 lambda!198591))))

(declare-fun bs!1060989 () Bool)

(assert (= bs!1060989 (and b!4652709 d!1474677)))

(assert (=> bs!1060989 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815244) (= lambda!198693 lambda!198634))))

(assert (=> bs!1060950 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815338) (= lambda!198693 lambda!198587))))

(assert (=> b!4652709 true))

(declare-fun bs!1060990 () Bool)

(declare-fun b!4652708 () Bool)

(assert (= bs!1060990 (and b!4652708 b!4652214)))

(declare-fun lambda!198694 () Int)

(assert (=> bs!1060990 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198694 lambda!198641))))

(declare-fun bs!1060991 () Bool)

(assert (= bs!1060991 (and b!4652708 d!1474815)))

(assert (=> bs!1060991 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815223) (= lambda!198694 lambda!198656))))

(declare-fun bs!1060992 () Bool)

(assert (= bs!1060992 (and b!4652708 b!4651851)))

(assert (=> bs!1060992 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198694 lambda!198586))))

(declare-fun bs!1060993 () Bool)

(assert (= bs!1060993 (and b!4652708 b!4652362)))

(assert (=> bs!1060993 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815707) (= lambda!198694 lambda!198648))))

(declare-fun bs!1060994 () Bool)

(assert (= bs!1060994 (and b!4652708 b!4652506)))

(assert (=> bs!1060994 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815841) (= lambda!198694 lambda!198660))))

(declare-fun bs!1060995 () Bool)

(assert (= bs!1060995 (and b!4652708 d!1474909)))

(assert (=> bs!1060995 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815939) (= lambda!198694 lambda!198675))))

(declare-fun bs!1060996 () Bool)

(assert (= bs!1060996 (and b!4652708 d!1474787)))

(assert (=> bs!1060996 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815338) (= lambda!198694 lambda!198651))))

(declare-fun bs!1060997 () Bool)

(assert (= bs!1060997 (and b!4652708 d!1474629)))

(assert (=> bs!1060997 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815539) (= lambda!198694 lambda!198623))))

(declare-fun bs!1060998 () Bool)

(assert (= bs!1060998 (and b!4652708 d!1474445)))

(assert (=> bs!1060998 (not (= lambda!198694 lambda!198577))))

(declare-fun bs!1060999 () Bool)

(assert (= bs!1060999 (and b!4652708 b!4652363)))

(assert (=> bs!1060999 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198694 lambda!198646))))

(assert (=> bs!1060990 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815624) (= lambda!198694 lambda!198643))))

(declare-fun bs!1061000 () Bool)

(assert (= bs!1061000 (and b!4652708 b!4651970)))

(assert (=> bs!1061000 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815433) (= lambda!198694 lambda!198606))))

(declare-fun bs!1061001 () Bool)

(assert (= bs!1061001 (and b!4652708 b!4651772)))

(assert (=> bs!1061001 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815244) (= lambda!198694 lambda!198569))))

(assert (=> bs!1061000 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198694 lambda!198605))))

(declare-fun bs!1061002 () Bool)

(assert (= bs!1061002 (and b!4652708 b!4652134)))

(assert (=> bs!1061002 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198694 lambda!198617))))

(declare-fun bs!1061003 () Bool)

(assert (= bs!1061003 (and b!4652708 d!1474461)))

(assert (=> bs!1061003 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815328) (= lambda!198694 lambda!198588))))

(declare-fun bs!1061004 () Bool)

(assert (= bs!1061004 (and b!4652708 d!1474783)))

(assert (=> bs!1061004 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815697) (= lambda!198694 lambda!198649))))

(declare-fun bs!1061005 () Bool)

(assert (= bs!1061005 (and b!4652708 b!4651765)))

(assert (=> bs!1061005 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815223) (= lambda!198694 lambda!198564))))

(declare-fun bs!1061006 () Bool)

(assert (= bs!1061006 (and b!4652708 b!4651844)))

(assert (=> bs!1061006 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815313) (= lambda!198694 lambda!198582))))

(declare-fun bs!1061007 () Bool)

(assert (= bs!1061007 (and b!4652708 b!4652607)))

(assert (=> bs!1061007 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815949) (= lambda!198694 lambda!198672))))

(declare-fun bs!1061009 () Bool)

(assert (= bs!1061009 (and b!4652708 d!1474663)))

(assert (=> bs!1061009 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1814962) (= lambda!198694 lambda!198633))))

(declare-fun bs!1061010 () Bool)

(assert (= bs!1061010 (and b!4652708 d!1474503)))

(assert (=> bs!1061010 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815313) (= lambda!198694 lambda!198603))))

(declare-fun bs!1061011 () Bool)

(assert (= bs!1061011 (and b!4652708 b!4651852)))

(assert (=> bs!1061011 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198694 lambda!198585))))

(declare-fun bs!1061012 () Bool)

(assert (= bs!1061012 (and b!4652708 d!1474391)))

(assert (=> bs!1061012 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815213) (= lambda!198694 lambda!198566))))

(declare-fun bs!1061013 () Bool)

(assert (= bs!1061013 (and b!4652708 d!1474365)))

(assert (=> bs!1061013 (not (= lambda!198694 lambda!198476))))

(assert (=> bs!1061002 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815549) (= lambda!198694 lambda!198618))))

(declare-fun bs!1061014 () Bool)

(assert (= bs!1061014 (and b!4652708 b!4651845)))

(assert (=> bs!1061014 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1814962) (= lambda!198694 lambda!198580))))

(assert (=> bs!1060993 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198694 lambda!198647))))

(declare-fun bs!1061016 () Bool)

(assert (= bs!1061016 (and b!4652708 b!4652709)))

(assert (=> bs!1061016 (= lambda!198694 lambda!198693)))

(declare-fun bs!1061017 () Bool)

(assert (= bs!1061017 (and b!4652708 b!4651766)))

(assert (=> bs!1061017 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198694 lambda!198562))))

(declare-fun bs!1061018 () Bool)

(assert (= bs!1061018 (and b!4652708 d!1474467)))

(assert (=> bs!1061018 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815361) (= lambda!198694 lambda!198592))))

(declare-fun bs!1061019 () Bool)

(assert (= bs!1061019 (and b!4652708 b!4651971)))

(assert (=> bs!1061019 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198694 lambda!198604))))

(declare-fun bs!1061020 () Bool)

(assert (= bs!1061020 (and b!4652708 b!4652507)))

(assert (=> bs!1061020 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198694 lambda!198657))))

(declare-fun bs!1061021 () Bool)

(assert (= bs!1061021 (and b!4652708 d!1474649)))

(assert (=> bs!1061021 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198694 lambda!198632))))

(assert (=> bs!1061005 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198694 lambda!198563))))

(declare-fun bs!1061022 () Bool)

(assert (= bs!1061022 (and b!4652708 b!4652135)))

(assert (=> bs!1061022 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198694 lambda!198616))))

(declare-fun bs!1061023 () Bool)

(assert (= bs!1061023 (and b!4652708 b!4651773)))

(assert (=> bs!1061023 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198694 lambda!198567))))

(declare-fun bs!1061024 () Bool)

(assert (= bs!1061024 (and b!4652708 d!1474887)))

(assert (=> bs!1061024 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815371) (= lambda!198694 lambda!198666))))

(assert (=> bs!1060994 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198694 lambda!198659))))

(declare-fun bs!1061025 () Bool)

(assert (= bs!1061025 (and b!4652708 d!1474531)))

(assert (=> bs!1061025 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815423) (= lambda!198694 lambda!198607))))

(declare-fun bs!1061026 () Bool)

(assert (= bs!1061026 (and b!4652708 b!4652215)))

(assert (=> bs!1061026 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198694 lambda!198635))))

(declare-fun bs!1061027 () Bool)

(assert (= bs!1061027 (and b!4652708 b!4652608)))

(assert (=> bs!1061027 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198694 lambda!198668))))

(declare-fun bs!1061028 () Bool)

(assert (= bs!1061028 (and b!4652708 d!1474687)))

(assert (=> bs!1061028 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815614) (= lambda!198694 lambda!198644))))

(declare-fun bs!1061029 () Bool)

(assert (= bs!1061029 (and b!4652708 d!1474455)))

(assert (=> bs!1061029 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815303) (= lambda!198694 lambda!198583))))

(assert (=> bs!1061007 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198694 lambda!198670))))

(declare-fun bs!1061030 () Bool)

(assert (= bs!1061030 (and b!4652708 b!4651863)))

(assert (=> bs!1061030 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198694 lambda!198589))))

(assert (=> bs!1061001 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198694 lambda!198568))))

(assert (=> bs!1061006 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1814962) (= lambda!198694 lambda!198581))))

(declare-fun bs!1061031 () Bool)

(assert (= bs!1061031 (and b!4652708 b!4651862)))

(assert (=> bs!1061031 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198694 lambda!198590))))

(declare-fun bs!1061032 () Bool)

(assert (= bs!1061032 (and b!4652708 d!1474845)))

(assert (=> bs!1061032 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815831) (= lambda!198694 lambda!198662))))

(declare-fun bs!1061033 () Bool)

(assert (= bs!1061033 (and b!4652708 d!1474425)))

(assert (=> bs!1061033 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815234) (= lambda!198694 lambda!198570))))

(assert (=> bs!1061031 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815371) (= lambda!198694 lambda!198591))))

(declare-fun bs!1061034 () Bool)

(assert (= bs!1061034 (and b!4652708 d!1474677)))

(assert (=> bs!1061034 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815244) (= lambda!198694 lambda!198634))))

(assert (=> bs!1060992 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1815338) (= lambda!198694 lambda!198587))))

(assert (=> b!4652708 true))

(declare-fun lt!1816048 () ListMap!4529)

(declare-fun lambda!198695 () Int)

(assert (=> bs!1060990 (= (= lt!1816048 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198695 lambda!198641))))

(assert (=> bs!1060991 (= (= lt!1816048 lt!1815223) (= lambda!198695 lambda!198656))))

(assert (=> bs!1060992 (= (= lt!1816048 (ListMap!4530 Nil!51868)) (= lambda!198695 lambda!198586))))

(assert (=> bs!1060993 (= (= lt!1816048 lt!1815707) (= lambda!198695 lambda!198648))))

(assert (=> bs!1060995 (= (= lt!1816048 lt!1815939) (= lambda!198695 lambda!198675))))

(assert (=> bs!1060996 (= (= lt!1816048 lt!1815338) (= lambda!198695 lambda!198651))))

(assert (=> bs!1060997 (= (= lt!1816048 lt!1815539) (= lambda!198695 lambda!198623))))

(assert (=> bs!1060998 (not (= lambda!198695 lambda!198577))))

(assert (=> bs!1060999 (= (= lt!1816048 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198695 lambda!198646))))

(assert (=> bs!1060990 (= (= lt!1816048 lt!1815624) (= lambda!198695 lambda!198643))))

(assert (=> bs!1061000 (= (= lt!1816048 lt!1815433) (= lambda!198695 lambda!198606))))

(assert (=> bs!1061001 (= (= lt!1816048 lt!1815244) (= lambda!198695 lambda!198569))))

(assert (=> bs!1061000 (= (= lt!1816048 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198695 lambda!198605))))

(assert (=> bs!1061002 (= (= lt!1816048 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198695 lambda!198617))))

(assert (=> bs!1061003 (= (= lt!1816048 lt!1815328) (= lambda!198695 lambda!198588))))

(assert (=> bs!1061004 (= (= lt!1816048 lt!1815697) (= lambda!198695 lambda!198649))))

(assert (=> bs!1061005 (= (= lt!1816048 lt!1815223) (= lambda!198695 lambda!198564))))

(assert (=> bs!1061006 (= (= lt!1816048 lt!1815313) (= lambda!198695 lambda!198582))))

(assert (=> bs!1061007 (= (= lt!1816048 lt!1815949) (= lambda!198695 lambda!198672))))

(assert (=> bs!1061009 (= (= lt!1816048 lt!1814962) (= lambda!198695 lambda!198633))))

(assert (=> bs!1061010 (= (= lt!1816048 lt!1815313) (= lambda!198695 lambda!198603))))

(assert (=> bs!1061011 (= (= lt!1816048 (ListMap!4530 Nil!51868)) (= lambda!198695 lambda!198585))))

(assert (=> bs!1061012 (= (= lt!1816048 lt!1815213) (= lambda!198695 lambda!198566))))

(assert (=> bs!1061013 (not (= lambda!198695 lambda!198476))))

(assert (=> bs!1061002 (= (= lt!1816048 lt!1815549) (= lambda!198695 lambda!198618))))

(assert (=> bs!1061014 (= (= lt!1816048 lt!1814962) (= lambda!198695 lambda!198580))))

(assert (=> bs!1060994 (= (= lt!1816048 lt!1815841) (= lambda!198695 lambda!198660))))

(assert (=> b!4652708 (= (= lt!1816048 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) (= lambda!198695 lambda!198694))))

(assert (=> bs!1060993 (= (= lt!1816048 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198695 lambda!198647))))

(assert (=> bs!1061016 (= (= lt!1816048 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) (= lambda!198695 lambda!198693))))

(assert (=> bs!1061017 (= (= lt!1816048 (ListMap!4530 Nil!51868)) (= lambda!198695 lambda!198562))))

(assert (=> bs!1061018 (= (= lt!1816048 lt!1815361) (= lambda!198695 lambda!198592))))

(assert (=> bs!1061019 (= (= lt!1816048 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198695 lambda!198604))))

(assert (=> bs!1061020 (= (= lt!1816048 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198695 lambda!198657))))

(assert (=> bs!1061021 (= (= lt!1816048 (ListMap!4530 Nil!51868)) (= lambda!198695 lambda!198632))))

(assert (=> bs!1061005 (= (= lt!1816048 (ListMap!4530 Nil!51868)) (= lambda!198695 lambda!198563))))

(assert (=> bs!1061022 (= (= lt!1816048 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198695 lambda!198616))))

(assert (=> bs!1061023 (= (= lt!1816048 (ListMap!4530 Nil!51868)) (= lambda!198695 lambda!198567))))

(assert (=> bs!1061024 (= (= lt!1816048 lt!1815371) (= lambda!198695 lambda!198666))))

(assert (=> bs!1060994 (= (= lt!1816048 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198695 lambda!198659))))

(assert (=> bs!1061025 (= (= lt!1816048 lt!1815423) (= lambda!198695 lambda!198607))))

(assert (=> bs!1061026 (= (= lt!1816048 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198695 lambda!198635))))

(assert (=> bs!1061027 (= (= lt!1816048 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198695 lambda!198668))))

(assert (=> bs!1061028 (= (= lt!1816048 lt!1815614) (= lambda!198695 lambda!198644))))

(assert (=> bs!1061029 (= (= lt!1816048 lt!1815303) (= lambda!198695 lambda!198583))))

(assert (=> bs!1061007 (= (= lt!1816048 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198695 lambda!198670))))

(assert (=> bs!1061030 (= (= lt!1816048 (ListMap!4530 Nil!51868)) (= lambda!198695 lambda!198589))))

(assert (=> bs!1061001 (= (= lt!1816048 (ListMap!4530 Nil!51868)) (= lambda!198695 lambda!198568))))

(assert (=> bs!1061006 (= (= lt!1816048 lt!1814962) (= lambda!198695 lambda!198581))))

(assert (=> bs!1061031 (= (= lt!1816048 (ListMap!4530 Nil!51868)) (= lambda!198695 lambda!198590))))

(assert (=> bs!1061032 (= (= lt!1816048 lt!1815831) (= lambda!198695 lambda!198662))))

(assert (=> bs!1061033 (= (= lt!1816048 lt!1815234) (= lambda!198695 lambda!198570))))

(assert (=> bs!1061031 (= (= lt!1816048 lt!1815371) (= lambda!198695 lambda!198591))))

(assert (=> bs!1061034 (= (= lt!1816048 lt!1815244) (= lambda!198695 lambda!198634))))

(assert (=> bs!1060992 (= (= lt!1816048 lt!1815338) (= lambda!198695 lambda!198587))))

(assert (=> b!4652708 true))

(declare-fun bs!1061035 () Bool)

(declare-fun d!1474967 () Bool)

(assert (= bs!1061035 (and d!1474967 b!4652708)))

(declare-fun lambda!198696 () Int)

(declare-fun lt!1816038 () ListMap!4529)

(assert (=> bs!1061035 (= (= lt!1816038 lt!1816048) (= lambda!198696 lambda!198695))))

(declare-fun bs!1061036 () Bool)

(assert (= bs!1061036 (and d!1474967 b!4652214)))

(assert (=> bs!1061036 (= (= lt!1816038 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198696 lambda!198641))))

(declare-fun bs!1061037 () Bool)

(assert (= bs!1061037 (and d!1474967 d!1474815)))

(assert (=> bs!1061037 (= (= lt!1816038 lt!1815223) (= lambda!198696 lambda!198656))))

(declare-fun bs!1061038 () Bool)

(assert (= bs!1061038 (and d!1474967 b!4651851)))

(assert (=> bs!1061038 (= (= lt!1816038 (ListMap!4530 Nil!51868)) (= lambda!198696 lambda!198586))))

(declare-fun bs!1061039 () Bool)

(assert (= bs!1061039 (and d!1474967 b!4652362)))

(assert (=> bs!1061039 (= (= lt!1816038 lt!1815707) (= lambda!198696 lambda!198648))))

(declare-fun bs!1061040 () Bool)

(assert (= bs!1061040 (and d!1474967 d!1474909)))

(assert (=> bs!1061040 (= (= lt!1816038 lt!1815939) (= lambda!198696 lambda!198675))))

(declare-fun bs!1061041 () Bool)

(assert (= bs!1061041 (and d!1474967 d!1474787)))

(assert (=> bs!1061041 (= (= lt!1816038 lt!1815338) (= lambda!198696 lambda!198651))))

(declare-fun bs!1061042 () Bool)

(assert (= bs!1061042 (and d!1474967 d!1474629)))

(assert (=> bs!1061042 (= (= lt!1816038 lt!1815539) (= lambda!198696 lambda!198623))))

(declare-fun bs!1061043 () Bool)

(assert (= bs!1061043 (and d!1474967 d!1474445)))

(assert (=> bs!1061043 (not (= lambda!198696 lambda!198577))))

(declare-fun bs!1061044 () Bool)

(assert (= bs!1061044 (and d!1474967 b!4652363)))

(assert (=> bs!1061044 (= (= lt!1816038 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198696 lambda!198646))))

(assert (=> bs!1061036 (= (= lt!1816038 lt!1815624) (= lambda!198696 lambda!198643))))

(declare-fun bs!1061045 () Bool)

(assert (= bs!1061045 (and d!1474967 b!4651970)))

(assert (=> bs!1061045 (= (= lt!1816038 lt!1815433) (= lambda!198696 lambda!198606))))

(declare-fun bs!1061046 () Bool)

(assert (= bs!1061046 (and d!1474967 b!4651772)))

(assert (=> bs!1061046 (= (= lt!1816038 lt!1815244) (= lambda!198696 lambda!198569))))

(assert (=> bs!1061045 (= (= lt!1816038 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198696 lambda!198605))))

(declare-fun bs!1061047 () Bool)

(assert (= bs!1061047 (and d!1474967 b!4652134)))

(assert (=> bs!1061047 (= (= lt!1816038 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198696 lambda!198617))))

(declare-fun bs!1061048 () Bool)

(assert (= bs!1061048 (and d!1474967 d!1474461)))

(assert (=> bs!1061048 (= (= lt!1816038 lt!1815328) (= lambda!198696 lambda!198588))))

(declare-fun bs!1061049 () Bool)

(assert (= bs!1061049 (and d!1474967 d!1474783)))

(assert (=> bs!1061049 (= (= lt!1816038 lt!1815697) (= lambda!198696 lambda!198649))))

(declare-fun bs!1061050 () Bool)

(assert (= bs!1061050 (and d!1474967 b!4651765)))

(assert (=> bs!1061050 (= (= lt!1816038 lt!1815223) (= lambda!198696 lambda!198564))))

(declare-fun bs!1061051 () Bool)

(assert (= bs!1061051 (and d!1474967 b!4651844)))

(assert (=> bs!1061051 (= (= lt!1816038 lt!1815313) (= lambda!198696 lambda!198582))))

(declare-fun bs!1061052 () Bool)

(assert (= bs!1061052 (and d!1474967 b!4652607)))

(assert (=> bs!1061052 (= (= lt!1816038 lt!1815949) (= lambda!198696 lambda!198672))))

(declare-fun bs!1061053 () Bool)

(assert (= bs!1061053 (and d!1474967 d!1474663)))

(assert (=> bs!1061053 (= (= lt!1816038 lt!1814962) (= lambda!198696 lambda!198633))))

(declare-fun bs!1061054 () Bool)

(assert (= bs!1061054 (and d!1474967 d!1474503)))

(assert (=> bs!1061054 (= (= lt!1816038 lt!1815313) (= lambda!198696 lambda!198603))))

(declare-fun bs!1061055 () Bool)

(assert (= bs!1061055 (and d!1474967 b!4651852)))

(assert (=> bs!1061055 (= (= lt!1816038 (ListMap!4530 Nil!51868)) (= lambda!198696 lambda!198585))))

(declare-fun bs!1061056 () Bool)

(assert (= bs!1061056 (and d!1474967 d!1474391)))

(assert (=> bs!1061056 (= (= lt!1816038 lt!1815213) (= lambda!198696 lambda!198566))))

(declare-fun bs!1061057 () Bool)

(assert (= bs!1061057 (and d!1474967 d!1474365)))

(assert (=> bs!1061057 (not (= lambda!198696 lambda!198476))))

(assert (=> bs!1061047 (= (= lt!1816038 lt!1815549) (= lambda!198696 lambda!198618))))

(declare-fun bs!1061058 () Bool)

(assert (= bs!1061058 (and d!1474967 b!4651845)))

(assert (=> bs!1061058 (= (= lt!1816038 lt!1814962) (= lambda!198696 lambda!198580))))

(declare-fun bs!1061059 () Bool)

(assert (= bs!1061059 (and d!1474967 b!4652506)))

(assert (=> bs!1061059 (= (= lt!1816038 lt!1815841) (= lambda!198696 lambda!198660))))

(assert (=> bs!1061035 (= (= lt!1816038 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) (= lambda!198696 lambda!198694))))

(assert (=> bs!1061039 (= (= lt!1816038 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198696 lambda!198647))))

(declare-fun bs!1061060 () Bool)

(assert (= bs!1061060 (and d!1474967 b!4652709)))

(assert (=> bs!1061060 (= (= lt!1816038 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) (= lambda!198696 lambda!198693))))

(declare-fun bs!1061061 () Bool)

(assert (= bs!1061061 (and d!1474967 b!4651766)))

(assert (=> bs!1061061 (= (= lt!1816038 (ListMap!4530 Nil!51868)) (= lambda!198696 lambda!198562))))

(declare-fun bs!1061062 () Bool)

(assert (= bs!1061062 (and d!1474967 d!1474467)))

(assert (=> bs!1061062 (= (= lt!1816038 lt!1815361) (= lambda!198696 lambda!198592))))

(declare-fun bs!1061063 () Bool)

(assert (= bs!1061063 (and d!1474967 b!4651971)))

(assert (=> bs!1061063 (= (= lt!1816038 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198696 lambda!198604))))

(declare-fun bs!1061064 () Bool)

(assert (= bs!1061064 (and d!1474967 b!4652507)))

(assert (=> bs!1061064 (= (= lt!1816038 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198696 lambda!198657))))

(declare-fun bs!1061065 () Bool)

(assert (= bs!1061065 (and d!1474967 d!1474649)))

(assert (=> bs!1061065 (= (= lt!1816038 (ListMap!4530 Nil!51868)) (= lambda!198696 lambda!198632))))

(assert (=> bs!1061050 (= (= lt!1816038 (ListMap!4530 Nil!51868)) (= lambda!198696 lambda!198563))))

(declare-fun bs!1061066 () Bool)

(assert (= bs!1061066 (and d!1474967 b!4652135)))

(assert (=> bs!1061066 (= (= lt!1816038 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198696 lambda!198616))))

(declare-fun bs!1061067 () Bool)

(assert (= bs!1061067 (and d!1474967 b!4651773)))

(assert (=> bs!1061067 (= (= lt!1816038 (ListMap!4530 Nil!51868)) (= lambda!198696 lambda!198567))))

(declare-fun bs!1061068 () Bool)

(assert (= bs!1061068 (and d!1474967 d!1474887)))

(assert (=> bs!1061068 (= (= lt!1816038 lt!1815371) (= lambda!198696 lambda!198666))))

(assert (=> bs!1061059 (= (= lt!1816038 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198696 lambda!198659))))

(declare-fun bs!1061069 () Bool)

(assert (= bs!1061069 (and d!1474967 d!1474531)))

(assert (=> bs!1061069 (= (= lt!1816038 lt!1815423) (= lambda!198696 lambda!198607))))

(declare-fun bs!1061070 () Bool)

(assert (= bs!1061070 (and d!1474967 b!4652215)))

(assert (=> bs!1061070 (= (= lt!1816038 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198696 lambda!198635))))

(declare-fun bs!1061071 () Bool)

(assert (= bs!1061071 (and d!1474967 b!4652608)))

(assert (=> bs!1061071 (= (= lt!1816038 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198696 lambda!198668))))

(declare-fun bs!1061072 () Bool)

(assert (= bs!1061072 (and d!1474967 d!1474687)))

(assert (=> bs!1061072 (= (= lt!1816038 lt!1815614) (= lambda!198696 lambda!198644))))

(declare-fun bs!1061073 () Bool)

(assert (= bs!1061073 (and d!1474967 d!1474455)))

(assert (=> bs!1061073 (= (= lt!1816038 lt!1815303) (= lambda!198696 lambda!198583))))

(assert (=> bs!1061052 (= (= lt!1816038 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198696 lambda!198670))))

(declare-fun bs!1061074 () Bool)

(assert (= bs!1061074 (and d!1474967 b!4651863)))

(assert (=> bs!1061074 (= (= lt!1816038 (ListMap!4530 Nil!51868)) (= lambda!198696 lambda!198589))))

(assert (=> bs!1061046 (= (= lt!1816038 (ListMap!4530 Nil!51868)) (= lambda!198696 lambda!198568))))

(assert (=> bs!1061051 (= (= lt!1816038 lt!1814962) (= lambda!198696 lambda!198581))))

(declare-fun bs!1061075 () Bool)

(assert (= bs!1061075 (and d!1474967 b!4651862)))

(assert (=> bs!1061075 (= (= lt!1816038 (ListMap!4530 Nil!51868)) (= lambda!198696 lambda!198590))))

(declare-fun bs!1061076 () Bool)

(assert (= bs!1061076 (and d!1474967 d!1474845)))

(assert (=> bs!1061076 (= (= lt!1816038 lt!1815831) (= lambda!198696 lambda!198662))))

(declare-fun bs!1061077 () Bool)

(assert (= bs!1061077 (and d!1474967 d!1474425)))

(assert (=> bs!1061077 (= (= lt!1816038 lt!1815234) (= lambda!198696 lambda!198570))))

(assert (=> bs!1061075 (= (= lt!1816038 lt!1815371) (= lambda!198696 lambda!198591))))

(declare-fun bs!1061078 () Bool)

(assert (= bs!1061078 (and d!1474967 d!1474677)))

(assert (=> bs!1061078 (= (= lt!1816038 lt!1815244) (= lambda!198696 lambda!198634))))

(assert (=> bs!1061038 (= (= lt!1816038 lt!1815338) (= lambda!198696 lambda!198587))))

(assert (=> d!1474967 true))

(declare-fun e!2902819 () Bool)

(assert (=> d!1474967 e!2902819))

(declare-fun res!1955832 () Bool)

(assert (=> d!1474967 (=> (not res!1955832) (not e!2902819))))

(assert (=> d!1474967 (= res!1955832 (forall!11004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lambda!198696))))

(declare-fun e!2902817 () ListMap!4529)

(assert (=> d!1474967 (= lt!1816038 e!2902817)))

(declare-fun c!796346 () Bool)

(assert (=> d!1474967 (= c!796346 ((_ is Nil!51868) (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))))))

(assert (=> d!1474967 (noDuplicateKeys!1630 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))))))

(assert (=> d!1474967 (= (addToMapMapFromBucket!1087 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) lt!1816038)))

(declare-fun b!4652706 () Bool)

(declare-fun res!1955830 () Bool)

(assert (=> b!4652706 (=> (not res!1955830) (not e!2902819))))

(assert (=> b!4652706 (= res!1955830 (forall!11004 (toList!5191 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) lambda!198696))))

(declare-fun bm!325077 () Bool)

(declare-fun call!325083 () Bool)

(assert (=> bm!325077 (= call!325083 (forall!11004 (ite c!796346 (toList!5191 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) (t!359100 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))))) (ite c!796346 lambda!198693 lambda!198695)))))

(declare-fun call!325084 () Bool)

(declare-fun bm!325078 () Bool)

(assert (=> bm!325078 (= call!325084 (forall!11004 (toList!5191 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) (ite c!796346 lambda!198693 lambda!198695)))))

(declare-fun b!4652707 () Bool)

(assert (=> b!4652707 (= e!2902819 (invariantList!1290 (toList!5191 lt!1816038)))))

(assert (=> b!4652708 (= e!2902817 lt!1816048)))

(declare-fun lt!1816043 () ListMap!4529)

(assert (=> b!4652708 (= lt!1816043 (+!1974 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (h!58004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))))))))

(assert (=> b!4652708 (= lt!1816048 (addToMapMapFromBucket!1087 (t!359100 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) (+!1974 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (h!58004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))))))))

(declare-fun lt!1816041 () Unit!117676)

(declare-fun call!325082 () Unit!117676)

(assert (=> b!4652708 (= lt!1816041 call!325082)))

(assert (=> b!4652708 (forall!11004 (toList!5191 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) lambda!198694)))

(declare-fun lt!1816051 () Unit!117676)

(assert (=> b!4652708 (= lt!1816051 lt!1816041)))

(assert (=> b!4652708 (forall!11004 (toList!5191 lt!1816043) lambda!198695)))

(declare-fun lt!1816050 () Unit!117676)

(declare-fun Unit!117996 () Unit!117676)

(assert (=> b!4652708 (= lt!1816050 Unit!117996)))

(assert (=> b!4652708 call!325083))

(declare-fun lt!1816042 () Unit!117676)

(declare-fun Unit!117997 () Unit!117676)

(assert (=> b!4652708 (= lt!1816042 Unit!117997)))

(declare-fun lt!1816047 () Unit!117676)

(declare-fun Unit!117998 () Unit!117676)

(assert (=> b!4652708 (= lt!1816047 Unit!117998)))

(declare-fun lt!1816039 () Unit!117676)

(assert (=> b!4652708 (= lt!1816039 (forallContained!3212 (toList!5191 lt!1816043) lambda!198695 (h!58004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))))))))

(assert (=> b!4652708 (contains!15011 lt!1816043 (_1!29777 (h!58004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))))))))

(declare-fun lt!1816056 () Unit!117676)

(declare-fun Unit!117999 () Unit!117676)

(assert (=> b!4652708 (= lt!1816056 Unit!117999)))

(assert (=> b!4652708 (contains!15011 lt!1816048 (_1!29777 (h!58004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))))))))

(declare-fun lt!1816046 () Unit!117676)

(declare-fun Unit!118001 () Unit!117676)

(assert (=> b!4652708 (= lt!1816046 Unit!118001)))

(assert (=> b!4652708 (forall!11004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lambda!198695)))

(declare-fun lt!1816052 () Unit!117676)

(declare-fun Unit!118002 () Unit!117676)

(assert (=> b!4652708 (= lt!1816052 Unit!118002)))

(assert (=> b!4652708 (forall!11004 (toList!5191 lt!1816043) lambda!198695)))

(declare-fun lt!1816049 () Unit!117676)

(declare-fun Unit!118003 () Unit!117676)

(assert (=> b!4652708 (= lt!1816049 Unit!118003)))

(declare-fun lt!1816058 () Unit!117676)

(declare-fun Unit!118004 () Unit!117676)

(assert (=> b!4652708 (= lt!1816058 Unit!118004)))

(declare-fun lt!1816040 () Unit!117676)

(assert (=> b!4652708 (= lt!1816040 (addForallContainsKeyThenBeforeAdding!589 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1816048 (_1!29777 (h!58004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))))) (_2!29777 (h!58004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))))))))

(assert (=> b!4652708 call!325084))

(declare-fun lt!1816045 () Unit!117676)

(assert (=> b!4652708 (= lt!1816045 lt!1816040)))

(assert (=> b!4652708 (forall!11004 (toList!5191 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) lambda!198695)))

(declare-fun lt!1816054 () Unit!117676)

(declare-fun Unit!118005 () Unit!117676)

(assert (=> b!4652708 (= lt!1816054 Unit!118005)))

(declare-fun res!1955831 () Bool)

(assert (=> b!4652708 (= res!1955831 (forall!11004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lambda!198695))))

(declare-fun e!2902818 () Bool)

(assert (=> b!4652708 (=> (not res!1955831) (not e!2902818))))

(assert (=> b!4652708 e!2902818))

(declare-fun lt!1816044 () Unit!117676)

(declare-fun Unit!118006 () Unit!117676)

(assert (=> b!4652708 (= lt!1816044 Unit!118006)))

(assert (=> b!4652709 (= e!2902817 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))))))

(declare-fun lt!1816057 () Unit!117676)

(assert (=> b!4652709 (= lt!1816057 call!325082)))

(assert (=> b!4652709 call!325084))

(declare-fun lt!1816055 () Unit!117676)

(assert (=> b!4652709 (= lt!1816055 lt!1816057)))

(assert (=> b!4652709 call!325083))

(declare-fun lt!1816053 () Unit!117676)

(declare-fun Unit!118007 () Unit!117676)

(assert (=> b!4652709 (= lt!1816053 Unit!118007)))

(declare-fun bm!325079 () Bool)

(assert (=> bm!325079 (= call!325082 (lemmaContainsAllItsOwnKeys!590 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))))))

(declare-fun b!4652710 () Bool)

(assert (=> b!4652710 (= e!2902818 (forall!11004 (toList!5191 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) lambda!198695))))

(assert (= (and d!1474967 c!796346) b!4652709))

(assert (= (and d!1474967 (not c!796346)) b!4652708))

(assert (= (and b!4652708 res!1955831) b!4652710))

(assert (= (or b!4652709 b!4652708) bm!325079))

(assert (= (or b!4652709 b!4652708) bm!325077))

(assert (= (or b!4652709 b!4652708) bm!325078))

(assert (= (and d!1474967 res!1955832) b!4652706))

(assert (= (and b!4652706 res!1955830) b!4652707))

(declare-fun m!5529433 () Bool)

(assert (=> b!4652710 m!5529433))

(declare-fun m!5529435 () Bool)

(assert (=> b!4652707 m!5529435))

(declare-fun m!5529437 () Bool)

(assert (=> b!4652706 m!5529437))

(assert (=> bm!325079 m!5527433))

(declare-fun m!5529439 () Bool)

(assert (=> bm!325079 m!5529439))

(declare-fun m!5529441 () Bool)

(assert (=> bm!325077 m!5529441))

(declare-fun m!5529443 () Bool)

(assert (=> d!1474967 m!5529443))

(declare-fun m!5529445 () Bool)

(assert (=> d!1474967 m!5529445))

(declare-fun m!5529447 () Bool)

(assert (=> bm!325078 m!5529447))

(declare-fun m!5529449 () Bool)

(assert (=> b!4652708 m!5529449))

(declare-fun m!5529451 () Bool)

(assert (=> b!4652708 m!5529451))

(assert (=> b!4652708 m!5529451))

(declare-fun m!5529453 () Bool)

(assert (=> b!4652708 m!5529453))

(declare-fun m!5529455 () Bool)

(assert (=> b!4652708 m!5529455))

(assert (=> b!4652708 m!5529433))

(declare-fun m!5529457 () Bool)

(assert (=> b!4652708 m!5529457))

(declare-fun m!5529459 () Bool)

(assert (=> b!4652708 m!5529459))

(assert (=> b!4652708 m!5529457))

(assert (=> b!4652708 m!5527433))

(assert (=> b!4652708 m!5529453))

(declare-fun m!5529461 () Bool)

(assert (=> b!4652708 m!5529461))

(assert (=> b!4652708 m!5527433))

(declare-fun m!5529463 () Bool)

(assert (=> b!4652708 m!5529463))

(declare-fun m!5529465 () Bool)

(assert (=> b!4652708 m!5529465))

(assert (=> b!4651838 d!1474967))

(declare-fun bs!1061079 () Bool)

(declare-fun d!1474975 () Bool)

(assert (= bs!1061079 (and d!1474975 d!1474451)))

(declare-fun lambda!198697 () Int)

(assert (=> bs!1061079 (= lambda!198697 lambda!198578)))

(declare-fun bs!1061080 () Bool)

(assert (= bs!1061080 (and d!1474975 d!1474441)))

(assert (=> bs!1061080 (= lambda!198697 lambda!198576)))

(declare-fun bs!1061081 () Bool)

(assert (= bs!1061081 (and d!1474975 b!4651587)))

(assert (=> bs!1061081 (= lambda!198697 lambda!198470)))

(declare-fun bs!1061082 () Bool)

(assert (= bs!1061082 (and d!1474975 d!1474641)))

(assert (=> bs!1061082 (= lambda!198697 lambda!198625)))

(declare-fun bs!1061083 () Bool)

(assert (= bs!1061083 (and d!1474975 d!1474429)))

(assert (=> bs!1061083 (not (= lambda!198697 lambda!198573))))

(declare-fun bs!1061084 () Bool)

(assert (= bs!1061084 (and d!1474975 d!1474453)))

(assert (=> bs!1061084 (= lambda!198697 lambda!198579)))

(declare-fun bs!1061085 () Bool)

(assert (= bs!1061085 (and d!1474975 d!1474457)))

(assert (=> bs!1061085 (= lambda!198697 lambda!198584)))

(declare-fun lt!1816063 () ListMap!4529)

(assert (=> d!1474975 (invariantList!1290 (toList!5191 lt!1816063))))

(declare-fun e!2902826 () ListMap!4529)

(assert (=> d!1474975 (= lt!1816063 e!2902826)))

(declare-fun c!796351 () Bool)

(assert (=> d!1474975 (= c!796351 ((_ is Cons!51869) (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))))))

(assert (=> d!1474975 (forall!11002 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)) lambda!198697)))

(assert (=> d!1474975 (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) lt!1816063)))

(declare-fun b!4652721 () Bool)

(assert (=> b!4652721 (= e!2902826 (addToMapMapFromBucket!1087 (_2!29778 (h!58005 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) (extractMap!1686 (t!359101 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))))))))

(declare-fun b!4652722 () Bool)

(assert (=> b!4652722 (= e!2902826 (ListMap!4530 Nil!51868))))

(assert (= (and d!1474975 c!796351) b!4652721))

(assert (= (and d!1474975 (not c!796351)) b!4652722))

(declare-fun m!5529467 () Bool)

(assert (=> d!1474975 m!5529467))

(declare-fun m!5529469 () Bool)

(assert (=> d!1474975 m!5529469))

(declare-fun m!5529471 () Bool)

(assert (=> b!4652721 m!5529471))

(assert (=> b!4652721 m!5529471))

(declare-fun m!5529473 () Bool)

(assert (=> b!4652721 m!5529473))

(assert (=> b!4651838 d!1474975))

(declare-fun d!1474977 () Bool)

(declare-fun res!1955835 () Bool)

(declare-fun e!2902829 () Bool)

(assert (=> d!1474977 (=> res!1955835 e!2902829)))

(assert (=> d!1474977 (= res!1955835 ((_ is Nil!51868) oldBucket!40))))

(assert (=> d!1474977 (= (forall!11004 oldBucket!40 lambda!198577) e!2902829)))

(declare-fun b!4652727 () Bool)

(declare-fun e!2902830 () Bool)

(assert (=> b!4652727 (= e!2902829 e!2902830)))

(declare-fun res!1955836 () Bool)

(assert (=> b!4652727 (=> (not res!1955836) (not e!2902830))))

(assert (=> b!4652727 (= res!1955836 (dynLambda!21575 lambda!198577 (h!58004 oldBucket!40)))))

(declare-fun b!4652728 () Bool)

(assert (=> b!4652728 (= e!2902830 (forall!11004 (t!359100 oldBucket!40) lambda!198577))))

(assert (= (and d!1474977 (not res!1955835)) b!4652727))

(assert (= (and b!4652727 res!1955836) b!4652728))

(declare-fun b_lambda!173185 () Bool)

(assert (=> (not b_lambda!173185) (not b!4652727)))

(declare-fun m!5529475 () Bool)

(assert (=> b!4652727 m!5529475))

(declare-fun m!5529477 () Bool)

(assert (=> b!4652728 m!5529477))

(assert (=> d!1474445 d!1474977))

(assert (=> b!4651670 d!1474955))

(assert (=> b!4651670 d!1474957))

(declare-fun d!1474979 () Bool)

(declare-fun res!1955837 () Bool)

(declare-fun e!2902831 () Bool)

(assert (=> d!1474979 (=> res!1955837 e!2902831)))

(assert (=> d!1474979 (= res!1955837 ((_ is Nil!51868) (ite c!796149 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 newBucket!224))))))

(assert (=> d!1474979 (= (forall!11004 (ite c!796149 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 newBucket!224)) (ite c!796149 lambda!198562 lambda!198564)) e!2902831)))

(declare-fun b!4652729 () Bool)

(declare-fun e!2902832 () Bool)

(assert (=> b!4652729 (= e!2902831 e!2902832)))

(declare-fun res!1955838 () Bool)

(assert (=> b!4652729 (=> (not res!1955838) (not e!2902832))))

(assert (=> b!4652729 (= res!1955838 (dynLambda!21575 (ite c!796149 lambda!198562 lambda!198564) (h!58004 (ite c!796149 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 newBucket!224)))))))

(declare-fun b!4652730 () Bool)

(assert (=> b!4652730 (= e!2902832 (forall!11004 (t!359100 (ite c!796149 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 newBucket!224))) (ite c!796149 lambda!198562 lambda!198564)))))

(assert (= (and d!1474979 (not res!1955837)) b!4652729))

(assert (= (and b!4652729 res!1955838) b!4652730))

(declare-fun b_lambda!173187 () Bool)

(assert (=> (not b_lambda!173187) (not b!4652729)))

(declare-fun m!5529479 () Bool)

(assert (=> b!4652729 m!5529479))

(declare-fun m!5529481 () Bool)

(assert (=> b!4652730 m!5529481))

(assert (=> bm!324971 d!1474979))

(declare-fun bs!1061086 () Bool)

(declare-fun b!4652740 () Bool)

(assert (= bs!1061086 (and b!4652740 b!4652708)))

(declare-fun lambda!198706 () Int)

(assert (=> bs!1061086 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1816048) (= lambda!198706 lambda!198695))))

(declare-fun bs!1061087 () Bool)

(assert (= bs!1061087 (and b!4652740 b!4652214)))

(assert (=> bs!1061087 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198706 lambda!198641))))

(declare-fun bs!1061088 () Bool)

(assert (= bs!1061088 (and b!4652740 d!1474815)))

(assert (=> bs!1061088 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815223) (= lambda!198706 lambda!198656))))

(declare-fun bs!1061089 () Bool)

(assert (= bs!1061089 (and b!4652740 b!4651851)))

(assert (=> bs!1061089 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198706 lambda!198586))))

(declare-fun bs!1061090 () Bool)

(assert (= bs!1061090 (and b!4652740 b!4652362)))

(assert (=> bs!1061090 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815707) (= lambda!198706 lambda!198648))))

(declare-fun bs!1061091 () Bool)

(assert (= bs!1061091 (and b!4652740 d!1474909)))

(assert (=> bs!1061091 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815939) (= lambda!198706 lambda!198675))))

(declare-fun bs!1061092 () Bool)

(assert (= bs!1061092 (and b!4652740 d!1474787)))

(assert (=> bs!1061092 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815338) (= lambda!198706 lambda!198651))))

(declare-fun bs!1061093 () Bool)

(assert (= bs!1061093 (and b!4652740 d!1474629)))

(assert (=> bs!1061093 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815539) (= lambda!198706 lambda!198623))))

(declare-fun bs!1061094 () Bool)

(assert (= bs!1061094 (and b!4652740 d!1474445)))

(assert (=> bs!1061094 (not (= lambda!198706 lambda!198577))))

(declare-fun bs!1061095 () Bool)

(assert (= bs!1061095 (and b!4652740 b!4652363)))

(assert (=> bs!1061095 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198706 lambda!198646))))

(assert (=> bs!1061087 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815624) (= lambda!198706 lambda!198643))))

(declare-fun bs!1061096 () Bool)

(assert (= bs!1061096 (and b!4652740 b!4651970)))

(assert (=> bs!1061096 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815433) (= lambda!198706 lambda!198606))))

(declare-fun bs!1061097 () Bool)

(assert (= bs!1061097 (and b!4652740 b!4651772)))

(assert (=> bs!1061097 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815244) (= lambda!198706 lambda!198569))))

(assert (=> bs!1061096 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198706 lambda!198605))))

(declare-fun bs!1061098 () Bool)

(assert (= bs!1061098 (and b!4652740 b!4652134)))

(assert (=> bs!1061098 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198706 lambda!198617))))

(declare-fun bs!1061099 () Bool)

(assert (= bs!1061099 (and b!4652740 d!1474461)))

(assert (=> bs!1061099 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815328) (= lambda!198706 lambda!198588))))

(declare-fun bs!1061100 () Bool)

(assert (= bs!1061100 (and b!4652740 d!1474783)))

(assert (=> bs!1061100 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815697) (= lambda!198706 lambda!198649))))

(declare-fun bs!1061101 () Bool)

(assert (= bs!1061101 (and b!4652740 b!4651765)))

(assert (=> bs!1061101 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815223) (= lambda!198706 lambda!198564))))

(declare-fun bs!1061102 () Bool)

(assert (= bs!1061102 (and b!4652740 b!4651844)))

(assert (=> bs!1061102 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815313) (= lambda!198706 lambda!198582))))

(declare-fun bs!1061103 () Bool)

(assert (= bs!1061103 (and b!4652740 b!4652607)))

(assert (=> bs!1061103 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815949) (= lambda!198706 lambda!198672))))

(declare-fun bs!1061104 () Bool)

(assert (= bs!1061104 (and b!4652740 d!1474663)))

(assert (=> bs!1061104 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1814962) (= lambda!198706 lambda!198633))))

(declare-fun bs!1061105 () Bool)

(assert (= bs!1061105 (and b!4652740 d!1474503)))

(assert (=> bs!1061105 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815313) (= lambda!198706 lambda!198603))))

(declare-fun bs!1061106 () Bool)

(assert (= bs!1061106 (and b!4652740 b!4651852)))

(assert (=> bs!1061106 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198706 lambda!198585))))

(declare-fun bs!1061107 () Bool)

(assert (= bs!1061107 (and b!4652740 d!1474391)))

(assert (=> bs!1061107 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815213) (= lambda!198706 lambda!198566))))

(declare-fun bs!1061108 () Bool)

(assert (= bs!1061108 (and b!4652740 d!1474365)))

(assert (=> bs!1061108 (not (= lambda!198706 lambda!198476))))

(assert (=> bs!1061098 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815549) (= lambda!198706 lambda!198618))))

(declare-fun bs!1061109 () Bool)

(assert (= bs!1061109 (and b!4652740 b!4651845)))

(assert (=> bs!1061109 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1814962) (= lambda!198706 lambda!198580))))

(declare-fun bs!1061110 () Bool)

(assert (= bs!1061110 (and b!4652740 b!4652506)))

(assert (=> bs!1061110 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815841) (= lambda!198706 lambda!198660))))

(assert (=> bs!1061086 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) (= lambda!198706 lambda!198694))))

(declare-fun bs!1061111 () Bool)

(assert (= bs!1061111 (and b!4652740 d!1474967)))

(assert (=> bs!1061111 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1816038) (= lambda!198706 lambda!198696))))

(assert (=> bs!1061090 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198706 lambda!198647))))

(declare-fun bs!1061112 () Bool)

(assert (= bs!1061112 (and b!4652740 b!4652709)))

(assert (=> bs!1061112 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) (= lambda!198706 lambda!198693))))

(declare-fun bs!1061113 () Bool)

(assert (= bs!1061113 (and b!4652740 b!4651766)))

(assert (=> bs!1061113 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198706 lambda!198562))))

(declare-fun bs!1061114 () Bool)

(assert (= bs!1061114 (and b!4652740 d!1474467)))

(assert (=> bs!1061114 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815361) (= lambda!198706 lambda!198592))))

(declare-fun bs!1061115 () Bool)

(assert (= bs!1061115 (and b!4652740 b!4651971)))

(assert (=> bs!1061115 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198706 lambda!198604))))

(declare-fun bs!1061116 () Bool)

(assert (= bs!1061116 (and b!4652740 b!4652507)))

(assert (=> bs!1061116 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198706 lambda!198657))))

(declare-fun bs!1061117 () Bool)

(assert (= bs!1061117 (and b!4652740 d!1474649)))

(assert (=> bs!1061117 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198706 lambda!198632))))

(assert (=> bs!1061101 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198706 lambda!198563))))

(declare-fun bs!1061118 () Bool)

(assert (= bs!1061118 (and b!4652740 b!4652135)))

(assert (=> bs!1061118 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198706 lambda!198616))))

(declare-fun bs!1061119 () Bool)

(assert (= bs!1061119 (and b!4652740 b!4651773)))

(assert (=> bs!1061119 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198706 lambda!198567))))

(declare-fun bs!1061120 () Bool)

(assert (= bs!1061120 (and b!4652740 d!1474887)))

(assert (=> bs!1061120 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815371) (= lambda!198706 lambda!198666))))

(assert (=> bs!1061110 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198706 lambda!198659))))

(declare-fun bs!1061121 () Bool)

(assert (= bs!1061121 (and b!4652740 d!1474531)))

(assert (=> bs!1061121 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815423) (= lambda!198706 lambda!198607))))

(declare-fun bs!1061122 () Bool)

(assert (= bs!1061122 (and b!4652740 b!4652215)))

(assert (=> bs!1061122 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198706 lambda!198635))))

(declare-fun bs!1061123 () Bool)

(assert (= bs!1061123 (and b!4652740 b!4652608)))

(assert (=> bs!1061123 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198706 lambda!198668))))

(declare-fun bs!1061124 () Bool)

(assert (= bs!1061124 (and b!4652740 d!1474687)))

(assert (=> bs!1061124 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815614) (= lambda!198706 lambda!198644))))

(declare-fun bs!1061125 () Bool)

(assert (= bs!1061125 (and b!4652740 d!1474455)))

(assert (=> bs!1061125 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815303) (= lambda!198706 lambda!198583))))

(assert (=> bs!1061103 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198706 lambda!198670))))

(declare-fun bs!1061127 () Bool)

(assert (= bs!1061127 (and b!4652740 b!4651863)))

(assert (=> bs!1061127 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198706 lambda!198589))))

(assert (=> bs!1061097 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198706 lambda!198568))))

(assert (=> bs!1061102 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1814962) (= lambda!198706 lambda!198581))))

(declare-fun bs!1061128 () Bool)

(assert (= bs!1061128 (and b!4652740 b!4651862)))

(assert (=> bs!1061128 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198706 lambda!198590))))

(declare-fun bs!1061130 () Bool)

(assert (= bs!1061130 (and b!4652740 d!1474845)))

(assert (=> bs!1061130 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815831) (= lambda!198706 lambda!198662))))

(declare-fun bs!1061131 () Bool)

(assert (= bs!1061131 (and b!4652740 d!1474425)))

(assert (=> bs!1061131 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815234) (= lambda!198706 lambda!198570))))

(assert (=> bs!1061128 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815371) (= lambda!198706 lambda!198591))))

(declare-fun bs!1061133 () Bool)

(assert (= bs!1061133 (and b!4652740 d!1474677)))

(assert (=> bs!1061133 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815244) (= lambda!198706 lambda!198634))))

(assert (=> bs!1061089 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815338) (= lambda!198706 lambda!198587))))

(assert (=> b!4652740 true))

(declare-fun bs!1061138 () Bool)

(declare-fun b!4652739 () Bool)

(assert (= bs!1061138 (and b!4652739 b!4652708)))

(declare-fun lambda!198711 () Int)

(assert (=> bs!1061138 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1816048) (= lambda!198711 lambda!198695))))

(declare-fun bs!1061139 () Bool)

(assert (= bs!1061139 (and b!4652739 b!4652214)))

(assert (=> bs!1061139 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198711 lambda!198641))))

(declare-fun bs!1061140 () Bool)

(assert (= bs!1061140 (and b!4652739 d!1474815)))

(assert (=> bs!1061140 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815223) (= lambda!198711 lambda!198656))))

(declare-fun bs!1061141 () Bool)

(assert (= bs!1061141 (and b!4652739 b!4651851)))

(assert (=> bs!1061141 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198711 lambda!198586))))

(declare-fun bs!1061142 () Bool)

(assert (= bs!1061142 (and b!4652739 b!4652362)))

(assert (=> bs!1061142 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815707) (= lambda!198711 lambda!198648))))

(declare-fun bs!1061143 () Bool)

(assert (= bs!1061143 (and b!4652739 d!1474909)))

(assert (=> bs!1061143 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815939) (= lambda!198711 lambda!198675))))

(declare-fun bs!1061144 () Bool)

(assert (= bs!1061144 (and b!4652739 d!1474787)))

(assert (=> bs!1061144 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815338) (= lambda!198711 lambda!198651))))

(declare-fun bs!1061145 () Bool)

(assert (= bs!1061145 (and b!4652739 d!1474629)))

(assert (=> bs!1061145 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815539) (= lambda!198711 lambda!198623))))

(declare-fun bs!1061146 () Bool)

(assert (= bs!1061146 (and b!4652739 d!1474445)))

(assert (=> bs!1061146 (not (= lambda!198711 lambda!198577))))

(declare-fun bs!1061147 () Bool)

(assert (= bs!1061147 (and b!4652739 b!4652363)))

(assert (=> bs!1061147 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198711 lambda!198646))))

(assert (=> bs!1061139 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815624) (= lambda!198711 lambda!198643))))

(declare-fun bs!1061148 () Bool)

(assert (= bs!1061148 (and b!4652739 b!4651970)))

(assert (=> bs!1061148 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815433) (= lambda!198711 lambda!198606))))

(declare-fun bs!1061149 () Bool)

(assert (= bs!1061149 (and b!4652739 b!4652740)))

(assert (=> bs!1061149 (= lambda!198711 lambda!198706)))

(declare-fun bs!1061150 () Bool)

(assert (= bs!1061150 (and b!4652739 b!4651772)))

(assert (=> bs!1061150 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815244) (= lambda!198711 lambda!198569))))

(assert (=> bs!1061148 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198711 lambda!198605))))

(declare-fun bs!1061151 () Bool)

(assert (= bs!1061151 (and b!4652739 b!4652134)))

(assert (=> bs!1061151 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198711 lambda!198617))))

(declare-fun bs!1061152 () Bool)

(assert (= bs!1061152 (and b!4652739 d!1474461)))

(assert (=> bs!1061152 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815328) (= lambda!198711 lambda!198588))))

(declare-fun bs!1061153 () Bool)

(assert (= bs!1061153 (and b!4652739 d!1474783)))

(assert (=> bs!1061153 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815697) (= lambda!198711 lambda!198649))))

(declare-fun bs!1061154 () Bool)

(assert (= bs!1061154 (and b!4652739 b!4651765)))

(assert (=> bs!1061154 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815223) (= lambda!198711 lambda!198564))))

(declare-fun bs!1061155 () Bool)

(assert (= bs!1061155 (and b!4652739 b!4651844)))

(assert (=> bs!1061155 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815313) (= lambda!198711 lambda!198582))))

(declare-fun bs!1061156 () Bool)

(assert (= bs!1061156 (and b!4652739 b!4652607)))

(assert (=> bs!1061156 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815949) (= lambda!198711 lambda!198672))))

(declare-fun bs!1061157 () Bool)

(assert (= bs!1061157 (and b!4652739 d!1474663)))

(assert (=> bs!1061157 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1814962) (= lambda!198711 lambda!198633))))

(declare-fun bs!1061158 () Bool)

(assert (= bs!1061158 (and b!4652739 d!1474503)))

(assert (=> bs!1061158 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815313) (= lambda!198711 lambda!198603))))

(declare-fun bs!1061159 () Bool)

(assert (= bs!1061159 (and b!4652739 b!4651852)))

(assert (=> bs!1061159 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198711 lambda!198585))))

(declare-fun bs!1061160 () Bool)

(assert (= bs!1061160 (and b!4652739 d!1474391)))

(assert (=> bs!1061160 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815213) (= lambda!198711 lambda!198566))))

(declare-fun bs!1061161 () Bool)

(assert (= bs!1061161 (and b!4652739 d!1474365)))

(assert (=> bs!1061161 (not (= lambda!198711 lambda!198476))))

(assert (=> bs!1061151 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815549) (= lambda!198711 lambda!198618))))

(declare-fun bs!1061162 () Bool)

(assert (= bs!1061162 (and b!4652739 b!4651845)))

(assert (=> bs!1061162 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1814962) (= lambda!198711 lambda!198580))))

(declare-fun bs!1061163 () Bool)

(assert (= bs!1061163 (and b!4652739 b!4652506)))

(assert (=> bs!1061163 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815841) (= lambda!198711 lambda!198660))))

(assert (=> bs!1061138 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) (= lambda!198711 lambda!198694))))

(declare-fun bs!1061165 () Bool)

(assert (= bs!1061165 (and b!4652739 d!1474967)))

(assert (=> bs!1061165 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1816038) (= lambda!198711 lambda!198696))))

(assert (=> bs!1061142 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198711 lambda!198647))))

(declare-fun bs!1061168 () Bool)

(assert (= bs!1061168 (and b!4652739 b!4652709)))

(assert (=> bs!1061168 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) (= lambda!198711 lambda!198693))))

(declare-fun bs!1061170 () Bool)

(assert (= bs!1061170 (and b!4652739 b!4651766)))

(assert (=> bs!1061170 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198711 lambda!198562))))

(declare-fun bs!1061172 () Bool)

(assert (= bs!1061172 (and b!4652739 d!1474467)))

(assert (=> bs!1061172 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815361) (= lambda!198711 lambda!198592))))

(declare-fun bs!1061174 () Bool)

(assert (= bs!1061174 (and b!4652739 b!4651971)))

(assert (=> bs!1061174 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198711 lambda!198604))))

(declare-fun bs!1061176 () Bool)

(assert (= bs!1061176 (and b!4652739 b!4652507)))

(assert (=> bs!1061176 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198711 lambda!198657))))

(declare-fun bs!1061178 () Bool)

(assert (= bs!1061178 (and b!4652739 d!1474649)))

(assert (=> bs!1061178 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198711 lambda!198632))))

(assert (=> bs!1061154 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198711 lambda!198563))))

(declare-fun bs!1061180 () Bool)

(assert (= bs!1061180 (and b!4652739 b!4652135)))

(assert (=> bs!1061180 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198711 lambda!198616))))

(declare-fun bs!1061182 () Bool)

(assert (= bs!1061182 (and b!4652739 b!4651773)))

(assert (=> bs!1061182 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198711 lambda!198567))))

(declare-fun bs!1061183 () Bool)

(assert (= bs!1061183 (and b!4652739 d!1474887)))

(assert (=> bs!1061183 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815371) (= lambda!198711 lambda!198666))))

(assert (=> bs!1061163 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198711 lambda!198659))))

(declare-fun bs!1061186 () Bool)

(assert (= bs!1061186 (and b!4652739 d!1474531)))

(assert (=> bs!1061186 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815423) (= lambda!198711 lambda!198607))))

(declare-fun bs!1061187 () Bool)

(assert (= bs!1061187 (and b!4652739 b!4652215)))

(assert (=> bs!1061187 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198711 lambda!198635))))

(declare-fun bs!1061188 () Bool)

(assert (= bs!1061188 (and b!4652739 b!4652608)))

(assert (=> bs!1061188 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198711 lambda!198668))))

(declare-fun bs!1061190 () Bool)

(assert (= bs!1061190 (and b!4652739 d!1474687)))

(assert (=> bs!1061190 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815614) (= lambda!198711 lambda!198644))))

(declare-fun bs!1061192 () Bool)

(assert (= bs!1061192 (and b!4652739 d!1474455)))

(assert (=> bs!1061192 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815303) (= lambda!198711 lambda!198583))))

(assert (=> bs!1061156 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198711 lambda!198670))))

(declare-fun bs!1061195 () Bool)

(assert (= bs!1061195 (and b!4652739 b!4651863)))

(assert (=> bs!1061195 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198711 lambda!198589))))

(assert (=> bs!1061150 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198711 lambda!198568))))

(assert (=> bs!1061155 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1814962) (= lambda!198711 lambda!198581))))

(declare-fun bs!1061198 () Bool)

(assert (= bs!1061198 (and b!4652739 b!4651862)))

(assert (=> bs!1061198 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (ListMap!4530 Nil!51868)) (= lambda!198711 lambda!198590))))

(declare-fun bs!1061200 () Bool)

(assert (= bs!1061200 (and b!4652739 d!1474845)))

(assert (=> bs!1061200 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815831) (= lambda!198711 lambda!198662))))

(declare-fun bs!1061202 () Bool)

(assert (= bs!1061202 (and b!4652739 d!1474425)))

(assert (=> bs!1061202 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815234) (= lambda!198711 lambda!198570))))

(assert (=> bs!1061198 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815371) (= lambda!198711 lambda!198591))))

(declare-fun bs!1061205 () Bool)

(assert (= bs!1061205 (and b!4652739 d!1474677)))

(assert (=> bs!1061205 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815244) (= lambda!198711 lambda!198634))))

(assert (=> bs!1061141 (= (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1815338) (= lambda!198711 lambda!198587))))

(assert (=> b!4652739 true))

(declare-fun lt!1816084 () ListMap!4529)

(declare-fun lambda!198713 () Int)

(assert (=> bs!1061138 (= (= lt!1816084 lt!1816048) (= lambda!198713 lambda!198695))))

(assert (=> bs!1061139 (= (= lt!1816084 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198713 lambda!198641))))

(assert (=> bs!1061140 (= (= lt!1816084 lt!1815223) (= lambda!198713 lambda!198656))))

(assert (=> bs!1061141 (= (= lt!1816084 (ListMap!4530 Nil!51868)) (= lambda!198713 lambda!198586))))

(assert (=> bs!1061142 (= (= lt!1816084 lt!1815707) (= lambda!198713 lambda!198648))))

(assert (=> bs!1061143 (= (= lt!1816084 lt!1815939) (= lambda!198713 lambda!198675))))

(assert (=> bs!1061144 (= (= lt!1816084 lt!1815338) (= lambda!198713 lambda!198651))))

(assert (=> bs!1061145 (= (= lt!1816084 lt!1815539) (= lambda!198713 lambda!198623))))

(assert (=> bs!1061146 (not (= lambda!198713 lambda!198577))))

(assert (=> bs!1061147 (= (= lt!1816084 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198713 lambda!198646))))

(assert (=> bs!1061139 (= (= lt!1816084 lt!1815624) (= lambda!198713 lambda!198643))))

(assert (=> bs!1061148 (= (= lt!1816084 lt!1815433) (= lambda!198713 lambda!198606))))

(assert (=> bs!1061149 (= (= lt!1816084 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))) (= lambda!198713 lambda!198706))))

(assert (=> bs!1061150 (= (= lt!1816084 lt!1815244) (= lambda!198713 lambda!198569))))

(assert (=> bs!1061148 (= (= lt!1816084 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198713 lambda!198605))))

(assert (=> bs!1061151 (= (= lt!1816084 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198713 lambda!198617))))

(assert (=> bs!1061152 (= (= lt!1816084 lt!1815328) (= lambda!198713 lambda!198588))))

(assert (=> bs!1061153 (= (= lt!1816084 lt!1815697) (= lambda!198713 lambda!198649))))

(assert (=> bs!1061154 (= (= lt!1816084 lt!1815223) (= lambda!198713 lambda!198564))))

(assert (=> bs!1061155 (= (= lt!1816084 lt!1815313) (= lambda!198713 lambda!198582))))

(assert (=> bs!1061156 (= (= lt!1816084 lt!1815949) (= lambda!198713 lambda!198672))))

(assert (=> bs!1061157 (= (= lt!1816084 lt!1814962) (= lambda!198713 lambda!198633))))

(assert (=> bs!1061158 (= (= lt!1816084 lt!1815313) (= lambda!198713 lambda!198603))))

(assert (=> bs!1061159 (= (= lt!1816084 (ListMap!4530 Nil!51868)) (= lambda!198713 lambda!198585))))

(assert (=> bs!1061160 (= (= lt!1816084 lt!1815213) (= lambda!198713 lambda!198566))))

(assert (=> bs!1061161 (not (= lambda!198713 lambda!198476))))

(assert (=> bs!1061151 (= (= lt!1816084 lt!1815549) (= lambda!198713 lambda!198618))))

(assert (=> bs!1061162 (= (= lt!1816084 lt!1814962) (= lambda!198713 lambda!198580))))

(assert (=> bs!1061163 (= (= lt!1816084 lt!1815841) (= lambda!198713 lambda!198660))))

(assert (=> bs!1061138 (= (= lt!1816084 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) (= lambda!198713 lambda!198694))))

(assert (=> bs!1061165 (= (= lt!1816084 lt!1816038) (= lambda!198713 lambda!198696))))

(assert (=> bs!1061142 (= (= lt!1816084 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198713 lambda!198647))))

(assert (=> bs!1061168 (= (= lt!1816084 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) (= lambda!198713 lambda!198693))))

(assert (=> bs!1061170 (= (= lt!1816084 (ListMap!4530 Nil!51868)) (= lambda!198713 lambda!198562))))

(assert (=> bs!1061172 (= (= lt!1816084 lt!1815361) (= lambda!198713 lambda!198592))))

(assert (=> bs!1061174 (= (= lt!1816084 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198713 lambda!198604))))

(assert (=> bs!1061176 (= (= lt!1816084 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198713 lambda!198657))))

(assert (=> bs!1061178 (= (= lt!1816084 (ListMap!4530 Nil!51868)) (= lambda!198713 lambda!198632))))

(assert (=> bs!1061154 (= (= lt!1816084 (ListMap!4530 Nil!51868)) (= lambda!198713 lambda!198563))))

(assert (=> bs!1061180 (= (= lt!1816084 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198713 lambda!198616))))

(assert (=> bs!1061182 (= (= lt!1816084 (ListMap!4530 Nil!51868)) (= lambda!198713 lambda!198567))))

(assert (=> bs!1061183 (= (= lt!1816084 lt!1815371) (= lambda!198713 lambda!198666))))

(assert (=> bs!1061163 (= (= lt!1816084 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198713 lambda!198659))))

(assert (=> bs!1061186 (= (= lt!1816084 lt!1815423) (= lambda!198713 lambda!198607))))

(assert (=> bs!1061187 (= (= lt!1816084 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198713 lambda!198635))))

(assert (=> bs!1061188 (= (= lt!1816084 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198713 lambda!198668))))

(assert (=> bs!1061190 (= (= lt!1816084 lt!1815614) (= lambda!198713 lambda!198644))))

(assert (=> bs!1061192 (= (= lt!1816084 lt!1815303) (= lambda!198713 lambda!198583))))

(assert (=> bs!1061156 (= (= lt!1816084 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198713 lambda!198670))))

(assert (=> b!4652739 (= (= lt!1816084 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))) (= lambda!198713 lambda!198711))))

(assert (=> bs!1061195 (= (= lt!1816084 (ListMap!4530 Nil!51868)) (= lambda!198713 lambda!198589))))

(assert (=> bs!1061150 (= (= lt!1816084 (ListMap!4530 Nil!51868)) (= lambda!198713 lambda!198568))))

(assert (=> bs!1061155 (= (= lt!1816084 lt!1814962) (= lambda!198713 lambda!198581))))

(assert (=> bs!1061198 (= (= lt!1816084 (ListMap!4530 Nil!51868)) (= lambda!198713 lambda!198590))))

(assert (=> bs!1061200 (= (= lt!1816084 lt!1815831) (= lambda!198713 lambda!198662))))

(assert (=> bs!1061202 (= (= lt!1816084 lt!1815234) (= lambda!198713 lambda!198570))))

(assert (=> bs!1061198 (= (= lt!1816084 lt!1815371) (= lambda!198713 lambda!198591))))

(assert (=> bs!1061205 (= (= lt!1816084 lt!1815244) (= lambda!198713 lambda!198634))))

(assert (=> bs!1061141 (= (= lt!1816084 lt!1815338) (= lambda!198713 lambda!198587))))

(assert (=> b!4652739 true))

(declare-fun bs!1061225 () Bool)

(declare-fun d!1474981 () Bool)

(assert (= bs!1061225 (and d!1474981 b!4652708)))

(declare-fun lt!1816074 () ListMap!4529)

(declare-fun lambda!198714 () Int)

(assert (=> bs!1061225 (= (= lt!1816074 lt!1816048) (= lambda!198714 lambda!198695))))

(declare-fun bs!1061226 () Bool)

(assert (= bs!1061226 (and d!1474981 b!4652739)))

(assert (=> bs!1061226 (= (= lt!1816074 lt!1816084) (= lambda!198714 lambda!198713))))

(declare-fun bs!1061227 () Bool)

(assert (= bs!1061227 (and d!1474981 b!4652214)))

(assert (=> bs!1061227 (= (= lt!1816074 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198714 lambda!198641))))

(declare-fun bs!1061228 () Bool)

(assert (= bs!1061228 (and d!1474981 d!1474815)))

(assert (=> bs!1061228 (= (= lt!1816074 lt!1815223) (= lambda!198714 lambda!198656))))

(declare-fun bs!1061229 () Bool)

(assert (= bs!1061229 (and d!1474981 b!4651851)))

(assert (=> bs!1061229 (= (= lt!1816074 (ListMap!4530 Nil!51868)) (= lambda!198714 lambda!198586))))

(declare-fun bs!1061230 () Bool)

(assert (= bs!1061230 (and d!1474981 b!4652362)))

(assert (=> bs!1061230 (= (= lt!1816074 lt!1815707) (= lambda!198714 lambda!198648))))

(declare-fun bs!1061231 () Bool)

(assert (= bs!1061231 (and d!1474981 d!1474909)))

(assert (=> bs!1061231 (= (= lt!1816074 lt!1815939) (= lambda!198714 lambda!198675))))

(declare-fun bs!1061232 () Bool)

(assert (= bs!1061232 (and d!1474981 d!1474787)))

(assert (=> bs!1061232 (= (= lt!1816074 lt!1815338) (= lambda!198714 lambda!198651))))

(declare-fun bs!1061233 () Bool)

(assert (= bs!1061233 (and d!1474981 d!1474629)))

(assert (=> bs!1061233 (= (= lt!1816074 lt!1815539) (= lambda!198714 lambda!198623))))

(declare-fun bs!1061234 () Bool)

(assert (= bs!1061234 (and d!1474981 d!1474445)))

(assert (=> bs!1061234 (not (= lambda!198714 lambda!198577))))

(declare-fun bs!1061235 () Bool)

(assert (= bs!1061235 (and d!1474981 b!4652363)))

(assert (=> bs!1061235 (= (= lt!1816074 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198714 lambda!198646))))

(assert (=> bs!1061227 (= (= lt!1816074 lt!1815624) (= lambda!198714 lambda!198643))))

(declare-fun bs!1061236 () Bool)

(assert (= bs!1061236 (and d!1474981 b!4651970)))

(assert (=> bs!1061236 (= (= lt!1816074 lt!1815433) (= lambda!198714 lambda!198606))))

(declare-fun bs!1061237 () Bool)

(assert (= bs!1061237 (and d!1474981 b!4652740)))

(assert (=> bs!1061237 (= (= lt!1816074 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))) (= lambda!198714 lambda!198706))))

(declare-fun bs!1061238 () Bool)

(assert (= bs!1061238 (and d!1474981 b!4651772)))

(assert (=> bs!1061238 (= (= lt!1816074 lt!1815244) (= lambda!198714 lambda!198569))))

(assert (=> bs!1061236 (= (= lt!1816074 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198714 lambda!198605))))

(declare-fun bs!1061239 () Bool)

(assert (= bs!1061239 (and d!1474981 b!4652134)))

(assert (=> bs!1061239 (= (= lt!1816074 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198714 lambda!198617))))

(declare-fun bs!1061240 () Bool)

(assert (= bs!1061240 (and d!1474981 d!1474461)))

(assert (=> bs!1061240 (= (= lt!1816074 lt!1815328) (= lambda!198714 lambda!198588))))

(declare-fun bs!1061241 () Bool)

(assert (= bs!1061241 (and d!1474981 d!1474783)))

(assert (=> bs!1061241 (= (= lt!1816074 lt!1815697) (= lambda!198714 lambda!198649))))

(declare-fun bs!1061242 () Bool)

(assert (= bs!1061242 (and d!1474981 b!4651765)))

(assert (=> bs!1061242 (= (= lt!1816074 lt!1815223) (= lambda!198714 lambda!198564))))

(declare-fun bs!1061243 () Bool)

(assert (= bs!1061243 (and d!1474981 b!4651844)))

(assert (=> bs!1061243 (= (= lt!1816074 lt!1815313) (= lambda!198714 lambda!198582))))

(declare-fun bs!1061245 () Bool)

(assert (= bs!1061245 (and d!1474981 b!4652607)))

(assert (=> bs!1061245 (= (= lt!1816074 lt!1815949) (= lambda!198714 lambda!198672))))

(declare-fun bs!1061247 () Bool)

(assert (= bs!1061247 (and d!1474981 d!1474663)))

(assert (=> bs!1061247 (= (= lt!1816074 lt!1814962) (= lambda!198714 lambda!198633))))

(declare-fun bs!1061249 () Bool)

(assert (= bs!1061249 (and d!1474981 d!1474503)))

(assert (=> bs!1061249 (= (= lt!1816074 lt!1815313) (= lambda!198714 lambda!198603))))

(declare-fun bs!1061251 () Bool)

(assert (= bs!1061251 (and d!1474981 b!4651852)))

(assert (=> bs!1061251 (= (= lt!1816074 (ListMap!4530 Nil!51868)) (= lambda!198714 lambda!198585))))

(declare-fun bs!1061253 () Bool)

(assert (= bs!1061253 (and d!1474981 d!1474391)))

(assert (=> bs!1061253 (= (= lt!1816074 lt!1815213) (= lambda!198714 lambda!198566))))

(declare-fun bs!1061255 () Bool)

(assert (= bs!1061255 (and d!1474981 d!1474365)))

(assert (=> bs!1061255 (not (= lambda!198714 lambda!198476))))

(assert (=> bs!1061239 (= (= lt!1816074 lt!1815549) (= lambda!198714 lambda!198618))))

(declare-fun bs!1061257 () Bool)

(assert (= bs!1061257 (and d!1474981 b!4651845)))

(assert (=> bs!1061257 (= (= lt!1816074 lt!1814962) (= lambda!198714 lambda!198580))))

(declare-fun bs!1061259 () Bool)

(assert (= bs!1061259 (and d!1474981 b!4652506)))

(assert (=> bs!1061259 (= (= lt!1816074 lt!1815841) (= lambda!198714 lambda!198660))))

(assert (=> bs!1061225 (= (= lt!1816074 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) (= lambda!198714 lambda!198694))))

(declare-fun bs!1061261 () Bool)

(assert (= bs!1061261 (and d!1474981 d!1474967)))

(assert (=> bs!1061261 (= (= lt!1816074 lt!1816038) (= lambda!198714 lambda!198696))))

(assert (=> bs!1061230 (= (= lt!1816074 (+!1974 (ListMap!4530 Nil!51868) (h!58004 (Cons!51868 lt!1814956 lt!1814957)))) (= lambda!198714 lambda!198647))))

(declare-fun bs!1061263 () Bool)

(assert (= bs!1061263 (and d!1474981 b!4652709)))

(assert (=> bs!1061263 (= (= lt!1816074 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))) (= lambda!198714 lambda!198693))))

(declare-fun bs!1061265 () Bool)

(assert (= bs!1061265 (and d!1474981 b!4651766)))

(assert (=> bs!1061265 (= (= lt!1816074 (ListMap!4530 Nil!51868)) (= lambda!198714 lambda!198562))))

(declare-fun bs!1061267 () Bool)

(assert (= bs!1061267 (and d!1474981 d!1474467)))

(assert (=> bs!1061267 (= (= lt!1816074 lt!1815361) (= lambda!198714 lambda!198592))))

(declare-fun bs!1061268 () Bool)

(assert (= bs!1061268 (and d!1474981 b!4651971)))

(assert (=> bs!1061268 (= (= lt!1816074 (+!1974 lt!1814962 (h!58004 oldBucket!40))) (= lambda!198714 lambda!198604))))

(declare-fun bs!1061270 () Bool)

(assert (= bs!1061270 (and d!1474981 b!4652507)))

(assert (=> bs!1061270 (= (= lt!1816074 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198714 lambda!198657))))

(declare-fun bs!1061272 () Bool)

(assert (= bs!1061272 (and d!1474981 d!1474649)))

(assert (=> bs!1061272 (= (= lt!1816074 (ListMap!4530 Nil!51868)) (= lambda!198714 lambda!198632))))

(assert (=> bs!1061242 (= (= lt!1816074 (ListMap!4530 Nil!51868)) (= lambda!198714 lambda!198563))))

(declare-fun bs!1061275 () Bool)

(assert (= bs!1061275 (and d!1474981 b!4652135)))

(assert (=> bs!1061275 (= (= lt!1816074 (extractMap!1686 (t!359101 lt!1814954))) (= lambda!198714 lambda!198616))))

(declare-fun bs!1061276 () Bool)

(assert (= bs!1061276 (and d!1474981 b!4651773)))

(assert (=> bs!1061276 (= (= lt!1816074 (ListMap!4530 Nil!51868)) (= lambda!198714 lambda!198567))))

(declare-fun bs!1061278 () Bool)

(assert (= bs!1061278 (and d!1474981 d!1474887)))

(assert (=> bs!1061278 (= (= lt!1816074 lt!1815371) (= lambda!198714 lambda!198666))))

(assert (=> bs!1061259 (= (= lt!1816074 (+!1974 (ListMap!4530 Nil!51868) (h!58004 newBucket!224))) (= lambda!198714 lambda!198659))))

(declare-fun bs!1061281 () Bool)

(assert (= bs!1061281 (and d!1474981 d!1474531)))

(assert (=> bs!1061281 (= (= lt!1816074 lt!1815423) (= lambda!198714 lambda!198607))))

(declare-fun bs!1061283 () Bool)

(assert (= bs!1061283 (and d!1474981 b!4652215)))

(assert (=> bs!1061283 (= (= lt!1816074 (+!1974 (ListMap!4530 Nil!51868) (h!58004 lt!1814957))) (= lambda!198714 lambda!198635))))

(declare-fun bs!1061285 () Bool)

(assert (= bs!1061285 (and d!1474981 b!4652608)))

(assert (=> bs!1061285 (= (= lt!1816074 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198714 lambda!198668))))

(declare-fun bs!1061287 () Bool)

(assert (= bs!1061287 (and d!1474981 d!1474687)))

(assert (=> bs!1061287 (= (= lt!1816074 lt!1815614) (= lambda!198714 lambda!198644))))

(declare-fun bs!1061289 () Bool)

(assert (= bs!1061289 (and d!1474981 d!1474455)))

(assert (=> bs!1061289 (= (= lt!1816074 lt!1815303) (= lambda!198714 lambda!198583))))

(assert (=> bs!1061245 (= (= lt!1816074 (+!1974 (ListMap!4530 Nil!51868) (h!58004 oldBucket!40))) (= lambda!198714 lambda!198670))))

(assert (=> bs!1061226 (= (= lt!1816074 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))) (= lambda!198714 lambda!198711))))

(declare-fun bs!1061292 () Bool)

(assert (= bs!1061292 (and d!1474981 b!4651863)))

(assert (=> bs!1061292 (= (= lt!1816074 (ListMap!4530 Nil!51868)) (= lambda!198714 lambda!198589))))

(assert (=> bs!1061238 (= (= lt!1816074 (ListMap!4530 Nil!51868)) (= lambda!198714 lambda!198568))))

(assert (=> bs!1061243 (= (= lt!1816074 lt!1814962) (= lambda!198714 lambda!198581))))

(declare-fun bs!1061295 () Bool)

(assert (= bs!1061295 (and d!1474981 b!4651862)))

(assert (=> bs!1061295 (= (= lt!1816074 (ListMap!4530 Nil!51868)) (= lambda!198714 lambda!198590))))

(declare-fun bs!1061297 () Bool)

(assert (= bs!1061297 (and d!1474981 d!1474845)))

(assert (=> bs!1061297 (= (= lt!1816074 lt!1815831) (= lambda!198714 lambda!198662))))

(declare-fun bs!1061299 () Bool)

(assert (= bs!1061299 (and d!1474981 d!1474425)))

(assert (=> bs!1061299 (= (= lt!1816074 lt!1815234) (= lambda!198714 lambda!198570))))

(assert (=> bs!1061295 (= (= lt!1816074 lt!1815371) (= lambda!198714 lambda!198591))))

(declare-fun bs!1061302 () Bool)

(assert (= bs!1061302 (and d!1474981 d!1474677)))

(assert (=> bs!1061302 (= (= lt!1816074 lt!1815244) (= lambda!198714 lambda!198634))))

(assert (=> bs!1061229 (= (= lt!1816074 lt!1815338) (= lambda!198714 lambda!198587))))

(assert (=> d!1474981 true))

(declare-fun e!2902837 () Bool)

(assert (=> d!1474981 e!2902837))

(declare-fun res!1955847 () Bool)

(assert (=> d!1474981 (=> (not res!1955847) (not e!2902837))))

(assert (=> d!1474981 (= res!1955847 (forall!11004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lambda!198714))))

(declare-fun e!2902835 () ListMap!4529)

(assert (=> d!1474981 (= lt!1816074 e!2902835)))

(declare-fun c!796354 () Bool)

(assert (=> d!1474981 (= c!796354 ((_ is Nil!51868) (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))))))

(assert (=> d!1474981 (noDuplicateKeys!1630 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))))))

(assert (=> d!1474981 (= (addToMapMapFromBucket!1087 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))) lt!1816074)))

(declare-fun b!4652737 () Bool)

(declare-fun res!1955845 () Bool)

(assert (=> b!4652737 (=> (not res!1955845) (not e!2902837))))

(assert (=> b!4652737 (= res!1955845 (forall!11004 (toList!5191 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))) lambda!198714))))

(declare-fun call!325086 () Bool)

(declare-fun bm!325080 () Bool)

(assert (=> bm!325080 (= call!325086 (forall!11004 (ite c!796354 (toList!5191 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))) (t!359100 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))))) (ite c!796354 lambda!198706 lambda!198713)))))

(declare-fun call!325087 () Bool)

(declare-fun bm!325081 () Bool)

(assert (=> bm!325081 (= call!325087 (forall!11004 (toList!5191 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))) (ite c!796354 lambda!198706 lambda!198713)))))

(declare-fun b!4652738 () Bool)

(assert (=> b!4652738 (= e!2902837 (invariantList!1290 (toList!5191 lt!1816074)))))

(assert (=> b!4652739 (= e!2902835 lt!1816084)))

(declare-fun lt!1816079 () ListMap!4529)

(assert (=> b!4652739 (= lt!1816079 (+!1974 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (h!58004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))))))))

(assert (=> b!4652739 (= lt!1816084 (addToMapMapFromBucket!1087 (t!359100 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))) (+!1974 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (h!58004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))))))))

(declare-fun lt!1816077 () Unit!117676)

(declare-fun call!325085 () Unit!117676)

(assert (=> b!4652739 (= lt!1816077 call!325085)))

(assert (=> b!4652739 (forall!11004 (toList!5191 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))) lambda!198711)))

(declare-fun lt!1816087 () Unit!117676)

(assert (=> b!4652739 (= lt!1816087 lt!1816077)))

(assert (=> b!4652739 (forall!11004 (toList!5191 lt!1816079) lambda!198713)))

(declare-fun lt!1816086 () Unit!117676)

(declare-fun Unit!118019 () Unit!117676)

(assert (=> b!4652739 (= lt!1816086 Unit!118019)))

(assert (=> b!4652739 call!325086))

(declare-fun lt!1816078 () Unit!117676)

(declare-fun Unit!118020 () Unit!117676)

(assert (=> b!4652739 (= lt!1816078 Unit!118020)))

(declare-fun lt!1816083 () Unit!117676)

(declare-fun Unit!118021 () Unit!117676)

(assert (=> b!4652739 (= lt!1816083 Unit!118021)))

(declare-fun lt!1816075 () Unit!117676)

(assert (=> b!4652739 (= lt!1816075 (forallContained!3212 (toList!5191 lt!1816079) lambda!198713 (h!58004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))))))))

(assert (=> b!4652739 (contains!15011 lt!1816079 (_1!29777 (h!58004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))))))))

(declare-fun lt!1816092 () Unit!117676)

(declare-fun Unit!118023 () Unit!117676)

(assert (=> b!4652739 (= lt!1816092 Unit!118023)))

(assert (=> b!4652739 (contains!15011 lt!1816084 (_1!29777 (h!58004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))))))))

(declare-fun lt!1816082 () Unit!117676)

(declare-fun Unit!118024 () Unit!117676)

(assert (=> b!4652739 (= lt!1816082 Unit!118024)))

(assert (=> b!4652739 (forall!11004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lambda!198713)))

(declare-fun lt!1816088 () Unit!117676)

(declare-fun Unit!118025 () Unit!117676)

(assert (=> b!4652739 (= lt!1816088 Unit!118025)))

(assert (=> b!4652739 (forall!11004 (toList!5191 lt!1816079) lambda!198713)))

(declare-fun lt!1816085 () Unit!117676)

(declare-fun Unit!118026 () Unit!117676)

(assert (=> b!4652739 (= lt!1816085 Unit!118026)))

(declare-fun lt!1816094 () Unit!117676)

(declare-fun Unit!118027 () Unit!117676)

(assert (=> b!4652739 (= lt!1816094 Unit!118027)))

(declare-fun lt!1816076 () Unit!117676)

(assert (=> b!4652739 (= lt!1816076 (addForallContainsKeyThenBeforeAdding!589 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1816084 (_1!29777 (h!58004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))))) (_2!29777 (h!58004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))))))))

(assert (=> b!4652739 call!325087))

(declare-fun lt!1816081 () Unit!117676)

(assert (=> b!4652739 (= lt!1816081 lt!1816076)))

(assert (=> b!4652739 (forall!11004 (toList!5191 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))) lambda!198713)))

(declare-fun lt!1816090 () Unit!117676)

(declare-fun Unit!118029 () Unit!117676)

(assert (=> b!4652739 (= lt!1816090 Unit!118029)))

(declare-fun res!1955846 () Bool)

(assert (=> b!4652739 (= res!1955846 (forall!11004 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lambda!198713))))

(declare-fun e!2902836 () Bool)

(assert (=> b!4652739 (=> (not res!1955846) (not e!2902836))))

(assert (=> b!4652739 e!2902836))

(declare-fun lt!1816080 () Unit!117676)

(declare-fun Unit!118030 () Unit!117676)

(assert (=> b!4652739 (= lt!1816080 Unit!118030)))

(assert (=> b!4652740 (= e!2902835 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))))))

(declare-fun lt!1816093 () Unit!117676)

(assert (=> b!4652740 (= lt!1816093 call!325085)))

(assert (=> b!4652740 call!325087))

(declare-fun lt!1816091 () Unit!117676)

(assert (=> b!4652740 (= lt!1816091 lt!1816093)))

(assert (=> b!4652740 call!325086))

(declare-fun lt!1816089 () Unit!117676)

(declare-fun Unit!118031 () Unit!117676)

(assert (=> b!4652740 (= lt!1816089 Unit!118031)))

(declare-fun bm!325082 () Bool)

(assert (=> bm!325082 (= call!325085 (lemmaContainsAllItsOwnKeys!590 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))))))

(declare-fun b!4652741 () Bool)

(assert (=> b!4652741 (= e!2902836 (forall!11004 (toList!5191 (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))) lambda!198713))))

(assert (= (and d!1474981 c!796354) b!4652740))

(assert (= (and d!1474981 (not c!796354)) b!4652739))

(assert (= (and b!4652739 res!1955846) b!4652741))

(assert (= (or b!4652740 b!4652739) bm!325082))

(assert (= (or b!4652740 b!4652739) bm!325080))

(assert (= (or b!4652740 b!4652739) bm!325081))

(assert (= (and d!1474981 res!1955847) b!4652737))

(assert (= (and b!4652737 res!1955845) b!4652738))

(declare-fun m!5529577 () Bool)

(assert (=> b!4652741 m!5529577))

(declare-fun m!5529579 () Bool)

(assert (=> b!4652738 m!5529579))

(declare-fun m!5529581 () Bool)

(assert (=> b!4652737 m!5529581))

(assert (=> bm!325082 m!5527411))

(declare-fun m!5529583 () Bool)

(assert (=> bm!325082 m!5529583))

(declare-fun m!5529585 () Bool)

(assert (=> bm!325080 m!5529585))

(declare-fun m!5529587 () Bool)

(assert (=> d!1474981 m!5529587))

(declare-fun m!5529589 () Bool)

(assert (=> d!1474981 m!5529589))

(declare-fun m!5529591 () Bool)

(assert (=> bm!325081 m!5529591))

(declare-fun m!5529593 () Bool)

(assert (=> b!4652739 m!5529593))

(declare-fun m!5529595 () Bool)

(assert (=> b!4652739 m!5529595))

(assert (=> b!4652739 m!5529595))

(declare-fun m!5529597 () Bool)

(assert (=> b!4652739 m!5529597))

(declare-fun m!5529599 () Bool)

(assert (=> b!4652739 m!5529599))

(assert (=> b!4652739 m!5529577))

(declare-fun m!5529601 () Bool)

(assert (=> b!4652739 m!5529601))

(declare-fun m!5529603 () Bool)

(assert (=> b!4652739 m!5529603))

(assert (=> b!4652739 m!5529601))

(assert (=> b!4652739 m!5527411))

(assert (=> b!4652739 m!5529597))

(declare-fun m!5529605 () Bool)

(assert (=> b!4652739 m!5529605))

(assert (=> b!4652739 m!5527411))

(declare-fun m!5529607 () Bool)

(assert (=> b!4652739 m!5529607))

(declare-fun m!5529609 () Bool)

(assert (=> b!4652739 m!5529609))

(assert (=> b!4651822 d!1474981))

(declare-fun bs!1061332 () Bool)

(declare-fun d!1474997 () Bool)

(assert (= bs!1061332 (and d!1474997 d!1474451)))

(declare-fun lambda!198717 () Int)

(assert (=> bs!1061332 (= lambda!198717 lambda!198578)))

(declare-fun bs!1061334 () Bool)

(assert (= bs!1061334 (and d!1474997 d!1474441)))

(assert (=> bs!1061334 (= lambda!198717 lambda!198576)))

(declare-fun bs!1061336 () Bool)

(assert (= bs!1061336 (and d!1474997 b!4651587)))

(assert (=> bs!1061336 (= lambda!198717 lambda!198470)))

(declare-fun bs!1061338 () Bool)

(assert (= bs!1061338 (and d!1474997 d!1474641)))

(assert (=> bs!1061338 (= lambda!198717 lambda!198625)))

(declare-fun bs!1061340 () Bool)

(assert (= bs!1061340 (and d!1474997 d!1474429)))

(assert (=> bs!1061340 (not (= lambda!198717 lambda!198573))))

(declare-fun bs!1061342 () Bool)

(assert (= bs!1061342 (and d!1474997 d!1474975)))

(assert (=> bs!1061342 (= lambda!198717 lambda!198697)))

(declare-fun bs!1061344 () Bool)

(assert (= bs!1061344 (and d!1474997 d!1474453)))

(assert (=> bs!1061344 (= lambda!198717 lambda!198579)))

(declare-fun bs!1061346 () Bool)

(assert (= bs!1061346 (and d!1474997 d!1474457)))

(assert (=> bs!1061346 (= lambda!198717 lambda!198584)))

(declare-fun lt!1816145 () ListMap!4529)

(assert (=> d!1474997 (invariantList!1290 (toList!5191 lt!1816145))))

(declare-fun e!2902861 () ListMap!4529)

(assert (=> d!1474997 (= lt!1816145 e!2902861)))

(declare-fun c!796365 () Bool)

(assert (=> d!1474997 (= c!796365 ((_ is Cons!51869) (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))))))

(assert (=> d!1474997 (forall!11002 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)) lambda!198717)))

(assert (=> d!1474997 (= (extractMap!1686 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) lt!1816145)))

(declare-fun b!4652781 () Bool)

(assert (=> b!4652781 (= e!2902861 (addToMapMapFromBucket!1087 (_2!29778 (h!58005 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))) (extractMap!1686 (t!359101 (t!359101 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))))))))

(declare-fun b!4652782 () Bool)

(assert (=> b!4652782 (= e!2902861 (ListMap!4530 Nil!51868))))

(assert (= (and d!1474997 c!796365) b!4652781))

(assert (= (and d!1474997 (not c!796365)) b!4652782))

(declare-fun m!5529611 () Bool)

(assert (=> d!1474997 m!5529611))

(declare-fun m!5529613 () Bool)

(assert (=> d!1474997 m!5529613))

(declare-fun m!5529615 () Bool)

(assert (=> b!4652781 m!5529615))

(assert (=> b!4652781 m!5529615))

(declare-fun m!5529617 () Bool)

(assert (=> b!4652781 m!5529617))

(assert (=> b!4651822 d!1474997))

(declare-fun d!1474999 () Bool)

(declare-fun res!1955865 () Bool)

(declare-fun e!2902862 () Bool)

(assert (=> d!1474999 (=> res!1955865 e!2902862)))

(assert (=> d!1474999 (= res!1955865 ((_ is Nil!51868) (ite c!796168 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 oldBucket!40))))))

(assert (=> d!1474999 (= (forall!11004 (ite c!796168 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 oldBucket!40)) (ite c!796168 lambda!198589 lambda!198591)) e!2902862)))

(declare-fun b!4652783 () Bool)

(declare-fun e!2902863 () Bool)

(assert (=> b!4652783 (= e!2902862 e!2902863)))

(declare-fun res!1955866 () Bool)

(assert (=> b!4652783 (=> (not res!1955866) (not e!2902863))))

(assert (=> b!4652783 (= res!1955866 (dynLambda!21575 (ite c!796168 lambda!198589 lambda!198591) (h!58004 (ite c!796168 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 oldBucket!40)))))))

(declare-fun b!4652784 () Bool)

(assert (=> b!4652784 (= e!2902863 (forall!11004 (t!359100 (ite c!796168 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 oldBucket!40))) (ite c!796168 lambda!198589 lambda!198591)))))

(assert (= (and d!1474999 (not res!1955865)) b!4652783))

(assert (= (and b!4652783 res!1955866) b!4652784))

(declare-fun b_lambda!173193 () Bool)

(assert (=> (not b_lambda!173193) (not b!4652783)))

(declare-fun m!5529619 () Bool)

(assert (=> b!4652783 m!5529619))

(declare-fun m!5529621 () Bool)

(assert (=> b!4652784 m!5529621))

(assert (=> bm!324986 d!1474999))

(declare-fun d!1475001 () Bool)

(declare-fun res!1955867 () Bool)

(declare-fun e!2902864 () Bool)

(assert (=> d!1475001 (=> res!1955867 e!2902864)))

(assert (=> d!1475001 (= res!1955867 ((_ is Nil!51868) (ite c!796150 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 lt!1814957))))))

(assert (=> d!1475001 (= (forall!11004 (ite c!796150 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 lt!1814957)) (ite c!796150 lambda!198567 lambda!198569)) e!2902864)))

(declare-fun b!4652785 () Bool)

(declare-fun e!2902865 () Bool)

(assert (=> b!4652785 (= e!2902864 e!2902865)))

(declare-fun res!1955868 () Bool)

(assert (=> b!4652785 (=> (not res!1955868) (not e!2902865))))

(assert (=> b!4652785 (= res!1955868 (dynLambda!21575 (ite c!796150 lambda!198567 lambda!198569) (h!58004 (ite c!796150 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 lt!1814957)))))))

(declare-fun b!4652786 () Bool)

(assert (=> b!4652786 (= e!2902865 (forall!11004 (t!359100 (ite c!796150 (toList!5191 (ListMap!4530 Nil!51868)) (t!359100 lt!1814957))) (ite c!796150 lambda!198567 lambda!198569)))))

(assert (= (and d!1475001 (not res!1955867)) b!4652785))

(assert (= (and b!4652785 res!1955868) b!4652786))

(declare-fun b_lambda!173195 () Bool)

(assert (=> (not b_lambda!173195) (not b!4652785)))

(declare-fun m!5529623 () Bool)

(assert (=> b!4652785 m!5529623))

(declare-fun m!5529625 () Bool)

(assert (=> b!4652786 m!5529625))

(assert (=> bm!324974 d!1475001))

(declare-fun d!1475003 () Bool)

(declare-fun res!1955869 () Bool)

(declare-fun e!2902866 () Bool)

(assert (=> d!1475003 (=> res!1955869 e!2902866)))

(assert (=> d!1475003 (= res!1955869 ((_ is Nil!51869) (t!359101 lt!1814954)))))

(assert (=> d!1475003 (= (forall!11002 (t!359101 lt!1814954) lambda!198470) e!2902866)))

(declare-fun b!4652787 () Bool)

(declare-fun e!2902867 () Bool)

(assert (=> b!4652787 (= e!2902866 e!2902867)))

(declare-fun res!1955870 () Bool)

(assert (=> b!4652787 (=> (not res!1955870) (not e!2902867))))

(assert (=> b!4652787 (= res!1955870 (dynLambda!21574 lambda!198470 (h!58005 (t!359101 lt!1814954))))))

(declare-fun b!4652788 () Bool)

(assert (=> b!4652788 (= e!2902867 (forall!11002 (t!359101 (t!359101 lt!1814954)) lambda!198470))))

(assert (= (and d!1475003 (not res!1955869)) b!4652787))

(assert (= (and b!4652787 res!1955870) b!4652788))

(declare-fun b_lambda!173197 () Bool)

(assert (=> (not b_lambda!173197) (not b!4652787)))

(declare-fun m!5529627 () Bool)

(assert (=> b!4652787 m!5529627))

(declare-fun m!5529629 () Bool)

(assert (=> b!4652788 m!5529629))

(assert (=> b!4651829 d!1475003))

(assert (=> bm!324985 d!1474649))

(declare-fun d!1475005 () Bool)

(assert (=> d!1475005 (= (invariantList!1290 (toList!5191 lt!1815301)) (noDuplicatedKeys!345 (toList!5191 lt!1815301)))))

(declare-fun bs!1061363 () Bool)

(assert (= bs!1061363 d!1475005))

(declare-fun m!5529631 () Bool)

(assert (=> bs!1061363 m!5529631))

(assert (=> d!1474451 d!1475005))

(declare-fun d!1475007 () Bool)

(declare-fun res!1955871 () Bool)

(declare-fun e!2902868 () Bool)

(assert (=> d!1475007 (=> res!1955871 e!2902868)))

(assert (=> d!1475007 (= res!1955871 ((_ is Nil!51869) (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))))

(assert (=> d!1475007 (= (forall!11002 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869) lambda!198578) e!2902868)))

(declare-fun b!4652789 () Bool)

(declare-fun e!2902869 () Bool)

(assert (=> b!4652789 (= e!2902868 e!2902869)))

(declare-fun res!1955872 () Bool)

(assert (=> b!4652789 (=> (not res!1955872) (not e!2902869))))

(assert (=> b!4652789 (= res!1955872 (dynLambda!21574 lambda!198578 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))))))

(declare-fun b!4652790 () Bool)

(assert (=> b!4652790 (= e!2902869 (forall!11002 (t!359101 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)) lambda!198578))))

(assert (= (and d!1475007 (not res!1955871)) b!4652789))

(assert (= (and b!4652789 res!1955872) b!4652790))

(declare-fun b_lambda!173199 () Bool)

(assert (=> (not b_lambda!173199) (not b!4652789)))

(declare-fun m!5529633 () Bool)

(assert (=> b!4652789 m!5529633))

(declare-fun m!5529635 () Bool)

(assert (=> b!4652790 m!5529635))

(assert (=> d!1474451 d!1475007))

(assert (=> b!4651846 d!1474515))

(declare-fun d!1475009 () Bool)

(declare-fun res!1955873 () Bool)

(declare-fun e!2902870 () Bool)

(assert (=> d!1475009 (=> res!1955873 e!2902870)))

(assert (=> d!1475009 (= res!1955873 (and ((_ is Cons!51868) (t!359100 newBucket!224)) (= (_1!29777 (h!58004 (t!359100 newBucket!224))) (_1!29777 (h!58004 newBucket!224)))))))

(assert (=> d!1475009 (= (containsKey!2702 (t!359100 newBucket!224) (_1!29777 (h!58004 newBucket!224))) e!2902870)))

(declare-fun b!4652791 () Bool)

(declare-fun e!2902871 () Bool)

(assert (=> b!4652791 (= e!2902870 e!2902871)))

(declare-fun res!1955874 () Bool)

(assert (=> b!4652791 (=> (not res!1955874) (not e!2902871))))

(assert (=> b!4652791 (= res!1955874 ((_ is Cons!51868) (t!359100 newBucket!224)))))

(declare-fun b!4652792 () Bool)

(assert (=> b!4652792 (= e!2902871 (containsKey!2702 (t!359100 (t!359100 newBucket!224)) (_1!29777 (h!58004 newBucket!224))))))

(assert (= (and d!1475009 (not res!1955873)) b!4652791))

(assert (= (and b!4652791 res!1955874) b!4652792))

(declare-fun m!5529637 () Bool)

(assert (=> b!4652792 m!5529637))

(assert (=> b!4651834 d!1475009))

(declare-fun d!1475011 () Bool)

(assert (=> d!1475011 (= (invariantList!1290 (toList!5191 lt!1815234)) (noDuplicatedKeys!345 (toList!5191 lt!1815234)))))

(declare-fun bs!1061364 () Bool)

(assert (= bs!1061364 d!1475011))

(declare-fun m!5529639 () Bool)

(assert (=> bs!1061364 m!5529639))

(assert (=> b!4651771 d!1475011))

(declare-fun b!4652793 () Bool)

(declare-fun e!2902872 () Option!11812)

(assert (=> b!4652793 (= e!2902872 (Some!11811 (_2!29777 (h!58004 (toList!5191 lt!1815384)))))))

(declare-fun b!4652796 () Bool)

(declare-fun e!2902873 () Option!11812)

(assert (=> b!4652796 (= e!2902873 None!11811)))

(declare-fun b!4652794 () Bool)

(assert (=> b!4652794 (= e!2902872 e!2902873)))

(declare-fun c!796367 () Bool)

(assert (=> b!4652794 (= c!796367 (and ((_ is Cons!51868) (toList!5191 lt!1815384)) (not (= (_1!29777 (h!58004 (toList!5191 lt!1815384))) (_1!29777 (h!58004 oldBucket!40))))))))

(declare-fun b!4652795 () Bool)

(assert (=> b!4652795 (= e!2902873 (getValueByKey!1600 (t!359100 (toList!5191 lt!1815384)) (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun d!1475013 () Bool)

(declare-fun c!796366 () Bool)

(assert (=> d!1475013 (= c!796366 (and ((_ is Cons!51868) (toList!5191 lt!1815384)) (= (_1!29777 (h!58004 (toList!5191 lt!1815384))) (_1!29777 (h!58004 oldBucket!40)))))))

(assert (=> d!1475013 (= (getValueByKey!1600 (toList!5191 lt!1815384) (_1!29777 (h!58004 oldBucket!40))) e!2902872)))

(assert (= (and d!1475013 c!796366) b!4652793))

(assert (= (and d!1475013 (not c!796366)) b!4652794))

(assert (= (and b!4652794 c!796367) b!4652795))

(assert (= (and b!4652794 (not c!796367)) b!4652796))

(declare-fun m!5529641 () Bool)

(assert (=> b!4652795 m!5529641))

(assert (=> b!4651865 d!1475013))

(declare-fun d!1475015 () Bool)

(declare-fun lt!1816146 () List!51992)

(assert (=> d!1475015 (not (containsKey!2702 lt!1816146 key!4968))))

(declare-fun e!2902875 () List!51992)

(assert (=> d!1475015 (= lt!1816146 e!2902875)))

(declare-fun c!796368 () Bool)

(assert (=> d!1475015 (= c!796368 (and ((_ is Cons!51868) (t!359100 oldBucket!40)) (= (_1!29777 (h!58004 (t!359100 oldBucket!40))) key!4968)))))

(assert (=> d!1475015 (noDuplicateKeys!1630 (t!359100 oldBucket!40))))

(assert (=> d!1475015 (= (removePairForKey!1253 (t!359100 oldBucket!40) key!4968) lt!1816146)))

(declare-fun b!4652799 () Bool)

(declare-fun e!2902874 () List!51992)

(assert (=> b!4652799 (= e!2902874 (Cons!51868 (h!58004 (t!359100 oldBucket!40)) (removePairForKey!1253 (t!359100 (t!359100 oldBucket!40)) key!4968)))))

(declare-fun b!4652798 () Bool)

(assert (=> b!4652798 (= e!2902875 e!2902874)))

(declare-fun c!796369 () Bool)

(assert (=> b!4652798 (= c!796369 ((_ is Cons!51868) (t!359100 oldBucket!40)))))

(declare-fun b!4652797 () Bool)

(assert (=> b!4652797 (= e!2902875 (t!359100 (t!359100 oldBucket!40)))))

(declare-fun b!4652800 () Bool)

(assert (=> b!4652800 (= e!2902874 Nil!51868)))

(assert (= (and d!1475015 c!796368) b!4652797))

(assert (= (and d!1475015 (not c!796368)) b!4652798))

(assert (= (and b!4652798 c!796369) b!4652799))

(assert (= (and b!4652798 (not c!796369)) b!4652800))

(declare-fun m!5529643 () Bool)

(assert (=> d!1475015 m!5529643))

(assert (=> d!1475015 m!5527427))

(declare-fun m!5529645 () Bool)

(assert (=> b!4652799 m!5529645))

(assert (=> b!4651643 d!1475015))

(declare-fun b!4652801 () Bool)

(declare-fun tp!1343216 () Bool)

(declare-fun e!2902876 () Bool)

(assert (=> b!4652801 (= e!2902876 (and tp_is_empty!29813 tp_is_empty!29815 tp!1343216))))

(assert (=> b!4651871 (= tp!1343214 e!2902876)))

(assert (= (and b!4651871 ((_ is Cons!51868) (t!359100 (t!359100 newBucket!224)))) b!4652801))

(declare-fun b!4652802 () Bool)

(declare-fun tp!1343217 () Bool)

(declare-fun e!2902877 () Bool)

(assert (=> b!4652802 (= e!2902877 (and tp_is_empty!29813 tp_is_empty!29815 tp!1343217))))

(assert (=> b!4651872 (= tp!1343215 e!2902877)))

(assert (= (and b!4651872 ((_ is Cons!51868) (t!359100 (t!359100 oldBucket!40)))) b!4652802))

(declare-fun b_lambda!173201 () Bool)

(assert (= b_lambda!173159 (or b!4651862 b_lambda!173201)))

(declare-fun bs!1061386 () Bool)

(declare-fun d!1475017 () Bool)

(assert (= bs!1061386 (and d!1475017 b!4651862)))

(assert (=> bs!1061386 (= (dynLambda!21575 lambda!198591 (h!58004 (toList!5191 lt!1815366))) (contains!15011 lt!1815371 (_1!29777 (h!58004 (toList!5191 lt!1815366)))))))

(declare-fun m!5529647 () Bool)

(assert (=> bs!1061386 m!5529647))

(assert (=> b!4652602 d!1475017))

(declare-fun b_lambda!173203 () Bool)

(assert (= b_lambda!173075 (or b!4651851 b_lambda!173203)))

(declare-fun bs!1061389 () Bool)

(declare-fun d!1475019 () Bool)

(assert (= bs!1061389 (and d!1475019 b!4651851)))

(assert (=> bs!1061389 (= (dynLambda!21575 lambda!198587 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))) (contains!15011 lt!1815338 (_1!29777 (h!58004 (toList!5191 (ListMap!4530 Nil!51868))))))))

(declare-fun m!5529649 () Bool)

(assert (=> bs!1061389 m!5529649))

(assert (=> b!4652181 d!1475019))

(declare-fun b_lambda!173205 () Bool)

(assert (= b_lambda!173113 (or d!1474441 b_lambda!173205)))

(declare-fun bs!1061391 () Bool)

(declare-fun d!1475021 () Bool)

(assert (= bs!1061391 (and d!1475021 d!1474441)))

(assert (=> bs!1061391 (= (dynLambda!21574 lambda!198576 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869))) (noDuplicateKeys!1630 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 oldBucket!40) Nil!51869)))))))

(assert (=> bs!1061391 m!5529589))

(assert (=> b!4652347 d!1475021))

(declare-fun b_lambda!173207 () Bool)

(assert (= b_lambda!173095 (or b!4651772 b_lambda!173207)))

(declare-fun bs!1061393 () Bool)

(declare-fun d!1475023 () Bool)

(assert (= bs!1061393 (and d!1475023 b!4651772)))

(assert (=> bs!1061393 (= (dynLambda!21575 lambda!198569 (h!58004 lt!1814957)) (contains!15011 lt!1815244 (_1!29777 (h!58004 lt!1814957))))))

(assert (=> bs!1061393 m!5527343))

(assert (=> d!1474719 d!1475023))

(declare-fun b_lambda!173209 () Bool)

(assert (= b_lambda!173081 (or b!4651772 b_lambda!173209)))

(declare-fun bs!1061395 () Bool)

(declare-fun d!1475025 () Bool)

(assert (= bs!1061395 (and d!1475025 b!4651772)))

(assert (=> bs!1061395 (= (dynLambda!21575 lambda!198569 (h!58004 (toList!5191 lt!1815239))) (contains!15011 lt!1815244 (_1!29777 (h!58004 (toList!5191 lt!1815239)))))))

(declare-fun m!5529651 () Bool)

(assert (=> bs!1061395 m!5529651))

(assert (=> b!4652210 d!1475025))

(declare-fun b_lambda!173211 () Bool)

(assert (= b_lambda!173079 (or b!4651772 b_lambda!173211)))

(assert (=> b!4652189 d!1475023))

(declare-fun b_lambda!173213 () Bool)

(assert (= b_lambda!173117 (or b!4651851 b_lambda!173213)))

(declare-fun bs!1061397 () Bool)

(declare-fun d!1475027 () Bool)

(assert (= bs!1061397 (and d!1475027 b!4651851)))

(assert (=> bs!1061397 (= (dynLambda!21575 lambda!198587 (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (contains!15011 lt!1815338 (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(assert (=> bs!1061397 m!5527517))

(assert (=> b!4652414 d!1475027))

(declare-fun b_lambda!173215 () Bool)

(assert (= b_lambda!173011 (or d!1474467 b_lambda!173215)))

(declare-fun bs!1061399 () Bool)

(declare-fun d!1475029 () Bool)

(assert (= bs!1061399 (and d!1475029 d!1474467)))

(assert (=> bs!1061399 (= (dynLambda!21575 lambda!198592 (h!58004 oldBucket!40)) (contains!15011 lt!1815361 (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun m!5529653 () Bool)

(assert (=> bs!1061399 m!5529653))

(assert (=> b!4651910 d!1475029))

(declare-fun b_lambda!173217 () Bool)

(assert (= b_lambda!173105 (or d!1474429 b_lambda!173217)))

(declare-fun bs!1061401 () Bool)

(declare-fun d!1475031 () Bool)

(assert (= bs!1061401 (and d!1475031 d!1474429)))

(assert (=> bs!1061401 (= (dynLambda!21574 lambda!198573 (h!58005 (toList!5192 lt!1814960))) (allKeysSameHash!1484 (_2!29778 (h!58005 (toList!5192 lt!1814960))) (_1!29778 (h!58005 (toList!5192 lt!1814960))) hashF!1389))))

(declare-fun m!5529655 () Bool)

(assert (=> bs!1061401 m!5529655))

(assert (=> b!4652286 d!1475031))

(declare-fun b_lambda!173219 () Bool)

(assert (= b_lambda!173017 (or b!4651844 b_lambda!173219)))

(declare-fun bs!1061403 () Bool)

(declare-fun d!1475033 () Bool)

(assert (= bs!1061403 (and d!1475033 b!4651844)))

(assert (=> bs!1061403 (= (dynLambda!21575 lambda!198582 (h!58004 oldBucket!40)) (contains!15011 lt!1815313 (_1!29777 (h!58004 oldBucket!40))))))

(assert (=> bs!1061403 m!5527471))

(assert (=> d!1474523 d!1475033))

(declare-fun b_lambda!173221 () Bool)

(assert (= b_lambda!173177 (or d!1474365 b_lambda!173221)))

(declare-fun bs!1061406 () Bool)

(declare-fun d!1475035 () Bool)

(assert (= bs!1061406 (and d!1475035 d!1474365)))

(assert (=> bs!1061406 (= (dynLambda!21575 lambda!198476 (h!58004 newBucket!224)) (= (hash!3759 hashF!1389 (_1!29777 (h!58004 newBucket!224))) hash!414))))

(declare-fun m!5529657 () Bool)

(assert (=> bs!1061406 m!5529657))

(assert (=> b!4652677 d!1475035))

(declare-fun b_lambda!173223 () Bool)

(assert (= b_lambda!173199 (or d!1474451 b_lambda!173223)))

(declare-fun bs!1061408 () Bool)

(declare-fun d!1475037 () Bool)

(assert (= bs!1061408 (and d!1475037 d!1474451)))

(assert (=> bs!1061408 (= (dynLambda!21574 lambda!198578 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869))) (noDuplicateKeys!1630 (_2!29778 (h!58005 (Cons!51869 (tuple2!52969 hash!414 newBucket!224) Nil!51869)))))))

(assert (=> bs!1061408 m!5529445))

(assert (=> b!4652789 d!1475037))

(declare-fun b_lambda!173225 () Bool)

(assert (= b_lambda!173107 (or d!1474461 b_lambda!173225)))

(declare-fun bs!1061410 () Bool)

(declare-fun d!1475039 () Bool)

(assert (= bs!1061410 (and d!1475039 d!1474461)))

(assert (=> bs!1061410 (= (dynLambda!21575 lambda!198588 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))) (contains!15011 lt!1815328 (_1!29777 (h!58004 (toList!5191 (ListMap!4530 Nil!51868))))))))

(declare-fun m!5529659 () Bool)

(assert (=> bs!1061410 m!5529659))

(assert (=> b!4652302 d!1475039))

(declare-fun b_lambda!173227 () Bool)

(assert (= b_lambda!173063 (or d!1474457 b_lambda!173227)))

(declare-fun bs!1061411 () Bool)

(declare-fun d!1475041 () Bool)

(assert (= bs!1061411 (and d!1475041 d!1474457)))

(assert (=> bs!1061411 (= (dynLambda!21574 lambda!198584 (h!58005 Nil!51869)) (noDuplicateKeys!1630 (_2!29778 (h!58005 Nil!51869))))))

(declare-fun m!5529661 () Bool)

(assert (=> bs!1061411 m!5529661))

(assert (=> b!4652151 d!1475041))

(declare-fun b_lambda!173229 () Bool)

(assert (= b_lambda!173019 (or b!4651844 b_lambda!173229)))

(declare-fun bs!1061413 () Bool)

(declare-fun d!1475043 () Bool)

(assert (= bs!1061413 (and d!1475043 b!4651844)))

(assert (=> bs!1061413 (= (dynLambda!21575 lambda!198581 (h!58004 (toList!5191 lt!1814962))) (contains!15011 lt!1814962 (_1!29777 (h!58004 (toList!5191 lt!1814962)))))))

(declare-fun m!5529663 () Bool)

(assert (=> bs!1061413 m!5529663))

(assert (=> b!4651966 d!1475043))

(declare-fun b_lambda!173231 () Bool)

(assert (= b_lambda!173101 (or d!1474453 b_lambda!173231)))

(declare-fun bs!1061414 () Bool)

(declare-fun d!1475045 () Bool)

(assert (= bs!1061414 (and d!1475045 d!1474453)))

(assert (=> bs!1061414 (= (dynLambda!21574 lambda!198579 (h!58005 lt!1814954)) (noDuplicateKeys!1630 (_2!29778 (h!58005 lt!1814954))))))

(assert (=> bs!1061414 m!5527585))

(assert (=> b!4652280 d!1475045))

(declare-fun b_lambda!173233 () Bool)

(assert (= b_lambda!173185 (or d!1474445 b_lambda!173233)))

(declare-fun bs!1061416 () Bool)

(declare-fun d!1475047 () Bool)

(assert (= bs!1061416 (and d!1475047 d!1474445)))

(assert (=> bs!1061416 (= (dynLambda!21575 lambda!198577 (h!58004 oldBucket!40)) (= (hash!3759 hashF!1389 (_1!29777 (h!58004 oldBucket!40))) hash!414))))

(declare-fun m!5529665 () Bool)

(assert (=> bs!1061416 m!5529665))

(assert (=> b!4652727 d!1475047))

(declare-fun b_lambda!173235 () Bool)

(assert (= b_lambda!173077 (or b!4651772 b_lambda!173235)))

(declare-fun bs!1061418 () Bool)

(declare-fun d!1475049 () Bool)

(assert (= bs!1061418 (and d!1475049 b!4651772)))

(assert (=> bs!1061418 (= (dynLambda!21575 lambda!198568 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))) (contains!15011 (ListMap!4530 Nil!51868) (_1!29777 (h!58004 (toList!5191 (ListMap!4530 Nil!51868))))))))

(declare-fun m!5529667 () Bool)

(assert (=> bs!1061418 m!5529667))

(assert (=> b!4652183 d!1475049))

(declare-fun b_lambda!173237 () Bool)

(assert (= b_lambda!173005 (or b!4651862 b_lambda!173237)))

(declare-fun bs!1061420 () Bool)

(declare-fun d!1475051 () Bool)

(assert (= bs!1061420 (and d!1475051 b!4651862)))

(assert (=> bs!1061420 (= (dynLambda!21575 lambda!198591 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))) (contains!15011 lt!1815371 (_1!29777 (h!58004 (toList!5191 (ListMap!4530 Nil!51868))))))))

(declare-fun m!5529669 () Bool)

(assert (=> bs!1061420 m!5529669))

(assert (=> b!4651881 d!1475051))

(declare-fun b_lambda!173239 () Bool)

(assert (= b_lambda!173119 (or b!4651851 b_lambda!173239)))

(assert (=> d!1474793 d!1475027))

(declare-fun b_lambda!173241 () Bool)

(assert (= b_lambda!173133 (or b!4651765 b_lambda!173241)))

(declare-fun bs!1061422 () Bool)

(declare-fun d!1475053 () Bool)

(assert (= bs!1061422 (and d!1475053 b!4651765)))

(assert (=> bs!1061422 (= (dynLambda!21575 lambda!198563 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))) (contains!15011 (ListMap!4530 Nil!51868) (_1!29777 (h!58004 (toList!5191 (ListMap!4530 Nil!51868))))))))

(assert (=> bs!1061422 m!5529667))

(assert (=> b!4652477 d!1475053))

(declare-fun b_lambda!173243 () Bool)

(assert (= b_lambda!173197 (or b!4651587 b_lambda!173243)))

(declare-fun bs!1061424 () Bool)

(declare-fun d!1475055 () Bool)

(assert (= bs!1061424 (and d!1475055 b!4651587)))

(assert (=> bs!1061424 (= (dynLambda!21574 lambda!198470 (h!58005 (t!359101 lt!1814954))) (noDuplicateKeys!1630 (_2!29778 (h!58005 (t!359101 lt!1814954)))))))

(declare-fun m!5529671 () Bool)

(assert (=> bs!1061424 m!5529671))

(assert (=> b!4652787 d!1475055))

(declare-fun b_lambda!173245 () Bool)

(assert (= b_lambda!173115 (or b!4651851 b_lambda!173245)))

(declare-fun bs!1061426 () Bool)

(declare-fun d!1475057 () Bool)

(assert (= bs!1061426 (and d!1475057 b!4651851)))

(assert (=> bs!1061426 (= (dynLambda!21575 lambda!198587 (h!58004 (toList!5191 lt!1815333))) (contains!15011 lt!1815338 (_1!29777 (h!58004 (toList!5191 lt!1815333)))))))

(declare-fun m!5529673 () Bool)

(assert (=> bs!1061426 m!5529673))

(assert (=> b!4652349 d!1475057))

(declare-fun b_lambda!173247 () Bool)

(assert (= b_lambda!173047 (or d!1474455 b_lambda!173247)))

(declare-fun bs!1061428 () Bool)

(declare-fun d!1475059 () Bool)

(assert (= bs!1061428 (and d!1475059 d!1474455)))

(assert (=> bs!1061428 (= (dynLambda!21575 lambda!198583 (h!58004 (toList!5191 lt!1814962))) (contains!15011 lt!1815303 (_1!29777 (h!58004 (toList!5191 lt!1814962)))))))

(declare-fun m!5529675 () Bool)

(assert (=> bs!1061428 m!5529675))

(assert (=> b!4652097 d!1475059))

(declare-fun b_lambda!173249 () Bool)

(assert (= b_lambda!173151 (or b!4651862 b_lambda!173249)))

(declare-fun bs!1061429 () Bool)

(declare-fun d!1475061 () Bool)

(assert (= bs!1061429 (and d!1475061 b!4651862)))

(assert (=> bs!1061429 (= (dynLambda!21575 lambda!198591 (h!58004 oldBucket!40)) (contains!15011 lt!1815371 (_1!29777 (h!58004 oldBucket!40))))))

(assert (=> bs!1061429 m!5527559))

(assert (=> d!1474885 d!1475061))

(declare-fun b_lambda!173251 () Bool)

(assert (= b_lambda!173049 (or b!4651765 b_lambda!173251)))

(declare-fun bs!1061431 () Bool)

(declare-fun d!1475063 () Bool)

(assert (= bs!1061431 (and d!1475063 b!4651765)))

(assert (=> bs!1061431 (= (dynLambda!21575 lambda!198564 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))) (contains!15011 lt!1815223 (_1!29777 (h!58004 (toList!5191 (ListMap!4530 Nil!51868))))))))

(declare-fun m!5529677 () Bool)

(assert (=> bs!1061431 m!5529677))

(assert (=> b!4652099 d!1475063))

(declare-fun b_lambda!173253 () Bool)

(assert (= b_lambda!173067 (or d!1474467 b_lambda!173253)))

(declare-fun bs!1061432 () Bool)

(declare-fun d!1475065 () Bool)

(assert (= bs!1061432 (and d!1475065 d!1474467)))

(assert (=> bs!1061432 (= (dynLambda!21575 lambda!198592 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))) (contains!15011 lt!1815361 (_1!29777 (h!58004 (toList!5191 (ListMap!4530 Nil!51868))))))))

(declare-fun m!5529679 () Bool)

(assert (=> bs!1061432 m!5529679))

(assert (=> b!4652161 d!1475065))

(declare-fun b_lambda!173255 () Bool)

(assert (= b_lambda!173035 (or b!4651844 b_lambda!173255)))

(assert (=> b!4651991 d!1475033))

(declare-fun b_lambda!173257 () Bool)

(assert (= b_lambda!173065 (or d!1474391 b_lambda!173257)))

(declare-fun bs!1061433 () Bool)

(declare-fun d!1475067 () Bool)

(assert (= bs!1061433 (and d!1475067 d!1474391)))

(assert (=> bs!1061433 (= (dynLambda!21575 lambda!198566 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))) (contains!15011 lt!1815213 (_1!29777 (h!58004 (toList!5191 (ListMap!4530 Nil!51868))))))))

(declare-fun m!5529681 () Bool)

(assert (=> bs!1061433 m!5529681))

(assert (=> b!4652159 d!1475067))

(declare-fun b_lambda!173259 () Bool)

(assert (= b_lambda!173015 (or b!4651844 b_lambda!173259)))

(declare-fun bs!1061434 () Bool)

(declare-fun d!1475069 () Bool)

(assert (= bs!1061434 (and d!1475069 b!4651844)))

(assert (=> bs!1061434 (= (dynLambda!21575 lambda!198582 (h!58004 (toList!5191 lt!1815308))) (contains!15011 lt!1815313 (_1!29777 (h!58004 (toList!5191 lt!1815308)))))))

(declare-fun m!5529683 () Bool)

(assert (=> bs!1061434 m!5529683))

(assert (=> b!4651929 d!1475069))

(declare-fun b_lambda!173261 () Bool)

(assert (= b_lambda!173155 (or b!4651862 b_lambda!173261)))

(declare-fun bs!1061435 () Bool)

(declare-fun d!1475071 () Bool)

(assert (= bs!1061435 (and d!1475071 b!4651862)))

(assert (=> bs!1061435 (= (dynLambda!21575 lambda!198590 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))) (contains!15011 (ListMap!4530 Nil!51868) (_1!29777 (h!58004 (toList!5191 (ListMap!4530 Nil!51868))))))))

(assert (=> bs!1061435 m!5529667))

(assert (=> b!4652589 d!1475071))

(declare-fun b_lambda!173263 () Bool)

(assert (= b_lambda!173179 (or d!1474391 b_lambda!173263)))

(declare-fun bs!1061436 () Bool)

(declare-fun d!1475073 () Bool)

(assert (= bs!1061436 (and d!1475073 d!1474391)))

(assert (=> bs!1061436 (= (dynLambda!21575 lambda!198566 (h!58004 newBucket!224)) (contains!15011 lt!1815213 (_1!29777 (h!58004 newBucket!224))))))

(declare-fun m!5529685 () Bool)

(assert (=> bs!1061436 m!5529685))

(assert (=> b!4652679 d!1475073))

(declare-fun b_lambda!173265 () Bool)

(assert (= b_lambda!173103 (or d!1474425 b_lambda!173265)))

(declare-fun bs!1061437 () Bool)

(declare-fun d!1475075 () Bool)

(assert (= bs!1061437 (and d!1475075 d!1474425)))

(assert (=> bs!1061437 (= (dynLambda!21575 lambda!198570 (h!58004 lt!1814957)) (contains!15011 lt!1815234 (_1!29777 (h!58004 lt!1814957))))))

(declare-fun m!5529687 () Bool)

(assert (=> bs!1061437 m!5529687))

(assert (=> b!4652284 d!1475075))

(declare-fun b_lambda!173267 () Bool)

(assert (= b_lambda!173089 (or b!4651772 b_lambda!173267)))

(declare-fun bs!1061438 () Bool)

(declare-fun d!1475077 () Bool)

(assert (= bs!1061438 (and d!1475077 b!4651772)))

(assert (=> bs!1061438 (= (dynLambda!21575 lambda!198569 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))) (contains!15011 lt!1815244 (_1!29777 (h!58004 (toList!5191 (ListMap!4530 Nil!51868))))))))

(declare-fun m!5529689 () Bool)

(assert (=> bs!1061438 m!5529689))

(assert (=> b!4652243 d!1475077))

(declare-fun b_lambda!173269 () Bool)

(assert (= b_lambda!173121 (or b!4651851 b_lambda!173269)))

(declare-fun bs!1061439 () Bool)

(declare-fun d!1475079 () Bool)

(assert (= bs!1061439 (and d!1475079 b!4651851)))

(assert (=> bs!1061439 (= (dynLambda!21575 lambda!198586 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))) (contains!15011 (ListMap!4530 Nil!51868) (_1!29777 (h!58004 (toList!5191 (ListMap!4530 Nil!51868))))))))

(assert (=> bs!1061439 m!5529667))

(assert (=> b!4652426 d!1475079))

(declare-fun b_lambda!173271 () Bool)

(assert (= b_lambda!173131 (or b!4651765 b_lambda!173271)))

(declare-fun bs!1061440 () Bool)

(declare-fun d!1475081 () Bool)

(assert (= bs!1061440 (and d!1475081 b!4651765)))

(assert (=> bs!1061440 (= (dynLambda!21575 lambda!198564 (h!58004 newBucket!224)) (contains!15011 lt!1815223 (_1!29777 (h!58004 newBucket!224))))))

(assert (=> bs!1061440 m!5527295))

(assert (=> d!1474831 d!1475081))

(declare-fun b_lambda!173273 () Bool)

(assert (= b_lambda!173099 (or d!1474455 b_lambda!173273)))

(declare-fun bs!1061441 () Bool)

(declare-fun d!1475083 () Bool)

(assert (= bs!1061441 (and d!1475083 d!1474455)))

(assert (=> bs!1061441 (= (dynLambda!21575 lambda!198583 (h!58004 oldBucket!40)) (contains!15011 lt!1815303 (_1!29777 (h!58004 oldBucket!40))))))

(declare-fun m!5529691 () Bool)

(assert (=> bs!1061441 m!5529691))

(assert (=> b!4652274 d!1475083))

(declare-fun b_lambda!173275 () Bool)

(assert (= b_lambda!173073 (or d!1474425 b_lambda!173275)))

(declare-fun bs!1061442 () Bool)

(declare-fun d!1475085 () Bool)

(assert (= bs!1061442 (and d!1475085 d!1474425)))

(assert (=> bs!1061442 (= (dynLambda!21575 lambda!198570 (h!58004 (toList!5191 (ListMap!4530 Nil!51868)))) (contains!15011 lt!1815234 (_1!29777 (h!58004 (toList!5191 (ListMap!4530 Nil!51868))))))))

(declare-fun m!5529693 () Bool)

(assert (=> bs!1061442 m!5529693))

(assert (=> b!4652179 d!1475085))

(declare-fun b_lambda!173277 () Bool)

(assert (= b_lambda!173097 (or d!1474461 b_lambda!173277)))

(declare-fun bs!1061443 () Bool)

(declare-fun d!1475087 () Bool)

(assert (= bs!1061443 (and d!1475087 d!1474461)))

(assert (=> bs!1061443 (= (dynLambda!21575 lambda!198588 (h!58004 (Cons!51868 lt!1814956 lt!1814957))) (contains!15011 lt!1815328 (_1!29777 (h!58004 (Cons!51868 lt!1814956 lt!1814957)))))))

(declare-fun m!5529695 () Bool)

(assert (=> bs!1061443 m!5529695))

(assert (=> b!4652270 d!1475087))

(declare-fun b_lambda!173279 () Bool)

(assert (= b_lambda!173157 (or b!4651862 b_lambda!173279)))

(assert (=> b!4652600 d!1475061))

(declare-fun b_lambda!173281 () Bool)

(assert (= b_lambda!173129 (or b!4651765 b_lambda!173281)))

(assert (=> b!4652468 d!1475081))

(declare-fun b_lambda!173283 () Bool)

(assert (= b_lambda!173135 (or b!4651765 b_lambda!173283)))

(declare-fun bs!1061444 () Bool)

(declare-fun d!1475089 () Bool)

(assert (= bs!1061444 (and d!1475089 b!4651765)))

(assert (=> bs!1061444 (= (dynLambda!21575 lambda!198564 (h!58004 (toList!5191 lt!1815218))) (contains!15011 lt!1815223 (_1!29777 (h!58004 (toList!5191 lt!1815218)))))))

(declare-fun m!5529697 () Bool)

(assert (=> bs!1061444 m!5529697))

(assert (=> b!4652493 d!1475089))

(declare-fun b_lambda!173285 () Bool)

(assert (= b_lambda!173013 (or b!4651844 b_lambda!173285)))

(declare-fun bs!1061445 () Bool)

(declare-fun d!1475091 () Bool)

(assert (= bs!1061445 (and d!1475091 b!4651844)))

(assert (=> bs!1061445 (= (dynLambda!21575 lambda!198582 (h!58004 (toList!5191 lt!1814962))) (contains!15011 lt!1815313 (_1!29777 (h!58004 (toList!5191 lt!1814962)))))))

(declare-fun m!5529699 () Bool)

(assert (=> bs!1061445 m!5529699))

(assert (=> b!4651927 d!1475091))

(check-sat (not b_lambda!173257) (not b_lambda!173285) (not d!1474815) (not b!4652100) (not b!4652081) (not b!4651946) (not b!4651969) (not b!4652250) (not d!1474705) (not b_lambda!173203) (not d!1474565) (not bs!1061432) (not bs!1061439) (not b!4652318) (not b!4652251) (not b!4652096) (not b!4652494) (not d!1474765) (not b!4652308) (not bm!324991) (not d!1474687) (not b!4652325) (not b!4652077) (not b!4652002) (not d!1474661) (not b!4652206) (not bs!1061438) (not b!4652802) (not bs!1061429) (not d!1474871) (not b!4652182) (not b!4652216) (not b!4652320) (not bs!1061441) (not bs!1061406) (not d!1474677) (not b!4652607) (not b!4652788) (not d!1474831) (not bm!325011) (not b!4652593) (not d!1474981) (not b_lambda!173261) (not b!4652707) (not b!4652440) (not bs!1061445) (not b!4651968) (not b!4651945) (not d!1474883) (not b!4652214) (not bm!325080) (not b!4652272) (not b!4651930) (not b!4651936) (not b!4652173) (not b!4652257) (not b!4652786) (not b!4652427) (not bs!1061424) (not b_lambda!173239) (not b!4651964) (not bs!1061389) (not b!4652671) (not b_lambda!173271) (not d!1474887) tp_is_empty!29813 (not b!4652420) (not b!4652287) (not b!4652022) (not b_lambda!173149) (not b!4652599) (not d!1474885) (not b_lambda!173269) (not b_lambda!173223) (not d!1474997) (not b!4652000) (not b!4652505) (not bm!325068) (not b!4652209) (not b!4651882) (not bm!325009) (not b!4652132) (not b!4652204) (not b_lambda!173207) (not d!1474485) (not b!4652356) (not b!4652441) (not b!4652672) (not b_lambda!173227) (not bs!1061411) (not b!4652568) (not b!4652080) (not b!4652561) (not b!4652082) (not b_lambda!173231) (not bs!1061444) (not d!1474955) (not b!4651943) (not d!1474647) (not b!4652104) (not b!4652364) (not bm!325055) (not bs!1061408) (not d!1474641) (not bs!1061418) (not b!4652098) (not bm!325070) (not b!4652337) (not b!4652710) (not d!1474501) (not bm!325013) (not d!1474803) (not d!1474601) (not b!4652319) (not b_lambda!173205) (not b!4651967) (not d!1474521) (not b!4652102) (not bm!324994) (not bs!1061403) (not d!1474593) (not bm!325032) (not b!4651890) (not b!4651970) (not b!4652801) (not d!1474503) (not b!4652252) (not b!4651884) (not b_lambda!173259) (not d!1474805) (not b!4652331) (not b!4652597) (not bm!325020) (not d!1475011) (not b_lambda!173193) (not b!4652316) (not b!4651956) (not b!4652313) (not b!4652790) (not d!1474729) (not b_lambda!173109) (not b!4652502) (not b!4652256) (not b!4651878) (not b!4652311) (not d!1474569) (not b!4652023) (not d!1474787) (not b!4651949) (not b!4652207) (not b!4652133) (not b!4652567) (not b!4652547) (not bm!325031) (not b!4652253) (not b_lambda!173213) (not bs!1061422) (not b!4651903) (not bs!1061434) (not b_lambda!173273) (not b!4652601) (not bm!325081) (not bm!325057) (not b!4652792) (not b!4651905) (not b_lambda!173263) (not bm!325007) (not b!4652606) (not b!4652550) (not d!1474713) (not bm!325082) (not b!4652184) (not bs!1061395) (not b_lambda!173243) (not b!4652285) (not d!1474747) (not b!4651960) (not d!1474531) (not d!1474909) (not d!1475005) (not b!4652425) (not b!4651947) (not bm!325078) (not b!4652416) (not b!4652566) (not b!4652305) (not d!1474793) (not b!4652605) (not b!4652208) (not d!1474811) (not b!4652213) (not b_lambda!173251) (not b_lambda!173279) (not b!4652795) (not b!4652548) (not b_lambda!173277) (not b!4651880) (not b!4652421) (not b!4652152) (not b!4652345) (not b!4652784) (not b!4652355) (not b!4652501) (not b!4652004) (not b!4652212) (not b!4652283) (not b!4652079) (not b!4652741) (not b!4652149) (not b!4652317) (not b!4652503) (not d!1474951) (not d!1474603) (not b!4652442) (not b!4652249) (not b!4651995) (not b!4652443) (not b!4651959) (not b_lambda!173209) (not b!4652728) (not b!4652596) (not b!4651944) (not b!4652083) (not bs!1061386) (not d!1474771) (not b!4652667) (not d!1475015) (not bs!1061442) (not d!1474975) (not b!4652565) (not d!1474775) (not b_lambda!173235) (not b!4652674) (not b_lambda!173255) (not b!4652362) (not bs!1061416) (not d!1474649) (not d!1474783) (not d!1474901) (not b!4652348) (not b!4652590) (not bm!325012) (not d!1474643) (not bs!1061414) (not b!4652282) (not b_lambda!173249) (not b!4652422) (not bs!1061399) (not b!4652595) (not bm!324989) (not b!4652211) (not d!1474487) (not b!4652739) (not bm!325029) (not b!4652419) (not bs!1061410) (not b_lambda!173217) (not b!4652333) (not bm!325030) (not b!4652704) (not b_lambda!173245) (not bs!1061433) (not bm!325056) (not b!4652594) (not b!4651963) (not b!4651992) (not b!4652498) (not b_lambda!173215) (not b!4651928) (not b!4652598) (not b!4652359) (not d!1474881) (not b!4652508) (not b!4652160) (not b!4652358) (not d!1474557) (not b!4652439) (not d!1474497) (not b!4652327) (not b!4652322) (not b!4652330) (not b!4652433) (not bs!1061428) (not bm!325058) (not b!4652706) (not b!4652244) (not b!4652303) (not b!4652499) (not d!1474789) (not b!4652560) (not b_lambda!173247) (not d!1474751) (not d!1474781) (not b!4652721) tp_is_empty!29815 (not bs!1061393) (not b!4652415) (not b!4652357) (not b!4652289) (not b!4652005) (not d!1474719) (not b_lambda!173265) (not b!4652504) (not bm!325067) (not bs!1061397) (not b!4651911) (not b!4652603) (not bs!1061420) (not bm!325022) (not b_lambda!173241) (not b!4651948) (not bs!1061440) (not d!1474595) (not b!4651999) (not b!4652205) (not b!4652737) (not b!4652136) (not b!4652563) (not d!1474843) (not b!4652423) (not b!4652424) (not b!4652162) (not b!4651972) (not b!4652281) (not d!1474757) (not b!4652469) (not b!4652094) (not bm!325024) (not d!1474629) (not bm!325064) (not b_lambda!173201) (not bs!1061431) (not d!1474769) (not b_lambda!173283) (not b!4652134) (not b!4652273) (not b_lambda!173221) (not b_lambda!173003) (not b!4652678) (not b!4652076) (not b!4652342) (not bs!1061437) (not b_lambda!173069) (not b!4652328) (not d!1474527) (not b!4652470) (not b_lambda!173229) (not b_lambda!173233) (not b!4652203) (not b!4652708) (not b_lambda!173195) (not bm!324992) (not d!1474683) (not bm!324993) (not b!4652497) (not b!4652564) (not b!4652001) (not b_lambda!173225) (not bs!1061443) (not d!1474663) (not b!4652354) (not b!4652101) (not bs!1061435) (not d!1474519) (not b_lambda!173267) (not bm!325019) (not b!4652361) (not bm!325079) (not b!4652350) (not b!4652158) (not d!1474967) (not b!4652321) (not b!4652609) (not bs!1061436) (not b!4651996) (not b!4652288) (not b!4652429) (not bm!325018) (not b!4652682) (not b_lambda!173187) (not b!4651917) (not b!4652003) (not d!1474845) (not bm!325021) (not b!4652413) (not bm!325049) (not bm!325069) (not b_lambda!173211) (not b!4652175) (not d!1474523) (not b_lambda!173253) (not b_lambda!173111) (not b!4652431) (not b!4652260) (not b!4652438) (not b!4652275) (not b!4652247) (not b_lambda!173219) (not b!4652190) (not bs!1061426) (not b!4652360) (not b!4652334) (not bm!325077) (not b_lambda!173275) (not b!4652478) (not b!4652336) (not b!4652016) (not bm!325048) (not d!1474607) (not b!4652353) (not b_lambda!173123) (not b!4652103) (not b!4652412) (not b!4652180) (not b_lambda!173281) (not b!4651935) (not bm!324990) (not b!4651965) (not bm!325026) (not b!4651961) (not b!4652730) (not d!1474919) (not b!4652088) (not b!4652444) (not b!4652506) (not bm!325028) (not b!4652680) (not b!4651962) (not bs!1061391) (not b!4652799) (not b!4652556) (not bs!1061413) (not b!4652500) (not bs!1061401) (not b!4652335) (not b!4652562) (not d!1474795) (not b!4652271) (not b!4652673) (not b!4652299) (not b!4652559) (not d!1474571) (not b!4651904) (not b!4652687) (not b_lambda!172999) (not b!4652738) (not b_lambda!173237) (not b!4652781) (not b_lambda!173001) (not b!4652248))
(check-sat)
