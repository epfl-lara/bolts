; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22710 () Bool)

(assert start!22710)

(declare-fun b!236866 () Bool)

(declare-fun b_free!6369 () Bool)

(declare-fun b_next!6369 () Bool)

(assert (=> b!236866 (= b_free!6369 (not b_next!6369))))

(declare-fun tp!22291 () Bool)

(declare-fun b_and!13333 () Bool)

(assert (=> b!236866 (= tp!22291 b_and!13333)))

(declare-fun b!236859 () Bool)

(declare-fun e!153833 () Bool)

(declare-fun e!153835 () Bool)

(assert (=> b!236859 (= e!153833 e!153835)))

(declare-fun res!116137 () Bool)

(assert (=> b!236859 (=> (not res!116137) (not e!153835))))

(declare-datatypes ((SeekEntryResult!1015 0))(
  ( (MissingZero!1015 (index!6230 (_ BitVec 32))) (Found!1015 (index!6231 (_ BitVec 32))) (Intermediate!1015 (undefined!1827 Bool) (index!6232 (_ BitVec 32)) (x!23923 (_ BitVec 32))) (Undefined!1015) (MissingVacant!1015 (index!6233 (_ BitVec 32))) )
))
(declare-fun lt!119808 () SeekEntryResult!1015)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!236859 (= res!116137 (or (= lt!119808 (MissingZero!1015 index!297)) (= lt!119808 (MissingVacant!1015 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7955 0))(
  ( (V!7956 (val!3160 Int)) )
))
(declare-datatypes ((ValueCell!2772 0))(
  ( (ValueCellFull!2772 (v!5188 V!7955)) (EmptyCell!2772) )
))
(declare-datatypes ((array!11728 0))(
  ( (array!11729 (arr!5571 (Array (_ BitVec 32) ValueCell!2772)) (size!5910 (_ BitVec 32))) )
))
(declare-datatypes ((array!11730 0))(
  ( (array!11731 (arr!5572 (Array (_ BitVec 32) (_ BitVec 64))) (size!5911 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3444 0))(
  ( (LongMapFixedSize!3445 (defaultEntry!4399 Int) (mask!10400 (_ BitVec 32)) (extraKeys!4136 (_ BitVec 32)) (zeroValue!4240 V!7955) (minValue!4240 V!7955) (_size!1771 (_ BitVec 32)) (_keys!6486 array!11730) (_values!4382 array!11728) (_vacant!1771 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3444)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11730 (_ BitVec 32)) SeekEntryResult!1015)

(assert (=> b!236859 (= lt!119808 (seekEntryOrOpen!0 key!932 (_keys!6486 thiss!1504) (mask!10400 thiss!1504)))))

(declare-fun b!236860 () Bool)

(declare-fun e!153830 () Bool)

(declare-fun tp_is_empty!6231 () Bool)

(assert (=> b!236860 (= e!153830 tp_is_empty!6231)))

(declare-fun mapIsEmpty!10558 () Bool)

(declare-fun mapRes!10558 () Bool)

(assert (=> mapIsEmpty!10558 mapRes!10558))

(declare-fun b!236861 () Bool)

(assert (=> b!236861 (= e!153835 (and (= (size!5910 (_values!4382 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10400 thiss!1504))) (= (size!5911 (_keys!6486 thiss!1504)) (size!5910 (_values!4382 thiss!1504))) (bvslt (mask!10400 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!236862 () Bool)

(declare-fun res!116134 () Bool)

(assert (=> b!236862 (=> (not res!116134) (not e!153835))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!236862 (= res!116134 (validMask!0 (mask!10400 thiss!1504)))))

(declare-fun b!236863 () Bool)

(declare-fun res!116136 () Bool)

(assert (=> b!236863 (=> (not res!116136) (not e!153835))))

(declare-datatypes ((tuple2!4652 0))(
  ( (tuple2!4653 (_1!2336 (_ BitVec 64)) (_2!2336 V!7955)) )
))
(declare-datatypes ((List!3579 0))(
  ( (Nil!3576) (Cons!3575 (h!4229 tuple2!4652) (t!8570 List!3579)) )
))
(declare-datatypes ((ListLongMap!3579 0))(
  ( (ListLongMap!3580 (toList!1805 List!3579)) )
))
(declare-fun contains!1681 (ListLongMap!3579 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1328 (array!11730 array!11728 (_ BitVec 32) (_ BitVec 32) V!7955 V!7955 (_ BitVec 32) Int) ListLongMap!3579)

(assert (=> b!236863 (= res!116136 (not (contains!1681 (getCurrentListMap!1328 (_keys!6486 thiss!1504) (_values!4382 thiss!1504) (mask!10400 thiss!1504) (extraKeys!4136 thiss!1504) (zeroValue!4240 thiss!1504) (minValue!4240 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4399 thiss!1504)) key!932)))))

(declare-fun b!236864 () Bool)

(declare-fun e!153832 () Bool)

(assert (=> b!236864 (= e!153832 tp_is_empty!6231)))

(declare-fun res!116135 () Bool)

(assert (=> start!22710 (=> (not res!116135) (not e!153833))))

(declare-fun valid!1350 (LongMapFixedSize!3444) Bool)

(assert (=> start!22710 (= res!116135 (valid!1350 thiss!1504))))

(assert (=> start!22710 e!153833))

(declare-fun e!153834 () Bool)

(assert (=> start!22710 e!153834))

(assert (=> start!22710 true))

(declare-fun b!236865 () Bool)

(declare-fun e!153829 () Bool)

(assert (=> b!236865 (= e!153829 (and e!153830 mapRes!10558))))

(declare-fun condMapEmpty!10558 () Bool)

(declare-fun mapDefault!10558 () ValueCell!2772)

(assert (=> b!236865 (= condMapEmpty!10558 (= (arr!5571 (_values!4382 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2772)) mapDefault!10558)))))

(declare-fun mapNonEmpty!10558 () Bool)

(declare-fun tp!22290 () Bool)

(assert (=> mapNonEmpty!10558 (= mapRes!10558 (and tp!22290 e!153832))))

(declare-fun mapRest!10558 () (Array (_ BitVec 32) ValueCell!2772))

(declare-fun mapValue!10558 () ValueCell!2772)

(declare-fun mapKey!10558 () (_ BitVec 32))

(assert (=> mapNonEmpty!10558 (= (arr!5571 (_values!4382 thiss!1504)) (store mapRest!10558 mapKey!10558 mapValue!10558))))

(declare-fun array_inv!3667 (array!11730) Bool)

(declare-fun array_inv!3668 (array!11728) Bool)

(assert (=> b!236866 (= e!153834 (and tp!22291 tp_is_empty!6231 (array_inv!3667 (_keys!6486 thiss!1504)) (array_inv!3668 (_values!4382 thiss!1504)) e!153829))))

(declare-fun b!236867 () Bool)

(declare-fun res!116133 () Bool)

(assert (=> b!236867 (=> (not res!116133) (not e!153833))))

(assert (=> b!236867 (= res!116133 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!22710 res!116135) b!236867))

(assert (= (and b!236867 res!116133) b!236859))

(assert (= (and b!236859 res!116137) b!236863))

(assert (= (and b!236863 res!116136) b!236862))

(assert (= (and b!236862 res!116134) b!236861))

(assert (= (and b!236865 condMapEmpty!10558) mapIsEmpty!10558))

(assert (= (and b!236865 (not condMapEmpty!10558)) mapNonEmpty!10558))

(get-info :version)

(assert (= (and mapNonEmpty!10558 ((_ is ValueCellFull!2772) mapValue!10558)) b!236864))

(assert (= (and b!236865 ((_ is ValueCellFull!2772) mapDefault!10558)) b!236860))

(assert (= b!236866 b!236865))

(assert (= start!22710 b!236866))

(declare-fun m!257721 () Bool)

(assert (=> start!22710 m!257721))

(declare-fun m!257723 () Bool)

(assert (=> b!236862 m!257723))

(declare-fun m!257725 () Bool)

(assert (=> b!236863 m!257725))

(assert (=> b!236863 m!257725))

(declare-fun m!257727 () Bool)

(assert (=> b!236863 m!257727))

(declare-fun m!257729 () Bool)

(assert (=> b!236859 m!257729))

(declare-fun m!257731 () Bool)

(assert (=> mapNonEmpty!10558 m!257731))

(declare-fun m!257733 () Bool)

(assert (=> b!236866 m!257733))

(declare-fun m!257735 () Bool)

(assert (=> b!236866 m!257735))

(check-sat (not start!22710) b_and!13333 (not mapNonEmpty!10558) (not b!236862) (not b!236866) (not b!236859) tp_is_empty!6231 (not b!236863) (not b_next!6369))
(check-sat b_and!13333 (not b_next!6369))
(get-model)

(declare-fun d!59431 () Bool)

(assert (=> d!59431 (= (validMask!0 (mask!10400 thiss!1504)) (and (or (= (mask!10400 thiss!1504) #b00000000000000000000000000000111) (= (mask!10400 thiss!1504) #b00000000000000000000000000001111) (= (mask!10400 thiss!1504) #b00000000000000000000000000011111) (= (mask!10400 thiss!1504) #b00000000000000000000000000111111) (= (mask!10400 thiss!1504) #b00000000000000000000000001111111) (= (mask!10400 thiss!1504) #b00000000000000000000000011111111) (= (mask!10400 thiss!1504) #b00000000000000000000000111111111) (= (mask!10400 thiss!1504) #b00000000000000000000001111111111) (= (mask!10400 thiss!1504) #b00000000000000000000011111111111) (= (mask!10400 thiss!1504) #b00000000000000000000111111111111) (= (mask!10400 thiss!1504) #b00000000000000000001111111111111) (= (mask!10400 thiss!1504) #b00000000000000000011111111111111) (= (mask!10400 thiss!1504) #b00000000000000000111111111111111) (= (mask!10400 thiss!1504) #b00000000000000001111111111111111) (= (mask!10400 thiss!1504) #b00000000000000011111111111111111) (= (mask!10400 thiss!1504) #b00000000000000111111111111111111) (= (mask!10400 thiss!1504) #b00000000000001111111111111111111) (= (mask!10400 thiss!1504) #b00000000000011111111111111111111) (= (mask!10400 thiss!1504) #b00000000000111111111111111111111) (= (mask!10400 thiss!1504) #b00000000001111111111111111111111) (= (mask!10400 thiss!1504) #b00000000011111111111111111111111) (= (mask!10400 thiss!1504) #b00000000111111111111111111111111) (= (mask!10400 thiss!1504) #b00000001111111111111111111111111) (= (mask!10400 thiss!1504) #b00000011111111111111111111111111) (= (mask!10400 thiss!1504) #b00000111111111111111111111111111) (= (mask!10400 thiss!1504) #b00001111111111111111111111111111) (= (mask!10400 thiss!1504) #b00011111111111111111111111111111) (= (mask!10400 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10400 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!236862 d!59431))

(declare-fun d!59433 () Bool)

(assert (=> d!59433 (= (array_inv!3667 (_keys!6486 thiss!1504)) (bvsge (size!5911 (_keys!6486 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!236866 d!59433))

(declare-fun d!59435 () Bool)

(assert (=> d!59435 (= (array_inv!3668 (_values!4382 thiss!1504)) (bvsge (size!5910 (_values!4382 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!236866 d!59435))

(declare-fun b!236907 () Bool)

(declare-fun e!153863 () SeekEntryResult!1015)

(declare-fun lt!119820 () SeekEntryResult!1015)

(assert (=> b!236907 (= e!153863 (MissingZero!1015 (index!6232 lt!119820)))))

(declare-fun d!59437 () Bool)

(declare-fun lt!119818 () SeekEntryResult!1015)

(assert (=> d!59437 (and (or ((_ is Undefined!1015) lt!119818) (not ((_ is Found!1015) lt!119818)) (and (bvsge (index!6231 lt!119818) #b00000000000000000000000000000000) (bvslt (index!6231 lt!119818) (size!5911 (_keys!6486 thiss!1504))))) (or ((_ is Undefined!1015) lt!119818) ((_ is Found!1015) lt!119818) (not ((_ is MissingZero!1015) lt!119818)) (and (bvsge (index!6230 lt!119818) #b00000000000000000000000000000000) (bvslt (index!6230 lt!119818) (size!5911 (_keys!6486 thiss!1504))))) (or ((_ is Undefined!1015) lt!119818) ((_ is Found!1015) lt!119818) ((_ is MissingZero!1015) lt!119818) (not ((_ is MissingVacant!1015) lt!119818)) (and (bvsge (index!6233 lt!119818) #b00000000000000000000000000000000) (bvslt (index!6233 lt!119818) (size!5911 (_keys!6486 thiss!1504))))) (or ((_ is Undefined!1015) lt!119818) (ite ((_ is Found!1015) lt!119818) (= (select (arr!5572 (_keys!6486 thiss!1504)) (index!6231 lt!119818)) key!932) (ite ((_ is MissingZero!1015) lt!119818) (= (select (arr!5572 (_keys!6486 thiss!1504)) (index!6230 lt!119818)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1015) lt!119818) (= (select (arr!5572 (_keys!6486 thiss!1504)) (index!6233 lt!119818)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!153864 () SeekEntryResult!1015)

(assert (=> d!59437 (= lt!119818 e!153864)))

(declare-fun c!39470 () Bool)

(assert (=> d!59437 (= c!39470 (and ((_ is Intermediate!1015) lt!119820) (undefined!1827 lt!119820)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11730 (_ BitVec 32)) SeekEntryResult!1015)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59437 (= lt!119820 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10400 thiss!1504)) key!932 (_keys!6486 thiss!1504) (mask!10400 thiss!1504)))))

(assert (=> d!59437 (validMask!0 (mask!10400 thiss!1504))))

(assert (=> d!59437 (= (seekEntryOrOpen!0 key!932 (_keys!6486 thiss!1504) (mask!10400 thiss!1504)) lt!119818)))

(declare-fun b!236908 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11730 (_ BitVec 32)) SeekEntryResult!1015)

(assert (=> b!236908 (= e!153863 (seekKeyOrZeroReturnVacant!0 (x!23923 lt!119820) (index!6232 lt!119820) (index!6232 lt!119820) key!932 (_keys!6486 thiss!1504) (mask!10400 thiss!1504)))))

(declare-fun b!236909 () Bool)

(declare-fun e!153865 () SeekEntryResult!1015)

(assert (=> b!236909 (= e!153864 e!153865)))

(declare-fun lt!119819 () (_ BitVec 64))

(assert (=> b!236909 (= lt!119819 (select (arr!5572 (_keys!6486 thiss!1504)) (index!6232 lt!119820)))))

(declare-fun c!39468 () Bool)

(assert (=> b!236909 (= c!39468 (= lt!119819 key!932))))

(declare-fun b!236910 () Bool)

(assert (=> b!236910 (= e!153865 (Found!1015 (index!6232 lt!119820)))))

(declare-fun b!236911 () Bool)

(declare-fun c!39469 () Bool)

(assert (=> b!236911 (= c!39469 (= lt!119819 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!236911 (= e!153865 e!153863)))

(declare-fun b!236912 () Bool)

(assert (=> b!236912 (= e!153864 Undefined!1015)))

(assert (= (and d!59437 c!39470) b!236912))

(assert (= (and d!59437 (not c!39470)) b!236909))

(assert (= (and b!236909 c!39468) b!236910))

(assert (= (and b!236909 (not c!39468)) b!236911))

(assert (= (and b!236911 c!39469) b!236907))

(assert (= (and b!236911 (not c!39469)) b!236908))

(declare-fun m!257753 () Bool)

(assert (=> d!59437 m!257753))

(declare-fun m!257755 () Bool)

(assert (=> d!59437 m!257755))

(declare-fun m!257757 () Bool)

(assert (=> d!59437 m!257757))

(declare-fun m!257759 () Bool)

(assert (=> d!59437 m!257759))

(declare-fun m!257761 () Bool)

(assert (=> d!59437 m!257761))

(assert (=> d!59437 m!257723))

(assert (=> d!59437 m!257757))

(declare-fun m!257763 () Bool)

(assert (=> b!236908 m!257763))

(declare-fun m!257765 () Bool)

(assert (=> b!236909 m!257765))

(assert (=> b!236859 d!59437))

(declare-fun d!59439 () Bool)

(declare-fun e!153871 () Bool)

(assert (=> d!59439 e!153871))

(declare-fun res!116155 () Bool)

(assert (=> d!59439 (=> res!116155 e!153871)))

(declare-fun lt!119831 () Bool)

(assert (=> d!59439 (= res!116155 (not lt!119831))))

(declare-fun lt!119830 () Bool)

(assert (=> d!59439 (= lt!119831 lt!119830)))

(declare-datatypes ((Unit!7285 0))(
  ( (Unit!7286) )
))
(declare-fun lt!119829 () Unit!7285)

(declare-fun e!153870 () Unit!7285)

(assert (=> d!59439 (= lt!119829 e!153870)))

(declare-fun c!39473 () Bool)

(assert (=> d!59439 (= c!39473 lt!119830)))

(declare-fun containsKey!264 (List!3579 (_ BitVec 64)) Bool)

(assert (=> d!59439 (= lt!119830 (containsKey!264 (toList!1805 (getCurrentListMap!1328 (_keys!6486 thiss!1504) (_values!4382 thiss!1504) (mask!10400 thiss!1504) (extraKeys!4136 thiss!1504) (zeroValue!4240 thiss!1504) (minValue!4240 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4399 thiss!1504))) key!932))))

(assert (=> d!59439 (= (contains!1681 (getCurrentListMap!1328 (_keys!6486 thiss!1504) (_values!4382 thiss!1504) (mask!10400 thiss!1504) (extraKeys!4136 thiss!1504) (zeroValue!4240 thiss!1504) (minValue!4240 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4399 thiss!1504)) key!932) lt!119831)))

(declare-fun b!236919 () Bool)

(declare-fun lt!119832 () Unit!7285)

(assert (=> b!236919 (= e!153870 lt!119832)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!213 (List!3579 (_ BitVec 64)) Unit!7285)

(assert (=> b!236919 (= lt!119832 (lemmaContainsKeyImpliesGetValueByKeyDefined!213 (toList!1805 (getCurrentListMap!1328 (_keys!6486 thiss!1504) (_values!4382 thiss!1504) (mask!10400 thiss!1504) (extraKeys!4136 thiss!1504) (zeroValue!4240 thiss!1504) (minValue!4240 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4399 thiss!1504))) key!932))))

(declare-datatypes ((Option!278 0))(
  ( (Some!277 (v!5190 V!7955)) (None!276) )
))
(declare-fun isDefined!214 (Option!278) Bool)

(declare-fun getValueByKey!272 (List!3579 (_ BitVec 64)) Option!278)

(assert (=> b!236919 (isDefined!214 (getValueByKey!272 (toList!1805 (getCurrentListMap!1328 (_keys!6486 thiss!1504) (_values!4382 thiss!1504) (mask!10400 thiss!1504) (extraKeys!4136 thiss!1504) (zeroValue!4240 thiss!1504) (minValue!4240 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4399 thiss!1504))) key!932))))

(declare-fun b!236920 () Bool)

(declare-fun Unit!7287 () Unit!7285)

(assert (=> b!236920 (= e!153870 Unit!7287)))

(declare-fun b!236921 () Bool)

(assert (=> b!236921 (= e!153871 (isDefined!214 (getValueByKey!272 (toList!1805 (getCurrentListMap!1328 (_keys!6486 thiss!1504) (_values!4382 thiss!1504) (mask!10400 thiss!1504) (extraKeys!4136 thiss!1504) (zeroValue!4240 thiss!1504) (minValue!4240 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4399 thiss!1504))) key!932)))))

(assert (= (and d!59439 c!39473) b!236919))

(assert (= (and d!59439 (not c!39473)) b!236920))

(assert (= (and d!59439 (not res!116155)) b!236921))

(declare-fun m!257767 () Bool)

(assert (=> d!59439 m!257767))

(declare-fun m!257769 () Bool)

(assert (=> b!236919 m!257769))

(declare-fun m!257771 () Bool)

(assert (=> b!236919 m!257771))

(assert (=> b!236919 m!257771))

(declare-fun m!257773 () Bool)

(assert (=> b!236919 m!257773))

(assert (=> b!236921 m!257771))

(assert (=> b!236921 m!257771))

(assert (=> b!236921 m!257773))

(assert (=> b!236863 d!59439))

(declare-fun b!236964 () Bool)

(declare-fun e!153906 () Bool)

(declare-fun e!153908 () Bool)

(assert (=> b!236964 (= e!153906 e!153908)))

(declare-fun res!116180 () Bool)

(declare-fun call!22036 () Bool)

(assert (=> b!236964 (= res!116180 call!22036)))

(assert (=> b!236964 (=> (not res!116180) (not e!153908))))

(declare-fun b!236965 () Bool)

(declare-fun res!116176 () Bool)

(declare-fun e!153909 () Bool)

(assert (=> b!236965 (=> (not res!116176) (not e!153909))))

(declare-fun e!153905 () Bool)

(assert (=> b!236965 (= res!116176 e!153905)))

(declare-fun res!116181 () Bool)

(assert (=> b!236965 (=> res!116181 e!153905)))

(declare-fun e!153901 () Bool)

(assert (=> b!236965 (= res!116181 (not e!153901))))

(declare-fun res!116182 () Bool)

(assert (=> b!236965 (=> (not res!116182) (not e!153901))))

(assert (=> b!236965 (= res!116182 (bvslt #b00000000000000000000000000000000 (size!5911 (_keys!6486 thiss!1504))))))

(declare-fun b!236966 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!236966 (= e!153901 (validKeyInArray!0 (select (arr!5572 (_keys!6486 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!236967 () Bool)

(declare-fun e!153899 () Unit!7285)

(declare-fun Unit!7288 () Unit!7285)

(assert (=> b!236967 (= e!153899 Unit!7288)))

(declare-fun b!236968 () Bool)

(assert (=> b!236968 (= e!153909 e!153906)))

(declare-fun c!39487 () Bool)

(assert (=> b!236968 (= c!39487 (not (= (bvand (extraKeys!4136 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!22027 () Bool)

(declare-fun call!22033 () ListLongMap!3579)

(declare-fun call!22031 () ListLongMap!3579)

(assert (=> bm!22027 (= call!22033 call!22031)))

(declare-fun b!236969 () Bool)

(declare-fun e!153902 () Bool)

(declare-fun e!153903 () Bool)

(assert (=> b!236969 (= e!153902 e!153903)))

(declare-fun res!116177 () Bool)

(declare-fun call!22030 () Bool)

(assert (=> b!236969 (= res!116177 call!22030)))

(assert (=> b!236969 (=> (not res!116177) (not e!153903))))

(declare-fun bm!22028 () Bool)

(declare-fun lt!119895 () ListLongMap!3579)

(assert (=> bm!22028 (= call!22030 (contains!1681 lt!119895 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!236970 () Bool)

(declare-fun lt!119891 () Unit!7285)

(assert (=> b!236970 (= e!153899 lt!119891)))

(declare-fun lt!119877 () ListLongMap!3579)

(declare-fun getCurrentListMapNoExtraKeys!534 (array!11730 array!11728 (_ BitVec 32) (_ BitVec 32) V!7955 V!7955 (_ BitVec 32) Int) ListLongMap!3579)

(assert (=> b!236970 (= lt!119877 (getCurrentListMapNoExtraKeys!534 (_keys!6486 thiss!1504) (_values!4382 thiss!1504) (mask!10400 thiss!1504) (extraKeys!4136 thiss!1504) (zeroValue!4240 thiss!1504) (minValue!4240 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4399 thiss!1504)))))

(declare-fun lt!119886 () (_ BitVec 64))

(assert (=> b!236970 (= lt!119886 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119894 () (_ BitVec 64))

(assert (=> b!236970 (= lt!119894 (select (arr!5572 (_keys!6486 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119896 () Unit!7285)

(declare-fun addStillContains!191 (ListLongMap!3579 (_ BitVec 64) V!7955 (_ BitVec 64)) Unit!7285)

(assert (=> b!236970 (= lt!119896 (addStillContains!191 lt!119877 lt!119886 (zeroValue!4240 thiss!1504) lt!119894))))

(declare-fun +!637 (ListLongMap!3579 tuple2!4652) ListLongMap!3579)

(assert (=> b!236970 (contains!1681 (+!637 lt!119877 (tuple2!4653 lt!119886 (zeroValue!4240 thiss!1504))) lt!119894)))

(declare-fun lt!119881 () Unit!7285)

(assert (=> b!236970 (= lt!119881 lt!119896)))

(declare-fun lt!119878 () ListLongMap!3579)

(assert (=> b!236970 (= lt!119878 (getCurrentListMapNoExtraKeys!534 (_keys!6486 thiss!1504) (_values!4382 thiss!1504) (mask!10400 thiss!1504) (extraKeys!4136 thiss!1504) (zeroValue!4240 thiss!1504) (minValue!4240 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4399 thiss!1504)))))

(declare-fun lt!119890 () (_ BitVec 64))

(assert (=> b!236970 (= lt!119890 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119887 () (_ BitVec 64))

(assert (=> b!236970 (= lt!119887 (select (arr!5572 (_keys!6486 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119882 () Unit!7285)

(declare-fun addApplyDifferent!191 (ListLongMap!3579 (_ BitVec 64) V!7955 (_ BitVec 64)) Unit!7285)

(assert (=> b!236970 (= lt!119882 (addApplyDifferent!191 lt!119878 lt!119890 (minValue!4240 thiss!1504) lt!119887))))

(declare-fun apply!215 (ListLongMap!3579 (_ BitVec 64)) V!7955)

(assert (=> b!236970 (= (apply!215 (+!637 lt!119878 (tuple2!4653 lt!119890 (minValue!4240 thiss!1504))) lt!119887) (apply!215 lt!119878 lt!119887))))

(declare-fun lt!119889 () Unit!7285)

(assert (=> b!236970 (= lt!119889 lt!119882)))

(declare-fun lt!119880 () ListLongMap!3579)

(assert (=> b!236970 (= lt!119880 (getCurrentListMapNoExtraKeys!534 (_keys!6486 thiss!1504) (_values!4382 thiss!1504) (mask!10400 thiss!1504) (extraKeys!4136 thiss!1504) (zeroValue!4240 thiss!1504) (minValue!4240 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4399 thiss!1504)))))

(declare-fun lt!119893 () (_ BitVec 64))

(assert (=> b!236970 (= lt!119893 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119892 () (_ BitVec 64))

(assert (=> b!236970 (= lt!119892 (select (arr!5572 (_keys!6486 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119884 () Unit!7285)

(assert (=> b!236970 (= lt!119884 (addApplyDifferent!191 lt!119880 lt!119893 (zeroValue!4240 thiss!1504) lt!119892))))

(assert (=> b!236970 (= (apply!215 (+!637 lt!119880 (tuple2!4653 lt!119893 (zeroValue!4240 thiss!1504))) lt!119892) (apply!215 lt!119880 lt!119892))))

(declare-fun lt!119885 () Unit!7285)

(assert (=> b!236970 (= lt!119885 lt!119884)))

(declare-fun lt!119898 () ListLongMap!3579)

(assert (=> b!236970 (= lt!119898 (getCurrentListMapNoExtraKeys!534 (_keys!6486 thiss!1504) (_values!4382 thiss!1504) (mask!10400 thiss!1504) (extraKeys!4136 thiss!1504) (zeroValue!4240 thiss!1504) (minValue!4240 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4399 thiss!1504)))))

(declare-fun lt!119897 () (_ BitVec 64))

(assert (=> b!236970 (= lt!119897 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119879 () (_ BitVec 64))

(assert (=> b!236970 (= lt!119879 (select (arr!5572 (_keys!6486 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!236970 (= lt!119891 (addApplyDifferent!191 lt!119898 lt!119897 (minValue!4240 thiss!1504) lt!119879))))

(assert (=> b!236970 (= (apply!215 (+!637 lt!119898 (tuple2!4653 lt!119897 (minValue!4240 thiss!1504))) lt!119879) (apply!215 lt!119898 lt!119879))))

(declare-fun d!59441 () Bool)

(assert (=> d!59441 e!153909))

(declare-fun res!116179 () Bool)

(assert (=> d!59441 (=> (not res!116179) (not e!153909))))

(assert (=> d!59441 (= res!116179 (or (bvsge #b00000000000000000000000000000000 (size!5911 (_keys!6486 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5911 (_keys!6486 thiss!1504))))))))

(declare-fun lt!119883 () ListLongMap!3579)

(assert (=> d!59441 (= lt!119895 lt!119883)))

(declare-fun lt!119888 () Unit!7285)

(assert (=> d!59441 (= lt!119888 e!153899)))

(declare-fun c!39489 () Bool)

(declare-fun e!153910 () Bool)

(assert (=> d!59441 (= c!39489 e!153910)))

(declare-fun res!116175 () Bool)

(assert (=> d!59441 (=> (not res!116175) (not e!153910))))

(assert (=> d!59441 (= res!116175 (bvslt #b00000000000000000000000000000000 (size!5911 (_keys!6486 thiss!1504))))))

(declare-fun e!153904 () ListLongMap!3579)

(assert (=> d!59441 (= lt!119883 e!153904)))

(declare-fun c!39486 () Bool)

(assert (=> d!59441 (= c!39486 (and (not (= (bvand (extraKeys!4136 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4136 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!59441 (validMask!0 (mask!10400 thiss!1504))))

(assert (=> d!59441 (= (getCurrentListMap!1328 (_keys!6486 thiss!1504) (_values!4382 thiss!1504) (mask!10400 thiss!1504) (extraKeys!4136 thiss!1504) (zeroValue!4240 thiss!1504) (minValue!4240 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4399 thiss!1504)) lt!119895)))

(declare-fun bm!22029 () Bool)

(declare-fun call!22032 () ListLongMap!3579)

(assert (=> bm!22029 (= call!22032 (getCurrentListMapNoExtraKeys!534 (_keys!6486 thiss!1504) (_values!4382 thiss!1504) (mask!10400 thiss!1504) (extraKeys!4136 thiss!1504) (zeroValue!4240 thiss!1504) (minValue!4240 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4399 thiss!1504)))))

(declare-fun b!236971 () Bool)

(declare-fun c!39491 () Bool)

(assert (=> b!236971 (= c!39491 (and (not (= (bvand (extraKeys!4136 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4136 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!153907 () ListLongMap!3579)

(declare-fun e!153898 () ListLongMap!3579)

(assert (=> b!236971 (= e!153907 e!153898)))

(declare-fun b!236972 () Bool)

(assert (=> b!236972 (= e!153902 (not call!22030))))

(declare-fun b!236973 () Bool)

(assert (=> b!236973 (= e!153898 call!22033)))

(declare-fun b!236974 () Bool)

(assert (=> b!236974 (= e!153906 (not call!22036))))

(declare-fun b!236975 () Bool)

(assert (=> b!236975 (= e!153907 call!22033)))

(declare-fun b!236976 () Bool)

(assert (=> b!236976 (= e!153910 (validKeyInArray!0 (select (arr!5572 (_keys!6486 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!236977 () Bool)

(declare-fun call!22035 () ListLongMap!3579)

(assert (=> b!236977 (= e!153898 call!22035)))

(declare-fun bm!22030 () Bool)

(declare-fun call!22034 () ListLongMap!3579)

(assert (=> bm!22030 (= call!22034 call!22032)))

(declare-fun b!236978 () Bool)

(assert (=> b!236978 (= e!153908 (= (apply!215 lt!119895 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4240 thiss!1504)))))

(declare-fun bm!22031 () Bool)

(assert (=> bm!22031 (= call!22035 call!22034)))

(declare-fun b!236979 () Bool)

(assert (=> b!236979 (= e!153904 (+!637 call!22031 (tuple2!4653 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4240 thiss!1504))))))

(declare-fun b!236980 () Bool)

(assert (=> b!236980 (= e!153903 (= (apply!215 lt!119895 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4240 thiss!1504)))))

(declare-fun b!236981 () Bool)

(declare-fun e!153900 () Bool)

(declare-fun get!2869 (ValueCell!2772 V!7955) V!7955)

(declare-fun dynLambda!553 (Int (_ BitVec 64)) V!7955)

(assert (=> b!236981 (= e!153900 (= (apply!215 lt!119895 (select (arr!5572 (_keys!6486 thiss!1504)) #b00000000000000000000000000000000)) (get!2869 (select (arr!5571 (_values!4382 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!553 (defaultEntry!4399 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!236981 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5910 (_values!4382 thiss!1504))))))

(assert (=> b!236981 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5911 (_keys!6486 thiss!1504))))))

(declare-fun c!39488 () Bool)

(declare-fun bm!22032 () Bool)

(assert (=> bm!22032 (= call!22031 (+!637 (ite c!39486 call!22032 (ite c!39488 call!22034 call!22035)) (ite (or c!39486 c!39488) (tuple2!4653 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4240 thiss!1504)) (tuple2!4653 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4240 thiss!1504)))))))

(declare-fun b!236982 () Bool)

(assert (=> b!236982 (= e!153905 e!153900)))

(declare-fun res!116178 () Bool)

(assert (=> b!236982 (=> (not res!116178) (not e!153900))))

(assert (=> b!236982 (= res!116178 (contains!1681 lt!119895 (select (arr!5572 (_keys!6486 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!236982 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5911 (_keys!6486 thiss!1504))))))

(declare-fun bm!22033 () Bool)

(assert (=> bm!22033 (= call!22036 (contains!1681 lt!119895 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!236983 () Bool)

(declare-fun res!116174 () Bool)

(assert (=> b!236983 (=> (not res!116174) (not e!153909))))

(assert (=> b!236983 (= res!116174 e!153902)))

(declare-fun c!39490 () Bool)

(assert (=> b!236983 (= c!39490 (not (= (bvand (extraKeys!4136 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!236984 () Bool)

(assert (=> b!236984 (= e!153904 e!153907)))

(assert (=> b!236984 (= c!39488 (and (not (= (bvand (extraKeys!4136 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4136 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!59441 c!39486) b!236979))

(assert (= (and d!59441 (not c!39486)) b!236984))

(assert (= (and b!236984 c!39488) b!236975))

(assert (= (and b!236984 (not c!39488)) b!236971))

(assert (= (and b!236971 c!39491) b!236973))

(assert (= (and b!236971 (not c!39491)) b!236977))

(assert (= (or b!236973 b!236977) bm!22031))

(assert (= (or b!236975 bm!22031) bm!22030))

(assert (= (or b!236975 b!236973) bm!22027))

(assert (= (or b!236979 bm!22030) bm!22029))

(assert (= (or b!236979 bm!22027) bm!22032))

(assert (= (and d!59441 res!116175) b!236976))

(assert (= (and d!59441 c!39489) b!236970))

(assert (= (and d!59441 (not c!39489)) b!236967))

(assert (= (and d!59441 res!116179) b!236965))

(assert (= (and b!236965 res!116182) b!236966))

(assert (= (and b!236965 (not res!116181)) b!236982))

(assert (= (and b!236982 res!116178) b!236981))

(assert (= (and b!236965 res!116176) b!236983))

(assert (= (and b!236983 c!39490) b!236969))

(assert (= (and b!236983 (not c!39490)) b!236972))

(assert (= (and b!236969 res!116177) b!236980))

(assert (= (or b!236969 b!236972) bm!22028))

(assert (= (and b!236983 res!116174) b!236968))

(assert (= (and b!236968 c!39487) b!236964))

(assert (= (and b!236968 (not c!39487)) b!236974))

(assert (= (and b!236964 res!116180) b!236978))

(assert (= (or b!236964 b!236974) bm!22033))

(declare-fun b_lambda!7969 () Bool)

(assert (=> (not b_lambda!7969) (not b!236981)))

(declare-fun t!8573 () Bool)

(declare-fun tb!2951 () Bool)

(assert (=> (and b!236866 (= (defaultEntry!4399 thiss!1504) (defaultEntry!4399 thiss!1504)) t!8573) tb!2951))

(declare-fun result!5159 () Bool)

(assert (=> tb!2951 (= result!5159 tp_is_empty!6231)))

(assert (=> b!236981 t!8573))

(declare-fun b_and!13337 () Bool)

(assert (= b_and!13333 (and (=> t!8573 result!5159) b_and!13337)))

(declare-fun m!257775 () Bool)

(assert (=> b!236979 m!257775))

(declare-fun m!257777 () Bool)

(assert (=> b!236981 m!257777))

(declare-fun m!257779 () Bool)

(assert (=> b!236981 m!257779))

(assert (=> b!236981 m!257779))

(declare-fun m!257781 () Bool)

(assert (=> b!236981 m!257781))

(declare-fun m!257783 () Bool)

(assert (=> b!236981 m!257783))

(assert (=> b!236981 m!257781))

(assert (=> b!236981 m!257777))

(declare-fun m!257785 () Bool)

(assert (=> b!236981 m!257785))

(assert (=> d!59441 m!257723))

(declare-fun m!257787 () Bool)

(assert (=> bm!22028 m!257787))

(assert (=> b!236976 m!257777))

(assert (=> b!236976 m!257777))

(declare-fun m!257789 () Bool)

(assert (=> b!236976 m!257789))

(declare-fun m!257791 () Bool)

(assert (=> b!236978 m!257791))

(declare-fun m!257793 () Bool)

(assert (=> b!236970 m!257793))

(declare-fun m!257795 () Bool)

(assert (=> b!236970 m!257795))

(declare-fun m!257797 () Bool)

(assert (=> b!236970 m!257797))

(declare-fun m!257799 () Bool)

(assert (=> b!236970 m!257799))

(declare-fun m!257801 () Bool)

(assert (=> b!236970 m!257801))

(assert (=> b!236970 m!257795))

(declare-fun m!257803 () Bool)

(assert (=> b!236970 m!257803))

(declare-fun m!257805 () Bool)

(assert (=> b!236970 m!257805))

(declare-fun m!257807 () Bool)

(assert (=> b!236970 m!257807))

(declare-fun m!257809 () Bool)

(assert (=> b!236970 m!257809))

(declare-fun m!257811 () Bool)

(assert (=> b!236970 m!257811))

(declare-fun m!257813 () Bool)

(assert (=> b!236970 m!257813))

(declare-fun m!257815 () Bool)

(assert (=> b!236970 m!257815))

(declare-fun m!257817 () Bool)

(assert (=> b!236970 m!257817))

(declare-fun m!257819 () Bool)

(assert (=> b!236970 m!257819))

(assert (=> b!236970 m!257813))

(declare-fun m!257821 () Bool)

(assert (=> b!236970 m!257821))

(assert (=> b!236970 m!257777))

(assert (=> b!236970 m!257805))

(declare-fun m!257823 () Bool)

(assert (=> b!236970 m!257823))

(assert (=> b!236970 m!257815))

(assert (=> bm!22029 m!257811))

(declare-fun m!257825 () Bool)

(assert (=> bm!22032 m!257825))

(declare-fun m!257827 () Bool)

(assert (=> bm!22033 m!257827))

(declare-fun m!257829 () Bool)

(assert (=> b!236980 m!257829))

(assert (=> b!236982 m!257777))

(assert (=> b!236982 m!257777))

(declare-fun m!257831 () Bool)

(assert (=> b!236982 m!257831))

(assert (=> b!236966 m!257777))

(assert (=> b!236966 m!257777))

(assert (=> b!236966 m!257789))

(assert (=> b!236863 d!59441))

(declare-fun d!59443 () Bool)

(declare-fun res!116189 () Bool)

(declare-fun e!153913 () Bool)

(assert (=> d!59443 (=> (not res!116189) (not e!153913))))

(declare-fun simpleValid!237 (LongMapFixedSize!3444) Bool)

(assert (=> d!59443 (= res!116189 (simpleValid!237 thiss!1504))))

(assert (=> d!59443 (= (valid!1350 thiss!1504) e!153913)))

(declare-fun b!236993 () Bool)

(declare-fun res!116190 () Bool)

(assert (=> b!236993 (=> (not res!116190) (not e!153913))))

(declare-fun arrayCountValidKeys!0 (array!11730 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!236993 (= res!116190 (= (arrayCountValidKeys!0 (_keys!6486 thiss!1504) #b00000000000000000000000000000000 (size!5911 (_keys!6486 thiss!1504))) (_size!1771 thiss!1504)))))

(declare-fun b!236994 () Bool)

(declare-fun res!116191 () Bool)

(assert (=> b!236994 (=> (not res!116191) (not e!153913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11730 (_ BitVec 32)) Bool)

(assert (=> b!236994 (= res!116191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6486 thiss!1504) (mask!10400 thiss!1504)))))

(declare-fun b!236995 () Bool)

(declare-datatypes ((List!3581 0))(
  ( (Nil!3578) (Cons!3577 (h!4231 (_ BitVec 64)) (t!8574 List!3581)) )
))
(declare-fun arrayNoDuplicates!0 (array!11730 (_ BitVec 32) List!3581) Bool)

(assert (=> b!236995 (= e!153913 (arrayNoDuplicates!0 (_keys!6486 thiss!1504) #b00000000000000000000000000000000 Nil!3578))))

(assert (= (and d!59443 res!116189) b!236993))

(assert (= (and b!236993 res!116190) b!236994))

(assert (= (and b!236994 res!116191) b!236995))

(declare-fun m!257833 () Bool)

(assert (=> d!59443 m!257833))

(declare-fun m!257835 () Bool)

(assert (=> b!236993 m!257835))

(declare-fun m!257837 () Bool)

(assert (=> b!236994 m!257837))

(declare-fun m!257839 () Bool)

(assert (=> b!236995 m!257839))

(assert (=> start!22710 d!59443))

(declare-fun b!237002 () Bool)

(declare-fun e!153918 () Bool)

(assert (=> b!237002 (= e!153918 tp_is_empty!6231)))

(declare-fun condMapEmpty!10564 () Bool)

(declare-fun mapDefault!10564 () ValueCell!2772)

(assert (=> mapNonEmpty!10558 (= condMapEmpty!10564 (= mapRest!10558 ((as const (Array (_ BitVec 32) ValueCell!2772)) mapDefault!10564)))))

(declare-fun e!153919 () Bool)

(declare-fun mapRes!10564 () Bool)

(assert (=> mapNonEmpty!10558 (= tp!22290 (and e!153919 mapRes!10564))))

(declare-fun mapIsEmpty!10564 () Bool)

(assert (=> mapIsEmpty!10564 mapRes!10564))

(declare-fun b!237003 () Bool)

(assert (=> b!237003 (= e!153919 tp_is_empty!6231)))

(declare-fun mapNonEmpty!10564 () Bool)

(declare-fun tp!22300 () Bool)

(assert (=> mapNonEmpty!10564 (= mapRes!10564 (and tp!22300 e!153918))))

(declare-fun mapRest!10564 () (Array (_ BitVec 32) ValueCell!2772))

(declare-fun mapValue!10564 () ValueCell!2772)

(declare-fun mapKey!10564 () (_ BitVec 32))

(assert (=> mapNonEmpty!10564 (= mapRest!10558 (store mapRest!10564 mapKey!10564 mapValue!10564))))

(assert (= (and mapNonEmpty!10558 condMapEmpty!10564) mapIsEmpty!10564))

(assert (= (and mapNonEmpty!10558 (not condMapEmpty!10564)) mapNonEmpty!10564))

(assert (= (and mapNonEmpty!10564 ((_ is ValueCellFull!2772) mapValue!10564)) b!237002))

(assert (= (and mapNonEmpty!10558 ((_ is ValueCellFull!2772) mapDefault!10564)) b!237003))

(declare-fun m!257841 () Bool)

(assert (=> mapNonEmpty!10564 m!257841))

(declare-fun b_lambda!7971 () Bool)

(assert (= b_lambda!7969 (or (and b!236866 b_free!6369) b_lambda!7971)))

(check-sat (not b!236966) (not b!236994) (not d!59441) (not b!236919) (not b!236980) (not b!236982) (not bm!22032) (not b!236976) tp_is_empty!6231 (not d!59443) (not b_next!6369) (not d!59439) (not d!59437) (not b!236921) (not b_lambda!7971) (not b!236970) (not bm!22033) (not bm!22028) (not b!236981) (not b!236908) (not b!236995) (not b!236993) (not b!236978) (not b!236979) b_and!13337 (not mapNonEmpty!10564) (not bm!22029))
(check-sat b_and!13337 (not b_next!6369))
