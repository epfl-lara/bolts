; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413636 () Bool)

(assert start!413636)

(declare-fun b!4305489 () Bool)

(declare-fun b_free!128371 () Bool)

(declare-fun b_next!129075 () Bool)

(assert (=> b!4305489 (= b_free!128371 (not b_next!129075))))

(declare-fun tp!1323117 () Bool)

(declare-fun b_and!339771 () Bool)

(assert (=> b!4305489 (= tp!1323117 b_and!339771)))

(declare-fun b!4305492 () Bool)

(declare-fun b_free!128373 () Bool)

(declare-fun b_next!129077 () Bool)

(assert (=> b!4305492 (= b_free!128373 (not b_next!129077))))

(declare-fun tp!1323118 () Bool)

(declare-fun b_and!339773 () Bool)

(assert (=> b!4305492 (= tp!1323118 b_and!339773)))

(declare-fun b!4305490 () Bool)

(declare-fun e!2677076 () Bool)

(assert (=> b!4305490 e!2677076))

(declare-fun b!4305506 () Bool)

(declare-fun e!2677080 () Bool)

(declare-fun e!2677078 () Bool)

(declare-datatypes ((V!9456 0))(
  ( (V!9457 (val!15661 Int)) )
))
(declare-datatypes ((K!9254 0))(
  ( (K!9255 (val!15662 Int)) )
))
(declare-datatypes ((tuple2!46292 0))(
  ( (tuple2!46293 (_1!26425 K!9254) (_2!26425 V!9456)) )
))
(declare-datatypes ((List!48211 0))(
  ( (Nil!48087) (Cons!48087 (h!53514 tuple2!46292) (t!354996 List!48211)) )
))
(declare-datatypes ((array!16554 0))(
  ( (array!16555 (arr!7391 (Array (_ BitVec 32) (_ BitVec 64))) (size!35430 (_ BitVec 32))) )
))
(declare-datatypes ((array!16556 0))(
  ( (array!16557 (arr!7392 (Array (_ BitVec 32) List!48211)) (size!35431 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9206 0))(
  ( (LongMapFixedSize!9207 (defaultEntry!4988 Int) (mask!13133 (_ BitVec 32)) (extraKeys!4852 (_ BitVec 32)) (zeroValue!4862 List!48211) (minValue!4862 List!48211) (_size!9249 (_ BitVec 32)) (_keys!4903 array!16554) (_values!4884 array!16556) (_vacant!4664 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18221 0))(
  ( (Cell!18222 (v!42142 LongMapFixedSize!9206)) )
))
(declare-datatypes ((MutLongMap!4603 0))(
  ( (LongMap!4603 (underlying!9435 Cell!18221)) (MutLongMapExt!4602 (__x!29834 Int)) )
))
(declare-fun lt!1526669 () MutLongMap!4603)

(get-info :version)

(assert (=> b!4305506 (= e!2677080 (and e!2677078 ((_ is LongMap!4603) lt!1526669)))))

(declare-datatypes ((Hashable!4519 0))(
  ( (HashableExt!4518 (__x!29835 Int)) )
))
(declare-datatypes ((Cell!18223 0))(
  ( (Cell!18224 (v!42143 MutLongMap!4603)) )
))
(declare-datatypes ((MutableMap!4509 0))(
  ( (MutableMapExt!4508 (__x!29836 Int)) (HashMap!4509 (underlying!9436 Cell!18223) (hashF!6593 Hashable!4519) (_size!9250 (_ BitVec 32)) (defaultValue!4680 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4509)

(assert (=> b!4305506 (= lt!1526669 (v!42143 (underlying!9436 thiss!42308)))))

(declare-fun b!4305507 () Bool)

(declare-fun e!2677079 () Bool)

(assert (=> b!4305507 (= e!2677079 true)))

(declare-fun b!4305508 () Bool)

(assert (=> b!4305508 (= e!2677076 e!2677080)))

(declare-fun b!4305509 () Bool)

(declare-fun e!2677077 () Bool)

(assert (=> b!4305509 (= e!2677078 e!2677077)))

(declare-fun b!4305510 () Bool)

(assert (=> b!4305510 (= e!2677077 e!2677079)))

(assert (= b!4305510 b!4305507))

(assert (= b!4305509 b!4305510))

(assert (= (and b!4305506 ((_ is LongMap!4603) (v!42143 (underlying!9436 thiss!42308)))) b!4305509))

(assert (= b!4305508 b!4305506))

(assert (= (and b!4305490 ((_ is HashMap!4509) thiss!42308)) b!4305508))

(declare-fun order!25085 () Int)

(declare-fun order!25087 () Int)

(declare-fun lambda!132436 () Int)

(declare-fun dynLambda!20404 (Int Int) Int)

(declare-fun dynLambda!20405 (Int Int) Int)

(assert (=> b!4305507 (< (dynLambda!20404 order!25085 (defaultEntry!4988 (v!42142 (underlying!9435 (v!42143 (underlying!9436 thiss!42308)))))) (dynLambda!20405 order!25087 lambda!132436))))

(declare-fun order!25089 () Int)

(declare-fun dynLambda!20406 (Int Int) Int)

(assert (=> b!4305508 (< (dynLambda!20406 order!25089 (defaultValue!4680 thiss!42308)) (dynLambda!20405 order!25087 lambda!132436))))

(declare-fun b!4305479 () Bool)

(declare-fun res!1764683 () Bool)

(declare-fun e!2677055 () Bool)

(assert (=> b!4305479 (=> (not res!1764683) (not e!2677055))))

(declare-fun lt!1526666 () List!48211)

(declare-fun lt!1526663 () (_ BitVec 64))

(declare-datatypes ((tuple2!46294 0))(
  ( (tuple2!46295 (_1!26426 (_ BitVec 64)) (_2!26426 List!48211)) )
))
(declare-datatypes ((List!48212 0))(
  ( (Nil!48088) (Cons!48088 (h!53515 tuple2!46294) (t!354997 List!48212)) )
))
(declare-datatypes ((ListLongMap!919 0))(
  ( (ListLongMap!920 (toList!2309 List!48212)) )
))
(declare-fun lt!1526662 () ListLongMap!919)

(declare-fun contains!10024 (List!48212 tuple2!46294) Bool)

(assert (=> b!4305479 (= res!1764683 (contains!10024 (toList!2309 lt!1526662) (tuple2!46295 lt!1526663 lt!1526666)))))

(declare-fun b!4305480 () Bool)

(declare-fun e!2677060 () Bool)

(declare-fun tp!1323121 () Bool)

(declare-fun mapRes!20611 () Bool)

(assert (=> b!4305480 (= e!2677060 (and tp!1323121 mapRes!20611))))

(declare-fun condMapEmpty!20611 () Bool)

(declare-fun mapDefault!20611 () List!48211)

(assert (=> b!4305480 (= condMapEmpty!20611 (= (arr!7392 (_values!4884 (v!42142 (underlying!9435 (v!42143 (underlying!9436 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48211)) mapDefault!20611)))))

(declare-fun b!4305481 () Bool)

(declare-fun e!2677059 () Bool)

(declare-fun e!2677057 () Bool)

(assert (=> b!4305481 (= e!2677059 e!2677057)))

(declare-fun res!1764682 () Bool)

(assert (=> b!4305481 (=> (not res!1764682) (not e!2677057))))

(declare-fun key!2048 () K!9254)

(declare-fun contains!10025 (MutableMap!4509 K!9254) Bool)

(assert (=> b!4305481 (= res!1764682 (not (contains!10025 thiss!42308 key!2048)))))

(declare-fun map!10060 (MutLongMap!4603) ListLongMap!919)

(assert (=> b!4305481 (= lt!1526662 (map!10060 (v!42143 (underlying!9436 thiss!42308))))))

(declare-datatypes ((ListMap!1593 0))(
  ( (ListMap!1594 (toList!2310 List!48211)) )
))
(declare-fun lt!1526664 () ListMap!1593)

(declare-fun map!10061 (MutableMap!4509) ListMap!1593)

(assert (=> b!4305481 (= lt!1526664 (map!10061 thiss!42308))))

(declare-fun b!4305482 () Bool)

(assert (=> b!4305482 (= e!2677055 false)))

(declare-fun b!4305483 () Bool)

(declare-fun e!2677058 () List!48211)

(declare-fun apply!10951 (MutLongMap!4603 (_ BitVec 64)) List!48211)

(assert (=> b!4305483 (= e!2677058 (apply!10951 (v!42143 (underlying!9436 thiss!42308)) lt!1526663))))

(declare-fun b!4305484 () Bool)

(declare-fun e!2677065 () Bool)

(declare-fun e!2677064 () Bool)

(declare-fun lt!1526665 () MutLongMap!4603)

(assert (=> b!4305484 (= e!2677065 (and e!2677064 ((_ is LongMap!4603) lt!1526665)))))

(assert (=> b!4305484 (= lt!1526665 (v!42143 (underlying!9436 thiss!42308)))))

(declare-fun b!4305485 () Bool)

(declare-fun res!1764688 () Bool)

(assert (=> b!4305485 (=> (not res!1764688) (not e!2677059))))

(declare-fun valid!3591 (MutableMap!4509) Bool)

(assert (=> b!4305485 (= res!1764688 (valid!3591 thiss!42308))))

(declare-fun b!4305486 () Bool)

(assert (=> b!4305486 (= e!2677058 Nil!48087)))

(declare-fun mapNonEmpty!20611 () Bool)

(declare-fun tp!1323116 () Bool)

(declare-fun tp!1323119 () Bool)

(assert (=> mapNonEmpty!20611 (= mapRes!20611 (and tp!1323116 tp!1323119))))

(declare-fun mapKey!20611 () (_ BitVec 32))

(declare-fun mapRest!20611 () (Array (_ BitVec 32) List!48211))

(declare-fun mapValue!20611 () List!48211)

(assert (=> mapNonEmpty!20611 (= (arr!7392 (_values!4884 (v!42142 (underlying!9435 (v!42143 (underlying!9436 thiss!42308)))))) (store mapRest!20611 mapKey!20611 mapValue!20611))))

(declare-fun b!4305488 () Bool)

(declare-fun e!2677063 () Bool)

(assert (=> b!4305488 (= e!2677064 e!2677063)))

(declare-fun e!2677062 () Bool)

(declare-fun tp!1323122 () Bool)

(declare-fun tp!1323120 () Bool)

(declare-fun array_inv!5301 (array!16554) Bool)

(declare-fun array_inv!5302 (array!16556) Bool)

(assert (=> b!4305489 (= e!2677062 (and tp!1323117 tp!1323122 tp!1323120 (array_inv!5301 (_keys!4903 (v!42142 (underlying!9435 (v!42143 (underlying!9436 thiss!42308)))))) (array_inv!5302 (_values!4884 (v!42142 (underlying!9435 (v!42143 (underlying!9436 thiss!42308)))))) e!2677060))))

(declare-fun res!1764687 () Bool)

(assert (=> b!4305490 (=> (not res!1764687) (not e!2677055))))

(declare-fun forall!8689 (List!48212 Int) Bool)

(assert (=> b!4305490 (= res!1764687 (forall!8689 (toList!2309 lt!1526662) lambda!132436))))

(declare-fun mapIsEmpty!20611 () Bool)

(assert (=> mapIsEmpty!20611 mapRes!20611))

(declare-fun b!4305491 () Bool)

(declare-fun res!1764686 () Bool)

(assert (=> b!4305491 (=> (not res!1764686) (not e!2677055))))

(declare-fun isEmpty!28057 (List!48211) Bool)

(assert (=> b!4305491 (= res!1764686 (not (isEmpty!28057 lt!1526666)))))

(declare-fun res!1764684 () Bool)

(assert (=> start!413636 (=> (not res!1764684) (not e!2677059))))

(assert (=> start!413636 (= res!1764684 ((_ is HashMap!4509) thiss!42308))))

(assert (=> start!413636 e!2677059))

(declare-fun e!2677056 () Bool)

(assert (=> start!413636 e!2677056))

(declare-fun tp_is_empty!23533 () Bool)

(assert (=> start!413636 tp_is_empty!23533))

(declare-fun tp_is_empty!23535 () Bool)

(assert (=> start!413636 tp_is_empty!23535))

(declare-fun b!4305487 () Bool)

(assert (=> b!4305487 (= e!2677057 e!2677055)))

(declare-fun res!1764685 () Bool)

(assert (=> b!4305487 (=> (not res!1764685) (not e!2677055))))

(declare-fun v!9179 () V!9456)

(declare-datatypes ((tuple2!46296 0))(
  ( (tuple2!46297 (_1!26427 Bool) (_2!26427 MutLongMap!4603)) )
))
(declare-fun update!386 (MutLongMap!4603 (_ BitVec 64) List!48211) tuple2!46296)

(assert (=> b!4305487 (= res!1764685 (_1!26427 (update!386 (v!42143 (underlying!9436 thiss!42308)) lt!1526663 (Cons!48087 (tuple2!46293 key!2048 v!9179) lt!1526666))))))

(assert (=> b!4305487 (= lt!1526666 e!2677058)))

(declare-fun c!732050 () Bool)

(declare-fun contains!10026 (MutLongMap!4603 (_ BitVec 64)) Bool)

(assert (=> b!4305487 (= c!732050 (contains!10026 (v!42143 (underlying!9436 thiss!42308)) lt!1526663))))

(declare-fun hash!926 (Hashable!4519 K!9254) (_ BitVec 64))

(assert (=> b!4305487 (= lt!1526663 (hash!926 (hashF!6593 thiss!42308) key!2048))))

(assert (=> b!4305492 (= e!2677056 (and e!2677065 tp!1323118))))

(declare-fun b!4305493 () Bool)

(assert (=> b!4305493 (= e!2677063 e!2677062)))

(assert (= (and start!413636 res!1764684) b!4305485))

(assert (= (and b!4305485 res!1764688) b!4305481))

(assert (= (and b!4305481 res!1764682) b!4305487))

(assert (= (and b!4305487 c!732050) b!4305483))

(assert (= (and b!4305487 (not c!732050)) b!4305486))

(assert (= (and b!4305487 res!1764685) b!4305491))

(assert (= (and b!4305491 res!1764686) b!4305490))

(assert (= (and b!4305490 res!1764687) b!4305479))

(assert (= (and b!4305479 res!1764683) b!4305482))

(assert (= (and b!4305480 condMapEmpty!20611) mapIsEmpty!20611))

(assert (= (and b!4305480 (not condMapEmpty!20611)) mapNonEmpty!20611))

(assert (= b!4305489 b!4305480))

(assert (= b!4305493 b!4305489))

(assert (= b!4305488 b!4305493))

(assert (= (and b!4305484 ((_ is LongMap!4603) (v!42143 (underlying!9436 thiss!42308)))) b!4305488))

(assert (= b!4305492 b!4305484))

(assert (= (and start!413636 ((_ is HashMap!4509) thiss!42308)) b!4305492))

(declare-fun m!4898227 () Bool)

(assert (=> b!4305491 m!4898227))

(declare-fun m!4898229 () Bool)

(assert (=> b!4305489 m!4898229))

(declare-fun m!4898231 () Bool)

(assert (=> b!4305489 m!4898231))

(declare-fun m!4898233 () Bool)

(assert (=> b!4305479 m!4898233))

(declare-fun m!4898235 () Bool)

(assert (=> b!4305485 m!4898235))

(declare-fun m!4898237 () Bool)

(assert (=> b!4305490 m!4898237))

(declare-fun m!4898239 () Bool)

(assert (=> b!4305481 m!4898239))

(declare-fun m!4898241 () Bool)

(assert (=> b!4305481 m!4898241))

(declare-fun m!4898243 () Bool)

(assert (=> b!4305481 m!4898243))

(declare-fun m!4898245 () Bool)

(assert (=> b!4305483 m!4898245))

(declare-fun m!4898247 () Bool)

(assert (=> b!4305487 m!4898247))

(declare-fun m!4898249 () Bool)

(assert (=> b!4305487 m!4898249))

(declare-fun m!4898251 () Bool)

(assert (=> b!4305487 m!4898251))

(declare-fun m!4898253 () Bool)

(assert (=> mapNonEmpty!20611 m!4898253))

(check-sat (not b_next!129077) (not b!4305479) (not b_next!129075) (not b!4305491) tp_is_empty!23533 (not b!4305483) b_and!339771 (not mapNonEmpty!20611) b_and!339773 (not b!4305480) (not b!4305481) (not b!4305489) (not b!4305485) (not b!4305487) tp_is_empty!23535 (not b!4305490))
(check-sat b_and!339771 b_and!339773 (not b_next!129077) (not b_next!129075))
