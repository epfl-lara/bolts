; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80090 () Bool)

(assert start!80090)

(declare-fun b!941113 () Bool)

(declare-fun b_free!17907 () Bool)

(declare-fun b_next!17907 () Bool)

(assert (=> b!941113 (= b_free!17907 (not b_next!17907))))

(declare-fun tp!62200 () Bool)

(declare-fun b_and!29337 () Bool)

(assert (=> b!941113 (= tp!62200 b_and!29337)))

(declare-fun b!941107 () Bool)

(declare-fun e!529103 () Bool)

(declare-fun tp_is_empty!20415 () Bool)

(assert (=> b!941107 (= e!529103 tp_is_empty!20415)))

(declare-fun res!632819 () Bool)

(declare-fun e!529105 () Bool)

(assert (=> start!80090 (=> (not res!632819) (not e!529105))))

(declare-datatypes ((V!32185 0))(
  ( (V!32186 (val!10258 Int)) )
))
(declare-datatypes ((ValueCell!9726 0))(
  ( (ValueCellFull!9726 (v!12789 V!32185)) (EmptyCell!9726) )
))
(declare-datatypes ((array!56802 0))(
  ( (array!56803 (arr!27331 (Array (_ BitVec 32) ValueCell!9726)) (size!27793 (_ BitVec 32))) )
))
(declare-datatypes ((array!56804 0))(
  ( (array!56805 (arr!27332 (Array (_ BitVec 32) (_ BitVec 64))) (size!27794 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4602 0))(
  ( (LongMapFixedSize!4603 (defaultEntry!5592 Int) (mask!27146 (_ BitVec 32)) (extraKeys!5324 (_ BitVec 32)) (zeroValue!5428 V!32185) (minValue!5428 V!32185) (_size!2356 (_ BitVec 32)) (_keys!10439 array!56804) (_values!5615 array!56802) (_vacant!2356 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4602)

(declare-fun valid!1744 (LongMapFixedSize!4602) Bool)

(assert (=> start!80090 (= res!632819 (valid!1744 thiss!1141))))

(assert (=> start!80090 e!529105))

(declare-fun e!529102 () Bool)

(assert (=> start!80090 e!529102))

(assert (=> start!80090 true))

(declare-fun b!941108 () Bool)

(assert (=> b!941108 (= e!529105 (not (= (size!27793 (_values!5615 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27146 thiss!1141)))))))

(declare-fun b!941109 () Bool)

(declare-fun res!632817 () Bool)

(assert (=> b!941109 (=> (not res!632817) (not e!529105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!941109 (= res!632817 (validMask!0 (mask!27146 thiss!1141)))))

(declare-fun b!941110 () Bool)

(declare-fun e!529107 () Bool)

(declare-fun e!529106 () Bool)

(declare-fun mapRes!32416 () Bool)

(assert (=> b!941110 (= e!529107 (and e!529106 mapRes!32416))))

(declare-fun condMapEmpty!32416 () Bool)

(declare-fun mapDefault!32416 () ValueCell!9726)

(assert (=> b!941110 (= condMapEmpty!32416 (= (arr!27331 (_values!5615 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9726)) mapDefault!32416)))))

(declare-fun b!941111 () Bool)

(declare-fun res!632816 () Bool)

(assert (=> b!941111 (=> (not res!632816) (not e!529105))))

(declare-fun key!756 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9012 0))(
  ( (MissingZero!9012 (index!38418 (_ BitVec 32))) (Found!9012 (index!38419 (_ BitVec 32))) (Intermediate!9012 (undefined!9824 Bool) (index!38420 (_ BitVec 32)) (x!80746 (_ BitVec 32))) (Undefined!9012) (MissingVacant!9012 (index!38421 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56804 (_ BitVec 32)) SeekEntryResult!9012)

(assert (=> b!941111 (= res!632816 (not ((_ is Found!9012) (seekEntry!0 key!756 (_keys!10439 thiss!1141) (mask!27146 thiss!1141)))))))

(declare-fun mapIsEmpty!32416 () Bool)

(assert (=> mapIsEmpty!32416 mapRes!32416))

(declare-fun mapNonEmpty!32416 () Bool)

(declare-fun tp!62199 () Bool)

(assert (=> mapNonEmpty!32416 (= mapRes!32416 (and tp!62199 e!529103))))

(declare-fun mapRest!32416 () (Array (_ BitVec 32) ValueCell!9726))

(declare-fun mapKey!32416 () (_ BitVec 32))

(declare-fun mapValue!32416 () ValueCell!9726)

(assert (=> mapNonEmpty!32416 (= (arr!27331 (_values!5615 thiss!1141)) (store mapRest!32416 mapKey!32416 mapValue!32416))))

(declare-fun b!941112 () Bool)

(declare-fun res!632818 () Bool)

(assert (=> b!941112 (=> (not res!632818) (not e!529105))))

(assert (=> b!941112 (= res!632818 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun array_inv!21194 (array!56804) Bool)

(declare-fun array_inv!21195 (array!56802) Bool)

(assert (=> b!941113 (= e!529102 (and tp!62200 tp_is_empty!20415 (array_inv!21194 (_keys!10439 thiss!1141)) (array_inv!21195 (_values!5615 thiss!1141)) e!529107))))

(declare-fun b!941114 () Bool)

(assert (=> b!941114 (= e!529106 tp_is_empty!20415)))

(assert (= (and start!80090 res!632819) b!941112))

(assert (= (and b!941112 res!632818) b!941111))

(assert (= (and b!941111 res!632816) b!941109))

(assert (= (and b!941109 res!632817) b!941108))

(assert (= (and b!941110 condMapEmpty!32416) mapIsEmpty!32416))

(assert (= (and b!941110 (not condMapEmpty!32416)) mapNonEmpty!32416))

(assert (= (and mapNonEmpty!32416 ((_ is ValueCellFull!9726) mapValue!32416)) b!941107))

(assert (= (and b!941110 ((_ is ValueCellFull!9726) mapDefault!32416)) b!941114))

(assert (= b!941113 b!941110))

(assert (= start!80090 b!941113))

(declare-fun m!876403 () Bool)

(assert (=> start!80090 m!876403))

(declare-fun m!876405 () Bool)

(assert (=> b!941111 m!876405))

(declare-fun m!876407 () Bool)

(assert (=> b!941113 m!876407))

(declare-fun m!876409 () Bool)

(assert (=> b!941113 m!876409))

(declare-fun m!876411 () Bool)

(assert (=> b!941109 m!876411))

(declare-fun m!876413 () Bool)

(assert (=> mapNonEmpty!32416 m!876413))

(check-sat (not b!941111) (not b_next!17907) tp_is_empty!20415 (not b!941109) b_and!29337 (not mapNonEmpty!32416) (not start!80090) (not b!941113))
(check-sat b_and!29337 (not b_next!17907))
(get-model)

(declare-fun d!113965 () Bool)

(assert (=> d!113965 (= (validMask!0 (mask!27146 thiss!1141)) (and (or (= (mask!27146 thiss!1141) #b00000000000000000000000000000111) (= (mask!27146 thiss!1141) #b00000000000000000000000000001111) (= (mask!27146 thiss!1141) #b00000000000000000000000000011111) (= (mask!27146 thiss!1141) #b00000000000000000000000000111111) (= (mask!27146 thiss!1141) #b00000000000000000000000001111111) (= (mask!27146 thiss!1141) #b00000000000000000000000011111111) (= (mask!27146 thiss!1141) #b00000000000000000000000111111111) (= (mask!27146 thiss!1141) #b00000000000000000000001111111111) (= (mask!27146 thiss!1141) #b00000000000000000000011111111111) (= (mask!27146 thiss!1141) #b00000000000000000000111111111111) (= (mask!27146 thiss!1141) #b00000000000000000001111111111111) (= (mask!27146 thiss!1141) #b00000000000000000011111111111111) (= (mask!27146 thiss!1141) #b00000000000000000111111111111111) (= (mask!27146 thiss!1141) #b00000000000000001111111111111111) (= (mask!27146 thiss!1141) #b00000000000000011111111111111111) (= (mask!27146 thiss!1141) #b00000000000000111111111111111111) (= (mask!27146 thiss!1141) #b00000000000001111111111111111111) (= (mask!27146 thiss!1141) #b00000000000011111111111111111111) (= (mask!27146 thiss!1141) #b00000000000111111111111111111111) (= (mask!27146 thiss!1141) #b00000000001111111111111111111111) (= (mask!27146 thiss!1141) #b00000000011111111111111111111111) (= (mask!27146 thiss!1141) #b00000000111111111111111111111111) (= (mask!27146 thiss!1141) #b00000001111111111111111111111111) (= (mask!27146 thiss!1141) #b00000011111111111111111111111111) (= (mask!27146 thiss!1141) #b00000111111111111111111111111111) (= (mask!27146 thiss!1141) #b00001111111111111111111111111111) (= (mask!27146 thiss!1141) #b00011111111111111111111111111111) (= (mask!27146 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27146 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!941109 d!113965))

(declare-fun d!113967 () Bool)

(assert (=> d!113967 (= (array_inv!21194 (_keys!10439 thiss!1141)) (bvsge (size!27794 (_keys!10439 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!941113 d!113967))

(declare-fun d!113969 () Bool)

(assert (=> d!113969 (= (array_inv!21195 (_values!5615 thiss!1141)) (bvsge (size!27793 (_values!5615 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!941113 d!113969))

(declare-fun d!113971 () Bool)

(declare-fun res!632838 () Bool)

(declare-fun e!529128 () Bool)

(assert (=> d!113971 (=> (not res!632838) (not e!529128))))

(declare-fun simpleValid!339 (LongMapFixedSize!4602) Bool)

(assert (=> d!113971 (= res!632838 (simpleValid!339 thiss!1141))))

(assert (=> d!113971 (= (valid!1744 thiss!1141) e!529128)))

(declare-fun b!941145 () Bool)

(declare-fun res!632839 () Bool)

(assert (=> b!941145 (=> (not res!632839) (not e!529128))))

(declare-fun arrayCountValidKeys!0 (array!56804 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!941145 (= res!632839 (= (arrayCountValidKeys!0 (_keys!10439 thiss!1141) #b00000000000000000000000000000000 (size!27794 (_keys!10439 thiss!1141))) (_size!2356 thiss!1141)))))

(declare-fun b!941146 () Bool)

(declare-fun res!632840 () Bool)

(assert (=> b!941146 (=> (not res!632840) (not e!529128))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56804 (_ BitVec 32)) Bool)

(assert (=> b!941146 (= res!632840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10439 thiss!1141) (mask!27146 thiss!1141)))))

(declare-fun b!941147 () Bool)

(declare-datatypes ((List!19340 0))(
  ( (Nil!19337) (Cons!19336 (h!20482 (_ BitVec 64)) (t!27663 List!19340)) )
))
(declare-fun arrayNoDuplicates!0 (array!56804 (_ BitVec 32) List!19340) Bool)

(assert (=> b!941147 (= e!529128 (arrayNoDuplicates!0 (_keys!10439 thiss!1141) #b00000000000000000000000000000000 Nil!19337))))

(assert (= (and d!113971 res!632838) b!941145))

(assert (= (and b!941145 res!632839) b!941146))

(assert (= (and b!941146 res!632840) b!941147))

(declare-fun m!876427 () Bool)

(assert (=> d!113971 m!876427))

(declare-fun m!876429 () Bool)

(assert (=> b!941145 m!876429))

(declare-fun m!876431 () Bool)

(assert (=> b!941146 m!876431))

(declare-fun m!876433 () Bool)

(assert (=> b!941147 m!876433))

(assert (=> start!80090 d!113971))

(declare-fun b!941160 () Bool)

(declare-fun c!97962 () Bool)

(declare-fun lt!424889 () (_ BitVec 64))

(assert (=> b!941160 (= c!97962 (= lt!424889 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!529137 () SeekEntryResult!9012)

(declare-fun e!529136 () SeekEntryResult!9012)

(assert (=> b!941160 (= e!529137 e!529136)))

(declare-fun b!941161 () Bool)

(declare-fun lt!424888 () SeekEntryResult!9012)

(assert (=> b!941161 (= e!529136 (ite ((_ is MissingVacant!9012) lt!424888) (MissingZero!9012 (index!38421 lt!424888)) lt!424888))))

(declare-fun lt!424890 () SeekEntryResult!9012)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56804 (_ BitVec 32)) SeekEntryResult!9012)

(assert (=> b!941161 (= lt!424888 (seekKeyOrZeroReturnVacant!0 (x!80746 lt!424890) (index!38420 lt!424890) (index!38420 lt!424890) key!756 (_keys!10439 thiss!1141) (mask!27146 thiss!1141)))))

(declare-fun b!941163 () Bool)

(assert (=> b!941163 (= e!529137 (Found!9012 (index!38420 lt!424890)))))

(declare-fun d!113973 () Bool)

(declare-fun lt!424887 () SeekEntryResult!9012)

(assert (=> d!113973 (and (or ((_ is MissingVacant!9012) lt!424887) (not ((_ is Found!9012) lt!424887)) (and (bvsge (index!38419 lt!424887) #b00000000000000000000000000000000) (bvslt (index!38419 lt!424887) (size!27794 (_keys!10439 thiss!1141))))) (not ((_ is MissingVacant!9012) lt!424887)) (or (not ((_ is Found!9012) lt!424887)) (= (select (arr!27332 (_keys!10439 thiss!1141)) (index!38419 lt!424887)) key!756)))))

(declare-fun e!529135 () SeekEntryResult!9012)

(assert (=> d!113973 (= lt!424887 e!529135)))

(declare-fun c!97960 () Bool)

(assert (=> d!113973 (= c!97960 (and ((_ is Intermediate!9012) lt!424890) (undefined!9824 lt!424890)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56804 (_ BitVec 32)) SeekEntryResult!9012)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!113973 (= lt!424890 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27146 thiss!1141)) key!756 (_keys!10439 thiss!1141) (mask!27146 thiss!1141)))))

(assert (=> d!113973 (validMask!0 (mask!27146 thiss!1141))))

(assert (=> d!113973 (= (seekEntry!0 key!756 (_keys!10439 thiss!1141) (mask!27146 thiss!1141)) lt!424887)))

(declare-fun b!941162 () Bool)

(assert (=> b!941162 (= e!529135 Undefined!9012)))

(declare-fun b!941164 () Bool)

(assert (=> b!941164 (= e!529135 e!529137)))

(assert (=> b!941164 (= lt!424889 (select (arr!27332 (_keys!10439 thiss!1141)) (index!38420 lt!424890)))))

(declare-fun c!97961 () Bool)

(assert (=> b!941164 (= c!97961 (= lt!424889 key!756))))

(declare-fun b!941165 () Bool)

(assert (=> b!941165 (= e!529136 (MissingZero!9012 (index!38420 lt!424890)))))

(assert (= (and d!113973 c!97960) b!941162))

(assert (= (and d!113973 (not c!97960)) b!941164))

(assert (= (and b!941164 c!97961) b!941163))

(assert (= (and b!941164 (not c!97961)) b!941160))

(assert (= (and b!941160 c!97962) b!941165))

(assert (= (and b!941160 (not c!97962)) b!941161))

(declare-fun m!876435 () Bool)

(assert (=> b!941161 m!876435))

(declare-fun m!876437 () Bool)

(assert (=> d!113973 m!876437))

(declare-fun m!876439 () Bool)

(assert (=> d!113973 m!876439))

(assert (=> d!113973 m!876439))

(declare-fun m!876441 () Bool)

(assert (=> d!113973 m!876441))

(assert (=> d!113973 m!876411))

(declare-fun m!876443 () Bool)

(assert (=> b!941164 m!876443))

(assert (=> b!941111 d!113973))

(declare-fun b!941172 () Bool)

(declare-fun e!529143 () Bool)

(assert (=> b!941172 (= e!529143 tp_is_empty!20415)))

(declare-fun condMapEmpty!32422 () Bool)

(declare-fun mapDefault!32422 () ValueCell!9726)

(assert (=> mapNonEmpty!32416 (= condMapEmpty!32422 (= mapRest!32416 ((as const (Array (_ BitVec 32) ValueCell!9726)) mapDefault!32422)))))

(declare-fun e!529142 () Bool)

(declare-fun mapRes!32422 () Bool)

(assert (=> mapNonEmpty!32416 (= tp!62199 (and e!529142 mapRes!32422))))

(declare-fun b!941173 () Bool)

(assert (=> b!941173 (= e!529142 tp_is_empty!20415)))

(declare-fun mapIsEmpty!32422 () Bool)

(assert (=> mapIsEmpty!32422 mapRes!32422))

(declare-fun mapNonEmpty!32422 () Bool)

(declare-fun tp!62209 () Bool)

(assert (=> mapNonEmpty!32422 (= mapRes!32422 (and tp!62209 e!529143))))

(declare-fun mapValue!32422 () ValueCell!9726)

(declare-fun mapRest!32422 () (Array (_ BitVec 32) ValueCell!9726))

(declare-fun mapKey!32422 () (_ BitVec 32))

(assert (=> mapNonEmpty!32422 (= mapRest!32416 (store mapRest!32422 mapKey!32422 mapValue!32422))))

(assert (= (and mapNonEmpty!32416 condMapEmpty!32422) mapIsEmpty!32422))

(assert (= (and mapNonEmpty!32416 (not condMapEmpty!32422)) mapNonEmpty!32422))

(assert (= (and mapNonEmpty!32422 ((_ is ValueCellFull!9726) mapValue!32422)) b!941172))

(assert (= (and mapNonEmpty!32416 ((_ is ValueCellFull!9726) mapDefault!32422)) b!941173))

(declare-fun m!876445 () Bool)

(assert (=> mapNonEmpty!32422 m!876445))

(check-sat (not b!941147) (not mapNonEmpty!32422) (not b_next!17907) (not d!113973) tp_is_empty!20415 (not b!941161) b_and!29337 (not b!941146) (not b!941145) (not d!113971))
(check-sat b_and!29337 (not b_next!17907))
(get-model)

(declare-fun b!941182 () Bool)

(declare-fun e!529150 () Bool)

(declare-fun call!40917 () Bool)

(assert (=> b!941182 (= e!529150 call!40917)))

(declare-fun b!941183 () Bool)

(declare-fun e!529151 () Bool)

(declare-fun e!529152 () Bool)

(assert (=> b!941183 (= e!529151 e!529152)))

(declare-fun c!97965 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!941183 (= c!97965 (validKeyInArray!0 (select (arr!27332 (_keys!10439 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!113975 () Bool)

(declare-fun res!632846 () Bool)

(assert (=> d!113975 (=> res!632846 e!529151)))

(assert (=> d!113975 (= res!632846 (bvsge #b00000000000000000000000000000000 (size!27794 (_keys!10439 thiss!1141))))))

(assert (=> d!113975 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10439 thiss!1141) (mask!27146 thiss!1141)) e!529151)))

(declare-fun b!941184 () Bool)

(assert (=> b!941184 (= e!529152 call!40917)))

(declare-fun b!941185 () Bool)

(assert (=> b!941185 (= e!529152 e!529150)))

(declare-fun lt!424898 () (_ BitVec 64))

(assert (=> b!941185 (= lt!424898 (select (arr!27332 (_keys!10439 thiss!1141)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!31805 0))(
  ( (Unit!31806) )
))
(declare-fun lt!424897 () Unit!31805)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56804 (_ BitVec 64) (_ BitVec 32)) Unit!31805)

(assert (=> b!941185 (= lt!424897 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10439 thiss!1141) lt!424898 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!56804 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!941185 (arrayContainsKey!0 (_keys!10439 thiss!1141) lt!424898 #b00000000000000000000000000000000)))

(declare-fun lt!424899 () Unit!31805)

(assert (=> b!941185 (= lt!424899 lt!424897)))

(declare-fun res!632845 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!56804 (_ BitVec 32)) SeekEntryResult!9012)

(assert (=> b!941185 (= res!632845 (= (seekEntryOrOpen!0 (select (arr!27332 (_keys!10439 thiss!1141)) #b00000000000000000000000000000000) (_keys!10439 thiss!1141) (mask!27146 thiss!1141)) (Found!9012 #b00000000000000000000000000000000)))))

(assert (=> b!941185 (=> (not res!632845) (not e!529150))))

(declare-fun bm!40914 () Bool)

(assert (=> bm!40914 (= call!40917 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10439 thiss!1141) (mask!27146 thiss!1141)))))

(assert (= (and d!113975 (not res!632846)) b!941183))

(assert (= (and b!941183 c!97965) b!941185))

(assert (= (and b!941183 (not c!97965)) b!941184))

(assert (= (and b!941185 res!632845) b!941182))

(assert (= (or b!941182 b!941184) bm!40914))

(declare-fun m!876447 () Bool)

(assert (=> b!941183 m!876447))

(assert (=> b!941183 m!876447))

(declare-fun m!876449 () Bool)

(assert (=> b!941183 m!876449))

(assert (=> b!941185 m!876447))

(declare-fun m!876451 () Bool)

(assert (=> b!941185 m!876451))

(declare-fun m!876453 () Bool)

(assert (=> b!941185 m!876453))

(assert (=> b!941185 m!876447))

(declare-fun m!876455 () Bool)

(assert (=> b!941185 m!876455))

(declare-fun m!876457 () Bool)

(assert (=> bm!40914 m!876457))

(assert (=> b!941146 d!113975))

(declare-fun b!941204 () Bool)

(declare-fun lt!424904 () SeekEntryResult!9012)

(assert (=> b!941204 (and (bvsge (index!38420 lt!424904) #b00000000000000000000000000000000) (bvslt (index!38420 lt!424904) (size!27794 (_keys!10439 thiss!1141))))))

(declare-fun e!529163 () Bool)

(assert (=> b!941204 (= e!529163 (= (select (arr!27332 (_keys!10439 thiss!1141)) (index!38420 lt!424904)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!113977 () Bool)

(declare-fun e!529165 () Bool)

(assert (=> d!113977 e!529165))

(declare-fun c!97972 () Bool)

(assert (=> d!113977 (= c!97972 (and ((_ is Intermediate!9012) lt!424904) (undefined!9824 lt!424904)))))

(declare-fun e!529164 () SeekEntryResult!9012)

(assert (=> d!113977 (= lt!424904 e!529164)))

(declare-fun c!97974 () Bool)

(assert (=> d!113977 (= c!97974 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!424905 () (_ BitVec 64))

(assert (=> d!113977 (= lt!424905 (select (arr!27332 (_keys!10439 thiss!1141)) (toIndex!0 key!756 (mask!27146 thiss!1141))))))

(assert (=> d!113977 (validMask!0 (mask!27146 thiss!1141))))

(assert (=> d!113977 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27146 thiss!1141)) key!756 (_keys!10439 thiss!1141) (mask!27146 thiss!1141)) lt!424904)))

(declare-fun b!941205 () Bool)

(declare-fun e!529167 () SeekEntryResult!9012)

(assert (=> b!941205 (= e!529164 e!529167)))

(declare-fun c!97973 () Bool)

(assert (=> b!941205 (= c!97973 (or (= lt!424905 key!756) (= (bvadd lt!424905 lt!424905) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!941206 () Bool)

(assert (=> b!941206 (= e!529164 (Intermediate!9012 true (toIndex!0 key!756 (mask!27146 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!941207 () Bool)

(assert (=> b!941207 (= e!529165 (bvsge (x!80746 lt!424904) #b01111111111111111111111111111110))))

(declare-fun b!941208 () Bool)

(declare-fun e!529166 () Bool)

(assert (=> b!941208 (= e!529165 e!529166)))

(declare-fun res!632853 () Bool)

(assert (=> b!941208 (= res!632853 (and ((_ is Intermediate!9012) lt!424904) (not (undefined!9824 lt!424904)) (bvslt (x!80746 lt!424904) #b01111111111111111111111111111110) (bvsge (x!80746 lt!424904) #b00000000000000000000000000000000) (bvsge (x!80746 lt!424904) #b00000000000000000000000000000000)))))

(assert (=> b!941208 (=> (not res!632853) (not e!529166))))

(declare-fun b!941209 () Bool)

(assert (=> b!941209 (and (bvsge (index!38420 lt!424904) #b00000000000000000000000000000000) (bvslt (index!38420 lt!424904) (size!27794 (_keys!10439 thiss!1141))))))

(declare-fun res!632855 () Bool)

(assert (=> b!941209 (= res!632855 (= (select (arr!27332 (_keys!10439 thiss!1141)) (index!38420 lt!424904)) key!756))))

(assert (=> b!941209 (=> res!632855 e!529163)))

(assert (=> b!941209 (= e!529166 e!529163)))

(declare-fun b!941210 () Bool)

(assert (=> b!941210 (= e!529167 (Intermediate!9012 false (toIndex!0 key!756 (mask!27146 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!941211 () Bool)

(assert (=> b!941211 (and (bvsge (index!38420 lt!424904) #b00000000000000000000000000000000) (bvslt (index!38420 lt!424904) (size!27794 (_keys!10439 thiss!1141))))))

(declare-fun res!632854 () Bool)

(assert (=> b!941211 (= res!632854 (= (select (arr!27332 (_keys!10439 thiss!1141)) (index!38420 lt!424904)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!941211 (=> res!632854 e!529163)))

(declare-fun b!941212 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!941212 (= e!529167 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!756 (mask!27146 thiss!1141)) #b00000000000000000000000000000000 (mask!27146 thiss!1141)) key!756 (_keys!10439 thiss!1141) (mask!27146 thiss!1141)))))

(assert (= (and d!113977 c!97974) b!941206))

(assert (= (and d!113977 (not c!97974)) b!941205))

(assert (= (and b!941205 c!97973) b!941210))

(assert (= (and b!941205 (not c!97973)) b!941212))

(assert (= (and d!113977 c!97972) b!941207))

(assert (= (and d!113977 (not c!97972)) b!941208))

(assert (= (and b!941208 res!632853) b!941209))

(assert (= (and b!941209 (not res!632855)) b!941211))

(assert (= (and b!941211 (not res!632854)) b!941204))

(declare-fun m!876459 () Bool)

(assert (=> b!941204 m!876459))

(assert (=> b!941211 m!876459))

(assert (=> b!941209 m!876459))

(assert (=> d!113977 m!876439))

(declare-fun m!876461 () Bool)

(assert (=> d!113977 m!876461))

(assert (=> d!113977 m!876411))

(assert (=> b!941212 m!876439))

(declare-fun m!876463 () Bool)

(assert (=> b!941212 m!876463))

(assert (=> b!941212 m!876463))

(declare-fun m!876465 () Bool)

(assert (=> b!941212 m!876465))

(assert (=> d!113973 d!113977))

(declare-fun d!113979 () Bool)

(declare-fun lt!424911 () (_ BitVec 32))

(declare-fun lt!424910 () (_ BitVec 32))

(assert (=> d!113979 (= lt!424911 (bvmul (bvxor lt!424910 (bvlshr lt!424910 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!113979 (= lt!424910 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!113979 (and (bvsge (mask!27146 thiss!1141) #b00000000000000000000000000000000) (let ((res!632856 (let ((h!20483 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!80763 (bvmul (bvxor h!20483 (bvlshr h!20483 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!80763 (bvlshr x!80763 #b00000000000000000000000000001101)) (mask!27146 thiss!1141)))))) (and (bvslt res!632856 (bvadd (mask!27146 thiss!1141) #b00000000000000000000000000000001)) (bvsge res!632856 #b00000000000000000000000000000000))))))

(assert (=> d!113979 (= (toIndex!0 key!756 (mask!27146 thiss!1141)) (bvand (bvxor lt!424911 (bvlshr lt!424911 #b00000000000000000000000000001101)) (mask!27146 thiss!1141)))))

(assert (=> d!113973 d!113979))

(assert (=> d!113973 d!113965))

(declare-fun d!113981 () Bool)

(declare-fun res!632864 () Bool)

(declare-fun e!529179 () Bool)

(assert (=> d!113981 (=> res!632864 e!529179)))

(assert (=> d!113981 (= res!632864 (bvsge #b00000000000000000000000000000000 (size!27794 (_keys!10439 thiss!1141))))))

(assert (=> d!113981 (= (arrayNoDuplicates!0 (_keys!10439 thiss!1141) #b00000000000000000000000000000000 Nil!19337) e!529179)))

(declare-fun b!941223 () Bool)

(declare-fun e!529176 () Bool)

(declare-fun call!40920 () Bool)

(assert (=> b!941223 (= e!529176 call!40920)))

(declare-fun b!941224 () Bool)

(assert (=> b!941224 (= e!529176 call!40920)))

(declare-fun b!941225 () Bool)

(declare-fun e!529177 () Bool)

(declare-fun contains!5141 (List!19340 (_ BitVec 64)) Bool)

(assert (=> b!941225 (= e!529177 (contains!5141 Nil!19337 (select (arr!27332 (_keys!10439 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!941226 () Bool)

(declare-fun e!529178 () Bool)

(assert (=> b!941226 (= e!529179 e!529178)))

(declare-fun res!632863 () Bool)

(assert (=> b!941226 (=> (not res!632863) (not e!529178))))

(assert (=> b!941226 (= res!632863 (not e!529177))))

(declare-fun res!632865 () Bool)

(assert (=> b!941226 (=> (not res!632865) (not e!529177))))

(assert (=> b!941226 (= res!632865 (validKeyInArray!0 (select (arr!27332 (_keys!10439 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!941227 () Bool)

(assert (=> b!941227 (= e!529178 e!529176)))

(declare-fun c!97977 () Bool)

(assert (=> b!941227 (= c!97977 (validKeyInArray!0 (select (arr!27332 (_keys!10439 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!40917 () Bool)

(assert (=> bm!40917 (= call!40920 (arrayNoDuplicates!0 (_keys!10439 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!97977 (Cons!19336 (select (arr!27332 (_keys!10439 thiss!1141)) #b00000000000000000000000000000000) Nil!19337) Nil!19337)))))

(assert (= (and d!113981 (not res!632864)) b!941226))

(assert (= (and b!941226 res!632865) b!941225))

(assert (= (and b!941226 res!632863) b!941227))

(assert (= (and b!941227 c!97977) b!941223))

(assert (= (and b!941227 (not c!97977)) b!941224))

(assert (= (or b!941223 b!941224) bm!40917))

(assert (=> b!941225 m!876447))

(assert (=> b!941225 m!876447))

(declare-fun m!876467 () Bool)

(assert (=> b!941225 m!876467))

(assert (=> b!941226 m!876447))

(assert (=> b!941226 m!876447))

(assert (=> b!941226 m!876449))

(assert (=> b!941227 m!876447))

(assert (=> b!941227 m!876447))

(assert (=> b!941227 m!876449))

(assert (=> bm!40917 m!876447))

(declare-fun m!876469 () Bool)

(assert (=> bm!40917 m!876469))

(assert (=> b!941147 d!113981))

(declare-fun b!941241 () Bool)

(declare-fun c!97984 () Bool)

(declare-fun lt!424916 () (_ BitVec 64))

(assert (=> b!941241 (= c!97984 (= lt!424916 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!529188 () SeekEntryResult!9012)

(declare-fun e!529187 () SeekEntryResult!9012)

(assert (=> b!941241 (= e!529188 e!529187)))

(declare-fun b!941242 () Bool)

(assert (=> b!941242 (= e!529187 (seekKeyOrZeroReturnVacant!0 (bvadd (x!80746 lt!424890) #b00000000000000000000000000000001) (nextIndex!0 (index!38420 lt!424890) (x!80746 lt!424890) (mask!27146 thiss!1141)) (index!38420 lt!424890) key!756 (_keys!10439 thiss!1141) (mask!27146 thiss!1141)))))

(declare-fun b!941243 () Bool)

(declare-fun e!529186 () SeekEntryResult!9012)

(assert (=> b!941243 (= e!529186 e!529188)))

(declare-fun c!97985 () Bool)

(assert (=> b!941243 (= c!97985 (= lt!424916 key!756))))

(declare-fun b!941244 () Bool)

(assert (=> b!941244 (= e!529186 Undefined!9012)))

(declare-fun b!941245 () Bool)

(assert (=> b!941245 (= e!529188 (Found!9012 (index!38420 lt!424890)))))

(declare-fun lt!424917 () SeekEntryResult!9012)

(declare-fun d!113983 () Bool)

(assert (=> d!113983 (and (or ((_ is Undefined!9012) lt!424917) (not ((_ is Found!9012) lt!424917)) (and (bvsge (index!38419 lt!424917) #b00000000000000000000000000000000) (bvslt (index!38419 lt!424917) (size!27794 (_keys!10439 thiss!1141))))) (or ((_ is Undefined!9012) lt!424917) ((_ is Found!9012) lt!424917) (not ((_ is MissingVacant!9012) lt!424917)) (not (= (index!38421 lt!424917) (index!38420 lt!424890))) (and (bvsge (index!38421 lt!424917) #b00000000000000000000000000000000) (bvslt (index!38421 lt!424917) (size!27794 (_keys!10439 thiss!1141))))) (or ((_ is Undefined!9012) lt!424917) (ite ((_ is Found!9012) lt!424917) (= (select (arr!27332 (_keys!10439 thiss!1141)) (index!38419 lt!424917)) key!756) (and ((_ is MissingVacant!9012) lt!424917) (= (index!38421 lt!424917) (index!38420 lt!424890)) (= (select (arr!27332 (_keys!10439 thiss!1141)) (index!38421 lt!424917)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!113983 (= lt!424917 e!529186)))

(declare-fun c!97986 () Bool)

(assert (=> d!113983 (= c!97986 (bvsge (x!80746 lt!424890) #b01111111111111111111111111111110))))

(assert (=> d!113983 (= lt!424916 (select (arr!27332 (_keys!10439 thiss!1141)) (index!38420 lt!424890)))))

(assert (=> d!113983 (validMask!0 (mask!27146 thiss!1141))))

(assert (=> d!113983 (= (seekKeyOrZeroReturnVacant!0 (x!80746 lt!424890) (index!38420 lt!424890) (index!38420 lt!424890) key!756 (_keys!10439 thiss!1141) (mask!27146 thiss!1141)) lt!424917)))

(declare-fun b!941240 () Bool)

(assert (=> b!941240 (= e!529187 (MissingVacant!9012 (index!38420 lt!424890)))))

(assert (= (and d!113983 c!97986) b!941244))

(assert (= (and d!113983 (not c!97986)) b!941243))

(assert (= (and b!941243 c!97985) b!941245))

(assert (= (and b!941243 (not c!97985)) b!941241))

(assert (= (and b!941241 c!97984) b!941240))

(assert (= (and b!941241 (not c!97984)) b!941242))

(declare-fun m!876471 () Bool)

(assert (=> b!941242 m!876471))

(assert (=> b!941242 m!876471))

(declare-fun m!876473 () Bool)

(assert (=> b!941242 m!876473))

(declare-fun m!876475 () Bool)

(assert (=> d!113983 m!876475))

(declare-fun m!876477 () Bool)

(assert (=> d!113983 m!876477))

(assert (=> d!113983 m!876443))

(assert (=> d!113983 m!876411))

(assert (=> b!941161 d!113983))

(declare-fun b!941254 () Bool)

(declare-fun res!632875 () Bool)

(declare-fun e!529191 () Bool)

(assert (=> b!941254 (=> (not res!632875) (not e!529191))))

(assert (=> b!941254 (= res!632875 (and (= (size!27793 (_values!5615 thiss!1141)) (bvadd (mask!27146 thiss!1141) #b00000000000000000000000000000001)) (= (size!27794 (_keys!10439 thiss!1141)) (size!27793 (_values!5615 thiss!1141))) (bvsge (_size!2356 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2356 thiss!1141) (bvadd (mask!27146 thiss!1141) #b00000000000000000000000000000001))))))

(declare-fun b!941256 () Bool)

(declare-fun res!632874 () Bool)

(assert (=> b!941256 (=> (not res!632874) (not e!529191))))

(declare-fun size!27797 (LongMapFixedSize!4602) (_ BitVec 32))

(assert (=> b!941256 (= res!632874 (= (size!27797 thiss!1141) (bvadd (_size!2356 thiss!1141) (bvsdiv (bvadd (extraKeys!5324 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!941255 () Bool)

(declare-fun res!632876 () Bool)

(assert (=> b!941255 (=> (not res!632876) (not e!529191))))

(assert (=> b!941255 (= res!632876 (bvsge (size!27797 thiss!1141) (_size!2356 thiss!1141)))))

(declare-fun b!941257 () Bool)

(assert (=> b!941257 (= e!529191 (and (bvsge (extraKeys!5324 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5324 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2356 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun d!113985 () Bool)

(declare-fun res!632877 () Bool)

(assert (=> d!113985 (=> (not res!632877) (not e!529191))))

(assert (=> d!113985 (= res!632877 (validMask!0 (mask!27146 thiss!1141)))))

(assert (=> d!113985 (= (simpleValid!339 thiss!1141) e!529191)))

(assert (= (and d!113985 res!632877) b!941254))

(assert (= (and b!941254 res!632875) b!941255))

(assert (= (and b!941255 res!632876) b!941256))

(assert (= (and b!941256 res!632874) b!941257))

(declare-fun m!876479 () Bool)

(assert (=> b!941256 m!876479))

(assert (=> b!941255 m!876479))

(assert (=> d!113985 m!876411))

(assert (=> d!113971 d!113985))

(declare-fun b!941266 () Bool)

(declare-fun e!529196 () (_ BitVec 32))

(declare-fun call!40923 () (_ BitVec 32))

(assert (=> b!941266 (= e!529196 (bvadd #b00000000000000000000000000000001 call!40923))))

(declare-fun b!941267 () Bool)

(declare-fun e!529197 () (_ BitVec 32))

(assert (=> b!941267 (= e!529197 e!529196)))

(declare-fun c!97992 () Bool)

(assert (=> b!941267 (= c!97992 (validKeyInArray!0 (select (arr!27332 (_keys!10439 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!941268 () Bool)

(assert (=> b!941268 (= e!529197 #b00000000000000000000000000000000)))

(declare-fun d!113987 () Bool)

(declare-fun lt!424920 () (_ BitVec 32))

(assert (=> d!113987 (and (bvsge lt!424920 #b00000000000000000000000000000000) (bvsle lt!424920 (bvsub (size!27794 (_keys!10439 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> d!113987 (= lt!424920 e!529197)))

(declare-fun c!97991 () Bool)

(assert (=> d!113987 (= c!97991 (bvsge #b00000000000000000000000000000000 (size!27794 (_keys!10439 thiss!1141))))))

(assert (=> d!113987 (and (bvsle #b00000000000000000000000000000000 (size!27794 (_keys!10439 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!27794 (_keys!10439 thiss!1141)) (size!27794 (_keys!10439 thiss!1141))))))

(assert (=> d!113987 (= (arrayCountValidKeys!0 (_keys!10439 thiss!1141) #b00000000000000000000000000000000 (size!27794 (_keys!10439 thiss!1141))) lt!424920)))

(declare-fun b!941269 () Bool)

(assert (=> b!941269 (= e!529196 call!40923)))

(declare-fun bm!40920 () Bool)

(assert (=> bm!40920 (= call!40923 (arrayCountValidKeys!0 (_keys!10439 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!27794 (_keys!10439 thiss!1141))))))

(assert (= (and d!113987 c!97991) b!941268))

(assert (= (and d!113987 (not c!97991)) b!941267))

(assert (= (and b!941267 c!97992) b!941266))

(assert (= (and b!941267 (not c!97992)) b!941269))

(assert (= (or b!941266 b!941269) bm!40920))

(assert (=> b!941267 m!876447))

(assert (=> b!941267 m!876447))

(assert (=> b!941267 m!876449))

(declare-fun m!876481 () Bool)

(assert (=> bm!40920 m!876481))

(assert (=> b!941145 d!113987))

(declare-fun b!941270 () Bool)

(declare-fun e!529199 () Bool)

(assert (=> b!941270 (= e!529199 tp_is_empty!20415)))

(declare-fun condMapEmpty!32423 () Bool)

(declare-fun mapDefault!32423 () ValueCell!9726)

(assert (=> mapNonEmpty!32422 (= condMapEmpty!32423 (= mapRest!32422 ((as const (Array (_ BitVec 32) ValueCell!9726)) mapDefault!32423)))))

(declare-fun e!529198 () Bool)

(declare-fun mapRes!32423 () Bool)

(assert (=> mapNonEmpty!32422 (= tp!62209 (and e!529198 mapRes!32423))))

(declare-fun b!941271 () Bool)

(assert (=> b!941271 (= e!529198 tp_is_empty!20415)))

(declare-fun mapIsEmpty!32423 () Bool)

(assert (=> mapIsEmpty!32423 mapRes!32423))

(declare-fun mapNonEmpty!32423 () Bool)

(declare-fun tp!62210 () Bool)

(assert (=> mapNonEmpty!32423 (= mapRes!32423 (and tp!62210 e!529199))))

(declare-fun mapValue!32423 () ValueCell!9726)

(declare-fun mapKey!32423 () (_ BitVec 32))

(declare-fun mapRest!32423 () (Array (_ BitVec 32) ValueCell!9726))

(assert (=> mapNonEmpty!32423 (= mapRest!32422 (store mapRest!32423 mapKey!32423 mapValue!32423))))

(assert (= (and mapNonEmpty!32422 condMapEmpty!32423) mapIsEmpty!32423))

(assert (= (and mapNonEmpty!32422 (not condMapEmpty!32423)) mapNonEmpty!32423))

(assert (= (and mapNonEmpty!32423 ((_ is ValueCellFull!9726) mapValue!32423)) b!941270))

(assert (= (and mapNonEmpty!32422 ((_ is ValueCellFull!9726) mapDefault!32423)) b!941271))

(declare-fun m!876483 () Bool)

(assert (=> mapNonEmpty!32423 m!876483))

(check-sat (not b!941267) (not mapNonEmpty!32423) (not bm!40917) (not b!941226) (not b!941225) (not d!113977) (not b!941212) (not b!941227) tp_is_empty!20415 (not d!113983) (not bm!40920) (not d!113985) (not b!941183) (not b!941242) (not b!941185) (not b_next!17907) (not bm!40914) (not b!941255) (not b!941256) b_and!29337)
(check-sat b_and!29337 (not b_next!17907))
