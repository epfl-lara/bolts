; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!432512 () Bool)

(assert start!432512)

(declare-fun b!4429997 () Bool)

(declare-fun e!2758344 () Bool)

(declare-fun tp!1333502 () Bool)

(assert (=> b!4429997 (= e!2758344 tp!1333502)))

(declare-fun b!4429998 () Bool)

(declare-fun e!2758341 () Bool)

(declare-fun e!2758346 () Bool)

(assert (=> b!4429998 (= e!2758341 e!2758346)))

(declare-fun res!1832363 () Bool)

(assert (=> b!4429998 (=> (not res!1832363) (not e!2758346))))

(declare-fun e!2758343 () Bool)

(assert (=> b!4429998 (= res!1832363 e!2758343)))

(declare-fun res!1832367 () Bool)

(assert (=> b!4429998 (=> res!1832367 e!2758343)))

(declare-fun e!2758342 () Bool)

(assert (=> b!4429998 (= res!1832367 e!2758342)))

(declare-fun res!1832370 () Bool)

(assert (=> b!4429998 (=> (not res!1832370) (not e!2758342))))

(declare-fun lt!1629099 () Bool)

(assert (=> b!4429998 (= res!1832370 lt!1629099)))

(declare-datatypes ((V!11271 0))(
  ( (V!11272 (val!17091 Int)) )
))
(declare-datatypes ((K!11025 0))(
  ( (K!11026 (val!17092 Int)) )
))
(declare-datatypes ((tuple2!49502 0))(
  ( (tuple2!49503 (_1!28045 K!11025) (_2!28045 V!11271)) )
))
(declare-datatypes ((List!49781 0))(
  ( (Nil!49657) (Cons!49657 (h!55354 tuple2!49502) (t!356719 List!49781)) )
))
(declare-datatypes ((tuple2!49504 0))(
  ( (tuple2!49505 (_1!28046 (_ BitVec 64)) (_2!28046 List!49781)) )
))
(declare-datatypes ((List!49782 0))(
  ( (Nil!49658) (Cons!49658 (h!55355 tuple2!49504) (t!356720 List!49782)) )
))
(declare-datatypes ((ListLongMap!2199 0))(
  ( (ListLongMap!2200 (toList!3549 List!49782)) )
))
(declare-fun lm!1616 () ListLongMap!2199)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!12182 (ListLongMap!2199 (_ BitVec 64)) Bool)

(assert (=> b!4429998 (= lt!1629099 (contains!12182 lm!1616 hash!366))))

(declare-fun res!1832364 () Bool)

(assert (=> start!432512 (=> (not res!1832364) (not e!2758341))))

(declare-fun lambda!155056 () Int)

(declare-fun forall!9608 (List!49782 Int) Bool)

(assert (=> start!432512 (= res!1832364 (forall!9608 (toList!3549 lm!1616) lambda!155056))))

(assert (=> start!432512 e!2758341))

(declare-fun tp_is_empty!26369 () Bool)

(assert (=> start!432512 tp_is_empty!26369))

(declare-fun tp_is_empty!26371 () Bool)

(assert (=> start!432512 tp_is_empty!26371))

(declare-fun e!2758345 () Bool)

(assert (=> start!432512 e!2758345))

(declare-fun inv!65211 (ListLongMap!2199) Bool)

(assert (=> start!432512 (and (inv!65211 lm!1616) e!2758344)))

(assert (=> start!432512 true))

(declare-fun b!4429999 () Bool)

(declare-fun res!1832371 () Bool)

(assert (=> b!4429999 (=> (not res!1832371) (not e!2758341))))

(declare-fun key!3717 () K!11025)

(declare-datatypes ((ListMap!2793 0))(
  ( (ListMap!2794 (toList!3550 List!49781)) )
))
(declare-fun contains!12183 (ListMap!2793 K!11025) Bool)

(declare-fun extractMap!842 (List!49782) ListMap!2793)

(assert (=> b!4429999 (= res!1832371 (not (contains!12183 (extractMap!842 (toList!3549 lm!1616)) key!3717)))))

(declare-fun b!4430000 () Bool)

(declare-fun res!1832366 () Bool)

(assert (=> b!4430000 (=> (not res!1832366) (not e!2758346))))

(declare-fun newBucket!194 () List!49781)

(declare-fun noDuplicateKeys!781 (List!49781) Bool)

(assert (=> b!4430000 (= res!1832366 (noDuplicateKeys!781 newBucket!194))))

(declare-fun newValue!93 () V!11271)

(declare-fun b!4430001 () Bool)

(assert (=> b!4430001 (= e!2758343 (and (not lt!1629099) (= newBucket!194 (Cons!49657 (tuple2!49503 key!3717 newValue!93) Nil!49657))))))

(declare-fun b!4430002 () Bool)

(declare-fun res!1832365 () Bool)

(assert (=> b!4430002 (=> (not res!1832365) (not e!2758341))))

(declare-datatypes ((Hashable!5175 0))(
  ( (HashableExt!5174 (__x!30878 Int)) )
))
(declare-fun hashF!1220 () Hashable!5175)

(declare-fun allKeysSameHash!741 (List!49781 (_ BitVec 64) Hashable!5175) Bool)

(assert (=> b!4430002 (= res!1832365 (allKeysSameHash!741 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4430003 () Bool)

(declare-fun res!1832369 () Bool)

(assert (=> b!4430003 (=> (not res!1832369) (not e!2758341))))

(declare-fun allKeysSameHashInMap!887 (ListLongMap!2199 Hashable!5175) Bool)

(assert (=> b!4430003 (= res!1832369 (allKeysSameHashInMap!887 lm!1616 hashF!1220))))

(declare-fun b!4430004 () Bool)

(assert (=> b!4430004 (= e!2758346 (not (forall!9608 (toList!3549 lm!1616) lambda!155056)))))

(declare-fun b!4430005 () Bool)

(declare-fun apply!11633 (ListLongMap!2199 (_ BitVec 64)) List!49781)

(assert (=> b!4430005 (= e!2758342 (= newBucket!194 (Cons!49657 (tuple2!49503 key!3717 newValue!93) (apply!11633 lm!1616 hash!366))))))

(declare-fun b!4430006 () Bool)

(declare-fun res!1832368 () Bool)

(assert (=> b!4430006 (=> (not res!1832368) (not e!2758341))))

(declare-fun hash!2194 (Hashable!5175 K!11025) (_ BitVec 64))

(assert (=> b!4430006 (= res!1832368 (= (hash!2194 hashF!1220 key!3717) hash!366))))

(declare-fun b!4430007 () Bool)

(declare-fun tp!1333501 () Bool)

(assert (=> b!4430007 (= e!2758345 (and tp_is_empty!26371 tp_is_empty!26369 tp!1333501))))

(assert (= (and start!432512 res!1832364) b!4430003))

(assert (= (and b!4430003 res!1832369) b!4430006))

(assert (= (and b!4430006 res!1832368) b!4430002))

(assert (= (and b!4430002 res!1832365) b!4429999))

(assert (= (and b!4429999 res!1832371) b!4429998))

(assert (= (and b!4429998 res!1832370) b!4430005))

(assert (= (and b!4429998 (not res!1832367)) b!4430001))

(assert (= (and b!4429998 res!1832363) b!4430000))

(assert (= (and b!4430000 res!1832366) b!4430004))

(get-info :version)

(assert (= (and start!432512 ((_ is Cons!49657) newBucket!194)) b!4430007))

(assert (= start!432512 b!4429997))

(declare-fun m!5114135 () Bool)

(assert (=> b!4429998 m!5114135))

(declare-fun m!5114137 () Bool)

(assert (=> start!432512 m!5114137))

(declare-fun m!5114139 () Bool)

(assert (=> start!432512 m!5114139))

(assert (=> b!4430004 m!5114137))

(declare-fun m!5114141 () Bool)

(assert (=> b!4430006 m!5114141))

(declare-fun m!5114143 () Bool)

(assert (=> b!4430000 m!5114143))

(declare-fun m!5114145 () Bool)

(assert (=> b!4430002 m!5114145))

(declare-fun m!5114147 () Bool)

(assert (=> b!4429999 m!5114147))

(assert (=> b!4429999 m!5114147))

(declare-fun m!5114149 () Bool)

(assert (=> b!4429999 m!5114149))

(declare-fun m!5114151 () Bool)

(assert (=> b!4430003 m!5114151))

(declare-fun m!5114153 () Bool)

(assert (=> b!4430005 m!5114153))

(check-sat tp_is_empty!26371 (not start!432512) (not b!4430000) (not b!4430005) (not b!4430004) (not b!4430006) (not b!4429998) (not b!4430003) (not b!4429997) (not b!4430007) (not b!4429999) tp_is_empty!26369 (not b!4430002))
(check-sat)
