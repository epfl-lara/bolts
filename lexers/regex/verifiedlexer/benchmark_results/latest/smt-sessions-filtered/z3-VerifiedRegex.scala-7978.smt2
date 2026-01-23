; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414034 () Bool)

(assert start!414034)

(declare-fun b!4308254 () Bool)

(declare-fun b_free!128507 () Bool)

(declare-fun b_next!129211 () Bool)

(assert (=> b!4308254 (= b_free!128507 (not b_next!129211))))

(declare-fun tp!1323940 () Bool)

(declare-fun b_and!339921 () Bool)

(assert (=> b!4308254 (= tp!1323940 b_and!339921)))

(declare-fun b!4308249 () Bool)

(declare-fun b_free!128509 () Bool)

(declare-fun b_next!129213 () Bool)

(assert (=> b!4308249 (= b_free!128509 (not b_next!129213))))

(declare-fun tp!1323938 () Bool)

(declare-fun b_and!339923 () Bool)

(assert (=> b!4308249 (= tp!1323938 b_and!339923)))

(declare-fun mapIsEmpty!20734 () Bool)

(declare-fun mapRes!20734 () Bool)

(assert (=> mapIsEmpty!20734 mapRes!20734))

(declare-fun b!4308247 () Bool)

(declare-fun e!2679095 () Bool)

(declare-fun tp!1323941 () Bool)

(assert (=> b!4308247 (= e!2679095 (and tp!1323941 mapRes!20734))))

(declare-fun condMapEmpty!20734 () Bool)

(declare-datatypes ((V!9541 0))(
  ( (V!9542 (val!15729 Int)) )
))
(declare-datatypes ((K!9339 0))(
  ( (K!9340 (val!15730 Int)) )
))
(declare-datatypes ((tuple2!46484 0))(
  ( (tuple2!46485 (_1!26521 K!9339) (_2!26521 V!9541)) )
))
(declare-datatypes ((List!48275 0))(
  ( (Nil!48151) (Cons!48151 (h!53585 tuple2!46484) (t!355074 List!48275)) )
))
(declare-datatypes ((array!16704 0))(
  ( (array!16705 (arr!7459 (Array (_ BitVec 32) (_ BitVec 64))) (size!35498 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4553 0))(
  ( (HashableExt!4552 (__x!29936 Int)) )
))
(declare-datatypes ((array!16706 0))(
  ( (array!16707 (arr!7460 (Array (_ BitVec 32) List!48275)) (size!35499 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9274 0))(
  ( (LongMapFixedSize!9275 (defaultEntry!5022 Int) (mask!13184 (_ BitVec 32)) (extraKeys!4886 (_ BitVec 32)) (zeroValue!4896 List!48275) (minValue!4896 List!48275) (_size!9317 (_ BitVec 32)) (_keys!4937 array!16704) (_values!4918 array!16706) (_vacant!4698 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18357 0))(
  ( (Cell!18358 (v!42263 LongMapFixedSize!9274)) )
))
(declare-datatypes ((MutLongMap!4637 0))(
  ( (LongMap!4637 (underlying!9503 Cell!18357)) (MutLongMapExt!4636 (__x!29937 Int)) )
))
(declare-datatypes ((Cell!18359 0))(
  ( (Cell!18360 (v!42264 MutLongMap!4637)) )
))
(declare-datatypes ((MutableMap!4543 0))(
  ( (MutableMapExt!4542 (__x!29938 Int)) (HashMap!4543 (underlying!9504 Cell!18359) (hashF!6669 Hashable!4553) (_size!9318 (_ BitVec 32)) (defaultValue!4714 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4543)

(declare-fun mapDefault!20734 () List!48275)

(assert (=> b!4308247 (= condMapEmpty!20734 (= (arr!7460 (_values!4918 (v!42263 (underlying!9503 (v!42264 (underlying!9504 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48275)) mapDefault!20734)))))

(declare-fun b!4308248 () Bool)

(declare-fun e!2679098 () Bool)

(declare-fun e!2679091 () Bool)

(assert (=> b!4308248 (= e!2679098 e!2679091)))

(declare-fun res!1765785 () Bool)

(assert (=> b!4308248 (=> (not res!1765785) (not e!2679091))))

(declare-fun key!2048 () K!9339)

(declare-fun contains!10121 (MutableMap!4543 K!9339) Bool)

(assert (=> b!4308248 (= res!1765785 (not (contains!10121 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!46486 0))(
  ( (tuple2!46487 (_1!26522 (_ BitVec 64)) (_2!26522 List!48275)) )
))
(declare-datatypes ((List!48276 0))(
  ( (Nil!48152) (Cons!48152 (h!53586 tuple2!46486) (t!355075 List!48276)) )
))
(declare-datatypes ((ListLongMap!977 0))(
  ( (ListLongMap!978 (toList!2364 List!48276)) )
))
(declare-fun lt!1528953 () ListLongMap!977)

(declare-fun map!10133 (MutLongMap!4637) ListLongMap!977)

(assert (=> b!4308248 (= lt!1528953 (map!10133 (v!42264 (underlying!9504 thiss!42308))))))

(declare-datatypes ((ListMap!1645 0))(
  ( (ListMap!1646 (toList!2365 List!48275)) )
))
(declare-fun lt!1528951 () ListMap!1645)

(declare-fun map!10134 (MutableMap!4543) ListMap!1645)

(assert (=> b!4308248 (= lt!1528951 (map!10134 thiss!42308))))

(declare-fun e!2679094 () Bool)

(declare-fun e!2679099 () Bool)

(assert (=> b!4308249 (= e!2679094 (and e!2679099 tp!1323938))))

(declare-fun b!4308250 () Bool)

(assert (=> b!4308250 (= e!2679091 false)))

(declare-fun lt!1528950 () (_ BitVec 64))

(declare-fun e!2679097 () List!48275)

(declare-fun v!9179 () V!9541)

(declare-datatypes ((tuple2!46488 0))(
  ( (tuple2!46489 (_1!26523 Bool) (_2!26523 MutLongMap!4637)) )
))
(declare-fun lt!1528952 () tuple2!46488)

(declare-fun update!418 (MutLongMap!4637 (_ BitVec 64) List!48275) tuple2!46488)

(assert (=> b!4308250 (= lt!1528952 (update!418 (v!42264 (underlying!9504 thiss!42308)) lt!1528950 (Cons!48151 (tuple2!46485 key!2048 v!9179) e!2679097)))))

(declare-fun c!732492 () Bool)

(declare-fun contains!10122 (MutLongMap!4637 (_ BitVec 64)) Bool)

(assert (=> b!4308250 (= c!732492 (contains!10122 (v!42264 (underlying!9504 thiss!42308)) lt!1528950))))

(declare-fun hash!986 (Hashable!4553 K!9339) (_ BitVec 64))

(assert (=> b!4308250 (= lt!1528950 (hash!986 (hashF!6669 thiss!42308) key!2048))))

(declare-fun mapNonEmpty!20734 () Bool)

(declare-fun tp!1323937 () Bool)

(declare-fun tp!1323936 () Bool)

(assert (=> mapNonEmpty!20734 (= mapRes!20734 (and tp!1323937 tp!1323936))))

(declare-fun mapKey!20734 () (_ BitVec 32))

(declare-fun mapRest!20734 () (Array (_ BitVec 32) List!48275))

(declare-fun mapValue!20734 () List!48275)

(assert (=> mapNonEmpty!20734 (= (arr!7460 (_values!4918 (v!42263 (underlying!9503 (v!42264 (underlying!9504 thiss!42308)))))) (store mapRest!20734 mapKey!20734 mapValue!20734))))

(declare-fun b!4308251 () Bool)

(assert (=> b!4308251 (= e!2679097 Nil!48151)))

(declare-fun b!4308252 () Bool)

(declare-fun res!1765784 () Bool)

(assert (=> b!4308252 (=> (not res!1765784) (not e!2679098))))

(declare-fun valid!3626 (MutableMap!4543) Bool)

(assert (=> b!4308252 (= res!1765784 (valid!3626 thiss!42308))))

(declare-fun res!1765783 () Bool)

(assert (=> start!414034 (=> (not res!1765783) (not e!2679098))))

(get-info :version)

(assert (=> start!414034 (= res!1765783 ((_ is HashMap!4543) thiss!42308))))

(assert (=> start!414034 e!2679098))

(assert (=> start!414034 e!2679094))

(declare-fun tp_is_empty!23669 () Bool)

(assert (=> start!414034 tp_is_empty!23669))

(declare-fun tp_is_empty!23671 () Bool)

(assert (=> start!414034 tp_is_empty!23671))

(declare-fun b!4308253 () Bool)

(declare-fun e!2679096 () Bool)

(declare-fun e!2679092 () Bool)

(assert (=> b!4308253 (= e!2679096 e!2679092)))

(declare-fun tp!1323935 () Bool)

(declare-fun tp!1323939 () Bool)

(declare-fun e!2679100 () Bool)

(declare-fun array_inv!5349 (array!16704) Bool)

(declare-fun array_inv!5350 (array!16706) Bool)

(assert (=> b!4308254 (= e!2679100 (and tp!1323940 tp!1323939 tp!1323935 (array_inv!5349 (_keys!4937 (v!42263 (underlying!9503 (v!42264 (underlying!9504 thiss!42308)))))) (array_inv!5350 (_values!4918 (v!42263 (underlying!9503 (v!42264 (underlying!9504 thiss!42308)))))) e!2679095))))

(declare-fun b!4308255 () Bool)

(declare-fun apply!10993 (MutLongMap!4637 (_ BitVec 64)) List!48275)

(assert (=> b!4308255 (= e!2679097 (apply!10993 (v!42264 (underlying!9504 thiss!42308)) lt!1528950))))

(declare-fun b!4308256 () Bool)

(declare-fun lt!1528949 () MutLongMap!4637)

(assert (=> b!4308256 (= e!2679099 (and e!2679096 ((_ is LongMap!4637) lt!1528949)))))

(assert (=> b!4308256 (= lt!1528949 (v!42264 (underlying!9504 thiss!42308)))))

(declare-fun b!4308257 () Bool)

(assert (=> b!4308257 (= e!2679092 e!2679100)))

(assert (= (and start!414034 res!1765783) b!4308252))

(assert (= (and b!4308252 res!1765784) b!4308248))

(assert (= (and b!4308248 res!1765785) b!4308250))

(assert (= (and b!4308250 c!732492) b!4308255))

(assert (= (and b!4308250 (not c!732492)) b!4308251))

(assert (= (and b!4308247 condMapEmpty!20734) mapIsEmpty!20734))

(assert (= (and b!4308247 (not condMapEmpty!20734)) mapNonEmpty!20734))

(assert (= b!4308254 b!4308247))

(assert (= b!4308257 b!4308254))

(assert (= b!4308253 b!4308257))

(assert (= (and b!4308256 ((_ is LongMap!4637) (v!42264 (underlying!9504 thiss!42308)))) b!4308253))

(assert (= b!4308249 b!4308256))

(assert (= (and start!414034 ((_ is HashMap!4543) thiss!42308)) b!4308249))

(declare-fun m!4901443 () Bool)

(assert (=> b!4308252 m!4901443))

(declare-fun m!4901445 () Bool)

(assert (=> b!4308255 m!4901445))

(declare-fun m!4901447 () Bool)

(assert (=> mapNonEmpty!20734 m!4901447))

(declare-fun m!4901449 () Bool)

(assert (=> b!4308254 m!4901449))

(declare-fun m!4901451 () Bool)

(assert (=> b!4308254 m!4901451))

(declare-fun m!4901453 () Bool)

(assert (=> b!4308250 m!4901453))

(declare-fun m!4901455 () Bool)

(assert (=> b!4308250 m!4901455))

(declare-fun m!4901457 () Bool)

(assert (=> b!4308250 m!4901457))

(declare-fun m!4901459 () Bool)

(assert (=> b!4308248 m!4901459))

(declare-fun m!4901461 () Bool)

(assert (=> b!4308248 m!4901461))

(declare-fun m!4901463 () Bool)

(assert (=> b!4308248 m!4901463))

(check-sat (not b!4308250) (not b!4308255) (not b_next!129213) (not b_next!129211) tp_is_empty!23669 (not b!4308252) (not b!4308247) (not mapNonEmpty!20734) b_and!339923 b_and!339921 tp_is_empty!23671 (not b!4308248) (not b!4308254))
(check-sat b_and!339921 b_and!339923 (not b_next!129213) (not b_next!129211))
