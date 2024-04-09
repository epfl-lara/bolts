; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107726 () Bool)

(assert start!107726)

(declare-fun b!1274129 () Bool)

(declare-fun b_free!27771 () Bool)

(declare-fun b_next!27771 () Bool)

(assert (=> b!1274129 (= b_free!27771 (not b_next!27771))))

(declare-fun tp!97884 () Bool)

(declare-fun b_and!45837 () Bool)

(assert (=> b!1274129 (= tp!97884 b_and!45837)))

(declare-fun b!1274127 () Bool)

(declare-fun e!727120 () Bool)

(declare-fun tp_is_empty!33141 () Bool)

(assert (=> b!1274127 (= e!727120 tp_is_empty!33141)))

(declare-fun res!847192 () Bool)

(declare-fun e!727117 () Bool)

(assert (=> start!107726 (=> (not res!847192) (not e!727117))))

(declare-datatypes ((V!49381 0))(
  ( (V!49382 (val!16645 Int)) )
))
(declare-datatypes ((ValueCell!15717 0))(
  ( (ValueCellFull!15717 (v!19280 V!49381)) (EmptyCell!15717) )
))
(declare-datatypes ((array!83511 0))(
  ( (array!83512 (arr!40269 (Array (_ BitVec 32) ValueCell!15717)) (size!40819 (_ BitVec 32))) )
))
(declare-datatypes ((array!83513 0))(
  ( (array!83514 (arr!40270 (Array (_ BitVec 32) (_ BitVec 64))) (size!40820 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6198 0))(
  ( (LongMapFixedSize!6199 (defaultEntry!6745 Int) (mask!34546 (_ BitVec 32)) (extraKeys!6424 (_ BitVec 32)) (zeroValue!6530 V!49381) (minValue!6530 V!49381) (_size!3154 (_ BitVec 32)) (_keys!12160 array!83513) (_values!6768 array!83511) (_vacant!3154 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6198)

(declare-fun simpleValid!479 (LongMapFixedSize!6198) Bool)

(assert (=> start!107726 (= res!847192 (simpleValid!479 thiss!1551))))

(assert (=> start!107726 e!727117))

(declare-fun e!727121 () Bool)

(assert (=> start!107726 e!727121))

(declare-fun b!1274128 () Bool)

(declare-fun res!847193 () Bool)

(assert (=> b!1274128 (=> (not res!847193) (not e!727117))))

(declare-fun arrayCountValidKeys!0 (array!83513 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1274128 (= res!847193 (= (arrayCountValidKeys!0 (_keys!12160 thiss!1551) #b00000000000000000000000000000000 (size!40820 (_keys!12160 thiss!1551))) (_size!3154 thiss!1551)))))

(declare-fun e!727119 () Bool)

(declare-fun array_inv!30561 (array!83513) Bool)

(declare-fun array_inv!30562 (array!83511) Bool)

(assert (=> b!1274129 (= e!727121 (and tp!97884 tp_is_empty!33141 (array_inv!30561 (_keys!12160 thiss!1551)) (array_inv!30562 (_values!6768 thiss!1551)) e!727119))))

(declare-fun b!1274130 () Bool)

(declare-fun e!727118 () Bool)

(assert (=> b!1274130 (= e!727118 tp_is_empty!33141)))

(declare-fun mapIsEmpty!51356 () Bool)

(declare-fun mapRes!51356 () Bool)

(assert (=> mapIsEmpty!51356 mapRes!51356))

(declare-fun b!1274131 () Bool)

(assert (=> b!1274131 (= e!727119 (and e!727118 mapRes!51356))))

(declare-fun condMapEmpty!51356 () Bool)

(declare-fun mapDefault!51356 () ValueCell!15717)

(assert (=> b!1274131 (= condMapEmpty!51356 (= (arr!40269 (_values!6768 thiss!1551)) ((as const (Array (_ BitVec 32) ValueCell!15717)) mapDefault!51356)))))

(declare-fun b!1274132 () Bool)

(declare-fun e!727122 () Bool)

(assert (=> b!1274132 (= e!727117 e!727122)))

(declare-fun res!847188 () Bool)

(assert (=> b!1274132 (=> res!847188 e!727122)))

(declare-datatypes ((List!28729 0))(
  ( (Nil!28726) (Cons!28725 (h!29934 (_ BitVec 64)) (t!42269 List!28729)) )
))
(declare-fun contains!7694 (List!28729 (_ BitVec 64)) Bool)

(assert (=> b!1274132 (= res!847188 (contains!7694 Nil!28726 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1274133 () Bool)

(declare-fun res!847190 () Bool)

(assert (=> b!1274133 (=> (not res!847190) (not e!727117))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83513 (_ BitVec 32)) Bool)

(assert (=> b!1274133 (= res!847190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12160 thiss!1551) (mask!34546 thiss!1551)))))

(declare-fun b!1274134 () Bool)

(declare-fun res!847191 () Bool)

(assert (=> b!1274134 (=> (not res!847191) (not e!727117))))

(assert (=> b!1274134 (= res!847191 (and (bvsle #b00000000000000000000000000000000 (size!40820 (_keys!12160 thiss!1551))) (bvslt (size!40820 (_keys!12160 thiss!1551)) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!51356 () Bool)

(declare-fun tp!97883 () Bool)

(assert (=> mapNonEmpty!51356 (= mapRes!51356 (and tp!97883 e!727120))))

(declare-fun mapKey!51356 () (_ BitVec 32))

(declare-fun mapValue!51356 () ValueCell!15717)

(declare-fun mapRest!51356 () (Array (_ BitVec 32) ValueCell!15717))

(assert (=> mapNonEmpty!51356 (= (arr!40269 (_values!6768 thiss!1551)) (store mapRest!51356 mapKey!51356 mapValue!51356))))

(declare-fun b!1274135 () Bool)

(assert (=> b!1274135 (= e!727122 (contains!7694 Nil!28726 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1274136 () Bool)

(declare-fun res!847189 () Bool)

(assert (=> b!1274136 (=> (not res!847189) (not e!727117))))

(declare-fun noDuplicate!2076 (List!28729) Bool)

(assert (=> b!1274136 (= res!847189 (noDuplicate!2076 Nil!28726))))

(assert (= (and start!107726 res!847192) b!1274128))

(assert (= (and b!1274128 res!847193) b!1274133))

(assert (= (and b!1274133 res!847190) b!1274134))

(assert (= (and b!1274134 res!847191) b!1274136))

(assert (= (and b!1274136 res!847189) b!1274132))

(assert (= (and b!1274132 (not res!847188)) b!1274135))

(assert (= (and b!1274131 condMapEmpty!51356) mapIsEmpty!51356))

(assert (= (and b!1274131 (not condMapEmpty!51356)) mapNonEmpty!51356))

(get-info :version)

(assert (= (and mapNonEmpty!51356 ((_ is ValueCellFull!15717) mapValue!51356)) b!1274127))

(assert (= (and b!1274131 ((_ is ValueCellFull!15717) mapDefault!51356)) b!1274130))

(assert (= b!1274129 b!1274131))

(assert (= start!107726 b!1274129))

(declare-fun m!1170999 () Bool)

(assert (=> b!1274133 m!1170999))

(declare-fun m!1171001 () Bool)

(assert (=> b!1274132 m!1171001))

(declare-fun m!1171003 () Bool)

(assert (=> b!1274136 m!1171003))

(declare-fun m!1171005 () Bool)

(assert (=> b!1274135 m!1171005))

(declare-fun m!1171007 () Bool)

(assert (=> b!1274128 m!1171007))

(declare-fun m!1171009 () Bool)

(assert (=> b!1274129 m!1171009))

(declare-fun m!1171011 () Bool)

(assert (=> b!1274129 m!1171011))

(declare-fun m!1171013 () Bool)

(assert (=> start!107726 m!1171013))

(declare-fun m!1171015 () Bool)

(assert (=> mapNonEmpty!51356 m!1171015))

(check-sat (not b!1274128) b_and!45837 (not b_next!27771) (not b!1274135) (not start!107726) (not b!1274136) (not mapNonEmpty!51356) (not b!1274132) tp_is_empty!33141 (not b!1274133) (not b!1274129))
(check-sat b_and!45837 (not b_next!27771))
(get-model)

(declare-fun d!140015 () Bool)

(assert (=> d!140015 (= (array_inv!30561 (_keys!12160 thiss!1551)) (bvsge (size!40820 (_keys!12160 thiss!1551)) #b00000000000000000000000000000000))))

(assert (=> b!1274129 d!140015))

(declare-fun d!140017 () Bool)

(assert (=> d!140017 (= (array_inv!30562 (_values!6768 thiss!1551)) (bvsge (size!40819 (_values!6768 thiss!1551)) #b00000000000000000000000000000000))))

(assert (=> b!1274129 d!140017))

(declare-fun b!1274175 () Bool)

(declare-fun e!727152 () Bool)

(declare-fun call!62625 () Bool)

(assert (=> b!1274175 (= e!727152 call!62625)))

(declare-fun b!1274176 () Bool)

(declare-fun e!727153 () Bool)

(assert (=> b!1274176 (= e!727153 e!727152)))

(declare-fun lt!575146 () (_ BitVec 64))

(assert (=> b!1274176 (= lt!575146 (select (arr!40270 (_keys!12160 thiss!1551)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42284 0))(
  ( (Unit!42285) )
))
(declare-fun lt!575145 () Unit!42284)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83513 (_ BitVec 64) (_ BitVec 32)) Unit!42284)

(assert (=> b!1274176 (= lt!575145 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!12160 thiss!1551) lt!575146 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83513 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1274176 (arrayContainsKey!0 (_keys!12160 thiss!1551) lt!575146 #b00000000000000000000000000000000)))

(declare-fun lt!575144 () Unit!42284)

(assert (=> b!1274176 (= lt!575144 lt!575145)))

(declare-fun res!847217 () Bool)

(declare-datatypes ((SeekEntryResult!9997 0))(
  ( (MissingZero!9997 (index!42358 (_ BitVec 32))) (Found!9997 (index!42359 (_ BitVec 32))) (Intermediate!9997 (undefined!10809 Bool) (index!42360 (_ BitVec 32)) (x!112729 (_ BitVec 32))) (Undefined!9997) (MissingVacant!9997 (index!42361 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83513 (_ BitVec 32)) SeekEntryResult!9997)

(assert (=> b!1274176 (= res!847217 (= (seekEntryOrOpen!0 (select (arr!40270 (_keys!12160 thiss!1551)) #b00000000000000000000000000000000) (_keys!12160 thiss!1551) (mask!34546 thiss!1551)) (Found!9997 #b00000000000000000000000000000000)))))

(assert (=> b!1274176 (=> (not res!847217) (not e!727152))))

(declare-fun b!1274177 () Bool)

(declare-fun e!727151 () Bool)

(assert (=> b!1274177 (= e!727151 e!727153)))

(declare-fun c!123762 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1274177 (= c!123762 (validKeyInArray!0 (select (arr!40270 (_keys!12160 thiss!1551)) #b00000000000000000000000000000000)))))

(declare-fun d!140019 () Bool)

(declare-fun res!847216 () Bool)

(assert (=> d!140019 (=> res!847216 e!727151)))

(assert (=> d!140019 (= res!847216 (bvsge #b00000000000000000000000000000000 (size!40820 (_keys!12160 thiss!1551))))))

(assert (=> d!140019 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12160 thiss!1551) (mask!34546 thiss!1551)) e!727151)))

(declare-fun bm!62622 () Bool)

(assert (=> bm!62622 (= call!62625 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!12160 thiss!1551) (mask!34546 thiss!1551)))))

(declare-fun b!1274178 () Bool)

(assert (=> b!1274178 (= e!727153 call!62625)))

(assert (= (and d!140019 (not res!847216)) b!1274177))

(assert (= (and b!1274177 c!123762) b!1274176))

(assert (= (and b!1274177 (not c!123762)) b!1274178))

(assert (= (and b!1274176 res!847217) b!1274175))

(assert (= (or b!1274175 b!1274178) bm!62622))

(declare-fun m!1171035 () Bool)

(assert (=> b!1274176 m!1171035))

(declare-fun m!1171037 () Bool)

(assert (=> b!1274176 m!1171037))

(declare-fun m!1171039 () Bool)

(assert (=> b!1274176 m!1171039))

(assert (=> b!1274176 m!1171035))

(declare-fun m!1171041 () Bool)

(assert (=> b!1274176 m!1171041))

(assert (=> b!1274177 m!1171035))

(assert (=> b!1274177 m!1171035))

(declare-fun m!1171043 () Bool)

(assert (=> b!1274177 m!1171043))

(declare-fun m!1171045 () Bool)

(assert (=> bm!62622 m!1171045))

(assert (=> b!1274133 d!140019))

(declare-fun b!1274187 () Bool)

(declare-fun e!727158 () (_ BitVec 32))

(declare-fun call!62628 () (_ BitVec 32))

(assert (=> b!1274187 (= e!727158 call!62628)))

(declare-fun d!140021 () Bool)

(declare-fun lt!575149 () (_ BitVec 32))

(assert (=> d!140021 (and (bvsge lt!575149 #b00000000000000000000000000000000) (bvsle lt!575149 (bvsub (size!40820 (_keys!12160 thiss!1551)) #b00000000000000000000000000000000)))))

(declare-fun e!727159 () (_ BitVec 32))

(assert (=> d!140021 (= lt!575149 e!727159)))

(declare-fun c!123768 () Bool)

(assert (=> d!140021 (= c!123768 (bvsge #b00000000000000000000000000000000 (size!40820 (_keys!12160 thiss!1551))))))

(assert (=> d!140021 (and (bvsle #b00000000000000000000000000000000 (size!40820 (_keys!12160 thiss!1551))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!40820 (_keys!12160 thiss!1551)) (size!40820 (_keys!12160 thiss!1551))))))

(assert (=> d!140021 (= (arrayCountValidKeys!0 (_keys!12160 thiss!1551) #b00000000000000000000000000000000 (size!40820 (_keys!12160 thiss!1551))) lt!575149)))

(declare-fun b!1274188 () Bool)

(assert (=> b!1274188 (= e!727159 e!727158)))

(declare-fun c!123767 () Bool)

(assert (=> b!1274188 (= c!123767 (validKeyInArray!0 (select (arr!40270 (_keys!12160 thiss!1551)) #b00000000000000000000000000000000)))))

(declare-fun b!1274189 () Bool)

(assert (=> b!1274189 (= e!727158 (bvadd #b00000000000000000000000000000001 call!62628))))

(declare-fun bm!62625 () Bool)

(assert (=> bm!62625 (= call!62628 (arrayCountValidKeys!0 (_keys!12160 thiss!1551) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!40820 (_keys!12160 thiss!1551))))))

(declare-fun b!1274190 () Bool)

(assert (=> b!1274190 (= e!727159 #b00000000000000000000000000000000)))

(assert (= (and d!140021 c!123768) b!1274190))

(assert (= (and d!140021 (not c!123768)) b!1274188))

(assert (= (and b!1274188 c!123767) b!1274189))

(assert (= (and b!1274188 (not c!123767)) b!1274187))

(assert (= (or b!1274189 b!1274187) bm!62625))

(assert (=> b!1274188 m!1171035))

(assert (=> b!1274188 m!1171035))

(assert (=> b!1274188 m!1171043))

(declare-fun m!1171047 () Bool)

(assert (=> bm!62625 m!1171047))

(assert (=> b!1274128 d!140021))

(declare-fun d!140023 () Bool)

(declare-fun res!847229 () Bool)

(declare-fun e!727162 () Bool)

(assert (=> d!140023 (=> (not res!847229) (not e!727162))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!140023 (= res!847229 (validMask!0 (mask!34546 thiss!1551)))))

(assert (=> d!140023 (= (simpleValid!479 thiss!1551) e!727162)))

(declare-fun b!1274201 () Bool)

(declare-fun res!847226 () Bool)

(assert (=> b!1274201 (=> (not res!847226) (not e!727162))))

(declare-fun size!40823 (LongMapFixedSize!6198) (_ BitVec 32))

(assert (=> b!1274201 (= res!847226 (= (size!40823 thiss!1551) (bvadd (_size!3154 thiss!1551) (bvsdiv (bvadd (extraKeys!6424 thiss!1551) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1274202 () Bool)

(assert (=> b!1274202 (= e!727162 (and (bvsge (extraKeys!6424 thiss!1551) #b00000000000000000000000000000000) (bvsle (extraKeys!6424 thiss!1551) #b00000000000000000000000000000011) (bvsge (_vacant!3154 thiss!1551) #b00000000000000000000000000000000)))))

(declare-fun b!1274200 () Bool)

(declare-fun res!847227 () Bool)

(assert (=> b!1274200 (=> (not res!847227) (not e!727162))))

(assert (=> b!1274200 (= res!847227 (bvsge (size!40823 thiss!1551) (_size!3154 thiss!1551)))))

(declare-fun b!1274199 () Bool)

(declare-fun res!847228 () Bool)

(assert (=> b!1274199 (=> (not res!847228) (not e!727162))))

(assert (=> b!1274199 (= res!847228 (and (= (size!40819 (_values!6768 thiss!1551)) (bvadd (mask!34546 thiss!1551) #b00000000000000000000000000000001)) (= (size!40820 (_keys!12160 thiss!1551)) (size!40819 (_values!6768 thiss!1551))) (bvsge (_size!3154 thiss!1551) #b00000000000000000000000000000000) (bvsle (_size!3154 thiss!1551) (bvadd (mask!34546 thiss!1551) #b00000000000000000000000000000001))))))

(assert (= (and d!140023 res!847229) b!1274199))

(assert (= (and b!1274199 res!847228) b!1274200))

(assert (= (and b!1274200 res!847227) b!1274201))

(assert (= (and b!1274201 res!847226) b!1274202))

(declare-fun m!1171049 () Bool)

(assert (=> d!140023 m!1171049))

(declare-fun m!1171051 () Bool)

(assert (=> b!1274201 m!1171051))

(assert (=> b!1274200 m!1171051))

(assert (=> start!107726 d!140023))

(declare-fun d!140025 () Bool)

(declare-fun lt!575152 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!647 (List!28729) (InoxSet (_ BitVec 64)))

(assert (=> d!140025 (= lt!575152 (select (content!647 Nil!28726) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!727167 () Bool)

(assert (=> d!140025 (= lt!575152 e!727167)))

(declare-fun res!847234 () Bool)

(assert (=> d!140025 (=> (not res!847234) (not e!727167))))

(assert (=> d!140025 (= res!847234 ((_ is Cons!28725) Nil!28726))))

(assert (=> d!140025 (= (contains!7694 Nil!28726 #b0000000000000000000000000000000000000000000000000000000000000000) lt!575152)))

(declare-fun b!1274207 () Bool)

(declare-fun e!727168 () Bool)

(assert (=> b!1274207 (= e!727167 e!727168)))

(declare-fun res!847235 () Bool)

(assert (=> b!1274207 (=> res!847235 e!727168)))

(assert (=> b!1274207 (= res!847235 (= (h!29934 Nil!28726) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1274208 () Bool)

(assert (=> b!1274208 (= e!727168 (contains!7694 (t!42269 Nil!28726) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!140025 res!847234) b!1274207))

(assert (= (and b!1274207 (not res!847235)) b!1274208))

(declare-fun m!1171053 () Bool)

(assert (=> d!140025 m!1171053))

(declare-fun m!1171055 () Bool)

(assert (=> d!140025 m!1171055))

(declare-fun m!1171057 () Bool)

(assert (=> b!1274208 m!1171057))

(assert (=> b!1274132 d!140025))

(declare-fun d!140027 () Bool)

(declare-fun res!847240 () Bool)

(declare-fun e!727173 () Bool)

(assert (=> d!140027 (=> res!847240 e!727173)))

(assert (=> d!140027 (= res!847240 ((_ is Nil!28726) Nil!28726))))

(assert (=> d!140027 (= (noDuplicate!2076 Nil!28726) e!727173)))

(declare-fun b!1274213 () Bool)

(declare-fun e!727174 () Bool)

(assert (=> b!1274213 (= e!727173 e!727174)))

(declare-fun res!847241 () Bool)

(assert (=> b!1274213 (=> (not res!847241) (not e!727174))))

(assert (=> b!1274213 (= res!847241 (not (contains!7694 (t!42269 Nil!28726) (h!29934 Nil!28726))))))

(declare-fun b!1274214 () Bool)

(assert (=> b!1274214 (= e!727174 (noDuplicate!2076 (t!42269 Nil!28726)))))

(assert (= (and d!140027 (not res!847240)) b!1274213))

(assert (= (and b!1274213 res!847241) b!1274214))

(declare-fun m!1171059 () Bool)

(assert (=> b!1274213 m!1171059))

(declare-fun m!1171061 () Bool)

(assert (=> b!1274214 m!1171061))

(assert (=> b!1274136 d!140027))

(declare-fun d!140029 () Bool)

(declare-fun lt!575153 () Bool)

(assert (=> d!140029 (= lt!575153 (select (content!647 Nil!28726) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!727175 () Bool)

(assert (=> d!140029 (= lt!575153 e!727175)))

(declare-fun res!847242 () Bool)

(assert (=> d!140029 (=> (not res!847242) (not e!727175))))

(assert (=> d!140029 (= res!847242 ((_ is Cons!28725) Nil!28726))))

(assert (=> d!140029 (= (contains!7694 Nil!28726 #b1000000000000000000000000000000000000000000000000000000000000000) lt!575153)))

(declare-fun b!1274215 () Bool)

(declare-fun e!727176 () Bool)

(assert (=> b!1274215 (= e!727175 e!727176)))

(declare-fun res!847243 () Bool)

(assert (=> b!1274215 (=> res!847243 e!727176)))

(assert (=> b!1274215 (= res!847243 (= (h!29934 Nil!28726) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1274216 () Bool)

(assert (=> b!1274216 (= e!727176 (contains!7694 (t!42269 Nil!28726) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!140029 res!847242) b!1274215))

(assert (= (and b!1274215 (not res!847243)) b!1274216))

(assert (=> d!140029 m!1171053))

(declare-fun m!1171063 () Bool)

(assert (=> d!140029 m!1171063))

(declare-fun m!1171065 () Bool)

(assert (=> b!1274216 m!1171065))

(assert (=> b!1274135 d!140029))

(declare-fun condMapEmpty!51362 () Bool)

(declare-fun mapDefault!51362 () ValueCell!15717)

(assert (=> mapNonEmpty!51356 (= condMapEmpty!51362 (= mapRest!51356 ((as const (Array (_ BitVec 32) ValueCell!15717)) mapDefault!51362)))))

(declare-fun e!727181 () Bool)

(declare-fun mapRes!51362 () Bool)

(assert (=> mapNonEmpty!51356 (= tp!97883 (and e!727181 mapRes!51362))))

(declare-fun mapIsEmpty!51362 () Bool)

(assert (=> mapIsEmpty!51362 mapRes!51362))

(declare-fun mapNonEmpty!51362 () Bool)

(declare-fun tp!97893 () Bool)

(declare-fun e!727182 () Bool)

(assert (=> mapNonEmpty!51362 (= mapRes!51362 (and tp!97893 e!727182))))

(declare-fun mapKey!51362 () (_ BitVec 32))

(declare-fun mapRest!51362 () (Array (_ BitVec 32) ValueCell!15717))

(declare-fun mapValue!51362 () ValueCell!15717)

(assert (=> mapNonEmpty!51362 (= mapRest!51356 (store mapRest!51362 mapKey!51362 mapValue!51362))))

(declare-fun b!1274224 () Bool)

(assert (=> b!1274224 (= e!727181 tp_is_empty!33141)))

(declare-fun b!1274223 () Bool)

(assert (=> b!1274223 (= e!727182 tp_is_empty!33141)))

(assert (= (and mapNonEmpty!51356 condMapEmpty!51362) mapIsEmpty!51362))

(assert (= (and mapNonEmpty!51356 (not condMapEmpty!51362)) mapNonEmpty!51362))

(assert (= (and mapNonEmpty!51362 ((_ is ValueCellFull!15717) mapValue!51362)) b!1274223))

(assert (= (and mapNonEmpty!51356 ((_ is ValueCellFull!15717) mapDefault!51362)) b!1274224))

(declare-fun m!1171067 () Bool)

(assert (=> mapNonEmpty!51362 m!1171067))

(check-sat tp_is_empty!33141 b_and!45837 (not b_next!27771) (not bm!62622) (not b!1274216) (not b!1274201) (not b!1274188) (not d!140023) (not b!1274213) (not b!1274214) (not b!1274177) (not bm!62625) (not d!140029) (not b!1274200) (not mapNonEmpty!51362) (not d!140025) (not b!1274208) (not b!1274176))
(check-sat b_and!45837 (not b_next!27771))
