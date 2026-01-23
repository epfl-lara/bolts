; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185486 () Bool)

(assert start!185486)

(declare-fun b!1858469 () Bool)

(declare-fun b_free!51957 () Bool)

(declare-fun b_next!52661 () Bool)

(assert (=> b!1858469 (= b_free!51957 (not b_next!52661))))

(declare-fun tp!529814 () Bool)

(declare-fun b_and!144215 () Bool)

(assert (=> b!1858469 (= tp!529814 b_and!144215)))

(declare-fun b!1858465 () Bool)

(declare-fun e!1186751 () Bool)

(assert (=> b!1858465 (= e!1186751 false)))

(declare-fun lt!717199 () Bool)

(declare-datatypes ((V!3863 0))(
  ( (V!3864 (val!5884 Int)) )
))
(declare-datatypes ((array!6515 0))(
  ( (array!6516 (arr!2894 (Array (_ BitVec 32) (_ BitVec 64))) (size!16279 (_ BitVec 32))) )
))
(declare-datatypes ((array!6517 0))(
  ( (array!6518 (arr!2895 (Array (_ BitVec 32) V!3863)) (size!16280 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3796 0))(
  ( (LongMapFixedSize!3797 (defaultEntry!2263 Int) (mask!5611 (_ BitVec 32)) (extraKeys!2146 (_ BitVec 32)) (zeroValue!2156 V!3863) (minValue!2156 V!3863) (_size!3876 (_ BitVec 32)) (_keys!2195 array!6515) (_values!2178 array!6517) (_vacant!1959 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7475 0))(
  ( (Cell!7476 (v!26042 LongMapFixedSize!3796)) )
))
(declare-datatypes ((MutLongMap!1898 0))(
  ( (LongMap!1898 (underlying!4016 Cell!7475)) (MutLongMapExt!1897 (__x!12967 Int)) )
))
(declare-fun thiss!47603 () MutLongMap!1898)

(declare-fun key!7122 () (_ BitVec 64))

(declare-fun valid!1520 (MutLongMap!1898) Bool)

(declare-datatypes ((tuple2!19848 0))(
  ( (tuple2!19849 (_1!11351 Bool) (_2!11351 MutLongMap!1898)) )
))
(declare-fun remove!50 (MutLongMap!1898 (_ BitVec 64)) tuple2!19848)

(assert (=> b!1858465 (= lt!717199 (valid!1520 (_2!11351 (remove!50 thiss!47603 key!7122))))))

(declare-fun b!1858466 () Bool)

(declare-fun e!1186752 () Bool)

(declare-fun tp_is_empty!8563 () Bool)

(declare-fun mapRes!8829 () Bool)

(assert (=> b!1858466 (= e!1186752 (and tp_is_empty!8563 mapRes!8829))))

(declare-fun condMapEmpty!8829 () Bool)

(declare-fun mapDefault!8829 () V!3863)

(assert (=> b!1858466 (= condMapEmpty!8829 (= (arr!2895 (_values!2178 (v!26042 (underlying!4016 thiss!47603)))) ((as const (Array (_ BitVec 32) V!3863)) mapDefault!8829)))))

(declare-fun b!1858467 () Bool)

(declare-fun res!832510 () Bool)

(assert (=> b!1858467 (=> (not res!832510) (not e!1186751))))

(get-info :version)

(assert (=> b!1858467 (= res!832510 ((_ is LongMap!1898) thiss!47603))))

(declare-fun b!1858468 () Bool)

(declare-fun e!1186755 () Bool)

(declare-fun e!1186756 () Bool)

(assert (=> b!1858468 (= e!1186755 e!1186756)))

(declare-fun array_inv!2083 (array!6515) Bool)

(declare-fun array_inv!2084 (array!6517) Bool)

(assert (=> b!1858469 (= e!1186756 (and tp!529814 tp_is_empty!8563 (array_inv!2083 (_keys!2195 (v!26042 (underlying!4016 thiss!47603)))) (array_inv!2084 (_values!2178 (v!26042 (underlying!4016 thiss!47603)))) e!1186752))))

(declare-fun b!1858470 () Bool)

(declare-fun e!1186754 () Bool)

(assert (=> b!1858470 (= e!1186754 e!1186755)))

(declare-fun mapNonEmpty!8829 () Bool)

(declare-fun tp!529813 () Bool)

(assert (=> mapNonEmpty!8829 (= mapRes!8829 (and tp!529813 tp_is_empty!8563))))

(declare-fun mapValue!8829 () V!3863)

(declare-fun mapKey!8829 () (_ BitVec 32))

(declare-fun mapRest!8829 () (Array (_ BitVec 32) V!3863))

(assert (=> mapNonEmpty!8829 (= (arr!2895 (_values!2178 (v!26042 (underlying!4016 thiss!47603)))) (store mapRest!8829 mapKey!8829 mapValue!8829))))

(declare-fun mapIsEmpty!8829 () Bool)

(assert (=> mapIsEmpty!8829 mapRes!8829))

(declare-fun res!832511 () Bool)

(assert (=> start!185486 (=> (not res!832511) (not e!1186751))))

(assert (=> start!185486 (= res!832511 (valid!1520 thiss!47603))))

(assert (=> start!185486 e!1186751))

(assert (=> start!185486 e!1186754))

(assert (=> start!185486 true))

(assert (= (and start!185486 res!832511) b!1858467))

(assert (= (and b!1858467 res!832510) b!1858465))

(assert (= (and b!1858466 condMapEmpty!8829) mapIsEmpty!8829))

(assert (= (and b!1858466 (not condMapEmpty!8829)) mapNonEmpty!8829))

(assert (= b!1858469 b!1858466))

(assert (= b!1858468 b!1858469))

(assert (= b!1858470 b!1858468))

(assert (= (and start!185486 ((_ is LongMap!1898) thiss!47603)) b!1858470))

(declare-fun m!2282005 () Bool)

(assert (=> b!1858465 m!2282005))

(declare-fun m!2282007 () Bool)

(assert (=> b!1858465 m!2282007))

(declare-fun m!2282009 () Bool)

(assert (=> b!1858469 m!2282009))

(declare-fun m!2282011 () Bool)

(assert (=> b!1858469 m!2282011))

(declare-fun m!2282013 () Bool)

(assert (=> mapNonEmpty!8829 m!2282013))

(declare-fun m!2282015 () Bool)

(assert (=> start!185486 m!2282015))

(check-sat (not b!1858465) (not b!1858469) (not b_next!52661) (not mapNonEmpty!8829) b_and!144215 tp_is_empty!8563 (not start!185486))
(check-sat b_and!144215 (not b_next!52661))
