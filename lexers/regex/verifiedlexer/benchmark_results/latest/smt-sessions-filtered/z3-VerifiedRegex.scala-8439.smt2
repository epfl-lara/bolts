; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437508 () Bool)

(assert start!437508)

(declare-fun b!4461397 () Bool)

(declare-fun res!1850176 () Bool)

(declare-fun e!2778095 () Bool)

(assert (=> b!4461397 (=> (not res!1850176) (not e!2778095))))

(declare-datatypes ((K!11600 0))(
  ( (K!11601 (val!17551 Int)) )
))
(declare-datatypes ((V!11846 0))(
  ( (V!11847 (val!17552 Int)) )
))
(declare-datatypes ((tuple2!50370 0))(
  ( (tuple2!50371 (_1!28479 K!11600) (_2!28479 V!11846)) )
))
(declare-datatypes ((List!50311 0))(
  ( (Nil!50187) (Cons!50187 (h!55932 tuple2!50370) (t!357261 List!50311)) )
))
(declare-datatypes ((tuple2!50372 0))(
  ( (tuple2!50373 (_1!28480 (_ BitVec 64)) (_2!28480 List!50311)) )
))
(declare-datatypes ((List!50312 0))(
  ( (Nil!50188) (Cons!50188 (h!55933 tuple2!50372) (t!357262 List!50312)) )
))
(declare-datatypes ((ListLongMap!2607 0))(
  ( (ListLongMap!2608 (toList!3975 List!50312)) )
))
(declare-fun lm!1477 () ListLongMap!2607)

(declare-fun key!3287 () K!11600)

(declare-datatypes ((ListMap!3237 0))(
  ( (ListMap!3238 (toList!3976 List!50311)) )
))
(declare-fun contains!12691 (ListMap!3237 K!11600) Bool)

(declare-fun extractMap!1040 (List!50312) ListMap!3237)

(assert (=> b!4461397 (= res!1850176 (contains!12691 (extractMap!1040 (toList!3975 lm!1477)) key!3287))))

(declare-fun res!1850174 () Bool)

(assert (=> start!437508 (=> (not res!1850174) (not e!2778095))))

(declare-fun lambda!161861 () Int)

(declare-fun forall!9924 (List!50312 Int) Bool)

(assert (=> start!437508 (= res!1850174 (forall!9924 (toList!3975 lm!1477) lambda!161861))))

(assert (=> start!437508 e!2778095))

(assert (=> start!437508 true))

(declare-fun e!2778097 () Bool)

(declare-fun inv!65784 (ListLongMap!2607) Bool)

(assert (=> start!437508 (and (inv!65784 lm!1477) e!2778097)))

(declare-fun tp_is_empty!27213 () Bool)

(assert (=> start!437508 tp_is_empty!27213))

(declare-fun e!2778096 () Bool)

(assert (=> start!437508 e!2778096))

(declare-fun b!4461398 () Bool)

(declare-fun tp!1335790 () Bool)

(assert (=> b!4461398 (= e!2778097 tp!1335790)))

(declare-fun b!4461399 () Bool)

(declare-fun res!1850173 () Bool)

(assert (=> b!4461399 (=> (not res!1850173) (not e!2778095))))

(declare-datatypes ((Hashable!5379 0))(
  ( (HashableExt!5378 (__x!31082 Int)) )
))
(declare-fun hashF!1107 () Hashable!5379)

(declare-fun allKeysSameHashInMap!1091 (ListLongMap!2607 Hashable!5379) Bool)

(assert (=> b!4461399 (= res!1850173 (allKeysSameHashInMap!1091 lm!1477 hashF!1107))))

(declare-fun b!4461400 () Bool)

(declare-fun tp!1335791 () Bool)

(declare-fun tp_is_empty!27215 () Bool)

(assert (=> b!4461400 (= e!2778096 (and tp_is_empty!27213 tp_is_empty!27215 tp!1335791))))

(declare-fun b!4461401 () Bool)

(declare-fun e!2778094 () Bool)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun contains!12692 (ListLongMap!2607 (_ BitVec 64)) Bool)

(assert (=> b!4461401 (= e!2778094 (not (contains!12692 lm!1477 hash!344)))))

(declare-fun lt!1652497 () (_ BitVec 64))

(assert (=> b!4461401 (contains!12692 lm!1477 lt!1652497)))

(declare-datatypes ((Unit!86846 0))(
  ( (Unit!86847) )
))
(declare-fun lt!1652498 () Unit!86846)

(declare-fun lemmaInGenMapThenLongMapContainsHash!58 (ListLongMap!2607 K!11600 Hashable!5379) Unit!86846)

(assert (=> b!4461401 (= lt!1652498 (lemmaInGenMapThenLongMapContainsHash!58 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4461402 () Bool)

(assert (=> b!4461402 (= e!2778095 e!2778094)))

(declare-fun res!1850177 () Bool)

(assert (=> b!4461402 (=> (not res!1850177) (not e!2778094))))

(assert (=> b!4461402 (= res!1850177 (= lt!1652497 hash!344))))

(declare-fun hash!2366 (Hashable!5379 K!11600) (_ BitVec 64))

(assert (=> b!4461402 (= lt!1652497 (hash!2366 hashF!1107 key!3287))))

(declare-fun b!4461403 () Bool)

(declare-fun res!1850175 () Bool)

(assert (=> b!4461403 (=> (not res!1850175) (not e!2778094))))

(declare-fun newBucket!178 () List!50311)

(declare-fun allKeysSameHash!838 (List!50311 (_ BitVec 64) Hashable!5379) Bool)

(assert (=> b!4461403 (= res!1850175 (allKeysSameHash!838 newBucket!178 hash!344 hashF!1107))))

(assert (= (and start!437508 res!1850174) b!4461399))

(assert (= (and b!4461399 res!1850173) b!4461397))

(assert (= (and b!4461397 res!1850176) b!4461402))

(assert (= (and b!4461402 res!1850177) b!4461403))

(assert (= (and b!4461403 res!1850175) b!4461401))

(assert (= start!437508 b!4461398))

(get-info :version)

(assert (= (and start!437508 ((_ is Cons!50187) newBucket!178)) b!4461400))

(declare-fun m!5164365 () Bool)

(assert (=> b!4461399 m!5164365))

(declare-fun m!5164367 () Bool)

(assert (=> b!4461403 m!5164367))

(declare-fun m!5164369 () Bool)

(assert (=> start!437508 m!5164369))

(declare-fun m!5164371 () Bool)

(assert (=> start!437508 m!5164371))

(declare-fun m!5164373 () Bool)

(assert (=> b!4461401 m!5164373))

(declare-fun m!5164375 () Bool)

(assert (=> b!4461401 m!5164375))

(declare-fun m!5164377 () Bool)

(assert (=> b!4461401 m!5164377))

(declare-fun m!5164379 () Bool)

(assert (=> b!4461402 m!5164379))

(declare-fun m!5164381 () Bool)

(assert (=> b!4461397 m!5164381))

(assert (=> b!4461397 m!5164381))

(declare-fun m!5164383 () Bool)

(assert (=> b!4461397 m!5164383))

(check-sat (not b!4461401) (not b!4461399) (not b!4461402) tp_is_empty!27215 (not b!4461403) (not b!4461397) (not b!4461398) (not start!437508) (not b!4461400) tp_is_empty!27213)
(check-sat)
