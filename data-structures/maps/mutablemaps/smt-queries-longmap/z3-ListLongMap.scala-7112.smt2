; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90156 () Bool)

(assert start!90156)

(declare-fun b!1032322 () Bool)

(declare-fun b_free!20727 () Bool)

(declare-fun b_next!20727 () Bool)

(assert (=> b!1032322 (= b_free!20727 (not b_next!20727))))

(declare-fun tp!73253 () Bool)

(declare-fun b_and!33213 () Bool)

(assert (=> b!1032322 (= tp!73253 b_and!33213)))

(declare-fun res!690066 () Bool)

(declare-fun e!583336 () Bool)

(assert (=> start!90156 (=> (not res!690066) (not e!583336))))

(declare-datatypes ((V!37469 0))(
  ( (V!37470 (val!12274 Int)) )
))
(declare-datatypes ((ValueCell!11520 0))(
  ( (ValueCellFull!11520 (v!14852 V!37469)) (EmptyCell!11520) )
))
(declare-datatypes ((array!64942 0))(
  ( (array!64943 (arr!31269 (Array (_ BitVec 32) (_ BitVec 64))) (size!31787 (_ BitVec 32))) )
))
(declare-datatypes ((array!64944 0))(
  ( (array!64945 (arr!31270 (Array (_ BitVec 32) ValueCell!11520)) (size!31788 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5634 0))(
  ( (LongMapFixedSize!5635 (defaultEntry!6191 Int) (mask!30004 (_ BitVec 32)) (extraKeys!5923 (_ BitVec 32)) (zeroValue!6027 V!37469) (minValue!6027 V!37469) (_size!2872 (_ BitVec 32)) (_keys!11361 array!64942) (_values!6214 array!64944) (_vacant!2872 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5634)

(declare-fun valid!2082 (LongMapFixedSize!5634) Bool)

(assert (=> start!90156 (= res!690066 (valid!2082 thiss!1427))))

(assert (=> start!90156 e!583336))

(declare-fun e!583339 () Bool)

(assert (=> start!90156 e!583339))

(assert (=> start!90156 true))

(declare-fun mapNonEmpty!38124 () Bool)

(declare-fun mapRes!38124 () Bool)

(declare-fun tp!73252 () Bool)

(declare-fun e!583338 () Bool)

(assert (=> mapNonEmpty!38124 (= mapRes!38124 (and tp!73252 e!583338))))

(declare-fun mapRest!38124 () (Array (_ BitVec 32) ValueCell!11520))

(declare-fun mapKey!38124 () (_ BitVec 32))

(declare-fun mapValue!38124 () ValueCell!11520)

(assert (=> mapNonEmpty!38124 (= (arr!31270 (_values!6214 thiss!1427)) (store mapRest!38124 mapKey!38124 mapValue!38124))))

(declare-fun b!1032318 () Bool)

(declare-fun e!583337 () Bool)

(declare-fun e!583335 () Bool)

(assert (=> b!1032318 (= e!583337 (and e!583335 mapRes!38124))))

(declare-fun condMapEmpty!38124 () Bool)

(declare-fun mapDefault!38124 () ValueCell!11520)

(assert (=> b!1032318 (= condMapEmpty!38124 (= (arr!31270 (_values!6214 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11520)) mapDefault!38124)))))

(declare-fun b!1032319 () Bool)

(declare-fun tp_is_empty!24447 () Bool)

(assert (=> b!1032319 (= e!583338 tp_is_empty!24447)))

(declare-fun mapIsEmpty!38124 () Bool)

(assert (=> mapIsEmpty!38124 mapRes!38124))

(declare-fun b!1032320 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1032320 (= e!583336 (not (validMask!0 (mask!30004 thiss!1427))))))

(declare-fun b!1032321 () Bool)

(declare-fun res!690065 () Bool)

(assert (=> b!1032321 (=> (not res!690065) (not e!583336))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1032321 (= res!690065 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun array_inv!24037 (array!64942) Bool)

(declare-fun array_inv!24038 (array!64944) Bool)

(assert (=> b!1032322 (= e!583339 (and tp!73253 tp_is_empty!24447 (array_inv!24037 (_keys!11361 thiss!1427)) (array_inv!24038 (_values!6214 thiss!1427)) e!583337))))

(declare-fun b!1032323 () Bool)

(assert (=> b!1032323 (= e!583335 tp_is_empty!24447)))

(assert (= (and start!90156 res!690066) b!1032321))

(assert (= (and b!1032321 res!690065) b!1032320))

(assert (= (and b!1032318 condMapEmpty!38124) mapIsEmpty!38124))

(assert (= (and b!1032318 (not condMapEmpty!38124)) mapNonEmpty!38124))

(get-info :version)

(assert (= (and mapNonEmpty!38124 ((_ is ValueCellFull!11520) mapValue!38124)) b!1032319))

(assert (= (and b!1032318 ((_ is ValueCellFull!11520) mapDefault!38124)) b!1032323))

(assert (= b!1032322 b!1032318))

(assert (= start!90156 b!1032322))

(declare-fun m!952771 () Bool)

(assert (=> start!90156 m!952771))

(declare-fun m!952773 () Bool)

(assert (=> mapNonEmpty!38124 m!952773))

(declare-fun m!952775 () Bool)

(assert (=> b!1032320 m!952775))

(declare-fun m!952777 () Bool)

(assert (=> b!1032322 m!952777))

(declare-fun m!952779 () Bool)

(assert (=> b!1032322 m!952779))

(check-sat (not b!1032320) (not start!90156) (not b_next!20727) (not b!1032322) tp_is_empty!24447 (not mapNonEmpty!38124) b_and!33213)
(check-sat b_and!33213 (not b_next!20727))
(get-model)

(declare-fun d!123625 () Bool)

(declare-fun res!690079 () Bool)

(declare-fun e!583360 () Bool)

(assert (=> d!123625 (=> (not res!690079) (not e!583360))))

(declare-fun simpleValid!396 (LongMapFixedSize!5634) Bool)

(assert (=> d!123625 (= res!690079 (simpleValid!396 thiss!1427))))

(assert (=> d!123625 (= (valid!2082 thiss!1427) e!583360)))

(declare-fun b!1032348 () Bool)

(declare-fun res!690080 () Bool)

(assert (=> b!1032348 (=> (not res!690080) (not e!583360))))

(declare-fun arrayCountValidKeys!0 (array!64942 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1032348 (= res!690080 (= (arrayCountValidKeys!0 (_keys!11361 thiss!1427) #b00000000000000000000000000000000 (size!31787 (_keys!11361 thiss!1427))) (_size!2872 thiss!1427)))))

(declare-fun b!1032349 () Bool)

(declare-fun res!690081 () Bool)

(assert (=> b!1032349 (=> (not res!690081) (not e!583360))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64942 (_ BitVec 32)) Bool)

(assert (=> b!1032349 (= res!690081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11361 thiss!1427) (mask!30004 thiss!1427)))))

(declare-fun b!1032350 () Bool)

(declare-datatypes ((List!22012 0))(
  ( (Nil!22009) (Cons!22008 (h!23210 (_ BitVec 64)) (t!31213 List!22012)) )
))
(declare-fun arrayNoDuplicates!0 (array!64942 (_ BitVec 32) List!22012) Bool)

(assert (=> b!1032350 (= e!583360 (arrayNoDuplicates!0 (_keys!11361 thiss!1427) #b00000000000000000000000000000000 Nil!22009))))

(assert (= (and d!123625 res!690079) b!1032348))

(assert (= (and b!1032348 res!690080) b!1032349))

(assert (= (and b!1032349 res!690081) b!1032350))

(declare-fun m!952791 () Bool)

(assert (=> d!123625 m!952791))

(declare-fun m!952793 () Bool)

(assert (=> b!1032348 m!952793))

(declare-fun m!952795 () Bool)

(assert (=> b!1032349 m!952795))

(declare-fun m!952797 () Bool)

(assert (=> b!1032350 m!952797))

(assert (=> start!90156 d!123625))

(declare-fun d!123627 () Bool)

(assert (=> d!123627 (= (array_inv!24037 (_keys!11361 thiss!1427)) (bvsge (size!31787 (_keys!11361 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1032322 d!123627))

(declare-fun d!123629 () Bool)

(assert (=> d!123629 (= (array_inv!24038 (_values!6214 thiss!1427)) (bvsge (size!31788 (_values!6214 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1032322 d!123629))

(declare-fun d!123631 () Bool)

(assert (=> d!123631 (= (validMask!0 (mask!30004 thiss!1427)) (and (or (= (mask!30004 thiss!1427) #b00000000000000000000000000000111) (= (mask!30004 thiss!1427) #b00000000000000000000000000001111) (= (mask!30004 thiss!1427) #b00000000000000000000000000011111) (= (mask!30004 thiss!1427) #b00000000000000000000000000111111) (= (mask!30004 thiss!1427) #b00000000000000000000000001111111) (= (mask!30004 thiss!1427) #b00000000000000000000000011111111) (= (mask!30004 thiss!1427) #b00000000000000000000000111111111) (= (mask!30004 thiss!1427) #b00000000000000000000001111111111) (= (mask!30004 thiss!1427) #b00000000000000000000011111111111) (= (mask!30004 thiss!1427) #b00000000000000000000111111111111) (= (mask!30004 thiss!1427) #b00000000000000000001111111111111) (= (mask!30004 thiss!1427) #b00000000000000000011111111111111) (= (mask!30004 thiss!1427) #b00000000000000000111111111111111) (= (mask!30004 thiss!1427) #b00000000000000001111111111111111) (= (mask!30004 thiss!1427) #b00000000000000011111111111111111) (= (mask!30004 thiss!1427) #b00000000000000111111111111111111) (= (mask!30004 thiss!1427) #b00000000000001111111111111111111) (= (mask!30004 thiss!1427) #b00000000000011111111111111111111) (= (mask!30004 thiss!1427) #b00000000000111111111111111111111) (= (mask!30004 thiss!1427) #b00000000001111111111111111111111) (= (mask!30004 thiss!1427) #b00000000011111111111111111111111) (= (mask!30004 thiss!1427) #b00000000111111111111111111111111) (= (mask!30004 thiss!1427) #b00000001111111111111111111111111) (= (mask!30004 thiss!1427) #b00000011111111111111111111111111) (= (mask!30004 thiss!1427) #b00000111111111111111111111111111) (= (mask!30004 thiss!1427) #b00001111111111111111111111111111) (= (mask!30004 thiss!1427) #b00011111111111111111111111111111) (= (mask!30004 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30004 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1032320 d!123631))

(declare-fun mapIsEmpty!38130 () Bool)

(declare-fun mapRes!38130 () Bool)

(assert (=> mapIsEmpty!38130 mapRes!38130))

(declare-fun b!1032357 () Bool)

(declare-fun e!583366 () Bool)

(assert (=> b!1032357 (= e!583366 tp_is_empty!24447)))

(declare-fun mapNonEmpty!38130 () Bool)

(declare-fun tp!73262 () Bool)

(assert (=> mapNonEmpty!38130 (= mapRes!38130 (and tp!73262 e!583366))))

(declare-fun mapValue!38130 () ValueCell!11520)

(declare-fun mapKey!38130 () (_ BitVec 32))

(declare-fun mapRest!38130 () (Array (_ BitVec 32) ValueCell!11520))

(assert (=> mapNonEmpty!38130 (= mapRest!38124 (store mapRest!38130 mapKey!38130 mapValue!38130))))

(declare-fun condMapEmpty!38130 () Bool)

(declare-fun mapDefault!38130 () ValueCell!11520)

(assert (=> mapNonEmpty!38124 (= condMapEmpty!38130 (= mapRest!38124 ((as const (Array (_ BitVec 32) ValueCell!11520)) mapDefault!38130)))))

(declare-fun e!583365 () Bool)

(assert (=> mapNonEmpty!38124 (= tp!73252 (and e!583365 mapRes!38130))))

(declare-fun b!1032358 () Bool)

(assert (=> b!1032358 (= e!583365 tp_is_empty!24447)))

(assert (= (and mapNonEmpty!38124 condMapEmpty!38130) mapIsEmpty!38130))

(assert (= (and mapNonEmpty!38124 (not condMapEmpty!38130)) mapNonEmpty!38130))

(assert (= (and mapNonEmpty!38130 ((_ is ValueCellFull!11520) mapValue!38130)) b!1032357))

(assert (= (and mapNonEmpty!38124 ((_ is ValueCellFull!11520) mapDefault!38130)) b!1032358))

(declare-fun m!952799 () Bool)

(assert (=> mapNonEmpty!38130 m!952799))

(check-sat (not mapNonEmpty!38130) (not b!1032350) (not b!1032348) (not b_next!20727) tp_is_empty!24447 b_and!33213 (not d!123625) (not b!1032349))
(check-sat b_and!33213 (not b_next!20727))
(get-model)

(declare-fun b!1032369 () Bool)

(declare-fun e!583377 () Bool)

(declare-fun e!583375 () Bool)

(assert (=> b!1032369 (= e!583377 e!583375)))

(declare-fun res!690088 () Bool)

(assert (=> b!1032369 (=> (not res!690088) (not e!583375))))

(declare-fun e!583376 () Bool)

(assert (=> b!1032369 (= res!690088 (not e!583376))))

(declare-fun res!690089 () Bool)

(assert (=> b!1032369 (=> (not res!690089) (not e!583376))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1032369 (= res!690089 (validKeyInArray!0 (select (arr!31269 (_keys!11361 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1032370 () Bool)

(declare-fun e!583378 () Bool)

(declare-fun call!43594 () Bool)

(assert (=> b!1032370 (= e!583378 call!43594)))

(declare-fun b!1032371 () Bool)

(assert (=> b!1032371 (= e!583375 e!583378)))

(declare-fun c!104252 () Bool)

(assert (=> b!1032371 (= c!104252 (validKeyInArray!0 (select (arr!31269 (_keys!11361 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1032372 () Bool)

(assert (=> b!1032372 (= e!583378 call!43594)))

(declare-fun b!1032373 () Bool)

(declare-fun contains!6029 (List!22012 (_ BitVec 64)) Bool)

(assert (=> b!1032373 (= e!583376 (contains!6029 Nil!22009 (select (arr!31269 (_keys!11361 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!123633 () Bool)

(declare-fun res!690090 () Bool)

(assert (=> d!123633 (=> res!690090 e!583377)))

(assert (=> d!123633 (= res!690090 (bvsge #b00000000000000000000000000000000 (size!31787 (_keys!11361 thiss!1427))))))

(assert (=> d!123633 (= (arrayNoDuplicates!0 (_keys!11361 thiss!1427) #b00000000000000000000000000000000 Nil!22009) e!583377)))

(declare-fun bm!43591 () Bool)

(assert (=> bm!43591 (= call!43594 (arrayNoDuplicates!0 (_keys!11361 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104252 (Cons!22008 (select (arr!31269 (_keys!11361 thiss!1427)) #b00000000000000000000000000000000) Nil!22009) Nil!22009)))))

(assert (= (and d!123633 (not res!690090)) b!1032369))

(assert (= (and b!1032369 res!690089) b!1032373))

(assert (= (and b!1032369 res!690088) b!1032371))

(assert (= (and b!1032371 c!104252) b!1032372))

(assert (= (and b!1032371 (not c!104252)) b!1032370))

(assert (= (or b!1032372 b!1032370) bm!43591))

(declare-fun m!952801 () Bool)

(assert (=> b!1032369 m!952801))

(assert (=> b!1032369 m!952801))

(declare-fun m!952803 () Bool)

(assert (=> b!1032369 m!952803))

(assert (=> b!1032371 m!952801))

(assert (=> b!1032371 m!952801))

(assert (=> b!1032371 m!952803))

(assert (=> b!1032373 m!952801))

(assert (=> b!1032373 m!952801))

(declare-fun m!952805 () Bool)

(assert (=> b!1032373 m!952805))

(assert (=> bm!43591 m!952801))

(declare-fun m!952807 () Bool)

(assert (=> bm!43591 m!952807))

(assert (=> b!1032350 d!123633))

(declare-fun b!1032382 () Bool)

(declare-fun e!583383 () (_ BitVec 32))

(declare-fun call!43597 () (_ BitVec 32))

(assert (=> b!1032382 (= e!583383 (bvadd #b00000000000000000000000000000001 call!43597))))

(declare-fun bm!43594 () Bool)

(assert (=> bm!43594 (= call!43597 (arrayCountValidKeys!0 (_keys!11361 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31787 (_keys!11361 thiss!1427))))))

(declare-fun b!1032383 () Bool)

(declare-fun e!583384 () (_ BitVec 32))

(assert (=> b!1032383 (= e!583384 e!583383)))

(declare-fun c!104258 () Bool)

(assert (=> b!1032383 (= c!104258 (validKeyInArray!0 (select (arr!31269 (_keys!11361 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1032384 () Bool)

(assert (=> b!1032384 (= e!583384 #b00000000000000000000000000000000)))

(declare-fun d!123635 () Bool)

(declare-fun lt!456009 () (_ BitVec 32))

(assert (=> d!123635 (and (bvsge lt!456009 #b00000000000000000000000000000000) (bvsle lt!456009 (bvsub (size!31787 (_keys!11361 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!123635 (= lt!456009 e!583384)))

(declare-fun c!104257 () Bool)

(assert (=> d!123635 (= c!104257 (bvsge #b00000000000000000000000000000000 (size!31787 (_keys!11361 thiss!1427))))))

(assert (=> d!123635 (and (bvsle #b00000000000000000000000000000000 (size!31787 (_keys!11361 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31787 (_keys!11361 thiss!1427)) (size!31787 (_keys!11361 thiss!1427))))))

(assert (=> d!123635 (= (arrayCountValidKeys!0 (_keys!11361 thiss!1427) #b00000000000000000000000000000000 (size!31787 (_keys!11361 thiss!1427))) lt!456009)))

(declare-fun b!1032385 () Bool)

(assert (=> b!1032385 (= e!583383 call!43597)))

(assert (= (and d!123635 c!104257) b!1032384))

(assert (= (and d!123635 (not c!104257)) b!1032383))

(assert (= (and b!1032383 c!104258) b!1032382))

(assert (= (and b!1032383 (not c!104258)) b!1032385))

(assert (= (or b!1032382 b!1032385) bm!43594))

(declare-fun m!952809 () Bool)

(assert (=> bm!43594 m!952809))

(assert (=> b!1032383 m!952801))

(assert (=> b!1032383 m!952801))

(assert (=> b!1032383 m!952803))

(assert (=> b!1032348 d!123635))

(declare-fun bm!43597 () Bool)

(declare-fun call!43600 () Bool)

(assert (=> bm!43597 (= call!43600 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11361 thiss!1427) (mask!30004 thiss!1427)))))

(declare-fun b!1032394 () Bool)

(declare-fun e!583391 () Bool)

(assert (=> b!1032394 (= e!583391 call!43600)))

(declare-fun b!1032395 () Bool)

(declare-fun e!583392 () Bool)

(assert (=> b!1032395 (= e!583392 call!43600)))

(declare-fun b!1032396 () Bool)

(assert (=> b!1032396 (= e!583391 e!583392)))

(declare-fun lt!456017 () (_ BitVec 64))

(assert (=> b!1032396 (= lt!456017 (select (arr!31269 (_keys!11361 thiss!1427)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33796 0))(
  ( (Unit!33797) )
))
(declare-fun lt!456018 () Unit!33796)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!64942 (_ BitVec 64) (_ BitVec 32)) Unit!33796)

(assert (=> b!1032396 (= lt!456018 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11361 thiss!1427) lt!456017 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!64942 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1032396 (arrayContainsKey!0 (_keys!11361 thiss!1427) lt!456017 #b00000000000000000000000000000000)))

(declare-fun lt!456016 () Unit!33796)

(assert (=> b!1032396 (= lt!456016 lt!456018)))

(declare-fun res!690096 () Bool)

(declare-datatypes ((SeekEntryResult!9726 0))(
  ( (MissingZero!9726 (index!41274 (_ BitVec 32))) (Found!9726 (index!41275 (_ BitVec 32))) (Intermediate!9726 (undefined!10538 Bool) (index!41276 (_ BitVec 32)) (x!91999 (_ BitVec 32))) (Undefined!9726) (MissingVacant!9726 (index!41277 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!64942 (_ BitVec 32)) SeekEntryResult!9726)

(assert (=> b!1032396 (= res!690096 (= (seekEntryOrOpen!0 (select (arr!31269 (_keys!11361 thiss!1427)) #b00000000000000000000000000000000) (_keys!11361 thiss!1427) (mask!30004 thiss!1427)) (Found!9726 #b00000000000000000000000000000000)))))

(assert (=> b!1032396 (=> (not res!690096) (not e!583392))))

(declare-fun d!123637 () Bool)

(declare-fun res!690095 () Bool)

(declare-fun e!583393 () Bool)

(assert (=> d!123637 (=> res!690095 e!583393)))

(assert (=> d!123637 (= res!690095 (bvsge #b00000000000000000000000000000000 (size!31787 (_keys!11361 thiss!1427))))))

(assert (=> d!123637 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11361 thiss!1427) (mask!30004 thiss!1427)) e!583393)))

(declare-fun b!1032397 () Bool)

(assert (=> b!1032397 (= e!583393 e!583391)))

(declare-fun c!104261 () Bool)

(assert (=> b!1032397 (= c!104261 (validKeyInArray!0 (select (arr!31269 (_keys!11361 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!123637 (not res!690095)) b!1032397))

(assert (= (and b!1032397 c!104261) b!1032396))

(assert (= (and b!1032397 (not c!104261)) b!1032394))

(assert (= (and b!1032396 res!690096) b!1032395))

(assert (= (or b!1032395 b!1032394) bm!43597))

(declare-fun m!952811 () Bool)

(assert (=> bm!43597 m!952811))

(assert (=> b!1032396 m!952801))

(declare-fun m!952813 () Bool)

(assert (=> b!1032396 m!952813))

(declare-fun m!952815 () Bool)

(assert (=> b!1032396 m!952815))

(assert (=> b!1032396 m!952801))

(declare-fun m!952817 () Bool)

(assert (=> b!1032396 m!952817))

(assert (=> b!1032397 m!952801))

(assert (=> b!1032397 m!952801))

(assert (=> b!1032397 m!952803))

(assert (=> b!1032349 d!123637))

(declare-fun b!1032408 () Bool)

(declare-fun res!690105 () Bool)

(declare-fun e!583396 () Bool)

(assert (=> b!1032408 (=> (not res!690105) (not e!583396))))

(declare-fun size!31791 (LongMapFixedSize!5634) (_ BitVec 32))

(assert (=> b!1032408 (= res!690105 (= (size!31791 thiss!1427) (bvadd (_size!2872 thiss!1427) (bvsdiv (bvadd (extraKeys!5923 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1032409 () Bool)

(assert (=> b!1032409 (= e!583396 (and (bvsge (extraKeys!5923 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5923 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2872 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun d!123639 () Bool)

(declare-fun res!690107 () Bool)

(assert (=> d!123639 (=> (not res!690107) (not e!583396))))

(assert (=> d!123639 (= res!690107 (validMask!0 (mask!30004 thiss!1427)))))

(assert (=> d!123639 (= (simpleValid!396 thiss!1427) e!583396)))

(declare-fun b!1032407 () Bool)

(declare-fun res!690106 () Bool)

(assert (=> b!1032407 (=> (not res!690106) (not e!583396))))

(assert (=> b!1032407 (= res!690106 (bvsge (size!31791 thiss!1427) (_size!2872 thiss!1427)))))

(declare-fun b!1032406 () Bool)

(declare-fun res!690108 () Bool)

(assert (=> b!1032406 (=> (not res!690108) (not e!583396))))

(assert (=> b!1032406 (= res!690108 (and (= (size!31788 (_values!6214 thiss!1427)) (bvadd (mask!30004 thiss!1427) #b00000000000000000000000000000001)) (= (size!31787 (_keys!11361 thiss!1427)) (size!31788 (_values!6214 thiss!1427))) (bvsge (_size!2872 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2872 thiss!1427) (bvadd (mask!30004 thiss!1427) #b00000000000000000000000000000001))))))

(assert (= (and d!123639 res!690107) b!1032406))

(assert (= (and b!1032406 res!690108) b!1032407))

(assert (= (and b!1032407 res!690106) b!1032408))

(assert (= (and b!1032408 res!690105) b!1032409))

(declare-fun m!952819 () Bool)

(assert (=> b!1032408 m!952819))

(assert (=> d!123639 m!952775))

(assert (=> b!1032407 m!952819))

(assert (=> d!123625 d!123639))

(declare-fun mapIsEmpty!38131 () Bool)

(declare-fun mapRes!38131 () Bool)

(assert (=> mapIsEmpty!38131 mapRes!38131))

(declare-fun b!1032410 () Bool)

(declare-fun e!583398 () Bool)

(assert (=> b!1032410 (= e!583398 tp_is_empty!24447)))

(declare-fun mapNonEmpty!38131 () Bool)

(declare-fun tp!73263 () Bool)

(assert (=> mapNonEmpty!38131 (= mapRes!38131 (and tp!73263 e!583398))))

(declare-fun mapRest!38131 () (Array (_ BitVec 32) ValueCell!11520))

(declare-fun mapKey!38131 () (_ BitVec 32))

(declare-fun mapValue!38131 () ValueCell!11520)

(assert (=> mapNonEmpty!38131 (= mapRest!38130 (store mapRest!38131 mapKey!38131 mapValue!38131))))

(declare-fun condMapEmpty!38131 () Bool)

(declare-fun mapDefault!38131 () ValueCell!11520)

(assert (=> mapNonEmpty!38130 (= condMapEmpty!38131 (= mapRest!38130 ((as const (Array (_ BitVec 32) ValueCell!11520)) mapDefault!38131)))))

(declare-fun e!583397 () Bool)

(assert (=> mapNonEmpty!38130 (= tp!73262 (and e!583397 mapRes!38131))))

(declare-fun b!1032411 () Bool)

(assert (=> b!1032411 (= e!583397 tp_is_empty!24447)))

(assert (= (and mapNonEmpty!38130 condMapEmpty!38131) mapIsEmpty!38131))

(assert (= (and mapNonEmpty!38130 (not condMapEmpty!38131)) mapNonEmpty!38131))

(assert (= (and mapNonEmpty!38131 ((_ is ValueCellFull!11520) mapValue!38131)) b!1032410))

(assert (= (and mapNonEmpty!38130 ((_ is ValueCellFull!11520) mapDefault!38131)) b!1032411))

(declare-fun m!952821 () Bool)

(assert (=> mapNonEmpty!38131 m!952821))

(check-sat (not d!123639) (not b!1032373) (not bm!43594) (not mapNonEmpty!38131) (not b_next!20727) (not b!1032408) (not b!1032407) tp_is_empty!24447 (not b!1032383) (not b!1032397) (not bm!43597) (not bm!43591) (not b!1032371) (not b!1032369) (not b!1032396) b_and!33213)
(check-sat b_and!33213 (not b_next!20727))
