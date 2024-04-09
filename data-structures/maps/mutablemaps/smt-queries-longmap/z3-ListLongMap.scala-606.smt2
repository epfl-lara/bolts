; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15816 () Bool)

(assert start!15816)

(declare-fun b!157514 () Bool)

(declare-fun b_free!3447 () Bool)

(declare-fun b_next!3447 () Bool)

(assert (=> b!157514 (= b_free!3447 (not b_next!3447))))

(declare-fun tp!12873 () Bool)

(declare-fun b_and!9879 () Bool)

(assert (=> b!157514 (= tp!12873 b_and!9879)))

(declare-fun b!157512 () Bool)

(declare-fun e!103163 () Bool)

(declare-fun tp_is_empty!3249 () Bool)

(assert (=> b!157512 (= e!103163 tp_is_empty!3249)))

(declare-fun b!157513 () Bool)

(declare-fun e!103168 () Bool)

(assert (=> b!157513 (= e!103168 tp_is_empty!3249)))

(declare-datatypes ((V!3979 0))(
  ( (V!3980 (val!1669 Int)) )
))
(declare-datatypes ((ValueCell!1281 0))(
  ( (ValueCellFull!1281 (v!3530 V!3979)) (EmptyCell!1281) )
))
(declare-datatypes ((array!5554 0))(
  ( (array!5555 (arr!2632 (Array (_ BitVec 32) (_ BitVec 64))) (size!2911 (_ BitVec 32))) )
))
(declare-datatypes ((array!5556 0))(
  ( (array!5557 (arr!2633 (Array (_ BitVec 32) ValueCell!1281)) (size!2912 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1470 0))(
  ( (LongMapFixedSize!1471 (defaultEntry!3177 Int) (mask!7661 (_ BitVec 32)) (extraKeys!2918 (_ BitVec 32)) (zeroValue!3020 V!3979) (minValue!3020 V!3979) (_size!784 (_ BitVec 32)) (_keys!4953 array!5554) (_values!3160 array!5556) (_vacant!784 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1470)

(declare-fun e!103165 () Bool)

(declare-fun e!103164 () Bool)

(declare-fun array_inv!1665 (array!5554) Bool)

(declare-fun array_inv!1666 (array!5556) Bool)

(assert (=> b!157514 (= e!103165 (and tp!12873 tp_is_empty!3249 (array_inv!1665 (_keys!4953 thiss!1248)) (array_inv!1666 (_values!3160 thiss!1248)) e!103164))))

(declare-fun mapNonEmpty!5523 () Bool)

(declare-fun mapRes!5523 () Bool)

(declare-fun tp!12872 () Bool)

(assert (=> mapNonEmpty!5523 (= mapRes!5523 (and tp!12872 e!103163))))

(declare-fun mapKey!5523 () (_ BitVec 32))

(declare-fun mapValue!5523 () ValueCell!1281)

(declare-fun mapRest!5523 () (Array (_ BitVec 32) ValueCell!1281))

(assert (=> mapNonEmpty!5523 (= (arr!2633 (_values!3160 thiss!1248)) (store mapRest!5523 mapKey!5523 mapValue!5523))))

(declare-fun b!157515 () Bool)

(assert (=> b!157515 (= e!103164 (and e!103168 mapRes!5523))))

(declare-fun condMapEmpty!5523 () Bool)

(declare-fun mapDefault!5523 () ValueCell!1281)

(assert (=> b!157515 (= condMapEmpty!5523 (= (arr!2633 (_values!3160 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1281)) mapDefault!5523)))))

(declare-fun mapIsEmpty!5523 () Bool)

(assert (=> mapIsEmpty!5523 mapRes!5523))

(declare-fun b!157516 () Bool)

(declare-fun e!103166 () Bool)

(assert (=> b!157516 (= e!103166 (and (bvsge (mask!7661 thiss!1248) #b00000000000000000000000000000000) (not (= (size!2911 (_keys!4953 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7661 thiss!1248))))))))

(declare-fun b!157517 () Bool)

(declare-fun res!74452 () Bool)

(assert (=> b!157517 (=> (not res!74452) (not e!103166))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!157517 (= res!74452 (not (= key!828 (bvneg key!828))))))

(declare-fun b!157518 () Bool)

(declare-fun res!74450 () Bool)

(assert (=> b!157518 (=> (not res!74450) (not e!103166))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!157518 (= res!74450 (validMask!0 (mask!7661 thiss!1248)))))

(declare-fun res!74451 () Bool)

(assert (=> start!15816 (=> (not res!74451) (not e!103166))))

(declare-fun valid!695 (LongMapFixedSize!1470) Bool)

(assert (=> start!15816 (= res!74451 (valid!695 thiss!1248))))

(assert (=> start!15816 e!103166))

(assert (=> start!15816 e!103165))

(assert (=> start!15816 true))

(assert (= (and start!15816 res!74451) b!157517))

(assert (= (and b!157517 res!74452) b!157518))

(assert (= (and b!157518 res!74450) b!157516))

(assert (= (and b!157515 condMapEmpty!5523) mapIsEmpty!5523))

(assert (= (and b!157515 (not condMapEmpty!5523)) mapNonEmpty!5523))

(get-info :version)

(assert (= (and mapNonEmpty!5523 ((_ is ValueCellFull!1281) mapValue!5523)) b!157512))

(assert (= (and b!157515 ((_ is ValueCellFull!1281) mapDefault!5523)) b!157513))

(assert (= b!157514 b!157515))

(assert (= start!15816 b!157514))

(declare-fun m!190701 () Bool)

(assert (=> b!157514 m!190701))

(declare-fun m!190703 () Bool)

(assert (=> b!157514 m!190703))

(declare-fun m!190705 () Bool)

(assert (=> mapNonEmpty!5523 m!190705))

(declare-fun m!190707 () Bool)

(assert (=> b!157518 m!190707))

(declare-fun m!190709 () Bool)

(assert (=> start!15816 m!190709))

(check-sat (not b!157514) (not b!157518) (not start!15816) tp_is_empty!3249 (not mapNonEmpty!5523) (not b_next!3447) b_and!9879)
(check-sat b_and!9879 (not b_next!3447))
(get-model)

(declare-fun d!50983 () Bool)

(assert (=> d!50983 (= (array_inv!1665 (_keys!4953 thiss!1248)) (bvsge (size!2911 (_keys!4953 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!157514 d!50983))

(declare-fun d!50985 () Bool)

(assert (=> d!50985 (= (array_inv!1666 (_values!3160 thiss!1248)) (bvsge (size!2912 (_values!3160 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!157514 d!50985))

(declare-fun d!50987 () Bool)

(declare-fun res!74468 () Bool)

(declare-fun e!103189 () Bool)

(assert (=> d!50987 (=> (not res!74468) (not e!103189))))

(declare-fun simpleValid!106 (LongMapFixedSize!1470) Bool)

(assert (=> d!50987 (= res!74468 (simpleValid!106 thiss!1248))))

(assert (=> d!50987 (= (valid!695 thiss!1248) e!103189)))

(declare-fun b!157546 () Bool)

(declare-fun res!74469 () Bool)

(assert (=> b!157546 (=> (not res!74469) (not e!103189))))

(declare-fun arrayCountValidKeys!0 (array!5554 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!157546 (= res!74469 (= (arrayCountValidKeys!0 (_keys!4953 thiss!1248) #b00000000000000000000000000000000 (size!2911 (_keys!4953 thiss!1248))) (_size!784 thiss!1248)))))

(declare-fun b!157547 () Bool)

(declare-fun res!74470 () Bool)

(assert (=> b!157547 (=> (not res!74470) (not e!103189))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5554 (_ BitVec 32)) Bool)

(assert (=> b!157547 (= res!74470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4953 thiss!1248) (mask!7661 thiss!1248)))))

(declare-fun b!157548 () Bool)

(declare-datatypes ((List!1898 0))(
  ( (Nil!1895) (Cons!1894 (h!2503 (_ BitVec 64)) (t!6708 List!1898)) )
))
(declare-fun arrayNoDuplicates!0 (array!5554 (_ BitVec 32) List!1898) Bool)

(assert (=> b!157548 (= e!103189 (arrayNoDuplicates!0 (_keys!4953 thiss!1248) #b00000000000000000000000000000000 Nil!1895))))

(assert (= (and d!50987 res!74468) b!157546))

(assert (= (and b!157546 res!74469) b!157547))

(assert (= (and b!157547 res!74470) b!157548))

(declare-fun m!190721 () Bool)

(assert (=> d!50987 m!190721))

(declare-fun m!190723 () Bool)

(assert (=> b!157546 m!190723))

(declare-fun m!190725 () Bool)

(assert (=> b!157547 m!190725))

(declare-fun m!190727 () Bool)

(assert (=> b!157548 m!190727))

(assert (=> start!15816 d!50987))

(declare-fun d!50989 () Bool)

(assert (=> d!50989 (= (validMask!0 (mask!7661 thiss!1248)) (and (or (= (mask!7661 thiss!1248) #b00000000000000000000000000000111) (= (mask!7661 thiss!1248) #b00000000000000000000000000001111) (= (mask!7661 thiss!1248) #b00000000000000000000000000011111) (= (mask!7661 thiss!1248) #b00000000000000000000000000111111) (= (mask!7661 thiss!1248) #b00000000000000000000000001111111) (= (mask!7661 thiss!1248) #b00000000000000000000000011111111) (= (mask!7661 thiss!1248) #b00000000000000000000000111111111) (= (mask!7661 thiss!1248) #b00000000000000000000001111111111) (= (mask!7661 thiss!1248) #b00000000000000000000011111111111) (= (mask!7661 thiss!1248) #b00000000000000000000111111111111) (= (mask!7661 thiss!1248) #b00000000000000000001111111111111) (= (mask!7661 thiss!1248) #b00000000000000000011111111111111) (= (mask!7661 thiss!1248) #b00000000000000000111111111111111) (= (mask!7661 thiss!1248) #b00000000000000001111111111111111) (= (mask!7661 thiss!1248) #b00000000000000011111111111111111) (= (mask!7661 thiss!1248) #b00000000000000111111111111111111) (= (mask!7661 thiss!1248) #b00000000000001111111111111111111) (= (mask!7661 thiss!1248) #b00000000000011111111111111111111) (= (mask!7661 thiss!1248) #b00000000000111111111111111111111) (= (mask!7661 thiss!1248) #b00000000001111111111111111111111) (= (mask!7661 thiss!1248) #b00000000011111111111111111111111) (= (mask!7661 thiss!1248) #b00000000111111111111111111111111) (= (mask!7661 thiss!1248) #b00000001111111111111111111111111) (= (mask!7661 thiss!1248) #b00000011111111111111111111111111) (= (mask!7661 thiss!1248) #b00000111111111111111111111111111) (= (mask!7661 thiss!1248) #b00001111111111111111111111111111) (= (mask!7661 thiss!1248) #b00011111111111111111111111111111) (= (mask!7661 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!7661 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!157518 d!50989))

(declare-fun b!157556 () Bool)

(declare-fun e!103195 () Bool)

(assert (=> b!157556 (= e!103195 tp_is_empty!3249)))

(declare-fun condMapEmpty!5529 () Bool)

(declare-fun mapDefault!5529 () ValueCell!1281)

(assert (=> mapNonEmpty!5523 (= condMapEmpty!5529 (= mapRest!5523 ((as const (Array (_ BitVec 32) ValueCell!1281)) mapDefault!5529)))))

(declare-fun mapRes!5529 () Bool)

(assert (=> mapNonEmpty!5523 (= tp!12872 (and e!103195 mapRes!5529))))

(declare-fun mapNonEmpty!5529 () Bool)

(declare-fun tp!12882 () Bool)

(declare-fun e!103194 () Bool)

(assert (=> mapNonEmpty!5529 (= mapRes!5529 (and tp!12882 e!103194))))

(declare-fun mapKey!5529 () (_ BitVec 32))

(declare-fun mapValue!5529 () ValueCell!1281)

(declare-fun mapRest!5529 () (Array (_ BitVec 32) ValueCell!1281))

(assert (=> mapNonEmpty!5529 (= mapRest!5523 (store mapRest!5529 mapKey!5529 mapValue!5529))))

(declare-fun b!157555 () Bool)

(assert (=> b!157555 (= e!103194 tp_is_empty!3249)))

(declare-fun mapIsEmpty!5529 () Bool)

(assert (=> mapIsEmpty!5529 mapRes!5529))

(assert (= (and mapNonEmpty!5523 condMapEmpty!5529) mapIsEmpty!5529))

(assert (= (and mapNonEmpty!5523 (not condMapEmpty!5529)) mapNonEmpty!5529))

(assert (= (and mapNonEmpty!5529 ((_ is ValueCellFull!1281) mapValue!5529)) b!157555))

(assert (= (and mapNonEmpty!5523 ((_ is ValueCellFull!1281) mapDefault!5529)) b!157556))

(declare-fun m!190729 () Bool)

(assert (=> mapNonEmpty!5529 m!190729))

(check-sat (not mapNonEmpty!5529) (not b!157548) (not d!50987) (not b!157546) (not b_next!3447) b_and!9879 (not b!157547) tp_is_empty!3249)
(check-sat b_and!9879 (not b_next!3447))
(get-model)

(declare-fun b!157567 () Bool)

(declare-fun e!103205 () Bool)

(declare-fun e!103204 () Bool)

(assert (=> b!157567 (= e!103205 e!103204)))

(declare-fun res!74478 () Bool)

(assert (=> b!157567 (=> (not res!74478) (not e!103204))))

(declare-fun e!103206 () Bool)

(assert (=> b!157567 (= res!74478 (not e!103206))))

(declare-fun res!74477 () Bool)

(assert (=> b!157567 (=> (not res!74477) (not e!103206))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!157567 (= res!74477 (validKeyInArray!0 (select (arr!2632 (_keys!4953 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!157568 () Bool)

(declare-fun e!103207 () Bool)

(declare-fun call!17225 () Bool)

(assert (=> b!157568 (= e!103207 call!17225)))

(declare-fun d!50991 () Bool)

(declare-fun res!74479 () Bool)

(assert (=> d!50991 (=> res!74479 e!103205)))

(assert (=> d!50991 (= res!74479 (bvsge #b00000000000000000000000000000000 (size!2911 (_keys!4953 thiss!1248))))))

(assert (=> d!50991 (= (arrayNoDuplicates!0 (_keys!4953 thiss!1248) #b00000000000000000000000000000000 Nil!1895) e!103205)))

(declare-fun b!157569 () Bool)

(declare-fun contains!972 (List!1898 (_ BitVec 64)) Bool)

(assert (=> b!157569 (= e!103206 (contains!972 Nil!1895 (select (arr!2632 (_keys!4953 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!157570 () Bool)

(assert (=> b!157570 (= e!103207 call!17225)))

(declare-fun b!157571 () Bool)

(assert (=> b!157571 (= e!103204 e!103207)))

(declare-fun c!29688 () Bool)

(assert (=> b!157571 (= c!29688 (validKeyInArray!0 (select (arr!2632 (_keys!4953 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17222 () Bool)

(assert (=> bm!17222 (= call!17225 (arrayNoDuplicates!0 (_keys!4953 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!29688 (Cons!1894 (select (arr!2632 (_keys!4953 thiss!1248)) #b00000000000000000000000000000000) Nil!1895) Nil!1895)))))

(assert (= (and d!50991 (not res!74479)) b!157567))

(assert (= (and b!157567 res!74477) b!157569))

(assert (= (and b!157567 res!74478) b!157571))

(assert (= (and b!157571 c!29688) b!157568))

(assert (= (and b!157571 (not c!29688)) b!157570))

(assert (= (or b!157568 b!157570) bm!17222))

(declare-fun m!190731 () Bool)

(assert (=> b!157567 m!190731))

(assert (=> b!157567 m!190731))

(declare-fun m!190733 () Bool)

(assert (=> b!157567 m!190733))

(assert (=> b!157569 m!190731))

(assert (=> b!157569 m!190731))

(declare-fun m!190735 () Bool)

(assert (=> b!157569 m!190735))

(assert (=> b!157571 m!190731))

(assert (=> b!157571 m!190731))

(assert (=> b!157571 m!190733))

(assert (=> bm!17222 m!190731))

(declare-fun m!190737 () Bool)

(assert (=> bm!17222 m!190737))

(assert (=> b!157548 d!50991))

(declare-fun b!157582 () Bool)

(declare-fun res!74491 () Bool)

(declare-fun e!103210 () Bool)

(assert (=> b!157582 (=> (not res!74491) (not e!103210))))

(declare-fun size!2915 (LongMapFixedSize!1470) (_ BitVec 32))

(assert (=> b!157582 (= res!74491 (= (size!2915 thiss!1248) (bvadd (_size!784 thiss!1248) (bvsdiv (bvadd (extraKeys!2918 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!50993 () Bool)

(declare-fun res!74488 () Bool)

(assert (=> d!50993 (=> (not res!74488) (not e!103210))))

(assert (=> d!50993 (= res!74488 (validMask!0 (mask!7661 thiss!1248)))))

(assert (=> d!50993 (= (simpleValid!106 thiss!1248) e!103210)))

(declare-fun b!157580 () Bool)

(declare-fun res!74489 () Bool)

(assert (=> b!157580 (=> (not res!74489) (not e!103210))))

(assert (=> b!157580 (= res!74489 (and (= (size!2912 (_values!3160 thiss!1248)) (bvadd (mask!7661 thiss!1248) #b00000000000000000000000000000001)) (= (size!2911 (_keys!4953 thiss!1248)) (size!2912 (_values!3160 thiss!1248))) (bvsge (_size!784 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!784 thiss!1248) (bvadd (mask!7661 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!157581 () Bool)

(declare-fun res!74490 () Bool)

(assert (=> b!157581 (=> (not res!74490) (not e!103210))))

(assert (=> b!157581 (= res!74490 (bvsge (size!2915 thiss!1248) (_size!784 thiss!1248)))))

(declare-fun b!157583 () Bool)

(assert (=> b!157583 (= e!103210 (and (bvsge (extraKeys!2918 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2918 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!784 thiss!1248) #b00000000000000000000000000000000)))))

(assert (= (and d!50993 res!74488) b!157580))

(assert (= (and b!157580 res!74489) b!157581))

(assert (= (and b!157581 res!74490) b!157582))

(assert (= (and b!157582 res!74491) b!157583))

(declare-fun m!190739 () Bool)

(assert (=> b!157582 m!190739))

(assert (=> d!50993 m!190707))

(assert (=> b!157581 m!190739))

(assert (=> d!50987 d!50993))

(declare-fun b!157592 () Bool)

(declare-fun e!103216 () (_ BitVec 32))

(assert (=> b!157592 (= e!103216 #b00000000000000000000000000000000)))

(declare-fun b!157593 () Bool)

(declare-fun e!103215 () (_ BitVec 32))

(declare-fun call!17228 () (_ BitVec 32))

(assert (=> b!157593 (= e!103215 (bvadd #b00000000000000000000000000000001 call!17228))))

(declare-fun bm!17225 () Bool)

(assert (=> bm!17225 (= call!17228 (arrayCountValidKeys!0 (_keys!4953 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2911 (_keys!4953 thiss!1248))))))

(declare-fun b!157594 () Bool)

(assert (=> b!157594 (= e!103215 call!17228)))

(declare-fun b!157595 () Bool)

(assert (=> b!157595 (= e!103216 e!103215)))

(declare-fun c!29693 () Bool)

(assert (=> b!157595 (= c!29693 (validKeyInArray!0 (select (arr!2632 (_keys!4953 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!50995 () Bool)

(declare-fun lt!81761 () (_ BitVec 32))

(assert (=> d!50995 (and (bvsge lt!81761 #b00000000000000000000000000000000) (bvsle lt!81761 (bvsub (size!2911 (_keys!4953 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!50995 (= lt!81761 e!103216)))

(declare-fun c!29694 () Bool)

(assert (=> d!50995 (= c!29694 (bvsge #b00000000000000000000000000000000 (size!2911 (_keys!4953 thiss!1248))))))

(assert (=> d!50995 (and (bvsle #b00000000000000000000000000000000 (size!2911 (_keys!4953 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2911 (_keys!4953 thiss!1248)) (size!2911 (_keys!4953 thiss!1248))))))

(assert (=> d!50995 (= (arrayCountValidKeys!0 (_keys!4953 thiss!1248) #b00000000000000000000000000000000 (size!2911 (_keys!4953 thiss!1248))) lt!81761)))

(assert (= (and d!50995 c!29694) b!157592))

(assert (= (and d!50995 (not c!29694)) b!157595))

(assert (= (and b!157595 c!29693) b!157593))

(assert (= (and b!157595 (not c!29693)) b!157594))

(assert (= (or b!157593 b!157594) bm!17225))

(declare-fun m!190741 () Bool)

(assert (=> bm!17225 m!190741))

(assert (=> b!157595 m!190731))

(assert (=> b!157595 m!190731))

(assert (=> b!157595 m!190733))

(assert (=> b!157546 d!50995))

(declare-fun b!157604 () Bool)

(declare-fun e!103223 () Bool)

(declare-fun e!103225 () Bool)

(assert (=> b!157604 (= e!103223 e!103225)))

(declare-fun c!29697 () Bool)

(assert (=> b!157604 (= c!29697 (validKeyInArray!0 (select (arr!2632 (_keys!4953 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!157605 () Bool)

(declare-fun call!17231 () Bool)

(assert (=> b!157605 (= e!103225 call!17231)))

(declare-fun b!157607 () Bool)

(declare-fun e!103224 () Bool)

(assert (=> b!157607 (= e!103225 e!103224)))

(declare-fun lt!81768 () (_ BitVec 64))

(assert (=> b!157607 (= lt!81768 (select (arr!2632 (_keys!4953 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!4978 0))(
  ( (Unit!4979) )
))
(declare-fun lt!81770 () Unit!4978)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!5554 (_ BitVec 64) (_ BitVec 32)) Unit!4978)

(assert (=> b!157607 (= lt!81770 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4953 thiss!1248) lt!81768 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!5554 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!157607 (arrayContainsKey!0 (_keys!4953 thiss!1248) lt!81768 #b00000000000000000000000000000000)))

(declare-fun lt!81769 () Unit!4978)

(assert (=> b!157607 (= lt!81769 lt!81770)))

(declare-fun res!74497 () Bool)

(declare-datatypes ((SeekEntryResult!298 0))(
  ( (MissingZero!298 (index!3360 (_ BitVec 32))) (Found!298 (index!3361 (_ BitVec 32))) (Intermediate!298 (undefined!1110 Bool) (index!3362 (_ BitVec 32)) (x!17374 (_ BitVec 32))) (Undefined!298) (MissingVacant!298 (index!3363 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5554 (_ BitVec 32)) SeekEntryResult!298)

(assert (=> b!157607 (= res!74497 (= (seekEntryOrOpen!0 (select (arr!2632 (_keys!4953 thiss!1248)) #b00000000000000000000000000000000) (_keys!4953 thiss!1248) (mask!7661 thiss!1248)) (Found!298 #b00000000000000000000000000000000)))))

(assert (=> b!157607 (=> (not res!74497) (not e!103224))))

(declare-fun bm!17228 () Bool)

(assert (=> bm!17228 (= call!17231 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4953 thiss!1248) (mask!7661 thiss!1248)))))

(declare-fun b!157606 () Bool)

(assert (=> b!157606 (= e!103224 call!17231)))

(declare-fun d!50997 () Bool)

(declare-fun res!74496 () Bool)

(assert (=> d!50997 (=> res!74496 e!103223)))

(assert (=> d!50997 (= res!74496 (bvsge #b00000000000000000000000000000000 (size!2911 (_keys!4953 thiss!1248))))))

(assert (=> d!50997 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4953 thiss!1248) (mask!7661 thiss!1248)) e!103223)))

(assert (= (and d!50997 (not res!74496)) b!157604))

(assert (= (and b!157604 c!29697) b!157607))

(assert (= (and b!157604 (not c!29697)) b!157605))

(assert (= (and b!157607 res!74497) b!157606))

(assert (= (or b!157606 b!157605) bm!17228))

(assert (=> b!157604 m!190731))

(assert (=> b!157604 m!190731))

(assert (=> b!157604 m!190733))

(assert (=> b!157607 m!190731))

(declare-fun m!190743 () Bool)

(assert (=> b!157607 m!190743))

(declare-fun m!190745 () Bool)

(assert (=> b!157607 m!190745))

(assert (=> b!157607 m!190731))

(declare-fun m!190747 () Bool)

(assert (=> b!157607 m!190747))

(declare-fun m!190749 () Bool)

(assert (=> bm!17228 m!190749))

(assert (=> b!157547 d!50997))

(declare-fun b!157609 () Bool)

(declare-fun e!103227 () Bool)

(assert (=> b!157609 (= e!103227 tp_is_empty!3249)))

(declare-fun condMapEmpty!5530 () Bool)

(declare-fun mapDefault!5530 () ValueCell!1281)

(assert (=> mapNonEmpty!5529 (= condMapEmpty!5530 (= mapRest!5529 ((as const (Array (_ BitVec 32) ValueCell!1281)) mapDefault!5530)))))

(declare-fun mapRes!5530 () Bool)

(assert (=> mapNonEmpty!5529 (= tp!12882 (and e!103227 mapRes!5530))))

(declare-fun mapNonEmpty!5530 () Bool)

(declare-fun tp!12883 () Bool)

(declare-fun e!103226 () Bool)

(assert (=> mapNonEmpty!5530 (= mapRes!5530 (and tp!12883 e!103226))))

(declare-fun mapKey!5530 () (_ BitVec 32))

(declare-fun mapRest!5530 () (Array (_ BitVec 32) ValueCell!1281))

(declare-fun mapValue!5530 () ValueCell!1281)

(assert (=> mapNonEmpty!5530 (= mapRest!5529 (store mapRest!5530 mapKey!5530 mapValue!5530))))

(declare-fun b!157608 () Bool)

(assert (=> b!157608 (= e!103226 tp_is_empty!3249)))

(declare-fun mapIsEmpty!5530 () Bool)

(assert (=> mapIsEmpty!5530 mapRes!5530))

(assert (= (and mapNonEmpty!5529 condMapEmpty!5530) mapIsEmpty!5530))

(assert (= (and mapNonEmpty!5529 (not condMapEmpty!5530)) mapNonEmpty!5530))

(assert (= (and mapNonEmpty!5530 ((_ is ValueCellFull!1281) mapValue!5530)) b!157608))

(assert (= (and mapNonEmpty!5529 ((_ is ValueCellFull!1281) mapDefault!5530)) b!157609))

(declare-fun m!190751 () Bool)

(assert (=> mapNonEmpty!5530 m!190751))

(check-sat (not b!157604) (not b!157582) (not d!50993) (not b!157571) (not mapNonEmpty!5530) (not b!157595) (not bm!17222) (not bm!17225) (not b!157607) (not b_next!3447) b_and!9879 (not bm!17228) (not b!157581) tp_is_empty!3249 (not b!157567) (not b!157569))
(check-sat b_and!9879 (not b_next!3447))
