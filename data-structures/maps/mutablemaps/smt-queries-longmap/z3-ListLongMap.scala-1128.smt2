; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23192 () Bool)

(assert start!23192)

(declare-fun b!243141 () Bool)

(declare-fun b_free!6519 () Bool)

(declare-fun b_next!6519 () Bool)

(assert (=> b!243141 (= b_free!6519 (not b_next!6519))))

(declare-fun tp!22776 () Bool)

(declare-fun b_and!13517 () Bool)

(assert (=> b!243141 (= tp!22776 b_and!13517)))

(declare-fun b!243124 () Bool)

(declare-fun res!119172 () Bool)

(declare-fun e!157802 () Bool)

(assert (=> b!243124 (=> (not res!119172) (not e!157802))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!243124 (= res!119172 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!243125 () Bool)

(declare-fun e!157803 () Bool)

(declare-fun e!157798 () Bool)

(assert (=> b!243125 (= e!157803 e!157798)))

(declare-fun res!119174 () Bool)

(assert (=> b!243125 (=> (not res!119174) (not e!157798))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!8155 0))(
  ( (V!8156 (val!3235 Int)) )
))
(declare-datatypes ((ValueCell!2847 0))(
  ( (ValueCellFull!2847 (v!5276 V!8155)) (EmptyCell!2847) )
))
(declare-datatypes ((array!12050 0))(
  ( (array!12051 (arr!5721 (Array (_ BitVec 32) ValueCell!2847)) (size!6063 (_ BitVec 32))) )
))
(declare-datatypes ((array!12052 0))(
  ( (array!12053 (arr!5722 (Array (_ BitVec 32) (_ BitVec 64))) (size!6064 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3594 0))(
  ( (LongMapFixedSize!3595 (defaultEntry!4506 Int) (mask!10595 (_ BitVec 32)) (extraKeys!4243 (_ BitVec 32)) (zeroValue!4347 V!8155) (minValue!4347 V!8155) (_size!1846 (_ BitVec 32)) (_keys!6616 array!12052) (_values!4489 array!12050) (_vacant!1846 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3594)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!243125 (= res!119174 (inRange!0 index!297 (mask!10595 thiss!1504)))))

(declare-datatypes ((Unit!7500 0))(
  ( (Unit!7501) )
))
(declare-fun lt!122096 () Unit!7500)

(declare-fun e!157790 () Unit!7500)

(assert (=> b!243125 (= lt!122096 e!157790)))

(declare-fun c!40568 () Bool)

(declare-datatypes ((tuple2!4760 0))(
  ( (tuple2!4761 (_1!2390 (_ BitVec 64)) (_2!2390 V!8155)) )
))
(declare-datatypes ((List!3663 0))(
  ( (Nil!3660) (Cons!3659 (h!4316 tuple2!4760) (t!8676 List!3663)) )
))
(declare-datatypes ((ListLongMap!3687 0))(
  ( (ListLongMap!3688 (toList!1859 List!3663)) )
))
(declare-fun contains!1750 (ListLongMap!3687 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1382 (array!12052 array!12050 (_ BitVec 32) (_ BitVec 32) V!8155 V!8155 (_ BitVec 32) Int) ListLongMap!3687)

(assert (=> b!243125 (= c!40568 (contains!1750 (getCurrentListMap!1382 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4506 thiss!1504)) key!932))))

(declare-fun b!243126 () Bool)

(declare-fun e!157797 () Unit!7500)

(declare-fun Unit!7502 () Unit!7500)

(assert (=> b!243126 (= e!157797 Unit!7502)))

(declare-fun lt!122097 () Unit!7500)

(declare-fun lemmaArrayContainsKeyThenInListMap!164 (array!12052 array!12050 (_ BitVec 32) (_ BitVec 32) V!8155 V!8155 (_ BitVec 64) (_ BitVec 32) Int) Unit!7500)

(assert (=> b!243126 (= lt!122097 (lemmaArrayContainsKeyThenInListMap!164 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4506 thiss!1504)))))

(assert (=> b!243126 false))

(declare-fun b!243127 () Bool)

(declare-fun res!119169 () Bool)

(declare-datatypes ((SeekEntryResult!1080 0))(
  ( (MissingZero!1080 (index!6490 (_ BitVec 32))) (Found!1080 (index!6491 (_ BitVec 32))) (Intermediate!1080 (undefined!1892 Bool) (index!6492 (_ BitVec 32)) (x!24322 (_ BitVec 32))) (Undefined!1080) (MissingVacant!1080 (index!6493 (_ BitVec 32))) )
))
(declare-fun lt!122095 () SeekEntryResult!1080)

(assert (=> b!243127 (= res!119169 (= (select (arr!5722 (_keys!6616 thiss!1504)) (index!6493 lt!122095)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!157792 () Bool)

(assert (=> b!243127 (=> (not res!119169) (not e!157792))))

(declare-fun b!243128 () Bool)

(declare-fun e!157804 () Bool)

(assert (=> b!243128 (= e!157804 e!157792)))

(declare-fun res!119180 () Bool)

(declare-fun call!22669 () Bool)

(assert (=> b!243128 (= res!119180 call!22669)))

(assert (=> b!243128 (=> (not res!119180) (not e!157792))))

(declare-fun b!243129 () Bool)

(declare-fun e!157805 () Bool)

(declare-fun tp_is_empty!6381 () Bool)

(assert (=> b!243129 (= e!157805 tp_is_empty!6381)))

(declare-fun b!243130 () Bool)

(declare-fun res!119179 () Bool)

(declare-fun e!157791 () Bool)

(assert (=> b!243130 (=> (not res!119179) (not e!157791))))

(declare-datatypes ((List!3664 0))(
  ( (Nil!3661) (Cons!3660 (h!4317 (_ BitVec 64)) (t!8677 List!3664)) )
))
(declare-fun contains!1751 (List!3664 (_ BitVec 64)) Bool)

(assert (=> b!243130 (= res!119179 (not (contains!1751 Nil!3661 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!243131 () Bool)

(declare-fun e!157801 () Bool)

(assert (=> b!243131 (= e!157801 tp_is_empty!6381)))

(declare-fun b!243132 () Bool)

(declare-fun lt!122093 () Unit!7500)

(assert (=> b!243132 (= e!157790 lt!122093)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!366 (array!12052 array!12050 (_ BitVec 32) (_ BitVec 32) V!8155 V!8155 (_ BitVec 64) Int) Unit!7500)

(assert (=> b!243132 (= lt!122093 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!366 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) key!932 (defaultEntry!4506 thiss!1504)))))

(declare-fun c!40569 () Bool)

(get-info :version)

(assert (=> b!243132 (= c!40569 ((_ is MissingZero!1080) lt!122095))))

(declare-fun e!157795 () Bool)

(assert (=> b!243132 e!157795))

(declare-fun b!243133 () Bool)

(declare-fun Unit!7503 () Unit!7500)

(assert (=> b!243133 (= e!157797 Unit!7503)))

(declare-fun b!243134 () Bool)

(assert (=> b!243134 (= e!157798 e!157791)))

(declare-fun res!119167 () Bool)

(assert (=> b!243134 (=> (not res!119167) (not e!157791))))

(assert (=> b!243134 (= res!119167 (and (bvslt (size!6064 (_keys!6616 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6064 (_keys!6616 thiss!1504)))))))

(declare-fun lt!122094 () Unit!7500)

(assert (=> b!243134 (= lt!122094 e!157797)))

(declare-fun c!40570 () Bool)

(declare-fun arrayContainsKey!0 (array!12052 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!243134 (= c!40570 (arrayContainsKey!0 (_keys!6616 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!10819 () Bool)

(declare-fun mapRes!10819 () Bool)

(assert (=> mapIsEmpty!10819 mapRes!10819))

(declare-fun b!243135 () Bool)

(declare-fun call!22668 () Bool)

(assert (=> b!243135 (= e!157792 (not call!22668))))

(declare-fun b!243136 () Bool)

(declare-fun res!119176 () Bool)

(declare-fun e!157789 () Bool)

(assert (=> b!243136 (=> (not res!119176) (not e!157789))))

(assert (=> b!243136 (= res!119176 (= (select (arr!5722 (_keys!6616 thiss!1504)) (index!6490 lt!122095)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!243137 () Bool)

(declare-fun arrayNoDuplicates!0 (array!12052 (_ BitVec 32) List!3664) Bool)

(assert (=> b!243137 (= e!157791 (not (arrayNoDuplicates!0 (_keys!6616 thiss!1504) #b00000000000000000000000000000000 Nil!3661)))))

(declare-fun b!243138 () Bool)

(declare-fun e!157793 () Bool)

(assert (=> b!243138 (= e!157793 (contains!1751 Nil!3661 key!932))))

(declare-fun b!243123 () Bool)

(declare-fun e!157806 () Bool)

(declare-fun e!157796 () Bool)

(assert (=> b!243123 (= e!157806 e!157796)))

(declare-fun res!119173 () Bool)

(assert (=> b!243123 (=> (not res!119173) (not e!157796))))

(assert (=> b!243123 (= res!119173 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun res!119178 () Bool)

(assert (=> start!23192 (=> (not res!119178) (not e!157802))))

(declare-fun valid!1401 (LongMapFixedSize!3594) Bool)

(assert (=> start!23192 (= res!119178 (valid!1401 thiss!1504))))

(assert (=> start!23192 e!157802))

(declare-fun e!157799 () Bool)

(assert (=> start!23192 e!157799))

(assert (=> start!23192 true))

(declare-fun b!243139 () Bool)

(declare-fun res!119181 () Bool)

(assert (=> b!243139 (=> (not res!119181) (not e!157789))))

(assert (=> b!243139 (= res!119181 call!22669)))

(assert (=> b!243139 (= e!157795 e!157789)))

(declare-fun b!243140 () Bool)

(assert (=> b!243140 (= e!157804 ((_ is Undefined!1080) lt!122095))))

(declare-fun e!157800 () Bool)

(declare-fun array_inv!3775 (array!12052) Bool)

(declare-fun array_inv!3776 (array!12050) Bool)

(assert (=> b!243141 (= e!157799 (and tp!22776 tp_is_empty!6381 (array_inv!3775 (_keys!6616 thiss!1504)) (array_inv!3776 (_values!4489 thiss!1504)) e!157800))))

(declare-fun b!243142 () Bool)

(declare-fun res!119171 () Bool)

(assert (=> b!243142 (=> (not res!119171) (not e!157791))))

(assert (=> b!243142 (= res!119171 e!157806)))

(declare-fun res!119168 () Bool)

(assert (=> b!243142 (=> res!119168 e!157806)))

(assert (=> b!243142 (= res!119168 e!157793)))

(declare-fun res!119170 () Bool)

(assert (=> b!243142 (=> (not res!119170) (not e!157793))))

(assert (=> b!243142 (= res!119170 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun bm!22665 () Bool)

(assert (=> bm!22665 (= call!22669 (inRange!0 (ite c!40569 (index!6490 lt!122095) (index!6493 lt!122095)) (mask!10595 thiss!1504)))))

(declare-fun b!243143 () Bool)

(assert (=> b!243143 (= e!157802 e!157803)))

(declare-fun res!119177 () Bool)

(assert (=> b!243143 (=> (not res!119177) (not e!157803))))

(assert (=> b!243143 (= res!119177 (or (= lt!122095 (MissingZero!1080 index!297)) (= lt!122095 (MissingVacant!1080 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12052 (_ BitVec 32)) SeekEntryResult!1080)

(assert (=> b!243143 (= lt!122095 (seekEntryOrOpen!0 key!932 (_keys!6616 thiss!1504) (mask!10595 thiss!1504)))))

(declare-fun b!243144 () Bool)

(assert (=> b!243144 (= e!157800 (and e!157801 mapRes!10819))))

(declare-fun condMapEmpty!10819 () Bool)

(declare-fun mapDefault!10819 () ValueCell!2847)

(assert (=> b!243144 (= condMapEmpty!10819 (= (arr!5721 (_values!4489 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2847)) mapDefault!10819)))))

(declare-fun b!243145 () Bool)

(declare-fun res!119166 () Bool)

(assert (=> b!243145 (=> (not res!119166) (not e!157791))))

(assert (=> b!243145 (= res!119166 (not (contains!1751 Nil!3661 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!243146 () Bool)

(assert (=> b!243146 (= e!157796 (not (contains!1751 Nil!3661 key!932)))))

(declare-fun b!243147 () Bool)

(declare-fun Unit!7504 () Unit!7500)

(assert (=> b!243147 (= e!157790 Unit!7504)))

(declare-fun lt!122092 () Unit!7500)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!360 (array!12052 array!12050 (_ BitVec 32) (_ BitVec 32) V!8155 V!8155 (_ BitVec 64) Int) Unit!7500)

(assert (=> b!243147 (= lt!122092 (lemmaInListMapThenSeekEntryOrOpenFindsIt!360 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) key!932 (defaultEntry!4506 thiss!1504)))))

(assert (=> b!243147 false))

(declare-fun b!243148 () Bool)

(declare-fun res!119175 () Bool)

(assert (=> b!243148 (=> (not res!119175) (not e!157791))))

(declare-fun noDuplicate!94 (List!3664) Bool)

(assert (=> b!243148 (= res!119175 (noDuplicate!94 Nil!3661))))

(declare-fun bm!22666 () Bool)

(assert (=> bm!22666 (= call!22668 (arrayContainsKey!0 (_keys!6616 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!243149 () Bool)

(declare-fun c!40571 () Bool)

(assert (=> b!243149 (= c!40571 ((_ is MissingVacant!1080) lt!122095))))

(assert (=> b!243149 (= e!157795 e!157804)))

(declare-fun mapNonEmpty!10819 () Bool)

(declare-fun tp!22777 () Bool)

(assert (=> mapNonEmpty!10819 (= mapRes!10819 (and tp!22777 e!157805))))

(declare-fun mapRest!10819 () (Array (_ BitVec 32) ValueCell!2847))

(declare-fun mapKey!10819 () (_ BitVec 32))

(declare-fun mapValue!10819 () ValueCell!2847)

(assert (=> mapNonEmpty!10819 (= (arr!5721 (_values!4489 thiss!1504)) (store mapRest!10819 mapKey!10819 mapValue!10819))))

(declare-fun b!243150 () Bool)

(assert (=> b!243150 (= e!157789 (not call!22668))))

(assert (= (and start!23192 res!119178) b!243124))

(assert (= (and b!243124 res!119172) b!243143))

(assert (= (and b!243143 res!119177) b!243125))

(assert (= (and b!243125 c!40568) b!243147))

(assert (= (and b!243125 (not c!40568)) b!243132))

(assert (= (and b!243132 c!40569) b!243139))

(assert (= (and b!243132 (not c!40569)) b!243149))

(assert (= (and b!243139 res!119181) b!243136))

(assert (= (and b!243136 res!119176) b!243150))

(assert (= (and b!243149 c!40571) b!243128))

(assert (= (and b!243149 (not c!40571)) b!243140))

(assert (= (and b!243128 res!119180) b!243127))

(assert (= (and b!243127 res!119169) b!243135))

(assert (= (or b!243139 b!243128) bm!22665))

(assert (= (or b!243150 b!243135) bm!22666))

(assert (= (and b!243125 res!119174) b!243134))

(assert (= (and b!243134 c!40570) b!243126))

(assert (= (and b!243134 (not c!40570)) b!243133))

(assert (= (and b!243134 res!119167) b!243148))

(assert (= (and b!243148 res!119175) b!243130))

(assert (= (and b!243130 res!119179) b!243145))

(assert (= (and b!243145 res!119166) b!243142))

(assert (= (and b!243142 res!119170) b!243138))

(assert (= (and b!243142 (not res!119168)) b!243123))

(assert (= (and b!243123 res!119173) b!243146))

(assert (= (and b!243142 res!119171) b!243137))

(assert (= (and b!243144 condMapEmpty!10819) mapIsEmpty!10819))

(assert (= (and b!243144 (not condMapEmpty!10819)) mapNonEmpty!10819))

(assert (= (and mapNonEmpty!10819 ((_ is ValueCellFull!2847) mapValue!10819)) b!243129))

(assert (= (and b!243144 ((_ is ValueCellFull!2847) mapDefault!10819)) b!243131))

(assert (= b!243141 b!243144))

(assert (= start!23192 b!243141))

(declare-fun m!261679 () Bool)

(assert (=> mapNonEmpty!10819 m!261679))

(declare-fun m!261681 () Bool)

(assert (=> bm!22665 m!261681))

(declare-fun m!261683 () Bool)

(assert (=> b!243136 m!261683))

(declare-fun m!261685 () Bool)

(assert (=> b!243126 m!261685))

(declare-fun m!261687 () Bool)

(assert (=> b!243147 m!261687))

(declare-fun m!261689 () Bool)

(assert (=> b!243132 m!261689))

(declare-fun m!261691 () Bool)

(assert (=> start!23192 m!261691))

(declare-fun m!261693 () Bool)

(assert (=> b!243137 m!261693))

(declare-fun m!261695 () Bool)

(assert (=> b!243127 m!261695))

(declare-fun m!261697 () Bool)

(assert (=> bm!22666 m!261697))

(declare-fun m!261699 () Bool)

(assert (=> b!243146 m!261699))

(declare-fun m!261701 () Bool)

(assert (=> b!243143 m!261701))

(declare-fun m!261703 () Bool)

(assert (=> b!243148 m!261703))

(declare-fun m!261705 () Bool)

(assert (=> b!243130 m!261705))

(assert (=> b!243138 m!261699))

(declare-fun m!261707 () Bool)

(assert (=> b!243125 m!261707))

(declare-fun m!261709 () Bool)

(assert (=> b!243125 m!261709))

(assert (=> b!243125 m!261709))

(declare-fun m!261711 () Bool)

(assert (=> b!243125 m!261711))

(declare-fun m!261713 () Bool)

(assert (=> b!243145 m!261713))

(declare-fun m!261715 () Bool)

(assert (=> b!243141 m!261715))

(declare-fun m!261717 () Bool)

(assert (=> b!243141 m!261717))

(assert (=> b!243134 m!261697))

(check-sat (not b!243145) (not b!243146) (not b!243137) (not b!243134) (not b!243147) (not b!243130) (not start!23192) (not mapNonEmpty!10819) (not bm!22666) (not b!243143) (not b!243141) (not b!243148) (not b_next!6519) (not bm!22665) (not b!243132) tp_is_empty!6381 (not b!243138) (not b!243126) (not b!243125) b_and!13517)
(check-sat b_and!13517 (not b_next!6519))
(get-model)

(declare-fun d!59949 () Bool)

(declare-fun lt!122118 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!159 (List!3664) (InoxSet (_ BitVec 64)))

(assert (=> d!59949 (= lt!122118 (select (content!159 Nil!3661) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!157866 () Bool)

(assert (=> d!59949 (= lt!122118 e!157866)))

(declare-fun res!119235 () Bool)

(assert (=> d!59949 (=> (not res!119235) (not e!157866))))

(assert (=> d!59949 (= res!119235 ((_ is Cons!3660) Nil!3661))))

(assert (=> d!59949 (= (contains!1751 Nil!3661 #b1000000000000000000000000000000000000000000000000000000000000000) lt!122118)))

(declare-fun b!243239 () Bool)

(declare-fun e!157865 () Bool)

(assert (=> b!243239 (= e!157866 e!157865)))

(declare-fun res!119234 () Bool)

(assert (=> b!243239 (=> res!119234 e!157865)))

(assert (=> b!243239 (= res!119234 (= (h!4317 Nil!3661) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!243240 () Bool)

(assert (=> b!243240 (= e!157865 (contains!1751 (t!8677 Nil!3661) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!59949 res!119235) b!243239))

(assert (= (and b!243239 (not res!119234)) b!243240))

(declare-fun m!261759 () Bool)

(assert (=> d!59949 m!261759))

(declare-fun m!261761 () Bool)

(assert (=> d!59949 m!261761))

(declare-fun m!261763 () Bool)

(assert (=> b!243240 m!261763))

(assert (=> b!243145 d!59949))

(declare-fun d!59951 () Bool)

(assert (=> d!59951 (= (inRange!0 index!297 (mask!10595 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10595 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!243125 d!59951))

(declare-fun d!59953 () Bool)

(declare-fun e!157872 () Bool)

(assert (=> d!59953 e!157872))

(declare-fun res!119238 () Bool)

(assert (=> d!59953 (=> res!119238 e!157872)))

(declare-fun lt!122129 () Bool)

(assert (=> d!59953 (= res!119238 (not lt!122129))))

(declare-fun lt!122127 () Bool)

(assert (=> d!59953 (= lt!122129 lt!122127)))

(declare-fun lt!122128 () Unit!7500)

(declare-fun e!157871 () Unit!7500)

(assert (=> d!59953 (= lt!122128 e!157871)))

(declare-fun c!40586 () Bool)

(assert (=> d!59953 (= c!40586 lt!122127)))

(declare-fun containsKey!275 (List!3663 (_ BitVec 64)) Bool)

(assert (=> d!59953 (= lt!122127 (containsKey!275 (toList!1859 (getCurrentListMap!1382 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4506 thiss!1504))) key!932))))

(assert (=> d!59953 (= (contains!1750 (getCurrentListMap!1382 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4506 thiss!1504)) key!932) lt!122129)))

(declare-fun b!243247 () Bool)

(declare-fun lt!122130 () Unit!7500)

(assert (=> b!243247 (= e!157871 lt!122130)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!224 (List!3663 (_ BitVec 64)) Unit!7500)

(assert (=> b!243247 (= lt!122130 (lemmaContainsKeyImpliesGetValueByKeyDefined!224 (toList!1859 (getCurrentListMap!1382 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4506 thiss!1504))) key!932))))

(declare-datatypes ((Option!289 0))(
  ( (Some!288 (v!5279 V!8155)) (None!287) )
))
(declare-fun isDefined!225 (Option!289) Bool)

(declare-fun getValueByKey!283 (List!3663 (_ BitVec 64)) Option!289)

(assert (=> b!243247 (isDefined!225 (getValueByKey!283 (toList!1859 (getCurrentListMap!1382 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4506 thiss!1504))) key!932))))

(declare-fun b!243248 () Bool)

(declare-fun Unit!7508 () Unit!7500)

(assert (=> b!243248 (= e!157871 Unit!7508)))

(declare-fun b!243249 () Bool)

(assert (=> b!243249 (= e!157872 (isDefined!225 (getValueByKey!283 (toList!1859 (getCurrentListMap!1382 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4506 thiss!1504))) key!932)))))

(assert (= (and d!59953 c!40586) b!243247))

(assert (= (and d!59953 (not c!40586)) b!243248))

(assert (= (and d!59953 (not res!119238)) b!243249))

(declare-fun m!261765 () Bool)

(assert (=> d!59953 m!261765))

(declare-fun m!261767 () Bool)

(assert (=> b!243247 m!261767))

(declare-fun m!261769 () Bool)

(assert (=> b!243247 m!261769))

(assert (=> b!243247 m!261769))

(declare-fun m!261771 () Bool)

(assert (=> b!243247 m!261771))

(assert (=> b!243249 m!261769))

(assert (=> b!243249 m!261769))

(assert (=> b!243249 m!261771))

(assert (=> b!243125 d!59953))

(declare-fun bm!22687 () Bool)

(declare-fun call!22693 () Bool)

(declare-fun lt!122189 () ListLongMap!3687)

(assert (=> bm!22687 (= call!22693 (contains!1750 lt!122189 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!243292 () Bool)

(declare-fun e!157900 () Unit!7500)

(declare-fun Unit!7509 () Unit!7500)

(assert (=> b!243292 (= e!157900 Unit!7509)))

(declare-fun b!243293 () Bool)

(declare-fun e!157910 () Bool)

(declare-fun apply!226 (ListLongMap!3687 (_ BitVec 64)) V!8155)

(assert (=> b!243293 (= e!157910 (= (apply!226 lt!122189 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4347 thiss!1504)))))

(declare-fun b!243294 () Bool)

(declare-fun lt!122186 () Unit!7500)

(assert (=> b!243294 (= e!157900 lt!122186)))

(declare-fun lt!122184 () ListLongMap!3687)

(declare-fun getCurrentListMapNoExtraKeys!545 (array!12052 array!12050 (_ BitVec 32) (_ BitVec 32) V!8155 V!8155 (_ BitVec 32) Int) ListLongMap!3687)

(assert (=> b!243294 (= lt!122184 (getCurrentListMapNoExtraKeys!545 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4506 thiss!1504)))))

(declare-fun lt!122179 () (_ BitVec 64))

(assert (=> b!243294 (= lt!122179 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122187 () (_ BitVec 64))

(assert (=> b!243294 (= lt!122187 (select (arr!5722 (_keys!6616 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!122183 () Unit!7500)

(declare-fun addStillContains!202 (ListLongMap!3687 (_ BitVec 64) V!8155 (_ BitVec 64)) Unit!7500)

(assert (=> b!243294 (= lt!122183 (addStillContains!202 lt!122184 lt!122179 (zeroValue!4347 thiss!1504) lt!122187))))

(declare-fun +!648 (ListLongMap!3687 tuple2!4760) ListLongMap!3687)

(assert (=> b!243294 (contains!1750 (+!648 lt!122184 (tuple2!4761 lt!122179 (zeroValue!4347 thiss!1504))) lt!122187)))

(declare-fun lt!122175 () Unit!7500)

(assert (=> b!243294 (= lt!122175 lt!122183)))

(declare-fun lt!122191 () ListLongMap!3687)

(assert (=> b!243294 (= lt!122191 (getCurrentListMapNoExtraKeys!545 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4506 thiss!1504)))))

(declare-fun lt!122190 () (_ BitVec 64))

(assert (=> b!243294 (= lt!122190 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122178 () (_ BitVec 64))

(assert (=> b!243294 (= lt!122178 (select (arr!5722 (_keys!6616 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!122176 () Unit!7500)

(declare-fun addApplyDifferent!202 (ListLongMap!3687 (_ BitVec 64) V!8155 (_ BitVec 64)) Unit!7500)

(assert (=> b!243294 (= lt!122176 (addApplyDifferent!202 lt!122191 lt!122190 (minValue!4347 thiss!1504) lt!122178))))

(assert (=> b!243294 (= (apply!226 (+!648 lt!122191 (tuple2!4761 lt!122190 (minValue!4347 thiss!1504))) lt!122178) (apply!226 lt!122191 lt!122178))))

(declare-fun lt!122188 () Unit!7500)

(assert (=> b!243294 (= lt!122188 lt!122176)))

(declare-fun lt!122195 () ListLongMap!3687)

(assert (=> b!243294 (= lt!122195 (getCurrentListMapNoExtraKeys!545 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4506 thiss!1504)))))

(declare-fun lt!122192 () (_ BitVec 64))

(assert (=> b!243294 (= lt!122192 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122194 () (_ BitVec 64))

(assert (=> b!243294 (= lt!122194 (select (arr!5722 (_keys!6616 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!122182 () Unit!7500)

(assert (=> b!243294 (= lt!122182 (addApplyDifferent!202 lt!122195 lt!122192 (zeroValue!4347 thiss!1504) lt!122194))))

(assert (=> b!243294 (= (apply!226 (+!648 lt!122195 (tuple2!4761 lt!122192 (zeroValue!4347 thiss!1504))) lt!122194) (apply!226 lt!122195 lt!122194))))

(declare-fun lt!122196 () Unit!7500)

(assert (=> b!243294 (= lt!122196 lt!122182)))

(declare-fun lt!122185 () ListLongMap!3687)

(assert (=> b!243294 (= lt!122185 (getCurrentListMapNoExtraKeys!545 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4506 thiss!1504)))))

(declare-fun lt!122181 () (_ BitVec 64))

(assert (=> b!243294 (= lt!122181 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122180 () (_ BitVec 64))

(assert (=> b!243294 (= lt!122180 (select (arr!5722 (_keys!6616 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!243294 (= lt!122186 (addApplyDifferent!202 lt!122185 lt!122181 (minValue!4347 thiss!1504) lt!122180))))

(assert (=> b!243294 (= (apply!226 (+!648 lt!122185 (tuple2!4761 lt!122181 (minValue!4347 thiss!1504))) lt!122180) (apply!226 lt!122185 lt!122180))))

(declare-fun b!243295 () Bool)

(declare-fun res!119264 () Bool)

(declare-fun e!157904 () Bool)

(assert (=> b!243295 (=> (not res!119264) (not e!157904))))

(declare-fun e!157906 () Bool)

(assert (=> b!243295 (= res!119264 e!157906)))

(declare-fun c!40599 () Bool)

(assert (=> b!243295 (= c!40599 (not (= (bvand (extraKeys!4243 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun call!22695 () ListLongMap!3687)

(declare-fun c!40603 () Bool)

(declare-fun c!40600 () Bool)

(declare-fun call!22696 () ListLongMap!3687)

(declare-fun bm!22688 () Bool)

(declare-fun call!22691 () ListLongMap!3687)

(declare-fun call!22692 () ListLongMap!3687)

(assert (=> bm!22688 (= call!22695 (+!648 (ite c!40603 call!22691 (ite c!40600 call!22696 call!22692)) (ite (or c!40603 c!40600) (tuple2!4761 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4347 thiss!1504)) (tuple2!4761 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4347 thiss!1504)))))))

(declare-fun d!59955 () Bool)

(assert (=> d!59955 e!157904))

(declare-fun res!119259 () Bool)

(assert (=> d!59955 (=> (not res!119259) (not e!157904))))

(assert (=> d!59955 (= res!119259 (or (bvsge #b00000000000000000000000000000000 (size!6064 (_keys!6616 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6064 (_keys!6616 thiss!1504))))))))

(declare-fun lt!122193 () ListLongMap!3687)

(assert (=> d!59955 (= lt!122189 lt!122193)))

(declare-fun lt!122177 () Unit!7500)

(assert (=> d!59955 (= lt!122177 e!157900)))

(declare-fun c!40602 () Bool)

(declare-fun e!157909 () Bool)

(assert (=> d!59955 (= c!40602 e!157909)))

(declare-fun res!119258 () Bool)

(assert (=> d!59955 (=> (not res!119258) (not e!157909))))

(assert (=> d!59955 (= res!119258 (bvslt #b00000000000000000000000000000000 (size!6064 (_keys!6616 thiss!1504))))))

(declare-fun e!157901 () ListLongMap!3687)

(assert (=> d!59955 (= lt!122193 e!157901)))

(assert (=> d!59955 (= c!40603 (and (not (= (bvand (extraKeys!4243 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4243 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!59955 (validMask!0 (mask!10595 thiss!1504))))

(assert (=> d!59955 (= (getCurrentListMap!1382 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4506 thiss!1504)) lt!122189)))

(declare-fun b!243296 () Bool)

(declare-fun e!157907 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!243296 (= e!157907 (validKeyInArray!0 (select (arr!5722 (_keys!6616 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!243297 () Bool)

(declare-fun e!157899 () Bool)

(assert (=> b!243297 (= e!157899 (= (apply!226 lt!122189 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4347 thiss!1504)))))

(declare-fun b!243298 () Bool)

(assert (=> b!243298 (= e!157909 (validKeyInArray!0 (select (arr!5722 (_keys!6616 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!243299 () Bool)

(declare-fun c!40601 () Bool)

(assert (=> b!243299 (= c!40601 (and (not (= (bvand (extraKeys!4243 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4243 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!157903 () ListLongMap!3687)

(declare-fun e!157902 () ListLongMap!3687)

(assert (=> b!243299 (= e!157903 e!157902)))

(declare-fun b!243300 () Bool)

(declare-fun e!157905 () Bool)

(declare-fun e!157911 () Bool)

(assert (=> b!243300 (= e!157905 e!157911)))

(declare-fun res!119257 () Bool)

(assert (=> b!243300 (=> (not res!119257) (not e!157911))))

(assert (=> b!243300 (= res!119257 (contains!1750 lt!122189 (select (arr!5722 (_keys!6616 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!243300 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6064 (_keys!6616 thiss!1504))))))

(declare-fun b!243301 () Bool)

(declare-fun e!157908 () Bool)

(assert (=> b!243301 (= e!157908 e!157899)))

(declare-fun res!119261 () Bool)

(assert (=> b!243301 (= res!119261 call!22693)))

(assert (=> b!243301 (=> (not res!119261) (not e!157899))))

(declare-fun b!243302 () Bool)

(declare-fun call!22694 () ListLongMap!3687)

(assert (=> b!243302 (= e!157903 call!22694)))

(declare-fun bm!22689 () Bool)

(assert (=> bm!22689 (= call!22694 call!22695)))

(declare-fun b!243303 () Bool)

(assert (=> b!243303 (= e!157908 (not call!22693))))

(declare-fun bm!22690 () Bool)

(assert (=> bm!22690 (= call!22691 (getCurrentListMapNoExtraKeys!545 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4506 thiss!1504)))))

(declare-fun bm!22691 () Bool)

(assert (=> bm!22691 (= call!22696 call!22691)))

(declare-fun b!243304 () Bool)

(declare-fun call!22690 () Bool)

(assert (=> b!243304 (= e!157906 (not call!22690))))

(declare-fun bm!22692 () Bool)

(assert (=> bm!22692 (= call!22692 call!22696)))

(declare-fun b!243305 () Bool)

(assert (=> b!243305 (= e!157901 (+!648 call!22695 (tuple2!4761 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4347 thiss!1504))))))

(declare-fun b!243306 () Bool)

(assert (=> b!243306 (= e!157902 call!22694)))

(declare-fun b!243307 () Bool)

(assert (=> b!243307 (= e!157906 e!157910)))

(declare-fun res!119260 () Bool)

(assert (=> b!243307 (= res!119260 call!22690)))

(assert (=> b!243307 (=> (not res!119260) (not e!157910))))

(declare-fun b!243308 () Bool)

(assert (=> b!243308 (= e!157904 e!157908)))

(declare-fun c!40604 () Bool)

(assert (=> b!243308 (= c!40604 (not (= (bvand (extraKeys!4243 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!243309 () Bool)

(assert (=> b!243309 (= e!157901 e!157903)))

(assert (=> b!243309 (= c!40600 (and (not (= (bvand (extraKeys!4243 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4243 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!243310 () Bool)

(declare-fun res!119265 () Bool)

(assert (=> b!243310 (=> (not res!119265) (not e!157904))))

(assert (=> b!243310 (= res!119265 e!157905)))

(declare-fun res!119263 () Bool)

(assert (=> b!243310 (=> res!119263 e!157905)))

(assert (=> b!243310 (= res!119263 (not e!157907))))

(declare-fun res!119262 () Bool)

(assert (=> b!243310 (=> (not res!119262) (not e!157907))))

(assert (=> b!243310 (= res!119262 (bvslt #b00000000000000000000000000000000 (size!6064 (_keys!6616 thiss!1504))))))

(declare-fun b!243311 () Bool)

(assert (=> b!243311 (= e!157902 call!22692)))

(declare-fun bm!22693 () Bool)

(assert (=> bm!22693 (= call!22690 (contains!1750 lt!122189 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!243312 () Bool)

(declare-fun get!2939 (ValueCell!2847 V!8155) V!8155)

(declare-fun dynLambda!564 (Int (_ BitVec 64)) V!8155)

(assert (=> b!243312 (= e!157911 (= (apply!226 lt!122189 (select (arr!5722 (_keys!6616 thiss!1504)) #b00000000000000000000000000000000)) (get!2939 (select (arr!5721 (_values!4489 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!564 (defaultEntry!4506 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!243312 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6063 (_values!4489 thiss!1504))))))

(assert (=> b!243312 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6064 (_keys!6616 thiss!1504))))))

(assert (= (and d!59955 c!40603) b!243305))

(assert (= (and d!59955 (not c!40603)) b!243309))

(assert (= (and b!243309 c!40600) b!243302))

(assert (= (and b!243309 (not c!40600)) b!243299))

(assert (= (and b!243299 c!40601) b!243306))

(assert (= (and b!243299 (not c!40601)) b!243311))

(assert (= (or b!243306 b!243311) bm!22692))

(assert (= (or b!243302 bm!22692) bm!22691))

(assert (= (or b!243302 b!243306) bm!22689))

(assert (= (or b!243305 bm!22691) bm!22690))

(assert (= (or b!243305 bm!22689) bm!22688))

(assert (= (and d!59955 res!119258) b!243298))

(assert (= (and d!59955 c!40602) b!243294))

(assert (= (and d!59955 (not c!40602)) b!243292))

(assert (= (and d!59955 res!119259) b!243310))

(assert (= (and b!243310 res!119262) b!243296))

(assert (= (and b!243310 (not res!119263)) b!243300))

(assert (= (and b!243300 res!119257) b!243312))

(assert (= (and b!243310 res!119265) b!243295))

(assert (= (and b!243295 c!40599) b!243307))

(assert (= (and b!243295 (not c!40599)) b!243304))

(assert (= (and b!243307 res!119260) b!243293))

(assert (= (or b!243307 b!243304) bm!22693))

(assert (= (and b!243295 res!119264) b!243308))

(assert (= (and b!243308 c!40604) b!243301))

(assert (= (and b!243308 (not c!40604)) b!243303))

(assert (= (and b!243301 res!119261) b!243297))

(assert (= (or b!243301 b!243303) bm!22687))

(declare-fun b_lambda!8037 () Bool)

(assert (=> (not b_lambda!8037) (not b!243312)))

(declare-fun t!8680 () Bool)

(declare-fun tb!2973 () Bool)

(assert (=> (and b!243141 (= (defaultEntry!4506 thiss!1504) (defaultEntry!4506 thiss!1504)) t!8680) tb!2973))

(declare-fun result!5225 () Bool)

(assert (=> tb!2973 (= result!5225 tp_is_empty!6381)))

(assert (=> b!243312 t!8680))

(declare-fun b_and!13521 () Bool)

(assert (= b_and!13517 (and (=> t!8680 result!5225) b_and!13521)))

(declare-fun m!261773 () Bool)

(assert (=> bm!22693 m!261773))

(declare-fun m!261775 () Bool)

(assert (=> bm!22688 m!261775))

(declare-fun m!261777 () Bool)

(assert (=> b!243312 m!261777))

(declare-fun m!261779 () Bool)

(assert (=> b!243312 m!261779))

(declare-fun m!261781 () Bool)

(assert (=> b!243312 m!261781))

(declare-fun m!261783 () Bool)

(assert (=> b!243312 m!261783))

(declare-fun m!261785 () Bool)

(assert (=> b!243312 m!261785))

(assert (=> b!243312 m!261783))

(assert (=> b!243312 m!261781))

(assert (=> b!243312 m!261777))

(declare-fun m!261787 () Bool)

(assert (=> bm!22687 m!261787))

(declare-fun m!261789 () Bool)

(assert (=> b!243294 m!261789))

(declare-fun m!261791 () Bool)

(assert (=> b!243294 m!261791))

(declare-fun m!261793 () Bool)

(assert (=> b!243294 m!261793))

(declare-fun m!261795 () Bool)

(assert (=> b!243294 m!261795))

(declare-fun m!261797 () Bool)

(assert (=> b!243294 m!261797))

(declare-fun m!261799 () Bool)

(assert (=> b!243294 m!261799))

(declare-fun m!261801 () Bool)

(assert (=> b!243294 m!261801))

(declare-fun m!261803 () Bool)

(assert (=> b!243294 m!261803))

(assert (=> b!243294 m!261803))

(declare-fun m!261805 () Bool)

(assert (=> b!243294 m!261805))

(declare-fun m!261807 () Bool)

(assert (=> b!243294 m!261807))

(declare-fun m!261809 () Bool)

(assert (=> b!243294 m!261809))

(declare-fun m!261811 () Bool)

(assert (=> b!243294 m!261811))

(assert (=> b!243294 m!261809))

(declare-fun m!261813 () Bool)

(assert (=> b!243294 m!261813))

(declare-fun m!261815 () Bool)

(assert (=> b!243294 m!261815))

(assert (=> b!243294 m!261799))

(declare-fun m!261817 () Bool)

(assert (=> b!243294 m!261817))

(assert (=> b!243294 m!261777))

(assert (=> b!243294 m!261791))

(declare-fun m!261819 () Bool)

(assert (=> b!243294 m!261819))

(assert (=> b!243298 m!261777))

(assert (=> b!243298 m!261777))

(declare-fun m!261821 () Bool)

(assert (=> b!243298 m!261821))

(declare-fun m!261823 () Bool)

(assert (=> d!59955 m!261823))

(assert (=> b!243300 m!261777))

(assert (=> b!243300 m!261777))

(declare-fun m!261825 () Bool)

(assert (=> b!243300 m!261825))

(assert (=> b!243296 m!261777))

(assert (=> b!243296 m!261777))

(assert (=> b!243296 m!261821))

(assert (=> bm!22690 m!261815))

(declare-fun m!261827 () Bool)

(assert (=> b!243305 m!261827))

(declare-fun m!261829 () Bool)

(assert (=> b!243293 m!261829))

(declare-fun m!261831 () Bool)

(assert (=> b!243297 m!261831))

(assert (=> b!243125 d!59955))

(declare-fun d!59957 () Bool)

(declare-fun lt!122197 () Bool)

(assert (=> d!59957 (= lt!122197 (select (content!159 Nil!3661) key!932))))

(declare-fun e!157913 () Bool)

(assert (=> d!59957 (= lt!122197 e!157913)))

(declare-fun res!119267 () Bool)

(assert (=> d!59957 (=> (not res!119267) (not e!157913))))

(assert (=> d!59957 (= res!119267 ((_ is Cons!3660) Nil!3661))))

(assert (=> d!59957 (= (contains!1751 Nil!3661 key!932) lt!122197)))

(declare-fun b!243315 () Bool)

(declare-fun e!157912 () Bool)

(assert (=> b!243315 (= e!157913 e!157912)))

(declare-fun res!119266 () Bool)

(assert (=> b!243315 (=> res!119266 e!157912)))

(assert (=> b!243315 (= res!119266 (= (h!4317 Nil!3661) key!932))))

(declare-fun b!243316 () Bool)

(assert (=> b!243316 (= e!157912 (contains!1751 (t!8677 Nil!3661) key!932))))

(assert (= (and d!59957 res!119267) b!243315))

(assert (= (and b!243315 (not res!119266)) b!243316))

(assert (=> d!59957 m!261759))

(declare-fun m!261833 () Bool)

(assert (=> d!59957 m!261833))

(declare-fun m!261835 () Bool)

(assert (=> b!243316 m!261835))

(assert (=> b!243146 d!59957))

(declare-fun d!59959 () Bool)

(assert (=> d!59959 (contains!1750 (getCurrentListMap!1382 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4506 thiss!1504)) key!932)))

(declare-fun lt!122200 () Unit!7500)

(declare-fun choose!1142 (array!12052 array!12050 (_ BitVec 32) (_ BitVec 32) V!8155 V!8155 (_ BitVec 64) (_ BitVec 32) Int) Unit!7500)

(assert (=> d!59959 (= lt!122200 (choose!1142 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4506 thiss!1504)))))

(assert (=> d!59959 (validMask!0 (mask!10595 thiss!1504))))

(assert (=> d!59959 (= (lemmaArrayContainsKeyThenInListMap!164 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4506 thiss!1504)) lt!122200)))

(declare-fun bs!8870 () Bool)

(assert (= bs!8870 d!59959))

(assert (=> bs!8870 m!261709))

(assert (=> bs!8870 m!261709))

(assert (=> bs!8870 m!261711))

(declare-fun m!261837 () Bool)

(assert (=> bs!8870 m!261837))

(assert (=> bs!8870 m!261823))

(assert (=> b!243126 d!59959))

(declare-fun d!59961 () Bool)

(assert (=> d!59961 (= (inRange!0 (ite c!40569 (index!6490 lt!122095) (index!6493 lt!122095)) (mask!10595 thiss!1504)) (and (bvsge (ite c!40569 (index!6490 lt!122095) (index!6493 lt!122095)) #b00000000000000000000000000000000) (bvslt (ite c!40569 (index!6490 lt!122095) (index!6493 lt!122095)) (bvadd (mask!10595 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!22665 d!59961))

(declare-fun d!59963 () Bool)

(declare-fun res!119272 () Bool)

(declare-fun e!157918 () Bool)

(assert (=> d!59963 (=> res!119272 e!157918)))

(assert (=> d!59963 (= res!119272 (= (select (arr!5722 (_keys!6616 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!59963 (= (arrayContainsKey!0 (_keys!6616 thiss!1504) key!932 #b00000000000000000000000000000000) e!157918)))

(declare-fun b!243321 () Bool)

(declare-fun e!157919 () Bool)

(assert (=> b!243321 (= e!157918 e!157919)))

(declare-fun res!119273 () Bool)

(assert (=> b!243321 (=> (not res!119273) (not e!157919))))

(assert (=> b!243321 (= res!119273 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6064 (_keys!6616 thiss!1504))))))

(declare-fun b!243322 () Bool)

(assert (=> b!243322 (= e!157919 (arrayContainsKey!0 (_keys!6616 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!59963 (not res!119272)) b!243321))

(assert (= (and b!243321 res!119273) b!243322))

(assert (=> d!59963 m!261777))

(declare-fun m!261839 () Bool)

(assert (=> b!243322 m!261839))

(assert (=> b!243134 d!59963))

(declare-fun lt!122209 () SeekEntryResult!1080)

(declare-fun b!243335 () Bool)

(declare-fun e!157926 () SeekEntryResult!1080)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12052 (_ BitVec 32)) SeekEntryResult!1080)

(assert (=> b!243335 (= e!157926 (seekKeyOrZeroReturnVacant!0 (x!24322 lt!122209) (index!6492 lt!122209) (index!6492 lt!122209) key!932 (_keys!6616 thiss!1504) (mask!10595 thiss!1504)))))

(declare-fun b!243336 () Bool)

(declare-fun c!40612 () Bool)

(declare-fun lt!122208 () (_ BitVec 64))

(assert (=> b!243336 (= c!40612 (= lt!122208 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!157927 () SeekEntryResult!1080)

(assert (=> b!243336 (= e!157927 e!157926)))

(declare-fun b!243337 () Bool)

(assert (=> b!243337 (= e!157927 (Found!1080 (index!6492 lt!122209)))))

(declare-fun b!243338 () Bool)

(declare-fun e!157928 () SeekEntryResult!1080)

(assert (=> b!243338 (= e!157928 e!157927)))

(assert (=> b!243338 (= lt!122208 (select (arr!5722 (_keys!6616 thiss!1504)) (index!6492 lt!122209)))))

(declare-fun c!40613 () Bool)

(assert (=> b!243338 (= c!40613 (= lt!122208 key!932))))

(declare-fun b!243339 () Bool)

(assert (=> b!243339 (= e!157926 (MissingZero!1080 (index!6492 lt!122209)))))

(declare-fun d!59965 () Bool)

(declare-fun lt!122207 () SeekEntryResult!1080)

(assert (=> d!59965 (and (or ((_ is Undefined!1080) lt!122207) (not ((_ is Found!1080) lt!122207)) (and (bvsge (index!6491 lt!122207) #b00000000000000000000000000000000) (bvslt (index!6491 lt!122207) (size!6064 (_keys!6616 thiss!1504))))) (or ((_ is Undefined!1080) lt!122207) ((_ is Found!1080) lt!122207) (not ((_ is MissingZero!1080) lt!122207)) (and (bvsge (index!6490 lt!122207) #b00000000000000000000000000000000) (bvslt (index!6490 lt!122207) (size!6064 (_keys!6616 thiss!1504))))) (or ((_ is Undefined!1080) lt!122207) ((_ is Found!1080) lt!122207) ((_ is MissingZero!1080) lt!122207) (not ((_ is MissingVacant!1080) lt!122207)) (and (bvsge (index!6493 lt!122207) #b00000000000000000000000000000000) (bvslt (index!6493 lt!122207) (size!6064 (_keys!6616 thiss!1504))))) (or ((_ is Undefined!1080) lt!122207) (ite ((_ is Found!1080) lt!122207) (= (select (arr!5722 (_keys!6616 thiss!1504)) (index!6491 lt!122207)) key!932) (ite ((_ is MissingZero!1080) lt!122207) (= (select (arr!5722 (_keys!6616 thiss!1504)) (index!6490 lt!122207)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1080) lt!122207) (= (select (arr!5722 (_keys!6616 thiss!1504)) (index!6493 lt!122207)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!59965 (= lt!122207 e!157928)))

(declare-fun c!40611 () Bool)

(assert (=> d!59965 (= c!40611 (and ((_ is Intermediate!1080) lt!122209) (undefined!1892 lt!122209)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12052 (_ BitVec 32)) SeekEntryResult!1080)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59965 (= lt!122209 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10595 thiss!1504)) key!932 (_keys!6616 thiss!1504) (mask!10595 thiss!1504)))))

(assert (=> d!59965 (validMask!0 (mask!10595 thiss!1504))))

(assert (=> d!59965 (= (seekEntryOrOpen!0 key!932 (_keys!6616 thiss!1504) (mask!10595 thiss!1504)) lt!122207)))

(declare-fun b!243340 () Bool)

(assert (=> b!243340 (= e!157928 Undefined!1080)))

(assert (= (and d!59965 c!40611) b!243340))

(assert (= (and d!59965 (not c!40611)) b!243338))

(assert (= (and b!243338 c!40613) b!243337))

(assert (= (and b!243338 (not c!40613)) b!243336))

(assert (= (and b!243336 c!40612) b!243339))

(assert (= (and b!243336 (not c!40612)) b!243335))

(declare-fun m!261841 () Bool)

(assert (=> b!243335 m!261841))

(declare-fun m!261843 () Bool)

(assert (=> b!243338 m!261843))

(declare-fun m!261845 () Bool)

(assert (=> d!59965 m!261845))

(declare-fun m!261847 () Bool)

(assert (=> d!59965 m!261847))

(assert (=> d!59965 m!261845))

(declare-fun m!261849 () Bool)

(assert (=> d!59965 m!261849))

(assert (=> d!59965 m!261823))

(declare-fun m!261851 () Bool)

(assert (=> d!59965 m!261851))

(declare-fun m!261853 () Bool)

(assert (=> d!59965 m!261853))

(assert (=> b!243143 d!59965))

(declare-fun d!59967 () Bool)

(declare-fun lt!122210 () Bool)

(assert (=> d!59967 (= lt!122210 (select (content!159 Nil!3661) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!157930 () Bool)

(assert (=> d!59967 (= lt!122210 e!157930)))

(declare-fun res!119275 () Bool)

(assert (=> d!59967 (=> (not res!119275) (not e!157930))))

(assert (=> d!59967 (= res!119275 ((_ is Cons!3660) Nil!3661))))

(assert (=> d!59967 (= (contains!1751 Nil!3661 #b0000000000000000000000000000000000000000000000000000000000000000) lt!122210)))

(declare-fun b!243341 () Bool)

(declare-fun e!157929 () Bool)

(assert (=> b!243341 (= e!157930 e!157929)))

(declare-fun res!119274 () Bool)

(assert (=> b!243341 (=> res!119274 e!157929)))

(assert (=> b!243341 (= res!119274 (= (h!4317 Nil!3661) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!243342 () Bool)

(assert (=> b!243342 (= e!157929 (contains!1751 (t!8677 Nil!3661) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!59967 res!119275) b!243341))

(assert (= (and b!243341 (not res!119274)) b!243342))

(assert (=> d!59967 m!261759))

(declare-fun m!261855 () Bool)

(assert (=> d!59967 m!261855))

(declare-fun m!261857 () Bool)

(assert (=> b!243342 m!261857))

(assert (=> b!243130 d!59967))

(declare-fun b!243359 () Bool)

(declare-fun res!119287 () Bool)

(declare-fun e!157939 () Bool)

(assert (=> b!243359 (=> (not res!119287) (not e!157939))))

(declare-fun call!22701 () Bool)

(assert (=> b!243359 (= res!119287 call!22701)))

(declare-fun e!157940 () Bool)

(assert (=> b!243359 (= e!157940 e!157939)))

(declare-fun c!40618 () Bool)

(declare-fun lt!122215 () SeekEntryResult!1080)

(declare-fun bm!22698 () Bool)

(assert (=> bm!22698 (= call!22701 (inRange!0 (ite c!40618 (index!6490 lt!122215) (index!6493 lt!122215)) (mask!10595 thiss!1504)))))

(declare-fun b!243361 () Bool)

(declare-fun call!22702 () Bool)

(assert (=> b!243361 (= e!157939 (not call!22702))))

(declare-fun b!243362 () Bool)

(declare-fun e!157941 () Bool)

(assert (=> b!243362 (= e!157941 (not call!22702))))

(declare-fun b!243363 () Bool)

(declare-fun e!157942 () Bool)

(assert (=> b!243363 (= e!157942 e!157941)))

(declare-fun res!119285 () Bool)

(assert (=> b!243363 (= res!119285 call!22701)))

(assert (=> b!243363 (=> (not res!119285) (not e!157941))))

(declare-fun b!243364 () Bool)

(declare-fun res!119284 () Bool)

(assert (=> b!243364 (=> (not res!119284) (not e!157939))))

(assert (=> b!243364 (= res!119284 (= (select (arr!5722 (_keys!6616 thiss!1504)) (index!6493 lt!122215)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!243364 (and (bvsge (index!6493 lt!122215) #b00000000000000000000000000000000) (bvslt (index!6493 lt!122215) (size!6064 (_keys!6616 thiss!1504))))))

(declare-fun b!243365 () Bool)

(assert (=> b!243365 (= e!157940 ((_ is Undefined!1080) lt!122215))))

(declare-fun bm!22699 () Bool)

(assert (=> bm!22699 (= call!22702 (arrayContainsKey!0 (_keys!6616 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!243366 () Bool)

(assert (=> b!243366 (= e!157942 e!157940)))

(declare-fun c!40619 () Bool)

(assert (=> b!243366 (= c!40619 ((_ is MissingVacant!1080) lt!122215))))

(declare-fun b!243360 () Bool)

(assert (=> b!243360 (and (bvsge (index!6490 lt!122215) #b00000000000000000000000000000000) (bvslt (index!6490 lt!122215) (size!6064 (_keys!6616 thiss!1504))))))

(declare-fun res!119286 () Bool)

(assert (=> b!243360 (= res!119286 (= (select (arr!5722 (_keys!6616 thiss!1504)) (index!6490 lt!122215)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!243360 (=> (not res!119286) (not e!157941))))

(declare-fun d!59969 () Bool)

(assert (=> d!59969 e!157942))

(assert (=> d!59969 (= c!40618 ((_ is MissingZero!1080) lt!122215))))

(assert (=> d!59969 (= lt!122215 (seekEntryOrOpen!0 key!932 (_keys!6616 thiss!1504) (mask!10595 thiss!1504)))))

(declare-fun lt!122216 () Unit!7500)

(declare-fun choose!1143 (array!12052 array!12050 (_ BitVec 32) (_ BitVec 32) V!8155 V!8155 (_ BitVec 64) Int) Unit!7500)

(assert (=> d!59969 (= lt!122216 (choose!1143 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) key!932 (defaultEntry!4506 thiss!1504)))))

(assert (=> d!59969 (validMask!0 (mask!10595 thiss!1504))))

(assert (=> d!59969 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!366 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) key!932 (defaultEntry!4506 thiss!1504)) lt!122216)))

(assert (= (and d!59969 c!40618) b!243363))

(assert (= (and d!59969 (not c!40618)) b!243366))

(assert (= (and b!243363 res!119285) b!243360))

(assert (= (and b!243360 res!119286) b!243362))

(assert (= (and b!243366 c!40619) b!243359))

(assert (= (and b!243366 (not c!40619)) b!243365))

(assert (= (and b!243359 res!119287) b!243364))

(assert (= (and b!243364 res!119284) b!243361))

(assert (= (or b!243363 b!243359) bm!22698))

(assert (= (or b!243362 b!243361) bm!22699))

(declare-fun m!261859 () Bool)

(assert (=> b!243360 m!261859))

(declare-fun m!261861 () Bool)

(assert (=> b!243364 m!261861))

(declare-fun m!261863 () Bool)

(assert (=> bm!22698 m!261863))

(assert (=> bm!22699 m!261697))

(assert (=> d!59969 m!261701))

(declare-fun m!261865 () Bool)

(assert (=> d!59969 m!261865))

(assert (=> d!59969 m!261823))

(assert (=> b!243132 d!59969))

(declare-fun d!59971 () Bool)

(assert (=> d!59971 (= (array_inv!3775 (_keys!6616 thiss!1504)) (bvsge (size!6064 (_keys!6616 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!243141 d!59971))

(declare-fun d!59973 () Bool)

(assert (=> d!59973 (= (array_inv!3776 (_values!4489 thiss!1504)) (bvsge (size!6063 (_values!4489 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!243141 d!59973))

(assert (=> b!243138 d!59957))

(declare-fun d!59975 () Bool)

(declare-fun res!119295 () Bool)

(declare-fun e!157951 () Bool)

(assert (=> d!59975 (=> res!119295 e!157951)))

(assert (=> d!59975 (= res!119295 (bvsge #b00000000000000000000000000000000 (size!6064 (_keys!6616 thiss!1504))))))

(assert (=> d!59975 (= (arrayNoDuplicates!0 (_keys!6616 thiss!1504) #b00000000000000000000000000000000 Nil!3661) e!157951)))

(declare-fun b!243377 () Bool)

(declare-fun e!157954 () Bool)

(declare-fun e!157952 () Bool)

(assert (=> b!243377 (= e!157954 e!157952)))

(declare-fun c!40622 () Bool)

(assert (=> b!243377 (= c!40622 (validKeyInArray!0 (select (arr!5722 (_keys!6616 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!243378 () Bool)

(declare-fun e!157953 () Bool)

(assert (=> b!243378 (= e!157953 (contains!1751 Nil!3661 (select (arr!5722 (_keys!6616 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!243379 () Bool)

(declare-fun call!22705 () Bool)

(assert (=> b!243379 (= e!157952 call!22705)))

(declare-fun bm!22702 () Bool)

(assert (=> bm!22702 (= call!22705 (arrayNoDuplicates!0 (_keys!6616 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!40622 (Cons!3660 (select (arr!5722 (_keys!6616 thiss!1504)) #b00000000000000000000000000000000) Nil!3661) Nil!3661)))))

(declare-fun b!243380 () Bool)

(assert (=> b!243380 (= e!157951 e!157954)))

(declare-fun res!119296 () Bool)

(assert (=> b!243380 (=> (not res!119296) (not e!157954))))

(assert (=> b!243380 (= res!119296 (not e!157953))))

(declare-fun res!119294 () Bool)

(assert (=> b!243380 (=> (not res!119294) (not e!157953))))

(assert (=> b!243380 (= res!119294 (validKeyInArray!0 (select (arr!5722 (_keys!6616 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!243381 () Bool)

(assert (=> b!243381 (= e!157952 call!22705)))

(assert (= (and d!59975 (not res!119295)) b!243380))

(assert (= (and b!243380 res!119294) b!243378))

(assert (= (and b!243380 res!119296) b!243377))

(assert (= (and b!243377 c!40622) b!243381))

(assert (= (and b!243377 (not c!40622)) b!243379))

(assert (= (or b!243381 b!243379) bm!22702))

(assert (=> b!243377 m!261777))

(assert (=> b!243377 m!261777))

(assert (=> b!243377 m!261821))

(assert (=> b!243378 m!261777))

(assert (=> b!243378 m!261777))

(declare-fun m!261867 () Bool)

(assert (=> b!243378 m!261867))

(assert (=> bm!22702 m!261777))

(declare-fun m!261869 () Bool)

(assert (=> bm!22702 m!261869))

(assert (=> b!243380 m!261777))

(assert (=> b!243380 m!261777))

(assert (=> b!243380 m!261821))

(assert (=> b!243137 d!59975))

(declare-fun d!59977 () Bool)

(declare-fun e!157957 () Bool)

(assert (=> d!59977 e!157957))

(declare-fun res!119302 () Bool)

(assert (=> d!59977 (=> (not res!119302) (not e!157957))))

(declare-fun lt!122221 () SeekEntryResult!1080)

(assert (=> d!59977 (= res!119302 ((_ is Found!1080) lt!122221))))

(assert (=> d!59977 (= lt!122221 (seekEntryOrOpen!0 key!932 (_keys!6616 thiss!1504) (mask!10595 thiss!1504)))))

(declare-fun lt!122222 () Unit!7500)

(declare-fun choose!1144 (array!12052 array!12050 (_ BitVec 32) (_ BitVec 32) V!8155 V!8155 (_ BitVec 64) Int) Unit!7500)

(assert (=> d!59977 (= lt!122222 (choose!1144 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) key!932 (defaultEntry!4506 thiss!1504)))))

(assert (=> d!59977 (validMask!0 (mask!10595 thiss!1504))))

(assert (=> d!59977 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!360 (_keys!6616 thiss!1504) (_values!4489 thiss!1504) (mask!10595 thiss!1504) (extraKeys!4243 thiss!1504) (zeroValue!4347 thiss!1504) (minValue!4347 thiss!1504) key!932 (defaultEntry!4506 thiss!1504)) lt!122222)))

(declare-fun b!243386 () Bool)

(declare-fun res!119301 () Bool)

(assert (=> b!243386 (=> (not res!119301) (not e!157957))))

(assert (=> b!243386 (= res!119301 (inRange!0 (index!6491 lt!122221) (mask!10595 thiss!1504)))))

(declare-fun b!243387 () Bool)

(assert (=> b!243387 (= e!157957 (= (select (arr!5722 (_keys!6616 thiss!1504)) (index!6491 lt!122221)) key!932))))

(assert (=> b!243387 (and (bvsge (index!6491 lt!122221) #b00000000000000000000000000000000) (bvslt (index!6491 lt!122221) (size!6064 (_keys!6616 thiss!1504))))))

(assert (= (and d!59977 res!119302) b!243386))

(assert (= (and b!243386 res!119301) b!243387))

(assert (=> d!59977 m!261701))

(declare-fun m!261871 () Bool)

(assert (=> d!59977 m!261871))

(assert (=> d!59977 m!261823))

(declare-fun m!261873 () Bool)

(assert (=> b!243386 m!261873))

(declare-fun m!261875 () Bool)

(assert (=> b!243387 m!261875))

(assert (=> b!243147 d!59977))

(assert (=> bm!22666 d!59963))

(declare-fun d!59979 () Bool)

(declare-fun res!119307 () Bool)

(declare-fun e!157962 () Bool)

(assert (=> d!59979 (=> res!119307 e!157962)))

(assert (=> d!59979 (= res!119307 ((_ is Nil!3661) Nil!3661))))

(assert (=> d!59979 (= (noDuplicate!94 Nil!3661) e!157962)))

(declare-fun b!243392 () Bool)

(declare-fun e!157963 () Bool)

(assert (=> b!243392 (= e!157962 e!157963)))

(declare-fun res!119308 () Bool)

(assert (=> b!243392 (=> (not res!119308) (not e!157963))))

(assert (=> b!243392 (= res!119308 (not (contains!1751 (t!8677 Nil!3661) (h!4317 Nil!3661))))))

(declare-fun b!243393 () Bool)

(assert (=> b!243393 (= e!157963 (noDuplicate!94 (t!8677 Nil!3661)))))

(assert (= (and d!59979 (not res!119307)) b!243392))

(assert (= (and b!243392 res!119308) b!243393))

(declare-fun m!261877 () Bool)

(assert (=> b!243392 m!261877))

(declare-fun m!261879 () Bool)

(assert (=> b!243393 m!261879))

(assert (=> b!243148 d!59979))

(declare-fun d!59981 () Bool)

(declare-fun res!119315 () Bool)

(declare-fun e!157966 () Bool)

(assert (=> d!59981 (=> (not res!119315) (not e!157966))))

(declare-fun simpleValid!248 (LongMapFixedSize!3594) Bool)

(assert (=> d!59981 (= res!119315 (simpleValid!248 thiss!1504))))

(assert (=> d!59981 (= (valid!1401 thiss!1504) e!157966)))

(declare-fun b!243400 () Bool)

(declare-fun res!119316 () Bool)

(assert (=> b!243400 (=> (not res!119316) (not e!157966))))

(declare-fun arrayCountValidKeys!0 (array!12052 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!243400 (= res!119316 (= (arrayCountValidKeys!0 (_keys!6616 thiss!1504) #b00000000000000000000000000000000 (size!6064 (_keys!6616 thiss!1504))) (_size!1846 thiss!1504)))))

(declare-fun b!243401 () Bool)

(declare-fun res!119317 () Bool)

(assert (=> b!243401 (=> (not res!119317) (not e!157966))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12052 (_ BitVec 32)) Bool)

(assert (=> b!243401 (= res!119317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6616 thiss!1504) (mask!10595 thiss!1504)))))

(declare-fun b!243402 () Bool)

(assert (=> b!243402 (= e!157966 (arrayNoDuplicates!0 (_keys!6616 thiss!1504) #b00000000000000000000000000000000 Nil!3661))))

(assert (= (and d!59981 res!119315) b!243400))

(assert (= (and b!243400 res!119316) b!243401))

(assert (= (and b!243401 res!119317) b!243402))

(declare-fun m!261881 () Bool)

(assert (=> d!59981 m!261881))

(declare-fun m!261883 () Bool)

(assert (=> b!243400 m!261883))

(declare-fun m!261885 () Bool)

(assert (=> b!243401 m!261885))

(assert (=> b!243402 m!261693))

(assert (=> start!23192 d!59981))

(declare-fun mapNonEmpty!10825 () Bool)

(declare-fun mapRes!10825 () Bool)

(declare-fun tp!22786 () Bool)

(declare-fun e!157972 () Bool)

(assert (=> mapNonEmpty!10825 (= mapRes!10825 (and tp!22786 e!157972))))

(declare-fun mapRest!10825 () (Array (_ BitVec 32) ValueCell!2847))

(declare-fun mapValue!10825 () ValueCell!2847)

(declare-fun mapKey!10825 () (_ BitVec 32))

(assert (=> mapNonEmpty!10825 (= mapRest!10819 (store mapRest!10825 mapKey!10825 mapValue!10825))))

(declare-fun b!243410 () Bool)

(declare-fun e!157971 () Bool)

(assert (=> b!243410 (= e!157971 tp_is_empty!6381)))

(declare-fun condMapEmpty!10825 () Bool)

(declare-fun mapDefault!10825 () ValueCell!2847)

(assert (=> mapNonEmpty!10819 (= condMapEmpty!10825 (= mapRest!10819 ((as const (Array (_ BitVec 32) ValueCell!2847)) mapDefault!10825)))))

(assert (=> mapNonEmpty!10819 (= tp!22777 (and e!157971 mapRes!10825))))

(declare-fun b!243409 () Bool)

(assert (=> b!243409 (= e!157972 tp_is_empty!6381)))

(declare-fun mapIsEmpty!10825 () Bool)

(assert (=> mapIsEmpty!10825 mapRes!10825))

(assert (= (and mapNonEmpty!10819 condMapEmpty!10825) mapIsEmpty!10825))

(assert (= (and mapNonEmpty!10819 (not condMapEmpty!10825)) mapNonEmpty!10825))

(assert (= (and mapNonEmpty!10825 ((_ is ValueCellFull!2847) mapValue!10825)) b!243409))

(assert (= (and mapNonEmpty!10819 ((_ is ValueCellFull!2847) mapDefault!10825)) b!243410))

(declare-fun m!261887 () Bool)

(assert (=> mapNonEmpty!10825 m!261887))

(declare-fun b_lambda!8039 () Bool)

(assert (= b_lambda!8037 (or (and b!243141 b_free!6519) b_lambda!8039)))

(check-sat (not d!59977) (not bm!22702) (not b!243298) (not d!59959) (not b!243247) (not b!243378) (not b!243402) (not b!243342) (not b!243401) (not d!59981) (not bm!22693) (not bm!22687) (not b!243296) (not b!243297) (not d!59965) (not bm!22690) (not b!243380) (not b!243293) (not b!243240) (not bm!22688) (not b!243300) (not bm!22698) (not b!243392) (not b!243322) (not d!59949) (not mapNonEmpty!10825) (not b_next!6519) (not d!59953) (not b!243386) (not d!59967) (not b_lambda!8039) (not bm!22699) (not b!243335) (not b!243377) tp_is_empty!6381 (not b!243305) (not d!59957) (not b!243316) (not b!243400) (not d!59969) (not d!59955) (not b!243294) (not b!243312) b_and!13521 (not b!243249) (not b!243393))
(check-sat b_and!13521 (not b_next!6519))
