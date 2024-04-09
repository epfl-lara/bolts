; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17602 () Bool)

(assert start!17602)

(declare-fun b!175973 () Bool)

(declare-fun b_free!4347 () Bool)

(declare-fun b_next!4347 () Bool)

(assert (=> b!175973 (= b_free!4347 (not b_next!4347))))

(declare-fun tp!15728 () Bool)

(declare-fun b_and!10853 () Bool)

(assert (=> b!175973 (= tp!15728 b_and!10853)))

(declare-fun b!175970 () Bool)

(declare-fun res!83418 () Bool)

(declare-fun e!116134 () Bool)

(assert (=> b!175970 (=> (not res!83418) (not e!116134))))

(declare-datatypes ((V!5139 0))(
  ( (V!5140 (val!2104 Int)) )
))
(declare-datatypes ((ValueCell!1716 0))(
  ( (ValueCellFull!1716 (v!3976 V!5139)) (EmptyCell!1716) )
))
(declare-datatypes ((array!7380 0))(
  ( (array!7381 (arr!3502 (Array (_ BitVec 32) (_ BitVec 64))) (size!3805 (_ BitVec 32))) )
))
(declare-datatypes ((array!7382 0))(
  ( (array!7383 (arr!3503 (Array (_ BitVec 32) ValueCell!1716)) (size!3806 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2340 0))(
  ( (LongMapFixedSize!2341 (defaultEntry!3628 Int) (mask!8537 (_ BitVec 32)) (extraKeys!3365 (_ BitVec 32)) (zeroValue!3469 V!5139) (minValue!3469 V!5139) (_size!1219 (_ BitVec 32)) (_keys!5485 array!7380) (_values!3611 array!7382) (_vacant!1219 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2340)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3268 0))(
  ( (tuple2!3269 (_1!1644 (_ BitVec 64)) (_2!1644 V!5139)) )
))
(declare-datatypes ((List!2248 0))(
  ( (Nil!2245) (Cons!2244 (h!2864 tuple2!3268) (t!7078 List!2248)) )
))
(declare-datatypes ((ListLongMap!2209 0))(
  ( (ListLongMap!2210 (toList!1120 List!2248)) )
))
(declare-fun contains!1176 (ListLongMap!2209 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!767 (array!7380 array!7382 (_ BitVec 32) (_ BitVec 32) V!5139 V!5139 (_ BitVec 32) Int) ListLongMap!2209)

(assert (=> b!175970 (= res!83418 (contains!1176 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248)) key!828))))

(declare-fun b!175971 () Bool)

(assert (=> b!175971 (= e!116134 (and (= (size!3806 (_values!3611 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8537 thiss!1248))) (= (size!3805 (_keys!5485 thiss!1248)) (size!3806 (_values!3611 thiss!1248))) (bvsge (mask!8537 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3365 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3365 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!175972 () Bool)

(declare-fun e!116137 () Bool)

(declare-fun tp_is_empty!4119 () Bool)

(assert (=> b!175972 (= e!116137 tp_is_empty!4119)))

(declare-fun e!116136 () Bool)

(declare-fun e!116133 () Bool)

(declare-fun array_inv!2233 (array!7380) Bool)

(declare-fun array_inv!2234 (array!7382) Bool)

(assert (=> b!175973 (= e!116136 (and tp!15728 tp_is_empty!4119 (array_inv!2233 (_keys!5485 thiss!1248)) (array_inv!2234 (_values!3611 thiss!1248)) e!116133))))

(declare-fun mapIsEmpty!7028 () Bool)

(declare-fun mapRes!7028 () Bool)

(assert (=> mapIsEmpty!7028 mapRes!7028))

(declare-fun b!175974 () Bool)

(assert (=> b!175974 (= e!116133 (and e!116137 mapRes!7028))))

(declare-fun condMapEmpty!7028 () Bool)

(declare-fun mapDefault!7028 () ValueCell!1716)

(assert (=> b!175974 (= condMapEmpty!7028 (= (arr!3503 (_values!3611 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1716)) mapDefault!7028)))))

(declare-fun b!175975 () Bool)

(declare-fun res!83417 () Bool)

(assert (=> b!175975 (=> (not res!83417) (not e!116134))))

(assert (=> b!175975 (= res!83417 (not (= key!828 (bvneg key!828))))))

(declare-fun b!175976 () Bool)

(declare-fun res!83420 () Bool)

(assert (=> b!175976 (=> (not res!83420) (not e!116134))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!175976 (= res!83420 (validMask!0 (mask!8537 thiss!1248)))))

(declare-fun mapNonEmpty!7028 () Bool)

(declare-fun tp!15727 () Bool)

(declare-fun e!116135 () Bool)

(assert (=> mapNonEmpty!7028 (= mapRes!7028 (and tp!15727 e!116135))))

(declare-fun mapKey!7028 () (_ BitVec 32))

(declare-fun mapRest!7028 () (Array (_ BitVec 32) ValueCell!1716))

(declare-fun mapValue!7028 () ValueCell!1716)

(assert (=> mapNonEmpty!7028 (= (arr!3503 (_values!3611 thiss!1248)) (store mapRest!7028 mapKey!7028 mapValue!7028))))

(declare-fun res!83419 () Bool)

(assert (=> start!17602 (=> (not res!83419) (not e!116134))))

(declare-fun valid!977 (LongMapFixedSize!2340) Bool)

(assert (=> start!17602 (= res!83419 (valid!977 thiss!1248))))

(assert (=> start!17602 e!116134))

(assert (=> start!17602 e!116136))

(assert (=> start!17602 true))

(declare-fun b!175977 () Bool)

(assert (=> b!175977 (= e!116135 tp_is_empty!4119)))

(declare-fun b!175978 () Bool)

(declare-fun res!83421 () Bool)

(assert (=> b!175978 (=> (not res!83421) (not e!116134))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!563 0))(
  ( (MissingZero!563 (index!4420 (_ BitVec 32))) (Found!563 (index!4421 (_ BitVec 32))) (Intermediate!563 (undefined!1375 Bool) (index!4422 (_ BitVec 32)) (x!19347 (_ BitVec 32))) (Undefined!563) (MissingVacant!563 (index!4423 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7380 (_ BitVec 32)) SeekEntryResult!563)

(assert (=> b!175978 (= res!83421 ((_ is Undefined!563) (seekEntryOrOpen!0 key!828 (_keys!5485 thiss!1248) (mask!8537 thiss!1248))))))

(assert (= (and start!17602 res!83419) b!175975))

(assert (= (and b!175975 res!83417) b!175978))

(assert (= (and b!175978 res!83421) b!175970))

(assert (= (and b!175970 res!83418) b!175976))

(assert (= (and b!175976 res!83420) b!175971))

(assert (= (and b!175974 condMapEmpty!7028) mapIsEmpty!7028))

(assert (= (and b!175974 (not condMapEmpty!7028)) mapNonEmpty!7028))

(assert (= (and mapNonEmpty!7028 ((_ is ValueCellFull!1716) mapValue!7028)) b!175977))

(assert (= (and b!175974 ((_ is ValueCellFull!1716) mapDefault!7028)) b!175972))

(assert (= b!175973 b!175974))

(assert (= start!17602 b!175973))

(declare-fun m!204851 () Bool)

(assert (=> b!175976 m!204851))

(declare-fun m!204853 () Bool)

(assert (=> mapNonEmpty!7028 m!204853))

(declare-fun m!204855 () Bool)

(assert (=> b!175970 m!204855))

(assert (=> b!175970 m!204855))

(declare-fun m!204857 () Bool)

(assert (=> b!175970 m!204857))

(declare-fun m!204859 () Bool)

(assert (=> b!175973 m!204859))

(declare-fun m!204861 () Bool)

(assert (=> b!175973 m!204861))

(declare-fun m!204863 () Bool)

(assert (=> b!175978 m!204863))

(declare-fun m!204865 () Bool)

(assert (=> start!17602 m!204865))

(check-sat b_and!10853 (not b!175978) (not b!175973) (not b!175976) (not b_next!4347) tp_is_empty!4119 (not start!17602) (not b!175970) (not mapNonEmpty!7028))
(check-sat b_and!10853 (not b_next!4347))
(get-model)

(declare-fun d!53495 () Bool)

(assert (=> d!53495 (= (array_inv!2233 (_keys!5485 thiss!1248)) (bvsge (size!3805 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!175973 d!53495))

(declare-fun d!53497 () Bool)

(assert (=> d!53497 (= (array_inv!2234 (_values!3611 thiss!1248)) (bvsge (size!3806 (_values!3611 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!175973 d!53497))

(declare-fun d!53499 () Bool)

(declare-fun res!83443 () Bool)

(declare-fun e!116159 () Bool)

(assert (=> d!53499 (=> (not res!83443) (not e!116159))))

(declare-fun simpleValid!149 (LongMapFixedSize!2340) Bool)

(assert (=> d!53499 (= res!83443 (simpleValid!149 thiss!1248))))

(assert (=> d!53499 (= (valid!977 thiss!1248) e!116159)))

(declare-fun b!176012 () Bool)

(declare-fun res!83444 () Bool)

(assert (=> b!176012 (=> (not res!83444) (not e!116159))))

(declare-fun arrayCountValidKeys!0 (array!7380 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!176012 (= res!83444 (= (arrayCountValidKeys!0 (_keys!5485 thiss!1248) #b00000000000000000000000000000000 (size!3805 (_keys!5485 thiss!1248))) (_size!1219 thiss!1248)))))

(declare-fun b!176013 () Bool)

(declare-fun res!83445 () Bool)

(assert (=> b!176013 (=> (not res!83445) (not e!116159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7380 (_ BitVec 32)) Bool)

(assert (=> b!176013 (= res!83445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5485 thiss!1248) (mask!8537 thiss!1248)))))

(declare-fun b!176014 () Bool)

(declare-datatypes ((List!2250 0))(
  ( (Nil!2247) (Cons!2246 (h!2866 (_ BitVec 64)) (t!7082 List!2250)) )
))
(declare-fun arrayNoDuplicates!0 (array!7380 (_ BitVec 32) List!2250) Bool)

(assert (=> b!176014 (= e!116159 (arrayNoDuplicates!0 (_keys!5485 thiss!1248) #b00000000000000000000000000000000 Nil!2247))))

(assert (= (and d!53499 res!83443) b!176012))

(assert (= (and b!176012 res!83444) b!176013))

(assert (= (and b!176013 res!83445) b!176014))

(declare-fun m!204883 () Bool)

(assert (=> d!53499 m!204883))

(declare-fun m!204885 () Bool)

(assert (=> b!176012 m!204885))

(declare-fun m!204887 () Bool)

(assert (=> b!176013 m!204887))

(declare-fun m!204889 () Bool)

(assert (=> b!176014 m!204889))

(assert (=> start!17602 d!53499))

(declare-fun d!53501 () Bool)

(assert (=> d!53501 (= (validMask!0 (mask!8537 thiss!1248)) (and (or (= (mask!8537 thiss!1248) #b00000000000000000000000000000111) (= (mask!8537 thiss!1248) #b00000000000000000000000000001111) (= (mask!8537 thiss!1248) #b00000000000000000000000000011111) (= (mask!8537 thiss!1248) #b00000000000000000000000000111111) (= (mask!8537 thiss!1248) #b00000000000000000000000001111111) (= (mask!8537 thiss!1248) #b00000000000000000000000011111111) (= (mask!8537 thiss!1248) #b00000000000000000000000111111111) (= (mask!8537 thiss!1248) #b00000000000000000000001111111111) (= (mask!8537 thiss!1248) #b00000000000000000000011111111111) (= (mask!8537 thiss!1248) #b00000000000000000000111111111111) (= (mask!8537 thiss!1248) #b00000000000000000001111111111111) (= (mask!8537 thiss!1248) #b00000000000000000011111111111111) (= (mask!8537 thiss!1248) #b00000000000000000111111111111111) (= (mask!8537 thiss!1248) #b00000000000000001111111111111111) (= (mask!8537 thiss!1248) #b00000000000000011111111111111111) (= (mask!8537 thiss!1248) #b00000000000000111111111111111111) (= (mask!8537 thiss!1248) #b00000000000001111111111111111111) (= (mask!8537 thiss!1248) #b00000000000011111111111111111111) (= (mask!8537 thiss!1248) #b00000000000111111111111111111111) (= (mask!8537 thiss!1248) #b00000000001111111111111111111111) (= (mask!8537 thiss!1248) #b00000000011111111111111111111111) (= (mask!8537 thiss!1248) #b00000000111111111111111111111111) (= (mask!8537 thiss!1248) #b00000001111111111111111111111111) (= (mask!8537 thiss!1248) #b00000011111111111111111111111111) (= (mask!8537 thiss!1248) #b00000111111111111111111111111111) (= (mask!8537 thiss!1248) #b00001111111111111111111111111111) (= (mask!8537 thiss!1248) #b00011111111111111111111111111111) (= (mask!8537 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8537 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!175976 d!53501))

(declare-fun b!176027 () Bool)

(declare-fun e!116166 () SeekEntryResult!563)

(declare-fun lt!87111 () SeekEntryResult!563)

(assert (=> b!176027 (= e!116166 (MissingZero!563 (index!4422 lt!87111)))))

(declare-fun b!176028 () Bool)

(declare-fun e!116167 () SeekEntryResult!563)

(assert (=> b!176028 (= e!116167 Undefined!563)))

(declare-fun b!176029 () Bool)

(declare-fun e!116168 () SeekEntryResult!563)

(assert (=> b!176029 (= e!116168 (Found!563 (index!4422 lt!87111)))))

(declare-fun d!53503 () Bool)

(declare-fun lt!87112 () SeekEntryResult!563)

(assert (=> d!53503 (and (or ((_ is Undefined!563) lt!87112) (not ((_ is Found!563) lt!87112)) (and (bvsge (index!4421 lt!87112) #b00000000000000000000000000000000) (bvslt (index!4421 lt!87112) (size!3805 (_keys!5485 thiss!1248))))) (or ((_ is Undefined!563) lt!87112) ((_ is Found!563) lt!87112) (not ((_ is MissingZero!563) lt!87112)) (and (bvsge (index!4420 lt!87112) #b00000000000000000000000000000000) (bvslt (index!4420 lt!87112) (size!3805 (_keys!5485 thiss!1248))))) (or ((_ is Undefined!563) lt!87112) ((_ is Found!563) lt!87112) ((_ is MissingZero!563) lt!87112) (not ((_ is MissingVacant!563) lt!87112)) (and (bvsge (index!4423 lt!87112) #b00000000000000000000000000000000) (bvslt (index!4423 lt!87112) (size!3805 (_keys!5485 thiss!1248))))) (or ((_ is Undefined!563) lt!87112) (ite ((_ is Found!563) lt!87112) (= (select (arr!3502 (_keys!5485 thiss!1248)) (index!4421 lt!87112)) key!828) (ite ((_ is MissingZero!563) lt!87112) (= (select (arr!3502 (_keys!5485 thiss!1248)) (index!4420 lt!87112)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!563) lt!87112) (= (select (arr!3502 (_keys!5485 thiss!1248)) (index!4423 lt!87112)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!53503 (= lt!87112 e!116167)))

(declare-fun c!31531 () Bool)

(assert (=> d!53503 (= c!31531 (and ((_ is Intermediate!563) lt!87111) (undefined!1375 lt!87111)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7380 (_ BitVec 32)) SeekEntryResult!563)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!53503 (= lt!87111 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8537 thiss!1248)) key!828 (_keys!5485 thiss!1248) (mask!8537 thiss!1248)))))

(assert (=> d!53503 (validMask!0 (mask!8537 thiss!1248))))

(assert (=> d!53503 (= (seekEntryOrOpen!0 key!828 (_keys!5485 thiss!1248) (mask!8537 thiss!1248)) lt!87112)))

(declare-fun b!176030 () Bool)

(assert (=> b!176030 (= e!116167 e!116168)))

(declare-fun lt!87113 () (_ BitVec 64))

(assert (=> b!176030 (= lt!87113 (select (arr!3502 (_keys!5485 thiss!1248)) (index!4422 lt!87111)))))

(declare-fun c!31532 () Bool)

(assert (=> b!176030 (= c!31532 (= lt!87113 key!828))))

(declare-fun b!176031 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7380 (_ BitVec 32)) SeekEntryResult!563)

(assert (=> b!176031 (= e!116166 (seekKeyOrZeroReturnVacant!0 (x!19347 lt!87111) (index!4422 lt!87111) (index!4422 lt!87111) key!828 (_keys!5485 thiss!1248) (mask!8537 thiss!1248)))))

(declare-fun b!176032 () Bool)

(declare-fun c!31530 () Bool)

(assert (=> b!176032 (= c!31530 (= lt!87113 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!176032 (= e!116168 e!116166)))

(assert (= (and d!53503 c!31531) b!176028))

(assert (= (and d!53503 (not c!31531)) b!176030))

(assert (= (and b!176030 c!31532) b!176029))

(assert (= (and b!176030 (not c!31532)) b!176032))

(assert (= (and b!176032 c!31530) b!176027))

(assert (= (and b!176032 (not c!31530)) b!176031))

(declare-fun m!204891 () Bool)

(assert (=> d!53503 m!204891))

(declare-fun m!204893 () Bool)

(assert (=> d!53503 m!204893))

(assert (=> d!53503 m!204891))

(assert (=> d!53503 m!204851))

(declare-fun m!204895 () Bool)

(assert (=> d!53503 m!204895))

(declare-fun m!204897 () Bool)

(assert (=> d!53503 m!204897))

(declare-fun m!204899 () Bool)

(assert (=> d!53503 m!204899))

(declare-fun m!204901 () Bool)

(assert (=> b!176030 m!204901))

(declare-fun m!204903 () Bool)

(assert (=> b!176031 m!204903))

(assert (=> b!175978 d!53503))

(declare-fun d!53505 () Bool)

(declare-fun e!116174 () Bool)

(assert (=> d!53505 e!116174))

(declare-fun res!83448 () Bool)

(assert (=> d!53505 (=> res!83448 e!116174)))

(declare-fun lt!87124 () Bool)

(assert (=> d!53505 (= res!83448 (not lt!87124))))

(declare-fun lt!87125 () Bool)

(assert (=> d!53505 (= lt!87124 lt!87125)))

(declare-datatypes ((Unit!5393 0))(
  ( (Unit!5394) )
))
(declare-fun lt!87122 () Unit!5393)

(declare-fun e!116173 () Unit!5393)

(assert (=> d!53505 (= lt!87122 e!116173)))

(declare-fun c!31535 () Bool)

(assert (=> d!53505 (= c!31535 lt!87125)))

(declare-fun containsKey!194 (List!2248 (_ BitVec 64)) Bool)

(assert (=> d!53505 (= lt!87125 (containsKey!194 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248))) key!828))))

(assert (=> d!53505 (= (contains!1176 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248)) key!828) lt!87124)))

(declare-fun b!176039 () Bool)

(declare-fun lt!87123 () Unit!5393)

(assert (=> b!176039 (= e!116173 lt!87123)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!143 (List!2248 (_ BitVec 64)) Unit!5393)

(assert (=> b!176039 (= lt!87123 (lemmaContainsKeyImpliesGetValueByKeyDefined!143 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248))) key!828))))

(declare-datatypes ((Option!196 0))(
  ( (Some!195 (v!3978 V!5139)) (None!194) )
))
(declare-fun isDefined!144 (Option!196) Bool)

(declare-fun getValueByKey!190 (List!2248 (_ BitVec 64)) Option!196)

(assert (=> b!176039 (isDefined!144 (getValueByKey!190 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248))) key!828))))

(declare-fun b!176040 () Bool)

(declare-fun Unit!5395 () Unit!5393)

(assert (=> b!176040 (= e!116173 Unit!5395)))

(declare-fun b!176041 () Bool)

(assert (=> b!176041 (= e!116174 (isDefined!144 (getValueByKey!190 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248))) key!828)))))

(assert (= (and d!53505 c!31535) b!176039))

(assert (= (and d!53505 (not c!31535)) b!176040))

(assert (= (and d!53505 (not res!83448)) b!176041))

(declare-fun m!204905 () Bool)

(assert (=> d!53505 m!204905))

(declare-fun m!204907 () Bool)

(assert (=> b!176039 m!204907))

(declare-fun m!204909 () Bool)

(assert (=> b!176039 m!204909))

(assert (=> b!176039 m!204909))

(declare-fun m!204911 () Bool)

(assert (=> b!176039 m!204911))

(assert (=> b!176041 m!204909))

(assert (=> b!176041 m!204909))

(assert (=> b!176041 m!204911))

(assert (=> b!175970 d!53505))

(declare-fun b!176084 () Bool)

(declare-fun e!116201 () Unit!5393)

(declare-fun lt!87184 () Unit!5393)

(assert (=> b!176084 (= e!116201 lt!87184)))

(declare-fun lt!87180 () ListLongMap!2209)

(declare-fun getCurrentListMapNoExtraKeys!166 (array!7380 array!7382 (_ BitVec 32) (_ BitVec 32) V!5139 V!5139 (_ BitVec 32) Int) ListLongMap!2209)

(assert (=> b!176084 (= lt!87180 (getCurrentListMapNoExtraKeys!166 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248)))))

(declare-fun lt!87173 () (_ BitVec 64))

(assert (=> b!176084 (= lt!87173 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87189 () (_ BitVec 64))

(assert (=> b!176084 (= lt!87189 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87183 () Unit!5393)

(declare-fun addStillContains!112 (ListLongMap!2209 (_ BitVec 64) V!5139 (_ BitVec 64)) Unit!5393)

(assert (=> b!176084 (= lt!87183 (addStillContains!112 lt!87180 lt!87173 (zeroValue!3469 thiss!1248) lt!87189))))

(declare-fun +!248 (ListLongMap!2209 tuple2!3268) ListLongMap!2209)

(assert (=> b!176084 (contains!1176 (+!248 lt!87180 (tuple2!3269 lt!87173 (zeroValue!3469 thiss!1248))) lt!87189)))

(declare-fun lt!87179 () Unit!5393)

(assert (=> b!176084 (= lt!87179 lt!87183)))

(declare-fun lt!87185 () ListLongMap!2209)

(assert (=> b!176084 (= lt!87185 (getCurrentListMapNoExtraKeys!166 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248)))))

(declare-fun lt!87181 () (_ BitVec 64))

(assert (=> b!176084 (= lt!87181 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87174 () (_ BitVec 64))

(assert (=> b!176084 (= lt!87174 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87170 () Unit!5393)

(declare-fun addApplyDifferent!112 (ListLongMap!2209 (_ BitVec 64) V!5139 (_ BitVec 64)) Unit!5393)

(assert (=> b!176084 (= lt!87170 (addApplyDifferent!112 lt!87185 lt!87181 (minValue!3469 thiss!1248) lt!87174))))

(declare-fun apply!136 (ListLongMap!2209 (_ BitVec 64)) V!5139)

(assert (=> b!176084 (= (apply!136 (+!248 lt!87185 (tuple2!3269 lt!87181 (minValue!3469 thiss!1248))) lt!87174) (apply!136 lt!87185 lt!87174))))

(declare-fun lt!87191 () Unit!5393)

(assert (=> b!176084 (= lt!87191 lt!87170)))

(declare-fun lt!87190 () ListLongMap!2209)

(assert (=> b!176084 (= lt!87190 (getCurrentListMapNoExtraKeys!166 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248)))))

(declare-fun lt!87172 () (_ BitVec 64))

(assert (=> b!176084 (= lt!87172 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87175 () (_ BitVec 64))

(assert (=> b!176084 (= lt!87175 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87176 () Unit!5393)

(assert (=> b!176084 (= lt!87176 (addApplyDifferent!112 lt!87190 lt!87172 (zeroValue!3469 thiss!1248) lt!87175))))

(assert (=> b!176084 (= (apply!136 (+!248 lt!87190 (tuple2!3269 lt!87172 (zeroValue!3469 thiss!1248))) lt!87175) (apply!136 lt!87190 lt!87175))))

(declare-fun lt!87187 () Unit!5393)

(assert (=> b!176084 (= lt!87187 lt!87176)))

(declare-fun lt!87182 () ListLongMap!2209)

(assert (=> b!176084 (= lt!87182 (getCurrentListMapNoExtraKeys!166 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248)))))

(declare-fun lt!87177 () (_ BitVec 64))

(assert (=> b!176084 (= lt!87177 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87178 () (_ BitVec 64))

(assert (=> b!176084 (= lt!87178 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!176084 (= lt!87184 (addApplyDifferent!112 lt!87182 lt!87177 (minValue!3469 thiss!1248) lt!87178))))

(assert (=> b!176084 (= (apply!136 (+!248 lt!87182 (tuple2!3269 lt!87177 (minValue!3469 thiss!1248))) lt!87178) (apply!136 lt!87182 lt!87178))))

(declare-fun b!176085 () Bool)

(declare-fun c!31551 () Bool)

(assert (=> b!176085 (= c!31551 (and (not (= (bvand (extraKeys!3365 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3365 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!116211 () ListLongMap!2209)

(declare-fun e!116205 () ListLongMap!2209)

(assert (=> b!176085 (= e!116211 e!116205)))

(declare-fun b!176086 () Bool)

(declare-fun e!116206 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!176086 (= e!116206 (validKeyInArray!0 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17822 () Bool)

(declare-fun call!17829 () Bool)

(declare-fun lt!87171 () ListLongMap!2209)

(assert (=> bm!17822 (= call!17829 (contains!1176 lt!87171 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!176087 () Bool)

(declare-fun e!116204 () Bool)

(assert (=> b!176087 (= e!116204 (= (apply!136 lt!87171 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3469 thiss!1248)))))

(declare-fun b!176088 () Bool)

(declare-fun e!116203 () ListLongMap!2209)

(declare-fun call!17826 () ListLongMap!2209)

(assert (=> b!176088 (= e!116203 (+!248 call!17826 (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248))))))

(declare-fun b!176089 () Bool)

(declare-fun e!116213 () Bool)

(declare-fun e!116207 () Bool)

(assert (=> b!176089 (= e!116213 e!116207)))

(declare-fun res!83467 () Bool)

(assert (=> b!176089 (=> (not res!83467) (not e!116207))))

(assert (=> b!176089 (= res!83467 (contains!1176 lt!87171 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!176089 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3805 (_keys!5485 thiss!1248))))))

(declare-fun b!176090 () Bool)

(declare-fun e!116202 () Bool)

(assert (=> b!176090 (= e!116202 (not call!17829))))

(declare-fun b!176091 () Bool)

(declare-fun Unit!5396 () Unit!5393)

(assert (=> b!176091 (= e!116201 Unit!5396)))

(declare-fun b!176092 () Bool)

(declare-fun call!17828 () ListLongMap!2209)

(assert (=> b!176092 (= e!116205 call!17828)))

(declare-fun bm!17823 () Bool)

(declare-fun call!17830 () ListLongMap!2209)

(assert (=> bm!17823 (= call!17830 (getCurrentListMapNoExtraKeys!166 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248)))))

(declare-fun bm!17824 () Bool)

(declare-fun call!17831 () Bool)

(assert (=> bm!17824 (= call!17831 (contains!1176 lt!87171 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!17825 () Bool)

(assert (=> bm!17825 (= call!17828 call!17826)))

(declare-fun b!176094 () Bool)

(declare-fun e!116209 () Bool)

(assert (=> b!176094 (= e!116209 (not call!17831))))

(declare-fun c!31552 () Bool)

(declare-fun call!17825 () ListLongMap!2209)

(declare-fun c!31549 () Bool)

(declare-fun call!17827 () ListLongMap!2209)

(declare-fun bm!17826 () Bool)

(assert (=> bm!17826 (= call!17826 (+!248 (ite c!31549 call!17830 (ite c!31552 call!17827 call!17825)) (ite (or c!31549 c!31552) (tuple2!3269 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3469 thiss!1248)) (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248)))))))

(declare-fun b!176095 () Bool)

(declare-fun e!116210 () Bool)

(assert (=> b!176095 (= e!116202 e!116210)))

(declare-fun res!83472 () Bool)

(assert (=> b!176095 (= res!83472 call!17829)))

(assert (=> b!176095 (=> (not res!83472) (not e!116210))))

(declare-fun b!176096 () Bool)

(declare-fun get!1999 (ValueCell!1716 V!5139) V!5139)

(declare-fun dynLambda!474 (Int (_ BitVec 64)) V!5139)

(assert (=> b!176096 (= e!116207 (= (apply!136 lt!87171 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)) (get!1999 (select (arr!3503 (_values!3611 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!474 (defaultEntry!3628 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!176096 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3806 (_values!3611 thiss!1248))))))

(assert (=> b!176096 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3805 (_keys!5485 thiss!1248))))))

(declare-fun b!176097 () Bool)

(assert (=> b!176097 (= e!116205 call!17825)))

(declare-fun b!176098 () Bool)

(declare-fun e!116208 () Bool)

(assert (=> b!176098 (= e!116208 e!116202)))

(declare-fun c!31553 () Bool)

(assert (=> b!176098 (= c!31553 (not (= (bvand (extraKeys!3365 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!176099 () Bool)

(assert (=> b!176099 (= e!116209 e!116204)))

(declare-fun res!83469 () Bool)

(assert (=> b!176099 (= res!83469 call!17831)))

(assert (=> b!176099 (=> (not res!83469) (not e!116204))))

(declare-fun b!176100 () Bool)

(declare-fun res!83473 () Bool)

(assert (=> b!176100 (=> (not res!83473) (not e!116208))))

(assert (=> b!176100 (= res!83473 e!116209)))

(declare-fun c!31550 () Bool)

(assert (=> b!176100 (= c!31550 (not (= (bvand (extraKeys!3365 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!17827 () Bool)

(assert (=> bm!17827 (= call!17825 call!17827)))

(declare-fun b!176101 () Bool)

(assert (=> b!176101 (= e!116210 (= (apply!136 lt!87171 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3469 thiss!1248)))))

(declare-fun b!176102 () Bool)

(declare-fun res!83471 () Bool)

(assert (=> b!176102 (=> (not res!83471) (not e!116208))))

(assert (=> b!176102 (= res!83471 e!116213)))

(declare-fun res!83470 () Bool)

(assert (=> b!176102 (=> res!83470 e!116213)))

(declare-fun e!116212 () Bool)

(assert (=> b!176102 (= res!83470 (not e!116212))))

(declare-fun res!83474 () Bool)

(assert (=> b!176102 (=> (not res!83474) (not e!116212))))

(assert (=> b!176102 (= res!83474 (bvslt #b00000000000000000000000000000000 (size!3805 (_keys!5485 thiss!1248))))))

(declare-fun b!176103 () Bool)

(assert (=> b!176103 (= e!116212 (validKeyInArray!0 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17828 () Bool)

(assert (=> bm!17828 (= call!17827 call!17830)))

(declare-fun b!176104 () Bool)

(assert (=> b!176104 (= e!116211 call!17828)))

(declare-fun b!176093 () Bool)

(assert (=> b!176093 (= e!116203 e!116211)))

(assert (=> b!176093 (= c!31552 (and (not (= (bvand (extraKeys!3365 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3365 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!53507 () Bool)

(assert (=> d!53507 e!116208))

(declare-fun res!83468 () Bool)

(assert (=> d!53507 (=> (not res!83468) (not e!116208))))

(assert (=> d!53507 (= res!83468 (or (bvsge #b00000000000000000000000000000000 (size!3805 (_keys!5485 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3805 (_keys!5485 thiss!1248))))))))

(declare-fun lt!87188 () ListLongMap!2209)

(assert (=> d!53507 (= lt!87171 lt!87188)))

(declare-fun lt!87186 () Unit!5393)

(assert (=> d!53507 (= lt!87186 e!116201)))

(declare-fun c!31548 () Bool)

(assert (=> d!53507 (= c!31548 e!116206)))

(declare-fun res!83475 () Bool)

(assert (=> d!53507 (=> (not res!83475) (not e!116206))))

(assert (=> d!53507 (= res!83475 (bvslt #b00000000000000000000000000000000 (size!3805 (_keys!5485 thiss!1248))))))

(assert (=> d!53507 (= lt!87188 e!116203)))

(assert (=> d!53507 (= c!31549 (and (not (= (bvand (extraKeys!3365 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3365 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!53507 (validMask!0 (mask!8537 thiss!1248))))

(assert (=> d!53507 (= (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248)) lt!87171)))

(assert (= (and d!53507 c!31549) b!176088))

(assert (= (and d!53507 (not c!31549)) b!176093))

(assert (= (and b!176093 c!31552) b!176104))

(assert (= (and b!176093 (not c!31552)) b!176085))

(assert (= (and b!176085 c!31551) b!176092))

(assert (= (and b!176085 (not c!31551)) b!176097))

(assert (= (or b!176092 b!176097) bm!17827))

(assert (= (or b!176104 bm!17827) bm!17828))

(assert (= (or b!176104 b!176092) bm!17825))

(assert (= (or b!176088 bm!17828) bm!17823))

(assert (= (or b!176088 bm!17825) bm!17826))

(assert (= (and d!53507 res!83475) b!176086))

(assert (= (and d!53507 c!31548) b!176084))

(assert (= (and d!53507 (not c!31548)) b!176091))

(assert (= (and d!53507 res!83468) b!176102))

(assert (= (and b!176102 res!83474) b!176103))

(assert (= (and b!176102 (not res!83470)) b!176089))

(assert (= (and b!176089 res!83467) b!176096))

(assert (= (and b!176102 res!83471) b!176100))

(assert (= (and b!176100 c!31550) b!176099))

(assert (= (and b!176100 (not c!31550)) b!176094))

(assert (= (and b!176099 res!83469) b!176087))

(assert (= (or b!176099 b!176094) bm!17824))

(assert (= (and b!176100 res!83473) b!176098))

(assert (= (and b!176098 c!31553) b!176095))

(assert (= (and b!176098 (not c!31553)) b!176090))

(assert (= (and b!176095 res!83472) b!176101))

(assert (= (or b!176095 b!176090) bm!17822))

(declare-fun b_lambda!7057 () Bool)

(assert (=> (not b_lambda!7057) (not b!176096)))

(declare-fun t!7081 () Bool)

(declare-fun tb!2791 () Bool)

(assert (=> (and b!175973 (= (defaultEntry!3628 thiss!1248) (defaultEntry!3628 thiss!1248)) t!7081) tb!2791))

(declare-fun result!4631 () Bool)

(assert (=> tb!2791 (= result!4631 tp_is_empty!4119)))

(assert (=> b!176096 t!7081))

(declare-fun b_and!10857 () Bool)

(assert (= b_and!10853 (and (=> t!7081 result!4631) b_and!10857)))

(declare-fun m!204913 () Bool)

(assert (=> b!176087 m!204913))

(declare-fun m!204915 () Bool)

(assert (=> b!176088 m!204915))

(declare-fun m!204917 () Bool)

(assert (=> b!176096 m!204917))

(declare-fun m!204919 () Bool)

(assert (=> b!176096 m!204919))

(declare-fun m!204921 () Bool)

(assert (=> b!176096 m!204921))

(declare-fun m!204923 () Bool)

(assert (=> b!176096 m!204923))

(declare-fun m!204925 () Bool)

(assert (=> b!176096 m!204925))

(assert (=> b!176096 m!204917))

(assert (=> b!176096 m!204923))

(assert (=> b!176096 m!204921))

(declare-fun m!204927 () Bool)

(assert (=> bm!17826 m!204927))

(assert (=> b!176103 m!204917))

(assert (=> b!176103 m!204917))

(declare-fun m!204929 () Bool)

(assert (=> b!176103 m!204929))

(declare-fun m!204931 () Bool)

(assert (=> b!176101 m!204931))

(declare-fun m!204933 () Bool)

(assert (=> bm!17822 m!204933))

(assert (=> b!176089 m!204917))

(assert (=> b!176089 m!204917))

(declare-fun m!204935 () Bool)

(assert (=> b!176089 m!204935))

(assert (=> d!53507 m!204851))

(declare-fun m!204937 () Bool)

(assert (=> b!176084 m!204937))

(declare-fun m!204939 () Bool)

(assert (=> b!176084 m!204939))

(declare-fun m!204941 () Bool)

(assert (=> b!176084 m!204941))

(declare-fun m!204943 () Bool)

(assert (=> b!176084 m!204943))

(declare-fun m!204945 () Bool)

(assert (=> b!176084 m!204945))

(declare-fun m!204947 () Bool)

(assert (=> b!176084 m!204947))

(declare-fun m!204949 () Bool)

(assert (=> b!176084 m!204949))

(declare-fun m!204951 () Bool)

(assert (=> b!176084 m!204951))

(assert (=> b!176084 m!204917))

(declare-fun m!204953 () Bool)

(assert (=> b!176084 m!204953))

(declare-fun m!204955 () Bool)

(assert (=> b!176084 m!204955))

(declare-fun m!204957 () Bool)

(assert (=> b!176084 m!204957))

(declare-fun m!204959 () Bool)

(assert (=> b!176084 m!204959))

(declare-fun m!204961 () Bool)

(assert (=> b!176084 m!204961))

(declare-fun m!204963 () Bool)

(assert (=> b!176084 m!204963))

(assert (=> b!176084 m!204959))

(declare-fun m!204965 () Bool)

(assert (=> b!176084 m!204965))

(declare-fun m!204967 () Bool)

(assert (=> b!176084 m!204967))

(assert (=> b!176084 m!204947))

(assert (=> b!176084 m!204937))

(assert (=> b!176084 m!204943))

(assert (=> b!176086 m!204917))

(assert (=> b!176086 m!204917))

(assert (=> b!176086 m!204929))

(declare-fun m!204969 () Bool)

(assert (=> bm!17824 m!204969))

(assert (=> bm!17823 m!204941))

(assert (=> b!175970 d!53507))

(declare-fun b!176114 () Bool)

(declare-fun e!116218 () Bool)

(assert (=> b!176114 (= e!116218 tp_is_empty!4119)))

(declare-fun b!176113 () Bool)

(declare-fun e!116219 () Bool)

(assert (=> b!176113 (= e!116219 tp_is_empty!4119)))

(declare-fun condMapEmpty!7034 () Bool)

(declare-fun mapDefault!7034 () ValueCell!1716)

(assert (=> mapNonEmpty!7028 (= condMapEmpty!7034 (= mapRest!7028 ((as const (Array (_ BitVec 32) ValueCell!1716)) mapDefault!7034)))))

(declare-fun mapRes!7034 () Bool)

(assert (=> mapNonEmpty!7028 (= tp!15727 (and e!116218 mapRes!7034))))

(declare-fun mapIsEmpty!7034 () Bool)

(assert (=> mapIsEmpty!7034 mapRes!7034))

(declare-fun mapNonEmpty!7034 () Bool)

(declare-fun tp!15737 () Bool)

(assert (=> mapNonEmpty!7034 (= mapRes!7034 (and tp!15737 e!116219))))

(declare-fun mapKey!7034 () (_ BitVec 32))

(declare-fun mapValue!7034 () ValueCell!1716)

(declare-fun mapRest!7034 () (Array (_ BitVec 32) ValueCell!1716))

(assert (=> mapNonEmpty!7034 (= mapRest!7028 (store mapRest!7034 mapKey!7034 mapValue!7034))))

(assert (= (and mapNonEmpty!7028 condMapEmpty!7034) mapIsEmpty!7034))

(assert (= (and mapNonEmpty!7028 (not condMapEmpty!7034)) mapNonEmpty!7034))

(assert (= (and mapNonEmpty!7034 ((_ is ValueCellFull!1716) mapValue!7034)) b!176113))

(assert (= (and mapNonEmpty!7028 ((_ is ValueCellFull!1716) mapDefault!7034)) b!176114))

(declare-fun m!204971 () Bool)

(assert (=> mapNonEmpty!7034 m!204971))

(declare-fun b_lambda!7059 () Bool)

(assert (= b_lambda!7057 (or (and b!175973 b_free!4347) b_lambda!7059)))

(check-sat (not b!176012) (not b!176101) (not b!176089) (not b!176088) (not bm!17823) (not b!176031) (not b!176014) (not bm!17822) (not bm!17826) (not b!176103) (not mapNonEmpty!7034) (not b!176041) tp_is_empty!4119 b_and!10857 (not b_lambda!7059) (not d!53507) (not b!176039) (not b!176084) (not d!53505) (not b!176087) (not b!176013) (not d!53503) (not b!176086) (not b!176096) (not bm!17824) (not d!53499) (not b_next!4347))
(check-sat b_and!10857 (not b_next!4347))
(get-model)

(declare-fun d!53509 () Bool)

(declare-fun get!2000 (Option!196) V!5139)

(assert (=> d!53509 (= (apply!136 lt!87171 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)) (get!2000 (getValueByKey!190 (toList!1120 lt!87171) (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7262 () Bool)

(assert (= bs!7262 d!53509))

(assert (=> bs!7262 m!204917))

(declare-fun m!204973 () Bool)

(assert (=> bs!7262 m!204973))

(assert (=> bs!7262 m!204973))

(declare-fun m!204975 () Bool)

(assert (=> bs!7262 m!204975))

(assert (=> b!176096 d!53509))

(declare-fun d!53511 () Bool)

(declare-fun c!31556 () Bool)

(assert (=> d!53511 (= c!31556 ((_ is ValueCellFull!1716) (select (arr!3503 (_values!3611 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!116222 () V!5139)

(assert (=> d!53511 (= (get!1999 (select (arr!3503 (_values!3611 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!474 (defaultEntry!3628 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!116222)))

(declare-fun b!176119 () Bool)

(declare-fun get!2001 (ValueCell!1716 V!5139) V!5139)

(assert (=> b!176119 (= e!116222 (get!2001 (select (arr!3503 (_values!3611 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!474 (defaultEntry!3628 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!176120 () Bool)

(declare-fun get!2002 (ValueCell!1716 V!5139) V!5139)

(assert (=> b!176120 (= e!116222 (get!2002 (select (arr!3503 (_values!3611 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!474 (defaultEntry!3628 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53511 c!31556) b!176119))

(assert (= (and d!53511 (not c!31556)) b!176120))

(assert (=> b!176119 m!204921))

(assert (=> b!176119 m!204923))

(declare-fun m!204977 () Bool)

(assert (=> b!176119 m!204977))

(assert (=> b!176120 m!204921))

(assert (=> b!176120 m!204923))

(declare-fun m!204979 () Bool)

(assert (=> b!176120 m!204979))

(assert (=> b!176096 d!53511))

(declare-fun d!53513 () Bool)

(declare-fun e!116224 () Bool)

(assert (=> d!53513 e!116224))

(declare-fun res!83476 () Bool)

(assert (=> d!53513 (=> res!83476 e!116224)))

(declare-fun lt!87194 () Bool)

(assert (=> d!53513 (= res!83476 (not lt!87194))))

(declare-fun lt!87195 () Bool)

(assert (=> d!53513 (= lt!87194 lt!87195)))

(declare-fun lt!87192 () Unit!5393)

(declare-fun e!116223 () Unit!5393)

(assert (=> d!53513 (= lt!87192 e!116223)))

(declare-fun c!31557 () Bool)

(assert (=> d!53513 (= c!31557 lt!87195)))

(assert (=> d!53513 (= lt!87195 (containsKey!194 (toList!1120 lt!87171) (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!53513 (= (contains!1176 lt!87171 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)) lt!87194)))

(declare-fun b!176121 () Bool)

(declare-fun lt!87193 () Unit!5393)

(assert (=> b!176121 (= e!116223 lt!87193)))

(assert (=> b!176121 (= lt!87193 (lemmaContainsKeyImpliesGetValueByKeyDefined!143 (toList!1120 lt!87171) (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!176121 (isDefined!144 (getValueByKey!190 (toList!1120 lt!87171) (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!176122 () Bool)

(declare-fun Unit!5397 () Unit!5393)

(assert (=> b!176122 (= e!116223 Unit!5397)))

(declare-fun b!176123 () Bool)

(assert (=> b!176123 (= e!116224 (isDefined!144 (getValueByKey!190 (toList!1120 lt!87171) (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!53513 c!31557) b!176121))

(assert (= (and d!53513 (not c!31557)) b!176122))

(assert (= (and d!53513 (not res!83476)) b!176123))

(assert (=> d!53513 m!204917))

(declare-fun m!204981 () Bool)

(assert (=> d!53513 m!204981))

(assert (=> b!176121 m!204917))

(declare-fun m!204983 () Bool)

(assert (=> b!176121 m!204983))

(assert (=> b!176121 m!204917))

(assert (=> b!176121 m!204973))

(assert (=> b!176121 m!204973))

(declare-fun m!204985 () Bool)

(assert (=> b!176121 m!204985))

(assert (=> b!176123 m!204917))

(assert (=> b!176123 m!204973))

(assert (=> b!176123 m!204973))

(assert (=> b!176123 m!204985))

(assert (=> b!176089 d!53513))

(declare-fun d!53515 () Bool)

(assert (=> d!53515 (isDefined!144 (getValueByKey!190 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248))) key!828))))

(declare-fun lt!87198 () Unit!5393)

(declare-fun choose!951 (List!2248 (_ BitVec 64)) Unit!5393)

(assert (=> d!53515 (= lt!87198 (choose!951 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248))) key!828))))

(declare-fun e!116227 () Bool)

(assert (=> d!53515 e!116227))

(declare-fun res!83479 () Bool)

(assert (=> d!53515 (=> (not res!83479) (not e!116227))))

(declare-fun isStrictlySorted!331 (List!2248) Bool)

(assert (=> d!53515 (= res!83479 (isStrictlySorted!331 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248)))))))

(assert (=> d!53515 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!143 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248))) key!828) lt!87198)))

(declare-fun b!176126 () Bool)

(assert (=> b!176126 (= e!116227 (containsKey!194 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248))) key!828))))

(assert (= (and d!53515 res!83479) b!176126))

(assert (=> d!53515 m!204909))

(assert (=> d!53515 m!204909))

(assert (=> d!53515 m!204911))

(declare-fun m!204987 () Bool)

(assert (=> d!53515 m!204987))

(declare-fun m!204989 () Bool)

(assert (=> d!53515 m!204989))

(assert (=> b!176126 m!204905))

(assert (=> b!176039 d!53515))

(declare-fun d!53517 () Bool)

(declare-fun isEmpty!450 (Option!196) Bool)

(assert (=> d!53517 (= (isDefined!144 (getValueByKey!190 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248))) key!828)) (not (isEmpty!450 (getValueByKey!190 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248))) key!828))))))

(declare-fun bs!7263 () Bool)

(assert (= bs!7263 d!53517))

(assert (=> bs!7263 m!204909))

(declare-fun m!204991 () Bool)

(assert (=> bs!7263 m!204991))

(assert (=> b!176039 d!53517))

(declare-fun d!53519 () Bool)

(declare-fun c!31562 () Bool)

(assert (=> d!53519 (= c!31562 (and ((_ is Cons!2244) (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248)))) (= (_1!1644 (h!2864 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248))))) key!828)))))

(declare-fun e!116232 () Option!196)

(assert (=> d!53519 (= (getValueByKey!190 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248))) key!828) e!116232)))

(declare-fun b!176135 () Bool)

(assert (=> b!176135 (= e!116232 (Some!195 (_2!1644 (h!2864 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248)))))))))

(declare-fun b!176136 () Bool)

(declare-fun e!116233 () Option!196)

(assert (=> b!176136 (= e!116232 e!116233)))

(declare-fun c!31563 () Bool)

(assert (=> b!176136 (= c!31563 (and ((_ is Cons!2244) (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248)))) (not (= (_1!1644 (h!2864 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248))))) key!828))))))

(declare-fun b!176137 () Bool)

(assert (=> b!176137 (= e!116233 (getValueByKey!190 (t!7078 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248)))) key!828))))

(declare-fun b!176138 () Bool)

(assert (=> b!176138 (= e!116233 None!194)))

(assert (= (and d!53519 c!31562) b!176135))

(assert (= (and d!53519 (not c!31562)) b!176136))

(assert (= (and b!176136 c!31563) b!176137))

(assert (= (and b!176136 (not c!31563)) b!176138))

(declare-fun m!204993 () Bool)

(assert (=> b!176137 m!204993))

(assert (=> b!176039 d!53519))

(declare-fun b!176151 () Bool)

(declare-fun e!116242 () SeekEntryResult!563)

(assert (=> b!176151 (= e!116242 Undefined!563)))

(declare-fun b!176153 () Bool)

(declare-fun e!116240 () SeekEntryResult!563)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!176153 (= e!116240 (seekKeyOrZeroReturnVacant!0 (bvadd (x!19347 lt!87111) #b00000000000000000000000000000001) (nextIndex!0 (index!4422 lt!87111) (x!19347 lt!87111) (mask!8537 thiss!1248)) (index!4422 lt!87111) key!828 (_keys!5485 thiss!1248) (mask!8537 thiss!1248)))))

(declare-fun b!176154 () Bool)

(declare-fun c!31571 () Bool)

(declare-fun lt!87203 () (_ BitVec 64))

(assert (=> b!176154 (= c!31571 (= lt!87203 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!116241 () SeekEntryResult!563)

(assert (=> b!176154 (= e!116241 e!116240)))

(declare-fun b!176155 () Bool)

(assert (=> b!176155 (= e!116242 e!116241)))

(declare-fun c!31570 () Bool)

(assert (=> b!176155 (= c!31570 (= lt!87203 key!828))))

(declare-fun b!176156 () Bool)

(assert (=> b!176156 (= e!116240 (MissingVacant!563 (index!4422 lt!87111)))))

(declare-fun b!176152 () Bool)

(assert (=> b!176152 (= e!116241 (Found!563 (index!4422 lt!87111)))))

(declare-fun lt!87204 () SeekEntryResult!563)

(declare-fun d!53521 () Bool)

(assert (=> d!53521 (and (or ((_ is Undefined!563) lt!87204) (not ((_ is Found!563) lt!87204)) (and (bvsge (index!4421 lt!87204) #b00000000000000000000000000000000) (bvslt (index!4421 lt!87204) (size!3805 (_keys!5485 thiss!1248))))) (or ((_ is Undefined!563) lt!87204) ((_ is Found!563) lt!87204) (not ((_ is MissingVacant!563) lt!87204)) (not (= (index!4423 lt!87204) (index!4422 lt!87111))) (and (bvsge (index!4423 lt!87204) #b00000000000000000000000000000000) (bvslt (index!4423 lt!87204) (size!3805 (_keys!5485 thiss!1248))))) (or ((_ is Undefined!563) lt!87204) (ite ((_ is Found!563) lt!87204) (= (select (arr!3502 (_keys!5485 thiss!1248)) (index!4421 lt!87204)) key!828) (and ((_ is MissingVacant!563) lt!87204) (= (index!4423 lt!87204) (index!4422 lt!87111)) (= (select (arr!3502 (_keys!5485 thiss!1248)) (index!4423 lt!87204)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!53521 (= lt!87204 e!116242)))

(declare-fun c!31572 () Bool)

(assert (=> d!53521 (= c!31572 (bvsge (x!19347 lt!87111) #b01111111111111111111111111111110))))

(assert (=> d!53521 (= lt!87203 (select (arr!3502 (_keys!5485 thiss!1248)) (index!4422 lt!87111)))))

(assert (=> d!53521 (validMask!0 (mask!8537 thiss!1248))))

(assert (=> d!53521 (= (seekKeyOrZeroReturnVacant!0 (x!19347 lt!87111) (index!4422 lt!87111) (index!4422 lt!87111) key!828 (_keys!5485 thiss!1248) (mask!8537 thiss!1248)) lt!87204)))

(assert (= (and d!53521 c!31572) b!176151))

(assert (= (and d!53521 (not c!31572)) b!176155))

(assert (= (and b!176155 c!31570) b!176152))

(assert (= (and b!176155 (not c!31570)) b!176154))

(assert (= (and b!176154 c!31571) b!176156))

(assert (= (and b!176154 (not c!31571)) b!176153))

(declare-fun m!204995 () Bool)

(assert (=> b!176153 m!204995))

(assert (=> b!176153 m!204995))

(declare-fun m!204997 () Bool)

(assert (=> b!176153 m!204997))

(declare-fun m!204999 () Bool)

(assert (=> d!53521 m!204999))

(declare-fun m!205001 () Bool)

(assert (=> d!53521 m!205001))

(assert (=> d!53521 m!204901))

(assert (=> d!53521 m!204851))

(assert (=> b!176031 d!53521))

(assert (=> d!53507 d!53501))

(declare-fun d!53523 () Bool)

(declare-fun e!116244 () Bool)

(assert (=> d!53523 e!116244))

(declare-fun res!83480 () Bool)

(assert (=> d!53523 (=> res!83480 e!116244)))

(declare-fun lt!87207 () Bool)

(assert (=> d!53523 (= res!83480 (not lt!87207))))

(declare-fun lt!87208 () Bool)

(assert (=> d!53523 (= lt!87207 lt!87208)))

(declare-fun lt!87205 () Unit!5393)

(declare-fun e!116243 () Unit!5393)

(assert (=> d!53523 (= lt!87205 e!116243)))

(declare-fun c!31573 () Bool)

(assert (=> d!53523 (= c!31573 lt!87208)))

(assert (=> d!53523 (= lt!87208 (containsKey!194 (toList!1120 lt!87171) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!53523 (= (contains!1176 lt!87171 #b1000000000000000000000000000000000000000000000000000000000000000) lt!87207)))

(declare-fun b!176157 () Bool)

(declare-fun lt!87206 () Unit!5393)

(assert (=> b!176157 (= e!116243 lt!87206)))

(assert (=> b!176157 (= lt!87206 (lemmaContainsKeyImpliesGetValueByKeyDefined!143 (toList!1120 lt!87171) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!176157 (isDefined!144 (getValueByKey!190 (toList!1120 lt!87171) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!176158 () Bool)

(declare-fun Unit!5398 () Unit!5393)

(assert (=> b!176158 (= e!116243 Unit!5398)))

(declare-fun b!176159 () Bool)

(assert (=> b!176159 (= e!116244 (isDefined!144 (getValueByKey!190 (toList!1120 lt!87171) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53523 c!31573) b!176157))

(assert (= (and d!53523 (not c!31573)) b!176158))

(assert (= (and d!53523 (not res!83480)) b!176159))

(declare-fun m!205003 () Bool)

(assert (=> d!53523 m!205003))

(declare-fun m!205005 () Bool)

(assert (=> b!176157 m!205005))

(declare-fun m!205007 () Bool)

(assert (=> b!176157 m!205007))

(assert (=> b!176157 m!205007))

(declare-fun m!205009 () Bool)

(assert (=> b!176157 m!205009))

(assert (=> b!176159 m!205007))

(assert (=> b!176159 m!205007))

(assert (=> b!176159 m!205009))

(assert (=> bm!17822 d!53523))

(declare-fun d!53525 () Bool)

(declare-fun res!83485 () Bool)

(declare-fun e!116249 () Bool)

(assert (=> d!53525 (=> res!83485 e!116249)))

(assert (=> d!53525 (= res!83485 (and ((_ is Cons!2244) (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248)))) (= (_1!1644 (h!2864 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248))))) key!828)))))

(assert (=> d!53525 (= (containsKey!194 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248))) key!828) e!116249)))

(declare-fun b!176164 () Bool)

(declare-fun e!116250 () Bool)

(assert (=> b!176164 (= e!116249 e!116250)))

(declare-fun res!83486 () Bool)

(assert (=> b!176164 (=> (not res!83486) (not e!116250))))

(assert (=> b!176164 (= res!83486 (and (or (not ((_ is Cons!2244) (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248))))) (bvsle (_1!1644 (h!2864 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248))))) key!828)) ((_ is Cons!2244) (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248)))) (bvslt (_1!1644 (h!2864 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248))))) key!828)))))

(declare-fun b!176165 () Bool)

(assert (=> b!176165 (= e!116250 (containsKey!194 (t!7078 (toList!1120 (getCurrentListMap!767 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248)))) key!828))))

(assert (= (and d!53525 (not res!83485)) b!176164))

(assert (= (and b!176164 res!83486) b!176165))

(declare-fun m!205011 () Bool)

(assert (=> b!176165 m!205011))

(assert (=> d!53505 d!53525))

(declare-fun d!53527 () Bool)

(assert (=> d!53527 (= (validKeyInArray!0 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!176103 d!53527))

(declare-fun bm!17831 () Bool)

(declare-fun call!17834 () Bool)

(assert (=> bm!17831 (= call!17834 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5485 thiss!1248) (mask!8537 thiss!1248)))))

(declare-fun b!176174 () Bool)

(declare-fun e!116258 () Bool)

(assert (=> b!176174 (= e!116258 call!17834)))

(declare-fun b!176175 () Bool)

(declare-fun e!116257 () Bool)

(declare-fun e!116259 () Bool)

(assert (=> b!176175 (= e!116257 e!116259)))

(declare-fun c!31576 () Bool)

(assert (=> b!176175 (= c!31576 (validKeyInArray!0 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!176177 () Bool)

(assert (=> b!176177 (= e!116259 e!116258)))

(declare-fun lt!87215 () (_ BitVec 64))

(assert (=> b!176177 (= lt!87215 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87217 () Unit!5393)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7380 (_ BitVec 64) (_ BitVec 32)) Unit!5393)

(assert (=> b!176177 (= lt!87217 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5485 thiss!1248) lt!87215 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7380 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!176177 (arrayContainsKey!0 (_keys!5485 thiss!1248) lt!87215 #b00000000000000000000000000000000)))

(declare-fun lt!87216 () Unit!5393)

(assert (=> b!176177 (= lt!87216 lt!87217)))

(declare-fun res!83492 () Bool)

(assert (=> b!176177 (= res!83492 (= (seekEntryOrOpen!0 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000) (_keys!5485 thiss!1248) (mask!8537 thiss!1248)) (Found!563 #b00000000000000000000000000000000)))))

(assert (=> b!176177 (=> (not res!83492) (not e!116258))))

(declare-fun d!53529 () Bool)

(declare-fun res!83491 () Bool)

(assert (=> d!53529 (=> res!83491 e!116257)))

(assert (=> d!53529 (= res!83491 (bvsge #b00000000000000000000000000000000 (size!3805 (_keys!5485 thiss!1248))))))

(assert (=> d!53529 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5485 thiss!1248) (mask!8537 thiss!1248)) e!116257)))

(declare-fun b!176176 () Bool)

(assert (=> b!176176 (= e!116259 call!17834)))

(assert (= (and d!53529 (not res!83491)) b!176175))

(assert (= (and b!176175 c!31576) b!176177))

(assert (= (and b!176175 (not c!31576)) b!176176))

(assert (= (and b!176177 res!83492) b!176174))

(assert (= (or b!176174 b!176176) bm!17831))

(declare-fun m!205013 () Bool)

(assert (=> bm!17831 m!205013))

(assert (=> b!176175 m!204917))

(assert (=> b!176175 m!204917))

(assert (=> b!176175 m!204929))

(assert (=> b!176177 m!204917))

(declare-fun m!205015 () Bool)

(assert (=> b!176177 m!205015))

(declare-fun m!205017 () Bool)

(assert (=> b!176177 m!205017))

(assert (=> b!176177 m!204917))

(declare-fun m!205019 () Bool)

(assert (=> b!176177 m!205019))

(assert (=> b!176013 d!53529))

(declare-fun d!53531 () Bool)

(declare-fun e!116262 () Bool)

(assert (=> d!53531 e!116262))

(declare-fun res!83497 () Bool)

(assert (=> d!53531 (=> (not res!83497) (not e!116262))))

(declare-fun lt!87227 () ListLongMap!2209)

(assert (=> d!53531 (= res!83497 (contains!1176 lt!87227 (_1!1644 (ite (or c!31549 c!31552) (tuple2!3269 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3469 thiss!1248)) (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248))))))))

(declare-fun lt!87228 () List!2248)

(assert (=> d!53531 (= lt!87227 (ListLongMap!2210 lt!87228))))

(declare-fun lt!87226 () Unit!5393)

(declare-fun lt!87229 () Unit!5393)

(assert (=> d!53531 (= lt!87226 lt!87229)))

(assert (=> d!53531 (= (getValueByKey!190 lt!87228 (_1!1644 (ite (or c!31549 c!31552) (tuple2!3269 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3469 thiss!1248)) (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248))))) (Some!195 (_2!1644 (ite (or c!31549 c!31552) (tuple2!3269 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3469 thiss!1248)) (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!103 (List!2248 (_ BitVec 64) V!5139) Unit!5393)

(assert (=> d!53531 (= lt!87229 (lemmaContainsTupThenGetReturnValue!103 lt!87228 (_1!1644 (ite (or c!31549 c!31552) (tuple2!3269 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3469 thiss!1248)) (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248)))) (_2!1644 (ite (or c!31549 c!31552) (tuple2!3269 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3469 thiss!1248)) (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248))))))))

(declare-fun insertStrictlySorted!105 (List!2248 (_ BitVec 64) V!5139) List!2248)

(assert (=> d!53531 (= lt!87228 (insertStrictlySorted!105 (toList!1120 (ite c!31549 call!17830 (ite c!31552 call!17827 call!17825))) (_1!1644 (ite (or c!31549 c!31552) (tuple2!3269 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3469 thiss!1248)) (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248)))) (_2!1644 (ite (or c!31549 c!31552) (tuple2!3269 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3469 thiss!1248)) (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248))))))))

(assert (=> d!53531 (= (+!248 (ite c!31549 call!17830 (ite c!31552 call!17827 call!17825)) (ite (or c!31549 c!31552) (tuple2!3269 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3469 thiss!1248)) (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248)))) lt!87227)))

(declare-fun b!176182 () Bool)

(declare-fun res!83498 () Bool)

(assert (=> b!176182 (=> (not res!83498) (not e!116262))))

(assert (=> b!176182 (= res!83498 (= (getValueByKey!190 (toList!1120 lt!87227) (_1!1644 (ite (or c!31549 c!31552) (tuple2!3269 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3469 thiss!1248)) (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248))))) (Some!195 (_2!1644 (ite (or c!31549 c!31552) (tuple2!3269 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3469 thiss!1248)) (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248)))))))))

(declare-fun b!176183 () Bool)

(declare-fun contains!1178 (List!2248 tuple2!3268) Bool)

(assert (=> b!176183 (= e!116262 (contains!1178 (toList!1120 lt!87227) (ite (or c!31549 c!31552) (tuple2!3269 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3469 thiss!1248)) (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248)))))))

(assert (= (and d!53531 res!83497) b!176182))

(assert (= (and b!176182 res!83498) b!176183))

(declare-fun m!205021 () Bool)

(assert (=> d!53531 m!205021))

(declare-fun m!205023 () Bool)

(assert (=> d!53531 m!205023))

(declare-fun m!205025 () Bool)

(assert (=> d!53531 m!205025))

(declare-fun m!205027 () Bool)

(assert (=> d!53531 m!205027))

(declare-fun m!205029 () Bool)

(assert (=> b!176182 m!205029))

(declare-fun m!205031 () Bool)

(assert (=> b!176183 m!205031))

(assert (=> bm!17826 d!53531))

(declare-fun b!176194 () Bool)

(declare-fun e!116271 () Bool)

(declare-fun e!116274 () Bool)

(assert (=> b!176194 (= e!116271 e!116274)))

(declare-fun res!83506 () Bool)

(assert (=> b!176194 (=> (not res!83506) (not e!116274))))

(declare-fun e!116273 () Bool)

(assert (=> b!176194 (= res!83506 (not e!116273))))

(declare-fun res!83505 () Bool)

(assert (=> b!176194 (=> (not res!83505) (not e!116273))))

(assert (=> b!176194 (= res!83505 (validKeyInArray!0 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!53533 () Bool)

(declare-fun res!83507 () Bool)

(assert (=> d!53533 (=> res!83507 e!116271)))

(assert (=> d!53533 (= res!83507 (bvsge #b00000000000000000000000000000000 (size!3805 (_keys!5485 thiss!1248))))))

(assert (=> d!53533 (= (arrayNoDuplicates!0 (_keys!5485 thiss!1248) #b00000000000000000000000000000000 Nil!2247) e!116271)))

(declare-fun b!176195 () Bool)

(declare-fun e!116272 () Bool)

(assert (=> b!176195 (= e!116274 e!116272)))

(declare-fun c!31579 () Bool)

(assert (=> b!176195 (= c!31579 (validKeyInArray!0 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17834 () Bool)

(declare-fun call!17837 () Bool)

(assert (=> bm!17834 (= call!17837 (arrayNoDuplicates!0 (_keys!5485 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!31579 (Cons!2246 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000) Nil!2247) Nil!2247)))))

(declare-fun b!176196 () Bool)

(assert (=> b!176196 (= e!116272 call!17837)))

(declare-fun b!176197 () Bool)

(declare-fun contains!1179 (List!2250 (_ BitVec 64)) Bool)

(assert (=> b!176197 (= e!116273 (contains!1179 Nil!2247 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!176198 () Bool)

(assert (=> b!176198 (= e!116272 call!17837)))

(assert (= (and d!53533 (not res!83507)) b!176194))

(assert (= (and b!176194 res!83505) b!176197))

(assert (= (and b!176194 res!83506) b!176195))

(assert (= (and b!176195 c!31579) b!176198))

(assert (= (and b!176195 (not c!31579)) b!176196))

(assert (= (or b!176198 b!176196) bm!17834))

(assert (=> b!176194 m!204917))

(assert (=> b!176194 m!204917))

(assert (=> b!176194 m!204929))

(assert (=> b!176195 m!204917))

(assert (=> b!176195 m!204917))

(assert (=> b!176195 m!204929))

(assert (=> bm!17834 m!204917))

(declare-fun m!205033 () Bool)

(assert (=> bm!17834 m!205033))

(assert (=> b!176197 m!204917))

(assert (=> b!176197 m!204917))

(declare-fun m!205035 () Bool)

(assert (=> b!176197 m!205035))

(assert (=> b!176014 d!53533))

(declare-fun d!53535 () Bool)

(assert (=> d!53535 (= (apply!136 lt!87171 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2000 (getValueByKey!190 (toList!1120 lt!87171) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7264 () Bool)

(assert (= bs!7264 d!53535))

(declare-fun m!205037 () Bool)

(assert (=> bs!7264 m!205037))

(assert (=> bs!7264 m!205037))

(declare-fun m!205039 () Bool)

(assert (=> bs!7264 m!205039))

(assert (=> b!176087 d!53535))

(declare-fun d!53537 () Bool)

(declare-fun e!116275 () Bool)

(assert (=> d!53537 e!116275))

(declare-fun res!83508 () Bool)

(assert (=> d!53537 (=> (not res!83508) (not e!116275))))

(declare-fun lt!87231 () ListLongMap!2209)

(assert (=> d!53537 (= res!83508 (contains!1176 lt!87231 (_1!1644 (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248)))))))

(declare-fun lt!87232 () List!2248)

(assert (=> d!53537 (= lt!87231 (ListLongMap!2210 lt!87232))))

(declare-fun lt!87230 () Unit!5393)

(declare-fun lt!87233 () Unit!5393)

(assert (=> d!53537 (= lt!87230 lt!87233)))

(assert (=> d!53537 (= (getValueByKey!190 lt!87232 (_1!1644 (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248)))) (Some!195 (_2!1644 (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248)))))))

(assert (=> d!53537 (= lt!87233 (lemmaContainsTupThenGetReturnValue!103 lt!87232 (_1!1644 (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248))) (_2!1644 (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248)))))))

(assert (=> d!53537 (= lt!87232 (insertStrictlySorted!105 (toList!1120 call!17826) (_1!1644 (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248))) (_2!1644 (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248)))))))

(assert (=> d!53537 (= (+!248 call!17826 (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248))) lt!87231)))

(declare-fun b!176199 () Bool)

(declare-fun res!83509 () Bool)

(assert (=> b!176199 (=> (not res!83509) (not e!116275))))

(assert (=> b!176199 (= res!83509 (= (getValueByKey!190 (toList!1120 lt!87231) (_1!1644 (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248)))) (Some!195 (_2!1644 (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248))))))))

(declare-fun b!176200 () Bool)

(assert (=> b!176200 (= e!116275 (contains!1178 (toList!1120 lt!87231) (tuple2!3269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3469 thiss!1248))))))

(assert (= (and d!53537 res!83508) b!176199))

(assert (= (and b!176199 res!83509) b!176200))

(declare-fun m!205041 () Bool)

(assert (=> d!53537 m!205041))

(declare-fun m!205043 () Bool)

(assert (=> d!53537 m!205043))

(declare-fun m!205045 () Bool)

(assert (=> d!53537 m!205045))

(declare-fun m!205047 () Bool)

(assert (=> d!53537 m!205047))

(declare-fun m!205049 () Bool)

(assert (=> b!176199 m!205049))

(declare-fun m!205051 () Bool)

(assert (=> b!176200 m!205051))

(assert (=> b!176088 d!53537))

(declare-fun d!53539 () Bool)

(declare-fun e!116277 () Bool)

(assert (=> d!53539 e!116277))

(declare-fun res!83510 () Bool)

(assert (=> d!53539 (=> res!83510 e!116277)))

(declare-fun lt!87236 () Bool)

(assert (=> d!53539 (= res!83510 (not lt!87236))))

(declare-fun lt!87237 () Bool)

(assert (=> d!53539 (= lt!87236 lt!87237)))

(declare-fun lt!87234 () Unit!5393)

(declare-fun e!116276 () Unit!5393)

(assert (=> d!53539 (= lt!87234 e!116276)))

(declare-fun c!31580 () Bool)

(assert (=> d!53539 (= c!31580 lt!87237)))

(assert (=> d!53539 (= lt!87237 (containsKey!194 (toList!1120 lt!87171) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!53539 (= (contains!1176 lt!87171 #b0000000000000000000000000000000000000000000000000000000000000000) lt!87236)))

(declare-fun b!176201 () Bool)

(declare-fun lt!87235 () Unit!5393)

(assert (=> b!176201 (= e!116276 lt!87235)))

(assert (=> b!176201 (= lt!87235 (lemmaContainsKeyImpliesGetValueByKeyDefined!143 (toList!1120 lt!87171) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!176201 (isDefined!144 (getValueByKey!190 (toList!1120 lt!87171) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!176202 () Bool)

(declare-fun Unit!5399 () Unit!5393)

(assert (=> b!176202 (= e!116276 Unit!5399)))

(declare-fun b!176203 () Bool)

(assert (=> b!176203 (= e!116277 (isDefined!144 (getValueByKey!190 (toList!1120 lt!87171) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53539 c!31580) b!176201))

(assert (= (and d!53539 (not c!31580)) b!176202))

(assert (= (and d!53539 (not res!83510)) b!176203))

(declare-fun m!205053 () Bool)

(assert (=> d!53539 m!205053))

(declare-fun m!205055 () Bool)

(assert (=> b!176201 m!205055))

(assert (=> b!176201 m!205037))

(assert (=> b!176201 m!205037))

(declare-fun m!205057 () Bool)

(assert (=> b!176201 m!205057))

(assert (=> b!176203 m!205037))

(assert (=> b!176203 m!205037))

(assert (=> b!176203 m!205057))

(assert (=> bm!17824 d!53539))

(declare-fun d!53541 () Bool)

(declare-fun e!116278 () Bool)

(assert (=> d!53541 e!116278))

(declare-fun res!83511 () Bool)

(assert (=> d!53541 (=> (not res!83511) (not e!116278))))

(declare-fun lt!87239 () ListLongMap!2209)

(assert (=> d!53541 (= res!83511 (contains!1176 lt!87239 (_1!1644 (tuple2!3269 lt!87177 (minValue!3469 thiss!1248)))))))

(declare-fun lt!87240 () List!2248)

(assert (=> d!53541 (= lt!87239 (ListLongMap!2210 lt!87240))))

(declare-fun lt!87238 () Unit!5393)

(declare-fun lt!87241 () Unit!5393)

(assert (=> d!53541 (= lt!87238 lt!87241)))

(assert (=> d!53541 (= (getValueByKey!190 lt!87240 (_1!1644 (tuple2!3269 lt!87177 (minValue!3469 thiss!1248)))) (Some!195 (_2!1644 (tuple2!3269 lt!87177 (minValue!3469 thiss!1248)))))))

(assert (=> d!53541 (= lt!87241 (lemmaContainsTupThenGetReturnValue!103 lt!87240 (_1!1644 (tuple2!3269 lt!87177 (minValue!3469 thiss!1248))) (_2!1644 (tuple2!3269 lt!87177 (minValue!3469 thiss!1248)))))))

(assert (=> d!53541 (= lt!87240 (insertStrictlySorted!105 (toList!1120 lt!87182) (_1!1644 (tuple2!3269 lt!87177 (minValue!3469 thiss!1248))) (_2!1644 (tuple2!3269 lt!87177 (minValue!3469 thiss!1248)))))))

(assert (=> d!53541 (= (+!248 lt!87182 (tuple2!3269 lt!87177 (minValue!3469 thiss!1248))) lt!87239)))

(declare-fun b!176204 () Bool)

(declare-fun res!83512 () Bool)

(assert (=> b!176204 (=> (not res!83512) (not e!116278))))

(assert (=> b!176204 (= res!83512 (= (getValueByKey!190 (toList!1120 lt!87239) (_1!1644 (tuple2!3269 lt!87177 (minValue!3469 thiss!1248)))) (Some!195 (_2!1644 (tuple2!3269 lt!87177 (minValue!3469 thiss!1248))))))))

(declare-fun b!176205 () Bool)

(assert (=> b!176205 (= e!116278 (contains!1178 (toList!1120 lt!87239) (tuple2!3269 lt!87177 (minValue!3469 thiss!1248))))))

(assert (= (and d!53541 res!83511) b!176204))

(assert (= (and b!176204 res!83512) b!176205))

(declare-fun m!205059 () Bool)

(assert (=> d!53541 m!205059))

(declare-fun m!205061 () Bool)

(assert (=> d!53541 m!205061))

(declare-fun m!205063 () Bool)

(assert (=> d!53541 m!205063))

(declare-fun m!205065 () Bool)

(assert (=> d!53541 m!205065))

(declare-fun m!205067 () Bool)

(assert (=> b!176204 m!205067))

(declare-fun m!205069 () Bool)

(assert (=> b!176205 m!205069))

(assert (=> b!176084 d!53541))

(declare-fun b!176230 () Bool)

(declare-fun e!116293 () Bool)

(assert (=> b!176230 (= e!116293 (validKeyInArray!0 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!176230 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!176231 () Bool)

(declare-fun e!116296 () Bool)

(declare-fun e!116295 () Bool)

(assert (=> b!176231 (= e!116296 e!116295)))

(declare-fun c!31590 () Bool)

(assert (=> b!176231 (= c!31590 e!116293)))

(declare-fun res!83522 () Bool)

(assert (=> b!176231 (=> (not res!83522) (not e!116293))))

(assert (=> b!176231 (= res!83522 (bvslt #b00000000000000000000000000000000 (size!3805 (_keys!5485 thiss!1248))))))

(declare-fun b!176232 () Bool)

(declare-fun e!116298 () Bool)

(declare-fun lt!87261 () ListLongMap!2209)

(assert (=> b!176232 (= e!116298 (= lt!87261 (getCurrentListMapNoExtraKeys!166 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3628 thiss!1248))))))

(declare-fun b!176233 () Bool)

(assert (=> b!176233 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3805 (_keys!5485 thiss!1248))))))

(assert (=> b!176233 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3806 (_values!3611 thiss!1248))))))

(declare-fun e!116294 () Bool)

(assert (=> b!176233 (= e!116294 (= (apply!136 lt!87261 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)) (get!1999 (select (arr!3503 (_values!3611 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!474 (defaultEntry!3628 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!176234 () Bool)

(declare-fun lt!87262 () Unit!5393)

(declare-fun lt!87257 () Unit!5393)

(assert (=> b!176234 (= lt!87262 lt!87257)))

(declare-fun lt!87259 () V!5139)

(declare-fun lt!87258 () (_ BitVec 64))

(declare-fun lt!87260 () ListLongMap!2209)

(declare-fun lt!87256 () (_ BitVec 64))

(assert (=> b!176234 (not (contains!1176 (+!248 lt!87260 (tuple2!3269 lt!87258 lt!87259)) lt!87256))))

(declare-fun addStillNotContains!78 (ListLongMap!2209 (_ BitVec 64) V!5139 (_ BitVec 64)) Unit!5393)

(assert (=> b!176234 (= lt!87257 (addStillNotContains!78 lt!87260 lt!87258 lt!87259 lt!87256))))

(assert (=> b!176234 (= lt!87256 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!176234 (= lt!87259 (get!1999 (select (arr!3503 (_values!3611 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!474 (defaultEntry!3628 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!176234 (= lt!87258 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun call!17840 () ListLongMap!2209)

(assert (=> b!176234 (= lt!87260 call!17840)))

(declare-fun e!116299 () ListLongMap!2209)

(assert (=> b!176234 (= e!116299 (+!248 call!17840 (tuple2!3269 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000) (get!1999 (select (arr!3503 (_values!3611 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!474 (defaultEntry!3628 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!176235 () Bool)

(declare-fun isEmpty!451 (ListLongMap!2209) Bool)

(assert (=> b!176235 (= e!116298 (isEmpty!451 lt!87261))))

(declare-fun b!176236 () Bool)

(assert (=> b!176236 (= e!116299 call!17840)))

(declare-fun b!176237 () Bool)

(declare-fun e!116297 () ListLongMap!2209)

(assert (=> b!176237 (= e!116297 e!116299)))

(declare-fun c!31589 () Bool)

(assert (=> b!176237 (= c!31589 (validKeyInArray!0 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!53543 () Bool)

(assert (=> d!53543 e!116296))

(declare-fun res!83523 () Bool)

(assert (=> d!53543 (=> (not res!83523) (not e!116296))))

(assert (=> d!53543 (= res!83523 (not (contains!1176 lt!87261 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!53543 (= lt!87261 e!116297)))

(declare-fun c!31592 () Bool)

(assert (=> d!53543 (= c!31592 (bvsge #b00000000000000000000000000000000 (size!3805 (_keys!5485 thiss!1248))))))

(assert (=> d!53543 (validMask!0 (mask!8537 thiss!1248))))

(assert (=> d!53543 (= (getCurrentListMapNoExtraKeys!166 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3628 thiss!1248)) lt!87261)))

(declare-fun bm!17837 () Bool)

(assert (=> bm!17837 (= call!17840 (getCurrentListMapNoExtraKeys!166 (_keys!5485 thiss!1248) (_values!3611 thiss!1248) (mask!8537 thiss!1248) (extraKeys!3365 thiss!1248) (zeroValue!3469 thiss!1248) (minValue!3469 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3628 thiss!1248)))))

(declare-fun b!176238 () Bool)

(assert (=> b!176238 (= e!116295 e!116298)))

(declare-fun c!31591 () Bool)

(assert (=> b!176238 (= c!31591 (bvslt #b00000000000000000000000000000000 (size!3805 (_keys!5485 thiss!1248))))))

(declare-fun b!176239 () Bool)

(assert (=> b!176239 (= e!116295 e!116294)))

(assert (=> b!176239 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3805 (_keys!5485 thiss!1248))))))

(declare-fun res!83524 () Bool)

(assert (=> b!176239 (= res!83524 (contains!1176 lt!87261 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!176239 (=> (not res!83524) (not e!116294))))

(declare-fun b!176240 () Bool)

(assert (=> b!176240 (= e!116297 (ListLongMap!2210 Nil!2245))))

(declare-fun b!176241 () Bool)

(declare-fun res!83521 () Bool)

(assert (=> b!176241 (=> (not res!83521) (not e!116296))))

(assert (=> b!176241 (= res!83521 (not (contains!1176 lt!87261 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53543 c!31592) b!176240))

(assert (= (and d!53543 (not c!31592)) b!176237))

(assert (= (and b!176237 c!31589) b!176234))

(assert (= (and b!176237 (not c!31589)) b!176236))

(assert (= (or b!176234 b!176236) bm!17837))

(assert (= (and d!53543 res!83523) b!176241))

(assert (= (and b!176241 res!83521) b!176231))

(assert (= (and b!176231 res!83522) b!176230))

(assert (= (and b!176231 c!31590) b!176239))

(assert (= (and b!176231 (not c!31590)) b!176238))

(assert (= (and b!176239 res!83524) b!176233))

(assert (= (and b!176238 c!31591) b!176232))

(assert (= (and b!176238 (not c!31591)) b!176235))

(declare-fun b_lambda!7061 () Bool)

(assert (=> (not b_lambda!7061) (not b!176233)))

(assert (=> b!176233 t!7081))

(declare-fun b_and!10859 () Bool)

(assert (= b_and!10857 (and (=> t!7081 result!4631) b_and!10859)))

(declare-fun b_lambda!7063 () Bool)

(assert (=> (not b_lambda!7063) (not b!176234)))

(assert (=> b!176234 t!7081))

(declare-fun b_and!10861 () Bool)

(assert (= b_and!10859 (and (=> t!7081 result!4631) b_and!10861)))

(declare-fun m!205071 () Bool)

(assert (=> b!176241 m!205071))

(declare-fun m!205073 () Bool)

(assert (=> b!176232 m!205073))

(assert (=> b!176234 m!204917))

(assert (=> b!176234 m!204923))

(assert (=> b!176234 m!204921))

(assert (=> b!176234 m!204923))

(assert (=> b!176234 m!204925))

(declare-fun m!205075 () Bool)

(assert (=> b!176234 m!205075))

(declare-fun m!205077 () Bool)

(assert (=> b!176234 m!205077))

(assert (=> b!176234 m!204921))

(declare-fun m!205079 () Bool)

(assert (=> b!176234 m!205079))

(assert (=> b!176234 m!205075))

(declare-fun m!205081 () Bool)

(assert (=> b!176234 m!205081))

(assert (=> bm!17837 m!205073))

(assert (=> b!176237 m!204917))

(assert (=> b!176237 m!204917))

(assert (=> b!176237 m!204929))

(assert (=> b!176233 m!204917))

(assert (=> b!176233 m!204923))

(assert (=> b!176233 m!204921))

(assert (=> b!176233 m!204923))

(assert (=> b!176233 m!204925))

(assert (=> b!176233 m!204917))

(declare-fun m!205083 () Bool)

(assert (=> b!176233 m!205083))

(assert (=> b!176233 m!204921))

(declare-fun m!205085 () Bool)

(assert (=> d!53543 m!205085))

(assert (=> d!53543 m!204851))

(assert (=> b!176239 m!204917))

(assert (=> b!176239 m!204917))

(declare-fun m!205087 () Bool)

(assert (=> b!176239 m!205087))

(assert (=> b!176230 m!204917))

(assert (=> b!176230 m!204917))

(assert (=> b!176230 m!204929))

(declare-fun m!205089 () Bool)

(assert (=> b!176235 m!205089))

(assert (=> b!176084 d!53543))

(declare-fun d!53545 () Bool)

(assert (=> d!53545 (= (apply!136 (+!248 lt!87182 (tuple2!3269 lt!87177 (minValue!3469 thiss!1248))) lt!87178) (get!2000 (getValueByKey!190 (toList!1120 (+!248 lt!87182 (tuple2!3269 lt!87177 (minValue!3469 thiss!1248)))) lt!87178)))))

(declare-fun bs!7265 () Bool)

(assert (= bs!7265 d!53545))

(declare-fun m!205091 () Bool)

(assert (=> bs!7265 m!205091))

(assert (=> bs!7265 m!205091))

(declare-fun m!205093 () Bool)

(assert (=> bs!7265 m!205093))

(assert (=> b!176084 d!53545))

(declare-fun d!53547 () Bool)

(assert (=> d!53547 (= (apply!136 lt!87182 lt!87178) (get!2000 (getValueByKey!190 (toList!1120 lt!87182) lt!87178)))))

(declare-fun bs!7266 () Bool)

(assert (= bs!7266 d!53547))

(declare-fun m!205095 () Bool)

(assert (=> bs!7266 m!205095))

(assert (=> bs!7266 m!205095))

(declare-fun m!205097 () Bool)

(assert (=> bs!7266 m!205097))

(assert (=> b!176084 d!53547))

(declare-fun d!53549 () Bool)

(assert (=> d!53549 (= (apply!136 lt!87190 lt!87175) (get!2000 (getValueByKey!190 (toList!1120 lt!87190) lt!87175)))))

(declare-fun bs!7267 () Bool)

(assert (= bs!7267 d!53549))

(declare-fun m!205099 () Bool)

(assert (=> bs!7267 m!205099))

(assert (=> bs!7267 m!205099))

(declare-fun m!205101 () Bool)

(assert (=> bs!7267 m!205101))

(assert (=> b!176084 d!53549))

(declare-fun d!53551 () Bool)

(declare-fun e!116300 () Bool)

(assert (=> d!53551 e!116300))

(declare-fun res!83525 () Bool)

(assert (=> d!53551 (=> (not res!83525) (not e!116300))))

(declare-fun lt!87264 () ListLongMap!2209)

(assert (=> d!53551 (= res!83525 (contains!1176 lt!87264 (_1!1644 (tuple2!3269 lt!87181 (minValue!3469 thiss!1248)))))))

(declare-fun lt!87265 () List!2248)

(assert (=> d!53551 (= lt!87264 (ListLongMap!2210 lt!87265))))

(declare-fun lt!87263 () Unit!5393)

(declare-fun lt!87266 () Unit!5393)

(assert (=> d!53551 (= lt!87263 lt!87266)))

(assert (=> d!53551 (= (getValueByKey!190 lt!87265 (_1!1644 (tuple2!3269 lt!87181 (minValue!3469 thiss!1248)))) (Some!195 (_2!1644 (tuple2!3269 lt!87181 (minValue!3469 thiss!1248)))))))

(assert (=> d!53551 (= lt!87266 (lemmaContainsTupThenGetReturnValue!103 lt!87265 (_1!1644 (tuple2!3269 lt!87181 (minValue!3469 thiss!1248))) (_2!1644 (tuple2!3269 lt!87181 (minValue!3469 thiss!1248)))))))

(assert (=> d!53551 (= lt!87265 (insertStrictlySorted!105 (toList!1120 lt!87185) (_1!1644 (tuple2!3269 lt!87181 (minValue!3469 thiss!1248))) (_2!1644 (tuple2!3269 lt!87181 (minValue!3469 thiss!1248)))))))

(assert (=> d!53551 (= (+!248 lt!87185 (tuple2!3269 lt!87181 (minValue!3469 thiss!1248))) lt!87264)))

(declare-fun b!176242 () Bool)

(declare-fun res!83526 () Bool)

(assert (=> b!176242 (=> (not res!83526) (not e!116300))))

(assert (=> b!176242 (= res!83526 (= (getValueByKey!190 (toList!1120 lt!87264) (_1!1644 (tuple2!3269 lt!87181 (minValue!3469 thiss!1248)))) (Some!195 (_2!1644 (tuple2!3269 lt!87181 (minValue!3469 thiss!1248))))))))

(declare-fun b!176243 () Bool)

(assert (=> b!176243 (= e!116300 (contains!1178 (toList!1120 lt!87264) (tuple2!3269 lt!87181 (minValue!3469 thiss!1248))))))

(assert (= (and d!53551 res!83525) b!176242))

(assert (= (and b!176242 res!83526) b!176243))

(declare-fun m!205103 () Bool)

(assert (=> d!53551 m!205103))

(declare-fun m!205105 () Bool)

(assert (=> d!53551 m!205105))

(declare-fun m!205107 () Bool)

(assert (=> d!53551 m!205107))

(declare-fun m!205109 () Bool)

(assert (=> d!53551 m!205109))

(declare-fun m!205111 () Bool)

(assert (=> b!176242 m!205111))

(declare-fun m!205113 () Bool)

(assert (=> b!176243 m!205113))

(assert (=> b!176084 d!53551))

(declare-fun d!53553 () Bool)

(declare-fun e!116302 () Bool)

(assert (=> d!53553 e!116302))

(declare-fun res!83527 () Bool)

(assert (=> d!53553 (=> res!83527 e!116302)))

(declare-fun lt!87269 () Bool)

(assert (=> d!53553 (= res!83527 (not lt!87269))))

(declare-fun lt!87270 () Bool)

(assert (=> d!53553 (= lt!87269 lt!87270)))

(declare-fun lt!87267 () Unit!5393)

(declare-fun e!116301 () Unit!5393)

(assert (=> d!53553 (= lt!87267 e!116301)))

(declare-fun c!31593 () Bool)

(assert (=> d!53553 (= c!31593 lt!87270)))

(assert (=> d!53553 (= lt!87270 (containsKey!194 (toList!1120 (+!248 lt!87180 (tuple2!3269 lt!87173 (zeroValue!3469 thiss!1248)))) lt!87189))))

(assert (=> d!53553 (= (contains!1176 (+!248 lt!87180 (tuple2!3269 lt!87173 (zeroValue!3469 thiss!1248))) lt!87189) lt!87269)))

(declare-fun b!176244 () Bool)

(declare-fun lt!87268 () Unit!5393)

(assert (=> b!176244 (= e!116301 lt!87268)))

(assert (=> b!176244 (= lt!87268 (lemmaContainsKeyImpliesGetValueByKeyDefined!143 (toList!1120 (+!248 lt!87180 (tuple2!3269 lt!87173 (zeroValue!3469 thiss!1248)))) lt!87189))))

(assert (=> b!176244 (isDefined!144 (getValueByKey!190 (toList!1120 (+!248 lt!87180 (tuple2!3269 lt!87173 (zeroValue!3469 thiss!1248)))) lt!87189))))

(declare-fun b!176245 () Bool)

(declare-fun Unit!5400 () Unit!5393)

(assert (=> b!176245 (= e!116301 Unit!5400)))

(declare-fun b!176246 () Bool)

(assert (=> b!176246 (= e!116302 (isDefined!144 (getValueByKey!190 (toList!1120 (+!248 lt!87180 (tuple2!3269 lt!87173 (zeroValue!3469 thiss!1248)))) lt!87189)))))

(assert (= (and d!53553 c!31593) b!176244))

(assert (= (and d!53553 (not c!31593)) b!176245))

(assert (= (and d!53553 (not res!83527)) b!176246))

(declare-fun m!205115 () Bool)

(assert (=> d!53553 m!205115))

(declare-fun m!205117 () Bool)

(assert (=> b!176244 m!205117))

(declare-fun m!205119 () Bool)

(assert (=> b!176244 m!205119))

(assert (=> b!176244 m!205119))

(declare-fun m!205121 () Bool)

(assert (=> b!176244 m!205121))

(assert (=> b!176246 m!205119))

(assert (=> b!176246 m!205119))

(assert (=> b!176246 m!205121))

(assert (=> b!176084 d!53553))

(declare-fun d!53555 () Bool)

(assert (=> d!53555 (= (apply!136 (+!248 lt!87182 (tuple2!3269 lt!87177 (minValue!3469 thiss!1248))) lt!87178) (apply!136 lt!87182 lt!87178))))

(declare-fun lt!87273 () Unit!5393)

(declare-fun choose!952 (ListLongMap!2209 (_ BitVec 64) V!5139 (_ BitVec 64)) Unit!5393)

(assert (=> d!53555 (= lt!87273 (choose!952 lt!87182 lt!87177 (minValue!3469 thiss!1248) lt!87178))))

(declare-fun e!116305 () Bool)

(assert (=> d!53555 e!116305))

(declare-fun res!83530 () Bool)

(assert (=> d!53555 (=> (not res!83530) (not e!116305))))

(assert (=> d!53555 (= res!83530 (contains!1176 lt!87182 lt!87178))))

(assert (=> d!53555 (= (addApplyDifferent!112 lt!87182 lt!87177 (minValue!3469 thiss!1248) lt!87178) lt!87273)))

(declare-fun b!176250 () Bool)

(assert (=> b!176250 (= e!116305 (not (= lt!87178 lt!87177)))))

(assert (= (and d!53555 res!83530) b!176250))

(assert (=> d!53555 m!204959))

(declare-fun m!205123 () Bool)

(assert (=> d!53555 m!205123))

(declare-fun m!205125 () Bool)

(assert (=> d!53555 m!205125))

(assert (=> d!53555 m!204959))

(assert (=> d!53555 m!204965))

(assert (=> d!53555 m!204957))

(assert (=> b!176084 d!53555))

(declare-fun d!53557 () Bool)

(assert (=> d!53557 (= (apply!136 (+!248 lt!87185 (tuple2!3269 lt!87181 (minValue!3469 thiss!1248))) lt!87174) (get!2000 (getValueByKey!190 (toList!1120 (+!248 lt!87185 (tuple2!3269 lt!87181 (minValue!3469 thiss!1248)))) lt!87174)))))

(declare-fun bs!7268 () Bool)

(assert (= bs!7268 d!53557))

(declare-fun m!205127 () Bool)

(assert (=> bs!7268 m!205127))

(assert (=> bs!7268 m!205127))

(declare-fun m!205129 () Bool)

(assert (=> bs!7268 m!205129))

(assert (=> b!176084 d!53557))

(declare-fun d!53559 () Bool)

(assert (=> d!53559 (contains!1176 (+!248 lt!87180 (tuple2!3269 lt!87173 (zeroValue!3469 thiss!1248))) lt!87189)))

(declare-fun lt!87276 () Unit!5393)

(declare-fun choose!953 (ListLongMap!2209 (_ BitVec 64) V!5139 (_ BitVec 64)) Unit!5393)

(assert (=> d!53559 (= lt!87276 (choose!953 lt!87180 lt!87173 (zeroValue!3469 thiss!1248) lt!87189))))

(assert (=> d!53559 (contains!1176 lt!87180 lt!87189)))

(assert (=> d!53559 (= (addStillContains!112 lt!87180 lt!87173 (zeroValue!3469 thiss!1248) lt!87189) lt!87276)))

(declare-fun bs!7269 () Bool)

(assert (= bs!7269 d!53559))

(assert (=> bs!7269 m!204937))

(assert (=> bs!7269 m!204937))

(assert (=> bs!7269 m!204939))

(declare-fun m!205131 () Bool)

(assert (=> bs!7269 m!205131))

(declare-fun m!205133 () Bool)

(assert (=> bs!7269 m!205133))

(assert (=> b!176084 d!53559))

(declare-fun d!53561 () Bool)

(declare-fun e!116306 () Bool)

(assert (=> d!53561 e!116306))

(declare-fun res!83531 () Bool)

(assert (=> d!53561 (=> (not res!83531) (not e!116306))))

(declare-fun lt!87278 () ListLongMap!2209)

(assert (=> d!53561 (= res!83531 (contains!1176 lt!87278 (_1!1644 (tuple2!3269 lt!87172 (zeroValue!3469 thiss!1248)))))))

(declare-fun lt!87279 () List!2248)

(assert (=> d!53561 (= lt!87278 (ListLongMap!2210 lt!87279))))

(declare-fun lt!87277 () Unit!5393)

(declare-fun lt!87280 () Unit!5393)

(assert (=> d!53561 (= lt!87277 lt!87280)))

(assert (=> d!53561 (= (getValueByKey!190 lt!87279 (_1!1644 (tuple2!3269 lt!87172 (zeroValue!3469 thiss!1248)))) (Some!195 (_2!1644 (tuple2!3269 lt!87172 (zeroValue!3469 thiss!1248)))))))

(assert (=> d!53561 (= lt!87280 (lemmaContainsTupThenGetReturnValue!103 lt!87279 (_1!1644 (tuple2!3269 lt!87172 (zeroValue!3469 thiss!1248))) (_2!1644 (tuple2!3269 lt!87172 (zeroValue!3469 thiss!1248)))))))

(assert (=> d!53561 (= lt!87279 (insertStrictlySorted!105 (toList!1120 lt!87190) (_1!1644 (tuple2!3269 lt!87172 (zeroValue!3469 thiss!1248))) (_2!1644 (tuple2!3269 lt!87172 (zeroValue!3469 thiss!1248)))))))

(assert (=> d!53561 (= (+!248 lt!87190 (tuple2!3269 lt!87172 (zeroValue!3469 thiss!1248))) lt!87278)))

(declare-fun b!176252 () Bool)

(declare-fun res!83532 () Bool)

(assert (=> b!176252 (=> (not res!83532) (not e!116306))))

(assert (=> b!176252 (= res!83532 (= (getValueByKey!190 (toList!1120 lt!87278) (_1!1644 (tuple2!3269 lt!87172 (zeroValue!3469 thiss!1248)))) (Some!195 (_2!1644 (tuple2!3269 lt!87172 (zeroValue!3469 thiss!1248))))))))

(declare-fun b!176253 () Bool)

(assert (=> b!176253 (= e!116306 (contains!1178 (toList!1120 lt!87278) (tuple2!3269 lt!87172 (zeroValue!3469 thiss!1248))))))

(assert (= (and d!53561 res!83531) b!176252))

(assert (= (and b!176252 res!83532) b!176253))

(declare-fun m!205135 () Bool)

(assert (=> d!53561 m!205135))

(declare-fun m!205137 () Bool)

(assert (=> d!53561 m!205137))

(declare-fun m!205139 () Bool)

(assert (=> d!53561 m!205139))

(declare-fun m!205141 () Bool)

(assert (=> d!53561 m!205141))

(declare-fun m!205143 () Bool)

(assert (=> b!176252 m!205143))

(declare-fun m!205145 () Bool)

(assert (=> b!176253 m!205145))

(assert (=> b!176084 d!53561))

(declare-fun d!53563 () Bool)

(assert (=> d!53563 (= (apply!136 (+!248 lt!87190 (tuple2!3269 lt!87172 (zeroValue!3469 thiss!1248))) lt!87175) (apply!136 lt!87190 lt!87175))))

(declare-fun lt!87281 () Unit!5393)

(assert (=> d!53563 (= lt!87281 (choose!952 lt!87190 lt!87172 (zeroValue!3469 thiss!1248) lt!87175))))

(declare-fun e!116307 () Bool)

(assert (=> d!53563 e!116307))

(declare-fun res!83533 () Bool)

(assert (=> d!53563 (=> (not res!83533) (not e!116307))))

(assert (=> d!53563 (= res!83533 (contains!1176 lt!87190 lt!87175))))

(assert (=> d!53563 (= (addApplyDifferent!112 lt!87190 lt!87172 (zeroValue!3469 thiss!1248) lt!87175) lt!87281)))

(declare-fun b!176254 () Bool)

(assert (=> b!176254 (= e!116307 (not (= lt!87175 lt!87172)))))

(assert (= (and d!53563 res!83533) b!176254))

(assert (=> d!53563 m!204947))

(declare-fun m!205147 () Bool)

(assert (=> d!53563 m!205147))

(declare-fun m!205149 () Bool)

(assert (=> d!53563 m!205149))

(assert (=> d!53563 m!204947))

(assert (=> d!53563 m!204949))

(assert (=> d!53563 m!204951))

(assert (=> b!176084 d!53563))

(declare-fun d!53565 () Bool)

(assert (=> d!53565 (= (apply!136 (+!248 lt!87185 (tuple2!3269 lt!87181 (minValue!3469 thiss!1248))) lt!87174) (apply!136 lt!87185 lt!87174))))

(declare-fun lt!87282 () Unit!5393)

(assert (=> d!53565 (= lt!87282 (choose!952 lt!87185 lt!87181 (minValue!3469 thiss!1248) lt!87174))))

(declare-fun e!116308 () Bool)

(assert (=> d!53565 e!116308))

(declare-fun res!83534 () Bool)

(assert (=> d!53565 (=> (not res!83534) (not e!116308))))

(assert (=> d!53565 (= res!83534 (contains!1176 lt!87185 lt!87174))))

(assert (=> d!53565 (= (addApplyDifferent!112 lt!87185 lt!87181 (minValue!3469 thiss!1248) lt!87174) lt!87282)))

(declare-fun b!176255 () Bool)

(assert (=> b!176255 (= e!116308 (not (= lt!87174 lt!87181)))))

(assert (= (and d!53565 res!83534) b!176255))

(assert (=> d!53565 m!204943))

(declare-fun m!205151 () Bool)

(assert (=> d!53565 m!205151))

(declare-fun m!205153 () Bool)

(assert (=> d!53565 m!205153))

(assert (=> d!53565 m!204943))

(assert (=> d!53565 m!204945))

(assert (=> d!53565 m!204961))

(assert (=> b!176084 d!53565))

(declare-fun d!53567 () Bool)

(assert (=> d!53567 (= (apply!136 (+!248 lt!87190 (tuple2!3269 lt!87172 (zeroValue!3469 thiss!1248))) lt!87175) (get!2000 (getValueByKey!190 (toList!1120 (+!248 lt!87190 (tuple2!3269 lt!87172 (zeroValue!3469 thiss!1248)))) lt!87175)))))

(declare-fun bs!7270 () Bool)

(assert (= bs!7270 d!53567))

(declare-fun m!205155 () Bool)

(assert (=> bs!7270 m!205155))

(assert (=> bs!7270 m!205155))

(declare-fun m!205157 () Bool)

(assert (=> bs!7270 m!205157))

(assert (=> b!176084 d!53567))

(declare-fun d!53569 () Bool)

(assert (=> d!53569 (= (apply!136 lt!87185 lt!87174) (get!2000 (getValueByKey!190 (toList!1120 lt!87185) lt!87174)))))

(declare-fun bs!7271 () Bool)

(assert (= bs!7271 d!53569))

(declare-fun m!205159 () Bool)

(assert (=> bs!7271 m!205159))

(assert (=> bs!7271 m!205159))

(declare-fun m!205161 () Bool)

(assert (=> bs!7271 m!205161))

(assert (=> b!176084 d!53569))

(declare-fun d!53571 () Bool)

(declare-fun e!116309 () Bool)

(assert (=> d!53571 e!116309))

(declare-fun res!83535 () Bool)

(assert (=> d!53571 (=> (not res!83535) (not e!116309))))

(declare-fun lt!87284 () ListLongMap!2209)

(assert (=> d!53571 (= res!83535 (contains!1176 lt!87284 (_1!1644 (tuple2!3269 lt!87173 (zeroValue!3469 thiss!1248)))))))

(declare-fun lt!87285 () List!2248)

(assert (=> d!53571 (= lt!87284 (ListLongMap!2210 lt!87285))))

(declare-fun lt!87283 () Unit!5393)

(declare-fun lt!87286 () Unit!5393)

(assert (=> d!53571 (= lt!87283 lt!87286)))

(assert (=> d!53571 (= (getValueByKey!190 lt!87285 (_1!1644 (tuple2!3269 lt!87173 (zeroValue!3469 thiss!1248)))) (Some!195 (_2!1644 (tuple2!3269 lt!87173 (zeroValue!3469 thiss!1248)))))))

(assert (=> d!53571 (= lt!87286 (lemmaContainsTupThenGetReturnValue!103 lt!87285 (_1!1644 (tuple2!3269 lt!87173 (zeroValue!3469 thiss!1248))) (_2!1644 (tuple2!3269 lt!87173 (zeroValue!3469 thiss!1248)))))))

(assert (=> d!53571 (= lt!87285 (insertStrictlySorted!105 (toList!1120 lt!87180) (_1!1644 (tuple2!3269 lt!87173 (zeroValue!3469 thiss!1248))) (_2!1644 (tuple2!3269 lt!87173 (zeroValue!3469 thiss!1248)))))))

(assert (=> d!53571 (= (+!248 lt!87180 (tuple2!3269 lt!87173 (zeroValue!3469 thiss!1248))) lt!87284)))

(declare-fun b!176256 () Bool)

(declare-fun res!83536 () Bool)

(assert (=> b!176256 (=> (not res!83536) (not e!116309))))

(assert (=> b!176256 (= res!83536 (= (getValueByKey!190 (toList!1120 lt!87284) (_1!1644 (tuple2!3269 lt!87173 (zeroValue!3469 thiss!1248)))) (Some!195 (_2!1644 (tuple2!3269 lt!87173 (zeroValue!3469 thiss!1248))))))))

(declare-fun b!176257 () Bool)

(assert (=> b!176257 (= e!116309 (contains!1178 (toList!1120 lt!87284) (tuple2!3269 lt!87173 (zeroValue!3469 thiss!1248))))))

(assert (= (and d!53571 res!83535) b!176256))

(assert (= (and b!176256 res!83536) b!176257))

(declare-fun m!205163 () Bool)

(assert (=> d!53571 m!205163))

(declare-fun m!205165 () Bool)

(assert (=> d!53571 m!205165))

(declare-fun m!205167 () Bool)

(assert (=> d!53571 m!205167))

(declare-fun m!205169 () Bool)

(assert (=> d!53571 m!205169))

(declare-fun m!205171 () Bool)

(assert (=> b!176256 m!205171))

(declare-fun m!205173 () Bool)

(assert (=> b!176257 m!205173))

(assert (=> b!176084 d!53571))

(declare-fun d!53573 () Bool)

(assert (=> d!53573 (= (apply!136 lt!87171 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2000 (getValueByKey!190 (toList!1120 lt!87171) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7272 () Bool)

(assert (= bs!7272 d!53573))

(assert (=> bs!7272 m!205007))

(assert (=> bs!7272 m!205007))

(declare-fun m!205175 () Bool)

(assert (=> bs!7272 m!205175))

(assert (=> b!176101 d!53573))

(declare-fun b!176269 () Bool)

(declare-fun e!116312 () Bool)

(assert (=> b!176269 (= e!116312 (and (bvsge (extraKeys!3365 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3365 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1219 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!176266 () Bool)

(declare-fun res!83545 () Bool)

(assert (=> b!176266 (=> (not res!83545) (not e!116312))))

(assert (=> b!176266 (= res!83545 (and (= (size!3806 (_values!3611 thiss!1248)) (bvadd (mask!8537 thiss!1248) #b00000000000000000000000000000001)) (= (size!3805 (_keys!5485 thiss!1248)) (size!3806 (_values!3611 thiss!1248))) (bvsge (_size!1219 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1219 thiss!1248) (bvadd (mask!8537 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun d!53575 () Bool)

(declare-fun res!83546 () Bool)

(assert (=> d!53575 (=> (not res!83546) (not e!116312))))

(assert (=> d!53575 (= res!83546 (validMask!0 (mask!8537 thiss!1248)))))

(assert (=> d!53575 (= (simpleValid!149 thiss!1248) e!116312)))

(declare-fun b!176267 () Bool)

(declare-fun res!83547 () Bool)

(assert (=> b!176267 (=> (not res!83547) (not e!116312))))

(declare-fun size!3809 (LongMapFixedSize!2340) (_ BitVec 32))

(assert (=> b!176267 (= res!83547 (bvsge (size!3809 thiss!1248) (_size!1219 thiss!1248)))))

(declare-fun b!176268 () Bool)

(declare-fun res!83548 () Bool)

(assert (=> b!176268 (=> (not res!83548) (not e!116312))))

(assert (=> b!176268 (= res!83548 (= (size!3809 thiss!1248) (bvadd (_size!1219 thiss!1248) (bvsdiv (bvadd (extraKeys!3365 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!53575 res!83546) b!176266))

(assert (= (and b!176266 res!83545) b!176267))

(assert (= (and b!176267 res!83547) b!176268))

(assert (= (and b!176268 res!83548) b!176269))

(assert (=> d!53575 m!204851))

(declare-fun m!205177 () Bool)

(assert (=> b!176267 m!205177))

(assert (=> b!176268 m!205177))

(assert (=> d!53499 d!53575))

(declare-fun b!176278 () Bool)

(declare-fun e!116317 () (_ BitVec 32))

(assert (=> b!176278 (= e!116317 #b00000000000000000000000000000000)))

(declare-fun d!53577 () Bool)

(declare-fun lt!87289 () (_ BitVec 32))

(assert (=> d!53577 (and (bvsge lt!87289 #b00000000000000000000000000000000) (bvsle lt!87289 (bvsub (size!3805 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!53577 (= lt!87289 e!116317)))

(declare-fun c!31598 () Bool)

(assert (=> d!53577 (= c!31598 (bvsge #b00000000000000000000000000000000 (size!3805 (_keys!5485 thiss!1248))))))

(assert (=> d!53577 (and (bvsle #b00000000000000000000000000000000 (size!3805 (_keys!5485 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3805 (_keys!5485 thiss!1248)) (size!3805 (_keys!5485 thiss!1248))))))

(assert (=> d!53577 (= (arrayCountValidKeys!0 (_keys!5485 thiss!1248) #b00000000000000000000000000000000 (size!3805 (_keys!5485 thiss!1248))) lt!87289)))

(declare-fun b!176279 () Bool)

(declare-fun e!116318 () (_ BitVec 32))

(assert (=> b!176279 (= e!116317 e!116318)))

(declare-fun c!31599 () Bool)

(assert (=> b!176279 (= c!31599 (validKeyInArray!0 (select (arr!3502 (_keys!5485 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!176280 () Bool)

(declare-fun call!17843 () (_ BitVec 32))

(assert (=> b!176280 (= e!116318 call!17843)))

(declare-fun bm!17840 () Bool)

(assert (=> bm!17840 (= call!17843 (arrayCountValidKeys!0 (_keys!5485 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3805 (_keys!5485 thiss!1248))))))

(declare-fun b!176281 () Bool)

(assert (=> b!176281 (= e!116318 (bvadd #b00000000000000000000000000000001 call!17843))))

(assert (= (and d!53577 c!31598) b!176278))

(assert (= (and d!53577 (not c!31598)) b!176279))

(assert (= (and b!176279 c!31599) b!176281))

(assert (= (and b!176279 (not c!31599)) b!176280))

(assert (= (or b!176281 b!176280) bm!17840))

(assert (=> b!176279 m!204917))

(assert (=> b!176279 m!204917))

(assert (=> b!176279 m!204929))

(declare-fun m!205179 () Bool)

(assert (=> bm!17840 m!205179))

(assert (=> b!176012 d!53577))

(assert (=> b!176086 d!53527))

(assert (=> b!176041 d!53517))

(assert (=> b!176041 d!53519))

(declare-fun b!176300 () Bool)

(declare-fun e!116333 () SeekEntryResult!563)

(assert (=> b!176300 (= e!116333 (Intermediate!563 true (toIndex!0 key!828 (mask!8537 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!176301 () Bool)

(declare-fun lt!87295 () SeekEntryResult!563)

(assert (=> b!176301 (and (bvsge (index!4422 lt!87295) #b00000000000000000000000000000000) (bvslt (index!4422 lt!87295) (size!3805 (_keys!5485 thiss!1248))))))

(declare-fun e!116329 () Bool)

(assert (=> b!176301 (= e!116329 (= (select (arr!3502 (_keys!5485 thiss!1248)) (index!4422 lt!87295)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!176302 () Bool)

(declare-fun e!116331 () Bool)

(declare-fun e!116332 () Bool)

(assert (=> b!176302 (= e!116331 e!116332)))

(declare-fun res!83555 () Bool)

(assert (=> b!176302 (= res!83555 (and ((_ is Intermediate!563) lt!87295) (not (undefined!1375 lt!87295)) (bvslt (x!19347 lt!87295) #b01111111111111111111111111111110) (bvsge (x!19347 lt!87295) #b00000000000000000000000000000000) (bvsge (x!19347 lt!87295) #b00000000000000000000000000000000)))))

(assert (=> b!176302 (=> (not res!83555) (not e!116332))))

(declare-fun b!176303 () Bool)

(declare-fun e!116330 () SeekEntryResult!563)

(assert (=> b!176303 (= e!116330 (Intermediate!563 false (toIndex!0 key!828 (mask!8537 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun d!53579 () Bool)

(assert (=> d!53579 e!116331))

(declare-fun c!31607 () Bool)

(assert (=> d!53579 (= c!31607 (and ((_ is Intermediate!563) lt!87295) (undefined!1375 lt!87295)))))

(assert (=> d!53579 (= lt!87295 e!116333)))

(declare-fun c!31608 () Bool)

(assert (=> d!53579 (= c!31608 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!87294 () (_ BitVec 64))

(assert (=> d!53579 (= lt!87294 (select (arr!3502 (_keys!5485 thiss!1248)) (toIndex!0 key!828 (mask!8537 thiss!1248))))))

(assert (=> d!53579 (validMask!0 (mask!8537 thiss!1248))))

(assert (=> d!53579 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8537 thiss!1248)) key!828 (_keys!5485 thiss!1248) (mask!8537 thiss!1248)) lt!87295)))

(declare-fun b!176304 () Bool)

(assert (=> b!176304 (= e!116331 (bvsge (x!19347 lt!87295) #b01111111111111111111111111111110))))

(declare-fun b!176305 () Bool)

(assert (=> b!176305 (= e!116333 e!116330)))

(declare-fun c!31606 () Bool)

(assert (=> b!176305 (= c!31606 (or (= lt!87294 key!828) (= (bvadd lt!87294 lt!87294) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!176306 () Bool)

(assert (=> b!176306 (and (bvsge (index!4422 lt!87295) #b00000000000000000000000000000000) (bvslt (index!4422 lt!87295) (size!3805 (_keys!5485 thiss!1248))))))

(declare-fun res!83556 () Bool)

(assert (=> b!176306 (= res!83556 (= (select (arr!3502 (_keys!5485 thiss!1248)) (index!4422 lt!87295)) key!828))))

(assert (=> b!176306 (=> res!83556 e!116329)))

(assert (=> b!176306 (= e!116332 e!116329)))

(declare-fun b!176307 () Bool)

(assert (=> b!176307 (= e!116330 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8537 thiss!1248)) #b00000000000000000000000000000000 (mask!8537 thiss!1248)) key!828 (_keys!5485 thiss!1248) (mask!8537 thiss!1248)))))

(declare-fun b!176308 () Bool)

(assert (=> b!176308 (and (bvsge (index!4422 lt!87295) #b00000000000000000000000000000000) (bvslt (index!4422 lt!87295) (size!3805 (_keys!5485 thiss!1248))))))

(declare-fun res!83557 () Bool)

(assert (=> b!176308 (= res!83557 (= (select (arr!3502 (_keys!5485 thiss!1248)) (index!4422 lt!87295)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!176308 (=> res!83557 e!116329)))

(assert (= (and d!53579 c!31608) b!176300))

(assert (= (and d!53579 (not c!31608)) b!176305))

(assert (= (and b!176305 c!31606) b!176303))

(assert (= (and b!176305 (not c!31606)) b!176307))

(assert (= (and d!53579 c!31607) b!176304))

(assert (= (and d!53579 (not c!31607)) b!176302))

(assert (= (and b!176302 res!83555) b!176306))

(assert (= (and b!176306 (not res!83556)) b!176308))

(assert (= (and b!176308 (not res!83557)) b!176301))

(declare-fun m!205181 () Bool)

(assert (=> b!176306 m!205181))

(assert (=> b!176308 m!205181))

(assert (=> b!176307 m!204891))

(declare-fun m!205183 () Bool)

(assert (=> b!176307 m!205183))

(assert (=> b!176307 m!205183))

(declare-fun m!205185 () Bool)

(assert (=> b!176307 m!205185))

(assert (=> d!53579 m!204891))

(declare-fun m!205187 () Bool)

(assert (=> d!53579 m!205187))

(assert (=> d!53579 m!204851))

(assert (=> b!176301 m!205181))

(assert (=> d!53503 d!53579))

(declare-fun d!53581 () Bool)

(declare-fun lt!87301 () (_ BitVec 32))

(declare-fun lt!87300 () (_ BitVec 32))

(assert (=> d!53581 (= lt!87301 (bvmul (bvxor lt!87300 (bvlshr lt!87300 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!53581 (= lt!87300 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!53581 (and (bvsge (mask!8537 thiss!1248) #b00000000000000000000000000000000) (let ((res!83558 (let ((h!2867 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!19365 (bvmul (bvxor h!2867 (bvlshr h!2867 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!19365 (bvlshr x!19365 #b00000000000000000000000000001101)) (mask!8537 thiss!1248)))))) (and (bvslt res!83558 (bvadd (mask!8537 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!83558 #b00000000000000000000000000000000))))))

(assert (=> d!53581 (= (toIndex!0 key!828 (mask!8537 thiss!1248)) (bvand (bvxor lt!87301 (bvlshr lt!87301 #b00000000000000000000000000001101)) (mask!8537 thiss!1248)))))

(assert (=> d!53503 d!53581))

(assert (=> d!53503 d!53501))

(assert (=> bm!17823 d!53543))

(declare-fun b!176310 () Bool)

(declare-fun e!116334 () Bool)

(assert (=> b!176310 (= e!116334 tp_is_empty!4119)))

(declare-fun b!176309 () Bool)

(declare-fun e!116335 () Bool)

(assert (=> b!176309 (= e!116335 tp_is_empty!4119)))

(declare-fun condMapEmpty!7035 () Bool)

(declare-fun mapDefault!7035 () ValueCell!1716)

(assert (=> mapNonEmpty!7034 (= condMapEmpty!7035 (= mapRest!7034 ((as const (Array (_ BitVec 32) ValueCell!1716)) mapDefault!7035)))))

(declare-fun mapRes!7035 () Bool)

(assert (=> mapNonEmpty!7034 (= tp!15737 (and e!116334 mapRes!7035))))

(declare-fun mapIsEmpty!7035 () Bool)

(assert (=> mapIsEmpty!7035 mapRes!7035))

(declare-fun mapNonEmpty!7035 () Bool)

(declare-fun tp!15738 () Bool)

(assert (=> mapNonEmpty!7035 (= mapRes!7035 (and tp!15738 e!116335))))

(declare-fun mapKey!7035 () (_ BitVec 32))

(declare-fun mapRest!7035 () (Array (_ BitVec 32) ValueCell!1716))

(declare-fun mapValue!7035 () ValueCell!1716)

(assert (=> mapNonEmpty!7035 (= mapRest!7034 (store mapRest!7035 mapKey!7035 mapValue!7035))))

(assert (= (and mapNonEmpty!7034 condMapEmpty!7035) mapIsEmpty!7035))

(assert (= (and mapNonEmpty!7034 (not condMapEmpty!7035)) mapNonEmpty!7035))

(assert (= (and mapNonEmpty!7035 ((_ is ValueCellFull!1716) mapValue!7035)) b!176309))

(assert (= (and mapNonEmpty!7034 ((_ is ValueCellFull!1716) mapDefault!7035)) b!176310))

(declare-fun m!205189 () Bool)

(assert (=> mapNonEmpty!7035 m!205189))

(declare-fun b_lambda!7065 () Bool)

(assert (= b_lambda!7063 (or (and b!175973 b_free!4347) b_lambda!7065)))

(declare-fun b_lambda!7067 () Bool)

(assert (= b_lambda!7061 (or (and b!175973 b_free!4347) b_lambda!7067)))

(check-sat (not d!53521) (not b!176233) (not b!176194) (not d!53555) (not d!53567) (not d!53559) (not d!53551) (not b!176121) (not d!53579) (not b!176126) (not b!176183) (not b!176157) (not d!53517) (not b!176246) (not bm!17834) (not d!53549) (not b!176137) (not b!176165) (not b!176175) (not b_lambda!7059) (not b!176252) (not b!176256) (not bm!17831) (not b!176242) (not d!53563) (not b!176203) (not b!176268) (not b!176307) (not b!176243) (not b!176199) (not b!176237) (not b!176253) (not b!176182) (not d!53531) (not d!53565) (not d!53541) (not b!176177) (not b!176205) (not mapNonEmpty!7035) (not bm!17840) (not b_lambda!7065) b_and!10861 (not b!176235) (not b!176195) (not b!176232) (not d!53575) (not d!53513) (not b!176200) (not b!176267) (not bm!17837) (not b!176119) (not b!176239) (not d!53537) (not d!53573) (not d!53553) (not b_lambda!7067) (not d!53561) (not b!176197) (not d!53509) (not b!176159) (not b!176204) (not b!176279) (not b!176257) (not d!53539) (not b!176244) (not d!53543) (not d!53515) (not b!176234) (not b!176201) (not b!176230) (not b_next!4347) (not d!53547) (not b!176123) (not d!53571) tp_is_empty!4119 (not d!53535) (not d!53545) (not b!176241) (not d!53523) (not b!176120) (not d!53557) (not b!176153) (not d!53569))
(check-sat b_and!10861 (not b_next!4347))
