; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417954 () Bool)

(assert start!417954)

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((V!10239 0))(
  ( (V!10240 (val!16265 Int)) )
))
(declare-datatypes ((K!9993 0))(
  ( (K!9994 (val!16266 Int)) )
))
(declare-datatypes ((tuple2!47850 0))(
  ( (tuple2!47851 (_1!27219 K!9993) (_2!27219 V!10239)) )
))
(declare-datatypes ((List!48761 0))(
  ( (Nil!48637) (Cons!48637 (h!54132 tuple2!47850) (t!355677 List!48761)) )
))
(declare-datatypes ((tuple2!47852 0))(
  ( (tuple2!47853 (_1!27220 (_ BitVec 64)) (_2!27220 List!48761)) )
))
(declare-datatypes ((List!48762 0))(
  ( (Nil!48638) (Cons!48638 (h!54133 tuple2!47852) (t!355678 List!48762)) )
))
(declare-datatypes ((ListLongMap!1373 0))(
  ( (ListLongMap!1374 (toList!2723 List!48762)) )
))
(declare-fun lm!1707 () ListLongMap!1373)

(declare-fun lt!1547727 () tuple2!47852)

(declare-fun e!2697150 () Bool)

(declare-fun lt!1547732 () ListLongMap!1373)

(declare-fun b!4334475 () Bool)

(assert (=> b!4334475 (= e!2697150 (or (not (is-Cons!48638 (toList!2723 lm!1707))) (not (= (_1!27220 (h!54133 (toList!2723 lm!1707))) hash!377)) (= lt!1547732 (ListLongMap!1374 (Cons!48638 lt!1547727 (t!355678 (toList!2723 lm!1707)))))))))

(declare-fun b!4334476 () Bool)

(declare-fun e!2697147 () Bool)

(declare-fun e!2697148 () Bool)

(assert (=> b!4334476 (= e!2697147 e!2697148)))

(declare-fun res!1777491 () Bool)

(assert (=> b!4334476 (=> res!1777491 e!2697148)))

(assert (=> b!4334476 (= res!1777491 (or (not (is-Cons!48638 (toList!2723 lm!1707))) (not (= (_1!27220 (h!54133 (toList!2723 lm!1707))) hash!377))))))

(assert (=> b!4334476 e!2697150))

(declare-fun res!1777493 () Bool)

(assert (=> b!4334476 (=> (not res!1777493) (not e!2697150))))

(declare-fun lambda!135384 () Int)

(declare-fun forall!8932 (List!48762 Int) Bool)

(assert (=> b!4334476 (= res!1777493 (forall!8932 (toList!2723 lt!1547732) lambda!135384))))

(declare-fun +!413 (ListLongMap!1373 tuple2!47852) ListLongMap!1373)

(assert (=> b!4334476 (= lt!1547732 (+!413 lm!1707 lt!1547727))))

(declare-fun newBucket!200 () List!48761)

(assert (=> b!4334476 (= lt!1547727 (tuple2!47853 hash!377 newBucket!200))))

(declare-datatypes ((Unit!68354 0))(
  ( (Unit!68355) )
))
(declare-fun lt!1547729 () Unit!68354)

(declare-fun addValidProp!24 (ListLongMap!1373 Int (_ BitVec 64) List!48761) Unit!68354)

(assert (=> b!4334476 (= lt!1547729 (addValidProp!24 lm!1707 lambda!135384 hash!377 newBucket!200))))

(assert (=> b!4334476 (forall!8932 (toList!2723 lm!1707) lambda!135384)))

(declare-fun b!4334477 () Bool)

(declare-fun res!1777490 () Bool)

(declare-fun e!2697146 () Bool)

(assert (=> b!4334477 (=> (not res!1777490) (not e!2697146))))

(declare-fun contains!10675 (ListLongMap!1373 (_ BitVec 64)) Bool)

(assert (=> b!4334477 (= res!1777490 (contains!10675 lm!1707 hash!377))))

(declare-fun b!4334478 () Bool)

(declare-fun res!1777485 () Bool)

(assert (=> b!4334478 (=> (not res!1777485) (not e!2697146))))

(declare-fun key!3918 () K!9993)

(declare-datatypes ((ListMap!1967 0))(
  ( (ListMap!1968 (toList!2724 List!48761)) )
))
(declare-fun contains!10676 (ListMap!1967 K!9993) Bool)

(declare-fun extractMap!429 (List!48762) ListMap!1967)

(assert (=> b!4334478 (= res!1777485 (contains!10676 (extractMap!429 (toList!2723 lm!1707)) key!3918))))

(declare-fun b!4334479 () Bool)

(declare-fun e!2697145 () Bool)

(declare-fun tp!1328848 () Bool)

(assert (=> b!4334479 (= e!2697145 tp!1328848)))

(declare-fun b!4334481 () Bool)

(declare-fun res!1777489 () Bool)

(assert (=> b!4334481 (=> (not res!1777489) (not e!2697150))))

(assert (=> b!4334481 (= res!1777489 (forall!8932 (toList!2723 lt!1547732) lambda!135384))))

(declare-fun tp!1328847 () Bool)

(declare-fun tp_is_empty!24719 () Bool)

(declare-fun e!2697151 () Bool)

(declare-fun tp_is_empty!24717 () Bool)

(declare-fun b!4334482 () Bool)

(assert (=> b!4334482 (= e!2697151 (and tp_is_empty!24717 tp_is_empty!24719 tp!1328847))))

(declare-fun b!4334483 () Bool)

(declare-fun res!1777488 () Bool)

(assert (=> b!4334483 (=> (not res!1777488) (not e!2697146))))

(declare-datatypes ((Hashable!4762 0))(
  ( (HashableExt!4761 (__x!30465 Int)) )
))
(declare-fun hashF!1247 () Hashable!4762)

(declare-fun allKeysSameHash!328 (List!48761 (_ BitVec 64) Hashable!4762) Bool)

(assert (=> b!4334483 (= res!1777488 (allKeysSameHash!328 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4334484 () Bool)

(declare-fun res!1777484 () Bool)

(assert (=> b!4334484 (=> res!1777484 e!2697147)))

(declare-fun noDuplicateKeys!370 (List!48761) Bool)

(assert (=> b!4334484 (= res!1777484 (not (noDuplicateKeys!370 newBucket!200)))))

(declare-fun b!4334485 () Bool)

(assert (=> b!4334485 (= e!2697146 (not e!2697147))))

(declare-fun res!1777495 () Bool)

(assert (=> b!4334485 (=> res!1777495 e!2697147)))

(declare-fun lt!1547728 () List!48761)

(assert (=> b!4334485 (= res!1777495 (not (= newBucket!200 lt!1547728)))))

(declare-fun lt!1547723 () List!48761)

(declare-fun newValue!99 () V!10239)

(declare-fun removePairForKey!340 (List!48761 K!9993) List!48761)

(assert (=> b!4334485 (= lt!1547728 (Cons!48637 (tuple2!47851 key!3918 newValue!99) (removePairForKey!340 lt!1547723 key!3918)))))

(declare-fun lt!1547726 () tuple2!47852)

(declare-fun lt!1547731 () Unit!68354)

(declare-fun forallContained!1582 (List!48762 Int tuple2!47852) Unit!68354)

(assert (=> b!4334485 (= lt!1547731 (forallContained!1582 (toList!2723 lm!1707) lambda!135384 lt!1547726))))

(declare-fun contains!10677 (List!48762 tuple2!47852) Bool)

(assert (=> b!4334485 (contains!10677 (toList!2723 lm!1707) lt!1547726)))

(assert (=> b!4334485 (= lt!1547726 (tuple2!47853 hash!377 lt!1547723))))

(declare-fun lt!1547724 () Unit!68354)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!217 (List!48762 (_ BitVec 64) List!48761) Unit!68354)

(assert (=> b!4334485 (= lt!1547724 (lemmaGetValueByKeyImpliesContainsTuple!217 (toList!2723 lm!1707) hash!377 lt!1547723))))

(declare-fun apply!11222 (ListLongMap!1373 (_ BitVec 64)) List!48761)

(assert (=> b!4334485 (= lt!1547723 (apply!11222 lm!1707 hash!377))))

(declare-fun b!4334486 () Bool)

(declare-fun res!1777494 () Bool)

(assert (=> b!4334486 (=> (not res!1777494) (not e!2697146))))

(declare-fun hash!1312 (Hashable!4762 K!9993) (_ BitVec 64))

(assert (=> b!4334486 (= res!1777494 (= (hash!1312 hashF!1247 key!3918) hash!377))))

(declare-fun res!1777487 () Bool)

(assert (=> start!417954 (=> (not res!1777487) (not e!2697146))))

(assert (=> start!417954 (= res!1777487 (forall!8932 (toList!2723 lm!1707) lambda!135384))))

(assert (=> start!417954 e!2697146))

(assert (=> start!417954 e!2697151))

(assert (=> start!417954 true))

(declare-fun inv!64180 (ListLongMap!1373) Bool)

(assert (=> start!417954 (and (inv!64180 lm!1707) e!2697145)))

(assert (=> start!417954 tp_is_empty!24717))

(assert (=> start!417954 tp_is_empty!24719))

(declare-fun lt!1547730 () ListMap!1967)

(declare-fun b!4334480 () Bool)

(declare-fun e!2697149 () Bool)

(declare-fun lt!1547725 () ListMap!1967)

(declare-fun addToMapMapFromBucket!78 (List!48761 ListMap!1967) ListMap!1967)

(assert (=> b!4334480 (= e!2697149 (= lt!1547730 (addToMapMapFromBucket!78 lt!1547728 lt!1547725)))))

(declare-fun b!4334487 () Bool)

(declare-fun res!1777492 () Bool)

(assert (=> b!4334487 (=> (not res!1777492) (not e!2697146))))

(declare-fun allKeysSameHashInMap!474 (ListLongMap!1373 Hashable!4762) Bool)

(assert (=> b!4334487 (= res!1777492 (allKeysSameHashInMap!474 lm!1707 hashF!1247))))

(declare-fun b!4334488 () Bool)

(assert (=> b!4334488 (= e!2697148 (noDuplicateKeys!370 lt!1547728))))

(assert (=> b!4334488 e!2697149))

(declare-fun res!1777486 () Bool)

(assert (=> b!4334488 (=> (not res!1777486) (not e!2697149))))

(assert (=> b!4334488 (= res!1777486 (= lt!1547730 (addToMapMapFromBucket!78 newBucket!200 lt!1547725)))))

(assert (=> b!4334488 (= lt!1547730 (extractMap!429 (toList!2723 lt!1547732)))))

(assert (=> b!4334488 (= lt!1547725 (extractMap!429 (t!355678 (toList!2723 lm!1707))))))

(assert (= (and start!417954 res!1777487) b!4334487))

(assert (= (and b!4334487 res!1777492) b!4334486))

(assert (= (and b!4334486 res!1777494) b!4334483))

(assert (= (and b!4334483 res!1777488) b!4334478))

(assert (= (and b!4334478 res!1777485) b!4334477))

(assert (= (and b!4334477 res!1777490) b!4334485))

(assert (= (and b!4334485 (not res!1777495)) b!4334484))

(assert (= (and b!4334484 (not res!1777484)) b!4334476))

(assert (= (and b!4334476 res!1777493) b!4334481))

(assert (= (and b!4334481 res!1777489) b!4334475))

(assert (= (and b!4334476 (not res!1777491)) b!4334488))

(assert (= (and b!4334488 res!1777486) b!4334480))

(assert (= (and start!417954 (is-Cons!48637 newBucket!200)) b!4334482))

(assert (= start!417954 b!4334479))

(declare-fun m!4928979 () Bool)

(assert (=> b!4334486 m!4928979))

(declare-fun m!4928981 () Bool)

(assert (=> b!4334485 m!4928981))

(declare-fun m!4928983 () Bool)

(assert (=> b!4334485 m!4928983))

(declare-fun m!4928985 () Bool)

(assert (=> b!4334485 m!4928985))

(declare-fun m!4928987 () Bool)

(assert (=> b!4334485 m!4928987))

(declare-fun m!4928989 () Bool)

(assert (=> b!4334485 m!4928989))

(declare-fun m!4928991 () Bool)

(assert (=> b!4334481 m!4928991))

(declare-fun m!4928993 () Bool)

(assert (=> b!4334483 m!4928993))

(assert (=> b!4334476 m!4928991))

(declare-fun m!4928995 () Bool)

(assert (=> b!4334476 m!4928995))

(declare-fun m!4928997 () Bool)

(assert (=> b!4334476 m!4928997))

(declare-fun m!4928999 () Bool)

(assert (=> b!4334476 m!4928999))

(declare-fun m!4929001 () Bool)

(assert (=> b!4334477 m!4929001))

(assert (=> start!417954 m!4928999))

(declare-fun m!4929003 () Bool)

(assert (=> start!417954 m!4929003))

(declare-fun m!4929005 () Bool)

(assert (=> b!4334484 m!4929005))

(declare-fun m!4929007 () Bool)

(assert (=> b!4334487 m!4929007))

(declare-fun m!4929009 () Bool)

(assert (=> b!4334488 m!4929009))

(declare-fun m!4929011 () Bool)

(assert (=> b!4334488 m!4929011))

(declare-fun m!4929013 () Bool)

(assert (=> b!4334488 m!4929013))

(declare-fun m!4929015 () Bool)

(assert (=> b!4334488 m!4929015))

(declare-fun m!4929017 () Bool)

(assert (=> b!4334480 m!4929017))

(declare-fun m!4929019 () Bool)

(assert (=> b!4334478 m!4929019))

(assert (=> b!4334478 m!4929019))

(declare-fun m!4929021 () Bool)

(assert (=> b!4334478 m!4929021))

(push 1)

(assert (not start!417954))

(assert (not b!4334479))

(assert (not b!4334480))

(assert (not b!4334486))

(assert tp_is_empty!24719)

(assert (not b!4334482))

(assert (not b!4334478))

(assert tp_is_empty!24717)

(assert (not b!4334487))

(assert (not b!4334483))

(assert (not b!4334476))

(assert (not b!4334484))

(assert (not b!4334485))

(assert (not b!4334481))

(assert (not b!4334488))

(assert (not b!4334477))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

