; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90798 () Bool)

(assert start!90798)

(declare-fun b!1037624 () Bool)

(declare-fun b_free!20913 () Bool)

(declare-fun b_next!20913 () Bool)

(assert (=> b!1037624 (= b_free!20913 (not b_next!20913))))

(declare-fun tp!73892 () Bool)

(declare-fun b_and!33463 () Bool)

(assert (=> b!1037624 (= tp!73892 b_and!33463)))

(declare-fun tp_is_empty!24633 () Bool)

(declare-datatypes ((V!37717 0))(
  ( (V!37718 (val!12367 Int)) )
))
(declare-datatypes ((ValueCell!11613 0))(
  ( (ValueCellFull!11613 (v!14951 V!37717)) (EmptyCell!11613) )
))
(declare-datatypes ((array!65358 0))(
  ( (array!65359 (arr!31455 (Array (_ BitVec 32) (_ BitVec 64))) (size!31986 (_ BitVec 32))) )
))
(declare-datatypes ((array!65360 0))(
  ( (array!65361 (arr!31456 (Array (_ BitVec 32) ValueCell!11613)) (size!31987 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5820 0))(
  ( (LongMapFixedSize!5821 (defaultEntry!6292 Int) (mask!30212 (_ BitVec 32)) (extraKeys!6020 (_ BitVec 32)) (zeroValue!6126 V!37717) (minValue!6126 V!37717) (_size!2965 (_ BitVec 32)) (_keys!11487 array!65358) (_values!6315 array!65360) (_vacant!2965 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5820)

(declare-fun e!587056 () Bool)

(declare-fun e!587052 () Bool)

(declare-fun array_inv!24159 (array!65358) Bool)

(declare-fun array_inv!24160 (array!65360) Bool)

(assert (=> b!1037624 (= e!587056 (and tp!73892 tp_is_empty!24633 (array_inv!24159 (_keys!11487 thiss!1427)) (array_inv!24160 (_values!6315 thiss!1427)) e!587052))))

(declare-fun b!1037625 () Bool)

(declare-fun e!587050 () Bool)

(declare-datatypes ((List!22043 0))(
  ( (Nil!22040) (Cons!22039 (h!23242 (_ BitVec 64)) (t!31264 List!22043)) )
))
(declare-fun contains!6049 (List!22043 (_ BitVec 64)) Bool)

(assert (=> b!1037625 (= e!587050 (not (contains!6049 Nil!22040 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1037626 () Bool)

(declare-fun e!587054 () Bool)

(declare-fun e!587051 () Bool)

(assert (=> b!1037626 (= e!587054 (not e!587051))))

(declare-fun res!692352 () Bool)

(assert (=> b!1037626 (=> res!692352 e!587051)))

(assert (=> b!1037626 (= res!692352 (or (bvsge (size!31986 (_keys!11487 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31986 (_keys!11487 thiss!1427)))))))

(declare-datatypes ((SeekEntryResult!9755 0))(
  ( (MissingZero!9755 (index!41390 (_ BitVec 32))) (Found!9755 (index!41391 (_ BitVec 32))) (Intermediate!9755 (undefined!10567 Bool) (index!41392 (_ BitVec 32)) (x!92573 (_ BitVec 32))) (Undefined!9755) (MissingVacant!9755 (index!41393 (_ BitVec 32))) )
))
(declare-fun lt!457532 () SeekEntryResult!9755)

(declare-fun arrayCountValidKeys!0 (array!65358 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1037626 (= (arrayCountValidKeys!0 (array!65359 (store (arr!31455 (_keys!11487 thiss!1427)) (index!41391 lt!457532) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31986 (_keys!11487 thiss!1427))) #b00000000000000000000000000000000 (size!31986 (_keys!11487 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11487 thiss!1427) #b00000000000000000000000000000000 (size!31986 (_keys!11487 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33942 0))(
  ( (Unit!33943) )
))
(declare-fun lt!457531 () Unit!33942)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65358 (_ BitVec 32) (_ BitVec 64)) Unit!33942)

(assert (=> b!1037626 (= lt!457531 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11487 thiss!1427) (index!41391 lt!457532) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037627 () Bool)

(assert (=> b!1037627 (= e!587051 e!587050)))

(declare-fun res!692348 () Bool)

(assert (=> b!1037627 (=> (not res!692348) (not e!587050))))

(assert (=> b!1037627 (= res!692348 (not (contains!6049 Nil!22040 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!692350 () Bool)

(declare-fun e!587058 () Bool)

(assert (=> start!90798 (=> (not res!692350) (not e!587058))))

(declare-fun valid!2145 (LongMapFixedSize!5820) Bool)

(assert (=> start!90798 (= res!692350 (valid!2145 thiss!1427))))

(assert (=> start!90798 e!587058))

(assert (=> start!90798 e!587056))

(assert (=> start!90798 true))

(declare-fun mapNonEmpty!38484 () Bool)

(declare-fun mapRes!38484 () Bool)

(declare-fun tp!73891 () Bool)

(declare-fun e!587057 () Bool)

(assert (=> mapNonEmpty!38484 (= mapRes!38484 (and tp!73891 e!587057))))

(declare-fun mapKey!38484 () (_ BitVec 32))

(declare-fun mapRest!38484 () (Array (_ BitVec 32) ValueCell!11613))

(declare-fun mapValue!38484 () ValueCell!11613)

(assert (=> mapNonEmpty!38484 (= (arr!31456 (_values!6315 thiss!1427)) (store mapRest!38484 mapKey!38484 mapValue!38484))))

(declare-fun b!1037628 () Bool)

(assert (=> b!1037628 (= e!587057 tp_is_empty!24633)))

(declare-fun b!1037629 () Bool)

(declare-fun res!692349 () Bool)

(assert (=> b!1037629 (=> (not res!692349) (not e!587058))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1037629 (= res!692349 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1037630 () Bool)

(declare-fun res!692353 () Bool)

(assert (=> b!1037630 (=> res!692353 e!587051)))

(declare-fun noDuplicate!1492 (List!22043) Bool)

(assert (=> b!1037630 (= res!692353 (not (noDuplicate!1492 Nil!22040)))))

(declare-fun b!1037631 () Bool)

(assert (=> b!1037631 (= e!587058 e!587054)))

(declare-fun res!692351 () Bool)

(assert (=> b!1037631 (=> (not res!692351) (not e!587054))))

(get-info :version)

(assert (=> b!1037631 (= res!692351 ((_ is Found!9755) lt!457532))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65358 (_ BitVec 32)) SeekEntryResult!9755)

(assert (=> b!1037631 (= lt!457532 (seekEntry!0 key!909 (_keys!11487 thiss!1427) (mask!30212 thiss!1427)))))

(declare-fun b!1037632 () Bool)

(declare-fun e!587055 () Bool)

(assert (=> b!1037632 (= e!587052 (and e!587055 mapRes!38484))))

(declare-fun condMapEmpty!38484 () Bool)

(declare-fun mapDefault!38484 () ValueCell!11613)

(assert (=> b!1037632 (= condMapEmpty!38484 (= (arr!31456 (_values!6315 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11613)) mapDefault!38484)))))

(declare-fun b!1037633 () Bool)

(assert (=> b!1037633 (= e!587055 tp_is_empty!24633)))

(declare-fun mapIsEmpty!38484 () Bool)

(assert (=> mapIsEmpty!38484 mapRes!38484))

(assert (= (and start!90798 res!692350) b!1037629))

(assert (= (and b!1037629 res!692349) b!1037631))

(assert (= (and b!1037631 res!692351) b!1037626))

(assert (= (and b!1037626 (not res!692352)) b!1037630))

(assert (= (and b!1037630 (not res!692353)) b!1037627))

(assert (= (and b!1037627 res!692348) b!1037625))

(assert (= (and b!1037632 condMapEmpty!38484) mapIsEmpty!38484))

(assert (= (and b!1037632 (not condMapEmpty!38484)) mapNonEmpty!38484))

(assert (= (and mapNonEmpty!38484 ((_ is ValueCellFull!11613) mapValue!38484)) b!1037628))

(assert (= (and b!1037632 ((_ is ValueCellFull!11613) mapDefault!38484)) b!1037633))

(assert (= b!1037624 b!1037632))

(assert (= start!90798 b!1037624))

(declare-fun m!957907 () Bool)

(assert (=> b!1037624 m!957907))

(declare-fun m!957909 () Bool)

(assert (=> b!1037624 m!957909))

(declare-fun m!957911 () Bool)

(assert (=> b!1037625 m!957911))

(declare-fun m!957913 () Bool)

(assert (=> mapNonEmpty!38484 m!957913))

(declare-fun m!957915 () Bool)

(assert (=> b!1037630 m!957915))

(declare-fun m!957917 () Bool)

(assert (=> b!1037626 m!957917))

(declare-fun m!957919 () Bool)

(assert (=> b!1037626 m!957919))

(declare-fun m!957921 () Bool)

(assert (=> b!1037626 m!957921))

(declare-fun m!957923 () Bool)

(assert (=> b!1037626 m!957923))

(declare-fun m!957925 () Bool)

(assert (=> b!1037631 m!957925))

(declare-fun m!957927 () Bool)

(assert (=> b!1037627 m!957927))

(declare-fun m!957929 () Bool)

(assert (=> start!90798 m!957929))

(check-sat (not b_next!20913) (not b!1037631) (not b!1037624) (not start!90798) (not mapNonEmpty!38484) b_and!33463 tp_is_empty!24633 (not b!1037627) (not b!1037626) (not b!1037625) (not b!1037630))
(check-sat b_and!33463 (not b_next!20913))
(get-model)

(declare-fun d!125213 () Bool)

(declare-fun res!692378 () Bool)

(declare-fun e!587088 () Bool)

(assert (=> d!125213 (=> (not res!692378) (not e!587088))))

(declare-fun simpleValid!418 (LongMapFixedSize!5820) Bool)

(assert (=> d!125213 (= res!692378 (simpleValid!418 thiss!1427))))

(assert (=> d!125213 (= (valid!2145 thiss!1427) e!587088)))

(declare-fun b!1037670 () Bool)

(declare-fun res!692379 () Bool)

(assert (=> b!1037670 (=> (not res!692379) (not e!587088))))

(assert (=> b!1037670 (= res!692379 (= (arrayCountValidKeys!0 (_keys!11487 thiss!1427) #b00000000000000000000000000000000 (size!31986 (_keys!11487 thiss!1427))) (_size!2965 thiss!1427)))))

(declare-fun b!1037671 () Bool)

(declare-fun res!692380 () Bool)

(assert (=> b!1037671 (=> (not res!692380) (not e!587088))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65358 (_ BitVec 32)) Bool)

(assert (=> b!1037671 (= res!692380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11487 thiss!1427) (mask!30212 thiss!1427)))))

(declare-fun b!1037672 () Bool)

(declare-fun arrayNoDuplicates!0 (array!65358 (_ BitVec 32) List!22043) Bool)

(assert (=> b!1037672 (= e!587088 (arrayNoDuplicates!0 (_keys!11487 thiss!1427) #b00000000000000000000000000000000 Nil!22040))))

(assert (= (and d!125213 res!692378) b!1037670))

(assert (= (and b!1037670 res!692379) b!1037671))

(assert (= (and b!1037671 res!692380) b!1037672))

(declare-fun m!957955 () Bool)

(assert (=> d!125213 m!957955))

(assert (=> b!1037670 m!957921))

(declare-fun m!957957 () Bool)

(assert (=> b!1037671 m!957957))

(declare-fun m!957959 () Bool)

(assert (=> b!1037672 m!957959))

(assert (=> start!90798 d!125213))

(declare-fun d!125215 () Bool)

(declare-fun lt!457541 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!520 (List!22043) (InoxSet (_ BitVec 64)))

(assert (=> d!125215 (= lt!457541 (select (content!520 Nil!22040) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!587094 () Bool)

(assert (=> d!125215 (= lt!457541 e!587094)))

(declare-fun res!692385 () Bool)

(assert (=> d!125215 (=> (not res!692385) (not e!587094))))

(assert (=> d!125215 (= res!692385 ((_ is Cons!22039) Nil!22040))))

(assert (=> d!125215 (= (contains!6049 Nil!22040 #b0000000000000000000000000000000000000000000000000000000000000000) lt!457541)))

(declare-fun b!1037677 () Bool)

(declare-fun e!587093 () Bool)

(assert (=> b!1037677 (= e!587094 e!587093)))

(declare-fun res!692386 () Bool)

(assert (=> b!1037677 (=> res!692386 e!587093)))

(assert (=> b!1037677 (= res!692386 (= (h!23242 Nil!22040) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037678 () Bool)

(assert (=> b!1037678 (= e!587093 (contains!6049 (t!31264 Nil!22040) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!125215 res!692385) b!1037677))

(assert (= (and b!1037677 (not res!692386)) b!1037678))

(declare-fun m!957961 () Bool)

(assert (=> d!125215 m!957961))

(declare-fun m!957963 () Bool)

(assert (=> d!125215 m!957963))

(declare-fun m!957965 () Bool)

(assert (=> b!1037678 m!957965))

(assert (=> b!1037627 d!125215))

(declare-fun b!1037691 () Bool)

(declare-fun e!587103 () SeekEntryResult!9755)

(declare-fun lt!457550 () SeekEntryResult!9755)

(assert (=> b!1037691 (= e!587103 (MissingZero!9755 (index!41392 lt!457550)))))

(declare-fun b!1037692 () Bool)

(declare-fun e!587102 () SeekEntryResult!9755)

(declare-fun e!587101 () SeekEntryResult!9755)

(assert (=> b!1037692 (= e!587102 e!587101)))

(declare-fun lt!457551 () (_ BitVec 64))

(assert (=> b!1037692 (= lt!457551 (select (arr!31455 (_keys!11487 thiss!1427)) (index!41392 lt!457550)))))

(declare-fun c!105098 () Bool)

(assert (=> b!1037692 (= c!105098 (= lt!457551 key!909))))

(declare-fun b!1037693 () Bool)

(declare-fun lt!457553 () SeekEntryResult!9755)

(assert (=> b!1037693 (= e!587103 (ite ((_ is MissingVacant!9755) lt!457553) (MissingZero!9755 (index!41393 lt!457553)) lt!457553))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65358 (_ BitVec 32)) SeekEntryResult!9755)

(assert (=> b!1037693 (= lt!457553 (seekKeyOrZeroReturnVacant!0 (x!92573 lt!457550) (index!41392 lt!457550) (index!41392 lt!457550) key!909 (_keys!11487 thiss!1427) (mask!30212 thiss!1427)))))

(declare-fun b!1037694 () Bool)

(assert (=> b!1037694 (= e!587101 (Found!9755 (index!41392 lt!457550)))))

(declare-fun b!1037695 () Bool)

(assert (=> b!1037695 (= e!587102 Undefined!9755)))

(declare-fun b!1037696 () Bool)

(declare-fun c!105096 () Bool)

(assert (=> b!1037696 (= c!105096 (= lt!457551 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1037696 (= e!587101 e!587103)))

(declare-fun d!125217 () Bool)

(declare-fun lt!457552 () SeekEntryResult!9755)

(assert (=> d!125217 (and (or ((_ is MissingVacant!9755) lt!457552) (not ((_ is Found!9755) lt!457552)) (and (bvsge (index!41391 lt!457552) #b00000000000000000000000000000000) (bvslt (index!41391 lt!457552) (size!31986 (_keys!11487 thiss!1427))))) (not ((_ is MissingVacant!9755) lt!457552)) (or (not ((_ is Found!9755) lt!457552)) (= (select (arr!31455 (_keys!11487 thiss!1427)) (index!41391 lt!457552)) key!909)))))

(assert (=> d!125217 (= lt!457552 e!587102)))

(declare-fun c!105097 () Bool)

(assert (=> d!125217 (= c!105097 (and ((_ is Intermediate!9755) lt!457550) (undefined!10567 lt!457550)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65358 (_ BitVec 32)) SeekEntryResult!9755)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125217 (= lt!457550 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30212 thiss!1427)) key!909 (_keys!11487 thiss!1427) (mask!30212 thiss!1427)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!125217 (validMask!0 (mask!30212 thiss!1427))))

(assert (=> d!125217 (= (seekEntry!0 key!909 (_keys!11487 thiss!1427) (mask!30212 thiss!1427)) lt!457552)))

(assert (= (and d!125217 c!105097) b!1037695))

(assert (= (and d!125217 (not c!105097)) b!1037692))

(assert (= (and b!1037692 c!105098) b!1037694))

(assert (= (and b!1037692 (not c!105098)) b!1037696))

(assert (= (and b!1037696 c!105096) b!1037691))

(assert (= (and b!1037696 (not c!105096)) b!1037693))

(declare-fun m!957967 () Bool)

(assert (=> b!1037692 m!957967))

(declare-fun m!957969 () Bool)

(assert (=> b!1037693 m!957969))

(declare-fun m!957971 () Bool)

(assert (=> d!125217 m!957971))

(declare-fun m!957973 () Bool)

(assert (=> d!125217 m!957973))

(assert (=> d!125217 m!957973))

(declare-fun m!957975 () Bool)

(assert (=> d!125217 m!957975))

(declare-fun m!957977 () Bool)

(assert (=> d!125217 m!957977))

(assert (=> b!1037631 d!125217))

(declare-fun d!125219 () Bool)

(declare-fun lt!457554 () Bool)

(assert (=> d!125219 (= lt!457554 (select (content!520 Nil!22040) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!587105 () Bool)

(assert (=> d!125219 (= lt!457554 e!587105)))

(declare-fun res!692387 () Bool)

(assert (=> d!125219 (=> (not res!692387) (not e!587105))))

(assert (=> d!125219 (= res!692387 ((_ is Cons!22039) Nil!22040))))

(assert (=> d!125219 (= (contains!6049 Nil!22040 #b1000000000000000000000000000000000000000000000000000000000000000) lt!457554)))

(declare-fun b!1037697 () Bool)

(declare-fun e!587104 () Bool)

(assert (=> b!1037697 (= e!587105 e!587104)))

(declare-fun res!692388 () Bool)

(assert (=> b!1037697 (=> res!692388 e!587104)))

(assert (=> b!1037697 (= res!692388 (= (h!23242 Nil!22040) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037698 () Bool)

(assert (=> b!1037698 (= e!587104 (contains!6049 (t!31264 Nil!22040) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!125219 res!692387) b!1037697))

(assert (= (and b!1037697 (not res!692388)) b!1037698))

(assert (=> d!125219 m!957961))

(declare-fun m!957979 () Bool)

(assert (=> d!125219 m!957979))

(declare-fun m!957981 () Bool)

(assert (=> b!1037698 m!957981))

(assert (=> b!1037625 d!125219))

(declare-fun d!125221 () Bool)

(assert (=> d!125221 (= (array_inv!24159 (_keys!11487 thiss!1427)) (bvsge (size!31986 (_keys!11487 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1037624 d!125221))

(declare-fun d!125223 () Bool)

(assert (=> d!125223 (= (array_inv!24160 (_values!6315 thiss!1427)) (bvsge (size!31987 (_values!6315 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1037624 d!125223))

(declare-fun b!1037707 () Bool)

(declare-fun e!587110 () (_ BitVec 32))

(assert (=> b!1037707 (= e!587110 #b00000000000000000000000000000000)))

(declare-fun bm!43924 () Bool)

(declare-fun call!43927 () (_ BitVec 32))

(assert (=> bm!43924 (= call!43927 (arrayCountValidKeys!0 (array!65359 (store (arr!31455 (_keys!11487 thiss!1427)) (index!41391 lt!457532) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31986 (_keys!11487 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31986 (_keys!11487 thiss!1427))))))

(declare-fun d!125225 () Bool)

(declare-fun lt!457557 () (_ BitVec 32))

(assert (=> d!125225 (and (bvsge lt!457557 #b00000000000000000000000000000000) (bvsle lt!457557 (bvsub (size!31986 (array!65359 (store (arr!31455 (_keys!11487 thiss!1427)) (index!41391 lt!457532) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31986 (_keys!11487 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (=> d!125225 (= lt!457557 e!587110)))

(declare-fun c!105103 () Bool)

(assert (=> d!125225 (= c!105103 (bvsge #b00000000000000000000000000000000 (size!31986 (_keys!11487 thiss!1427))))))

(assert (=> d!125225 (and (bvsle #b00000000000000000000000000000000 (size!31986 (_keys!11487 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31986 (_keys!11487 thiss!1427)) (size!31986 (array!65359 (store (arr!31455 (_keys!11487 thiss!1427)) (index!41391 lt!457532) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31986 (_keys!11487 thiss!1427))))))))

(assert (=> d!125225 (= (arrayCountValidKeys!0 (array!65359 (store (arr!31455 (_keys!11487 thiss!1427)) (index!41391 lt!457532) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31986 (_keys!11487 thiss!1427))) #b00000000000000000000000000000000 (size!31986 (_keys!11487 thiss!1427))) lt!457557)))

(declare-fun b!1037708 () Bool)

(declare-fun e!587111 () (_ BitVec 32))

(assert (=> b!1037708 (= e!587111 call!43927)))

(declare-fun b!1037709 () Bool)

(assert (=> b!1037709 (= e!587111 (bvadd #b00000000000000000000000000000001 call!43927))))

(declare-fun b!1037710 () Bool)

(assert (=> b!1037710 (= e!587110 e!587111)))

(declare-fun c!105104 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1037710 (= c!105104 (validKeyInArray!0 (select (arr!31455 (array!65359 (store (arr!31455 (_keys!11487 thiss!1427)) (index!41391 lt!457532) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31986 (_keys!11487 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (= (and d!125225 c!105103) b!1037707))

(assert (= (and d!125225 (not c!105103)) b!1037710))

(assert (= (and b!1037710 c!105104) b!1037709))

(assert (= (and b!1037710 (not c!105104)) b!1037708))

(assert (= (or b!1037709 b!1037708) bm!43924))

(declare-fun m!957983 () Bool)

(assert (=> bm!43924 m!957983))

(declare-fun m!957985 () Bool)

(assert (=> b!1037710 m!957985))

(assert (=> b!1037710 m!957985))

(declare-fun m!957987 () Bool)

(assert (=> b!1037710 m!957987))

(assert (=> b!1037626 d!125225))

(declare-fun b!1037711 () Bool)

(declare-fun e!587112 () (_ BitVec 32))

(assert (=> b!1037711 (= e!587112 #b00000000000000000000000000000000)))

(declare-fun bm!43925 () Bool)

(declare-fun call!43928 () (_ BitVec 32))

(assert (=> bm!43925 (= call!43928 (arrayCountValidKeys!0 (_keys!11487 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31986 (_keys!11487 thiss!1427))))))

(declare-fun d!125227 () Bool)

(declare-fun lt!457558 () (_ BitVec 32))

(assert (=> d!125227 (and (bvsge lt!457558 #b00000000000000000000000000000000) (bvsle lt!457558 (bvsub (size!31986 (_keys!11487 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125227 (= lt!457558 e!587112)))

(declare-fun c!105105 () Bool)

(assert (=> d!125227 (= c!105105 (bvsge #b00000000000000000000000000000000 (size!31986 (_keys!11487 thiss!1427))))))

(assert (=> d!125227 (and (bvsle #b00000000000000000000000000000000 (size!31986 (_keys!11487 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31986 (_keys!11487 thiss!1427)) (size!31986 (_keys!11487 thiss!1427))))))

(assert (=> d!125227 (= (arrayCountValidKeys!0 (_keys!11487 thiss!1427) #b00000000000000000000000000000000 (size!31986 (_keys!11487 thiss!1427))) lt!457558)))

(declare-fun b!1037712 () Bool)

(declare-fun e!587113 () (_ BitVec 32))

(assert (=> b!1037712 (= e!587113 call!43928)))

(declare-fun b!1037713 () Bool)

(assert (=> b!1037713 (= e!587113 (bvadd #b00000000000000000000000000000001 call!43928))))

(declare-fun b!1037714 () Bool)

(assert (=> b!1037714 (= e!587112 e!587113)))

(declare-fun c!105106 () Bool)

(assert (=> b!1037714 (= c!105106 (validKeyInArray!0 (select (arr!31455 (_keys!11487 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!125227 c!105105) b!1037711))

(assert (= (and d!125227 (not c!105105)) b!1037714))

(assert (= (and b!1037714 c!105106) b!1037713))

(assert (= (and b!1037714 (not c!105106)) b!1037712))

(assert (= (or b!1037713 b!1037712) bm!43925))

(declare-fun m!957989 () Bool)

(assert (=> bm!43925 m!957989))

(declare-fun m!957991 () Bool)

(assert (=> b!1037714 m!957991))

(assert (=> b!1037714 m!957991))

(declare-fun m!957993 () Bool)

(assert (=> b!1037714 m!957993))

(assert (=> b!1037626 d!125227))

(declare-fun b!1037723 () Bool)

(declare-fun res!692397 () Bool)

(declare-fun e!587118 () Bool)

(assert (=> b!1037723 (=> (not res!692397) (not e!587118))))

(assert (=> b!1037723 (= res!692397 (validKeyInArray!0 (select (arr!31455 (_keys!11487 thiss!1427)) (index!41391 lt!457532))))))

(declare-fun d!125229 () Bool)

(declare-fun e!587119 () Bool)

(assert (=> d!125229 e!587119))

(declare-fun res!692399 () Bool)

(assert (=> d!125229 (=> (not res!692399) (not e!587119))))

(assert (=> d!125229 (= res!692399 (and (bvsge (index!41391 lt!457532) #b00000000000000000000000000000000) (bvslt (index!41391 lt!457532) (size!31986 (_keys!11487 thiss!1427)))))))

(declare-fun lt!457561 () Unit!33942)

(declare-fun choose!82 (array!65358 (_ BitVec 32) (_ BitVec 64)) Unit!33942)

(assert (=> d!125229 (= lt!457561 (choose!82 (_keys!11487 thiss!1427) (index!41391 lt!457532) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!125229 e!587118))

(declare-fun res!692400 () Bool)

(assert (=> d!125229 (=> (not res!692400) (not e!587118))))

(assert (=> d!125229 (= res!692400 (and (bvsge (index!41391 lt!457532) #b00000000000000000000000000000000) (bvslt (index!41391 lt!457532) (size!31986 (_keys!11487 thiss!1427)))))))

(assert (=> d!125229 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11487 thiss!1427) (index!41391 lt!457532) #b1000000000000000000000000000000000000000000000000000000000000000) lt!457561)))

(declare-fun b!1037726 () Bool)

(assert (=> b!1037726 (= e!587119 (= (arrayCountValidKeys!0 (array!65359 (store (arr!31455 (_keys!11487 thiss!1427)) (index!41391 lt!457532) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31986 (_keys!11487 thiss!1427))) #b00000000000000000000000000000000 (size!31986 (_keys!11487 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11487 thiss!1427) #b00000000000000000000000000000000 (size!31986 (_keys!11487 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1037725 () Bool)

(assert (=> b!1037725 (= e!587118 (bvslt (size!31986 (_keys!11487 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1037724 () Bool)

(declare-fun res!692398 () Bool)

(assert (=> b!1037724 (=> (not res!692398) (not e!587118))))

(assert (=> b!1037724 (= res!692398 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!125229 res!692400) b!1037723))

(assert (= (and b!1037723 res!692397) b!1037724))

(assert (= (and b!1037724 res!692398) b!1037725))

(assert (= (and d!125229 res!692399) b!1037726))

(declare-fun m!957995 () Bool)

(assert (=> b!1037723 m!957995))

(assert (=> b!1037723 m!957995))

(declare-fun m!957997 () Bool)

(assert (=> b!1037723 m!957997))

(declare-fun m!957999 () Bool)

(assert (=> d!125229 m!957999))

(assert (=> b!1037726 m!957917))

(assert (=> b!1037726 m!957919))

(assert (=> b!1037726 m!957921))

(declare-fun m!958001 () Bool)

(assert (=> b!1037724 m!958001))

(assert (=> b!1037626 d!125229))

(declare-fun d!125231 () Bool)

(declare-fun res!692405 () Bool)

(declare-fun e!587124 () Bool)

(assert (=> d!125231 (=> res!692405 e!587124)))

(assert (=> d!125231 (= res!692405 ((_ is Nil!22040) Nil!22040))))

(assert (=> d!125231 (= (noDuplicate!1492 Nil!22040) e!587124)))

(declare-fun b!1037731 () Bool)

(declare-fun e!587125 () Bool)

(assert (=> b!1037731 (= e!587124 e!587125)))

(declare-fun res!692406 () Bool)

(assert (=> b!1037731 (=> (not res!692406) (not e!587125))))

(assert (=> b!1037731 (= res!692406 (not (contains!6049 (t!31264 Nil!22040) (h!23242 Nil!22040))))))

(declare-fun b!1037732 () Bool)

(assert (=> b!1037732 (= e!587125 (noDuplicate!1492 (t!31264 Nil!22040)))))

(assert (= (and d!125231 (not res!692405)) b!1037731))

(assert (= (and b!1037731 res!692406) b!1037732))

(declare-fun m!958003 () Bool)

(assert (=> b!1037731 m!958003))

(declare-fun m!958005 () Bool)

(assert (=> b!1037732 m!958005))

(assert (=> b!1037630 d!125231))

(declare-fun b!1037739 () Bool)

(declare-fun e!587131 () Bool)

(assert (=> b!1037739 (= e!587131 tp_is_empty!24633)))

(declare-fun mapIsEmpty!38490 () Bool)

(declare-fun mapRes!38490 () Bool)

(assert (=> mapIsEmpty!38490 mapRes!38490))

(declare-fun b!1037740 () Bool)

(declare-fun e!587130 () Bool)

(assert (=> b!1037740 (= e!587130 tp_is_empty!24633)))

(declare-fun mapNonEmpty!38490 () Bool)

(declare-fun tp!73901 () Bool)

(assert (=> mapNonEmpty!38490 (= mapRes!38490 (and tp!73901 e!587131))))

(declare-fun mapRest!38490 () (Array (_ BitVec 32) ValueCell!11613))

(declare-fun mapValue!38490 () ValueCell!11613)

(declare-fun mapKey!38490 () (_ BitVec 32))

(assert (=> mapNonEmpty!38490 (= mapRest!38484 (store mapRest!38490 mapKey!38490 mapValue!38490))))

(declare-fun condMapEmpty!38490 () Bool)

(declare-fun mapDefault!38490 () ValueCell!11613)

(assert (=> mapNonEmpty!38484 (= condMapEmpty!38490 (= mapRest!38484 ((as const (Array (_ BitVec 32) ValueCell!11613)) mapDefault!38490)))))

(assert (=> mapNonEmpty!38484 (= tp!73891 (and e!587130 mapRes!38490))))

(assert (= (and mapNonEmpty!38484 condMapEmpty!38490) mapIsEmpty!38490))

(assert (= (and mapNonEmpty!38484 (not condMapEmpty!38490)) mapNonEmpty!38490))

(assert (= (and mapNonEmpty!38490 ((_ is ValueCellFull!11613) mapValue!38490)) b!1037739))

(assert (= (and mapNonEmpty!38484 ((_ is ValueCellFull!11613) mapDefault!38490)) b!1037740))

(declare-fun m!958007 () Bool)

(assert (=> mapNonEmpty!38490 m!958007))

(check-sat (not b!1037710) (not mapNonEmpty!38490) (not b!1037723) (not b!1037693) tp_is_empty!24633 (not bm!43924) (not b!1037671) (not b!1037731) (not b!1037678) (not bm!43925) (not b!1037726) (not b_next!20913) (not d!125215) (not d!125217) (not b!1037672) (not d!125229) (not b!1037670) b_and!33463 (not b!1037724) (not b!1037698) (not d!125213) (not d!125219) (not b!1037732) (not b!1037714))
(check-sat b_and!33463 (not b_next!20913))
