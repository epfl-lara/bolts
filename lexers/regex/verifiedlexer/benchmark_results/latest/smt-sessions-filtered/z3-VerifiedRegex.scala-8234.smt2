; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!426484 () Bool)

(assert start!426484)

(declare-fun b!4394191 () Bool)

(declare-fun res!1811490 () Bool)

(declare-fun e!2735937 () Bool)

(assert (=> b!4394191 (=> res!1811490 e!2735937)))

(declare-datatypes ((V!10821 0))(
  ( (V!10822 (val!16731 Int)) )
))
(declare-datatypes ((K!10575 0))(
  ( (K!10576 (val!16732 Int)) )
))
(declare-datatypes ((tuple2!48782 0))(
  ( (tuple2!48783 (_1!27685 K!10575) (_2!27685 V!10821)) )
))
(declare-datatypes ((List!49340 0))(
  ( (Nil!49216) (Cons!49216 (h!54825 tuple2!48782) (t!356274 List!49340)) )
))
(declare-datatypes ((tuple2!48784 0))(
  ( (tuple2!48785 (_1!27686 (_ BitVec 64)) (_2!27686 List!49340)) )
))
(declare-datatypes ((List!49341 0))(
  ( (Nil!49217) (Cons!49217 (h!54826 tuple2!48784) (t!356275 List!49341)) )
))
(declare-datatypes ((ListLongMap!1839 0))(
  ( (ListLongMap!1840 (toList!3189 List!49341)) )
))
(declare-fun lm!1707 () ListLongMap!1839)

(declare-fun lambda!147521 () Int)

(declare-fun forall!9315 (List!49341 Int) Bool)

(assert (=> b!4394191 (= res!1811490 (not (forall!9315 (toList!3189 lm!1707) lambda!147521)))))

(declare-fun b!4394192 () Bool)

(declare-fun e!2735935 () Bool)

(declare-fun tp!1331484 () Bool)

(assert (=> b!4394192 (= e!2735935 tp!1331484)))

(declare-fun b!4394193 () Bool)

(declare-fun lt!1601476 () (_ BitVec 64))

(assert (=> b!4394193 (= e!2735937 (not (= (_1!27686 (h!54826 (toList!3189 lm!1707))) lt!1601476)))))

(declare-fun b!4394194 () Bool)

(declare-fun res!1811492 () Bool)

(declare-fun e!2735936 () Bool)

(assert (=> b!4394194 (=> (not res!1811492) (not e!2735936))))

(declare-fun key!3918 () K!10575)

(declare-datatypes ((ListMap!2433 0))(
  ( (ListMap!2434 (toList!3190 List!49340)) )
))
(declare-fun contains!11581 (ListMap!2433 K!10575) Bool)

(declare-fun extractMap!662 (List!49341) ListMap!2433)

(assert (=> b!4394194 (= res!1811492 (contains!11581 (extractMap!662 (toList!3189 lm!1707)) key!3918))))

(declare-fun b!4394195 () Bool)

(declare-fun e!2735934 () Bool)

(declare-fun lt!1601475 () ListLongMap!1839)

(assert (=> b!4394195 (= e!2735934 (forall!9315 (toList!3189 lt!1601475) lambda!147521))))

(declare-fun b!4394196 () Bool)

(declare-fun tp_is_empty!25651 () Bool)

(declare-fun tp!1331483 () Bool)

(declare-fun e!2735933 () Bool)

(declare-fun tp_is_empty!25649 () Bool)

(assert (=> b!4394196 (= e!2735933 (and tp_is_empty!25649 tp_is_empty!25651 tp!1331483))))

(declare-fun b!4394197 () Bool)

(declare-fun e!2735938 () Bool)

(assert (=> b!4394197 (= e!2735938 e!2735936)))

(declare-fun res!1811484 () Bool)

(assert (=> b!4394197 (=> (not res!1811484) (not e!2735936))))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4394197 (= res!1811484 (= lt!1601476 hash!377))))

(declare-datatypes ((Hashable!4995 0))(
  ( (HashableExt!4994 (__x!30698 Int)) )
))
(declare-fun hashF!1247 () Hashable!4995)

(declare-fun hash!1802 (Hashable!4995 K!10575) (_ BitVec 64))

(assert (=> b!4394197 (= lt!1601476 (hash!1802 hashF!1247 key!3918))))

(declare-fun b!4394198 () Bool)

(declare-fun e!2735932 () Bool)

(assert (=> b!4394198 (= e!2735936 (not e!2735932))))

(declare-fun res!1811488 () Bool)

(assert (=> b!4394198 (=> res!1811488 e!2735932)))

(declare-fun newBucket!200 () List!49340)

(declare-fun lt!1601478 () List!49340)

(declare-fun newValue!99 () V!10821)

(declare-fun removePairForKey!571 (List!49340 K!10575) List!49340)

(assert (=> b!4394198 (= res!1811488 (not (= newBucket!200 (Cons!49216 (tuple2!48783 key!3918 newValue!99) (removePairForKey!571 lt!1601478 key!3918)))))))

(declare-fun lt!1601472 () tuple2!48784)

(declare-datatypes ((Unit!78195 0))(
  ( (Unit!78196) )
))
(declare-fun lt!1601477 () Unit!78195)

(declare-fun forallContained!1953 (List!49341 Int tuple2!48784) Unit!78195)

(assert (=> b!4394198 (= lt!1601477 (forallContained!1953 (toList!3189 lm!1707) lambda!147521 lt!1601472))))

(declare-fun contains!11582 (List!49341 tuple2!48784) Bool)

(assert (=> b!4394198 (contains!11582 (toList!3189 lm!1707) lt!1601472)))

(assert (=> b!4394198 (= lt!1601472 (tuple2!48785 hash!377 lt!1601478))))

(declare-fun lt!1601474 () Unit!78195)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!448 (List!49341 (_ BitVec 64) List!49340) Unit!78195)

(assert (=> b!4394198 (= lt!1601474 (lemmaGetValueByKeyImpliesContainsTuple!448 (toList!3189 lm!1707) hash!377 lt!1601478))))

(declare-fun apply!11455 (ListLongMap!1839 (_ BitVec 64)) List!49340)

(assert (=> b!4394198 (= lt!1601478 (apply!11455 lm!1707 hash!377))))

(declare-fun b!4394199 () Bool)

(declare-fun res!1811482 () Bool)

(assert (=> b!4394199 (=> (not res!1811482) (not e!2735938))))

(declare-fun allKeysSameHashInMap!707 (ListLongMap!1839 Hashable!4995) Bool)

(assert (=> b!4394199 (= res!1811482 (allKeysSameHashInMap!707 lm!1707 hashF!1247))))

(declare-fun res!1811491 () Bool)

(assert (=> start!426484 (=> (not res!1811491) (not e!2735938))))

(assert (=> start!426484 (= res!1811491 (forall!9315 (toList!3189 lm!1707) lambda!147521))))

(assert (=> start!426484 e!2735938))

(assert (=> start!426484 e!2735933))

(assert (=> start!426484 true))

(declare-fun inv!64761 (ListLongMap!1839) Bool)

(assert (=> start!426484 (and (inv!64761 lm!1707) e!2735935)))

(assert (=> start!426484 tp_is_empty!25649))

(assert (=> start!426484 tp_is_empty!25651))

(declare-fun b!4394200 () Bool)

(assert (=> b!4394200 (= e!2735932 e!2735937)))

(declare-fun res!1811485 () Bool)

(assert (=> b!4394200 (=> res!1811485 e!2735937)))

(get-info :version)

(assert (=> b!4394200 (= res!1811485 (or (and ((_ is Cons!49217) (toList!3189 lm!1707)) (= (_1!27686 (h!54826 (toList!3189 lm!1707))) hash!377)) (not ((_ is Cons!49217) (toList!3189 lm!1707))) (= (_1!27686 (h!54826 (toList!3189 lm!1707))) hash!377)))))

(assert (=> b!4394200 e!2735934))

(declare-fun res!1811486 () Bool)

(assert (=> b!4394200 (=> (not res!1811486) (not e!2735934))))

(assert (=> b!4394200 (= res!1811486 (forall!9315 (toList!3189 lt!1601475) lambda!147521))))

(declare-fun +!832 (ListLongMap!1839 tuple2!48784) ListLongMap!1839)

(assert (=> b!4394200 (= lt!1601475 (+!832 lm!1707 (tuple2!48785 hash!377 newBucket!200)))))

(declare-fun lt!1601473 () Unit!78195)

(declare-fun addValidProp!249 (ListLongMap!1839 Int (_ BitVec 64) List!49340) Unit!78195)

(assert (=> b!4394200 (= lt!1601473 (addValidProp!249 lm!1707 lambda!147521 hash!377 newBucket!200))))

(assert (=> b!4394200 (forall!9315 (toList!3189 lm!1707) lambda!147521)))

(declare-fun b!4394201 () Bool)

(declare-fun res!1811493 () Bool)

(assert (=> b!4394201 (=> res!1811493 e!2735937)))

(declare-fun contains!11583 (ListLongMap!1839 (_ BitVec 64)) Bool)

(assert (=> b!4394201 (= res!1811493 (not (contains!11583 lm!1707 (_1!27686 (h!54826 (toList!3189 lm!1707))))))))

(declare-fun b!4394202 () Bool)

(declare-fun res!1811489 () Bool)

(assert (=> b!4394202 (=> res!1811489 e!2735932)))

(declare-fun noDuplicateKeys!603 (List!49340) Bool)

(assert (=> b!4394202 (= res!1811489 (not (noDuplicateKeys!603 newBucket!200)))))

(declare-fun b!4394203 () Bool)

(declare-fun res!1811483 () Bool)

(assert (=> b!4394203 (=> (not res!1811483) (not e!2735936))))

(declare-fun allKeysSameHash!561 (List!49340 (_ BitVec 64) Hashable!4995) Bool)

(assert (=> b!4394203 (= res!1811483 (allKeysSameHash!561 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4394204 () Bool)

(declare-fun res!1811487 () Bool)

(assert (=> b!4394204 (=> (not res!1811487) (not e!2735936))))

(assert (=> b!4394204 (= res!1811487 (contains!11583 lm!1707 hash!377))))

(assert (= (and start!426484 res!1811491) b!4394199))

(assert (= (and b!4394199 res!1811482) b!4394197))

(assert (= (and b!4394197 res!1811484) b!4394203))

(assert (= (and b!4394203 res!1811483) b!4394194))

(assert (= (and b!4394194 res!1811492) b!4394204))

(assert (= (and b!4394204 res!1811487) b!4394198))

(assert (= (and b!4394198 (not res!1811488)) b!4394202))

(assert (= (and b!4394202 (not res!1811489)) b!4394200))

(assert (= (and b!4394200 res!1811486) b!4394195))

(assert (= (and b!4394200 (not res!1811485)) b!4394191))

(assert (= (and b!4394191 (not res!1811490)) b!4394201))

(assert (= (and b!4394201 (not res!1811493)) b!4394193))

(assert (= (and start!426484 ((_ is Cons!49216) newBucket!200)) b!4394196))

(assert (= start!426484 b!4394192))

(declare-fun m!5054291 () Bool)

(assert (=> b!4394191 m!5054291))

(declare-fun m!5054293 () Bool)

(assert (=> b!4394203 m!5054293))

(assert (=> start!426484 m!5054291))

(declare-fun m!5054295 () Bool)

(assert (=> start!426484 m!5054295))

(declare-fun m!5054297 () Bool)

(assert (=> b!4394204 m!5054297))

(declare-fun m!5054299 () Bool)

(assert (=> b!4394195 m!5054299))

(declare-fun m!5054301 () Bool)

(assert (=> b!4394201 m!5054301))

(declare-fun m!5054303 () Bool)

(assert (=> b!4394202 m!5054303))

(declare-fun m!5054305 () Bool)

(assert (=> b!4394197 m!5054305))

(declare-fun m!5054307 () Bool)

(assert (=> b!4394198 m!5054307))

(declare-fun m!5054309 () Bool)

(assert (=> b!4394198 m!5054309))

(declare-fun m!5054311 () Bool)

(assert (=> b!4394198 m!5054311))

(declare-fun m!5054313 () Bool)

(assert (=> b!4394198 m!5054313))

(declare-fun m!5054315 () Bool)

(assert (=> b!4394198 m!5054315))

(declare-fun m!5054317 () Bool)

(assert (=> b!4394194 m!5054317))

(assert (=> b!4394194 m!5054317))

(declare-fun m!5054319 () Bool)

(assert (=> b!4394194 m!5054319))

(assert (=> b!4394200 m!5054299))

(declare-fun m!5054321 () Bool)

(assert (=> b!4394200 m!5054321))

(declare-fun m!5054323 () Bool)

(assert (=> b!4394200 m!5054323))

(assert (=> b!4394200 m!5054291))

(declare-fun m!5054325 () Bool)

(assert (=> b!4394199 m!5054325))

(check-sat (not b!4394198) (not b!4394195) (not b!4394197) (not b!4394201) (not b!4394194) (not b!4394191) (not b!4394196) (not b!4394203) (not b!4394200) (not b!4394202) (not b!4394204) (not b!4394192) tp_is_empty!25651 (not b!4394199) (not start!426484) tp_is_empty!25649)
(check-sat)
