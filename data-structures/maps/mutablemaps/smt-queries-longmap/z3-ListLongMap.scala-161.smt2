; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3036 () Bool)

(assert start!3036)

(declare-fun b!18123 () Bool)

(declare-fun b_free!645 () Bool)

(declare-fun b_next!645 () Bool)

(assert (=> b!18123 (= b_free!645 (not b_next!645))))

(declare-fun tp!3125 () Bool)

(declare-fun b_and!1295 () Bool)

(assert (=> b!18123 (= tp!3125 b_and!1295)))

(declare-fun b!18119 () Bool)

(declare-fun e!11598 () Bool)

(declare-fun tp_is_empty!909 () Bool)

(assert (=> b!18119 (= e!11598 tp_is_empty!909)))

(declare-fun b!18120 () Bool)

(declare-fun e!11601 () Bool)

(declare-fun e!11600 () Bool)

(assert (=> b!18120 (= e!11601 e!11600)))

(declare-fun b!18121 () Bool)

(declare-datatypes ((V!1037 0))(
  ( (V!1038 (val!481 Int)) )
))
(declare-datatypes ((ValueCell!255 0))(
  ( (ValueCellFull!255 (v!1466 V!1037)) (EmptyCell!255) )
))
(declare-datatypes ((array!1015 0))(
  ( (array!1016 (arr!489 (Array (_ BitVec 32) ValueCell!255)) (size!579 (_ BitVec 32))) )
))
(declare-datatypes ((array!1017 0))(
  ( (array!1018 (arr!490 (Array (_ BitVec 32) (_ BitVec 64))) (size!580 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!96 0))(
  ( (LongMapFixedSize!97 (defaultEntry!1659 Int) (mask!4590 (_ BitVec 32)) (extraKeys!1572 (_ BitVec 32)) (zeroValue!1595 V!1037) (minValue!1595 V!1037) (_size!80 (_ BitVec 32)) (_keys!3084 array!1017) (_values!1656 array!1015) (_vacant!80 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!96 0))(
  ( (Cell!97 (v!1467 LongMapFixedSize!96)) )
))
(declare-datatypes ((LongMap!96 0))(
  ( (LongMap!97 (underlying!59 Cell!96)) )
))
(declare-datatypes ((tuple2!768 0))(
  ( (tuple2!769 (_1!385 Bool) (_2!385 LongMap!96)) )
))
(declare-fun e!11602 () tuple2!768)

(declare-fun thiss!848 () LongMap!96)

(assert (=> b!18121 (= e!11602 (tuple2!769 true thiss!848))))

(declare-fun b!18122 () Bool)

(declare-fun e!11594 () Bool)

(declare-fun e!11596 () Bool)

(assert (=> b!18122 (= e!11594 e!11596)))

(declare-fun res!12728 () Bool)

(assert (=> b!18122 (=> (not res!12728) (not e!11596))))

(declare-fun lt!4679 () tuple2!768)

(assert (=> b!18122 (= res!12728 (not (_1!385 lt!4679)))))

(assert (=> b!18122 (= lt!4679 e!11602)))

(declare-fun c!1822 () Bool)

(declare-fun imbalanced!26 (LongMap!96) Bool)

(assert (=> b!18122 (= c!1822 (imbalanced!26 thiss!848))))

(declare-fun e!11599 () Bool)

(declare-fun e!11597 () Bool)

(declare-fun array_inv!347 (array!1017) Bool)

(declare-fun array_inv!348 (array!1015) Bool)

(assert (=> b!18123 (= e!11597 (and tp!3125 tp_is_empty!909 (array_inv!347 (_keys!3084 (v!1467 (underlying!59 thiss!848)))) (array_inv!348 (_values!1656 (v!1467 (underlying!59 thiss!848)))) e!11599))))

(declare-fun res!12729 () Bool)

(assert (=> start!3036 (=> (not res!12729) (not e!11594))))

(declare-fun valid!50 (LongMap!96) Bool)

(assert (=> start!3036 (= res!12729 (valid!50 thiss!848))))

(assert (=> start!3036 e!11594))

(assert (=> start!3036 e!11601))

(declare-fun b!18124 () Bool)

(assert (=> b!18124 (= e!11600 e!11597)))

(declare-fun mapIsEmpty!798 () Bool)

(declare-fun mapRes!798 () Bool)

(assert (=> mapIsEmpty!798 mapRes!798))

(declare-fun b!18125 () Bool)

(declare-fun repack!22 (LongMap!96) tuple2!768)

(assert (=> b!18125 (= e!11602 (repack!22 thiss!848))))

(declare-fun b!18126 () Bool)

(declare-fun e!11603 () Bool)

(assert (=> b!18126 (= e!11599 (and e!11603 mapRes!798))))

(declare-fun condMapEmpty!798 () Bool)

(declare-fun mapDefault!798 () ValueCell!255)

(assert (=> b!18126 (= condMapEmpty!798 (= (arr!489 (_values!1656 (v!1467 (underlying!59 thiss!848)))) ((as const (Array (_ BitVec 32) ValueCell!255)) mapDefault!798)))))

(declare-fun b!18127 () Bool)

(assert (=> b!18127 (= e!11596 false)))

(declare-fun lt!4680 () Bool)

(assert (=> b!18127 (= lt!4680 (valid!50 (_2!385 lt!4679)))))

(declare-fun mapNonEmpty!798 () Bool)

(declare-fun tp!3126 () Bool)

(assert (=> mapNonEmpty!798 (= mapRes!798 (and tp!3126 e!11598))))

(declare-fun mapRest!798 () (Array (_ BitVec 32) ValueCell!255))

(declare-fun mapKey!798 () (_ BitVec 32))

(declare-fun mapValue!798 () ValueCell!255)

(assert (=> mapNonEmpty!798 (= (arr!489 (_values!1656 (v!1467 (underlying!59 thiss!848)))) (store mapRest!798 mapKey!798 mapValue!798))))

(declare-fun b!18128 () Bool)

(assert (=> b!18128 (= e!11603 tp_is_empty!909)))

(assert (= (and start!3036 res!12729) b!18122))

(assert (= (and b!18122 c!1822) b!18125))

(assert (= (and b!18122 (not c!1822)) b!18121))

(assert (= (and b!18122 res!12728) b!18127))

(assert (= (and b!18126 condMapEmpty!798) mapIsEmpty!798))

(assert (= (and b!18126 (not condMapEmpty!798)) mapNonEmpty!798))

(get-info :version)

(assert (= (and mapNonEmpty!798 ((_ is ValueCellFull!255) mapValue!798)) b!18119))

(assert (= (and b!18126 ((_ is ValueCellFull!255) mapDefault!798)) b!18128))

(assert (= b!18123 b!18126))

(assert (= b!18124 b!18123))

(assert (= b!18120 b!18124))

(assert (= start!3036 b!18120))

(declare-fun m!12611 () Bool)

(assert (=> b!18122 m!12611))

(declare-fun m!12613 () Bool)

(assert (=> b!18125 m!12613))

(declare-fun m!12615 () Bool)

(assert (=> start!3036 m!12615))

(declare-fun m!12617 () Bool)

(assert (=> b!18123 m!12617))

(declare-fun m!12619 () Bool)

(assert (=> b!18123 m!12619))

(declare-fun m!12621 () Bool)

(assert (=> mapNonEmpty!798 m!12621))

(declare-fun m!12623 () Bool)

(assert (=> b!18127 m!12623))

(check-sat (not b!18122) (not b!18123) tp_is_empty!909 (not b_next!645) (not start!3036) b_and!1295 (not b!18127) (not mapNonEmpty!798) (not b!18125))
(check-sat b_and!1295 (not b_next!645))
