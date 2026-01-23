; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!441348 () Bool)

(assert start!441348)

(declare-fun b!4483697 () Bool)

(declare-fun e!2792552 () Bool)

(declare-fun e!2792553 () Bool)

(assert (=> b!4483697 (= e!2792552 (not e!2792553))))

(declare-fun res!1862016 () Bool)

(assert (=> b!4483697 (=> res!1862016 e!2792553)))

(declare-datatypes ((K!11830 0))(
  ( (K!11831 (val!17735 Int)) )
))
(declare-fun key!3287 () K!11830)

(declare-datatypes ((V!12076 0))(
  ( (V!12077 (val!17736 Int)) )
))
(declare-datatypes ((tuple2!50738 0))(
  ( (tuple2!50739 (_1!28663 K!11830) (_2!28663 V!12076)) )
))
(declare-datatypes ((List!50542 0))(
  ( (Nil!50418) (Cons!50418 (h!56211 tuple2!50738) (t!357496 List!50542)) )
))
(declare-fun lt!1669864 () List!50542)

(declare-fun newBucket!178 () List!50542)

(declare-fun removePairForKey!703 (List!50542 K!11830) List!50542)

(assert (=> b!4483697 (= res!1862016 (not (= newBucket!178 (removePairForKey!703 lt!1669864 key!3287))))))

(declare-fun lambda!165977 () Int)

(declare-datatypes ((tuple2!50740 0))(
  ( (tuple2!50741 (_1!28664 (_ BitVec 64)) (_2!28664 List!50542)) )
))
(declare-datatypes ((List!50543 0))(
  ( (Nil!50419) (Cons!50419 (h!56212 tuple2!50740) (t!357497 List!50543)) )
))
(declare-datatypes ((ListLongMap!2791 0))(
  ( (ListLongMap!2792 (toList!4159 List!50543)) )
))
(declare-fun lm!1477 () ListLongMap!2791)

(declare-datatypes ((Unit!89975 0))(
  ( (Unit!89976) )
))
(declare-fun lt!1669865 () Unit!89975)

(declare-fun lt!1669862 () tuple2!50740)

(declare-fun forallContained!2343 (List!50543 Int tuple2!50740) Unit!89975)

(assert (=> b!4483697 (= lt!1669865 (forallContained!2343 (toList!4159 lm!1477) lambda!165977 lt!1669862))))

(declare-fun contains!13027 (List!50543 tuple2!50740) Bool)

(assert (=> b!4483697 (contains!13027 (toList!4159 lm!1477) lt!1669862)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4483697 (= lt!1669862 (tuple2!50741 hash!344 lt!1669864))))

(declare-fun lt!1669866 () Unit!89975)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!588 (List!50543 (_ BitVec 64) List!50542) Unit!89975)

(assert (=> b!4483697 (= lt!1669866 (lemmaGetValueByKeyImpliesContainsTuple!588 (toList!4159 lm!1477) hash!344 lt!1669864))))

(declare-fun apply!11813 (ListLongMap!2791 (_ BitVec 64)) List!50542)

(assert (=> b!4483697 (= lt!1669864 (apply!11813 lm!1477 hash!344))))

(declare-fun lt!1669863 () (_ BitVec 64))

(declare-fun contains!13028 (ListLongMap!2791 (_ BitVec 64)) Bool)

(assert (=> b!4483697 (contains!13028 lm!1477 lt!1669863)))

(declare-datatypes ((Hashable!5471 0))(
  ( (HashableExt!5470 (__x!31174 Int)) )
))
(declare-fun hashF!1107 () Hashable!5471)

(declare-fun lt!1669861 () Unit!89975)

(declare-fun lemmaInGenMapThenLongMapContainsHash!150 (ListLongMap!2791 K!11830 Hashable!5471) Unit!89975)

(assert (=> b!4483697 (= lt!1669861 (lemmaInGenMapThenLongMapContainsHash!150 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4483698 () Bool)

(declare-fun e!2792555 () Bool)

(assert (=> b!4483698 (= e!2792555 e!2792552)))

(declare-fun res!1862005 () Bool)

(assert (=> b!4483698 (=> (not res!1862005) (not e!2792552))))

(assert (=> b!4483698 (= res!1862005 (= lt!1669863 hash!344))))

(declare-fun hash!2579 (Hashable!5471 K!11830) (_ BitVec 64))

(assert (=> b!4483698 (= lt!1669863 (hash!2579 hashF!1107 key!3287))))

(declare-fun b!4483699 () Bool)

(declare-fun res!1862014 () Bool)

(declare-fun e!2792556 () Bool)

(assert (=> b!4483699 (=> res!1862014 e!2792556)))

(assert (=> b!4483699 (= res!1862014 (not (contains!13027 (t!357497 (toList!4159 lm!1477)) lt!1669862)))))

(declare-fun b!4483701 () Bool)

(declare-fun res!1862017 () Bool)

(assert (=> b!4483701 (=> res!1862017 e!2792556)))

(declare-fun containsKey!1576 (List!50542 K!11830) Bool)

(assert (=> b!4483701 (= res!1862017 (containsKey!1576 lt!1669864 key!3287))))

(declare-fun b!4483702 () Bool)

(declare-fun res!1862010 () Bool)

(assert (=> b!4483702 (=> (not res!1862010) (not e!2792555))))

(declare-fun allKeysSameHashInMap!1183 (ListLongMap!2791 Hashable!5471) Bool)

(assert (=> b!4483702 (= res!1862010 (allKeysSameHashInMap!1183 lm!1477 hashF!1107))))

(declare-fun e!2792554 () Bool)

(declare-fun b!4483703 () Bool)

(declare-fun tp_is_empty!27581 () Bool)

(declare-fun tp!1336865 () Bool)

(declare-fun tp_is_empty!27583 () Bool)

(assert (=> b!4483703 (= e!2792554 (and tp_is_empty!27581 tp_is_empty!27583 tp!1336865))))

(declare-fun b!4483704 () Bool)

(declare-fun res!1862018 () Bool)

(assert (=> b!4483704 (=> res!1862018 e!2792556)))

(declare-fun lt!1669860 () ListLongMap!2791)

(assert (=> b!4483704 (= res!1862018 (not (= (apply!11813 lt!1669860 hash!344) lt!1669864)))))

(declare-fun b!4483705 () Bool)

(assert (=> b!4483705 (= e!2792556 true)))

(declare-fun b!4483706 () Bool)

(declare-fun res!1862015 () Bool)

(assert (=> b!4483706 (=> (not res!1862015) (not e!2792555))))

(declare-datatypes ((ListMap!3421 0))(
  ( (ListMap!3422 (toList!4160 List!50542)) )
))
(declare-fun contains!13029 (ListMap!3421 K!11830) Bool)

(declare-fun extractMap!1132 (List!50543) ListMap!3421)

(assert (=> b!4483706 (= res!1862015 (contains!13029 (extractMap!1132 (toList!4159 lm!1477)) key!3287))))

(declare-fun b!4483700 () Bool)

(declare-fun res!1862006 () Bool)

(assert (=> b!4483700 (=> res!1862006 e!2792553)))

(get-info :version)

(assert (=> b!4483700 (= res!1862006 (or ((_ is Nil!50419) (toList!4159 lm!1477)) (= (_1!28664 (h!56212 (toList!4159 lm!1477))) hash!344)))))

(declare-fun res!1862007 () Bool)

(assert (=> start!441348 (=> (not res!1862007) (not e!2792555))))

(declare-fun forall!10082 (List!50543 Int) Bool)

(assert (=> start!441348 (= res!1862007 (forall!10082 (toList!4159 lm!1477) lambda!165977))))

(assert (=> start!441348 e!2792555))

(assert (=> start!441348 true))

(declare-fun e!2792557 () Bool)

(declare-fun inv!66014 (ListLongMap!2791) Bool)

(assert (=> start!441348 (and (inv!66014 lm!1477) e!2792557)))

(assert (=> start!441348 tp_is_empty!27581))

(assert (=> start!441348 e!2792554))

(declare-fun b!4483707 () Bool)

(declare-fun res!1862012 () Bool)

(assert (=> b!4483707 (=> res!1862012 e!2792556)))

(assert (=> b!4483707 (= res!1862012 (containsKey!1576 (apply!11813 lm!1477 lt!1669863) key!3287))))

(declare-fun b!4483708 () Bool)

(assert (=> b!4483708 (= e!2792553 e!2792556)))

(declare-fun res!1862013 () Bool)

(assert (=> b!4483708 (=> res!1862013 e!2792556)))

(assert (=> b!4483708 (= res!1862013 (not (contains!13028 lt!1669860 hash!344)))))

(declare-fun tail!7591 (ListLongMap!2791) ListLongMap!2791)

(assert (=> b!4483708 (= lt!1669860 (tail!7591 lm!1477))))

(declare-fun b!4483709 () Bool)

(declare-fun tp!1336864 () Bool)

(assert (=> b!4483709 (= e!2792557 tp!1336864)))

(declare-fun b!4483710 () Bool)

(declare-fun res!1862009 () Bool)

(assert (=> b!4483710 (=> (not res!1862009) (not e!2792552))))

(declare-fun allKeysSameHash!930 (List!50542 (_ BitVec 64) Hashable!5471) Bool)

(assert (=> b!4483710 (= res!1862009 (allKeysSameHash!930 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4483711 () Bool)

(declare-fun res!1862011 () Bool)

(assert (=> b!4483711 (=> res!1862011 e!2792556)))

(assert (=> b!4483711 (= res!1862011 (not (forall!10082 (toList!4159 lm!1477) lambda!165977)))))

(declare-fun b!4483712 () Bool)

(declare-fun res!1862008 () Bool)

(assert (=> b!4483712 (=> res!1862008 e!2792553)))

(declare-fun noDuplicateKeys!1076 (List!50542) Bool)

(assert (=> b!4483712 (= res!1862008 (not (noDuplicateKeys!1076 newBucket!178)))))

(assert (= (and start!441348 res!1862007) b!4483702))

(assert (= (and b!4483702 res!1862010) b!4483706))

(assert (= (and b!4483706 res!1862015) b!4483698))

(assert (= (and b!4483698 res!1862005) b!4483710))

(assert (= (and b!4483710 res!1862009) b!4483697))

(assert (= (and b!4483697 (not res!1862016)) b!4483712))

(assert (= (and b!4483712 (not res!1862008)) b!4483700))

(assert (= (and b!4483700 (not res!1862006)) b!4483708))

(assert (= (and b!4483708 (not res!1862013)) b!4483704))

(assert (= (and b!4483704 (not res!1862018)) b!4483699))

(assert (= (and b!4483699 (not res!1862014)) b!4483701))

(assert (= (and b!4483701 (not res!1862017)) b!4483711))

(assert (= (and b!4483711 (not res!1862011)) b!4483707))

(assert (= (and b!4483707 (not res!1862012)) b!4483705))

(assert (= start!441348 b!4483709))

(assert (= (and start!441348 ((_ is Cons!50418) newBucket!178)) b!4483703))

(declare-fun m!5204231 () Bool)

(assert (=> start!441348 m!5204231))

(declare-fun m!5204233 () Bool)

(assert (=> start!441348 m!5204233))

(assert (=> b!4483711 m!5204231))

(declare-fun m!5204235 () Bool)

(assert (=> b!4483706 m!5204235))

(assert (=> b!4483706 m!5204235))

(declare-fun m!5204237 () Bool)

(assert (=> b!4483706 m!5204237))

(declare-fun m!5204239 () Bool)

(assert (=> b!4483712 m!5204239))

(declare-fun m!5204241 () Bool)

(assert (=> b!4483707 m!5204241))

(assert (=> b!4483707 m!5204241))

(declare-fun m!5204243 () Bool)

(assert (=> b!4483707 m!5204243))

(declare-fun m!5204245 () Bool)

(assert (=> b!4483702 m!5204245))

(declare-fun m!5204247 () Bool)

(assert (=> b!4483698 m!5204247))

(declare-fun m!5204249 () Bool)

(assert (=> b!4483710 m!5204249))

(declare-fun m!5204251 () Bool)

(assert (=> b!4483699 m!5204251))

(declare-fun m!5204253 () Bool)

(assert (=> b!4483708 m!5204253))

(declare-fun m!5204255 () Bool)

(assert (=> b!4483708 m!5204255))

(declare-fun m!5204257 () Bool)

(assert (=> b!4483697 m!5204257))

(declare-fun m!5204259 () Bool)

(assert (=> b!4483697 m!5204259))

(declare-fun m!5204261 () Bool)

(assert (=> b!4483697 m!5204261))

(declare-fun m!5204263 () Bool)

(assert (=> b!4483697 m!5204263))

(declare-fun m!5204265 () Bool)

(assert (=> b!4483697 m!5204265))

(declare-fun m!5204267 () Bool)

(assert (=> b!4483697 m!5204267))

(declare-fun m!5204269 () Bool)

(assert (=> b!4483697 m!5204269))

(declare-fun m!5204271 () Bool)

(assert (=> b!4483701 m!5204271))

(declare-fun m!5204273 () Bool)

(assert (=> b!4483704 m!5204273))

(check-sat (not start!441348) (not b!4483697) (not b!4483711) tp_is_empty!27583 (not b!4483702) (not b!4483701) (not b!4483708) (not b!4483699) (not b!4483707) (not b!4483706) (not b!4483703) (not b!4483704) (not b!4483709) (not b!4483710) (not b!4483712) tp_is_empty!27581 (not b!4483698))
(check-sat)
