; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414038 () Bool)

(assert start!414038)

(declare-fun b!4308319 () Bool)

(declare-fun b_free!128515 () Bool)

(declare-fun b_next!129219 () Bool)

(assert (=> b!4308319 (= b_free!128515 (not b_next!129219))))

(declare-fun tp!1323979 () Bool)

(declare-fun b_and!339929 () Bool)

(assert (=> b!4308319 (= tp!1323979 b_and!339929)))

(declare-fun b!4308324 () Bool)

(declare-fun b_free!128517 () Bool)

(declare-fun b_next!129221 () Bool)

(assert (=> b!4308324 (= b_free!128517 (not b_next!129221))))

(declare-fun tp!1323983 () Bool)

(declare-fun b_and!339931 () Bool)

(assert (=> b!4308324 (= tp!1323983 b_and!339931)))

(declare-fun b!4308318 () Bool)

(declare-fun e!2679158 () Bool)

(declare-fun e!2679159 () Bool)

(assert (=> b!4308318 (= e!2679158 e!2679159)))

(declare-fun res!1765806 () Bool)

(assert (=> b!4308318 (=> (not res!1765806) (not e!2679159))))

(declare-datatypes ((V!9546 0))(
  ( (V!9547 (val!15733 Int)) )
))
(declare-datatypes ((K!9344 0))(
  ( (K!9345 (val!15734 Int)) )
))
(declare-datatypes ((tuple2!46492 0))(
  ( (tuple2!46493 (_1!26525 K!9344) (_2!26525 V!9546)) )
))
(declare-datatypes ((List!48278 0))(
  ( (Nil!48154) (Cons!48154 (h!53588 tuple2!46492) (t!355077 List!48278)) )
))
(declare-datatypes ((array!16712 0))(
  ( (array!16713 (arr!7463 (Array (_ BitVec 32) (_ BitVec 64))) (size!35502 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4555 0))(
  ( (HashableExt!4554 (__x!29942 Int)) )
))
(declare-datatypes ((array!16714 0))(
  ( (array!16715 (arr!7464 (Array (_ BitVec 32) List!48278)) (size!35503 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9278 0))(
  ( (LongMapFixedSize!9279 (defaultEntry!5024 Int) (mask!13187 (_ BitVec 32)) (extraKeys!4888 (_ BitVec 32)) (zeroValue!4898 List!48278) (minValue!4898 List!48278) (_size!9321 (_ BitVec 32)) (_keys!4939 array!16712) (_values!4920 array!16714) (_vacant!4700 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18365 0))(
  ( (Cell!18366 (v!42267 LongMapFixedSize!9278)) )
))
(declare-datatypes ((MutLongMap!4639 0))(
  ( (LongMap!4639 (underlying!9507 Cell!18365)) (MutLongMapExt!4638 (__x!29943 Int)) )
))
(declare-datatypes ((Cell!18367 0))(
  ( (Cell!18368 (v!42268 MutLongMap!4639)) )
))
(declare-datatypes ((MutableMap!4545 0))(
  ( (MutableMapExt!4544 (__x!29944 Int)) (HashMap!4545 (underlying!9508 Cell!18367) (hashF!6671 Hashable!4555) (_size!9322 (_ BitVec 32)) (defaultValue!4716 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4545)

(declare-fun key!2048 () K!9344)

(declare-fun contains!10123 (MutableMap!4545 K!9344) Bool)

(assert (=> b!4308318 (= res!1765806 (not (contains!10123 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!46494 0))(
  ( (tuple2!46495 (_1!26526 (_ BitVec 64)) (_2!26526 List!48278)) )
))
(declare-datatypes ((List!48279 0))(
  ( (Nil!48155) (Cons!48155 (h!53589 tuple2!46494) (t!355078 List!48279)) )
))
(declare-datatypes ((ListLongMap!979 0))(
  ( (ListLongMap!980 (toList!2366 List!48279)) )
))
(declare-fun lt!1528982 () ListLongMap!979)

(declare-fun map!10136 (MutLongMap!4639) ListLongMap!979)

(assert (=> b!4308318 (= lt!1528982 (map!10136 (v!42268 (underlying!9508 thiss!42308))))))

(declare-datatypes ((ListMap!1647 0))(
  ( (ListMap!1648 (toList!2367 List!48278)) )
))
(declare-fun lt!1528980 () ListMap!1647)

(declare-fun map!10137 (MutableMap!4545) ListMap!1647)

(assert (=> b!4308318 (= lt!1528980 (map!10137 thiss!42308))))

(declare-fun mapIsEmpty!20740 () Bool)

(declare-fun mapRes!20740 () Bool)

(assert (=> mapIsEmpty!20740 mapRes!20740))

(declare-fun e!2679157 () Bool)

(declare-fun tp!1323978 () Bool)

(declare-fun tp!1323980 () Bool)

(declare-fun e!2679165 () Bool)

(declare-fun array_inv!5351 (array!16712) Bool)

(declare-fun array_inv!5352 (array!16714) Bool)

(assert (=> b!4308319 (= e!2679165 (and tp!1323979 tp!1323980 tp!1323978 (array_inv!5351 (_keys!4939 (v!42267 (underlying!9507 (v!42268 (underlying!9508 thiss!42308)))))) (array_inv!5352 (_values!4920 (v!42267 (underlying!9507 (v!42268 (underlying!9508 thiss!42308)))))) e!2679157))))

(declare-fun b!4308320 () Bool)

(declare-fun tp!1323977 () Bool)

(assert (=> b!4308320 (= e!2679157 (and tp!1323977 mapRes!20740))))

(declare-fun condMapEmpty!20740 () Bool)

(declare-fun mapDefault!20740 () List!48278)

(assert (=> b!4308320 (= condMapEmpty!20740 (= (arr!7464 (_values!4920 (v!42267 (underlying!9507 (v!42268 (underlying!9508 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48278)) mapDefault!20740)))))

(declare-fun b!4308321 () Bool)

(declare-fun e!2679160 () List!48278)

(declare-fun lt!1528981 () (_ BitVec 64))

(declare-fun apply!10994 (MutLongMap!4639 (_ BitVec 64)) List!48278)

(assert (=> b!4308321 (= e!2679160 (apply!10994 (v!42268 (underlying!9508 thiss!42308)) lt!1528981))))

(declare-fun b!4308322 () Bool)

(declare-fun e!2679164 () Bool)

(assert (=> b!4308322 (= e!2679164 e!2679165)))

(declare-fun b!4308323 () Bool)

(declare-fun e!2679166 () Bool)

(assert (=> b!4308323 (= e!2679159 e!2679166)))

(declare-fun res!1765808 () Bool)

(assert (=> b!4308323 (=> (not res!1765808) (not e!2679166))))

(declare-datatypes ((tuple2!46496 0))(
  ( (tuple2!46497 (_1!26527 Bool) (_2!26527 MutLongMap!4639)) )
))
(declare-fun lt!1528983 () tuple2!46496)

(assert (=> b!4308323 (= res!1765808 (not (_1!26527 lt!1528983)))))

(declare-fun v!9179 () V!9546)

(declare-fun update!419 (MutLongMap!4639 (_ BitVec 64) List!48278) tuple2!46496)

(assert (=> b!4308323 (= lt!1528983 (update!419 (v!42268 (underlying!9508 thiss!42308)) lt!1528981 (Cons!48154 (tuple2!46493 key!2048 v!9179) e!2679160)))))

(declare-fun c!732498 () Bool)

(declare-fun contains!10124 (MutLongMap!4639 (_ BitVec 64)) Bool)

(assert (=> b!4308323 (= c!732498 (contains!10124 (v!42268 (underlying!9508 thiss!42308)) lt!1528981))))

(declare-fun hash!987 (Hashable!4555 K!9344) (_ BitVec 64))

(assert (=> b!4308323 (= lt!1528981 (hash!987 (hashF!6671 thiss!42308) key!2048))))

(declare-fun e!2679161 () Bool)

(declare-fun e!2679162 () Bool)

(assert (=> b!4308324 (= e!2679161 (and e!2679162 tp!1323983))))

(declare-fun res!1765809 () Bool)

(assert (=> start!414038 (=> (not res!1765809) (not e!2679158))))

(get-info :version)

(assert (=> start!414038 (= res!1765809 ((_ is HashMap!4545) thiss!42308))))

(assert (=> start!414038 e!2679158))

(assert (=> start!414038 e!2679161))

(declare-fun tp_is_empty!23677 () Bool)

(assert (=> start!414038 tp_is_empty!23677))

(declare-fun tp_is_empty!23679 () Bool)

(assert (=> start!414038 tp_is_empty!23679))

(declare-fun b!4308325 () Bool)

(assert (=> b!4308325 (= e!2679160 Nil!48154)))

(declare-fun b!4308326 () Bool)

(declare-fun res!1765807 () Bool)

(assert (=> b!4308326 (=> (not res!1765807) (not e!2679158))))

(declare-fun valid!3627 (MutableMap!4545) Bool)

(assert (=> b!4308326 (= res!1765807 (valid!3627 thiss!42308))))

(declare-fun b!4308327 () Bool)

(declare-fun e!2679156 () Bool)

(assert (=> b!4308327 (= e!2679156 e!2679164)))

(declare-fun b!4308328 () Bool)

(declare-fun lt!1528979 () MutLongMap!4639)

(assert (=> b!4308328 (= e!2679162 (and e!2679156 ((_ is LongMap!4639) lt!1528979)))))

(assert (=> b!4308328 (= lt!1528979 (v!42268 (underlying!9508 thiss!42308)))))

(declare-fun b!4308329 () Bool)

(assert (=> b!4308329 (= e!2679166 (not true))))

(assert (=> b!4308329 (valid!3627 (HashMap!4545 (Cell!18368 (_2!26527 lt!1528983)) (hashF!6671 thiss!42308) (_size!9322 thiss!42308) (defaultValue!4716 thiss!42308)))))

(declare-fun mapNonEmpty!20740 () Bool)

(declare-fun tp!1323981 () Bool)

(declare-fun tp!1323982 () Bool)

(assert (=> mapNonEmpty!20740 (= mapRes!20740 (and tp!1323981 tp!1323982))))

(declare-fun mapValue!20740 () List!48278)

(declare-fun mapKey!20740 () (_ BitVec 32))

(declare-fun mapRest!20740 () (Array (_ BitVec 32) List!48278))

(assert (=> mapNonEmpty!20740 (= (arr!7464 (_values!4920 (v!42267 (underlying!9507 (v!42268 (underlying!9508 thiss!42308)))))) (store mapRest!20740 mapKey!20740 mapValue!20740))))

(assert (= (and start!414038 res!1765809) b!4308326))

(assert (= (and b!4308326 res!1765807) b!4308318))

(assert (= (and b!4308318 res!1765806) b!4308323))

(assert (= (and b!4308323 c!732498) b!4308321))

(assert (= (and b!4308323 (not c!732498)) b!4308325))

(assert (= (and b!4308323 res!1765808) b!4308329))

(assert (= (and b!4308320 condMapEmpty!20740) mapIsEmpty!20740))

(assert (= (and b!4308320 (not condMapEmpty!20740)) mapNonEmpty!20740))

(assert (= b!4308319 b!4308320))

(assert (= b!4308322 b!4308319))

(assert (= b!4308327 b!4308322))

(assert (= (and b!4308328 ((_ is LongMap!4639) (v!42268 (underlying!9508 thiss!42308)))) b!4308327))

(assert (= b!4308324 b!4308328))

(assert (= (and start!414038 ((_ is HashMap!4545) thiss!42308)) b!4308324))

(declare-fun m!4901489 () Bool)

(assert (=> b!4308319 m!4901489))

(declare-fun m!4901491 () Bool)

(assert (=> b!4308319 m!4901491))

(declare-fun m!4901493 () Bool)

(assert (=> b!4308321 m!4901493))

(declare-fun m!4901495 () Bool)

(assert (=> b!4308318 m!4901495))

(declare-fun m!4901497 () Bool)

(assert (=> b!4308318 m!4901497))

(declare-fun m!4901499 () Bool)

(assert (=> b!4308318 m!4901499))

(declare-fun m!4901501 () Bool)

(assert (=> b!4308326 m!4901501))

(declare-fun m!4901503 () Bool)

(assert (=> b!4308323 m!4901503))

(declare-fun m!4901505 () Bool)

(assert (=> b!4308323 m!4901505))

(declare-fun m!4901507 () Bool)

(assert (=> b!4308323 m!4901507))

(declare-fun m!4901509 () Bool)

(assert (=> mapNonEmpty!20740 m!4901509))

(declare-fun m!4901511 () Bool)

(assert (=> b!4308329 m!4901511))

(check-sat (not mapNonEmpty!20740) tp_is_empty!23677 (not b!4308329) (not b_next!129219) (not b!4308323) (not b!4308321) (not b!4308320) b_and!339931 (not b!4308326) (not b!4308319) b_and!339929 (not b!4308318) tp_is_empty!23679 (not b_next!129221))
(check-sat b_and!339929 b_and!339931 (not b_next!129221) (not b_next!129219))
