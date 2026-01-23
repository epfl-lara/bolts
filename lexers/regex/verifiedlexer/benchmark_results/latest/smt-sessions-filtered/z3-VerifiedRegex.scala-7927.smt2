; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413002 () Bool)

(assert start!413002)

(declare-fun b!4301039 () Bool)

(declare-fun b_free!128099 () Bool)

(declare-fun b_next!128803 () Bool)

(assert (=> b!4301039 (= b_free!128099 (not b_next!128803))))

(declare-fun tp!1321486 () Bool)

(declare-fun b_and!339471 () Bool)

(assert (=> b!4301039 (= tp!1321486 b_and!339471)))

(declare-fun b!4301036 () Bool)

(declare-fun b_free!128101 () Bool)

(declare-fun b_next!128805 () Bool)

(assert (=> b!4301036 (= b_free!128101 (not b_next!128805))))

(declare-fun tp!1321485 () Bool)

(declare-fun b_and!339473 () Bool)

(assert (=> b!4301036 (= tp!1321485 b_and!339473)))

(declare-fun b!4301035 () Bool)

(declare-fun e!2673565 () Bool)

(declare-fun e!2673560 () Bool)

(declare-datatypes ((V!9286 0))(
  ( (V!9287 (val!15525 Int)) )
))
(declare-datatypes ((K!9084 0))(
  ( (K!9085 (val!15526 Int)) )
))
(declare-datatypes ((tuple2!45970 0))(
  ( (tuple2!45971 (_1!26264 K!9084) (_2!26264 V!9286)) )
))
(declare-datatypes ((List!48086 0))(
  ( (Nil!47962) (Cons!47962 (h!53382 tuple2!45970) (t!354849 List!48086)) )
))
(declare-datatypes ((array!16256 0))(
  ( (array!16257 (arr!7255 (Array (_ BitVec 32) (_ BitVec 64))) (size!35294 (_ BitVec 32))) )
))
(declare-datatypes ((array!16258 0))(
  ( (array!16259 (arr!7256 (Array (_ BitVec 32) List!48086)) (size!35295 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9070 0))(
  ( (LongMapFixedSize!9071 (defaultEntry!4920 Int) (mask!13031 (_ BitVec 32)) (extraKeys!4784 (_ BitVec 32)) (zeroValue!4794 List!48086) (minValue!4794 List!48086) (_size!9113 (_ BitVec 32)) (_keys!4835 array!16256) (_values!4816 array!16258) (_vacant!4596 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17949 0))(
  ( (Cell!17950 (v!41943 LongMapFixedSize!9070)) )
))
(declare-datatypes ((MutLongMap!4535 0))(
  ( (LongMap!4535 (underlying!9299 Cell!17949)) (MutLongMapExt!4534 (__x!29630 Int)) )
))
(declare-fun lt!1523163 () MutLongMap!4535)

(get-info :version)

(assert (=> b!4301035 (= e!2673565 (and e!2673560 ((_ is LongMap!4535) lt!1523163)))))

(declare-datatypes ((Hashable!4451 0))(
  ( (HashableExt!4450 (__x!29631 Int)) )
))
(declare-datatypes ((Cell!17951 0))(
  ( (Cell!17952 (v!41944 MutLongMap!4535)) )
))
(declare-datatypes ((MutableMap!4441 0))(
  ( (MutableMapExt!4440 (__x!29632 Int)) (HashMap!4441 (underlying!9300 Cell!17951) (hashF!6483 Hashable!4451) (_size!9114 (_ BitVec 32)) (defaultValue!4612 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4441)

(assert (=> b!4301035 (= lt!1523163 (v!41944 (underlying!9300 thiss!42308)))))

(declare-fun e!2673563 () Bool)

(assert (=> b!4301036 (= e!2673563 (and e!2673565 tp!1321485))))

(declare-fun mapNonEmpty!20367 () Bool)

(declare-fun mapRes!20367 () Bool)

(declare-fun tp!1321487 () Bool)

(declare-fun tp!1321484 () Bool)

(assert (=> mapNonEmpty!20367 (= mapRes!20367 (and tp!1321487 tp!1321484))))

(declare-fun mapValue!20367 () List!48086)

(declare-fun mapRest!20367 () (Array (_ BitVec 32) List!48086))

(declare-fun mapKey!20367 () (_ BitVec 32))

(assert (=> mapNonEmpty!20367 (= (arr!7256 (_values!4816 (v!41943 (underlying!9299 (v!41944 (underlying!9300 thiss!42308)))))) (store mapRest!20367 mapKey!20367 mapValue!20367))))

(declare-fun b!4301037 () Bool)

(declare-fun e!2673566 () Bool)

(declare-fun tp!1321483 () Bool)

(assert (=> b!4301037 (= e!2673566 (and tp!1321483 mapRes!20367))))

(declare-fun condMapEmpty!20367 () Bool)

(declare-fun mapDefault!20367 () List!48086)

(assert (=> b!4301037 (= condMapEmpty!20367 (= (arr!7256 (_values!4816 (v!41943 (underlying!9299 (v!41944 (underlying!9300 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48086)) mapDefault!20367)))))

(declare-fun b!4301038 () Bool)

(declare-fun e!2673562 () Bool)

(declare-fun e!2673561 () Bool)

(assert (=> b!4301038 (= e!2673562 e!2673561)))

(declare-fun mapIsEmpty!20367 () Bool)

(assert (=> mapIsEmpty!20367 mapRes!20367))

(declare-fun res!1762771 () Bool)

(declare-fun e!2673564 () Bool)

(assert (=> start!413002 (=> (not res!1762771) (not e!2673564))))

(assert (=> start!413002 (= res!1762771 ((_ is HashMap!4441) thiss!42308))))

(assert (=> start!413002 e!2673564))

(assert (=> start!413002 e!2673563))

(declare-fun tp!1321489 () Bool)

(declare-fun tp!1321488 () Bool)

(declare-fun array_inv!5201 (array!16256) Bool)

(declare-fun array_inv!5202 (array!16258) Bool)

(assert (=> b!4301039 (= e!2673561 (and tp!1321486 tp!1321489 tp!1321488 (array_inv!5201 (_keys!4835 (v!41943 (underlying!9299 (v!41944 (underlying!9300 thiss!42308)))))) (array_inv!5202 (_values!4816 (v!41943 (underlying!9299 (v!41944 (underlying!9300 thiss!42308)))))) e!2673566))))

(declare-fun b!4301040 () Bool)

(assert (=> b!4301040 (= e!2673564 false)))

(declare-datatypes ((tuple2!45972 0))(
  ( (tuple2!45973 (_1!26265 (_ BitVec 64)) (_2!26265 List!48086)) )
))
(declare-datatypes ((List!48087 0))(
  ( (Nil!47963) (Cons!47963 (h!53383 tuple2!45972) (t!354850 List!48087)) )
))
(declare-datatypes ((ListLongMap!817 0))(
  ( (ListLongMap!818 (toList!2211 List!48087)) )
))
(declare-fun lt!1523162 () ListLongMap!817)

(declare-fun map!9920 (MutLongMap!4535) ListLongMap!817)

(assert (=> b!4301040 (= lt!1523162 (map!9920 (v!41944 (underlying!9300 thiss!42308))))))

(declare-datatypes ((ListMap!1499 0))(
  ( (ListMap!1500 (toList!2212 List!48086)) )
))
(declare-fun lt!1523161 () ListMap!1499)

(declare-fun map!9921 (MutableMap!4441) ListMap!1499)

(assert (=> b!4301040 (= lt!1523161 (map!9921 thiss!42308))))

(declare-fun b!4301041 () Bool)

(assert (=> b!4301041 (= e!2673560 e!2673562)))

(declare-fun b!4301042 () Bool)

(declare-fun res!1762770 () Bool)

(assert (=> b!4301042 (=> (not res!1762770) (not e!2673564))))

(declare-fun valid!3519 (MutableMap!4441) Bool)

(assert (=> b!4301042 (= res!1762770 (valid!3519 thiss!42308))))

(assert (= (and start!413002 res!1762771) b!4301042))

(assert (= (and b!4301042 res!1762770) b!4301040))

(assert (= (and b!4301037 condMapEmpty!20367) mapIsEmpty!20367))

(assert (= (and b!4301037 (not condMapEmpty!20367)) mapNonEmpty!20367))

(assert (= b!4301039 b!4301037))

(assert (= b!4301038 b!4301039))

(assert (= b!4301041 b!4301038))

(assert (= (and b!4301035 ((_ is LongMap!4535) (v!41944 (underlying!9300 thiss!42308)))) b!4301041))

(assert (= b!4301036 b!4301035))

(assert (= (and start!413002 ((_ is HashMap!4441) thiss!42308)) b!4301036))

(declare-fun m!4893293 () Bool)

(assert (=> mapNonEmpty!20367 m!4893293))

(declare-fun m!4893295 () Bool)

(assert (=> b!4301039 m!4893295))

(declare-fun m!4893297 () Bool)

(assert (=> b!4301039 m!4893297))

(declare-fun m!4893299 () Bool)

(assert (=> b!4301040 m!4893299))

(declare-fun m!4893301 () Bool)

(assert (=> b!4301040 m!4893301))

(declare-fun m!4893303 () Bool)

(assert (=> b!4301042 m!4893303))

(check-sat (not mapNonEmpty!20367) (not b!4301037) (not b!4301040) b_and!339473 (not b!4301039) (not b_next!128803) (not b!4301042) b_and!339471 (not b_next!128805))
(check-sat b_and!339471 b_and!339473 (not b_next!128805) (not b_next!128803))
