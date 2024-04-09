; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80196 () Bool)

(assert start!80196)

(declare-fun b!941836 () Bool)

(declare-fun b_free!17931 () Bool)

(declare-fun b_next!17931 () Bool)

(assert (=> b!941836 (= b_free!17931 (not b_next!17931))))

(declare-fun tp!62287 () Bool)

(declare-fun b_and!29361 () Bool)

(assert (=> b!941836 (= tp!62287 b_and!29361)))

(declare-fun b!941829 () Bool)

(declare-fun res!633107 () Bool)

(declare-fun e!529562 () Bool)

(assert (=> b!941829 (=> (not res!633107) (not e!529562))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32217 0))(
  ( (V!32218 (val!10270 Int)) )
))
(declare-datatypes ((ValueCell!9738 0))(
  ( (ValueCellFull!9738 (v!12801 V!32217)) (EmptyCell!9738) )
))
(declare-datatypes ((array!56858 0))(
  ( (array!56859 (arr!27355 (Array (_ BitVec 32) ValueCell!9738)) (size!27820 (_ BitVec 32))) )
))
(declare-datatypes ((array!56860 0))(
  ( (array!56861 (arr!27356 (Array (_ BitVec 32) (_ BitVec 64))) (size!27821 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4626 0))(
  ( (LongMapFixedSize!4627 (defaultEntry!5604 Int) (mask!27186 (_ BitVec 32)) (extraKeys!5336 (_ BitVec 32)) (zeroValue!5440 V!32217) (minValue!5440 V!32217) (_size!2368 (_ BitVec 32)) (_keys!10464 array!56860) (_values!5627 array!56858) (_vacant!2368 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4626)

(get-info :version)

(declare-datatypes ((SeekEntryResult!9019 0))(
  ( (MissingZero!9019 (index!38446 (_ BitVec 32))) (Found!9019 (index!38447 (_ BitVec 32))) (Intermediate!9019 (undefined!9831 Bool) (index!38448 (_ BitVec 32)) (x!80844 (_ BitVec 32))) (Undefined!9019) (MissingVacant!9019 (index!38449 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56860 (_ BitVec 32)) SeekEntryResult!9019)

(assert (=> b!941829 (= res!633107 (not ((_ is Found!9019) (seekEntry!0 key!756 (_keys!10464 thiss!1141) (mask!27186 thiss!1141)))))))

(declare-fun b!941830 () Bool)

(declare-fun res!633109 () Bool)

(assert (=> b!941830 (=> (not res!633109) (not e!529562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!941830 (= res!633109 (validMask!0 (mask!27186 thiss!1141)))))

(declare-fun b!941831 () Bool)

(declare-fun e!529561 () Bool)

(declare-fun tp_is_empty!20439 () Bool)

(assert (=> b!941831 (= e!529561 tp_is_empty!20439)))

(declare-fun b!941832 () Bool)

(assert (=> b!941832 (= e!529562 (and (= (size!27820 (_values!5627 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27186 thiss!1141))) (= (size!27821 (_keys!10464 thiss!1141)) (size!27820 (_values!5627 thiss!1141))) (bvsge (mask!27186 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5336 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5336 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun res!633110 () Bool)

(assert (=> start!80196 (=> (not res!633110) (not e!529562))))

(declare-fun valid!1752 (LongMapFixedSize!4626) Bool)

(assert (=> start!80196 (= res!633110 (valid!1752 thiss!1141))))

(assert (=> start!80196 e!529562))

(declare-fun e!529559 () Bool)

(assert (=> start!80196 e!529559))

(assert (=> start!80196 true))

(declare-fun b!941833 () Bool)

(declare-fun res!633108 () Bool)

(assert (=> b!941833 (=> (not res!633108) (not e!529562))))

(assert (=> b!941833 (= res!633108 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!941834 () Bool)

(declare-fun e!529558 () Bool)

(declare-fun e!529560 () Bool)

(declare-fun mapRes!32467 () Bool)

(assert (=> b!941834 (= e!529558 (and e!529560 mapRes!32467))))

(declare-fun condMapEmpty!32467 () Bool)

(declare-fun mapDefault!32467 () ValueCell!9738)

(assert (=> b!941834 (= condMapEmpty!32467 (= (arr!27355 (_values!5627 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9738)) mapDefault!32467)))))

(declare-fun mapNonEmpty!32467 () Bool)

(declare-fun tp!62286 () Bool)

(assert (=> mapNonEmpty!32467 (= mapRes!32467 (and tp!62286 e!529561))))

(declare-fun mapKey!32467 () (_ BitVec 32))

(declare-fun mapValue!32467 () ValueCell!9738)

(declare-fun mapRest!32467 () (Array (_ BitVec 32) ValueCell!9738))

(assert (=> mapNonEmpty!32467 (= (arr!27355 (_values!5627 thiss!1141)) (store mapRest!32467 mapKey!32467 mapValue!32467))))

(declare-fun mapIsEmpty!32467 () Bool)

(assert (=> mapIsEmpty!32467 mapRes!32467))

(declare-fun b!941835 () Bool)

(assert (=> b!941835 (= e!529560 tp_is_empty!20439)))

(declare-fun array_inv!21214 (array!56860) Bool)

(declare-fun array_inv!21215 (array!56858) Bool)

(assert (=> b!941836 (= e!529559 (and tp!62287 tp_is_empty!20439 (array_inv!21214 (_keys!10464 thiss!1141)) (array_inv!21215 (_values!5627 thiss!1141)) e!529558))))

(assert (= (and start!80196 res!633110) b!941833))

(assert (= (and b!941833 res!633108) b!941829))

(assert (= (and b!941829 res!633107) b!941830))

(assert (= (and b!941830 res!633109) b!941832))

(assert (= (and b!941834 condMapEmpty!32467) mapIsEmpty!32467))

(assert (= (and b!941834 (not condMapEmpty!32467)) mapNonEmpty!32467))

(assert (= (and mapNonEmpty!32467 ((_ is ValueCellFull!9738) mapValue!32467)) b!941831))

(assert (= (and b!941834 ((_ is ValueCellFull!9738) mapDefault!32467)) b!941835))

(assert (= b!941836 b!941834))

(assert (= start!80196 b!941836))

(declare-fun m!876741 () Bool)

(assert (=> mapNonEmpty!32467 m!876741))

(declare-fun m!876743 () Bool)

(assert (=> b!941836 m!876743))

(declare-fun m!876745 () Bool)

(assert (=> b!941836 m!876745))

(declare-fun m!876747 () Bool)

(assert (=> b!941830 m!876747))

(declare-fun m!876749 () Bool)

(assert (=> start!80196 m!876749))

(declare-fun m!876751 () Bool)

(assert (=> b!941829 m!876751))

(check-sat (not mapNonEmpty!32467) b_and!29361 (not b!941830) tp_is_empty!20439 (not b!941829) (not b!941836) (not b_next!17931) (not start!80196))
(check-sat b_and!29361 (not b_next!17931))
(get-model)

(declare-fun d!114055 () Bool)

(declare-fun lt!425027 () SeekEntryResult!9019)

(assert (=> d!114055 (and (or ((_ is MissingVacant!9019) lt!425027) (not ((_ is Found!9019) lt!425027)) (and (bvsge (index!38447 lt!425027) #b00000000000000000000000000000000) (bvslt (index!38447 lt!425027) (size!27821 (_keys!10464 thiss!1141))))) (not ((_ is MissingVacant!9019) lt!425027)) (or (not ((_ is Found!9019) lt!425027)) (= (select (arr!27356 (_keys!10464 thiss!1141)) (index!38447 lt!425027)) key!756)))))

(declare-fun e!529589 () SeekEntryResult!9019)

(assert (=> d!114055 (= lt!425027 e!529589)))

(declare-fun c!98088 () Bool)

(declare-fun lt!425026 () SeekEntryResult!9019)

(assert (=> d!114055 (= c!98088 (and ((_ is Intermediate!9019) lt!425026) (undefined!9831 lt!425026)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56860 (_ BitVec 32)) SeekEntryResult!9019)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114055 (= lt!425026 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27186 thiss!1141)) key!756 (_keys!10464 thiss!1141) (mask!27186 thiss!1141)))))

(assert (=> d!114055 (validMask!0 (mask!27186 thiss!1141))))

(assert (=> d!114055 (= (seekEntry!0 key!756 (_keys!10464 thiss!1141) (mask!27186 thiss!1141)) lt!425027)))

(declare-fun b!941873 () Bool)

(declare-fun e!529590 () SeekEntryResult!9019)

(assert (=> b!941873 (= e!529589 e!529590)))

(declare-fun lt!425028 () (_ BitVec 64))

(assert (=> b!941873 (= lt!425028 (select (arr!27356 (_keys!10464 thiss!1141)) (index!38448 lt!425026)))))

(declare-fun c!98086 () Bool)

(assert (=> b!941873 (= c!98086 (= lt!425028 key!756))))

(declare-fun b!941874 () Bool)

(declare-fun e!529588 () SeekEntryResult!9019)

(declare-fun lt!425025 () SeekEntryResult!9019)

(assert (=> b!941874 (= e!529588 (ite ((_ is MissingVacant!9019) lt!425025) (MissingZero!9019 (index!38449 lt!425025)) lt!425025))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56860 (_ BitVec 32)) SeekEntryResult!9019)

(assert (=> b!941874 (= lt!425025 (seekKeyOrZeroReturnVacant!0 (x!80844 lt!425026) (index!38448 lt!425026) (index!38448 lt!425026) key!756 (_keys!10464 thiss!1141) (mask!27186 thiss!1141)))))

(declare-fun b!941875 () Bool)

(assert (=> b!941875 (= e!529589 Undefined!9019)))

(declare-fun b!941876 () Bool)

(assert (=> b!941876 (= e!529590 (Found!9019 (index!38448 lt!425026)))))

(declare-fun b!941877 () Bool)

(declare-fun c!98087 () Bool)

(assert (=> b!941877 (= c!98087 (= lt!425028 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!941877 (= e!529590 e!529588)))

(declare-fun b!941878 () Bool)

(assert (=> b!941878 (= e!529588 (MissingZero!9019 (index!38448 lt!425026)))))

(assert (= (and d!114055 c!98088) b!941875))

(assert (= (and d!114055 (not c!98088)) b!941873))

(assert (= (and b!941873 c!98086) b!941876))

(assert (= (and b!941873 (not c!98086)) b!941877))

(assert (= (and b!941877 c!98087) b!941878))

(assert (= (and b!941877 (not c!98087)) b!941874))

(declare-fun m!876765 () Bool)

(assert (=> d!114055 m!876765))

(declare-fun m!876767 () Bool)

(assert (=> d!114055 m!876767))

(assert (=> d!114055 m!876767))

(declare-fun m!876769 () Bool)

(assert (=> d!114055 m!876769))

(assert (=> d!114055 m!876747))

(declare-fun m!876771 () Bool)

(assert (=> b!941873 m!876771))

(declare-fun m!876773 () Bool)

(assert (=> b!941874 m!876773))

(assert (=> b!941829 d!114055))

(declare-fun d!114057 () Bool)

(assert (=> d!114057 (= (array_inv!21214 (_keys!10464 thiss!1141)) (bvsge (size!27821 (_keys!10464 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!941836 d!114057))

(declare-fun d!114059 () Bool)

(assert (=> d!114059 (= (array_inv!21215 (_values!5627 thiss!1141)) (bvsge (size!27820 (_values!5627 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!941836 d!114059))

(declare-fun d!114061 () Bool)

(declare-fun res!633129 () Bool)

(declare-fun e!529593 () Bool)

(assert (=> d!114061 (=> (not res!633129) (not e!529593))))

(declare-fun simpleValid!343 (LongMapFixedSize!4626) Bool)

(assert (=> d!114061 (= res!633129 (simpleValid!343 thiss!1141))))

(assert (=> d!114061 (= (valid!1752 thiss!1141) e!529593)))

(declare-fun b!941885 () Bool)

(declare-fun res!633130 () Bool)

(assert (=> b!941885 (=> (not res!633130) (not e!529593))))

(declare-fun arrayCountValidKeys!0 (array!56860 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!941885 (= res!633130 (= (arrayCountValidKeys!0 (_keys!10464 thiss!1141) #b00000000000000000000000000000000 (size!27821 (_keys!10464 thiss!1141))) (_size!2368 thiss!1141)))))

(declare-fun b!941886 () Bool)

(declare-fun res!633131 () Bool)

(assert (=> b!941886 (=> (not res!633131) (not e!529593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56860 (_ BitVec 32)) Bool)

(assert (=> b!941886 (= res!633131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10464 thiss!1141) (mask!27186 thiss!1141)))))

(declare-fun b!941887 () Bool)

(declare-datatypes ((List!19344 0))(
  ( (Nil!19341) (Cons!19340 (h!20489 (_ BitVec 64)) (t!27667 List!19344)) )
))
(declare-fun arrayNoDuplicates!0 (array!56860 (_ BitVec 32) List!19344) Bool)

(assert (=> b!941887 (= e!529593 (arrayNoDuplicates!0 (_keys!10464 thiss!1141) #b00000000000000000000000000000000 Nil!19341))))

(assert (= (and d!114061 res!633129) b!941885))

(assert (= (and b!941885 res!633130) b!941886))

(assert (= (and b!941886 res!633131) b!941887))

(declare-fun m!876775 () Bool)

(assert (=> d!114061 m!876775))

(declare-fun m!876777 () Bool)

(assert (=> b!941885 m!876777))

(declare-fun m!876779 () Bool)

(assert (=> b!941886 m!876779))

(declare-fun m!876781 () Bool)

(assert (=> b!941887 m!876781))

(assert (=> start!80196 d!114061))

(declare-fun d!114063 () Bool)

(assert (=> d!114063 (= (validMask!0 (mask!27186 thiss!1141)) (and (or (= (mask!27186 thiss!1141) #b00000000000000000000000000000111) (= (mask!27186 thiss!1141) #b00000000000000000000000000001111) (= (mask!27186 thiss!1141) #b00000000000000000000000000011111) (= (mask!27186 thiss!1141) #b00000000000000000000000000111111) (= (mask!27186 thiss!1141) #b00000000000000000000000001111111) (= (mask!27186 thiss!1141) #b00000000000000000000000011111111) (= (mask!27186 thiss!1141) #b00000000000000000000000111111111) (= (mask!27186 thiss!1141) #b00000000000000000000001111111111) (= (mask!27186 thiss!1141) #b00000000000000000000011111111111) (= (mask!27186 thiss!1141) #b00000000000000000000111111111111) (= (mask!27186 thiss!1141) #b00000000000000000001111111111111) (= (mask!27186 thiss!1141) #b00000000000000000011111111111111) (= (mask!27186 thiss!1141) #b00000000000000000111111111111111) (= (mask!27186 thiss!1141) #b00000000000000001111111111111111) (= (mask!27186 thiss!1141) #b00000000000000011111111111111111) (= (mask!27186 thiss!1141) #b00000000000000111111111111111111) (= (mask!27186 thiss!1141) #b00000000000001111111111111111111) (= (mask!27186 thiss!1141) #b00000000000011111111111111111111) (= (mask!27186 thiss!1141) #b00000000000111111111111111111111) (= (mask!27186 thiss!1141) #b00000000001111111111111111111111) (= (mask!27186 thiss!1141) #b00000000011111111111111111111111) (= (mask!27186 thiss!1141) #b00000000111111111111111111111111) (= (mask!27186 thiss!1141) #b00000001111111111111111111111111) (= (mask!27186 thiss!1141) #b00000011111111111111111111111111) (= (mask!27186 thiss!1141) #b00000111111111111111111111111111) (= (mask!27186 thiss!1141) #b00001111111111111111111111111111) (= (mask!27186 thiss!1141) #b00011111111111111111111111111111) (= (mask!27186 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27186 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!941830 d!114063))

(declare-fun b!941894 () Bool)

(declare-fun e!529598 () Bool)

(assert (=> b!941894 (= e!529598 tp_is_empty!20439)))

(declare-fun condMapEmpty!32473 () Bool)

(declare-fun mapDefault!32473 () ValueCell!9738)

(assert (=> mapNonEmpty!32467 (= condMapEmpty!32473 (= mapRest!32467 ((as const (Array (_ BitVec 32) ValueCell!9738)) mapDefault!32473)))))

(declare-fun e!529599 () Bool)

(declare-fun mapRes!32473 () Bool)

(assert (=> mapNonEmpty!32467 (= tp!62286 (and e!529599 mapRes!32473))))

(declare-fun mapNonEmpty!32473 () Bool)

(declare-fun tp!62296 () Bool)

(assert (=> mapNonEmpty!32473 (= mapRes!32473 (and tp!62296 e!529598))))

(declare-fun mapValue!32473 () ValueCell!9738)

(declare-fun mapKey!32473 () (_ BitVec 32))

(declare-fun mapRest!32473 () (Array (_ BitVec 32) ValueCell!9738))

(assert (=> mapNonEmpty!32473 (= mapRest!32467 (store mapRest!32473 mapKey!32473 mapValue!32473))))

(declare-fun mapIsEmpty!32473 () Bool)

(assert (=> mapIsEmpty!32473 mapRes!32473))

(declare-fun b!941895 () Bool)

(assert (=> b!941895 (= e!529599 tp_is_empty!20439)))

(assert (= (and mapNonEmpty!32467 condMapEmpty!32473) mapIsEmpty!32473))

(assert (= (and mapNonEmpty!32467 (not condMapEmpty!32473)) mapNonEmpty!32473))

(assert (= (and mapNonEmpty!32473 ((_ is ValueCellFull!9738) mapValue!32473)) b!941894))

(assert (= (and mapNonEmpty!32467 ((_ is ValueCellFull!9738) mapDefault!32473)) b!941895))

(declare-fun m!876783 () Bool)

(assert (=> mapNonEmpty!32473 m!876783))

(check-sat (not b!941887) (not mapNonEmpty!32473) (not b!941874) (not b_next!17931) (not b!941885) b_and!29361 (not d!114061) tp_is_empty!20439 (not d!114055) (not b!941886))
(check-sat b_and!29361 (not b_next!17931))
(get-model)

(declare-fun b!941906 () Bool)

(declare-fun e!529611 () Bool)

(declare-fun call!40944 () Bool)

(assert (=> b!941906 (= e!529611 call!40944)))

(declare-fun b!941907 () Bool)

(declare-fun e!529610 () Bool)

(assert (=> b!941907 (= e!529610 e!529611)))

(declare-fun c!98091 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!941907 (= c!98091 (validKeyInArray!0 (select (arr!27356 (_keys!10464 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!941908 () Bool)

(declare-fun e!529609 () Bool)

(declare-fun contains!5144 (List!19344 (_ BitVec 64)) Bool)

(assert (=> b!941908 (= e!529609 (contains!5144 Nil!19341 (select (arr!27356 (_keys!10464 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!40941 () Bool)

(assert (=> bm!40941 (= call!40944 (arrayNoDuplicates!0 (_keys!10464 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98091 (Cons!19340 (select (arr!27356 (_keys!10464 thiss!1141)) #b00000000000000000000000000000000) Nil!19341) Nil!19341)))))

(declare-fun b!941909 () Bool)

(assert (=> b!941909 (= e!529611 call!40944)))

(declare-fun b!941910 () Bool)

(declare-fun e!529608 () Bool)

(assert (=> b!941910 (= e!529608 e!529610)))

(declare-fun res!633139 () Bool)

(assert (=> b!941910 (=> (not res!633139) (not e!529610))))

(assert (=> b!941910 (= res!633139 (not e!529609))))

(declare-fun res!633138 () Bool)

(assert (=> b!941910 (=> (not res!633138) (not e!529609))))

(assert (=> b!941910 (= res!633138 (validKeyInArray!0 (select (arr!27356 (_keys!10464 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!114065 () Bool)

(declare-fun res!633140 () Bool)

(assert (=> d!114065 (=> res!633140 e!529608)))

(assert (=> d!114065 (= res!633140 (bvsge #b00000000000000000000000000000000 (size!27821 (_keys!10464 thiss!1141))))))

(assert (=> d!114065 (= (arrayNoDuplicates!0 (_keys!10464 thiss!1141) #b00000000000000000000000000000000 Nil!19341) e!529608)))

(assert (= (and d!114065 (not res!633140)) b!941910))

(assert (= (and b!941910 res!633138) b!941908))

(assert (= (and b!941910 res!633139) b!941907))

(assert (= (and b!941907 c!98091) b!941909))

(assert (= (and b!941907 (not c!98091)) b!941906))

(assert (= (or b!941909 b!941906) bm!40941))

(declare-fun m!876785 () Bool)

(assert (=> b!941907 m!876785))

(assert (=> b!941907 m!876785))

(declare-fun m!876787 () Bool)

(assert (=> b!941907 m!876787))

(assert (=> b!941908 m!876785))

(assert (=> b!941908 m!876785))

(declare-fun m!876789 () Bool)

(assert (=> b!941908 m!876789))

(assert (=> bm!40941 m!876785))

(declare-fun m!876791 () Bool)

(assert (=> bm!40941 m!876791))

(assert (=> b!941910 m!876785))

(assert (=> b!941910 m!876785))

(assert (=> b!941910 m!876787))

(assert (=> b!941887 d!114065))

(declare-fun b!941919 () Bool)

(declare-fun e!529619 () Bool)

(declare-fun e!529620 () Bool)

(assert (=> b!941919 (= e!529619 e!529620)))

(declare-fun lt!425036 () (_ BitVec 64))

(assert (=> b!941919 (= lt!425036 (select (arr!27356 (_keys!10464 thiss!1141)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!31811 0))(
  ( (Unit!31812) )
))
(declare-fun lt!425035 () Unit!31811)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56860 (_ BitVec 64) (_ BitVec 32)) Unit!31811)

(assert (=> b!941919 (= lt!425035 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10464 thiss!1141) lt!425036 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!56860 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!941919 (arrayContainsKey!0 (_keys!10464 thiss!1141) lt!425036 #b00000000000000000000000000000000)))

(declare-fun lt!425037 () Unit!31811)

(assert (=> b!941919 (= lt!425037 lt!425035)))

(declare-fun res!633145 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!56860 (_ BitVec 32)) SeekEntryResult!9019)

(assert (=> b!941919 (= res!633145 (= (seekEntryOrOpen!0 (select (arr!27356 (_keys!10464 thiss!1141)) #b00000000000000000000000000000000) (_keys!10464 thiss!1141) (mask!27186 thiss!1141)) (Found!9019 #b00000000000000000000000000000000)))))

(assert (=> b!941919 (=> (not res!633145) (not e!529620))))

(declare-fun b!941921 () Bool)

(declare-fun e!529618 () Bool)

(assert (=> b!941921 (= e!529618 e!529619)))

(declare-fun c!98094 () Bool)

(assert (=> b!941921 (= c!98094 (validKeyInArray!0 (select (arr!27356 (_keys!10464 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!40944 () Bool)

(declare-fun call!40947 () Bool)

(assert (=> bm!40944 (= call!40947 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10464 thiss!1141) (mask!27186 thiss!1141)))))

(declare-fun b!941922 () Bool)

(assert (=> b!941922 (= e!529619 call!40947)))

(declare-fun d!114067 () Bool)

(declare-fun res!633146 () Bool)

(assert (=> d!114067 (=> res!633146 e!529618)))

(assert (=> d!114067 (= res!633146 (bvsge #b00000000000000000000000000000000 (size!27821 (_keys!10464 thiss!1141))))))

(assert (=> d!114067 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10464 thiss!1141) (mask!27186 thiss!1141)) e!529618)))

(declare-fun b!941920 () Bool)

(assert (=> b!941920 (= e!529620 call!40947)))

(assert (= (and d!114067 (not res!633146)) b!941921))

(assert (= (and b!941921 c!98094) b!941919))

(assert (= (and b!941921 (not c!98094)) b!941922))

(assert (= (and b!941919 res!633145) b!941920))

(assert (= (or b!941920 b!941922) bm!40944))

(assert (=> b!941919 m!876785))

(declare-fun m!876793 () Bool)

(assert (=> b!941919 m!876793))

(declare-fun m!876795 () Bool)

(assert (=> b!941919 m!876795))

(assert (=> b!941919 m!876785))

(declare-fun m!876797 () Bool)

(assert (=> b!941919 m!876797))

(assert (=> b!941921 m!876785))

(assert (=> b!941921 m!876785))

(assert (=> b!941921 m!876787))

(declare-fun m!876799 () Bool)

(assert (=> bm!40944 m!876799))

(assert (=> b!941886 d!114067))

(declare-fun b!941931 () Bool)

(declare-fun res!633156 () Bool)

(declare-fun e!529623 () Bool)

(assert (=> b!941931 (=> (not res!633156) (not e!529623))))

(assert (=> b!941931 (= res!633156 (and (= (size!27820 (_values!5627 thiss!1141)) (bvadd (mask!27186 thiss!1141) #b00000000000000000000000000000001)) (= (size!27821 (_keys!10464 thiss!1141)) (size!27820 (_values!5627 thiss!1141))) (bvsge (_size!2368 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2368 thiss!1141) (bvadd (mask!27186 thiss!1141) #b00000000000000000000000000000001))))))

(declare-fun b!941932 () Bool)

(declare-fun res!633155 () Bool)

(assert (=> b!941932 (=> (not res!633155) (not e!529623))))

(declare-fun size!27824 (LongMapFixedSize!4626) (_ BitVec 32))

(assert (=> b!941932 (= res!633155 (bvsge (size!27824 thiss!1141) (_size!2368 thiss!1141)))))

(declare-fun b!941933 () Bool)

(declare-fun res!633157 () Bool)

(assert (=> b!941933 (=> (not res!633157) (not e!529623))))

(assert (=> b!941933 (= res!633157 (= (size!27824 thiss!1141) (bvadd (_size!2368 thiss!1141) (bvsdiv (bvadd (extraKeys!5336 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!941934 () Bool)

(assert (=> b!941934 (= e!529623 (and (bvsge (extraKeys!5336 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5336 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2368 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun d!114069 () Bool)

(declare-fun res!633158 () Bool)

(assert (=> d!114069 (=> (not res!633158) (not e!529623))))

(assert (=> d!114069 (= res!633158 (validMask!0 (mask!27186 thiss!1141)))))

(assert (=> d!114069 (= (simpleValid!343 thiss!1141) e!529623)))

(assert (= (and d!114069 res!633158) b!941931))

(assert (= (and b!941931 res!633156) b!941932))

(assert (= (and b!941932 res!633155) b!941933))

(assert (= (and b!941933 res!633157) b!941934))

(declare-fun m!876801 () Bool)

(assert (=> b!941932 m!876801))

(assert (=> b!941933 m!876801))

(assert (=> d!114069 m!876747))

(assert (=> d!114061 d!114069))

(declare-fun b!941943 () Bool)

(declare-fun e!529629 () (_ BitVec 32))

(declare-fun call!40950 () (_ BitVec 32))

(assert (=> b!941943 (= e!529629 (bvadd #b00000000000000000000000000000001 call!40950))))

(declare-fun b!941944 () Bool)

(declare-fun e!529628 () (_ BitVec 32))

(assert (=> b!941944 (= e!529628 #b00000000000000000000000000000000)))

(declare-fun d!114071 () Bool)

(declare-fun lt!425040 () (_ BitVec 32))

(assert (=> d!114071 (and (bvsge lt!425040 #b00000000000000000000000000000000) (bvsle lt!425040 (bvsub (size!27821 (_keys!10464 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> d!114071 (= lt!425040 e!529628)))

(declare-fun c!98100 () Bool)

(assert (=> d!114071 (= c!98100 (bvsge #b00000000000000000000000000000000 (size!27821 (_keys!10464 thiss!1141))))))

(assert (=> d!114071 (and (bvsle #b00000000000000000000000000000000 (size!27821 (_keys!10464 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!27821 (_keys!10464 thiss!1141)) (size!27821 (_keys!10464 thiss!1141))))))

(assert (=> d!114071 (= (arrayCountValidKeys!0 (_keys!10464 thiss!1141) #b00000000000000000000000000000000 (size!27821 (_keys!10464 thiss!1141))) lt!425040)))

(declare-fun b!941945 () Bool)

(assert (=> b!941945 (= e!529628 e!529629)))

(declare-fun c!98099 () Bool)

(assert (=> b!941945 (= c!98099 (validKeyInArray!0 (select (arr!27356 (_keys!10464 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!941946 () Bool)

(assert (=> b!941946 (= e!529629 call!40950)))

(declare-fun bm!40947 () Bool)

(assert (=> bm!40947 (= call!40950 (arrayCountValidKeys!0 (_keys!10464 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!27821 (_keys!10464 thiss!1141))))))

(assert (= (and d!114071 c!98100) b!941944))

(assert (= (and d!114071 (not c!98100)) b!941945))

(assert (= (and b!941945 c!98099) b!941943))

(assert (= (and b!941945 (not c!98099)) b!941946))

(assert (= (or b!941943 b!941946) bm!40947))

(assert (=> b!941945 m!876785))

(assert (=> b!941945 m!876785))

(assert (=> b!941945 m!876787))

(declare-fun m!876803 () Bool)

(assert (=> bm!40947 m!876803))

(assert (=> b!941885 d!114071))

(declare-fun b!941959 () Bool)

(declare-fun e!529636 () SeekEntryResult!9019)

(assert (=> b!941959 (= e!529636 (Found!9019 (index!38448 lt!425026)))))

(declare-fun b!941960 () Bool)

(declare-fun e!529637 () SeekEntryResult!9019)

(assert (=> b!941960 (= e!529637 (MissingVacant!9019 (index!38448 lt!425026)))))

(declare-fun b!941962 () Bool)

(declare-fun e!529638 () SeekEntryResult!9019)

(assert (=> b!941962 (= e!529638 Undefined!9019)))

(declare-fun b!941963 () Bool)

(declare-fun c!98108 () Bool)

(declare-fun lt!425046 () (_ BitVec 64))

(assert (=> b!941963 (= c!98108 (= lt!425046 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!941963 (= e!529636 e!529637)))

(declare-fun b!941964 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!941964 (= e!529637 (seekKeyOrZeroReturnVacant!0 (bvadd (x!80844 lt!425026) #b00000000000000000000000000000001) (nextIndex!0 (index!38448 lt!425026) (x!80844 lt!425026) (mask!27186 thiss!1141)) (index!38448 lt!425026) key!756 (_keys!10464 thiss!1141) (mask!27186 thiss!1141)))))

(declare-fun b!941961 () Bool)

(assert (=> b!941961 (= e!529638 e!529636)))

(declare-fun c!98107 () Bool)

(assert (=> b!941961 (= c!98107 (= lt!425046 key!756))))

(declare-fun d!114073 () Bool)

(declare-fun lt!425045 () SeekEntryResult!9019)

(assert (=> d!114073 (and (or ((_ is Undefined!9019) lt!425045) (not ((_ is Found!9019) lt!425045)) (and (bvsge (index!38447 lt!425045) #b00000000000000000000000000000000) (bvslt (index!38447 lt!425045) (size!27821 (_keys!10464 thiss!1141))))) (or ((_ is Undefined!9019) lt!425045) ((_ is Found!9019) lt!425045) (not ((_ is MissingVacant!9019) lt!425045)) (not (= (index!38449 lt!425045) (index!38448 lt!425026))) (and (bvsge (index!38449 lt!425045) #b00000000000000000000000000000000) (bvslt (index!38449 lt!425045) (size!27821 (_keys!10464 thiss!1141))))) (or ((_ is Undefined!9019) lt!425045) (ite ((_ is Found!9019) lt!425045) (= (select (arr!27356 (_keys!10464 thiss!1141)) (index!38447 lt!425045)) key!756) (and ((_ is MissingVacant!9019) lt!425045) (= (index!38449 lt!425045) (index!38448 lt!425026)) (= (select (arr!27356 (_keys!10464 thiss!1141)) (index!38449 lt!425045)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!114073 (= lt!425045 e!529638)))

(declare-fun c!98109 () Bool)

(assert (=> d!114073 (= c!98109 (bvsge (x!80844 lt!425026) #b01111111111111111111111111111110))))

(assert (=> d!114073 (= lt!425046 (select (arr!27356 (_keys!10464 thiss!1141)) (index!38448 lt!425026)))))

(assert (=> d!114073 (validMask!0 (mask!27186 thiss!1141))))

(assert (=> d!114073 (= (seekKeyOrZeroReturnVacant!0 (x!80844 lt!425026) (index!38448 lt!425026) (index!38448 lt!425026) key!756 (_keys!10464 thiss!1141) (mask!27186 thiss!1141)) lt!425045)))

(assert (= (and d!114073 c!98109) b!941962))

(assert (= (and d!114073 (not c!98109)) b!941961))

(assert (= (and b!941961 c!98107) b!941959))

(assert (= (and b!941961 (not c!98107)) b!941963))

(assert (= (and b!941963 c!98108) b!941960))

(assert (= (and b!941963 (not c!98108)) b!941964))

(declare-fun m!876805 () Bool)

(assert (=> b!941964 m!876805))

(assert (=> b!941964 m!876805))

(declare-fun m!876807 () Bool)

(assert (=> b!941964 m!876807))

(declare-fun m!876809 () Bool)

(assert (=> d!114073 m!876809))

(declare-fun m!876811 () Bool)

(assert (=> d!114073 m!876811))

(assert (=> d!114073 m!876771))

(assert (=> d!114073 m!876747))

(assert (=> b!941874 d!114073))

(declare-fun b!941983 () Bool)

(declare-fun e!529653 () Bool)

(declare-fun lt!425051 () SeekEntryResult!9019)

(assert (=> b!941983 (= e!529653 (bvsge (x!80844 lt!425051) #b01111111111111111111111111111110))))

(declare-fun b!941984 () Bool)

(declare-fun e!529652 () Bool)

(assert (=> b!941984 (= e!529653 e!529652)))

(declare-fun res!633166 () Bool)

(assert (=> b!941984 (= res!633166 (and ((_ is Intermediate!9019) lt!425051) (not (undefined!9831 lt!425051)) (bvslt (x!80844 lt!425051) #b01111111111111111111111111111110) (bvsge (x!80844 lt!425051) #b00000000000000000000000000000000) (bvsge (x!80844 lt!425051) #b00000000000000000000000000000000)))))

(assert (=> b!941984 (=> (not res!633166) (not e!529652))))

(declare-fun b!941985 () Bool)

(declare-fun e!529650 () SeekEntryResult!9019)

(assert (=> b!941985 (= e!529650 (Intermediate!9019 true (toIndex!0 key!756 (mask!27186 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!941986 () Bool)

(assert (=> b!941986 (and (bvsge (index!38448 lt!425051) #b00000000000000000000000000000000) (bvslt (index!38448 lt!425051) (size!27821 (_keys!10464 thiss!1141))))))

(declare-fun e!529651 () Bool)

(assert (=> b!941986 (= e!529651 (= (select (arr!27356 (_keys!10464 thiss!1141)) (index!38448 lt!425051)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!941987 () Bool)

(assert (=> b!941987 (and (bvsge (index!38448 lt!425051) #b00000000000000000000000000000000) (bvslt (index!38448 lt!425051) (size!27821 (_keys!10464 thiss!1141))))))

(declare-fun res!633167 () Bool)

(assert (=> b!941987 (= res!633167 (= (select (arr!27356 (_keys!10464 thiss!1141)) (index!38448 lt!425051)) key!756))))

(assert (=> b!941987 (=> res!633167 e!529651)))

(assert (=> b!941987 (= e!529652 e!529651)))

(declare-fun b!941988 () Bool)

(assert (=> b!941988 (and (bvsge (index!38448 lt!425051) #b00000000000000000000000000000000) (bvslt (index!38448 lt!425051) (size!27821 (_keys!10464 thiss!1141))))))

(declare-fun res!633165 () Bool)

(assert (=> b!941988 (= res!633165 (= (select (arr!27356 (_keys!10464 thiss!1141)) (index!38448 lt!425051)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!941988 (=> res!633165 e!529651)))

(declare-fun d!114075 () Bool)

(assert (=> d!114075 e!529653))

(declare-fun c!98118 () Bool)

(assert (=> d!114075 (= c!98118 (and ((_ is Intermediate!9019) lt!425051) (undefined!9831 lt!425051)))))

(assert (=> d!114075 (= lt!425051 e!529650)))

(declare-fun c!98117 () Bool)

(assert (=> d!114075 (= c!98117 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!425052 () (_ BitVec 64))

(assert (=> d!114075 (= lt!425052 (select (arr!27356 (_keys!10464 thiss!1141)) (toIndex!0 key!756 (mask!27186 thiss!1141))))))

(assert (=> d!114075 (validMask!0 (mask!27186 thiss!1141))))

(assert (=> d!114075 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27186 thiss!1141)) key!756 (_keys!10464 thiss!1141) (mask!27186 thiss!1141)) lt!425051)))

(declare-fun b!941989 () Bool)

(declare-fun e!529649 () SeekEntryResult!9019)

(assert (=> b!941989 (= e!529649 (Intermediate!9019 false (toIndex!0 key!756 (mask!27186 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!941990 () Bool)

(assert (=> b!941990 (= e!529650 e!529649)))

(declare-fun c!98116 () Bool)

(assert (=> b!941990 (= c!98116 (or (= lt!425052 key!756) (= (bvadd lt!425052 lt!425052) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!941991 () Bool)

(assert (=> b!941991 (= e!529649 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!756 (mask!27186 thiss!1141)) #b00000000000000000000000000000000 (mask!27186 thiss!1141)) key!756 (_keys!10464 thiss!1141) (mask!27186 thiss!1141)))))

(assert (= (and d!114075 c!98117) b!941985))

(assert (= (and d!114075 (not c!98117)) b!941990))

(assert (= (and b!941990 c!98116) b!941989))

(assert (= (and b!941990 (not c!98116)) b!941991))

(assert (= (and d!114075 c!98118) b!941983))

(assert (= (and d!114075 (not c!98118)) b!941984))

(assert (= (and b!941984 res!633166) b!941987))

(assert (= (and b!941987 (not res!633167)) b!941988))

(assert (= (and b!941988 (not res!633165)) b!941986))

(declare-fun m!876813 () Bool)

(assert (=> b!941988 m!876813))

(assert (=> b!941991 m!876767))

(declare-fun m!876815 () Bool)

(assert (=> b!941991 m!876815))

(assert (=> b!941991 m!876815))

(declare-fun m!876817 () Bool)

(assert (=> b!941991 m!876817))

(assert (=> b!941987 m!876813))

(assert (=> b!941986 m!876813))

(assert (=> d!114075 m!876767))

(declare-fun m!876819 () Bool)

(assert (=> d!114075 m!876819))

(assert (=> d!114075 m!876747))

(assert (=> d!114055 d!114075))

(declare-fun d!114077 () Bool)

(declare-fun lt!425058 () (_ BitVec 32))

(declare-fun lt!425057 () (_ BitVec 32))

(assert (=> d!114077 (= lt!425058 (bvmul (bvxor lt!425057 (bvlshr lt!425057 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!114077 (= lt!425057 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!114077 (and (bvsge (mask!27186 thiss!1141) #b00000000000000000000000000000000) (let ((res!633168 (let ((h!20490 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!80862 (bvmul (bvxor h!20490 (bvlshr h!20490 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!80862 (bvlshr x!80862 #b00000000000000000000000000001101)) (mask!27186 thiss!1141)))))) (and (bvslt res!633168 (bvadd (mask!27186 thiss!1141) #b00000000000000000000000000000001)) (bvsge res!633168 #b00000000000000000000000000000000))))))

(assert (=> d!114077 (= (toIndex!0 key!756 (mask!27186 thiss!1141)) (bvand (bvxor lt!425058 (bvlshr lt!425058 #b00000000000000000000000000001101)) (mask!27186 thiss!1141)))))

(assert (=> d!114055 d!114077))

(assert (=> d!114055 d!114063))

(declare-fun b!941992 () Bool)

(declare-fun e!529654 () Bool)

(assert (=> b!941992 (= e!529654 tp_is_empty!20439)))

(declare-fun condMapEmpty!32474 () Bool)

(declare-fun mapDefault!32474 () ValueCell!9738)

(assert (=> mapNonEmpty!32473 (= condMapEmpty!32474 (= mapRest!32473 ((as const (Array (_ BitVec 32) ValueCell!9738)) mapDefault!32474)))))

(declare-fun e!529655 () Bool)

(declare-fun mapRes!32474 () Bool)

(assert (=> mapNonEmpty!32473 (= tp!62296 (and e!529655 mapRes!32474))))

(declare-fun mapNonEmpty!32474 () Bool)

(declare-fun tp!62297 () Bool)

(assert (=> mapNonEmpty!32474 (= mapRes!32474 (and tp!62297 e!529654))))

(declare-fun mapRest!32474 () (Array (_ BitVec 32) ValueCell!9738))

(declare-fun mapValue!32474 () ValueCell!9738)

(declare-fun mapKey!32474 () (_ BitVec 32))

(assert (=> mapNonEmpty!32474 (= mapRest!32473 (store mapRest!32474 mapKey!32474 mapValue!32474))))

(declare-fun mapIsEmpty!32474 () Bool)

(assert (=> mapIsEmpty!32474 mapRes!32474))

(declare-fun b!941993 () Bool)

(assert (=> b!941993 (= e!529655 tp_is_empty!20439)))

(assert (= (and mapNonEmpty!32473 condMapEmpty!32474) mapIsEmpty!32474))

(assert (= (and mapNonEmpty!32473 (not condMapEmpty!32474)) mapNonEmpty!32474))

(assert (= (and mapNonEmpty!32474 ((_ is ValueCellFull!9738) mapValue!32474)) b!941992))

(assert (= (and mapNonEmpty!32473 ((_ is ValueCellFull!9738) mapDefault!32474)) b!941993))

(declare-fun m!876821 () Bool)

(assert (=> mapNonEmpty!32474 m!876821))

(check-sat (not b!941964) (not mapNonEmpty!32474) (not b!941945) (not bm!40947) (not d!114073) (not d!114075) b_and!29361 (not b!941910) tp_is_empty!20439 (not b!941991) (not b!941919) (not bm!40944) (not b!941921) (not b!941908) (not d!114069) (not b!941933) (not b!941932) (not bm!40941) (not b_next!17931) (not b!941907))
(check-sat b_and!29361 (not b_next!17931))
