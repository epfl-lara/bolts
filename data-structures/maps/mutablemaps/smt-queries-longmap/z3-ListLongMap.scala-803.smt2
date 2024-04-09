; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19302 () Bool)

(assert start!19302)

(declare-fun b!189781 () Bool)

(declare-fun b_free!4659 () Bool)

(declare-fun b_next!4659 () Bool)

(assert (=> b!189781 (= b_free!4659 (not b_next!4659))))

(declare-fun tp!16813 () Bool)

(declare-fun b_and!11319 () Bool)

(assert (=> b!189781 (= tp!16813 b_and!11319)))

(declare-fun b!189778 () Bool)

(declare-datatypes ((Unit!5731 0))(
  ( (Unit!5732) )
))
(declare-fun e!124906 () Unit!5731)

(declare-fun Unit!5733 () Unit!5731)

(assert (=> b!189778 (= e!124906 Unit!5733)))

(declare-fun lt!94018 () Unit!5731)

(declare-datatypes ((V!5555 0))(
  ( (V!5556 (val!2260 Int)) )
))
(declare-datatypes ((ValueCell!1872 0))(
  ( (ValueCellFull!1872 (v!4180 V!5555)) (EmptyCell!1872) )
))
(declare-datatypes ((array!8092 0))(
  ( (array!8093 (arr!3814 (Array (_ BitVec 32) (_ BitVec 64))) (size!4134 (_ BitVec 32))) )
))
(declare-datatypes ((array!8094 0))(
  ( (array!8095 (arr!3815 (Array (_ BitVec 32) ValueCell!1872)) (size!4135 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2652 0))(
  ( (LongMapFixedSize!2653 (defaultEntry!3874 Int) (mask!9067 (_ BitVec 32)) (extraKeys!3611 (_ BitVec 32)) (zeroValue!3715 V!5555) (minValue!3715 V!5555) (_size!1375 (_ BitVec 32)) (_keys!5842 array!8092) (_values!3857 array!8094) (_vacant!1375 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2652)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!170 (array!8092 array!8094 (_ BitVec 32) (_ BitVec 32) V!5555 V!5555 (_ BitVec 64) Int) Unit!5731)

(assert (=> b!189778 (= lt!94018 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!170 (_keys!5842 thiss!1248) (_values!3857 thiss!1248) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) key!828 (defaultEntry!3874 thiss!1248)))))

(assert (=> b!189778 false))

(declare-fun b!189779 () Bool)

(declare-fun e!124912 () Bool)

(declare-fun e!124913 () Bool)

(declare-fun mapRes!7645 () Bool)

(assert (=> b!189779 (= e!124912 (and e!124913 mapRes!7645))))

(declare-fun condMapEmpty!7645 () Bool)

(declare-fun mapDefault!7645 () ValueCell!1872)

(assert (=> b!189779 (= condMapEmpty!7645 (= (arr!3815 (_values!3857 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1872)) mapDefault!7645)))))

(declare-fun b!189780 () Bool)

(declare-fun e!124908 () Bool)

(declare-fun tp_is_empty!4431 () Bool)

(assert (=> b!189780 (= e!124908 tp_is_empty!4431)))

(declare-fun e!124911 () Bool)

(declare-fun array_inv!2461 (array!8092) Bool)

(declare-fun array_inv!2462 (array!8094) Bool)

(assert (=> b!189781 (= e!124911 (and tp!16813 tp_is_empty!4431 (array_inv!2461 (_keys!5842 thiss!1248)) (array_inv!2462 (_values!3857 thiss!1248)) e!124912))))

(declare-fun b!189782 () Bool)

(declare-fun res!89748 () Bool)

(declare-fun e!124914 () Bool)

(assert (=> b!189782 (=> (not res!89748) (not e!124914))))

(assert (=> b!189782 (= res!89748 (not (= key!828 (bvneg key!828))))))

(declare-fun res!89749 () Bool)

(assert (=> start!19302 (=> (not res!89749) (not e!124914))))

(declare-fun valid!1081 (LongMapFixedSize!2652) Bool)

(assert (=> start!19302 (= res!89749 (valid!1081 thiss!1248))))

(assert (=> start!19302 e!124914))

(assert (=> start!19302 e!124911))

(assert (=> start!19302 true))

(assert (=> start!19302 tp_is_empty!4431))

(declare-fun mapNonEmpty!7645 () Bool)

(declare-fun tp!16812 () Bool)

(assert (=> mapNonEmpty!7645 (= mapRes!7645 (and tp!16812 e!124908))))

(declare-fun mapKey!7645 () (_ BitVec 32))

(declare-fun mapRest!7645 () (Array (_ BitVec 32) ValueCell!1872))

(declare-fun mapValue!7645 () ValueCell!1872)

(assert (=> mapNonEmpty!7645 (= (arr!3815 (_values!3857 thiss!1248)) (store mapRest!7645 mapKey!7645 mapValue!7645))))

(declare-fun b!189783 () Bool)

(declare-fun e!124907 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!189783 (= e!124907 (not (validMask!0 (mask!9067 thiss!1248))))))

(declare-datatypes ((tuple2!3512 0))(
  ( (tuple2!3513 (_1!1766 (_ BitVec 64)) (_2!1766 V!5555)) )
))
(declare-datatypes ((List!2433 0))(
  ( (Nil!2430) (Cons!2429 (h!3066 tuple2!3512) (t!7347 List!2433)) )
))
(declare-datatypes ((ListLongMap!2443 0))(
  ( (ListLongMap!2444 (toList!1237 List!2433)) )
))
(declare-fun lt!94020 () ListLongMap!2443)

(declare-datatypes ((SeekEntryResult!679 0))(
  ( (MissingZero!679 (index!4886 (_ BitVec 32))) (Found!679 (index!4887 (_ BitVec 32))) (Intermediate!679 (undefined!1491 Bool) (index!4888 (_ BitVec 32)) (x!20463 (_ BitVec 32))) (Undefined!679) (MissingVacant!679 (index!4889 (_ BitVec 32))) )
))
(declare-fun lt!94019 () SeekEntryResult!679)

(declare-fun v!309 () V!5555)

(declare-fun +!295 (ListLongMap!2443 tuple2!3512) ListLongMap!2443)

(declare-fun getCurrentListMap!880 (array!8092 array!8094 (_ BitVec 32) (_ BitVec 32) V!5555 V!5555 (_ BitVec 32) Int) ListLongMap!2443)

(assert (=> b!189783 (= (+!295 lt!94020 (tuple2!3513 key!828 v!309)) (getCurrentListMap!880 (_keys!5842 thiss!1248) (array!8095 (store (arr!3815 (_values!3857 thiss!1248)) (index!4887 lt!94019) (ValueCellFull!1872 v!309)) (size!4135 (_values!3857 thiss!1248))) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3874 thiss!1248)))))

(declare-fun lt!94016 () Unit!5731)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!101 (array!8092 array!8094 (_ BitVec 32) (_ BitVec 32) V!5555 V!5555 (_ BitVec 32) (_ BitVec 64) V!5555 Int) Unit!5731)

(assert (=> b!189783 (= lt!94016 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!101 (_keys!5842 thiss!1248) (_values!3857 thiss!1248) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) (index!4887 lt!94019) key!828 v!309 (defaultEntry!3874 thiss!1248)))))

(declare-fun lt!94021 () Unit!5731)

(assert (=> b!189783 (= lt!94021 e!124906)))

(declare-fun c!34084 () Bool)

(declare-fun contains!1339 (ListLongMap!2443 (_ BitVec 64)) Bool)

(assert (=> b!189783 (= c!34084 (contains!1339 lt!94020 key!828))))

(assert (=> b!189783 (= lt!94020 (getCurrentListMap!880 (_keys!5842 thiss!1248) (_values!3857 thiss!1248) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3874 thiss!1248)))))

(declare-fun b!189784 () Bool)

(declare-fun lt!94017 () Unit!5731)

(assert (=> b!189784 (= e!124906 lt!94017)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!169 (array!8092 array!8094 (_ BitVec 32) (_ BitVec 32) V!5555 V!5555 (_ BitVec 64) Int) Unit!5731)

(assert (=> b!189784 (= lt!94017 (lemmaInListMapThenSeekEntryOrOpenFindsIt!169 (_keys!5842 thiss!1248) (_values!3857 thiss!1248) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) key!828 (defaultEntry!3874 thiss!1248)))))

(declare-fun res!89746 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!189784 (= res!89746 (inRange!0 (index!4887 lt!94019) (mask!9067 thiss!1248)))))

(declare-fun e!124909 () Bool)

(assert (=> b!189784 (=> (not res!89746) (not e!124909))))

(assert (=> b!189784 e!124909))

(declare-fun b!189785 () Bool)

(assert (=> b!189785 (= e!124914 e!124907)))

(declare-fun res!89747 () Bool)

(assert (=> b!189785 (=> (not res!89747) (not e!124907))))

(get-info :version)

(assert (=> b!189785 (= res!89747 (and (not ((_ is Undefined!679) lt!94019)) (not ((_ is MissingVacant!679) lt!94019)) (not ((_ is MissingZero!679) lt!94019)) ((_ is Found!679) lt!94019)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8092 (_ BitVec 32)) SeekEntryResult!679)

(assert (=> b!189785 (= lt!94019 (seekEntryOrOpen!0 key!828 (_keys!5842 thiss!1248) (mask!9067 thiss!1248)))))

(declare-fun mapIsEmpty!7645 () Bool)

(assert (=> mapIsEmpty!7645 mapRes!7645))

(declare-fun b!189786 () Bool)

(assert (=> b!189786 (= e!124909 (= (select (arr!3814 (_keys!5842 thiss!1248)) (index!4887 lt!94019)) key!828))))

(declare-fun b!189787 () Bool)

(assert (=> b!189787 (= e!124913 tp_is_empty!4431)))

(assert (= (and start!19302 res!89749) b!189782))

(assert (= (and b!189782 res!89748) b!189785))

(assert (= (and b!189785 res!89747) b!189783))

(assert (= (and b!189783 c!34084) b!189784))

(assert (= (and b!189783 (not c!34084)) b!189778))

(assert (= (and b!189784 res!89746) b!189786))

(assert (= (and b!189779 condMapEmpty!7645) mapIsEmpty!7645))

(assert (= (and b!189779 (not condMapEmpty!7645)) mapNonEmpty!7645))

(assert (= (and mapNonEmpty!7645 ((_ is ValueCellFull!1872) mapValue!7645)) b!189780))

(assert (= (and b!189779 ((_ is ValueCellFull!1872) mapDefault!7645)) b!189787))

(assert (= b!189781 b!189779))

(assert (= start!19302 b!189781))

(declare-fun m!216117 () Bool)

(assert (=> b!189784 m!216117))

(declare-fun m!216119 () Bool)

(assert (=> b!189784 m!216119))

(declare-fun m!216121 () Bool)

(assert (=> mapNonEmpty!7645 m!216121))

(declare-fun m!216123 () Bool)

(assert (=> start!19302 m!216123))

(declare-fun m!216125 () Bool)

(assert (=> b!189783 m!216125))

(declare-fun m!216127 () Bool)

(assert (=> b!189783 m!216127))

(declare-fun m!216129 () Bool)

(assert (=> b!189783 m!216129))

(declare-fun m!216131 () Bool)

(assert (=> b!189783 m!216131))

(declare-fun m!216133 () Bool)

(assert (=> b!189783 m!216133))

(declare-fun m!216135 () Bool)

(assert (=> b!189783 m!216135))

(declare-fun m!216137 () Bool)

(assert (=> b!189783 m!216137))

(declare-fun m!216139 () Bool)

(assert (=> b!189781 m!216139))

(declare-fun m!216141 () Bool)

(assert (=> b!189781 m!216141))

(declare-fun m!216143 () Bool)

(assert (=> b!189786 m!216143))

(declare-fun m!216145 () Bool)

(assert (=> b!189778 m!216145))

(declare-fun m!216147 () Bool)

(assert (=> b!189785 m!216147))

(check-sat (not b_next!4659) (not start!19302) (not b!189783) tp_is_empty!4431 (not b!189785) (not mapNonEmpty!7645) (not b!189781) (not b!189778) (not b!189784) b_and!11319)
(check-sat b_and!11319 (not b_next!4659))
(get-model)

(declare-fun b!189834 () Bool)

(declare-fun res!89773 () Bool)

(declare-fun e!124952 () Bool)

(assert (=> b!189834 (=> (not res!89773) (not e!124952))))

(declare-fun lt!94045 () SeekEntryResult!679)

(assert (=> b!189834 (= res!89773 (= (select (arr!3814 (_keys!5842 thiss!1248)) (index!4889 lt!94045)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!189834 (and (bvsge (index!4889 lt!94045) #b00000000000000000000000000000000) (bvslt (index!4889 lt!94045) (size!4134 (_keys!5842 thiss!1248))))))

(declare-fun b!189835 () Bool)

(declare-fun e!124953 () Bool)

(declare-fun call!19140 () Bool)

(assert (=> b!189835 (= e!124953 (not call!19140))))

(declare-fun bm!19136 () Bool)

(declare-fun arrayContainsKey!0 (array!8092 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!19136 (= call!19140 (arrayContainsKey!0 (_keys!5842 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!189836 () Bool)

(declare-fun e!124951 () Bool)

(declare-fun e!124950 () Bool)

(assert (=> b!189836 (= e!124951 e!124950)))

(declare-fun c!34092 () Bool)

(assert (=> b!189836 (= c!34092 ((_ is MissingVacant!679) lt!94045))))

(declare-fun d!55659 () Bool)

(assert (=> d!55659 e!124951))

(declare-fun c!34093 () Bool)

(assert (=> d!55659 (= c!34093 ((_ is MissingZero!679) lt!94045))))

(assert (=> d!55659 (= lt!94045 (seekEntryOrOpen!0 key!828 (_keys!5842 thiss!1248) (mask!9067 thiss!1248)))))

(declare-fun lt!94044 () Unit!5731)

(declare-fun choose!1025 (array!8092 array!8094 (_ BitVec 32) (_ BitVec 32) V!5555 V!5555 (_ BitVec 64) Int) Unit!5731)

(assert (=> d!55659 (= lt!94044 (choose!1025 (_keys!5842 thiss!1248) (_values!3857 thiss!1248) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) key!828 (defaultEntry!3874 thiss!1248)))))

(assert (=> d!55659 (validMask!0 (mask!9067 thiss!1248))))

(assert (=> d!55659 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!170 (_keys!5842 thiss!1248) (_values!3857 thiss!1248) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) key!828 (defaultEntry!3874 thiss!1248)) lt!94044)))

(declare-fun bm!19137 () Bool)

(declare-fun call!19139 () Bool)

(assert (=> bm!19137 (= call!19139 (inRange!0 (ite c!34093 (index!4886 lt!94045) (index!4889 lt!94045)) (mask!9067 thiss!1248)))))

(declare-fun b!189837 () Bool)

(assert (=> b!189837 (= e!124951 e!124953)))

(declare-fun res!89771 () Bool)

(assert (=> b!189837 (= res!89771 call!19139)))

(assert (=> b!189837 (=> (not res!89771) (not e!124953))))

(declare-fun b!189838 () Bool)

(declare-fun res!89770 () Bool)

(assert (=> b!189838 (=> (not res!89770) (not e!124952))))

(assert (=> b!189838 (= res!89770 call!19139)))

(assert (=> b!189838 (= e!124950 e!124952)))

(declare-fun b!189839 () Bool)

(assert (=> b!189839 (and (bvsge (index!4886 lt!94045) #b00000000000000000000000000000000) (bvslt (index!4886 lt!94045) (size!4134 (_keys!5842 thiss!1248))))))

(declare-fun res!89772 () Bool)

(assert (=> b!189839 (= res!89772 (= (select (arr!3814 (_keys!5842 thiss!1248)) (index!4886 lt!94045)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!189839 (=> (not res!89772) (not e!124953))))

(declare-fun b!189840 () Bool)

(assert (=> b!189840 (= e!124952 (not call!19140))))

(declare-fun b!189841 () Bool)

(assert (=> b!189841 (= e!124950 ((_ is Undefined!679) lt!94045))))

(assert (= (and d!55659 c!34093) b!189837))

(assert (= (and d!55659 (not c!34093)) b!189836))

(assert (= (and b!189837 res!89771) b!189839))

(assert (= (and b!189839 res!89772) b!189835))

(assert (= (and b!189836 c!34092) b!189838))

(assert (= (and b!189836 (not c!34092)) b!189841))

(assert (= (and b!189838 res!89770) b!189834))

(assert (= (and b!189834 res!89773) b!189840))

(assert (= (or b!189837 b!189838) bm!19137))

(assert (= (or b!189835 b!189840) bm!19136))

(declare-fun m!216181 () Bool)

(assert (=> bm!19136 m!216181))

(assert (=> d!55659 m!216147))

(declare-fun m!216183 () Bool)

(assert (=> d!55659 m!216183))

(assert (=> d!55659 m!216137))

(declare-fun m!216185 () Bool)

(assert (=> b!189834 m!216185))

(declare-fun m!216187 () Bool)

(assert (=> bm!19137 m!216187))

(declare-fun m!216189 () Bool)

(assert (=> b!189839 m!216189))

(assert (=> b!189778 d!55659))

(declare-fun d!55661 () Bool)

(assert (=> d!55661 (= (validMask!0 (mask!9067 thiss!1248)) (and (or (= (mask!9067 thiss!1248) #b00000000000000000000000000000111) (= (mask!9067 thiss!1248) #b00000000000000000000000000001111) (= (mask!9067 thiss!1248) #b00000000000000000000000000011111) (= (mask!9067 thiss!1248) #b00000000000000000000000000111111) (= (mask!9067 thiss!1248) #b00000000000000000000000001111111) (= (mask!9067 thiss!1248) #b00000000000000000000000011111111) (= (mask!9067 thiss!1248) #b00000000000000000000000111111111) (= (mask!9067 thiss!1248) #b00000000000000000000001111111111) (= (mask!9067 thiss!1248) #b00000000000000000000011111111111) (= (mask!9067 thiss!1248) #b00000000000000000000111111111111) (= (mask!9067 thiss!1248) #b00000000000000000001111111111111) (= (mask!9067 thiss!1248) #b00000000000000000011111111111111) (= (mask!9067 thiss!1248) #b00000000000000000111111111111111) (= (mask!9067 thiss!1248) #b00000000000000001111111111111111) (= (mask!9067 thiss!1248) #b00000000000000011111111111111111) (= (mask!9067 thiss!1248) #b00000000000000111111111111111111) (= (mask!9067 thiss!1248) #b00000000000001111111111111111111) (= (mask!9067 thiss!1248) #b00000000000011111111111111111111) (= (mask!9067 thiss!1248) #b00000000000111111111111111111111) (= (mask!9067 thiss!1248) #b00000000001111111111111111111111) (= (mask!9067 thiss!1248) #b00000000011111111111111111111111) (= (mask!9067 thiss!1248) #b00000000111111111111111111111111) (= (mask!9067 thiss!1248) #b00000001111111111111111111111111) (= (mask!9067 thiss!1248) #b00000011111111111111111111111111) (= (mask!9067 thiss!1248) #b00000111111111111111111111111111) (= (mask!9067 thiss!1248) #b00001111111111111111111111111111) (= (mask!9067 thiss!1248) #b00011111111111111111111111111111) (= (mask!9067 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!9067 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!189783 d!55661))

(declare-fun b!189884 () Bool)

(declare-fun e!124987 () Bool)

(declare-fun lt!94098 () ListLongMap!2443)

(declare-fun apply!178 (ListLongMap!2443 (_ BitVec 64)) V!5555)

(assert (=> b!189884 (= e!124987 (= (apply!178 lt!94098 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3715 thiss!1248)))))

(declare-fun b!189885 () Bool)

(declare-fun e!124985 () ListLongMap!2443)

(declare-fun call!19157 () ListLongMap!2443)

(assert (=> b!189885 (= e!124985 (+!295 call!19157 (tuple2!3513 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3715 thiss!1248))))))

(declare-fun bm!19152 () Bool)

(declare-fun call!19161 () ListLongMap!2443)

(declare-fun call!19155 () ListLongMap!2443)

(assert (=> bm!19152 (= call!19161 call!19155)))

(declare-fun b!189886 () Bool)

(declare-fun e!124986 () Bool)

(declare-fun call!19158 () Bool)

(assert (=> b!189886 (= e!124986 (not call!19158))))

(declare-fun b!189887 () Bool)

(declare-fun e!124983 () Bool)

(declare-fun get!2196 (ValueCell!1872 V!5555) V!5555)

(declare-fun dynLambda!516 (Int (_ BitVec 64)) V!5555)

(assert (=> b!189887 (= e!124983 (= (apply!178 lt!94098 (select (arr!3814 (_keys!5842 thiss!1248)) #b00000000000000000000000000000000)) (get!2196 (select (arr!3815 (array!8095 (store (arr!3815 (_values!3857 thiss!1248)) (index!4887 lt!94019) (ValueCellFull!1872 v!309)) (size!4135 (_values!3857 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!516 (defaultEntry!3874 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!189887 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4135 (array!8095 (store (arr!3815 (_values!3857 thiss!1248)) (index!4887 lt!94019) (ValueCellFull!1872 v!309)) (size!4135 (_values!3857 thiss!1248))))))))

(assert (=> b!189887 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4134 (_keys!5842 thiss!1248))))))

(declare-fun b!189888 () Bool)

(declare-fun e!124992 () ListLongMap!2443)

(declare-fun call!19160 () ListLongMap!2443)

(assert (=> b!189888 (= e!124992 call!19160)))

(declare-fun d!55663 () Bool)

(declare-fun e!124984 () Bool)

(assert (=> d!55663 e!124984))

(declare-fun res!89798 () Bool)

(assert (=> d!55663 (=> (not res!89798) (not e!124984))))

(assert (=> d!55663 (= res!89798 (or (bvsge #b00000000000000000000000000000000 (size!4134 (_keys!5842 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4134 (_keys!5842 thiss!1248))))))))

(declare-fun lt!94110 () ListLongMap!2443)

(assert (=> d!55663 (= lt!94098 lt!94110)))

(declare-fun lt!94101 () Unit!5731)

(declare-fun e!124989 () Unit!5731)

(assert (=> d!55663 (= lt!94101 e!124989)))

(declare-fun c!34110 () Bool)

(declare-fun e!124981 () Bool)

(assert (=> d!55663 (= c!34110 e!124981)))

(declare-fun res!89793 () Bool)

(assert (=> d!55663 (=> (not res!89793) (not e!124981))))

(assert (=> d!55663 (= res!89793 (bvslt #b00000000000000000000000000000000 (size!4134 (_keys!5842 thiss!1248))))))

(assert (=> d!55663 (= lt!94110 e!124985)))

(declare-fun c!34111 () Bool)

(assert (=> d!55663 (= c!34111 (and (not (= (bvand (extraKeys!3611 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3611 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55663 (validMask!0 (mask!9067 thiss!1248))))

(assert (=> d!55663 (= (getCurrentListMap!880 (_keys!5842 thiss!1248) (array!8095 (store (arr!3815 (_values!3857 thiss!1248)) (index!4887 lt!94019) (ValueCellFull!1872 v!309)) (size!4135 (_values!3857 thiss!1248))) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3874 thiss!1248)) lt!94098)))

(declare-fun bm!19153 () Bool)

(declare-fun call!19156 () ListLongMap!2443)

(assert (=> bm!19153 (= call!19156 call!19161)))

(declare-fun bm!19154 () Bool)

(assert (=> bm!19154 (= call!19160 call!19157)))

(declare-fun b!189889 () Bool)

(declare-fun e!124991 () Bool)

(assert (=> b!189889 (= e!124991 (= (apply!178 lt!94098 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3715 thiss!1248)))))

(declare-fun b!189890 () Bool)

(declare-fun res!89797 () Bool)

(assert (=> b!189890 (=> (not res!89797) (not e!124984))))

(assert (=> b!189890 (= res!89797 e!124986)))

(declare-fun c!34106 () Bool)

(assert (=> b!189890 (= c!34106 (not (= (bvand (extraKeys!3611 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!19155 () Bool)

(declare-fun call!19159 () Bool)

(assert (=> bm!19155 (= call!19159 (contains!1339 lt!94098 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!34108 () Bool)

(declare-fun bm!19156 () Bool)

(assert (=> bm!19156 (= call!19157 (+!295 (ite c!34111 call!19155 (ite c!34108 call!19161 call!19156)) (ite (or c!34111 c!34108) (tuple2!3513 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3715 thiss!1248)) (tuple2!3513 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3715 thiss!1248)))))))

(declare-fun b!189891 () Bool)

(declare-fun Unit!5734 () Unit!5731)

(assert (=> b!189891 (= e!124989 Unit!5734)))

(declare-fun b!189892 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!189892 (= e!124981 (validKeyInArray!0 (select (arr!3814 (_keys!5842 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!189893 () Bool)

(declare-fun res!89796 () Bool)

(assert (=> b!189893 (=> (not res!89796) (not e!124984))))

(declare-fun e!124990 () Bool)

(assert (=> b!189893 (= res!89796 e!124990)))

(declare-fun res!89794 () Bool)

(assert (=> b!189893 (=> res!89794 e!124990)))

(declare-fun e!124988 () Bool)

(assert (=> b!189893 (= res!89794 (not e!124988))))

(declare-fun res!89795 () Bool)

(assert (=> b!189893 (=> (not res!89795) (not e!124988))))

(assert (=> b!189893 (= res!89795 (bvslt #b00000000000000000000000000000000 (size!4134 (_keys!5842 thiss!1248))))))

(declare-fun b!189894 () Bool)

(declare-fun e!124980 () ListLongMap!2443)

(assert (=> b!189894 (= e!124980 call!19156)))

(declare-fun b!189895 () Bool)

(assert (=> b!189895 (= e!124986 e!124987)))

(declare-fun res!89800 () Bool)

(assert (=> b!189895 (= res!89800 call!19158)))

(assert (=> b!189895 (=> (not res!89800) (not e!124987))))

(declare-fun b!189896 () Bool)

(declare-fun e!124982 () Bool)

(assert (=> b!189896 (= e!124984 e!124982)))

(declare-fun c!34109 () Bool)

(assert (=> b!189896 (= c!34109 (not (= (bvand (extraKeys!3611 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!189897 () Bool)

(assert (=> b!189897 (= e!124985 e!124992)))

(assert (=> b!189897 (= c!34108 (and (not (= (bvand (extraKeys!3611 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3611 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!189898 () Bool)

(assert (=> b!189898 (= e!124990 e!124983)))

(declare-fun res!89799 () Bool)

(assert (=> b!189898 (=> (not res!89799) (not e!124983))))

(assert (=> b!189898 (= res!89799 (contains!1339 lt!94098 (select (arr!3814 (_keys!5842 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!189898 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4134 (_keys!5842 thiss!1248))))))

(declare-fun b!189899 () Bool)

(assert (=> b!189899 (= e!124982 (not call!19159))))

(declare-fun b!189900 () Bool)

(declare-fun c!34107 () Bool)

(assert (=> b!189900 (= c!34107 (and (not (= (bvand (extraKeys!3611 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3611 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!189900 (= e!124992 e!124980)))

(declare-fun b!189901 () Bool)

(assert (=> b!189901 (= e!124988 (validKeyInArray!0 (select (arr!3814 (_keys!5842 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!189902 () Bool)

(declare-fun lt!94095 () Unit!5731)

(assert (=> b!189902 (= e!124989 lt!94095)))

(declare-fun lt!94102 () ListLongMap!2443)

(declare-fun getCurrentListMapNoExtraKeys!208 (array!8092 array!8094 (_ BitVec 32) (_ BitVec 32) V!5555 V!5555 (_ BitVec 32) Int) ListLongMap!2443)

(assert (=> b!189902 (= lt!94102 (getCurrentListMapNoExtraKeys!208 (_keys!5842 thiss!1248) (array!8095 (store (arr!3815 (_values!3857 thiss!1248)) (index!4887 lt!94019) (ValueCellFull!1872 v!309)) (size!4135 (_values!3857 thiss!1248))) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3874 thiss!1248)))))

(declare-fun lt!94092 () (_ BitVec 64))

(assert (=> b!189902 (= lt!94092 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94091 () (_ BitVec 64))

(assert (=> b!189902 (= lt!94091 (select (arr!3814 (_keys!5842 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94097 () Unit!5731)

(declare-fun addStillContains!154 (ListLongMap!2443 (_ BitVec 64) V!5555 (_ BitVec 64)) Unit!5731)

(assert (=> b!189902 (= lt!94097 (addStillContains!154 lt!94102 lt!94092 (zeroValue!3715 thiss!1248) lt!94091))))

(assert (=> b!189902 (contains!1339 (+!295 lt!94102 (tuple2!3513 lt!94092 (zeroValue!3715 thiss!1248))) lt!94091)))

(declare-fun lt!94104 () Unit!5731)

(assert (=> b!189902 (= lt!94104 lt!94097)))

(declare-fun lt!94093 () ListLongMap!2443)

(assert (=> b!189902 (= lt!94093 (getCurrentListMapNoExtraKeys!208 (_keys!5842 thiss!1248) (array!8095 (store (arr!3815 (_values!3857 thiss!1248)) (index!4887 lt!94019) (ValueCellFull!1872 v!309)) (size!4135 (_values!3857 thiss!1248))) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3874 thiss!1248)))))

(declare-fun lt!94109 () (_ BitVec 64))

(assert (=> b!189902 (= lt!94109 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94094 () (_ BitVec 64))

(assert (=> b!189902 (= lt!94094 (select (arr!3814 (_keys!5842 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94100 () Unit!5731)

(declare-fun addApplyDifferent!154 (ListLongMap!2443 (_ BitVec 64) V!5555 (_ BitVec 64)) Unit!5731)

(assert (=> b!189902 (= lt!94100 (addApplyDifferent!154 lt!94093 lt!94109 (minValue!3715 thiss!1248) lt!94094))))

(assert (=> b!189902 (= (apply!178 (+!295 lt!94093 (tuple2!3513 lt!94109 (minValue!3715 thiss!1248))) lt!94094) (apply!178 lt!94093 lt!94094))))

(declare-fun lt!94099 () Unit!5731)

(assert (=> b!189902 (= lt!94099 lt!94100)))

(declare-fun lt!94105 () ListLongMap!2443)

(assert (=> b!189902 (= lt!94105 (getCurrentListMapNoExtraKeys!208 (_keys!5842 thiss!1248) (array!8095 (store (arr!3815 (_values!3857 thiss!1248)) (index!4887 lt!94019) (ValueCellFull!1872 v!309)) (size!4135 (_values!3857 thiss!1248))) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3874 thiss!1248)))))

(declare-fun lt!94108 () (_ BitVec 64))

(assert (=> b!189902 (= lt!94108 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94111 () (_ BitVec 64))

(assert (=> b!189902 (= lt!94111 (select (arr!3814 (_keys!5842 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94107 () Unit!5731)

(assert (=> b!189902 (= lt!94107 (addApplyDifferent!154 lt!94105 lt!94108 (zeroValue!3715 thiss!1248) lt!94111))))

(assert (=> b!189902 (= (apply!178 (+!295 lt!94105 (tuple2!3513 lt!94108 (zeroValue!3715 thiss!1248))) lt!94111) (apply!178 lt!94105 lt!94111))))

(declare-fun lt!94096 () Unit!5731)

(assert (=> b!189902 (= lt!94096 lt!94107)))

(declare-fun lt!94106 () ListLongMap!2443)

(assert (=> b!189902 (= lt!94106 (getCurrentListMapNoExtraKeys!208 (_keys!5842 thiss!1248) (array!8095 (store (arr!3815 (_values!3857 thiss!1248)) (index!4887 lt!94019) (ValueCellFull!1872 v!309)) (size!4135 (_values!3857 thiss!1248))) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3874 thiss!1248)))))

(declare-fun lt!94090 () (_ BitVec 64))

(assert (=> b!189902 (= lt!94090 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94103 () (_ BitVec 64))

(assert (=> b!189902 (= lt!94103 (select (arr!3814 (_keys!5842 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!189902 (= lt!94095 (addApplyDifferent!154 lt!94106 lt!94090 (minValue!3715 thiss!1248) lt!94103))))

(assert (=> b!189902 (= (apply!178 (+!295 lt!94106 (tuple2!3513 lt!94090 (minValue!3715 thiss!1248))) lt!94103) (apply!178 lt!94106 lt!94103))))

(declare-fun b!189903 () Bool)

(assert (=> b!189903 (= e!124982 e!124991)))

(declare-fun res!89792 () Bool)

(assert (=> b!189903 (= res!89792 call!19159)))

(assert (=> b!189903 (=> (not res!89792) (not e!124991))))

(declare-fun b!189904 () Bool)

(assert (=> b!189904 (= e!124980 call!19160)))

(declare-fun bm!19157 () Bool)

(assert (=> bm!19157 (= call!19158 (contains!1339 lt!94098 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19158 () Bool)

(assert (=> bm!19158 (= call!19155 (getCurrentListMapNoExtraKeys!208 (_keys!5842 thiss!1248) (array!8095 (store (arr!3815 (_values!3857 thiss!1248)) (index!4887 lt!94019) (ValueCellFull!1872 v!309)) (size!4135 (_values!3857 thiss!1248))) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3874 thiss!1248)))))

(assert (= (and d!55663 c!34111) b!189885))

(assert (= (and d!55663 (not c!34111)) b!189897))

(assert (= (and b!189897 c!34108) b!189888))

(assert (= (and b!189897 (not c!34108)) b!189900))

(assert (= (and b!189900 c!34107) b!189904))

(assert (= (and b!189900 (not c!34107)) b!189894))

(assert (= (or b!189904 b!189894) bm!19153))

(assert (= (or b!189888 bm!19153) bm!19152))

(assert (= (or b!189888 b!189904) bm!19154))

(assert (= (or b!189885 bm!19152) bm!19158))

(assert (= (or b!189885 bm!19154) bm!19156))

(assert (= (and d!55663 res!89793) b!189892))

(assert (= (and d!55663 c!34110) b!189902))

(assert (= (and d!55663 (not c!34110)) b!189891))

(assert (= (and d!55663 res!89798) b!189893))

(assert (= (and b!189893 res!89795) b!189901))

(assert (= (and b!189893 (not res!89794)) b!189898))

(assert (= (and b!189898 res!89799) b!189887))

(assert (= (and b!189893 res!89796) b!189890))

(assert (= (and b!189890 c!34106) b!189895))

(assert (= (and b!189890 (not c!34106)) b!189886))

(assert (= (and b!189895 res!89800) b!189884))

(assert (= (or b!189895 b!189886) bm!19157))

(assert (= (and b!189890 res!89797) b!189896))

(assert (= (and b!189896 c!34109) b!189903))

(assert (= (and b!189896 (not c!34109)) b!189899))

(assert (= (and b!189903 res!89792) b!189889))

(assert (= (or b!189903 b!189899) bm!19155))

(declare-fun b_lambda!7365 () Bool)

(assert (=> (not b_lambda!7365) (not b!189887)))

(declare-fun t!7349 () Bool)

(declare-fun tb!2875 () Bool)

(assert (=> (and b!189781 (= (defaultEntry!3874 thiss!1248) (defaultEntry!3874 thiss!1248)) t!7349) tb!2875))

(declare-fun result!4887 () Bool)

(assert (=> tb!2875 (= result!4887 tp_is_empty!4431)))

(assert (=> b!189887 t!7349))

(declare-fun b_and!11323 () Bool)

(assert (= b_and!11319 (and (=> t!7349 result!4887) b_and!11323)))

(assert (=> d!55663 m!216137))

(declare-fun m!216191 () Bool)

(assert (=> b!189884 m!216191))

(declare-fun m!216193 () Bool)

(assert (=> bm!19157 m!216193))

(declare-fun m!216195 () Bool)

(assert (=> bm!19156 m!216195))

(declare-fun m!216197 () Bool)

(assert (=> bm!19155 m!216197))

(declare-fun m!216199 () Bool)

(assert (=> b!189887 m!216199))

(declare-fun m!216201 () Bool)

(assert (=> b!189887 m!216201))

(declare-fun m!216203 () Bool)

(assert (=> b!189887 m!216203))

(assert (=> b!189887 m!216203))

(declare-fun m!216205 () Bool)

(assert (=> b!189887 m!216205))

(assert (=> b!189887 m!216199))

(assert (=> b!189887 m!216201))

(declare-fun m!216207 () Bool)

(assert (=> b!189887 m!216207))

(declare-fun m!216209 () Bool)

(assert (=> bm!19158 m!216209))

(assert (=> b!189898 m!216203))

(assert (=> b!189898 m!216203))

(declare-fun m!216211 () Bool)

(assert (=> b!189898 m!216211))

(assert (=> b!189901 m!216203))

(assert (=> b!189901 m!216203))

(declare-fun m!216213 () Bool)

(assert (=> b!189901 m!216213))

(declare-fun m!216215 () Bool)

(assert (=> b!189902 m!216215))

(declare-fun m!216217 () Bool)

(assert (=> b!189902 m!216217))

(declare-fun m!216219 () Bool)

(assert (=> b!189902 m!216219))

(assert (=> b!189902 m!216209))

(declare-fun m!216221 () Bool)

(assert (=> b!189902 m!216221))

(declare-fun m!216223 () Bool)

(assert (=> b!189902 m!216223))

(declare-fun m!216225 () Bool)

(assert (=> b!189902 m!216225))

(declare-fun m!216227 () Bool)

(assert (=> b!189902 m!216227))

(declare-fun m!216229 () Bool)

(assert (=> b!189902 m!216229))

(declare-fun m!216231 () Bool)

(assert (=> b!189902 m!216231))

(declare-fun m!216233 () Bool)

(assert (=> b!189902 m!216233))

(assert (=> b!189902 m!216215))

(declare-fun m!216235 () Bool)

(assert (=> b!189902 m!216235))

(declare-fun m!216237 () Bool)

(assert (=> b!189902 m!216237))

(assert (=> b!189902 m!216203))

(assert (=> b!189902 m!216221))

(declare-fun m!216239 () Bool)

(assert (=> b!189902 m!216239))

(declare-fun m!216241 () Bool)

(assert (=> b!189902 m!216241))

(assert (=> b!189902 m!216233))

(declare-fun m!216243 () Bool)

(assert (=> b!189902 m!216243))

(assert (=> b!189902 m!216229))

(declare-fun m!216245 () Bool)

(assert (=> b!189889 m!216245))

(assert (=> b!189892 m!216203))

(assert (=> b!189892 m!216203))

(assert (=> b!189892 m!216213))

(declare-fun m!216247 () Bool)

(assert (=> b!189885 m!216247))

(assert (=> b!189783 d!55663))

(declare-fun d!55665 () Bool)

(declare-fun e!124998 () Bool)

(assert (=> d!55665 e!124998))

(declare-fun res!89803 () Bool)

(assert (=> d!55665 (=> res!89803 e!124998)))

(declare-fun lt!94121 () Bool)

(assert (=> d!55665 (= res!89803 (not lt!94121))))

(declare-fun lt!94123 () Bool)

(assert (=> d!55665 (= lt!94121 lt!94123)))

(declare-fun lt!94120 () Unit!5731)

(declare-fun e!124997 () Unit!5731)

(assert (=> d!55665 (= lt!94120 e!124997)))

(declare-fun c!34114 () Bool)

(assert (=> d!55665 (= c!34114 lt!94123)))

(declare-fun containsKey!238 (List!2433 (_ BitVec 64)) Bool)

(assert (=> d!55665 (= lt!94123 (containsKey!238 (toList!1237 lt!94020) key!828))))

(assert (=> d!55665 (= (contains!1339 lt!94020 key!828) lt!94121)))

(declare-fun b!189913 () Bool)

(declare-fun lt!94122 () Unit!5731)

(assert (=> b!189913 (= e!124997 lt!94122)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!187 (List!2433 (_ BitVec 64)) Unit!5731)

(assert (=> b!189913 (= lt!94122 (lemmaContainsKeyImpliesGetValueByKeyDefined!187 (toList!1237 lt!94020) key!828))))

(declare-datatypes ((Option!240 0))(
  ( (Some!239 (v!4184 V!5555)) (None!238) )
))
(declare-fun isDefined!188 (Option!240) Bool)

(declare-fun getValueByKey!234 (List!2433 (_ BitVec 64)) Option!240)

(assert (=> b!189913 (isDefined!188 (getValueByKey!234 (toList!1237 lt!94020) key!828))))

(declare-fun b!189914 () Bool)

(declare-fun Unit!5735 () Unit!5731)

(assert (=> b!189914 (= e!124997 Unit!5735)))

(declare-fun b!189915 () Bool)

(assert (=> b!189915 (= e!124998 (isDefined!188 (getValueByKey!234 (toList!1237 lt!94020) key!828)))))

(assert (= (and d!55665 c!34114) b!189913))

(assert (= (and d!55665 (not c!34114)) b!189914))

(assert (= (and d!55665 (not res!89803)) b!189915))

(declare-fun m!216249 () Bool)

(assert (=> d!55665 m!216249))

(declare-fun m!216251 () Bool)

(assert (=> b!189913 m!216251))

(declare-fun m!216253 () Bool)

(assert (=> b!189913 m!216253))

(assert (=> b!189913 m!216253))

(declare-fun m!216255 () Bool)

(assert (=> b!189913 m!216255))

(assert (=> b!189915 m!216253))

(assert (=> b!189915 m!216253))

(assert (=> b!189915 m!216255))

(assert (=> b!189783 d!55665))

(declare-fun b!189916 () Bool)

(declare-fun e!125006 () Bool)

(declare-fun lt!94132 () ListLongMap!2443)

(assert (=> b!189916 (= e!125006 (= (apply!178 lt!94132 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3715 thiss!1248)))))

(declare-fun b!189917 () Bool)

(declare-fun e!125004 () ListLongMap!2443)

(declare-fun call!19164 () ListLongMap!2443)

(assert (=> b!189917 (= e!125004 (+!295 call!19164 (tuple2!3513 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3715 thiss!1248))))))

(declare-fun bm!19159 () Bool)

(declare-fun call!19168 () ListLongMap!2443)

(declare-fun call!19162 () ListLongMap!2443)

(assert (=> bm!19159 (= call!19168 call!19162)))

(declare-fun b!189918 () Bool)

(declare-fun e!125005 () Bool)

(declare-fun call!19165 () Bool)

(assert (=> b!189918 (= e!125005 (not call!19165))))

(declare-fun b!189919 () Bool)

(declare-fun e!125002 () Bool)

(assert (=> b!189919 (= e!125002 (= (apply!178 lt!94132 (select (arr!3814 (_keys!5842 thiss!1248)) #b00000000000000000000000000000000)) (get!2196 (select (arr!3815 (_values!3857 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!516 (defaultEntry!3874 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!189919 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4135 (_values!3857 thiss!1248))))))

(assert (=> b!189919 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4134 (_keys!5842 thiss!1248))))))

(declare-fun b!189920 () Bool)

(declare-fun e!125011 () ListLongMap!2443)

(declare-fun call!19167 () ListLongMap!2443)

(assert (=> b!189920 (= e!125011 call!19167)))

(declare-fun d!55667 () Bool)

(declare-fun e!125003 () Bool)

(assert (=> d!55667 e!125003))

(declare-fun res!89810 () Bool)

(assert (=> d!55667 (=> (not res!89810) (not e!125003))))

(assert (=> d!55667 (= res!89810 (or (bvsge #b00000000000000000000000000000000 (size!4134 (_keys!5842 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4134 (_keys!5842 thiss!1248))))))))

(declare-fun lt!94144 () ListLongMap!2443)

(assert (=> d!55667 (= lt!94132 lt!94144)))

(declare-fun lt!94135 () Unit!5731)

(declare-fun e!125008 () Unit!5731)

(assert (=> d!55667 (= lt!94135 e!125008)))

(declare-fun c!34119 () Bool)

(declare-fun e!125000 () Bool)

(assert (=> d!55667 (= c!34119 e!125000)))

(declare-fun res!89805 () Bool)

(assert (=> d!55667 (=> (not res!89805) (not e!125000))))

(assert (=> d!55667 (= res!89805 (bvslt #b00000000000000000000000000000000 (size!4134 (_keys!5842 thiss!1248))))))

(assert (=> d!55667 (= lt!94144 e!125004)))

(declare-fun c!34120 () Bool)

(assert (=> d!55667 (= c!34120 (and (not (= (bvand (extraKeys!3611 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3611 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55667 (validMask!0 (mask!9067 thiss!1248))))

(assert (=> d!55667 (= (getCurrentListMap!880 (_keys!5842 thiss!1248) (_values!3857 thiss!1248) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3874 thiss!1248)) lt!94132)))

(declare-fun bm!19160 () Bool)

(declare-fun call!19163 () ListLongMap!2443)

(assert (=> bm!19160 (= call!19163 call!19168)))

(declare-fun bm!19161 () Bool)

(assert (=> bm!19161 (= call!19167 call!19164)))

(declare-fun b!189921 () Bool)

(declare-fun e!125010 () Bool)

(assert (=> b!189921 (= e!125010 (= (apply!178 lt!94132 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3715 thiss!1248)))))

(declare-fun b!189922 () Bool)

(declare-fun res!89809 () Bool)

(assert (=> b!189922 (=> (not res!89809) (not e!125003))))

(assert (=> b!189922 (= res!89809 e!125005)))

(declare-fun c!34115 () Bool)

(assert (=> b!189922 (= c!34115 (not (= (bvand (extraKeys!3611 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!19162 () Bool)

(declare-fun call!19166 () Bool)

(assert (=> bm!19162 (= call!19166 (contains!1339 lt!94132 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!34117 () Bool)

(declare-fun bm!19163 () Bool)

(assert (=> bm!19163 (= call!19164 (+!295 (ite c!34120 call!19162 (ite c!34117 call!19168 call!19163)) (ite (or c!34120 c!34117) (tuple2!3513 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3715 thiss!1248)) (tuple2!3513 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3715 thiss!1248)))))))

(declare-fun b!189923 () Bool)

(declare-fun Unit!5736 () Unit!5731)

(assert (=> b!189923 (= e!125008 Unit!5736)))

(declare-fun b!189924 () Bool)

(assert (=> b!189924 (= e!125000 (validKeyInArray!0 (select (arr!3814 (_keys!5842 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!189925 () Bool)

(declare-fun res!89808 () Bool)

(assert (=> b!189925 (=> (not res!89808) (not e!125003))))

(declare-fun e!125009 () Bool)

(assert (=> b!189925 (= res!89808 e!125009)))

(declare-fun res!89806 () Bool)

(assert (=> b!189925 (=> res!89806 e!125009)))

(declare-fun e!125007 () Bool)

(assert (=> b!189925 (= res!89806 (not e!125007))))

(declare-fun res!89807 () Bool)

(assert (=> b!189925 (=> (not res!89807) (not e!125007))))

(assert (=> b!189925 (= res!89807 (bvslt #b00000000000000000000000000000000 (size!4134 (_keys!5842 thiss!1248))))))

(declare-fun b!189926 () Bool)

(declare-fun e!124999 () ListLongMap!2443)

(assert (=> b!189926 (= e!124999 call!19163)))

(declare-fun b!189927 () Bool)

(assert (=> b!189927 (= e!125005 e!125006)))

(declare-fun res!89812 () Bool)

(assert (=> b!189927 (= res!89812 call!19165)))

(assert (=> b!189927 (=> (not res!89812) (not e!125006))))

(declare-fun b!189928 () Bool)

(declare-fun e!125001 () Bool)

(assert (=> b!189928 (= e!125003 e!125001)))

(declare-fun c!34118 () Bool)

(assert (=> b!189928 (= c!34118 (not (= (bvand (extraKeys!3611 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!189929 () Bool)

(assert (=> b!189929 (= e!125004 e!125011)))

(assert (=> b!189929 (= c!34117 (and (not (= (bvand (extraKeys!3611 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3611 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!189930 () Bool)

(assert (=> b!189930 (= e!125009 e!125002)))

(declare-fun res!89811 () Bool)

(assert (=> b!189930 (=> (not res!89811) (not e!125002))))

(assert (=> b!189930 (= res!89811 (contains!1339 lt!94132 (select (arr!3814 (_keys!5842 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!189930 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4134 (_keys!5842 thiss!1248))))))

(declare-fun b!189931 () Bool)

(assert (=> b!189931 (= e!125001 (not call!19166))))

(declare-fun b!189932 () Bool)

(declare-fun c!34116 () Bool)

(assert (=> b!189932 (= c!34116 (and (not (= (bvand (extraKeys!3611 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3611 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!189932 (= e!125011 e!124999)))

(declare-fun b!189933 () Bool)

(assert (=> b!189933 (= e!125007 (validKeyInArray!0 (select (arr!3814 (_keys!5842 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!189934 () Bool)

(declare-fun lt!94129 () Unit!5731)

(assert (=> b!189934 (= e!125008 lt!94129)))

(declare-fun lt!94136 () ListLongMap!2443)

(assert (=> b!189934 (= lt!94136 (getCurrentListMapNoExtraKeys!208 (_keys!5842 thiss!1248) (_values!3857 thiss!1248) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3874 thiss!1248)))))

(declare-fun lt!94126 () (_ BitVec 64))

(assert (=> b!189934 (= lt!94126 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94125 () (_ BitVec 64))

(assert (=> b!189934 (= lt!94125 (select (arr!3814 (_keys!5842 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94131 () Unit!5731)

(assert (=> b!189934 (= lt!94131 (addStillContains!154 lt!94136 lt!94126 (zeroValue!3715 thiss!1248) lt!94125))))

(assert (=> b!189934 (contains!1339 (+!295 lt!94136 (tuple2!3513 lt!94126 (zeroValue!3715 thiss!1248))) lt!94125)))

(declare-fun lt!94138 () Unit!5731)

(assert (=> b!189934 (= lt!94138 lt!94131)))

(declare-fun lt!94127 () ListLongMap!2443)

(assert (=> b!189934 (= lt!94127 (getCurrentListMapNoExtraKeys!208 (_keys!5842 thiss!1248) (_values!3857 thiss!1248) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3874 thiss!1248)))))

(declare-fun lt!94143 () (_ BitVec 64))

(assert (=> b!189934 (= lt!94143 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94128 () (_ BitVec 64))

(assert (=> b!189934 (= lt!94128 (select (arr!3814 (_keys!5842 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94134 () Unit!5731)

(assert (=> b!189934 (= lt!94134 (addApplyDifferent!154 lt!94127 lt!94143 (minValue!3715 thiss!1248) lt!94128))))

(assert (=> b!189934 (= (apply!178 (+!295 lt!94127 (tuple2!3513 lt!94143 (minValue!3715 thiss!1248))) lt!94128) (apply!178 lt!94127 lt!94128))))

(declare-fun lt!94133 () Unit!5731)

(assert (=> b!189934 (= lt!94133 lt!94134)))

(declare-fun lt!94139 () ListLongMap!2443)

(assert (=> b!189934 (= lt!94139 (getCurrentListMapNoExtraKeys!208 (_keys!5842 thiss!1248) (_values!3857 thiss!1248) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3874 thiss!1248)))))

(declare-fun lt!94142 () (_ BitVec 64))

(assert (=> b!189934 (= lt!94142 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94145 () (_ BitVec 64))

(assert (=> b!189934 (= lt!94145 (select (arr!3814 (_keys!5842 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94141 () Unit!5731)

(assert (=> b!189934 (= lt!94141 (addApplyDifferent!154 lt!94139 lt!94142 (zeroValue!3715 thiss!1248) lt!94145))))

(assert (=> b!189934 (= (apply!178 (+!295 lt!94139 (tuple2!3513 lt!94142 (zeroValue!3715 thiss!1248))) lt!94145) (apply!178 lt!94139 lt!94145))))

(declare-fun lt!94130 () Unit!5731)

(assert (=> b!189934 (= lt!94130 lt!94141)))

(declare-fun lt!94140 () ListLongMap!2443)

(assert (=> b!189934 (= lt!94140 (getCurrentListMapNoExtraKeys!208 (_keys!5842 thiss!1248) (_values!3857 thiss!1248) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3874 thiss!1248)))))

(declare-fun lt!94124 () (_ BitVec 64))

(assert (=> b!189934 (= lt!94124 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94137 () (_ BitVec 64))

(assert (=> b!189934 (= lt!94137 (select (arr!3814 (_keys!5842 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!189934 (= lt!94129 (addApplyDifferent!154 lt!94140 lt!94124 (minValue!3715 thiss!1248) lt!94137))))

(assert (=> b!189934 (= (apply!178 (+!295 lt!94140 (tuple2!3513 lt!94124 (minValue!3715 thiss!1248))) lt!94137) (apply!178 lt!94140 lt!94137))))

(declare-fun b!189935 () Bool)

(assert (=> b!189935 (= e!125001 e!125010)))

(declare-fun res!89804 () Bool)

(assert (=> b!189935 (= res!89804 call!19166)))

(assert (=> b!189935 (=> (not res!89804) (not e!125010))))

(declare-fun b!189936 () Bool)

(assert (=> b!189936 (= e!124999 call!19167)))

(declare-fun bm!19164 () Bool)

(assert (=> bm!19164 (= call!19165 (contains!1339 lt!94132 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19165 () Bool)

(assert (=> bm!19165 (= call!19162 (getCurrentListMapNoExtraKeys!208 (_keys!5842 thiss!1248) (_values!3857 thiss!1248) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3874 thiss!1248)))))

(assert (= (and d!55667 c!34120) b!189917))

(assert (= (and d!55667 (not c!34120)) b!189929))

(assert (= (and b!189929 c!34117) b!189920))

(assert (= (and b!189929 (not c!34117)) b!189932))

(assert (= (and b!189932 c!34116) b!189936))

(assert (= (and b!189932 (not c!34116)) b!189926))

(assert (= (or b!189936 b!189926) bm!19160))

(assert (= (or b!189920 bm!19160) bm!19159))

(assert (= (or b!189920 b!189936) bm!19161))

(assert (= (or b!189917 bm!19159) bm!19165))

(assert (= (or b!189917 bm!19161) bm!19163))

(assert (= (and d!55667 res!89805) b!189924))

(assert (= (and d!55667 c!34119) b!189934))

(assert (= (and d!55667 (not c!34119)) b!189923))

(assert (= (and d!55667 res!89810) b!189925))

(assert (= (and b!189925 res!89807) b!189933))

(assert (= (and b!189925 (not res!89806)) b!189930))

(assert (= (and b!189930 res!89811) b!189919))

(assert (= (and b!189925 res!89808) b!189922))

(assert (= (and b!189922 c!34115) b!189927))

(assert (= (and b!189922 (not c!34115)) b!189918))

(assert (= (and b!189927 res!89812) b!189916))

(assert (= (or b!189927 b!189918) bm!19164))

(assert (= (and b!189922 res!89809) b!189928))

(assert (= (and b!189928 c!34118) b!189935))

(assert (= (and b!189928 (not c!34118)) b!189931))

(assert (= (and b!189935 res!89804) b!189921))

(assert (= (or b!189935 b!189931) bm!19162))

(declare-fun b_lambda!7367 () Bool)

(assert (=> (not b_lambda!7367) (not b!189919)))

(assert (=> b!189919 t!7349))

(declare-fun b_and!11325 () Bool)

(assert (= b_and!11323 (and (=> t!7349 result!4887) b_and!11325)))

(assert (=> d!55667 m!216137))

(declare-fun m!216257 () Bool)

(assert (=> b!189916 m!216257))

(declare-fun m!216259 () Bool)

(assert (=> bm!19164 m!216259))

(declare-fun m!216261 () Bool)

(assert (=> bm!19163 m!216261))

(declare-fun m!216263 () Bool)

(assert (=> bm!19162 m!216263))

(declare-fun m!216265 () Bool)

(assert (=> b!189919 m!216265))

(assert (=> b!189919 m!216201))

(assert (=> b!189919 m!216203))

(assert (=> b!189919 m!216203))

(declare-fun m!216267 () Bool)

(assert (=> b!189919 m!216267))

(assert (=> b!189919 m!216265))

(assert (=> b!189919 m!216201))

(declare-fun m!216269 () Bool)

(assert (=> b!189919 m!216269))

(declare-fun m!216271 () Bool)

(assert (=> bm!19165 m!216271))

(assert (=> b!189930 m!216203))

(assert (=> b!189930 m!216203))

(declare-fun m!216273 () Bool)

(assert (=> b!189930 m!216273))

(assert (=> b!189933 m!216203))

(assert (=> b!189933 m!216203))

(assert (=> b!189933 m!216213))

(declare-fun m!216275 () Bool)

(assert (=> b!189934 m!216275))

(declare-fun m!216277 () Bool)

(assert (=> b!189934 m!216277))

(declare-fun m!216279 () Bool)

(assert (=> b!189934 m!216279))

(assert (=> b!189934 m!216271))

(declare-fun m!216281 () Bool)

(assert (=> b!189934 m!216281))

(declare-fun m!216283 () Bool)

(assert (=> b!189934 m!216283))

(declare-fun m!216285 () Bool)

(assert (=> b!189934 m!216285))

(declare-fun m!216287 () Bool)

(assert (=> b!189934 m!216287))

(declare-fun m!216289 () Bool)

(assert (=> b!189934 m!216289))

(declare-fun m!216291 () Bool)

(assert (=> b!189934 m!216291))

(declare-fun m!216293 () Bool)

(assert (=> b!189934 m!216293))

(assert (=> b!189934 m!216275))

(declare-fun m!216295 () Bool)

(assert (=> b!189934 m!216295))

(declare-fun m!216297 () Bool)

(assert (=> b!189934 m!216297))

(assert (=> b!189934 m!216203))

(assert (=> b!189934 m!216281))

(declare-fun m!216299 () Bool)

(assert (=> b!189934 m!216299))

(declare-fun m!216301 () Bool)

(assert (=> b!189934 m!216301))

(assert (=> b!189934 m!216293))

(declare-fun m!216303 () Bool)

(assert (=> b!189934 m!216303))

(assert (=> b!189934 m!216289))

(declare-fun m!216305 () Bool)

(assert (=> b!189921 m!216305))

(assert (=> b!189924 m!216203))

(assert (=> b!189924 m!216203))

(assert (=> b!189924 m!216213))

(declare-fun m!216307 () Bool)

(assert (=> b!189917 m!216307))

(assert (=> b!189783 d!55667))

(declare-fun d!55669 () Bool)

(declare-fun e!125014 () Bool)

(assert (=> d!55669 e!125014))

(declare-fun res!89815 () Bool)

(assert (=> d!55669 (=> (not res!89815) (not e!125014))))

(assert (=> d!55669 (= res!89815 (and (bvsge (index!4887 lt!94019) #b00000000000000000000000000000000) (bvslt (index!4887 lt!94019) (size!4135 (_values!3857 thiss!1248)))))))

(declare-fun lt!94148 () Unit!5731)

(declare-fun choose!1026 (array!8092 array!8094 (_ BitVec 32) (_ BitVec 32) V!5555 V!5555 (_ BitVec 32) (_ BitVec 64) V!5555 Int) Unit!5731)

(assert (=> d!55669 (= lt!94148 (choose!1026 (_keys!5842 thiss!1248) (_values!3857 thiss!1248) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) (index!4887 lt!94019) key!828 v!309 (defaultEntry!3874 thiss!1248)))))

(assert (=> d!55669 (validMask!0 (mask!9067 thiss!1248))))

(assert (=> d!55669 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!101 (_keys!5842 thiss!1248) (_values!3857 thiss!1248) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) (index!4887 lt!94019) key!828 v!309 (defaultEntry!3874 thiss!1248)) lt!94148)))

(declare-fun b!189939 () Bool)

(assert (=> b!189939 (= e!125014 (= (+!295 (getCurrentListMap!880 (_keys!5842 thiss!1248) (_values!3857 thiss!1248) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3874 thiss!1248)) (tuple2!3513 key!828 v!309)) (getCurrentListMap!880 (_keys!5842 thiss!1248) (array!8095 (store (arr!3815 (_values!3857 thiss!1248)) (index!4887 lt!94019) (ValueCellFull!1872 v!309)) (size!4135 (_values!3857 thiss!1248))) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3874 thiss!1248))))))

(assert (= (and d!55669 res!89815) b!189939))

(declare-fun m!216309 () Bool)

(assert (=> d!55669 m!216309))

(assert (=> d!55669 m!216137))

(assert (=> b!189939 m!216127))

(assert (=> b!189939 m!216127))

(declare-fun m!216311 () Bool)

(assert (=> b!189939 m!216311))

(assert (=> b!189939 m!216133))

(assert (=> b!189939 m!216135))

(assert (=> b!189783 d!55669))

(declare-fun d!55671 () Bool)

(declare-fun e!125017 () Bool)

(assert (=> d!55671 e!125017))

(declare-fun res!89821 () Bool)

(assert (=> d!55671 (=> (not res!89821) (not e!125017))))

(declare-fun lt!94160 () ListLongMap!2443)

(assert (=> d!55671 (= res!89821 (contains!1339 lt!94160 (_1!1766 (tuple2!3513 key!828 v!309))))))

(declare-fun lt!94157 () List!2433)

(assert (=> d!55671 (= lt!94160 (ListLongMap!2444 lt!94157))))

(declare-fun lt!94158 () Unit!5731)

(declare-fun lt!94159 () Unit!5731)

(assert (=> d!55671 (= lt!94158 lt!94159)))

(assert (=> d!55671 (= (getValueByKey!234 lt!94157 (_1!1766 (tuple2!3513 key!828 v!309))) (Some!239 (_2!1766 (tuple2!3513 key!828 v!309))))))

(declare-fun lemmaContainsTupThenGetReturnValue!123 (List!2433 (_ BitVec 64) V!5555) Unit!5731)

(assert (=> d!55671 (= lt!94159 (lemmaContainsTupThenGetReturnValue!123 lt!94157 (_1!1766 (tuple2!3513 key!828 v!309)) (_2!1766 (tuple2!3513 key!828 v!309))))))

(declare-fun insertStrictlySorted!125 (List!2433 (_ BitVec 64) V!5555) List!2433)

(assert (=> d!55671 (= lt!94157 (insertStrictlySorted!125 (toList!1237 lt!94020) (_1!1766 (tuple2!3513 key!828 v!309)) (_2!1766 (tuple2!3513 key!828 v!309))))))

(assert (=> d!55671 (= (+!295 lt!94020 (tuple2!3513 key!828 v!309)) lt!94160)))

(declare-fun b!189944 () Bool)

(declare-fun res!89820 () Bool)

(assert (=> b!189944 (=> (not res!89820) (not e!125017))))

(assert (=> b!189944 (= res!89820 (= (getValueByKey!234 (toList!1237 lt!94160) (_1!1766 (tuple2!3513 key!828 v!309))) (Some!239 (_2!1766 (tuple2!3513 key!828 v!309)))))))

(declare-fun b!189945 () Bool)

(declare-fun contains!1340 (List!2433 tuple2!3512) Bool)

(assert (=> b!189945 (= e!125017 (contains!1340 (toList!1237 lt!94160) (tuple2!3513 key!828 v!309)))))

(assert (= (and d!55671 res!89821) b!189944))

(assert (= (and b!189944 res!89820) b!189945))

(declare-fun m!216313 () Bool)

(assert (=> d!55671 m!216313))

(declare-fun m!216315 () Bool)

(assert (=> d!55671 m!216315))

(declare-fun m!216317 () Bool)

(assert (=> d!55671 m!216317))

(declare-fun m!216319 () Bool)

(assert (=> d!55671 m!216319))

(declare-fun m!216321 () Bool)

(assert (=> b!189944 m!216321))

(declare-fun m!216323 () Bool)

(assert (=> b!189945 m!216323))

(assert (=> b!189783 d!55671))

(declare-fun b!189959 () Bool)

(declare-fun c!34128 () Bool)

(declare-fun lt!94167 () (_ BitVec 64))

(assert (=> b!189959 (= c!34128 (= lt!94167 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!125026 () SeekEntryResult!679)

(declare-fun e!125024 () SeekEntryResult!679)

(assert (=> b!189959 (= e!125026 e!125024)))

(declare-fun b!189960 () Bool)

(declare-fun lt!94168 () SeekEntryResult!679)

(assert (=> b!189960 (= e!125026 (Found!679 (index!4888 lt!94168)))))

(declare-fun b!189961 () Bool)

(assert (=> b!189961 (= e!125024 (MissingZero!679 (index!4888 lt!94168)))))

(declare-fun d!55673 () Bool)

(declare-fun lt!94169 () SeekEntryResult!679)

(assert (=> d!55673 (and (or ((_ is Undefined!679) lt!94169) (not ((_ is Found!679) lt!94169)) (and (bvsge (index!4887 lt!94169) #b00000000000000000000000000000000) (bvslt (index!4887 lt!94169) (size!4134 (_keys!5842 thiss!1248))))) (or ((_ is Undefined!679) lt!94169) ((_ is Found!679) lt!94169) (not ((_ is MissingZero!679) lt!94169)) (and (bvsge (index!4886 lt!94169) #b00000000000000000000000000000000) (bvslt (index!4886 lt!94169) (size!4134 (_keys!5842 thiss!1248))))) (or ((_ is Undefined!679) lt!94169) ((_ is Found!679) lt!94169) ((_ is MissingZero!679) lt!94169) (not ((_ is MissingVacant!679) lt!94169)) (and (bvsge (index!4889 lt!94169) #b00000000000000000000000000000000) (bvslt (index!4889 lt!94169) (size!4134 (_keys!5842 thiss!1248))))) (or ((_ is Undefined!679) lt!94169) (ite ((_ is Found!679) lt!94169) (= (select (arr!3814 (_keys!5842 thiss!1248)) (index!4887 lt!94169)) key!828) (ite ((_ is MissingZero!679) lt!94169) (= (select (arr!3814 (_keys!5842 thiss!1248)) (index!4886 lt!94169)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!679) lt!94169) (= (select (arr!3814 (_keys!5842 thiss!1248)) (index!4889 lt!94169)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!125025 () SeekEntryResult!679)

(assert (=> d!55673 (= lt!94169 e!125025)))

(declare-fun c!34129 () Bool)

(assert (=> d!55673 (= c!34129 (and ((_ is Intermediate!679) lt!94168) (undefined!1491 lt!94168)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8092 (_ BitVec 32)) SeekEntryResult!679)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!55673 (= lt!94168 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9067 thiss!1248)) key!828 (_keys!5842 thiss!1248) (mask!9067 thiss!1248)))))

(assert (=> d!55673 (validMask!0 (mask!9067 thiss!1248))))

(assert (=> d!55673 (= (seekEntryOrOpen!0 key!828 (_keys!5842 thiss!1248) (mask!9067 thiss!1248)) lt!94169)))

(declare-fun b!189958 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8092 (_ BitVec 32)) SeekEntryResult!679)

(assert (=> b!189958 (= e!125024 (seekKeyOrZeroReturnVacant!0 (x!20463 lt!94168) (index!4888 lt!94168) (index!4888 lt!94168) key!828 (_keys!5842 thiss!1248) (mask!9067 thiss!1248)))))

(declare-fun b!189962 () Bool)

(assert (=> b!189962 (= e!125025 e!125026)))

(assert (=> b!189962 (= lt!94167 (select (arr!3814 (_keys!5842 thiss!1248)) (index!4888 lt!94168)))))

(declare-fun c!34127 () Bool)

(assert (=> b!189962 (= c!34127 (= lt!94167 key!828))))

(declare-fun b!189963 () Bool)

(assert (=> b!189963 (= e!125025 Undefined!679)))

(assert (= (and d!55673 c!34129) b!189963))

(assert (= (and d!55673 (not c!34129)) b!189962))

(assert (= (and b!189962 c!34127) b!189960))

(assert (= (and b!189962 (not c!34127)) b!189959))

(assert (= (and b!189959 c!34128) b!189961))

(assert (= (and b!189959 (not c!34128)) b!189958))

(declare-fun m!216325 () Bool)

(assert (=> d!55673 m!216325))

(declare-fun m!216327 () Bool)

(assert (=> d!55673 m!216327))

(assert (=> d!55673 m!216325))

(declare-fun m!216329 () Bool)

(assert (=> d!55673 m!216329))

(assert (=> d!55673 m!216137))

(declare-fun m!216331 () Bool)

(assert (=> d!55673 m!216331))

(declare-fun m!216333 () Bool)

(assert (=> d!55673 m!216333))

(declare-fun m!216335 () Bool)

(assert (=> b!189958 m!216335))

(declare-fun m!216337 () Bool)

(assert (=> b!189962 m!216337))

(assert (=> b!189785 d!55673))

(declare-fun d!55675 () Bool)

(assert (=> d!55675 (= (array_inv!2461 (_keys!5842 thiss!1248)) (bvsge (size!4134 (_keys!5842 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!189781 d!55675))

(declare-fun d!55677 () Bool)

(assert (=> d!55677 (= (array_inv!2462 (_values!3857 thiss!1248)) (bvsge (size!4135 (_values!3857 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!189781 d!55677))

(declare-fun d!55679 () Bool)

(declare-fun res!89828 () Bool)

(declare-fun e!125029 () Bool)

(assert (=> d!55679 (=> (not res!89828) (not e!125029))))

(declare-fun simpleValid!193 (LongMapFixedSize!2652) Bool)

(assert (=> d!55679 (= res!89828 (simpleValid!193 thiss!1248))))

(assert (=> d!55679 (= (valid!1081 thiss!1248) e!125029)))

(declare-fun b!189970 () Bool)

(declare-fun res!89829 () Bool)

(assert (=> b!189970 (=> (not res!89829) (not e!125029))))

(declare-fun arrayCountValidKeys!0 (array!8092 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!189970 (= res!89829 (= (arrayCountValidKeys!0 (_keys!5842 thiss!1248) #b00000000000000000000000000000000 (size!4134 (_keys!5842 thiss!1248))) (_size!1375 thiss!1248)))))

(declare-fun b!189971 () Bool)

(declare-fun res!89830 () Bool)

(assert (=> b!189971 (=> (not res!89830) (not e!125029))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8092 (_ BitVec 32)) Bool)

(assert (=> b!189971 (= res!89830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5842 thiss!1248) (mask!9067 thiss!1248)))))

(declare-fun b!189972 () Bool)

(declare-datatypes ((List!2434 0))(
  ( (Nil!2431) (Cons!2430 (h!3067 (_ BitVec 64)) (t!7350 List!2434)) )
))
(declare-fun arrayNoDuplicates!0 (array!8092 (_ BitVec 32) List!2434) Bool)

(assert (=> b!189972 (= e!125029 (arrayNoDuplicates!0 (_keys!5842 thiss!1248) #b00000000000000000000000000000000 Nil!2431))))

(assert (= (and d!55679 res!89828) b!189970))

(assert (= (and b!189970 res!89829) b!189971))

(assert (= (and b!189971 res!89830) b!189972))

(declare-fun m!216339 () Bool)

(assert (=> d!55679 m!216339))

(declare-fun m!216341 () Bool)

(assert (=> b!189970 m!216341))

(declare-fun m!216343 () Bool)

(assert (=> b!189971 m!216343))

(declare-fun m!216345 () Bool)

(assert (=> b!189972 m!216345))

(assert (=> start!19302 d!55679))

(declare-fun d!55681 () Bool)

(declare-fun e!125032 () Bool)

(assert (=> d!55681 e!125032))

(declare-fun res!89835 () Bool)

(assert (=> d!55681 (=> (not res!89835) (not e!125032))))

(declare-fun lt!94175 () SeekEntryResult!679)

(assert (=> d!55681 (= res!89835 ((_ is Found!679) lt!94175))))

(assert (=> d!55681 (= lt!94175 (seekEntryOrOpen!0 key!828 (_keys!5842 thiss!1248) (mask!9067 thiss!1248)))))

(declare-fun lt!94174 () Unit!5731)

(declare-fun choose!1027 (array!8092 array!8094 (_ BitVec 32) (_ BitVec 32) V!5555 V!5555 (_ BitVec 64) Int) Unit!5731)

(assert (=> d!55681 (= lt!94174 (choose!1027 (_keys!5842 thiss!1248) (_values!3857 thiss!1248) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) key!828 (defaultEntry!3874 thiss!1248)))))

(assert (=> d!55681 (validMask!0 (mask!9067 thiss!1248))))

(assert (=> d!55681 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!169 (_keys!5842 thiss!1248) (_values!3857 thiss!1248) (mask!9067 thiss!1248) (extraKeys!3611 thiss!1248) (zeroValue!3715 thiss!1248) (minValue!3715 thiss!1248) key!828 (defaultEntry!3874 thiss!1248)) lt!94174)))

(declare-fun b!189977 () Bool)

(declare-fun res!89836 () Bool)

(assert (=> b!189977 (=> (not res!89836) (not e!125032))))

(assert (=> b!189977 (= res!89836 (inRange!0 (index!4887 lt!94175) (mask!9067 thiss!1248)))))

(declare-fun b!189978 () Bool)

(assert (=> b!189978 (= e!125032 (= (select (arr!3814 (_keys!5842 thiss!1248)) (index!4887 lt!94175)) key!828))))

(assert (=> b!189978 (and (bvsge (index!4887 lt!94175) #b00000000000000000000000000000000) (bvslt (index!4887 lt!94175) (size!4134 (_keys!5842 thiss!1248))))))

(assert (= (and d!55681 res!89835) b!189977))

(assert (= (and b!189977 res!89836) b!189978))

(assert (=> d!55681 m!216147))

(declare-fun m!216347 () Bool)

(assert (=> d!55681 m!216347))

(assert (=> d!55681 m!216137))

(declare-fun m!216349 () Bool)

(assert (=> b!189977 m!216349))

(declare-fun m!216351 () Bool)

(assert (=> b!189978 m!216351))

(assert (=> b!189784 d!55681))

(declare-fun d!55683 () Bool)

(assert (=> d!55683 (= (inRange!0 (index!4887 lt!94019) (mask!9067 thiss!1248)) (and (bvsge (index!4887 lt!94019) #b00000000000000000000000000000000) (bvslt (index!4887 lt!94019) (bvadd (mask!9067 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!189784 d!55683))

(declare-fun b!189985 () Bool)

(declare-fun e!125038 () Bool)

(assert (=> b!189985 (= e!125038 tp_is_empty!4431)))

(declare-fun mapIsEmpty!7651 () Bool)

(declare-fun mapRes!7651 () Bool)

(assert (=> mapIsEmpty!7651 mapRes!7651))

(declare-fun condMapEmpty!7651 () Bool)

(declare-fun mapDefault!7651 () ValueCell!1872)

(assert (=> mapNonEmpty!7645 (= condMapEmpty!7651 (= mapRest!7645 ((as const (Array (_ BitVec 32) ValueCell!1872)) mapDefault!7651)))))

(declare-fun e!125037 () Bool)

(assert (=> mapNonEmpty!7645 (= tp!16812 (and e!125037 mapRes!7651))))

(declare-fun b!189986 () Bool)

(assert (=> b!189986 (= e!125037 tp_is_empty!4431)))

(declare-fun mapNonEmpty!7651 () Bool)

(declare-fun tp!16822 () Bool)

(assert (=> mapNonEmpty!7651 (= mapRes!7651 (and tp!16822 e!125038))))

(declare-fun mapKey!7651 () (_ BitVec 32))

(declare-fun mapValue!7651 () ValueCell!1872)

(declare-fun mapRest!7651 () (Array (_ BitVec 32) ValueCell!1872))

(assert (=> mapNonEmpty!7651 (= mapRest!7645 (store mapRest!7651 mapKey!7651 mapValue!7651))))

(assert (= (and mapNonEmpty!7645 condMapEmpty!7651) mapIsEmpty!7651))

(assert (= (and mapNonEmpty!7645 (not condMapEmpty!7651)) mapNonEmpty!7651))

(assert (= (and mapNonEmpty!7651 ((_ is ValueCellFull!1872) mapValue!7651)) b!189985))

(assert (= (and mapNonEmpty!7645 ((_ is ValueCellFull!1872) mapDefault!7651)) b!189986))

(declare-fun m!216353 () Bool)

(assert (=> mapNonEmpty!7651 m!216353))

(declare-fun b_lambda!7369 () Bool)

(assert (= b_lambda!7367 (or (and b!189781 b_free!4659) b_lambda!7369)))

(declare-fun b_lambda!7371 () Bool)

(assert (= b_lambda!7365 (or (and b!189781 b_free!4659) b_lambda!7371)))

(check-sat (not bm!19137) (not b!189939) tp_is_empty!4431 (not b!189971) (not b!189924) (not bm!19157) (not b!189913) (not b!189970) (not d!55669) (not b!189917) (not bm!19136) (not b!189902) (not d!55679) (not d!55681) (not d!55673) (not bm!19162) (not b_next!4659) (not b!189892) (not bm!19158) (not b!189945) (not b!189977) (not b!189885) (not b!189898) (not b!189921) (not b!189933) (not bm!19164) (not b!189887) (not bm!19156) (not b!189972) b_and!11325 (not d!55671) (not d!55659) (not b!189934) (not mapNonEmpty!7651) (not b!189889) (not b_lambda!7369) (not b_lambda!7371) (not b!189884) (not d!55663) (not b!189919) (not bm!19155) (not b!189901) (not b!189958) (not d!55667) (not bm!19165) (not d!55665) (not b!189916) (not b!189944) (not b!189930) (not b!189915) (not bm!19163))
(check-sat b_and!11325 (not b_next!4659))
