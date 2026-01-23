; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!433616 () Bool)

(assert start!433616)

(declare-fun b!4436034 () Bool)

(declare-fun res!1835937 () Bool)

(declare-fun e!2762200 () Bool)

(assert (=> b!4436034 (=> (not res!1835937) (not e!2762200))))

(declare-datatypes ((K!11085 0))(
  ( (K!11086 (val!17139 Int)) )
))
(declare-datatypes ((V!11331 0))(
  ( (V!11332 (val!17140 Int)) )
))
(declare-datatypes ((tuple2!49598 0))(
  ( (tuple2!49599 (_1!28093 K!11085) (_2!28093 V!11331)) )
))
(declare-datatypes ((List!49841 0))(
  ( (Nil!49717) (Cons!49717 (h!55426 tuple2!49598) (t!356783 List!49841)) )
))
(declare-fun newBucket!194 () List!49841)

(declare-datatypes ((Hashable!5199 0))(
  ( (HashableExt!5198 (__x!30902 Int)) )
))
(declare-fun hashF!1220 () Hashable!5199)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun allKeysSameHash!765 (List!49841 (_ BitVec 64) Hashable!5199) Bool)

(assert (=> b!4436034 (= res!1835937 (allKeysSameHash!765 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4436035 () Bool)

(declare-fun res!1835928 () Bool)

(declare-fun e!2762197 () Bool)

(assert (=> b!4436035 (=> (not res!1835928) (not e!2762197))))

(declare-datatypes ((tuple2!49600 0))(
  ( (tuple2!49601 (_1!28094 (_ BitVec 64)) (_2!28094 List!49841)) )
))
(declare-datatypes ((List!49842 0))(
  ( (Nil!49718) (Cons!49718 (h!55427 tuple2!49600) (t!356784 List!49842)) )
))
(declare-datatypes ((ListLongMap!2247 0))(
  ( (ListLongMap!2248 (toList!3597 List!49842)) )
))
(declare-fun lm!1616 () ListLongMap!2247)

(declare-fun lambda!156216 () Int)

(declare-fun forall!9654 (List!49842 Int) Bool)

(assert (=> b!4436035 (= res!1835928 (forall!9654 (toList!3597 lm!1616) lambda!156216))))

(declare-fun res!1835929 () Bool)

(assert (=> start!433616 (=> (not res!1835929) (not e!2762200))))

(assert (=> start!433616 (= res!1835929 (forall!9654 (toList!3597 lm!1616) lambda!156216))))

(assert (=> start!433616 e!2762200))

(declare-fun tp_is_empty!26465 () Bool)

(assert (=> start!433616 tp_is_empty!26465))

(declare-fun tp_is_empty!26467 () Bool)

(assert (=> start!433616 tp_is_empty!26467))

(declare-fun e!2762199 () Bool)

(assert (=> start!433616 e!2762199))

(declare-fun e!2762203 () Bool)

(declare-fun inv!65271 (ListLongMap!2247) Bool)

(assert (=> start!433616 (and (inv!65271 lm!1616) e!2762203)))

(assert (=> start!433616 true))

(declare-fun b!4436036 () Bool)

(declare-fun e!2762202 () Bool)

(assert (=> b!4436036 (= e!2762202 true)))

(declare-fun newValue!93 () V!11331)

(declare-fun key!3717 () K!11085)

(declare-fun lt!1633128 () ListLongMap!2247)

(declare-fun lt!1633126 () tuple2!49600)

(declare-datatypes ((ListMap!2841 0))(
  ( (ListMap!2842 (toList!3598 List!49841)) )
))
(declare-fun eq!437 (ListMap!2841 ListMap!2841) Bool)

(declare-fun extractMap!866 (List!49842) ListMap!2841)

(declare-fun +!1176 (ListLongMap!2247 tuple2!49600) ListLongMap!2247)

(declare-fun +!1177 (ListMap!2841 tuple2!49598) ListMap!2841)

(assert (=> b!4436036 (eq!437 (extractMap!866 (toList!3597 (+!1176 lt!1633128 lt!1633126))) (+!1177 (extractMap!866 (toList!3597 lt!1633128)) (tuple2!49599 key!3717 newValue!93)))))

(declare-datatypes ((Unit!83379 0))(
  ( (Unit!83380) )
))
(declare-fun lt!1633132 () Unit!83379)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!147 (ListLongMap!2247 (_ BitVec 64) List!49841 K!11085 V!11331 Hashable!5199) Unit!83379)

(assert (=> b!4436036 (= lt!1633132 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!147 lt!1633128 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7332 (ListLongMap!2247) ListLongMap!2247)

(assert (=> b!4436036 (= lt!1633128 (tail!7332 lm!1616))))

(declare-fun lt!1633130 () Unit!83379)

(declare-fun e!2762201 () Unit!83379)

(assert (=> b!4436036 (= lt!1633130 e!2762201)))

(declare-fun c!755003 () Bool)

(declare-fun contains!12264 (ListMap!2841 K!11085) Bool)

(declare-fun tail!7333 (List!49842) List!49842)

(assert (=> b!4436036 (= c!755003 (contains!12264 (extractMap!866 (tail!7333 (toList!3597 lm!1616))) key!3717))))

(declare-fun b!4436037 () Bool)

(declare-fun res!1835931 () Bool)

(assert (=> b!4436037 (=> (not res!1835931) (not e!2762200))))

(assert (=> b!4436037 (= res!1835931 (not (contains!12264 (extractMap!866 (toList!3597 lm!1616)) key!3717)))))

(declare-fun b!4436038 () Bool)

(assert (=> b!4436038 (= e!2762197 (not e!2762202))))

(declare-fun res!1835927 () Bool)

(assert (=> b!4436038 (=> res!1835927 e!2762202)))

(declare-fun lt!1633133 () ListLongMap!2247)

(assert (=> b!4436038 (= res!1835927 (not (forall!9654 (toList!3597 lt!1633133) lambda!156216)))))

(assert (=> b!4436038 (forall!9654 (toList!3597 lt!1633133) lambda!156216)))

(assert (=> b!4436038 (= lt!1633133 (+!1176 lm!1616 lt!1633126))))

(assert (=> b!4436038 (= lt!1633126 (tuple2!49601 hash!366 newBucket!194))))

(declare-fun lt!1633129 () Unit!83379)

(declare-fun addValidProp!447 (ListLongMap!2247 Int (_ BitVec 64) List!49841) Unit!83379)

(assert (=> b!4436038 (= lt!1633129 (addValidProp!447 lm!1616 lambda!156216 hash!366 newBucket!194))))

(declare-fun b!4436039 () Bool)

(declare-fun res!1835933 () Bool)

(assert (=> b!4436039 (=> (not res!1835933) (not e!2762197))))

(declare-fun noDuplicateKeys!805 (List!49841) Bool)

(assert (=> b!4436039 (= res!1835933 (noDuplicateKeys!805 newBucket!194))))

(declare-fun b!4436040 () Bool)

(declare-fun tp!1333814 () Bool)

(assert (=> b!4436040 (= e!2762203 tp!1333814)))

(declare-fun b!4436041 () Bool)

(declare-fun res!1835932 () Bool)

(assert (=> b!4436041 (=> (not res!1835932) (not e!2762200))))

(declare-fun hash!2230 (Hashable!5199 K!11085) (_ BitVec 64))

(assert (=> b!4436041 (= res!1835932 (= (hash!2230 hashF!1220 key!3717) hash!366))))

(declare-fun tp!1333813 () Bool)

(declare-fun b!4436042 () Bool)

(assert (=> b!4436042 (= e!2762199 (and tp_is_empty!26467 tp_is_empty!26465 tp!1333813))))

(declare-fun b!4436043 () Bool)

(assert (=> b!4436043 (= e!2762200 e!2762197)))

(declare-fun res!1835935 () Bool)

(assert (=> b!4436043 (=> (not res!1835935) (not e!2762197))))

(declare-fun e!2762198 () Bool)

(assert (=> b!4436043 (= res!1835935 e!2762198)))

(declare-fun res!1835926 () Bool)

(assert (=> b!4436043 (=> res!1835926 e!2762198)))

(declare-fun e!2762204 () Bool)

(assert (=> b!4436043 (= res!1835926 e!2762204)))

(declare-fun res!1835934 () Bool)

(assert (=> b!4436043 (=> (not res!1835934) (not e!2762204))))

(declare-fun lt!1633127 () Bool)

(assert (=> b!4436043 (= res!1835934 lt!1633127)))

(declare-fun contains!12265 (ListLongMap!2247 (_ BitVec 64)) Bool)

(assert (=> b!4436043 (= lt!1633127 (contains!12265 lm!1616 hash!366))))

(declare-fun b!4436044 () Bool)

(assert (=> b!4436044 (= e!2762198 (and (not lt!1633127) (= newBucket!194 (Cons!49717 (tuple2!49599 key!3717 newValue!93) Nil!49717))))))

(declare-fun b!4436045 () Bool)

(declare-fun res!1835930 () Bool)

(assert (=> b!4436045 (=> res!1835930 e!2762202)))

(get-info :version)

(assert (=> b!4436045 (= res!1835930 (or (and ((_ is Cons!49718) (toList!3597 lm!1616)) (= (_1!28094 (h!55427 (toList!3597 lm!1616))) hash!366)) (not ((_ is Cons!49718) (toList!3597 lm!1616))) (= (_1!28094 (h!55427 (toList!3597 lm!1616))) hash!366)))))

(declare-fun b!4436046 () Bool)

(declare-fun res!1835936 () Bool)

(assert (=> b!4436046 (=> (not res!1835936) (not e!2762200))))

(declare-fun allKeysSameHashInMap!911 (ListLongMap!2247 Hashable!5199) Bool)

(assert (=> b!4436046 (= res!1835936 (allKeysSameHashInMap!911 lm!1616 hashF!1220))))

(declare-fun b!4436047 () Bool)

(declare-fun Unit!83381 () Unit!83379)

(assert (=> b!4436047 (= e!2762201 Unit!83381)))

(declare-fun b!4436048 () Bool)

(declare-fun apply!11657 (ListLongMap!2247 (_ BitVec 64)) List!49841)

(assert (=> b!4436048 (= e!2762204 (= newBucket!194 (Cons!49717 (tuple2!49599 key!3717 newValue!93) (apply!11657 lm!1616 hash!366))))))

(declare-fun b!4436049 () Bool)

(declare-fun Unit!83382 () Unit!83379)

(assert (=> b!4436049 (= e!2762201 Unit!83382)))

(declare-fun lt!1633131 () Unit!83379)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!60 (ListLongMap!2247 K!11085 Hashable!5199) Unit!83379)

(assert (=> b!4436049 (= lt!1633131 (lemmaExtractTailMapContainsThenExtractMapDoes!60 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4436049 false))

(assert (= (and start!433616 res!1835929) b!4436046))

(assert (= (and b!4436046 res!1835936) b!4436041))

(assert (= (and b!4436041 res!1835932) b!4436034))

(assert (= (and b!4436034 res!1835937) b!4436037))

(assert (= (and b!4436037 res!1835931) b!4436043))

(assert (= (and b!4436043 res!1835934) b!4436048))

(assert (= (and b!4436043 (not res!1835926)) b!4436044))

(assert (= (and b!4436043 res!1835935) b!4436039))

(assert (= (and b!4436039 res!1835933) b!4436035))

(assert (= (and b!4436035 res!1835928) b!4436038))

(assert (= (and b!4436038 (not res!1835927)) b!4436045))

(assert (= (and b!4436045 (not res!1835930)) b!4436036))

(assert (= (and b!4436036 c!755003) b!4436049))

(assert (= (and b!4436036 (not c!755003)) b!4436047))

(assert (= (and start!433616 ((_ is Cons!49717) newBucket!194)) b!4436042))

(assert (= start!433616 b!4436040))

(declare-fun m!5122859 () Bool)

(assert (=> start!433616 m!5122859))

(declare-fun m!5122861 () Bool)

(assert (=> start!433616 m!5122861))

(declare-fun m!5122863 () Bool)

(assert (=> b!4436049 m!5122863))

(assert (=> b!4436035 m!5122859))

(declare-fun m!5122865 () Bool)

(assert (=> b!4436038 m!5122865))

(assert (=> b!4436038 m!5122865))

(declare-fun m!5122867 () Bool)

(assert (=> b!4436038 m!5122867))

(declare-fun m!5122869 () Bool)

(assert (=> b!4436038 m!5122869))

(declare-fun m!5122871 () Bool)

(assert (=> b!4436039 m!5122871))

(declare-fun m!5122873 () Bool)

(assert (=> b!4436036 m!5122873))

(declare-fun m!5122875 () Bool)

(assert (=> b!4436036 m!5122875))

(declare-fun m!5122877 () Bool)

(assert (=> b!4436036 m!5122877))

(declare-fun m!5122879 () Bool)

(assert (=> b!4436036 m!5122879))

(declare-fun m!5122881 () Bool)

(assert (=> b!4436036 m!5122881))

(declare-fun m!5122883 () Bool)

(assert (=> b!4436036 m!5122883))

(declare-fun m!5122885 () Bool)

(assert (=> b!4436036 m!5122885))

(assert (=> b!4436036 m!5122885))

(declare-fun m!5122887 () Bool)

(assert (=> b!4436036 m!5122887))

(declare-fun m!5122889 () Bool)

(assert (=> b!4436036 m!5122889))

(assert (=> b!4436036 m!5122873))

(assert (=> b!4436036 m!5122887))

(declare-fun m!5122891 () Bool)

(assert (=> b!4436036 m!5122891))

(assert (=> b!4436036 m!5122877))

(assert (=> b!4436036 m!5122881))

(declare-fun m!5122893 () Bool)

(assert (=> b!4436043 m!5122893))

(declare-fun m!5122895 () Bool)

(assert (=> b!4436046 m!5122895))

(declare-fun m!5122897 () Bool)

(assert (=> b!4436041 m!5122897))

(declare-fun m!5122899 () Bool)

(assert (=> b!4436037 m!5122899))

(assert (=> b!4436037 m!5122899))

(declare-fun m!5122901 () Bool)

(assert (=> b!4436037 m!5122901))

(declare-fun m!5122903 () Bool)

(assert (=> b!4436048 m!5122903))

(declare-fun m!5122905 () Bool)

(assert (=> b!4436034 m!5122905))

(check-sat (not b!4436038) (not b!4436049) (not b!4436037) (not start!433616) tp_is_empty!26465 (not b!4436043) (not b!4436034) (not b!4436041) (not b!4436046) tp_is_empty!26467 (not b!4436040) (not b!4436036) (not b!4436042) (not b!4436035) (not b!4436039) (not b!4436048))
(check-sat)
