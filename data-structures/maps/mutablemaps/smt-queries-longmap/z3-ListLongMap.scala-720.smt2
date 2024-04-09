; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16838 () Bool)

(assert start!16838)

(declare-fun b!169619 () Bool)

(declare-fun b_free!4161 () Bool)

(declare-fun b_next!4161 () Bool)

(assert (=> b!169619 (= b_free!4161 (not b_next!4161))))

(declare-fun tp!15084 () Bool)

(declare-fun b_and!10593 () Bool)

(assert (=> b!169619 (= tp!15084 b_and!10593)))

(declare-fun mapNonEmpty!6663 () Bool)

(declare-fun mapRes!6663 () Bool)

(declare-fun tp!15083 () Bool)

(declare-fun e!111873 () Bool)

(assert (=> mapNonEmpty!6663 (= mapRes!6663 (and tp!15083 e!111873))))

(declare-datatypes ((V!4891 0))(
  ( (V!4892 (val!2011 Int)) )
))
(declare-datatypes ((ValueCell!1623 0))(
  ( (ValueCellFull!1623 (v!3872 V!4891)) (EmptyCell!1623) )
))
(declare-fun mapValue!6663 () ValueCell!1623)

(declare-datatypes ((array!6962 0))(
  ( (array!6963 (arr!3316 (Array (_ BitVec 32) (_ BitVec 64))) (size!3604 (_ BitVec 32))) )
))
(declare-datatypes ((array!6964 0))(
  ( (array!6965 (arr!3317 (Array (_ BitVec 32) ValueCell!1623)) (size!3605 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2154 0))(
  ( (LongMapFixedSize!2155 (defaultEntry!3519 Int) (mask!8308 (_ BitVec 32)) (extraKeys!3260 (_ BitVec 32)) (zeroValue!3362 V!4891) (minValue!3362 V!4891) (_size!1126 (_ BitVec 32)) (_keys!5344 array!6962) (_values!3502 array!6964) (_vacant!1126 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2154)

(declare-fun mapKey!6663 () (_ BitVec 32))

(declare-fun mapRest!6663 () (Array (_ BitVec 32) ValueCell!1623))

(assert (=> mapNonEmpty!6663 (= (arr!3317 (_values!3502 thiss!1248)) (store mapRest!6663 mapKey!6663 mapValue!6663))))

(declare-fun b!169616 () Bool)

(declare-fun e!111872 () Bool)

(declare-fun e!111874 () Bool)

(assert (=> b!169616 (= e!111872 (and e!111874 mapRes!6663))))

(declare-fun condMapEmpty!6663 () Bool)

(declare-fun mapDefault!6663 () ValueCell!1623)

(assert (=> b!169616 (= condMapEmpty!6663 (= (arr!3317 (_values!3502 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1623)) mapDefault!6663)))))

(declare-fun b!169617 () Bool)

(declare-fun e!111877 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!169617 (= e!111877 (not (validMask!0 (mask!8308 thiss!1248))))))

(declare-fun b!169618 () Bool)

(declare-fun tp_is_empty!3933 () Bool)

(assert (=> b!169618 (= e!111873 tp_is_empty!3933)))

(declare-fun e!111875 () Bool)

(declare-fun array_inv!2119 (array!6962) Bool)

(declare-fun array_inv!2120 (array!6964) Bool)

(assert (=> b!169619 (= e!111875 (and tp!15084 tp_is_empty!3933 (array_inv!2119 (_keys!5344 thiss!1248)) (array_inv!2120 (_values!3502 thiss!1248)) e!111872))))

(declare-fun b!169620 () Bool)

(assert (=> b!169620 (= e!111874 tp_is_empty!3933)))

(declare-fun b!169621 () Bool)

(declare-fun res!80655 () Bool)

(assert (=> b!169621 (=> (not res!80655) (not e!111877))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!169621 (= res!80655 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!6663 () Bool)

(assert (=> mapIsEmpty!6663 mapRes!6663))

(declare-fun res!80654 () Bool)

(assert (=> start!16838 (=> (not res!80654) (not e!111877))))

(declare-fun valid!919 (LongMapFixedSize!2154) Bool)

(assert (=> start!16838 (= res!80654 (valid!919 thiss!1248))))

(assert (=> start!16838 e!111877))

(assert (=> start!16838 e!111875))

(assert (=> start!16838 true))

(assert (= (and start!16838 res!80654) b!169621))

(assert (= (and b!169621 res!80655) b!169617))

(assert (= (and b!169616 condMapEmpty!6663) mapIsEmpty!6663))

(assert (= (and b!169616 (not condMapEmpty!6663)) mapNonEmpty!6663))

(get-info :version)

(assert (= (and mapNonEmpty!6663 ((_ is ValueCellFull!1623) mapValue!6663)) b!169618))

(assert (= (and b!169616 ((_ is ValueCellFull!1623) mapDefault!6663)) b!169620))

(assert (= b!169619 b!169616))

(assert (= start!16838 b!169619))

(declare-fun m!198561 () Bool)

(assert (=> mapNonEmpty!6663 m!198561))

(declare-fun m!198563 () Bool)

(assert (=> b!169617 m!198563))

(declare-fun m!198565 () Bool)

(assert (=> b!169619 m!198565))

(declare-fun m!198567 () Bool)

(assert (=> b!169619 m!198567))

(declare-fun m!198569 () Bool)

(assert (=> start!16838 m!198569))

(check-sat (not b!169619) (not mapNonEmpty!6663) tp_is_empty!3933 (not start!16838) (not b_next!4161) b_and!10593 (not b!169617))
(check-sat b_and!10593 (not b_next!4161))
(get-model)

(declare-fun d!51549 () Bool)

(assert (=> d!51549 (= (array_inv!2119 (_keys!5344 thiss!1248)) (bvsge (size!3604 (_keys!5344 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!169619 d!51549))

(declare-fun d!51551 () Bool)

(assert (=> d!51551 (= (array_inv!2120 (_values!3502 thiss!1248)) (bvsge (size!3605 (_values!3502 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!169619 d!51551))

(declare-fun d!51553 () Bool)

(declare-fun res!80668 () Bool)

(declare-fun e!111898 () Bool)

(assert (=> d!51553 (=> (not res!80668) (not e!111898))))

(declare-fun simpleValid!126 (LongMapFixedSize!2154) Bool)

(assert (=> d!51553 (= res!80668 (simpleValid!126 thiss!1248))))

(assert (=> d!51553 (= (valid!919 thiss!1248) e!111898)))

(declare-fun b!169646 () Bool)

(declare-fun res!80669 () Bool)

(assert (=> b!169646 (=> (not res!80669) (not e!111898))))

(declare-fun arrayCountValidKeys!0 (array!6962 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!169646 (= res!80669 (= (arrayCountValidKeys!0 (_keys!5344 thiss!1248) #b00000000000000000000000000000000 (size!3604 (_keys!5344 thiss!1248))) (_size!1126 thiss!1248)))))

(declare-fun b!169647 () Bool)

(declare-fun res!80670 () Bool)

(assert (=> b!169647 (=> (not res!80670) (not e!111898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6962 (_ BitVec 32)) Bool)

(assert (=> b!169647 (= res!80670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5344 thiss!1248) (mask!8308 thiss!1248)))))

(declare-fun b!169648 () Bool)

(declare-datatypes ((List!2203 0))(
  ( (Nil!2200) (Cons!2199 (h!2816 (_ BitVec 64)) (t!7013 List!2203)) )
))
(declare-fun arrayNoDuplicates!0 (array!6962 (_ BitVec 32) List!2203) Bool)

(assert (=> b!169648 (= e!111898 (arrayNoDuplicates!0 (_keys!5344 thiss!1248) #b00000000000000000000000000000000 Nil!2200))))

(assert (= (and d!51553 res!80668) b!169646))

(assert (= (and b!169646 res!80669) b!169647))

(assert (= (and b!169647 res!80670) b!169648))

(declare-fun m!198581 () Bool)

(assert (=> d!51553 m!198581))

(declare-fun m!198583 () Bool)

(assert (=> b!169646 m!198583))

(declare-fun m!198585 () Bool)

(assert (=> b!169647 m!198585))

(declare-fun m!198587 () Bool)

(assert (=> b!169648 m!198587))

(assert (=> start!16838 d!51553))

(declare-fun d!51555 () Bool)

(assert (=> d!51555 (= (validMask!0 (mask!8308 thiss!1248)) (and (or (= (mask!8308 thiss!1248) #b00000000000000000000000000000111) (= (mask!8308 thiss!1248) #b00000000000000000000000000001111) (= (mask!8308 thiss!1248) #b00000000000000000000000000011111) (= (mask!8308 thiss!1248) #b00000000000000000000000000111111) (= (mask!8308 thiss!1248) #b00000000000000000000000001111111) (= (mask!8308 thiss!1248) #b00000000000000000000000011111111) (= (mask!8308 thiss!1248) #b00000000000000000000000111111111) (= (mask!8308 thiss!1248) #b00000000000000000000001111111111) (= (mask!8308 thiss!1248) #b00000000000000000000011111111111) (= (mask!8308 thiss!1248) #b00000000000000000000111111111111) (= (mask!8308 thiss!1248) #b00000000000000000001111111111111) (= (mask!8308 thiss!1248) #b00000000000000000011111111111111) (= (mask!8308 thiss!1248) #b00000000000000000111111111111111) (= (mask!8308 thiss!1248) #b00000000000000001111111111111111) (= (mask!8308 thiss!1248) #b00000000000000011111111111111111) (= (mask!8308 thiss!1248) #b00000000000000111111111111111111) (= (mask!8308 thiss!1248) #b00000000000001111111111111111111) (= (mask!8308 thiss!1248) #b00000000000011111111111111111111) (= (mask!8308 thiss!1248) #b00000000000111111111111111111111) (= (mask!8308 thiss!1248) #b00000000001111111111111111111111) (= (mask!8308 thiss!1248) #b00000000011111111111111111111111) (= (mask!8308 thiss!1248) #b00000000111111111111111111111111) (= (mask!8308 thiss!1248) #b00000001111111111111111111111111) (= (mask!8308 thiss!1248) #b00000011111111111111111111111111) (= (mask!8308 thiss!1248) #b00000111111111111111111111111111) (= (mask!8308 thiss!1248) #b00001111111111111111111111111111) (= (mask!8308 thiss!1248) #b00011111111111111111111111111111) (= (mask!8308 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8308 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!169617 d!51555))

(declare-fun b!169656 () Bool)

(declare-fun e!111903 () Bool)

(assert (=> b!169656 (= e!111903 tp_is_empty!3933)))

(declare-fun condMapEmpty!6669 () Bool)

(declare-fun mapDefault!6669 () ValueCell!1623)

(assert (=> mapNonEmpty!6663 (= condMapEmpty!6669 (= mapRest!6663 ((as const (Array (_ BitVec 32) ValueCell!1623)) mapDefault!6669)))))

(declare-fun mapRes!6669 () Bool)

(assert (=> mapNonEmpty!6663 (= tp!15083 (and e!111903 mapRes!6669))))

(declare-fun mapNonEmpty!6669 () Bool)

(declare-fun tp!15093 () Bool)

(declare-fun e!111904 () Bool)

(assert (=> mapNonEmpty!6669 (= mapRes!6669 (and tp!15093 e!111904))))

(declare-fun mapKey!6669 () (_ BitVec 32))

(declare-fun mapRest!6669 () (Array (_ BitVec 32) ValueCell!1623))

(declare-fun mapValue!6669 () ValueCell!1623)

(assert (=> mapNonEmpty!6669 (= mapRest!6663 (store mapRest!6669 mapKey!6669 mapValue!6669))))

(declare-fun b!169655 () Bool)

(assert (=> b!169655 (= e!111904 tp_is_empty!3933)))

(declare-fun mapIsEmpty!6669 () Bool)

(assert (=> mapIsEmpty!6669 mapRes!6669))

(assert (= (and mapNonEmpty!6663 condMapEmpty!6669) mapIsEmpty!6669))

(assert (= (and mapNonEmpty!6663 (not condMapEmpty!6669)) mapNonEmpty!6669))

(assert (= (and mapNonEmpty!6669 ((_ is ValueCellFull!1623) mapValue!6669)) b!169655))

(assert (= (and mapNonEmpty!6663 ((_ is ValueCellFull!1623) mapDefault!6669)) b!169656))

(declare-fun m!198589 () Bool)

(assert (=> mapNonEmpty!6669 m!198589))

(check-sat tp_is_empty!3933 (not b_next!4161) (not mapNonEmpty!6669) (not b!169648) (not b!169647) b_and!10593 (not b!169646) (not d!51553))
(check-sat b_and!10593 (not b_next!4161))
(get-model)

(declare-fun d!51557 () Bool)

(declare-fun res!80679 () Bool)

(declare-fun e!111915 () Bool)

(assert (=> d!51557 (=> res!80679 e!111915)))

(assert (=> d!51557 (= res!80679 (bvsge #b00000000000000000000000000000000 (size!3604 (_keys!5344 thiss!1248))))))

(assert (=> d!51557 (= (arrayNoDuplicates!0 (_keys!5344 thiss!1248) #b00000000000000000000000000000000 Nil!2200) e!111915)))

(declare-fun b!169667 () Bool)

(declare-fun e!111914 () Bool)

(assert (=> b!169667 (= e!111915 e!111914)))

(declare-fun res!80677 () Bool)

(assert (=> b!169667 (=> (not res!80677) (not e!111914))))

(declare-fun e!111913 () Bool)

(assert (=> b!169667 (= res!80677 (not e!111913))))

(declare-fun res!80678 () Bool)

(assert (=> b!169667 (=> (not res!80678) (not e!111913))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!169667 (= res!80678 (validKeyInArray!0 (select (arr!3316 (_keys!5344 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!169668 () Bool)

(declare-fun e!111916 () Bool)

(declare-fun call!17336 () Bool)

(assert (=> b!169668 (= e!111916 call!17336)))

(declare-fun bm!17333 () Bool)

(declare-fun c!30411 () Bool)

(assert (=> bm!17333 (= call!17336 (arrayNoDuplicates!0 (_keys!5344 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30411 (Cons!2199 (select (arr!3316 (_keys!5344 thiss!1248)) #b00000000000000000000000000000000) Nil!2200) Nil!2200)))))

(declare-fun b!169669 () Bool)

(assert (=> b!169669 (= e!111916 call!17336)))

(declare-fun b!169670 () Bool)

(declare-fun contains!1136 (List!2203 (_ BitVec 64)) Bool)

(assert (=> b!169670 (= e!111913 (contains!1136 Nil!2200 (select (arr!3316 (_keys!5344 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!169671 () Bool)

(assert (=> b!169671 (= e!111914 e!111916)))

(assert (=> b!169671 (= c!30411 (validKeyInArray!0 (select (arr!3316 (_keys!5344 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!51557 (not res!80679)) b!169667))

(assert (= (and b!169667 res!80678) b!169670))

(assert (= (and b!169667 res!80677) b!169671))

(assert (= (and b!169671 c!30411) b!169668))

(assert (= (and b!169671 (not c!30411)) b!169669))

(assert (= (or b!169668 b!169669) bm!17333))

(declare-fun m!198591 () Bool)

(assert (=> b!169667 m!198591))

(assert (=> b!169667 m!198591))

(declare-fun m!198593 () Bool)

(assert (=> b!169667 m!198593))

(assert (=> bm!17333 m!198591))

(declare-fun m!198595 () Bool)

(assert (=> bm!17333 m!198595))

(assert (=> b!169670 m!198591))

(assert (=> b!169670 m!198591))

(declare-fun m!198597 () Bool)

(assert (=> b!169670 m!198597))

(assert (=> b!169671 m!198591))

(assert (=> b!169671 m!198591))

(assert (=> b!169671 m!198593))

(assert (=> b!169648 d!51557))

(declare-fun d!51559 () Bool)

(declare-fun res!80685 () Bool)

(declare-fun e!111923 () Bool)

(assert (=> d!51559 (=> res!80685 e!111923)))

(assert (=> d!51559 (= res!80685 (bvsge #b00000000000000000000000000000000 (size!3604 (_keys!5344 thiss!1248))))))

(assert (=> d!51559 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5344 thiss!1248) (mask!8308 thiss!1248)) e!111923)))

(declare-fun b!169680 () Bool)

(declare-fun e!111924 () Bool)

(assert (=> b!169680 (= e!111923 e!111924)))

(declare-fun c!30414 () Bool)

(assert (=> b!169680 (= c!30414 (validKeyInArray!0 (select (arr!3316 (_keys!5344 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17336 () Bool)

(declare-fun call!17339 () Bool)

(assert (=> bm!17336 (= call!17339 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5344 thiss!1248) (mask!8308 thiss!1248)))))

(declare-fun b!169681 () Bool)

(declare-fun e!111925 () Bool)

(assert (=> b!169681 (= e!111925 call!17339)))

(declare-fun b!169682 () Bool)

(assert (=> b!169682 (= e!111924 call!17339)))

(declare-fun b!169683 () Bool)

(assert (=> b!169683 (= e!111924 e!111925)))

(declare-fun lt!84979 () (_ BitVec 64))

(assert (=> b!169683 (= lt!84979 (select (arr!3316 (_keys!5344 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5233 0))(
  ( (Unit!5234) )
))
(declare-fun lt!84980 () Unit!5233)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!6962 (_ BitVec 64) (_ BitVec 32)) Unit!5233)

(assert (=> b!169683 (= lt!84980 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5344 thiss!1248) lt!84979 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!6962 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!169683 (arrayContainsKey!0 (_keys!5344 thiss!1248) lt!84979 #b00000000000000000000000000000000)))

(declare-fun lt!84978 () Unit!5233)

(assert (=> b!169683 (= lt!84978 lt!84980)))

(declare-fun res!80684 () Bool)

(declare-datatypes ((SeekEntryResult!537 0))(
  ( (MissingZero!537 (index!4316 (_ BitVec 32))) (Found!537 (index!4317 (_ BitVec 32))) (Intermediate!537 (undefined!1349 Bool) (index!4318 (_ BitVec 32)) (x!18763 (_ BitVec 32))) (Undefined!537) (MissingVacant!537 (index!4319 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6962 (_ BitVec 32)) SeekEntryResult!537)

(assert (=> b!169683 (= res!80684 (= (seekEntryOrOpen!0 (select (arr!3316 (_keys!5344 thiss!1248)) #b00000000000000000000000000000000) (_keys!5344 thiss!1248) (mask!8308 thiss!1248)) (Found!537 #b00000000000000000000000000000000)))))

(assert (=> b!169683 (=> (not res!80684) (not e!111925))))

(assert (= (and d!51559 (not res!80685)) b!169680))

(assert (= (and b!169680 c!30414) b!169683))

(assert (= (and b!169680 (not c!30414)) b!169682))

(assert (= (and b!169683 res!80684) b!169681))

(assert (= (or b!169681 b!169682) bm!17336))

(assert (=> b!169680 m!198591))

(assert (=> b!169680 m!198591))

(assert (=> b!169680 m!198593))

(declare-fun m!198599 () Bool)

(assert (=> bm!17336 m!198599))

(assert (=> b!169683 m!198591))

(declare-fun m!198601 () Bool)

(assert (=> b!169683 m!198601))

(declare-fun m!198603 () Bool)

(assert (=> b!169683 m!198603))

(assert (=> b!169683 m!198591))

(declare-fun m!198605 () Bool)

(assert (=> b!169683 m!198605))

(assert (=> b!169647 d!51559))

(declare-fun b!169692 () Bool)

(declare-fun e!111931 () (_ BitVec 32))

(declare-fun call!17342 () (_ BitVec 32))

(assert (=> b!169692 (= e!111931 (bvadd #b00000000000000000000000000000001 call!17342))))

(declare-fun b!169693 () Bool)

(declare-fun e!111930 () (_ BitVec 32))

(assert (=> b!169693 (= e!111930 #b00000000000000000000000000000000)))

(declare-fun b!169694 () Bool)

(assert (=> b!169694 (= e!111930 e!111931)))

(declare-fun c!30420 () Bool)

(assert (=> b!169694 (= c!30420 (validKeyInArray!0 (select (arr!3316 (_keys!5344 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!51561 () Bool)

(declare-fun lt!84983 () (_ BitVec 32))

(assert (=> d!51561 (and (bvsge lt!84983 #b00000000000000000000000000000000) (bvsle lt!84983 (bvsub (size!3604 (_keys!5344 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!51561 (= lt!84983 e!111930)))

(declare-fun c!30419 () Bool)

(assert (=> d!51561 (= c!30419 (bvsge #b00000000000000000000000000000000 (size!3604 (_keys!5344 thiss!1248))))))

(assert (=> d!51561 (and (bvsle #b00000000000000000000000000000000 (size!3604 (_keys!5344 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3604 (_keys!5344 thiss!1248)) (size!3604 (_keys!5344 thiss!1248))))))

(assert (=> d!51561 (= (arrayCountValidKeys!0 (_keys!5344 thiss!1248) #b00000000000000000000000000000000 (size!3604 (_keys!5344 thiss!1248))) lt!84983)))

(declare-fun bm!17339 () Bool)

(assert (=> bm!17339 (= call!17342 (arrayCountValidKeys!0 (_keys!5344 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3604 (_keys!5344 thiss!1248))))))

(declare-fun b!169695 () Bool)

(assert (=> b!169695 (= e!111931 call!17342)))

(assert (= (and d!51561 c!30419) b!169693))

(assert (= (and d!51561 (not c!30419)) b!169694))

(assert (= (and b!169694 c!30420) b!169692))

(assert (= (and b!169694 (not c!30420)) b!169695))

(assert (= (or b!169692 b!169695) bm!17339))

(assert (=> b!169694 m!198591))

(assert (=> b!169694 m!198591))

(assert (=> b!169694 m!198593))

(declare-fun m!198607 () Bool)

(assert (=> bm!17339 m!198607))

(assert (=> b!169646 d!51561))

(declare-fun b!169704 () Bool)

(declare-fun res!80694 () Bool)

(declare-fun e!111934 () Bool)

(assert (=> b!169704 (=> (not res!80694) (not e!111934))))

(assert (=> b!169704 (= res!80694 (and (= (size!3605 (_values!3502 thiss!1248)) (bvadd (mask!8308 thiss!1248) #b00000000000000000000000000000001)) (= (size!3604 (_keys!5344 thiss!1248)) (size!3605 (_values!3502 thiss!1248))) (bvsge (_size!1126 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1126 thiss!1248) (bvadd (mask!8308 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!169706 () Bool)

(declare-fun res!80695 () Bool)

(assert (=> b!169706 (=> (not res!80695) (not e!111934))))

(declare-fun size!3608 (LongMapFixedSize!2154) (_ BitVec 32))

(assert (=> b!169706 (= res!80695 (= (size!3608 thiss!1248) (bvadd (_size!1126 thiss!1248) (bvsdiv (bvadd (extraKeys!3260 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!169705 () Bool)

(declare-fun res!80697 () Bool)

(assert (=> b!169705 (=> (not res!80697) (not e!111934))))

(assert (=> b!169705 (= res!80697 (bvsge (size!3608 thiss!1248) (_size!1126 thiss!1248)))))

(declare-fun b!169707 () Bool)

(assert (=> b!169707 (= e!111934 (and (bvsge (extraKeys!3260 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3260 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1126 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun d!51563 () Bool)

(declare-fun res!80696 () Bool)

(assert (=> d!51563 (=> (not res!80696) (not e!111934))))

(assert (=> d!51563 (= res!80696 (validMask!0 (mask!8308 thiss!1248)))))

(assert (=> d!51563 (= (simpleValid!126 thiss!1248) e!111934)))

(assert (= (and d!51563 res!80696) b!169704))

(assert (= (and b!169704 res!80694) b!169705))

(assert (= (and b!169705 res!80697) b!169706))

(assert (= (and b!169706 res!80695) b!169707))

(declare-fun m!198609 () Bool)

(assert (=> b!169706 m!198609))

(assert (=> b!169705 m!198609))

(assert (=> d!51563 m!198563))

(assert (=> d!51553 d!51563))

(declare-fun b!169709 () Bool)

(declare-fun e!111935 () Bool)

(assert (=> b!169709 (= e!111935 tp_is_empty!3933)))

(declare-fun condMapEmpty!6670 () Bool)

(declare-fun mapDefault!6670 () ValueCell!1623)

(assert (=> mapNonEmpty!6669 (= condMapEmpty!6670 (= mapRest!6669 ((as const (Array (_ BitVec 32) ValueCell!1623)) mapDefault!6670)))))

(declare-fun mapRes!6670 () Bool)

(assert (=> mapNonEmpty!6669 (= tp!15093 (and e!111935 mapRes!6670))))

(declare-fun mapNonEmpty!6670 () Bool)

(declare-fun tp!15094 () Bool)

(declare-fun e!111936 () Bool)

(assert (=> mapNonEmpty!6670 (= mapRes!6670 (and tp!15094 e!111936))))

(declare-fun mapValue!6670 () ValueCell!1623)

(declare-fun mapRest!6670 () (Array (_ BitVec 32) ValueCell!1623))

(declare-fun mapKey!6670 () (_ BitVec 32))

(assert (=> mapNonEmpty!6670 (= mapRest!6669 (store mapRest!6670 mapKey!6670 mapValue!6670))))

(declare-fun b!169708 () Bool)

(assert (=> b!169708 (= e!111936 tp_is_empty!3933)))

(declare-fun mapIsEmpty!6670 () Bool)

(assert (=> mapIsEmpty!6670 mapRes!6670))

(assert (= (and mapNonEmpty!6669 condMapEmpty!6670) mapIsEmpty!6670))

(assert (= (and mapNonEmpty!6669 (not condMapEmpty!6670)) mapNonEmpty!6670))

(assert (= (and mapNonEmpty!6670 ((_ is ValueCellFull!1623) mapValue!6670)) b!169708))

(assert (= (and mapNonEmpty!6669 ((_ is ValueCellFull!1623) mapDefault!6670)) b!169709))

(declare-fun m!198611 () Bool)

(assert (=> mapNonEmpty!6670 m!198611))

(check-sat (not mapNonEmpty!6670) (not b!169683) tp_is_empty!3933 (not b_next!4161) (not b!169671) (not b!169670) (not bm!17339) (not b!169667) (not bm!17333) (not d!51563) (not bm!17336) (not b!169706) (not b!169694) (not b!169680) b_and!10593 (not b!169705))
(check-sat b_and!10593 (not b_next!4161))
