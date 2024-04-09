; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15838 () Bool)

(assert start!15838)

(declare-fun b!157657 () Bool)

(declare-fun b_free!3453 () Bool)

(declare-fun b_next!3453 () Bool)

(assert (=> b!157657 (= b_free!3453 (not b_next!3453))))

(declare-fun tp!12895 () Bool)

(declare-fun b_and!9885 () Bool)

(assert (=> b!157657 (= tp!12895 b_and!9885)))

(declare-fun b!157650 () Bool)

(declare-fun res!74521 () Bool)

(declare-fun e!103262 () Bool)

(assert (=> b!157650 (=> (not res!74521) (not e!103262))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!157650 (= res!74521 (not (= key!828 (bvneg key!828))))))

(declare-fun b!157651 () Bool)

(declare-fun res!74518 () Bool)

(assert (=> b!157651 (=> (not res!74518) (not e!103262))))

(declare-datatypes ((V!3987 0))(
  ( (V!3988 (val!1672 Int)) )
))
(declare-datatypes ((ValueCell!1284 0))(
  ( (ValueCellFull!1284 (v!3533 V!3987)) (EmptyCell!1284) )
))
(declare-datatypes ((array!5568 0))(
  ( (array!5569 (arr!2638 (Array (_ BitVec 32) (_ BitVec 64))) (size!2918 (_ BitVec 32))) )
))
(declare-datatypes ((array!5570 0))(
  ( (array!5571 (arr!2639 (Array (_ BitVec 32) ValueCell!1284)) (size!2919 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1476 0))(
  ( (LongMapFixedSize!1477 (defaultEntry!3180 Int) (mask!7668 (_ BitVec 32)) (extraKeys!2921 (_ BitVec 32)) (zeroValue!3023 V!3987) (minValue!3023 V!3987) (_size!787 (_ BitVec 32)) (_keys!4957 array!5568) (_values!3163 array!5570) (_vacant!787 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1476)

(assert (=> b!157651 (= res!74518 (and (bvsge (mask!7668 thiss!1248) #b00000000000000000000000000000000) (= (size!2918 (_keys!4957 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7668 thiss!1248)))))))

(declare-fun b!157652 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!157652 (= e!103262 (not (validKeyInArray!0 key!828)))))

(declare-fun b!157653 () Bool)

(declare-fun e!103261 () Bool)

(declare-fun tp_is_empty!3255 () Bool)

(assert (=> b!157653 (= e!103261 tp_is_empty!3255)))

(declare-fun b!157654 () Bool)

(declare-fun res!74520 () Bool)

(assert (=> b!157654 (=> (not res!74520) (not e!103262))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!157654 (= res!74520 (validMask!0 (mask!7668 thiss!1248)))))

(declare-fun res!74519 () Bool)

(assert (=> start!15838 (=> (not res!74519) (not e!103262))))

(declare-fun valid!697 (LongMapFixedSize!1476) Bool)

(assert (=> start!15838 (= res!74519 (valid!697 thiss!1248))))

(assert (=> start!15838 e!103262))

(declare-fun e!103259 () Bool)

(assert (=> start!15838 e!103259))

(assert (=> start!15838 true))

(declare-fun b!157655 () Bool)

(declare-fun e!103260 () Bool)

(assert (=> b!157655 (= e!103260 tp_is_empty!3255)))

(declare-fun mapIsEmpty!5536 () Bool)

(declare-fun mapRes!5536 () Bool)

(assert (=> mapIsEmpty!5536 mapRes!5536))

(declare-fun b!157656 () Bool)

(declare-fun e!103258 () Bool)

(assert (=> b!157656 (= e!103258 (and e!103260 mapRes!5536))))

(declare-fun condMapEmpty!5536 () Bool)

(declare-fun mapDefault!5536 () ValueCell!1284)

(assert (=> b!157656 (= condMapEmpty!5536 (= (arr!2639 (_values!3163 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1284)) mapDefault!5536)))))

(declare-fun array_inv!1671 (array!5568) Bool)

(declare-fun array_inv!1672 (array!5570) Bool)

(assert (=> b!157657 (= e!103259 (and tp!12895 tp_is_empty!3255 (array_inv!1671 (_keys!4957 thiss!1248)) (array_inv!1672 (_values!3163 thiss!1248)) e!103258))))

(declare-fun mapNonEmpty!5536 () Bool)

(declare-fun tp!12894 () Bool)

(assert (=> mapNonEmpty!5536 (= mapRes!5536 (and tp!12894 e!103261))))

(declare-fun mapRest!5536 () (Array (_ BitVec 32) ValueCell!1284))

(declare-fun mapValue!5536 () ValueCell!1284)

(declare-fun mapKey!5536 () (_ BitVec 32))

(assert (=> mapNonEmpty!5536 (= (arr!2639 (_values!3163 thiss!1248)) (store mapRest!5536 mapKey!5536 mapValue!5536))))

(assert (= (and start!15838 res!74519) b!157650))

(assert (= (and b!157650 res!74521) b!157654))

(assert (= (and b!157654 res!74520) b!157651))

(assert (= (and b!157651 res!74518) b!157652))

(assert (= (and b!157656 condMapEmpty!5536) mapIsEmpty!5536))

(assert (= (and b!157656 (not condMapEmpty!5536)) mapNonEmpty!5536))

(get-info :version)

(assert (= (and mapNonEmpty!5536 ((_ is ValueCellFull!1284) mapValue!5536)) b!157653))

(assert (= (and b!157656 ((_ is ValueCellFull!1284) mapDefault!5536)) b!157655))

(assert (= b!157657 b!157656))

(assert (= start!15838 b!157657))

(declare-fun m!190765 () Bool)

(assert (=> start!15838 m!190765))

(declare-fun m!190767 () Bool)

(assert (=> mapNonEmpty!5536 m!190767))

(declare-fun m!190769 () Bool)

(assert (=> b!157652 m!190769))

(declare-fun m!190771 () Bool)

(assert (=> b!157654 m!190771))

(declare-fun m!190773 () Bool)

(assert (=> b!157657 m!190773))

(declare-fun m!190775 () Bool)

(assert (=> b!157657 m!190775))

(check-sat (not b!157654) (not b_next!3453) (not b!157652) (not b!157657) (not start!15838) tp_is_empty!3255 (not mapNonEmpty!5536) b_and!9885)
(check-sat b_and!9885 (not b_next!3453))
(get-model)

(declare-fun d!51001 () Bool)

(assert (=> d!51001 (= (validMask!0 (mask!7668 thiss!1248)) (and (or (= (mask!7668 thiss!1248) #b00000000000000000000000000000111) (= (mask!7668 thiss!1248) #b00000000000000000000000000001111) (= (mask!7668 thiss!1248) #b00000000000000000000000000011111) (= (mask!7668 thiss!1248) #b00000000000000000000000000111111) (= (mask!7668 thiss!1248) #b00000000000000000000000001111111) (= (mask!7668 thiss!1248) #b00000000000000000000000011111111) (= (mask!7668 thiss!1248) #b00000000000000000000000111111111) (= (mask!7668 thiss!1248) #b00000000000000000000001111111111) (= (mask!7668 thiss!1248) #b00000000000000000000011111111111) (= (mask!7668 thiss!1248) #b00000000000000000000111111111111) (= (mask!7668 thiss!1248) #b00000000000000000001111111111111) (= (mask!7668 thiss!1248) #b00000000000000000011111111111111) (= (mask!7668 thiss!1248) #b00000000000000000111111111111111) (= (mask!7668 thiss!1248) #b00000000000000001111111111111111) (= (mask!7668 thiss!1248) #b00000000000000011111111111111111) (= (mask!7668 thiss!1248) #b00000000000000111111111111111111) (= (mask!7668 thiss!1248) #b00000000000001111111111111111111) (= (mask!7668 thiss!1248) #b00000000000011111111111111111111) (= (mask!7668 thiss!1248) #b00000000000111111111111111111111) (= (mask!7668 thiss!1248) #b00000000001111111111111111111111) (= (mask!7668 thiss!1248) #b00000000011111111111111111111111) (= (mask!7668 thiss!1248) #b00000000111111111111111111111111) (= (mask!7668 thiss!1248) #b00000001111111111111111111111111) (= (mask!7668 thiss!1248) #b00000011111111111111111111111111) (= (mask!7668 thiss!1248) #b00000111111111111111111111111111) (= (mask!7668 thiss!1248) #b00001111111111111111111111111111) (= (mask!7668 thiss!1248) #b00011111111111111111111111111111) (= (mask!7668 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!7668 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!157654 d!51001))

(declare-fun d!51003 () Bool)

(assert (=> d!51003 (= (validKeyInArray!0 key!828) (and (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!828 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!157652 d!51003))

(declare-fun d!51005 () Bool)

(assert (=> d!51005 (= (array_inv!1671 (_keys!4957 thiss!1248)) (bvsge (size!2918 (_keys!4957 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!157657 d!51005))

(declare-fun d!51007 () Bool)

(assert (=> d!51007 (= (array_inv!1672 (_values!3163 thiss!1248)) (bvsge (size!2919 (_values!3163 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!157657 d!51007))

(declare-fun d!51009 () Bool)

(declare-fun res!74540 () Bool)

(declare-fun e!103284 () Bool)

(assert (=> d!51009 (=> (not res!74540) (not e!103284))))

(declare-fun simpleValid!107 (LongMapFixedSize!1476) Bool)

(assert (=> d!51009 (= res!74540 (simpleValid!107 thiss!1248))))

(assert (=> d!51009 (= (valid!697 thiss!1248) e!103284)))

(declare-fun b!157688 () Bool)

(declare-fun res!74541 () Bool)

(assert (=> b!157688 (=> (not res!74541) (not e!103284))))

(declare-fun arrayCountValidKeys!0 (array!5568 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!157688 (= res!74541 (= (arrayCountValidKeys!0 (_keys!4957 thiss!1248) #b00000000000000000000000000000000 (size!2918 (_keys!4957 thiss!1248))) (_size!787 thiss!1248)))))

(declare-fun b!157689 () Bool)

(declare-fun res!74542 () Bool)

(assert (=> b!157689 (=> (not res!74542) (not e!103284))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5568 (_ BitVec 32)) Bool)

(assert (=> b!157689 (= res!74542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4957 thiss!1248) (mask!7668 thiss!1248)))))

(declare-fun b!157690 () Bool)

(declare-datatypes ((List!1899 0))(
  ( (Nil!1896) (Cons!1895 (h!2504 (_ BitVec 64)) (t!6709 List!1899)) )
))
(declare-fun arrayNoDuplicates!0 (array!5568 (_ BitVec 32) List!1899) Bool)

(assert (=> b!157690 (= e!103284 (arrayNoDuplicates!0 (_keys!4957 thiss!1248) #b00000000000000000000000000000000 Nil!1896))))

(assert (= (and d!51009 res!74540) b!157688))

(assert (= (and b!157688 res!74541) b!157689))

(assert (= (and b!157689 res!74542) b!157690))

(declare-fun m!190789 () Bool)

(assert (=> d!51009 m!190789))

(declare-fun m!190791 () Bool)

(assert (=> b!157688 m!190791))

(declare-fun m!190793 () Bool)

(assert (=> b!157689 m!190793))

(declare-fun m!190795 () Bool)

(assert (=> b!157690 m!190795))

(assert (=> start!15838 d!51009))

(declare-fun mapNonEmpty!5542 () Bool)

(declare-fun mapRes!5542 () Bool)

(declare-fun tp!12904 () Bool)

(declare-fun e!103290 () Bool)

(assert (=> mapNonEmpty!5542 (= mapRes!5542 (and tp!12904 e!103290))))

(declare-fun mapValue!5542 () ValueCell!1284)

(declare-fun mapRest!5542 () (Array (_ BitVec 32) ValueCell!1284))

(declare-fun mapKey!5542 () (_ BitVec 32))

(assert (=> mapNonEmpty!5542 (= mapRest!5536 (store mapRest!5542 mapKey!5542 mapValue!5542))))

(declare-fun condMapEmpty!5542 () Bool)

(declare-fun mapDefault!5542 () ValueCell!1284)

(assert (=> mapNonEmpty!5536 (= condMapEmpty!5542 (= mapRest!5536 ((as const (Array (_ BitVec 32) ValueCell!1284)) mapDefault!5542)))))

(declare-fun e!103289 () Bool)

(assert (=> mapNonEmpty!5536 (= tp!12894 (and e!103289 mapRes!5542))))

(declare-fun b!157698 () Bool)

(assert (=> b!157698 (= e!103289 tp_is_empty!3255)))

(declare-fun mapIsEmpty!5542 () Bool)

(assert (=> mapIsEmpty!5542 mapRes!5542))

(declare-fun b!157697 () Bool)

(assert (=> b!157697 (= e!103290 tp_is_empty!3255)))

(assert (= (and mapNonEmpty!5536 condMapEmpty!5542) mapIsEmpty!5542))

(assert (= (and mapNonEmpty!5536 (not condMapEmpty!5542)) mapNonEmpty!5542))

(assert (= (and mapNonEmpty!5542 ((_ is ValueCellFull!1284) mapValue!5542)) b!157697))

(assert (= (and mapNonEmpty!5536 ((_ is ValueCellFull!1284) mapDefault!5542)) b!157698))

(declare-fun m!190797 () Bool)

(assert (=> mapNonEmpty!5542 m!190797))

(check-sat (not b!157690) (not b_next!3453) b_and!9885 (not b!157688) (not b!157689) (not mapNonEmpty!5542) (not d!51009) tp_is_empty!3255)
(check-sat b_and!9885 (not b_next!3453))
