; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413184 () Bool)

(assert start!413184)

(declare-fun b!4302408 () Bool)

(declare-fun b_free!128195 () Bool)

(declare-fun b_next!128899 () Bool)

(assert (=> b!4302408 (= b_free!128195 (not b_next!128899))))

(declare-fun tp!1322061 () Bool)

(declare-fun b_and!339581 () Bool)

(assert (=> b!4302408 (= tp!1322061 b_and!339581)))

(declare-fun b!4302417 () Bool)

(declare-fun b_free!128197 () Bool)

(declare-fun b_next!128901 () Bool)

(assert (=> b!4302417 (= b_free!128197 (not b_next!128901))))

(declare-fun tp!1322062 () Bool)

(declare-fun b_and!339583 () Bool)

(assert (=> b!4302417 (= tp!1322062 b_and!339583)))

(declare-fun b!4302406 () Bool)

(declare-fun e!2674689 () Bool)

(declare-datatypes ((K!9144 0))(
  ( (K!9145 (val!15573 Int)) )
))
(declare-datatypes ((V!9346 0))(
  ( (V!9347 (val!15574 Int)) )
))
(declare-datatypes ((tuple2!46074 0))(
  ( (tuple2!46075 (_1!26316 K!9144) (_2!26316 V!9346)) )
))
(declare-datatypes ((List!48128 0))(
  ( (Nil!48004) (Cons!48004 (h!53425 tuple2!46074) (t!354899 List!48128)) )
))
(declare-fun lt!1524006 () List!48128)

(declare-fun noDuplicateKeys!164 (List!48128) Bool)

(assert (=> b!4302406 (= e!2674689 (noDuplicateKeys!164 lt!1524006))))

(declare-fun b!4302407 () Bool)

(declare-fun res!1763290 () Bool)

(assert (=> b!4302407 (=> (not res!1763290) (not e!2674689))))

(declare-fun lt!1524012 () List!48128)

(declare-fun key!2048 () K!9144)

(declare-fun containsKey!252 (List!48128 K!9144) Bool)

(assert (=> b!4302407 (= res!1763290 (not (containsKey!252 lt!1524012 key!2048)))))

(declare-fun e!2674694 () Bool)

(declare-fun tp!1322057 () Bool)

(declare-datatypes ((array!16360 0))(
  ( (array!16361 (arr!7303 (Array (_ BitVec 32) (_ BitVec 64))) (size!35342 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4475 0))(
  ( (HashableExt!4474 (__x!29702 Int)) )
))
(declare-datatypes ((array!16362 0))(
  ( (array!16363 (arr!7304 (Array (_ BitVec 32) List!48128)) (size!35343 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9118 0))(
  ( (LongMapFixedSize!9119 (defaultEntry!4944 Int) (mask!13067 (_ BitVec 32)) (extraKeys!4808 (_ BitVec 32)) (zeroValue!4818 List!48128) (minValue!4818 List!48128) (_size!9161 (_ BitVec 32)) (_keys!4859 array!16360) (_values!4840 array!16362) (_vacant!4620 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18045 0))(
  ( (Cell!18046 (v!42006 LongMapFixedSize!9118)) )
))
(declare-datatypes ((MutLongMap!4559 0))(
  ( (LongMap!4559 (underlying!9347 Cell!18045)) (MutLongMapExt!4558 (__x!29703 Int)) )
))
(declare-datatypes ((Cell!18047 0))(
  ( (Cell!18048 (v!42007 MutLongMap!4559)) )
))
(declare-datatypes ((MutableMap!4465 0))(
  ( (MutableMapExt!4464 (__x!29704 Int)) (HashMap!4465 (underlying!9348 Cell!18047) (hashF!6513 Hashable!4475) (_size!9162 (_ BitVec 32)) (defaultValue!4636 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4465)

(declare-fun tp!1322059 () Bool)

(declare-fun e!2674687 () Bool)

(declare-fun array_inv!5237 (array!16360) Bool)

(declare-fun array_inv!5238 (array!16362) Bool)

(assert (=> b!4302408 (= e!2674687 (and tp!1322061 tp!1322057 tp!1322059 (array_inv!5237 (_keys!4859 (v!42006 (underlying!9347 (v!42007 (underlying!9348 thiss!42308)))))) (array_inv!5238 (_values!4840 (v!42006 (underlying!9347 (v!42007 (underlying!9348 thiss!42308)))))) e!2674694))))

(declare-fun b!4302409 () Bool)

(declare-fun res!1763284 () Bool)

(declare-fun e!2674692 () Bool)

(assert (=> b!4302409 (=> (not res!1763284) (not e!2674692))))

(declare-fun valid!3543 (MutableMap!4465) Bool)

(assert (=> b!4302409 (= res!1763284 (valid!3543 thiss!42308))))

(declare-fun b!4302410 () Bool)

(declare-fun e!2674685 () Bool)

(declare-fun e!2674690 () Bool)

(assert (=> b!4302410 (= e!2674685 (not e!2674690))))

(declare-fun res!1763288 () Bool)

(assert (=> b!4302410 (=> res!1763288 e!2674690)))

(declare-datatypes ((tuple2!46076 0))(
  ( (tuple2!46077 (_1!26317 (_ BitVec 64)) (_2!26317 List!48128)) )
))
(declare-datatypes ((List!48129 0))(
  ( (Nil!48005) (Cons!48005 (h!53426 tuple2!46076) (t!354900 List!48129)) )
))
(declare-datatypes ((ListLongMap!851 0))(
  ( (ListLongMap!852 (toList!2243 List!48129)) )
))
(declare-fun lt!1524014 () ListLongMap!851)

(declare-fun lambda!132107 () Int)

(declare-fun forall!8656 (List!48129 Int) Bool)

(assert (=> b!4302410 (= res!1763288 (not (forall!8656 (toList!2243 lt!1524014) lambda!132107)))))

(assert (=> b!4302410 e!2674689))

(declare-fun res!1763291 () Bool)

(assert (=> b!4302410 (=> (not res!1763291) (not e!2674689))))

(assert (=> b!4302410 (= res!1763291 (noDuplicateKeys!164 lt!1524012))))

(declare-datatypes ((Unit!66987 0))(
  ( (Unit!66988) )
))
(declare-fun lt!1524009 () Unit!66987)

(declare-fun lt!1524011 () List!48128)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!137 (List!48128 K!9144) Unit!66987)

(assert (=> b!4302410 (= lt!1524009 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!137 lt!1524011 key!2048))))

(declare-fun lt!1524010 () (_ BitVec 64))

(declare-fun allKeysSameHash!134 (List!48128 (_ BitVec 64) Hashable!4475) Bool)

(assert (=> b!4302410 (allKeysSameHash!134 lt!1524012 lt!1524010 (hashF!6513 thiss!42308))))

(declare-fun lt!1524007 () Unit!66987)

(declare-fun lemmaRemovePairForKeyPreservesHash!120 (List!48128 K!9144 (_ BitVec 64) Hashable!4475) Unit!66987)

(assert (=> b!4302410 (= lt!1524007 (lemmaRemovePairForKeyPreservesHash!120 lt!1524011 key!2048 lt!1524010 (hashF!6513 thiss!42308)))))

(assert (=> b!4302410 (allKeysSameHash!134 lt!1524011 lt!1524010 (hashF!6513 thiss!42308))))

(declare-fun lt!1524013 () Unit!66987)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!125 (List!48129 (_ BitVec 64) List!48128 Hashable!4475) Unit!66987)

(assert (=> b!4302410 (= lt!1524013 (lemmaInLongMapAllKeySameHashThenForTuple!125 (toList!2243 lt!1524014) lt!1524010 lt!1524011 (hashF!6513 thiss!42308)))))

(declare-fun b!4302411 () Bool)

(declare-fun e!2674686 () Bool)

(assert (=> b!4302411 (= e!2674686 e!2674685)))

(declare-fun res!1763287 () Bool)

(assert (=> b!4302411 (=> (not res!1763287) (not e!2674685))))

(declare-datatypes ((tuple2!46078 0))(
  ( (tuple2!46079 (_1!26318 Bool) (_2!26318 MutLongMap!4559)) )
))
(declare-fun update!356 (MutLongMap!4559 (_ BitVec 64) List!48128) tuple2!46078)

(assert (=> b!4302411 (= res!1763287 (_1!26318 (update!356 (v!42007 (underlying!9348 thiss!42308)) lt!1524010 lt!1524006)))))

(declare-fun v!9179 () V!9346)

(assert (=> b!4302411 (= lt!1524006 (Cons!48004 (tuple2!46075 key!2048 v!9179) lt!1524012))))

(declare-fun removePairForKey!158 (List!48128 K!9144) List!48128)

(assert (=> b!4302411 (= lt!1524012 (removePairForKey!158 lt!1524011 key!2048))))

(declare-fun apply!10903 (MutLongMap!4559 (_ BitVec 64)) List!48128)

(assert (=> b!4302411 (= lt!1524011 (apply!10903 (v!42007 (underlying!9348 thiss!42308)) lt!1524010))))

(declare-fun hash!864 (Hashable!4475 K!9144) (_ BitVec 64))

(assert (=> b!4302411 (= lt!1524010 (hash!864 (hashF!6513 thiss!42308) key!2048))))

(declare-fun b!4302412 () Bool)

(declare-fun e!2674688 () Bool)

(assert (=> b!4302412 (= e!2674688 e!2674687)))

(declare-fun b!4302413 () Bool)

(declare-fun tp!1322063 () Bool)

(declare-fun mapRes!20452 () Bool)

(assert (=> b!4302413 (= e!2674694 (and tp!1322063 mapRes!20452))))

(declare-fun condMapEmpty!20452 () Bool)

(declare-fun mapDefault!20452 () List!48128)

(assert (=> b!4302413 (= condMapEmpty!20452 (= (arr!7304 (_values!4840 (v!42006 (underlying!9347 (v!42007 (underlying!9348 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48128)) mapDefault!20452)))))

(declare-fun b!4302414 () Bool)

(assert (=> b!4302414 (= e!2674692 e!2674686)))

(declare-fun res!1763289 () Bool)

(assert (=> b!4302414 (=> (not res!1763289) (not e!2674686))))

(declare-fun contains!9922 (MutableMap!4465 K!9144) Bool)

(assert (=> b!4302414 (= res!1763289 (contains!9922 thiss!42308 key!2048))))

(declare-fun map!9966 (MutLongMap!4559) ListLongMap!851)

(assert (=> b!4302414 (= lt!1524014 (map!9966 (v!42007 (underlying!9348 thiss!42308))))))

(declare-datatypes ((ListMap!1529 0))(
  ( (ListMap!1530 (toList!2244 List!48128)) )
))
(declare-fun lt!1524008 () ListMap!1529)

(declare-fun map!9967 (MutableMap!4465) ListMap!1529)

(assert (=> b!4302414 (= lt!1524008 (map!9967 thiss!42308))))

(declare-fun b!4302415 () Bool)

(declare-fun e!2674691 () Bool)

(declare-fun e!2674683 () Bool)

(declare-fun lt!1524015 () MutLongMap!4559)

(get-info :version)

(assert (=> b!4302415 (= e!2674691 (and e!2674683 ((_ is LongMap!4559) lt!1524015)))))

(assert (=> b!4302415 (= lt!1524015 (v!42007 (underlying!9348 thiss!42308)))))

(declare-fun b!4302416 () Bool)

(assert (=> b!4302416 (= e!2674690 true)))

(declare-fun b!4302418 () Bool)

(assert (=> b!4302418 (= e!2674683 e!2674688)))

(declare-fun b!4302419 () Bool)

(declare-fun res!1763285 () Bool)

(assert (=> b!4302419 (=> res!1763285 e!2674690)))

(declare-fun allKeysSameHashInMap!283 (ListLongMap!851 Hashable!4475) Bool)

(assert (=> b!4302419 (= res!1763285 (not (allKeysSameHashInMap!283 lt!1524014 (hashF!6513 thiss!42308))))))

(declare-fun mapNonEmpty!20452 () Bool)

(declare-fun tp!1322060 () Bool)

(declare-fun tp!1322058 () Bool)

(assert (=> mapNonEmpty!20452 (= mapRes!20452 (and tp!1322060 tp!1322058))))

(declare-fun mapValue!20452 () List!48128)

(declare-fun mapRest!20452 () (Array (_ BitVec 32) List!48128))

(declare-fun mapKey!20452 () (_ BitVec 32))

(assert (=> mapNonEmpty!20452 (= (arr!7304 (_values!4840 (v!42006 (underlying!9347 (v!42007 (underlying!9348 thiss!42308)))))) (store mapRest!20452 mapKey!20452 mapValue!20452))))

(declare-fun mapIsEmpty!20452 () Bool)

(assert (=> mapIsEmpty!20452 mapRes!20452))

(declare-fun e!2674684 () Bool)

(assert (=> b!4302417 (= e!2674684 (and e!2674691 tp!1322062))))

(declare-fun res!1763286 () Bool)

(assert (=> start!413184 (=> (not res!1763286) (not e!2674692))))

(assert (=> start!413184 (= res!1763286 ((_ is HashMap!4465) thiss!42308))))

(assert (=> start!413184 e!2674692))

(assert (=> start!413184 e!2674684))

(declare-fun tp_is_empty!23375 () Bool)

(assert (=> start!413184 tp_is_empty!23375))

(declare-fun tp_is_empty!23377 () Bool)

(assert (=> start!413184 tp_is_empty!23377))

(assert (= (and start!413184 res!1763286) b!4302409))

(assert (= (and b!4302409 res!1763284) b!4302414))

(assert (= (and b!4302414 res!1763289) b!4302411))

(assert (= (and b!4302411 res!1763287) b!4302410))

(assert (= (and b!4302410 res!1763291) b!4302407))

(assert (= (and b!4302407 res!1763290) b!4302406))

(assert (= (and b!4302410 (not res!1763288)) b!4302419))

(assert (= (and b!4302419 (not res!1763285)) b!4302416))

(assert (= (and b!4302413 condMapEmpty!20452) mapIsEmpty!20452))

(assert (= (and b!4302413 (not condMapEmpty!20452)) mapNonEmpty!20452))

(assert (= b!4302408 b!4302413))

(assert (= b!4302412 b!4302408))

(assert (= b!4302418 b!4302412))

(assert (= (and b!4302415 ((_ is LongMap!4559) (v!42007 (underlying!9348 thiss!42308)))) b!4302418))

(assert (= b!4302417 b!4302415))

(assert (= (and start!413184 ((_ is HashMap!4465) thiss!42308)) b!4302417))

(declare-fun m!4894493 () Bool)

(assert (=> b!4302409 m!4894493))

(declare-fun m!4894495 () Bool)

(assert (=> b!4302419 m!4894495))

(declare-fun m!4894497 () Bool)

(assert (=> b!4302408 m!4894497))

(declare-fun m!4894499 () Bool)

(assert (=> b!4302408 m!4894499))

(declare-fun m!4894501 () Bool)

(assert (=> b!4302407 m!4894501))

(declare-fun m!4894503 () Bool)

(assert (=> mapNonEmpty!20452 m!4894503))

(declare-fun m!4894505 () Bool)

(assert (=> b!4302411 m!4894505))

(declare-fun m!4894507 () Bool)

(assert (=> b!4302411 m!4894507))

(declare-fun m!4894509 () Bool)

(assert (=> b!4302411 m!4894509))

(declare-fun m!4894511 () Bool)

(assert (=> b!4302411 m!4894511))

(declare-fun m!4894513 () Bool)

(assert (=> b!4302410 m!4894513))

(declare-fun m!4894515 () Bool)

(assert (=> b!4302410 m!4894515))

(declare-fun m!4894517 () Bool)

(assert (=> b!4302410 m!4894517))

(declare-fun m!4894519 () Bool)

(assert (=> b!4302410 m!4894519))

(declare-fun m!4894521 () Bool)

(assert (=> b!4302410 m!4894521))

(declare-fun m!4894523 () Bool)

(assert (=> b!4302410 m!4894523))

(declare-fun m!4894525 () Bool)

(assert (=> b!4302410 m!4894525))

(declare-fun m!4894527 () Bool)

(assert (=> b!4302406 m!4894527))

(declare-fun m!4894529 () Bool)

(assert (=> b!4302414 m!4894529))

(declare-fun m!4894531 () Bool)

(assert (=> b!4302414 m!4894531))

(declare-fun m!4894533 () Bool)

(assert (=> b!4302414 m!4894533))

(check-sat (not b!4302409) tp_is_empty!23375 (not b!4302413) (not b_next!128899) (not b!4302406) (not b!4302408) (not b!4302414) b_and!339583 (not b!4302410) (not b_next!128901) (not b!4302411) (not b!4302407) (not mapNonEmpty!20452) b_and!339581 tp_is_empty!23377 (not b!4302419))
(check-sat b_and!339581 b_and!339583 (not b_next!128901) (not b_next!128899))
