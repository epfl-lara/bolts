; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489520 () Bool)

(assert start!489520)

(declare-fun b!4775823 () Bool)

(declare-fun e!2981439 () Bool)

(declare-fun e!2981440 () Bool)

(assert (=> b!4775823 (= e!2981439 (not e!2981440))))

(declare-fun res!2026684 () Bool)

(assert (=> b!4775823 (=> res!2026684 e!2981440)))

(declare-datatypes ((K!15417 0))(
  ( (K!15418 (val!20639 Int)) )
))
(declare-datatypes ((V!15663 0))(
  ( (V!15664 (val!20640 Int)) )
))
(declare-datatypes ((tuple2!56252 0))(
  ( (tuple2!56253 (_1!31420 K!15417) (_2!31420 V!15663)) )
))
(declare-datatypes ((Option!12860 0))(
  ( (None!12859) (Some!12859 (v!48020 tuple2!56252)) )
))
(declare-fun lt!1938943 () Option!12860)

(declare-fun v!11584 () V!15663)

(declare-fun get!18274 (Option!12860) tuple2!56252)

(assert (=> b!4775823 (= res!2026684 (not (= (_2!31420 (get!18274 lt!1938943)) v!11584)))))

(declare-fun isDefined!10004 (Option!12860) Bool)

(assert (=> b!4775823 (isDefined!10004 lt!1938943)))

(declare-datatypes ((List!53989 0))(
  ( (Nil!53865) (Cons!53865 (h!60279 tuple2!56252) (t!361439 List!53989)) )
))
(declare-fun lt!1938942 () List!53989)

(declare-fun key!6641 () K!15417)

(declare-fun getPair!759 (List!53989 K!15417) Option!12860)

(assert (=> b!4775823 (= lt!1938943 (getPair!759 lt!1938942 key!6641))))

(declare-datatypes ((Unit!138860 0))(
  ( (Unit!138861) )
))
(declare-fun lt!1938934 () Unit!138860)

(declare-fun lambda!226700 () Int)

(declare-datatypes ((tuple2!56254 0))(
  ( (tuple2!56255 (_1!31421 (_ BitVec 64)) (_2!31421 List!53989)) )
))
(declare-fun lt!1938941 () tuple2!56254)

(declare-datatypes ((List!53990 0))(
  ( (Nil!53866) (Cons!53866 (h!60280 tuple2!56254) (t!361440 List!53990)) )
))
(declare-datatypes ((ListLongMap!5043 0))(
  ( (ListLongMap!5044 (toList!6625 List!53990)) )
))
(declare-fun lm!2709 () ListLongMap!5043)

(declare-fun forallContained!3996 (List!53990 Int tuple2!56254) Unit!138860)

(assert (=> b!4775823 (= lt!1938934 (forallContained!3996 (toList!6625 lm!2709) lambda!226700 lt!1938941))))

(declare-datatypes ((Hashable!6771 0))(
  ( (HashableExt!6770 (__x!32794 Int)) )
))
(declare-fun hashF!1687 () Hashable!6771)

(declare-fun lt!1938938 () Unit!138860)

(declare-fun lemmaInGenMapThenGetPairDefined!533 (ListLongMap!5043 K!15417 Hashable!6771) Unit!138860)

(assert (=> b!4775823 (= lt!1938938 (lemmaInGenMapThenGetPairDefined!533 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1938937 () Unit!138860)

(assert (=> b!4775823 (= lt!1938937 (forallContained!3996 (toList!6625 lm!2709) lambda!226700 lt!1938941))))

(declare-fun contains!17349 (List!53990 tuple2!56254) Bool)

(assert (=> b!4775823 (contains!17349 (toList!6625 lm!2709) lt!1938941)))

(declare-fun lt!1938944 () (_ BitVec 64))

(assert (=> b!4775823 (= lt!1938941 (tuple2!56255 lt!1938944 lt!1938942))))

(declare-fun lt!1938936 () Unit!138860)

(declare-fun lemmaGetValueImpliesTupleContained!562 (ListLongMap!5043 (_ BitVec 64) List!53989) Unit!138860)

(assert (=> b!4775823 (= lt!1938936 (lemmaGetValueImpliesTupleContained!562 lm!2709 lt!1938944 lt!1938942))))

(declare-fun apply!12834 (ListLongMap!5043 (_ BitVec 64)) List!53989)

(assert (=> b!4775823 (= lt!1938942 (apply!12834 lm!2709 lt!1938944))))

(declare-fun contains!17350 (ListLongMap!5043 (_ BitVec 64)) Bool)

(assert (=> b!4775823 (contains!17350 lm!2709 lt!1938944)))

(declare-fun hash!4743 (Hashable!6771 K!15417) (_ BitVec 64))

(assert (=> b!4775823 (= lt!1938944 (hash!4743 hashF!1687 key!6641))))

(declare-fun lt!1938940 () Unit!138860)

(declare-fun lemmaInGenMapThenLongMapContainsHash!975 (ListLongMap!5043 K!15417 Hashable!6771) Unit!138860)

(assert (=> b!4775823 (= lt!1938940 (lemmaInGenMapThenLongMapContainsHash!975 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6101 0))(
  ( (ListMap!6102 (toList!6626 List!53989)) )
))
(declare-fun contains!17351 (ListMap!6101 K!15417) Bool)

(declare-fun extractMap!2302 (List!53990) ListMap!6101)

(assert (=> b!4775823 (contains!17351 (extractMap!2302 (toList!6625 lm!2709)) key!6641)))

(declare-fun lt!1938935 () Unit!138860)

(declare-fun lemmaListContainsThenExtractedMapContains!623 (ListLongMap!5043 K!15417 Hashable!6771) Unit!138860)

(assert (=> b!4775823 (= lt!1938935 (lemmaListContainsThenExtractedMapContains!623 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4775824 () Bool)

(declare-fun e!2981438 () Bool)

(declare-fun forall!12039 (List!53990 Int) Bool)

(assert (=> b!4775824 (= e!2981438 (forall!12039 (toList!6625 lm!2709) lambda!226700))))

(declare-fun b!4775825 () Bool)

(declare-fun res!2026687 () Bool)

(assert (=> b!4775825 (=> (not res!2026687) (not e!2981439))))

(declare-fun allKeysSameHashInMap!2176 (ListLongMap!5043 Hashable!6771) Bool)

(assert (=> b!4775825 (= res!2026687 (allKeysSameHashInMap!2176 lm!2709 hashF!1687))))

(declare-fun b!4775826 () Bool)

(declare-fun res!2026689 () Bool)

(assert (=> b!4775826 (=> res!2026689 e!2981438)))

(assert (=> b!4775826 (= res!2026689 (not (forall!12039 (toList!6625 lm!2709) lambda!226700)))))

(declare-fun b!4775827 () Bool)

(declare-fun res!2026686 () Bool)

(assert (=> b!4775827 (=> (not res!2026686) (not e!2981439))))

(declare-fun containsKeyBiggerList!427 (List!53990 K!15417) Bool)

(assert (=> b!4775827 (= res!2026686 (containsKeyBiggerList!427 (toList!6625 lm!2709) key!6641))))

(declare-fun b!4775828 () Bool)

(assert (=> b!4775828 (= e!2981440 e!2981438)))

(declare-fun res!2026683 () Bool)

(assert (=> b!4775828 (=> res!2026683 e!2981438)))

(declare-fun containsKey!3742 (List!53989 K!15417) Bool)

(assert (=> b!4775828 (= res!2026683 (containsKey!3742 (_2!31421 (h!60280 (toList!6625 lm!2709))) key!6641))))

(assert (=> b!4775828 (not (containsKey!3742 (apply!12834 lm!2709 (_1!31421 (h!60280 (toList!6625 lm!2709)))) key!6641))))

(declare-fun lt!1938939 () Unit!138860)

(declare-fun lemmaNotSameHashThenCannotContainKey!163 (ListLongMap!5043 K!15417 (_ BitVec 64) Hashable!6771) Unit!138860)

(assert (=> b!4775828 (= lt!1938939 (lemmaNotSameHashThenCannotContainKey!163 lm!2709 key!6641 (_1!31421 (h!60280 (toList!6625 lm!2709))) hashF!1687))))

(declare-fun b!4775829 () Bool)

(declare-fun res!2026690 () Bool)

(assert (=> b!4775829 (=> res!2026690 e!2981438)))

(declare-fun head!10355 (List!53990) tuple2!56254)

(assert (=> b!4775829 (= res!2026690 (containsKey!3742 (_2!31421 (head!10355 (toList!6625 lm!2709))) key!6641))))

(declare-fun b!4775830 () Bool)

(declare-fun res!2026685 () Bool)

(assert (=> b!4775830 (=> res!2026685 e!2981440)))

(assert (=> b!4775830 (= res!2026685 (or (and (is-Cons!53866 (toList!6625 lm!2709)) (= (_1!31421 (h!60280 (toList!6625 lm!2709))) lt!1938944)) (not (is-Cons!53866 (toList!6625 lm!2709)))))))

(declare-fun b!4775831 () Bool)

(declare-fun e!2981437 () Bool)

(declare-fun tp!1357107 () Bool)

(assert (=> b!4775831 (= e!2981437 tp!1357107)))

(declare-fun res!2026688 () Bool)

(assert (=> start!489520 (=> (not res!2026688) (not e!2981439))))

(assert (=> start!489520 (= res!2026688 (forall!12039 (toList!6625 lm!2709) lambda!226700))))

(assert (=> start!489520 e!2981439))

(declare-fun inv!69444 (ListLongMap!5043) Bool)

(assert (=> start!489520 (and (inv!69444 lm!2709) e!2981437)))

(assert (=> start!489520 true))

(declare-fun tp_is_empty!33013 () Bool)

(assert (=> start!489520 tp_is_empty!33013))

(declare-fun tp_is_empty!33015 () Bool)

(assert (=> start!489520 tp_is_empty!33015))

(assert (= (and start!489520 res!2026688) b!4775825))

(assert (= (and b!4775825 res!2026687) b!4775827))

(assert (= (and b!4775827 res!2026686) b!4775823))

(assert (= (and b!4775823 (not res!2026684)) b!4775830))

(assert (= (and b!4775830 (not res!2026685)) b!4775828))

(assert (= (and b!4775828 (not res!2026683)) b!4775826))

(assert (= (and b!4775826 (not res!2026689)) b!4775829))

(assert (= (and b!4775829 (not res!2026690)) b!4775824))

(assert (= start!489520 b!4775831))

(declare-fun m!5750472 () Bool)

(assert (=> b!4775823 m!5750472))

(declare-fun m!5750474 () Bool)

(assert (=> b!4775823 m!5750474))

(declare-fun m!5750476 () Bool)

(assert (=> b!4775823 m!5750476))

(declare-fun m!5750478 () Bool)

(assert (=> b!4775823 m!5750478))

(declare-fun m!5750480 () Bool)

(assert (=> b!4775823 m!5750480))

(declare-fun m!5750482 () Bool)

(assert (=> b!4775823 m!5750482))

(declare-fun m!5750484 () Bool)

(assert (=> b!4775823 m!5750484))

(declare-fun m!5750486 () Bool)

(assert (=> b!4775823 m!5750486))

(declare-fun m!5750488 () Bool)

(assert (=> b!4775823 m!5750488))

(declare-fun m!5750490 () Bool)

(assert (=> b!4775823 m!5750490))

(assert (=> b!4775823 m!5750486))

(declare-fun m!5750492 () Bool)

(assert (=> b!4775823 m!5750492))

(declare-fun m!5750494 () Bool)

(assert (=> b!4775823 m!5750494))

(declare-fun m!5750496 () Bool)

(assert (=> b!4775823 m!5750496))

(assert (=> b!4775823 m!5750474))

(declare-fun m!5750498 () Bool)

(assert (=> b!4775823 m!5750498))

(declare-fun m!5750500 () Bool)

(assert (=> b!4775828 m!5750500))

(declare-fun m!5750502 () Bool)

(assert (=> b!4775828 m!5750502))

(assert (=> b!4775828 m!5750502))

(declare-fun m!5750504 () Bool)

(assert (=> b!4775828 m!5750504))

(declare-fun m!5750506 () Bool)

(assert (=> b!4775828 m!5750506))

(declare-fun m!5750508 () Bool)

(assert (=> b!4775826 m!5750508))

(declare-fun m!5750510 () Bool)

(assert (=> b!4775825 m!5750510))

(declare-fun m!5750512 () Bool)

(assert (=> b!4775829 m!5750512))

(declare-fun m!5750514 () Bool)

(assert (=> b!4775829 m!5750514))

(assert (=> b!4775824 m!5750508))

(assert (=> start!489520 m!5750508))

(declare-fun m!5750516 () Bool)

(assert (=> start!489520 m!5750516))

(declare-fun m!5750518 () Bool)

(assert (=> b!4775827 m!5750518))

(push 1)

(assert (not b!4775823))

(assert (not b!4775831))

(assert (not b!4775826))

(assert (not b!4775827))

(assert (not b!4775828))

(assert tp_is_empty!33013)

(assert tp_is_empty!33015)

(assert (not b!4775824))

(assert (not start!489520))

(assert (not b!4775829))

(assert (not b!4775825))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

