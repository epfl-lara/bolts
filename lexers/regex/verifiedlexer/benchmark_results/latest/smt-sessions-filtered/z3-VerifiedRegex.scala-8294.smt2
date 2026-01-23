; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!430420 () Bool)

(assert start!430420)

(declare-fun b!4418645 () Bool)

(declare-fun res!1825878 () Bool)

(declare-fun e!2751319 () Bool)

(assert (=> b!4418645 (=> (not res!1825878) (not e!2751319))))

(declare-datatypes ((K!10875 0))(
  ( (K!10876 (val!16971 Int)) )
))
(declare-datatypes ((V!11121 0))(
  ( (V!11122 (val!16972 Int)) )
))
(declare-datatypes ((tuple2!49262 0))(
  ( (tuple2!49263 (_1!27925 K!10875) (_2!27925 V!11121)) )
))
(declare-datatypes ((List!49632 0))(
  ( (Nil!49508) (Cons!49508 (h!55175 tuple2!49262) (t!356570 List!49632)) )
))
(declare-fun newBucket!194 () List!49632)

(declare-datatypes ((Hashable!5115 0))(
  ( (HashableExt!5114 (__x!30818 Int)) )
))
(declare-fun hashF!1220 () Hashable!5115)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun allKeysSameHash!681 (List!49632 (_ BitVec 64) Hashable!5115) Bool)

(assert (=> b!4418645 (= res!1825878 (allKeysSameHash!681 newBucket!194 hash!366 hashF!1220))))

(declare-fun newValue!93 () V!11121)

(declare-fun key!3717 () K!10875)

(declare-fun e!2751321 () Bool)

(declare-fun b!4418646 () Bool)

(declare-fun lt!1619490 () Bool)

(assert (=> b!4418646 (= e!2751321 (and (not lt!1619490) (= newBucket!194 (Cons!49508 (tuple2!49263 key!3717 newValue!93) Nil!49508))))))

(declare-fun b!4418647 () Bool)

(declare-fun res!1825867 () Bool)

(declare-fun e!2751314 () Bool)

(assert (=> b!4418647 (=> (not res!1825867) (not e!2751314))))

(declare-datatypes ((tuple2!49264 0))(
  ( (tuple2!49265 (_1!27926 (_ BitVec 64)) (_2!27926 List!49632)) )
))
(declare-datatypes ((List!49633 0))(
  ( (Nil!49509) (Cons!49509 (h!55176 tuple2!49264) (t!356571 List!49633)) )
))
(declare-datatypes ((ListLongMap!2079 0))(
  ( (ListLongMap!2080 (toList!3429 List!49633)) )
))
(declare-fun lm!1616 () ListLongMap!2079)

(declare-fun lambda!152548 () Int)

(declare-fun forall!9511 (List!49633 Int) Bool)

(assert (=> b!4418647 (= res!1825867 (forall!9511 (toList!3429 lm!1616) lambda!152548))))

(declare-fun res!1825877 () Bool)

(assert (=> start!430420 (=> (not res!1825877) (not e!2751319))))

(assert (=> start!430420 (= res!1825877 (forall!9511 (toList!3429 lm!1616) lambda!152548))))

(assert (=> start!430420 e!2751319))

(declare-fun tp_is_empty!26129 () Bool)

(assert (=> start!430420 tp_is_empty!26129))

(declare-fun tp_is_empty!26131 () Bool)

(assert (=> start!430420 tp_is_empty!26131))

(declare-fun e!2751313 () Bool)

(assert (=> start!430420 e!2751313))

(declare-fun e!2751323 () Bool)

(declare-fun inv!65061 (ListLongMap!2079) Bool)

(assert (=> start!430420 (and (inv!65061 lm!1616) e!2751323)))

(assert (=> start!430420 true))

(declare-fun b!4418648 () Bool)

(declare-datatypes ((Unit!81116 0))(
  ( (Unit!81117) )
))
(declare-fun e!2751324 () Unit!81116)

(declare-fun Unit!81118 () Unit!81116)

(assert (=> b!4418648 (= e!2751324 Unit!81118)))

(declare-fun lt!1619494 () Unit!81116)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!8 (ListLongMap!2079 K!10875 Hashable!5115) Unit!81116)

(assert (=> b!4418648 (= lt!1619494 (lemmaExtractTailMapContainsThenExtractMapDoes!8 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4418648 false))

(declare-fun lt!1619488 () Bool)

(declare-fun b!4418649 () Bool)

(declare-fun e!2751317 () Bool)

(assert (=> b!4418649 (= e!2751317 (and (not lt!1619488) (= newBucket!194 (Cons!49508 (tuple2!49263 key!3717 newValue!93) Nil!49508))))))

(declare-fun b!4418650 () Bool)

(declare-fun res!1825862 () Bool)

(assert (=> b!4418650 (=> (not res!1825862) (not e!2751314))))

(declare-fun noDuplicateKeys!721 (List!49632) Bool)

(assert (=> b!4418650 (= res!1825862 (noDuplicateKeys!721 newBucket!194))))

(declare-fun e!2751322 () Bool)

(declare-fun b!4418651 () Bool)

(declare-fun apply!11573 (ListLongMap!2079 (_ BitVec 64)) List!49632)

(assert (=> b!4418651 (= e!2751322 (= newBucket!194 (Cons!49508 (tuple2!49263 key!3717 newValue!93) (apply!11573 lm!1616 hash!366))))))

(declare-fun b!4418652 () Bool)

(declare-fun tp!1332832 () Bool)

(assert (=> b!4418652 (= e!2751323 tp!1332832)))

(declare-fun b!4418653 () Bool)

(declare-fun e!2751320 () Bool)

(assert (=> b!4418653 (= e!2751314 (not e!2751320))))

(declare-fun res!1825861 () Bool)

(assert (=> b!4418653 (=> res!1825861 e!2751320)))

(declare-fun lt!1619492 () ListLongMap!2079)

(assert (=> b!4418653 (= res!1825861 (not (forall!9511 (toList!3429 lt!1619492) lambda!152548)))))

(assert (=> b!4418653 (forall!9511 (toList!3429 lt!1619492) lambda!152548)))

(declare-fun +!1027 (ListLongMap!2079 tuple2!49264) ListLongMap!2079)

(assert (=> b!4418653 (= lt!1619492 (+!1027 lm!1616 (tuple2!49265 hash!366 newBucket!194)))))

(declare-fun lt!1619491 () Unit!81116)

(declare-fun addValidProp!365 (ListLongMap!2079 Int (_ BitVec 64) List!49632) Unit!81116)

(assert (=> b!4418653 (= lt!1619491 (addValidProp!365 lm!1616 lambda!152548 hash!366 newBucket!194))))

(declare-fun b!4418654 () Bool)

(declare-fun res!1825879 () Bool)

(assert (=> b!4418654 (=> (not res!1825879) (not e!2751319))))

(declare-datatypes ((ListMap!2673 0))(
  ( (ListMap!2674 (toList!3430 List!49632)) )
))
(declare-fun contains!11973 (ListMap!2673 K!10875) Bool)

(declare-fun extractMap!782 (List!49633) ListMap!2673)

(assert (=> b!4418654 (= res!1825879 (not (contains!11973 (extractMap!782 (toList!3429 lm!1616)) key!3717)))))

(declare-fun b!4418655 () Bool)

(declare-fun e!2751318 () Bool)

(declare-fun lt!1619493 () ListLongMap!2079)

(assert (=> b!4418655 (= e!2751318 (= newBucket!194 (Cons!49508 (tuple2!49263 key!3717 newValue!93) (apply!11573 lt!1619493 hash!366))))))

(declare-fun b!4418656 () Bool)

(declare-fun e!2751315 () Bool)

(declare-fun lt!1619489 () Bool)

(assert (=> b!4418656 (= e!2751315 lt!1619489)))

(declare-fun b!4418657 () Bool)

(declare-fun res!1825871 () Bool)

(declare-fun e!2751316 () Bool)

(assert (=> b!4418657 (=> res!1825871 e!2751316)))

(declare-fun allKeysSameHashInMap!827 (ListLongMap!2079 Hashable!5115) Bool)

(assert (=> b!4418657 (= res!1825871 (not (allKeysSameHashInMap!827 lt!1619493 hashF!1220)))))

(declare-fun b!4418658 () Bool)

(declare-fun res!1825876 () Bool)

(assert (=> b!4418658 (=> res!1825876 e!2751320)))

(get-info :version)

(assert (=> b!4418658 (= res!1825876 (or (and ((_ is Cons!49509) (toList!3429 lm!1616)) (= (_1!27926 (h!55176 (toList!3429 lm!1616))) hash!366)) (not ((_ is Cons!49509) (toList!3429 lm!1616))) (= (_1!27926 (h!55176 (toList!3429 lm!1616))) hash!366)))))

(declare-fun b!4418659 () Bool)

(assert (=> b!4418659 (= e!2751320 e!2751316)))

(declare-fun res!1825870 () Bool)

(assert (=> b!4418659 (=> res!1825870 e!2751316)))

(assert (=> b!4418659 (= res!1825870 (not (forall!9511 (toList!3429 lt!1619493) lambda!152548)))))

(declare-fun tail!7214 (ListLongMap!2079) ListLongMap!2079)

(assert (=> b!4418659 (= lt!1619493 (tail!7214 lm!1616))))

(declare-fun lt!1619495 () Unit!81116)

(assert (=> b!4418659 (= lt!1619495 e!2751324)))

(declare-fun c!752077 () Bool)

(declare-fun tail!7215 (List!49633) List!49633)

(assert (=> b!4418659 (= c!752077 (contains!11973 (extractMap!782 (tail!7215 (toList!3429 lm!1616))) key!3717))))

(declare-fun b!4418660 () Bool)

(declare-fun res!1825864 () Bool)

(assert (=> b!4418660 (=> res!1825864 e!2751316)))

(assert (=> b!4418660 (= res!1825864 (contains!11973 (extractMap!782 (toList!3429 lt!1619493)) key!3717))))

(declare-fun b!4418661 () Bool)

(declare-fun tp!1332831 () Bool)

(assert (=> b!4418661 (= e!2751313 (and tp_is_empty!26131 tp_is_empty!26129 tp!1332831))))

(declare-fun b!4418662 () Bool)

(declare-fun res!1825875 () Bool)

(assert (=> b!4418662 (=> (not res!1825875) (not e!2751319))))

(assert (=> b!4418662 (= res!1825875 (allKeysSameHashInMap!827 lm!1616 hashF!1220))))

(declare-fun b!4418663 () Bool)

(declare-fun res!1825866 () Bool)

(assert (=> b!4418663 (=> (not res!1825866) (not e!2751319))))

(declare-fun hash!2041 (Hashable!5115 K!10875) (_ BitVec 64))

(assert (=> b!4418663 (= res!1825866 (= (hash!2041 hashF!1220 key!3717) hash!366))))

(declare-fun b!4418664 () Bool)

(assert (=> b!4418664 (= e!2751319 e!2751314)))

(declare-fun res!1825865 () Bool)

(assert (=> b!4418664 (=> (not res!1825865) (not e!2751314))))

(assert (=> b!4418664 (= res!1825865 e!2751317)))

(declare-fun res!1825874 () Bool)

(assert (=> b!4418664 (=> res!1825874 e!2751317)))

(assert (=> b!4418664 (= res!1825874 e!2751322)))

(declare-fun res!1825869 () Bool)

(assert (=> b!4418664 (=> (not res!1825869) (not e!2751322))))

(assert (=> b!4418664 (= res!1825869 lt!1619488)))

(declare-fun contains!11974 (ListLongMap!2079 (_ BitVec 64)) Bool)

(assert (=> b!4418664 (= lt!1619488 (contains!11974 lm!1616 hash!366))))

(declare-fun b!4418665 () Bool)

(assert (=> b!4418665 (= e!2751316 e!2751315)))

(declare-fun res!1825868 () Bool)

(assert (=> b!4418665 (=> res!1825868 e!2751315)))

(assert (=> b!4418665 (= res!1825868 (not lt!1619489))))

(assert (=> b!4418665 (= lt!1619489 e!2751321)))

(declare-fun res!1825872 () Bool)

(assert (=> b!4418665 (=> res!1825872 e!2751321)))

(assert (=> b!4418665 (= res!1825872 e!2751318)))

(declare-fun res!1825863 () Bool)

(assert (=> b!4418665 (=> (not res!1825863) (not e!2751318))))

(assert (=> b!4418665 (= res!1825863 lt!1619490)))

(assert (=> b!4418665 (= lt!1619490 (contains!11974 lt!1619493 hash!366))))

(declare-fun b!4418666 () Bool)

(declare-fun Unit!81119 () Unit!81116)

(assert (=> b!4418666 (= e!2751324 Unit!81119)))

(declare-fun b!4418667 () Bool)

(declare-fun res!1825873 () Bool)

(assert (=> b!4418667 (=> res!1825873 e!2751315)))

(assert (=> b!4418667 (= res!1825873 (not (forall!9511 (toList!3429 lt!1619493) lambda!152548)))))

(assert (= (and start!430420 res!1825877) b!4418662))

(assert (= (and b!4418662 res!1825875) b!4418663))

(assert (= (and b!4418663 res!1825866) b!4418645))

(assert (= (and b!4418645 res!1825878) b!4418654))

(assert (= (and b!4418654 res!1825879) b!4418664))

(assert (= (and b!4418664 res!1825869) b!4418651))

(assert (= (and b!4418664 (not res!1825874)) b!4418649))

(assert (= (and b!4418664 res!1825865) b!4418650))

(assert (= (and b!4418650 res!1825862) b!4418647))

(assert (= (and b!4418647 res!1825867) b!4418653))

(assert (= (and b!4418653 (not res!1825861)) b!4418658))

(assert (= (and b!4418658 (not res!1825876)) b!4418659))

(assert (= (and b!4418659 c!752077) b!4418648))

(assert (= (and b!4418659 (not c!752077)) b!4418666))

(assert (= (and b!4418659 (not res!1825870)) b!4418657))

(assert (= (and b!4418657 (not res!1825871)) b!4418660))

(assert (= (and b!4418660 (not res!1825864)) b!4418665))

(assert (= (and b!4418665 res!1825863) b!4418655))

(assert (= (and b!4418665 (not res!1825872)) b!4418646))

(assert (= (and b!4418665 (not res!1825868)) b!4418667))

(assert (= (and b!4418667 (not res!1825873)) b!4418656))

(assert (= (and start!430420 ((_ is Cons!49508) newBucket!194)) b!4418661))

(assert (= start!430420 b!4418652))

(declare-fun m!5095023 () Bool)

(assert (=> b!4418650 m!5095023))

(declare-fun m!5095025 () Bool)

(assert (=> b!4418664 m!5095025))

(declare-fun m!5095027 () Bool)

(assert (=> b!4418657 m!5095027))

(declare-fun m!5095029 () Bool)

(assert (=> b!4418660 m!5095029))

(assert (=> b!4418660 m!5095029))

(declare-fun m!5095031 () Bool)

(assert (=> b!4418660 m!5095031))

(declare-fun m!5095033 () Bool)

(assert (=> start!430420 m!5095033))

(declare-fun m!5095035 () Bool)

(assert (=> start!430420 m!5095035))

(assert (=> b!4418647 m!5095033))

(declare-fun m!5095037 () Bool)

(assert (=> b!4418662 m!5095037))

(declare-fun m!5095039 () Bool)

(assert (=> b!4418651 m!5095039))

(declare-fun m!5095041 () Bool)

(assert (=> b!4418667 m!5095041))

(declare-fun m!5095043 () Bool)

(assert (=> b!4418648 m!5095043))

(declare-fun m!5095045 () Bool)

(assert (=> b!4418653 m!5095045))

(assert (=> b!4418653 m!5095045))

(declare-fun m!5095047 () Bool)

(assert (=> b!4418653 m!5095047))

(declare-fun m!5095049 () Bool)

(assert (=> b!4418653 m!5095049))

(declare-fun m!5095051 () Bool)

(assert (=> b!4418645 m!5095051))

(declare-fun m!5095053 () Bool)

(assert (=> b!4418663 m!5095053))

(declare-fun m!5095055 () Bool)

(assert (=> b!4418665 m!5095055))

(declare-fun m!5095057 () Bool)

(assert (=> b!4418655 m!5095057))

(declare-fun m!5095059 () Bool)

(assert (=> b!4418654 m!5095059))

(assert (=> b!4418654 m!5095059))

(declare-fun m!5095061 () Bool)

(assert (=> b!4418654 m!5095061))

(declare-fun m!5095063 () Bool)

(assert (=> b!4418659 m!5095063))

(declare-fun m!5095065 () Bool)

(assert (=> b!4418659 m!5095065))

(declare-fun m!5095067 () Bool)

(assert (=> b!4418659 m!5095067))

(assert (=> b!4418659 m!5095063))

(assert (=> b!4418659 m!5095041))

(assert (=> b!4418659 m!5095065))

(declare-fun m!5095069 () Bool)

(assert (=> b!4418659 m!5095069))

(check-sat (not b!4418667) (not b!4418664) (not b!4418657) (not b!4418654) (not b!4418647) tp_is_empty!26129 (not b!4418645) (not b!4418659) (not b!4418648) (not b!4418655) (not b!4418652) (not b!4418663) (not b!4418651) (not b!4418653) tp_is_empty!26131 (not b!4418660) (not b!4418665) (not b!4418650) (not b!4418661) (not b!4418662) (not start!430420))
(check-sat)
