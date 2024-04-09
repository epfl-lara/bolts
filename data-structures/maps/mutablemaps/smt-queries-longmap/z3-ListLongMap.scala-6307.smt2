; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80820 () Bool)

(assert start!80820)

(declare-fun b!947026 () Bool)

(declare-fun b_free!18165 () Bool)

(declare-fun b_next!18165 () Bool)

(assert (=> b!947026 (= b_free!18165 (not b_next!18165))))

(declare-fun tp!63052 () Bool)

(declare-fun b_and!29605 () Bool)

(assert (=> b!947026 (= tp!63052 b_and!29605)))

(declare-fun mapNonEmpty!32881 () Bool)

(declare-fun mapRes!32881 () Bool)

(declare-fun tp!63051 () Bool)

(declare-fun e!533023 () Bool)

(assert (=> mapNonEmpty!32881 (= mapRes!32881 (and tp!63051 e!533023))))

(declare-datatypes ((V!32529 0))(
  ( (V!32530 (val!10387 Int)) )
))
(declare-datatypes ((ValueCell!9855 0))(
  ( (ValueCellFull!9855 (v!12921 V!32529)) (EmptyCell!9855) )
))
(declare-fun mapRest!32881 () (Array (_ BitVec 32) ValueCell!9855))

(declare-fun mapKey!32881 () (_ BitVec 32))

(declare-datatypes ((array!57362 0))(
  ( (array!57363 (arr!27589 (Array (_ BitVec 32) ValueCell!9855)) (size!28063 (_ BitVec 32))) )
))
(declare-datatypes ((array!57364 0))(
  ( (array!57365 (arr!27590 (Array (_ BitVec 32) (_ BitVec 64))) (size!28064 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4860 0))(
  ( (LongMapFixedSize!4861 (defaultEntry!5727 Int) (mask!27450 (_ BitVec 32)) (extraKeys!5459 (_ BitVec 32)) (zeroValue!5563 V!32529) (minValue!5563 V!32529) (_size!2485 (_ BitVec 32)) (_keys!10630 array!57364) (_values!5750 array!57362) (_vacant!2485 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4860)

(declare-fun mapValue!32881 () ValueCell!9855)

(assert (=> mapNonEmpty!32881 (= (arr!27589 (_values!5750 thiss!1141)) (store mapRest!32881 mapKey!32881 mapValue!32881))))

(declare-fun e!533017 () Bool)

(declare-fun tp_is_empty!20673 () Bool)

(declare-fun e!533020 () Bool)

(declare-fun array_inv!21368 (array!57364) Bool)

(declare-fun array_inv!21369 (array!57362) Bool)

(assert (=> b!947026 (= e!533017 (and tp!63052 tp_is_empty!20673 (array_inv!21368 (_keys!10630 thiss!1141)) (array_inv!21369 (_values!5750 thiss!1141)) e!533020))))

(declare-fun b!947027 () Bool)

(assert (=> b!947027 (= e!533023 tp_is_empty!20673)))

(declare-fun b!947028 () Bool)

(declare-fun e!533018 () Bool)

(declare-fun e!533022 () Bool)

(assert (=> b!947028 (= e!533018 e!533022)))

(declare-fun res!635720 () Bool)

(assert (=> b!947028 (=> (not res!635720) (not e!533022))))

(declare-datatypes ((SeekEntryResult!9103 0))(
  ( (MissingZero!9103 (index!38782 (_ BitVec 32))) (Found!9103 (index!38783 (_ BitVec 32))) (Intermediate!9103 (undefined!9915 Bool) (index!38784 (_ BitVec 32)) (x!81464 (_ BitVec 32))) (Undefined!9103) (MissingVacant!9103 (index!38785 (_ BitVec 32))) )
))
(declare-fun lt!426454 () SeekEntryResult!9103)

(get-info :version)

(assert (=> b!947028 (= res!635720 ((_ is Found!9103) lt!426454))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57364 (_ BitVec 32)) SeekEntryResult!9103)

(assert (=> b!947028 (= lt!426454 (seekEntry!0 key!756 (_keys!10630 thiss!1141) (mask!27450 thiss!1141)))))

(declare-fun b!947029 () Bool)

(declare-fun e!533021 () Bool)

(assert (=> b!947029 (= e!533020 (and e!533021 mapRes!32881))))

(declare-fun condMapEmpty!32881 () Bool)

(declare-fun mapDefault!32881 () ValueCell!9855)

(assert (=> b!947029 (= condMapEmpty!32881 (= (arr!27589 (_values!5750 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9855)) mapDefault!32881)))))

(declare-fun mapIsEmpty!32881 () Bool)

(assert (=> mapIsEmpty!32881 mapRes!32881))

(declare-fun b!947030 () Bool)

(declare-fun res!635716 () Bool)

(declare-fun e!533016 () Bool)

(assert (=> b!947030 (=> res!635716 e!533016)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57364 (_ BitVec 32)) Bool)

(assert (=> b!947030 (= res!635716 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10630 thiss!1141) (mask!27450 thiss!1141))))))

(declare-fun b!947031 () Bool)

(assert (=> b!947031 (= e!533021 tp_is_empty!20673)))

(declare-fun b!947033 () Bool)

(declare-datatypes ((List!19432 0))(
  ( (Nil!19429) (Cons!19428 (h!20584 (_ BitVec 64)) (t!27761 List!19432)) )
))
(declare-fun arrayNoDuplicates!0 (array!57364 (_ BitVec 32) List!19432) Bool)

(assert (=> b!947033 (= e!533016 (arrayNoDuplicates!0 (_keys!10630 thiss!1141) #b00000000000000000000000000000000 Nil!19429))))

(declare-fun b!947034 () Bool)

(assert (=> b!947034 (= e!533022 (not e!533016))))

(declare-fun res!635718 () Bool)

(assert (=> b!947034 (=> res!635718 e!533016)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!947034 (= res!635718 (not (validMask!0 (mask!27450 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!57364 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!947034 (arrayContainsKey!0 (_keys!10630 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31917 0))(
  ( (Unit!31918) )
))
(declare-fun lt!426455 () Unit!31917)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57364 (_ BitVec 64) (_ BitVec 32)) Unit!31917)

(assert (=> b!947034 (= lt!426455 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10630 thiss!1141) key!756 (index!38783 lt!426454)))))

(declare-fun b!947035 () Bool)

(declare-fun res!635717 () Bool)

(assert (=> b!947035 (=> res!635717 e!533016)))

(assert (=> b!947035 (= res!635717 (or (not (= (size!28063 (_values!5750 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27450 thiss!1141)))) (not (= (size!28064 (_keys!10630 thiss!1141)) (size!28063 (_values!5750 thiss!1141)))) (bvslt (mask!27450 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5459 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5459 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun res!635715 () Bool)

(assert (=> start!80820 (=> (not res!635715) (not e!533018))))

(declare-fun valid!1830 (LongMapFixedSize!4860) Bool)

(assert (=> start!80820 (= res!635715 (valid!1830 thiss!1141))))

(assert (=> start!80820 e!533018))

(assert (=> start!80820 e!533017))

(assert (=> start!80820 true))

(declare-fun b!947032 () Bool)

(declare-fun res!635719 () Bool)

(assert (=> b!947032 (=> (not res!635719) (not e!533018))))

(assert (=> b!947032 (= res!635719 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!80820 res!635715) b!947032))

(assert (= (and b!947032 res!635719) b!947028))

(assert (= (and b!947028 res!635720) b!947034))

(assert (= (and b!947034 (not res!635718)) b!947035))

(assert (= (and b!947035 (not res!635717)) b!947030))

(assert (= (and b!947030 (not res!635716)) b!947033))

(assert (= (and b!947029 condMapEmpty!32881) mapIsEmpty!32881))

(assert (= (and b!947029 (not condMapEmpty!32881)) mapNonEmpty!32881))

(assert (= (and mapNonEmpty!32881 ((_ is ValueCellFull!9855) mapValue!32881)) b!947027))

(assert (= (and b!947029 ((_ is ValueCellFull!9855) mapDefault!32881)) b!947031))

(assert (= b!947026 b!947029))

(assert (= start!80820 b!947026))

(declare-fun m!880191 () Bool)

(assert (=> b!947028 m!880191))

(declare-fun m!880193 () Bool)

(assert (=> start!80820 m!880193))

(declare-fun m!880195 () Bool)

(assert (=> b!947034 m!880195))

(declare-fun m!880197 () Bool)

(assert (=> b!947034 m!880197))

(declare-fun m!880199 () Bool)

(assert (=> b!947034 m!880199))

(declare-fun m!880201 () Bool)

(assert (=> b!947030 m!880201))

(declare-fun m!880203 () Bool)

(assert (=> b!947033 m!880203))

(declare-fun m!880205 () Bool)

(assert (=> mapNonEmpty!32881 m!880205))

(declare-fun m!880207 () Bool)

(assert (=> b!947026 m!880207))

(declare-fun m!880209 () Bool)

(assert (=> b!947026 m!880209))

(check-sat (not b!947033) (not b!947028) b_and!29605 (not start!80820) (not b!947026) (not mapNonEmpty!32881) tp_is_empty!20673 (not b_next!18165) (not b!947030) (not b!947034))
(check-sat b_and!29605 (not b_next!18165))
(get-model)

(declare-fun b!947076 () Bool)

(declare-fun e!533058 () Bool)

(declare-fun e!533057 () Bool)

(assert (=> b!947076 (= e!533058 e!533057)))

(declare-fun c!98593 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!947076 (= c!98593 (validKeyInArray!0 (select (arr!27590 (_keys!10630 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!947077 () Bool)

(declare-fun e!533056 () Bool)

(assert (=> b!947077 (= e!533056 e!533058)))

(declare-fun res!635745 () Bool)

(assert (=> b!947077 (=> (not res!635745) (not e!533058))))

(declare-fun e!533059 () Bool)

(assert (=> b!947077 (= res!635745 (not e!533059))))

(declare-fun res!635747 () Bool)

(assert (=> b!947077 (=> (not res!635747) (not e!533059))))

(assert (=> b!947077 (= res!635747 (validKeyInArray!0 (select (arr!27590 (_keys!10630 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!114571 () Bool)

(declare-fun res!635746 () Bool)

(assert (=> d!114571 (=> res!635746 e!533056)))

(assert (=> d!114571 (= res!635746 (bvsge #b00000000000000000000000000000000 (size!28064 (_keys!10630 thiss!1141))))))

(assert (=> d!114571 (= (arrayNoDuplicates!0 (_keys!10630 thiss!1141) #b00000000000000000000000000000000 Nil!19429) e!533056)))

(declare-fun b!947078 () Bool)

(declare-fun call!41109 () Bool)

(assert (=> b!947078 (= e!533057 call!41109)))

(declare-fun bm!41106 () Bool)

(assert (=> bm!41106 (= call!41109 (arrayNoDuplicates!0 (_keys!10630 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98593 (Cons!19428 (select (arr!27590 (_keys!10630 thiss!1141)) #b00000000000000000000000000000000) Nil!19429) Nil!19429)))))

(declare-fun b!947079 () Bool)

(assert (=> b!947079 (= e!533057 call!41109)))

(declare-fun b!947080 () Bool)

(declare-fun contains!5205 (List!19432 (_ BitVec 64)) Bool)

(assert (=> b!947080 (= e!533059 (contains!5205 Nil!19429 (select (arr!27590 (_keys!10630 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114571 (not res!635746)) b!947077))

(assert (= (and b!947077 res!635747) b!947080))

(assert (= (and b!947077 res!635745) b!947076))

(assert (= (and b!947076 c!98593) b!947079))

(assert (= (and b!947076 (not c!98593)) b!947078))

(assert (= (or b!947079 b!947078) bm!41106))

(declare-fun m!880231 () Bool)

(assert (=> b!947076 m!880231))

(assert (=> b!947076 m!880231))

(declare-fun m!880233 () Bool)

(assert (=> b!947076 m!880233))

(assert (=> b!947077 m!880231))

(assert (=> b!947077 m!880231))

(assert (=> b!947077 m!880233))

(assert (=> bm!41106 m!880231))

(declare-fun m!880235 () Bool)

(assert (=> bm!41106 m!880235))

(assert (=> b!947080 m!880231))

(assert (=> b!947080 m!880231))

(declare-fun m!880237 () Bool)

(assert (=> b!947080 m!880237))

(assert (=> b!947033 d!114571))

(declare-fun d!114573 () Bool)

(declare-fun res!635754 () Bool)

(declare-fun e!533062 () Bool)

(assert (=> d!114573 (=> (not res!635754) (not e!533062))))

(declare-fun simpleValid!361 (LongMapFixedSize!4860) Bool)

(assert (=> d!114573 (= res!635754 (simpleValid!361 thiss!1141))))

(assert (=> d!114573 (= (valid!1830 thiss!1141) e!533062)))

(declare-fun b!947087 () Bool)

(declare-fun res!635755 () Bool)

(assert (=> b!947087 (=> (not res!635755) (not e!533062))))

(declare-fun arrayCountValidKeys!0 (array!57364 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!947087 (= res!635755 (= (arrayCountValidKeys!0 (_keys!10630 thiss!1141) #b00000000000000000000000000000000 (size!28064 (_keys!10630 thiss!1141))) (_size!2485 thiss!1141)))))

(declare-fun b!947088 () Bool)

(declare-fun res!635756 () Bool)

(assert (=> b!947088 (=> (not res!635756) (not e!533062))))

(assert (=> b!947088 (= res!635756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10630 thiss!1141) (mask!27450 thiss!1141)))))

(declare-fun b!947089 () Bool)

(assert (=> b!947089 (= e!533062 (arrayNoDuplicates!0 (_keys!10630 thiss!1141) #b00000000000000000000000000000000 Nil!19429))))

(assert (= (and d!114573 res!635754) b!947087))

(assert (= (and b!947087 res!635755) b!947088))

(assert (= (and b!947088 res!635756) b!947089))

(declare-fun m!880239 () Bool)

(assert (=> d!114573 m!880239))

(declare-fun m!880241 () Bool)

(assert (=> b!947087 m!880241))

(assert (=> b!947088 m!880201))

(assert (=> b!947089 m!880203))

(assert (=> start!80820 d!114573))

(declare-fun b!947102 () Bool)

(declare-fun e!533069 () SeekEntryResult!9103)

(declare-fun e!533070 () SeekEntryResult!9103)

(assert (=> b!947102 (= e!533069 e!533070)))

(declare-fun lt!426473 () (_ BitVec 64))

(declare-fun lt!426470 () SeekEntryResult!9103)

(assert (=> b!947102 (= lt!426473 (select (arr!27590 (_keys!10630 thiss!1141)) (index!38784 lt!426470)))))

(declare-fun c!98602 () Bool)

(assert (=> b!947102 (= c!98602 (= lt!426473 key!756))))

(declare-fun b!947103 () Bool)

(assert (=> b!947103 (= e!533070 (Found!9103 (index!38784 lt!426470)))))

(declare-fun b!947104 () Bool)

(assert (=> b!947104 (= e!533069 Undefined!9103)))

(declare-fun b!947105 () Bool)

(declare-fun e!533071 () SeekEntryResult!9103)

(declare-fun lt!426471 () SeekEntryResult!9103)

(assert (=> b!947105 (= e!533071 (ite ((_ is MissingVacant!9103) lt!426471) (MissingZero!9103 (index!38785 lt!426471)) lt!426471))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57364 (_ BitVec 32)) SeekEntryResult!9103)

(assert (=> b!947105 (= lt!426471 (seekKeyOrZeroReturnVacant!0 (x!81464 lt!426470) (index!38784 lt!426470) (index!38784 lt!426470) key!756 (_keys!10630 thiss!1141) (mask!27450 thiss!1141)))))

(declare-fun b!947106 () Bool)

(assert (=> b!947106 (= e!533071 (MissingZero!9103 (index!38784 lt!426470)))))

(declare-fun b!947107 () Bool)

(declare-fun c!98601 () Bool)

(assert (=> b!947107 (= c!98601 (= lt!426473 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!947107 (= e!533070 e!533071)))

(declare-fun d!114575 () Bool)

(declare-fun lt!426472 () SeekEntryResult!9103)

(assert (=> d!114575 (and (or ((_ is MissingVacant!9103) lt!426472) (not ((_ is Found!9103) lt!426472)) (and (bvsge (index!38783 lt!426472) #b00000000000000000000000000000000) (bvslt (index!38783 lt!426472) (size!28064 (_keys!10630 thiss!1141))))) (not ((_ is MissingVacant!9103) lt!426472)) (or (not ((_ is Found!9103) lt!426472)) (= (select (arr!27590 (_keys!10630 thiss!1141)) (index!38783 lt!426472)) key!756)))))

(assert (=> d!114575 (= lt!426472 e!533069)))

(declare-fun c!98600 () Bool)

(assert (=> d!114575 (= c!98600 (and ((_ is Intermediate!9103) lt!426470) (undefined!9915 lt!426470)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57364 (_ BitVec 32)) SeekEntryResult!9103)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114575 (= lt!426470 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27450 thiss!1141)) key!756 (_keys!10630 thiss!1141) (mask!27450 thiss!1141)))))

(assert (=> d!114575 (validMask!0 (mask!27450 thiss!1141))))

(assert (=> d!114575 (= (seekEntry!0 key!756 (_keys!10630 thiss!1141) (mask!27450 thiss!1141)) lt!426472)))

(assert (= (and d!114575 c!98600) b!947104))

(assert (= (and d!114575 (not c!98600)) b!947102))

(assert (= (and b!947102 c!98602) b!947103))

(assert (= (and b!947102 (not c!98602)) b!947107))

(assert (= (and b!947107 c!98601) b!947106))

(assert (= (and b!947107 (not c!98601)) b!947105))

(declare-fun m!880243 () Bool)

(assert (=> b!947102 m!880243))

(declare-fun m!880245 () Bool)

(assert (=> b!947105 m!880245))

(declare-fun m!880247 () Bool)

(assert (=> d!114575 m!880247))

(declare-fun m!880249 () Bool)

(assert (=> d!114575 m!880249))

(assert (=> d!114575 m!880249))

(declare-fun m!880251 () Bool)

(assert (=> d!114575 m!880251))

(assert (=> d!114575 m!880195))

(assert (=> b!947028 d!114575))

(declare-fun b!947116 () Bool)

(declare-fun e!533078 () Bool)

(declare-fun e!533079 () Bool)

(assert (=> b!947116 (= e!533078 e!533079)))

(declare-fun c!98605 () Bool)

(assert (=> b!947116 (= c!98605 (validKeyInArray!0 (select (arr!27590 (_keys!10630 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!114577 () Bool)

(declare-fun res!635762 () Bool)

(assert (=> d!114577 (=> res!635762 e!533078)))

(assert (=> d!114577 (= res!635762 (bvsge #b00000000000000000000000000000000 (size!28064 (_keys!10630 thiss!1141))))))

(assert (=> d!114577 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10630 thiss!1141) (mask!27450 thiss!1141)) e!533078)))

(declare-fun b!947117 () Bool)

(declare-fun e!533080 () Bool)

(assert (=> b!947117 (= e!533079 e!533080)))

(declare-fun lt!426482 () (_ BitVec 64))

(assert (=> b!947117 (= lt!426482 (select (arr!27590 (_keys!10630 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!426481 () Unit!31917)

(assert (=> b!947117 (= lt!426481 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10630 thiss!1141) lt!426482 #b00000000000000000000000000000000))))

(assert (=> b!947117 (arrayContainsKey!0 (_keys!10630 thiss!1141) lt!426482 #b00000000000000000000000000000000)))

(declare-fun lt!426480 () Unit!31917)

(assert (=> b!947117 (= lt!426480 lt!426481)))

(declare-fun res!635761 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57364 (_ BitVec 32)) SeekEntryResult!9103)

(assert (=> b!947117 (= res!635761 (= (seekEntryOrOpen!0 (select (arr!27590 (_keys!10630 thiss!1141)) #b00000000000000000000000000000000) (_keys!10630 thiss!1141) (mask!27450 thiss!1141)) (Found!9103 #b00000000000000000000000000000000)))))

(assert (=> b!947117 (=> (not res!635761) (not e!533080))))

(declare-fun bm!41109 () Bool)

(declare-fun call!41112 () Bool)

(assert (=> bm!41109 (= call!41112 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10630 thiss!1141) (mask!27450 thiss!1141)))))

(declare-fun b!947118 () Bool)

(assert (=> b!947118 (= e!533080 call!41112)))

(declare-fun b!947119 () Bool)

(assert (=> b!947119 (= e!533079 call!41112)))

(assert (= (and d!114577 (not res!635762)) b!947116))

(assert (= (and b!947116 c!98605) b!947117))

(assert (= (and b!947116 (not c!98605)) b!947119))

(assert (= (and b!947117 res!635761) b!947118))

(assert (= (or b!947118 b!947119) bm!41109))

(assert (=> b!947116 m!880231))

(assert (=> b!947116 m!880231))

(assert (=> b!947116 m!880233))

(assert (=> b!947117 m!880231))

(declare-fun m!880253 () Bool)

(assert (=> b!947117 m!880253))

(declare-fun m!880255 () Bool)

(assert (=> b!947117 m!880255))

(assert (=> b!947117 m!880231))

(declare-fun m!880257 () Bool)

(assert (=> b!947117 m!880257))

(declare-fun m!880259 () Bool)

(assert (=> bm!41109 m!880259))

(assert (=> b!947030 d!114577))

(declare-fun d!114579 () Bool)

(assert (=> d!114579 (= (array_inv!21368 (_keys!10630 thiss!1141)) (bvsge (size!28064 (_keys!10630 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!947026 d!114579))

(declare-fun d!114581 () Bool)

(assert (=> d!114581 (= (array_inv!21369 (_values!5750 thiss!1141)) (bvsge (size!28063 (_values!5750 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!947026 d!114581))

(declare-fun d!114583 () Bool)

(assert (=> d!114583 (= (validMask!0 (mask!27450 thiss!1141)) (and (or (= (mask!27450 thiss!1141) #b00000000000000000000000000000111) (= (mask!27450 thiss!1141) #b00000000000000000000000000001111) (= (mask!27450 thiss!1141) #b00000000000000000000000000011111) (= (mask!27450 thiss!1141) #b00000000000000000000000000111111) (= (mask!27450 thiss!1141) #b00000000000000000000000001111111) (= (mask!27450 thiss!1141) #b00000000000000000000000011111111) (= (mask!27450 thiss!1141) #b00000000000000000000000111111111) (= (mask!27450 thiss!1141) #b00000000000000000000001111111111) (= (mask!27450 thiss!1141) #b00000000000000000000011111111111) (= (mask!27450 thiss!1141) #b00000000000000000000111111111111) (= (mask!27450 thiss!1141) #b00000000000000000001111111111111) (= (mask!27450 thiss!1141) #b00000000000000000011111111111111) (= (mask!27450 thiss!1141) #b00000000000000000111111111111111) (= (mask!27450 thiss!1141) #b00000000000000001111111111111111) (= (mask!27450 thiss!1141) #b00000000000000011111111111111111) (= (mask!27450 thiss!1141) #b00000000000000111111111111111111) (= (mask!27450 thiss!1141) #b00000000000001111111111111111111) (= (mask!27450 thiss!1141) #b00000000000011111111111111111111) (= (mask!27450 thiss!1141) #b00000000000111111111111111111111) (= (mask!27450 thiss!1141) #b00000000001111111111111111111111) (= (mask!27450 thiss!1141) #b00000000011111111111111111111111) (= (mask!27450 thiss!1141) #b00000000111111111111111111111111) (= (mask!27450 thiss!1141) #b00000001111111111111111111111111) (= (mask!27450 thiss!1141) #b00000011111111111111111111111111) (= (mask!27450 thiss!1141) #b00000111111111111111111111111111) (= (mask!27450 thiss!1141) #b00001111111111111111111111111111) (= (mask!27450 thiss!1141) #b00011111111111111111111111111111) (= (mask!27450 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27450 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!947034 d!114583))

(declare-fun d!114585 () Bool)

(declare-fun res!635767 () Bool)

(declare-fun e!533085 () Bool)

(assert (=> d!114585 (=> res!635767 e!533085)))

(assert (=> d!114585 (= res!635767 (= (select (arr!27590 (_keys!10630 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!114585 (= (arrayContainsKey!0 (_keys!10630 thiss!1141) key!756 #b00000000000000000000000000000000) e!533085)))

(declare-fun b!947124 () Bool)

(declare-fun e!533086 () Bool)

(assert (=> b!947124 (= e!533085 e!533086)))

(declare-fun res!635768 () Bool)

(assert (=> b!947124 (=> (not res!635768) (not e!533086))))

(assert (=> b!947124 (= res!635768 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28064 (_keys!10630 thiss!1141))))))

(declare-fun b!947125 () Bool)

(assert (=> b!947125 (= e!533086 (arrayContainsKey!0 (_keys!10630 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!114585 (not res!635767)) b!947124))

(assert (= (and b!947124 res!635768) b!947125))

(assert (=> d!114585 m!880231))

(declare-fun m!880261 () Bool)

(assert (=> b!947125 m!880261))

(assert (=> b!947034 d!114585))

(declare-fun d!114587 () Bool)

(assert (=> d!114587 (arrayContainsKey!0 (_keys!10630 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!426485 () Unit!31917)

(declare-fun choose!13 (array!57364 (_ BitVec 64) (_ BitVec 32)) Unit!31917)

(assert (=> d!114587 (= lt!426485 (choose!13 (_keys!10630 thiss!1141) key!756 (index!38783 lt!426454)))))

(assert (=> d!114587 (bvsge (index!38783 lt!426454) #b00000000000000000000000000000000)))

(assert (=> d!114587 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10630 thiss!1141) key!756 (index!38783 lt!426454)) lt!426485)))

(declare-fun bs!26616 () Bool)

(assert (= bs!26616 d!114587))

(assert (=> bs!26616 m!880197))

(declare-fun m!880263 () Bool)

(assert (=> bs!26616 m!880263))

(assert (=> b!947034 d!114587))

(declare-fun mapIsEmpty!32887 () Bool)

(declare-fun mapRes!32887 () Bool)

(assert (=> mapIsEmpty!32887 mapRes!32887))

(declare-fun b!947132 () Bool)

(declare-fun e!533091 () Bool)

(assert (=> b!947132 (= e!533091 tp_is_empty!20673)))

(declare-fun mapNonEmpty!32887 () Bool)

(declare-fun tp!63061 () Bool)

(assert (=> mapNonEmpty!32887 (= mapRes!32887 (and tp!63061 e!533091))))

(declare-fun mapValue!32887 () ValueCell!9855)

(declare-fun mapRest!32887 () (Array (_ BitVec 32) ValueCell!9855))

(declare-fun mapKey!32887 () (_ BitVec 32))

(assert (=> mapNonEmpty!32887 (= mapRest!32881 (store mapRest!32887 mapKey!32887 mapValue!32887))))

(declare-fun b!947133 () Bool)

(declare-fun e!533092 () Bool)

(assert (=> b!947133 (= e!533092 tp_is_empty!20673)))

(declare-fun condMapEmpty!32887 () Bool)

(declare-fun mapDefault!32887 () ValueCell!9855)

(assert (=> mapNonEmpty!32881 (= condMapEmpty!32887 (= mapRest!32881 ((as const (Array (_ BitVec 32) ValueCell!9855)) mapDefault!32887)))))

(assert (=> mapNonEmpty!32881 (= tp!63051 (and e!533092 mapRes!32887))))

(assert (= (and mapNonEmpty!32881 condMapEmpty!32887) mapIsEmpty!32887))

(assert (= (and mapNonEmpty!32881 (not condMapEmpty!32887)) mapNonEmpty!32887))

(assert (= (and mapNonEmpty!32887 ((_ is ValueCellFull!9855) mapValue!32887)) b!947132))

(assert (= (and mapNonEmpty!32881 ((_ is ValueCellFull!9855) mapDefault!32887)) b!947133))

(declare-fun m!880265 () Bool)

(assert (=> mapNonEmpty!32887 m!880265))

(check-sat (not b!947087) (not b!947125) (not d!114587) b_and!29605 (not bm!41109) (not d!114573) (not b!947105) (not d!114575) (not b!947088) (not b!947117) (not b!947116) (not b!947077) (not b!947076) (not bm!41106) tp_is_empty!20673 (not mapNonEmpty!32887) (not b!947089) (not b_next!18165) (not b!947080))
(check-sat b_and!29605 (not b_next!18165))
