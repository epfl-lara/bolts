; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15678 () Bool)

(assert start!15678)

(declare-fun b!156062 () Bool)

(declare-fun b_free!3333 () Bool)

(declare-fun b_next!3333 () Bool)

(assert (=> b!156062 (= b_free!3333 (not b_next!3333))))

(declare-fun tp!12523 () Bool)

(declare-fun b_and!9765 () Bool)

(assert (=> b!156062 (= tp!12523 b_and!9765)))

(declare-fun b!156058 () Bool)

(declare-fun e!102072 () Bool)

(declare-fun e!102071 () Bool)

(declare-fun mapRes!5345 () Bool)

(assert (=> b!156058 (= e!102072 (and e!102071 mapRes!5345))))

(declare-fun condMapEmpty!5345 () Bool)

(declare-datatypes ((V!3827 0))(
  ( (V!3828 (val!1612 Int)) )
))
(declare-datatypes ((ValueCell!1224 0))(
  ( (ValueCellFull!1224 (v!3473 V!3827)) (EmptyCell!1224) )
))
(declare-datatypes ((array!5322 0))(
  ( (array!5323 (arr!2518 (Array (_ BitVec 32) (_ BitVec 64))) (size!2796 (_ BitVec 32))) )
))
(declare-datatypes ((array!5324 0))(
  ( (array!5325 (arr!2519 (Array (_ BitVec 32) ValueCell!1224)) (size!2797 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1356 0))(
  ( (LongMapFixedSize!1357 (defaultEntry!3120 Int) (mask!7563 (_ BitVec 32)) (extraKeys!2861 (_ BitVec 32)) (zeroValue!2963 V!3827) (minValue!2963 V!3827) (_size!727 (_ BitVec 32)) (_keys!4895 array!5322) (_values!3103 array!5324) (_vacant!727 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1356)

(declare-fun mapDefault!5345 () ValueCell!1224)

(assert (=> b!156058 (= condMapEmpty!5345 (= (arr!2519 (_values!3103 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1224)) mapDefault!5345)))))

(declare-fun b!156059 () Bool)

(declare-fun tp_is_empty!3135 () Bool)

(assert (=> b!156059 (= e!102071 tp_is_empty!3135)))

(declare-fun res!73722 () Bool)

(declare-fun e!102069 () Bool)

(assert (=> start!15678 (=> (not res!73722) (not e!102069))))

(declare-fun valid!655 (LongMapFixedSize!1356) Bool)

(assert (=> start!15678 (= res!73722 (valid!655 thiss!1248))))

(assert (=> start!15678 e!102069))

(declare-fun e!102073 () Bool)

(assert (=> start!15678 e!102073))

(assert (=> start!15678 true))

(declare-fun mapNonEmpty!5345 () Bool)

(declare-fun tp!12524 () Bool)

(declare-fun e!102074 () Bool)

(assert (=> mapNonEmpty!5345 (= mapRes!5345 (and tp!12524 e!102074))))

(declare-fun mapKey!5345 () (_ BitVec 32))

(declare-fun mapRest!5345 () (Array (_ BitVec 32) ValueCell!1224))

(declare-fun mapValue!5345 () ValueCell!1224)

(assert (=> mapNonEmpty!5345 (= (arr!2519 (_values!3103 thiss!1248)) (store mapRest!5345 mapKey!5345 mapValue!5345))))

(declare-fun b!156060 () Bool)

(assert (=> b!156060 (= e!102074 tp_is_empty!3135)))

(declare-fun b!156061 () Bool)

(declare-fun res!73725 () Bool)

(assert (=> b!156061 (=> (not res!73725) (not e!102069))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156061 (= res!73725 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun array_inv!1581 (array!5322) Bool)

(declare-fun array_inv!1582 (array!5324) Bool)

(assert (=> b!156062 (= e!102073 (and tp!12523 tp_is_empty!3135 (array_inv!1581 (_keys!4895 thiss!1248)) (array_inv!1582 (_values!3103 thiss!1248)) e!102072))))

(declare-fun b!156063 () Bool)

(declare-fun res!73724 () Bool)

(assert (=> b!156063 (=> (not res!73724) (not e!102069))))

(assert (=> b!156063 (= res!73724 (and (= (size!2797 (_values!3103 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7563 thiss!1248))) (= (size!2796 (_keys!4895 thiss!1248)) (size!2797 (_values!3103 thiss!1248))) (bvsge (mask!7563 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2861 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2861 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2861 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2861 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2861 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2861 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2861 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!156064 () Bool)

(declare-fun res!73723 () Bool)

(assert (=> b!156064 (=> (not res!73723) (not e!102069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156064 (= res!73723 (validMask!0 (mask!7563 thiss!1248)))))

(declare-fun mapIsEmpty!5345 () Bool)

(assert (=> mapIsEmpty!5345 mapRes!5345))

(declare-fun b!156065 () Bool)

(declare-fun res!73726 () Bool)

(assert (=> b!156065 (=> (not res!73726) (not e!102069))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5322 (_ BitVec 32)) Bool)

(assert (=> b!156065 (= res!73726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4895 thiss!1248) (mask!7563 thiss!1248)))))

(declare-fun b!156066 () Bool)

(assert (=> b!156066 (= e!102069 false)))

(declare-fun lt!81536 () Bool)

(declare-datatypes ((List!1863 0))(
  ( (Nil!1860) (Cons!1859 (h!2468 (_ BitVec 64)) (t!6673 List!1863)) )
))
(declare-fun arrayNoDuplicates!0 (array!5322 (_ BitVec 32) List!1863) Bool)

(assert (=> b!156066 (= lt!81536 (arrayNoDuplicates!0 (_keys!4895 thiss!1248) #b00000000000000000000000000000000 Nil!1860))))

(assert (= (and start!15678 res!73722) b!156061))

(assert (= (and b!156061 res!73725) b!156064))

(assert (= (and b!156064 res!73723) b!156063))

(assert (= (and b!156063 res!73724) b!156065))

(assert (= (and b!156065 res!73726) b!156066))

(assert (= (and b!156058 condMapEmpty!5345) mapIsEmpty!5345))

(assert (= (and b!156058 (not condMapEmpty!5345)) mapNonEmpty!5345))

(get-info :version)

(assert (= (and mapNonEmpty!5345 ((_ is ValueCellFull!1224) mapValue!5345)) b!156060))

(assert (= (and b!156058 ((_ is ValueCellFull!1224) mapDefault!5345)) b!156059))

(assert (= b!156062 b!156058))

(assert (= start!15678 b!156062))

(declare-fun m!189805 () Bool)

(assert (=> b!156064 m!189805))

(declare-fun m!189807 () Bool)

(assert (=> b!156066 m!189807))

(declare-fun m!189809 () Bool)

(assert (=> mapNonEmpty!5345 m!189809))

(declare-fun m!189811 () Bool)

(assert (=> start!15678 m!189811))

(declare-fun m!189813 () Bool)

(assert (=> b!156062 m!189813))

(declare-fun m!189815 () Bool)

(assert (=> b!156062 m!189815))

(declare-fun m!189817 () Bool)

(assert (=> b!156065 m!189817))

(check-sat (not mapNonEmpty!5345) (not b!156064) b_and!9765 tp_is_empty!3135 (not start!15678) (not b!156065) (not b!156062) (not b_next!3333) (not b!156066))
(check-sat b_and!9765 (not b_next!3333))
