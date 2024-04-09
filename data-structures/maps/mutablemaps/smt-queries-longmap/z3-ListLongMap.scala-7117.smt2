; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90258 () Bool)

(assert start!90258)

(declare-fun b!1032926 () Bool)

(declare-fun b_free!20757 () Bool)

(declare-fun b_next!20757 () Bool)

(assert (=> b!1032926 (= b_free!20757 (not b_next!20757))))

(declare-fun tp!73361 () Bool)

(declare-fun b_and!33243 () Bool)

(assert (=> b!1032926 (= tp!73361 b_and!33243)))

(declare-fun mapNonEmpty!38188 () Bool)

(declare-fun mapRes!38188 () Bool)

(declare-fun tp!73362 () Bool)

(declare-fun e!583777 () Bool)

(assert (=> mapNonEmpty!38188 (= mapRes!38188 (and tp!73362 e!583777))))

(declare-datatypes ((V!37509 0))(
  ( (V!37510 (val!12289 Int)) )
))
(declare-datatypes ((ValueCell!11535 0))(
  ( (ValueCellFull!11535 (v!14867 V!37509)) (EmptyCell!11535) )
))
(declare-fun mapRest!38188 () (Array (_ BitVec 32) ValueCell!11535))

(declare-fun mapValue!38188 () ValueCell!11535)

(declare-datatypes ((array!65012 0))(
  ( (array!65013 (arr!31299 (Array (_ BitVec 32) (_ BitVec 64))) (size!31821 (_ BitVec 32))) )
))
(declare-datatypes ((array!65014 0))(
  ( (array!65015 (arr!31300 (Array (_ BitVec 32) ValueCell!11535)) (size!31822 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5664 0))(
  ( (LongMapFixedSize!5665 (defaultEntry!6206 Int) (mask!30038 (_ BitVec 32)) (extraKeys!5938 (_ BitVec 32)) (zeroValue!6042 V!37509) (minValue!6042 V!37509) (_size!2887 (_ BitVec 32)) (_keys!11380 array!65012) (_values!6229 array!65014) (_vacant!2887 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5664)

(declare-fun mapKey!38188 () (_ BitVec 32))

(assert (=> mapNonEmpty!38188 (= (arr!31300 (_values!6229 thiss!1427)) (store mapRest!38188 mapKey!38188 mapValue!38188))))

(declare-fun tp_is_empty!24477 () Bool)

(declare-fun e!583782 () Bool)

(declare-fun e!583781 () Bool)

(declare-fun array_inv!24057 (array!65012) Bool)

(declare-fun array_inv!24058 (array!65014) Bool)

(assert (=> b!1032926 (= e!583782 (and tp!73361 tp_is_empty!24477 (array_inv!24057 (_keys!11380 thiss!1427)) (array_inv!24058 (_values!6229 thiss!1427)) e!583781))))

(declare-fun b!1032928 () Bool)

(declare-fun e!583780 () Bool)

(assert (=> b!1032928 (= e!583781 (and e!583780 mapRes!38188))))

(declare-fun condMapEmpty!38188 () Bool)

(declare-fun mapDefault!38188 () ValueCell!11535)

(assert (=> b!1032928 (= condMapEmpty!38188 (= (arr!31300 (_values!6229 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11535)) mapDefault!38188)))))

(declare-fun b!1032929 () Bool)

(declare-fun res!690351 () Bool)

(declare-fun e!583778 () Bool)

(assert (=> b!1032929 (=> (not res!690351) (not e!583778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1032929 (= res!690351 (validMask!0 (mask!30038 thiss!1427)))))

(declare-fun mapIsEmpty!38188 () Bool)

(assert (=> mapIsEmpty!38188 mapRes!38188))

(declare-fun b!1032930 () Bool)

(assert (=> b!1032930 (= e!583778 (and (= (size!31822 (_values!6229 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30038 thiss!1427))) (= (size!31821 (_keys!11380 thiss!1427)) (size!31822 (_values!6229 thiss!1427))) (bvsge (mask!30038 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5938 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5938 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1032931 () Bool)

(declare-fun res!690350 () Bool)

(assert (=> b!1032931 (=> (not res!690350) (not e!583778))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1032931 (= res!690350 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1032932 () Bool)

(assert (=> b!1032932 (= e!583777 tp_is_empty!24477)))

(declare-fun b!1032927 () Bool)

(assert (=> b!1032927 (= e!583780 tp_is_empty!24477)))

(declare-fun res!690349 () Bool)

(assert (=> start!90258 (=> (not res!690349) (not e!583778))))

(declare-fun valid!2093 (LongMapFixedSize!5664) Bool)

(assert (=> start!90258 (= res!690349 (valid!2093 thiss!1427))))

(assert (=> start!90258 e!583778))

(assert (=> start!90258 e!583782))

(assert (=> start!90258 true))

(assert (= (and start!90258 res!690349) b!1032931))

(assert (= (and b!1032931 res!690350) b!1032929))

(assert (= (and b!1032929 res!690351) b!1032930))

(assert (= (and b!1032928 condMapEmpty!38188) mapIsEmpty!38188))

(assert (= (and b!1032928 (not condMapEmpty!38188)) mapNonEmpty!38188))

(get-info :version)

(assert (= (and mapNonEmpty!38188 ((_ is ValueCellFull!11535) mapValue!38188)) b!1032932))

(assert (= (and b!1032928 ((_ is ValueCellFull!11535) mapDefault!38188)) b!1032927))

(assert (= b!1032926 b!1032928))

(assert (= start!90258 b!1032926))

(declare-fun m!953059 () Bool)

(assert (=> mapNonEmpty!38188 m!953059))

(declare-fun m!953061 () Bool)

(assert (=> b!1032926 m!953061))

(declare-fun m!953063 () Bool)

(assert (=> b!1032926 m!953063))

(declare-fun m!953065 () Bool)

(assert (=> b!1032929 m!953065))

(declare-fun m!953067 () Bool)

(assert (=> start!90258 m!953067))

(check-sat (not start!90258) (not mapNonEmpty!38188) (not b_next!20757) tp_is_empty!24477 (not b!1032926) (not b!1032929) b_and!33243)
(check-sat b_and!33243 (not b_next!20757))
(get-model)

(declare-fun d!123707 () Bool)

(declare-fun res!690367 () Bool)

(declare-fun e!583803 () Bool)

(assert (=> d!123707 (=> (not res!690367) (not e!583803))))

(declare-fun simpleValid!401 (LongMapFixedSize!5664) Bool)

(assert (=> d!123707 (= res!690367 (simpleValid!401 thiss!1427))))

(assert (=> d!123707 (= (valid!2093 thiss!1427) e!583803)))

(declare-fun b!1032960 () Bool)

(declare-fun res!690368 () Bool)

(assert (=> b!1032960 (=> (not res!690368) (not e!583803))))

(declare-fun arrayCountValidKeys!0 (array!65012 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1032960 (= res!690368 (= (arrayCountValidKeys!0 (_keys!11380 thiss!1427) #b00000000000000000000000000000000 (size!31821 (_keys!11380 thiss!1427))) (_size!2887 thiss!1427)))))

(declare-fun b!1032961 () Bool)

(declare-fun res!690369 () Bool)

(assert (=> b!1032961 (=> (not res!690369) (not e!583803))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65012 (_ BitVec 32)) Bool)

(assert (=> b!1032961 (= res!690369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11380 thiss!1427) (mask!30038 thiss!1427)))))

(declare-fun b!1032962 () Bool)

(declare-datatypes ((List!22017 0))(
  ( (Nil!22014) (Cons!22013 (h!23215 (_ BitVec 64)) (t!31218 List!22017)) )
))
(declare-fun arrayNoDuplicates!0 (array!65012 (_ BitVec 32) List!22017) Bool)

(assert (=> b!1032962 (= e!583803 (arrayNoDuplicates!0 (_keys!11380 thiss!1427) #b00000000000000000000000000000000 Nil!22014))))

(assert (= (and d!123707 res!690367) b!1032960))

(assert (= (and b!1032960 res!690368) b!1032961))

(assert (= (and b!1032961 res!690369) b!1032962))

(declare-fun m!953079 () Bool)

(assert (=> d!123707 m!953079))

(declare-fun m!953081 () Bool)

(assert (=> b!1032960 m!953081))

(declare-fun m!953083 () Bool)

(assert (=> b!1032961 m!953083))

(declare-fun m!953085 () Bool)

(assert (=> b!1032962 m!953085))

(assert (=> start!90258 d!123707))

(declare-fun d!123709 () Bool)

(assert (=> d!123709 (= (validMask!0 (mask!30038 thiss!1427)) (and (or (= (mask!30038 thiss!1427) #b00000000000000000000000000000111) (= (mask!30038 thiss!1427) #b00000000000000000000000000001111) (= (mask!30038 thiss!1427) #b00000000000000000000000000011111) (= (mask!30038 thiss!1427) #b00000000000000000000000000111111) (= (mask!30038 thiss!1427) #b00000000000000000000000001111111) (= (mask!30038 thiss!1427) #b00000000000000000000000011111111) (= (mask!30038 thiss!1427) #b00000000000000000000000111111111) (= (mask!30038 thiss!1427) #b00000000000000000000001111111111) (= (mask!30038 thiss!1427) #b00000000000000000000011111111111) (= (mask!30038 thiss!1427) #b00000000000000000000111111111111) (= (mask!30038 thiss!1427) #b00000000000000000001111111111111) (= (mask!30038 thiss!1427) #b00000000000000000011111111111111) (= (mask!30038 thiss!1427) #b00000000000000000111111111111111) (= (mask!30038 thiss!1427) #b00000000000000001111111111111111) (= (mask!30038 thiss!1427) #b00000000000000011111111111111111) (= (mask!30038 thiss!1427) #b00000000000000111111111111111111) (= (mask!30038 thiss!1427) #b00000000000001111111111111111111) (= (mask!30038 thiss!1427) #b00000000000011111111111111111111) (= (mask!30038 thiss!1427) #b00000000000111111111111111111111) (= (mask!30038 thiss!1427) #b00000000001111111111111111111111) (= (mask!30038 thiss!1427) #b00000000011111111111111111111111) (= (mask!30038 thiss!1427) #b00000000111111111111111111111111) (= (mask!30038 thiss!1427) #b00000001111111111111111111111111) (= (mask!30038 thiss!1427) #b00000011111111111111111111111111) (= (mask!30038 thiss!1427) #b00000111111111111111111111111111) (= (mask!30038 thiss!1427) #b00001111111111111111111111111111) (= (mask!30038 thiss!1427) #b00011111111111111111111111111111) (= (mask!30038 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30038 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1032929 d!123709))

(declare-fun d!123711 () Bool)

(assert (=> d!123711 (= (array_inv!24057 (_keys!11380 thiss!1427)) (bvsge (size!31821 (_keys!11380 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1032926 d!123711))

(declare-fun d!123713 () Bool)

(assert (=> d!123713 (= (array_inv!24058 (_values!6229 thiss!1427)) (bvsge (size!31822 (_values!6229 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1032926 d!123713))

(declare-fun condMapEmpty!38194 () Bool)

(declare-fun mapDefault!38194 () ValueCell!11535)

(assert (=> mapNonEmpty!38188 (= condMapEmpty!38194 (= mapRest!38188 ((as const (Array (_ BitVec 32) ValueCell!11535)) mapDefault!38194)))))

(declare-fun e!583809 () Bool)

(declare-fun mapRes!38194 () Bool)

(assert (=> mapNonEmpty!38188 (= tp!73362 (and e!583809 mapRes!38194))))

(declare-fun mapIsEmpty!38194 () Bool)

(assert (=> mapIsEmpty!38194 mapRes!38194))

(declare-fun mapNonEmpty!38194 () Bool)

(declare-fun tp!73371 () Bool)

(declare-fun e!583808 () Bool)

(assert (=> mapNonEmpty!38194 (= mapRes!38194 (and tp!73371 e!583808))))

(declare-fun mapKey!38194 () (_ BitVec 32))

(declare-fun mapRest!38194 () (Array (_ BitVec 32) ValueCell!11535))

(declare-fun mapValue!38194 () ValueCell!11535)

(assert (=> mapNonEmpty!38194 (= mapRest!38188 (store mapRest!38194 mapKey!38194 mapValue!38194))))

(declare-fun b!1032969 () Bool)

(assert (=> b!1032969 (= e!583808 tp_is_empty!24477)))

(declare-fun b!1032970 () Bool)

(assert (=> b!1032970 (= e!583809 tp_is_empty!24477)))

(assert (= (and mapNonEmpty!38188 condMapEmpty!38194) mapIsEmpty!38194))

(assert (= (and mapNonEmpty!38188 (not condMapEmpty!38194)) mapNonEmpty!38194))

(assert (= (and mapNonEmpty!38194 ((_ is ValueCellFull!11535) mapValue!38194)) b!1032969))

(assert (= (and mapNonEmpty!38188 ((_ is ValueCellFull!11535) mapDefault!38194)) b!1032970))

(declare-fun m!953087 () Bool)

(assert (=> mapNonEmpty!38194 m!953087))

(check-sat (not mapNonEmpty!38194) (not b!1032960) (not b_next!20757) tp_is_empty!24477 (not b!1032962) (not b!1032961) (not d!123707) b_and!33243)
(check-sat b_and!33243 (not b_next!20757))
(get-model)

(declare-fun b!1032979 () Bool)

(declare-fun e!583817 () Bool)

(declare-fun e!583818 () Bool)

(assert (=> b!1032979 (= e!583817 e!583818)))

(declare-fun lt!456062 () (_ BitVec 64))

(assert (=> b!1032979 (= lt!456062 (select (arr!31299 (_keys!11380 thiss!1427)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33804 0))(
  ( (Unit!33805) )
))
(declare-fun lt!456061 () Unit!33804)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65012 (_ BitVec 64) (_ BitVec 32)) Unit!33804)

(assert (=> b!1032979 (= lt!456061 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11380 thiss!1427) lt!456062 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65012 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1032979 (arrayContainsKey!0 (_keys!11380 thiss!1427) lt!456062 #b00000000000000000000000000000000)))

(declare-fun lt!456063 () Unit!33804)

(assert (=> b!1032979 (= lt!456063 lt!456061)))

(declare-fun res!690375 () Bool)

(declare-datatypes ((SeekEntryResult!9730 0))(
  ( (MissingZero!9730 (index!41290 (_ BitVec 32))) (Found!9730 (index!41291 (_ BitVec 32))) (Intermediate!9730 (undefined!10542 Bool) (index!41292 (_ BitVec 32)) (x!92107 (_ BitVec 32))) (Undefined!9730) (MissingVacant!9730 (index!41293 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65012 (_ BitVec 32)) SeekEntryResult!9730)

(assert (=> b!1032979 (= res!690375 (= (seekEntryOrOpen!0 (select (arr!31299 (_keys!11380 thiss!1427)) #b00000000000000000000000000000000) (_keys!11380 thiss!1427) (mask!30038 thiss!1427)) (Found!9730 #b00000000000000000000000000000000)))))

(assert (=> b!1032979 (=> (not res!690375) (not e!583818))))

(declare-fun b!1032980 () Bool)

(declare-fun call!43630 () Bool)

(assert (=> b!1032980 (= e!583817 call!43630)))

(declare-fun bm!43627 () Bool)

(assert (=> bm!43627 (= call!43630 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11380 thiss!1427) (mask!30038 thiss!1427)))))

(declare-fun b!1032981 () Bool)

(declare-fun e!583816 () Bool)

(assert (=> b!1032981 (= e!583816 e!583817)))

(declare-fun c!104300 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1032981 (= c!104300 (validKeyInArray!0 (select (arr!31299 (_keys!11380 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1032982 () Bool)

(assert (=> b!1032982 (= e!583818 call!43630)))

(declare-fun d!123715 () Bool)

(declare-fun res!690374 () Bool)

(assert (=> d!123715 (=> res!690374 e!583816)))

(assert (=> d!123715 (= res!690374 (bvsge #b00000000000000000000000000000000 (size!31821 (_keys!11380 thiss!1427))))))

(assert (=> d!123715 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11380 thiss!1427) (mask!30038 thiss!1427)) e!583816)))

(assert (= (and d!123715 (not res!690374)) b!1032981))

(assert (= (and b!1032981 c!104300) b!1032979))

(assert (= (and b!1032981 (not c!104300)) b!1032980))

(assert (= (and b!1032979 res!690375) b!1032982))

(assert (= (or b!1032982 b!1032980) bm!43627))

(declare-fun m!953089 () Bool)

(assert (=> b!1032979 m!953089))

(declare-fun m!953091 () Bool)

(assert (=> b!1032979 m!953091))

(declare-fun m!953093 () Bool)

(assert (=> b!1032979 m!953093))

(assert (=> b!1032979 m!953089))

(declare-fun m!953095 () Bool)

(assert (=> b!1032979 m!953095))

(declare-fun m!953097 () Bool)

(assert (=> bm!43627 m!953097))

(assert (=> b!1032981 m!953089))

(assert (=> b!1032981 m!953089))

(declare-fun m!953099 () Bool)

(assert (=> b!1032981 m!953099))

(assert (=> b!1032961 d!123715))

(declare-fun b!1032993 () Bool)

(declare-fun e!583830 () Bool)

(declare-fun call!43633 () Bool)

(assert (=> b!1032993 (= e!583830 call!43633)))

(declare-fun bm!43630 () Bool)

(declare-fun c!104303 () Bool)

(assert (=> bm!43630 (= call!43633 (arrayNoDuplicates!0 (_keys!11380 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104303 (Cons!22013 (select (arr!31299 (_keys!11380 thiss!1427)) #b00000000000000000000000000000000) Nil!22014) Nil!22014)))))

(declare-fun b!1032994 () Bool)

(declare-fun e!583827 () Bool)

(declare-fun e!583828 () Bool)

(assert (=> b!1032994 (= e!583827 e!583828)))

(declare-fun res!690383 () Bool)

(assert (=> b!1032994 (=> (not res!690383) (not e!583828))))

(declare-fun e!583829 () Bool)

(assert (=> b!1032994 (= res!690383 (not e!583829))))

(declare-fun res!690382 () Bool)

(assert (=> b!1032994 (=> (not res!690382) (not e!583829))))

(assert (=> b!1032994 (= res!690382 (validKeyInArray!0 (select (arr!31299 (_keys!11380 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1032995 () Bool)

(assert (=> b!1032995 (= e!583830 call!43633)))

(declare-fun b!1032996 () Bool)

(declare-fun contains!6033 (List!22017 (_ BitVec 64)) Bool)

(assert (=> b!1032996 (= e!583829 (contains!6033 Nil!22014 (select (arr!31299 (_keys!11380 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!123717 () Bool)

(declare-fun res!690384 () Bool)

(assert (=> d!123717 (=> res!690384 e!583827)))

(assert (=> d!123717 (= res!690384 (bvsge #b00000000000000000000000000000000 (size!31821 (_keys!11380 thiss!1427))))))

(assert (=> d!123717 (= (arrayNoDuplicates!0 (_keys!11380 thiss!1427) #b00000000000000000000000000000000 Nil!22014) e!583827)))

(declare-fun b!1032997 () Bool)

(assert (=> b!1032997 (= e!583828 e!583830)))

(assert (=> b!1032997 (= c!104303 (validKeyInArray!0 (select (arr!31299 (_keys!11380 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!123717 (not res!690384)) b!1032994))

(assert (= (and b!1032994 res!690382) b!1032996))

(assert (= (and b!1032994 res!690383) b!1032997))

(assert (= (and b!1032997 c!104303) b!1032993))

(assert (= (and b!1032997 (not c!104303)) b!1032995))

(assert (= (or b!1032993 b!1032995) bm!43630))

(assert (=> bm!43630 m!953089))

(declare-fun m!953101 () Bool)

(assert (=> bm!43630 m!953101))

(assert (=> b!1032994 m!953089))

(assert (=> b!1032994 m!953089))

(assert (=> b!1032994 m!953099))

(assert (=> b!1032996 m!953089))

(assert (=> b!1032996 m!953089))

(declare-fun m!953103 () Bool)

(assert (=> b!1032996 m!953103))

(assert (=> b!1032997 m!953089))

(assert (=> b!1032997 m!953089))

(assert (=> b!1032997 m!953099))

(assert (=> b!1032962 d!123717))

(declare-fun d!123719 () Bool)

(declare-fun res!690394 () Bool)

(declare-fun e!583833 () Bool)

(assert (=> d!123719 (=> (not res!690394) (not e!583833))))

(assert (=> d!123719 (= res!690394 (validMask!0 (mask!30038 thiss!1427)))))

(assert (=> d!123719 (= (simpleValid!401 thiss!1427) e!583833)))

(declare-fun b!1033007 () Bool)

(declare-fun res!690393 () Bool)

(assert (=> b!1033007 (=> (not res!690393) (not e!583833))))

(declare-fun size!31825 (LongMapFixedSize!5664) (_ BitVec 32))

(assert (=> b!1033007 (= res!690393 (bvsge (size!31825 thiss!1427) (_size!2887 thiss!1427)))))

(declare-fun b!1033008 () Bool)

(declare-fun res!690396 () Bool)

(assert (=> b!1033008 (=> (not res!690396) (not e!583833))))

(assert (=> b!1033008 (= res!690396 (= (size!31825 thiss!1427) (bvadd (_size!2887 thiss!1427) (bvsdiv (bvadd (extraKeys!5938 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1033009 () Bool)

(assert (=> b!1033009 (= e!583833 (and (bvsge (extraKeys!5938 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5938 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2887 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1033006 () Bool)

(declare-fun res!690395 () Bool)

(assert (=> b!1033006 (=> (not res!690395) (not e!583833))))

(assert (=> b!1033006 (= res!690395 (and (= (size!31822 (_values!6229 thiss!1427)) (bvadd (mask!30038 thiss!1427) #b00000000000000000000000000000001)) (= (size!31821 (_keys!11380 thiss!1427)) (size!31822 (_values!6229 thiss!1427))) (bvsge (_size!2887 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2887 thiss!1427) (bvadd (mask!30038 thiss!1427) #b00000000000000000000000000000001))))))

(assert (= (and d!123719 res!690394) b!1033006))

(assert (= (and b!1033006 res!690395) b!1033007))

(assert (= (and b!1033007 res!690393) b!1033008))

(assert (= (and b!1033008 res!690396) b!1033009))

(assert (=> d!123719 m!953065))

(declare-fun m!953105 () Bool)

(assert (=> b!1033007 m!953105))

(assert (=> b!1033008 m!953105))

(assert (=> d!123707 d!123719))

(declare-fun d!123721 () Bool)

(declare-fun lt!456066 () (_ BitVec 32))

(assert (=> d!123721 (and (bvsge lt!456066 #b00000000000000000000000000000000) (bvsle lt!456066 (bvsub (size!31821 (_keys!11380 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!583838 () (_ BitVec 32))

(assert (=> d!123721 (= lt!456066 e!583838)))

(declare-fun c!104309 () Bool)

(assert (=> d!123721 (= c!104309 (bvsge #b00000000000000000000000000000000 (size!31821 (_keys!11380 thiss!1427))))))

(assert (=> d!123721 (and (bvsle #b00000000000000000000000000000000 (size!31821 (_keys!11380 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31821 (_keys!11380 thiss!1427)) (size!31821 (_keys!11380 thiss!1427))))))

(assert (=> d!123721 (= (arrayCountValidKeys!0 (_keys!11380 thiss!1427) #b00000000000000000000000000000000 (size!31821 (_keys!11380 thiss!1427))) lt!456066)))

(declare-fun b!1033018 () Bool)

(declare-fun e!583839 () (_ BitVec 32))

(declare-fun call!43636 () (_ BitVec 32))

(assert (=> b!1033018 (= e!583839 call!43636)))

(declare-fun bm!43633 () Bool)

(assert (=> bm!43633 (= call!43636 (arrayCountValidKeys!0 (_keys!11380 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31821 (_keys!11380 thiss!1427))))))

(declare-fun b!1033019 () Bool)

(assert (=> b!1033019 (= e!583838 #b00000000000000000000000000000000)))

(declare-fun b!1033020 () Bool)

(assert (=> b!1033020 (= e!583838 e!583839)))

(declare-fun c!104308 () Bool)

(assert (=> b!1033020 (= c!104308 (validKeyInArray!0 (select (arr!31299 (_keys!11380 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1033021 () Bool)

(assert (=> b!1033021 (= e!583839 (bvadd #b00000000000000000000000000000001 call!43636))))

(assert (= (and d!123721 c!104309) b!1033019))

(assert (= (and d!123721 (not c!104309)) b!1033020))

(assert (= (and b!1033020 c!104308) b!1033021))

(assert (= (and b!1033020 (not c!104308)) b!1033018))

(assert (= (or b!1033021 b!1033018) bm!43633))

(declare-fun m!953107 () Bool)

(assert (=> bm!43633 m!953107))

(assert (=> b!1033020 m!953089))

(assert (=> b!1033020 m!953089))

(assert (=> b!1033020 m!953099))

(assert (=> b!1032960 d!123721))

(declare-fun condMapEmpty!38195 () Bool)

(declare-fun mapDefault!38195 () ValueCell!11535)

(assert (=> mapNonEmpty!38194 (= condMapEmpty!38195 (= mapRest!38194 ((as const (Array (_ BitVec 32) ValueCell!11535)) mapDefault!38195)))))

(declare-fun e!583841 () Bool)

(declare-fun mapRes!38195 () Bool)

(assert (=> mapNonEmpty!38194 (= tp!73371 (and e!583841 mapRes!38195))))

(declare-fun mapIsEmpty!38195 () Bool)

(assert (=> mapIsEmpty!38195 mapRes!38195))

(declare-fun mapNonEmpty!38195 () Bool)

(declare-fun tp!73372 () Bool)

(declare-fun e!583840 () Bool)

(assert (=> mapNonEmpty!38195 (= mapRes!38195 (and tp!73372 e!583840))))

(declare-fun mapKey!38195 () (_ BitVec 32))

(declare-fun mapRest!38195 () (Array (_ BitVec 32) ValueCell!11535))

(declare-fun mapValue!38195 () ValueCell!11535)

(assert (=> mapNonEmpty!38195 (= mapRest!38194 (store mapRest!38195 mapKey!38195 mapValue!38195))))

(declare-fun b!1033022 () Bool)

(assert (=> b!1033022 (= e!583840 tp_is_empty!24477)))

(declare-fun b!1033023 () Bool)

(assert (=> b!1033023 (= e!583841 tp_is_empty!24477)))

(assert (= (and mapNonEmpty!38194 condMapEmpty!38195) mapIsEmpty!38195))

(assert (= (and mapNonEmpty!38194 (not condMapEmpty!38195)) mapNonEmpty!38195))

(assert (= (and mapNonEmpty!38195 ((_ is ValueCellFull!11535) mapValue!38195)) b!1033022))

(assert (= (and mapNonEmpty!38194 ((_ is ValueCellFull!11535) mapDefault!38195)) b!1033023))

(declare-fun m!953109 () Bool)

(assert (=> mapNonEmpty!38195 m!953109))

(check-sat (not b!1032994) (not bm!43627) (not b_next!20757) (not mapNonEmpty!38195) (not b!1033008) (not bm!43630) (not d!123719) (not b!1032997) (not bm!43633) (not b!1033020) tp_is_empty!24477 (not b!1032981) (not b!1033007) (not b!1032996) (not b!1032979) b_and!33243)
(check-sat b_and!33243 (not b_next!20757))
