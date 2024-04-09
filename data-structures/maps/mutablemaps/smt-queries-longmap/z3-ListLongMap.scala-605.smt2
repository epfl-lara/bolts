; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15802 () Bool)

(assert start!15802)

(declare-fun b!157432 () Bool)

(declare-fun b_free!3441 () Bool)

(declare-fun b_next!3441 () Bool)

(assert (=> b!157432 (= b_free!3441 (not b_next!3441))))

(declare-fun tp!12852 () Bool)

(declare-fun b_and!9873 () Bool)

(assert (=> b!157432 (= tp!12852 b_and!9873)))

(declare-fun mapIsEmpty!5511 () Bool)

(declare-fun mapRes!5511 () Bool)

(assert (=> mapIsEmpty!5511 mapRes!5511))

(declare-fun res!74414 () Bool)

(declare-fun e!103101 () Bool)

(assert (=> start!15802 (=> (not res!74414) (not e!103101))))

(declare-datatypes ((V!3971 0))(
  ( (V!3972 (val!1666 Int)) )
))
(declare-datatypes ((ValueCell!1278 0))(
  ( (ValueCellFull!1278 (v!3527 V!3971)) (EmptyCell!1278) )
))
(declare-datatypes ((array!5540 0))(
  ( (array!5541 (arr!2626 (Array (_ BitVec 32) (_ BitVec 64))) (size!2905 (_ BitVec 32))) )
))
(declare-datatypes ((array!5542 0))(
  ( (array!5543 (arr!2627 (Array (_ BitVec 32) ValueCell!1278)) (size!2906 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1464 0))(
  ( (LongMapFixedSize!1465 (defaultEntry!3174 Int) (mask!7655 (_ BitVec 32)) (extraKeys!2915 (_ BitVec 32)) (zeroValue!3017 V!3971) (minValue!3017 V!3971) (_size!781 (_ BitVec 32)) (_keys!4950 array!5540) (_values!3157 array!5542) (_vacant!781 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1464)

(declare-fun valid!692 (LongMapFixedSize!1464) Bool)

(assert (=> start!15802 (= res!74414 (valid!692 thiss!1248))))

(assert (=> start!15802 e!103101))

(declare-fun e!103104 () Bool)

(assert (=> start!15802 e!103104))

(assert (=> start!15802 true))

(declare-fun e!103100 () Bool)

(declare-fun tp_is_empty!3243 () Bool)

(declare-fun array_inv!1661 (array!5540) Bool)

(declare-fun array_inv!1662 (array!5542) Bool)

(assert (=> b!157432 (= e!103104 (and tp!12852 tp_is_empty!3243 (array_inv!1661 (_keys!4950 thiss!1248)) (array_inv!1662 (_values!3157 thiss!1248)) e!103100))))

(declare-fun b!157433 () Bool)

(declare-fun e!103105 () Bool)

(assert (=> b!157433 (= e!103105 tp_is_empty!3243)))

(declare-fun b!157434 () Bool)

(assert (=> b!157434 (= e!103101 (bvslt (mask!7655 thiss!1248) #b00000000000000000000000000000000))))

(declare-fun b!157435 () Bool)

(declare-fun e!103102 () Bool)

(assert (=> b!157435 (= e!103102 tp_is_empty!3243)))

(declare-fun b!157436 () Bool)

(assert (=> b!157436 (= e!103100 (and e!103105 mapRes!5511))))

(declare-fun condMapEmpty!5511 () Bool)

(declare-fun mapDefault!5511 () ValueCell!1278)

(assert (=> b!157436 (= condMapEmpty!5511 (= (arr!2627 (_values!3157 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1278)) mapDefault!5511)))))

(declare-fun b!157437 () Bool)

(declare-fun res!74415 () Bool)

(assert (=> b!157437 (=> (not res!74415) (not e!103101))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!157437 (= res!74415 (validMask!0 (mask!7655 thiss!1248)))))

(declare-fun b!157438 () Bool)

(declare-fun res!74416 () Bool)

(assert (=> b!157438 (=> (not res!74416) (not e!103101))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!157438 (= res!74416 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!5511 () Bool)

(declare-fun tp!12851 () Bool)

(assert (=> mapNonEmpty!5511 (= mapRes!5511 (and tp!12851 e!103102))))

(declare-fun mapValue!5511 () ValueCell!1278)

(declare-fun mapKey!5511 () (_ BitVec 32))

(declare-fun mapRest!5511 () (Array (_ BitVec 32) ValueCell!1278))

(assert (=> mapNonEmpty!5511 (= (arr!2627 (_values!3157 thiss!1248)) (store mapRest!5511 mapKey!5511 mapValue!5511))))

(assert (= (and start!15802 res!74414) b!157438))

(assert (= (and b!157438 res!74416) b!157437))

(assert (= (and b!157437 res!74415) b!157434))

(assert (= (and b!157436 condMapEmpty!5511) mapIsEmpty!5511))

(assert (= (and b!157436 (not condMapEmpty!5511)) mapNonEmpty!5511))

(get-info :version)

(assert (= (and mapNonEmpty!5511 ((_ is ValueCellFull!1278) mapValue!5511)) b!157435))

(assert (= (and b!157436 ((_ is ValueCellFull!1278) mapDefault!5511)) b!157433))

(assert (= b!157432 b!157436))

(assert (= start!15802 b!157432))

(declare-fun m!190661 () Bool)

(assert (=> start!15802 m!190661))

(declare-fun m!190663 () Bool)

(assert (=> b!157432 m!190663))

(declare-fun m!190665 () Bool)

(assert (=> b!157432 m!190665))

(declare-fun m!190667 () Bool)

(assert (=> b!157437 m!190667))

(declare-fun m!190669 () Bool)

(assert (=> mapNonEmpty!5511 m!190669))

(check-sat (not b_next!3441) b_and!9873 (not mapNonEmpty!5511) tp_is_empty!3243 (not b!157437) (not start!15802) (not b!157432))
(check-sat b_and!9873 (not b_next!3441))
(get-model)

(declare-fun d!50973 () Bool)

(declare-fun res!74432 () Bool)

(declare-fun e!103126 () Bool)

(assert (=> d!50973 (=> (not res!74432) (not e!103126))))

(declare-fun simpleValid!105 (LongMapFixedSize!1464) Bool)

(assert (=> d!50973 (= res!74432 (simpleValid!105 thiss!1248))))

(assert (=> d!50973 (= (valid!692 thiss!1248) e!103126)))

(declare-fun b!157466 () Bool)

(declare-fun res!74433 () Bool)

(assert (=> b!157466 (=> (not res!74433) (not e!103126))))

(declare-fun arrayCountValidKeys!0 (array!5540 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!157466 (= res!74433 (= (arrayCountValidKeys!0 (_keys!4950 thiss!1248) #b00000000000000000000000000000000 (size!2905 (_keys!4950 thiss!1248))) (_size!781 thiss!1248)))))

(declare-fun b!157467 () Bool)

(declare-fun res!74434 () Bool)

(assert (=> b!157467 (=> (not res!74434) (not e!103126))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5540 (_ BitVec 32)) Bool)

(assert (=> b!157467 (= res!74434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4950 thiss!1248) (mask!7655 thiss!1248)))))

(declare-fun b!157468 () Bool)

(declare-datatypes ((List!1897 0))(
  ( (Nil!1894) (Cons!1893 (h!2502 (_ BitVec 64)) (t!6707 List!1897)) )
))
(declare-fun arrayNoDuplicates!0 (array!5540 (_ BitVec 32) List!1897) Bool)

(assert (=> b!157468 (= e!103126 (arrayNoDuplicates!0 (_keys!4950 thiss!1248) #b00000000000000000000000000000000 Nil!1894))))

(assert (= (and d!50973 res!74432) b!157466))

(assert (= (and b!157466 res!74433) b!157467))

(assert (= (and b!157467 res!74434) b!157468))

(declare-fun m!190681 () Bool)

(assert (=> d!50973 m!190681))

(declare-fun m!190683 () Bool)

(assert (=> b!157466 m!190683))

(declare-fun m!190685 () Bool)

(assert (=> b!157467 m!190685))

(declare-fun m!190687 () Bool)

(assert (=> b!157468 m!190687))

(assert (=> start!15802 d!50973))

(declare-fun d!50975 () Bool)

(assert (=> d!50975 (= (array_inv!1661 (_keys!4950 thiss!1248)) (bvsge (size!2905 (_keys!4950 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!157432 d!50975))

(declare-fun d!50977 () Bool)

(assert (=> d!50977 (= (array_inv!1662 (_values!3157 thiss!1248)) (bvsge (size!2906 (_values!3157 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!157432 d!50977))

(declare-fun d!50979 () Bool)

(assert (=> d!50979 (= (validMask!0 (mask!7655 thiss!1248)) (and (or (= (mask!7655 thiss!1248) #b00000000000000000000000000000111) (= (mask!7655 thiss!1248) #b00000000000000000000000000001111) (= (mask!7655 thiss!1248) #b00000000000000000000000000011111) (= (mask!7655 thiss!1248) #b00000000000000000000000000111111) (= (mask!7655 thiss!1248) #b00000000000000000000000001111111) (= (mask!7655 thiss!1248) #b00000000000000000000000011111111) (= (mask!7655 thiss!1248) #b00000000000000000000000111111111) (= (mask!7655 thiss!1248) #b00000000000000000000001111111111) (= (mask!7655 thiss!1248) #b00000000000000000000011111111111) (= (mask!7655 thiss!1248) #b00000000000000000000111111111111) (= (mask!7655 thiss!1248) #b00000000000000000001111111111111) (= (mask!7655 thiss!1248) #b00000000000000000011111111111111) (= (mask!7655 thiss!1248) #b00000000000000000111111111111111) (= (mask!7655 thiss!1248) #b00000000000000001111111111111111) (= (mask!7655 thiss!1248) #b00000000000000011111111111111111) (= (mask!7655 thiss!1248) #b00000000000000111111111111111111) (= (mask!7655 thiss!1248) #b00000000000001111111111111111111) (= (mask!7655 thiss!1248) #b00000000000011111111111111111111) (= (mask!7655 thiss!1248) #b00000000000111111111111111111111) (= (mask!7655 thiss!1248) #b00000000001111111111111111111111) (= (mask!7655 thiss!1248) #b00000000011111111111111111111111) (= (mask!7655 thiss!1248) #b00000000111111111111111111111111) (= (mask!7655 thiss!1248) #b00000001111111111111111111111111) (= (mask!7655 thiss!1248) #b00000011111111111111111111111111) (= (mask!7655 thiss!1248) #b00000111111111111111111111111111) (= (mask!7655 thiss!1248) #b00001111111111111111111111111111) (= (mask!7655 thiss!1248) #b00011111111111111111111111111111) (= (mask!7655 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!7655 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!157437 d!50979))

(declare-fun b!157476 () Bool)

(declare-fun e!103132 () Bool)

(assert (=> b!157476 (= e!103132 tp_is_empty!3243)))

(declare-fun mapNonEmpty!5517 () Bool)

(declare-fun mapRes!5517 () Bool)

(declare-fun tp!12861 () Bool)

(declare-fun e!103131 () Bool)

(assert (=> mapNonEmpty!5517 (= mapRes!5517 (and tp!12861 e!103131))))

(declare-fun mapRest!5517 () (Array (_ BitVec 32) ValueCell!1278))

(declare-fun mapKey!5517 () (_ BitVec 32))

(declare-fun mapValue!5517 () ValueCell!1278)

(assert (=> mapNonEmpty!5517 (= mapRest!5511 (store mapRest!5517 mapKey!5517 mapValue!5517))))

(declare-fun condMapEmpty!5517 () Bool)

(declare-fun mapDefault!5517 () ValueCell!1278)

(assert (=> mapNonEmpty!5511 (= condMapEmpty!5517 (= mapRest!5511 ((as const (Array (_ BitVec 32) ValueCell!1278)) mapDefault!5517)))))

(assert (=> mapNonEmpty!5511 (= tp!12851 (and e!103132 mapRes!5517))))

(declare-fun mapIsEmpty!5517 () Bool)

(assert (=> mapIsEmpty!5517 mapRes!5517))

(declare-fun b!157475 () Bool)

(assert (=> b!157475 (= e!103131 tp_is_empty!3243)))

(assert (= (and mapNonEmpty!5511 condMapEmpty!5517) mapIsEmpty!5517))

(assert (= (and mapNonEmpty!5511 (not condMapEmpty!5517)) mapNonEmpty!5517))

(assert (= (and mapNonEmpty!5517 ((_ is ValueCellFull!1278) mapValue!5517)) b!157475))

(assert (= (and mapNonEmpty!5511 ((_ is ValueCellFull!1278) mapDefault!5517)) b!157476))

(declare-fun m!190689 () Bool)

(assert (=> mapNonEmpty!5517 m!190689))

(check-sat (not b_next!3441) b_and!9873 tp_is_empty!3243 (not b!157467) (not b!157468) (not b!157466) (not mapNonEmpty!5517) (not d!50973))
(check-sat b_and!9873 (not b_next!3441))
