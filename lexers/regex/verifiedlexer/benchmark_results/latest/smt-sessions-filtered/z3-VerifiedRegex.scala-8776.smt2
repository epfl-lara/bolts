; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!469480 () Bool)

(assert start!469480)

(declare-fun b!4661003 () Bool)

(declare-fun res!1960684 () Bool)

(declare-fun e!2908465 () Bool)

(assert (=> b!4661003 (=> res!1960684 e!2908465)))

(declare-datatypes ((K!13285 0))(
  ( (K!13286 (val!18899 Int)) )
))
(declare-datatypes ((V!13531 0))(
  ( (V!13532 (val!18900 Int)) )
))
(declare-datatypes ((tuple2!53062 0))(
  ( (tuple2!53063 (_1!29825 K!13285) (_2!29825 V!13531)) )
))
(declare-datatypes ((List!52058 0))(
  ( (Nil!51934) (Cons!51934 (h!58088 tuple2!53062) (t!359174 List!52058)) )
))
(declare-datatypes ((tuple2!53064 0))(
  ( (tuple2!53065 (_1!29826 (_ BitVec 64)) (_2!29826 List!52058)) )
))
(declare-datatypes ((List!52059 0))(
  ( (Nil!51935) (Cons!51935 (h!58089 tuple2!53064) (t!359175 List!52059)) )
))
(declare-fun lt!1822471 () List!52059)

(declare-datatypes ((Hashable!6051 0))(
  ( (HashableExt!6050 (__x!31754 Int)) )
))
(declare-fun hashF!1389 () Hashable!6051)

(declare-datatypes ((ListLongMap!3791 0))(
  ( (ListLongMap!3792 (toList!5237 List!52059)) )
))
(declare-fun allKeysSameHashInMap!1610 (ListLongMap!3791 Hashable!6051) Bool)

(assert (=> b!4661003 (= res!1960684 (not (allKeysSameHashInMap!1610 (ListLongMap!3792 lt!1822471) hashF!1389)))))

(declare-fun b!4661004 () Bool)

(declare-fun e!2908459 () Bool)

(declare-fun e!2908463 () Bool)

(assert (=> b!4661004 (= e!2908459 e!2908463)))

(declare-fun res!1960680 () Bool)

(assert (=> b!4661004 (=> (not res!1960680) (not e!2908463))))

(declare-datatypes ((ListMap!4577 0))(
  ( (ListMap!4578 (toList!5238 List!52058)) )
))
(declare-fun lt!1822479 () ListMap!4577)

(declare-fun key!4968 () K!13285)

(declare-fun contains!15093 (ListMap!4577 K!13285) Bool)

(assert (=> b!4661004 (= res!1960680 (contains!15093 lt!1822479 key!4968))))

(declare-fun lt!1822477 () List!52059)

(declare-fun extractMap!1710 (List!52059) ListMap!4577)

(assert (=> b!4661004 (= lt!1822479 (extractMap!1710 lt!1822477))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!52058)

(assert (=> b!4661004 (= lt!1822477 (Cons!51935 (tuple2!53065 hash!414 oldBucket!40) Nil!51935))))

(declare-fun b!4661005 () Bool)

(declare-fun res!1960679 () Bool)

(declare-fun e!2908458 () Bool)

(assert (=> b!4661005 (=> res!1960679 e!2908458)))

(declare-fun lt!1822481 () List!52058)

(declare-fun removePairForKey!1277 (List!52058 K!13285) List!52058)

(assert (=> b!4661005 (= res!1960679 (not (= (removePairForKey!1277 (t!359174 oldBucket!40) key!4968) lt!1822481)))))

(declare-fun b!4661006 () Bool)

(declare-fun res!1960671 () Bool)

(declare-fun e!2908457 () Bool)

(assert (=> b!4661006 (=> (not res!1960671) (not e!2908457))))

(declare-fun newBucket!224 () List!52058)

(declare-fun allKeysSameHash!1508 (List!52058 (_ BitVec 64) Hashable!6051) Bool)

(assert (=> b!4661006 (= res!1960671 (allKeysSameHash!1508 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4661007 () Bool)

(declare-fun res!1960677 () Bool)

(assert (=> b!4661007 (=> (not res!1960677) (not e!2908459))))

(declare-fun noDuplicateKeys!1654 (List!52058) Bool)

(assert (=> b!4661007 (= res!1960677 (noDuplicateKeys!1654 newBucket!224))))

(declare-fun b!4661008 () Bool)

(assert (=> b!4661008 (= e!2908463 e!2908457)))

(declare-fun res!1960673 () Bool)

(assert (=> b!4661008 (=> (not res!1960673) (not e!2908457))))

(declare-fun lt!1822483 () (_ BitVec 64))

(assert (=> b!4661008 (= res!1960673 (= lt!1822483 hash!414))))

(declare-fun hash!3801 (Hashable!6051 K!13285) (_ BitVec 64))

(assert (=> b!4661008 (= lt!1822483 (hash!3801 hashF!1389 key!4968))))

(declare-fun e!2908460 () Bool)

(declare-fun tp_is_empty!29911 () Bool)

(declare-fun b!4661009 () Bool)

(declare-fun tp!1343458 () Bool)

(declare-fun tp_is_empty!29909 () Bool)

(assert (=> b!4661009 (= e!2908460 (and tp_is_empty!29909 tp_is_empty!29911 tp!1343458))))

(declare-fun res!1960674 () Bool)

(assert (=> start!469480 (=> (not res!1960674) (not e!2908459))))

(assert (=> start!469480 (= res!1960674 (noDuplicateKeys!1654 oldBucket!40))))

(assert (=> start!469480 e!2908459))

(assert (=> start!469480 true))

(assert (=> start!469480 e!2908460))

(assert (=> start!469480 tp_is_empty!29909))

(declare-fun e!2908462 () Bool)

(assert (=> start!469480 e!2908462))

(declare-fun b!4661010 () Bool)

(declare-fun e!2908461 () Bool)

(declare-fun lt!1822476 () ListMap!4577)

(assert (=> b!4661010 (= e!2908461 (= lt!1822476 (ListMap!4578 Nil!51934)))))

(declare-fun b!4661011 () Bool)

(declare-fun e!2908464 () Bool)

(assert (=> b!4661011 (= e!2908464 e!2908458)))

(declare-fun res!1960678 () Bool)

(assert (=> b!4661011 (=> res!1960678 e!2908458)))

(declare-fun tail!8257 (List!52058) List!52058)

(assert (=> b!4661011 (= res!1960678 (not (= (removePairForKey!1277 (tail!8257 oldBucket!40) key!4968) lt!1822481)))))

(assert (=> b!4661011 (= lt!1822481 (tail!8257 newBucket!224))))

(declare-fun b!4661012 () Bool)

(declare-fun tp!1343459 () Bool)

(assert (=> b!4661012 (= e!2908462 (and tp_is_empty!29909 tp_is_empty!29911 tp!1343459))))

(declare-fun b!4661013 () Bool)

(assert (=> b!4661013 (= e!2908458 e!2908465)))

(declare-fun res!1960672 () Bool)

(assert (=> b!4661013 (=> res!1960672 e!2908465)))

(declare-fun lambda!200284 () Int)

(declare-fun forall!11054 (List!52059 Int) Bool)

(assert (=> b!4661013 (= res!1960672 (not (forall!11054 lt!1822471 lambda!200284)))))

(assert (=> b!4661013 (= lt!1822471 (Cons!51935 (tuple2!53065 hash!414 (t!359174 oldBucket!40)) Nil!51935))))

(declare-fun b!4661014 () Bool)

(declare-fun res!1960682 () Bool)

(assert (=> b!4661014 (=> (not res!1960682) (not e!2908459))))

(assert (=> b!4661014 (= res!1960682 (= (removePairForKey!1277 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4661015 () Bool)

(declare-fun e!2908466 () Bool)

(assert (=> b!4661015 (= e!2908466 e!2908464)))

(declare-fun res!1960681 () Bool)

(assert (=> b!4661015 (=> res!1960681 e!2908464)))

(declare-fun containsKey!2752 (List!52058 K!13285) Bool)

(assert (=> b!4661015 (= res!1960681 (not (containsKey!2752 (t!359174 oldBucket!40) key!4968)))))

(assert (=> b!4661015 (containsKey!2752 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!119252 0))(
  ( (Unit!119253) )
))
(declare-fun lt!1822480 () Unit!119252)

(declare-fun lemmaGetPairDefinedThenContainsKey!132 (List!52058 K!13285 Hashable!6051) Unit!119252)

(assert (=> b!4661015 (= lt!1822480 (lemmaGetPairDefinedThenContainsKey!132 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1822472 () List!52058)

(declare-datatypes ((Option!11850 0))(
  ( (None!11849) (Some!11849 (v!46151 tuple2!53062)) )
))
(declare-fun isDefined!9115 (Option!11850) Bool)

(declare-fun getPair!382 (List!52058 K!13285) Option!11850)

(assert (=> b!4661015 (isDefined!9115 (getPair!382 lt!1822472 key!4968))))

(declare-fun lt!1822475 () Unit!119252)

(declare-fun lt!1822478 () tuple2!53064)

(declare-fun forallContained!3254 (List!52059 Int tuple2!53064) Unit!119252)

(assert (=> b!4661015 (= lt!1822475 (forallContained!3254 lt!1822477 lambda!200284 lt!1822478))))

(declare-fun contains!15094 (List!52059 tuple2!53064) Bool)

(assert (=> b!4661015 (contains!15094 lt!1822477 lt!1822478)))

(assert (=> b!4661015 (= lt!1822478 (tuple2!53065 lt!1822483 lt!1822472))))

(declare-fun lt!1822470 () ListLongMap!3791)

(declare-fun lt!1822473 () Unit!119252)

(declare-fun lemmaGetValueImpliesTupleContained!187 (ListLongMap!3791 (_ BitVec 64) List!52058) Unit!119252)

(assert (=> b!4661015 (= lt!1822473 (lemmaGetValueImpliesTupleContained!187 lt!1822470 lt!1822483 lt!1822472))))

(declare-fun apply!12257 (ListLongMap!3791 (_ BitVec 64)) List!52058)

(assert (=> b!4661015 (= lt!1822472 (apply!12257 lt!1822470 lt!1822483))))

(declare-fun contains!15095 (ListLongMap!3791 (_ BitVec 64)) Bool)

(assert (=> b!4661015 (contains!15095 lt!1822470 lt!1822483)))

(declare-fun lt!1822474 () Unit!119252)

(declare-fun lemmaInGenMapThenLongMapContainsHash!588 (ListLongMap!3791 K!13285 Hashable!6051) Unit!119252)

(assert (=> b!4661015 (= lt!1822474 (lemmaInGenMapThenLongMapContainsHash!588 lt!1822470 key!4968 hashF!1389))))

(declare-fun lt!1822482 () Unit!119252)

(declare-fun lemmaInGenMapThenGetPairDefined!178 (ListLongMap!3791 K!13285 Hashable!6051) Unit!119252)

(assert (=> b!4661015 (= lt!1822482 (lemmaInGenMapThenGetPairDefined!178 lt!1822470 key!4968 hashF!1389))))

(assert (=> b!4661015 (= lt!1822470 (ListLongMap!3792 lt!1822477))))

(declare-fun b!4661016 () Bool)

(declare-fun containsKeyBiggerList!322 (List!52059 K!13285) Bool)

(assert (=> b!4661016 (= e!2908465 (containsKeyBiggerList!322 lt!1822471 key!4968))))

(declare-fun b!4661017 () Bool)

(assert (=> b!4661017 (= e!2908457 (not e!2908466))))

(declare-fun res!1960676 () Bool)

(assert (=> b!4661017 (=> res!1960676 e!2908466)))

(get-info :version)

(assert (=> b!4661017 (= res!1960676 (or (and ((_ is Cons!51934) oldBucket!40) (= (_1!29825 (h!58088 oldBucket!40)) key!4968)) (not ((_ is Cons!51934) oldBucket!40)) (= (_1!29825 (h!58088 oldBucket!40)) key!4968)))))

(assert (=> b!4661017 e!2908461))

(declare-fun res!1960675 () Bool)

(assert (=> b!4661017 (=> (not res!1960675) (not e!2908461))))

(declare-fun addToMapMapFromBucket!1111 (List!52058 ListMap!4577) ListMap!4577)

(assert (=> b!4661017 (= res!1960675 (= lt!1822479 (addToMapMapFromBucket!1111 oldBucket!40 lt!1822476)))))

(assert (=> b!4661017 (= lt!1822476 (extractMap!1710 Nil!51935))))

(assert (=> b!4661017 true))

(declare-fun b!4661018 () Bool)

(declare-fun res!1960683 () Bool)

(assert (=> b!4661018 (=> (not res!1960683) (not e!2908459))))

(assert (=> b!4661018 (= res!1960683 (allKeysSameHash!1508 oldBucket!40 hash!414 hashF!1389))))

(assert (= (and start!469480 res!1960674) b!4661007))

(assert (= (and b!4661007 res!1960677) b!4661014))

(assert (= (and b!4661014 res!1960682) b!4661018))

(assert (= (and b!4661018 res!1960683) b!4661004))

(assert (= (and b!4661004 res!1960680) b!4661008))

(assert (= (and b!4661008 res!1960673) b!4661006))

(assert (= (and b!4661006 res!1960671) b!4661017))

(assert (= (and b!4661017 res!1960675) b!4661010))

(assert (= (and b!4661017 (not res!1960676)) b!4661015))

(assert (= (and b!4661015 (not res!1960681)) b!4661011))

(assert (= (and b!4661011 (not res!1960678)) b!4661005))

(assert (= (and b!4661005 (not res!1960679)) b!4661013))

(assert (= (and b!4661013 (not res!1960672)) b!4661003))

(assert (= (and b!4661003 (not res!1960684)) b!4661016))

(assert (= (and start!469480 ((_ is Cons!51934) oldBucket!40)) b!4661009))

(assert (= (and start!469480 ((_ is Cons!51934) newBucket!224)) b!4661012))

(declare-fun m!5544519 () Bool)

(assert (=> b!4661005 m!5544519))

(declare-fun m!5544521 () Bool)

(assert (=> b!4661016 m!5544521))

(declare-fun m!5544523 () Bool)

(assert (=> b!4661003 m!5544523))

(declare-fun m!5544525 () Bool)

(assert (=> b!4661015 m!5544525))

(declare-fun m!5544527 () Bool)

(assert (=> b!4661015 m!5544527))

(declare-fun m!5544529 () Bool)

(assert (=> b!4661015 m!5544529))

(declare-fun m!5544531 () Bool)

(assert (=> b!4661015 m!5544531))

(declare-fun m!5544533 () Bool)

(assert (=> b!4661015 m!5544533))

(assert (=> b!4661015 m!5544529))

(declare-fun m!5544535 () Bool)

(assert (=> b!4661015 m!5544535))

(declare-fun m!5544537 () Bool)

(assert (=> b!4661015 m!5544537))

(declare-fun m!5544539 () Bool)

(assert (=> b!4661015 m!5544539))

(declare-fun m!5544541 () Bool)

(assert (=> b!4661015 m!5544541))

(declare-fun m!5544543 () Bool)

(assert (=> b!4661015 m!5544543))

(declare-fun m!5544545 () Bool)

(assert (=> b!4661015 m!5544545))

(declare-fun m!5544547 () Bool)

(assert (=> b!4661015 m!5544547))

(declare-fun m!5544549 () Bool)

(assert (=> b!4661004 m!5544549))

(declare-fun m!5544551 () Bool)

(assert (=> b!4661004 m!5544551))

(declare-fun m!5544553 () Bool)

(assert (=> b!4661007 m!5544553))

(declare-fun m!5544555 () Bool)

(assert (=> b!4661018 m!5544555))

(declare-fun m!5544557 () Bool)

(assert (=> b!4661008 m!5544557))

(declare-fun m!5544559 () Bool)

(assert (=> b!4661006 m!5544559))

(declare-fun m!5544561 () Bool)

(assert (=> start!469480 m!5544561))

(declare-fun m!5544563 () Bool)

(assert (=> b!4661013 m!5544563))

(declare-fun m!5544565 () Bool)

(assert (=> b!4661011 m!5544565))

(assert (=> b!4661011 m!5544565))

(declare-fun m!5544567 () Bool)

(assert (=> b!4661011 m!5544567))

(declare-fun m!5544569 () Bool)

(assert (=> b!4661011 m!5544569))

(declare-fun m!5544571 () Bool)

(assert (=> b!4661014 m!5544571))

(declare-fun m!5544573 () Bool)

(assert (=> b!4661017 m!5544573))

(declare-fun m!5544575 () Bool)

(assert (=> b!4661017 m!5544575))

(check-sat (not start!469480) (not b!4661012) (not b!4661013) (not b!4661011) (not b!4661008) (not b!4661006) (not b!4661007) tp_is_empty!29911 (not b!4661003) (not b!4661004) (not b!4661017) (not b!4661005) (not b!4661015) (not b!4661014) (not b!4661009) (not b!4661018) tp_is_empty!29909 (not b!4661016))
(check-sat)
(get-model)

(declare-fun d!1480641 () Bool)

(declare-fun lt!1822486 () List!52058)

(assert (=> d!1480641 (not (containsKey!2752 lt!1822486 key!4968))))

(declare-fun e!2908471 () List!52058)

(assert (=> d!1480641 (= lt!1822486 e!2908471)))

(declare-fun c!797845 () Bool)

(assert (=> d!1480641 (= c!797845 (and ((_ is Cons!51934) (tail!8257 oldBucket!40)) (= (_1!29825 (h!58088 (tail!8257 oldBucket!40))) key!4968)))))

(assert (=> d!1480641 (noDuplicateKeys!1654 (tail!8257 oldBucket!40))))

(assert (=> d!1480641 (= (removePairForKey!1277 (tail!8257 oldBucket!40) key!4968) lt!1822486)))

(declare-fun b!4661027 () Bool)

(assert (=> b!4661027 (= e!2908471 (t!359174 (tail!8257 oldBucket!40)))))

(declare-fun b!4661030 () Bool)

(declare-fun e!2908472 () List!52058)

(assert (=> b!4661030 (= e!2908472 Nil!51934)))

(declare-fun b!4661028 () Bool)

(assert (=> b!4661028 (= e!2908471 e!2908472)))

(declare-fun c!797846 () Bool)

(assert (=> b!4661028 (= c!797846 ((_ is Cons!51934) (tail!8257 oldBucket!40)))))

(declare-fun b!4661029 () Bool)

(assert (=> b!4661029 (= e!2908472 (Cons!51934 (h!58088 (tail!8257 oldBucket!40)) (removePairForKey!1277 (t!359174 (tail!8257 oldBucket!40)) key!4968)))))

(assert (= (and d!1480641 c!797845) b!4661027))

(assert (= (and d!1480641 (not c!797845)) b!4661028))

(assert (= (and b!4661028 c!797846) b!4661029))

(assert (= (and b!4661028 (not c!797846)) b!4661030))

(declare-fun m!5544577 () Bool)

(assert (=> d!1480641 m!5544577))

(assert (=> d!1480641 m!5544565))

(declare-fun m!5544579 () Bool)

(assert (=> d!1480641 m!5544579))

(declare-fun m!5544581 () Bool)

(assert (=> b!4661029 m!5544581))

(assert (=> b!4661011 d!1480641))

(declare-fun d!1480643 () Bool)

(assert (=> d!1480643 (= (tail!8257 oldBucket!40) (t!359174 oldBucket!40))))

(assert (=> b!4661011 d!1480643))

(declare-fun d!1480645 () Bool)

(assert (=> d!1480645 (= (tail!8257 newBucket!224) (t!359174 newBucket!224))))

(assert (=> b!4661011 d!1480645))

(declare-fun d!1480647 () Bool)

(declare-fun res!1960689 () Bool)

(declare-fun e!2908477 () Bool)

(assert (=> d!1480647 (=> res!1960689 e!2908477)))

(assert (=> d!1480647 (= res!1960689 ((_ is Nil!51935) lt!1822471))))

(assert (=> d!1480647 (= (forall!11054 lt!1822471 lambda!200284) e!2908477)))

(declare-fun b!4661035 () Bool)

(declare-fun e!2908478 () Bool)

(assert (=> b!4661035 (= e!2908477 e!2908478)))

(declare-fun res!1960690 () Bool)

(assert (=> b!4661035 (=> (not res!1960690) (not e!2908478))))

(declare-fun dynLambda!21614 (Int tuple2!53064) Bool)

(assert (=> b!4661035 (= res!1960690 (dynLambda!21614 lambda!200284 (h!58089 lt!1822471)))))

(declare-fun b!4661036 () Bool)

(assert (=> b!4661036 (= e!2908478 (forall!11054 (t!359175 lt!1822471) lambda!200284))))

(assert (= (and d!1480647 (not res!1960689)) b!4661035))

(assert (= (and b!4661035 res!1960690) b!4661036))

(declare-fun b_lambda!175215 () Bool)

(assert (=> (not b_lambda!175215) (not b!4661035)))

(declare-fun m!5544583 () Bool)

(assert (=> b!4661035 m!5544583))

(declare-fun m!5544585 () Bool)

(assert (=> b!4661036 m!5544585))

(assert (=> b!4661013 d!1480647))

(declare-fun d!1480649 () Bool)

(declare-fun hash!3802 (Hashable!6051 K!13285) (_ BitVec 64))

(assert (=> d!1480649 (= (hash!3801 hashF!1389 key!4968) (hash!3802 hashF!1389 key!4968))))

(declare-fun bs!1068599 () Bool)

(assert (= bs!1068599 d!1480649))

(declare-fun m!5544587 () Bool)

(assert (=> bs!1068599 m!5544587))

(assert (=> b!4661008 d!1480649))

(declare-fun d!1480651 () Bool)

(assert (=> d!1480651 true))

(assert (=> d!1480651 true))

(declare-fun lambda!200287 () Int)

(declare-fun forall!11056 (List!52058 Int) Bool)

(assert (=> d!1480651 (= (allKeysSameHash!1508 newBucket!224 hash!414 hashF!1389) (forall!11056 newBucket!224 lambda!200287))))

(declare-fun bs!1068600 () Bool)

(assert (= bs!1068600 d!1480651))

(declare-fun m!5544589 () Bool)

(assert (=> bs!1068600 m!5544589))

(assert (=> b!4661006 d!1480651))

(declare-fun bs!1068619 () Bool)

(declare-fun b!4661162 () Bool)

(assert (= bs!1068619 (and b!4661162 d!1480651)))

(declare-fun lambda!200365 () Int)

(assert (=> bs!1068619 (not (= lambda!200365 lambda!200287))))

(assert (=> b!4661162 true))

(declare-fun bs!1068620 () Bool)

(declare-fun b!4661160 () Bool)

(assert (= bs!1068620 (and b!4661160 d!1480651)))

(declare-fun lambda!200366 () Int)

(assert (=> bs!1068620 (not (= lambda!200366 lambda!200287))))

(declare-fun bs!1068621 () Bool)

(assert (= bs!1068621 (and b!4661160 b!4661162)))

(assert (=> bs!1068621 (= lambda!200366 lambda!200365)))

(assert (=> b!4661160 true))

(declare-fun lambda!200367 () Int)

(assert (=> bs!1068620 (not (= lambda!200367 lambda!200287))))

(declare-fun lt!1822671 () ListMap!4577)

(assert (=> bs!1068621 (= (= lt!1822671 lt!1822476) (= lambda!200367 lambda!200365))))

(assert (=> b!4661160 (= (= lt!1822671 lt!1822476) (= lambda!200367 lambda!200366))))

(assert (=> b!4661160 true))

(declare-fun bs!1068623 () Bool)

(declare-fun d!1480653 () Bool)

(assert (= bs!1068623 (and d!1480653 d!1480651)))

(declare-fun lambda!200368 () Int)

(assert (=> bs!1068623 (not (= lambda!200368 lambda!200287))))

(declare-fun bs!1068624 () Bool)

(assert (= bs!1068624 (and d!1480653 b!4661162)))

(declare-fun lt!1822655 () ListMap!4577)

(assert (=> bs!1068624 (= (= lt!1822655 lt!1822476) (= lambda!200368 lambda!200365))))

(declare-fun bs!1068625 () Bool)

(assert (= bs!1068625 (and d!1480653 b!4661160)))

(assert (=> bs!1068625 (= (= lt!1822655 lt!1822476) (= lambda!200368 lambda!200366))))

(assert (=> bs!1068625 (= (= lt!1822655 lt!1822671) (= lambda!200368 lambda!200367))))

(assert (=> d!1480653 true))

(declare-fun b!4661158 () Bool)

(declare-fun e!2908555 () Bool)

(declare-fun invariantList!1308 (List!52058) Bool)

(assert (=> b!4661158 (= e!2908555 (invariantList!1308 (toList!5238 lt!1822655)))))

(declare-fun b!4661159 () Bool)

(declare-fun res!1960750 () Bool)

(assert (=> b!4661159 (=> (not res!1960750) (not e!2908555))))

(assert (=> b!4661159 (= res!1960750 (forall!11056 (toList!5238 lt!1822476) lambda!200368))))

(declare-fun e!2908554 () ListMap!4577)

(assert (=> b!4661160 (= e!2908554 lt!1822671)))

(declare-fun lt!1822657 () ListMap!4577)

(declare-fun +!1994 (ListMap!4577 tuple2!53062) ListMap!4577)

(assert (=> b!4661160 (= lt!1822657 (+!1994 lt!1822476 (h!58088 oldBucket!40)))))

(assert (=> b!4661160 (= lt!1822671 (addToMapMapFromBucket!1111 (t!359174 oldBucket!40) (+!1994 lt!1822476 (h!58088 oldBucket!40))))))

(declare-fun lt!1822663 () Unit!119252)

(declare-fun call!325657 () Unit!119252)

(assert (=> b!4661160 (= lt!1822663 call!325657)))

(assert (=> b!4661160 (forall!11056 (toList!5238 lt!1822476) lambda!200366)))

(declare-fun lt!1822656 () Unit!119252)

(assert (=> b!4661160 (= lt!1822656 lt!1822663)))

(assert (=> b!4661160 (forall!11056 (toList!5238 lt!1822657) lambda!200367)))

(declare-fun lt!1822664 () Unit!119252)

(declare-fun Unit!119267 () Unit!119252)

(assert (=> b!4661160 (= lt!1822664 Unit!119267)))

(declare-fun call!325658 () Bool)

(assert (=> b!4661160 call!325658))

(declare-fun lt!1822653 () Unit!119252)

(declare-fun Unit!119268 () Unit!119252)

(assert (=> b!4661160 (= lt!1822653 Unit!119268)))

(declare-fun lt!1822666 () Unit!119252)

(declare-fun Unit!119269 () Unit!119252)

(assert (=> b!4661160 (= lt!1822666 Unit!119269)))

(declare-fun lt!1822665 () Unit!119252)

(declare-fun forallContained!3256 (List!52058 Int tuple2!53062) Unit!119252)

(assert (=> b!4661160 (= lt!1822665 (forallContained!3256 (toList!5238 lt!1822657) lambda!200367 (h!58088 oldBucket!40)))))

(assert (=> b!4661160 (contains!15093 lt!1822657 (_1!29825 (h!58088 oldBucket!40)))))

(declare-fun lt!1822661 () Unit!119252)

(declare-fun Unit!119270 () Unit!119252)

(assert (=> b!4661160 (= lt!1822661 Unit!119270)))

(assert (=> b!4661160 (contains!15093 lt!1822671 (_1!29825 (h!58088 oldBucket!40)))))

(declare-fun lt!1822667 () Unit!119252)

(declare-fun Unit!119271 () Unit!119252)

(assert (=> b!4661160 (= lt!1822667 Unit!119271)))

(assert (=> b!4661160 (forall!11056 oldBucket!40 lambda!200367)))

(declare-fun lt!1822651 () Unit!119252)

(declare-fun Unit!119272 () Unit!119252)

(assert (=> b!4661160 (= lt!1822651 Unit!119272)))

(declare-fun call!325656 () Bool)

(assert (=> b!4661160 call!325656))

(declare-fun lt!1822669 () Unit!119252)

(declare-fun Unit!119273 () Unit!119252)

(assert (=> b!4661160 (= lt!1822669 Unit!119273)))

(declare-fun lt!1822658 () Unit!119252)

(declare-fun Unit!119274 () Unit!119252)

(assert (=> b!4661160 (= lt!1822658 Unit!119274)))

(declare-fun lt!1822670 () Unit!119252)

(declare-fun addForallContainsKeyThenBeforeAdding!607 (ListMap!4577 ListMap!4577 K!13285 V!13531) Unit!119252)

(assert (=> b!4661160 (= lt!1822670 (addForallContainsKeyThenBeforeAdding!607 lt!1822476 lt!1822671 (_1!29825 (h!58088 oldBucket!40)) (_2!29825 (h!58088 oldBucket!40))))))

(assert (=> b!4661160 (forall!11056 (toList!5238 lt!1822476) lambda!200367)))

(declare-fun lt!1822652 () Unit!119252)

(assert (=> b!4661160 (= lt!1822652 lt!1822670)))

(assert (=> b!4661160 (forall!11056 (toList!5238 lt!1822476) lambda!200367)))

(declare-fun lt!1822662 () Unit!119252)

(declare-fun Unit!119275 () Unit!119252)

(assert (=> b!4661160 (= lt!1822662 Unit!119275)))

(declare-fun res!1960752 () Bool)

(assert (=> b!4661160 (= res!1960752 (forall!11056 oldBucket!40 lambda!200367))))

(declare-fun e!2908553 () Bool)

(assert (=> b!4661160 (=> (not res!1960752) (not e!2908553))))

(assert (=> b!4661160 e!2908553))

(declare-fun lt!1822654 () Unit!119252)

(declare-fun Unit!119276 () Unit!119252)

(assert (=> b!4661160 (= lt!1822654 Unit!119276)))

(declare-fun bm!325651 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!608 (ListMap!4577) Unit!119252)

(assert (=> bm!325651 (= call!325657 (lemmaContainsAllItsOwnKeys!608 lt!1822476))))

(declare-fun c!797873 () Bool)

(declare-fun bm!325652 () Bool)

(assert (=> bm!325652 (= call!325656 (forall!11056 (ite c!797873 (toList!5238 lt!1822476) (toList!5238 lt!1822657)) (ite c!797873 lambda!200365 lambda!200367)))))

(declare-fun b!4661161 () Bool)

(assert (=> b!4661161 (= e!2908553 (forall!11056 (toList!5238 lt!1822476) lambda!200367))))

(assert (=> d!1480653 e!2908555))

(declare-fun res!1960751 () Bool)

(assert (=> d!1480653 (=> (not res!1960751) (not e!2908555))))

(assert (=> d!1480653 (= res!1960751 (forall!11056 oldBucket!40 lambda!200368))))

(assert (=> d!1480653 (= lt!1822655 e!2908554)))

(assert (=> d!1480653 (= c!797873 ((_ is Nil!51934) oldBucket!40))))

(assert (=> d!1480653 (noDuplicateKeys!1654 oldBucket!40)))

(assert (=> d!1480653 (= (addToMapMapFromBucket!1111 oldBucket!40 lt!1822476) lt!1822655)))

(assert (=> b!4661162 (= e!2908554 lt!1822476)))

(declare-fun lt!1822668 () Unit!119252)

(assert (=> b!4661162 (= lt!1822668 call!325657)))

(assert (=> b!4661162 call!325658))

(declare-fun lt!1822660 () Unit!119252)

(assert (=> b!4661162 (= lt!1822660 lt!1822668)))

(assert (=> b!4661162 call!325656))

(declare-fun lt!1822659 () Unit!119252)

(declare-fun Unit!119277 () Unit!119252)

(assert (=> b!4661162 (= lt!1822659 Unit!119277)))

(declare-fun bm!325653 () Bool)

(assert (=> bm!325653 (= call!325658 (forall!11056 (ite c!797873 (toList!5238 lt!1822476) (t!359174 oldBucket!40)) (ite c!797873 lambda!200365 lambda!200367)))))

(assert (= (and d!1480653 c!797873) b!4661162))

(assert (= (and d!1480653 (not c!797873)) b!4661160))

(assert (= (and b!4661160 res!1960752) b!4661161))

(assert (= (or b!4661162 b!4661160) bm!325651))

(assert (= (or b!4661162 b!4661160) bm!325652))

(assert (= (or b!4661162 b!4661160) bm!325653))

(assert (= (and d!1480653 res!1960751) b!4661159))

(assert (= (and b!4661159 res!1960750) b!4661158))

(declare-fun m!5544717 () Bool)

(assert (=> bm!325652 m!5544717))

(declare-fun m!5544719 () Bool)

(assert (=> b!4661159 m!5544719))

(declare-fun m!5544721 () Bool)

(assert (=> bm!325651 m!5544721))

(declare-fun m!5544723 () Bool)

(assert (=> b!4661160 m!5544723))

(declare-fun m!5544725 () Bool)

(assert (=> b!4661160 m!5544725))

(declare-fun m!5544727 () Bool)

(assert (=> b!4661160 m!5544727))

(declare-fun m!5544729 () Bool)

(assert (=> b!4661160 m!5544729))

(declare-fun m!5544731 () Bool)

(assert (=> b!4661160 m!5544731))

(declare-fun m!5544733 () Bool)

(assert (=> b!4661160 m!5544733))

(assert (=> b!4661160 m!5544727))

(assert (=> b!4661160 m!5544731))

(declare-fun m!5544735 () Bool)

(assert (=> b!4661160 m!5544735))

(declare-fun m!5544737 () Bool)

(assert (=> b!4661160 m!5544737))

(declare-fun m!5544739 () Bool)

(assert (=> b!4661160 m!5544739))

(assert (=> b!4661160 m!5544735))

(declare-fun m!5544741 () Bool)

(assert (=> b!4661160 m!5544741))

(declare-fun m!5544743 () Bool)

(assert (=> b!4661158 m!5544743))

(declare-fun m!5544745 () Bool)

(assert (=> d!1480653 m!5544745))

(assert (=> d!1480653 m!5544561))

(declare-fun m!5544747 () Bool)

(assert (=> bm!325653 m!5544747))

(assert (=> b!4661161 m!5544731))

(assert (=> b!4661017 d!1480653))

(declare-fun bs!1068628 () Bool)

(declare-fun d!1480683 () Bool)

(assert (= bs!1068628 (and d!1480683 b!4661015)))

(declare-fun lambda!200371 () Int)

(assert (=> bs!1068628 (= lambda!200371 lambda!200284)))

(declare-fun lt!1822686 () ListMap!4577)

(assert (=> d!1480683 (invariantList!1308 (toList!5238 lt!1822686))))

(declare-fun e!2908588 () ListMap!4577)

(assert (=> d!1480683 (= lt!1822686 e!2908588)))

(declare-fun c!797882 () Bool)

(assert (=> d!1480683 (= c!797882 ((_ is Cons!51935) Nil!51935))))

(assert (=> d!1480683 (forall!11054 Nil!51935 lambda!200371)))

(assert (=> d!1480683 (= (extractMap!1710 Nil!51935) lt!1822686)))

(declare-fun b!4661209 () Bool)

(assert (=> b!4661209 (= e!2908588 (addToMapMapFromBucket!1111 (_2!29826 (h!58089 Nil!51935)) (extractMap!1710 (t!359175 Nil!51935))))))

(declare-fun b!4661210 () Bool)

(assert (=> b!4661210 (= e!2908588 (ListMap!4578 Nil!51934))))

(assert (= (and d!1480683 c!797882) b!4661209))

(assert (= (and d!1480683 (not c!797882)) b!4661210))

(declare-fun m!5544781 () Bool)

(assert (=> d!1480683 m!5544781))

(declare-fun m!5544783 () Bool)

(assert (=> d!1480683 m!5544783))

(declare-fun m!5544785 () Bool)

(assert (=> b!4661209 m!5544785))

(assert (=> b!4661209 m!5544785))

(declare-fun m!5544787 () Bool)

(assert (=> b!4661209 m!5544787))

(assert (=> b!4661017 d!1480683))

(declare-fun d!1480697 () Bool)

(declare-fun res!1960789 () Bool)

(declare-fun e!2908597 () Bool)

(assert (=> d!1480697 (=> res!1960789 e!2908597)))

(declare-fun e!2908598 () Bool)

(assert (=> d!1480697 (= res!1960789 e!2908598)))

(declare-fun res!1960790 () Bool)

(assert (=> d!1480697 (=> (not res!1960790) (not e!2908598))))

(assert (=> d!1480697 (= res!1960790 ((_ is Cons!51935) lt!1822471))))

(assert (=> d!1480697 (= (containsKeyBiggerList!322 lt!1822471 key!4968) e!2908597)))

(declare-fun b!4661219 () Bool)

(assert (=> b!4661219 (= e!2908598 (containsKey!2752 (_2!29826 (h!58089 lt!1822471)) key!4968))))

(declare-fun b!4661220 () Bool)

(declare-fun e!2908599 () Bool)

(assert (=> b!4661220 (= e!2908597 e!2908599)))

(declare-fun res!1960788 () Bool)

(assert (=> b!4661220 (=> (not res!1960788) (not e!2908599))))

(assert (=> b!4661220 (= res!1960788 ((_ is Cons!51935) lt!1822471))))

(declare-fun b!4661221 () Bool)

(assert (=> b!4661221 (= e!2908599 (containsKeyBiggerList!322 (t!359175 lt!1822471) key!4968))))

(assert (= (and d!1480697 res!1960790) b!4661219))

(assert (= (and d!1480697 (not res!1960789)) b!4661220))

(assert (= (and b!4661220 res!1960788) b!4661221))

(declare-fun m!5544793 () Bool)

(assert (=> b!4661219 m!5544793))

(declare-fun m!5544795 () Bool)

(assert (=> b!4661221 m!5544795))

(assert (=> b!4661016 d!1480697))

(declare-fun bs!1068630 () Bool)

(declare-fun d!1480703 () Bool)

(assert (= bs!1068630 (and d!1480703 b!4661162)))

(declare-fun lambda!200372 () Int)

(assert (=> bs!1068630 (not (= lambda!200372 lambda!200365))))

(declare-fun bs!1068631 () Bool)

(assert (= bs!1068631 (and d!1480703 b!4661160)))

(assert (=> bs!1068631 (not (= lambda!200372 lambda!200366))))

(assert (=> bs!1068631 (not (= lambda!200372 lambda!200367))))

(declare-fun bs!1068632 () Bool)

(assert (= bs!1068632 (and d!1480703 d!1480653)))

(assert (=> bs!1068632 (not (= lambda!200372 lambda!200368))))

(declare-fun bs!1068633 () Bool)

(assert (= bs!1068633 (and d!1480703 d!1480651)))

(assert (=> bs!1068633 (= lambda!200372 lambda!200287)))

(assert (=> d!1480703 true))

(assert (=> d!1480703 true))

(assert (=> d!1480703 (= (allKeysSameHash!1508 oldBucket!40 hash!414 hashF!1389) (forall!11056 oldBucket!40 lambda!200372))))

(declare-fun bs!1068634 () Bool)

(assert (= bs!1068634 d!1480703))

(declare-fun m!5544797 () Bool)

(assert (=> bs!1068634 m!5544797))

(assert (=> b!4661018 d!1480703))

(declare-fun d!1480705 () Bool)

(declare-fun res!1960795 () Bool)

(declare-fun e!2908604 () Bool)

(assert (=> d!1480705 (=> res!1960795 e!2908604)))

(assert (=> d!1480705 (= res!1960795 (not ((_ is Cons!51934) newBucket!224)))))

(assert (=> d!1480705 (= (noDuplicateKeys!1654 newBucket!224) e!2908604)))

(declare-fun b!4661226 () Bool)

(declare-fun e!2908605 () Bool)

(assert (=> b!4661226 (= e!2908604 e!2908605)))

(declare-fun res!1960796 () Bool)

(assert (=> b!4661226 (=> (not res!1960796) (not e!2908605))))

(assert (=> b!4661226 (= res!1960796 (not (containsKey!2752 (t!359174 newBucket!224) (_1!29825 (h!58088 newBucket!224)))))))

(declare-fun b!4661227 () Bool)

(assert (=> b!4661227 (= e!2908605 (noDuplicateKeys!1654 (t!359174 newBucket!224)))))

(assert (= (and d!1480705 (not res!1960795)) b!4661226))

(assert (= (and b!4661226 res!1960796) b!4661227))

(declare-fun m!5544799 () Bool)

(assert (=> b!4661226 m!5544799))

(declare-fun m!5544801 () Bool)

(assert (=> b!4661227 m!5544801))

(assert (=> b!4661007 d!1480705))

(declare-fun d!1480707 () Bool)

(declare-fun lt!1822698 () List!52058)

(assert (=> d!1480707 (not (containsKey!2752 lt!1822698 key!4968))))

(declare-fun e!2908608 () List!52058)

(assert (=> d!1480707 (= lt!1822698 e!2908608)))

(declare-fun c!797885 () Bool)

(assert (=> d!1480707 (= c!797885 (and ((_ is Cons!51934) oldBucket!40) (= (_1!29825 (h!58088 oldBucket!40)) key!4968)))))

(assert (=> d!1480707 (noDuplicateKeys!1654 oldBucket!40)))

(assert (=> d!1480707 (= (removePairForKey!1277 oldBucket!40 key!4968) lt!1822698)))

(declare-fun b!4661232 () Bool)

(assert (=> b!4661232 (= e!2908608 (t!359174 oldBucket!40))))

(declare-fun b!4661235 () Bool)

(declare-fun e!2908609 () List!52058)

(assert (=> b!4661235 (= e!2908609 Nil!51934)))

(declare-fun b!4661233 () Bool)

(assert (=> b!4661233 (= e!2908608 e!2908609)))

(declare-fun c!797886 () Bool)

(assert (=> b!4661233 (= c!797886 ((_ is Cons!51934) oldBucket!40))))

(declare-fun b!4661234 () Bool)

(assert (=> b!4661234 (= e!2908609 (Cons!51934 (h!58088 oldBucket!40) (removePairForKey!1277 (t!359174 oldBucket!40) key!4968)))))

(assert (= (and d!1480707 c!797885) b!4661232))

(assert (= (and d!1480707 (not c!797885)) b!4661233))

(assert (= (and b!4661233 c!797886) b!4661234))

(assert (= (and b!4661233 (not c!797886)) b!4661235))

(declare-fun m!5544803 () Bool)

(assert (=> d!1480707 m!5544803))

(assert (=> d!1480707 m!5544561))

(assert (=> b!4661234 m!5544519))

(assert (=> b!4661014 d!1480707))

(declare-fun d!1480709 () Bool)

(declare-fun res!1960799 () Bool)

(declare-fun e!2908612 () Bool)

(assert (=> d!1480709 (=> res!1960799 e!2908612)))

(assert (=> d!1480709 (= res!1960799 (not ((_ is Cons!51934) oldBucket!40)))))

(assert (=> d!1480709 (= (noDuplicateKeys!1654 oldBucket!40) e!2908612)))

(declare-fun b!4661238 () Bool)

(declare-fun e!2908613 () Bool)

(assert (=> b!4661238 (= e!2908612 e!2908613)))

(declare-fun res!1960800 () Bool)

(assert (=> b!4661238 (=> (not res!1960800) (not e!2908613))))

(assert (=> b!4661238 (= res!1960800 (not (containsKey!2752 (t!359174 oldBucket!40) (_1!29825 (h!58088 oldBucket!40)))))))

(declare-fun b!4661239 () Bool)

(assert (=> b!4661239 (= e!2908613 (noDuplicateKeys!1654 (t!359174 oldBucket!40)))))

(assert (= (and d!1480709 (not res!1960799)) b!4661238))

(assert (= (and b!4661238 res!1960800) b!4661239))

(declare-fun m!5544805 () Bool)

(assert (=> b!4661238 m!5544805))

(declare-fun m!5544807 () Bool)

(assert (=> b!4661239 m!5544807))

(assert (=> start!469480 d!1480709))

(declare-fun bs!1068635 () Bool)

(declare-fun d!1480711 () Bool)

(assert (= bs!1068635 (and d!1480711 b!4661015)))

(declare-fun lambda!200375 () Int)

(assert (=> bs!1068635 (not (= lambda!200375 lambda!200284))))

(declare-fun bs!1068636 () Bool)

(assert (= bs!1068636 (and d!1480711 d!1480683)))

(assert (=> bs!1068636 (not (= lambda!200375 lambda!200371))))

(assert (=> d!1480711 true))

(assert (=> d!1480711 (= (allKeysSameHashInMap!1610 (ListLongMap!3792 lt!1822471) hashF!1389) (forall!11054 (toList!5237 (ListLongMap!3792 lt!1822471)) lambda!200375))))

(declare-fun bs!1068638 () Bool)

(assert (= bs!1068638 d!1480711))

(declare-fun m!5544817 () Bool)

(assert (=> bs!1068638 m!5544817))

(assert (=> b!4661003 d!1480711))

(declare-fun d!1480717 () Bool)

(declare-fun lt!1822703 () List!52058)

(assert (=> d!1480717 (not (containsKey!2752 lt!1822703 key!4968))))

(declare-fun e!2908616 () List!52058)

(assert (=> d!1480717 (= lt!1822703 e!2908616)))

(declare-fun c!797888 () Bool)

(assert (=> d!1480717 (= c!797888 (and ((_ is Cons!51934) (t!359174 oldBucket!40)) (= (_1!29825 (h!58088 (t!359174 oldBucket!40))) key!4968)))))

(assert (=> d!1480717 (noDuplicateKeys!1654 (t!359174 oldBucket!40))))

(assert (=> d!1480717 (= (removePairForKey!1277 (t!359174 oldBucket!40) key!4968) lt!1822703)))

(declare-fun b!4661245 () Bool)

(assert (=> b!4661245 (= e!2908616 (t!359174 (t!359174 oldBucket!40)))))

(declare-fun b!4661248 () Bool)

(declare-fun e!2908617 () List!52058)

(assert (=> b!4661248 (= e!2908617 Nil!51934)))

(declare-fun b!4661246 () Bool)

(assert (=> b!4661246 (= e!2908616 e!2908617)))

(declare-fun c!797889 () Bool)

(assert (=> b!4661246 (= c!797889 ((_ is Cons!51934) (t!359174 oldBucket!40)))))

(declare-fun b!4661247 () Bool)

(assert (=> b!4661247 (= e!2908617 (Cons!51934 (h!58088 (t!359174 oldBucket!40)) (removePairForKey!1277 (t!359174 (t!359174 oldBucket!40)) key!4968)))))

(assert (= (and d!1480717 c!797888) b!4661245))

(assert (= (and d!1480717 (not c!797888)) b!4661246))

(assert (= (and b!4661246 c!797889) b!4661247))

(assert (= (and b!4661246 (not c!797889)) b!4661248))

(declare-fun m!5544819 () Bool)

(assert (=> d!1480717 m!5544819))

(assert (=> d!1480717 m!5544807))

(declare-fun m!5544821 () Bool)

(assert (=> b!4661247 m!5544821))

(assert (=> b!4661005 d!1480717))

(declare-fun b!4661279 () Bool)

(declare-fun e!2908638 () Bool)

(declare-datatypes ((List!52061 0))(
  ( (Nil!51937) (Cons!51937 (h!58093 K!13285) (t!359177 List!52061)) )
))
(declare-fun contains!15098 (List!52061 K!13285) Bool)

(declare-fun keys!18412 (ListMap!4577) List!52061)

(assert (=> b!4661279 (= e!2908638 (contains!15098 (keys!18412 lt!1822479) key!4968))))

(declare-fun b!4661280 () Bool)

(declare-fun e!2908640 () Unit!119252)

(declare-fun lt!1822728 () Unit!119252)

(assert (=> b!4661280 (= e!2908640 lt!1822728)))

(declare-fun lt!1822726 () Unit!119252)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1531 (List!52058 K!13285) Unit!119252)

(assert (=> b!4661280 (= lt!1822726 (lemmaContainsKeyImpliesGetValueByKeyDefined!1531 (toList!5238 lt!1822479) key!4968))))

(declare-datatypes ((Option!11853 0))(
  ( (None!11852) (Some!11852 (v!46158 V!13531)) )
))
(declare-fun isDefined!9118 (Option!11853) Bool)

(declare-fun getValueByKey!1629 (List!52058 K!13285) Option!11853)

(assert (=> b!4661280 (isDefined!9118 (getValueByKey!1629 (toList!5238 lt!1822479) key!4968))))

(declare-fun lt!1822724 () Unit!119252)

(assert (=> b!4661280 (= lt!1822724 lt!1822726)))

(declare-fun lemmaInListThenGetKeysListContains!754 (List!52058 K!13285) Unit!119252)

(assert (=> b!4661280 (= lt!1822728 (lemmaInListThenGetKeysListContains!754 (toList!5238 lt!1822479) key!4968))))

(declare-fun call!325661 () Bool)

(assert (=> b!4661280 call!325661))

(declare-fun b!4661281 () Bool)

(declare-fun e!2908641 () List!52061)

(assert (=> b!4661281 (= e!2908641 (keys!18412 lt!1822479))))

(declare-fun b!4661282 () Bool)

(declare-fun e!2908636 () Unit!119252)

(assert (=> b!4661282 (= e!2908640 e!2908636)))

(declare-fun c!797899 () Bool)

(assert (=> b!4661282 (= c!797899 call!325661)))

(declare-fun b!4661283 () Bool)

(declare-fun e!2908639 () Bool)

(assert (=> b!4661283 (= e!2908639 e!2908638)))

(declare-fun res!1960808 () Bool)

(assert (=> b!4661283 (=> (not res!1960808) (not e!2908638))))

(assert (=> b!4661283 (= res!1960808 (isDefined!9118 (getValueByKey!1629 (toList!5238 lt!1822479) key!4968)))))

(declare-fun d!1480719 () Bool)

(assert (=> d!1480719 e!2908639))

(declare-fun res!1960810 () Bool)

(assert (=> d!1480719 (=> res!1960810 e!2908639)))

(declare-fun e!2908637 () Bool)

(assert (=> d!1480719 (= res!1960810 e!2908637)))

(declare-fun res!1960809 () Bool)

(assert (=> d!1480719 (=> (not res!1960809) (not e!2908637))))

(declare-fun lt!1822725 () Bool)

(assert (=> d!1480719 (= res!1960809 (not lt!1822725))))

(declare-fun lt!1822727 () Bool)

(assert (=> d!1480719 (= lt!1822725 lt!1822727)))

(declare-fun lt!1822721 () Unit!119252)

(assert (=> d!1480719 (= lt!1822721 e!2908640)))

(declare-fun c!797900 () Bool)

(assert (=> d!1480719 (= c!797900 lt!1822727)))

(declare-fun containsKey!2755 (List!52058 K!13285) Bool)

(assert (=> d!1480719 (= lt!1822727 (containsKey!2755 (toList!5238 lt!1822479) key!4968))))

(assert (=> d!1480719 (= (contains!15093 lt!1822479 key!4968) lt!1822725)))

(declare-fun b!4661284 () Bool)

(declare-fun Unit!119279 () Unit!119252)

(assert (=> b!4661284 (= e!2908636 Unit!119279)))

(declare-fun b!4661285 () Bool)

(declare-fun getKeysList!759 (List!52058) List!52061)

(assert (=> b!4661285 (= e!2908641 (getKeysList!759 (toList!5238 lt!1822479)))))

(declare-fun b!4661286 () Bool)

(assert (=> b!4661286 (= e!2908637 (not (contains!15098 (keys!18412 lt!1822479) key!4968)))))

(declare-fun b!4661287 () Bool)

(assert (=> b!4661287 false))

(declare-fun lt!1822723 () Unit!119252)

(declare-fun lt!1822722 () Unit!119252)

(assert (=> b!4661287 (= lt!1822723 lt!1822722)))

(assert (=> b!4661287 (containsKey!2755 (toList!5238 lt!1822479) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!758 (List!52058 K!13285) Unit!119252)

(assert (=> b!4661287 (= lt!1822722 (lemmaInGetKeysListThenContainsKey!758 (toList!5238 lt!1822479) key!4968))))

(declare-fun Unit!119280 () Unit!119252)

(assert (=> b!4661287 (= e!2908636 Unit!119280)))

(declare-fun bm!325656 () Bool)

(assert (=> bm!325656 (= call!325661 (contains!15098 e!2908641 key!4968))))

(declare-fun c!797898 () Bool)

(assert (=> bm!325656 (= c!797898 c!797900)))

(assert (= (and d!1480719 c!797900) b!4661280))

(assert (= (and d!1480719 (not c!797900)) b!4661282))

(assert (= (and b!4661282 c!797899) b!4661287))

(assert (= (and b!4661282 (not c!797899)) b!4661284))

(assert (= (or b!4661280 b!4661282) bm!325656))

(assert (= (and bm!325656 c!797898) b!4661285))

(assert (= (and bm!325656 (not c!797898)) b!4661281))

(assert (= (and d!1480719 res!1960809) b!4661286))

(assert (= (and d!1480719 (not res!1960810)) b!4661283))

(assert (= (and b!4661283 res!1960808) b!4661279))

(declare-fun m!5544837 () Bool)

(assert (=> b!4661286 m!5544837))

(assert (=> b!4661286 m!5544837))

(declare-fun m!5544839 () Bool)

(assert (=> b!4661286 m!5544839))

(declare-fun m!5544841 () Bool)

(assert (=> d!1480719 m!5544841))

(assert (=> b!4661279 m!5544837))

(assert (=> b!4661279 m!5544837))

(assert (=> b!4661279 m!5544839))

(assert (=> b!4661281 m!5544837))

(declare-fun m!5544843 () Bool)

(assert (=> b!4661285 m!5544843))

(declare-fun m!5544845 () Bool)

(assert (=> b!4661280 m!5544845))

(declare-fun m!5544847 () Bool)

(assert (=> b!4661280 m!5544847))

(assert (=> b!4661280 m!5544847))

(declare-fun m!5544849 () Bool)

(assert (=> b!4661280 m!5544849))

(declare-fun m!5544851 () Bool)

(assert (=> b!4661280 m!5544851))

(assert (=> b!4661287 m!5544841))

(declare-fun m!5544853 () Bool)

(assert (=> b!4661287 m!5544853))

(declare-fun m!5544855 () Bool)

(assert (=> bm!325656 m!5544855))

(assert (=> b!4661283 m!5544847))

(assert (=> b!4661283 m!5544847))

(assert (=> b!4661283 m!5544849))

(assert (=> b!4661004 d!1480719))

(declare-fun bs!1068652 () Bool)

(declare-fun d!1480733 () Bool)

(assert (= bs!1068652 (and d!1480733 b!4661015)))

(declare-fun lambda!200380 () Int)

(assert (=> bs!1068652 (= lambda!200380 lambda!200284)))

(declare-fun bs!1068653 () Bool)

(assert (= bs!1068653 (and d!1480733 d!1480683)))

(assert (=> bs!1068653 (= lambda!200380 lambda!200371)))

(declare-fun bs!1068654 () Bool)

(assert (= bs!1068654 (and d!1480733 d!1480711)))

(assert (=> bs!1068654 (not (= lambda!200380 lambda!200375))))

(declare-fun lt!1822729 () ListMap!4577)

(assert (=> d!1480733 (invariantList!1308 (toList!5238 lt!1822729))))

(declare-fun e!2908642 () ListMap!4577)

(assert (=> d!1480733 (= lt!1822729 e!2908642)))

(declare-fun c!797901 () Bool)

(assert (=> d!1480733 (= c!797901 ((_ is Cons!51935) lt!1822477))))

(assert (=> d!1480733 (forall!11054 lt!1822477 lambda!200380)))

(assert (=> d!1480733 (= (extractMap!1710 lt!1822477) lt!1822729)))

(declare-fun b!4661288 () Bool)

(assert (=> b!4661288 (= e!2908642 (addToMapMapFromBucket!1111 (_2!29826 (h!58089 lt!1822477)) (extractMap!1710 (t!359175 lt!1822477))))))

(declare-fun b!4661289 () Bool)

(assert (=> b!4661289 (= e!2908642 (ListMap!4578 Nil!51934))))

(assert (= (and d!1480733 c!797901) b!4661288))

(assert (= (and d!1480733 (not c!797901)) b!4661289))

(declare-fun m!5544857 () Bool)

(assert (=> d!1480733 m!5544857))

(declare-fun m!5544859 () Bool)

(assert (=> d!1480733 m!5544859))

(declare-fun m!5544861 () Bool)

(assert (=> b!4661288 m!5544861))

(assert (=> b!4661288 m!5544861))

(declare-fun m!5544863 () Bool)

(assert (=> b!4661288 m!5544863))

(assert (=> b!4661004 d!1480733))

(declare-fun d!1480735 () Bool)

(declare-fun isEmpty!29027 (Option!11850) Bool)

(assert (=> d!1480735 (= (isDefined!9115 (getPair!382 lt!1822472 key!4968)) (not (isEmpty!29027 (getPair!382 lt!1822472 key!4968))))))

(declare-fun bs!1068655 () Bool)

(assert (= bs!1068655 d!1480735))

(assert (=> bs!1068655 m!5544529))

(declare-fun m!5544865 () Bool)

(assert (=> bs!1068655 m!5544865))

(assert (=> b!4661015 d!1480735))

(declare-fun d!1480737 () Bool)

(declare-fun e!2908647 () Bool)

(assert (=> d!1480737 e!2908647))

(declare-fun res!1960813 () Bool)

(assert (=> d!1480737 (=> res!1960813 e!2908647)))

(declare-fun lt!1822740 () Bool)

(assert (=> d!1480737 (= res!1960813 (not lt!1822740))))

(declare-fun lt!1822738 () Bool)

(assert (=> d!1480737 (= lt!1822740 lt!1822738)))

(declare-fun lt!1822741 () Unit!119252)

(declare-fun e!2908648 () Unit!119252)

(assert (=> d!1480737 (= lt!1822741 e!2908648)))

(declare-fun c!797904 () Bool)

(assert (=> d!1480737 (= c!797904 lt!1822738)))

(declare-fun containsKey!2756 (List!52059 (_ BitVec 64)) Bool)

(assert (=> d!1480737 (= lt!1822738 (containsKey!2756 (toList!5237 lt!1822470) lt!1822483))))

(assert (=> d!1480737 (= (contains!15095 lt!1822470 lt!1822483) lt!1822740)))

(declare-fun b!4661296 () Bool)

(declare-fun lt!1822739 () Unit!119252)

(assert (=> b!4661296 (= e!2908648 lt!1822739)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1532 (List!52059 (_ BitVec 64)) Unit!119252)

(assert (=> b!4661296 (= lt!1822739 (lemmaContainsKeyImpliesGetValueByKeyDefined!1532 (toList!5237 lt!1822470) lt!1822483))))

(declare-datatypes ((Option!11854 0))(
  ( (None!11853) (Some!11853 (v!46159 List!52058)) )
))
(declare-fun isDefined!9119 (Option!11854) Bool)

(declare-fun getValueByKey!1630 (List!52059 (_ BitVec 64)) Option!11854)

(assert (=> b!4661296 (isDefined!9119 (getValueByKey!1630 (toList!5237 lt!1822470) lt!1822483))))

(declare-fun b!4661297 () Bool)

(declare-fun Unit!119281 () Unit!119252)

(assert (=> b!4661297 (= e!2908648 Unit!119281)))

(declare-fun b!4661298 () Bool)

(assert (=> b!4661298 (= e!2908647 (isDefined!9119 (getValueByKey!1630 (toList!5237 lt!1822470) lt!1822483)))))

(assert (= (and d!1480737 c!797904) b!4661296))

(assert (= (and d!1480737 (not c!797904)) b!4661297))

(assert (= (and d!1480737 (not res!1960813)) b!4661298))

(declare-fun m!5544867 () Bool)

(assert (=> d!1480737 m!5544867))

(declare-fun m!5544869 () Bool)

(assert (=> b!4661296 m!5544869))

(declare-fun m!5544871 () Bool)

(assert (=> b!4661296 m!5544871))

(assert (=> b!4661296 m!5544871))

(declare-fun m!5544873 () Bool)

(assert (=> b!4661296 m!5544873))

(assert (=> b!4661298 m!5544871))

(assert (=> b!4661298 m!5544871))

(assert (=> b!4661298 m!5544873))

(assert (=> b!4661015 d!1480737))

(declare-fun d!1480739 () Bool)

(assert (=> d!1480739 (contains!15094 (toList!5237 lt!1822470) (tuple2!53065 lt!1822483 lt!1822472))))

(declare-fun lt!1822744 () Unit!119252)

(declare-fun choose!32112 (ListLongMap!3791 (_ BitVec 64) List!52058) Unit!119252)

(assert (=> d!1480739 (= lt!1822744 (choose!32112 lt!1822470 lt!1822483 lt!1822472))))

(assert (=> d!1480739 (contains!15095 lt!1822470 lt!1822483)))

(assert (=> d!1480739 (= (lemmaGetValueImpliesTupleContained!187 lt!1822470 lt!1822483 lt!1822472) lt!1822744)))

(declare-fun bs!1068656 () Bool)

(assert (= bs!1068656 d!1480739))

(declare-fun m!5544875 () Bool)

(assert (=> bs!1068656 m!5544875))

(declare-fun m!5544877 () Bool)

(assert (=> bs!1068656 m!5544877))

(assert (=> bs!1068656 m!5544545))

(assert (=> b!4661015 d!1480739))

(declare-fun d!1480741 () Bool)

(assert (=> d!1480741 (containsKey!2752 oldBucket!40 key!4968)))

(declare-fun lt!1822747 () Unit!119252)

(declare-fun choose!32113 (List!52058 K!13285 Hashable!6051) Unit!119252)

(assert (=> d!1480741 (= lt!1822747 (choose!32113 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1480741 (noDuplicateKeys!1654 oldBucket!40)))

(assert (=> d!1480741 (= (lemmaGetPairDefinedThenContainsKey!132 oldBucket!40 key!4968 hashF!1389) lt!1822747)))

(declare-fun bs!1068657 () Bool)

(assert (= bs!1068657 d!1480741))

(assert (=> bs!1068657 m!5544533))

(declare-fun m!5544879 () Bool)

(assert (=> bs!1068657 m!5544879))

(assert (=> bs!1068657 m!5544561))

(assert (=> b!4661015 d!1480741))

(declare-fun bs!1068658 () Bool)

(declare-fun d!1480743 () Bool)

(assert (= bs!1068658 (and d!1480743 b!4661015)))

(declare-fun lambda!200383 () Int)

(assert (=> bs!1068658 (= lambda!200383 lambda!200284)))

(declare-fun bs!1068659 () Bool)

(assert (= bs!1068659 (and d!1480743 d!1480683)))

(assert (=> bs!1068659 (= lambda!200383 lambda!200371)))

(declare-fun bs!1068660 () Bool)

(assert (= bs!1068660 (and d!1480743 d!1480711)))

(assert (=> bs!1068660 (not (= lambda!200383 lambda!200375))))

(declare-fun bs!1068661 () Bool)

(assert (= bs!1068661 (and d!1480743 d!1480733)))

(assert (=> bs!1068661 (= lambda!200383 lambda!200380)))

(assert (=> d!1480743 (contains!15095 lt!1822470 (hash!3801 hashF!1389 key!4968))))

(declare-fun lt!1822750 () Unit!119252)

(declare-fun choose!32114 (ListLongMap!3791 K!13285 Hashable!6051) Unit!119252)

(assert (=> d!1480743 (= lt!1822750 (choose!32114 lt!1822470 key!4968 hashF!1389))))

(assert (=> d!1480743 (forall!11054 (toList!5237 lt!1822470) lambda!200383)))

(assert (=> d!1480743 (= (lemmaInGenMapThenLongMapContainsHash!588 lt!1822470 key!4968 hashF!1389) lt!1822750)))

(declare-fun bs!1068662 () Bool)

(assert (= bs!1068662 d!1480743))

(assert (=> bs!1068662 m!5544557))

(assert (=> bs!1068662 m!5544557))

(declare-fun m!5544881 () Bool)

(assert (=> bs!1068662 m!5544881))

(declare-fun m!5544883 () Bool)

(assert (=> bs!1068662 m!5544883))

(declare-fun m!5544885 () Bool)

(assert (=> bs!1068662 m!5544885))

(assert (=> b!4661015 d!1480743))

(declare-fun d!1480745 () Bool)

(declare-fun res!1960818 () Bool)

(declare-fun e!2908653 () Bool)

(assert (=> d!1480745 (=> res!1960818 e!2908653)))

(assert (=> d!1480745 (= res!1960818 (and ((_ is Cons!51934) (t!359174 oldBucket!40)) (= (_1!29825 (h!58088 (t!359174 oldBucket!40))) key!4968)))))

(assert (=> d!1480745 (= (containsKey!2752 (t!359174 oldBucket!40) key!4968) e!2908653)))

(declare-fun b!4661304 () Bool)

(declare-fun e!2908654 () Bool)

(assert (=> b!4661304 (= e!2908653 e!2908654)))

(declare-fun res!1960819 () Bool)

(assert (=> b!4661304 (=> (not res!1960819) (not e!2908654))))

(assert (=> b!4661304 (= res!1960819 ((_ is Cons!51934) (t!359174 oldBucket!40)))))

(declare-fun b!4661305 () Bool)

(assert (=> b!4661305 (= e!2908654 (containsKey!2752 (t!359174 (t!359174 oldBucket!40)) key!4968))))

(assert (= (and d!1480745 (not res!1960818)) b!4661304))

(assert (= (and b!4661304 res!1960819) b!4661305))

(declare-fun m!5544887 () Bool)

(assert (=> b!4661305 m!5544887))

(assert (=> b!4661015 d!1480745))

(declare-fun d!1480747 () Bool)

(declare-fun res!1960820 () Bool)

(declare-fun e!2908655 () Bool)

(assert (=> d!1480747 (=> res!1960820 e!2908655)))

(assert (=> d!1480747 (= res!1960820 (and ((_ is Cons!51934) oldBucket!40) (= (_1!29825 (h!58088 oldBucket!40)) key!4968)))))

(assert (=> d!1480747 (= (containsKey!2752 oldBucket!40 key!4968) e!2908655)))

(declare-fun b!4661306 () Bool)

(declare-fun e!2908656 () Bool)

(assert (=> b!4661306 (= e!2908655 e!2908656)))

(declare-fun res!1960821 () Bool)

(assert (=> b!4661306 (=> (not res!1960821) (not e!2908656))))

(assert (=> b!4661306 (= res!1960821 ((_ is Cons!51934) oldBucket!40))))

(declare-fun b!4661307 () Bool)

(assert (=> b!4661307 (= e!2908656 (containsKey!2752 (t!359174 oldBucket!40) key!4968))))

(assert (= (and d!1480747 (not res!1960820)) b!4661306))

(assert (= (and b!4661306 res!1960821) b!4661307))

(assert (=> b!4661307 m!5544537))

(assert (=> b!4661015 d!1480747))

(declare-fun bs!1068663 () Bool)

(declare-fun d!1480749 () Bool)

(assert (= bs!1068663 (and d!1480749 d!1480733)))

(declare-fun lambda!200390 () Int)

(assert (=> bs!1068663 (= lambda!200390 lambda!200380)))

(declare-fun bs!1068664 () Bool)

(assert (= bs!1068664 (and d!1480749 d!1480683)))

(assert (=> bs!1068664 (= lambda!200390 lambda!200371)))

(declare-fun bs!1068665 () Bool)

(assert (= bs!1068665 (and d!1480749 b!4661015)))

(assert (=> bs!1068665 (= lambda!200390 lambda!200284)))

(declare-fun bs!1068666 () Bool)

(assert (= bs!1068666 (and d!1480749 d!1480743)))

(assert (=> bs!1068666 (= lambda!200390 lambda!200383)))

(declare-fun bs!1068667 () Bool)

(assert (= bs!1068667 (and d!1480749 d!1480711)))

(assert (=> bs!1068667 (not (= lambda!200390 lambda!200375))))

(declare-fun b!4661317 () Bool)

(declare-fun res!1960832 () Bool)

(declare-fun e!2908662 () Bool)

(assert (=> b!4661317 (=> (not res!1960832) (not e!2908662))))

(assert (=> b!4661317 (= res!1960832 (contains!15093 (extractMap!1710 (toList!5237 lt!1822470)) key!4968))))

(declare-fun lt!1822768 () (_ BitVec 64))

(declare-fun lt!1822767 () List!52058)

(declare-fun e!2908661 () Bool)

(declare-fun b!4661319 () Bool)

(assert (=> b!4661319 (= e!2908661 (= (getValueByKey!1630 (toList!5237 lt!1822470) lt!1822768) (Some!11853 lt!1822767)))))

(declare-fun b!4661318 () Bool)

(assert (=> b!4661318 (= e!2908662 (isDefined!9115 (getPair!382 (apply!12257 lt!1822470 (hash!3801 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1822771 () Unit!119252)

(assert (=> b!4661318 (= lt!1822771 (forallContained!3254 (toList!5237 lt!1822470) lambda!200390 (tuple2!53065 (hash!3801 hashF!1389 key!4968) (apply!12257 lt!1822470 (hash!3801 hashF!1389 key!4968)))))))

(declare-fun lt!1822770 () Unit!119252)

(declare-fun lt!1822774 () Unit!119252)

(assert (=> b!4661318 (= lt!1822770 lt!1822774)))

(assert (=> b!4661318 (contains!15094 (toList!5237 lt!1822470) (tuple2!53065 lt!1822768 lt!1822767))))

(assert (=> b!4661318 (= lt!1822774 (lemmaGetValueImpliesTupleContained!187 lt!1822470 lt!1822768 lt!1822767))))

(assert (=> b!4661318 e!2908661))

(declare-fun res!1960831 () Bool)

(assert (=> b!4661318 (=> (not res!1960831) (not e!2908661))))

(assert (=> b!4661318 (= res!1960831 (contains!15095 lt!1822470 lt!1822768))))

(assert (=> b!4661318 (= lt!1822767 (apply!12257 lt!1822470 (hash!3801 hashF!1389 key!4968)))))

(assert (=> b!4661318 (= lt!1822768 (hash!3801 hashF!1389 key!4968))))

(declare-fun lt!1822769 () Unit!119252)

(declare-fun lt!1822772 () Unit!119252)

(assert (=> b!4661318 (= lt!1822769 lt!1822772)))

(assert (=> b!4661318 (contains!15095 lt!1822470 (hash!3801 hashF!1389 key!4968))))

(assert (=> b!4661318 (= lt!1822772 (lemmaInGenMapThenLongMapContainsHash!588 lt!1822470 key!4968 hashF!1389))))

(declare-fun b!4661316 () Bool)

(declare-fun res!1960830 () Bool)

(assert (=> b!4661316 (=> (not res!1960830) (not e!2908662))))

(assert (=> b!4661316 (= res!1960830 (allKeysSameHashInMap!1610 lt!1822470 hashF!1389))))

(assert (=> d!1480749 e!2908662))

(declare-fun res!1960833 () Bool)

(assert (=> d!1480749 (=> (not res!1960833) (not e!2908662))))

(assert (=> d!1480749 (= res!1960833 (forall!11054 (toList!5237 lt!1822470) lambda!200390))))

(declare-fun lt!1822773 () Unit!119252)

(declare-fun choose!32115 (ListLongMap!3791 K!13285 Hashable!6051) Unit!119252)

(assert (=> d!1480749 (= lt!1822773 (choose!32115 lt!1822470 key!4968 hashF!1389))))

(assert (=> d!1480749 (forall!11054 (toList!5237 lt!1822470) lambda!200390)))

(assert (=> d!1480749 (= (lemmaInGenMapThenGetPairDefined!178 lt!1822470 key!4968 hashF!1389) lt!1822773)))

(assert (= (and d!1480749 res!1960833) b!4661316))

(assert (= (and b!4661316 res!1960830) b!4661317))

(assert (= (and b!4661317 res!1960832) b!4661318))

(assert (= (and b!4661318 res!1960831) b!4661319))

(declare-fun m!5544889 () Bool)

(assert (=> b!4661318 m!5544889))

(declare-fun m!5544891 () Bool)

(assert (=> b!4661318 m!5544891))

(declare-fun m!5544893 () Bool)

(assert (=> b!4661318 m!5544893))

(declare-fun m!5544895 () Bool)

(assert (=> b!4661318 m!5544895))

(assert (=> b!4661318 m!5544889))

(assert (=> b!4661318 m!5544557))

(assert (=> b!4661318 m!5544895))

(declare-fun m!5544897 () Bool)

(assert (=> b!4661318 m!5544897))

(assert (=> b!4661318 m!5544557))

(assert (=> b!4661318 m!5544543))

(declare-fun m!5544899 () Bool)

(assert (=> b!4661318 m!5544899))

(assert (=> b!4661318 m!5544557))

(assert (=> b!4661318 m!5544881))

(declare-fun m!5544901 () Bool)

(assert (=> b!4661318 m!5544901))

(declare-fun m!5544903 () Bool)

(assert (=> d!1480749 m!5544903))

(declare-fun m!5544905 () Bool)

(assert (=> d!1480749 m!5544905))

(assert (=> d!1480749 m!5544903))

(declare-fun m!5544907 () Bool)

(assert (=> b!4661317 m!5544907))

(assert (=> b!4661317 m!5544907))

(declare-fun m!5544909 () Bool)

(assert (=> b!4661317 m!5544909))

(declare-fun m!5544911 () Bool)

(assert (=> b!4661316 m!5544911))

(declare-fun m!5544913 () Bool)

(assert (=> b!4661319 m!5544913))

(assert (=> b!4661015 d!1480749))

(declare-fun d!1480751 () Bool)

(declare-fun lt!1822777 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9019 (List!52059) (InoxSet tuple2!53064))

(assert (=> d!1480751 (= lt!1822777 (select (content!9019 lt!1822477) lt!1822478))))

(declare-fun e!2908668 () Bool)

(assert (=> d!1480751 (= lt!1822777 e!2908668)))

(declare-fun res!1960838 () Bool)

(assert (=> d!1480751 (=> (not res!1960838) (not e!2908668))))

(assert (=> d!1480751 (= res!1960838 ((_ is Cons!51935) lt!1822477))))

(assert (=> d!1480751 (= (contains!15094 lt!1822477 lt!1822478) lt!1822777)))

(declare-fun b!4661324 () Bool)

(declare-fun e!2908667 () Bool)

(assert (=> b!4661324 (= e!2908668 e!2908667)))

(declare-fun res!1960839 () Bool)

(assert (=> b!4661324 (=> res!1960839 e!2908667)))

(assert (=> b!4661324 (= res!1960839 (= (h!58089 lt!1822477) lt!1822478))))

(declare-fun b!4661325 () Bool)

(assert (=> b!4661325 (= e!2908667 (contains!15094 (t!359175 lt!1822477) lt!1822478))))

(assert (= (and d!1480751 res!1960838) b!4661324))

(assert (= (and b!4661324 (not res!1960839)) b!4661325))

(declare-fun m!5544915 () Bool)

(assert (=> d!1480751 m!5544915))

(declare-fun m!5544917 () Bool)

(assert (=> d!1480751 m!5544917))

(declare-fun m!5544919 () Bool)

(assert (=> b!4661325 m!5544919))

(assert (=> b!4661015 d!1480751))

(declare-fun d!1480753 () Bool)

(assert (=> d!1480753 (dynLambda!21614 lambda!200284 lt!1822478)))

(declare-fun lt!1822780 () Unit!119252)

(declare-fun choose!32116 (List!52059 Int tuple2!53064) Unit!119252)

(assert (=> d!1480753 (= lt!1822780 (choose!32116 lt!1822477 lambda!200284 lt!1822478))))

(declare-fun e!2908671 () Bool)

(assert (=> d!1480753 e!2908671))

(declare-fun res!1960842 () Bool)

(assert (=> d!1480753 (=> (not res!1960842) (not e!2908671))))

(assert (=> d!1480753 (= res!1960842 (forall!11054 lt!1822477 lambda!200284))))

(assert (=> d!1480753 (= (forallContained!3254 lt!1822477 lambda!200284 lt!1822478) lt!1822780)))

(declare-fun b!4661328 () Bool)

(assert (=> b!4661328 (= e!2908671 (contains!15094 lt!1822477 lt!1822478))))

(assert (= (and d!1480753 res!1960842) b!4661328))

(declare-fun b_lambda!175225 () Bool)

(assert (=> (not b_lambda!175225) (not d!1480753)))

(declare-fun m!5544921 () Bool)

(assert (=> d!1480753 m!5544921))

(declare-fun m!5544923 () Bool)

(assert (=> d!1480753 m!5544923))

(declare-fun m!5544925 () Bool)

(assert (=> d!1480753 m!5544925))

(assert (=> b!4661328 m!5544535))

(assert (=> b!4661015 d!1480753))

(declare-fun d!1480755 () Bool)

(declare-fun get!17293 (Option!11854) List!52058)

(assert (=> d!1480755 (= (apply!12257 lt!1822470 lt!1822483) (get!17293 (getValueByKey!1630 (toList!5237 lt!1822470) lt!1822483)))))

(declare-fun bs!1068668 () Bool)

(assert (= bs!1068668 d!1480755))

(assert (=> bs!1068668 m!5544871))

(assert (=> bs!1068668 m!5544871))

(declare-fun m!5544927 () Bool)

(assert (=> bs!1068668 m!5544927))

(assert (=> b!4661015 d!1480755))

(declare-fun b!4661345 () Bool)

(declare-fun e!2908686 () Option!11850)

(declare-fun e!2908684 () Option!11850)

(assert (=> b!4661345 (= e!2908686 e!2908684)))

(declare-fun c!797909 () Bool)

(assert (=> b!4661345 (= c!797909 ((_ is Cons!51934) lt!1822472))))

(declare-fun b!4661346 () Bool)

(assert (=> b!4661346 (= e!2908684 (getPair!382 (t!359174 lt!1822472) key!4968))))

(declare-fun d!1480757 () Bool)

(declare-fun e!2908683 () Bool)

(assert (=> d!1480757 e!2908683))

(declare-fun res!1960851 () Bool)

(assert (=> d!1480757 (=> res!1960851 e!2908683)))

(declare-fun e!2908682 () Bool)

(assert (=> d!1480757 (= res!1960851 e!2908682)))

(declare-fun res!1960852 () Bool)

(assert (=> d!1480757 (=> (not res!1960852) (not e!2908682))))

(declare-fun lt!1822783 () Option!11850)

(assert (=> d!1480757 (= res!1960852 (isEmpty!29027 lt!1822783))))

(assert (=> d!1480757 (= lt!1822783 e!2908686)))

(declare-fun c!797910 () Bool)

(assert (=> d!1480757 (= c!797910 (and ((_ is Cons!51934) lt!1822472) (= (_1!29825 (h!58088 lt!1822472)) key!4968)))))

(assert (=> d!1480757 (noDuplicateKeys!1654 lt!1822472)))

(assert (=> d!1480757 (= (getPair!382 lt!1822472 key!4968) lt!1822783)))

(declare-fun b!4661347 () Bool)

(assert (=> b!4661347 (= e!2908686 (Some!11849 (h!58088 lt!1822472)))))

(declare-fun b!4661348 () Bool)

(assert (=> b!4661348 (= e!2908682 (not (containsKey!2752 lt!1822472 key!4968)))))

(declare-fun b!4661349 () Bool)

(declare-fun res!1960853 () Bool)

(declare-fun e!2908685 () Bool)

(assert (=> b!4661349 (=> (not res!1960853) (not e!2908685))))

(declare-fun get!17294 (Option!11850) tuple2!53062)

(assert (=> b!4661349 (= res!1960853 (= (_1!29825 (get!17294 lt!1822783)) key!4968))))

(declare-fun b!4661350 () Bool)

(assert (=> b!4661350 (= e!2908683 e!2908685)))

(declare-fun res!1960854 () Bool)

(assert (=> b!4661350 (=> (not res!1960854) (not e!2908685))))

(assert (=> b!4661350 (= res!1960854 (isDefined!9115 lt!1822783))))

(declare-fun b!4661351 () Bool)

(declare-fun contains!15099 (List!52058 tuple2!53062) Bool)

(assert (=> b!4661351 (= e!2908685 (contains!15099 lt!1822472 (get!17294 lt!1822783)))))

(declare-fun b!4661352 () Bool)

(assert (=> b!4661352 (= e!2908684 None!11849)))

(assert (= (and d!1480757 c!797910) b!4661347))

(assert (= (and d!1480757 (not c!797910)) b!4661345))

(assert (= (and b!4661345 c!797909) b!4661346))

(assert (= (and b!4661345 (not c!797909)) b!4661352))

(assert (= (and d!1480757 res!1960852) b!4661348))

(assert (= (and d!1480757 (not res!1960851)) b!4661350))

(assert (= (and b!4661350 res!1960854) b!4661349))

(assert (= (and b!4661349 res!1960853) b!4661351))

(declare-fun m!5544929 () Bool)

(assert (=> d!1480757 m!5544929))

(declare-fun m!5544931 () Bool)

(assert (=> d!1480757 m!5544931))

(declare-fun m!5544933 () Bool)

(assert (=> b!4661349 m!5544933))

(declare-fun m!5544935 () Bool)

(assert (=> b!4661348 m!5544935))

(declare-fun m!5544937 () Bool)

(assert (=> b!4661346 m!5544937))

(assert (=> b!4661351 m!5544933))

(assert (=> b!4661351 m!5544933))

(declare-fun m!5544939 () Bool)

(assert (=> b!4661351 m!5544939))

(declare-fun m!5544941 () Bool)

(assert (=> b!4661350 m!5544941))

(assert (=> b!4661015 d!1480757))

(declare-fun e!2908689 () Bool)

(declare-fun b!4661357 () Bool)

(declare-fun tp!1343466 () Bool)

(assert (=> b!4661357 (= e!2908689 (and tp_is_empty!29909 tp_is_empty!29911 tp!1343466))))

(assert (=> b!4661012 (= tp!1343459 e!2908689)))

(assert (= (and b!4661012 ((_ is Cons!51934) (t!359174 newBucket!224))) b!4661357))

(declare-fun tp!1343467 () Bool)

(declare-fun e!2908690 () Bool)

(declare-fun b!4661358 () Bool)

(assert (=> b!4661358 (= e!2908690 (and tp_is_empty!29909 tp_is_empty!29911 tp!1343467))))

(assert (=> b!4661009 (= tp!1343458 e!2908690)))

(assert (= (and b!4661009 ((_ is Cons!51934) (t!359174 oldBucket!40))) b!4661358))

(declare-fun b_lambda!175227 () Bool)

(assert (= b_lambda!175225 (or b!4661015 b_lambda!175227)))

(declare-fun bs!1068669 () Bool)

(declare-fun d!1480759 () Bool)

(assert (= bs!1068669 (and d!1480759 b!4661015)))

(assert (=> bs!1068669 (= (dynLambda!21614 lambda!200284 lt!1822478) (noDuplicateKeys!1654 (_2!29826 lt!1822478)))))

(declare-fun m!5544943 () Bool)

(assert (=> bs!1068669 m!5544943))

(assert (=> d!1480753 d!1480759))

(declare-fun b_lambda!175229 () Bool)

(assert (= b_lambda!175215 (or b!4661015 b_lambda!175229)))

(declare-fun bs!1068670 () Bool)

(declare-fun d!1480761 () Bool)

(assert (= bs!1068670 (and d!1480761 b!4661015)))

(assert (=> bs!1068670 (= (dynLambda!21614 lambda!200284 (h!58089 lt!1822471)) (noDuplicateKeys!1654 (_2!29826 (h!58089 lt!1822471))))))

(declare-fun m!5544945 () Bool)

(assert (=> bs!1068670 m!5544945))

(assert (=> b!4661035 d!1480761))

(check-sat (not b!4661319) (not b!4661296) (not bm!325656) (not d!1480753) (not b!4661358) (not b!4661247) (not d!1480707) (not b!4661305) (not b!4661351) (not d!1480757) (not b!4661227) (not b!4661316) (not b_lambda!175227) (not d!1480641) (not b!4661219) (not bm!325651) (not b!4661029) (not d!1480755) (not bs!1068669) (not b!4661317) (not b!4661350) (not bm!325652) (not d!1480749) (not b!4661036) (not b!4661281) (not b!4661160) (not b!4661357) (not d!1480743) (not b!4661159) (not d!1480651) (not b!4661298) (not d!1480741) (not d!1480737) (not b!4661328) (not d!1480653) (not b!4661283) (not b!4661280) (not d!1480751) (not d!1480703) (not d!1480717) (not b!4661325) (not b!4661348) (not d!1480739) (not b!4661286) (not b!4661234) (not b!4661288) (not b!4661287) (not d!1480735) (not d!1480711) (not d!1480733) (not b!4661161) (not b!4661279) (not d!1480719) (not b_lambda!175229) (not bm!325653) (not d!1480649) tp_is_empty!29911 (not b!4661285) (not b!4661238) (not b!4661349) (not b!4661318) (not b!4661221) (not bs!1068670) (not b!4661226) (not d!1480683) (not b!4661209) (not b!4661158) (not b!4661307) (not b!4661346) tp_is_empty!29909 (not b!4661239))
(check-sat)
