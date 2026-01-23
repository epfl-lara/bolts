; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!457208 () Bool)

(assert start!457208)

(declare-fun res!1919030 () Bool)

(declare-fun e!2863036 () Bool)

(assert (=> start!457208 (=> (not res!1919030) (not e!2863036))))

(declare-datatypes ((K!12370 0))(
  ( (K!12371 (val!18167 Int)) )
))
(declare-datatypes ((V!12616 0))(
  ( (V!12617 (val!18168 Int)) )
))
(declare-datatypes ((tuple2!51602 0))(
  ( (tuple2!51603 (_1!29095 K!12370) (_2!29095 V!12616)) )
))
(declare-datatypes ((List!51124 0))(
  ( (Nil!51000) (Cons!51000 (h!56946 tuple2!51602) (t!358118 List!51124)) )
))
(declare-datatypes ((tuple2!51604 0))(
  ( (tuple2!51605 (_1!29096 (_ BitVec 64)) (_2!29096 List!51124)) )
))
(declare-datatypes ((List!51125 0))(
  ( (Nil!51001) (Cons!51001 (h!56947 tuple2!51604) (t!358119 List!51125)) )
))
(declare-datatypes ((ListLongMap!3223 0))(
  ( (ListLongMap!3224 (toList!4591 List!51125)) )
))
(declare-fun lm!1477 () ListLongMap!3223)

(declare-fun lambda!184680 () Int)

(declare-fun forall!10536 (List!51125 Int) Bool)

(assert (=> start!457208 (= res!1919030 (forall!10536 (toList!4591 lm!1477) lambda!184680))))

(assert (=> start!457208 e!2863036))

(assert (=> start!457208 true))

(declare-fun e!2863039 () Bool)

(declare-fun inv!66554 (ListLongMap!3223) Bool)

(assert (=> start!457208 (and (inv!66554 lm!1477) e!2863039)))

(declare-fun tp_is_empty!28445 () Bool)

(assert (=> start!457208 tp_is_empty!28445))

(declare-fun e!2863040 () Bool)

(assert (=> start!457208 e!2863040))

(declare-fun b!4590546 () Bool)

(declare-fun tp!1340008 () Bool)

(assert (=> b!4590546 (= e!2863039 tp!1340008)))

(declare-fun b!4590547 () Bool)

(declare-fun res!1919035 () Bool)

(assert (=> b!4590547 (=> (not res!1919035) (not e!2863036))))

(declare-datatypes ((Hashable!5687 0))(
  ( (HashableExt!5686 (__x!31390 Int)) )
))
(declare-fun hashF!1107 () Hashable!5687)

(declare-fun allKeysSameHashInMap!1399 (ListLongMap!3223 Hashable!5687) Bool)

(assert (=> b!4590547 (= res!1919035 (allKeysSameHashInMap!1399 lm!1477 hashF!1107))))

(declare-fun b!4590548 () Bool)

(declare-fun res!1919031 () Bool)

(declare-fun e!2863037 () Bool)

(assert (=> b!4590548 (=> (not res!1919031) (not e!2863037))))

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun newBucket!178 () List!51124)

(declare-fun allKeysSameHash!1144 (List!51124 (_ BitVec 64) Hashable!5687) Bool)

(assert (=> b!4590548 (= res!1919031 (allKeysSameHash!1144 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4590549 () Bool)

(declare-fun e!2863038 () Bool)

(assert (=> b!4590549 (= e!2863038 true)))

(declare-fun b!4590550 () Bool)

(assert (=> b!4590550 (= e!2863036 e!2863037)))

(declare-fun res!1919034 () Bool)

(assert (=> b!4590550 (=> (not res!1919034) (not e!2863037))))

(declare-fun lt!1752975 () (_ BitVec 64))

(assert (=> b!4590550 (= res!1919034 (= lt!1752975 hash!344))))

(declare-fun key!3287 () K!12370)

(declare-fun hash!3159 (Hashable!5687 K!12370) (_ BitVec 64))

(assert (=> b!4590550 (= lt!1752975 (hash!3159 hashF!1107 key!3287))))

(declare-fun b!4590551 () Bool)

(declare-fun res!1919032 () Bool)

(assert (=> b!4590551 (=> res!1919032 e!2863038)))

(declare-fun containsKey!2088 (List!51124 K!12370) Bool)

(assert (=> b!4590551 (= res!1919032 (containsKey!2088 (_2!29096 (h!56947 (toList!4591 lm!1477))) key!3287))))

(declare-fun tp_is_empty!28447 () Bool)

(declare-fun tp!1340009 () Bool)

(declare-fun b!4590552 () Bool)

(assert (=> b!4590552 (= e!2863040 (and tp_is_empty!28445 tp_is_empty!28447 tp!1340009))))

(declare-fun b!4590553 () Bool)

(declare-fun res!1919037 () Bool)

(assert (=> b!4590553 (=> res!1919037 e!2863038)))

(get-info :version)

(assert (=> b!4590553 (= res!1919037 (or ((_ is Nil!51001) (toList!4591 lm!1477)) (not (= (_1!29096 (h!56947 (toList!4591 lm!1477))) hash!344))))))

(declare-fun b!4590554 () Bool)

(declare-fun res!1919033 () Bool)

(assert (=> b!4590554 (=> (not res!1919033) (not e!2863036))))

(declare-datatypes ((ListMap!3853 0))(
  ( (ListMap!3854 (toList!4592 List!51124)) )
))
(declare-fun contains!13913 (ListMap!3853 K!12370) Bool)

(declare-fun extractMap!1348 (List!51125) ListMap!3853)

(assert (=> b!4590554 (= res!1919033 (contains!13913 (extractMap!1348 (toList!4591 lm!1477)) key!3287))))

(declare-fun b!4590555 () Bool)

(assert (=> b!4590555 (= e!2863037 (not e!2863038))))

(declare-fun res!1919036 () Bool)

(assert (=> b!4590555 (=> res!1919036 e!2863038)))

(declare-fun lt!1752973 () List!51124)

(declare-fun removePairForKey!913 (List!51124 K!12370) List!51124)

(assert (=> b!4590555 (= res!1919036 (not (= newBucket!178 (removePairForKey!913 lt!1752973 key!3287))))))

(declare-datatypes ((Unit!107398 0))(
  ( (Unit!107399) )
))
(declare-fun lt!1752972 () Unit!107398)

(declare-fun lt!1752971 () tuple2!51604)

(declare-fun forallContained!2793 (List!51125 Int tuple2!51604) Unit!107398)

(assert (=> b!4590555 (= lt!1752972 (forallContained!2793 (toList!4591 lm!1477) lambda!184680 lt!1752971))))

(declare-fun contains!13914 (List!51125 tuple2!51604) Bool)

(assert (=> b!4590555 (contains!13914 (toList!4591 lm!1477) lt!1752971)))

(assert (=> b!4590555 (= lt!1752971 (tuple2!51605 hash!344 lt!1752973))))

(declare-fun lt!1752974 () Unit!107398)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!798 (List!51125 (_ BitVec 64) List!51124) Unit!107398)

(assert (=> b!4590555 (= lt!1752974 (lemmaGetValueByKeyImpliesContainsTuple!798 (toList!4591 lm!1477) hash!344 lt!1752973))))

(declare-fun apply!12025 (ListLongMap!3223 (_ BitVec 64)) List!51124)

(assert (=> b!4590555 (= lt!1752973 (apply!12025 lm!1477 hash!344))))

(declare-fun contains!13915 (ListLongMap!3223 (_ BitVec 64)) Bool)

(assert (=> b!4590555 (contains!13915 lm!1477 lt!1752975)))

(declare-fun lt!1752970 () Unit!107398)

(declare-fun lemmaInGenMapThenLongMapContainsHash!362 (ListLongMap!3223 K!12370 Hashable!5687) Unit!107398)

(assert (=> b!4590555 (= lt!1752970 (lemmaInGenMapThenLongMapContainsHash!362 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4590556 () Bool)

(declare-fun res!1919038 () Bool)

(assert (=> b!4590556 (=> res!1919038 e!2863038)))

(declare-fun noDuplicateKeys!1288 (List!51124) Bool)

(assert (=> b!4590556 (= res!1919038 (not (noDuplicateKeys!1288 newBucket!178)))))

(assert (= (and start!457208 res!1919030) b!4590547))

(assert (= (and b!4590547 res!1919035) b!4590554))

(assert (= (and b!4590554 res!1919033) b!4590550))

(assert (= (and b!4590550 res!1919034) b!4590548))

(assert (= (and b!4590548 res!1919031) b!4590555))

(assert (= (and b!4590555 (not res!1919036)) b!4590556))

(assert (= (and b!4590556 (not res!1919038)) b!4590553))

(assert (= (and b!4590553 (not res!1919037)) b!4590551))

(assert (= (and b!4590551 (not res!1919032)) b!4590549))

(assert (= start!457208 b!4590546))

(assert (= (and start!457208 ((_ is Cons!51000) newBucket!178)) b!4590552))

(declare-fun m!5413803 () Bool)

(assert (=> b!4590548 m!5413803))

(declare-fun m!5413805 () Bool)

(assert (=> b!4590551 m!5413805))

(declare-fun m!5413807 () Bool)

(assert (=> b!4590556 m!5413807))

(declare-fun m!5413809 () Bool)

(assert (=> b!4590555 m!5413809))

(declare-fun m!5413811 () Bool)

(assert (=> b!4590555 m!5413811))

(declare-fun m!5413813 () Bool)

(assert (=> b!4590555 m!5413813))

(declare-fun m!5413815 () Bool)

(assert (=> b!4590555 m!5413815))

(declare-fun m!5413817 () Bool)

(assert (=> b!4590555 m!5413817))

(declare-fun m!5413819 () Bool)

(assert (=> b!4590555 m!5413819))

(declare-fun m!5413821 () Bool)

(assert (=> b!4590555 m!5413821))

(declare-fun m!5413823 () Bool)

(assert (=> start!457208 m!5413823))

(declare-fun m!5413825 () Bool)

(assert (=> start!457208 m!5413825))

(declare-fun m!5413827 () Bool)

(assert (=> b!4590554 m!5413827))

(assert (=> b!4590554 m!5413827))

(declare-fun m!5413829 () Bool)

(assert (=> b!4590554 m!5413829))

(declare-fun m!5413831 () Bool)

(assert (=> b!4590550 m!5413831))

(declare-fun m!5413833 () Bool)

(assert (=> b!4590547 m!5413833))

(check-sat tp_is_empty!28447 (not b!4590551) (not b!4590547) (not b!4590554) (not b!4590552) tp_is_empty!28445 (not start!457208) (not b!4590556) (not b!4590546) (not b!4590555) (not b!4590550) (not b!4590548))
(check-sat)
