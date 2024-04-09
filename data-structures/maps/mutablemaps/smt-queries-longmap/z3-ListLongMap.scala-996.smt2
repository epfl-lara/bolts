; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21502 () Bool)

(assert start!21502)

(declare-fun b!215594 () Bool)

(declare-fun b_free!5727 () Bool)

(declare-fun b_next!5727 () Bool)

(assert (=> b!215594 (= b_free!5727 (not b_next!5727))))

(declare-fun tp!20299 () Bool)

(declare-fun b_and!12635 () Bool)

(assert (=> b!215594 (= tp!20299 b_and!12635)))

(declare-fun b!215592 () Bool)

(declare-fun e!140274 () Bool)

(declare-fun tp_is_empty!5589 () Bool)

(assert (=> b!215592 (= e!140274 tp_is_empty!5589)))

(declare-fun b!215593 () Bool)

(declare-fun e!140276 () Bool)

(assert (=> b!215593 (= e!140276 tp_is_empty!5589)))

(declare-fun e!140275 () Bool)

(declare-datatypes ((V!7099 0))(
  ( (V!7100 (val!2839 Int)) )
))
(declare-datatypes ((ValueCell!2451 0))(
  ( (ValueCellFull!2451 (v!4853 V!7099)) (EmptyCell!2451) )
))
(declare-datatypes ((array!10406 0))(
  ( (array!10407 (arr!4929 (Array (_ BitVec 32) ValueCell!2451)) (size!5259 (_ BitVec 32))) )
))
(declare-datatypes ((array!10408 0))(
  ( (array!10409 (arr!4930 (Array (_ BitVec 32) (_ BitVec 64))) (size!5260 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2802 0))(
  ( (LongMapFixedSize!2803 (defaultEntry!4051 Int) (mask!9757 (_ BitVec 32)) (extraKeys!3788 (_ BitVec 32)) (zeroValue!3892 V!7099) (minValue!3892 V!7099) (_size!1450 (_ BitVec 32)) (_keys!6086 array!10408) (_values!4034 array!10406) (_vacant!1450 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2802)

(declare-fun e!140272 () Bool)

(declare-fun array_inv!3253 (array!10408) Bool)

(declare-fun array_inv!3254 (array!10406) Bool)

(assert (=> b!215594 (= e!140272 (and tp!20299 tp_is_empty!5589 (array_inv!3253 (_keys!6086 thiss!1504)) (array_inv!3254 (_values!4034 thiss!1504)) e!140275))))

(declare-fun res!105464 () Bool)

(declare-fun e!140271 () Bool)

(assert (=> start!21502 (=> (not res!105464) (not e!140271))))

(declare-fun valid!1133 (LongMapFixedSize!2802) Bool)

(assert (=> start!21502 (= res!105464 (valid!1133 thiss!1504))))

(assert (=> start!21502 e!140271))

(assert (=> start!21502 e!140272))

(assert (=> start!21502 true))

(declare-fun b!215595 () Bool)

(declare-fun res!105466 () Bool)

(assert (=> b!215595 (=> (not res!105466) (not e!140271))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!215595 (= res!105466 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!215596 () Bool)

(declare-fun mapRes!9529 () Bool)

(assert (=> b!215596 (= e!140275 (and e!140274 mapRes!9529))))

(declare-fun condMapEmpty!9529 () Bool)

(declare-fun mapDefault!9529 () ValueCell!2451)

(assert (=> b!215596 (= condMapEmpty!9529 (= (arr!4929 (_values!4034 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2451)) mapDefault!9529)))))

(declare-fun mapNonEmpty!9529 () Bool)

(declare-fun tp!20298 () Bool)

(assert (=> mapNonEmpty!9529 (= mapRes!9529 (and tp!20298 e!140276))))

(declare-fun mapValue!9529 () ValueCell!2451)

(declare-fun mapRest!9529 () (Array (_ BitVec 32) ValueCell!2451))

(declare-fun mapKey!9529 () (_ BitVec 32))

(assert (=> mapNonEmpty!9529 (= (arr!4929 (_values!4034 thiss!1504)) (store mapRest!9529 mapKey!9529 mapValue!9529))))

(declare-fun mapIsEmpty!9529 () Bool)

(assert (=> mapIsEmpty!9529 mapRes!9529))

(declare-fun b!215597 () Bool)

(declare-fun e!140273 () Bool)

(assert (=> b!215597 (= e!140271 e!140273)))

(declare-fun res!105465 () Bool)

(assert (=> b!215597 (=> (not res!105465) (not e!140273))))

(declare-datatypes ((SeekEntryResult!744 0))(
  ( (MissingZero!744 (index!5146 (_ BitVec 32))) (Found!744 (index!5147 (_ BitVec 32))) (Intermediate!744 (undefined!1556 Bool) (index!5148 (_ BitVec 32)) (x!22542 (_ BitVec 32))) (Undefined!744) (MissingVacant!744 (index!5149 (_ BitVec 32))) )
))
(declare-fun lt!111016 () SeekEntryResult!744)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!215597 (= res!105465 (or (= lt!111016 (MissingZero!744 index!297)) (= lt!111016 (MissingVacant!744 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10408 (_ BitVec 32)) SeekEntryResult!744)

(assert (=> b!215597 (= lt!111016 (seekEntryOrOpen!0 key!932 (_keys!6086 thiss!1504) (mask!9757 thiss!1504)))))

(declare-fun b!215598 () Bool)

(assert (=> b!215598 (= e!140273 (and (= (size!5259 (_values!4034 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9757 thiss!1504))) (= (size!5260 (_keys!6086 thiss!1504)) (size!5259 (_values!4034 thiss!1504))) (bvsge (mask!9757 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!3788 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!215599 () Bool)

(declare-fun res!105463 () Bool)

(assert (=> b!215599 (=> (not res!105463) (not e!140273))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!215599 (= res!105463 (validMask!0 (mask!9757 thiss!1504)))))

(assert (= (and start!21502 res!105464) b!215595))

(assert (= (and b!215595 res!105466) b!215597))

(assert (= (and b!215597 res!105465) b!215599))

(assert (= (and b!215599 res!105463) b!215598))

(assert (= (and b!215596 condMapEmpty!9529) mapIsEmpty!9529))

(assert (= (and b!215596 (not condMapEmpty!9529)) mapNonEmpty!9529))

(get-info :version)

(assert (= (and mapNonEmpty!9529 ((_ is ValueCellFull!2451) mapValue!9529)) b!215593))

(assert (= (and b!215596 ((_ is ValueCellFull!2451) mapDefault!9529)) b!215592))

(assert (= b!215594 b!215596))

(assert (= start!21502 b!215594))

(declare-fun m!242719 () Bool)

(assert (=> mapNonEmpty!9529 m!242719))

(declare-fun m!242721 () Bool)

(assert (=> b!215599 m!242721))

(declare-fun m!242723 () Bool)

(assert (=> start!21502 m!242723))

(declare-fun m!242725 () Bool)

(assert (=> b!215597 m!242725))

(declare-fun m!242727 () Bool)

(assert (=> b!215594 m!242727))

(declare-fun m!242729 () Bool)

(assert (=> b!215594 m!242729))

(check-sat b_and!12635 (not b!215594) (not b!215599) (not b!215597) (not b_next!5727) tp_is_empty!5589 (not start!21502) (not mapNonEmpty!9529))
(check-sat b_and!12635 (not b_next!5727))
(get-model)

(declare-fun d!58375 () Bool)

(assert (=> d!58375 (= (array_inv!3253 (_keys!6086 thiss!1504)) (bvsge (size!5260 (_keys!6086 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!215594 d!58375))

(declare-fun d!58377 () Bool)

(assert (=> d!58377 (= (array_inv!3254 (_values!4034 thiss!1504)) (bvsge (size!5259 (_values!4034 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!215594 d!58377))

(declare-fun b!215636 () Bool)

(declare-fun e!140305 () SeekEntryResult!744)

(assert (=> b!215636 (= e!140305 Undefined!744)))

(declare-fun b!215637 () Bool)

(declare-fun c!36199 () Bool)

(declare-fun lt!111027 () (_ BitVec 64))

(assert (=> b!215637 (= c!36199 (= lt!111027 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!140306 () SeekEntryResult!744)

(declare-fun e!140304 () SeekEntryResult!744)

(assert (=> b!215637 (= e!140306 e!140304)))

(declare-fun b!215638 () Bool)

(declare-fun lt!111026 () SeekEntryResult!744)

(assert (=> b!215638 (= e!140304 (MissingZero!744 (index!5148 lt!111026)))))

(declare-fun b!215639 () Bool)

(assert (=> b!215639 (= e!140306 (Found!744 (index!5148 lt!111026)))))

(declare-fun d!58379 () Bool)

(declare-fun lt!111028 () SeekEntryResult!744)

(assert (=> d!58379 (and (or ((_ is Undefined!744) lt!111028) (not ((_ is Found!744) lt!111028)) (and (bvsge (index!5147 lt!111028) #b00000000000000000000000000000000) (bvslt (index!5147 lt!111028) (size!5260 (_keys!6086 thiss!1504))))) (or ((_ is Undefined!744) lt!111028) ((_ is Found!744) lt!111028) (not ((_ is MissingZero!744) lt!111028)) (and (bvsge (index!5146 lt!111028) #b00000000000000000000000000000000) (bvslt (index!5146 lt!111028) (size!5260 (_keys!6086 thiss!1504))))) (or ((_ is Undefined!744) lt!111028) ((_ is Found!744) lt!111028) ((_ is MissingZero!744) lt!111028) (not ((_ is MissingVacant!744) lt!111028)) (and (bvsge (index!5149 lt!111028) #b00000000000000000000000000000000) (bvslt (index!5149 lt!111028) (size!5260 (_keys!6086 thiss!1504))))) (or ((_ is Undefined!744) lt!111028) (ite ((_ is Found!744) lt!111028) (= (select (arr!4930 (_keys!6086 thiss!1504)) (index!5147 lt!111028)) key!932) (ite ((_ is MissingZero!744) lt!111028) (= (select (arr!4930 (_keys!6086 thiss!1504)) (index!5146 lt!111028)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!744) lt!111028) (= (select (arr!4930 (_keys!6086 thiss!1504)) (index!5149 lt!111028)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!58379 (= lt!111028 e!140305)))

(declare-fun c!36197 () Bool)

(assert (=> d!58379 (= c!36197 (and ((_ is Intermediate!744) lt!111026) (undefined!1556 lt!111026)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10408 (_ BitVec 32)) SeekEntryResult!744)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58379 (= lt!111026 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9757 thiss!1504)) key!932 (_keys!6086 thiss!1504) (mask!9757 thiss!1504)))))

(assert (=> d!58379 (validMask!0 (mask!9757 thiss!1504))))

(assert (=> d!58379 (= (seekEntryOrOpen!0 key!932 (_keys!6086 thiss!1504) (mask!9757 thiss!1504)) lt!111028)))

(declare-fun b!215640 () Bool)

(assert (=> b!215640 (= e!140305 e!140306)))

(assert (=> b!215640 (= lt!111027 (select (arr!4930 (_keys!6086 thiss!1504)) (index!5148 lt!111026)))))

(declare-fun c!36198 () Bool)

(assert (=> b!215640 (= c!36198 (= lt!111027 key!932))))

(declare-fun b!215641 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10408 (_ BitVec 32)) SeekEntryResult!744)

(assert (=> b!215641 (= e!140304 (seekKeyOrZeroReturnVacant!0 (x!22542 lt!111026) (index!5148 lt!111026) (index!5148 lt!111026) key!932 (_keys!6086 thiss!1504) (mask!9757 thiss!1504)))))

(assert (= (and d!58379 c!36197) b!215636))

(assert (= (and d!58379 (not c!36197)) b!215640))

(assert (= (and b!215640 c!36198) b!215639))

(assert (= (and b!215640 (not c!36198)) b!215637))

(assert (= (and b!215637 c!36199) b!215638))

(assert (= (and b!215637 (not c!36199)) b!215641))

(declare-fun m!242743 () Bool)

(assert (=> d!58379 m!242743))

(declare-fun m!242745 () Bool)

(assert (=> d!58379 m!242745))

(assert (=> d!58379 m!242721))

(declare-fun m!242747 () Bool)

(assert (=> d!58379 m!242747))

(assert (=> d!58379 m!242743))

(declare-fun m!242749 () Bool)

(assert (=> d!58379 m!242749))

(declare-fun m!242751 () Bool)

(assert (=> d!58379 m!242751))

(declare-fun m!242753 () Bool)

(assert (=> b!215640 m!242753))

(declare-fun m!242755 () Bool)

(assert (=> b!215641 m!242755))

(assert (=> b!215597 d!58379))

(declare-fun d!58381 () Bool)

(declare-fun res!105485 () Bool)

(declare-fun e!140309 () Bool)

(assert (=> d!58381 (=> (not res!105485) (not e!140309))))

(declare-fun simpleValid!218 (LongMapFixedSize!2802) Bool)

(assert (=> d!58381 (= res!105485 (simpleValid!218 thiss!1504))))

(assert (=> d!58381 (= (valid!1133 thiss!1504) e!140309)))

(declare-fun b!215648 () Bool)

(declare-fun res!105486 () Bool)

(assert (=> b!215648 (=> (not res!105486) (not e!140309))))

(declare-fun arrayCountValidKeys!0 (array!10408 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!215648 (= res!105486 (= (arrayCountValidKeys!0 (_keys!6086 thiss!1504) #b00000000000000000000000000000000 (size!5260 (_keys!6086 thiss!1504))) (_size!1450 thiss!1504)))))

(declare-fun b!215649 () Bool)

(declare-fun res!105487 () Bool)

(assert (=> b!215649 (=> (not res!105487) (not e!140309))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10408 (_ BitVec 32)) Bool)

(assert (=> b!215649 (= res!105487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6086 thiss!1504) (mask!9757 thiss!1504)))))

(declare-fun b!215650 () Bool)

(declare-datatypes ((List!3158 0))(
  ( (Nil!3155) (Cons!3154 (h!3799 (_ BitVec 64)) (t!8121 List!3158)) )
))
(declare-fun arrayNoDuplicates!0 (array!10408 (_ BitVec 32) List!3158) Bool)

(assert (=> b!215650 (= e!140309 (arrayNoDuplicates!0 (_keys!6086 thiss!1504) #b00000000000000000000000000000000 Nil!3155))))

(assert (= (and d!58381 res!105485) b!215648))

(assert (= (and b!215648 res!105486) b!215649))

(assert (= (and b!215649 res!105487) b!215650))

(declare-fun m!242757 () Bool)

(assert (=> d!58381 m!242757))

(declare-fun m!242759 () Bool)

(assert (=> b!215648 m!242759))

(declare-fun m!242761 () Bool)

(assert (=> b!215649 m!242761))

(declare-fun m!242763 () Bool)

(assert (=> b!215650 m!242763))

(assert (=> start!21502 d!58381))

(declare-fun d!58383 () Bool)

(assert (=> d!58383 (= (validMask!0 (mask!9757 thiss!1504)) (and (or (= (mask!9757 thiss!1504) #b00000000000000000000000000000111) (= (mask!9757 thiss!1504) #b00000000000000000000000000001111) (= (mask!9757 thiss!1504) #b00000000000000000000000000011111) (= (mask!9757 thiss!1504) #b00000000000000000000000000111111) (= (mask!9757 thiss!1504) #b00000000000000000000000001111111) (= (mask!9757 thiss!1504) #b00000000000000000000000011111111) (= (mask!9757 thiss!1504) #b00000000000000000000000111111111) (= (mask!9757 thiss!1504) #b00000000000000000000001111111111) (= (mask!9757 thiss!1504) #b00000000000000000000011111111111) (= (mask!9757 thiss!1504) #b00000000000000000000111111111111) (= (mask!9757 thiss!1504) #b00000000000000000001111111111111) (= (mask!9757 thiss!1504) #b00000000000000000011111111111111) (= (mask!9757 thiss!1504) #b00000000000000000111111111111111) (= (mask!9757 thiss!1504) #b00000000000000001111111111111111) (= (mask!9757 thiss!1504) #b00000000000000011111111111111111) (= (mask!9757 thiss!1504) #b00000000000000111111111111111111) (= (mask!9757 thiss!1504) #b00000000000001111111111111111111) (= (mask!9757 thiss!1504) #b00000000000011111111111111111111) (= (mask!9757 thiss!1504) #b00000000000111111111111111111111) (= (mask!9757 thiss!1504) #b00000000001111111111111111111111) (= (mask!9757 thiss!1504) #b00000000011111111111111111111111) (= (mask!9757 thiss!1504) #b00000000111111111111111111111111) (= (mask!9757 thiss!1504) #b00000001111111111111111111111111) (= (mask!9757 thiss!1504) #b00000011111111111111111111111111) (= (mask!9757 thiss!1504) #b00000111111111111111111111111111) (= (mask!9757 thiss!1504) #b00001111111111111111111111111111) (= (mask!9757 thiss!1504) #b00011111111111111111111111111111) (= (mask!9757 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!9757 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!215599 d!58383))

(declare-fun b!215658 () Bool)

(declare-fun e!140315 () Bool)

(assert (=> b!215658 (= e!140315 tp_is_empty!5589)))

(declare-fun mapNonEmpty!9535 () Bool)

(declare-fun mapRes!9535 () Bool)

(declare-fun tp!20308 () Bool)

(declare-fun e!140314 () Bool)

(assert (=> mapNonEmpty!9535 (= mapRes!9535 (and tp!20308 e!140314))))

(declare-fun mapKey!9535 () (_ BitVec 32))

(declare-fun mapRest!9535 () (Array (_ BitVec 32) ValueCell!2451))

(declare-fun mapValue!9535 () ValueCell!2451)

(assert (=> mapNonEmpty!9535 (= mapRest!9529 (store mapRest!9535 mapKey!9535 mapValue!9535))))

(declare-fun b!215657 () Bool)

(assert (=> b!215657 (= e!140314 tp_is_empty!5589)))

(declare-fun mapIsEmpty!9535 () Bool)

(assert (=> mapIsEmpty!9535 mapRes!9535))

(declare-fun condMapEmpty!9535 () Bool)

(declare-fun mapDefault!9535 () ValueCell!2451)

(assert (=> mapNonEmpty!9529 (= condMapEmpty!9535 (= mapRest!9529 ((as const (Array (_ BitVec 32) ValueCell!2451)) mapDefault!9535)))))

(assert (=> mapNonEmpty!9529 (= tp!20298 (and e!140315 mapRes!9535))))

(assert (= (and mapNonEmpty!9529 condMapEmpty!9535) mapIsEmpty!9535))

(assert (= (and mapNonEmpty!9529 (not condMapEmpty!9535)) mapNonEmpty!9535))

(assert (= (and mapNonEmpty!9535 ((_ is ValueCellFull!2451) mapValue!9535)) b!215657))

(assert (= (and mapNonEmpty!9529 ((_ is ValueCellFull!2451) mapDefault!9535)) b!215658))

(declare-fun m!242765 () Bool)

(assert (=> mapNonEmpty!9535 m!242765))

(check-sat (not b!215650) b_and!12635 (not b!215649) (not mapNonEmpty!9535) (not d!58379) (not d!58381) (not b!215648) (not b_next!5727) (not b!215641) tp_is_empty!5589)
(check-sat b_and!12635 (not b_next!5727))
(get-model)

(declare-fun b!215669 () Bool)

(declare-fun e!140326 () Bool)

(declare-fun call!20350 () Bool)

(assert (=> b!215669 (= e!140326 call!20350)))

(declare-fun b!215670 () Bool)

(declare-fun e!140327 () Bool)

(declare-fun e!140325 () Bool)

(assert (=> b!215670 (= e!140327 e!140325)))

(declare-fun res!105494 () Bool)

(assert (=> b!215670 (=> (not res!105494) (not e!140325))))

(declare-fun e!140324 () Bool)

(assert (=> b!215670 (= res!105494 (not e!140324))))

(declare-fun res!105495 () Bool)

(assert (=> b!215670 (=> (not res!105495) (not e!140324))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!215670 (= res!105495 (validKeyInArray!0 (select (arr!4930 (_keys!6086 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!58385 () Bool)

(declare-fun res!105496 () Bool)

(assert (=> d!58385 (=> res!105496 e!140327)))

(assert (=> d!58385 (= res!105496 (bvsge #b00000000000000000000000000000000 (size!5260 (_keys!6086 thiss!1504))))))

(assert (=> d!58385 (= (arrayNoDuplicates!0 (_keys!6086 thiss!1504) #b00000000000000000000000000000000 Nil!3155) e!140327)))

(declare-fun b!215671 () Bool)

(declare-fun contains!1429 (List!3158 (_ BitVec 64)) Bool)

(assert (=> b!215671 (= e!140324 (contains!1429 Nil!3155 (select (arr!4930 (_keys!6086 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!215672 () Bool)

(assert (=> b!215672 (= e!140326 call!20350)))

(declare-fun bm!20347 () Bool)

(declare-fun c!36202 () Bool)

(assert (=> bm!20347 (= call!20350 (arrayNoDuplicates!0 (_keys!6086 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!36202 (Cons!3154 (select (arr!4930 (_keys!6086 thiss!1504)) #b00000000000000000000000000000000) Nil!3155) Nil!3155)))))

(declare-fun b!215673 () Bool)

(assert (=> b!215673 (= e!140325 e!140326)))

(assert (=> b!215673 (= c!36202 (validKeyInArray!0 (select (arr!4930 (_keys!6086 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!58385 (not res!105496)) b!215670))

(assert (= (and b!215670 res!105495) b!215671))

(assert (= (and b!215670 res!105494) b!215673))

(assert (= (and b!215673 c!36202) b!215672))

(assert (= (and b!215673 (not c!36202)) b!215669))

(assert (= (or b!215672 b!215669) bm!20347))

(declare-fun m!242767 () Bool)

(assert (=> b!215670 m!242767))

(assert (=> b!215670 m!242767))

(declare-fun m!242769 () Bool)

(assert (=> b!215670 m!242769))

(assert (=> b!215671 m!242767))

(assert (=> b!215671 m!242767))

(declare-fun m!242771 () Bool)

(assert (=> b!215671 m!242771))

(assert (=> bm!20347 m!242767))

(declare-fun m!242773 () Bool)

(assert (=> bm!20347 m!242773))

(assert (=> b!215673 m!242767))

(assert (=> b!215673 m!242767))

(assert (=> b!215673 m!242769))

(assert (=> b!215650 d!58385))

(declare-fun d!58387 () Bool)

(declare-fun res!105508 () Bool)

(declare-fun e!140330 () Bool)

(assert (=> d!58387 (=> (not res!105508) (not e!140330))))

(assert (=> d!58387 (= res!105508 (validMask!0 (mask!9757 thiss!1504)))))

(assert (=> d!58387 (= (simpleValid!218 thiss!1504) e!140330)))

(declare-fun b!215683 () Bool)

(declare-fun res!105507 () Bool)

(assert (=> b!215683 (=> (not res!105507) (not e!140330))))

(declare-fun size!5263 (LongMapFixedSize!2802) (_ BitVec 32))

(assert (=> b!215683 (= res!105507 (bvsge (size!5263 thiss!1504) (_size!1450 thiss!1504)))))

(declare-fun b!215685 () Bool)

(assert (=> b!215685 (= e!140330 (and (bvsge (extraKeys!3788 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3788 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1450 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!215682 () Bool)

(declare-fun res!105506 () Bool)

(assert (=> b!215682 (=> (not res!105506) (not e!140330))))

(assert (=> b!215682 (= res!105506 (and (= (size!5259 (_values!4034 thiss!1504)) (bvadd (mask!9757 thiss!1504) #b00000000000000000000000000000001)) (= (size!5260 (_keys!6086 thiss!1504)) (size!5259 (_values!4034 thiss!1504))) (bvsge (_size!1450 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1450 thiss!1504) (bvadd (mask!9757 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun b!215684 () Bool)

(declare-fun res!105505 () Bool)

(assert (=> b!215684 (=> (not res!105505) (not e!140330))))

(assert (=> b!215684 (= res!105505 (= (size!5263 thiss!1504) (bvadd (_size!1450 thiss!1504) (bvsdiv (bvadd (extraKeys!3788 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!58387 res!105508) b!215682))

(assert (= (and b!215682 res!105506) b!215683))

(assert (= (and b!215683 res!105507) b!215684))

(assert (= (and b!215684 res!105505) b!215685))

(assert (=> d!58387 m!242721))

(declare-fun m!242775 () Bool)

(assert (=> b!215683 m!242775))

(assert (=> b!215684 m!242775))

(assert (=> d!58381 d!58387))

(declare-fun b!215698 () Bool)

(declare-fun c!36209 () Bool)

(declare-fun lt!111033 () (_ BitVec 64))

(assert (=> b!215698 (= c!36209 (= lt!111033 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!140338 () SeekEntryResult!744)

(declare-fun e!140339 () SeekEntryResult!744)

(assert (=> b!215698 (= e!140338 e!140339)))

(declare-fun b!215699 () Bool)

(declare-fun e!140337 () SeekEntryResult!744)

(assert (=> b!215699 (= e!140337 Undefined!744)))

(declare-fun b!215700 () Bool)

(assert (=> b!215700 (= e!140337 e!140338)))

(declare-fun c!36210 () Bool)

(assert (=> b!215700 (= c!36210 (= lt!111033 key!932))))

(declare-fun b!215701 () Bool)

(assert (=> b!215701 (= e!140339 (MissingVacant!744 (index!5148 lt!111026)))))

(declare-fun b!215702 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!215702 (= e!140339 (seekKeyOrZeroReturnVacant!0 (bvadd (x!22542 lt!111026) #b00000000000000000000000000000001) (nextIndex!0 (index!5148 lt!111026) (x!22542 lt!111026) (mask!9757 thiss!1504)) (index!5148 lt!111026) key!932 (_keys!6086 thiss!1504) (mask!9757 thiss!1504)))))

(declare-fun lt!111034 () SeekEntryResult!744)

(declare-fun d!58389 () Bool)

(assert (=> d!58389 (and (or ((_ is Undefined!744) lt!111034) (not ((_ is Found!744) lt!111034)) (and (bvsge (index!5147 lt!111034) #b00000000000000000000000000000000) (bvslt (index!5147 lt!111034) (size!5260 (_keys!6086 thiss!1504))))) (or ((_ is Undefined!744) lt!111034) ((_ is Found!744) lt!111034) (not ((_ is MissingVacant!744) lt!111034)) (not (= (index!5149 lt!111034) (index!5148 lt!111026))) (and (bvsge (index!5149 lt!111034) #b00000000000000000000000000000000) (bvslt (index!5149 lt!111034) (size!5260 (_keys!6086 thiss!1504))))) (or ((_ is Undefined!744) lt!111034) (ite ((_ is Found!744) lt!111034) (= (select (arr!4930 (_keys!6086 thiss!1504)) (index!5147 lt!111034)) key!932) (and ((_ is MissingVacant!744) lt!111034) (= (index!5149 lt!111034) (index!5148 lt!111026)) (= (select (arr!4930 (_keys!6086 thiss!1504)) (index!5149 lt!111034)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!58389 (= lt!111034 e!140337)))

(declare-fun c!36211 () Bool)

(assert (=> d!58389 (= c!36211 (bvsge (x!22542 lt!111026) #b01111111111111111111111111111110))))

(assert (=> d!58389 (= lt!111033 (select (arr!4930 (_keys!6086 thiss!1504)) (index!5148 lt!111026)))))

(assert (=> d!58389 (validMask!0 (mask!9757 thiss!1504))))

(assert (=> d!58389 (= (seekKeyOrZeroReturnVacant!0 (x!22542 lt!111026) (index!5148 lt!111026) (index!5148 lt!111026) key!932 (_keys!6086 thiss!1504) (mask!9757 thiss!1504)) lt!111034)))

(declare-fun b!215703 () Bool)

(assert (=> b!215703 (= e!140338 (Found!744 (index!5148 lt!111026)))))

(assert (= (and d!58389 c!36211) b!215699))

(assert (= (and d!58389 (not c!36211)) b!215700))

(assert (= (and b!215700 c!36210) b!215703))

(assert (= (and b!215700 (not c!36210)) b!215698))

(assert (= (and b!215698 c!36209) b!215701))

(assert (= (and b!215698 (not c!36209)) b!215702))

(declare-fun m!242777 () Bool)

(assert (=> b!215702 m!242777))

(assert (=> b!215702 m!242777))

(declare-fun m!242779 () Bool)

(assert (=> b!215702 m!242779))

(declare-fun m!242781 () Bool)

(assert (=> d!58389 m!242781))

(declare-fun m!242783 () Bool)

(assert (=> d!58389 m!242783))

(assert (=> d!58389 m!242753))

(assert (=> d!58389 m!242721))

(assert (=> b!215641 d!58389))

(declare-fun b!215722 () Bool)

(declare-fun lt!111040 () SeekEntryResult!744)

(assert (=> b!215722 (and (bvsge (index!5148 lt!111040) #b00000000000000000000000000000000) (bvslt (index!5148 lt!111040) (size!5260 (_keys!6086 thiss!1504))))))

(declare-fun res!105517 () Bool)

(assert (=> b!215722 (= res!105517 (= (select (arr!4930 (_keys!6086 thiss!1504)) (index!5148 lt!111040)) key!932))))

(declare-fun e!140353 () Bool)

(assert (=> b!215722 (=> res!105517 e!140353)))

(declare-fun e!140351 () Bool)

(assert (=> b!215722 (= e!140351 e!140353)))

(declare-fun b!215723 () Bool)

(declare-fun e!140352 () SeekEntryResult!744)

(assert (=> b!215723 (= e!140352 (Intermediate!744 false (toIndex!0 key!932 (mask!9757 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!215724 () Bool)

(declare-fun e!140354 () SeekEntryResult!744)

(assert (=> b!215724 (= e!140354 e!140352)))

(declare-fun c!36219 () Bool)

(declare-fun lt!111039 () (_ BitVec 64))

(assert (=> b!215724 (= c!36219 (or (= lt!111039 key!932) (= (bvadd lt!111039 lt!111039) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!215725 () Bool)

(assert (=> b!215725 (= e!140352 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!9757 thiss!1504)) #b00000000000000000000000000000000 (mask!9757 thiss!1504)) key!932 (_keys!6086 thiss!1504) (mask!9757 thiss!1504)))))

(declare-fun b!215726 () Bool)

(assert (=> b!215726 (and (bvsge (index!5148 lt!111040) #b00000000000000000000000000000000) (bvslt (index!5148 lt!111040) (size!5260 (_keys!6086 thiss!1504))))))

(assert (=> b!215726 (= e!140353 (= (select (arr!4930 (_keys!6086 thiss!1504)) (index!5148 lt!111040)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!215727 () Bool)

(assert (=> b!215727 (and (bvsge (index!5148 lt!111040) #b00000000000000000000000000000000) (bvslt (index!5148 lt!111040) (size!5260 (_keys!6086 thiss!1504))))))

(declare-fun res!105515 () Bool)

(assert (=> b!215727 (= res!105515 (= (select (arr!4930 (_keys!6086 thiss!1504)) (index!5148 lt!111040)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!215727 (=> res!105515 e!140353)))

(declare-fun b!215729 () Bool)

(declare-fun e!140350 () Bool)

(assert (=> b!215729 (= e!140350 e!140351)))

(declare-fun res!105516 () Bool)

(assert (=> b!215729 (= res!105516 (and ((_ is Intermediate!744) lt!111040) (not (undefined!1556 lt!111040)) (bvslt (x!22542 lt!111040) #b01111111111111111111111111111110) (bvsge (x!22542 lt!111040) #b00000000000000000000000000000000) (bvsge (x!22542 lt!111040) #b00000000000000000000000000000000)))))

(assert (=> b!215729 (=> (not res!105516) (not e!140351))))

(declare-fun b!215730 () Bool)

(assert (=> b!215730 (= e!140350 (bvsge (x!22542 lt!111040) #b01111111111111111111111111111110))))

(declare-fun b!215728 () Bool)

(assert (=> b!215728 (= e!140354 (Intermediate!744 true (toIndex!0 key!932 (mask!9757 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun d!58391 () Bool)

(assert (=> d!58391 e!140350))

(declare-fun c!36218 () Bool)

(assert (=> d!58391 (= c!36218 (and ((_ is Intermediate!744) lt!111040) (undefined!1556 lt!111040)))))

(assert (=> d!58391 (= lt!111040 e!140354)))

(declare-fun c!36220 () Bool)

(assert (=> d!58391 (= c!36220 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!58391 (= lt!111039 (select (arr!4930 (_keys!6086 thiss!1504)) (toIndex!0 key!932 (mask!9757 thiss!1504))))))

(assert (=> d!58391 (validMask!0 (mask!9757 thiss!1504))))

(assert (=> d!58391 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9757 thiss!1504)) key!932 (_keys!6086 thiss!1504) (mask!9757 thiss!1504)) lt!111040)))

(assert (= (and d!58391 c!36220) b!215728))

(assert (= (and d!58391 (not c!36220)) b!215724))

(assert (= (and b!215724 c!36219) b!215723))

(assert (= (and b!215724 (not c!36219)) b!215725))

(assert (= (and d!58391 c!36218) b!215730))

(assert (= (and d!58391 (not c!36218)) b!215729))

(assert (= (and b!215729 res!105516) b!215722))

(assert (= (and b!215722 (not res!105517)) b!215727))

(assert (= (and b!215727 (not res!105515)) b!215726))

(declare-fun m!242785 () Bool)

(assert (=> b!215727 m!242785))

(assert (=> d!58391 m!242743))

(declare-fun m!242787 () Bool)

(assert (=> d!58391 m!242787))

(assert (=> d!58391 m!242721))

(assert (=> b!215725 m!242743))

(declare-fun m!242789 () Bool)

(assert (=> b!215725 m!242789))

(assert (=> b!215725 m!242789))

(declare-fun m!242791 () Bool)

(assert (=> b!215725 m!242791))

(assert (=> b!215722 m!242785))

(assert (=> b!215726 m!242785))

(assert (=> d!58379 d!58391))

(declare-fun d!58393 () Bool)

(declare-fun lt!111046 () (_ BitVec 32))

(declare-fun lt!111045 () (_ BitVec 32))

(assert (=> d!58393 (= lt!111046 (bvmul (bvxor lt!111045 (bvlshr lt!111045 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!58393 (= lt!111045 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!58393 (and (bvsge (mask!9757 thiss!1504) #b00000000000000000000000000000000) (let ((res!105518 (let ((h!3800 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!22560 (bvmul (bvxor h!3800 (bvlshr h!3800 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!22560 (bvlshr x!22560 #b00000000000000000000000000001101)) (mask!9757 thiss!1504)))))) (and (bvslt res!105518 (bvadd (mask!9757 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!105518 #b00000000000000000000000000000000))))))

(assert (=> d!58393 (= (toIndex!0 key!932 (mask!9757 thiss!1504)) (bvand (bvxor lt!111046 (bvlshr lt!111046 #b00000000000000000000000000001101)) (mask!9757 thiss!1504)))))

(assert (=> d!58379 d!58393))

(assert (=> d!58379 d!58383))

(declare-fun b!215739 () Bool)

(declare-fun e!140360 () (_ BitVec 32))

(assert (=> b!215739 (= e!140360 #b00000000000000000000000000000000)))

(declare-fun b!215741 () Bool)

(declare-fun e!140359 () (_ BitVec 32))

(declare-fun call!20353 () (_ BitVec 32))

(assert (=> b!215741 (= e!140359 (bvadd #b00000000000000000000000000000001 call!20353))))

(declare-fun b!215740 () Bool)

(assert (=> b!215740 (= e!140359 call!20353)))

(declare-fun d!58395 () Bool)

(declare-fun lt!111049 () (_ BitVec 32))

(assert (=> d!58395 (and (bvsge lt!111049 #b00000000000000000000000000000000) (bvsle lt!111049 (bvsub (size!5260 (_keys!6086 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!58395 (= lt!111049 e!140360)))

(declare-fun c!36225 () Bool)

(assert (=> d!58395 (= c!36225 (bvsge #b00000000000000000000000000000000 (size!5260 (_keys!6086 thiss!1504))))))

(assert (=> d!58395 (and (bvsle #b00000000000000000000000000000000 (size!5260 (_keys!6086 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!5260 (_keys!6086 thiss!1504)) (size!5260 (_keys!6086 thiss!1504))))))

(assert (=> d!58395 (= (arrayCountValidKeys!0 (_keys!6086 thiss!1504) #b00000000000000000000000000000000 (size!5260 (_keys!6086 thiss!1504))) lt!111049)))

(declare-fun b!215742 () Bool)

(assert (=> b!215742 (= e!140360 e!140359)))

(declare-fun c!36226 () Bool)

(assert (=> b!215742 (= c!36226 (validKeyInArray!0 (select (arr!4930 (_keys!6086 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!20350 () Bool)

(assert (=> bm!20350 (= call!20353 (arrayCountValidKeys!0 (_keys!6086 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!5260 (_keys!6086 thiss!1504))))))

(assert (= (and d!58395 c!36225) b!215739))

(assert (= (and d!58395 (not c!36225)) b!215742))

(assert (= (and b!215742 c!36226) b!215741))

(assert (= (and b!215742 (not c!36226)) b!215740))

(assert (= (or b!215741 b!215740) bm!20350))

(assert (=> b!215742 m!242767))

(assert (=> b!215742 m!242767))

(assert (=> b!215742 m!242769))

(declare-fun m!242793 () Bool)

(assert (=> bm!20350 m!242793))

(assert (=> b!215648 d!58395))

(declare-fun d!58397 () Bool)

(declare-fun res!105524 () Bool)

(declare-fun e!140368 () Bool)

(assert (=> d!58397 (=> res!105524 e!140368)))

(assert (=> d!58397 (= res!105524 (bvsge #b00000000000000000000000000000000 (size!5260 (_keys!6086 thiss!1504))))))

(assert (=> d!58397 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6086 thiss!1504) (mask!9757 thiss!1504)) e!140368)))

(declare-fun b!215751 () Bool)

(declare-fun e!140367 () Bool)

(declare-fun call!20356 () Bool)

(assert (=> b!215751 (= e!140367 call!20356)))

(declare-fun b!215752 () Bool)

(declare-fun e!140369 () Bool)

(assert (=> b!215752 (= e!140369 e!140367)))

(declare-fun lt!111058 () (_ BitVec 64))

(assert (=> b!215752 (= lt!111058 (select (arr!4930 (_keys!6086 thiss!1504)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!6495 0))(
  ( (Unit!6496) )
))
(declare-fun lt!111056 () Unit!6495)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10408 (_ BitVec 64) (_ BitVec 32)) Unit!6495)

(assert (=> b!215752 (= lt!111056 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6086 thiss!1504) lt!111058 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10408 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!215752 (arrayContainsKey!0 (_keys!6086 thiss!1504) lt!111058 #b00000000000000000000000000000000)))

(declare-fun lt!111057 () Unit!6495)

(assert (=> b!215752 (= lt!111057 lt!111056)))

(declare-fun res!105523 () Bool)

(assert (=> b!215752 (= res!105523 (= (seekEntryOrOpen!0 (select (arr!4930 (_keys!6086 thiss!1504)) #b00000000000000000000000000000000) (_keys!6086 thiss!1504) (mask!9757 thiss!1504)) (Found!744 #b00000000000000000000000000000000)))))

(assert (=> b!215752 (=> (not res!105523) (not e!140367))))

(declare-fun b!215753 () Bool)

(assert (=> b!215753 (= e!140369 call!20356)))

(declare-fun bm!20353 () Bool)

(assert (=> bm!20353 (= call!20356 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6086 thiss!1504) (mask!9757 thiss!1504)))))

(declare-fun b!215754 () Bool)

(assert (=> b!215754 (= e!140368 e!140369)))

(declare-fun c!36229 () Bool)

(assert (=> b!215754 (= c!36229 (validKeyInArray!0 (select (arr!4930 (_keys!6086 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!58397 (not res!105524)) b!215754))

(assert (= (and b!215754 c!36229) b!215752))

(assert (= (and b!215754 (not c!36229)) b!215753))

(assert (= (and b!215752 res!105523) b!215751))

(assert (= (or b!215751 b!215753) bm!20353))

(assert (=> b!215752 m!242767))

(declare-fun m!242795 () Bool)

(assert (=> b!215752 m!242795))

(declare-fun m!242797 () Bool)

(assert (=> b!215752 m!242797))

(assert (=> b!215752 m!242767))

(declare-fun m!242799 () Bool)

(assert (=> b!215752 m!242799))

(declare-fun m!242801 () Bool)

(assert (=> bm!20353 m!242801))

(assert (=> b!215754 m!242767))

(assert (=> b!215754 m!242767))

(assert (=> b!215754 m!242769))

(assert (=> b!215649 d!58397))

(declare-fun b!215756 () Bool)

(declare-fun e!140371 () Bool)

(assert (=> b!215756 (= e!140371 tp_is_empty!5589)))

(declare-fun mapNonEmpty!9536 () Bool)

(declare-fun mapRes!9536 () Bool)

(declare-fun tp!20309 () Bool)

(declare-fun e!140370 () Bool)

(assert (=> mapNonEmpty!9536 (= mapRes!9536 (and tp!20309 e!140370))))

(declare-fun mapRest!9536 () (Array (_ BitVec 32) ValueCell!2451))

(declare-fun mapValue!9536 () ValueCell!2451)

(declare-fun mapKey!9536 () (_ BitVec 32))

(assert (=> mapNonEmpty!9536 (= mapRest!9535 (store mapRest!9536 mapKey!9536 mapValue!9536))))

(declare-fun b!215755 () Bool)

(assert (=> b!215755 (= e!140370 tp_is_empty!5589)))

(declare-fun mapIsEmpty!9536 () Bool)

(assert (=> mapIsEmpty!9536 mapRes!9536))

(declare-fun condMapEmpty!9536 () Bool)

(declare-fun mapDefault!9536 () ValueCell!2451)

(assert (=> mapNonEmpty!9535 (= condMapEmpty!9536 (= mapRest!9535 ((as const (Array (_ BitVec 32) ValueCell!2451)) mapDefault!9536)))))

(assert (=> mapNonEmpty!9535 (= tp!20308 (and e!140371 mapRes!9536))))

(assert (= (and mapNonEmpty!9535 condMapEmpty!9536) mapIsEmpty!9536))

(assert (= (and mapNonEmpty!9535 (not condMapEmpty!9536)) mapNonEmpty!9536))

(assert (= (and mapNonEmpty!9536 ((_ is ValueCellFull!2451) mapValue!9536)) b!215755))

(assert (= (and mapNonEmpty!9535 ((_ is ValueCellFull!2451) mapDefault!9536)) b!215756))

(declare-fun m!242803 () Bool)

(assert (=> mapNonEmpty!9536 m!242803))

(check-sat (not bm!20347) (not b!215670) (not b!215752) (not b!215754) (not b!215742) (not b!215725) (not b_next!5727) (not b!215683) (not b!215671) (not d!58389) (not bm!20350) b_and!12635 (not d!58387) (not b!215702) (not mapNonEmpty!9536) (not bm!20353) (not b!215673) tp_is_empty!5589 (not b!215684) (not d!58391))
(check-sat b_and!12635 (not b_next!5727))
