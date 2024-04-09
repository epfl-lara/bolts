; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90200 () Bool)

(assert start!90200)

(declare-fun b!1032584 () Bool)

(declare-fun b_free!20739 () Bool)

(declare-fun b_next!20739 () Bool)

(assert (=> b!1032584 (= b_free!20739 (not b_next!20739))))

(declare-fun tp!73296 () Bool)

(declare-fun b_and!33225 () Bool)

(assert (=> b!1032584 (= tp!73296 b_and!33225)))

(declare-fun b!1032580 () Bool)

(declare-fun e!583524 () Bool)

(declare-fun tp_is_empty!24459 () Bool)

(assert (=> b!1032580 (= e!583524 tp_is_empty!24459)))

(declare-fun b!1032581 () Bool)

(declare-fun e!583525 () Bool)

(declare-fun mapRes!38150 () Bool)

(assert (=> b!1032581 (= e!583525 (and e!583524 mapRes!38150))))

(declare-fun condMapEmpty!38150 () Bool)

(declare-datatypes ((V!37485 0))(
  ( (V!37486 (val!12280 Int)) )
))
(declare-datatypes ((ValueCell!11526 0))(
  ( (ValueCellFull!11526 (v!14858 V!37485)) (EmptyCell!11526) )
))
(declare-datatypes ((array!64970 0))(
  ( (array!64971 (arr!31281 (Array (_ BitVec 32) (_ BitVec 64))) (size!31801 (_ BitVec 32))) )
))
(declare-datatypes ((array!64972 0))(
  ( (array!64973 (arr!31282 (Array (_ BitVec 32) ValueCell!11526)) (size!31802 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5646 0))(
  ( (LongMapFixedSize!5647 (defaultEntry!6197 Int) (mask!30018 (_ BitVec 32)) (extraKeys!5929 (_ BitVec 32)) (zeroValue!6033 V!37485) (minValue!6033 V!37485) (_size!2878 (_ BitVec 32)) (_keys!11369 array!64970) (_values!6220 array!64972) (_vacant!2878 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5646)

(declare-fun mapDefault!38150 () ValueCell!11526)

(assert (=> b!1032581 (= condMapEmpty!38150 (= (arr!31282 (_values!6220 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11526)) mapDefault!38150)))))

(declare-fun mapNonEmpty!38150 () Bool)

(declare-fun tp!73297 () Bool)

(declare-fun e!583529 () Bool)

(assert (=> mapNonEmpty!38150 (= mapRes!38150 (and tp!73297 e!583529))))

(declare-fun mapKey!38150 () (_ BitVec 32))

(declare-fun mapValue!38150 () ValueCell!11526)

(declare-fun mapRest!38150 () (Array (_ BitVec 32) ValueCell!11526))

(assert (=> mapNonEmpty!38150 (= (arr!31282 (_values!6220 thiss!1427)) (store mapRest!38150 mapKey!38150 mapValue!38150))))

(declare-fun b!1032583 () Bool)

(declare-fun res!690189 () Bool)

(declare-fun e!583528 () Bool)

(assert (=> b!1032583 (=> (not res!690189) (not e!583528))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1032583 (= res!690189 (validMask!0 (mask!30018 thiss!1427)))))

(declare-fun e!583527 () Bool)

(declare-fun array_inv!24045 (array!64970) Bool)

(declare-fun array_inv!24046 (array!64972) Bool)

(assert (=> b!1032584 (= e!583527 (and tp!73296 tp_is_empty!24459 (array_inv!24045 (_keys!11369 thiss!1427)) (array_inv!24046 (_values!6220 thiss!1427)) e!583525))))

(declare-fun mapIsEmpty!38150 () Bool)

(assert (=> mapIsEmpty!38150 mapRes!38150))

(declare-fun b!1032582 () Bool)

(assert (=> b!1032582 (= e!583528 (and (= (size!31802 (_values!6220 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30018 thiss!1427))) (not (= (size!31801 (_keys!11369 thiss!1427)) (size!31802 (_values!6220 thiss!1427))))))))

(declare-fun res!690187 () Bool)

(assert (=> start!90200 (=> (not res!690187) (not e!583528))))

(declare-fun valid!2085 (LongMapFixedSize!5646) Bool)

(assert (=> start!90200 (= res!690187 (valid!2085 thiss!1427))))

(assert (=> start!90200 e!583528))

(assert (=> start!90200 e!583527))

(assert (=> start!90200 true))

(declare-fun b!1032585 () Bool)

(declare-fun res!690188 () Bool)

(assert (=> b!1032585 (=> (not res!690188) (not e!583528))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1032585 (= res!690188 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1032586 () Bool)

(assert (=> b!1032586 (= e!583529 tp_is_empty!24459)))

(assert (= (and start!90200 res!690187) b!1032585))

(assert (= (and b!1032585 res!690188) b!1032583))

(assert (= (and b!1032583 res!690189) b!1032582))

(assert (= (and b!1032581 condMapEmpty!38150) mapIsEmpty!38150))

(assert (= (and b!1032581 (not condMapEmpty!38150)) mapNonEmpty!38150))

(get-info :version)

(assert (= (and mapNonEmpty!38150 ((_ is ValueCellFull!11526) mapValue!38150)) b!1032586))

(assert (= (and b!1032581 ((_ is ValueCellFull!11526) mapDefault!38150)) b!1032580))

(assert (= b!1032584 b!1032581))

(assert (= start!90200 b!1032584))

(declare-fun m!952895 () Bool)

(assert (=> mapNonEmpty!38150 m!952895))

(declare-fun m!952897 () Bool)

(assert (=> b!1032583 m!952897))

(declare-fun m!952899 () Bool)

(assert (=> b!1032584 m!952899))

(declare-fun m!952901 () Bool)

(assert (=> b!1032584 m!952901))

(declare-fun m!952903 () Bool)

(assert (=> start!90200 m!952903))

(check-sat (not b!1032584) tp_is_empty!24459 (not mapNonEmpty!38150) (not b_next!20739) (not b!1032583) b_and!33225 (not start!90200))
(check-sat b_and!33225 (not b_next!20739))
(get-model)

(declare-fun d!123661 () Bool)

(assert (=> d!123661 (= (array_inv!24045 (_keys!11369 thiss!1427)) (bvsge (size!31801 (_keys!11369 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1032584 d!123661))

(declare-fun d!123663 () Bool)

(assert (=> d!123663 (= (array_inv!24046 (_values!6220 thiss!1427)) (bvsge (size!31802 (_values!6220 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1032584 d!123663))

(declare-fun d!123665 () Bool)

(declare-fun res!690205 () Bool)

(declare-fun e!583550 () Bool)

(assert (=> d!123665 (=> (not res!690205) (not e!583550))))

(declare-fun simpleValid!398 (LongMapFixedSize!5646) Bool)

(assert (=> d!123665 (= res!690205 (simpleValid!398 thiss!1427))))

(assert (=> d!123665 (= (valid!2085 thiss!1427) e!583550)))

(declare-fun b!1032614 () Bool)

(declare-fun res!690206 () Bool)

(assert (=> b!1032614 (=> (not res!690206) (not e!583550))))

(declare-fun arrayCountValidKeys!0 (array!64970 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1032614 (= res!690206 (= (arrayCountValidKeys!0 (_keys!11369 thiss!1427) #b00000000000000000000000000000000 (size!31801 (_keys!11369 thiss!1427))) (_size!2878 thiss!1427)))))

(declare-fun b!1032615 () Bool)

(declare-fun res!690207 () Bool)

(assert (=> b!1032615 (=> (not res!690207) (not e!583550))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64970 (_ BitVec 32)) Bool)

(assert (=> b!1032615 (= res!690207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11369 thiss!1427) (mask!30018 thiss!1427)))))

(declare-fun b!1032616 () Bool)

(declare-datatypes ((List!22014 0))(
  ( (Nil!22011) (Cons!22010 (h!23212 (_ BitVec 64)) (t!31215 List!22014)) )
))
(declare-fun arrayNoDuplicates!0 (array!64970 (_ BitVec 32) List!22014) Bool)

(assert (=> b!1032616 (= e!583550 (arrayNoDuplicates!0 (_keys!11369 thiss!1427) #b00000000000000000000000000000000 Nil!22011))))

(assert (= (and d!123665 res!690205) b!1032614))

(assert (= (and b!1032614 res!690206) b!1032615))

(assert (= (and b!1032615 res!690207) b!1032616))

(declare-fun m!952915 () Bool)

(assert (=> d!123665 m!952915))

(declare-fun m!952917 () Bool)

(assert (=> b!1032614 m!952917))

(declare-fun m!952919 () Bool)

(assert (=> b!1032615 m!952919))

(declare-fun m!952921 () Bool)

(assert (=> b!1032616 m!952921))

(assert (=> start!90200 d!123665))

(declare-fun d!123667 () Bool)

(assert (=> d!123667 (= (validMask!0 (mask!30018 thiss!1427)) (and (or (= (mask!30018 thiss!1427) #b00000000000000000000000000000111) (= (mask!30018 thiss!1427) #b00000000000000000000000000001111) (= (mask!30018 thiss!1427) #b00000000000000000000000000011111) (= (mask!30018 thiss!1427) #b00000000000000000000000000111111) (= (mask!30018 thiss!1427) #b00000000000000000000000001111111) (= (mask!30018 thiss!1427) #b00000000000000000000000011111111) (= (mask!30018 thiss!1427) #b00000000000000000000000111111111) (= (mask!30018 thiss!1427) #b00000000000000000000001111111111) (= (mask!30018 thiss!1427) #b00000000000000000000011111111111) (= (mask!30018 thiss!1427) #b00000000000000000000111111111111) (= (mask!30018 thiss!1427) #b00000000000000000001111111111111) (= (mask!30018 thiss!1427) #b00000000000000000011111111111111) (= (mask!30018 thiss!1427) #b00000000000000000111111111111111) (= (mask!30018 thiss!1427) #b00000000000000001111111111111111) (= (mask!30018 thiss!1427) #b00000000000000011111111111111111) (= (mask!30018 thiss!1427) #b00000000000000111111111111111111) (= (mask!30018 thiss!1427) #b00000000000001111111111111111111) (= (mask!30018 thiss!1427) #b00000000000011111111111111111111) (= (mask!30018 thiss!1427) #b00000000000111111111111111111111) (= (mask!30018 thiss!1427) #b00000000001111111111111111111111) (= (mask!30018 thiss!1427) #b00000000011111111111111111111111) (= (mask!30018 thiss!1427) #b00000000111111111111111111111111) (= (mask!30018 thiss!1427) #b00000001111111111111111111111111) (= (mask!30018 thiss!1427) #b00000011111111111111111111111111) (= (mask!30018 thiss!1427) #b00000111111111111111111111111111) (= (mask!30018 thiss!1427) #b00001111111111111111111111111111) (= (mask!30018 thiss!1427) #b00011111111111111111111111111111) (= (mask!30018 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30018 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1032583 d!123667))

(declare-fun condMapEmpty!38156 () Bool)

(declare-fun mapDefault!38156 () ValueCell!11526)

(assert (=> mapNonEmpty!38150 (= condMapEmpty!38156 (= mapRest!38150 ((as const (Array (_ BitVec 32) ValueCell!11526)) mapDefault!38156)))))

(declare-fun e!583556 () Bool)

(declare-fun mapRes!38156 () Bool)

(assert (=> mapNonEmpty!38150 (= tp!73297 (and e!583556 mapRes!38156))))

(declare-fun b!1032624 () Bool)

(assert (=> b!1032624 (= e!583556 tp_is_empty!24459)))

(declare-fun mapIsEmpty!38156 () Bool)

(assert (=> mapIsEmpty!38156 mapRes!38156))

(declare-fun mapNonEmpty!38156 () Bool)

(declare-fun tp!73306 () Bool)

(declare-fun e!583555 () Bool)

(assert (=> mapNonEmpty!38156 (= mapRes!38156 (and tp!73306 e!583555))))

(declare-fun mapValue!38156 () ValueCell!11526)

(declare-fun mapRest!38156 () (Array (_ BitVec 32) ValueCell!11526))

(declare-fun mapKey!38156 () (_ BitVec 32))

(assert (=> mapNonEmpty!38156 (= mapRest!38150 (store mapRest!38156 mapKey!38156 mapValue!38156))))

(declare-fun b!1032623 () Bool)

(assert (=> b!1032623 (= e!583555 tp_is_empty!24459)))

(assert (= (and mapNonEmpty!38150 condMapEmpty!38156) mapIsEmpty!38156))

(assert (= (and mapNonEmpty!38150 (not condMapEmpty!38156)) mapNonEmpty!38156))

(assert (= (and mapNonEmpty!38156 ((_ is ValueCellFull!11526) mapValue!38156)) b!1032623))

(assert (= (and mapNonEmpty!38150 ((_ is ValueCellFull!11526) mapDefault!38156)) b!1032624))

(declare-fun m!952923 () Bool)

(assert (=> mapNonEmpty!38156 m!952923))

(check-sat (not b!1032615) (not mapNonEmpty!38156) (not b!1032614) (not b_next!20739) (not d!123665) b_and!33225 (not b!1032616) tp_is_empty!24459)
(check-sat b_and!33225 (not b_next!20739))
(get-model)

(declare-fun bm!43609 () Bool)

(declare-fun call!43612 () (_ BitVec 32))

(assert (=> bm!43609 (= call!43612 (arrayCountValidKeys!0 (_keys!11369 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31801 (_keys!11369 thiss!1427))))))

(declare-fun b!1032633 () Bool)

(declare-fun e!583561 () (_ BitVec 32))

(declare-fun e!583562 () (_ BitVec 32))

(assert (=> b!1032633 (= e!583561 e!583562)))

(declare-fun c!104279 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1032633 (= c!104279 (validKeyInArray!0 (select (arr!31281 (_keys!11369 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1032634 () Bool)

(assert (=> b!1032634 (= e!583562 (bvadd #b00000000000000000000000000000001 call!43612))))

(declare-fun b!1032635 () Bool)

(assert (=> b!1032635 (= e!583561 #b00000000000000000000000000000000)))

(declare-fun d!123669 () Bool)

(declare-fun lt!456033 () (_ BitVec 32))

(assert (=> d!123669 (and (bvsge lt!456033 #b00000000000000000000000000000000) (bvsle lt!456033 (bvsub (size!31801 (_keys!11369 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!123669 (= lt!456033 e!583561)))

(declare-fun c!104278 () Bool)

(assert (=> d!123669 (= c!104278 (bvsge #b00000000000000000000000000000000 (size!31801 (_keys!11369 thiss!1427))))))

(assert (=> d!123669 (and (bvsle #b00000000000000000000000000000000 (size!31801 (_keys!11369 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31801 (_keys!11369 thiss!1427)) (size!31801 (_keys!11369 thiss!1427))))))

(assert (=> d!123669 (= (arrayCountValidKeys!0 (_keys!11369 thiss!1427) #b00000000000000000000000000000000 (size!31801 (_keys!11369 thiss!1427))) lt!456033)))

(declare-fun b!1032636 () Bool)

(assert (=> b!1032636 (= e!583562 call!43612)))

(assert (= (and d!123669 c!104278) b!1032635))

(assert (= (and d!123669 (not c!104278)) b!1032633))

(assert (= (and b!1032633 c!104279) b!1032634))

(assert (= (and b!1032633 (not c!104279)) b!1032636))

(assert (= (or b!1032634 b!1032636) bm!43609))

(declare-fun m!952925 () Bool)

(assert (=> bm!43609 m!952925))

(declare-fun m!952927 () Bool)

(assert (=> b!1032633 m!952927))

(assert (=> b!1032633 m!952927))

(declare-fun m!952929 () Bool)

(assert (=> b!1032633 m!952929))

(assert (=> b!1032614 d!123669))

(declare-fun b!1032646 () Bool)

(declare-fun res!690216 () Bool)

(declare-fun e!583565 () Bool)

(assert (=> b!1032646 (=> (not res!690216) (not e!583565))))

(declare-fun size!31805 (LongMapFixedSize!5646) (_ BitVec 32))

(assert (=> b!1032646 (= res!690216 (bvsge (size!31805 thiss!1427) (_size!2878 thiss!1427)))))

(declare-fun b!1032648 () Bool)

(assert (=> b!1032648 (= e!583565 (and (bvsge (extraKeys!5929 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5929 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2878 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1032647 () Bool)

(declare-fun res!690217 () Bool)

(assert (=> b!1032647 (=> (not res!690217) (not e!583565))))

(assert (=> b!1032647 (= res!690217 (= (size!31805 thiss!1427) (bvadd (_size!2878 thiss!1427) (bvsdiv (bvadd (extraKeys!5929 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1032645 () Bool)

(declare-fun res!690219 () Bool)

(assert (=> b!1032645 (=> (not res!690219) (not e!583565))))

(assert (=> b!1032645 (= res!690219 (and (= (size!31802 (_values!6220 thiss!1427)) (bvadd (mask!30018 thiss!1427) #b00000000000000000000000000000001)) (= (size!31801 (_keys!11369 thiss!1427)) (size!31802 (_values!6220 thiss!1427))) (bvsge (_size!2878 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2878 thiss!1427) (bvadd (mask!30018 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun d!123671 () Bool)

(declare-fun res!690218 () Bool)

(assert (=> d!123671 (=> (not res!690218) (not e!583565))))

(assert (=> d!123671 (= res!690218 (validMask!0 (mask!30018 thiss!1427)))))

(assert (=> d!123671 (= (simpleValid!398 thiss!1427) e!583565)))

(assert (= (and d!123671 res!690218) b!1032645))

(assert (= (and b!1032645 res!690219) b!1032646))

(assert (= (and b!1032646 res!690216) b!1032647))

(assert (= (and b!1032647 res!690217) b!1032648))

(declare-fun m!952931 () Bool)

(assert (=> b!1032646 m!952931))

(assert (=> b!1032647 m!952931))

(assert (=> d!123671 m!952897))

(assert (=> d!123665 d!123671))

(declare-fun b!1032657 () Bool)

(declare-fun e!583574 () Bool)

(declare-fun call!43615 () Bool)

(assert (=> b!1032657 (= e!583574 call!43615)))

(declare-fun b!1032658 () Bool)

(declare-fun e!583573 () Bool)

(declare-fun e!583572 () Bool)

(assert (=> b!1032658 (= e!583573 e!583572)))

(declare-fun c!104282 () Bool)

(assert (=> b!1032658 (= c!104282 (validKeyInArray!0 (select (arr!31281 (_keys!11369 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43612 () Bool)

(assert (=> bm!43612 (= call!43615 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11369 thiss!1427) (mask!30018 thiss!1427)))))

(declare-fun d!123673 () Bool)

(declare-fun res!690225 () Bool)

(assert (=> d!123673 (=> res!690225 e!583573)))

(assert (=> d!123673 (= res!690225 (bvsge #b00000000000000000000000000000000 (size!31801 (_keys!11369 thiss!1427))))))

(assert (=> d!123673 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11369 thiss!1427) (mask!30018 thiss!1427)) e!583573)))

(declare-fun b!1032659 () Bool)

(assert (=> b!1032659 (= e!583572 e!583574)))

(declare-fun lt!456042 () (_ BitVec 64))

(assert (=> b!1032659 (= lt!456042 (select (arr!31281 (_keys!11369 thiss!1427)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33800 0))(
  ( (Unit!33801) )
))
(declare-fun lt!456040 () Unit!33800)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!64970 (_ BitVec 64) (_ BitVec 32)) Unit!33800)

(assert (=> b!1032659 (= lt!456040 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11369 thiss!1427) lt!456042 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!64970 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1032659 (arrayContainsKey!0 (_keys!11369 thiss!1427) lt!456042 #b00000000000000000000000000000000)))

(declare-fun lt!456041 () Unit!33800)

(assert (=> b!1032659 (= lt!456041 lt!456040)))

(declare-fun res!690224 () Bool)

(declare-datatypes ((SeekEntryResult!9728 0))(
  ( (MissingZero!9728 (index!41282 (_ BitVec 32))) (Found!9728 (index!41283 (_ BitVec 32))) (Intermediate!9728 (undefined!10540 Bool) (index!41284 (_ BitVec 32)) (x!92045 (_ BitVec 32))) (Undefined!9728) (MissingVacant!9728 (index!41285 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!64970 (_ BitVec 32)) SeekEntryResult!9728)

(assert (=> b!1032659 (= res!690224 (= (seekEntryOrOpen!0 (select (arr!31281 (_keys!11369 thiss!1427)) #b00000000000000000000000000000000) (_keys!11369 thiss!1427) (mask!30018 thiss!1427)) (Found!9728 #b00000000000000000000000000000000)))))

(assert (=> b!1032659 (=> (not res!690224) (not e!583574))))

(declare-fun b!1032660 () Bool)

(assert (=> b!1032660 (= e!583572 call!43615)))

(assert (= (and d!123673 (not res!690225)) b!1032658))

(assert (= (and b!1032658 c!104282) b!1032659))

(assert (= (and b!1032658 (not c!104282)) b!1032660))

(assert (= (and b!1032659 res!690224) b!1032657))

(assert (= (or b!1032657 b!1032660) bm!43612))

(assert (=> b!1032658 m!952927))

(assert (=> b!1032658 m!952927))

(assert (=> b!1032658 m!952929))

(declare-fun m!952933 () Bool)

(assert (=> bm!43612 m!952933))

(assert (=> b!1032659 m!952927))

(declare-fun m!952935 () Bool)

(assert (=> b!1032659 m!952935))

(declare-fun m!952937 () Bool)

(assert (=> b!1032659 m!952937))

(assert (=> b!1032659 m!952927))

(declare-fun m!952939 () Bool)

(assert (=> b!1032659 m!952939))

(assert (=> b!1032615 d!123673))

(declare-fun d!123675 () Bool)

(declare-fun res!690232 () Bool)

(declare-fun e!583586 () Bool)

(assert (=> d!123675 (=> res!690232 e!583586)))

(assert (=> d!123675 (= res!690232 (bvsge #b00000000000000000000000000000000 (size!31801 (_keys!11369 thiss!1427))))))

(assert (=> d!123675 (= (arrayNoDuplicates!0 (_keys!11369 thiss!1427) #b00000000000000000000000000000000 Nil!22011) e!583586)))

(declare-fun b!1032671 () Bool)

(declare-fun e!583583 () Bool)

(declare-fun call!43618 () Bool)

(assert (=> b!1032671 (= e!583583 call!43618)))

(declare-fun b!1032672 () Bool)

(declare-fun e!583584 () Bool)

(assert (=> b!1032672 (= e!583586 e!583584)))

(declare-fun res!690234 () Bool)

(assert (=> b!1032672 (=> (not res!690234) (not e!583584))))

(declare-fun e!583585 () Bool)

(assert (=> b!1032672 (= res!690234 (not e!583585))))

(declare-fun res!690233 () Bool)

(assert (=> b!1032672 (=> (not res!690233) (not e!583585))))

(assert (=> b!1032672 (= res!690233 (validKeyInArray!0 (select (arr!31281 (_keys!11369 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1032673 () Bool)

(assert (=> b!1032673 (= e!583583 call!43618)))

(declare-fun b!1032674 () Bool)

(declare-fun contains!6031 (List!22014 (_ BitVec 64)) Bool)

(assert (=> b!1032674 (= e!583585 (contains!6031 Nil!22011 (select (arr!31281 (_keys!11369 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43615 () Bool)

(declare-fun c!104285 () Bool)

(assert (=> bm!43615 (= call!43618 (arrayNoDuplicates!0 (_keys!11369 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104285 (Cons!22010 (select (arr!31281 (_keys!11369 thiss!1427)) #b00000000000000000000000000000000) Nil!22011) Nil!22011)))))

(declare-fun b!1032675 () Bool)

(assert (=> b!1032675 (= e!583584 e!583583)))

(assert (=> b!1032675 (= c!104285 (validKeyInArray!0 (select (arr!31281 (_keys!11369 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!123675 (not res!690232)) b!1032672))

(assert (= (and b!1032672 res!690233) b!1032674))

(assert (= (and b!1032672 res!690234) b!1032675))

(assert (= (and b!1032675 c!104285) b!1032673))

(assert (= (and b!1032675 (not c!104285)) b!1032671))

(assert (= (or b!1032673 b!1032671) bm!43615))

(assert (=> b!1032672 m!952927))

(assert (=> b!1032672 m!952927))

(assert (=> b!1032672 m!952929))

(assert (=> b!1032674 m!952927))

(assert (=> b!1032674 m!952927))

(declare-fun m!952941 () Bool)

(assert (=> b!1032674 m!952941))

(assert (=> bm!43615 m!952927))

(declare-fun m!952943 () Bool)

(assert (=> bm!43615 m!952943))

(assert (=> b!1032675 m!952927))

(assert (=> b!1032675 m!952927))

(assert (=> b!1032675 m!952929))

(assert (=> b!1032616 d!123675))

(declare-fun condMapEmpty!38157 () Bool)

(declare-fun mapDefault!38157 () ValueCell!11526)

(assert (=> mapNonEmpty!38156 (= condMapEmpty!38157 (= mapRest!38156 ((as const (Array (_ BitVec 32) ValueCell!11526)) mapDefault!38157)))))

(declare-fun e!583588 () Bool)

(declare-fun mapRes!38157 () Bool)

(assert (=> mapNonEmpty!38156 (= tp!73306 (and e!583588 mapRes!38157))))

(declare-fun b!1032677 () Bool)

(assert (=> b!1032677 (= e!583588 tp_is_empty!24459)))

(declare-fun mapIsEmpty!38157 () Bool)

(assert (=> mapIsEmpty!38157 mapRes!38157))

(declare-fun mapNonEmpty!38157 () Bool)

(declare-fun tp!73307 () Bool)

(declare-fun e!583587 () Bool)

(assert (=> mapNonEmpty!38157 (= mapRes!38157 (and tp!73307 e!583587))))

(declare-fun mapKey!38157 () (_ BitVec 32))

(declare-fun mapRest!38157 () (Array (_ BitVec 32) ValueCell!11526))

(declare-fun mapValue!38157 () ValueCell!11526)

(assert (=> mapNonEmpty!38157 (= mapRest!38156 (store mapRest!38157 mapKey!38157 mapValue!38157))))

(declare-fun b!1032676 () Bool)

(assert (=> b!1032676 (= e!583587 tp_is_empty!24459)))

(assert (= (and mapNonEmpty!38156 condMapEmpty!38157) mapIsEmpty!38157))

(assert (= (and mapNonEmpty!38156 (not condMapEmpty!38157)) mapNonEmpty!38157))

(assert (= (and mapNonEmpty!38157 ((_ is ValueCellFull!11526) mapValue!38157)) b!1032676))

(assert (= (and mapNonEmpty!38156 ((_ is ValueCellFull!11526) mapDefault!38157)) b!1032677))

(declare-fun m!952945 () Bool)

(assert (=> mapNonEmpty!38157 m!952945))

(check-sat tp_is_empty!24459 (not bm!43612) (not mapNonEmpty!38157) (not b!1032633) (not b!1032675) (not b!1032659) (not b!1032674) (not b!1032647) (not b!1032646) (not bm!43609) (not bm!43615) (not b!1032658) (not d!123671) (not b_next!20739) b_and!33225 (not b!1032672))
(check-sat b_and!33225 (not b_next!20739))
