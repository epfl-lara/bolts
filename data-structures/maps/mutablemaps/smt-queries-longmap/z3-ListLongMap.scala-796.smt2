; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19080 () Bool)

(assert start!19080)

(declare-fun b!187785 () Bool)

(declare-fun b_free!4617 () Bool)

(declare-fun b_next!4617 () Bool)

(assert (=> b!187785 (= b_free!4617 (not b_next!4617))))

(declare-fun tp!16668 () Bool)

(declare-fun b_and!11259 () Bool)

(assert (=> b!187785 (= tp!16668 b_and!11259)))

(declare-fun b!187775 () Bool)

(declare-datatypes ((Unit!5658 0))(
  ( (Unit!5659) )
))
(declare-fun e!123594 () Unit!5658)

(declare-fun Unit!5660 () Unit!5658)

(assert (=> b!187775 (= e!123594 Unit!5660)))

(declare-fun lt!92955 () Unit!5658)

(declare-datatypes ((V!5499 0))(
  ( (V!5500 (val!2239 Int)) )
))
(declare-datatypes ((ValueCell!1851 0))(
  ( (ValueCellFull!1851 (v!4151 V!5499)) (EmptyCell!1851) )
))
(declare-datatypes ((array!7996 0))(
  ( (array!7997 (arr!3772 (Array (_ BitVec 32) (_ BitVec 64))) (size!4091 (_ BitVec 32))) )
))
(declare-datatypes ((array!7998 0))(
  ( (array!7999 (arr!3773 (Array (_ BitVec 32) ValueCell!1851)) (size!4092 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2610 0))(
  ( (LongMapFixedSize!2611 (defaultEntry!3831 Int) (mask!8985 (_ BitVec 32)) (extraKeys!3568 (_ BitVec 32)) (zeroValue!3672 V!5499) (minValue!3672 V!5499) (_size!1354 (_ BitVec 32)) (_keys!5786 array!7996) (_values!3814 array!7998) (_vacant!1354 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2610)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!154 (array!7996 array!7998 (_ BitVec 32) (_ BitVec 32) V!5499 V!5499 (_ BitVec 64) Int) Unit!5658)

(assert (=> b!187775 (= lt!92955 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!154 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) key!828 (defaultEntry!3831 thiss!1248)))))

(assert (=> b!187775 false))

(declare-fun b!187776 () Bool)

(declare-fun e!123599 () Bool)

(declare-fun e!123601 () Bool)

(assert (=> b!187776 (= e!123599 e!123601)))

(declare-fun res!88792 () Bool)

(assert (=> b!187776 (=> (not res!88792) (not e!123601))))

(declare-datatypes ((SeekEntryResult!660 0))(
  ( (MissingZero!660 (index!4810 (_ BitVec 32))) (Found!660 (index!4811 (_ BitVec 32))) (Intermediate!660 (undefined!1472 Bool) (index!4812 (_ BitVec 32)) (x!20320 (_ BitVec 32))) (Undefined!660) (MissingVacant!660 (index!4813 (_ BitVec 32))) )
))
(declare-fun lt!92956 () SeekEntryResult!660)

(get-info :version)

(assert (=> b!187776 (= res!88792 (and (not ((_ is Undefined!660) lt!92956)) (not ((_ is MissingVacant!660) lt!92956)) (not ((_ is MissingZero!660) lt!92956)) ((_ is Found!660) lt!92956)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7996 (_ BitVec 32)) SeekEntryResult!660)

(assert (=> b!187776 (= lt!92956 (seekEntryOrOpen!0 key!828 (_keys!5786 thiss!1248) (mask!8985 thiss!1248)))))

(declare-fun res!88793 () Bool)

(assert (=> start!19080 (=> (not res!88793) (not e!123599))))

(declare-fun valid!1066 (LongMapFixedSize!2610) Bool)

(assert (=> start!19080 (= res!88793 (valid!1066 thiss!1248))))

(assert (=> start!19080 e!123599))

(declare-fun e!123595 () Bool)

(assert (=> start!19080 e!123595))

(assert (=> start!19080 true))

(declare-fun b!187777 () Bool)

(declare-fun e!123603 () Bool)

(declare-fun tp_is_empty!4389 () Bool)

(assert (=> b!187777 (= e!123603 tp_is_empty!4389)))

(declare-fun e!123597 () Bool)

(declare-fun b!187778 () Bool)

(assert (=> b!187778 (= e!123597 (= (select (arr!3772 (_keys!5786 thiss!1248)) (index!4811 lt!92956)) key!828))))

(declare-fun b!187779 () Bool)

(declare-fun e!123596 () Bool)

(assert (=> b!187779 (= e!123601 e!123596)))

(declare-fun res!88794 () Bool)

(assert (=> b!187779 (=> (not res!88794) (not e!123596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!187779 (= res!88794 (validMask!0 (mask!8985 thiss!1248)))))

(declare-fun lt!92954 () Unit!5658)

(assert (=> b!187779 (= lt!92954 e!123594)))

(declare-fun c!33717 () Bool)

(declare-datatypes ((tuple2!3478 0))(
  ( (tuple2!3479 (_1!1749 (_ BitVec 64)) (_2!1749 V!5499)) )
))
(declare-datatypes ((List!2405 0))(
  ( (Nil!2402) (Cons!2401 (h!3037 tuple2!3478) (t!7307 List!2405)) )
))
(declare-datatypes ((ListLongMap!2409 0))(
  ( (ListLongMap!2410 (toList!1220 List!2405)) )
))
(declare-fun contains!1316 (ListLongMap!2409 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!863 (array!7996 array!7998 (_ BitVec 32) (_ BitVec 32) V!5499 V!5499 (_ BitVec 32) Int) ListLongMap!2409)

(assert (=> b!187779 (= c!33717 (contains!1316 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248)) key!828))))

(declare-fun mapIsEmpty!7563 () Bool)

(declare-fun mapRes!7563 () Bool)

(assert (=> mapIsEmpty!7563 mapRes!7563))

(declare-fun mapNonEmpty!7563 () Bool)

(declare-fun tp!16667 () Bool)

(assert (=> mapNonEmpty!7563 (= mapRes!7563 (and tp!16667 e!123603))))

(declare-fun mapKey!7563 () (_ BitVec 32))

(declare-fun mapRest!7563 () (Array (_ BitVec 32) ValueCell!1851))

(declare-fun mapValue!7563 () ValueCell!1851)

(assert (=> mapNonEmpty!7563 (= (arr!3773 (_values!3814 thiss!1248)) (store mapRest!7563 mapKey!7563 mapValue!7563))))

(declare-fun b!187780 () Bool)

(declare-fun e!123600 () Bool)

(assert (=> b!187780 (= e!123600 tp_is_empty!4389)))

(declare-fun b!187781 () Bool)

(declare-fun res!88796 () Bool)

(assert (=> b!187781 (=> (not res!88796) (not e!123599))))

(assert (=> b!187781 (= res!88796 (not (= key!828 (bvneg key!828))))))

(declare-fun b!187782 () Bool)

(declare-fun e!123602 () Bool)

(assert (=> b!187782 (= e!123602 (and e!123600 mapRes!7563))))

(declare-fun condMapEmpty!7563 () Bool)

(declare-fun mapDefault!7563 () ValueCell!1851)

(assert (=> b!187782 (= condMapEmpty!7563 (= (arr!3773 (_values!3814 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1851)) mapDefault!7563)))))

(declare-fun b!187783 () Bool)

(declare-fun lt!92953 () Unit!5658)

(assert (=> b!187783 (= e!123594 lt!92953)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!153 (array!7996 array!7998 (_ BitVec 32) (_ BitVec 32) V!5499 V!5499 (_ BitVec 64) Int) Unit!5658)

(assert (=> b!187783 (= lt!92953 (lemmaInListMapThenSeekEntryOrOpenFindsIt!153 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) key!828 (defaultEntry!3831 thiss!1248)))))

(declare-fun res!88795 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!187783 (= res!88795 (inRange!0 (index!4811 lt!92956) (mask!8985 thiss!1248)))))

(assert (=> b!187783 (=> (not res!88795) (not e!123597))))

(assert (=> b!187783 e!123597))

(declare-fun b!187784 () Bool)

(assert (=> b!187784 (= e!123596 (and (= (size!4092 (_values!3814 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8985 thiss!1248))) (= (size!4091 (_keys!5786 thiss!1248)) (size!4092 (_values!3814 thiss!1248))) (bvsge (mask!8985 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3568 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3568 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun array_inv!2433 (array!7996) Bool)

(declare-fun array_inv!2434 (array!7998) Bool)

(assert (=> b!187785 (= e!123595 (and tp!16668 tp_is_empty!4389 (array_inv!2433 (_keys!5786 thiss!1248)) (array_inv!2434 (_values!3814 thiss!1248)) e!123602))))

(assert (= (and start!19080 res!88793) b!187781))

(assert (= (and b!187781 res!88796) b!187776))

(assert (= (and b!187776 res!88792) b!187779))

(assert (= (and b!187779 c!33717) b!187783))

(assert (= (and b!187779 (not c!33717)) b!187775))

(assert (= (and b!187783 res!88795) b!187778))

(assert (= (and b!187779 res!88794) b!187784))

(assert (= (and b!187782 condMapEmpty!7563) mapIsEmpty!7563))

(assert (= (and b!187782 (not condMapEmpty!7563)) mapNonEmpty!7563))

(assert (= (and mapNonEmpty!7563 ((_ is ValueCellFull!1851) mapValue!7563)) b!187777))

(assert (= (and b!187782 ((_ is ValueCellFull!1851) mapDefault!7563)) b!187780))

(assert (= b!187785 b!187782))

(assert (= start!19080 b!187785))

(declare-fun m!214555 () Bool)

(assert (=> b!187775 m!214555))

(declare-fun m!214557 () Bool)

(assert (=> b!187785 m!214557))

(declare-fun m!214559 () Bool)

(assert (=> b!187785 m!214559))

(declare-fun m!214561 () Bool)

(assert (=> mapNonEmpty!7563 m!214561))

(declare-fun m!214563 () Bool)

(assert (=> b!187776 m!214563))

(declare-fun m!214565 () Bool)

(assert (=> b!187779 m!214565))

(declare-fun m!214567 () Bool)

(assert (=> b!187779 m!214567))

(assert (=> b!187779 m!214567))

(declare-fun m!214569 () Bool)

(assert (=> b!187779 m!214569))

(declare-fun m!214571 () Bool)

(assert (=> b!187778 m!214571))

(declare-fun m!214573 () Bool)

(assert (=> b!187783 m!214573))

(declare-fun m!214575 () Bool)

(assert (=> b!187783 m!214575))

(declare-fun m!214577 () Bool)

(assert (=> start!19080 m!214577))

(check-sat (not b!187783) (not b!187785) (not b!187776) (not b_next!4617) tp_is_empty!4389 (not start!19080) (not b!187779) b_and!11259 (not b!187775) (not mapNonEmpty!7563))
(check-sat b_and!11259 (not b_next!4617))
(get-model)

(declare-fun d!55421 () Bool)

(assert (=> d!55421 (= (array_inv!2433 (_keys!5786 thiss!1248)) (bvsge (size!4091 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!187785 d!55421))

(declare-fun d!55423 () Bool)

(assert (=> d!55423 (= (array_inv!2434 (_values!3814 thiss!1248)) (bvsge (size!4092 (_values!3814 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!187785 d!55423))

(declare-fun b!187831 () Bool)

(declare-fun c!33728 () Bool)

(declare-fun lt!92976 () (_ BitVec 64))

(assert (=> b!187831 (= c!33728 (= lt!92976 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!123642 () SeekEntryResult!660)

(declare-fun e!123640 () SeekEntryResult!660)

(assert (=> b!187831 (= e!123642 e!123640)))

(declare-fun b!187832 () Bool)

(declare-fun lt!92975 () SeekEntryResult!660)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7996 (_ BitVec 32)) SeekEntryResult!660)

(assert (=> b!187832 (= e!123640 (seekKeyOrZeroReturnVacant!0 (x!20320 lt!92975) (index!4812 lt!92975) (index!4812 lt!92975) key!828 (_keys!5786 thiss!1248) (mask!8985 thiss!1248)))))

(declare-fun b!187833 () Bool)

(declare-fun e!123641 () SeekEntryResult!660)

(assert (=> b!187833 (= e!123641 e!123642)))

(assert (=> b!187833 (= lt!92976 (select (arr!3772 (_keys!5786 thiss!1248)) (index!4812 lt!92975)))))

(declare-fun c!33729 () Bool)

(assert (=> b!187833 (= c!33729 (= lt!92976 key!828))))

(declare-fun b!187834 () Bool)

(assert (=> b!187834 (= e!123642 (Found!660 (index!4812 lt!92975)))))

(declare-fun b!187835 () Bool)

(assert (=> b!187835 (= e!123641 Undefined!660)))

(declare-fun d!55425 () Bool)

(declare-fun lt!92977 () SeekEntryResult!660)

(assert (=> d!55425 (and (or ((_ is Undefined!660) lt!92977) (not ((_ is Found!660) lt!92977)) (and (bvsge (index!4811 lt!92977) #b00000000000000000000000000000000) (bvslt (index!4811 lt!92977) (size!4091 (_keys!5786 thiss!1248))))) (or ((_ is Undefined!660) lt!92977) ((_ is Found!660) lt!92977) (not ((_ is MissingZero!660) lt!92977)) (and (bvsge (index!4810 lt!92977) #b00000000000000000000000000000000) (bvslt (index!4810 lt!92977) (size!4091 (_keys!5786 thiss!1248))))) (or ((_ is Undefined!660) lt!92977) ((_ is Found!660) lt!92977) ((_ is MissingZero!660) lt!92977) (not ((_ is MissingVacant!660) lt!92977)) (and (bvsge (index!4813 lt!92977) #b00000000000000000000000000000000) (bvslt (index!4813 lt!92977) (size!4091 (_keys!5786 thiss!1248))))) (or ((_ is Undefined!660) lt!92977) (ite ((_ is Found!660) lt!92977) (= (select (arr!3772 (_keys!5786 thiss!1248)) (index!4811 lt!92977)) key!828) (ite ((_ is MissingZero!660) lt!92977) (= (select (arr!3772 (_keys!5786 thiss!1248)) (index!4810 lt!92977)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!660) lt!92977) (= (select (arr!3772 (_keys!5786 thiss!1248)) (index!4813 lt!92977)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!55425 (= lt!92977 e!123641)))

(declare-fun c!33727 () Bool)

(assert (=> d!55425 (= c!33727 (and ((_ is Intermediate!660) lt!92975) (undefined!1472 lt!92975)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7996 (_ BitVec 32)) SeekEntryResult!660)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!55425 (= lt!92975 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8985 thiss!1248)) key!828 (_keys!5786 thiss!1248) (mask!8985 thiss!1248)))))

(assert (=> d!55425 (validMask!0 (mask!8985 thiss!1248))))

(assert (=> d!55425 (= (seekEntryOrOpen!0 key!828 (_keys!5786 thiss!1248) (mask!8985 thiss!1248)) lt!92977)))

(declare-fun b!187836 () Bool)

(assert (=> b!187836 (= e!123640 (MissingZero!660 (index!4812 lt!92975)))))

(assert (= (and d!55425 c!33727) b!187835))

(assert (= (and d!55425 (not c!33727)) b!187833))

(assert (= (and b!187833 c!33729) b!187834))

(assert (= (and b!187833 (not c!33729)) b!187831))

(assert (= (and b!187831 c!33728) b!187836))

(assert (= (and b!187831 (not c!33728)) b!187832))

(declare-fun m!214603 () Bool)

(assert (=> b!187832 m!214603))

(declare-fun m!214605 () Bool)

(assert (=> b!187833 m!214605))

(declare-fun m!214607 () Bool)

(assert (=> d!55425 m!214607))

(declare-fun m!214609 () Bool)

(assert (=> d!55425 m!214609))

(declare-fun m!214611 () Bool)

(assert (=> d!55425 m!214611))

(assert (=> d!55425 m!214607))

(declare-fun m!214613 () Bool)

(assert (=> d!55425 m!214613))

(declare-fun m!214615 () Bool)

(assert (=> d!55425 m!214615))

(assert (=> d!55425 m!214565))

(assert (=> b!187776 d!55425))

(declare-fun b!187853 () Bool)

(declare-fun res!88820 () Bool)

(declare-fun e!123652 () Bool)

(assert (=> b!187853 (=> (not res!88820) (not e!123652))))

(declare-fun lt!92982 () SeekEntryResult!660)

(assert (=> b!187853 (= res!88820 (= (select (arr!3772 (_keys!5786 thiss!1248)) (index!4813 lt!92982)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!187853 (and (bvsge (index!4813 lt!92982) #b00000000000000000000000000000000) (bvslt (index!4813 lt!92982) (size!4091 (_keys!5786 thiss!1248))))))

(declare-fun b!187854 () Bool)

(declare-fun e!123653 () Bool)

(declare-fun e!123654 () Bool)

(assert (=> b!187854 (= e!123653 e!123654)))

(declare-fun c!33735 () Bool)

(assert (=> b!187854 (= c!33735 ((_ is MissingVacant!660) lt!92982))))

(declare-fun d!55427 () Bool)

(assert (=> d!55427 e!123653))

(declare-fun c!33734 () Bool)

(assert (=> d!55427 (= c!33734 ((_ is MissingZero!660) lt!92982))))

(assert (=> d!55427 (= lt!92982 (seekEntryOrOpen!0 key!828 (_keys!5786 thiss!1248) (mask!8985 thiss!1248)))))

(declare-fun lt!92983 () Unit!5658)

(declare-fun choose!1009 (array!7996 array!7998 (_ BitVec 32) (_ BitVec 32) V!5499 V!5499 (_ BitVec 64) Int) Unit!5658)

(assert (=> d!55427 (= lt!92983 (choose!1009 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) key!828 (defaultEntry!3831 thiss!1248)))))

(assert (=> d!55427 (validMask!0 (mask!8985 thiss!1248))))

(assert (=> d!55427 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!154 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) key!828 (defaultEntry!3831 thiss!1248)) lt!92983)))

(declare-fun b!187855 () Bool)

(declare-fun e!123651 () Bool)

(declare-fun call!18931 () Bool)

(assert (=> b!187855 (= e!123651 (not call!18931))))

(declare-fun b!187856 () Bool)

(assert (=> b!187856 (= e!123654 ((_ is Undefined!660) lt!92982))))

(declare-fun b!187857 () Bool)

(declare-fun res!88822 () Bool)

(assert (=> b!187857 (=> (not res!88822) (not e!123652))))

(declare-fun call!18932 () Bool)

(assert (=> b!187857 (= res!88822 call!18932)))

(assert (=> b!187857 (= e!123654 e!123652)))

(declare-fun b!187858 () Bool)

(assert (=> b!187858 (and (bvsge (index!4810 lt!92982) #b00000000000000000000000000000000) (bvslt (index!4810 lt!92982) (size!4091 (_keys!5786 thiss!1248))))))

(declare-fun res!88821 () Bool)

(assert (=> b!187858 (= res!88821 (= (select (arr!3772 (_keys!5786 thiss!1248)) (index!4810 lt!92982)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!187858 (=> (not res!88821) (not e!123651))))

(declare-fun b!187859 () Bool)

(assert (=> b!187859 (= e!123652 (not call!18931))))

(declare-fun b!187860 () Bool)

(assert (=> b!187860 (= e!123653 e!123651)))

(declare-fun res!88823 () Bool)

(assert (=> b!187860 (= res!88823 call!18932)))

(assert (=> b!187860 (=> (not res!88823) (not e!123651))))

(declare-fun bm!18928 () Bool)

(declare-fun arrayContainsKey!0 (array!7996 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!18928 (= call!18931 (arrayContainsKey!0 (_keys!5786 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun bm!18929 () Bool)

(assert (=> bm!18929 (= call!18932 (inRange!0 (ite c!33734 (index!4810 lt!92982) (index!4813 lt!92982)) (mask!8985 thiss!1248)))))

(assert (= (and d!55427 c!33734) b!187860))

(assert (= (and d!55427 (not c!33734)) b!187854))

(assert (= (and b!187860 res!88823) b!187858))

(assert (= (and b!187858 res!88821) b!187855))

(assert (= (and b!187854 c!33735) b!187857))

(assert (= (and b!187854 (not c!33735)) b!187856))

(assert (= (and b!187857 res!88822) b!187853))

(assert (= (and b!187853 res!88820) b!187859))

(assert (= (or b!187860 b!187857) bm!18929))

(assert (= (or b!187855 b!187859) bm!18928))

(declare-fun m!214617 () Bool)

(assert (=> bm!18928 m!214617))

(declare-fun m!214619 () Bool)

(assert (=> bm!18929 m!214619))

(declare-fun m!214621 () Bool)

(assert (=> b!187858 m!214621))

(declare-fun m!214623 () Bool)

(assert (=> b!187853 m!214623))

(assert (=> d!55427 m!214563))

(declare-fun m!214625 () Bool)

(assert (=> d!55427 m!214625))

(assert (=> d!55427 m!214565))

(assert (=> b!187775 d!55427))

(declare-fun d!55429 () Bool)

(declare-fun e!123657 () Bool)

(assert (=> d!55429 e!123657))

(declare-fun res!88828 () Bool)

(assert (=> d!55429 (=> (not res!88828) (not e!123657))))

(declare-fun lt!92988 () SeekEntryResult!660)

(assert (=> d!55429 (= res!88828 ((_ is Found!660) lt!92988))))

(assert (=> d!55429 (= lt!92988 (seekEntryOrOpen!0 key!828 (_keys!5786 thiss!1248) (mask!8985 thiss!1248)))))

(declare-fun lt!92989 () Unit!5658)

(declare-fun choose!1010 (array!7996 array!7998 (_ BitVec 32) (_ BitVec 32) V!5499 V!5499 (_ BitVec 64) Int) Unit!5658)

(assert (=> d!55429 (= lt!92989 (choose!1010 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) key!828 (defaultEntry!3831 thiss!1248)))))

(assert (=> d!55429 (validMask!0 (mask!8985 thiss!1248))))

(assert (=> d!55429 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!153 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) key!828 (defaultEntry!3831 thiss!1248)) lt!92989)))

(declare-fun b!187865 () Bool)

(declare-fun res!88829 () Bool)

(assert (=> b!187865 (=> (not res!88829) (not e!123657))))

(assert (=> b!187865 (= res!88829 (inRange!0 (index!4811 lt!92988) (mask!8985 thiss!1248)))))

(declare-fun b!187866 () Bool)

(assert (=> b!187866 (= e!123657 (= (select (arr!3772 (_keys!5786 thiss!1248)) (index!4811 lt!92988)) key!828))))

(assert (=> b!187866 (and (bvsge (index!4811 lt!92988) #b00000000000000000000000000000000) (bvslt (index!4811 lt!92988) (size!4091 (_keys!5786 thiss!1248))))))

(assert (= (and d!55429 res!88828) b!187865))

(assert (= (and b!187865 res!88829) b!187866))

(assert (=> d!55429 m!214563))

(declare-fun m!214627 () Bool)

(assert (=> d!55429 m!214627))

(assert (=> d!55429 m!214565))

(declare-fun m!214629 () Bool)

(assert (=> b!187865 m!214629))

(declare-fun m!214631 () Bool)

(assert (=> b!187866 m!214631))

(assert (=> b!187783 d!55429))

(declare-fun d!55431 () Bool)

(assert (=> d!55431 (= (inRange!0 (index!4811 lt!92956) (mask!8985 thiss!1248)) (and (bvsge (index!4811 lt!92956) #b00000000000000000000000000000000) (bvslt (index!4811 lt!92956) (bvadd (mask!8985 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!187783 d!55431))

(declare-fun d!55433 () Bool)

(declare-fun res!88836 () Bool)

(declare-fun e!123660 () Bool)

(assert (=> d!55433 (=> (not res!88836) (not e!123660))))

(declare-fun simpleValid!187 (LongMapFixedSize!2610) Bool)

(assert (=> d!55433 (= res!88836 (simpleValid!187 thiss!1248))))

(assert (=> d!55433 (= (valid!1066 thiss!1248) e!123660)))

(declare-fun b!187873 () Bool)

(declare-fun res!88837 () Bool)

(assert (=> b!187873 (=> (not res!88837) (not e!123660))))

(declare-fun arrayCountValidKeys!0 (array!7996 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!187873 (= res!88837 (= (arrayCountValidKeys!0 (_keys!5786 thiss!1248) #b00000000000000000000000000000000 (size!4091 (_keys!5786 thiss!1248))) (_size!1354 thiss!1248)))))

(declare-fun b!187874 () Bool)

(declare-fun res!88838 () Bool)

(assert (=> b!187874 (=> (not res!88838) (not e!123660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7996 (_ BitVec 32)) Bool)

(assert (=> b!187874 (= res!88838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5786 thiss!1248) (mask!8985 thiss!1248)))))

(declare-fun b!187875 () Bool)

(declare-datatypes ((List!2407 0))(
  ( (Nil!2404) (Cons!2403 (h!3039 (_ BitVec 64)) (t!7311 List!2407)) )
))
(declare-fun arrayNoDuplicates!0 (array!7996 (_ BitVec 32) List!2407) Bool)

(assert (=> b!187875 (= e!123660 (arrayNoDuplicates!0 (_keys!5786 thiss!1248) #b00000000000000000000000000000000 Nil!2404))))

(assert (= (and d!55433 res!88836) b!187873))

(assert (= (and b!187873 res!88837) b!187874))

(assert (= (and b!187874 res!88838) b!187875))

(declare-fun m!214633 () Bool)

(assert (=> d!55433 m!214633))

(declare-fun m!214635 () Bool)

(assert (=> b!187873 m!214635))

(declare-fun m!214637 () Bool)

(assert (=> b!187874 m!214637))

(declare-fun m!214639 () Bool)

(assert (=> b!187875 m!214639))

(assert (=> start!19080 d!55433))

(declare-fun d!55435 () Bool)

(assert (=> d!55435 (= (validMask!0 (mask!8985 thiss!1248)) (and (or (= (mask!8985 thiss!1248) #b00000000000000000000000000000111) (= (mask!8985 thiss!1248) #b00000000000000000000000000001111) (= (mask!8985 thiss!1248) #b00000000000000000000000000011111) (= (mask!8985 thiss!1248) #b00000000000000000000000000111111) (= (mask!8985 thiss!1248) #b00000000000000000000000001111111) (= (mask!8985 thiss!1248) #b00000000000000000000000011111111) (= (mask!8985 thiss!1248) #b00000000000000000000000111111111) (= (mask!8985 thiss!1248) #b00000000000000000000001111111111) (= (mask!8985 thiss!1248) #b00000000000000000000011111111111) (= (mask!8985 thiss!1248) #b00000000000000000000111111111111) (= (mask!8985 thiss!1248) #b00000000000000000001111111111111) (= (mask!8985 thiss!1248) #b00000000000000000011111111111111) (= (mask!8985 thiss!1248) #b00000000000000000111111111111111) (= (mask!8985 thiss!1248) #b00000000000000001111111111111111) (= (mask!8985 thiss!1248) #b00000000000000011111111111111111) (= (mask!8985 thiss!1248) #b00000000000000111111111111111111) (= (mask!8985 thiss!1248) #b00000000000001111111111111111111) (= (mask!8985 thiss!1248) #b00000000000011111111111111111111) (= (mask!8985 thiss!1248) #b00000000000111111111111111111111) (= (mask!8985 thiss!1248) #b00000000001111111111111111111111) (= (mask!8985 thiss!1248) #b00000000011111111111111111111111) (= (mask!8985 thiss!1248) #b00000000111111111111111111111111) (= (mask!8985 thiss!1248) #b00000001111111111111111111111111) (= (mask!8985 thiss!1248) #b00000011111111111111111111111111) (= (mask!8985 thiss!1248) #b00000111111111111111111111111111) (= (mask!8985 thiss!1248) #b00001111111111111111111111111111) (= (mask!8985 thiss!1248) #b00011111111111111111111111111111) (= (mask!8985 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8985 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!187779 d!55435))

(declare-fun d!55437 () Bool)

(declare-fun e!123665 () Bool)

(assert (=> d!55437 e!123665))

(declare-fun res!88841 () Bool)

(assert (=> d!55437 (=> res!88841 e!123665)))

(declare-fun lt!92999 () Bool)

(assert (=> d!55437 (= res!88841 (not lt!92999))))

(declare-fun lt!93001 () Bool)

(assert (=> d!55437 (= lt!92999 lt!93001)))

(declare-fun lt!92998 () Unit!5658)

(declare-fun e!123666 () Unit!5658)

(assert (=> d!55437 (= lt!92998 e!123666)))

(declare-fun c!33738 () Bool)

(assert (=> d!55437 (= c!33738 lt!93001)))

(declare-fun containsKey!232 (List!2405 (_ BitVec 64)) Bool)

(assert (=> d!55437 (= lt!93001 (containsKey!232 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248))) key!828))))

(assert (=> d!55437 (= (contains!1316 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248)) key!828) lt!92999)))

(declare-fun b!187882 () Bool)

(declare-fun lt!93000 () Unit!5658)

(assert (=> b!187882 (= e!123666 lt!93000)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!181 (List!2405 (_ BitVec 64)) Unit!5658)

(assert (=> b!187882 (= lt!93000 (lemmaContainsKeyImpliesGetValueByKeyDefined!181 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248))) key!828))))

(declare-datatypes ((Option!234 0))(
  ( (Some!233 (v!4153 V!5499)) (None!232) )
))
(declare-fun isDefined!182 (Option!234) Bool)

(declare-fun getValueByKey!228 (List!2405 (_ BitVec 64)) Option!234)

(assert (=> b!187882 (isDefined!182 (getValueByKey!228 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248))) key!828))))

(declare-fun b!187883 () Bool)

(declare-fun Unit!5664 () Unit!5658)

(assert (=> b!187883 (= e!123666 Unit!5664)))

(declare-fun b!187884 () Bool)

(assert (=> b!187884 (= e!123665 (isDefined!182 (getValueByKey!228 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248))) key!828)))))

(assert (= (and d!55437 c!33738) b!187882))

(assert (= (and d!55437 (not c!33738)) b!187883))

(assert (= (and d!55437 (not res!88841)) b!187884))

(declare-fun m!214641 () Bool)

(assert (=> d!55437 m!214641))

(declare-fun m!214643 () Bool)

(assert (=> b!187882 m!214643))

(declare-fun m!214645 () Bool)

(assert (=> b!187882 m!214645))

(assert (=> b!187882 m!214645))

(declare-fun m!214647 () Bool)

(assert (=> b!187882 m!214647))

(assert (=> b!187884 m!214645))

(assert (=> b!187884 m!214645))

(assert (=> b!187884 m!214647))

(assert (=> b!187779 d!55437))

(declare-fun c!33754 () Bool)

(declare-fun c!33752 () Bool)

(declare-fun call!18949 () ListLongMap!2409)

(declare-fun call!18947 () ListLongMap!2409)

(declare-fun call!18952 () ListLongMap!2409)

(declare-fun bm!18944 () Bool)

(declare-fun call!18950 () ListLongMap!2409)

(declare-fun +!287 (ListLongMap!2409 tuple2!3478) ListLongMap!2409)

(assert (=> bm!18944 (= call!18947 (+!287 (ite c!33754 call!18950 (ite c!33752 call!18949 call!18952)) (ite (or c!33754 c!33752) (tuple2!3479 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3672 thiss!1248)) (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248)))))))

(declare-fun b!187927 () Bool)

(declare-fun e!123702 () Bool)

(declare-fun e!123701 () Bool)

(assert (=> b!187927 (= e!123702 e!123701)))

(declare-fun res!88862 () Bool)

(declare-fun call!18953 () Bool)

(assert (=> b!187927 (= res!88862 call!18953)))

(assert (=> b!187927 (=> (not res!88862) (not e!123701))))

(declare-fun bm!18945 () Bool)

(assert (=> bm!18945 (= call!18949 call!18950)))

(declare-fun b!187928 () Bool)

(declare-fun lt!93066 () ListLongMap!2409)

(declare-fun apply!172 (ListLongMap!2409 (_ BitVec 64)) V!5499)

(assert (=> b!187928 (= e!123701 (= (apply!172 lt!93066 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3672 thiss!1248)))))

(declare-fun b!187929 () Bool)

(declare-fun c!33755 () Bool)

(assert (=> b!187929 (= c!33755 (and (not (= (bvand (extraKeys!3568 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3568 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!123695 () ListLongMap!2409)

(declare-fun e!123699 () ListLongMap!2409)

(assert (=> b!187929 (= e!123695 e!123699)))

(declare-fun b!187930 () Bool)

(declare-fun res!88860 () Bool)

(declare-fun e!123704 () Bool)

(assert (=> b!187930 (=> (not res!88860) (not e!123704))))

(assert (=> b!187930 (= res!88860 e!123702)))

(declare-fun c!33751 () Bool)

(assert (=> b!187930 (= c!33751 (not (= (bvand (extraKeys!3568 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!187931 () Bool)

(declare-fun e!123703 () Unit!5658)

(declare-fun Unit!5665 () Unit!5658)

(assert (=> b!187931 (= e!123703 Unit!5665)))

(declare-fun bm!18946 () Bool)

(declare-fun call!18948 () Bool)

(assert (=> bm!18946 (= call!18948 (contains!1316 lt!93066 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!187932 () Bool)

(declare-fun e!123698 () Bool)

(assert (=> b!187932 (= e!123698 (= (apply!172 lt!93066 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3672 thiss!1248)))))

(declare-fun d!55439 () Bool)

(assert (=> d!55439 e!123704))

(declare-fun res!88867 () Bool)

(assert (=> d!55439 (=> (not res!88867) (not e!123704))))

(assert (=> d!55439 (= res!88867 (or (bvsge #b00000000000000000000000000000000 (size!4091 (_keys!5786 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4091 (_keys!5786 thiss!1248))))))))

(declare-fun lt!93060 () ListLongMap!2409)

(assert (=> d!55439 (= lt!93066 lt!93060)))

(declare-fun lt!93050 () Unit!5658)

(assert (=> d!55439 (= lt!93050 e!123703)))

(declare-fun c!33753 () Bool)

(declare-fun e!123694 () Bool)

(assert (=> d!55439 (= c!33753 e!123694)))

(declare-fun res!88864 () Bool)

(assert (=> d!55439 (=> (not res!88864) (not e!123694))))

(assert (=> d!55439 (= res!88864 (bvslt #b00000000000000000000000000000000 (size!4091 (_keys!5786 thiss!1248))))))

(declare-fun e!123697 () ListLongMap!2409)

(assert (=> d!55439 (= lt!93060 e!123697)))

(assert (=> d!55439 (= c!33754 (and (not (= (bvand (extraKeys!3568 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3568 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55439 (validMask!0 (mask!8985 thiss!1248))))

(assert (=> d!55439 (= (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248)) lt!93066)))

(declare-fun bm!18947 () Bool)

(assert (=> bm!18947 (= call!18953 (contains!1316 lt!93066 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!187933 () Bool)

(declare-fun lt!93056 () Unit!5658)

(assert (=> b!187933 (= e!123703 lt!93056)))

(declare-fun lt!93052 () ListLongMap!2409)

(declare-fun getCurrentListMapNoExtraKeys!202 (array!7996 array!7998 (_ BitVec 32) (_ BitVec 32) V!5499 V!5499 (_ BitVec 32) Int) ListLongMap!2409)

(assert (=> b!187933 (= lt!93052 (getCurrentListMapNoExtraKeys!202 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248)))))

(declare-fun lt!93059 () (_ BitVec 64))

(assert (=> b!187933 (= lt!93059 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93048 () (_ BitVec 64))

(assert (=> b!187933 (= lt!93048 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93065 () Unit!5658)

(declare-fun addStillContains!148 (ListLongMap!2409 (_ BitVec 64) V!5499 (_ BitVec 64)) Unit!5658)

(assert (=> b!187933 (= lt!93065 (addStillContains!148 lt!93052 lt!93059 (zeroValue!3672 thiss!1248) lt!93048))))

(assert (=> b!187933 (contains!1316 (+!287 lt!93052 (tuple2!3479 lt!93059 (zeroValue!3672 thiss!1248))) lt!93048)))

(declare-fun lt!93054 () Unit!5658)

(assert (=> b!187933 (= lt!93054 lt!93065)))

(declare-fun lt!93061 () ListLongMap!2409)

(assert (=> b!187933 (= lt!93061 (getCurrentListMapNoExtraKeys!202 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248)))))

(declare-fun lt!93055 () (_ BitVec 64))

(assert (=> b!187933 (= lt!93055 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93047 () (_ BitVec 64))

(assert (=> b!187933 (= lt!93047 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93062 () Unit!5658)

(declare-fun addApplyDifferent!148 (ListLongMap!2409 (_ BitVec 64) V!5499 (_ BitVec 64)) Unit!5658)

(assert (=> b!187933 (= lt!93062 (addApplyDifferent!148 lt!93061 lt!93055 (minValue!3672 thiss!1248) lt!93047))))

(assert (=> b!187933 (= (apply!172 (+!287 lt!93061 (tuple2!3479 lt!93055 (minValue!3672 thiss!1248))) lt!93047) (apply!172 lt!93061 lt!93047))))

(declare-fun lt!93057 () Unit!5658)

(assert (=> b!187933 (= lt!93057 lt!93062)))

(declare-fun lt!93046 () ListLongMap!2409)

(assert (=> b!187933 (= lt!93046 (getCurrentListMapNoExtraKeys!202 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248)))))

(declare-fun lt!93051 () (_ BitVec 64))

(assert (=> b!187933 (= lt!93051 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93058 () (_ BitVec 64))

(assert (=> b!187933 (= lt!93058 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93049 () Unit!5658)

(assert (=> b!187933 (= lt!93049 (addApplyDifferent!148 lt!93046 lt!93051 (zeroValue!3672 thiss!1248) lt!93058))))

(assert (=> b!187933 (= (apply!172 (+!287 lt!93046 (tuple2!3479 lt!93051 (zeroValue!3672 thiss!1248))) lt!93058) (apply!172 lt!93046 lt!93058))))

(declare-fun lt!93067 () Unit!5658)

(assert (=> b!187933 (= lt!93067 lt!93049)))

(declare-fun lt!93053 () ListLongMap!2409)

(assert (=> b!187933 (= lt!93053 (getCurrentListMapNoExtraKeys!202 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248)))))

(declare-fun lt!93063 () (_ BitVec 64))

(assert (=> b!187933 (= lt!93063 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93064 () (_ BitVec 64))

(assert (=> b!187933 (= lt!93064 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!187933 (= lt!93056 (addApplyDifferent!148 lt!93053 lt!93063 (minValue!3672 thiss!1248) lt!93064))))

(assert (=> b!187933 (= (apply!172 (+!287 lt!93053 (tuple2!3479 lt!93063 (minValue!3672 thiss!1248))) lt!93064) (apply!172 lt!93053 lt!93064))))

(declare-fun b!187934 () Bool)

(declare-fun e!123696 () Bool)

(assert (=> b!187934 (= e!123696 (not call!18948))))

(declare-fun b!187935 () Bool)

(assert (=> b!187935 (= e!123697 (+!287 call!18947 (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248))))))

(declare-fun b!187936 () Bool)

(declare-fun res!88868 () Bool)

(assert (=> b!187936 (=> (not res!88868) (not e!123704))))

(declare-fun e!123693 () Bool)

(assert (=> b!187936 (= res!88868 e!123693)))

(declare-fun res!88861 () Bool)

(assert (=> b!187936 (=> res!88861 e!123693)))

(declare-fun e!123705 () Bool)

(assert (=> b!187936 (= res!88861 (not e!123705))))

(declare-fun res!88866 () Bool)

(assert (=> b!187936 (=> (not res!88866) (not e!123705))))

(assert (=> b!187936 (= res!88866 (bvslt #b00000000000000000000000000000000 (size!4091 (_keys!5786 thiss!1248))))))

(declare-fun b!187937 () Bool)

(assert (=> b!187937 (= e!123696 e!123698)))

(declare-fun res!88865 () Bool)

(assert (=> b!187937 (= res!88865 call!18948)))

(assert (=> b!187937 (=> (not res!88865) (not e!123698))))

(declare-fun bm!18948 () Bool)

(assert (=> bm!18948 (= call!18952 call!18949)))

(declare-fun bm!18949 () Bool)

(declare-fun call!18951 () ListLongMap!2409)

(assert (=> bm!18949 (= call!18951 call!18947)))

(declare-fun b!187938 () Bool)

(assert (=> b!187938 (= e!123704 e!123696)))

(declare-fun c!33756 () Bool)

(assert (=> b!187938 (= c!33756 (not (= (bvand (extraKeys!3568 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!187939 () Bool)

(assert (=> b!187939 (= e!123699 call!18952)))

(declare-fun b!187940 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!187940 (= e!123694 (validKeyInArray!0 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18950 () Bool)

(assert (=> bm!18950 (= call!18950 (getCurrentListMapNoExtraKeys!202 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248)))))

(declare-fun b!187941 () Bool)

(assert (=> b!187941 (= e!123705 (validKeyInArray!0 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!187942 () Bool)

(assert (=> b!187942 (= e!123702 (not call!18953))))

(declare-fun b!187943 () Bool)

(declare-fun e!123700 () Bool)

(assert (=> b!187943 (= e!123693 e!123700)))

(declare-fun res!88863 () Bool)

(assert (=> b!187943 (=> (not res!88863) (not e!123700))))

(assert (=> b!187943 (= res!88863 (contains!1316 lt!93066 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!187943 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4091 (_keys!5786 thiss!1248))))))

(declare-fun b!187944 () Bool)

(assert (=> b!187944 (= e!123697 e!123695)))

(assert (=> b!187944 (= c!33752 (and (not (= (bvand (extraKeys!3568 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3568 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!187945 () Bool)

(assert (=> b!187945 (= e!123699 call!18951)))

(declare-fun b!187946 () Bool)

(assert (=> b!187946 (= e!123695 call!18951)))

(declare-fun b!187947 () Bool)

(declare-fun get!2173 (ValueCell!1851 V!5499) V!5499)

(declare-fun dynLambda!510 (Int (_ BitVec 64)) V!5499)

(assert (=> b!187947 (= e!123700 (= (apply!172 lt!93066 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)) (get!2173 (select (arr!3773 (_values!3814 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!510 (defaultEntry!3831 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!187947 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4092 (_values!3814 thiss!1248))))))

(assert (=> b!187947 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4091 (_keys!5786 thiss!1248))))))

(assert (= (and d!55439 c!33754) b!187935))

(assert (= (and d!55439 (not c!33754)) b!187944))

(assert (= (and b!187944 c!33752) b!187946))

(assert (= (and b!187944 (not c!33752)) b!187929))

(assert (= (and b!187929 c!33755) b!187945))

(assert (= (and b!187929 (not c!33755)) b!187939))

(assert (= (or b!187945 b!187939) bm!18948))

(assert (= (or b!187946 bm!18948) bm!18945))

(assert (= (or b!187946 b!187945) bm!18949))

(assert (= (or b!187935 bm!18945) bm!18950))

(assert (= (or b!187935 bm!18949) bm!18944))

(assert (= (and d!55439 res!88864) b!187940))

(assert (= (and d!55439 c!33753) b!187933))

(assert (= (and d!55439 (not c!33753)) b!187931))

(assert (= (and d!55439 res!88867) b!187936))

(assert (= (and b!187936 res!88866) b!187941))

(assert (= (and b!187936 (not res!88861)) b!187943))

(assert (= (and b!187943 res!88863) b!187947))

(assert (= (and b!187936 res!88868) b!187930))

(assert (= (and b!187930 c!33751) b!187927))

(assert (= (and b!187930 (not c!33751)) b!187942))

(assert (= (and b!187927 res!88862) b!187928))

(assert (= (or b!187927 b!187942) bm!18947))

(assert (= (and b!187930 res!88860) b!187938))

(assert (= (and b!187938 c!33756) b!187937))

(assert (= (and b!187938 (not c!33756)) b!187934))

(assert (= (and b!187937 res!88865) b!187932))

(assert (= (or b!187937 b!187934) bm!18946))

(declare-fun b_lambda!7329 () Bool)

(assert (=> (not b_lambda!7329) (not b!187947)))

(declare-fun t!7310 () Bool)

(declare-fun tb!2863 () Bool)

(assert (=> (and b!187785 (= (defaultEntry!3831 thiss!1248) (defaultEntry!3831 thiss!1248)) t!7310) tb!2863))

(declare-fun result!4851 () Bool)

(assert (=> tb!2863 (= result!4851 tp_is_empty!4389)))

(assert (=> b!187947 t!7310))

(declare-fun b_and!11263 () Bool)

(assert (= b_and!11259 (and (=> t!7310 result!4851) b_and!11263)))

(assert (=> d!55439 m!214565))

(declare-fun m!214649 () Bool)

(assert (=> b!187941 m!214649))

(assert (=> b!187941 m!214649))

(declare-fun m!214651 () Bool)

(assert (=> b!187941 m!214651))

(assert (=> b!187947 m!214649))

(declare-fun m!214653 () Bool)

(assert (=> b!187947 m!214653))

(declare-fun m!214655 () Bool)

(assert (=> b!187947 m!214655))

(declare-fun m!214657 () Bool)

(assert (=> b!187947 m!214657))

(declare-fun m!214659 () Bool)

(assert (=> b!187947 m!214659))

(assert (=> b!187947 m!214657))

(assert (=> b!187947 m!214655))

(assert (=> b!187947 m!214649))

(declare-fun m!214661 () Bool)

(assert (=> bm!18950 m!214661))

(declare-fun m!214663 () Bool)

(assert (=> bm!18946 m!214663))

(assert (=> b!187943 m!214649))

(assert (=> b!187943 m!214649))

(declare-fun m!214665 () Bool)

(assert (=> b!187943 m!214665))

(declare-fun m!214667 () Bool)

(assert (=> b!187928 m!214667))

(declare-fun m!214669 () Bool)

(assert (=> b!187932 m!214669))

(declare-fun m!214671 () Bool)

(assert (=> b!187935 m!214671))

(declare-fun m!214673 () Bool)

(assert (=> b!187933 m!214673))

(declare-fun m!214675 () Bool)

(assert (=> b!187933 m!214675))

(declare-fun m!214677 () Bool)

(assert (=> b!187933 m!214677))

(declare-fun m!214679 () Bool)

(assert (=> b!187933 m!214679))

(declare-fun m!214681 () Bool)

(assert (=> b!187933 m!214681))

(declare-fun m!214683 () Bool)

(assert (=> b!187933 m!214683))

(declare-fun m!214685 () Bool)

(assert (=> b!187933 m!214685))

(assert (=> b!187933 m!214673))

(assert (=> b!187933 m!214683))

(declare-fun m!214687 () Bool)

(assert (=> b!187933 m!214687))

(declare-fun m!214689 () Bool)

(assert (=> b!187933 m!214689))

(declare-fun m!214691 () Bool)

(assert (=> b!187933 m!214691))

(declare-fun m!214693 () Bool)

(assert (=> b!187933 m!214693))

(assert (=> b!187933 m!214679))

(assert (=> b!187933 m!214691))

(declare-fun m!214695 () Bool)

(assert (=> b!187933 m!214695))

(assert (=> b!187933 m!214661))

(declare-fun m!214697 () Bool)

(assert (=> b!187933 m!214697))

(assert (=> b!187933 m!214649))

(declare-fun m!214699 () Bool)

(assert (=> b!187933 m!214699))

(declare-fun m!214701 () Bool)

(assert (=> b!187933 m!214701))

(declare-fun m!214703 () Bool)

(assert (=> bm!18947 m!214703))

(assert (=> b!187940 m!214649))

(assert (=> b!187940 m!214649))

(assert (=> b!187940 m!214651))

(declare-fun m!214705 () Bool)

(assert (=> bm!18944 m!214705))

(assert (=> b!187779 d!55439))

(declare-fun mapNonEmpty!7569 () Bool)

(declare-fun mapRes!7569 () Bool)

(declare-fun tp!16677 () Bool)

(declare-fun e!123711 () Bool)

(assert (=> mapNonEmpty!7569 (= mapRes!7569 (and tp!16677 e!123711))))

(declare-fun mapValue!7569 () ValueCell!1851)

(declare-fun mapKey!7569 () (_ BitVec 32))

(declare-fun mapRest!7569 () (Array (_ BitVec 32) ValueCell!1851))

(assert (=> mapNonEmpty!7569 (= mapRest!7563 (store mapRest!7569 mapKey!7569 mapValue!7569))))

(declare-fun mapIsEmpty!7569 () Bool)

(assert (=> mapIsEmpty!7569 mapRes!7569))

(declare-fun condMapEmpty!7569 () Bool)

(declare-fun mapDefault!7569 () ValueCell!1851)

(assert (=> mapNonEmpty!7563 (= condMapEmpty!7569 (= mapRest!7563 ((as const (Array (_ BitVec 32) ValueCell!1851)) mapDefault!7569)))))

(declare-fun e!123710 () Bool)

(assert (=> mapNonEmpty!7563 (= tp!16667 (and e!123710 mapRes!7569))))

(declare-fun b!187956 () Bool)

(assert (=> b!187956 (= e!123711 tp_is_empty!4389)))

(declare-fun b!187957 () Bool)

(assert (=> b!187957 (= e!123710 tp_is_empty!4389)))

(assert (= (and mapNonEmpty!7563 condMapEmpty!7569) mapIsEmpty!7569))

(assert (= (and mapNonEmpty!7563 (not condMapEmpty!7569)) mapNonEmpty!7569))

(assert (= (and mapNonEmpty!7569 ((_ is ValueCellFull!1851) mapValue!7569)) b!187956))

(assert (= (and mapNonEmpty!7563 ((_ is ValueCellFull!1851) mapDefault!7569)) b!187957))

(declare-fun m!214707 () Bool)

(assert (=> mapNonEmpty!7569 m!214707))

(declare-fun b_lambda!7331 () Bool)

(assert (= b_lambda!7329 (or (and b!187785 b_free!4617) b_lambda!7331)))

(check-sat (not b!187884) (not b!187932) (not d!55439) (not d!55437) (not d!55427) (not d!55429) (not b_lambda!7331) (not b!187947) (not bm!18929) (not b!187933) b_and!11263 (not b!187873) (not b!187943) (not b!187940) (not b_next!4617) (not bm!18947) (not b!187941) tp_is_empty!4389 (not b!187882) (not b!187874) (not d!55425) (not mapNonEmpty!7569) (not bm!18944) (not bm!18928) (not d!55433) (not b!187875) (not bm!18950) (not b!187832) (not b!187928) (not bm!18946) (not b!187865) (not b!187935))
(check-sat b_and!11263 (not b_next!4617))
(get-model)

(declare-fun d!55441 () Bool)

(assert (=> d!55441 (= (validKeyInArray!0 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!187940 d!55441))

(declare-fun b!187966 () Bool)

(declare-fun e!123720 () Bool)

(declare-fun e!123719 () Bool)

(assert (=> b!187966 (= e!123720 e!123719)))

(declare-fun lt!93076 () (_ BitVec 64))

(assert (=> b!187966 (= lt!93076 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93075 () Unit!5658)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7996 (_ BitVec 64) (_ BitVec 32)) Unit!5658)

(assert (=> b!187966 (= lt!93075 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5786 thiss!1248) lt!93076 #b00000000000000000000000000000000))))

(assert (=> b!187966 (arrayContainsKey!0 (_keys!5786 thiss!1248) lt!93076 #b00000000000000000000000000000000)))

(declare-fun lt!93074 () Unit!5658)

(assert (=> b!187966 (= lt!93074 lt!93075)))

(declare-fun res!88873 () Bool)

(assert (=> b!187966 (= res!88873 (= (seekEntryOrOpen!0 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000) (_keys!5786 thiss!1248) (mask!8985 thiss!1248)) (Found!660 #b00000000000000000000000000000000)))))

(assert (=> b!187966 (=> (not res!88873) (not e!123719))))

(declare-fun bm!18953 () Bool)

(declare-fun call!18956 () Bool)

(assert (=> bm!18953 (= call!18956 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5786 thiss!1248) (mask!8985 thiss!1248)))))

(declare-fun d!55443 () Bool)

(declare-fun res!88874 () Bool)

(declare-fun e!123718 () Bool)

(assert (=> d!55443 (=> res!88874 e!123718)))

(assert (=> d!55443 (= res!88874 (bvsge #b00000000000000000000000000000000 (size!4091 (_keys!5786 thiss!1248))))))

(assert (=> d!55443 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5786 thiss!1248) (mask!8985 thiss!1248)) e!123718)))

(declare-fun b!187967 () Bool)

(assert (=> b!187967 (= e!123718 e!123720)))

(declare-fun c!33759 () Bool)

(assert (=> b!187967 (= c!33759 (validKeyInArray!0 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!187968 () Bool)

(assert (=> b!187968 (= e!123719 call!18956)))

(declare-fun b!187969 () Bool)

(assert (=> b!187969 (= e!123720 call!18956)))

(assert (= (and d!55443 (not res!88874)) b!187967))

(assert (= (and b!187967 c!33759) b!187966))

(assert (= (and b!187967 (not c!33759)) b!187969))

(assert (= (and b!187966 res!88873) b!187968))

(assert (= (or b!187968 b!187969) bm!18953))

(assert (=> b!187966 m!214649))

(declare-fun m!214709 () Bool)

(assert (=> b!187966 m!214709))

(declare-fun m!214711 () Bool)

(assert (=> b!187966 m!214711))

(assert (=> b!187966 m!214649))

(declare-fun m!214713 () Bool)

(assert (=> b!187966 m!214713))

(declare-fun m!214715 () Bool)

(assert (=> bm!18953 m!214715))

(assert (=> b!187967 m!214649))

(assert (=> b!187967 m!214649))

(assert (=> b!187967 m!214651))

(assert (=> b!187874 d!55443))

(assert (=> d!55439 d!55435))

(declare-fun bm!18956 () Bool)

(declare-fun call!18959 () (_ BitVec 32))

(assert (=> bm!18956 (= call!18959 (arrayCountValidKeys!0 (_keys!5786 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4091 (_keys!5786 thiss!1248))))))

(declare-fun b!187978 () Bool)

(declare-fun e!123726 () (_ BitVec 32))

(assert (=> b!187978 (= e!123726 (bvadd #b00000000000000000000000000000001 call!18959))))

(declare-fun b!187979 () Bool)

(declare-fun e!123725 () (_ BitVec 32))

(assert (=> b!187979 (= e!123725 e!123726)))

(declare-fun c!33765 () Bool)

(assert (=> b!187979 (= c!33765 (validKeyInArray!0 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!187980 () Bool)

(assert (=> b!187980 (= e!123725 #b00000000000000000000000000000000)))

(declare-fun b!187981 () Bool)

(assert (=> b!187981 (= e!123726 call!18959)))

(declare-fun d!55445 () Bool)

(declare-fun lt!93079 () (_ BitVec 32))

(assert (=> d!55445 (and (bvsge lt!93079 #b00000000000000000000000000000000) (bvsle lt!93079 (bvsub (size!4091 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!55445 (= lt!93079 e!123725)))

(declare-fun c!33764 () Bool)

(assert (=> d!55445 (= c!33764 (bvsge #b00000000000000000000000000000000 (size!4091 (_keys!5786 thiss!1248))))))

(assert (=> d!55445 (and (bvsle #b00000000000000000000000000000000 (size!4091 (_keys!5786 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!4091 (_keys!5786 thiss!1248)) (size!4091 (_keys!5786 thiss!1248))))))

(assert (=> d!55445 (= (arrayCountValidKeys!0 (_keys!5786 thiss!1248) #b00000000000000000000000000000000 (size!4091 (_keys!5786 thiss!1248))) lt!93079)))

(assert (= (and d!55445 c!33764) b!187980))

(assert (= (and d!55445 (not c!33764)) b!187979))

(assert (= (and b!187979 c!33765) b!187978))

(assert (= (and b!187979 (not c!33765)) b!187981))

(assert (= (or b!187978 b!187981) bm!18956))

(declare-fun m!214717 () Bool)

(assert (=> bm!18956 m!214717))

(assert (=> b!187979 m!214649))

(assert (=> b!187979 m!214649))

(assert (=> b!187979 m!214651))

(assert (=> b!187873 d!55445))

(declare-fun d!55447 () Bool)

(declare-fun res!88885 () Bool)

(declare-fun e!123729 () Bool)

(assert (=> d!55447 (=> (not res!88885) (not e!123729))))

(assert (=> d!55447 (= res!88885 (validMask!0 (mask!8985 thiss!1248)))))

(assert (=> d!55447 (= (simpleValid!187 thiss!1248) e!123729)))

(declare-fun b!187990 () Bool)

(declare-fun res!88886 () Bool)

(assert (=> b!187990 (=> (not res!88886) (not e!123729))))

(assert (=> b!187990 (= res!88886 (and (= (size!4092 (_values!3814 thiss!1248)) (bvadd (mask!8985 thiss!1248) #b00000000000000000000000000000001)) (= (size!4091 (_keys!5786 thiss!1248)) (size!4092 (_values!3814 thiss!1248))) (bvsge (_size!1354 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1354 thiss!1248) (bvadd (mask!8985 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!187991 () Bool)

(declare-fun res!88883 () Bool)

(assert (=> b!187991 (=> (not res!88883) (not e!123729))))

(declare-fun size!4095 (LongMapFixedSize!2610) (_ BitVec 32))

(assert (=> b!187991 (= res!88883 (bvsge (size!4095 thiss!1248) (_size!1354 thiss!1248)))))

(declare-fun b!187992 () Bool)

(declare-fun res!88884 () Bool)

(assert (=> b!187992 (=> (not res!88884) (not e!123729))))

(assert (=> b!187992 (= res!88884 (= (size!4095 thiss!1248) (bvadd (_size!1354 thiss!1248) (bvsdiv (bvadd (extraKeys!3568 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!187993 () Bool)

(assert (=> b!187993 (= e!123729 (and (bvsge (extraKeys!3568 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3568 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1354 thiss!1248) #b00000000000000000000000000000000)))))

(assert (= (and d!55447 res!88885) b!187990))

(assert (= (and b!187990 res!88886) b!187991))

(assert (= (and b!187991 res!88883) b!187992))

(assert (= (and b!187992 res!88884) b!187993))

(assert (=> d!55447 m!214565))

(declare-fun m!214719 () Bool)

(assert (=> b!187991 m!214719))

(assert (=> b!187992 m!214719))

(assert (=> d!55433 d!55447))

(assert (=> b!187941 d!55441))

(declare-fun d!55449 () Bool)

(declare-fun e!123732 () Bool)

(assert (=> d!55449 e!123732))

(declare-fun res!88892 () Bool)

(assert (=> d!55449 (=> (not res!88892) (not e!123732))))

(declare-fun lt!93090 () ListLongMap!2409)

(assert (=> d!55449 (= res!88892 (contains!1316 lt!93090 (_1!1749 (ite (or c!33754 c!33752) (tuple2!3479 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3672 thiss!1248)) (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248))))))))

(declare-fun lt!93088 () List!2405)

(assert (=> d!55449 (= lt!93090 (ListLongMap!2410 lt!93088))))

(declare-fun lt!93089 () Unit!5658)

(declare-fun lt!93091 () Unit!5658)

(assert (=> d!55449 (= lt!93089 lt!93091)))

(assert (=> d!55449 (= (getValueByKey!228 lt!93088 (_1!1749 (ite (or c!33754 c!33752) (tuple2!3479 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3672 thiss!1248)) (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248))))) (Some!233 (_2!1749 (ite (or c!33754 c!33752) (tuple2!3479 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3672 thiss!1248)) (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!121 (List!2405 (_ BitVec 64) V!5499) Unit!5658)

(assert (=> d!55449 (= lt!93091 (lemmaContainsTupThenGetReturnValue!121 lt!93088 (_1!1749 (ite (or c!33754 c!33752) (tuple2!3479 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3672 thiss!1248)) (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248)))) (_2!1749 (ite (or c!33754 c!33752) (tuple2!3479 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3672 thiss!1248)) (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248))))))))

(declare-fun insertStrictlySorted!123 (List!2405 (_ BitVec 64) V!5499) List!2405)

(assert (=> d!55449 (= lt!93088 (insertStrictlySorted!123 (toList!1220 (ite c!33754 call!18950 (ite c!33752 call!18949 call!18952))) (_1!1749 (ite (or c!33754 c!33752) (tuple2!3479 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3672 thiss!1248)) (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248)))) (_2!1749 (ite (or c!33754 c!33752) (tuple2!3479 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3672 thiss!1248)) (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248))))))))

(assert (=> d!55449 (= (+!287 (ite c!33754 call!18950 (ite c!33752 call!18949 call!18952)) (ite (or c!33754 c!33752) (tuple2!3479 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3672 thiss!1248)) (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248)))) lt!93090)))

(declare-fun b!187998 () Bool)

(declare-fun res!88891 () Bool)

(assert (=> b!187998 (=> (not res!88891) (not e!123732))))

(assert (=> b!187998 (= res!88891 (= (getValueByKey!228 (toList!1220 lt!93090) (_1!1749 (ite (or c!33754 c!33752) (tuple2!3479 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3672 thiss!1248)) (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248))))) (Some!233 (_2!1749 (ite (or c!33754 c!33752) (tuple2!3479 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3672 thiss!1248)) (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248)))))))))

(declare-fun b!187999 () Bool)

(declare-fun contains!1318 (List!2405 tuple2!3478) Bool)

(assert (=> b!187999 (= e!123732 (contains!1318 (toList!1220 lt!93090) (ite (or c!33754 c!33752) (tuple2!3479 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3672 thiss!1248)) (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248)))))))

(assert (= (and d!55449 res!88892) b!187998))

(assert (= (and b!187998 res!88891) b!187999))

(declare-fun m!214721 () Bool)

(assert (=> d!55449 m!214721))

(declare-fun m!214723 () Bool)

(assert (=> d!55449 m!214723))

(declare-fun m!214725 () Bool)

(assert (=> d!55449 m!214725))

(declare-fun m!214727 () Bool)

(assert (=> d!55449 m!214727))

(declare-fun m!214729 () Bool)

(assert (=> b!187998 m!214729))

(declare-fun m!214731 () Bool)

(assert (=> b!187999 m!214731))

(assert (=> bm!18944 d!55449))

(declare-fun b!188024 () Bool)

(declare-fun e!123753 () ListLongMap!2409)

(declare-fun call!18962 () ListLongMap!2409)

(assert (=> b!188024 (= e!123753 call!18962)))

(declare-fun b!188025 () Bool)

(declare-fun e!123751 () Bool)

(declare-fun e!123750 () Bool)

(assert (=> b!188025 (= e!123751 e!123750)))

(declare-fun c!33775 () Bool)

(assert (=> b!188025 (= c!33775 (bvslt #b00000000000000000000000000000000 (size!4091 (_keys!5786 thiss!1248))))))

(declare-fun b!188026 () Bool)

(declare-fun e!123748 () Bool)

(assert (=> b!188026 (= e!123748 e!123751)))

(declare-fun c!33776 () Bool)

(declare-fun e!123752 () Bool)

(assert (=> b!188026 (= c!33776 e!123752)))

(declare-fun res!88903 () Bool)

(assert (=> b!188026 (=> (not res!88903) (not e!123752))))

(assert (=> b!188026 (= res!88903 (bvslt #b00000000000000000000000000000000 (size!4091 (_keys!5786 thiss!1248))))))

(declare-fun b!188027 () Bool)

(declare-fun e!123749 () Bool)

(assert (=> b!188027 (= e!123751 e!123749)))

(assert (=> b!188027 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4091 (_keys!5786 thiss!1248))))))

(declare-fun res!88902 () Bool)

(declare-fun lt!93110 () ListLongMap!2409)

(assert (=> b!188027 (= res!88902 (contains!1316 lt!93110 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!188027 (=> (not res!88902) (not e!123749))))

(declare-fun b!188028 () Bool)

(assert (=> b!188028 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4091 (_keys!5786 thiss!1248))))))

(assert (=> b!188028 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4092 (_values!3814 thiss!1248))))))

(assert (=> b!188028 (= e!123749 (= (apply!172 lt!93110 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)) (get!2173 (select (arr!3773 (_values!3814 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!510 (defaultEntry!3831 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!188029 () Bool)

(declare-fun isEmpty!482 (ListLongMap!2409) Bool)

(assert (=> b!188029 (= e!123750 (isEmpty!482 lt!93110))))

(declare-fun b!188030 () Bool)

(declare-fun e!123747 () ListLongMap!2409)

(assert (=> b!188030 (= e!123747 (ListLongMap!2410 Nil!2402))))

(declare-fun d!55451 () Bool)

(assert (=> d!55451 e!123748))

(declare-fun res!88904 () Bool)

(assert (=> d!55451 (=> (not res!88904) (not e!123748))))

(assert (=> d!55451 (= res!88904 (not (contains!1316 lt!93110 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!55451 (= lt!93110 e!123747)))

(declare-fun c!33774 () Bool)

(assert (=> d!55451 (= c!33774 (bvsge #b00000000000000000000000000000000 (size!4091 (_keys!5786 thiss!1248))))))

(assert (=> d!55451 (validMask!0 (mask!8985 thiss!1248))))

(assert (=> d!55451 (= (getCurrentListMapNoExtraKeys!202 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248)) lt!93110)))

(declare-fun b!188031 () Bool)

(assert (=> b!188031 (= e!123752 (validKeyInArray!0 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!188031 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!18959 () Bool)

(assert (=> bm!18959 (= call!18962 (getCurrentListMapNoExtraKeys!202 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3831 thiss!1248)))))

(declare-fun b!188032 () Bool)

(assert (=> b!188032 (= e!123747 e!123753)))

(declare-fun c!33777 () Bool)

(assert (=> b!188032 (= c!33777 (validKeyInArray!0 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!188033 () Bool)

(assert (=> b!188033 (= e!123750 (= lt!93110 (getCurrentListMapNoExtraKeys!202 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3831 thiss!1248))))))

(declare-fun b!188034 () Bool)

(declare-fun res!88901 () Bool)

(assert (=> b!188034 (=> (not res!88901) (not e!123748))))

(assert (=> b!188034 (= res!88901 (not (contains!1316 lt!93110 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!188035 () Bool)

(declare-fun lt!93107 () Unit!5658)

(declare-fun lt!93106 () Unit!5658)

(assert (=> b!188035 (= lt!93107 lt!93106)))

(declare-fun lt!93112 () (_ BitVec 64))

(declare-fun lt!93111 () (_ BitVec 64))

(declare-fun lt!93108 () ListLongMap!2409)

(declare-fun lt!93109 () V!5499)

(assert (=> b!188035 (not (contains!1316 (+!287 lt!93108 (tuple2!3479 lt!93112 lt!93109)) lt!93111))))

(declare-fun addStillNotContains!94 (ListLongMap!2409 (_ BitVec 64) V!5499 (_ BitVec 64)) Unit!5658)

(assert (=> b!188035 (= lt!93106 (addStillNotContains!94 lt!93108 lt!93112 lt!93109 lt!93111))))

(assert (=> b!188035 (= lt!93111 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!188035 (= lt!93109 (get!2173 (select (arr!3773 (_values!3814 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!510 (defaultEntry!3831 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!188035 (= lt!93112 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!188035 (= lt!93108 call!18962)))

(assert (=> b!188035 (= e!123753 (+!287 call!18962 (tuple2!3479 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000) (get!2173 (select (arr!3773 (_values!3814 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!510 (defaultEntry!3831 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!55451 c!33774) b!188030))

(assert (= (and d!55451 (not c!33774)) b!188032))

(assert (= (and b!188032 c!33777) b!188035))

(assert (= (and b!188032 (not c!33777)) b!188024))

(assert (= (or b!188035 b!188024) bm!18959))

(assert (= (and d!55451 res!88904) b!188034))

(assert (= (and b!188034 res!88901) b!188026))

(assert (= (and b!188026 res!88903) b!188031))

(assert (= (and b!188026 c!33776) b!188027))

(assert (= (and b!188026 (not c!33776)) b!188025))

(assert (= (and b!188027 res!88902) b!188028))

(assert (= (and b!188025 c!33775) b!188033))

(assert (= (and b!188025 (not c!33775)) b!188029))

(declare-fun b_lambda!7333 () Bool)

(assert (=> (not b_lambda!7333) (not b!188028)))

(assert (=> b!188028 t!7310))

(declare-fun b_and!11265 () Bool)

(assert (= b_and!11263 (and (=> t!7310 result!4851) b_and!11265)))

(declare-fun b_lambda!7335 () Bool)

(assert (=> (not b_lambda!7335) (not b!188035)))

(assert (=> b!188035 t!7310))

(declare-fun b_and!11267 () Bool)

(assert (= b_and!11265 (and (=> t!7310 result!4851) b_and!11267)))

(assert (=> b!188035 m!214655))

(assert (=> b!188035 m!214655))

(assert (=> b!188035 m!214657))

(assert (=> b!188035 m!214659))

(declare-fun m!214733 () Bool)

(assert (=> b!188035 m!214733))

(declare-fun m!214735 () Bool)

(assert (=> b!188035 m!214735))

(assert (=> b!188035 m!214735))

(declare-fun m!214737 () Bool)

(assert (=> b!188035 m!214737))

(declare-fun m!214739 () Bool)

(assert (=> b!188035 m!214739))

(assert (=> b!188035 m!214649))

(assert (=> b!188035 m!214657))

(assert (=> b!188031 m!214649))

(assert (=> b!188031 m!214649))

(assert (=> b!188031 m!214651))

(assert (=> b!188032 m!214649))

(assert (=> b!188032 m!214649))

(assert (=> b!188032 m!214651))

(declare-fun m!214741 () Bool)

(assert (=> bm!18959 m!214741))

(assert (=> b!188027 m!214649))

(assert (=> b!188027 m!214649))

(declare-fun m!214743 () Bool)

(assert (=> b!188027 m!214743))

(declare-fun m!214745 () Bool)

(assert (=> d!55451 m!214745))

(assert (=> d!55451 m!214565))

(declare-fun m!214747 () Bool)

(assert (=> b!188029 m!214747))

(assert (=> b!188033 m!214741))

(declare-fun m!214749 () Bool)

(assert (=> b!188034 m!214749))

(assert (=> b!188028 m!214655))

(assert (=> b!188028 m!214649))

(declare-fun m!214751 () Bool)

(assert (=> b!188028 m!214751))

(assert (=> b!188028 m!214655))

(assert (=> b!188028 m!214657))

(assert (=> b!188028 m!214659))

(assert (=> b!188028 m!214649))

(assert (=> b!188028 m!214657))

(assert (=> bm!18950 d!55451))

(declare-fun b!188046 () Bool)

(declare-fun e!123765 () Bool)

(declare-fun call!18965 () Bool)

(assert (=> b!188046 (= e!123765 call!18965)))

(declare-fun b!188047 () Bool)

(declare-fun e!123762 () Bool)

(declare-fun e!123764 () Bool)

(assert (=> b!188047 (= e!123762 e!123764)))

(declare-fun res!88913 () Bool)

(assert (=> b!188047 (=> (not res!88913) (not e!123764))))

(declare-fun e!123763 () Bool)

(assert (=> b!188047 (= res!88913 (not e!123763))))

(declare-fun res!88912 () Bool)

(assert (=> b!188047 (=> (not res!88912) (not e!123763))))

(assert (=> b!188047 (= res!88912 (validKeyInArray!0 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!55453 () Bool)

(declare-fun res!88911 () Bool)

(assert (=> d!55453 (=> res!88911 e!123762)))

(assert (=> d!55453 (= res!88911 (bvsge #b00000000000000000000000000000000 (size!4091 (_keys!5786 thiss!1248))))))

(assert (=> d!55453 (= (arrayNoDuplicates!0 (_keys!5786 thiss!1248) #b00000000000000000000000000000000 Nil!2404) e!123762)))

(declare-fun b!188048 () Bool)

(declare-fun contains!1319 (List!2407 (_ BitVec 64)) Bool)

(assert (=> b!188048 (= e!123763 (contains!1319 Nil!2404 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!188049 () Bool)

(assert (=> b!188049 (= e!123765 call!18965)))

(declare-fun bm!18962 () Bool)

(declare-fun c!33780 () Bool)

(assert (=> bm!18962 (= call!18965 (arrayNoDuplicates!0 (_keys!5786 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!33780 (Cons!2403 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000) Nil!2404) Nil!2404)))))

(declare-fun b!188050 () Bool)

(assert (=> b!188050 (= e!123764 e!123765)))

(assert (=> b!188050 (= c!33780 (validKeyInArray!0 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!55453 (not res!88911)) b!188047))

(assert (= (and b!188047 res!88912) b!188048))

(assert (= (and b!188047 res!88913) b!188050))

(assert (= (and b!188050 c!33780) b!188049))

(assert (= (and b!188050 (not c!33780)) b!188046))

(assert (= (or b!188049 b!188046) bm!18962))

(assert (=> b!188047 m!214649))

(assert (=> b!188047 m!214649))

(assert (=> b!188047 m!214651))

(assert (=> b!188048 m!214649))

(assert (=> b!188048 m!214649))

(declare-fun m!214753 () Bool)

(assert (=> b!188048 m!214753))

(assert (=> bm!18962 m!214649))

(declare-fun m!214755 () Bool)

(assert (=> bm!18962 m!214755))

(assert (=> b!188050 m!214649))

(assert (=> b!188050 m!214649))

(assert (=> b!188050 m!214651))

(assert (=> b!187875 d!55453))

(declare-fun d!55455 () Bool)

(declare-fun get!2174 (Option!234) V!5499)

(assert (=> d!55455 (= (apply!172 lt!93066 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2174 (getValueByKey!228 (toList!1220 lt!93066) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7577 () Bool)

(assert (= bs!7577 d!55455))

(declare-fun m!214757 () Bool)

(assert (=> bs!7577 m!214757))

(assert (=> bs!7577 m!214757))

(declare-fun m!214759 () Bool)

(assert (=> bs!7577 m!214759))

(assert (=> b!187928 d!55455))

(declare-fun d!55457 () Bool)

(assert (=> d!55457 (= (inRange!0 (ite c!33734 (index!4810 lt!92982) (index!4813 lt!92982)) (mask!8985 thiss!1248)) (and (bvsge (ite c!33734 (index!4810 lt!92982) (index!4813 lt!92982)) #b00000000000000000000000000000000) (bvslt (ite c!33734 (index!4810 lt!92982) (index!4813 lt!92982)) (bvadd (mask!8985 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> bm!18929 d!55457))

(declare-fun d!55459 () Bool)

(assert (=> d!55459 (= (inRange!0 (index!4811 lt!92988) (mask!8985 thiss!1248)) (and (bvsge (index!4811 lt!92988) #b00000000000000000000000000000000) (bvslt (index!4811 lt!92988) (bvadd (mask!8985 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!187865 d!55459))

(declare-fun d!55461 () Bool)

(declare-fun e!123766 () Bool)

(assert (=> d!55461 e!123766))

(declare-fun res!88914 () Bool)

(assert (=> d!55461 (=> res!88914 e!123766)))

(declare-fun lt!93114 () Bool)

(assert (=> d!55461 (= res!88914 (not lt!93114))))

(declare-fun lt!93116 () Bool)

(assert (=> d!55461 (= lt!93114 lt!93116)))

(declare-fun lt!93113 () Unit!5658)

(declare-fun e!123767 () Unit!5658)

(assert (=> d!55461 (= lt!93113 e!123767)))

(declare-fun c!33781 () Bool)

(assert (=> d!55461 (= c!33781 lt!93116)))

(assert (=> d!55461 (= lt!93116 (containsKey!232 (toList!1220 lt!93066) (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!55461 (= (contains!1316 lt!93066 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)) lt!93114)))

(declare-fun b!188051 () Bool)

(declare-fun lt!93115 () Unit!5658)

(assert (=> b!188051 (= e!123767 lt!93115)))

(assert (=> b!188051 (= lt!93115 (lemmaContainsKeyImpliesGetValueByKeyDefined!181 (toList!1220 lt!93066) (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!188051 (isDefined!182 (getValueByKey!228 (toList!1220 lt!93066) (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!188052 () Bool)

(declare-fun Unit!5666 () Unit!5658)

(assert (=> b!188052 (= e!123767 Unit!5666)))

(declare-fun b!188053 () Bool)

(assert (=> b!188053 (= e!123766 (isDefined!182 (getValueByKey!228 (toList!1220 lt!93066) (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!55461 c!33781) b!188051))

(assert (= (and d!55461 (not c!33781)) b!188052))

(assert (= (and d!55461 (not res!88914)) b!188053))

(assert (=> d!55461 m!214649))

(declare-fun m!214761 () Bool)

(assert (=> d!55461 m!214761))

(assert (=> b!188051 m!214649))

(declare-fun m!214763 () Bool)

(assert (=> b!188051 m!214763))

(assert (=> b!188051 m!214649))

(declare-fun m!214765 () Bool)

(assert (=> b!188051 m!214765))

(assert (=> b!188051 m!214765))

(declare-fun m!214767 () Bool)

(assert (=> b!188051 m!214767))

(assert (=> b!188053 m!214649))

(assert (=> b!188053 m!214765))

(assert (=> b!188053 m!214765))

(assert (=> b!188053 m!214767))

(assert (=> b!187943 d!55461))

(declare-fun d!55463 () Bool)

(declare-fun res!88919 () Bool)

(declare-fun e!123772 () Bool)

(assert (=> d!55463 (=> res!88919 e!123772)))

(assert (=> d!55463 (= res!88919 (= (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000) key!828))))

(assert (=> d!55463 (= (arrayContainsKey!0 (_keys!5786 thiss!1248) key!828 #b00000000000000000000000000000000) e!123772)))

(declare-fun b!188058 () Bool)

(declare-fun e!123773 () Bool)

(assert (=> b!188058 (= e!123772 e!123773)))

(declare-fun res!88920 () Bool)

(assert (=> b!188058 (=> (not res!88920) (not e!123773))))

(assert (=> b!188058 (= res!88920 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4091 (_keys!5786 thiss!1248))))))

(declare-fun b!188059 () Bool)

(assert (=> b!188059 (= e!123773 (arrayContainsKey!0 (_keys!5786 thiss!1248) key!828 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!55463 (not res!88919)) b!188058))

(assert (= (and b!188058 res!88920) b!188059))

(assert (=> d!55463 m!214649))

(declare-fun m!214769 () Bool)

(assert (=> b!188059 m!214769))

(assert (=> bm!18928 d!55463))

(declare-fun b!188078 () Bool)

(declare-fun lt!93121 () SeekEntryResult!660)

(assert (=> b!188078 (and (bvsge (index!4812 lt!93121) #b00000000000000000000000000000000) (bvslt (index!4812 lt!93121) (size!4091 (_keys!5786 thiss!1248))))))

(declare-fun res!88929 () Bool)

(assert (=> b!188078 (= res!88929 (= (select (arr!3772 (_keys!5786 thiss!1248)) (index!4812 lt!93121)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!123784 () Bool)

(assert (=> b!188078 (=> res!88929 e!123784)))

(declare-fun b!188079 () Bool)

(assert (=> b!188079 (and (bvsge (index!4812 lt!93121) #b00000000000000000000000000000000) (bvslt (index!4812 lt!93121) (size!4091 (_keys!5786 thiss!1248))))))

(declare-fun res!88927 () Bool)

(assert (=> b!188079 (= res!88927 (= (select (arr!3772 (_keys!5786 thiss!1248)) (index!4812 lt!93121)) key!828))))

(assert (=> b!188079 (=> res!88927 e!123784)))

(declare-fun e!123787 () Bool)

(assert (=> b!188079 (= e!123787 e!123784)))

(declare-fun b!188080 () Bool)

(declare-fun e!123785 () SeekEntryResult!660)

(assert (=> b!188080 (= e!123785 (Intermediate!660 false (toIndex!0 key!828 (mask!8985 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!188081 () Bool)

(declare-fun e!123786 () Bool)

(assert (=> b!188081 (= e!123786 e!123787)))

(declare-fun res!88928 () Bool)

(assert (=> b!188081 (= res!88928 (and ((_ is Intermediate!660) lt!93121) (not (undefined!1472 lt!93121)) (bvslt (x!20320 lt!93121) #b01111111111111111111111111111110) (bvsge (x!20320 lt!93121) #b00000000000000000000000000000000) (bvsge (x!20320 lt!93121) #b00000000000000000000000000000000)))))

(assert (=> b!188081 (=> (not res!88928) (not e!123787))))

(declare-fun b!188082 () Bool)

(assert (=> b!188082 (and (bvsge (index!4812 lt!93121) #b00000000000000000000000000000000) (bvslt (index!4812 lt!93121) (size!4091 (_keys!5786 thiss!1248))))))

(assert (=> b!188082 (= e!123784 (= (select (arr!3772 (_keys!5786 thiss!1248)) (index!4812 lt!93121)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!188083 () Bool)

(assert (=> b!188083 (= e!123786 (bvsge (x!20320 lt!93121) #b01111111111111111111111111111110))))

(declare-fun d!55465 () Bool)

(assert (=> d!55465 e!123786))

(declare-fun c!33788 () Bool)

(assert (=> d!55465 (= c!33788 (and ((_ is Intermediate!660) lt!93121) (undefined!1472 lt!93121)))))

(declare-fun e!123788 () SeekEntryResult!660)

(assert (=> d!55465 (= lt!93121 e!123788)))

(declare-fun c!33789 () Bool)

(assert (=> d!55465 (= c!33789 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!93122 () (_ BitVec 64))

(assert (=> d!55465 (= lt!93122 (select (arr!3772 (_keys!5786 thiss!1248)) (toIndex!0 key!828 (mask!8985 thiss!1248))))))

(assert (=> d!55465 (validMask!0 (mask!8985 thiss!1248))))

(assert (=> d!55465 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8985 thiss!1248)) key!828 (_keys!5786 thiss!1248) (mask!8985 thiss!1248)) lt!93121)))

(declare-fun b!188084 () Bool)

(assert (=> b!188084 (= e!123788 e!123785)))

(declare-fun c!33790 () Bool)

(assert (=> b!188084 (= c!33790 (or (= lt!93122 key!828) (= (bvadd lt!93122 lt!93122) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!188085 () Bool)

(assert (=> b!188085 (= e!123788 (Intermediate!660 true (toIndex!0 key!828 (mask!8985 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!188086 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!188086 (= e!123785 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8985 thiss!1248)) #b00000000000000000000000000000000 (mask!8985 thiss!1248)) key!828 (_keys!5786 thiss!1248) (mask!8985 thiss!1248)))))

(assert (= (and d!55465 c!33789) b!188085))

(assert (= (and d!55465 (not c!33789)) b!188084))

(assert (= (and b!188084 c!33790) b!188080))

(assert (= (and b!188084 (not c!33790)) b!188086))

(assert (= (and d!55465 c!33788) b!188083))

(assert (= (and d!55465 (not c!33788)) b!188081))

(assert (= (and b!188081 res!88928) b!188079))

(assert (= (and b!188079 (not res!88927)) b!188078))

(assert (= (and b!188078 (not res!88929)) b!188082))

(declare-fun m!214771 () Bool)

(assert (=> b!188082 m!214771))

(assert (=> b!188086 m!214607))

(declare-fun m!214773 () Bool)

(assert (=> b!188086 m!214773))

(assert (=> b!188086 m!214773))

(declare-fun m!214775 () Bool)

(assert (=> b!188086 m!214775))

(assert (=> b!188078 m!214771))

(assert (=> d!55465 m!214607))

(declare-fun m!214777 () Bool)

(assert (=> d!55465 m!214777))

(assert (=> d!55465 m!214565))

(assert (=> b!188079 m!214771))

(assert (=> d!55425 d!55465))

(declare-fun d!55467 () Bool)

(declare-fun lt!93128 () (_ BitVec 32))

(declare-fun lt!93127 () (_ BitVec 32))

(assert (=> d!55467 (= lt!93128 (bvmul (bvxor lt!93127 (bvlshr lt!93127 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!55467 (= lt!93127 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!55467 (and (bvsge (mask!8985 thiss!1248) #b00000000000000000000000000000000) (let ((res!88930 (let ((h!3040 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!20338 (bvmul (bvxor h!3040 (bvlshr h!3040 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!20338 (bvlshr x!20338 #b00000000000000000000000000001101)) (mask!8985 thiss!1248)))))) (and (bvslt res!88930 (bvadd (mask!8985 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!88930 #b00000000000000000000000000000000))))))

(assert (=> d!55467 (= (toIndex!0 key!828 (mask!8985 thiss!1248)) (bvand (bvxor lt!93128 (bvlshr lt!93128 #b00000000000000000000000000001101)) (mask!8985 thiss!1248)))))

(assert (=> d!55425 d!55467))

(assert (=> d!55425 d!55435))

(declare-fun d!55469 () Bool)

(assert (=> d!55469 (= (apply!172 lt!93066 (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000)) (get!2174 (getValueByKey!228 (toList!1220 lt!93066) (select (arr!3772 (_keys!5786 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7578 () Bool)

(assert (= bs!7578 d!55469))

(assert (=> bs!7578 m!214649))

(assert (=> bs!7578 m!214765))

(assert (=> bs!7578 m!214765))

(declare-fun m!214779 () Bool)

(assert (=> bs!7578 m!214779))

(assert (=> b!187947 d!55469))

(declare-fun d!55471 () Bool)

(declare-fun c!33793 () Bool)

(assert (=> d!55471 (= c!33793 ((_ is ValueCellFull!1851) (select (arr!3773 (_values!3814 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!123791 () V!5499)

(assert (=> d!55471 (= (get!2173 (select (arr!3773 (_values!3814 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!510 (defaultEntry!3831 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!123791)))

(declare-fun b!188091 () Bool)

(declare-fun get!2175 (ValueCell!1851 V!5499) V!5499)

(assert (=> b!188091 (= e!123791 (get!2175 (select (arr!3773 (_values!3814 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!510 (defaultEntry!3831 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!188092 () Bool)

(declare-fun get!2176 (ValueCell!1851 V!5499) V!5499)

(assert (=> b!188092 (= e!123791 (get!2176 (select (arr!3773 (_values!3814 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!510 (defaultEntry!3831 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55471 c!33793) b!188091))

(assert (= (and d!55471 (not c!33793)) b!188092))

(assert (=> b!188091 m!214655))

(assert (=> b!188091 m!214657))

(declare-fun m!214781 () Bool)

(assert (=> b!188091 m!214781))

(assert (=> b!188092 m!214655))

(assert (=> b!188092 m!214657))

(declare-fun m!214783 () Bool)

(assert (=> b!188092 m!214783))

(assert (=> b!187947 d!55471))

(declare-fun d!55473 () Bool)

(assert (=> d!55473 (isDefined!182 (getValueByKey!228 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248))) key!828))))

(declare-fun lt!93131 () Unit!5658)

(declare-fun choose!1011 (List!2405 (_ BitVec 64)) Unit!5658)

(assert (=> d!55473 (= lt!93131 (choose!1011 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248))) key!828))))

(declare-fun e!123794 () Bool)

(assert (=> d!55473 e!123794))

(declare-fun res!88933 () Bool)

(assert (=> d!55473 (=> (not res!88933) (not e!123794))))

(declare-fun isStrictlySorted!347 (List!2405) Bool)

(assert (=> d!55473 (= res!88933 (isStrictlySorted!347 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248)))))))

(assert (=> d!55473 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!181 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248))) key!828) lt!93131)))

(declare-fun b!188095 () Bool)

(assert (=> b!188095 (= e!123794 (containsKey!232 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248))) key!828))))

(assert (= (and d!55473 res!88933) b!188095))

(assert (=> d!55473 m!214645))

(assert (=> d!55473 m!214645))

(assert (=> d!55473 m!214647))

(declare-fun m!214785 () Bool)

(assert (=> d!55473 m!214785))

(declare-fun m!214787 () Bool)

(assert (=> d!55473 m!214787))

(assert (=> b!188095 m!214641))

(assert (=> b!187882 d!55473))

(declare-fun d!55475 () Bool)

(declare-fun isEmpty!483 (Option!234) Bool)

(assert (=> d!55475 (= (isDefined!182 (getValueByKey!228 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248))) key!828)) (not (isEmpty!483 (getValueByKey!228 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248))) key!828))))))

(declare-fun bs!7579 () Bool)

(assert (= bs!7579 d!55475))

(assert (=> bs!7579 m!214645))

(declare-fun m!214789 () Bool)

(assert (=> bs!7579 m!214789))

(assert (=> b!187882 d!55475))

(declare-fun b!188105 () Bool)

(declare-fun e!123799 () Option!234)

(declare-fun e!123800 () Option!234)

(assert (=> b!188105 (= e!123799 e!123800)))

(declare-fun c!33799 () Bool)

(assert (=> b!188105 (= c!33799 (and ((_ is Cons!2401) (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248)))) (not (= (_1!1749 (h!3037 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248))))) key!828))))))

(declare-fun b!188107 () Bool)

(assert (=> b!188107 (= e!123800 None!232)))

(declare-fun b!188104 () Bool)

(assert (=> b!188104 (= e!123799 (Some!233 (_2!1749 (h!3037 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248)))))))))

(declare-fun b!188106 () Bool)

(assert (=> b!188106 (= e!123800 (getValueByKey!228 (t!7307 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248)))) key!828))))

(declare-fun d!55477 () Bool)

(declare-fun c!33798 () Bool)

(assert (=> d!55477 (= c!33798 (and ((_ is Cons!2401) (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248)))) (= (_1!1749 (h!3037 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248))))) key!828)))))

(assert (=> d!55477 (= (getValueByKey!228 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248))) key!828) e!123799)))

(assert (= (and d!55477 c!33798) b!188104))

(assert (= (and d!55477 (not c!33798)) b!188105))

(assert (= (and b!188105 c!33799) b!188106))

(assert (= (and b!188105 (not c!33799)) b!188107))

(declare-fun m!214791 () Bool)

(assert (=> b!188106 m!214791))

(assert (=> b!187882 d!55477))

(declare-fun b!188120 () Bool)

(declare-fun e!123807 () SeekEntryResult!660)

(assert (=> b!188120 (= e!123807 (Found!660 (index!4812 lt!92975)))))

(declare-fun b!188121 () Bool)

(declare-fun e!123809 () SeekEntryResult!660)

(assert (=> b!188121 (= e!123809 (MissingVacant!660 (index!4812 lt!92975)))))

(declare-fun b!188122 () Bool)

(declare-fun e!123808 () SeekEntryResult!660)

(assert (=> b!188122 (= e!123808 Undefined!660)))

(declare-fun b!188124 () Bool)

(assert (=> b!188124 (= e!123808 e!123807)))

(declare-fun c!33806 () Bool)

(declare-fun lt!93136 () (_ BitVec 64))

(assert (=> b!188124 (= c!33806 (= lt!93136 key!828))))

(declare-fun b!188125 () Bool)

(declare-fun c!33808 () Bool)

(assert (=> b!188125 (= c!33808 (= lt!93136 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!188125 (= e!123807 e!123809)))

(declare-fun b!188123 () Bool)

(assert (=> b!188123 (= e!123809 (seekKeyOrZeroReturnVacant!0 (bvadd (x!20320 lt!92975) #b00000000000000000000000000000001) (nextIndex!0 (index!4812 lt!92975) (x!20320 lt!92975) (mask!8985 thiss!1248)) (index!4812 lt!92975) key!828 (_keys!5786 thiss!1248) (mask!8985 thiss!1248)))))

(declare-fun lt!93137 () SeekEntryResult!660)

(declare-fun d!55479 () Bool)

(assert (=> d!55479 (and (or ((_ is Undefined!660) lt!93137) (not ((_ is Found!660) lt!93137)) (and (bvsge (index!4811 lt!93137) #b00000000000000000000000000000000) (bvslt (index!4811 lt!93137) (size!4091 (_keys!5786 thiss!1248))))) (or ((_ is Undefined!660) lt!93137) ((_ is Found!660) lt!93137) (not ((_ is MissingVacant!660) lt!93137)) (not (= (index!4813 lt!93137) (index!4812 lt!92975))) (and (bvsge (index!4813 lt!93137) #b00000000000000000000000000000000) (bvslt (index!4813 lt!93137) (size!4091 (_keys!5786 thiss!1248))))) (or ((_ is Undefined!660) lt!93137) (ite ((_ is Found!660) lt!93137) (= (select (arr!3772 (_keys!5786 thiss!1248)) (index!4811 lt!93137)) key!828) (and ((_ is MissingVacant!660) lt!93137) (= (index!4813 lt!93137) (index!4812 lt!92975)) (= (select (arr!3772 (_keys!5786 thiss!1248)) (index!4813 lt!93137)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!55479 (= lt!93137 e!123808)))

(declare-fun c!33807 () Bool)

(assert (=> d!55479 (= c!33807 (bvsge (x!20320 lt!92975) #b01111111111111111111111111111110))))

(assert (=> d!55479 (= lt!93136 (select (arr!3772 (_keys!5786 thiss!1248)) (index!4812 lt!92975)))))

(assert (=> d!55479 (validMask!0 (mask!8985 thiss!1248))))

(assert (=> d!55479 (= (seekKeyOrZeroReturnVacant!0 (x!20320 lt!92975) (index!4812 lt!92975) (index!4812 lt!92975) key!828 (_keys!5786 thiss!1248) (mask!8985 thiss!1248)) lt!93137)))

(assert (= (and d!55479 c!33807) b!188122))

(assert (= (and d!55479 (not c!33807)) b!188124))

(assert (= (and b!188124 c!33806) b!188120))

(assert (= (and b!188124 (not c!33806)) b!188125))

(assert (= (and b!188125 c!33808) b!188121))

(assert (= (and b!188125 (not c!33808)) b!188123))

(declare-fun m!214793 () Bool)

(assert (=> b!188123 m!214793))

(assert (=> b!188123 m!214793))

(declare-fun m!214795 () Bool)

(assert (=> b!188123 m!214795))

(declare-fun m!214797 () Bool)

(assert (=> d!55479 m!214797))

(declare-fun m!214799 () Bool)

(assert (=> d!55479 m!214799))

(assert (=> d!55479 m!214605))

(assert (=> d!55479 m!214565))

(assert (=> b!187832 d!55479))

(declare-fun d!55481 () Bool)

(assert (=> d!55481 (= (apply!172 lt!93066 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2174 (getValueByKey!228 (toList!1220 lt!93066) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7580 () Bool)

(assert (= bs!7580 d!55481))

(declare-fun m!214801 () Bool)

(assert (=> bs!7580 m!214801))

(assert (=> bs!7580 m!214801))

(declare-fun m!214803 () Bool)

(assert (=> bs!7580 m!214803))

(assert (=> b!187932 d!55481))

(assert (=> b!187884 d!55475))

(assert (=> b!187884 d!55477))

(declare-fun d!55483 () Bool)

(declare-fun e!123810 () Bool)

(assert (=> d!55483 e!123810))

(declare-fun res!88934 () Bool)

(assert (=> d!55483 (=> res!88934 e!123810)))

(declare-fun lt!93139 () Bool)

(assert (=> d!55483 (= res!88934 (not lt!93139))))

(declare-fun lt!93141 () Bool)

(assert (=> d!55483 (= lt!93139 lt!93141)))

(declare-fun lt!93138 () Unit!5658)

(declare-fun e!123811 () Unit!5658)

(assert (=> d!55483 (= lt!93138 e!123811)))

(declare-fun c!33809 () Bool)

(assert (=> d!55483 (= c!33809 lt!93141)))

(assert (=> d!55483 (= lt!93141 (containsKey!232 (toList!1220 lt!93066) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!55483 (= (contains!1316 lt!93066 #b1000000000000000000000000000000000000000000000000000000000000000) lt!93139)))

(declare-fun b!188126 () Bool)

(declare-fun lt!93140 () Unit!5658)

(assert (=> b!188126 (= e!123811 lt!93140)))

(assert (=> b!188126 (= lt!93140 (lemmaContainsKeyImpliesGetValueByKeyDefined!181 (toList!1220 lt!93066) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!188126 (isDefined!182 (getValueByKey!228 (toList!1220 lt!93066) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!188127 () Bool)

(declare-fun Unit!5667 () Unit!5658)

(assert (=> b!188127 (= e!123811 Unit!5667)))

(declare-fun b!188128 () Bool)

(assert (=> b!188128 (= e!123810 (isDefined!182 (getValueByKey!228 (toList!1220 lt!93066) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55483 c!33809) b!188126))

(assert (= (and d!55483 (not c!33809)) b!188127))

(assert (= (and d!55483 (not res!88934)) b!188128))

(declare-fun m!214805 () Bool)

(assert (=> d!55483 m!214805))

(declare-fun m!214807 () Bool)

(assert (=> b!188126 m!214807))

(assert (=> b!188126 m!214801))

(assert (=> b!188126 m!214801))

(declare-fun m!214809 () Bool)

(assert (=> b!188126 m!214809))

(assert (=> b!188128 m!214801))

(assert (=> b!188128 m!214801))

(assert (=> b!188128 m!214809))

(assert (=> bm!18946 d!55483))

(assert (=> d!55427 d!55425))

(declare-fun b!188145 () Bool)

(declare-fun e!123822 () Bool)

(declare-fun call!18971 () Bool)

(assert (=> b!188145 (= e!123822 (not call!18971))))

(declare-fun b!188146 () Bool)

(declare-fun e!123823 () Bool)

(assert (=> b!188146 (= e!123823 (not call!18971))))

(declare-fun b!188147 () Bool)

(declare-fun res!88943 () Bool)

(assert (=> b!188147 (=> (not res!88943) (not e!123823))))

(declare-fun lt!93144 () SeekEntryResult!660)

(assert (=> b!188147 (= res!88943 (= (select (arr!3772 (_keys!5786 thiss!1248)) (index!4813 lt!93144)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!188148 () Bool)

(declare-fun e!123820 () Bool)

(declare-fun e!123821 () Bool)

(assert (=> b!188148 (= e!123820 e!123821)))

(declare-fun c!33814 () Bool)

(assert (=> b!188148 (= c!33814 ((_ is MissingVacant!660) lt!93144))))

(declare-fun call!18970 () Bool)

(declare-fun bm!18967 () Bool)

(declare-fun c!33815 () Bool)

(assert (=> bm!18967 (= call!18970 (inRange!0 (ite c!33815 (index!4810 lt!93144) (index!4813 lt!93144)) (mask!8985 thiss!1248)))))

(declare-fun b!188149 () Bool)

(declare-fun res!88946 () Bool)

(assert (=> b!188149 (= res!88946 (= (select (arr!3772 (_keys!5786 thiss!1248)) (index!4810 lt!93144)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!188149 (=> (not res!88946) (not e!123822))))

(declare-fun b!188150 () Bool)

(assert (=> b!188150 (= e!123821 ((_ is Undefined!660) lt!93144))))

(declare-fun b!188151 () Bool)

(declare-fun res!88944 () Bool)

(assert (=> b!188151 (=> (not res!88944) (not e!123823))))

(assert (=> b!188151 (= res!88944 call!18970)))

(assert (=> b!188151 (= e!123821 e!123823)))

(declare-fun bm!18968 () Bool)

(assert (=> bm!18968 (= call!18971 (arrayContainsKey!0 (_keys!5786 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!188152 () Bool)

(assert (=> b!188152 (= e!123820 e!123822)))

(declare-fun res!88945 () Bool)

(assert (=> b!188152 (= res!88945 call!18970)))

(assert (=> b!188152 (=> (not res!88945) (not e!123822))))

(declare-fun d!55485 () Bool)

(assert (=> d!55485 e!123820))

(assert (=> d!55485 (= c!33815 ((_ is MissingZero!660) lt!93144))))

(assert (=> d!55485 (= lt!93144 (seekEntryOrOpen!0 key!828 (_keys!5786 thiss!1248) (mask!8985 thiss!1248)))))

(assert (=> d!55485 true))

(declare-fun _$34!1069 () Unit!5658)

(assert (=> d!55485 (= (choose!1009 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) key!828 (defaultEntry!3831 thiss!1248)) _$34!1069)))

(assert (= (and d!55485 c!33815) b!188152))

(assert (= (and d!55485 (not c!33815)) b!188148))

(assert (= (and b!188152 res!88945) b!188149))

(assert (= (and b!188149 res!88946) b!188145))

(assert (= (and b!188148 c!33814) b!188151))

(assert (= (and b!188148 (not c!33814)) b!188150))

(assert (= (and b!188151 res!88944) b!188147))

(assert (= (and b!188147 res!88943) b!188146))

(assert (= (or b!188152 b!188151) bm!18967))

(assert (= (or b!188145 b!188146) bm!18968))

(declare-fun m!214811 () Bool)

(assert (=> bm!18967 m!214811))

(declare-fun m!214813 () Bool)

(assert (=> b!188149 m!214813))

(assert (=> bm!18968 m!214617))

(assert (=> d!55485 m!214563))

(declare-fun m!214815 () Bool)

(assert (=> b!188147 m!214815))

(assert (=> d!55427 d!55485))

(assert (=> d!55427 d!55435))

(declare-fun d!55487 () Bool)

(declare-fun e!123824 () Bool)

(assert (=> d!55487 e!123824))

(declare-fun res!88947 () Bool)

(assert (=> d!55487 (=> res!88947 e!123824)))

(declare-fun lt!93146 () Bool)

(assert (=> d!55487 (= res!88947 (not lt!93146))))

(declare-fun lt!93148 () Bool)

(assert (=> d!55487 (= lt!93146 lt!93148)))

(declare-fun lt!93145 () Unit!5658)

(declare-fun e!123825 () Unit!5658)

(assert (=> d!55487 (= lt!93145 e!123825)))

(declare-fun c!33816 () Bool)

(assert (=> d!55487 (= c!33816 lt!93148)))

(assert (=> d!55487 (= lt!93148 (containsKey!232 (toList!1220 (+!287 lt!93052 (tuple2!3479 lt!93059 (zeroValue!3672 thiss!1248)))) lt!93048))))

(assert (=> d!55487 (= (contains!1316 (+!287 lt!93052 (tuple2!3479 lt!93059 (zeroValue!3672 thiss!1248))) lt!93048) lt!93146)))

(declare-fun b!188153 () Bool)

(declare-fun lt!93147 () Unit!5658)

(assert (=> b!188153 (= e!123825 lt!93147)))

(assert (=> b!188153 (= lt!93147 (lemmaContainsKeyImpliesGetValueByKeyDefined!181 (toList!1220 (+!287 lt!93052 (tuple2!3479 lt!93059 (zeroValue!3672 thiss!1248)))) lt!93048))))

(assert (=> b!188153 (isDefined!182 (getValueByKey!228 (toList!1220 (+!287 lt!93052 (tuple2!3479 lt!93059 (zeroValue!3672 thiss!1248)))) lt!93048))))

(declare-fun b!188154 () Bool)

(declare-fun Unit!5668 () Unit!5658)

(assert (=> b!188154 (= e!123825 Unit!5668)))

(declare-fun b!188155 () Bool)

(assert (=> b!188155 (= e!123824 (isDefined!182 (getValueByKey!228 (toList!1220 (+!287 lt!93052 (tuple2!3479 lt!93059 (zeroValue!3672 thiss!1248)))) lt!93048)))))

(assert (= (and d!55487 c!33816) b!188153))

(assert (= (and d!55487 (not c!33816)) b!188154))

(assert (= (and d!55487 (not res!88947)) b!188155))

(declare-fun m!214817 () Bool)

(assert (=> d!55487 m!214817))

(declare-fun m!214819 () Bool)

(assert (=> b!188153 m!214819))

(declare-fun m!214821 () Bool)

(assert (=> b!188153 m!214821))

(assert (=> b!188153 m!214821))

(declare-fun m!214823 () Bool)

(assert (=> b!188153 m!214823))

(assert (=> b!188155 m!214821))

(assert (=> b!188155 m!214821))

(assert (=> b!188155 m!214823))

(assert (=> b!187933 d!55487))

(assert (=> b!187933 d!55451))

(declare-fun d!55489 () Bool)

(assert (=> d!55489 (= (apply!172 (+!287 lt!93053 (tuple2!3479 lt!93063 (minValue!3672 thiss!1248))) lt!93064) (apply!172 lt!93053 lt!93064))))

(declare-fun lt!93151 () Unit!5658)

(declare-fun choose!1012 (ListLongMap!2409 (_ BitVec 64) V!5499 (_ BitVec 64)) Unit!5658)

(assert (=> d!55489 (= lt!93151 (choose!1012 lt!93053 lt!93063 (minValue!3672 thiss!1248) lt!93064))))

(declare-fun e!123828 () Bool)

(assert (=> d!55489 e!123828))

(declare-fun res!88950 () Bool)

(assert (=> d!55489 (=> (not res!88950) (not e!123828))))

(assert (=> d!55489 (= res!88950 (contains!1316 lt!93053 lt!93064))))

(assert (=> d!55489 (= (addApplyDifferent!148 lt!93053 lt!93063 (minValue!3672 thiss!1248) lt!93064) lt!93151)))

(declare-fun b!188159 () Bool)

(assert (=> b!188159 (= e!123828 (not (= lt!93064 lt!93063)))))

(assert (= (and d!55489 res!88950) b!188159))

(declare-fun m!214825 () Bool)

(assert (=> d!55489 m!214825))

(assert (=> d!55489 m!214679))

(assert (=> d!55489 m!214681))

(assert (=> d!55489 m!214699))

(assert (=> d!55489 m!214679))

(declare-fun m!214827 () Bool)

(assert (=> d!55489 m!214827))

(assert (=> b!187933 d!55489))

(declare-fun d!55491 () Bool)

(assert (=> d!55491 (= (apply!172 lt!93053 lt!93064) (get!2174 (getValueByKey!228 (toList!1220 lt!93053) lt!93064)))))

(declare-fun bs!7581 () Bool)

(assert (= bs!7581 d!55491))

(declare-fun m!214829 () Bool)

(assert (=> bs!7581 m!214829))

(assert (=> bs!7581 m!214829))

(declare-fun m!214831 () Bool)

(assert (=> bs!7581 m!214831))

(assert (=> b!187933 d!55491))

(declare-fun d!55493 () Bool)

(assert (=> d!55493 (= (apply!172 (+!287 lt!93061 (tuple2!3479 lt!93055 (minValue!3672 thiss!1248))) lt!93047) (get!2174 (getValueByKey!228 (toList!1220 (+!287 lt!93061 (tuple2!3479 lt!93055 (minValue!3672 thiss!1248)))) lt!93047)))))

(declare-fun bs!7582 () Bool)

(assert (= bs!7582 d!55493))

(declare-fun m!214833 () Bool)

(assert (=> bs!7582 m!214833))

(assert (=> bs!7582 m!214833))

(declare-fun m!214835 () Bool)

(assert (=> bs!7582 m!214835))

(assert (=> b!187933 d!55493))

(declare-fun d!55495 () Bool)

(declare-fun e!123829 () Bool)

(assert (=> d!55495 e!123829))

(declare-fun res!88952 () Bool)

(assert (=> d!55495 (=> (not res!88952) (not e!123829))))

(declare-fun lt!93154 () ListLongMap!2409)

(assert (=> d!55495 (= res!88952 (contains!1316 lt!93154 (_1!1749 (tuple2!3479 lt!93063 (minValue!3672 thiss!1248)))))))

(declare-fun lt!93152 () List!2405)

(assert (=> d!55495 (= lt!93154 (ListLongMap!2410 lt!93152))))

(declare-fun lt!93153 () Unit!5658)

(declare-fun lt!93155 () Unit!5658)

(assert (=> d!55495 (= lt!93153 lt!93155)))

(assert (=> d!55495 (= (getValueByKey!228 lt!93152 (_1!1749 (tuple2!3479 lt!93063 (minValue!3672 thiss!1248)))) (Some!233 (_2!1749 (tuple2!3479 lt!93063 (minValue!3672 thiss!1248)))))))

(assert (=> d!55495 (= lt!93155 (lemmaContainsTupThenGetReturnValue!121 lt!93152 (_1!1749 (tuple2!3479 lt!93063 (minValue!3672 thiss!1248))) (_2!1749 (tuple2!3479 lt!93063 (minValue!3672 thiss!1248)))))))

(assert (=> d!55495 (= lt!93152 (insertStrictlySorted!123 (toList!1220 lt!93053) (_1!1749 (tuple2!3479 lt!93063 (minValue!3672 thiss!1248))) (_2!1749 (tuple2!3479 lt!93063 (minValue!3672 thiss!1248)))))))

(assert (=> d!55495 (= (+!287 lt!93053 (tuple2!3479 lt!93063 (minValue!3672 thiss!1248))) lt!93154)))

(declare-fun b!188160 () Bool)

(declare-fun res!88951 () Bool)

(assert (=> b!188160 (=> (not res!88951) (not e!123829))))

(assert (=> b!188160 (= res!88951 (= (getValueByKey!228 (toList!1220 lt!93154) (_1!1749 (tuple2!3479 lt!93063 (minValue!3672 thiss!1248)))) (Some!233 (_2!1749 (tuple2!3479 lt!93063 (minValue!3672 thiss!1248))))))))

(declare-fun b!188161 () Bool)

(assert (=> b!188161 (= e!123829 (contains!1318 (toList!1220 lt!93154) (tuple2!3479 lt!93063 (minValue!3672 thiss!1248))))))

(assert (= (and d!55495 res!88952) b!188160))

(assert (= (and b!188160 res!88951) b!188161))

(declare-fun m!214837 () Bool)

(assert (=> d!55495 m!214837))

(declare-fun m!214839 () Bool)

(assert (=> d!55495 m!214839))

(declare-fun m!214841 () Bool)

(assert (=> d!55495 m!214841))

(declare-fun m!214843 () Bool)

(assert (=> d!55495 m!214843))

(declare-fun m!214845 () Bool)

(assert (=> b!188160 m!214845))

(declare-fun m!214847 () Bool)

(assert (=> b!188161 m!214847))

(assert (=> b!187933 d!55495))

(declare-fun d!55497 () Bool)

(assert (=> d!55497 (= (apply!172 (+!287 lt!93053 (tuple2!3479 lt!93063 (minValue!3672 thiss!1248))) lt!93064) (get!2174 (getValueByKey!228 (toList!1220 (+!287 lt!93053 (tuple2!3479 lt!93063 (minValue!3672 thiss!1248)))) lt!93064)))))

(declare-fun bs!7583 () Bool)

(assert (= bs!7583 d!55497))

(declare-fun m!214849 () Bool)

(assert (=> bs!7583 m!214849))

(assert (=> bs!7583 m!214849))

(declare-fun m!214851 () Bool)

(assert (=> bs!7583 m!214851))

(assert (=> b!187933 d!55497))

(declare-fun d!55499 () Bool)

(assert (=> d!55499 (= (apply!172 lt!93061 lt!93047) (get!2174 (getValueByKey!228 (toList!1220 lt!93061) lt!93047)))))

(declare-fun bs!7584 () Bool)

(assert (= bs!7584 d!55499))

(declare-fun m!214853 () Bool)

(assert (=> bs!7584 m!214853))

(assert (=> bs!7584 m!214853))

(declare-fun m!214855 () Bool)

(assert (=> bs!7584 m!214855))

(assert (=> b!187933 d!55499))

(declare-fun d!55501 () Bool)

(declare-fun e!123830 () Bool)

(assert (=> d!55501 e!123830))

(declare-fun res!88954 () Bool)

(assert (=> d!55501 (=> (not res!88954) (not e!123830))))

(declare-fun lt!93158 () ListLongMap!2409)

(assert (=> d!55501 (= res!88954 (contains!1316 lt!93158 (_1!1749 (tuple2!3479 lt!93055 (minValue!3672 thiss!1248)))))))

(declare-fun lt!93156 () List!2405)

(assert (=> d!55501 (= lt!93158 (ListLongMap!2410 lt!93156))))

(declare-fun lt!93157 () Unit!5658)

(declare-fun lt!93159 () Unit!5658)

(assert (=> d!55501 (= lt!93157 lt!93159)))

(assert (=> d!55501 (= (getValueByKey!228 lt!93156 (_1!1749 (tuple2!3479 lt!93055 (minValue!3672 thiss!1248)))) (Some!233 (_2!1749 (tuple2!3479 lt!93055 (minValue!3672 thiss!1248)))))))

(assert (=> d!55501 (= lt!93159 (lemmaContainsTupThenGetReturnValue!121 lt!93156 (_1!1749 (tuple2!3479 lt!93055 (minValue!3672 thiss!1248))) (_2!1749 (tuple2!3479 lt!93055 (minValue!3672 thiss!1248)))))))

(assert (=> d!55501 (= lt!93156 (insertStrictlySorted!123 (toList!1220 lt!93061) (_1!1749 (tuple2!3479 lt!93055 (minValue!3672 thiss!1248))) (_2!1749 (tuple2!3479 lt!93055 (minValue!3672 thiss!1248)))))))

(assert (=> d!55501 (= (+!287 lt!93061 (tuple2!3479 lt!93055 (minValue!3672 thiss!1248))) lt!93158)))

(declare-fun b!188162 () Bool)

(declare-fun res!88953 () Bool)

(assert (=> b!188162 (=> (not res!88953) (not e!123830))))

(assert (=> b!188162 (= res!88953 (= (getValueByKey!228 (toList!1220 lt!93158) (_1!1749 (tuple2!3479 lt!93055 (minValue!3672 thiss!1248)))) (Some!233 (_2!1749 (tuple2!3479 lt!93055 (minValue!3672 thiss!1248))))))))

(declare-fun b!188163 () Bool)

(assert (=> b!188163 (= e!123830 (contains!1318 (toList!1220 lt!93158) (tuple2!3479 lt!93055 (minValue!3672 thiss!1248))))))

(assert (= (and d!55501 res!88954) b!188162))

(assert (= (and b!188162 res!88953) b!188163))

(declare-fun m!214857 () Bool)

(assert (=> d!55501 m!214857))

(declare-fun m!214859 () Bool)

(assert (=> d!55501 m!214859))

(declare-fun m!214861 () Bool)

(assert (=> d!55501 m!214861))

(declare-fun m!214863 () Bool)

(assert (=> d!55501 m!214863))

(declare-fun m!214865 () Bool)

(assert (=> b!188162 m!214865))

(declare-fun m!214867 () Bool)

(assert (=> b!188163 m!214867))

(assert (=> b!187933 d!55501))

(declare-fun d!55503 () Bool)

(assert (=> d!55503 (contains!1316 (+!287 lt!93052 (tuple2!3479 lt!93059 (zeroValue!3672 thiss!1248))) lt!93048)))

(declare-fun lt!93162 () Unit!5658)

(declare-fun choose!1013 (ListLongMap!2409 (_ BitVec 64) V!5499 (_ BitVec 64)) Unit!5658)

(assert (=> d!55503 (= lt!93162 (choose!1013 lt!93052 lt!93059 (zeroValue!3672 thiss!1248) lt!93048))))

(assert (=> d!55503 (contains!1316 lt!93052 lt!93048)))

(assert (=> d!55503 (= (addStillContains!148 lt!93052 lt!93059 (zeroValue!3672 thiss!1248) lt!93048) lt!93162)))

(declare-fun bs!7585 () Bool)

(assert (= bs!7585 d!55503))

(assert (=> bs!7585 m!214691))

(assert (=> bs!7585 m!214691))

(assert (=> bs!7585 m!214695))

(declare-fun m!214869 () Bool)

(assert (=> bs!7585 m!214869))

(declare-fun m!214871 () Bool)

(assert (=> bs!7585 m!214871))

(assert (=> b!187933 d!55503))

(declare-fun d!55505 () Bool)

(assert (=> d!55505 (= (apply!172 (+!287 lt!93046 (tuple2!3479 lt!93051 (zeroValue!3672 thiss!1248))) lt!93058) (get!2174 (getValueByKey!228 (toList!1220 (+!287 lt!93046 (tuple2!3479 lt!93051 (zeroValue!3672 thiss!1248)))) lt!93058)))))

(declare-fun bs!7586 () Bool)

(assert (= bs!7586 d!55505))

(declare-fun m!214873 () Bool)

(assert (=> bs!7586 m!214873))

(assert (=> bs!7586 m!214873))

(declare-fun m!214875 () Bool)

(assert (=> bs!7586 m!214875))

(assert (=> b!187933 d!55505))

(declare-fun d!55507 () Bool)

(assert (=> d!55507 (= (apply!172 (+!287 lt!93061 (tuple2!3479 lt!93055 (minValue!3672 thiss!1248))) lt!93047) (apply!172 lt!93061 lt!93047))))

(declare-fun lt!93163 () Unit!5658)

(assert (=> d!55507 (= lt!93163 (choose!1012 lt!93061 lt!93055 (minValue!3672 thiss!1248) lt!93047))))

(declare-fun e!123831 () Bool)

(assert (=> d!55507 e!123831))

(declare-fun res!88955 () Bool)

(assert (=> d!55507 (=> (not res!88955) (not e!123831))))

(assert (=> d!55507 (= res!88955 (contains!1316 lt!93061 lt!93047))))

(assert (=> d!55507 (= (addApplyDifferent!148 lt!93061 lt!93055 (minValue!3672 thiss!1248) lt!93047) lt!93163)))

(declare-fun b!188165 () Bool)

(assert (=> b!188165 (= e!123831 (not (= lt!93047 lt!93055)))))

(assert (= (and d!55507 res!88955) b!188165))

(declare-fun m!214877 () Bool)

(assert (=> d!55507 m!214877))

(assert (=> d!55507 m!214673))

(assert (=> d!55507 m!214675))

(assert (=> d!55507 m!214697))

(assert (=> d!55507 m!214673))

(declare-fun m!214879 () Bool)

(assert (=> d!55507 m!214879))

(assert (=> b!187933 d!55507))

(declare-fun d!55509 () Bool)

(assert (=> d!55509 (= (apply!172 lt!93046 lt!93058) (get!2174 (getValueByKey!228 (toList!1220 lt!93046) lt!93058)))))

(declare-fun bs!7587 () Bool)

(assert (= bs!7587 d!55509))

(declare-fun m!214881 () Bool)

(assert (=> bs!7587 m!214881))

(assert (=> bs!7587 m!214881))

(declare-fun m!214883 () Bool)

(assert (=> bs!7587 m!214883))

(assert (=> b!187933 d!55509))

(declare-fun d!55511 () Bool)

(declare-fun e!123832 () Bool)

(assert (=> d!55511 e!123832))

(declare-fun res!88957 () Bool)

(assert (=> d!55511 (=> (not res!88957) (not e!123832))))

(declare-fun lt!93166 () ListLongMap!2409)

(assert (=> d!55511 (= res!88957 (contains!1316 lt!93166 (_1!1749 (tuple2!3479 lt!93051 (zeroValue!3672 thiss!1248)))))))

(declare-fun lt!93164 () List!2405)

(assert (=> d!55511 (= lt!93166 (ListLongMap!2410 lt!93164))))

(declare-fun lt!93165 () Unit!5658)

(declare-fun lt!93167 () Unit!5658)

(assert (=> d!55511 (= lt!93165 lt!93167)))

(assert (=> d!55511 (= (getValueByKey!228 lt!93164 (_1!1749 (tuple2!3479 lt!93051 (zeroValue!3672 thiss!1248)))) (Some!233 (_2!1749 (tuple2!3479 lt!93051 (zeroValue!3672 thiss!1248)))))))

(assert (=> d!55511 (= lt!93167 (lemmaContainsTupThenGetReturnValue!121 lt!93164 (_1!1749 (tuple2!3479 lt!93051 (zeroValue!3672 thiss!1248))) (_2!1749 (tuple2!3479 lt!93051 (zeroValue!3672 thiss!1248)))))))

(assert (=> d!55511 (= lt!93164 (insertStrictlySorted!123 (toList!1220 lt!93046) (_1!1749 (tuple2!3479 lt!93051 (zeroValue!3672 thiss!1248))) (_2!1749 (tuple2!3479 lt!93051 (zeroValue!3672 thiss!1248)))))))

(assert (=> d!55511 (= (+!287 lt!93046 (tuple2!3479 lt!93051 (zeroValue!3672 thiss!1248))) lt!93166)))

(declare-fun b!188166 () Bool)

(declare-fun res!88956 () Bool)

(assert (=> b!188166 (=> (not res!88956) (not e!123832))))

(assert (=> b!188166 (= res!88956 (= (getValueByKey!228 (toList!1220 lt!93166) (_1!1749 (tuple2!3479 lt!93051 (zeroValue!3672 thiss!1248)))) (Some!233 (_2!1749 (tuple2!3479 lt!93051 (zeroValue!3672 thiss!1248))))))))

(declare-fun b!188167 () Bool)

(assert (=> b!188167 (= e!123832 (contains!1318 (toList!1220 lt!93166) (tuple2!3479 lt!93051 (zeroValue!3672 thiss!1248))))))

(assert (= (and d!55511 res!88957) b!188166))

(assert (= (and b!188166 res!88956) b!188167))

(declare-fun m!214885 () Bool)

(assert (=> d!55511 m!214885))

(declare-fun m!214887 () Bool)

(assert (=> d!55511 m!214887))

(declare-fun m!214889 () Bool)

(assert (=> d!55511 m!214889))

(declare-fun m!214891 () Bool)

(assert (=> d!55511 m!214891))

(declare-fun m!214893 () Bool)

(assert (=> b!188166 m!214893))

(declare-fun m!214895 () Bool)

(assert (=> b!188167 m!214895))

(assert (=> b!187933 d!55511))

(declare-fun d!55513 () Bool)

(declare-fun e!123833 () Bool)

(assert (=> d!55513 e!123833))

(declare-fun res!88959 () Bool)

(assert (=> d!55513 (=> (not res!88959) (not e!123833))))

(declare-fun lt!93170 () ListLongMap!2409)

(assert (=> d!55513 (= res!88959 (contains!1316 lt!93170 (_1!1749 (tuple2!3479 lt!93059 (zeroValue!3672 thiss!1248)))))))

(declare-fun lt!93168 () List!2405)

(assert (=> d!55513 (= lt!93170 (ListLongMap!2410 lt!93168))))

(declare-fun lt!93169 () Unit!5658)

(declare-fun lt!93171 () Unit!5658)

(assert (=> d!55513 (= lt!93169 lt!93171)))

(assert (=> d!55513 (= (getValueByKey!228 lt!93168 (_1!1749 (tuple2!3479 lt!93059 (zeroValue!3672 thiss!1248)))) (Some!233 (_2!1749 (tuple2!3479 lt!93059 (zeroValue!3672 thiss!1248)))))))

(assert (=> d!55513 (= lt!93171 (lemmaContainsTupThenGetReturnValue!121 lt!93168 (_1!1749 (tuple2!3479 lt!93059 (zeroValue!3672 thiss!1248))) (_2!1749 (tuple2!3479 lt!93059 (zeroValue!3672 thiss!1248)))))))

(assert (=> d!55513 (= lt!93168 (insertStrictlySorted!123 (toList!1220 lt!93052) (_1!1749 (tuple2!3479 lt!93059 (zeroValue!3672 thiss!1248))) (_2!1749 (tuple2!3479 lt!93059 (zeroValue!3672 thiss!1248)))))))

(assert (=> d!55513 (= (+!287 lt!93052 (tuple2!3479 lt!93059 (zeroValue!3672 thiss!1248))) lt!93170)))

(declare-fun b!188168 () Bool)

(declare-fun res!88958 () Bool)

(assert (=> b!188168 (=> (not res!88958) (not e!123833))))

(assert (=> b!188168 (= res!88958 (= (getValueByKey!228 (toList!1220 lt!93170) (_1!1749 (tuple2!3479 lt!93059 (zeroValue!3672 thiss!1248)))) (Some!233 (_2!1749 (tuple2!3479 lt!93059 (zeroValue!3672 thiss!1248))))))))

(declare-fun b!188169 () Bool)

(assert (=> b!188169 (= e!123833 (contains!1318 (toList!1220 lt!93170) (tuple2!3479 lt!93059 (zeroValue!3672 thiss!1248))))))

(assert (= (and d!55513 res!88959) b!188168))

(assert (= (and b!188168 res!88958) b!188169))

(declare-fun m!214897 () Bool)

(assert (=> d!55513 m!214897))

(declare-fun m!214899 () Bool)

(assert (=> d!55513 m!214899))

(declare-fun m!214901 () Bool)

(assert (=> d!55513 m!214901))

(declare-fun m!214903 () Bool)

(assert (=> d!55513 m!214903))

(declare-fun m!214905 () Bool)

(assert (=> b!188168 m!214905))

(declare-fun m!214907 () Bool)

(assert (=> b!188169 m!214907))

(assert (=> b!187933 d!55513))

(declare-fun d!55515 () Bool)

(assert (=> d!55515 (= (apply!172 (+!287 lt!93046 (tuple2!3479 lt!93051 (zeroValue!3672 thiss!1248))) lt!93058) (apply!172 lt!93046 lt!93058))))

(declare-fun lt!93172 () Unit!5658)

(assert (=> d!55515 (= lt!93172 (choose!1012 lt!93046 lt!93051 (zeroValue!3672 thiss!1248) lt!93058))))

(declare-fun e!123834 () Bool)

(assert (=> d!55515 e!123834))

(declare-fun res!88960 () Bool)

(assert (=> d!55515 (=> (not res!88960) (not e!123834))))

(assert (=> d!55515 (= res!88960 (contains!1316 lt!93046 lt!93058))))

(assert (=> d!55515 (= (addApplyDifferent!148 lt!93046 lt!93051 (zeroValue!3672 thiss!1248) lt!93058) lt!93172)))

(declare-fun b!188170 () Bool)

(assert (=> b!188170 (= e!123834 (not (= lt!93058 lt!93051)))))

(assert (= (and d!55515 res!88960) b!188170))

(declare-fun m!214909 () Bool)

(assert (=> d!55515 m!214909))

(assert (=> d!55515 m!214683))

(assert (=> d!55515 m!214687))

(assert (=> d!55515 m!214685))

(assert (=> d!55515 m!214683))

(declare-fun m!214911 () Bool)

(assert (=> d!55515 m!214911))

(assert (=> b!187933 d!55515))

(declare-fun d!55517 () Bool)

(declare-fun e!123835 () Bool)

(assert (=> d!55517 e!123835))

(declare-fun res!88961 () Bool)

(assert (=> d!55517 (=> res!88961 e!123835)))

(declare-fun lt!93174 () Bool)

(assert (=> d!55517 (= res!88961 (not lt!93174))))

(declare-fun lt!93176 () Bool)

(assert (=> d!55517 (= lt!93174 lt!93176)))

(declare-fun lt!93173 () Unit!5658)

(declare-fun e!123836 () Unit!5658)

(assert (=> d!55517 (= lt!93173 e!123836)))

(declare-fun c!33817 () Bool)

(assert (=> d!55517 (= c!33817 lt!93176)))

(assert (=> d!55517 (= lt!93176 (containsKey!232 (toList!1220 lt!93066) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!55517 (= (contains!1316 lt!93066 #b0000000000000000000000000000000000000000000000000000000000000000) lt!93174)))

(declare-fun b!188171 () Bool)

(declare-fun lt!93175 () Unit!5658)

(assert (=> b!188171 (= e!123836 lt!93175)))

(assert (=> b!188171 (= lt!93175 (lemmaContainsKeyImpliesGetValueByKeyDefined!181 (toList!1220 lt!93066) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!188171 (isDefined!182 (getValueByKey!228 (toList!1220 lt!93066) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!188172 () Bool)

(declare-fun Unit!5669 () Unit!5658)

(assert (=> b!188172 (= e!123836 Unit!5669)))

(declare-fun b!188173 () Bool)

(assert (=> b!188173 (= e!123835 (isDefined!182 (getValueByKey!228 (toList!1220 lt!93066) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55517 c!33817) b!188171))

(assert (= (and d!55517 (not c!33817)) b!188172))

(assert (= (and d!55517 (not res!88961)) b!188173))

(declare-fun m!214913 () Bool)

(assert (=> d!55517 m!214913))

(declare-fun m!214915 () Bool)

(assert (=> b!188171 m!214915))

(assert (=> b!188171 m!214757))

(assert (=> b!188171 m!214757))

(declare-fun m!214917 () Bool)

(assert (=> b!188171 m!214917))

(assert (=> b!188173 m!214757))

(assert (=> b!188173 m!214757))

(assert (=> b!188173 m!214917))

(assert (=> bm!18947 d!55517))

(declare-fun d!55519 () Bool)

(declare-fun res!88966 () Bool)

(declare-fun e!123841 () Bool)

(assert (=> d!55519 (=> res!88966 e!123841)))

(assert (=> d!55519 (= res!88966 (and ((_ is Cons!2401) (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248)))) (= (_1!1749 (h!3037 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248))))) key!828)))))

(assert (=> d!55519 (= (containsKey!232 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248))) key!828) e!123841)))

(declare-fun b!188178 () Bool)

(declare-fun e!123842 () Bool)

(assert (=> b!188178 (= e!123841 e!123842)))

(declare-fun res!88967 () Bool)

(assert (=> b!188178 (=> (not res!88967) (not e!123842))))

(assert (=> b!188178 (= res!88967 (and (or (not ((_ is Cons!2401) (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248))))) (bvsle (_1!1749 (h!3037 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248))))) key!828)) ((_ is Cons!2401) (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248)))) (bvslt (_1!1749 (h!3037 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248))))) key!828)))))

(declare-fun b!188179 () Bool)

(assert (=> b!188179 (= e!123842 (containsKey!232 (t!7307 (toList!1220 (getCurrentListMap!863 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3831 thiss!1248)))) key!828))))

(assert (= (and d!55519 (not res!88966)) b!188178))

(assert (= (and b!188178 res!88967) b!188179))

(declare-fun m!214919 () Bool)

(assert (=> b!188179 m!214919))

(assert (=> d!55437 d!55519))

(declare-fun d!55521 () Bool)

(declare-fun e!123843 () Bool)

(assert (=> d!55521 e!123843))

(declare-fun res!88969 () Bool)

(assert (=> d!55521 (=> (not res!88969) (not e!123843))))

(declare-fun lt!93179 () ListLongMap!2409)

(assert (=> d!55521 (= res!88969 (contains!1316 lt!93179 (_1!1749 (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248)))))))

(declare-fun lt!93177 () List!2405)

(assert (=> d!55521 (= lt!93179 (ListLongMap!2410 lt!93177))))

(declare-fun lt!93178 () Unit!5658)

(declare-fun lt!93180 () Unit!5658)

(assert (=> d!55521 (= lt!93178 lt!93180)))

(assert (=> d!55521 (= (getValueByKey!228 lt!93177 (_1!1749 (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248)))) (Some!233 (_2!1749 (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248)))))))

(assert (=> d!55521 (= lt!93180 (lemmaContainsTupThenGetReturnValue!121 lt!93177 (_1!1749 (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248))) (_2!1749 (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248)))))))

(assert (=> d!55521 (= lt!93177 (insertStrictlySorted!123 (toList!1220 call!18947) (_1!1749 (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248))) (_2!1749 (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248)))))))

(assert (=> d!55521 (= (+!287 call!18947 (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248))) lt!93179)))

(declare-fun b!188180 () Bool)

(declare-fun res!88968 () Bool)

(assert (=> b!188180 (=> (not res!88968) (not e!123843))))

(assert (=> b!188180 (= res!88968 (= (getValueByKey!228 (toList!1220 lt!93179) (_1!1749 (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248)))) (Some!233 (_2!1749 (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248))))))))

(declare-fun b!188181 () Bool)

(assert (=> b!188181 (= e!123843 (contains!1318 (toList!1220 lt!93179) (tuple2!3479 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3672 thiss!1248))))))

(assert (= (and d!55521 res!88969) b!188180))

(assert (= (and b!188180 res!88968) b!188181))

(declare-fun m!214921 () Bool)

(assert (=> d!55521 m!214921))

(declare-fun m!214923 () Bool)

(assert (=> d!55521 m!214923))

(declare-fun m!214925 () Bool)

(assert (=> d!55521 m!214925))

(declare-fun m!214927 () Bool)

(assert (=> d!55521 m!214927))

(declare-fun m!214929 () Bool)

(assert (=> b!188180 m!214929))

(declare-fun m!214931 () Bool)

(assert (=> b!188181 m!214931))

(assert (=> b!187935 d!55521))

(assert (=> d!55429 d!55425))

(declare-fun d!55523 () Bool)

(declare-fun e!123846 () Bool)

(assert (=> d!55523 e!123846))

(declare-fun res!88975 () Bool)

(assert (=> d!55523 (=> (not res!88975) (not e!123846))))

(declare-fun lt!93183 () SeekEntryResult!660)

(assert (=> d!55523 (= res!88975 ((_ is Found!660) lt!93183))))

(assert (=> d!55523 (= lt!93183 (seekEntryOrOpen!0 key!828 (_keys!5786 thiss!1248) (mask!8985 thiss!1248)))))

(assert (=> d!55523 true))

(declare-fun _$33!135 () Unit!5658)

(assert (=> d!55523 (= (choose!1010 (_keys!5786 thiss!1248) (_values!3814 thiss!1248) (mask!8985 thiss!1248) (extraKeys!3568 thiss!1248) (zeroValue!3672 thiss!1248) (minValue!3672 thiss!1248) key!828 (defaultEntry!3831 thiss!1248)) _$33!135)))

(declare-fun b!188186 () Bool)

(declare-fun res!88974 () Bool)

(assert (=> b!188186 (=> (not res!88974) (not e!123846))))

(assert (=> b!188186 (= res!88974 (inRange!0 (index!4811 lt!93183) (mask!8985 thiss!1248)))))

(declare-fun b!188187 () Bool)

(assert (=> b!188187 (= e!123846 (= (select (arr!3772 (_keys!5786 thiss!1248)) (index!4811 lt!93183)) key!828))))

(assert (= (and d!55523 res!88975) b!188186))

(assert (= (and b!188186 res!88974) b!188187))

(assert (=> d!55523 m!214563))

(declare-fun m!214933 () Bool)

(assert (=> b!188186 m!214933))

(declare-fun m!214935 () Bool)

(assert (=> b!188187 m!214935))

(assert (=> d!55429 d!55523))

(assert (=> d!55429 d!55435))

(declare-fun mapNonEmpty!7570 () Bool)

(declare-fun mapRes!7570 () Bool)

(declare-fun tp!16678 () Bool)

(declare-fun e!123848 () Bool)

(assert (=> mapNonEmpty!7570 (= mapRes!7570 (and tp!16678 e!123848))))

(declare-fun mapKey!7570 () (_ BitVec 32))

(declare-fun mapRest!7570 () (Array (_ BitVec 32) ValueCell!1851))

(declare-fun mapValue!7570 () ValueCell!1851)

(assert (=> mapNonEmpty!7570 (= mapRest!7569 (store mapRest!7570 mapKey!7570 mapValue!7570))))

(declare-fun mapIsEmpty!7570 () Bool)

(assert (=> mapIsEmpty!7570 mapRes!7570))

(declare-fun condMapEmpty!7570 () Bool)

(declare-fun mapDefault!7570 () ValueCell!1851)

(assert (=> mapNonEmpty!7569 (= condMapEmpty!7570 (= mapRest!7569 ((as const (Array (_ BitVec 32) ValueCell!1851)) mapDefault!7570)))))

(declare-fun e!123847 () Bool)

(assert (=> mapNonEmpty!7569 (= tp!16677 (and e!123847 mapRes!7570))))

(declare-fun b!188188 () Bool)

(assert (=> b!188188 (= e!123848 tp_is_empty!4389)))

(declare-fun b!188189 () Bool)

(assert (=> b!188189 (= e!123847 tp_is_empty!4389)))

(assert (= (and mapNonEmpty!7569 condMapEmpty!7570) mapIsEmpty!7570))

(assert (= (and mapNonEmpty!7569 (not condMapEmpty!7570)) mapNonEmpty!7570))

(assert (= (and mapNonEmpty!7570 ((_ is ValueCellFull!1851) mapValue!7570)) b!188188))

(assert (= (and mapNonEmpty!7569 ((_ is ValueCellFull!1851) mapDefault!7570)) b!188189))

(declare-fun m!214937 () Bool)

(assert (=> mapNonEmpty!7570 m!214937))

(declare-fun b_lambda!7337 () Bool)

(assert (= b_lambda!7333 (or (and b!187785 b_free!4617) b_lambda!7337)))

(declare-fun b_lambda!7339 () Bool)

(assert (= b_lambda!7335 (or (and b!187785 b_free!4617) b_lambda!7339)))

(check-sat (not b!188027) (not d!55473) (not b!188168) (not b!188091) (not b!188048) (not b!187998) (not bm!18962) (not b!188169) (not b!188173) (not b!188034) (not bm!18968) (not d!55489) (not b!188171) (not b_lambda!7337) (not d!55515) (not b!187991) (not b!188186) (not d!55495) (not b!187992) (not b!187999) (not b!188028) (not d!55451) (not b!188128) (not b!188163) (not d!55481) (not b!188086) (not d!55449) (not b!188035) (not b_next!4617) (not d!55509) (not d!55497) (not d!55491) tp_is_empty!4389 (not d!55521) (not d!55493) (not d!55507) (not b!187967) (not d!55475) (not d!55479) (not b!188059) (not b!188053) (not b_lambda!7339) (not d!55465) (not b!188179) (not b!188180) (not d!55487) b_and!11267 (not b!187966) (not b_lambda!7331) (not bm!18953) (not b!188032) (not b!188181) (not b!188161) (not d!55517) (not d!55503) (not bm!18956) (not b!188155) (not b!188051) (not d!55505) (not b!188162) (not b!188123) (not d!55461) (not b!188047) (not d!55523) (not d!55511) (not b!188050) (not b!188166) (not b!188031) (not b!188033) (not b!187979) (not d!55501) (not mapNonEmpty!7570) (not b!188106) (not bm!18967) (not b!188095) (not d!55455) (not b!188153) (not b!188029) (not d!55499) (not d!55483) (not d!55447) (not b!188160) (not b!188092) (not b!188126) (not d!55513) (not d!55469) (not b!188167) (not d!55485) (not bm!18959))
(check-sat b_and!11267 (not b_next!4617))
