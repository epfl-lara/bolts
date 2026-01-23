; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!499082 () Bool)

(assert start!499082)

(declare-fun res!2050339 () Bool)

(declare-fun e!3010767 () Bool)

(assert (=> start!499082 (=> (not res!2050339) (not e!3010767))))

(declare-datatypes ((V!16755 0))(
  ( (V!16756 (val!21513 Int)) )
))
(declare-datatypes ((K!16509 0))(
  ( (K!16510 (val!21514 Int)) )
))
(declare-datatypes ((tuple2!57962 0))(
  ( (tuple2!57963 (_1!32275 K!16509) (_2!32275 V!16755)) )
))
(declare-datatypes ((List!54964 0))(
  ( (Nil!54840) (Cons!54840 (h!61274 tuple2!57962) (t!362460 List!54964)) )
))
(declare-datatypes ((tuple2!57964 0))(
  ( (tuple2!57965 (_1!32276 (_ BitVec 64)) (_2!32276 List!54964)) )
))
(declare-datatypes ((List!54965 0))(
  ( (Nil!54841) (Cons!54841 (h!61275 tuple2!57964) (t!362461 List!54965)) )
))
(declare-datatypes ((ListLongMap!5879 0))(
  ( (ListLongMap!5880 (toList!7391 List!54965)) )
))
(declare-fun lm!2280 () ListLongMap!5879)

(declare-fun lambda!235100 () Int)

(declare-fun forall!12522 (List!54965 Int) Bool)

(assert (=> start!499082 (= res!2050339 (forall!12522 (toList!7391 lm!2280) lambda!235100))))

(assert (=> start!499082 e!3010767))

(declare-fun e!3010765 () Bool)

(declare-fun inv!70409 (ListLongMap!5879) Bool)

(assert (=> start!499082 (and (inv!70409 lm!2280) e!3010765)))

(assert (=> start!499082 true))

(declare-fun tp_is_empty!34301 () Bool)

(assert (=> start!499082 tp_is_empty!34301))

(declare-fun b!4818860 () Bool)

(declare-fun res!2050337 () Bool)

(declare-fun e!3010766 () Bool)

(assert (=> b!4818860 (=> (not res!2050337) (not e!3010766))))

(declare-fun key!5428 () K!16509)

(declare-fun lt!1968467 () (_ BitVec 64))

(declare-fun containsKey!4270 (List!54964 K!16509) Bool)

(declare-fun apply!13295 (ListLongMap!5879 (_ BitVec 64)) List!54964)

(assert (=> b!4818860 (= res!2050337 (not (containsKey!4270 (apply!13295 lm!2280 lt!1968467) key!5428)))))

(declare-fun b!4818861 () Bool)

(assert (=> b!4818861 (= e!3010767 e!3010766)))

(declare-fun res!2050336 () Bool)

(assert (=> b!4818861 (=> (not res!2050336) (not e!3010766))))

(declare-fun contains!18666 (ListLongMap!5879 (_ BitVec 64)) Bool)

(assert (=> b!4818861 (= res!2050336 (contains!18666 lm!2280 lt!1968467))))

(declare-datatypes ((Hashable!7208 0))(
  ( (HashableExt!7207 (__x!33483 Int)) )
))
(declare-fun hashF!1509 () Hashable!7208)

(declare-fun hash!5287 (Hashable!7208 K!16509) (_ BitVec 64))

(assert (=> b!4818861 (= lt!1968467 (hash!5287 hashF!1509 key!5428))))

(declare-fun b!4818862 () Bool)

(declare-fun tp!1362127 () Bool)

(assert (=> b!4818862 (= e!3010765 tp!1362127)))

(declare-fun b!4818863 () Bool)

(assert (=> b!4818863 (= e!3010766 (not true))))

(declare-fun lt!1968468 () Bool)

(declare-fun noDuplicateKeys!2418 (List!54964) Bool)

(assert (=> b!4818863 (= lt!1968468 (noDuplicateKeys!2418 (_2!32276 (h!61275 (toList!7391 lm!2280)))))))

(declare-datatypes ((ListMap!6797 0))(
  ( (ListMap!6798 (toList!7392 List!54964)) )
))
(declare-fun lt!1968466 () ListMap!6797)

(declare-fun extractMap!2650 (List!54965) ListMap!6797)

(assert (=> b!4818863 (= lt!1968466 (extractMap!2650 (t!362461 (toList!7391 lm!2280))))))

(declare-fun lt!1968464 () ListLongMap!5879)

(declare-fun contains!18667 (ListMap!6797 K!16509) Bool)

(assert (=> b!4818863 (not (contains!18667 (extractMap!2650 (toList!7391 lt!1968464)) key!5428))))

(declare-datatypes ((Unit!142161 0))(
  ( (Unit!142162) )
))
(declare-fun lt!1968465 () Unit!142161)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!82 (ListLongMap!5879 K!16509 Hashable!7208) Unit!142161)

(assert (=> b!4818863 (= lt!1968465 (lemmaHashNotInLongMapThenNotInGenerated!82 lt!1968464 key!5428 hashF!1509))))

(declare-fun tail!9363 (ListLongMap!5879) ListLongMap!5879)

(assert (=> b!4818863 (= lt!1968464 (tail!9363 lm!2280))))

(declare-fun b!4818864 () Bool)

(declare-fun res!2050335 () Bool)

(assert (=> b!4818864 (=> (not res!2050335) (not e!3010766))))

(get-info :version)

(assert (=> b!4818864 (= res!2050335 (and ((_ is Cons!54841) (toList!7391 lm!2280)) (= (_1!32276 (h!61275 (toList!7391 lm!2280))) lt!1968467)))))

(declare-fun b!4818865 () Bool)

(declare-fun res!2050338 () Bool)

(assert (=> b!4818865 (=> (not res!2050338) (not e!3010767))))

(declare-fun allKeysSameHashInMap!2524 (ListLongMap!5879 Hashable!7208) Bool)

(assert (=> b!4818865 (= res!2050338 (allKeysSameHashInMap!2524 lm!2280 hashF!1509))))

(assert (= (and start!499082 res!2050339) b!4818865))

(assert (= (and b!4818865 res!2050338) b!4818861))

(assert (= (and b!4818861 res!2050336) b!4818860))

(assert (= (and b!4818860 res!2050337) b!4818864))

(assert (= (and b!4818864 res!2050335) b!4818863))

(assert (= start!499082 b!4818862))

(declare-fun m!5805778 () Bool)

(assert (=> b!4818861 m!5805778))

(declare-fun m!5805780 () Bool)

(assert (=> b!4818861 m!5805780))

(declare-fun m!5805782 () Bool)

(assert (=> b!4818860 m!5805782))

(assert (=> b!4818860 m!5805782))

(declare-fun m!5805784 () Bool)

(assert (=> b!4818860 m!5805784))

(declare-fun m!5805786 () Bool)

(assert (=> b!4818865 m!5805786))

(declare-fun m!5805788 () Bool)

(assert (=> b!4818863 m!5805788))

(declare-fun m!5805790 () Bool)

(assert (=> b!4818863 m!5805790))

(declare-fun m!5805792 () Bool)

(assert (=> b!4818863 m!5805792))

(declare-fun m!5805794 () Bool)

(assert (=> b!4818863 m!5805794))

(declare-fun m!5805796 () Bool)

(assert (=> b!4818863 m!5805796))

(assert (=> b!4818863 m!5805788))

(declare-fun m!5805798 () Bool)

(assert (=> b!4818863 m!5805798))

(declare-fun m!5805800 () Bool)

(assert (=> start!499082 m!5805800))

(declare-fun m!5805802 () Bool)

(assert (=> start!499082 m!5805802))

(check-sat (not b!4818861) (not b!4818865) (not b!4818860) (not start!499082) (not b!4818862) (not b!4818863) tp_is_empty!34301)
(check-sat)
