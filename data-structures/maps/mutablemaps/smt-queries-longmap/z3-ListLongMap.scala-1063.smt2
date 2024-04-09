; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22074 () Bool)

(assert start!22074)

(declare-fun b!228333 () Bool)

(declare-fun b_free!6129 () Bool)

(declare-fun b_next!6129 () Bool)

(assert (=> b!228333 (= b_free!6129 (not b_next!6129))))

(declare-fun tp!21529 () Bool)

(declare-fun b_and!13045 () Bool)

(assert (=> b!228333 (= tp!21529 b_and!13045)))

(declare-fun b!228323 () Bool)

(declare-fun res!112408 () Bool)

(declare-fun e!148143 () Bool)

(assert (=> b!228323 (=> res!112408 e!148143)))

(declare-datatypes ((V!7635 0))(
  ( (V!7636 (val!3040 Int)) )
))
(declare-datatypes ((ValueCell!2652 0))(
  ( (ValueCellFull!2652 (v!5056 V!7635)) (EmptyCell!2652) )
))
(declare-datatypes ((array!11224 0))(
  ( (array!11225 (arr!5331 (Array (_ BitVec 32) ValueCell!2652)) (size!5664 (_ BitVec 32))) )
))
(declare-datatypes ((array!11226 0))(
  ( (array!11227 (arr!5332 (Array (_ BitVec 32) (_ BitVec 64))) (size!5665 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3204 0))(
  ( (LongMapFixedSize!3205 (defaultEntry!4261 Int) (mask!10131 (_ BitVec 32)) (extraKeys!3998 (_ BitVec 32)) (zeroValue!4102 V!7635) (minValue!4102 V!7635) (_size!1651 (_ BitVec 32)) (_keys!6315 array!11226) (_values!4244 array!11224) (_vacant!1651 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3204)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11226 (_ BitVec 32)) Bool)

(assert (=> b!228323 (= res!112408 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6315 thiss!1504) (mask!10131 thiss!1504))))))

(declare-fun b!228324 () Bool)

(declare-fun res!112405 () Bool)

(declare-datatypes ((SeekEntryResult!917 0))(
  ( (MissingZero!917 (index!5838 (_ BitVec 32))) (Found!917 (index!5839 (_ BitVec 32))) (Intermediate!917 (undefined!1729 Bool) (index!5840 (_ BitVec 32)) (x!23337 (_ BitVec 32))) (Undefined!917) (MissingVacant!917 (index!5841 (_ BitVec 32))) )
))
(declare-fun lt!114922 () SeekEntryResult!917)

(assert (=> b!228324 (= res!112405 (= (select (arr!5332 (_keys!6315 thiss!1504)) (index!5841 lt!114922)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!148145 () Bool)

(assert (=> b!228324 (=> (not res!112405) (not e!148145))))

(declare-fun b!228325 () Bool)

(declare-fun res!112404 () Bool)

(declare-fun e!148140 () Bool)

(assert (=> b!228325 (=> (not res!112404) (not e!148140))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!228325 (= res!112404 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun c!37851 () Bool)

(declare-fun call!21220 () Bool)

(declare-fun bm!21216 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21216 (= call!21220 (inRange!0 (ite c!37851 (index!5838 lt!114922) (index!5841 lt!114922)) (mask!10131 thiss!1504)))))

(declare-fun b!228326 () Bool)

(declare-datatypes ((Unit!6940 0))(
  ( (Unit!6941) )
))
(declare-fun e!148150 () Unit!6940)

(declare-fun Unit!6942 () Unit!6940)

(assert (=> b!228326 (= e!148150 Unit!6942)))

(declare-fun b!228327 () Bool)

(declare-fun e!148139 () Bool)

(declare-fun call!21219 () Bool)

(assert (=> b!228327 (= e!148139 (not call!21219))))

(declare-fun b!228328 () Bool)

(declare-fun c!37853 () Bool)

(get-info :version)

(assert (=> b!228328 (= c!37853 ((_ is MissingVacant!917) lt!114922))))

(declare-fun e!148148 () Bool)

(declare-fun e!148149 () Bool)

(assert (=> b!228328 (= e!148148 e!148149)))

(declare-fun bm!21217 () Bool)

(declare-fun arrayContainsKey!0 (array!11226 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21217 (= call!21219 (arrayContainsKey!0 (_keys!6315 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!228329 () Bool)

(declare-fun e!148136 () Bool)

(assert (=> b!228329 (= e!148136 (not e!148143))))

(declare-fun res!112401 () Bool)

(assert (=> b!228329 (=> res!112401 e!148143)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!228329 (= res!112401 (not (validMask!0 (mask!10131 thiss!1504))))))

(declare-fun lt!114923 () array!11226)

(assert (=> b!228329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!114923 (mask!10131 thiss!1504))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lt!114919 () Unit!6940)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11226 (_ BitVec 32) (_ BitVec 32)) Unit!6940)

(assert (=> b!228329 (= lt!114919 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6315 thiss!1504) index!297 (mask!10131 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11226 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!228329 (= (arrayCountValidKeys!0 lt!114923 #b00000000000000000000000000000000 (size!5665 (_keys!6315 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6315 thiss!1504) #b00000000000000000000000000000000 (size!5665 (_keys!6315 thiss!1504)))))))

(declare-fun lt!114924 () Unit!6940)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11226 (_ BitVec 32) (_ BitVec 64)) Unit!6940)

(assert (=> b!228329 (= lt!114924 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6315 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3429 0))(
  ( (Nil!3426) (Cons!3425 (h!4073 (_ BitVec 64)) (t!8396 List!3429)) )
))
(declare-fun arrayNoDuplicates!0 (array!11226 (_ BitVec 32) List!3429) Bool)

(assert (=> b!228329 (arrayNoDuplicates!0 lt!114923 #b00000000000000000000000000000000 Nil!3426)))

(assert (=> b!228329 (= lt!114923 (array!11227 (store (arr!5332 (_keys!6315 thiss!1504)) index!297 key!932) (size!5665 (_keys!6315 thiss!1504))))))

(declare-fun lt!114918 () Unit!6940)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11226 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3429) Unit!6940)

(assert (=> b!228329 (= lt!114918 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6315 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3426))))

(declare-fun lt!114916 () Unit!6940)

(assert (=> b!228329 (= lt!114916 e!148150)))

(declare-fun c!37850 () Bool)

(assert (=> b!228329 (= c!37850 (arrayContainsKey!0 (_keys!6315 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!228330 () Bool)

(assert (=> b!228330 (= e!148145 (not call!21219))))

(declare-fun b!228322 () Bool)

(assert (=> b!228322 (= e!148143 true)))

(declare-fun lt!114914 () Bool)

(assert (=> b!228322 (= lt!114914 (arrayNoDuplicates!0 (_keys!6315 thiss!1504) #b00000000000000000000000000000000 Nil!3426))))

(declare-fun res!112399 () Bool)

(assert (=> start!22074 (=> (not res!112399) (not e!148140))))

(declare-fun valid!1274 (LongMapFixedSize!3204) Bool)

(assert (=> start!22074 (= res!112399 (valid!1274 thiss!1504))))

(assert (=> start!22074 e!148140))

(declare-fun e!148138 () Bool)

(assert (=> start!22074 e!148138))

(assert (=> start!22074 true))

(declare-fun b!228331 () Bool)

(declare-fun Unit!6943 () Unit!6940)

(assert (=> b!228331 (= e!148150 Unit!6943)))

(declare-fun lt!114920 () Unit!6940)

(declare-fun lemmaArrayContainsKeyThenInListMap!109 (array!11226 array!11224 (_ BitVec 32) (_ BitVec 32) V!7635 V!7635 (_ BitVec 64) (_ BitVec 32) Int) Unit!6940)

(assert (=> b!228331 (= lt!114920 (lemmaArrayContainsKeyThenInListMap!109 (_keys!6315 thiss!1504) (_values!4244 thiss!1504) (mask!10131 thiss!1504) (extraKeys!3998 thiss!1504) (zeroValue!4102 thiss!1504) (minValue!4102 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4261 thiss!1504)))))

(assert (=> b!228331 false))

(declare-fun mapIsEmpty!10156 () Bool)

(declare-fun mapRes!10156 () Bool)

(assert (=> mapIsEmpty!10156 mapRes!10156))

(declare-fun b!228332 () Bool)

(declare-fun e!148146 () Bool)

(declare-fun tp_is_empty!5991 () Bool)

(assert (=> b!228332 (= e!148146 tp_is_empty!5991)))

(declare-fun e!148141 () Bool)

(declare-fun array_inv!3515 (array!11226) Bool)

(declare-fun array_inv!3516 (array!11224) Bool)

(assert (=> b!228333 (= e!148138 (and tp!21529 tp_is_empty!5991 (array_inv!3515 (_keys!6315 thiss!1504)) (array_inv!3516 (_values!4244 thiss!1504)) e!148141))))

(declare-fun b!228334 () Bool)

(assert (=> b!228334 (= e!148149 e!148145)))

(declare-fun res!112407 () Bool)

(assert (=> b!228334 (= res!112407 call!21220)))

(assert (=> b!228334 (=> (not res!112407) (not e!148145))))

(declare-fun mapNonEmpty!10156 () Bool)

(declare-fun tp!21528 () Bool)

(declare-fun e!148137 () Bool)

(assert (=> mapNonEmpty!10156 (= mapRes!10156 (and tp!21528 e!148137))))

(declare-fun mapValue!10156 () ValueCell!2652)

(declare-fun mapRest!10156 () (Array (_ BitVec 32) ValueCell!2652))

(declare-fun mapKey!10156 () (_ BitVec 32))

(assert (=> mapNonEmpty!10156 (= (arr!5331 (_values!4244 thiss!1504)) (store mapRest!10156 mapKey!10156 mapValue!10156))))

(declare-fun b!228335 () Bool)

(declare-fun e!148142 () Unit!6940)

(declare-fun lt!114915 () Unit!6940)

(assert (=> b!228335 (= e!148142 lt!114915)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!284 (array!11226 array!11224 (_ BitVec 32) (_ BitVec 32) V!7635 V!7635 (_ BitVec 64) Int) Unit!6940)

(assert (=> b!228335 (= lt!114915 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!284 (_keys!6315 thiss!1504) (_values!4244 thiss!1504) (mask!10131 thiss!1504) (extraKeys!3998 thiss!1504) (zeroValue!4102 thiss!1504) (minValue!4102 thiss!1504) key!932 (defaultEntry!4261 thiss!1504)))))

(assert (=> b!228335 (= c!37851 ((_ is MissingZero!917) lt!114922))))

(assert (=> b!228335 e!148148))

(declare-fun b!228336 () Bool)

(assert (=> b!228336 (= e!148149 ((_ is Undefined!917) lt!114922))))

(declare-fun b!228337 () Bool)

(declare-fun e!148147 () Bool)

(assert (=> b!228337 (= e!148147 e!148136)))

(declare-fun res!112406 () Bool)

(assert (=> b!228337 (=> (not res!112406) (not e!148136))))

(assert (=> b!228337 (= res!112406 (inRange!0 index!297 (mask!10131 thiss!1504)))))

(declare-fun lt!114917 () Unit!6940)

(assert (=> b!228337 (= lt!114917 e!148142)))

(declare-fun c!37852 () Bool)

(declare-datatypes ((tuple2!4484 0))(
  ( (tuple2!4485 (_1!2252 (_ BitVec 64)) (_2!2252 V!7635)) )
))
(declare-datatypes ((List!3430 0))(
  ( (Nil!3427) (Cons!3426 (h!4074 tuple2!4484) (t!8397 List!3430)) )
))
(declare-datatypes ((ListLongMap!3411 0))(
  ( (ListLongMap!3412 (toList!1721 List!3430)) )
))
(declare-fun contains!1589 (ListLongMap!3411 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1244 (array!11226 array!11224 (_ BitVec 32) (_ BitVec 32) V!7635 V!7635 (_ BitVec 32) Int) ListLongMap!3411)

(assert (=> b!228337 (= c!37852 (contains!1589 (getCurrentListMap!1244 (_keys!6315 thiss!1504) (_values!4244 thiss!1504) (mask!10131 thiss!1504) (extraKeys!3998 thiss!1504) (zeroValue!4102 thiss!1504) (minValue!4102 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4261 thiss!1504)) key!932))))

(declare-fun b!228338 () Bool)

(assert (=> b!228338 (= e!148137 tp_is_empty!5991)))

(declare-fun b!228339 () Bool)

(assert (=> b!228339 (= e!148141 (and e!148146 mapRes!10156))))

(declare-fun condMapEmpty!10156 () Bool)

(declare-fun mapDefault!10156 () ValueCell!2652)

(assert (=> b!228339 (= condMapEmpty!10156 (= (arr!5331 (_values!4244 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2652)) mapDefault!10156)))))

(declare-fun b!228340 () Bool)

(declare-fun Unit!6944 () Unit!6940)

(assert (=> b!228340 (= e!148142 Unit!6944)))

(declare-fun lt!114921 () Unit!6940)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!273 (array!11226 array!11224 (_ BitVec 32) (_ BitVec 32) V!7635 V!7635 (_ BitVec 64) Int) Unit!6940)

(assert (=> b!228340 (= lt!114921 (lemmaInListMapThenSeekEntryOrOpenFindsIt!273 (_keys!6315 thiss!1504) (_values!4244 thiss!1504) (mask!10131 thiss!1504) (extraKeys!3998 thiss!1504) (zeroValue!4102 thiss!1504) (minValue!4102 thiss!1504) key!932 (defaultEntry!4261 thiss!1504)))))

(assert (=> b!228340 false))

(declare-fun b!228341 () Bool)

(declare-fun res!112400 () Bool)

(assert (=> b!228341 (=> res!112400 e!148143)))

(assert (=> b!228341 (= res!112400 (or (not (= (size!5664 (_values!4244 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10131 thiss!1504)))) (not (= (size!5665 (_keys!6315 thiss!1504)) (size!5664 (_values!4244 thiss!1504)))) (bvslt (mask!10131 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!3998 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!3998 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!228342 () Bool)

(declare-fun res!112403 () Bool)

(assert (=> b!228342 (=> (not res!112403) (not e!148139))))

(assert (=> b!228342 (= res!112403 call!21220)))

(assert (=> b!228342 (= e!148148 e!148139)))

(declare-fun b!228343 () Bool)

(declare-fun res!112398 () Bool)

(assert (=> b!228343 (=> (not res!112398) (not e!148139))))

(assert (=> b!228343 (= res!112398 (= (select (arr!5332 (_keys!6315 thiss!1504)) (index!5838 lt!114922)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!228344 () Bool)

(assert (=> b!228344 (= e!148140 e!148147)))

(declare-fun res!112402 () Bool)

(assert (=> b!228344 (=> (not res!112402) (not e!148147))))

(assert (=> b!228344 (= res!112402 (or (= lt!114922 (MissingZero!917 index!297)) (= lt!114922 (MissingVacant!917 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11226 (_ BitVec 32)) SeekEntryResult!917)

(assert (=> b!228344 (= lt!114922 (seekEntryOrOpen!0 key!932 (_keys!6315 thiss!1504) (mask!10131 thiss!1504)))))

(assert (= (and start!22074 res!112399) b!228325))

(assert (= (and b!228325 res!112404) b!228344))

(assert (= (and b!228344 res!112402) b!228337))

(assert (= (and b!228337 c!37852) b!228340))

(assert (= (and b!228337 (not c!37852)) b!228335))

(assert (= (and b!228335 c!37851) b!228342))

(assert (= (and b!228335 (not c!37851)) b!228328))

(assert (= (and b!228342 res!112403) b!228343))

(assert (= (and b!228343 res!112398) b!228327))

(assert (= (and b!228328 c!37853) b!228334))

(assert (= (and b!228328 (not c!37853)) b!228336))

(assert (= (and b!228334 res!112407) b!228324))

(assert (= (and b!228324 res!112405) b!228330))

(assert (= (or b!228342 b!228334) bm!21216))

(assert (= (or b!228327 b!228330) bm!21217))

(assert (= (and b!228337 res!112406) b!228329))

(assert (= (and b!228329 c!37850) b!228331))

(assert (= (and b!228329 (not c!37850)) b!228326))

(assert (= (and b!228329 (not res!112401)) b!228341))

(assert (= (and b!228341 (not res!112400)) b!228323))

(assert (= (and b!228323 (not res!112408)) b!228322))

(assert (= (and b!228339 condMapEmpty!10156) mapIsEmpty!10156))

(assert (= (and b!228339 (not condMapEmpty!10156)) mapNonEmpty!10156))

(assert (= (and mapNonEmpty!10156 ((_ is ValueCellFull!2652) mapValue!10156)) b!228338))

(assert (= (and b!228339 ((_ is ValueCellFull!2652) mapDefault!10156)) b!228332))

(assert (= b!228333 b!228339))

(assert (= start!22074 b!228333))

(declare-fun m!250121 () Bool)

(assert (=> b!228340 m!250121))

(declare-fun m!250123 () Bool)

(assert (=> b!228322 m!250123))

(declare-fun m!250125 () Bool)

(assert (=> b!228343 m!250125))

(declare-fun m!250127 () Bool)

(assert (=> b!228337 m!250127))

(declare-fun m!250129 () Bool)

(assert (=> b!228337 m!250129))

(assert (=> b!228337 m!250129))

(declare-fun m!250131 () Bool)

(assert (=> b!228337 m!250131))

(declare-fun m!250133 () Bool)

(assert (=> b!228331 m!250133))

(declare-fun m!250135 () Bool)

(assert (=> b!228335 m!250135))

(declare-fun m!250137 () Bool)

(assert (=> bm!21216 m!250137))

(declare-fun m!250139 () Bool)

(assert (=> b!228329 m!250139))

(declare-fun m!250141 () Bool)

(assert (=> b!228329 m!250141))

(declare-fun m!250143 () Bool)

(assert (=> b!228329 m!250143))

(declare-fun m!250145 () Bool)

(assert (=> b!228329 m!250145))

(declare-fun m!250147 () Bool)

(assert (=> b!228329 m!250147))

(declare-fun m!250149 () Bool)

(assert (=> b!228329 m!250149))

(declare-fun m!250151 () Bool)

(assert (=> b!228329 m!250151))

(declare-fun m!250153 () Bool)

(assert (=> b!228329 m!250153))

(declare-fun m!250155 () Bool)

(assert (=> b!228329 m!250155))

(declare-fun m!250157 () Bool)

(assert (=> b!228329 m!250157))

(assert (=> bm!21217 m!250141))

(declare-fun m!250159 () Bool)

(assert (=> b!228344 m!250159))

(declare-fun m!250161 () Bool)

(assert (=> mapNonEmpty!10156 m!250161))

(declare-fun m!250163 () Bool)

(assert (=> start!22074 m!250163))

(declare-fun m!250165 () Bool)

(assert (=> b!228323 m!250165))

(declare-fun m!250167 () Bool)

(assert (=> b!228324 m!250167))

(declare-fun m!250169 () Bool)

(assert (=> b!228333 m!250169))

(declare-fun m!250171 () Bool)

(assert (=> b!228333 m!250171))

(check-sat (not bm!21217) (not b!228337) (not b!228333) (not start!22074) b_and!13045 (not b!228335) (not bm!21216) (not b!228340) (not b!228322) (not b!228331) (not b_next!6129) (not b!228323) tp_is_empty!5991 (not b!228329) (not b!228344) (not mapNonEmpty!10156))
(check-sat b_and!13045 (not b_next!6129))
