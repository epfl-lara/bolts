; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21346 () Bool)

(assert start!21346)

(declare-fun b!214552 () Bool)

(declare-fun b_free!5685 () Bool)

(declare-fun b_next!5685 () Bool)

(assert (=> b!214552 (= b_free!5685 (not b_next!5685))))

(declare-fun tp!20149 () Bool)

(declare-fun b_and!12593 () Bool)

(assert (=> b!214552 (= tp!20149 b_and!12593)))

(declare-fun b!214549 () Bool)

(declare-fun res!105037 () Bool)

(declare-fun e!139559 () Bool)

(assert (=> b!214549 (=> (not res!105037) (not e!139559))))

(declare-datatypes ((V!7043 0))(
  ( (V!7044 (val!2818 Int)) )
))
(declare-datatypes ((ValueCell!2430 0))(
  ( (ValueCellFull!2430 (v!4832 V!7043)) (EmptyCell!2430) )
))
(declare-datatypes ((array!10308 0))(
  ( (array!10309 (arr!4887 (Array (_ BitVec 32) ValueCell!2430)) (size!5214 (_ BitVec 32))) )
))
(declare-datatypes ((array!10310 0))(
  ( (array!10311 (arr!4888 (Array (_ BitVec 32) (_ BitVec 64))) (size!5215 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2760 0))(
  ( (LongMapFixedSize!2761 (defaultEntry!4030 Int) (mask!9696 (_ BitVec 32)) (extraKeys!3767 (_ BitVec 32)) (zeroValue!3871 V!7043) (minValue!3871 V!7043) (_size!1429 (_ BitVec 32)) (_keys!6049 array!10310) (_values!4013 array!10308) (_vacant!1429 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2760)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!214549 (= res!105037 (validMask!0 (mask!9696 thiss!1504)))))

(declare-fun b!214550 () Bool)

(declare-fun res!105039 () Bool)

(assert (=> b!214550 (=> (not res!105039) (not e!139559))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!214550 (= res!105039 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!214551 () Bool)

(assert (=> b!214551 (= e!139559 (bvslt (mask!9696 thiss!1504) #b00000000000000000000000000000000))))

(declare-fun e!139561 () Bool)

(declare-fun e!139558 () Bool)

(declare-fun tp_is_empty!5547 () Bool)

(declare-fun array_inv!3223 (array!10310) Bool)

(declare-fun array_inv!3224 (array!10308) Bool)

(assert (=> b!214552 (= e!139561 (and tp!20149 tp_is_empty!5547 (array_inv!3223 (_keys!6049 thiss!1504)) (array_inv!3224 (_values!4013 thiss!1504)) e!139558))))

(declare-fun b!214553 () Bool)

(declare-fun e!139560 () Bool)

(assert (=> b!214553 (= e!139560 tp_is_empty!5547)))

(declare-fun b!214554 () Bool)

(declare-fun e!139557 () Bool)

(assert (=> b!214554 (= e!139557 tp_is_empty!5547)))

(declare-fun res!105038 () Bool)

(assert (=> start!21346 (=> (not res!105038) (not e!139559))))

(declare-fun valid!1121 (LongMapFixedSize!2760) Bool)

(assert (=> start!21346 (= res!105038 (valid!1121 thiss!1504))))

(assert (=> start!21346 e!139559))

(assert (=> start!21346 e!139561))

(assert (=> start!21346 true))

(declare-fun mapNonEmpty!9442 () Bool)

(declare-fun mapRes!9442 () Bool)

(declare-fun tp!20148 () Bool)

(assert (=> mapNonEmpty!9442 (= mapRes!9442 (and tp!20148 e!139557))))

(declare-fun mapKey!9442 () (_ BitVec 32))

(declare-fun mapRest!9442 () (Array (_ BitVec 32) ValueCell!2430))

(declare-fun mapValue!9442 () ValueCell!2430)

(assert (=> mapNonEmpty!9442 (= (arr!4887 (_values!4013 thiss!1504)) (store mapRest!9442 mapKey!9442 mapValue!9442))))

(declare-fun b!214555 () Bool)

(declare-fun res!105040 () Bool)

(assert (=> b!214555 (=> (not res!105040) (not e!139559))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!730 0))(
  ( (MissingZero!730 (index!5090 (_ BitVec 32))) (Found!730 (index!5091 (_ BitVec 32))) (Intermediate!730 (undefined!1542 Bool) (index!5092 (_ BitVec 32)) (x!22389 (_ BitVec 32))) (Undefined!730) (MissingVacant!730 (index!5093 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10310 (_ BitVec 32)) SeekEntryResult!730)

(assert (=> b!214555 (= res!105040 (not (= (seekEntryOrOpen!0 key!932 (_keys!6049 thiss!1504) (mask!9696 thiss!1504)) (MissingZero!730 index!297))))))

(declare-fun b!214556 () Bool)

(assert (=> b!214556 (= e!139558 (and e!139560 mapRes!9442))))

(declare-fun condMapEmpty!9442 () Bool)

(declare-fun mapDefault!9442 () ValueCell!2430)

(assert (=> b!214556 (= condMapEmpty!9442 (= (arr!4887 (_values!4013 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2430)) mapDefault!9442)))))

(declare-fun mapIsEmpty!9442 () Bool)

(assert (=> mapIsEmpty!9442 mapRes!9442))

(assert (= (and start!21346 res!105038) b!214550))

(assert (= (and b!214550 res!105039) b!214555))

(assert (= (and b!214555 res!105040) b!214549))

(assert (= (and b!214549 res!105037) b!214551))

(assert (= (and b!214556 condMapEmpty!9442) mapIsEmpty!9442))

(assert (= (and b!214556 (not condMapEmpty!9442)) mapNonEmpty!9442))

(get-info :version)

(assert (= (and mapNonEmpty!9442 ((_ is ValueCellFull!2430) mapValue!9442)) b!214554))

(assert (= (and b!214556 ((_ is ValueCellFull!2430) mapDefault!9442)) b!214553))

(assert (= b!214552 b!214556))

(assert (= start!21346 b!214552))

(declare-fun m!242179 () Bool)

(assert (=> b!214555 m!242179))

(declare-fun m!242181 () Bool)

(assert (=> start!21346 m!242181))

(declare-fun m!242183 () Bool)

(assert (=> b!214552 m!242183))

(declare-fun m!242185 () Bool)

(assert (=> b!214552 m!242185))

(declare-fun m!242187 () Bool)

(assert (=> b!214549 m!242187))

(declare-fun m!242189 () Bool)

(assert (=> mapNonEmpty!9442 m!242189))

(check-sat tp_is_empty!5547 (not mapNonEmpty!9442) (not b_next!5685) (not b!214555) (not b!214549) (not start!21346) b_and!12593 (not b!214552))
(check-sat b_and!12593 (not b_next!5685))
(get-model)

(declare-fun d!58247 () Bool)

(declare-fun res!105059 () Bool)

(declare-fun e!139583 () Bool)

(assert (=> d!58247 (=> (not res!105059) (not e!139583))))

(declare-fun simpleValid!211 (LongMapFixedSize!2760) Bool)

(assert (=> d!58247 (= res!105059 (simpleValid!211 thiss!1504))))

(assert (=> d!58247 (= (valid!1121 thiss!1504) e!139583)))

(declare-fun b!214587 () Bool)

(declare-fun res!105060 () Bool)

(assert (=> b!214587 (=> (not res!105060) (not e!139583))))

(declare-fun arrayCountValidKeys!0 (array!10310 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!214587 (= res!105060 (= (arrayCountValidKeys!0 (_keys!6049 thiss!1504) #b00000000000000000000000000000000 (size!5215 (_keys!6049 thiss!1504))) (_size!1429 thiss!1504)))))

(declare-fun b!214588 () Bool)

(declare-fun res!105061 () Bool)

(assert (=> b!214588 (=> (not res!105061) (not e!139583))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10310 (_ BitVec 32)) Bool)

(assert (=> b!214588 (= res!105061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6049 thiss!1504) (mask!9696 thiss!1504)))))

(declare-fun b!214589 () Bool)

(declare-datatypes ((List!3151 0))(
  ( (Nil!3148) (Cons!3147 (h!3789 (_ BitVec 64)) (t!8114 List!3151)) )
))
(declare-fun arrayNoDuplicates!0 (array!10310 (_ BitVec 32) List!3151) Bool)

(assert (=> b!214589 (= e!139583 (arrayNoDuplicates!0 (_keys!6049 thiss!1504) #b00000000000000000000000000000000 Nil!3148))))

(assert (= (and d!58247 res!105059) b!214587))

(assert (= (and b!214587 res!105060) b!214588))

(assert (= (and b!214588 res!105061) b!214589))

(declare-fun m!242203 () Bool)

(assert (=> d!58247 m!242203))

(declare-fun m!242205 () Bool)

(assert (=> b!214587 m!242205))

(declare-fun m!242207 () Bool)

(assert (=> b!214588 m!242207))

(declare-fun m!242209 () Bool)

(assert (=> b!214589 m!242209))

(assert (=> start!21346 d!58247))

(declare-fun d!58249 () Bool)

(assert (=> d!58249 (= (array_inv!3223 (_keys!6049 thiss!1504)) (bvsge (size!5215 (_keys!6049 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!214552 d!58249))

(declare-fun d!58251 () Bool)

(assert (=> d!58251 (= (array_inv!3224 (_values!4013 thiss!1504)) (bvsge (size!5214 (_values!4013 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!214552 d!58251))

(declare-fun b!214602 () Bool)

(declare-fun c!36046 () Bool)

(declare-fun lt!110828 () (_ BitVec 64))

(assert (=> b!214602 (= c!36046 (= lt!110828 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!139592 () SeekEntryResult!730)

(declare-fun e!139590 () SeekEntryResult!730)

(assert (=> b!214602 (= e!139592 e!139590)))

(declare-fun b!214603 () Bool)

(declare-fun lt!110829 () SeekEntryResult!730)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10310 (_ BitVec 32)) SeekEntryResult!730)

(assert (=> b!214603 (= e!139590 (seekKeyOrZeroReturnVacant!0 (x!22389 lt!110829) (index!5092 lt!110829) (index!5092 lt!110829) key!932 (_keys!6049 thiss!1504) (mask!9696 thiss!1504)))))

(declare-fun b!214604 () Bool)

(declare-fun e!139591 () SeekEntryResult!730)

(assert (=> b!214604 (= e!139591 e!139592)))

(assert (=> b!214604 (= lt!110828 (select (arr!4888 (_keys!6049 thiss!1504)) (index!5092 lt!110829)))))

(declare-fun c!36045 () Bool)

(assert (=> b!214604 (= c!36045 (= lt!110828 key!932))))

(declare-fun b!214605 () Bool)

(assert (=> b!214605 (= e!139591 Undefined!730)))

(declare-fun d!58253 () Bool)

(declare-fun lt!110830 () SeekEntryResult!730)

(assert (=> d!58253 (and (or ((_ is Undefined!730) lt!110830) (not ((_ is Found!730) lt!110830)) (and (bvsge (index!5091 lt!110830) #b00000000000000000000000000000000) (bvslt (index!5091 lt!110830) (size!5215 (_keys!6049 thiss!1504))))) (or ((_ is Undefined!730) lt!110830) ((_ is Found!730) lt!110830) (not ((_ is MissingZero!730) lt!110830)) (and (bvsge (index!5090 lt!110830) #b00000000000000000000000000000000) (bvslt (index!5090 lt!110830) (size!5215 (_keys!6049 thiss!1504))))) (or ((_ is Undefined!730) lt!110830) ((_ is Found!730) lt!110830) ((_ is MissingZero!730) lt!110830) (not ((_ is MissingVacant!730) lt!110830)) (and (bvsge (index!5093 lt!110830) #b00000000000000000000000000000000) (bvslt (index!5093 lt!110830) (size!5215 (_keys!6049 thiss!1504))))) (or ((_ is Undefined!730) lt!110830) (ite ((_ is Found!730) lt!110830) (= (select (arr!4888 (_keys!6049 thiss!1504)) (index!5091 lt!110830)) key!932) (ite ((_ is MissingZero!730) lt!110830) (= (select (arr!4888 (_keys!6049 thiss!1504)) (index!5090 lt!110830)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!730) lt!110830) (= (select (arr!4888 (_keys!6049 thiss!1504)) (index!5093 lt!110830)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!58253 (= lt!110830 e!139591)))

(declare-fun c!36044 () Bool)

(assert (=> d!58253 (= c!36044 (and ((_ is Intermediate!730) lt!110829) (undefined!1542 lt!110829)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10310 (_ BitVec 32)) SeekEntryResult!730)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58253 (= lt!110829 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9696 thiss!1504)) key!932 (_keys!6049 thiss!1504) (mask!9696 thiss!1504)))))

(assert (=> d!58253 (validMask!0 (mask!9696 thiss!1504))))

(assert (=> d!58253 (= (seekEntryOrOpen!0 key!932 (_keys!6049 thiss!1504) (mask!9696 thiss!1504)) lt!110830)))

(declare-fun b!214606 () Bool)

(assert (=> b!214606 (= e!139590 (MissingZero!730 (index!5092 lt!110829)))))

(declare-fun b!214607 () Bool)

(assert (=> b!214607 (= e!139592 (Found!730 (index!5092 lt!110829)))))

(assert (= (and d!58253 c!36044) b!214605))

(assert (= (and d!58253 (not c!36044)) b!214604))

(assert (= (and b!214604 c!36045) b!214607))

(assert (= (and b!214604 (not c!36045)) b!214602))

(assert (= (and b!214602 c!36046) b!214606))

(assert (= (and b!214602 (not c!36046)) b!214603))

(declare-fun m!242211 () Bool)

(assert (=> b!214603 m!242211))

(declare-fun m!242213 () Bool)

(assert (=> b!214604 m!242213))

(declare-fun m!242215 () Bool)

(assert (=> d!58253 m!242215))

(declare-fun m!242217 () Bool)

(assert (=> d!58253 m!242217))

(declare-fun m!242219 () Bool)

(assert (=> d!58253 m!242219))

(assert (=> d!58253 m!242187))

(assert (=> d!58253 m!242215))

(declare-fun m!242221 () Bool)

(assert (=> d!58253 m!242221))

(declare-fun m!242223 () Bool)

(assert (=> d!58253 m!242223))

(assert (=> b!214555 d!58253))

(declare-fun d!58255 () Bool)

(assert (=> d!58255 (= (validMask!0 (mask!9696 thiss!1504)) (and (or (= (mask!9696 thiss!1504) #b00000000000000000000000000000111) (= (mask!9696 thiss!1504) #b00000000000000000000000000001111) (= (mask!9696 thiss!1504) #b00000000000000000000000000011111) (= (mask!9696 thiss!1504) #b00000000000000000000000000111111) (= (mask!9696 thiss!1504) #b00000000000000000000000001111111) (= (mask!9696 thiss!1504) #b00000000000000000000000011111111) (= (mask!9696 thiss!1504) #b00000000000000000000000111111111) (= (mask!9696 thiss!1504) #b00000000000000000000001111111111) (= (mask!9696 thiss!1504) #b00000000000000000000011111111111) (= (mask!9696 thiss!1504) #b00000000000000000000111111111111) (= (mask!9696 thiss!1504) #b00000000000000000001111111111111) (= (mask!9696 thiss!1504) #b00000000000000000011111111111111) (= (mask!9696 thiss!1504) #b00000000000000000111111111111111) (= (mask!9696 thiss!1504) #b00000000000000001111111111111111) (= (mask!9696 thiss!1504) #b00000000000000011111111111111111) (= (mask!9696 thiss!1504) #b00000000000000111111111111111111) (= (mask!9696 thiss!1504) #b00000000000001111111111111111111) (= (mask!9696 thiss!1504) #b00000000000011111111111111111111) (= (mask!9696 thiss!1504) #b00000000000111111111111111111111) (= (mask!9696 thiss!1504) #b00000000001111111111111111111111) (= (mask!9696 thiss!1504) #b00000000011111111111111111111111) (= (mask!9696 thiss!1504) #b00000000111111111111111111111111) (= (mask!9696 thiss!1504) #b00000001111111111111111111111111) (= (mask!9696 thiss!1504) #b00000011111111111111111111111111) (= (mask!9696 thiss!1504) #b00000111111111111111111111111111) (= (mask!9696 thiss!1504) #b00001111111111111111111111111111) (= (mask!9696 thiss!1504) #b00011111111111111111111111111111) (= (mask!9696 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!9696 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!214549 d!58255))

(declare-fun mapIsEmpty!9448 () Bool)

(declare-fun mapRes!9448 () Bool)

(assert (=> mapIsEmpty!9448 mapRes!9448))

(declare-fun condMapEmpty!9448 () Bool)

(declare-fun mapDefault!9448 () ValueCell!2430)

(assert (=> mapNonEmpty!9442 (= condMapEmpty!9448 (= mapRest!9442 ((as const (Array (_ BitVec 32) ValueCell!2430)) mapDefault!9448)))))

(declare-fun e!139598 () Bool)

(assert (=> mapNonEmpty!9442 (= tp!20148 (and e!139598 mapRes!9448))))

(declare-fun b!214614 () Bool)

(declare-fun e!139597 () Bool)

(assert (=> b!214614 (= e!139597 tp_is_empty!5547)))

(declare-fun mapNonEmpty!9448 () Bool)

(declare-fun tp!20158 () Bool)

(assert (=> mapNonEmpty!9448 (= mapRes!9448 (and tp!20158 e!139597))))

(declare-fun mapRest!9448 () (Array (_ BitVec 32) ValueCell!2430))

(declare-fun mapValue!9448 () ValueCell!2430)

(declare-fun mapKey!9448 () (_ BitVec 32))

(assert (=> mapNonEmpty!9448 (= mapRest!9442 (store mapRest!9448 mapKey!9448 mapValue!9448))))

(declare-fun b!214615 () Bool)

(assert (=> b!214615 (= e!139598 tp_is_empty!5547)))

(assert (= (and mapNonEmpty!9442 condMapEmpty!9448) mapIsEmpty!9448))

(assert (= (and mapNonEmpty!9442 (not condMapEmpty!9448)) mapNonEmpty!9448))

(assert (= (and mapNonEmpty!9448 ((_ is ValueCellFull!2430) mapValue!9448)) b!214614))

(assert (= (and mapNonEmpty!9442 ((_ is ValueCellFull!2430) mapDefault!9448)) b!214615))

(declare-fun m!242225 () Bool)

(assert (=> mapNonEmpty!9448 m!242225))

(check-sat (not d!58253) b_and!12593 (not b!214603) (not b_next!5685) (not b!214588) (not d!58247) tp_is_empty!5547 (not b!214587) (not b!214589) (not mapNonEmpty!9448))
(check-sat b_and!12593 (not b_next!5685))
