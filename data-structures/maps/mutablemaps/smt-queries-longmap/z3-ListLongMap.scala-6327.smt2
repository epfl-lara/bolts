; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81508 () Bool)

(assert start!81508)

(declare-fun b!952090 () Bool)

(declare-fun b_free!18285 () Bool)

(declare-fun b_next!18285 () Bool)

(assert (=> b!952090 (= b_free!18285 (not b_next!18285))))

(declare-fun tp!63475 () Bool)

(declare-fun b_and!29781 () Bool)

(assert (=> b!952090 (= tp!63475 b_and!29781)))

(declare-fun b!952082 () Bool)

(declare-fun res!637988 () Bool)

(declare-fun e!536215 () Bool)

(assert (=> b!952082 (=> (not res!637988) (not e!536215))))

(declare-datatypes ((V!32689 0))(
  ( (V!32690 (val!10447 Int)) )
))
(declare-datatypes ((ValueCell!9915 0))(
  ( (ValueCellFull!9915 (v!12997 V!32689)) (EmptyCell!9915) )
))
(declare-datatypes ((array!57640 0))(
  ( (array!57641 (arr!27709 (Array (_ BitVec 32) ValueCell!9915)) (size!28189 (_ BitVec 32))) )
))
(declare-datatypes ((array!57642 0))(
  ( (array!57643 (arr!27710 (Array (_ BitVec 32) (_ BitVec 64))) (size!28190 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4980 0))(
  ( (LongMapFixedSize!4981 (defaultEntry!5819 Int) (mask!27654 (_ BitVec 32)) (extraKeys!5551 (_ BitVec 32)) (zeroValue!5655 V!32689) (minValue!5655 V!32689) (_size!2545 (_ BitVec 32)) (_keys!10767 array!57642) (_values!5842 array!57640) (_vacant!2545 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4980)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13672 0))(
  ( (tuple2!13673 (_1!6846 (_ BitVec 64)) (_2!6846 V!32689)) )
))
(declare-datatypes ((List!19491 0))(
  ( (Nil!19488) (Cons!19487 (h!20649 tuple2!13672) (t!27852 List!19491)) )
))
(declare-datatypes ((ListLongMap!12383 0))(
  ( (ListLongMap!12384 (toList!6207 List!19491)) )
))
(declare-fun contains!5253 (ListLongMap!12383 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3392 (array!57642 array!57640 (_ BitVec 32) (_ BitVec 32) V!32689 V!32689 (_ BitVec 32) Int) ListLongMap!12383)

(assert (=> b!952082 (= res!637988 (contains!5253 (getCurrentListMap!3392 (_keys!10767 thiss!1141) (_values!5842 thiss!1141) (mask!27654 thiss!1141) (extraKeys!5551 thiss!1141) (zeroValue!5655 thiss!1141) (minValue!5655 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5819 thiss!1141)) key!756))))

(declare-fun b!952083 () Bool)

(declare-fun e!536213 () Bool)

(declare-fun e!536211 () Bool)

(declare-fun mapRes!33124 () Bool)

(assert (=> b!952083 (= e!536213 (and e!536211 mapRes!33124))))

(declare-fun condMapEmpty!33124 () Bool)

(declare-fun mapDefault!33124 () ValueCell!9915)

(assert (=> b!952083 (= condMapEmpty!33124 (= (arr!27709 (_values!5842 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9915)) mapDefault!33124)))))

(declare-fun b!952084 () Bool)

(declare-fun e!536216 () Bool)

(assert (=> b!952084 (= e!536215 (not e!536216))))

(declare-fun res!637987 () Bool)

(assert (=> b!952084 (=> res!637987 e!536216)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!952084 (= res!637987 (not (validMask!0 (mask!27654 thiss!1141))))))

(declare-fun lt!428979 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57642 (_ BitVec 32)) Bool)

(assert (=> b!952084 (arrayForallSeekEntryOrOpenFound!0 lt!428979 (_keys!10767 thiss!1141) (mask!27654 thiss!1141))))

(declare-datatypes ((Unit!32036 0))(
  ( (Unit!32037) )
))
(declare-fun lt!428980 () Unit!32036)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57642 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32036)

(assert (=> b!952084 (= lt!428980 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10767 thiss!1141) (mask!27654 thiss!1141) #b00000000000000000000000000000000 lt!428979))))

(declare-fun arrayScanForKey!0 (array!57642 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!952084 (= lt!428979 (arrayScanForKey!0 (_keys!10767 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57642 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!952084 (arrayContainsKey!0 (_keys!10767 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!428981 () Unit!32036)

(declare-fun lemmaKeyInListMapIsInArray!338 (array!57642 array!57640 (_ BitVec 32) (_ BitVec 32) V!32689 V!32689 (_ BitVec 64) Int) Unit!32036)

(assert (=> b!952084 (= lt!428981 (lemmaKeyInListMapIsInArray!338 (_keys!10767 thiss!1141) (_values!5842 thiss!1141) (mask!27654 thiss!1141) (extraKeys!5551 thiss!1141) (zeroValue!5655 thiss!1141) (minValue!5655 thiss!1141) key!756 (defaultEntry!5819 thiss!1141)))))

(declare-fun b!952085 () Bool)

(declare-fun res!637989 () Bool)

(assert (=> b!952085 (=> res!637989 e!536216)))

(assert (=> b!952085 (= res!637989 (not (= (size!28190 (_keys!10767 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27654 thiss!1141)))))))

(declare-fun b!952086 () Bool)

(assert (=> b!952086 (= e!536216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10767 thiss!1141) (mask!27654 thiss!1141)))))

(declare-fun b!952087 () Bool)

(declare-fun res!637986 () Bool)

(assert (=> b!952087 (=> (not res!637986) (not e!536215))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9146 0))(
  ( (MissingZero!9146 (index!38954 (_ BitVec 32))) (Found!9146 (index!38955 (_ BitVec 32))) (Intermediate!9146 (undefined!9958 Bool) (index!38956 (_ BitVec 32)) (x!81899 (_ BitVec 32))) (Undefined!9146) (MissingVacant!9146 (index!38957 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57642 (_ BitVec 32)) SeekEntryResult!9146)

(assert (=> b!952087 (= res!637986 (not ((_ is Found!9146) (seekEntry!0 key!756 (_keys!10767 thiss!1141) (mask!27654 thiss!1141)))))))

(declare-fun b!952088 () Bool)

(declare-fun e!536212 () Bool)

(declare-fun tp_is_empty!20793 () Bool)

(assert (=> b!952088 (= e!536212 tp_is_empty!20793)))

(declare-fun mapNonEmpty!33124 () Bool)

(declare-fun tp!63474 () Bool)

(assert (=> mapNonEmpty!33124 (= mapRes!33124 (and tp!63474 e!536212))))

(declare-fun mapRest!33124 () (Array (_ BitVec 32) ValueCell!9915))

(declare-fun mapValue!33124 () ValueCell!9915)

(declare-fun mapKey!33124 () (_ BitVec 32))

(assert (=> mapNonEmpty!33124 (= (arr!27709 (_values!5842 thiss!1141)) (store mapRest!33124 mapKey!33124 mapValue!33124))))

(declare-fun b!952089 () Bool)

(assert (=> b!952089 (= e!536211 tp_is_empty!20793)))

(declare-fun e!536214 () Bool)

(declare-fun array_inv!21450 (array!57642) Bool)

(declare-fun array_inv!21451 (array!57640) Bool)

(assert (=> b!952090 (= e!536214 (and tp!63475 tp_is_empty!20793 (array_inv!21450 (_keys!10767 thiss!1141)) (array_inv!21451 (_values!5842 thiss!1141)) e!536213))))

(declare-fun b!952091 () Bool)

(declare-fun res!637985 () Bool)

(assert (=> b!952091 (=> (not res!637985) (not e!536215))))

(assert (=> b!952091 (= res!637985 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!33124 () Bool)

(assert (=> mapIsEmpty!33124 mapRes!33124))

(declare-fun res!637990 () Bool)

(assert (=> start!81508 (=> (not res!637990) (not e!536215))))

(declare-fun valid!1865 (LongMapFixedSize!4980) Bool)

(assert (=> start!81508 (= res!637990 (valid!1865 thiss!1141))))

(assert (=> start!81508 e!536215))

(assert (=> start!81508 e!536214))

(assert (=> start!81508 true))

(assert (= (and start!81508 res!637990) b!952091))

(assert (= (and b!952091 res!637985) b!952087))

(assert (= (and b!952087 res!637986) b!952082))

(assert (= (and b!952082 res!637988) b!952084))

(assert (= (and b!952084 (not res!637987)) b!952085))

(assert (= (and b!952085 (not res!637989)) b!952086))

(assert (= (and b!952083 condMapEmpty!33124) mapIsEmpty!33124))

(assert (= (and b!952083 (not condMapEmpty!33124)) mapNonEmpty!33124))

(assert (= (and mapNonEmpty!33124 ((_ is ValueCellFull!9915) mapValue!33124)) b!952088))

(assert (= (and b!952083 ((_ is ValueCellFull!9915) mapDefault!33124)) b!952089))

(assert (= b!952090 b!952083))

(assert (= start!81508 b!952090))

(declare-fun m!884381 () Bool)

(assert (=> start!81508 m!884381))

(declare-fun m!884383 () Bool)

(assert (=> b!952082 m!884383))

(assert (=> b!952082 m!884383))

(declare-fun m!884385 () Bool)

(assert (=> b!952082 m!884385))

(declare-fun m!884387 () Bool)

(assert (=> b!952086 m!884387))

(declare-fun m!884389 () Bool)

(assert (=> b!952090 m!884389))

(declare-fun m!884391 () Bool)

(assert (=> b!952090 m!884391))

(declare-fun m!884393 () Bool)

(assert (=> b!952087 m!884393))

(declare-fun m!884395 () Bool)

(assert (=> b!952084 m!884395))

(declare-fun m!884397 () Bool)

(assert (=> b!952084 m!884397))

(declare-fun m!884399 () Bool)

(assert (=> b!952084 m!884399))

(declare-fun m!884401 () Bool)

(assert (=> b!952084 m!884401))

(declare-fun m!884403 () Bool)

(assert (=> b!952084 m!884403))

(declare-fun m!884405 () Bool)

(assert (=> b!952084 m!884405))

(declare-fun m!884407 () Bool)

(assert (=> mapNonEmpty!33124 m!884407))

(check-sat (not start!81508) (not b!952086) (not b!952084) (not b!952087) tp_is_empty!20793 (not mapNonEmpty!33124) (not b_next!18285) (not b!952090) (not b!952082) b_and!29781)
(check-sat b_and!29781 (not b_next!18285))
(get-model)

(declare-fun bm!41549 () Bool)

(declare-fun call!41552 () Bool)

(assert (=> bm!41549 (= call!41552 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!428979 #b00000000000000000000000000000001) (_keys!10767 thiss!1141) (mask!27654 thiss!1141)))))

(declare-fun b!952130 () Bool)

(declare-fun e!536246 () Bool)

(declare-fun e!536244 () Bool)

(assert (=> b!952130 (= e!536246 e!536244)))

(declare-fun lt!428998 () (_ BitVec 64))

(assert (=> b!952130 (= lt!428998 (select (arr!27710 (_keys!10767 thiss!1141)) lt!428979))))

(declare-fun lt!428997 () Unit!32036)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57642 (_ BitVec 64) (_ BitVec 32)) Unit!32036)

(assert (=> b!952130 (= lt!428997 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10767 thiss!1141) lt!428998 lt!428979))))

(assert (=> b!952130 (arrayContainsKey!0 (_keys!10767 thiss!1141) lt!428998 #b00000000000000000000000000000000)))

(declare-fun lt!428999 () Unit!32036)

(assert (=> b!952130 (= lt!428999 lt!428997)))

(declare-fun res!638014 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57642 (_ BitVec 32)) SeekEntryResult!9146)

(assert (=> b!952130 (= res!638014 (= (seekEntryOrOpen!0 (select (arr!27710 (_keys!10767 thiss!1141)) lt!428979) (_keys!10767 thiss!1141) (mask!27654 thiss!1141)) (Found!9146 lt!428979)))))

(assert (=> b!952130 (=> (not res!638014) (not e!536244))))

(declare-fun d!115425 () Bool)

(declare-fun res!638013 () Bool)

(declare-fun e!536245 () Bool)

(assert (=> d!115425 (=> res!638013 e!536245)))

(assert (=> d!115425 (= res!638013 (bvsge lt!428979 (size!28190 (_keys!10767 thiss!1141))))))

(assert (=> d!115425 (= (arrayForallSeekEntryOrOpenFound!0 lt!428979 (_keys!10767 thiss!1141) (mask!27654 thiss!1141)) e!536245)))

(declare-fun b!952131 () Bool)

(assert (=> b!952131 (= e!536246 call!41552)))

(declare-fun b!952132 () Bool)

(assert (=> b!952132 (= e!536245 e!536246)))

(declare-fun c!99525 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!952132 (= c!99525 (validKeyInArray!0 (select (arr!27710 (_keys!10767 thiss!1141)) lt!428979)))))

(declare-fun b!952133 () Bool)

(assert (=> b!952133 (= e!536244 call!41552)))

(assert (= (and d!115425 (not res!638013)) b!952132))

(assert (= (and b!952132 c!99525) b!952130))

(assert (= (and b!952132 (not c!99525)) b!952131))

(assert (= (and b!952130 res!638014) b!952133))

(assert (= (or b!952133 b!952131) bm!41549))

(declare-fun m!884437 () Bool)

(assert (=> bm!41549 m!884437))

(declare-fun m!884439 () Bool)

(assert (=> b!952130 m!884439))

(declare-fun m!884441 () Bool)

(assert (=> b!952130 m!884441))

(declare-fun m!884443 () Bool)

(assert (=> b!952130 m!884443))

(assert (=> b!952130 m!884439))

(declare-fun m!884445 () Bool)

(assert (=> b!952130 m!884445))

(assert (=> b!952132 m!884439))

(assert (=> b!952132 m!884439))

(declare-fun m!884447 () Bool)

(assert (=> b!952132 m!884447))

(assert (=> b!952084 d!115425))

(declare-fun d!115427 () Bool)

(declare-fun res!638019 () Bool)

(declare-fun e!536251 () Bool)

(assert (=> d!115427 (=> res!638019 e!536251)))

(assert (=> d!115427 (= res!638019 (= (select (arr!27710 (_keys!10767 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115427 (= (arrayContainsKey!0 (_keys!10767 thiss!1141) key!756 #b00000000000000000000000000000000) e!536251)))

(declare-fun b!952138 () Bool)

(declare-fun e!536252 () Bool)

(assert (=> b!952138 (= e!536251 e!536252)))

(declare-fun res!638020 () Bool)

(assert (=> b!952138 (=> (not res!638020) (not e!536252))))

(assert (=> b!952138 (= res!638020 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28190 (_keys!10767 thiss!1141))))))

(declare-fun b!952139 () Bool)

(assert (=> b!952139 (= e!536252 (arrayContainsKey!0 (_keys!10767 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115427 (not res!638019)) b!952138))

(assert (= (and b!952138 res!638020) b!952139))

(declare-fun m!884449 () Bool)

(assert (=> d!115427 m!884449))

(declare-fun m!884451 () Bool)

(assert (=> b!952139 m!884451))

(assert (=> b!952084 d!115427))

(declare-fun d!115429 () Bool)

(declare-fun e!536255 () Bool)

(assert (=> d!115429 e!536255))

(declare-fun c!99528 () Bool)

(assert (=> d!115429 (= c!99528 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!429002 () Unit!32036)

(declare-fun choose!1605 (array!57642 array!57640 (_ BitVec 32) (_ BitVec 32) V!32689 V!32689 (_ BitVec 64) Int) Unit!32036)

(assert (=> d!115429 (= lt!429002 (choose!1605 (_keys!10767 thiss!1141) (_values!5842 thiss!1141) (mask!27654 thiss!1141) (extraKeys!5551 thiss!1141) (zeroValue!5655 thiss!1141) (minValue!5655 thiss!1141) key!756 (defaultEntry!5819 thiss!1141)))))

(assert (=> d!115429 (validMask!0 (mask!27654 thiss!1141))))

(assert (=> d!115429 (= (lemmaKeyInListMapIsInArray!338 (_keys!10767 thiss!1141) (_values!5842 thiss!1141) (mask!27654 thiss!1141) (extraKeys!5551 thiss!1141) (zeroValue!5655 thiss!1141) (minValue!5655 thiss!1141) key!756 (defaultEntry!5819 thiss!1141)) lt!429002)))

(declare-fun b!952144 () Bool)

(assert (=> b!952144 (= e!536255 (arrayContainsKey!0 (_keys!10767 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun b!952145 () Bool)

(assert (=> b!952145 (= e!536255 (ite (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5551 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5551 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!115429 c!99528) b!952144))

(assert (= (and d!115429 (not c!99528)) b!952145))

(declare-fun m!884453 () Bool)

(assert (=> d!115429 m!884453))

(assert (=> d!115429 m!884399))

(assert (=> b!952144 m!884405))

(assert (=> b!952084 d!115429))

(declare-fun d!115431 () Bool)

(assert (=> d!115431 (arrayForallSeekEntryOrOpenFound!0 lt!428979 (_keys!10767 thiss!1141) (mask!27654 thiss!1141))))

(declare-fun lt!429005 () Unit!32036)

(declare-fun choose!38 (array!57642 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32036)

(assert (=> d!115431 (= lt!429005 (choose!38 (_keys!10767 thiss!1141) (mask!27654 thiss!1141) #b00000000000000000000000000000000 lt!428979))))

(assert (=> d!115431 (validMask!0 (mask!27654 thiss!1141))))

(assert (=> d!115431 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10767 thiss!1141) (mask!27654 thiss!1141) #b00000000000000000000000000000000 lt!428979) lt!429005)))

(declare-fun bs!26751 () Bool)

(assert (= bs!26751 d!115431))

(assert (=> bs!26751 m!884403))

(declare-fun m!884455 () Bool)

(assert (=> bs!26751 m!884455))

(assert (=> bs!26751 m!884399))

(assert (=> b!952084 d!115431))

(declare-fun d!115433 () Bool)

(declare-fun lt!429008 () (_ BitVec 32))

(assert (=> d!115433 (and (or (bvslt lt!429008 #b00000000000000000000000000000000) (bvsge lt!429008 (size!28190 (_keys!10767 thiss!1141))) (and (bvsge lt!429008 #b00000000000000000000000000000000) (bvslt lt!429008 (size!28190 (_keys!10767 thiss!1141))))) (bvsge lt!429008 #b00000000000000000000000000000000) (bvslt lt!429008 (size!28190 (_keys!10767 thiss!1141))) (= (select (arr!27710 (_keys!10767 thiss!1141)) lt!429008) key!756))))

(declare-fun e!536258 () (_ BitVec 32))

(assert (=> d!115433 (= lt!429008 e!536258)))

(declare-fun c!99531 () Bool)

(assert (=> d!115433 (= c!99531 (= (select (arr!27710 (_keys!10767 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115433 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28190 (_keys!10767 thiss!1141))) (bvslt (size!28190 (_keys!10767 thiss!1141)) #b01111111111111111111111111111111))))

(assert (=> d!115433 (= (arrayScanForKey!0 (_keys!10767 thiss!1141) key!756 #b00000000000000000000000000000000) lt!429008)))

(declare-fun b!952150 () Bool)

(assert (=> b!952150 (= e!536258 #b00000000000000000000000000000000)))

(declare-fun b!952151 () Bool)

(assert (=> b!952151 (= e!536258 (arrayScanForKey!0 (_keys!10767 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115433 c!99531) b!952150))

(assert (= (and d!115433 (not c!99531)) b!952151))

(declare-fun m!884457 () Bool)

(assert (=> d!115433 m!884457))

(assert (=> d!115433 m!884449))

(declare-fun m!884459 () Bool)

(assert (=> b!952151 m!884459))

(assert (=> b!952084 d!115433))

(declare-fun d!115435 () Bool)

(assert (=> d!115435 (= (validMask!0 (mask!27654 thiss!1141)) (and (or (= (mask!27654 thiss!1141) #b00000000000000000000000000000111) (= (mask!27654 thiss!1141) #b00000000000000000000000000001111) (= (mask!27654 thiss!1141) #b00000000000000000000000000011111) (= (mask!27654 thiss!1141) #b00000000000000000000000000111111) (= (mask!27654 thiss!1141) #b00000000000000000000000001111111) (= (mask!27654 thiss!1141) #b00000000000000000000000011111111) (= (mask!27654 thiss!1141) #b00000000000000000000000111111111) (= (mask!27654 thiss!1141) #b00000000000000000000001111111111) (= (mask!27654 thiss!1141) #b00000000000000000000011111111111) (= (mask!27654 thiss!1141) #b00000000000000000000111111111111) (= (mask!27654 thiss!1141) #b00000000000000000001111111111111) (= (mask!27654 thiss!1141) #b00000000000000000011111111111111) (= (mask!27654 thiss!1141) #b00000000000000000111111111111111) (= (mask!27654 thiss!1141) #b00000000000000001111111111111111) (= (mask!27654 thiss!1141) #b00000000000000011111111111111111) (= (mask!27654 thiss!1141) #b00000000000000111111111111111111) (= (mask!27654 thiss!1141) #b00000000000001111111111111111111) (= (mask!27654 thiss!1141) #b00000000000011111111111111111111) (= (mask!27654 thiss!1141) #b00000000000111111111111111111111) (= (mask!27654 thiss!1141) #b00000000001111111111111111111111) (= (mask!27654 thiss!1141) #b00000000011111111111111111111111) (= (mask!27654 thiss!1141) #b00000000111111111111111111111111) (= (mask!27654 thiss!1141) #b00000001111111111111111111111111) (= (mask!27654 thiss!1141) #b00000011111111111111111111111111) (= (mask!27654 thiss!1141) #b00000111111111111111111111111111) (= (mask!27654 thiss!1141) #b00001111111111111111111111111111) (= (mask!27654 thiss!1141) #b00011111111111111111111111111111) (= (mask!27654 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27654 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!952084 d!115435))

(declare-fun d!115437 () Bool)

(declare-fun res!638027 () Bool)

(declare-fun e!536261 () Bool)

(assert (=> d!115437 (=> (not res!638027) (not e!536261))))

(declare-fun simpleValid!380 (LongMapFixedSize!4980) Bool)

(assert (=> d!115437 (= res!638027 (simpleValid!380 thiss!1141))))

(assert (=> d!115437 (= (valid!1865 thiss!1141) e!536261)))

(declare-fun b!952158 () Bool)

(declare-fun res!638028 () Bool)

(assert (=> b!952158 (=> (not res!638028) (not e!536261))))

(declare-fun arrayCountValidKeys!0 (array!57642 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!952158 (= res!638028 (= (arrayCountValidKeys!0 (_keys!10767 thiss!1141) #b00000000000000000000000000000000 (size!28190 (_keys!10767 thiss!1141))) (_size!2545 thiss!1141)))))

(declare-fun b!952159 () Bool)

(declare-fun res!638029 () Bool)

(assert (=> b!952159 (=> (not res!638029) (not e!536261))))

(assert (=> b!952159 (= res!638029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10767 thiss!1141) (mask!27654 thiss!1141)))))

(declare-fun b!952160 () Bool)

(declare-datatypes ((List!19492 0))(
  ( (Nil!19489) (Cons!19488 (h!20650 (_ BitVec 64)) (t!27855 List!19492)) )
))
(declare-fun arrayNoDuplicates!0 (array!57642 (_ BitVec 32) List!19492) Bool)

(assert (=> b!952160 (= e!536261 (arrayNoDuplicates!0 (_keys!10767 thiss!1141) #b00000000000000000000000000000000 Nil!19489))))

(assert (= (and d!115437 res!638027) b!952158))

(assert (= (and b!952158 res!638028) b!952159))

(assert (= (and b!952159 res!638029) b!952160))

(declare-fun m!884461 () Bool)

(assert (=> d!115437 m!884461))

(declare-fun m!884463 () Bool)

(assert (=> b!952158 m!884463))

(assert (=> b!952159 m!884387))

(declare-fun m!884465 () Bool)

(assert (=> b!952160 m!884465))

(assert (=> start!81508 d!115437))

(declare-fun b!952173 () Bool)

(declare-fun e!536268 () SeekEntryResult!9146)

(declare-fun lt!429020 () SeekEntryResult!9146)

(assert (=> b!952173 (= e!536268 (ite ((_ is MissingVacant!9146) lt!429020) (MissingZero!9146 (index!38957 lt!429020)) lt!429020))))

(declare-fun lt!429018 () SeekEntryResult!9146)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57642 (_ BitVec 32)) SeekEntryResult!9146)

(assert (=> b!952173 (= lt!429020 (seekKeyOrZeroReturnVacant!0 (x!81899 lt!429018) (index!38956 lt!429018) (index!38956 lt!429018) key!756 (_keys!10767 thiss!1141) (mask!27654 thiss!1141)))))

(declare-fun d!115439 () Bool)

(declare-fun lt!429017 () SeekEntryResult!9146)

(assert (=> d!115439 (and (or ((_ is MissingVacant!9146) lt!429017) (not ((_ is Found!9146) lt!429017)) (and (bvsge (index!38955 lt!429017) #b00000000000000000000000000000000) (bvslt (index!38955 lt!429017) (size!28190 (_keys!10767 thiss!1141))))) (not ((_ is MissingVacant!9146) lt!429017)) (or (not ((_ is Found!9146) lt!429017)) (= (select (arr!27710 (_keys!10767 thiss!1141)) (index!38955 lt!429017)) key!756)))))

(declare-fun e!536270 () SeekEntryResult!9146)

(assert (=> d!115439 (= lt!429017 e!536270)))

(declare-fun c!99538 () Bool)

(assert (=> d!115439 (= c!99538 (and ((_ is Intermediate!9146) lt!429018) (undefined!9958 lt!429018)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57642 (_ BitVec 32)) SeekEntryResult!9146)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!115439 (= lt!429018 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27654 thiss!1141)) key!756 (_keys!10767 thiss!1141) (mask!27654 thiss!1141)))))

(assert (=> d!115439 (validMask!0 (mask!27654 thiss!1141))))

(assert (=> d!115439 (= (seekEntry!0 key!756 (_keys!10767 thiss!1141) (mask!27654 thiss!1141)) lt!429017)))

(declare-fun b!952174 () Bool)

(assert (=> b!952174 (= e!536270 Undefined!9146)))

(declare-fun b!952175 () Bool)

(declare-fun e!536269 () SeekEntryResult!9146)

(assert (=> b!952175 (= e!536270 e!536269)))

(declare-fun lt!429019 () (_ BitVec 64))

(assert (=> b!952175 (= lt!429019 (select (arr!27710 (_keys!10767 thiss!1141)) (index!38956 lt!429018)))))

(declare-fun c!99539 () Bool)

(assert (=> b!952175 (= c!99539 (= lt!429019 key!756))))

(declare-fun b!952176 () Bool)

(declare-fun c!99540 () Bool)

(assert (=> b!952176 (= c!99540 (= lt!429019 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!952176 (= e!536269 e!536268)))

(declare-fun b!952177 () Bool)

(assert (=> b!952177 (= e!536269 (Found!9146 (index!38956 lt!429018)))))

(declare-fun b!952178 () Bool)

(assert (=> b!952178 (= e!536268 (MissingZero!9146 (index!38956 lt!429018)))))

(assert (= (and d!115439 c!99538) b!952174))

(assert (= (and d!115439 (not c!99538)) b!952175))

(assert (= (and b!952175 c!99539) b!952177))

(assert (= (and b!952175 (not c!99539)) b!952176))

(assert (= (and b!952176 c!99540) b!952178))

(assert (= (and b!952176 (not c!99540)) b!952173))

(declare-fun m!884467 () Bool)

(assert (=> b!952173 m!884467))

(declare-fun m!884469 () Bool)

(assert (=> d!115439 m!884469))

(declare-fun m!884471 () Bool)

(assert (=> d!115439 m!884471))

(assert (=> d!115439 m!884471))

(declare-fun m!884473 () Bool)

(assert (=> d!115439 m!884473))

(assert (=> d!115439 m!884399))

(declare-fun m!884475 () Bool)

(assert (=> b!952175 m!884475))

(assert (=> b!952087 d!115439))

(declare-fun d!115441 () Bool)

(declare-fun e!536275 () Bool)

(assert (=> d!115441 e!536275))

(declare-fun res!638032 () Bool)

(assert (=> d!115441 (=> res!638032 e!536275)))

(declare-fun lt!429029 () Bool)

(assert (=> d!115441 (= res!638032 (not lt!429029))))

(declare-fun lt!429030 () Bool)

(assert (=> d!115441 (= lt!429029 lt!429030)))

(declare-fun lt!429032 () Unit!32036)

(declare-fun e!536276 () Unit!32036)

(assert (=> d!115441 (= lt!429032 e!536276)))

(declare-fun c!99543 () Bool)

(assert (=> d!115441 (= c!99543 lt!429030)))

(declare-fun containsKey!472 (List!19491 (_ BitVec 64)) Bool)

(assert (=> d!115441 (= lt!429030 (containsKey!472 (toList!6207 (getCurrentListMap!3392 (_keys!10767 thiss!1141) (_values!5842 thiss!1141) (mask!27654 thiss!1141) (extraKeys!5551 thiss!1141) (zeroValue!5655 thiss!1141) (minValue!5655 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5819 thiss!1141))) key!756))))

(assert (=> d!115441 (= (contains!5253 (getCurrentListMap!3392 (_keys!10767 thiss!1141) (_values!5842 thiss!1141) (mask!27654 thiss!1141) (extraKeys!5551 thiss!1141) (zeroValue!5655 thiss!1141) (minValue!5655 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5819 thiss!1141)) key!756) lt!429029)))

(declare-fun b!952185 () Bool)

(declare-fun lt!429031 () Unit!32036)

(assert (=> b!952185 (= e!536276 lt!429031)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!367 (List!19491 (_ BitVec 64)) Unit!32036)

(assert (=> b!952185 (= lt!429031 (lemmaContainsKeyImpliesGetValueByKeyDefined!367 (toList!6207 (getCurrentListMap!3392 (_keys!10767 thiss!1141) (_values!5842 thiss!1141) (mask!27654 thiss!1141) (extraKeys!5551 thiss!1141) (zeroValue!5655 thiss!1141) (minValue!5655 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5819 thiss!1141))) key!756))))

(declare-datatypes ((Option!513 0))(
  ( (Some!512 (v!12999 V!32689)) (None!511) )
))
(declare-fun isDefined!377 (Option!513) Bool)

(declare-fun getValueByKey!507 (List!19491 (_ BitVec 64)) Option!513)

(assert (=> b!952185 (isDefined!377 (getValueByKey!507 (toList!6207 (getCurrentListMap!3392 (_keys!10767 thiss!1141) (_values!5842 thiss!1141) (mask!27654 thiss!1141) (extraKeys!5551 thiss!1141) (zeroValue!5655 thiss!1141) (minValue!5655 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5819 thiss!1141))) key!756))))

(declare-fun b!952186 () Bool)

(declare-fun Unit!32038 () Unit!32036)

(assert (=> b!952186 (= e!536276 Unit!32038)))

(declare-fun b!952187 () Bool)

(assert (=> b!952187 (= e!536275 (isDefined!377 (getValueByKey!507 (toList!6207 (getCurrentListMap!3392 (_keys!10767 thiss!1141) (_values!5842 thiss!1141) (mask!27654 thiss!1141) (extraKeys!5551 thiss!1141) (zeroValue!5655 thiss!1141) (minValue!5655 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5819 thiss!1141))) key!756)))))

(assert (= (and d!115441 c!99543) b!952185))

(assert (= (and d!115441 (not c!99543)) b!952186))

(assert (= (and d!115441 (not res!638032)) b!952187))

(declare-fun m!884477 () Bool)

(assert (=> d!115441 m!884477))

(declare-fun m!884479 () Bool)

(assert (=> b!952185 m!884479))

(declare-fun m!884481 () Bool)

(assert (=> b!952185 m!884481))

(assert (=> b!952185 m!884481))

(declare-fun m!884483 () Bool)

(assert (=> b!952185 m!884483))

(assert (=> b!952187 m!884481))

(assert (=> b!952187 m!884481))

(assert (=> b!952187 m!884483))

(assert (=> b!952082 d!115441))

(declare-fun b!952230 () Bool)

(declare-fun e!536307 () ListLongMap!12383)

(declare-fun call!41571 () ListLongMap!12383)

(declare-fun +!2834 (ListLongMap!12383 tuple2!13672) ListLongMap!12383)

(assert (=> b!952230 (= e!536307 (+!2834 call!41571 (tuple2!13673 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5655 thiss!1141))))))

(declare-fun b!952231 () Bool)

(declare-fun c!99559 () Bool)

(assert (=> b!952231 (= c!99559 (and (not (= (bvand (extraKeys!5551 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5551 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!536309 () ListLongMap!12383)

(declare-fun e!536311 () ListLongMap!12383)

(assert (=> b!952231 (= e!536309 e!536311)))

(declare-fun b!952232 () Bool)

(declare-fun res!638053 () Bool)

(declare-fun e!536308 () Bool)

(assert (=> b!952232 (=> (not res!638053) (not e!536308))))

(declare-fun e!536303 () Bool)

(assert (=> b!952232 (= res!638053 e!536303)))

(declare-fun res!638055 () Bool)

(assert (=> b!952232 (=> res!638055 e!536303)))

(declare-fun e!536315 () Bool)

(assert (=> b!952232 (= res!638055 (not e!536315))))

(declare-fun res!638056 () Bool)

(assert (=> b!952232 (=> (not res!638056) (not e!536315))))

(assert (=> b!952232 (= res!638056 (bvslt #b00000000000000000000000000000000 (size!28190 (_keys!10767 thiss!1141))))))

(declare-fun b!952233 () Bool)

(declare-fun e!536313 () Bool)

(declare-fun lt!429096 () ListLongMap!12383)

(declare-fun apply!920 (ListLongMap!12383 (_ BitVec 64)) V!32689)

(declare-fun get!14583 (ValueCell!9915 V!32689) V!32689)

(declare-fun dynLambda!1673 (Int (_ BitVec 64)) V!32689)

(assert (=> b!952233 (= e!536313 (= (apply!920 lt!429096 (select (arr!27710 (_keys!10767 thiss!1141)) #b00000000000000000000000000000000)) (get!14583 (select (arr!27709 (_values!5842 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1673 (defaultEntry!5819 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!952233 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28189 (_values!5842 thiss!1141))))))

(assert (=> b!952233 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28190 (_keys!10767 thiss!1141))))))

(declare-fun b!952234 () Bool)

(declare-fun e!536304 () Unit!32036)

(declare-fun Unit!32039 () Unit!32036)

(assert (=> b!952234 (= e!536304 Unit!32039)))

(declare-fun bm!41564 () Bool)

(declare-fun call!41569 () ListLongMap!12383)

(declare-fun call!41567 () ListLongMap!12383)

(assert (=> bm!41564 (= call!41569 call!41567)))

(declare-fun b!952236 () Bool)

(declare-fun e!536310 () Bool)

(assert (=> b!952236 (= e!536310 (= (apply!920 lt!429096 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5655 thiss!1141)))))

(declare-fun b!952237 () Bool)

(declare-fun e!536305 () Bool)

(assert (=> b!952237 (= e!536305 (validKeyInArray!0 (select (arr!27710 (_keys!10767 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!952238 () Bool)

(declare-fun e!536312 () Bool)

(declare-fun call!41572 () Bool)

(assert (=> b!952238 (= e!536312 (not call!41572))))

(declare-fun b!952239 () Bool)

(assert (=> b!952239 (= e!536315 (validKeyInArray!0 (select (arr!27710 (_keys!10767 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41565 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3340 (array!57642 array!57640 (_ BitVec 32) (_ BitVec 32) V!32689 V!32689 (_ BitVec 32) Int) ListLongMap!12383)

(assert (=> bm!41565 (= call!41567 (getCurrentListMapNoExtraKeys!3340 (_keys!10767 thiss!1141) (_values!5842 thiss!1141) (mask!27654 thiss!1141) (extraKeys!5551 thiss!1141) (zeroValue!5655 thiss!1141) (minValue!5655 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5819 thiss!1141)))))

(declare-fun b!952240 () Bool)

(declare-fun lt!429097 () Unit!32036)

(assert (=> b!952240 (= e!536304 lt!429097)))

(declare-fun lt!429081 () ListLongMap!12383)

(assert (=> b!952240 (= lt!429081 (getCurrentListMapNoExtraKeys!3340 (_keys!10767 thiss!1141) (_values!5842 thiss!1141) (mask!27654 thiss!1141) (extraKeys!5551 thiss!1141) (zeroValue!5655 thiss!1141) (minValue!5655 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5819 thiss!1141)))))

(declare-fun lt!429078 () (_ BitVec 64))

(assert (=> b!952240 (= lt!429078 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!429085 () (_ BitVec 64))

(assert (=> b!952240 (= lt!429085 (select (arr!27710 (_keys!10767 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!429090 () Unit!32036)

(declare-fun addStillContains!590 (ListLongMap!12383 (_ BitVec 64) V!32689 (_ BitVec 64)) Unit!32036)

(assert (=> b!952240 (= lt!429090 (addStillContains!590 lt!429081 lt!429078 (zeroValue!5655 thiss!1141) lt!429085))))

(assert (=> b!952240 (contains!5253 (+!2834 lt!429081 (tuple2!13673 lt!429078 (zeroValue!5655 thiss!1141))) lt!429085)))

(declare-fun lt!429098 () Unit!32036)

(assert (=> b!952240 (= lt!429098 lt!429090)))

(declare-fun lt!429087 () ListLongMap!12383)

(assert (=> b!952240 (= lt!429087 (getCurrentListMapNoExtraKeys!3340 (_keys!10767 thiss!1141) (_values!5842 thiss!1141) (mask!27654 thiss!1141) (extraKeys!5551 thiss!1141) (zeroValue!5655 thiss!1141) (minValue!5655 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5819 thiss!1141)))))

(declare-fun lt!429091 () (_ BitVec 64))

(assert (=> b!952240 (= lt!429091 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!429089 () (_ BitVec 64))

(assert (=> b!952240 (= lt!429089 (select (arr!27710 (_keys!10767 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!429088 () Unit!32036)

(declare-fun addApplyDifferent!464 (ListLongMap!12383 (_ BitVec 64) V!32689 (_ BitVec 64)) Unit!32036)

(assert (=> b!952240 (= lt!429088 (addApplyDifferent!464 lt!429087 lt!429091 (minValue!5655 thiss!1141) lt!429089))))

(assert (=> b!952240 (= (apply!920 (+!2834 lt!429087 (tuple2!13673 lt!429091 (minValue!5655 thiss!1141))) lt!429089) (apply!920 lt!429087 lt!429089))))

(declare-fun lt!429095 () Unit!32036)

(assert (=> b!952240 (= lt!429095 lt!429088)))

(declare-fun lt!429077 () ListLongMap!12383)

(assert (=> b!952240 (= lt!429077 (getCurrentListMapNoExtraKeys!3340 (_keys!10767 thiss!1141) (_values!5842 thiss!1141) (mask!27654 thiss!1141) (extraKeys!5551 thiss!1141) (zeroValue!5655 thiss!1141) (minValue!5655 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5819 thiss!1141)))))

(declare-fun lt!429079 () (_ BitVec 64))

(assert (=> b!952240 (= lt!429079 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!429086 () (_ BitVec 64))

(assert (=> b!952240 (= lt!429086 (select (arr!27710 (_keys!10767 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!429093 () Unit!32036)

(assert (=> b!952240 (= lt!429093 (addApplyDifferent!464 lt!429077 lt!429079 (zeroValue!5655 thiss!1141) lt!429086))))

(assert (=> b!952240 (= (apply!920 (+!2834 lt!429077 (tuple2!13673 lt!429079 (zeroValue!5655 thiss!1141))) lt!429086) (apply!920 lt!429077 lt!429086))))

(declare-fun lt!429084 () Unit!32036)

(assert (=> b!952240 (= lt!429084 lt!429093)))

(declare-fun lt!429080 () ListLongMap!12383)

(assert (=> b!952240 (= lt!429080 (getCurrentListMapNoExtraKeys!3340 (_keys!10767 thiss!1141) (_values!5842 thiss!1141) (mask!27654 thiss!1141) (extraKeys!5551 thiss!1141) (zeroValue!5655 thiss!1141) (minValue!5655 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5819 thiss!1141)))))

(declare-fun lt!429083 () (_ BitVec 64))

(assert (=> b!952240 (= lt!429083 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!429082 () (_ BitVec 64))

(assert (=> b!952240 (= lt!429082 (select (arr!27710 (_keys!10767 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!952240 (= lt!429097 (addApplyDifferent!464 lt!429080 lt!429083 (minValue!5655 thiss!1141) lt!429082))))

(assert (=> b!952240 (= (apply!920 (+!2834 lt!429080 (tuple2!13673 lt!429083 (minValue!5655 thiss!1141))) lt!429082) (apply!920 lt!429080 lt!429082))))

(declare-fun b!952241 () Bool)

(declare-fun call!41570 () ListLongMap!12383)

(assert (=> b!952241 (= e!536311 call!41570)))

(declare-fun b!952242 () Bool)

(declare-fun e!536306 () Bool)

(declare-fun call!41573 () Bool)

(assert (=> b!952242 (= e!536306 (not call!41573))))

(declare-fun b!952243 () Bool)

(declare-fun res!638059 () Bool)

(assert (=> b!952243 (=> (not res!638059) (not e!536308))))

(assert (=> b!952243 (= res!638059 e!536306)))

(declare-fun c!99561 () Bool)

(assert (=> b!952243 (= c!99561 (not (= (bvand (extraKeys!5551 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!952244 () Bool)

(declare-fun call!41568 () ListLongMap!12383)

(assert (=> b!952244 (= e!536309 call!41568)))

(declare-fun d!115443 () Bool)

(assert (=> d!115443 e!536308))

(declare-fun res!638058 () Bool)

(assert (=> d!115443 (=> (not res!638058) (not e!536308))))

(assert (=> d!115443 (= res!638058 (or (bvsge #b00000000000000000000000000000000 (size!28190 (_keys!10767 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28190 (_keys!10767 thiss!1141))))))))

(declare-fun lt!429094 () ListLongMap!12383)

(assert (=> d!115443 (= lt!429096 lt!429094)))

(declare-fun lt!429092 () Unit!32036)

(assert (=> d!115443 (= lt!429092 e!536304)))

(declare-fun c!99560 () Bool)

(assert (=> d!115443 (= c!99560 e!536305)))

(declare-fun res!638054 () Bool)

(assert (=> d!115443 (=> (not res!638054) (not e!536305))))

(assert (=> d!115443 (= res!638054 (bvslt #b00000000000000000000000000000000 (size!28190 (_keys!10767 thiss!1141))))))

(assert (=> d!115443 (= lt!429094 e!536307)))

(declare-fun c!99556 () Bool)

(assert (=> d!115443 (= c!99556 (and (not (= (bvand (extraKeys!5551 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5551 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!115443 (validMask!0 (mask!27654 thiss!1141))))

(assert (=> d!115443 (= (getCurrentListMap!3392 (_keys!10767 thiss!1141) (_values!5842 thiss!1141) (mask!27654 thiss!1141) (extraKeys!5551 thiss!1141) (zeroValue!5655 thiss!1141) (minValue!5655 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5819 thiss!1141)) lt!429096)))

(declare-fun b!952235 () Bool)

(declare-fun e!536314 () Bool)

(assert (=> b!952235 (= e!536306 e!536314)))

(declare-fun res!638052 () Bool)

(assert (=> b!952235 (= res!638052 call!41573)))

(assert (=> b!952235 (=> (not res!638052) (not e!536314))))

(declare-fun bm!41566 () Bool)

(assert (=> bm!41566 (= call!41568 call!41571)))

(declare-fun b!952245 () Bool)

(assert (=> b!952245 (= e!536314 (= (apply!920 lt!429096 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5655 thiss!1141)))))

(declare-fun b!952246 () Bool)

(assert (=> b!952246 (= e!536312 e!536310)))

(declare-fun res!638051 () Bool)

(assert (=> b!952246 (= res!638051 call!41572)))

(assert (=> b!952246 (=> (not res!638051) (not e!536310))))

(declare-fun b!952247 () Bool)

(assert (=> b!952247 (= e!536307 e!536309)))

(declare-fun c!99558 () Bool)

(assert (=> b!952247 (= c!99558 (and (not (= (bvand (extraKeys!5551 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5551 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!952248 () Bool)

(assert (=> b!952248 (= e!536311 call!41568)))

(declare-fun bm!41567 () Bool)

(assert (=> bm!41567 (= call!41571 (+!2834 (ite c!99556 call!41567 (ite c!99558 call!41569 call!41570)) (ite (or c!99556 c!99558) (tuple2!13673 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5655 thiss!1141)) (tuple2!13673 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5655 thiss!1141)))))))

(declare-fun b!952249 () Bool)

(assert (=> b!952249 (= e!536303 e!536313)))

(declare-fun res!638057 () Bool)

(assert (=> b!952249 (=> (not res!638057) (not e!536313))))

(assert (=> b!952249 (= res!638057 (contains!5253 lt!429096 (select (arr!27710 (_keys!10767 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!952249 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28190 (_keys!10767 thiss!1141))))))

(declare-fun bm!41568 () Bool)

(assert (=> bm!41568 (= call!41573 (contains!5253 lt!429096 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!41569 () Bool)

(assert (=> bm!41569 (= call!41572 (contains!5253 lt!429096 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!41570 () Bool)

(assert (=> bm!41570 (= call!41570 call!41569)))

(declare-fun b!952250 () Bool)

(assert (=> b!952250 (= e!536308 e!536312)))

(declare-fun c!99557 () Bool)

(assert (=> b!952250 (= c!99557 (not (= (bvand (extraKeys!5551 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!115443 c!99556) b!952230))

(assert (= (and d!115443 (not c!99556)) b!952247))

(assert (= (and b!952247 c!99558) b!952244))

(assert (= (and b!952247 (not c!99558)) b!952231))

(assert (= (and b!952231 c!99559) b!952248))

(assert (= (and b!952231 (not c!99559)) b!952241))

(assert (= (or b!952248 b!952241) bm!41570))

(assert (= (or b!952244 bm!41570) bm!41564))

(assert (= (or b!952244 b!952248) bm!41566))

(assert (= (or b!952230 bm!41564) bm!41565))

(assert (= (or b!952230 bm!41566) bm!41567))

(assert (= (and d!115443 res!638054) b!952237))

(assert (= (and d!115443 c!99560) b!952240))

(assert (= (and d!115443 (not c!99560)) b!952234))

(assert (= (and d!115443 res!638058) b!952232))

(assert (= (and b!952232 res!638056) b!952239))

(assert (= (and b!952232 (not res!638055)) b!952249))

(assert (= (and b!952249 res!638057) b!952233))

(assert (= (and b!952232 res!638053) b!952243))

(assert (= (and b!952243 c!99561) b!952235))

(assert (= (and b!952243 (not c!99561)) b!952242))

(assert (= (and b!952235 res!638052) b!952245))

(assert (= (or b!952235 b!952242) bm!41568))

(assert (= (and b!952243 res!638059) b!952250))

(assert (= (and b!952250 c!99557) b!952246))

(assert (= (and b!952250 (not c!99557)) b!952238))

(assert (= (and b!952246 res!638051) b!952236))

(assert (= (or b!952246 b!952238) bm!41569))

(declare-fun b_lambda!14441 () Bool)

(assert (=> (not b_lambda!14441) (not b!952233)))

(declare-fun t!27854 () Bool)

(declare-fun tb!6213 () Bool)

(assert (=> (and b!952090 (= (defaultEntry!5819 thiss!1141) (defaultEntry!5819 thiss!1141)) t!27854) tb!6213))

(declare-fun result!12345 () Bool)

(assert (=> tb!6213 (= result!12345 tp_is_empty!20793)))

(assert (=> b!952233 t!27854))

(declare-fun b_and!29785 () Bool)

(assert (= b_and!29781 (and (=> t!27854 result!12345) b_and!29785)))

(declare-fun m!884485 () Bool)

(assert (=> b!952236 m!884485))

(assert (=> b!952237 m!884449))

(assert (=> b!952237 m!884449))

(declare-fun m!884487 () Bool)

(assert (=> b!952237 m!884487))

(declare-fun m!884489 () Bool)

(assert (=> bm!41568 m!884489))

(assert (=> b!952249 m!884449))

(assert (=> b!952249 m!884449))

(declare-fun m!884491 () Bool)

(assert (=> b!952249 m!884491))

(declare-fun m!884493 () Bool)

(assert (=> b!952233 m!884493))

(assert (=> b!952233 m!884449))

(declare-fun m!884495 () Bool)

(assert (=> b!952233 m!884495))

(assert (=> b!952233 m!884449))

(declare-fun m!884497 () Bool)

(assert (=> b!952233 m!884497))

(assert (=> b!952233 m!884493))

(assert (=> b!952233 m!884495))

(declare-fun m!884499 () Bool)

(assert (=> b!952233 m!884499))

(assert (=> d!115443 m!884399))

(declare-fun m!884501 () Bool)

(assert (=> bm!41565 m!884501))

(declare-fun m!884503 () Bool)

(assert (=> bm!41569 m!884503))

(declare-fun m!884505 () Bool)

(assert (=> b!952245 m!884505))

(declare-fun m!884507 () Bool)

(assert (=> b!952230 m!884507))

(assert (=> b!952239 m!884449))

(assert (=> b!952239 m!884449))

(assert (=> b!952239 m!884487))

(declare-fun m!884509 () Bool)

(assert (=> bm!41567 m!884509))

(declare-fun m!884511 () Bool)

(assert (=> b!952240 m!884511))

(declare-fun m!884513 () Bool)

(assert (=> b!952240 m!884513))

(assert (=> b!952240 m!884513))

(declare-fun m!884515 () Bool)

(assert (=> b!952240 m!884515))

(declare-fun m!884517 () Bool)

(assert (=> b!952240 m!884517))

(declare-fun m!884519 () Bool)

(assert (=> b!952240 m!884519))

(declare-fun m!884521 () Bool)

(assert (=> b!952240 m!884521))

(declare-fun m!884523 () Bool)

(assert (=> b!952240 m!884523))

(declare-fun m!884525 () Bool)

(assert (=> b!952240 m!884525))

(declare-fun m!884527 () Bool)

(assert (=> b!952240 m!884527))

(declare-fun m!884529 () Bool)

(assert (=> b!952240 m!884529))

(declare-fun m!884531 () Bool)

(assert (=> b!952240 m!884531))

(declare-fun m!884533 () Bool)

(assert (=> b!952240 m!884533))

(assert (=> b!952240 m!884525))

(assert (=> b!952240 m!884449))

(declare-fun m!884535 () Bool)

(assert (=> b!952240 m!884535))

(assert (=> b!952240 m!884521))

(assert (=> b!952240 m!884501))

(declare-fun m!884537 () Bool)

(assert (=> b!952240 m!884537))

(assert (=> b!952240 m!884529))

(declare-fun m!884539 () Bool)

(assert (=> b!952240 m!884539))

(assert (=> b!952082 d!115443))

(declare-fun bm!41571 () Bool)

(declare-fun call!41574 () Bool)

(assert (=> bm!41571 (= call!41574 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10767 thiss!1141) (mask!27654 thiss!1141)))))

(declare-fun b!952253 () Bool)

(declare-fun e!536318 () Bool)

(declare-fun e!536316 () Bool)

(assert (=> b!952253 (= e!536318 e!536316)))

(declare-fun lt!429100 () (_ BitVec 64))

(assert (=> b!952253 (= lt!429100 (select (arr!27710 (_keys!10767 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!429099 () Unit!32036)

(assert (=> b!952253 (= lt!429099 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10767 thiss!1141) lt!429100 #b00000000000000000000000000000000))))

(assert (=> b!952253 (arrayContainsKey!0 (_keys!10767 thiss!1141) lt!429100 #b00000000000000000000000000000000)))

(declare-fun lt!429101 () Unit!32036)

(assert (=> b!952253 (= lt!429101 lt!429099)))

(declare-fun res!638061 () Bool)

(assert (=> b!952253 (= res!638061 (= (seekEntryOrOpen!0 (select (arr!27710 (_keys!10767 thiss!1141)) #b00000000000000000000000000000000) (_keys!10767 thiss!1141) (mask!27654 thiss!1141)) (Found!9146 #b00000000000000000000000000000000)))))

(assert (=> b!952253 (=> (not res!638061) (not e!536316))))

(declare-fun d!115445 () Bool)

(declare-fun res!638060 () Bool)

(declare-fun e!536317 () Bool)

(assert (=> d!115445 (=> res!638060 e!536317)))

(assert (=> d!115445 (= res!638060 (bvsge #b00000000000000000000000000000000 (size!28190 (_keys!10767 thiss!1141))))))

(assert (=> d!115445 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10767 thiss!1141) (mask!27654 thiss!1141)) e!536317)))

(declare-fun b!952254 () Bool)

(assert (=> b!952254 (= e!536318 call!41574)))

(declare-fun b!952255 () Bool)

(assert (=> b!952255 (= e!536317 e!536318)))

(declare-fun c!99562 () Bool)

(assert (=> b!952255 (= c!99562 (validKeyInArray!0 (select (arr!27710 (_keys!10767 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!952256 () Bool)

(assert (=> b!952256 (= e!536316 call!41574)))

(assert (= (and d!115445 (not res!638060)) b!952255))

(assert (= (and b!952255 c!99562) b!952253))

(assert (= (and b!952255 (not c!99562)) b!952254))

(assert (= (and b!952253 res!638061) b!952256))

(assert (= (or b!952256 b!952254) bm!41571))

(declare-fun m!884541 () Bool)

(assert (=> bm!41571 m!884541))

(assert (=> b!952253 m!884449))

(declare-fun m!884543 () Bool)

(assert (=> b!952253 m!884543))

(declare-fun m!884545 () Bool)

(assert (=> b!952253 m!884545))

(assert (=> b!952253 m!884449))

(declare-fun m!884547 () Bool)

(assert (=> b!952253 m!884547))

(assert (=> b!952255 m!884449))

(assert (=> b!952255 m!884449))

(assert (=> b!952255 m!884487))

(assert (=> b!952086 d!115445))

(declare-fun d!115447 () Bool)

(assert (=> d!115447 (= (array_inv!21450 (_keys!10767 thiss!1141)) (bvsge (size!28190 (_keys!10767 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!952090 d!115447))

(declare-fun d!115449 () Bool)

(assert (=> d!115449 (= (array_inv!21451 (_values!5842 thiss!1141)) (bvsge (size!28189 (_values!5842 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!952090 d!115449))

(declare-fun b!952264 () Bool)

(declare-fun e!536324 () Bool)

(assert (=> b!952264 (= e!536324 tp_is_empty!20793)))

(declare-fun b!952263 () Bool)

(declare-fun e!536323 () Bool)

(assert (=> b!952263 (= e!536323 tp_is_empty!20793)))

(declare-fun mapIsEmpty!33130 () Bool)

(declare-fun mapRes!33130 () Bool)

(assert (=> mapIsEmpty!33130 mapRes!33130))

(declare-fun mapNonEmpty!33130 () Bool)

(declare-fun tp!63484 () Bool)

(assert (=> mapNonEmpty!33130 (= mapRes!33130 (and tp!63484 e!536323))))

(declare-fun mapKey!33130 () (_ BitVec 32))

(declare-fun mapRest!33130 () (Array (_ BitVec 32) ValueCell!9915))

(declare-fun mapValue!33130 () ValueCell!9915)

(assert (=> mapNonEmpty!33130 (= mapRest!33124 (store mapRest!33130 mapKey!33130 mapValue!33130))))

(declare-fun condMapEmpty!33130 () Bool)

(declare-fun mapDefault!33130 () ValueCell!9915)

(assert (=> mapNonEmpty!33124 (= condMapEmpty!33130 (= mapRest!33124 ((as const (Array (_ BitVec 32) ValueCell!9915)) mapDefault!33130)))))

(assert (=> mapNonEmpty!33124 (= tp!63474 (and e!536324 mapRes!33130))))

(assert (= (and mapNonEmpty!33124 condMapEmpty!33130) mapIsEmpty!33130))

(assert (= (and mapNonEmpty!33124 (not condMapEmpty!33130)) mapNonEmpty!33130))

(assert (= (and mapNonEmpty!33130 ((_ is ValueCellFull!9915) mapValue!33130)) b!952263))

(assert (= (and mapNonEmpty!33124 ((_ is ValueCellFull!9915) mapDefault!33130)) b!952264))

(declare-fun m!884549 () Bool)

(assert (=> mapNonEmpty!33130 m!884549))

(declare-fun b_lambda!14443 () Bool)

(assert (= b_lambda!14441 (or (and b!952090 b_free!18285) b_lambda!14443)))

(check-sat (not mapNonEmpty!33130) (not d!115429) (not bm!41565) (not b!952236) (not d!115439) (not bm!41549) (not b!952255) tp_is_empty!20793 (not d!115441) (not b!952245) (not b!952158) (not b!952173) (not bm!41568) (not b!952159) (not b!952151) b_and!29785 (not b!952230) (not bm!41569) (not b!952185) (not b!952233) (not b_next!18285) (not d!115431) (not bm!41571) (not b!952239) (not bm!41567) (not b!952160) (not b!952139) (not b!952187) (not b!952240) (not b!952130) (not b_lambda!14443) (not b!952144) (not b!952253) (not b!952237) (not d!115443) (not b!952132) (not d!115437) (not b!952249))
(check-sat b_and!29785 (not b_next!18285))
