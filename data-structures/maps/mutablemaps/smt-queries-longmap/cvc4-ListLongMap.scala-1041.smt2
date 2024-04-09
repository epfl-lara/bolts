; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21944 () Bool)

(assert start!21944)

(declare-fun b!223381 () Bool)

(declare-fun b_free!5999 () Bool)

(declare-fun b_next!5999 () Bool)

(assert (=> b!223381 (= b_free!5999 (not b_next!5999))))

(declare-fun tp!21139 () Bool)

(declare-fun b_and!12915 () Bool)

(assert (=> b!223381 (= tp!21139 b_and!12915)))

(declare-fun b!223369 () Bool)

(declare-fun res!109803 () Bool)

(declare-fun e!145109 () Bool)

(assert (=> b!223369 (=> (not res!109803) (not e!145109))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!223369 (= res!109803 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!223370 () Bool)

(declare-fun e!145119 () Bool)

(declare-fun call!20830 () Bool)

(assert (=> b!223370 (= e!145119 (not call!20830))))

(declare-fun b!223371 () Bool)

(declare-fun e!145117 () Bool)

(assert (=> b!223371 (= e!145109 e!145117)))

(declare-fun res!109788 () Bool)

(assert (=> b!223371 (=> (not res!109788) (not e!145117))))

(declare-datatypes ((SeekEntryResult!858 0))(
  ( (MissingZero!858 (index!5602 (_ BitVec 32))) (Found!858 (index!5603 (_ BitVec 32))) (Intermediate!858 (undefined!1670 Bool) (index!5604 (_ BitVec 32)) (x!23102 (_ BitVec 32))) (Undefined!858) (MissingVacant!858 (index!5605 (_ BitVec 32))) )
))
(declare-fun lt!112918 () SeekEntryResult!858)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!223371 (= res!109788 (or (= lt!112918 (MissingZero!858 index!297)) (= lt!112918 (MissingVacant!858 index!297))))))

(declare-datatypes ((V!7461 0))(
  ( (V!7462 (val!2975 Int)) )
))
(declare-datatypes ((ValueCell!2587 0))(
  ( (ValueCellFull!2587 (v!4991 V!7461)) (EmptyCell!2587) )
))
(declare-datatypes ((array!10964 0))(
  ( (array!10965 (arr!5201 (Array (_ BitVec 32) ValueCell!2587)) (size!5534 (_ BitVec 32))) )
))
(declare-datatypes ((array!10966 0))(
  ( (array!10967 (arr!5202 (Array (_ BitVec 32) (_ BitVec 64))) (size!5535 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3074 0))(
  ( (LongMapFixedSize!3075 (defaultEntry!4196 Int) (mask!10022 (_ BitVec 32)) (extraKeys!3933 (_ BitVec 32)) (zeroValue!4037 V!7461) (minValue!4037 V!7461) (_size!1586 (_ BitVec 32)) (_keys!6250 array!10966) (_values!4179 array!10964) (_vacant!1586 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3074)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10966 (_ BitVec 32)) SeekEntryResult!858)

(assert (=> b!223371 (= lt!112918 (seekEntryOrOpen!0 key!932 (_keys!6250 thiss!1504) (mask!10022 thiss!1504)))))

(declare-fun b!223372 () Bool)

(declare-fun e!145111 () Bool)

(declare-fun e!145123 () Bool)

(assert (=> b!223372 (= e!145111 e!145123)))

(declare-fun res!109791 () Bool)

(assert (=> b!223372 (=> (not res!109791) (not e!145123))))

(assert (=> b!223372 (= res!109791 (and (bvslt (size!5535 (_keys!6250 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5535 (_keys!6250 thiss!1504)))))))

(declare-datatypes ((Unit!6710 0))(
  ( (Unit!6711) )
))
(declare-fun lt!112916 () Unit!6710)

(declare-fun e!145114 () Unit!6710)

(assert (=> b!223372 (= lt!112916 e!145114)))

(declare-fun c!37070 () Bool)

(declare-fun lt!112921 () Bool)

(assert (=> b!223372 (= c!37070 lt!112921)))

(declare-fun arrayContainsKey!0 (array!10966 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!223372 (= lt!112921 (arrayContainsKey!0 (_keys!6250 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!223373 () Bool)

(declare-fun res!109804 () Bool)

(assert (=> b!223373 (=> (not res!109804) (not e!145119))))

(assert (=> b!223373 (= res!109804 (= (select (arr!5202 (_keys!6250 thiss!1504)) (index!5602 lt!112918)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!223374 () Bool)

(declare-fun res!109795 () Bool)

(assert (=> b!223374 (=> (not res!109795) (not e!145123))))

(declare-datatypes ((List!3340 0))(
  ( (Nil!3337) (Cons!3336 (h!3984 (_ BitVec 64)) (t!8307 List!3340)) )
))
(declare-fun contains!1539 (List!3340 (_ BitVec 64)) Bool)

(assert (=> b!223374 (= res!109795 (not (contains!1539 Nil!3337 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!223375 () Bool)

(declare-fun e!145118 () Bool)

(assert (=> b!223375 (= e!145118 (not call!20830))))

(declare-fun b!223376 () Bool)

(assert (=> b!223376 (= e!145117 e!145111)))

(declare-fun res!109796 () Bool)

(assert (=> b!223376 (=> (not res!109796) (not e!145111))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!223376 (= res!109796 (inRange!0 index!297 (mask!10022 thiss!1504)))))

(declare-fun lt!112922 () Unit!6710)

(declare-fun e!145112 () Unit!6710)

(assert (=> b!223376 (= lt!112922 e!145112)))

(declare-fun c!37073 () Bool)

(declare-datatypes ((tuple2!4408 0))(
  ( (tuple2!4409 (_1!2214 (_ BitVec 64)) (_2!2214 V!7461)) )
))
(declare-datatypes ((List!3341 0))(
  ( (Nil!3338) (Cons!3337 (h!3985 tuple2!4408) (t!8308 List!3341)) )
))
(declare-datatypes ((ListLongMap!3335 0))(
  ( (ListLongMap!3336 (toList!1683 List!3341)) )
))
(declare-fun contains!1540 (ListLongMap!3335 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1206 (array!10966 array!10964 (_ BitVec 32) (_ BitVec 32) V!7461 V!7461 (_ BitVec 32) Int) ListLongMap!3335)

(assert (=> b!223376 (= c!37073 (contains!1540 (getCurrentListMap!1206 (_keys!6250 thiss!1504) (_values!4179 thiss!1504) (mask!10022 thiss!1504) (extraKeys!3933 thiss!1504) (zeroValue!4037 thiss!1504) (minValue!4037 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4196 thiss!1504)) key!932))))

(declare-fun b!223377 () Bool)

(declare-fun res!109801 () Bool)

(assert (=> b!223377 (=> (not res!109801) (not e!145123))))

(assert (=> b!223377 (= res!109801 (not (contains!1539 Nil!3337 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!9961 () Bool)

(declare-fun mapRes!9961 () Bool)

(declare-fun tp!21138 () Bool)

(declare-fun e!145125 () Bool)

(assert (=> mapNonEmpty!9961 (= mapRes!9961 (and tp!21138 e!145125))))

(declare-fun mapValue!9961 () ValueCell!2587)

(declare-fun mapRest!9961 () (Array (_ BitVec 32) ValueCell!2587))

(declare-fun mapKey!9961 () (_ BitVec 32))

(assert (=> mapNonEmpty!9961 (= (arr!5201 (_values!4179 thiss!1504)) (store mapRest!9961 mapKey!9961 mapValue!9961))))

(declare-fun b!223379 () Bool)

(declare-fun res!109793 () Bool)

(assert (=> b!223379 (=> (not res!109793) (not e!145123))))

(assert (=> b!223379 (= res!109793 (not lt!112921))))

(declare-fun b!223380 () Bool)

(declare-fun tp_is_empty!5861 () Bool)

(assert (=> b!223380 (= e!145125 tp_is_empty!5861)))

(declare-fun e!145115 () Bool)

(declare-fun e!145113 () Bool)

(declare-fun array_inv!3433 (array!10966) Bool)

(declare-fun array_inv!3434 (array!10964) Bool)

(assert (=> b!223381 (= e!145113 (and tp!21139 tp_is_empty!5861 (array_inv!3433 (_keys!6250 thiss!1504)) (array_inv!3434 (_values!4179 thiss!1504)) e!145115))))

(declare-fun b!223382 () Bool)

(declare-fun Unit!6712 () Unit!6710)

(assert (=> b!223382 (= e!145114 Unit!6712)))

(declare-fun lt!112923 () Unit!6710)

(declare-fun lemmaArrayContainsKeyThenInListMap!71 (array!10966 array!10964 (_ BitVec 32) (_ BitVec 32) V!7461 V!7461 (_ BitVec 64) (_ BitVec 32) Int) Unit!6710)

(assert (=> b!223382 (= lt!112923 (lemmaArrayContainsKeyThenInListMap!71 (_keys!6250 thiss!1504) (_values!4179 thiss!1504) (mask!10022 thiss!1504) (extraKeys!3933 thiss!1504) (zeroValue!4037 thiss!1504) (minValue!4037 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4196 thiss!1504)))))

(assert (=> b!223382 false))

(declare-fun b!223383 () Bool)

(declare-fun res!109787 () Bool)

(assert (=> b!223383 (=> (not res!109787) (not e!145123))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!223383 (= res!109787 (validKeyInArray!0 key!932))))

(declare-fun b!223384 () Bool)

(assert (=> b!223384 (= e!145123 false)))

(declare-fun lt!112917 () Bool)

(assert (=> b!223384 (= lt!112917 (contains!1539 Nil!3337 key!932))))

(declare-fun b!223385 () Bool)

(declare-fun Unit!6713 () Unit!6710)

(assert (=> b!223385 (= e!145112 Unit!6713)))

(declare-fun lt!112920 () Unit!6710)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!233 (array!10966 array!10964 (_ BitVec 32) (_ BitVec 32) V!7461 V!7461 (_ BitVec 64) Int) Unit!6710)

(assert (=> b!223385 (= lt!112920 (lemmaInListMapThenSeekEntryOrOpenFindsIt!233 (_keys!6250 thiss!1504) (_values!4179 thiss!1504) (mask!10022 thiss!1504) (extraKeys!3933 thiss!1504) (zeroValue!4037 thiss!1504) (minValue!4037 thiss!1504) key!932 (defaultEntry!4196 thiss!1504)))))

(assert (=> b!223385 false))

(declare-fun b!223386 () Bool)

(declare-fun c!37071 () Bool)

(assert (=> b!223386 (= c!37071 (is-MissingVacant!858 lt!112918))))

(declare-fun e!145122 () Bool)

(declare-fun e!145126 () Bool)

(assert (=> b!223386 (= e!145122 e!145126)))

(declare-fun b!223387 () Bool)

(declare-fun res!109794 () Bool)

(assert (=> b!223387 (=> (not res!109794) (not e!145123))))

(assert (=> b!223387 (= res!109794 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!5535 (_keys!6250 thiss!1504)))))))

(declare-fun bm!20826 () Bool)

(assert (=> bm!20826 (= call!20830 (arrayContainsKey!0 (_keys!6250 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!20827 () Bool)

(declare-fun c!37072 () Bool)

(declare-fun call!20829 () Bool)

(assert (=> bm!20827 (= call!20829 (inRange!0 (ite c!37072 (index!5602 lt!112918) (index!5605 lt!112918)) (mask!10022 thiss!1504)))))

(declare-fun b!223388 () Bool)

(assert (=> b!223388 (= e!145126 (is-Undefined!858 lt!112918))))

(declare-fun b!223389 () Bool)

(declare-fun res!109792 () Bool)

(assert (=> b!223389 (=> (not res!109792) (not e!145123))))

(declare-fun arrayNoDuplicates!0 (array!10966 (_ BitVec 32) List!3340) Bool)

(assert (=> b!223389 (= res!109792 (arrayNoDuplicates!0 (_keys!6250 thiss!1504) #b00000000000000000000000000000000 Nil!3337))))

(declare-fun mapIsEmpty!9961 () Bool)

(assert (=> mapIsEmpty!9961 mapRes!9961))

(declare-fun b!223390 () Bool)

(declare-fun lt!112919 () Unit!6710)

(assert (=> b!223390 (= e!145112 lt!112919)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!241 (array!10966 array!10964 (_ BitVec 32) (_ BitVec 32) V!7461 V!7461 (_ BitVec 64) Int) Unit!6710)

(assert (=> b!223390 (= lt!112919 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!241 (_keys!6250 thiss!1504) (_values!4179 thiss!1504) (mask!10022 thiss!1504) (extraKeys!3933 thiss!1504) (zeroValue!4037 thiss!1504) (minValue!4037 thiss!1504) key!932 (defaultEntry!4196 thiss!1504)))))

(assert (=> b!223390 (= c!37072 (is-MissingZero!858 lt!112918))))

(assert (=> b!223390 e!145122))

(declare-fun b!223391 () Bool)

(declare-fun e!145120 () Bool)

(assert (=> b!223391 (= e!145120 (contains!1539 Nil!3337 key!932))))

(declare-fun b!223392 () Bool)

(declare-fun res!109797 () Bool)

(assert (=> b!223392 (=> (not res!109797) (not e!145123))))

(declare-fun e!145124 () Bool)

(assert (=> b!223392 (= res!109797 e!145124)))

(declare-fun res!109799 () Bool)

(assert (=> b!223392 (=> res!109799 e!145124)))

(assert (=> b!223392 (= res!109799 e!145120)))

(declare-fun res!109789 () Bool)

(assert (=> b!223392 (=> (not res!109789) (not e!145120))))

(assert (=> b!223392 (= res!109789 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun res!109798 () Bool)

(assert (=> start!21944 (=> (not res!109798) (not e!145109))))

(declare-fun valid!1230 (LongMapFixedSize!3074) Bool)

(assert (=> start!21944 (= res!109798 (valid!1230 thiss!1504))))

(assert (=> start!21944 e!145109))

(assert (=> start!21944 e!145113))

(assert (=> start!21944 true))

(declare-fun b!223378 () Bool)

(declare-fun res!109800 () Bool)

(assert (=> b!223378 (=> (not res!109800) (not e!145123))))

(declare-fun noDuplicate!77 (List!3340) Bool)

(assert (=> b!223378 (= res!109800 (noDuplicate!77 Nil!3337))))

(declare-fun b!223393 () Bool)

(declare-fun res!109786 () Bool)

(assert (=> b!223393 (= res!109786 (= (select (arr!5202 (_keys!6250 thiss!1504)) (index!5605 lt!112918)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!223393 (=> (not res!109786) (not e!145118))))

(declare-fun b!223394 () Bool)

(declare-fun e!145121 () Bool)

(assert (=> b!223394 (= e!145121 (not (contains!1539 Nil!3337 key!932)))))

(declare-fun b!223395 () Bool)

(declare-fun e!145116 () Bool)

(assert (=> b!223395 (= e!145115 (and e!145116 mapRes!9961))))

(declare-fun condMapEmpty!9961 () Bool)

(declare-fun mapDefault!9961 () ValueCell!2587)

