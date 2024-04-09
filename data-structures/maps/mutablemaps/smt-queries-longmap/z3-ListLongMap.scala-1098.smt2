; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22546 () Bool)

(assert start!22546)

(declare-fun b!235591 () Bool)

(declare-fun b_free!6339 () Bool)

(declare-fun b_next!6339 () Bool)

(assert (=> b!235591 (= b_free!6339 (not b_next!6339))))

(declare-fun tp!22187 () Bool)

(declare-fun b_and!13287 () Bool)

(assert (=> b!235591 (= tp!22187 b_and!13287)))

(declare-fun b!235587 () Bool)

(declare-fun res!115559 () Bool)

(declare-fun e!153000 () Bool)

(assert (=> b!235587 (=> (not res!115559) (not e!153000))))

(declare-datatypes ((V!7915 0))(
  ( (V!7916 (val!3145 Int)) )
))
(declare-datatypes ((ValueCell!2757 0))(
  ( (ValueCellFull!2757 (v!5169 V!7915)) (EmptyCell!2757) )
))
(declare-datatypes ((array!11660 0))(
  ( (array!11661 (arr!5541 (Array (_ BitVec 32) ValueCell!2757)) (size!5878 (_ BitVec 32))) )
))
(declare-datatypes ((array!11662 0))(
  ( (array!11663 (arr!5542 (Array (_ BitVec 32) (_ BitVec 64))) (size!5879 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3414 0))(
  ( (LongMapFixedSize!3415 (defaultEntry!4378 Int) (mask!10352 (_ BitVec 32)) (extraKeys!4115 (_ BitVec 32)) (zeroValue!4219 V!7915) (minValue!4219 V!7915) (_size!1756 (_ BitVec 32)) (_keys!6454 array!11662) (_values!4361 array!11660) (_vacant!1756 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3414)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4632 0))(
  ( (tuple2!4633 (_1!2326 (_ BitVec 64)) (_2!2326 V!7915)) )
))
(declare-datatypes ((List!3565 0))(
  ( (Nil!3562) (Cons!3561 (h!4213 tuple2!4632) (t!8548 List!3565)) )
))
(declare-datatypes ((ListLongMap!3559 0))(
  ( (ListLongMap!3560 (toList!1795 List!3565)) )
))
(declare-fun contains!1666 (ListLongMap!3559 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1318 (array!11662 array!11660 (_ BitVec 32) (_ BitVec 32) V!7915 V!7915 (_ BitVec 32) Int) ListLongMap!3559)

(assert (=> b!235587 (= res!115559 (contains!1666 (getCurrentListMap!1318 (_keys!6454 thiss!1504) (_values!4361 thiss!1504) (mask!10352 thiss!1504) (extraKeys!4115 thiss!1504) (zeroValue!4219 thiss!1504) (minValue!4219 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4378 thiss!1504)) key!932))))

(declare-fun mapIsEmpty!10499 () Bool)

(declare-fun mapRes!10499 () Bool)

(assert (=> mapIsEmpty!10499 mapRes!10499))

(declare-fun b!235588 () Bool)

(declare-fun res!115565 () Bool)

(assert (=> b!235588 (=> (not res!115565) (not e!153000))))

(assert (=> b!235588 (= res!115565 (and (= (size!5878 (_values!4361 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10352 thiss!1504))) (= (size!5879 (_keys!6454 thiss!1504)) (size!5878 (_values!4361 thiss!1504))) (bvsge (mask!10352 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4115 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4115 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun res!115566 () Bool)

(declare-fun e!153005 () Bool)

(assert (=> start!22546 (=> (not res!115566) (not e!153005))))

(declare-fun valid!1341 (LongMapFixedSize!3414) Bool)

(assert (=> start!22546 (= res!115566 (valid!1341 thiss!1504))))

(assert (=> start!22546 e!153005))

(declare-fun e!153001 () Bool)

(assert (=> start!22546 e!153001))

(assert (=> start!22546 true))

(declare-fun b!235589 () Bool)

(declare-fun e!153006 () Bool)

(declare-fun tp_is_empty!6201 () Bool)

(assert (=> b!235589 (= e!153006 tp_is_empty!6201)))

(declare-fun b!235590 () Bool)

(declare-fun res!115563 () Bool)

(assert (=> b!235590 (=> (not res!115563) (not e!153000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!235590 (= res!115563 (validMask!0 (mask!10352 thiss!1504)))))

(declare-fun e!153003 () Bool)

(declare-fun array_inv!3647 (array!11662) Bool)

(declare-fun array_inv!3648 (array!11660) Bool)

(assert (=> b!235591 (= e!153001 (and tp!22187 tp_is_empty!6201 (array_inv!3647 (_keys!6454 thiss!1504)) (array_inv!3648 (_values!4361 thiss!1504)) e!153003))))

(declare-fun b!235592 () Bool)

(declare-fun e!153004 () Bool)

(assert (=> b!235592 (= e!153004 tp_is_empty!6201)))

(declare-fun b!235593 () Bool)

(declare-fun res!115562 () Bool)

(assert (=> b!235593 (=> (not res!115562) (not e!153000))))

(declare-datatypes ((List!3566 0))(
  ( (Nil!3563) (Cons!3562 (h!4214 (_ BitVec 64)) (t!8549 List!3566)) )
))
(declare-fun arrayNoDuplicates!0 (array!11662 (_ BitVec 32) List!3566) Bool)

(assert (=> b!235593 (= res!115562 (arrayNoDuplicates!0 (_keys!6454 thiss!1504) #b00000000000000000000000000000000 Nil!3563))))

(declare-fun b!235594 () Bool)

(declare-fun res!115561 () Bool)

(assert (=> b!235594 (=> (not res!115561) (not e!153005))))

(assert (=> b!235594 (= res!115561 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!235595 () Bool)

(declare-fun res!115564 () Bool)

(assert (=> b!235595 (=> (not res!115564) (not e!153000))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11662 (_ BitVec 32)) Bool)

(assert (=> b!235595 (= res!115564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6454 thiss!1504) (mask!10352 thiss!1504)))))

(declare-fun b!235596 () Bool)

(assert (=> b!235596 (= e!153005 e!153000)))

(declare-fun res!115560 () Bool)

(assert (=> b!235596 (=> (not res!115560) (not e!153000))))

(declare-datatypes ((SeekEntryResult!1003 0))(
  ( (MissingZero!1003 (index!6182 (_ BitVec 32))) (Found!1003 (index!6183 (_ BitVec 32))) (Intermediate!1003 (undefined!1815 Bool) (index!6184 (_ BitVec 32)) (x!23815 (_ BitVec 32))) (Undefined!1003) (MissingVacant!1003 (index!6185 (_ BitVec 32))) )
))
(declare-fun lt!119177 () SeekEntryResult!1003)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!235596 (= res!115560 (or (= lt!119177 (MissingZero!1003 index!297)) (= lt!119177 (MissingVacant!1003 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11662 (_ BitVec 32)) SeekEntryResult!1003)

(assert (=> b!235596 (= lt!119177 (seekEntryOrOpen!0 key!932 (_keys!6454 thiss!1504) (mask!10352 thiss!1504)))))

(declare-fun mapNonEmpty!10499 () Bool)

(declare-fun tp!22186 () Bool)

(assert (=> mapNonEmpty!10499 (= mapRes!10499 (and tp!22186 e!153006))))

(declare-fun mapKey!10499 () (_ BitVec 32))

(declare-fun mapValue!10499 () ValueCell!2757)

(declare-fun mapRest!10499 () (Array (_ BitVec 32) ValueCell!2757))

(assert (=> mapNonEmpty!10499 (= (arr!5541 (_values!4361 thiss!1504)) (store mapRest!10499 mapKey!10499 mapValue!10499))))

(declare-fun b!235597 () Bool)

(assert (=> b!235597 (= e!153003 (and e!153004 mapRes!10499))))

(declare-fun condMapEmpty!10499 () Bool)

(declare-fun mapDefault!10499 () ValueCell!2757)

(assert (=> b!235597 (= condMapEmpty!10499 (= (arr!5541 (_values!4361 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2757)) mapDefault!10499)))))

(declare-fun b!235598 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!235598 (= e!153000 (not (validKeyInArray!0 key!932)))))

(assert (= (and start!22546 res!115566) b!235594))

(assert (= (and b!235594 res!115561) b!235596))

(assert (= (and b!235596 res!115560) b!235587))

(assert (= (and b!235587 res!115559) b!235590))

(assert (= (and b!235590 res!115563) b!235588))

(assert (= (and b!235588 res!115565) b!235595))

(assert (= (and b!235595 res!115564) b!235593))

(assert (= (and b!235593 res!115562) b!235598))

(assert (= (and b!235597 condMapEmpty!10499) mapIsEmpty!10499))

(assert (= (and b!235597 (not condMapEmpty!10499)) mapNonEmpty!10499))

(get-info :version)

(assert (= (and mapNonEmpty!10499 ((_ is ValueCellFull!2757) mapValue!10499)) b!235589))

(assert (= (and b!235597 ((_ is ValueCellFull!2757) mapDefault!10499)) b!235592))

(assert (= b!235591 b!235597))

(assert (= start!22546 b!235591))

(declare-fun m!256653 () Bool)

(assert (=> mapNonEmpty!10499 m!256653))

(declare-fun m!256655 () Bool)

(assert (=> b!235593 m!256655))

(declare-fun m!256657 () Bool)

(assert (=> start!22546 m!256657))

(declare-fun m!256659 () Bool)

(assert (=> b!235598 m!256659))

(declare-fun m!256661 () Bool)

(assert (=> b!235595 m!256661))

(declare-fun m!256663 () Bool)

(assert (=> b!235587 m!256663))

(assert (=> b!235587 m!256663))

(declare-fun m!256665 () Bool)

(assert (=> b!235587 m!256665))

(declare-fun m!256667 () Bool)

(assert (=> b!235591 m!256667))

(declare-fun m!256669 () Bool)

(assert (=> b!235591 m!256669))

(declare-fun m!256671 () Bool)

(assert (=> b!235596 m!256671))

(declare-fun m!256673 () Bool)

(assert (=> b!235590 m!256673))

(check-sat (not b_next!6339) (not b!235591) (not b!235595) (not b!235598) b_and!13287 (not b!235593) (not mapNonEmpty!10499) (not start!22546) (not b!235596) tp_is_empty!6201 (not b!235590) (not b!235587))
(check-sat b_and!13287 (not b_next!6339))
(get-model)

(declare-fun d!59211 () Bool)

(assert (=> d!59211 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!235598 d!59211))

(declare-fun d!59213 () Bool)

(assert (=> d!59213 (= (validMask!0 (mask!10352 thiss!1504)) (and (or (= (mask!10352 thiss!1504) #b00000000000000000000000000000111) (= (mask!10352 thiss!1504) #b00000000000000000000000000001111) (= (mask!10352 thiss!1504) #b00000000000000000000000000011111) (= (mask!10352 thiss!1504) #b00000000000000000000000000111111) (= (mask!10352 thiss!1504) #b00000000000000000000000001111111) (= (mask!10352 thiss!1504) #b00000000000000000000000011111111) (= (mask!10352 thiss!1504) #b00000000000000000000000111111111) (= (mask!10352 thiss!1504) #b00000000000000000000001111111111) (= (mask!10352 thiss!1504) #b00000000000000000000011111111111) (= (mask!10352 thiss!1504) #b00000000000000000000111111111111) (= (mask!10352 thiss!1504) #b00000000000000000001111111111111) (= (mask!10352 thiss!1504) #b00000000000000000011111111111111) (= (mask!10352 thiss!1504) #b00000000000000000111111111111111) (= (mask!10352 thiss!1504) #b00000000000000001111111111111111) (= (mask!10352 thiss!1504) #b00000000000000011111111111111111) (= (mask!10352 thiss!1504) #b00000000000000111111111111111111) (= (mask!10352 thiss!1504) #b00000000000001111111111111111111) (= (mask!10352 thiss!1504) #b00000000000011111111111111111111) (= (mask!10352 thiss!1504) #b00000000000111111111111111111111) (= (mask!10352 thiss!1504) #b00000000001111111111111111111111) (= (mask!10352 thiss!1504) #b00000000011111111111111111111111) (= (mask!10352 thiss!1504) #b00000000111111111111111111111111) (= (mask!10352 thiss!1504) #b00000001111111111111111111111111) (= (mask!10352 thiss!1504) #b00000011111111111111111111111111) (= (mask!10352 thiss!1504) #b00000111111111111111111111111111) (= (mask!10352 thiss!1504) #b00001111111111111111111111111111) (= (mask!10352 thiss!1504) #b00011111111111111111111111111111) (= (mask!10352 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10352 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!235590 d!59213))

(declare-fun b!235643 () Bool)

(declare-fun e!153034 () Bool)

(declare-fun call!21904 () Bool)

(assert (=> b!235643 (= e!153034 call!21904)))

(declare-fun b!235644 () Bool)

(declare-fun e!153035 () Bool)

(assert (=> b!235644 (= e!153035 call!21904)))

(declare-fun d!59215 () Bool)

(declare-fun res!115595 () Bool)

(declare-fun e!153036 () Bool)

(assert (=> d!59215 (=> res!115595 e!153036)))

(assert (=> d!59215 (= res!115595 (bvsge #b00000000000000000000000000000000 (size!5879 (_keys!6454 thiss!1504))))))

(assert (=> d!59215 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6454 thiss!1504) (mask!10352 thiss!1504)) e!153036)))

(declare-fun b!235645 () Bool)

(assert (=> b!235645 (= e!153034 e!153035)))

(declare-fun lt!119187 () (_ BitVec 64))

(assert (=> b!235645 (= lt!119187 (select (arr!5542 (_keys!6454 thiss!1504)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!7255 0))(
  ( (Unit!7256) )
))
(declare-fun lt!119189 () Unit!7255)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11662 (_ BitVec 64) (_ BitVec 32)) Unit!7255)

(assert (=> b!235645 (= lt!119189 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6454 thiss!1504) lt!119187 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!11662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!235645 (arrayContainsKey!0 (_keys!6454 thiss!1504) lt!119187 #b00000000000000000000000000000000)))

(declare-fun lt!119188 () Unit!7255)

(assert (=> b!235645 (= lt!119188 lt!119189)))

(declare-fun res!115596 () Bool)

(assert (=> b!235645 (= res!115596 (= (seekEntryOrOpen!0 (select (arr!5542 (_keys!6454 thiss!1504)) #b00000000000000000000000000000000) (_keys!6454 thiss!1504) (mask!10352 thiss!1504)) (Found!1003 #b00000000000000000000000000000000)))))

(assert (=> b!235645 (=> (not res!115596) (not e!153035))))

(declare-fun b!235646 () Bool)

(assert (=> b!235646 (= e!153036 e!153034)))

(declare-fun c!39228 () Bool)

(assert (=> b!235646 (= c!39228 (validKeyInArray!0 (select (arr!5542 (_keys!6454 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!21901 () Bool)

(assert (=> bm!21901 (= call!21904 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6454 thiss!1504) (mask!10352 thiss!1504)))))

(assert (= (and d!59215 (not res!115595)) b!235646))

(assert (= (and b!235646 c!39228) b!235645))

(assert (= (and b!235646 (not c!39228)) b!235643))

(assert (= (and b!235645 res!115596) b!235644))

(assert (= (or b!235644 b!235643) bm!21901))

(declare-fun m!256697 () Bool)

(assert (=> b!235645 m!256697))

(declare-fun m!256699 () Bool)

(assert (=> b!235645 m!256699))

(declare-fun m!256701 () Bool)

(assert (=> b!235645 m!256701))

(assert (=> b!235645 m!256697))

(declare-fun m!256703 () Bool)

(assert (=> b!235645 m!256703))

(assert (=> b!235646 m!256697))

(assert (=> b!235646 m!256697))

(declare-fun m!256705 () Bool)

(assert (=> b!235646 m!256705))

(declare-fun m!256707 () Bool)

(assert (=> bm!21901 m!256707))

(assert (=> b!235595 d!59215))

(declare-fun d!59217 () Bool)

(declare-fun res!115603 () Bool)

(declare-fun e!153039 () Bool)

(assert (=> d!59217 (=> (not res!115603) (not e!153039))))

(declare-fun simpleValid!233 (LongMapFixedSize!3414) Bool)

(assert (=> d!59217 (= res!115603 (simpleValid!233 thiss!1504))))

(assert (=> d!59217 (= (valid!1341 thiss!1504) e!153039)))

(declare-fun b!235653 () Bool)

(declare-fun res!115604 () Bool)

(assert (=> b!235653 (=> (not res!115604) (not e!153039))))

(declare-fun arrayCountValidKeys!0 (array!11662 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!235653 (= res!115604 (= (arrayCountValidKeys!0 (_keys!6454 thiss!1504) #b00000000000000000000000000000000 (size!5879 (_keys!6454 thiss!1504))) (_size!1756 thiss!1504)))))

(declare-fun b!235654 () Bool)

(declare-fun res!115605 () Bool)

(assert (=> b!235654 (=> (not res!115605) (not e!153039))))

(assert (=> b!235654 (= res!115605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6454 thiss!1504) (mask!10352 thiss!1504)))))

(declare-fun b!235655 () Bool)

(assert (=> b!235655 (= e!153039 (arrayNoDuplicates!0 (_keys!6454 thiss!1504) #b00000000000000000000000000000000 Nil!3563))))

(assert (= (and d!59217 res!115603) b!235653))

(assert (= (and b!235653 res!115604) b!235654))

(assert (= (and b!235654 res!115605) b!235655))

(declare-fun m!256709 () Bool)

(assert (=> d!59217 m!256709))

(declare-fun m!256711 () Bool)

(assert (=> b!235653 m!256711))

(assert (=> b!235654 m!256661))

(assert (=> b!235655 m!256655))

(assert (=> start!22546 d!59217))

(declare-fun d!59219 () Bool)

(declare-fun e!153044 () Bool)

(assert (=> d!59219 e!153044))

(declare-fun res!115608 () Bool)

(assert (=> d!59219 (=> res!115608 e!153044)))

(declare-fun lt!119201 () Bool)

(assert (=> d!59219 (= res!115608 (not lt!119201))))

(declare-fun lt!119198 () Bool)

(assert (=> d!59219 (= lt!119201 lt!119198)))

(declare-fun lt!119199 () Unit!7255)

(declare-fun e!153045 () Unit!7255)

(assert (=> d!59219 (= lt!119199 e!153045)))

(declare-fun c!39231 () Bool)

(assert (=> d!59219 (= c!39231 lt!119198)))

(declare-fun containsKey!260 (List!3565 (_ BitVec 64)) Bool)

(assert (=> d!59219 (= lt!119198 (containsKey!260 (toList!1795 (getCurrentListMap!1318 (_keys!6454 thiss!1504) (_values!4361 thiss!1504) (mask!10352 thiss!1504) (extraKeys!4115 thiss!1504) (zeroValue!4219 thiss!1504) (minValue!4219 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4378 thiss!1504))) key!932))))

(assert (=> d!59219 (= (contains!1666 (getCurrentListMap!1318 (_keys!6454 thiss!1504) (_values!4361 thiss!1504) (mask!10352 thiss!1504) (extraKeys!4115 thiss!1504) (zeroValue!4219 thiss!1504) (minValue!4219 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4378 thiss!1504)) key!932) lt!119201)))

(declare-fun b!235662 () Bool)

(declare-fun lt!119200 () Unit!7255)

(assert (=> b!235662 (= e!153045 lt!119200)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!209 (List!3565 (_ BitVec 64)) Unit!7255)

(assert (=> b!235662 (= lt!119200 (lemmaContainsKeyImpliesGetValueByKeyDefined!209 (toList!1795 (getCurrentListMap!1318 (_keys!6454 thiss!1504) (_values!4361 thiss!1504) (mask!10352 thiss!1504) (extraKeys!4115 thiss!1504) (zeroValue!4219 thiss!1504) (minValue!4219 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4378 thiss!1504))) key!932))))

(declare-datatypes ((Option!274 0))(
  ( (Some!273 (v!5171 V!7915)) (None!272) )
))
(declare-fun isDefined!210 (Option!274) Bool)

(declare-fun getValueByKey!268 (List!3565 (_ BitVec 64)) Option!274)

(assert (=> b!235662 (isDefined!210 (getValueByKey!268 (toList!1795 (getCurrentListMap!1318 (_keys!6454 thiss!1504) (_values!4361 thiss!1504) (mask!10352 thiss!1504) (extraKeys!4115 thiss!1504) (zeroValue!4219 thiss!1504) (minValue!4219 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4378 thiss!1504))) key!932))))

(declare-fun b!235663 () Bool)

(declare-fun Unit!7257 () Unit!7255)

(assert (=> b!235663 (= e!153045 Unit!7257)))

(declare-fun b!235664 () Bool)

(assert (=> b!235664 (= e!153044 (isDefined!210 (getValueByKey!268 (toList!1795 (getCurrentListMap!1318 (_keys!6454 thiss!1504) (_values!4361 thiss!1504) (mask!10352 thiss!1504) (extraKeys!4115 thiss!1504) (zeroValue!4219 thiss!1504) (minValue!4219 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4378 thiss!1504))) key!932)))))

(assert (= (and d!59219 c!39231) b!235662))

(assert (= (and d!59219 (not c!39231)) b!235663))

(assert (= (and d!59219 (not res!115608)) b!235664))

(declare-fun m!256713 () Bool)

(assert (=> d!59219 m!256713))

(declare-fun m!256715 () Bool)

(assert (=> b!235662 m!256715))

(declare-fun m!256717 () Bool)

(assert (=> b!235662 m!256717))

(assert (=> b!235662 m!256717))

(declare-fun m!256719 () Bool)

(assert (=> b!235662 m!256719))

(assert (=> b!235664 m!256717))

(assert (=> b!235664 m!256717))

(assert (=> b!235664 m!256719))

(assert (=> b!235587 d!59219))

(declare-fun b!235707 () Bool)

(declare-fun e!153082 () ListLongMap!3559)

(declare-fun e!153078 () ListLongMap!3559)

(assert (=> b!235707 (= e!153082 e!153078)))

(declare-fun c!39249 () Bool)

(assert (=> b!235707 (= c!39249 (and (not (= (bvand (extraKeys!4115 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4115 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!21916 () Bool)

(declare-fun call!21923 () ListLongMap!3559)

(declare-fun call!21921 () ListLongMap!3559)

(assert (=> bm!21916 (= call!21923 call!21921)))

(declare-fun b!235708 () Bool)

(declare-fun res!115632 () Bool)

(declare-fun e!153073 () Bool)

(assert (=> b!235708 (=> (not res!115632) (not e!153073))))

(declare-fun e!153076 () Bool)

(assert (=> b!235708 (= res!115632 e!153076)))

(declare-fun res!115627 () Bool)

(assert (=> b!235708 (=> res!115627 e!153076)))

(declare-fun e!153084 () Bool)

(assert (=> b!235708 (= res!115627 (not e!153084))))

(declare-fun res!115635 () Bool)

(assert (=> b!235708 (=> (not res!115635) (not e!153084))))

(assert (=> b!235708 (= res!115635 (bvslt #b00000000000000000000000000000000 (size!5879 (_keys!6454 thiss!1504))))))

(declare-fun bm!21917 () Bool)

(declare-fun call!21922 () ListLongMap!3559)

(declare-fun call!21924 () ListLongMap!3559)

(assert (=> bm!21917 (= call!21922 call!21924)))

(declare-fun b!235709 () Bool)

(declare-fun c!39246 () Bool)

(assert (=> b!235709 (= c!39246 (and (not (= (bvand (extraKeys!4115 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4115 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!153072 () ListLongMap!3559)

(assert (=> b!235709 (= e!153078 e!153072)))

(declare-fun b!235710 () Bool)

(assert (=> b!235710 (= e!153072 call!21922)))

(declare-fun d!59221 () Bool)

(assert (=> d!59221 e!153073))

(declare-fun res!115634 () Bool)

(assert (=> d!59221 (=> (not res!115634) (not e!153073))))

(assert (=> d!59221 (= res!115634 (or (bvsge #b00000000000000000000000000000000 (size!5879 (_keys!6454 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5879 (_keys!6454 thiss!1504))))))))

(declare-fun lt!119263 () ListLongMap!3559)

(declare-fun lt!119258 () ListLongMap!3559)

(assert (=> d!59221 (= lt!119263 lt!119258)))

(declare-fun lt!119251 () Unit!7255)

(declare-fun e!153083 () Unit!7255)

(assert (=> d!59221 (= lt!119251 e!153083)))

(declare-fun c!39245 () Bool)

(declare-fun e!153074 () Bool)

(assert (=> d!59221 (= c!39245 e!153074)))

(declare-fun res!115631 () Bool)

(assert (=> d!59221 (=> (not res!115631) (not e!153074))))

(assert (=> d!59221 (= res!115631 (bvslt #b00000000000000000000000000000000 (size!5879 (_keys!6454 thiss!1504))))))

(assert (=> d!59221 (= lt!119258 e!153082)))

(declare-fun c!39247 () Bool)

(assert (=> d!59221 (= c!39247 (and (not (= (bvand (extraKeys!4115 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4115 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!59221 (validMask!0 (mask!10352 thiss!1504))))

(assert (=> d!59221 (= (getCurrentListMap!1318 (_keys!6454 thiss!1504) (_values!4361 thiss!1504) (mask!10352 thiss!1504) (extraKeys!4115 thiss!1504) (zeroValue!4219 thiss!1504) (minValue!4219 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4378 thiss!1504)) lt!119263)))

(declare-fun b!235711 () Bool)

(declare-fun e!153080 () Bool)

(declare-fun apply!211 (ListLongMap!3559 (_ BitVec 64)) V!7915)

(assert (=> b!235711 (= e!153080 (= (apply!211 lt!119263 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4219 thiss!1504)))))

(declare-fun b!235712 () Bool)

(declare-fun lt!119256 () Unit!7255)

(assert (=> b!235712 (= e!153083 lt!119256)))

(declare-fun lt!119248 () ListLongMap!3559)

(declare-fun getCurrentListMapNoExtraKeys!530 (array!11662 array!11660 (_ BitVec 32) (_ BitVec 32) V!7915 V!7915 (_ BitVec 32) Int) ListLongMap!3559)

(assert (=> b!235712 (= lt!119248 (getCurrentListMapNoExtraKeys!530 (_keys!6454 thiss!1504) (_values!4361 thiss!1504) (mask!10352 thiss!1504) (extraKeys!4115 thiss!1504) (zeroValue!4219 thiss!1504) (minValue!4219 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4378 thiss!1504)))))

(declare-fun lt!119246 () (_ BitVec 64))

(assert (=> b!235712 (= lt!119246 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119249 () (_ BitVec 64))

(assert (=> b!235712 (= lt!119249 (select (arr!5542 (_keys!6454 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119265 () Unit!7255)

(declare-fun addStillContains!187 (ListLongMap!3559 (_ BitVec 64) V!7915 (_ BitVec 64)) Unit!7255)

(assert (=> b!235712 (= lt!119265 (addStillContains!187 lt!119248 lt!119246 (zeroValue!4219 thiss!1504) lt!119249))))

(declare-fun +!633 (ListLongMap!3559 tuple2!4632) ListLongMap!3559)

(assert (=> b!235712 (contains!1666 (+!633 lt!119248 (tuple2!4633 lt!119246 (zeroValue!4219 thiss!1504))) lt!119249)))

(declare-fun lt!119252 () Unit!7255)

(assert (=> b!235712 (= lt!119252 lt!119265)))

(declare-fun lt!119261 () ListLongMap!3559)

(assert (=> b!235712 (= lt!119261 (getCurrentListMapNoExtraKeys!530 (_keys!6454 thiss!1504) (_values!4361 thiss!1504) (mask!10352 thiss!1504) (extraKeys!4115 thiss!1504) (zeroValue!4219 thiss!1504) (minValue!4219 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4378 thiss!1504)))))

(declare-fun lt!119262 () (_ BitVec 64))

(assert (=> b!235712 (= lt!119262 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119264 () (_ BitVec 64))

(assert (=> b!235712 (= lt!119264 (select (arr!5542 (_keys!6454 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119266 () Unit!7255)

(declare-fun addApplyDifferent!187 (ListLongMap!3559 (_ BitVec 64) V!7915 (_ BitVec 64)) Unit!7255)

(assert (=> b!235712 (= lt!119266 (addApplyDifferent!187 lt!119261 lt!119262 (minValue!4219 thiss!1504) lt!119264))))

(assert (=> b!235712 (= (apply!211 (+!633 lt!119261 (tuple2!4633 lt!119262 (minValue!4219 thiss!1504))) lt!119264) (apply!211 lt!119261 lt!119264))))

(declare-fun lt!119250 () Unit!7255)

(assert (=> b!235712 (= lt!119250 lt!119266)))

(declare-fun lt!119267 () ListLongMap!3559)

(assert (=> b!235712 (= lt!119267 (getCurrentListMapNoExtraKeys!530 (_keys!6454 thiss!1504) (_values!4361 thiss!1504) (mask!10352 thiss!1504) (extraKeys!4115 thiss!1504) (zeroValue!4219 thiss!1504) (minValue!4219 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4378 thiss!1504)))))

(declare-fun lt!119253 () (_ BitVec 64))

(assert (=> b!235712 (= lt!119253 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119247 () (_ BitVec 64))

(assert (=> b!235712 (= lt!119247 (select (arr!5542 (_keys!6454 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119257 () Unit!7255)

(assert (=> b!235712 (= lt!119257 (addApplyDifferent!187 lt!119267 lt!119253 (zeroValue!4219 thiss!1504) lt!119247))))

(assert (=> b!235712 (= (apply!211 (+!633 lt!119267 (tuple2!4633 lt!119253 (zeroValue!4219 thiss!1504))) lt!119247) (apply!211 lt!119267 lt!119247))))

(declare-fun lt!119260 () Unit!7255)

(assert (=> b!235712 (= lt!119260 lt!119257)))

(declare-fun lt!119254 () ListLongMap!3559)

(assert (=> b!235712 (= lt!119254 (getCurrentListMapNoExtraKeys!530 (_keys!6454 thiss!1504) (_values!4361 thiss!1504) (mask!10352 thiss!1504) (extraKeys!4115 thiss!1504) (zeroValue!4219 thiss!1504) (minValue!4219 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4378 thiss!1504)))))

(declare-fun lt!119255 () (_ BitVec 64))

(assert (=> b!235712 (= lt!119255 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119259 () (_ BitVec 64))

(assert (=> b!235712 (= lt!119259 (select (arr!5542 (_keys!6454 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!235712 (= lt!119256 (addApplyDifferent!187 lt!119254 lt!119255 (minValue!4219 thiss!1504) lt!119259))))

(assert (=> b!235712 (= (apply!211 (+!633 lt!119254 (tuple2!4633 lt!119255 (minValue!4219 thiss!1504))) lt!119259) (apply!211 lt!119254 lt!119259))))

(declare-fun b!235713 () Bool)

(declare-fun call!21925 () ListLongMap!3559)

(assert (=> b!235713 (= e!153072 call!21925)))

(declare-fun b!235714 () Bool)

(declare-fun e!153075 () Bool)

(declare-fun call!21920 () Bool)

(assert (=> b!235714 (= e!153075 (not call!21920))))

(declare-fun bm!21918 () Bool)

(assert (=> bm!21918 (= call!21920 (contains!1666 lt!119263 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!235715 () Bool)

(assert (=> b!235715 (= e!153078 call!21922)))

(declare-fun b!235716 () Bool)

(declare-fun e!153079 () Bool)

(declare-fun call!21919 () Bool)

(assert (=> b!235716 (= e!153079 (not call!21919))))

(declare-fun b!235717 () Bool)

(declare-fun e!153077 () Bool)

(declare-fun get!2849 (ValueCell!2757 V!7915) V!7915)

(declare-fun dynLambda!549 (Int (_ BitVec 64)) V!7915)

(assert (=> b!235717 (= e!153077 (= (apply!211 lt!119263 (select (arr!5542 (_keys!6454 thiss!1504)) #b00000000000000000000000000000000)) (get!2849 (select (arr!5541 (_values!4361 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!549 (defaultEntry!4378 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!235717 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5878 (_values!4361 thiss!1504))))))

(assert (=> b!235717 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5879 (_keys!6454 thiss!1504))))))

(declare-fun b!235718 () Bool)

(assert (=> b!235718 (= e!153074 (validKeyInArray!0 (select (arr!5542 (_keys!6454 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!235719 () Bool)

(assert (=> b!235719 (= e!153073 e!153075)))

(declare-fun c!39244 () Bool)

(assert (=> b!235719 (= c!39244 (not (= (bvand (extraKeys!4115 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!235720 () Bool)

(declare-fun res!115629 () Bool)

(assert (=> b!235720 (=> (not res!115629) (not e!153073))))

(assert (=> b!235720 (= res!115629 e!153079)))

(declare-fun c!39248 () Bool)

(assert (=> b!235720 (= c!39248 (not (= (bvand (extraKeys!4115 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!21919 () Bool)

(assert (=> bm!21919 (= call!21919 (contains!1666 lt!119263 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!21920 () Bool)

(assert (=> bm!21920 (= call!21924 (+!633 (ite c!39247 call!21921 (ite c!39249 call!21923 call!21925)) (ite (or c!39247 c!39249) (tuple2!4633 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4219 thiss!1504)) (tuple2!4633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4219 thiss!1504)))))))

(declare-fun b!235721 () Bool)

(assert (=> b!235721 (= e!153084 (validKeyInArray!0 (select (arr!5542 (_keys!6454 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!235722 () Bool)

(assert (=> b!235722 (= e!153082 (+!633 call!21924 (tuple2!4633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4219 thiss!1504))))))

(declare-fun b!235723 () Bool)

(declare-fun Unit!7258 () Unit!7255)

(assert (=> b!235723 (= e!153083 Unit!7258)))

(declare-fun bm!21921 () Bool)

(assert (=> bm!21921 (= call!21925 call!21923)))

(declare-fun b!235724 () Bool)

(declare-fun e!153081 () Bool)

(assert (=> b!235724 (= e!153079 e!153081)))

(declare-fun res!115628 () Bool)

(assert (=> b!235724 (= res!115628 call!21919)))

(assert (=> b!235724 (=> (not res!115628) (not e!153081))))

(declare-fun bm!21922 () Bool)

(assert (=> bm!21922 (= call!21921 (getCurrentListMapNoExtraKeys!530 (_keys!6454 thiss!1504) (_values!4361 thiss!1504) (mask!10352 thiss!1504) (extraKeys!4115 thiss!1504) (zeroValue!4219 thiss!1504) (minValue!4219 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4378 thiss!1504)))))

(declare-fun b!235725 () Bool)

(assert (=> b!235725 (= e!153081 (= (apply!211 lt!119263 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4219 thiss!1504)))))

(declare-fun b!235726 () Bool)

(assert (=> b!235726 (= e!153076 e!153077)))

(declare-fun res!115630 () Bool)

(assert (=> b!235726 (=> (not res!115630) (not e!153077))))

(assert (=> b!235726 (= res!115630 (contains!1666 lt!119263 (select (arr!5542 (_keys!6454 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!235726 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5879 (_keys!6454 thiss!1504))))))

(declare-fun b!235727 () Bool)

(assert (=> b!235727 (= e!153075 e!153080)))

(declare-fun res!115633 () Bool)

(assert (=> b!235727 (= res!115633 call!21920)))

(assert (=> b!235727 (=> (not res!115633) (not e!153080))))

(assert (= (and d!59221 c!39247) b!235722))

(assert (= (and d!59221 (not c!39247)) b!235707))

(assert (= (and b!235707 c!39249) b!235715))

(assert (= (and b!235707 (not c!39249)) b!235709))

(assert (= (and b!235709 c!39246) b!235710))

(assert (= (and b!235709 (not c!39246)) b!235713))

(assert (= (or b!235710 b!235713) bm!21921))

(assert (= (or b!235715 bm!21921) bm!21916))

(assert (= (or b!235715 b!235710) bm!21917))

(assert (= (or b!235722 bm!21916) bm!21922))

(assert (= (or b!235722 bm!21917) bm!21920))

(assert (= (and d!59221 res!115631) b!235718))

(assert (= (and d!59221 c!39245) b!235712))

(assert (= (and d!59221 (not c!39245)) b!235723))

(assert (= (and d!59221 res!115634) b!235708))

(assert (= (and b!235708 res!115635) b!235721))

(assert (= (and b!235708 (not res!115627)) b!235726))

(assert (= (and b!235726 res!115630) b!235717))

(assert (= (and b!235708 res!115632) b!235720))

(assert (= (and b!235720 c!39248) b!235724))

(assert (= (and b!235720 (not c!39248)) b!235716))

(assert (= (and b!235724 res!115628) b!235725))

(assert (= (or b!235724 b!235716) bm!21919))

(assert (= (and b!235720 res!115629) b!235719))

(assert (= (and b!235719 c!39244) b!235727))

(assert (= (and b!235719 (not c!39244)) b!235714))

(assert (= (and b!235727 res!115633) b!235711))

(assert (= (or b!235727 b!235714) bm!21918))

(declare-fun b_lambda!7937 () Bool)

(assert (=> (not b_lambda!7937) (not b!235717)))

(declare-fun t!8551 () Bool)

(declare-fun tb!2943 () Bool)

(assert (=> (and b!235591 (= (defaultEntry!4378 thiss!1504) (defaultEntry!4378 thiss!1504)) t!8551) tb!2943))

(declare-fun result!5135 () Bool)

(assert (=> tb!2943 (= result!5135 tp_is_empty!6201)))

(assert (=> b!235717 t!8551))

(declare-fun b_and!13291 () Bool)

(assert (= b_and!13287 (and (=> t!8551 result!5135) b_and!13291)))

(assert (=> b!235721 m!256697))

(assert (=> b!235721 m!256697))

(assert (=> b!235721 m!256705))

(declare-fun m!256721 () Bool)

(assert (=> b!235725 m!256721))

(declare-fun m!256723 () Bool)

(assert (=> b!235712 m!256723))

(declare-fun m!256725 () Bool)

(assert (=> b!235712 m!256725))

(declare-fun m!256727 () Bool)

(assert (=> b!235712 m!256727))

(assert (=> b!235712 m!256723))

(declare-fun m!256729 () Bool)

(assert (=> b!235712 m!256729))

(declare-fun m!256731 () Bool)

(assert (=> b!235712 m!256731))

(declare-fun m!256733 () Bool)

(assert (=> b!235712 m!256733))

(declare-fun m!256735 () Bool)

(assert (=> b!235712 m!256735))

(declare-fun m!256737 () Bool)

(assert (=> b!235712 m!256737))

(assert (=> b!235712 m!256729))

(declare-fun m!256739 () Bool)

(assert (=> b!235712 m!256739))

(assert (=> b!235712 m!256697))

(declare-fun m!256741 () Bool)

(assert (=> b!235712 m!256741))

(assert (=> b!235712 m!256731))

(declare-fun m!256743 () Bool)

(assert (=> b!235712 m!256743))

(assert (=> b!235712 m!256741))

(declare-fun m!256745 () Bool)

(assert (=> b!235712 m!256745))

(declare-fun m!256747 () Bool)

(assert (=> b!235712 m!256747))

(declare-fun m!256749 () Bool)

(assert (=> b!235712 m!256749))

(declare-fun m!256751 () Bool)

(assert (=> b!235712 m!256751))

(declare-fun m!256753 () Bool)

(assert (=> b!235712 m!256753))

(declare-fun m!256755 () Bool)

(assert (=> b!235722 m!256755))

(declare-fun m!256757 () Bool)

(assert (=> bm!21919 m!256757))

(assert (=> b!235718 m!256697))

(assert (=> b!235718 m!256697))

(assert (=> b!235718 m!256705))

(assert (=> bm!21922 m!256735))

(declare-fun m!256759 () Bool)

(assert (=> b!235711 m!256759))

(assert (=> b!235726 m!256697))

(assert (=> b!235726 m!256697))

(declare-fun m!256761 () Bool)

(assert (=> b!235726 m!256761))

(declare-fun m!256763 () Bool)

(assert (=> bm!21918 m!256763))

(assert (=> d!59221 m!256673))

(declare-fun m!256765 () Bool)

(assert (=> bm!21920 m!256765))

(assert (=> b!235717 m!256697))

(declare-fun m!256767 () Bool)

(assert (=> b!235717 m!256767))

(declare-fun m!256769 () Bool)

(assert (=> b!235717 m!256769))

(declare-fun m!256771 () Bool)

(assert (=> b!235717 m!256771))

(assert (=> b!235717 m!256769))

(assert (=> b!235717 m!256771))

(declare-fun m!256773 () Bool)

(assert (=> b!235717 m!256773))

(assert (=> b!235717 m!256697))

(assert (=> b!235587 d!59221))

(declare-fun e!153091 () SeekEntryResult!1003)

(declare-fun b!235742 () Bool)

(declare-fun lt!119275 () SeekEntryResult!1003)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11662 (_ BitVec 32)) SeekEntryResult!1003)

(assert (=> b!235742 (= e!153091 (seekKeyOrZeroReturnVacant!0 (x!23815 lt!119275) (index!6184 lt!119275) (index!6184 lt!119275) key!932 (_keys!6454 thiss!1504) (mask!10352 thiss!1504)))))

(declare-fun b!235743 () Bool)

(declare-fun c!39256 () Bool)

(declare-fun lt!119276 () (_ BitVec 64))

(assert (=> b!235743 (= c!39256 (= lt!119276 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!153093 () SeekEntryResult!1003)

(assert (=> b!235743 (= e!153093 e!153091)))

(declare-fun b!235744 () Bool)

(declare-fun e!153092 () SeekEntryResult!1003)

(assert (=> b!235744 (= e!153092 e!153093)))

(assert (=> b!235744 (= lt!119276 (select (arr!5542 (_keys!6454 thiss!1504)) (index!6184 lt!119275)))))

(declare-fun c!39258 () Bool)

(assert (=> b!235744 (= c!39258 (= lt!119276 key!932))))

(declare-fun b!235745 () Bool)

(assert (=> b!235745 (= e!153093 (Found!1003 (index!6184 lt!119275)))))

(declare-fun b!235746 () Bool)

(assert (=> b!235746 (= e!153092 Undefined!1003)))

(declare-fun b!235747 () Bool)

(assert (=> b!235747 (= e!153091 (MissingZero!1003 (index!6184 lt!119275)))))

(declare-fun d!59223 () Bool)

(declare-fun lt!119274 () SeekEntryResult!1003)

(assert (=> d!59223 (and (or ((_ is Undefined!1003) lt!119274) (not ((_ is Found!1003) lt!119274)) (and (bvsge (index!6183 lt!119274) #b00000000000000000000000000000000) (bvslt (index!6183 lt!119274) (size!5879 (_keys!6454 thiss!1504))))) (or ((_ is Undefined!1003) lt!119274) ((_ is Found!1003) lt!119274) (not ((_ is MissingZero!1003) lt!119274)) (and (bvsge (index!6182 lt!119274) #b00000000000000000000000000000000) (bvslt (index!6182 lt!119274) (size!5879 (_keys!6454 thiss!1504))))) (or ((_ is Undefined!1003) lt!119274) ((_ is Found!1003) lt!119274) ((_ is MissingZero!1003) lt!119274) (not ((_ is MissingVacant!1003) lt!119274)) (and (bvsge (index!6185 lt!119274) #b00000000000000000000000000000000) (bvslt (index!6185 lt!119274) (size!5879 (_keys!6454 thiss!1504))))) (or ((_ is Undefined!1003) lt!119274) (ite ((_ is Found!1003) lt!119274) (= (select (arr!5542 (_keys!6454 thiss!1504)) (index!6183 lt!119274)) key!932) (ite ((_ is MissingZero!1003) lt!119274) (= (select (arr!5542 (_keys!6454 thiss!1504)) (index!6182 lt!119274)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1003) lt!119274) (= (select (arr!5542 (_keys!6454 thiss!1504)) (index!6185 lt!119274)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!59223 (= lt!119274 e!153092)))

(declare-fun c!39257 () Bool)

(assert (=> d!59223 (= c!39257 (and ((_ is Intermediate!1003) lt!119275) (undefined!1815 lt!119275)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11662 (_ BitVec 32)) SeekEntryResult!1003)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59223 (= lt!119275 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10352 thiss!1504)) key!932 (_keys!6454 thiss!1504) (mask!10352 thiss!1504)))))

(assert (=> d!59223 (validMask!0 (mask!10352 thiss!1504))))

(assert (=> d!59223 (= (seekEntryOrOpen!0 key!932 (_keys!6454 thiss!1504) (mask!10352 thiss!1504)) lt!119274)))

(assert (= (and d!59223 c!39257) b!235746))

(assert (= (and d!59223 (not c!39257)) b!235744))

(assert (= (and b!235744 c!39258) b!235745))

(assert (= (and b!235744 (not c!39258)) b!235743))

(assert (= (and b!235743 c!39256) b!235747))

(assert (= (and b!235743 (not c!39256)) b!235742))

(declare-fun m!256775 () Bool)

(assert (=> b!235742 m!256775))

(declare-fun m!256777 () Bool)

(assert (=> b!235744 m!256777))

(declare-fun m!256779 () Bool)

(assert (=> d!59223 m!256779))

(declare-fun m!256781 () Bool)

(assert (=> d!59223 m!256781))

(assert (=> d!59223 m!256779))

(declare-fun m!256783 () Bool)

(assert (=> d!59223 m!256783))

(declare-fun m!256785 () Bool)

(assert (=> d!59223 m!256785))

(assert (=> d!59223 m!256673))

(declare-fun m!256787 () Bool)

(assert (=> d!59223 m!256787))

(assert (=> b!235596 d!59223))

(declare-fun d!59225 () Bool)

(assert (=> d!59225 (= (array_inv!3647 (_keys!6454 thiss!1504)) (bvsge (size!5879 (_keys!6454 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!235591 d!59225))

(declare-fun d!59227 () Bool)

(assert (=> d!59227 (= (array_inv!3648 (_values!4361 thiss!1504)) (bvsge (size!5878 (_values!4361 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!235591 d!59227))

(declare-fun b!235758 () Bool)

(declare-fun e!153105 () Bool)

(declare-fun e!153103 () Bool)

(assert (=> b!235758 (= e!153105 e!153103)))

(declare-fun c!39261 () Bool)

(assert (=> b!235758 (= c!39261 (validKeyInArray!0 (select (arr!5542 (_keys!6454 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!235759 () Bool)

(declare-fun call!21928 () Bool)

(assert (=> b!235759 (= e!153103 call!21928)))

(declare-fun d!59229 () Bool)

(declare-fun res!115643 () Bool)

(declare-fun e!153102 () Bool)

(assert (=> d!59229 (=> res!115643 e!153102)))

(assert (=> d!59229 (= res!115643 (bvsge #b00000000000000000000000000000000 (size!5879 (_keys!6454 thiss!1504))))))

(assert (=> d!59229 (= (arrayNoDuplicates!0 (_keys!6454 thiss!1504) #b00000000000000000000000000000000 Nil!3563) e!153102)))

(declare-fun bm!21925 () Bool)

(assert (=> bm!21925 (= call!21928 (arrayNoDuplicates!0 (_keys!6454 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!39261 (Cons!3562 (select (arr!5542 (_keys!6454 thiss!1504)) #b00000000000000000000000000000000) Nil!3563) Nil!3563)))))

(declare-fun b!235760 () Bool)

(declare-fun e!153104 () Bool)

(declare-fun contains!1667 (List!3566 (_ BitVec 64)) Bool)

(assert (=> b!235760 (= e!153104 (contains!1667 Nil!3563 (select (arr!5542 (_keys!6454 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!235761 () Bool)

(assert (=> b!235761 (= e!153102 e!153105)))

(declare-fun res!115644 () Bool)

(assert (=> b!235761 (=> (not res!115644) (not e!153105))))

(assert (=> b!235761 (= res!115644 (not e!153104))))

(declare-fun res!115642 () Bool)

(assert (=> b!235761 (=> (not res!115642) (not e!153104))))

(assert (=> b!235761 (= res!115642 (validKeyInArray!0 (select (arr!5542 (_keys!6454 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!235762 () Bool)

(assert (=> b!235762 (= e!153103 call!21928)))

(assert (= (and d!59229 (not res!115643)) b!235761))

(assert (= (and b!235761 res!115642) b!235760))

(assert (= (and b!235761 res!115644) b!235758))

(assert (= (and b!235758 c!39261) b!235759))

(assert (= (and b!235758 (not c!39261)) b!235762))

(assert (= (or b!235759 b!235762) bm!21925))

(assert (=> b!235758 m!256697))

(assert (=> b!235758 m!256697))

(assert (=> b!235758 m!256705))

(assert (=> bm!21925 m!256697))

(declare-fun m!256789 () Bool)

(assert (=> bm!21925 m!256789))

(assert (=> b!235760 m!256697))

(assert (=> b!235760 m!256697))

(declare-fun m!256791 () Bool)

(assert (=> b!235760 m!256791))

(assert (=> b!235761 m!256697))

(assert (=> b!235761 m!256697))

(assert (=> b!235761 m!256705))

(assert (=> b!235593 d!59229))

(declare-fun condMapEmpty!10505 () Bool)

(declare-fun mapDefault!10505 () ValueCell!2757)

(assert (=> mapNonEmpty!10499 (= condMapEmpty!10505 (= mapRest!10499 ((as const (Array (_ BitVec 32) ValueCell!2757)) mapDefault!10505)))))

(declare-fun e!153111 () Bool)

(declare-fun mapRes!10505 () Bool)

(assert (=> mapNonEmpty!10499 (= tp!22186 (and e!153111 mapRes!10505))))

(declare-fun b!235770 () Bool)

(assert (=> b!235770 (= e!153111 tp_is_empty!6201)))

(declare-fun b!235769 () Bool)

(declare-fun e!153110 () Bool)

(assert (=> b!235769 (= e!153110 tp_is_empty!6201)))

(declare-fun mapNonEmpty!10505 () Bool)

(declare-fun tp!22196 () Bool)

(assert (=> mapNonEmpty!10505 (= mapRes!10505 (and tp!22196 e!153110))))

(declare-fun mapRest!10505 () (Array (_ BitVec 32) ValueCell!2757))

(declare-fun mapKey!10505 () (_ BitVec 32))

(declare-fun mapValue!10505 () ValueCell!2757)

(assert (=> mapNonEmpty!10505 (= mapRest!10499 (store mapRest!10505 mapKey!10505 mapValue!10505))))

(declare-fun mapIsEmpty!10505 () Bool)

(assert (=> mapIsEmpty!10505 mapRes!10505))

(assert (= (and mapNonEmpty!10499 condMapEmpty!10505) mapIsEmpty!10505))

(assert (= (and mapNonEmpty!10499 (not condMapEmpty!10505)) mapNonEmpty!10505))

(assert (= (and mapNonEmpty!10505 ((_ is ValueCellFull!2757) mapValue!10505)) b!235769))

(assert (= (and mapNonEmpty!10499 ((_ is ValueCellFull!2757) mapDefault!10505)) b!235770))

(declare-fun m!256793 () Bool)

(assert (=> mapNonEmpty!10505 m!256793))

(declare-fun b_lambda!7939 () Bool)

(assert (= b_lambda!7937 (or (and b!235591 b_free!6339) b_lambda!7939)))

(check-sat (not b!235760) (not b!235726) (not b!235664) (not b!235758) (not b!235717) (not bm!21901) (not b!235645) (not d!59221) (not bm!21919) (not b!235711) (not b!235722) (not b_next!6339) b_and!13291 (not b!235646) (not b!235662) (not b!235718) (not b!235721) (not d!59223) (not bm!21922) (not b!235712) (not bm!21920) (not d!59217) (not b!235742) tp_is_empty!6201 (not b!235761) (not bm!21925) (not b!235725) (not b!235654) (not bm!21918) (not d!59219) (not mapNonEmpty!10505) (not b!235653) (not b!235655) (not b_lambda!7939))
(check-sat b_and!13291 (not b_next!6339))
