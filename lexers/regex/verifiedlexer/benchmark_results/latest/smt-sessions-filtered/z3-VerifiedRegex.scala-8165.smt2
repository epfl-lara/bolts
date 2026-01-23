; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!420392 () Bool)

(assert start!420392)

(declare-fun b!4350500 () Bool)

(declare-fun e!2707315 () Bool)

(declare-fun e!2707312 () Bool)

(assert (=> b!4350500 (= e!2707315 e!2707312)))

(declare-fun res!1787224 () Bool)

(assert (=> b!4350500 (=> res!1787224 e!2707312)))

(declare-datatypes ((K!10230 0))(
  ( (K!10231 (val!16455 Int)) )
))
(declare-datatypes ((V!10476 0))(
  ( (V!10477 (val!16456 Int)) )
))
(declare-datatypes ((tuple2!48230 0))(
  ( (tuple2!48231 (_1!27409 K!10230) (_2!27409 V!10476)) )
))
(declare-datatypes ((List!48991 0))(
  ( (Nil!48867) (Cons!48867 (h!54402 tuple2!48230) (t!355911 List!48991)) )
))
(declare-fun newBucket!200 () List!48991)

(declare-fun lt!1564254 () tuple2!48230)

(declare-fun lt!1564255 () List!48991)

(declare-fun key!3918 () K!10230)

(declare-fun removePairForKey!435 (List!48991 K!10230) List!48991)

(assert (=> b!4350500 (= res!1787224 (not (= newBucket!200 (Cons!48867 lt!1564254 (removePairForKey!435 lt!1564255 key!3918)))))))

(declare-datatypes ((Unit!71033 0))(
  ( (Unit!71034) )
))
(declare-fun lt!1564260 () Unit!71033)

(declare-datatypes ((tuple2!48232 0))(
  ( (tuple2!48233 (_1!27410 (_ BitVec 64)) (_2!27410 List!48991)) )
))
(declare-fun lt!1564251 () tuple2!48232)

(declare-fun lambda!139297 () Int)

(declare-datatypes ((List!48992 0))(
  ( (Nil!48868) (Cons!48868 (h!54403 tuple2!48232) (t!355912 List!48992)) )
))
(declare-datatypes ((ListLongMap!1563 0))(
  ( (ListLongMap!1564 (toList!2913 List!48992)) )
))
(declare-fun lt!1564247 () ListLongMap!1563)

(declare-fun forallContained!1723 (List!48992 Int tuple2!48232) Unit!71033)

(assert (=> b!4350500 (= lt!1564260 (forallContained!1723 (toList!2913 lt!1564247) lambda!139297 lt!1564251))))

(declare-fun contains!11032 (List!48992 tuple2!48232) Bool)

(assert (=> b!4350500 (contains!11032 (toList!2913 lt!1564247) lt!1564251)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4350500 (= lt!1564251 (tuple2!48233 hash!377 lt!1564255))))

(declare-fun lt!1564256 () Unit!71033)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!312 (List!48992 (_ BitVec 64) List!48991) Unit!71033)

(assert (=> b!4350500 (= lt!1564256 (lemmaGetValueByKeyImpliesContainsTuple!312 (toList!2913 lt!1564247) hash!377 lt!1564255))))

(declare-fun apply!11317 (ListLongMap!1563 (_ BitVec 64)) List!48991)

(assert (=> b!4350500 (= lt!1564255 (apply!11317 lt!1564247 hash!377))))

(declare-fun b!4350501 () Bool)

(declare-fun e!2707308 () Bool)

(declare-fun tp!1329819 () Bool)

(assert (=> b!4350501 (= e!2707308 tp!1329819)))

(declare-fun b!4350502 () Bool)

(declare-fun res!1787217 () Bool)

(assert (=> b!4350502 (=> res!1787217 e!2707315)))

(declare-fun contains!11033 (ListLongMap!1563 (_ BitVec 64)) Bool)

(assert (=> b!4350502 (= res!1787217 (not (contains!11033 lt!1564247 hash!377)))))

(declare-fun b!4350503 () Bool)

(declare-fun e!2707310 () Bool)

(assert (=> b!4350503 (= e!2707310 e!2707315)))

(declare-fun res!1787223 () Bool)

(assert (=> b!4350503 (=> res!1787223 e!2707315)))

(declare-fun forall!9075 (List!48992 Int) Bool)

(assert (=> b!4350503 (= res!1787223 (not (forall!9075 (toList!2913 lt!1564247) lambda!139297)))))

(declare-datatypes ((ListMap!2157 0))(
  ( (ListMap!2158 (toList!2914 List!48991)) )
))
(declare-fun contains!11034 (ListMap!2157 K!10230) Bool)

(declare-fun extractMap!524 (List!48992) ListMap!2157)

(assert (=> b!4350503 (contains!11034 (extractMap!524 (toList!2913 lt!1564247)) key!3918)))

(declare-fun lm!1707 () ListLongMap!1563)

(declare-fun tail!6957 (ListLongMap!1563) ListLongMap!1563)

(assert (=> b!4350503 (= lt!1564247 (tail!6957 lm!1707))))

(declare-fun lt!1564257 () ListMap!2157)

(assert (=> b!4350503 (contains!11034 lt!1564257 key!3918)))

(declare-fun lt!1564259 () Unit!71033)

(declare-fun newValue!99 () V!10476)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!8 (List!48991 K!10230 V!10476 ListMap!2157) Unit!71033)

(assert (=> b!4350503 (= lt!1564259 (lemmaAddToMapContainsAndNotInListThenInAcc!8 (_2!27410 (h!54403 (toList!2913 lm!1707))) key!3918 newValue!99 lt!1564257))))

(assert (=> b!4350503 (= lt!1564257 (extractMap!524 (t!355912 (toList!2913 lm!1707))))))

(declare-fun e!2707313 () Bool)

(assert (=> b!4350503 e!2707313))

(declare-fun res!1787227 () Bool)

(assert (=> b!4350503 (=> (not res!1787227) (not e!2707313))))

(declare-fun containsKey!636 (List!48991 K!10230) Bool)

(assert (=> b!4350503 (= res!1787227 (not (containsKey!636 (apply!11317 lm!1707 (_1!27410 (h!54403 (toList!2913 lm!1707)))) key!3918)))))

(declare-fun lt!1564258 () Unit!71033)

(declare-datatypes ((Hashable!4857 0))(
  ( (HashableExt!4856 (__x!30560 Int)) )
))
(declare-fun hashF!1247 () Hashable!4857)

(declare-fun lemmaNotSameHashThenCannotContainKey!12 (ListLongMap!1563 K!10230 (_ BitVec 64) Hashable!4857) Unit!71033)

(assert (=> b!4350503 (= lt!1564258 (lemmaNotSameHashThenCannotContainKey!12 lm!1707 key!3918 (_1!27410 (h!54403 (toList!2913 lm!1707))) hashF!1247))))

(declare-fun b!4350504 () Bool)

(declare-fun e!2707314 () Bool)

(declare-fun lt!1564246 () ListLongMap!1563)

(assert (=> b!4350504 (= e!2707314 (forall!9075 (toList!2913 lt!1564246) lambda!139297))))

(declare-fun tp_is_empty!25099 () Bool)

(declare-fun e!2707309 () Bool)

(declare-fun b!4350505 () Bool)

(declare-fun tp!1329820 () Bool)

(declare-fun tp_is_empty!25097 () Bool)

(assert (=> b!4350505 (= e!2707309 (and tp_is_empty!25097 tp_is_empty!25099 tp!1329820))))

(declare-fun b!4350506 () Bool)

(declare-fun res!1787218 () Bool)

(declare-fun e!2707316 () Bool)

(assert (=> b!4350506 (=> (not res!1787218) (not e!2707316))))

(declare-fun allKeysSameHashInMap!569 (ListLongMap!1563 Hashable!4857) Bool)

(assert (=> b!4350506 (= res!1787218 (allKeysSameHashInMap!569 lm!1707 hashF!1247))))

(declare-fun b!4350507 () Bool)

(declare-fun res!1787220 () Bool)

(assert (=> b!4350507 (=> (not res!1787220) (not e!2707316))))

(assert (=> b!4350507 (= res!1787220 (contains!11033 lm!1707 hash!377))))

(declare-fun res!1787231 () Bool)

(assert (=> start!420392 (=> (not res!1787231) (not e!2707316))))

(assert (=> start!420392 (= res!1787231 (forall!9075 (toList!2913 lm!1707) lambda!139297))))

(assert (=> start!420392 e!2707316))

(assert (=> start!420392 e!2707309))

(assert (=> start!420392 true))

(declare-fun inv!64416 (ListLongMap!1563) Bool)

(assert (=> start!420392 (and (inv!64416 lm!1707) e!2707308)))

(assert (=> start!420392 tp_is_empty!25097))

(assert (=> start!420392 tp_is_empty!25099))

(declare-fun b!4350508 () Bool)

(assert (=> b!4350508 (= e!2707313 (not (containsKey!636 (_2!27410 (h!54403 (toList!2913 lm!1707))) key!3918)))))

(declare-fun b!4350509 () Bool)

(declare-fun e!2707311 () Bool)

(assert (=> b!4350509 (= e!2707316 (not e!2707311))))

(declare-fun res!1787222 () Bool)

(assert (=> b!4350509 (=> res!1787222 e!2707311)))

(declare-fun lt!1564252 () List!48991)

(assert (=> b!4350509 (= res!1787222 (not (= newBucket!200 (Cons!48867 lt!1564254 (removePairForKey!435 lt!1564252 key!3918)))))))

(assert (=> b!4350509 (= lt!1564254 (tuple2!48231 key!3918 newValue!99))))

(declare-fun lt!1564249 () Unit!71033)

(declare-fun lt!1564250 () tuple2!48232)

(assert (=> b!4350509 (= lt!1564249 (forallContained!1723 (toList!2913 lm!1707) lambda!139297 lt!1564250))))

(assert (=> b!4350509 (contains!11032 (toList!2913 lm!1707) lt!1564250)))

(assert (=> b!4350509 (= lt!1564250 (tuple2!48233 hash!377 lt!1564252))))

(declare-fun lt!1564253 () Unit!71033)

(assert (=> b!4350509 (= lt!1564253 (lemmaGetValueByKeyImpliesContainsTuple!312 (toList!2913 lm!1707) hash!377 lt!1564252))))

(assert (=> b!4350509 (= lt!1564252 (apply!11317 lm!1707 hash!377))))

(declare-fun b!4350510 () Bool)

(assert (=> b!4350510 (= e!2707312 (forall!9075 (toList!2913 lt!1564247) lambda!139297))))

(declare-fun b!4350511 () Bool)

(declare-fun res!1787221 () Bool)

(assert (=> b!4350511 (=> (not res!1787221) (not e!2707316))))

(declare-fun allKeysSameHash!423 (List!48991 (_ BitVec 64) Hashable!4857) Bool)

(assert (=> b!4350511 (= res!1787221 (allKeysSameHash!423 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4350512 () Bool)

(declare-fun res!1787225 () Bool)

(assert (=> b!4350512 (=> res!1787225 e!2707315)))

(assert (=> b!4350512 (= res!1787225 (not (allKeysSameHashInMap!569 lt!1564247 hashF!1247)))))

(declare-fun b!4350513 () Bool)

(declare-fun res!1787230 () Bool)

(assert (=> b!4350513 (=> (not res!1787230) (not e!2707316))))

(declare-fun hash!1474 (Hashable!4857 K!10230) (_ BitVec 64))

(assert (=> b!4350513 (= res!1787230 (= (hash!1474 hashF!1247 key!3918) hash!377))))

(declare-fun b!4350514 () Bool)

(declare-fun res!1787228 () Bool)

(assert (=> b!4350514 (=> res!1787228 e!2707311)))

(declare-fun noDuplicateKeys!465 (List!48991) Bool)

(assert (=> b!4350514 (= res!1787228 (not (noDuplicateKeys!465 newBucket!200)))))

(declare-fun b!4350515 () Bool)

(declare-fun res!1787229 () Bool)

(assert (=> b!4350515 (=> (not res!1787229) (not e!2707316))))

(assert (=> b!4350515 (= res!1787229 (contains!11034 (extractMap!524 (toList!2913 lm!1707)) key!3918))))

(declare-fun b!4350516 () Bool)

(assert (=> b!4350516 (= e!2707311 e!2707310)))

(declare-fun res!1787226 () Bool)

(assert (=> b!4350516 (=> res!1787226 e!2707310)))

(get-info :version)

(assert (=> b!4350516 (= res!1787226 (or (and ((_ is Cons!48868) (toList!2913 lm!1707)) (= (_1!27410 (h!54403 (toList!2913 lm!1707))) hash!377)) (not ((_ is Cons!48868) (toList!2913 lm!1707))) (= (_1!27410 (h!54403 (toList!2913 lm!1707))) hash!377)))))

(assert (=> b!4350516 e!2707314))

(declare-fun res!1787219 () Bool)

(assert (=> b!4350516 (=> (not res!1787219) (not e!2707314))))

(assert (=> b!4350516 (= res!1787219 (forall!9075 (toList!2913 lt!1564246) lambda!139297))))

(declare-fun +!592 (ListLongMap!1563 tuple2!48232) ListLongMap!1563)

(assert (=> b!4350516 (= lt!1564246 (+!592 lm!1707 (tuple2!48233 hash!377 newBucket!200)))))

(declare-fun lt!1564248 () Unit!71033)

(declare-fun addValidProp!119 (ListLongMap!1563 Int (_ BitVec 64) List!48991) Unit!71033)

(assert (=> b!4350516 (= lt!1564248 (addValidProp!119 lm!1707 lambda!139297 hash!377 newBucket!200))))

(assert (=> b!4350516 (forall!9075 (toList!2913 lm!1707) lambda!139297)))

(assert (= (and start!420392 res!1787231) b!4350506))

(assert (= (and b!4350506 res!1787218) b!4350513))

(assert (= (and b!4350513 res!1787230) b!4350511))

(assert (= (and b!4350511 res!1787221) b!4350515))

(assert (= (and b!4350515 res!1787229) b!4350507))

(assert (= (and b!4350507 res!1787220) b!4350509))

(assert (= (and b!4350509 (not res!1787222)) b!4350514))

(assert (= (and b!4350514 (not res!1787228)) b!4350516))

(assert (= (and b!4350516 res!1787219) b!4350504))

(assert (= (and b!4350516 (not res!1787226)) b!4350503))

(assert (= (and b!4350503 res!1787227) b!4350508))

(assert (= (and b!4350503 (not res!1787223)) b!4350512))

(assert (= (and b!4350512 (not res!1787225)) b!4350502))

(assert (= (and b!4350502 (not res!1787217)) b!4350500))

(assert (= (and b!4350500 (not res!1787224)) b!4350510))

(assert (= (and start!420392 ((_ is Cons!48867) newBucket!200)) b!4350505))

(assert (= start!420392 b!4350501))

(declare-fun m!4960603 () Bool)

(assert (=> b!4350509 m!4960603))

(declare-fun m!4960605 () Bool)

(assert (=> b!4350509 m!4960605))

(declare-fun m!4960607 () Bool)

(assert (=> b!4350509 m!4960607))

(declare-fun m!4960609 () Bool)

(assert (=> b!4350509 m!4960609))

(declare-fun m!4960611 () Bool)

(assert (=> b!4350509 m!4960611))

(declare-fun m!4960613 () Bool)

(assert (=> b!4350500 m!4960613))

(declare-fun m!4960615 () Bool)

(assert (=> b!4350500 m!4960615))

(declare-fun m!4960617 () Bool)

(assert (=> b!4350500 m!4960617))

(declare-fun m!4960619 () Bool)

(assert (=> b!4350500 m!4960619))

(declare-fun m!4960621 () Bool)

(assert (=> b!4350500 m!4960621))

(declare-fun m!4960623 () Bool)

(assert (=> b!4350514 m!4960623))

(declare-fun m!4960625 () Bool)

(assert (=> b!4350504 m!4960625))

(declare-fun m!4960627 () Bool)

(assert (=> b!4350510 m!4960627))

(declare-fun m!4960629 () Bool)

(assert (=> b!4350513 m!4960629))

(declare-fun m!4960631 () Bool)

(assert (=> b!4350507 m!4960631))

(declare-fun m!4960633 () Bool)

(assert (=> b!4350508 m!4960633))

(declare-fun m!4960635 () Bool)

(assert (=> b!4350506 m!4960635))

(declare-fun m!4960637 () Bool)

(assert (=> b!4350515 m!4960637))

(assert (=> b!4350515 m!4960637))

(declare-fun m!4960639 () Bool)

(assert (=> b!4350515 m!4960639))

(declare-fun m!4960641 () Bool)

(assert (=> b!4350503 m!4960641))

(declare-fun m!4960643 () Bool)

(assert (=> b!4350503 m!4960643))

(declare-fun m!4960645 () Bool)

(assert (=> b!4350503 m!4960645))

(declare-fun m!4960647 () Bool)

(assert (=> b!4350503 m!4960647))

(declare-fun m!4960649 () Bool)

(assert (=> b!4350503 m!4960649))

(assert (=> b!4350503 m!4960645))

(declare-fun m!4960651 () Bool)

(assert (=> b!4350503 m!4960651))

(declare-fun m!4960653 () Bool)

(assert (=> b!4350503 m!4960653))

(assert (=> b!4350503 m!4960627))

(declare-fun m!4960655 () Bool)

(assert (=> b!4350503 m!4960655))

(assert (=> b!4350503 m!4960655))

(declare-fun m!4960657 () Bool)

(assert (=> b!4350503 m!4960657))

(declare-fun m!4960659 () Bool)

(assert (=> b!4350512 m!4960659))

(declare-fun m!4960661 () Bool)

(assert (=> b!4350502 m!4960661))

(declare-fun m!4960663 () Bool)

(assert (=> start!420392 m!4960663))

(declare-fun m!4960665 () Bool)

(assert (=> start!420392 m!4960665))

(assert (=> b!4350516 m!4960625))

(declare-fun m!4960667 () Bool)

(assert (=> b!4350516 m!4960667))

(declare-fun m!4960669 () Bool)

(assert (=> b!4350516 m!4960669))

(assert (=> b!4350516 m!4960663))

(declare-fun m!4960671 () Bool)

(assert (=> b!4350511 m!4960671))

(check-sat (not b!4350501) (not b!4350503) (not start!420392) (not b!4350504) (not b!4350514) (not b!4350515) (not b!4350506) (not b!4350513) tp_is_empty!25099 (not b!4350502) (not b!4350510) (not b!4350509) (not b!4350500) (not b!4350508) (not b!4350512) tp_is_empty!25097 (not b!4350505) (not b!4350511) (not b!4350516) (not b!4350507))
(check-sat)
