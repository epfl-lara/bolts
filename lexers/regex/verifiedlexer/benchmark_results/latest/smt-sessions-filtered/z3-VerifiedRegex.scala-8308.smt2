; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!431732 () Bool)

(assert start!431732)

(declare-fun b!4425525 () Bool)

(declare-fun res!1829615 () Bool)

(declare-fun e!2755555 () Bool)

(assert (=> b!4425525 (=> (not res!1829615) (not e!2755555))))

(declare-datatypes ((V!11191 0))(
  ( (V!11192 (val!17027 Int)) )
))
(declare-datatypes ((K!10945 0))(
  ( (K!10946 (val!17028 Int)) )
))
(declare-datatypes ((tuple2!49374 0))(
  ( (tuple2!49375 (_1!27981 K!10945) (_2!27981 V!11191)) )
))
(declare-datatypes ((List!49705 0))(
  ( (Nil!49581) (Cons!49581 (h!55266 tuple2!49374) (t!356643 List!49705)) )
))
(declare-datatypes ((tuple2!49376 0))(
  ( (tuple2!49377 (_1!27982 (_ BitVec 64)) (_2!27982 List!49705)) )
))
(declare-datatypes ((List!49706 0))(
  ( (Nil!49582) (Cons!49582 (h!55267 tuple2!49376) (t!356644 List!49706)) )
))
(declare-datatypes ((ListLongMap!2135 0))(
  ( (ListLongMap!2136 (toList!3485 List!49706)) )
))
(declare-fun lm!1616 () ListLongMap!2135)

(declare-datatypes ((Hashable!5143 0))(
  ( (HashableExt!5142 (__x!30846 Int)) )
))
(declare-fun hashF!1220 () Hashable!5143)

(declare-fun allKeysSameHashInMap!855 (ListLongMap!2135 Hashable!5143) Bool)

(assert (=> b!4425525 (= res!1829615 (allKeysSameHashInMap!855 lm!1616 hashF!1220))))

(declare-fun b!4425526 () Bool)

(declare-fun e!2755550 () Bool)

(declare-fun e!2755549 () Bool)

(assert (=> b!4425526 (= e!2755550 (not e!2755549))))

(declare-fun res!1829614 () Bool)

(assert (=> b!4425526 (=> res!1829614 e!2755549)))

(declare-fun lt!1624737 () ListLongMap!2135)

(declare-fun lambda!153918 () Int)

(declare-fun forall!9562 (List!49706 Int) Bool)

(assert (=> b!4425526 (= res!1829614 (not (forall!9562 (toList!3485 lt!1624737) lambda!153918)))))

(assert (=> b!4425526 (forall!9562 (toList!3485 lt!1624737) lambda!153918)))

(declare-fun lt!1624734 () tuple2!49376)

(declare-fun +!1082 (ListLongMap!2135 tuple2!49376) ListLongMap!2135)

(assert (=> b!4425526 (= lt!1624737 (+!1082 lm!1616 lt!1624734))))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun newBucket!194 () List!49705)

(assert (=> b!4425526 (= lt!1624734 (tuple2!49377 hash!366 newBucket!194))))

(declare-datatypes ((Unit!81975 0))(
  ( (Unit!81976) )
))
(declare-fun lt!1624739 () Unit!81975)

(declare-fun addValidProp!393 (ListLongMap!2135 Int (_ BitVec 64) List!49705) Unit!81975)

(assert (=> b!4425526 (= lt!1624739 (addValidProp!393 lm!1616 lambda!153918 hash!366 newBucket!194))))

(declare-fun b!4425527 () Bool)

(declare-fun e!2755556 () Bool)

(assert (=> b!4425527 (= e!2755549 e!2755556)))

(declare-fun res!1829609 () Bool)

(assert (=> b!4425527 (=> res!1829609 e!2755556)))

(declare-fun head!9216 (ListLongMap!2135) tuple2!49376)

(assert (=> b!4425527 (= res!1829609 (= (head!9216 lm!1616) lt!1624734))))

(declare-datatypes ((ListMap!2729 0))(
  ( (ListMap!2730 (toList!3486 List!49705)) )
))
(declare-fun lt!1624742 () ListMap!2729)

(declare-fun lt!1624741 () ListMap!2729)

(declare-fun eq!407 (ListMap!2729 ListMap!2729) Bool)

(assert (=> b!4425527 (eq!407 lt!1624742 lt!1624741)))

(declare-fun lt!1624744 () ListMap!2729)

(declare-fun lt!1624746 () tuple2!49374)

(declare-fun +!1083 (ListMap!2729 tuple2!49374) ListMap!2729)

(assert (=> b!4425527 (= lt!1624741 (+!1083 lt!1624744 lt!1624746))))

(declare-fun key!3717 () K!10945)

(declare-fun newValue!93 () V!11191)

(assert (=> b!4425527 (= lt!1624746 (tuple2!49375 key!3717 newValue!93))))

(declare-fun lt!1624743 () ListLongMap!2135)

(declare-fun extractMap!810 (List!49706) ListMap!2729)

(assert (=> b!4425527 (= lt!1624744 (extractMap!810 (toList!3485 lt!1624743)))))

(assert (=> b!4425527 (= lt!1624742 (extractMap!810 (toList!3485 (+!1082 lt!1624743 lt!1624734))))))

(declare-fun lt!1624745 () Unit!81975)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!123 (ListLongMap!2135 (_ BitVec 64) List!49705 K!10945 V!11191 Hashable!5143) Unit!81975)

(assert (=> b!4425527 (= lt!1624745 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!123 lt!1624743 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7270 (ListLongMap!2135) ListLongMap!2135)

(assert (=> b!4425527 (= lt!1624743 (tail!7270 lm!1616))))

(declare-fun lt!1624733 () Unit!81975)

(declare-fun e!2755553 () Unit!81975)

(assert (=> b!4425527 (= lt!1624733 e!2755553)))

(declare-fun c!753363 () Bool)

(declare-fun contains!12082 (ListMap!2729 K!10945) Bool)

(declare-fun tail!7271 (List!49706) List!49706)

(assert (=> b!4425527 (= c!753363 (contains!12082 (extractMap!810 (tail!7271 (toList!3485 lm!1616))) key!3717))))

(declare-fun b!4425529 () Bool)

(declare-fun Unit!81977 () Unit!81975)

(assert (=> b!4425529 (= e!2755553 Unit!81977)))

(declare-fun lt!1624736 () Unit!81975)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!36 (ListLongMap!2135 K!10945 Hashable!5143) Unit!81975)

(assert (=> b!4425529 (= lt!1624736 (lemmaExtractTailMapContainsThenExtractMapDoes!36 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4425529 false))

(declare-fun b!4425530 () Bool)

(declare-fun e!2755547 () Bool)

(assert (=> b!4425530 (= e!2755556 e!2755547)))

(declare-fun res!1829607 () Bool)

(assert (=> b!4425530 (=> res!1829607 e!2755547)))

(declare-fun lt!1624732 () ListMap!2729)

(declare-fun lt!1624738 () ListMap!2729)

(assert (=> b!4425530 (= res!1829607 (not (eq!407 lt!1624732 lt!1624738)))))

(declare-fun addToMapMapFromBucket!386 (List!49705 ListMap!2729) ListMap!2729)

(assert (=> b!4425530 (= lt!1624738 (addToMapMapFromBucket!386 (_2!27982 (h!55267 (toList!3485 lm!1616))) lt!1624744))))

(declare-fun b!4425531 () Bool)

(declare-fun e!2755554 () Bool)

(assert (=> b!4425531 (= e!2755554 (forall!9562 (toList!3485 lt!1624743) lambda!153918))))

(assert (=> b!4425531 (eq!407 (addToMapMapFromBucket!386 (_2!27982 (h!55267 (toList!3485 lm!1616))) lt!1624741) (+!1083 lt!1624738 lt!1624746))))

(declare-fun lt!1624735 () Unit!81975)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!178 (ListMap!2729 K!10945 V!11191 List!49705) Unit!81975)

(assert (=> b!4425531 (= lt!1624735 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!178 lt!1624744 key!3717 newValue!93 (_2!27982 (h!55267 (toList!3485 lm!1616)))))))

(declare-fun b!4425532 () Bool)

(declare-fun e!2755546 () Bool)

(assert (=> b!4425532 (= e!2755555 e!2755546)))

(declare-fun res!1829610 () Bool)

(assert (=> b!4425532 (=> (not res!1829610) (not e!2755546))))

(assert (=> b!4425532 (= res!1829610 (not (contains!12082 lt!1624732 key!3717)))))

(assert (=> b!4425532 (= lt!1624732 (extractMap!810 (toList!3485 lm!1616)))))

(declare-fun e!2755551 () Bool)

(declare-fun b!4425533 () Bool)

(declare-fun lt!1624740 () Bool)

(assert (=> b!4425533 (= e!2755551 (and (not lt!1624740) (= newBucket!194 (Cons!49581 (tuple2!49375 key!3717 newValue!93) Nil!49581))))))

(declare-fun b!4425534 () Bool)

(assert (=> b!4425534 (= e!2755547 e!2755554)))

(declare-fun res!1829608 () Bool)

(assert (=> b!4425534 (=> res!1829608 e!2755554)))

(declare-fun containsKey!1112 (List!49705 K!10945) Bool)

(assert (=> b!4425534 (= res!1829608 (containsKey!1112 (_2!27982 (h!55267 (toList!3485 lm!1616))) key!3717))))

(declare-fun apply!11601 (ListLongMap!2135 (_ BitVec 64)) List!49705)

(assert (=> b!4425534 (not (containsKey!1112 (apply!11601 lm!1616 (_1!27982 (h!55267 (toList!3485 lm!1616)))) key!3717))))

(declare-fun lt!1624747 () Unit!81975)

(declare-fun lemmaNotSameHashThenCannotContainKey!128 (ListLongMap!2135 K!10945 (_ BitVec 64) Hashable!5143) Unit!81975)

(assert (=> b!4425534 (= lt!1624747 (lemmaNotSameHashThenCannotContainKey!128 lm!1616 key!3717 (_1!27982 (h!55267 (toList!3485 lm!1616))) hashF!1220))))

(declare-fun b!4425535 () Bool)

(assert (=> b!4425535 (= e!2755546 e!2755550)))

(declare-fun res!1829616 () Bool)

(assert (=> b!4425535 (=> (not res!1829616) (not e!2755550))))

(assert (=> b!4425535 (= res!1829616 e!2755551)))

(declare-fun res!1829612 () Bool)

(assert (=> b!4425535 (=> res!1829612 e!2755551)))

(declare-fun e!2755548 () Bool)

(assert (=> b!4425535 (= res!1829612 e!2755548)))

(declare-fun res!1829618 () Bool)

(assert (=> b!4425535 (=> (not res!1829618) (not e!2755548))))

(assert (=> b!4425535 (= res!1829618 lt!1624740)))

(declare-fun contains!12083 (ListLongMap!2135 (_ BitVec 64)) Bool)

(assert (=> b!4425535 (= lt!1624740 (contains!12083 lm!1616 hash!366))))

(declare-fun b!4425536 () Bool)

(declare-fun res!1829617 () Bool)

(assert (=> b!4425536 (=> (not res!1829617) (not e!2755550))))

(declare-fun noDuplicateKeys!749 (List!49705) Bool)

(assert (=> b!4425536 (= res!1829617 (noDuplicateKeys!749 newBucket!194))))

(declare-fun b!4425528 () Bool)

(declare-fun res!1829621 () Bool)

(assert (=> b!4425528 (=> (not res!1829621) (not e!2755555))))

(declare-fun hash!2122 (Hashable!5143 K!10945) (_ BitVec 64))

(assert (=> b!4425528 (= res!1829621 (= (hash!2122 hashF!1220 key!3717) hash!366))))

(declare-fun res!1829620 () Bool)

(assert (=> start!431732 (=> (not res!1829620) (not e!2755555))))

(assert (=> start!431732 (= res!1829620 (forall!9562 (toList!3485 lm!1616) lambda!153918))))

(assert (=> start!431732 e!2755555))

(declare-fun tp_is_empty!26241 () Bool)

(assert (=> start!431732 tp_is_empty!26241))

(declare-fun tp_is_empty!26243 () Bool)

(assert (=> start!431732 tp_is_empty!26243))

(declare-fun e!2755552 () Bool)

(assert (=> start!431732 e!2755552))

(declare-fun e!2755545 () Bool)

(declare-fun inv!65131 (ListLongMap!2135) Bool)

(assert (=> start!431732 (and (inv!65131 lm!1616) e!2755545)))

(assert (=> start!431732 true))

(declare-fun b!4425537 () Bool)

(assert (=> b!4425537 (= e!2755548 (= newBucket!194 (Cons!49581 (tuple2!49375 key!3717 newValue!93) (apply!11601 lm!1616 hash!366))))))

(declare-fun b!4425538 () Bool)

(declare-fun res!1829619 () Bool)

(assert (=> b!4425538 (=> (not res!1829619) (not e!2755555))))

(declare-fun allKeysSameHash!709 (List!49705 (_ BitVec 64) Hashable!5143) Bool)

(assert (=> b!4425538 (= res!1829619 (allKeysSameHash!709 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4425539 () Bool)

(declare-fun Unit!81978 () Unit!81975)

(assert (=> b!4425539 (= e!2755553 Unit!81978)))

(declare-fun b!4425540 () Bool)

(declare-fun tp!1333193 () Bool)

(assert (=> b!4425540 (= e!2755545 tp!1333193)))

(declare-fun b!4425541 () Bool)

(declare-fun res!1829613 () Bool)

(assert (=> b!4425541 (=> res!1829613 e!2755549)))

(get-info :version)

(assert (=> b!4425541 (= res!1829613 (or (and ((_ is Cons!49582) (toList!3485 lm!1616)) (= (_1!27982 (h!55267 (toList!3485 lm!1616))) hash!366)) (not ((_ is Cons!49582) (toList!3485 lm!1616))) (= (_1!27982 (h!55267 (toList!3485 lm!1616))) hash!366)))))

(declare-fun b!4425542 () Bool)

(declare-fun res!1829611 () Bool)

(assert (=> b!4425542 (=> (not res!1829611) (not e!2755550))))

(assert (=> b!4425542 (= res!1829611 (forall!9562 (toList!3485 lm!1616) lambda!153918))))

(declare-fun tp!1333194 () Bool)

(declare-fun b!4425543 () Bool)

(assert (=> b!4425543 (= e!2755552 (and tp_is_empty!26243 tp_is_empty!26241 tp!1333194))))

(assert (= (and start!431732 res!1829620) b!4425525))

(assert (= (and b!4425525 res!1829615) b!4425528))

(assert (= (and b!4425528 res!1829621) b!4425538))

(assert (= (and b!4425538 res!1829619) b!4425532))

(assert (= (and b!4425532 res!1829610) b!4425535))

(assert (= (and b!4425535 res!1829618) b!4425537))

(assert (= (and b!4425535 (not res!1829612)) b!4425533))

(assert (= (and b!4425535 res!1829616) b!4425536))

(assert (= (and b!4425536 res!1829617) b!4425542))

(assert (= (and b!4425542 res!1829611) b!4425526))

(assert (= (and b!4425526 (not res!1829614)) b!4425541))

(assert (= (and b!4425541 (not res!1829613)) b!4425527))

(assert (= (and b!4425527 c!753363) b!4425529))

(assert (= (and b!4425527 (not c!753363)) b!4425539))

(assert (= (and b!4425527 (not res!1829609)) b!4425530))

(assert (= (and b!4425530 (not res!1829607)) b!4425534))

(assert (= (and b!4425534 (not res!1829608)) b!4425531))

(assert (= (and start!431732 ((_ is Cons!49581) newBucket!194)) b!4425543))

(assert (= start!431732 b!4425540))

(declare-fun m!5106153 () Bool)

(assert (=> b!4425534 m!5106153))

(declare-fun m!5106155 () Bool)

(assert (=> b!4425534 m!5106155))

(assert (=> b!4425534 m!5106155))

(declare-fun m!5106157 () Bool)

(assert (=> b!4425534 m!5106157))

(declare-fun m!5106159 () Bool)

(assert (=> b!4425534 m!5106159))

(declare-fun m!5106161 () Bool)

(assert (=> b!4425542 m!5106161))

(declare-fun m!5106163 () Bool)

(assert (=> b!4425527 m!5106163))

(declare-fun m!5106165 () Bool)

(assert (=> b!4425527 m!5106165))

(declare-fun m!5106167 () Bool)

(assert (=> b!4425527 m!5106167))

(declare-fun m!5106169 () Bool)

(assert (=> b!4425527 m!5106169))

(declare-fun m!5106171 () Bool)

(assert (=> b!4425527 m!5106171))

(assert (=> b!4425527 m!5106165))

(declare-fun m!5106173 () Bool)

(assert (=> b!4425527 m!5106173))

(declare-fun m!5106175 () Bool)

(assert (=> b!4425527 m!5106175))

(declare-fun m!5106177 () Bool)

(assert (=> b!4425527 m!5106177))

(declare-fun m!5106179 () Bool)

(assert (=> b!4425527 m!5106179))

(assert (=> b!4425527 m!5106163))

(declare-fun m!5106181 () Bool)

(assert (=> b!4425527 m!5106181))

(declare-fun m!5106183 () Bool)

(assert (=> b!4425527 m!5106183))

(declare-fun m!5106185 () Bool)

(assert (=> b!4425526 m!5106185))

(assert (=> b!4425526 m!5106185))

(declare-fun m!5106187 () Bool)

(assert (=> b!4425526 m!5106187))

(declare-fun m!5106189 () Bool)

(assert (=> b!4425526 m!5106189))

(declare-fun m!5106191 () Bool)

(assert (=> b!4425525 m!5106191))

(declare-fun m!5106193 () Bool)

(assert (=> b!4425536 m!5106193))

(declare-fun m!5106195 () Bool)

(assert (=> b!4425529 m!5106195))

(declare-fun m!5106197 () Bool)

(assert (=> b!4425531 m!5106197))

(declare-fun m!5106199 () Bool)

(assert (=> b!4425531 m!5106199))

(declare-fun m!5106201 () Bool)

(assert (=> b!4425531 m!5106201))

(declare-fun m!5106203 () Bool)

(assert (=> b!4425531 m!5106203))

(assert (=> b!4425531 m!5106197))

(assert (=> b!4425531 m!5106199))

(declare-fun m!5106205 () Bool)

(assert (=> b!4425531 m!5106205))

(declare-fun m!5106207 () Bool)

(assert (=> b!4425537 m!5106207))

(declare-fun m!5106209 () Bool)

(assert (=> b!4425530 m!5106209))

(declare-fun m!5106211 () Bool)

(assert (=> b!4425530 m!5106211))

(declare-fun m!5106213 () Bool)

(assert (=> b!4425538 m!5106213))

(declare-fun m!5106215 () Bool)

(assert (=> b!4425532 m!5106215))

(declare-fun m!5106217 () Bool)

(assert (=> b!4425532 m!5106217))

(declare-fun m!5106219 () Bool)

(assert (=> b!4425528 m!5106219))

(declare-fun m!5106221 () Bool)

(assert (=> b!4425535 m!5106221))

(assert (=> start!431732 m!5106161))

(declare-fun m!5106223 () Bool)

(assert (=> start!431732 m!5106223))

(check-sat (not b!4425529) (not b!4425530) (not b!4425527) (not b!4425538) tp_is_empty!26243 (not b!4425531) (not start!431732) tp_is_empty!26241 (not b!4425525) (not b!4425543) (not b!4425540) (not b!4425534) (not b!4425536) (not b!4425542) (not b!4425535) (not b!4425526) (not b!4425537) (not b!4425532) (not b!4425528))
(check-sat)
(get-model)

(declare-fun d!1341621 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7958 (List!49705) (InoxSet tuple2!49374))

(assert (=> d!1341621 (= (eq!407 lt!1624732 lt!1624738) (= (content!7958 (toList!3486 lt!1624732)) (content!7958 (toList!3486 lt!1624738))))))

(declare-fun bs!757520 () Bool)

(assert (= bs!757520 d!1341621))

(declare-fun m!5106241 () Bool)

(assert (=> bs!757520 m!5106241))

(declare-fun m!5106243 () Bool)

(assert (=> bs!757520 m!5106243))

(assert (=> b!4425530 d!1341621))

(declare-fun b!4425621 () Bool)

(assert (=> b!4425621 true))

(declare-fun bs!757558 () Bool)

(declare-fun b!4425619 () Bool)

(assert (= bs!757558 (and b!4425619 b!4425621)))

(declare-fun lambda!153999 () Int)

(declare-fun lambda!153998 () Int)

(assert (=> bs!757558 (= lambda!153999 lambda!153998)))

(assert (=> b!4425619 true))

(declare-fun lt!1624926 () ListMap!2729)

(declare-fun lambda!154001 () Int)

(assert (=> bs!757558 (= (= lt!1624926 lt!1624744) (= lambda!154001 lambda!153998))))

(assert (=> b!4425619 (= (= lt!1624926 lt!1624744) (= lambda!154001 lambda!153999))))

(assert (=> b!4425619 true))

(declare-fun bs!757564 () Bool)

(declare-fun d!1341625 () Bool)

(assert (= bs!757564 (and d!1341625 b!4425621)))

(declare-fun lt!1624917 () ListMap!2729)

(declare-fun lambda!154002 () Int)

(assert (=> bs!757564 (= (= lt!1624917 lt!1624744) (= lambda!154002 lambda!153998))))

(declare-fun bs!757565 () Bool)

(assert (= bs!757565 (and d!1341625 b!4425619)))

(assert (=> bs!757565 (= (= lt!1624917 lt!1624744) (= lambda!154002 lambda!153999))))

(assert (=> bs!757565 (= (= lt!1624917 lt!1624926) (= lambda!154002 lambda!154001))))

(assert (=> d!1341625 true))

(declare-fun e!2755604 () Bool)

(assert (=> d!1341625 e!2755604))

(declare-fun res!1829667 () Bool)

(assert (=> d!1341625 (=> (not res!1829667) (not e!2755604))))

(declare-fun forall!9564 (List!49705 Int) Bool)

(assert (=> d!1341625 (= res!1829667 (forall!9564 (_2!27982 (h!55267 (toList!3485 lm!1616))) lambda!154002))))

(declare-fun e!2755603 () ListMap!2729)

(assert (=> d!1341625 (= lt!1624917 e!2755603)))

(declare-fun c!753376 () Bool)

(assert (=> d!1341625 (= c!753376 ((_ is Nil!49581) (_2!27982 (h!55267 (toList!3485 lm!1616)))))))

(assert (=> d!1341625 (noDuplicateKeys!749 (_2!27982 (h!55267 (toList!3485 lm!1616))))))

(assert (=> d!1341625 (= (addToMapMapFromBucket!386 (_2!27982 (h!55267 (toList!3485 lm!1616))) lt!1624744) lt!1624917)))

(assert (=> b!4425619 (= e!2755603 lt!1624926)))

(declare-fun lt!1624918 () ListMap!2729)

(assert (=> b!4425619 (= lt!1624918 (+!1083 lt!1624744 (h!55266 (_2!27982 (h!55267 (toList!3485 lm!1616))))))))

(assert (=> b!4425619 (= lt!1624926 (addToMapMapFromBucket!386 (t!356643 (_2!27982 (h!55267 (toList!3485 lm!1616)))) (+!1083 lt!1624744 (h!55266 (_2!27982 (h!55267 (toList!3485 lm!1616)))))))))

(declare-fun lt!1624913 () Unit!81975)

(declare-fun call!307950 () Unit!81975)

(assert (=> b!4425619 (= lt!1624913 call!307950)))

(declare-fun call!307949 () Bool)

(assert (=> b!4425619 call!307949))

(declare-fun lt!1624924 () Unit!81975)

(assert (=> b!4425619 (= lt!1624924 lt!1624913)))

(assert (=> b!4425619 (forall!9564 (toList!3486 lt!1624918) lambda!154001)))

(declare-fun lt!1624915 () Unit!81975)

(declare-fun Unit!81991 () Unit!81975)

(assert (=> b!4425619 (= lt!1624915 Unit!81991)))

(assert (=> b!4425619 (forall!9564 (t!356643 (_2!27982 (h!55267 (toList!3485 lm!1616)))) lambda!154001)))

(declare-fun lt!1624919 () Unit!81975)

(declare-fun Unit!81992 () Unit!81975)

(assert (=> b!4425619 (= lt!1624919 Unit!81992)))

(declare-fun lt!1624929 () Unit!81975)

(declare-fun Unit!81993 () Unit!81975)

(assert (=> b!4425619 (= lt!1624929 Unit!81993)))

(declare-fun lt!1624916 () Unit!81975)

(declare-fun forallContained!2093 (List!49705 Int tuple2!49374) Unit!81975)

(assert (=> b!4425619 (= lt!1624916 (forallContained!2093 (toList!3486 lt!1624918) lambda!154001 (h!55266 (_2!27982 (h!55267 (toList!3485 lm!1616))))))))

(assert (=> b!4425619 (contains!12082 lt!1624918 (_1!27981 (h!55266 (_2!27982 (h!55267 (toList!3485 lm!1616))))))))

(declare-fun lt!1624923 () Unit!81975)

(declare-fun Unit!81994 () Unit!81975)

(assert (=> b!4425619 (= lt!1624923 Unit!81994)))

(assert (=> b!4425619 (contains!12082 lt!1624926 (_1!27981 (h!55266 (_2!27982 (h!55267 (toList!3485 lm!1616))))))))

(declare-fun lt!1624914 () Unit!81975)

(declare-fun Unit!81995 () Unit!81975)

(assert (=> b!4425619 (= lt!1624914 Unit!81995)))

(assert (=> b!4425619 (forall!9564 (_2!27982 (h!55267 (toList!3485 lm!1616))) lambda!154001)))

(declare-fun lt!1624920 () Unit!81975)

(declare-fun Unit!81996 () Unit!81975)

(assert (=> b!4425619 (= lt!1624920 Unit!81996)))

(declare-fun call!307951 () Bool)

(assert (=> b!4425619 call!307951))

(declare-fun lt!1624910 () Unit!81975)

(declare-fun Unit!81998 () Unit!81975)

(assert (=> b!4425619 (= lt!1624910 Unit!81998)))

(declare-fun lt!1624922 () Unit!81975)

(declare-fun Unit!82000 () Unit!81975)

(assert (=> b!4425619 (= lt!1624922 Unit!82000)))

(declare-fun lt!1624925 () Unit!81975)

(declare-fun addForallContainsKeyThenBeforeAdding!173 (ListMap!2729 ListMap!2729 K!10945 V!11191) Unit!81975)

(assert (=> b!4425619 (= lt!1624925 (addForallContainsKeyThenBeforeAdding!173 lt!1624744 lt!1624926 (_1!27981 (h!55266 (_2!27982 (h!55267 (toList!3485 lm!1616))))) (_2!27981 (h!55266 (_2!27982 (h!55267 (toList!3485 lm!1616)))))))))

(assert (=> b!4425619 (forall!9564 (toList!3486 lt!1624744) lambda!154001)))

(declare-fun lt!1624927 () Unit!81975)

(assert (=> b!4425619 (= lt!1624927 lt!1624925)))

(assert (=> b!4425619 (forall!9564 (toList!3486 lt!1624744) lambda!154001)))

(declare-fun lt!1624928 () Unit!81975)

(declare-fun Unit!82003 () Unit!81975)

(assert (=> b!4425619 (= lt!1624928 Unit!82003)))

(declare-fun res!1829666 () Bool)

(assert (=> b!4425619 (= res!1829666 (forall!9564 (_2!27982 (h!55267 (toList!3485 lm!1616))) lambda!154001))))

(declare-fun e!2755605 () Bool)

(assert (=> b!4425619 (=> (not res!1829666) (not e!2755605))))

(assert (=> b!4425619 e!2755605))

(declare-fun lt!1624930 () Unit!81975)

(declare-fun Unit!82006 () Unit!81975)

(assert (=> b!4425619 (= lt!1624930 Unit!82006)))

(declare-fun b!4425620 () Bool)

(assert (=> b!4425620 (= e!2755605 (forall!9564 (toList!3486 lt!1624744) lambda!154001))))

(declare-fun bm!307944 () Bool)

(assert (=> bm!307944 (= call!307949 (forall!9564 (toList!3486 lt!1624744) (ite c!753376 lambda!153998 lambda!153999)))))

(assert (=> b!4425621 (= e!2755603 lt!1624744)))

(declare-fun lt!1624911 () Unit!81975)

(assert (=> b!4425621 (= lt!1624911 call!307950)))

(assert (=> b!4425621 call!307949))

(declare-fun lt!1624921 () Unit!81975)

(assert (=> b!4425621 (= lt!1624921 lt!1624911)))

(assert (=> b!4425621 call!307951))

(declare-fun lt!1624912 () Unit!81975)

(declare-fun Unit!82009 () Unit!81975)

(assert (=> b!4425621 (= lt!1624912 Unit!82009)))

(declare-fun b!4425622 () Bool)

(declare-fun invariantList!805 (List!49705) Bool)

(assert (=> b!4425622 (= e!2755604 (invariantList!805 (toList!3486 lt!1624917)))))

(declare-fun bm!307945 () Bool)

(assert (=> bm!307945 (= call!307951 (forall!9564 (ite c!753376 (toList!3486 lt!1624744) (toList!3486 lt!1624918)) (ite c!753376 lambda!153998 lambda!154001)))))

(declare-fun bm!307946 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!173 (ListMap!2729) Unit!81975)

(assert (=> bm!307946 (= call!307950 (lemmaContainsAllItsOwnKeys!173 lt!1624744))))

(declare-fun b!4425623 () Bool)

(declare-fun res!1829665 () Bool)

(assert (=> b!4425623 (=> (not res!1829665) (not e!2755604))))

(assert (=> b!4425623 (= res!1829665 (forall!9564 (toList!3486 lt!1624744) lambda!154002))))

(assert (= (and d!1341625 c!753376) b!4425621))

(assert (= (and d!1341625 (not c!753376)) b!4425619))

(assert (= (and b!4425619 res!1829666) b!4425620))

(assert (= (or b!4425621 b!4425619) bm!307946))

(assert (= (or b!4425621 b!4425619) bm!307945))

(assert (= (or b!4425621 b!4425619) bm!307944))

(assert (= (and d!1341625 res!1829667) b!4425623))

(assert (= (and b!4425623 res!1829665) b!4425622))

(declare-fun m!5106383 () Bool)

(assert (=> b!4425622 m!5106383))

(declare-fun m!5106385 () Bool)

(assert (=> b!4425623 m!5106385))

(declare-fun m!5106387 () Bool)

(assert (=> b!4425620 m!5106387))

(declare-fun m!5106389 () Bool)

(assert (=> bm!307945 m!5106389))

(declare-fun m!5106391 () Bool)

(assert (=> d!1341625 m!5106391))

(declare-fun m!5106393 () Bool)

(assert (=> d!1341625 m!5106393))

(declare-fun m!5106395 () Bool)

(assert (=> bm!307944 m!5106395))

(declare-fun m!5106397 () Bool)

(assert (=> bm!307946 m!5106397))

(declare-fun m!5106399 () Bool)

(assert (=> b!4425619 m!5106399))

(declare-fun m!5106401 () Bool)

(assert (=> b!4425619 m!5106401))

(declare-fun m!5106403 () Bool)

(assert (=> b!4425619 m!5106403))

(assert (=> b!4425619 m!5106387))

(declare-fun m!5106405 () Bool)

(assert (=> b!4425619 m!5106405))

(declare-fun m!5106407 () Bool)

(assert (=> b!4425619 m!5106407))

(assert (=> b!4425619 m!5106405))

(declare-fun m!5106409 () Bool)

(assert (=> b!4425619 m!5106409))

(declare-fun m!5106411 () Bool)

(assert (=> b!4425619 m!5106411))

(assert (=> b!4425619 m!5106387))

(declare-fun m!5106413 () Bool)

(assert (=> b!4425619 m!5106413))

(declare-fun m!5106415 () Bool)

(assert (=> b!4425619 m!5106415))

(assert (=> b!4425619 m!5106399))

(assert (=> b!4425530 d!1341625))

(declare-fun bs!757566 () Bool)

(declare-fun d!1341657 () Bool)

(assert (= bs!757566 (and d!1341657 start!431732)))

(declare-fun lambda!154005 () Int)

(assert (=> bs!757566 (= lambda!154005 lambda!153918)))

(assert (=> d!1341657 (contains!12082 (extractMap!810 (toList!3485 lm!1616)) key!3717)))

(declare-fun lt!1624946 () Unit!81975)

(declare-fun choose!27945 (ListLongMap!2135 K!10945 Hashable!5143) Unit!81975)

(assert (=> d!1341657 (= lt!1624946 (choose!27945 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1341657 (forall!9562 (toList!3485 lm!1616) lambda!154005)))

(assert (=> d!1341657 (= (lemmaExtractTailMapContainsThenExtractMapDoes!36 lm!1616 key!3717 hashF!1220) lt!1624946)))

(declare-fun bs!757567 () Bool)

(assert (= bs!757567 d!1341657))

(assert (=> bs!757567 m!5106217))

(assert (=> bs!757567 m!5106217))

(declare-fun m!5106429 () Bool)

(assert (=> bs!757567 m!5106429))

(declare-fun m!5106431 () Bool)

(assert (=> bs!757567 m!5106431))

(declare-fun m!5106433 () Bool)

(assert (=> bs!757567 m!5106433))

(assert (=> b!4425529 d!1341657))

(declare-fun d!1341661 () Bool)

(declare-fun res!1829678 () Bool)

(declare-fun e!2755614 () Bool)

(assert (=> d!1341661 (=> res!1829678 e!2755614)))

(assert (=> d!1341661 (= res!1829678 ((_ is Nil!49582) (toList!3485 lm!1616)))))

(assert (=> d!1341661 (= (forall!9562 (toList!3485 lm!1616) lambda!153918) e!2755614)))

(declare-fun b!4425638 () Bool)

(declare-fun e!2755615 () Bool)

(assert (=> b!4425638 (= e!2755614 e!2755615)))

(declare-fun res!1829679 () Bool)

(assert (=> b!4425638 (=> (not res!1829679) (not e!2755615))))

(declare-fun dynLambda!20846 (Int tuple2!49376) Bool)

(assert (=> b!4425638 (= res!1829679 (dynLambda!20846 lambda!153918 (h!55267 (toList!3485 lm!1616))))))

(declare-fun b!4425639 () Bool)

(assert (=> b!4425639 (= e!2755615 (forall!9562 (t!356644 (toList!3485 lm!1616)) lambda!153918))))

(assert (= (and d!1341661 (not res!1829678)) b!4425638))

(assert (= (and b!4425638 res!1829679) b!4425639))

(declare-fun b_lambda!143159 () Bool)

(assert (=> (not b_lambda!143159) (not b!4425638)))

(declare-fun m!5106435 () Bool)

(assert (=> b!4425638 m!5106435))

(declare-fun m!5106437 () Bool)

(assert (=> b!4425639 m!5106437))

(assert (=> start!431732 d!1341661))

(declare-fun d!1341663 () Bool)

(declare-fun isStrictlySorted!231 (List!49706) Bool)

(assert (=> d!1341663 (= (inv!65131 lm!1616) (isStrictlySorted!231 (toList!3485 lm!1616)))))

(declare-fun bs!757568 () Bool)

(assert (= bs!757568 d!1341663))

(declare-fun m!5106439 () Bool)

(assert (=> bs!757568 m!5106439))

(assert (=> start!431732 d!1341663))

(declare-fun d!1341665 () Bool)

(declare-fun res!1829680 () Bool)

(declare-fun e!2755616 () Bool)

(assert (=> d!1341665 (=> res!1829680 e!2755616)))

(assert (=> d!1341665 (= res!1829680 ((_ is Nil!49582) (toList!3485 lt!1624743)))))

(assert (=> d!1341665 (= (forall!9562 (toList!3485 lt!1624743) lambda!153918) e!2755616)))

(declare-fun b!4425640 () Bool)

(declare-fun e!2755617 () Bool)

(assert (=> b!4425640 (= e!2755616 e!2755617)))

(declare-fun res!1829681 () Bool)

(assert (=> b!4425640 (=> (not res!1829681) (not e!2755617))))

(assert (=> b!4425640 (= res!1829681 (dynLambda!20846 lambda!153918 (h!55267 (toList!3485 lt!1624743))))))

(declare-fun b!4425641 () Bool)

(assert (=> b!4425641 (= e!2755617 (forall!9562 (t!356644 (toList!3485 lt!1624743)) lambda!153918))))

(assert (= (and d!1341665 (not res!1829680)) b!4425640))

(assert (= (and b!4425640 res!1829681) b!4425641))

(declare-fun b_lambda!143161 () Bool)

(assert (=> (not b_lambda!143161) (not b!4425640)))

(declare-fun m!5106441 () Bool)

(assert (=> b!4425640 m!5106441))

(declare-fun m!5106443 () Bool)

(assert (=> b!4425641 m!5106443))

(assert (=> b!4425531 d!1341665))

(declare-fun bs!757569 () Bool)

(declare-fun b!4425644 () Bool)

(assert (= bs!757569 (and b!4425644 b!4425621)))

(declare-fun lambda!154008 () Int)

(assert (=> bs!757569 (= (= lt!1624741 lt!1624744) (= lambda!154008 lambda!153998))))

(declare-fun bs!757570 () Bool)

(assert (= bs!757570 (and b!4425644 b!4425619)))

(assert (=> bs!757570 (= (= lt!1624741 lt!1624744) (= lambda!154008 lambda!153999))))

(assert (=> bs!757570 (= (= lt!1624741 lt!1624926) (= lambda!154008 lambda!154001))))

(declare-fun bs!757571 () Bool)

(assert (= bs!757571 (and b!4425644 d!1341625)))

(assert (=> bs!757571 (= (= lt!1624741 lt!1624917) (= lambda!154008 lambda!154002))))

(assert (=> b!4425644 true))

(declare-fun bs!757572 () Bool)

(declare-fun b!4425642 () Bool)

(assert (= bs!757572 (and b!4425642 b!4425644)))

(declare-fun lambda!154009 () Int)

(assert (=> bs!757572 (= lambda!154009 lambda!154008)))

(declare-fun bs!757573 () Bool)

(assert (= bs!757573 (and b!4425642 b!4425619)))

(assert (=> bs!757573 (= (= lt!1624741 lt!1624744) (= lambda!154009 lambda!153999))))

(declare-fun bs!757574 () Bool)

(assert (= bs!757574 (and b!4425642 b!4425621)))

(assert (=> bs!757574 (= (= lt!1624741 lt!1624744) (= lambda!154009 lambda!153998))))

(declare-fun bs!757575 () Bool)

(assert (= bs!757575 (and b!4425642 d!1341625)))

(assert (=> bs!757575 (= (= lt!1624741 lt!1624917) (= lambda!154009 lambda!154002))))

(assert (=> bs!757573 (= (= lt!1624741 lt!1624926) (= lambda!154009 lambda!154001))))

(assert (=> b!4425642 true))

(declare-fun lt!1624963 () ListMap!2729)

(declare-fun lambda!154010 () Int)

(assert (=> bs!757572 (= (= lt!1624963 lt!1624741) (= lambda!154010 lambda!154008))))

(assert (=> b!4425642 (= (= lt!1624963 lt!1624741) (= lambda!154010 lambda!154009))))

(assert (=> bs!757573 (= (= lt!1624963 lt!1624744) (= lambda!154010 lambda!153999))))

(assert (=> bs!757574 (= (= lt!1624963 lt!1624744) (= lambda!154010 lambda!153998))))

(assert (=> bs!757575 (= (= lt!1624963 lt!1624917) (= lambda!154010 lambda!154002))))

(assert (=> bs!757573 (= (= lt!1624963 lt!1624926) (= lambda!154010 lambda!154001))))

(assert (=> b!4425642 true))

(declare-fun bs!757582 () Bool)

(declare-fun d!1341667 () Bool)

(assert (= bs!757582 (and d!1341667 b!4425644)))

(declare-fun lambda!154012 () Int)

(declare-fun lt!1624954 () ListMap!2729)

(assert (=> bs!757582 (= (= lt!1624954 lt!1624741) (= lambda!154012 lambda!154008))))

(declare-fun bs!757584 () Bool)

(assert (= bs!757584 (and d!1341667 b!4425642)))

(assert (=> bs!757584 (= (= lt!1624954 lt!1624963) (= lambda!154012 lambda!154010))))

(assert (=> bs!757584 (= (= lt!1624954 lt!1624741) (= lambda!154012 lambda!154009))))

(declare-fun bs!757585 () Bool)

(assert (= bs!757585 (and d!1341667 b!4425619)))

(assert (=> bs!757585 (= (= lt!1624954 lt!1624744) (= lambda!154012 lambda!153999))))

(declare-fun bs!757586 () Bool)

(assert (= bs!757586 (and d!1341667 b!4425621)))

(assert (=> bs!757586 (= (= lt!1624954 lt!1624744) (= lambda!154012 lambda!153998))))

(declare-fun bs!757587 () Bool)

(assert (= bs!757587 (and d!1341667 d!1341625)))

(assert (=> bs!757587 (= (= lt!1624954 lt!1624917) (= lambda!154012 lambda!154002))))

(assert (=> bs!757585 (= (= lt!1624954 lt!1624926) (= lambda!154012 lambda!154001))))

(assert (=> d!1341667 true))

(declare-fun e!2755619 () Bool)

(assert (=> d!1341667 e!2755619))

(declare-fun res!1829684 () Bool)

(assert (=> d!1341667 (=> (not res!1829684) (not e!2755619))))

(assert (=> d!1341667 (= res!1829684 (forall!9564 (_2!27982 (h!55267 (toList!3485 lm!1616))) lambda!154012))))

(declare-fun e!2755618 () ListMap!2729)

(assert (=> d!1341667 (= lt!1624954 e!2755618)))

(declare-fun c!753378 () Bool)

(assert (=> d!1341667 (= c!753378 ((_ is Nil!49581) (_2!27982 (h!55267 (toList!3485 lm!1616)))))))

(assert (=> d!1341667 (noDuplicateKeys!749 (_2!27982 (h!55267 (toList!3485 lm!1616))))))

(assert (=> d!1341667 (= (addToMapMapFromBucket!386 (_2!27982 (h!55267 (toList!3485 lm!1616))) lt!1624741) lt!1624954)))

(assert (=> b!4425642 (= e!2755618 lt!1624963)))

(declare-fun lt!1624955 () ListMap!2729)

(assert (=> b!4425642 (= lt!1624955 (+!1083 lt!1624741 (h!55266 (_2!27982 (h!55267 (toList!3485 lm!1616))))))))

(assert (=> b!4425642 (= lt!1624963 (addToMapMapFromBucket!386 (t!356643 (_2!27982 (h!55267 (toList!3485 lm!1616)))) (+!1083 lt!1624741 (h!55266 (_2!27982 (h!55267 (toList!3485 lm!1616)))))))))

(declare-fun lt!1624950 () Unit!81975)

(declare-fun call!307953 () Unit!81975)

(assert (=> b!4425642 (= lt!1624950 call!307953)))

(declare-fun call!307952 () Bool)

(assert (=> b!4425642 call!307952))

(declare-fun lt!1624961 () Unit!81975)

(assert (=> b!4425642 (= lt!1624961 lt!1624950)))

(assert (=> b!4425642 (forall!9564 (toList!3486 lt!1624955) lambda!154010)))

(declare-fun lt!1624952 () Unit!81975)

(declare-fun Unit!82013 () Unit!81975)

(assert (=> b!4425642 (= lt!1624952 Unit!82013)))

(assert (=> b!4425642 (forall!9564 (t!356643 (_2!27982 (h!55267 (toList!3485 lm!1616)))) lambda!154010)))

(declare-fun lt!1624956 () Unit!81975)

(declare-fun Unit!82014 () Unit!81975)

(assert (=> b!4425642 (= lt!1624956 Unit!82014)))

(declare-fun lt!1624966 () Unit!81975)

(declare-fun Unit!82015 () Unit!81975)

(assert (=> b!4425642 (= lt!1624966 Unit!82015)))

(declare-fun lt!1624953 () Unit!81975)

(assert (=> b!4425642 (= lt!1624953 (forallContained!2093 (toList!3486 lt!1624955) lambda!154010 (h!55266 (_2!27982 (h!55267 (toList!3485 lm!1616))))))))

(assert (=> b!4425642 (contains!12082 lt!1624955 (_1!27981 (h!55266 (_2!27982 (h!55267 (toList!3485 lm!1616))))))))

(declare-fun lt!1624960 () Unit!81975)

(declare-fun Unit!82016 () Unit!81975)

(assert (=> b!4425642 (= lt!1624960 Unit!82016)))

(assert (=> b!4425642 (contains!12082 lt!1624963 (_1!27981 (h!55266 (_2!27982 (h!55267 (toList!3485 lm!1616))))))))

(declare-fun lt!1624951 () Unit!81975)

(declare-fun Unit!82017 () Unit!81975)

(assert (=> b!4425642 (= lt!1624951 Unit!82017)))

(assert (=> b!4425642 (forall!9564 (_2!27982 (h!55267 (toList!3485 lm!1616))) lambda!154010)))

(declare-fun lt!1624957 () Unit!81975)

(declare-fun Unit!82018 () Unit!81975)

(assert (=> b!4425642 (= lt!1624957 Unit!82018)))

(declare-fun call!307954 () Bool)

(assert (=> b!4425642 call!307954))

(declare-fun lt!1624947 () Unit!81975)

(declare-fun Unit!82019 () Unit!81975)

(assert (=> b!4425642 (= lt!1624947 Unit!82019)))

(declare-fun lt!1624959 () Unit!81975)

(declare-fun Unit!82020 () Unit!81975)

(assert (=> b!4425642 (= lt!1624959 Unit!82020)))

(declare-fun lt!1624962 () Unit!81975)

(assert (=> b!4425642 (= lt!1624962 (addForallContainsKeyThenBeforeAdding!173 lt!1624741 lt!1624963 (_1!27981 (h!55266 (_2!27982 (h!55267 (toList!3485 lm!1616))))) (_2!27981 (h!55266 (_2!27982 (h!55267 (toList!3485 lm!1616)))))))))

(assert (=> b!4425642 (forall!9564 (toList!3486 lt!1624741) lambda!154010)))

(declare-fun lt!1624964 () Unit!81975)

(assert (=> b!4425642 (= lt!1624964 lt!1624962)))

(assert (=> b!4425642 (forall!9564 (toList!3486 lt!1624741) lambda!154010)))

(declare-fun lt!1624965 () Unit!81975)

(declare-fun Unit!82021 () Unit!81975)

(assert (=> b!4425642 (= lt!1624965 Unit!82021)))

(declare-fun res!1829683 () Bool)

(assert (=> b!4425642 (= res!1829683 (forall!9564 (_2!27982 (h!55267 (toList!3485 lm!1616))) lambda!154010))))

(declare-fun e!2755620 () Bool)

(assert (=> b!4425642 (=> (not res!1829683) (not e!2755620))))

(assert (=> b!4425642 e!2755620))

(declare-fun lt!1624967 () Unit!81975)

(declare-fun Unit!82022 () Unit!81975)

(assert (=> b!4425642 (= lt!1624967 Unit!82022)))

(declare-fun b!4425643 () Bool)

(assert (=> b!4425643 (= e!2755620 (forall!9564 (toList!3486 lt!1624741) lambda!154010))))

(declare-fun bm!307947 () Bool)

(assert (=> bm!307947 (= call!307952 (forall!9564 (toList!3486 lt!1624741) (ite c!753378 lambda!154008 lambda!154009)))))

(assert (=> b!4425644 (= e!2755618 lt!1624741)))

(declare-fun lt!1624948 () Unit!81975)

(assert (=> b!4425644 (= lt!1624948 call!307953)))

(assert (=> b!4425644 call!307952))

(declare-fun lt!1624958 () Unit!81975)

(assert (=> b!4425644 (= lt!1624958 lt!1624948)))

(assert (=> b!4425644 call!307954))

(declare-fun lt!1624949 () Unit!81975)

(declare-fun Unit!82023 () Unit!81975)

(assert (=> b!4425644 (= lt!1624949 Unit!82023)))

(declare-fun b!4425645 () Bool)

(assert (=> b!4425645 (= e!2755619 (invariantList!805 (toList!3486 lt!1624954)))))

(declare-fun bm!307948 () Bool)

(assert (=> bm!307948 (= call!307954 (forall!9564 (ite c!753378 (toList!3486 lt!1624741) (toList!3486 lt!1624955)) (ite c!753378 lambda!154008 lambda!154010)))))

(declare-fun bm!307949 () Bool)

(assert (=> bm!307949 (= call!307953 (lemmaContainsAllItsOwnKeys!173 lt!1624741))))

(declare-fun b!4425646 () Bool)

(declare-fun res!1829682 () Bool)

(assert (=> b!4425646 (=> (not res!1829682) (not e!2755619))))

(assert (=> b!4425646 (= res!1829682 (forall!9564 (toList!3486 lt!1624741) lambda!154012))))

(assert (= (and d!1341667 c!753378) b!4425644))

(assert (= (and d!1341667 (not c!753378)) b!4425642))

(assert (= (and b!4425642 res!1829683) b!4425643))

(assert (= (or b!4425644 b!4425642) bm!307949))

(assert (= (or b!4425644 b!4425642) bm!307948))

(assert (= (or b!4425644 b!4425642) bm!307947))

(assert (= (and d!1341667 res!1829684) b!4425646))

(assert (= (and b!4425646 res!1829682) b!4425645))

(declare-fun m!5106463 () Bool)

(assert (=> b!4425645 m!5106463))

(declare-fun m!5106467 () Bool)

(assert (=> b!4425646 m!5106467))

(declare-fun m!5106471 () Bool)

(assert (=> b!4425643 m!5106471))

(declare-fun m!5106477 () Bool)

(assert (=> bm!307948 m!5106477))

(declare-fun m!5106479 () Bool)

(assert (=> d!1341667 m!5106479))

(assert (=> d!1341667 m!5106393))

(declare-fun m!5106481 () Bool)

(assert (=> bm!307947 m!5106481))

(declare-fun m!5106483 () Bool)

(assert (=> bm!307949 m!5106483))

(declare-fun m!5106487 () Bool)

(assert (=> b!4425642 m!5106487))

(declare-fun m!5106491 () Bool)

(assert (=> b!4425642 m!5106491))

(declare-fun m!5106493 () Bool)

(assert (=> b!4425642 m!5106493))

(assert (=> b!4425642 m!5106471))

(declare-fun m!5106495 () Bool)

(assert (=> b!4425642 m!5106495))

(declare-fun m!5106497 () Bool)

(assert (=> b!4425642 m!5106497))

(assert (=> b!4425642 m!5106495))

(declare-fun m!5106499 () Bool)

(assert (=> b!4425642 m!5106499))

(declare-fun m!5106501 () Bool)

(assert (=> b!4425642 m!5106501))

(assert (=> b!4425642 m!5106471))

(declare-fun m!5106503 () Bool)

(assert (=> b!4425642 m!5106503))

(declare-fun m!5106505 () Bool)

(assert (=> b!4425642 m!5106505))

(assert (=> b!4425642 m!5106487))

(assert (=> b!4425531 d!1341667))

(declare-fun d!1341677 () Bool)

(assert (=> d!1341677 (= (eq!407 (addToMapMapFromBucket!386 (_2!27982 (h!55267 (toList!3485 lm!1616))) lt!1624741) (+!1083 lt!1624738 lt!1624746)) (= (content!7958 (toList!3486 (addToMapMapFromBucket!386 (_2!27982 (h!55267 (toList!3485 lm!1616))) lt!1624741))) (content!7958 (toList!3486 (+!1083 lt!1624738 lt!1624746)))))))

(declare-fun bs!757590 () Bool)

(assert (= bs!757590 d!1341677))

(declare-fun m!5106507 () Bool)

(assert (=> bs!757590 m!5106507))

(declare-fun m!5106509 () Bool)

(assert (=> bs!757590 m!5106509))

(assert (=> b!4425531 d!1341677))

(declare-fun d!1341679 () Bool)

(assert (=> d!1341679 (eq!407 (addToMapMapFromBucket!386 (_2!27982 (h!55267 (toList!3485 lm!1616))) (+!1083 lt!1624744 (tuple2!49375 key!3717 newValue!93))) (+!1083 (addToMapMapFromBucket!386 (_2!27982 (h!55267 (toList!3485 lm!1616))) lt!1624744) (tuple2!49375 key!3717 newValue!93)))))

(declare-fun lt!1624978 () Unit!81975)

(declare-fun choose!27947 (ListMap!2729 K!10945 V!11191 List!49705) Unit!81975)

(assert (=> d!1341679 (= lt!1624978 (choose!27947 lt!1624744 key!3717 newValue!93 (_2!27982 (h!55267 (toList!3485 lm!1616)))))))

(assert (=> d!1341679 (not (containsKey!1112 (_2!27982 (h!55267 (toList!3485 lm!1616))) key!3717))))

(assert (=> d!1341679 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!178 lt!1624744 key!3717 newValue!93 (_2!27982 (h!55267 (toList!3485 lm!1616)))) lt!1624978)))

(declare-fun bs!757599 () Bool)

(assert (= bs!757599 d!1341679))

(assert (=> bs!757599 m!5106153))

(declare-fun m!5106519 () Bool)

(assert (=> bs!757599 m!5106519))

(declare-fun m!5106521 () Bool)

(assert (=> bs!757599 m!5106521))

(declare-fun m!5106523 () Bool)

(assert (=> bs!757599 m!5106523))

(declare-fun m!5106525 () Bool)

(assert (=> bs!757599 m!5106525))

(declare-fun m!5106527 () Bool)

(assert (=> bs!757599 m!5106527))

(assert (=> bs!757599 m!5106211))

(assert (=> bs!757599 m!5106211))

(assert (=> bs!757599 m!5106521))

(assert (=> bs!757599 m!5106527))

(assert (=> bs!757599 m!5106519))

(assert (=> b!4425531 d!1341679))

(declare-fun d!1341687 () Bool)

(declare-fun e!2755643 () Bool)

(assert (=> d!1341687 e!2755643))

(declare-fun res!1829701 () Bool)

(assert (=> d!1341687 (=> (not res!1829701) (not e!2755643))))

(declare-fun lt!1625013 () ListMap!2729)

(assert (=> d!1341687 (= res!1829701 (contains!12082 lt!1625013 (_1!27981 lt!1624746)))))

(declare-fun lt!1625014 () List!49705)

(assert (=> d!1341687 (= lt!1625013 (ListMap!2730 lt!1625014))))

(declare-fun lt!1625012 () Unit!81975)

(declare-fun lt!1625011 () Unit!81975)

(assert (=> d!1341687 (= lt!1625012 lt!1625011)))

(declare-datatypes ((Option!10725 0))(
  ( (None!10724) (Some!10724 (v!43912 V!11191)) )
))
(declare-fun getValueByKey!711 (List!49705 K!10945) Option!10725)

(assert (=> d!1341687 (= (getValueByKey!711 lt!1625014 (_1!27981 lt!1624746)) (Some!10724 (_2!27981 lt!1624746)))))

(declare-fun lemmaContainsTupThenGetReturnValue!446 (List!49705 K!10945 V!11191) Unit!81975)

(assert (=> d!1341687 (= lt!1625011 (lemmaContainsTupThenGetReturnValue!446 lt!1625014 (_1!27981 lt!1624746) (_2!27981 lt!1624746)))))

(declare-fun insertNoDuplicatedKeys!195 (List!49705 K!10945 V!11191) List!49705)

(assert (=> d!1341687 (= lt!1625014 (insertNoDuplicatedKeys!195 (toList!3486 lt!1624738) (_1!27981 lt!1624746) (_2!27981 lt!1624746)))))

(assert (=> d!1341687 (= (+!1083 lt!1624738 lt!1624746) lt!1625013)))

(declare-fun b!4425682 () Bool)

(declare-fun res!1829700 () Bool)

(assert (=> b!4425682 (=> (not res!1829700) (not e!2755643))))

(assert (=> b!4425682 (= res!1829700 (= (getValueByKey!711 (toList!3486 lt!1625013) (_1!27981 lt!1624746)) (Some!10724 (_2!27981 lt!1624746))))))

(declare-fun b!4425683 () Bool)

(declare-fun contains!12086 (List!49705 tuple2!49374) Bool)

(assert (=> b!4425683 (= e!2755643 (contains!12086 (toList!3486 lt!1625013) lt!1624746))))

(assert (= (and d!1341687 res!1829701) b!4425682))

(assert (= (and b!4425682 res!1829700) b!4425683))

(declare-fun m!5106537 () Bool)

(assert (=> d!1341687 m!5106537))

(declare-fun m!5106539 () Bool)

(assert (=> d!1341687 m!5106539))

(declare-fun m!5106543 () Bool)

(assert (=> d!1341687 m!5106543))

(declare-fun m!5106547 () Bool)

(assert (=> d!1341687 m!5106547))

(declare-fun m!5106551 () Bool)

(assert (=> b!4425682 m!5106551))

(declare-fun m!5106553 () Bool)

(assert (=> b!4425683 m!5106553))

(assert (=> b!4425531 d!1341687))

(assert (=> b!4425542 d!1341661))

(declare-fun b!4425737 () Bool)

(declare-fun e!2755681 () Unit!81975)

(declare-fun lt!1625050 () Unit!81975)

(assert (=> b!4425737 (= e!2755681 lt!1625050)))

(declare-fun lt!1625049 () Unit!81975)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!620 (List!49705 K!10945) Unit!81975)

(assert (=> b!4425737 (= lt!1625049 (lemmaContainsKeyImpliesGetValueByKeyDefined!620 (toList!3486 lt!1624732) key!3717))))

(declare-fun isDefined!8017 (Option!10725) Bool)

(assert (=> b!4425737 (isDefined!8017 (getValueByKey!711 (toList!3486 lt!1624732) key!3717))))

(declare-fun lt!1625051 () Unit!81975)

(assert (=> b!4425737 (= lt!1625051 lt!1625049)))

(declare-fun lemmaInListThenGetKeysListContains!249 (List!49705 K!10945) Unit!81975)

(assert (=> b!4425737 (= lt!1625050 (lemmaInListThenGetKeysListContains!249 (toList!3486 lt!1624732) key!3717))))

(declare-fun call!307961 () Bool)

(assert (=> b!4425737 call!307961))

(declare-fun bm!307956 () Bool)

(declare-datatypes ((List!49708 0))(
  ( (Nil!49584) (Cons!49584 (h!55271 K!10945) (t!356646 List!49708)) )
))
(declare-fun e!2755686 () List!49708)

(declare-fun contains!12088 (List!49708 K!10945) Bool)

(assert (=> bm!307956 (= call!307961 (contains!12088 e!2755686 key!3717))))

(declare-fun c!753400 () Bool)

(declare-fun c!753399 () Bool)

(assert (=> bm!307956 (= c!753400 c!753399)))

(declare-fun b!4425738 () Bool)

(declare-fun e!2755684 () Unit!81975)

(declare-fun Unit!82025 () Unit!81975)

(assert (=> b!4425738 (= e!2755684 Unit!82025)))

(declare-fun b!4425739 () Bool)

(declare-fun e!2755683 () Bool)

(declare-fun keys!16928 (ListMap!2729) List!49708)

(assert (=> b!4425739 (= e!2755683 (not (contains!12088 (keys!16928 lt!1624732) key!3717)))))

(declare-fun b!4425740 () Bool)

(declare-fun getKeysList!251 (List!49705) List!49708)

(assert (=> b!4425740 (= e!2755686 (getKeysList!251 (toList!3486 lt!1624732)))))

(declare-fun b!4425741 () Bool)

(assert (=> b!4425741 false))

(declare-fun lt!1625054 () Unit!81975)

(declare-fun lt!1625052 () Unit!81975)

(assert (=> b!4425741 (= lt!1625054 lt!1625052)))

(declare-fun containsKey!1115 (List!49705 K!10945) Bool)

(assert (=> b!4425741 (containsKey!1115 (toList!3486 lt!1624732) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!250 (List!49705 K!10945) Unit!81975)

(assert (=> b!4425741 (= lt!1625052 (lemmaInGetKeysListThenContainsKey!250 (toList!3486 lt!1624732) key!3717))))

(declare-fun Unit!82026 () Unit!81975)

(assert (=> b!4425741 (= e!2755684 Unit!82026)))

(declare-fun b!4425742 () Bool)

(assert (=> b!4425742 (= e!2755681 e!2755684)))

(declare-fun c!753401 () Bool)

(assert (=> b!4425742 (= c!753401 call!307961)))

(declare-fun b!4425743 () Bool)

(assert (=> b!4425743 (= e!2755686 (keys!16928 lt!1624732))))

(declare-fun d!1341689 () Bool)

(declare-fun e!2755682 () Bool)

(assert (=> d!1341689 e!2755682))

(declare-fun res!1829726 () Bool)

(assert (=> d!1341689 (=> res!1829726 e!2755682)))

(assert (=> d!1341689 (= res!1829726 e!2755683)))

(declare-fun res!1829725 () Bool)

(assert (=> d!1341689 (=> (not res!1829725) (not e!2755683))))

(declare-fun lt!1625047 () Bool)

(assert (=> d!1341689 (= res!1829725 (not lt!1625047))))

(declare-fun lt!1625048 () Bool)

(assert (=> d!1341689 (= lt!1625047 lt!1625048)))

(declare-fun lt!1625053 () Unit!81975)

(assert (=> d!1341689 (= lt!1625053 e!2755681)))

(assert (=> d!1341689 (= c!753399 lt!1625048)))

(assert (=> d!1341689 (= lt!1625048 (containsKey!1115 (toList!3486 lt!1624732) key!3717))))

(assert (=> d!1341689 (= (contains!12082 lt!1624732 key!3717) lt!1625047)))

(declare-fun b!4425744 () Bool)

(declare-fun e!2755685 () Bool)

(assert (=> b!4425744 (= e!2755682 e!2755685)))

(declare-fun res!1829724 () Bool)

(assert (=> b!4425744 (=> (not res!1829724) (not e!2755685))))

(assert (=> b!4425744 (= res!1829724 (isDefined!8017 (getValueByKey!711 (toList!3486 lt!1624732) key!3717)))))

(declare-fun b!4425745 () Bool)

(assert (=> b!4425745 (= e!2755685 (contains!12088 (keys!16928 lt!1624732) key!3717))))

(assert (= (and d!1341689 c!753399) b!4425737))

(assert (= (and d!1341689 (not c!753399)) b!4425742))

(assert (= (and b!4425742 c!753401) b!4425741))

(assert (= (and b!4425742 (not c!753401)) b!4425738))

(assert (= (or b!4425737 b!4425742) bm!307956))

(assert (= (and bm!307956 c!753400) b!4425740))

(assert (= (and bm!307956 (not c!753400)) b!4425743))

(assert (= (and d!1341689 res!1829725) b!4425739))

(assert (= (and d!1341689 (not res!1829726)) b!4425744))

(assert (= (and b!4425744 res!1829724) b!4425745))

(declare-fun m!5106625 () Bool)

(assert (=> b!4425740 m!5106625))

(declare-fun m!5106627 () Bool)

(assert (=> b!4425741 m!5106627))

(declare-fun m!5106629 () Bool)

(assert (=> b!4425741 m!5106629))

(assert (=> d!1341689 m!5106627))

(declare-fun m!5106631 () Bool)

(assert (=> b!4425739 m!5106631))

(assert (=> b!4425739 m!5106631))

(declare-fun m!5106633 () Bool)

(assert (=> b!4425739 m!5106633))

(declare-fun m!5106635 () Bool)

(assert (=> bm!307956 m!5106635))

(declare-fun m!5106637 () Bool)

(assert (=> b!4425737 m!5106637))

(declare-fun m!5106639 () Bool)

(assert (=> b!4425737 m!5106639))

(assert (=> b!4425737 m!5106639))

(declare-fun m!5106641 () Bool)

(assert (=> b!4425737 m!5106641))

(declare-fun m!5106643 () Bool)

(assert (=> b!4425737 m!5106643))

(assert (=> b!4425744 m!5106639))

(assert (=> b!4425744 m!5106639))

(assert (=> b!4425744 m!5106641))

(assert (=> b!4425743 m!5106631))

(assert (=> b!4425745 m!5106631))

(assert (=> b!4425745 m!5106631))

(assert (=> b!4425745 m!5106633))

(assert (=> b!4425532 d!1341689))

(declare-fun bs!757613 () Bool)

(declare-fun d!1341713 () Bool)

(assert (= bs!757613 (and d!1341713 start!431732)))

(declare-fun lambda!154017 () Int)

(assert (=> bs!757613 (= lambda!154017 lambda!153918)))

(declare-fun bs!757614 () Bool)

(assert (= bs!757614 (and d!1341713 d!1341657)))

(assert (=> bs!757614 (= lambda!154017 lambda!154005)))

(declare-fun lt!1625057 () ListMap!2729)

(assert (=> d!1341713 (invariantList!805 (toList!3486 lt!1625057))))

(declare-fun e!2755689 () ListMap!2729)

(assert (=> d!1341713 (= lt!1625057 e!2755689)))

(declare-fun c!753404 () Bool)

(assert (=> d!1341713 (= c!753404 ((_ is Cons!49582) (toList!3485 lm!1616)))))

(assert (=> d!1341713 (forall!9562 (toList!3485 lm!1616) lambda!154017)))

(assert (=> d!1341713 (= (extractMap!810 (toList!3485 lm!1616)) lt!1625057)))

(declare-fun b!4425750 () Bool)

(assert (=> b!4425750 (= e!2755689 (addToMapMapFromBucket!386 (_2!27982 (h!55267 (toList!3485 lm!1616))) (extractMap!810 (t!356644 (toList!3485 lm!1616)))))))

(declare-fun b!4425751 () Bool)

(assert (=> b!4425751 (= e!2755689 (ListMap!2730 Nil!49581))))

(assert (= (and d!1341713 c!753404) b!4425750))

(assert (= (and d!1341713 (not c!753404)) b!4425751))

(declare-fun m!5106645 () Bool)

(assert (=> d!1341713 m!5106645))

(declare-fun m!5106647 () Bool)

(assert (=> d!1341713 m!5106647))

(declare-fun m!5106649 () Bool)

(assert (=> b!4425750 m!5106649))

(assert (=> b!4425750 m!5106649))

(declare-fun m!5106651 () Bool)

(assert (=> b!4425750 m!5106651))

(assert (=> b!4425532 d!1341713))

(declare-fun d!1341715 () Bool)

(declare-fun e!2755694 () Bool)

(assert (=> d!1341715 e!2755694))

(declare-fun res!1829729 () Bool)

(assert (=> d!1341715 (=> res!1829729 e!2755694)))

(declare-fun lt!1625069 () Bool)

(assert (=> d!1341715 (= res!1829729 (not lt!1625069))))

(declare-fun lt!1625066 () Bool)

(assert (=> d!1341715 (= lt!1625069 lt!1625066)))

(declare-fun lt!1625068 () Unit!81975)

(declare-fun e!2755695 () Unit!81975)

(assert (=> d!1341715 (= lt!1625068 e!2755695)))

(declare-fun c!753407 () Bool)

(assert (=> d!1341715 (= c!753407 lt!1625066)))

(declare-fun containsKey!1116 (List!49706 (_ BitVec 64)) Bool)

(assert (=> d!1341715 (= lt!1625066 (containsKey!1116 (toList!3485 lm!1616) hash!366))))

(assert (=> d!1341715 (= (contains!12083 lm!1616 hash!366) lt!1625069)))

(declare-fun b!4425758 () Bool)

(declare-fun lt!1625067 () Unit!81975)

(assert (=> b!4425758 (= e!2755695 lt!1625067)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!621 (List!49706 (_ BitVec 64)) Unit!81975)

(assert (=> b!4425758 (= lt!1625067 (lemmaContainsKeyImpliesGetValueByKeyDefined!621 (toList!3485 lm!1616) hash!366))))

(declare-datatypes ((Option!10726 0))(
  ( (None!10725) (Some!10725 (v!43913 List!49705)) )
))
(declare-fun isDefined!8018 (Option!10726) Bool)

(declare-fun getValueByKey!712 (List!49706 (_ BitVec 64)) Option!10726)

(assert (=> b!4425758 (isDefined!8018 (getValueByKey!712 (toList!3485 lm!1616) hash!366))))

(declare-fun b!4425759 () Bool)

(declare-fun Unit!82030 () Unit!81975)

(assert (=> b!4425759 (= e!2755695 Unit!82030)))

(declare-fun b!4425760 () Bool)

(assert (=> b!4425760 (= e!2755694 (isDefined!8018 (getValueByKey!712 (toList!3485 lm!1616) hash!366)))))

(assert (= (and d!1341715 c!753407) b!4425758))

(assert (= (and d!1341715 (not c!753407)) b!4425759))

(assert (= (and d!1341715 (not res!1829729)) b!4425760))

(declare-fun m!5106653 () Bool)

(assert (=> d!1341715 m!5106653))

(declare-fun m!5106655 () Bool)

(assert (=> b!4425758 m!5106655))

(declare-fun m!5106657 () Bool)

(assert (=> b!4425758 m!5106657))

(assert (=> b!4425758 m!5106657))

(declare-fun m!5106659 () Bool)

(assert (=> b!4425758 m!5106659))

(assert (=> b!4425760 m!5106657))

(assert (=> b!4425760 m!5106657))

(assert (=> b!4425760 m!5106659))

(assert (=> b!4425535 d!1341715))

(declare-fun bs!757615 () Bool)

(declare-fun d!1341717 () Bool)

(assert (= bs!757615 (and d!1341717 start!431732)))

(declare-fun lambda!154020 () Int)

(assert (=> bs!757615 (not (= lambda!154020 lambda!153918))))

(declare-fun bs!757616 () Bool)

(assert (= bs!757616 (and d!1341717 d!1341657)))

(assert (=> bs!757616 (not (= lambda!154020 lambda!154005))))

(declare-fun bs!757617 () Bool)

(assert (= bs!757617 (and d!1341717 d!1341713)))

(assert (=> bs!757617 (not (= lambda!154020 lambda!154017))))

(assert (=> d!1341717 true))

(assert (=> d!1341717 (= (allKeysSameHashInMap!855 lm!1616 hashF!1220) (forall!9562 (toList!3485 lm!1616) lambda!154020))))

(declare-fun bs!757618 () Bool)

(assert (= bs!757618 d!1341717))

(declare-fun m!5106661 () Bool)

(assert (=> bs!757618 m!5106661))

(assert (=> b!4425525 d!1341717))

(declare-fun d!1341719 () Bool)

(declare-fun res!1829734 () Bool)

(declare-fun e!2755700 () Bool)

(assert (=> d!1341719 (=> res!1829734 e!2755700)))

(assert (=> d!1341719 (= res!1829734 (not ((_ is Cons!49581) newBucket!194)))))

(assert (=> d!1341719 (= (noDuplicateKeys!749 newBucket!194) e!2755700)))

(declare-fun b!4425767 () Bool)

(declare-fun e!2755701 () Bool)

(assert (=> b!4425767 (= e!2755700 e!2755701)))

(declare-fun res!1829735 () Bool)

(assert (=> b!4425767 (=> (not res!1829735) (not e!2755701))))

(assert (=> b!4425767 (= res!1829735 (not (containsKey!1112 (t!356643 newBucket!194) (_1!27981 (h!55266 newBucket!194)))))))

(declare-fun b!4425768 () Bool)

(assert (=> b!4425768 (= e!2755701 (noDuplicateKeys!749 (t!356643 newBucket!194)))))

(assert (= (and d!1341719 (not res!1829734)) b!4425767))

(assert (= (and b!4425767 res!1829735) b!4425768))

(declare-fun m!5106663 () Bool)

(assert (=> b!4425767 m!5106663))

(declare-fun m!5106665 () Bool)

(assert (=> b!4425768 m!5106665))

(assert (=> b!4425536 d!1341719))

(declare-fun d!1341721 () Bool)

(declare-fun res!1829740 () Bool)

(declare-fun e!2755706 () Bool)

(assert (=> d!1341721 (=> res!1829740 e!2755706)))

(assert (=> d!1341721 (= res!1829740 (and ((_ is Cons!49581) (_2!27982 (h!55267 (toList!3485 lm!1616)))) (= (_1!27981 (h!55266 (_2!27982 (h!55267 (toList!3485 lm!1616))))) key!3717)))))

(assert (=> d!1341721 (= (containsKey!1112 (_2!27982 (h!55267 (toList!3485 lm!1616))) key!3717) e!2755706)))

(declare-fun b!4425773 () Bool)

(declare-fun e!2755707 () Bool)

(assert (=> b!4425773 (= e!2755706 e!2755707)))

(declare-fun res!1829741 () Bool)

(assert (=> b!4425773 (=> (not res!1829741) (not e!2755707))))

(assert (=> b!4425773 (= res!1829741 ((_ is Cons!49581) (_2!27982 (h!55267 (toList!3485 lm!1616)))))))

(declare-fun b!4425774 () Bool)

(assert (=> b!4425774 (= e!2755707 (containsKey!1112 (t!356643 (_2!27982 (h!55267 (toList!3485 lm!1616)))) key!3717))))

(assert (= (and d!1341721 (not res!1829740)) b!4425773))

(assert (= (and b!4425773 res!1829741) b!4425774))

(declare-fun m!5106667 () Bool)

(assert (=> b!4425774 m!5106667))

(assert (=> b!4425534 d!1341721))

(declare-fun d!1341723 () Bool)

(declare-fun res!1829742 () Bool)

(declare-fun e!2755708 () Bool)

(assert (=> d!1341723 (=> res!1829742 e!2755708)))

(assert (=> d!1341723 (= res!1829742 (and ((_ is Cons!49581) (apply!11601 lm!1616 (_1!27982 (h!55267 (toList!3485 lm!1616))))) (= (_1!27981 (h!55266 (apply!11601 lm!1616 (_1!27982 (h!55267 (toList!3485 lm!1616)))))) key!3717)))))

(assert (=> d!1341723 (= (containsKey!1112 (apply!11601 lm!1616 (_1!27982 (h!55267 (toList!3485 lm!1616)))) key!3717) e!2755708)))

(declare-fun b!4425775 () Bool)

(declare-fun e!2755709 () Bool)

(assert (=> b!4425775 (= e!2755708 e!2755709)))

(declare-fun res!1829743 () Bool)

(assert (=> b!4425775 (=> (not res!1829743) (not e!2755709))))

(assert (=> b!4425775 (= res!1829743 ((_ is Cons!49581) (apply!11601 lm!1616 (_1!27982 (h!55267 (toList!3485 lm!1616))))))))

(declare-fun b!4425776 () Bool)

(assert (=> b!4425776 (= e!2755709 (containsKey!1112 (t!356643 (apply!11601 lm!1616 (_1!27982 (h!55267 (toList!3485 lm!1616))))) key!3717))))

(assert (= (and d!1341723 (not res!1829742)) b!4425775))

(assert (= (and b!4425775 res!1829743) b!4425776))

(declare-fun m!5106669 () Bool)

(assert (=> b!4425776 m!5106669))

(assert (=> b!4425534 d!1341723))

(declare-fun d!1341725 () Bool)

(declare-fun get!16159 (Option!10726) List!49705)

(assert (=> d!1341725 (= (apply!11601 lm!1616 (_1!27982 (h!55267 (toList!3485 lm!1616)))) (get!16159 (getValueByKey!712 (toList!3485 lm!1616) (_1!27982 (h!55267 (toList!3485 lm!1616))))))))

(declare-fun bs!757619 () Bool)

(assert (= bs!757619 d!1341725))

(declare-fun m!5106671 () Bool)

(assert (=> bs!757619 m!5106671))

(assert (=> bs!757619 m!5106671))

(declare-fun m!5106673 () Bool)

(assert (=> bs!757619 m!5106673))

(assert (=> b!4425534 d!1341725))

(declare-fun bs!757620 () Bool)

(declare-fun d!1341727 () Bool)

(assert (= bs!757620 (and d!1341727 start!431732)))

(declare-fun lambda!154023 () Int)

(assert (=> bs!757620 (= lambda!154023 lambda!153918)))

(declare-fun bs!757621 () Bool)

(assert (= bs!757621 (and d!1341727 d!1341657)))

(assert (=> bs!757621 (= lambda!154023 lambda!154005)))

(declare-fun bs!757622 () Bool)

(assert (= bs!757622 (and d!1341727 d!1341713)))

(assert (=> bs!757622 (= lambda!154023 lambda!154017)))

(declare-fun bs!757623 () Bool)

(assert (= bs!757623 (and d!1341727 d!1341717)))

(assert (=> bs!757623 (not (= lambda!154023 lambda!154020))))

(assert (=> d!1341727 (not (containsKey!1112 (apply!11601 lm!1616 (_1!27982 (h!55267 (toList!3485 lm!1616)))) key!3717))))

(declare-fun lt!1625072 () Unit!81975)

(declare-fun choose!27948 (ListLongMap!2135 K!10945 (_ BitVec 64) Hashable!5143) Unit!81975)

(assert (=> d!1341727 (= lt!1625072 (choose!27948 lm!1616 key!3717 (_1!27982 (h!55267 (toList!3485 lm!1616))) hashF!1220))))

(assert (=> d!1341727 (forall!9562 (toList!3485 lm!1616) lambda!154023)))

(assert (=> d!1341727 (= (lemmaNotSameHashThenCannotContainKey!128 lm!1616 key!3717 (_1!27982 (h!55267 (toList!3485 lm!1616))) hashF!1220) lt!1625072)))

(declare-fun bs!757624 () Bool)

(assert (= bs!757624 d!1341727))

(assert (=> bs!757624 m!5106155))

(assert (=> bs!757624 m!5106155))

(assert (=> bs!757624 m!5106157))

(declare-fun m!5106675 () Bool)

(assert (=> bs!757624 m!5106675))

(declare-fun m!5106677 () Bool)

(assert (=> bs!757624 m!5106677))

(assert (=> b!4425534 d!1341727))

(declare-fun d!1341729 () Bool)

(declare-fun e!2755712 () Bool)

(assert (=> d!1341729 e!2755712))

(declare-fun res!1829748 () Bool)

(assert (=> d!1341729 (=> (not res!1829748) (not e!2755712))))

(declare-fun lt!1625082 () ListLongMap!2135)

(assert (=> d!1341729 (= res!1829748 (contains!12083 lt!1625082 (_1!27982 lt!1624734)))))

(declare-fun lt!1625084 () List!49706)

(assert (=> d!1341729 (= lt!1625082 (ListLongMap!2136 lt!1625084))))

(declare-fun lt!1625083 () Unit!81975)

(declare-fun lt!1625081 () Unit!81975)

(assert (=> d!1341729 (= lt!1625083 lt!1625081)))

(assert (=> d!1341729 (= (getValueByKey!712 lt!1625084 (_1!27982 lt!1624734)) (Some!10725 (_2!27982 lt!1624734)))))

(declare-fun lemmaContainsTupThenGetReturnValue!447 (List!49706 (_ BitVec 64) List!49705) Unit!81975)

(assert (=> d!1341729 (= lt!1625081 (lemmaContainsTupThenGetReturnValue!447 lt!1625084 (_1!27982 lt!1624734) (_2!27982 lt!1624734)))))

(declare-fun insertStrictlySorted!260 (List!49706 (_ BitVec 64) List!49705) List!49706)

(assert (=> d!1341729 (= lt!1625084 (insertStrictlySorted!260 (toList!3485 lt!1624743) (_1!27982 lt!1624734) (_2!27982 lt!1624734)))))

(assert (=> d!1341729 (= (+!1082 lt!1624743 lt!1624734) lt!1625082)))

(declare-fun b!4425781 () Bool)

(declare-fun res!1829749 () Bool)

(assert (=> b!4425781 (=> (not res!1829749) (not e!2755712))))

(assert (=> b!4425781 (= res!1829749 (= (getValueByKey!712 (toList!3485 lt!1625082) (_1!27982 lt!1624734)) (Some!10725 (_2!27982 lt!1624734))))))

(declare-fun b!4425782 () Bool)

(declare-fun contains!12089 (List!49706 tuple2!49376) Bool)

(assert (=> b!4425782 (= e!2755712 (contains!12089 (toList!3485 lt!1625082) lt!1624734))))

(assert (= (and d!1341729 res!1829748) b!4425781))

(assert (= (and b!4425781 res!1829749) b!4425782))

(declare-fun m!5106679 () Bool)

(assert (=> d!1341729 m!5106679))

(declare-fun m!5106681 () Bool)

(assert (=> d!1341729 m!5106681))

(declare-fun m!5106683 () Bool)

(assert (=> d!1341729 m!5106683))

(declare-fun m!5106685 () Bool)

(assert (=> d!1341729 m!5106685))

(declare-fun m!5106687 () Bool)

(assert (=> b!4425781 m!5106687))

(declare-fun m!5106689 () Bool)

(assert (=> b!4425782 m!5106689))

(assert (=> b!4425527 d!1341729))

(declare-fun d!1341731 () Bool)

(assert (=> d!1341731 (= (eq!407 lt!1624742 lt!1624741) (= (content!7958 (toList!3486 lt!1624742)) (content!7958 (toList!3486 lt!1624741))))))

(declare-fun bs!757625 () Bool)

(assert (= bs!757625 d!1341731))

(declare-fun m!5106691 () Bool)

(assert (=> bs!757625 m!5106691))

(declare-fun m!5106693 () Bool)

(assert (=> bs!757625 m!5106693))

(assert (=> b!4425527 d!1341731))

(declare-fun d!1341733 () Bool)

(declare-fun head!9218 (List!49706) tuple2!49376)

(assert (=> d!1341733 (= (head!9216 lm!1616) (head!9218 (toList!3485 lm!1616)))))

(declare-fun bs!757626 () Bool)

(assert (= bs!757626 d!1341733))

(declare-fun m!5106695 () Bool)

(assert (=> bs!757626 m!5106695))

(assert (=> b!4425527 d!1341733))

(declare-fun d!1341735 () Bool)

(declare-fun e!2755713 () Bool)

(assert (=> d!1341735 e!2755713))

(declare-fun res!1829751 () Bool)

(assert (=> d!1341735 (=> (not res!1829751) (not e!2755713))))

(declare-fun lt!1625087 () ListMap!2729)

(assert (=> d!1341735 (= res!1829751 (contains!12082 lt!1625087 (_1!27981 lt!1624746)))))

(declare-fun lt!1625088 () List!49705)

(assert (=> d!1341735 (= lt!1625087 (ListMap!2730 lt!1625088))))

(declare-fun lt!1625086 () Unit!81975)

(declare-fun lt!1625085 () Unit!81975)

(assert (=> d!1341735 (= lt!1625086 lt!1625085)))

(assert (=> d!1341735 (= (getValueByKey!711 lt!1625088 (_1!27981 lt!1624746)) (Some!10724 (_2!27981 lt!1624746)))))

(assert (=> d!1341735 (= lt!1625085 (lemmaContainsTupThenGetReturnValue!446 lt!1625088 (_1!27981 lt!1624746) (_2!27981 lt!1624746)))))

(assert (=> d!1341735 (= lt!1625088 (insertNoDuplicatedKeys!195 (toList!3486 lt!1624744) (_1!27981 lt!1624746) (_2!27981 lt!1624746)))))

(assert (=> d!1341735 (= (+!1083 lt!1624744 lt!1624746) lt!1625087)))

(declare-fun b!4425783 () Bool)

(declare-fun res!1829750 () Bool)

(assert (=> b!4425783 (=> (not res!1829750) (not e!2755713))))

(assert (=> b!4425783 (= res!1829750 (= (getValueByKey!711 (toList!3486 lt!1625087) (_1!27981 lt!1624746)) (Some!10724 (_2!27981 lt!1624746))))))

(declare-fun b!4425784 () Bool)

(assert (=> b!4425784 (= e!2755713 (contains!12086 (toList!3486 lt!1625087) lt!1624746))))

(assert (= (and d!1341735 res!1829751) b!4425783))

(assert (= (and b!4425783 res!1829750) b!4425784))

(declare-fun m!5106697 () Bool)

(assert (=> d!1341735 m!5106697))

(declare-fun m!5106699 () Bool)

(assert (=> d!1341735 m!5106699))

(declare-fun m!5106701 () Bool)

(assert (=> d!1341735 m!5106701))

(declare-fun m!5106703 () Bool)

(assert (=> d!1341735 m!5106703))

(declare-fun m!5106705 () Bool)

(assert (=> b!4425783 m!5106705))

(declare-fun m!5106707 () Bool)

(assert (=> b!4425784 m!5106707))

(assert (=> b!4425527 d!1341735))

(declare-fun bs!757627 () Bool)

(declare-fun d!1341737 () Bool)

(assert (= bs!757627 (and d!1341737 d!1341657)))

(declare-fun lambda!154024 () Int)

(assert (=> bs!757627 (= lambda!154024 lambda!154005)))

(declare-fun bs!757628 () Bool)

(assert (= bs!757628 (and d!1341737 d!1341727)))

(assert (=> bs!757628 (= lambda!154024 lambda!154023)))

(declare-fun bs!757629 () Bool)

(assert (= bs!757629 (and d!1341737 d!1341717)))

(assert (=> bs!757629 (not (= lambda!154024 lambda!154020))))

(declare-fun bs!757630 () Bool)

(assert (= bs!757630 (and d!1341737 d!1341713)))

(assert (=> bs!757630 (= lambda!154024 lambda!154017)))

(declare-fun bs!757631 () Bool)

(assert (= bs!757631 (and d!1341737 start!431732)))

(assert (=> bs!757631 (= lambda!154024 lambda!153918)))

(declare-fun lt!1625089 () ListMap!2729)

(assert (=> d!1341737 (invariantList!805 (toList!3486 lt!1625089))))

(declare-fun e!2755714 () ListMap!2729)

(assert (=> d!1341737 (= lt!1625089 e!2755714)))

(declare-fun c!753408 () Bool)

(assert (=> d!1341737 (= c!753408 ((_ is Cons!49582) (toList!3485 lt!1624743)))))

(assert (=> d!1341737 (forall!9562 (toList!3485 lt!1624743) lambda!154024)))

(assert (=> d!1341737 (= (extractMap!810 (toList!3485 lt!1624743)) lt!1625089)))

(declare-fun b!4425785 () Bool)

(assert (=> b!4425785 (= e!2755714 (addToMapMapFromBucket!386 (_2!27982 (h!55267 (toList!3485 lt!1624743))) (extractMap!810 (t!356644 (toList!3485 lt!1624743)))))))

(declare-fun b!4425786 () Bool)

(assert (=> b!4425786 (= e!2755714 (ListMap!2730 Nil!49581))))

(assert (= (and d!1341737 c!753408) b!4425785))

(assert (= (and d!1341737 (not c!753408)) b!4425786))

(declare-fun m!5106709 () Bool)

(assert (=> d!1341737 m!5106709))

(declare-fun m!5106711 () Bool)

(assert (=> d!1341737 m!5106711))

(declare-fun m!5106713 () Bool)

(assert (=> b!4425785 m!5106713))

(assert (=> b!4425785 m!5106713))

(declare-fun m!5106715 () Bool)

(assert (=> b!4425785 m!5106715))

(assert (=> b!4425527 d!1341737))

(declare-fun bs!757632 () Bool)

(declare-fun d!1341739 () Bool)

(assert (= bs!757632 (and d!1341739 d!1341657)))

(declare-fun lambda!154025 () Int)

(assert (=> bs!757632 (= lambda!154025 lambda!154005)))

(declare-fun bs!757633 () Bool)

(assert (= bs!757633 (and d!1341739 d!1341727)))

(assert (=> bs!757633 (= lambda!154025 lambda!154023)))

(declare-fun bs!757634 () Bool)

(assert (= bs!757634 (and d!1341739 d!1341717)))

(assert (=> bs!757634 (not (= lambda!154025 lambda!154020))))

(declare-fun bs!757635 () Bool)

(assert (= bs!757635 (and d!1341739 d!1341737)))

(assert (=> bs!757635 (= lambda!154025 lambda!154024)))

(declare-fun bs!757636 () Bool)

(assert (= bs!757636 (and d!1341739 d!1341713)))

(assert (=> bs!757636 (= lambda!154025 lambda!154017)))

(declare-fun bs!757637 () Bool)

(assert (= bs!757637 (and d!1341739 start!431732)))

(assert (=> bs!757637 (= lambda!154025 lambda!153918)))

(declare-fun lt!1625090 () ListMap!2729)

(assert (=> d!1341739 (invariantList!805 (toList!3486 lt!1625090))))

(declare-fun e!2755715 () ListMap!2729)

(assert (=> d!1341739 (= lt!1625090 e!2755715)))

(declare-fun c!753409 () Bool)

(assert (=> d!1341739 (= c!753409 ((_ is Cons!49582) (toList!3485 (+!1082 lt!1624743 lt!1624734))))))

(assert (=> d!1341739 (forall!9562 (toList!3485 (+!1082 lt!1624743 lt!1624734)) lambda!154025)))

(assert (=> d!1341739 (= (extractMap!810 (toList!3485 (+!1082 lt!1624743 lt!1624734))) lt!1625090)))

(declare-fun b!4425787 () Bool)

(assert (=> b!4425787 (= e!2755715 (addToMapMapFromBucket!386 (_2!27982 (h!55267 (toList!3485 (+!1082 lt!1624743 lt!1624734)))) (extractMap!810 (t!356644 (toList!3485 (+!1082 lt!1624743 lt!1624734))))))))

(declare-fun b!4425788 () Bool)

(assert (=> b!4425788 (= e!2755715 (ListMap!2730 Nil!49581))))

(assert (= (and d!1341739 c!753409) b!4425787))

(assert (= (and d!1341739 (not c!753409)) b!4425788))

(declare-fun m!5106717 () Bool)

(assert (=> d!1341739 m!5106717))

(declare-fun m!5106719 () Bool)

(assert (=> d!1341739 m!5106719))

(declare-fun m!5106721 () Bool)

(assert (=> b!4425787 m!5106721))

(assert (=> b!4425787 m!5106721))

(declare-fun m!5106723 () Bool)

(assert (=> b!4425787 m!5106723))

(assert (=> b!4425527 d!1341739))

(declare-fun bs!757638 () Bool)

(declare-fun d!1341741 () Bool)

(assert (= bs!757638 (and d!1341741 d!1341657)))

(declare-fun lambda!154028 () Int)

(assert (=> bs!757638 (= lambda!154028 lambda!154005)))

(declare-fun bs!757639 () Bool)

(assert (= bs!757639 (and d!1341741 d!1341739)))

(assert (=> bs!757639 (= lambda!154028 lambda!154025)))

(declare-fun bs!757640 () Bool)

(assert (= bs!757640 (and d!1341741 d!1341727)))

(assert (=> bs!757640 (= lambda!154028 lambda!154023)))

(declare-fun bs!757641 () Bool)

(assert (= bs!757641 (and d!1341741 d!1341717)))

(assert (=> bs!757641 (not (= lambda!154028 lambda!154020))))

(declare-fun bs!757642 () Bool)

(assert (= bs!757642 (and d!1341741 d!1341737)))

(assert (=> bs!757642 (= lambda!154028 lambda!154024)))

(declare-fun bs!757643 () Bool)

(assert (= bs!757643 (and d!1341741 d!1341713)))

(assert (=> bs!757643 (= lambda!154028 lambda!154017)))

(declare-fun bs!757644 () Bool)

(assert (= bs!757644 (and d!1341741 start!431732)))

(assert (=> bs!757644 (= lambda!154028 lambda!153918)))

(assert (=> d!1341741 (eq!407 (extractMap!810 (toList!3485 (+!1082 lt!1624743 (tuple2!49377 hash!366 newBucket!194)))) (+!1083 (extractMap!810 (toList!3485 lt!1624743)) (tuple2!49375 key!3717 newValue!93)))))

(declare-fun lt!1625093 () Unit!81975)

(declare-fun choose!27950 (ListLongMap!2135 (_ BitVec 64) List!49705 K!10945 V!11191 Hashable!5143) Unit!81975)

(assert (=> d!1341741 (= lt!1625093 (choose!27950 lt!1624743 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1341741 (forall!9562 (toList!3485 lt!1624743) lambda!154028)))

(assert (=> d!1341741 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!123 lt!1624743 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1625093)))

(declare-fun bs!757645 () Bool)

(assert (= bs!757645 d!1341741))

(declare-fun m!5106725 () Bool)

(assert (=> bs!757645 m!5106725))

(declare-fun m!5106727 () Bool)

(assert (=> bs!757645 m!5106727))

(declare-fun m!5106729 () Bool)

(assert (=> bs!757645 m!5106729))

(declare-fun m!5106731 () Bool)

(assert (=> bs!757645 m!5106731))

(assert (=> bs!757645 m!5106727))

(declare-fun m!5106733 () Bool)

(assert (=> bs!757645 m!5106733))

(declare-fun m!5106735 () Bool)

(assert (=> bs!757645 m!5106735))

(assert (=> bs!757645 m!5106183))

(assert (=> bs!757645 m!5106183))

(assert (=> bs!757645 m!5106733))

(assert (=> b!4425527 d!1341741))

(declare-fun d!1341743 () Bool)

(assert (=> d!1341743 (= (tail!7270 lm!1616) (ListLongMap!2136 (tail!7271 (toList!3485 lm!1616))))))

(declare-fun bs!757646 () Bool)

(assert (= bs!757646 d!1341743))

(assert (=> bs!757646 m!5106163))

(assert (=> b!4425527 d!1341743))

(declare-fun bs!757647 () Bool)

(declare-fun d!1341745 () Bool)

(assert (= bs!757647 (and d!1341745 d!1341657)))

(declare-fun lambda!154029 () Int)

(assert (=> bs!757647 (= lambda!154029 lambda!154005)))

(declare-fun bs!757648 () Bool)

(assert (= bs!757648 (and d!1341745 d!1341739)))

(assert (=> bs!757648 (= lambda!154029 lambda!154025)))

(declare-fun bs!757649 () Bool)

(assert (= bs!757649 (and d!1341745 d!1341727)))

(assert (=> bs!757649 (= lambda!154029 lambda!154023)))

(declare-fun bs!757650 () Bool)

(assert (= bs!757650 (and d!1341745 d!1341717)))

(assert (=> bs!757650 (not (= lambda!154029 lambda!154020))))

(declare-fun bs!757651 () Bool)

(assert (= bs!757651 (and d!1341745 d!1341737)))

(assert (=> bs!757651 (= lambda!154029 lambda!154024)))

(declare-fun bs!757652 () Bool)

(assert (= bs!757652 (and d!1341745 d!1341713)))

(assert (=> bs!757652 (= lambda!154029 lambda!154017)))

(declare-fun bs!757653 () Bool)

(assert (= bs!757653 (and d!1341745 d!1341741)))

(assert (=> bs!757653 (= lambda!154029 lambda!154028)))

(declare-fun bs!757654 () Bool)

(assert (= bs!757654 (and d!1341745 start!431732)))

(assert (=> bs!757654 (= lambda!154029 lambda!153918)))

(declare-fun lt!1625094 () ListMap!2729)

(assert (=> d!1341745 (invariantList!805 (toList!3486 lt!1625094))))

(declare-fun e!2755716 () ListMap!2729)

(assert (=> d!1341745 (= lt!1625094 e!2755716)))

(declare-fun c!753410 () Bool)

(assert (=> d!1341745 (= c!753410 ((_ is Cons!49582) (tail!7271 (toList!3485 lm!1616))))))

(assert (=> d!1341745 (forall!9562 (tail!7271 (toList!3485 lm!1616)) lambda!154029)))

(assert (=> d!1341745 (= (extractMap!810 (tail!7271 (toList!3485 lm!1616))) lt!1625094)))

(declare-fun b!4425789 () Bool)

(assert (=> b!4425789 (= e!2755716 (addToMapMapFromBucket!386 (_2!27982 (h!55267 (tail!7271 (toList!3485 lm!1616)))) (extractMap!810 (t!356644 (tail!7271 (toList!3485 lm!1616))))))))

(declare-fun b!4425790 () Bool)

(assert (=> b!4425790 (= e!2755716 (ListMap!2730 Nil!49581))))

(assert (= (and d!1341745 c!753410) b!4425789))

(assert (= (and d!1341745 (not c!753410)) b!4425790))

(declare-fun m!5106737 () Bool)

(assert (=> d!1341745 m!5106737))

(assert (=> d!1341745 m!5106163))

(declare-fun m!5106739 () Bool)

(assert (=> d!1341745 m!5106739))

(declare-fun m!5106741 () Bool)

(assert (=> b!4425789 m!5106741))

(assert (=> b!4425789 m!5106741))

(declare-fun m!5106743 () Bool)

(assert (=> b!4425789 m!5106743))

(assert (=> b!4425527 d!1341745))

(declare-fun d!1341747 () Bool)

(assert (=> d!1341747 (= (tail!7271 (toList!3485 lm!1616)) (t!356644 (toList!3485 lm!1616)))))

(assert (=> b!4425527 d!1341747))

(declare-fun b!4425791 () Bool)

(declare-fun e!2755717 () Unit!81975)

(declare-fun lt!1625098 () Unit!81975)

(assert (=> b!4425791 (= e!2755717 lt!1625098)))

(declare-fun lt!1625097 () Unit!81975)

(assert (=> b!4425791 (= lt!1625097 (lemmaContainsKeyImpliesGetValueByKeyDefined!620 (toList!3486 (extractMap!810 (tail!7271 (toList!3485 lm!1616)))) key!3717))))

(assert (=> b!4425791 (isDefined!8017 (getValueByKey!711 (toList!3486 (extractMap!810 (tail!7271 (toList!3485 lm!1616)))) key!3717))))

(declare-fun lt!1625099 () Unit!81975)

(assert (=> b!4425791 (= lt!1625099 lt!1625097)))

(assert (=> b!4425791 (= lt!1625098 (lemmaInListThenGetKeysListContains!249 (toList!3486 (extractMap!810 (tail!7271 (toList!3485 lm!1616)))) key!3717))))

(declare-fun call!307962 () Bool)

(assert (=> b!4425791 call!307962))

(declare-fun bm!307957 () Bool)

(declare-fun e!2755722 () List!49708)

(assert (=> bm!307957 (= call!307962 (contains!12088 e!2755722 key!3717))))

(declare-fun c!753412 () Bool)

(declare-fun c!753411 () Bool)

(assert (=> bm!307957 (= c!753412 c!753411)))

(declare-fun b!4425792 () Bool)

(declare-fun e!2755720 () Unit!81975)

(declare-fun Unit!82031 () Unit!81975)

(assert (=> b!4425792 (= e!2755720 Unit!82031)))

(declare-fun b!4425793 () Bool)

(declare-fun e!2755719 () Bool)

(assert (=> b!4425793 (= e!2755719 (not (contains!12088 (keys!16928 (extractMap!810 (tail!7271 (toList!3485 lm!1616)))) key!3717)))))

(declare-fun b!4425794 () Bool)

(assert (=> b!4425794 (= e!2755722 (getKeysList!251 (toList!3486 (extractMap!810 (tail!7271 (toList!3485 lm!1616))))))))

(declare-fun b!4425795 () Bool)

(assert (=> b!4425795 false))

(declare-fun lt!1625102 () Unit!81975)

(declare-fun lt!1625100 () Unit!81975)

(assert (=> b!4425795 (= lt!1625102 lt!1625100)))

(assert (=> b!4425795 (containsKey!1115 (toList!3486 (extractMap!810 (tail!7271 (toList!3485 lm!1616)))) key!3717)))

(assert (=> b!4425795 (= lt!1625100 (lemmaInGetKeysListThenContainsKey!250 (toList!3486 (extractMap!810 (tail!7271 (toList!3485 lm!1616)))) key!3717))))

(declare-fun Unit!82032 () Unit!81975)

(assert (=> b!4425795 (= e!2755720 Unit!82032)))

(declare-fun b!4425796 () Bool)

(assert (=> b!4425796 (= e!2755717 e!2755720)))

(declare-fun c!753413 () Bool)

(assert (=> b!4425796 (= c!753413 call!307962)))

(declare-fun b!4425797 () Bool)

(assert (=> b!4425797 (= e!2755722 (keys!16928 (extractMap!810 (tail!7271 (toList!3485 lm!1616)))))))

(declare-fun d!1341749 () Bool)

(declare-fun e!2755718 () Bool)

(assert (=> d!1341749 e!2755718))

(declare-fun res!1829754 () Bool)

(assert (=> d!1341749 (=> res!1829754 e!2755718)))

(assert (=> d!1341749 (= res!1829754 e!2755719)))

(declare-fun res!1829753 () Bool)

(assert (=> d!1341749 (=> (not res!1829753) (not e!2755719))))

(declare-fun lt!1625095 () Bool)

(assert (=> d!1341749 (= res!1829753 (not lt!1625095))))

(declare-fun lt!1625096 () Bool)

(assert (=> d!1341749 (= lt!1625095 lt!1625096)))

(declare-fun lt!1625101 () Unit!81975)

(assert (=> d!1341749 (= lt!1625101 e!2755717)))

(assert (=> d!1341749 (= c!753411 lt!1625096)))

(assert (=> d!1341749 (= lt!1625096 (containsKey!1115 (toList!3486 (extractMap!810 (tail!7271 (toList!3485 lm!1616)))) key!3717))))

(assert (=> d!1341749 (= (contains!12082 (extractMap!810 (tail!7271 (toList!3485 lm!1616))) key!3717) lt!1625095)))

(declare-fun b!4425798 () Bool)

(declare-fun e!2755721 () Bool)

(assert (=> b!4425798 (= e!2755718 e!2755721)))

(declare-fun res!1829752 () Bool)

(assert (=> b!4425798 (=> (not res!1829752) (not e!2755721))))

(assert (=> b!4425798 (= res!1829752 (isDefined!8017 (getValueByKey!711 (toList!3486 (extractMap!810 (tail!7271 (toList!3485 lm!1616)))) key!3717)))))

(declare-fun b!4425799 () Bool)

(assert (=> b!4425799 (= e!2755721 (contains!12088 (keys!16928 (extractMap!810 (tail!7271 (toList!3485 lm!1616)))) key!3717))))

(assert (= (and d!1341749 c!753411) b!4425791))

(assert (= (and d!1341749 (not c!753411)) b!4425796))

(assert (= (and b!4425796 c!753413) b!4425795))

(assert (= (and b!4425796 (not c!753413)) b!4425792))

(assert (= (or b!4425791 b!4425796) bm!307957))

(assert (= (and bm!307957 c!753412) b!4425794))

(assert (= (and bm!307957 (not c!753412)) b!4425797))

(assert (= (and d!1341749 res!1829753) b!4425793))

(assert (= (and d!1341749 (not res!1829754)) b!4425798))

(assert (= (and b!4425798 res!1829752) b!4425799))

(declare-fun m!5106745 () Bool)

(assert (=> b!4425794 m!5106745))

(declare-fun m!5106747 () Bool)

(assert (=> b!4425795 m!5106747))

(declare-fun m!5106749 () Bool)

(assert (=> b!4425795 m!5106749))

(assert (=> d!1341749 m!5106747))

(assert (=> b!4425793 m!5106165))

(declare-fun m!5106751 () Bool)

(assert (=> b!4425793 m!5106751))

(assert (=> b!4425793 m!5106751))

(declare-fun m!5106753 () Bool)

(assert (=> b!4425793 m!5106753))

(declare-fun m!5106755 () Bool)

(assert (=> bm!307957 m!5106755))

(declare-fun m!5106757 () Bool)

(assert (=> b!4425791 m!5106757))

(declare-fun m!5106759 () Bool)

(assert (=> b!4425791 m!5106759))

(assert (=> b!4425791 m!5106759))

(declare-fun m!5106761 () Bool)

(assert (=> b!4425791 m!5106761))

(declare-fun m!5106763 () Bool)

(assert (=> b!4425791 m!5106763))

(assert (=> b!4425798 m!5106759))

(assert (=> b!4425798 m!5106759))

(assert (=> b!4425798 m!5106761))

(assert (=> b!4425797 m!5106165))

(assert (=> b!4425797 m!5106751))

(assert (=> b!4425799 m!5106165))

(assert (=> b!4425799 m!5106751))

(assert (=> b!4425799 m!5106751))

(assert (=> b!4425799 m!5106753))

(assert (=> b!4425527 d!1341749))

(declare-fun bs!757655 () Bool)

(declare-fun d!1341751 () Bool)

(assert (= bs!757655 (and d!1341751 b!4425644)))

(declare-fun lambda!154032 () Int)

(assert (=> bs!757655 (not (= lambda!154032 lambda!154008))))

(declare-fun bs!757656 () Bool)

(assert (= bs!757656 (and d!1341751 b!4425642)))

(assert (=> bs!757656 (not (= lambda!154032 lambda!154010))))

(declare-fun bs!757657 () Bool)

(assert (= bs!757657 (and d!1341751 d!1341667)))

(assert (=> bs!757657 (not (= lambda!154032 lambda!154012))))

(assert (=> bs!757656 (not (= lambda!154032 lambda!154009))))

(declare-fun bs!757658 () Bool)

(assert (= bs!757658 (and d!1341751 b!4425619)))

(assert (=> bs!757658 (not (= lambda!154032 lambda!153999))))

(declare-fun bs!757659 () Bool)

(assert (= bs!757659 (and d!1341751 b!4425621)))

(assert (=> bs!757659 (not (= lambda!154032 lambda!153998))))

(declare-fun bs!757660 () Bool)

(assert (= bs!757660 (and d!1341751 d!1341625)))

(assert (=> bs!757660 (not (= lambda!154032 lambda!154002))))

(assert (=> bs!757658 (not (= lambda!154032 lambda!154001))))

(assert (=> d!1341751 true))

(assert (=> d!1341751 true))

(assert (=> d!1341751 (= (allKeysSameHash!709 newBucket!194 hash!366 hashF!1220) (forall!9564 newBucket!194 lambda!154032))))

(declare-fun bs!757661 () Bool)

(assert (= bs!757661 d!1341751))

(declare-fun m!5106765 () Bool)

(assert (=> bs!757661 m!5106765))

(assert (=> b!4425538 d!1341751))

(declare-fun d!1341753 () Bool)

(declare-fun hash!2128 (Hashable!5143 K!10945) (_ BitVec 64))

(assert (=> d!1341753 (= (hash!2122 hashF!1220 key!3717) (hash!2128 hashF!1220 key!3717))))

(declare-fun bs!757662 () Bool)

(assert (= bs!757662 d!1341753))

(declare-fun m!5106767 () Bool)

(assert (=> bs!757662 m!5106767))

(assert (=> b!4425528 d!1341753))

(declare-fun d!1341755 () Bool)

(declare-fun res!1829755 () Bool)

(declare-fun e!2755723 () Bool)

(assert (=> d!1341755 (=> res!1829755 e!2755723)))

(assert (=> d!1341755 (= res!1829755 ((_ is Nil!49582) (toList!3485 lt!1624737)))))

(assert (=> d!1341755 (= (forall!9562 (toList!3485 lt!1624737) lambda!153918) e!2755723)))

(declare-fun b!4425804 () Bool)

(declare-fun e!2755724 () Bool)

(assert (=> b!4425804 (= e!2755723 e!2755724)))

(declare-fun res!1829756 () Bool)

(assert (=> b!4425804 (=> (not res!1829756) (not e!2755724))))

(assert (=> b!4425804 (= res!1829756 (dynLambda!20846 lambda!153918 (h!55267 (toList!3485 lt!1624737))))))

(declare-fun b!4425805 () Bool)

(assert (=> b!4425805 (= e!2755724 (forall!9562 (t!356644 (toList!3485 lt!1624737)) lambda!153918))))

(assert (= (and d!1341755 (not res!1829755)) b!4425804))

(assert (= (and b!4425804 res!1829756) b!4425805))

(declare-fun b_lambda!143175 () Bool)

(assert (=> (not b_lambda!143175) (not b!4425804)))

(declare-fun m!5106769 () Bool)

(assert (=> b!4425804 m!5106769))

(declare-fun m!5106771 () Bool)

(assert (=> b!4425805 m!5106771))

(assert (=> b!4425526 d!1341755))

(declare-fun d!1341757 () Bool)

(declare-fun e!2755725 () Bool)

(assert (=> d!1341757 e!2755725))

(declare-fun res!1829757 () Bool)

(assert (=> d!1341757 (=> (not res!1829757) (not e!2755725))))

(declare-fun lt!1625104 () ListLongMap!2135)

(assert (=> d!1341757 (= res!1829757 (contains!12083 lt!1625104 (_1!27982 lt!1624734)))))

(declare-fun lt!1625106 () List!49706)

(assert (=> d!1341757 (= lt!1625104 (ListLongMap!2136 lt!1625106))))

(declare-fun lt!1625105 () Unit!81975)

(declare-fun lt!1625103 () Unit!81975)

(assert (=> d!1341757 (= lt!1625105 lt!1625103)))

(assert (=> d!1341757 (= (getValueByKey!712 lt!1625106 (_1!27982 lt!1624734)) (Some!10725 (_2!27982 lt!1624734)))))

(assert (=> d!1341757 (= lt!1625103 (lemmaContainsTupThenGetReturnValue!447 lt!1625106 (_1!27982 lt!1624734) (_2!27982 lt!1624734)))))

(assert (=> d!1341757 (= lt!1625106 (insertStrictlySorted!260 (toList!3485 lm!1616) (_1!27982 lt!1624734) (_2!27982 lt!1624734)))))

(assert (=> d!1341757 (= (+!1082 lm!1616 lt!1624734) lt!1625104)))

(declare-fun b!4425806 () Bool)

(declare-fun res!1829758 () Bool)

(assert (=> b!4425806 (=> (not res!1829758) (not e!2755725))))

(assert (=> b!4425806 (= res!1829758 (= (getValueByKey!712 (toList!3485 lt!1625104) (_1!27982 lt!1624734)) (Some!10725 (_2!27982 lt!1624734))))))

(declare-fun b!4425807 () Bool)

(assert (=> b!4425807 (= e!2755725 (contains!12089 (toList!3485 lt!1625104) lt!1624734))))

(assert (= (and d!1341757 res!1829757) b!4425806))

(assert (= (and b!4425806 res!1829758) b!4425807))

(declare-fun m!5106773 () Bool)

(assert (=> d!1341757 m!5106773))

(declare-fun m!5106775 () Bool)

(assert (=> d!1341757 m!5106775))

(declare-fun m!5106777 () Bool)

(assert (=> d!1341757 m!5106777))

(declare-fun m!5106779 () Bool)

(assert (=> d!1341757 m!5106779))

(declare-fun m!5106781 () Bool)

(assert (=> b!4425806 m!5106781))

(declare-fun m!5106783 () Bool)

(assert (=> b!4425807 m!5106783))

(assert (=> b!4425526 d!1341757))

(declare-fun d!1341759 () Bool)

(assert (=> d!1341759 (forall!9562 (toList!3485 (+!1082 lm!1616 (tuple2!49377 hash!366 newBucket!194))) lambda!153918)))

(declare-fun lt!1625109 () Unit!81975)

(declare-fun choose!27951 (ListLongMap!2135 Int (_ BitVec 64) List!49705) Unit!81975)

(assert (=> d!1341759 (= lt!1625109 (choose!27951 lm!1616 lambda!153918 hash!366 newBucket!194))))

(declare-fun e!2755728 () Bool)

(assert (=> d!1341759 e!2755728))

(declare-fun res!1829761 () Bool)

(assert (=> d!1341759 (=> (not res!1829761) (not e!2755728))))

(assert (=> d!1341759 (= res!1829761 (forall!9562 (toList!3485 lm!1616) lambda!153918))))

(assert (=> d!1341759 (= (addValidProp!393 lm!1616 lambda!153918 hash!366 newBucket!194) lt!1625109)))

(declare-fun b!4425811 () Bool)

(assert (=> b!4425811 (= e!2755728 (dynLambda!20846 lambda!153918 (tuple2!49377 hash!366 newBucket!194)))))

(assert (= (and d!1341759 res!1829761) b!4425811))

(declare-fun b_lambda!143177 () Bool)

(assert (=> (not b_lambda!143177) (not b!4425811)))

(declare-fun m!5106785 () Bool)

(assert (=> d!1341759 m!5106785))

(declare-fun m!5106787 () Bool)

(assert (=> d!1341759 m!5106787))

(declare-fun m!5106789 () Bool)

(assert (=> d!1341759 m!5106789))

(assert (=> d!1341759 m!5106161))

(declare-fun m!5106791 () Bool)

(assert (=> b!4425811 m!5106791))

(assert (=> b!4425526 d!1341759))

(declare-fun d!1341761 () Bool)

(assert (=> d!1341761 (= (apply!11601 lm!1616 hash!366) (get!16159 (getValueByKey!712 (toList!3485 lm!1616) hash!366)))))

(declare-fun bs!757663 () Bool)

(assert (= bs!757663 d!1341761))

(assert (=> bs!757663 m!5106657))

(assert (=> bs!757663 m!5106657))

(declare-fun m!5106793 () Bool)

(assert (=> bs!757663 m!5106793))

(assert (=> b!4425537 d!1341761))

(declare-fun b!4425816 () Bool)

(declare-fun e!2755731 () Bool)

(declare-fun tp!1333208 () Bool)

(declare-fun tp!1333209 () Bool)

(assert (=> b!4425816 (= e!2755731 (and tp!1333208 tp!1333209))))

(assert (=> b!4425540 (= tp!1333193 e!2755731)))

(assert (= (and b!4425540 ((_ is Cons!49582) (toList!3485 lm!1616))) b!4425816))

(declare-fun b!4425821 () Bool)

(declare-fun tp!1333212 () Bool)

(declare-fun e!2755734 () Bool)

(assert (=> b!4425821 (= e!2755734 (and tp_is_empty!26243 tp_is_empty!26241 tp!1333212))))

(assert (=> b!4425543 (= tp!1333194 e!2755734)))

(assert (= (and b!4425543 ((_ is Cons!49581) (t!356643 newBucket!194))) b!4425821))

(declare-fun b_lambda!143179 () Bool)

(assert (= b_lambda!143159 (or start!431732 b_lambda!143179)))

(declare-fun bs!757664 () Bool)

(declare-fun d!1341763 () Bool)

(assert (= bs!757664 (and d!1341763 start!431732)))

(assert (=> bs!757664 (= (dynLambda!20846 lambda!153918 (h!55267 (toList!3485 lm!1616))) (noDuplicateKeys!749 (_2!27982 (h!55267 (toList!3485 lm!1616)))))))

(assert (=> bs!757664 m!5106393))

(assert (=> b!4425638 d!1341763))

(declare-fun b_lambda!143181 () Bool)

(assert (= b_lambda!143161 (or start!431732 b_lambda!143181)))

(declare-fun bs!757665 () Bool)

(declare-fun d!1341765 () Bool)

(assert (= bs!757665 (and d!1341765 start!431732)))

(assert (=> bs!757665 (= (dynLambda!20846 lambda!153918 (h!55267 (toList!3485 lt!1624743))) (noDuplicateKeys!749 (_2!27982 (h!55267 (toList!3485 lt!1624743)))))))

(declare-fun m!5106795 () Bool)

(assert (=> bs!757665 m!5106795))

(assert (=> b!4425640 d!1341765))

(declare-fun b_lambda!143183 () Bool)

(assert (= b_lambda!143177 (or start!431732 b_lambda!143183)))

(declare-fun bs!757666 () Bool)

(declare-fun d!1341767 () Bool)

(assert (= bs!757666 (and d!1341767 start!431732)))

(assert (=> bs!757666 (= (dynLambda!20846 lambda!153918 (tuple2!49377 hash!366 newBucket!194)) (noDuplicateKeys!749 (_2!27982 (tuple2!49377 hash!366 newBucket!194))))))

(declare-fun m!5106797 () Bool)

(assert (=> bs!757666 m!5106797))

(assert (=> b!4425811 d!1341767))

(declare-fun b_lambda!143185 () Bool)

(assert (= b_lambda!143175 (or start!431732 b_lambda!143185)))

(declare-fun bs!757667 () Bool)

(declare-fun d!1341769 () Bool)

(assert (= bs!757667 (and d!1341769 start!431732)))

(assert (=> bs!757667 (= (dynLambda!20846 lambda!153918 (h!55267 (toList!3485 lt!1624737))) (noDuplicateKeys!749 (_2!27982 (h!55267 (toList!3485 lt!1624737)))))))

(declare-fun m!5106799 () Bool)

(assert (=> bs!757667 m!5106799))

(assert (=> b!4425804 d!1341769))

(check-sat (not b!4425821) (not b!4425794) (not d!1341745) (not b!4425797) (not b_lambda!143185) (not b!4425789) (not b!4425805) (not b!4425816) (not b!4425683) (not d!1341753) (not b_lambda!143183) (not b!4425806) (not bs!757667) (not d!1341761) (not b!4425739) (not d!1341715) (not bs!757665) (not b!4425760) (not d!1341731) (not b!4425776) (not bm!307957) (not d!1341757) (not b!4425643) (not b!4425750) (not b!4425639) (not d!1341667) (not b!4425619) (not d!1341735) (not d!1341729) (not b!4425758) (not b!4425791) (not d!1341739) (not b!4425741) (not bm!307944) (not b_lambda!143179) (not d!1341737) (not b!4425795) (not d!1341679) (not b!4425774) (not b!4425622) (not d!1341717) (not d!1341687) (not b!4425682) (not b!4425740) (not b!4425623) (not d!1341741) (not b!4425799) (not b!4425744) (not d!1341725) (not b!4425781) (not b!4425737) tp_is_empty!26243 (not bm!307956) (not b!4425745) (not bm!307946) (not b_lambda!143181) (not d!1341657) (not b!4425641) (not b!4425767) (not b!4425807) (not b!4425620) (not d!1341751) (not b!4425793) (not d!1341759) (not b!4425743) (not d!1341733) (not bm!307947) (not b!4425784) (not d!1341727) (not b!4425798) (not b!4425785) (not b!4425646) (not d!1341749) (not b!4425783) (not b!4425787) (not bs!757664) (not d!1341743) (not d!1341713) (not bm!307949) tp_is_empty!26241 (not bm!307948) (not b!4425768) (not b!4425645) (not d!1341677) (not b!4425642) (not d!1341625) (not d!1341689) (not b!4425782) (not d!1341621) (not bs!757666) (not bm!307945) (not d!1341663))
(check-sat)
