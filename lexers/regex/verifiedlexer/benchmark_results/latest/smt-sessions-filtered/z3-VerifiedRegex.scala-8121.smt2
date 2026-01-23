; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!418112 () Bool)

(assert start!418112)

(declare-fun b!4335339 () Bool)

(declare-fun res!1778021 () Bool)

(declare-fun e!2697663 () Bool)

(assert (=> b!4335339 (=> (not res!1778021) (not e!2697663))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4769 0))(
  ( (HashableExt!4768 (__x!30472 Int)) )
))
(declare-fun hashF!1247 () Hashable!4769)

(declare-datatypes ((K!10010 0))(
  ( (K!10011 (val!16279 Int)) )
))
(declare-fun key!3918 () K!10010)

(declare-fun hash!1322 (Hashable!4769 K!10010) (_ BitVec 64))

(assert (=> b!4335339 (= res!1778021 (= (hash!1322 hashF!1247 key!3918) hash!377))))

(declare-fun res!1778010 () Bool)

(assert (=> start!418112 (=> (not res!1778010) (not e!2697663))))

(declare-datatypes ((V!10256 0))(
  ( (V!10257 (val!16280 Int)) )
))
(declare-datatypes ((tuple2!47878 0))(
  ( (tuple2!47879 (_1!27233 K!10010) (_2!27233 V!10256)) )
))
(declare-datatypes ((List!48779 0))(
  ( (Nil!48655) (Cons!48655 (h!54154 tuple2!47878) (t!355695 List!48779)) )
))
(declare-datatypes ((tuple2!47880 0))(
  ( (tuple2!47881 (_1!27234 (_ BitVec 64)) (_2!27234 List!48779)) )
))
(declare-datatypes ((List!48780 0))(
  ( (Nil!48656) (Cons!48656 (h!54155 tuple2!47880) (t!355696 List!48780)) )
))
(declare-datatypes ((ListLongMap!1387 0))(
  ( (ListLongMap!1388 (toList!2737 List!48780)) )
))
(declare-fun lm!1707 () ListLongMap!1387)

(declare-fun lambda!135661 () Int)

(declare-fun forall!8943 (List!48780 Int) Bool)

(assert (=> start!418112 (= res!1778010 (forall!8943 (toList!2737 lm!1707) lambda!135661))))

(assert (=> start!418112 e!2697663))

(declare-fun e!2697658 () Bool)

(assert (=> start!418112 e!2697658))

(assert (=> start!418112 true))

(declare-fun e!2697659 () Bool)

(declare-fun inv!64196 (ListLongMap!1387) Bool)

(assert (=> start!418112 (and (inv!64196 lm!1707) e!2697659)))

(declare-fun tp_is_empty!24745 () Bool)

(assert (=> start!418112 tp_is_empty!24745))

(declare-fun tp_is_empty!24747 () Bool)

(assert (=> start!418112 tp_is_empty!24747))

(declare-fun b!4335340 () Bool)

(declare-fun res!1778019 () Bool)

(assert (=> b!4335340 (=> (not res!1778019) (not e!2697663))))

(declare-fun allKeysSameHashInMap!481 (ListLongMap!1387 Hashable!4769) Bool)

(assert (=> b!4335340 (= res!1778019 (allKeysSameHashInMap!481 lm!1707 hashF!1247))))

(declare-fun b!4335341 () Bool)

(declare-fun e!2697662 () Bool)

(assert (=> b!4335341 (= e!2697663 (not e!2697662))))

(declare-fun res!1778016 () Bool)

(assert (=> b!4335341 (=> res!1778016 e!2697662)))

(declare-fun newBucket!200 () List!48779)

(declare-fun lt!1548690 () List!48779)

(assert (=> b!4335341 (= res!1778016 (not (= newBucket!200 lt!1548690)))))

(declare-fun lt!1548689 () tuple2!47878)

(declare-fun lt!1548688 () List!48779)

(assert (=> b!4335341 (= lt!1548690 (Cons!48655 lt!1548689 lt!1548688))))

(declare-fun lt!1548692 () List!48779)

(declare-fun removePairForKey!347 (List!48779 K!10010) List!48779)

(assert (=> b!4335341 (= lt!1548688 (removePairForKey!347 lt!1548692 key!3918))))

(declare-fun newValue!99 () V!10256)

(assert (=> b!4335341 (= lt!1548689 (tuple2!47879 key!3918 newValue!99))))

(declare-fun lt!1548693 () tuple2!47880)

(declare-datatypes ((Unit!68479 0))(
  ( (Unit!68480) )
))
(declare-fun lt!1548682 () Unit!68479)

(declare-fun forallContained!1593 (List!48780 Int tuple2!47880) Unit!68479)

(assert (=> b!4335341 (= lt!1548682 (forallContained!1593 (toList!2737 lm!1707) lambda!135661 lt!1548693))))

(declare-fun contains!10704 (List!48780 tuple2!47880) Bool)

(assert (=> b!4335341 (contains!10704 (toList!2737 lm!1707) lt!1548693)))

(assert (=> b!4335341 (= lt!1548693 (tuple2!47881 hash!377 lt!1548692))))

(declare-fun lt!1548686 () Unit!68479)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!224 (List!48780 (_ BitVec 64) List!48779) Unit!68479)

(assert (=> b!4335341 (= lt!1548686 (lemmaGetValueByKeyImpliesContainsTuple!224 (toList!2737 lm!1707) hash!377 lt!1548692))))

(declare-fun apply!11229 (ListLongMap!1387 (_ BitVec 64)) List!48779)

(assert (=> b!4335341 (= lt!1548692 (apply!11229 lm!1707 hash!377))))

(declare-fun b!4335342 () Bool)

(declare-fun res!1778013 () Bool)

(assert (=> b!4335342 (=> (not res!1778013) (not e!2697663))))

(declare-datatypes ((ListMap!1981 0))(
  ( (ListMap!1982 (toList!2738 List!48779)) )
))
(declare-fun contains!10705 (ListMap!1981 K!10010) Bool)

(declare-fun extractMap!436 (List!48780) ListMap!1981)

(assert (=> b!4335342 (= res!1778013 (contains!10705 (extractMap!436 (toList!2737 lm!1707)) key!3918))))

(declare-fun b!4335343 () Bool)

(declare-fun res!1778014 () Bool)

(assert (=> b!4335343 (=> res!1778014 e!2697662)))

(declare-fun noDuplicateKeys!377 (List!48779) Bool)

(assert (=> b!4335343 (= res!1778014 (not (noDuplicateKeys!377 newBucket!200)))))

(declare-fun b!4335344 () Bool)

(declare-fun e!2697664 () Bool)

(assert (=> b!4335344 (= e!2697662 e!2697664)))

(declare-fun res!1778015 () Bool)

(assert (=> b!4335344 (=> res!1778015 e!2697664)))

(get-info :version)

(assert (=> b!4335344 (= res!1778015 (or (not ((_ is Cons!48656) (toList!2737 lm!1707))) (not (= (_1!27234 (h!54155 (toList!2737 lm!1707))) hash!377))))))

(declare-fun e!2697660 () Bool)

(assert (=> b!4335344 e!2697660))

(declare-fun res!1778018 () Bool)

(assert (=> b!4335344 (=> (not res!1778018) (not e!2697660))))

(declare-fun lt!1548683 () ListLongMap!1387)

(assert (=> b!4335344 (= res!1778018 (forall!8943 (toList!2737 lt!1548683) lambda!135661))))

(declare-fun lt!1548691 () tuple2!47880)

(declare-fun +!425 (ListLongMap!1387 tuple2!47880) ListLongMap!1387)

(assert (=> b!4335344 (= lt!1548683 (+!425 lm!1707 lt!1548691))))

(assert (=> b!4335344 (= lt!1548691 (tuple2!47881 hash!377 newBucket!200))))

(declare-fun lt!1548685 () Unit!68479)

(declare-fun addValidProp!31 (ListLongMap!1387 Int (_ BitVec 64) List!48779) Unit!68479)

(assert (=> b!4335344 (= lt!1548685 (addValidProp!31 lm!1707 lambda!135661 hash!377 newBucket!200))))

(assert (=> b!4335344 (forall!8943 (toList!2737 lm!1707) lambda!135661)))

(declare-fun b!4335345 () Bool)

(declare-fun res!1778020 () Bool)

(assert (=> b!4335345 (=> (not res!1778020) (not e!2697660))))

(assert (=> b!4335345 (= res!1778020 (forall!8943 (toList!2737 lt!1548683) lambda!135661))))

(declare-fun b!4335346 () Bool)

(assert (=> b!4335346 (= e!2697660 (or (not ((_ is Cons!48656) (toList!2737 lm!1707))) (not (= (_1!27234 (h!54155 (toList!2737 lm!1707))) hash!377)) (= lt!1548683 (ListLongMap!1388 (Cons!48656 lt!1548691 (t!355696 (toList!2737 lm!1707)))))))))

(declare-fun b!4335347 () Bool)

(assert (=> b!4335347 (= e!2697664 true)))

(declare-fun e!2697661 () Bool)

(assert (=> b!4335347 e!2697661))

(declare-fun res!1778011 () Bool)

(assert (=> b!4335347 (=> (not res!1778011) (not e!2697661))))

(declare-fun lt!1548684 () ListMap!1981)

(declare-fun lt!1548687 () ListMap!1981)

(assert (=> b!4335347 (= res!1778011 (= lt!1548684 lt!1548687))))

(declare-fun lt!1548694 () ListMap!1981)

(declare-fun addToMapMapFromBucket!85 (List!48779 ListMap!1981) ListMap!1981)

(assert (=> b!4335347 (= lt!1548687 (addToMapMapFromBucket!85 lt!1548690 lt!1548694))))

(assert (=> b!4335347 (= lt!1548684 (addToMapMapFromBucket!85 newBucket!200 lt!1548694))))

(assert (=> b!4335347 (= lt!1548684 (extractMap!436 (toList!2737 lt!1548683)))))

(assert (=> b!4335347 (= lt!1548694 (extractMap!436 (t!355696 (toList!2737 lm!1707))))))

(declare-fun b!4335348 () Bool)

(declare-fun tp!1328926 () Bool)

(assert (=> b!4335348 (= e!2697659 tp!1328926)))

(declare-fun b!4335349 () Bool)

(declare-fun res!1778012 () Bool)

(assert (=> b!4335349 (=> (not res!1778012) (not e!2697663))))

(declare-fun allKeysSameHash!335 (List!48779 (_ BitVec 64) Hashable!4769) Bool)

(assert (=> b!4335349 (= res!1778012 (allKeysSameHash!335 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4335350 () Bool)

(declare-fun res!1778017 () Bool)

(assert (=> b!4335350 (=> (not res!1778017) (not e!2697663))))

(declare-fun contains!10706 (ListLongMap!1387 (_ BitVec 64)) Bool)

(assert (=> b!4335350 (= res!1778017 (contains!10706 lm!1707 hash!377))))

(declare-fun b!4335351 () Bool)

(declare-fun +!426 (ListMap!1981 tuple2!47878) ListMap!1981)

(assert (=> b!4335351 (= e!2697661 (= lt!1548687 (addToMapMapFromBucket!85 lt!1548688 (+!426 lt!1548694 lt!1548689))))))

(declare-fun b!4335352 () Bool)

(declare-fun tp!1328925 () Bool)

(assert (=> b!4335352 (= e!2697658 (and tp_is_empty!24745 tp_is_empty!24747 tp!1328925))))

(assert (= (and start!418112 res!1778010) b!4335340))

(assert (= (and b!4335340 res!1778019) b!4335339))

(assert (= (and b!4335339 res!1778021) b!4335349))

(assert (= (and b!4335349 res!1778012) b!4335342))

(assert (= (and b!4335342 res!1778013) b!4335350))

(assert (= (and b!4335350 res!1778017) b!4335341))

(assert (= (and b!4335341 (not res!1778016)) b!4335343))

(assert (= (and b!4335343 (not res!1778014)) b!4335344))

(assert (= (and b!4335344 res!1778018) b!4335345))

(assert (= (and b!4335345 res!1778020) b!4335346))

(assert (= (and b!4335344 (not res!1778015)) b!4335347))

(assert (= (and b!4335347 res!1778011) b!4335351))

(assert (= (and start!418112 ((_ is Cons!48655) newBucket!200)) b!4335352))

(assert (= start!418112 b!4335348))

(declare-fun m!4930185 () Bool)

(assert (=> b!4335351 m!4930185))

(assert (=> b!4335351 m!4930185))

(declare-fun m!4930187 () Bool)

(assert (=> b!4335351 m!4930187))

(declare-fun m!4930189 () Bool)

(assert (=> start!418112 m!4930189))

(declare-fun m!4930191 () Bool)

(assert (=> start!418112 m!4930191))

(declare-fun m!4930193 () Bool)

(assert (=> b!4335343 m!4930193))

(declare-fun m!4930195 () Bool)

(assert (=> b!4335340 m!4930195))

(declare-fun m!4930197 () Bool)

(assert (=> b!4335345 m!4930197))

(declare-fun m!4930199 () Bool)

(assert (=> b!4335339 m!4930199))

(assert (=> b!4335344 m!4930197))

(declare-fun m!4930201 () Bool)

(assert (=> b!4335344 m!4930201))

(declare-fun m!4930203 () Bool)

(assert (=> b!4335344 m!4930203))

(assert (=> b!4335344 m!4930189))

(declare-fun m!4930205 () Bool)

(assert (=> b!4335349 m!4930205))

(declare-fun m!4930207 () Bool)

(assert (=> b!4335347 m!4930207))

(declare-fun m!4930209 () Bool)

(assert (=> b!4335347 m!4930209))

(declare-fun m!4930211 () Bool)

(assert (=> b!4335347 m!4930211))

(declare-fun m!4930213 () Bool)

(assert (=> b!4335347 m!4930213))

(declare-fun m!4930215 () Bool)

(assert (=> b!4335342 m!4930215))

(assert (=> b!4335342 m!4930215))

(declare-fun m!4930217 () Bool)

(assert (=> b!4335342 m!4930217))

(declare-fun m!4930219 () Bool)

(assert (=> b!4335350 m!4930219))

(declare-fun m!4930221 () Bool)

(assert (=> b!4335341 m!4930221))

(declare-fun m!4930223 () Bool)

(assert (=> b!4335341 m!4930223))

(declare-fun m!4930225 () Bool)

(assert (=> b!4335341 m!4930225))

(declare-fun m!4930227 () Bool)

(assert (=> b!4335341 m!4930227))

(declare-fun m!4930229 () Bool)

(assert (=> b!4335341 m!4930229))

(check-sat (not start!418112) (not b!4335340) (not b!4335349) (not b!4335345) (not b!4335341) (not b!4335347) (not b!4335343) tp_is_empty!24747 (not b!4335350) tp_is_empty!24745 (not b!4335344) (not b!4335339) (not b!4335352) (not b!4335351) (not b!4335342) (not b!4335348))
(check-sat)
