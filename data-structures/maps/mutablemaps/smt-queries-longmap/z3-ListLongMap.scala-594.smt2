; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15720 () Bool)

(assert start!15720)

(declare-fun b!156629 () Bool)

(declare-fun b_free!3375 () Bool)

(declare-fun b_next!3375 () Bool)

(assert (=> b!156629 (= b_free!3375 (not b_next!3375))))

(declare-fun tp!12650 () Bool)

(declare-fun b_and!9807 () Bool)

(assert (=> b!156629 (= tp!12650 b_and!9807)))

(declare-fun b!156625 () Bool)

(declare-fun e!102447 () Bool)

(declare-fun tp_is_empty!3177 () Bool)

(assert (=> b!156625 (= e!102447 tp_is_empty!3177)))

(declare-fun mapNonEmpty!5408 () Bool)

(declare-fun mapRes!5408 () Bool)

(declare-fun tp!12649 () Bool)

(assert (=> mapNonEmpty!5408 (= mapRes!5408 (and tp!12649 e!102447))))

(declare-datatypes ((V!3883 0))(
  ( (V!3884 (val!1633 Int)) )
))
(declare-datatypes ((ValueCell!1245 0))(
  ( (ValueCellFull!1245 (v!3494 V!3883)) (EmptyCell!1245) )
))
(declare-fun mapRest!5408 () (Array (_ BitVec 32) ValueCell!1245))

(declare-fun mapValue!5408 () ValueCell!1245)

(declare-datatypes ((array!5406 0))(
  ( (array!5407 (arr!2560 (Array (_ BitVec 32) (_ BitVec 64))) (size!2838 (_ BitVec 32))) )
))
(declare-datatypes ((array!5408 0))(
  ( (array!5409 (arr!2561 (Array (_ BitVec 32) ValueCell!1245)) (size!2839 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1398 0))(
  ( (LongMapFixedSize!1399 (defaultEntry!3141 Int) (mask!7598 (_ BitVec 32)) (extraKeys!2882 (_ BitVec 32)) (zeroValue!2984 V!3883) (minValue!2984 V!3883) (_size!748 (_ BitVec 32)) (_keys!4916 array!5406) (_values!3124 array!5408) (_vacant!748 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1398)

(declare-fun mapKey!5408 () (_ BitVec 32))

(assert (=> mapNonEmpty!5408 (= (arr!2561 (_values!3124 thiss!1248)) (store mapRest!5408 mapKey!5408 mapValue!5408))))

(declare-fun b!156627 () Bool)

(declare-fun res!74039 () Bool)

(declare-fun e!102449 () Bool)

(assert (=> b!156627 (=> (not res!74039) (not e!102449))))

(assert (=> b!156627 (= res!74039 (and (= (size!2839 (_values!3124 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7598 thiss!1248))) (= (size!2838 (_keys!4916 thiss!1248)) (size!2839 (_values!3124 thiss!1248))) (bvsge (mask!7598 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2882 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2882 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2882 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2882 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2882 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2882 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2882 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!156628 () Bool)

(declare-fun e!102452 () Bool)

(declare-fun e!102448 () Bool)

(assert (=> b!156628 (= e!102452 (and e!102448 mapRes!5408))))

(declare-fun condMapEmpty!5408 () Bool)

(declare-fun mapDefault!5408 () ValueCell!1245)

(assert (=> b!156628 (= condMapEmpty!5408 (= (arr!2561 (_values!3124 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1245)) mapDefault!5408)))))

(declare-fun e!102451 () Bool)

(declare-fun array_inv!1615 (array!5406) Bool)

(declare-fun array_inv!1616 (array!5408) Bool)

(assert (=> b!156629 (= e!102451 (and tp!12650 tp_is_empty!3177 (array_inv!1615 (_keys!4916 thiss!1248)) (array_inv!1616 (_values!3124 thiss!1248)) e!102452))))

(declare-fun b!156630 () Bool)

(assert (=> b!156630 (= e!102448 tp_is_empty!3177)))

(declare-fun b!156626 () Bool)

(declare-fun res!74040 () Bool)

(assert (=> b!156626 (=> (not res!74040) (not e!102449))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5406 (_ BitVec 32)) Bool)

(assert (=> b!156626 (= res!74040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4916 thiss!1248) (mask!7598 thiss!1248)))))

(declare-fun res!74041 () Bool)

(assert (=> start!15720 (=> (not res!74041) (not e!102449))))

(declare-fun valid!671 (LongMapFixedSize!1398) Bool)

(assert (=> start!15720 (= res!74041 (valid!671 thiss!1248))))

(assert (=> start!15720 e!102449))

(assert (=> start!15720 e!102451))

(assert (=> start!15720 true))

(declare-fun b!156631 () Bool)

(assert (=> b!156631 (= e!102449 false)))

(declare-fun lt!81599 () Bool)

(declare-datatypes ((List!1876 0))(
  ( (Nil!1873) (Cons!1872 (h!2481 (_ BitVec 64)) (t!6686 List!1876)) )
))
(declare-fun arrayNoDuplicates!0 (array!5406 (_ BitVec 32) List!1876) Bool)

(assert (=> b!156631 (= lt!81599 (arrayNoDuplicates!0 (_keys!4916 thiss!1248) #b00000000000000000000000000000000 Nil!1873))))

(declare-fun b!156632 () Bool)

(declare-fun res!74038 () Bool)

(assert (=> b!156632 (=> (not res!74038) (not e!102449))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156632 (= res!74038 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!5408 () Bool)

(assert (=> mapIsEmpty!5408 mapRes!5408))

(declare-fun b!156633 () Bool)

(declare-fun res!74037 () Bool)

(assert (=> b!156633 (=> (not res!74037) (not e!102449))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156633 (= res!74037 (validMask!0 (mask!7598 thiss!1248)))))

(assert (= (and start!15720 res!74041) b!156632))

(assert (= (and b!156632 res!74038) b!156633))

(assert (= (and b!156633 res!74037) b!156627))

(assert (= (and b!156627 res!74039) b!156626))

(assert (= (and b!156626 res!74040) b!156631))

(assert (= (and b!156628 condMapEmpty!5408) mapIsEmpty!5408))

(assert (= (and b!156628 (not condMapEmpty!5408)) mapNonEmpty!5408))

(get-info :version)

(assert (= (and mapNonEmpty!5408 ((_ is ValueCellFull!1245) mapValue!5408)) b!156625))

(assert (= (and b!156628 ((_ is ValueCellFull!1245) mapDefault!5408)) b!156630))

(assert (= b!156629 b!156628))

(assert (= start!15720 b!156629))

(declare-fun m!190099 () Bool)

(assert (=> b!156633 m!190099))

(declare-fun m!190101 () Bool)

(assert (=> mapNonEmpty!5408 m!190101))

(declare-fun m!190103 () Bool)

(assert (=> b!156626 m!190103))

(declare-fun m!190105 () Bool)

(assert (=> b!156629 m!190105))

(declare-fun m!190107 () Bool)

(assert (=> b!156629 m!190107))

(declare-fun m!190109 () Bool)

(assert (=> b!156631 m!190109))

(declare-fun m!190111 () Bool)

(assert (=> start!15720 m!190111))

(check-sat tp_is_empty!3177 (not mapNonEmpty!5408) (not b_next!3375) (not b!156631) (not start!15720) (not b!156626) (not b!156633) (not b!156629) b_and!9807)
(check-sat b_and!9807 (not b_next!3375))
