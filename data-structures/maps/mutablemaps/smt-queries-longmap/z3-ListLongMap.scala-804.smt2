; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19332 () Bool)

(assert start!19332)

(declare-fun b!190050 () Bool)

(declare-fun b_free!4665 () Bool)

(declare-fun b_next!4665 () Bool)

(assert (=> b!190050 (= b_free!4665 (not b_next!4665))))

(declare-fun tp!16834 () Bool)

(declare-fun b_and!11329 () Bool)

(assert (=> b!190050 (= tp!16834 b_and!11329)))

(declare-fun mapIsEmpty!7657 () Bool)

(declare-fun mapRes!7657 () Bool)

(assert (=> mapIsEmpty!7657 mapRes!7657))

(declare-fun b!190042 () Bool)

(declare-fun e!125094 () Bool)

(declare-fun e!125098 () Bool)

(assert (=> b!190042 (= e!125094 e!125098)))

(declare-fun res!89862 () Bool)

(assert (=> b!190042 (=> (not res!89862) (not e!125098))))

(declare-datatypes ((SeekEntryResult!682 0))(
  ( (MissingZero!682 (index!4898 (_ BitVec 32))) (Found!682 (index!4899 (_ BitVec 32))) (Intermediate!682 (undefined!1494 Bool) (index!4900 (_ BitVec 32)) (x!20484 (_ BitVec 32))) (Undefined!682) (MissingVacant!682 (index!4901 (_ BitVec 32))) )
))
(declare-fun lt!94206 () SeekEntryResult!682)

(get-info :version)

(assert (=> b!190042 (= res!89862 (and (not ((_ is Undefined!682) lt!94206)) (not ((_ is MissingVacant!682) lt!94206)) (not ((_ is MissingZero!682) lt!94206)) ((_ is Found!682) lt!94206)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!5563 0))(
  ( (V!5564 (val!2263 Int)) )
))
(declare-datatypes ((ValueCell!1875 0))(
  ( (ValueCellFull!1875 (v!4186 V!5563)) (EmptyCell!1875) )
))
(declare-datatypes ((array!8106 0))(
  ( (array!8107 (arr!3820 (Array (_ BitVec 32) (_ BitVec 64))) (size!4140 (_ BitVec 32))) )
))
(declare-datatypes ((array!8108 0))(
  ( (array!8109 (arr!3821 (Array (_ BitVec 32) ValueCell!1875)) (size!4141 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2658 0))(
  ( (LongMapFixedSize!2659 (defaultEntry!3881 Int) (mask!9079 (_ BitVec 32)) (extraKeys!3618 (_ BitVec 32)) (zeroValue!3722 V!5563) (minValue!3722 V!5563) (_size!1378 (_ BitVec 32)) (_keys!5850 array!8106) (_values!3864 array!8108) (_vacant!1378 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2658)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8106 (_ BitVec 32)) SeekEntryResult!682)

(assert (=> b!190042 (= lt!94206 (seekEntryOrOpen!0 key!828 (_keys!5850 thiss!1248) (mask!9079 thiss!1248)))))

(declare-fun b!190043 () Bool)

(declare-fun e!125090 () Bool)

(assert (=> b!190043 (= e!125090 (= (size!4141 (_values!3864 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9079 thiss!1248))))))

(declare-fun b!190044 () Bool)

(declare-fun res!89864 () Bool)

(assert (=> b!190044 (=> (not res!89864) (not e!125094))))

(assert (=> b!190044 (= res!89864 (not (= key!828 (bvneg key!828))))))

(declare-fun b!190045 () Bool)

(declare-fun e!125091 () Bool)

(declare-fun e!125093 () Bool)

(assert (=> b!190045 (= e!125091 (and e!125093 mapRes!7657))))

(declare-fun condMapEmpty!7657 () Bool)

(declare-fun mapDefault!7657 () ValueCell!1875)

(assert (=> b!190045 (= condMapEmpty!7657 (= (arr!3821 (_values!3864 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1875)) mapDefault!7657)))))

(declare-fun b!190046 () Bool)

(declare-datatypes ((Unit!5740 0))(
  ( (Unit!5741) )
))
(declare-fun e!125095 () Unit!5740)

(declare-fun lt!94210 () Unit!5740)

(assert (=> b!190046 (= e!125095 lt!94210)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!171 (array!8106 array!8108 (_ BitVec 32) (_ BitVec 32) V!5563 V!5563 (_ BitVec 64) Int) Unit!5740)

(assert (=> b!190046 (= lt!94210 (lemmaInListMapThenSeekEntryOrOpenFindsIt!171 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) key!828 (defaultEntry!3881 thiss!1248)))))

(declare-fun res!89866 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!190046 (= res!89866 (inRange!0 (index!4899 lt!94206) (mask!9079 thiss!1248)))))

(declare-fun e!125092 () Bool)

(assert (=> b!190046 (=> (not res!89866) (not e!125092))))

(assert (=> b!190046 e!125092))

(declare-fun b!190047 () Bool)

(assert (=> b!190047 (= e!125092 (= (select (arr!3820 (_keys!5850 thiss!1248)) (index!4899 lt!94206)) key!828))))

(declare-fun res!89863 () Bool)

(assert (=> start!19332 (=> (not res!89863) (not e!125094))))

(declare-fun valid!1084 (LongMapFixedSize!2658) Bool)

(assert (=> start!19332 (= res!89863 (valid!1084 thiss!1248))))

(assert (=> start!19332 e!125094))

(declare-fun e!125097 () Bool)

(assert (=> start!19332 e!125097))

(assert (=> start!19332 true))

(declare-fun tp_is_empty!4437 () Bool)

(assert (=> start!19332 tp_is_empty!4437))

(declare-fun b!190048 () Bool)

(declare-fun e!125089 () Bool)

(assert (=> b!190048 (= e!125089 tp_is_empty!4437)))

(declare-fun b!190049 () Bool)

(assert (=> b!190049 (= e!125093 tp_is_empty!4437)))

(declare-fun array_inv!2467 (array!8106) Bool)

(declare-fun array_inv!2468 (array!8108) Bool)

(assert (=> b!190050 (= e!125097 (and tp!16834 tp_is_empty!4437 (array_inv!2467 (_keys!5850 thiss!1248)) (array_inv!2468 (_values!3864 thiss!1248)) e!125091))))

(declare-fun mapNonEmpty!7657 () Bool)

(declare-fun tp!16833 () Bool)

(assert (=> mapNonEmpty!7657 (= mapRes!7657 (and tp!16833 e!125089))))

(declare-fun mapValue!7657 () ValueCell!1875)

(declare-fun mapKey!7657 () (_ BitVec 32))

(declare-fun mapRest!7657 () (Array (_ BitVec 32) ValueCell!1875))

(assert (=> mapNonEmpty!7657 (= (arr!3821 (_values!3864 thiss!1248)) (store mapRest!7657 mapKey!7657 mapValue!7657))))

(declare-fun b!190051 () Bool)

(declare-fun Unit!5742 () Unit!5740)

(assert (=> b!190051 (= e!125095 Unit!5742)))

(declare-fun lt!94208 () Unit!5740)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!172 (array!8106 array!8108 (_ BitVec 32) (_ BitVec 32) V!5563 V!5563 (_ BitVec 64) Int) Unit!5740)

(assert (=> b!190051 (= lt!94208 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!172 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) key!828 (defaultEntry!3881 thiss!1248)))))

(assert (=> b!190051 false))

(declare-fun b!190052 () Bool)

(assert (=> b!190052 (= e!125098 (not e!125090))))

(declare-fun res!89865 () Bool)

(assert (=> b!190052 (=> res!89865 e!125090)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!190052 (= res!89865 (not (validMask!0 (mask!9079 thiss!1248))))))

(declare-datatypes ((tuple2!3514 0))(
  ( (tuple2!3515 (_1!1767 (_ BitVec 64)) (_2!1767 V!5563)) )
))
(declare-datatypes ((List!2435 0))(
  ( (Nil!2432) (Cons!2431 (h!3068 tuple2!3514) (t!7351 List!2435)) )
))
(declare-datatypes ((ListLongMap!2445 0))(
  ( (ListLongMap!2446 (toList!1238 List!2435)) )
))
(declare-fun lt!94211 () ListLongMap!2445)

(declare-fun v!309 () V!5563)

(declare-fun +!296 (ListLongMap!2445 tuple2!3514) ListLongMap!2445)

(declare-fun getCurrentListMap!881 (array!8106 array!8108 (_ BitVec 32) (_ BitVec 32) V!5563 V!5563 (_ BitVec 32) Int) ListLongMap!2445)

(assert (=> b!190052 (= (+!296 lt!94211 (tuple2!3515 key!828 v!309)) (getCurrentListMap!881 (_keys!5850 thiss!1248) (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248))) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)))))

(declare-fun lt!94207 () Unit!5740)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!102 (array!8106 array!8108 (_ BitVec 32) (_ BitVec 32) V!5563 V!5563 (_ BitVec 32) (_ BitVec 64) V!5563 Int) Unit!5740)

(assert (=> b!190052 (= lt!94207 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!102 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) (index!4899 lt!94206) key!828 v!309 (defaultEntry!3881 thiss!1248)))))

(declare-fun lt!94209 () Unit!5740)

(assert (=> b!190052 (= lt!94209 e!125095)))

(declare-fun c!34135 () Bool)

(declare-fun contains!1341 (ListLongMap!2445 (_ BitVec 64)) Bool)

(assert (=> b!190052 (= c!34135 (contains!1341 lt!94211 key!828))))

(assert (=> b!190052 (= lt!94211 (getCurrentListMap!881 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)))))

(assert (= (and start!19332 res!89863) b!190044))

(assert (= (and b!190044 res!89864) b!190042))

(assert (= (and b!190042 res!89862) b!190052))

(assert (= (and b!190052 c!34135) b!190046))

(assert (= (and b!190052 (not c!34135)) b!190051))

(assert (= (and b!190046 res!89866) b!190047))

(assert (= (and b!190052 (not res!89865)) b!190043))

(assert (= (and b!190045 condMapEmpty!7657) mapIsEmpty!7657))

(assert (= (and b!190045 (not condMapEmpty!7657)) mapNonEmpty!7657))

(assert (= (and mapNonEmpty!7657 ((_ is ValueCellFull!1875) mapValue!7657)) b!190048))

(assert (= (and b!190045 ((_ is ValueCellFull!1875) mapDefault!7657)) b!190049))

(assert (= b!190050 b!190045))

(assert (= start!19332 b!190050))

(declare-fun m!216387 () Bool)

(assert (=> start!19332 m!216387))

(declare-fun m!216389 () Bool)

(assert (=> b!190051 m!216389))

(declare-fun m!216391 () Bool)

(assert (=> b!190046 m!216391))

(declare-fun m!216393 () Bool)

(assert (=> b!190046 m!216393))

(declare-fun m!216395 () Bool)

(assert (=> b!190047 m!216395))

(declare-fun m!216397 () Bool)

(assert (=> b!190042 m!216397))

(declare-fun m!216399 () Bool)

(assert (=> b!190050 m!216399))

(declare-fun m!216401 () Bool)

(assert (=> b!190050 m!216401))

(declare-fun m!216403 () Bool)

(assert (=> b!190052 m!216403))

(declare-fun m!216405 () Bool)

(assert (=> b!190052 m!216405))

(declare-fun m!216407 () Bool)

(assert (=> b!190052 m!216407))

(declare-fun m!216409 () Bool)

(assert (=> b!190052 m!216409))

(declare-fun m!216411 () Bool)

(assert (=> b!190052 m!216411))

(declare-fun m!216413 () Bool)

(assert (=> b!190052 m!216413))

(declare-fun m!216415 () Bool)

(assert (=> b!190052 m!216415))

(declare-fun m!216417 () Bool)

(assert (=> mapNonEmpty!7657 m!216417))

(check-sat (not b_next!4665) (not b!190052) (not b!190051) (not b!190046) (not b!190050) (not start!19332) b_and!11329 (not b!190042) (not mapNonEmpty!7657) tp_is_empty!4437)
(check-sat b_and!11329 (not b_next!4665))
(get-model)

(declare-fun b!190102 () Bool)

(declare-fun lt!94234 () SeekEntryResult!682)

(assert (=> b!190102 (and (bvsge (index!4898 lt!94234) #b00000000000000000000000000000000) (bvslt (index!4898 lt!94234) (size!4140 (_keys!5850 thiss!1248))))))

(declare-fun res!89893 () Bool)

(assert (=> b!190102 (= res!89893 (= (select (arr!3820 (_keys!5850 thiss!1248)) (index!4898 lt!94234)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!125139 () Bool)

(assert (=> b!190102 (=> (not res!89893) (not e!125139))))

(declare-fun b!190103 () Bool)

(declare-fun e!125140 () Bool)

(declare-fun e!125138 () Bool)

(assert (=> b!190103 (= e!125140 e!125138)))

(declare-fun c!34143 () Bool)

(assert (=> b!190103 (= c!34143 ((_ is MissingVacant!682) lt!94234))))

(declare-fun c!34144 () Bool)

(declare-fun call!19173 () Bool)

(declare-fun bm!19170 () Bool)

(assert (=> bm!19170 (= call!19173 (inRange!0 (ite c!34144 (index!4898 lt!94234) (index!4901 lt!94234)) (mask!9079 thiss!1248)))))

(declare-fun bm!19171 () Bool)

(declare-fun call!19174 () Bool)

(declare-fun arrayContainsKey!0 (array!8106 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!19171 (= call!19174 (arrayContainsKey!0 (_keys!5850 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!190104 () Bool)

(assert (=> b!190104 (= e!125138 ((_ is Undefined!682) lt!94234))))

(declare-fun b!190105 () Bool)

(declare-fun e!125137 () Bool)

(assert (=> b!190105 (= e!125137 (not call!19174))))

(declare-fun b!190106 () Bool)

(assert (=> b!190106 (= e!125140 e!125139)))

(declare-fun res!89891 () Bool)

(assert (=> b!190106 (= res!89891 call!19173)))

(assert (=> b!190106 (=> (not res!89891) (not e!125139))))

(declare-fun d!55687 () Bool)

(assert (=> d!55687 e!125140))

(assert (=> d!55687 (= c!34144 ((_ is MissingZero!682) lt!94234))))

(assert (=> d!55687 (= lt!94234 (seekEntryOrOpen!0 key!828 (_keys!5850 thiss!1248) (mask!9079 thiss!1248)))))

(declare-fun lt!94235 () Unit!5740)

(declare-fun choose!1028 (array!8106 array!8108 (_ BitVec 32) (_ BitVec 32) V!5563 V!5563 (_ BitVec 64) Int) Unit!5740)

(assert (=> d!55687 (= lt!94235 (choose!1028 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) key!828 (defaultEntry!3881 thiss!1248)))))

(assert (=> d!55687 (validMask!0 (mask!9079 thiss!1248))))

(assert (=> d!55687 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!172 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) key!828 (defaultEntry!3881 thiss!1248)) lt!94235)))

(declare-fun b!190107 () Bool)

(declare-fun res!89890 () Bool)

(assert (=> b!190107 (=> (not res!89890) (not e!125137))))

(assert (=> b!190107 (= res!89890 call!19173)))

(assert (=> b!190107 (= e!125138 e!125137)))

(declare-fun b!190108 () Bool)

(assert (=> b!190108 (= e!125139 (not call!19174))))

(declare-fun b!190109 () Bool)

(declare-fun res!89892 () Bool)

(assert (=> b!190109 (=> (not res!89892) (not e!125137))))

(assert (=> b!190109 (= res!89892 (= (select (arr!3820 (_keys!5850 thiss!1248)) (index!4901 lt!94234)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!190109 (and (bvsge (index!4901 lt!94234) #b00000000000000000000000000000000) (bvslt (index!4901 lt!94234) (size!4140 (_keys!5850 thiss!1248))))))

(assert (= (and d!55687 c!34144) b!190106))

(assert (= (and d!55687 (not c!34144)) b!190103))

(assert (= (and b!190106 res!89891) b!190102))

(assert (= (and b!190102 res!89893) b!190108))

(assert (= (and b!190103 c!34143) b!190107))

(assert (= (and b!190103 (not c!34143)) b!190104))

(assert (= (and b!190107 res!89890) b!190109))

(assert (= (and b!190109 res!89892) b!190105))

(assert (= (or b!190106 b!190107) bm!19170))

(assert (= (or b!190108 b!190105) bm!19171))

(declare-fun m!216451 () Bool)

(assert (=> b!190109 m!216451))

(declare-fun m!216453 () Bool)

(assert (=> b!190102 m!216453))

(declare-fun m!216455 () Bool)

(assert (=> bm!19170 m!216455))

(declare-fun m!216457 () Bool)

(assert (=> bm!19171 m!216457))

(assert (=> d!55687 m!216397))

(declare-fun m!216459 () Bool)

(assert (=> d!55687 m!216459))

(assert (=> d!55687 m!216415))

(assert (=> b!190051 d!55687))

(declare-fun d!55689 () Bool)

(declare-fun e!125143 () Bool)

(assert (=> d!55689 e!125143))

(declare-fun res!89899 () Bool)

(assert (=> d!55689 (=> (not res!89899) (not e!125143))))

(declare-fun lt!94241 () SeekEntryResult!682)

(assert (=> d!55689 (= res!89899 ((_ is Found!682) lt!94241))))

(assert (=> d!55689 (= lt!94241 (seekEntryOrOpen!0 key!828 (_keys!5850 thiss!1248) (mask!9079 thiss!1248)))))

(declare-fun lt!94240 () Unit!5740)

(declare-fun choose!1029 (array!8106 array!8108 (_ BitVec 32) (_ BitVec 32) V!5563 V!5563 (_ BitVec 64) Int) Unit!5740)

(assert (=> d!55689 (= lt!94240 (choose!1029 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) key!828 (defaultEntry!3881 thiss!1248)))))

(assert (=> d!55689 (validMask!0 (mask!9079 thiss!1248))))

(assert (=> d!55689 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!171 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) key!828 (defaultEntry!3881 thiss!1248)) lt!94240)))

(declare-fun b!190114 () Bool)

(declare-fun res!89898 () Bool)

(assert (=> b!190114 (=> (not res!89898) (not e!125143))))

(assert (=> b!190114 (= res!89898 (inRange!0 (index!4899 lt!94241) (mask!9079 thiss!1248)))))

(declare-fun b!190115 () Bool)

(assert (=> b!190115 (= e!125143 (= (select (arr!3820 (_keys!5850 thiss!1248)) (index!4899 lt!94241)) key!828))))

(assert (=> b!190115 (and (bvsge (index!4899 lt!94241) #b00000000000000000000000000000000) (bvslt (index!4899 lt!94241) (size!4140 (_keys!5850 thiss!1248))))))

(assert (= (and d!55689 res!89899) b!190114))

(assert (= (and b!190114 res!89898) b!190115))

(assert (=> d!55689 m!216397))

(declare-fun m!216461 () Bool)

(assert (=> d!55689 m!216461))

(assert (=> d!55689 m!216415))

(declare-fun m!216463 () Bool)

(assert (=> b!190114 m!216463))

(declare-fun m!216465 () Bool)

(assert (=> b!190115 m!216465))

(assert (=> b!190046 d!55689))

(declare-fun d!55691 () Bool)

(assert (=> d!55691 (= (inRange!0 (index!4899 lt!94206) (mask!9079 thiss!1248)) (and (bvsge (index!4899 lt!94206) #b00000000000000000000000000000000) (bvslt (index!4899 lt!94206) (bvadd (mask!9079 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!190046 d!55691))

(declare-fun b!190129 () Bool)

(declare-fun e!125152 () SeekEntryResult!682)

(assert (=> b!190129 (= e!125152 Undefined!682)))

(declare-fun b!190130 () Bool)

(declare-fun e!125150 () SeekEntryResult!682)

(declare-fun lt!94249 () SeekEntryResult!682)

(assert (=> b!190130 (= e!125150 (MissingZero!682 (index!4900 lt!94249)))))

(declare-fun b!190131 () Bool)

(declare-fun e!125151 () SeekEntryResult!682)

(assert (=> b!190131 (= e!125151 (Found!682 (index!4900 lt!94249)))))

(declare-fun b!190132 () Bool)

(declare-fun c!34152 () Bool)

(declare-fun lt!94248 () (_ BitVec 64))

(assert (=> b!190132 (= c!34152 (= lt!94248 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!190132 (= e!125151 e!125150)))

(declare-fun b!190133 () Bool)

(assert (=> b!190133 (= e!125152 e!125151)))

(assert (=> b!190133 (= lt!94248 (select (arr!3820 (_keys!5850 thiss!1248)) (index!4900 lt!94249)))))

(declare-fun c!34151 () Bool)

(assert (=> b!190133 (= c!34151 (= lt!94248 key!828))))

(declare-fun d!55693 () Bool)

(declare-fun lt!94250 () SeekEntryResult!682)

(assert (=> d!55693 (and (or ((_ is Undefined!682) lt!94250) (not ((_ is Found!682) lt!94250)) (and (bvsge (index!4899 lt!94250) #b00000000000000000000000000000000) (bvslt (index!4899 lt!94250) (size!4140 (_keys!5850 thiss!1248))))) (or ((_ is Undefined!682) lt!94250) ((_ is Found!682) lt!94250) (not ((_ is MissingZero!682) lt!94250)) (and (bvsge (index!4898 lt!94250) #b00000000000000000000000000000000) (bvslt (index!4898 lt!94250) (size!4140 (_keys!5850 thiss!1248))))) (or ((_ is Undefined!682) lt!94250) ((_ is Found!682) lt!94250) ((_ is MissingZero!682) lt!94250) (not ((_ is MissingVacant!682) lt!94250)) (and (bvsge (index!4901 lt!94250) #b00000000000000000000000000000000) (bvslt (index!4901 lt!94250) (size!4140 (_keys!5850 thiss!1248))))) (or ((_ is Undefined!682) lt!94250) (ite ((_ is Found!682) lt!94250) (= (select (arr!3820 (_keys!5850 thiss!1248)) (index!4899 lt!94250)) key!828) (ite ((_ is MissingZero!682) lt!94250) (= (select (arr!3820 (_keys!5850 thiss!1248)) (index!4898 lt!94250)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!682) lt!94250) (= (select (arr!3820 (_keys!5850 thiss!1248)) (index!4901 lt!94250)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!55693 (= lt!94250 e!125152)))

(declare-fun c!34153 () Bool)

(assert (=> d!55693 (= c!34153 (and ((_ is Intermediate!682) lt!94249) (undefined!1494 lt!94249)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8106 (_ BitVec 32)) SeekEntryResult!682)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!55693 (= lt!94249 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9079 thiss!1248)) key!828 (_keys!5850 thiss!1248) (mask!9079 thiss!1248)))))

(assert (=> d!55693 (validMask!0 (mask!9079 thiss!1248))))

(assert (=> d!55693 (= (seekEntryOrOpen!0 key!828 (_keys!5850 thiss!1248) (mask!9079 thiss!1248)) lt!94250)))

(declare-fun b!190128 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8106 (_ BitVec 32)) SeekEntryResult!682)

(assert (=> b!190128 (= e!125150 (seekKeyOrZeroReturnVacant!0 (x!20484 lt!94249) (index!4900 lt!94249) (index!4900 lt!94249) key!828 (_keys!5850 thiss!1248) (mask!9079 thiss!1248)))))

(assert (= (and d!55693 c!34153) b!190129))

(assert (= (and d!55693 (not c!34153)) b!190133))

(assert (= (and b!190133 c!34151) b!190131))

(assert (= (and b!190133 (not c!34151)) b!190132))

(assert (= (and b!190132 c!34152) b!190130))

(assert (= (and b!190132 (not c!34152)) b!190128))

(declare-fun m!216467 () Bool)

(assert (=> b!190133 m!216467))

(declare-fun m!216469 () Bool)

(assert (=> d!55693 m!216469))

(assert (=> d!55693 m!216415))

(declare-fun m!216471 () Bool)

(assert (=> d!55693 m!216471))

(declare-fun m!216473 () Bool)

(assert (=> d!55693 m!216473))

(declare-fun m!216475 () Bool)

(assert (=> d!55693 m!216475))

(declare-fun m!216477 () Bool)

(assert (=> d!55693 m!216477))

(assert (=> d!55693 m!216475))

(declare-fun m!216479 () Bool)

(assert (=> b!190128 m!216479))

(assert (=> b!190042 d!55693))

(declare-fun b!190176 () Bool)

(declare-fun e!125186 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!190176 (= e!125186 (validKeyInArray!0 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!190177 () Bool)

(declare-fun e!125182 () Bool)

(declare-fun e!125185 () Bool)

(assert (=> b!190177 (= e!125182 e!125185)))

(declare-fun c!34169 () Bool)

(assert (=> b!190177 (= c!34169 (not (= (bvand (extraKeys!3618 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!190178 () Bool)

(declare-fun res!89921 () Bool)

(assert (=> b!190178 (=> (not res!89921) (not e!125182))))

(declare-fun e!125181 () Bool)

(assert (=> b!190178 (= res!89921 e!125181)))

(declare-fun res!89923 () Bool)

(assert (=> b!190178 (=> res!89923 e!125181)))

(declare-fun e!125183 () Bool)

(assert (=> b!190178 (= res!89923 (not e!125183))))

(declare-fun res!89922 () Bool)

(assert (=> b!190178 (=> (not res!89922) (not e!125183))))

(assert (=> b!190178 (= res!89922 (bvslt #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(declare-fun bm!19186 () Bool)

(declare-fun call!19194 () ListLongMap!2445)

(declare-fun call!19192 () ListLongMap!2445)

(assert (=> bm!19186 (= call!19194 call!19192)))

(declare-fun b!190180 () Bool)

(declare-fun c!34171 () Bool)

(assert (=> b!190180 (= c!34171 (and (not (= (bvand (extraKeys!3618 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3618 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!125179 () ListLongMap!2445)

(declare-fun e!125191 () ListLongMap!2445)

(assert (=> b!190180 (= e!125179 e!125191)))

(declare-fun c!34166 () Bool)

(declare-fun call!19190 () ListLongMap!2445)

(declare-fun call!19193 () ListLongMap!2445)

(declare-fun bm!19187 () Bool)

(declare-fun c!34170 () Bool)

(declare-fun call!19195 () ListLongMap!2445)

(assert (=> bm!19187 (= call!19192 (+!296 (ite c!34166 call!19195 (ite c!34170 call!19190 call!19193)) (ite (or c!34166 c!34170) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))))))

(declare-fun bm!19188 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!209 (array!8106 array!8108 (_ BitVec 32) (_ BitVec 32) V!5563 V!5563 (_ BitVec 32) Int) ListLongMap!2445)

(assert (=> bm!19188 (= call!19195 (getCurrentListMapNoExtraKeys!209 (_keys!5850 thiss!1248) (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248))) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)))))

(declare-fun b!190181 () Bool)

(declare-fun e!125180 () ListLongMap!2445)

(assert (=> b!190181 (= e!125180 e!125179)))

(assert (=> b!190181 (= c!34170 (and (not (= (bvand (extraKeys!3618 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3618 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!190182 () Bool)

(assert (=> b!190182 (= e!125191 call!19194)))

(declare-fun bm!19189 () Bool)

(assert (=> bm!19189 (= call!19193 call!19190)))

(declare-fun b!190183 () Bool)

(declare-fun e!125187 () Unit!5740)

(declare-fun Unit!5746 () Unit!5740)

(assert (=> b!190183 (= e!125187 Unit!5746)))

(declare-fun b!190184 () Bool)

(declare-fun res!89924 () Bool)

(assert (=> b!190184 (=> (not res!89924) (not e!125182))))

(declare-fun e!125188 () Bool)

(assert (=> b!190184 (= res!89924 e!125188)))

(declare-fun c!34167 () Bool)

(assert (=> b!190184 (= c!34167 (not (= (bvand (extraKeys!3618 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!190185 () Bool)

(assert (=> b!190185 (= e!125180 (+!296 call!19192 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))))))

(declare-fun b!190186 () Bool)

(declare-fun call!19191 () Bool)

(assert (=> b!190186 (= e!125188 (not call!19191))))

(declare-fun b!190187 () Bool)

(assert (=> b!190187 (= e!125183 (validKeyInArray!0 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!190179 () Bool)

(declare-fun lt!94300 () Unit!5740)

(assert (=> b!190179 (= e!125187 lt!94300)))

(declare-fun lt!94307 () ListLongMap!2445)

(assert (=> b!190179 (= lt!94307 (getCurrentListMapNoExtraKeys!209 (_keys!5850 thiss!1248) (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248))) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)))))

(declare-fun lt!94310 () (_ BitVec 64))

(assert (=> b!190179 (= lt!94310 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94309 () (_ BitVec 64))

(assert (=> b!190179 (= lt!94309 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94308 () Unit!5740)

(declare-fun addStillContains!155 (ListLongMap!2445 (_ BitVec 64) V!5563 (_ BitVec 64)) Unit!5740)

(assert (=> b!190179 (= lt!94308 (addStillContains!155 lt!94307 lt!94310 (zeroValue!3722 thiss!1248) lt!94309))))

(assert (=> b!190179 (contains!1341 (+!296 lt!94307 (tuple2!3515 lt!94310 (zeroValue!3722 thiss!1248))) lt!94309)))

(declare-fun lt!94298 () Unit!5740)

(assert (=> b!190179 (= lt!94298 lt!94308)))

(declare-fun lt!94316 () ListLongMap!2445)

(assert (=> b!190179 (= lt!94316 (getCurrentListMapNoExtraKeys!209 (_keys!5850 thiss!1248) (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248))) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)))))

(declare-fun lt!94315 () (_ BitVec 64))

(assert (=> b!190179 (= lt!94315 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94299 () (_ BitVec 64))

(assert (=> b!190179 (= lt!94299 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94302 () Unit!5740)

(declare-fun addApplyDifferent!155 (ListLongMap!2445 (_ BitVec 64) V!5563 (_ BitVec 64)) Unit!5740)

(assert (=> b!190179 (= lt!94302 (addApplyDifferent!155 lt!94316 lt!94315 (minValue!3722 thiss!1248) lt!94299))))

(declare-fun apply!179 (ListLongMap!2445 (_ BitVec 64)) V!5563)

(assert (=> b!190179 (= (apply!179 (+!296 lt!94316 (tuple2!3515 lt!94315 (minValue!3722 thiss!1248))) lt!94299) (apply!179 lt!94316 lt!94299))))

(declare-fun lt!94305 () Unit!5740)

(assert (=> b!190179 (= lt!94305 lt!94302)))

(declare-fun lt!94303 () ListLongMap!2445)

(assert (=> b!190179 (= lt!94303 (getCurrentListMapNoExtraKeys!209 (_keys!5850 thiss!1248) (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248))) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)))))

(declare-fun lt!94306 () (_ BitVec 64))

(assert (=> b!190179 (= lt!94306 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94311 () (_ BitVec 64))

(assert (=> b!190179 (= lt!94311 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94295 () Unit!5740)

(assert (=> b!190179 (= lt!94295 (addApplyDifferent!155 lt!94303 lt!94306 (zeroValue!3722 thiss!1248) lt!94311))))

(assert (=> b!190179 (= (apply!179 (+!296 lt!94303 (tuple2!3515 lt!94306 (zeroValue!3722 thiss!1248))) lt!94311) (apply!179 lt!94303 lt!94311))))

(declare-fun lt!94297 () Unit!5740)

(assert (=> b!190179 (= lt!94297 lt!94295)))

(declare-fun lt!94301 () ListLongMap!2445)

(assert (=> b!190179 (= lt!94301 (getCurrentListMapNoExtraKeys!209 (_keys!5850 thiss!1248) (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248))) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)))))

(declare-fun lt!94313 () (_ BitVec 64))

(assert (=> b!190179 (= lt!94313 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94304 () (_ BitVec 64))

(assert (=> b!190179 (= lt!94304 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!190179 (= lt!94300 (addApplyDifferent!155 lt!94301 lt!94313 (minValue!3722 thiss!1248) lt!94304))))

(assert (=> b!190179 (= (apply!179 (+!296 lt!94301 (tuple2!3515 lt!94313 (minValue!3722 thiss!1248))) lt!94304) (apply!179 lt!94301 lt!94304))))

(declare-fun d!55695 () Bool)

(assert (=> d!55695 e!125182))

(declare-fun res!89920 () Bool)

(assert (=> d!55695 (=> (not res!89920) (not e!125182))))

(assert (=> d!55695 (= res!89920 (or (bvsge #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))))

(declare-fun lt!94296 () ListLongMap!2445)

(declare-fun lt!94312 () ListLongMap!2445)

(assert (=> d!55695 (= lt!94296 lt!94312)))

(declare-fun lt!94314 () Unit!5740)

(assert (=> d!55695 (= lt!94314 e!125187)))

(declare-fun c!34168 () Bool)

(assert (=> d!55695 (= c!34168 e!125186)))

(declare-fun res!89918 () Bool)

(assert (=> d!55695 (=> (not res!89918) (not e!125186))))

(assert (=> d!55695 (= res!89918 (bvslt #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(assert (=> d!55695 (= lt!94312 e!125180)))

(assert (=> d!55695 (= c!34166 (and (not (= (bvand (extraKeys!3618 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3618 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55695 (validMask!0 (mask!9079 thiss!1248))))

(assert (=> d!55695 (= (getCurrentListMap!881 (_keys!5850 thiss!1248) (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248))) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)) lt!94296)))

(declare-fun bm!19190 () Bool)

(assert (=> bm!19190 (= call!19191 (contains!1341 lt!94296 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19191 () Bool)

(assert (=> bm!19191 (= call!19190 call!19195)))

(declare-fun b!190188 () Bool)

(assert (=> b!190188 (= e!125179 call!19194)))

(declare-fun b!190189 () Bool)

(assert (=> b!190189 (= e!125191 call!19193)))

(declare-fun b!190190 () Bool)

(declare-fun e!125189 () Bool)

(assert (=> b!190190 (= e!125189 (= (apply!179 lt!94296 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3722 thiss!1248)))))

(declare-fun b!190191 () Bool)

(declare-fun e!125190 () Bool)

(assert (=> b!190191 (= e!125188 e!125190)))

(declare-fun res!89926 () Bool)

(assert (=> b!190191 (= res!89926 call!19191)))

(assert (=> b!190191 (=> (not res!89926) (not e!125190))))

(declare-fun b!190192 () Bool)

(assert (=> b!190192 (= e!125190 (= (apply!179 lt!94296 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3722 thiss!1248)))))

(declare-fun b!190193 () Bool)

(declare-fun e!125184 () Bool)

(assert (=> b!190193 (= e!125181 e!125184)))

(declare-fun res!89919 () Bool)

(assert (=> b!190193 (=> (not res!89919) (not e!125184))))

(assert (=> b!190193 (= res!89919 (contains!1341 lt!94296 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!190193 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(declare-fun b!190194 () Bool)

(assert (=> b!190194 (= e!125185 e!125189)))

(declare-fun res!89925 () Bool)

(declare-fun call!19189 () Bool)

(assert (=> b!190194 (= res!89925 call!19189)))

(assert (=> b!190194 (=> (not res!89925) (not e!125189))))

(declare-fun bm!19192 () Bool)

(assert (=> bm!19192 (= call!19189 (contains!1341 lt!94296 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!190195 () Bool)

(declare-fun get!2199 (ValueCell!1875 V!5563) V!5563)

(declare-fun dynLambda!517 (Int (_ BitVec 64)) V!5563)

(assert (=> b!190195 (= e!125184 (= (apply!179 lt!94296 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)) (get!2199 (select (arr!3821 (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!517 (defaultEntry!3881 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!190195 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4141 (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248))))))))

(assert (=> b!190195 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(declare-fun b!190196 () Bool)

(assert (=> b!190196 (= e!125185 (not call!19189))))

(assert (= (and d!55695 c!34166) b!190185))

(assert (= (and d!55695 (not c!34166)) b!190181))

(assert (= (and b!190181 c!34170) b!190188))

(assert (= (and b!190181 (not c!34170)) b!190180))

(assert (= (and b!190180 c!34171) b!190182))

(assert (= (and b!190180 (not c!34171)) b!190189))

(assert (= (or b!190182 b!190189) bm!19189))

(assert (= (or b!190188 bm!19189) bm!19191))

(assert (= (or b!190188 b!190182) bm!19186))

(assert (= (or b!190185 bm!19191) bm!19188))

(assert (= (or b!190185 bm!19186) bm!19187))

(assert (= (and d!55695 res!89918) b!190176))

(assert (= (and d!55695 c!34168) b!190179))

(assert (= (and d!55695 (not c!34168)) b!190183))

(assert (= (and d!55695 res!89920) b!190178))

(assert (= (and b!190178 res!89922) b!190187))

(assert (= (and b!190178 (not res!89923)) b!190193))

(assert (= (and b!190193 res!89919) b!190195))

(assert (= (and b!190178 res!89921) b!190184))

(assert (= (and b!190184 c!34167) b!190191))

(assert (= (and b!190184 (not c!34167)) b!190186))

(assert (= (and b!190191 res!89926) b!190192))

(assert (= (or b!190191 b!190186) bm!19190))

(assert (= (and b!190184 res!89924) b!190177))

(assert (= (and b!190177 c!34169) b!190194))

(assert (= (and b!190177 (not c!34169)) b!190196))

(assert (= (and b!190194 res!89925) b!190190))

(assert (= (or b!190194 b!190196) bm!19192))

(declare-fun b_lambda!7373 () Bool)

(assert (=> (not b_lambda!7373) (not b!190195)))

(declare-fun t!7354 () Bool)

(declare-fun tb!2877 () Bool)

(assert (=> (and b!190050 (= (defaultEntry!3881 thiss!1248) (defaultEntry!3881 thiss!1248)) t!7354) tb!2877))

(declare-fun result!4893 () Bool)

(assert (=> tb!2877 (= result!4893 tp_is_empty!4437)))

(assert (=> b!190195 t!7354))

(declare-fun b_and!11333 () Bool)

(assert (= b_and!11329 (and (=> t!7354 result!4893) b_and!11333)))

(declare-fun m!216481 () Bool)

(assert (=> bm!19190 m!216481))

(declare-fun m!216483 () Bool)

(assert (=> b!190190 m!216483))

(declare-fun m!216485 () Bool)

(assert (=> bm!19192 m!216485))

(assert (=> d!55695 m!216415))

(declare-fun m!216487 () Bool)

(assert (=> bm!19187 m!216487))

(declare-fun m!216489 () Bool)

(assert (=> b!190185 m!216489))

(declare-fun m!216491 () Bool)

(assert (=> b!190195 m!216491))

(declare-fun m!216493 () Bool)

(assert (=> b!190195 m!216493))

(assert (=> b!190195 m!216491))

(declare-fun m!216495 () Bool)

(assert (=> b!190195 m!216495))

(declare-fun m!216497 () Bool)

(assert (=> b!190195 m!216497))

(assert (=> b!190195 m!216493))

(assert (=> b!190195 m!216497))

(declare-fun m!216499 () Bool)

(assert (=> b!190195 m!216499))

(declare-fun m!216501 () Bool)

(assert (=> bm!19188 m!216501))

(assert (=> b!190187 m!216497))

(assert (=> b!190187 m!216497))

(declare-fun m!216503 () Bool)

(assert (=> b!190187 m!216503))

(assert (=> b!190193 m!216497))

(assert (=> b!190193 m!216497))

(declare-fun m!216505 () Bool)

(assert (=> b!190193 m!216505))

(declare-fun m!216507 () Bool)

(assert (=> b!190179 m!216507))

(declare-fun m!216509 () Bool)

(assert (=> b!190179 m!216509))

(declare-fun m!216511 () Bool)

(assert (=> b!190179 m!216511))

(declare-fun m!216513 () Bool)

(assert (=> b!190179 m!216513))

(declare-fun m!216515 () Bool)

(assert (=> b!190179 m!216515))

(declare-fun m!216517 () Bool)

(assert (=> b!190179 m!216517))

(declare-fun m!216519 () Bool)

(assert (=> b!190179 m!216519))

(assert (=> b!190179 m!216497))

(declare-fun m!216521 () Bool)

(assert (=> b!190179 m!216521))

(declare-fun m!216523 () Bool)

(assert (=> b!190179 m!216523))

(declare-fun m!216525 () Bool)

(assert (=> b!190179 m!216525))

(declare-fun m!216527 () Bool)

(assert (=> b!190179 m!216527))

(declare-fun m!216529 () Bool)

(assert (=> b!190179 m!216529))

(assert (=> b!190179 m!216525))

(assert (=> b!190179 m!216521))

(declare-fun m!216531 () Bool)

(assert (=> b!190179 m!216531))

(assert (=> b!190179 m!216507))

(declare-fun m!216533 () Bool)

(assert (=> b!190179 m!216533))

(assert (=> b!190179 m!216517))

(assert (=> b!190179 m!216501))

(declare-fun m!216535 () Bool)

(assert (=> b!190179 m!216535))

(assert (=> b!190176 m!216497))

(assert (=> b!190176 m!216497))

(assert (=> b!190176 m!216503))

(declare-fun m!216537 () Bool)

(assert (=> b!190192 m!216537))

(assert (=> b!190052 d!55695))

(declare-fun d!55697 () Bool)

(assert (=> d!55697 (= (validMask!0 (mask!9079 thiss!1248)) (and (or (= (mask!9079 thiss!1248) #b00000000000000000000000000000111) (= (mask!9079 thiss!1248) #b00000000000000000000000000001111) (= (mask!9079 thiss!1248) #b00000000000000000000000000011111) (= (mask!9079 thiss!1248) #b00000000000000000000000000111111) (= (mask!9079 thiss!1248) #b00000000000000000000000001111111) (= (mask!9079 thiss!1248) #b00000000000000000000000011111111) (= (mask!9079 thiss!1248) #b00000000000000000000000111111111) (= (mask!9079 thiss!1248) #b00000000000000000000001111111111) (= (mask!9079 thiss!1248) #b00000000000000000000011111111111) (= (mask!9079 thiss!1248) #b00000000000000000000111111111111) (= (mask!9079 thiss!1248) #b00000000000000000001111111111111) (= (mask!9079 thiss!1248) #b00000000000000000011111111111111) (= (mask!9079 thiss!1248) #b00000000000000000111111111111111) (= (mask!9079 thiss!1248) #b00000000000000001111111111111111) (= (mask!9079 thiss!1248) #b00000000000000011111111111111111) (= (mask!9079 thiss!1248) #b00000000000000111111111111111111) (= (mask!9079 thiss!1248) #b00000000000001111111111111111111) (= (mask!9079 thiss!1248) #b00000000000011111111111111111111) (= (mask!9079 thiss!1248) #b00000000000111111111111111111111) (= (mask!9079 thiss!1248) #b00000000001111111111111111111111) (= (mask!9079 thiss!1248) #b00000000011111111111111111111111) (= (mask!9079 thiss!1248) #b00000000111111111111111111111111) (= (mask!9079 thiss!1248) #b00000001111111111111111111111111) (= (mask!9079 thiss!1248) #b00000011111111111111111111111111) (= (mask!9079 thiss!1248) #b00000111111111111111111111111111) (= (mask!9079 thiss!1248) #b00001111111111111111111111111111) (= (mask!9079 thiss!1248) #b00011111111111111111111111111111) (= (mask!9079 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!9079 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!190052 d!55697))

(declare-fun d!55699 () Bool)

(declare-fun e!125194 () Bool)

(assert (=> d!55699 e!125194))

(declare-fun res!89929 () Bool)

(assert (=> d!55699 (=> (not res!89929) (not e!125194))))

(assert (=> d!55699 (= res!89929 (and (bvsge (index!4899 lt!94206) #b00000000000000000000000000000000) (bvslt (index!4899 lt!94206) (size!4141 (_values!3864 thiss!1248)))))))

(declare-fun lt!94319 () Unit!5740)

(declare-fun choose!1030 (array!8106 array!8108 (_ BitVec 32) (_ BitVec 32) V!5563 V!5563 (_ BitVec 32) (_ BitVec 64) V!5563 Int) Unit!5740)

(assert (=> d!55699 (= lt!94319 (choose!1030 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) (index!4899 lt!94206) key!828 v!309 (defaultEntry!3881 thiss!1248)))))

(assert (=> d!55699 (validMask!0 (mask!9079 thiss!1248))))

(assert (=> d!55699 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!102 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) (index!4899 lt!94206) key!828 v!309 (defaultEntry!3881 thiss!1248)) lt!94319)))

(declare-fun b!190201 () Bool)

(assert (=> b!190201 (= e!125194 (= (+!296 (getCurrentListMap!881 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)) (tuple2!3515 key!828 v!309)) (getCurrentListMap!881 (_keys!5850 thiss!1248) (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248))) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248))))))

(assert (= (and d!55699 res!89929) b!190201))

(declare-fun m!216539 () Bool)

(assert (=> d!55699 m!216539))

(assert (=> d!55699 m!216415))

(assert (=> b!190201 m!216405))

(assert (=> b!190201 m!216405))

(declare-fun m!216541 () Bool)

(assert (=> b!190201 m!216541))

(assert (=> b!190201 m!216409))

(assert (=> b!190201 m!216413))

(assert (=> b!190052 d!55699))

(declare-fun b!190202 () Bool)

(declare-fun e!125202 () Bool)

(assert (=> b!190202 (= e!125202 (validKeyInArray!0 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!190203 () Bool)

(declare-fun e!125198 () Bool)

(declare-fun e!125201 () Bool)

(assert (=> b!190203 (= e!125198 e!125201)))

(declare-fun c!34175 () Bool)

(assert (=> b!190203 (= c!34175 (not (= (bvand (extraKeys!3618 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!190204 () Bool)

(declare-fun res!89933 () Bool)

(assert (=> b!190204 (=> (not res!89933) (not e!125198))))

(declare-fun e!125197 () Bool)

(assert (=> b!190204 (= res!89933 e!125197)))

(declare-fun res!89935 () Bool)

(assert (=> b!190204 (=> res!89935 e!125197)))

(declare-fun e!125199 () Bool)

(assert (=> b!190204 (= res!89935 (not e!125199))))

(declare-fun res!89934 () Bool)

(assert (=> b!190204 (=> (not res!89934) (not e!125199))))

(assert (=> b!190204 (= res!89934 (bvslt #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(declare-fun bm!19193 () Bool)

(declare-fun call!19201 () ListLongMap!2445)

(declare-fun call!19199 () ListLongMap!2445)

(assert (=> bm!19193 (= call!19201 call!19199)))

(declare-fun b!190206 () Bool)

(declare-fun c!34177 () Bool)

(assert (=> b!190206 (= c!34177 (and (not (= (bvand (extraKeys!3618 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3618 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!125195 () ListLongMap!2445)

(declare-fun e!125207 () ListLongMap!2445)

(assert (=> b!190206 (= e!125195 e!125207)))

(declare-fun call!19200 () ListLongMap!2445)

(declare-fun call!19202 () ListLongMap!2445)

(declare-fun call!19197 () ListLongMap!2445)

(declare-fun c!34172 () Bool)

(declare-fun bm!19194 () Bool)

(declare-fun c!34176 () Bool)

(assert (=> bm!19194 (= call!19199 (+!296 (ite c!34172 call!19202 (ite c!34176 call!19197 call!19200)) (ite (or c!34172 c!34176) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))))))

(declare-fun bm!19195 () Bool)

(assert (=> bm!19195 (= call!19202 (getCurrentListMapNoExtraKeys!209 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)))))

(declare-fun b!190207 () Bool)

(declare-fun e!125196 () ListLongMap!2445)

(assert (=> b!190207 (= e!125196 e!125195)))

(assert (=> b!190207 (= c!34176 (and (not (= (bvand (extraKeys!3618 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3618 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!190208 () Bool)

(assert (=> b!190208 (= e!125207 call!19201)))

(declare-fun bm!19196 () Bool)

(assert (=> bm!19196 (= call!19200 call!19197)))

(declare-fun b!190209 () Bool)

(declare-fun e!125203 () Unit!5740)

(declare-fun Unit!5747 () Unit!5740)

(assert (=> b!190209 (= e!125203 Unit!5747)))

(declare-fun b!190210 () Bool)

(declare-fun res!89936 () Bool)

(assert (=> b!190210 (=> (not res!89936) (not e!125198))))

(declare-fun e!125204 () Bool)

(assert (=> b!190210 (= res!89936 e!125204)))

(declare-fun c!34173 () Bool)

(assert (=> b!190210 (= c!34173 (not (= (bvand (extraKeys!3618 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!190211 () Bool)

(assert (=> b!190211 (= e!125196 (+!296 call!19199 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))))))

(declare-fun b!190212 () Bool)

(declare-fun call!19198 () Bool)

(assert (=> b!190212 (= e!125204 (not call!19198))))

(declare-fun b!190213 () Bool)

(assert (=> b!190213 (= e!125199 (validKeyInArray!0 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!190205 () Bool)

(declare-fun lt!94325 () Unit!5740)

(assert (=> b!190205 (= e!125203 lt!94325)))

(declare-fun lt!94332 () ListLongMap!2445)

(assert (=> b!190205 (= lt!94332 (getCurrentListMapNoExtraKeys!209 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)))))

(declare-fun lt!94335 () (_ BitVec 64))

(assert (=> b!190205 (= lt!94335 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94334 () (_ BitVec 64))

(assert (=> b!190205 (= lt!94334 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94333 () Unit!5740)

(assert (=> b!190205 (= lt!94333 (addStillContains!155 lt!94332 lt!94335 (zeroValue!3722 thiss!1248) lt!94334))))

(assert (=> b!190205 (contains!1341 (+!296 lt!94332 (tuple2!3515 lt!94335 (zeroValue!3722 thiss!1248))) lt!94334)))

(declare-fun lt!94323 () Unit!5740)

(assert (=> b!190205 (= lt!94323 lt!94333)))

(declare-fun lt!94341 () ListLongMap!2445)

(assert (=> b!190205 (= lt!94341 (getCurrentListMapNoExtraKeys!209 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)))))

(declare-fun lt!94340 () (_ BitVec 64))

(assert (=> b!190205 (= lt!94340 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94324 () (_ BitVec 64))

(assert (=> b!190205 (= lt!94324 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94327 () Unit!5740)

(assert (=> b!190205 (= lt!94327 (addApplyDifferent!155 lt!94341 lt!94340 (minValue!3722 thiss!1248) lt!94324))))

(assert (=> b!190205 (= (apply!179 (+!296 lt!94341 (tuple2!3515 lt!94340 (minValue!3722 thiss!1248))) lt!94324) (apply!179 lt!94341 lt!94324))))

(declare-fun lt!94330 () Unit!5740)

(assert (=> b!190205 (= lt!94330 lt!94327)))

(declare-fun lt!94328 () ListLongMap!2445)

(assert (=> b!190205 (= lt!94328 (getCurrentListMapNoExtraKeys!209 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)))))

(declare-fun lt!94331 () (_ BitVec 64))

(assert (=> b!190205 (= lt!94331 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94336 () (_ BitVec 64))

(assert (=> b!190205 (= lt!94336 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94320 () Unit!5740)

(assert (=> b!190205 (= lt!94320 (addApplyDifferent!155 lt!94328 lt!94331 (zeroValue!3722 thiss!1248) lt!94336))))

(assert (=> b!190205 (= (apply!179 (+!296 lt!94328 (tuple2!3515 lt!94331 (zeroValue!3722 thiss!1248))) lt!94336) (apply!179 lt!94328 lt!94336))))

(declare-fun lt!94322 () Unit!5740)

(assert (=> b!190205 (= lt!94322 lt!94320)))

(declare-fun lt!94326 () ListLongMap!2445)

(assert (=> b!190205 (= lt!94326 (getCurrentListMapNoExtraKeys!209 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)))))

(declare-fun lt!94338 () (_ BitVec 64))

(assert (=> b!190205 (= lt!94338 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!94329 () (_ BitVec 64))

(assert (=> b!190205 (= lt!94329 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!190205 (= lt!94325 (addApplyDifferent!155 lt!94326 lt!94338 (minValue!3722 thiss!1248) lt!94329))))

(assert (=> b!190205 (= (apply!179 (+!296 lt!94326 (tuple2!3515 lt!94338 (minValue!3722 thiss!1248))) lt!94329) (apply!179 lt!94326 lt!94329))))

(declare-fun d!55701 () Bool)

(assert (=> d!55701 e!125198))

(declare-fun res!89932 () Bool)

(assert (=> d!55701 (=> (not res!89932) (not e!125198))))

(assert (=> d!55701 (= res!89932 (or (bvsge #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))))

(declare-fun lt!94321 () ListLongMap!2445)

(declare-fun lt!94337 () ListLongMap!2445)

(assert (=> d!55701 (= lt!94321 lt!94337)))

(declare-fun lt!94339 () Unit!5740)

(assert (=> d!55701 (= lt!94339 e!125203)))

(declare-fun c!34174 () Bool)

(assert (=> d!55701 (= c!34174 e!125202)))

(declare-fun res!89930 () Bool)

(assert (=> d!55701 (=> (not res!89930) (not e!125202))))

(assert (=> d!55701 (= res!89930 (bvslt #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(assert (=> d!55701 (= lt!94337 e!125196)))

(assert (=> d!55701 (= c!34172 (and (not (= (bvand (extraKeys!3618 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3618 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55701 (validMask!0 (mask!9079 thiss!1248))))

(assert (=> d!55701 (= (getCurrentListMap!881 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)) lt!94321)))

(declare-fun bm!19197 () Bool)

(assert (=> bm!19197 (= call!19198 (contains!1341 lt!94321 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19198 () Bool)

(assert (=> bm!19198 (= call!19197 call!19202)))

(declare-fun b!190214 () Bool)

(assert (=> b!190214 (= e!125195 call!19201)))

(declare-fun b!190215 () Bool)

(assert (=> b!190215 (= e!125207 call!19200)))

(declare-fun b!190216 () Bool)

(declare-fun e!125205 () Bool)

(assert (=> b!190216 (= e!125205 (= (apply!179 lt!94321 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3722 thiss!1248)))))

(declare-fun b!190217 () Bool)

(declare-fun e!125206 () Bool)

(assert (=> b!190217 (= e!125204 e!125206)))

(declare-fun res!89938 () Bool)

(assert (=> b!190217 (= res!89938 call!19198)))

(assert (=> b!190217 (=> (not res!89938) (not e!125206))))

(declare-fun b!190218 () Bool)

(assert (=> b!190218 (= e!125206 (= (apply!179 lt!94321 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3722 thiss!1248)))))

(declare-fun b!190219 () Bool)

(declare-fun e!125200 () Bool)

(assert (=> b!190219 (= e!125197 e!125200)))

(declare-fun res!89931 () Bool)

(assert (=> b!190219 (=> (not res!89931) (not e!125200))))

(assert (=> b!190219 (= res!89931 (contains!1341 lt!94321 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!190219 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(declare-fun b!190220 () Bool)

(assert (=> b!190220 (= e!125201 e!125205)))

(declare-fun res!89937 () Bool)

(declare-fun call!19196 () Bool)

(assert (=> b!190220 (= res!89937 call!19196)))

(assert (=> b!190220 (=> (not res!89937) (not e!125205))))

(declare-fun bm!19199 () Bool)

(assert (=> bm!19199 (= call!19196 (contains!1341 lt!94321 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!190221 () Bool)

(assert (=> b!190221 (= e!125200 (= (apply!179 lt!94321 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)) (get!2199 (select (arr!3821 (_values!3864 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!517 (defaultEntry!3881 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!190221 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4141 (_values!3864 thiss!1248))))))

(assert (=> b!190221 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(declare-fun b!190222 () Bool)

(assert (=> b!190222 (= e!125201 (not call!19196))))

(assert (= (and d!55701 c!34172) b!190211))

(assert (= (and d!55701 (not c!34172)) b!190207))

(assert (= (and b!190207 c!34176) b!190214))

(assert (= (and b!190207 (not c!34176)) b!190206))

(assert (= (and b!190206 c!34177) b!190208))

(assert (= (and b!190206 (not c!34177)) b!190215))

(assert (= (or b!190208 b!190215) bm!19196))

(assert (= (or b!190214 bm!19196) bm!19198))

(assert (= (or b!190214 b!190208) bm!19193))

(assert (= (or b!190211 bm!19198) bm!19195))

(assert (= (or b!190211 bm!19193) bm!19194))

(assert (= (and d!55701 res!89930) b!190202))

(assert (= (and d!55701 c!34174) b!190205))

(assert (= (and d!55701 (not c!34174)) b!190209))

(assert (= (and d!55701 res!89932) b!190204))

(assert (= (and b!190204 res!89934) b!190213))

(assert (= (and b!190204 (not res!89935)) b!190219))

(assert (= (and b!190219 res!89931) b!190221))

(assert (= (and b!190204 res!89933) b!190210))

(assert (= (and b!190210 c!34173) b!190217))

(assert (= (and b!190210 (not c!34173)) b!190212))

(assert (= (and b!190217 res!89938) b!190218))

(assert (= (or b!190217 b!190212) bm!19197))

(assert (= (and b!190210 res!89936) b!190203))

(assert (= (and b!190203 c!34175) b!190220))

(assert (= (and b!190203 (not c!34175)) b!190222))

(assert (= (and b!190220 res!89937) b!190216))

(assert (= (or b!190220 b!190222) bm!19199))

(declare-fun b_lambda!7375 () Bool)

(assert (=> (not b_lambda!7375) (not b!190221)))

(assert (=> b!190221 t!7354))

(declare-fun b_and!11335 () Bool)

(assert (= b_and!11333 (and (=> t!7354 result!4893) b_and!11335)))

(declare-fun m!216543 () Bool)

(assert (=> bm!19197 m!216543))

(declare-fun m!216545 () Bool)

(assert (=> b!190216 m!216545))

(declare-fun m!216547 () Bool)

(assert (=> bm!19199 m!216547))

(assert (=> d!55701 m!216415))

(declare-fun m!216549 () Bool)

(assert (=> bm!19194 m!216549))

(declare-fun m!216551 () Bool)

(assert (=> b!190211 m!216551))

(assert (=> b!190221 m!216491))

(declare-fun m!216553 () Bool)

(assert (=> b!190221 m!216553))

(assert (=> b!190221 m!216491))

(declare-fun m!216555 () Bool)

(assert (=> b!190221 m!216555))

(assert (=> b!190221 m!216497))

(assert (=> b!190221 m!216553))

(assert (=> b!190221 m!216497))

(declare-fun m!216557 () Bool)

(assert (=> b!190221 m!216557))

(declare-fun m!216559 () Bool)

(assert (=> bm!19195 m!216559))

(assert (=> b!190213 m!216497))

(assert (=> b!190213 m!216497))

(assert (=> b!190213 m!216503))

(assert (=> b!190219 m!216497))

(assert (=> b!190219 m!216497))

(declare-fun m!216561 () Bool)

(assert (=> b!190219 m!216561))

(declare-fun m!216563 () Bool)

(assert (=> b!190205 m!216563))

(declare-fun m!216565 () Bool)

(assert (=> b!190205 m!216565))

(declare-fun m!216567 () Bool)

(assert (=> b!190205 m!216567))

(declare-fun m!216569 () Bool)

(assert (=> b!190205 m!216569))

(declare-fun m!216571 () Bool)

(assert (=> b!190205 m!216571))

(declare-fun m!216573 () Bool)

(assert (=> b!190205 m!216573))

(declare-fun m!216575 () Bool)

(assert (=> b!190205 m!216575))

(assert (=> b!190205 m!216497))

(declare-fun m!216577 () Bool)

(assert (=> b!190205 m!216577))

(declare-fun m!216579 () Bool)

(assert (=> b!190205 m!216579))

(declare-fun m!216581 () Bool)

(assert (=> b!190205 m!216581))

(declare-fun m!216583 () Bool)

(assert (=> b!190205 m!216583))

(declare-fun m!216585 () Bool)

(assert (=> b!190205 m!216585))

(assert (=> b!190205 m!216581))

(assert (=> b!190205 m!216577))

(declare-fun m!216587 () Bool)

(assert (=> b!190205 m!216587))

(assert (=> b!190205 m!216563))

(declare-fun m!216589 () Bool)

(assert (=> b!190205 m!216589))

(assert (=> b!190205 m!216573))

(assert (=> b!190205 m!216559))

(declare-fun m!216591 () Bool)

(assert (=> b!190205 m!216591))

(assert (=> b!190202 m!216497))

(assert (=> b!190202 m!216497))

(assert (=> b!190202 m!216503))

(declare-fun m!216593 () Bool)

(assert (=> b!190218 m!216593))

(assert (=> b!190052 d!55701))

(declare-fun d!55703 () Bool)

(declare-fun e!125210 () Bool)

(assert (=> d!55703 e!125210))

(declare-fun res!89944 () Bool)

(assert (=> d!55703 (=> (not res!89944) (not e!125210))))

(declare-fun lt!94353 () ListLongMap!2445)

(assert (=> d!55703 (= res!89944 (contains!1341 lt!94353 (_1!1767 (tuple2!3515 key!828 v!309))))))

(declare-fun lt!94350 () List!2435)

(assert (=> d!55703 (= lt!94353 (ListLongMap!2446 lt!94350))))

(declare-fun lt!94352 () Unit!5740)

(declare-fun lt!94351 () Unit!5740)

(assert (=> d!55703 (= lt!94352 lt!94351)))

(declare-datatypes ((Option!241 0))(
  ( (Some!240 (v!4190 V!5563)) (None!239) )
))
(declare-fun getValueByKey!235 (List!2435 (_ BitVec 64)) Option!241)

(assert (=> d!55703 (= (getValueByKey!235 lt!94350 (_1!1767 (tuple2!3515 key!828 v!309))) (Some!240 (_2!1767 (tuple2!3515 key!828 v!309))))))

(declare-fun lemmaContainsTupThenGetReturnValue!124 (List!2435 (_ BitVec 64) V!5563) Unit!5740)

(assert (=> d!55703 (= lt!94351 (lemmaContainsTupThenGetReturnValue!124 lt!94350 (_1!1767 (tuple2!3515 key!828 v!309)) (_2!1767 (tuple2!3515 key!828 v!309))))))

(declare-fun insertStrictlySorted!126 (List!2435 (_ BitVec 64) V!5563) List!2435)

(assert (=> d!55703 (= lt!94350 (insertStrictlySorted!126 (toList!1238 lt!94211) (_1!1767 (tuple2!3515 key!828 v!309)) (_2!1767 (tuple2!3515 key!828 v!309))))))

(assert (=> d!55703 (= (+!296 lt!94211 (tuple2!3515 key!828 v!309)) lt!94353)))

(declare-fun b!190227 () Bool)

(declare-fun res!89943 () Bool)

(assert (=> b!190227 (=> (not res!89943) (not e!125210))))

(assert (=> b!190227 (= res!89943 (= (getValueByKey!235 (toList!1238 lt!94353) (_1!1767 (tuple2!3515 key!828 v!309))) (Some!240 (_2!1767 (tuple2!3515 key!828 v!309)))))))

(declare-fun b!190228 () Bool)

(declare-fun contains!1343 (List!2435 tuple2!3514) Bool)

(assert (=> b!190228 (= e!125210 (contains!1343 (toList!1238 lt!94353) (tuple2!3515 key!828 v!309)))))

(assert (= (and d!55703 res!89944) b!190227))

(assert (= (and b!190227 res!89943) b!190228))

(declare-fun m!216595 () Bool)

(assert (=> d!55703 m!216595))

(declare-fun m!216597 () Bool)

(assert (=> d!55703 m!216597))

(declare-fun m!216599 () Bool)

(assert (=> d!55703 m!216599))

(declare-fun m!216601 () Bool)

(assert (=> d!55703 m!216601))

(declare-fun m!216603 () Bool)

(assert (=> b!190227 m!216603))

(declare-fun m!216605 () Bool)

(assert (=> b!190228 m!216605))

(assert (=> b!190052 d!55703))

(declare-fun d!55705 () Bool)

(declare-fun e!125216 () Bool)

(assert (=> d!55705 e!125216))

(declare-fun res!89947 () Bool)

(assert (=> d!55705 (=> res!89947 e!125216)))

(declare-fun lt!94363 () Bool)

(assert (=> d!55705 (= res!89947 (not lt!94363))))

(declare-fun lt!94362 () Bool)

(assert (=> d!55705 (= lt!94363 lt!94362)))

(declare-fun lt!94365 () Unit!5740)

(declare-fun e!125215 () Unit!5740)

(assert (=> d!55705 (= lt!94365 e!125215)))

(declare-fun c!34180 () Bool)

(assert (=> d!55705 (= c!34180 lt!94362)))

(declare-fun containsKey!239 (List!2435 (_ BitVec 64)) Bool)

(assert (=> d!55705 (= lt!94362 (containsKey!239 (toList!1238 lt!94211) key!828))))

(assert (=> d!55705 (= (contains!1341 lt!94211 key!828) lt!94363)))

(declare-fun b!190235 () Bool)

(declare-fun lt!94364 () Unit!5740)

(assert (=> b!190235 (= e!125215 lt!94364)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!188 (List!2435 (_ BitVec 64)) Unit!5740)

(assert (=> b!190235 (= lt!94364 (lemmaContainsKeyImpliesGetValueByKeyDefined!188 (toList!1238 lt!94211) key!828))))

(declare-fun isDefined!189 (Option!241) Bool)

(assert (=> b!190235 (isDefined!189 (getValueByKey!235 (toList!1238 lt!94211) key!828))))

(declare-fun b!190236 () Bool)

(declare-fun Unit!5748 () Unit!5740)

(assert (=> b!190236 (= e!125215 Unit!5748)))

(declare-fun b!190237 () Bool)

(assert (=> b!190237 (= e!125216 (isDefined!189 (getValueByKey!235 (toList!1238 lt!94211) key!828)))))

(assert (= (and d!55705 c!34180) b!190235))

(assert (= (and d!55705 (not c!34180)) b!190236))

(assert (= (and d!55705 (not res!89947)) b!190237))

(declare-fun m!216607 () Bool)

(assert (=> d!55705 m!216607))

(declare-fun m!216609 () Bool)

(assert (=> b!190235 m!216609))

(declare-fun m!216611 () Bool)

(assert (=> b!190235 m!216611))

(assert (=> b!190235 m!216611))

(declare-fun m!216613 () Bool)

(assert (=> b!190235 m!216613))

(assert (=> b!190237 m!216611))

(assert (=> b!190237 m!216611))

(assert (=> b!190237 m!216613))

(assert (=> b!190052 d!55705))

(declare-fun d!55707 () Bool)

(assert (=> d!55707 (= (array_inv!2467 (_keys!5850 thiss!1248)) (bvsge (size!4140 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!190050 d!55707))

(declare-fun d!55709 () Bool)

(assert (=> d!55709 (= (array_inv!2468 (_values!3864 thiss!1248)) (bvsge (size!4141 (_values!3864 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!190050 d!55709))

(declare-fun d!55711 () Bool)

(declare-fun res!89954 () Bool)

(declare-fun e!125219 () Bool)

(assert (=> d!55711 (=> (not res!89954) (not e!125219))))

(declare-fun simpleValid!194 (LongMapFixedSize!2658) Bool)

(assert (=> d!55711 (= res!89954 (simpleValid!194 thiss!1248))))

(assert (=> d!55711 (= (valid!1084 thiss!1248) e!125219)))

(declare-fun b!190244 () Bool)

(declare-fun res!89955 () Bool)

(assert (=> b!190244 (=> (not res!89955) (not e!125219))))

(declare-fun arrayCountValidKeys!0 (array!8106 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!190244 (= res!89955 (= (arrayCountValidKeys!0 (_keys!5850 thiss!1248) #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))) (_size!1378 thiss!1248)))))

(declare-fun b!190245 () Bool)

(declare-fun res!89956 () Bool)

(assert (=> b!190245 (=> (not res!89956) (not e!125219))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8106 (_ BitVec 32)) Bool)

(assert (=> b!190245 (= res!89956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5850 thiss!1248) (mask!9079 thiss!1248)))))

(declare-fun b!190246 () Bool)

(declare-datatypes ((List!2437 0))(
  ( (Nil!2434) (Cons!2433 (h!3070 (_ BitVec 64)) (t!7355 List!2437)) )
))
(declare-fun arrayNoDuplicates!0 (array!8106 (_ BitVec 32) List!2437) Bool)

(assert (=> b!190246 (= e!125219 (arrayNoDuplicates!0 (_keys!5850 thiss!1248) #b00000000000000000000000000000000 Nil!2434))))

(assert (= (and d!55711 res!89954) b!190244))

(assert (= (and b!190244 res!89955) b!190245))

(assert (= (and b!190245 res!89956) b!190246))

(declare-fun m!216615 () Bool)

(assert (=> d!55711 m!216615))

(declare-fun m!216617 () Bool)

(assert (=> b!190244 m!216617))

(declare-fun m!216619 () Bool)

(assert (=> b!190245 m!216619))

(declare-fun m!216621 () Bool)

(assert (=> b!190246 m!216621))

(assert (=> start!19332 d!55711))

(declare-fun b!190254 () Bool)

(declare-fun e!125225 () Bool)

(assert (=> b!190254 (= e!125225 tp_is_empty!4437)))

(declare-fun condMapEmpty!7663 () Bool)

(declare-fun mapDefault!7663 () ValueCell!1875)

(assert (=> mapNonEmpty!7657 (= condMapEmpty!7663 (= mapRest!7657 ((as const (Array (_ BitVec 32) ValueCell!1875)) mapDefault!7663)))))

(declare-fun mapRes!7663 () Bool)

(assert (=> mapNonEmpty!7657 (= tp!16833 (and e!125225 mapRes!7663))))

(declare-fun mapNonEmpty!7663 () Bool)

(declare-fun tp!16843 () Bool)

(declare-fun e!125224 () Bool)

(assert (=> mapNonEmpty!7663 (= mapRes!7663 (and tp!16843 e!125224))))

(declare-fun mapKey!7663 () (_ BitVec 32))

(declare-fun mapValue!7663 () ValueCell!1875)

(declare-fun mapRest!7663 () (Array (_ BitVec 32) ValueCell!1875))

(assert (=> mapNonEmpty!7663 (= mapRest!7657 (store mapRest!7663 mapKey!7663 mapValue!7663))))

(declare-fun mapIsEmpty!7663 () Bool)

(assert (=> mapIsEmpty!7663 mapRes!7663))

(declare-fun b!190253 () Bool)

(assert (=> b!190253 (= e!125224 tp_is_empty!4437)))

(assert (= (and mapNonEmpty!7657 condMapEmpty!7663) mapIsEmpty!7663))

(assert (= (and mapNonEmpty!7657 (not condMapEmpty!7663)) mapNonEmpty!7663))

(assert (= (and mapNonEmpty!7663 ((_ is ValueCellFull!1875) mapValue!7663)) b!190253))

(assert (= (and mapNonEmpty!7657 ((_ is ValueCellFull!1875) mapDefault!7663)) b!190254))

(declare-fun m!216623 () Bool)

(assert (=> mapNonEmpty!7663 m!216623))

(declare-fun b_lambda!7377 () Bool)

(assert (= b_lambda!7375 (or (and b!190050 b_free!4665) b_lambda!7377)))

(declare-fun b_lambda!7379 () Bool)

(assert (= b_lambda!7373 (or (and b!190050 b_free!4665) b_lambda!7379)))

(check-sat (not b!190179) (not bm!19197) (not b!190228) (not mapNonEmpty!7663) (not bm!19194) (not b!190235) (not bm!19195) (not b_lambda!7379) (not b!190246) (not bm!19187) (not b!190237) (not bm!19170) (not b_next!4665) (not b!190219) (not b!190205) (not b!190176) (not bm!19188) (not d!55687) (not bm!19190) (not b!190213) (not bm!19171) (not b!190216) (not b!190227) (not d!55693) (not b!190185) (not b!190190) (not d!55695) (not b!190114) (not b!190221) b_and!11335 (not b!190245) (not b!190192) (not b!190218) (not bm!19192) (not d!55705) (not b!190201) (not d!55699) tp_is_empty!4437 (not b!190193) (not b!190211) (not d!55711) (not b!190187) (not b!190128) (not b_lambda!7377) (not b!190202) (not d!55703) (not b!190244) (not bm!19199) (not d!55689) (not b!190195) (not d!55701))
(check-sat b_and!11335 (not b_next!4665))
(get-model)

(declare-fun b!190263 () Bool)

(declare-fun e!125231 () (_ BitVec 32))

(assert (=> b!190263 (= e!125231 #b00000000000000000000000000000000)))

(declare-fun d!55713 () Bool)

(declare-fun lt!94368 () (_ BitVec 32))

(assert (=> d!55713 (and (bvsge lt!94368 #b00000000000000000000000000000000) (bvsle lt!94368 (bvsub (size!4140 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!55713 (= lt!94368 e!125231)))

(declare-fun c!34185 () Bool)

(assert (=> d!55713 (= c!34185 (bvsge #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(assert (=> d!55713 (and (bvsle #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!4140 (_keys!5850 thiss!1248)) (size!4140 (_keys!5850 thiss!1248))))))

(assert (=> d!55713 (= (arrayCountValidKeys!0 (_keys!5850 thiss!1248) #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))) lt!94368)))

(declare-fun bm!19202 () Bool)

(declare-fun call!19205 () (_ BitVec 32))

(assert (=> bm!19202 (= call!19205 (arrayCountValidKeys!0 (_keys!5850 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4140 (_keys!5850 thiss!1248))))))

(declare-fun b!190264 () Bool)

(declare-fun e!125230 () (_ BitVec 32))

(assert (=> b!190264 (= e!125230 (bvadd #b00000000000000000000000000000001 call!19205))))

(declare-fun b!190265 () Bool)

(assert (=> b!190265 (= e!125230 call!19205)))

(declare-fun b!190266 () Bool)

(assert (=> b!190266 (= e!125231 e!125230)))

(declare-fun c!34186 () Bool)

(assert (=> b!190266 (= c!34186 (validKeyInArray!0 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!55713 c!34185) b!190263))

(assert (= (and d!55713 (not c!34185)) b!190266))

(assert (= (and b!190266 c!34186) b!190264))

(assert (= (and b!190266 (not c!34186)) b!190265))

(assert (= (or b!190264 b!190265) bm!19202))

(declare-fun m!216625 () Bool)

(assert (=> bm!19202 m!216625))

(assert (=> b!190266 m!216497))

(assert (=> b!190266 m!216497))

(assert (=> b!190266 m!216503))

(assert (=> b!190244 d!55713))

(declare-fun d!55715 () Bool)

(declare-fun get!2200 (Option!241) V!5563)

(assert (=> d!55715 (= (apply!179 lt!94296 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2200 (getValueByKey!235 (toList!1238 lt!94296) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7612 () Bool)

(assert (= bs!7612 d!55715))

(declare-fun m!216627 () Bool)

(assert (=> bs!7612 m!216627))

(assert (=> bs!7612 m!216627))

(declare-fun m!216629 () Bool)

(assert (=> bs!7612 m!216629))

(assert (=> b!190192 d!55715))

(declare-fun d!55717 () Bool)

(declare-fun res!89962 () Bool)

(declare-fun e!125238 () Bool)

(assert (=> d!55717 (=> res!89962 e!125238)))

(assert (=> d!55717 (= res!89962 (bvsge #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(assert (=> d!55717 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5850 thiss!1248) (mask!9079 thiss!1248)) e!125238)))

(declare-fun bm!19205 () Bool)

(declare-fun call!19208 () Bool)

(assert (=> bm!19205 (= call!19208 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5850 thiss!1248) (mask!9079 thiss!1248)))))

(declare-fun b!190275 () Bool)

(declare-fun e!125240 () Bool)

(assert (=> b!190275 (= e!125240 call!19208)))

(declare-fun b!190276 () Bool)

(declare-fun e!125239 () Bool)

(assert (=> b!190276 (= e!125239 call!19208)))

(declare-fun b!190277 () Bool)

(assert (=> b!190277 (= e!125238 e!125240)))

(declare-fun c!34189 () Bool)

(assert (=> b!190277 (= c!34189 (validKeyInArray!0 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!190278 () Bool)

(assert (=> b!190278 (= e!125240 e!125239)))

(declare-fun lt!94376 () (_ BitVec 64))

(assert (=> b!190278 (= lt!94376 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!94377 () Unit!5740)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!8106 (_ BitVec 64) (_ BitVec 32)) Unit!5740)

(assert (=> b!190278 (= lt!94377 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5850 thiss!1248) lt!94376 #b00000000000000000000000000000000))))

(assert (=> b!190278 (arrayContainsKey!0 (_keys!5850 thiss!1248) lt!94376 #b00000000000000000000000000000000)))

(declare-fun lt!94375 () Unit!5740)

(assert (=> b!190278 (= lt!94375 lt!94377)))

(declare-fun res!89961 () Bool)

(assert (=> b!190278 (= res!89961 (= (seekEntryOrOpen!0 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000) (_keys!5850 thiss!1248) (mask!9079 thiss!1248)) (Found!682 #b00000000000000000000000000000000)))))

(assert (=> b!190278 (=> (not res!89961) (not e!125239))))

(assert (= (and d!55717 (not res!89962)) b!190277))

(assert (= (and b!190277 c!34189) b!190278))

(assert (= (and b!190277 (not c!34189)) b!190275))

(assert (= (and b!190278 res!89961) b!190276))

(assert (= (or b!190276 b!190275) bm!19205))

(declare-fun m!216631 () Bool)

(assert (=> bm!19205 m!216631))

(assert (=> b!190277 m!216497))

(assert (=> b!190277 m!216497))

(assert (=> b!190277 m!216503))

(assert (=> b!190278 m!216497))

(declare-fun m!216633 () Bool)

(assert (=> b!190278 m!216633))

(declare-fun m!216635 () Bool)

(assert (=> b!190278 m!216635))

(assert (=> b!190278 m!216497))

(declare-fun m!216637 () Bool)

(assert (=> b!190278 m!216637))

(assert (=> b!190245 d!55717))

(declare-fun d!55719 () Bool)

(declare-fun e!125242 () Bool)

(assert (=> d!55719 e!125242))

(declare-fun res!89963 () Bool)

(assert (=> d!55719 (=> res!89963 e!125242)))

(declare-fun lt!94379 () Bool)

(assert (=> d!55719 (= res!89963 (not lt!94379))))

(declare-fun lt!94378 () Bool)

(assert (=> d!55719 (= lt!94379 lt!94378)))

(declare-fun lt!94381 () Unit!5740)

(declare-fun e!125241 () Unit!5740)

(assert (=> d!55719 (= lt!94381 e!125241)))

(declare-fun c!34190 () Bool)

(assert (=> d!55719 (= c!34190 lt!94378)))

(assert (=> d!55719 (= lt!94378 (containsKey!239 (toList!1238 lt!94296) (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!55719 (= (contains!1341 lt!94296 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)) lt!94379)))

(declare-fun b!190279 () Bool)

(declare-fun lt!94380 () Unit!5740)

(assert (=> b!190279 (= e!125241 lt!94380)))

(assert (=> b!190279 (= lt!94380 (lemmaContainsKeyImpliesGetValueByKeyDefined!188 (toList!1238 lt!94296) (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!190279 (isDefined!189 (getValueByKey!235 (toList!1238 lt!94296) (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!190280 () Bool)

(declare-fun Unit!5749 () Unit!5740)

(assert (=> b!190280 (= e!125241 Unit!5749)))

(declare-fun b!190281 () Bool)

(assert (=> b!190281 (= e!125242 (isDefined!189 (getValueByKey!235 (toList!1238 lt!94296) (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!55719 c!34190) b!190279))

(assert (= (and d!55719 (not c!34190)) b!190280))

(assert (= (and d!55719 (not res!89963)) b!190281))

(assert (=> d!55719 m!216497))

(declare-fun m!216639 () Bool)

(assert (=> d!55719 m!216639))

(assert (=> b!190279 m!216497))

(declare-fun m!216641 () Bool)

(assert (=> b!190279 m!216641))

(assert (=> b!190279 m!216497))

(declare-fun m!216643 () Bool)

(assert (=> b!190279 m!216643))

(assert (=> b!190279 m!216643))

(declare-fun m!216645 () Bool)

(assert (=> b!190279 m!216645))

(assert (=> b!190281 m!216497))

(assert (=> b!190281 m!216643))

(assert (=> b!190281 m!216643))

(assert (=> b!190281 m!216645))

(assert (=> b!190193 d!55719))

(declare-fun d!55721 () Bool)

(declare-fun isEmpty!484 (Option!241) Bool)

(assert (=> d!55721 (= (isDefined!189 (getValueByKey!235 (toList!1238 lt!94211) key!828)) (not (isEmpty!484 (getValueByKey!235 (toList!1238 lt!94211) key!828))))))

(declare-fun bs!7613 () Bool)

(assert (= bs!7613 d!55721))

(assert (=> bs!7613 m!216611))

(declare-fun m!216647 () Bool)

(assert (=> bs!7613 m!216647))

(assert (=> b!190237 d!55721))

(declare-fun d!55723 () Bool)

(declare-fun c!34195 () Bool)

(assert (=> d!55723 (= c!34195 (and ((_ is Cons!2431) (toList!1238 lt!94211)) (= (_1!1767 (h!3068 (toList!1238 lt!94211))) key!828)))))

(declare-fun e!125247 () Option!241)

(assert (=> d!55723 (= (getValueByKey!235 (toList!1238 lt!94211) key!828) e!125247)))

(declare-fun b!190291 () Bool)

(declare-fun e!125248 () Option!241)

(assert (=> b!190291 (= e!125247 e!125248)))

(declare-fun c!34196 () Bool)

(assert (=> b!190291 (= c!34196 (and ((_ is Cons!2431) (toList!1238 lt!94211)) (not (= (_1!1767 (h!3068 (toList!1238 lt!94211))) key!828))))))

(declare-fun b!190293 () Bool)

(assert (=> b!190293 (= e!125248 None!239)))

(declare-fun b!190292 () Bool)

(assert (=> b!190292 (= e!125248 (getValueByKey!235 (t!7351 (toList!1238 lt!94211)) key!828))))

(declare-fun b!190290 () Bool)

(assert (=> b!190290 (= e!125247 (Some!240 (_2!1767 (h!3068 (toList!1238 lt!94211)))))))

(assert (= (and d!55723 c!34195) b!190290))

(assert (= (and d!55723 (not c!34195)) b!190291))

(assert (= (and b!190291 c!34196) b!190292))

(assert (= (and b!190291 (not c!34196)) b!190293))

(declare-fun m!216649 () Bool)

(assert (=> b!190292 m!216649))

(assert (=> b!190237 d!55723))

(declare-fun d!55725 () Bool)

(assert (=> d!55725 (= (+!296 (getCurrentListMap!881 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)) (tuple2!3515 key!828 v!309)) (getCurrentListMap!881 (_keys!5850 thiss!1248) (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248))) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)))))

(assert (=> d!55725 true))

(declare-fun _$5!146 () Unit!5740)

(assert (=> d!55725 (= (choose!1030 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) (index!4899 lt!94206) key!828 v!309 (defaultEntry!3881 thiss!1248)) _$5!146)))

(declare-fun bs!7614 () Bool)

(assert (= bs!7614 d!55725))

(assert (=> bs!7614 m!216405))

(assert (=> bs!7614 m!216405))

(assert (=> bs!7614 m!216541))

(assert (=> bs!7614 m!216409))

(assert (=> bs!7614 m!216413))

(assert (=> d!55699 d!55725))

(assert (=> d!55699 d!55697))

(assert (=> d!55687 d!55693))

(declare-fun b!190310 () Bool)

(declare-fun e!125257 () Bool)

(declare-fun call!19213 () Bool)

(assert (=> b!190310 (= e!125257 (not call!19213))))

(declare-fun b!190311 () Bool)

(declare-fun res!89973 () Bool)

(assert (=> b!190311 (=> (not res!89973) (not e!125257))))

(declare-fun lt!94384 () SeekEntryResult!682)

(assert (=> b!190311 (= res!89973 (= (select (arr!3820 (_keys!5850 thiss!1248)) (index!4901 lt!94384)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!190312 () Bool)

(declare-fun e!125258 () Bool)

(assert (=> b!190312 (= e!125258 ((_ is Undefined!682) lt!94384))))

(declare-fun b!190313 () Bool)

(declare-fun res!89974 () Bool)

(assert (=> b!190313 (= res!89974 (= (select (arr!3820 (_keys!5850 thiss!1248)) (index!4898 lt!94384)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!125260 () Bool)

(assert (=> b!190313 (=> (not res!89974) (not e!125260))))

(declare-fun b!190314 () Bool)

(assert (=> b!190314 (= e!125260 (not call!19213))))

(declare-fun b!190315 () Bool)

(declare-fun e!125259 () Bool)

(assert (=> b!190315 (= e!125259 e!125258)))

(declare-fun c!34202 () Bool)

(assert (=> b!190315 (= c!34202 ((_ is MissingVacant!682) lt!94384))))

(declare-fun b!190316 () Bool)

(assert (=> b!190316 (= e!125259 e!125260)))

(declare-fun res!89972 () Bool)

(declare-fun call!19214 () Bool)

(assert (=> b!190316 (= res!89972 call!19214)))

(assert (=> b!190316 (=> (not res!89972) (not e!125260))))

(declare-fun bm!19210 () Bool)

(assert (=> bm!19210 (= call!19213 (arrayContainsKey!0 (_keys!5850 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun c!34201 () Bool)

(declare-fun bm!19211 () Bool)

(assert (=> bm!19211 (= call!19214 (inRange!0 (ite c!34201 (index!4898 lt!94384) (index!4901 lt!94384)) (mask!9079 thiss!1248)))))

(declare-fun d!55727 () Bool)

(assert (=> d!55727 e!125259))

(assert (=> d!55727 (= c!34201 ((_ is MissingZero!682) lt!94384))))

(assert (=> d!55727 (= lt!94384 (seekEntryOrOpen!0 key!828 (_keys!5850 thiss!1248) (mask!9079 thiss!1248)))))

(assert (=> d!55727 true))

(declare-fun _$34!1072 () Unit!5740)

(assert (=> d!55727 (= (choose!1028 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) key!828 (defaultEntry!3881 thiss!1248)) _$34!1072)))

(declare-fun b!190317 () Bool)

(declare-fun res!89975 () Bool)

(assert (=> b!190317 (=> (not res!89975) (not e!125257))))

(assert (=> b!190317 (= res!89975 call!19214)))

(assert (=> b!190317 (= e!125258 e!125257)))

(assert (= (and d!55727 c!34201) b!190316))

(assert (= (and d!55727 (not c!34201)) b!190315))

(assert (= (and b!190316 res!89972) b!190313))

(assert (= (and b!190313 res!89974) b!190314))

(assert (= (and b!190315 c!34202) b!190317))

(assert (= (and b!190315 (not c!34202)) b!190312))

(assert (= (and b!190317 res!89975) b!190311))

(assert (= (and b!190311 res!89973) b!190310))

(assert (= (or b!190316 b!190317) bm!19211))

(assert (= (or b!190314 b!190310) bm!19210))

(assert (=> d!55727 m!216397))

(declare-fun m!216651 () Bool)

(assert (=> bm!19211 m!216651))

(declare-fun m!216653 () Bool)

(assert (=> b!190311 m!216653))

(declare-fun m!216655 () Bool)

(assert (=> b!190313 m!216655))

(assert (=> bm!19210 m!216457))

(assert (=> d!55687 d!55727))

(assert (=> d!55687 d!55697))

(declare-fun d!55729 () Bool)

(assert (=> d!55729 (= (apply!179 (+!296 lt!94316 (tuple2!3515 lt!94315 (minValue!3722 thiss!1248))) lt!94299) (apply!179 lt!94316 lt!94299))))

(declare-fun lt!94387 () Unit!5740)

(declare-fun choose!1031 (ListLongMap!2445 (_ BitVec 64) V!5563 (_ BitVec 64)) Unit!5740)

(assert (=> d!55729 (= lt!94387 (choose!1031 lt!94316 lt!94315 (minValue!3722 thiss!1248) lt!94299))))

(declare-fun e!125263 () Bool)

(assert (=> d!55729 e!125263))

(declare-fun res!89978 () Bool)

(assert (=> d!55729 (=> (not res!89978) (not e!125263))))

(assert (=> d!55729 (= res!89978 (contains!1341 lt!94316 lt!94299))))

(assert (=> d!55729 (= (addApplyDifferent!155 lt!94316 lt!94315 (minValue!3722 thiss!1248) lt!94299) lt!94387)))

(declare-fun b!190321 () Bool)

(assert (=> b!190321 (= e!125263 (not (= lt!94299 lt!94315)))))

(assert (= (and d!55729 res!89978) b!190321))

(declare-fun m!216657 () Bool)

(assert (=> d!55729 m!216657))

(assert (=> d!55729 m!216521))

(assert (=> d!55729 m!216511))

(assert (=> d!55729 m!216521))

(assert (=> d!55729 m!216531))

(declare-fun m!216659 () Bool)

(assert (=> d!55729 m!216659))

(assert (=> b!190179 d!55729))

(declare-fun d!55731 () Bool)

(assert (=> d!55731 (= (apply!179 (+!296 lt!94301 (tuple2!3515 lt!94313 (minValue!3722 thiss!1248))) lt!94304) (apply!179 lt!94301 lt!94304))))

(declare-fun lt!94388 () Unit!5740)

(assert (=> d!55731 (= lt!94388 (choose!1031 lt!94301 lt!94313 (minValue!3722 thiss!1248) lt!94304))))

(declare-fun e!125264 () Bool)

(assert (=> d!55731 e!125264))

(declare-fun res!89979 () Bool)

(assert (=> d!55731 (=> (not res!89979) (not e!125264))))

(assert (=> d!55731 (= res!89979 (contains!1341 lt!94301 lt!94304))))

(assert (=> d!55731 (= (addApplyDifferent!155 lt!94301 lt!94313 (minValue!3722 thiss!1248) lt!94304) lt!94388)))

(declare-fun b!190322 () Bool)

(assert (=> b!190322 (= e!125264 (not (= lt!94304 lt!94313)))))

(assert (= (and d!55731 res!89979) b!190322))

(declare-fun m!216661 () Bool)

(assert (=> d!55731 m!216661))

(assert (=> d!55731 m!216507))

(assert (=> d!55731 m!216523))

(assert (=> d!55731 m!216507))

(assert (=> d!55731 m!216509))

(declare-fun m!216663 () Bool)

(assert (=> d!55731 m!216663))

(assert (=> b!190179 d!55731))

(declare-fun d!55733 () Bool)

(declare-fun e!125265 () Bool)

(assert (=> d!55733 e!125265))

(declare-fun res!89981 () Bool)

(assert (=> d!55733 (=> (not res!89981) (not e!125265))))

(declare-fun lt!94392 () ListLongMap!2445)

(assert (=> d!55733 (= res!89981 (contains!1341 lt!94392 (_1!1767 (tuple2!3515 lt!94313 (minValue!3722 thiss!1248)))))))

(declare-fun lt!94389 () List!2435)

(assert (=> d!55733 (= lt!94392 (ListLongMap!2446 lt!94389))))

(declare-fun lt!94391 () Unit!5740)

(declare-fun lt!94390 () Unit!5740)

(assert (=> d!55733 (= lt!94391 lt!94390)))

(assert (=> d!55733 (= (getValueByKey!235 lt!94389 (_1!1767 (tuple2!3515 lt!94313 (minValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 lt!94313 (minValue!3722 thiss!1248)))))))

(assert (=> d!55733 (= lt!94390 (lemmaContainsTupThenGetReturnValue!124 lt!94389 (_1!1767 (tuple2!3515 lt!94313 (minValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 lt!94313 (minValue!3722 thiss!1248)))))))

(assert (=> d!55733 (= lt!94389 (insertStrictlySorted!126 (toList!1238 lt!94301) (_1!1767 (tuple2!3515 lt!94313 (minValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 lt!94313 (minValue!3722 thiss!1248)))))))

(assert (=> d!55733 (= (+!296 lt!94301 (tuple2!3515 lt!94313 (minValue!3722 thiss!1248))) lt!94392)))

(declare-fun b!190323 () Bool)

(declare-fun res!89980 () Bool)

(assert (=> b!190323 (=> (not res!89980) (not e!125265))))

(assert (=> b!190323 (= res!89980 (= (getValueByKey!235 (toList!1238 lt!94392) (_1!1767 (tuple2!3515 lt!94313 (minValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 lt!94313 (minValue!3722 thiss!1248))))))))

(declare-fun b!190324 () Bool)

(assert (=> b!190324 (= e!125265 (contains!1343 (toList!1238 lt!94392) (tuple2!3515 lt!94313 (minValue!3722 thiss!1248))))))

(assert (= (and d!55733 res!89981) b!190323))

(assert (= (and b!190323 res!89980) b!190324))

(declare-fun m!216665 () Bool)

(assert (=> d!55733 m!216665))

(declare-fun m!216667 () Bool)

(assert (=> d!55733 m!216667))

(declare-fun m!216669 () Bool)

(assert (=> d!55733 m!216669))

(declare-fun m!216671 () Bool)

(assert (=> d!55733 m!216671))

(declare-fun m!216673 () Bool)

(assert (=> b!190323 m!216673))

(declare-fun m!216675 () Bool)

(assert (=> b!190324 m!216675))

(assert (=> b!190179 d!55733))

(declare-fun d!55735 () Bool)

(assert (=> d!55735 (= (apply!179 (+!296 lt!94303 (tuple2!3515 lt!94306 (zeroValue!3722 thiss!1248))) lt!94311) (get!2200 (getValueByKey!235 (toList!1238 (+!296 lt!94303 (tuple2!3515 lt!94306 (zeroValue!3722 thiss!1248)))) lt!94311)))))

(declare-fun bs!7615 () Bool)

(assert (= bs!7615 d!55735))

(declare-fun m!216677 () Bool)

(assert (=> bs!7615 m!216677))

(assert (=> bs!7615 m!216677))

(declare-fun m!216679 () Bool)

(assert (=> bs!7615 m!216679))

(assert (=> b!190179 d!55735))

(declare-fun d!55737 () Bool)

(assert (=> d!55737 (= (apply!179 (+!296 lt!94316 (tuple2!3515 lt!94315 (minValue!3722 thiss!1248))) lt!94299) (get!2200 (getValueByKey!235 (toList!1238 (+!296 lt!94316 (tuple2!3515 lt!94315 (minValue!3722 thiss!1248)))) lt!94299)))))

(declare-fun bs!7616 () Bool)

(assert (= bs!7616 d!55737))

(declare-fun m!216681 () Bool)

(assert (=> bs!7616 m!216681))

(assert (=> bs!7616 m!216681))

(declare-fun m!216683 () Bool)

(assert (=> bs!7616 m!216683))

(assert (=> b!190179 d!55737))

(declare-fun d!55739 () Bool)

(assert (=> d!55739 (= (apply!179 lt!94303 lt!94311) (get!2200 (getValueByKey!235 (toList!1238 lt!94303) lt!94311)))))

(declare-fun bs!7617 () Bool)

(assert (= bs!7617 d!55739))

(declare-fun m!216685 () Bool)

(assert (=> bs!7617 m!216685))

(assert (=> bs!7617 m!216685))

(declare-fun m!216687 () Bool)

(assert (=> bs!7617 m!216687))

(assert (=> b!190179 d!55739))

(declare-fun d!55741 () Bool)

(declare-fun e!125267 () Bool)

(assert (=> d!55741 e!125267))

(declare-fun res!89982 () Bool)

(assert (=> d!55741 (=> res!89982 e!125267)))

(declare-fun lt!94394 () Bool)

(assert (=> d!55741 (= res!89982 (not lt!94394))))

(declare-fun lt!94393 () Bool)

(assert (=> d!55741 (= lt!94394 lt!94393)))

(declare-fun lt!94396 () Unit!5740)

(declare-fun e!125266 () Unit!5740)

(assert (=> d!55741 (= lt!94396 e!125266)))

(declare-fun c!34203 () Bool)

(assert (=> d!55741 (= c!34203 lt!94393)))

(assert (=> d!55741 (= lt!94393 (containsKey!239 (toList!1238 (+!296 lt!94307 (tuple2!3515 lt!94310 (zeroValue!3722 thiss!1248)))) lt!94309))))

(assert (=> d!55741 (= (contains!1341 (+!296 lt!94307 (tuple2!3515 lt!94310 (zeroValue!3722 thiss!1248))) lt!94309) lt!94394)))

(declare-fun b!190325 () Bool)

(declare-fun lt!94395 () Unit!5740)

(assert (=> b!190325 (= e!125266 lt!94395)))

(assert (=> b!190325 (= lt!94395 (lemmaContainsKeyImpliesGetValueByKeyDefined!188 (toList!1238 (+!296 lt!94307 (tuple2!3515 lt!94310 (zeroValue!3722 thiss!1248)))) lt!94309))))

(assert (=> b!190325 (isDefined!189 (getValueByKey!235 (toList!1238 (+!296 lt!94307 (tuple2!3515 lt!94310 (zeroValue!3722 thiss!1248)))) lt!94309))))

(declare-fun b!190326 () Bool)

(declare-fun Unit!5750 () Unit!5740)

(assert (=> b!190326 (= e!125266 Unit!5750)))

(declare-fun b!190327 () Bool)

(assert (=> b!190327 (= e!125267 (isDefined!189 (getValueByKey!235 (toList!1238 (+!296 lt!94307 (tuple2!3515 lt!94310 (zeroValue!3722 thiss!1248)))) lt!94309)))))

(assert (= (and d!55741 c!34203) b!190325))

(assert (= (and d!55741 (not c!34203)) b!190326))

(assert (= (and d!55741 (not res!89982)) b!190327))

(declare-fun m!216689 () Bool)

(assert (=> d!55741 m!216689))

(declare-fun m!216691 () Bool)

(assert (=> b!190325 m!216691))

(declare-fun m!216693 () Bool)

(assert (=> b!190325 m!216693))

(assert (=> b!190325 m!216693))

(declare-fun m!216695 () Bool)

(assert (=> b!190325 m!216695))

(assert (=> b!190327 m!216693))

(assert (=> b!190327 m!216693))

(assert (=> b!190327 m!216695))

(assert (=> b!190179 d!55741))

(declare-fun d!55743 () Bool)

(declare-fun e!125268 () Bool)

(assert (=> d!55743 e!125268))

(declare-fun res!89984 () Bool)

(assert (=> d!55743 (=> (not res!89984) (not e!125268))))

(declare-fun lt!94400 () ListLongMap!2445)

(assert (=> d!55743 (= res!89984 (contains!1341 lt!94400 (_1!1767 (tuple2!3515 lt!94315 (minValue!3722 thiss!1248)))))))

(declare-fun lt!94397 () List!2435)

(assert (=> d!55743 (= lt!94400 (ListLongMap!2446 lt!94397))))

(declare-fun lt!94399 () Unit!5740)

(declare-fun lt!94398 () Unit!5740)

(assert (=> d!55743 (= lt!94399 lt!94398)))

(assert (=> d!55743 (= (getValueByKey!235 lt!94397 (_1!1767 (tuple2!3515 lt!94315 (minValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 lt!94315 (minValue!3722 thiss!1248)))))))

(assert (=> d!55743 (= lt!94398 (lemmaContainsTupThenGetReturnValue!124 lt!94397 (_1!1767 (tuple2!3515 lt!94315 (minValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 lt!94315 (minValue!3722 thiss!1248)))))))

(assert (=> d!55743 (= lt!94397 (insertStrictlySorted!126 (toList!1238 lt!94316) (_1!1767 (tuple2!3515 lt!94315 (minValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 lt!94315 (minValue!3722 thiss!1248)))))))

(assert (=> d!55743 (= (+!296 lt!94316 (tuple2!3515 lt!94315 (minValue!3722 thiss!1248))) lt!94400)))

(declare-fun b!190328 () Bool)

(declare-fun res!89983 () Bool)

(assert (=> b!190328 (=> (not res!89983) (not e!125268))))

(assert (=> b!190328 (= res!89983 (= (getValueByKey!235 (toList!1238 lt!94400) (_1!1767 (tuple2!3515 lt!94315 (minValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 lt!94315 (minValue!3722 thiss!1248))))))))

(declare-fun b!190329 () Bool)

(assert (=> b!190329 (= e!125268 (contains!1343 (toList!1238 lt!94400) (tuple2!3515 lt!94315 (minValue!3722 thiss!1248))))))

(assert (= (and d!55743 res!89984) b!190328))

(assert (= (and b!190328 res!89983) b!190329))

(declare-fun m!216697 () Bool)

(assert (=> d!55743 m!216697))

(declare-fun m!216699 () Bool)

(assert (=> d!55743 m!216699))

(declare-fun m!216701 () Bool)

(assert (=> d!55743 m!216701))

(declare-fun m!216703 () Bool)

(assert (=> d!55743 m!216703))

(declare-fun m!216705 () Bool)

(assert (=> b!190328 m!216705))

(declare-fun m!216707 () Bool)

(assert (=> b!190329 m!216707))

(assert (=> b!190179 d!55743))

(declare-fun d!55745 () Bool)

(declare-fun e!125269 () Bool)

(assert (=> d!55745 e!125269))

(declare-fun res!89986 () Bool)

(assert (=> d!55745 (=> (not res!89986) (not e!125269))))

(declare-fun lt!94404 () ListLongMap!2445)

(assert (=> d!55745 (= res!89986 (contains!1341 lt!94404 (_1!1767 (tuple2!3515 lt!94310 (zeroValue!3722 thiss!1248)))))))

(declare-fun lt!94401 () List!2435)

(assert (=> d!55745 (= lt!94404 (ListLongMap!2446 lt!94401))))

(declare-fun lt!94403 () Unit!5740)

(declare-fun lt!94402 () Unit!5740)

(assert (=> d!55745 (= lt!94403 lt!94402)))

(assert (=> d!55745 (= (getValueByKey!235 lt!94401 (_1!1767 (tuple2!3515 lt!94310 (zeroValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 lt!94310 (zeroValue!3722 thiss!1248)))))))

(assert (=> d!55745 (= lt!94402 (lemmaContainsTupThenGetReturnValue!124 lt!94401 (_1!1767 (tuple2!3515 lt!94310 (zeroValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 lt!94310 (zeroValue!3722 thiss!1248)))))))

(assert (=> d!55745 (= lt!94401 (insertStrictlySorted!126 (toList!1238 lt!94307) (_1!1767 (tuple2!3515 lt!94310 (zeroValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 lt!94310 (zeroValue!3722 thiss!1248)))))))

(assert (=> d!55745 (= (+!296 lt!94307 (tuple2!3515 lt!94310 (zeroValue!3722 thiss!1248))) lt!94404)))

(declare-fun b!190330 () Bool)

(declare-fun res!89985 () Bool)

(assert (=> b!190330 (=> (not res!89985) (not e!125269))))

(assert (=> b!190330 (= res!89985 (= (getValueByKey!235 (toList!1238 lt!94404) (_1!1767 (tuple2!3515 lt!94310 (zeroValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 lt!94310 (zeroValue!3722 thiss!1248))))))))

(declare-fun b!190331 () Bool)

(assert (=> b!190331 (= e!125269 (contains!1343 (toList!1238 lt!94404) (tuple2!3515 lt!94310 (zeroValue!3722 thiss!1248))))))

(assert (= (and d!55745 res!89986) b!190330))

(assert (= (and b!190330 res!89985) b!190331))

(declare-fun m!216709 () Bool)

(assert (=> d!55745 m!216709))

(declare-fun m!216711 () Bool)

(assert (=> d!55745 m!216711))

(declare-fun m!216713 () Bool)

(assert (=> d!55745 m!216713))

(declare-fun m!216715 () Bool)

(assert (=> d!55745 m!216715))

(declare-fun m!216717 () Bool)

(assert (=> b!190330 m!216717))

(declare-fun m!216719 () Bool)

(assert (=> b!190331 m!216719))

(assert (=> b!190179 d!55745))

(declare-fun d!55747 () Bool)

(assert (=> d!55747 (contains!1341 (+!296 lt!94307 (tuple2!3515 lt!94310 (zeroValue!3722 thiss!1248))) lt!94309)))

(declare-fun lt!94407 () Unit!5740)

(declare-fun choose!1032 (ListLongMap!2445 (_ BitVec 64) V!5563 (_ BitVec 64)) Unit!5740)

(assert (=> d!55747 (= lt!94407 (choose!1032 lt!94307 lt!94310 (zeroValue!3722 thiss!1248) lt!94309))))

(assert (=> d!55747 (contains!1341 lt!94307 lt!94309)))

(assert (=> d!55747 (= (addStillContains!155 lt!94307 lt!94310 (zeroValue!3722 thiss!1248) lt!94309) lt!94407)))

(declare-fun bs!7618 () Bool)

(assert (= bs!7618 d!55747))

(assert (=> bs!7618 m!216525))

(assert (=> bs!7618 m!216525))

(assert (=> bs!7618 m!216527))

(declare-fun m!216721 () Bool)

(assert (=> bs!7618 m!216721))

(declare-fun m!216723 () Bool)

(assert (=> bs!7618 m!216723))

(assert (=> b!190179 d!55747))

(declare-fun d!55749 () Bool)

(assert (=> d!55749 (= (apply!179 lt!94301 lt!94304) (get!2200 (getValueByKey!235 (toList!1238 lt!94301) lt!94304)))))

(declare-fun bs!7619 () Bool)

(assert (= bs!7619 d!55749))

(declare-fun m!216725 () Bool)

(assert (=> bs!7619 m!216725))

(assert (=> bs!7619 m!216725))

(declare-fun m!216727 () Bool)

(assert (=> bs!7619 m!216727))

(assert (=> b!190179 d!55749))

(declare-fun b!190357 () Bool)

(declare-fun e!125290 () ListLongMap!2445)

(declare-fun call!19217 () ListLongMap!2445)

(assert (=> b!190357 (= e!125290 call!19217)))

(declare-fun b!190358 () Bool)

(declare-fun res!89997 () Bool)

(declare-fun e!125284 () Bool)

(assert (=> b!190358 (=> (not res!89997) (not e!125284))))

(declare-fun lt!94425 () ListLongMap!2445)

(assert (=> b!190358 (= res!89997 (not (contains!1341 lt!94425 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!190359 () Bool)

(declare-fun e!125289 () ListLongMap!2445)

(assert (=> b!190359 (= e!125289 (ListLongMap!2446 Nil!2432))))

(declare-fun e!125288 () Bool)

(declare-fun b!190360 () Bool)

(assert (=> b!190360 (= e!125288 (= lt!94425 (getCurrentListMapNoExtraKeys!209 (_keys!5850 thiss!1248) (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248))) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3881 thiss!1248))))))

(declare-fun b!190361 () Bool)

(declare-fun e!125285 () Bool)

(assert (=> b!190361 (= e!125285 e!125288)))

(declare-fun c!34213 () Bool)

(assert (=> b!190361 (= c!34213 (bvslt #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(declare-fun b!190362 () Bool)

(assert (=> b!190362 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(assert (=> b!190362 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4141 (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248))))))))

(declare-fun e!125287 () Bool)

(assert (=> b!190362 (= e!125287 (= (apply!179 lt!94425 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)) (get!2199 (select (arr!3821 (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!517 (defaultEntry!3881 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!190364 () Bool)

(declare-fun isEmpty!485 (ListLongMap!2445) Bool)

(assert (=> b!190364 (= e!125288 (isEmpty!485 lt!94425))))

(declare-fun b!190365 () Bool)

(assert (=> b!190365 (= e!125284 e!125285)))

(declare-fun c!34215 () Bool)

(declare-fun e!125286 () Bool)

(assert (=> b!190365 (= c!34215 e!125286)))

(declare-fun res!89998 () Bool)

(assert (=> b!190365 (=> (not res!89998) (not e!125286))))

(assert (=> b!190365 (= res!89998 (bvslt #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(declare-fun bm!19214 () Bool)

(assert (=> bm!19214 (= call!19217 (getCurrentListMapNoExtraKeys!209 (_keys!5850 thiss!1248) (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248))) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3881 thiss!1248)))))

(declare-fun b!190366 () Bool)

(assert (=> b!190366 (= e!125289 e!125290)))

(declare-fun c!34214 () Bool)

(assert (=> b!190366 (= c!34214 (validKeyInArray!0 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!190367 () Bool)

(declare-fun lt!94422 () Unit!5740)

(declare-fun lt!94424 () Unit!5740)

(assert (=> b!190367 (= lt!94422 lt!94424)))

(declare-fun lt!94428 () (_ BitVec 64))

(declare-fun lt!94427 () (_ BitVec 64))

(declare-fun lt!94426 () V!5563)

(declare-fun lt!94423 () ListLongMap!2445)

(assert (=> b!190367 (not (contains!1341 (+!296 lt!94423 (tuple2!3515 lt!94428 lt!94426)) lt!94427))))

(declare-fun addStillNotContains!95 (ListLongMap!2445 (_ BitVec 64) V!5563 (_ BitVec 64)) Unit!5740)

(assert (=> b!190367 (= lt!94424 (addStillNotContains!95 lt!94423 lt!94428 lt!94426 lt!94427))))

(assert (=> b!190367 (= lt!94427 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!190367 (= lt!94426 (get!2199 (select (arr!3821 (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!517 (defaultEntry!3881 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!190367 (= lt!94428 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!190367 (= lt!94423 call!19217)))

(assert (=> b!190367 (= e!125290 (+!296 call!19217 (tuple2!3515 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000) (get!2199 (select (arr!3821 (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!517 (defaultEntry!3881 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!190368 () Bool)

(assert (=> b!190368 (= e!125285 e!125287)))

(assert (=> b!190368 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(declare-fun res!89995 () Bool)

(assert (=> b!190368 (= res!89995 (contains!1341 lt!94425 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!190368 (=> (not res!89995) (not e!125287))))

(declare-fun b!190363 () Bool)

(assert (=> b!190363 (= e!125286 (validKeyInArray!0 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!190363 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!55751 () Bool)

(assert (=> d!55751 e!125284))

(declare-fun res!89996 () Bool)

(assert (=> d!55751 (=> (not res!89996) (not e!125284))))

(assert (=> d!55751 (= res!89996 (not (contains!1341 lt!94425 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!55751 (= lt!94425 e!125289)))

(declare-fun c!34212 () Bool)

(assert (=> d!55751 (= c!34212 (bvsge #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(assert (=> d!55751 (validMask!0 (mask!9079 thiss!1248))))

(assert (=> d!55751 (= (getCurrentListMapNoExtraKeys!209 (_keys!5850 thiss!1248) (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248))) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)) lt!94425)))

(assert (= (and d!55751 c!34212) b!190359))

(assert (= (and d!55751 (not c!34212)) b!190366))

(assert (= (and b!190366 c!34214) b!190367))

(assert (= (and b!190366 (not c!34214)) b!190357))

(assert (= (or b!190367 b!190357) bm!19214))

(assert (= (and d!55751 res!89996) b!190358))

(assert (= (and b!190358 res!89997) b!190365))

(assert (= (and b!190365 res!89998) b!190363))

(assert (= (and b!190365 c!34215) b!190368))

(assert (= (and b!190365 (not c!34215)) b!190361))

(assert (= (and b!190368 res!89995) b!190362))

(assert (= (and b!190361 c!34213) b!190360))

(assert (= (and b!190361 (not c!34213)) b!190364))

(declare-fun b_lambda!7381 () Bool)

(assert (=> (not b_lambda!7381) (not b!190362)))

(assert (=> b!190362 t!7354))

(declare-fun b_and!11337 () Bool)

(assert (= b_and!11335 (and (=> t!7354 result!4893) b_and!11337)))

(declare-fun b_lambda!7383 () Bool)

(assert (=> (not b_lambda!7383) (not b!190367)))

(assert (=> b!190367 t!7354))

(declare-fun b_and!11339 () Bool)

(assert (= b_and!11337 (and (=> t!7354 result!4893) b_and!11339)))

(declare-fun m!216729 () Bool)

(assert (=> d!55751 m!216729))

(assert (=> d!55751 m!216415))

(declare-fun m!216731 () Bool)

(assert (=> b!190360 m!216731))

(declare-fun m!216733 () Bool)

(assert (=> b!190367 m!216733))

(assert (=> b!190367 m!216491))

(assert (=> b!190367 m!216497))

(declare-fun m!216735 () Bool)

(assert (=> b!190367 m!216735))

(assert (=> b!190367 m!216493))

(assert (=> b!190367 m!216491))

(assert (=> b!190367 m!216495))

(assert (=> b!190367 m!216733))

(declare-fun m!216737 () Bool)

(assert (=> b!190367 m!216737))

(declare-fun m!216739 () Bool)

(assert (=> b!190367 m!216739))

(assert (=> b!190367 m!216493))

(assert (=> b!190366 m!216497))

(assert (=> b!190366 m!216497))

(assert (=> b!190366 m!216503))

(declare-fun m!216741 () Bool)

(assert (=> b!190364 m!216741))

(assert (=> b!190368 m!216497))

(assert (=> b!190368 m!216497))

(declare-fun m!216743 () Bool)

(assert (=> b!190368 m!216743))

(declare-fun m!216745 () Bool)

(assert (=> b!190358 m!216745))

(assert (=> bm!19214 m!216731))

(assert (=> b!190363 m!216497))

(assert (=> b!190363 m!216497))

(assert (=> b!190363 m!216503))

(assert (=> b!190362 m!216491))

(assert (=> b!190362 m!216497))

(assert (=> b!190362 m!216497))

(declare-fun m!216747 () Bool)

(assert (=> b!190362 m!216747))

(assert (=> b!190362 m!216493))

(assert (=> b!190362 m!216491))

(assert (=> b!190362 m!216495))

(assert (=> b!190362 m!216493))

(assert (=> b!190179 d!55751))

(declare-fun d!55753 () Bool)

(assert (=> d!55753 (= (apply!179 (+!296 lt!94301 (tuple2!3515 lt!94313 (minValue!3722 thiss!1248))) lt!94304) (get!2200 (getValueByKey!235 (toList!1238 (+!296 lt!94301 (tuple2!3515 lt!94313 (minValue!3722 thiss!1248)))) lt!94304)))))

(declare-fun bs!7620 () Bool)

(assert (= bs!7620 d!55753))

(declare-fun m!216749 () Bool)

(assert (=> bs!7620 m!216749))

(assert (=> bs!7620 m!216749))

(declare-fun m!216751 () Bool)

(assert (=> bs!7620 m!216751))

(assert (=> b!190179 d!55753))

(declare-fun d!55755 () Bool)

(declare-fun e!125291 () Bool)

(assert (=> d!55755 e!125291))

(declare-fun res!90000 () Bool)

(assert (=> d!55755 (=> (not res!90000) (not e!125291))))

(declare-fun lt!94432 () ListLongMap!2445)

(assert (=> d!55755 (= res!90000 (contains!1341 lt!94432 (_1!1767 (tuple2!3515 lt!94306 (zeroValue!3722 thiss!1248)))))))

(declare-fun lt!94429 () List!2435)

(assert (=> d!55755 (= lt!94432 (ListLongMap!2446 lt!94429))))

(declare-fun lt!94431 () Unit!5740)

(declare-fun lt!94430 () Unit!5740)

(assert (=> d!55755 (= lt!94431 lt!94430)))

(assert (=> d!55755 (= (getValueByKey!235 lt!94429 (_1!1767 (tuple2!3515 lt!94306 (zeroValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 lt!94306 (zeroValue!3722 thiss!1248)))))))

(assert (=> d!55755 (= lt!94430 (lemmaContainsTupThenGetReturnValue!124 lt!94429 (_1!1767 (tuple2!3515 lt!94306 (zeroValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 lt!94306 (zeroValue!3722 thiss!1248)))))))

(assert (=> d!55755 (= lt!94429 (insertStrictlySorted!126 (toList!1238 lt!94303) (_1!1767 (tuple2!3515 lt!94306 (zeroValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 lt!94306 (zeroValue!3722 thiss!1248)))))))

(assert (=> d!55755 (= (+!296 lt!94303 (tuple2!3515 lt!94306 (zeroValue!3722 thiss!1248))) lt!94432)))

(declare-fun b!190369 () Bool)

(declare-fun res!89999 () Bool)

(assert (=> b!190369 (=> (not res!89999) (not e!125291))))

(assert (=> b!190369 (= res!89999 (= (getValueByKey!235 (toList!1238 lt!94432) (_1!1767 (tuple2!3515 lt!94306 (zeroValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 lt!94306 (zeroValue!3722 thiss!1248))))))))

(declare-fun b!190370 () Bool)

(assert (=> b!190370 (= e!125291 (contains!1343 (toList!1238 lt!94432) (tuple2!3515 lt!94306 (zeroValue!3722 thiss!1248))))))

(assert (= (and d!55755 res!90000) b!190369))

(assert (= (and b!190369 res!89999) b!190370))

(declare-fun m!216753 () Bool)

(assert (=> d!55755 m!216753))

(declare-fun m!216755 () Bool)

(assert (=> d!55755 m!216755))

(declare-fun m!216757 () Bool)

(assert (=> d!55755 m!216757))

(declare-fun m!216759 () Bool)

(assert (=> d!55755 m!216759))

(declare-fun m!216761 () Bool)

(assert (=> b!190369 m!216761))

(declare-fun m!216763 () Bool)

(assert (=> b!190370 m!216763))

(assert (=> b!190179 d!55755))

(declare-fun d!55757 () Bool)

(assert (=> d!55757 (= (apply!179 (+!296 lt!94303 (tuple2!3515 lt!94306 (zeroValue!3722 thiss!1248))) lt!94311) (apply!179 lt!94303 lt!94311))))

(declare-fun lt!94433 () Unit!5740)

(assert (=> d!55757 (= lt!94433 (choose!1031 lt!94303 lt!94306 (zeroValue!3722 thiss!1248) lt!94311))))

(declare-fun e!125292 () Bool)

(assert (=> d!55757 e!125292))

(declare-fun res!90001 () Bool)

(assert (=> d!55757 (=> (not res!90001) (not e!125292))))

(assert (=> d!55757 (= res!90001 (contains!1341 lt!94303 lt!94311))))

(assert (=> d!55757 (= (addApplyDifferent!155 lt!94303 lt!94306 (zeroValue!3722 thiss!1248) lt!94311) lt!94433)))

(declare-fun b!190371 () Bool)

(assert (=> b!190371 (= e!125292 (not (= lt!94311 lt!94306)))))

(assert (= (and d!55757 res!90001) b!190371))

(declare-fun m!216765 () Bool)

(assert (=> d!55757 m!216765))

(assert (=> d!55757 m!216517))

(assert (=> d!55757 m!216535))

(assert (=> d!55757 m!216517))

(assert (=> d!55757 m!216519))

(declare-fun m!216767 () Bool)

(assert (=> d!55757 m!216767))

(assert (=> b!190179 d!55757))

(declare-fun d!55759 () Bool)

(assert (=> d!55759 (= (apply!179 lt!94316 lt!94299) (get!2200 (getValueByKey!235 (toList!1238 lt!94316) lt!94299)))))

(declare-fun bs!7621 () Bool)

(assert (= bs!7621 d!55759))

(declare-fun m!216769 () Bool)

(assert (=> bs!7621 m!216769))

(assert (=> bs!7621 m!216769))

(declare-fun m!216771 () Bool)

(assert (=> bs!7621 m!216771))

(assert (=> b!190179 d!55759))

(declare-fun b!190382 () Bool)

(declare-fun e!125302 () Bool)

(declare-fun contains!1344 (List!2437 (_ BitVec 64)) Bool)

(assert (=> b!190382 (= e!125302 (contains!1344 Nil!2434 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!190384 () Bool)

(declare-fun e!125301 () Bool)

(declare-fun call!19220 () Bool)

(assert (=> b!190384 (= e!125301 call!19220)))

(declare-fun b!190385 () Bool)

(assert (=> b!190385 (= e!125301 call!19220)))

(declare-fun b!190383 () Bool)

(declare-fun e!125304 () Bool)

(declare-fun e!125303 () Bool)

(assert (=> b!190383 (= e!125304 e!125303)))

(declare-fun res!90009 () Bool)

(assert (=> b!190383 (=> (not res!90009) (not e!125303))))

(assert (=> b!190383 (= res!90009 (not e!125302))))

(declare-fun res!90010 () Bool)

(assert (=> b!190383 (=> (not res!90010) (not e!125302))))

(assert (=> b!190383 (= res!90010 (validKeyInArray!0 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!55761 () Bool)

(declare-fun res!90008 () Bool)

(assert (=> d!55761 (=> res!90008 e!125304)))

(assert (=> d!55761 (= res!90008 (bvsge #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(assert (=> d!55761 (= (arrayNoDuplicates!0 (_keys!5850 thiss!1248) #b00000000000000000000000000000000 Nil!2434) e!125304)))

(declare-fun bm!19217 () Bool)

(declare-fun c!34218 () Bool)

(assert (=> bm!19217 (= call!19220 (arrayNoDuplicates!0 (_keys!5850 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!34218 (Cons!2433 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000) Nil!2434) Nil!2434)))))

(declare-fun b!190386 () Bool)

(assert (=> b!190386 (= e!125303 e!125301)))

(assert (=> b!190386 (= c!34218 (validKeyInArray!0 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!55761 (not res!90008)) b!190383))

(assert (= (and b!190383 res!90010) b!190382))

(assert (= (and b!190383 res!90009) b!190386))

(assert (= (and b!190386 c!34218) b!190385))

(assert (= (and b!190386 (not c!34218)) b!190384))

(assert (= (or b!190385 b!190384) bm!19217))

(assert (=> b!190382 m!216497))

(assert (=> b!190382 m!216497))

(declare-fun m!216773 () Bool)

(assert (=> b!190382 m!216773))

(assert (=> b!190383 m!216497))

(assert (=> b!190383 m!216497))

(assert (=> b!190383 m!216503))

(assert (=> bm!19217 m!216497))

(declare-fun m!216775 () Bool)

(assert (=> bm!19217 m!216775))

(assert (=> b!190386 m!216497))

(assert (=> b!190386 m!216497))

(assert (=> b!190386 m!216503))

(assert (=> b!190246 d!55761))

(declare-fun d!55763 () Bool)

(assert (=> d!55763 (= (inRange!0 (index!4899 lt!94241) (mask!9079 thiss!1248)) (and (bvsge (index!4899 lt!94241) #b00000000000000000000000000000000) (bvslt (index!4899 lt!94241) (bvadd (mask!9079 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!190114 d!55763))

(declare-fun d!55765 () Bool)

(assert (=> d!55765 (= (validKeyInArray!0 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!190213 d!55765))

(declare-fun d!55767 () Bool)

(assert (=> d!55767 (= (apply!179 lt!94296 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2200 (getValueByKey!235 (toList!1238 lt!94296) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7622 () Bool)

(assert (= bs!7622 d!55767))

(declare-fun m!216777 () Bool)

(assert (=> bs!7622 m!216777))

(assert (=> bs!7622 m!216777))

(declare-fun m!216779 () Bool)

(assert (=> bs!7622 m!216779))

(assert (=> b!190190 d!55767))

(declare-fun d!55769 () Bool)

(declare-fun e!125306 () Bool)

(assert (=> d!55769 e!125306))

(declare-fun res!90011 () Bool)

(assert (=> d!55769 (=> res!90011 e!125306)))

(declare-fun lt!94435 () Bool)

(assert (=> d!55769 (= res!90011 (not lt!94435))))

(declare-fun lt!94434 () Bool)

(assert (=> d!55769 (= lt!94435 lt!94434)))

(declare-fun lt!94437 () Unit!5740)

(declare-fun e!125305 () Unit!5740)

(assert (=> d!55769 (= lt!94437 e!125305)))

(declare-fun c!34219 () Bool)

(assert (=> d!55769 (= c!34219 lt!94434)))

(assert (=> d!55769 (= lt!94434 (containsKey!239 (toList!1238 lt!94321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!55769 (= (contains!1341 lt!94321 #b0000000000000000000000000000000000000000000000000000000000000000) lt!94435)))

(declare-fun b!190387 () Bool)

(declare-fun lt!94436 () Unit!5740)

(assert (=> b!190387 (= e!125305 lt!94436)))

(assert (=> b!190387 (= lt!94436 (lemmaContainsKeyImpliesGetValueByKeyDefined!188 (toList!1238 lt!94321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!190387 (isDefined!189 (getValueByKey!235 (toList!1238 lt!94321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!190388 () Bool)

(declare-fun Unit!5751 () Unit!5740)

(assert (=> b!190388 (= e!125305 Unit!5751)))

(declare-fun b!190389 () Bool)

(assert (=> b!190389 (= e!125306 (isDefined!189 (getValueByKey!235 (toList!1238 lt!94321) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55769 c!34219) b!190387))

(assert (= (and d!55769 (not c!34219)) b!190388))

(assert (= (and d!55769 (not res!90011)) b!190389))

(declare-fun m!216781 () Bool)

(assert (=> d!55769 m!216781))

(declare-fun m!216783 () Bool)

(assert (=> b!190387 m!216783))

(declare-fun m!216785 () Bool)

(assert (=> b!190387 m!216785))

(assert (=> b!190387 m!216785))

(declare-fun m!216787 () Bool)

(assert (=> b!190387 m!216787))

(assert (=> b!190389 m!216785))

(assert (=> b!190389 m!216785))

(assert (=> b!190389 m!216787))

(assert (=> bm!19197 d!55769))

(declare-fun d!55771 () Bool)

(assert (=> d!55771 (isDefined!189 (getValueByKey!235 (toList!1238 lt!94211) key!828))))

(declare-fun lt!94440 () Unit!5740)

(declare-fun choose!1033 (List!2435 (_ BitVec 64)) Unit!5740)

(assert (=> d!55771 (= lt!94440 (choose!1033 (toList!1238 lt!94211) key!828))))

(declare-fun e!125309 () Bool)

(assert (=> d!55771 e!125309))

(declare-fun res!90014 () Bool)

(assert (=> d!55771 (=> (not res!90014) (not e!125309))))

(declare-fun isStrictlySorted!348 (List!2435) Bool)

(assert (=> d!55771 (= res!90014 (isStrictlySorted!348 (toList!1238 lt!94211)))))

(assert (=> d!55771 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!188 (toList!1238 lt!94211) key!828) lt!94440)))

(declare-fun b!190392 () Bool)

(assert (=> b!190392 (= e!125309 (containsKey!239 (toList!1238 lt!94211) key!828))))

(assert (= (and d!55771 res!90014) b!190392))

(assert (=> d!55771 m!216611))

(assert (=> d!55771 m!216611))

(assert (=> d!55771 m!216613))

(declare-fun m!216789 () Bool)

(assert (=> d!55771 m!216789))

(declare-fun m!216791 () Bool)

(assert (=> d!55771 m!216791))

(assert (=> b!190392 m!216607))

(assert (=> b!190235 d!55771))

(assert (=> b!190235 d!55721))

(assert (=> b!190235 d!55723))

(declare-fun b!190401 () Bool)

(declare-fun res!90024 () Bool)

(declare-fun e!125312 () Bool)

(assert (=> b!190401 (=> (not res!90024) (not e!125312))))

(assert (=> b!190401 (= res!90024 (and (= (size!4141 (_values!3864 thiss!1248)) (bvadd (mask!9079 thiss!1248) #b00000000000000000000000000000001)) (= (size!4140 (_keys!5850 thiss!1248)) (size!4141 (_values!3864 thiss!1248))) (bvsge (_size!1378 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1378 thiss!1248) (bvadd (mask!9079 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!190403 () Bool)

(declare-fun res!90025 () Bool)

(assert (=> b!190403 (=> (not res!90025) (not e!125312))))

(declare-fun size!4144 (LongMapFixedSize!2658) (_ BitVec 32))

(assert (=> b!190403 (= res!90025 (= (size!4144 thiss!1248) (bvadd (_size!1378 thiss!1248) (bvsdiv (bvadd (extraKeys!3618 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!55773 () Bool)

(declare-fun res!90023 () Bool)

(assert (=> d!55773 (=> (not res!90023) (not e!125312))))

(assert (=> d!55773 (= res!90023 (validMask!0 (mask!9079 thiss!1248)))))

(assert (=> d!55773 (= (simpleValid!194 thiss!1248) e!125312)))

(declare-fun b!190402 () Bool)

(declare-fun res!90026 () Bool)

(assert (=> b!190402 (=> (not res!90026) (not e!125312))))

(assert (=> b!190402 (= res!90026 (bvsge (size!4144 thiss!1248) (_size!1378 thiss!1248)))))

(declare-fun b!190404 () Bool)

(assert (=> b!190404 (= e!125312 (and (bvsge (extraKeys!3618 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3618 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1378 thiss!1248) #b00000000000000000000000000000000)))))

(assert (= (and d!55773 res!90023) b!190401))

(assert (= (and b!190401 res!90024) b!190402))

(assert (= (and b!190402 res!90026) b!190403))

(assert (= (and b!190403 res!90025) b!190404))

(declare-fun m!216793 () Bool)

(assert (=> b!190403 m!216793))

(assert (=> d!55773 m!216415))

(assert (=> b!190402 m!216793))

(assert (=> d!55711 d!55773))

(assert (=> b!190176 d!55765))

(declare-fun d!55775 () Bool)

(declare-fun e!125313 () Bool)

(assert (=> d!55775 e!125313))

(declare-fun res!90028 () Bool)

(assert (=> d!55775 (=> (not res!90028) (not e!125313))))

(declare-fun lt!94444 () ListLongMap!2445)

(assert (=> d!55775 (= res!90028 (contains!1341 lt!94444 (_1!1767 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))))))

(declare-fun lt!94441 () List!2435)

(assert (=> d!55775 (= lt!94444 (ListLongMap!2446 lt!94441))))

(declare-fun lt!94443 () Unit!5740)

(declare-fun lt!94442 () Unit!5740)

(assert (=> d!55775 (= lt!94443 lt!94442)))

(assert (=> d!55775 (= (getValueByKey!235 lt!94441 (_1!1767 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))))))

(assert (=> d!55775 (= lt!94442 (lemmaContainsTupThenGetReturnValue!124 lt!94441 (_1!1767 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))))))

(assert (=> d!55775 (= lt!94441 (insertStrictlySorted!126 (toList!1238 call!19199) (_1!1767 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))))))

(assert (=> d!55775 (= (+!296 call!19199 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))) lt!94444)))

(declare-fun b!190405 () Bool)

(declare-fun res!90027 () Bool)

(assert (=> b!190405 (=> (not res!90027) (not e!125313))))

(assert (=> b!190405 (= res!90027 (= (getValueByKey!235 (toList!1238 lt!94444) (_1!1767 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))))))))

(declare-fun b!190406 () Bool)

(assert (=> b!190406 (= e!125313 (contains!1343 (toList!1238 lt!94444) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))))))

(assert (= (and d!55775 res!90028) b!190405))

(assert (= (and b!190405 res!90027) b!190406))

(declare-fun m!216795 () Bool)

(assert (=> d!55775 m!216795))

(declare-fun m!216797 () Bool)

(assert (=> d!55775 m!216797))

(declare-fun m!216799 () Bool)

(assert (=> d!55775 m!216799))

(declare-fun m!216801 () Bool)

(assert (=> d!55775 m!216801))

(declare-fun m!216803 () Bool)

(assert (=> b!190405 m!216803))

(declare-fun m!216805 () Bool)

(assert (=> b!190406 m!216805))

(assert (=> b!190211 d!55775))

(assert (=> d!55695 d!55697))

(declare-fun e!125321 () SeekEntryResult!682)

(declare-fun b!190419 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!190419 (= e!125321 (seekKeyOrZeroReturnVacant!0 (bvadd (x!20484 lt!94249) #b00000000000000000000000000000001) (nextIndex!0 (index!4900 lt!94249) (x!20484 lt!94249) (mask!9079 thiss!1248)) (index!4900 lt!94249) key!828 (_keys!5850 thiss!1248) (mask!9079 thiss!1248)))))

(declare-fun b!190421 () Bool)

(declare-fun e!125322 () SeekEntryResult!682)

(declare-fun e!125320 () SeekEntryResult!682)

(assert (=> b!190421 (= e!125322 e!125320)))

(declare-fun c!34228 () Bool)

(declare-fun lt!94450 () (_ BitVec 64))

(assert (=> b!190421 (= c!34228 (= lt!94450 key!828))))

(declare-fun b!190422 () Bool)

(assert (=> b!190422 (= e!125320 (Found!682 (index!4900 lt!94249)))))

(declare-fun b!190423 () Bool)

(declare-fun c!34226 () Bool)

(assert (=> b!190423 (= c!34226 (= lt!94450 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!190423 (= e!125320 e!125321)))

(declare-fun b!190424 () Bool)

(assert (=> b!190424 (= e!125321 (MissingVacant!682 (index!4900 lt!94249)))))

(declare-fun b!190420 () Bool)

(assert (=> b!190420 (= e!125322 Undefined!682)))

(declare-fun d!55777 () Bool)

(declare-fun lt!94449 () SeekEntryResult!682)

(assert (=> d!55777 (and (or ((_ is Undefined!682) lt!94449) (not ((_ is Found!682) lt!94449)) (and (bvsge (index!4899 lt!94449) #b00000000000000000000000000000000) (bvslt (index!4899 lt!94449) (size!4140 (_keys!5850 thiss!1248))))) (or ((_ is Undefined!682) lt!94449) ((_ is Found!682) lt!94449) (not ((_ is MissingVacant!682) lt!94449)) (not (= (index!4901 lt!94449) (index!4900 lt!94249))) (and (bvsge (index!4901 lt!94449) #b00000000000000000000000000000000) (bvslt (index!4901 lt!94449) (size!4140 (_keys!5850 thiss!1248))))) (or ((_ is Undefined!682) lt!94449) (ite ((_ is Found!682) lt!94449) (= (select (arr!3820 (_keys!5850 thiss!1248)) (index!4899 lt!94449)) key!828) (and ((_ is MissingVacant!682) lt!94449) (= (index!4901 lt!94449) (index!4900 lt!94249)) (= (select (arr!3820 (_keys!5850 thiss!1248)) (index!4901 lt!94449)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!55777 (= lt!94449 e!125322)))

(declare-fun c!34227 () Bool)

(assert (=> d!55777 (= c!34227 (bvsge (x!20484 lt!94249) #b01111111111111111111111111111110))))

(assert (=> d!55777 (= lt!94450 (select (arr!3820 (_keys!5850 thiss!1248)) (index!4900 lt!94249)))))

(assert (=> d!55777 (validMask!0 (mask!9079 thiss!1248))))

(assert (=> d!55777 (= (seekKeyOrZeroReturnVacant!0 (x!20484 lt!94249) (index!4900 lt!94249) (index!4900 lt!94249) key!828 (_keys!5850 thiss!1248) (mask!9079 thiss!1248)) lt!94449)))

(assert (= (and d!55777 c!34227) b!190420))

(assert (= (and d!55777 (not c!34227)) b!190421))

(assert (= (and b!190421 c!34228) b!190422))

(assert (= (and b!190421 (not c!34228)) b!190423))

(assert (= (and b!190423 c!34226) b!190424))

(assert (= (and b!190423 (not c!34226)) b!190419))

(declare-fun m!216807 () Bool)

(assert (=> b!190419 m!216807))

(assert (=> b!190419 m!216807))

(declare-fun m!216809 () Bool)

(assert (=> b!190419 m!216809))

(declare-fun m!216811 () Bool)

(assert (=> d!55777 m!216811))

(declare-fun m!216813 () Bool)

(assert (=> d!55777 m!216813))

(assert (=> d!55777 m!216467))

(assert (=> d!55777 m!216415))

(assert (=> b!190128 d!55777))

(declare-fun lt!94453 () Bool)

(declare-fun d!55779 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!150 (List!2435) (InoxSet tuple2!3514))

(assert (=> d!55779 (= lt!94453 (select (content!150 (toList!1238 lt!94353)) (tuple2!3515 key!828 v!309)))))

(declare-fun e!125328 () Bool)

(assert (=> d!55779 (= lt!94453 e!125328)))

(declare-fun res!90033 () Bool)

(assert (=> d!55779 (=> (not res!90033) (not e!125328))))

(assert (=> d!55779 (= res!90033 ((_ is Cons!2431) (toList!1238 lt!94353)))))

(assert (=> d!55779 (= (contains!1343 (toList!1238 lt!94353) (tuple2!3515 key!828 v!309)) lt!94453)))

(declare-fun b!190429 () Bool)

(declare-fun e!125327 () Bool)

(assert (=> b!190429 (= e!125328 e!125327)))

(declare-fun res!90034 () Bool)

(assert (=> b!190429 (=> res!90034 e!125327)))

(assert (=> b!190429 (= res!90034 (= (h!3068 (toList!1238 lt!94353)) (tuple2!3515 key!828 v!309)))))

(declare-fun b!190430 () Bool)

(assert (=> b!190430 (= e!125327 (contains!1343 (t!7351 (toList!1238 lt!94353)) (tuple2!3515 key!828 v!309)))))

(assert (= (and d!55779 res!90033) b!190429))

(assert (= (and b!190429 (not res!90034)) b!190430))

(declare-fun m!216815 () Bool)

(assert (=> d!55779 m!216815))

(declare-fun m!216817 () Bool)

(assert (=> d!55779 m!216817))

(declare-fun m!216819 () Bool)

(assert (=> b!190430 m!216819))

(assert (=> b!190228 d!55779))

(declare-fun d!55781 () Bool)

(declare-fun res!90039 () Bool)

(declare-fun e!125333 () Bool)

(assert (=> d!55781 (=> res!90039 e!125333)))

(assert (=> d!55781 (= res!90039 (= (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000) key!828))))

(assert (=> d!55781 (= (arrayContainsKey!0 (_keys!5850 thiss!1248) key!828 #b00000000000000000000000000000000) e!125333)))

(declare-fun b!190435 () Bool)

(declare-fun e!125334 () Bool)

(assert (=> b!190435 (= e!125333 e!125334)))

(declare-fun res!90040 () Bool)

(assert (=> b!190435 (=> (not res!90040) (not e!125334))))

(assert (=> b!190435 (= res!90040 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4140 (_keys!5850 thiss!1248))))))

(declare-fun b!190436 () Bool)

(assert (=> b!190436 (= e!125334 (arrayContainsKey!0 (_keys!5850 thiss!1248) key!828 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!55781 (not res!90039)) b!190435))

(assert (= (and b!190435 res!90040) b!190436))

(assert (=> d!55781 m!216497))

(declare-fun m!216821 () Bool)

(assert (=> b!190436 m!216821))

(assert (=> bm!19171 d!55781))

(assert (=> b!190187 d!55765))

(declare-fun d!55783 () Bool)

(declare-fun e!125336 () Bool)

(assert (=> d!55783 e!125336))

(declare-fun res!90041 () Bool)

(assert (=> d!55783 (=> res!90041 e!125336)))

(declare-fun lt!94455 () Bool)

(assert (=> d!55783 (= res!90041 (not lt!94455))))

(declare-fun lt!94454 () Bool)

(assert (=> d!55783 (= lt!94455 lt!94454)))

(declare-fun lt!94457 () Unit!5740)

(declare-fun e!125335 () Unit!5740)

(assert (=> d!55783 (= lt!94457 e!125335)))

(declare-fun c!34229 () Bool)

(assert (=> d!55783 (= c!34229 lt!94454)))

(assert (=> d!55783 (= lt!94454 (containsKey!239 (toList!1238 lt!94296) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!55783 (= (contains!1341 lt!94296 #b0000000000000000000000000000000000000000000000000000000000000000) lt!94455)))

(declare-fun b!190437 () Bool)

(declare-fun lt!94456 () Unit!5740)

(assert (=> b!190437 (= e!125335 lt!94456)))

(assert (=> b!190437 (= lt!94456 (lemmaContainsKeyImpliesGetValueByKeyDefined!188 (toList!1238 lt!94296) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!190437 (isDefined!189 (getValueByKey!235 (toList!1238 lt!94296) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!190438 () Bool)

(declare-fun Unit!5752 () Unit!5740)

(assert (=> b!190438 (= e!125335 Unit!5752)))

(declare-fun b!190439 () Bool)

(assert (=> b!190439 (= e!125336 (isDefined!189 (getValueByKey!235 (toList!1238 lt!94296) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55783 c!34229) b!190437))

(assert (= (and d!55783 (not c!34229)) b!190438))

(assert (= (and d!55783 (not res!90041)) b!190439))

(declare-fun m!216823 () Bool)

(assert (=> d!55783 m!216823))

(declare-fun m!216825 () Bool)

(assert (=> b!190437 m!216825))

(assert (=> b!190437 m!216627))

(assert (=> b!190437 m!216627))

(declare-fun m!216827 () Bool)

(assert (=> b!190437 m!216827))

(assert (=> b!190439 m!216627))

(assert (=> b!190439 m!216627))

(assert (=> b!190439 m!216827))

(assert (=> bm!19190 d!55783))

(declare-fun b!190440 () Bool)

(declare-fun e!125343 () ListLongMap!2445)

(declare-fun call!19221 () ListLongMap!2445)

(assert (=> b!190440 (= e!125343 call!19221)))

(declare-fun b!190441 () Bool)

(declare-fun res!90044 () Bool)

(declare-fun e!125337 () Bool)

(assert (=> b!190441 (=> (not res!90044) (not e!125337))))

(declare-fun lt!94461 () ListLongMap!2445)

(assert (=> b!190441 (= res!90044 (not (contains!1341 lt!94461 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!190442 () Bool)

(declare-fun e!125342 () ListLongMap!2445)

(assert (=> b!190442 (= e!125342 (ListLongMap!2446 Nil!2432))))

(declare-fun b!190443 () Bool)

(declare-fun e!125341 () Bool)

(assert (=> b!190443 (= e!125341 (= lt!94461 (getCurrentListMapNoExtraKeys!209 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3881 thiss!1248))))))

(declare-fun b!190444 () Bool)

(declare-fun e!125338 () Bool)

(assert (=> b!190444 (= e!125338 e!125341)))

(declare-fun c!34231 () Bool)

(assert (=> b!190444 (= c!34231 (bvslt #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(declare-fun b!190445 () Bool)

(assert (=> b!190445 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(assert (=> b!190445 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4141 (_values!3864 thiss!1248))))))

(declare-fun e!125340 () Bool)

(assert (=> b!190445 (= e!125340 (= (apply!179 lt!94461 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)) (get!2199 (select (arr!3821 (_values!3864 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!517 (defaultEntry!3881 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!190447 () Bool)

(assert (=> b!190447 (= e!125341 (isEmpty!485 lt!94461))))

(declare-fun b!190448 () Bool)

(assert (=> b!190448 (= e!125337 e!125338)))

(declare-fun c!34233 () Bool)

(declare-fun e!125339 () Bool)

(assert (=> b!190448 (= c!34233 e!125339)))

(declare-fun res!90045 () Bool)

(assert (=> b!190448 (=> (not res!90045) (not e!125339))))

(assert (=> b!190448 (= res!90045 (bvslt #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(declare-fun bm!19218 () Bool)

(assert (=> bm!19218 (= call!19221 (getCurrentListMapNoExtraKeys!209 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3881 thiss!1248)))))

(declare-fun b!190449 () Bool)

(assert (=> b!190449 (= e!125342 e!125343)))

(declare-fun c!34232 () Bool)

(assert (=> b!190449 (= c!34232 (validKeyInArray!0 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!190450 () Bool)

(declare-fun lt!94458 () Unit!5740)

(declare-fun lt!94460 () Unit!5740)

(assert (=> b!190450 (= lt!94458 lt!94460)))

(declare-fun lt!94463 () (_ BitVec 64))

(declare-fun lt!94459 () ListLongMap!2445)

(declare-fun lt!94462 () V!5563)

(declare-fun lt!94464 () (_ BitVec 64))

(assert (=> b!190450 (not (contains!1341 (+!296 lt!94459 (tuple2!3515 lt!94464 lt!94462)) lt!94463))))

(assert (=> b!190450 (= lt!94460 (addStillNotContains!95 lt!94459 lt!94464 lt!94462 lt!94463))))

(assert (=> b!190450 (= lt!94463 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!190450 (= lt!94462 (get!2199 (select (arr!3821 (_values!3864 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!517 (defaultEntry!3881 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!190450 (= lt!94464 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!190450 (= lt!94459 call!19221)))

(assert (=> b!190450 (= e!125343 (+!296 call!19221 (tuple2!3515 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000) (get!2199 (select (arr!3821 (_values!3864 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!517 (defaultEntry!3881 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!190451 () Bool)

(assert (=> b!190451 (= e!125338 e!125340)))

(assert (=> b!190451 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(declare-fun res!90042 () Bool)

(assert (=> b!190451 (= res!90042 (contains!1341 lt!94461 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!190451 (=> (not res!90042) (not e!125340))))

(declare-fun b!190446 () Bool)

(assert (=> b!190446 (= e!125339 (validKeyInArray!0 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!190446 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!55785 () Bool)

(assert (=> d!55785 e!125337))

(declare-fun res!90043 () Bool)

(assert (=> d!55785 (=> (not res!90043) (not e!125337))))

(assert (=> d!55785 (= res!90043 (not (contains!1341 lt!94461 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!55785 (= lt!94461 e!125342)))

(declare-fun c!34230 () Bool)

(assert (=> d!55785 (= c!34230 (bvsge #b00000000000000000000000000000000 (size!4140 (_keys!5850 thiss!1248))))))

(assert (=> d!55785 (validMask!0 (mask!9079 thiss!1248))))

(assert (=> d!55785 (= (getCurrentListMapNoExtraKeys!209 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)) lt!94461)))

(assert (= (and d!55785 c!34230) b!190442))

(assert (= (and d!55785 (not c!34230)) b!190449))

(assert (= (and b!190449 c!34232) b!190450))

(assert (= (and b!190449 (not c!34232)) b!190440))

(assert (= (or b!190450 b!190440) bm!19218))

(assert (= (and d!55785 res!90043) b!190441))

(assert (= (and b!190441 res!90044) b!190448))

(assert (= (and b!190448 res!90045) b!190446))

(assert (= (and b!190448 c!34233) b!190451))

(assert (= (and b!190448 (not c!34233)) b!190444))

(assert (= (and b!190451 res!90042) b!190445))

(assert (= (and b!190444 c!34231) b!190443))

(assert (= (and b!190444 (not c!34231)) b!190447))

(declare-fun b_lambda!7385 () Bool)

(assert (=> (not b_lambda!7385) (not b!190445)))

(assert (=> b!190445 t!7354))

(declare-fun b_and!11341 () Bool)

(assert (= b_and!11339 (and (=> t!7354 result!4893) b_and!11341)))

(declare-fun b_lambda!7387 () Bool)

(assert (=> (not b_lambda!7387) (not b!190450)))

(assert (=> b!190450 t!7354))

(declare-fun b_and!11343 () Bool)

(assert (= b_and!11341 (and (=> t!7354 result!4893) b_and!11343)))

(declare-fun m!216829 () Bool)

(assert (=> d!55785 m!216829))

(assert (=> d!55785 m!216415))

(declare-fun m!216831 () Bool)

(assert (=> b!190443 m!216831))

(declare-fun m!216833 () Bool)

(assert (=> b!190450 m!216833))

(assert (=> b!190450 m!216491))

(assert (=> b!190450 m!216497))

(declare-fun m!216835 () Bool)

(assert (=> b!190450 m!216835))

(assert (=> b!190450 m!216553))

(assert (=> b!190450 m!216491))

(assert (=> b!190450 m!216555))

(assert (=> b!190450 m!216833))

(declare-fun m!216837 () Bool)

(assert (=> b!190450 m!216837))

(declare-fun m!216839 () Bool)

(assert (=> b!190450 m!216839))

(assert (=> b!190450 m!216553))

(assert (=> b!190449 m!216497))

(assert (=> b!190449 m!216497))

(assert (=> b!190449 m!216503))

(declare-fun m!216841 () Bool)

(assert (=> b!190447 m!216841))

(assert (=> b!190451 m!216497))

(assert (=> b!190451 m!216497))

(declare-fun m!216843 () Bool)

(assert (=> b!190451 m!216843))

(declare-fun m!216845 () Bool)

(assert (=> b!190441 m!216845))

(assert (=> bm!19218 m!216831))

(assert (=> b!190446 m!216497))

(assert (=> b!190446 m!216497))

(assert (=> b!190446 m!216503))

(assert (=> b!190445 m!216491))

(assert (=> b!190445 m!216497))

(assert (=> b!190445 m!216497))

(declare-fun m!216847 () Bool)

(assert (=> b!190445 m!216847))

(assert (=> b!190445 m!216553))

(assert (=> b!190445 m!216491))

(assert (=> b!190445 m!216555))

(assert (=> b!190445 m!216553))

(assert (=> bm!19195 d!55785))

(declare-fun d!55787 () Bool)

(declare-fun e!125344 () Bool)

(assert (=> d!55787 e!125344))

(declare-fun res!90047 () Bool)

(assert (=> d!55787 (=> (not res!90047) (not e!125344))))

(declare-fun lt!94468 () ListLongMap!2445)

(assert (=> d!55787 (= res!90047 (contains!1341 lt!94468 (_1!1767 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))))))

(declare-fun lt!94465 () List!2435)

(assert (=> d!55787 (= lt!94468 (ListLongMap!2446 lt!94465))))

(declare-fun lt!94467 () Unit!5740)

(declare-fun lt!94466 () Unit!5740)

(assert (=> d!55787 (= lt!94467 lt!94466)))

(assert (=> d!55787 (= (getValueByKey!235 lt!94465 (_1!1767 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))))))

(assert (=> d!55787 (= lt!94466 (lemmaContainsTupThenGetReturnValue!124 lt!94465 (_1!1767 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))))))

(assert (=> d!55787 (= lt!94465 (insertStrictlySorted!126 (toList!1238 call!19192) (_1!1767 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))))))

(assert (=> d!55787 (= (+!296 call!19192 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))) lt!94468)))

(declare-fun b!190452 () Bool)

(declare-fun res!90046 () Bool)

(assert (=> b!190452 (=> (not res!90046) (not e!125344))))

(assert (=> b!190452 (= res!90046 (= (getValueByKey!235 (toList!1238 lt!94468) (_1!1767 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))))))))

(declare-fun b!190453 () Bool)

(assert (=> b!190453 (= e!125344 (contains!1343 (toList!1238 lt!94468) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))))))

(assert (= (and d!55787 res!90047) b!190452))

(assert (= (and b!190452 res!90046) b!190453))

(declare-fun m!216849 () Bool)

(assert (=> d!55787 m!216849))

(declare-fun m!216851 () Bool)

(assert (=> d!55787 m!216851))

(declare-fun m!216853 () Bool)

(assert (=> d!55787 m!216853))

(declare-fun m!216855 () Bool)

(assert (=> d!55787 m!216855))

(declare-fun m!216857 () Bool)

(assert (=> b!190452 m!216857))

(declare-fun m!216859 () Bool)

(assert (=> b!190453 m!216859))

(assert (=> b!190185 d!55787))

(declare-fun b!190472 () Bool)

(declare-fun e!125355 () Bool)

(declare-fun e!125358 () Bool)

(assert (=> b!190472 (= e!125355 e!125358)))

(declare-fun res!90055 () Bool)

(declare-fun lt!94474 () SeekEntryResult!682)

(assert (=> b!190472 (= res!90055 (and ((_ is Intermediate!682) lt!94474) (not (undefined!1494 lt!94474)) (bvslt (x!20484 lt!94474) #b01111111111111111111111111111110) (bvsge (x!20484 lt!94474) #b00000000000000000000000000000000) (bvsge (x!20484 lt!94474) #b00000000000000000000000000000000)))))

(assert (=> b!190472 (=> (not res!90055) (not e!125358))))

(declare-fun d!55789 () Bool)

(assert (=> d!55789 e!125355))

(declare-fun c!34241 () Bool)

(assert (=> d!55789 (= c!34241 (and ((_ is Intermediate!682) lt!94474) (undefined!1494 lt!94474)))))

(declare-fun e!125356 () SeekEntryResult!682)

(assert (=> d!55789 (= lt!94474 e!125356)))

(declare-fun c!34242 () Bool)

(assert (=> d!55789 (= c!34242 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!94473 () (_ BitVec 64))

(assert (=> d!55789 (= lt!94473 (select (arr!3820 (_keys!5850 thiss!1248)) (toIndex!0 key!828 (mask!9079 thiss!1248))))))

(assert (=> d!55789 (validMask!0 (mask!9079 thiss!1248))))

(assert (=> d!55789 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9079 thiss!1248)) key!828 (_keys!5850 thiss!1248) (mask!9079 thiss!1248)) lt!94474)))

(declare-fun b!190473 () Bool)

(declare-fun e!125359 () SeekEntryResult!682)

(assert (=> b!190473 (= e!125359 (Intermediate!682 false (toIndex!0 key!828 (mask!9079 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!190474 () Bool)

(assert (=> b!190474 (= e!125359 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!9079 thiss!1248)) #b00000000000000000000000000000000 (mask!9079 thiss!1248)) key!828 (_keys!5850 thiss!1248) (mask!9079 thiss!1248)))))

(declare-fun b!190475 () Bool)

(assert (=> b!190475 (and (bvsge (index!4900 lt!94474) #b00000000000000000000000000000000) (bvslt (index!4900 lt!94474) (size!4140 (_keys!5850 thiss!1248))))))

(declare-fun e!125357 () Bool)

(assert (=> b!190475 (= e!125357 (= (select (arr!3820 (_keys!5850 thiss!1248)) (index!4900 lt!94474)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!190476 () Bool)

(assert (=> b!190476 (= e!125356 (Intermediate!682 true (toIndex!0 key!828 (mask!9079 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!190477 () Bool)

(assert (=> b!190477 (and (bvsge (index!4900 lt!94474) #b00000000000000000000000000000000) (bvslt (index!4900 lt!94474) (size!4140 (_keys!5850 thiss!1248))))))

(declare-fun res!90056 () Bool)

(assert (=> b!190477 (= res!90056 (= (select (arr!3820 (_keys!5850 thiss!1248)) (index!4900 lt!94474)) key!828))))

(assert (=> b!190477 (=> res!90056 e!125357)))

(assert (=> b!190477 (= e!125358 e!125357)))

(declare-fun b!190478 () Bool)

(assert (=> b!190478 (and (bvsge (index!4900 lt!94474) #b00000000000000000000000000000000) (bvslt (index!4900 lt!94474) (size!4140 (_keys!5850 thiss!1248))))))

(declare-fun res!90054 () Bool)

(assert (=> b!190478 (= res!90054 (= (select (arr!3820 (_keys!5850 thiss!1248)) (index!4900 lt!94474)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!190478 (=> res!90054 e!125357)))

(declare-fun b!190479 () Bool)

(assert (=> b!190479 (= e!125355 (bvsge (x!20484 lt!94474) #b01111111111111111111111111111110))))

(declare-fun b!190480 () Bool)

(assert (=> b!190480 (= e!125356 e!125359)))

(declare-fun c!34240 () Bool)

(assert (=> b!190480 (= c!34240 (or (= lt!94473 key!828) (= (bvadd lt!94473 lt!94473) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55789 c!34242) b!190476))

(assert (= (and d!55789 (not c!34242)) b!190480))

(assert (= (and b!190480 c!34240) b!190473))

(assert (= (and b!190480 (not c!34240)) b!190474))

(assert (= (and d!55789 c!34241) b!190479))

(assert (= (and d!55789 (not c!34241)) b!190472))

(assert (= (and b!190472 res!90055) b!190477))

(assert (= (and b!190477 (not res!90056)) b!190478))

(assert (= (and b!190478 (not res!90054)) b!190475))

(assert (=> b!190474 m!216475))

(declare-fun m!216861 () Bool)

(assert (=> b!190474 m!216861))

(assert (=> b!190474 m!216861))

(declare-fun m!216863 () Bool)

(assert (=> b!190474 m!216863))

(declare-fun m!216865 () Bool)

(assert (=> b!190475 m!216865))

(assert (=> b!190478 m!216865))

(assert (=> b!190477 m!216865))

(assert (=> d!55789 m!216475))

(declare-fun m!216867 () Bool)

(assert (=> d!55789 m!216867))

(assert (=> d!55789 m!216415))

(assert (=> d!55693 d!55789))

(declare-fun d!55791 () Bool)

(declare-fun lt!94480 () (_ BitVec 32))

(declare-fun lt!94479 () (_ BitVec 32))

(assert (=> d!55791 (= lt!94480 (bvmul (bvxor lt!94479 (bvlshr lt!94479 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!55791 (= lt!94479 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!55791 (and (bvsge (mask!9079 thiss!1248) #b00000000000000000000000000000000) (let ((res!90057 (let ((h!3071 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!20503 (bvmul (bvxor h!3071 (bvlshr h!3071 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!20503 (bvlshr x!20503 #b00000000000000000000000000001101)) (mask!9079 thiss!1248)))))) (and (bvslt res!90057 (bvadd (mask!9079 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!90057 #b00000000000000000000000000000000))))))

(assert (=> d!55791 (= (toIndex!0 key!828 (mask!9079 thiss!1248)) (bvand (bvxor lt!94480 (bvlshr lt!94480 #b00000000000000000000000000001101)) (mask!9079 thiss!1248)))))

(assert (=> d!55693 d!55791))

(assert (=> d!55693 d!55697))

(declare-fun d!55793 () Bool)

(assert (=> d!55793 (= (inRange!0 (ite c!34144 (index!4898 lt!94234) (index!4901 lt!94234)) (mask!9079 thiss!1248)) (and (bvsge (ite c!34144 (index!4898 lt!94234) (index!4901 lt!94234)) #b00000000000000000000000000000000) (bvslt (ite c!34144 (index!4898 lt!94234) (index!4901 lt!94234)) (bvadd (mask!9079 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> bm!19170 d!55793))

(declare-fun d!55795 () Bool)

(declare-fun c!34243 () Bool)

(assert (=> d!55795 (= c!34243 (and ((_ is Cons!2431) (toList!1238 lt!94353)) (= (_1!1767 (h!3068 (toList!1238 lt!94353))) (_1!1767 (tuple2!3515 key!828 v!309)))))))

(declare-fun e!125360 () Option!241)

(assert (=> d!55795 (= (getValueByKey!235 (toList!1238 lt!94353) (_1!1767 (tuple2!3515 key!828 v!309))) e!125360)))

(declare-fun b!190482 () Bool)

(declare-fun e!125361 () Option!241)

(assert (=> b!190482 (= e!125360 e!125361)))

(declare-fun c!34244 () Bool)

(assert (=> b!190482 (= c!34244 (and ((_ is Cons!2431) (toList!1238 lt!94353)) (not (= (_1!1767 (h!3068 (toList!1238 lt!94353))) (_1!1767 (tuple2!3515 key!828 v!309))))))))

(declare-fun b!190484 () Bool)

(assert (=> b!190484 (= e!125361 None!239)))

(declare-fun b!190483 () Bool)

(assert (=> b!190483 (= e!125361 (getValueByKey!235 (t!7351 (toList!1238 lt!94353)) (_1!1767 (tuple2!3515 key!828 v!309))))))

(declare-fun b!190481 () Bool)

(assert (=> b!190481 (= e!125360 (Some!240 (_2!1767 (h!3068 (toList!1238 lt!94353)))))))

(assert (= (and d!55795 c!34243) b!190481))

(assert (= (and d!55795 (not c!34243)) b!190482))

(assert (= (and b!190482 c!34244) b!190483))

(assert (= (and b!190482 (not c!34244)) b!190484))

(declare-fun m!216869 () Bool)

(assert (=> b!190483 m!216869))

(assert (=> b!190227 d!55795))

(declare-fun d!55797 () Bool)

(declare-fun e!125363 () Bool)

(assert (=> d!55797 e!125363))

(declare-fun res!90058 () Bool)

(assert (=> d!55797 (=> res!90058 e!125363)))

(declare-fun lt!94482 () Bool)

(assert (=> d!55797 (= res!90058 (not lt!94482))))

(declare-fun lt!94481 () Bool)

(assert (=> d!55797 (= lt!94482 lt!94481)))

(declare-fun lt!94484 () Unit!5740)

(declare-fun e!125362 () Unit!5740)

(assert (=> d!55797 (= lt!94484 e!125362)))

(declare-fun c!34245 () Bool)

(assert (=> d!55797 (= c!34245 lt!94481)))

(assert (=> d!55797 (= lt!94481 (containsKey!239 (toList!1238 lt!94321) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!55797 (= (contains!1341 lt!94321 #b1000000000000000000000000000000000000000000000000000000000000000) lt!94482)))

(declare-fun b!190485 () Bool)

(declare-fun lt!94483 () Unit!5740)

(assert (=> b!190485 (= e!125362 lt!94483)))

(assert (=> b!190485 (= lt!94483 (lemmaContainsKeyImpliesGetValueByKeyDefined!188 (toList!1238 lt!94321) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!190485 (isDefined!189 (getValueByKey!235 (toList!1238 lt!94321) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!190486 () Bool)

(declare-fun Unit!5753 () Unit!5740)

(assert (=> b!190486 (= e!125362 Unit!5753)))

(declare-fun b!190487 () Bool)

(assert (=> b!190487 (= e!125363 (isDefined!189 (getValueByKey!235 (toList!1238 lt!94321) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55797 c!34245) b!190485))

(assert (= (and d!55797 (not c!34245)) b!190486))

(assert (= (and d!55797 (not res!90058)) b!190487))

(declare-fun m!216871 () Bool)

(assert (=> d!55797 m!216871))

(declare-fun m!216873 () Bool)

(assert (=> b!190485 m!216873))

(declare-fun m!216875 () Bool)

(assert (=> b!190485 m!216875))

(assert (=> b!190485 m!216875))

(declare-fun m!216877 () Bool)

(assert (=> b!190485 m!216877))

(assert (=> b!190487 m!216875))

(assert (=> b!190487 m!216875))

(assert (=> b!190487 m!216877))

(assert (=> bm!19199 d!55797))

(declare-fun d!55799 () Bool)

(assert (=> d!55799 (= (apply!179 lt!94321 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)) (get!2200 (getValueByKey!235 (toList!1238 lt!94321) (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7623 () Bool)

(assert (= bs!7623 d!55799))

(assert (=> bs!7623 m!216497))

(declare-fun m!216879 () Bool)

(assert (=> bs!7623 m!216879))

(assert (=> bs!7623 m!216879))

(declare-fun m!216881 () Bool)

(assert (=> bs!7623 m!216881))

(assert (=> b!190221 d!55799))

(declare-fun d!55801 () Bool)

(declare-fun c!34248 () Bool)

(assert (=> d!55801 (= c!34248 ((_ is ValueCellFull!1875) (select (arr!3821 (_values!3864 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!125366 () V!5563)

(assert (=> d!55801 (= (get!2199 (select (arr!3821 (_values!3864 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!517 (defaultEntry!3881 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!125366)))

(declare-fun b!190492 () Bool)

(declare-fun get!2201 (ValueCell!1875 V!5563) V!5563)

(assert (=> b!190492 (= e!125366 (get!2201 (select (arr!3821 (_values!3864 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!517 (defaultEntry!3881 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!190493 () Bool)

(declare-fun get!2202 (ValueCell!1875 V!5563) V!5563)

(assert (=> b!190493 (= e!125366 (get!2202 (select (arr!3821 (_values!3864 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!517 (defaultEntry!3881 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55801 c!34248) b!190492))

(assert (= (and d!55801 (not c!34248)) b!190493))

(assert (=> b!190492 m!216553))

(assert (=> b!190492 m!216491))

(declare-fun m!216883 () Bool)

(assert (=> b!190492 m!216883))

(assert (=> b!190493 m!216553))

(assert (=> b!190493 m!216491))

(declare-fun m!216885 () Bool)

(assert (=> b!190493 m!216885))

(assert (=> b!190221 d!55801))

(assert (=> d!55689 d!55693))

(declare-fun d!55803 () Bool)

(declare-fun e!125369 () Bool)

(assert (=> d!55803 e!125369))

(declare-fun res!90064 () Bool)

(assert (=> d!55803 (=> (not res!90064) (not e!125369))))

(declare-fun lt!94487 () SeekEntryResult!682)

(assert (=> d!55803 (= res!90064 ((_ is Found!682) lt!94487))))

(assert (=> d!55803 (= lt!94487 (seekEntryOrOpen!0 key!828 (_keys!5850 thiss!1248) (mask!9079 thiss!1248)))))

(assert (=> d!55803 true))

(declare-fun _$33!138 () Unit!5740)

(assert (=> d!55803 (= (choose!1029 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) key!828 (defaultEntry!3881 thiss!1248)) _$33!138)))

(declare-fun b!190498 () Bool)

(declare-fun res!90063 () Bool)

(assert (=> b!190498 (=> (not res!90063) (not e!125369))))

(assert (=> b!190498 (= res!90063 (inRange!0 (index!4899 lt!94487) (mask!9079 thiss!1248)))))

(declare-fun b!190499 () Bool)

(assert (=> b!190499 (= e!125369 (= (select (arr!3820 (_keys!5850 thiss!1248)) (index!4899 lt!94487)) key!828))))

(assert (= (and d!55803 res!90064) b!190498))

(assert (= (and b!190498 res!90063) b!190499))

(assert (=> d!55803 m!216397))

(declare-fun m!216887 () Bool)

(assert (=> b!190498 m!216887))

(declare-fun m!216889 () Bool)

(assert (=> b!190499 m!216889))

(assert (=> d!55689 d!55803))

(assert (=> d!55689 d!55697))

(declare-fun d!55805 () Bool)

(declare-fun e!125370 () Bool)

(assert (=> d!55805 e!125370))

(declare-fun res!90066 () Bool)

(assert (=> d!55805 (=> (not res!90066) (not e!125370))))

(declare-fun lt!94491 () ListLongMap!2445)

(assert (=> d!55805 (= res!90066 (contains!1341 lt!94491 (_1!1767 (ite (or c!34172 c!34176) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))))))))

(declare-fun lt!94488 () List!2435)

(assert (=> d!55805 (= lt!94491 (ListLongMap!2446 lt!94488))))

(declare-fun lt!94490 () Unit!5740)

(declare-fun lt!94489 () Unit!5740)

(assert (=> d!55805 (= lt!94490 lt!94489)))

(assert (=> d!55805 (= (getValueByKey!235 lt!94488 (_1!1767 (ite (or c!34172 c!34176) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))))) (Some!240 (_2!1767 (ite (or c!34172 c!34176) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))))))))

(assert (=> d!55805 (= lt!94489 (lemmaContainsTupThenGetReturnValue!124 lt!94488 (_1!1767 (ite (or c!34172 c!34176) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))) (_2!1767 (ite (or c!34172 c!34176) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))))))))

(assert (=> d!55805 (= lt!94488 (insertStrictlySorted!126 (toList!1238 (ite c!34172 call!19202 (ite c!34176 call!19197 call!19200))) (_1!1767 (ite (or c!34172 c!34176) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))) (_2!1767 (ite (or c!34172 c!34176) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))))))))

(assert (=> d!55805 (= (+!296 (ite c!34172 call!19202 (ite c!34176 call!19197 call!19200)) (ite (or c!34172 c!34176) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))) lt!94491)))

(declare-fun b!190500 () Bool)

(declare-fun res!90065 () Bool)

(assert (=> b!190500 (=> (not res!90065) (not e!125370))))

(assert (=> b!190500 (= res!90065 (= (getValueByKey!235 (toList!1238 lt!94491) (_1!1767 (ite (or c!34172 c!34176) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))))) (Some!240 (_2!1767 (ite (or c!34172 c!34176) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))))))))

(declare-fun b!190501 () Bool)

(assert (=> b!190501 (= e!125370 (contains!1343 (toList!1238 lt!94491) (ite (or c!34172 c!34176) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))))))

(assert (= (and d!55805 res!90066) b!190500))

(assert (= (and b!190500 res!90065) b!190501))

(declare-fun m!216891 () Bool)

(assert (=> d!55805 m!216891))

(declare-fun m!216893 () Bool)

(assert (=> d!55805 m!216893))

(declare-fun m!216895 () Bool)

(assert (=> d!55805 m!216895))

(declare-fun m!216897 () Bool)

(assert (=> d!55805 m!216897))

(declare-fun m!216899 () Bool)

(assert (=> b!190500 m!216899))

(declare-fun m!216901 () Bool)

(assert (=> b!190501 m!216901))

(assert (=> bm!19194 d!55805))

(assert (=> d!55701 d!55697))

(declare-fun d!55807 () Bool)

(declare-fun e!125371 () Bool)

(assert (=> d!55807 e!125371))

(declare-fun res!90068 () Bool)

(assert (=> d!55807 (=> (not res!90068) (not e!125371))))

(declare-fun lt!94495 () ListLongMap!2445)

(assert (=> d!55807 (= res!90068 (contains!1341 lt!94495 (_1!1767 (ite (or c!34166 c!34170) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))))))))

(declare-fun lt!94492 () List!2435)

(assert (=> d!55807 (= lt!94495 (ListLongMap!2446 lt!94492))))

(declare-fun lt!94494 () Unit!5740)

(declare-fun lt!94493 () Unit!5740)

(assert (=> d!55807 (= lt!94494 lt!94493)))

(assert (=> d!55807 (= (getValueByKey!235 lt!94492 (_1!1767 (ite (or c!34166 c!34170) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))))) (Some!240 (_2!1767 (ite (or c!34166 c!34170) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))))))))

(assert (=> d!55807 (= lt!94493 (lemmaContainsTupThenGetReturnValue!124 lt!94492 (_1!1767 (ite (or c!34166 c!34170) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))) (_2!1767 (ite (or c!34166 c!34170) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))))))))

(assert (=> d!55807 (= lt!94492 (insertStrictlySorted!126 (toList!1238 (ite c!34166 call!19195 (ite c!34170 call!19190 call!19193))) (_1!1767 (ite (or c!34166 c!34170) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))) (_2!1767 (ite (or c!34166 c!34170) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))))))))

(assert (=> d!55807 (= (+!296 (ite c!34166 call!19195 (ite c!34170 call!19190 call!19193)) (ite (or c!34166 c!34170) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))) lt!94495)))

(declare-fun b!190502 () Bool)

(declare-fun res!90067 () Bool)

(assert (=> b!190502 (=> (not res!90067) (not e!125371))))

(assert (=> b!190502 (= res!90067 (= (getValueByKey!235 (toList!1238 lt!94495) (_1!1767 (ite (or c!34166 c!34170) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248))))) (Some!240 (_2!1767 (ite (or c!34166 c!34170) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))))))))

(declare-fun b!190503 () Bool)

(assert (=> b!190503 (= e!125371 (contains!1343 (toList!1238 lt!94495) (ite (or c!34166 c!34170) (tuple2!3515 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3722 thiss!1248)) (tuple2!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3722 thiss!1248)))))))

(assert (= (and d!55807 res!90068) b!190502))

(assert (= (and b!190502 res!90067) b!190503))

(declare-fun m!216903 () Bool)

(assert (=> d!55807 m!216903))

(declare-fun m!216905 () Bool)

(assert (=> d!55807 m!216905))

(declare-fun m!216907 () Bool)

(assert (=> d!55807 m!216907))

(declare-fun m!216909 () Bool)

(assert (=> d!55807 m!216909))

(declare-fun m!216911 () Bool)

(assert (=> b!190502 m!216911))

(declare-fun m!216913 () Bool)

(assert (=> b!190503 m!216913))

(assert (=> bm!19187 d!55807))

(declare-fun d!55809 () Bool)

(declare-fun res!90073 () Bool)

(declare-fun e!125376 () Bool)

(assert (=> d!55809 (=> res!90073 e!125376)))

(assert (=> d!55809 (= res!90073 (and ((_ is Cons!2431) (toList!1238 lt!94211)) (= (_1!1767 (h!3068 (toList!1238 lt!94211))) key!828)))))

(assert (=> d!55809 (= (containsKey!239 (toList!1238 lt!94211) key!828) e!125376)))

(declare-fun b!190508 () Bool)

(declare-fun e!125377 () Bool)

(assert (=> b!190508 (= e!125376 e!125377)))

(declare-fun res!90074 () Bool)

(assert (=> b!190508 (=> (not res!90074) (not e!125377))))

(assert (=> b!190508 (= res!90074 (and (or (not ((_ is Cons!2431) (toList!1238 lt!94211))) (bvsle (_1!1767 (h!3068 (toList!1238 lt!94211))) key!828)) ((_ is Cons!2431) (toList!1238 lt!94211)) (bvslt (_1!1767 (h!3068 (toList!1238 lt!94211))) key!828)))))

(declare-fun b!190509 () Bool)

(assert (=> b!190509 (= e!125377 (containsKey!239 (t!7351 (toList!1238 lt!94211)) key!828))))

(assert (= (and d!55809 (not res!90073)) b!190508))

(assert (= (and b!190508 res!90074) b!190509))

(declare-fun m!216915 () Bool)

(assert (=> b!190509 m!216915))

(assert (=> d!55705 d!55809))

(assert (=> bm!19188 d!55751))

(declare-fun d!55811 () Bool)

(declare-fun e!125379 () Bool)

(assert (=> d!55811 e!125379))

(declare-fun res!90075 () Bool)

(assert (=> d!55811 (=> res!90075 e!125379)))

(declare-fun lt!94497 () Bool)

(assert (=> d!55811 (= res!90075 (not lt!94497))))

(declare-fun lt!94496 () Bool)

(assert (=> d!55811 (= lt!94497 lt!94496)))

(declare-fun lt!94499 () Unit!5740)

(declare-fun e!125378 () Unit!5740)

(assert (=> d!55811 (= lt!94499 e!125378)))

(declare-fun c!34249 () Bool)

(assert (=> d!55811 (= c!34249 lt!94496)))

(assert (=> d!55811 (= lt!94496 (containsKey!239 (toList!1238 lt!94321) (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!55811 (= (contains!1341 lt!94321 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)) lt!94497)))

(declare-fun b!190510 () Bool)

(declare-fun lt!94498 () Unit!5740)

(assert (=> b!190510 (= e!125378 lt!94498)))

(assert (=> b!190510 (= lt!94498 (lemmaContainsKeyImpliesGetValueByKeyDefined!188 (toList!1238 lt!94321) (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!190510 (isDefined!189 (getValueByKey!235 (toList!1238 lt!94321) (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!190511 () Bool)

(declare-fun Unit!5754 () Unit!5740)

(assert (=> b!190511 (= e!125378 Unit!5754)))

(declare-fun b!190512 () Bool)

(assert (=> b!190512 (= e!125379 (isDefined!189 (getValueByKey!235 (toList!1238 lt!94321) (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!55811 c!34249) b!190510))

(assert (= (and d!55811 (not c!34249)) b!190511))

(assert (= (and d!55811 (not res!90075)) b!190512))

(assert (=> d!55811 m!216497))

(declare-fun m!216917 () Bool)

(assert (=> d!55811 m!216917))

(assert (=> b!190510 m!216497))

(declare-fun m!216919 () Bool)

(assert (=> b!190510 m!216919))

(assert (=> b!190510 m!216497))

(assert (=> b!190510 m!216879))

(assert (=> b!190510 m!216879))

(declare-fun m!216921 () Bool)

(assert (=> b!190510 m!216921))

(assert (=> b!190512 m!216497))

(assert (=> b!190512 m!216879))

(assert (=> b!190512 m!216879))

(assert (=> b!190512 m!216921))

(assert (=> b!190219 d!55811))

(declare-fun d!55813 () Bool)

(assert (=> d!55813 (= (apply!179 (+!296 lt!94328 (tuple2!3515 lt!94331 (zeroValue!3722 thiss!1248))) lt!94336) (get!2200 (getValueByKey!235 (toList!1238 (+!296 lt!94328 (tuple2!3515 lt!94331 (zeroValue!3722 thiss!1248)))) lt!94336)))))

(declare-fun bs!7624 () Bool)

(assert (= bs!7624 d!55813))

(declare-fun m!216923 () Bool)

(assert (=> bs!7624 m!216923))

(assert (=> bs!7624 m!216923))

(declare-fun m!216925 () Bool)

(assert (=> bs!7624 m!216925))

(assert (=> b!190205 d!55813))

(declare-fun d!55815 () Bool)

(assert (=> d!55815 (= (apply!179 lt!94326 lt!94329) (get!2200 (getValueByKey!235 (toList!1238 lt!94326) lt!94329)))))

(declare-fun bs!7625 () Bool)

(assert (= bs!7625 d!55815))

(declare-fun m!216927 () Bool)

(assert (=> bs!7625 m!216927))

(assert (=> bs!7625 m!216927))

(declare-fun m!216929 () Bool)

(assert (=> bs!7625 m!216929))

(assert (=> b!190205 d!55815))

(declare-fun d!55817 () Bool)

(assert (=> d!55817 (= (apply!179 (+!296 lt!94326 (tuple2!3515 lt!94338 (minValue!3722 thiss!1248))) lt!94329) (apply!179 lt!94326 lt!94329))))

(declare-fun lt!94500 () Unit!5740)

(assert (=> d!55817 (= lt!94500 (choose!1031 lt!94326 lt!94338 (minValue!3722 thiss!1248) lt!94329))))

(declare-fun e!125380 () Bool)

(assert (=> d!55817 e!125380))

(declare-fun res!90076 () Bool)

(assert (=> d!55817 (=> (not res!90076) (not e!125380))))

(assert (=> d!55817 (= res!90076 (contains!1341 lt!94326 lt!94329))))

(assert (=> d!55817 (= (addApplyDifferent!155 lt!94326 lt!94338 (minValue!3722 thiss!1248) lt!94329) lt!94500)))

(declare-fun b!190513 () Bool)

(assert (=> b!190513 (= e!125380 (not (= lt!94329 lt!94338)))))

(assert (= (and d!55817 res!90076) b!190513))

(declare-fun m!216931 () Bool)

(assert (=> d!55817 m!216931))

(assert (=> d!55817 m!216563))

(assert (=> d!55817 m!216579))

(assert (=> d!55817 m!216563))

(assert (=> d!55817 m!216565))

(declare-fun m!216933 () Bool)

(assert (=> d!55817 m!216933))

(assert (=> b!190205 d!55817))

(declare-fun d!55819 () Bool)

(assert (=> d!55819 (contains!1341 (+!296 lt!94332 (tuple2!3515 lt!94335 (zeroValue!3722 thiss!1248))) lt!94334)))

(declare-fun lt!94501 () Unit!5740)

(assert (=> d!55819 (= lt!94501 (choose!1032 lt!94332 lt!94335 (zeroValue!3722 thiss!1248) lt!94334))))

(assert (=> d!55819 (contains!1341 lt!94332 lt!94334)))

(assert (=> d!55819 (= (addStillContains!155 lt!94332 lt!94335 (zeroValue!3722 thiss!1248) lt!94334) lt!94501)))

(declare-fun bs!7626 () Bool)

(assert (= bs!7626 d!55819))

(assert (=> bs!7626 m!216581))

(assert (=> bs!7626 m!216581))

(assert (=> bs!7626 m!216583))

(declare-fun m!216935 () Bool)

(assert (=> bs!7626 m!216935))

(declare-fun m!216937 () Bool)

(assert (=> bs!7626 m!216937))

(assert (=> b!190205 d!55819))

(declare-fun d!55821 () Bool)

(assert (=> d!55821 (= (apply!179 (+!296 lt!94326 (tuple2!3515 lt!94338 (minValue!3722 thiss!1248))) lt!94329) (get!2200 (getValueByKey!235 (toList!1238 (+!296 lt!94326 (tuple2!3515 lt!94338 (minValue!3722 thiss!1248)))) lt!94329)))))

(declare-fun bs!7627 () Bool)

(assert (= bs!7627 d!55821))

(declare-fun m!216939 () Bool)

(assert (=> bs!7627 m!216939))

(assert (=> bs!7627 m!216939))

(declare-fun m!216941 () Bool)

(assert (=> bs!7627 m!216941))

(assert (=> b!190205 d!55821))

(declare-fun d!55823 () Bool)

(declare-fun e!125381 () Bool)

(assert (=> d!55823 e!125381))

(declare-fun res!90078 () Bool)

(assert (=> d!55823 (=> (not res!90078) (not e!125381))))

(declare-fun lt!94505 () ListLongMap!2445)

(assert (=> d!55823 (= res!90078 (contains!1341 lt!94505 (_1!1767 (tuple2!3515 lt!94340 (minValue!3722 thiss!1248)))))))

(declare-fun lt!94502 () List!2435)

(assert (=> d!55823 (= lt!94505 (ListLongMap!2446 lt!94502))))

(declare-fun lt!94504 () Unit!5740)

(declare-fun lt!94503 () Unit!5740)

(assert (=> d!55823 (= lt!94504 lt!94503)))

(assert (=> d!55823 (= (getValueByKey!235 lt!94502 (_1!1767 (tuple2!3515 lt!94340 (minValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 lt!94340 (minValue!3722 thiss!1248)))))))

(assert (=> d!55823 (= lt!94503 (lemmaContainsTupThenGetReturnValue!124 lt!94502 (_1!1767 (tuple2!3515 lt!94340 (minValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 lt!94340 (minValue!3722 thiss!1248)))))))

(assert (=> d!55823 (= lt!94502 (insertStrictlySorted!126 (toList!1238 lt!94341) (_1!1767 (tuple2!3515 lt!94340 (minValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 lt!94340 (minValue!3722 thiss!1248)))))))

(assert (=> d!55823 (= (+!296 lt!94341 (tuple2!3515 lt!94340 (minValue!3722 thiss!1248))) lt!94505)))

(declare-fun b!190514 () Bool)

(declare-fun res!90077 () Bool)

(assert (=> b!190514 (=> (not res!90077) (not e!125381))))

(assert (=> b!190514 (= res!90077 (= (getValueByKey!235 (toList!1238 lt!94505) (_1!1767 (tuple2!3515 lt!94340 (minValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 lt!94340 (minValue!3722 thiss!1248))))))))

(declare-fun b!190515 () Bool)

(assert (=> b!190515 (= e!125381 (contains!1343 (toList!1238 lt!94505) (tuple2!3515 lt!94340 (minValue!3722 thiss!1248))))))

(assert (= (and d!55823 res!90078) b!190514))

(assert (= (and b!190514 res!90077) b!190515))

(declare-fun m!216943 () Bool)

(assert (=> d!55823 m!216943))

(declare-fun m!216945 () Bool)

(assert (=> d!55823 m!216945))

(declare-fun m!216947 () Bool)

(assert (=> d!55823 m!216947))

(declare-fun m!216949 () Bool)

(assert (=> d!55823 m!216949))

(declare-fun m!216951 () Bool)

(assert (=> b!190514 m!216951))

(declare-fun m!216953 () Bool)

(assert (=> b!190515 m!216953))

(assert (=> b!190205 d!55823))

(declare-fun d!55825 () Bool)

(declare-fun e!125382 () Bool)

(assert (=> d!55825 e!125382))

(declare-fun res!90080 () Bool)

(assert (=> d!55825 (=> (not res!90080) (not e!125382))))

(declare-fun lt!94509 () ListLongMap!2445)

(assert (=> d!55825 (= res!90080 (contains!1341 lt!94509 (_1!1767 (tuple2!3515 lt!94338 (minValue!3722 thiss!1248)))))))

(declare-fun lt!94506 () List!2435)

(assert (=> d!55825 (= lt!94509 (ListLongMap!2446 lt!94506))))

(declare-fun lt!94508 () Unit!5740)

(declare-fun lt!94507 () Unit!5740)

(assert (=> d!55825 (= lt!94508 lt!94507)))

(assert (=> d!55825 (= (getValueByKey!235 lt!94506 (_1!1767 (tuple2!3515 lt!94338 (minValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 lt!94338 (minValue!3722 thiss!1248)))))))

(assert (=> d!55825 (= lt!94507 (lemmaContainsTupThenGetReturnValue!124 lt!94506 (_1!1767 (tuple2!3515 lt!94338 (minValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 lt!94338 (minValue!3722 thiss!1248)))))))

(assert (=> d!55825 (= lt!94506 (insertStrictlySorted!126 (toList!1238 lt!94326) (_1!1767 (tuple2!3515 lt!94338 (minValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 lt!94338 (minValue!3722 thiss!1248)))))))

(assert (=> d!55825 (= (+!296 lt!94326 (tuple2!3515 lt!94338 (minValue!3722 thiss!1248))) lt!94509)))

(declare-fun b!190516 () Bool)

(declare-fun res!90079 () Bool)

(assert (=> b!190516 (=> (not res!90079) (not e!125382))))

(assert (=> b!190516 (= res!90079 (= (getValueByKey!235 (toList!1238 lt!94509) (_1!1767 (tuple2!3515 lt!94338 (minValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 lt!94338 (minValue!3722 thiss!1248))))))))

(declare-fun b!190517 () Bool)

(assert (=> b!190517 (= e!125382 (contains!1343 (toList!1238 lt!94509) (tuple2!3515 lt!94338 (minValue!3722 thiss!1248))))))

(assert (= (and d!55825 res!90080) b!190516))

(assert (= (and b!190516 res!90079) b!190517))

(declare-fun m!216955 () Bool)

(assert (=> d!55825 m!216955))

(declare-fun m!216957 () Bool)

(assert (=> d!55825 m!216957))

(declare-fun m!216959 () Bool)

(assert (=> d!55825 m!216959))

(declare-fun m!216961 () Bool)

(assert (=> d!55825 m!216961))

(declare-fun m!216963 () Bool)

(assert (=> b!190516 m!216963))

(declare-fun m!216965 () Bool)

(assert (=> b!190517 m!216965))

(assert (=> b!190205 d!55825))

(declare-fun d!55827 () Bool)

(assert (=> d!55827 (= (apply!179 (+!296 lt!94328 (tuple2!3515 lt!94331 (zeroValue!3722 thiss!1248))) lt!94336) (apply!179 lt!94328 lt!94336))))

(declare-fun lt!94510 () Unit!5740)

(assert (=> d!55827 (= lt!94510 (choose!1031 lt!94328 lt!94331 (zeroValue!3722 thiss!1248) lt!94336))))

(declare-fun e!125383 () Bool)

(assert (=> d!55827 e!125383))

(declare-fun res!90081 () Bool)

(assert (=> d!55827 (=> (not res!90081) (not e!125383))))

(assert (=> d!55827 (= res!90081 (contains!1341 lt!94328 lt!94336))))

(assert (=> d!55827 (= (addApplyDifferent!155 lt!94328 lt!94331 (zeroValue!3722 thiss!1248) lt!94336) lt!94510)))

(declare-fun b!190518 () Bool)

(assert (=> b!190518 (= e!125383 (not (= lt!94336 lt!94331)))))

(assert (= (and d!55827 res!90081) b!190518))

(declare-fun m!216967 () Bool)

(assert (=> d!55827 m!216967))

(assert (=> d!55827 m!216573))

(assert (=> d!55827 m!216591))

(assert (=> d!55827 m!216573))

(assert (=> d!55827 m!216575))

(declare-fun m!216969 () Bool)

(assert (=> d!55827 m!216969))

(assert (=> b!190205 d!55827))

(declare-fun d!55829 () Bool)

(declare-fun e!125385 () Bool)

(assert (=> d!55829 e!125385))

(declare-fun res!90082 () Bool)

(assert (=> d!55829 (=> res!90082 e!125385)))

(declare-fun lt!94512 () Bool)

(assert (=> d!55829 (= res!90082 (not lt!94512))))

(declare-fun lt!94511 () Bool)

(assert (=> d!55829 (= lt!94512 lt!94511)))

(declare-fun lt!94514 () Unit!5740)

(declare-fun e!125384 () Unit!5740)

(assert (=> d!55829 (= lt!94514 e!125384)))

(declare-fun c!34250 () Bool)

(assert (=> d!55829 (= c!34250 lt!94511)))

(assert (=> d!55829 (= lt!94511 (containsKey!239 (toList!1238 (+!296 lt!94332 (tuple2!3515 lt!94335 (zeroValue!3722 thiss!1248)))) lt!94334))))

(assert (=> d!55829 (= (contains!1341 (+!296 lt!94332 (tuple2!3515 lt!94335 (zeroValue!3722 thiss!1248))) lt!94334) lt!94512)))

(declare-fun b!190519 () Bool)

(declare-fun lt!94513 () Unit!5740)

(assert (=> b!190519 (= e!125384 lt!94513)))

(assert (=> b!190519 (= lt!94513 (lemmaContainsKeyImpliesGetValueByKeyDefined!188 (toList!1238 (+!296 lt!94332 (tuple2!3515 lt!94335 (zeroValue!3722 thiss!1248)))) lt!94334))))

(assert (=> b!190519 (isDefined!189 (getValueByKey!235 (toList!1238 (+!296 lt!94332 (tuple2!3515 lt!94335 (zeroValue!3722 thiss!1248)))) lt!94334))))

(declare-fun b!190520 () Bool)

(declare-fun Unit!5755 () Unit!5740)

(assert (=> b!190520 (= e!125384 Unit!5755)))

(declare-fun b!190521 () Bool)

(assert (=> b!190521 (= e!125385 (isDefined!189 (getValueByKey!235 (toList!1238 (+!296 lt!94332 (tuple2!3515 lt!94335 (zeroValue!3722 thiss!1248)))) lt!94334)))))

(assert (= (and d!55829 c!34250) b!190519))

(assert (= (and d!55829 (not c!34250)) b!190520))

(assert (= (and d!55829 (not res!90082)) b!190521))

(declare-fun m!216971 () Bool)

(assert (=> d!55829 m!216971))

(declare-fun m!216973 () Bool)

(assert (=> b!190519 m!216973))

(declare-fun m!216975 () Bool)

(assert (=> b!190519 m!216975))

(assert (=> b!190519 m!216975))

(declare-fun m!216977 () Bool)

(assert (=> b!190519 m!216977))

(assert (=> b!190521 m!216975))

(assert (=> b!190521 m!216975))

(assert (=> b!190521 m!216977))

(assert (=> b!190205 d!55829))

(declare-fun d!55831 () Bool)

(declare-fun e!125386 () Bool)

(assert (=> d!55831 e!125386))

(declare-fun res!90084 () Bool)

(assert (=> d!55831 (=> (not res!90084) (not e!125386))))

(declare-fun lt!94518 () ListLongMap!2445)

(assert (=> d!55831 (= res!90084 (contains!1341 lt!94518 (_1!1767 (tuple2!3515 lt!94331 (zeroValue!3722 thiss!1248)))))))

(declare-fun lt!94515 () List!2435)

(assert (=> d!55831 (= lt!94518 (ListLongMap!2446 lt!94515))))

(declare-fun lt!94517 () Unit!5740)

(declare-fun lt!94516 () Unit!5740)

(assert (=> d!55831 (= lt!94517 lt!94516)))

(assert (=> d!55831 (= (getValueByKey!235 lt!94515 (_1!1767 (tuple2!3515 lt!94331 (zeroValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 lt!94331 (zeroValue!3722 thiss!1248)))))))

(assert (=> d!55831 (= lt!94516 (lemmaContainsTupThenGetReturnValue!124 lt!94515 (_1!1767 (tuple2!3515 lt!94331 (zeroValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 lt!94331 (zeroValue!3722 thiss!1248)))))))

(assert (=> d!55831 (= lt!94515 (insertStrictlySorted!126 (toList!1238 lt!94328) (_1!1767 (tuple2!3515 lt!94331 (zeroValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 lt!94331 (zeroValue!3722 thiss!1248)))))))

(assert (=> d!55831 (= (+!296 lt!94328 (tuple2!3515 lt!94331 (zeroValue!3722 thiss!1248))) lt!94518)))

(declare-fun b!190522 () Bool)

(declare-fun res!90083 () Bool)

(assert (=> b!190522 (=> (not res!90083) (not e!125386))))

(assert (=> b!190522 (= res!90083 (= (getValueByKey!235 (toList!1238 lt!94518) (_1!1767 (tuple2!3515 lt!94331 (zeroValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 lt!94331 (zeroValue!3722 thiss!1248))))))))

(declare-fun b!190523 () Bool)

(assert (=> b!190523 (= e!125386 (contains!1343 (toList!1238 lt!94518) (tuple2!3515 lt!94331 (zeroValue!3722 thiss!1248))))))

(assert (= (and d!55831 res!90084) b!190522))

(assert (= (and b!190522 res!90083) b!190523))

(declare-fun m!216979 () Bool)

(assert (=> d!55831 m!216979))

(declare-fun m!216981 () Bool)

(assert (=> d!55831 m!216981))

(declare-fun m!216983 () Bool)

(assert (=> d!55831 m!216983))

(declare-fun m!216985 () Bool)

(assert (=> d!55831 m!216985))

(declare-fun m!216987 () Bool)

(assert (=> b!190522 m!216987))

(declare-fun m!216989 () Bool)

(assert (=> b!190523 m!216989))

(assert (=> b!190205 d!55831))

(declare-fun d!55833 () Bool)

(assert (=> d!55833 (= (apply!179 lt!94341 lt!94324) (get!2200 (getValueByKey!235 (toList!1238 lt!94341) lt!94324)))))

(declare-fun bs!7628 () Bool)

(assert (= bs!7628 d!55833))

(declare-fun m!216991 () Bool)

(assert (=> bs!7628 m!216991))

(assert (=> bs!7628 m!216991))

(declare-fun m!216993 () Bool)

(assert (=> bs!7628 m!216993))

(assert (=> b!190205 d!55833))

(assert (=> b!190205 d!55785))

(declare-fun d!55835 () Bool)

(assert (=> d!55835 (= (apply!179 (+!296 lt!94341 (tuple2!3515 lt!94340 (minValue!3722 thiss!1248))) lt!94324) (get!2200 (getValueByKey!235 (toList!1238 (+!296 lt!94341 (tuple2!3515 lt!94340 (minValue!3722 thiss!1248)))) lt!94324)))))

(declare-fun bs!7629 () Bool)

(assert (= bs!7629 d!55835))

(declare-fun m!216995 () Bool)

(assert (=> bs!7629 m!216995))

(assert (=> bs!7629 m!216995))

(declare-fun m!216997 () Bool)

(assert (=> bs!7629 m!216997))

(assert (=> b!190205 d!55835))

(declare-fun d!55837 () Bool)

(assert (=> d!55837 (= (apply!179 lt!94328 lt!94336) (get!2200 (getValueByKey!235 (toList!1238 lt!94328) lt!94336)))))

(declare-fun bs!7630 () Bool)

(assert (= bs!7630 d!55837))

(declare-fun m!216999 () Bool)

(assert (=> bs!7630 m!216999))

(assert (=> bs!7630 m!216999))

(declare-fun m!217001 () Bool)

(assert (=> bs!7630 m!217001))

(assert (=> b!190205 d!55837))

(declare-fun d!55839 () Bool)

(declare-fun e!125387 () Bool)

(assert (=> d!55839 e!125387))

(declare-fun res!90086 () Bool)

(assert (=> d!55839 (=> (not res!90086) (not e!125387))))

(declare-fun lt!94522 () ListLongMap!2445)

(assert (=> d!55839 (= res!90086 (contains!1341 lt!94522 (_1!1767 (tuple2!3515 lt!94335 (zeroValue!3722 thiss!1248)))))))

(declare-fun lt!94519 () List!2435)

(assert (=> d!55839 (= lt!94522 (ListLongMap!2446 lt!94519))))

(declare-fun lt!94521 () Unit!5740)

(declare-fun lt!94520 () Unit!5740)

(assert (=> d!55839 (= lt!94521 lt!94520)))

(assert (=> d!55839 (= (getValueByKey!235 lt!94519 (_1!1767 (tuple2!3515 lt!94335 (zeroValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 lt!94335 (zeroValue!3722 thiss!1248)))))))

(assert (=> d!55839 (= lt!94520 (lemmaContainsTupThenGetReturnValue!124 lt!94519 (_1!1767 (tuple2!3515 lt!94335 (zeroValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 lt!94335 (zeroValue!3722 thiss!1248)))))))

(assert (=> d!55839 (= lt!94519 (insertStrictlySorted!126 (toList!1238 lt!94332) (_1!1767 (tuple2!3515 lt!94335 (zeroValue!3722 thiss!1248))) (_2!1767 (tuple2!3515 lt!94335 (zeroValue!3722 thiss!1248)))))))

(assert (=> d!55839 (= (+!296 lt!94332 (tuple2!3515 lt!94335 (zeroValue!3722 thiss!1248))) lt!94522)))

(declare-fun b!190524 () Bool)

(declare-fun res!90085 () Bool)

(assert (=> b!190524 (=> (not res!90085) (not e!125387))))

(assert (=> b!190524 (= res!90085 (= (getValueByKey!235 (toList!1238 lt!94522) (_1!1767 (tuple2!3515 lt!94335 (zeroValue!3722 thiss!1248)))) (Some!240 (_2!1767 (tuple2!3515 lt!94335 (zeroValue!3722 thiss!1248))))))))

(declare-fun b!190525 () Bool)

(assert (=> b!190525 (= e!125387 (contains!1343 (toList!1238 lt!94522) (tuple2!3515 lt!94335 (zeroValue!3722 thiss!1248))))))

(assert (= (and d!55839 res!90086) b!190524))

(assert (= (and b!190524 res!90085) b!190525))

(declare-fun m!217003 () Bool)

(assert (=> d!55839 m!217003))

(declare-fun m!217005 () Bool)

(assert (=> d!55839 m!217005))

(declare-fun m!217007 () Bool)

(assert (=> d!55839 m!217007))

(declare-fun m!217009 () Bool)

(assert (=> d!55839 m!217009))

(declare-fun m!217011 () Bool)

(assert (=> b!190524 m!217011))

(declare-fun m!217013 () Bool)

(assert (=> b!190525 m!217013))

(assert (=> b!190205 d!55839))

(declare-fun d!55841 () Bool)

(assert (=> d!55841 (= (apply!179 (+!296 lt!94341 (tuple2!3515 lt!94340 (minValue!3722 thiss!1248))) lt!94324) (apply!179 lt!94341 lt!94324))))

(declare-fun lt!94523 () Unit!5740)

(assert (=> d!55841 (= lt!94523 (choose!1031 lt!94341 lt!94340 (minValue!3722 thiss!1248) lt!94324))))

(declare-fun e!125388 () Bool)

(assert (=> d!55841 e!125388))

(declare-fun res!90087 () Bool)

(assert (=> d!55841 (=> (not res!90087) (not e!125388))))

(assert (=> d!55841 (= res!90087 (contains!1341 lt!94341 lt!94324))))

(assert (=> d!55841 (= (addApplyDifferent!155 lt!94341 lt!94340 (minValue!3722 thiss!1248) lt!94324) lt!94523)))

(declare-fun b!190526 () Bool)

(assert (=> b!190526 (= e!125388 (not (= lt!94324 lt!94340)))))

(assert (= (and d!55841 res!90087) b!190526))

(declare-fun m!217015 () Bool)

(assert (=> d!55841 m!217015))

(assert (=> d!55841 m!216577))

(assert (=> d!55841 m!216567))

(assert (=> d!55841 m!216577))

(assert (=> d!55841 m!216587))

(declare-fun m!217017 () Bool)

(assert (=> d!55841 m!217017))

(assert (=> b!190205 d!55841))

(declare-fun d!55843 () Bool)

(assert (=> d!55843 (= (apply!179 lt!94321 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2200 (getValueByKey!235 (toList!1238 lt!94321) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7631 () Bool)

(assert (= bs!7631 d!55843))

(assert (=> bs!7631 m!216875))

(assert (=> bs!7631 m!216875))

(declare-fun m!217019 () Bool)

(assert (=> bs!7631 m!217019))

(assert (=> b!190216 d!55843))

(declare-fun d!55845 () Bool)

(declare-fun e!125390 () Bool)

(assert (=> d!55845 e!125390))

(declare-fun res!90088 () Bool)

(assert (=> d!55845 (=> res!90088 e!125390)))

(declare-fun lt!94525 () Bool)

(assert (=> d!55845 (= res!90088 (not lt!94525))))

(declare-fun lt!94524 () Bool)

(assert (=> d!55845 (= lt!94525 lt!94524)))

(declare-fun lt!94527 () Unit!5740)

(declare-fun e!125389 () Unit!5740)

(assert (=> d!55845 (= lt!94527 e!125389)))

(declare-fun c!34251 () Bool)

(assert (=> d!55845 (= c!34251 lt!94524)))

(assert (=> d!55845 (= lt!94524 (containsKey!239 (toList!1238 lt!94296) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!55845 (= (contains!1341 lt!94296 #b1000000000000000000000000000000000000000000000000000000000000000) lt!94525)))

(declare-fun b!190527 () Bool)

(declare-fun lt!94526 () Unit!5740)

(assert (=> b!190527 (= e!125389 lt!94526)))

(assert (=> b!190527 (= lt!94526 (lemmaContainsKeyImpliesGetValueByKeyDefined!188 (toList!1238 lt!94296) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!190527 (isDefined!189 (getValueByKey!235 (toList!1238 lt!94296) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!190528 () Bool)

(declare-fun Unit!5756 () Unit!5740)

(assert (=> b!190528 (= e!125389 Unit!5756)))

(declare-fun b!190529 () Bool)

(assert (=> b!190529 (= e!125390 (isDefined!189 (getValueByKey!235 (toList!1238 lt!94296) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55845 c!34251) b!190527))

(assert (= (and d!55845 (not c!34251)) b!190528))

(assert (= (and d!55845 (not res!90088)) b!190529))

(declare-fun m!217021 () Bool)

(assert (=> d!55845 m!217021))

(declare-fun m!217023 () Bool)

(assert (=> b!190527 m!217023))

(assert (=> b!190527 m!216777))

(assert (=> b!190527 m!216777))

(declare-fun m!217025 () Bool)

(assert (=> b!190527 m!217025))

(assert (=> b!190529 m!216777))

(assert (=> b!190529 m!216777))

(assert (=> b!190529 m!217025))

(assert (=> bm!19192 d!55845))

(assert (=> b!190202 d!55765))

(declare-fun d!55847 () Bool)

(declare-fun e!125391 () Bool)

(assert (=> d!55847 e!125391))

(declare-fun res!90090 () Bool)

(assert (=> d!55847 (=> (not res!90090) (not e!125391))))

(declare-fun lt!94531 () ListLongMap!2445)

(assert (=> d!55847 (= res!90090 (contains!1341 lt!94531 (_1!1767 (tuple2!3515 key!828 v!309))))))

(declare-fun lt!94528 () List!2435)

(assert (=> d!55847 (= lt!94531 (ListLongMap!2446 lt!94528))))

(declare-fun lt!94530 () Unit!5740)

(declare-fun lt!94529 () Unit!5740)

(assert (=> d!55847 (= lt!94530 lt!94529)))

(assert (=> d!55847 (= (getValueByKey!235 lt!94528 (_1!1767 (tuple2!3515 key!828 v!309))) (Some!240 (_2!1767 (tuple2!3515 key!828 v!309))))))

(assert (=> d!55847 (= lt!94529 (lemmaContainsTupThenGetReturnValue!124 lt!94528 (_1!1767 (tuple2!3515 key!828 v!309)) (_2!1767 (tuple2!3515 key!828 v!309))))))

(assert (=> d!55847 (= lt!94528 (insertStrictlySorted!126 (toList!1238 (getCurrentListMap!881 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248))) (_1!1767 (tuple2!3515 key!828 v!309)) (_2!1767 (tuple2!3515 key!828 v!309))))))

(assert (=> d!55847 (= (+!296 (getCurrentListMap!881 (_keys!5850 thiss!1248) (_values!3864 thiss!1248) (mask!9079 thiss!1248) (extraKeys!3618 thiss!1248) (zeroValue!3722 thiss!1248) (minValue!3722 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3881 thiss!1248)) (tuple2!3515 key!828 v!309)) lt!94531)))

(declare-fun b!190530 () Bool)

(declare-fun res!90089 () Bool)

(assert (=> b!190530 (=> (not res!90089) (not e!125391))))

(assert (=> b!190530 (= res!90089 (= (getValueByKey!235 (toList!1238 lt!94531) (_1!1767 (tuple2!3515 key!828 v!309))) (Some!240 (_2!1767 (tuple2!3515 key!828 v!309)))))))

(declare-fun b!190531 () Bool)

(assert (=> b!190531 (= e!125391 (contains!1343 (toList!1238 lt!94531) (tuple2!3515 key!828 v!309)))))

(assert (= (and d!55847 res!90090) b!190530))

(assert (= (and b!190530 res!90089) b!190531))

(declare-fun m!217027 () Bool)

(assert (=> d!55847 m!217027))

(declare-fun m!217029 () Bool)

(assert (=> d!55847 m!217029))

(declare-fun m!217031 () Bool)

(assert (=> d!55847 m!217031))

(declare-fun m!217033 () Bool)

(assert (=> d!55847 m!217033))

(declare-fun m!217035 () Bool)

(assert (=> b!190530 m!217035))

(declare-fun m!217037 () Bool)

(assert (=> b!190531 m!217037))

(assert (=> b!190201 d!55847))

(assert (=> b!190201 d!55701))

(assert (=> b!190201 d!55695))

(declare-fun d!55849 () Bool)

(declare-fun e!125393 () Bool)

(assert (=> d!55849 e!125393))

(declare-fun res!90091 () Bool)

(assert (=> d!55849 (=> res!90091 e!125393)))

(declare-fun lt!94533 () Bool)

(assert (=> d!55849 (= res!90091 (not lt!94533))))

(declare-fun lt!94532 () Bool)

(assert (=> d!55849 (= lt!94533 lt!94532)))

(declare-fun lt!94535 () Unit!5740)

(declare-fun e!125392 () Unit!5740)

(assert (=> d!55849 (= lt!94535 e!125392)))

(declare-fun c!34252 () Bool)

(assert (=> d!55849 (= c!34252 lt!94532)))

(assert (=> d!55849 (= lt!94532 (containsKey!239 (toList!1238 lt!94353) (_1!1767 (tuple2!3515 key!828 v!309))))))

(assert (=> d!55849 (= (contains!1341 lt!94353 (_1!1767 (tuple2!3515 key!828 v!309))) lt!94533)))

(declare-fun b!190532 () Bool)

(declare-fun lt!94534 () Unit!5740)

(assert (=> b!190532 (= e!125392 lt!94534)))

(assert (=> b!190532 (= lt!94534 (lemmaContainsKeyImpliesGetValueByKeyDefined!188 (toList!1238 lt!94353) (_1!1767 (tuple2!3515 key!828 v!309))))))

(assert (=> b!190532 (isDefined!189 (getValueByKey!235 (toList!1238 lt!94353) (_1!1767 (tuple2!3515 key!828 v!309))))))

(declare-fun b!190533 () Bool)

(declare-fun Unit!5757 () Unit!5740)

(assert (=> b!190533 (= e!125392 Unit!5757)))

(declare-fun b!190534 () Bool)

(assert (=> b!190534 (= e!125393 (isDefined!189 (getValueByKey!235 (toList!1238 lt!94353) (_1!1767 (tuple2!3515 key!828 v!309)))))))

(assert (= (and d!55849 c!34252) b!190532))

(assert (= (and d!55849 (not c!34252)) b!190533))

(assert (= (and d!55849 (not res!90091)) b!190534))

(declare-fun m!217039 () Bool)

(assert (=> d!55849 m!217039))

(declare-fun m!217041 () Bool)

(assert (=> b!190532 m!217041))

(assert (=> b!190532 m!216603))

(assert (=> b!190532 m!216603))

(declare-fun m!217043 () Bool)

(assert (=> b!190532 m!217043))

(assert (=> b!190534 m!216603))

(assert (=> b!190534 m!216603))

(assert (=> b!190534 m!217043))

(assert (=> d!55703 d!55849))

(declare-fun c!34253 () Bool)

(declare-fun d!55851 () Bool)

(assert (=> d!55851 (= c!34253 (and ((_ is Cons!2431) lt!94350) (= (_1!1767 (h!3068 lt!94350)) (_1!1767 (tuple2!3515 key!828 v!309)))))))

(declare-fun e!125394 () Option!241)

(assert (=> d!55851 (= (getValueByKey!235 lt!94350 (_1!1767 (tuple2!3515 key!828 v!309))) e!125394)))

(declare-fun b!190536 () Bool)

(declare-fun e!125395 () Option!241)

(assert (=> b!190536 (= e!125394 e!125395)))

(declare-fun c!34254 () Bool)

(assert (=> b!190536 (= c!34254 (and ((_ is Cons!2431) lt!94350) (not (= (_1!1767 (h!3068 lt!94350)) (_1!1767 (tuple2!3515 key!828 v!309))))))))

(declare-fun b!190538 () Bool)

(assert (=> b!190538 (= e!125395 None!239)))

(declare-fun b!190537 () Bool)

(assert (=> b!190537 (= e!125395 (getValueByKey!235 (t!7351 lt!94350) (_1!1767 (tuple2!3515 key!828 v!309))))))

(declare-fun b!190535 () Bool)

(assert (=> b!190535 (= e!125394 (Some!240 (_2!1767 (h!3068 lt!94350))))))

(assert (= (and d!55851 c!34253) b!190535))

(assert (= (and d!55851 (not c!34253)) b!190536))

(assert (= (and b!190536 c!34254) b!190537))

(assert (= (and b!190536 (not c!34254)) b!190538))

(declare-fun m!217045 () Bool)

(assert (=> b!190537 m!217045))

(assert (=> d!55703 d!55851))

(declare-fun d!55853 () Bool)

(assert (=> d!55853 (= (getValueByKey!235 lt!94350 (_1!1767 (tuple2!3515 key!828 v!309))) (Some!240 (_2!1767 (tuple2!3515 key!828 v!309))))))

(declare-fun lt!94538 () Unit!5740)

(declare-fun choose!1034 (List!2435 (_ BitVec 64) V!5563) Unit!5740)

(assert (=> d!55853 (= lt!94538 (choose!1034 lt!94350 (_1!1767 (tuple2!3515 key!828 v!309)) (_2!1767 (tuple2!3515 key!828 v!309))))))

(declare-fun e!125398 () Bool)

(assert (=> d!55853 e!125398))

(declare-fun res!90096 () Bool)

(assert (=> d!55853 (=> (not res!90096) (not e!125398))))

(assert (=> d!55853 (= res!90096 (isStrictlySorted!348 lt!94350))))

(assert (=> d!55853 (= (lemmaContainsTupThenGetReturnValue!124 lt!94350 (_1!1767 (tuple2!3515 key!828 v!309)) (_2!1767 (tuple2!3515 key!828 v!309))) lt!94538)))

(declare-fun b!190543 () Bool)

(declare-fun res!90097 () Bool)

(assert (=> b!190543 (=> (not res!90097) (not e!125398))))

(assert (=> b!190543 (= res!90097 (containsKey!239 lt!94350 (_1!1767 (tuple2!3515 key!828 v!309))))))

(declare-fun b!190544 () Bool)

(assert (=> b!190544 (= e!125398 (contains!1343 lt!94350 (tuple2!3515 (_1!1767 (tuple2!3515 key!828 v!309)) (_2!1767 (tuple2!3515 key!828 v!309)))))))

(assert (= (and d!55853 res!90096) b!190543))

(assert (= (and b!190543 res!90097) b!190544))

(assert (=> d!55853 m!216597))

(declare-fun m!217047 () Bool)

(assert (=> d!55853 m!217047))

(declare-fun m!217049 () Bool)

(assert (=> d!55853 m!217049))

(declare-fun m!217051 () Bool)

(assert (=> b!190543 m!217051))

(declare-fun m!217053 () Bool)

(assert (=> b!190544 m!217053))

(assert (=> d!55703 d!55853))

(declare-fun b!190565 () Bool)

(declare-fun e!125411 () List!2435)

(declare-fun call!19229 () List!2435)

(assert (=> b!190565 (= e!125411 call!19229)))

(declare-fun b!190566 () Bool)

(declare-fun e!125410 () List!2435)

(declare-fun call!19228 () List!2435)

(assert (=> b!190566 (= e!125410 call!19228)))

(declare-fun d!55855 () Bool)

(declare-fun e!125409 () Bool)

(assert (=> d!55855 e!125409))

(declare-fun res!90103 () Bool)

(assert (=> d!55855 (=> (not res!90103) (not e!125409))))

(declare-fun lt!94541 () List!2435)

(assert (=> d!55855 (= res!90103 (isStrictlySorted!348 lt!94541))))

(declare-fun e!125413 () List!2435)

(assert (=> d!55855 (= lt!94541 e!125413)))

(declare-fun c!34263 () Bool)

(assert (=> d!55855 (= c!34263 (and ((_ is Cons!2431) (toList!1238 lt!94211)) (bvslt (_1!1767 (h!3068 (toList!1238 lt!94211))) (_1!1767 (tuple2!3515 key!828 v!309)))))))

(assert (=> d!55855 (isStrictlySorted!348 (toList!1238 lt!94211))))

(assert (=> d!55855 (= (insertStrictlySorted!126 (toList!1238 lt!94211) (_1!1767 (tuple2!3515 key!828 v!309)) (_2!1767 (tuple2!3515 key!828 v!309))) lt!94541)))

(declare-fun bm!19225 () Bool)

(declare-fun call!19230 () List!2435)

(assert (=> bm!19225 (= call!19228 call!19230)))

(declare-fun b!190567 () Bool)

(assert (=> b!190567 (= e!125413 call!19230)))

(declare-fun b!190568 () Bool)

(assert (=> b!190568 (= e!125411 call!19229)))

(declare-fun e!125412 () List!2435)

(declare-fun bm!19226 () Bool)

(declare-fun $colon$colon!98 (List!2435 tuple2!3514) List!2435)

(assert (=> bm!19226 (= call!19230 ($colon$colon!98 e!125412 (ite c!34263 (h!3068 (toList!1238 lt!94211)) (tuple2!3515 (_1!1767 (tuple2!3515 key!828 v!309)) (_2!1767 (tuple2!3515 key!828 v!309))))))))

(declare-fun c!34264 () Bool)

(assert (=> bm!19226 (= c!34264 c!34263)))

(declare-fun b!190569 () Bool)

(assert (=> b!190569 (= e!125409 (contains!1343 lt!94541 (tuple2!3515 (_1!1767 (tuple2!3515 key!828 v!309)) (_2!1767 (tuple2!3515 key!828 v!309)))))))

(declare-fun c!34265 () Bool)

(declare-fun c!34266 () Bool)

(declare-fun b!190570 () Bool)

(assert (=> b!190570 (= e!125412 (ite c!34265 (t!7351 (toList!1238 lt!94211)) (ite c!34266 (Cons!2431 (h!3068 (toList!1238 lt!94211)) (t!7351 (toList!1238 lt!94211))) Nil!2432)))))

(declare-fun bm!19227 () Bool)

(assert (=> bm!19227 (= call!19229 call!19228)))

(declare-fun b!190571 () Bool)

(declare-fun res!90102 () Bool)

(assert (=> b!190571 (=> (not res!90102) (not e!125409))))

(assert (=> b!190571 (= res!90102 (containsKey!239 lt!94541 (_1!1767 (tuple2!3515 key!828 v!309))))))

(declare-fun b!190572 () Bool)

(assert (=> b!190572 (= e!125413 e!125410)))

(assert (=> b!190572 (= c!34265 (and ((_ is Cons!2431) (toList!1238 lt!94211)) (= (_1!1767 (h!3068 (toList!1238 lt!94211))) (_1!1767 (tuple2!3515 key!828 v!309)))))))

(declare-fun b!190573 () Bool)

(assert (=> b!190573 (= e!125412 (insertStrictlySorted!126 (t!7351 (toList!1238 lt!94211)) (_1!1767 (tuple2!3515 key!828 v!309)) (_2!1767 (tuple2!3515 key!828 v!309))))))

(declare-fun b!190574 () Bool)

(assert (=> b!190574 (= c!34266 (and ((_ is Cons!2431) (toList!1238 lt!94211)) (bvsgt (_1!1767 (h!3068 (toList!1238 lt!94211))) (_1!1767 (tuple2!3515 key!828 v!309)))))))

(assert (=> b!190574 (= e!125410 e!125411)))

(assert (= (and d!55855 c!34263) b!190567))

(assert (= (and d!55855 (not c!34263)) b!190572))

(assert (= (and b!190572 c!34265) b!190566))

(assert (= (and b!190572 (not c!34265)) b!190574))

(assert (= (and b!190574 c!34266) b!190568))

(assert (= (and b!190574 (not c!34266)) b!190565))

(assert (= (or b!190568 b!190565) bm!19227))

(assert (= (or b!190566 bm!19227) bm!19225))

(assert (= (or b!190567 bm!19225) bm!19226))

(assert (= (and bm!19226 c!34264) b!190573))

(assert (= (and bm!19226 (not c!34264)) b!190570))

(assert (= (and d!55855 res!90103) b!190571))

(assert (= (and b!190571 res!90102) b!190569))

(declare-fun m!217055 () Bool)

(assert (=> d!55855 m!217055))

(assert (=> d!55855 m!216791))

(declare-fun m!217057 () Bool)

(assert (=> b!190573 m!217057))

(declare-fun m!217059 () Bool)

(assert (=> b!190571 m!217059))

(declare-fun m!217061 () Bool)

(assert (=> b!190569 m!217061))

(declare-fun m!217063 () Bool)

(assert (=> bm!19226 m!217063))

(assert (=> d!55703 d!55855))

(declare-fun d!55857 () Bool)

(assert (=> d!55857 (= (apply!179 lt!94296 (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000)) (get!2200 (getValueByKey!235 (toList!1238 lt!94296) (select (arr!3820 (_keys!5850 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7632 () Bool)

(assert (= bs!7632 d!55857))

(assert (=> bs!7632 m!216497))

(assert (=> bs!7632 m!216643))

(assert (=> bs!7632 m!216643))

(declare-fun m!217065 () Bool)

(assert (=> bs!7632 m!217065))

(assert (=> b!190195 d!55857))

(declare-fun d!55859 () Bool)

(declare-fun c!34267 () Bool)

(assert (=> d!55859 (= c!34267 ((_ is ValueCellFull!1875) (select (arr!3821 (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248)))) #b00000000000000000000000000000000)))))

(declare-fun e!125414 () V!5563)

(assert (=> d!55859 (= (get!2199 (select (arr!3821 (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!517 (defaultEntry!3881 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!125414)))

(declare-fun b!190575 () Bool)

(assert (=> b!190575 (= e!125414 (get!2201 (select (arr!3821 (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!517 (defaultEntry!3881 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!190576 () Bool)

(assert (=> b!190576 (= e!125414 (get!2202 (select (arr!3821 (array!8109 (store (arr!3821 (_values!3864 thiss!1248)) (index!4899 lt!94206) (ValueCellFull!1875 v!309)) (size!4141 (_values!3864 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!517 (defaultEntry!3881 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55859 c!34267) b!190575))

(assert (= (and d!55859 (not c!34267)) b!190576))

(assert (=> b!190575 m!216493))

(assert (=> b!190575 m!216491))

(declare-fun m!217067 () Bool)

(assert (=> b!190575 m!217067))

(assert (=> b!190576 m!216493))

(assert (=> b!190576 m!216491))

(declare-fun m!217069 () Bool)

(assert (=> b!190576 m!217069))

(assert (=> b!190195 d!55859))

(declare-fun d!55861 () Bool)

(assert (=> d!55861 (= (apply!179 lt!94321 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2200 (getValueByKey!235 (toList!1238 lt!94321) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7633 () Bool)

(assert (= bs!7633 d!55861))

(assert (=> bs!7633 m!216785))

(assert (=> bs!7633 m!216785))

(declare-fun m!217071 () Bool)

(assert (=> bs!7633 m!217071))

(assert (=> b!190218 d!55861))

(declare-fun b!190578 () Bool)

(declare-fun e!125416 () Bool)

(assert (=> b!190578 (= e!125416 tp_is_empty!4437)))

(declare-fun condMapEmpty!7664 () Bool)

(declare-fun mapDefault!7664 () ValueCell!1875)

(assert (=> mapNonEmpty!7663 (= condMapEmpty!7664 (= mapRest!7663 ((as const (Array (_ BitVec 32) ValueCell!1875)) mapDefault!7664)))))

(declare-fun mapRes!7664 () Bool)

(assert (=> mapNonEmpty!7663 (= tp!16843 (and e!125416 mapRes!7664))))

(declare-fun mapNonEmpty!7664 () Bool)

(declare-fun tp!16844 () Bool)

(declare-fun e!125415 () Bool)

(assert (=> mapNonEmpty!7664 (= mapRes!7664 (and tp!16844 e!125415))))

(declare-fun mapValue!7664 () ValueCell!1875)

(declare-fun mapKey!7664 () (_ BitVec 32))

(declare-fun mapRest!7664 () (Array (_ BitVec 32) ValueCell!1875))

(assert (=> mapNonEmpty!7664 (= mapRest!7663 (store mapRest!7664 mapKey!7664 mapValue!7664))))

(declare-fun mapIsEmpty!7664 () Bool)

(assert (=> mapIsEmpty!7664 mapRes!7664))

(declare-fun b!190577 () Bool)

(assert (=> b!190577 (= e!125415 tp_is_empty!4437)))

(assert (= (and mapNonEmpty!7663 condMapEmpty!7664) mapIsEmpty!7664))

(assert (= (and mapNonEmpty!7663 (not condMapEmpty!7664)) mapNonEmpty!7664))

(assert (= (and mapNonEmpty!7664 ((_ is ValueCellFull!1875) mapValue!7664)) b!190577))

(assert (= (and mapNonEmpty!7663 ((_ is ValueCellFull!1875) mapDefault!7664)) b!190578))

(declare-fun m!217073 () Bool)

(assert (=> mapNonEmpty!7664 m!217073))

(declare-fun b_lambda!7389 () Bool)

(assert (= b_lambda!7383 (or (and b!190050 b_free!4665) b_lambda!7389)))

(declare-fun b_lambda!7391 () Bool)

(assert (= b_lambda!7385 (or (and b!190050 b_free!4665) b_lambda!7391)))

(declare-fun b_lambda!7393 () Bool)

(assert (= b_lambda!7387 (or (and b!190050 b_free!4665) b_lambda!7393)))

(declare-fun b_lambda!7395 () Bool)

(assert (= b_lambda!7381 (or (and b!190050 b_free!4665) b_lambda!7395)))

(check-sat (not b!190437) (not b!190277) (not b!190449) (not b!190281) (not d!55797) (not d!55725) (not b!190446) (not b_lambda!7379) (not d!55733) (not d!55807) (not b!190439) (not b!190575) (not b!190323) (not b_lambda!7393) (not b!190370) (not d!55789) (not d!55731) (not b!190383) (not d!55745) (not b_next!4665) (not b_lambda!7391) (not d!55825) (not d!55759) (not b!190362) (not b!190278) (not d!55787) (not d!55739) (not b!190487) (not b!190430) (not d!55821) (not b!190515) (not b!190521) (not d!55811) (not d!55849) (not d!55827) (not d!55729) (not d!55727) (not b!190532) (not d!55835) (not d!55815) (not d!55855) (not b!190266) (not b_lambda!7389) (not bm!19214) (not b!190530) (not d!55829) (not b!190498) (not b!190443) (not d!55737) (not b!190367) (not b!190366) (not d!55719) (not d!55833) (not d!55823) (not b!190519) (not b!190406) (not d!55721) (not d!55803) (not b!190389) (not b!190523) (not b!190500) (not b!190512) (not d!55715) (not bm!19217) (not d!55799) (not mapNonEmpty!7664) (not b!190325) (not b!190329) (not b!190450) (not b!190445) (not b!190330) (not d!55753) (not b!190524) (not b!190534) (not bm!19202) (not d!55771) (not d!55749) (not d!55785) (not b!190509) (not b!190543) (not b!190436) (not b!190364) (not b!190485) (not b!190525) (not b!190419) (not b!190328) (not b!190324) (not d!55775) (not b!190363) (not b!190386) (not d!55779) (not b!190531) (not b!190358) (not b!190368) (not b!190369) (not b!190483) (not b_lambda!7395) (not b!190569) (not d!55845) (not d!55743) (not d!55747) (not d!55773) (not b!190382) (not d!55769) (not d!55839) (not b!190327) (not b!190279) b_and!11343 (not b!190573) (not d!55841) (not b!190447) (not d!55817) (not b!190493) (not b!190403) (not b!190529) (not b!190331) (not b!190451) (not b!190503) (not b!190453) (not b!190527) (not b!190516) (not d!55853) (not b!190360) (not d!55857) (not d!55837) (not b!190402) (not bm!19218) (not d!55755) (not d!55777) (not b!190537) (not b!190501) (not d!55813) (not b!190474) (not bm!19211) (not b!190514) (not b!190492) (not bm!19226) (not b!190576) (not b!190387) tp_is_empty!4437 (not b!190405) (not b!190510) (not b!190392) (not b!190292) (not b!190544) (not d!55843) (not bm!19205) (not b!190571) (not d!55735) (not bm!19210) (not d!55741) (not d!55831) (not b!190522) (not b!190502) (not b!190517) (not b_lambda!7377) (not d!55757) (not d!55783) (not d!55847) (not b!190441) (not d!55767) (not d!55861) (not d!55751) (not d!55819) (not d!55805) (not b!190452))
(check-sat b_and!11343 (not b_next!4665))
