; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!457204 () Bool)

(assert start!457204)

(declare-fun b!4590480 () Bool)

(declare-fun res!1918983 () Bool)

(declare-fun e!2863006 () Bool)

(assert (=> b!4590480 (=> (not res!1918983) (not e!2863006))))

(declare-datatypes ((K!12365 0))(
  ( (K!12366 (val!18163 Int)) )
))
(declare-datatypes ((V!12611 0))(
  ( (V!12612 (val!18164 Int)) )
))
(declare-datatypes ((tuple2!51594 0))(
  ( (tuple2!51595 (_1!29091 K!12365) (_2!29091 V!12611)) )
))
(declare-datatypes ((List!51120 0))(
  ( (Nil!50996) (Cons!50996 (h!56942 tuple2!51594) (t!358114 List!51120)) )
))
(declare-datatypes ((tuple2!51596 0))(
  ( (tuple2!51597 (_1!29092 (_ BitVec 64)) (_2!29092 List!51120)) )
))
(declare-datatypes ((List!51121 0))(
  ( (Nil!50997) (Cons!50997 (h!56943 tuple2!51596) (t!358115 List!51121)) )
))
(declare-datatypes ((ListLongMap!3219 0))(
  ( (ListLongMap!3220 (toList!4587 List!51121)) )
))
(declare-fun lm!1477 () ListLongMap!3219)

(declare-datatypes ((Hashable!5685 0))(
  ( (HashableExt!5684 (__x!31388 Int)) )
))
(declare-fun hashF!1107 () Hashable!5685)

(declare-fun allKeysSameHashInMap!1397 (ListLongMap!3219 Hashable!5685) Bool)

(assert (=> b!4590480 (= res!1918983 (allKeysSameHashInMap!1397 lm!1477 hashF!1107))))

(declare-fun b!4590481 () Bool)

(declare-fun res!1918980 () Bool)

(assert (=> b!4590481 (=> (not res!1918980) (not e!2863006))))

(declare-fun key!3287 () K!12365)

(declare-datatypes ((ListMap!3849 0))(
  ( (ListMap!3850 (toList!4588 List!51120)) )
))
(declare-fun contains!13907 (ListMap!3849 K!12365) Bool)

(declare-fun extractMap!1346 (List!51121) ListMap!3849)

(assert (=> b!4590481 (= res!1918980 (contains!13907 (extractMap!1346 (toList!4587 lm!1477)) key!3287))))

(declare-fun b!4590482 () Bool)

(declare-fun e!2863007 () Bool)

(assert (=> b!4590482 (= e!2863006 e!2863007)))

(declare-fun res!1918984 () Bool)

(assert (=> b!4590482 (=> (not res!1918984) (not e!2863007))))

(declare-fun lt!1752935 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4590482 (= res!1918984 (= lt!1752935 hash!344))))

(declare-fun hash!3157 (Hashable!5685 K!12365) (_ BitVec 64))

(assert (=> b!4590482 (= lt!1752935 (hash!3157 hashF!1107 key!3287))))

(declare-fun b!4590483 () Bool)

(declare-fun res!1918982 () Bool)

(declare-fun e!2863008 () Bool)

(assert (=> b!4590483 (=> res!1918982 e!2863008)))

(declare-fun containsKey!2086 (List!51120 K!12365) Bool)

(assert (=> b!4590483 (= res!1918982 (containsKey!2086 (_2!29092 (h!56943 (toList!4587 lm!1477))) key!3287))))

(declare-fun e!2863009 () Bool)

(declare-fun tp!1339997 () Bool)

(declare-fun tp_is_empty!28437 () Bool)

(declare-fun tp_is_empty!28439 () Bool)

(declare-fun b!4590484 () Bool)

(assert (=> b!4590484 (= e!2863009 (and tp_is_empty!28437 tp_is_empty!28439 tp!1339997))))

(declare-fun b!4590485 () Bool)

(declare-fun res!1918977 () Bool)

(assert (=> b!4590485 (=> res!1918977 e!2863008)))

(get-info :version)

(assert (=> b!4590485 (= res!1918977 (or ((_ is Nil!50997) (toList!4587 lm!1477)) (not (= (_1!29092 (h!56943 (toList!4587 lm!1477))) hash!344))))))

(declare-fun b!4590487 () Bool)

(assert (=> b!4590487 (= e!2863007 (not e!2863008))))

(declare-fun res!1918978 () Bool)

(assert (=> b!4590487 (=> res!1918978 e!2863008)))

(declare-fun lt!1752939 () List!51120)

(declare-fun newBucket!178 () List!51120)

(declare-fun removePairForKey!911 (List!51120 K!12365) List!51120)

(assert (=> b!4590487 (= res!1918978 (not (= newBucket!178 (removePairForKey!911 lt!1752939 key!3287))))))

(declare-datatypes ((Unit!107394 0))(
  ( (Unit!107395) )
))
(declare-fun lt!1752936 () Unit!107394)

(declare-fun lt!1752934 () tuple2!51596)

(declare-fun lambda!184670 () Int)

(declare-fun forallContained!2791 (List!51121 Int tuple2!51596) Unit!107394)

(assert (=> b!4590487 (= lt!1752936 (forallContained!2791 (toList!4587 lm!1477) lambda!184670 lt!1752934))))

(declare-fun contains!13908 (List!51121 tuple2!51596) Bool)

(assert (=> b!4590487 (contains!13908 (toList!4587 lm!1477) lt!1752934)))

(assert (=> b!4590487 (= lt!1752934 (tuple2!51597 hash!344 lt!1752939))))

(declare-fun lt!1752938 () Unit!107394)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!796 (List!51121 (_ BitVec 64) List!51120) Unit!107394)

(assert (=> b!4590487 (= lt!1752938 (lemmaGetValueByKeyImpliesContainsTuple!796 (toList!4587 lm!1477) hash!344 lt!1752939))))

(declare-fun apply!12023 (ListLongMap!3219 (_ BitVec 64)) List!51120)

(assert (=> b!4590487 (= lt!1752939 (apply!12023 lm!1477 hash!344))))

(declare-fun contains!13909 (ListLongMap!3219 (_ BitVec 64)) Bool)

(assert (=> b!4590487 (contains!13909 lm!1477 lt!1752935)))

(declare-fun lt!1752937 () Unit!107394)

(declare-fun lemmaInGenMapThenLongMapContainsHash!360 (ListLongMap!3219 K!12365 Hashable!5685) Unit!107394)

(assert (=> b!4590487 (= lt!1752937 (lemmaInGenMapThenLongMapContainsHash!360 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4590488 () Bool)

(declare-fun e!2863010 () Bool)

(declare-fun tp!1339996 () Bool)

(assert (=> b!4590488 (= e!2863010 tp!1339996)))

(declare-fun b!4590489 () Bool)

(declare-fun res!1918979 () Bool)

(assert (=> b!4590489 (=> res!1918979 e!2863008)))

(declare-fun noDuplicateKeys!1286 (List!51120) Bool)

(assert (=> b!4590489 (= res!1918979 (not (noDuplicateKeys!1286 newBucket!178)))))

(declare-fun b!4590490 () Bool)

(declare-fun forall!10534 (List!51121 Int) Bool)

(assert (=> b!4590490 (= e!2863008 (forall!10534 (toList!4587 lm!1477) lambda!184670))))

(declare-fun b!4590486 () Bool)

(declare-fun res!1918976 () Bool)

(assert (=> b!4590486 (=> (not res!1918976) (not e!2863007))))

(declare-fun allKeysSameHash!1142 (List!51120 (_ BitVec 64) Hashable!5685) Bool)

(assert (=> b!4590486 (= res!1918976 (allKeysSameHash!1142 newBucket!178 hash!344 hashF!1107))))

(declare-fun res!1918981 () Bool)

(assert (=> start!457204 (=> (not res!1918981) (not e!2863006))))

(assert (=> start!457204 (= res!1918981 (forall!10534 (toList!4587 lm!1477) lambda!184670))))

(assert (=> start!457204 e!2863006))

(assert (=> start!457204 true))

(declare-fun inv!66549 (ListLongMap!3219) Bool)

(assert (=> start!457204 (and (inv!66549 lm!1477) e!2863010)))

(assert (=> start!457204 tp_is_empty!28437))

(assert (=> start!457204 e!2863009))

(assert (= (and start!457204 res!1918981) b!4590480))

(assert (= (and b!4590480 res!1918983) b!4590481))

(assert (= (and b!4590481 res!1918980) b!4590482))

(assert (= (and b!4590482 res!1918984) b!4590486))

(assert (= (and b!4590486 res!1918976) b!4590487))

(assert (= (and b!4590487 (not res!1918978)) b!4590489))

(assert (= (and b!4590489 (not res!1918979)) b!4590485))

(assert (= (and b!4590485 (not res!1918977)) b!4590483))

(assert (= (and b!4590483 (not res!1918982)) b!4590490))

(assert (= start!457204 b!4590488))

(assert (= (and start!457204 ((_ is Cons!50996) newBucket!178)) b!4590484))

(declare-fun m!5413739 () Bool)

(assert (=> b!4590481 m!5413739))

(assert (=> b!4590481 m!5413739))

(declare-fun m!5413741 () Bool)

(assert (=> b!4590481 m!5413741))

(declare-fun m!5413743 () Bool)

(assert (=> b!4590490 m!5413743))

(declare-fun m!5413745 () Bool)

(assert (=> b!4590483 m!5413745))

(declare-fun m!5413747 () Bool)

(assert (=> b!4590487 m!5413747))

(declare-fun m!5413749 () Bool)

(assert (=> b!4590487 m!5413749))

(declare-fun m!5413751 () Bool)

(assert (=> b!4590487 m!5413751))

(declare-fun m!5413753 () Bool)

(assert (=> b!4590487 m!5413753))

(declare-fun m!5413755 () Bool)

(assert (=> b!4590487 m!5413755))

(declare-fun m!5413757 () Bool)

(assert (=> b!4590487 m!5413757))

(declare-fun m!5413759 () Bool)

(assert (=> b!4590487 m!5413759))

(declare-fun m!5413761 () Bool)

(assert (=> b!4590480 m!5413761))

(declare-fun m!5413763 () Bool)

(assert (=> b!4590486 m!5413763))

(declare-fun m!5413765 () Bool)

(assert (=> b!4590489 m!5413765))

(assert (=> start!457204 m!5413743))

(declare-fun m!5413767 () Bool)

(assert (=> start!457204 m!5413767))

(declare-fun m!5413769 () Bool)

(assert (=> b!4590482 m!5413769))

(check-sat (not b!4590490) (not b!4590480) tp_is_empty!28439 (not b!4590488) (not b!4590483) (not b!4590489) (not start!457204) (not b!4590481) (not b!4590487) (not b!4590484) (not b!4590482) tp_is_empty!28437 (not b!4590486))
(check-sat)
