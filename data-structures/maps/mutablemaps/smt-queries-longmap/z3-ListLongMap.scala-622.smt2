; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16094 () Bool)

(assert start!16094)

(declare-fun b!159722 () Bool)

(declare-fun b_free!3543 () Bool)

(declare-fun b_next!3543 () Bool)

(assert (=> b!159722 (= b_free!3543 (not b_next!3543))))

(declare-fun tp!13198 () Bool)

(declare-fun b_and!9975 () Bool)

(assert (=> b!159722 (= tp!13198 b_and!9975)))

(declare-fun b!159715 () Bool)

(declare-fun res!75532 () Bool)

(declare-fun e!104514 () Bool)

(assert (=> b!159715 (=> (not res!75532) (not e!104514))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!159715 (= res!75532 (not (= key!828 (bvneg key!828))))))

(declare-fun b!159716 () Bool)

(declare-fun res!75533 () Bool)

(assert (=> b!159716 (=> (not res!75533) (not e!104514))))

(declare-datatypes ((V!4107 0))(
  ( (V!4108 (val!1717 Int)) )
))
(declare-datatypes ((ValueCell!1329 0))(
  ( (ValueCellFull!1329 (v!3578 V!4107)) (EmptyCell!1329) )
))
(declare-datatypes ((array!5768 0))(
  ( (array!5769 (arr!2728 (Array (_ BitVec 32) (_ BitVec 64))) (size!3012 (_ BitVec 32))) )
))
(declare-datatypes ((array!5770 0))(
  ( (array!5771 (arr!2729 (Array (_ BitVec 32) ValueCell!1329)) (size!3013 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1566 0))(
  ( (LongMapFixedSize!1567 (defaultEntry!3225 Int) (mask!7781 (_ BitVec 32)) (extraKeys!2966 (_ BitVec 32)) (zeroValue!3068 V!4107) (minValue!3068 V!4107) (_size!832 (_ BitVec 32)) (_keys!5026 array!5768) (_values!3208 array!5770) (_vacant!832 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1566)

(declare-datatypes ((tuple2!2880 0))(
  ( (tuple2!2881 (_1!1450 (_ BitVec 64)) (_2!1450 V!4107)) )
))
(declare-datatypes ((List!1935 0))(
  ( (Nil!1932) (Cons!1931 (h!2544 tuple2!2880) (t!6745 List!1935)) )
))
(declare-datatypes ((ListLongMap!1889 0))(
  ( (ListLongMap!1890 (toList!960 List!1935)) )
))
(declare-fun contains!990 (ListLongMap!1889 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!620 (array!5768 array!5770 (_ BitVec 32) (_ BitVec 32) V!4107 V!4107 (_ BitVec 32) Int) ListLongMap!1889)

(assert (=> b!159716 (= res!75533 (contains!990 (getCurrentListMap!620 (_keys!5026 thiss!1248) (_values!3208 thiss!1248) (mask!7781 thiss!1248) (extraKeys!2966 thiss!1248) (zeroValue!3068 thiss!1248) (minValue!3068 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3225 thiss!1248)) key!828))))

(declare-fun mapIsEmpty!5705 () Bool)

(declare-fun mapRes!5705 () Bool)

(assert (=> mapIsEmpty!5705 mapRes!5705))

(declare-fun b!159717 () Bool)

(declare-fun res!75530 () Bool)

(assert (=> b!159717 (=> (not res!75530) (not e!104514))))

(assert (=> b!159717 (= res!75530 (and (= (size!3013 (_values!3208 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7781 thiss!1248))) (= (size!3012 (_keys!5026 thiss!1248)) (size!3013 (_values!3208 thiss!1248))) (bvsge (mask!7781 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2966 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2966 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159718 () Bool)

(assert (=> b!159718 (= e!104514 false)))

(declare-fun lt!82049 () Bool)

(declare-datatypes ((List!1936 0))(
  ( (Nil!1933) (Cons!1932 (h!2545 (_ BitVec 64)) (t!6746 List!1936)) )
))
(declare-fun arrayNoDuplicates!0 (array!5768 (_ BitVec 32) List!1936) Bool)

(assert (=> b!159718 (= lt!82049 (arrayNoDuplicates!0 (_keys!5026 thiss!1248) #b00000000000000000000000000000000 Nil!1933))))

(declare-fun b!159719 () Bool)

(declare-fun res!75529 () Bool)

(assert (=> b!159719 (=> (not res!75529) (not e!104514))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159719 (= res!75529 (validMask!0 (mask!7781 thiss!1248)))))

(declare-fun mapNonEmpty!5705 () Bool)

(declare-fun tp!13199 () Bool)

(declare-fun e!104517 () Bool)

(assert (=> mapNonEmpty!5705 (= mapRes!5705 (and tp!13199 e!104517))))

(declare-fun mapKey!5705 () (_ BitVec 32))

(declare-fun mapValue!5705 () ValueCell!1329)

(declare-fun mapRest!5705 () (Array (_ BitVec 32) ValueCell!1329))

(assert (=> mapNonEmpty!5705 (= (arr!2729 (_values!3208 thiss!1248)) (store mapRest!5705 mapKey!5705 mapValue!5705))))

(declare-fun b!159720 () Bool)

(declare-fun e!104518 () Bool)

(declare-fun e!104516 () Bool)

(assert (=> b!159720 (= e!104518 (and e!104516 mapRes!5705))))

(declare-fun condMapEmpty!5705 () Bool)

(declare-fun mapDefault!5705 () ValueCell!1329)

(assert (=> b!159720 (= condMapEmpty!5705 (= (arr!2729 (_values!3208 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1329)) mapDefault!5705)))))

(declare-fun b!159721 () Bool)

(declare-fun res!75528 () Bool)

(assert (=> b!159721 (=> (not res!75528) (not e!104514))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!329 0))(
  ( (MissingZero!329 (index!3484 (_ BitVec 32))) (Found!329 (index!3485 (_ BitVec 32))) (Intermediate!329 (undefined!1141 Bool) (index!3486 (_ BitVec 32)) (x!17649 (_ BitVec 32))) (Undefined!329) (MissingVacant!329 (index!3487 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5768 (_ BitVec 32)) SeekEntryResult!329)

(assert (=> b!159721 (= res!75528 ((_ is Undefined!329) (seekEntryOrOpen!0 key!828 (_keys!5026 thiss!1248) (mask!7781 thiss!1248))))))

(declare-fun e!104515 () Bool)

(declare-fun tp_is_empty!3345 () Bool)

(declare-fun array_inv!1729 (array!5768) Bool)

(declare-fun array_inv!1730 (array!5770) Bool)

(assert (=> b!159722 (= e!104515 (and tp!13198 tp_is_empty!3345 (array_inv!1729 (_keys!5026 thiss!1248)) (array_inv!1730 (_values!3208 thiss!1248)) e!104518))))

(declare-fun b!159723 () Bool)

(assert (=> b!159723 (= e!104516 tp_is_empty!3345)))

(declare-fun b!159724 () Bool)

(declare-fun res!75527 () Bool)

(assert (=> b!159724 (=> (not res!75527) (not e!104514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5768 (_ BitVec 32)) Bool)

(assert (=> b!159724 (= res!75527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5026 thiss!1248) (mask!7781 thiss!1248)))))

(declare-fun b!159725 () Bool)

(assert (=> b!159725 (= e!104517 tp_is_empty!3345)))

(declare-fun res!75531 () Bool)

(assert (=> start!16094 (=> (not res!75531) (not e!104514))))

(declare-fun valid!726 (LongMapFixedSize!1566) Bool)

(assert (=> start!16094 (= res!75531 (valid!726 thiss!1248))))

(assert (=> start!16094 e!104514))

(assert (=> start!16094 e!104515))

(assert (=> start!16094 true))

(assert (= (and start!16094 res!75531) b!159715))

(assert (= (and b!159715 res!75532) b!159721))

(assert (= (and b!159721 res!75528) b!159716))

(assert (= (and b!159716 res!75533) b!159719))

(assert (= (and b!159719 res!75529) b!159717))

(assert (= (and b!159717 res!75530) b!159724))

(assert (= (and b!159724 res!75527) b!159718))

(assert (= (and b!159720 condMapEmpty!5705) mapIsEmpty!5705))

(assert (= (and b!159720 (not condMapEmpty!5705)) mapNonEmpty!5705))

(assert (= (and mapNonEmpty!5705 ((_ is ValueCellFull!1329) mapValue!5705)) b!159725))

(assert (= (and b!159720 ((_ is ValueCellFull!1329) mapDefault!5705)) b!159723))

(assert (= b!159722 b!159720))

(assert (= start!16094 b!159722))

(declare-fun m!191875 () Bool)

(assert (=> b!159718 m!191875))

(declare-fun m!191877 () Bool)

(assert (=> b!159719 m!191877))

(declare-fun m!191879 () Bool)

(assert (=> mapNonEmpty!5705 m!191879))

(declare-fun m!191881 () Bool)

(assert (=> b!159716 m!191881))

(assert (=> b!159716 m!191881))

(declare-fun m!191883 () Bool)

(assert (=> b!159716 m!191883))

(declare-fun m!191885 () Bool)

(assert (=> start!16094 m!191885))

(declare-fun m!191887 () Bool)

(assert (=> b!159721 m!191887))

(declare-fun m!191889 () Bool)

(assert (=> b!159722 m!191889))

(declare-fun m!191891 () Bool)

(assert (=> b!159722 m!191891))

(declare-fun m!191893 () Bool)

(assert (=> b!159724 m!191893))

(check-sat (not b!159722) (not b!159718) (not b!159721) (not b!159724) (not b!159719) tp_is_empty!3345 b_and!9975 (not b_next!3543) (not mapNonEmpty!5705) (not b!159716) (not start!16094))
(check-sat b_and!9975 (not b_next!3543))
