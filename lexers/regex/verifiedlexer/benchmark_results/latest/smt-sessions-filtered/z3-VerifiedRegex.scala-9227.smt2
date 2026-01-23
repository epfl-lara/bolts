; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!489526 () Bool)

(assert start!489526)

(declare-fun b!4775904 () Bool)

(declare-fun res!2026761 () Bool)

(declare-fun e!2981473 () Bool)

(assert (=> b!4775904 (=> (not res!2026761) (not e!2981473))))

(declare-datatypes ((K!15424 0))(
  ( (K!15425 (val!20645 Int)) )
))
(declare-datatypes ((V!15670 0))(
  ( (V!15671 (val!20646 Int)) )
))
(declare-datatypes ((tuple2!56264 0))(
  ( (tuple2!56265 (_1!31426 K!15424) (_2!31426 V!15670)) )
))
(declare-datatypes ((List!53995 0))(
  ( (Nil!53871) (Cons!53871 (h!60285 tuple2!56264) (t!361445 List!53995)) )
))
(declare-datatypes ((tuple2!56266 0))(
  ( (tuple2!56267 (_1!31427 (_ BitVec 64)) (_2!31427 List!53995)) )
))
(declare-datatypes ((List!53996 0))(
  ( (Nil!53872) (Cons!53872 (h!60286 tuple2!56266) (t!361446 List!53996)) )
))
(declare-datatypes ((ListLongMap!5049 0))(
  ( (ListLongMap!5050 (toList!6631 List!53996)) )
))
(declare-fun lm!2709 () ListLongMap!5049)

(declare-fun key!6641 () K!15424)

(declare-fun containsKeyBiggerList!430 (List!53996 K!15424) Bool)

(assert (=> b!4775904 (= res!2026761 (containsKeyBiggerList!430 (toList!6631 lm!2709) key!6641))))

(declare-fun b!4775905 () Bool)

(declare-fun e!2981475 () Bool)

(declare-fun tp!1357116 () Bool)

(assert (=> b!4775905 (= e!2981475 tp!1357116)))

(declare-fun b!4775906 () Bool)

(declare-fun e!2981474 () Bool)

(assert (=> b!4775906 (= e!2981474 true)))

(declare-fun b!4775907 () Bool)

(declare-fun e!2981476 () Bool)

(assert (=> b!4775907 (= e!2981473 (not e!2981476))))

(declare-fun res!2026756 () Bool)

(assert (=> b!4775907 (=> res!2026756 e!2981476)))

(declare-datatypes ((Option!12863 0))(
  ( (None!12862) (Some!12862 (v!48023 tuple2!56264)) )
))
(declare-fun lt!1939036 () Option!12863)

(declare-fun v!11584 () V!15670)

(declare-fun get!18278 (Option!12863) tuple2!56264)

(assert (=> b!4775907 (= res!2026756 (not (= (_2!31426 (get!18278 lt!1939036)) v!11584)))))

(declare-fun isDefined!10007 (Option!12863) Bool)

(assert (=> b!4775907 (isDefined!10007 lt!1939036)))

(declare-fun lt!1939035 () List!53995)

(declare-fun getPair!762 (List!53995 K!15424) Option!12863)

(assert (=> b!4775907 (= lt!1939036 (getPair!762 lt!1939035 key!6641))))

(declare-datatypes ((Unit!138866 0))(
  ( (Unit!138867) )
))
(declare-fun lt!1939042 () Unit!138866)

(declare-fun lambda!226729 () Int)

(declare-fun lt!1939038 () tuple2!56266)

(declare-fun forallContained!3999 (List!53996 Int tuple2!56266) Unit!138866)

(assert (=> b!4775907 (= lt!1939042 (forallContained!3999 (toList!6631 lm!2709) lambda!226729 lt!1939038))))

(declare-datatypes ((Hashable!6774 0))(
  ( (HashableExt!6773 (__x!32797 Int)) )
))
(declare-fun hashF!1687 () Hashable!6774)

(declare-fun lt!1939039 () Unit!138866)

(declare-fun lemmaInGenMapThenGetPairDefined!536 (ListLongMap!5049 K!15424 Hashable!6774) Unit!138866)

(assert (=> b!4775907 (= lt!1939039 (lemmaInGenMapThenGetPairDefined!536 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1939033 () Unit!138866)

(assert (=> b!4775907 (= lt!1939033 (forallContained!3999 (toList!6631 lm!2709) lambda!226729 lt!1939038))))

(declare-fun contains!17358 (List!53996 tuple2!56266) Bool)

(assert (=> b!4775907 (contains!17358 (toList!6631 lm!2709) lt!1939038)))

(declare-fun lt!1939034 () (_ BitVec 64))

(assert (=> b!4775907 (= lt!1939038 (tuple2!56267 lt!1939034 lt!1939035))))

(declare-fun lt!1939041 () Unit!138866)

(declare-fun lemmaGetValueImpliesTupleContained!565 (ListLongMap!5049 (_ BitVec 64) List!53995) Unit!138866)

(assert (=> b!4775907 (= lt!1939041 (lemmaGetValueImpliesTupleContained!565 lm!2709 lt!1939034 lt!1939035))))

(declare-fun apply!12837 (ListLongMap!5049 (_ BitVec 64)) List!53995)

(assert (=> b!4775907 (= lt!1939035 (apply!12837 lm!2709 lt!1939034))))

(declare-fun contains!17359 (ListLongMap!5049 (_ BitVec 64)) Bool)

(assert (=> b!4775907 (contains!17359 lm!2709 lt!1939034)))

(declare-fun hash!4746 (Hashable!6774 K!15424) (_ BitVec 64))

(assert (=> b!4775907 (= lt!1939034 (hash!4746 hashF!1687 key!6641))))

(declare-fun lt!1939043 () Unit!138866)

(declare-fun lemmaInGenMapThenLongMapContainsHash!978 (ListLongMap!5049 K!15424 Hashable!6774) Unit!138866)

(assert (=> b!4775907 (= lt!1939043 (lemmaInGenMapThenLongMapContainsHash!978 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6107 0))(
  ( (ListMap!6108 (toList!6632 List!53995)) )
))
(declare-fun contains!17360 (ListMap!6107 K!15424) Bool)

(declare-fun extractMap!2305 (List!53996) ListMap!6107)

(assert (=> b!4775907 (contains!17360 (extractMap!2305 (toList!6631 lm!2709)) key!6641)))

(declare-fun lt!1939037 () Unit!138866)

(declare-fun lemmaListContainsThenExtractedMapContains!626 (ListLongMap!5049 K!15424 Hashable!6774) Unit!138866)

(assert (=> b!4775907 (= lt!1939037 (lemmaListContainsThenExtractedMapContains!626 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4775908 () Bool)

(assert (=> b!4775908 (= e!2981476 e!2981474)))

(declare-fun res!2026758 () Bool)

(assert (=> b!4775908 (=> res!2026758 e!2981474)))

(declare-fun containsKey!3745 (List!53995 K!15424) Bool)

(assert (=> b!4775908 (= res!2026758 (containsKey!3745 (_2!31427 (h!60286 (toList!6631 lm!2709))) key!6641))))

(assert (=> b!4775908 (not (containsKey!3745 (apply!12837 lm!2709 (_1!31427 (h!60286 (toList!6631 lm!2709)))) key!6641))))

(declare-fun lt!1939040 () Unit!138866)

(declare-fun lemmaNotSameHashThenCannotContainKey!166 (ListLongMap!5049 K!15424 (_ BitVec 64) Hashable!6774) Unit!138866)

(assert (=> b!4775908 (= lt!1939040 (lemmaNotSameHashThenCannotContainKey!166 lm!2709 key!6641 (_1!31427 (h!60286 (toList!6631 lm!2709))) hashF!1687))))

(declare-fun b!4775909 () Bool)

(declare-fun res!2026759 () Bool)

(assert (=> b!4775909 (=> res!2026759 e!2981474)))

(declare-fun forall!12042 (List!53996 Int) Bool)

(assert (=> b!4775909 (= res!2026759 (not (forall!12042 (toList!6631 lm!2709) lambda!226729)))))

(declare-fun b!4775910 () Bool)

(declare-fun res!2026755 () Bool)

(assert (=> b!4775910 (=> res!2026755 e!2981476)))

(get-info :version)

(assert (=> b!4775910 (= res!2026755 (or (and ((_ is Cons!53872) (toList!6631 lm!2709)) (= (_1!31427 (h!60286 (toList!6631 lm!2709))) lt!1939034)) (not ((_ is Cons!53872) (toList!6631 lm!2709)))))))

(declare-fun res!2026762 () Bool)

(assert (=> start!489526 (=> (not res!2026762) (not e!2981473))))

(assert (=> start!489526 (= res!2026762 (forall!12042 (toList!6631 lm!2709) lambda!226729))))

(assert (=> start!489526 e!2981473))

(declare-fun inv!69450 (ListLongMap!5049) Bool)

(assert (=> start!489526 (and (inv!69450 lm!2709) e!2981475)))

(assert (=> start!489526 true))

(declare-fun tp_is_empty!33025 () Bool)

(assert (=> start!489526 tp_is_empty!33025))

(declare-fun tp_is_empty!33027 () Bool)

(assert (=> start!489526 tp_is_empty!33027))

(declare-fun b!4775911 () Bool)

(declare-fun res!2026757 () Bool)

(assert (=> b!4775911 (=> (not res!2026757) (not e!2981473))))

(declare-fun allKeysSameHashInMap!2179 (ListLongMap!5049 Hashable!6774) Bool)

(assert (=> b!4775911 (= res!2026757 (allKeysSameHashInMap!2179 lm!2709 hashF!1687))))

(declare-fun b!4775912 () Bool)

(declare-fun res!2026760 () Bool)

(assert (=> b!4775912 (=> res!2026760 e!2981474)))

(declare-fun head!10358 (List!53996) tuple2!56266)

(assert (=> b!4775912 (= res!2026760 (containsKey!3745 (_2!31427 (head!10358 (toList!6631 lm!2709))) key!6641))))

(assert (= (and start!489526 res!2026762) b!4775911))

(assert (= (and b!4775911 res!2026757) b!4775904))

(assert (= (and b!4775904 res!2026761) b!4775907))

(assert (= (and b!4775907 (not res!2026756)) b!4775910))

(assert (= (and b!4775910 (not res!2026755)) b!4775908))

(assert (= (and b!4775908 (not res!2026758)) b!4775909))

(assert (= (and b!4775909 (not res!2026759)) b!4775912))

(assert (= (and b!4775912 (not res!2026760)) b!4775906))

(assert (= start!489526 b!4775905))

(declare-fun m!5750616 () Bool)

(assert (=> b!4775904 m!5750616))

(declare-fun m!5750618 () Bool)

(assert (=> b!4775907 m!5750618))

(declare-fun m!5750620 () Bool)

(assert (=> b!4775907 m!5750620))

(declare-fun m!5750622 () Bool)

(assert (=> b!4775907 m!5750622))

(declare-fun m!5750624 () Bool)

(assert (=> b!4775907 m!5750624))

(declare-fun m!5750626 () Bool)

(assert (=> b!4775907 m!5750626))

(declare-fun m!5750628 () Bool)

(assert (=> b!4775907 m!5750628))

(declare-fun m!5750630 () Bool)

(assert (=> b!4775907 m!5750630))

(declare-fun m!5750632 () Bool)

(assert (=> b!4775907 m!5750632))

(declare-fun m!5750634 () Bool)

(assert (=> b!4775907 m!5750634))

(declare-fun m!5750636 () Bool)

(assert (=> b!4775907 m!5750636))

(declare-fun m!5750638 () Bool)

(assert (=> b!4775907 m!5750638))

(declare-fun m!5750640 () Bool)

(assert (=> b!4775907 m!5750640))

(declare-fun m!5750642 () Bool)

(assert (=> b!4775907 m!5750642))

(assert (=> b!4775907 m!5750628))

(assert (=> b!4775907 m!5750642))

(declare-fun m!5750644 () Bool)

(assert (=> b!4775907 m!5750644))

(declare-fun m!5750646 () Bool)

(assert (=> b!4775911 m!5750646))

(declare-fun m!5750648 () Bool)

(assert (=> b!4775909 m!5750648))

(declare-fun m!5750650 () Bool)

(assert (=> b!4775908 m!5750650))

(declare-fun m!5750652 () Bool)

(assert (=> b!4775908 m!5750652))

(assert (=> b!4775908 m!5750652))

(declare-fun m!5750654 () Bool)

(assert (=> b!4775908 m!5750654))

(declare-fun m!5750656 () Bool)

(assert (=> b!4775908 m!5750656))

(assert (=> start!489526 m!5750648))

(declare-fun m!5750658 () Bool)

(assert (=> start!489526 m!5750658))

(declare-fun m!5750660 () Bool)

(assert (=> b!4775912 m!5750660))

(declare-fun m!5750662 () Bool)

(assert (=> b!4775912 m!5750662))

(check-sat (not b!4775908) (not start!489526) (not b!4775909) (not b!4775905) tp_is_empty!33025 (not b!4775911) (not b!4775907) (not b!4775912) (not b!4775904) tp_is_empty!33027)
(check-sat)
