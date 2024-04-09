; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75672 () Bool)

(assert start!75672)

(declare-fun b!889165 () Bool)

(declare-fun b_free!15615 () Bool)

(declare-fun b_next!15615 () Bool)

(assert (=> b!889165 (= b_free!15615 (not b_next!15615))))

(declare-fun tp!54814 () Bool)

(declare-fun b_and!25873 () Bool)

(assert (=> b!889165 (= tp!54814 b_and!25873)))

(declare-fun b!889159 () Bool)

(declare-fun res!602725 () Bool)

(declare-fun e!495635 () Bool)

(assert (=> b!889159 (=> (not res!602725) (not e!495635))))

(declare-datatypes ((array!51852 0))(
  ( (array!51853 (arr!24928 (Array (_ BitVec 32) (_ BitVec 64))) (size!25373 (_ BitVec 32))) )
))
(declare-datatypes ((V!28889 0))(
  ( (V!28890 (val!9022 Int)) )
))
(declare-datatypes ((ValueCell!8490 0))(
  ( (ValueCellFull!8490 (v!11494 V!28889)) (EmptyCell!8490) )
))
(declare-datatypes ((array!51854 0))(
  ( (array!51855 (arr!24929 (Array (_ BitVec 32) ValueCell!8490)) (size!25374 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3996 0))(
  ( (LongMapFixedSize!3997 (defaultEntry!5195 Int) (mask!25633 (_ BitVec 32)) (extraKeys!4889 (_ BitVec 32)) (zeroValue!4993 V!28889) (minValue!4993 V!28889) (_size!2053 (_ BitVec 32)) (_keys!9874 array!51852) (_values!5180 array!51854) (_vacant!2053 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3996)

(assert (=> b!889159 (= res!602725 (and (= (size!25374 (_values!5180 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25633 thiss!1181))) (= (size!25373 (_keys!9874 thiss!1181)) (size!25374 (_values!5180 thiss!1181))) (bvsge (mask!25633 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4889 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4889 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!889160 () Bool)

(declare-fun res!602726 () Bool)

(assert (=> b!889160 (=> (not res!602726) (not e!495635))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51852 (_ BitVec 32)) Bool)

(assert (=> b!889160 (= res!602726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9874 thiss!1181) (mask!25633 thiss!1181)))))

(declare-fun res!602723 () Bool)

(declare-fun e!495632 () Bool)

(assert (=> start!75672 (=> (not res!602723) (not e!495632))))

(declare-fun valid!1544 (LongMapFixedSize!3996) Bool)

(assert (=> start!75672 (= res!602723 (valid!1544 thiss!1181))))

(assert (=> start!75672 e!495632))

(declare-fun e!495634 () Bool)

(assert (=> start!75672 e!495634))

(assert (=> start!75672 true))

(declare-fun mapNonEmpty!28469 () Bool)

(declare-fun mapRes!28469 () Bool)

(declare-fun tp!54815 () Bool)

(declare-fun e!495633 () Bool)

(assert (=> mapNonEmpty!28469 (= mapRes!28469 (and tp!54815 e!495633))))

(declare-fun mapRest!28469 () (Array (_ BitVec 32) ValueCell!8490))

(declare-fun mapValue!28469 () ValueCell!8490)

(declare-fun mapKey!28469 () (_ BitVec 32))

(assert (=> mapNonEmpty!28469 (= (arr!24929 (_values!5180 thiss!1181)) (store mapRest!28469 mapKey!28469 mapValue!28469))))

(declare-fun b!889161 () Bool)

(declare-fun tp_is_empty!17943 () Bool)

(assert (=> b!889161 (= e!495633 tp_is_empty!17943)))

(declare-fun b!889162 () Bool)

(declare-fun res!602724 () Bool)

(assert (=> b!889162 (=> (not res!602724) (not e!495632))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889162 (= res!602724 (not (= key!785 (bvneg key!785))))))

(declare-fun b!889163 () Bool)

(declare-fun e!495638 () Bool)

(declare-fun e!495636 () Bool)

(assert (=> b!889163 (= e!495638 (and e!495636 mapRes!28469))))

(declare-fun condMapEmpty!28469 () Bool)

(declare-fun mapDefault!28469 () ValueCell!8490)

(assert (=> b!889163 (= condMapEmpty!28469 (= (arr!24929 (_values!5180 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8490)) mapDefault!28469)))))

(declare-fun b!889164 () Bool)

(assert (=> b!889164 (= e!495636 tp_is_empty!17943)))

(declare-fun array_inv!19582 (array!51852) Bool)

(declare-fun array_inv!19583 (array!51854) Bool)

(assert (=> b!889165 (= e!495634 (and tp!54814 tp_is_empty!17943 (array_inv!19582 (_keys!9874 thiss!1181)) (array_inv!19583 (_values!5180 thiss!1181)) e!495638))))

(declare-fun b!889166 () Bool)

(assert (=> b!889166 (= e!495632 e!495635)))

(declare-fun res!602727 () Bool)

(assert (=> b!889166 (=> (not res!602727) (not e!495635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889166 (= res!602727 (validMask!0 (mask!25633 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8760 0))(
  ( (MissingZero!8760 (index!37410 (_ BitVec 32))) (Found!8760 (index!37411 (_ BitVec 32))) (Intermediate!8760 (undefined!9572 Bool) (index!37412 (_ BitVec 32)) (x!75481 (_ BitVec 32))) (Undefined!8760) (MissingVacant!8760 (index!37413 (_ BitVec 32))) )
))
(declare-fun lt!401949 () SeekEntryResult!8760)

(declare-fun seekEntry!0 ((_ BitVec 64) array!51852 (_ BitVec 32)) SeekEntryResult!8760)

(assert (=> b!889166 (= lt!401949 (seekEntry!0 key!785 (_keys!9874 thiss!1181) (mask!25633 thiss!1181)))))

(declare-fun mapIsEmpty!28469 () Bool)

(assert (=> mapIsEmpty!28469 mapRes!28469))

(declare-fun b!889167 () Bool)

(assert (=> b!889167 (= e!495635 false)))

(declare-fun lt!401948 () Bool)

(declare-datatypes ((List!17781 0))(
  ( (Nil!17778) (Cons!17777 (h!18908 (_ BitVec 64)) (t!25088 List!17781)) )
))
(declare-fun arrayNoDuplicates!0 (array!51852 (_ BitVec 32) List!17781) Bool)

(assert (=> b!889167 (= lt!401948 (arrayNoDuplicates!0 (_keys!9874 thiss!1181) #b00000000000000000000000000000000 Nil!17778))))

(assert (= (and start!75672 res!602723) b!889162))

(assert (= (and b!889162 res!602724) b!889166))

(assert (= (and b!889166 res!602727) b!889159))

(assert (= (and b!889159 res!602725) b!889160))

(assert (= (and b!889160 res!602726) b!889167))

(assert (= (and b!889163 condMapEmpty!28469) mapIsEmpty!28469))

(assert (= (and b!889163 (not condMapEmpty!28469)) mapNonEmpty!28469))

(get-info :version)

(assert (= (and mapNonEmpty!28469 ((_ is ValueCellFull!8490) mapValue!28469)) b!889161))

(assert (= (and b!889163 ((_ is ValueCellFull!8490) mapDefault!28469)) b!889164))

(assert (= b!889165 b!889163))

(assert (= start!75672 b!889165))

(declare-fun m!828233 () Bool)

(assert (=> b!889166 m!828233))

(declare-fun m!828235 () Bool)

(assert (=> b!889166 m!828235))

(declare-fun m!828237 () Bool)

(assert (=> mapNonEmpty!28469 m!828237))

(declare-fun m!828239 () Bool)

(assert (=> b!889160 m!828239))

(declare-fun m!828241 () Bool)

(assert (=> b!889167 m!828241))

(declare-fun m!828243 () Bool)

(assert (=> start!75672 m!828243))

(declare-fun m!828245 () Bool)

(assert (=> b!889165 m!828245))

(declare-fun m!828247 () Bool)

(assert (=> b!889165 m!828247))

(check-sat (not mapNonEmpty!28469) (not b!889165) (not b!889160) (not b_next!15615) tp_is_empty!17943 (not start!75672) (not b!889167) b_and!25873 (not b!889166))
(check-sat b_and!25873 (not b_next!15615))
