; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19596 () Bool)

(assert start!19596)

(declare-fun b!192088 () Bool)

(declare-fun b_free!4689 () Bool)

(declare-fun b_next!4689 () Bool)

(assert (=> b!192088 (= b_free!4689 (not b_next!4689))))

(declare-fun tp!16921 () Bool)

(declare-fun b_and!11393 () Bool)

(assert (=> b!192088 (= tp!16921 b_and!11393)))

(declare-fun b!192086 () Bool)

(declare-fun e!126414 () Bool)

(declare-datatypes ((V!5595 0))(
  ( (V!5596 (val!2275 Int)) )
))
(declare-datatypes ((ValueCell!1887 0))(
  ( (ValueCellFull!1887 (v!4216 V!5595)) (EmptyCell!1887) )
))
(declare-datatypes ((array!8162 0))(
  ( (array!8163 (arr!3844 (Array (_ BitVec 32) (_ BitVec 64))) (size!4167 (_ BitVec 32))) )
))
(declare-datatypes ((array!8164 0))(
  ( (array!8165 (arr!3845 (Array (_ BitVec 32) ValueCell!1887)) (size!4168 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2682 0))(
  ( (LongMapFixedSize!2683 (defaultEntry!3921 Int) (mask!9151 (_ BitVec 32)) (extraKeys!3658 (_ BitVec 32)) (zeroValue!3762 V!5595) (minValue!3762 V!5595) (_size!1390 (_ BitVec 32)) (_keys!5903 array!8162) (_values!3904 array!8164) (_vacant!1390 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2682)

(assert (=> b!192086 (= e!126414 (or (not (= (size!4168 (_values!3904 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9151 thiss!1248)))) (not (= (size!4167 (_keys!5903 thiss!1248)) (size!4168 (_values!3904 thiss!1248)))) (bvslt (mask!9151 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3658 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3658 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!192087 () Bool)

(declare-fun e!126411 () Bool)

(declare-fun e!126415 () Bool)

(assert (=> b!192087 (= e!126411 e!126415)))

(declare-fun res!90787 () Bool)

(assert (=> b!192087 (=> (not res!90787) (not e!126415))))

(declare-datatypes ((SeekEntryResult!691 0))(
  ( (MissingZero!691 (index!4934 (_ BitVec 32))) (Found!691 (index!4935 (_ BitVec 32))) (Intermediate!691 (undefined!1503 Bool) (index!4936 (_ BitVec 32)) (x!20589 (_ BitVec 32))) (Undefined!691) (MissingVacant!691 (index!4937 (_ BitVec 32))) )
))
(declare-fun lt!95497 () SeekEntryResult!691)

(get-info :version)

(assert (=> b!192087 (= res!90787 (and (not ((_ is Undefined!691) lt!95497)) (not ((_ is MissingVacant!691) lt!95497)) (not ((_ is MissingZero!691) lt!95497)) ((_ is Found!691) lt!95497)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8162 (_ BitVec 32)) SeekEntryResult!691)

(assert (=> b!192087 (= lt!95497 (seekEntryOrOpen!0 key!828 (_keys!5903 thiss!1248) (mask!9151 thiss!1248)))))

(declare-fun res!90783 () Bool)

(assert (=> start!19596 (=> (not res!90783) (not e!126411))))

(declare-fun valid!1093 (LongMapFixedSize!2682) Bool)

(assert (=> start!19596 (= res!90783 (valid!1093 thiss!1248))))

(assert (=> start!19596 e!126411))

(declare-fun e!126418 () Bool)

(assert (=> start!19596 e!126418))

(assert (=> start!19596 true))

(declare-fun tp_is_empty!4461 () Bool)

(assert (=> start!19596 tp_is_empty!4461))

(declare-fun e!126419 () Bool)

(declare-fun array_inv!2483 (array!8162) Bool)

(declare-fun array_inv!2484 (array!8164) Bool)

(assert (=> b!192088 (= e!126418 (and tp!16921 tp_is_empty!4461 (array_inv!2483 (_keys!5903 thiss!1248)) (array_inv!2484 (_values!3904 thiss!1248)) e!126419))))

(declare-fun b!192089 () Bool)

(declare-fun e!126410 () Bool)

(assert (=> b!192089 (= e!126410 tp_is_empty!4461)))

(declare-fun e!126417 () Bool)

(declare-fun b!192090 () Bool)

(assert (=> b!192090 (= e!126417 (= (select (arr!3844 (_keys!5903 thiss!1248)) (index!4935 lt!95497)) key!828))))

(declare-fun b!192091 () Bool)

(declare-fun res!90786 () Bool)

(assert (=> b!192091 (=> (not res!90786) (not e!126411))))

(assert (=> b!192091 (= res!90786 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!7708 () Bool)

(declare-fun mapRes!7708 () Bool)

(declare-fun tp!16920 () Bool)

(declare-fun e!126416 () Bool)

(assert (=> mapNonEmpty!7708 (= mapRes!7708 (and tp!16920 e!126416))))

(declare-fun mapValue!7708 () ValueCell!1887)

(declare-fun mapRest!7708 () (Array (_ BitVec 32) ValueCell!1887))

(declare-fun mapKey!7708 () (_ BitVec 32))

(assert (=> mapNonEmpty!7708 (= (arr!3845 (_values!3904 thiss!1248)) (store mapRest!7708 mapKey!7708 mapValue!7708))))

(declare-fun b!192092 () Bool)

(assert (=> b!192092 (= e!126415 (not e!126414))))

(declare-fun res!90784 () Bool)

(assert (=> b!192092 (=> res!90784 e!126414)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!192092 (= res!90784 (not (validMask!0 (mask!9151 thiss!1248))))))

(declare-datatypes ((tuple2!3532 0))(
  ( (tuple2!3533 (_1!1776 (_ BitVec 64)) (_2!1776 V!5595)) )
))
(declare-datatypes ((List!2448 0))(
  ( (Nil!2445) (Cons!2444 (h!3084 tuple2!3532) (t!7372 List!2448)) )
))
(declare-datatypes ((ListLongMap!2463 0))(
  ( (ListLongMap!2464 (toList!1247 List!2448)) )
))
(declare-fun lt!95498 () ListLongMap!2463)

(declare-fun v!309 () V!5595)

(declare-fun +!305 (ListLongMap!2463 tuple2!3532) ListLongMap!2463)

(declare-fun getCurrentListMap!890 (array!8162 array!8164 (_ BitVec 32) (_ BitVec 32) V!5595 V!5595 (_ BitVec 32) Int) ListLongMap!2463)

(assert (=> b!192092 (= (+!305 lt!95498 (tuple2!3533 key!828 v!309)) (getCurrentListMap!890 (_keys!5903 thiss!1248) (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248))) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)))))

(declare-datatypes ((Unit!5808 0))(
  ( (Unit!5809) )
))
(declare-fun lt!95494 () Unit!5808)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!111 (array!8162 array!8164 (_ BitVec 32) (_ BitVec 32) V!5595 V!5595 (_ BitVec 32) (_ BitVec 64) V!5595 Int) Unit!5808)

(assert (=> b!192092 (= lt!95494 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!111 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) (index!4935 lt!95497) key!828 v!309 (defaultEntry!3921 thiss!1248)))))

(declare-fun lt!95495 () Unit!5808)

(declare-fun e!126413 () Unit!5808)

(assert (=> b!192092 (= lt!95495 e!126413)))

(declare-fun c!34600 () Bool)

(declare-fun contains!1357 (ListLongMap!2463 (_ BitVec 64)) Bool)

(assert (=> b!192092 (= c!34600 (contains!1357 lt!95498 key!828))))

(assert (=> b!192092 (= lt!95498 (getCurrentListMap!890 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)))))

(declare-fun b!192093 () Bool)

(declare-fun lt!95499 () Unit!5808)

(assert (=> b!192093 (= e!126413 lt!95499)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!177 (array!8162 array!8164 (_ BitVec 32) (_ BitVec 32) V!5595 V!5595 (_ BitVec 64) Int) Unit!5808)

(assert (=> b!192093 (= lt!95499 (lemmaInListMapThenSeekEntryOrOpenFindsIt!177 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) key!828 (defaultEntry!3921 thiss!1248)))))

(declare-fun res!90785 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!192093 (= res!90785 (inRange!0 (index!4935 lt!95497) (mask!9151 thiss!1248)))))

(assert (=> b!192093 (=> (not res!90785) (not e!126417))))

(assert (=> b!192093 e!126417))

(declare-fun b!192094 () Bool)

(assert (=> b!192094 (= e!126416 tp_is_empty!4461)))

(declare-fun b!192095 () Bool)

(declare-fun Unit!5810 () Unit!5808)

(assert (=> b!192095 (= e!126413 Unit!5810)))

(declare-fun lt!95496 () Unit!5808)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!181 (array!8162 array!8164 (_ BitVec 32) (_ BitVec 32) V!5595 V!5595 (_ BitVec 64) Int) Unit!5808)

(assert (=> b!192095 (= lt!95496 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!181 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) key!828 (defaultEntry!3921 thiss!1248)))))

(assert (=> b!192095 false))

(declare-fun mapIsEmpty!7708 () Bool)

(assert (=> mapIsEmpty!7708 mapRes!7708))

(declare-fun b!192096 () Bool)

(assert (=> b!192096 (= e!126419 (and e!126410 mapRes!7708))))

(declare-fun condMapEmpty!7708 () Bool)

(declare-fun mapDefault!7708 () ValueCell!1887)

(assert (=> b!192096 (= condMapEmpty!7708 (= (arr!3845 (_values!3904 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1887)) mapDefault!7708)))))

(assert (= (and start!19596 res!90783) b!192091))

(assert (= (and b!192091 res!90786) b!192087))

(assert (= (and b!192087 res!90787) b!192092))

(assert (= (and b!192092 c!34600) b!192093))

(assert (= (and b!192092 (not c!34600)) b!192095))

(assert (= (and b!192093 res!90785) b!192090))

(assert (= (and b!192092 (not res!90784)) b!192086))

(assert (= (and b!192096 condMapEmpty!7708) mapIsEmpty!7708))

(assert (= (and b!192096 (not condMapEmpty!7708)) mapNonEmpty!7708))

(assert (= (and mapNonEmpty!7708 ((_ is ValueCellFull!1887) mapValue!7708)) b!192094))

(assert (= (and b!192096 ((_ is ValueCellFull!1887) mapDefault!7708)) b!192089))

(assert (= b!192088 b!192096))

(assert (= start!19596 b!192088))

(declare-fun m!218817 () Bool)

(assert (=> b!192095 m!218817))

(declare-fun m!218819 () Bool)

(assert (=> b!192092 m!218819))

(declare-fun m!218821 () Bool)

(assert (=> b!192092 m!218821))

(declare-fun m!218823 () Bool)

(assert (=> b!192092 m!218823))

(declare-fun m!218825 () Bool)

(assert (=> b!192092 m!218825))

(declare-fun m!218827 () Bool)

(assert (=> b!192092 m!218827))

(declare-fun m!218829 () Bool)

(assert (=> b!192092 m!218829))

(declare-fun m!218831 () Bool)

(assert (=> b!192092 m!218831))

(declare-fun m!218833 () Bool)

(assert (=> b!192088 m!218833))

(declare-fun m!218835 () Bool)

(assert (=> b!192088 m!218835))

(declare-fun m!218837 () Bool)

(assert (=> mapNonEmpty!7708 m!218837))

(declare-fun m!218839 () Bool)

(assert (=> b!192093 m!218839))

(declare-fun m!218841 () Bool)

(assert (=> b!192093 m!218841))

(declare-fun m!218843 () Bool)

(assert (=> start!19596 m!218843))

(declare-fun m!218845 () Bool)

(assert (=> b!192087 m!218845))

(declare-fun m!218847 () Bool)

(assert (=> b!192090 m!218847))

(check-sat (not start!19596) (not b!192087) tp_is_empty!4461 (not b!192093) (not b!192095) b_and!11393 (not mapNonEmpty!7708) (not b_next!4689) (not b!192092) (not b!192088))
(check-sat b_and!11393 (not b_next!4689))
(get-model)

(declare-fun b!192146 () Bool)

(declare-fun res!90813 () Bool)

(declare-fun e!126460 () Bool)

(assert (=> b!192146 (=> (not res!90813) (not e!126460))))

(declare-fun lt!95522 () SeekEntryResult!691)

(assert (=> b!192146 (= res!90813 (= (select (arr!3844 (_keys!5903 thiss!1248)) (index!4937 lt!95522)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!192146 (and (bvsge (index!4937 lt!95522) #b00000000000000000000000000000000) (bvslt (index!4937 lt!95522) (size!4167 (_keys!5903 thiss!1248))))))

(declare-fun b!192147 () Bool)

(declare-fun e!126461 () Bool)

(declare-fun call!19393 () Bool)

(assert (=> b!192147 (= e!126461 (not call!19393))))

(declare-fun b!192148 () Bool)

(declare-fun res!90812 () Bool)

(assert (=> b!192148 (=> (not res!90812) (not e!126460))))

(declare-fun call!19394 () Bool)

(assert (=> b!192148 (= res!90812 call!19394)))

(declare-fun e!126458 () Bool)

(assert (=> b!192148 (= e!126458 e!126460)))

(declare-fun bm!19390 () Bool)

(declare-fun arrayContainsKey!0 (array!8162 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!19390 (= call!19393 (arrayContainsKey!0 (_keys!5903 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun bm!19391 () Bool)

(declare-fun c!34609 () Bool)

(assert (=> bm!19391 (= call!19394 (inRange!0 (ite c!34609 (index!4934 lt!95522) (index!4937 lt!95522)) (mask!9151 thiss!1248)))))

(declare-fun b!192150 () Bool)

(assert (=> b!192150 (= e!126458 ((_ is Undefined!691) lt!95522))))

(declare-fun b!192151 () Bool)

(declare-fun e!126459 () Bool)

(assert (=> b!192151 (= e!126459 e!126458)))

(declare-fun c!34608 () Bool)

(assert (=> b!192151 (= c!34608 ((_ is MissingVacant!691) lt!95522))))

(declare-fun b!192149 () Bool)

(assert (=> b!192149 (and (bvsge (index!4934 lt!95522) #b00000000000000000000000000000000) (bvslt (index!4934 lt!95522) (size!4167 (_keys!5903 thiss!1248))))))

(declare-fun res!90811 () Bool)

(assert (=> b!192149 (= res!90811 (= (select (arr!3844 (_keys!5903 thiss!1248)) (index!4934 lt!95522)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!192149 (=> (not res!90811) (not e!126461))))

(declare-fun d!56249 () Bool)

(assert (=> d!56249 e!126459))

(assert (=> d!56249 (= c!34609 ((_ is MissingZero!691) lt!95522))))

(assert (=> d!56249 (= lt!95522 (seekEntryOrOpen!0 key!828 (_keys!5903 thiss!1248) (mask!9151 thiss!1248)))))

(declare-fun lt!95523 () Unit!5808)

(declare-fun choose!1052 (array!8162 array!8164 (_ BitVec 32) (_ BitVec 32) V!5595 V!5595 (_ BitVec 64) Int) Unit!5808)

(assert (=> d!56249 (= lt!95523 (choose!1052 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) key!828 (defaultEntry!3921 thiss!1248)))))

(assert (=> d!56249 (validMask!0 (mask!9151 thiss!1248))))

(assert (=> d!56249 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!181 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) key!828 (defaultEntry!3921 thiss!1248)) lt!95523)))

(declare-fun b!192152 () Bool)

(assert (=> b!192152 (= e!126460 (not call!19393))))

(declare-fun b!192153 () Bool)

(assert (=> b!192153 (= e!126459 e!126461)))

(declare-fun res!90814 () Bool)

(assert (=> b!192153 (= res!90814 call!19394)))

(assert (=> b!192153 (=> (not res!90814) (not e!126461))))

(assert (= (and d!56249 c!34609) b!192153))

(assert (= (and d!56249 (not c!34609)) b!192151))

(assert (= (and b!192153 res!90814) b!192149))

(assert (= (and b!192149 res!90811) b!192147))

(assert (= (and b!192151 c!34608) b!192148))

(assert (= (and b!192151 (not c!34608)) b!192150))

(assert (= (and b!192148 res!90812) b!192146))

(assert (= (and b!192146 res!90813) b!192152))

(assert (= (or b!192153 b!192148) bm!19391))

(assert (= (or b!192147 b!192152) bm!19390))

(declare-fun m!218881 () Bool)

(assert (=> bm!19391 m!218881))

(assert (=> d!56249 m!218845))

(declare-fun m!218883 () Bool)

(assert (=> d!56249 m!218883))

(assert (=> d!56249 m!218823))

(declare-fun m!218885 () Bool)

(assert (=> b!192149 m!218885))

(declare-fun m!218887 () Bool)

(assert (=> bm!19390 m!218887))

(declare-fun m!218889 () Bool)

(assert (=> b!192146 m!218889))

(assert (=> b!192095 d!56249))

(declare-fun d!56251 () Bool)

(declare-fun res!90821 () Bool)

(declare-fun e!126464 () Bool)

(assert (=> d!56251 (=> (not res!90821) (not e!126464))))

(declare-fun simpleValid!198 (LongMapFixedSize!2682) Bool)

(assert (=> d!56251 (= res!90821 (simpleValid!198 thiss!1248))))

(assert (=> d!56251 (= (valid!1093 thiss!1248) e!126464)))

(declare-fun b!192160 () Bool)

(declare-fun res!90822 () Bool)

(assert (=> b!192160 (=> (not res!90822) (not e!126464))))

(declare-fun arrayCountValidKeys!0 (array!8162 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!192160 (= res!90822 (= (arrayCountValidKeys!0 (_keys!5903 thiss!1248) #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))) (_size!1390 thiss!1248)))))

(declare-fun b!192161 () Bool)

(declare-fun res!90823 () Bool)

(assert (=> b!192161 (=> (not res!90823) (not e!126464))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8162 (_ BitVec 32)) Bool)

(assert (=> b!192161 (= res!90823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5903 thiss!1248) (mask!9151 thiss!1248)))))

(declare-fun b!192162 () Bool)

(declare-datatypes ((List!2449 0))(
  ( (Nil!2446) (Cons!2445 (h!3085 (_ BitVec 64)) (t!7375 List!2449)) )
))
(declare-fun arrayNoDuplicates!0 (array!8162 (_ BitVec 32) List!2449) Bool)

(assert (=> b!192162 (= e!126464 (arrayNoDuplicates!0 (_keys!5903 thiss!1248) #b00000000000000000000000000000000 Nil!2446))))

(assert (= (and d!56251 res!90821) b!192160))

(assert (= (and b!192160 res!90822) b!192161))

(assert (= (and b!192161 res!90823) b!192162))

(declare-fun m!218891 () Bool)

(assert (=> d!56251 m!218891))

(declare-fun m!218893 () Bool)

(assert (=> b!192160 m!218893))

(declare-fun m!218895 () Bool)

(assert (=> b!192161 m!218895))

(declare-fun m!218897 () Bool)

(assert (=> b!192162 m!218897))

(assert (=> start!19596 d!56251))

(declare-fun d!56253 () Bool)

(declare-fun e!126467 () Bool)

(assert (=> d!56253 e!126467))

(declare-fun res!90828 () Bool)

(assert (=> d!56253 (=> (not res!90828) (not e!126467))))

(declare-fun lt!95528 () SeekEntryResult!691)

(assert (=> d!56253 (= res!90828 ((_ is Found!691) lt!95528))))

(assert (=> d!56253 (= lt!95528 (seekEntryOrOpen!0 key!828 (_keys!5903 thiss!1248) (mask!9151 thiss!1248)))))

(declare-fun lt!95529 () Unit!5808)

(declare-fun choose!1053 (array!8162 array!8164 (_ BitVec 32) (_ BitVec 32) V!5595 V!5595 (_ BitVec 64) Int) Unit!5808)

(assert (=> d!56253 (= lt!95529 (choose!1053 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) key!828 (defaultEntry!3921 thiss!1248)))))

(assert (=> d!56253 (validMask!0 (mask!9151 thiss!1248))))

(assert (=> d!56253 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!177 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) key!828 (defaultEntry!3921 thiss!1248)) lt!95529)))

(declare-fun b!192167 () Bool)

(declare-fun res!90829 () Bool)

(assert (=> b!192167 (=> (not res!90829) (not e!126467))))

(assert (=> b!192167 (= res!90829 (inRange!0 (index!4935 lt!95528) (mask!9151 thiss!1248)))))

(declare-fun b!192168 () Bool)

(assert (=> b!192168 (= e!126467 (= (select (arr!3844 (_keys!5903 thiss!1248)) (index!4935 lt!95528)) key!828))))

(assert (=> b!192168 (and (bvsge (index!4935 lt!95528) #b00000000000000000000000000000000) (bvslt (index!4935 lt!95528) (size!4167 (_keys!5903 thiss!1248))))))

(assert (= (and d!56253 res!90828) b!192167))

(assert (= (and b!192167 res!90829) b!192168))

(assert (=> d!56253 m!218845))

(declare-fun m!218899 () Bool)

(assert (=> d!56253 m!218899))

(assert (=> d!56253 m!218823))

(declare-fun m!218901 () Bool)

(assert (=> b!192167 m!218901))

(declare-fun m!218903 () Bool)

(assert (=> b!192168 m!218903))

(assert (=> b!192093 d!56253))

(declare-fun d!56255 () Bool)

(assert (=> d!56255 (= (inRange!0 (index!4935 lt!95497) (mask!9151 thiss!1248)) (and (bvsge (index!4935 lt!95497) #b00000000000000000000000000000000) (bvslt (index!4935 lt!95497) (bvadd (mask!9151 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!192093 d!56255))

(declare-fun d!56257 () Bool)

(declare-fun e!126470 () Bool)

(assert (=> d!56257 e!126470))

(declare-fun res!90834 () Bool)

(assert (=> d!56257 (=> (not res!90834) (not e!126470))))

(declare-fun lt!95539 () ListLongMap!2463)

(assert (=> d!56257 (= res!90834 (contains!1357 lt!95539 (_1!1776 (tuple2!3533 key!828 v!309))))))

(declare-fun lt!95541 () List!2448)

(assert (=> d!56257 (= lt!95539 (ListLongMap!2464 lt!95541))))

(declare-fun lt!95540 () Unit!5808)

(declare-fun lt!95538 () Unit!5808)

(assert (=> d!56257 (= lt!95540 lt!95538)))

(declare-datatypes ((Option!245 0))(
  ( (Some!244 (v!4220 V!5595)) (None!243) )
))
(declare-fun getValueByKey!239 (List!2448 (_ BitVec 64)) Option!245)

(assert (=> d!56257 (= (getValueByKey!239 lt!95541 (_1!1776 (tuple2!3533 key!828 v!309))) (Some!244 (_2!1776 (tuple2!3533 key!828 v!309))))))

(declare-fun lemmaContainsTupThenGetReturnValue!128 (List!2448 (_ BitVec 64) V!5595) Unit!5808)

(assert (=> d!56257 (= lt!95538 (lemmaContainsTupThenGetReturnValue!128 lt!95541 (_1!1776 (tuple2!3533 key!828 v!309)) (_2!1776 (tuple2!3533 key!828 v!309))))))

(declare-fun insertStrictlySorted!130 (List!2448 (_ BitVec 64) V!5595) List!2448)

(assert (=> d!56257 (= lt!95541 (insertStrictlySorted!130 (toList!1247 lt!95498) (_1!1776 (tuple2!3533 key!828 v!309)) (_2!1776 (tuple2!3533 key!828 v!309))))))

(assert (=> d!56257 (= (+!305 lt!95498 (tuple2!3533 key!828 v!309)) lt!95539)))

(declare-fun b!192173 () Bool)

(declare-fun res!90835 () Bool)

(assert (=> b!192173 (=> (not res!90835) (not e!126470))))

(assert (=> b!192173 (= res!90835 (= (getValueByKey!239 (toList!1247 lt!95539) (_1!1776 (tuple2!3533 key!828 v!309))) (Some!244 (_2!1776 (tuple2!3533 key!828 v!309)))))))

(declare-fun b!192174 () Bool)

(declare-fun contains!1358 (List!2448 tuple2!3532) Bool)

(assert (=> b!192174 (= e!126470 (contains!1358 (toList!1247 lt!95539) (tuple2!3533 key!828 v!309)))))

(assert (= (and d!56257 res!90834) b!192173))

(assert (= (and b!192173 res!90835) b!192174))

(declare-fun m!218905 () Bool)

(assert (=> d!56257 m!218905))

(declare-fun m!218907 () Bool)

(assert (=> d!56257 m!218907))

(declare-fun m!218909 () Bool)

(assert (=> d!56257 m!218909))

(declare-fun m!218911 () Bool)

(assert (=> d!56257 m!218911))

(declare-fun m!218913 () Bool)

(assert (=> b!192173 m!218913))

(declare-fun m!218915 () Bool)

(assert (=> b!192174 m!218915))

(assert (=> b!192092 d!56257))

(declare-fun d!56259 () Bool)

(assert (=> d!56259 (= (validMask!0 (mask!9151 thiss!1248)) (and (or (= (mask!9151 thiss!1248) #b00000000000000000000000000000111) (= (mask!9151 thiss!1248) #b00000000000000000000000000001111) (= (mask!9151 thiss!1248) #b00000000000000000000000000011111) (= (mask!9151 thiss!1248) #b00000000000000000000000000111111) (= (mask!9151 thiss!1248) #b00000000000000000000000001111111) (= (mask!9151 thiss!1248) #b00000000000000000000000011111111) (= (mask!9151 thiss!1248) #b00000000000000000000000111111111) (= (mask!9151 thiss!1248) #b00000000000000000000001111111111) (= (mask!9151 thiss!1248) #b00000000000000000000011111111111) (= (mask!9151 thiss!1248) #b00000000000000000000111111111111) (= (mask!9151 thiss!1248) #b00000000000000000001111111111111) (= (mask!9151 thiss!1248) #b00000000000000000011111111111111) (= (mask!9151 thiss!1248) #b00000000000000000111111111111111) (= (mask!9151 thiss!1248) #b00000000000000001111111111111111) (= (mask!9151 thiss!1248) #b00000000000000011111111111111111) (= (mask!9151 thiss!1248) #b00000000000000111111111111111111) (= (mask!9151 thiss!1248) #b00000000000001111111111111111111) (= (mask!9151 thiss!1248) #b00000000000011111111111111111111) (= (mask!9151 thiss!1248) #b00000000000111111111111111111111) (= (mask!9151 thiss!1248) #b00000000001111111111111111111111) (= (mask!9151 thiss!1248) #b00000000011111111111111111111111) (= (mask!9151 thiss!1248) #b00000000111111111111111111111111) (= (mask!9151 thiss!1248) #b00000001111111111111111111111111) (= (mask!9151 thiss!1248) #b00000011111111111111111111111111) (= (mask!9151 thiss!1248) #b00000111111111111111111111111111) (= (mask!9151 thiss!1248) #b00001111111111111111111111111111) (= (mask!9151 thiss!1248) #b00011111111111111111111111111111) (= (mask!9151 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!9151 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!192092 d!56259))

(declare-fun b!192217 () Bool)

(declare-fun e!126506 () ListLongMap!2463)

(declare-fun call!19413 () ListLongMap!2463)

(assert (=> b!192217 (= e!126506 call!19413)))

(declare-fun b!192218 () Bool)

(declare-fun e!126503 () ListLongMap!2463)

(declare-fun e!126501 () ListLongMap!2463)

(assert (=> b!192218 (= e!126503 e!126501)))

(declare-fun c!34623 () Bool)

(assert (=> b!192218 (= c!34623 (and (not (= (bvand (extraKeys!3658 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3658 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!192219 () Bool)

(declare-fun e!126499 () Bool)

(declare-fun e!126508 () Bool)

(assert (=> b!192219 (= e!126499 e!126508)))

(declare-fun res!90860 () Bool)

(declare-fun call!19414 () Bool)

(assert (=> b!192219 (= res!90860 call!19414)))

(assert (=> b!192219 (=> (not res!90860) (not e!126508))))

(declare-fun b!192221 () Bool)

(declare-fun e!126497 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!192221 (= e!126497 (validKeyInArray!0 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!192222 () Bool)

(declare-fun e!126507 () Unit!5808)

(declare-fun lt!95606 () Unit!5808)

(assert (=> b!192222 (= e!126507 lt!95606)))

(declare-fun lt!95604 () ListLongMap!2463)

(declare-fun getCurrentListMapNoExtraKeys!213 (array!8162 array!8164 (_ BitVec 32) (_ BitVec 32) V!5595 V!5595 (_ BitVec 32) Int) ListLongMap!2463)

(assert (=> b!192222 (= lt!95604 (getCurrentListMapNoExtraKeys!213 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)))))

(declare-fun lt!95591 () (_ BitVec 64))

(assert (=> b!192222 (= lt!95591 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95598 () (_ BitVec 64))

(assert (=> b!192222 (= lt!95598 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95593 () Unit!5808)

(declare-fun addStillContains!159 (ListLongMap!2463 (_ BitVec 64) V!5595 (_ BitVec 64)) Unit!5808)

(assert (=> b!192222 (= lt!95593 (addStillContains!159 lt!95604 lt!95591 (zeroValue!3762 thiss!1248) lt!95598))))

(assert (=> b!192222 (contains!1357 (+!305 lt!95604 (tuple2!3533 lt!95591 (zeroValue!3762 thiss!1248))) lt!95598)))

(declare-fun lt!95600 () Unit!5808)

(assert (=> b!192222 (= lt!95600 lt!95593)))

(declare-fun lt!95599 () ListLongMap!2463)

(assert (=> b!192222 (= lt!95599 (getCurrentListMapNoExtraKeys!213 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)))))

(declare-fun lt!95589 () (_ BitVec 64))

(assert (=> b!192222 (= lt!95589 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95590 () (_ BitVec 64))

(assert (=> b!192222 (= lt!95590 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95587 () Unit!5808)

(declare-fun addApplyDifferent!159 (ListLongMap!2463 (_ BitVec 64) V!5595 (_ BitVec 64)) Unit!5808)

(assert (=> b!192222 (= lt!95587 (addApplyDifferent!159 lt!95599 lt!95589 (minValue!3762 thiss!1248) lt!95590))))

(declare-fun apply!183 (ListLongMap!2463 (_ BitVec 64)) V!5595)

(assert (=> b!192222 (= (apply!183 (+!305 lt!95599 (tuple2!3533 lt!95589 (minValue!3762 thiss!1248))) lt!95590) (apply!183 lt!95599 lt!95590))))

(declare-fun lt!95597 () Unit!5808)

(assert (=> b!192222 (= lt!95597 lt!95587)))

(declare-fun lt!95595 () ListLongMap!2463)

(assert (=> b!192222 (= lt!95595 (getCurrentListMapNoExtraKeys!213 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)))))

(declare-fun lt!95607 () (_ BitVec 64))

(assert (=> b!192222 (= lt!95607 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95601 () (_ BitVec 64))

(assert (=> b!192222 (= lt!95601 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95588 () Unit!5808)

(assert (=> b!192222 (= lt!95588 (addApplyDifferent!159 lt!95595 lt!95607 (zeroValue!3762 thiss!1248) lt!95601))))

(assert (=> b!192222 (= (apply!183 (+!305 lt!95595 (tuple2!3533 lt!95607 (zeroValue!3762 thiss!1248))) lt!95601) (apply!183 lt!95595 lt!95601))))

(declare-fun lt!95602 () Unit!5808)

(assert (=> b!192222 (= lt!95602 lt!95588)))

(declare-fun lt!95594 () ListLongMap!2463)

(assert (=> b!192222 (= lt!95594 (getCurrentListMapNoExtraKeys!213 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)))))

(declare-fun lt!95592 () (_ BitVec 64))

(assert (=> b!192222 (= lt!95592 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95603 () (_ BitVec 64))

(assert (=> b!192222 (= lt!95603 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!192222 (= lt!95606 (addApplyDifferent!159 lt!95594 lt!95592 (minValue!3762 thiss!1248) lt!95603))))

(assert (=> b!192222 (= (apply!183 (+!305 lt!95594 (tuple2!3533 lt!95592 (minValue!3762 thiss!1248))) lt!95603) (apply!183 lt!95594 lt!95603))))

(declare-fun bm!19406 () Bool)

(declare-fun call!19411 () Bool)

(declare-fun lt!95596 () ListLongMap!2463)

(assert (=> bm!19406 (= call!19411 (contains!1357 lt!95596 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!192223 () Bool)

(declare-fun e!126509 () Bool)

(assert (=> b!192223 (= e!126509 e!126499)))

(declare-fun c!34626 () Bool)

(assert (=> b!192223 (= c!34626 (not (= (bvand (extraKeys!3658 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!192224 () Bool)

(assert (=> b!192224 (= e!126508 (= (apply!183 lt!95596 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3762 thiss!1248)))))

(declare-fun bm!19407 () Bool)

(declare-fun call!19415 () ListLongMap!2463)

(declare-fun call!19412 () ListLongMap!2463)

(assert (=> bm!19407 (= call!19415 call!19412)))

(declare-fun b!192225 () Bool)

(declare-fun e!126505 () Bool)

(assert (=> b!192225 (= e!126505 (= (apply!183 lt!95596 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3762 thiss!1248)))))

(declare-fun d!56261 () Bool)

(assert (=> d!56261 e!126509))

(declare-fun res!90856 () Bool)

(assert (=> d!56261 (=> (not res!90856) (not e!126509))))

(assert (=> d!56261 (= res!90856 (or (bvsge #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))))

(declare-fun lt!95586 () ListLongMap!2463)

(assert (=> d!56261 (= lt!95596 lt!95586)))

(declare-fun lt!95605 () Unit!5808)

(assert (=> d!56261 (= lt!95605 e!126507)))

(declare-fun c!34625 () Bool)

(assert (=> d!56261 (= c!34625 e!126497)))

(declare-fun res!90858 () Bool)

(assert (=> d!56261 (=> (not res!90858) (not e!126497))))

(assert (=> d!56261 (= res!90858 (bvslt #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(assert (=> d!56261 (= lt!95586 e!126503)))

(declare-fun c!34624 () Bool)

(assert (=> d!56261 (= c!34624 (and (not (= (bvand (extraKeys!3658 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3658 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!56261 (validMask!0 (mask!9151 thiss!1248))))

(assert (=> d!56261 (= (getCurrentListMap!890 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)) lt!95596)))

(declare-fun b!192220 () Bool)

(declare-fun e!126502 () Bool)

(declare-fun e!126498 () Bool)

(assert (=> b!192220 (= e!126502 e!126498)))

(declare-fun res!90855 () Bool)

(assert (=> b!192220 (=> (not res!90855) (not e!126498))))

(assert (=> b!192220 (= res!90855 (contains!1357 lt!95596 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!192220 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(declare-fun b!192226 () Bool)

(declare-fun res!90857 () Bool)

(assert (=> b!192226 (=> (not res!90857) (not e!126509))))

(assert (=> b!192226 (= res!90857 e!126502)))

(declare-fun res!90862 () Bool)

(assert (=> b!192226 (=> res!90862 e!126502)))

(declare-fun e!126504 () Bool)

(assert (=> b!192226 (= res!90862 (not e!126504))))

(declare-fun res!90854 () Bool)

(assert (=> b!192226 (=> (not res!90854) (not e!126504))))

(assert (=> b!192226 (= res!90854 (bvslt #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(declare-fun b!192227 () Bool)

(assert (=> b!192227 (= e!126504 (validKeyInArray!0 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!192228 () Bool)

(declare-fun c!34622 () Bool)

(assert (=> b!192228 (= c!34622 (and (not (= (bvand (extraKeys!3658 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3658 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!192228 (= e!126501 e!126506)))

(declare-fun bm!19408 () Bool)

(declare-fun call!19410 () ListLongMap!2463)

(assert (=> bm!19408 (= call!19410 (getCurrentListMapNoExtraKeys!213 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)))))

(declare-fun b!192229 () Bool)

(assert (=> b!192229 (= e!126501 call!19413)))

(declare-fun b!192230 () Bool)

(declare-fun Unit!5814 () Unit!5808)

(assert (=> b!192230 (= e!126507 Unit!5814)))

(declare-fun bm!19409 () Bool)

(assert (=> bm!19409 (= call!19412 call!19410)))

(declare-fun b!192231 () Bool)

(declare-fun e!126500 () Bool)

(assert (=> b!192231 (= e!126500 (not call!19411))))

(declare-fun b!192232 () Bool)

(declare-fun res!90859 () Bool)

(assert (=> b!192232 (=> (not res!90859) (not e!126509))))

(assert (=> b!192232 (= res!90859 e!126500)))

(declare-fun c!34627 () Bool)

(assert (=> b!192232 (= c!34627 (not (= (bvand (extraKeys!3658 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!19410 () Bool)

(declare-fun call!19409 () ListLongMap!2463)

(assert (=> bm!19410 (= call!19413 call!19409)))

(declare-fun bm!19411 () Bool)

(assert (=> bm!19411 (= call!19414 (contains!1357 lt!95596 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19412 () Bool)

(assert (=> bm!19412 (= call!19409 (+!305 (ite c!34624 call!19410 (ite c!34623 call!19412 call!19415)) (ite (or c!34624 c!34623) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))))))

(declare-fun b!192233 () Bool)

(assert (=> b!192233 (= e!126499 (not call!19414))))

(declare-fun b!192234 () Bool)

(declare-fun get!2220 (ValueCell!1887 V!5595) V!5595)

(declare-fun dynLambda!521 (Int (_ BitVec 64)) V!5595)

(assert (=> b!192234 (= e!126498 (= (apply!183 lt!95596 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)) (get!2220 (select (arr!3845 (_values!3904 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!521 (defaultEntry!3921 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!192234 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4168 (_values!3904 thiss!1248))))))

(assert (=> b!192234 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(declare-fun b!192235 () Bool)

(assert (=> b!192235 (= e!126506 call!19415)))

(declare-fun b!192236 () Bool)

(assert (=> b!192236 (= e!126503 (+!305 call!19409 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))))))

(declare-fun b!192237 () Bool)

(assert (=> b!192237 (= e!126500 e!126505)))

(declare-fun res!90861 () Bool)

(assert (=> b!192237 (= res!90861 call!19411)))

(assert (=> b!192237 (=> (not res!90861) (not e!126505))))

(assert (= (and d!56261 c!34624) b!192236))

(assert (= (and d!56261 (not c!34624)) b!192218))

(assert (= (and b!192218 c!34623) b!192229))

(assert (= (and b!192218 (not c!34623)) b!192228))

(assert (= (and b!192228 c!34622) b!192217))

(assert (= (and b!192228 (not c!34622)) b!192235))

(assert (= (or b!192217 b!192235) bm!19407))

(assert (= (or b!192229 bm!19407) bm!19409))

(assert (= (or b!192229 b!192217) bm!19410))

(assert (= (or b!192236 bm!19409) bm!19408))

(assert (= (or b!192236 bm!19410) bm!19412))

(assert (= (and d!56261 res!90858) b!192221))

(assert (= (and d!56261 c!34625) b!192222))

(assert (= (and d!56261 (not c!34625)) b!192230))

(assert (= (and d!56261 res!90856) b!192226))

(assert (= (and b!192226 res!90854) b!192227))

(assert (= (and b!192226 (not res!90862)) b!192220))

(assert (= (and b!192220 res!90855) b!192234))

(assert (= (and b!192226 res!90857) b!192232))

(assert (= (and b!192232 c!34627) b!192237))

(assert (= (and b!192232 (not c!34627)) b!192231))

(assert (= (and b!192237 res!90861) b!192225))

(assert (= (or b!192237 b!192231) bm!19406))

(assert (= (and b!192232 res!90859) b!192223))

(assert (= (and b!192223 c!34626) b!192219))

(assert (= (and b!192223 (not c!34626)) b!192233))

(assert (= (and b!192219 res!90860) b!192224))

(assert (= (or b!192219 b!192233) bm!19411))

(declare-fun b_lambda!7453 () Bool)

(assert (=> (not b_lambda!7453) (not b!192234)))

(declare-fun t!7374 () Bool)

(declare-fun tb!2885 () Bool)

(assert (=> (and b!192088 (= (defaultEntry!3921 thiss!1248) (defaultEntry!3921 thiss!1248)) t!7374) tb!2885))

(declare-fun result!4917 () Bool)

(assert (=> tb!2885 (= result!4917 tp_is_empty!4461)))

(assert (=> b!192234 t!7374))

(declare-fun b_and!11397 () Bool)

(assert (= b_and!11393 (and (=> t!7374 result!4917) b_and!11397)))

(declare-fun m!218917 () Bool)

(assert (=> b!192234 m!218917))

(declare-fun m!218919 () Bool)

(assert (=> b!192234 m!218919))

(declare-fun m!218921 () Bool)

(assert (=> b!192234 m!218921))

(declare-fun m!218923 () Bool)

(assert (=> b!192234 m!218923))

(assert (=> b!192234 m!218917))

(assert (=> b!192234 m!218919))

(assert (=> b!192234 m!218923))

(declare-fun m!218925 () Bool)

(assert (=> b!192234 m!218925))

(declare-fun m!218927 () Bool)

(assert (=> bm!19406 m!218927))

(declare-fun m!218929 () Bool)

(assert (=> b!192222 m!218929))

(declare-fun m!218931 () Bool)

(assert (=> b!192222 m!218931))

(declare-fun m!218933 () Bool)

(assert (=> b!192222 m!218933))

(declare-fun m!218935 () Bool)

(assert (=> b!192222 m!218935))

(declare-fun m!218937 () Bool)

(assert (=> b!192222 m!218937))

(declare-fun m!218939 () Bool)

(assert (=> b!192222 m!218939))

(declare-fun m!218941 () Bool)

(assert (=> b!192222 m!218941))

(declare-fun m!218943 () Bool)

(assert (=> b!192222 m!218943))

(declare-fun m!218945 () Bool)

(assert (=> b!192222 m!218945))

(assert (=> b!192222 m!218931))

(declare-fun m!218947 () Bool)

(assert (=> b!192222 m!218947))

(assert (=> b!192222 m!218937))

(declare-fun m!218949 () Bool)

(assert (=> b!192222 m!218949))

(assert (=> b!192222 m!218949))

(declare-fun m!218951 () Bool)

(assert (=> b!192222 m!218951))

(declare-fun m!218953 () Bool)

(assert (=> b!192222 m!218953))

(assert (=> b!192222 m!218923))

(declare-fun m!218955 () Bool)

(assert (=> b!192222 m!218955))

(declare-fun m!218957 () Bool)

(assert (=> b!192222 m!218957))

(declare-fun m!218959 () Bool)

(assert (=> b!192222 m!218959))

(assert (=> b!192222 m!218957))

(declare-fun m!218961 () Bool)

(assert (=> bm!19411 m!218961))

(assert (=> b!192221 m!218923))

(assert (=> b!192221 m!218923))

(declare-fun m!218963 () Bool)

(assert (=> b!192221 m!218963))

(assert (=> bm!19408 m!218953))

(assert (=> b!192227 m!218923))

(assert (=> b!192227 m!218923))

(assert (=> b!192227 m!218963))

(assert (=> d!56261 m!218823))

(declare-fun m!218965 () Bool)

(assert (=> b!192225 m!218965))

(declare-fun m!218967 () Bool)

(assert (=> b!192236 m!218967))

(assert (=> b!192220 m!218923))

(assert (=> b!192220 m!218923))

(declare-fun m!218969 () Bool)

(assert (=> b!192220 m!218969))

(declare-fun m!218971 () Bool)

(assert (=> bm!19412 m!218971))

(declare-fun m!218973 () Bool)

(assert (=> b!192224 m!218973))

(assert (=> b!192092 d!56261))

(declare-fun b!192240 () Bool)

(declare-fun e!126519 () ListLongMap!2463)

(declare-fun call!19420 () ListLongMap!2463)

(assert (=> b!192240 (= e!126519 call!19420)))

(declare-fun b!192241 () Bool)

(declare-fun e!126516 () ListLongMap!2463)

(declare-fun e!126514 () ListLongMap!2463)

(assert (=> b!192241 (= e!126516 e!126514)))

(declare-fun c!34629 () Bool)

(assert (=> b!192241 (= c!34629 (and (not (= (bvand (extraKeys!3658 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3658 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!192242 () Bool)

(declare-fun e!126512 () Bool)

(declare-fun e!126521 () Bool)

(assert (=> b!192242 (= e!126512 e!126521)))

(declare-fun res!90869 () Bool)

(declare-fun call!19421 () Bool)

(assert (=> b!192242 (= res!90869 call!19421)))

(assert (=> b!192242 (=> (not res!90869) (not e!126521))))

(declare-fun b!192244 () Bool)

(declare-fun e!126510 () Bool)

(assert (=> b!192244 (= e!126510 (validKeyInArray!0 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!192245 () Bool)

(declare-fun e!126520 () Unit!5808)

(declare-fun lt!95628 () Unit!5808)

(assert (=> b!192245 (= e!126520 lt!95628)))

(declare-fun lt!95626 () ListLongMap!2463)

(assert (=> b!192245 (= lt!95626 (getCurrentListMapNoExtraKeys!213 (_keys!5903 thiss!1248) (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248))) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)))))

(declare-fun lt!95613 () (_ BitVec 64))

(assert (=> b!192245 (= lt!95613 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95620 () (_ BitVec 64))

(assert (=> b!192245 (= lt!95620 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95615 () Unit!5808)

(assert (=> b!192245 (= lt!95615 (addStillContains!159 lt!95626 lt!95613 (zeroValue!3762 thiss!1248) lt!95620))))

(assert (=> b!192245 (contains!1357 (+!305 lt!95626 (tuple2!3533 lt!95613 (zeroValue!3762 thiss!1248))) lt!95620)))

(declare-fun lt!95622 () Unit!5808)

(assert (=> b!192245 (= lt!95622 lt!95615)))

(declare-fun lt!95621 () ListLongMap!2463)

(assert (=> b!192245 (= lt!95621 (getCurrentListMapNoExtraKeys!213 (_keys!5903 thiss!1248) (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248))) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)))))

(declare-fun lt!95611 () (_ BitVec 64))

(assert (=> b!192245 (= lt!95611 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95612 () (_ BitVec 64))

(assert (=> b!192245 (= lt!95612 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95609 () Unit!5808)

(assert (=> b!192245 (= lt!95609 (addApplyDifferent!159 lt!95621 lt!95611 (minValue!3762 thiss!1248) lt!95612))))

(assert (=> b!192245 (= (apply!183 (+!305 lt!95621 (tuple2!3533 lt!95611 (minValue!3762 thiss!1248))) lt!95612) (apply!183 lt!95621 lt!95612))))

(declare-fun lt!95619 () Unit!5808)

(assert (=> b!192245 (= lt!95619 lt!95609)))

(declare-fun lt!95617 () ListLongMap!2463)

(assert (=> b!192245 (= lt!95617 (getCurrentListMapNoExtraKeys!213 (_keys!5903 thiss!1248) (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248))) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)))))

(declare-fun lt!95629 () (_ BitVec 64))

(assert (=> b!192245 (= lt!95629 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95623 () (_ BitVec 64))

(assert (=> b!192245 (= lt!95623 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95610 () Unit!5808)

(assert (=> b!192245 (= lt!95610 (addApplyDifferent!159 lt!95617 lt!95629 (zeroValue!3762 thiss!1248) lt!95623))))

(assert (=> b!192245 (= (apply!183 (+!305 lt!95617 (tuple2!3533 lt!95629 (zeroValue!3762 thiss!1248))) lt!95623) (apply!183 lt!95617 lt!95623))))

(declare-fun lt!95624 () Unit!5808)

(assert (=> b!192245 (= lt!95624 lt!95610)))

(declare-fun lt!95616 () ListLongMap!2463)

(assert (=> b!192245 (= lt!95616 (getCurrentListMapNoExtraKeys!213 (_keys!5903 thiss!1248) (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248))) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)))))

(declare-fun lt!95614 () (_ BitVec 64))

(assert (=> b!192245 (= lt!95614 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95625 () (_ BitVec 64))

(assert (=> b!192245 (= lt!95625 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!192245 (= lt!95628 (addApplyDifferent!159 lt!95616 lt!95614 (minValue!3762 thiss!1248) lt!95625))))

(assert (=> b!192245 (= (apply!183 (+!305 lt!95616 (tuple2!3533 lt!95614 (minValue!3762 thiss!1248))) lt!95625) (apply!183 lt!95616 lt!95625))))

(declare-fun bm!19413 () Bool)

(declare-fun call!19418 () Bool)

(declare-fun lt!95618 () ListLongMap!2463)

(assert (=> bm!19413 (= call!19418 (contains!1357 lt!95618 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!192246 () Bool)

(declare-fun e!126522 () Bool)

(assert (=> b!192246 (= e!126522 e!126512)))

(declare-fun c!34632 () Bool)

(assert (=> b!192246 (= c!34632 (not (= (bvand (extraKeys!3658 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!192247 () Bool)

(assert (=> b!192247 (= e!126521 (= (apply!183 lt!95618 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3762 thiss!1248)))))

(declare-fun bm!19414 () Bool)

(declare-fun call!19422 () ListLongMap!2463)

(declare-fun call!19419 () ListLongMap!2463)

(assert (=> bm!19414 (= call!19422 call!19419)))

(declare-fun b!192248 () Bool)

(declare-fun e!126518 () Bool)

(assert (=> b!192248 (= e!126518 (= (apply!183 lt!95618 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3762 thiss!1248)))))

(declare-fun d!56263 () Bool)

(assert (=> d!56263 e!126522))

(declare-fun res!90865 () Bool)

(assert (=> d!56263 (=> (not res!90865) (not e!126522))))

(assert (=> d!56263 (= res!90865 (or (bvsge #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))))

(declare-fun lt!95608 () ListLongMap!2463)

(assert (=> d!56263 (= lt!95618 lt!95608)))

(declare-fun lt!95627 () Unit!5808)

(assert (=> d!56263 (= lt!95627 e!126520)))

(declare-fun c!34631 () Bool)

(assert (=> d!56263 (= c!34631 e!126510)))

(declare-fun res!90867 () Bool)

(assert (=> d!56263 (=> (not res!90867) (not e!126510))))

(assert (=> d!56263 (= res!90867 (bvslt #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(assert (=> d!56263 (= lt!95608 e!126516)))

(declare-fun c!34630 () Bool)

(assert (=> d!56263 (= c!34630 (and (not (= (bvand (extraKeys!3658 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3658 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!56263 (validMask!0 (mask!9151 thiss!1248))))

(assert (=> d!56263 (= (getCurrentListMap!890 (_keys!5903 thiss!1248) (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248))) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)) lt!95618)))

(declare-fun b!192243 () Bool)

(declare-fun e!126515 () Bool)

(declare-fun e!126511 () Bool)

(assert (=> b!192243 (= e!126515 e!126511)))

(declare-fun res!90864 () Bool)

(assert (=> b!192243 (=> (not res!90864) (not e!126511))))

(assert (=> b!192243 (= res!90864 (contains!1357 lt!95618 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!192243 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(declare-fun b!192249 () Bool)

(declare-fun res!90866 () Bool)

(assert (=> b!192249 (=> (not res!90866) (not e!126522))))

(assert (=> b!192249 (= res!90866 e!126515)))

(declare-fun res!90871 () Bool)

(assert (=> b!192249 (=> res!90871 e!126515)))

(declare-fun e!126517 () Bool)

(assert (=> b!192249 (= res!90871 (not e!126517))))

(declare-fun res!90863 () Bool)

(assert (=> b!192249 (=> (not res!90863) (not e!126517))))

(assert (=> b!192249 (= res!90863 (bvslt #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(declare-fun b!192250 () Bool)

(assert (=> b!192250 (= e!126517 (validKeyInArray!0 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!192251 () Bool)

(declare-fun c!34628 () Bool)

(assert (=> b!192251 (= c!34628 (and (not (= (bvand (extraKeys!3658 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3658 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!192251 (= e!126514 e!126519)))

(declare-fun call!19417 () ListLongMap!2463)

(declare-fun bm!19415 () Bool)

(assert (=> bm!19415 (= call!19417 (getCurrentListMapNoExtraKeys!213 (_keys!5903 thiss!1248) (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248))) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)))))

(declare-fun b!192252 () Bool)

(assert (=> b!192252 (= e!126514 call!19420)))

(declare-fun b!192253 () Bool)

(declare-fun Unit!5815 () Unit!5808)

(assert (=> b!192253 (= e!126520 Unit!5815)))

(declare-fun bm!19416 () Bool)

(assert (=> bm!19416 (= call!19419 call!19417)))

(declare-fun b!192254 () Bool)

(declare-fun e!126513 () Bool)

(assert (=> b!192254 (= e!126513 (not call!19418))))

(declare-fun b!192255 () Bool)

(declare-fun res!90868 () Bool)

(assert (=> b!192255 (=> (not res!90868) (not e!126522))))

(assert (=> b!192255 (= res!90868 e!126513)))

(declare-fun c!34633 () Bool)

(assert (=> b!192255 (= c!34633 (not (= (bvand (extraKeys!3658 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!19417 () Bool)

(declare-fun call!19416 () ListLongMap!2463)

(assert (=> bm!19417 (= call!19420 call!19416)))

(declare-fun bm!19418 () Bool)

(assert (=> bm!19418 (= call!19421 (contains!1357 lt!95618 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19419 () Bool)

(assert (=> bm!19419 (= call!19416 (+!305 (ite c!34630 call!19417 (ite c!34629 call!19419 call!19422)) (ite (or c!34630 c!34629) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))))))

(declare-fun b!192256 () Bool)

(assert (=> b!192256 (= e!126512 (not call!19421))))

(declare-fun b!192257 () Bool)

(assert (=> b!192257 (= e!126511 (= (apply!183 lt!95618 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)) (get!2220 (select (arr!3845 (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!521 (defaultEntry!3921 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!192257 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4168 (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248))))))))

(assert (=> b!192257 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(declare-fun b!192258 () Bool)

(assert (=> b!192258 (= e!126519 call!19422)))

(declare-fun b!192259 () Bool)

(assert (=> b!192259 (= e!126516 (+!305 call!19416 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))))))

(declare-fun b!192260 () Bool)

(assert (=> b!192260 (= e!126513 e!126518)))

(declare-fun res!90870 () Bool)

(assert (=> b!192260 (= res!90870 call!19418)))

(assert (=> b!192260 (=> (not res!90870) (not e!126518))))

(assert (= (and d!56263 c!34630) b!192259))

(assert (= (and d!56263 (not c!34630)) b!192241))

(assert (= (and b!192241 c!34629) b!192252))

(assert (= (and b!192241 (not c!34629)) b!192251))

(assert (= (and b!192251 c!34628) b!192240))

(assert (= (and b!192251 (not c!34628)) b!192258))

(assert (= (or b!192240 b!192258) bm!19414))

(assert (= (or b!192252 bm!19414) bm!19416))

(assert (= (or b!192252 b!192240) bm!19417))

(assert (= (or b!192259 bm!19416) bm!19415))

(assert (= (or b!192259 bm!19417) bm!19419))

(assert (= (and d!56263 res!90867) b!192244))

(assert (= (and d!56263 c!34631) b!192245))

(assert (= (and d!56263 (not c!34631)) b!192253))

(assert (= (and d!56263 res!90865) b!192249))

(assert (= (and b!192249 res!90863) b!192250))

(assert (= (and b!192249 (not res!90871)) b!192243))

(assert (= (and b!192243 res!90864) b!192257))

(assert (= (and b!192249 res!90866) b!192255))

(assert (= (and b!192255 c!34633) b!192260))

(assert (= (and b!192255 (not c!34633)) b!192254))

(assert (= (and b!192260 res!90870) b!192248))

(assert (= (or b!192260 b!192254) bm!19413))

(assert (= (and b!192255 res!90868) b!192246))

(assert (= (and b!192246 c!34632) b!192242))

(assert (= (and b!192246 (not c!34632)) b!192256))

(assert (= (and b!192242 res!90869) b!192247))

(assert (= (or b!192242 b!192256) bm!19418))

(declare-fun b_lambda!7455 () Bool)

(assert (=> (not b_lambda!7455) (not b!192257)))

(assert (=> b!192257 t!7374))

(declare-fun b_and!11399 () Bool)

(assert (= b_and!11397 (and (=> t!7374 result!4917) b_and!11399)))

(declare-fun m!218975 () Bool)

(assert (=> b!192257 m!218975))

(assert (=> b!192257 m!218919))

(declare-fun m!218977 () Bool)

(assert (=> b!192257 m!218977))

(assert (=> b!192257 m!218923))

(assert (=> b!192257 m!218975))

(assert (=> b!192257 m!218919))

(assert (=> b!192257 m!218923))

(declare-fun m!218979 () Bool)

(assert (=> b!192257 m!218979))

(declare-fun m!218981 () Bool)

(assert (=> bm!19413 m!218981))

(declare-fun m!218983 () Bool)

(assert (=> b!192245 m!218983))

(declare-fun m!218985 () Bool)

(assert (=> b!192245 m!218985))

(declare-fun m!218987 () Bool)

(assert (=> b!192245 m!218987))

(declare-fun m!218989 () Bool)

(assert (=> b!192245 m!218989))

(declare-fun m!218991 () Bool)

(assert (=> b!192245 m!218991))

(declare-fun m!218993 () Bool)

(assert (=> b!192245 m!218993))

(declare-fun m!218995 () Bool)

(assert (=> b!192245 m!218995))

(declare-fun m!218997 () Bool)

(assert (=> b!192245 m!218997))

(declare-fun m!218999 () Bool)

(assert (=> b!192245 m!218999))

(assert (=> b!192245 m!218985))

(declare-fun m!219001 () Bool)

(assert (=> b!192245 m!219001))

(assert (=> b!192245 m!218991))

(declare-fun m!219003 () Bool)

(assert (=> b!192245 m!219003))

(assert (=> b!192245 m!219003))

(declare-fun m!219005 () Bool)

(assert (=> b!192245 m!219005))

(declare-fun m!219007 () Bool)

(assert (=> b!192245 m!219007))

(assert (=> b!192245 m!218923))

(declare-fun m!219009 () Bool)

(assert (=> b!192245 m!219009))

(declare-fun m!219011 () Bool)

(assert (=> b!192245 m!219011))

(declare-fun m!219013 () Bool)

(assert (=> b!192245 m!219013))

(assert (=> b!192245 m!219011))

(declare-fun m!219015 () Bool)

(assert (=> bm!19418 m!219015))

(assert (=> b!192244 m!218923))

(assert (=> b!192244 m!218923))

(assert (=> b!192244 m!218963))

(assert (=> bm!19415 m!219007))

(assert (=> b!192250 m!218923))

(assert (=> b!192250 m!218923))

(assert (=> b!192250 m!218963))

(assert (=> d!56263 m!218823))

(declare-fun m!219017 () Bool)

(assert (=> b!192248 m!219017))

(declare-fun m!219019 () Bool)

(assert (=> b!192259 m!219019))

(assert (=> b!192243 m!218923))

(assert (=> b!192243 m!218923))

(declare-fun m!219021 () Bool)

(assert (=> b!192243 m!219021))

(declare-fun m!219023 () Bool)

(assert (=> bm!19419 m!219023))

(declare-fun m!219025 () Bool)

(assert (=> b!192247 m!219025))

(assert (=> b!192092 d!56263))

(declare-fun d!56265 () Bool)

(declare-fun e!126528 () Bool)

(assert (=> d!56265 e!126528))

(declare-fun res!90874 () Bool)

(assert (=> d!56265 (=> res!90874 e!126528)))

(declare-fun lt!95639 () Bool)

(assert (=> d!56265 (= res!90874 (not lt!95639))))

(declare-fun lt!95641 () Bool)

(assert (=> d!56265 (= lt!95639 lt!95641)))

(declare-fun lt!95640 () Unit!5808)

(declare-fun e!126527 () Unit!5808)

(assert (=> d!56265 (= lt!95640 e!126527)))

(declare-fun c!34636 () Bool)

(assert (=> d!56265 (= c!34636 lt!95641)))

(declare-fun containsKey!243 (List!2448 (_ BitVec 64)) Bool)

(assert (=> d!56265 (= lt!95641 (containsKey!243 (toList!1247 lt!95498) key!828))))

(assert (=> d!56265 (= (contains!1357 lt!95498 key!828) lt!95639)))

(declare-fun b!192267 () Bool)

(declare-fun lt!95638 () Unit!5808)

(assert (=> b!192267 (= e!126527 lt!95638)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!192 (List!2448 (_ BitVec 64)) Unit!5808)

(assert (=> b!192267 (= lt!95638 (lemmaContainsKeyImpliesGetValueByKeyDefined!192 (toList!1247 lt!95498) key!828))))

(declare-fun isDefined!193 (Option!245) Bool)

(assert (=> b!192267 (isDefined!193 (getValueByKey!239 (toList!1247 lt!95498) key!828))))

(declare-fun b!192268 () Bool)

(declare-fun Unit!5816 () Unit!5808)

(assert (=> b!192268 (= e!126527 Unit!5816)))

(declare-fun b!192269 () Bool)

(assert (=> b!192269 (= e!126528 (isDefined!193 (getValueByKey!239 (toList!1247 lt!95498) key!828)))))

(assert (= (and d!56265 c!34636) b!192267))

(assert (= (and d!56265 (not c!34636)) b!192268))

(assert (= (and d!56265 (not res!90874)) b!192269))

(declare-fun m!219027 () Bool)

(assert (=> d!56265 m!219027))

(declare-fun m!219029 () Bool)

(assert (=> b!192267 m!219029))

(declare-fun m!219031 () Bool)

(assert (=> b!192267 m!219031))

(assert (=> b!192267 m!219031))

(declare-fun m!219033 () Bool)

(assert (=> b!192267 m!219033))

(assert (=> b!192269 m!219031))

(assert (=> b!192269 m!219031))

(assert (=> b!192269 m!219033))

(assert (=> b!192092 d!56265))

(declare-fun d!56267 () Bool)

(declare-fun e!126531 () Bool)

(assert (=> d!56267 e!126531))

(declare-fun res!90877 () Bool)

(assert (=> d!56267 (=> (not res!90877) (not e!126531))))

(assert (=> d!56267 (= res!90877 (and (bvsge (index!4935 lt!95497) #b00000000000000000000000000000000) (bvslt (index!4935 lt!95497) (size!4168 (_values!3904 thiss!1248)))))))

(declare-fun lt!95644 () Unit!5808)

(declare-fun choose!1054 (array!8162 array!8164 (_ BitVec 32) (_ BitVec 32) V!5595 V!5595 (_ BitVec 32) (_ BitVec 64) V!5595 Int) Unit!5808)

(assert (=> d!56267 (= lt!95644 (choose!1054 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) (index!4935 lt!95497) key!828 v!309 (defaultEntry!3921 thiss!1248)))))

(assert (=> d!56267 (validMask!0 (mask!9151 thiss!1248))))

(assert (=> d!56267 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!111 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) (index!4935 lt!95497) key!828 v!309 (defaultEntry!3921 thiss!1248)) lt!95644)))

(declare-fun b!192272 () Bool)

(assert (=> b!192272 (= e!126531 (= (+!305 (getCurrentListMap!890 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)) (tuple2!3533 key!828 v!309)) (getCurrentListMap!890 (_keys!5903 thiss!1248) (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248))) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248))))))

(assert (= (and d!56267 res!90877) b!192272))

(declare-fun m!219035 () Bool)

(assert (=> d!56267 m!219035))

(assert (=> d!56267 m!218823))

(assert (=> b!192272 m!218829))

(assert (=> b!192272 m!218829))

(declare-fun m!219037 () Bool)

(assert (=> b!192272 m!219037))

(assert (=> b!192272 m!218819))

(assert (=> b!192272 m!218831))

(assert (=> b!192092 d!56267))

(declare-fun d!56269 () Bool)

(assert (=> d!56269 (= (array_inv!2483 (_keys!5903 thiss!1248)) (bvsge (size!4167 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!192088 d!56269))

(declare-fun d!56271 () Bool)

(assert (=> d!56271 (= (array_inv!2484 (_values!3904 thiss!1248)) (bvsge (size!4168 (_values!3904 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!192088 d!56271))

(declare-fun b!192285 () Bool)

(declare-fun e!126538 () SeekEntryResult!691)

(assert (=> b!192285 (= e!126538 Undefined!691)))

(declare-fun b!192286 () Bool)

(declare-fun e!126540 () SeekEntryResult!691)

(declare-fun lt!95651 () SeekEntryResult!691)

(assert (=> b!192286 (= e!126540 (Found!691 (index!4936 lt!95651)))))

(declare-fun b!192288 () Bool)

(declare-fun e!126539 () SeekEntryResult!691)

(assert (=> b!192288 (= e!126539 (MissingZero!691 (index!4936 lt!95651)))))

(declare-fun b!192289 () Bool)

(assert (=> b!192289 (= e!126538 e!126540)))

(declare-fun lt!95653 () (_ BitVec 64))

(assert (=> b!192289 (= lt!95653 (select (arr!3844 (_keys!5903 thiss!1248)) (index!4936 lt!95651)))))

(declare-fun c!34645 () Bool)

(assert (=> b!192289 (= c!34645 (= lt!95653 key!828))))

(declare-fun b!192290 () Bool)

(declare-fun c!34644 () Bool)

(assert (=> b!192290 (= c!34644 (= lt!95653 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!192290 (= e!126540 e!126539)))

(declare-fun b!192287 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8162 (_ BitVec 32)) SeekEntryResult!691)

(assert (=> b!192287 (= e!126539 (seekKeyOrZeroReturnVacant!0 (x!20589 lt!95651) (index!4936 lt!95651) (index!4936 lt!95651) key!828 (_keys!5903 thiss!1248) (mask!9151 thiss!1248)))))

(declare-fun d!56273 () Bool)

(declare-fun lt!95652 () SeekEntryResult!691)

(assert (=> d!56273 (and (or ((_ is Undefined!691) lt!95652) (not ((_ is Found!691) lt!95652)) (and (bvsge (index!4935 lt!95652) #b00000000000000000000000000000000) (bvslt (index!4935 lt!95652) (size!4167 (_keys!5903 thiss!1248))))) (or ((_ is Undefined!691) lt!95652) ((_ is Found!691) lt!95652) (not ((_ is MissingZero!691) lt!95652)) (and (bvsge (index!4934 lt!95652) #b00000000000000000000000000000000) (bvslt (index!4934 lt!95652) (size!4167 (_keys!5903 thiss!1248))))) (or ((_ is Undefined!691) lt!95652) ((_ is Found!691) lt!95652) ((_ is MissingZero!691) lt!95652) (not ((_ is MissingVacant!691) lt!95652)) (and (bvsge (index!4937 lt!95652) #b00000000000000000000000000000000) (bvslt (index!4937 lt!95652) (size!4167 (_keys!5903 thiss!1248))))) (or ((_ is Undefined!691) lt!95652) (ite ((_ is Found!691) lt!95652) (= (select (arr!3844 (_keys!5903 thiss!1248)) (index!4935 lt!95652)) key!828) (ite ((_ is MissingZero!691) lt!95652) (= (select (arr!3844 (_keys!5903 thiss!1248)) (index!4934 lt!95652)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!691) lt!95652) (= (select (arr!3844 (_keys!5903 thiss!1248)) (index!4937 lt!95652)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!56273 (= lt!95652 e!126538)))

(declare-fun c!34643 () Bool)

(assert (=> d!56273 (= c!34643 (and ((_ is Intermediate!691) lt!95651) (undefined!1503 lt!95651)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8162 (_ BitVec 32)) SeekEntryResult!691)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!56273 (= lt!95651 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9151 thiss!1248)) key!828 (_keys!5903 thiss!1248) (mask!9151 thiss!1248)))))

(assert (=> d!56273 (validMask!0 (mask!9151 thiss!1248))))

(assert (=> d!56273 (= (seekEntryOrOpen!0 key!828 (_keys!5903 thiss!1248) (mask!9151 thiss!1248)) lt!95652)))

(assert (= (and d!56273 c!34643) b!192285))

(assert (= (and d!56273 (not c!34643)) b!192289))

(assert (= (and b!192289 c!34645) b!192286))

(assert (= (and b!192289 (not c!34645)) b!192290))

(assert (= (and b!192290 c!34644) b!192288))

(assert (= (and b!192290 (not c!34644)) b!192287))

(declare-fun m!219039 () Bool)

(assert (=> b!192289 m!219039))

(declare-fun m!219041 () Bool)

(assert (=> b!192287 m!219041))

(assert (=> d!56273 m!218823))

(declare-fun m!219043 () Bool)

(assert (=> d!56273 m!219043))

(declare-fun m!219045 () Bool)

(assert (=> d!56273 m!219045))

(declare-fun m!219047 () Bool)

(assert (=> d!56273 m!219047))

(assert (=> d!56273 m!219043))

(declare-fun m!219049 () Bool)

(assert (=> d!56273 m!219049))

(declare-fun m!219051 () Bool)

(assert (=> d!56273 m!219051))

(assert (=> b!192087 d!56273))

(declare-fun b!192297 () Bool)

(declare-fun e!126546 () Bool)

(assert (=> b!192297 (= e!126546 tp_is_empty!4461)))

(declare-fun b!192298 () Bool)

(declare-fun e!126545 () Bool)

(assert (=> b!192298 (= e!126545 tp_is_empty!4461)))

(declare-fun mapIsEmpty!7714 () Bool)

(declare-fun mapRes!7714 () Bool)

(assert (=> mapIsEmpty!7714 mapRes!7714))

(declare-fun condMapEmpty!7714 () Bool)

(declare-fun mapDefault!7714 () ValueCell!1887)

(assert (=> mapNonEmpty!7708 (= condMapEmpty!7714 (= mapRest!7708 ((as const (Array (_ BitVec 32) ValueCell!1887)) mapDefault!7714)))))

(assert (=> mapNonEmpty!7708 (= tp!16920 (and e!126545 mapRes!7714))))

(declare-fun mapNonEmpty!7714 () Bool)

(declare-fun tp!16930 () Bool)

(assert (=> mapNonEmpty!7714 (= mapRes!7714 (and tp!16930 e!126546))))

(declare-fun mapValue!7714 () ValueCell!1887)

(declare-fun mapKey!7714 () (_ BitVec 32))

(declare-fun mapRest!7714 () (Array (_ BitVec 32) ValueCell!1887))

(assert (=> mapNonEmpty!7714 (= mapRest!7708 (store mapRest!7714 mapKey!7714 mapValue!7714))))

(assert (= (and mapNonEmpty!7708 condMapEmpty!7714) mapIsEmpty!7714))

(assert (= (and mapNonEmpty!7708 (not condMapEmpty!7714)) mapNonEmpty!7714))

(assert (= (and mapNonEmpty!7714 ((_ is ValueCellFull!1887) mapValue!7714)) b!192297))

(assert (= (and mapNonEmpty!7708 ((_ is ValueCellFull!1887) mapDefault!7714)) b!192298))

(declare-fun m!219053 () Bool)

(assert (=> mapNonEmpty!7714 m!219053))

(declare-fun b_lambda!7457 () Bool)

(assert (= b_lambda!7453 (or (and b!192088 b_free!4689) b_lambda!7457)))

(declare-fun b_lambda!7459 () Bool)

(assert (= b_lambda!7455 (or (and b!192088 b_free!4689) b_lambda!7459)))

(check-sat (not bm!19413) (not bm!19412) (not b!192257) (not b!192225) (not d!56265) (not b!192224) (not bm!19411) (not b!192250) (not b!192245) (not b!192259) (not bm!19391) (not b_lambda!7459) (not b!192221) (not b!192173) (not bm!19419) (not d!56257) (not b!192167) (not b!192234) (not bm!19390) (not b!192222) (not d!56263) (not b!192244) (not bm!19408) (not d!56251) (not b_lambda!7457) (not b_next!4689) (not b!192269) (not b!192174) (not b!192267) tp_is_empty!4461 (not b!192236) (not d!56253) (not d!56273) (not b!192272) (not d!56249) (not d!56261) (not b!192227) (not b!192247) (not b!192161) (not b!192248) (not bm!19406) b_and!11399 (not mapNonEmpty!7714) (not b!192160) (not b!192287) (not b!192162) (not bm!19415) (not b!192243) (not d!56267) (not b!192220) (not bm!19418))
(check-sat b_and!11399 (not b_next!4689))
(get-model)

(declare-fun b!192323 () Bool)

(declare-fun e!126565 () Bool)

(declare-fun e!126566 () Bool)

(assert (=> b!192323 (= e!126565 e!126566)))

(declare-fun c!34655 () Bool)

(declare-fun e!126567 () Bool)

(assert (=> b!192323 (= c!34655 e!126567)))

(declare-fun res!90886 () Bool)

(assert (=> b!192323 (=> (not res!90886) (not e!126567))))

(assert (=> b!192323 (= res!90886 (bvslt #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(declare-fun b!192324 () Bool)

(declare-fun e!126564 () Bool)

(assert (=> b!192324 (= e!126566 e!126564)))

(assert (=> b!192324 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(declare-fun res!90888 () Bool)

(declare-fun lt!95669 () ListLongMap!2463)

(assert (=> b!192324 (= res!90888 (contains!1357 lt!95669 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!192324 (=> (not res!90888) (not e!126564))))

(declare-fun b!192325 () Bool)

(declare-fun e!126563 () ListLongMap!2463)

(declare-fun e!126562 () ListLongMap!2463)

(assert (=> b!192325 (= e!126563 e!126562)))

(declare-fun c!34654 () Bool)

(assert (=> b!192325 (= c!34654 (validKeyInArray!0 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!19422 () Bool)

(declare-fun call!19425 () ListLongMap!2463)

(assert (=> bm!19422 (= call!19425 (getCurrentListMapNoExtraKeys!213 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3921 thiss!1248)))))

(declare-fun b!192326 () Bool)

(assert (=> b!192326 (= e!126563 (ListLongMap!2464 Nil!2445))))

(declare-fun b!192327 () Bool)

(declare-fun e!126561 () Bool)

(assert (=> b!192327 (= e!126566 e!126561)))

(declare-fun c!34656 () Bool)

(assert (=> b!192327 (= c!34656 (bvslt #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(declare-fun b!192328 () Bool)

(declare-fun res!90889 () Bool)

(assert (=> b!192328 (=> (not res!90889) (not e!126565))))

(assert (=> b!192328 (= res!90889 (not (contains!1357 lt!95669 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!192329 () Bool)

(assert (=> b!192329 (= e!126562 call!19425)))

(declare-fun b!192330 () Bool)

(assert (=> b!192330 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(assert (=> b!192330 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4168 (_values!3904 thiss!1248))))))

(assert (=> b!192330 (= e!126564 (= (apply!183 lt!95669 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)) (get!2220 (select (arr!3845 (_values!3904 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!521 (defaultEntry!3921 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!192331 () Bool)

(assert (=> b!192331 (= e!126567 (validKeyInArray!0 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!192331 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!56275 () Bool)

(assert (=> d!56275 e!126565))

(declare-fun res!90887 () Bool)

(assert (=> d!56275 (=> (not res!90887) (not e!126565))))

(assert (=> d!56275 (= res!90887 (not (contains!1357 lt!95669 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!56275 (= lt!95669 e!126563)))

(declare-fun c!34657 () Bool)

(assert (=> d!56275 (= c!34657 (bvsge #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(assert (=> d!56275 (validMask!0 (mask!9151 thiss!1248))))

(assert (=> d!56275 (= (getCurrentListMapNoExtraKeys!213 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)) lt!95669)))

(declare-fun b!192332 () Bool)

(declare-fun isEmpty!490 (ListLongMap!2463) Bool)

(assert (=> b!192332 (= e!126561 (isEmpty!490 lt!95669))))

(declare-fun b!192333 () Bool)

(declare-fun lt!95671 () Unit!5808)

(declare-fun lt!95668 () Unit!5808)

(assert (=> b!192333 (= lt!95671 lt!95668)))

(declare-fun lt!95673 () V!5595)

(declare-fun lt!95672 () (_ BitVec 64))

(declare-fun lt!95674 () (_ BitVec 64))

(declare-fun lt!95670 () ListLongMap!2463)

(assert (=> b!192333 (not (contains!1357 (+!305 lt!95670 (tuple2!3533 lt!95674 lt!95673)) lt!95672))))

(declare-fun addStillNotContains!98 (ListLongMap!2463 (_ BitVec 64) V!5595 (_ BitVec 64)) Unit!5808)

(assert (=> b!192333 (= lt!95668 (addStillNotContains!98 lt!95670 lt!95674 lt!95673 lt!95672))))

(assert (=> b!192333 (= lt!95672 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!192333 (= lt!95673 (get!2220 (select (arr!3845 (_values!3904 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!521 (defaultEntry!3921 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!192333 (= lt!95674 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!192333 (= lt!95670 call!19425)))

(assert (=> b!192333 (= e!126562 (+!305 call!19425 (tuple2!3533 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000) (get!2220 (select (arr!3845 (_values!3904 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!521 (defaultEntry!3921 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!192334 () Bool)

(assert (=> b!192334 (= e!126561 (= lt!95669 (getCurrentListMapNoExtraKeys!213 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3921 thiss!1248))))))

(assert (= (and d!56275 c!34657) b!192326))

(assert (= (and d!56275 (not c!34657)) b!192325))

(assert (= (and b!192325 c!34654) b!192333))

(assert (= (and b!192325 (not c!34654)) b!192329))

(assert (= (or b!192333 b!192329) bm!19422))

(assert (= (and d!56275 res!90887) b!192328))

(assert (= (and b!192328 res!90889) b!192323))

(assert (= (and b!192323 res!90886) b!192331))

(assert (= (and b!192323 c!34655) b!192324))

(assert (= (and b!192323 (not c!34655)) b!192327))

(assert (= (and b!192324 res!90888) b!192330))

(assert (= (and b!192327 c!34656) b!192334))

(assert (= (and b!192327 (not c!34656)) b!192332))

(declare-fun b_lambda!7461 () Bool)

(assert (=> (not b_lambda!7461) (not b!192330)))

(assert (=> b!192330 t!7374))

(declare-fun b_and!11401 () Bool)

(assert (= b_and!11399 (and (=> t!7374 result!4917) b_and!11401)))

(declare-fun b_lambda!7463 () Bool)

(assert (=> (not b_lambda!7463) (not b!192333)))

(assert (=> b!192333 t!7374))

(declare-fun b_and!11403 () Bool)

(assert (= b_and!11401 (and (=> t!7374 result!4917) b_and!11403)))

(declare-fun m!219055 () Bool)

(assert (=> b!192334 m!219055))

(assert (=> b!192325 m!218923))

(assert (=> b!192325 m!218923))

(assert (=> b!192325 m!218963))

(assert (=> b!192324 m!218923))

(assert (=> b!192324 m!218923))

(declare-fun m!219057 () Bool)

(assert (=> b!192324 m!219057))

(declare-fun m!219059 () Bool)

(assert (=> b!192333 m!219059))

(declare-fun m!219061 () Bool)

(assert (=> b!192333 m!219061))

(declare-fun m!219063 () Bool)

(assert (=> b!192333 m!219063))

(assert (=> b!192333 m!218917))

(assert (=> b!192333 m!218919))

(assert (=> b!192333 m!218921))

(assert (=> b!192333 m!218919))

(declare-fun m!219065 () Bool)

(assert (=> b!192333 m!219065))

(assert (=> b!192333 m!219059))

(assert (=> b!192333 m!218923))

(assert (=> b!192333 m!218917))

(declare-fun m!219067 () Bool)

(assert (=> d!56275 m!219067))

(assert (=> d!56275 m!218823))

(declare-fun m!219069 () Bool)

(assert (=> b!192332 m!219069))

(assert (=> b!192330 m!218917))

(assert (=> b!192330 m!218919))

(assert (=> b!192330 m!218921))

(assert (=> b!192330 m!218919))

(assert (=> b!192330 m!218923))

(assert (=> b!192330 m!218917))

(assert (=> b!192330 m!218923))

(declare-fun m!219071 () Bool)

(assert (=> b!192330 m!219071))

(assert (=> bm!19422 m!219055))

(assert (=> b!192331 m!218923))

(assert (=> b!192331 m!218923))

(assert (=> b!192331 m!218963))

(declare-fun m!219073 () Bool)

(assert (=> b!192328 m!219073))

(assert (=> bm!19408 d!56275))

(declare-fun d!56277 () Bool)

(declare-fun get!2221 (Option!245) V!5595)

(assert (=> d!56277 (= (apply!183 lt!95618 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)) (get!2221 (getValueByKey!239 (toList!1247 lt!95618) (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7690 () Bool)

(assert (= bs!7690 d!56277))

(assert (=> bs!7690 m!218923))

(declare-fun m!219075 () Bool)

(assert (=> bs!7690 m!219075))

(assert (=> bs!7690 m!219075))

(declare-fun m!219077 () Bool)

(assert (=> bs!7690 m!219077))

(assert (=> b!192257 d!56277))

(declare-fun d!56279 () Bool)

(declare-fun c!34660 () Bool)

(assert (=> d!56279 (= c!34660 ((_ is ValueCellFull!1887) (select (arr!3845 (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248)))) #b00000000000000000000000000000000)))))

(declare-fun e!126570 () V!5595)

(assert (=> d!56279 (= (get!2220 (select (arr!3845 (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!521 (defaultEntry!3921 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!126570)))

(declare-fun b!192339 () Bool)

(declare-fun get!2222 (ValueCell!1887 V!5595) V!5595)

(assert (=> b!192339 (= e!126570 (get!2222 (select (arr!3845 (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!521 (defaultEntry!3921 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!192340 () Bool)

(declare-fun get!2223 (ValueCell!1887 V!5595) V!5595)

(assert (=> b!192340 (= e!126570 (get!2223 (select (arr!3845 (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!521 (defaultEntry!3921 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56279 c!34660) b!192339))

(assert (= (and d!56279 (not c!34660)) b!192340))

(assert (=> b!192339 m!218975))

(assert (=> b!192339 m!218919))

(declare-fun m!219079 () Bool)

(assert (=> b!192339 m!219079))

(assert (=> b!192340 m!218975))

(assert (=> b!192340 m!218919))

(declare-fun m!219081 () Bool)

(assert (=> b!192340 m!219081))

(assert (=> b!192257 d!56279))

(declare-fun b!192359 () Bool)

(declare-fun e!126585 () SeekEntryResult!691)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!192359 (= e!126585 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!9151 thiss!1248)) #b00000000000000000000000000000000 (mask!9151 thiss!1248)) key!828 (_keys!5903 thiss!1248) (mask!9151 thiss!1248)))))

(declare-fun b!192360 () Bool)

(declare-fun e!126584 () Bool)

(declare-fun lt!95679 () SeekEntryResult!691)

(assert (=> b!192360 (= e!126584 (bvsge (x!20589 lt!95679) #b01111111111111111111111111111110))))

(declare-fun b!192361 () Bool)

(assert (=> b!192361 (= e!126585 (Intermediate!691 false (toIndex!0 key!828 (mask!9151 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!192363 () Bool)

(declare-fun e!126583 () SeekEntryResult!691)

(assert (=> b!192363 (= e!126583 (Intermediate!691 true (toIndex!0 key!828 (mask!9151 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!192364 () Bool)

(declare-fun e!126582 () Bool)

(assert (=> b!192364 (= e!126584 e!126582)))

(declare-fun res!90896 () Bool)

(assert (=> b!192364 (= res!90896 (and ((_ is Intermediate!691) lt!95679) (not (undefined!1503 lt!95679)) (bvslt (x!20589 lt!95679) #b01111111111111111111111111111110) (bvsge (x!20589 lt!95679) #b00000000000000000000000000000000) (bvsge (x!20589 lt!95679) #b00000000000000000000000000000000)))))

(assert (=> b!192364 (=> (not res!90896) (not e!126582))))

(declare-fun b!192365 () Bool)

(assert (=> b!192365 (and (bvsge (index!4936 lt!95679) #b00000000000000000000000000000000) (bvslt (index!4936 lt!95679) (size!4167 (_keys!5903 thiss!1248))))))

(declare-fun res!90898 () Bool)

(assert (=> b!192365 (= res!90898 (= (select (arr!3844 (_keys!5903 thiss!1248)) (index!4936 lt!95679)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!126581 () Bool)

(assert (=> b!192365 (=> res!90898 e!126581)))

(declare-fun b!192366 () Bool)

(assert (=> b!192366 (and (bvsge (index!4936 lt!95679) #b00000000000000000000000000000000) (bvslt (index!4936 lt!95679) (size!4167 (_keys!5903 thiss!1248))))))

(assert (=> b!192366 (= e!126581 (= (select (arr!3844 (_keys!5903 thiss!1248)) (index!4936 lt!95679)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!192367 () Bool)

(assert (=> b!192367 (and (bvsge (index!4936 lt!95679) #b00000000000000000000000000000000) (bvslt (index!4936 lt!95679) (size!4167 (_keys!5903 thiss!1248))))))

(declare-fun res!90897 () Bool)

(assert (=> b!192367 (= res!90897 (= (select (arr!3844 (_keys!5903 thiss!1248)) (index!4936 lt!95679)) key!828))))

(assert (=> b!192367 (=> res!90897 e!126581)))

(assert (=> b!192367 (= e!126582 e!126581)))

(declare-fun b!192362 () Bool)

(assert (=> b!192362 (= e!126583 e!126585)))

(declare-fun c!34668 () Bool)

(declare-fun lt!95680 () (_ BitVec 64))

(assert (=> b!192362 (= c!34668 (or (= lt!95680 key!828) (= (bvadd lt!95680 lt!95680) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!56281 () Bool)

(assert (=> d!56281 e!126584))

(declare-fun c!34669 () Bool)

(assert (=> d!56281 (= c!34669 (and ((_ is Intermediate!691) lt!95679) (undefined!1503 lt!95679)))))

(assert (=> d!56281 (= lt!95679 e!126583)))

(declare-fun c!34667 () Bool)

(assert (=> d!56281 (= c!34667 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!56281 (= lt!95680 (select (arr!3844 (_keys!5903 thiss!1248)) (toIndex!0 key!828 (mask!9151 thiss!1248))))))

(assert (=> d!56281 (validMask!0 (mask!9151 thiss!1248))))

(assert (=> d!56281 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9151 thiss!1248)) key!828 (_keys!5903 thiss!1248) (mask!9151 thiss!1248)) lt!95679)))

(assert (= (and d!56281 c!34667) b!192363))

(assert (= (and d!56281 (not c!34667)) b!192362))

(assert (= (and b!192362 c!34668) b!192361))

(assert (= (and b!192362 (not c!34668)) b!192359))

(assert (= (and d!56281 c!34669) b!192360))

(assert (= (and d!56281 (not c!34669)) b!192364))

(assert (= (and b!192364 res!90896) b!192367))

(assert (= (and b!192367 (not res!90897)) b!192365))

(assert (= (and b!192365 (not res!90898)) b!192366))

(declare-fun m!219083 () Bool)

(assert (=> b!192367 m!219083))

(assert (=> b!192366 m!219083))

(assert (=> b!192359 m!219043))

(declare-fun m!219085 () Bool)

(assert (=> b!192359 m!219085))

(assert (=> b!192359 m!219085))

(declare-fun m!219087 () Bool)

(assert (=> b!192359 m!219087))

(assert (=> b!192365 m!219083))

(assert (=> d!56281 m!219043))

(declare-fun m!219089 () Bool)

(assert (=> d!56281 m!219089))

(assert (=> d!56281 m!218823))

(assert (=> d!56273 d!56281))

(declare-fun d!56283 () Bool)

(declare-fun lt!95686 () (_ BitVec 32))

(declare-fun lt!95685 () (_ BitVec 32))

(assert (=> d!56283 (= lt!95686 (bvmul (bvxor lt!95685 (bvlshr lt!95685 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!56283 (= lt!95685 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!56283 (and (bvsge (mask!9151 thiss!1248) #b00000000000000000000000000000000) (let ((res!90899 (let ((h!3086 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!20606 (bvmul (bvxor h!3086 (bvlshr h!3086 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!20606 (bvlshr x!20606 #b00000000000000000000000000001101)) (mask!9151 thiss!1248)))))) (and (bvslt res!90899 (bvadd (mask!9151 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!90899 #b00000000000000000000000000000000))))))

(assert (=> d!56283 (= (toIndex!0 key!828 (mask!9151 thiss!1248)) (bvand (bvxor lt!95686 (bvlshr lt!95686 #b00000000000000000000000000001101)) (mask!9151 thiss!1248)))))

(assert (=> d!56273 d!56283))

(assert (=> d!56273 d!56259))

(declare-fun d!56285 () Bool)

(declare-fun e!126586 () Bool)

(assert (=> d!56285 e!126586))

(declare-fun res!90900 () Bool)

(assert (=> d!56285 (=> (not res!90900) (not e!126586))))

(declare-fun lt!95688 () ListLongMap!2463)

(assert (=> d!56285 (= res!90900 (contains!1357 lt!95688 (_1!1776 (ite (or c!34630 c!34629) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))))))))

(declare-fun lt!95690 () List!2448)

(assert (=> d!56285 (= lt!95688 (ListLongMap!2464 lt!95690))))

(declare-fun lt!95689 () Unit!5808)

(declare-fun lt!95687 () Unit!5808)

(assert (=> d!56285 (= lt!95689 lt!95687)))

(assert (=> d!56285 (= (getValueByKey!239 lt!95690 (_1!1776 (ite (or c!34630 c!34629) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))))) (Some!244 (_2!1776 (ite (or c!34630 c!34629) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))))))))

(assert (=> d!56285 (= lt!95687 (lemmaContainsTupThenGetReturnValue!128 lt!95690 (_1!1776 (ite (or c!34630 c!34629) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))) (_2!1776 (ite (or c!34630 c!34629) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))))))))

(assert (=> d!56285 (= lt!95690 (insertStrictlySorted!130 (toList!1247 (ite c!34630 call!19417 (ite c!34629 call!19419 call!19422))) (_1!1776 (ite (or c!34630 c!34629) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))) (_2!1776 (ite (or c!34630 c!34629) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))))))))

(assert (=> d!56285 (= (+!305 (ite c!34630 call!19417 (ite c!34629 call!19419 call!19422)) (ite (or c!34630 c!34629) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))) lt!95688)))

(declare-fun b!192368 () Bool)

(declare-fun res!90901 () Bool)

(assert (=> b!192368 (=> (not res!90901) (not e!126586))))

(assert (=> b!192368 (= res!90901 (= (getValueByKey!239 (toList!1247 lt!95688) (_1!1776 (ite (or c!34630 c!34629) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))))) (Some!244 (_2!1776 (ite (or c!34630 c!34629) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))))))))

(declare-fun b!192369 () Bool)

(assert (=> b!192369 (= e!126586 (contains!1358 (toList!1247 lt!95688) (ite (or c!34630 c!34629) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))))))

(assert (= (and d!56285 res!90900) b!192368))

(assert (= (and b!192368 res!90901) b!192369))

(declare-fun m!219091 () Bool)

(assert (=> d!56285 m!219091))

(declare-fun m!219093 () Bool)

(assert (=> d!56285 m!219093))

(declare-fun m!219095 () Bool)

(assert (=> d!56285 m!219095))

(declare-fun m!219097 () Bool)

(assert (=> d!56285 m!219097))

(declare-fun m!219099 () Bool)

(assert (=> b!192368 m!219099))

(declare-fun m!219101 () Bool)

(assert (=> b!192369 m!219101))

(assert (=> bm!19419 d!56285))

(declare-fun d!56287 () Bool)

(assert (=> d!56287 (= (validKeyInArray!0 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!192227 d!56287))

(declare-fun d!56289 () Bool)

(declare-fun e!126588 () Bool)

(assert (=> d!56289 e!126588))

(declare-fun res!90902 () Bool)

(assert (=> d!56289 (=> res!90902 e!126588)))

(declare-fun lt!95692 () Bool)

(assert (=> d!56289 (= res!90902 (not lt!95692))))

(declare-fun lt!95694 () Bool)

(assert (=> d!56289 (= lt!95692 lt!95694)))

(declare-fun lt!95693 () Unit!5808)

(declare-fun e!126587 () Unit!5808)

(assert (=> d!56289 (= lt!95693 e!126587)))

(declare-fun c!34670 () Bool)

(assert (=> d!56289 (= c!34670 lt!95694)))

(assert (=> d!56289 (= lt!95694 (containsKey!243 (toList!1247 lt!95539) (_1!1776 (tuple2!3533 key!828 v!309))))))

(assert (=> d!56289 (= (contains!1357 lt!95539 (_1!1776 (tuple2!3533 key!828 v!309))) lt!95692)))

(declare-fun b!192370 () Bool)

(declare-fun lt!95691 () Unit!5808)

(assert (=> b!192370 (= e!126587 lt!95691)))

(assert (=> b!192370 (= lt!95691 (lemmaContainsKeyImpliesGetValueByKeyDefined!192 (toList!1247 lt!95539) (_1!1776 (tuple2!3533 key!828 v!309))))))

(assert (=> b!192370 (isDefined!193 (getValueByKey!239 (toList!1247 lt!95539) (_1!1776 (tuple2!3533 key!828 v!309))))))

(declare-fun b!192371 () Bool)

(declare-fun Unit!5817 () Unit!5808)

(assert (=> b!192371 (= e!126587 Unit!5817)))

(declare-fun b!192372 () Bool)

(assert (=> b!192372 (= e!126588 (isDefined!193 (getValueByKey!239 (toList!1247 lt!95539) (_1!1776 (tuple2!3533 key!828 v!309)))))))

(assert (= (and d!56289 c!34670) b!192370))

(assert (= (and d!56289 (not c!34670)) b!192371))

(assert (= (and d!56289 (not res!90902)) b!192372))

(declare-fun m!219103 () Bool)

(assert (=> d!56289 m!219103))

(declare-fun m!219105 () Bool)

(assert (=> b!192370 m!219105))

(assert (=> b!192370 m!218913))

(assert (=> b!192370 m!218913))

(declare-fun m!219107 () Bool)

(assert (=> b!192370 m!219107))

(assert (=> b!192372 m!218913))

(assert (=> b!192372 m!218913))

(assert (=> b!192372 m!219107))

(assert (=> d!56257 d!56289))

(declare-fun d!56291 () Bool)

(declare-fun c!34675 () Bool)

(assert (=> d!56291 (= c!34675 (and ((_ is Cons!2444) lt!95541) (= (_1!1776 (h!3084 lt!95541)) (_1!1776 (tuple2!3533 key!828 v!309)))))))

(declare-fun e!126593 () Option!245)

(assert (=> d!56291 (= (getValueByKey!239 lt!95541 (_1!1776 (tuple2!3533 key!828 v!309))) e!126593)))

(declare-fun b!192384 () Bool)

(declare-fun e!126594 () Option!245)

(assert (=> b!192384 (= e!126594 None!243)))

(declare-fun b!192381 () Bool)

(assert (=> b!192381 (= e!126593 (Some!244 (_2!1776 (h!3084 lt!95541))))))

(declare-fun b!192382 () Bool)

(assert (=> b!192382 (= e!126593 e!126594)))

(declare-fun c!34676 () Bool)

(assert (=> b!192382 (= c!34676 (and ((_ is Cons!2444) lt!95541) (not (= (_1!1776 (h!3084 lt!95541)) (_1!1776 (tuple2!3533 key!828 v!309))))))))

(declare-fun b!192383 () Bool)

(assert (=> b!192383 (= e!126594 (getValueByKey!239 (t!7372 lt!95541) (_1!1776 (tuple2!3533 key!828 v!309))))))

(assert (= (and d!56291 c!34675) b!192381))

(assert (= (and d!56291 (not c!34675)) b!192382))

(assert (= (and b!192382 c!34676) b!192383))

(assert (= (and b!192382 (not c!34676)) b!192384))

(declare-fun m!219109 () Bool)

(assert (=> b!192383 m!219109))

(assert (=> d!56257 d!56291))

(declare-fun d!56293 () Bool)

(assert (=> d!56293 (= (getValueByKey!239 lt!95541 (_1!1776 (tuple2!3533 key!828 v!309))) (Some!244 (_2!1776 (tuple2!3533 key!828 v!309))))))

(declare-fun lt!95697 () Unit!5808)

(declare-fun choose!1055 (List!2448 (_ BitVec 64) V!5595) Unit!5808)

(assert (=> d!56293 (= lt!95697 (choose!1055 lt!95541 (_1!1776 (tuple2!3533 key!828 v!309)) (_2!1776 (tuple2!3533 key!828 v!309))))))

(declare-fun e!126597 () Bool)

(assert (=> d!56293 e!126597))

(declare-fun res!90907 () Bool)

(assert (=> d!56293 (=> (not res!90907) (not e!126597))))

(declare-fun isStrictlySorted!351 (List!2448) Bool)

(assert (=> d!56293 (= res!90907 (isStrictlySorted!351 lt!95541))))

(assert (=> d!56293 (= (lemmaContainsTupThenGetReturnValue!128 lt!95541 (_1!1776 (tuple2!3533 key!828 v!309)) (_2!1776 (tuple2!3533 key!828 v!309))) lt!95697)))

(declare-fun b!192389 () Bool)

(declare-fun res!90908 () Bool)

(assert (=> b!192389 (=> (not res!90908) (not e!126597))))

(assert (=> b!192389 (= res!90908 (containsKey!243 lt!95541 (_1!1776 (tuple2!3533 key!828 v!309))))))

(declare-fun b!192390 () Bool)

(assert (=> b!192390 (= e!126597 (contains!1358 lt!95541 (tuple2!3533 (_1!1776 (tuple2!3533 key!828 v!309)) (_2!1776 (tuple2!3533 key!828 v!309)))))))

(assert (= (and d!56293 res!90907) b!192389))

(assert (= (and b!192389 res!90908) b!192390))

(assert (=> d!56293 m!218907))

(declare-fun m!219111 () Bool)

(assert (=> d!56293 m!219111))

(declare-fun m!219113 () Bool)

(assert (=> d!56293 m!219113))

(declare-fun m!219115 () Bool)

(assert (=> b!192389 m!219115))

(declare-fun m!219117 () Bool)

(assert (=> b!192390 m!219117))

(assert (=> d!56257 d!56293))

(declare-fun e!126608 () List!2448)

(declare-fun b!192411 () Bool)

(assert (=> b!192411 (= e!126608 (insertStrictlySorted!130 (t!7372 (toList!1247 lt!95498)) (_1!1776 (tuple2!3533 key!828 v!309)) (_2!1776 (tuple2!3533 key!828 v!309))))))

(declare-fun b!192412 () Bool)

(declare-fun e!126609 () List!2448)

(declare-fun call!19434 () List!2448)

(assert (=> b!192412 (= e!126609 call!19434)))

(declare-fun b!192413 () Bool)

(declare-fun e!126610 () List!2448)

(declare-fun e!126612 () List!2448)

(assert (=> b!192413 (= e!126610 e!126612)))

(declare-fun c!34686 () Bool)

(assert (=> b!192413 (= c!34686 (and ((_ is Cons!2444) (toList!1247 lt!95498)) (= (_1!1776 (h!3084 (toList!1247 lt!95498))) (_1!1776 (tuple2!3533 key!828 v!309)))))))

(declare-fun d!56295 () Bool)

(declare-fun e!126611 () Bool)

(assert (=> d!56295 e!126611))

(declare-fun res!90913 () Bool)

(assert (=> d!56295 (=> (not res!90913) (not e!126611))))

(declare-fun lt!95700 () List!2448)

(assert (=> d!56295 (= res!90913 (isStrictlySorted!351 lt!95700))))

(assert (=> d!56295 (= lt!95700 e!126610)))

(declare-fun c!34685 () Bool)

(assert (=> d!56295 (= c!34685 (and ((_ is Cons!2444) (toList!1247 lt!95498)) (bvslt (_1!1776 (h!3084 (toList!1247 lt!95498))) (_1!1776 (tuple2!3533 key!828 v!309)))))))

(assert (=> d!56295 (isStrictlySorted!351 (toList!1247 lt!95498))))

(assert (=> d!56295 (= (insertStrictlySorted!130 (toList!1247 lt!95498) (_1!1776 (tuple2!3533 key!828 v!309)) (_2!1776 (tuple2!3533 key!828 v!309))) lt!95700)))

(declare-fun b!192414 () Bool)

(assert (=> b!192414 (= e!126609 call!19434)))

(declare-fun c!34688 () Bool)

(declare-fun b!192415 () Bool)

(assert (=> b!192415 (= e!126608 (ite c!34686 (t!7372 (toList!1247 lt!95498)) (ite c!34688 (Cons!2444 (h!3084 (toList!1247 lt!95498)) (t!7372 (toList!1247 lt!95498))) Nil!2445)))))

(declare-fun b!192416 () Bool)

(declare-fun call!19433 () List!2448)

(assert (=> b!192416 (= e!126610 call!19433)))

(declare-fun b!192417 () Bool)

(assert (=> b!192417 (= c!34688 (and ((_ is Cons!2444) (toList!1247 lt!95498)) (bvsgt (_1!1776 (h!3084 (toList!1247 lt!95498))) (_1!1776 (tuple2!3533 key!828 v!309)))))))

(assert (=> b!192417 (= e!126612 e!126609)))

(declare-fun b!192418 () Bool)

(declare-fun call!19432 () List!2448)

(assert (=> b!192418 (= e!126612 call!19432)))

(declare-fun bm!19429 () Bool)

(assert (=> bm!19429 (= call!19432 call!19433)))

(declare-fun b!192419 () Bool)

(assert (=> b!192419 (= e!126611 (contains!1358 lt!95700 (tuple2!3533 (_1!1776 (tuple2!3533 key!828 v!309)) (_2!1776 (tuple2!3533 key!828 v!309)))))))

(declare-fun b!192420 () Bool)

(declare-fun res!90914 () Bool)

(assert (=> b!192420 (=> (not res!90914) (not e!126611))))

(assert (=> b!192420 (= res!90914 (containsKey!243 lt!95700 (_1!1776 (tuple2!3533 key!828 v!309))))))

(declare-fun bm!19430 () Bool)

(declare-fun $colon$colon!101 (List!2448 tuple2!3532) List!2448)

(assert (=> bm!19430 (= call!19433 ($colon$colon!101 e!126608 (ite c!34685 (h!3084 (toList!1247 lt!95498)) (tuple2!3533 (_1!1776 (tuple2!3533 key!828 v!309)) (_2!1776 (tuple2!3533 key!828 v!309))))))))

(declare-fun c!34687 () Bool)

(assert (=> bm!19430 (= c!34687 c!34685)))

(declare-fun bm!19431 () Bool)

(assert (=> bm!19431 (= call!19434 call!19432)))

(assert (= (and d!56295 c!34685) b!192416))

(assert (= (and d!56295 (not c!34685)) b!192413))

(assert (= (and b!192413 c!34686) b!192418))

(assert (= (and b!192413 (not c!34686)) b!192417))

(assert (= (and b!192417 c!34688) b!192414))

(assert (= (and b!192417 (not c!34688)) b!192412))

(assert (= (or b!192414 b!192412) bm!19431))

(assert (= (or b!192418 bm!19431) bm!19429))

(assert (= (or b!192416 bm!19429) bm!19430))

(assert (= (and bm!19430 c!34687) b!192411))

(assert (= (and bm!19430 (not c!34687)) b!192415))

(assert (= (and d!56295 res!90913) b!192420))

(assert (= (and b!192420 res!90914) b!192419))

(declare-fun m!219119 () Bool)

(assert (=> bm!19430 m!219119))

(declare-fun m!219121 () Bool)

(assert (=> b!192411 m!219121))

(declare-fun m!219123 () Bool)

(assert (=> b!192419 m!219123))

(declare-fun m!219125 () Bool)

(assert (=> d!56295 m!219125))

(declare-fun m!219127 () Bool)

(assert (=> d!56295 m!219127))

(declare-fun m!219129 () Bool)

(assert (=> b!192420 m!219129))

(assert (=> d!56257 d!56295))

(declare-fun d!56297 () Bool)

(declare-fun e!126614 () Bool)

(assert (=> d!56297 e!126614))

(declare-fun res!90915 () Bool)

(assert (=> d!56297 (=> res!90915 e!126614)))

(declare-fun lt!95702 () Bool)

(assert (=> d!56297 (= res!90915 (not lt!95702))))

(declare-fun lt!95704 () Bool)

(assert (=> d!56297 (= lt!95702 lt!95704)))

(declare-fun lt!95703 () Unit!5808)

(declare-fun e!126613 () Unit!5808)

(assert (=> d!56297 (= lt!95703 e!126613)))

(declare-fun c!34689 () Bool)

(assert (=> d!56297 (= c!34689 lt!95704)))

(assert (=> d!56297 (= lt!95704 (containsKey!243 (toList!1247 lt!95618) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!56297 (= (contains!1357 lt!95618 #b1000000000000000000000000000000000000000000000000000000000000000) lt!95702)))

(declare-fun b!192421 () Bool)

(declare-fun lt!95701 () Unit!5808)

(assert (=> b!192421 (= e!126613 lt!95701)))

(assert (=> b!192421 (= lt!95701 (lemmaContainsKeyImpliesGetValueByKeyDefined!192 (toList!1247 lt!95618) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!192421 (isDefined!193 (getValueByKey!239 (toList!1247 lt!95618) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!192422 () Bool)

(declare-fun Unit!5818 () Unit!5808)

(assert (=> b!192422 (= e!126613 Unit!5818)))

(declare-fun b!192423 () Bool)

(assert (=> b!192423 (= e!126614 (isDefined!193 (getValueByKey!239 (toList!1247 lt!95618) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56297 c!34689) b!192421))

(assert (= (and d!56297 (not c!34689)) b!192422))

(assert (= (and d!56297 (not res!90915)) b!192423))

(declare-fun m!219131 () Bool)

(assert (=> d!56297 m!219131))

(declare-fun m!219133 () Bool)

(assert (=> b!192421 m!219133))

(declare-fun m!219135 () Bool)

(assert (=> b!192421 m!219135))

(assert (=> b!192421 m!219135))

(declare-fun m!219137 () Bool)

(assert (=> b!192421 m!219137))

(assert (=> b!192423 m!219135))

(assert (=> b!192423 m!219135))

(assert (=> b!192423 m!219137))

(assert (=> bm!19418 d!56297))

(declare-fun d!56299 () Bool)

(declare-fun res!90920 () Bool)

(declare-fun e!126619 () Bool)

(assert (=> d!56299 (=> res!90920 e!126619)))

(assert (=> d!56299 (= res!90920 (and ((_ is Cons!2444) (toList!1247 lt!95498)) (= (_1!1776 (h!3084 (toList!1247 lt!95498))) key!828)))))

(assert (=> d!56299 (= (containsKey!243 (toList!1247 lt!95498) key!828) e!126619)))

(declare-fun b!192428 () Bool)

(declare-fun e!126620 () Bool)

(assert (=> b!192428 (= e!126619 e!126620)))

(declare-fun res!90921 () Bool)

(assert (=> b!192428 (=> (not res!90921) (not e!126620))))

(assert (=> b!192428 (= res!90921 (and (or (not ((_ is Cons!2444) (toList!1247 lt!95498))) (bvsle (_1!1776 (h!3084 (toList!1247 lt!95498))) key!828)) ((_ is Cons!2444) (toList!1247 lt!95498)) (bvslt (_1!1776 (h!3084 (toList!1247 lt!95498))) key!828)))))

(declare-fun b!192429 () Bool)

(assert (=> b!192429 (= e!126620 (containsKey!243 (t!7372 (toList!1247 lt!95498)) key!828))))

(assert (= (and d!56299 (not res!90920)) b!192428))

(assert (= (and b!192428 res!90921) b!192429))

(declare-fun m!219139 () Bool)

(assert (=> b!192429 m!219139))

(assert (=> d!56265 d!56299))

(declare-fun d!56301 () Bool)

(assert (=> d!56301 (= (apply!183 lt!95596 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2221 (getValueByKey!239 (toList!1247 lt!95596) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7691 () Bool)

(assert (= bs!7691 d!56301))

(declare-fun m!219141 () Bool)

(assert (=> bs!7691 m!219141))

(assert (=> bs!7691 m!219141))

(declare-fun m!219143 () Bool)

(assert (=> bs!7691 m!219143))

(assert (=> b!192225 d!56301))

(declare-fun c!34690 () Bool)

(declare-fun d!56303 () Bool)

(assert (=> d!56303 (= c!34690 (and ((_ is Cons!2444) (toList!1247 lt!95539)) (= (_1!1776 (h!3084 (toList!1247 lt!95539))) (_1!1776 (tuple2!3533 key!828 v!309)))))))

(declare-fun e!126621 () Option!245)

(assert (=> d!56303 (= (getValueByKey!239 (toList!1247 lt!95539) (_1!1776 (tuple2!3533 key!828 v!309))) e!126621)))

(declare-fun b!192433 () Bool)

(declare-fun e!126622 () Option!245)

(assert (=> b!192433 (= e!126622 None!243)))

(declare-fun b!192430 () Bool)

(assert (=> b!192430 (= e!126621 (Some!244 (_2!1776 (h!3084 (toList!1247 lt!95539)))))))

(declare-fun b!192431 () Bool)

(assert (=> b!192431 (= e!126621 e!126622)))

(declare-fun c!34691 () Bool)

(assert (=> b!192431 (= c!34691 (and ((_ is Cons!2444) (toList!1247 lt!95539)) (not (= (_1!1776 (h!3084 (toList!1247 lt!95539))) (_1!1776 (tuple2!3533 key!828 v!309))))))))

(declare-fun b!192432 () Bool)

(assert (=> b!192432 (= e!126622 (getValueByKey!239 (t!7372 (toList!1247 lt!95539)) (_1!1776 (tuple2!3533 key!828 v!309))))))

(assert (= (and d!56303 c!34690) b!192430))

(assert (= (and d!56303 (not c!34690)) b!192431))

(assert (= (and b!192431 c!34691) b!192432))

(assert (= (and b!192431 (not c!34691)) b!192433))

(declare-fun m!219145 () Bool)

(assert (=> b!192432 m!219145))

(assert (=> b!192173 d!56303))

(declare-fun d!56305 () Bool)

(assert (=> d!56305 (= (apply!183 lt!95618 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2221 (getValueByKey!239 (toList!1247 lt!95618) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7692 () Bool)

(assert (= bs!7692 d!56305))

(assert (=> bs!7692 m!219135))

(assert (=> bs!7692 m!219135))

(declare-fun m!219147 () Bool)

(assert (=> bs!7692 m!219147))

(assert (=> b!192247 d!56305))

(declare-fun b!192444 () Bool)

(declare-fun e!126633 () Bool)

(declare-fun e!126632 () Bool)

(assert (=> b!192444 (= e!126633 e!126632)))

(declare-fun c!34694 () Bool)

(assert (=> b!192444 (= c!34694 (validKeyInArray!0 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!56307 () Bool)

(declare-fun res!90928 () Bool)

(declare-fun e!126631 () Bool)

(assert (=> d!56307 (=> res!90928 e!126631)))

(assert (=> d!56307 (= res!90928 (bvsge #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(assert (=> d!56307 (= (arrayNoDuplicates!0 (_keys!5903 thiss!1248) #b00000000000000000000000000000000 Nil!2446) e!126631)))

(declare-fun b!192445 () Bool)

(declare-fun e!126634 () Bool)

(declare-fun contains!1359 (List!2449 (_ BitVec 64)) Bool)

(assert (=> b!192445 (= e!126634 (contains!1359 Nil!2446 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!192446 () Bool)

(assert (=> b!192446 (= e!126631 e!126633)))

(declare-fun res!90929 () Bool)

(assert (=> b!192446 (=> (not res!90929) (not e!126633))))

(assert (=> b!192446 (= res!90929 (not e!126634))))

(declare-fun res!90930 () Bool)

(assert (=> b!192446 (=> (not res!90930) (not e!126634))))

(assert (=> b!192446 (= res!90930 (validKeyInArray!0 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!192447 () Bool)

(declare-fun call!19437 () Bool)

(assert (=> b!192447 (= e!126632 call!19437)))

(declare-fun b!192448 () Bool)

(assert (=> b!192448 (= e!126632 call!19437)))

(declare-fun bm!19434 () Bool)

(assert (=> bm!19434 (= call!19437 (arrayNoDuplicates!0 (_keys!5903 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!34694 (Cons!2445 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000) Nil!2446) Nil!2446)))))

(assert (= (and d!56307 (not res!90928)) b!192446))

(assert (= (and b!192446 res!90930) b!192445))

(assert (= (and b!192446 res!90929) b!192444))

(assert (= (and b!192444 c!34694) b!192447))

(assert (= (and b!192444 (not c!34694)) b!192448))

(assert (= (or b!192447 b!192448) bm!19434))

(assert (=> b!192444 m!218923))

(assert (=> b!192444 m!218923))

(assert (=> b!192444 m!218963))

(assert (=> b!192445 m!218923))

(assert (=> b!192445 m!218923))

(declare-fun m!219149 () Bool)

(assert (=> b!192445 m!219149))

(assert (=> b!192446 m!218923))

(assert (=> b!192446 m!218923))

(assert (=> b!192446 m!218963))

(assert (=> bm!19434 m!218923))

(declare-fun m!219151 () Bool)

(assert (=> bm!19434 m!219151))

(assert (=> b!192162 d!56307))

(declare-fun b!192457 () Bool)

(declare-fun e!126641 () Bool)

(declare-fun e!126642 () Bool)

(assert (=> b!192457 (= e!126641 e!126642)))

(declare-fun lt!95711 () (_ BitVec 64))

(assert (=> b!192457 (= lt!95711 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95712 () Unit!5808)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!8162 (_ BitVec 64) (_ BitVec 32)) Unit!5808)

(assert (=> b!192457 (= lt!95712 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5903 thiss!1248) lt!95711 #b00000000000000000000000000000000))))

(assert (=> b!192457 (arrayContainsKey!0 (_keys!5903 thiss!1248) lt!95711 #b00000000000000000000000000000000)))

(declare-fun lt!95713 () Unit!5808)

(assert (=> b!192457 (= lt!95713 lt!95712)))

(declare-fun res!90936 () Bool)

(assert (=> b!192457 (= res!90936 (= (seekEntryOrOpen!0 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000) (_keys!5903 thiss!1248) (mask!9151 thiss!1248)) (Found!691 #b00000000000000000000000000000000)))))

(assert (=> b!192457 (=> (not res!90936) (not e!126642))))

(declare-fun b!192458 () Bool)

(declare-fun call!19440 () Bool)

(assert (=> b!192458 (= e!126641 call!19440)))

(declare-fun d!56309 () Bool)

(declare-fun res!90935 () Bool)

(declare-fun e!126643 () Bool)

(assert (=> d!56309 (=> res!90935 e!126643)))

(assert (=> d!56309 (= res!90935 (bvsge #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(assert (=> d!56309 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5903 thiss!1248) (mask!9151 thiss!1248)) e!126643)))

(declare-fun b!192459 () Bool)

(assert (=> b!192459 (= e!126643 e!126641)))

(declare-fun c!34697 () Bool)

(assert (=> b!192459 (= c!34697 (validKeyInArray!0 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!192460 () Bool)

(assert (=> b!192460 (= e!126642 call!19440)))

(declare-fun bm!19437 () Bool)

(assert (=> bm!19437 (= call!19440 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5903 thiss!1248) (mask!9151 thiss!1248)))))

(assert (= (and d!56309 (not res!90935)) b!192459))

(assert (= (and b!192459 c!34697) b!192457))

(assert (= (and b!192459 (not c!34697)) b!192458))

(assert (= (and b!192457 res!90936) b!192460))

(assert (= (or b!192460 b!192458) bm!19437))

(assert (=> b!192457 m!218923))

(declare-fun m!219153 () Bool)

(assert (=> b!192457 m!219153))

(declare-fun m!219155 () Bool)

(assert (=> b!192457 m!219155))

(assert (=> b!192457 m!218923))

(declare-fun m!219157 () Bool)

(assert (=> b!192457 m!219157))

(assert (=> b!192459 m!218923))

(assert (=> b!192459 m!218923))

(assert (=> b!192459 m!218963))

(declare-fun m!219159 () Bool)

(assert (=> bm!19437 m!219159))

(assert (=> b!192161 d!56309))

(declare-fun d!56311 () Bool)

(declare-fun e!126644 () Bool)

(assert (=> d!56311 e!126644))

(declare-fun res!90937 () Bool)

(assert (=> d!56311 (=> (not res!90937) (not e!126644))))

(declare-fun lt!95715 () ListLongMap!2463)

(assert (=> d!56311 (= res!90937 (contains!1357 lt!95715 (_1!1776 (tuple2!3533 key!828 v!309))))))

(declare-fun lt!95717 () List!2448)

(assert (=> d!56311 (= lt!95715 (ListLongMap!2464 lt!95717))))

(declare-fun lt!95716 () Unit!5808)

(declare-fun lt!95714 () Unit!5808)

(assert (=> d!56311 (= lt!95716 lt!95714)))

(assert (=> d!56311 (= (getValueByKey!239 lt!95717 (_1!1776 (tuple2!3533 key!828 v!309))) (Some!244 (_2!1776 (tuple2!3533 key!828 v!309))))))

(assert (=> d!56311 (= lt!95714 (lemmaContainsTupThenGetReturnValue!128 lt!95717 (_1!1776 (tuple2!3533 key!828 v!309)) (_2!1776 (tuple2!3533 key!828 v!309))))))

(assert (=> d!56311 (= lt!95717 (insertStrictlySorted!130 (toList!1247 (getCurrentListMap!890 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248))) (_1!1776 (tuple2!3533 key!828 v!309)) (_2!1776 (tuple2!3533 key!828 v!309))))))

(assert (=> d!56311 (= (+!305 (getCurrentListMap!890 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)) (tuple2!3533 key!828 v!309)) lt!95715)))

(declare-fun b!192461 () Bool)

(declare-fun res!90938 () Bool)

(assert (=> b!192461 (=> (not res!90938) (not e!126644))))

(assert (=> b!192461 (= res!90938 (= (getValueByKey!239 (toList!1247 lt!95715) (_1!1776 (tuple2!3533 key!828 v!309))) (Some!244 (_2!1776 (tuple2!3533 key!828 v!309)))))))

(declare-fun b!192462 () Bool)

(assert (=> b!192462 (= e!126644 (contains!1358 (toList!1247 lt!95715) (tuple2!3533 key!828 v!309)))))

(assert (= (and d!56311 res!90937) b!192461))

(assert (= (and b!192461 res!90938) b!192462))

(declare-fun m!219161 () Bool)

(assert (=> d!56311 m!219161))

(declare-fun m!219163 () Bool)

(assert (=> d!56311 m!219163))

(declare-fun m!219165 () Bool)

(assert (=> d!56311 m!219165))

(declare-fun m!219167 () Bool)

(assert (=> d!56311 m!219167))

(declare-fun m!219169 () Bool)

(assert (=> b!192461 m!219169))

(declare-fun m!219171 () Bool)

(assert (=> b!192462 m!219171))

(assert (=> b!192272 d!56311))

(assert (=> b!192272 d!56261))

(assert (=> b!192272 d!56263))

(assert (=> d!56261 d!56259))

(assert (=> d!56263 d!56259))

(declare-fun d!56313 () Bool)

(declare-fun e!126646 () Bool)

(assert (=> d!56313 e!126646))

(declare-fun res!90939 () Bool)

(assert (=> d!56313 (=> res!90939 e!126646)))

(declare-fun lt!95719 () Bool)

(assert (=> d!56313 (= res!90939 (not lt!95719))))

(declare-fun lt!95721 () Bool)

(assert (=> d!56313 (= lt!95719 lt!95721)))

(declare-fun lt!95720 () Unit!5808)

(declare-fun e!126645 () Unit!5808)

(assert (=> d!56313 (= lt!95720 e!126645)))

(declare-fun c!34698 () Bool)

(assert (=> d!56313 (= c!34698 lt!95721)))

(assert (=> d!56313 (= lt!95721 (containsKey!243 (toList!1247 lt!95618) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!56313 (= (contains!1357 lt!95618 #b0000000000000000000000000000000000000000000000000000000000000000) lt!95719)))

(declare-fun b!192463 () Bool)

(declare-fun lt!95718 () Unit!5808)

(assert (=> b!192463 (= e!126645 lt!95718)))

(assert (=> b!192463 (= lt!95718 (lemmaContainsKeyImpliesGetValueByKeyDefined!192 (toList!1247 lt!95618) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!192463 (isDefined!193 (getValueByKey!239 (toList!1247 lt!95618) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!192464 () Bool)

(declare-fun Unit!5819 () Unit!5808)

(assert (=> b!192464 (= e!126645 Unit!5819)))

(declare-fun b!192465 () Bool)

(assert (=> b!192465 (= e!126646 (isDefined!193 (getValueByKey!239 (toList!1247 lt!95618) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56313 c!34698) b!192463))

(assert (= (and d!56313 (not c!34698)) b!192464))

(assert (= (and d!56313 (not res!90939)) b!192465))

(declare-fun m!219173 () Bool)

(assert (=> d!56313 m!219173))

(declare-fun m!219175 () Bool)

(assert (=> b!192463 m!219175))

(declare-fun m!219177 () Bool)

(assert (=> b!192463 m!219177))

(assert (=> b!192463 m!219177))

(declare-fun m!219179 () Bool)

(assert (=> b!192463 m!219179))

(assert (=> b!192465 m!219177))

(assert (=> b!192465 m!219177))

(assert (=> b!192465 m!219179))

(assert (=> bm!19413 d!56313))

(declare-fun bm!19440 () Bool)

(declare-fun call!19443 () (_ BitVec 32))

(assert (=> bm!19440 (= call!19443 (arrayCountValidKeys!0 (_keys!5903 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4167 (_keys!5903 thiss!1248))))))

(declare-fun d!56315 () Bool)

(declare-fun lt!95724 () (_ BitVec 32))

(assert (=> d!56315 (and (bvsge lt!95724 #b00000000000000000000000000000000) (bvsle lt!95724 (bvsub (size!4167 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!126651 () (_ BitVec 32))

(assert (=> d!56315 (= lt!95724 e!126651)))

(declare-fun c!34704 () Bool)

(assert (=> d!56315 (= c!34704 (bvsge #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(assert (=> d!56315 (and (bvsle #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!4167 (_keys!5903 thiss!1248)) (size!4167 (_keys!5903 thiss!1248))))))

(assert (=> d!56315 (= (arrayCountValidKeys!0 (_keys!5903 thiss!1248) #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))) lt!95724)))

(declare-fun b!192474 () Bool)

(declare-fun e!126652 () (_ BitVec 32))

(assert (=> b!192474 (= e!126651 e!126652)))

(declare-fun c!34703 () Bool)

(assert (=> b!192474 (= c!34703 (validKeyInArray!0 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!192475 () Bool)

(assert (=> b!192475 (= e!126652 call!19443)))

(declare-fun b!192476 () Bool)

(assert (=> b!192476 (= e!126651 #b00000000000000000000000000000000)))

(declare-fun b!192477 () Bool)

(assert (=> b!192477 (= e!126652 (bvadd #b00000000000000000000000000000001 call!19443))))

(assert (= (and d!56315 c!34704) b!192476))

(assert (= (and d!56315 (not c!34704)) b!192474))

(assert (= (and b!192474 c!34703) b!192477))

(assert (= (and b!192474 (not c!34703)) b!192475))

(assert (= (or b!192477 b!192475) bm!19440))

(declare-fun m!219181 () Bool)

(assert (=> bm!19440 m!219181))

(assert (=> b!192474 m!218923))

(assert (=> b!192474 m!218923))

(assert (=> b!192474 m!218963))

(assert (=> b!192160 d!56315))

(declare-fun d!56317 () Bool)

(assert (=> d!56317 (= (apply!183 (+!305 lt!95621 (tuple2!3533 lt!95611 (minValue!3762 thiss!1248))) lt!95612) (get!2221 (getValueByKey!239 (toList!1247 (+!305 lt!95621 (tuple2!3533 lt!95611 (minValue!3762 thiss!1248)))) lt!95612)))))

(declare-fun bs!7693 () Bool)

(assert (= bs!7693 d!56317))

(declare-fun m!219183 () Bool)

(assert (=> bs!7693 m!219183))

(assert (=> bs!7693 m!219183))

(declare-fun m!219185 () Bool)

(assert (=> bs!7693 m!219185))

(assert (=> b!192245 d!56317))

(declare-fun d!56319 () Bool)

(assert (=> d!56319 (= (apply!183 lt!95617 lt!95623) (get!2221 (getValueByKey!239 (toList!1247 lt!95617) lt!95623)))))

(declare-fun bs!7694 () Bool)

(assert (= bs!7694 d!56319))

(declare-fun m!219187 () Bool)

(assert (=> bs!7694 m!219187))

(assert (=> bs!7694 m!219187))

(declare-fun m!219189 () Bool)

(assert (=> bs!7694 m!219189))

(assert (=> b!192245 d!56319))

(declare-fun d!56321 () Bool)

(declare-fun e!126653 () Bool)

(assert (=> d!56321 e!126653))

(declare-fun res!90940 () Bool)

(assert (=> d!56321 (=> (not res!90940) (not e!126653))))

(declare-fun lt!95726 () ListLongMap!2463)

(assert (=> d!56321 (= res!90940 (contains!1357 lt!95726 (_1!1776 (tuple2!3533 lt!95613 (zeroValue!3762 thiss!1248)))))))

(declare-fun lt!95728 () List!2448)

(assert (=> d!56321 (= lt!95726 (ListLongMap!2464 lt!95728))))

(declare-fun lt!95727 () Unit!5808)

(declare-fun lt!95725 () Unit!5808)

(assert (=> d!56321 (= lt!95727 lt!95725)))

(assert (=> d!56321 (= (getValueByKey!239 lt!95728 (_1!1776 (tuple2!3533 lt!95613 (zeroValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 lt!95613 (zeroValue!3762 thiss!1248)))))))

(assert (=> d!56321 (= lt!95725 (lemmaContainsTupThenGetReturnValue!128 lt!95728 (_1!1776 (tuple2!3533 lt!95613 (zeroValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 lt!95613 (zeroValue!3762 thiss!1248)))))))

(assert (=> d!56321 (= lt!95728 (insertStrictlySorted!130 (toList!1247 lt!95626) (_1!1776 (tuple2!3533 lt!95613 (zeroValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 lt!95613 (zeroValue!3762 thiss!1248)))))))

(assert (=> d!56321 (= (+!305 lt!95626 (tuple2!3533 lt!95613 (zeroValue!3762 thiss!1248))) lt!95726)))

(declare-fun b!192478 () Bool)

(declare-fun res!90941 () Bool)

(assert (=> b!192478 (=> (not res!90941) (not e!126653))))

(assert (=> b!192478 (= res!90941 (= (getValueByKey!239 (toList!1247 lt!95726) (_1!1776 (tuple2!3533 lt!95613 (zeroValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 lt!95613 (zeroValue!3762 thiss!1248))))))))

(declare-fun b!192479 () Bool)

(assert (=> b!192479 (= e!126653 (contains!1358 (toList!1247 lt!95726) (tuple2!3533 lt!95613 (zeroValue!3762 thiss!1248))))))

(assert (= (and d!56321 res!90940) b!192478))

(assert (= (and b!192478 res!90941) b!192479))

(declare-fun m!219191 () Bool)

(assert (=> d!56321 m!219191))

(declare-fun m!219193 () Bool)

(assert (=> d!56321 m!219193))

(declare-fun m!219195 () Bool)

(assert (=> d!56321 m!219195))

(declare-fun m!219197 () Bool)

(assert (=> d!56321 m!219197))

(declare-fun m!219199 () Bool)

(assert (=> b!192478 m!219199))

(declare-fun m!219201 () Bool)

(assert (=> b!192479 m!219201))

(assert (=> b!192245 d!56321))

(declare-fun d!56323 () Bool)

(assert (=> d!56323 (= (apply!183 (+!305 lt!95621 (tuple2!3533 lt!95611 (minValue!3762 thiss!1248))) lt!95612) (apply!183 lt!95621 lt!95612))))

(declare-fun lt!95731 () Unit!5808)

(declare-fun choose!1056 (ListLongMap!2463 (_ BitVec 64) V!5595 (_ BitVec 64)) Unit!5808)

(assert (=> d!56323 (= lt!95731 (choose!1056 lt!95621 lt!95611 (minValue!3762 thiss!1248) lt!95612))))

(declare-fun e!126656 () Bool)

(assert (=> d!56323 e!126656))

(declare-fun res!90944 () Bool)

(assert (=> d!56323 (=> (not res!90944) (not e!126656))))

(assert (=> d!56323 (= res!90944 (contains!1357 lt!95621 lt!95612))))

(assert (=> d!56323 (= (addApplyDifferent!159 lt!95621 lt!95611 (minValue!3762 thiss!1248) lt!95612) lt!95731)))

(declare-fun b!192483 () Bool)

(assert (=> b!192483 (= e!126656 (not (= lt!95612 lt!95611)))))

(assert (= (and d!56323 res!90944) b!192483))

(assert (=> d!56323 m!219011))

(assert (=> d!56323 m!219013))

(assert (=> d!56323 m!219011))

(declare-fun m!219203 () Bool)

(assert (=> d!56323 m!219203))

(assert (=> d!56323 m!219009))

(declare-fun m!219205 () Bool)

(assert (=> d!56323 m!219205))

(assert (=> b!192245 d!56323))

(declare-fun b!192484 () Bool)

(declare-fun e!126661 () Bool)

(declare-fun e!126662 () Bool)

(assert (=> b!192484 (= e!126661 e!126662)))

(declare-fun c!34706 () Bool)

(declare-fun e!126663 () Bool)

(assert (=> b!192484 (= c!34706 e!126663)))

(declare-fun res!90945 () Bool)

(assert (=> b!192484 (=> (not res!90945) (not e!126663))))

(assert (=> b!192484 (= res!90945 (bvslt #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(declare-fun b!192485 () Bool)

(declare-fun e!126660 () Bool)

(assert (=> b!192485 (= e!126662 e!126660)))

(assert (=> b!192485 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(declare-fun res!90947 () Bool)

(declare-fun lt!95733 () ListLongMap!2463)

(assert (=> b!192485 (= res!90947 (contains!1357 lt!95733 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!192485 (=> (not res!90947) (not e!126660))))

(declare-fun b!192486 () Bool)

(declare-fun e!126659 () ListLongMap!2463)

(declare-fun e!126658 () ListLongMap!2463)

(assert (=> b!192486 (= e!126659 e!126658)))

(declare-fun c!34705 () Bool)

(assert (=> b!192486 (= c!34705 (validKeyInArray!0 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!19441 () Bool)

(declare-fun call!19444 () ListLongMap!2463)

(assert (=> bm!19441 (= call!19444 (getCurrentListMapNoExtraKeys!213 (_keys!5903 thiss!1248) (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248))) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3921 thiss!1248)))))

(declare-fun b!192487 () Bool)

(assert (=> b!192487 (= e!126659 (ListLongMap!2464 Nil!2445))))

(declare-fun b!192488 () Bool)

(declare-fun e!126657 () Bool)

(assert (=> b!192488 (= e!126662 e!126657)))

(declare-fun c!34707 () Bool)

(assert (=> b!192488 (= c!34707 (bvslt #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(declare-fun b!192489 () Bool)

(declare-fun res!90948 () Bool)

(assert (=> b!192489 (=> (not res!90948) (not e!126661))))

(assert (=> b!192489 (= res!90948 (not (contains!1357 lt!95733 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!192490 () Bool)

(assert (=> b!192490 (= e!126658 call!19444)))

(declare-fun b!192491 () Bool)

(assert (=> b!192491 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(assert (=> b!192491 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4168 (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248))))))))

(assert (=> b!192491 (= e!126660 (= (apply!183 lt!95733 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)) (get!2220 (select (arr!3845 (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!521 (defaultEntry!3921 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!192492 () Bool)

(assert (=> b!192492 (= e!126663 (validKeyInArray!0 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!192492 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!56325 () Bool)

(assert (=> d!56325 e!126661))

(declare-fun res!90946 () Bool)

(assert (=> d!56325 (=> (not res!90946) (not e!126661))))

(assert (=> d!56325 (= res!90946 (not (contains!1357 lt!95733 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!56325 (= lt!95733 e!126659)))

(declare-fun c!34708 () Bool)

(assert (=> d!56325 (= c!34708 (bvsge #b00000000000000000000000000000000 (size!4167 (_keys!5903 thiss!1248))))))

(assert (=> d!56325 (validMask!0 (mask!9151 thiss!1248))))

(assert (=> d!56325 (= (getCurrentListMapNoExtraKeys!213 (_keys!5903 thiss!1248) (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248))) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)) lt!95733)))

(declare-fun b!192493 () Bool)

(assert (=> b!192493 (= e!126657 (isEmpty!490 lt!95733))))

(declare-fun b!192494 () Bool)

(declare-fun lt!95735 () Unit!5808)

(declare-fun lt!95732 () Unit!5808)

(assert (=> b!192494 (= lt!95735 lt!95732)))

(declare-fun lt!95736 () (_ BitVec 64))

(declare-fun lt!95737 () V!5595)

(declare-fun lt!95738 () (_ BitVec 64))

(declare-fun lt!95734 () ListLongMap!2463)

(assert (=> b!192494 (not (contains!1357 (+!305 lt!95734 (tuple2!3533 lt!95738 lt!95737)) lt!95736))))

(assert (=> b!192494 (= lt!95732 (addStillNotContains!98 lt!95734 lt!95738 lt!95737 lt!95736))))

(assert (=> b!192494 (= lt!95736 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!192494 (= lt!95737 (get!2220 (select (arr!3845 (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!521 (defaultEntry!3921 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!192494 (= lt!95738 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!192494 (= lt!95734 call!19444)))

(assert (=> b!192494 (= e!126658 (+!305 call!19444 (tuple2!3533 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000) (get!2220 (select (arr!3845 (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!521 (defaultEntry!3921 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!192495 () Bool)

(assert (=> b!192495 (= e!126657 (= lt!95733 (getCurrentListMapNoExtraKeys!213 (_keys!5903 thiss!1248) (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248))) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3921 thiss!1248))))))

(assert (= (and d!56325 c!34708) b!192487))

(assert (= (and d!56325 (not c!34708)) b!192486))

(assert (= (and b!192486 c!34705) b!192494))

(assert (= (and b!192486 (not c!34705)) b!192490))

(assert (= (or b!192494 b!192490) bm!19441))

(assert (= (and d!56325 res!90946) b!192489))

(assert (= (and b!192489 res!90948) b!192484))

(assert (= (and b!192484 res!90945) b!192492))

(assert (= (and b!192484 c!34706) b!192485))

(assert (= (and b!192484 (not c!34706)) b!192488))

(assert (= (and b!192485 res!90947) b!192491))

(assert (= (and b!192488 c!34707) b!192495))

(assert (= (and b!192488 (not c!34707)) b!192493))

(declare-fun b_lambda!7465 () Bool)

(assert (=> (not b_lambda!7465) (not b!192491)))

(assert (=> b!192491 t!7374))

(declare-fun b_and!11405 () Bool)

(assert (= b_and!11403 (and (=> t!7374 result!4917) b_and!11405)))

(declare-fun b_lambda!7467 () Bool)

(assert (=> (not b_lambda!7467) (not b!192494)))

(assert (=> b!192494 t!7374))

(declare-fun b_and!11407 () Bool)

(assert (= b_and!11405 (and (=> t!7374 result!4917) b_and!11407)))

(declare-fun m!219207 () Bool)

(assert (=> b!192495 m!219207))

(assert (=> b!192486 m!218923))

(assert (=> b!192486 m!218923))

(assert (=> b!192486 m!218963))

(assert (=> b!192485 m!218923))

(assert (=> b!192485 m!218923))

(declare-fun m!219209 () Bool)

(assert (=> b!192485 m!219209))

(declare-fun m!219211 () Bool)

(assert (=> b!192494 m!219211))

(declare-fun m!219213 () Bool)

(assert (=> b!192494 m!219213))

(declare-fun m!219215 () Bool)

(assert (=> b!192494 m!219215))

(assert (=> b!192494 m!218975))

(assert (=> b!192494 m!218919))

(assert (=> b!192494 m!218977))

(assert (=> b!192494 m!218919))

(declare-fun m!219217 () Bool)

(assert (=> b!192494 m!219217))

(assert (=> b!192494 m!219211))

(assert (=> b!192494 m!218923))

(assert (=> b!192494 m!218975))

(declare-fun m!219219 () Bool)

(assert (=> d!56325 m!219219))

(assert (=> d!56325 m!218823))

(declare-fun m!219221 () Bool)

(assert (=> b!192493 m!219221))

(assert (=> b!192491 m!218975))

(assert (=> b!192491 m!218919))

(assert (=> b!192491 m!218977))

(assert (=> b!192491 m!218919))

(assert (=> b!192491 m!218923))

(assert (=> b!192491 m!218975))

(assert (=> b!192491 m!218923))

(declare-fun m!219223 () Bool)

(assert (=> b!192491 m!219223))

(assert (=> bm!19441 m!219207))

(assert (=> b!192492 m!218923))

(assert (=> b!192492 m!218923))

(assert (=> b!192492 m!218963))

(declare-fun m!219225 () Bool)

(assert (=> b!192489 m!219225))

(assert (=> b!192245 d!56325))

(declare-fun d!56327 () Bool)

(declare-fun e!126664 () Bool)

(assert (=> d!56327 e!126664))

(declare-fun res!90949 () Bool)

(assert (=> d!56327 (=> (not res!90949) (not e!126664))))

(declare-fun lt!95740 () ListLongMap!2463)

(assert (=> d!56327 (= res!90949 (contains!1357 lt!95740 (_1!1776 (tuple2!3533 lt!95611 (minValue!3762 thiss!1248)))))))

(declare-fun lt!95742 () List!2448)

(assert (=> d!56327 (= lt!95740 (ListLongMap!2464 lt!95742))))

(declare-fun lt!95741 () Unit!5808)

(declare-fun lt!95739 () Unit!5808)

(assert (=> d!56327 (= lt!95741 lt!95739)))

(assert (=> d!56327 (= (getValueByKey!239 lt!95742 (_1!1776 (tuple2!3533 lt!95611 (minValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 lt!95611 (minValue!3762 thiss!1248)))))))

(assert (=> d!56327 (= lt!95739 (lemmaContainsTupThenGetReturnValue!128 lt!95742 (_1!1776 (tuple2!3533 lt!95611 (minValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 lt!95611 (minValue!3762 thiss!1248)))))))

(assert (=> d!56327 (= lt!95742 (insertStrictlySorted!130 (toList!1247 lt!95621) (_1!1776 (tuple2!3533 lt!95611 (minValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 lt!95611 (minValue!3762 thiss!1248)))))))

(assert (=> d!56327 (= (+!305 lt!95621 (tuple2!3533 lt!95611 (minValue!3762 thiss!1248))) lt!95740)))

(declare-fun b!192496 () Bool)

(declare-fun res!90950 () Bool)

(assert (=> b!192496 (=> (not res!90950) (not e!126664))))

(assert (=> b!192496 (= res!90950 (= (getValueByKey!239 (toList!1247 lt!95740) (_1!1776 (tuple2!3533 lt!95611 (minValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 lt!95611 (minValue!3762 thiss!1248))))))))

(declare-fun b!192497 () Bool)

(assert (=> b!192497 (= e!126664 (contains!1358 (toList!1247 lt!95740) (tuple2!3533 lt!95611 (minValue!3762 thiss!1248))))))

(assert (= (and d!56327 res!90949) b!192496))

(assert (= (and b!192496 res!90950) b!192497))

(declare-fun m!219227 () Bool)

(assert (=> d!56327 m!219227))

(declare-fun m!219229 () Bool)

(assert (=> d!56327 m!219229))

(declare-fun m!219231 () Bool)

(assert (=> d!56327 m!219231))

(declare-fun m!219233 () Bool)

(assert (=> d!56327 m!219233))

(declare-fun m!219235 () Bool)

(assert (=> b!192496 m!219235))

(declare-fun m!219237 () Bool)

(assert (=> b!192497 m!219237))

(assert (=> b!192245 d!56327))

(declare-fun d!56329 () Bool)

(assert (=> d!56329 (= (apply!183 lt!95616 lt!95625) (get!2221 (getValueByKey!239 (toList!1247 lt!95616) lt!95625)))))

(declare-fun bs!7695 () Bool)

(assert (= bs!7695 d!56329))

(declare-fun m!219239 () Bool)

(assert (=> bs!7695 m!219239))

(assert (=> bs!7695 m!219239))

(declare-fun m!219241 () Bool)

(assert (=> bs!7695 m!219241))

(assert (=> b!192245 d!56329))

(declare-fun d!56331 () Bool)

(declare-fun e!126666 () Bool)

(assert (=> d!56331 e!126666))

(declare-fun res!90951 () Bool)

(assert (=> d!56331 (=> res!90951 e!126666)))

(declare-fun lt!95744 () Bool)

(assert (=> d!56331 (= res!90951 (not lt!95744))))

(declare-fun lt!95746 () Bool)

(assert (=> d!56331 (= lt!95744 lt!95746)))

(declare-fun lt!95745 () Unit!5808)

(declare-fun e!126665 () Unit!5808)

(assert (=> d!56331 (= lt!95745 e!126665)))

(declare-fun c!34709 () Bool)

(assert (=> d!56331 (= c!34709 lt!95746)))

(assert (=> d!56331 (= lt!95746 (containsKey!243 (toList!1247 (+!305 lt!95626 (tuple2!3533 lt!95613 (zeroValue!3762 thiss!1248)))) lt!95620))))

(assert (=> d!56331 (= (contains!1357 (+!305 lt!95626 (tuple2!3533 lt!95613 (zeroValue!3762 thiss!1248))) lt!95620) lt!95744)))

(declare-fun b!192498 () Bool)

(declare-fun lt!95743 () Unit!5808)

(assert (=> b!192498 (= e!126665 lt!95743)))

(assert (=> b!192498 (= lt!95743 (lemmaContainsKeyImpliesGetValueByKeyDefined!192 (toList!1247 (+!305 lt!95626 (tuple2!3533 lt!95613 (zeroValue!3762 thiss!1248)))) lt!95620))))

(assert (=> b!192498 (isDefined!193 (getValueByKey!239 (toList!1247 (+!305 lt!95626 (tuple2!3533 lt!95613 (zeroValue!3762 thiss!1248)))) lt!95620))))

(declare-fun b!192499 () Bool)

(declare-fun Unit!5820 () Unit!5808)

(assert (=> b!192499 (= e!126665 Unit!5820)))

(declare-fun b!192500 () Bool)

(assert (=> b!192500 (= e!126666 (isDefined!193 (getValueByKey!239 (toList!1247 (+!305 lt!95626 (tuple2!3533 lt!95613 (zeroValue!3762 thiss!1248)))) lt!95620)))))

(assert (= (and d!56331 c!34709) b!192498))

(assert (= (and d!56331 (not c!34709)) b!192499))

(assert (= (and d!56331 (not res!90951)) b!192500))

(declare-fun m!219243 () Bool)

(assert (=> d!56331 m!219243))

(declare-fun m!219245 () Bool)

(assert (=> b!192498 m!219245))

(declare-fun m!219247 () Bool)

(assert (=> b!192498 m!219247))

(assert (=> b!192498 m!219247))

(declare-fun m!219249 () Bool)

(assert (=> b!192498 m!219249))

(assert (=> b!192500 m!219247))

(assert (=> b!192500 m!219247))

(assert (=> b!192500 m!219249))

(assert (=> b!192245 d!56331))

(declare-fun d!56333 () Bool)

(assert (=> d!56333 (= (apply!183 (+!305 lt!95617 (tuple2!3533 lt!95629 (zeroValue!3762 thiss!1248))) lt!95623) (get!2221 (getValueByKey!239 (toList!1247 (+!305 lt!95617 (tuple2!3533 lt!95629 (zeroValue!3762 thiss!1248)))) lt!95623)))))

(declare-fun bs!7696 () Bool)

(assert (= bs!7696 d!56333))

(declare-fun m!219251 () Bool)

(assert (=> bs!7696 m!219251))

(assert (=> bs!7696 m!219251))

(declare-fun m!219253 () Bool)

(assert (=> bs!7696 m!219253))

(assert (=> b!192245 d!56333))

(declare-fun d!56335 () Bool)

(declare-fun e!126667 () Bool)

(assert (=> d!56335 e!126667))

(declare-fun res!90952 () Bool)

(assert (=> d!56335 (=> (not res!90952) (not e!126667))))

(declare-fun lt!95748 () ListLongMap!2463)

(assert (=> d!56335 (= res!90952 (contains!1357 lt!95748 (_1!1776 (tuple2!3533 lt!95629 (zeroValue!3762 thiss!1248)))))))

(declare-fun lt!95750 () List!2448)

(assert (=> d!56335 (= lt!95748 (ListLongMap!2464 lt!95750))))

(declare-fun lt!95749 () Unit!5808)

(declare-fun lt!95747 () Unit!5808)

(assert (=> d!56335 (= lt!95749 lt!95747)))

(assert (=> d!56335 (= (getValueByKey!239 lt!95750 (_1!1776 (tuple2!3533 lt!95629 (zeroValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 lt!95629 (zeroValue!3762 thiss!1248)))))))

(assert (=> d!56335 (= lt!95747 (lemmaContainsTupThenGetReturnValue!128 lt!95750 (_1!1776 (tuple2!3533 lt!95629 (zeroValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 lt!95629 (zeroValue!3762 thiss!1248)))))))

(assert (=> d!56335 (= lt!95750 (insertStrictlySorted!130 (toList!1247 lt!95617) (_1!1776 (tuple2!3533 lt!95629 (zeroValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 lt!95629 (zeroValue!3762 thiss!1248)))))))

(assert (=> d!56335 (= (+!305 lt!95617 (tuple2!3533 lt!95629 (zeroValue!3762 thiss!1248))) lt!95748)))

(declare-fun b!192501 () Bool)

(declare-fun res!90953 () Bool)

(assert (=> b!192501 (=> (not res!90953) (not e!126667))))

(assert (=> b!192501 (= res!90953 (= (getValueByKey!239 (toList!1247 lt!95748) (_1!1776 (tuple2!3533 lt!95629 (zeroValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 lt!95629 (zeroValue!3762 thiss!1248))))))))

(declare-fun b!192502 () Bool)

(assert (=> b!192502 (= e!126667 (contains!1358 (toList!1247 lt!95748) (tuple2!3533 lt!95629 (zeroValue!3762 thiss!1248))))))

(assert (= (and d!56335 res!90952) b!192501))

(assert (= (and b!192501 res!90953) b!192502))

(declare-fun m!219255 () Bool)

(assert (=> d!56335 m!219255))

(declare-fun m!219257 () Bool)

(assert (=> d!56335 m!219257))

(declare-fun m!219259 () Bool)

(assert (=> d!56335 m!219259))

(declare-fun m!219261 () Bool)

(assert (=> d!56335 m!219261))

(declare-fun m!219263 () Bool)

(assert (=> b!192501 m!219263))

(declare-fun m!219265 () Bool)

(assert (=> b!192502 m!219265))

(assert (=> b!192245 d!56335))

(declare-fun d!56337 () Bool)

(assert (=> d!56337 (= (apply!183 (+!305 lt!95616 (tuple2!3533 lt!95614 (minValue!3762 thiss!1248))) lt!95625) (apply!183 lt!95616 lt!95625))))

(declare-fun lt!95751 () Unit!5808)

(assert (=> d!56337 (= lt!95751 (choose!1056 lt!95616 lt!95614 (minValue!3762 thiss!1248) lt!95625))))

(declare-fun e!126668 () Bool)

(assert (=> d!56337 e!126668))

(declare-fun res!90954 () Bool)

(assert (=> d!56337 (=> (not res!90954) (not e!126668))))

(assert (=> d!56337 (= res!90954 (contains!1357 lt!95616 lt!95625))))

(assert (=> d!56337 (= (addApplyDifferent!159 lt!95616 lt!95614 (minValue!3762 thiss!1248) lt!95625) lt!95751)))

(declare-fun b!192503 () Bool)

(assert (=> b!192503 (= e!126668 (not (= lt!95625 lt!95614)))))

(assert (= (and d!56337 res!90954) b!192503))

(assert (=> d!56337 m!218991))

(assert (=> d!56337 m!218993))

(assert (=> d!56337 m!218991))

(declare-fun m!219267 () Bool)

(assert (=> d!56337 m!219267))

(assert (=> d!56337 m!218995))

(declare-fun m!219269 () Bool)

(assert (=> d!56337 m!219269))

(assert (=> b!192245 d!56337))

(declare-fun d!56339 () Bool)

(declare-fun e!126669 () Bool)

(assert (=> d!56339 e!126669))

(declare-fun res!90955 () Bool)

(assert (=> d!56339 (=> (not res!90955) (not e!126669))))

(declare-fun lt!95753 () ListLongMap!2463)

(assert (=> d!56339 (= res!90955 (contains!1357 lt!95753 (_1!1776 (tuple2!3533 lt!95614 (minValue!3762 thiss!1248)))))))

(declare-fun lt!95755 () List!2448)

(assert (=> d!56339 (= lt!95753 (ListLongMap!2464 lt!95755))))

(declare-fun lt!95754 () Unit!5808)

(declare-fun lt!95752 () Unit!5808)

(assert (=> d!56339 (= lt!95754 lt!95752)))

(assert (=> d!56339 (= (getValueByKey!239 lt!95755 (_1!1776 (tuple2!3533 lt!95614 (minValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 lt!95614 (minValue!3762 thiss!1248)))))))

(assert (=> d!56339 (= lt!95752 (lemmaContainsTupThenGetReturnValue!128 lt!95755 (_1!1776 (tuple2!3533 lt!95614 (minValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 lt!95614 (minValue!3762 thiss!1248)))))))

(assert (=> d!56339 (= lt!95755 (insertStrictlySorted!130 (toList!1247 lt!95616) (_1!1776 (tuple2!3533 lt!95614 (minValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 lt!95614 (minValue!3762 thiss!1248)))))))

(assert (=> d!56339 (= (+!305 lt!95616 (tuple2!3533 lt!95614 (minValue!3762 thiss!1248))) lt!95753)))

(declare-fun b!192504 () Bool)

(declare-fun res!90956 () Bool)

(assert (=> b!192504 (=> (not res!90956) (not e!126669))))

(assert (=> b!192504 (= res!90956 (= (getValueByKey!239 (toList!1247 lt!95753) (_1!1776 (tuple2!3533 lt!95614 (minValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 lt!95614 (minValue!3762 thiss!1248))))))))

(declare-fun b!192505 () Bool)

(assert (=> b!192505 (= e!126669 (contains!1358 (toList!1247 lt!95753) (tuple2!3533 lt!95614 (minValue!3762 thiss!1248))))))

(assert (= (and d!56339 res!90955) b!192504))

(assert (= (and b!192504 res!90956) b!192505))

(declare-fun m!219271 () Bool)

(assert (=> d!56339 m!219271))

(declare-fun m!219273 () Bool)

(assert (=> d!56339 m!219273))

(declare-fun m!219275 () Bool)

(assert (=> d!56339 m!219275))

(declare-fun m!219277 () Bool)

(assert (=> d!56339 m!219277))

(declare-fun m!219279 () Bool)

(assert (=> b!192504 m!219279))

(declare-fun m!219281 () Bool)

(assert (=> b!192505 m!219281))

(assert (=> b!192245 d!56339))

(declare-fun d!56341 () Bool)

(assert (=> d!56341 (= (apply!183 (+!305 lt!95616 (tuple2!3533 lt!95614 (minValue!3762 thiss!1248))) lt!95625) (get!2221 (getValueByKey!239 (toList!1247 (+!305 lt!95616 (tuple2!3533 lt!95614 (minValue!3762 thiss!1248)))) lt!95625)))))

(declare-fun bs!7697 () Bool)

(assert (= bs!7697 d!56341))

(declare-fun m!219283 () Bool)

(assert (=> bs!7697 m!219283))

(assert (=> bs!7697 m!219283))

(declare-fun m!219285 () Bool)

(assert (=> bs!7697 m!219285))

(assert (=> b!192245 d!56341))

(declare-fun d!56343 () Bool)

(assert (=> d!56343 (= (apply!183 (+!305 lt!95617 (tuple2!3533 lt!95629 (zeroValue!3762 thiss!1248))) lt!95623) (apply!183 lt!95617 lt!95623))))

(declare-fun lt!95756 () Unit!5808)

(assert (=> d!56343 (= lt!95756 (choose!1056 lt!95617 lt!95629 (zeroValue!3762 thiss!1248) lt!95623))))

(declare-fun e!126670 () Bool)

(assert (=> d!56343 e!126670))

(declare-fun res!90957 () Bool)

(assert (=> d!56343 (=> (not res!90957) (not e!126670))))

(assert (=> d!56343 (= res!90957 (contains!1357 lt!95617 lt!95623))))

(assert (=> d!56343 (= (addApplyDifferent!159 lt!95617 lt!95629 (zeroValue!3762 thiss!1248) lt!95623) lt!95756)))

(declare-fun b!192506 () Bool)

(assert (=> b!192506 (= e!126670 (not (= lt!95623 lt!95629)))))

(assert (= (and d!56343 res!90957) b!192506))

(assert (=> d!56343 m!219003))

(assert (=> d!56343 m!219005))

(assert (=> d!56343 m!219003))

(declare-fun m!219287 () Bool)

(assert (=> d!56343 m!219287))

(assert (=> d!56343 m!218983))

(declare-fun m!219289 () Bool)

(assert (=> d!56343 m!219289))

(assert (=> b!192245 d!56343))

(declare-fun d!56345 () Bool)

(assert (=> d!56345 (= (apply!183 lt!95621 lt!95612) (get!2221 (getValueByKey!239 (toList!1247 lt!95621) lt!95612)))))

(declare-fun bs!7698 () Bool)

(assert (= bs!7698 d!56345))

(declare-fun m!219291 () Bool)

(assert (=> bs!7698 m!219291))

(assert (=> bs!7698 m!219291))

(declare-fun m!219293 () Bool)

(assert (=> bs!7698 m!219293))

(assert (=> b!192245 d!56345))

(declare-fun d!56347 () Bool)

(assert (=> d!56347 (contains!1357 (+!305 lt!95626 (tuple2!3533 lt!95613 (zeroValue!3762 thiss!1248))) lt!95620)))

(declare-fun lt!95759 () Unit!5808)

(declare-fun choose!1057 (ListLongMap!2463 (_ BitVec 64) V!5595 (_ BitVec 64)) Unit!5808)

(assert (=> d!56347 (= lt!95759 (choose!1057 lt!95626 lt!95613 (zeroValue!3762 thiss!1248) lt!95620))))

(assert (=> d!56347 (contains!1357 lt!95626 lt!95620)))

(assert (=> d!56347 (= (addStillContains!159 lt!95626 lt!95613 (zeroValue!3762 thiss!1248) lt!95620) lt!95759)))

(declare-fun bs!7699 () Bool)

(assert (= bs!7699 d!56347))

(assert (=> bs!7699 m!218985))

(assert (=> bs!7699 m!218985))

(assert (=> bs!7699 m!219001))

(declare-fun m!219295 () Bool)

(assert (=> bs!7699 m!219295))

(declare-fun m!219297 () Bool)

(assert (=> bs!7699 m!219297))

(assert (=> b!192245 d!56347))

(declare-fun d!56349 () Bool)

(declare-fun e!126671 () Bool)

(assert (=> d!56349 e!126671))

(declare-fun res!90958 () Bool)

(assert (=> d!56349 (=> (not res!90958) (not e!126671))))

(declare-fun lt!95761 () ListLongMap!2463)

(assert (=> d!56349 (= res!90958 (contains!1357 lt!95761 (_1!1776 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))))))

(declare-fun lt!95763 () List!2448)

(assert (=> d!56349 (= lt!95761 (ListLongMap!2464 lt!95763))))

(declare-fun lt!95762 () Unit!5808)

(declare-fun lt!95760 () Unit!5808)

(assert (=> d!56349 (= lt!95762 lt!95760)))

(assert (=> d!56349 (= (getValueByKey!239 lt!95763 (_1!1776 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))))))

(assert (=> d!56349 (= lt!95760 (lemmaContainsTupThenGetReturnValue!128 lt!95763 (_1!1776 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))))))

(assert (=> d!56349 (= lt!95763 (insertStrictlySorted!130 (toList!1247 call!19416) (_1!1776 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))))))

(assert (=> d!56349 (= (+!305 call!19416 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))) lt!95761)))

(declare-fun b!192508 () Bool)

(declare-fun res!90959 () Bool)

(assert (=> b!192508 (=> (not res!90959) (not e!126671))))

(assert (=> b!192508 (= res!90959 (= (getValueByKey!239 (toList!1247 lt!95761) (_1!1776 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))))))))

(declare-fun b!192509 () Bool)

(assert (=> b!192509 (= e!126671 (contains!1358 (toList!1247 lt!95761) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))))))

(assert (= (and d!56349 res!90958) b!192508))

(assert (= (and b!192508 res!90959) b!192509))

(declare-fun m!219299 () Bool)

(assert (=> d!56349 m!219299))

(declare-fun m!219301 () Bool)

(assert (=> d!56349 m!219301))

(declare-fun m!219303 () Bool)

(assert (=> d!56349 m!219303))

(declare-fun m!219305 () Bool)

(assert (=> d!56349 m!219305))

(declare-fun m!219307 () Bool)

(assert (=> b!192508 m!219307))

(declare-fun m!219309 () Bool)

(assert (=> b!192509 m!219309))

(assert (=> b!192259 d!56349))

(declare-fun d!56351 () Bool)

(assert (=> d!56351 (= (inRange!0 (index!4935 lt!95528) (mask!9151 thiss!1248)) (and (bvsge (index!4935 lt!95528) #b00000000000000000000000000000000) (bvslt (index!4935 lt!95528) (bvadd (mask!9151 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!192167 d!56351))

(declare-fun b!192519 () Bool)

(declare-fun res!90971 () Bool)

(declare-fun e!126674 () Bool)

(assert (=> b!192519 (=> (not res!90971) (not e!126674))))

(declare-fun size!4171 (LongMapFixedSize!2682) (_ BitVec 32))

(assert (=> b!192519 (= res!90971 (bvsge (size!4171 thiss!1248) (_size!1390 thiss!1248)))))

(declare-fun b!192521 () Bool)

(assert (=> b!192521 (= e!126674 (and (bvsge (extraKeys!3658 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3658 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1390 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!192518 () Bool)

(declare-fun res!90969 () Bool)

(assert (=> b!192518 (=> (not res!90969) (not e!126674))))

(assert (=> b!192518 (= res!90969 (and (= (size!4168 (_values!3904 thiss!1248)) (bvadd (mask!9151 thiss!1248) #b00000000000000000000000000000001)) (= (size!4167 (_keys!5903 thiss!1248)) (size!4168 (_values!3904 thiss!1248))) (bvsge (_size!1390 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1390 thiss!1248) (bvadd (mask!9151 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!192520 () Bool)

(declare-fun res!90970 () Bool)

(assert (=> b!192520 (=> (not res!90970) (not e!126674))))

(assert (=> b!192520 (= res!90970 (= (size!4171 thiss!1248) (bvadd (_size!1390 thiss!1248) (bvsdiv (bvadd (extraKeys!3658 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!56353 () Bool)

(declare-fun res!90968 () Bool)

(assert (=> d!56353 (=> (not res!90968) (not e!126674))))

(assert (=> d!56353 (= res!90968 (validMask!0 (mask!9151 thiss!1248)))))

(assert (=> d!56353 (= (simpleValid!198 thiss!1248) e!126674)))

(assert (= (and d!56353 res!90968) b!192518))

(assert (= (and b!192518 res!90969) b!192519))

(assert (= (and b!192519 res!90971) b!192520))

(assert (= (and b!192520 res!90970) b!192521))

(declare-fun m!219311 () Bool)

(assert (=> b!192519 m!219311))

(assert (=> b!192520 m!219311))

(assert (=> d!56353 m!218823))

(assert (=> d!56251 d!56353))

(assert (=> b!192244 d!56287))

(declare-fun d!56355 () Bool)

(declare-fun e!126676 () Bool)

(assert (=> d!56355 e!126676))

(declare-fun res!90972 () Bool)

(assert (=> d!56355 (=> res!90972 e!126676)))

(declare-fun lt!95765 () Bool)

(assert (=> d!56355 (= res!90972 (not lt!95765))))

(declare-fun lt!95767 () Bool)

(assert (=> d!56355 (= lt!95765 lt!95767)))

(declare-fun lt!95766 () Unit!5808)

(declare-fun e!126675 () Unit!5808)

(assert (=> d!56355 (= lt!95766 e!126675)))

(declare-fun c!34710 () Bool)

(assert (=> d!56355 (= c!34710 lt!95767)))

(assert (=> d!56355 (= lt!95767 (containsKey!243 (toList!1247 lt!95618) (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!56355 (= (contains!1357 lt!95618 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)) lt!95765)))

(declare-fun b!192522 () Bool)

(declare-fun lt!95764 () Unit!5808)

(assert (=> b!192522 (= e!126675 lt!95764)))

(assert (=> b!192522 (= lt!95764 (lemmaContainsKeyImpliesGetValueByKeyDefined!192 (toList!1247 lt!95618) (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!192522 (isDefined!193 (getValueByKey!239 (toList!1247 lt!95618) (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!192523 () Bool)

(declare-fun Unit!5821 () Unit!5808)

(assert (=> b!192523 (= e!126675 Unit!5821)))

(declare-fun b!192524 () Bool)

(assert (=> b!192524 (= e!126676 (isDefined!193 (getValueByKey!239 (toList!1247 lt!95618) (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!56355 c!34710) b!192522))

(assert (= (and d!56355 (not c!34710)) b!192523))

(assert (= (and d!56355 (not res!90972)) b!192524))

(assert (=> d!56355 m!218923))

(declare-fun m!219313 () Bool)

(assert (=> d!56355 m!219313))

(assert (=> b!192522 m!218923))

(declare-fun m!219315 () Bool)

(assert (=> b!192522 m!219315))

(assert (=> b!192522 m!218923))

(assert (=> b!192522 m!219075))

(assert (=> b!192522 m!219075))

(declare-fun m!219317 () Bool)

(assert (=> b!192522 m!219317))

(assert (=> b!192524 m!218923))

(assert (=> b!192524 m!219075))

(assert (=> b!192524 m!219075))

(assert (=> b!192524 m!219317))

(assert (=> b!192243 d!56355))

(declare-fun d!56357 () Bool)

(assert (=> d!56357 (= (+!305 (getCurrentListMap!890 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)) (tuple2!3533 key!828 v!309)) (getCurrentListMap!890 (_keys!5903 thiss!1248) (array!8165 (store (arr!3845 (_values!3904 thiss!1248)) (index!4935 lt!95497) (ValueCellFull!1887 v!309)) (size!4168 (_values!3904 thiss!1248))) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3921 thiss!1248)))))

(assert (=> d!56357 true))

(declare-fun _$5!155 () Unit!5808)

(assert (=> d!56357 (= (choose!1054 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) (index!4935 lt!95497) key!828 v!309 (defaultEntry!3921 thiss!1248)) _$5!155)))

(declare-fun bs!7700 () Bool)

(assert (= bs!7700 d!56357))

(assert (=> bs!7700 m!218829))

(assert (=> bs!7700 m!218829))

(assert (=> bs!7700 m!219037))

(assert (=> bs!7700 m!218819))

(assert (=> bs!7700 m!218831))

(assert (=> d!56267 d!56357))

(assert (=> d!56267 d!56259))

(declare-fun d!56359 () Bool)

(assert (=> d!56359 (= (apply!183 lt!95596 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)) (get!2221 (getValueByKey!239 (toList!1247 lt!95596) (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7701 () Bool)

(assert (= bs!7701 d!56359))

(assert (=> bs!7701 m!218923))

(declare-fun m!219319 () Bool)

(assert (=> bs!7701 m!219319))

(assert (=> bs!7701 m!219319))

(declare-fun m!219321 () Bool)

(assert (=> bs!7701 m!219321))

(assert (=> b!192234 d!56359))

(declare-fun d!56361 () Bool)

(declare-fun c!34711 () Bool)

(assert (=> d!56361 (= c!34711 ((_ is ValueCellFull!1887) (select (arr!3845 (_values!3904 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!126677 () V!5595)

(assert (=> d!56361 (= (get!2220 (select (arr!3845 (_values!3904 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!521 (defaultEntry!3921 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!126677)))

(declare-fun b!192525 () Bool)

(assert (=> b!192525 (= e!126677 (get!2222 (select (arr!3845 (_values!3904 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!521 (defaultEntry!3921 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!192526 () Bool)

(assert (=> b!192526 (= e!126677 (get!2223 (select (arr!3845 (_values!3904 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!521 (defaultEntry!3921 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56361 c!34711) b!192525))

(assert (= (and d!56361 (not c!34711)) b!192526))

(assert (=> b!192525 m!218917))

(assert (=> b!192525 m!218919))

(declare-fun m!219323 () Bool)

(assert (=> b!192525 m!219323))

(assert (=> b!192526 m!218917))

(assert (=> b!192526 m!218919))

(declare-fun m!219325 () Bool)

(assert (=> b!192526 m!219325))

(assert (=> b!192234 d!56361))

(declare-fun d!56363 () Bool)

(assert (=> d!56363 (isDefined!193 (getValueByKey!239 (toList!1247 lt!95498) key!828))))

(declare-fun lt!95770 () Unit!5808)

(declare-fun choose!1058 (List!2448 (_ BitVec 64)) Unit!5808)

(assert (=> d!56363 (= lt!95770 (choose!1058 (toList!1247 lt!95498) key!828))))

(declare-fun e!126680 () Bool)

(assert (=> d!56363 e!126680))

(declare-fun res!90975 () Bool)

(assert (=> d!56363 (=> (not res!90975) (not e!126680))))

(assert (=> d!56363 (= res!90975 (isStrictlySorted!351 (toList!1247 lt!95498)))))

(assert (=> d!56363 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!192 (toList!1247 lt!95498) key!828) lt!95770)))

(declare-fun b!192529 () Bool)

(assert (=> b!192529 (= e!126680 (containsKey!243 (toList!1247 lt!95498) key!828))))

(assert (= (and d!56363 res!90975) b!192529))

(assert (=> d!56363 m!219031))

(assert (=> d!56363 m!219031))

(assert (=> d!56363 m!219033))

(declare-fun m!219327 () Bool)

(assert (=> d!56363 m!219327))

(assert (=> d!56363 m!219127))

(assert (=> b!192529 m!219027))

(assert (=> b!192267 d!56363))

(declare-fun d!56365 () Bool)

(declare-fun isEmpty!491 (Option!245) Bool)

(assert (=> d!56365 (= (isDefined!193 (getValueByKey!239 (toList!1247 lt!95498) key!828)) (not (isEmpty!491 (getValueByKey!239 (toList!1247 lt!95498) key!828))))))

(declare-fun bs!7702 () Bool)

(assert (= bs!7702 d!56365))

(assert (=> bs!7702 m!219031))

(declare-fun m!219329 () Bool)

(assert (=> bs!7702 m!219329))

(assert (=> b!192267 d!56365))

(declare-fun d!56367 () Bool)

(declare-fun c!34712 () Bool)

(assert (=> d!56367 (= c!34712 (and ((_ is Cons!2444) (toList!1247 lt!95498)) (= (_1!1776 (h!3084 (toList!1247 lt!95498))) key!828)))))

(declare-fun e!126681 () Option!245)

(assert (=> d!56367 (= (getValueByKey!239 (toList!1247 lt!95498) key!828) e!126681)))

(declare-fun b!192533 () Bool)

(declare-fun e!126682 () Option!245)

(assert (=> b!192533 (= e!126682 None!243)))

(declare-fun b!192530 () Bool)

(assert (=> b!192530 (= e!126681 (Some!244 (_2!1776 (h!3084 (toList!1247 lt!95498)))))))

(declare-fun b!192531 () Bool)

(assert (=> b!192531 (= e!126681 e!126682)))

(declare-fun c!34713 () Bool)

(assert (=> b!192531 (= c!34713 (and ((_ is Cons!2444) (toList!1247 lt!95498)) (not (= (_1!1776 (h!3084 (toList!1247 lt!95498))) key!828))))))

(declare-fun b!192532 () Bool)

(assert (=> b!192532 (= e!126682 (getValueByKey!239 (t!7372 (toList!1247 lt!95498)) key!828))))

(assert (= (and d!56367 c!34712) b!192530))

(assert (= (and d!56367 (not c!34712)) b!192531))

(assert (= (and b!192531 c!34713) b!192532))

(assert (= (and b!192531 (not c!34713)) b!192533))

(declare-fun m!219331 () Bool)

(assert (=> b!192532 m!219331))

(assert (=> b!192267 d!56367))

(declare-fun d!56369 () Bool)

(declare-fun e!126684 () Bool)

(assert (=> d!56369 e!126684))

(declare-fun res!90976 () Bool)

(assert (=> d!56369 (=> res!90976 e!126684)))

(declare-fun lt!95772 () Bool)

(assert (=> d!56369 (= res!90976 (not lt!95772))))

(declare-fun lt!95774 () Bool)

(assert (=> d!56369 (= lt!95772 lt!95774)))

(declare-fun lt!95773 () Unit!5808)

(declare-fun e!126683 () Unit!5808)

(assert (=> d!56369 (= lt!95773 e!126683)))

(declare-fun c!34714 () Bool)

(assert (=> d!56369 (= c!34714 lt!95774)))

(assert (=> d!56369 (= lt!95774 (containsKey!243 (toList!1247 lt!95596) (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!56369 (= (contains!1357 lt!95596 (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)) lt!95772)))

(declare-fun b!192534 () Bool)

(declare-fun lt!95771 () Unit!5808)

(assert (=> b!192534 (= e!126683 lt!95771)))

(assert (=> b!192534 (= lt!95771 (lemmaContainsKeyImpliesGetValueByKeyDefined!192 (toList!1247 lt!95596) (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!192534 (isDefined!193 (getValueByKey!239 (toList!1247 lt!95596) (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!192535 () Bool)

(declare-fun Unit!5822 () Unit!5808)

(assert (=> b!192535 (= e!126683 Unit!5822)))

(declare-fun b!192536 () Bool)

(assert (=> b!192536 (= e!126684 (isDefined!193 (getValueByKey!239 (toList!1247 lt!95596) (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!56369 c!34714) b!192534))

(assert (= (and d!56369 (not c!34714)) b!192535))

(assert (= (and d!56369 (not res!90976)) b!192536))

(assert (=> d!56369 m!218923))

(declare-fun m!219333 () Bool)

(assert (=> d!56369 m!219333))

(assert (=> b!192534 m!218923))

(declare-fun m!219335 () Bool)

(assert (=> b!192534 m!219335))

(assert (=> b!192534 m!218923))

(assert (=> b!192534 m!219319))

(assert (=> b!192534 m!219319))

(declare-fun m!219337 () Bool)

(assert (=> b!192534 m!219337))

(assert (=> b!192536 m!218923))

(assert (=> b!192536 m!219319))

(assert (=> b!192536 m!219319))

(assert (=> b!192536 m!219337))

(assert (=> b!192220 d!56369))

(assert (=> b!192250 d!56287))

(declare-fun d!56371 () Bool)

(declare-fun e!126685 () Bool)

(assert (=> d!56371 e!126685))

(declare-fun res!90977 () Bool)

(assert (=> d!56371 (=> (not res!90977) (not e!126685))))

(declare-fun lt!95776 () ListLongMap!2463)

(assert (=> d!56371 (= res!90977 (contains!1357 lt!95776 (_1!1776 (ite (or c!34624 c!34623) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))))))))

(declare-fun lt!95778 () List!2448)

(assert (=> d!56371 (= lt!95776 (ListLongMap!2464 lt!95778))))

(declare-fun lt!95777 () Unit!5808)

(declare-fun lt!95775 () Unit!5808)

(assert (=> d!56371 (= lt!95777 lt!95775)))

(assert (=> d!56371 (= (getValueByKey!239 lt!95778 (_1!1776 (ite (or c!34624 c!34623) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))))) (Some!244 (_2!1776 (ite (or c!34624 c!34623) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))))))))

(assert (=> d!56371 (= lt!95775 (lemmaContainsTupThenGetReturnValue!128 lt!95778 (_1!1776 (ite (or c!34624 c!34623) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))) (_2!1776 (ite (or c!34624 c!34623) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))))))))

(assert (=> d!56371 (= lt!95778 (insertStrictlySorted!130 (toList!1247 (ite c!34624 call!19410 (ite c!34623 call!19412 call!19415))) (_1!1776 (ite (or c!34624 c!34623) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))) (_2!1776 (ite (or c!34624 c!34623) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))))))))

(assert (=> d!56371 (= (+!305 (ite c!34624 call!19410 (ite c!34623 call!19412 call!19415)) (ite (or c!34624 c!34623) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))) lt!95776)))

(declare-fun b!192537 () Bool)

(declare-fun res!90978 () Bool)

(assert (=> b!192537 (=> (not res!90978) (not e!126685))))

(assert (=> b!192537 (= res!90978 (= (getValueByKey!239 (toList!1247 lt!95776) (_1!1776 (ite (or c!34624 c!34623) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))))) (Some!244 (_2!1776 (ite (or c!34624 c!34623) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))))))))

(declare-fun b!192538 () Bool)

(assert (=> b!192538 (= e!126685 (contains!1358 (toList!1247 lt!95776) (ite (or c!34624 c!34623) (tuple2!3533 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3762 thiss!1248)) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))))))

(assert (= (and d!56371 res!90977) b!192537))

(assert (= (and b!192537 res!90978) b!192538))

(declare-fun m!219339 () Bool)

(assert (=> d!56371 m!219339))

(declare-fun m!219341 () Bool)

(assert (=> d!56371 m!219341))

(declare-fun m!219343 () Bool)

(assert (=> d!56371 m!219343))

(declare-fun m!219345 () Bool)

(assert (=> d!56371 m!219345))

(declare-fun m!219347 () Bool)

(assert (=> b!192537 m!219347))

(declare-fun m!219349 () Bool)

(assert (=> b!192538 m!219349))

(assert (=> bm!19412 d!56371))

(declare-fun d!56373 () Bool)

(assert (=> d!56373 (= (inRange!0 (ite c!34609 (index!4934 lt!95522) (index!4937 lt!95522)) (mask!9151 thiss!1248)) (and (bvsge (ite c!34609 (index!4934 lt!95522) (index!4937 lt!95522)) #b00000000000000000000000000000000) (bvslt (ite c!34609 (index!4934 lt!95522) (index!4937 lt!95522)) (bvadd (mask!9151 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> bm!19391 d!56373))

(declare-fun b!192551 () Bool)

(declare-fun c!34723 () Bool)

(declare-fun lt!95784 () (_ BitVec 64))

(assert (=> b!192551 (= c!34723 (= lt!95784 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!126692 () SeekEntryResult!691)

(declare-fun e!126694 () SeekEntryResult!691)

(assert (=> b!192551 (= e!126692 e!126694)))

(declare-fun b!192552 () Bool)

(assert (=> b!192552 (= e!126694 (MissingVacant!691 (index!4936 lt!95651)))))

(declare-fun b!192553 () Bool)

(assert (=> b!192553 (= e!126694 (seekKeyOrZeroReturnVacant!0 (bvadd (x!20589 lt!95651) #b00000000000000000000000000000001) (nextIndex!0 (index!4936 lt!95651) (x!20589 lt!95651) (mask!9151 thiss!1248)) (index!4936 lt!95651) key!828 (_keys!5903 thiss!1248) (mask!9151 thiss!1248)))))

(declare-fun lt!95783 () SeekEntryResult!691)

(declare-fun d!56375 () Bool)

(assert (=> d!56375 (and (or ((_ is Undefined!691) lt!95783) (not ((_ is Found!691) lt!95783)) (and (bvsge (index!4935 lt!95783) #b00000000000000000000000000000000) (bvslt (index!4935 lt!95783) (size!4167 (_keys!5903 thiss!1248))))) (or ((_ is Undefined!691) lt!95783) ((_ is Found!691) lt!95783) (not ((_ is MissingVacant!691) lt!95783)) (not (= (index!4937 lt!95783) (index!4936 lt!95651))) (and (bvsge (index!4937 lt!95783) #b00000000000000000000000000000000) (bvslt (index!4937 lt!95783) (size!4167 (_keys!5903 thiss!1248))))) (or ((_ is Undefined!691) lt!95783) (ite ((_ is Found!691) lt!95783) (= (select (arr!3844 (_keys!5903 thiss!1248)) (index!4935 lt!95783)) key!828) (and ((_ is MissingVacant!691) lt!95783) (= (index!4937 lt!95783) (index!4936 lt!95651)) (= (select (arr!3844 (_keys!5903 thiss!1248)) (index!4937 lt!95783)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!126693 () SeekEntryResult!691)

(assert (=> d!56375 (= lt!95783 e!126693)))

(declare-fun c!34721 () Bool)

(assert (=> d!56375 (= c!34721 (bvsge (x!20589 lt!95651) #b01111111111111111111111111111110))))

(assert (=> d!56375 (= lt!95784 (select (arr!3844 (_keys!5903 thiss!1248)) (index!4936 lt!95651)))))

(assert (=> d!56375 (validMask!0 (mask!9151 thiss!1248))))

(assert (=> d!56375 (= (seekKeyOrZeroReturnVacant!0 (x!20589 lt!95651) (index!4936 lt!95651) (index!4936 lt!95651) key!828 (_keys!5903 thiss!1248) (mask!9151 thiss!1248)) lt!95783)))

(declare-fun b!192554 () Bool)

(assert (=> b!192554 (= e!126692 (Found!691 (index!4936 lt!95651)))))

(declare-fun b!192555 () Bool)

(assert (=> b!192555 (= e!126693 Undefined!691)))

(declare-fun b!192556 () Bool)

(assert (=> b!192556 (= e!126693 e!126692)))

(declare-fun c!34722 () Bool)

(assert (=> b!192556 (= c!34722 (= lt!95784 key!828))))

(assert (= (and d!56375 c!34721) b!192555))

(assert (= (and d!56375 (not c!34721)) b!192556))

(assert (= (and b!192556 c!34722) b!192554))

(assert (= (and b!192556 (not c!34722)) b!192551))

(assert (= (and b!192551 c!34723) b!192552))

(assert (= (and b!192551 (not c!34723)) b!192553))

(declare-fun m!219351 () Bool)

(assert (=> b!192553 m!219351))

(assert (=> b!192553 m!219351))

(declare-fun m!219353 () Bool)

(assert (=> b!192553 m!219353))

(declare-fun m!219355 () Bool)

(assert (=> d!56375 m!219355))

(declare-fun m!219357 () Bool)

(assert (=> d!56375 m!219357))

(assert (=> d!56375 m!219039))

(assert (=> d!56375 m!218823))

(assert (=> b!192287 d!56375))

(declare-fun d!56377 () Bool)

(assert (=> d!56377 (= (apply!183 lt!95618 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2221 (getValueByKey!239 (toList!1247 lt!95618) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7703 () Bool)

(assert (= bs!7703 d!56377))

(assert (=> bs!7703 m!219177))

(assert (=> bs!7703 m!219177))

(declare-fun m!219359 () Bool)

(assert (=> bs!7703 m!219359))

(assert (=> b!192248 d!56377))

(declare-fun d!56379 () Bool)

(declare-fun e!126696 () Bool)

(assert (=> d!56379 e!126696))

(declare-fun res!90979 () Bool)

(assert (=> d!56379 (=> res!90979 e!126696)))

(declare-fun lt!95786 () Bool)

(assert (=> d!56379 (= res!90979 (not lt!95786))))

(declare-fun lt!95788 () Bool)

(assert (=> d!56379 (= lt!95786 lt!95788)))

(declare-fun lt!95787 () Unit!5808)

(declare-fun e!126695 () Unit!5808)

(assert (=> d!56379 (= lt!95787 e!126695)))

(declare-fun c!34724 () Bool)

(assert (=> d!56379 (= c!34724 lt!95788)))

(assert (=> d!56379 (= lt!95788 (containsKey!243 (toList!1247 lt!95596) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!56379 (= (contains!1357 lt!95596 #b1000000000000000000000000000000000000000000000000000000000000000) lt!95786)))

(declare-fun b!192557 () Bool)

(declare-fun lt!95785 () Unit!5808)

(assert (=> b!192557 (= e!126695 lt!95785)))

(assert (=> b!192557 (= lt!95785 (lemmaContainsKeyImpliesGetValueByKeyDefined!192 (toList!1247 lt!95596) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!192557 (isDefined!193 (getValueByKey!239 (toList!1247 lt!95596) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!192558 () Bool)

(declare-fun Unit!5823 () Unit!5808)

(assert (=> b!192558 (= e!126695 Unit!5823)))

(declare-fun b!192559 () Bool)

(assert (=> b!192559 (= e!126696 (isDefined!193 (getValueByKey!239 (toList!1247 lt!95596) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56379 c!34724) b!192557))

(assert (= (and d!56379 (not c!34724)) b!192558))

(assert (= (and d!56379 (not res!90979)) b!192559))

(declare-fun m!219361 () Bool)

(assert (=> d!56379 m!219361))

(declare-fun m!219363 () Bool)

(assert (=> b!192557 m!219363))

(declare-fun m!219365 () Bool)

(assert (=> b!192557 m!219365))

(assert (=> b!192557 m!219365))

(declare-fun m!219367 () Bool)

(assert (=> b!192557 m!219367))

(assert (=> b!192559 m!219365))

(assert (=> b!192559 m!219365))

(assert (=> b!192559 m!219367))

(assert (=> bm!19411 d!56379))

(declare-fun lt!95791 () Bool)

(declare-fun d!56381 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!153 (List!2448) (InoxSet tuple2!3532))

(assert (=> d!56381 (= lt!95791 (select (content!153 (toList!1247 lt!95539)) (tuple2!3533 key!828 v!309)))))

(declare-fun e!126701 () Bool)

(assert (=> d!56381 (= lt!95791 e!126701)))

(declare-fun res!90985 () Bool)

(assert (=> d!56381 (=> (not res!90985) (not e!126701))))

(assert (=> d!56381 (= res!90985 ((_ is Cons!2444) (toList!1247 lt!95539)))))

(assert (=> d!56381 (= (contains!1358 (toList!1247 lt!95539) (tuple2!3533 key!828 v!309)) lt!95791)))

(declare-fun b!192564 () Bool)

(declare-fun e!126702 () Bool)

(assert (=> b!192564 (= e!126701 e!126702)))

(declare-fun res!90984 () Bool)

(assert (=> b!192564 (=> res!90984 e!126702)))

(assert (=> b!192564 (= res!90984 (= (h!3084 (toList!1247 lt!95539)) (tuple2!3533 key!828 v!309)))))

(declare-fun b!192565 () Bool)

(assert (=> b!192565 (= e!126702 (contains!1358 (t!7372 (toList!1247 lt!95539)) (tuple2!3533 key!828 v!309)))))

(assert (= (and d!56381 res!90985) b!192564))

(assert (= (and b!192564 (not res!90984)) b!192565))

(declare-fun m!219369 () Bool)

(assert (=> d!56381 m!219369))

(declare-fun m!219371 () Bool)

(assert (=> d!56381 m!219371))

(declare-fun m!219373 () Bool)

(assert (=> b!192565 m!219373))

(assert (=> b!192174 d!56381))

(declare-fun d!56383 () Bool)

(declare-fun res!90990 () Bool)

(declare-fun e!126707 () Bool)

(assert (=> d!56383 (=> res!90990 e!126707)))

(assert (=> d!56383 (= res!90990 (= (select (arr!3844 (_keys!5903 thiss!1248)) #b00000000000000000000000000000000) key!828))))

(assert (=> d!56383 (= (arrayContainsKey!0 (_keys!5903 thiss!1248) key!828 #b00000000000000000000000000000000) e!126707)))

(declare-fun b!192570 () Bool)

(declare-fun e!126708 () Bool)

(assert (=> b!192570 (= e!126707 e!126708)))

(declare-fun res!90991 () Bool)

(assert (=> b!192570 (=> (not res!90991) (not e!126708))))

(assert (=> b!192570 (= res!90991 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4167 (_keys!5903 thiss!1248))))))

(declare-fun b!192571 () Bool)

(assert (=> b!192571 (= e!126708 (arrayContainsKey!0 (_keys!5903 thiss!1248) key!828 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!56383 (not res!90990)) b!192570))

(assert (= (and b!192570 res!90991) b!192571))

(assert (=> d!56383 m!218923))

(declare-fun m!219375 () Bool)

(assert (=> b!192571 m!219375))

(assert (=> bm!19390 d!56383))

(declare-fun d!56385 () Bool)

(assert (=> d!56385 (= (apply!183 lt!95596 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2221 (getValueByKey!239 (toList!1247 lt!95596) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7704 () Bool)

(assert (= bs!7704 d!56385))

(assert (=> bs!7704 m!219365))

(assert (=> bs!7704 m!219365))

(declare-fun m!219377 () Bool)

(assert (=> bs!7704 m!219377))

(assert (=> b!192224 d!56385))

(assert (=> d!56253 d!56273))

(declare-fun d!56387 () Bool)

(declare-fun e!126711 () Bool)

(assert (=> d!56387 e!126711))

(declare-fun res!90997 () Bool)

(assert (=> d!56387 (=> (not res!90997) (not e!126711))))

(declare-fun lt!95794 () SeekEntryResult!691)

(assert (=> d!56387 (= res!90997 ((_ is Found!691) lt!95794))))

(assert (=> d!56387 (= lt!95794 (seekEntryOrOpen!0 key!828 (_keys!5903 thiss!1248) (mask!9151 thiss!1248)))))

(assert (=> d!56387 true))

(declare-fun _$33!147 () Unit!5808)

(assert (=> d!56387 (= (choose!1053 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) key!828 (defaultEntry!3921 thiss!1248)) _$33!147)))

(declare-fun b!192576 () Bool)

(declare-fun res!90996 () Bool)

(assert (=> b!192576 (=> (not res!90996) (not e!126711))))

(assert (=> b!192576 (= res!90996 (inRange!0 (index!4935 lt!95794) (mask!9151 thiss!1248)))))

(declare-fun b!192577 () Bool)

(assert (=> b!192577 (= e!126711 (= (select (arr!3844 (_keys!5903 thiss!1248)) (index!4935 lt!95794)) key!828))))

(assert (= (and d!56387 res!90997) b!192576))

(assert (= (and b!192576 res!90996) b!192577))

(assert (=> d!56387 m!218845))

(declare-fun m!219379 () Bool)

(assert (=> b!192576 m!219379))

(declare-fun m!219381 () Bool)

(assert (=> b!192577 m!219381))

(assert (=> d!56253 d!56387))

(assert (=> d!56253 d!56259))

(assert (=> d!56249 d!56273))

(declare-fun d!56389 () Bool)

(declare-fun e!126720 () Bool)

(assert (=> d!56389 e!126720))

(declare-fun c!34730 () Bool)

(declare-fun lt!95797 () SeekEntryResult!691)

(assert (=> d!56389 (= c!34730 ((_ is MissingZero!691) lt!95797))))

(assert (=> d!56389 (= lt!95797 (seekEntryOrOpen!0 key!828 (_keys!5903 thiss!1248) (mask!9151 thiss!1248)))))

(assert (=> d!56389 true))

(declare-fun _$34!1081 () Unit!5808)

(assert (=> d!56389 (= (choose!1052 (_keys!5903 thiss!1248) (_values!3904 thiss!1248) (mask!9151 thiss!1248) (extraKeys!3658 thiss!1248) (zeroValue!3762 thiss!1248) (minValue!3762 thiss!1248) key!828 (defaultEntry!3921 thiss!1248)) _$34!1081)))

(declare-fun b!192594 () Bool)

(declare-fun e!126721 () Bool)

(assert (=> b!192594 (= e!126720 e!126721)))

(declare-fun res!91009 () Bool)

(declare-fun call!19449 () Bool)

(assert (=> b!192594 (= res!91009 call!19449)))

(assert (=> b!192594 (=> (not res!91009) (not e!126721))))

(declare-fun bm!19446 () Bool)

(declare-fun call!19450 () Bool)

(assert (=> bm!19446 (= call!19450 (arrayContainsKey!0 (_keys!5903 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!192595 () Bool)

(declare-fun res!91008 () Bool)

(declare-fun e!126722 () Bool)

(assert (=> b!192595 (=> (not res!91008) (not e!126722))))

(assert (=> b!192595 (= res!91008 call!19449)))

(declare-fun e!126723 () Bool)

(assert (=> b!192595 (= e!126723 e!126722)))

(declare-fun b!192596 () Bool)

(assert (=> b!192596 (= e!126723 ((_ is Undefined!691) lt!95797))))

(declare-fun b!192597 () Bool)

(declare-fun res!91006 () Bool)

(assert (=> b!192597 (= res!91006 (= (select (arr!3844 (_keys!5903 thiss!1248)) (index!4934 lt!95797)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!192597 (=> (not res!91006) (not e!126721))))

(declare-fun bm!19447 () Bool)

(assert (=> bm!19447 (= call!19449 (inRange!0 (ite c!34730 (index!4934 lt!95797) (index!4937 lt!95797)) (mask!9151 thiss!1248)))))

(declare-fun b!192598 () Bool)

(declare-fun res!91007 () Bool)

(assert (=> b!192598 (=> (not res!91007) (not e!126722))))

(assert (=> b!192598 (= res!91007 (= (select (arr!3844 (_keys!5903 thiss!1248)) (index!4937 lt!95797)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!192599 () Bool)

(assert (=> b!192599 (= e!126720 e!126723)))

(declare-fun c!34729 () Bool)

(assert (=> b!192599 (= c!34729 ((_ is MissingVacant!691) lt!95797))))

(declare-fun b!192600 () Bool)

(assert (=> b!192600 (= e!126721 (not call!19450))))

(declare-fun b!192601 () Bool)

(assert (=> b!192601 (= e!126722 (not call!19450))))

(assert (= (and d!56389 c!34730) b!192594))

(assert (= (and d!56389 (not c!34730)) b!192599))

(assert (= (and b!192594 res!91009) b!192597))

(assert (= (and b!192597 res!91006) b!192600))

(assert (= (and b!192599 c!34729) b!192595))

(assert (= (and b!192599 (not c!34729)) b!192596))

(assert (= (and b!192595 res!91008) b!192598))

(assert (= (and b!192598 res!91007) b!192601))

(assert (= (or b!192594 b!192595) bm!19447))

(assert (= (or b!192600 b!192601) bm!19446))

(declare-fun m!219383 () Bool)

(assert (=> b!192598 m!219383))

(declare-fun m!219385 () Bool)

(assert (=> b!192597 m!219385))

(assert (=> d!56389 m!218845))

(declare-fun m!219387 () Bool)

(assert (=> bm!19447 m!219387))

(assert (=> bm!19446 m!218887))

(assert (=> d!56249 d!56389))

(assert (=> d!56249 d!56259))

(declare-fun d!56391 () Bool)

(declare-fun e!126725 () Bool)

(assert (=> d!56391 e!126725))

(declare-fun res!91010 () Bool)

(assert (=> d!56391 (=> res!91010 e!126725)))

(declare-fun lt!95799 () Bool)

(assert (=> d!56391 (= res!91010 (not lt!95799))))

(declare-fun lt!95801 () Bool)

(assert (=> d!56391 (= lt!95799 lt!95801)))

(declare-fun lt!95800 () Unit!5808)

(declare-fun e!126724 () Unit!5808)

(assert (=> d!56391 (= lt!95800 e!126724)))

(declare-fun c!34731 () Bool)

(assert (=> d!56391 (= c!34731 lt!95801)))

(assert (=> d!56391 (= lt!95801 (containsKey!243 (toList!1247 lt!95596) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!56391 (= (contains!1357 lt!95596 #b0000000000000000000000000000000000000000000000000000000000000000) lt!95799)))

(declare-fun b!192602 () Bool)

(declare-fun lt!95798 () Unit!5808)

(assert (=> b!192602 (= e!126724 lt!95798)))

(assert (=> b!192602 (= lt!95798 (lemmaContainsKeyImpliesGetValueByKeyDefined!192 (toList!1247 lt!95596) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!192602 (isDefined!193 (getValueByKey!239 (toList!1247 lt!95596) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!192603 () Bool)

(declare-fun Unit!5824 () Unit!5808)

(assert (=> b!192603 (= e!126724 Unit!5824)))

(declare-fun b!192604 () Bool)

(assert (=> b!192604 (= e!126725 (isDefined!193 (getValueByKey!239 (toList!1247 lt!95596) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56391 c!34731) b!192602))

(assert (= (and d!56391 (not c!34731)) b!192603))

(assert (= (and d!56391 (not res!91010)) b!192604))

(declare-fun m!219389 () Bool)

(assert (=> d!56391 m!219389))

(declare-fun m!219391 () Bool)

(assert (=> b!192602 m!219391))

(assert (=> b!192602 m!219141))

(assert (=> b!192602 m!219141))

(declare-fun m!219393 () Bool)

(assert (=> b!192602 m!219393))

(assert (=> b!192604 m!219141))

(assert (=> b!192604 m!219141))

(assert (=> b!192604 m!219393))

(assert (=> bm!19406 d!56391))

(assert (=> b!192269 d!56365))

(assert (=> b!192269 d!56367))

(declare-fun d!56393 () Bool)

(declare-fun e!126726 () Bool)

(assert (=> d!56393 e!126726))

(declare-fun res!91011 () Bool)

(assert (=> d!56393 (=> (not res!91011) (not e!126726))))

(declare-fun lt!95803 () ListLongMap!2463)

(assert (=> d!56393 (= res!91011 (contains!1357 lt!95803 (_1!1776 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))))))

(declare-fun lt!95805 () List!2448)

(assert (=> d!56393 (= lt!95803 (ListLongMap!2464 lt!95805))))

(declare-fun lt!95804 () Unit!5808)

(declare-fun lt!95802 () Unit!5808)

(assert (=> d!56393 (= lt!95804 lt!95802)))

(assert (=> d!56393 (= (getValueByKey!239 lt!95805 (_1!1776 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))))))

(assert (=> d!56393 (= lt!95802 (lemmaContainsTupThenGetReturnValue!128 lt!95805 (_1!1776 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))))))

(assert (=> d!56393 (= lt!95805 (insertStrictlySorted!130 (toList!1247 call!19409) (_1!1776 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))))))

(assert (=> d!56393 (= (+!305 call!19409 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))) lt!95803)))

(declare-fun b!192605 () Bool)

(declare-fun res!91012 () Bool)

(assert (=> b!192605 (=> (not res!91012) (not e!126726))))

(assert (=> b!192605 (= res!91012 (= (getValueByKey!239 (toList!1247 lt!95803) (_1!1776 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))))))))

(declare-fun b!192606 () Bool)

(assert (=> b!192606 (= e!126726 (contains!1358 (toList!1247 lt!95803) (tuple2!3533 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3762 thiss!1248))))))

(assert (= (and d!56393 res!91011) b!192605))

(assert (= (and b!192605 res!91012) b!192606))

(declare-fun m!219395 () Bool)

(assert (=> d!56393 m!219395))

(declare-fun m!219397 () Bool)

(assert (=> d!56393 m!219397))

(declare-fun m!219399 () Bool)

(assert (=> d!56393 m!219399))

(declare-fun m!219401 () Bool)

(assert (=> d!56393 m!219401))

(declare-fun m!219403 () Bool)

(assert (=> b!192605 m!219403))

(declare-fun m!219405 () Bool)

(assert (=> b!192606 m!219405))

(assert (=> b!192236 d!56393))

(declare-fun d!56395 () Bool)

(assert (=> d!56395 (= (apply!183 (+!305 lt!95599 (tuple2!3533 lt!95589 (minValue!3762 thiss!1248))) lt!95590) (get!2221 (getValueByKey!239 (toList!1247 (+!305 lt!95599 (tuple2!3533 lt!95589 (minValue!3762 thiss!1248)))) lt!95590)))))

(declare-fun bs!7705 () Bool)

(assert (= bs!7705 d!56395))

(declare-fun m!219407 () Bool)

(assert (=> bs!7705 m!219407))

(assert (=> bs!7705 m!219407))

(declare-fun m!219409 () Bool)

(assert (=> bs!7705 m!219409))

(assert (=> b!192222 d!56395))

(declare-fun d!56397 () Bool)

(declare-fun e!126727 () Bool)

(assert (=> d!56397 e!126727))

(declare-fun res!91013 () Bool)

(assert (=> d!56397 (=> (not res!91013) (not e!126727))))

(declare-fun lt!95807 () ListLongMap!2463)

(assert (=> d!56397 (= res!91013 (contains!1357 lt!95807 (_1!1776 (tuple2!3533 lt!95589 (minValue!3762 thiss!1248)))))))

(declare-fun lt!95809 () List!2448)

(assert (=> d!56397 (= lt!95807 (ListLongMap!2464 lt!95809))))

(declare-fun lt!95808 () Unit!5808)

(declare-fun lt!95806 () Unit!5808)

(assert (=> d!56397 (= lt!95808 lt!95806)))

(assert (=> d!56397 (= (getValueByKey!239 lt!95809 (_1!1776 (tuple2!3533 lt!95589 (minValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 lt!95589 (minValue!3762 thiss!1248)))))))

(assert (=> d!56397 (= lt!95806 (lemmaContainsTupThenGetReturnValue!128 lt!95809 (_1!1776 (tuple2!3533 lt!95589 (minValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 lt!95589 (minValue!3762 thiss!1248)))))))

(assert (=> d!56397 (= lt!95809 (insertStrictlySorted!130 (toList!1247 lt!95599) (_1!1776 (tuple2!3533 lt!95589 (minValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 lt!95589 (minValue!3762 thiss!1248)))))))

(assert (=> d!56397 (= (+!305 lt!95599 (tuple2!3533 lt!95589 (minValue!3762 thiss!1248))) lt!95807)))

(declare-fun b!192607 () Bool)

(declare-fun res!91014 () Bool)

(assert (=> b!192607 (=> (not res!91014) (not e!126727))))

(assert (=> b!192607 (= res!91014 (= (getValueByKey!239 (toList!1247 lt!95807) (_1!1776 (tuple2!3533 lt!95589 (minValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 lt!95589 (minValue!3762 thiss!1248))))))))

(declare-fun b!192608 () Bool)

(assert (=> b!192608 (= e!126727 (contains!1358 (toList!1247 lt!95807) (tuple2!3533 lt!95589 (minValue!3762 thiss!1248))))))

(assert (= (and d!56397 res!91013) b!192607))

(assert (= (and b!192607 res!91014) b!192608))

(declare-fun m!219411 () Bool)

(assert (=> d!56397 m!219411))

(declare-fun m!219413 () Bool)

(assert (=> d!56397 m!219413))

(declare-fun m!219415 () Bool)

(assert (=> d!56397 m!219415))

(declare-fun m!219417 () Bool)

(assert (=> d!56397 m!219417))

(declare-fun m!219419 () Bool)

(assert (=> b!192607 m!219419))

(declare-fun m!219421 () Bool)

(assert (=> b!192608 m!219421))

(assert (=> b!192222 d!56397))

(declare-fun d!56399 () Bool)

(assert (=> d!56399 (= (apply!183 lt!95599 lt!95590) (get!2221 (getValueByKey!239 (toList!1247 lt!95599) lt!95590)))))

(declare-fun bs!7706 () Bool)

(assert (= bs!7706 d!56399))

(declare-fun m!219423 () Bool)

(assert (=> bs!7706 m!219423))

(assert (=> bs!7706 m!219423))

(declare-fun m!219425 () Bool)

(assert (=> bs!7706 m!219425))

(assert (=> b!192222 d!56399))

(declare-fun d!56401 () Bool)

(declare-fun e!126728 () Bool)

(assert (=> d!56401 e!126728))

(declare-fun res!91015 () Bool)

(assert (=> d!56401 (=> (not res!91015) (not e!126728))))

(declare-fun lt!95811 () ListLongMap!2463)

(assert (=> d!56401 (= res!91015 (contains!1357 lt!95811 (_1!1776 (tuple2!3533 lt!95591 (zeroValue!3762 thiss!1248)))))))

(declare-fun lt!95813 () List!2448)

(assert (=> d!56401 (= lt!95811 (ListLongMap!2464 lt!95813))))

(declare-fun lt!95812 () Unit!5808)

(declare-fun lt!95810 () Unit!5808)

(assert (=> d!56401 (= lt!95812 lt!95810)))

(assert (=> d!56401 (= (getValueByKey!239 lt!95813 (_1!1776 (tuple2!3533 lt!95591 (zeroValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 lt!95591 (zeroValue!3762 thiss!1248)))))))

(assert (=> d!56401 (= lt!95810 (lemmaContainsTupThenGetReturnValue!128 lt!95813 (_1!1776 (tuple2!3533 lt!95591 (zeroValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 lt!95591 (zeroValue!3762 thiss!1248)))))))

(assert (=> d!56401 (= lt!95813 (insertStrictlySorted!130 (toList!1247 lt!95604) (_1!1776 (tuple2!3533 lt!95591 (zeroValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 lt!95591 (zeroValue!3762 thiss!1248)))))))

(assert (=> d!56401 (= (+!305 lt!95604 (tuple2!3533 lt!95591 (zeroValue!3762 thiss!1248))) lt!95811)))

(declare-fun b!192609 () Bool)

(declare-fun res!91016 () Bool)

(assert (=> b!192609 (=> (not res!91016) (not e!126728))))

(assert (=> b!192609 (= res!91016 (= (getValueByKey!239 (toList!1247 lt!95811) (_1!1776 (tuple2!3533 lt!95591 (zeroValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 lt!95591 (zeroValue!3762 thiss!1248))))))))

(declare-fun b!192610 () Bool)

(assert (=> b!192610 (= e!126728 (contains!1358 (toList!1247 lt!95811) (tuple2!3533 lt!95591 (zeroValue!3762 thiss!1248))))))

(assert (= (and d!56401 res!91015) b!192609))

(assert (= (and b!192609 res!91016) b!192610))

(declare-fun m!219427 () Bool)

(assert (=> d!56401 m!219427))

(declare-fun m!219429 () Bool)

(assert (=> d!56401 m!219429))

(declare-fun m!219431 () Bool)

(assert (=> d!56401 m!219431))

(declare-fun m!219433 () Bool)

(assert (=> d!56401 m!219433))

(declare-fun m!219435 () Bool)

(assert (=> b!192609 m!219435))

(declare-fun m!219437 () Bool)

(assert (=> b!192610 m!219437))

(assert (=> b!192222 d!56401))

(declare-fun d!56403 () Bool)

(declare-fun e!126730 () Bool)

(assert (=> d!56403 e!126730))

(declare-fun res!91017 () Bool)

(assert (=> d!56403 (=> res!91017 e!126730)))

(declare-fun lt!95815 () Bool)

(assert (=> d!56403 (= res!91017 (not lt!95815))))

(declare-fun lt!95817 () Bool)

(assert (=> d!56403 (= lt!95815 lt!95817)))

(declare-fun lt!95816 () Unit!5808)

(declare-fun e!126729 () Unit!5808)

(assert (=> d!56403 (= lt!95816 e!126729)))

(declare-fun c!34732 () Bool)

(assert (=> d!56403 (= c!34732 lt!95817)))

(assert (=> d!56403 (= lt!95817 (containsKey!243 (toList!1247 (+!305 lt!95604 (tuple2!3533 lt!95591 (zeroValue!3762 thiss!1248)))) lt!95598))))

(assert (=> d!56403 (= (contains!1357 (+!305 lt!95604 (tuple2!3533 lt!95591 (zeroValue!3762 thiss!1248))) lt!95598) lt!95815)))

(declare-fun b!192611 () Bool)

(declare-fun lt!95814 () Unit!5808)

(assert (=> b!192611 (= e!126729 lt!95814)))

(assert (=> b!192611 (= lt!95814 (lemmaContainsKeyImpliesGetValueByKeyDefined!192 (toList!1247 (+!305 lt!95604 (tuple2!3533 lt!95591 (zeroValue!3762 thiss!1248)))) lt!95598))))

(assert (=> b!192611 (isDefined!193 (getValueByKey!239 (toList!1247 (+!305 lt!95604 (tuple2!3533 lt!95591 (zeroValue!3762 thiss!1248)))) lt!95598))))

(declare-fun b!192612 () Bool)

(declare-fun Unit!5825 () Unit!5808)

(assert (=> b!192612 (= e!126729 Unit!5825)))

(declare-fun b!192613 () Bool)

(assert (=> b!192613 (= e!126730 (isDefined!193 (getValueByKey!239 (toList!1247 (+!305 lt!95604 (tuple2!3533 lt!95591 (zeroValue!3762 thiss!1248)))) lt!95598)))))

(assert (= (and d!56403 c!34732) b!192611))

(assert (= (and d!56403 (not c!34732)) b!192612))

(assert (= (and d!56403 (not res!91017)) b!192613))

(declare-fun m!219439 () Bool)

(assert (=> d!56403 m!219439))

(declare-fun m!219441 () Bool)

(assert (=> b!192611 m!219441))

(declare-fun m!219443 () Bool)

(assert (=> b!192611 m!219443))

(assert (=> b!192611 m!219443))

(declare-fun m!219445 () Bool)

(assert (=> b!192611 m!219445))

(assert (=> b!192613 m!219443))

(assert (=> b!192613 m!219443))

(assert (=> b!192613 m!219445))

(assert (=> b!192222 d!56403))

(declare-fun d!56405 () Bool)

(assert (=> d!56405 (contains!1357 (+!305 lt!95604 (tuple2!3533 lt!95591 (zeroValue!3762 thiss!1248))) lt!95598)))

(declare-fun lt!95818 () Unit!5808)

(assert (=> d!56405 (= lt!95818 (choose!1057 lt!95604 lt!95591 (zeroValue!3762 thiss!1248) lt!95598))))

(assert (=> d!56405 (contains!1357 lt!95604 lt!95598)))

(assert (=> d!56405 (= (addStillContains!159 lt!95604 lt!95591 (zeroValue!3762 thiss!1248) lt!95598) lt!95818)))

(declare-fun bs!7707 () Bool)

(assert (= bs!7707 d!56405))

(assert (=> bs!7707 m!218931))

(assert (=> bs!7707 m!218931))

(assert (=> bs!7707 m!218947))

(declare-fun m!219447 () Bool)

(assert (=> bs!7707 m!219447))

(declare-fun m!219449 () Bool)

(assert (=> bs!7707 m!219449))

(assert (=> b!192222 d!56405))

(declare-fun d!56407 () Bool)

(assert (=> d!56407 (= (apply!183 (+!305 lt!95595 (tuple2!3533 lt!95607 (zeroValue!3762 thiss!1248))) lt!95601) (apply!183 lt!95595 lt!95601))))

(declare-fun lt!95819 () Unit!5808)

(assert (=> d!56407 (= lt!95819 (choose!1056 lt!95595 lt!95607 (zeroValue!3762 thiss!1248) lt!95601))))

(declare-fun e!126731 () Bool)

(assert (=> d!56407 e!126731))

(declare-fun res!91018 () Bool)

(assert (=> d!56407 (=> (not res!91018) (not e!126731))))

(assert (=> d!56407 (= res!91018 (contains!1357 lt!95595 lt!95601))))

(assert (=> d!56407 (= (addApplyDifferent!159 lt!95595 lt!95607 (zeroValue!3762 thiss!1248) lt!95601) lt!95819)))

(declare-fun b!192614 () Bool)

(assert (=> b!192614 (= e!126731 (not (= lt!95601 lt!95607)))))

(assert (= (and d!56407 res!91018) b!192614))

(assert (=> d!56407 m!218949))

(assert (=> d!56407 m!218951))

(assert (=> d!56407 m!218949))

(declare-fun m!219451 () Bool)

(assert (=> d!56407 m!219451))

(assert (=> d!56407 m!218929))

(declare-fun m!219453 () Bool)

(assert (=> d!56407 m!219453))

(assert (=> b!192222 d!56407))

(declare-fun d!56409 () Bool)

(assert (=> d!56409 (= (apply!183 (+!305 lt!95594 (tuple2!3533 lt!95592 (minValue!3762 thiss!1248))) lt!95603) (get!2221 (getValueByKey!239 (toList!1247 (+!305 lt!95594 (tuple2!3533 lt!95592 (minValue!3762 thiss!1248)))) lt!95603)))))

(declare-fun bs!7708 () Bool)

(assert (= bs!7708 d!56409))

(declare-fun m!219455 () Bool)

(assert (=> bs!7708 m!219455))

(assert (=> bs!7708 m!219455))

(declare-fun m!219457 () Bool)

(assert (=> bs!7708 m!219457))

(assert (=> b!192222 d!56409))

(declare-fun d!56411 () Bool)

(assert (=> d!56411 (= (apply!183 lt!95595 lt!95601) (get!2221 (getValueByKey!239 (toList!1247 lt!95595) lt!95601)))))

(declare-fun bs!7709 () Bool)

(assert (= bs!7709 d!56411))

(declare-fun m!219459 () Bool)

(assert (=> bs!7709 m!219459))

(assert (=> bs!7709 m!219459))

(declare-fun m!219461 () Bool)

(assert (=> bs!7709 m!219461))

(assert (=> b!192222 d!56411))

(declare-fun d!56413 () Bool)

(assert (=> d!56413 (= (apply!183 lt!95594 lt!95603) (get!2221 (getValueByKey!239 (toList!1247 lt!95594) lt!95603)))))

(declare-fun bs!7710 () Bool)

(assert (= bs!7710 d!56413))

(declare-fun m!219463 () Bool)

(assert (=> bs!7710 m!219463))

(assert (=> bs!7710 m!219463))

(declare-fun m!219465 () Bool)

(assert (=> bs!7710 m!219465))

(assert (=> b!192222 d!56413))

(declare-fun d!56415 () Bool)

(assert (=> d!56415 (= (apply!183 (+!305 lt!95594 (tuple2!3533 lt!95592 (minValue!3762 thiss!1248))) lt!95603) (apply!183 lt!95594 lt!95603))))

(declare-fun lt!95820 () Unit!5808)

(assert (=> d!56415 (= lt!95820 (choose!1056 lt!95594 lt!95592 (minValue!3762 thiss!1248) lt!95603))))

(declare-fun e!126732 () Bool)

(assert (=> d!56415 e!126732))

(declare-fun res!91019 () Bool)

(assert (=> d!56415 (=> (not res!91019) (not e!126732))))

(assert (=> d!56415 (= res!91019 (contains!1357 lt!95594 lt!95603))))

(assert (=> d!56415 (= (addApplyDifferent!159 lt!95594 lt!95592 (minValue!3762 thiss!1248) lt!95603) lt!95820)))

(declare-fun b!192615 () Bool)

(assert (=> b!192615 (= e!126732 (not (= lt!95603 lt!95592)))))

(assert (= (and d!56415 res!91019) b!192615))

(assert (=> d!56415 m!218937))

(assert (=> d!56415 m!218939))

(assert (=> d!56415 m!218937))

(declare-fun m!219467 () Bool)

(assert (=> d!56415 m!219467))

(assert (=> d!56415 m!218941))

(declare-fun m!219469 () Bool)

(assert (=> d!56415 m!219469))

(assert (=> b!192222 d!56415))

(assert (=> b!192222 d!56275))

(declare-fun d!56417 () Bool)

(assert (=> d!56417 (= (apply!183 (+!305 lt!95595 (tuple2!3533 lt!95607 (zeroValue!3762 thiss!1248))) lt!95601) (get!2221 (getValueByKey!239 (toList!1247 (+!305 lt!95595 (tuple2!3533 lt!95607 (zeroValue!3762 thiss!1248)))) lt!95601)))))

(declare-fun bs!7711 () Bool)

(assert (= bs!7711 d!56417))

(declare-fun m!219471 () Bool)

(assert (=> bs!7711 m!219471))

(assert (=> bs!7711 m!219471))

(declare-fun m!219473 () Bool)

(assert (=> bs!7711 m!219473))

(assert (=> b!192222 d!56417))

(declare-fun d!56419 () Bool)

(declare-fun e!126733 () Bool)

(assert (=> d!56419 e!126733))

(declare-fun res!91020 () Bool)

(assert (=> d!56419 (=> (not res!91020) (not e!126733))))

(declare-fun lt!95822 () ListLongMap!2463)

(assert (=> d!56419 (= res!91020 (contains!1357 lt!95822 (_1!1776 (tuple2!3533 lt!95607 (zeroValue!3762 thiss!1248)))))))

(declare-fun lt!95824 () List!2448)

(assert (=> d!56419 (= lt!95822 (ListLongMap!2464 lt!95824))))

(declare-fun lt!95823 () Unit!5808)

(declare-fun lt!95821 () Unit!5808)

(assert (=> d!56419 (= lt!95823 lt!95821)))

(assert (=> d!56419 (= (getValueByKey!239 lt!95824 (_1!1776 (tuple2!3533 lt!95607 (zeroValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 lt!95607 (zeroValue!3762 thiss!1248)))))))

(assert (=> d!56419 (= lt!95821 (lemmaContainsTupThenGetReturnValue!128 lt!95824 (_1!1776 (tuple2!3533 lt!95607 (zeroValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 lt!95607 (zeroValue!3762 thiss!1248)))))))

(assert (=> d!56419 (= lt!95824 (insertStrictlySorted!130 (toList!1247 lt!95595) (_1!1776 (tuple2!3533 lt!95607 (zeroValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 lt!95607 (zeroValue!3762 thiss!1248)))))))

(assert (=> d!56419 (= (+!305 lt!95595 (tuple2!3533 lt!95607 (zeroValue!3762 thiss!1248))) lt!95822)))

(declare-fun b!192616 () Bool)

(declare-fun res!91021 () Bool)

(assert (=> b!192616 (=> (not res!91021) (not e!126733))))

(assert (=> b!192616 (= res!91021 (= (getValueByKey!239 (toList!1247 lt!95822) (_1!1776 (tuple2!3533 lt!95607 (zeroValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 lt!95607 (zeroValue!3762 thiss!1248))))))))

(declare-fun b!192617 () Bool)

(assert (=> b!192617 (= e!126733 (contains!1358 (toList!1247 lt!95822) (tuple2!3533 lt!95607 (zeroValue!3762 thiss!1248))))))

(assert (= (and d!56419 res!91020) b!192616))

(assert (= (and b!192616 res!91021) b!192617))

(declare-fun m!219475 () Bool)

(assert (=> d!56419 m!219475))

(declare-fun m!219477 () Bool)

(assert (=> d!56419 m!219477))

(declare-fun m!219479 () Bool)

(assert (=> d!56419 m!219479))

(declare-fun m!219481 () Bool)

(assert (=> d!56419 m!219481))

(declare-fun m!219483 () Bool)

(assert (=> b!192616 m!219483))

(declare-fun m!219485 () Bool)

(assert (=> b!192617 m!219485))

(assert (=> b!192222 d!56419))

(declare-fun d!56421 () Bool)

(assert (=> d!56421 (= (apply!183 (+!305 lt!95599 (tuple2!3533 lt!95589 (minValue!3762 thiss!1248))) lt!95590) (apply!183 lt!95599 lt!95590))))

(declare-fun lt!95825 () Unit!5808)

(assert (=> d!56421 (= lt!95825 (choose!1056 lt!95599 lt!95589 (minValue!3762 thiss!1248) lt!95590))))

(declare-fun e!126734 () Bool)

(assert (=> d!56421 e!126734))

(declare-fun res!91022 () Bool)

(assert (=> d!56421 (=> (not res!91022) (not e!126734))))

(assert (=> d!56421 (= res!91022 (contains!1357 lt!95599 lt!95590))))

(assert (=> d!56421 (= (addApplyDifferent!159 lt!95599 lt!95589 (minValue!3762 thiss!1248) lt!95590) lt!95825)))

(declare-fun b!192618 () Bool)

(assert (=> b!192618 (= e!126734 (not (= lt!95590 lt!95589)))))

(assert (= (and d!56421 res!91022) b!192618))

(assert (=> d!56421 m!218957))

(assert (=> d!56421 m!218959))

(assert (=> d!56421 m!218957))

(declare-fun m!219487 () Bool)

(assert (=> d!56421 m!219487))

(assert (=> d!56421 m!218955))

(declare-fun m!219489 () Bool)

(assert (=> d!56421 m!219489))

(assert (=> b!192222 d!56421))

(declare-fun d!56423 () Bool)

(declare-fun e!126735 () Bool)

(assert (=> d!56423 e!126735))

(declare-fun res!91023 () Bool)

(assert (=> d!56423 (=> (not res!91023) (not e!126735))))

(declare-fun lt!95827 () ListLongMap!2463)

(assert (=> d!56423 (= res!91023 (contains!1357 lt!95827 (_1!1776 (tuple2!3533 lt!95592 (minValue!3762 thiss!1248)))))))

(declare-fun lt!95829 () List!2448)

(assert (=> d!56423 (= lt!95827 (ListLongMap!2464 lt!95829))))

(declare-fun lt!95828 () Unit!5808)

(declare-fun lt!95826 () Unit!5808)

(assert (=> d!56423 (= lt!95828 lt!95826)))

(assert (=> d!56423 (= (getValueByKey!239 lt!95829 (_1!1776 (tuple2!3533 lt!95592 (minValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 lt!95592 (minValue!3762 thiss!1248)))))))

(assert (=> d!56423 (= lt!95826 (lemmaContainsTupThenGetReturnValue!128 lt!95829 (_1!1776 (tuple2!3533 lt!95592 (minValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 lt!95592 (minValue!3762 thiss!1248)))))))

(assert (=> d!56423 (= lt!95829 (insertStrictlySorted!130 (toList!1247 lt!95594) (_1!1776 (tuple2!3533 lt!95592 (minValue!3762 thiss!1248))) (_2!1776 (tuple2!3533 lt!95592 (minValue!3762 thiss!1248)))))))

(assert (=> d!56423 (= (+!305 lt!95594 (tuple2!3533 lt!95592 (minValue!3762 thiss!1248))) lt!95827)))

(declare-fun b!192619 () Bool)

(declare-fun res!91024 () Bool)

(assert (=> b!192619 (=> (not res!91024) (not e!126735))))

(assert (=> b!192619 (= res!91024 (= (getValueByKey!239 (toList!1247 lt!95827) (_1!1776 (tuple2!3533 lt!95592 (minValue!3762 thiss!1248)))) (Some!244 (_2!1776 (tuple2!3533 lt!95592 (minValue!3762 thiss!1248))))))))

(declare-fun b!192620 () Bool)

(assert (=> b!192620 (= e!126735 (contains!1358 (toList!1247 lt!95827) (tuple2!3533 lt!95592 (minValue!3762 thiss!1248))))))

(assert (= (and d!56423 res!91023) b!192619))

(assert (= (and b!192619 res!91024) b!192620))

(declare-fun m!219491 () Bool)

(assert (=> d!56423 m!219491))

(declare-fun m!219493 () Bool)

(assert (=> d!56423 m!219493))

(declare-fun m!219495 () Bool)

(assert (=> d!56423 m!219495))

(declare-fun m!219497 () Bool)

(assert (=> d!56423 m!219497))

(declare-fun m!219499 () Bool)

(assert (=> b!192619 m!219499))

(declare-fun m!219501 () Bool)

(assert (=> b!192620 m!219501))

(assert (=> b!192222 d!56423))

(assert (=> b!192221 d!56287))

(assert (=> bm!19415 d!56325))

(declare-fun b!192621 () Bool)

(declare-fun e!126737 () Bool)

(assert (=> b!192621 (= e!126737 tp_is_empty!4461)))

(declare-fun b!192622 () Bool)

(declare-fun e!126736 () Bool)

(assert (=> b!192622 (= e!126736 tp_is_empty!4461)))

(declare-fun mapIsEmpty!7715 () Bool)

(declare-fun mapRes!7715 () Bool)

(assert (=> mapIsEmpty!7715 mapRes!7715))

(declare-fun condMapEmpty!7715 () Bool)

(declare-fun mapDefault!7715 () ValueCell!1887)

(assert (=> mapNonEmpty!7714 (= condMapEmpty!7715 (= mapRest!7714 ((as const (Array (_ BitVec 32) ValueCell!1887)) mapDefault!7715)))))

(assert (=> mapNonEmpty!7714 (= tp!16930 (and e!126736 mapRes!7715))))

(declare-fun mapNonEmpty!7715 () Bool)

(declare-fun tp!16931 () Bool)

(assert (=> mapNonEmpty!7715 (= mapRes!7715 (and tp!16931 e!126737))))

(declare-fun mapKey!7715 () (_ BitVec 32))

(declare-fun mapValue!7715 () ValueCell!1887)

(declare-fun mapRest!7715 () (Array (_ BitVec 32) ValueCell!1887))

(assert (=> mapNonEmpty!7715 (= mapRest!7714 (store mapRest!7715 mapKey!7715 mapValue!7715))))

(assert (= (and mapNonEmpty!7714 condMapEmpty!7715) mapIsEmpty!7715))

(assert (= (and mapNonEmpty!7714 (not condMapEmpty!7715)) mapNonEmpty!7715))

(assert (= (and mapNonEmpty!7715 ((_ is ValueCellFull!1887) mapValue!7715)) b!192621))

(assert (= (and mapNonEmpty!7714 ((_ is ValueCellFull!1887) mapDefault!7715)) b!192622))

(declare-fun m!219503 () Bool)

(assert (=> mapNonEmpty!7715 m!219503))

(declare-fun b_lambda!7469 () Bool)

(assert (= b_lambda!7463 (or (and b!192088 b_free!4689) b_lambda!7469)))

(declare-fun b_lambda!7471 () Bool)

(assert (= b_lambda!7461 (or (and b!192088 b_free!4689) b_lambda!7471)))

(declare-fun b_lambda!7473 () Bool)

(assert (= b_lambda!7467 (or (and b!192088 b_free!4689) b_lambda!7473)))

(declare-fun b_lambda!7475 () Bool)

(assert (= b_lambda!7465 (or (and b!192088 b_free!4689) b_lambda!7475)))

(check-sat (not d!56281) (not d!56321) (not b_lambda!7471) (not d!56289) (not b!192617) (not d!56305) (not b_lambda!7459) (not b!192457) (not d!56317) (not b!192446) (not b!192421) (not b!192497) (not d!56357) (not d!56421) (not bm!19447) (not b!192324) (not b!192340) (not d!56379) (not b!192501) (not b!192620) (not d!56335) (not b!192571) (not d!56401) (not d!56313) (not d!56345) (not d!56275) (not b!192505) (not b!192372) (not d!56413) (not d!56405) (not bm!19446) (not b!192604) (not b!192474) (not d!56333) (not d!56285) (not b!192334) (not b!192493) (not d!56341) (not b!192537) (not b!192608) (not d!56339) (not d!56365) (not b!192444) (not b!192383) (not d!56411) (not b_lambda!7457) (not bm!19430) (not b!192502) (not b!192328) (not bm!19434) (not b!192491) (not b_next!4689) (not b!192611) (not b!192411) (not b!192520) (not b_lambda!7469) (not b!192508) (not d!56393) (not b!192495) (not d!56293) (not b!192526) (not b!192390) (not d!56391) (not b!192565) (not b_lambda!7473) (not b!192331) (not b!192325) (not b!192504) b_and!11407 (not d!56417) (not b!192496) (not d!56359) (not d!56329) (not b!192553) (not b!192605) (not b!192500) (not d!56397) (not d!56297) (not d!56349) (not b!192519) (not bm!19422) (not d!56369) (not d!56407) (not b!192607) (not b!192609) (not b!192465) (not b!192610) (not d!56311) (not b!192478) tp_is_empty!4461 (not d!56319) (not d!56381) (not b!192359) (not d!56387) (not d!56355) (not b!192445) (not b!192524) (not b!192522) (not bm!19441) (not d!56325) (not b!192606) (not d!56347) (not b!192420) (not b!192461) (not b!192494) (not b!192389) (not d!56327) (not d!56419) (not b!192432) (not b!192602) (not b!192576) (not d!56371) (not b!192339) (not b!192525) (not b!192616) (not bm!19437) (not d!56395) (not mapNonEmpty!7715) (not b!192559) (not bm!19440) (not b!192419) (not d!56423) (not d!56323) (not d!56295) (not d!56377) (not b!192534) (not b!192333) (not d!56375) (not b!192423) (not b!192330) (not b!192332) (not b!192536) (not b!192485) (not b!192492) (not d!56363) (not b!192368) (not d!56337) (not d!56389) (not b!192557) (not d!56415) (not b!192509) (not b!192429) (not b_lambda!7475) (not d!56409) (not b!192479) (not b!192462) (not d!56353) (not b!192613) (not d!56385) (not b!192529) (not d!56343) (not d!56331) (not d!56399) (not b!192489) (not b!192538) (not b!192532) (not b!192619) (not b!192486) (not b!192369) (not d!56277) (not d!56301) (not d!56403) (not b!192463) (not b!192498) (not b!192370) (not b!192459))
(check-sat b_and!11407 (not b_next!4689))
