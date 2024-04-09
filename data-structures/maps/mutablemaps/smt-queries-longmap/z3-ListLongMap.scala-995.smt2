; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21486 () Bool)

(assert start!21486)

(declare-fun b!215488 () Bool)

(declare-fun b_free!5721 () Bool)

(declare-fun b_next!5721 () Bool)

(assert (=> b!215488 (= b_free!5721 (not b_next!5721))))

(declare-fun tp!20278 () Bool)

(declare-fun b_and!12629 () Bool)

(assert (=> b!215488 (= tp!20278 b_and!12629)))

(declare-fun b!215485 () Bool)

(declare-fun e!140194 () Bool)

(declare-fun tp_is_empty!5583 () Bool)

(assert (=> b!215485 (= e!140194 tp_is_empty!5583)))

(declare-fun b!215486 () Bool)

(declare-fun e!140191 () Bool)

(declare-fun mapRes!9517 () Bool)

(assert (=> b!215486 (= e!140191 (and e!140194 mapRes!9517))))

(declare-fun condMapEmpty!9517 () Bool)

(declare-datatypes ((V!7091 0))(
  ( (V!7092 (val!2836 Int)) )
))
(declare-datatypes ((ValueCell!2448 0))(
  ( (ValueCellFull!2448 (v!4850 V!7091)) (EmptyCell!2448) )
))
(declare-datatypes ((array!10392 0))(
  ( (array!10393 (arr!4923 (Array (_ BitVec 32) ValueCell!2448)) (size!5253 (_ BitVec 32))) )
))
(declare-datatypes ((array!10394 0))(
  ( (array!10395 (arr!4924 (Array (_ BitVec 32) (_ BitVec 64))) (size!5254 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2796 0))(
  ( (LongMapFixedSize!2797 (defaultEntry!4048 Int) (mask!9750 (_ BitVec 32)) (extraKeys!3785 (_ BitVec 32)) (zeroValue!3889 V!7091) (minValue!3889 V!7091) (_size!1447 (_ BitVec 32)) (_keys!6082 array!10394) (_values!4031 array!10392) (_vacant!1447 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2796)

(declare-fun mapDefault!9517 () ValueCell!2448)

(assert (=> b!215486 (= condMapEmpty!9517 (= (arr!4923 (_values!4031 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2448)) mapDefault!9517)))))

(declare-fun res!105419 () Bool)

(declare-fun e!140195 () Bool)

(assert (=> start!21486 (=> (not res!105419) (not e!140195))))

(declare-fun valid!1131 (LongMapFixedSize!2796) Bool)

(assert (=> start!21486 (= res!105419 (valid!1131 thiss!1504))))

(assert (=> start!21486 e!140195))

(declare-fun e!140190 () Bool)

(assert (=> start!21486 e!140190))

(assert (=> start!21486 true))

(declare-fun mapNonEmpty!9517 () Bool)

(declare-fun tp!20277 () Bool)

(declare-fun e!140189 () Bool)

(assert (=> mapNonEmpty!9517 (= mapRes!9517 (and tp!20277 e!140189))))

(declare-fun mapKey!9517 () (_ BitVec 32))

(declare-fun mapValue!9517 () ValueCell!2448)

(declare-fun mapRest!9517 () (Array (_ BitVec 32) ValueCell!2448))

(assert (=> mapNonEmpty!9517 (= (arr!4923 (_values!4031 thiss!1504)) (store mapRest!9517 mapKey!9517 mapValue!9517))))

(declare-fun b!215487 () Bool)

(declare-fun res!105421 () Bool)

(declare-fun e!140192 () Bool)

(assert (=> b!215487 (=> (not res!105421) (not e!140192))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!215487 (= res!105421 (validMask!0 (mask!9750 thiss!1504)))))

(declare-fun mapIsEmpty!9517 () Bool)

(assert (=> mapIsEmpty!9517 mapRes!9517))

(declare-fun array_inv!3249 (array!10394) Bool)

(declare-fun array_inv!3250 (array!10392) Bool)

(assert (=> b!215488 (= e!140190 (and tp!20278 tp_is_empty!5583 (array_inv!3249 (_keys!6082 thiss!1504)) (array_inv!3250 (_values!4031 thiss!1504)) e!140191))))

(declare-fun b!215489 () Bool)

(assert (=> b!215489 (= e!140189 tp_is_empty!5583)))

(declare-fun b!215490 () Bool)

(assert (=> b!215490 (= e!140195 e!140192)))

(declare-fun res!105420 () Bool)

(assert (=> b!215490 (=> (not res!105420) (not e!140192))))

(declare-datatypes ((SeekEntryResult!742 0))(
  ( (MissingZero!742 (index!5138 (_ BitVec 32))) (Found!742 (index!5139 (_ BitVec 32))) (Intermediate!742 (undefined!1554 Bool) (index!5140 (_ BitVec 32)) (x!22524 (_ BitVec 32))) (Undefined!742) (MissingVacant!742 (index!5141 (_ BitVec 32))) )
))
(declare-fun lt!110998 () SeekEntryResult!742)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!215490 (= res!105420 (or (= lt!110998 (MissingZero!742 index!297)) (= lt!110998 (MissingVacant!742 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10394 (_ BitVec 32)) SeekEntryResult!742)

(assert (=> b!215490 (= lt!110998 (seekEntryOrOpen!0 key!932 (_keys!6082 thiss!1504) (mask!9750 thiss!1504)))))

(declare-fun b!215491 () Bool)

(declare-fun res!105418 () Bool)

(assert (=> b!215491 (=> (not res!105418) (not e!140195))))

(assert (=> b!215491 (= res!105418 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!215492 () Bool)

(assert (=> b!215492 (= e!140192 (and (= (size!5253 (_values!4031 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9750 thiss!1504))) (= (size!5254 (_keys!6082 thiss!1504)) (size!5253 (_values!4031 thiss!1504))) (bvslt (mask!9750 thiss!1504) #b00000000000000000000000000000000)))))

(assert (= (and start!21486 res!105419) b!215491))

(assert (= (and b!215491 res!105418) b!215490))

(assert (= (and b!215490 res!105420) b!215487))

(assert (= (and b!215487 res!105421) b!215492))

(assert (= (and b!215486 condMapEmpty!9517) mapIsEmpty!9517))

(assert (= (and b!215486 (not condMapEmpty!9517)) mapNonEmpty!9517))

(get-info :version)

(assert (= (and mapNonEmpty!9517 ((_ is ValueCellFull!2448) mapValue!9517)) b!215489))

(assert (= (and b!215486 ((_ is ValueCellFull!2448) mapDefault!9517)) b!215485))

(assert (= b!215488 b!215486))

(assert (= start!21486 b!215488))

(declare-fun m!242659 () Bool)

(assert (=> b!215490 m!242659))

(declare-fun m!242661 () Bool)

(assert (=> b!215487 m!242661))

(declare-fun m!242663 () Bool)

(assert (=> mapNonEmpty!9517 m!242663))

(declare-fun m!242665 () Bool)

(assert (=> b!215488 m!242665))

(declare-fun m!242667 () Bool)

(assert (=> b!215488 m!242667))

(declare-fun m!242669 () Bool)

(assert (=> start!21486 m!242669))

(check-sat b_and!12629 (not b!215488) (not start!21486) (not b!215490) tp_is_empty!5583 (not b!215487) (not mapNonEmpty!9517) (not b_next!5721))
(check-sat b_and!12629 (not b_next!5721))
(get-model)

(declare-fun d!58363 () Bool)

(assert (=> d!58363 (= (array_inv!3249 (_keys!6082 thiss!1504)) (bvsge (size!5254 (_keys!6082 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!215488 d!58363))

(declare-fun d!58365 () Bool)

(assert (=> d!58365 (= (array_inv!3250 (_values!4031 thiss!1504)) (bvsge (size!5253 (_values!4031 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!215488 d!58365))

(declare-fun d!58367 () Bool)

(declare-fun lt!111010 () SeekEntryResult!742)

(assert (=> d!58367 (and (or ((_ is Undefined!742) lt!111010) (not ((_ is Found!742) lt!111010)) (and (bvsge (index!5139 lt!111010) #b00000000000000000000000000000000) (bvslt (index!5139 lt!111010) (size!5254 (_keys!6082 thiss!1504))))) (or ((_ is Undefined!742) lt!111010) ((_ is Found!742) lt!111010) (not ((_ is MissingZero!742) lt!111010)) (and (bvsge (index!5138 lt!111010) #b00000000000000000000000000000000) (bvslt (index!5138 lt!111010) (size!5254 (_keys!6082 thiss!1504))))) (or ((_ is Undefined!742) lt!111010) ((_ is Found!742) lt!111010) ((_ is MissingZero!742) lt!111010) (not ((_ is MissingVacant!742) lt!111010)) (and (bvsge (index!5141 lt!111010) #b00000000000000000000000000000000) (bvslt (index!5141 lt!111010) (size!5254 (_keys!6082 thiss!1504))))) (or ((_ is Undefined!742) lt!111010) (ite ((_ is Found!742) lt!111010) (= (select (arr!4924 (_keys!6082 thiss!1504)) (index!5139 lt!111010)) key!932) (ite ((_ is MissingZero!742) lt!111010) (= (select (arr!4924 (_keys!6082 thiss!1504)) (index!5138 lt!111010)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!742) lt!111010) (= (select (arr!4924 (_keys!6082 thiss!1504)) (index!5141 lt!111010)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!140223 () SeekEntryResult!742)

(assert (=> d!58367 (= lt!111010 e!140223)))

(declare-fun c!36189 () Bool)

(declare-fun lt!111008 () SeekEntryResult!742)

(assert (=> d!58367 (= c!36189 (and ((_ is Intermediate!742) lt!111008) (undefined!1554 lt!111008)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10394 (_ BitVec 32)) SeekEntryResult!742)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58367 (= lt!111008 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9750 thiss!1504)) key!932 (_keys!6082 thiss!1504) (mask!9750 thiss!1504)))))

(assert (=> d!58367 (validMask!0 (mask!9750 thiss!1504))))

(assert (=> d!58367 (= (seekEntryOrOpen!0 key!932 (_keys!6082 thiss!1504) (mask!9750 thiss!1504)) lt!111010)))

(declare-fun b!215529 () Bool)

(declare-fun c!36188 () Bool)

(declare-fun lt!111009 () (_ BitVec 64))

(assert (=> b!215529 (= c!36188 (= lt!111009 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!140225 () SeekEntryResult!742)

(declare-fun e!140224 () SeekEntryResult!742)

(assert (=> b!215529 (= e!140225 e!140224)))

(declare-fun b!215530 () Bool)

(assert (=> b!215530 (= e!140223 Undefined!742)))

(declare-fun b!215531 () Bool)

(assert (=> b!215531 (= e!140225 (Found!742 (index!5140 lt!111008)))))

(declare-fun b!215532 () Bool)

(assert (=> b!215532 (= e!140224 (MissingZero!742 (index!5140 lt!111008)))))

(declare-fun b!215533 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10394 (_ BitVec 32)) SeekEntryResult!742)

(assert (=> b!215533 (= e!140224 (seekKeyOrZeroReturnVacant!0 (x!22524 lt!111008) (index!5140 lt!111008) (index!5140 lt!111008) key!932 (_keys!6082 thiss!1504) (mask!9750 thiss!1504)))))

(declare-fun b!215534 () Bool)

(assert (=> b!215534 (= e!140223 e!140225)))

(assert (=> b!215534 (= lt!111009 (select (arr!4924 (_keys!6082 thiss!1504)) (index!5140 lt!111008)))))

(declare-fun c!36190 () Bool)

(assert (=> b!215534 (= c!36190 (= lt!111009 key!932))))

(assert (= (and d!58367 c!36189) b!215530))

(assert (= (and d!58367 (not c!36189)) b!215534))

(assert (= (and b!215534 c!36190) b!215531))

(assert (= (and b!215534 (not c!36190)) b!215529))

(assert (= (and b!215529 c!36188) b!215532))

(assert (= (and b!215529 (not c!36188)) b!215533))

(declare-fun m!242683 () Bool)

(assert (=> d!58367 m!242683))

(assert (=> d!58367 m!242683))

(declare-fun m!242685 () Bool)

(assert (=> d!58367 m!242685))

(declare-fun m!242687 () Bool)

(assert (=> d!58367 m!242687))

(assert (=> d!58367 m!242661))

(declare-fun m!242689 () Bool)

(assert (=> d!58367 m!242689))

(declare-fun m!242691 () Bool)

(assert (=> d!58367 m!242691))

(declare-fun m!242693 () Bool)

(assert (=> b!215533 m!242693))

(declare-fun m!242695 () Bool)

(assert (=> b!215534 m!242695))

(assert (=> b!215490 d!58367))

(declare-fun d!58369 () Bool)

(declare-fun res!105440 () Bool)

(declare-fun e!140228 () Bool)

(assert (=> d!58369 (=> (not res!105440) (not e!140228))))

(declare-fun simpleValid!217 (LongMapFixedSize!2796) Bool)

(assert (=> d!58369 (= res!105440 (simpleValid!217 thiss!1504))))

(assert (=> d!58369 (= (valid!1131 thiss!1504) e!140228)))

(declare-fun b!215541 () Bool)

(declare-fun res!105441 () Bool)

(assert (=> b!215541 (=> (not res!105441) (not e!140228))))

(declare-fun arrayCountValidKeys!0 (array!10394 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!215541 (= res!105441 (= (arrayCountValidKeys!0 (_keys!6082 thiss!1504) #b00000000000000000000000000000000 (size!5254 (_keys!6082 thiss!1504))) (_size!1447 thiss!1504)))))

(declare-fun b!215542 () Bool)

(declare-fun res!105442 () Bool)

(assert (=> b!215542 (=> (not res!105442) (not e!140228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10394 (_ BitVec 32)) Bool)

(assert (=> b!215542 (= res!105442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6082 thiss!1504) (mask!9750 thiss!1504)))))

(declare-fun b!215543 () Bool)

(declare-datatypes ((List!3157 0))(
  ( (Nil!3154) (Cons!3153 (h!3798 (_ BitVec 64)) (t!8120 List!3157)) )
))
(declare-fun arrayNoDuplicates!0 (array!10394 (_ BitVec 32) List!3157) Bool)

(assert (=> b!215543 (= e!140228 (arrayNoDuplicates!0 (_keys!6082 thiss!1504) #b00000000000000000000000000000000 Nil!3154))))

(assert (= (and d!58369 res!105440) b!215541))

(assert (= (and b!215541 res!105441) b!215542))

(assert (= (and b!215542 res!105442) b!215543))

(declare-fun m!242697 () Bool)

(assert (=> d!58369 m!242697))

(declare-fun m!242699 () Bool)

(assert (=> b!215541 m!242699))

(declare-fun m!242701 () Bool)

(assert (=> b!215542 m!242701))

(declare-fun m!242703 () Bool)

(assert (=> b!215543 m!242703))

(assert (=> start!21486 d!58369))

(declare-fun d!58371 () Bool)

(assert (=> d!58371 (= (validMask!0 (mask!9750 thiss!1504)) (and (or (= (mask!9750 thiss!1504) #b00000000000000000000000000000111) (= (mask!9750 thiss!1504) #b00000000000000000000000000001111) (= (mask!9750 thiss!1504) #b00000000000000000000000000011111) (= (mask!9750 thiss!1504) #b00000000000000000000000000111111) (= (mask!9750 thiss!1504) #b00000000000000000000000001111111) (= (mask!9750 thiss!1504) #b00000000000000000000000011111111) (= (mask!9750 thiss!1504) #b00000000000000000000000111111111) (= (mask!9750 thiss!1504) #b00000000000000000000001111111111) (= (mask!9750 thiss!1504) #b00000000000000000000011111111111) (= (mask!9750 thiss!1504) #b00000000000000000000111111111111) (= (mask!9750 thiss!1504) #b00000000000000000001111111111111) (= (mask!9750 thiss!1504) #b00000000000000000011111111111111) (= (mask!9750 thiss!1504) #b00000000000000000111111111111111) (= (mask!9750 thiss!1504) #b00000000000000001111111111111111) (= (mask!9750 thiss!1504) #b00000000000000011111111111111111) (= (mask!9750 thiss!1504) #b00000000000000111111111111111111) (= (mask!9750 thiss!1504) #b00000000000001111111111111111111) (= (mask!9750 thiss!1504) #b00000000000011111111111111111111) (= (mask!9750 thiss!1504) #b00000000000111111111111111111111) (= (mask!9750 thiss!1504) #b00000000001111111111111111111111) (= (mask!9750 thiss!1504) #b00000000011111111111111111111111) (= (mask!9750 thiss!1504) #b00000000111111111111111111111111) (= (mask!9750 thiss!1504) #b00000001111111111111111111111111) (= (mask!9750 thiss!1504) #b00000011111111111111111111111111) (= (mask!9750 thiss!1504) #b00000111111111111111111111111111) (= (mask!9750 thiss!1504) #b00001111111111111111111111111111) (= (mask!9750 thiss!1504) #b00011111111111111111111111111111) (= (mask!9750 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!9750 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!215487 d!58371))

(declare-fun mapNonEmpty!9523 () Bool)

(declare-fun mapRes!9523 () Bool)

(declare-fun tp!20287 () Bool)

(declare-fun e!140233 () Bool)

(assert (=> mapNonEmpty!9523 (= mapRes!9523 (and tp!20287 e!140233))))

(declare-fun mapRest!9523 () (Array (_ BitVec 32) ValueCell!2448))

(declare-fun mapKey!9523 () (_ BitVec 32))

(declare-fun mapValue!9523 () ValueCell!2448)

(assert (=> mapNonEmpty!9523 (= mapRest!9517 (store mapRest!9523 mapKey!9523 mapValue!9523))))

(declare-fun b!215551 () Bool)

(declare-fun e!140234 () Bool)

(assert (=> b!215551 (= e!140234 tp_is_empty!5583)))

(declare-fun mapIsEmpty!9523 () Bool)

(assert (=> mapIsEmpty!9523 mapRes!9523))

(declare-fun b!215550 () Bool)

(assert (=> b!215550 (= e!140233 tp_is_empty!5583)))

(declare-fun condMapEmpty!9523 () Bool)

(declare-fun mapDefault!9523 () ValueCell!2448)

(assert (=> mapNonEmpty!9517 (= condMapEmpty!9523 (= mapRest!9517 ((as const (Array (_ BitVec 32) ValueCell!2448)) mapDefault!9523)))))

(assert (=> mapNonEmpty!9517 (= tp!20277 (and e!140234 mapRes!9523))))

(assert (= (and mapNonEmpty!9517 condMapEmpty!9523) mapIsEmpty!9523))

(assert (= (and mapNonEmpty!9517 (not condMapEmpty!9523)) mapNonEmpty!9523))

(assert (= (and mapNonEmpty!9523 ((_ is ValueCellFull!2448) mapValue!9523)) b!215550))

(assert (= (and mapNonEmpty!9517 ((_ is ValueCellFull!2448) mapDefault!9523)) b!215551))

(declare-fun m!242705 () Bool)

(assert (=> mapNonEmpty!9523 m!242705))

(check-sat b_and!12629 (not d!58369) (not b_next!5721) (not b!215533) (not b!215541) (not b!215542) (not d!58367) tp_is_empty!5583 (not mapNonEmpty!9523) (not b!215543))
(check-sat b_and!12629 (not b_next!5721))
