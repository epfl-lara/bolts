; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!417578 () Bool)

(assert start!417578)

(declare-fun b!4332320 () Bool)

(declare-fun res!1776150 () Bool)

(declare-fun e!2695870 () Bool)

(assert (=> b!4332320 (=> (not res!1776150) (not e!2695870))))

(declare-datatypes ((V!10186 0))(
  ( (V!10187 (val!16223 Int)) )
))
(declare-datatypes ((K!9940 0))(
  ( (K!9941 (val!16224 Int)) )
))
(declare-datatypes ((tuple2!47766 0))(
  ( (tuple2!47767 (_1!27177 K!9940) (_2!27177 V!10186)) )
))
(declare-datatypes ((List!48712 0))(
  ( (Nil!48588) (Cons!48588 (h!54073 tuple2!47766) (t!355628 List!48712)) )
))
(declare-datatypes ((tuple2!47768 0))(
  ( (tuple2!47769 (_1!27178 (_ BitVec 64)) (_2!27178 List!48712)) )
))
(declare-datatypes ((List!48713 0))(
  ( (Nil!48589) (Cons!48589 (h!54074 tuple2!47768) (t!355629 List!48713)) )
))
(declare-datatypes ((ListLongMap!1331 0))(
  ( (ListLongMap!1332 (toList!2681 List!48713)) )
))
(declare-fun lt!1545949 () ListLongMap!1331)

(declare-fun lambda!134762 () Int)

(declare-fun forall!8902 (List!48713 Int) Bool)

(assert (=> b!4332320 (= res!1776150 (forall!8902 (toList!2681 lt!1545949) lambda!134762))))

(declare-fun res!1776151 () Bool)

(declare-fun e!2695869 () Bool)

(assert (=> start!417578 (=> (not res!1776151) (not e!2695869))))

(declare-fun lm!1707 () ListLongMap!1331)

(assert (=> start!417578 (= res!1776151 (forall!8902 (toList!2681 lm!1707) lambda!134762))))

(assert (=> start!417578 e!2695869))

(declare-fun e!2695867 () Bool)

(assert (=> start!417578 e!2695867))

(assert (=> start!417578 true))

(declare-fun e!2695866 () Bool)

(declare-fun inv!64126 (ListLongMap!1331) Bool)

(assert (=> start!417578 (and (inv!64126 lm!1707) e!2695866)))

(declare-fun tp_is_empty!24633 () Bool)

(assert (=> start!417578 tp_is_empty!24633))

(declare-fun tp_is_empty!24635 () Bool)

(assert (=> start!417578 tp_is_empty!24635))

(declare-fun b!4332321 () Bool)

(declare-fun res!1776153 () Bool)

(assert (=> b!4332321 (=> (not res!1776153) (not e!2695869))))

(declare-fun newBucket!200 () List!48712)

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4741 0))(
  ( (HashableExt!4740 (__x!30444 Int)) )
))
(declare-fun hashF!1247 () Hashable!4741)

(declare-fun allKeysSameHash!307 (List!48712 (_ BitVec 64) Hashable!4741) Bool)

(assert (=> b!4332321 (= res!1776153 (allKeysSameHash!307 newBucket!200 hash!377 hashF!1247))))

(declare-fun tp!1328632 () Bool)

(declare-fun b!4332322 () Bool)

(assert (=> b!4332322 (= e!2695867 (and tp_is_empty!24633 tp_is_empty!24635 tp!1328632))))

(declare-fun b!4332323 () Bool)

(declare-fun tp!1328631 () Bool)

(assert (=> b!4332323 (= e!2695866 tp!1328631)))

(declare-fun b!4332324 () Bool)

(declare-fun res!1776143 () Bool)

(declare-fun e!2695868 () Bool)

(assert (=> b!4332324 (=> res!1776143 e!2695868)))

(declare-fun noDuplicateKeys!349 (List!48712) Bool)

(assert (=> b!4332324 (= res!1776143 (not (noDuplicateKeys!349 newBucket!200)))))

(declare-fun b!4332325 () Bool)

(declare-fun e!2695871 () Bool)

(assert (=> b!4332325 (= e!2695871 (forall!8902 (toList!2681 lt!1545949) lambda!134762))))

(declare-fun b!4332326 () Bool)

(assert (=> b!4332326 (= e!2695869 (not e!2695868))))

(declare-fun res!1776147 () Bool)

(assert (=> b!4332326 (=> res!1776147 e!2695868)))

(declare-fun lt!1545953 () List!48712)

(declare-fun key!3918 () K!9940)

(declare-fun newValue!99 () V!10186)

(declare-fun removePairForKey!319 (List!48712 K!9940) List!48712)

(assert (=> b!4332326 (= res!1776147 (not (= newBucket!200 (Cons!48588 (tuple2!47767 key!3918 newValue!99) (removePairForKey!319 lt!1545953 key!3918)))))))

(declare-fun lt!1545950 () tuple2!47768)

(declare-datatypes ((Unit!68183 0))(
  ( (Unit!68184) )
))
(declare-fun lt!1545955 () Unit!68183)

(declare-fun forallContained!1554 (List!48713 Int tuple2!47768) Unit!68183)

(assert (=> b!4332326 (= lt!1545955 (forallContained!1554 (toList!2681 lm!1707) lambda!134762 lt!1545950))))

(declare-fun contains!10605 (List!48713 tuple2!47768) Bool)

(assert (=> b!4332326 (contains!10605 (toList!2681 lm!1707) lt!1545950)))

(assert (=> b!4332326 (= lt!1545950 (tuple2!47769 hash!377 lt!1545953))))

(declare-fun lt!1545952 () Unit!68183)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!196 (List!48713 (_ BitVec 64) List!48712) Unit!68183)

(assert (=> b!4332326 (= lt!1545952 (lemmaGetValueByKeyImpliesContainsTuple!196 (toList!2681 lm!1707) hash!377 lt!1545953))))

(declare-fun apply!11201 (ListLongMap!1331 (_ BitVec 64)) List!48712)

(assert (=> b!4332326 (= lt!1545953 (apply!11201 lm!1707 hash!377))))

(declare-fun b!4332327 () Bool)

(declare-fun res!1776152 () Bool)

(assert (=> b!4332327 (=> (not res!1776152) (not e!2695869))))

(declare-fun hash!1284 (Hashable!4741 K!9940) (_ BitVec 64))

(assert (=> b!4332327 (= res!1776152 (= (hash!1284 hashF!1247 key!3918) hash!377))))

(declare-fun b!4332328 () Bool)

(declare-fun res!1776144 () Bool)

(assert (=> b!4332328 (=> (not res!1776144) (not e!2695869))))

(declare-fun contains!10606 (ListLongMap!1331 (_ BitVec 64)) Bool)

(assert (=> b!4332328 (= res!1776144 (contains!10606 lm!1707 hash!377))))

(declare-fun b!4332329 () Bool)

(declare-fun lt!1545951 () tuple2!47768)

(get-info :version)

(assert (=> b!4332329 (= e!2695870 (or (not ((_ is Cons!48589) (toList!2681 lm!1707))) (not (= (_1!27178 (h!54074 (toList!2681 lm!1707))) hash!377)) (= lt!1545949 (ListLongMap!1332 (Cons!48589 lt!1545951 (t!355629 (toList!2681 lm!1707)))))))))

(declare-fun b!4332330 () Bool)

(declare-fun res!1776146 () Bool)

(assert (=> b!4332330 (=> (not res!1776146) (not e!2695869))))

(declare-fun allKeysSameHashInMap!453 (ListLongMap!1331 Hashable!4741) Bool)

(assert (=> b!4332330 (= res!1776146 (allKeysSameHashInMap!453 lm!1707 hashF!1247))))

(declare-fun b!4332331 () Bool)

(declare-fun res!1776148 () Bool)

(assert (=> b!4332331 (=> (not res!1776148) (not e!2695869))))

(declare-datatypes ((ListMap!1925 0))(
  ( (ListMap!1926 (toList!2682 List!48712)) )
))
(declare-fun contains!10607 (ListMap!1925 K!9940) Bool)

(declare-fun extractMap!408 (List!48713) ListMap!1925)

(assert (=> b!4332331 (= res!1776148 (contains!10607 (extractMap!408 (toList!2681 lm!1707)) key!3918))))

(declare-fun b!4332332 () Bool)

(assert (=> b!4332332 (= e!2695868 e!2695871)))

(declare-fun res!1776145 () Bool)

(assert (=> b!4332332 (=> res!1776145 e!2695871)))

(assert (=> b!4332332 (= res!1776145 (or (not ((_ is Cons!48589) (toList!2681 lm!1707))) (not (= (_1!27178 (h!54074 (toList!2681 lm!1707))) hash!377))))))

(assert (=> b!4332332 e!2695870))

(declare-fun res!1776149 () Bool)

(assert (=> b!4332332 (=> (not res!1776149) (not e!2695870))))

(assert (=> b!4332332 (= res!1776149 (forall!8902 (toList!2681 lt!1545949) lambda!134762))))

(declare-fun +!385 (ListLongMap!1331 tuple2!47768) ListLongMap!1331)

(assert (=> b!4332332 (= lt!1545949 (+!385 lm!1707 lt!1545951))))

(assert (=> b!4332332 (= lt!1545951 (tuple2!47769 hash!377 newBucket!200))))

(declare-fun lt!1545954 () Unit!68183)

(declare-fun addValidProp!3 (ListLongMap!1331 Int (_ BitVec 64) List!48712) Unit!68183)

(assert (=> b!4332332 (= lt!1545954 (addValidProp!3 lm!1707 lambda!134762 hash!377 newBucket!200))))

(assert (=> b!4332332 (forall!8902 (toList!2681 lm!1707) lambda!134762)))

(assert (= (and start!417578 res!1776151) b!4332330))

(assert (= (and b!4332330 res!1776146) b!4332327))

(assert (= (and b!4332327 res!1776152) b!4332321))

(assert (= (and b!4332321 res!1776153) b!4332331))

(assert (= (and b!4332331 res!1776148) b!4332328))

(assert (= (and b!4332328 res!1776144) b!4332326))

(assert (= (and b!4332326 (not res!1776147)) b!4332324))

(assert (= (and b!4332324 (not res!1776143)) b!4332332))

(assert (= (and b!4332332 res!1776149) b!4332320))

(assert (= (and b!4332320 res!1776150) b!4332329))

(assert (= (and b!4332332 (not res!1776145)) b!4332325))

(assert (= (and start!417578 ((_ is Cons!48588) newBucket!200)) b!4332322))

(assert (= start!417578 b!4332323))

(declare-fun m!4926581 () Bool)

(assert (=> b!4332325 m!4926581))

(declare-fun m!4926583 () Bool)

(assert (=> b!4332321 m!4926583))

(assert (=> b!4332320 m!4926581))

(declare-fun m!4926585 () Bool)

(assert (=> b!4332326 m!4926585))

(declare-fun m!4926587 () Bool)

(assert (=> b!4332326 m!4926587))

(declare-fun m!4926589 () Bool)

(assert (=> b!4332326 m!4926589))

(declare-fun m!4926591 () Bool)

(assert (=> b!4332326 m!4926591))

(declare-fun m!4926593 () Bool)

(assert (=> b!4332326 m!4926593))

(declare-fun m!4926595 () Bool)

(assert (=> b!4332331 m!4926595))

(assert (=> b!4332331 m!4926595))

(declare-fun m!4926597 () Bool)

(assert (=> b!4332331 m!4926597))

(declare-fun m!4926599 () Bool)

(assert (=> b!4332324 m!4926599))

(declare-fun m!4926601 () Bool)

(assert (=> start!417578 m!4926601))

(declare-fun m!4926603 () Bool)

(assert (=> start!417578 m!4926603))

(assert (=> b!4332332 m!4926581))

(declare-fun m!4926605 () Bool)

(assert (=> b!4332332 m!4926605))

(declare-fun m!4926607 () Bool)

(assert (=> b!4332332 m!4926607))

(assert (=> b!4332332 m!4926601))

(declare-fun m!4926609 () Bool)

(assert (=> b!4332327 m!4926609))

(declare-fun m!4926611 () Bool)

(assert (=> b!4332328 m!4926611))

(declare-fun m!4926613 () Bool)

(assert (=> b!4332330 m!4926613))

(check-sat (not b!4332320) (not b!4332323) tp_is_empty!24633 (not b!4332332) (not b!4332325) (not b!4332322) (not b!4332328) (not start!417578) (not b!4332326) (not b!4332324) (not b!4332331) (not b!4332321) tp_is_empty!24635 (not b!4332330) (not b!4332327))
(check-sat)
