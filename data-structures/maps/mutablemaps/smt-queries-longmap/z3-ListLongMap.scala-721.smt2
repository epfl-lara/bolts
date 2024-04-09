; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16860 () Bool)

(assert start!16860)

(declare-fun b!169747 () Bool)

(declare-fun b_free!4167 () Bool)

(declare-fun b_next!4167 () Bool)

(assert (=> b!169747 (= b_free!4167 (not b_next!4167))))

(declare-fun tp!15105 () Bool)

(declare-fun b_and!10599 () Bool)

(assert (=> b!169747 (= tp!15105 b_and!10599)))

(declare-fun mapNonEmpty!6676 () Bool)

(declare-fun mapRes!6676 () Bool)

(declare-fun tp!15106 () Bool)

(declare-fun e!111968 () Bool)

(assert (=> mapNonEmpty!6676 (= mapRes!6676 (and tp!15106 e!111968))))

(declare-datatypes ((V!4899 0))(
  ( (V!4900 (val!2014 Int)) )
))
(declare-datatypes ((ValueCell!1626 0))(
  ( (ValueCellFull!1626 (v!3875 V!4899)) (EmptyCell!1626) )
))
(declare-fun mapRest!6676 () (Array (_ BitVec 32) ValueCell!1626))

(declare-fun mapValue!6676 () ValueCell!1626)

(declare-fun mapKey!6676 () (_ BitVec 32))

(declare-datatypes ((array!6976 0))(
  ( (array!6977 (arr!3322 (Array (_ BitVec 32) (_ BitVec 64))) (size!3611 (_ BitVec 32))) )
))
(declare-datatypes ((array!6978 0))(
  ( (array!6979 (arr!3323 (Array (_ BitVec 32) ValueCell!1626)) (size!3612 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2160 0))(
  ( (LongMapFixedSize!2161 (defaultEntry!3522 Int) (mask!8315 (_ BitVec 32)) (extraKeys!3263 (_ BitVec 32)) (zeroValue!3365 V!4899) (minValue!3365 V!4899) (_size!1129 (_ BitVec 32)) (_keys!5348 array!6976) (_values!3505 array!6978) (_vacant!1129 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2160)

(assert (=> mapNonEmpty!6676 (= (arr!3323 (_values!3505 thiss!1248)) (store mapRest!6676 mapKey!6676 mapValue!6676))))

(declare-fun b!169745 () Bool)

(declare-fun e!111967 () Bool)

(assert (=> b!169745 (= e!111967 (not (= (size!3612 (_values!3505 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8315 thiss!1248)))))))

(declare-fun b!169746 () Bool)

(declare-fun e!111970 () Bool)

(declare-fun e!111971 () Bool)

(assert (=> b!169746 (= e!111970 (and e!111971 mapRes!6676))))

(declare-fun condMapEmpty!6676 () Bool)

(declare-fun mapDefault!6676 () ValueCell!1626)

(assert (=> b!169746 (= condMapEmpty!6676 (= (arr!3323 (_values!3505 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1626)) mapDefault!6676)))))

(declare-fun mapIsEmpty!6676 () Bool)

(assert (=> mapIsEmpty!6676 mapRes!6676))

(declare-fun e!111972 () Bool)

(declare-fun tp_is_empty!3939 () Bool)

(declare-fun array_inv!2121 (array!6976) Bool)

(declare-fun array_inv!2122 (array!6978) Bool)

(assert (=> b!169747 (= e!111972 (and tp!15105 tp_is_empty!3939 (array_inv!2121 (_keys!5348 thiss!1248)) (array_inv!2122 (_values!3505 thiss!1248)) e!111970))))

(declare-fun res!80713 () Bool)

(assert (=> start!16860 (=> (not res!80713) (not e!111967))))

(declare-fun valid!920 (LongMapFixedSize!2160) Bool)

(assert (=> start!16860 (= res!80713 (valid!920 thiss!1248))))

(assert (=> start!16860 e!111967))

(assert (=> start!16860 e!111972))

(assert (=> start!16860 true))

(declare-fun b!169748 () Bool)

(declare-fun res!80714 () Bool)

(assert (=> b!169748 (=> (not res!80714) (not e!111967))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!169748 (= res!80714 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!169749 () Bool)

(assert (=> b!169749 (= e!111968 tp_is_empty!3939)))

(declare-fun b!169750 () Bool)

(declare-fun res!80715 () Bool)

(assert (=> b!169750 (=> (not res!80715) (not e!111967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!169750 (= res!80715 (validMask!0 (mask!8315 thiss!1248)))))

(declare-fun b!169751 () Bool)

(assert (=> b!169751 (= e!111971 tp_is_empty!3939)))

(assert (= (and start!16860 res!80713) b!169748))

(assert (= (and b!169748 res!80714) b!169750))

(assert (= (and b!169750 res!80715) b!169745))

(assert (= (and b!169746 condMapEmpty!6676) mapIsEmpty!6676))

(assert (= (and b!169746 (not condMapEmpty!6676)) mapNonEmpty!6676))

(get-info :version)

(assert (= (and mapNonEmpty!6676 ((_ is ValueCellFull!1626) mapValue!6676)) b!169749))

(assert (= (and b!169746 ((_ is ValueCellFull!1626) mapDefault!6676)) b!169751))

(assert (= b!169747 b!169746))

(assert (= start!16860 b!169747))

(declare-fun m!198623 () Bool)

(assert (=> mapNonEmpty!6676 m!198623))

(declare-fun m!198625 () Bool)

(assert (=> b!169747 m!198625))

(declare-fun m!198627 () Bool)

(assert (=> b!169747 m!198627))

(declare-fun m!198629 () Bool)

(assert (=> start!16860 m!198629))

(declare-fun m!198631 () Bool)

(assert (=> b!169750 m!198631))

(check-sat (not b!169750) (not mapNonEmpty!6676) b_and!10599 (not b!169747) (not b_next!4167) (not start!16860) tp_is_empty!3939)
(check-sat b_and!10599 (not b_next!4167))
(get-model)

(declare-fun d!51567 () Bool)

(assert (=> d!51567 (= (array_inv!2121 (_keys!5348 thiss!1248)) (bvsge (size!3611 (_keys!5348 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!169747 d!51567))

(declare-fun d!51569 () Bool)

(assert (=> d!51569 (= (array_inv!2122 (_values!3505 thiss!1248)) (bvsge (size!3612 (_values!3505 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!169747 d!51569))

(declare-fun d!51571 () Bool)

(declare-fun res!80731 () Bool)

(declare-fun e!111993 () Bool)

(assert (=> d!51571 (=> (not res!80731) (not e!111993))))

(declare-fun simpleValid!127 (LongMapFixedSize!2160) Bool)

(assert (=> d!51571 (= res!80731 (simpleValid!127 thiss!1248))))

(assert (=> d!51571 (= (valid!920 thiss!1248) e!111993)))

(declare-fun b!169779 () Bool)

(declare-fun res!80732 () Bool)

(assert (=> b!169779 (=> (not res!80732) (not e!111993))))

(declare-fun arrayCountValidKeys!0 (array!6976 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!169779 (= res!80732 (= (arrayCountValidKeys!0 (_keys!5348 thiss!1248) #b00000000000000000000000000000000 (size!3611 (_keys!5348 thiss!1248))) (_size!1129 thiss!1248)))))

(declare-fun b!169780 () Bool)

(declare-fun res!80733 () Bool)

(assert (=> b!169780 (=> (not res!80733) (not e!111993))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6976 (_ BitVec 32)) Bool)

(assert (=> b!169780 (= res!80733 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5348 thiss!1248) (mask!8315 thiss!1248)))))

(declare-fun b!169781 () Bool)

(declare-datatypes ((List!2204 0))(
  ( (Nil!2201) (Cons!2200 (h!2817 (_ BitVec 64)) (t!7014 List!2204)) )
))
(declare-fun arrayNoDuplicates!0 (array!6976 (_ BitVec 32) List!2204) Bool)

(assert (=> b!169781 (= e!111993 (arrayNoDuplicates!0 (_keys!5348 thiss!1248) #b00000000000000000000000000000000 Nil!2201))))

(assert (= (and d!51571 res!80731) b!169779))

(assert (= (and b!169779 res!80732) b!169780))

(assert (= (and b!169780 res!80733) b!169781))

(declare-fun m!198643 () Bool)

(assert (=> d!51571 m!198643))

(declare-fun m!198645 () Bool)

(assert (=> b!169779 m!198645))

(declare-fun m!198647 () Bool)

(assert (=> b!169780 m!198647))

(declare-fun m!198649 () Bool)

(assert (=> b!169781 m!198649))

(assert (=> start!16860 d!51571))

(declare-fun d!51573 () Bool)

(assert (=> d!51573 (= (validMask!0 (mask!8315 thiss!1248)) (and (or (= (mask!8315 thiss!1248) #b00000000000000000000000000000111) (= (mask!8315 thiss!1248) #b00000000000000000000000000001111) (= (mask!8315 thiss!1248) #b00000000000000000000000000011111) (= (mask!8315 thiss!1248) #b00000000000000000000000000111111) (= (mask!8315 thiss!1248) #b00000000000000000000000001111111) (= (mask!8315 thiss!1248) #b00000000000000000000000011111111) (= (mask!8315 thiss!1248) #b00000000000000000000000111111111) (= (mask!8315 thiss!1248) #b00000000000000000000001111111111) (= (mask!8315 thiss!1248) #b00000000000000000000011111111111) (= (mask!8315 thiss!1248) #b00000000000000000000111111111111) (= (mask!8315 thiss!1248) #b00000000000000000001111111111111) (= (mask!8315 thiss!1248) #b00000000000000000011111111111111) (= (mask!8315 thiss!1248) #b00000000000000000111111111111111) (= (mask!8315 thiss!1248) #b00000000000000001111111111111111) (= (mask!8315 thiss!1248) #b00000000000000011111111111111111) (= (mask!8315 thiss!1248) #b00000000000000111111111111111111) (= (mask!8315 thiss!1248) #b00000000000001111111111111111111) (= (mask!8315 thiss!1248) #b00000000000011111111111111111111) (= (mask!8315 thiss!1248) #b00000000000111111111111111111111) (= (mask!8315 thiss!1248) #b00000000001111111111111111111111) (= (mask!8315 thiss!1248) #b00000000011111111111111111111111) (= (mask!8315 thiss!1248) #b00000000111111111111111111111111) (= (mask!8315 thiss!1248) #b00000001111111111111111111111111) (= (mask!8315 thiss!1248) #b00000011111111111111111111111111) (= (mask!8315 thiss!1248) #b00000111111111111111111111111111) (= (mask!8315 thiss!1248) #b00001111111111111111111111111111) (= (mask!8315 thiss!1248) #b00011111111111111111111111111111) (= (mask!8315 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8315 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!169750 d!51573))

(declare-fun condMapEmpty!6682 () Bool)

(declare-fun mapDefault!6682 () ValueCell!1626)

(assert (=> mapNonEmpty!6676 (= condMapEmpty!6682 (= mapRest!6676 ((as const (Array (_ BitVec 32) ValueCell!1626)) mapDefault!6682)))))

(declare-fun e!111998 () Bool)

(declare-fun mapRes!6682 () Bool)

(assert (=> mapNonEmpty!6676 (= tp!15106 (and e!111998 mapRes!6682))))

(declare-fun b!169788 () Bool)

(declare-fun e!111999 () Bool)

(assert (=> b!169788 (= e!111999 tp_is_empty!3939)))

(declare-fun mapNonEmpty!6682 () Bool)

(declare-fun tp!15115 () Bool)

(assert (=> mapNonEmpty!6682 (= mapRes!6682 (and tp!15115 e!111999))))

(declare-fun mapValue!6682 () ValueCell!1626)

(declare-fun mapKey!6682 () (_ BitVec 32))

(declare-fun mapRest!6682 () (Array (_ BitVec 32) ValueCell!1626))

(assert (=> mapNonEmpty!6682 (= mapRest!6676 (store mapRest!6682 mapKey!6682 mapValue!6682))))

(declare-fun mapIsEmpty!6682 () Bool)

(assert (=> mapIsEmpty!6682 mapRes!6682))

(declare-fun b!169789 () Bool)

(assert (=> b!169789 (= e!111998 tp_is_empty!3939)))

(assert (= (and mapNonEmpty!6676 condMapEmpty!6682) mapIsEmpty!6682))

(assert (= (and mapNonEmpty!6676 (not condMapEmpty!6682)) mapNonEmpty!6682))

(assert (= (and mapNonEmpty!6682 ((_ is ValueCellFull!1626) mapValue!6682)) b!169788))

(assert (= (and mapNonEmpty!6676 ((_ is ValueCellFull!1626) mapDefault!6682)) b!169789))

(declare-fun m!198651 () Bool)

(assert (=> mapNonEmpty!6682 m!198651))

(check-sat (not b!169779) b_and!10599 (not mapNonEmpty!6682) (not b_next!4167) (not d!51571) (not b!169781) (not b!169780) tp_is_empty!3939)
(check-sat b_and!10599 (not b_next!4167))
(get-model)

(declare-fun b!169798 () Bool)

(declare-fun e!112005 () (_ BitVec 32))

(assert (=> b!169798 (= e!112005 #b00000000000000000000000000000000)))

(declare-fun d!51575 () Bool)

(declare-fun lt!84986 () (_ BitVec 32))

(assert (=> d!51575 (and (bvsge lt!84986 #b00000000000000000000000000000000) (bvsle lt!84986 (bvsub (size!3611 (_keys!5348 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!51575 (= lt!84986 e!112005)))

(declare-fun c!30425 () Bool)

(assert (=> d!51575 (= c!30425 (bvsge #b00000000000000000000000000000000 (size!3611 (_keys!5348 thiss!1248))))))

(assert (=> d!51575 (and (bvsle #b00000000000000000000000000000000 (size!3611 (_keys!5348 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3611 (_keys!5348 thiss!1248)) (size!3611 (_keys!5348 thiss!1248))))))

(assert (=> d!51575 (= (arrayCountValidKeys!0 (_keys!5348 thiss!1248) #b00000000000000000000000000000000 (size!3611 (_keys!5348 thiss!1248))) lt!84986)))

(declare-fun bm!17342 () Bool)

(declare-fun call!17345 () (_ BitVec 32))

(assert (=> bm!17342 (= call!17345 (arrayCountValidKeys!0 (_keys!5348 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3611 (_keys!5348 thiss!1248))))))

(declare-fun b!169799 () Bool)

(declare-fun e!112004 () (_ BitVec 32))

(assert (=> b!169799 (= e!112004 call!17345)))

(declare-fun b!169800 () Bool)

(assert (=> b!169800 (= e!112005 e!112004)))

(declare-fun c!30426 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!169800 (= c!30426 (validKeyInArray!0 (select (arr!3322 (_keys!5348 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!169801 () Bool)

(assert (=> b!169801 (= e!112004 (bvadd #b00000000000000000000000000000001 call!17345))))

(assert (= (and d!51575 c!30425) b!169798))

(assert (= (and d!51575 (not c!30425)) b!169800))

(assert (= (and b!169800 c!30426) b!169801))

(assert (= (and b!169800 (not c!30426)) b!169799))

(assert (= (or b!169801 b!169799) bm!17342))

(declare-fun m!198653 () Bool)

(assert (=> bm!17342 m!198653))

(declare-fun m!198655 () Bool)

(assert (=> b!169800 m!198655))

(assert (=> b!169800 m!198655))

(declare-fun m!198657 () Bool)

(assert (=> b!169800 m!198657))

(assert (=> b!169779 d!51575))

(declare-fun b!169811 () Bool)

(declare-fun res!80744 () Bool)

(declare-fun e!112008 () Bool)

(assert (=> b!169811 (=> (not res!80744) (not e!112008))))

(declare-fun size!3615 (LongMapFixedSize!2160) (_ BitVec 32))

(assert (=> b!169811 (= res!80744 (bvsge (size!3615 thiss!1248) (_size!1129 thiss!1248)))))

(declare-fun b!169812 () Bool)

(declare-fun res!80745 () Bool)

(assert (=> b!169812 (=> (not res!80745) (not e!112008))))

(assert (=> b!169812 (= res!80745 (= (size!3615 thiss!1248) (bvadd (_size!1129 thiss!1248) (bvsdiv (bvadd (extraKeys!3263 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!169813 () Bool)

(assert (=> b!169813 (= e!112008 (and (bvsge (extraKeys!3263 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3263 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1129 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!169810 () Bool)

(declare-fun res!80743 () Bool)

(assert (=> b!169810 (=> (not res!80743) (not e!112008))))

(assert (=> b!169810 (= res!80743 (and (= (size!3612 (_values!3505 thiss!1248)) (bvadd (mask!8315 thiss!1248) #b00000000000000000000000000000001)) (= (size!3611 (_keys!5348 thiss!1248)) (size!3612 (_values!3505 thiss!1248))) (bvsge (_size!1129 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1129 thiss!1248) (bvadd (mask!8315 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun d!51577 () Bool)

(declare-fun res!80742 () Bool)

(assert (=> d!51577 (=> (not res!80742) (not e!112008))))

(assert (=> d!51577 (= res!80742 (validMask!0 (mask!8315 thiss!1248)))))

(assert (=> d!51577 (= (simpleValid!127 thiss!1248) e!112008)))

(assert (= (and d!51577 res!80742) b!169810))

(assert (= (and b!169810 res!80743) b!169811))

(assert (= (and b!169811 res!80744) b!169812))

(assert (= (and b!169812 res!80745) b!169813))

(declare-fun m!198659 () Bool)

(assert (=> b!169811 m!198659))

(assert (=> b!169812 m!198659))

(assert (=> d!51577 m!198631))

(assert (=> d!51571 d!51577))

(declare-fun b!169824 () Bool)

(declare-fun e!112018 () Bool)

(declare-fun contains!1137 (List!2204 (_ BitVec 64)) Bool)

(assert (=> b!169824 (= e!112018 (contains!1137 Nil!2201 (select (arr!3322 (_keys!5348 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!169825 () Bool)

(declare-fun e!112017 () Bool)

(declare-fun e!112019 () Bool)

(assert (=> b!169825 (= e!112017 e!112019)))

(declare-fun res!80752 () Bool)

(assert (=> b!169825 (=> (not res!80752) (not e!112019))))

(assert (=> b!169825 (= res!80752 (not e!112018))))

(declare-fun res!80754 () Bool)

(assert (=> b!169825 (=> (not res!80754) (not e!112018))))

(assert (=> b!169825 (= res!80754 (validKeyInArray!0 (select (arr!3322 (_keys!5348 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!169826 () Bool)

(declare-fun e!112020 () Bool)

(declare-fun call!17348 () Bool)

(assert (=> b!169826 (= e!112020 call!17348)))

(declare-fun b!169827 () Bool)

(assert (=> b!169827 (= e!112020 call!17348)))

(declare-fun bm!17345 () Bool)

(declare-fun c!30429 () Bool)

(assert (=> bm!17345 (= call!17348 (arrayNoDuplicates!0 (_keys!5348 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30429 (Cons!2200 (select (arr!3322 (_keys!5348 thiss!1248)) #b00000000000000000000000000000000) Nil!2201) Nil!2201)))))

(declare-fun d!51579 () Bool)

(declare-fun res!80753 () Bool)

(assert (=> d!51579 (=> res!80753 e!112017)))

(assert (=> d!51579 (= res!80753 (bvsge #b00000000000000000000000000000000 (size!3611 (_keys!5348 thiss!1248))))))

(assert (=> d!51579 (= (arrayNoDuplicates!0 (_keys!5348 thiss!1248) #b00000000000000000000000000000000 Nil!2201) e!112017)))

(declare-fun b!169828 () Bool)

(assert (=> b!169828 (= e!112019 e!112020)))

(assert (=> b!169828 (= c!30429 (validKeyInArray!0 (select (arr!3322 (_keys!5348 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!51579 (not res!80753)) b!169825))

(assert (= (and b!169825 res!80754) b!169824))

(assert (= (and b!169825 res!80752) b!169828))

(assert (= (and b!169828 c!30429) b!169827))

(assert (= (and b!169828 (not c!30429)) b!169826))

(assert (= (or b!169827 b!169826) bm!17345))

(assert (=> b!169824 m!198655))

(assert (=> b!169824 m!198655))

(declare-fun m!198661 () Bool)

(assert (=> b!169824 m!198661))

(assert (=> b!169825 m!198655))

(assert (=> b!169825 m!198655))

(assert (=> b!169825 m!198657))

(assert (=> bm!17345 m!198655))

(declare-fun m!198663 () Bool)

(assert (=> bm!17345 m!198663))

(assert (=> b!169828 m!198655))

(assert (=> b!169828 m!198655))

(assert (=> b!169828 m!198657))

(assert (=> b!169781 d!51579))

(declare-fun b!169837 () Bool)

(declare-fun e!112029 () Bool)

(declare-fun call!17351 () Bool)

(assert (=> b!169837 (= e!112029 call!17351)))

(declare-fun b!169838 () Bool)

(declare-fun e!112028 () Bool)

(assert (=> b!169838 (= e!112028 e!112029)))

(declare-fun c!30432 () Bool)

(assert (=> b!169838 (= c!30432 (validKeyInArray!0 (select (arr!3322 (_keys!5348 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!169839 () Bool)

(declare-fun e!112027 () Bool)

(assert (=> b!169839 (= e!112029 e!112027)))

(declare-fun lt!84994 () (_ BitVec 64))

(assert (=> b!169839 (= lt!84994 (select (arr!3322 (_keys!5348 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5235 0))(
  ( (Unit!5236) )
))
(declare-fun lt!84993 () Unit!5235)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!6976 (_ BitVec 64) (_ BitVec 32)) Unit!5235)

(assert (=> b!169839 (= lt!84993 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5348 thiss!1248) lt!84994 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!6976 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!169839 (arrayContainsKey!0 (_keys!5348 thiss!1248) lt!84994 #b00000000000000000000000000000000)))

(declare-fun lt!84995 () Unit!5235)

(assert (=> b!169839 (= lt!84995 lt!84993)))

(declare-fun res!80760 () Bool)

(declare-datatypes ((SeekEntryResult!538 0))(
  ( (MissingZero!538 (index!4320 (_ BitVec 32))) (Found!538 (index!4321 (_ BitVec 32))) (Intermediate!538 (undefined!1350 Bool) (index!4322 (_ BitVec 32)) (x!18786 (_ BitVec 32))) (Undefined!538) (MissingVacant!538 (index!4323 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6976 (_ BitVec 32)) SeekEntryResult!538)

(assert (=> b!169839 (= res!80760 (= (seekEntryOrOpen!0 (select (arr!3322 (_keys!5348 thiss!1248)) #b00000000000000000000000000000000) (_keys!5348 thiss!1248) (mask!8315 thiss!1248)) (Found!538 #b00000000000000000000000000000000)))))

(assert (=> b!169839 (=> (not res!80760) (not e!112027))))

(declare-fun b!169840 () Bool)

(assert (=> b!169840 (= e!112027 call!17351)))

(declare-fun d!51581 () Bool)

(declare-fun res!80759 () Bool)

(assert (=> d!51581 (=> res!80759 e!112028)))

(assert (=> d!51581 (= res!80759 (bvsge #b00000000000000000000000000000000 (size!3611 (_keys!5348 thiss!1248))))))

(assert (=> d!51581 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5348 thiss!1248) (mask!8315 thiss!1248)) e!112028)))

(declare-fun bm!17348 () Bool)

(assert (=> bm!17348 (= call!17351 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5348 thiss!1248) (mask!8315 thiss!1248)))))

(assert (= (and d!51581 (not res!80759)) b!169838))

(assert (= (and b!169838 c!30432) b!169839))

(assert (= (and b!169838 (not c!30432)) b!169837))

(assert (= (and b!169839 res!80760) b!169840))

(assert (= (or b!169840 b!169837) bm!17348))

(assert (=> b!169838 m!198655))

(assert (=> b!169838 m!198655))

(assert (=> b!169838 m!198657))

(assert (=> b!169839 m!198655))

(declare-fun m!198665 () Bool)

(assert (=> b!169839 m!198665))

(declare-fun m!198667 () Bool)

(assert (=> b!169839 m!198667))

(assert (=> b!169839 m!198655))

(declare-fun m!198669 () Bool)

(assert (=> b!169839 m!198669))

(declare-fun m!198671 () Bool)

(assert (=> bm!17348 m!198671))

(assert (=> b!169780 d!51581))

(declare-fun condMapEmpty!6683 () Bool)

(declare-fun mapDefault!6683 () ValueCell!1626)

(assert (=> mapNonEmpty!6682 (= condMapEmpty!6683 (= mapRest!6682 ((as const (Array (_ BitVec 32) ValueCell!1626)) mapDefault!6683)))))

(declare-fun e!112030 () Bool)

(declare-fun mapRes!6683 () Bool)

(assert (=> mapNonEmpty!6682 (= tp!15115 (and e!112030 mapRes!6683))))

(declare-fun b!169841 () Bool)

(declare-fun e!112031 () Bool)

(assert (=> b!169841 (= e!112031 tp_is_empty!3939)))

(declare-fun mapNonEmpty!6683 () Bool)

(declare-fun tp!15116 () Bool)

(assert (=> mapNonEmpty!6683 (= mapRes!6683 (and tp!15116 e!112031))))

(declare-fun mapKey!6683 () (_ BitVec 32))

(declare-fun mapValue!6683 () ValueCell!1626)

(declare-fun mapRest!6683 () (Array (_ BitVec 32) ValueCell!1626))

(assert (=> mapNonEmpty!6683 (= mapRest!6682 (store mapRest!6683 mapKey!6683 mapValue!6683))))

(declare-fun mapIsEmpty!6683 () Bool)

(assert (=> mapIsEmpty!6683 mapRes!6683))

(declare-fun b!169842 () Bool)

(assert (=> b!169842 (= e!112030 tp_is_empty!3939)))

(assert (= (and mapNonEmpty!6682 condMapEmpty!6683) mapIsEmpty!6683))

(assert (= (and mapNonEmpty!6682 (not condMapEmpty!6683)) mapNonEmpty!6683))

(assert (= (and mapNonEmpty!6683 ((_ is ValueCellFull!1626) mapValue!6683)) b!169841))

(assert (= (and mapNonEmpty!6682 ((_ is ValueCellFull!1626) mapDefault!6683)) b!169842))

(declare-fun m!198673 () Bool)

(assert (=> mapNonEmpty!6683 m!198673))

(check-sat (not mapNonEmpty!6683) (not b!169838) (not bm!17348) (not bm!17345) (not b!169824) (not b!169811) tp_is_empty!3939 (not bm!17342) (not b!169800) b_and!10599 (not b!169812) (not b!169828) (not d!51577) (not b!169839) (not b_next!4167) (not b!169825))
(check-sat b_and!10599 (not b_next!4167))
