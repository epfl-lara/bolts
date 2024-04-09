; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16238 () Bool)

(assert start!16238)

(declare-fun b!161806 () Bool)

(declare-fun b_free!3687 () Bool)

(declare-fun b_next!3687 () Bool)

(assert (=> b!161806 (= b_free!3687 (not b_next!3687))))

(declare-fun tp!13630 () Bool)

(declare-fun b_and!10119 () Bool)

(assert (=> b!161806 (= tp!13630 b_and!10119)))

(declare-fun b!161801 () Bool)

(declare-fun e!105862 () Bool)

(declare-fun tp_is_empty!3489 () Bool)

(assert (=> b!161801 (= e!105862 tp_is_empty!3489)))

(declare-fun b!161802 () Bool)

(declare-fun e!105866 () Bool)

(assert (=> b!161802 (= e!105866 false)))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4299 0))(
  ( (V!4300 (val!1789 Int)) )
))
(declare-fun v!309 () V!4299)

(declare-datatypes ((SeekEntryResult!373 0))(
  ( (MissingZero!373 (index!3660 (_ BitVec 32))) (Found!373 (index!3661 (_ BitVec 32))) (Intermediate!373 (undefined!1185 Bool) (index!3662 (_ BitVec 32)) (x!17885 (_ BitVec 32))) (Undefined!373) (MissingVacant!373 (index!3663 (_ BitVec 32))) )
))
(declare-fun lt!82316 () SeekEntryResult!373)

(declare-datatypes ((ValueCell!1401 0))(
  ( (ValueCellFull!1401 (v!3650 V!4299)) (EmptyCell!1401) )
))
(declare-datatypes ((array!6056 0))(
  ( (array!6057 (arr!2872 (Array (_ BitVec 32) (_ BitVec 64))) (size!3156 (_ BitVec 32))) )
))
(declare-datatypes ((array!6058 0))(
  ( (array!6059 (arr!2873 (Array (_ BitVec 32) ValueCell!1401)) (size!3157 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1710 0))(
  ( (LongMapFixedSize!1711 (defaultEntry!3297 Int) (mask!7901 (_ BitVec 32)) (extraKeys!3038 (_ BitVec 32)) (zeroValue!3140 V!4299) (minValue!3140 V!4299) (_size!904 (_ BitVec 32)) (_keys!5098 array!6056) (_values!3280 array!6058) (_vacant!904 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1710)

(declare-fun lt!82315 () Bool)

(declare-fun valid!771 (LongMapFixedSize!1710) Bool)

(declare-datatypes ((tuple2!2956 0))(
  ( (tuple2!2957 (_1!1488 Bool) (_2!1488 LongMapFixedSize!1710)) )
))
(declare-fun updateHelperNewKey!72 (LongMapFixedSize!1710 (_ BitVec 64) V!4299 (_ BitVec 32)) tuple2!2956)

(assert (=> b!161802 (= lt!82315 (valid!771 (_2!1488 (updateHelperNewKey!72 thiss!1248 key!828 v!309 (index!3663 lt!82316)))))))

(declare-fun b!161804 () Bool)

(declare-fun e!105860 () Bool)

(assert (=> b!161804 (= e!105860 e!105866)))

(declare-fun res!76659 () Bool)

(assert (=> b!161804 (=> (not res!76659) (not e!105866))))

(get-info :version)

(assert (=> b!161804 (= res!76659 (and (not ((_ is Undefined!373) lt!82316)) ((_ is MissingVacant!373) lt!82316)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6056 (_ BitVec 32)) SeekEntryResult!373)

(assert (=> b!161804 (= lt!82316 (seekEntryOrOpen!0 key!828 (_keys!5098 thiss!1248) (mask!7901 thiss!1248)))))

(declare-fun mapNonEmpty!5921 () Bool)

(declare-fun mapRes!5921 () Bool)

(declare-fun tp!13631 () Bool)

(declare-fun e!105864 () Bool)

(assert (=> mapNonEmpty!5921 (= mapRes!5921 (and tp!13631 e!105864))))

(declare-fun mapRest!5921 () (Array (_ BitVec 32) ValueCell!1401))

(declare-fun mapValue!5921 () ValueCell!1401)

(declare-fun mapKey!5921 () (_ BitVec 32))

(assert (=> mapNonEmpty!5921 (= (arr!2873 (_values!3280 thiss!1248)) (store mapRest!5921 mapKey!5921 mapValue!5921))))

(declare-fun b!161805 () Bool)

(assert (=> b!161805 (= e!105864 tp_is_empty!3489)))

(declare-fun e!105863 () Bool)

(declare-fun e!105865 () Bool)

(declare-fun array_inv!1827 (array!6056) Bool)

(declare-fun array_inv!1828 (array!6058) Bool)

(assert (=> b!161806 (= e!105863 (and tp!13630 tp_is_empty!3489 (array_inv!1827 (_keys!5098 thiss!1248)) (array_inv!1828 (_values!3280 thiss!1248)) e!105865))))

(declare-fun mapIsEmpty!5921 () Bool)

(assert (=> mapIsEmpty!5921 mapRes!5921))

(declare-fun b!161807 () Bool)

(assert (=> b!161807 (= e!105865 (and e!105862 mapRes!5921))))

(declare-fun condMapEmpty!5921 () Bool)

(declare-fun mapDefault!5921 () ValueCell!1401)

(assert (=> b!161807 (= condMapEmpty!5921 (= (arr!2873 (_values!3280 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1401)) mapDefault!5921)))))

(declare-fun res!76660 () Bool)

(assert (=> start!16238 (=> (not res!76660) (not e!105860))))

(assert (=> start!16238 (= res!76660 (valid!771 thiss!1248))))

(assert (=> start!16238 e!105860))

(assert (=> start!16238 e!105863))

(assert (=> start!16238 true))

(assert (=> start!16238 tp_is_empty!3489))

(declare-fun b!161803 () Bool)

(declare-fun res!76661 () Bool)

(assert (=> b!161803 (=> (not res!76661) (not e!105860))))

(assert (=> b!161803 (= res!76661 (not (= key!828 (bvneg key!828))))))

(assert (= (and start!16238 res!76660) b!161803))

(assert (= (and b!161803 res!76661) b!161804))

(assert (= (and b!161804 res!76659) b!161802))

(assert (= (and b!161807 condMapEmpty!5921) mapIsEmpty!5921))

(assert (= (and b!161807 (not condMapEmpty!5921)) mapNonEmpty!5921))

(assert (= (and mapNonEmpty!5921 ((_ is ValueCellFull!1401) mapValue!5921)) b!161805))

(assert (= (and b!161807 ((_ is ValueCellFull!1401) mapDefault!5921)) b!161801))

(assert (= b!161806 b!161807))

(assert (= start!16238 b!161806))

(declare-fun m!193159 () Bool)

(assert (=> mapNonEmpty!5921 m!193159))

(declare-fun m!193161 () Bool)

(assert (=> b!161802 m!193161))

(declare-fun m!193163 () Bool)

(assert (=> b!161802 m!193163))

(declare-fun m!193165 () Bool)

(assert (=> b!161804 m!193165))

(declare-fun m!193167 () Bool)

(assert (=> start!16238 m!193167))

(declare-fun m!193169 () Bool)

(assert (=> b!161806 m!193169))

(declare-fun m!193171 () Bool)

(assert (=> b!161806 m!193171))

(check-sat (not b!161802) b_and!10119 (not start!16238) (not b!161806) (not b!161804) tp_is_empty!3489 (not mapNonEmpty!5921) (not b_next!3687))
(check-sat b_and!10119 (not b_next!3687))
