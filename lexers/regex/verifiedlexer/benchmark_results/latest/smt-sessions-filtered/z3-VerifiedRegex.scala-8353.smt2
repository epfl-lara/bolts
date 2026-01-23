; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!434700 () Bool)

(assert start!434700)

(declare-fun b!4441883 () Bool)

(declare-fun e!2765717 () Bool)

(assert (=> b!4441883 (= e!2765717 true)))

(declare-fun lt!1637243 () Bool)

(declare-datatypes ((V!11416 0))(
  ( (V!11417 (val!17207 Int)) )
))
(declare-datatypes ((K!11170 0))(
  ( (K!11171 (val!17208 Int)) )
))
(declare-datatypes ((tuple2!49734 0))(
  ( (tuple2!49735 (_1!28161 K!11170) (_2!28161 V!11416)) )
))
(declare-datatypes ((List!49926 0))(
  ( (Nil!49802) (Cons!49802 (h!55531 tuple2!49734) (t!356868 List!49926)) )
))
(declare-datatypes ((tuple2!49736 0))(
  ( (tuple2!49737 (_1!28162 (_ BitVec 64)) (_2!28162 List!49926)) )
))
(declare-datatypes ((List!49927 0))(
  ( (Nil!49803) (Cons!49803 (h!55532 tuple2!49736) (t!356869 List!49927)) )
))
(declare-datatypes ((ListLongMap!2315 0))(
  ( (ListLongMap!2316 (toList!3665 List!49927)) )
))
(declare-fun lt!1637239 () ListLongMap!2315)

(declare-datatypes ((Hashable!5233 0))(
  ( (HashableExt!5232 (__x!30936 Int)) )
))
(declare-fun hashF!1220 () Hashable!5233)

(declare-fun allKeysSameHashInMap!945 (ListLongMap!2315 Hashable!5233) Bool)

(assert (=> b!4441883 (= lt!1637243 (allKeysSameHashInMap!945 lt!1637239 hashF!1220))))

(declare-fun b!4441884 () Bool)

(declare-fun res!1839291 () Bool)

(declare-fun e!2765719 () Bool)

(assert (=> b!4441884 (=> (not res!1839291) (not e!2765719))))

(declare-fun newBucket!194 () List!49926)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun allKeysSameHash!799 (List!49926 (_ BitVec 64) Hashable!5233) Bool)

(assert (=> b!4441884 (= res!1839291 (allKeysSameHash!799 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4441885 () Bool)

(declare-fun res!1839293 () Bool)

(declare-fun e!2765712 () Bool)

(assert (=> b!4441885 (=> (not res!1839293) (not e!2765712))))

(declare-fun lm!1616 () ListLongMap!2315)

(declare-fun lambda!157458 () Int)

(declare-fun forall!9710 (List!49927 Int) Bool)

(assert (=> b!4441885 (= res!1839293 (forall!9710 (toList!3665 lm!1616) lambda!157458))))

(declare-fun b!4441886 () Bool)

(declare-fun res!1839283 () Bool)

(assert (=> b!4441886 (=> (not res!1839283) (not e!2765712))))

(declare-fun noDuplicateKeys!839 (List!49926) Bool)

(assert (=> b!4441886 (= res!1839283 (noDuplicateKeys!839 newBucket!194))))

(declare-fun b!4441887 () Bool)

(declare-fun res!1839294 () Bool)

(assert (=> b!4441887 (=> (not res!1839294) (not e!2765719))))

(declare-fun key!3717 () K!11170)

(declare-fun hash!2296 (Hashable!5233 K!11170) (_ BitVec 64))

(assert (=> b!4441887 (= res!1839294 (= (hash!2296 hashF!1220 key!3717) hash!366))))

(declare-fun res!1839286 () Bool)

(assert (=> start!434700 (=> (not res!1839286) (not e!2765719))))

(assert (=> start!434700 (= res!1839286 (forall!9710 (toList!3665 lm!1616) lambda!157458))))

(assert (=> start!434700 e!2765719))

(declare-fun tp_is_empty!26601 () Bool)

(assert (=> start!434700 tp_is_empty!26601))

(declare-fun tp_is_empty!26603 () Bool)

(assert (=> start!434700 tp_is_empty!26603))

(declare-fun e!2765720 () Bool)

(assert (=> start!434700 e!2765720))

(declare-fun e!2765716 () Bool)

(declare-fun inv!65356 (ListLongMap!2315) Bool)

(assert (=> start!434700 (and (inv!65356 lm!1616) e!2765716)))

(assert (=> start!434700 true))

(declare-fun b!4441888 () Bool)

(declare-fun res!1839292 () Bool)

(assert (=> b!4441888 (=> (not res!1839292) (not e!2765719))))

(declare-datatypes ((ListMap!2909 0))(
  ( (ListMap!2910 (toList!3666 List!49926)) )
))
(declare-fun contains!12375 (ListMap!2909 K!11170) Bool)

(declare-fun extractMap!900 (List!49927) ListMap!2909)

(assert (=> b!4441888 (= res!1839292 (not (contains!12375 (extractMap!900 (toList!3665 lm!1616)) key!3717)))))

(declare-fun b!4441889 () Bool)

(declare-fun e!2765715 () Bool)

(assert (=> b!4441889 (= e!2765715 e!2765717)))

(declare-fun res!1839287 () Bool)

(assert (=> b!4441889 (=> res!1839287 e!2765717)))

(assert (=> b!4441889 (= res!1839287 (not (forall!9710 (toList!3665 lt!1637239) lambda!157458)))))

(declare-fun tail!7378 (ListLongMap!2315) ListLongMap!2315)

(assert (=> b!4441889 (= lt!1637239 (tail!7378 lm!1616))))

(declare-datatypes ((Unit!83954 0))(
  ( (Unit!83955) )
))
(declare-fun lt!1637241 () Unit!83954)

(declare-fun e!2765718 () Unit!83954)

(assert (=> b!4441889 (= lt!1637241 e!2765718)))

(declare-fun c!755941 () Bool)

(declare-fun tail!7379 (List!49927) List!49927)

(assert (=> b!4441889 (= c!755941 (contains!12375 (extractMap!900 (tail!7379 (toList!3665 lm!1616))) key!3717))))

(declare-fun b!4441890 () Bool)

(declare-fun res!1839284 () Bool)

(assert (=> b!4441890 (=> res!1839284 e!2765715)))

(get-info :version)

(assert (=> b!4441890 (= res!1839284 (or (and ((_ is Cons!49803) (toList!3665 lm!1616)) (= (_1!28162 (h!55532 (toList!3665 lm!1616))) hash!366)) (not ((_ is Cons!49803) (toList!3665 lm!1616))) (= (_1!28162 (h!55532 (toList!3665 lm!1616))) hash!366)))))

(declare-fun b!4441891 () Bool)

(assert (=> b!4441891 (= e!2765712 (not e!2765715))))

(declare-fun res!1839289 () Bool)

(assert (=> b!4441891 (=> res!1839289 e!2765715)))

(declare-fun lt!1637242 () ListLongMap!2315)

(assert (=> b!4441891 (= res!1839289 (not (forall!9710 (toList!3665 lt!1637242) lambda!157458)))))

(assert (=> b!4441891 (forall!9710 (toList!3665 lt!1637242) lambda!157458)))

(declare-fun +!1222 (ListLongMap!2315 tuple2!49736) ListLongMap!2315)

(assert (=> b!4441891 (= lt!1637242 (+!1222 lm!1616 (tuple2!49737 hash!366 newBucket!194)))))

(declare-fun lt!1637244 () Unit!83954)

(declare-fun addValidProp!477 (ListLongMap!2315 Int (_ BitVec 64) List!49926) Unit!83954)

(assert (=> b!4441891 (= lt!1637244 (addValidProp!477 lm!1616 lambda!157458 hash!366 newBucket!194))))

(declare-fun b!4441892 () Bool)

(assert (=> b!4441892 (= e!2765719 e!2765712)))

(declare-fun res!1839288 () Bool)

(assert (=> b!4441892 (=> (not res!1839288) (not e!2765712))))

(declare-fun e!2765713 () Bool)

(assert (=> b!4441892 (= res!1839288 e!2765713)))

(declare-fun res!1839290 () Bool)

(assert (=> b!4441892 (=> res!1839290 e!2765713)))

(declare-fun e!2765714 () Bool)

(assert (=> b!4441892 (= res!1839290 e!2765714)))

(declare-fun res!1839295 () Bool)

(assert (=> b!4441892 (=> (not res!1839295) (not e!2765714))))

(declare-fun lt!1637240 () Bool)

(assert (=> b!4441892 (= res!1839295 lt!1637240)))

(declare-fun contains!12376 (ListLongMap!2315 (_ BitVec 64)) Bool)

(assert (=> b!4441892 (= lt!1637240 (contains!12376 lm!1616 hash!366))))

(declare-fun b!4441893 () Bool)

(declare-fun Unit!83956 () Unit!83954)

(assert (=> b!4441893 (= e!2765718 Unit!83956)))

(declare-fun lt!1637245 () Unit!83954)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!76 (ListLongMap!2315 K!11170 Hashable!5233) Unit!83954)

(assert (=> b!4441893 (= lt!1637245 (lemmaExtractTailMapContainsThenExtractMapDoes!76 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4441893 false))

(declare-fun b!4441894 () Bool)

(declare-fun tp!1334221 () Bool)

(assert (=> b!4441894 (= e!2765716 tp!1334221)))

(declare-fun b!4441895 () Bool)

(declare-fun newValue!93 () V!11416)

(assert (=> b!4441895 (= e!2765713 (and (not lt!1637240) (= newBucket!194 (Cons!49802 (tuple2!49735 key!3717 newValue!93) Nil!49802))))))

(declare-fun b!4441896 () Bool)

(declare-fun res!1839285 () Bool)

(assert (=> b!4441896 (=> (not res!1839285) (not e!2765719))))

(assert (=> b!4441896 (= res!1839285 (allKeysSameHashInMap!945 lm!1616 hashF!1220))))

(declare-fun b!4441897 () Bool)

(declare-fun Unit!83957 () Unit!83954)

(assert (=> b!4441897 (= e!2765718 Unit!83957)))

(declare-fun b!4441898 () Bool)

(declare-fun apply!11691 (ListLongMap!2315 (_ BitVec 64)) List!49926)

(assert (=> b!4441898 (= e!2765714 (= newBucket!194 (Cons!49802 (tuple2!49735 key!3717 newValue!93) (apply!11691 lm!1616 hash!366))))))

(declare-fun b!4441899 () Bool)

(declare-fun tp!1334222 () Bool)

(assert (=> b!4441899 (= e!2765720 (and tp_is_empty!26603 tp_is_empty!26601 tp!1334222))))

(assert (= (and start!434700 res!1839286) b!4441896))

(assert (= (and b!4441896 res!1839285) b!4441887))

(assert (= (and b!4441887 res!1839294) b!4441884))

(assert (= (and b!4441884 res!1839291) b!4441888))

(assert (= (and b!4441888 res!1839292) b!4441892))

(assert (= (and b!4441892 res!1839295) b!4441898))

(assert (= (and b!4441892 (not res!1839290)) b!4441895))

(assert (= (and b!4441892 res!1839288) b!4441886))

(assert (= (and b!4441886 res!1839283) b!4441885))

(assert (= (and b!4441885 res!1839293) b!4441891))

(assert (= (and b!4441891 (not res!1839289)) b!4441890))

(assert (= (and b!4441890 (not res!1839284)) b!4441889))

(assert (= (and b!4441889 c!755941) b!4441893))

(assert (= (and b!4441889 (not c!755941)) b!4441897))

(assert (= (and b!4441889 (not res!1839287)) b!4441883))

(assert (= (and start!434700 ((_ is Cons!49802) newBucket!194)) b!4441899))

(assert (= start!434700 b!4441894))

(declare-fun m!5130715 () Bool)

(assert (=> b!4441891 m!5130715))

(assert (=> b!4441891 m!5130715))

(declare-fun m!5130717 () Bool)

(assert (=> b!4441891 m!5130717))

(declare-fun m!5130719 () Bool)

(assert (=> b!4441891 m!5130719))

(declare-fun m!5130721 () Bool)

(assert (=> start!434700 m!5130721))

(declare-fun m!5130723 () Bool)

(assert (=> start!434700 m!5130723))

(declare-fun m!5130725 () Bool)

(assert (=> b!4441887 m!5130725))

(declare-fun m!5130727 () Bool)

(assert (=> b!4441886 m!5130727))

(declare-fun m!5130729 () Bool)

(assert (=> b!4441889 m!5130729))

(declare-fun m!5130731 () Bool)

(assert (=> b!4441889 m!5130731))

(declare-fun m!5130733 () Bool)

(assert (=> b!4441889 m!5130733))

(declare-fun m!5130735 () Bool)

(assert (=> b!4441889 m!5130735))

(assert (=> b!4441889 m!5130729))

(assert (=> b!4441889 m!5130731))

(declare-fun m!5130737 () Bool)

(assert (=> b!4441889 m!5130737))

(declare-fun m!5130739 () Bool)

(assert (=> b!4441893 m!5130739))

(declare-fun m!5130741 () Bool)

(assert (=> b!4441892 m!5130741))

(assert (=> b!4441885 m!5130721))

(declare-fun m!5130743 () Bool)

(assert (=> b!4441883 m!5130743))

(declare-fun m!5130745 () Bool)

(assert (=> b!4441898 m!5130745))

(declare-fun m!5130747 () Bool)

(assert (=> b!4441884 m!5130747))

(declare-fun m!5130749 () Bool)

(assert (=> b!4441888 m!5130749))

(assert (=> b!4441888 m!5130749))

(declare-fun m!5130751 () Bool)

(assert (=> b!4441888 m!5130751))

(declare-fun m!5130753 () Bool)

(assert (=> b!4441896 m!5130753))

(check-sat (not b!4441886) (not start!434700) (not b!4441884) (not b!4441894) tp_is_empty!26603 (not b!4441898) (not b!4441891) (not b!4441885) (not b!4441889) tp_is_empty!26601 (not b!4441893) (not b!4441887) (not b!4441899) (not b!4441883) (not b!4441892) (not b!4441896) (not b!4441888))
(check-sat)
