; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90820 () Bool)

(assert start!90820)

(declare-fun b!1037797 () Bool)

(declare-fun b_free!20919 () Bool)

(declare-fun b_next!20919 () Bool)

(assert (=> b!1037797 (= b_free!20919 (not b_next!20919))))

(declare-fun tp!73913 () Bool)

(declare-fun b_and!33469 () Bool)

(assert (=> b!1037797 (= tp!73913 b_and!33469)))

(declare-fun b!1037796 () Bool)

(declare-fun e!587179 () Bool)

(declare-datatypes ((V!37725 0))(
  ( (V!37726 (val!12370 Int)) )
))
(declare-datatypes ((ValueCell!11616 0))(
  ( (ValueCellFull!11616 (v!14955 V!37725)) (EmptyCell!11616) )
))
(declare-datatypes ((array!65372 0))(
  ( (array!65373 (arr!31461 (Array (_ BitVec 32) (_ BitVec 64))) (size!31992 (_ BitVec 32))) )
))
(declare-datatypes ((array!65374 0))(
  ( (array!65375 (arr!31462 (Array (_ BitVec 32) ValueCell!11616)) (size!31993 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5826 0))(
  ( (LongMapFixedSize!5827 (defaultEntry!6295 Int) (mask!30218 (_ BitVec 32)) (extraKeys!6023 (_ BitVec 32)) (zeroValue!6129 V!37725) (minValue!6129 V!37725) (_size!2968 (_ BitVec 32)) (_keys!11491 array!65372) (_values!6318 array!65374) (_vacant!2968 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5826)

(declare-datatypes ((List!22046 0))(
  ( (Nil!22043) (Cons!22042 (h!23245 (_ BitVec 64)) (t!31267 List!22046)) )
))
(declare-fun arrayNoDuplicates!0 (array!65372 (_ BitVec 32) List!22046) Bool)

(assert (=> b!1037796 (= e!587179 (arrayNoDuplicates!0 (_keys!11491 thiss!1427) #b00000000000000000000000000000000 Nil!22043))))

(declare-fun e!587178 () Bool)

(declare-fun tp_is_empty!24639 () Bool)

(declare-fun e!587176 () Bool)

(declare-fun array_inv!24165 (array!65372) Bool)

(declare-fun array_inv!24166 (array!65374) Bool)

(assert (=> b!1037797 (= e!587176 (and tp!73913 tp_is_empty!24639 (array_inv!24165 (_keys!11491 thiss!1427)) (array_inv!24166 (_values!6318 thiss!1427)) e!587178))))

(declare-fun mapNonEmpty!38496 () Bool)

(declare-fun mapRes!38496 () Bool)

(declare-fun tp!73912 () Bool)

(declare-fun e!587174 () Bool)

(assert (=> mapNonEmpty!38496 (= mapRes!38496 (and tp!73912 e!587174))))

(declare-fun mapValue!38496 () ValueCell!11616)

(declare-fun mapRest!38496 () (Array (_ BitVec 32) ValueCell!11616))

(declare-fun mapKey!38496 () (_ BitVec 32))

(assert (=> mapNonEmpty!38496 (= (arr!31462 (_values!6318 thiss!1427)) (store mapRest!38496 mapKey!38496 mapValue!38496))))

(declare-fun b!1037798 () Bool)

(declare-fun e!587175 () Bool)

(assert (=> b!1037798 (= e!587175 (not e!587179))))

(declare-fun res!692442 () Bool)

(assert (=> b!1037798 (=> res!692442 e!587179)))

(assert (=> b!1037798 (= res!692442 (or (bvsge (size!31992 (_keys!11491 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31992 (_keys!11491 thiss!1427)))))))

(declare-datatypes ((SeekEntryResult!9757 0))(
  ( (MissingZero!9757 (index!41398 (_ BitVec 32))) (Found!9757 (index!41399 (_ BitVec 32))) (Intermediate!9757 (undefined!10569 Bool) (index!41400 (_ BitVec 32)) (x!92591 (_ BitVec 32))) (Undefined!9757) (MissingVacant!9757 (index!41401 (_ BitVec 32))) )
))
(declare-fun lt!457573 () SeekEntryResult!9757)

(declare-fun arrayCountValidKeys!0 (array!65372 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1037798 (= (arrayCountValidKeys!0 (array!65373 (store (arr!31461 (_keys!11491 thiss!1427)) (index!41399 lt!457573) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31992 (_keys!11491 thiss!1427))) #b00000000000000000000000000000000 (size!31992 (_keys!11491 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11491 thiss!1427) #b00000000000000000000000000000000 (size!31992 (_keys!11491 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33946 0))(
  ( (Unit!33947) )
))
(declare-fun lt!457572 () Unit!33946)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65372 (_ BitVec 32) (_ BitVec 64)) Unit!33946)

(assert (=> b!1037798 (= lt!457572 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11491 thiss!1427) (index!41399 lt!457573) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037799 () Bool)

(assert (=> b!1037799 (= e!587174 tp_is_empty!24639)))

(declare-fun b!1037801 () Bool)

(declare-fun res!692443 () Bool)

(assert (=> b!1037801 (=> res!692443 e!587179)))

(declare-fun noDuplicate!1495 (List!22046) Bool)

(assert (=> b!1037801 (= res!692443 (not (noDuplicate!1495 Nil!22043)))))

(declare-fun b!1037802 () Bool)

(declare-fun e!587172 () Bool)

(assert (=> b!1037802 (= e!587172 tp_is_empty!24639)))

(declare-fun b!1037803 () Bool)

(declare-fun res!692446 () Bool)

(assert (=> b!1037803 (=> res!692446 e!587179)))

(declare-fun contains!6051 (List!22046 (_ BitVec 64)) Bool)

(assert (=> b!1037803 (= res!692446 (contains!6051 Nil!22043 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037804 () Bool)

(declare-fun e!587173 () Bool)

(assert (=> b!1037804 (= e!587173 e!587175)))

(declare-fun res!692444 () Bool)

(assert (=> b!1037804 (=> (not res!692444) (not e!587175))))

(get-info :version)

(assert (=> b!1037804 (= res!692444 ((_ is Found!9757) lt!457573))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65372 (_ BitVec 32)) SeekEntryResult!9757)

(assert (=> b!1037804 (= lt!457573 (seekEntry!0 key!909 (_keys!11491 thiss!1427) (mask!30218 thiss!1427)))))

(declare-fun mapIsEmpty!38496 () Bool)

(assert (=> mapIsEmpty!38496 mapRes!38496))

(declare-fun b!1037805 () Bool)

(declare-fun res!692445 () Bool)

(assert (=> b!1037805 (=> (not res!692445) (not e!587173))))

(assert (=> b!1037805 (= res!692445 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1037806 () Bool)

(declare-fun res!692448 () Bool)

(assert (=> b!1037806 (=> res!692448 e!587179)))

(assert (=> b!1037806 (= res!692448 (contains!6051 Nil!22043 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!692447 () Bool)

(assert (=> start!90820 (=> (not res!692447) (not e!587173))))

(declare-fun valid!2148 (LongMapFixedSize!5826) Bool)

(assert (=> start!90820 (= res!692447 (valid!2148 thiss!1427))))

(assert (=> start!90820 e!587173))

(assert (=> start!90820 e!587176))

(assert (=> start!90820 true))

(declare-fun b!1037800 () Bool)

(assert (=> b!1037800 (= e!587178 (and e!587172 mapRes!38496))))

(declare-fun condMapEmpty!38496 () Bool)

(declare-fun mapDefault!38496 () ValueCell!11616)

(assert (=> b!1037800 (= condMapEmpty!38496 (= (arr!31462 (_values!6318 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11616)) mapDefault!38496)))))

(assert (= (and start!90820 res!692447) b!1037805))

(assert (= (and b!1037805 res!692445) b!1037804))

(assert (= (and b!1037804 res!692444) b!1037798))

(assert (= (and b!1037798 (not res!692442)) b!1037801))

(assert (= (and b!1037801 (not res!692443)) b!1037806))

(assert (= (and b!1037806 (not res!692448)) b!1037803))

(assert (= (and b!1037803 (not res!692446)) b!1037796))

(assert (= (and b!1037800 condMapEmpty!38496) mapIsEmpty!38496))

(assert (= (and b!1037800 (not condMapEmpty!38496)) mapNonEmpty!38496))

(assert (= (and mapNonEmpty!38496 ((_ is ValueCellFull!11616) mapValue!38496)) b!1037799))

(assert (= (and b!1037800 ((_ is ValueCellFull!11616) mapDefault!38496)) b!1037802))

(assert (= b!1037797 b!1037800))

(assert (= start!90820 b!1037797))

(declare-fun m!958035 () Bool)

(assert (=> b!1037803 m!958035))

(declare-fun m!958037 () Bool)

(assert (=> b!1037797 m!958037))

(declare-fun m!958039 () Bool)

(assert (=> b!1037797 m!958039))

(declare-fun m!958041 () Bool)

(assert (=> b!1037806 m!958041))

(declare-fun m!958043 () Bool)

(assert (=> mapNonEmpty!38496 m!958043))

(declare-fun m!958045 () Bool)

(assert (=> b!1037804 m!958045))

(declare-fun m!958047 () Bool)

(assert (=> b!1037801 m!958047))

(declare-fun m!958049 () Bool)

(assert (=> start!90820 m!958049))

(declare-fun m!958051 () Bool)

(assert (=> b!1037798 m!958051))

(declare-fun m!958053 () Bool)

(assert (=> b!1037798 m!958053))

(declare-fun m!958055 () Bool)

(assert (=> b!1037798 m!958055))

(declare-fun m!958057 () Bool)

(assert (=> b!1037798 m!958057))

(declare-fun m!958059 () Bool)

(assert (=> b!1037796 m!958059))

(check-sat (not b!1037798) b_and!33469 (not b!1037801) (not b_next!20919) (not b!1037804) (not b!1037803) (not b!1037806) (not mapNonEmpty!38496) (not b!1037796) tp_is_empty!24639 (not b!1037797) (not start!90820))
(check-sat b_and!33469 (not b_next!20919))
(get-model)

(declare-fun b!1037850 () Bool)

(declare-fun e!587215 () Bool)

(declare-fun call!43931 () Bool)

(assert (=> b!1037850 (= e!587215 call!43931)))

(declare-fun b!1037851 () Bool)

(declare-fun e!587214 () Bool)

(declare-fun e!587213 () Bool)

(assert (=> b!1037851 (= e!587214 e!587213)))

(declare-fun res!692478 () Bool)

(assert (=> b!1037851 (=> (not res!692478) (not e!587213))))

(declare-fun e!587212 () Bool)

(assert (=> b!1037851 (= res!692478 (not e!587212))))

(declare-fun res!692477 () Bool)

(assert (=> b!1037851 (=> (not res!692477) (not e!587212))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1037851 (= res!692477 (validKeyInArray!0 (select (arr!31461 (_keys!11491 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1037852 () Bool)

(assert (=> b!1037852 (= e!587213 e!587215)))

(declare-fun c!105109 () Bool)

(assert (=> b!1037852 (= c!105109 (validKeyInArray!0 (select (arr!31461 (_keys!11491 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1037853 () Bool)

(assert (=> b!1037853 (= e!587215 call!43931)))

(declare-fun b!1037854 () Bool)

(assert (=> b!1037854 (= e!587212 (contains!6051 Nil!22043 (select (arr!31461 (_keys!11491 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43928 () Bool)

(assert (=> bm!43928 (= call!43931 (arrayNoDuplicates!0 (_keys!11491 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105109 (Cons!22042 (select (arr!31461 (_keys!11491 thiss!1427)) #b00000000000000000000000000000000) Nil!22043) Nil!22043)))))

(declare-fun d!125235 () Bool)

(declare-fun res!692476 () Bool)

(assert (=> d!125235 (=> res!692476 e!587214)))

(assert (=> d!125235 (= res!692476 (bvsge #b00000000000000000000000000000000 (size!31992 (_keys!11491 thiss!1427))))))

(assert (=> d!125235 (= (arrayNoDuplicates!0 (_keys!11491 thiss!1427) #b00000000000000000000000000000000 Nil!22043) e!587214)))

(assert (= (and d!125235 (not res!692476)) b!1037851))

(assert (= (and b!1037851 res!692477) b!1037854))

(assert (= (and b!1037851 res!692478) b!1037852))

(assert (= (and b!1037852 c!105109) b!1037850))

(assert (= (and b!1037852 (not c!105109)) b!1037853))

(assert (= (or b!1037850 b!1037853) bm!43928))

(declare-fun m!958087 () Bool)

(assert (=> b!1037851 m!958087))

(assert (=> b!1037851 m!958087))

(declare-fun m!958089 () Bool)

(assert (=> b!1037851 m!958089))

(assert (=> b!1037852 m!958087))

(assert (=> b!1037852 m!958087))

(assert (=> b!1037852 m!958089))

(assert (=> b!1037854 m!958087))

(assert (=> b!1037854 m!958087))

(declare-fun m!958091 () Bool)

(assert (=> b!1037854 m!958091))

(assert (=> bm!43928 m!958087))

(declare-fun m!958093 () Bool)

(assert (=> bm!43928 m!958093))

(assert (=> b!1037796 d!125235))

(declare-fun d!125237 () Bool)

(declare-fun lt!457582 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!521 (List!22046) (InoxSet (_ BitVec 64)))

(assert (=> d!125237 (= lt!457582 (select (content!521 Nil!22043) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!587221 () Bool)

(assert (=> d!125237 (= lt!457582 e!587221)))

(declare-fun res!692483 () Bool)

(assert (=> d!125237 (=> (not res!692483) (not e!587221))))

(assert (=> d!125237 (= res!692483 ((_ is Cons!22042) Nil!22043))))

(assert (=> d!125237 (= (contains!6051 Nil!22043 #b0000000000000000000000000000000000000000000000000000000000000000) lt!457582)))

(declare-fun b!1037859 () Bool)

(declare-fun e!587220 () Bool)

(assert (=> b!1037859 (= e!587221 e!587220)))

(declare-fun res!692484 () Bool)

(assert (=> b!1037859 (=> res!692484 e!587220)))

(assert (=> b!1037859 (= res!692484 (= (h!23245 Nil!22043) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037860 () Bool)

(assert (=> b!1037860 (= e!587220 (contains!6051 (t!31267 Nil!22043) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!125237 res!692483) b!1037859))

(assert (= (and b!1037859 (not res!692484)) b!1037860))

(declare-fun m!958095 () Bool)

(assert (=> d!125237 m!958095))

(declare-fun m!958097 () Bool)

(assert (=> d!125237 m!958097))

(declare-fun m!958099 () Bool)

(assert (=> b!1037860 m!958099))

(assert (=> b!1037806 d!125237))

(declare-fun d!125239 () Bool)

(assert (=> d!125239 (= (array_inv!24165 (_keys!11491 thiss!1427)) (bvsge (size!31992 (_keys!11491 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1037797 d!125239))

(declare-fun d!125241 () Bool)

(assert (=> d!125241 (= (array_inv!24166 (_values!6318 thiss!1427)) (bvsge (size!31993 (_values!6318 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1037797 d!125241))

(declare-fun d!125243 () Bool)

(declare-fun res!692489 () Bool)

(declare-fun e!587226 () Bool)

(assert (=> d!125243 (=> res!692489 e!587226)))

(assert (=> d!125243 (= res!692489 ((_ is Nil!22043) Nil!22043))))

(assert (=> d!125243 (= (noDuplicate!1495 Nil!22043) e!587226)))

(declare-fun b!1037865 () Bool)

(declare-fun e!587227 () Bool)

(assert (=> b!1037865 (= e!587226 e!587227)))

(declare-fun res!692490 () Bool)

(assert (=> b!1037865 (=> (not res!692490) (not e!587227))))

(assert (=> b!1037865 (= res!692490 (not (contains!6051 (t!31267 Nil!22043) (h!23245 Nil!22043))))))

(declare-fun b!1037866 () Bool)

(assert (=> b!1037866 (= e!587227 (noDuplicate!1495 (t!31267 Nil!22043)))))

(assert (= (and d!125243 (not res!692489)) b!1037865))

(assert (= (and b!1037865 res!692490) b!1037866))

(declare-fun m!958101 () Bool)

(assert (=> b!1037865 m!958101))

(declare-fun m!958103 () Bool)

(assert (=> b!1037866 m!958103))

(assert (=> b!1037801 d!125243))

(declare-fun b!1037875 () Bool)

(declare-fun e!587233 () (_ BitVec 32))

(declare-fun e!587232 () (_ BitVec 32))

(assert (=> b!1037875 (= e!587233 e!587232)))

(declare-fun c!105115 () Bool)

(assert (=> b!1037875 (= c!105115 (validKeyInArray!0 (select (arr!31461 (array!65373 (store (arr!31461 (_keys!11491 thiss!1427)) (index!41399 lt!457573) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31992 (_keys!11491 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1037877 () Bool)

(assert (=> b!1037877 (= e!587233 #b00000000000000000000000000000000)))

(declare-fun b!1037878 () Bool)

(declare-fun call!43934 () (_ BitVec 32))

(assert (=> b!1037878 (= e!587232 (bvadd #b00000000000000000000000000000001 call!43934))))

(declare-fun bm!43931 () Bool)

(assert (=> bm!43931 (= call!43934 (arrayCountValidKeys!0 (array!65373 (store (arr!31461 (_keys!11491 thiss!1427)) (index!41399 lt!457573) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31992 (_keys!11491 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31992 (_keys!11491 thiss!1427))))))

(declare-fun d!125245 () Bool)

(declare-fun lt!457585 () (_ BitVec 32))

(assert (=> d!125245 (and (bvsge lt!457585 #b00000000000000000000000000000000) (bvsle lt!457585 (bvsub (size!31992 (array!65373 (store (arr!31461 (_keys!11491 thiss!1427)) (index!41399 lt!457573) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31992 (_keys!11491 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (=> d!125245 (= lt!457585 e!587233)))

(declare-fun c!105114 () Bool)

(assert (=> d!125245 (= c!105114 (bvsge #b00000000000000000000000000000000 (size!31992 (_keys!11491 thiss!1427))))))

(assert (=> d!125245 (and (bvsle #b00000000000000000000000000000000 (size!31992 (_keys!11491 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31992 (_keys!11491 thiss!1427)) (size!31992 (array!65373 (store (arr!31461 (_keys!11491 thiss!1427)) (index!41399 lt!457573) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31992 (_keys!11491 thiss!1427))))))))

(assert (=> d!125245 (= (arrayCountValidKeys!0 (array!65373 (store (arr!31461 (_keys!11491 thiss!1427)) (index!41399 lt!457573) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31992 (_keys!11491 thiss!1427))) #b00000000000000000000000000000000 (size!31992 (_keys!11491 thiss!1427))) lt!457585)))

(declare-fun b!1037876 () Bool)

(assert (=> b!1037876 (= e!587232 call!43934)))

(assert (= (and d!125245 c!105114) b!1037877))

(assert (= (and d!125245 (not c!105114)) b!1037875))

(assert (= (and b!1037875 c!105115) b!1037878))

(assert (= (and b!1037875 (not c!105115)) b!1037876))

(assert (= (or b!1037878 b!1037876) bm!43931))

(declare-fun m!958105 () Bool)

(assert (=> b!1037875 m!958105))

(assert (=> b!1037875 m!958105))

(declare-fun m!958107 () Bool)

(assert (=> b!1037875 m!958107))

(declare-fun m!958109 () Bool)

(assert (=> bm!43931 m!958109))

(assert (=> b!1037798 d!125245))

(declare-fun b!1037879 () Bool)

(declare-fun e!587235 () (_ BitVec 32))

(declare-fun e!587234 () (_ BitVec 32))

(assert (=> b!1037879 (= e!587235 e!587234)))

(declare-fun c!105117 () Bool)

(assert (=> b!1037879 (= c!105117 (validKeyInArray!0 (select (arr!31461 (_keys!11491 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1037881 () Bool)

(assert (=> b!1037881 (= e!587235 #b00000000000000000000000000000000)))

(declare-fun b!1037882 () Bool)

(declare-fun call!43935 () (_ BitVec 32))

(assert (=> b!1037882 (= e!587234 (bvadd #b00000000000000000000000000000001 call!43935))))

(declare-fun bm!43932 () Bool)

(assert (=> bm!43932 (= call!43935 (arrayCountValidKeys!0 (_keys!11491 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31992 (_keys!11491 thiss!1427))))))

(declare-fun d!125247 () Bool)

(declare-fun lt!457586 () (_ BitVec 32))

(assert (=> d!125247 (and (bvsge lt!457586 #b00000000000000000000000000000000) (bvsle lt!457586 (bvsub (size!31992 (_keys!11491 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125247 (= lt!457586 e!587235)))

(declare-fun c!105116 () Bool)

(assert (=> d!125247 (= c!105116 (bvsge #b00000000000000000000000000000000 (size!31992 (_keys!11491 thiss!1427))))))

(assert (=> d!125247 (and (bvsle #b00000000000000000000000000000000 (size!31992 (_keys!11491 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31992 (_keys!11491 thiss!1427)) (size!31992 (_keys!11491 thiss!1427))))))

(assert (=> d!125247 (= (arrayCountValidKeys!0 (_keys!11491 thiss!1427) #b00000000000000000000000000000000 (size!31992 (_keys!11491 thiss!1427))) lt!457586)))

(declare-fun b!1037880 () Bool)

(assert (=> b!1037880 (= e!587234 call!43935)))

(assert (= (and d!125247 c!105116) b!1037881))

(assert (= (and d!125247 (not c!105116)) b!1037879))

(assert (= (and b!1037879 c!105117) b!1037882))

(assert (= (and b!1037879 (not c!105117)) b!1037880))

(assert (= (or b!1037882 b!1037880) bm!43932))

(assert (=> b!1037879 m!958087))

(assert (=> b!1037879 m!958087))

(assert (=> b!1037879 m!958089))

(declare-fun m!958111 () Bool)

(assert (=> bm!43932 m!958111))

(assert (=> b!1037798 d!125247))

(declare-fun b!1037893 () Bool)

(declare-fun e!587240 () Bool)

(assert (=> b!1037893 (= e!587240 (bvslt (size!31992 (_keys!11491 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1037894 () Bool)

(declare-fun e!587241 () Bool)

(assert (=> b!1037894 (= e!587241 (= (arrayCountValidKeys!0 (array!65373 (store (arr!31461 (_keys!11491 thiss!1427)) (index!41399 lt!457573) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31992 (_keys!11491 thiss!1427))) #b00000000000000000000000000000000 (size!31992 (_keys!11491 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11491 thiss!1427) #b00000000000000000000000000000000 (size!31992 (_keys!11491 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1037892 () Bool)

(declare-fun res!692501 () Bool)

(assert (=> b!1037892 (=> (not res!692501) (not e!587240))))

(assert (=> b!1037892 (= res!692501 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!125249 () Bool)

(assert (=> d!125249 e!587241))

(declare-fun res!692502 () Bool)

(assert (=> d!125249 (=> (not res!692502) (not e!587241))))

(assert (=> d!125249 (= res!692502 (and (bvsge (index!41399 lt!457573) #b00000000000000000000000000000000) (bvslt (index!41399 lt!457573) (size!31992 (_keys!11491 thiss!1427)))))))

(declare-fun lt!457589 () Unit!33946)

(declare-fun choose!82 (array!65372 (_ BitVec 32) (_ BitVec 64)) Unit!33946)

(assert (=> d!125249 (= lt!457589 (choose!82 (_keys!11491 thiss!1427) (index!41399 lt!457573) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!125249 e!587240))

(declare-fun res!692500 () Bool)

(assert (=> d!125249 (=> (not res!692500) (not e!587240))))

(assert (=> d!125249 (= res!692500 (and (bvsge (index!41399 lt!457573) #b00000000000000000000000000000000) (bvslt (index!41399 lt!457573) (size!31992 (_keys!11491 thiss!1427)))))))

(assert (=> d!125249 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11491 thiss!1427) (index!41399 lt!457573) #b1000000000000000000000000000000000000000000000000000000000000000) lt!457589)))

(declare-fun b!1037891 () Bool)

(declare-fun res!692499 () Bool)

(assert (=> b!1037891 (=> (not res!692499) (not e!587240))))

(assert (=> b!1037891 (= res!692499 (validKeyInArray!0 (select (arr!31461 (_keys!11491 thiss!1427)) (index!41399 lt!457573))))))

(assert (= (and d!125249 res!692500) b!1037891))

(assert (= (and b!1037891 res!692499) b!1037892))

(assert (= (and b!1037892 res!692501) b!1037893))

(assert (= (and d!125249 res!692502) b!1037894))

(assert (=> b!1037894 m!958051))

(assert (=> b!1037894 m!958053))

(assert (=> b!1037894 m!958055))

(declare-fun m!958113 () Bool)

(assert (=> b!1037892 m!958113))

(declare-fun m!958115 () Bool)

(assert (=> d!125249 m!958115))

(declare-fun m!958117 () Bool)

(assert (=> b!1037891 m!958117))

(assert (=> b!1037891 m!958117))

(declare-fun m!958119 () Bool)

(assert (=> b!1037891 m!958119))

(assert (=> b!1037798 d!125249))

(declare-fun d!125251 () Bool)

(declare-fun lt!457590 () Bool)

(assert (=> d!125251 (= lt!457590 (select (content!521 Nil!22043) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!587243 () Bool)

(assert (=> d!125251 (= lt!457590 e!587243)))

(declare-fun res!692503 () Bool)

(assert (=> d!125251 (=> (not res!692503) (not e!587243))))

(assert (=> d!125251 (= res!692503 ((_ is Cons!22042) Nil!22043))))

(assert (=> d!125251 (= (contains!6051 Nil!22043 #b1000000000000000000000000000000000000000000000000000000000000000) lt!457590)))

(declare-fun b!1037895 () Bool)

(declare-fun e!587242 () Bool)

(assert (=> b!1037895 (= e!587243 e!587242)))

(declare-fun res!692504 () Bool)

(assert (=> b!1037895 (=> res!692504 e!587242)))

(assert (=> b!1037895 (= res!692504 (= (h!23245 Nil!22043) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037896 () Bool)

(assert (=> b!1037896 (= e!587242 (contains!6051 (t!31267 Nil!22043) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!125251 res!692503) b!1037895))

(assert (= (and b!1037895 (not res!692504)) b!1037896))

(assert (=> d!125251 m!958095))

(declare-fun m!958121 () Bool)

(assert (=> d!125251 m!958121))

(declare-fun m!958123 () Bool)

(assert (=> b!1037896 m!958123))

(assert (=> b!1037803 d!125251))

(declare-fun d!125253 () Bool)

(declare-fun res!692511 () Bool)

(declare-fun e!587246 () Bool)

(assert (=> d!125253 (=> (not res!692511) (not e!587246))))

(declare-fun simpleValid!419 (LongMapFixedSize!5826) Bool)

(assert (=> d!125253 (= res!692511 (simpleValid!419 thiss!1427))))

(assert (=> d!125253 (= (valid!2148 thiss!1427) e!587246)))

(declare-fun b!1037903 () Bool)

(declare-fun res!692512 () Bool)

(assert (=> b!1037903 (=> (not res!692512) (not e!587246))))

(assert (=> b!1037903 (= res!692512 (= (arrayCountValidKeys!0 (_keys!11491 thiss!1427) #b00000000000000000000000000000000 (size!31992 (_keys!11491 thiss!1427))) (_size!2968 thiss!1427)))))

(declare-fun b!1037904 () Bool)

(declare-fun res!692513 () Bool)

(assert (=> b!1037904 (=> (not res!692513) (not e!587246))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65372 (_ BitVec 32)) Bool)

(assert (=> b!1037904 (= res!692513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11491 thiss!1427) (mask!30218 thiss!1427)))))

(declare-fun b!1037905 () Bool)

(assert (=> b!1037905 (= e!587246 (arrayNoDuplicates!0 (_keys!11491 thiss!1427) #b00000000000000000000000000000000 Nil!22043))))

(assert (= (and d!125253 res!692511) b!1037903))

(assert (= (and b!1037903 res!692512) b!1037904))

(assert (= (and b!1037904 res!692513) b!1037905))

(declare-fun m!958125 () Bool)

(assert (=> d!125253 m!958125))

(assert (=> b!1037903 m!958055))

(declare-fun m!958127 () Bool)

(assert (=> b!1037904 m!958127))

(assert (=> b!1037905 m!958059))

(assert (=> start!90820 d!125253))

(declare-fun b!1037918 () Bool)

(declare-fun e!587253 () SeekEntryResult!9757)

(declare-fun lt!457602 () SeekEntryResult!9757)

(assert (=> b!1037918 (= e!587253 (MissingZero!9757 (index!41400 lt!457602)))))

(declare-fun b!1037919 () Bool)

(declare-fun e!587254 () SeekEntryResult!9757)

(assert (=> b!1037919 (= e!587254 (Found!9757 (index!41400 lt!457602)))))

(declare-fun b!1037920 () Bool)

(declare-fun e!587255 () SeekEntryResult!9757)

(assert (=> b!1037920 (= e!587255 Undefined!9757)))

(declare-fun b!1037922 () Bool)

(declare-fun lt!457600 () SeekEntryResult!9757)

(assert (=> b!1037922 (= e!587253 (ite ((_ is MissingVacant!9757) lt!457600) (MissingZero!9757 (index!41401 lt!457600)) lt!457600))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65372 (_ BitVec 32)) SeekEntryResult!9757)

(assert (=> b!1037922 (= lt!457600 (seekKeyOrZeroReturnVacant!0 (x!92591 lt!457602) (index!41400 lt!457602) (index!41400 lt!457602) key!909 (_keys!11491 thiss!1427) (mask!30218 thiss!1427)))))

(declare-fun b!1037923 () Bool)

(declare-fun c!105126 () Bool)

(declare-fun lt!457601 () (_ BitVec 64))

(assert (=> b!1037923 (= c!105126 (= lt!457601 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1037923 (= e!587254 e!587253)))

(declare-fun b!1037921 () Bool)

(assert (=> b!1037921 (= e!587255 e!587254)))

(assert (=> b!1037921 (= lt!457601 (select (arr!31461 (_keys!11491 thiss!1427)) (index!41400 lt!457602)))))

(declare-fun c!105124 () Bool)

(assert (=> b!1037921 (= c!105124 (= lt!457601 key!909))))

(declare-fun d!125255 () Bool)

(declare-fun lt!457599 () SeekEntryResult!9757)

(assert (=> d!125255 (and (or ((_ is MissingVacant!9757) lt!457599) (not ((_ is Found!9757) lt!457599)) (and (bvsge (index!41399 lt!457599) #b00000000000000000000000000000000) (bvslt (index!41399 lt!457599) (size!31992 (_keys!11491 thiss!1427))))) (not ((_ is MissingVacant!9757) lt!457599)) (or (not ((_ is Found!9757) lt!457599)) (= (select (arr!31461 (_keys!11491 thiss!1427)) (index!41399 lt!457599)) key!909)))))

(assert (=> d!125255 (= lt!457599 e!587255)))

(declare-fun c!105125 () Bool)

(assert (=> d!125255 (= c!105125 (and ((_ is Intermediate!9757) lt!457602) (undefined!10569 lt!457602)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65372 (_ BitVec 32)) SeekEntryResult!9757)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125255 (= lt!457602 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30218 thiss!1427)) key!909 (_keys!11491 thiss!1427) (mask!30218 thiss!1427)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!125255 (validMask!0 (mask!30218 thiss!1427))))

(assert (=> d!125255 (= (seekEntry!0 key!909 (_keys!11491 thiss!1427) (mask!30218 thiss!1427)) lt!457599)))

(assert (= (and d!125255 c!105125) b!1037920))

(assert (= (and d!125255 (not c!105125)) b!1037921))

(assert (= (and b!1037921 c!105124) b!1037919))

(assert (= (and b!1037921 (not c!105124)) b!1037923))

(assert (= (and b!1037923 c!105126) b!1037918))

(assert (= (and b!1037923 (not c!105126)) b!1037922))

(declare-fun m!958129 () Bool)

(assert (=> b!1037922 m!958129))

(declare-fun m!958131 () Bool)

(assert (=> b!1037921 m!958131))

(declare-fun m!958133 () Bool)

(assert (=> d!125255 m!958133))

(declare-fun m!958135 () Bool)

(assert (=> d!125255 m!958135))

(assert (=> d!125255 m!958135))

(declare-fun m!958137 () Bool)

(assert (=> d!125255 m!958137))

(declare-fun m!958139 () Bool)

(assert (=> d!125255 m!958139))

(assert (=> b!1037804 d!125255))

(declare-fun mapIsEmpty!38502 () Bool)

(declare-fun mapRes!38502 () Bool)

(assert (=> mapIsEmpty!38502 mapRes!38502))

(declare-fun b!1037930 () Bool)

(declare-fun e!587261 () Bool)

(assert (=> b!1037930 (= e!587261 tp_is_empty!24639)))

(declare-fun mapNonEmpty!38502 () Bool)

(declare-fun tp!73922 () Bool)

(assert (=> mapNonEmpty!38502 (= mapRes!38502 (and tp!73922 e!587261))))

(declare-fun mapValue!38502 () ValueCell!11616)

(declare-fun mapRest!38502 () (Array (_ BitVec 32) ValueCell!11616))

(declare-fun mapKey!38502 () (_ BitVec 32))

(assert (=> mapNonEmpty!38502 (= mapRest!38496 (store mapRest!38502 mapKey!38502 mapValue!38502))))

(declare-fun b!1037931 () Bool)

(declare-fun e!587260 () Bool)

(assert (=> b!1037931 (= e!587260 tp_is_empty!24639)))

(declare-fun condMapEmpty!38502 () Bool)

(declare-fun mapDefault!38502 () ValueCell!11616)

(assert (=> mapNonEmpty!38496 (= condMapEmpty!38502 (= mapRest!38496 ((as const (Array (_ BitVec 32) ValueCell!11616)) mapDefault!38502)))))

(assert (=> mapNonEmpty!38496 (= tp!73912 (and e!587260 mapRes!38502))))

(assert (= (and mapNonEmpty!38496 condMapEmpty!38502) mapIsEmpty!38502))

(assert (= (and mapNonEmpty!38496 (not condMapEmpty!38502)) mapNonEmpty!38502))

(assert (= (and mapNonEmpty!38502 ((_ is ValueCellFull!11616) mapValue!38502)) b!1037930))

(assert (= (and mapNonEmpty!38496 ((_ is ValueCellFull!11616) mapDefault!38502)) b!1037931))

(declare-fun m!958141 () Bool)

(assert (=> mapNonEmpty!38502 m!958141))

(check-sat (not d!125249) b_and!33469 (not bm!43928) (not b!1037851) (not b!1037879) (not b_next!20919) (not b!1037865) tp_is_empty!24639 (not d!125255) (not bm!43931) (not b!1037892) (not b!1037922) (not b!1037903) (not b!1037904) (not b!1037896) (not b!1037894) (not d!125251) (not b!1037860) (not d!125253) (not b!1037854) (not b!1037891) (not b!1037875) (not bm!43932) (not mapNonEmpty!38502) (not b!1037852) (not b!1037866) (not d!125237) (not b!1037905))
(check-sat b_and!33469 (not b_next!20919))
