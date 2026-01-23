; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!432516 () Bool)

(assert start!432516)

(declare-fun b!4430069 () Bool)

(declare-fun res!1832427 () Bool)

(declare-fun e!2758381 () Bool)

(assert (=> b!4430069 (=> (not res!1832427) (not e!2758381))))

(declare-datatypes ((K!11030 0))(
  ( (K!11031 (val!17095 Int)) )
))
(declare-datatypes ((V!11276 0))(
  ( (V!11277 (val!17096 Int)) )
))
(declare-datatypes ((tuple2!49510 0))(
  ( (tuple2!49511 (_1!28049 K!11030) (_2!28049 V!11276)) )
))
(declare-datatypes ((List!49785 0))(
  ( (Nil!49661) (Cons!49661 (h!55358 tuple2!49510) (t!356723 List!49785)) )
))
(declare-fun newBucket!194 () List!49785)

(declare-datatypes ((Hashable!5177 0))(
  ( (HashableExt!5176 (__x!30880 Int)) )
))
(declare-fun hashF!1220 () Hashable!5177)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun allKeysSameHash!743 (List!49785 (_ BitVec 64) Hashable!5177) Bool)

(assert (=> b!4430069 (= res!1832427 (allKeysSameHash!743 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4430070 () Bool)

(declare-fun e!2758377 () Bool)

(declare-fun tp!1333513 () Bool)

(assert (=> b!4430070 (= e!2758377 tp!1333513)))

(declare-fun b!4430071 () Bool)

(declare-fun res!1832423 () Bool)

(assert (=> b!4430071 (=> (not res!1832423) (not e!2758381))))

(declare-datatypes ((tuple2!49512 0))(
  ( (tuple2!49513 (_1!28050 (_ BitVec 64)) (_2!28050 List!49785)) )
))
(declare-datatypes ((List!49786 0))(
  ( (Nil!49662) (Cons!49662 (h!55359 tuple2!49512) (t!356724 List!49786)) )
))
(declare-datatypes ((ListLongMap!2203 0))(
  ( (ListLongMap!2204 (toList!3553 List!49786)) )
))
(declare-fun lm!1616 () ListLongMap!2203)

(declare-fun key!3717 () K!11030)

(declare-datatypes ((ListMap!2797 0))(
  ( (ListMap!2798 (toList!3554 List!49785)) )
))
(declare-fun contains!12186 (ListMap!2797 K!11030) Bool)

(declare-fun extractMap!844 (List!49786) ListMap!2797)

(assert (=> b!4430071 (= res!1832423 (not (contains!12186 (extractMap!844 (toList!3553 lm!1616)) key!3717)))))

(declare-fun b!4430072 () Bool)

(declare-fun res!1832424 () Bool)

(declare-fun e!2758382 () Bool)

(assert (=> b!4430072 (=> (not res!1832424) (not e!2758382))))

(declare-fun noDuplicateKeys!783 (List!49785) Bool)

(assert (=> b!4430072 (= res!1832424 (noDuplicateKeys!783 newBucket!194))))

(declare-fun b!4430073 () Bool)

(declare-fun res!1832428 () Bool)

(assert (=> b!4430073 (=> (not res!1832428) (not e!2758382))))

(declare-fun lambda!155074 () Int)

(declare-fun forall!9610 (List!49786 Int) Bool)

(assert (=> b!4430073 (= res!1832428 (forall!9610 (toList!3553 lm!1616) lambda!155074))))

(declare-fun b!4430068 () Bool)

(declare-fun lt!1629115 () ListLongMap!2203)

(assert (=> b!4430068 (= e!2758382 (not (forall!9610 (toList!3553 lt!1629115) lambda!155074)))))

(assert (=> b!4430068 (forall!9610 (toList!3553 lt!1629115) lambda!155074)))

(declare-fun +!1137 (ListLongMap!2203 tuple2!49512) ListLongMap!2203)

(assert (=> b!4430068 (= lt!1629115 (+!1137 lm!1616 (tuple2!49513 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!82627 0))(
  ( (Unit!82628) )
))
(declare-fun lt!1629116 () Unit!82627)

(declare-fun addValidProp!425 (ListLongMap!2203 Int (_ BitVec 64) List!49785) Unit!82627)

(assert (=> b!4430068 (= lt!1629116 (addValidProp!425 lm!1616 lambda!155074 hash!366 newBucket!194))))

(declare-fun res!1832422 () Bool)

(assert (=> start!432516 (=> (not res!1832422) (not e!2758381))))

(assert (=> start!432516 (= res!1832422 (forall!9610 (toList!3553 lm!1616) lambda!155074))))

(assert (=> start!432516 e!2758381))

(declare-fun tp_is_empty!26377 () Bool)

(assert (=> start!432516 tp_is_empty!26377))

(declare-fun tp_is_empty!26379 () Bool)

(assert (=> start!432516 tp_is_empty!26379))

(declare-fun e!2758380 () Bool)

(assert (=> start!432516 e!2758380))

(declare-fun inv!65216 (ListLongMap!2203) Bool)

(assert (=> start!432516 (and (inv!65216 lm!1616) e!2758377)))

(assert (=> start!432516 true))

(declare-fun b!4430074 () Bool)

(declare-fun res!1832426 () Bool)

(assert (=> b!4430074 (=> (not res!1832426) (not e!2758381))))

(declare-fun allKeysSameHashInMap!889 (ListLongMap!2203 Hashable!5177) Bool)

(assert (=> b!4430074 (= res!1832426 (allKeysSameHashInMap!889 lm!1616 hashF!1220))))

(declare-fun newValue!93 () V!11276)

(declare-fun b!4430075 () Bool)

(declare-fun e!2758378 () Bool)

(declare-fun apply!11635 (ListLongMap!2203 (_ BitVec 64)) List!49785)

(assert (=> b!4430075 (= e!2758378 (= newBucket!194 (Cons!49661 (tuple2!49511 key!3717 newValue!93) (apply!11635 lm!1616 hash!366))))))

(declare-fun lt!1629117 () Bool)

(declare-fun e!2758379 () Bool)

(declare-fun b!4430076 () Bool)

(assert (=> b!4430076 (= e!2758379 (and (not lt!1629117) (= newBucket!194 (Cons!49661 (tuple2!49511 key!3717 newValue!93) Nil!49661))))))

(declare-fun b!4430077 () Bool)

(declare-fun res!1832431 () Bool)

(assert (=> b!4430077 (=> (not res!1832431) (not e!2758381))))

(declare-fun hash!2196 (Hashable!5177 K!11030) (_ BitVec 64))

(assert (=> b!4430077 (= res!1832431 (= (hash!2196 hashF!1220 key!3717) hash!366))))

(declare-fun b!4430078 () Bool)

(declare-fun tp!1333514 () Bool)

(assert (=> b!4430078 (= e!2758380 (and tp_is_empty!26379 tp_is_empty!26377 tp!1333514))))

(declare-fun b!4430079 () Bool)

(assert (=> b!4430079 (= e!2758381 e!2758382)))

(declare-fun res!1832425 () Bool)

(assert (=> b!4430079 (=> (not res!1832425) (not e!2758382))))

(assert (=> b!4430079 (= res!1832425 e!2758379)))

(declare-fun res!1832429 () Bool)

(assert (=> b!4430079 (=> res!1832429 e!2758379)))

(assert (=> b!4430079 (= res!1832429 e!2758378)))

(declare-fun res!1832430 () Bool)

(assert (=> b!4430079 (=> (not res!1832430) (not e!2758378))))

(assert (=> b!4430079 (= res!1832430 lt!1629117)))

(declare-fun contains!12187 (ListLongMap!2203 (_ BitVec 64)) Bool)

(assert (=> b!4430079 (= lt!1629117 (contains!12187 lm!1616 hash!366))))

(assert (= (and start!432516 res!1832422) b!4430074))

(assert (= (and b!4430074 res!1832426) b!4430077))

(assert (= (and b!4430077 res!1832431) b!4430069))

(assert (= (and b!4430069 res!1832427) b!4430071))

(assert (= (and b!4430071 res!1832423) b!4430079))

(assert (= (and b!4430079 res!1832430) b!4430075))

(assert (= (and b!4430079 (not res!1832429)) b!4430076))

(assert (= (and b!4430079 res!1832425) b!4430072))

(assert (= (and b!4430072 res!1832424) b!4430073))

(assert (= (and b!4430073 res!1832428) b!4430068))

(get-info :version)

(assert (= (and start!432516 ((_ is Cons!49661) newBucket!194)) b!4430078))

(assert (= start!432516 b!4430070))

(declare-fun m!5114181 () Bool)

(assert (=> start!432516 m!5114181))

(declare-fun m!5114183 () Bool)

(assert (=> start!432516 m!5114183))

(declare-fun m!5114185 () Bool)

(assert (=> b!4430069 m!5114185))

(declare-fun m!5114187 () Bool)

(assert (=> b!4430079 m!5114187))

(declare-fun m!5114189 () Bool)

(assert (=> b!4430071 m!5114189))

(assert (=> b!4430071 m!5114189))

(declare-fun m!5114191 () Bool)

(assert (=> b!4430071 m!5114191))

(declare-fun m!5114193 () Bool)

(assert (=> b!4430068 m!5114193))

(assert (=> b!4430068 m!5114193))

(declare-fun m!5114195 () Bool)

(assert (=> b!4430068 m!5114195))

(declare-fun m!5114197 () Bool)

(assert (=> b!4430068 m!5114197))

(assert (=> b!4430073 m!5114181))

(declare-fun m!5114199 () Bool)

(assert (=> b!4430074 m!5114199))

(declare-fun m!5114201 () Bool)

(assert (=> b!4430077 m!5114201))

(declare-fun m!5114203 () Bool)

(assert (=> b!4430075 m!5114203))

(declare-fun m!5114205 () Bool)

(assert (=> b!4430072 m!5114205))

(check-sat (not b!4430078) (not b!4430074) (not b!4430071) (not b!4430075) (not b!4430069) (not b!4430072) (not start!432516) (not b!4430077) (not b!4430079) (not b!4430070) tp_is_empty!26377 tp_is_empty!26379 (not b!4430073) (not b!4430068))
(check-sat)
