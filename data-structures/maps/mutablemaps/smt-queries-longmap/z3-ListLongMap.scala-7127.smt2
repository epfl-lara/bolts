; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90474 () Bool)

(assert start!90474)

(declare-fun b!1034890 () Bool)

(declare-fun b_free!20817 () Bool)

(declare-fun b_next!20817 () Bool)

(assert (=> b!1034890 (= b_free!20817 (not b_next!20817))))

(declare-fun tp!73564 () Bool)

(declare-fun b_and!33335 () Bool)

(assert (=> b!1034890 (= tp!73564 b_and!33335)))

(declare-fun b!1034888 () Bool)

(declare-fun res!691181 () Bool)

(declare-fun e!585122 () Bool)

(assert (=> b!1034888 (=> (not res!691181) (not e!585122))))

(declare-datatypes ((V!37589 0))(
  ( (V!37590 (val!12319 Int)) )
))
(declare-datatypes ((ValueCell!11565 0))(
  ( (ValueCellFull!11565 (v!14900 V!37589)) (EmptyCell!11565) )
))
(declare-datatypes ((array!65144 0))(
  ( (array!65145 (arr!31359 (Array (_ BitVec 32) (_ BitVec 64))) (size!31885 (_ BitVec 32))) )
))
(declare-datatypes ((array!65146 0))(
  ( (array!65147 (arr!31360 (Array (_ BitVec 32) ValueCell!11565)) (size!31886 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5724 0))(
  ( (LongMapFixedSize!5725 (defaultEntry!6240 Int) (mask!30105 (_ BitVec 32)) (extraKeys!5970 (_ BitVec 32)) (zeroValue!6074 V!37589) (minValue!6076 V!37589) (_size!2917 (_ BitVec 32)) (_keys!11421 array!65144) (_values!6263 array!65146) (_vacant!2917 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5724)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1034888 (= res!691181 (validMask!0 (mask!30105 thiss!1427)))))

(declare-fun b!1034889 () Bool)

(assert (=> b!1034889 (= e!585122 (and (= (size!31886 (_values!6263 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30105 thiss!1427))) (not (= (size!31885 (_keys!11421 thiss!1427)) (size!31886 (_values!6263 thiss!1427))))))))

(declare-fun mapIsEmpty!38301 () Bool)

(declare-fun mapRes!38301 () Bool)

(assert (=> mapIsEmpty!38301 mapRes!38301))

(declare-fun tp_is_empty!24537 () Bool)

(declare-fun e!585120 () Bool)

(declare-fun e!585125 () Bool)

(declare-fun array_inv!24091 (array!65144) Bool)

(declare-fun array_inv!24092 (array!65146) Bool)

(assert (=> b!1034890 (= e!585125 (and tp!73564 tp_is_empty!24537 (array_inv!24091 (_keys!11421 thiss!1427)) (array_inv!24092 (_values!6263 thiss!1427)) e!585120))))

(declare-fun res!691182 () Bool)

(assert (=> start!90474 (=> (not res!691182) (not e!585122))))

(declare-fun valid!2112 (LongMapFixedSize!5724) Bool)

(assert (=> start!90474 (= res!691182 (valid!2112 thiss!1427))))

(assert (=> start!90474 e!585122))

(assert (=> start!90474 e!585125))

(assert (=> start!90474 true))

(declare-fun b!1034891 () Bool)

(declare-fun res!691180 () Bool)

(assert (=> b!1034891 (=> (not res!691180) (not e!585122))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1034891 (= res!691180 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1034892 () Bool)

(declare-fun e!585121 () Bool)

(assert (=> b!1034892 (= e!585121 tp_is_empty!24537)))

(declare-fun b!1034893 () Bool)

(declare-fun e!585123 () Bool)

(assert (=> b!1034893 (= e!585123 tp_is_empty!24537)))

(declare-fun b!1034894 () Bool)

(assert (=> b!1034894 (= e!585120 (and e!585123 mapRes!38301))))

(declare-fun condMapEmpty!38301 () Bool)

(declare-fun mapDefault!38301 () ValueCell!11565)

(assert (=> b!1034894 (= condMapEmpty!38301 (= (arr!31360 (_values!6263 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11565)) mapDefault!38301)))))

(declare-fun mapNonEmpty!38301 () Bool)

(declare-fun tp!73565 () Bool)

(assert (=> mapNonEmpty!38301 (= mapRes!38301 (and tp!73565 e!585121))))

(declare-fun mapRest!38301 () (Array (_ BitVec 32) ValueCell!11565))

(declare-fun mapKey!38301 () (_ BitVec 32))

(declare-fun mapValue!38301 () ValueCell!11565)

(assert (=> mapNonEmpty!38301 (= (arr!31360 (_values!6263 thiss!1427)) (store mapRest!38301 mapKey!38301 mapValue!38301))))

(assert (= (and start!90474 res!691182) b!1034891))

(assert (= (and b!1034891 res!691180) b!1034888))

(assert (= (and b!1034888 res!691181) b!1034889))

(assert (= (and b!1034894 condMapEmpty!38301) mapIsEmpty!38301))

(assert (= (and b!1034894 (not condMapEmpty!38301)) mapNonEmpty!38301))

(get-info :version)

(assert (= (and mapNonEmpty!38301 ((_ is ValueCellFull!11565) mapValue!38301)) b!1034892))

(assert (= (and b!1034894 ((_ is ValueCellFull!11565) mapDefault!38301)) b!1034893))

(assert (= b!1034890 b!1034894))

(assert (= start!90474 b!1034890))

(declare-fun m!955231 () Bool)

(assert (=> b!1034888 m!955231))

(declare-fun m!955233 () Bool)

(assert (=> b!1034890 m!955233))

(declare-fun m!955235 () Bool)

(assert (=> b!1034890 m!955235))

(declare-fun m!955237 () Bool)

(assert (=> start!90474 m!955237))

(declare-fun m!955239 () Bool)

(assert (=> mapNonEmpty!38301 m!955239))

(check-sat (not start!90474) (not mapNonEmpty!38301) b_and!33335 (not b_next!20817) (not b!1034888) (not b!1034890) tp_is_empty!24537)
(check-sat b_and!33335 (not b_next!20817))
(get-model)

(declare-fun d!124415 () Bool)

(declare-fun res!691198 () Bool)

(declare-fun e!585146 () Bool)

(assert (=> d!124415 (=> (not res!691198) (not e!585146))))

(declare-fun simpleValid!407 (LongMapFixedSize!5724) Bool)

(assert (=> d!124415 (= res!691198 (simpleValid!407 thiss!1427))))

(assert (=> d!124415 (= (valid!2112 thiss!1427) e!585146)))

(declare-fun b!1034922 () Bool)

(declare-fun res!691199 () Bool)

(assert (=> b!1034922 (=> (not res!691199) (not e!585146))))

(declare-fun arrayCountValidKeys!0 (array!65144 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1034922 (= res!691199 (= (arrayCountValidKeys!0 (_keys!11421 thiss!1427) #b00000000000000000000000000000000 (size!31885 (_keys!11421 thiss!1427))) (_size!2917 thiss!1427)))))

(declare-fun b!1034923 () Bool)

(declare-fun res!691200 () Bool)

(assert (=> b!1034923 (=> (not res!691200) (not e!585146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65144 (_ BitVec 32)) Bool)

(assert (=> b!1034923 (= res!691200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11421 thiss!1427) (mask!30105 thiss!1427)))))

(declare-fun b!1034924 () Bool)

(declare-datatypes ((List!22026 0))(
  ( (Nil!22023) (Cons!22022 (h!23224 (_ BitVec 64)) (t!31236 List!22026)) )
))
(declare-fun arrayNoDuplicates!0 (array!65144 (_ BitVec 32) List!22026) Bool)

(assert (=> b!1034924 (= e!585146 (arrayNoDuplicates!0 (_keys!11421 thiss!1427) #b00000000000000000000000000000000 Nil!22023))))

(assert (= (and d!124415 res!691198) b!1034922))

(assert (= (and b!1034922 res!691199) b!1034923))

(assert (= (and b!1034923 res!691200) b!1034924))

(declare-fun m!955251 () Bool)

(assert (=> d!124415 m!955251))

(declare-fun m!955253 () Bool)

(assert (=> b!1034922 m!955253))

(declare-fun m!955255 () Bool)

(assert (=> b!1034923 m!955255))

(declare-fun m!955257 () Bool)

(assert (=> b!1034924 m!955257))

(assert (=> start!90474 d!124415))

(declare-fun d!124417 () Bool)

(assert (=> d!124417 (= (array_inv!24091 (_keys!11421 thiss!1427)) (bvsge (size!31885 (_keys!11421 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1034890 d!124417))

(declare-fun d!124419 () Bool)

(assert (=> d!124419 (= (array_inv!24092 (_values!6263 thiss!1427)) (bvsge (size!31886 (_values!6263 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1034890 d!124419))

(declare-fun d!124421 () Bool)

(assert (=> d!124421 (= (validMask!0 (mask!30105 thiss!1427)) (and (or (= (mask!30105 thiss!1427) #b00000000000000000000000000000111) (= (mask!30105 thiss!1427) #b00000000000000000000000000001111) (= (mask!30105 thiss!1427) #b00000000000000000000000000011111) (= (mask!30105 thiss!1427) #b00000000000000000000000000111111) (= (mask!30105 thiss!1427) #b00000000000000000000000001111111) (= (mask!30105 thiss!1427) #b00000000000000000000000011111111) (= (mask!30105 thiss!1427) #b00000000000000000000000111111111) (= (mask!30105 thiss!1427) #b00000000000000000000001111111111) (= (mask!30105 thiss!1427) #b00000000000000000000011111111111) (= (mask!30105 thiss!1427) #b00000000000000000000111111111111) (= (mask!30105 thiss!1427) #b00000000000000000001111111111111) (= (mask!30105 thiss!1427) #b00000000000000000011111111111111) (= (mask!30105 thiss!1427) #b00000000000000000111111111111111) (= (mask!30105 thiss!1427) #b00000000000000001111111111111111) (= (mask!30105 thiss!1427) #b00000000000000011111111111111111) (= (mask!30105 thiss!1427) #b00000000000000111111111111111111) (= (mask!30105 thiss!1427) #b00000000000001111111111111111111) (= (mask!30105 thiss!1427) #b00000000000011111111111111111111) (= (mask!30105 thiss!1427) #b00000000000111111111111111111111) (= (mask!30105 thiss!1427) #b00000000001111111111111111111111) (= (mask!30105 thiss!1427) #b00000000011111111111111111111111) (= (mask!30105 thiss!1427) #b00000000111111111111111111111111) (= (mask!30105 thiss!1427) #b00000001111111111111111111111111) (= (mask!30105 thiss!1427) #b00000011111111111111111111111111) (= (mask!30105 thiss!1427) #b00000111111111111111111111111111) (= (mask!30105 thiss!1427) #b00001111111111111111111111111111) (= (mask!30105 thiss!1427) #b00011111111111111111111111111111) (= (mask!30105 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30105 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1034888 d!124421))

(declare-fun condMapEmpty!38307 () Bool)

(declare-fun mapDefault!38307 () ValueCell!11565)

(assert (=> mapNonEmpty!38301 (= condMapEmpty!38307 (= mapRest!38301 ((as const (Array (_ BitVec 32) ValueCell!11565)) mapDefault!38307)))))

(declare-fun e!585151 () Bool)

(declare-fun mapRes!38307 () Bool)

(assert (=> mapNonEmpty!38301 (= tp!73565 (and e!585151 mapRes!38307))))

(declare-fun b!1034932 () Bool)

(assert (=> b!1034932 (= e!585151 tp_is_empty!24537)))

(declare-fun mapNonEmpty!38307 () Bool)

(declare-fun tp!73574 () Bool)

(declare-fun e!585152 () Bool)

(assert (=> mapNonEmpty!38307 (= mapRes!38307 (and tp!73574 e!585152))))

(declare-fun mapRest!38307 () (Array (_ BitVec 32) ValueCell!11565))

(declare-fun mapValue!38307 () ValueCell!11565)

(declare-fun mapKey!38307 () (_ BitVec 32))

(assert (=> mapNonEmpty!38307 (= mapRest!38301 (store mapRest!38307 mapKey!38307 mapValue!38307))))

(declare-fun b!1034931 () Bool)

(assert (=> b!1034931 (= e!585152 tp_is_empty!24537)))

(declare-fun mapIsEmpty!38307 () Bool)

(assert (=> mapIsEmpty!38307 mapRes!38307))

(assert (= (and mapNonEmpty!38301 condMapEmpty!38307) mapIsEmpty!38307))

(assert (= (and mapNonEmpty!38301 (not condMapEmpty!38307)) mapNonEmpty!38307))

(assert (= (and mapNonEmpty!38307 ((_ is ValueCellFull!11565) mapValue!38307)) b!1034931))

(assert (= (and mapNonEmpty!38301 ((_ is ValueCellFull!11565) mapDefault!38307)) b!1034932))

(declare-fun m!955259 () Bool)

(assert (=> mapNonEmpty!38307 m!955259))

(check-sat tp_is_empty!24537 (not d!124415) (not b!1034922) b_and!33335 (not b_next!20817) (not mapNonEmpty!38307) (not b!1034923) (not b!1034924))
(check-sat b_and!33335 (not b_next!20817))
(get-model)

(declare-fun b!1034941 () Bool)

(declare-fun e!585159 () Bool)

(declare-fun call!43768 () Bool)

(assert (=> b!1034941 (= e!585159 call!43768)))

(declare-fun bm!43765 () Bool)

(assert (=> bm!43765 (= call!43768 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11421 thiss!1427) (mask!30105 thiss!1427)))))

(declare-fun b!1034942 () Bool)

(declare-fun e!585160 () Bool)

(declare-fun e!585161 () Bool)

(assert (=> b!1034942 (= e!585160 e!585161)))

(declare-fun c!104651 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1034942 (= c!104651 (validKeyInArray!0 (select (arr!31359 (_keys!11421 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1034943 () Bool)

(assert (=> b!1034943 (= e!585161 call!43768)))

(declare-fun b!1034944 () Bool)

(assert (=> b!1034944 (= e!585161 e!585159)))

(declare-fun lt!456704 () (_ BitVec 64))

(assert (=> b!1034944 (= lt!456704 (select (arr!31359 (_keys!11421 thiss!1427)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33861 0))(
  ( (Unit!33862) )
))
(declare-fun lt!456705 () Unit!33861)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65144 (_ BitVec 64) (_ BitVec 32)) Unit!33861)

(assert (=> b!1034944 (= lt!456705 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11421 thiss!1427) lt!456704 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65144 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1034944 (arrayContainsKey!0 (_keys!11421 thiss!1427) lt!456704 #b00000000000000000000000000000000)))

(declare-fun lt!456706 () Unit!33861)

(assert (=> b!1034944 (= lt!456706 lt!456705)))

(declare-fun res!691205 () Bool)

(declare-datatypes ((SeekEntryResult!9736 0))(
  ( (MissingZero!9736 (index!41314 (_ BitVec 32))) (Found!9736 (index!41315 (_ BitVec 32))) (Intermediate!9736 (undefined!10548 Bool) (index!41316 (_ BitVec 32)) (x!92292 (_ BitVec 32))) (Undefined!9736) (MissingVacant!9736 (index!41317 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65144 (_ BitVec 32)) SeekEntryResult!9736)

(assert (=> b!1034944 (= res!691205 (= (seekEntryOrOpen!0 (select (arr!31359 (_keys!11421 thiss!1427)) #b00000000000000000000000000000000) (_keys!11421 thiss!1427) (mask!30105 thiss!1427)) (Found!9736 #b00000000000000000000000000000000)))))

(assert (=> b!1034944 (=> (not res!691205) (not e!585159))))

(declare-fun d!124423 () Bool)

(declare-fun res!691206 () Bool)

(assert (=> d!124423 (=> res!691206 e!585160)))

(assert (=> d!124423 (= res!691206 (bvsge #b00000000000000000000000000000000 (size!31885 (_keys!11421 thiss!1427))))))

(assert (=> d!124423 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11421 thiss!1427) (mask!30105 thiss!1427)) e!585160)))

(assert (= (and d!124423 (not res!691206)) b!1034942))

(assert (= (and b!1034942 c!104651) b!1034944))

(assert (= (and b!1034942 (not c!104651)) b!1034943))

(assert (= (and b!1034944 res!691205) b!1034941))

(assert (= (or b!1034941 b!1034943) bm!43765))

(declare-fun m!955261 () Bool)

(assert (=> bm!43765 m!955261))

(declare-fun m!955263 () Bool)

(assert (=> b!1034942 m!955263))

(assert (=> b!1034942 m!955263))

(declare-fun m!955265 () Bool)

(assert (=> b!1034942 m!955265))

(assert (=> b!1034944 m!955263))

(declare-fun m!955267 () Bool)

(assert (=> b!1034944 m!955267))

(declare-fun m!955269 () Bool)

(assert (=> b!1034944 m!955269))

(assert (=> b!1034944 m!955263))

(declare-fun m!955271 () Bool)

(assert (=> b!1034944 m!955271))

(assert (=> b!1034923 d!124423))

(declare-fun b!1034955 () Bool)

(declare-fun e!585171 () Bool)

(declare-fun e!585170 () Bool)

(assert (=> b!1034955 (= e!585171 e!585170)))

(declare-fun c!104654 () Bool)

(assert (=> b!1034955 (= c!104654 (validKeyInArray!0 (select (arr!31359 (_keys!11421 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1034956 () Bool)

(declare-fun e!585172 () Bool)

(assert (=> b!1034956 (= e!585172 e!585171)))

(declare-fun res!691213 () Bool)

(assert (=> b!1034956 (=> (not res!691213) (not e!585171))))

(declare-fun e!585173 () Bool)

(assert (=> b!1034956 (= res!691213 (not e!585173))))

(declare-fun res!691214 () Bool)

(assert (=> b!1034956 (=> (not res!691214) (not e!585173))))

(assert (=> b!1034956 (= res!691214 (validKeyInArray!0 (select (arr!31359 (_keys!11421 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!124425 () Bool)

(declare-fun res!691215 () Bool)

(assert (=> d!124425 (=> res!691215 e!585172)))

(assert (=> d!124425 (= res!691215 (bvsge #b00000000000000000000000000000000 (size!31885 (_keys!11421 thiss!1427))))))

(assert (=> d!124425 (= (arrayNoDuplicates!0 (_keys!11421 thiss!1427) #b00000000000000000000000000000000 Nil!22023) e!585172)))

(declare-fun b!1034957 () Bool)

(declare-fun call!43771 () Bool)

(assert (=> b!1034957 (= e!585170 call!43771)))

(declare-fun b!1034958 () Bool)

(declare-fun contains!6040 (List!22026 (_ BitVec 64)) Bool)

(assert (=> b!1034958 (= e!585173 (contains!6040 Nil!22023 (select (arr!31359 (_keys!11421 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1034959 () Bool)

(assert (=> b!1034959 (= e!585170 call!43771)))

(declare-fun bm!43768 () Bool)

(assert (=> bm!43768 (= call!43771 (arrayNoDuplicates!0 (_keys!11421 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104654 (Cons!22022 (select (arr!31359 (_keys!11421 thiss!1427)) #b00000000000000000000000000000000) Nil!22023) Nil!22023)))))

(assert (= (and d!124425 (not res!691215)) b!1034956))

(assert (= (and b!1034956 res!691214) b!1034958))

(assert (= (and b!1034956 res!691213) b!1034955))

(assert (= (and b!1034955 c!104654) b!1034959))

(assert (= (and b!1034955 (not c!104654)) b!1034957))

(assert (= (or b!1034959 b!1034957) bm!43768))

(assert (=> b!1034955 m!955263))

(assert (=> b!1034955 m!955263))

(assert (=> b!1034955 m!955265))

(assert (=> b!1034956 m!955263))

(assert (=> b!1034956 m!955263))

(assert (=> b!1034956 m!955265))

(assert (=> b!1034958 m!955263))

(assert (=> b!1034958 m!955263))

(declare-fun m!955273 () Bool)

(assert (=> b!1034958 m!955273))

(assert (=> bm!43768 m!955263))

(declare-fun m!955275 () Bool)

(assert (=> bm!43768 m!955275))

(assert (=> b!1034924 d!124425))

(declare-fun b!1034968 () Bool)

(declare-fun e!585178 () (_ BitVec 32))

(declare-fun e!585179 () (_ BitVec 32))

(assert (=> b!1034968 (= e!585178 e!585179)))

(declare-fun c!104660 () Bool)

(assert (=> b!1034968 (= c!104660 (validKeyInArray!0 (select (arr!31359 (_keys!11421 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43771 () Bool)

(declare-fun call!43774 () (_ BitVec 32))

(assert (=> bm!43771 (= call!43774 (arrayCountValidKeys!0 (_keys!11421 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31885 (_keys!11421 thiss!1427))))))

(declare-fun b!1034969 () Bool)

(assert (=> b!1034969 (= e!585179 call!43774)))

(declare-fun b!1034970 () Bool)

(assert (=> b!1034970 (= e!585178 #b00000000000000000000000000000000)))

(declare-fun d!124427 () Bool)

(declare-fun lt!456709 () (_ BitVec 32))

(assert (=> d!124427 (and (bvsge lt!456709 #b00000000000000000000000000000000) (bvsle lt!456709 (bvsub (size!31885 (_keys!11421 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!124427 (= lt!456709 e!585178)))

(declare-fun c!104659 () Bool)

(assert (=> d!124427 (= c!104659 (bvsge #b00000000000000000000000000000000 (size!31885 (_keys!11421 thiss!1427))))))

(assert (=> d!124427 (and (bvsle #b00000000000000000000000000000000 (size!31885 (_keys!11421 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31885 (_keys!11421 thiss!1427)) (size!31885 (_keys!11421 thiss!1427))))))

(assert (=> d!124427 (= (arrayCountValidKeys!0 (_keys!11421 thiss!1427) #b00000000000000000000000000000000 (size!31885 (_keys!11421 thiss!1427))) lt!456709)))

(declare-fun b!1034971 () Bool)

(assert (=> b!1034971 (= e!585179 (bvadd #b00000000000000000000000000000001 call!43774))))

(assert (= (and d!124427 c!104659) b!1034970))

(assert (= (and d!124427 (not c!104659)) b!1034968))

(assert (= (and b!1034968 c!104660) b!1034971))

(assert (= (and b!1034968 (not c!104660)) b!1034969))

(assert (= (or b!1034971 b!1034969) bm!43771))

(assert (=> b!1034968 m!955263))

(assert (=> b!1034968 m!955263))

(assert (=> b!1034968 m!955265))

(declare-fun m!955277 () Bool)

(assert (=> bm!43771 m!955277))

(assert (=> b!1034922 d!124427))

(declare-fun d!124429 () Bool)

(declare-fun res!691226 () Bool)

(declare-fun e!585182 () Bool)

(assert (=> d!124429 (=> (not res!691226) (not e!585182))))

(assert (=> d!124429 (= res!691226 (validMask!0 (mask!30105 thiss!1427)))))

(assert (=> d!124429 (= (simpleValid!407 thiss!1427) e!585182)))

(declare-fun b!1034982 () Bool)

(declare-fun res!691224 () Bool)

(assert (=> b!1034982 (=> (not res!691224) (not e!585182))))

(declare-fun size!31889 (LongMapFixedSize!5724) (_ BitVec 32))

(assert (=> b!1034982 (= res!691224 (= (size!31889 thiss!1427) (bvadd (_size!2917 thiss!1427) (bvsdiv (bvadd (extraKeys!5970 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1034981 () Bool)

(declare-fun res!691225 () Bool)

(assert (=> b!1034981 (=> (not res!691225) (not e!585182))))

(assert (=> b!1034981 (= res!691225 (bvsge (size!31889 thiss!1427) (_size!2917 thiss!1427)))))

(declare-fun b!1034980 () Bool)

(declare-fun res!691227 () Bool)

(assert (=> b!1034980 (=> (not res!691227) (not e!585182))))

(assert (=> b!1034980 (= res!691227 (and (= (size!31886 (_values!6263 thiss!1427)) (bvadd (mask!30105 thiss!1427) #b00000000000000000000000000000001)) (= (size!31885 (_keys!11421 thiss!1427)) (size!31886 (_values!6263 thiss!1427))) (bvsge (_size!2917 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2917 thiss!1427) (bvadd (mask!30105 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun b!1034983 () Bool)

(assert (=> b!1034983 (= e!585182 (and (bvsge (extraKeys!5970 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5970 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2917 thiss!1427) #b00000000000000000000000000000000)))))

(assert (= (and d!124429 res!691226) b!1034980))

(assert (= (and b!1034980 res!691227) b!1034981))

(assert (= (and b!1034981 res!691225) b!1034982))

(assert (= (and b!1034982 res!691224) b!1034983))

(assert (=> d!124429 m!955231))

(declare-fun m!955279 () Bool)

(assert (=> b!1034982 m!955279))

(assert (=> b!1034981 m!955279))

(assert (=> d!124415 d!124429))

(declare-fun condMapEmpty!38308 () Bool)

(declare-fun mapDefault!38308 () ValueCell!11565)

(assert (=> mapNonEmpty!38307 (= condMapEmpty!38308 (= mapRest!38307 ((as const (Array (_ BitVec 32) ValueCell!11565)) mapDefault!38308)))))

(declare-fun e!585183 () Bool)

(declare-fun mapRes!38308 () Bool)

(assert (=> mapNonEmpty!38307 (= tp!73574 (and e!585183 mapRes!38308))))

(declare-fun b!1034985 () Bool)

(assert (=> b!1034985 (= e!585183 tp_is_empty!24537)))

(declare-fun mapNonEmpty!38308 () Bool)

(declare-fun tp!73575 () Bool)

(declare-fun e!585184 () Bool)

(assert (=> mapNonEmpty!38308 (= mapRes!38308 (and tp!73575 e!585184))))

(declare-fun mapKey!38308 () (_ BitVec 32))

(declare-fun mapRest!38308 () (Array (_ BitVec 32) ValueCell!11565))

(declare-fun mapValue!38308 () ValueCell!11565)

(assert (=> mapNonEmpty!38308 (= mapRest!38307 (store mapRest!38308 mapKey!38308 mapValue!38308))))

(declare-fun b!1034984 () Bool)

(assert (=> b!1034984 (= e!585184 tp_is_empty!24537)))

(declare-fun mapIsEmpty!38308 () Bool)

(assert (=> mapIsEmpty!38308 mapRes!38308))

(assert (= (and mapNonEmpty!38307 condMapEmpty!38308) mapIsEmpty!38308))

(assert (= (and mapNonEmpty!38307 (not condMapEmpty!38308)) mapNonEmpty!38308))

(assert (= (and mapNonEmpty!38308 ((_ is ValueCellFull!11565) mapValue!38308)) b!1034984))

(assert (= (and mapNonEmpty!38307 ((_ is ValueCellFull!11565) mapDefault!38308)) b!1034985))

(declare-fun m!955281 () Bool)

(assert (=> mapNonEmpty!38308 m!955281))

(check-sat (not b!1034942) tp_is_empty!24537 (not bm!43771) (not b!1034982) b_and!33335 (not bm!43765) (not b!1034958) (not b_next!20817) (not d!124429) (not b!1034981) (not b!1034955) (not b!1034968) (not b!1034944) (not mapNonEmpty!38308) (not b!1034956) (not bm!43768))
(check-sat b_and!33335 (not b_next!20817))
