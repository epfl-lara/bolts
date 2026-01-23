; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!497782 () Bool)

(assert start!497782)

(declare-fun b!4813809 () Bool)

(declare-datatypes ((Unit!141765 0))(
  ( (Unit!141766) )
))
(declare-fun e!3007536 () Unit!141765)

(declare-fun Unit!141767 () Unit!141765)

(assert (=> b!4813809 (= e!3007536 Unit!141767)))

(declare-fun lt!1964790 () Unit!141765)

(declare-datatypes ((K!16292 0))(
  ( (K!16293 (val!21339 Int)) )
))
(declare-datatypes ((V!16538 0))(
  ( (V!16539 (val!21340 Int)) )
))
(declare-datatypes ((tuple2!57614 0))(
  ( (tuple2!57615 (_1!32101 K!16292) (_2!32101 V!16538)) )
))
(declare-datatypes ((List!54774 0))(
  ( (Nil!54650) (Cons!54650 (h!61082 tuple2!57614) (t!362270 List!54774)) )
))
(declare-datatypes ((tuple2!57616 0))(
  ( (tuple2!57617 (_1!32102 (_ BitVec 64)) (_2!32102 List!54774)) )
))
(declare-datatypes ((List!54775 0))(
  ( (Nil!54651) (Cons!54651 (h!61083 tuple2!57616) (t!362271 List!54775)) )
))
(declare-datatypes ((ListLongMap!5705 0))(
  ( (ListLongMap!5706 (toList!7225 List!54775)) )
))
(declare-fun lm!1254 () ListLongMap!5705)

(declare-fun lt!1964789 () (_ BitVec 64))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!312 (List!54775 (_ BitVec 64)) Unit!141765)

(assert (=> b!4813809 (= lt!1964790 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!312 (toList!7225 lm!1254) lt!1964789))))

(declare-fun containsKey!4200 (List!54775 (_ BitVec 64)) Bool)

(assert (=> b!4813809 (containsKey!4200 (toList!7225 lm!1254) lt!1964789)))

(declare-fun lt!1964784 () Unit!141765)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2318 (List!54775 (_ BitVec 64)) Unit!141765)

(assert (=> b!4813809 (= lt!1964784 (lemmaContainsKeyImpliesGetValueByKeyDefined!2318 (toList!7225 lm!1254) lt!1964789))))

(declare-datatypes ((Option!13364 0))(
  ( (None!13363) (Some!13363 (v!48996 List!54774)) )
))
(declare-fun isDefined!10501 (Option!13364) Bool)

(declare-fun getValueByKey!2531 (List!54775 (_ BitVec 64)) Option!13364)

(assert (=> b!4813809 (isDefined!10501 (getValueByKey!2531 (toList!7225 lm!1254) lt!1964789))))

(declare-fun lt!1964792 () List!54774)

(declare-fun lt!1964785 () Unit!141765)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1029 (List!54775 (_ BitVec 64) List!54774) Unit!141765)

(assert (=> b!4813809 (= lt!1964785 (lemmaGetValueByKeyImpliesContainsTuple!1029 (toList!7225 lm!1254) lt!1964789 lt!1964792))))

(assert (=> b!4813809 false))

(declare-fun b!4813810 () Bool)

(declare-fun res!2047502 () Bool)

(declare-fun e!3007535 () Bool)

(assert (=> b!4813810 (=> (not res!2047502) (not e!3007535))))

(declare-fun key!2670 () K!16292)

(declare-datatypes ((ListMap!6639 0))(
  ( (ListMap!6640 (toList!7226 List!54774)) )
))
(declare-fun contains!18417 (ListMap!6639 K!16292) Bool)

(declare-fun extractMap!2571 (List!54775) ListMap!6639)

(assert (=> b!4813810 (= res!2047502 (contains!18417 (extractMap!2571 (toList!7225 lm!1254)) key!2670))))

(declare-fun b!4813811 () Bool)

(declare-fun e!3007537 () Bool)

(declare-fun lambda!234016 () Int)

(declare-fun forall!12425 (List!54775 Int) Bool)

(assert (=> b!4813811 (= e!3007537 (forall!12425 (toList!7225 lm!1254) lambda!234016))))

(declare-fun b!4813812 () Bool)

(assert (=> b!4813812 (= e!3007535 (not e!3007537))))

(declare-fun res!2047501 () Bool)

(assert (=> b!4813812 (=> res!2047501 e!3007537)))

(assert (=> b!4813812 (= res!2047501 (not (forall!12425 (toList!7225 lm!1254) lambda!234016)))))

(declare-fun lt!1964787 () Unit!141765)

(declare-fun lt!1964793 () tuple2!57616)

(declare-fun forallContained!4295 (List!54775 Int tuple2!57616) Unit!141765)

(assert (=> b!4813812 (= lt!1964787 (forallContained!4295 (toList!7225 lm!1254) lambda!234016 lt!1964793))))

(declare-fun lt!1964791 () Unit!141765)

(assert (=> b!4813812 (= lt!1964791 (forallContained!4295 (toList!7225 lm!1254) lambda!234016 lt!1964793))))

(declare-fun lt!1964788 () Unit!141765)

(assert (=> b!4813812 (= lt!1964788 e!3007536)))

(declare-fun c!820433 () Bool)

(declare-fun contains!18418 (List!54775 tuple2!57616) Bool)

(assert (=> b!4813812 (= c!820433 (not (contains!18418 (toList!7225 lm!1254) lt!1964793)))))

(assert (=> b!4813812 (= lt!1964793 (tuple2!57617 lt!1964789 lt!1964792))))

(declare-fun apply!13226 (ListLongMap!5705 (_ BitVec 64)) List!54774)

(assert (=> b!4813812 (= lt!1964792 (apply!13226 lm!1254 lt!1964789))))

(declare-fun contains!18419 (ListLongMap!5705 (_ BitVec 64)) Bool)

(assert (=> b!4813812 (contains!18419 lm!1254 lt!1964789)))

(declare-datatypes ((Hashable!7121 0))(
  ( (HashableExt!7120 (__x!33396 Int)) )
))
(declare-fun hashF!938 () Hashable!7121)

(declare-fun hash!5184 (Hashable!7121 K!16292) (_ BitVec 64))

(assert (=> b!4813812 (= lt!1964789 (hash!5184 hashF!938 key!2670))))

(declare-fun lt!1964786 () Unit!141765)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1059 (ListLongMap!5705 K!16292 Hashable!7121) Unit!141765)

(assert (=> b!4813812 (= lt!1964786 (lemmaInGenMapThenLongMapContainsHash!1059 lm!1254 key!2670 hashF!938))))

(declare-fun res!2047504 () Bool)

(assert (=> start!497782 (=> (not res!2047504) (not e!3007535))))

(assert (=> start!497782 (= res!2047504 (forall!12425 (toList!7225 lm!1254) lambda!234016))))

(assert (=> start!497782 e!3007535))

(declare-fun e!3007538 () Bool)

(declare-fun inv!70193 (ListLongMap!5705) Bool)

(assert (=> start!497782 (and (inv!70193 lm!1254) e!3007538)))

(assert (=> start!497782 true))

(declare-fun tp_is_empty!34111 () Bool)

(assert (=> start!497782 tp_is_empty!34111))

(declare-fun b!4813813 () Bool)

(declare-fun res!2047503 () Bool)

(assert (=> b!4813813 (=> (not res!2047503) (not e!3007535))))

(declare-fun allKeysSameHashInMap!2437 (ListLongMap!5705 Hashable!7121) Bool)

(assert (=> b!4813813 (= res!2047503 (allKeysSameHashInMap!2437 lm!1254 hashF!938))))

(declare-fun b!4813814 () Bool)

(declare-fun tp!1361662 () Bool)

(assert (=> b!4813814 (= e!3007538 tp!1361662)))

(declare-fun b!4813815 () Bool)

(declare-fun Unit!141768 () Unit!141765)

(assert (=> b!4813815 (= e!3007536 Unit!141768)))

(assert (= (and start!497782 res!2047504) b!4813813))

(assert (= (and b!4813813 res!2047503) b!4813810))

(assert (= (and b!4813810 res!2047502) b!4813812))

(assert (= (and b!4813812 c!820433) b!4813809))

(assert (= (and b!4813812 (not c!820433)) b!4813815))

(assert (= (and b!4813812 (not res!2047501)) b!4813811))

(assert (= start!497782 b!4813814))

(declare-fun m!5799578 () Bool)

(assert (=> start!497782 m!5799578))

(declare-fun m!5799580 () Bool)

(assert (=> start!497782 m!5799580))

(declare-fun m!5799582 () Bool)

(assert (=> b!4813809 m!5799582))

(declare-fun m!5799584 () Bool)

(assert (=> b!4813809 m!5799584))

(declare-fun m!5799586 () Bool)

(assert (=> b!4813809 m!5799586))

(assert (=> b!4813809 m!5799582))

(declare-fun m!5799588 () Bool)

(assert (=> b!4813809 m!5799588))

(declare-fun m!5799590 () Bool)

(assert (=> b!4813809 m!5799590))

(declare-fun m!5799592 () Bool)

(assert (=> b!4813809 m!5799592))

(declare-fun m!5799594 () Bool)

(assert (=> b!4813812 m!5799594))

(assert (=> b!4813812 m!5799578))

(declare-fun m!5799596 () Bool)

(assert (=> b!4813812 m!5799596))

(declare-fun m!5799598 () Bool)

(assert (=> b!4813812 m!5799598))

(declare-fun m!5799600 () Bool)

(assert (=> b!4813812 m!5799600))

(declare-fun m!5799602 () Bool)

(assert (=> b!4813812 m!5799602))

(declare-fun m!5799604 () Bool)

(assert (=> b!4813812 m!5799604))

(assert (=> b!4813812 m!5799600))

(assert (=> b!4813811 m!5799578))

(declare-fun m!5799606 () Bool)

(assert (=> b!4813810 m!5799606))

(assert (=> b!4813810 m!5799606))

(declare-fun m!5799608 () Bool)

(assert (=> b!4813810 m!5799608))

(declare-fun m!5799610 () Bool)

(assert (=> b!4813813 m!5799610))

(push 1)

(assert (not b!4813810))

(assert (not b!4813814))

(assert (not start!497782))

(assert (not b!4813809))

(assert (not b!4813812))

(assert (not b!4813813))

(assert (not b!4813811))

(assert tp_is_empty!34111)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

