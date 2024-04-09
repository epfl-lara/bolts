; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90594 () Bool)

(assert start!90594)

(declare-fun b!1035734 () Bool)

(declare-fun b_free!20871 () Bool)

(declare-fun b_next!20871 () Bool)

(assert (=> b!1035734 (= b_free!20871 (not b_next!20871))))

(declare-fun tp!73745 () Bool)

(declare-fun b_and!33389 () Bool)

(assert (=> b!1035734 (= tp!73745 b_and!33389)))

(declare-fun b!1035730 () Bool)

(declare-fun e!585757 () Bool)

(declare-fun tp_is_empty!24591 () Bool)

(assert (=> b!1035730 (= e!585757 tp_is_empty!24591)))

(declare-fun b!1035732 () Bool)

(declare-fun e!585760 () Bool)

(declare-datatypes ((V!37661 0))(
  ( (V!37662 (val!12346 Int)) )
))
(declare-datatypes ((ValueCell!11592 0))(
  ( (ValueCellFull!11592 (v!14927 V!37661)) (EmptyCell!11592) )
))
(declare-datatypes ((array!65262 0))(
  ( (array!65263 (arr!31413 (Array (_ BitVec 32) (_ BitVec 64))) (size!31942 (_ BitVec 32))) )
))
(declare-datatypes ((array!65264 0))(
  ( (array!65265 (arr!31414 (Array (_ BitVec 32) ValueCell!11592)) (size!31943 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5778 0))(
  ( (LongMapFixedSize!5779 (defaultEntry!6267 Int) (mask!30159 (_ BitVec 32)) (extraKeys!5997 (_ BitVec 32)) (zeroValue!6101 V!37661) (minValue!6103 V!37661) (_size!2944 (_ BitVec 32)) (_keys!11452 array!65262) (_values!6290 array!65264) (_vacant!2944 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5778)

(declare-datatypes ((List!22032 0))(
  ( (Nil!22029) (Cons!22028 (h!23230 (_ BitVec 64)) (t!31242 List!22032)) )
))
(declare-fun arrayNoDuplicates!0 (array!65262 (_ BitVec 32) List!22032) Bool)

(assert (=> b!1035732 (= e!585760 (not (arrayNoDuplicates!0 (_keys!11452 thiss!1427) #b00000000000000000000000000000000 Nil!22029)))))

(declare-fun b!1035733 () Bool)

(declare-fun res!691574 () Bool)

(assert (=> b!1035733 (=> (not res!691574) (not e!585760))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035733 (= res!691574 (validMask!0 (mask!30159 thiss!1427)))))

(declare-fun mapIsEmpty!38400 () Bool)

(declare-fun mapRes!38400 () Bool)

(assert (=> mapIsEmpty!38400 mapRes!38400))

(declare-fun e!585761 () Bool)

(declare-fun e!585759 () Bool)

(declare-fun array_inv!24127 (array!65262) Bool)

(declare-fun array_inv!24128 (array!65264) Bool)

(assert (=> b!1035734 (= e!585761 (and tp!73745 tp_is_empty!24591 (array_inv!24127 (_keys!11452 thiss!1427)) (array_inv!24128 (_values!6290 thiss!1427)) e!585759))))

(declare-fun mapNonEmpty!38400 () Bool)

(declare-fun tp!73744 () Bool)

(assert (=> mapNonEmpty!38400 (= mapRes!38400 (and tp!73744 e!585757))))

(declare-fun mapValue!38400 () ValueCell!11592)

(declare-fun mapRest!38400 () (Array (_ BitVec 32) ValueCell!11592))

(declare-fun mapKey!38400 () (_ BitVec 32))

(assert (=> mapNonEmpty!38400 (= (arr!31414 (_values!6290 thiss!1427)) (store mapRest!38400 mapKey!38400 mapValue!38400))))

(declare-fun b!1035731 () Bool)

(declare-fun e!585758 () Bool)

(assert (=> b!1035731 (= e!585758 tp_is_empty!24591)))

(declare-fun res!691577 () Bool)

(assert (=> start!90594 (=> (not res!691577) (not e!585760))))

(declare-fun valid!2129 (LongMapFixedSize!5778) Bool)

(assert (=> start!90594 (= res!691577 (valid!2129 thiss!1427))))

(assert (=> start!90594 e!585760))

(assert (=> start!90594 e!585761))

(assert (=> start!90594 true))

(declare-fun b!1035735 () Bool)

(assert (=> b!1035735 (= e!585759 (and e!585758 mapRes!38400))))

(declare-fun condMapEmpty!38400 () Bool)

(declare-fun mapDefault!38400 () ValueCell!11592)

(assert (=> b!1035735 (= condMapEmpty!38400 (= (arr!31414 (_values!6290 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11592)) mapDefault!38400)))))

(declare-fun b!1035736 () Bool)

(declare-fun res!691578 () Bool)

(assert (=> b!1035736 (=> (not res!691578) (not e!585760))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65262 (_ BitVec 32)) Bool)

(assert (=> b!1035736 (= res!691578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11452 thiss!1427) (mask!30159 thiss!1427)))))

(declare-fun b!1035737 () Bool)

(declare-fun res!691575 () Bool)

(assert (=> b!1035737 (=> (not res!691575) (not e!585760))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035737 (= res!691575 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1035738 () Bool)

(declare-fun res!691576 () Bool)

(assert (=> b!1035738 (=> (not res!691576) (not e!585760))))

(assert (=> b!1035738 (= res!691576 (and (= (size!31943 (_values!6290 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30159 thiss!1427))) (= (size!31942 (_keys!11452 thiss!1427)) (size!31943 (_values!6290 thiss!1427))) (bvsge (mask!30159 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5997 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5997 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5997 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5997 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5997 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5997 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5997 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!90594 res!691577) b!1035737))

(assert (= (and b!1035737 res!691575) b!1035733))

(assert (= (and b!1035733 res!691574) b!1035738))

(assert (= (and b!1035738 res!691576) b!1035736))

(assert (= (and b!1035736 res!691578) b!1035732))

(assert (= (and b!1035735 condMapEmpty!38400) mapIsEmpty!38400))

(assert (= (and b!1035735 (not condMapEmpty!38400)) mapNonEmpty!38400))

(get-info :version)

(assert (= (and mapNonEmpty!38400 ((_ is ValueCellFull!11592) mapValue!38400)) b!1035730))

(assert (= (and b!1035735 ((_ is ValueCellFull!11592) mapDefault!38400)) b!1035731))

(assert (= b!1035734 b!1035735))

(assert (= start!90594 b!1035734))

(declare-fun m!955637 () Bool)

(assert (=> b!1035733 m!955637))

(declare-fun m!955639 () Bool)

(assert (=> b!1035736 m!955639))

(declare-fun m!955641 () Bool)

(assert (=> b!1035734 m!955641))

(declare-fun m!955643 () Bool)

(assert (=> b!1035734 m!955643))

(declare-fun m!955645 () Bool)

(assert (=> b!1035732 m!955645))

(declare-fun m!955647 () Bool)

(assert (=> mapNonEmpty!38400 m!955647))

(declare-fun m!955649 () Bool)

(assert (=> start!90594 m!955649))

(check-sat (not mapNonEmpty!38400) (not b_next!20871) (not b!1035734) tp_is_empty!24591 (not b!1035736) (not start!90594) (not b!1035732) b_and!33389 (not b!1035733))
(check-sat b_and!33389 (not b_next!20871))
(get-model)

(declare-fun d!124499 () Bool)

(declare-fun res!691600 () Bool)

(declare-fun e!585782 () Bool)

(assert (=> d!124499 (=> (not res!691600) (not e!585782))))

(declare-fun simpleValid!412 (LongMapFixedSize!5778) Bool)

(assert (=> d!124499 (= res!691600 (simpleValid!412 thiss!1427))))

(assert (=> d!124499 (= (valid!2129 thiss!1427) e!585782)))

(declare-fun b!1035772 () Bool)

(declare-fun res!691601 () Bool)

(assert (=> b!1035772 (=> (not res!691601) (not e!585782))))

(declare-fun arrayCountValidKeys!0 (array!65262 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1035772 (= res!691601 (= (arrayCountValidKeys!0 (_keys!11452 thiss!1427) #b00000000000000000000000000000000 (size!31942 (_keys!11452 thiss!1427))) (_size!2944 thiss!1427)))))

(declare-fun b!1035773 () Bool)

(declare-fun res!691602 () Bool)

(assert (=> b!1035773 (=> (not res!691602) (not e!585782))))

(assert (=> b!1035773 (= res!691602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11452 thiss!1427) (mask!30159 thiss!1427)))))

(declare-fun b!1035774 () Bool)

(assert (=> b!1035774 (= e!585782 (arrayNoDuplicates!0 (_keys!11452 thiss!1427) #b00000000000000000000000000000000 Nil!22029))))

(assert (= (and d!124499 res!691600) b!1035772))

(assert (= (and b!1035772 res!691601) b!1035773))

(assert (= (and b!1035773 res!691602) b!1035774))

(declare-fun m!955665 () Bool)

(assert (=> d!124499 m!955665))

(declare-fun m!955667 () Bool)

(assert (=> b!1035772 m!955667))

(assert (=> b!1035773 m!955639))

(assert (=> b!1035774 m!955645))

(assert (=> start!90594 d!124499))

(declare-fun d!124501 () Bool)

(assert (=> d!124501 (= (validMask!0 (mask!30159 thiss!1427)) (and (or (= (mask!30159 thiss!1427) #b00000000000000000000000000000111) (= (mask!30159 thiss!1427) #b00000000000000000000000000001111) (= (mask!30159 thiss!1427) #b00000000000000000000000000011111) (= (mask!30159 thiss!1427) #b00000000000000000000000000111111) (= (mask!30159 thiss!1427) #b00000000000000000000000001111111) (= (mask!30159 thiss!1427) #b00000000000000000000000011111111) (= (mask!30159 thiss!1427) #b00000000000000000000000111111111) (= (mask!30159 thiss!1427) #b00000000000000000000001111111111) (= (mask!30159 thiss!1427) #b00000000000000000000011111111111) (= (mask!30159 thiss!1427) #b00000000000000000000111111111111) (= (mask!30159 thiss!1427) #b00000000000000000001111111111111) (= (mask!30159 thiss!1427) #b00000000000000000011111111111111) (= (mask!30159 thiss!1427) #b00000000000000000111111111111111) (= (mask!30159 thiss!1427) #b00000000000000001111111111111111) (= (mask!30159 thiss!1427) #b00000000000000011111111111111111) (= (mask!30159 thiss!1427) #b00000000000000111111111111111111) (= (mask!30159 thiss!1427) #b00000000000001111111111111111111) (= (mask!30159 thiss!1427) #b00000000000011111111111111111111) (= (mask!30159 thiss!1427) #b00000000000111111111111111111111) (= (mask!30159 thiss!1427) #b00000000001111111111111111111111) (= (mask!30159 thiss!1427) #b00000000011111111111111111111111) (= (mask!30159 thiss!1427) #b00000000111111111111111111111111) (= (mask!30159 thiss!1427) #b00000001111111111111111111111111) (= (mask!30159 thiss!1427) #b00000011111111111111111111111111) (= (mask!30159 thiss!1427) #b00000111111111111111111111111111) (= (mask!30159 thiss!1427) #b00001111111111111111111111111111) (= (mask!30159 thiss!1427) #b00011111111111111111111111111111) (= (mask!30159 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30159 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1035733 d!124501))

(declare-fun d!124503 () Bool)

(declare-fun res!691608 () Bool)

(declare-fun e!585789 () Bool)

(assert (=> d!124503 (=> res!691608 e!585789)))

(assert (=> d!124503 (= res!691608 (bvsge #b00000000000000000000000000000000 (size!31942 (_keys!11452 thiss!1427))))))

(assert (=> d!124503 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11452 thiss!1427) (mask!30159 thiss!1427)) e!585789)))

(declare-fun b!1035783 () Bool)

(declare-fun e!585791 () Bool)

(assert (=> b!1035783 (= e!585789 e!585791)))

(declare-fun c!104690 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1035783 (= c!104690 (validKeyInArray!0 (select (arr!31413 (_keys!11452 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1035784 () Bool)

(declare-fun e!585790 () Bool)

(declare-fun call!43798 () Bool)

(assert (=> b!1035784 (= e!585790 call!43798)))

(declare-fun bm!43795 () Bool)

(assert (=> bm!43795 (= call!43798 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11452 thiss!1427) (mask!30159 thiss!1427)))))

(declare-fun b!1035785 () Bool)

(assert (=> b!1035785 (= e!585791 call!43798)))

(declare-fun b!1035786 () Bool)

(assert (=> b!1035786 (= e!585791 e!585790)))

(declare-fun lt!456750 () (_ BitVec 64))

(assert (=> b!1035786 (= lt!456750 (select (arr!31413 (_keys!11452 thiss!1427)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33869 0))(
  ( (Unit!33870) )
))
(declare-fun lt!456751 () Unit!33869)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65262 (_ BitVec 64) (_ BitVec 32)) Unit!33869)

(assert (=> b!1035786 (= lt!456751 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11452 thiss!1427) lt!456750 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65262 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1035786 (arrayContainsKey!0 (_keys!11452 thiss!1427) lt!456750 #b00000000000000000000000000000000)))

(declare-fun lt!456749 () Unit!33869)

(assert (=> b!1035786 (= lt!456749 lt!456751)))

(declare-fun res!691607 () Bool)

(declare-datatypes ((SeekEntryResult!9740 0))(
  ( (MissingZero!9740 (index!41330 (_ BitVec 32))) (Found!9740 (index!41331 (_ BitVec 32))) (Intermediate!9740 (undefined!10552 Bool) (index!41332 (_ BitVec 32)) (x!92420 (_ BitVec 32))) (Undefined!9740) (MissingVacant!9740 (index!41333 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65262 (_ BitVec 32)) SeekEntryResult!9740)

(assert (=> b!1035786 (= res!691607 (= (seekEntryOrOpen!0 (select (arr!31413 (_keys!11452 thiss!1427)) #b00000000000000000000000000000000) (_keys!11452 thiss!1427) (mask!30159 thiss!1427)) (Found!9740 #b00000000000000000000000000000000)))))

(assert (=> b!1035786 (=> (not res!691607) (not e!585790))))

(assert (= (and d!124503 (not res!691608)) b!1035783))

(assert (= (and b!1035783 c!104690) b!1035786))

(assert (= (and b!1035783 (not c!104690)) b!1035785))

(assert (= (and b!1035786 res!691607) b!1035784))

(assert (= (or b!1035784 b!1035785) bm!43795))

(declare-fun m!955669 () Bool)

(assert (=> b!1035783 m!955669))

(assert (=> b!1035783 m!955669))

(declare-fun m!955671 () Bool)

(assert (=> b!1035783 m!955671))

(declare-fun m!955673 () Bool)

(assert (=> bm!43795 m!955673))

(assert (=> b!1035786 m!955669))

(declare-fun m!955675 () Bool)

(assert (=> b!1035786 m!955675))

(declare-fun m!955677 () Bool)

(assert (=> b!1035786 m!955677))

(assert (=> b!1035786 m!955669))

(declare-fun m!955679 () Bool)

(assert (=> b!1035786 m!955679))

(assert (=> b!1035736 d!124503))

(declare-fun b!1035797 () Bool)

(declare-fun e!585800 () Bool)

(declare-fun call!43801 () Bool)

(assert (=> b!1035797 (= e!585800 call!43801)))

(declare-fun d!124505 () Bool)

(declare-fun res!691615 () Bool)

(declare-fun e!585803 () Bool)

(assert (=> d!124505 (=> res!691615 e!585803)))

(assert (=> d!124505 (= res!691615 (bvsge #b00000000000000000000000000000000 (size!31942 (_keys!11452 thiss!1427))))))

(assert (=> d!124505 (= (arrayNoDuplicates!0 (_keys!11452 thiss!1427) #b00000000000000000000000000000000 Nil!22029) e!585803)))

(declare-fun b!1035798 () Bool)

(declare-fun e!585801 () Bool)

(assert (=> b!1035798 (= e!585801 e!585800)))

(declare-fun c!104693 () Bool)

(assert (=> b!1035798 (= c!104693 (validKeyInArray!0 (select (arr!31413 (_keys!11452 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1035799 () Bool)

(assert (=> b!1035799 (= e!585800 call!43801)))

(declare-fun b!1035800 () Bool)

(assert (=> b!1035800 (= e!585803 e!585801)))

(declare-fun res!691617 () Bool)

(assert (=> b!1035800 (=> (not res!691617) (not e!585801))))

(declare-fun e!585802 () Bool)

(assert (=> b!1035800 (= res!691617 (not e!585802))))

(declare-fun res!691616 () Bool)

(assert (=> b!1035800 (=> (not res!691616) (not e!585802))))

(assert (=> b!1035800 (= res!691616 (validKeyInArray!0 (select (arr!31413 (_keys!11452 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1035801 () Bool)

(declare-fun contains!6043 (List!22032 (_ BitVec 64)) Bool)

(assert (=> b!1035801 (= e!585802 (contains!6043 Nil!22029 (select (arr!31413 (_keys!11452 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43798 () Bool)

(assert (=> bm!43798 (= call!43801 (arrayNoDuplicates!0 (_keys!11452 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104693 (Cons!22028 (select (arr!31413 (_keys!11452 thiss!1427)) #b00000000000000000000000000000000) Nil!22029) Nil!22029)))))

(assert (= (and d!124505 (not res!691615)) b!1035800))

(assert (= (and b!1035800 res!691616) b!1035801))

(assert (= (and b!1035800 res!691617) b!1035798))

(assert (= (and b!1035798 c!104693) b!1035799))

(assert (= (and b!1035798 (not c!104693)) b!1035797))

(assert (= (or b!1035799 b!1035797) bm!43798))

(assert (=> b!1035798 m!955669))

(assert (=> b!1035798 m!955669))

(assert (=> b!1035798 m!955671))

(assert (=> b!1035800 m!955669))

(assert (=> b!1035800 m!955669))

(assert (=> b!1035800 m!955671))

(assert (=> b!1035801 m!955669))

(assert (=> b!1035801 m!955669))

(declare-fun m!955681 () Bool)

(assert (=> b!1035801 m!955681))

(assert (=> bm!43798 m!955669))

(declare-fun m!955683 () Bool)

(assert (=> bm!43798 m!955683))

(assert (=> b!1035732 d!124505))

(declare-fun d!124507 () Bool)

(assert (=> d!124507 (= (array_inv!24127 (_keys!11452 thiss!1427)) (bvsge (size!31942 (_keys!11452 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1035734 d!124507))

(declare-fun d!124509 () Bool)

(assert (=> d!124509 (= (array_inv!24128 (_values!6290 thiss!1427)) (bvsge (size!31943 (_values!6290 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1035734 d!124509))

(declare-fun b!1035808 () Bool)

(declare-fun e!585809 () Bool)

(assert (=> b!1035808 (= e!585809 tp_is_empty!24591)))

(declare-fun mapNonEmpty!38406 () Bool)

(declare-fun mapRes!38406 () Bool)

(declare-fun tp!73754 () Bool)

(assert (=> mapNonEmpty!38406 (= mapRes!38406 (and tp!73754 e!585809))))

(declare-fun mapRest!38406 () (Array (_ BitVec 32) ValueCell!11592))

(declare-fun mapValue!38406 () ValueCell!11592)

(declare-fun mapKey!38406 () (_ BitVec 32))

(assert (=> mapNonEmpty!38406 (= mapRest!38400 (store mapRest!38406 mapKey!38406 mapValue!38406))))

(declare-fun mapIsEmpty!38406 () Bool)

(assert (=> mapIsEmpty!38406 mapRes!38406))

(declare-fun condMapEmpty!38406 () Bool)

(declare-fun mapDefault!38406 () ValueCell!11592)

(assert (=> mapNonEmpty!38400 (= condMapEmpty!38406 (= mapRest!38400 ((as const (Array (_ BitVec 32) ValueCell!11592)) mapDefault!38406)))))

(declare-fun e!585808 () Bool)

(assert (=> mapNonEmpty!38400 (= tp!73744 (and e!585808 mapRes!38406))))

(declare-fun b!1035809 () Bool)

(assert (=> b!1035809 (= e!585808 tp_is_empty!24591)))

(assert (= (and mapNonEmpty!38400 condMapEmpty!38406) mapIsEmpty!38406))

(assert (= (and mapNonEmpty!38400 (not condMapEmpty!38406)) mapNonEmpty!38406))

(assert (= (and mapNonEmpty!38406 ((_ is ValueCellFull!11592) mapValue!38406)) b!1035808))

(assert (= (and mapNonEmpty!38400 ((_ is ValueCellFull!11592) mapDefault!38406)) b!1035809))

(declare-fun m!955685 () Bool)

(assert (=> mapNonEmpty!38406 m!955685))

(check-sat (not b!1035798) (not b!1035773) (not b_next!20871) (not bm!43795) (not b!1035786) tp_is_empty!24591 (not bm!43798) (not b!1035772) b_and!33389 (not d!124499) (not b!1035783) (not b!1035800) (not b!1035774) (not b!1035801) (not mapNonEmpty!38406))
(check-sat b_and!33389 (not b_next!20871))
