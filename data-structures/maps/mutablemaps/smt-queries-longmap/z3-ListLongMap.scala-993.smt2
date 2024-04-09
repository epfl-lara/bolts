; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21426 () Bool)

(assert start!21426)

(declare-fun b!215076 () Bool)

(declare-fun b_free!5709 () Bool)

(declare-fun b_next!5709 () Bool)

(assert (=> b!215076 (= b_free!5709 (not b_next!5709))))

(declare-fun tp!20233 () Bool)

(declare-fun b_and!12617 () Bool)

(assert (=> b!215076 (= tp!20233 b_and!12617)))

(declare-fun mapIsEmpty!9491 () Bool)

(declare-fun mapRes!9491 () Bool)

(assert (=> mapIsEmpty!9491 mapRes!9491))

(declare-fun b!215075 () Bool)

(declare-fun e!139917 () Bool)

(declare-fun e!139915 () Bool)

(assert (=> b!215075 (= e!139917 e!139915)))

(declare-fun res!105256 () Bool)

(assert (=> b!215075 (=> (not res!105256) (not e!139915))))

(declare-datatypes ((SeekEntryResult!738 0))(
  ( (MissingZero!738 (index!5122 (_ BitVec 32))) (Found!738 (index!5123 (_ BitVec 32))) (Intermediate!738 (undefined!1550 Bool) (index!5124 (_ BitVec 32)) (x!22470 (_ BitVec 32))) (Undefined!738) (MissingVacant!738 (index!5125 (_ BitVec 32))) )
))
(declare-fun lt!110902 () SeekEntryResult!738)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!215075 (= res!105256 (or (= lt!110902 (MissingZero!738 index!297)) (= lt!110902 (MissingVacant!738 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7075 0))(
  ( (V!7076 (val!2830 Int)) )
))
(declare-datatypes ((ValueCell!2442 0))(
  ( (ValueCellFull!2442 (v!4844 V!7075)) (EmptyCell!2442) )
))
(declare-datatypes ((array!10364 0))(
  ( (array!10365 (arr!4911 (Array (_ BitVec 32) ValueCell!2442)) (size!5239 (_ BitVec 32))) )
))
(declare-datatypes ((array!10366 0))(
  ( (array!10367 (arr!4912 (Array (_ BitVec 32) (_ BitVec 64))) (size!5240 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2784 0))(
  ( (LongMapFixedSize!2785 (defaultEntry!4042 Int) (mask!9728 (_ BitVec 32)) (extraKeys!3779 (_ BitVec 32)) (zeroValue!3883 V!7075) (minValue!3883 V!7075) (_size!1441 (_ BitVec 32)) (_keys!6068 array!10366) (_values!4025 array!10364) (_vacant!1441 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2784)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10366 (_ BitVec 32)) SeekEntryResult!738)

(assert (=> b!215075 (= lt!110902 (seekEntryOrOpen!0 key!932 (_keys!6068 thiss!1504) (mask!9728 thiss!1504)))))

(declare-fun tp_is_empty!5571 () Bool)

(declare-fun e!139920 () Bool)

(declare-fun e!139916 () Bool)

(declare-fun array_inv!3243 (array!10366) Bool)

(declare-fun array_inv!3244 (array!10364) Bool)

(assert (=> b!215076 (= e!139920 (and tp!20233 tp_is_empty!5571 (array_inv!3243 (_keys!6068 thiss!1504)) (array_inv!3244 (_values!4025 thiss!1504)) e!139916))))

(declare-fun b!215077 () Bool)

(assert (=> b!215077 (= e!139915 (not (= (size!5239 (_values!4025 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9728 thiss!1504)))))))

(declare-fun b!215078 () Bool)

(declare-fun e!139921 () Bool)

(assert (=> b!215078 (= e!139921 tp_is_empty!5571)))

(declare-fun mapNonEmpty!9491 () Bool)

(declare-fun tp!20234 () Bool)

(declare-fun e!139918 () Bool)

(assert (=> mapNonEmpty!9491 (= mapRes!9491 (and tp!20234 e!139918))))

(declare-fun mapRest!9491 () (Array (_ BitVec 32) ValueCell!2442))

(declare-fun mapValue!9491 () ValueCell!2442)

(declare-fun mapKey!9491 () (_ BitVec 32))

(assert (=> mapNonEmpty!9491 (= (arr!4911 (_values!4025 thiss!1504)) (store mapRest!9491 mapKey!9491 mapValue!9491))))

(declare-fun res!105254 () Bool)

(assert (=> start!21426 (=> (not res!105254) (not e!139917))))

(declare-fun valid!1128 (LongMapFixedSize!2784) Bool)

(assert (=> start!21426 (= res!105254 (valid!1128 thiss!1504))))

(assert (=> start!21426 e!139917))

(assert (=> start!21426 e!139920))

(assert (=> start!21426 true))

(declare-fun b!215079 () Bool)

(declare-fun res!105257 () Bool)

(assert (=> b!215079 (=> (not res!105257) (not e!139915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!215079 (= res!105257 (validMask!0 (mask!9728 thiss!1504)))))

(declare-fun b!215080 () Bool)

(assert (=> b!215080 (= e!139916 (and e!139921 mapRes!9491))))

(declare-fun condMapEmpty!9491 () Bool)

(declare-fun mapDefault!9491 () ValueCell!2442)

(assert (=> b!215080 (= condMapEmpty!9491 (= (arr!4911 (_values!4025 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2442)) mapDefault!9491)))))

(declare-fun b!215081 () Bool)

(assert (=> b!215081 (= e!139918 tp_is_empty!5571)))

(declare-fun b!215082 () Bool)

(declare-fun res!105255 () Bool)

(assert (=> b!215082 (=> (not res!105255) (not e!139917))))

(assert (=> b!215082 (= res!105255 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!21426 res!105254) b!215082))

(assert (= (and b!215082 res!105255) b!215075))

(assert (= (and b!215075 res!105256) b!215079))

(assert (= (and b!215079 res!105257) b!215077))

(assert (= (and b!215080 condMapEmpty!9491) mapIsEmpty!9491))

(assert (= (and b!215080 (not condMapEmpty!9491)) mapNonEmpty!9491))

(get-info :version)

(assert (= (and mapNonEmpty!9491 ((_ is ValueCellFull!2442) mapValue!9491)) b!215081))

(assert (= (and b!215080 ((_ is ValueCellFull!2442) mapDefault!9491)) b!215078))

(assert (= b!215076 b!215080))

(assert (= start!21426 b!215076))

(declare-fun m!242463 () Bool)

(assert (=> mapNonEmpty!9491 m!242463))

(declare-fun m!242465 () Bool)

(assert (=> b!215076 m!242465))

(declare-fun m!242467 () Bool)

(assert (=> b!215076 m!242467))

(declare-fun m!242469 () Bool)

(assert (=> start!21426 m!242469))

(declare-fun m!242471 () Bool)

(assert (=> b!215075 m!242471))

(declare-fun m!242473 () Bool)

(assert (=> b!215079 m!242473))

(check-sat (not b_next!5709) b_and!12617 (not mapNonEmpty!9491) (not start!21426) (not b!215075) (not b!215076) (not b!215079) tp_is_empty!5571)
(check-sat b_and!12617 (not b_next!5709))
(get-model)

(declare-fun d!58311 () Bool)

(declare-fun lt!110914 () SeekEntryResult!738)

(assert (=> d!58311 (and (or ((_ is Undefined!738) lt!110914) (not ((_ is Found!738) lt!110914)) (and (bvsge (index!5123 lt!110914) #b00000000000000000000000000000000) (bvslt (index!5123 lt!110914) (size!5240 (_keys!6068 thiss!1504))))) (or ((_ is Undefined!738) lt!110914) ((_ is Found!738) lt!110914) (not ((_ is MissingZero!738) lt!110914)) (and (bvsge (index!5122 lt!110914) #b00000000000000000000000000000000) (bvslt (index!5122 lt!110914) (size!5240 (_keys!6068 thiss!1504))))) (or ((_ is Undefined!738) lt!110914) ((_ is Found!738) lt!110914) ((_ is MissingZero!738) lt!110914) (not ((_ is MissingVacant!738) lt!110914)) (and (bvsge (index!5125 lt!110914) #b00000000000000000000000000000000) (bvslt (index!5125 lt!110914) (size!5240 (_keys!6068 thiss!1504))))) (or ((_ is Undefined!738) lt!110914) (ite ((_ is Found!738) lt!110914) (= (select (arr!4912 (_keys!6068 thiss!1504)) (index!5123 lt!110914)) key!932) (ite ((_ is MissingZero!738) lt!110914) (= (select (arr!4912 (_keys!6068 thiss!1504)) (index!5122 lt!110914)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!738) lt!110914) (= (select (arr!4912 (_keys!6068 thiss!1504)) (index!5125 lt!110914)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!139949 () SeekEntryResult!738)

(assert (=> d!58311 (= lt!110914 e!139949)))

(declare-fun c!36112 () Bool)

(declare-fun lt!110913 () SeekEntryResult!738)

(assert (=> d!58311 (= c!36112 (and ((_ is Intermediate!738) lt!110913) (undefined!1550 lt!110913)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10366 (_ BitVec 32)) SeekEntryResult!738)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58311 (= lt!110913 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9728 thiss!1504)) key!932 (_keys!6068 thiss!1504) (mask!9728 thiss!1504)))))

(assert (=> d!58311 (validMask!0 (mask!9728 thiss!1504))))

(assert (=> d!58311 (= (seekEntryOrOpen!0 key!932 (_keys!6068 thiss!1504) (mask!9728 thiss!1504)) lt!110914)))

(declare-fun b!215119 () Bool)

(assert (=> b!215119 (= e!139949 Undefined!738)))

(declare-fun b!215120 () Bool)

(declare-fun e!139951 () SeekEntryResult!738)

(assert (=> b!215120 (= e!139951 (Found!738 (index!5124 lt!110913)))))

(declare-fun b!215121 () Bool)

(declare-fun e!139950 () SeekEntryResult!738)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10366 (_ BitVec 32)) SeekEntryResult!738)

(assert (=> b!215121 (= e!139950 (seekKeyOrZeroReturnVacant!0 (x!22470 lt!110913) (index!5124 lt!110913) (index!5124 lt!110913) key!932 (_keys!6068 thiss!1504) (mask!9728 thiss!1504)))))

(declare-fun b!215122 () Bool)

(assert (=> b!215122 (= e!139949 e!139951)))

(declare-fun lt!110912 () (_ BitVec 64))

(assert (=> b!215122 (= lt!110912 (select (arr!4912 (_keys!6068 thiss!1504)) (index!5124 lt!110913)))))

(declare-fun c!36111 () Bool)

(assert (=> b!215122 (= c!36111 (= lt!110912 key!932))))

(declare-fun b!215123 () Bool)

(declare-fun c!36110 () Bool)

(assert (=> b!215123 (= c!36110 (= lt!110912 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!215123 (= e!139951 e!139950)))

(declare-fun b!215124 () Bool)

(assert (=> b!215124 (= e!139950 (MissingZero!738 (index!5124 lt!110913)))))

(assert (= (and d!58311 c!36112) b!215119))

(assert (= (and d!58311 (not c!36112)) b!215122))

(assert (= (and b!215122 c!36111) b!215120))

(assert (= (and b!215122 (not c!36111)) b!215123))

(assert (= (and b!215123 c!36110) b!215124))

(assert (= (and b!215123 (not c!36110)) b!215121))

(declare-fun m!242487 () Bool)

(assert (=> d!58311 m!242487))

(assert (=> d!58311 m!242473))

(declare-fun m!242489 () Bool)

(assert (=> d!58311 m!242489))

(declare-fun m!242491 () Bool)

(assert (=> d!58311 m!242491))

(declare-fun m!242493 () Bool)

(assert (=> d!58311 m!242493))

(assert (=> d!58311 m!242493))

(declare-fun m!242495 () Bool)

(assert (=> d!58311 m!242495))

(declare-fun m!242497 () Bool)

(assert (=> b!215121 m!242497))

(declare-fun m!242499 () Bool)

(assert (=> b!215122 m!242499))

(assert (=> b!215075 d!58311))

(declare-fun d!58313 () Bool)

(assert (=> d!58313 (= (validMask!0 (mask!9728 thiss!1504)) (and (or (= (mask!9728 thiss!1504) #b00000000000000000000000000000111) (= (mask!9728 thiss!1504) #b00000000000000000000000000001111) (= (mask!9728 thiss!1504) #b00000000000000000000000000011111) (= (mask!9728 thiss!1504) #b00000000000000000000000000111111) (= (mask!9728 thiss!1504) #b00000000000000000000000001111111) (= (mask!9728 thiss!1504) #b00000000000000000000000011111111) (= (mask!9728 thiss!1504) #b00000000000000000000000111111111) (= (mask!9728 thiss!1504) #b00000000000000000000001111111111) (= (mask!9728 thiss!1504) #b00000000000000000000011111111111) (= (mask!9728 thiss!1504) #b00000000000000000000111111111111) (= (mask!9728 thiss!1504) #b00000000000000000001111111111111) (= (mask!9728 thiss!1504) #b00000000000000000011111111111111) (= (mask!9728 thiss!1504) #b00000000000000000111111111111111) (= (mask!9728 thiss!1504) #b00000000000000001111111111111111) (= (mask!9728 thiss!1504) #b00000000000000011111111111111111) (= (mask!9728 thiss!1504) #b00000000000000111111111111111111) (= (mask!9728 thiss!1504) #b00000000000001111111111111111111) (= (mask!9728 thiss!1504) #b00000000000011111111111111111111) (= (mask!9728 thiss!1504) #b00000000000111111111111111111111) (= (mask!9728 thiss!1504) #b00000000001111111111111111111111) (= (mask!9728 thiss!1504) #b00000000011111111111111111111111) (= (mask!9728 thiss!1504) #b00000000111111111111111111111111) (= (mask!9728 thiss!1504) #b00000001111111111111111111111111) (= (mask!9728 thiss!1504) #b00000011111111111111111111111111) (= (mask!9728 thiss!1504) #b00000111111111111111111111111111) (= (mask!9728 thiss!1504) #b00001111111111111111111111111111) (= (mask!9728 thiss!1504) #b00011111111111111111111111111111) (= (mask!9728 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!9728 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!215079 d!58313))

(declare-fun d!58315 () Bool)

(declare-fun res!105276 () Bool)

(declare-fun e!139954 () Bool)

(assert (=> d!58315 (=> (not res!105276) (not e!139954))))

(declare-fun simpleValid!215 (LongMapFixedSize!2784) Bool)

(assert (=> d!58315 (= res!105276 (simpleValid!215 thiss!1504))))

(assert (=> d!58315 (= (valid!1128 thiss!1504) e!139954)))

(declare-fun b!215131 () Bool)

(declare-fun res!105277 () Bool)

(assert (=> b!215131 (=> (not res!105277) (not e!139954))))

(declare-fun arrayCountValidKeys!0 (array!10366 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!215131 (= res!105277 (= (arrayCountValidKeys!0 (_keys!6068 thiss!1504) #b00000000000000000000000000000000 (size!5240 (_keys!6068 thiss!1504))) (_size!1441 thiss!1504)))))

(declare-fun b!215132 () Bool)

(declare-fun res!105278 () Bool)

(assert (=> b!215132 (=> (not res!105278) (not e!139954))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10366 (_ BitVec 32)) Bool)

(assert (=> b!215132 (= res!105278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6068 thiss!1504) (mask!9728 thiss!1504)))))

(declare-fun b!215133 () Bool)

(declare-datatypes ((List!3155 0))(
  ( (Nil!3152) (Cons!3151 (h!3794 (_ BitVec 64)) (t!8118 List!3155)) )
))
(declare-fun arrayNoDuplicates!0 (array!10366 (_ BitVec 32) List!3155) Bool)

(assert (=> b!215133 (= e!139954 (arrayNoDuplicates!0 (_keys!6068 thiss!1504) #b00000000000000000000000000000000 Nil!3152))))

(assert (= (and d!58315 res!105276) b!215131))

(assert (= (and b!215131 res!105277) b!215132))

(assert (= (and b!215132 res!105278) b!215133))

(declare-fun m!242501 () Bool)

(assert (=> d!58315 m!242501))

(declare-fun m!242503 () Bool)

(assert (=> b!215131 m!242503))

(declare-fun m!242505 () Bool)

(assert (=> b!215132 m!242505))

(declare-fun m!242507 () Bool)

(assert (=> b!215133 m!242507))

(assert (=> start!21426 d!58315))

(declare-fun d!58317 () Bool)

(assert (=> d!58317 (= (array_inv!3243 (_keys!6068 thiss!1504)) (bvsge (size!5240 (_keys!6068 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!215076 d!58317))

(declare-fun d!58319 () Bool)

(assert (=> d!58319 (= (array_inv!3244 (_values!4025 thiss!1504)) (bvsge (size!5239 (_values!4025 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!215076 d!58319))

(declare-fun b!215141 () Bool)

(declare-fun e!139960 () Bool)

(assert (=> b!215141 (= e!139960 tp_is_empty!5571)))

(declare-fun condMapEmpty!9497 () Bool)

(declare-fun mapDefault!9497 () ValueCell!2442)

(assert (=> mapNonEmpty!9491 (= condMapEmpty!9497 (= mapRest!9491 ((as const (Array (_ BitVec 32) ValueCell!2442)) mapDefault!9497)))))

(declare-fun mapRes!9497 () Bool)

(assert (=> mapNonEmpty!9491 (= tp!20234 (and e!139960 mapRes!9497))))

(declare-fun b!215140 () Bool)

(declare-fun e!139959 () Bool)

(assert (=> b!215140 (= e!139959 tp_is_empty!5571)))

(declare-fun mapNonEmpty!9497 () Bool)

(declare-fun tp!20243 () Bool)

(assert (=> mapNonEmpty!9497 (= mapRes!9497 (and tp!20243 e!139959))))

(declare-fun mapKey!9497 () (_ BitVec 32))

(declare-fun mapRest!9497 () (Array (_ BitVec 32) ValueCell!2442))

(declare-fun mapValue!9497 () ValueCell!2442)

(assert (=> mapNonEmpty!9497 (= mapRest!9491 (store mapRest!9497 mapKey!9497 mapValue!9497))))

(declare-fun mapIsEmpty!9497 () Bool)

(assert (=> mapIsEmpty!9497 mapRes!9497))

(assert (= (and mapNonEmpty!9491 condMapEmpty!9497) mapIsEmpty!9497))

(assert (= (and mapNonEmpty!9491 (not condMapEmpty!9497)) mapNonEmpty!9497))

(assert (= (and mapNonEmpty!9497 ((_ is ValueCellFull!2442) mapValue!9497)) b!215140))

(assert (= (and mapNonEmpty!9491 ((_ is ValueCellFull!2442) mapDefault!9497)) b!215141))

(declare-fun m!242509 () Bool)

(assert (=> mapNonEmpty!9497 m!242509))

(check-sat (not b_next!5709) b_and!12617 (not b!215131) (not d!58315) (not b!215133) (not mapNonEmpty!9497) tp_is_empty!5571 (not d!58311) (not b!215121) (not b!215132))
(check-sat b_and!12617 (not b_next!5709))
(get-model)

(declare-fun b!215150 () Bool)

(declare-fun e!139967 () Bool)

(declare-fun e!139968 () Bool)

(assert (=> b!215150 (= e!139967 e!139968)))

(declare-fun lt!110922 () (_ BitVec 64))

(assert (=> b!215150 (= lt!110922 (select (arr!4912 (_keys!6068 thiss!1504)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!6491 0))(
  ( (Unit!6492) )
))
(declare-fun lt!110923 () Unit!6491)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10366 (_ BitVec 64) (_ BitVec 32)) Unit!6491)

(assert (=> b!215150 (= lt!110923 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6068 thiss!1504) lt!110922 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10366 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!215150 (arrayContainsKey!0 (_keys!6068 thiss!1504) lt!110922 #b00000000000000000000000000000000)))

(declare-fun lt!110921 () Unit!6491)

(assert (=> b!215150 (= lt!110921 lt!110923)))

(declare-fun res!105284 () Bool)

(assert (=> b!215150 (= res!105284 (= (seekEntryOrOpen!0 (select (arr!4912 (_keys!6068 thiss!1504)) #b00000000000000000000000000000000) (_keys!6068 thiss!1504) (mask!9728 thiss!1504)) (Found!738 #b00000000000000000000000000000000)))))

(assert (=> b!215150 (=> (not res!105284) (not e!139968))))

(declare-fun bm!20329 () Bool)

(declare-fun call!20332 () Bool)

(assert (=> bm!20329 (= call!20332 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6068 thiss!1504) (mask!9728 thiss!1504)))))

(declare-fun d!58321 () Bool)

(declare-fun res!105283 () Bool)

(declare-fun e!139969 () Bool)

(assert (=> d!58321 (=> res!105283 e!139969)))

(assert (=> d!58321 (= res!105283 (bvsge #b00000000000000000000000000000000 (size!5240 (_keys!6068 thiss!1504))))))

(assert (=> d!58321 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6068 thiss!1504) (mask!9728 thiss!1504)) e!139969)))

(declare-fun b!215151 () Bool)

(assert (=> b!215151 (= e!139968 call!20332)))

(declare-fun b!215152 () Bool)

(assert (=> b!215152 (= e!139967 call!20332)))

(declare-fun b!215153 () Bool)

(assert (=> b!215153 (= e!139969 e!139967)))

(declare-fun c!36115 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!215153 (= c!36115 (validKeyInArray!0 (select (arr!4912 (_keys!6068 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!58321 (not res!105283)) b!215153))

(assert (= (and b!215153 c!36115) b!215150))

(assert (= (and b!215153 (not c!36115)) b!215152))

(assert (= (and b!215150 res!105284) b!215151))

(assert (= (or b!215151 b!215152) bm!20329))

(declare-fun m!242511 () Bool)

(assert (=> b!215150 m!242511))

(declare-fun m!242513 () Bool)

(assert (=> b!215150 m!242513))

(declare-fun m!242515 () Bool)

(assert (=> b!215150 m!242515))

(assert (=> b!215150 m!242511))

(declare-fun m!242517 () Bool)

(assert (=> b!215150 m!242517))

(declare-fun m!242519 () Bool)

(assert (=> bm!20329 m!242519))

(assert (=> b!215153 m!242511))

(assert (=> b!215153 m!242511))

(declare-fun m!242521 () Bool)

(assert (=> b!215153 m!242521))

(assert (=> b!215132 d!58321))

(declare-fun b!215162 () Bool)

(declare-fun e!139975 () (_ BitVec 32))

(assert (=> b!215162 (= e!139975 #b00000000000000000000000000000000)))

(declare-fun b!215163 () Bool)

(declare-fun e!139974 () (_ BitVec 32))

(assert (=> b!215163 (= e!139975 e!139974)))

(declare-fun c!36121 () Bool)

(assert (=> b!215163 (= c!36121 (validKeyInArray!0 (select (arr!4912 (_keys!6068 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!58323 () Bool)

(declare-fun lt!110926 () (_ BitVec 32))

(assert (=> d!58323 (and (bvsge lt!110926 #b00000000000000000000000000000000) (bvsle lt!110926 (bvsub (size!5240 (_keys!6068 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!58323 (= lt!110926 e!139975)))

(declare-fun c!36120 () Bool)

(assert (=> d!58323 (= c!36120 (bvsge #b00000000000000000000000000000000 (size!5240 (_keys!6068 thiss!1504))))))

(assert (=> d!58323 (and (bvsle #b00000000000000000000000000000000 (size!5240 (_keys!6068 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!5240 (_keys!6068 thiss!1504)) (size!5240 (_keys!6068 thiss!1504))))))

(assert (=> d!58323 (= (arrayCountValidKeys!0 (_keys!6068 thiss!1504) #b00000000000000000000000000000000 (size!5240 (_keys!6068 thiss!1504))) lt!110926)))

(declare-fun b!215164 () Bool)

(declare-fun call!20335 () (_ BitVec 32))

(assert (=> b!215164 (= e!139974 (bvadd #b00000000000000000000000000000001 call!20335))))

(declare-fun b!215165 () Bool)

(assert (=> b!215165 (= e!139974 call!20335)))

(declare-fun bm!20332 () Bool)

(assert (=> bm!20332 (= call!20335 (arrayCountValidKeys!0 (_keys!6068 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!5240 (_keys!6068 thiss!1504))))))

(assert (= (and d!58323 c!36120) b!215162))

(assert (= (and d!58323 (not c!36120)) b!215163))

(assert (= (and b!215163 c!36121) b!215164))

(assert (= (and b!215163 (not c!36121)) b!215165))

(assert (= (or b!215164 b!215165) bm!20332))

(assert (=> b!215163 m!242511))

(assert (=> b!215163 m!242511))

(assert (=> b!215163 m!242521))

(declare-fun m!242523 () Bool)

(assert (=> bm!20332 m!242523))

(assert (=> b!215131 d!58323))

(declare-fun b!215184 () Bool)

(declare-fun e!139987 () Bool)

(declare-fun e!139988 () Bool)

(assert (=> b!215184 (= e!139987 e!139988)))

(declare-fun res!105291 () Bool)

(declare-fun lt!110931 () SeekEntryResult!738)

(assert (=> b!215184 (= res!105291 (and ((_ is Intermediate!738) lt!110931) (not (undefined!1550 lt!110931)) (bvslt (x!22470 lt!110931) #b01111111111111111111111111111110) (bvsge (x!22470 lt!110931) #b00000000000000000000000000000000) (bvsge (x!22470 lt!110931) #b00000000000000000000000000000000)))))

(assert (=> b!215184 (=> (not res!105291) (not e!139988))))

(declare-fun d!58325 () Bool)

(assert (=> d!58325 e!139987))

(declare-fun c!36128 () Bool)

(assert (=> d!58325 (= c!36128 (and ((_ is Intermediate!738) lt!110931) (undefined!1550 lt!110931)))))

(declare-fun e!139990 () SeekEntryResult!738)

(assert (=> d!58325 (= lt!110931 e!139990)))

(declare-fun c!36130 () Bool)

(assert (=> d!58325 (= c!36130 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!110932 () (_ BitVec 64))

(assert (=> d!58325 (= lt!110932 (select (arr!4912 (_keys!6068 thiss!1504)) (toIndex!0 key!932 (mask!9728 thiss!1504))))))

(assert (=> d!58325 (validMask!0 (mask!9728 thiss!1504))))

(assert (=> d!58325 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9728 thiss!1504)) key!932 (_keys!6068 thiss!1504) (mask!9728 thiss!1504)) lt!110931)))

(declare-fun b!215185 () Bool)

(declare-fun e!139989 () SeekEntryResult!738)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!215185 (= e!139989 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!9728 thiss!1504)) #b00000000000000000000000000000000 (mask!9728 thiss!1504)) key!932 (_keys!6068 thiss!1504) (mask!9728 thiss!1504)))))

(declare-fun b!215186 () Bool)

(assert (=> b!215186 (= e!139989 (Intermediate!738 false (toIndex!0 key!932 (mask!9728 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!215187 () Bool)

(assert (=> b!215187 (and (bvsge (index!5124 lt!110931) #b00000000000000000000000000000000) (bvslt (index!5124 lt!110931) (size!5240 (_keys!6068 thiss!1504))))))

(declare-fun e!139986 () Bool)

(assert (=> b!215187 (= e!139986 (= (select (arr!4912 (_keys!6068 thiss!1504)) (index!5124 lt!110931)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!215188 () Bool)

(assert (=> b!215188 (and (bvsge (index!5124 lt!110931) #b00000000000000000000000000000000) (bvslt (index!5124 lt!110931) (size!5240 (_keys!6068 thiss!1504))))))

(declare-fun res!105293 () Bool)

(assert (=> b!215188 (= res!105293 (= (select (arr!4912 (_keys!6068 thiss!1504)) (index!5124 lt!110931)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!215188 (=> res!105293 e!139986)))

(declare-fun b!215189 () Bool)

(assert (=> b!215189 (= e!139990 (Intermediate!738 true (toIndex!0 key!932 (mask!9728 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!215190 () Bool)

(assert (=> b!215190 (= e!139990 e!139989)))

(declare-fun c!36129 () Bool)

(assert (=> b!215190 (= c!36129 (or (= lt!110932 key!932) (= (bvadd lt!110932 lt!110932) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!215191 () Bool)

(assert (=> b!215191 (= e!139987 (bvsge (x!22470 lt!110931) #b01111111111111111111111111111110))))

(declare-fun b!215192 () Bool)

(assert (=> b!215192 (and (bvsge (index!5124 lt!110931) #b00000000000000000000000000000000) (bvslt (index!5124 lt!110931) (size!5240 (_keys!6068 thiss!1504))))))

(declare-fun res!105292 () Bool)

(assert (=> b!215192 (= res!105292 (= (select (arr!4912 (_keys!6068 thiss!1504)) (index!5124 lt!110931)) key!932))))

(assert (=> b!215192 (=> res!105292 e!139986)))

(assert (=> b!215192 (= e!139988 e!139986)))

(assert (= (and d!58325 c!36130) b!215189))

(assert (= (and d!58325 (not c!36130)) b!215190))

(assert (= (and b!215190 c!36129) b!215186))

(assert (= (and b!215190 (not c!36129)) b!215185))

(assert (= (and d!58325 c!36128) b!215191))

(assert (= (and d!58325 (not c!36128)) b!215184))

(assert (= (and b!215184 res!105291) b!215192))

(assert (= (and b!215192 (not res!105292)) b!215188))

(assert (= (and b!215188 (not res!105293)) b!215187))

(declare-fun m!242525 () Bool)

(assert (=> b!215187 m!242525))

(assert (=> b!215192 m!242525))

(assert (=> b!215188 m!242525))

(assert (=> d!58325 m!242493))

(declare-fun m!242527 () Bool)

(assert (=> d!58325 m!242527))

(assert (=> d!58325 m!242473))

(assert (=> b!215185 m!242493))

(declare-fun m!242529 () Bool)

(assert (=> b!215185 m!242529))

(assert (=> b!215185 m!242529))

(declare-fun m!242531 () Bool)

(assert (=> b!215185 m!242531))

(assert (=> d!58311 d!58325))

(declare-fun d!58327 () Bool)

(declare-fun lt!110938 () (_ BitVec 32))

(declare-fun lt!110937 () (_ BitVec 32))

(assert (=> d!58327 (= lt!110938 (bvmul (bvxor lt!110937 (bvlshr lt!110937 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!58327 (= lt!110937 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!58327 (and (bvsge (mask!9728 thiss!1504) #b00000000000000000000000000000000) (let ((res!105294 (let ((h!3795 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!22487 (bvmul (bvxor h!3795 (bvlshr h!3795 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!22487 (bvlshr x!22487 #b00000000000000000000000000001101)) (mask!9728 thiss!1504)))))) (and (bvslt res!105294 (bvadd (mask!9728 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!105294 #b00000000000000000000000000000000))))))

(assert (=> d!58327 (= (toIndex!0 key!932 (mask!9728 thiss!1504)) (bvand (bvxor lt!110938 (bvlshr lt!110938 #b00000000000000000000000000001101)) (mask!9728 thiss!1504)))))

(assert (=> d!58311 d!58327))

(assert (=> d!58311 d!58313))

(declare-fun b!215205 () Bool)

(declare-fun e!139997 () SeekEntryResult!738)

(assert (=> b!215205 (= e!139997 Undefined!738)))

(declare-fun b!215206 () Bool)

(declare-fun e!139998 () SeekEntryResult!738)

(assert (=> b!215206 (= e!139997 e!139998)))

(declare-fun c!36138 () Bool)

(declare-fun lt!110943 () (_ BitVec 64))

(assert (=> b!215206 (= c!36138 (= lt!110943 key!932))))

(declare-fun b!215207 () Bool)

(assert (=> b!215207 (= e!139998 (Found!738 (index!5124 lt!110913)))))

(declare-fun d!58329 () Bool)

(declare-fun lt!110944 () SeekEntryResult!738)

(assert (=> d!58329 (and (or ((_ is Undefined!738) lt!110944) (not ((_ is Found!738) lt!110944)) (and (bvsge (index!5123 lt!110944) #b00000000000000000000000000000000) (bvslt (index!5123 lt!110944) (size!5240 (_keys!6068 thiss!1504))))) (or ((_ is Undefined!738) lt!110944) ((_ is Found!738) lt!110944) (not ((_ is MissingVacant!738) lt!110944)) (not (= (index!5125 lt!110944) (index!5124 lt!110913))) (and (bvsge (index!5125 lt!110944) #b00000000000000000000000000000000) (bvslt (index!5125 lt!110944) (size!5240 (_keys!6068 thiss!1504))))) (or ((_ is Undefined!738) lt!110944) (ite ((_ is Found!738) lt!110944) (= (select (arr!4912 (_keys!6068 thiss!1504)) (index!5123 lt!110944)) key!932) (and ((_ is MissingVacant!738) lt!110944) (= (index!5125 lt!110944) (index!5124 lt!110913)) (= (select (arr!4912 (_keys!6068 thiss!1504)) (index!5125 lt!110944)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!58329 (= lt!110944 e!139997)))

(declare-fun c!36139 () Bool)

(assert (=> d!58329 (= c!36139 (bvsge (x!22470 lt!110913) #b01111111111111111111111111111110))))

(assert (=> d!58329 (= lt!110943 (select (arr!4912 (_keys!6068 thiss!1504)) (index!5124 lt!110913)))))

(assert (=> d!58329 (validMask!0 (mask!9728 thiss!1504))))

(assert (=> d!58329 (= (seekKeyOrZeroReturnVacant!0 (x!22470 lt!110913) (index!5124 lt!110913) (index!5124 lt!110913) key!932 (_keys!6068 thiss!1504) (mask!9728 thiss!1504)) lt!110944)))

(declare-fun e!139999 () SeekEntryResult!738)

(declare-fun b!215208 () Bool)

(assert (=> b!215208 (= e!139999 (seekKeyOrZeroReturnVacant!0 (bvadd (x!22470 lt!110913) #b00000000000000000000000000000001) (nextIndex!0 (index!5124 lt!110913) (x!22470 lt!110913) (mask!9728 thiss!1504)) (index!5124 lt!110913) key!932 (_keys!6068 thiss!1504) (mask!9728 thiss!1504)))))

(declare-fun b!215209 () Bool)

(declare-fun c!36137 () Bool)

(assert (=> b!215209 (= c!36137 (= lt!110943 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!215209 (= e!139998 e!139999)))

(declare-fun b!215210 () Bool)

(assert (=> b!215210 (= e!139999 (MissingVacant!738 (index!5124 lt!110913)))))

(assert (= (and d!58329 c!36139) b!215205))

(assert (= (and d!58329 (not c!36139)) b!215206))

(assert (= (and b!215206 c!36138) b!215207))

(assert (= (and b!215206 (not c!36138)) b!215209))

(assert (= (and b!215209 c!36137) b!215210))

(assert (= (and b!215209 (not c!36137)) b!215208))

(declare-fun m!242533 () Bool)

(assert (=> d!58329 m!242533))

(declare-fun m!242535 () Bool)

(assert (=> d!58329 m!242535))

(assert (=> d!58329 m!242499))

(assert (=> d!58329 m!242473))

(declare-fun m!242537 () Bool)

(assert (=> b!215208 m!242537))

(assert (=> b!215208 m!242537))

(declare-fun m!242539 () Bool)

(assert (=> b!215208 m!242539))

(assert (=> b!215121 d!58329))

(declare-fun b!215221 () Bool)

(declare-fun e!140009 () Bool)

(declare-fun call!20338 () Bool)

(assert (=> b!215221 (= e!140009 call!20338)))

(declare-fun b!215222 () Bool)

(declare-fun e!140011 () Bool)

(declare-fun e!140010 () Bool)

(assert (=> b!215222 (= e!140011 e!140010)))

(declare-fun res!105303 () Bool)

(assert (=> b!215222 (=> (not res!105303) (not e!140010))))

(declare-fun e!140008 () Bool)

(assert (=> b!215222 (= res!105303 (not e!140008))))

(declare-fun res!105302 () Bool)

(assert (=> b!215222 (=> (not res!105302) (not e!140008))))

(assert (=> b!215222 (= res!105302 (validKeyInArray!0 (select (arr!4912 (_keys!6068 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!215223 () Bool)

(assert (=> b!215223 (= e!140010 e!140009)))

(declare-fun c!36142 () Bool)

(assert (=> b!215223 (= c!36142 (validKeyInArray!0 (select (arr!4912 (_keys!6068 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!215224 () Bool)

(assert (=> b!215224 (= e!140009 call!20338)))

(declare-fun bm!20335 () Bool)

(assert (=> bm!20335 (= call!20338 (arrayNoDuplicates!0 (_keys!6068 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!36142 (Cons!3151 (select (arr!4912 (_keys!6068 thiss!1504)) #b00000000000000000000000000000000) Nil!3152) Nil!3152)))))

(declare-fun d!58331 () Bool)

(declare-fun res!105301 () Bool)

(assert (=> d!58331 (=> res!105301 e!140011)))

(assert (=> d!58331 (= res!105301 (bvsge #b00000000000000000000000000000000 (size!5240 (_keys!6068 thiss!1504))))))

(assert (=> d!58331 (= (arrayNoDuplicates!0 (_keys!6068 thiss!1504) #b00000000000000000000000000000000 Nil!3152) e!140011)))

(declare-fun b!215225 () Bool)

(declare-fun contains!1427 (List!3155 (_ BitVec 64)) Bool)

(assert (=> b!215225 (= e!140008 (contains!1427 Nil!3152 (select (arr!4912 (_keys!6068 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!58331 (not res!105301)) b!215222))

(assert (= (and b!215222 res!105302) b!215225))

(assert (= (and b!215222 res!105303) b!215223))

(assert (= (and b!215223 c!36142) b!215224))

(assert (= (and b!215223 (not c!36142)) b!215221))

(assert (= (or b!215224 b!215221) bm!20335))

(assert (=> b!215222 m!242511))

(assert (=> b!215222 m!242511))

(assert (=> b!215222 m!242521))

(assert (=> b!215223 m!242511))

(assert (=> b!215223 m!242511))

(assert (=> b!215223 m!242521))

(assert (=> bm!20335 m!242511))

(declare-fun m!242541 () Bool)

(assert (=> bm!20335 m!242541))

(assert (=> b!215225 m!242511))

(assert (=> b!215225 m!242511))

(declare-fun m!242543 () Bool)

(assert (=> b!215225 m!242543))

(assert (=> b!215133 d!58331))

(declare-fun b!215234 () Bool)

(declare-fun res!105314 () Bool)

(declare-fun e!140014 () Bool)

(assert (=> b!215234 (=> (not res!105314) (not e!140014))))

(assert (=> b!215234 (= res!105314 (and (= (size!5239 (_values!4025 thiss!1504)) (bvadd (mask!9728 thiss!1504) #b00000000000000000000000000000001)) (= (size!5240 (_keys!6068 thiss!1504)) (size!5239 (_values!4025 thiss!1504))) (bvsge (_size!1441 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1441 thiss!1504) (bvadd (mask!9728 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun d!58333 () Bool)

(declare-fun res!105312 () Bool)

(assert (=> d!58333 (=> (not res!105312) (not e!140014))))

(assert (=> d!58333 (= res!105312 (validMask!0 (mask!9728 thiss!1504)))))

(assert (=> d!58333 (= (simpleValid!215 thiss!1504) e!140014)))

(declare-fun b!215236 () Bool)

(declare-fun res!105313 () Bool)

(assert (=> b!215236 (=> (not res!105313) (not e!140014))))

(declare-fun size!5243 (LongMapFixedSize!2784) (_ BitVec 32))

(assert (=> b!215236 (= res!105313 (= (size!5243 thiss!1504) (bvadd (_size!1441 thiss!1504) (bvsdiv (bvadd (extraKeys!3779 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!215235 () Bool)

(declare-fun res!105315 () Bool)

(assert (=> b!215235 (=> (not res!105315) (not e!140014))))

(assert (=> b!215235 (= res!105315 (bvsge (size!5243 thiss!1504) (_size!1441 thiss!1504)))))

(declare-fun b!215237 () Bool)

(assert (=> b!215237 (= e!140014 (and (bvsge (extraKeys!3779 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3779 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1441 thiss!1504) #b00000000000000000000000000000000)))))

(assert (= (and d!58333 res!105312) b!215234))

(assert (= (and b!215234 res!105314) b!215235))

(assert (= (and b!215235 res!105315) b!215236))

(assert (= (and b!215236 res!105313) b!215237))

(assert (=> d!58333 m!242473))

(declare-fun m!242545 () Bool)

(assert (=> b!215236 m!242545))

(assert (=> b!215235 m!242545))

(assert (=> d!58315 d!58333))

(declare-fun b!215239 () Bool)

(declare-fun e!140016 () Bool)

(assert (=> b!215239 (= e!140016 tp_is_empty!5571)))

(declare-fun condMapEmpty!9498 () Bool)

(declare-fun mapDefault!9498 () ValueCell!2442)

(assert (=> mapNonEmpty!9497 (= condMapEmpty!9498 (= mapRest!9497 ((as const (Array (_ BitVec 32) ValueCell!2442)) mapDefault!9498)))))

(declare-fun mapRes!9498 () Bool)

(assert (=> mapNonEmpty!9497 (= tp!20243 (and e!140016 mapRes!9498))))

(declare-fun b!215238 () Bool)

(declare-fun e!140015 () Bool)

(assert (=> b!215238 (= e!140015 tp_is_empty!5571)))

(declare-fun mapNonEmpty!9498 () Bool)

(declare-fun tp!20244 () Bool)

(assert (=> mapNonEmpty!9498 (= mapRes!9498 (and tp!20244 e!140015))))

(declare-fun mapValue!9498 () ValueCell!2442)

(declare-fun mapRest!9498 () (Array (_ BitVec 32) ValueCell!2442))

(declare-fun mapKey!9498 () (_ BitVec 32))

(assert (=> mapNonEmpty!9498 (= mapRest!9497 (store mapRest!9498 mapKey!9498 mapValue!9498))))

(declare-fun mapIsEmpty!9498 () Bool)

(assert (=> mapIsEmpty!9498 mapRes!9498))

(assert (= (and mapNonEmpty!9497 condMapEmpty!9498) mapIsEmpty!9498))

(assert (= (and mapNonEmpty!9497 (not condMapEmpty!9498)) mapNonEmpty!9498))

(assert (= (and mapNonEmpty!9498 ((_ is ValueCellFull!2442) mapValue!9498)) b!215238))

(assert (= (and mapNonEmpty!9497 ((_ is ValueCellFull!2442) mapDefault!9498)) b!215239))

(declare-fun m!242547 () Bool)

(assert (=> mapNonEmpty!9498 m!242547))

(check-sat (not bm!20329) (not b!215236) b_and!12617 (not mapNonEmpty!9498) (not b!215208) (not d!58325) (not b!215185) (not b!215223) (not bm!20332) (not b!215225) (not b!215150) (not b!215235) (not bm!20335) (not b!215153) (not b_next!5709) (not b!215222) (not d!58329) tp_is_empty!5571 (not b!215163) (not d!58333))
(check-sat b_and!12617 (not b_next!5709))
