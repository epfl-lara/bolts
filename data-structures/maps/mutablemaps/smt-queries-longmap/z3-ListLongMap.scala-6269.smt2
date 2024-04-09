; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80226 () Bool)

(assert start!80226)

(declare-fun b!942044 () Bool)

(declare-fun b_free!17937 () Bool)

(declare-fun b_next!17937 () Bool)

(assert (=> b!942044 (= b_free!17937 (not b_next!17937))))

(declare-fun tp!62309 () Bool)

(declare-fun b_and!29367 () Bool)

(assert (=> b!942044 (= tp!62309 b_and!29367)))

(declare-fun b!942039 () Bool)

(declare-fun res!633198 () Bool)

(declare-fun e!529686 () Bool)

(assert (=> b!942039 (=> (not res!633198) (not e!529686))))

(declare-datatypes ((V!32225 0))(
  ( (V!32226 (val!10273 Int)) )
))
(declare-datatypes ((ValueCell!9741 0))(
  ( (ValueCellFull!9741 (v!12804 V!32225)) (EmptyCell!9741) )
))
(declare-datatypes ((array!56872 0))(
  ( (array!56873 (arr!27361 (Array (_ BitVec 32) ValueCell!9741)) (size!27827 (_ BitVec 32))) )
))
(declare-datatypes ((array!56874 0))(
  ( (array!56875 (arr!27362 (Array (_ BitVec 32) (_ BitVec 64))) (size!27828 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4632 0))(
  ( (LongMapFixedSize!4633 (defaultEntry!5607 Int) (mask!27197 (_ BitVec 32)) (extraKeys!5339 (_ BitVec 32)) (zeroValue!5443 V!32225) (minValue!5443 V!32225) (_size!2371 (_ BitVec 32)) (_keys!10471 array!56874) (_values!5630 array!56872) (_vacant!2371 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4632)

(assert (=> b!942039 (= res!633198 (and (= (size!27827 (_values!5630 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27197 thiss!1141))) (= (size!27828 (_keys!10471 thiss!1141)) (size!27827 (_values!5630 thiss!1141))) (bvsge (mask!27197 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5339 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5339 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!942040 () Bool)

(declare-fun e!529687 () Bool)

(declare-fun tp_is_empty!20445 () Bool)

(assert (=> b!942040 (= e!529687 tp_is_empty!20445)))

(declare-fun b!942041 () Bool)

(declare-fun res!633196 () Bool)

(assert (=> b!942041 (=> (not res!633196) (not e!529686))))

(declare-fun key!756 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9021 0))(
  ( (MissingZero!9021 (index!38454 (_ BitVec 32))) (Found!9021 (index!38455 (_ BitVec 32))) (Intermediate!9021 (undefined!9833 Bool) (index!38456 (_ BitVec 32)) (x!80871 (_ BitVec 32))) (Undefined!9021) (MissingVacant!9021 (index!38457 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56874 (_ BitVec 32)) SeekEntryResult!9021)

(assert (=> b!942041 (= res!633196 (not ((_ is Found!9021) (seekEntry!0 key!756 (_keys!10471 thiss!1141) (mask!27197 thiss!1141)))))))

(declare-fun mapIsEmpty!32480 () Bool)

(declare-fun mapRes!32480 () Bool)

(assert (=> mapIsEmpty!32480 mapRes!32480))

(declare-fun b!942042 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56874 (_ BitVec 32)) Bool)

(assert (=> b!942042 (= e!529686 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10471 thiss!1141) (mask!27197 thiss!1141))))))

(declare-fun b!942043 () Bool)

(declare-fun e!529690 () Bool)

(assert (=> b!942043 (= e!529690 tp_is_empty!20445)))

(declare-fun res!633195 () Bool)

(assert (=> start!80226 (=> (not res!633195) (not e!529686))))

(declare-fun valid!1754 (LongMapFixedSize!4632) Bool)

(assert (=> start!80226 (= res!633195 (valid!1754 thiss!1141))))

(assert (=> start!80226 e!529686))

(declare-fun e!529689 () Bool)

(assert (=> start!80226 e!529689))

(assert (=> start!80226 true))

(declare-fun e!529691 () Bool)

(declare-fun array_inv!21218 (array!56874) Bool)

(declare-fun array_inv!21219 (array!56872) Bool)

(assert (=> b!942044 (= e!529689 (and tp!62309 tp_is_empty!20445 (array_inv!21218 (_keys!10471 thiss!1141)) (array_inv!21219 (_values!5630 thiss!1141)) e!529691))))

(declare-fun mapNonEmpty!32480 () Bool)

(declare-fun tp!62308 () Bool)

(assert (=> mapNonEmpty!32480 (= mapRes!32480 (and tp!62308 e!529690))))

(declare-fun mapValue!32480 () ValueCell!9741)

(declare-fun mapRest!32480 () (Array (_ BitVec 32) ValueCell!9741))

(declare-fun mapKey!32480 () (_ BitVec 32))

(assert (=> mapNonEmpty!32480 (= (arr!27361 (_values!5630 thiss!1141)) (store mapRest!32480 mapKey!32480 mapValue!32480))))

(declare-fun b!942045 () Bool)

(assert (=> b!942045 (= e!529691 (and e!529687 mapRes!32480))))

(declare-fun condMapEmpty!32480 () Bool)

(declare-fun mapDefault!32480 () ValueCell!9741)

(assert (=> b!942045 (= condMapEmpty!32480 (= (arr!27361 (_values!5630 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9741)) mapDefault!32480)))))

(declare-fun b!942046 () Bool)

(declare-fun res!633194 () Bool)

(assert (=> b!942046 (=> (not res!633194) (not e!529686))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!942046 (= res!633194 (validMask!0 (mask!27197 thiss!1141)))))

(declare-fun b!942047 () Bool)

(declare-fun res!633197 () Bool)

(assert (=> b!942047 (=> (not res!633197) (not e!529686))))

(assert (=> b!942047 (= res!633197 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!80226 res!633195) b!942047))

(assert (= (and b!942047 res!633197) b!942041))

(assert (= (and b!942041 res!633196) b!942046))

(assert (= (and b!942046 res!633194) b!942039))

(assert (= (and b!942039 res!633198) b!942042))

(assert (= (and b!942045 condMapEmpty!32480) mapIsEmpty!32480))

(assert (= (and b!942045 (not condMapEmpty!32480)) mapNonEmpty!32480))

(assert (= (and mapNonEmpty!32480 ((_ is ValueCellFull!9741) mapValue!32480)) b!942043))

(assert (= (and b!942045 ((_ is ValueCellFull!9741) mapDefault!32480)) b!942040))

(assert (= b!942044 b!942045))

(assert (= start!80226 b!942044))

(declare-fun m!876837 () Bool)

(assert (=> b!942046 m!876837))

(declare-fun m!876839 () Bool)

(assert (=> b!942044 m!876839))

(declare-fun m!876841 () Bool)

(assert (=> b!942044 m!876841))

(declare-fun m!876843 () Bool)

(assert (=> b!942041 m!876843))

(declare-fun m!876845 () Bool)

(assert (=> b!942042 m!876845))

(declare-fun m!876847 () Bool)

(assert (=> mapNonEmpty!32480 m!876847))

(declare-fun m!876849 () Bool)

(assert (=> start!80226 m!876849))

(check-sat tp_is_empty!20445 (not b!942041) (not mapNonEmpty!32480) (not b!942042) (not start!80226) (not b!942046) (not b!942044) b_and!29367 (not b_next!17937))
(check-sat b_and!29367 (not b_next!17937))
(get-model)

(declare-fun b!942083 () Bool)

(declare-fun e!529716 () Bool)

(declare-fun e!529717 () Bool)

(assert (=> b!942083 (= e!529716 e!529717)))

(declare-fun lt!425066 () (_ BitVec 64))

(assert (=> b!942083 (= lt!425066 (select (arr!27362 (_keys!10471 thiss!1141)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!31813 0))(
  ( (Unit!31814) )
))
(declare-fun lt!425065 () Unit!31813)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56874 (_ BitVec 64) (_ BitVec 32)) Unit!31813)

(assert (=> b!942083 (= lt!425065 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10471 thiss!1141) lt!425066 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!56874 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!942083 (arrayContainsKey!0 (_keys!10471 thiss!1141) lt!425066 #b00000000000000000000000000000000)))

(declare-fun lt!425067 () Unit!31813)

(assert (=> b!942083 (= lt!425067 lt!425065)))

(declare-fun res!633219 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!56874 (_ BitVec 32)) SeekEntryResult!9021)

(assert (=> b!942083 (= res!633219 (= (seekEntryOrOpen!0 (select (arr!27362 (_keys!10471 thiss!1141)) #b00000000000000000000000000000000) (_keys!10471 thiss!1141) (mask!27197 thiss!1141)) (Found!9021 #b00000000000000000000000000000000)))))

(assert (=> b!942083 (=> (not res!633219) (not e!529717))))

(declare-fun b!942084 () Bool)

(declare-fun call!40953 () Bool)

(assert (=> b!942084 (= e!529717 call!40953)))

(declare-fun bm!40950 () Bool)

(assert (=> bm!40950 (= call!40953 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10471 thiss!1141) (mask!27197 thiss!1141)))))

(declare-fun b!942085 () Bool)

(assert (=> b!942085 (= e!529716 call!40953)))

(declare-fun b!942086 () Bool)

(declare-fun e!529718 () Bool)

(assert (=> b!942086 (= e!529718 e!529716)))

(declare-fun c!98121 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!942086 (= c!98121 (validKeyInArray!0 (select (arr!27362 (_keys!10471 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!114081 () Bool)

(declare-fun res!633218 () Bool)

(assert (=> d!114081 (=> res!633218 e!529718)))

(assert (=> d!114081 (= res!633218 (bvsge #b00000000000000000000000000000000 (size!27828 (_keys!10471 thiss!1141))))))

(assert (=> d!114081 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10471 thiss!1141) (mask!27197 thiss!1141)) e!529718)))

(assert (= (and d!114081 (not res!633218)) b!942086))

(assert (= (and b!942086 c!98121) b!942083))

(assert (= (and b!942086 (not c!98121)) b!942085))

(assert (= (and b!942083 res!633219) b!942084))

(assert (= (or b!942084 b!942085) bm!40950))

(declare-fun m!876865 () Bool)

(assert (=> b!942083 m!876865))

(declare-fun m!876867 () Bool)

(assert (=> b!942083 m!876867))

(declare-fun m!876869 () Bool)

(assert (=> b!942083 m!876869))

(assert (=> b!942083 m!876865))

(declare-fun m!876871 () Bool)

(assert (=> b!942083 m!876871))

(declare-fun m!876873 () Bool)

(assert (=> bm!40950 m!876873))

(assert (=> b!942086 m!876865))

(assert (=> b!942086 m!876865))

(declare-fun m!876875 () Bool)

(assert (=> b!942086 m!876875))

(assert (=> b!942042 d!114081))

(declare-fun d!114083 () Bool)

(assert (=> d!114083 (= (validMask!0 (mask!27197 thiss!1141)) (and (or (= (mask!27197 thiss!1141) #b00000000000000000000000000000111) (= (mask!27197 thiss!1141) #b00000000000000000000000000001111) (= (mask!27197 thiss!1141) #b00000000000000000000000000011111) (= (mask!27197 thiss!1141) #b00000000000000000000000000111111) (= (mask!27197 thiss!1141) #b00000000000000000000000001111111) (= (mask!27197 thiss!1141) #b00000000000000000000000011111111) (= (mask!27197 thiss!1141) #b00000000000000000000000111111111) (= (mask!27197 thiss!1141) #b00000000000000000000001111111111) (= (mask!27197 thiss!1141) #b00000000000000000000011111111111) (= (mask!27197 thiss!1141) #b00000000000000000000111111111111) (= (mask!27197 thiss!1141) #b00000000000000000001111111111111) (= (mask!27197 thiss!1141) #b00000000000000000011111111111111) (= (mask!27197 thiss!1141) #b00000000000000000111111111111111) (= (mask!27197 thiss!1141) #b00000000000000001111111111111111) (= (mask!27197 thiss!1141) #b00000000000000011111111111111111) (= (mask!27197 thiss!1141) #b00000000000000111111111111111111) (= (mask!27197 thiss!1141) #b00000000000001111111111111111111) (= (mask!27197 thiss!1141) #b00000000000011111111111111111111) (= (mask!27197 thiss!1141) #b00000000000111111111111111111111) (= (mask!27197 thiss!1141) #b00000000001111111111111111111111) (= (mask!27197 thiss!1141) #b00000000011111111111111111111111) (= (mask!27197 thiss!1141) #b00000000111111111111111111111111) (= (mask!27197 thiss!1141) #b00000001111111111111111111111111) (= (mask!27197 thiss!1141) #b00000011111111111111111111111111) (= (mask!27197 thiss!1141) #b00000111111111111111111111111111) (= (mask!27197 thiss!1141) #b00001111111111111111111111111111) (= (mask!27197 thiss!1141) #b00011111111111111111111111111111) (= (mask!27197 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27197 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!942046 d!114083))

(declare-fun d!114085 () Bool)

(assert (=> d!114085 (= (array_inv!21218 (_keys!10471 thiss!1141)) (bvsge (size!27828 (_keys!10471 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!942044 d!114085))

(declare-fun d!114087 () Bool)

(assert (=> d!114087 (= (array_inv!21219 (_values!5630 thiss!1141)) (bvsge (size!27827 (_values!5630 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!942044 d!114087))

(declare-fun b!942099 () Bool)

(declare-fun e!529727 () SeekEntryResult!9021)

(declare-fun e!529726 () SeekEntryResult!9021)

(assert (=> b!942099 (= e!529727 e!529726)))

(declare-fun lt!425076 () (_ BitVec 64))

(declare-fun lt!425077 () SeekEntryResult!9021)

(assert (=> b!942099 (= lt!425076 (select (arr!27362 (_keys!10471 thiss!1141)) (index!38456 lt!425077)))))

(declare-fun c!98128 () Bool)

(assert (=> b!942099 (= c!98128 (= lt!425076 key!756))))

(declare-fun b!942100 () Bool)

(assert (=> b!942100 (= e!529727 Undefined!9021)))

(declare-fun d!114089 () Bool)

(declare-fun lt!425078 () SeekEntryResult!9021)

(assert (=> d!114089 (and (or ((_ is MissingVacant!9021) lt!425078) (not ((_ is Found!9021) lt!425078)) (and (bvsge (index!38455 lt!425078) #b00000000000000000000000000000000) (bvslt (index!38455 lt!425078) (size!27828 (_keys!10471 thiss!1141))))) (not ((_ is MissingVacant!9021) lt!425078)) (or (not ((_ is Found!9021) lt!425078)) (= (select (arr!27362 (_keys!10471 thiss!1141)) (index!38455 lt!425078)) key!756)))))

(assert (=> d!114089 (= lt!425078 e!529727)))

(declare-fun c!98130 () Bool)

(assert (=> d!114089 (= c!98130 (and ((_ is Intermediate!9021) lt!425077) (undefined!9833 lt!425077)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56874 (_ BitVec 32)) SeekEntryResult!9021)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114089 (= lt!425077 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27197 thiss!1141)) key!756 (_keys!10471 thiss!1141) (mask!27197 thiss!1141)))))

(assert (=> d!114089 (validMask!0 (mask!27197 thiss!1141))))

(assert (=> d!114089 (= (seekEntry!0 key!756 (_keys!10471 thiss!1141) (mask!27197 thiss!1141)) lt!425078)))

(declare-fun b!942101 () Bool)

(assert (=> b!942101 (= e!529726 (Found!9021 (index!38456 lt!425077)))))

(declare-fun b!942102 () Bool)

(declare-fun e!529725 () SeekEntryResult!9021)

(declare-fun lt!425079 () SeekEntryResult!9021)

(assert (=> b!942102 (= e!529725 (ite ((_ is MissingVacant!9021) lt!425079) (MissingZero!9021 (index!38457 lt!425079)) lt!425079))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56874 (_ BitVec 32)) SeekEntryResult!9021)

(assert (=> b!942102 (= lt!425079 (seekKeyOrZeroReturnVacant!0 (x!80871 lt!425077) (index!38456 lt!425077) (index!38456 lt!425077) key!756 (_keys!10471 thiss!1141) (mask!27197 thiss!1141)))))

(declare-fun b!942103 () Bool)

(declare-fun c!98129 () Bool)

(assert (=> b!942103 (= c!98129 (= lt!425076 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!942103 (= e!529726 e!529725)))

(declare-fun b!942104 () Bool)

(assert (=> b!942104 (= e!529725 (MissingZero!9021 (index!38456 lt!425077)))))

(assert (= (and d!114089 c!98130) b!942100))

(assert (= (and d!114089 (not c!98130)) b!942099))

(assert (= (and b!942099 c!98128) b!942101))

(assert (= (and b!942099 (not c!98128)) b!942103))

(assert (= (and b!942103 c!98129) b!942104))

(assert (= (and b!942103 (not c!98129)) b!942102))

(declare-fun m!876877 () Bool)

(assert (=> b!942099 m!876877))

(declare-fun m!876879 () Bool)

(assert (=> d!114089 m!876879))

(declare-fun m!876881 () Bool)

(assert (=> d!114089 m!876881))

(assert (=> d!114089 m!876881))

(declare-fun m!876883 () Bool)

(assert (=> d!114089 m!876883))

(assert (=> d!114089 m!876837))

(declare-fun m!876885 () Bool)

(assert (=> b!942102 m!876885))

(assert (=> b!942041 d!114089))

(declare-fun d!114091 () Bool)

(declare-fun res!633226 () Bool)

(declare-fun e!529730 () Bool)

(assert (=> d!114091 (=> (not res!633226) (not e!529730))))

(declare-fun simpleValid!344 (LongMapFixedSize!4632) Bool)

(assert (=> d!114091 (= res!633226 (simpleValid!344 thiss!1141))))

(assert (=> d!114091 (= (valid!1754 thiss!1141) e!529730)))

(declare-fun b!942111 () Bool)

(declare-fun res!633227 () Bool)

(assert (=> b!942111 (=> (not res!633227) (not e!529730))))

(declare-fun arrayCountValidKeys!0 (array!56874 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!942111 (= res!633227 (= (arrayCountValidKeys!0 (_keys!10471 thiss!1141) #b00000000000000000000000000000000 (size!27828 (_keys!10471 thiss!1141))) (_size!2371 thiss!1141)))))

(declare-fun b!942112 () Bool)

(declare-fun res!633228 () Bool)

(assert (=> b!942112 (=> (not res!633228) (not e!529730))))

(assert (=> b!942112 (= res!633228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10471 thiss!1141) (mask!27197 thiss!1141)))))

(declare-fun b!942113 () Bool)

(declare-datatypes ((List!19345 0))(
  ( (Nil!19342) (Cons!19341 (h!20491 (_ BitVec 64)) (t!27668 List!19345)) )
))
(declare-fun arrayNoDuplicates!0 (array!56874 (_ BitVec 32) List!19345) Bool)

(assert (=> b!942113 (= e!529730 (arrayNoDuplicates!0 (_keys!10471 thiss!1141) #b00000000000000000000000000000000 Nil!19342))))

(assert (= (and d!114091 res!633226) b!942111))

(assert (= (and b!942111 res!633227) b!942112))

(assert (= (and b!942112 res!633228) b!942113))

(declare-fun m!876887 () Bool)

(assert (=> d!114091 m!876887))

(declare-fun m!876889 () Bool)

(assert (=> b!942111 m!876889))

(assert (=> b!942112 m!876845))

(declare-fun m!876891 () Bool)

(assert (=> b!942113 m!876891))

(assert (=> start!80226 d!114091))

(declare-fun b!942121 () Bool)

(declare-fun e!529736 () Bool)

(assert (=> b!942121 (= e!529736 tp_is_empty!20445)))

(declare-fun mapNonEmpty!32486 () Bool)

(declare-fun mapRes!32486 () Bool)

(declare-fun tp!62318 () Bool)

(declare-fun e!529735 () Bool)

(assert (=> mapNonEmpty!32486 (= mapRes!32486 (and tp!62318 e!529735))))

(declare-fun mapRest!32486 () (Array (_ BitVec 32) ValueCell!9741))

(declare-fun mapValue!32486 () ValueCell!9741)

(declare-fun mapKey!32486 () (_ BitVec 32))

(assert (=> mapNonEmpty!32486 (= mapRest!32480 (store mapRest!32486 mapKey!32486 mapValue!32486))))

(declare-fun mapIsEmpty!32486 () Bool)

(assert (=> mapIsEmpty!32486 mapRes!32486))

(declare-fun condMapEmpty!32486 () Bool)

(declare-fun mapDefault!32486 () ValueCell!9741)

(assert (=> mapNonEmpty!32480 (= condMapEmpty!32486 (= mapRest!32480 ((as const (Array (_ BitVec 32) ValueCell!9741)) mapDefault!32486)))))

(assert (=> mapNonEmpty!32480 (= tp!62308 (and e!529736 mapRes!32486))))

(declare-fun b!942120 () Bool)

(assert (=> b!942120 (= e!529735 tp_is_empty!20445)))

(assert (= (and mapNonEmpty!32480 condMapEmpty!32486) mapIsEmpty!32486))

(assert (= (and mapNonEmpty!32480 (not condMapEmpty!32486)) mapNonEmpty!32486))

(assert (= (and mapNonEmpty!32486 ((_ is ValueCellFull!9741) mapValue!32486)) b!942120))

(assert (= (and mapNonEmpty!32480 ((_ is ValueCellFull!9741) mapDefault!32486)) b!942121))

(declare-fun m!876893 () Bool)

(assert (=> mapNonEmpty!32486 m!876893))

(check-sat tp_is_empty!20445 (not b!942102) (not b!942111) (not b!942083) (not bm!40950) (not b!942112) (not d!114091) (not d!114089) (not mapNonEmpty!32486) (not b!942113) b_and!29367 (not b_next!17937) (not b!942086))
(check-sat b_and!29367 (not b_next!17937))
