; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22382 () Bool)

(assert start!22382)

(declare-fun b!234262 () Bool)

(declare-fun b_free!6309 () Bool)

(declare-fun b_next!6309 () Bool)

(assert (=> b!234262 (= b_free!6309 (not b_next!6309))))

(declare-fun tp!22082 () Bool)

(declare-fun b_and!13241 () Bool)

(assert (=> b!234262 (= tp!22082 b_and!13241)))

(declare-fun b!234255 () Bool)

(declare-fun res!114932 () Bool)

(declare-fun e!152172 () Bool)

(assert (=> b!234255 (=> (not res!114932) (not e!152172))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!234255 (= res!114932 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!234256 () Bool)

(declare-fun e!152176 () Bool)

(declare-fun e!152173 () Bool)

(declare-fun mapRes!10440 () Bool)

(assert (=> b!234256 (= e!152176 (and e!152173 mapRes!10440))))

(declare-fun condMapEmpty!10440 () Bool)

(declare-datatypes ((V!7875 0))(
  ( (V!7876 (val!3130 Int)) )
))
(declare-datatypes ((ValueCell!2742 0))(
  ( (ValueCellFull!2742 (v!5150 V!7875)) (EmptyCell!2742) )
))
(declare-datatypes ((array!11592 0))(
  ( (array!11593 (arr!5511 (Array (_ BitVec 32) ValueCell!2742)) (size!5846 (_ BitVec 32))) )
))
(declare-datatypes ((array!11594 0))(
  ( (array!11595 (arr!5512 (Array (_ BitVec 32) (_ BitVec 64))) (size!5847 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3384 0))(
  ( (LongMapFixedSize!3385 (defaultEntry!4357 Int) (mask!10303 (_ BitVec 32)) (extraKeys!4094 (_ BitVec 32)) (zeroValue!4198 V!7875) (minValue!4198 V!7875) (_size!1741 (_ BitVec 32)) (_keys!6421 array!11594) (_values!4340 array!11592) (_vacant!1741 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3384)

(declare-fun mapDefault!10440 () ValueCell!2742)

(assert (=> b!234256 (= condMapEmpty!10440 (= (arr!5511 (_values!4340 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2742)) mapDefault!10440)))))

(declare-fun b!234257 () Bool)

(declare-fun res!114935 () Bool)

(declare-fun e!152174 () Bool)

(assert (=> b!234257 (=> (not res!114935) (not e!152174))))

(declare-datatypes ((tuple2!4610 0))(
  ( (tuple2!4611 (_1!2315 (_ BitVec 64)) (_2!2315 V!7875)) )
))
(declare-datatypes ((List!3544 0))(
  ( (Nil!3541) (Cons!3540 (h!4190 tuple2!4610) (t!8519 List!3544)) )
))
(declare-datatypes ((ListLongMap!3537 0))(
  ( (ListLongMap!3538 (toList!1784 List!3544)) )
))
(declare-fun contains!1650 (ListLongMap!3537 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1307 (array!11594 array!11592 (_ BitVec 32) (_ BitVec 32) V!7875 V!7875 (_ BitVec 32) Int) ListLongMap!3537)

(assert (=> b!234257 (= res!114935 (contains!1650 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504)) key!932))))

(declare-fun res!114931 () Bool)

(assert (=> start!22382 (=> (not res!114931) (not e!152172))))

(declare-fun valid!1328 (LongMapFixedSize!3384) Bool)

(assert (=> start!22382 (= res!114931 (valid!1328 thiss!1504))))

(assert (=> start!22382 e!152172))

(declare-fun e!152171 () Bool)

(assert (=> start!22382 e!152171))

(assert (=> start!22382 true))

(declare-fun b!234258 () Bool)

(declare-fun res!114933 () Bool)

(assert (=> b!234258 (=> (not res!114933) (not e!152174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!234258 (= res!114933 (validMask!0 (mask!10303 thiss!1504)))))

(declare-fun mapIsEmpty!10440 () Bool)

(assert (=> mapIsEmpty!10440 mapRes!10440))

(declare-fun b!234259 () Bool)

(declare-fun tp_is_empty!6171 () Bool)

(assert (=> b!234259 (= e!152173 tp_is_empty!6171)))

(declare-fun mapNonEmpty!10440 () Bool)

(declare-fun tp!22083 () Bool)

(declare-fun e!152175 () Bool)

(assert (=> mapNonEmpty!10440 (= mapRes!10440 (and tp!22083 e!152175))))

(declare-fun mapRest!10440 () (Array (_ BitVec 32) ValueCell!2742))

(declare-fun mapKey!10440 () (_ BitVec 32))

(declare-fun mapValue!10440 () ValueCell!2742)

(assert (=> mapNonEmpty!10440 (= (arr!5511 (_values!4340 thiss!1504)) (store mapRest!10440 mapKey!10440 mapValue!10440))))

(declare-fun b!234260 () Bool)

(assert (=> b!234260 (= e!152174 (and (= (size!5846 (_values!4340 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10303 thiss!1504))) (= (size!5847 (_keys!6421 thiss!1504)) (size!5846 (_values!4340 thiss!1504))) (bvsge (mask!10303 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4094 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!234261 () Bool)

(assert (=> b!234261 (= e!152172 e!152174)))

(declare-fun res!114934 () Bool)

(assert (=> b!234261 (=> (not res!114934) (not e!152174))))

(declare-datatypes ((SeekEntryResult!990 0))(
  ( (MissingZero!990 (index!6130 (_ BitVec 32))) (Found!990 (index!6131 (_ BitVec 32))) (Intermediate!990 (undefined!1802 Bool) (index!6132 (_ BitVec 32)) (x!23706 (_ BitVec 32))) (Undefined!990) (MissingVacant!990 (index!6133 (_ BitVec 32))) )
))
(declare-fun lt!118537 () SeekEntryResult!990)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!234261 (= res!114934 (or (= lt!118537 (MissingZero!990 index!297)) (= lt!118537 (MissingVacant!990 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11594 (_ BitVec 32)) SeekEntryResult!990)

(assert (=> b!234261 (= lt!118537 (seekEntryOrOpen!0 key!932 (_keys!6421 thiss!1504) (mask!10303 thiss!1504)))))

(declare-fun array_inv!3623 (array!11594) Bool)

(declare-fun array_inv!3624 (array!11592) Bool)

(assert (=> b!234262 (= e!152171 (and tp!22082 tp_is_empty!6171 (array_inv!3623 (_keys!6421 thiss!1504)) (array_inv!3624 (_values!4340 thiss!1504)) e!152176))))

(declare-fun b!234263 () Bool)

(assert (=> b!234263 (= e!152175 tp_is_empty!6171)))

(assert (= (and start!22382 res!114931) b!234255))

(assert (= (and b!234255 res!114932) b!234261))

(assert (= (and b!234261 res!114934) b!234257))

(assert (= (and b!234257 res!114935) b!234258))

(assert (= (and b!234258 res!114933) b!234260))

(assert (= (and b!234256 condMapEmpty!10440) mapIsEmpty!10440))

(assert (= (and b!234256 (not condMapEmpty!10440)) mapNonEmpty!10440))

(get-info :version)

(assert (= (and mapNonEmpty!10440 ((_ is ValueCellFull!2742) mapValue!10440)) b!234263))

(assert (= (and b!234256 ((_ is ValueCellFull!2742) mapDefault!10440)) b!234259))

(assert (= b!234262 b!234256))

(assert (= start!22382 b!234262))

(declare-fun m!255567 () Bool)

(assert (=> b!234262 m!255567))

(declare-fun m!255569 () Bool)

(assert (=> b!234262 m!255569))

(declare-fun m!255571 () Bool)

(assert (=> b!234258 m!255571))

(declare-fun m!255573 () Bool)

(assert (=> b!234261 m!255573))

(declare-fun m!255575 () Bool)

(assert (=> mapNonEmpty!10440 m!255575))

(declare-fun m!255577 () Bool)

(assert (=> start!22382 m!255577))

(declare-fun m!255579 () Bool)

(assert (=> b!234257 m!255579))

(assert (=> b!234257 m!255579))

(declare-fun m!255581 () Bool)

(assert (=> b!234257 m!255581))

(check-sat (not start!22382) (not mapNonEmpty!10440) (not b_next!6309) (not b!234261) (not b!234262) (not b!234258) (not b!234257) b_and!13241 tp_is_empty!6171)
(check-sat b_and!13241 (not b_next!6309))
(get-model)

(declare-fun b!234303 () Bool)

(declare-fun e!152205 () SeekEntryResult!990)

(declare-fun lt!118549 () SeekEntryResult!990)

(assert (=> b!234303 (= e!152205 (MissingZero!990 (index!6132 lt!118549)))))

(declare-fun b!234304 () Bool)

(declare-fun c!38993 () Bool)

(declare-fun lt!118548 () (_ BitVec 64))

(assert (=> b!234304 (= c!38993 (= lt!118548 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!152207 () SeekEntryResult!990)

(assert (=> b!234304 (= e!152207 e!152205)))

(declare-fun b!234305 () Bool)

(declare-fun e!152206 () SeekEntryResult!990)

(assert (=> b!234305 (= e!152206 e!152207)))

(assert (=> b!234305 (= lt!118548 (select (arr!5512 (_keys!6421 thiss!1504)) (index!6132 lt!118549)))))

(declare-fun c!38995 () Bool)

(assert (=> b!234305 (= c!38995 (= lt!118548 key!932))))

(declare-fun b!234307 () Bool)

(assert (=> b!234307 (= e!152206 Undefined!990)))

(declare-fun b!234308 () Bool)

(assert (=> b!234308 (= e!152207 (Found!990 (index!6132 lt!118549)))))

(declare-fun b!234306 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11594 (_ BitVec 32)) SeekEntryResult!990)

(assert (=> b!234306 (= e!152205 (seekKeyOrZeroReturnVacant!0 (x!23706 lt!118549) (index!6132 lt!118549) (index!6132 lt!118549) key!932 (_keys!6421 thiss!1504) (mask!10303 thiss!1504)))))

(declare-fun d!58991 () Bool)

(declare-fun lt!118547 () SeekEntryResult!990)

(assert (=> d!58991 (and (or ((_ is Undefined!990) lt!118547) (not ((_ is Found!990) lt!118547)) (and (bvsge (index!6131 lt!118547) #b00000000000000000000000000000000) (bvslt (index!6131 lt!118547) (size!5847 (_keys!6421 thiss!1504))))) (or ((_ is Undefined!990) lt!118547) ((_ is Found!990) lt!118547) (not ((_ is MissingZero!990) lt!118547)) (and (bvsge (index!6130 lt!118547) #b00000000000000000000000000000000) (bvslt (index!6130 lt!118547) (size!5847 (_keys!6421 thiss!1504))))) (or ((_ is Undefined!990) lt!118547) ((_ is Found!990) lt!118547) ((_ is MissingZero!990) lt!118547) (not ((_ is MissingVacant!990) lt!118547)) (and (bvsge (index!6133 lt!118547) #b00000000000000000000000000000000) (bvslt (index!6133 lt!118547) (size!5847 (_keys!6421 thiss!1504))))) (or ((_ is Undefined!990) lt!118547) (ite ((_ is Found!990) lt!118547) (= (select (arr!5512 (_keys!6421 thiss!1504)) (index!6131 lt!118547)) key!932) (ite ((_ is MissingZero!990) lt!118547) (= (select (arr!5512 (_keys!6421 thiss!1504)) (index!6130 lt!118547)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!990) lt!118547) (= (select (arr!5512 (_keys!6421 thiss!1504)) (index!6133 lt!118547)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!58991 (= lt!118547 e!152206)))

(declare-fun c!38994 () Bool)

(assert (=> d!58991 (= c!38994 (and ((_ is Intermediate!990) lt!118549) (undefined!1802 lt!118549)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11594 (_ BitVec 32)) SeekEntryResult!990)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58991 (= lt!118549 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10303 thiss!1504)) key!932 (_keys!6421 thiss!1504) (mask!10303 thiss!1504)))))

(assert (=> d!58991 (validMask!0 (mask!10303 thiss!1504))))

(assert (=> d!58991 (= (seekEntryOrOpen!0 key!932 (_keys!6421 thiss!1504) (mask!10303 thiss!1504)) lt!118547)))

(assert (= (and d!58991 c!38994) b!234307))

(assert (= (and d!58991 (not c!38994)) b!234305))

(assert (= (and b!234305 c!38995) b!234308))

(assert (= (and b!234305 (not c!38995)) b!234304))

(assert (= (and b!234304 c!38993) b!234303))

(assert (= (and b!234304 (not c!38993)) b!234306))

(declare-fun m!255599 () Bool)

(assert (=> b!234305 m!255599))

(declare-fun m!255601 () Bool)

(assert (=> b!234306 m!255601))

(assert (=> d!58991 m!255571))

(declare-fun m!255603 () Bool)

(assert (=> d!58991 m!255603))

(declare-fun m!255605 () Bool)

(assert (=> d!58991 m!255605))

(declare-fun m!255607 () Bool)

(assert (=> d!58991 m!255607))

(declare-fun m!255609 () Bool)

(assert (=> d!58991 m!255609))

(assert (=> d!58991 m!255607))

(declare-fun m!255611 () Bool)

(assert (=> d!58991 m!255611))

(assert (=> b!234261 d!58991))

(declare-fun d!58993 () Bool)

(declare-fun res!114957 () Bool)

(declare-fun e!152210 () Bool)

(assert (=> d!58993 (=> (not res!114957) (not e!152210))))

(declare-fun simpleValid!229 (LongMapFixedSize!3384) Bool)

(assert (=> d!58993 (= res!114957 (simpleValid!229 thiss!1504))))

(assert (=> d!58993 (= (valid!1328 thiss!1504) e!152210)))

(declare-fun b!234315 () Bool)

(declare-fun res!114958 () Bool)

(assert (=> b!234315 (=> (not res!114958) (not e!152210))))

(declare-fun arrayCountValidKeys!0 (array!11594 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!234315 (= res!114958 (= (arrayCountValidKeys!0 (_keys!6421 thiss!1504) #b00000000000000000000000000000000 (size!5847 (_keys!6421 thiss!1504))) (_size!1741 thiss!1504)))))

(declare-fun b!234316 () Bool)

(declare-fun res!114959 () Bool)

(assert (=> b!234316 (=> (not res!114959) (not e!152210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11594 (_ BitVec 32)) Bool)

(assert (=> b!234316 (= res!114959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6421 thiss!1504) (mask!10303 thiss!1504)))))

(declare-fun b!234317 () Bool)

(declare-datatypes ((List!3545 0))(
  ( (Nil!3542) (Cons!3541 (h!4191 (_ BitVec 64)) (t!8522 List!3545)) )
))
(declare-fun arrayNoDuplicates!0 (array!11594 (_ BitVec 32) List!3545) Bool)

(assert (=> b!234317 (= e!152210 (arrayNoDuplicates!0 (_keys!6421 thiss!1504) #b00000000000000000000000000000000 Nil!3542))))

(assert (= (and d!58993 res!114957) b!234315))

(assert (= (and b!234315 res!114958) b!234316))

(assert (= (and b!234316 res!114959) b!234317))

(declare-fun m!255613 () Bool)

(assert (=> d!58993 m!255613))

(declare-fun m!255615 () Bool)

(assert (=> b!234315 m!255615))

(declare-fun m!255617 () Bool)

(assert (=> b!234316 m!255617))

(declare-fun m!255619 () Bool)

(assert (=> b!234317 m!255619))

(assert (=> start!22382 d!58993))

(declare-fun d!58995 () Bool)

(assert (=> d!58995 (= (validMask!0 (mask!10303 thiss!1504)) (and (or (= (mask!10303 thiss!1504) #b00000000000000000000000000000111) (= (mask!10303 thiss!1504) #b00000000000000000000000000001111) (= (mask!10303 thiss!1504) #b00000000000000000000000000011111) (= (mask!10303 thiss!1504) #b00000000000000000000000000111111) (= (mask!10303 thiss!1504) #b00000000000000000000000001111111) (= (mask!10303 thiss!1504) #b00000000000000000000000011111111) (= (mask!10303 thiss!1504) #b00000000000000000000000111111111) (= (mask!10303 thiss!1504) #b00000000000000000000001111111111) (= (mask!10303 thiss!1504) #b00000000000000000000011111111111) (= (mask!10303 thiss!1504) #b00000000000000000000111111111111) (= (mask!10303 thiss!1504) #b00000000000000000001111111111111) (= (mask!10303 thiss!1504) #b00000000000000000011111111111111) (= (mask!10303 thiss!1504) #b00000000000000000111111111111111) (= (mask!10303 thiss!1504) #b00000000000000001111111111111111) (= (mask!10303 thiss!1504) #b00000000000000011111111111111111) (= (mask!10303 thiss!1504) #b00000000000000111111111111111111) (= (mask!10303 thiss!1504) #b00000000000001111111111111111111) (= (mask!10303 thiss!1504) #b00000000000011111111111111111111) (= (mask!10303 thiss!1504) #b00000000000111111111111111111111) (= (mask!10303 thiss!1504) #b00000000001111111111111111111111) (= (mask!10303 thiss!1504) #b00000000011111111111111111111111) (= (mask!10303 thiss!1504) #b00000000111111111111111111111111) (= (mask!10303 thiss!1504) #b00000001111111111111111111111111) (= (mask!10303 thiss!1504) #b00000011111111111111111111111111) (= (mask!10303 thiss!1504) #b00000111111111111111111111111111) (= (mask!10303 thiss!1504) #b00001111111111111111111111111111) (= (mask!10303 thiss!1504) #b00011111111111111111111111111111) (= (mask!10303 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10303 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!234258 d!58995))

(declare-fun d!58997 () Bool)

(declare-fun e!152216 () Bool)

(assert (=> d!58997 e!152216))

(declare-fun res!114962 () Bool)

(assert (=> d!58997 (=> res!114962 e!152216)))

(declare-fun lt!118560 () Bool)

(assert (=> d!58997 (= res!114962 (not lt!118560))))

(declare-fun lt!118559 () Bool)

(assert (=> d!58997 (= lt!118560 lt!118559)))

(declare-datatypes ((Unit!7231 0))(
  ( (Unit!7232) )
))
(declare-fun lt!118561 () Unit!7231)

(declare-fun e!152215 () Unit!7231)

(assert (=> d!58997 (= lt!118561 e!152215)))

(declare-fun c!38998 () Bool)

(assert (=> d!58997 (= c!38998 lt!118559)))

(declare-fun containsKey!256 (List!3544 (_ BitVec 64)) Bool)

(assert (=> d!58997 (= lt!118559 (containsKey!256 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504))) key!932))))

(assert (=> d!58997 (= (contains!1650 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504)) key!932) lt!118560)))

(declare-fun b!234324 () Bool)

(declare-fun lt!118558 () Unit!7231)

(assert (=> b!234324 (= e!152215 lt!118558)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!205 (List!3544 (_ BitVec 64)) Unit!7231)

(assert (=> b!234324 (= lt!118558 (lemmaContainsKeyImpliesGetValueByKeyDefined!205 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504))) key!932))))

(declare-datatypes ((Option!270 0))(
  ( (Some!269 (v!5152 V!7875)) (None!268) )
))
(declare-fun isDefined!206 (Option!270) Bool)

(declare-fun getValueByKey!264 (List!3544 (_ BitVec 64)) Option!270)

(assert (=> b!234324 (isDefined!206 (getValueByKey!264 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504))) key!932))))

(declare-fun b!234325 () Bool)

(declare-fun Unit!7233 () Unit!7231)

(assert (=> b!234325 (= e!152215 Unit!7233)))

(declare-fun b!234326 () Bool)

(assert (=> b!234326 (= e!152216 (isDefined!206 (getValueByKey!264 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504))) key!932)))))

(assert (= (and d!58997 c!38998) b!234324))

(assert (= (and d!58997 (not c!38998)) b!234325))

(assert (= (and d!58997 (not res!114962)) b!234326))

(declare-fun m!255621 () Bool)

(assert (=> d!58997 m!255621))

(declare-fun m!255623 () Bool)

(assert (=> b!234324 m!255623))

(declare-fun m!255625 () Bool)

(assert (=> b!234324 m!255625))

(assert (=> b!234324 m!255625))

(declare-fun m!255627 () Bool)

(assert (=> b!234324 m!255627))

(assert (=> b!234326 m!255625))

(assert (=> b!234326 m!255625))

(assert (=> b!234326 m!255627))

(assert (=> b!234257 d!58997))

(declare-fun b!234369 () Bool)

(declare-fun e!152244 () Bool)

(declare-fun e!152250 () Bool)

(assert (=> b!234369 (= e!152244 e!152250)))

(declare-fun res!114981 () Bool)

(assert (=> b!234369 (=> (not res!114981) (not e!152250))))

(declare-fun lt!118612 () ListLongMap!3537)

(assert (=> b!234369 (= res!114981 (contains!1650 lt!118612 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!234369 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5847 (_keys!6421 thiss!1504))))))

(declare-fun b!234370 () Bool)

(declare-fun e!152252 () Bool)

(declare-fun call!21802 () Bool)

(assert (=> b!234370 (= e!152252 (not call!21802))))

(declare-fun bm!21796 () Bool)

(assert (=> bm!21796 (= call!21802 (contains!1650 lt!118612 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!234371 () Bool)

(declare-fun e!152247 () Bool)

(declare-fun e!152251 () Bool)

(assert (=> b!234371 (= e!152247 e!152251)))

(declare-fun res!114984 () Bool)

(declare-fun call!21799 () Bool)

(assert (=> b!234371 (= res!114984 call!21799)))

(assert (=> b!234371 (=> (not res!114984) (not e!152251))))

(declare-fun b!234372 () Bool)

(declare-fun e!152253 () Bool)

(declare-fun apply!207 (ListLongMap!3537 (_ BitVec 64)) V!7875)

(assert (=> b!234372 (= e!152253 (= (apply!207 lt!118612 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4198 thiss!1504)))))

(declare-fun b!234373 () Bool)

(declare-fun get!2829 (ValueCell!2742 V!7875) V!7875)

(declare-fun dynLambda!545 (Int (_ BitVec 64)) V!7875)

(assert (=> b!234373 (= e!152250 (= (apply!207 lt!118612 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)) (get!2829 (select (arr!5511 (_values!4340 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!545 (defaultEntry!4357 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!234373 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5846 (_values!4340 thiss!1504))))))

(assert (=> b!234373 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5847 (_keys!6421 thiss!1504))))))

(declare-fun b!234374 () Bool)

(declare-fun e!152254 () ListLongMap!3537)

(declare-fun call!21805 () ListLongMap!3537)

(assert (=> b!234374 (= e!152254 call!21805)))

(declare-fun b!234375 () Bool)

(declare-fun e!152246 () Unit!7231)

(declare-fun lt!118607 () Unit!7231)

(assert (=> b!234375 (= e!152246 lt!118607)))

(declare-fun lt!118613 () ListLongMap!3537)

(declare-fun getCurrentListMapNoExtraKeys!526 (array!11594 array!11592 (_ BitVec 32) (_ BitVec 32) V!7875 V!7875 (_ BitVec 32) Int) ListLongMap!3537)

(assert (=> b!234375 (= lt!118613 (getCurrentListMapNoExtraKeys!526 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504)))))

(declare-fun lt!118617 () (_ BitVec 64))

(assert (=> b!234375 (= lt!118617 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118627 () (_ BitVec 64))

(assert (=> b!234375 (= lt!118627 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118610 () Unit!7231)

(declare-fun addStillContains!183 (ListLongMap!3537 (_ BitVec 64) V!7875 (_ BitVec 64)) Unit!7231)

(assert (=> b!234375 (= lt!118610 (addStillContains!183 lt!118613 lt!118617 (zeroValue!4198 thiss!1504) lt!118627))))

(declare-fun +!629 (ListLongMap!3537 tuple2!4610) ListLongMap!3537)

(assert (=> b!234375 (contains!1650 (+!629 lt!118613 (tuple2!4611 lt!118617 (zeroValue!4198 thiss!1504))) lt!118627)))

(declare-fun lt!118626 () Unit!7231)

(assert (=> b!234375 (= lt!118626 lt!118610)))

(declare-fun lt!118625 () ListLongMap!3537)

(assert (=> b!234375 (= lt!118625 (getCurrentListMapNoExtraKeys!526 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504)))))

(declare-fun lt!118623 () (_ BitVec 64))

(assert (=> b!234375 (= lt!118623 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118621 () (_ BitVec 64))

(assert (=> b!234375 (= lt!118621 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118608 () Unit!7231)

(declare-fun addApplyDifferent!183 (ListLongMap!3537 (_ BitVec 64) V!7875 (_ BitVec 64)) Unit!7231)

(assert (=> b!234375 (= lt!118608 (addApplyDifferent!183 lt!118625 lt!118623 (minValue!4198 thiss!1504) lt!118621))))

(assert (=> b!234375 (= (apply!207 (+!629 lt!118625 (tuple2!4611 lt!118623 (minValue!4198 thiss!1504))) lt!118621) (apply!207 lt!118625 lt!118621))))

(declare-fun lt!118620 () Unit!7231)

(assert (=> b!234375 (= lt!118620 lt!118608)))

(declare-fun lt!118614 () ListLongMap!3537)

(assert (=> b!234375 (= lt!118614 (getCurrentListMapNoExtraKeys!526 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504)))))

(declare-fun lt!118618 () (_ BitVec 64))

(assert (=> b!234375 (= lt!118618 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118615 () (_ BitVec 64))

(assert (=> b!234375 (= lt!118615 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118619 () Unit!7231)

(assert (=> b!234375 (= lt!118619 (addApplyDifferent!183 lt!118614 lt!118618 (zeroValue!4198 thiss!1504) lt!118615))))

(assert (=> b!234375 (= (apply!207 (+!629 lt!118614 (tuple2!4611 lt!118618 (zeroValue!4198 thiss!1504))) lt!118615) (apply!207 lt!118614 lt!118615))))

(declare-fun lt!118624 () Unit!7231)

(assert (=> b!234375 (= lt!118624 lt!118619)))

(declare-fun lt!118616 () ListLongMap!3537)

(assert (=> b!234375 (= lt!118616 (getCurrentListMapNoExtraKeys!526 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504)))))

(declare-fun lt!118611 () (_ BitVec 64))

(assert (=> b!234375 (= lt!118611 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118622 () (_ BitVec 64))

(assert (=> b!234375 (= lt!118622 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!234375 (= lt!118607 (addApplyDifferent!183 lt!118616 lt!118611 (minValue!4198 thiss!1504) lt!118622))))

(assert (=> b!234375 (= (apply!207 (+!629 lt!118616 (tuple2!4611 lt!118611 (minValue!4198 thiss!1504))) lt!118622) (apply!207 lt!118616 lt!118622))))

(declare-fun b!234376 () Bool)

(assert (=> b!234376 (= e!152252 e!152253)))

(declare-fun res!114989 () Bool)

(assert (=> b!234376 (= res!114989 call!21802)))

(assert (=> b!234376 (=> (not res!114989) (not e!152253))))

(declare-fun d!58999 () Bool)

(declare-fun e!152245 () Bool)

(assert (=> d!58999 e!152245))

(declare-fun res!114985 () Bool)

(assert (=> d!58999 (=> (not res!114985) (not e!152245))))

(assert (=> d!58999 (= res!114985 (or (bvsge #b00000000000000000000000000000000 (size!5847 (_keys!6421 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5847 (_keys!6421 thiss!1504))))))))

(declare-fun lt!118606 () ListLongMap!3537)

(assert (=> d!58999 (= lt!118612 lt!118606)))

(declare-fun lt!118609 () Unit!7231)

(assert (=> d!58999 (= lt!118609 e!152246)))

(declare-fun c!39016 () Bool)

(declare-fun e!152249 () Bool)

(assert (=> d!58999 (= c!39016 e!152249)))

(declare-fun res!114987 () Bool)

(assert (=> d!58999 (=> (not res!114987) (not e!152249))))

(assert (=> d!58999 (= res!114987 (bvslt #b00000000000000000000000000000000 (size!5847 (_keys!6421 thiss!1504))))))

(declare-fun e!152243 () ListLongMap!3537)

(assert (=> d!58999 (= lt!118606 e!152243)))

(declare-fun c!39011 () Bool)

(assert (=> d!58999 (= c!39011 (and (not (= (bvand (extraKeys!4094 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4094 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!58999 (validMask!0 (mask!10303 thiss!1504))))

(assert (=> d!58999 (= (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504)) lt!118612)))

(declare-fun b!234377 () Bool)

(declare-fun e!152255 () ListLongMap!3537)

(declare-fun call!21803 () ListLongMap!3537)

(assert (=> b!234377 (= e!152255 call!21803)))

(declare-fun b!234378 () Bool)

(assert (=> b!234378 (= e!152245 e!152247)))

(declare-fun c!39013 () Bool)

(assert (=> b!234378 (= c!39013 (not (= (bvand (extraKeys!4094 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!234379 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!234379 (= e!152249 (validKeyInArray!0 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!234380 () Bool)

(assert (=> b!234380 (= e!152243 e!152255)))

(declare-fun c!39014 () Bool)

(assert (=> b!234380 (= c!39014 (and (not (= (bvand (extraKeys!4094 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4094 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!234381 () Bool)

(assert (=> b!234381 (= e!152251 (= (apply!207 lt!118612 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4198 thiss!1504)))))

(declare-fun b!234382 () Bool)

(declare-fun e!152248 () Bool)

(assert (=> b!234382 (= e!152248 (validKeyInArray!0 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!21797 () Bool)

(declare-fun call!21801 () ListLongMap!3537)

(assert (=> bm!21797 (= call!21801 (getCurrentListMapNoExtraKeys!526 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504)))))

(declare-fun b!234383 () Bool)

(assert (=> b!234383 (= e!152254 call!21803)))

(declare-fun b!234384 () Bool)

(declare-fun c!39015 () Bool)

(assert (=> b!234384 (= c!39015 (and (not (= (bvand (extraKeys!4094 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4094 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!234384 (= e!152255 e!152254)))

(declare-fun b!234385 () Bool)

(declare-fun res!114983 () Bool)

(assert (=> b!234385 (=> (not res!114983) (not e!152245))))

(assert (=> b!234385 (= res!114983 e!152252)))

(declare-fun c!39012 () Bool)

(assert (=> b!234385 (= c!39012 (not (= (bvand (extraKeys!4094 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!21798 () Bool)

(declare-fun call!21800 () ListLongMap!3537)

(declare-fun call!21804 () ListLongMap!3537)

(assert (=> bm!21798 (= call!21800 (+!629 (ite c!39011 call!21801 (ite c!39014 call!21804 call!21805)) (ite (or c!39011 c!39014) (tuple2!4611 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4198 thiss!1504)) (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504)))))))

(declare-fun b!234386 () Bool)

(declare-fun res!114982 () Bool)

(assert (=> b!234386 (=> (not res!114982) (not e!152245))))

(assert (=> b!234386 (= res!114982 e!152244)))

(declare-fun res!114986 () Bool)

(assert (=> b!234386 (=> res!114986 e!152244)))

(assert (=> b!234386 (= res!114986 (not e!152248))))

(declare-fun res!114988 () Bool)

(assert (=> b!234386 (=> (not res!114988) (not e!152248))))

(assert (=> b!234386 (= res!114988 (bvslt #b00000000000000000000000000000000 (size!5847 (_keys!6421 thiss!1504))))))

(declare-fun b!234387 () Bool)

(assert (=> b!234387 (= e!152247 (not call!21799))))

(declare-fun bm!21799 () Bool)

(assert (=> bm!21799 (= call!21803 call!21800)))

(declare-fun b!234388 () Bool)

(declare-fun Unit!7234 () Unit!7231)

(assert (=> b!234388 (= e!152246 Unit!7234)))

(declare-fun bm!21800 () Bool)

(assert (=> bm!21800 (= call!21799 (contains!1650 lt!118612 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!21801 () Bool)

(assert (=> bm!21801 (= call!21804 call!21801)))

(declare-fun b!234389 () Bool)

(assert (=> b!234389 (= e!152243 (+!629 call!21800 (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504))))))

(declare-fun bm!21802 () Bool)

(assert (=> bm!21802 (= call!21805 call!21804)))

(assert (= (and d!58999 c!39011) b!234389))

(assert (= (and d!58999 (not c!39011)) b!234380))

(assert (= (and b!234380 c!39014) b!234377))

(assert (= (and b!234380 (not c!39014)) b!234384))

(assert (= (and b!234384 c!39015) b!234383))

(assert (= (and b!234384 (not c!39015)) b!234374))

(assert (= (or b!234383 b!234374) bm!21802))

(assert (= (or b!234377 bm!21802) bm!21801))

(assert (= (or b!234377 b!234383) bm!21799))

(assert (= (or b!234389 bm!21801) bm!21797))

(assert (= (or b!234389 bm!21799) bm!21798))

(assert (= (and d!58999 res!114987) b!234379))

(assert (= (and d!58999 c!39016) b!234375))

(assert (= (and d!58999 (not c!39016)) b!234388))

(assert (= (and d!58999 res!114985) b!234386))

(assert (= (and b!234386 res!114988) b!234382))

(assert (= (and b!234386 (not res!114986)) b!234369))

(assert (= (and b!234369 res!114981) b!234373))

(assert (= (and b!234386 res!114982) b!234385))

(assert (= (and b!234385 c!39012) b!234376))

(assert (= (and b!234385 (not c!39012)) b!234370))

(assert (= (and b!234376 res!114989) b!234372))

(assert (= (or b!234376 b!234370) bm!21796))

(assert (= (and b!234385 res!114983) b!234378))

(assert (= (and b!234378 c!39013) b!234371))

(assert (= (and b!234378 (not c!39013)) b!234387))

(assert (= (and b!234371 res!114984) b!234381))

(assert (= (or b!234371 b!234387) bm!21800))

(declare-fun b_lambda!7905 () Bool)

(assert (=> (not b_lambda!7905) (not b!234373)))

(declare-fun t!8521 () Bool)

(declare-fun tb!2935 () Bool)

(assert (=> (and b!234262 (= (defaultEntry!4357 thiss!1504) (defaultEntry!4357 thiss!1504)) t!8521) tb!2935))

(declare-fun result!5111 () Bool)

(assert (=> tb!2935 (= result!5111 tp_is_empty!6171)))

(assert (=> b!234373 t!8521))

(declare-fun b_and!13245 () Bool)

(assert (= b_and!13241 (and (=> t!8521 result!5111) b_and!13245)))

(declare-fun m!255629 () Bool)

(assert (=> b!234375 m!255629))

(declare-fun m!255631 () Bool)

(assert (=> b!234375 m!255631))

(declare-fun m!255633 () Bool)

(assert (=> b!234375 m!255633))

(declare-fun m!255635 () Bool)

(assert (=> b!234375 m!255635))

(declare-fun m!255637 () Bool)

(assert (=> b!234375 m!255637))

(declare-fun m!255639 () Bool)

(assert (=> b!234375 m!255639))

(declare-fun m!255641 () Bool)

(assert (=> b!234375 m!255641))

(declare-fun m!255643 () Bool)

(assert (=> b!234375 m!255643))

(declare-fun m!255645 () Bool)

(assert (=> b!234375 m!255645))

(declare-fun m!255647 () Bool)

(assert (=> b!234375 m!255647))

(declare-fun m!255649 () Bool)

(assert (=> b!234375 m!255649))

(declare-fun m!255651 () Bool)

(assert (=> b!234375 m!255651))

(declare-fun m!255653 () Bool)

(assert (=> b!234375 m!255653))

(assert (=> b!234375 m!255641))

(assert (=> b!234375 m!255637))

(assert (=> b!234375 m!255645))

(declare-fun m!255655 () Bool)

(assert (=> b!234375 m!255655))

(declare-fun m!255657 () Bool)

(assert (=> b!234375 m!255657))

(declare-fun m!255659 () Bool)

(assert (=> b!234375 m!255659))

(assert (=> b!234375 m!255651))

(declare-fun m!255661 () Bool)

(assert (=> b!234375 m!255661))

(declare-fun m!255663 () Bool)

(assert (=> bm!21800 m!255663))

(assert (=> bm!21797 m!255629))

(assert (=> b!234373 m!255649))

(assert (=> b!234373 m!255649))

(declare-fun m!255665 () Bool)

(assert (=> b!234373 m!255665))

(declare-fun m!255667 () Bool)

(assert (=> b!234373 m!255667))

(declare-fun m!255669 () Bool)

(assert (=> b!234373 m!255669))

(declare-fun m!255671 () Bool)

(assert (=> b!234373 m!255671))

(assert (=> b!234373 m!255669))

(assert (=> b!234373 m!255667))

(assert (=> b!234379 m!255649))

(assert (=> b!234379 m!255649))

(declare-fun m!255673 () Bool)

(assert (=> b!234379 m!255673))

(assert (=> b!234382 m!255649))

(assert (=> b!234382 m!255649))

(assert (=> b!234382 m!255673))

(declare-fun m!255675 () Bool)

(assert (=> bm!21798 m!255675))

(declare-fun m!255677 () Bool)

(assert (=> b!234381 m!255677))

(declare-fun m!255679 () Bool)

(assert (=> b!234372 m!255679))

(assert (=> d!58999 m!255571))

(declare-fun m!255681 () Bool)

(assert (=> b!234389 m!255681))

(assert (=> b!234369 m!255649))

(assert (=> b!234369 m!255649))

(declare-fun m!255683 () Bool)

(assert (=> b!234369 m!255683))

(declare-fun m!255685 () Bool)

(assert (=> bm!21796 m!255685))

(assert (=> b!234257 d!58999))

(declare-fun d!59001 () Bool)

(assert (=> d!59001 (= (array_inv!3623 (_keys!6421 thiss!1504)) (bvsge (size!5847 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!234262 d!59001))

(declare-fun d!59003 () Bool)

(assert (=> d!59003 (= (array_inv!3624 (_values!4340 thiss!1504)) (bvsge (size!5846 (_values!4340 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!234262 d!59003))

(declare-fun b!234398 () Bool)

(declare-fun e!152260 () Bool)

(assert (=> b!234398 (= e!152260 tp_is_empty!6171)))

(declare-fun mapNonEmpty!10446 () Bool)

(declare-fun mapRes!10446 () Bool)

(declare-fun tp!22092 () Bool)

(assert (=> mapNonEmpty!10446 (= mapRes!10446 (and tp!22092 e!152260))))

(declare-fun mapKey!10446 () (_ BitVec 32))

(declare-fun mapRest!10446 () (Array (_ BitVec 32) ValueCell!2742))

(declare-fun mapValue!10446 () ValueCell!2742)

(assert (=> mapNonEmpty!10446 (= mapRest!10440 (store mapRest!10446 mapKey!10446 mapValue!10446))))

(declare-fun condMapEmpty!10446 () Bool)

(declare-fun mapDefault!10446 () ValueCell!2742)

(assert (=> mapNonEmpty!10440 (= condMapEmpty!10446 (= mapRest!10440 ((as const (Array (_ BitVec 32) ValueCell!2742)) mapDefault!10446)))))

(declare-fun e!152261 () Bool)

(assert (=> mapNonEmpty!10440 (= tp!22083 (and e!152261 mapRes!10446))))

(declare-fun b!234399 () Bool)

(assert (=> b!234399 (= e!152261 tp_is_empty!6171)))

(declare-fun mapIsEmpty!10446 () Bool)

(assert (=> mapIsEmpty!10446 mapRes!10446))

(assert (= (and mapNonEmpty!10440 condMapEmpty!10446) mapIsEmpty!10446))

(assert (= (and mapNonEmpty!10440 (not condMapEmpty!10446)) mapNonEmpty!10446))

(assert (= (and mapNonEmpty!10446 ((_ is ValueCellFull!2742) mapValue!10446)) b!234398))

(assert (= (and mapNonEmpty!10440 ((_ is ValueCellFull!2742) mapDefault!10446)) b!234399))

(declare-fun m!255687 () Bool)

(assert (=> mapNonEmpty!10446 m!255687))

(declare-fun b_lambda!7907 () Bool)

(assert (= b_lambda!7905 (or (and b!234262 b_free!6309) b_lambda!7907)))

(check-sat (not d!58993) (not b!234316) (not b_lambda!7907) (not mapNonEmpty!10446) (not b!234315) (not b!234373) (not bm!21798) (not b_next!6309) (not b!234326) (not bm!21800) (not bm!21797) (not b!234306) (not b!234324) (not b!234389) (not d!58991) (not b!234372) (not b!234375) (not b!234382) (not d!58997) (not d!58999) (not b!234317) (not bm!21796) b_and!13245 (not b!234381) (not b!234379) tp_is_empty!6171 (not b!234369))
(check-sat b_and!13245 (not b_next!6309))
(get-model)

(declare-fun b!234410 () Bool)

(declare-fun e!152271 () Bool)

(declare-fun e!152272 () Bool)

(assert (=> b!234410 (= e!152271 e!152272)))

(declare-fun c!39019 () Bool)

(assert (=> b!234410 (= c!39019 (validKeyInArray!0 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!21805 () Bool)

(declare-fun call!21808 () Bool)

(assert (=> bm!21805 (= call!21808 (arrayNoDuplicates!0 (_keys!6421 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!39019 (Cons!3541 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000) Nil!3542) Nil!3542)))))

(declare-fun b!234411 () Bool)

(declare-fun e!152270 () Bool)

(declare-fun contains!1651 (List!3545 (_ BitVec 64)) Bool)

(assert (=> b!234411 (= e!152270 (contains!1651 Nil!3542 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!234412 () Bool)

(assert (=> b!234412 (= e!152272 call!21808)))

(declare-fun d!59005 () Bool)

(declare-fun res!114998 () Bool)

(declare-fun e!152273 () Bool)

(assert (=> d!59005 (=> res!114998 e!152273)))

(assert (=> d!59005 (= res!114998 (bvsge #b00000000000000000000000000000000 (size!5847 (_keys!6421 thiss!1504))))))

(assert (=> d!59005 (= (arrayNoDuplicates!0 (_keys!6421 thiss!1504) #b00000000000000000000000000000000 Nil!3542) e!152273)))

(declare-fun b!234413 () Bool)

(assert (=> b!234413 (= e!152273 e!152271)))

(declare-fun res!114997 () Bool)

(assert (=> b!234413 (=> (not res!114997) (not e!152271))))

(assert (=> b!234413 (= res!114997 (not e!152270))))

(declare-fun res!114996 () Bool)

(assert (=> b!234413 (=> (not res!114996) (not e!152270))))

(assert (=> b!234413 (= res!114996 (validKeyInArray!0 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!234414 () Bool)

(assert (=> b!234414 (= e!152272 call!21808)))

(assert (= (and d!59005 (not res!114998)) b!234413))

(assert (= (and b!234413 res!114996) b!234411))

(assert (= (and b!234413 res!114997) b!234410))

(assert (= (and b!234410 c!39019) b!234414))

(assert (= (and b!234410 (not c!39019)) b!234412))

(assert (= (or b!234414 b!234412) bm!21805))

(assert (=> b!234410 m!255649))

(assert (=> b!234410 m!255649))

(assert (=> b!234410 m!255673))

(assert (=> bm!21805 m!255649))

(declare-fun m!255689 () Bool)

(assert (=> bm!21805 m!255689))

(assert (=> b!234411 m!255649))

(assert (=> b!234411 m!255649))

(declare-fun m!255691 () Bool)

(assert (=> b!234411 m!255691))

(assert (=> b!234413 m!255649))

(assert (=> b!234413 m!255649))

(assert (=> b!234413 m!255673))

(assert (=> b!234317 d!59005))

(declare-fun b!234427 () Bool)

(declare-fun e!152281 () SeekEntryResult!990)

(assert (=> b!234427 (= e!152281 (MissingVacant!990 (index!6132 lt!118549)))))

(declare-fun b!234428 () Bool)

(declare-fun e!152282 () SeekEntryResult!990)

(assert (=> b!234428 (= e!152282 (Found!990 (index!6132 lt!118549)))))

(declare-fun b!234429 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!234429 (= e!152281 (seekKeyOrZeroReturnVacant!0 (bvadd (x!23706 lt!118549) #b00000000000000000000000000000001) (nextIndex!0 (index!6132 lt!118549) (x!23706 lt!118549) (mask!10303 thiss!1504)) (index!6132 lt!118549) key!932 (_keys!6421 thiss!1504) (mask!10303 thiss!1504)))))

(declare-fun d!59007 () Bool)

(declare-fun lt!118633 () SeekEntryResult!990)

(assert (=> d!59007 (and (or ((_ is Undefined!990) lt!118633) (not ((_ is Found!990) lt!118633)) (and (bvsge (index!6131 lt!118633) #b00000000000000000000000000000000) (bvslt (index!6131 lt!118633) (size!5847 (_keys!6421 thiss!1504))))) (or ((_ is Undefined!990) lt!118633) ((_ is Found!990) lt!118633) (not ((_ is MissingVacant!990) lt!118633)) (not (= (index!6133 lt!118633) (index!6132 lt!118549))) (and (bvsge (index!6133 lt!118633) #b00000000000000000000000000000000) (bvslt (index!6133 lt!118633) (size!5847 (_keys!6421 thiss!1504))))) (or ((_ is Undefined!990) lt!118633) (ite ((_ is Found!990) lt!118633) (= (select (arr!5512 (_keys!6421 thiss!1504)) (index!6131 lt!118633)) key!932) (and ((_ is MissingVacant!990) lt!118633) (= (index!6133 lt!118633) (index!6132 lt!118549)) (= (select (arr!5512 (_keys!6421 thiss!1504)) (index!6133 lt!118633)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!152280 () SeekEntryResult!990)

(assert (=> d!59007 (= lt!118633 e!152280)))

(declare-fun c!39028 () Bool)

(assert (=> d!59007 (= c!39028 (bvsge (x!23706 lt!118549) #b01111111111111111111111111111110))))

(declare-fun lt!118632 () (_ BitVec 64))

(assert (=> d!59007 (= lt!118632 (select (arr!5512 (_keys!6421 thiss!1504)) (index!6132 lt!118549)))))

(assert (=> d!59007 (validMask!0 (mask!10303 thiss!1504))))

(assert (=> d!59007 (= (seekKeyOrZeroReturnVacant!0 (x!23706 lt!118549) (index!6132 lt!118549) (index!6132 lt!118549) key!932 (_keys!6421 thiss!1504) (mask!10303 thiss!1504)) lt!118633)))

(declare-fun b!234430 () Bool)

(declare-fun c!39026 () Bool)

(assert (=> b!234430 (= c!39026 (= lt!118632 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!234430 (= e!152282 e!152281)))

(declare-fun b!234431 () Bool)

(assert (=> b!234431 (= e!152280 Undefined!990)))

(declare-fun b!234432 () Bool)

(assert (=> b!234432 (= e!152280 e!152282)))

(declare-fun c!39027 () Bool)

(assert (=> b!234432 (= c!39027 (= lt!118632 key!932))))

(assert (= (and d!59007 c!39028) b!234431))

(assert (= (and d!59007 (not c!39028)) b!234432))

(assert (= (and b!234432 c!39027) b!234428))

(assert (= (and b!234432 (not c!39027)) b!234430))

(assert (= (and b!234430 c!39026) b!234427))

(assert (= (and b!234430 (not c!39026)) b!234429))

(declare-fun m!255693 () Bool)

(assert (=> b!234429 m!255693))

(assert (=> b!234429 m!255693))

(declare-fun m!255695 () Bool)

(assert (=> b!234429 m!255695))

(declare-fun m!255697 () Bool)

(assert (=> d!59007 m!255697))

(declare-fun m!255699 () Bool)

(assert (=> d!59007 m!255699))

(assert (=> d!59007 m!255599))

(assert (=> d!59007 m!255571))

(assert (=> b!234306 d!59007))

(declare-fun d!59009 () Bool)

(assert (=> d!59009 (= (validKeyInArray!0 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!234379 d!59009))

(declare-fun d!59011 () Bool)

(declare-fun e!152284 () Bool)

(assert (=> d!59011 e!152284))

(declare-fun res!114999 () Bool)

(assert (=> d!59011 (=> res!114999 e!152284)))

(declare-fun lt!118636 () Bool)

(assert (=> d!59011 (= res!114999 (not lt!118636))))

(declare-fun lt!118635 () Bool)

(assert (=> d!59011 (= lt!118636 lt!118635)))

(declare-fun lt!118637 () Unit!7231)

(declare-fun e!152283 () Unit!7231)

(assert (=> d!59011 (= lt!118637 e!152283)))

(declare-fun c!39029 () Bool)

(assert (=> d!59011 (= c!39029 lt!118635)))

(assert (=> d!59011 (= lt!118635 (containsKey!256 (toList!1784 lt!118612) (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!59011 (= (contains!1650 lt!118612 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)) lt!118636)))

(declare-fun b!234433 () Bool)

(declare-fun lt!118634 () Unit!7231)

(assert (=> b!234433 (= e!152283 lt!118634)))

(assert (=> b!234433 (= lt!118634 (lemmaContainsKeyImpliesGetValueByKeyDefined!205 (toList!1784 lt!118612) (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!234433 (isDefined!206 (getValueByKey!264 (toList!1784 lt!118612) (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!234434 () Bool)

(declare-fun Unit!7235 () Unit!7231)

(assert (=> b!234434 (= e!152283 Unit!7235)))

(declare-fun b!234435 () Bool)

(assert (=> b!234435 (= e!152284 (isDefined!206 (getValueByKey!264 (toList!1784 lt!118612) (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!59011 c!39029) b!234433))

(assert (= (and d!59011 (not c!39029)) b!234434))

(assert (= (and d!59011 (not res!114999)) b!234435))

(assert (=> d!59011 m!255649))

(declare-fun m!255701 () Bool)

(assert (=> d!59011 m!255701))

(assert (=> b!234433 m!255649))

(declare-fun m!255703 () Bool)

(assert (=> b!234433 m!255703))

(assert (=> b!234433 m!255649))

(declare-fun m!255705 () Bool)

(assert (=> b!234433 m!255705))

(assert (=> b!234433 m!255705))

(declare-fun m!255707 () Bool)

(assert (=> b!234433 m!255707))

(assert (=> b!234435 m!255649))

(assert (=> b!234435 m!255705))

(assert (=> b!234435 m!255705))

(assert (=> b!234435 m!255707))

(assert (=> b!234369 d!59011))

(declare-fun d!59013 () Bool)

(declare-fun e!152287 () Bool)

(assert (=> d!59013 e!152287))

(declare-fun res!115004 () Bool)

(assert (=> d!59013 (=> (not res!115004) (not e!152287))))

(declare-fun lt!118648 () ListLongMap!3537)

(assert (=> d!59013 (= res!115004 (contains!1650 lt!118648 (_1!2315 (tuple2!4611 lt!118623 (minValue!4198 thiss!1504)))))))

(declare-fun lt!118647 () List!3544)

(assert (=> d!59013 (= lt!118648 (ListLongMap!3538 lt!118647))))

(declare-fun lt!118646 () Unit!7231)

(declare-fun lt!118649 () Unit!7231)

(assert (=> d!59013 (= lt!118646 lt!118649)))

(assert (=> d!59013 (= (getValueByKey!264 lt!118647 (_1!2315 (tuple2!4611 lt!118623 (minValue!4198 thiss!1504)))) (Some!269 (_2!2315 (tuple2!4611 lt!118623 (minValue!4198 thiss!1504)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!150 (List!3544 (_ BitVec 64) V!7875) Unit!7231)

(assert (=> d!59013 (= lt!118649 (lemmaContainsTupThenGetReturnValue!150 lt!118647 (_1!2315 (tuple2!4611 lt!118623 (minValue!4198 thiss!1504))) (_2!2315 (tuple2!4611 lt!118623 (minValue!4198 thiss!1504)))))))

(declare-fun insertStrictlySorted!152 (List!3544 (_ BitVec 64) V!7875) List!3544)

(assert (=> d!59013 (= lt!118647 (insertStrictlySorted!152 (toList!1784 lt!118625) (_1!2315 (tuple2!4611 lt!118623 (minValue!4198 thiss!1504))) (_2!2315 (tuple2!4611 lt!118623 (minValue!4198 thiss!1504)))))))

(assert (=> d!59013 (= (+!629 lt!118625 (tuple2!4611 lt!118623 (minValue!4198 thiss!1504))) lt!118648)))

(declare-fun b!234440 () Bool)

(declare-fun res!115005 () Bool)

(assert (=> b!234440 (=> (not res!115005) (not e!152287))))

(assert (=> b!234440 (= res!115005 (= (getValueByKey!264 (toList!1784 lt!118648) (_1!2315 (tuple2!4611 lt!118623 (minValue!4198 thiss!1504)))) (Some!269 (_2!2315 (tuple2!4611 lt!118623 (minValue!4198 thiss!1504))))))))

(declare-fun b!234441 () Bool)

(declare-fun contains!1652 (List!3544 tuple2!4610) Bool)

(assert (=> b!234441 (= e!152287 (contains!1652 (toList!1784 lt!118648) (tuple2!4611 lt!118623 (minValue!4198 thiss!1504))))))

(assert (= (and d!59013 res!115004) b!234440))

(assert (= (and b!234440 res!115005) b!234441))

(declare-fun m!255709 () Bool)

(assert (=> d!59013 m!255709))

(declare-fun m!255711 () Bool)

(assert (=> d!59013 m!255711))

(declare-fun m!255713 () Bool)

(assert (=> d!59013 m!255713))

(declare-fun m!255715 () Bool)

(assert (=> d!59013 m!255715))

(declare-fun m!255717 () Bool)

(assert (=> b!234440 m!255717))

(declare-fun m!255719 () Bool)

(assert (=> b!234441 m!255719))

(assert (=> b!234375 d!59013))

(declare-fun d!59015 () Bool)

(declare-fun get!2830 (Option!270) V!7875)

(assert (=> d!59015 (= (apply!207 lt!118625 lt!118621) (get!2830 (getValueByKey!264 (toList!1784 lt!118625) lt!118621)))))

(declare-fun bs!8682 () Bool)

(assert (= bs!8682 d!59015))

(declare-fun m!255721 () Bool)

(assert (=> bs!8682 m!255721))

(assert (=> bs!8682 m!255721))

(declare-fun m!255723 () Bool)

(assert (=> bs!8682 m!255723))

(assert (=> b!234375 d!59015))

(declare-fun d!59017 () Bool)

(assert (=> d!59017 (= (apply!207 (+!629 lt!118614 (tuple2!4611 lt!118618 (zeroValue!4198 thiss!1504))) lt!118615) (apply!207 lt!118614 lt!118615))))

(declare-fun lt!118652 () Unit!7231)

(declare-fun choose!1106 (ListLongMap!3537 (_ BitVec 64) V!7875 (_ BitVec 64)) Unit!7231)

(assert (=> d!59017 (= lt!118652 (choose!1106 lt!118614 lt!118618 (zeroValue!4198 thiss!1504) lt!118615))))

(declare-fun e!152290 () Bool)

(assert (=> d!59017 e!152290))

(declare-fun res!115008 () Bool)

(assert (=> d!59017 (=> (not res!115008) (not e!152290))))

(assert (=> d!59017 (= res!115008 (contains!1650 lt!118614 lt!118615))))

(assert (=> d!59017 (= (addApplyDifferent!183 lt!118614 lt!118618 (zeroValue!4198 thiss!1504) lt!118615) lt!118652)))

(declare-fun b!234445 () Bool)

(assert (=> b!234445 (= e!152290 (not (= lt!118615 lt!118618)))))

(assert (= (and d!59017 res!115008) b!234445))

(declare-fun m!255725 () Bool)

(assert (=> d!59017 m!255725))

(declare-fun m!255727 () Bool)

(assert (=> d!59017 m!255727))

(assert (=> d!59017 m!255651))

(assert (=> d!59017 m!255653))

(assert (=> d!59017 m!255651))

(assert (=> d!59017 m!255657))

(assert (=> b!234375 d!59017))

(declare-fun d!59019 () Bool)

(assert (=> d!59019 (= (apply!207 (+!629 lt!118614 (tuple2!4611 lt!118618 (zeroValue!4198 thiss!1504))) lt!118615) (get!2830 (getValueByKey!264 (toList!1784 (+!629 lt!118614 (tuple2!4611 lt!118618 (zeroValue!4198 thiss!1504)))) lt!118615)))))

(declare-fun bs!8683 () Bool)

(assert (= bs!8683 d!59019))

(declare-fun m!255729 () Bool)

(assert (=> bs!8683 m!255729))

(assert (=> bs!8683 m!255729))

(declare-fun m!255731 () Bool)

(assert (=> bs!8683 m!255731))

(assert (=> b!234375 d!59019))

(declare-fun d!59021 () Bool)

(assert (=> d!59021 (= (apply!207 (+!629 lt!118625 (tuple2!4611 lt!118623 (minValue!4198 thiss!1504))) lt!118621) (get!2830 (getValueByKey!264 (toList!1784 (+!629 lt!118625 (tuple2!4611 lt!118623 (minValue!4198 thiss!1504)))) lt!118621)))))

(declare-fun bs!8684 () Bool)

(assert (= bs!8684 d!59021))

(declare-fun m!255733 () Bool)

(assert (=> bs!8684 m!255733))

(assert (=> bs!8684 m!255733))

(declare-fun m!255735 () Bool)

(assert (=> bs!8684 m!255735))

(assert (=> b!234375 d!59021))

(declare-fun d!59023 () Bool)

(declare-fun e!152291 () Bool)

(assert (=> d!59023 e!152291))

(declare-fun res!115009 () Bool)

(assert (=> d!59023 (=> (not res!115009) (not e!152291))))

(declare-fun lt!118655 () ListLongMap!3537)

(assert (=> d!59023 (= res!115009 (contains!1650 lt!118655 (_1!2315 (tuple2!4611 lt!118611 (minValue!4198 thiss!1504)))))))

(declare-fun lt!118654 () List!3544)

(assert (=> d!59023 (= lt!118655 (ListLongMap!3538 lt!118654))))

(declare-fun lt!118653 () Unit!7231)

(declare-fun lt!118656 () Unit!7231)

(assert (=> d!59023 (= lt!118653 lt!118656)))

(assert (=> d!59023 (= (getValueByKey!264 lt!118654 (_1!2315 (tuple2!4611 lt!118611 (minValue!4198 thiss!1504)))) (Some!269 (_2!2315 (tuple2!4611 lt!118611 (minValue!4198 thiss!1504)))))))

(assert (=> d!59023 (= lt!118656 (lemmaContainsTupThenGetReturnValue!150 lt!118654 (_1!2315 (tuple2!4611 lt!118611 (minValue!4198 thiss!1504))) (_2!2315 (tuple2!4611 lt!118611 (minValue!4198 thiss!1504)))))))

(assert (=> d!59023 (= lt!118654 (insertStrictlySorted!152 (toList!1784 lt!118616) (_1!2315 (tuple2!4611 lt!118611 (minValue!4198 thiss!1504))) (_2!2315 (tuple2!4611 lt!118611 (minValue!4198 thiss!1504)))))))

(assert (=> d!59023 (= (+!629 lt!118616 (tuple2!4611 lt!118611 (minValue!4198 thiss!1504))) lt!118655)))

(declare-fun b!234446 () Bool)

(declare-fun res!115010 () Bool)

(assert (=> b!234446 (=> (not res!115010) (not e!152291))))

(assert (=> b!234446 (= res!115010 (= (getValueByKey!264 (toList!1784 lt!118655) (_1!2315 (tuple2!4611 lt!118611 (minValue!4198 thiss!1504)))) (Some!269 (_2!2315 (tuple2!4611 lt!118611 (minValue!4198 thiss!1504))))))))

(declare-fun b!234447 () Bool)

(assert (=> b!234447 (= e!152291 (contains!1652 (toList!1784 lt!118655) (tuple2!4611 lt!118611 (minValue!4198 thiss!1504))))))

(assert (= (and d!59023 res!115009) b!234446))

(assert (= (and b!234446 res!115010) b!234447))

(declare-fun m!255737 () Bool)

(assert (=> d!59023 m!255737))

(declare-fun m!255739 () Bool)

(assert (=> d!59023 m!255739))

(declare-fun m!255741 () Bool)

(assert (=> d!59023 m!255741))

(declare-fun m!255743 () Bool)

(assert (=> d!59023 m!255743))

(declare-fun m!255745 () Bool)

(assert (=> b!234446 m!255745))

(declare-fun m!255747 () Bool)

(assert (=> b!234447 m!255747))

(assert (=> b!234375 d!59023))

(declare-fun d!59025 () Bool)

(declare-fun e!152293 () Bool)

(assert (=> d!59025 e!152293))

(declare-fun res!115011 () Bool)

(assert (=> d!59025 (=> res!115011 e!152293)))

(declare-fun lt!118659 () Bool)

(assert (=> d!59025 (= res!115011 (not lt!118659))))

(declare-fun lt!118658 () Bool)

(assert (=> d!59025 (= lt!118659 lt!118658)))

(declare-fun lt!118660 () Unit!7231)

(declare-fun e!152292 () Unit!7231)

(assert (=> d!59025 (= lt!118660 e!152292)))

(declare-fun c!39030 () Bool)

(assert (=> d!59025 (= c!39030 lt!118658)))

(assert (=> d!59025 (= lt!118658 (containsKey!256 (toList!1784 (+!629 lt!118613 (tuple2!4611 lt!118617 (zeroValue!4198 thiss!1504)))) lt!118627))))

(assert (=> d!59025 (= (contains!1650 (+!629 lt!118613 (tuple2!4611 lt!118617 (zeroValue!4198 thiss!1504))) lt!118627) lt!118659)))

(declare-fun b!234448 () Bool)

(declare-fun lt!118657 () Unit!7231)

(assert (=> b!234448 (= e!152292 lt!118657)))

(assert (=> b!234448 (= lt!118657 (lemmaContainsKeyImpliesGetValueByKeyDefined!205 (toList!1784 (+!629 lt!118613 (tuple2!4611 lt!118617 (zeroValue!4198 thiss!1504)))) lt!118627))))

(assert (=> b!234448 (isDefined!206 (getValueByKey!264 (toList!1784 (+!629 lt!118613 (tuple2!4611 lt!118617 (zeroValue!4198 thiss!1504)))) lt!118627))))

(declare-fun b!234449 () Bool)

(declare-fun Unit!7236 () Unit!7231)

(assert (=> b!234449 (= e!152292 Unit!7236)))

(declare-fun b!234450 () Bool)

(assert (=> b!234450 (= e!152293 (isDefined!206 (getValueByKey!264 (toList!1784 (+!629 lt!118613 (tuple2!4611 lt!118617 (zeroValue!4198 thiss!1504)))) lt!118627)))))

(assert (= (and d!59025 c!39030) b!234448))

(assert (= (and d!59025 (not c!39030)) b!234449))

(assert (= (and d!59025 (not res!115011)) b!234450))

(declare-fun m!255749 () Bool)

(assert (=> d!59025 m!255749))

(declare-fun m!255751 () Bool)

(assert (=> b!234448 m!255751))

(declare-fun m!255753 () Bool)

(assert (=> b!234448 m!255753))

(assert (=> b!234448 m!255753))

(declare-fun m!255755 () Bool)

(assert (=> b!234448 m!255755))

(assert (=> b!234450 m!255753))

(assert (=> b!234450 m!255753))

(assert (=> b!234450 m!255755))

(assert (=> b!234375 d!59025))

(declare-fun d!59027 () Bool)

(assert (=> d!59027 (= (apply!207 lt!118616 lt!118622) (get!2830 (getValueByKey!264 (toList!1784 lt!118616) lt!118622)))))

(declare-fun bs!8685 () Bool)

(assert (= bs!8685 d!59027))

(declare-fun m!255757 () Bool)

(assert (=> bs!8685 m!255757))

(assert (=> bs!8685 m!255757))

(declare-fun m!255759 () Bool)

(assert (=> bs!8685 m!255759))

(assert (=> b!234375 d!59027))

(declare-fun d!59029 () Bool)

(assert (=> d!59029 (= (apply!207 lt!118614 lt!118615) (get!2830 (getValueByKey!264 (toList!1784 lt!118614) lt!118615)))))

(declare-fun bs!8686 () Bool)

(assert (= bs!8686 d!59029))

(declare-fun m!255761 () Bool)

(assert (=> bs!8686 m!255761))

(assert (=> bs!8686 m!255761))

(declare-fun m!255763 () Bool)

(assert (=> bs!8686 m!255763))

(assert (=> b!234375 d!59029))

(declare-fun d!59031 () Bool)

(assert (=> d!59031 (= (apply!207 (+!629 lt!118616 (tuple2!4611 lt!118611 (minValue!4198 thiss!1504))) lt!118622) (get!2830 (getValueByKey!264 (toList!1784 (+!629 lt!118616 (tuple2!4611 lt!118611 (minValue!4198 thiss!1504)))) lt!118622)))))

(declare-fun bs!8687 () Bool)

(assert (= bs!8687 d!59031))

(declare-fun m!255765 () Bool)

(assert (=> bs!8687 m!255765))

(assert (=> bs!8687 m!255765))

(declare-fun m!255767 () Bool)

(assert (=> bs!8687 m!255767))

(assert (=> b!234375 d!59031))

(declare-fun d!59033 () Bool)

(assert (=> d!59033 (contains!1650 (+!629 lt!118613 (tuple2!4611 lt!118617 (zeroValue!4198 thiss!1504))) lt!118627)))

(declare-fun lt!118663 () Unit!7231)

(declare-fun choose!1107 (ListLongMap!3537 (_ BitVec 64) V!7875 (_ BitVec 64)) Unit!7231)

(assert (=> d!59033 (= lt!118663 (choose!1107 lt!118613 lt!118617 (zeroValue!4198 thiss!1504) lt!118627))))

(assert (=> d!59033 (contains!1650 lt!118613 lt!118627)))

(assert (=> d!59033 (= (addStillContains!183 lt!118613 lt!118617 (zeroValue!4198 thiss!1504) lt!118627) lt!118663)))

(declare-fun bs!8688 () Bool)

(assert (= bs!8688 d!59033))

(assert (=> bs!8688 m!255641))

(assert (=> bs!8688 m!255641))

(assert (=> bs!8688 m!255643))

(declare-fun m!255769 () Bool)

(assert (=> bs!8688 m!255769))

(declare-fun m!255771 () Bool)

(assert (=> bs!8688 m!255771))

(assert (=> b!234375 d!59033))

(declare-fun d!59035 () Bool)

(declare-fun e!152294 () Bool)

(assert (=> d!59035 e!152294))

(declare-fun res!115012 () Bool)

(assert (=> d!59035 (=> (not res!115012) (not e!152294))))

(declare-fun lt!118666 () ListLongMap!3537)

(assert (=> d!59035 (= res!115012 (contains!1650 lt!118666 (_1!2315 (tuple2!4611 lt!118618 (zeroValue!4198 thiss!1504)))))))

(declare-fun lt!118665 () List!3544)

(assert (=> d!59035 (= lt!118666 (ListLongMap!3538 lt!118665))))

(declare-fun lt!118664 () Unit!7231)

(declare-fun lt!118667 () Unit!7231)

(assert (=> d!59035 (= lt!118664 lt!118667)))

(assert (=> d!59035 (= (getValueByKey!264 lt!118665 (_1!2315 (tuple2!4611 lt!118618 (zeroValue!4198 thiss!1504)))) (Some!269 (_2!2315 (tuple2!4611 lt!118618 (zeroValue!4198 thiss!1504)))))))

(assert (=> d!59035 (= lt!118667 (lemmaContainsTupThenGetReturnValue!150 lt!118665 (_1!2315 (tuple2!4611 lt!118618 (zeroValue!4198 thiss!1504))) (_2!2315 (tuple2!4611 lt!118618 (zeroValue!4198 thiss!1504)))))))

(assert (=> d!59035 (= lt!118665 (insertStrictlySorted!152 (toList!1784 lt!118614) (_1!2315 (tuple2!4611 lt!118618 (zeroValue!4198 thiss!1504))) (_2!2315 (tuple2!4611 lt!118618 (zeroValue!4198 thiss!1504)))))))

(assert (=> d!59035 (= (+!629 lt!118614 (tuple2!4611 lt!118618 (zeroValue!4198 thiss!1504))) lt!118666)))

(declare-fun b!234452 () Bool)

(declare-fun res!115013 () Bool)

(assert (=> b!234452 (=> (not res!115013) (not e!152294))))

(assert (=> b!234452 (= res!115013 (= (getValueByKey!264 (toList!1784 lt!118666) (_1!2315 (tuple2!4611 lt!118618 (zeroValue!4198 thiss!1504)))) (Some!269 (_2!2315 (tuple2!4611 lt!118618 (zeroValue!4198 thiss!1504))))))))

(declare-fun b!234453 () Bool)

(assert (=> b!234453 (= e!152294 (contains!1652 (toList!1784 lt!118666) (tuple2!4611 lt!118618 (zeroValue!4198 thiss!1504))))))

(assert (= (and d!59035 res!115012) b!234452))

(assert (= (and b!234452 res!115013) b!234453))

(declare-fun m!255773 () Bool)

(assert (=> d!59035 m!255773))

(declare-fun m!255775 () Bool)

(assert (=> d!59035 m!255775))

(declare-fun m!255777 () Bool)

(assert (=> d!59035 m!255777))

(declare-fun m!255779 () Bool)

(assert (=> d!59035 m!255779))

(declare-fun m!255781 () Bool)

(assert (=> b!234452 m!255781))

(declare-fun m!255783 () Bool)

(assert (=> b!234453 m!255783))

(assert (=> b!234375 d!59035))

(declare-fun d!59037 () Bool)

(declare-fun e!152295 () Bool)

(assert (=> d!59037 e!152295))

(declare-fun res!115014 () Bool)

(assert (=> d!59037 (=> (not res!115014) (not e!152295))))

(declare-fun lt!118670 () ListLongMap!3537)

(assert (=> d!59037 (= res!115014 (contains!1650 lt!118670 (_1!2315 (tuple2!4611 lt!118617 (zeroValue!4198 thiss!1504)))))))

(declare-fun lt!118669 () List!3544)

(assert (=> d!59037 (= lt!118670 (ListLongMap!3538 lt!118669))))

(declare-fun lt!118668 () Unit!7231)

(declare-fun lt!118671 () Unit!7231)

(assert (=> d!59037 (= lt!118668 lt!118671)))

(assert (=> d!59037 (= (getValueByKey!264 lt!118669 (_1!2315 (tuple2!4611 lt!118617 (zeroValue!4198 thiss!1504)))) (Some!269 (_2!2315 (tuple2!4611 lt!118617 (zeroValue!4198 thiss!1504)))))))

(assert (=> d!59037 (= lt!118671 (lemmaContainsTupThenGetReturnValue!150 lt!118669 (_1!2315 (tuple2!4611 lt!118617 (zeroValue!4198 thiss!1504))) (_2!2315 (tuple2!4611 lt!118617 (zeroValue!4198 thiss!1504)))))))

(assert (=> d!59037 (= lt!118669 (insertStrictlySorted!152 (toList!1784 lt!118613) (_1!2315 (tuple2!4611 lt!118617 (zeroValue!4198 thiss!1504))) (_2!2315 (tuple2!4611 lt!118617 (zeroValue!4198 thiss!1504)))))))

(assert (=> d!59037 (= (+!629 lt!118613 (tuple2!4611 lt!118617 (zeroValue!4198 thiss!1504))) lt!118670)))

(declare-fun b!234454 () Bool)

(declare-fun res!115015 () Bool)

(assert (=> b!234454 (=> (not res!115015) (not e!152295))))

(assert (=> b!234454 (= res!115015 (= (getValueByKey!264 (toList!1784 lt!118670) (_1!2315 (tuple2!4611 lt!118617 (zeroValue!4198 thiss!1504)))) (Some!269 (_2!2315 (tuple2!4611 lt!118617 (zeroValue!4198 thiss!1504))))))))

(declare-fun b!234455 () Bool)

(assert (=> b!234455 (= e!152295 (contains!1652 (toList!1784 lt!118670) (tuple2!4611 lt!118617 (zeroValue!4198 thiss!1504))))))

(assert (= (and d!59037 res!115014) b!234454))

(assert (= (and b!234454 res!115015) b!234455))

(declare-fun m!255785 () Bool)

(assert (=> d!59037 m!255785))

(declare-fun m!255787 () Bool)

(assert (=> d!59037 m!255787))

(declare-fun m!255789 () Bool)

(assert (=> d!59037 m!255789))

(declare-fun m!255791 () Bool)

(assert (=> d!59037 m!255791))

(declare-fun m!255793 () Bool)

(assert (=> b!234454 m!255793))

(declare-fun m!255795 () Bool)

(assert (=> b!234455 m!255795))

(assert (=> b!234375 d!59037))

(declare-fun b!234480 () Bool)

(declare-fun e!152313 () Bool)

(declare-fun e!152310 () Bool)

(assert (=> b!234480 (= e!152313 e!152310)))

(declare-fun c!39039 () Bool)

(declare-fun e!152315 () Bool)

(assert (=> b!234480 (= c!39039 e!152315)))

(declare-fun res!115027 () Bool)

(assert (=> b!234480 (=> (not res!115027) (not e!152315))))

(assert (=> b!234480 (= res!115027 (bvslt #b00000000000000000000000000000000 (size!5847 (_keys!6421 thiss!1504))))))

(declare-fun b!234481 () Bool)

(declare-fun res!115025 () Bool)

(assert (=> b!234481 (=> (not res!115025) (not e!152313))))

(declare-fun lt!118689 () ListLongMap!3537)

(assert (=> b!234481 (= res!115025 (not (contains!1650 lt!118689 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!234482 () Bool)

(assert (=> b!234482 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5847 (_keys!6421 thiss!1504))))))

(assert (=> b!234482 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5846 (_values!4340 thiss!1504))))))

(declare-fun e!152314 () Bool)

(assert (=> b!234482 (= e!152314 (= (apply!207 lt!118689 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)) (get!2829 (select (arr!5511 (_values!4340 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!545 (defaultEntry!4357 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!234484 () Bool)

(declare-fun e!152316 () ListLongMap!3537)

(declare-fun e!152311 () ListLongMap!3537)

(assert (=> b!234484 (= e!152316 e!152311)))

(declare-fun c!39042 () Bool)

(assert (=> b!234484 (= c!39042 (validKeyInArray!0 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!234485 () Bool)

(declare-fun call!21811 () ListLongMap!3537)

(assert (=> b!234485 (= e!152311 call!21811)))

(declare-fun b!234486 () Bool)

(assert (=> b!234486 (= e!152310 e!152314)))

(assert (=> b!234486 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5847 (_keys!6421 thiss!1504))))))

(declare-fun res!115026 () Bool)

(assert (=> b!234486 (= res!115026 (contains!1650 lt!118689 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!234486 (=> (not res!115026) (not e!152314))))

(declare-fun bm!21808 () Bool)

(assert (=> bm!21808 (= call!21811 (getCurrentListMapNoExtraKeys!526 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4357 thiss!1504)))))

(declare-fun b!234487 () Bool)

(declare-fun e!152312 () Bool)

(assert (=> b!234487 (= e!152312 (= lt!118689 (getCurrentListMapNoExtraKeys!526 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4357 thiss!1504))))))

(declare-fun b!234488 () Bool)

(assert (=> b!234488 (= e!152315 (validKeyInArray!0 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!234488 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!234489 () Bool)

(declare-fun lt!118688 () Unit!7231)

(declare-fun lt!118687 () Unit!7231)

(assert (=> b!234489 (= lt!118688 lt!118687)))

(declare-fun lt!118686 () (_ BitVec 64))

(declare-fun lt!118691 () V!7875)

(declare-fun lt!118692 () (_ BitVec 64))

(declare-fun lt!118690 () ListLongMap!3537)

(assert (=> b!234489 (not (contains!1650 (+!629 lt!118690 (tuple2!4611 lt!118686 lt!118691)) lt!118692))))

(declare-fun addStillNotContains!115 (ListLongMap!3537 (_ BitVec 64) V!7875 (_ BitVec 64)) Unit!7231)

(assert (=> b!234489 (= lt!118687 (addStillNotContains!115 lt!118690 lt!118686 lt!118691 lt!118692))))

(assert (=> b!234489 (= lt!118692 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!234489 (= lt!118691 (get!2829 (select (arr!5511 (_values!4340 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!545 (defaultEntry!4357 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!234489 (= lt!118686 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!234489 (= lt!118690 call!21811)))

(assert (=> b!234489 (= e!152311 (+!629 call!21811 (tuple2!4611 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000) (get!2829 (select (arr!5511 (_values!4340 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!545 (defaultEntry!4357 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!59039 () Bool)

(assert (=> d!59039 e!152313))

(declare-fun res!115024 () Bool)

(assert (=> d!59039 (=> (not res!115024) (not e!152313))))

(assert (=> d!59039 (= res!115024 (not (contains!1650 lt!118689 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!59039 (= lt!118689 e!152316)))

(declare-fun c!39041 () Bool)

(assert (=> d!59039 (= c!39041 (bvsge #b00000000000000000000000000000000 (size!5847 (_keys!6421 thiss!1504))))))

(assert (=> d!59039 (validMask!0 (mask!10303 thiss!1504))))

(assert (=> d!59039 (= (getCurrentListMapNoExtraKeys!526 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504)) lt!118689)))

(declare-fun b!234483 () Bool)

(assert (=> b!234483 (= e!152316 (ListLongMap!3538 Nil!3541))))

(declare-fun b!234490 () Bool)

(assert (=> b!234490 (= e!152310 e!152312)))

(declare-fun c!39040 () Bool)

(assert (=> b!234490 (= c!39040 (bvslt #b00000000000000000000000000000000 (size!5847 (_keys!6421 thiss!1504))))))

(declare-fun b!234491 () Bool)

(declare-fun isEmpty!513 (ListLongMap!3537) Bool)

(assert (=> b!234491 (= e!152312 (isEmpty!513 lt!118689))))

(assert (= (and d!59039 c!39041) b!234483))

(assert (= (and d!59039 (not c!39041)) b!234484))

(assert (= (and b!234484 c!39042) b!234489))

(assert (= (and b!234484 (not c!39042)) b!234485))

(assert (= (or b!234489 b!234485) bm!21808))

(assert (= (and d!59039 res!115024) b!234481))

(assert (= (and b!234481 res!115025) b!234480))

(assert (= (and b!234480 res!115027) b!234488))

(assert (= (and b!234480 c!39039) b!234486))

(assert (= (and b!234480 (not c!39039)) b!234490))

(assert (= (and b!234486 res!115026) b!234482))

(assert (= (and b!234490 c!39040) b!234487))

(assert (= (and b!234490 (not c!39040)) b!234491))

(declare-fun b_lambda!7909 () Bool)

(assert (=> (not b_lambda!7909) (not b!234482)))

(assert (=> b!234482 t!8521))

(declare-fun b_and!13247 () Bool)

(assert (= b_and!13245 (and (=> t!8521 result!5111) b_and!13247)))

(declare-fun b_lambda!7911 () Bool)

(assert (=> (not b_lambda!7911) (not b!234489)))

(assert (=> b!234489 t!8521))

(declare-fun b_and!13249 () Bool)

(assert (= b_and!13247 (and (=> t!8521 result!5111) b_and!13249)))

(assert (=> b!234486 m!255649))

(assert (=> b!234486 m!255649))

(declare-fun m!255797 () Bool)

(assert (=> b!234486 m!255797))

(assert (=> b!234489 m!255669))

(declare-fun m!255799 () Bool)

(assert (=> b!234489 m!255799))

(assert (=> b!234489 m!255667))

(assert (=> b!234489 m!255669))

(assert (=> b!234489 m!255671))

(declare-fun m!255801 () Bool)

(assert (=> b!234489 m!255801))

(assert (=> b!234489 m!255649))

(declare-fun m!255803 () Bool)

(assert (=> b!234489 m!255803))

(assert (=> b!234489 m!255667))

(assert (=> b!234489 m!255801))

(declare-fun m!255805 () Bool)

(assert (=> b!234489 m!255805))

(declare-fun m!255807 () Bool)

(assert (=> b!234491 m!255807))

(assert (=> b!234488 m!255649))

(assert (=> b!234488 m!255649))

(assert (=> b!234488 m!255673))

(assert (=> b!234484 m!255649))

(assert (=> b!234484 m!255649))

(assert (=> b!234484 m!255673))

(declare-fun m!255809 () Bool)

(assert (=> b!234481 m!255809))

(declare-fun m!255811 () Bool)

(assert (=> b!234487 m!255811))

(declare-fun m!255813 () Bool)

(assert (=> d!59039 m!255813))

(assert (=> d!59039 m!255571))

(assert (=> bm!21808 m!255811))

(assert (=> b!234482 m!255667))

(assert (=> b!234482 m!255669))

(assert (=> b!234482 m!255671))

(assert (=> b!234482 m!255649))

(declare-fun m!255815 () Bool)

(assert (=> b!234482 m!255815))

(assert (=> b!234482 m!255669))

(assert (=> b!234482 m!255649))

(assert (=> b!234482 m!255667))

(assert (=> b!234375 d!59039))

(declare-fun d!59041 () Bool)

(assert (=> d!59041 (= (apply!207 (+!629 lt!118625 (tuple2!4611 lt!118623 (minValue!4198 thiss!1504))) lt!118621) (apply!207 lt!118625 lt!118621))))

(declare-fun lt!118693 () Unit!7231)

(assert (=> d!59041 (= lt!118693 (choose!1106 lt!118625 lt!118623 (minValue!4198 thiss!1504) lt!118621))))

(declare-fun e!152317 () Bool)

(assert (=> d!59041 e!152317))

(declare-fun res!115028 () Bool)

(assert (=> d!59041 (=> (not res!115028) (not e!152317))))

(assert (=> d!59041 (= res!115028 (contains!1650 lt!118625 lt!118621))))

(assert (=> d!59041 (= (addApplyDifferent!183 lt!118625 lt!118623 (minValue!4198 thiss!1504) lt!118621) lt!118693)))

(declare-fun b!234492 () Bool)

(assert (=> b!234492 (= e!152317 (not (= lt!118621 lt!118623)))))

(assert (= (and d!59041 res!115028) b!234492))

(declare-fun m!255817 () Bool)

(assert (=> d!59041 m!255817))

(declare-fun m!255819 () Bool)

(assert (=> d!59041 m!255819))

(assert (=> d!59041 m!255645))

(assert (=> d!59041 m!255647))

(assert (=> d!59041 m!255645))

(assert (=> d!59041 m!255655))

(assert (=> b!234375 d!59041))

(declare-fun d!59043 () Bool)

(assert (=> d!59043 (= (apply!207 (+!629 lt!118616 (tuple2!4611 lt!118611 (minValue!4198 thiss!1504))) lt!118622) (apply!207 lt!118616 lt!118622))))

(declare-fun lt!118694 () Unit!7231)

(assert (=> d!59043 (= lt!118694 (choose!1106 lt!118616 lt!118611 (minValue!4198 thiss!1504) lt!118622))))

(declare-fun e!152318 () Bool)

(assert (=> d!59043 e!152318))

(declare-fun res!115029 () Bool)

(assert (=> d!59043 (=> (not res!115029) (not e!152318))))

(assert (=> d!59043 (= res!115029 (contains!1650 lt!118616 lt!118622))))

(assert (=> d!59043 (= (addApplyDifferent!183 lt!118616 lt!118611 (minValue!4198 thiss!1504) lt!118622) lt!118694)))

(declare-fun b!234493 () Bool)

(assert (=> b!234493 (= e!152318 (not (= lt!118622 lt!118611)))))

(assert (= (and d!59043 res!115029) b!234493))

(declare-fun m!255821 () Bool)

(assert (=> d!59043 m!255821))

(declare-fun m!255823 () Bool)

(assert (=> d!59043 m!255823))

(assert (=> d!59043 m!255637))

(assert (=> d!59043 m!255639))

(assert (=> d!59043 m!255637))

(assert (=> d!59043 m!255631))

(assert (=> b!234375 d!59043))

(declare-fun b!234502 () Bool)

(declare-fun res!115041 () Bool)

(declare-fun e!152321 () Bool)

(assert (=> b!234502 (=> (not res!115041) (not e!152321))))

(assert (=> b!234502 (= res!115041 (and (= (size!5846 (_values!4340 thiss!1504)) (bvadd (mask!10303 thiss!1504) #b00000000000000000000000000000001)) (= (size!5847 (_keys!6421 thiss!1504)) (size!5846 (_values!4340 thiss!1504))) (bvsge (_size!1741 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1741 thiss!1504) (bvadd (mask!10303 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun b!234504 () Bool)

(declare-fun res!115039 () Bool)

(assert (=> b!234504 (=> (not res!115039) (not e!152321))))

(declare-fun size!5850 (LongMapFixedSize!3384) (_ BitVec 32))

(assert (=> b!234504 (= res!115039 (= (size!5850 thiss!1504) (bvadd (_size!1741 thiss!1504) (bvsdiv (bvadd (extraKeys!4094 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!234505 () Bool)

(assert (=> b!234505 (= e!152321 (and (bvsge (extraKeys!4094 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4094 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1741 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun d!59045 () Bool)

(declare-fun res!115040 () Bool)

(assert (=> d!59045 (=> (not res!115040) (not e!152321))))

(assert (=> d!59045 (= res!115040 (validMask!0 (mask!10303 thiss!1504)))))

(assert (=> d!59045 (= (simpleValid!229 thiss!1504) e!152321)))

(declare-fun b!234503 () Bool)

(declare-fun res!115038 () Bool)

(assert (=> b!234503 (=> (not res!115038) (not e!152321))))

(assert (=> b!234503 (= res!115038 (bvsge (size!5850 thiss!1504) (_size!1741 thiss!1504)))))

(assert (= (and d!59045 res!115040) b!234502))

(assert (= (and b!234502 res!115041) b!234503))

(assert (= (and b!234503 res!115038) b!234504))

(assert (= (and b!234504 res!115039) b!234505))

(declare-fun m!255825 () Bool)

(assert (=> b!234504 m!255825))

(assert (=> d!59045 m!255571))

(assert (=> b!234503 m!255825))

(assert (=> d!58993 d!59045))

(assert (=> d!58999 d!58995))

(declare-fun b!234514 () Bool)

(declare-fun e!152327 () (_ BitVec 32))

(declare-fun call!21814 () (_ BitVec 32))

(assert (=> b!234514 (= e!152327 call!21814)))

(declare-fun d!59047 () Bool)

(declare-fun lt!118697 () (_ BitVec 32))

(assert (=> d!59047 (and (bvsge lt!118697 #b00000000000000000000000000000000) (bvsle lt!118697 (bvsub (size!5847 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!152326 () (_ BitVec 32))

(assert (=> d!59047 (= lt!118697 e!152326)))

(declare-fun c!39047 () Bool)

(assert (=> d!59047 (= c!39047 (bvsge #b00000000000000000000000000000000 (size!5847 (_keys!6421 thiss!1504))))))

(assert (=> d!59047 (and (bvsle #b00000000000000000000000000000000 (size!5847 (_keys!6421 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!5847 (_keys!6421 thiss!1504)) (size!5847 (_keys!6421 thiss!1504))))))

(assert (=> d!59047 (= (arrayCountValidKeys!0 (_keys!6421 thiss!1504) #b00000000000000000000000000000000 (size!5847 (_keys!6421 thiss!1504))) lt!118697)))

(declare-fun b!234515 () Bool)

(assert (=> b!234515 (= e!152326 e!152327)))

(declare-fun c!39048 () Bool)

(assert (=> b!234515 (= c!39048 (validKeyInArray!0 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!234516 () Bool)

(assert (=> b!234516 (= e!152327 (bvadd #b00000000000000000000000000000001 call!21814))))

(declare-fun b!234517 () Bool)

(assert (=> b!234517 (= e!152326 #b00000000000000000000000000000000)))

(declare-fun bm!21811 () Bool)

(assert (=> bm!21811 (= call!21814 (arrayCountValidKeys!0 (_keys!6421 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!5847 (_keys!6421 thiss!1504))))))

(assert (= (and d!59047 c!39047) b!234517))

(assert (= (and d!59047 (not c!39047)) b!234515))

(assert (= (and b!234515 c!39048) b!234516))

(assert (= (and b!234515 (not c!39048)) b!234514))

(assert (= (or b!234516 b!234514) bm!21811))

(assert (=> b!234515 m!255649))

(assert (=> b!234515 m!255649))

(assert (=> b!234515 m!255673))

(declare-fun m!255827 () Bool)

(assert (=> bm!21811 m!255827))

(assert (=> b!234315 d!59047))

(declare-fun d!59049 () Bool)

(declare-fun e!152328 () Bool)

(assert (=> d!59049 e!152328))

(declare-fun res!115042 () Bool)

(assert (=> d!59049 (=> (not res!115042) (not e!152328))))

(declare-fun lt!118700 () ListLongMap!3537)

(assert (=> d!59049 (= res!115042 (contains!1650 lt!118700 (_1!2315 (ite (or c!39011 c!39014) (tuple2!4611 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4198 thiss!1504)) (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504))))))))

(declare-fun lt!118699 () List!3544)

(assert (=> d!59049 (= lt!118700 (ListLongMap!3538 lt!118699))))

(declare-fun lt!118698 () Unit!7231)

(declare-fun lt!118701 () Unit!7231)

(assert (=> d!59049 (= lt!118698 lt!118701)))

(assert (=> d!59049 (= (getValueByKey!264 lt!118699 (_1!2315 (ite (or c!39011 c!39014) (tuple2!4611 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4198 thiss!1504)) (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504))))) (Some!269 (_2!2315 (ite (or c!39011 c!39014) (tuple2!4611 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4198 thiss!1504)) (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504))))))))

(assert (=> d!59049 (= lt!118701 (lemmaContainsTupThenGetReturnValue!150 lt!118699 (_1!2315 (ite (or c!39011 c!39014) (tuple2!4611 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4198 thiss!1504)) (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504)))) (_2!2315 (ite (or c!39011 c!39014) (tuple2!4611 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4198 thiss!1504)) (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504))))))))

(assert (=> d!59049 (= lt!118699 (insertStrictlySorted!152 (toList!1784 (ite c!39011 call!21801 (ite c!39014 call!21804 call!21805))) (_1!2315 (ite (or c!39011 c!39014) (tuple2!4611 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4198 thiss!1504)) (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504)))) (_2!2315 (ite (or c!39011 c!39014) (tuple2!4611 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4198 thiss!1504)) (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504))))))))

(assert (=> d!59049 (= (+!629 (ite c!39011 call!21801 (ite c!39014 call!21804 call!21805)) (ite (or c!39011 c!39014) (tuple2!4611 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4198 thiss!1504)) (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504)))) lt!118700)))

(declare-fun b!234518 () Bool)

(declare-fun res!115043 () Bool)

(assert (=> b!234518 (=> (not res!115043) (not e!152328))))

(assert (=> b!234518 (= res!115043 (= (getValueByKey!264 (toList!1784 lt!118700) (_1!2315 (ite (or c!39011 c!39014) (tuple2!4611 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4198 thiss!1504)) (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504))))) (Some!269 (_2!2315 (ite (or c!39011 c!39014) (tuple2!4611 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4198 thiss!1504)) (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504)))))))))

(declare-fun b!234519 () Bool)

(assert (=> b!234519 (= e!152328 (contains!1652 (toList!1784 lt!118700) (ite (or c!39011 c!39014) (tuple2!4611 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4198 thiss!1504)) (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504)))))))

(assert (= (and d!59049 res!115042) b!234518))

(assert (= (and b!234518 res!115043) b!234519))

(declare-fun m!255829 () Bool)

(assert (=> d!59049 m!255829))

(declare-fun m!255831 () Bool)

(assert (=> d!59049 m!255831))

(declare-fun m!255833 () Bool)

(assert (=> d!59049 m!255833))

(declare-fun m!255835 () Bool)

(assert (=> d!59049 m!255835))

(declare-fun m!255837 () Bool)

(assert (=> b!234518 m!255837))

(declare-fun m!255839 () Bool)

(assert (=> b!234519 m!255839))

(assert (=> bm!21798 d!59049))

(declare-fun b!234528 () Bool)

(declare-fun e!152336 () Bool)

(declare-fun call!21817 () Bool)

(assert (=> b!234528 (= e!152336 call!21817)))

(declare-fun b!234529 () Bool)

(declare-fun e!152337 () Bool)

(assert (=> b!234529 (= e!152336 e!152337)))

(declare-fun lt!118708 () (_ BitVec 64))

(assert (=> b!234529 (= lt!118708 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118710 () Unit!7231)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11594 (_ BitVec 64) (_ BitVec 32)) Unit!7231)

(assert (=> b!234529 (= lt!118710 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6421 thiss!1504) lt!118708 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!11594 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!234529 (arrayContainsKey!0 (_keys!6421 thiss!1504) lt!118708 #b00000000000000000000000000000000)))

(declare-fun lt!118709 () Unit!7231)

(assert (=> b!234529 (= lt!118709 lt!118710)))

(declare-fun res!115048 () Bool)

(assert (=> b!234529 (= res!115048 (= (seekEntryOrOpen!0 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000) (_keys!6421 thiss!1504) (mask!10303 thiss!1504)) (Found!990 #b00000000000000000000000000000000)))))

(assert (=> b!234529 (=> (not res!115048) (not e!152337))))

(declare-fun b!234530 () Bool)

(assert (=> b!234530 (= e!152337 call!21817)))

(declare-fun d!59051 () Bool)

(declare-fun res!115049 () Bool)

(declare-fun e!152335 () Bool)

(assert (=> d!59051 (=> res!115049 e!152335)))

(assert (=> d!59051 (= res!115049 (bvsge #b00000000000000000000000000000000 (size!5847 (_keys!6421 thiss!1504))))))

(assert (=> d!59051 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6421 thiss!1504) (mask!10303 thiss!1504)) e!152335)))

(declare-fun b!234531 () Bool)

(assert (=> b!234531 (= e!152335 e!152336)))

(declare-fun c!39051 () Bool)

(assert (=> b!234531 (= c!39051 (validKeyInArray!0 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!21814 () Bool)

(assert (=> bm!21814 (= call!21817 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6421 thiss!1504) (mask!10303 thiss!1504)))))

(assert (= (and d!59051 (not res!115049)) b!234531))

(assert (= (and b!234531 c!39051) b!234529))

(assert (= (and b!234531 (not c!39051)) b!234528))

(assert (= (and b!234529 res!115048) b!234530))

(assert (= (or b!234530 b!234528) bm!21814))

(assert (=> b!234529 m!255649))

(declare-fun m!255841 () Bool)

(assert (=> b!234529 m!255841))

(declare-fun m!255843 () Bool)

(assert (=> b!234529 m!255843))

(assert (=> b!234529 m!255649))

(declare-fun m!255845 () Bool)

(assert (=> b!234529 m!255845))

(assert (=> b!234531 m!255649))

(assert (=> b!234531 m!255649))

(assert (=> b!234531 m!255673))

(declare-fun m!255847 () Bool)

(assert (=> bm!21814 m!255847))

(assert (=> b!234316 d!59051))

(declare-fun d!59053 () Bool)

(declare-fun isEmpty!514 (Option!270) Bool)

(assert (=> d!59053 (= (isDefined!206 (getValueByKey!264 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504))) key!932)) (not (isEmpty!514 (getValueByKey!264 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504))) key!932))))))

(declare-fun bs!8689 () Bool)

(assert (= bs!8689 d!59053))

(assert (=> bs!8689 m!255625))

(declare-fun m!255849 () Bool)

(assert (=> bs!8689 m!255849))

(assert (=> b!234326 d!59053))

(declare-fun b!234543 () Bool)

(declare-fun e!152343 () Option!270)

(assert (=> b!234543 (= e!152343 None!268)))

(declare-fun b!234542 () Bool)

(assert (=> b!234542 (= e!152343 (getValueByKey!264 (t!8519 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504)))) key!932))))

(declare-fun b!234541 () Bool)

(declare-fun e!152342 () Option!270)

(assert (=> b!234541 (= e!152342 e!152343)))

(declare-fun c!39057 () Bool)

(assert (=> b!234541 (= c!39057 (and ((_ is Cons!3540) (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504)))) (not (= (_1!2315 (h!4190 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504))))) key!932))))))

(declare-fun b!234540 () Bool)

(assert (=> b!234540 (= e!152342 (Some!269 (_2!2315 (h!4190 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504)))))))))

(declare-fun d!59055 () Bool)

(declare-fun c!39056 () Bool)

(assert (=> d!59055 (= c!39056 (and ((_ is Cons!3540) (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504)))) (= (_1!2315 (h!4190 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504))))) key!932)))))

(assert (=> d!59055 (= (getValueByKey!264 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504))) key!932) e!152342)))

(assert (= (and d!59055 c!39056) b!234540))

(assert (= (and d!59055 (not c!39056)) b!234541))

(assert (= (and b!234541 c!39057) b!234542))

(assert (= (and b!234541 (not c!39057)) b!234543))

(declare-fun m!255851 () Bool)

(assert (=> b!234542 m!255851))

(assert (=> b!234326 d!59055))

(assert (=> bm!21797 d!59039))

(declare-fun d!59057 () Bool)

(assert (=> d!59057 (= (apply!207 lt!118612 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2830 (getValueByKey!264 (toList!1784 lt!118612) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8690 () Bool)

(assert (= bs!8690 d!59057))

(declare-fun m!255853 () Bool)

(assert (=> bs!8690 m!255853))

(assert (=> bs!8690 m!255853))

(declare-fun m!255855 () Bool)

(assert (=> bs!8690 m!255855))

(assert (=> b!234372 d!59057))

(declare-fun d!59059 () Bool)

(assert (=> d!59059 (= (apply!207 lt!118612 (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000)) (get!2830 (getValueByKey!264 (toList!1784 lt!118612) (select (arr!5512 (_keys!6421 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!8691 () Bool)

(assert (= bs!8691 d!59059))

(assert (=> bs!8691 m!255649))

(assert (=> bs!8691 m!255705))

(assert (=> bs!8691 m!255705))

(declare-fun m!255857 () Bool)

(assert (=> bs!8691 m!255857))

(assert (=> b!234373 d!59059))

(declare-fun d!59061 () Bool)

(declare-fun c!39060 () Bool)

(assert (=> d!59061 (= c!39060 ((_ is ValueCellFull!2742) (select (arr!5511 (_values!4340 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!152346 () V!7875)

(assert (=> d!59061 (= (get!2829 (select (arr!5511 (_values!4340 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!545 (defaultEntry!4357 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!152346)))

(declare-fun b!234548 () Bool)

(declare-fun get!2831 (ValueCell!2742 V!7875) V!7875)

(assert (=> b!234548 (= e!152346 (get!2831 (select (arr!5511 (_values!4340 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!545 (defaultEntry!4357 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!234549 () Bool)

(declare-fun get!2832 (ValueCell!2742 V!7875) V!7875)

(assert (=> b!234549 (= e!152346 (get!2832 (select (arr!5511 (_values!4340 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!545 (defaultEntry!4357 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59061 c!39060) b!234548))

(assert (= (and d!59061 (not c!39060)) b!234549))

(assert (=> b!234548 m!255667))

(assert (=> b!234548 m!255669))

(declare-fun m!255859 () Bool)

(assert (=> b!234548 m!255859))

(assert (=> b!234549 m!255667))

(assert (=> b!234549 m!255669))

(declare-fun m!255861 () Bool)

(assert (=> b!234549 m!255861))

(assert (=> b!234373 d!59061))

(declare-fun d!59063 () Bool)

(declare-fun e!152347 () Bool)

(assert (=> d!59063 e!152347))

(declare-fun res!115050 () Bool)

(assert (=> d!59063 (=> (not res!115050) (not e!152347))))

(declare-fun lt!118713 () ListLongMap!3537)

(assert (=> d!59063 (= res!115050 (contains!1650 lt!118713 (_1!2315 (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504)))))))

(declare-fun lt!118712 () List!3544)

(assert (=> d!59063 (= lt!118713 (ListLongMap!3538 lt!118712))))

(declare-fun lt!118711 () Unit!7231)

(declare-fun lt!118714 () Unit!7231)

(assert (=> d!59063 (= lt!118711 lt!118714)))

(assert (=> d!59063 (= (getValueByKey!264 lt!118712 (_1!2315 (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504)))) (Some!269 (_2!2315 (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504)))))))

(assert (=> d!59063 (= lt!118714 (lemmaContainsTupThenGetReturnValue!150 lt!118712 (_1!2315 (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504))) (_2!2315 (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504)))))))

(assert (=> d!59063 (= lt!118712 (insertStrictlySorted!152 (toList!1784 call!21800) (_1!2315 (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504))) (_2!2315 (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504)))))))

(assert (=> d!59063 (= (+!629 call!21800 (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504))) lt!118713)))

(declare-fun b!234550 () Bool)

(declare-fun res!115051 () Bool)

(assert (=> b!234550 (=> (not res!115051) (not e!152347))))

(assert (=> b!234550 (= res!115051 (= (getValueByKey!264 (toList!1784 lt!118713) (_1!2315 (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504)))) (Some!269 (_2!2315 (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504))))))))

(declare-fun b!234551 () Bool)

(assert (=> b!234551 (= e!152347 (contains!1652 (toList!1784 lt!118713) (tuple2!4611 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4198 thiss!1504))))))

(assert (= (and d!59063 res!115050) b!234550))

(assert (= (and b!234550 res!115051) b!234551))

(declare-fun m!255863 () Bool)

(assert (=> d!59063 m!255863))

(declare-fun m!255865 () Bool)

(assert (=> d!59063 m!255865))

(declare-fun m!255867 () Bool)

(assert (=> d!59063 m!255867))

(declare-fun m!255869 () Bool)

(assert (=> d!59063 m!255869))

(declare-fun m!255871 () Bool)

(assert (=> b!234550 m!255871))

(declare-fun m!255873 () Bool)

(assert (=> b!234551 m!255873))

(assert (=> b!234389 d!59063))

(declare-fun d!59065 () Bool)

(assert (=> d!59065 (isDefined!206 (getValueByKey!264 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504))) key!932))))

(declare-fun lt!118717 () Unit!7231)

(declare-fun choose!1108 (List!3544 (_ BitVec 64)) Unit!7231)

(assert (=> d!59065 (= lt!118717 (choose!1108 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504))) key!932))))

(declare-fun e!152350 () Bool)

(assert (=> d!59065 e!152350))

(declare-fun res!115054 () Bool)

(assert (=> d!59065 (=> (not res!115054) (not e!152350))))

(declare-fun isStrictlySorted!356 (List!3544) Bool)

(assert (=> d!59065 (= res!115054 (isStrictlySorted!356 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504)))))))

(assert (=> d!59065 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!205 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504))) key!932) lt!118717)))

(declare-fun b!234554 () Bool)

(assert (=> b!234554 (= e!152350 (containsKey!256 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504))) key!932))))

(assert (= (and d!59065 res!115054) b!234554))

(assert (=> d!59065 m!255625))

(assert (=> d!59065 m!255625))

(assert (=> d!59065 m!255627))

(declare-fun m!255875 () Bool)

(assert (=> d!59065 m!255875))

(declare-fun m!255877 () Bool)

(assert (=> d!59065 m!255877))

(assert (=> b!234554 m!255621))

(assert (=> b!234324 d!59065))

(assert (=> b!234324 d!59053))

(assert (=> b!234324 d!59055))

(declare-fun d!59067 () Bool)

(assert (=> d!59067 (= (apply!207 lt!118612 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2830 (getValueByKey!264 (toList!1784 lt!118612) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8692 () Bool)

(assert (= bs!8692 d!59067))

(declare-fun m!255879 () Bool)

(assert (=> bs!8692 m!255879))

(assert (=> bs!8692 m!255879))

(declare-fun m!255881 () Bool)

(assert (=> bs!8692 m!255881))

(assert (=> b!234381 d!59067))

(declare-fun b!234574 () Bool)

(declare-fun lt!118722 () SeekEntryResult!990)

(assert (=> b!234574 (and (bvsge (index!6132 lt!118722) #b00000000000000000000000000000000) (bvslt (index!6132 lt!118722) (size!5847 (_keys!6421 thiss!1504))))))

(declare-fun res!115063 () Bool)

(assert (=> b!234574 (= res!115063 (= (select (arr!5512 (_keys!6421 thiss!1504)) (index!6132 lt!118722)) key!932))))

(declare-fun e!152364 () Bool)

(assert (=> b!234574 (=> res!115063 e!152364)))

(declare-fun e!152361 () Bool)

(assert (=> b!234574 (= e!152361 e!152364)))

(declare-fun b!234575 () Bool)

(declare-fun e!152363 () SeekEntryResult!990)

(assert (=> b!234575 (= e!152363 (Intermediate!990 false (toIndex!0 key!932 (mask!10303 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!234576 () Bool)

(declare-fun e!152362 () SeekEntryResult!990)

(assert (=> b!234576 (= e!152362 (Intermediate!990 true (toIndex!0 key!932 (mask!10303 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!234577 () Bool)

(declare-fun e!152365 () Bool)

(assert (=> b!234577 (= e!152365 e!152361)))

(declare-fun res!115061 () Bool)

(assert (=> b!234577 (= res!115061 (and ((_ is Intermediate!990) lt!118722) (not (undefined!1802 lt!118722)) (bvslt (x!23706 lt!118722) #b01111111111111111111111111111110) (bvsge (x!23706 lt!118722) #b00000000000000000000000000000000) (bvsge (x!23706 lt!118722) #b00000000000000000000000000000000)))))

(assert (=> b!234577 (=> (not res!115061) (not e!152361))))

(declare-fun d!59069 () Bool)

(assert (=> d!59069 e!152365))

(declare-fun c!39067 () Bool)

(assert (=> d!59069 (= c!39067 (and ((_ is Intermediate!990) lt!118722) (undefined!1802 lt!118722)))))

(assert (=> d!59069 (= lt!118722 e!152362)))

(declare-fun c!39068 () Bool)

(assert (=> d!59069 (= c!39068 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!118723 () (_ BitVec 64))

(assert (=> d!59069 (= lt!118723 (select (arr!5512 (_keys!6421 thiss!1504)) (toIndex!0 key!932 (mask!10303 thiss!1504))))))

(assert (=> d!59069 (validMask!0 (mask!10303 thiss!1504))))

(assert (=> d!59069 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10303 thiss!1504)) key!932 (_keys!6421 thiss!1504) (mask!10303 thiss!1504)) lt!118722)))

(declare-fun b!234573 () Bool)

(assert (=> b!234573 (and (bvsge (index!6132 lt!118722) #b00000000000000000000000000000000) (bvslt (index!6132 lt!118722) (size!5847 (_keys!6421 thiss!1504))))))

(assert (=> b!234573 (= e!152364 (= (select (arr!5512 (_keys!6421 thiss!1504)) (index!6132 lt!118722)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!234578 () Bool)

(assert (=> b!234578 (and (bvsge (index!6132 lt!118722) #b00000000000000000000000000000000) (bvslt (index!6132 lt!118722) (size!5847 (_keys!6421 thiss!1504))))))

(declare-fun res!115062 () Bool)

(assert (=> b!234578 (= res!115062 (= (select (arr!5512 (_keys!6421 thiss!1504)) (index!6132 lt!118722)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!234578 (=> res!115062 e!152364)))

(declare-fun b!234579 () Bool)

(assert (=> b!234579 (= e!152362 e!152363)))

(declare-fun c!39069 () Bool)

(assert (=> b!234579 (= c!39069 (or (= lt!118723 key!932) (= (bvadd lt!118723 lt!118723) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!234580 () Bool)

(assert (=> b!234580 (= e!152363 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!10303 thiss!1504)) #b00000000000000000000000000000000 (mask!10303 thiss!1504)) key!932 (_keys!6421 thiss!1504) (mask!10303 thiss!1504)))))

(declare-fun b!234581 () Bool)

(assert (=> b!234581 (= e!152365 (bvsge (x!23706 lt!118722) #b01111111111111111111111111111110))))

(assert (= (and d!59069 c!39068) b!234576))

(assert (= (and d!59069 (not c!39068)) b!234579))

(assert (= (and b!234579 c!39069) b!234575))

(assert (= (and b!234579 (not c!39069)) b!234580))

(assert (= (and d!59069 c!39067) b!234581))

(assert (= (and d!59069 (not c!39067)) b!234577))

(assert (= (and b!234577 res!115061) b!234574))

(assert (= (and b!234574 (not res!115063)) b!234578))

(assert (= (and b!234578 (not res!115062)) b!234573))

(assert (=> d!59069 m!255607))

(declare-fun m!255883 () Bool)

(assert (=> d!59069 m!255883))

(assert (=> d!59069 m!255571))

(declare-fun m!255885 () Bool)

(assert (=> b!234578 m!255885))

(assert (=> b!234580 m!255607))

(declare-fun m!255887 () Bool)

(assert (=> b!234580 m!255887))

(assert (=> b!234580 m!255887))

(declare-fun m!255889 () Bool)

(assert (=> b!234580 m!255889))

(assert (=> b!234574 m!255885))

(assert (=> b!234573 m!255885))

(assert (=> d!58991 d!59069))

(declare-fun d!59071 () Bool)

(declare-fun lt!118729 () (_ BitVec 32))

(declare-fun lt!118728 () (_ BitVec 32))

(assert (=> d!59071 (= lt!118729 (bvmul (bvxor lt!118728 (bvlshr lt!118728 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!59071 (= lt!118728 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!59071 (and (bvsge (mask!10303 thiss!1504) #b00000000000000000000000000000000) (let ((res!115064 (let ((h!4192 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!23724 (bvmul (bvxor h!4192 (bvlshr h!4192 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!23724 (bvlshr x!23724 #b00000000000000000000000000001101)) (mask!10303 thiss!1504)))))) (and (bvslt res!115064 (bvadd (mask!10303 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!115064 #b00000000000000000000000000000000))))))

(assert (=> d!59071 (= (toIndex!0 key!932 (mask!10303 thiss!1504)) (bvand (bvxor lt!118729 (bvlshr lt!118729 #b00000000000000000000000000001101)) (mask!10303 thiss!1504)))))

(assert (=> d!58991 d!59071))

(assert (=> d!58991 d!58995))

(declare-fun d!59073 () Bool)

(declare-fun e!152367 () Bool)

(assert (=> d!59073 e!152367))

(declare-fun res!115065 () Bool)

(assert (=> d!59073 (=> res!115065 e!152367)))

(declare-fun lt!118732 () Bool)

(assert (=> d!59073 (= res!115065 (not lt!118732))))

(declare-fun lt!118731 () Bool)

(assert (=> d!59073 (= lt!118732 lt!118731)))

(declare-fun lt!118733 () Unit!7231)

(declare-fun e!152366 () Unit!7231)

(assert (=> d!59073 (= lt!118733 e!152366)))

(declare-fun c!39070 () Bool)

(assert (=> d!59073 (= c!39070 lt!118731)))

(assert (=> d!59073 (= lt!118731 (containsKey!256 (toList!1784 lt!118612) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!59073 (= (contains!1650 lt!118612 #b0000000000000000000000000000000000000000000000000000000000000000) lt!118732)))

(declare-fun b!234582 () Bool)

(declare-fun lt!118730 () Unit!7231)

(assert (=> b!234582 (= e!152366 lt!118730)))

(assert (=> b!234582 (= lt!118730 (lemmaContainsKeyImpliesGetValueByKeyDefined!205 (toList!1784 lt!118612) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!234582 (isDefined!206 (getValueByKey!264 (toList!1784 lt!118612) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!234583 () Bool)

(declare-fun Unit!7237 () Unit!7231)

(assert (=> b!234583 (= e!152366 Unit!7237)))

(declare-fun b!234584 () Bool)

(assert (=> b!234584 (= e!152367 (isDefined!206 (getValueByKey!264 (toList!1784 lt!118612) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59073 c!39070) b!234582))

(assert (= (and d!59073 (not c!39070)) b!234583))

(assert (= (and d!59073 (not res!115065)) b!234584))

(declare-fun m!255891 () Bool)

(assert (=> d!59073 m!255891))

(declare-fun m!255893 () Bool)

(assert (=> b!234582 m!255893))

(assert (=> b!234582 m!255853))

(assert (=> b!234582 m!255853))

(declare-fun m!255895 () Bool)

(assert (=> b!234582 m!255895))

(assert (=> b!234584 m!255853))

(assert (=> b!234584 m!255853))

(assert (=> b!234584 m!255895))

(assert (=> bm!21796 d!59073))

(declare-fun d!59075 () Bool)

(declare-fun res!115070 () Bool)

(declare-fun e!152372 () Bool)

(assert (=> d!59075 (=> res!115070 e!152372)))

(assert (=> d!59075 (= res!115070 (and ((_ is Cons!3540) (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504)))) (= (_1!2315 (h!4190 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504))))) key!932)))))

(assert (=> d!59075 (= (containsKey!256 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504))) key!932) e!152372)))

(declare-fun b!234589 () Bool)

(declare-fun e!152373 () Bool)

(assert (=> b!234589 (= e!152372 e!152373)))

(declare-fun res!115071 () Bool)

(assert (=> b!234589 (=> (not res!115071) (not e!152373))))

(assert (=> b!234589 (= res!115071 (and (or (not ((_ is Cons!3540) (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504))))) (bvsle (_1!2315 (h!4190 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504))))) key!932)) ((_ is Cons!3540) (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504)))) (bvslt (_1!2315 (h!4190 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504))))) key!932)))))

(declare-fun b!234590 () Bool)

(assert (=> b!234590 (= e!152373 (containsKey!256 (t!8519 (toList!1784 (getCurrentListMap!1307 (_keys!6421 thiss!1504) (_values!4340 thiss!1504) (mask!10303 thiss!1504) (extraKeys!4094 thiss!1504) (zeroValue!4198 thiss!1504) (minValue!4198 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4357 thiss!1504)))) key!932))))

(assert (= (and d!59075 (not res!115070)) b!234589))

(assert (= (and b!234589 res!115071) b!234590))

(declare-fun m!255897 () Bool)

(assert (=> b!234590 m!255897))

(assert (=> d!58997 d!59075))

(declare-fun d!59077 () Bool)

(declare-fun e!152375 () Bool)

(assert (=> d!59077 e!152375))

(declare-fun res!115072 () Bool)

(assert (=> d!59077 (=> res!115072 e!152375)))

(declare-fun lt!118736 () Bool)

(assert (=> d!59077 (= res!115072 (not lt!118736))))

(declare-fun lt!118735 () Bool)

(assert (=> d!59077 (= lt!118736 lt!118735)))

(declare-fun lt!118737 () Unit!7231)

(declare-fun e!152374 () Unit!7231)

(assert (=> d!59077 (= lt!118737 e!152374)))

(declare-fun c!39071 () Bool)

(assert (=> d!59077 (= c!39071 lt!118735)))

(assert (=> d!59077 (= lt!118735 (containsKey!256 (toList!1784 lt!118612) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!59077 (= (contains!1650 lt!118612 #b1000000000000000000000000000000000000000000000000000000000000000) lt!118736)))

(declare-fun b!234591 () Bool)

(declare-fun lt!118734 () Unit!7231)

(assert (=> b!234591 (= e!152374 lt!118734)))

(assert (=> b!234591 (= lt!118734 (lemmaContainsKeyImpliesGetValueByKeyDefined!205 (toList!1784 lt!118612) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!234591 (isDefined!206 (getValueByKey!264 (toList!1784 lt!118612) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!234592 () Bool)

(declare-fun Unit!7238 () Unit!7231)

(assert (=> b!234592 (= e!152374 Unit!7238)))

(declare-fun b!234593 () Bool)

(assert (=> b!234593 (= e!152375 (isDefined!206 (getValueByKey!264 (toList!1784 lt!118612) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59077 c!39071) b!234591))

(assert (= (and d!59077 (not c!39071)) b!234592))

(assert (= (and d!59077 (not res!115072)) b!234593))

(declare-fun m!255899 () Bool)

(assert (=> d!59077 m!255899))

(declare-fun m!255901 () Bool)

(assert (=> b!234591 m!255901))

(assert (=> b!234591 m!255879))

(assert (=> b!234591 m!255879))

(declare-fun m!255903 () Bool)

(assert (=> b!234591 m!255903))

(assert (=> b!234593 m!255879))

(assert (=> b!234593 m!255879))

(assert (=> b!234593 m!255903))

(assert (=> bm!21800 d!59077))

(assert (=> b!234382 d!59009))

(declare-fun b!234594 () Bool)

(declare-fun e!152376 () Bool)

(assert (=> b!234594 (= e!152376 tp_is_empty!6171)))

(declare-fun mapNonEmpty!10447 () Bool)

(declare-fun mapRes!10447 () Bool)

(declare-fun tp!22093 () Bool)

(assert (=> mapNonEmpty!10447 (= mapRes!10447 (and tp!22093 e!152376))))

(declare-fun mapRest!10447 () (Array (_ BitVec 32) ValueCell!2742))

(declare-fun mapValue!10447 () ValueCell!2742)

(declare-fun mapKey!10447 () (_ BitVec 32))

(assert (=> mapNonEmpty!10447 (= mapRest!10446 (store mapRest!10447 mapKey!10447 mapValue!10447))))

(declare-fun condMapEmpty!10447 () Bool)

(declare-fun mapDefault!10447 () ValueCell!2742)

(assert (=> mapNonEmpty!10446 (= condMapEmpty!10447 (= mapRest!10446 ((as const (Array (_ BitVec 32) ValueCell!2742)) mapDefault!10447)))))

(declare-fun e!152377 () Bool)

(assert (=> mapNonEmpty!10446 (= tp!22092 (and e!152377 mapRes!10447))))

(declare-fun b!234595 () Bool)

(assert (=> b!234595 (= e!152377 tp_is_empty!6171)))

(declare-fun mapIsEmpty!10447 () Bool)

(assert (=> mapIsEmpty!10447 mapRes!10447))

(assert (= (and mapNonEmpty!10446 condMapEmpty!10447) mapIsEmpty!10447))

(assert (= (and mapNonEmpty!10446 (not condMapEmpty!10447)) mapNonEmpty!10447))

(assert (= (and mapNonEmpty!10447 ((_ is ValueCellFull!2742) mapValue!10447)) b!234594))

(assert (= (and mapNonEmpty!10446 ((_ is ValueCellFull!2742) mapDefault!10447)) b!234595))

(declare-fun m!255905 () Bool)

(assert (=> mapNonEmpty!10447 m!255905))

(declare-fun b_lambda!7913 () Bool)

(assert (= b_lambda!7909 (or (and b!234262 b_free!6309) b_lambda!7913)))

(declare-fun b_lambda!7915 () Bool)

(assert (= b_lambda!7911 (or (and b!234262 b_free!6309) b_lambda!7915)))

(check-sat (not d!59069) (not b!234503) (not d!59029) (not b!234584) (not d!59007) (not b!234549) (not b!234446) (not d!59031) (not d!59021) (not b!234435) (not d!59011) (not d!59059) (not b!234482) (not b!234440) (not b!234411) (not b!234593) (not d!59065) (not bm!21814) (not d!59067) (not d!59053) (not b_lambda!7913) (not d!59013) (not b!234548) (not b_lambda!7907) (not d!59027) (not b!234450) (not b!234413) (not b!234531) (not b!234484) (not b!234486) (not b!234504) (not b!234487) (not d!59073) (not b!234429) (not d!59017) (not d!59057) (not b!234454) (not b!234491) (not b!234519) (not d!59025) (not b!234453) (not b!234529) (not b!234550) (not d!59049) (not d!59019) (not b!234452) (not b!234554) (not d!59045) (not b!234542) (not bm!21811) (not d!59035) (not bm!21808) (not b!234551) b_and!13249 (not b!234447) (not d!59063) (not d!59077) (not b!234448) (not bm!21805) (not b!234410) (not b!234518) (not d!59023) (not b!234433) (not b!234591) tp_is_empty!6171 (not b!234489) (not d!59041) (not d!59033) (not b!234455) (not d!59043) (not b_next!6309) (not b!234580) (not b!234488) (not d!59015) (not b!234481) (not b!234441) (not d!59037) (not b!234582) (not mapNonEmpty!10447) (not b!234515) (not b!234590) (not b_lambda!7915) (not d!59039))
(check-sat b_and!13249 (not b_next!6309))
