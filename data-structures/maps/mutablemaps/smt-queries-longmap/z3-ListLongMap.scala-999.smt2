; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21580 () Bool)

(assert start!21580)

(declare-fun b!216144 () Bool)

(declare-fun b_free!5745 () Bool)

(declare-fun b_next!5745 () Bool)

(assert (=> b!216144 (= b_free!5745 (not b_next!5745))))

(declare-fun tp!20363 () Bool)

(declare-fun b_and!12653 () Bool)

(assert (=> b!216144 (= tp!20363 b_and!12653)))

(declare-fun b!216140 () Bool)

(declare-fun e!140637 () Bool)

(declare-fun e!140638 () Bool)

(assert (=> b!216140 (= e!140637 e!140638)))

(declare-fun res!105697 () Bool)

(assert (=> b!216140 (=> (not res!105697) (not e!140638))))

(declare-datatypes ((SeekEntryResult!751 0))(
  ( (MissingZero!751 (index!5174 (_ BitVec 32))) (Found!751 (index!5175 (_ BitVec 32))) (Intermediate!751 (undefined!1563 Bool) (index!5176 (_ BitVec 32)) (x!22615 (_ BitVec 32))) (Undefined!751) (MissingVacant!751 (index!5177 (_ BitVec 32))) )
))
(declare-fun lt!111139 () SeekEntryResult!751)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216140 (= res!105697 (or (= lt!111139 (MissingZero!751 index!297)) (= lt!111139 (MissingVacant!751 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7123 0))(
  ( (V!7124 (val!2848 Int)) )
))
(declare-datatypes ((ValueCell!2460 0))(
  ( (ValueCellFull!2460 (v!4862 V!7123)) (EmptyCell!2460) )
))
(declare-datatypes ((array!10448 0))(
  ( (array!10449 (arr!4947 (Array (_ BitVec 32) ValueCell!2460)) (size!5279 (_ BitVec 32))) )
))
(declare-datatypes ((array!10450 0))(
  ( (array!10451 (arr!4948 (Array (_ BitVec 32) (_ BitVec 64))) (size!5280 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2820 0))(
  ( (LongMapFixedSize!2821 (defaultEntry!4060 Int) (mask!9787 (_ BitVec 32)) (extraKeys!3797 (_ BitVec 32)) (zeroValue!3901 V!7123) (minValue!3901 V!7123) (_size!1459 (_ BitVec 32)) (_keys!6105 array!10450) (_values!4043 array!10448) (_vacant!1459 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2820)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10450 (_ BitVec 32)) SeekEntryResult!751)

(assert (=> b!216140 (= lt!111139 (seekEntryOrOpen!0 key!932 (_keys!6105 thiss!1504) (mask!9787 thiss!1504)))))

(declare-fun res!105701 () Bool)

(assert (=> start!21580 (=> (not res!105701) (not e!140637))))

(declare-fun valid!1138 (LongMapFixedSize!2820) Bool)

(assert (=> start!21580 (= res!105701 (valid!1138 thiss!1504))))

(assert (=> start!21580 e!140637))

(declare-fun e!140639 () Bool)

(assert (=> start!21580 e!140639))

(assert (=> start!21580 true))

(declare-fun b!216141 () Bool)

(declare-fun e!140636 () Bool)

(declare-fun e!140635 () Bool)

(declare-fun mapRes!9567 () Bool)

(assert (=> b!216141 (= e!140636 (and e!140635 mapRes!9567))))

(declare-fun condMapEmpty!9567 () Bool)

(declare-fun mapDefault!9567 () ValueCell!2460)

(assert (=> b!216141 (= condMapEmpty!9567 (= (arr!4947 (_values!4043 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2460)) mapDefault!9567)))))

(declare-fun b!216142 () Bool)

(declare-fun res!105702 () Bool)

(assert (=> b!216142 (=> (not res!105702) (not e!140638))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!216142 (= res!105702 (validMask!0 (mask!9787 thiss!1504)))))

(declare-fun b!216143 () Bool)

(declare-fun res!105699 () Bool)

(assert (=> b!216143 (=> (not res!105699) (not e!140638))))

(assert (=> b!216143 (= res!105699 (and (= (size!5279 (_values!4043 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9787 thiss!1504))) (= (size!5280 (_keys!6105 thiss!1504)) (size!5279 (_values!4043 thiss!1504))) (bvsge (mask!9787 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3797 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3797 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun tp_is_empty!5607 () Bool)

(declare-fun array_inv!3263 (array!10450) Bool)

(declare-fun array_inv!3264 (array!10448) Bool)

(assert (=> b!216144 (= e!140639 (and tp!20363 tp_is_empty!5607 (array_inv!3263 (_keys!6105 thiss!1504)) (array_inv!3264 (_values!4043 thiss!1504)) e!140636))))

(declare-fun b!216145 () Bool)

(assert (=> b!216145 (= e!140635 tp_is_empty!5607)))

(declare-fun b!216146 () Bool)

(declare-fun res!105700 () Bool)

(assert (=> b!216146 (=> (not res!105700) (not e!140638))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10450 (_ BitVec 32)) Bool)

(assert (=> b!216146 (= res!105700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6105 thiss!1504) (mask!9787 thiss!1504)))))

(declare-fun mapIsEmpty!9567 () Bool)

(assert (=> mapIsEmpty!9567 mapRes!9567))

(declare-fun mapNonEmpty!9567 () Bool)

(declare-fun tp!20364 () Bool)

(declare-fun e!140634 () Bool)

(assert (=> mapNonEmpty!9567 (= mapRes!9567 (and tp!20364 e!140634))))

(declare-fun mapKey!9567 () (_ BitVec 32))

(declare-fun mapValue!9567 () ValueCell!2460)

(declare-fun mapRest!9567 () (Array (_ BitVec 32) ValueCell!2460))

(assert (=> mapNonEmpty!9567 (= (arr!4947 (_values!4043 thiss!1504)) (store mapRest!9567 mapKey!9567 mapValue!9567))))

(declare-fun b!216147 () Bool)

(declare-datatypes ((List!3162 0))(
  ( (Nil!3159) (Cons!3158 (h!3805 (_ BitVec 64)) (t!8125 List!3162)) )
))
(declare-fun arrayNoDuplicates!0 (array!10450 (_ BitVec 32) List!3162) Bool)

(assert (=> b!216147 (= e!140638 (not (arrayNoDuplicates!0 (_keys!6105 thiss!1504) #b00000000000000000000000000000000 Nil!3159)))))

(declare-fun b!216148 () Bool)

(declare-fun res!105698 () Bool)

(assert (=> b!216148 (=> (not res!105698) (not e!140637))))

(assert (=> b!216148 (= res!105698 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!216149 () Bool)

(assert (=> b!216149 (= e!140634 tp_is_empty!5607)))

(assert (= (and start!21580 res!105701) b!216148))

(assert (= (and b!216148 res!105698) b!216140))

(assert (= (and b!216140 res!105697) b!216142))

(assert (= (and b!216142 res!105702) b!216143))

(assert (= (and b!216143 res!105699) b!216146))

(assert (= (and b!216146 res!105700) b!216147))

(assert (= (and b!216141 condMapEmpty!9567) mapIsEmpty!9567))

(assert (= (and b!216141 (not condMapEmpty!9567)) mapNonEmpty!9567))

(get-info :version)

(assert (= (and mapNonEmpty!9567 ((_ is ValueCellFull!2460) mapValue!9567)) b!216149))

(assert (= (and b!216141 ((_ is ValueCellFull!2460) mapDefault!9567)) b!216145))

(assert (= b!216144 b!216141))

(assert (= start!21580 b!216144))

(declare-fun m!242995 () Bool)

(assert (=> b!216146 m!242995))

(declare-fun m!242997 () Bool)

(assert (=> b!216147 m!242997))

(declare-fun m!242999 () Bool)

(assert (=> mapNonEmpty!9567 m!242999))

(declare-fun m!243001 () Bool)

(assert (=> b!216144 m!243001))

(declare-fun m!243003 () Bool)

(assert (=> b!216144 m!243003))

(declare-fun m!243005 () Bool)

(assert (=> b!216142 m!243005))

(declare-fun m!243007 () Bool)

(assert (=> start!21580 m!243007))

(declare-fun m!243009 () Bool)

(assert (=> b!216140 m!243009))

(check-sat (not b!216144) (not b!216146) (not b!216140) b_and!12653 (not b!216142) (not b!216147) tp_is_empty!5607 (not b_next!5745) (not start!21580) (not mapNonEmpty!9567))
(check-sat b_and!12653 (not b_next!5745))
(get-model)

(declare-fun d!58441 () Bool)

(declare-fun res!105727 () Bool)

(declare-fun e!140672 () Bool)

(assert (=> d!58441 (=> res!105727 e!140672)))

(assert (=> d!58441 (= res!105727 (bvsge #b00000000000000000000000000000000 (size!5280 (_keys!6105 thiss!1504))))))

(assert (=> d!58441 (= (arrayNoDuplicates!0 (_keys!6105 thiss!1504) #b00000000000000000000000000000000 Nil!3159) e!140672)))

(declare-fun b!216190 () Bool)

(declare-fun e!140671 () Bool)

(assert (=> b!216190 (= e!140672 e!140671)))

(declare-fun res!105729 () Bool)

(assert (=> b!216190 (=> (not res!105729) (not e!140671))))

(declare-fun e!140670 () Bool)

(assert (=> b!216190 (= res!105729 (not e!140670))))

(declare-fun res!105728 () Bool)

(assert (=> b!216190 (=> (not res!105728) (not e!140670))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!216190 (= res!105728 (validKeyInArray!0 (select (arr!4948 (_keys!6105 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!216191 () Bool)

(declare-fun e!140673 () Bool)

(declare-fun call!20371 () Bool)

(assert (=> b!216191 (= e!140673 call!20371)))

(declare-fun bm!20368 () Bool)

(declare-fun c!36283 () Bool)

(assert (=> bm!20368 (= call!20371 (arrayNoDuplicates!0 (_keys!6105 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!36283 (Cons!3158 (select (arr!4948 (_keys!6105 thiss!1504)) #b00000000000000000000000000000000) Nil!3159) Nil!3159)))))

(declare-fun b!216192 () Bool)

(assert (=> b!216192 (= e!140673 call!20371)))

(declare-fun b!216193 () Bool)

(assert (=> b!216193 (= e!140671 e!140673)))

(assert (=> b!216193 (= c!36283 (validKeyInArray!0 (select (arr!4948 (_keys!6105 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!216194 () Bool)

(declare-fun contains!1431 (List!3162 (_ BitVec 64)) Bool)

(assert (=> b!216194 (= e!140670 (contains!1431 Nil!3159 (select (arr!4948 (_keys!6105 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!58441 (not res!105727)) b!216190))

(assert (= (and b!216190 res!105728) b!216194))

(assert (= (and b!216190 res!105729) b!216193))

(assert (= (and b!216193 c!36283) b!216191))

(assert (= (and b!216193 (not c!36283)) b!216192))

(assert (= (or b!216191 b!216192) bm!20368))

(declare-fun m!243027 () Bool)

(assert (=> b!216190 m!243027))

(assert (=> b!216190 m!243027))

(declare-fun m!243029 () Bool)

(assert (=> b!216190 m!243029))

(assert (=> bm!20368 m!243027))

(declare-fun m!243031 () Bool)

(assert (=> bm!20368 m!243031))

(assert (=> b!216193 m!243027))

(assert (=> b!216193 m!243027))

(assert (=> b!216193 m!243029))

(assert (=> b!216194 m!243027))

(assert (=> b!216194 m!243027))

(declare-fun m!243033 () Bool)

(assert (=> b!216194 m!243033))

(assert (=> b!216147 d!58441))

(declare-fun d!58443 () Bool)

(assert (=> d!58443 (= (array_inv!3263 (_keys!6105 thiss!1504)) (bvsge (size!5280 (_keys!6105 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!216144 d!58443))

(declare-fun d!58445 () Bool)

(assert (=> d!58445 (= (array_inv!3264 (_values!4043 thiss!1504)) (bvsge (size!5279 (_values!4043 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!216144 d!58445))

(declare-fun d!58447 () Bool)

(declare-fun res!105736 () Bool)

(declare-fun e!140676 () Bool)

(assert (=> d!58447 (=> (not res!105736) (not e!140676))))

(declare-fun simpleValid!221 (LongMapFixedSize!2820) Bool)

(assert (=> d!58447 (= res!105736 (simpleValid!221 thiss!1504))))

(assert (=> d!58447 (= (valid!1138 thiss!1504) e!140676)))

(declare-fun b!216201 () Bool)

(declare-fun res!105737 () Bool)

(assert (=> b!216201 (=> (not res!105737) (not e!140676))))

(declare-fun arrayCountValidKeys!0 (array!10450 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!216201 (= res!105737 (= (arrayCountValidKeys!0 (_keys!6105 thiss!1504) #b00000000000000000000000000000000 (size!5280 (_keys!6105 thiss!1504))) (_size!1459 thiss!1504)))))

(declare-fun b!216202 () Bool)

(declare-fun res!105738 () Bool)

(assert (=> b!216202 (=> (not res!105738) (not e!140676))))

(assert (=> b!216202 (= res!105738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6105 thiss!1504) (mask!9787 thiss!1504)))))

(declare-fun b!216203 () Bool)

(assert (=> b!216203 (= e!140676 (arrayNoDuplicates!0 (_keys!6105 thiss!1504) #b00000000000000000000000000000000 Nil!3159))))

(assert (= (and d!58447 res!105736) b!216201))

(assert (= (and b!216201 res!105737) b!216202))

(assert (= (and b!216202 res!105738) b!216203))

(declare-fun m!243035 () Bool)

(assert (=> d!58447 m!243035))

(declare-fun m!243037 () Bool)

(assert (=> b!216201 m!243037))

(assert (=> b!216202 m!242995))

(assert (=> b!216203 m!242997))

(assert (=> start!21580 d!58447))

(declare-fun d!58449 () Bool)

(assert (=> d!58449 (= (validMask!0 (mask!9787 thiss!1504)) (and (or (= (mask!9787 thiss!1504) #b00000000000000000000000000000111) (= (mask!9787 thiss!1504) #b00000000000000000000000000001111) (= (mask!9787 thiss!1504) #b00000000000000000000000000011111) (= (mask!9787 thiss!1504) #b00000000000000000000000000111111) (= (mask!9787 thiss!1504) #b00000000000000000000000001111111) (= (mask!9787 thiss!1504) #b00000000000000000000000011111111) (= (mask!9787 thiss!1504) #b00000000000000000000000111111111) (= (mask!9787 thiss!1504) #b00000000000000000000001111111111) (= (mask!9787 thiss!1504) #b00000000000000000000011111111111) (= (mask!9787 thiss!1504) #b00000000000000000000111111111111) (= (mask!9787 thiss!1504) #b00000000000000000001111111111111) (= (mask!9787 thiss!1504) #b00000000000000000011111111111111) (= (mask!9787 thiss!1504) #b00000000000000000111111111111111) (= (mask!9787 thiss!1504) #b00000000000000001111111111111111) (= (mask!9787 thiss!1504) #b00000000000000011111111111111111) (= (mask!9787 thiss!1504) #b00000000000000111111111111111111) (= (mask!9787 thiss!1504) #b00000000000001111111111111111111) (= (mask!9787 thiss!1504) #b00000000000011111111111111111111) (= (mask!9787 thiss!1504) #b00000000000111111111111111111111) (= (mask!9787 thiss!1504) #b00000000001111111111111111111111) (= (mask!9787 thiss!1504) #b00000000011111111111111111111111) (= (mask!9787 thiss!1504) #b00000000111111111111111111111111) (= (mask!9787 thiss!1504) #b00000001111111111111111111111111) (= (mask!9787 thiss!1504) #b00000011111111111111111111111111) (= (mask!9787 thiss!1504) #b00000111111111111111111111111111) (= (mask!9787 thiss!1504) #b00001111111111111111111111111111) (= (mask!9787 thiss!1504) #b00011111111111111111111111111111) (= (mask!9787 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!9787 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!216142 d!58449))

(declare-fun b!216212 () Bool)

(declare-fun e!140685 () Bool)

(declare-fun call!20374 () Bool)

(assert (=> b!216212 (= e!140685 call!20374)))

(declare-fun d!58451 () Bool)

(declare-fun res!105743 () Bool)

(declare-fun e!140683 () Bool)

(assert (=> d!58451 (=> res!105743 e!140683)))

(assert (=> d!58451 (= res!105743 (bvsge #b00000000000000000000000000000000 (size!5280 (_keys!6105 thiss!1504))))))

(assert (=> d!58451 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6105 thiss!1504) (mask!9787 thiss!1504)) e!140683)))

(declare-fun b!216213 () Bool)

(declare-fun e!140684 () Bool)

(assert (=> b!216213 (= e!140684 call!20374)))

(declare-fun b!216214 () Bool)

(assert (=> b!216214 (= e!140683 e!140684)))

(declare-fun c!36286 () Bool)

(assert (=> b!216214 (= c!36286 (validKeyInArray!0 (select (arr!4948 (_keys!6105 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!20371 () Bool)

(assert (=> bm!20371 (= call!20374 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6105 thiss!1504) (mask!9787 thiss!1504)))))

(declare-fun b!216215 () Bool)

(assert (=> b!216215 (= e!140684 e!140685)))

(declare-fun lt!111151 () (_ BitVec 64))

(assert (=> b!216215 (= lt!111151 (select (arr!4948 (_keys!6105 thiss!1504)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!6501 0))(
  ( (Unit!6502) )
))
(declare-fun lt!111150 () Unit!6501)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10450 (_ BitVec 64) (_ BitVec 32)) Unit!6501)

(assert (=> b!216215 (= lt!111150 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6105 thiss!1504) lt!111151 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!216215 (arrayContainsKey!0 (_keys!6105 thiss!1504) lt!111151 #b00000000000000000000000000000000)))

(declare-fun lt!111149 () Unit!6501)

(assert (=> b!216215 (= lt!111149 lt!111150)))

(declare-fun res!105744 () Bool)

(assert (=> b!216215 (= res!105744 (= (seekEntryOrOpen!0 (select (arr!4948 (_keys!6105 thiss!1504)) #b00000000000000000000000000000000) (_keys!6105 thiss!1504) (mask!9787 thiss!1504)) (Found!751 #b00000000000000000000000000000000)))))

(assert (=> b!216215 (=> (not res!105744) (not e!140685))))

(assert (= (and d!58451 (not res!105743)) b!216214))

(assert (= (and b!216214 c!36286) b!216215))

(assert (= (and b!216214 (not c!36286)) b!216213))

(assert (= (and b!216215 res!105744) b!216212))

(assert (= (or b!216212 b!216213) bm!20371))

(assert (=> b!216214 m!243027))

(assert (=> b!216214 m!243027))

(assert (=> b!216214 m!243029))

(declare-fun m!243039 () Bool)

(assert (=> bm!20371 m!243039))

(assert (=> b!216215 m!243027))

(declare-fun m!243041 () Bool)

(assert (=> b!216215 m!243041))

(declare-fun m!243043 () Bool)

(assert (=> b!216215 m!243043))

(assert (=> b!216215 m!243027))

(declare-fun m!243045 () Bool)

(assert (=> b!216215 m!243045))

(assert (=> b!216146 d!58451))

(declare-fun lt!111159 () SeekEntryResult!751)

(declare-fun e!140692 () SeekEntryResult!751)

(declare-fun b!216228 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10450 (_ BitVec 32)) SeekEntryResult!751)

(assert (=> b!216228 (= e!140692 (seekKeyOrZeroReturnVacant!0 (x!22615 lt!111159) (index!5176 lt!111159) (index!5176 lt!111159) key!932 (_keys!6105 thiss!1504) (mask!9787 thiss!1504)))))

(declare-fun b!216229 () Bool)

(declare-fun e!140693 () SeekEntryResult!751)

(assert (=> b!216229 (= e!140693 Undefined!751)))

(declare-fun b!216231 () Bool)

(assert (=> b!216231 (= e!140692 (MissingZero!751 (index!5176 lt!111159)))))

(declare-fun b!216232 () Bool)

(declare-fun e!140694 () SeekEntryResult!751)

(assert (=> b!216232 (= e!140694 (Found!751 (index!5176 lt!111159)))))

(declare-fun b!216233 () Bool)

(declare-fun c!36293 () Bool)

(declare-fun lt!111160 () (_ BitVec 64))

(assert (=> b!216233 (= c!36293 (= lt!111160 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!216233 (= e!140694 e!140692)))

(declare-fun b!216230 () Bool)

(assert (=> b!216230 (= e!140693 e!140694)))

(assert (=> b!216230 (= lt!111160 (select (arr!4948 (_keys!6105 thiss!1504)) (index!5176 lt!111159)))))

(declare-fun c!36295 () Bool)

(assert (=> b!216230 (= c!36295 (= lt!111160 key!932))))

(declare-fun d!58453 () Bool)

(declare-fun lt!111158 () SeekEntryResult!751)

(assert (=> d!58453 (and (or ((_ is Undefined!751) lt!111158) (not ((_ is Found!751) lt!111158)) (and (bvsge (index!5175 lt!111158) #b00000000000000000000000000000000) (bvslt (index!5175 lt!111158) (size!5280 (_keys!6105 thiss!1504))))) (or ((_ is Undefined!751) lt!111158) ((_ is Found!751) lt!111158) (not ((_ is MissingZero!751) lt!111158)) (and (bvsge (index!5174 lt!111158) #b00000000000000000000000000000000) (bvslt (index!5174 lt!111158) (size!5280 (_keys!6105 thiss!1504))))) (or ((_ is Undefined!751) lt!111158) ((_ is Found!751) lt!111158) ((_ is MissingZero!751) lt!111158) (not ((_ is MissingVacant!751) lt!111158)) (and (bvsge (index!5177 lt!111158) #b00000000000000000000000000000000) (bvslt (index!5177 lt!111158) (size!5280 (_keys!6105 thiss!1504))))) (or ((_ is Undefined!751) lt!111158) (ite ((_ is Found!751) lt!111158) (= (select (arr!4948 (_keys!6105 thiss!1504)) (index!5175 lt!111158)) key!932) (ite ((_ is MissingZero!751) lt!111158) (= (select (arr!4948 (_keys!6105 thiss!1504)) (index!5174 lt!111158)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!751) lt!111158) (= (select (arr!4948 (_keys!6105 thiss!1504)) (index!5177 lt!111158)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!58453 (= lt!111158 e!140693)))

(declare-fun c!36294 () Bool)

(assert (=> d!58453 (= c!36294 (and ((_ is Intermediate!751) lt!111159) (undefined!1563 lt!111159)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10450 (_ BitVec 32)) SeekEntryResult!751)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58453 (= lt!111159 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9787 thiss!1504)) key!932 (_keys!6105 thiss!1504) (mask!9787 thiss!1504)))))

(assert (=> d!58453 (validMask!0 (mask!9787 thiss!1504))))

(assert (=> d!58453 (= (seekEntryOrOpen!0 key!932 (_keys!6105 thiss!1504) (mask!9787 thiss!1504)) lt!111158)))

(assert (= (and d!58453 c!36294) b!216229))

(assert (= (and d!58453 (not c!36294)) b!216230))

(assert (= (and b!216230 c!36295) b!216232))

(assert (= (and b!216230 (not c!36295)) b!216233))

(assert (= (and b!216233 c!36293) b!216231))

(assert (= (and b!216233 (not c!36293)) b!216228))

(declare-fun m!243047 () Bool)

(assert (=> b!216228 m!243047))

(declare-fun m!243049 () Bool)

(assert (=> b!216230 m!243049))

(declare-fun m!243051 () Bool)

(assert (=> d!58453 m!243051))

(declare-fun m!243053 () Bool)

(assert (=> d!58453 m!243053))

(declare-fun m!243055 () Bool)

(assert (=> d!58453 m!243055))

(assert (=> d!58453 m!243005))

(assert (=> d!58453 m!243053))

(declare-fun m!243057 () Bool)

(assert (=> d!58453 m!243057))

(declare-fun m!243059 () Bool)

(assert (=> d!58453 m!243059))

(assert (=> b!216140 d!58453))

(declare-fun b!216240 () Bool)

(declare-fun e!140700 () Bool)

(assert (=> b!216240 (= e!140700 tp_is_empty!5607)))

(declare-fun b!216241 () Bool)

(declare-fun e!140699 () Bool)

(assert (=> b!216241 (= e!140699 tp_is_empty!5607)))

(declare-fun condMapEmpty!9573 () Bool)

(declare-fun mapDefault!9573 () ValueCell!2460)

(assert (=> mapNonEmpty!9567 (= condMapEmpty!9573 (= mapRest!9567 ((as const (Array (_ BitVec 32) ValueCell!2460)) mapDefault!9573)))))

(declare-fun mapRes!9573 () Bool)

(assert (=> mapNonEmpty!9567 (= tp!20364 (and e!140699 mapRes!9573))))

(declare-fun mapIsEmpty!9573 () Bool)

(assert (=> mapIsEmpty!9573 mapRes!9573))

(declare-fun mapNonEmpty!9573 () Bool)

(declare-fun tp!20373 () Bool)

(assert (=> mapNonEmpty!9573 (= mapRes!9573 (and tp!20373 e!140700))))

(declare-fun mapRest!9573 () (Array (_ BitVec 32) ValueCell!2460))

(declare-fun mapValue!9573 () ValueCell!2460)

(declare-fun mapKey!9573 () (_ BitVec 32))

(assert (=> mapNonEmpty!9573 (= mapRest!9567 (store mapRest!9573 mapKey!9573 mapValue!9573))))

(assert (= (and mapNonEmpty!9567 condMapEmpty!9573) mapIsEmpty!9573))

(assert (= (and mapNonEmpty!9567 (not condMapEmpty!9573)) mapNonEmpty!9573))

(assert (= (and mapNonEmpty!9573 ((_ is ValueCellFull!2460) mapValue!9573)) b!216240))

(assert (= (and mapNonEmpty!9567 ((_ is ValueCellFull!2460) mapDefault!9573)) b!216241))

(declare-fun m!243061 () Bool)

(assert (=> mapNonEmpty!9573 m!243061))

(check-sat (not b!216214) b_and!12653 (not d!58447) (not b!216194) (not d!58453) (not b!216202) (not bm!20368) (not b!216201) (not b!216190) (not b!216228) (not b!216215) tp_is_empty!5607 (not mapNonEmpty!9573) (not b!216193) (not b!216203) (not b_next!5745) (not bm!20371))
(check-sat b_and!12653 (not b_next!5745))
