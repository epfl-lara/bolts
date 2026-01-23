; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!433408 () Bool)

(assert start!433408)

(declare-fun b!4434492 () Bool)

(declare-fun res!1835046 () Bool)

(declare-fun e!2761238 () Bool)

(assert (=> b!4434492 (=> (not res!1835046) (not e!2761238))))

(declare-datatypes ((V!11316 0))(
  ( (V!11317 (val!17127 Int)) )
))
(declare-datatypes ((K!11070 0))(
  ( (K!11071 (val!17128 Int)) )
))
(declare-datatypes ((tuple2!49574 0))(
  ( (tuple2!49575 (_1!28081 K!11070) (_2!28081 V!11316)) )
))
(declare-datatypes ((List!49827 0))(
  ( (Nil!49703) (Cons!49703 (h!55410 tuple2!49574) (t!356769 List!49827)) )
))
(declare-datatypes ((tuple2!49576 0))(
  ( (tuple2!49577 (_1!28082 (_ BitVec 64)) (_2!28082 List!49827)) )
))
(declare-datatypes ((List!49828 0))(
  ( (Nil!49704) (Cons!49704 (h!55411 tuple2!49576) (t!356770 List!49828)) )
))
(declare-datatypes ((ListLongMap!2235 0))(
  ( (ListLongMap!2236 (toList!3585 List!49828)) )
))
(declare-fun lm!1616 () ListLongMap!2235)

(declare-fun key!3717 () K!11070)

(declare-datatypes ((ListMap!2829 0))(
  ( (ListMap!2830 (toList!3586 List!49827)) )
))
(declare-fun contains!12246 (ListMap!2829 K!11070) Bool)

(declare-fun extractMap!860 (List!49828) ListMap!2829)

(assert (=> b!4434492 (= res!1835046 (not (contains!12246 (extractMap!860 (toList!3585 lm!1616)) key!3717)))))

(declare-fun b!4434493 () Bool)

(declare-fun res!1835056 () Bool)

(declare-fun e!2761239 () Bool)

(assert (=> b!4434493 (=> (not res!1835056) (not e!2761239))))

(declare-fun lambda!155946 () Int)

(declare-fun forall!9644 (List!49828 Int) Bool)

(assert (=> b!4434493 (= res!1835056 (forall!9644 (toList!3585 lm!1616) lambda!155946))))

(declare-fun b!4434494 () Bool)

(declare-fun res!1835051 () Bool)

(assert (=> b!4434494 (=> (not res!1835051) (not e!2761239))))

(declare-fun newBucket!194 () List!49827)

(declare-fun noDuplicateKeys!799 (List!49827) Bool)

(assert (=> b!4434494 (= res!1835051 (noDuplicateKeys!799 newBucket!194))))

(declare-fun newValue!93 () V!11316)

(declare-fun b!4434495 () Bool)

(declare-fun e!2761231 () Bool)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun apply!11651 (ListLongMap!2235 (_ BitVec 64)) List!49827)

(assert (=> b!4434495 (= e!2761231 (= newBucket!194 (Cons!49703 (tuple2!49575 key!3717 newValue!93) (apply!11651 lm!1616 hash!366))))))

(declare-fun b!4434496 () Bool)

(declare-fun e!2761237 () Bool)

(declare-fun tp!1333752 () Bool)

(assert (=> b!4434496 (= e!2761237 tp!1333752)))

(declare-fun b!4434497 () Bool)

(assert (=> b!4434497 (= e!2761238 e!2761239)))

(declare-fun res!1835060 () Bool)

(assert (=> b!4434497 (=> (not res!1835060) (not e!2761239))))

(declare-fun e!2761233 () Bool)

(assert (=> b!4434497 (= res!1835060 e!2761233)))

(declare-fun res!1835053 () Bool)

(assert (=> b!4434497 (=> res!1835053 e!2761233)))

(assert (=> b!4434497 (= res!1835053 e!2761231)))

(declare-fun res!1835059 () Bool)

(assert (=> b!4434497 (=> (not res!1835059) (not e!2761231))))

(declare-fun lt!1631866 () Bool)

(assert (=> b!4434497 (= res!1835059 (not lt!1631866))))

(declare-fun lt!1631855 () Bool)

(assert (=> b!4434497 (= lt!1631866 (not lt!1631855))))

(declare-fun contains!12247 (ListLongMap!2235 (_ BitVec 64)) Bool)

(assert (=> b!4434497 (= lt!1631855 (contains!12247 lm!1616 hash!366))))

(declare-fun b!4434498 () Bool)

(declare-fun e!2761236 () Bool)

(declare-fun e!2761232 () Bool)

(assert (=> b!4434498 (= e!2761236 e!2761232)))

(declare-fun res!1835058 () Bool)

(assert (=> b!4434498 (=> res!1835058 e!2761232)))

(declare-fun lt!1631864 () List!49827)

(declare-fun lt!1631867 () tuple2!49574)

(assert (=> b!4434498 (= res!1835058 (not (= newBucket!194 (Cons!49703 lt!1631867 lt!1631864))))))

(assert (=> b!4434498 (= lt!1631864 (apply!11651 lm!1616 hash!366))))

(assert (=> b!4434498 (= lt!1631867 (tuple2!49575 key!3717 newValue!93))))

(declare-fun b!4434499 () Bool)

(declare-fun res!1835049 () Bool)

(assert (=> b!4434499 (=> (not res!1835049) (not e!2761238))))

(declare-datatypes ((Hashable!5193 0))(
  ( (HashableExt!5192 (__x!30896 Int)) )
))
(declare-fun hashF!1220 () Hashable!5193)

(declare-fun hash!2222 (Hashable!5193 K!11070) (_ BitVec 64))

(assert (=> b!4434499 (= res!1835049 (= (hash!2222 hashF!1220 key!3717) hash!366))))

(declare-fun b!4434500 () Bool)

(declare-fun res!1835052 () Bool)

(declare-fun e!2761235 () Bool)

(assert (=> b!4434500 (=> res!1835052 e!2761235)))

(get-info :version)

(assert (=> b!4434500 (= res!1835052 (or (not ((_ is Cons!49704) (toList!3585 lm!1616))) (not (= (_1!28082 (h!55411 (toList!3585 lm!1616))) hash!366)) lt!1631866))))

(declare-fun b!4434501 () Bool)

(declare-fun e!2761234 () Bool)

(declare-fun lt!1631859 () ListMap!2829)

(declare-fun lt!1631863 () ListMap!2829)

(declare-fun eq!433 (ListMap!2829 ListMap!2829) Bool)

(assert (=> b!4434501 (= e!2761234 (eq!433 lt!1631859 lt!1631863))))

(declare-fun b!4434502 () Bool)

(declare-fun e!2761240 () Bool)

(assert (=> b!4434502 (= e!2761240 e!2761234)))

(declare-fun res!1835057 () Bool)

(assert (=> b!4434502 (=> res!1835057 e!2761234)))

(declare-fun lt!1631865 () ListMap!2829)

(assert (=> b!4434502 (= res!1835057 (not (eq!433 lt!1631865 lt!1631863)))))

(declare-fun lt!1631857 () ListMap!2829)

(assert (=> b!4434502 (eq!433 lt!1631857 lt!1631863)))

(declare-fun lt!1631858 () ListMap!2829)

(declare-fun +!1166 (ListMap!2829 tuple2!49574) ListMap!2829)

(declare-fun addToMapMapFromBucket!424 (List!49827 ListMap!2829) ListMap!2829)

(assert (=> b!4434502 (= lt!1631863 (+!1166 (addToMapMapFromBucket!424 lt!1631864 lt!1631858) lt!1631867))))

(declare-datatypes ((Unit!83081 0))(
  ( (Unit!83082) )
))
(declare-fun lt!1631856 () Unit!83081)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!204 (ListMap!2829 K!11070 V!11316 List!49827) Unit!83081)

(assert (=> b!4434502 (= lt!1631856 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!204 lt!1631858 key!3717 newValue!93 lt!1631864))))

(declare-fun b!4434503 () Bool)

(assert (=> b!4434503 (= e!2761233 (and (not lt!1631855) (= newBucket!194 (Cons!49703 (tuple2!49575 key!3717 newValue!93) Nil!49703))))))

(declare-fun res!1835048 () Bool)

(assert (=> start!433408 (=> (not res!1835048) (not e!2761238))))

(assert (=> start!433408 (= res!1835048 (forall!9644 (toList!3585 lm!1616) lambda!155946))))

(assert (=> start!433408 e!2761238))

(declare-fun tp_is_empty!26441 () Bool)

(assert (=> start!433408 tp_is_empty!26441))

(declare-fun tp_is_empty!26443 () Bool)

(assert (=> start!433408 tp_is_empty!26443))

(declare-fun e!2761230 () Bool)

(assert (=> start!433408 e!2761230))

(declare-fun inv!65256 (ListLongMap!2235) Bool)

(assert (=> start!433408 (and (inv!65256 lm!1616) e!2761237)))

(assert (=> start!433408 true))

(declare-fun tp!1333751 () Bool)

(declare-fun b!4434504 () Bool)

(assert (=> b!4434504 (= e!2761230 (and tp_is_empty!26443 tp_is_empty!26441 tp!1333751))))

(declare-fun b!4434505 () Bool)

(assert (=> b!4434505 (= e!2761239 (not e!2761235))))

(declare-fun res!1835047 () Bool)

(assert (=> b!4434505 (=> res!1835047 e!2761235)))

(declare-fun lt!1631861 () ListLongMap!2235)

(assert (=> b!4434505 (= res!1835047 (not (forall!9644 (toList!3585 lt!1631861) lambda!155946)))))

(assert (=> b!4434505 (forall!9644 (toList!3585 lt!1631861) lambda!155946)))

(declare-fun lt!1631862 () tuple2!49576)

(declare-fun +!1167 (ListLongMap!2235 tuple2!49576) ListLongMap!2235)

(assert (=> b!4434505 (= lt!1631861 (+!1167 lm!1616 lt!1631862))))

(assert (=> b!4434505 (= lt!1631862 (tuple2!49577 hash!366 newBucket!194))))

(declare-fun lt!1631860 () Unit!83081)

(declare-fun addValidProp!441 (ListLongMap!2235 Int (_ BitVec 64) List!49827) Unit!83081)

(assert (=> b!4434505 (= lt!1631860 (addValidProp!441 lm!1616 lambda!155946 hash!366 newBucket!194))))

(declare-fun b!4434506 () Bool)

(assert (=> b!4434506 (= e!2761235 e!2761236)))

(declare-fun res!1835055 () Bool)

(assert (=> b!4434506 (=> res!1835055 e!2761236)))

(assert (=> b!4434506 (= res!1835055 (not (= lt!1631859 lt!1631865)))))

(assert (=> b!4434506 (= lt!1631865 (addToMapMapFromBucket!424 newBucket!194 lt!1631858))))

(assert (=> b!4434506 (= lt!1631859 (extractMap!860 (toList!3585 lt!1631861)))))

(assert (=> b!4434506 (= lt!1631858 (extractMap!860 (t!356770 (toList!3585 lm!1616))))))

(declare-fun b!4434507 () Bool)

(assert (=> b!4434507 (= e!2761232 e!2761240)))

(declare-fun res!1835063 () Bool)

(assert (=> b!4434507 (=> res!1835063 e!2761240)))

(assert (=> b!4434507 (= res!1835063 (not (= lt!1631865 lt!1631857)))))

(assert (=> b!4434507 (= lt!1631857 (addToMapMapFromBucket!424 lt!1631864 (+!1166 lt!1631858 lt!1631867)))))

(declare-fun b!4434508 () Bool)

(declare-fun res!1835054 () Bool)

(assert (=> b!4434508 (=> (not res!1835054) (not e!2761238))))

(declare-fun allKeysSameHashInMap!905 (ListLongMap!2235 Hashable!5193) Bool)

(assert (=> b!4434508 (= res!1835054 (allKeysSameHashInMap!905 lm!1616 hashF!1220))))

(declare-fun b!4434509 () Bool)

(declare-fun res!1835062 () Bool)

(assert (=> b!4434509 (=> (not res!1835062) (not e!2761238))))

(declare-fun allKeysSameHash!759 (List!49827 (_ BitVec 64) Hashable!5193) Bool)

(assert (=> b!4434509 (= res!1835062 (allKeysSameHash!759 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4434510 () Bool)

(declare-fun res!1835050 () Bool)

(assert (=> b!4434510 (=> res!1835050 e!2761235)))

(declare-fun head!9264 (List!49828) tuple2!49576)

(assert (=> b!4434510 (= res!1835050 (not (= (head!9264 (toList!3585 lt!1631861)) lt!1631862)))))

(declare-fun b!4434511 () Bool)

(declare-fun res!1835061 () Bool)

(assert (=> b!4434511 (=> res!1835061 e!2761235)))

(declare-fun tail!7327 (List!49828) List!49828)

(assert (=> b!4434511 (= res!1835061 (not (= (tail!7327 (toList!3585 lt!1631861)) (t!356770 (toList!3585 lm!1616)))))))

(assert (= (and start!433408 res!1835048) b!4434508))

(assert (= (and b!4434508 res!1835054) b!4434499))

(assert (= (and b!4434499 res!1835049) b!4434509))

(assert (= (and b!4434509 res!1835062) b!4434492))

(assert (= (and b!4434492 res!1835046) b!4434497))

(assert (= (and b!4434497 res!1835059) b!4434495))

(assert (= (and b!4434497 (not res!1835053)) b!4434503))

(assert (= (and b!4434497 res!1835060) b!4434494))

(assert (= (and b!4434494 res!1835051) b!4434493))

(assert (= (and b!4434493 res!1835056) b!4434505))

(assert (= (and b!4434505 (not res!1835047)) b!4434500))

(assert (= (and b!4434500 (not res!1835052)) b!4434510))

(assert (= (and b!4434510 (not res!1835050)) b!4434511))

(assert (= (and b!4434511 (not res!1835061)) b!4434506))

(assert (= (and b!4434506 (not res!1835055)) b!4434498))

(assert (= (and b!4434498 (not res!1835058)) b!4434507))

(assert (= (and b!4434507 (not res!1835063)) b!4434502))

(assert (= (and b!4434502 (not res!1835057)) b!4434501))

(assert (= (and start!433408 ((_ is Cons!49703) newBucket!194)) b!4434504))

(assert (= start!433408 b!4434496))

(declare-fun m!5120051 () Bool)

(assert (=> b!4434498 m!5120051))

(declare-fun m!5120053 () Bool)

(assert (=> b!4434506 m!5120053))

(declare-fun m!5120055 () Bool)

(assert (=> b!4434506 m!5120055))

(declare-fun m!5120057 () Bool)

(assert (=> b!4434506 m!5120057))

(declare-fun m!5120059 () Bool)

(assert (=> b!4434499 m!5120059))

(declare-fun m!5120061 () Bool)

(assert (=> b!4434511 m!5120061))

(declare-fun m!5120063 () Bool)

(assert (=> b!4434509 m!5120063))

(declare-fun m!5120065 () Bool)

(assert (=> b!4434494 m!5120065))

(declare-fun m!5120067 () Bool)

(assert (=> b!4434508 m!5120067))

(declare-fun m!5120069 () Bool)

(assert (=> b!4434492 m!5120069))

(assert (=> b!4434492 m!5120069))

(declare-fun m!5120071 () Bool)

(assert (=> b!4434492 m!5120071))

(declare-fun m!5120073 () Bool)

(assert (=> b!4434502 m!5120073))

(declare-fun m!5120075 () Bool)

(assert (=> b!4434502 m!5120075))

(declare-fun m!5120077 () Bool)

(assert (=> b!4434502 m!5120077))

(declare-fun m!5120079 () Bool)

(assert (=> b!4434502 m!5120079))

(assert (=> b!4434502 m!5120077))

(declare-fun m!5120081 () Bool)

(assert (=> b!4434502 m!5120081))

(declare-fun m!5120083 () Bool)

(assert (=> b!4434505 m!5120083))

(assert (=> b!4434505 m!5120083))

(declare-fun m!5120085 () Bool)

(assert (=> b!4434505 m!5120085))

(declare-fun m!5120087 () Bool)

(assert (=> b!4434505 m!5120087))

(declare-fun m!5120089 () Bool)

(assert (=> b!4434497 m!5120089))

(assert (=> b!4434495 m!5120051))

(declare-fun m!5120091 () Bool)

(assert (=> b!4434501 m!5120091))

(declare-fun m!5120093 () Bool)

(assert (=> start!433408 m!5120093))

(declare-fun m!5120095 () Bool)

(assert (=> start!433408 m!5120095))

(assert (=> b!4434493 m!5120093))

(declare-fun m!5120097 () Bool)

(assert (=> b!4434507 m!5120097))

(assert (=> b!4434507 m!5120097))

(declare-fun m!5120099 () Bool)

(assert (=> b!4434507 m!5120099))

(declare-fun m!5120101 () Bool)

(assert (=> b!4434510 m!5120101))

(check-sat (not b!4434499) (not b!4434498) (not b!4434493) (not b!4434492) (not b!4434496) (not b!4434507) (not b!4434510) (not b!4434504) (not b!4434502) (not b!4434501) tp_is_empty!26441 (not b!4434495) (not b!4434509) (not b!4434508) tp_is_empty!26443 (not b!4434511) (not b!4434506) (not b!4434494) (not b!4434497) (not b!4434505) (not start!433408))
(check-sat)
