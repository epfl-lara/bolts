; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22362 () Bool)

(assert start!22362)

(declare-fun b!234067 () Bool)

(declare-fun b_free!6303 () Bool)

(declare-fun b_next!6303 () Bool)

(assert (=> b!234067 (= b_free!6303 (not b_next!6303))))

(declare-fun tp!22062 () Bool)

(declare-fun b_and!13233 () Bool)

(assert (=> b!234067 (= tp!22062 b_and!13233)))

(declare-fun b!234065 () Bool)

(declare-fun e!152050 () Bool)

(declare-fun e!152048 () Bool)

(assert (=> b!234065 (= e!152050 e!152048)))

(declare-fun res!114850 () Bool)

(assert (=> b!234065 (=> (not res!114850) (not e!152048))))

(declare-datatypes ((SeekEntryResult!989 0))(
  ( (MissingZero!989 (index!6126 (_ BitVec 32))) (Found!989 (index!6127 (_ BitVec 32))) (Intermediate!989 (undefined!1801 Bool) (index!6128 (_ BitVec 32)) (x!23687 (_ BitVec 32))) (Undefined!989) (MissingVacant!989 (index!6129 (_ BitVec 32))) )
))
(declare-fun lt!118441 () SeekEntryResult!989)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!234065 (= res!114850 (or (= lt!118441 (MissingZero!989 index!297)) (= lt!118441 (MissingVacant!989 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7867 0))(
  ( (V!7868 (val!3127 Int)) )
))
(declare-datatypes ((ValueCell!2739 0))(
  ( (ValueCellFull!2739 (v!5146 V!7867)) (EmptyCell!2739) )
))
(declare-datatypes ((array!11578 0))(
  ( (array!11579 (arr!5505 (Array (_ BitVec 32) ValueCell!2739)) (size!5840 (_ BitVec 32))) )
))
(declare-datatypes ((array!11580 0))(
  ( (array!11581 (arr!5506 (Array (_ BitVec 32) (_ BitVec 64))) (size!5841 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3378 0))(
  ( (LongMapFixedSize!3379 (defaultEntry!4353 Int) (mask!10295 (_ BitVec 32)) (extraKeys!4090 (_ BitVec 32)) (zeroValue!4194 V!7867) (minValue!4194 V!7867) (_size!1738 (_ BitVec 32)) (_keys!6416 array!11580) (_values!4336 array!11578) (_vacant!1738 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3378)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11580 (_ BitVec 32)) SeekEntryResult!989)

(assert (=> b!234065 (= lt!118441 (seekEntryOrOpen!0 key!932 (_keys!6416 thiss!1504) (mask!10295 thiss!1504)))))

(declare-fun mapIsEmpty!10428 () Bool)

(declare-fun mapRes!10428 () Bool)

(assert (=> mapIsEmpty!10428 mapRes!10428))

(declare-fun res!114849 () Bool)

(assert (=> start!22362 (=> (not res!114849) (not e!152050))))

(declare-fun valid!1325 (LongMapFixedSize!3378) Bool)

(assert (=> start!22362 (= res!114849 (valid!1325 thiss!1504))))

(assert (=> start!22362 e!152050))

(declare-fun e!152047 () Bool)

(assert (=> start!22362 e!152047))

(assert (=> start!22362 true))

(declare-fun b!234066 () Bool)

(assert (=> b!234066 (= e!152048 (and (= (size!5840 (_values!4336 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10295 thiss!1504))) (= (size!5841 (_keys!6416 thiss!1504)) (size!5840 (_values!4336 thiss!1504))) (bvslt (mask!10295 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun e!152049 () Bool)

(declare-fun tp_is_empty!6165 () Bool)

(declare-fun array_inv!3619 (array!11580) Bool)

(declare-fun array_inv!3620 (array!11578) Bool)

(assert (=> b!234067 (= e!152047 (and tp!22062 tp_is_empty!6165 (array_inv!3619 (_keys!6416 thiss!1504)) (array_inv!3620 (_values!4336 thiss!1504)) e!152049))))

(declare-fun b!234068 () Bool)

(declare-fun e!152046 () Bool)

(assert (=> b!234068 (= e!152046 tp_is_empty!6165)))

(declare-fun b!234069 () Bool)

(declare-fun res!114851 () Bool)

(assert (=> b!234069 (=> (not res!114851) (not e!152048))))

(declare-datatypes ((tuple2!4606 0))(
  ( (tuple2!4607 (_1!2313 (_ BitVec 64)) (_2!2313 V!7867)) )
))
(declare-datatypes ((List!3541 0))(
  ( (Nil!3538) (Cons!3537 (h!4187 tuple2!4606) (t!8514 List!3541)) )
))
(declare-datatypes ((ListLongMap!3533 0))(
  ( (ListLongMap!3534 (toList!1782 List!3541)) )
))
(declare-fun contains!1648 (ListLongMap!3533 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1305 (array!11580 array!11578 (_ BitVec 32) (_ BitVec 32) V!7867 V!7867 (_ BitVec 32) Int) ListLongMap!3533)

(assert (=> b!234069 (= res!114851 (contains!1648 (getCurrentListMap!1305 (_keys!6416 thiss!1504) (_values!4336 thiss!1504) (mask!10295 thiss!1504) (extraKeys!4090 thiss!1504) (zeroValue!4194 thiss!1504) (minValue!4194 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4353 thiss!1504)) key!932))))

(declare-fun mapNonEmpty!10428 () Bool)

(declare-fun tp!22061 () Bool)

(assert (=> mapNonEmpty!10428 (= mapRes!10428 (and tp!22061 e!152046))))

(declare-fun mapRest!10428 () (Array (_ BitVec 32) ValueCell!2739))

(declare-fun mapKey!10428 () (_ BitVec 32))

(declare-fun mapValue!10428 () ValueCell!2739)

(assert (=> mapNonEmpty!10428 (= (arr!5505 (_values!4336 thiss!1504)) (store mapRest!10428 mapKey!10428 mapValue!10428))))

(declare-fun b!234070 () Bool)

(declare-fun res!114848 () Bool)

(assert (=> b!234070 (=> (not res!114848) (not e!152050))))

(assert (=> b!234070 (= res!114848 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!234071 () Bool)

(declare-fun e!152045 () Bool)

(assert (=> b!234071 (= e!152045 tp_is_empty!6165)))

(declare-fun b!234072 () Bool)

(declare-fun res!114847 () Bool)

(assert (=> b!234072 (=> (not res!114847) (not e!152048))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!234072 (= res!114847 (validMask!0 (mask!10295 thiss!1504)))))

(declare-fun b!234073 () Bool)

(assert (=> b!234073 (= e!152049 (and e!152045 mapRes!10428))))

(declare-fun condMapEmpty!10428 () Bool)

(declare-fun mapDefault!10428 () ValueCell!2739)

(assert (=> b!234073 (= condMapEmpty!10428 (= (arr!5505 (_values!4336 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2739)) mapDefault!10428)))))

(assert (= (and start!22362 res!114849) b!234070))

(assert (= (and b!234070 res!114848) b!234065))

(assert (= (and b!234065 res!114850) b!234069))

(assert (= (and b!234069 res!114851) b!234072))

(assert (= (and b!234072 res!114847) b!234066))

(assert (= (and b!234073 condMapEmpty!10428) mapIsEmpty!10428))

(assert (= (and b!234073 (not condMapEmpty!10428)) mapNonEmpty!10428))

(get-info :version)

(assert (= (and mapNonEmpty!10428 ((_ is ValueCellFull!2739) mapValue!10428)) b!234068))

(assert (= (and b!234073 ((_ is ValueCellFull!2739) mapDefault!10428)) b!234071))

(assert (= b!234067 b!234073))

(assert (= start!22362 b!234067))

(declare-fun m!255429 () Bool)

(assert (=> b!234069 m!255429))

(assert (=> b!234069 m!255429))

(declare-fun m!255431 () Bool)

(assert (=> b!234069 m!255431))

(declare-fun m!255433 () Bool)

(assert (=> b!234065 m!255433))

(declare-fun m!255435 () Bool)

(assert (=> b!234067 m!255435))

(declare-fun m!255437 () Bool)

(assert (=> b!234067 m!255437))

(declare-fun m!255439 () Bool)

(assert (=> b!234072 m!255439))

(declare-fun m!255441 () Bool)

(assert (=> mapNonEmpty!10428 m!255441))

(declare-fun m!255443 () Bool)

(assert (=> start!22362 m!255443))

(check-sat (not b!234067) (not b_next!6303) tp_is_empty!6165 (not b!234069) (not b!234072) (not start!22362) (not mapNonEmpty!10428) b_and!13233 (not b!234065))
(check-sat b_and!13233 (not b_next!6303))
(get-model)

(declare-fun d!58975 () Bool)

(declare-fun e!152077 () Bool)

(assert (=> d!58975 e!152077))

(declare-fun res!114869 () Bool)

(assert (=> d!58975 (=> res!114869 e!152077)))

(declare-fun lt!118453 () Bool)

(assert (=> d!58975 (= res!114869 (not lt!118453))))

(declare-fun lt!118456 () Bool)

(assert (=> d!58975 (= lt!118453 lt!118456)))

(declare-datatypes ((Unit!7227 0))(
  ( (Unit!7228) )
))
(declare-fun lt!118455 () Unit!7227)

(declare-fun e!152078 () Unit!7227)

(assert (=> d!58975 (= lt!118455 e!152078)))

(declare-fun c!38959 () Bool)

(assert (=> d!58975 (= c!38959 lt!118456)))

(declare-fun containsKey!255 (List!3541 (_ BitVec 64)) Bool)

(assert (=> d!58975 (= lt!118456 (containsKey!255 (toList!1782 (getCurrentListMap!1305 (_keys!6416 thiss!1504) (_values!4336 thiss!1504) (mask!10295 thiss!1504) (extraKeys!4090 thiss!1504) (zeroValue!4194 thiss!1504) (minValue!4194 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4353 thiss!1504))) key!932))))

(assert (=> d!58975 (= (contains!1648 (getCurrentListMap!1305 (_keys!6416 thiss!1504) (_values!4336 thiss!1504) (mask!10295 thiss!1504) (extraKeys!4090 thiss!1504) (zeroValue!4194 thiss!1504) (minValue!4194 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4353 thiss!1504)) key!932) lt!118453)))

(declare-fun b!234107 () Bool)

(declare-fun lt!118454 () Unit!7227)

(assert (=> b!234107 (= e!152078 lt!118454)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!204 (List!3541 (_ BitVec 64)) Unit!7227)

(assert (=> b!234107 (= lt!118454 (lemmaContainsKeyImpliesGetValueByKeyDefined!204 (toList!1782 (getCurrentListMap!1305 (_keys!6416 thiss!1504) (_values!4336 thiss!1504) (mask!10295 thiss!1504) (extraKeys!4090 thiss!1504) (zeroValue!4194 thiss!1504) (minValue!4194 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4353 thiss!1504))) key!932))))

(declare-datatypes ((Option!269 0))(
  ( (Some!268 (v!5148 V!7867)) (None!267) )
))
(declare-fun isDefined!205 (Option!269) Bool)

(declare-fun getValueByKey!263 (List!3541 (_ BitVec 64)) Option!269)

(assert (=> b!234107 (isDefined!205 (getValueByKey!263 (toList!1782 (getCurrentListMap!1305 (_keys!6416 thiss!1504) (_values!4336 thiss!1504) (mask!10295 thiss!1504) (extraKeys!4090 thiss!1504) (zeroValue!4194 thiss!1504) (minValue!4194 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4353 thiss!1504))) key!932))))

(declare-fun b!234108 () Bool)

(declare-fun Unit!7229 () Unit!7227)

(assert (=> b!234108 (= e!152078 Unit!7229)))

(declare-fun b!234109 () Bool)

(assert (=> b!234109 (= e!152077 (isDefined!205 (getValueByKey!263 (toList!1782 (getCurrentListMap!1305 (_keys!6416 thiss!1504) (_values!4336 thiss!1504) (mask!10295 thiss!1504) (extraKeys!4090 thiss!1504) (zeroValue!4194 thiss!1504) (minValue!4194 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4353 thiss!1504))) key!932)))))

(assert (= (and d!58975 c!38959) b!234107))

(assert (= (and d!58975 (not c!38959)) b!234108))

(assert (= (and d!58975 (not res!114869)) b!234109))

(declare-fun m!255461 () Bool)

(assert (=> d!58975 m!255461))

(declare-fun m!255463 () Bool)

(assert (=> b!234107 m!255463))

(declare-fun m!255465 () Bool)

(assert (=> b!234107 m!255465))

(assert (=> b!234107 m!255465))

(declare-fun m!255467 () Bool)

(assert (=> b!234107 m!255467))

(assert (=> b!234109 m!255465))

(assert (=> b!234109 m!255465))

(assert (=> b!234109 m!255467))

(assert (=> b!234069 d!58975))

(declare-fun b!234152 () Bool)

(declare-fun c!38975 () Bool)

(assert (=> b!234152 (= c!38975 (and (not (= (bvand (extraKeys!4090 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4090 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!152105 () ListLongMap!3533)

(declare-fun e!152107 () ListLongMap!3533)

(assert (=> b!234152 (= e!152105 e!152107)))

(declare-fun b!234153 () Bool)

(declare-fun e!152115 () Bool)

(declare-fun lt!118517 () ListLongMap!3533)

(declare-fun apply!206 (ListLongMap!3533 (_ BitVec 64)) V!7867)

(assert (=> b!234153 (= e!152115 (= (apply!206 lt!118517 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4194 thiss!1504)))))

(declare-fun b!234154 () Bool)

(declare-fun call!21779 () ListLongMap!3533)

(assert (=> b!234154 (= e!152107 call!21779)))

(declare-fun b!234155 () Bool)

(declare-fun e!152113 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!234155 (= e!152113 (validKeyInArray!0 (select (arr!5506 (_keys!6416 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!234156 () Bool)

(declare-fun e!152114 () Unit!7227)

(declare-fun Unit!7230 () Unit!7227)

(assert (=> b!234156 (= e!152114 Unit!7230)))

(declare-fun b!234157 () Bool)

(declare-fun call!21780 () ListLongMap!3533)

(assert (=> b!234157 (= e!152107 call!21780)))

(declare-fun bm!21775 () Bool)

(declare-fun call!21782 () Bool)

(assert (=> bm!21775 (= call!21782 (contains!1648 lt!118517 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!58977 () Bool)

(declare-fun e!152112 () Bool)

(assert (=> d!58977 e!152112))

(declare-fun res!114892 () Bool)

(assert (=> d!58977 (=> (not res!114892) (not e!152112))))

(assert (=> d!58977 (= res!114892 (or (bvsge #b00000000000000000000000000000000 (size!5841 (_keys!6416 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5841 (_keys!6416 thiss!1504))))))))

(declare-fun lt!118508 () ListLongMap!3533)

(assert (=> d!58977 (= lt!118517 lt!118508)))

(declare-fun lt!118519 () Unit!7227)

(assert (=> d!58977 (= lt!118519 e!152114)))

(declare-fun c!38972 () Bool)

(declare-fun e!152106 () Bool)

(assert (=> d!58977 (= c!38972 e!152106)))

(declare-fun res!114896 () Bool)

(assert (=> d!58977 (=> (not res!114896) (not e!152106))))

(assert (=> d!58977 (= res!114896 (bvslt #b00000000000000000000000000000000 (size!5841 (_keys!6416 thiss!1504))))))

(declare-fun e!152109 () ListLongMap!3533)

(assert (=> d!58977 (= lt!118508 e!152109)))

(declare-fun c!38974 () Bool)

(assert (=> d!58977 (= c!38974 (and (not (= (bvand (extraKeys!4090 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4090 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!58977 (validMask!0 (mask!10295 thiss!1504))))

(assert (=> d!58977 (= (getCurrentListMap!1305 (_keys!6416 thiss!1504) (_values!4336 thiss!1504) (mask!10295 thiss!1504) (extraKeys!4090 thiss!1504) (zeroValue!4194 thiss!1504) (minValue!4194 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4353 thiss!1504)) lt!118517)))

(declare-fun b!234158 () Bool)

(declare-fun e!152111 () Bool)

(declare-fun e!152108 () Bool)

(assert (=> b!234158 (= e!152111 e!152108)))

(declare-fun res!114891 () Bool)

(assert (=> b!234158 (= res!114891 call!21782)))

(assert (=> b!234158 (=> (not res!114891) (not e!152108))))

(declare-fun b!234159 () Bool)

(declare-fun call!21778 () ListLongMap!3533)

(declare-fun +!628 (ListLongMap!3533 tuple2!4606) ListLongMap!3533)

(assert (=> b!234159 (= e!152109 (+!628 call!21778 (tuple2!4607 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4194 thiss!1504))))))

(declare-fun b!234160 () Bool)

(assert (=> b!234160 (= e!152109 e!152105)))

(declare-fun c!38976 () Bool)

(assert (=> b!234160 (= c!38976 (and (not (= (bvand (extraKeys!4090 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4090 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!21776 () Bool)

(declare-fun call!21784 () ListLongMap!3533)

(declare-fun getCurrentListMapNoExtraKeys!525 (array!11580 array!11578 (_ BitVec 32) (_ BitVec 32) V!7867 V!7867 (_ BitVec 32) Int) ListLongMap!3533)

(assert (=> bm!21776 (= call!21784 (getCurrentListMapNoExtraKeys!525 (_keys!6416 thiss!1504) (_values!4336 thiss!1504) (mask!10295 thiss!1504) (extraKeys!4090 thiss!1504) (zeroValue!4194 thiss!1504) (minValue!4194 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4353 thiss!1504)))))

(declare-fun b!234161 () Bool)

(assert (=> b!234161 (= e!152111 (not call!21782))))

(declare-fun b!234162 () Bool)

(declare-fun res!114889 () Bool)

(assert (=> b!234162 (=> (not res!114889) (not e!152112))))

(declare-fun e!152117 () Bool)

(assert (=> b!234162 (= res!114889 e!152117)))

(declare-fun res!114890 () Bool)

(assert (=> b!234162 (=> res!114890 e!152117)))

(assert (=> b!234162 (= res!114890 (not e!152113))))

(declare-fun res!114893 () Bool)

(assert (=> b!234162 (=> (not res!114893) (not e!152113))))

(assert (=> b!234162 (= res!114893 (bvslt #b00000000000000000000000000000000 (size!5841 (_keys!6416 thiss!1504))))))

(declare-fun bm!21777 () Bool)

(declare-fun call!21783 () ListLongMap!3533)

(assert (=> bm!21777 (= call!21778 (+!628 (ite c!38974 call!21784 (ite c!38976 call!21783 call!21779)) (ite (or c!38974 c!38976) (tuple2!4607 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4194 thiss!1504)) (tuple2!4607 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4194 thiss!1504)))))))

(declare-fun bm!21778 () Bool)

(assert (=> bm!21778 (= call!21779 call!21783)))

(declare-fun b!234163 () Bool)

(declare-fun e!152110 () Bool)

(declare-fun get!2826 (ValueCell!2739 V!7867) V!7867)

(declare-fun dynLambda!544 (Int (_ BitVec 64)) V!7867)

(assert (=> b!234163 (= e!152110 (= (apply!206 lt!118517 (select (arr!5506 (_keys!6416 thiss!1504)) #b00000000000000000000000000000000)) (get!2826 (select (arr!5505 (_values!4336 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!544 (defaultEntry!4353 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!234163 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5840 (_values!4336 thiss!1504))))))

(assert (=> b!234163 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5841 (_keys!6416 thiss!1504))))))

(declare-fun b!234164 () Bool)

(declare-fun lt!118507 () Unit!7227)

(assert (=> b!234164 (= e!152114 lt!118507)))

(declare-fun lt!118522 () ListLongMap!3533)

(assert (=> b!234164 (= lt!118522 (getCurrentListMapNoExtraKeys!525 (_keys!6416 thiss!1504) (_values!4336 thiss!1504) (mask!10295 thiss!1504) (extraKeys!4090 thiss!1504) (zeroValue!4194 thiss!1504) (minValue!4194 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4353 thiss!1504)))))

(declare-fun lt!118520 () (_ BitVec 64))

(assert (=> b!234164 (= lt!118520 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118510 () (_ BitVec 64))

(assert (=> b!234164 (= lt!118510 (select (arr!5506 (_keys!6416 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118515 () Unit!7227)

(declare-fun addStillContains!182 (ListLongMap!3533 (_ BitVec 64) V!7867 (_ BitVec 64)) Unit!7227)

(assert (=> b!234164 (= lt!118515 (addStillContains!182 lt!118522 lt!118520 (zeroValue!4194 thiss!1504) lt!118510))))

(assert (=> b!234164 (contains!1648 (+!628 lt!118522 (tuple2!4607 lt!118520 (zeroValue!4194 thiss!1504))) lt!118510)))

(declare-fun lt!118513 () Unit!7227)

(assert (=> b!234164 (= lt!118513 lt!118515)))

(declare-fun lt!118521 () ListLongMap!3533)

(assert (=> b!234164 (= lt!118521 (getCurrentListMapNoExtraKeys!525 (_keys!6416 thiss!1504) (_values!4336 thiss!1504) (mask!10295 thiss!1504) (extraKeys!4090 thiss!1504) (zeroValue!4194 thiss!1504) (minValue!4194 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4353 thiss!1504)))))

(declare-fun lt!118509 () (_ BitVec 64))

(assert (=> b!234164 (= lt!118509 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118502 () (_ BitVec 64))

(assert (=> b!234164 (= lt!118502 (select (arr!5506 (_keys!6416 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118512 () Unit!7227)

(declare-fun addApplyDifferent!182 (ListLongMap!3533 (_ BitVec 64) V!7867 (_ BitVec 64)) Unit!7227)

(assert (=> b!234164 (= lt!118512 (addApplyDifferent!182 lt!118521 lt!118509 (minValue!4194 thiss!1504) lt!118502))))

(assert (=> b!234164 (= (apply!206 (+!628 lt!118521 (tuple2!4607 lt!118509 (minValue!4194 thiss!1504))) lt!118502) (apply!206 lt!118521 lt!118502))))

(declare-fun lt!118505 () Unit!7227)

(assert (=> b!234164 (= lt!118505 lt!118512)))

(declare-fun lt!118516 () ListLongMap!3533)

(assert (=> b!234164 (= lt!118516 (getCurrentListMapNoExtraKeys!525 (_keys!6416 thiss!1504) (_values!4336 thiss!1504) (mask!10295 thiss!1504) (extraKeys!4090 thiss!1504) (zeroValue!4194 thiss!1504) (minValue!4194 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4353 thiss!1504)))))

(declare-fun lt!118503 () (_ BitVec 64))

(assert (=> b!234164 (= lt!118503 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118518 () (_ BitVec 64))

(assert (=> b!234164 (= lt!118518 (select (arr!5506 (_keys!6416 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118514 () Unit!7227)

(assert (=> b!234164 (= lt!118514 (addApplyDifferent!182 lt!118516 lt!118503 (zeroValue!4194 thiss!1504) lt!118518))))

(assert (=> b!234164 (= (apply!206 (+!628 lt!118516 (tuple2!4607 lt!118503 (zeroValue!4194 thiss!1504))) lt!118518) (apply!206 lt!118516 lt!118518))))

(declare-fun lt!118506 () Unit!7227)

(assert (=> b!234164 (= lt!118506 lt!118514)))

(declare-fun lt!118504 () ListLongMap!3533)

(assert (=> b!234164 (= lt!118504 (getCurrentListMapNoExtraKeys!525 (_keys!6416 thiss!1504) (_values!4336 thiss!1504) (mask!10295 thiss!1504) (extraKeys!4090 thiss!1504) (zeroValue!4194 thiss!1504) (minValue!4194 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4353 thiss!1504)))))

(declare-fun lt!118501 () (_ BitVec 64))

(assert (=> b!234164 (= lt!118501 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118511 () (_ BitVec 64))

(assert (=> b!234164 (= lt!118511 (select (arr!5506 (_keys!6416 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!234164 (= lt!118507 (addApplyDifferent!182 lt!118504 lt!118501 (minValue!4194 thiss!1504) lt!118511))))

(assert (=> b!234164 (= (apply!206 (+!628 lt!118504 (tuple2!4607 lt!118501 (minValue!4194 thiss!1504))) lt!118511) (apply!206 lt!118504 lt!118511))))

(declare-fun b!234165 () Bool)

(declare-fun res!114888 () Bool)

(assert (=> b!234165 (=> (not res!114888) (not e!152112))))

(declare-fun e!152116 () Bool)

(assert (=> b!234165 (= res!114888 e!152116)))

(declare-fun c!38977 () Bool)

(assert (=> b!234165 (= c!38977 (not (= (bvand (extraKeys!4090 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!234166 () Bool)

(assert (=> b!234166 (= e!152105 call!21780)))

(declare-fun b!234167 () Bool)

(assert (=> b!234167 (= e!152117 e!152110)))

(declare-fun res!114895 () Bool)

(assert (=> b!234167 (=> (not res!114895) (not e!152110))))

(assert (=> b!234167 (= res!114895 (contains!1648 lt!118517 (select (arr!5506 (_keys!6416 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!234167 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5841 (_keys!6416 thiss!1504))))))

(declare-fun bm!21779 () Bool)

(declare-fun call!21781 () Bool)

(assert (=> bm!21779 (= call!21781 (contains!1648 lt!118517 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!21780 () Bool)

(assert (=> bm!21780 (= call!21783 call!21784)))

(declare-fun b!234168 () Bool)

(assert (=> b!234168 (= e!152108 (= (apply!206 lt!118517 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4194 thiss!1504)))))

(declare-fun b!234169 () Bool)

(assert (=> b!234169 (= e!152106 (validKeyInArray!0 (select (arr!5506 (_keys!6416 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!21781 () Bool)

(assert (=> bm!21781 (= call!21780 call!21778)))

(declare-fun b!234170 () Bool)

(assert (=> b!234170 (= e!152112 e!152111)))

(declare-fun c!38973 () Bool)

(assert (=> b!234170 (= c!38973 (not (= (bvand (extraKeys!4090 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!234171 () Bool)

(assert (=> b!234171 (= e!152116 (not call!21781))))

(declare-fun b!234172 () Bool)

(assert (=> b!234172 (= e!152116 e!152115)))

(declare-fun res!114894 () Bool)

(assert (=> b!234172 (= res!114894 call!21781)))

(assert (=> b!234172 (=> (not res!114894) (not e!152115))))

(assert (= (and d!58977 c!38974) b!234159))

(assert (= (and d!58977 (not c!38974)) b!234160))

(assert (= (and b!234160 c!38976) b!234166))

(assert (= (and b!234160 (not c!38976)) b!234152))

(assert (= (and b!234152 c!38975) b!234157))

(assert (= (and b!234152 (not c!38975)) b!234154))

(assert (= (or b!234157 b!234154) bm!21778))

(assert (= (or b!234166 bm!21778) bm!21780))

(assert (= (or b!234166 b!234157) bm!21781))

(assert (= (or b!234159 bm!21780) bm!21776))

(assert (= (or b!234159 bm!21781) bm!21777))

(assert (= (and d!58977 res!114896) b!234169))

(assert (= (and d!58977 c!38972) b!234164))

(assert (= (and d!58977 (not c!38972)) b!234156))

(assert (= (and d!58977 res!114892) b!234162))

(assert (= (and b!234162 res!114893) b!234155))

(assert (= (and b!234162 (not res!114890)) b!234167))

(assert (= (and b!234167 res!114895) b!234163))

(assert (= (and b!234162 res!114889) b!234165))

(assert (= (and b!234165 c!38977) b!234172))

(assert (= (and b!234165 (not c!38977)) b!234171))

(assert (= (and b!234172 res!114894) b!234153))

(assert (= (or b!234172 b!234171) bm!21779))

(assert (= (and b!234165 res!114888) b!234170))

(assert (= (and b!234170 c!38973) b!234158))

(assert (= (and b!234170 (not c!38973)) b!234161))

(assert (= (and b!234158 res!114891) b!234168))

(assert (= (or b!234158 b!234161) bm!21775))

(declare-fun b_lambda!7901 () Bool)

(assert (=> (not b_lambda!7901) (not b!234163)))

(declare-fun t!8517 () Bool)

(declare-fun tb!2933 () Bool)

(assert (=> (and b!234067 (= (defaultEntry!4353 thiss!1504) (defaultEntry!4353 thiss!1504)) t!8517) tb!2933))

(declare-fun result!5105 () Bool)

(assert (=> tb!2933 (= result!5105 tp_is_empty!6165)))

(assert (=> b!234163 t!8517))

(declare-fun b_and!13237 () Bool)

(assert (= b_and!13233 (and (=> t!8517 result!5105) b_and!13237)))

(declare-fun m!255469 () Bool)

(assert (=> bm!21775 m!255469))

(declare-fun m!255471 () Bool)

(assert (=> bm!21777 m!255471))

(declare-fun m!255473 () Bool)

(assert (=> bm!21779 m!255473))

(declare-fun m!255475 () Bool)

(assert (=> b!234153 m!255475))

(assert (=> d!58977 m!255439))

(declare-fun m!255477 () Bool)

(assert (=> b!234167 m!255477))

(assert (=> b!234167 m!255477))

(declare-fun m!255479 () Bool)

(assert (=> b!234167 m!255479))

(declare-fun m!255481 () Bool)

(assert (=> b!234159 m!255481))

(declare-fun m!255483 () Bool)

(assert (=> b!234163 m!255483))

(assert (=> b!234163 m!255483))

(declare-fun m!255485 () Bool)

(assert (=> b!234163 m!255485))

(declare-fun m!255487 () Bool)

(assert (=> b!234163 m!255487))

(assert (=> b!234163 m!255477))

(declare-fun m!255489 () Bool)

(assert (=> b!234163 m!255489))

(assert (=> b!234163 m!255485))

(assert (=> b!234163 m!255477))

(declare-fun m!255491 () Bool)

(assert (=> b!234168 m!255491))

(declare-fun m!255493 () Bool)

(assert (=> bm!21776 m!255493))

(assert (=> b!234155 m!255477))

(assert (=> b!234155 m!255477))

(declare-fun m!255495 () Bool)

(assert (=> b!234155 m!255495))

(assert (=> b!234169 m!255477))

(assert (=> b!234169 m!255477))

(assert (=> b!234169 m!255495))

(declare-fun m!255497 () Bool)

(assert (=> b!234164 m!255497))

(declare-fun m!255499 () Bool)

(assert (=> b!234164 m!255499))

(declare-fun m!255501 () Bool)

(assert (=> b!234164 m!255501))

(declare-fun m!255503 () Bool)

(assert (=> b!234164 m!255503))

(assert (=> b!234164 m!255477))

(declare-fun m!255505 () Bool)

(assert (=> b!234164 m!255505))

(declare-fun m!255507 () Bool)

(assert (=> b!234164 m!255507))

(declare-fun m!255509 () Bool)

(assert (=> b!234164 m!255509))

(declare-fun m!255511 () Bool)

(assert (=> b!234164 m!255511))

(assert (=> b!234164 m!255511))

(declare-fun m!255513 () Bool)

(assert (=> b!234164 m!255513))

(declare-fun m!255515 () Bool)

(assert (=> b!234164 m!255515))

(declare-fun m!255517 () Bool)

(assert (=> b!234164 m!255517))

(assert (=> b!234164 m!255505))

(declare-fun m!255519 () Bool)

(assert (=> b!234164 m!255519))

(assert (=> b!234164 m!255497))

(declare-fun m!255521 () Bool)

(assert (=> b!234164 m!255521))

(declare-fun m!255523 () Bool)

(assert (=> b!234164 m!255523))

(declare-fun m!255525 () Bool)

(assert (=> b!234164 m!255525))

(assert (=> b!234164 m!255493))

(assert (=> b!234164 m!255523))

(assert (=> b!234069 d!58977))

(declare-fun b!234187 () Bool)

(declare-fun e!152125 () SeekEntryResult!989)

(declare-fun lt!118530 () SeekEntryResult!989)

(assert (=> b!234187 (= e!152125 (Found!989 (index!6128 lt!118530)))))

(declare-fun b!234188 () Bool)

(declare-fun e!152126 () SeekEntryResult!989)

(assert (=> b!234188 (= e!152126 Undefined!989)))

(declare-fun b!234189 () Bool)

(declare-fun c!38986 () Bool)

(declare-fun lt!118529 () (_ BitVec 64))

(assert (=> b!234189 (= c!38986 (= lt!118529 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!152124 () SeekEntryResult!989)

(assert (=> b!234189 (= e!152125 e!152124)))

(declare-fun d!58979 () Bool)

(declare-fun lt!118531 () SeekEntryResult!989)

(assert (=> d!58979 (and (or ((_ is Undefined!989) lt!118531) (not ((_ is Found!989) lt!118531)) (and (bvsge (index!6127 lt!118531) #b00000000000000000000000000000000) (bvslt (index!6127 lt!118531) (size!5841 (_keys!6416 thiss!1504))))) (or ((_ is Undefined!989) lt!118531) ((_ is Found!989) lt!118531) (not ((_ is MissingZero!989) lt!118531)) (and (bvsge (index!6126 lt!118531) #b00000000000000000000000000000000) (bvslt (index!6126 lt!118531) (size!5841 (_keys!6416 thiss!1504))))) (or ((_ is Undefined!989) lt!118531) ((_ is Found!989) lt!118531) ((_ is MissingZero!989) lt!118531) (not ((_ is MissingVacant!989) lt!118531)) (and (bvsge (index!6129 lt!118531) #b00000000000000000000000000000000) (bvslt (index!6129 lt!118531) (size!5841 (_keys!6416 thiss!1504))))) (or ((_ is Undefined!989) lt!118531) (ite ((_ is Found!989) lt!118531) (= (select (arr!5506 (_keys!6416 thiss!1504)) (index!6127 lt!118531)) key!932) (ite ((_ is MissingZero!989) lt!118531) (= (select (arr!5506 (_keys!6416 thiss!1504)) (index!6126 lt!118531)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!989) lt!118531) (= (select (arr!5506 (_keys!6416 thiss!1504)) (index!6129 lt!118531)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!58979 (= lt!118531 e!152126)))

(declare-fun c!38985 () Bool)

(assert (=> d!58979 (= c!38985 (and ((_ is Intermediate!989) lt!118530) (undefined!1801 lt!118530)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11580 (_ BitVec 32)) SeekEntryResult!989)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58979 (= lt!118530 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10295 thiss!1504)) key!932 (_keys!6416 thiss!1504) (mask!10295 thiss!1504)))))

(assert (=> d!58979 (validMask!0 (mask!10295 thiss!1504))))

(assert (=> d!58979 (= (seekEntryOrOpen!0 key!932 (_keys!6416 thiss!1504) (mask!10295 thiss!1504)) lt!118531)))

(declare-fun b!234190 () Bool)

(assert (=> b!234190 (= e!152126 e!152125)))

(assert (=> b!234190 (= lt!118529 (select (arr!5506 (_keys!6416 thiss!1504)) (index!6128 lt!118530)))))

(declare-fun c!38984 () Bool)

(assert (=> b!234190 (= c!38984 (= lt!118529 key!932))))

(declare-fun b!234191 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11580 (_ BitVec 32)) SeekEntryResult!989)

(assert (=> b!234191 (= e!152124 (seekKeyOrZeroReturnVacant!0 (x!23687 lt!118530) (index!6128 lt!118530) (index!6128 lt!118530) key!932 (_keys!6416 thiss!1504) (mask!10295 thiss!1504)))))

(declare-fun b!234192 () Bool)

(assert (=> b!234192 (= e!152124 (MissingZero!989 (index!6128 lt!118530)))))

(assert (= (and d!58979 c!38985) b!234188))

(assert (= (and d!58979 (not c!38985)) b!234190))

(assert (= (and b!234190 c!38984) b!234187))

(assert (= (and b!234190 (not c!38984)) b!234189))

(assert (= (and b!234189 c!38986) b!234192))

(assert (= (and b!234189 (not c!38986)) b!234191))

(assert (=> d!58979 m!255439))

(declare-fun m!255527 () Bool)

(assert (=> d!58979 m!255527))

(declare-fun m!255529 () Bool)

(assert (=> d!58979 m!255529))

(declare-fun m!255531 () Bool)

(assert (=> d!58979 m!255531))

(declare-fun m!255533 () Bool)

(assert (=> d!58979 m!255533))

(assert (=> d!58979 m!255527))

(declare-fun m!255535 () Bool)

(assert (=> d!58979 m!255535))

(declare-fun m!255537 () Bool)

(assert (=> b!234190 m!255537))

(declare-fun m!255539 () Bool)

(assert (=> b!234191 m!255539))

(assert (=> b!234065 d!58979))

(declare-fun d!58981 () Bool)

(assert (=> d!58981 (= (validMask!0 (mask!10295 thiss!1504)) (and (or (= (mask!10295 thiss!1504) #b00000000000000000000000000000111) (= (mask!10295 thiss!1504) #b00000000000000000000000000001111) (= (mask!10295 thiss!1504) #b00000000000000000000000000011111) (= (mask!10295 thiss!1504) #b00000000000000000000000000111111) (= (mask!10295 thiss!1504) #b00000000000000000000000001111111) (= (mask!10295 thiss!1504) #b00000000000000000000000011111111) (= (mask!10295 thiss!1504) #b00000000000000000000000111111111) (= (mask!10295 thiss!1504) #b00000000000000000000001111111111) (= (mask!10295 thiss!1504) #b00000000000000000000011111111111) (= (mask!10295 thiss!1504) #b00000000000000000000111111111111) (= (mask!10295 thiss!1504) #b00000000000000000001111111111111) (= (mask!10295 thiss!1504) #b00000000000000000011111111111111) (= (mask!10295 thiss!1504) #b00000000000000000111111111111111) (= (mask!10295 thiss!1504) #b00000000000000001111111111111111) (= (mask!10295 thiss!1504) #b00000000000000011111111111111111) (= (mask!10295 thiss!1504) #b00000000000000111111111111111111) (= (mask!10295 thiss!1504) #b00000000000001111111111111111111) (= (mask!10295 thiss!1504) #b00000000000011111111111111111111) (= (mask!10295 thiss!1504) #b00000000000111111111111111111111) (= (mask!10295 thiss!1504) #b00000000001111111111111111111111) (= (mask!10295 thiss!1504) #b00000000011111111111111111111111) (= (mask!10295 thiss!1504) #b00000000111111111111111111111111) (= (mask!10295 thiss!1504) #b00000001111111111111111111111111) (= (mask!10295 thiss!1504) #b00000011111111111111111111111111) (= (mask!10295 thiss!1504) #b00000111111111111111111111111111) (= (mask!10295 thiss!1504) #b00001111111111111111111111111111) (= (mask!10295 thiss!1504) #b00011111111111111111111111111111) (= (mask!10295 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10295 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!234072 d!58981))

(declare-fun d!58983 () Bool)

(assert (=> d!58983 (= (array_inv!3619 (_keys!6416 thiss!1504)) (bvsge (size!5841 (_keys!6416 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!234067 d!58983))

(declare-fun d!58985 () Bool)

(assert (=> d!58985 (= (array_inv!3620 (_values!4336 thiss!1504)) (bvsge (size!5840 (_values!4336 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!234067 d!58985))

(declare-fun d!58987 () Bool)

(declare-fun res!114903 () Bool)

(declare-fun e!152129 () Bool)

(assert (=> d!58987 (=> (not res!114903) (not e!152129))))

(declare-fun simpleValid!228 (LongMapFixedSize!3378) Bool)

(assert (=> d!58987 (= res!114903 (simpleValid!228 thiss!1504))))

(assert (=> d!58987 (= (valid!1325 thiss!1504) e!152129)))

(declare-fun b!234199 () Bool)

(declare-fun res!114904 () Bool)

(assert (=> b!234199 (=> (not res!114904) (not e!152129))))

(declare-fun arrayCountValidKeys!0 (array!11580 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!234199 (= res!114904 (= (arrayCountValidKeys!0 (_keys!6416 thiss!1504) #b00000000000000000000000000000000 (size!5841 (_keys!6416 thiss!1504))) (_size!1738 thiss!1504)))))

(declare-fun b!234200 () Bool)

(declare-fun res!114905 () Bool)

(assert (=> b!234200 (=> (not res!114905) (not e!152129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11580 (_ BitVec 32)) Bool)

(assert (=> b!234200 (= res!114905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6416 thiss!1504) (mask!10295 thiss!1504)))))

(declare-fun b!234201 () Bool)

(declare-datatypes ((List!3543 0))(
  ( (Nil!3540) (Cons!3539 (h!4189 (_ BitVec 64)) (t!8518 List!3543)) )
))
(declare-fun arrayNoDuplicates!0 (array!11580 (_ BitVec 32) List!3543) Bool)

(assert (=> b!234201 (= e!152129 (arrayNoDuplicates!0 (_keys!6416 thiss!1504) #b00000000000000000000000000000000 Nil!3540))))

(assert (= (and d!58987 res!114903) b!234199))

(assert (= (and b!234199 res!114904) b!234200))

(assert (= (and b!234200 res!114905) b!234201))

(declare-fun m!255541 () Bool)

(assert (=> d!58987 m!255541))

(declare-fun m!255543 () Bool)

(assert (=> b!234199 m!255543))

(declare-fun m!255545 () Bool)

(assert (=> b!234200 m!255545))

(declare-fun m!255547 () Bool)

(assert (=> b!234201 m!255547))

(assert (=> start!22362 d!58987))

(declare-fun b!234208 () Bool)

(declare-fun e!152134 () Bool)

(assert (=> b!234208 (= e!152134 tp_is_empty!6165)))

(declare-fun b!234209 () Bool)

(declare-fun e!152135 () Bool)

(assert (=> b!234209 (= e!152135 tp_is_empty!6165)))

(declare-fun mapNonEmpty!10434 () Bool)

(declare-fun mapRes!10434 () Bool)

(declare-fun tp!22071 () Bool)

(assert (=> mapNonEmpty!10434 (= mapRes!10434 (and tp!22071 e!152134))))

(declare-fun mapValue!10434 () ValueCell!2739)

(declare-fun mapKey!10434 () (_ BitVec 32))

(declare-fun mapRest!10434 () (Array (_ BitVec 32) ValueCell!2739))

(assert (=> mapNonEmpty!10434 (= mapRest!10428 (store mapRest!10434 mapKey!10434 mapValue!10434))))

(declare-fun mapIsEmpty!10434 () Bool)

(assert (=> mapIsEmpty!10434 mapRes!10434))

(declare-fun condMapEmpty!10434 () Bool)

(declare-fun mapDefault!10434 () ValueCell!2739)

(assert (=> mapNonEmpty!10428 (= condMapEmpty!10434 (= mapRest!10428 ((as const (Array (_ BitVec 32) ValueCell!2739)) mapDefault!10434)))))

(assert (=> mapNonEmpty!10428 (= tp!22061 (and e!152135 mapRes!10434))))

(assert (= (and mapNonEmpty!10428 condMapEmpty!10434) mapIsEmpty!10434))

(assert (= (and mapNonEmpty!10428 (not condMapEmpty!10434)) mapNonEmpty!10434))

(assert (= (and mapNonEmpty!10434 ((_ is ValueCellFull!2739) mapValue!10434)) b!234208))

(assert (= (and mapNonEmpty!10428 ((_ is ValueCellFull!2739) mapDefault!10434)) b!234209))

(declare-fun m!255549 () Bool)

(assert (=> mapNonEmpty!10434 m!255549))

(declare-fun b_lambda!7903 () Bool)

(assert (= b_lambda!7901 (or (and b!234067 b_free!6303) b_lambda!7903)))

(check-sat (not b!234163) (not b!234200) (not b!234199) (not b!234153) (not b!234168) tp_is_empty!6165 (not d!58979) (not d!58987) (not b!234109) (not bm!21775) (not b!234169) (not bm!21779) b_and!13237 (not b!234107) (not b_next!6303) (not b!234164) (not d!58975) (not mapNonEmpty!10434) (not bm!21776) (not b!234155) (not b!234167) (not b!234201) (not b!234191) (not bm!21777) (not b!234159) (not b_lambda!7903) (not d!58977))
(check-sat b_and!13237 (not b_next!6303))
