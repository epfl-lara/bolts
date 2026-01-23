; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413006 () Bool)

(assert start!413006)

(declare-fun b!4301094 () Bool)

(declare-fun b_free!128107 () Bool)

(declare-fun b_next!128811 () Bool)

(assert (=> b!4301094 (= b_free!128107 (not b_next!128811))))

(declare-fun tp!1321531 () Bool)

(declare-fun b_and!339479 () Bool)

(assert (=> b!4301094 (= tp!1321531 b_and!339479)))

(declare-fun b!4301095 () Bool)

(declare-fun b_free!128109 () Bool)

(declare-fun b_next!128813 () Bool)

(assert (=> b!4301095 (= b_free!128109 (not b_next!128813))))

(declare-fun tp!1321528 () Bool)

(declare-fun b_and!339481 () Bool)

(assert (=> b!4301095 (= tp!1321528 b_and!339481)))

(declare-fun b!4301088 () Bool)

(declare-fun e!2673620 () Bool)

(declare-fun e!2673615 () Bool)

(assert (=> b!4301088 (= e!2673620 e!2673615)))

(declare-fun res!1762789 () Bool)

(assert (=> b!4301088 (=> (not res!1762789) (not e!2673615))))

(declare-datatypes ((V!9291 0))(
  ( (V!9292 (val!15529 Int)) )
))
(declare-datatypes ((K!9089 0))(
  ( (K!9090 (val!15530 Int)) )
))
(declare-datatypes ((tuple2!45976 0))(
  ( (tuple2!45977 (_1!26267 K!9089) (_2!26267 V!9291)) )
))
(declare-datatypes ((List!48089 0))(
  ( (Nil!47965) (Cons!47965 (h!53385 tuple2!45976) (t!354852 List!48089)) )
))
(declare-datatypes ((array!16264 0))(
  ( (array!16265 (arr!7259 (Array (_ BitVec 32) (_ BitVec 64))) (size!35298 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4453 0))(
  ( (HashableExt!4452 (__x!29636 Int)) )
))
(declare-datatypes ((array!16266 0))(
  ( (array!16267 (arr!7260 (Array (_ BitVec 32) List!48089)) (size!35299 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9074 0))(
  ( (LongMapFixedSize!9075 (defaultEntry!4922 Int) (mask!13034 (_ BitVec 32)) (extraKeys!4786 (_ BitVec 32)) (zeroValue!4796 List!48089) (minValue!4796 List!48089) (_size!9117 (_ BitVec 32)) (_keys!4837 array!16264) (_values!4818 array!16266) (_vacant!4598 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17957 0))(
  ( (Cell!17958 (v!41947 LongMapFixedSize!9074)) )
))
(declare-datatypes ((MutLongMap!4537 0))(
  ( (LongMap!4537 (underlying!9303 Cell!17957)) (MutLongMapExt!4536 (__x!29637 Int)) )
))
(declare-datatypes ((Cell!17959 0))(
  ( (Cell!17960 (v!41948 MutLongMap!4537)) )
))
(declare-datatypes ((MutableMap!4443 0))(
  ( (MutableMapExt!4442 (__x!29638 Int)) (HashMap!4443 (underlying!9304 Cell!17959) (hashF!6485 Hashable!4453) (_size!9118 (_ BitVec 32)) (defaultValue!4614 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4443)

(declare-fun key!2048 () K!9089)

(declare-fun contains!9885 (MutableMap!4443 K!9089) Bool)

(assert (=> b!4301088 (= res!1762789 (contains!9885 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!45978 0))(
  ( (tuple2!45979 (_1!26268 (_ BitVec 64)) (_2!26268 List!48089)) )
))
(declare-datatypes ((List!48090 0))(
  ( (Nil!47966) (Cons!47966 (h!53386 tuple2!45978) (t!354853 List!48090)) )
))
(declare-datatypes ((ListLongMap!819 0))(
  ( (ListLongMap!820 (toList!2213 List!48090)) )
))
(declare-fun lt!1523181 () ListLongMap!819)

(declare-fun map!9923 (MutLongMap!4537) ListLongMap!819)

(assert (=> b!4301088 (= lt!1523181 (map!9923 (v!41948 (underlying!9304 thiss!42308))))))

(declare-datatypes ((ListMap!1501 0))(
  ( (ListMap!1502 (toList!2214 List!48089)) )
))
(declare-fun lt!1523179 () ListMap!1501)

(declare-fun map!9924 (MutableMap!4443) ListMap!1501)

(assert (=> b!4301088 (= lt!1523179 (map!9924 thiss!42308))))

(declare-fun b!4301089 () Bool)

(declare-fun res!1762787 () Bool)

(assert (=> b!4301089 (=> (not res!1762787) (not e!2673620))))

(declare-fun valid!3521 (MutableMap!4443) Bool)

(assert (=> b!4301089 (= res!1762787 (valid!3521 thiss!42308))))

(declare-fun mapNonEmpty!20373 () Bool)

(declare-fun mapRes!20373 () Bool)

(declare-fun tp!1321530 () Bool)

(declare-fun tp!1321527 () Bool)

(assert (=> mapNonEmpty!20373 (= mapRes!20373 (and tp!1321530 tp!1321527))))

(declare-fun mapKey!20373 () (_ BitVec 32))

(declare-fun mapValue!20373 () List!48089)

(declare-fun mapRest!20373 () (Array (_ BitVec 32) List!48089))

(assert (=> mapNonEmpty!20373 (= (arr!7260 (_values!4818 (v!41947 (underlying!9303 (v!41948 (underlying!9304 thiss!42308)))))) (store mapRest!20373 mapKey!20373 mapValue!20373))))

(declare-fun b!4301090 () Bool)

(declare-fun e!2673619 () Bool)

(declare-fun e!2673617 () Bool)

(declare-fun lt!1523180 () MutLongMap!4537)

(get-info :version)

(assert (=> b!4301090 (= e!2673619 (and e!2673617 ((_ is LongMap!4537) lt!1523180)))))

(assert (=> b!4301090 (= lt!1523180 (v!41948 (underlying!9304 thiss!42308)))))

(declare-fun b!4301091 () Bool)

(declare-fun e!2673612 () Bool)

(declare-fun tp!1321526 () Bool)

(assert (=> b!4301091 (= e!2673612 (and tp!1321526 mapRes!20373))))

(declare-fun condMapEmpty!20373 () Bool)

(declare-fun mapDefault!20373 () List!48089)

(assert (=> b!4301091 (= condMapEmpty!20373 (= (arr!7260 (_values!4818 (v!41947 (underlying!9303 (v!41948 (underlying!9304 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48089)) mapDefault!20373)))))

(declare-fun b!4301092 () Bool)

(declare-fun e!2673613 () Bool)

(assert (=> b!4301092 (= e!2673617 e!2673613)))

(declare-fun res!1762788 () Bool)

(assert (=> start!413006 (=> (not res!1762788) (not e!2673620))))

(assert (=> start!413006 (= res!1762788 ((_ is HashMap!4443) thiss!42308))))

(assert (=> start!413006 e!2673620))

(declare-fun e!2673618 () Bool)

(assert (=> start!413006 e!2673618))

(declare-fun tp_is_empty!23299 () Bool)

(assert (=> start!413006 tp_is_empty!23299))

(declare-fun b!4301093 () Bool)

(declare-fun e!2673616 () Bool)

(assert (=> b!4301093 (= e!2673613 e!2673616)))

(declare-fun tp!1321529 () Bool)

(declare-fun tp!1321525 () Bool)

(declare-fun array_inv!5205 (array!16264) Bool)

(declare-fun array_inv!5206 (array!16266) Bool)

(assert (=> b!4301094 (= e!2673616 (and tp!1321531 tp!1321525 tp!1321529 (array_inv!5205 (_keys!4837 (v!41947 (underlying!9303 (v!41948 (underlying!9304 thiss!42308)))))) (array_inv!5206 (_values!4818 (v!41947 (underlying!9303 (v!41948 (underlying!9304 thiss!42308)))))) e!2673612))))

(declare-fun mapIsEmpty!20373 () Bool)

(assert (=> mapIsEmpty!20373 mapRes!20373))

(assert (=> b!4301095 (= e!2673618 (and e!2673619 tp!1321528))))

(declare-fun b!4301096 () Bool)

(assert (=> b!4301096 (= e!2673615 (not ((_ is LongMap!4537) (v!41948 (underlying!9304 thiss!42308)))))))

(assert (= (and start!413006 res!1762788) b!4301089))

(assert (= (and b!4301089 res!1762787) b!4301088))

(assert (= (and b!4301088 res!1762789) b!4301096))

(assert (= (and b!4301091 condMapEmpty!20373) mapIsEmpty!20373))

(assert (= (and b!4301091 (not condMapEmpty!20373)) mapNonEmpty!20373))

(assert (= b!4301094 b!4301091))

(assert (= b!4301093 b!4301094))

(assert (= b!4301092 b!4301093))

(assert (= (and b!4301090 ((_ is LongMap!4537) (v!41948 (underlying!9304 thiss!42308)))) b!4301092))

(assert (= b!4301095 b!4301090))

(assert (= (and start!413006 ((_ is HashMap!4443) thiss!42308)) b!4301095))

(declare-fun m!4893319 () Bool)

(assert (=> b!4301088 m!4893319))

(declare-fun m!4893321 () Bool)

(assert (=> b!4301088 m!4893321))

(declare-fun m!4893323 () Bool)

(assert (=> b!4301088 m!4893323))

(declare-fun m!4893325 () Bool)

(assert (=> b!4301089 m!4893325))

(declare-fun m!4893327 () Bool)

(assert (=> mapNonEmpty!20373 m!4893327))

(declare-fun m!4893329 () Bool)

(assert (=> b!4301094 m!4893329))

(declare-fun m!4893331 () Bool)

(assert (=> b!4301094 m!4893331))

(check-sat tp_is_empty!23299 (not b!4301094) (not b!4301088) (not b_next!128813) b_and!339479 (not b!4301091) (not b!4301089) b_and!339481 (not b_next!128811) (not mapNonEmpty!20373))
(check-sat b_and!339479 b_and!339481 (not b_next!128813) (not b_next!128811))
