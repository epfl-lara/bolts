; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461584 () Bool)

(assert start!461584)

(declare-fun b!4614616 () Bool)

(declare-fun res!1933163 () Bool)

(declare-fun e!2878422 () Bool)

(assert (=> b!4614616 (=> (not res!1933163) (not e!2878422))))

(declare-datatypes ((Hashable!5833 0))(
  ( (HashableExt!5832 (__x!31536 Int)) )
))
(declare-fun hashF!1389 () Hashable!5833)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!12740 0))(
  ( (K!12741 (val!18463 Int)) )
))
(declare-datatypes ((V!12986 0))(
  ( (V!12987 (val!18464 Int)) )
))
(declare-datatypes ((tuple2!52190 0))(
  ( (tuple2!52191 (_1!29389 K!12740) (_2!29389 V!12986)) )
))
(declare-datatypes ((List!51477 0))(
  ( (Nil!51353) (Cons!51353 (h!57361 tuple2!52190) (t!358477 List!51477)) )
))
(declare-fun oldBucket!40 () List!51477)

(declare-fun allKeysSameHash!1290 (List!51477 (_ BitVec 64) Hashable!5833) Bool)

(assert (=> b!4614616 (= res!1933163 (allKeysSameHash!1290 oldBucket!40 hash!414 hashF!1389))))

(declare-fun tp!1341519 () Bool)

(declare-fun b!4614617 () Bool)

(declare-fun tp_is_empty!29039 () Bool)

(declare-fun e!2878432 () Bool)

(declare-fun tp_is_empty!29037 () Bool)

(assert (=> b!4614617 (= e!2878432 (and tp_is_empty!29037 tp_is_empty!29039 tp!1341519))))

(declare-fun b!4614618 () Bool)

(declare-fun e!2878431 () Bool)

(declare-fun e!2878424 () Bool)

(assert (=> b!4614618 (= e!2878431 e!2878424)))

(declare-fun res!1933161 () Bool)

(assert (=> b!4614618 (=> res!1933161 e!2878424)))

(declare-fun newBucket!224 () List!51477)

(declare-datatypes ((ListMap!4141 0))(
  ( (ListMap!4142 (toList!4837 List!51477)) )
))
(declare-fun lt!1769830 () ListMap!4141)

(declare-datatypes ((tuple2!52192 0))(
  ( (tuple2!52193 (_1!29390 (_ BitVec 64)) (_2!29390 List!51477)) )
))
(declare-datatypes ((List!51478 0))(
  ( (Nil!51354) (Cons!51354 (h!57362 tuple2!52192) (t!358478 List!51478)) )
))
(declare-fun extractMap!1492 (List!51478) ListMap!4141)

(assert (=> b!4614618 (= res!1933161 (not (= lt!1769830 (extractMap!1492 (Cons!51354 (tuple2!52193 hash!414 newBucket!224) Nil!51354)))))))

(declare-fun lt!1769824 () List!51478)

(assert (=> b!4614618 (= lt!1769830 (extractMap!1492 lt!1769824))))

(declare-fun lt!1769825 () List!51477)

(assert (=> b!4614618 (= lt!1769824 (Cons!51354 (tuple2!52193 hash!414 lt!1769825) Nil!51354))))

(declare-fun b!4614619 () Bool)

(declare-fun res!1933158 () Bool)

(assert (=> b!4614619 (=> (not res!1933158) (not e!2878422))))

(declare-fun noDuplicateKeys!1436 (List!51477) Bool)

(assert (=> b!4614619 (= res!1933158 (noDuplicateKeys!1436 newBucket!224))))

(declare-fun b!4614620 () Bool)

(declare-fun e!2878428 () Bool)

(assert (=> b!4614620 (= e!2878422 e!2878428)))

(declare-fun res!1933165 () Bool)

(assert (=> b!4614620 (=> (not res!1933165) (not e!2878428))))

(declare-fun lt!1769819 () ListMap!4141)

(declare-fun key!4968 () K!12740)

(declare-fun contains!14318 (ListMap!4141 K!12740) Bool)

(assert (=> b!4614620 (= res!1933165 (contains!14318 lt!1769819 key!4968))))

(declare-fun lt!1769823 () List!51478)

(assert (=> b!4614620 (= lt!1769819 (extractMap!1492 lt!1769823))))

(assert (=> b!4614620 (= lt!1769823 (Cons!51354 (tuple2!52193 hash!414 oldBucket!40) Nil!51354))))

(declare-fun b!4614621 () Bool)

(declare-fun res!1933170 () Bool)

(assert (=> b!4614621 (=> (not res!1933170) (not e!2878428))))

(assert (=> b!4614621 (= res!1933170 (allKeysSameHash!1290 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4614622 () Bool)

(declare-fun tp!1341518 () Bool)

(declare-fun e!2878430 () Bool)

(assert (=> b!4614622 (= e!2878430 (and tp_is_empty!29037 tp_is_empty!29039 tp!1341518))))

(declare-fun b!4614623 () Bool)

(declare-fun res!1933154 () Bool)

(declare-fun e!2878425 () Bool)

(assert (=> b!4614623 (=> res!1933154 e!2878425)))

(declare-fun lt!1769828 () ListMap!4141)

(assert (=> b!4614623 (= res!1933154 (not (= lt!1769819 lt!1769828)))))

(declare-fun res!1933162 () Bool)

(assert (=> start!461584 (=> (not res!1933162) (not e!2878422))))

(assert (=> start!461584 (= res!1933162 (noDuplicateKeys!1436 oldBucket!40))))

(assert (=> start!461584 e!2878422))

(assert (=> start!461584 true))

(assert (=> start!461584 e!2878430))

(assert (=> start!461584 tp_is_empty!29037))

(assert (=> start!461584 e!2878432))

(declare-fun b!4614624 () Bool)

(declare-fun res!1933168 () Bool)

(assert (=> b!4614624 (=> res!1933168 e!2878425)))

(declare-fun lt!1769829 () ListMap!4141)

(declare-fun eq!779 (ListMap!4141 ListMap!4141) Bool)

(assert (=> b!4614624 (= res!1933168 (not (eq!779 lt!1769829 lt!1769819)))))

(declare-fun b!4614625 () Bool)

(declare-fun res!1933153 () Bool)

(declare-fun e!2878426 () Bool)

(assert (=> b!4614625 (=> res!1933153 e!2878426)))

(declare-fun containsKey!2312 (List!51477 K!12740) Bool)

(assert (=> b!4614625 (= res!1933153 (containsKey!2312 lt!1769825 key!4968))))

(declare-fun b!4614626 () Bool)

(declare-fun e!2878421 () Bool)

(assert (=> b!4614626 (= e!2878428 (not e!2878421))))

(declare-fun res!1933164 () Bool)

(assert (=> b!4614626 (=> res!1933164 e!2878421)))

(get-info :version)

(assert (=> b!4614626 (= res!1933164 (or (not ((_ is Cons!51353) oldBucket!40)) (not (= (_1!29389 (h!57361 oldBucket!40)) key!4968))))))

(declare-fun e!2878423 () Bool)

(assert (=> b!4614626 e!2878423))

(declare-fun res!1933159 () Bool)

(assert (=> b!4614626 (=> (not res!1933159) (not e!2878423))))

(declare-fun lt!1769827 () ListMap!4141)

(declare-fun addToMapMapFromBucket!897 (List!51477 ListMap!4141) ListMap!4141)

(assert (=> b!4614626 (= res!1933159 (= lt!1769819 (addToMapMapFromBucket!897 oldBucket!40 lt!1769827)))))

(assert (=> b!4614626 (= lt!1769827 (extractMap!1492 Nil!51354))))

(assert (=> b!4614626 true))

(declare-fun b!4614627 () Bool)

(declare-fun e!2878427 () Bool)

(assert (=> b!4614627 (= e!2878426 e!2878427)))

(declare-fun res!1933167 () Bool)

(assert (=> b!4614627 (=> res!1933167 e!2878427)))

(declare-fun lt!1769820 () ListMap!4141)

(assert (=> b!4614627 (= res!1933167 (contains!14318 lt!1769820 key!4968))))

(assert (=> b!4614627 (not (contains!14318 lt!1769830 key!4968))))

(declare-datatypes ((Unit!109882 0))(
  ( (Unit!109883) )
))
(declare-fun lt!1769821 () Unit!109882)

(declare-datatypes ((ListLongMap!3427 0))(
  ( (ListLongMap!3428 (toList!4838 List!51478)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!350 (ListLongMap!3427 K!12740 Hashable!5833) Unit!109882)

(assert (=> b!4614627 (= lt!1769821 (lemmaNotInItsHashBucketThenNotInMap!350 (ListLongMap!3428 lt!1769824) key!4968 hashF!1389))))

(declare-fun b!4614628 () Bool)

(declare-fun e!2878429 () Bool)

(assert (=> b!4614628 (= e!2878424 e!2878429)))

(declare-fun res!1933157 () Bool)

(assert (=> b!4614628 (=> res!1933157 e!2878429)))

(assert (=> b!4614628 (= res!1933157 (not (= lt!1769820 (addToMapMapFromBucket!897 newBucket!224 (ListMap!4142 Nil!51353)))))))

(assert (=> b!4614628 (= lt!1769820 (addToMapMapFromBucket!897 lt!1769825 (ListMap!4142 Nil!51353)))))

(declare-fun b!4614629 () Bool)

(declare-fun res!1933160 () Bool)

(assert (=> b!4614629 (=> res!1933160 e!2878426)))

(assert (=> b!4614629 (= res!1933160 (not (= lt!1769820 lt!1769830)))))

(declare-fun b!4614630 () Bool)

(assert (=> b!4614630 (= e!2878429 e!2878426)))

(declare-fun res!1933152 () Bool)

(assert (=> b!4614630 (=> res!1933152 e!2878426)))

(assert (=> b!4614630 (= res!1933152 (not (eq!779 lt!1769829 lt!1769828)))))

(assert (=> b!4614630 (= lt!1769828 (addToMapMapFromBucket!897 oldBucket!40 (ListMap!4142 Nil!51353)))))

(declare-fun +!1821 (ListMap!4141 tuple2!52190) ListMap!4141)

(assert (=> b!4614630 (= lt!1769829 (+!1821 lt!1769820 (h!57361 oldBucket!40)))))

(declare-fun lt!1769831 () tuple2!52190)

(assert (=> b!4614630 (eq!779 (addToMapMapFromBucket!897 (Cons!51353 lt!1769831 lt!1769825) (ListMap!4142 Nil!51353)) (+!1821 lt!1769820 lt!1769831))))

(declare-fun lt!1769826 () Unit!109882)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!30 (tuple2!52190 List!51477 ListMap!4141) Unit!109882)

(assert (=> b!4614630 (= lt!1769826 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!30 lt!1769831 lt!1769825 (ListMap!4142 Nil!51353)))))

(declare-fun head!9596 (List!51477) tuple2!52190)

(assert (=> b!4614630 (= lt!1769831 (head!9596 oldBucket!40))))

(declare-fun b!4614631 () Bool)

(assert (=> b!4614631 (= e!2878427 e!2878425)))

(declare-fun res!1933169 () Bool)

(assert (=> b!4614631 (=> res!1933169 e!2878425)))

(declare-fun -!526 (ListMap!4141 K!12740) ListMap!4141)

(assert (=> b!4614631 (= res!1933169 (not (= (-!526 lt!1769829 key!4968) lt!1769820)))))

(assert (=> b!4614631 (= (-!526 (+!1821 lt!1769820 (tuple2!52191 key!4968 (_2!29389 (h!57361 oldBucket!40)))) key!4968) lt!1769820)))

(declare-fun lt!1769822 () Unit!109882)

(declare-fun addThenRemoveForNewKeyIsSame!9 (ListMap!4141 K!12740 V!12986) Unit!109882)

(assert (=> b!4614631 (= lt!1769822 (addThenRemoveForNewKeyIsSame!9 lt!1769820 key!4968 (_2!29389 (h!57361 oldBucket!40))))))

(declare-fun b!4614632 () Bool)

(assert (=> b!4614632 (= e!2878423 (= lt!1769827 (ListMap!4142 Nil!51353)))))

(declare-fun b!4614633 () Bool)

(assert (=> b!4614633 (= e!2878421 e!2878431)))

(declare-fun res!1933155 () Bool)

(assert (=> b!4614633 (=> res!1933155 e!2878431)))

(assert (=> b!4614633 (= res!1933155 (not (= lt!1769825 newBucket!224)))))

(declare-fun tail!8083 (List!51477) List!51477)

(assert (=> b!4614633 (= lt!1769825 (tail!8083 oldBucket!40))))

(declare-fun b!4614634 () Bool)

(declare-fun res!1933166 () Bool)

(assert (=> b!4614634 (=> (not res!1933166) (not e!2878422))))

(declare-fun removePairForKey!1059 (List!51477 K!12740) List!51477)

(assert (=> b!4614634 (= res!1933166 (= (removePairForKey!1059 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4614635 () Bool)

(declare-fun res!1933156 () Bool)

(assert (=> b!4614635 (=> (not res!1933156) (not e!2878428))))

(declare-fun hash!3385 (Hashable!5833 K!12740) (_ BitVec 64))

(assert (=> b!4614635 (= res!1933156 (= (hash!3385 hashF!1389 key!4968) hash!414))))

(declare-fun b!4614636 () Bool)

(declare-fun lambda!189076 () Int)

(declare-fun forall!10732 (List!51478 Int) Bool)

(assert (=> b!4614636 (= e!2878425 (forall!10732 lt!1769823 lambda!189076))))

(assert (= (and start!461584 res!1933162) b!4614619))

(assert (= (and b!4614619 res!1933158) b!4614634))

(assert (= (and b!4614634 res!1933166) b!4614616))

(assert (= (and b!4614616 res!1933163) b!4614620))

(assert (= (and b!4614620 res!1933165) b!4614635))

(assert (= (and b!4614635 res!1933156) b!4614621))

(assert (= (and b!4614621 res!1933170) b!4614626))

(assert (= (and b!4614626 res!1933159) b!4614632))

(assert (= (and b!4614626 (not res!1933164)) b!4614633))

(assert (= (and b!4614633 (not res!1933155)) b!4614618))

(assert (= (and b!4614618 (not res!1933161)) b!4614628))

(assert (= (and b!4614628 (not res!1933157)) b!4614630))

(assert (= (and b!4614630 (not res!1933152)) b!4614625))

(assert (= (and b!4614625 (not res!1933153)) b!4614629))

(assert (= (and b!4614629 (not res!1933160)) b!4614627))

(assert (= (and b!4614627 (not res!1933167)) b!4614631))

(assert (= (and b!4614631 (not res!1933169)) b!4614623))

(assert (= (and b!4614623 (not res!1933154)) b!4614624))

(assert (= (and b!4614624 (not res!1933168)) b!4614636))

(assert (= (and start!461584 ((_ is Cons!51353) oldBucket!40)) b!4614622))

(assert (= (and start!461584 ((_ is Cons!51353) newBucket!224)) b!4614617))

(declare-fun m!5447061 () Bool)

(assert (=> b!4614631 m!5447061))

(declare-fun m!5447063 () Bool)

(assert (=> b!4614631 m!5447063))

(assert (=> b!4614631 m!5447063))

(declare-fun m!5447065 () Bool)

(assert (=> b!4614631 m!5447065))

(declare-fun m!5447067 () Bool)

(assert (=> b!4614631 m!5447067))

(declare-fun m!5447069 () Bool)

(assert (=> b!4614626 m!5447069))

(declare-fun m!5447071 () Bool)

(assert (=> b!4614626 m!5447071))

(declare-fun m!5447073 () Bool)

(assert (=> b!4614627 m!5447073))

(declare-fun m!5447075 () Bool)

(assert (=> b!4614627 m!5447075))

(declare-fun m!5447077 () Bool)

(assert (=> b!4614627 m!5447077))

(declare-fun m!5447079 () Bool)

(assert (=> start!461584 m!5447079))

(declare-fun m!5447081 () Bool)

(assert (=> b!4614618 m!5447081))

(declare-fun m!5447083 () Bool)

(assert (=> b!4614618 m!5447083))

(declare-fun m!5447085 () Bool)

(assert (=> b!4614624 m!5447085))

(declare-fun m!5447087 () Bool)

(assert (=> b!4614635 m!5447087))

(declare-fun m!5447089 () Bool)

(assert (=> b!4614625 m!5447089))

(declare-fun m!5447091 () Bool)

(assert (=> b!4614636 m!5447091))

(declare-fun m!5447093 () Bool)

(assert (=> b!4614633 m!5447093))

(declare-fun m!5447095 () Bool)

(assert (=> b!4614619 m!5447095))

(declare-fun m!5447097 () Bool)

(assert (=> b!4614634 m!5447097))

(declare-fun m!5447099 () Bool)

(assert (=> b!4614628 m!5447099))

(declare-fun m!5447101 () Bool)

(assert (=> b!4614628 m!5447101))

(declare-fun m!5447103 () Bool)

(assert (=> b!4614616 m!5447103))

(declare-fun m!5447105 () Bool)

(assert (=> b!4614621 m!5447105))

(declare-fun m!5447107 () Bool)

(assert (=> b!4614620 m!5447107))

(declare-fun m!5447109 () Bool)

(assert (=> b!4614620 m!5447109))

(declare-fun m!5447111 () Bool)

(assert (=> b!4614630 m!5447111))

(declare-fun m!5447113 () Bool)

(assert (=> b!4614630 m!5447113))

(declare-fun m!5447115 () Bool)

(assert (=> b!4614630 m!5447115))

(declare-fun m!5447117 () Bool)

(assert (=> b!4614630 m!5447117))

(declare-fun m!5447119 () Bool)

(assert (=> b!4614630 m!5447119))

(declare-fun m!5447121 () Bool)

(assert (=> b!4614630 m!5447121))

(assert (=> b!4614630 m!5447111))

(declare-fun m!5447123 () Bool)

(assert (=> b!4614630 m!5447123))

(assert (=> b!4614630 m!5447121))

(declare-fun m!5447125 () Bool)

(assert (=> b!4614630 m!5447125))

(check-sat (not start!461584) (not b!4614636) (not b!4614630) (not b!4614621) (not b!4614627) (not b!4614625) (not b!4614620) (not b!4614626) (not b!4614635) tp_is_empty!29039 (not b!4614628) (not b!4614619) (not b!4614634) (not b!4614622) (not b!4614633) (not b!4614631) (not b!4614624) (not b!4614617) (not b!4614618) (not b!4614616) tp_is_empty!29037)
(check-sat)
(get-model)

(declare-fun bs!1017223 () Bool)

(declare-fun d!1453550 () Bool)

(assert (= bs!1017223 (and d!1453550 b!4614636)))

(declare-fun lambda!189085 () Int)

(assert (=> bs!1017223 (= lambda!189085 lambda!189076)))

(declare-fun lt!1769871 () ListMap!4141)

(declare-fun invariantList!1163 (List!51477) Bool)

(assert (=> d!1453550 (invariantList!1163 (toList!4837 lt!1769871))))

(declare-fun e!2878463 () ListMap!4141)

(assert (=> d!1453550 (= lt!1769871 e!2878463)))

(declare-fun c!790089 () Bool)

(assert (=> d!1453550 (= c!790089 ((_ is Cons!51354) (Cons!51354 (tuple2!52193 hash!414 newBucket!224) Nil!51354)))))

(assert (=> d!1453550 (forall!10732 (Cons!51354 (tuple2!52193 hash!414 newBucket!224) Nil!51354) lambda!189085)))

(assert (=> d!1453550 (= (extractMap!1492 (Cons!51354 (tuple2!52193 hash!414 newBucket!224) Nil!51354)) lt!1769871)))

(declare-fun b!4614689 () Bool)

(assert (=> b!4614689 (= e!2878463 (addToMapMapFromBucket!897 (_2!29390 (h!57362 (Cons!51354 (tuple2!52193 hash!414 newBucket!224) Nil!51354))) (extractMap!1492 (t!358478 (Cons!51354 (tuple2!52193 hash!414 newBucket!224) Nil!51354)))))))

(declare-fun b!4614690 () Bool)

(assert (=> b!4614690 (= e!2878463 (ListMap!4142 Nil!51353))))

(assert (= (and d!1453550 c!790089) b!4614689))

(assert (= (and d!1453550 (not c!790089)) b!4614690))

(declare-fun m!5447181 () Bool)

(assert (=> d!1453550 m!5447181))

(declare-fun m!5447183 () Bool)

(assert (=> d!1453550 m!5447183))

(declare-fun m!5447185 () Bool)

(assert (=> b!4614689 m!5447185))

(assert (=> b!4614689 m!5447185))

(declare-fun m!5447187 () Bool)

(assert (=> b!4614689 m!5447187))

(assert (=> b!4614618 d!1453550))

(declare-fun bs!1017224 () Bool)

(declare-fun d!1453562 () Bool)

(assert (= bs!1017224 (and d!1453562 b!4614636)))

(declare-fun lambda!189086 () Int)

(assert (=> bs!1017224 (= lambda!189086 lambda!189076)))

(declare-fun bs!1017225 () Bool)

(assert (= bs!1017225 (and d!1453562 d!1453550)))

(assert (=> bs!1017225 (= lambda!189086 lambda!189085)))

(declare-fun lt!1769873 () ListMap!4141)

(assert (=> d!1453562 (invariantList!1163 (toList!4837 lt!1769873))))

(declare-fun e!2878472 () ListMap!4141)

(assert (=> d!1453562 (= lt!1769873 e!2878472)))

(declare-fun c!790092 () Bool)

(assert (=> d!1453562 (= c!790092 ((_ is Cons!51354) lt!1769824))))

(assert (=> d!1453562 (forall!10732 lt!1769824 lambda!189086)))

(assert (=> d!1453562 (= (extractMap!1492 lt!1769824) lt!1769873)))

(declare-fun b!4614701 () Bool)

(assert (=> b!4614701 (= e!2878472 (addToMapMapFromBucket!897 (_2!29390 (h!57362 lt!1769824)) (extractMap!1492 (t!358478 lt!1769824))))))

(declare-fun b!4614702 () Bool)

(assert (=> b!4614702 (= e!2878472 (ListMap!4142 Nil!51353))))

(assert (= (and d!1453562 c!790092) b!4614701))

(assert (= (and d!1453562 (not c!790092)) b!4614702))

(declare-fun m!5447193 () Bool)

(assert (=> d!1453562 m!5447193))

(declare-fun m!5447195 () Bool)

(assert (=> d!1453562 m!5447195))

(declare-fun m!5447197 () Bool)

(assert (=> b!4614701 m!5447197))

(assert (=> b!4614701 m!5447197))

(declare-fun m!5447199 () Bool)

(assert (=> b!4614701 m!5447199))

(assert (=> b!4614618 d!1453562))

(declare-fun b!4614721 () Bool)

(declare-fun e!2878485 () Unit!109882)

(declare-fun e!2878486 () Unit!109882)

(assert (=> b!4614721 (= e!2878485 e!2878486)))

(declare-fun c!790101 () Bool)

(declare-fun call!321686 () Bool)

(assert (=> b!4614721 (= c!790101 call!321686)))

(declare-fun b!4614722 () Bool)

(declare-fun Unit!109910 () Unit!109882)

(assert (=> b!4614722 (= e!2878486 Unit!109910)))

(declare-fun b!4614723 () Bool)

(declare-datatypes ((List!51480 0))(
  ( (Nil!51356) (Cons!51356 (h!57366 K!12740) (t!358482 List!51480)) )
))
(declare-fun e!2878489 () List!51480)

(declare-fun getKeysList!614 (List!51477) List!51480)

(assert (=> b!4614723 (= e!2878489 (getKeysList!614 (toList!4837 lt!1769820)))))

(declare-fun b!4614724 () Bool)

(declare-fun keys!18043 (ListMap!4141) List!51480)

(assert (=> b!4614724 (= e!2878489 (keys!18043 lt!1769820))))

(declare-fun b!4614726 () Bool)

(declare-fun e!2878487 () Bool)

(declare-fun contains!14320 (List!51480 K!12740) Bool)

(assert (=> b!4614726 (= e!2878487 (contains!14320 (keys!18043 lt!1769820) key!4968))))

(declare-fun bm!321681 () Bool)

(assert (=> bm!321681 (= call!321686 (contains!14320 e!2878489 key!4968))))

(declare-fun c!790099 () Bool)

(declare-fun c!790100 () Bool)

(assert (=> bm!321681 (= c!790099 c!790100)))

(declare-fun b!4614727 () Bool)

(declare-fun e!2878488 () Bool)

(assert (=> b!4614727 (= e!2878488 (not (contains!14320 (keys!18043 lt!1769820) key!4968)))))

(declare-fun b!4614728 () Bool)

(assert (=> b!4614728 false))

(declare-fun lt!1769892 () Unit!109882)

(declare-fun lt!1769896 () Unit!109882)

(assert (=> b!4614728 (= lt!1769892 lt!1769896)))

(declare-fun containsKey!2314 (List!51477 K!12740) Bool)

(assert (=> b!4614728 (containsKey!2314 (toList!4837 lt!1769820) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!613 (List!51477 K!12740) Unit!109882)

(assert (=> b!4614728 (= lt!1769896 (lemmaInGetKeysListThenContainsKey!613 (toList!4837 lt!1769820) key!4968))))

(declare-fun Unit!109911 () Unit!109882)

(assert (=> b!4614728 (= e!2878486 Unit!109911)))

(declare-fun b!4614729 () Bool)

(declare-fun lt!1769891 () Unit!109882)

(assert (=> b!4614729 (= e!2878485 lt!1769891)))

(declare-fun lt!1769893 () Unit!109882)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1282 (List!51477 K!12740) Unit!109882)

(assert (=> b!4614729 (= lt!1769893 (lemmaContainsKeyImpliesGetValueByKeyDefined!1282 (toList!4837 lt!1769820) key!4968))))

(declare-datatypes ((Option!11466 0))(
  ( (None!11465) (Some!11465 (v!45531 V!12986)) )
))
(declare-fun isDefined!8731 (Option!11466) Bool)

(declare-fun getValueByKey!1380 (List!51477 K!12740) Option!11466)

(assert (=> b!4614729 (isDefined!8731 (getValueByKey!1380 (toList!4837 lt!1769820) key!4968))))

(declare-fun lt!1769897 () Unit!109882)

(assert (=> b!4614729 (= lt!1769897 lt!1769893)))

(declare-fun lemmaInListThenGetKeysListContains!609 (List!51477 K!12740) Unit!109882)

(assert (=> b!4614729 (= lt!1769891 (lemmaInListThenGetKeysListContains!609 (toList!4837 lt!1769820) key!4968))))

(assert (=> b!4614729 call!321686))

(declare-fun b!4614725 () Bool)

(declare-fun e!2878490 () Bool)

(assert (=> b!4614725 (= e!2878490 e!2878487)))

(declare-fun res!1933196 () Bool)

(assert (=> b!4614725 (=> (not res!1933196) (not e!2878487))))

(assert (=> b!4614725 (= res!1933196 (isDefined!8731 (getValueByKey!1380 (toList!4837 lt!1769820) key!4968)))))

(declare-fun d!1453568 () Bool)

(assert (=> d!1453568 e!2878490))

(declare-fun res!1933195 () Bool)

(assert (=> d!1453568 (=> res!1933195 e!2878490)))

(assert (=> d!1453568 (= res!1933195 e!2878488)))

(declare-fun res!1933197 () Bool)

(assert (=> d!1453568 (=> (not res!1933197) (not e!2878488))))

(declare-fun lt!1769894 () Bool)

(assert (=> d!1453568 (= res!1933197 (not lt!1769894))))

(declare-fun lt!1769890 () Bool)

(assert (=> d!1453568 (= lt!1769894 lt!1769890)))

(declare-fun lt!1769895 () Unit!109882)

(assert (=> d!1453568 (= lt!1769895 e!2878485)))

(assert (=> d!1453568 (= c!790100 lt!1769890)))

(assert (=> d!1453568 (= lt!1769890 (containsKey!2314 (toList!4837 lt!1769820) key!4968))))

(assert (=> d!1453568 (= (contains!14318 lt!1769820 key!4968) lt!1769894)))

(assert (= (and d!1453568 c!790100) b!4614729))

(assert (= (and d!1453568 (not c!790100)) b!4614721))

(assert (= (and b!4614721 c!790101) b!4614728))

(assert (= (and b!4614721 (not c!790101)) b!4614722))

(assert (= (or b!4614729 b!4614721) bm!321681))

(assert (= (and bm!321681 c!790099) b!4614723))

(assert (= (and bm!321681 (not c!790099)) b!4614724))

(assert (= (and d!1453568 res!1933197) b!4614727))

(assert (= (and d!1453568 (not res!1933195)) b!4614725))

(assert (= (and b!4614725 res!1933196) b!4614726))

(declare-fun m!5447201 () Bool)

(assert (=> bm!321681 m!5447201))

(declare-fun m!5447203 () Bool)

(assert (=> b!4614727 m!5447203))

(assert (=> b!4614727 m!5447203))

(declare-fun m!5447205 () Bool)

(assert (=> b!4614727 m!5447205))

(assert (=> b!4614724 m!5447203))

(declare-fun m!5447207 () Bool)

(assert (=> b!4614725 m!5447207))

(assert (=> b!4614725 m!5447207))

(declare-fun m!5447209 () Bool)

(assert (=> b!4614725 m!5447209))

(declare-fun m!5447211 () Bool)

(assert (=> b!4614728 m!5447211))

(declare-fun m!5447213 () Bool)

(assert (=> b!4614728 m!5447213))

(assert (=> d!1453568 m!5447211))

(declare-fun m!5447215 () Bool)

(assert (=> b!4614729 m!5447215))

(assert (=> b!4614729 m!5447207))

(assert (=> b!4614729 m!5447207))

(assert (=> b!4614729 m!5447209))

(declare-fun m!5447217 () Bool)

(assert (=> b!4614729 m!5447217))

(declare-fun m!5447219 () Bool)

(assert (=> b!4614723 m!5447219))

(assert (=> b!4614726 m!5447203))

(assert (=> b!4614726 m!5447203))

(assert (=> b!4614726 m!5447205))

(assert (=> b!4614627 d!1453568))

(declare-fun b!4614730 () Bool)

(declare-fun e!2878491 () Unit!109882)

(declare-fun e!2878492 () Unit!109882)

(assert (=> b!4614730 (= e!2878491 e!2878492)))

(declare-fun c!790104 () Bool)

(declare-fun call!321687 () Bool)

(assert (=> b!4614730 (= c!790104 call!321687)))

(declare-fun b!4614731 () Bool)

(declare-fun Unit!109912 () Unit!109882)

(assert (=> b!4614731 (= e!2878492 Unit!109912)))

(declare-fun b!4614732 () Bool)

(declare-fun e!2878495 () List!51480)

(assert (=> b!4614732 (= e!2878495 (getKeysList!614 (toList!4837 lt!1769830)))))

(declare-fun b!4614733 () Bool)

(assert (=> b!4614733 (= e!2878495 (keys!18043 lt!1769830))))

(declare-fun b!4614735 () Bool)

(declare-fun e!2878493 () Bool)

(assert (=> b!4614735 (= e!2878493 (contains!14320 (keys!18043 lt!1769830) key!4968))))

(declare-fun bm!321682 () Bool)

(assert (=> bm!321682 (= call!321687 (contains!14320 e!2878495 key!4968))))

(declare-fun c!790102 () Bool)

(declare-fun c!790103 () Bool)

(assert (=> bm!321682 (= c!790102 c!790103)))

(declare-fun b!4614736 () Bool)

(declare-fun e!2878494 () Bool)

(assert (=> b!4614736 (= e!2878494 (not (contains!14320 (keys!18043 lt!1769830) key!4968)))))

(declare-fun b!4614737 () Bool)

(assert (=> b!4614737 false))

(declare-fun lt!1769900 () Unit!109882)

(declare-fun lt!1769904 () Unit!109882)

(assert (=> b!4614737 (= lt!1769900 lt!1769904)))

(assert (=> b!4614737 (containsKey!2314 (toList!4837 lt!1769830) key!4968)))

(assert (=> b!4614737 (= lt!1769904 (lemmaInGetKeysListThenContainsKey!613 (toList!4837 lt!1769830) key!4968))))

(declare-fun Unit!109914 () Unit!109882)

(assert (=> b!4614737 (= e!2878492 Unit!109914)))

(declare-fun b!4614738 () Bool)

(declare-fun lt!1769899 () Unit!109882)

(assert (=> b!4614738 (= e!2878491 lt!1769899)))

(declare-fun lt!1769901 () Unit!109882)

(assert (=> b!4614738 (= lt!1769901 (lemmaContainsKeyImpliesGetValueByKeyDefined!1282 (toList!4837 lt!1769830) key!4968))))

(assert (=> b!4614738 (isDefined!8731 (getValueByKey!1380 (toList!4837 lt!1769830) key!4968))))

(declare-fun lt!1769905 () Unit!109882)

(assert (=> b!4614738 (= lt!1769905 lt!1769901)))

(assert (=> b!4614738 (= lt!1769899 (lemmaInListThenGetKeysListContains!609 (toList!4837 lt!1769830) key!4968))))

(assert (=> b!4614738 call!321687))

(declare-fun b!4614734 () Bool)

(declare-fun e!2878496 () Bool)

(assert (=> b!4614734 (= e!2878496 e!2878493)))

(declare-fun res!1933199 () Bool)

(assert (=> b!4614734 (=> (not res!1933199) (not e!2878493))))

(assert (=> b!4614734 (= res!1933199 (isDefined!8731 (getValueByKey!1380 (toList!4837 lt!1769830) key!4968)))))

(declare-fun d!1453570 () Bool)

(assert (=> d!1453570 e!2878496))

(declare-fun res!1933198 () Bool)

(assert (=> d!1453570 (=> res!1933198 e!2878496)))

(assert (=> d!1453570 (= res!1933198 e!2878494)))

(declare-fun res!1933200 () Bool)

(assert (=> d!1453570 (=> (not res!1933200) (not e!2878494))))

(declare-fun lt!1769902 () Bool)

(assert (=> d!1453570 (= res!1933200 (not lt!1769902))))

(declare-fun lt!1769898 () Bool)

(assert (=> d!1453570 (= lt!1769902 lt!1769898)))

(declare-fun lt!1769903 () Unit!109882)

(assert (=> d!1453570 (= lt!1769903 e!2878491)))

(assert (=> d!1453570 (= c!790103 lt!1769898)))

(assert (=> d!1453570 (= lt!1769898 (containsKey!2314 (toList!4837 lt!1769830) key!4968))))

(assert (=> d!1453570 (= (contains!14318 lt!1769830 key!4968) lt!1769902)))

(assert (= (and d!1453570 c!790103) b!4614738))

(assert (= (and d!1453570 (not c!790103)) b!4614730))

(assert (= (and b!4614730 c!790104) b!4614737))

(assert (= (and b!4614730 (not c!790104)) b!4614731))

(assert (= (or b!4614738 b!4614730) bm!321682))

(assert (= (and bm!321682 c!790102) b!4614732))

(assert (= (and bm!321682 (not c!790102)) b!4614733))

(assert (= (and d!1453570 res!1933200) b!4614736))

(assert (= (and d!1453570 (not res!1933198)) b!4614734))

(assert (= (and b!4614734 res!1933199) b!4614735))

(declare-fun m!5447221 () Bool)

(assert (=> bm!321682 m!5447221))

(declare-fun m!5447223 () Bool)

(assert (=> b!4614736 m!5447223))

(assert (=> b!4614736 m!5447223))

(declare-fun m!5447225 () Bool)

(assert (=> b!4614736 m!5447225))

(assert (=> b!4614733 m!5447223))

(declare-fun m!5447227 () Bool)

(assert (=> b!4614734 m!5447227))

(assert (=> b!4614734 m!5447227))

(declare-fun m!5447229 () Bool)

(assert (=> b!4614734 m!5447229))

(declare-fun m!5447231 () Bool)

(assert (=> b!4614737 m!5447231))

(declare-fun m!5447233 () Bool)

(assert (=> b!4614737 m!5447233))

(assert (=> d!1453570 m!5447231))

(declare-fun m!5447235 () Bool)

(assert (=> b!4614738 m!5447235))

(assert (=> b!4614738 m!5447227))

(assert (=> b!4614738 m!5447227))

(assert (=> b!4614738 m!5447229))

(declare-fun m!5447237 () Bool)

(assert (=> b!4614738 m!5447237))

(declare-fun m!5447239 () Bool)

(assert (=> b!4614732 m!5447239))

(assert (=> b!4614735 m!5447223))

(assert (=> b!4614735 m!5447223))

(assert (=> b!4614735 m!5447225))

(assert (=> b!4614627 d!1453570))

(declare-fun bs!1017226 () Bool)

(declare-fun d!1453572 () Bool)

(assert (= bs!1017226 (and d!1453572 b!4614636)))

(declare-fun lambda!189089 () Int)

(assert (=> bs!1017226 (= lambda!189089 lambda!189076)))

(declare-fun bs!1017227 () Bool)

(assert (= bs!1017227 (and d!1453572 d!1453550)))

(assert (=> bs!1017227 (= lambda!189089 lambda!189085)))

(declare-fun bs!1017228 () Bool)

(assert (= bs!1017228 (and d!1453572 d!1453562)))

(assert (=> bs!1017228 (= lambda!189089 lambda!189086)))

(assert (=> d!1453572 (not (contains!14318 (extractMap!1492 (toList!4838 (ListLongMap!3428 lt!1769824))) key!4968))))

(declare-fun lt!1769908 () Unit!109882)

(declare-fun choose!31064 (ListLongMap!3427 K!12740 Hashable!5833) Unit!109882)

(assert (=> d!1453572 (= lt!1769908 (choose!31064 (ListLongMap!3428 lt!1769824) key!4968 hashF!1389))))

(assert (=> d!1453572 (forall!10732 (toList!4838 (ListLongMap!3428 lt!1769824)) lambda!189089)))

(assert (=> d!1453572 (= (lemmaNotInItsHashBucketThenNotInMap!350 (ListLongMap!3428 lt!1769824) key!4968 hashF!1389) lt!1769908)))

(declare-fun bs!1017229 () Bool)

(assert (= bs!1017229 d!1453572))

(declare-fun m!5447241 () Bool)

(assert (=> bs!1017229 m!5447241))

(assert (=> bs!1017229 m!5447241))

(declare-fun m!5447243 () Bool)

(assert (=> bs!1017229 m!5447243))

(declare-fun m!5447245 () Bool)

(assert (=> bs!1017229 m!5447245))

(declare-fun m!5447247 () Bool)

(assert (=> bs!1017229 m!5447247))

(assert (=> b!4614627 d!1453572))

(declare-fun b!4614832 () Bool)

(assert (=> b!4614832 true))

(declare-fun bs!1017377 () Bool)

(declare-fun b!4614834 () Bool)

(assert (= bs!1017377 (and b!4614834 b!4614832)))

(declare-fun lambda!189172 () Int)

(declare-fun lambda!189171 () Int)

(assert (=> bs!1017377 (= lambda!189172 lambda!189171)))

(assert (=> b!4614834 true))

(declare-fun lt!1770145 () ListMap!4141)

(declare-fun lambda!189173 () Int)

(assert (=> bs!1017377 (= (= lt!1770145 (ListMap!4142 Nil!51353)) (= lambda!189173 lambda!189171))))

(assert (=> b!4614834 (= (= lt!1770145 (ListMap!4142 Nil!51353)) (= lambda!189173 lambda!189172))))

(assert (=> b!4614834 true))

(declare-fun bs!1017378 () Bool)

(declare-fun d!1453574 () Bool)

(assert (= bs!1017378 (and d!1453574 b!4614832)))

(declare-fun lt!1770150 () ListMap!4141)

(declare-fun lambda!189174 () Int)

(assert (=> bs!1017378 (= (= lt!1770150 (ListMap!4142 Nil!51353)) (= lambda!189174 lambda!189171))))

(declare-fun bs!1017380 () Bool)

(assert (= bs!1017380 (and d!1453574 b!4614834)))

(assert (=> bs!1017380 (= (= lt!1770150 (ListMap!4142 Nil!51353)) (= lambda!189174 lambda!189172))))

(assert (=> bs!1017380 (= (= lt!1770150 lt!1770145) (= lambda!189174 lambda!189173))))

(assert (=> d!1453574 true))

(declare-fun c!790121 () Bool)

(declare-fun call!321718 () Bool)

(declare-fun bm!321711 () Bool)

(declare-fun forall!10734 (List!51477 Int) Bool)

(assert (=> bm!321711 (= call!321718 (forall!10734 (ite c!790121 (toList!4837 (ListMap!4142 Nil!51353)) (t!358477 newBucket!224)) (ite c!790121 lambda!189171 lambda!189173)))))

(declare-fun b!4614831 () Bool)

(declare-fun res!1933260 () Bool)

(declare-fun e!2878557 () Bool)

(assert (=> b!4614831 (=> (not res!1933260) (not e!2878557))))

(assert (=> b!4614831 (= res!1933260 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) lambda!189174))))

(declare-fun e!2878558 () ListMap!4141)

(assert (=> b!4614832 (= e!2878558 (ListMap!4142 Nil!51353))))

(declare-fun lt!1770155 () Unit!109882)

(declare-fun call!321717 () Unit!109882)

(assert (=> b!4614832 (= lt!1770155 call!321717)))

(assert (=> b!4614832 call!321718))

(declare-fun lt!1770148 () Unit!109882)

(assert (=> b!4614832 (= lt!1770148 lt!1770155)))

(declare-fun call!321716 () Bool)

(assert (=> b!4614832 call!321716))

(declare-fun lt!1770151 () Unit!109882)

(declare-fun Unit!109916 () Unit!109882)

(assert (=> b!4614832 (= lt!1770151 Unit!109916)))

(declare-fun b!4614833 () Bool)

(assert (=> b!4614833 (= e!2878557 (invariantList!1163 (toList!4837 lt!1770150)))))

(declare-fun bm!321713 () Bool)

(assert (=> bm!321713 (= call!321716 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) (ite c!790121 lambda!189171 lambda!189173)))))

(assert (=> b!4614834 (= e!2878558 lt!1770145)))

(declare-fun lt!1770153 () ListMap!4141)

(assert (=> b!4614834 (= lt!1770153 (+!1821 (ListMap!4142 Nil!51353) (h!57361 newBucket!224)))))

(assert (=> b!4614834 (= lt!1770145 (addToMapMapFromBucket!897 (t!358477 newBucket!224) (+!1821 (ListMap!4142 Nil!51353) (h!57361 newBucket!224))))))

(declare-fun lt!1770156 () Unit!109882)

(assert (=> b!4614834 (= lt!1770156 call!321717)))

(assert (=> b!4614834 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) lambda!189172)))

(declare-fun lt!1770147 () Unit!109882)

(assert (=> b!4614834 (= lt!1770147 lt!1770156)))

(assert (=> b!4614834 (forall!10734 (toList!4837 lt!1770153) lambda!189173)))

(declare-fun lt!1770144 () Unit!109882)

(declare-fun Unit!109917 () Unit!109882)

(assert (=> b!4614834 (= lt!1770144 Unit!109917)))

(assert (=> b!4614834 call!321718))

(declare-fun lt!1770149 () Unit!109882)

(declare-fun Unit!109918 () Unit!109882)

(assert (=> b!4614834 (= lt!1770149 Unit!109918)))

(declare-fun lt!1770146 () Unit!109882)

(declare-fun Unit!109919 () Unit!109882)

(assert (=> b!4614834 (= lt!1770146 Unit!109919)))

(declare-fun lt!1770140 () Unit!109882)

(declare-fun forallContained!2957 (List!51477 Int tuple2!52190) Unit!109882)

(assert (=> b!4614834 (= lt!1770140 (forallContained!2957 (toList!4837 lt!1770153) lambda!189173 (h!57361 newBucket!224)))))

(assert (=> b!4614834 (contains!14318 lt!1770153 (_1!29389 (h!57361 newBucket!224)))))

(declare-fun lt!1770141 () Unit!109882)

(declare-fun Unit!109920 () Unit!109882)

(assert (=> b!4614834 (= lt!1770141 Unit!109920)))

(assert (=> b!4614834 (contains!14318 lt!1770145 (_1!29389 (h!57361 newBucket!224)))))

(declare-fun lt!1770157 () Unit!109882)

(declare-fun Unit!109921 () Unit!109882)

(assert (=> b!4614834 (= lt!1770157 Unit!109921)))

(assert (=> b!4614834 (forall!10734 newBucket!224 lambda!189173)))

(declare-fun lt!1770143 () Unit!109882)

(declare-fun Unit!109922 () Unit!109882)

(assert (=> b!4614834 (= lt!1770143 Unit!109922)))

(assert (=> b!4614834 (forall!10734 (toList!4837 lt!1770153) lambda!189173)))

(declare-fun lt!1770142 () Unit!109882)

(declare-fun Unit!109923 () Unit!109882)

(assert (=> b!4614834 (= lt!1770142 Unit!109923)))

(declare-fun lt!1770152 () Unit!109882)

(declare-fun Unit!109924 () Unit!109882)

(assert (=> b!4614834 (= lt!1770152 Unit!109924)))

(declare-fun lt!1770137 () Unit!109882)

(declare-fun addForallContainsKeyThenBeforeAdding!464 (ListMap!4141 ListMap!4141 K!12740 V!12986) Unit!109882)

(assert (=> b!4614834 (= lt!1770137 (addForallContainsKeyThenBeforeAdding!464 (ListMap!4142 Nil!51353) lt!1770145 (_1!29389 (h!57361 newBucket!224)) (_2!29389 (h!57361 newBucket!224))))))

(assert (=> b!4614834 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) lambda!189173)))

(declare-fun lt!1770154 () Unit!109882)

(assert (=> b!4614834 (= lt!1770154 lt!1770137)))

(assert (=> b!4614834 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) lambda!189173)))

(declare-fun lt!1770138 () Unit!109882)

(declare-fun Unit!109925 () Unit!109882)

(assert (=> b!4614834 (= lt!1770138 Unit!109925)))

(declare-fun res!1933261 () Bool)

(assert (=> b!4614834 (= res!1933261 (forall!10734 newBucket!224 lambda!189173))))

(declare-fun e!2878559 () Bool)

(assert (=> b!4614834 (=> (not res!1933261) (not e!2878559))))

(assert (=> b!4614834 e!2878559))

(declare-fun lt!1770139 () Unit!109882)

(declare-fun Unit!109926 () Unit!109882)

(assert (=> b!4614834 (= lt!1770139 Unit!109926)))

(declare-fun b!4614835 () Bool)

(assert (=> b!4614835 (= e!2878559 call!321716)))

(assert (=> d!1453574 e!2878557))

(declare-fun res!1933259 () Bool)

(assert (=> d!1453574 (=> (not res!1933259) (not e!2878557))))

(assert (=> d!1453574 (= res!1933259 (forall!10734 newBucket!224 lambda!189174))))

(assert (=> d!1453574 (= lt!1770150 e!2878558)))

(assert (=> d!1453574 (= c!790121 ((_ is Nil!51353) newBucket!224))))

(assert (=> d!1453574 (noDuplicateKeys!1436 newBucket!224)))

(assert (=> d!1453574 (= (addToMapMapFromBucket!897 newBucket!224 (ListMap!4142 Nil!51353)) lt!1770150)))

(declare-fun bm!321712 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!465 (ListMap!4141) Unit!109882)

(assert (=> bm!321712 (= call!321717 (lemmaContainsAllItsOwnKeys!465 (ListMap!4142 Nil!51353)))))

(assert (= (and d!1453574 c!790121) b!4614832))

(assert (= (and d!1453574 (not c!790121)) b!4614834))

(assert (= (and b!4614834 res!1933261) b!4614835))

(assert (= (or b!4614832 b!4614834) bm!321712))

(assert (= (or b!4614832 b!4614835) bm!321713))

(assert (= (or b!4614832 b!4614834) bm!321711))

(assert (= (and d!1453574 res!1933259) b!4614831))

(assert (= (and b!4614831 res!1933260) b!4614833))

(declare-fun m!5447545 () Bool)

(assert (=> bm!321712 m!5447545))

(declare-fun m!5447547 () Bool)

(assert (=> d!1453574 m!5447547))

(assert (=> d!1453574 m!5447095))

(declare-fun m!5447549 () Bool)

(assert (=> b!4614833 m!5447549))

(declare-fun m!5447551 () Bool)

(assert (=> b!4614831 m!5447551))

(declare-fun m!5447553 () Bool)

(assert (=> bm!321713 m!5447553))

(declare-fun m!5447555 () Bool)

(assert (=> bm!321711 m!5447555))

(declare-fun m!5447557 () Bool)

(assert (=> b!4614834 m!5447557))

(declare-fun m!5447559 () Bool)

(assert (=> b!4614834 m!5447559))

(declare-fun m!5447561 () Bool)

(assert (=> b!4614834 m!5447561))

(declare-fun m!5447563 () Bool)

(assert (=> b!4614834 m!5447563))

(declare-fun m!5447565 () Bool)

(assert (=> b!4614834 m!5447565))

(assert (=> b!4614834 m!5447563))

(declare-fun m!5447567 () Bool)

(assert (=> b!4614834 m!5447567))

(declare-fun m!5447569 () Bool)

(assert (=> b!4614834 m!5447569))

(assert (=> b!4614834 m!5447565))

(declare-fun m!5447571 () Bool)

(assert (=> b!4614834 m!5447571))

(declare-fun m!5447573 () Bool)

(assert (=> b!4614834 m!5447573))

(assert (=> b!4614834 m!5447557))

(declare-fun m!5447577 () Bool)

(assert (=> b!4614834 m!5447577))

(assert (=> b!4614834 m!5447569))

(assert (=> b!4614628 d!1453574))

(declare-fun bs!1017390 () Bool)

(declare-fun b!4614847 () Bool)

(assert (= bs!1017390 (and b!4614847 b!4614832)))

(declare-fun lambda!189177 () Int)

(assert (=> bs!1017390 (= lambda!189177 lambda!189171)))

(declare-fun bs!1017391 () Bool)

(assert (= bs!1017391 (and b!4614847 b!4614834)))

(assert (=> bs!1017391 (= lambda!189177 lambda!189172)))

(assert (=> bs!1017391 (= (= (ListMap!4142 Nil!51353) lt!1770145) (= lambda!189177 lambda!189173))))

(declare-fun bs!1017392 () Bool)

(assert (= bs!1017392 (and b!4614847 d!1453574)))

(assert (=> bs!1017392 (= (= (ListMap!4142 Nil!51353) lt!1770150) (= lambda!189177 lambda!189174))))

(assert (=> b!4614847 true))

(declare-fun bs!1017394 () Bool)

(declare-fun b!4614849 () Bool)

(assert (= bs!1017394 (and b!4614849 d!1453574)))

(declare-fun lambda!189178 () Int)

(assert (=> bs!1017394 (= (= (ListMap!4142 Nil!51353) lt!1770150) (= lambda!189178 lambda!189174))))

(declare-fun bs!1017395 () Bool)

(assert (= bs!1017395 (and b!4614849 b!4614834)))

(assert (=> bs!1017395 (= lambda!189178 lambda!189172)))

(assert (=> bs!1017395 (= (= (ListMap!4142 Nil!51353) lt!1770145) (= lambda!189178 lambda!189173))))

(declare-fun bs!1017396 () Bool)

(assert (= bs!1017396 (and b!4614849 b!4614847)))

(assert (=> bs!1017396 (= lambda!189178 lambda!189177)))

(declare-fun bs!1017397 () Bool)

(assert (= bs!1017397 (and b!4614849 b!4614832)))

(assert (=> bs!1017397 (= lambda!189178 lambda!189171)))

(assert (=> b!4614849 true))

(declare-fun lt!1770171 () ListMap!4141)

(declare-fun lambda!189179 () Int)

(assert (=> b!4614849 (= (= lt!1770171 (ListMap!4142 Nil!51353)) (= lambda!189179 lambda!189178))))

(assert (=> bs!1017394 (= (= lt!1770171 lt!1770150) (= lambda!189179 lambda!189174))))

(assert (=> bs!1017395 (= (= lt!1770171 (ListMap!4142 Nil!51353)) (= lambda!189179 lambda!189172))))

(assert (=> bs!1017395 (= (= lt!1770171 lt!1770145) (= lambda!189179 lambda!189173))))

(assert (=> bs!1017396 (= (= lt!1770171 (ListMap!4142 Nil!51353)) (= lambda!189179 lambda!189177))))

(assert (=> bs!1017397 (= (= lt!1770171 (ListMap!4142 Nil!51353)) (= lambda!189179 lambda!189171))))

(assert (=> b!4614849 true))

(declare-fun bs!1017398 () Bool)

(declare-fun d!1453626 () Bool)

(assert (= bs!1017398 (and d!1453626 b!4614849)))

(declare-fun lt!1770176 () ListMap!4141)

(declare-fun lambda!189180 () Int)

(assert (=> bs!1017398 (= (= lt!1770176 (ListMap!4142 Nil!51353)) (= lambda!189180 lambda!189178))))

(declare-fun bs!1017399 () Bool)

(assert (= bs!1017399 (and d!1453626 d!1453574)))

(assert (=> bs!1017399 (= (= lt!1770176 lt!1770150) (= lambda!189180 lambda!189174))))

(declare-fun bs!1017400 () Bool)

(assert (= bs!1017400 (and d!1453626 b!4614834)))

(assert (=> bs!1017400 (= (= lt!1770176 (ListMap!4142 Nil!51353)) (= lambda!189180 lambda!189172))))

(assert (=> bs!1017400 (= (= lt!1770176 lt!1770145) (= lambda!189180 lambda!189173))))

(assert (=> bs!1017398 (= (= lt!1770176 lt!1770171) (= lambda!189180 lambda!189179))))

(declare-fun bs!1017401 () Bool)

(assert (= bs!1017401 (and d!1453626 b!4614847)))

(assert (=> bs!1017401 (= (= lt!1770176 (ListMap!4142 Nil!51353)) (= lambda!189180 lambda!189177))))

(declare-fun bs!1017402 () Bool)

(assert (= bs!1017402 (and d!1453626 b!4614832)))

(assert (=> bs!1017402 (= (= lt!1770176 (ListMap!4142 Nil!51353)) (= lambda!189180 lambda!189171))))

(assert (=> d!1453626 true))

(declare-fun call!321721 () Bool)

(declare-fun bm!321714 () Bool)

(declare-fun c!790124 () Bool)

(assert (=> bm!321714 (= call!321721 (forall!10734 (ite c!790124 (toList!4837 (ListMap!4142 Nil!51353)) (t!358477 lt!1769825)) (ite c!790124 lambda!189177 lambda!189179)))))

(declare-fun b!4614846 () Bool)

(declare-fun res!1933263 () Bool)

(declare-fun e!2878564 () Bool)

(assert (=> b!4614846 (=> (not res!1933263) (not e!2878564))))

(assert (=> b!4614846 (= res!1933263 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) lambda!189180))))

(declare-fun e!2878565 () ListMap!4141)

(assert (=> b!4614847 (= e!2878565 (ListMap!4142 Nil!51353))))

(declare-fun lt!1770181 () Unit!109882)

(declare-fun call!321720 () Unit!109882)

(assert (=> b!4614847 (= lt!1770181 call!321720)))

(assert (=> b!4614847 call!321721))

(declare-fun lt!1770174 () Unit!109882)

(assert (=> b!4614847 (= lt!1770174 lt!1770181)))

(declare-fun call!321719 () Bool)

(assert (=> b!4614847 call!321719))

(declare-fun lt!1770177 () Unit!109882)

(declare-fun Unit!109937 () Unit!109882)

(assert (=> b!4614847 (= lt!1770177 Unit!109937)))

(declare-fun b!4614848 () Bool)

(assert (=> b!4614848 (= e!2878564 (invariantList!1163 (toList!4837 lt!1770176)))))

(declare-fun bm!321716 () Bool)

(assert (=> bm!321716 (= call!321719 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) (ite c!790124 lambda!189177 lambda!189179)))))

(assert (=> b!4614849 (= e!2878565 lt!1770171)))

(declare-fun lt!1770179 () ListMap!4141)

(assert (=> b!4614849 (= lt!1770179 (+!1821 (ListMap!4142 Nil!51353) (h!57361 lt!1769825)))))

(assert (=> b!4614849 (= lt!1770171 (addToMapMapFromBucket!897 (t!358477 lt!1769825) (+!1821 (ListMap!4142 Nil!51353) (h!57361 lt!1769825))))))

(declare-fun lt!1770182 () Unit!109882)

(assert (=> b!4614849 (= lt!1770182 call!321720)))

(assert (=> b!4614849 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) lambda!189178)))

(declare-fun lt!1770173 () Unit!109882)

(assert (=> b!4614849 (= lt!1770173 lt!1770182)))

(assert (=> b!4614849 (forall!10734 (toList!4837 lt!1770179) lambda!189179)))

(declare-fun lt!1770170 () Unit!109882)

(declare-fun Unit!109939 () Unit!109882)

(assert (=> b!4614849 (= lt!1770170 Unit!109939)))

(assert (=> b!4614849 call!321721))

(declare-fun lt!1770175 () Unit!109882)

(declare-fun Unit!109940 () Unit!109882)

(assert (=> b!4614849 (= lt!1770175 Unit!109940)))

(declare-fun lt!1770172 () Unit!109882)

(declare-fun Unit!109941 () Unit!109882)

(assert (=> b!4614849 (= lt!1770172 Unit!109941)))

(declare-fun lt!1770166 () Unit!109882)

(assert (=> b!4614849 (= lt!1770166 (forallContained!2957 (toList!4837 lt!1770179) lambda!189179 (h!57361 lt!1769825)))))

(assert (=> b!4614849 (contains!14318 lt!1770179 (_1!29389 (h!57361 lt!1769825)))))

(declare-fun lt!1770167 () Unit!109882)

(declare-fun Unit!109942 () Unit!109882)

(assert (=> b!4614849 (= lt!1770167 Unit!109942)))

(assert (=> b!4614849 (contains!14318 lt!1770171 (_1!29389 (h!57361 lt!1769825)))))

(declare-fun lt!1770183 () Unit!109882)

(declare-fun Unit!109943 () Unit!109882)

(assert (=> b!4614849 (= lt!1770183 Unit!109943)))

(assert (=> b!4614849 (forall!10734 lt!1769825 lambda!189179)))

(declare-fun lt!1770169 () Unit!109882)

(declare-fun Unit!109944 () Unit!109882)

(assert (=> b!4614849 (= lt!1770169 Unit!109944)))

(assert (=> b!4614849 (forall!10734 (toList!4837 lt!1770179) lambda!189179)))

(declare-fun lt!1770168 () Unit!109882)

(declare-fun Unit!109945 () Unit!109882)

(assert (=> b!4614849 (= lt!1770168 Unit!109945)))

(declare-fun lt!1770178 () Unit!109882)

(declare-fun Unit!109946 () Unit!109882)

(assert (=> b!4614849 (= lt!1770178 Unit!109946)))

(declare-fun lt!1770163 () Unit!109882)

(assert (=> b!4614849 (= lt!1770163 (addForallContainsKeyThenBeforeAdding!464 (ListMap!4142 Nil!51353) lt!1770171 (_1!29389 (h!57361 lt!1769825)) (_2!29389 (h!57361 lt!1769825))))))

(assert (=> b!4614849 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) lambda!189179)))

(declare-fun lt!1770180 () Unit!109882)

(assert (=> b!4614849 (= lt!1770180 lt!1770163)))

(assert (=> b!4614849 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) lambda!189179)))

(declare-fun lt!1770164 () Unit!109882)

(declare-fun Unit!109947 () Unit!109882)

(assert (=> b!4614849 (= lt!1770164 Unit!109947)))

(declare-fun res!1933264 () Bool)

(assert (=> b!4614849 (= res!1933264 (forall!10734 lt!1769825 lambda!189179))))

(declare-fun e!2878566 () Bool)

(assert (=> b!4614849 (=> (not res!1933264) (not e!2878566))))

(assert (=> b!4614849 e!2878566))

(declare-fun lt!1770165 () Unit!109882)

(declare-fun Unit!109948 () Unit!109882)

(assert (=> b!4614849 (= lt!1770165 Unit!109948)))

(declare-fun b!4614850 () Bool)

(assert (=> b!4614850 (= e!2878566 call!321719)))

(assert (=> d!1453626 e!2878564))

(declare-fun res!1933262 () Bool)

(assert (=> d!1453626 (=> (not res!1933262) (not e!2878564))))

(assert (=> d!1453626 (= res!1933262 (forall!10734 lt!1769825 lambda!189180))))

(assert (=> d!1453626 (= lt!1770176 e!2878565)))

(assert (=> d!1453626 (= c!790124 ((_ is Nil!51353) lt!1769825))))

(assert (=> d!1453626 (noDuplicateKeys!1436 lt!1769825)))

(assert (=> d!1453626 (= (addToMapMapFromBucket!897 lt!1769825 (ListMap!4142 Nil!51353)) lt!1770176)))

(declare-fun bm!321715 () Bool)

(assert (=> bm!321715 (= call!321720 (lemmaContainsAllItsOwnKeys!465 (ListMap!4142 Nil!51353)))))

(assert (= (and d!1453626 c!790124) b!4614847))

(assert (= (and d!1453626 (not c!790124)) b!4614849))

(assert (= (and b!4614849 res!1933264) b!4614850))

(assert (= (or b!4614847 b!4614849) bm!321715))

(assert (= (or b!4614847 b!4614850) bm!321716))

(assert (= (or b!4614847 b!4614849) bm!321714))

(assert (= (and d!1453626 res!1933262) b!4614846))

(assert (= (and b!4614846 res!1933263) b!4614848))

(assert (=> bm!321715 m!5447545))

(declare-fun m!5447587 () Bool)

(assert (=> d!1453626 m!5447587))

(declare-fun m!5447589 () Bool)

(assert (=> d!1453626 m!5447589))

(declare-fun m!5447591 () Bool)

(assert (=> b!4614848 m!5447591))

(declare-fun m!5447593 () Bool)

(assert (=> b!4614846 m!5447593))

(declare-fun m!5447595 () Bool)

(assert (=> bm!321716 m!5447595))

(declare-fun m!5447597 () Bool)

(assert (=> bm!321714 m!5447597))

(declare-fun m!5447599 () Bool)

(assert (=> b!4614849 m!5447599))

(declare-fun m!5447601 () Bool)

(assert (=> b!4614849 m!5447601))

(declare-fun m!5447603 () Bool)

(assert (=> b!4614849 m!5447603))

(declare-fun m!5447605 () Bool)

(assert (=> b!4614849 m!5447605))

(declare-fun m!5447607 () Bool)

(assert (=> b!4614849 m!5447607))

(assert (=> b!4614849 m!5447605))

(declare-fun m!5447609 () Bool)

(assert (=> b!4614849 m!5447609))

(declare-fun m!5447611 () Bool)

(assert (=> b!4614849 m!5447611))

(assert (=> b!4614849 m!5447607))

(declare-fun m!5447613 () Bool)

(assert (=> b!4614849 m!5447613))

(declare-fun m!5447615 () Bool)

(assert (=> b!4614849 m!5447615))

(assert (=> b!4614849 m!5447599))

(declare-fun m!5447617 () Bool)

(assert (=> b!4614849 m!5447617))

(assert (=> b!4614849 m!5447611))

(assert (=> b!4614628 d!1453626))

(declare-fun d!1453630 () Bool)

(declare-fun e!2878571 () Bool)

(assert (=> d!1453630 e!2878571))

(declare-fun res!1933267 () Bool)

(assert (=> d!1453630 (=> (not res!1933267) (not e!2878571))))

(declare-fun lt!1770186 () ListMap!4141)

(assert (=> d!1453630 (= res!1933267 (not (contains!14318 lt!1770186 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!237 (List!51477 K!12740) List!51477)

(assert (=> d!1453630 (= lt!1770186 (ListMap!4142 (removePresrvNoDuplicatedKeys!237 (toList!4837 lt!1769829) key!4968)))))

(assert (=> d!1453630 (= (-!526 lt!1769829 key!4968) lt!1770186)))

(declare-fun b!4614855 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8719 (List!51480) (InoxSet K!12740))

(assert (=> b!4614855 (= e!2878571 (= ((_ map and) (content!8719 (keys!18043 lt!1769829)) ((_ map not) (store ((as const (Array K!12740 Bool)) false) key!4968 true))) (content!8719 (keys!18043 lt!1770186))))))

(assert (= (and d!1453630 res!1933267) b!4614855))

(declare-fun m!5447619 () Bool)

(assert (=> d!1453630 m!5447619))

(declare-fun m!5447621 () Bool)

(assert (=> d!1453630 m!5447621))

(declare-fun m!5447623 () Bool)

(assert (=> b!4614855 m!5447623))

(declare-fun m!5447625 () Bool)

(assert (=> b!4614855 m!5447625))

(declare-fun m!5447627 () Bool)

(assert (=> b!4614855 m!5447627))

(declare-fun m!5447629 () Bool)

(assert (=> b!4614855 m!5447629))

(declare-fun m!5447631 () Bool)

(assert (=> b!4614855 m!5447631))

(assert (=> b!4614855 m!5447623))

(assert (=> b!4614855 m!5447627))

(assert (=> b!4614631 d!1453630))

(declare-fun d!1453632 () Bool)

(declare-fun e!2878572 () Bool)

(assert (=> d!1453632 e!2878572))

(declare-fun res!1933268 () Bool)

(assert (=> d!1453632 (=> (not res!1933268) (not e!2878572))))

(declare-fun lt!1770187 () ListMap!4141)

(assert (=> d!1453632 (= res!1933268 (not (contains!14318 lt!1770187 key!4968)))))

(assert (=> d!1453632 (= lt!1770187 (ListMap!4142 (removePresrvNoDuplicatedKeys!237 (toList!4837 (+!1821 lt!1769820 (tuple2!52191 key!4968 (_2!29389 (h!57361 oldBucket!40))))) key!4968)))))

(assert (=> d!1453632 (= (-!526 (+!1821 lt!1769820 (tuple2!52191 key!4968 (_2!29389 (h!57361 oldBucket!40)))) key!4968) lt!1770187)))

(declare-fun b!4614856 () Bool)

(assert (=> b!4614856 (= e!2878572 (= ((_ map and) (content!8719 (keys!18043 (+!1821 lt!1769820 (tuple2!52191 key!4968 (_2!29389 (h!57361 oldBucket!40)))))) ((_ map not) (store ((as const (Array K!12740 Bool)) false) key!4968 true))) (content!8719 (keys!18043 lt!1770187))))))

(assert (= (and d!1453632 res!1933268) b!4614856))

(declare-fun m!5447633 () Bool)

(assert (=> d!1453632 m!5447633))

(declare-fun m!5447635 () Bool)

(assert (=> d!1453632 m!5447635))

(declare-fun m!5447637 () Bool)

(assert (=> b!4614856 m!5447637))

(declare-fun m!5447639 () Bool)

(assert (=> b!4614856 m!5447639))

(declare-fun m!5447641 () Bool)

(assert (=> b!4614856 m!5447641))

(declare-fun m!5447643 () Bool)

(assert (=> b!4614856 m!5447643))

(assert (=> b!4614856 m!5447631))

(assert (=> b!4614856 m!5447637))

(assert (=> b!4614856 m!5447063))

(assert (=> b!4614856 m!5447641))

(assert (=> b!4614631 d!1453632))

(declare-fun d!1453634 () Bool)

(declare-fun e!2878575 () Bool)

(assert (=> d!1453634 e!2878575))

(declare-fun res!1933274 () Bool)

(assert (=> d!1453634 (=> (not res!1933274) (not e!2878575))))

(declare-fun lt!1770198 () ListMap!4141)

(assert (=> d!1453634 (= res!1933274 (contains!14318 lt!1770198 (_1!29389 (tuple2!52191 key!4968 (_2!29389 (h!57361 oldBucket!40))))))))

(declare-fun lt!1770197 () List!51477)

(assert (=> d!1453634 (= lt!1770198 (ListMap!4142 lt!1770197))))

(declare-fun lt!1770199 () Unit!109882)

(declare-fun lt!1770196 () Unit!109882)

(assert (=> d!1453634 (= lt!1770199 lt!1770196)))

(assert (=> d!1453634 (= (getValueByKey!1380 lt!1770197 (_1!29389 (tuple2!52191 key!4968 (_2!29389 (h!57361 oldBucket!40))))) (Some!11465 (_2!29389 (tuple2!52191 key!4968 (_2!29389 (h!57361 oldBucket!40))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!816 (List!51477 K!12740 V!12986) Unit!109882)

(assert (=> d!1453634 (= lt!1770196 (lemmaContainsTupThenGetReturnValue!816 lt!1770197 (_1!29389 (tuple2!52191 key!4968 (_2!29389 (h!57361 oldBucket!40)))) (_2!29389 (tuple2!52191 key!4968 (_2!29389 (h!57361 oldBucket!40))))))))

(declare-fun insertNoDuplicatedKeys!324 (List!51477 K!12740 V!12986) List!51477)

(assert (=> d!1453634 (= lt!1770197 (insertNoDuplicatedKeys!324 (toList!4837 lt!1769820) (_1!29389 (tuple2!52191 key!4968 (_2!29389 (h!57361 oldBucket!40)))) (_2!29389 (tuple2!52191 key!4968 (_2!29389 (h!57361 oldBucket!40))))))))

(assert (=> d!1453634 (= (+!1821 lt!1769820 (tuple2!52191 key!4968 (_2!29389 (h!57361 oldBucket!40)))) lt!1770198)))

(declare-fun b!4614861 () Bool)

(declare-fun res!1933273 () Bool)

(assert (=> b!4614861 (=> (not res!1933273) (not e!2878575))))

(assert (=> b!4614861 (= res!1933273 (= (getValueByKey!1380 (toList!4837 lt!1770198) (_1!29389 (tuple2!52191 key!4968 (_2!29389 (h!57361 oldBucket!40))))) (Some!11465 (_2!29389 (tuple2!52191 key!4968 (_2!29389 (h!57361 oldBucket!40)))))))))

(declare-fun b!4614862 () Bool)

(declare-fun contains!14322 (List!51477 tuple2!52190) Bool)

(assert (=> b!4614862 (= e!2878575 (contains!14322 (toList!4837 lt!1770198) (tuple2!52191 key!4968 (_2!29389 (h!57361 oldBucket!40)))))))

(assert (= (and d!1453634 res!1933274) b!4614861))

(assert (= (and b!4614861 res!1933273) b!4614862))

(declare-fun m!5447645 () Bool)

(assert (=> d!1453634 m!5447645))

(declare-fun m!5447647 () Bool)

(assert (=> d!1453634 m!5447647))

(declare-fun m!5447649 () Bool)

(assert (=> d!1453634 m!5447649))

(declare-fun m!5447651 () Bool)

(assert (=> d!1453634 m!5447651))

(declare-fun m!5447653 () Bool)

(assert (=> b!4614861 m!5447653))

(declare-fun m!5447655 () Bool)

(assert (=> b!4614862 m!5447655))

(assert (=> b!4614631 d!1453634))

(declare-fun d!1453636 () Bool)

(assert (=> d!1453636 (= (-!526 (+!1821 lt!1769820 (tuple2!52191 key!4968 (_2!29389 (h!57361 oldBucket!40)))) key!4968) lt!1769820)))

(declare-fun lt!1770202 () Unit!109882)

(declare-fun choose!31065 (ListMap!4141 K!12740 V!12986) Unit!109882)

(assert (=> d!1453636 (= lt!1770202 (choose!31065 lt!1769820 key!4968 (_2!29389 (h!57361 oldBucket!40))))))

(assert (=> d!1453636 (not (contains!14318 lt!1769820 key!4968))))

(assert (=> d!1453636 (= (addThenRemoveForNewKeyIsSame!9 lt!1769820 key!4968 (_2!29389 (h!57361 oldBucket!40))) lt!1770202)))

(declare-fun bs!1017403 () Bool)

(assert (= bs!1017403 d!1453636))

(assert (=> bs!1017403 m!5447063))

(assert (=> bs!1017403 m!5447063))

(assert (=> bs!1017403 m!5447065))

(declare-fun m!5447657 () Bool)

(assert (=> bs!1017403 m!5447657))

(assert (=> bs!1017403 m!5447073))

(assert (=> b!4614631 d!1453636))

(declare-fun bs!1017404 () Bool)

(declare-fun d!1453638 () Bool)

(assert (= bs!1017404 (and d!1453638 b!4614849)))

(declare-fun lambda!189183 () Int)

(assert (=> bs!1017404 (not (= lambda!189183 lambda!189178))))

(declare-fun bs!1017405 () Bool)

(assert (= bs!1017405 (and d!1453638 d!1453574)))

(assert (=> bs!1017405 (not (= lambda!189183 lambda!189174))))

(declare-fun bs!1017406 () Bool)

(assert (= bs!1017406 (and d!1453638 b!4614834)))

(assert (=> bs!1017406 (not (= lambda!189183 lambda!189172))))

(assert (=> bs!1017406 (not (= lambda!189183 lambda!189173))))

(declare-fun bs!1017407 () Bool)

(assert (= bs!1017407 (and d!1453638 d!1453626)))

(assert (=> bs!1017407 (not (= lambda!189183 lambda!189180))))

(assert (=> bs!1017404 (not (= lambda!189183 lambda!189179))))

(declare-fun bs!1017408 () Bool)

(assert (= bs!1017408 (and d!1453638 b!4614847)))

(assert (=> bs!1017408 (not (= lambda!189183 lambda!189177))))

(declare-fun bs!1017409 () Bool)

(assert (= bs!1017409 (and d!1453638 b!4614832)))

(assert (=> bs!1017409 (not (= lambda!189183 lambda!189171))))

(assert (=> d!1453638 true))

(assert (=> d!1453638 true))

(assert (=> d!1453638 (= (allKeysSameHash!1290 newBucket!224 hash!414 hashF!1389) (forall!10734 newBucket!224 lambda!189183))))

(declare-fun bs!1017410 () Bool)

(assert (= bs!1017410 d!1453638))

(declare-fun m!5447659 () Bool)

(assert (=> bs!1017410 m!5447659))

(assert (=> b!4614621 d!1453638))

(declare-fun d!1453640 () Bool)

(declare-fun res!1933279 () Bool)

(declare-fun e!2878580 () Bool)

(assert (=> d!1453640 (=> res!1933279 e!2878580)))

(assert (=> d!1453640 (= res!1933279 (not ((_ is Cons!51353) newBucket!224)))))

(assert (=> d!1453640 (= (noDuplicateKeys!1436 newBucket!224) e!2878580)))

(declare-fun b!4614871 () Bool)

(declare-fun e!2878581 () Bool)

(assert (=> b!4614871 (= e!2878580 e!2878581)))

(declare-fun res!1933280 () Bool)

(assert (=> b!4614871 (=> (not res!1933280) (not e!2878581))))

(assert (=> b!4614871 (= res!1933280 (not (containsKey!2312 (t!358477 newBucket!224) (_1!29389 (h!57361 newBucket!224)))))))

(declare-fun b!4614872 () Bool)

(assert (=> b!4614872 (= e!2878581 (noDuplicateKeys!1436 (t!358477 newBucket!224)))))

(assert (= (and d!1453640 (not res!1933279)) b!4614871))

(assert (= (and b!4614871 res!1933280) b!4614872))

(declare-fun m!5447661 () Bool)

(assert (=> b!4614871 m!5447661))

(declare-fun m!5447663 () Bool)

(assert (=> b!4614872 m!5447663))

(assert (=> b!4614619 d!1453640))

(declare-fun d!1453642 () Bool)

(declare-fun content!8720 (List!51477) (InoxSet tuple2!52190))

(assert (=> d!1453642 (= (eq!779 lt!1769829 lt!1769828) (= (content!8720 (toList!4837 lt!1769829)) (content!8720 (toList!4837 lt!1769828))))))

(declare-fun bs!1017411 () Bool)

(assert (= bs!1017411 d!1453642))

(declare-fun m!5447665 () Bool)

(assert (=> bs!1017411 m!5447665))

(declare-fun m!5447667 () Bool)

(assert (=> bs!1017411 m!5447667))

(assert (=> b!4614630 d!1453642))

(declare-fun d!1453644 () Bool)

(declare-fun e!2878582 () Bool)

(assert (=> d!1453644 e!2878582))

(declare-fun res!1933282 () Bool)

(assert (=> d!1453644 (=> (not res!1933282) (not e!2878582))))

(declare-fun lt!1770205 () ListMap!4141)

(assert (=> d!1453644 (= res!1933282 (contains!14318 lt!1770205 (_1!29389 (h!57361 oldBucket!40))))))

(declare-fun lt!1770204 () List!51477)

(assert (=> d!1453644 (= lt!1770205 (ListMap!4142 lt!1770204))))

(declare-fun lt!1770206 () Unit!109882)

(declare-fun lt!1770203 () Unit!109882)

(assert (=> d!1453644 (= lt!1770206 lt!1770203)))

(assert (=> d!1453644 (= (getValueByKey!1380 lt!1770204 (_1!29389 (h!57361 oldBucket!40))) (Some!11465 (_2!29389 (h!57361 oldBucket!40))))))

(assert (=> d!1453644 (= lt!1770203 (lemmaContainsTupThenGetReturnValue!816 lt!1770204 (_1!29389 (h!57361 oldBucket!40)) (_2!29389 (h!57361 oldBucket!40))))))

(assert (=> d!1453644 (= lt!1770204 (insertNoDuplicatedKeys!324 (toList!4837 lt!1769820) (_1!29389 (h!57361 oldBucket!40)) (_2!29389 (h!57361 oldBucket!40))))))

(assert (=> d!1453644 (= (+!1821 lt!1769820 (h!57361 oldBucket!40)) lt!1770205)))

(declare-fun b!4614873 () Bool)

(declare-fun res!1933281 () Bool)

(assert (=> b!4614873 (=> (not res!1933281) (not e!2878582))))

(assert (=> b!4614873 (= res!1933281 (= (getValueByKey!1380 (toList!4837 lt!1770205) (_1!29389 (h!57361 oldBucket!40))) (Some!11465 (_2!29389 (h!57361 oldBucket!40)))))))

(declare-fun b!4614874 () Bool)

(assert (=> b!4614874 (= e!2878582 (contains!14322 (toList!4837 lt!1770205) (h!57361 oldBucket!40)))))

(assert (= (and d!1453644 res!1933282) b!4614873))

(assert (= (and b!4614873 res!1933281) b!4614874))

(declare-fun m!5447669 () Bool)

(assert (=> d!1453644 m!5447669))

(declare-fun m!5447671 () Bool)

(assert (=> d!1453644 m!5447671))

(declare-fun m!5447673 () Bool)

(assert (=> d!1453644 m!5447673))

(declare-fun m!5447675 () Bool)

(assert (=> d!1453644 m!5447675))

(declare-fun m!5447677 () Bool)

(assert (=> b!4614873 m!5447677))

(declare-fun m!5447679 () Bool)

(assert (=> b!4614874 m!5447679))

(assert (=> b!4614630 d!1453644))

(declare-fun d!1453646 () Bool)

(assert (=> d!1453646 (= (head!9596 oldBucket!40) (h!57361 oldBucket!40))))

(assert (=> b!4614630 d!1453646))

(declare-fun bs!1017412 () Bool)

(declare-fun b!4614876 () Bool)

(assert (= bs!1017412 (and b!4614876 b!4614849)))

(declare-fun lambda!189184 () Int)

(assert (=> bs!1017412 (= lambda!189184 lambda!189178)))

(declare-fun bs!1017413 () Bool)

(assert (= bs!1017413 (and b!4614876 d!1453574)))

(assert (=> bs!1017413 (= (= (ListMap!4142 Nil!51353) lt!1770150) (= lambda!189184 lambda!189174))))

(declare-fun bs!1017414 () Bool)

(assert (= bs!1017414 (and b!4614876 b!4614834)))

(assert (=> bs!1017414 (= lambda!189184 lambda!189172)))

(declare-fun bs!1017415 () Bool)

(assert (= bs!1017415 (and b!4614876 d!1453638)))

(assert (=> bs!1017415 (not (= lambda!189184 lambda!189183))))

(assert (=> bs!1017414 (= (= (ListMap!4142 Nil!51353) lt!1770145) (= lambda!189184 lambda!189173))))

(declare-fun bs!1017416 () Bool)

(assert (= bs!1017416 (and b!4614876 d!1453626)))

(assert (=> bs!1017416 (= (= (ListMap!4142 Nil!51353) lt!1770176) (= lambda!189184 lambda!189180))))

(assert (=> bs!1017412 (= (= (ListMap!4142 Nil!51353) lt!1770171) (= lambda!189184 lambda!189179))))

(declare-fun bs!1017417 () Bool)

(assert (= bs!1017417 (and b!4614876 b!4614847)))

(assert (=> bs!1017417 (= lambda!189184 lambda!189177)))

(declare-fun bs!1017418 () Bool)

(assert (= bs!1017418 (and b!4614876 b!4614832)))

(assert (=> bs!1017418 (= lambda!189184 lambda!189171)))

(assert (=> b!4614876 true))

(declare-fun bs!1017419 () Bool)

(declare-fun b!4614878 () Bool)

(assert (= bs!1017419 (and b!4614878 b!4614849)))

(declare-fun lambda!189185 () Int)

(assert (=> bs!1017419 (= lambda!189185 lambda!189178)))

(declare-fun bs!1017420 () Bool)

(assert (= bs!1017420 (and b!4614878 d!1453574)))

(assert (=> bs!1017420 (= (= (ListMap!4142 Nil!51353) lt!1770150) (= lambda!189185 lambda!189174))))

(declare-fun bs!1017421 () Bool)

(assert (= bs!1017421 (and b!4614878 b!4614834)))

(assert (=> bs!1017421 (= lambda!189185 lambda!189172)))

(declare-fun bs!1017422 () Bool)

(assert (= bs!1017422 (and b!4614878 d!1453638)))

(assert (=> bs!1017422 (not (= lambda!189185 lambda!189183))))

(assert (=> bs!1017421 (= (= (ListMap!4142 Nil!51353) lt!1770145) (= lambda!189185 lambda!189173))))

(declare-fun bs!1017423 () Bool)

(assert (= bs!1017423 (and b!4614878 d!1453626)))

(assert (=> bs!1017423 (= (= (ListMap!4142 Nil!51353) lt!1770176) (= lambda!189185 lambda!189180))))

(assert (=> bs!1017419 (= (= (ListMap!4142 Nil!51353) lt!1770171) (= lambda!189185 lambda!189179))))

(declare-fun bs!1017424 () Bool)

(assert (= bs!1017424 (and b!4614878 b!4614876)))

(assert (=> bs!1017424 (= lambda!189185 lambda!189184)))

(declare-fun bs!1017425 () Bool)

(assert (= bs!1017425 (and b!4614878 b!4614847)))

(assert (=> bs!1017425 (= lambda!189185 lambda!189177)))

(declare-fun bs!1017426 () Bool)

(assert (= bs!1017426 (and b!4614878 b!4614832)))

(assert (=> bs!1017426 (= lambda!189185 lambda!189171)))

(assert (=> b!4614878 true))

(declare-fun lt!1770215 () ListMap!4141)

(declare-fun lambda!189186 () Int)

(assert (=> bs!1017419 (= (= lt!1770215 (ListMap!4142 Nil!51353)) (= lambda!189186 lambda!189178))))

(assert (=> bs!1017420 (= (= lt!1770215 lt!1770150) (= lambda!189186 lambda!189174))))

(assert (=> bs!1017421 (= (= lt!1770215 (ListMap!4142 Nil!51353)) (= lambda!189186 lambda!189172))))

(assert (=> b!4614878 (= (= lt!1770215 (ListMap!4142 Nil!51353)) (= lambda!189186 lambda!189185))))

(assert (=> bs!1017422 (not (= lambda!189186 lambda!189183))))

(assert (=> bs!1017421 (= (= lt!1770215 lt!1770145) (= lambda!189186 lambda!189173))))

(assert (=> bs!1017423 (= (= lt!1770215 lt!1770176) (= lambda!189186 lambda!189180))))

(assert (=> bs!1017419 (= (= lt!1770215 lt!1770171) (= lambda!189186 lambda!189179))))

(assert (=> bs!1017424 (= (= lt!1770215 (ListMap!4142 Nil!51353)) (= lambda!189186 lambda!189184))))

(assert (=> bs!1017425 (= (= lt!1770215 (ListMap!4142 Nil!51353)) (= lambda!189186 lambda!189177))))

(assert (=> bs!1017426 (= (= lt!1770215 (ListMap!4142 Nil!51353)) (= lambda!189186 lambda!189171))))

(assert (=> b!4614878 true))

(declare-fun bs!1017427 () Bool)

(declare-fun d!1453648 () Bool)

(assert (= bs!1017427 (and d!1453648 b!4614849)))

(declare-fun lt!1770220 () ListMap!4141)

(declare-fun lambda!189187 () Int)

(assert (=> bs!1017427 (= (= lt!1770220 (ListMap!4142 Nil!51353)) (= lambda!189187 lambda!189178))))

(declare-fun bs!1017428 () Bool)

(assert (= bs!1017428 (and d!1453648 d!1453574)))

(assert (=> bs!1017428 (= (= lt!1770220 lt!1770150) (= lambda!189187 lambda!189174))))

(declare-fun bs!1017429 () Bool)

(assert (= bs!1017429 (and d!1453648 b!4614834)))

(assert (=> bs!1017429 (= (= lt!1770220 (ListMap!4142 Nil!51353)) (= lambda!189187 lambda!189172))))

(declare-fun bs!1017430 () Bool)

(assert (= bs!1017430 (and d!1453648 b!4614878)))

(assert (=> bs!1017430 (= (= lt!1770220 lt!1770215) (= lambda!189187 lambda!189186))))

(assert (=> bs!1017430 (= (= lt!1770220 (ListMap!4142 Nil!51353)) (= lambda!189187 lambda!189185))))

(declare-fun bs!1017431 () Bool)

(assert (= bs!1017431 (and d!1453648 d!1453638)))

(assert (=> bs!1017431 (not (= lambda!189187 lambda!189183))))

(assert (=> bs!1017429 (= (= lt!1770220 lt!1770145) (= lambda!189187 lambda!189173))))

(declare-fun bs!1017432 () Bool)

(assert (= bs!1017432 (and d!1453648 d!1453626)))

(assert (=> bs!1017432 (= (= lt!1770220 lt!1770176) (= lambda!189187 lambda!189180))))

(assert (=> bs!1017427 (= (= lt!1770220 lt!1770171) (= lambda!189187 lambda!189179))))

(declare-fun bs!1017433 () Bool)

(assert (= bs!1017433 (and d!1453648 b!4614876)))

(assert (=> bs!1017433 (= (= lt!1770220 (ListMap!4142 Nil!51353)) (= lambda!189187 lambda!189184))))

(declare-fun bs!1017434 () Bool)

(assert (= bs!1017434 (and d!1453648 b!4614847)))

(assert (=> bs!1017434 (= (= lt!1770220 (ListMap!4142 Nil!51353)) (= lambda!189187 lambda!189177))))

(declare-fun bs!1017435 () Bool)

(assert (= bs!1017435 (and d!1453648 b!4614832)))

(assert (=> bs!1017435 (= (= lt!1770220 (ListMap!4142 Nil!51353)) (= lambda!189187 lambda!189171))))

(assert (=> d!1453648 true))

(declare-fun call!321724 () Bool)

(declare-fun c!790125 () Bool)

(declare-fun bm!321717 () Bool)

(assert (=> bm!321717 (= call!321724 (forall!10734 (ite c!790125 (toList!4837 (ListMap!4142 Nil!51353)) (t!358477 oldBucket!40)) (ite c!790125 lambda!189184 lambda!189186)))))

(declare-fun b!4614875 () Bool)

(declare-fun res!1933284 () Bool)

(declare-fun e!2878583 () Bool)

(assert (=> b!4614875 (=> (not res!1933284) (not e!2878583))))

(assert (=> b!4614875 (= res!1933284 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) lambda!189187))))

(declare-fun e!2878584 () ListMap!4141)

(assert (=> b!4614876 (= e!2878584 (ListMap!4142 Nil!51353))))

(declare-fun lt!1770225 () Unit!109882)

(declare-fun call!321723 () Unit!109882)

(assert (=> b!4614876 (= lt!1770225 call!321723)))

(assert (=> b!4614876 call!321724))

(declare-fun lt!1770218 () Unit!109882)

(assert (=> b!4614876 (= lt!1770218 lt!1770225)))

(declare-fun call!321722 () Bool)

(assert (=> b!4614876 call!321722))

(declare-fun lt!1770221 () Unit!109882)

(declare-fun Unit!109960 () Unit!109882)

(assert (=> b!4614876 (= lt!1770221 Unit!109960)))

(declare-fun b!4614877 () Bool)

(assert (=> b!4614877 (= e!2878583 (invariantList!1163 (toList!4837 lt!1770220)))))

(declare-fun bm!321719 () Bool)

(assert (=> bm!321719 (= call!321722 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) (ite c!790125 lambda!189184 lambda!189186)))))

(assert (=> b!4614878 (= e!2878584 lt!1770215)))

(declare-fun lt!1770223 () ListMap!4141)

(assert (=> b!4614878 (= lt!1770223 (+!1821 (ListMap!4142 Nil!51353) (h!57361 oldBucket!40)))))

(assert (=> b!4614878 (= lt!1770215 (addToMapMapFromBucket!897 (t!358477 oldBucket!40) (+!1821 (ListMap!4142 Nil!51353) (h!57361 oldBucket!40))))))

(declare-fun lt!1770226 () Unit!109882)

(assert (=> b!4614878 (= lt!1770226 call!321723)))

(assert (=> b!4614878 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) lambda!189185)))

(declare-fun lt!1770217 () Unit!109882)

(assert (=> b!4614878 (= lt!1770217 lt!1770226)))

(assert (=> b!4614878 (forall!10734 (toList!4837 lt!1770223) lambda!189186)))

(declare-fun lt!1770214 () Unit!109882)

(declare-fun Unit!109961 () Unit!109882)

(assert (=> b!4614878 (= lt!1770214 Unit!109961)))

(assert (=> b!4614878 call!321724))

(declare-fun lt!1770219 () Unit!109882)

(declare-fun Unit!109962 () Unit!109882)

(assert (=> b!4614878 (= lt!1770219 Unit!109962)))

(declare-fun lt!1770216 () Unit!109882)

(declare-fun Unit!109963 () Unit!109882)

(assert (=> b!4614878 (= lt!1770216 Unit!109963)))

(declare-fun lt!1770210 () Unit!109882)

(assert (=> b!4614878 (= lt!1770210 (forallContained!2957 (toList!4837 lt!1770223) lambda!189186 (h!57361 oldBucket!40)))))

(assert (=> b!4614878 (contains!14318 lt!1770223 (_1!29389 (h!57361 oldBucket!40)))))

(declare-fun lt!1770211 () Unit!109882)

(declare-fun Unit!109964 () Unit!109882)

(assert (=> b!4614878 (= lt!1770211 Unit!109964)))

(assert (=> b!4614878 (contains!14318 lt!1770215 (_1!29389 (h!57361 oldBucket!40)))))

(declare-fun lt!1770227 () Unit!109882)

(declare-fun Unit!109965 () Unit!109882)

(assert (=> b!4614878 (= lt!1770227 Unit!109965)))

(assert (=> b!4614878 (forall!10734 oldBucket!40 lambda!189186)))

(declare-fun lt!1770213 () Unit!109882)

(declare-fun Unit!109966 () Unit!109882)

(assert (=> b!4614878 (= lt!1770213 Unit!109966)))

(assert (=> b!4614878 (forall!10734 (toList!4837 lt!1770223) lambda!189186)))

(declare-fun lt!1770212 () Unit!109882)

(declare-fun Unit!109967 () Unit!109882)

(assert (=> b!4614878 (= lt!1770212 Unit!109967)))

(declare-fun lt!1770222 () Unit!109882)

(declare-fun Unit!109968 () Unit!109882)

(assert (=> b!4614878 (= lt!1770222 Unit!109968)))

(declare-fun lt!1770207 () Unit!109882)

(assert (=> b!4614878 (= lt!1770207 (addForallContainsKeyThenBeforeAdding!464 (ListMap!4142 Nil!51353) lt!1770215 (_1!29389 (h!57361 oldBucket!40)) (_2!29389 (h!57361 oldBucket!40))))))

(assert (=> b!4614878 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) lambda!189186)))

(declare-fun lt!1770224 () Unit!109882)

(assert (=> b!4614878 (= lt!1770224 lt!1770207)))

(assert (=> b!4614878 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) lambda!189186)))

(declare-fun lt!1770208 () Unit!109882)

(declare-fun Unit!109969 () Unit!109882)

(assert (=> b!4614878 (= lt!1770208 Unit!109969)))

(declare-fun res!1933285 () Bool)

(assert (=> b!4614878 (= res!1933285 (forall!10734 oldBucket!40 lambda!189186))))

(declare-fun e!2878585 () Bool)

(assert (=> b!4614878 (=> (not res!1933285) (not e!2878585))))

(assert (=> b!4614878 e!2878585))

(declare-fun lt!1770209 () Unit!109882)

(declare-fun Unit!109970 () Unit!109882)

(assert (=> b!4614878 (= lt!1770209 Unit!109970)))

(declare-fun b!4614879 () Bool)

(assert (=> b!4614879 (= e!2878585 call!321722)))

(assert (=> d!1453648 e!2878583))

(declare-fun res!1933283 () Bool)

(assert (=> d!1453648 (=> (not res!1933283) (not e!2878583))))

(assert (=> d!1453648 (= res!1933283 (forall!10734 oldBucket!40 lambda!189187))))

(assert (=> d!1453648 (= lt!1770220 e!2878584)))

(assert (=> d!1453648 (= c!790125 ((_ is Nil!51353) oldBucket!40))))

(assert (=> d!1453648 (noDuplicateKeys!1436 oldBucket!40)))

(assert (=> d!1453648 (= (addToMapMapFromBucket!897 oldBucket!40 (ListMap!4142 Nil!51353)) lt!1770220)))

(declare-fun bm!321718 () Bool)

(assert (=> bm!321718 (= call!321723 (lemmaContainsAllItsOwnKeys!465 (ListMap!4142 Nil!51353)))))

(assert (= (and d!1453648 c!790125) b!4614876))

(assert (= (and d!1453648 (not c!790125)) b!4614878))

(assert (= (and b!4614878 res!1933285) b!4614879))

(assert (= (or b!4614876 b!4614878) bm!321718))

(assert (= (or b!4614876 b!4614879) bm!321719))

(assert (= (or b!4614876 b!4614878) bm!321717))

(assert (= (and d!1453648 res!1933283) b!4614875))

(assert (= (and b!4614875 res!1933284) b!4614877))

(assert (=> bm!321718 m!5447545))

(declare-fun m!5447681 () Bool)

(assert (=> d!1453648 m!5447681))

(assert (=> d!1453648 m!5447079))

(declare-fun m!5447683 () Bool)

(assert (=> b!4614877 m!5447683))

(declare-fun m!5447685 () Bool)

(assert (=> b!4614875 m!5447685))

(declare-fun m!5447687 () Bool)

(assert (=> bm!321719 m!5447687))

(declare-fun m!5447689 () Bool)

(assert (=> bm!321717 m!5447689))

(declare-fun m!5447691 () Bool)

(assert (=> b!4614878 m!5447691))

(declare-fun m!5447693 () Bool)

(assert (=> b!4614878 m!5447693))

(declare-fun m!5447695 () Bool)

(assert (=> b!4614878 m!5447695))

(declare-fun m!5447697 () Bool)

(assert (=> b!4614878 m!5447697))

(declare-fun m!5447699 () Bool)

(assert (=> b!4614878 m!5447699))

(assert (=> b!4614878 m!5447697))

(declare-fun m!5447701 () Bool)

(assert (=> b!4614878 m!5447701))

(declare-fun m!5447703 () Bool)

(assert (=> b!4614878 m!5447703))

(assert (=> b!4614878 m!5447699))

(declare-fun m!5447705 () Bool)

(assert (=> b!4614878 m!5447705))

(declare-fun m!5447707 () Bool)

(assert (=> b!4614878 m!5447707))

(assert (=> b!4614878 m!5447691))

(declare-fun m!5447709 () Bool)

(assert (=> b!4614878 m!5447709))

(assert (=> b!4614878 m!5447703))

(assert (=> b!4614630 d!1453648))

(declare-fun d!1453650 () Bool)

(assert (=> d!1453650 (= (eq!779 (addToMapMapFromBucket!897 (Cons!51353 lt!1769831 lt!1769825) (ListMap!4142 Nil!51353)) (+!1821 lt!1769820 lt!1769831)) (= (content!8720 (toList!4837 (addToMapMapFromBucket!897 (Cons!51353 lt!1769831 lt!1769825) (ListMap!4142 Nil!51353)))) (content!8720 (toList!4837 (+!1821 lt!1769820 lt!1769831)))))))

(declare-fun bs!1017436 () Bool)

(assert (= bs!1017436 d!1453650))

(declare-fun m!5447711 () Bool)

(assert (=> bs!1017436 m!5447711))

(declare-fun m!5447713 () Bool)

(assert (=> bs!1017436 m!5447713))

(assert (=> b!4614630 d!1453650))

(declare-fun bs!1017437 () Bool)

(declare-fun b!4614881 () Bool)

(assert (= bs!1017437 (and b!4614881 b!4614849)))

(declare-fun lambda!189188 () Int)

(assert (=> bs!1017437 (= lambda!189188 lambda!189178)))

(declare-fun bs!1017438 () Bool)

(assert (= bs!1017438 (and b!4614881 b!4614834)))

(assert (=> bs!1017438 (= lambda!189188 lambda!189172)))

(declare-fun bs!1017439 () Bool)

(assert (= bs!1017439 (and b!4614881 b!4614878)))

(assert (=> bs!1017439 (= (= (ListMap!4142 Nil!51353) lt!1770215) (= lambda!189188 lambda!189186))))

(assert (=> bs!1017439 (= lambda!189188 lambda!189185)))

(declare-fun bs!1017440 () Bool)

(assert (= bs!1017440 (and b!4614881 d!1453638)))

(assert (=> bs!1017440 (not (= lambda!189188 lambda!189183))))

(assert (=> bs!1017438 (= (= (ListMap!4142 Nil!51353) lt!1770145) (= lambda!189188 lambda!189173))))

(declare-fun bs!1017441 () Bool)

(assert (= bs!1017441 (and b!4614881 d!1453626)))

(assert (=> bs!1017441 (= (= (ListMap!4142 Nil!51353) lt!1770176) (= lambda!189188 lambda!189180))))

(assert (=> bs!1017437 (= (= (ListMap!4142 Nil!51353) lt!1770171) (= lambda!189188 lambda!189179))))

(declare-fun bs!1017442 () Bool)

(assert (= bs!1017442 (and b!4614881 b!4614876)))

(assert (=> bs!1017442 (= lambda!189188 lambda!189184)))

(declare-fun bs!1017443 () Bool)

(assert (= bs!1017443 (and b!4614881 d!1453574)))

(assert (=> bs!1017443 (= (= (ListMap!4142 Nil!51353) lt!1770150) (= lambda!189188 lambda!189174))))

(declare-fun bs!1017444 () Bool)

(assert (= bs!1017444 (and b!4614881 d!1453648)))

(assert (=> bs!1017444 (= (= (ListMap!4142 Nil!51353) lt!1770220) (= lambda!189188 lambda!189187))))

(declare-fun bs!1017445 () Bool)

(assert (= bs!1017445 (and b!4614881 b!4614847)))

(assert (=> bs!1017445 (= lambda!189188 lambda!189177)))

(declare-fun bs!1017446 () Bool)

(assert (= bs!1017446 (and b!4614881 b!4614832)))

(assert (=> bs!1017446 (= lambda!189188 lambda!189171)))

(assert (=> b!4614881 true))

(declare-fun bs!1017447 () Bool)

(declare-fun b!4614883 () Bool)

(assert (= bs!1017447 (and b!4614883 b!4614849)))

(declare-fun lambda!189189 () Int)

(assert (=> bs!1017447 (= lambda!189189 lambda!189178)))

(declare-fun bs!1017448 () Bool)

(assert (= bs!1017448 (and b!4614883 b!4614834)))

(assert (=> bs!1017448 (= lambda!189189 lambda!189172)))

(declare-fun bs!1017449 () Bool)

(assert (= bs!1017449 (and b!4614883 b!4614878)))

(assert (=> bs!1017449 (= (= (ListMap!4142 Nil!51353) lt!1770215) (= lambda!189189 lambda!189186))))

(assert (=> bs!1017449 (= lambda!189189 lambda!189185)))

(declare-fun bs!1017450 () Bool)

(assert (= bs!1017450 (and b!4614883 d!1453638)))

(assert (=> bs!1017450 (not (= lambda!189189 lambda!189183))))

(assert (=> bs!1017448 (= (= (ListMap!4142 Nil!51353) lt!1770145) (= lambda!189189 lambda!189173))))

(declare-fun bs!1017451 () Bool)

(assert (= bs!1017451 (and b!4614883 d!1453626)))

(assert (=> bs!1017451 (= (= (ListMap!4142 Nil!51353) lt!1770176) (= lambda!189189 lambda!189180))))

(assert (=> bs!1017447 (= (= (ListMap!4142 Nil!51353) lt!1770171) (= lambda!189189 lambda!189179))))

(declare-fun bs!1017452 () Bool)

(assert (= bs!1017452 (and b!4614883 b!4614876)))

(assert (=> bs!1017452 (= lambda!189189 lambda!189184)))

(declare-fun bs!1017453 () Bool)

(assert (= bs!1017453 (and b!4614883 b!4614881)))

(assert (=> bs!1017453 (= lambda!189189 lambda!189188)))

(declare-fun bs!1017454 () Bool)

(assert (= bs!1017454 (and b!4614883 d!1453574)))

(assert (=> bs!1017454 (= (= (ListMap!4142 Nil!51353) lt!1770150) (= lambda!189189 lambda!189174))))

(declare-fun bs!1017455 () Bool)

(assert (= bs!1017455 (and b!4614883 d!1453648)))

(assert (=> bs!1017455 (= (= (ListMap!4142 Nil!51353) lt!1770220) (= lambda!189189 lambda!189187))))

(declare-fun bs!1017456 () Bool)

(assert (= bs!1017456 (and b!4614883 b!4614847)))

(assert (=> bs!1017456 (= lambda!189189 lambda!189177)))

(declare-fun bs!1017457 () Bool)

(assert (= bs!1017457 (and b!4614883 b!4614832)))

(assert (=> bs!1017457 (= lambda!189189 lambda!189171)))

(assert (=> b!4614883 true))

(declare-fun lt!1770236 () ListMap!4141)

(declare-fun lambda!189190 () Int)

(assert (=> bs!1017447 (= (= lt!1770236 (ListMap!4142 Nil!51353)) (= lambda!189190 lambda!189178))))

(assert (=> bs!1017448 (= (= lt!1770236 (ListMap!4142 Nil!51353)) (= lambda!189190 lambda!189172))))

(assert (=> bs!1017449 (= (= lt!1770236 lt!1770215) (= lambda!189190 lambda!189186))))

(assert (=> bs!1017449 (= (= lt!1770236 (ListMap!4142 Nil!51353)) (= lambda!189190 lambda!189185))))

(assert (=> bs!1017450 (not (= lambda!189190 lambda!189183))))

(assert (=> bs!1017448 (= (= lt!1770236 lt!1770145) (= lambda!189190 lambda!189173))))

(assert (=> bs!1017451 (= (= lt!1770236 lt!1770176) (= lambda!189190 lambda!189180))))

(assert (=> bs!1017452 (= (= lt!1770236 (ListMap!4142 Nil!51353)) (= lambda!189190 lambda!189184))))

(assert (=> bs!1017453 (= (= lt!1770236 (ListMap!4142 Nil!51353)) (= lambda!189190 lambda!189188))))

(assert (=> bs!1017454 (= (= lt!1770236 lt!1770150) (= lambda!189190 lambda!189174))))

(assert (=> bs!1017455 (= (= lt!1770236 lt!1770220) (= lambda!189190 lambda!189187))))

(assert (=> bs!1017456 (= (= lt!1770236 (ListMap!4142 Nil!51353)) (= lambda!189190 lambda!189177))))

(assert (=> bs!1017457 (= (= lt!1770236 (ListMap!4142 Nil!51353)) (= lambda!189190 lambda!189171))))

(assert (=> b!4614883 (= (= lt!1770236 (ListMap!4142 Nil!51353)) (= lambda!189190 lambda!189189))))

(assert (=> bs!1017447 (= (= lt!1770236 lt!1770171) (= lambda!189190 lambda!189179))))

(assert (=> b!4614883 true))

(declare-fun bs!1017458 () Bool)

(declare-fun d!1453652 () Bool)

(assert (= bs!1017458 (and d!1453652 b!4614883)))

(declare-fun lambda!189191 () Int)

(declare-fun lt!1770241 () ListMap!4141)

(assert (=> bs!1017458 (= (= lt!1770241 lt!1770236) (= lambda!189191 lambda!189190))))

(declare-fun bs!1017459 () Bool)

(assert (= bs!1017459 (and d!1453652 b!4614849)))

(assert (=> bs!1017459 (= (= lt!1770241 (ListMap!4142 Nil!51353)) (= lambda!189191 lambda!189178))))

(declare-fun bs!1017460 () Bool)

(assert (= bs!1017460 (and d!1453652 b!4614834)))

(assert (=> bs!1017460 (= (= lt!1770241 (ListMap!4142 Nil!51353)) (= lambda!189191 lambda!189172))))

(declare-fun bs!1017461 () Bool)

(assert (= bs!1017461 (and d!1453652 b!4614878)))

(assert (=> bs!1017461 (= (= lt!1770241 lt!1770215) (= lambda!189191 lambda!189186))))

(assert (=> bs!1017461 (= (= lt!1770241 (ListMap!4142 Nil!51353)) (= lambda!189191 lambda!189185))))

(declare-fun bs!1017462 () Bool)

(assert (= bs!1017462 (and d!1453652 d!1453638)))

(assert (=> bs!1017462 (not (= lambda!189191 lambda!189183))))

(assert (=> bs!1017460 (= (= lt!1770241 lt!1770145) (= lambda!189191 lambda!189173))))

(declare-fun bs!1017463 () Bool)

(assert (= bs!1017463 (and d!1453652 d!1453626)))

(assert (=> bs!1017463 (= (= lt!1770241 lt!1770176) (= lambda!189191 lambda!189180))))

(declare-fun bs!1017464 () Bool)

(assert (= bs!1017464 (and d!1453652 b!4614876)))

(assert (=> bs!1017464 (= (= lt!1770241 (ListMap!4142 Nil!51353)) (= lambda!189191 lambda!189184))))

(declare-fun bs!1017465 () Bool)

(assert (= bs!1017465 (and d!1453652 b!4614881)))

(assert (=> bs!1017465 (= (= lt!1770241 (ListMap!4142 Nil!51353)) (= lambda!189191 lambda!189188))))

(declare-fun bs!1017466 () Bool)

(assert (= bs!1017466 (and d!1453652 d!1453574)))

(assert (=> bs!1017466 (= (= lt!1770241 lt!1770150) (= lambda!189191 lambda!189174))))

(declare-fun bs!1017467 () Bool)

(assert (= bs!1017467 (and d!1453652 d!1453648)))

(assert (=> bs!1017467 (= (= lt!1770241 lt!1770220) (= lambda!189191 lambda!189187))))

(declare-fun bs!1017468 () Bool)

(assert (= bs!1017468 (and d!1453652 b!4614847)))

(assert (=> bs!1017468 (= (= lt!1770241 (ListMap!4142 Nil!51353)) (= lambda!189191 lambda!189177))))

(declare-fun bs!1017469 () Bool)

(assert (= bs!1017469 (and d!1453652 b!4614832)))

(assert (=> bs!1017469 (= (= lt!1770241 (ListMap!4142 Nil!51353)) (= lambda!189191 lambda!189171))))

(assert (=> bs!1017458 (= (= lt!1770241 (ListMap!4142 Nil!51353)) (= lambda!189191 lambda!189189))))

(assert (=> bs!1017459 (= (= lt!1770241 lt!1770171) (= lambda!189191 lambda!189179))))

(assert (=> d!1453652 true))

(declare-fun c!790126 () Bool)

(declare-fun bm!321720 () Bool)

(declare-fun call!321727 () Bool)

(assert (=> bm!321720 (= call!321727 (forall!10734 (ite c!790126 (toList!4837 (ListMap!4142 Nil!51353)) (t!358477 (Cons!51353 lt!1769831 lt!1769825))) (ite c!790126 lambda!189188 lambda!189190)))))

(declare-fun b!4614880 () Bool)

(declare-fun res!1933287 () Bool)

(declare-fun e!2878586 () Bool)

(assert (=> b!4614880 (=> (not res!1933287) (not e!2878586))))

(assert (=> b!4614880 (= res!1933287 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) lambda!189191))))

(declare-fun e!2878587 () ListMap!4141)

(assert (=> b!4614881 (= e!2878587 (ListMap!4142 Nil!51353))))

(declare-fun lt!1770246 () Unit!109882)

(declare-fun call!321726 () Unit!109882)

(assert (=> b!4614881 (= lt!1770246 call!321726)))

(assert (=> b!4614881 call!321727))

(declare-fun lt!1770239 () Unit!109882)

(assert (=> b!4614881 (= lt!1770239 lt!1770246)))

(declare-fun call!321725 () Bool)

(assert (=> b!4614881 call!321725))

(declare-fun lt!1770242 () Unit!109882)

(declare-fun Unit!109982 () Unit!109882)

(assert (=> b!4614881 (= lt!1770242 Unit!109982)))

(declare-fun b!4614882 () Bool)

(assert (=> b!4614882 (= e!2878586 (invariantList!1163 (toList!4837 lt!1770241)))))

(declare-fun bm!321722 () Bool)

(assert (=> bm!321722 (= call!321725 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) (ite c!790126 lambda!189188 lambda!189190)))))

(assert (=> b!4614883 (= e!2878587 lt!1770236)))

(declare-fun lt!1770244 () ListMap!4141)

(assert (=> b!4614883 (= lt!1770244 (+!1821 (ListMap!4142 Nil!51353) (h!57361 (Cons!51353 lt!1769831 lt!1769825))))))

(assert (=> b!4614883 (= lt!1770236 (addToMapMapFromBucket!897 (t!358477 (Cons!51353 lt!1769831 lt!1769825)) (+!1821 (ListMap!4142 Nil!51353) (h!57361 (Cons!51353 lt!1769831 lt!1769825)))))))

(declare-fun lt!1770247 () Unit!109882)

(assert (=> b!4614883 (= lt!1770247 call!321726)))

(assert (=> b!4614883 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) lambda!189189)))

(declare-fun lt!1770238 () Unit!109882)

(assert (=> b!4614883 (= lt!1770238 lt!1770247)))

(assert (=> b!4614883 (forall!10734 (toList!4837 lt!1770244) lambda!189190)))

(declare-fun lt!1770235 () Unit!109882)

(declare-fun Unit!109983 () Unit!109882)

(assert (=> b!4614883 (= lt!1770235 Unit!109983)))

(assert (=> b!4614883 call!321727))

(declare-fun lt!1770240 () Unit!109882)

(declare-fun Unit!109984 () Unit!109882)

(assert (=> b!4614883 (= lt!1770240 Unit!109984)))

(declare-fun lt!1770237 () Unit!109882)

(declare-fun Unit!109985 () Unit!109882)

(assert (=> b!4614883 (= lt!1770237 Unit!109985)))

(declare-fun lt!1770231 () Unit!109882)

(assert (=> b!4614883 (= lt!1770231 (forallContained!2957 (toList!4837 lt!1770244) lambda!189190 (h!57361 (Cons!51353 lt!1769831 lt!1769825))))))

(assert (=> b!4614883 (contains!14318 lt!1770244 (_1!29389 (h!57361 (Cons!51353 lt!1769831 lt!1769825))))))

(declare-fun lt!1770232 () Unit!109882)

(declare-fun Unit!109986 () Unit!109882)

(assert (=> b!4614883 (= lt!1770232 Unit!109986)))

(assert (=> b!4614883 (contains!14318 lt!1770236 (_1!29389 (h!57361 (Cons!51353 lt!1769831 lt!1769825))))))

(declare-fun lt!1770248 () Unit!109882)

(declare-fun Unit!109987 () Unit!109882)

(assert (=> b!4614883 (= lt!1770248 Unit!109987)))

(assert (=> b!4614883 (forall!10734 (Cons!51353 lt!1769831 lt!1769825) lambda!189190)))

(declare-fun lt!1770234 () Unit!109882)

(declare-fun Unit!109988 () Unit!109882)

(assert (=> b!4614883 (= lt!1770234 Unit!109988)))

(assert (=> b!4614883 (forall!10734 (toList!4837 lt!1770244) lambda!189190)))

(declare-fun lt!1770233 () Unit!109882)

(declare-fun Unit!109989 () Unit!109882)

(assert (=> b!4614883 (= lt!1770233 Unit!109989)))

(declare-fun lt!1770243 () Unit!109882)

(declare-fun Unit!109990 () Unit!109882)

(assert (=> b!4614883 (= lt!1770243 Unit!109990)))

(declare-fun lt!1770228 () Unit!109882)

(assert (=> b!4614883 (= lt!1770228 (addForallContainsKeyThenBeforeAdding!464 (ListMap!4142 Nil!51353) lt!1770236 (_1!29389 (h!57361 (Cons!51353 lt!1769831 lt!1769825))) (_2!29389 (h!57361 (Cons!51353 lt!1769831 lt!1769825)))))))

(assert (=> b!4614883 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) lambda!189190)))

(declare-fun lt!1770245 () Unit!109882)

(assert (=> b!4614883 (= lt!1770245 lt!1770228)))

(assert (=> b!4614883 (forall!10734 (toList!4837 (ListMap!4142 Nil!51353)) lambda!189190)))

(declare-fun lt!1770229 () Unit!109882)

(declare-fun Unit!109991 () Unit!109882)

(assert (=> b!4614883 (= lt!1770229 Unit!109991)))

(declare-fun res!1933288 () Bool)

(assert (=> b!4614883 (= res!1933288 (forall!10734 (Cons!51353 lt!1769831 lt!1769825) lambda!189190))))

(declare-fun e!2878588 () Bool)

(assert (=> b!4614883 (=> (not res!1933288) (not e!2878588))))

(assert (=> b!4614883 e!2878588))

(declare-fun lt!1770230 () Unit!109882)

(declare-fun Unit!109992 () Unit!109882)

(assert (=> b!4614883 (= lt!1770230 Unit!109992)))

(declare-fun b!4614884 () Bool)

(assert (=> b!4614884 (= e!2878588 call!321725)))

(assert (=> d!1453652 e!2878586))

(declare-fun res!1933286 () Bool)

(assert (=> d!1453652 (=> (not res!1933286) (not e!2878586))))

(assert (=> d!1453652 (= res!1933286 (forall!10734 (Cons!51353 lt!1769831 lt!1769825) lambda!189191))))

(assert (=> d!1453652 (= lt!1770241 e!2878587)))

(assert (=> d!1453652 (= c!790126 ((_ is Nil!51353) (Cons!51353 lt!1769831 lt!1769825)))))

(assert (=> d!1453652 (noDuplicateKeys!1436 (Cons!51353 lt!1769831 lt!1769825))))

(assert (=> d!1453652 (= (addToMapMapFromBucket!897 (Cons!51353 lt!1769831 lt!1769825) (ListMap!4142 Nil!51353)) lt!1770241)))

(declare-fun bm!321721 () Bool)

(assert (=> bm!321721 (= call!321726 (lemmaContainsAllItsOwnKeys!465 (ListMap!4142 Nil!51353)))))

(assert (= (and d!1453652 c!790126) b!4614881))

(assert (= (and d!1453652 (not c!790126)) b!4614883))

(assert (= (and b!4614883 res!1933288) b!4614884))

(assert (= (or b!4614881 b!4614883) bm!321721))

(assert (= (or b!4614881 b!4614884) bm!321722))

(assert (= (or b!4614881 b!4614883) bm!321720))

(assert (= (and d!1453652 res!1933286) b!4614880))

(assert (= (and b!4614880 res!1933287) b!4614882))

(assert (=> bm!321721 m!5447545))

(declare-fun m!5447715 () Bool)

(assert (=> d!1453652 m!5447715))

(declare-fun m!5447717 () Bool)

(assert (=> d!1453652 m!5447717))

(declare-fun m!5447719 () Bool)

(assert (=> b!4614882 m!5447719))

(declare-fun m!5447721 () Bool)

(assert (=> b!4614880 m!5447721))

(declare-fun m!5447723 () Bool)

(assert (=> bm!321722 m!5447723))

(declare-fun m!5447725 () Bool)

(assert (=> bm!321720 m!5447725))

(declare-fun m!5447727 () Bool)

(assert (=> b!4614883 m!5447727))

(declare-fun m!5447729 () Bool)

(assert (=> b!4614883 m!5447729))

(declare-fun m!5447731 () Bool)

(assert (=> b!4614883 m!5447731))

(declare-fun m!5447733 () Bool)

(assert (=> b!4614883 m!5447733))

(declare-fun m!5447735 () Bool)

(assert (=> b!4614883 m!5447735))

(assert (=> b!4614883 m!5447733))

(declare-fun m!5447737 () Bool)

(assert (=> b!4614883 m!5447737))

(declare-fun m!5447739 () Bool)

(assert (=> b!4614883 m!5447739))

(assert (=> b!4614883 m!5447735))

(declare-fun m!5447741 () Bool)

(assert (=> b!4614883 m!5447741))

(declare-fun m!5447743 () Bool)

(assert (=> b!4614883 m!5447743))

(assert (=> b!4614883 m!5447727))

(declare-fun m!5447745 () Bool)

(assert (=> b!4614883 m!5447745))

(assert (=> b!4614883 m!5447739))

(assert (=> b!4614630 d!1453652))

(declare-fun d!1453654 () Bool)

(declare-fun e!2878589 () Bool)

(assert (=> d!1453654 e!2878589))

(declare-fun res!1933290 () Bool)

(assert (=> d!1453654 (=> (not res!1933290) (not e!2878589))))

(declare-fun lt!1770251 () ListMap!4141)

(assert (=> d!1453654 (= res!1933290 (contains!14318 lt!1770251 (_1!29389 lt!1769831)))))

(declare-fun lt!1770250 () List!51477)

(assert (=> d!1453654 (= lt!1770251 (ListMap!4142 lt!1770250))))

(declare-fun lt!1770252 () Unit!109882)

(declare-fun lt!1770249 () Unit!109882)

(assert (=> d!1453654 (= lt!1770252 lt!1770249)))

(assert (=> d!1453654 (= (getValueByKey!1380 lt!1770250 (_1!29389 lt!1769831)) (Some!11465 (_2!29389 lt!1769831)))))

(assert (=> d!1453654 (= lt!1770249 (lemmaContainsTupThenGetReturnValue!816 lt!1770250 (_1!29389 lt!1769831) (_2!29389 lt!1769831)))))

(assert (=> d!1453654 (= lt!1770250 (insertNoDuplicatedKeys!324 (toList!4837 lt!1769820) (_1!29389 lt!1769831) (_2!29389 lt!1769831)))))

(assert (=> d!1453654 (= (+!1821 lt!1769820 lt!1769831) lt!1770251)))

(declare-fun b!4614885 () Bool)

(declare-fun res!1933289 () Bool)

(assert (=> b!4614885 (=> (not res!1933289) (not e!2878589))))

(assert (=> b!4614885 (= res!1933289 (= (getValueByKey!1380 (toList!4837 lt!1770251) (_1!29389 lt!1769831)) (Some!11465 (_2!29389 lt!1769831))))))

(declare-fun b!4614886 () Bool)

(assert (=> b!4614886 (= e!2878589 (contains!14322 (toList!4837 lt!1770251) lt!1769831))))

(assert (= (and d!1453654 res!1933290) b!4614885))

(assert (= (and b!4614885 res!1933289) b!4614886))

(declare-fun m!5447747 () Bool)

(assert (=> d!1453654 m!5447747))

(declare-fun m!5447749 () Bool)

(assert (=> d!1453654 m!5447749))

(declare-fun m!5447751 () Bool)

(assert (=> d!1453654 m!5447751))

(declare-fun m!5447753 () Bool)

(assert (=> d!1453654 m!5447753))

(declare-fun m!5447755 () Bool)

(assert (=> b!4614885 m!5447755))

(declare-fun m!5447757 () Bool)

(assert (=> b!4614886 m!5447757))

(assert (=> b!4614630 d!1453654))

(declare-fun d!1453656 () Bool)

(assert (=> d!1453656 (eq!779 (addToMapMapFromBucket!897 (Cons!51353 lt!1769831 lt!1769825) (ListMap!4142 Nil!51353)) (+!1821 (addToMapMapFromBucket!897 lt!1769825 (ListMap!4142 Nil!51353)) lt!1769831))))

(declare-fun lt!1770255 () Unit!109882)

(declare-fun choose!31067 (tuple2!52190 List!51477 ListMap!4141) Unit!109882)

(assert (=> d!1453656 (= lt!1770255 (choose!31067 lt!1769831 lt!1769825 (ListMap!4142 Nil!51353)))))

(assert (=> d!1453656 (noDuplicateKeys!1436 lt!1769825)))

(assert (=> d!1453656 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!30 lt!1769831 lt!1769825 (ListMap!4142 Nil!51353)) lt!1770255)))

(declare-fun bs!1017470 () Bool)

(assert (= bs!1017470 d!1453656))

(declare-fun m!5447759 () Bool)

(assert (=> bs!1017470 m!5447759))

(assert (=> bs!1017470 m!5447589))

(assert (=> bs!1017470 m!5447101))

(assert (=> bs!1017470 m!5447101))

(declare-fun m!5447761 () Bool)

(assert (=> bs!1017470 m!5447761))

(assert (=> bs!1017470 m!5447121))

(assert (=> bs!1017470 m!5447121))

(assert (=> bs!1017470 m!5447761))

(declare-fun m!5447763 () Bool)

(assert (=> bs!1017470 m!5447763))

(assert (=> b!4614630 d!1453656))

(declare-fun d!1453658 () Bool)

(declare-fun res!1933291 () Bool)

(declare-fun e!2878590 () Bool)

(assert (=> d!1453658 (=> res!1933291 e!2878590)))

(assert (=> d!1453658 (= res!1933291 (not ((_ is Cons!51353) oldBucket!40)))))

(assert (=> d!1453658 (= (noDuplicateKeys!1436 oldBucket!40) e!2878590)))

(declare-fun b!4614887 () Bool)

(declare-fun e!2878591 () Bool)

(assert (=> b!4614887 (= e!2878590 e!2878591)))

(declare-fun res!1933292 () Bool)

(assert (=> b!4614887 (=> (not res!1933292) (not e!2878591))))

(assert (=> b!4614887 (= res!1933292 (not (containsKey!2312 (t!358477 oldBucket!40) (_1!29389 (h!57361 oldBucket!40)))))))

(declare-fun b!4614888 () Bool)

(assert (=> b!4614888 (= e!2878591 (noDuplicateKeys!1436 (t!358477 oldBucket!40)))))

(assert (= (and d!1453658 (not res!1933291)) b!4614887))

(assert (= (and b!4614887 res!1933292) b!4614888))

(declare-fun m!5447765 () Bool)

(assert (=> b!4614887 m!5447765))

(declare-fun m!5447767 () Bool)

(assert (=> b!4614888 m!5447767))

(assert (=> start!461584 d!1453658))

(declare-fun b!4614889 () Bool)

(declare-fun e!2878592 () Unit!109882)

(declare-fun e!2878593 () Unit!109882)

(assert (=> b!4614889 (= e!2878592 e!2878593)))

(declare-fun c!790129 () Bool)

(declare-fun call!321728 () Bool)

(assert (=> b!4614889 (= c!790129 call!321728)))

(declare-fun b!4614890 () Bool)

(declare-fun Unit!109993 () Unit!109882)

(assert (=> b!4614890 (= e!2878593 Unit!109993)))

(declare-fun b!4614891 () Bool)

(declare-fun e!2878596 () List!51480)

(assert (=> b!4614891 (= e!2878596 (getKeysList!614 (toList!4837 lt!1769819)))))

(declare-fun b!4614892 () Bool)

(assert (=> b!4614892 (= e!2878596 (keys!18043 lt!1769819))))

(declare-fun b!4614894 () Bool)

(declare-fun e!2878594 () Bool)

(assert (=> b!4614894 (= e!2878594 (contains!14320 (keys!18043 lt!1769819) key!4968))))

(declare-fun bm!321723 () Bool)

(assert (=> bm!321723 (= call!321728 (contains!14320 e!2878596 key!4968))))

(declare-fun c!790127 () Bool)

(declare-fun c!790128 () Bool)

(assert (=> bm!321723 (= c!790127 c!790128)))

(declare-fun b!4614895 () Bool)

(declare-fun e!2878595 () Bool)

(assert (=> b!4614895 (= e!2878595 (not (contains!14320 (keys!18043 lt!1769819) key!4968)))))

(declare-fun b!4614896 () Bool)

(assert (=> b!4614896 false))

(declare-fun lt!1770258 () Unit!109882)

(declare-fun lt!1770262 () Unit!109882)

(assert (=> b!4614896 (= lt!1770258 lt!1770262)))

(assert (=> b!4614896 (containsKey!2314 (toList!4837 lt!1769819) key!4968)))

(assert (=> b!4614896 (= lt!1770262 (lemmaInGetKeysListThenContainsKey!613 (toList!4837 lt!1769819) key!4968))))

(declare-fun Unit!109994 () Unit!109882)

(assert (=> b!4614896 (= e!2878593 Unit!109994)))

(declare-fun b!4614897 () Bool)

(declare-fun lt!1770257 () Unit!109882)

(assert (=> b!4614897 (= e!2878592 lt!1770257)))

(declare-fun lt!1770259 () Unit!109882)

(assert (=> b!4614897 (= lt!1770259 (lemmaContainsKeyImpliesGetValueByKeyDefined!1282 (toList!4837 lt!1769819) key!4968))))

(assert (=> b!4614897 (isDefined!8731 (getValueByKey!1380 (toList!4837 lt!1769819) key!4968))))

(declare-fun lt!1770263 () Unit!109882)

(assert (=> b!4614897 (= lt!1770263 lt!1770259)))

(assert (=> b!4614897 (= lt!1770257 (lemmaInListThenGetKeysListContains!609 (toList!4837 lt!1769819) key!4968))))

(assert (=> b!4614897 call!321728))

(declare-fun b!4614893 () Bool)

(declare-fun e!2878597 () Bool)

(assert (=> b!4614893 (= e!2878597 e!2878594)))

(declare-fun res!1933294 () Bool)

(assert (=> b!4614893 (=> (not res!1933294) (not e!2878594))))

(assert (=> b!4614893 (= res!1933294 (isDefined!8731 (getValueByKey!1380 (toList!4837 lt!1769819) key!4968)))))

(declare-fun d!1453660 () Bool)

(assert (=> d!1453660 e!2878597))

(declare-fun res!1933293 () Bool)

(assert (=> d!1453660 (=> res!1933293 e!2878597)))

(assert (=> d!1453660 (= res!1933293 e!2878595)))

(declare-fun res!1933295 () Bool)

(assert (=> d!1453660 (=> (not res!1933295) (not e!2878595))))

(declare-fun lt!1770260 () Bool)

(assert (=> d!1453660 (= res!1933295 (not lt!1770260))))

(declare-fun lt!1770256 () Bool)

(assert (=> d!1453660 (= lt!1770260 lt!1770256)))

(declare-fun lt!1770261 () Unit!109882)

(assert (=> d!1453660 (= lt!1770261 e!2878592)))

(assert (=> d!1453660 (= c!790128 lt!1770256)))

(assert (=> d!1453660 (= lt!1770256 (containsKey!2314 (toList!4837 lt!1769819) key!4968))))

(assert (=> d!1453660 (= (contains!14318 lt!1769819 key!4968) lt!1770260)))

(assert (= (and d!1453660 c!790128) b!4614897))

(assert (= (and d!1453660 (not c!790128)) b!4614889))

(assert (= (and b!4614889 c!790129) b!4614896))

(assert (= (and b!4614889 (not c!790129)) b!4614890))

(assert (= (or b!4614897 b!4614889) bm!321723))

(assert (= (and bm!321723 c!790127) b!4614891))

(assert (= (and bm!321723 (not c!790127)) b!4614892))

(assert (= (and d!1453660 res!1933295) b!4614895))

(assert (= (and d!1453660 (not res!1933293)) b!4614893))

(assert (= (and b!4614893 res!1933294) b!4614894))

(declare-fun m!5447769 () Bool)

(assert (=> bm!321723 m!5447769))

(declare-fun m!5447771 () Bool)

(assert (=> b!4614895 m!5447771))

(assert (=> b!4614895 m!5447771))

(declare-fun m!5447773 () Bool)

(assert (=> b!4614895 m!5447773))

(assert (=> b!4614892 m!5447771))

(declare-fun m!5447775 () Bool)

(assert (=> b!4614893 m!5447775))

(assert (=> b!4614893 m!5447775))

(declare-fun m!5447777 () Bool)

(assert (=> b!4614893 m!5447777))

(declare-fun m!5447779 () Bool)

(assert (=> b!4614896 m!5447779))

(declare-fun m!5447781 () Bool)

(assert (=> b!4614896 m!5447781))

(assert (=> d!1453660 m!5447779))

(declare-fun m!5447783 () Bool)

(assert (=> b!4614897 m!5447783))

(assert (=> b!4614897 m!5447775))

(assert (=> b!4614897 m!5447775))

(assert (=> b!4614897 m!5447777))

(declare-fun m!5447785 () Bool)

(assert (=> b!4614897 m!5447785))

(declare-fun m!5447787 () Bool)

(assert (=> b!4614891 m!5447787))

(assert (=> b!4614894 m!5447771))

(assert (=> b!4614894 m!5447771))

(assert (=> b!4614894 m!5447773))

(assert (=> b!4614620 d!1453660))

(declare-fun bs!1017471 () Bool)

(declare-fun d!1453662 () Bool)

(assert (= bs!1017471 (and d!1453662 b!4614636)))

(declare-fun lambda!189192 () Int)

(assert (=> bs!1017471 (= lambda!189192 lambda!189076)))

(declare-fun bs!1017472 () Bool)

(assert (= bs!1017472 (and d!1453662 d!1453550)))

(assert (=> bs!1017472 (= lambda!189192 lambda!189085)))

(declare-fun bs!1017473 () Bool)

(assert (= bs!1017473 (and d!1453662 d!1453562)))

(assert (=> bs!1017473 (= lambda!189192 lambda!189086)))

(declare-fun bs!1017474 () Bool)

(assert (= bs!1017474 (and d!1453662 d!1453572)))

(assert (=> bs!1017474 (= lambda!189192 lambda!189089)))

(declare-fun lt!1770264 () ListMap!4141)

(assert (=> d!1453662 (invariantList!1163 (toList!4837 lt!1770264))))

(declare-fun e!2878598 () ListMap!4141)

(assert (=> d!1453662 (= lt!1770264 e!2878598)))

(declare-fun c!790130 () Bool)

(assert (=> d!1453662 (= c!790130 ((_ is Cons!51354) lt!1769823))))

(assert (=> d!1453662 (forall!10732 lt!1769823 lambda!189192)))

(assert (=> d!1453662 (= (extractMap!1492 lt!1769823) lt!1770264)))

(declare-fun b!4614898 () Bool)

(assert (=> b!4614898 (= e!2878598 (addToMapMapFromBucket!897 (_2!29390 (h!57362 lt!1769823)) (extractMap!1492 (t!358478 lt!1769823))))))

(declare-fun b!4614899 () Bool)

(assert (=> b!4614899 (= e!2878598 (ListMap!4142 Nil!51353))))

(assert (= (and d!1453662 c!790130) b!4614898))

(assert (= (and d!1453662 (not c!790130)) b!4614899))

(declare-fun m!5447789 () Bool)

(assert (=> d!1453662 m!5447789))

(declare-fun m!5447791 () Bool)

(assert (=> d!1453662 m!5447791))

(declare-fun m!5447793 () Bool)

(assert (=> b!4614898 m!5447793))

(assert (=> b!4614898 m!5447793))

(declare-fun m!5447795 () Bool)

(assert (=> b!4614898 m!5447795))

(assert (=> b!4614620 d!1453662))

(declare-fun b!4614910 () Bool)

(declare-fun e!2878604 () List!51477)

(assert (=> b!4614910 (= e!2878604 (Cons!51353 (h!57361 oldBucket!40) (removePairForKey!1059 (t!358477 oldBucket!40) key!4968)))))

(declare-fun b!4614908 () Bool)

(declare-fun e!2878603 () List!51477)

(assert (=> b!4614908 (= e!2878603 (t!358477 oldBucket!40))))

(declare-fun b!4614909 () Bool)

(assert (=> b!4614909 (= e!2878603 e!2878604)))

(declare-fun c!790135 () Bool)

(assert (=> b!4614909 (= c!790135 ((_ is Cons!51353) oldBucket!40))))

(declare-fun d!1453664 () Bool)

(declare-fun lt!1770267 () List!51477)

(assert (=> d!1453664 (not (containsKey!2312 lt!1770267 key!4968))))

(assert (=> d!1453664 (= lt!1770267 e!2878603)))

(declare-fun c!790136 () Bool)

(assert (=> d!1453664 (= c!790136 (and ((_ is Cons!51353) oldBucket!40) (= (_1!29389 (h!57361 oldBucket!40)) key!4968)))))

(assert (=> d!1453664 (noDuplicateKeys!1436 oldBucket!40)))

(assert (=> d!1453664 (= (removePairForKey!1059 oldBucket!40 key!4968) lt!1770267)))

(declare-fun b!4614911 () Bool)

(assert (=> b!4614911 (= e!2878604 Nil!51353)))

(assert (= (and d!1453664 c!790136) b!4614908))

(assert (= (and d!1453664 (not c!790136)) b!4614909))

(assert (= (and b!4614909 c!790135) b!4614910))

(assert (= (and b!4614909 (not c!790135)) b!4614911))

(declare-fun m!5447797 () Bool)

(assert (=> b!4614910 m!5447797))

(declare-fun m!5447799 () Bool)

(assert (=> d!1453664 m!5447799))

(assert (=> d!1453664 m!5447079))

(assert (=> b!4614634 d!1453664))

(declare-fun d!1453666 () Bool)

(assert (=> d!1453666 (= (eq!779 lt!1769829 lt!1769819) (= (content!8720 (toList!4837 lt!1769829)) (content!8720 (toList!4837 lt!1769819))))))

(declare-fun bs!1017475 () Bool)

(assert (= bs!1017475 d!1453666))

(assert (=> bs!1017475 m!5447665))

(declare-fun m!5447801 () Bool)

(assert (=> bs!1017475 m!5447801))

(assert (=> b!4614624 d!1453666))

(declare-fun d!1453668 () Bool)

(assert (=> d!1453668 (= (tail!8083 oldBucket!40) (t!358477 oldBucket!40))))

(assert (=> b!4614633 d!1453668))

(declare-fun bs!1017476 () Bool)

(declare-fun b!4614913 () Bool)

(assert (= bs!1017476 (and b!4614913 b!4614883)))

(declare-fun lambda!189193 () Int)

(assert (=> bs!1017476 (= (= lt!1769827 lt!1770236) (= lambda!189193 lambda!189190))))

(declare-fun bs!1017477 () Bool)

(assert (= bs!1017477 (and b!4614913 b!4614849)))

(assert (=> bs!1017477 (= (= lt!1769827 (ListMap!4142 Nil!51353)) (= lambda!189193 lambda!189178))))

(declare-fun bs!1017478 () Bool)

(assert (= bs!1017478 (and b!4614913 b!4614834)))

(assert (=> bs!1017478 (= (= lt!1769827 (ListMap!4142 Nil!51353)) (= lambda!189193 lambda!189172))))

(declare-fun bs!1017479 () Bool)

(assert (= bs!1017479 (and b!4614913 d!1453652)))

(assert (=> bs!1017479 (= (= lt!1769827 lt!1770241) (= lambda!189193 lambda!189191))))

(declare-fun bs!1017480 () Bool)

(assert (= bs!1017480 (and b!4614913 b!4614878)))

(assert (=> bs!1017480 (= (= lt!1769827 lt!1770215) (= lambda!189193 lambda!189186))))

(assert (=> bs!1017480 (= (= lt!1769827 (ListMap!4142 Nil!51353)) (= lambda!189193 lambda!189185))))

(declare-fun bs!1017481 () Bool)

(assert (= bs!1017481 (and b!4614913 d!1453638)))

(assert (=> bs!1017481 (not (= lambda!189193 lambda!189183))))

(assert (=> bs!1017478 (= (= lt!1769827 lt!1770145) (= lambda!189193 lambda!189173))))

(declare-fun bs!1017482 () Bool)

(assert (= bs!1017482 (and b!4614913 d!1453626)))

(assert (=> bs!1017482 (= (= lt!1769827 lt!1770176) (= lambda!189193 lambda!189180))))

(declare-fun bs!1017483 () Bool)

(assert (= bs!1017483 (and b!4614913 b!4614876)))

(assert (=> bs!1017483 (= (= lt!1769827 (ListMap!4142 Nil!51353)) (= lambda!189193 lambda!189184))))

(declare-fun bs!1017484 () Bool)

(assert (= bs!1017484 (and b!4614913 b!4614881)))

(assert (=> bs!1017484 (= (= lt!1769827 (ListMap!4142 Nil!51353)) (= lambda!189193 lambda!189188))))

(declare-fun bs!1017485 () Bool)

(assert (= bs!1017485 (and b!4614913 d!1453574)))

(assert (=> bs!1017485 (= (= lt!1769827 lt!1770150) (= lambda!189193 lambda!189174))))

(declare-fun bs!1017486 () Bool)

(assert (= bs!1017486 (and b!4614913 d!1453648)))

(assert (=> bs!1017486 (= (= lt!1769827 lt!1770220) (= lambda!189193 lambda!189187))))

(declare-fun bs!1017487 () Bool)

(assert (= bs!1017487 (and b!4614913 b!4614847)))

(assert (=> bs!1017487 (= (= lt!1769827 (ListMap!4142 Nil!51353)) (= lambda!189193 lambda!189177))))

(declare-fun bs!1017488 () Bool)

(assert (= bs!1017488 (and b!4614913 b!4614832)))

(assert (=> bs!1017488 (= (= lt!1769827 (ListMap!4142 Nil!51353)) (= lambda!189193 lambda!189171))))

(assert (=> bs!1017476 (= (= lt!1769827 (ListMap!4142 Nil!51353)) (= lambda!189193 lambda!189189))))

(assert (=> bs!1017477 (= (= lt!1769827 lt!1770171) (= lambda!189193 lambda!189179))))

(assert (=> b!4614913 true))

(declare-fun bs!1017489 () Bool)

(declare-fun b!4614915 () Bool)

(assert (= bs!1017489 (and b!4614915 b!4614883)))

(declare-fun lambda!189194 () Int)

(assert (=> bs!1017489 (= (= lt!1769827 lt!1770236) (= lambda!189194 lambda!189190))))

(declare-fun bs!1017490 () Bool)

(assert (= bs!1017490 (and b!4614915 b!4614834)))

(assert (=> bs!1017490 (= (= lt!1769827 (ListMap!4142 Nil!51353)) (= lambda!189194 lambda!189172))))

(declare-fun bs!1017491 () Bool)

(assert (= bs!1017491 (and b!4614915 d!1453652)))

(assert (=> bs!1017491 (= (= lt!1769827 lt!1770241) (= lambda!189194 lambda!189191))))

(declare-fun bs!1017492 () Bool)

(assert (= bs!1017492 (and b!4614915 b!4614878)))

(assert (=> bs!1017492 (= (= lt!1769827 lt!1770215) (= lambda!189194 lambda!189186))))

(assert (=> bs!1017492 (= (= lt!1769827 (ListMap!4142 Nil!51353)) (= lambda!189194 lambda!189185))))

(declare-fun bs!1017493 () Bool)

(assert (= bs!1017493 (and b!4614915 d!1453638)))

(assert (=> bs!1017493 (not (= lambda!189194 lambda!189183))))

(assert (=> bs!1017490 (= (= lt!1769827 lt!1770145) (= lambda!189194 lambda!189173))))

(declare-fun bs!1017494 () Bool)

(assert (= bs!1017494 (and b!4614915 d!1453626)))

(assert (=> bs!1017494 (= (= lt!1769827 lt!1770176) (= lambda!189194 lambda!189180))))

(declare-fun bs!1017495 () Bool)

(assert (= bs!1017495 (and b!4614915 b!4614876)))

(assert (=> bs!1017495 (= (= lt!1769827 (ListMap!4142 Nil!51353)) (= lambda!189194 lambda!189184))))

(declare-fun bs!1017496 () Bool)

(assert (= bs!1017496 (and b!4614915 b!4614849)))

(assert (=> bs!1017496 (= (= lt!1769827 (ListMap!4142 Nil!51353)) (= lambda!189194 lambda!189178))))

(declare-fun bs!1017497 () Bool)

(assert (= bs!1017497 (and b!4614915 b!4614913)))

(assert (=> bs!1017497 (= lambda!189194 lambda!189193)))

(declare-fun bs!1017498 () Bool)

(assert (= bs!1017498 (and b!4614915 b!4614881)))

(assert (=> bs!1017498 (= (= lt!1769827 (ListMap!4142 Nil!51353)) (= lambda!189194 lambda!189188))))

(declare-fun bs!1017499 () Bool)

(assert (= bs!1017499 (and b!4614915 d!1453574)))

(assert (=> bs!1017499 (= (= lt!1769827 lt!1770150) (= lambda!189194 lambda!189174))))

(declare-fun bs!1017500 () Bool)

(assert (= bs!1017500 (and b!4614915 d!1453648)))

(assert (=> bs!1017500 (= (= lt!1769827 lt!1770220) (= lambda!189194 lambda!189187))))

(declare-fun bs!1017501 () Bool)

(assert (= bs!1017501 (and b!4614915 b!4614847)))

(assert (=> bs!1017501 (= (= lt!1769827 (ListMap!4142 Nil!51353)) (= lambda!189194 lambda!189177))))

(declare-fun bs!1017502 () Bool)

(assert (= bs!1017502 (and b!4614915 b!4614832)))

(assert (=> bs!1017502 (= (= lt!1769827 (ListMap!4142 Nil!51353)) (= lambda!189194 lambda!189171))))

(assert (=> bs!1017489 (= (= lt!1769827 (ListMap!4142 Nil!51353)) (= lambda!189194 lambda!189189))))

(assert (=> bs!1017496 (= (= lt!1769827 lt!1770171) (= lambda!189194 lambda!189179))))

(assert (=> b!4614915 true))

(declare-fun lambda!189195 () Int)

(declare-fun lt!1770276 () ListMap!4141)

(assert (=> bs!1017489 (= (= lt!1770276 lt!1770236) (= lambda!189195 lambda!189190))))

(assert (=> bs!1017490 (= (= lt!1770276 (ListMap!4142 Nil!51353)) (= lambda!189195 lambda!189172))))

(assert (=> bs!1017491 (= (= lt!1770276 lt!1770241) (= lambda!189195 lambda!189191))))

(assert (=> bs!1017492 (= (= lt!1770276 lt!1770215) (= lambda!189195 lambda!189186))))

(assert (=> bs!1017492 (= (= lt!1770276 (ListMap!4142 Nil!51353)) (= lambda!189195 lambda!189185))))

(assert (=> bs!1017493 (not (= lambda!189195 lambda!189183))))

(assert (=> bs!1017490 (= (= lt!1770276 lt!1770145) (= lambda!189195 lambda!189173))))

(assert (=> bs!1017494 (= (= lt!1770276 lt!1770176) (= lambda!189195 lambda!189180))))

(assert (=> bs!1017495 (= (= lt!1770276 (ListMap!4142 Nil!51353)) (= lambda!189195 lambda!189184))))

(assert (=> b!4614915 (= (= lt!1770276 lt!1769827) (= lambda!189195 lambda!189194))))

(assert (=> bs!1017496 (= (= lt!1770276 (ListMap!4142 Nil!51353)) (= lambda!189195 lambda!189178))))

(assert (=> bs!1017497 (= (= lt!1770276 lt!1769827) (= lambda!189195 lambda!189193))))

(assert (=> bs!1017498 (= (= lt!1770276 (ListMap!4142 Nil!51353)) (= lambda!189195 lambda!189188))))

(assert (=> bs!1017499 (= (= lt!1770276 lt!1770150) (= lambda!189195 lambda!189174))))

(assert (=> bs!1017500 (= (= lt!1770276 lt!1770220) (= lambda!189195 lambda!189187))))

(assert (=> bs!1017501 (= (= lt!1770276 (ListMap!4142 Nil!51353)) (= lambda!189195 lambda!189177))))

(assert (=> bs!1017502 (= (= lt!1770276 (ListMap!4142 Nil!51353)) (= lambda!189195 lambda!189171))))

(assert (=> bs!1017489 (= (= lt!1770276 (ListMap!4142 Nil!51353)) (= lambda!189195 lambda!189189))))

(assert (=> bs!1017496 (= (= lt!1770276 lt!1770171) (= lambda!189195 lambda!189179))))

(assert (=> b!4614915 true))

(declare-fun bs!1017503 () Bool)

(declare-fun d!1453670 () Bool)

(assert (= bs!1017503 (and d!1453670 b!4614883)))

(declare-fun lambda!189196 () Int)

(declare-fun lt!1770281 () ListMap!4141)

(assert (=> bs!1017503 (= (= lt!1770281 lt!1770236) (= lambda!189196 lambda!189190))))

(declare-fun bs!1017504 () Bool)

(assert (= bs!1017504 (and d!1453670 b!4614834)))

(assert (=> bs!1017504 (= (= lt!1770281 (ListMap!4142 Nil!51353)) (= lambda!189196 lambda!189172))))

(declare-fun bs!1017505 () Bool)

(assert (= bs!1017505 (and d!1453670 d!1453652)))

(assert (=> bs!1017505 (= (= lt!1770281 lt!1770241) (= lambda!189196 lambda!189191))))

(declare-fun bs!1017506 () Bool)

(assert (= bs!1017506 (and d!1453670 b!4614878)))

(assert (=> bs!1017506 (= (= lt!1770281 lt!1770215) (= lambda!189196 lambda!189186))))

(declare-fun bs!1017507 () Bool)

(assert (= bs!1017507 (and d!1453670 d!1453638)))

(assert (=> bs!1017507 (not (= lambda!189196 lambda!189183))))

(assert (=> bs!1017504 (= (= lt!1770281 lt!1770145) (= lambda!189196 lambda!189173))))

(declare-fun bs!1017508 () Bool)

(assert (= bs!1017508 (and d!1453670 d!1453626)))

(assert (=> bs!1017508 (= (= lt!1770281 lt!1770176) (= lambda!189196 lambda!189180))))

(declare-fun bs!1017509 () Bool)

(assert (= bs!1017509 (and d!1453670 b!4614876)))

(assert (=> bs!1017509 (= (= lt!1770281 (ListMap!4142 Nil!51353)) (= lambda!189196 lambda!189184))))

(declare-fun bs!1017510 () Bool)

(assert (= bs!1017510 (and d!1453670 b!4614915)))

(assert (=> bs!1017510 (= (= lt!1770281 lt!1769827) (= lambda!189196 lambda!189194))))

(declare-fun bs!1017511 () Bool)

(assert (= bs!1017511 (and d!1453670 b!4614849)))

(assert (=> bs!1017511 (= (= lt!1770281 (ListMap!4142 Nil!51353)) (= lambda!189196 lambda!189178))))

(declare-fun bs!1017512 () Bool)

(assert (= bs!1017512 (and d!1453670 b!4614913)))

(assert (=> bs!1017512 (= (= lt!1770281 lt!1769827) (= lambda!189196 lambda!189193))))

(declare-fun bs!1017513 () Bool)

(assert (= bs!1017513 (and d!1453670 b!4614881)))

(assert (=> bs!1017513 (= (= lt!1770281 (ListMap!4142 Nil!51353)) (= lambda!189196 lambda!189188))))

(declare-fun bs!1017514 () Bool)

(assert (= bs!1017514 (and d!1453670 d!1453574)))

(assert (=> bs!1017514 (= (= lt!1770281 lt!1770150) (= lambda!189196 lambda!189174))))

(declare-fun bs!1017515 () Bool)

(assert (= bs!1017515 (and d!1453670 d!1453648)))

(assert (=> bs!1017515 (= (= lt!1770281 lt!1770220) (= lambda!189196 lambda!189187))))

(declare-fun bs!1017516 () Bool)

(assert (= bs!1017516 (and d!1453670 b!4614847)))

(assert (=> bs!1017516 (= (= lt!1770281 (ListMap!4142 Nil!51353)) (= lambda!189196 lambda!189177))))

(declare-fun bs!1017517 () Bool)

(assert (= bs!1017517 (and d!1453670 b!4614832)))

(assert (=> bs!1017517 (= (= lt!1770281 (ListMap!4142 Nil!51353)) (= lambda!189196 lambda!189171))))

(assert (=> bs!1017506 (= (= lt!1770281 (ListMap!4142 Nil!51353)) (= lambda!189196 lambda!189185))))

(assert (=> bs!1017510 (= (= lt!1770281 lt!1770276) (= lambda!189196 lambda!189195))))

(assert (=> bs!1017503 (= (= lt!1770281 (ListMap!4142 Nil!51353)) (= lambda!189196 lambda!189189))))

(assert (=> bs!1017511 (= (= lt!1770281 lt!1770171) (= lambda!189196 lambda!189179))))

(assert (=> d!1453670 true))

(declare-fun call!321731 () Bool)

(declare-fun c!790137 () Bool)

(declare-fun bm!321724 () Bool)

(assert (=> bm!321724 (= call!321731 (forall!10734 (ite c!790137 (toList!4837 lt!1769827) (t!358477 oldBucket!40)) (ite c!790137 lambda!189193 lambda!189195)))))

(declare-fun b!4614912 () Bool)

(declare-fun res!1933297 () Bool)

(declare-fun e!2878605 () Bool)

(assert (=> b!4614912 (=> (not res!1933297) (not e!2878605))))

(assert (=> b!4614912 (= res!1933297 (forall!10734 (toList!4837 lt!1769827) lambda!189196))))

(declare-fun e!2878606 () ListMap!4141)

(assert (=> b!4614913 (= e!2878606 lt!1769827)))

(declare-fun lt!1770286 () Unit!109882)

(declare-fun call!321730 () Unit!109882)

(assert (=> b!4614913 (= lt!1770286 call!321730)))

(assert (=> b!4614913 call!321731))

(declare-fun lt!1770279 () Unit!109882)

(assert (=> b!4614913 (= lt!1770279 lt!1770286)))

(declare-fun call!321729 () Bool)

(assert (=> b!4614913 call!321729))

(declare-fun lt!1770282 () Unit!109882)

(declare-fun Unit!109995 () Unit!109882)

(assert (=> b!4614913 (= lt!1770282 Unit!109995)))

(declare-fun b!4614914 () Bool)

(assert (=> b!4614914 (= e!2878605 (invariantList!1163 (toList!4837 lt!1770281)))))

(declare-fun bm!321726 () Bool)

(assert (=> bm!321726 (= call!321729 (forall!10734 (toList!4837 lt!1769827) (ite c!790137 lambda!189193 lambda!189195)))))

(assert (=> b!4614915 (= e!2878606 lt!1770276)))

(declare-fun lt!1770284 () ListMap!4141)

(assert (=> b!4614915 (= lt!1770284 (+!1821 lt!1769827 (h!57361 oldBucket!40)))))

(assert (=> b!4614915 (= lt!1770276 (addToMapMapFromBucket!897 (t!358477 oldBucket!40) (+!1821 lt!1769827 (h!57361 oldBucket!40))))))

(declare-fun lt!1770287 () Unit!109882)

(assert (=> b!4614915 (= lt!1770287 call!321730)))

(assert (=> b!4614915 (forall!10734 (toList!4837 lt!1769827) lambda!189194)))

(declare-fun lt!1770278 () Unit!109882)

(assert (=> b!4614915 (= lt!1770278 lt!1770287)))

(assert (=> b!4614915 (forall!10734 (toList!4837 lt!1770284) lambda!189195)))

(declare-fun lt!1770275 () Unit!109882)

(declare-fun Unit!109996 () Unit!109882)

(assert (=> b!4614915 (= lt!1770275 Unit!109996)))

(assert (=> b!4614915 call!321731))

(declare-fun lt!1770280 () Unit!109882)

(declare-fun Unit!109997 () Unit!109882)

(assert (=> b!4614915 (= lt!1770280 Unit!109997)))

(declare-fun lt!1770277 () Unit!109882)

(declare-fun Unit!109998 () Unit!109882)

(assert (=> b!4614915 (= lt!1770277 Unit!109998)))

(declare-fun lt!1770271 () Unit!109882)

(assert (=> b!4614915 (= lt!1770271 (forallContained!2957 (toList!4837 lt!1770284) lambda!189195 (h!57361 oldBucket!40)))))

(assert (=> b!4614915 (contains!14318 lt!1770284 (_1!29389 (h!57361 oldBucket!40)))))

(declare-fun lt!1770272 () Unit!109882)

(declare-fun Unit!109999 () Unit!109882)

(assert (=> b!4614915 (= lt!1770272 Unit!109999)))

(assert (=> b!4614915 (contains!14318 lt!1770276 (_1!29389 (h!57361 oldBucket!40)))))

(declare-fun lt!1770288 () Unit!109882)

(declare-fun Unit!110000 () Unit!109882)

(assert (=> b!4614915 (= lt!1770288 Unit!110000)))

(assert (=> b!4614915 (forall!10734 oldBucket!40 lambda!189195)))

(declare-fun lt!1770274 () Unit!109882)

(declare-fun Unit!110001 () Unit!109882)

(assert (=> b!4614915 (= lt!1770274 Unit!110001)))

(assert (=> b!4614915 (forall!10734 (toList!4837 lt!1770284) lambda!189195)))

(declare-fun lt!1770273 () Unit!109882)

(declare-fun Unit!110002 () Unit!109882)

(assert (=> b!4614915 (= lt!1770273 Unit!110002)))

(declare-fun lt!1770283 () Unit!109882)

(declare-fun Unit!110003 () Unit!109882)

(assert (=> b!4614915 (= lt!1770283 Unit!110003)))

(declare-fun lt!1770268 () Unit!109882)

(assert (=> b!4614915 (= lt!1770268 (addForallContainsKeyThenBeforeAdding!464 lt!1769827 lt!1770276 (_1!29389 (h!57361 oldBucket!40)) (_2!29389 (h!57361 oldBucket!40))))))

(assert (=> b!4614915 (forall!10734 (toList!4837 lt!1769827) lambda!189195)))

(declare-fun lt!1770285 () Unit!109882)

(assert (=> b!4614915 (= lt!1770285 lt!1770268)))

(assert (=> b!4614915 (forall!10734 (toList!4837 lt!1769827) lambda!189195)))

(declare-fun lt!1770269 () Unit!109882)

(declare-fun Unit!110004 () Unit!109882)

(assert (=> b!4614915 (= lt!1770269 Unit!110004)))

(declare-fun res!1933298 () Bool)

(assert (=> b!4614915 (= res!1933298 (forall!10734 oldBucket!40 lambda!189195))))

(declare-fun e!2878607 () Bool)

(assert (=> b!4614915 (=> (not res!1933298) (not e!2878607))))

(assert (=> b!4614915 e!2878607))

(declare-fun lt!1770270 () Unit!109882)

(declare-fun Unit!110005 () Unit!109882)

(assert (=> b!4614915 (= lt!1770270 Unit!110005)))

(declare-fun b!4614916 () Bool)

(assert (=> b!4614916 (= e!2878607 call!321729)))

(assert (=> d!1453670 e!2878605))

(declare-fun res!1933296 () Bool)

(assert (=> d!1453670 (=> (not res!1933296) (not e!2878605))))

(assert (=> d!1453670 (= res!1933296 (forall!10734 oldBucket!40 lambda!189196))))

(assert (=> d!1453670 (= lt!1770281 e!2878606)))

(assert (=> d!1453670 (= c!790137 ((_ is Nil!51353) oldBucket!40))))

(assert (=> d!1453670 (noDuplicateKeys!1436 oldBucket!40)))

(assert (=> d!1453670 (= (addToMapMapFromBucket!897 oldBucket!40 lt!1769827) lt!1770281)))

(declare-fun bm!321725 () Bool)

(assert (=> bm!321725 (= call!321730 (lemmaContainsAllItsOwnKeys!465 lt!1769827))))

(assert (= (and d!1453670 c!790137) b!4614913))

(assert (= (and d!1453670 (not c!790137)) b!4614915))

(assert (= (and b!4614915 res!1933298) b!4614916))

(assert (= (or b!4614913 b!4614915) bm!321725))

(assert (= (or b!4614913 b!4614916) bm!321726))

(assert (= (or b!4614913 b!4614915) bm!321724))

(assert (= (and d!1453670 res!1933296) b!4614912))

(assert (= (and b!4614912 res!1933297) b!4614914))

(declare-fun m!5447803 () Bool)

(assert (=> bm!321725 m!5447803))

(declare-fun m!5447805 () Bool)

(assert (=> d!1453670 m!5447805))

(assert (=> d!1453670 m!5447079))

(declare-fun m!5447807 () Bool)

(assert (=> b!4614914 m!5447807))

(declare-fun m!5447809 () Bool)

(assert (=> b!4614912 m!5447809))

(declare-fun m!5447811 () Bool)

(assert (=> bm!321726 m!5447811))

(declare-fun m!5447813 () Bool)

(assert (=> bm!321724 m!5447813))

(declare-fun m!5447815 () Bool)

(assert (=> b!4614915 m!5447815))

(declare-fun m!5447817 () Bool)

(assert (=> b!4614915 m!5447817))

(declare-fun m!5447819 () Bool)

(assert (=> b!4614915 m!5447819))

(declare-fun m!5447821 () Bool)

(assert (=> b!4614915 m!5447821))

(declare-fun m!5447823 () Bool)

(assert (=> b!4614915 m!5447823))

(assert (=> b!4614915 m!5447821))

(declare-fun m!5447825 () Bool)

(assert (=> b!4614915 m!5447825))

(declare-fun m!5447827 () Bool)

(assert (=> b!4614915 m!5447827))

(assert (=> b!4614915 m!5447823))

(declare-fun m!5447829 () Bool)

(assert (=> b!4614915 m!5447829))

(declare-fun m!5447831 () Bool)

(assert (=> b!4614915 m!5447831))

(assert (=> b!4614915 m!5447815))

(declare-fun m!5447833 () Bool)

(assert (=> b!4614915 m!5447833))

(assert (=> b!4614915 m!5447827))

(assert (=> b!4614626 d!1453670))

(declare-fun bs!1017518 () Bool)

(declare-fun d!1453672 () Bool)

(assert (= bs!1017518 (and d!1453672 d!1453662)))

(declare-fun lambda!189197 () Int)

(assert (=> bs!1017518 (= lambda!189197 lambda!189192)))

(declare-fun bs!1017519 () Bool)

(assert (= bs!1017519 (and d!1453672 d!1453572)))

(assert (=> bs!1017519 (= lambda!189197 lambda!189089)))

(declare-fun bs!1017520 () Bool)

(assert (= bs!1017520 (and d!1453672 b!4614636)))

(assert (=> bs!1017520 (= lambda!189197 lambda!189076)))

(declare-fun bs!1017521 () Bool)

(assert (= bs!1017521 (and d!1453672 d!1453550)))

(assert (=> bs!1017521 (= lambda!189197 lambda!189085)))

(declare-fun bs!1017522 () Bool)

(assert (= bs!1017522 (and d!1453672 d!1453562)))

(assert (=> bs!1017522 (= lambda!189197 lambda!189086)))

(declare-fun lt!1770289 () ListMap!4141)

(assert (=> d!1453672 (invariantList!1163 (toList!4837 lt!1770289))))

(declare-fun e!2878608 () ListMap!4141)

(assert (=> d!1453672 (= lt!1770289 e!2878608)))

(declare-fun c!790138 () Bool)

(assert (=> d!1453672 (= c!790138 ((_ is Cons!51354) Nil!51354))))

(assert (=> d!1453672 (forall!10732 Nil!51354 lambda!189197)))

(assert (=> d!1453672 (= (extractMap!1492 Nil!51354) lt!1770289)))

(declare-fun b!4614917 () Bool)

(assert (=> b!4614917 (= e!2878608 (addToMapMapFromBucket!897 (_2!29390 (h!57362 Nil!51354)) (extractMap!1492 (t!358478 Nil!51354))))))

(declare-fun b!4614918 () Bool)

(assert (=> b!4614918 (= e!2878608 (ListMap!4142 Nil!51353))))

(assert (= (and d!1453672 c!790138) b!4614917))

(assert (= (and d!1453672 (not c!790138)) b!4614918))

(declare-fun m!5447835 () Bool)

(assert (=> d!1453672 m!5447835))

(declare-fun m!5447837 () Bool)

(assert (=> d!1453672 m!5447837))

(declare-fun m!5447839 () Bool)

(assert (=> b!4614917 m!5447839))

(assert (=> b!4614917 m!5447839))

(declare-fun m!5447841 () Bool)

(assert (=> b!4614917 m!5447841))

(assert (=> b!4614626 d!1453672))

(declare-fun bs!1017523 () Bool)

(declare-fun d!1453674 () Bool)

(assert (= bs!1017523 (and d!1453674 b!4614883)))

(declare-fun lambda!189198 () Int)

(assert (=> bs!1017523 (not (= lambda!189198 lambda!189190))))

(declare-fun bs!1017524 () Bool)

(assert (= bs!1017524 (and d!1453674 d!1453652)))

(assert (=> bs!1017524 (not (= lambda!189198 lambda!189191))))

(declare-fun bs!1017525 () Bool)

(assert (= bs!1017525 (and d!1453674 b!4614878)))

(assert (=> bs!1017525 (not (= lambda!189198 lambda!189186))))

(declare-fun bs!1017526 () Bool)

(assert (= bs!1017526 (and d!1453674 d!1453638)))

(assert (=> bs!1017526 (= lambda!189198 lambda!189183)))

(declare-fun bs!1017527 () Bool)

(assert (= bs!1017527 (and d!1453674 b!4614834)))

(assert (=> bs!1017527 (not (= lambda!189198 lambda!189173))))

(declare-fun bs!1017528 () Bool)

(assert (= bs!1017528 (and d!1453674 d!1453626)))

(assert (=> bs!1017528 (not (= lambda!189198 lambda!189180))))

(declare-fun bs!1017529 () Bool)

(assert (= bs!1017529 (and d!1453674 b!4614876)))

(assert (=> bs!1017529 (not (= lambda!189198 lambda!189184))))

(declare-fun bs!1017530 () Bool)

(assert (= bs!1017530 (and d!1453674 b!4614915)))

(assert (=> bs!1017530 (not (= lambda!189198 lambda!189194))))

(declare-fun bs!1017531 () Bool)

(assert (= bs!1017531 (and d!1453674 b!4614849)))

(assert (=> bs!1017531 (not (= lambda!189198 lambda!189178))))

(declare-fun bs!1017532 () Bool)

(assert (= bs!1017532 (and d!1453674 b!4614913)))

(assert (=> bs!1017532 (not (= lambda!189198 lambda!189193))))

(declare-fun bs!1017533 () Bool)

(assert (= bs!1017533 (and d!1453674 b!4614881)))

(assert (=> bs!1017533 (not (= lambda!189198 lambda!189188))))

(declare-fun bs!1017534 () Bool)

(assert (= bs!1017534 (and d!1453674 d!1453574)))

(assert (=> bs!1017534 (not (= lambda!189198 lambda!189174))))

(declare-fun bs!1017535 () Bool)

(assert (= bs!1017535 (and d!1453674 d!1453648)))

(assert (=> bs!1017535 (not (= lambda!189198 lambda!189187))))

(assert (=> bs!1017527 (not (= lambda!189198 lambda!189172))))

(declare-fun bs!1017536 () Bool)

(assert (= bs!1017536 (and d!1453674 d!1453670)))

(assert (=> bs!1017536 (not (= lambda!189198 lambda!189196))))

(declare-fun bs!1017537 () Bool)

(assert (= bs!1017537 (and d!1453674 b!4614847)))

(assert (=> bs!1017537 (not (= lambda!189198 lambda!189177))))

(declare-fun bs!1017538 () Bool)

(assert (= bs!1017538 (and d!1453674 b!4614832)))

(assert (=> bs!1017538 (not (= lambda!189198 lambda!189171))))

(assert (=> bs!1017525 (not (= lambda!189198 lambda!189185))))

(assert (=> bs!1017530 (not (= lambda!189198 lambda!189195))))

(assert (=> bs!1017523 (not (= lambda!189198 lambda!189189))))

(assert (=> bs!1017531 (not (= lambda!189198 lambda!189179))))

(assert (=> d!1453674 true))

(assert (=> d!1453674 true))

(assert (=> d!1453674 (= (allKeysSameHash!1290 oldBucket!40 hash!414 hashF!1389) (forall!10734 oldBucket!40 lambda!189198))))

(declare-fun bs!1017539 () Bool)

(assert (= bs!1017539 d!1453674))

(declare-fun m!5447843 () Bool)

(assert (=> bs!1017539 m!5447843))

(assert (=> b!4614616 d!1453674))

(declare-fun d!1453676 () Bool)

(declare-fun hash!3387 (Hashable!5833 K!12740) (_ BitVec 64))

(assert (=> d!1453676 (= (hash!3385 hashF!1389 key!4968) (hash!3387 hashF!1389 key!4968))))

(declare-fun bs!1017540 () Bool)

(assert (= bs!1017540 d!1453676))

(declare-fun m!5447845 () Bool)

(assert (=> bs!1017540 m!5447845))

(assert (=> b!4614635 d!1453676))

(declare-fun d!1453678 () Bool)

(declare-fun res!1933303 () Bool)

(declare-fun e!2878613 () Bool)

(assert (=> d!1453678 (=> res!1933303 e!2878613)))

(assert (=> d!1453678 (= res!1933303 (and ((_ is Cons!51353) lt!1769825) (= (_1!29389 (h!57361 lt!1769825)) key!4968)))))

(assert (=> d!1453678 (= (containsKey!2312 lt!1769825 key!4968) e!2878613)))

(declare-fun b!4614923 () Bool)

(declare-fun e!2878614 () Bool)

(assert (=> b!4614923 (= e!2878613 e!2878614)))

(declare-fun res!1933304 () Bool)

(assert (=> b!4614923 (=> (not res!1933304) (not e!2878614))))

(assert (=> b!4614923 (= res!1933304 ((_ is Cons!51353) lt!1769825))))

(declare-fun b!4614924 () Bool)

(assert (=> b!4614924 (= e!2878614 (containsKey!2312 (t!358477 lt!1769825) key!4968))))

(assert (= (and d!1453678 (not res!1933303)) b!4614923))

(assert (= (and b!4614923 res!1933304) b!4614924))

(declare-fun m!5447847 () Bool)

(assert (=> b!4614924 m!5447847))

(assert (=> b!4614625 d!1453678))

(declare-fun d!1453680 () Bool)

(declare-fun res!1933309 () Bool)

(declare-fun e!2878619 () Bool)

(assert (=> d!1453680 (=> res!1933309 e!2878619)))

(assert (=> d!1453680 (= res!1933309 ((_ is Nil!51354) lt!1769823))))

(assert (=> d!1453680 (= (forall!10732 lt!1769823 lambda!189076) e!2878619)))

(declare-fun b!4614929 () Bool)

(declare-fun e!2878620 () Bool)

(assert (=> b!4614929 (= e!2878619 e!2878620)))

(declare-fun res!1933310 () Bool)

(assert (=> b!4614929 (=> (not res!1933310) (not e!2878620))))

(declare-fun dynLambda!21457 (Int tuple2!52192) Bool)

(assert (=> b!4614929 (= res!1933310 (dynLambda!21457 lambda!189076 (h!57362 lt!1769823)))))

(declare-fun b!4614930 () Bool)

(assert (=> b!4614930 (= e!2878620 (forall!10732 (t!358478 lt!1769823) lambda!189076))))

(assert (= (and d!1453680 (not res!1933309)) b!4614929))

(assert (= (and b!4614929 res!1933310) b!4614930))

(declare-fun b_lambda!170513 () Bool)

(assert (=> (not b_lambda!170513) (not b!4614929)))

(declare-fun m!5447849 () Bool)

(assert (=> b!4614929 m!5447849))

(declare-fun m!5447851 () Bool)

(assert (=> b!4614930 m!5447851))

(assert (=> b!4614636 d!1453680))

(declare-fun e!2878623 () Bool)

(declare-fun tp!1341526 () Bool)

(declare-fun b!4614935 () Bool)

(assert (=> b!4614935 (= e!2878623 (and tp_is_empty!29037 tp_is_empty!29039 tp!1341526))))

(assert (=> b!4614622 (= tp!1341518 e!2878623)))

(assert (= (and b!4614622 ((_ is Cons!51353) (t!358477 oldBucket!40))) b!4614935))

(declare-fun e!2878624 () Bool)

(declare-fun b!4614936 () Bool)

(declare-fun tp!1341527 () Bool)

(assert (=> b!4614936 (= e!2878624 (and tp_is_empty!29037 tp_is_empty!29039 tp!1341527))))

(assert (=> b!4614617 (= tp!1341519 e!2878624)))

(assert (= (and b!4614617 ((_ is Cons!51353) (t!358477 newBucket!224))) b!4614936))

(declare-fun b_lambda!170515 () Bool)

(assert (= b_lambda!170513 (or b!4614636 b_lambda!170515)))

(declare-fun bs!1017541 () Bool)

(declare-fun d!1453682 () Bool)

(assert (= bs!1017541 (and d!1453682 b!4614636)))

(assert (=> bs!1017541 (= (dynLambda!21457 lambda!189076 (h!57362 lt!1769823)) (noDuplicateKeys!1436 (_2!29390 (h!57362 lt!1769823))))))

(declare-fun m!5447853 () Bool)

(assert (=> bs!1017541 m!5447853))

(assert (=> b!4614929 d!1453682))

(check-sat (not b!4614882) (not b!4614892) (not d!1453550) (not d!1453652) (not bm!321724) (not b!4614880) (not bm!321716) (not b!4614910) (not b!4614885) (not b!4614735) (not b!4614848) (not bm!321681) (not b!4614871) (not b!4614855) (not d!1453654) (not d!1453644) (not b!4614887) (not b!4614915) (not b!4614834) (not b!4614849) (not b!4614723) (not b!4614729) (not b!4614888) (not b!4614737) (not b!4614912) (not b!4614883) (not b!4614734) (not d!1453632) (not bm!321713) (not d!1453660) (not b!4614897) (not d!1453672) (not b!4614936) (not b!4614878) (not b!4614914) (not b!4614895) (not b!4614877) (not bm!321726) (not b!4614896) (not d!1453634) (not b!4614726) (not bs!1017541) (not b!4614872) (not b!4614833) (not bm!321725) (not bm!321718) (not d!1453572) tp_is_empty!29039 (not b!4614893) (not b!4614898) (not d!1453676) (not b!4614856) (not d!1453638) (not d!1453656) (not b!4614725) (not b!4614862) (not b!4614727) (not b!4614846) (not d!1453636) (not d!1453670) (not b!4614875) (not b!4614861) (not bm!321714) (not bm!321715) (not b!4614724) (not d!1453650) (not bm!321723) (not d!1453568) (not b!4614917) (not b!4614732) (not b!4614886) (not b!4614873) (not d!1453570) (not d!1453648) (not bm!321711) (not b!4614733) (not d!1453642) (not bm!321717) (not d!1453664) (not bm!321712) (not bm!321720) (not b!4614874) (not b!4614930) (not d!1453674) (not d!1453666) (not b!4614689) tp_is_empty!29037 (not bm!321721) (not d!1453630) (not d!1453626) (not d!1453574) (not b!4614891) (not b!4614894) (not b!4614924) (not bm!321719) (not b!4614831) (not b_lambda!170515) (not d!1453662) (not b!4614935) (not bm!321682) (not b!4614738) (not b!4614701) (not bm!321722) (not d!1453562) (not b!4614736) (not b!4614728))
(check-sat)
