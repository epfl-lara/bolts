; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!424144 () Bool)

(assert start!424144)

(declare-fun b!4369220 () Bool)

(declare-fun res!1797825 () Bool)

(declare-fun e!2719334 () Bool)

(assert (=> b!4369220 (=> (not res!1797825) (not e!2719334))))

(declare-datatypes ((V!10701 0))(
  ( (V!10702 (val!16635 Int)) )
))
(declare-datatypes ((K!10455 0))(
  ( (K!10456 (val!16636 Int)) )
))
(declare-datatypes ((tuple2!48590 0))(
  ( (tuple2!48591 (_1!27589 K!10455) (_2!27589 V!10701)) )
))
(declare-datatypes ((List!49218 0))(
  ( (Nil!49094) (Cons!49094 (h!54677 tuple2!48590) (t!356140 List!49218)) )
))
(declare-datatypes ((tuple2!48592 0))(
  ( (tuple2!48593 (_1!27590 (_ BitVec 64)) (_2!27590 List!49218)) )
))
(declare-datatypes ((List!49219 0))(
  ( (Nil!49095) (Cons!49095 (h!54678 tuple2!48592) (t!356141 List!49219)) )
))
(declare-datatypes ((ListLongMap!1743 0))(
  ( (ListLongMap!1744 (toList!3093 List!49219)) )
))
(declare-fun lm!1707 () ListLongMap!1743)

(declare-fun key!3918 () K!10455)

(declare-datatypes ((ListMap!2337 0))(
  ( (ListMap!2338 (toList!3094 List!49218)) )
))
(declare-fun contains!11387 (ListMap!2337 K!10455) Bool)

(declare-fun extractMap!614 (List!49219) ListMap!2337)

(assert (=> b!4369220 (= res!1797825 (contains!11387 (extractMap!614 (toList!3093 lm!1707)) key!3918))))

(declare-fun b!4369221 () Bool)

(declare-fun res!1797824 () Bool)

(assert (=> b!4369221 (=> (not res!1797824) (not e!2719334))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!11388 (ListLongMap!1743 (_ BitVec 64)) Bool)

(assert (=> b!4369221 (= res!1797824 (contains!11388 lm!1707 hash!377))))

(declare-fun res!1797832 () Bool)

(assert (=> start!424144 (=> (not res!1797832) (not e!2719334))))

(declare-fun lambda!143393 () Int)

(declare-fun forall!9229 (List!49219 Int) Bool)

(assert (=> start!424144 (= res!1797832 (forall!9229 (toList!3093 lm!1707) lambda!143393))))

(assert (=> start!424144 e!2719334))

(declare-fun e!2719333 () Bool)

(assert (=> start!424144 e!2719333))

(assert (=> start!424144 true))

(declare-fun e!2719338 () Bool)

(declare-fun inv!64641 (ListLongMap!1743) Bool)

(assert (=> start!424144 (and (inv!64641 lm!1707) e!2719338)))

(declare-fun tp_is_empty!25457 () Bool)

(assert (=> start!424144 tp_is_empty!25457))

(declare-fun tp_is_empty!25459 () Bool)

(assert (=> start!424144 tp_is_empty!25459))

(declare-fun b!4369222 () Bool)

(declare-fun res!1797833 () Bool)

(assert (=> b!4369222 (=> (not res!1797833) (not e!2719334))))

(declare-datatypes ((Hashable!4947 0))(
  ( (HashableExt!4946 (__x!30650 Int)) )
))
(declare-fun hashF!1247 () Hashable!4947)

(declare-fun allKeysSameHashInMap!659 (ListLongMap!1743 Hashable!4947) Bool)

(assert (=> b!4369222 (= res!1797833 (allKeysSameHashInMap!659 lm!1707 hashF!1247))))

(declare-fun b!4369223 () Bool)

(declare-fun lt!1580683 () tuple2!48592)

(declare-fun e!2719337 () Bool)

(declare-fun lt!1580692 () ListLongMap!1743)

(get-info :version)

(assert (=> b!4369223 (= e!2719337 (or (not ((_ is Cons!49095) (toList!3093 lm!1707))) (not (= (_1!27590 (h!54678 (toList!3093 lm!1707))) hash!377)) (= lt!1580692 (ListLongMap!1744 (Cons!49095 lt!1580683 (t!356141 (toList!3093 lm!1707)))))))))

(declare-fun b!4369224 () Bool)

(declare-fun e!2719335 () Bool)

(declare-fun e!2719336 () Bool)

(assert (=> b!4369224 (= e!2719335 e!2719336)))

(declare-fun res!1797831 () Bool)

(assert (=> b!4369224 (=> res!1797831 e!2719336)))

(assert (=> b!4369224 (= res!1797831 (or (not ((_ is Cons!49095) (toList!3093 lm!1707))) (not (= (_1!27590 (h!54678 (toList!3093 lm!1707))) hash!377))))))

(assert (=> b!4369224 e!2719337))

(declare-fun res!1797829 () Bool)

(assert (=> b!4369224 (=> (not res!1797829) (not e!2719337))))

(assert (=> b!4369224 (= res!1797829 (forall!9229 (toList!3093 lt!1580692) lambda!143393))))

(declare-fun +!742 (ListLongMap!1743 tuple2!48592) ListLongMap!1743)

(assert (=> b!4369224 (= lt!1580692 (+!742 lm!1707 lt!1580683))))

(declare-fun newBucket!200 () List!49218)

(assert (=> b!4369224 (= lt!1580683 (tuple2!48593 hash!377 newBucket!200))))

(declare-datatypes ((Unit!73348 0))(
  ( (Unit!73349) )
))
(declare-fun lt!1580685 () Unit!73348)

(declare-fun addValidProp!201 (ListLongMap!1743 Int (_ BitVec 64) List!49218) Unit!73348)

(assert (=> b!4369224 (= lt!1580685 (addValidProp!201 lm!1707 lambda!143393 hash!377 newBucket!200))))

(assert (=> b!4369224 (forall!9229 (toList!3093 lm!1707) lambda!143393)))

(declare-fun b!4369225 () Bool)

(declare-fun res!1797828 () Bool)

(assert (=> b!4369225 (=> (not res!1797828) (not e!2719334))))

(declare-fun allKeysSameHash!513 (List!49218 (_ BitVec 64) Hashable!4947) Bool)

(assert (=> b!4369225 (= res!1797828 (allKeysSameHash!513 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4369226 () Bool)

(declare-fun res!1797830 () Bool)

(assert (=> b!4369226 (=> res!1797830 e!2719335)))

(declare-fun noDuplicateKeys!555 (List!49218) Bool)

(assert (=> b!4369226 (= res!1797830 (not (noDuplicateKeys!555 newBucket!200)))))

(declare-fun b!4369227 () Bool)

(declare-fun tp!1330883 () Bool)

(assert (=> b!4369227 (= e!2719333 (and tp_is_empty!25457 tp_is_empty!25459 tp!1330883))))

(declare-fun b!4369228 () Bool)

(declare-fun res!1797826 () Bool)

(assert (=> b!4369228 (=> (not res!1797826) (not e!2719334))))

(declare-fun hash!1708 (Hashable!4947 K!10455) (_ BitVec 64))

(assert (=> b!4369228 (= res!1797826 (= (hash!1708 hashF!1247 key!3918) hash!377))))

(declare-fun b!4369229 () Bool)

(declare-fun res!1797823 () Bool)

(assert (=> b!4369229 (=> (not res!1797823) (not e!2719337))))

(assert (=> b!4369229 (= res!1797823 (forall!9229 (toList!3093 lt!1580692) lambda!143393))))

(declare-fun b!4369230 () Bool)

(declare-fun tp!1330884 () Bool)

(assert (=> b!4369230 (= e!2719338 tp!1330884)))

(declare-fun b!4369231 () Bool)

(assert (=> b!4369231 (= e!2719334 (not e!2719335))))

(declare-fun res!1797827 () Bool)

(assert (=> b!4369231 (=> res!1797827 e!2719335)))

(declare-fun lt!1580690 () List!49218)

(assert (=> b!4369231 (= res!1797827 (not (= newBucket!200 lt!1580690)))))

(declare-fun lt!1580689 () List!49218)

(declare-fun newValue!99 () V!10701)

(declare-fun removePairForKey!523 (List!49218 K!10455) List!49218)

(assert (=> b!4369231 (= lt!1580690 (Cons!49094 (tuple2!48591 key!3918 newValue!99) (removePairForKey!523 lt!1580689 key!3918)))))

(declare-fun lt!1580687 () Unit!73348)

(declare-fun lt!1580688 () tuple2!48592)

(declare-fun forallContained!1867 (List!49219 Int tuple2!48592) Unit!73348)

(assert (=> b!4369231 (= lt!1580687 (forallContained!1867 (toList!3093 lm!1707) lambda!143393 lt!1580688))))

(declare-fun contains!11389 (List!49219 tuple2!48592) Bool)

(assert (=> b!4369231 (contains!11389 (toList!3093 lm!1707) lt!1580688)))

(assert (=> b!4369231 (= lt!1580688 (tuple2!48593 hash!377 lt!1580689))))

(declare-fun lt!1580691 () Unit!73348)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!400 (List!49219 (_ BitVec 64) List!49218) Unit!73348)

(assert (=> b!4369231 (= lt!1580691 (lemmaGetValueByKeyImpliesContainsTuple!400 (toList!3093 lm!1707) hash!377 lt!1580689))))

(declare-fun apply!11407 (ListLongMap!1743 (_ BitVec 64)) List!49218)

(assert (=> b!4369231 (= lt!1580689 (apply!11407 lm!1707 hash!377))))

(declare-fun lt!1580684 () ListMap!2337)

(declare-fun b!4369232 () Bool)

(declare-fun lt!1580686 () ListMap!2337)

(declare-fun addToMapMapFromBucket!236 (List!49218 ListMap!2337) ListMap!2337)

(assert (=> b!4369232 (= e!2719336 (= lt!1580686 (addToMapMapFromBucket!236 lt!1580690 lt!1580684)))))

(assert (=> b!4369232 (= lt!1580686 (addToMapMapFromBucket!236 newBucket!200 lt!1580684))))

(assert (=> b!4369232 (= lt!1580686 (extractMap!614 (toList!3093 lt!1580692)))))

(assert (=> b!4369232 (= lt!1580684 (extractMap!614 (t!356141 (toList!3093 lm!1707))))))

(assert (= (and start!424144 res!1797832) b!4369222))

(assert (= (and b!4369222 res!1797833) b!4369228))

(assert (= (and b!4369228 res!1797826) b!4369225))

(assert (= (and b!4369225 res!1797828) b!4369220))

(assert (= (and b!4369220 res!1797825) b!4369221))

(assert (= (and b!4369221 res!1797824) b!4369231))

(assert (= (and b!4369231 (not res!1797827)) b!4369226))

(assert (= (and b!4369226 (not res!1797830)) b!4369224))

(assert (= (and b!4369224 res!1797829) b!4369229))

(assert (= (and b!4369229 res!1797823) b!4369223))

(assert (= (and b!4369224 (not res!1797831)) b!4369232))

(assert (= (and start!424144 ((_ is Cons!49094) newBucket!200)) b!4369227))

(assert (= start!424144 b!4369230))

(declare-fun m!4992979 () Bool)

(assert (=> start!424144 m!4992979))

(declare-fun m!4992981 () Bool)

(assert (=> start!424144 m!4992981))

(declare-fun m!4992983 () Bool)

(assert (=> b!4369225 m!4992983))

(declare-fun m!4992985 () Bool)

(assert (=> b!4369232 m!4992985))

(declare-fun m!4992987 () Bool)

(assert (=> b!4369232 m!4992987))

(declare-fun m!4992989 () Bool)

(assert (=> b!4369232 m!4992989))

(declare-fun m!4992991 () Bool)

(assert (=> b!4369232 m!4992991))

(declare-fun m!4992993 () Bool)

(assert (=> b!4369224 m!4992993))

(declare-fun m!4992995 () Bool)

(assert (=> b!4369224 m!4992995))

(declare-fun m!4992997 () Bool)

(assert (=> b!4369224 m!4992997))

(assert (=> b!4369224 m!4992979))

(declare-fun m!4992999 () Bool)

(assert (=> b!4369222 m!4992999))

(declare-fun m!4993001 () Bool)

(assert (=> b!4369226 m!4993001))

(declare-fun m!4993003 () Bool)

(assert (=> b!4369228 m!4993003))

(declare-fun m!4993005 () Bool)

(assert (=> b!4369231 m!4993005))

(declare-fun m!4993007 () Bool)

(assert (=> b!4369231 m!4993007))

(declare-fun m!4993009 () Bool)

(assert (=> b!4369231 m!4993009))

(declare-fun m!4993011 () Bool)

(assert (=> b!4369231 m!4993011))

(declare-fun m!4993013 () Bool)

(assert (=> b!4369231 m!4993013))

(declare-fun m!4993015 () Bool)

(assert (=> b!4369220 m!4993015))

(assert (=> b!4369220 m!4993015))

(declare-fun m!4993017 () Bool)

(assert (=> b!4369220 m!4993017))

(declare-fun m!4993019 () Bool)

(assert (=> b!4369221 m!4993019))

(assert (=> b!4369229 m!4992993))

(check-sat (not b!4369227) (not b!4369221) (not b!4369222) (not b!4369226) (not b!4369220) (not b!4369224) (not b!4369231) (not b!4369230) (not start!424144) (not b!4369229) tp_is_empty!25457 (not b!4369232) (not b!4369225) (not b!4369228) tp_is_empty!25459)
(check-sat)
