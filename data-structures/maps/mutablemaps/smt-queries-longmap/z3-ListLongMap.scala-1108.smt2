; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22888 () Bool)

(assert start!22888)

(declare-fun b!238282 () Bool)

(declare-fun b_free!6399 () Bool)

(declare-fun b_next!6399 () Bool)

(assert (=> b!238282 (= b_free!6399 (not b_next!6399))))

(declare-fun tp!22398 () Bool)

(declare-fun b_and!13381 () Bool)

(assert (=> b!238282 (= tp!22398 b_and!13381)))

(declare-fun e!154725 () Bool)

(declare-fun tp_is_empty!6261 () Bool)

(declare-datatypes ((V!7995 0))(
  ( (V!7996 (val!3175 Int)) )
))
(declare-datatypes ((ValueCell!2787 0))(
  ( (ValueCellFull!2787 (v!5208 V!7995)) (EmptyCell!2787) )
))
(declare-datatypes ((array!11798 0))(
  ( (array!11799 (arr!5601 (Array (_ BitVec 32) ValueCell!2787)) (size!5942 (_ BitVec 32))) )
))
(declare-datatypes ((array!11800 0))(
  ( (array!11801 (arr!5602 (Array (_ BitVec 32) (_ BitVec 64))) (size!5943 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3474 0))(
  ( (LongMapFixedSize!3475 (defaultEntry!4421 Int) (mask!10452 (_ BitVec 32)) (extraKeys!4158 (_ BitVec 32)) (zeroValue!4262 V!7995) (minValue!4262 V!7995) (_size!1786 (_ BitVec 32)) (_keys!6521 array!11800) (_values!4404 array!11798) (_vacant!1786 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3474)

(declare-fun e!154721 () Bool)

(declare-fun array_inv!3693 (array!11800) Bool)

(declare-fun array_inv!3694 (array!11798) Bool)

(assert (=> b!238282 (= e!154725 (and tp!22398 tp_is_empty!6261 (array_inv!3693 (_keys!6521 thiss!1504)) (array_inv!3694 (_values!4404 thiss!1504)) e!154721))))

(declare-fun b!238283 () Bool)

(declare-fun e!154722 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!238283 (= e!154722 (not (validKeyInArray!0 key!932)))))

(declare-fun b!238284 () Bool)

(declare-fun e!154727 () Bool)

(declare-fun mapRes!10620 () Bool)

(assert (=> b!238284 (= e!154721 (and e!154727 mapRes!10620))))

(declare-fun condMapEmpty!10620 () Bool)

(declare-fun mapDefault!10620 () ValueCell!2787)

(assert (=> b!238284 (= condMapEmpty!10620 (= (arr!5601 (_values!4404 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2787)) mapDefault!10620)))))

(declare-fun b!238285 () Bool)

(assert (=> b!238285 (= e!154727 tp_is_empty!6261)))

(declare-fun b!238286 () Bool)

(declare-fun res!116786 () Bool)

(assert (=> b!238286 (=> (not res!116786) (not e!154722))))

(declare-datatypes ((List!3598 0))(
  ( (Nil!3595) (Cons!3594 (h!4250 (_ BitVec 64)) (t!8599 List!3598)) )
))
(declare-fun arrayNoDuplicates!0 (array!11800 (_ BitVec 32) List!3598) Bool)

(assert (=> b!238286 (= res!116786 (arrayNoDuplicates!0 (_keys!6521 thiss!1504) #b00000000000000000000000000000000 Nil!3595))))

(declare-fun mapNonEmpty!10620 () Bool)

(declare-fun tp!22397 () Bool)

(declare-fun e!154723 () Bool)

(assert (=> mapNonEmpty!10620 (= mapRes!10620 (and tp!22397 e!154723))))

(declare-fun mapValue!10620 () ValueCell!2787)

(declare-fun mapKey!10620 () (_ BitVec 32))

(declare-fun mapRest!10620 () (Array (_ BitVec 32) ValueCell!2787))

(assert (=> mapNonEmpty!10620 (= (arr!5601 (_values!4404 thiss!1504)) (store mapRest!10620 mapKey!10620 mapValue!10620))))

(declare-fun b!238287 () Bool)

(declare-fun res!116788 () Bool)

(assert (=> b!238287 (=> (not res!116788) (not e!154722))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!238287 (= res!116788 (validMask!0 (mask!10452 thiss!1504)))))

(declare-fun res!116785 () Bool)

(declare-fun e!154726 () Bool)

(assert (=> start!22888 (=> (not res!116785) (not e!154726))))

(declare-fun valid!1364 (LongMapFixedSize!3474) Bool)

(assert (=> start!22888 (= res!116785 (valid!1364 thiss!1504))))

(assert (=> start!22888 e!154726))

(assert (=> start!22888 e!154725))

(assert (=> start!22888 true))

(declare-fun b!238288 () Bool)

(declare-fun res!116787 () Bool)

(assert (=> b!238288 (=> (not res!116787) (not e!154722))))

(declare-datatypes ((tuple2!4676 0))(
  ( (tuple2!4677 (_1!2348 (_ BitVec 64)) (_2!2348 V!7995)) )
))
(declare-datatypes ((List!3599 0))(
  ( (Nil!3596) (Cons!3595 (h!4251 tuple2!4676) (t!8600 List!3599)) )
))
(declare-datatypes ((ListLongMap!3603 0))(
  ( (ListLongMap!3604 (toList!1817 List!3599)) )
))
(declare-fun contains!1698 (ListLongMap!3603 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1340 (array!11800 array!11798 (_ BitVec 32) (_ BitVec 32) V!7995 V!7995 (_ BitVec 32) Int) ListLongMap!3603)

(assert (=> b!238288 (= res!116787 (not (contains!1698 (getCurrentListMap!1340 (_keys!6521 thiss!1504) (_values!4404 thiss!1504) (mask!10452 thiss!1504) (extraKeys!4158 thiss!1504) (zeroValue!4262 thiss!1504) (minValue!4262 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4421 thiss!1504)) key!932)))))

(declare-fun b!238289 () Bool)

(assert (=> b!238289 (= e!154723 tp_is_empty!6261)))

(declare-fun b!238290 () Bool)

(declare-fun res!116782 () Bool)

(assert (=> b!238290 (=> (not res!116782) (not e!154722))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11800 (_ BitVec 32)) Bool)

(assert (=> b!238290 (= res!116782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6521 thiss!1504) (mask!10452 thiss!1504)))))

(declare-fun b!238291 () Bool)

(declare-fun res!116789 () Bool)

(assert (=> b!238291 (=> (not res!116789) (not e!154722))))

(assert (=> b!238291 (= res!116789 (and (= (size!5942 (_values!4404 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10452 thiss!1504))) (= (size!5943 (_keys!6521 thiss!1504)) (size!5942 (_values!4404 thiss!1504))) (bvsge (mask!10452 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4158 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4158 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!10620 () Bool)

(assert (=> mapIsEmpty!10620 mapRes!10620))

(declare-fun b!238292 () Bool)

(assert (=> b!238292 (= e!154726 e!154722)))

(declare-fun res!116783 () Bool)

(assert (=> b!238292 (=> (not res!116783) (not e!154722))))

(declare-datatypes ((SeekEntryResult!1026 0))(
  ( (MissingZero!1026 (index!6274 (_ BitVec 32))) (Found!1026 (index!6275 (_ BitVec 32))) (Intermediate!1026 (undefined!1838 Bool) (index!6276 (_ BitVec 32)) (x!24040 (_ BitVec 32))) (Undefined!1026) (MissingVacant!1026 (index!6277 (_ BitVec 32))) )
))
(declare-fun lt!120526 () SeekEntryResult!1026)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!238292 (= res!116783 (or (= lt!120526 (MissingZero!1026 index!297)) (= lt!120526 (MissingVacant!1026 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11800 (_ BitVec 32)) SeekEntryResult!1026)

(assert (=> b!238292 (= lt!120526 (seekEntryOrOpen!0 key!932 (_keys!6521 thiss!1504) (mask!10452 thiss!1504)))))

(declare-fun b!238293 () Bool)

(declare-fun res!116784 () Bool)

(assert (=> b!238293 (=> (not res!116784) (not e!154726))))

(assert (=> b!238293 (= res!116784 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!22888 res!116785) b!238293))

(assert (= (and b!238293 res!116784) b!238292))

(assert (= (and b!238292 res!116783) b!238288))

(assert (= (and b!238288 res!116787) b!238287))

(assert (= (and b!238287 res!116788) b!238291))

(assert (= (and b!238291 res!116789) b!238290))

(assert (= (and b!238290 res!116782) b!238286))

(assert (= (and b!238286 res!116786) b!238283))

(assert (= (and b!238284 condMapEmpty!10620) mapIsEmpty!10620))

(assert (= (and b!238284 (not condMapEmpty!10620)) mapNonEmpty!10620))

(get-info :version)

(assert (= (and mapNonEmpty!10620 ((_ is ValueCellFull!2787) mapValue!10620)) b!238289))

(assert (= (and b!238284 ((_ is ValueCellFull!2787) mapDefault!10620)) b!238285))

(assert (= b!238282 b!238284))

(assert (= start!22888 b!238282))

(declare-fun m!258885 () Bool)

(assert (=> b!238286 m!258885))

(declare-fun m!258887 () Bool)

(assert (=> b!238283 m!258887))

(declare-fun m!258889 () Bool)

(assert (=> b!238287 m!258889))

(declare-fun m!258891 () Bool)

(assert (=> b!238288 m!258891))

(assert (=> b!238288 m!258891))

(declare-fun m!258893 () Bool)

(assert (=> b!238288 m!258893))

(declare-fun m!258895 () Bool)

(assert (=> b!238282 m!258895))

(declare-fun m!258897 () Bool)

(assert (=> b!238282 m!258897))

(declare-fun m!258899 () Bool)

(assert (=> mapNonEmpty!10620 m!258899))

(declare-fun m!258901 () Bool)

(assert (=> start!22888 m!258901))

(declare-fun m!258903 () Bool)

(assert (=> b!238290 m!258903))

(declare-fun m!258905 () Bool)

(assert (=> b!238292 m!258905))

(check-sat (not b!238287) (not b!238286) tp_is_empty!6261 (not start!22888) (not b!238292) (not b_next!6399) (not b!238283) b_and!13381 (not mapNonEmpty!10620) (not b!238290) (not b!238288) (not b!238282))
(check-sat b_and!13381 (not b_next!6399))
(get-model)

(declare-fun d!59665 () Bool)

(declare-fun e!154753 () Bool)

(assert (=> d!59665 e!154753))

(declare-fun res!116816 () Bool)

(assert (=> d!59665 (=> res!116816 e!154753)))

(declare-fun lt!120540 () Bool)

(assert (=> d!59665 (= res!116816 (not lt!120540))))

(declare-fun lt!120539 () Bool)

(assert (=> d!59665 (= lt!120540 lt!120539)))

(declare-datatypes ((Unit!7313 0))(
  ( (Unit!7314) )
))
(declare-fun lt!120541 () Unit!7313)

(declare-fun e!154754 () Unit!7313)

(assert (=> d!59665 (= lt!120541 e!154754)))

(declare-fun c!39733 () Bool)

(assert (=> d!59665 (= c!39733 lt!120539)))

(declare-fun containsKey!269 (List!3599 (_ BitVec 64)) Bool)

(assert (=> d!59665 (= lt!120539 (containsKey!269 (toList!1817 (getCurrentListMap!1340 (_keys!6521 thiss!1504) (_values!4404 thiss!1504) (mask!10452 thiss!1504) (extraKeys!4158 thiss!1504) (zeroValue!4262 thiss!1504) (minValue!4262 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4421 thiss!1504))) key!932))))

(assert (=> d!59665 (= (contains!1698 (getCurrentListMap!1340 (_keys!6521 thiss!1504) (_values!4404 thiss!1504) (mask!10452 thiss!1504) (extraKeys!4158 thiss!1504) (zeroValue!4262 thiss!1504) (minValue!4262 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4421 thiss!1504)) key!932) lt!120540)))

(declare-fun b!238336 () Bool)

(declare-fun lt!120538 () Unit!7313)

(assert (=> b!238336 (= e!154754 lt!120538)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!218 (List!3599 (_ BitVec 64)) Unit!7313)

(assert (=> b!238336 (= lt!120538 (lemmaContainsKeyImpliesGetValueByKeyDefined!218 (toList!1817 (getCurrentListMap!1340 (_keys!6521 thiss!1504) (_values!4404 thiss!1504) (mask!10452 thiss!1504) (extraKeys!4158 thiss!1504) (zeroValue!4262 thiss!1504) (minValue!4262 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4421 thiss!1504))) key!932))))

(declare-datatypes ((Option!283 0))(
  ( (Some!282 (v!5210 V!7995)) (None!281) )
))
(declare-fun isDefined!219 (Option!283) Bool)

(declare-fun getValueByKey!277 (List!3599 (_ BitVec 64)) Option!283)

(assert (=> b!238336 (isDefined!219 (getValueByKey!277 (toList!1817 (getCurrentListMap!1340 (_keys!6521 thiss!1504) (_values!4404 thiss!1504) (mask!10452 thiss!1504) (extraKeys!4158 thiss!1504) (zeroValue!4262 thiss!1504) (minValue!4262 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4421 thiss!1504))) key!932))))

(declare-fun b!238337 () Bool)

(declare-fun Unit!7315 () Unit!7313)

(assert (=> b!238337 (= e!154754 Unit!7315)))

(declare-fun b!238338 () Bool)

(assert (=> b!238338 (= e!154753 (isDefined!219 (getValueByKey!277 (toList!1817 (getCurrentListMap!1340 (_keys!6521 thiss!1504) (_values!4404 thiss!1504) (mask!10452 thiss!1504) (extraKeys!4158 thiss!1504) (zeroValue!4262 thiss!1504) (minValue!4262 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4421 thiss!1504))) key!932)))))

(assert (= (and d!59665 c!39733) b!238336))

(assert (= (and d!59665 (not c!39733)) b!238337))

(assert (= (and d!59665 (not res!116816)) b!238338))

(declare-fun m!258929 () Bool)

(assert (=> d!59665 m!258929))

(declare-fun m!258931 () Bool)

(assert (=> b!238336 m!258931))

(declare-fun m!258933 () Bool)

(assert (=> b!238336 m!258933))

(assert (=> b!238336 m!258933))

(declare-fun m!258935 () Bool)

(assert (=> b!238336 m!258935))

(assert (=> b!238338 m!258933))

(assert (=> b!238338 m!258933))

(assert (=> b!238338 m!258935))

(assert (=> b!238288 d!59665))

(declare-fun bm!22165 () Bool)

(declare-fun call!22169 () ListLongMap!3603)

(declare-fun call!22173 () ListLongMap!3603)

(assert (=> bm!22165 (= call!22169 call!22173)))

(declare-fun bm!22166 () Bool)

(declare-fun call!22174 () ListLongMap!3603)

(declare-fun getCurrentListMapNoExtraKeys!539 (array!11800 array!11798 (_ BitVec 32) (_ BitVec 32) V!7995 V!7995 (_ BitVec 32) Int) ListLongMap!3603)

(assert (=> bm!22166 (= call!22174 (getCurrentListMapNoExtraKeys!539 (_keys!6521 thiss!1504) (_values!4404 thiss!1504) (mask!10452 thiss!1504) (extraKeys!4158 thiss!1504) (zeroValue!4262 thiss!1504) (minValue!4262 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4421 thiss!1504)))))

(declare-fun b!238381 () Bool)

(declare-fun e!154789 () Unit!7313)

(declare-fun lt!120597 () Unit!7313)

(assert (=> b!238381 (= e!154789 lt!120597)))

(declare-fun lt!120598 () ListLongMap!3603)

(assert (=> b!238381 (= lt!120598 (getCurrentListMapNoExtraKeys!539 (_keys!6521 thiss!1504) (_values!4404 thiss!1504) (mask!10452 thiss!1504) (extraKeys!4158 thiss!1504) (zeroValue!4262 thiss!1504) (minValue!4262 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4421 thiss!1504)))))

(declare-fun lt!120602 () (_ BitVec 64))

(assert (=> b!238381 (= lt!120602 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!120599 () (_ BitVec 64))

(assert (=> b!238381 (= lt!120599 (select (arr!5602 (_keys!6521 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!120588 () Unit!7313)

(declare-fun addStillContains!196 (ListLongMap!3603 (_ BitVec 64) V!7995 (_ BitVec 64)) Unit!7313)

(assert (=> b!238381 (= lt!120588 (addStillContains!196 lt!120598 lt!120602 (zeroValue!4262 thiss!1504) lt!120599))))

(declare-fun +!642 (ListLongMap!3603 tuple2!4676) ListLongMap!3603)

(assert (=> b!238381 (contains!1698 (+!642 lt!120598 (tuple2!4677 lt!120602 (zeroValue!4262 thiss!1504))) lt!120599)))

(declare-fun lt!120604 () Unit!7313)

(assert (=> b!238381 (= lt!120604 lt!120588)))

(declare-fun lt!120594 () ListLongMap!3603)

(assert (=> b!238381 (= lt!120594 (getCurrentListMapNoExtraKeys!539 (_keys!6521 thiss!1504) (_values!4404 thiss!1504) (mask!10452 thiss!1504) (extraKeys!4158 thiss!1504) (zeroValue!4262 thiss!1504) (minValue!4262 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4421 thiss!1504)))))

(declare-fun lt!120592 () (_ BitVec 64))

(assert (=> b!238381 (= lt!120592 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!120595 () (_ BitVec 64))

(assert (=> b!238381 (= lt!120595 (select (arr!5602 (_keys!6521 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!120593 () Unit!7313)

(declare-fun addApplyDifferent!196 (ListLongMap!3603 (_ BitVec 64) V!7995 (_ BitVec 64)) Unit!7313)

(assert (=> b!238381 (= lt!120593 (addApplyDifferent!196 lt!120594 lt!120592 (minValue!4262 thiss!1504) lt!120595))))

(declare-fun apply!220 (ListLongMap!3603 (_ BitVec 64)) V!7995)

(assert (=> b!238381 (= (apply!220 (+!642 lt!120594 (tuple2!4677 lt!120592 (minValue!4262 thiss!1504))) lt!120595) (apply!220 lt!120594 lt!120595))))

(declare-fun lt!120587 () Unit!7313)

(assert (=> b!238381 (= lt!120587 lt!120593)))

(declare-fun lt!120605 () ListLongMap!3603)

(assert (=> b!238381 (= lt!120605 (getCurrentListMapNoExtraKeys!539 (_keys!6521 thiss!1504) (_values!4404 thiss!1504) (mask!10452 thiss!1504) (extraKeys!4158 thiss!1504) (zeroValue!4262 thiss!1504) (minValue!4262 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4421 thiss!1504)))))

(declare-fun lt!120600 () (_ BitVec 64))

(assert (=> b!238381 (= lt!120600 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!120589 () (_ BitVec 64))

(assert (=> b!238381 (= lt!120589 (select (arr!5602 (_keys!6521 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!120606 () Unit!7313)

(assert (=> b!238381 (= lt!120606 (addApplyDifferent!196 lt!120605 lt!120600 (zeroValue!4262 thiss!1504) lt!120589))))

(assert (=> b!238381 (= (apply!220 (+!642 lt!120605 (tuple2!4677 lt!120600 (zeroValue!4262 thiss!1504))) lt!120589) (apply!220 lt!120605 lt!120589))))

(declare-fun lt!120607 () Unit!7313)

(assert (=> b!238381 (= lt!120607 lt!120606)))

(declare-fun lt!120601 () ListLongMap!3603)

(assert (=> b!238381 (= lt!120601 (getCurrentListMapNoExtraKeys!539 (_keys!6521 thiss!1504) (_values!4404 thiss!1504) (mask!10452 thiss!1504) (extraKeys!4158 thiss!1504) (zeroValue!4262 thiss!1504) (minValue!4262 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4421 thiss!1504)))))

(declare-fun lt!120590 () (_ BitVec 64))

(assert (=> b!238381 (= lt!120590 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!120603 () (_ BitVec 64))

(assert (=> b!238381 (= lt!120603 (select (arr!5602 (_keys!6521 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!238381 (= lt!120597 (addApplyDifferent!196 lt!120601 lt!120590 (minValue!4262 thiss!1504) lt!120603))))

(assert (=> b!238381 (= (apply!220 (+!642 lt!120601 (tuple2!4677 lt!120590 (minValue!4262 thiss!1504))) lt!120603) (apply!220 lt!120601 lt!120603))))

(declare-fun bm!22167 () Bool)

(declare-fun call!22171 () Bool)

(declare-fun lt!120586 () ListLongMap!3603)

(assert (=> bm!22167 (= call!22171 (contains!1698 lt!120586 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!238382 () Bool)

(declare-fun e!154781 () ListLongMap!3603)

(declare-fun call!22168 () ListLongMap!3603)

(assert (=> b!238382 (= e!154781 call!22168)))

(declare-fun bm!22168 () Bool)

(declare-fun call!22170 () Bool)

(assert (=> bm!22168 (= call!22170 (contains!1698 lt!120586 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!238383 () Bool)

(declare-fun e!154793 () Bool)

(declare-fun e!154784 () Bool)

(assert (=> b!238383 (= e!154793 e!154784)))

(declare-fun c!39746 () Bool)

(assert (=> b!238383 (= c!39746 (not (= (bvand (extraKeys!4158 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!238384 () Bool)

(declare-fun res!116840 () Bool)

(assert (=> b!238384 (=> (not res!116840) (not e!154793))))

(declare-fun e!154790 () Bool)

(assert (=> b!238384 (= res!116840 e!154790)))

(declare-fun res!116843 () Bool)

(assert (=> b!238384 (=> res!116843 e!154790)))

(declare-fun e!154785 () Bool)

(assert (=> b!238384 (= res!116843 (not e!154785))))

(declare-fun res!116836 () Bool)

(assert (=> b!238384 (=> (not res!116836) (not e!154785))))

(assert (=> b!238384 (= res!116836 (bvslt #b00000000000000000000000000000000 (size!5943 (_keys!6521 thiss!1504))))))

(declare-fun b!238385 () Bool)

(declare-fun c!39751 () Bool)

(assert (=> b!238385 (= c!39751 (and (not (= (bvand (extraKeys!4158 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4158 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!154782 () ListLongMap!3603)

(assert (=> b!238385 (= e!154781 e!154782)))

(declare-fun b!238386 () Bool)

(declare-fun e!154786 () Bool)

(declare-fun get!2890 (ValueCell!2787 V!7995) V!7995)

(declare-fun dynLambda!558 (Int (_ BitVec 64)) V!7995)

(assert (=> b!238386 (= e!154786 (= (apply!220 lt!120586 (select (arr!5602 (_keys!6521 thiss!1504)) #b00000000000000000000000000000000)) (get!2890 (select (arr!5601 (_values!4404 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!558 (defaultEntry!4421 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!238386 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5942 (_values!4404 thiss!1504))))))

(assert (=> b!238386 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5943 (_keys!6521 thiss!1504))))))

(declare-fun b!238387 () Bool)

(declare-fun e!154787 () Bool)

(declare-fun e!154791 () Bool)

(assert (=> b!238387 (= e!154787 e!154791)))

(declare-fun res!116837 () Bool)

(assert (=> b!238387 (= res!116837 call!22171)))

(assert (=> b!238387 (=> (not res!116837) (not e!154791))))

(declare-fun b!238388 () Bool)

(assert (=> b!238388 (= e!154787 (not call!22171))))

(declare-fun b!238389 () Bool)

(assert (=> b!238389 (= e!154790 e!154786)))

(declare-fun res!116842 () Bool)

(assert (=> b!238389 (=> (not res!116842) (not e!154786))))

(assert (=> b!238389 (= res!116842 (contains!1698 lt!120586 (select (arr!5602 (_keys!6521 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!238389 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5943 (_keys!6521 thiss!1504))))))

(declare-fun b!238390 () Bool)

(declare-fun e!154783 () Bool)

(assert (=> b!238390 (= e!154784 e!154783)))

(declare-fun res!116841 () Bool)

(assert (=> b!238390 (= res!116841 call!22170)))

(assert (=> b!238390 (=> (not res!116841) (not e!154783))))

(declare-fun b!238391 () Bool)

(declare-fun Unit!7316 () Unit!7313)

(assert (=> b!238391 (= e!154789 Unit!7316)))

(declare-fun d!59667 () Bool)

(assert (=> d!59667 e!154793))

(declare-fun res!116838 () Bool)

(assert (=> d!59667 (=> (not res!116838) (not e!154793))))

(assert (=> d!59667 (= res!116838 (or (bvsge #b00000000000000000000000000000000 (size!5943 (_keys!6521 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5943 (_keys!6521 thiss!1504))))))))

(declare-fun lt!120596 () ListLongMap!3603)

(assert (=> d!59667 (= lt!120586 lt!120596)))

(declare-fun lt!120591 () Unit!7313)

(assert (=> d!59667 (= lt!120591 e!154789)))

(declare-fun c!39748 () Bool)

(declare-fun e!154792 () Bool)

(assert (=> d!59667 (= c!39748 e!154792)))

(declare-fun res!116839 () Bool)

(assert (=> d!59667 (=> (not res!116839) (not e!154792))))

(assert (=> d!59667 (= res!116839 (bvslt #b00000000000000000000000000000000 (size!5943 (_keys!6521 thiss!1504))))))

(declare-fun e!154788 () ListLongMap!3603)

(assert (=> d!59667 (= lt!120596 e!154788)))

(declare-fun c!39750 () Bool)

(assert (=> d!59667 (= c!39750 (and (not (= (bvand (extraKeys!4158 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4158 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!59667 (validMask!0 (mask!10452 thiss!1504))))

(assert (=> d!59667 (= (getCurrentListMap!1340 (_keys!6521 thiss!1504) (_values!4404 thiss!1504) (mask!10452 thiss!1504) (extraKeys!4158 thiss!1504) (zeroValue!4262 thiss!1504) (minValue!4262 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4421 thiss!1504)) lt!120586)))

(declare-fun bm!22169 () Bool)

(declare-fun call!22172 () ListLongMap!3603)

(assert (=> bm!22169 (= call!22168 call!22172)))

(declare-fun b!238392 () Bool)

(assert (=> b!238392 (= e!154788 e!154781)))

(declare-fun c!39749 () Bool)

(assert (=> b!238392 (= c!39749 (and (not (= (bvand (extraKeys!4158 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4158 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!238393 () Bool)

(assert (=> b!238393 (= e!154791 (= (apply!220 lt!120586 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4262 thiss!1504)))))

(declare-fun b!238394 () Bool)

(assert (=> b!238394 (= e!154788 (+!642 call!22172 (tuple2!4677 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4262 thiss!1504))))))

(declare-fun bm!22170 () Bool)

(assert (=> bm!22170 (= call!22173 call!22174)))

(declare-fun b!238395 () Bool)

(declare-fun res!116835 () Bool)

(assert (=> b!238395 (=> (not res!116835) (not e!154793))))

(assert (=> b!238395 (= res!116835 e!154787)))

(declare-fun c!39747 () Bool)

(assert (=> b!238395 (= c!39747 (not (= (bvand (extraKeys!4158 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!238396 () Bool)

(assert (=> b!238396 (= e!154783 (= (apply!220 lt!120586 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4262 thiss!1504)))))

(declare-fun b!238397 () Bool)

(assert (=> b!238397 (= e!154782 call!22168)))

(declare-fun b!238398 () Bool)

(assert (=> b!238398 (= e!154785 (validKeyInArray!0 (select (arr!5602 (_keys!6521 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!238399 () Bool)

(assert (=> b!238399 (= e!154784 (not call!22170))))

(declare-fun bm!22171 () Bool)

(assert (=> bm!22171 (= call!22172 (+!642 (ite c!39750 call!22174 (ite c!39749 call!22173 call!22169)) (ite (or c!39750 c!39749) (tuple2!4677 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4262 thiss!1504)) (tuple2!4677 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4262 thiss!1504)))))))

(declare-fun b!238400 () Bool)

(assert (=> b!238400 (= e!154782 call!22169)))

(declare-fun b!238401 () Bool)

(assert (=> b!238401 (= e!154792 (validKeyInArray!0 (select (arr!5602 (_keys!6521 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!59667 c!39750) b!238394))

(assert (= (and d!59667 (not c!39750)) b!238392))

(assert (= (and b!238392 c!39749) b!238382))

(assert (= (and b!238392 (not c!39749)) b!238385))

(assert (= (and b!238385 c!39751) b!238397))

(assert (= (and b!238385 (not c!39751)) b!238400))

(assert (= (or b!238397 b!238400) bm!22165))

(assert (= (or b!238382 bm!22165) bm!22170))

(assert (= (or b!238382 b!238397) bm!22169))

(assert (= (or b!238394 bm!22170) bm!22166))

(assert (= (or b!238394 bm!22169) bm!22171))

(assert (= (and d!59667 res!116839) b!238401))

(assert (= (and d!59667 c!39748) b!238381))

(assert (= (and d!59667 (not c!39748)) b!238391))

(assert (= (and d!59667 res!116838) b!238384))

(assert (= (and b!238384 res!116836) b!238398))

(assert (= (and b!238384 (not res!116843)) b!238389))

(assert (= (and b!238389 res!116842) b!238386))

(assert (= (and b!238384 res!116840) b!238395))

(assert (= (and b!238395 c!39747) b!238387))

(assert (= (and b!238395 (not c!39747)) b!238388))

(assert (= (and b!238387 res!116837) b!238393))

(assert (= (or b!238387 b!238388) bm!22167))

(assert (= (and b!238395 res!116835) b!238383))

(assert (= (and b!238383 c!39746) b!238390))

(assert (= (and b!238383 (not c!39746)) b!238399))

(assert (= (and b!238390 res!116841) b!238396))

(assert (= (or b!238390 b!238399) bm!22168))

(declare-fun b_lambda!8005 () Bool)

(assert (=> (not b_lambda!8005) (not b!238386)))

(declare-fun t!8603 () Bool)

(declare-fun tb!2961 () Bool)

(assert (=> (and b!238282 (= (defaultEntry!4421 thiss!1504) (defaultEntry!4421 thiss!1504)) t!8603) tb!2961))

(declare-fun result!5189 () Bool)

(assert (=> tb!2961 (= result!5189 tp_is_empty!6261)))

(assert (=> b!238386 t!8603))

(declare-fun b_and!13385 () Bool)

(assert (= b_and!13381 (and (=> t!8603 result!5189) b_and!13385)))

(declare-fun m!258937 () Bool)

(assert (=> b!238386 m!258937))

(assert (=> b!238386 m!258937))

(declare-fun m!258939 () Bool)

(assert (=> b!238386 m!258939))

(declare-fun m!258941 () Bool)

(assert (=> b!238386 m!258941))

(declare-fun m!258943 () Bool)

(assert (=> b!238386 m!258943))

(assert (=> b!238386 m!258941))

(declare-fun m!258945 () Bool)

(assert (=> b!238386 m!258945))

(assert (=> b!238386 m!258943))

(declare-fun m!258947 () Bool)

(assert (=> bm!22166 m!258947))

(declare-fun m!258949 () Bool)

(assert (=> b!238394 m!258949))

(declare-fun m!258951 () Bool)

(assert (=> bm!22167 m!258951))

(declare-fun m!258953 () Bool)

(assert (=> b!238396 m!258953))

(declare-fun m!258955 () Bool)

(assert (=> bm!22168 m!258955))

(declare-fun m!258957 () Bool)

(assert (=> b!238393 m!258957))

(assert (=> b!238401 m!258937))

(assert (=> b!238401 m!258937))

(declare-fun m!258959 () Bool)

(assert (=> b!238401 m!258959))

(assert (=> b!238398 m!258937))

(assert (=> b!238398 m!258937))

(assert (=> b!238398 m!258959))

(declare-fun m!258961 () Bool)

(assert (=> bm!22171 m!258961))

(assert (=> d!59667 m!258889))

(declare-fun m!258963 () Bool)

(assert (=> b!238381 m!258963))

(declare-fun m!258965 () Bool)

(assert (=> b!238381 m!258965))

(declare-fun m!258967 () Bool)

(assert (=> b!238381 m!258967))

(declare-fun m!258969 () Bool)

(assert (=> b!238381 m!258969))

(declare-fun m!258971 () Bool)

(assert (=> b!238381 m!258971))

(declare-fun m!258973 () Bool)

(assert (=> b!238381 m!258973))

(declare-fun m!258975 () Bool)

(assert (=> b!238381 m!258975))

(declare-fun m!258977 () Bool)

(assert (=> b!238381 m!258977))

(assert (=> b!238381 m!258963))

(declare-fun m!258979 () Bool)

(assert (=> b!238381 m!258979))

(declare-fun m!258981 () Bool)

(assert (=> b!238381 m!258981))

(declare-fun m!258983 () Bool)

(assert (=> b!238381 m!258983))

(assert (=> b!238381 m!258947))

(assert (=> b!238381 m!258977))

(declare-fun m!258985 () Bool)

(assert (=> b!238381 m!258985))

(assert (=> b!238381 m!258981))

(declare-fun m!258987 () Bool)

(assert (=> b!238381 m!258987))

(declare-fun m!258989 () Bool)

(assert (=> b!238381 m!258989))

(assert (=> b!238381 m!258967))

(assert (=> b!238381 m!258937))

(declare-fun m!258991 () Bool)

(assert (=> b!238381 m!258991))

(assert (=> b!238389 m!258937))

(assert (=> b!238389 m!258937))

(declare-fun m!258993 () Bool)

(assert (=> b!238389 m!258993))

(assert (=> b!238288 d!59667))

(declare-fun b!238416 () Bool)

(declare-fun e!154801 () SeekEntryResult!1026)

(declare-fun e!154802 () SeekEntryResult!1026)

(assert (=> b!238416 (= e!154801 e!154802)))

(declare-fun lt!120616 () (_ BitVec 64))

(declare-fun lt!120615 () SeekEntryResult!1026)

(assert (=> b!238416 (= lt!120616 (select (arr!5602 (_keys!6521 thiss!1504)) (index!6276 lt!120615)))))

(declare-fun c!39759 () Bool)

(assert (=> b!238416 (= c!39759 (= lt!120616 key!932))))

(declare-fun b!238417 () Bool)

(declare-fun c!39760 () Bool)

(assert (=> b!238417 (= c!39760 (= lt!120616 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!154800 () SeekEntryResult!1026)

(assert (=> b!238417 (= e!154802 e!154800)))

(declare-fun b!238418 () Bool)

(assert (=> b!238418 (= e!154800 (MissingZero!1026 (index!6276 lt!120615)))))

(declare-fun d!59669 () Bool)

(declare-fun lt!120614 () SeekEntryResult!1026)

(assert (=> d!59669 (and (or ((_ is Undefined!1026) lt!120614) (not ((_ is Found!1026) lt!120614)) (and (bvsge (index!6275 lt!120614) #b00000000000000000000000000000000) (bvslt (index!6275 lt!120614) (size!5943 (_keys!6521 thiss!1504))))) (or ((_ is Undefined!1026) lt!120614) ((_ is Found!1026) lt!120614) (not ((_ is MissingZero!1026) lt!120614)) (and (bvsge (index!6274 lt!120614) #b00000000000000000000000000000000) (bvslt (index!6274 lt!120614) (size!5943 (_keys!6521 thiss!1504))))) (or ((_ is Undefined!1026) lt!120614) ((_ is Found!1026) lt!120614) ((_ is MissingZero!1026) lt!120614) (not ((_ is MissingVacant!1026) lt!120614)) (and (bvsge (index!6277 lt!120614) #b00000000000000000000000000000000) (bvslt (index!6277 lt!120614) (size!5943 (_keys!6521 thiss!1504))))) (or ((_ is Undefined!1026) lt!120614) (ite ((_ is Found!1026) lt!120614) (= (select (arr!5602 (_keys!6521 thiss!1504)) (index!6275 lt!120614)) key!932) (ite ((_ is MissingZero!1026) lt!120614) (= (select (arr!5602 (_keys!6521 thiss!1504)) (index!6274 lt!120614)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1026) lt!120614) (= (select (arr!5602 (_keys!6521 thiss!1504)) (index!6277 lt!120614)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!59669 (= lt!120614 e!154801)))

(declare-fun c!39758 () Bool)

(assert (=> d!59669 (= c!39758 (and ((_ is Intermediate!1026) lt!120615) (undefined!1838 lt!120615)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11800 (_ BitVec 32)) SeekEntryResult!1026)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59669 (= lt!120615 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10452 thiss!1504)) key!932 (_keys!6521 thiss!1504) (mask!10452 thiss!1504)))))

(assert (=> d!59669 (validMask!0 (mask!10452 thiss!1504))))

(assert (=> d!59669 (= (seekEntryOrOpen!0 key!932 (_keys!6521 thiss!1504) (mask!10452 thiss!1504)) lt!120614)))

(declare-fun b!238419 () Bool)

(assert (=> b!238419 (= e!154801 Undefined!1026)))

(declare-fun b!238420 () Bool)

(assert (=> b!238420 (= e!154802 (Found!1026 (index!6276 lt!120615)))))

(declare-fun b!238421 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11800 (_ BitVec 32)) SeekEntryResult!1026)

(assert (=> b!238421 (= e!154800 (seekKeyOrZeroReturnVacant!0 (x!24040 lt!120615) (index!6276 lt!120615) (index!6276 lt!120615) key!932 (_keys!6521 thiss!1504) (mask!10452 thiss!1504)))))

(assert (= (and d!59669 c!39758) b!238419))

(assert (= (and d!59669 (not c!39758)) b!238416))

(assert (= (and b!238416 c!39759) b!238420))

(assert (= (and b!238416 (not c!39759)) b!238417))

(assert (= (and b!238417 c!39760) b!238418))

(assert (= (and b!238417 (not c!39760)) b!238421))

(declare-fun m!258995 () Bool)

(assert (=> b!238416 m!258995))

(assert (=> d!59669 m!258889))

(declare-fun m!258997 () Bool)

(assert (=> d!59669 m!258997))

(declare-fun m!258999 () Bool)

(assert (=> d!59669 m!258999))

(declare-fun m!259001 () Bool)

(assert (=> d!59669 m!259001))

(assert (=> d!59669 m!258997))

(declare-fun m!259003 () Bool)

(assert (=> d!59669 m!259003))

(declare-fun m!259005 () Bool)

(assert (=> d!59669 m!259005))

(declare-fun m!259007 () Bool)

(assert (=> b!238421 m!259007))

(assert (=> b!238292 d!59669))

(declare-fun d!59671 () Bool)

(declare-fun res!116850 () Bool)

(declare-fun e!154805 () Bool)

(assert (=> d!59671 (=> (not res!116850) (not e!154805))))

(declare-fun simpleValid!242 (LongMapFixedSize!3474) Bool)

(assert (=> d!59671 (= res!116850 (simpleValid!242 thiss!1504))))

(assert (=> d!59671 (= (valid!1364 thiss!1504) e!154805)))

(declare-fun b!238428 () Bool)

(declare-fun res!116851 () Bool)

(assert (=> b!238428 (=> (not res!116851) (not e!154805))))

(declare-fun arrayCountValidKeys!0 (array!11800 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!238428 (= res!116851 (= (arrayCountValidKeys!0 (_keys!6521 thiss!1504) #b00000000000000000000000000000000 (size!5943 (_keys!6521 thiss!1504))) (_size!1786 thiss!1504)))))

(declare-fun b!238429 () Bool)

(declare-fun res!116852 () Bool)

(assert (=> b!238429 (=> (not res!116852) (not e!154805))))

(assert (=> b!238429 (= res!116852 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6521 thiss!1504) (mask!10452 thiss!1504)))))

(declare-fun b!238430 () Bool)

(assert (=> b!238430 (= e!154805 (arrayNoDuplicates!0 (_keys!6521 thiss!1504) #b00000000000000000000000000000000 Nil!3595))))

(assert (= (and d!59671 res!116850) b!238428))

(assert (= (and b!238428 res!116851) b!238429))

(assert (= (and b!238429 res!116852) b!238430))

(declare-fun m!259009 () Bool)

(assert (=> d!59671 m!259009))

(declare-fun m!259011 () Bool)

(assert (=> b!238428 m!259011))

(assert (=> b!238429 m!258903))

(assert (=> b!238430 m!258885))

(assert (=> start!22888 d!59671))

(declare-fun b!238439 () Bool)

(declare-fun e!154814 () Bool)

(declare-fun call!22177 () Bool)

(assert (=> b!238439 (= e!154814 call!22177)))

(declare-fun b!238440 () Bool)

(declare-fun e!154812 () Bool)

(assert (=> b!238440 (= e!154812 e!154814)))

(declare-fun c!39763 () Bool)

(assert (=> b!238440 (= c!39763 (validKeyInArray!0 (select (arr!5602 (_keys!6521 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!59673 () Bool)

(declare-fun res!116857 () Bool)

(assert (=> d!59673 (=> res!116857 e!154812)))

(assert (=> d!59673 (= res!116857 (bvsge #b00000000000000000000000000000000 (size!5943 (_keys!6521 thiss!1504))))))

(assert (=> d!59673 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6521 thiss!1504) (mask!10452 thiss!1504)) e!154812)))

(declare-fun b!238441 () Bool)

(declare-fun e!154813 () Bool)

(assert (=> b!238441 (= e!154814 e!154813)))

(declare-fun lt!120623 () (_ BitVec 64))

(assert (=> b!238441 (= lt!120623 (select (arr!5602 (_keys!6521 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!120624 () Unit!7313)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11800 (_ BitVec 64) (_ BitVec 32)) Unit!7313)

(assert (=> b!238441 (= lt!120624 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6521 thiss!1504) lt!120623 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!11800 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!238441 (arrayContainsKey!0 (_keys!6521 thiss!1504) lt!120623 #b00000000000000000000000000000000)))

(declare-fun lt!120625 () Unit!7313)

(assert (=> b!238441 (= lt!120625 lt!120624)))

(declare-fun res!116858 () Bool)

(assert (=> b!238441 (= res!116858 (= (seekEntryOrOpen!0 (select (arr!5602 (_keys!6521 thiss!1504)) #b00000000000000000000000000000000) (_keys!6521 thiss!1504) (mask!10452 thiss!1504)) (Found!1026 #b00000000000000000000000000000000)))))

(assert (=> b!238441 (=> (not res!116858) (not e!154813))))

(declare-fun b!238442 () Bool)

(assert (=> b!238442 (= e!154813 call!22177)))

(declare-fun bm!22174 () Bool)

(assert (=> bm!22174 (= call!22177 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6521 thiss!1504) (mask!10452 thiss!1504)))))

(assert (= (and d!59673 (not res!116857)) b!238440))

(assert (= (and b!238440 c!39763) b!238441))

(assert (= (and b!238440 (not c!39763)) b!238439))

(assert (= (and b!238441 res!116858) b!238442))

(assert (= (or b!238442 b!238439) bm!22174))

(assert (=> b!238440 m!258937))

(assert (=> b!238440 m!258937))

(assert (=> b!238440 m!258959))

(assert (=> b!238441 m!258937))

(declare-fun m!259013 () Bool)

(assert (=> b!238441 m!259013))

(declare-fun m!259015 () Bool)

(assert (=> b!238441 m!259015))

(assert (=> b!238441 m!258937))

(declare-fun m!259017 () Bool)

(assert (=> b!238441 m!259017))

(declare-fun m!259019 () Bool)

(assert (=> bm!22174 m!259019))

(assert (=> b!238290 d!59673))

(declare-fun d!59675 () Bool)

(declare-fun res!116865 () Bool)

(declare-fun e!154825 () Bool)

(assert (=> d!59675 (=> res!116865 e!154825)))

(assert (=> d!59675 (= res!116865 (bvsge #b00000000000000000000000000000000 (size!5943 (_keys!6521 thiss!1504))))))

(assert (=> d!59675 (= (arrayNoDuplicates!0 (_keys!6521 thiss!1504) #b00000000000000000000000000000000 Nil!3595) e!154825)))

(declare-fun b!238453 () Bool)

(declare-fun e!154824 () Bool)

(declare-fun e!154826 () Bool)

(assert (=> b!238453 (= e!154824 e!154826)))

(declare-fun c!39766 () Bool)

(assert (=> b!238453 (= c!39766 (validKeyInArray!0 (select (arr!5602 (_keys!6521 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!238454 () Bool)

(declare-fun call!22180 () Bool)

(assert (=> b!238454 (= e!154826 call!22180)))

(declare-fun b!238455 () Bool)

(assert (=> b!238455 (= e!154826 call!22180)))

(declare-fun b!238456 () Bool)

(assert (=> b!238456 (= e!154825 e!154824)))

(declare-fun res!116867 () Bool)

(assert (=> b!238456 (=> (not res!116867) (not e!154824))))

(declare-fun e!154823 () Bool)

(assert (=> b!238456 (= res!116867 (not e!154823))))

(declare-fun res!116866 () Bool)

(assert (=> b!238456 (=> (not res!116866) (not e!154823))))

(assert (=> b!238456 (= res!116866 (validKeyInArray!0 (select (arr!5602 (_keys!6521 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!238457 () Bool)

(declare-fun contains!1700 (List!3598 (_ BitVec 64)) Bool)

(assert (=> b!238457 (= e!154823 (contains!1700 Nil!3595 (select (arr!5602 (_keys!6521 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!22177 () Bool)

(assert (=> bm!22177 (= call!22180 (arrayNoDuplicates!0 (_keys!6521 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!39766 (Cons!3594 (select (arr!5602 (_keys!6521 thiss!1504)) #b00000000000000000000000000000000) Nil!3595) Nil!3595)))))

(assert (= (and d!59675 (not res!116865)) b!238456))

(assert (= (and b!238456 res!116866) b!238457))

(assert (= (and b!238456 res!116867) b!238453))

(assert (= (and b!238453 c!39766) b!238455))

(assert (= (and b!238453 (not c!39766)) b!238454))

(assert (= (or b!238455 b!238454) bm!22177))

(assert (=> b!238453 m!258937))

(assert (=> b!238453 m!258937))

(assert (=> b!238453 m!258959))

(assert (=> b!238456 m!258937))

(assert (=> b!238456 m!258937))

(assert (=> b!238456 m!258959))

(assert (=> b!238457 m!258937))

(assert (=> b!238457 m!258937))

(declare-fun m!259021 () Bool)

(assert (=> b!238457 m!259021))

(assert (=> bm!22177 m!258937))

(declare-fun m!259023 () Bool)

(assert (=> bm!22177 m!259023))

(assert (=> b!238286 d!59675))

(declare-fun d!59677 () Bool)

(assert (=> d!59677 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!238283 d!59677))

(declare-fun d!59679 () Bool)

(assert (=> d!59679 (= (validMask!0 (mask!10452 thiss!1504)) (and (or (= (mask!10452 thiss!1504) #b00000000000000000000000000000111) (= (mask!10452 thiss!1504) #b00000000000000000000000000001111) (= (mask!10452 thiss!1504) #b00000000000000000000000000011111) (= (mask!10452 thiss!1504) #b00000000000000000000000000111111) (= (mask!10452 thiss!1504) #b00000000000000000000000001111111) (= (mask!10452 thiss!1504) #b00000000000000000000000011111111) (= (mask!10452 thiss!1504) #b00000000000000000000000111111111) (= (mask!10452 thiss!1504) #b00000000000000000000001111111111) (= (mask!10452 thiss!1504) #b00000000000000000000011111111111) (= (mask!10452 thiss!1504) #b00000000000000000000111111111111) (= (mask!10452 thiss!1504) #b00000000000000000001111111111111) (= (mask!10452 thiss!1504) #b00000000000000000011111111111111) (= (mask!10452 thiss!1504) #b00000000000000000111111111111111) (= (mask!10452 thiss!1504) #b00000000000000001111111111111111) (= (mask!10452 thiss!1504) #b00000000000000011111111111111111) (= (mask!10452 thiss!1504) #b00000000000000111111111111111111) (= (mask!10452 thiss!1504) #b00000000000001111111111111111111) (= (mask!10452 thiss!1504) #b00000000000011111111111111111111) (= (mask!10452 thiss!1504) #b00000000000111111111111111111111) (= (mask!10452 thiss!1504) #b00000000001111111111111111111111) (= (mask!10452 thiss!1504) #b00000000011111111111111111111111) (= (mask!10452 thiss!1504) #b00000000111111111111111111111111) (= (mask!10452 thiss!1504) #b00000001111111111111111111111111) (= (mask!10452 thiss!1504) #b00000011111111111111111111111111) (= (mask!10452 thiss!1504) #b00000111111111111111111111111111) (= (mask!10452 thiss!1504) #b00001111111111111111111111111111) (= (mask!10452 thiss!1504) #b00011111111111111111111111111111) (= (mask!10452 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10452 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!238287 d!59679))

(declare-fun d!59681 () Bool)

(assert (=> d!59681 (= (array_inv!3693 (_keys!6521 thiss!1504)) (bvsge (size!5943 (_keys!6521 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!238282 d!59681))

(declare-fun d!59683 () Bool)

(assert (=> d!59683 (= (array_inv!3694 (_values!4404 thiss!1504)) (bvsge (size!5942 (_values!4404 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!238282 d!59683))

(declare-fun mapNonEmpty!10626 () Bool)

(declare-fun mapRes!10626 () Bool)

(declare-fun tp!22407 () Bool)

(declare-fun e!154832 () Bool)

(assert (=> mapNonEmpty!10626 (= mapRes!10626 (and tp!22407 e!154832))))

(declare-fun mapKey!10626 () (_ BitVec 32))

(declare-fun mapRest!10626 () (Array (_ BitVec 32) ValueCell!2787))

(declare-fun mapValue!10626 () ValueCell!2787)

(assert (=> mapNonEmpty!10626 (= mapRest!10620 (store mapRest!10626 mapKey!10626 mapValue!10626))))

(declare-fun b!238465 () Bool)

(declare-fun e!154831 () Bool)

(assert (=> b!238465 (= e!154831 tp_is_empty!6261)))

(declare-fun b!238464 () Bool)

(assert (=> b!238464 (= e!154832 tp_is_empty!6261)))

(declare-fun mapIsEmpty!10626 () Bool)

(assert (=> mapIsEmpty!10626 mapRes!10626))

(declare-fun condMapEmpty!10626 () Bool)

(declare-fun mapDefault!10626 () ValueCell!2787)

(assert (=> mapNonEmpty!10620 (= condMapEmpty!10626 (= mapRest!10620 ((as const (Array (_ BitVec 32) ValueCell!2787)) mapDefault!10626)))))

(assert (=> mapNonEmpty!10620 (= tp!22397 (and e!154831 mapRes!10626))))

(assert (= (and mapNonEmpty!10620 condMapEmpty!10626) mapIsEmpty!10626))

(assert (= (and mapNonEmpty!10620 (not condMapEmpty!10626)) mapNonEmpty!10626))

(assert (= (and mapNonEmpty!10626 ((_ is ValueCellFull!2787) mapValue!10626)) b!238464))

(assert (= (and mapNonEmpty!10620 ((_ is ValueCellFull!2787) mapDefault!10626)) b!238465))

(declare-fun m!259025 () Bool)

(assert (=> mapNonEmpty!10626 m!259025))

(declare-fun b_lambda!8007 () Bool)

(assert (= b_lambda!8005 (or (and b!238282 b_free!6399) b_lambda!8007)))

(check-sat (not b!238428) (not b!238393) tp_is_empty!6261 (not b!238453) (not b!238457) (not bm!22177) (not b!238381) (not bm!22166) (not b!238398) (not d!59669) (not b!238456) (not b_lambda!8007) (not b_next!6399) (not b!238336) (not bm!22174) (not b!238401) (not b!238396) (not b!238440) (not d!59665) (not b!238386) (not b!238421) (not b!238389) b_and!13385 (not d!59671) (not b!238338) (not bm!22168) (not b!238430) (not bm!22171) (not b!238394) (not d!59667) (not mapNonEmpty!10626) (not b!238441) (not bm!22167) (not b!238429))
(check-sat b_and!13385 (not b_next!6399))
