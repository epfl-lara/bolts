; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18028 () Bool)

(assert start!18028)

(declare-fun b!179356 () Bool)

(declare-fun b_free!4425 () Bool)

(declare-fun b_next!4425 () Bool)

(assert (=> b!179356 (= b_free!4425 (not b_next!4425))))

(declare-fun tp!16000 () Bool)

(declare-fun b_and!10973 () Bool)

(assert (=> b!179356 (= tp!16000 b_and!10973)))

(declare-fun b!179353 () Bool)

(declare-fun res!84965 () Bool)

(declare-fun e!118169 () Bool)

(assert (=> b!179353 (=> (not res!84965) (not e!118169))))

(declare-datatypes ((V!5243 0))(
  ( (V!5244 (val!2143 Int)) )
))
(declare-datatypes ((ValueCell!1755 0))(
  ( (ValueCellFull!1755 (v!4026 V!5243)) (EmptyCell!1755) )
))
(declare-datatypes ((array!7558 0))(
  ( (array!7559 (arr!3580 (Array (_ BitVec 32) (_ BitVec 64))) (size!3888 (_ BitVec 32))) )
))
(declare-datatypes ((array!7560 0))(
  ( (array!7561 (arr!3581 (Array (_ BitVec 32) ValueCell!1755)) (size!3889 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2418 0))(
  ( (LongMapFixedSize!2419 (defaultEntry!3683 Int) (mask!8664 (_ BitVec 32)) (extraKeys!3420 (_ BitVec 32)) (zeroValue!3524 V!5243) (minValue!3524 V!5243) (_size!1258 (_ BitVec 32)) (_keys!5570 array!7558) (_values!3666 array!7560) (_vacant!1258 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2418)

(assert (=> b!179353 (= res!84965 (and (= (size!3889 (_values!3666 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8664 thiss!1248))) (= (size!3888 (_keys!5570 thiss!1248)) (size!3889 (_values!3666 thiss!1248))) (bvsge (mask!8664 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3420 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3420 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!179354 () Bool)

(declare-fun res!84963 () Bool)

(assert (=> b!179354 (=> (not res!84963) (not e!118169))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3328 0))(
  ( (tuple2!3329 (_1!1674 (_ BitVec 64)) (_2!1674 V!5243)) )
))
(declare-datatypes ((List!2295 0))(
  ( (Nil!2292) (Cons!2291 (h!2916 tuple2!3328) (t!7147 List!2295)) )
))
(declare-datatypes ((ListLongMap!2269 0))(
  ( (ListLongMap!2270 (toList!1150 List!2295)) )
))
(declare-fun contains!1218 (ListLongMap!2269 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!797 (array!7558 array!7560 (_ BitVec 32) (_ BitVec 32) V!5243 V!5243 (_ BitVec 32) Int) ListLongMap!2269)

(assert (=> b!179354 (= res!84963 (not (contains!1218 (getCurrentListMap!797 (_keys!5570 thiss!1248) (_values!3666 thiss!1248) (mask!8664 thiss!1248) (extraKeys!3420 thiss!1248) (zeroValue!3524 thiss!1248) (minValue!3524 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3683 thiss!1248)) key!828)))))

(declare-fun b!179355 () Bool)

(declare-fun e!118173 () Bool)

(declare-fun tp_is_empty!4197 () Bool)

(assert (=> b!179355 (= e!118173 tp_is_empty!4197)))

(declare-fun e!118170 () Bool)

(declare-fun e!118171 () Bool)

(declare-fun array_inv!2297 (array!7558) Bool)

(declare-fun array_inv!2298 (array!7560) Bool)

(assert (=> b!179356 (= e!118170 (and tp!16000 tp_is_empty!4197 (array_inv!2297 (_keys!5570 thiss!1248)) (array_inv!2298 (_values!3666 thiss!1248)) e!118171))))

(declare-fun mapNonEmpty!7183 () Bool)

(declare-fun mapRes!7183 () Bool)

(declare-fun tp!15999 () Bool)

(assert (=> mapNonEmpty!7183 (= mapRes!7183 (and tp!15999 e!118173))))

(declare-fun mapRest!7183 () (Array (_ BitVec 32) ValueCell!1755))

(declare-fun mapValue!7183 () ValueCell!1755)

(declare-fun mapKey!7183 () (_ BitVec 32))

(assert (=> mapNonEmpty!7183 (= (arr!3581 (_values!3666 thiss!1248)) (store mapRest!7183 mapKey!7183 mapValue!7183))))

(declare-fun b!179357 () Bool)

(declare-fun res!84962 () Bool)

(assert (=> b!179357 (=> (not res!84962) (not e!118169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!179357 (= res!84962 (validMask!0 (mask!8664 thiss!1248)))))

(declare-fun b!179358 () Bool)

(declare-fun res!84961 () Bool)

(assert (=> b!179358 (=> (not res!84961) (not e!118169))))

(assert (=> b!179358 (= res!84961 (not (= key!828 (bvneg key!828))))))

(declare-fun b!179359 () Bool)

(declare-fun res!84964 () Bool)

(assert (=> b!179359 (=> (not res!84964) (not e!118169))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!592 0))(
  ( (MissingZero!592 (index!4536 (_ BitVec 32))) (Found!592 (index!4537 (_ BitVec 32))) (Intermediate!592 (undefined!1404 Bool) (index!4538 (_ BitVec 32)) (x!19630 (_ BitVec 32))) (Undefined!592) (MissingVacant!592 (index!4539 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7558 (_ BitVec 32)) SeekEntryResult!592)

(assert (=> b!179359 (= res!84964 ((_ is Undefined!592) (seekEntryOrOpen!0 key!828 (_keys!5570 thiss!1248) (mask!8664 thiss!1248))))))

(declare-fun mapIsEmpty!7183 () Bool)

(assert (=> mapIsEmpty!7183 mapRes!7183))

(declare-fun res!84966 () Bool)

(assert (=> start!18028 (=> (not res!84966) (not e!118169))))

(declare-fun valid!1003 (LongMapFixedSize!2418) Bool)

(assert (=> start!18028 (= res!84966 (valid!1003 thiss!1248))))

(assert (=> start!18028 e!118169))

(assert (=> start!18028 e!118170))

(assert (=> start!18028 true))

(declare-fun b!179360 () Bool)

(declare-datatypes ((List!2296 0))(
  ( (Nil!2293) (Cons!2292 (h!2917 (_ BitVec 64)) (t!7148 List!2296)) )
))
(declare-fun arrayNoDuplicates!0 (array!7558 (_ BitVec 32) List!2296) Bool)

(assert (=> b!179360 (= e!118169 (not (arrayNoDuplicates!0 (_keys!5570 thiss!1248) #b00000000000000000000000000000000 Nil!2293)))))

(declare-fun b!179361 () Bool)

(declare-fun e!118168 () Bool)

(assert (=> b!179361 (= e!118168 tp_is_empty!4197)))

(declare-fun b!179362 () Bool)

(assert (=> b!179362 (= e!118171 (and e!118168 mapRes!7183))))

(declare-fun condMapEmpty!7183 () Bool)

(declare-fun mapDefault!7183 () ValueCell!1755)

(assert (=> b!179362 (= condMapEmpty!7183 (= (arr!3581 (_values!3666 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1755)) mapDefault!7183)))))

(declare-fun b!179363 () Bool)

(declare-fun res!84967 () Bool)

(assert (=> b!179363 (=> (not res!84967) (not e!118169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7558 (_ BitVec 32)) Bool)

(assert (=> b!179363 (= res!84967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5570 thiss!1248) (mask!8664 thiss!1248)))))

(assert (= (and start!18028 res!84966) b!179358))

(assert (= (and b!179358 res!84961) b!179359))

(assert (= (and b!179359 res!84964) b!179354))

(assert (= (and b!179354 res!84963) b!179357))

(assert (= (and b!179357 res!84962) b!179353))

(assert (= (and b!179353 res!84965) b!179363))

(assert (= (and b!179363 res!84967) b!179360))

(assert (= (and b!179362 condMapEmpty!7183) mapIsEmpty!7183))

(assert (= (and b!179362 (not condMapEmpty!7183)) mapNonEmpty!7183))

(assert (= (and mapNonEmpty!7183 ((_ is ValueCellFull!1755) mapValue!7183)) b!179355))

(assert (= (and b!179362 ((_ is ValueCellFull!1755) mapDefault!7183)) b!179361))

(assert (= b!179356 b!179362))

(assert (= start!18028 b!179356))

(declare-fun m!207641 () Bool)

(assert (=> b!179363 m!207641))

(declare-fun m!207643 () Bool)

(assert (=> b!179354 m!207643))

(assert (=> b!179354 m!207643))

(declare-fun m!207645 () Bool)

(assert (=> b!179354 m!207645))

(declare-fun m!207647 () Bool)

(assert (=> mapNonEmpty!7183 m!207647))

(declare-fun m!207649 () Bool)

(assert (=> b!179356 m!207649))

(declare-fun m!207651 () Bool)

(assert (=> b!179356 m!207651))

(declare-fun m!207653 () Bool)

(assert (=> b!179360 m!207653))

(declare-fun m!207655 () Bool)

(assert (=> b!179359 m!207655))

(declare-fun m!207657 () Bool)

(assert (=> start!18028 m!207657))

(declare-fun m!207659 () Bool)

(assert (=> b!179357 m!207659))

(check-sat (not b!179359) tp_is_empty!4197 (not b!179356) (not start!18028) (not b!179360) (not b!179357) b_and!10973 (not b!179354) (not b!179363) (not b_next!4425) (not mapNonEmpty!7183))
(check-sat b_and!10973 (not b_next!4425))
(get-model)

(declare-fun d!54059 () Bool)

(declare-fun res!84995 () Bool)

(declare-fun e!118194 () Bool)

(assert (=> d!54059 (=> (not res!84995) (not e!118194))))

(declare-fun simpleValid!160 (LongMapFixedSize!2418) Bool)

(assert (=> d!54059 (= res!84995 (simpleValid!160 thiss!1248))))

(assert (=> d!54059 (= (valid!1003 thiss!1248) e!118194)))

(declare-fun b!179403 () Bool)

(declare-fun res!84996 () Bool)

(assert (=> b!179403 (=> (not res!84996) (not e!118194))))

(declare-fun arrayCountValidKeys!0 (array!7558 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!179403 (= res!84996 (= (arrayCountValidKeys!0 (_keys!5570 thiss!1248) #b00000000000000000000000000000000 (size!3888 (_keys!5570 thiss!1248))) (_size!1258 thiss!1248)))))

(declare-fun b!179404 () Bool)

(declare-fun res!84997 () Bool)

(assert (=> b!179404 (=> (not res!84997) (not e!118194))))

(assert (=> b!179404 (= res!84997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5570 thiss!1248) (mask!8664 thiss!1248)))))

(declare-fun b!179405 () Bool)

(assert (=> b!179405 (= e!118194 (arrayNoDuplicates!0 (_keys!5570 thiss!1248) #b00000000000000000000000000000000 Nil!2293))))

(assert (= (and d!54059 res!84995) b!179403))

(assert (= (and b!179403 res!84996) b!179404))

(assert (= (and b!179404 res!84997) b!179405))

(declare-fun m!207681 () Bool)

(assert (=> d!54059 m!207681))

(declare-fun m!207683 () Bool)

(assert (=> b!179403 m!207683))

(assert (=> b!179404 m!207641))

(assert (=> b!179405 m!207653))

(assert (=> start!18028 d!54059))

(declare-fun bm!18119 () Bool)

(declare-fun call!18122 () Bool)

(declare-fun c!32149 () Bool)

(assert (=> bm!18119 (= call!18122 (arrayNoDuplicates!0 (_keys!5570 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!32149 (Cons!2292 (select (arr!3580 (_keys!5570 thiss!1248)) #b00000000000000000000000000000000) Nil!2293) Nil!2293)))))

(declare-fun b!179416 () Bool)

(declare-fun e!118206 () Bool)

(declare-fun contains!1220 (List!2296 (_ BitVec 64)) Bool)

(assert (=> b!179416 (= e!118206 (contains!1220 Nil!2293 (select (arr!3580 (_keys!5570 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!179417 () Bool)

(declare-fun e!118205 () Bool)

(assert (=> b!179417 (= e!118205 call!18122)))

(declare-fun b!179418 () Bool)

(declare-fun e!118203 () Bool)

(assert (=> b!179418 (= e!118203 e!118205)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!179418 (= c!32149 (validKeyInArray!0 (select (arr!3580 (_keys!5570 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!54061 () Bool)

(declare-fun res!85005 () Bool)

(declare-fun e!118204 () Bool)

(assert (=> d!54061 (=> res!85005 e!118204)))

(assert (=> d!54061 (= res!85005 (bvsge #b00000000000000000000000000000000 (size!3888 (_keys!5570 thiss!1248))))))

(assert (=> d!54061 (= (arrayNoDuplicates!0 (_keys!5570 thiss!1248) #b00000000000000000000000000000000 Nil!2293) e!118204)))

(declare-fun b!179419 () Bool)

(assert (=> b!179419 (= e!118204 e!118203)))

(declare-fun res!85004 () Bool)

(assert (=> b!179419 (=> (not res!85004) (not e!118203))))

(assert (=> b!179419 (= res!85004 (not e!118206))))

(declare-fun res!85006 () Bool)

(assert (=> b!179419 (=> (not res!85006) (not e!118206))))

(assert (=> b!179419 (= res!85006 (validKeyInArray!0 (select (arr!3580 (_keys!5570 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!179420 () Bool)

(assert (=> b!179420 (= e!118205 call!18122)))

(assert (= (and d!54061 (not res!85005)) b!179419))

(assert (= (and b!179419 res!85006) b!179416))

(assert (= (and b!179419 res!85004) b!179418))

(assert (= (and b!179418 c!32149) b!179417))

(assert (= (and b!179418 (not c!32149)) b!179420))

(assert (= (or b!179417 b!179420) bm!18119))

(declare-fun m!207685 () Bool)

(assert (=> bm!18119 m!207685))

(declare-fun m!207687 () Bool)

(assert (=> bm!18119 m!207687))

(assert (=> b!179416 m!207685))

(assert (=> b!179416 m!207685))

(declare-fun m!207689 () Bool)

(assert (=> b!179416 m!207689))

(assert (=> b!179418 m!207685))

(assert (=> b!179418 m!207685))

(declare-fun m!207691 () Bool)

(assert (=> b!179418 m!207691))

(assert (=> b!179419 m!207685))

(assert (=> b!179419 m!207685))

(assert (=> b!179419 m!207691))

(assert (=> b!179360 d!54061))

(declare-fun d!54063 () Bool)

(assert (=> d!54063 (= (array_inv!2297 (_keys!5570 thiss!1248)) (bvsge (size!3888 (_keys!5570 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!179356 d!54063))

(declare-fun d!54065 () Bool)

(assert (=> d!54065 (= (array_inv!2298 (_values!3666 thiss!1248)) (bvsge (size!3889 (_values!3666 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!179356 d!54065))

(declare-fun b!179433 () Bool)

(declare-fun e!118213 () SeekEntryResult!592)

(assert (=> b!179433 (= e!118213 Undefined!592)))

(declare-fun b!179434 () Bool)

(declare-fun c!32156 () Bool)

(declare-fun lt!88672 () (_ BitVec 64))

(assert (=> b!179434 (= c!32156 (= lt!88672 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!118214 () SeekEntryResult!592)

(declare-fun e!118215 () SeekEntryResult!592)

(assert (=> b!179434 (= e!118214 e!118215)))

(declare-fun b!179435 () Bool)

(assert (=> b!179435 (= e!118213 e!118214)))

(declare-fun lt!88673 () SeekEntryResult!592)

(assert (=> b!179435 (= lt!88672 (select (arr!3580 (_keys!5570 thiss!1248)) (index!4538 lt!88673)))))

(declare-fun c!32157 () Bool)

(assert (=> b!179435 (= c!32157 (= lt!88672 key!828))))

(declare-fun b!179436 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7558 (_ BitVec 32)) SeekEntryResult!592)

(assert (=> b!179436 (= e!118215 (seekKeyOrZeroReturnVacant!0 (x!19630 lt!88673) (index!4538 lt!88673) (index!4538 lt!88673) key!828 (_keys!5570 thiss!1248) (mask!8664 thiss!1248)))))

(declare-fun b!179437 () Bool)

(assert (=> b!179437 (= e!118214 (Found!592 (index!4538 lt!88673)))))

(declare-fun d!54067 () Bool)

(declare-fun lt!88674 () SeekEntryResult!592)

(assert (=> d!54067 (and (or ((_ is Undefined!592) lt!88674) (not ((_ is Found!592) lt!88674)) (and (bvsge (index!4537 lt!88674) #b00000000000000000000000000000000) (bvslt (index!4537 lt!88674) (size!3888 (_keys!5570 thiss!1248))))) (or ((_ is Undefined!592) lt!88674) ((_ is Found!592) lt!88674) (not ((_ is MissingZero!592) lt!88674)) (and (bvsge (index!4536 lt!88674) #b00000000000000000000000000000000) (bvslt (index!4536 lt!88674) (size!3888 (_keys!5570 thiss!1248))))) (or ((_ is Undefined!592) lt!88674) ((_ is Found!592) lt!88674) ((_ is MissingZero!592) lt!88674) (not ((_ is MissingVacant!592) lt!88674)) (and (bvsge (index!4539 lt!88674) #b00000000000000000000000000000000) (bvslt (index!4539 lt!88674) (size!3888 (_keys!5570 thiss!1248))))) (or ((_ is Undefined!592) lt!88674) (ite ((_ is Found!592) lt!88674) (= (select (arr!3580 (_keys!5570 thiss!1248)) (index!4537 lt!88674)) key!828) (ite ((_ is MissingZero!592) lt!88674) (= (select (arr!3580 (_keys!5570 thiss!1248)) (index!4536 lt!88674)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!592) lt!88674) (= (select (arr!3580 (_keys!5570 thiss!1248)) (index!4539 lt!88674)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!54067 (= lt!88674 e!118213)))

(declare-fun c!32158 () Bool)

(assert (=> d!54067 (= c!32158 (and ((_ is Intermediate!592) lt!88673) (undefined!1404 lt!88673)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7558 (_ BitVec 32)) SeekEntryResult!592)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54067 (= lt!88673 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8664 thiss!1248)) key!828 (_keys!5570 thiss!1248) (mask!8664 thiss!1248)))))

(assert (=> d!54067 (validMask!0 (mask!8664 thiss!1248))))

(assert (=> d!54067 (= (seekEntryOrOpen!0 key!828 (_keys!5570 thiss!1248) (mask!8664 thiss!1248)) lt!88674)))

(declare-fun b!179438 () Bool)

(assert (=> b!179438 (= e!118215 (MissingZero!592 (index!4538 lt!88673)))))

(assert (= (and d!54067 c!32158) b!179433))

(assert (= (and d!54067 (not c!32158)) b!179435))

(assert (= (and b!179435 c!32157) b!179437))

(assert (= (and b!179435 (not c!32157)) b!179434))

(assert (= (and b!179434 c!32156) b!179438))

(assert (= (and b!179434 (not c!32156)) b!179436))

(declare-fun m!207693 () Bool)

(assert (=> b!179435 m!207693))

(declare-fun m!207695 () Bool)

(assert (=> b!179436 m!207695))

(declare-fun m!207697 () Bool)

(assert (=> d!54067 m!207697))

(declare-fun m!207699 () Bool)

(assert (=> d!54067 m!207699))

(declare-fun m!207701 () Bool)

(assert (=> d!54067 m!207701))

(declare-fun m!207703 () Bool)

(assert (=> d!54067 m!207703))

(assert (=> d!54067 m!207697))

(assert (=> d!54067 m!207659))

(declare-fun m!207705 () Bool)

(assert (=> d!54067 m!207705))

(assert (=> b!179359 d!54067))

(declare-fun b!179447 () Bool)

(declare-fun e!118224 () Bool)

(declare-fun call!18125 () Bool)

(assert (=> b!179447 (= e!118224 call!18125)))

(declare-fun d!54069 () Bool)

(declare-fun res!85012 () Bool)

(declare-fun e!118222 () Bool)

(assert (=> d!54069 (=> res!85012 e!118222)))

(assert (=> d!54069 (= res!85012 (bvsge #b00000000000000000000000000000000 (size!3888 (_keys!5570 thiss!1248))))))

(assert (=> d!54069 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5570 thiss!1248) (mask!8664 thiss!1248)) e!118222)))

(declare-fun bm!18122 () Bool)

(assert (=> bm!18122 (= call!18125 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5570 thiss!1248) (mask!8664 thiss!1248)))))

(declare-fun b!179448 () Bool)

(assert (=> b!179448 (= e!118222 e!118224)))

(declare-fun c!32161 () Bool)

(assert (=> b!179448 (= c!32161 (validKeyInArray!0 (select (arr!3580 (_keys!5570 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!179449 () Bool)

(declare-fun e!118223 () Bool)

(assert (=> b!179449 (= e!118223 call!18125)))

(declare-fun b!179450 () Bool)

(assert (=> b!179450 (= e!118224 e!118223)))

(declare-fun lt!88682 () (_ BitVec 64))

(assert (=> b!179450 (= lt!88682 (select (arr!3580 (_keys!5570 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5461 0))(
  ( (Unit!5462) )
))
(declare-fun lt!88683 () Unit!5461)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7558 (_ BitVec 64) (_ BitVec 32)) Unit!5461)

(assert (=> b!179450 (= lt!88683 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5570 thiss!1248) lt!88682 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7558 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!179450 (arrayContainsKey!0 (_keys!5570 thiss!1248) lt!88682 #b00000000000000000000000000000000)))

(declare-fun lt!88681 () Unit!5461)

(assert (=> b!179450 (= lt!88681 lt!88683)))

(declare-fun res!85011 () Bool)

(assert (=> b!179450 (= res!85011 (= (seekEntryOrOpen!0 (select (arr!3580 (_keys!5570 thiss!1248)) #b00000000000000000000000000000000) (_keys!5570 thiss!1248) (mask!8664 thiss!1248)) (Found!592 #b00000000000000000000000000000000)))))

(assert (=> b!179450 (=> (not res!85011) (not e!118223))))

(assert (= (and d!54069 (not res!85012)) b!179448))

(assert (= (and b!179448 c!32161) b!179450))

(assert (= (and b!179448 (not c!32161)) b!179447))

(assert (= (and b!179450 res!85011) b!179449))

(assert (= (or b!179449 b!179447) bm!18122))

(declare-fun m!207707 () Bool)

(assert (=> bm!18122 m!207707))

(assert (=> b!179448 m!207685))

(assert (=> b!179448 m!207685))

(assert (=> b!179448 m!207691))

(assert (=> b!179450 m!207685))

(declare-fun m!207709 () Bool)

(assert (=> b!179450 m!207709))

(declare-fun m!207711 () Bool)

(assert (=> b!179450 m!207711))

(assert (=> b!179450 m!207685))

(declare-fun m!207713 () Bool)

(assert (=> b!179450 m!207713))

(assert (=> b!179363 d!54069))

(declare-fun d!54071 () Bool)

(declare-fun e!118229 () Bool)

(assert (=> d!54071 e!118229))

(declare-fun res!85015 () Bool)

(assert (=> d!54071 (=> res!85015 e!118229)))

(declare-fun lt!88694 () Bool)

(assert (=> d!54071 (= res!85015 (not lt!88694))))

(declare-fun lt!88695 () Bool)

(assert (=> d!54071 (= lt!88694 lt!88695)))

(declare-fun lt!88693 () Unit!5461)

(declare-fun e!118230 () Unit!5461)

(assert (=> d!54071 (= lt!88693 e!118230)))

(declare-fun c!32164 () Bool)

(assert (=> d!54071 (= c!32164 lt!88695)))

(declare-fun containsKey!205 (List!2295 (_ BitVec 64)) Bool)

(assert (=> d!54071 (= lt!88695 (containsKey!205 (toList!1150 (getCurrentListMap!797 (_keys!5570 thiss!1248) (_values!3666 thiss!1248) (mask!8664 thiss!1248) (extraKeys!3420 thiss!1248) (zeroValue!3524 thiss!1248) (minValue!3524 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3683 thiss!1248))) key!828))))

(assert (=> d!54071 (= (contains!1218 (getCurrentListMap!797 (_keys!5570 thiss!1248) (_values!3666 thiss!1248) (mask!8664 thiss!1248) (extraKeys!3420 thiss!1248) (zeroValue!3524 thiss!1248) (minValue!3524 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3683 thiss!1248)) key!828) lt!88694)))

(declare-fun b!179457 () Bool)

(declare-fun lt!88692 () Unit!5461)

(assert (=> b!179457 (= e!118230 lt!88692)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!154 (List!2295 (_ BitVec 64)) Unit!5461)

(assert (=> b!179457 (= lt!88692 (lemmaContainsKeyImpliesGetValueByKeyDefined!154 (toList!1150 (getCurrentListMap!797 (_keys!5570 thiss!1248) (_values!3666 thiss!1248) (mask!8664 thiss!1248) (extraKeys!3420 thiss!1248) (zeroValue!3524 thiss!1248) (minValue!3524 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3683 thiss!1248))) key!828))))

(declare-datatypes ((Option!207 0))(
  ( (Some!206 (v!4028 V!5243)) (None!205) )
))
(declare-fun isDefined!155 (Option!207) Bool)

(declare-fun getValueByKey!201 (List!2295 (_ BitVec 64)) Option!207)

(assert (=> b!179457 (isDefined!155 (getValueByKey!201 (toList!1150 (getCurrentListMap!797 (_keys!5570 thiss!1248) (_values!3666 thiss!1248) (mask!8664 thiss!1248) (extraKeys!3420 thiss!1248) (zeroValue!3524 thiss!1248) (minValue!3524 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3683 thiss!1248))) key!828))))

(declare-fun b!179458 () Bool)

(declare-fun Unit!5463 () Unit!5461)

(assert (=> b!179458 (= e!118230 Unit!5463)))

(declare-fun b!179459 () Bool)

(assert (=> b!179459 (= e!118229 (isDefined!155 (getValueByKey!201 (toList!1150 (getCurrentListMap!797 (_keys!5570 thiss!1248) (_values!3666 thiss!1248) (mask!8664 thiss!1248) (extraKeys!3420 thiss!1248) (zeroValue!3524 thiss!1248) (minValue!3524 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3683 thiss!1248))) key!828)))))

(assert (= (and d!54071 c!32164) b!179457))

(assert (= (and d!54071 (not c!32164)) b!179458))

(assert (= (and d!54071 (not res!85015)) b!179459))

(declare-fun m!207715 () Bool)

(assert (=> d!54071 m!207715))

(declare-fun m!207717 () Bool)

(assert (=> b!179457 m!207717))

(declare-fun m!207719 () Bool)

(assert (=> b!179457 m!207719))

(assert (=> b!179457 m!207719))

(declare-fun m!207721 () Bool)

(assert (=> b!179457 m!207721))

(assert (=> b!179459 m!207719))

(assert (=> b!179459 m!207719))

(assert (=> b!179459 m!207721))

(assert (=> b!179354 d!54071))

(declare-fun b!179502 () Bool)

(declare-fun e!118265 () ListLongMap!2269)

(declare-fun call!18141 () ListLongMap!2269)

(assert (=> b!179502 (= e!118265 call!18141)))

(declare-fun b!179503 () Bool)

(declare-fun e!118261 () Bool)

(declare-fun lt!88756 () ListLongMap!2269)

(declare-fun apply!147 (ListLongMap!2269 (_ BitVec 64)) V!5243)

(assert (=> b!179503 (= e!118261 (= (apply!147 lt!88756 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3524 thiss!1248)))))

(declare-fun b!179504 () Bool)

(declare-fun e!118259 () Bool)

(assert (=> b!179504 (= e!118259 (= (apply!147 lt!88756 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3524 thiss!1248)))))

(declare-fun b!179505 () Bool)

(declare-fun e!118260 () Unit!5461)

(declare-fun Unit!5464 () Unit!5461)

(assert (=> b!179505 (= e!118260 Unit!5464)))

(declare-fun b!179506 () Bool)

(declare-fun res!85042 () Bool)

(declare-fun e!118262 () Bool)

(assert (=> b!179506 (=> (not res!85042) (not e!118262))))

(declare-fun e!118267 () Bool)

(assert (=> b!179506 (= res!85042 e!118267)))

(declare-fun res!85038 () Bool)

(assert (=> b!179506 (=> res!85038 e!118267)))

(declare-fun e!118263 () Bool)

(assert (=> b!179506 (= res!85038 (not e!118263))))

(declare-fun res!85035 () Bool)

(assert (=> b!179506 (=> (not res!85035) (not e!118263))))

(assert (=> b!179506 (= res!85035 (bvslt #b00000000000000000000000000000000 (size!3888 (_keys!5570 thiss!1248))))))

(declare-fun d!54073 () Bool)

(assert (=> d!54073 e!118262))

(declare-fun res!85041 () Bool)

(assert (=> d!54073 (=> (not res!85041) (not e!118262))))

(assert (=> d!54073 (= res!85041 (or (bvsge #b00000000000000000000000000000000 (size!3888 (_keys!5570 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3888 (_keys!5570 thiss!1248))))))))

(declare-fun lt!88752 () ListLongMap!2269)

(assert (=> d!54073 (= lt!88756 lt!88752)))

(declare-fun lt!88759 () Unit!5461)

(assert (=> d!54073 (= lt!88759 e!118260)))

(declare-fun c!32178 () Bool)

(declare-fun e!118268 () Bool)

(assert (=> d!54073 (= c!32178 e!118268)))

(declare-fun res!85039 () Bool)

(assert (=> d!54073 (=> (not res!85039) (not e!118268))))

(assert (=> d!54073 (= res!85039 (bvslt #b00000000000000000000000000000000 (size!3888 (_keys!5570 thiss!1248))))))

(declare-fun e!118264 () ListLongMap!2269)

(assert (=> d!54073 (= lt!88752 e!118264)))

(declare-fun c!32182 () Bool)

(assert (=> d!54073 (= c!32182 (and (not (= (bvand (extraKeys!3420 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3420 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!54073 (validMask!0 (mask!8664 thiss!1248))))

(assert (=> d!54073 (= (getCurrentListMap!797 (_keys!5570 thiss!1248) (_values!3666 thiss!1248) (mask!8664 thiss!1248) (extraKeys!3420 thiss!1248) (zeroValue!3524 thiss!1248) (minValue!3524 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3683 thiss!1248)) lt!88756)))

(declare-fun b!179507 () Bool)

(declare-fun e!118258 () Bool)

(declare-fun call!18140 () Bool)

(assert (=> b!179507 (= e!118258 (not call!18140))))

(declare-fun b!179508 () Bool)

(declare-fun call!18145 () ListLongMap!2269)

(declare-fun +!259 (ListLongMap!2269 tuple2!3328) ListLongMap!2269)

(assert (=> b!179508 (= e!118264 (+!259 call!18145 (tuple2!3329 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3524 thiss!1248))))))

(declare-fun b!179509 () Bool)

(assert (=> b!179509 (= e!118262 e!118258)))

(declare-fun c!32180 () Bool)

(assert (=> b!179509 (= c!32180 (not (= (bvand (extraKeys!3420 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!179510 () Bool)

(declare-fun e!118257 () Bool)

(declare-fun get!2051 (ValueCell!1755 V!5243) V!5243)

(declare-fun dynLambda!485 (Int (_ BitVec 64)) V!5243)

(assert (=> b!179510 (= e!118257 (= (apply!147 lt!88756 (select (arr!3580 (_keys!5570 thiss!1248)) #b00000000000000000000000000000000)) (get!2051 (select (arr!3581 (_values!3666 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!485 (defaultEntry!3683 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!179510 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3889 (_values!3666 thiss!1248))))))

(assert (=> b!179510 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3888 (_keys!5570 thiss!1248))))))

(declare-fun b!179511 () Bool)

(declare-fun call!18142 () ListLongMap!2269)

(assert (=> b!179511 (= e!118265 call!18142)))

(declare-fun bm!18137 () Bool)

(declare-fun call!18144 () ListLongMap!2269)

(declare-fun call!18146 () ListLongMap!2269)

(assert (=> bm!18137 (= call!18144 call!18146)))

(declare-fun b!179512 () Bool)

(declare-fun e!118269 () ListLongMap!2269)

(assert (=> b!179512 (= e!118264 e!118269)))

(declare-fun c!32177 () Bool)

(assert (=> b!179512 (= c!32177 (and (not (= (bvand (extraKeys!3420 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3420 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18138 () Bool)

(declare-fun call!18143 () Bool)

(assert (=> bm!18138 (= call!18143 (contains!1218 lt!88756 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!179513 () Bool)

(assert (=> b!179513 (= e!118269 call!18141)))

(declare-fun bm!18139 () Bool)

(assert (=> bm!18139 (= call!18141 call!18145)))

(declare-fun b!179514 () Bool)

(assert (=> b!179514 (= e!118258 e!118261)))

(declare-fun res!85037 () Bool)

(assert (=> b!179514 (= res!85037 call!18140)))

(assert (=> b!179514 (=> (not res!85037) (not e!118261))))

(declare-fun b!179515 () Bool)

(declare-fun c!32181 () Bool)

(assert (=> b!179515 (= c!32181 (and (not (= (bvand (extraKeys!3420 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3420 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!179515 (= e!118269 e!118265)))

(declare-fun bm!18140 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!177 (array!7558 array!7560 (_ BitVec 32) (_ BitVec 32) V!5243 V!5243 (_ BitVec 32) Int) ListLongMap!2269)

(assert (=> bm!18140 (= call!18146 (getCurrentListMapNoExtraKeys!177 (_keys!5570 thiss!1248) (_values!3666 thiss!1248) (mask!8664 thiss!1248) (extraKeys!3420 thiss!1248) (zeroValue!3524 thiss!1248) (minValue!3524 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3683 thiss!1248)))))

(declare-fun bm!18141 () Bool)

(assert (=> bm!18141 (= call!18145 (+!259 (ite c!32182 call!18146 (ite c!32177 call!18144 call!18142)) (ite (or c!32182 c!32177) (tuple2!3329 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3524 thiss!1248)) (tuple2!3329 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3524 thiss!1248)))))))

(declare-fun b!179516 () Bool)

(assert (=> b!179516 (= e!118268 (validKeyInArray!0 (select (arr!3580 (_keys!5570 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!179517 () Bool)

(assert (=> b!179517 (= e!118267 e!118257)))

(declare-fun res!85034 () Bool)

(assert (=> b!179517 (=> (not res!85034) (not e!118257))))

(assert (=> b!179517 (= res!85034 (contains!1218 lt!88756 (select (arr!3580 (_keys!5570 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!179517 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3888 (_keys!5570 thiss!1248))))))

(declare-fun b!179518 () Bool)

(declare-fun lt!88747 () Unit!5461)

(assert (=> b!179518 (= e!118260 lt!88747)))

(declare-fun lt!88749 () ListLongMap!2269)

(assert (=> b!179518 (= lt!88749 (getCurrentListMapNoExtraKeys!177 (_keys!5570 thiss!1248) (_values!3666 thiss!1248) (mask!8664 thiss!1248) (extraKeys!3420 thiss!1248) (zeroValue!3524 thiss!1248) (minValue!3524 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3683 thiss!1248)))))

(declare-fun lt!88743 () (_ BitVec 64))

(assert (=> b!179518 (= lt!88743 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88746 () (_ BitVec 64))

(assert (=> b!179518 (= lt!88746 (select (arr!3580 (_keys!5570 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88740 () Unit!5461)

(declare-fun addStillContains!123 (ListLongMap!2269 (_ BitVec 64) V!5243 (_ BitVec 64)) Unit!5461)

(assert (=> b!179518 (= lt!88740 (addStillContains!123 lt!88749 lt!88743 (zeroValue!3524 thiss!1248) lt!88746))))

(assert (=> b!179518 (contains!1218 (+!259 lt!88749 (tuple2!3329 lt!88743 (zeroValue!3524 thiss!1248))) lt!88746)))

(declare-fun lt!88753 () Unit!5461)

(assert (=> b!179518 (= lt!88753 lt!88740)))

(declare-fun lt!88760 () ListLongMap!2269)

(assert (=> b!179518 (= lt!88760 (getCurrentListMapNoExtraKeys!177 (_keys!5570 thiss!1248) (_values!3666 thiss!1248) (mask!8664 thiss!1248) (extraKeys!3420 thiss!1248) (zeroValue!3524 thiss!1248) (minValue!3524 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3683 thiss!1248)))))

(declare-fun lt!88751 () (_ BitVec 64))

(assert (=> b!179518 (= lt!88751 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88745 () (_ BitVec 64))

(assert (=> b!179518 (= lt!88745 (select (arr!3580 (_keys!5570 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88754 () Unit!5461)

(declare-fun addApplyDifferent!123 (ListLongMap!2269 (_ BitVec 64) V!5243 (_ BitVec 64)) Unit!5461)

(assert (=> b!179518 (= lt!88754 (addApplyDifferent!123 lt!88760 lt!88751 (minValue!3524 thiss!1248) lt!88745))))

(assert (=> b!179518 (= (apply!147 (+!259 lt!88760 (tuple2!3329 lt!88751 (minValue!3524 thiss!1248))) lt!88745) (apply!147 lt!88760 lt!88745))))

(declare-fun lt!88742 () Unit!5461)

(assert (=> b!179518 (= lt!88742 lt!88754)))

(declare-fun lt!88750 () ListLongMap!2269)

(assert (=> b!179518 (= lt!88750 (getCurrentListMapNoExtraKeys!177 (_keys!5570 thiss!1248) (_values!3666 thiss!1248) (mask!8664 thiss!1248) (extraKeys!3420 thiss!1248) (zeroValue!3524 thiss!1248) (minValue!3524 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3683 thiss!1248)))))

(declare-fun lt!88755 () (_ BitVec 64))

(assert (=> b!179518 (= lt!88755 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88761 () (_ BitVec 64))

(assert (=> b!179518 (= lt!88761 (select (arr!3580 (_keys!5570 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88748 () Unit!5461)

(assert (=> b!179518 (= lt!88748 (addApplyDifferent!123 lt!88750 lt!88755 (zeroValue!3524 thiss!1248) lt!88761))))

(assert (=> b!179518 (= (apply!147 (+!259 lt!88750 (tuple2!3329 lt!88755 (zeroValue!3524 thiss!1248))) lt!88761) (apply!147 lt!88750 lt!88761))))

(declare-fun lt!88757 () Unit!5461)

(assert (=> b!179518 (= lt!88757 lt!88748)))

(declare-fun lt!88741 () ListLongMap!2269)

(assert (=> b!179518 (= lt!88741 (getCurrentListMapNoExtraKeys!177 (_keys!5570 thiss!1248) (_values!3666 thiss!1248) (mask!8664 thiss!1248) (extraKeys!3420 thiss!1248) (zeroValue!3524 thiss!1248) (minValue!3524 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3683 thiss!1248)))))

(declare-fun lt!88758 () (_ BitVec 64))

(assert (=> b!179518 (= lt!88758 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88744 () (_ BitVec 64))

(assert (=> b!179518 (= lt!88744 (select (arr!3580 (_keys!5570 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!179518 (= lt!88747 (addApplyDifferent!123 lt!88741 lt!88758 (minValue!3524 thiss!1248) lt!88744))))

(assert (=> b!179518 (= (apply!147 (+!259 lt!88741 (tuple2!3329 lt!88758 (minValue!3524 thiss!1248))) lt!88744) (apply!147 lt!88741 lt!88744))))

(declare-fun bm!18142 () Bool)

(assert (=> bm!18142 (= call!18140 (contains!1218 lt!88756 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!179519 () Bool)

(assert (=> b!179519 (= e!118263 (validKeyInArray!0 (select (arr!3580 (_keys!5570 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18143 () Bool)

(assert (=> bm!18143 (= call!18142 call!18144)))

(declare-fun b!179520 () Bool)

(declare-fun res!85040 () Bool)

(assert (=> b!179520 (=> (not res!85040) (not e!118262))))

(declare-fun e!118266 () Bool)

(assert (=> b!179520 (= res!85040 e!118266)))

(declare-fun c!32179 () Bool)

(assert (=> b!179520 (= c!32179 (not (= (bvand (extraKeys!3420 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!179521 () Bool)

(assert (=> b!179521 (= e!118266 e!118259)))

(declare-fun res!85036 () Bool)

(assert (=> b!179521 (= res!85036 call!18143)))

(assert (=> b!179521 (=> (not res!85036) (not e!118259))))

(declare-fun b!179522 () Bool)

(assert (=> b!179522 (= e!118266 (not call!18143))))

(assert (= (and d!54073 c!32182) b!179508))

(assert (= (and d!54073 (not c!32182)) b!179512))

(assert (= (and b!179512 c!32177) b!179513))

(assert (= (and b!179512 (not c!32177)) b!179515))

(assert (= (and b!179515 c!32181) b!179502))

(assert (= (and b!179515 (not c!32181)) b!179511))

(assert (= (or b!179502 b!179511) bm!18143))

(assert (= (or b!179513 bm!18143) bm!18137))

(assert (= (or b!179513 b!179502) bm!18139))

(assert (= (or b!179508 bm!18137) bm!18140))

(assert (= (or b!179508 bm!18139) bm!18141))

(assert (= (and d!54073 res!85039) b!179516))

(assert (= (and d!54073 c!32178) b!179518))

(assert (= (and d!54073 (not c!32178)) b!179505))

(assert (= (and d!54073 res!85041) b!179506))

(assert (= (and b!179506 res!85035) b!179519))

(assert (= (and b!179506 (not res!85038)) b!179517))

(assert (= (and b!179517 res!85034) b!179510))

(assert (= (and b!179506 res!85042) b!179520))

(assert (= (and b!179520 c!32179) b!179521))

(assert (= (and b!179520 (not c!32179)) b!179522))

(assert (= (and b!179521 res!85036) b!179504))

(assert (= (or b!179521 b!179522) bm!18138))

(assert (= (and b!179520 res!85040) b!179509))

(assert (= (and b!179509 c!32180) b!179514))

(assert (= (and b!179509 (not c!32180)) b!179507))

(assert (= (and b!179514 res!85037) b!179503))

(assert (= (or b!179514 b!179507) bm!18142))

(declare-fun b_lambda!7141 () Bool)

(assert (=> (not b_lambda!7141) (not b!179510)))

(declare-fun t!7152 () Bool)

(declare-fun tb!2813 () Bool)

(assert (=> (and b!179356 (= (defaultEntry!3683 thiss!1248) (defaultEntry!3683 thiss!1248)) t!7152) tb!2813))

(declare-fun result!4697 () Bool)

(assert (=> tb!2813 (= result!4697 tp_is_empty!4197)))

(assert (=> b!179510 t!7152))

(declare-fun b_and!10977 () Bool)

(assert (= b_and!10973 (and (=> t!7152 result!4697) b_and!10977)))

(assert (=> b!179510 m!207685))

(declare-fun m!207723 () Bool)

(assert (=> b!179510 m!207723))

(assert (=> b!179510 m!207723))

(declare-fun m!207725 () Bool)

(assert (=> b!179510 m!207725))

(declare-fun m!207727 () Bool)

(assert (=> b!179510 m!207727))

(assert (=> b!179510 m!207725))

(assert (=> b!179510 m!207685))

(declare-fun m!207729 () Bool)

(assert (=> b!179510 m!207729))

(assert (=> b!179519 m!207685))

(assert (=> b!179519 m!207685))

(assert (=> b!179519 m!207691))

(declare-fun m!207731 () Bool)

(assert (=> b!179508 m!207731))

(declare-fun m!207733 () Bool)

(assert (=> b!179518 m!207733))

(declare-fun m!207735 () Bool)

(assert (=> b!179518 m!207735))

(declare-fun m!207737 () Bool)

(assert (=> b!179518 m!207737))

(declare-fun m!207739 () Bool)

(assert (=> b!179518 m!207739))

(declare-fun m!207741 () Bool)

(assert (=> b!179518 m!207741))

(declare-fun m!207743 () Bool)

(assert (=> b!179518 m!207743))

(declare-fun m!207745 () Bool)

(assert (=> b!179518 m!207745))

(declare-fun m!207747 () Bool)

(assert (=> b!179518 m!207747))

(declare-fun m!207749 () Bool)

(assert (=> b!179518 m!207749))

(declare-fun m!207751 () Bool)

(assert (=> b!179518 m!207751))

(declare-fun m!207753 () Bool)

(assert (=> b!179518 m!207753))

(declare-fun m!207755 () Bool)

(assert (=> b!179518 m!207755))

(assert (=> b!179518 m!207685))

(assert (=> b!179518 m!207741))

(declare-fun m!207757 () Bool)

(assert (=> b!179518 m!207757))

(assert (=> b!179518 m!207747))

(assert (=> b!179518 m!207739))

(declare-fun m!207759 () Bool)

(assert (=> b!179518 m!207759))

(declare-fun m!207761 () Bool)

(assert (=> b!179518 m!207761))

(assert (=> b!179518 m!207735))

(declare-fun m!207763 () Bool)

(assert (=> b!179518 m!207763))

(declare-fun m!207765 () Bool)

(assert (=> b!179504 m!207765))

(assert (=> b!179516 m!207685))

(assert (=> b!179516 m!207685))

(assert (=> b!179516 m!207691))

(declare-fun m!207767 () Bool)

(assert (=> bm!18138 m!207767))

(declare-fun m!207769 () Bool)

(assert (=> bm!18142 m!207769))

(declare-fun m!207771 () Bool)

(assert (=> b!179503 m!207771))

(assert (=> d!54073 m!207659))

(declare-fun m!207773 () Bool)

(assert (=> bm!18141 m!207773))

(assert (=> bm!18140 m!207761))

(assert (=> b!179517 m!207685))

(assert (=> b!179517 m!207685))

(declare-fun m!207775 () Bool)

(assert (=> b!179517 m!207775))

(assert (=> b!179354 d!54073))

(declare-fun d!54075 () Bool)

(assert (=> d!54075 (= (validMask!0 (mask!8664 thiss!1248)) (and (or (= (mask!8664 thiss!1248) #b00000000000000000000000000000111) (= (mask!8664 thiss!1248) #b00000000000000000000000000001111) (= (mask!8664 thiss!1248) #b00000000000000000000000000011111) (= (mask!8664 thiss!1248) #b00000000000000000000000000111111) (= (mask!8664 thiss!1248) #b00000000000000000000000001111111) (= (mask!8664 thiss!1248) #b00000000000000000000000011111111) (= (mask!8664 thiss!1248) #b00000000000000000000000111111111) (= (mask!8664 thiss!1248) #b00000000000000000000001111111111) (= (mask!8664 thiss!1248) #b00000000000000000000011111111111) (= (mask!8664 thiss!1248) #b00000000000000000000111111111111) (= (mask!8664 thiss!1248) #b00000000000000000001111111111111) (= (mask!8664 thiss!1248) #b00000000000000000011111111111111) (= (mask!8664 thiss!1248) #b00000000000000000111111111111111) (= (mask!8664 thiss!1248) #b00000000000000001111111111111111) (= (mask!8664 thiss!1248) #b00000000000000011111111111111111) (= (mask!8664 thiss!1248) #b00000000000000111111111111111111) (= (mask!8664 thiss!1248) #b00000000000001111111111111111111) (= (mask!8664 thiss!1248) #b00000000000011111111111111111111) (= (mask!8664 thiss!1248) #b00000000000111111111111111111111) (= (mask!8664 thiss!1248) #b00000000001111111111111111111111) (= (mask!8664 thiss!1248) #b00000000011111111111111111111111) (= (mask!8664 thiss!1248) #b00000000111111111111111111111111) (= (mask!8664 thiss!1248) #b00000001111111111111111111111111) (= (mask!8664 thiss!1248) #b00000011111111111111111111111111) (= (mask!8664 thiss!1248) #b00000111111111111111111111111111) (= (mask!8664 thiss!1248) #b00001111111111111111111111111111) (= (mask!8664 thiss!1248) #b00011111111111111111111111111111) (= (mask!8664 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8664 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!179357 d!54075))

(declare-fun mapNonEmpty!7189 () Bool)

(declare-fun mapRes!7189 () Bool)

(declare-fun tp!16009 () Bool)

(declare-fun e!118275 () Bool)

(assert (=> mapNonEmpty!7189 (= mapRes!7189 (and tp!16009 e!118275))))

(declare-fun mapRest!7189 () (Array (_ BitVec 32) ValueCell!1755))

(declare-fun mapValue!7189 () ValueCell!1755)

(declare-fun mapKey!7189 () (_ BitVec 32))

(assert (=> mapNonEmpty!7189 (= mapRest!7183 (store mapRest!7189 mapKey!7189 mapValue!7189))))

(declare-fun b!179531 () Bool)

(assert (=> b!179531 (= e!118275 tp_is_empty!4197)))

(declare-fun mapIsEmpty!7189 () Bool)

(assert (=> mapIsEmpty!7189 mapRes!7189))

(declare-fun condMapEmpty!7189 () Bool)

(declare-fun mapDefault!7189 () ValueCell!1755)

(assert (=> mapNonEmpty!7183 (= condMapEmpty!7189 (= mapRest!7183 ((as const (Array (_ BitVec 32) ValueCell!1755)) mapDefault!7189)))))

(declare-fun e!118274 () Bool)

(assert (=> mapNonEmpty!7183 (= tp!15999 (and e!118274 mapRes!7189))))

(declare-fun b!179532 () Bool)

(assert (=> b!179532 (= e!118274 tp_is_empty!4197)))

(assert (= (and mapNonEmpty!7183 condMapEmpty!7189) mapIsEmpty!7189))

(assert (= (and mapNonEmpty!7183 (not condMapEmpty!7189)) mapNonEmpty!7189))

(assert (= (and mapNonEmpty!7189 ((_ is ValueCellFull!1755) mapValue!7189)) b!179531))

(assert (= (and mapNonEmpty!7183 ((_ is ValueCellFull!1755) mapDefault!7189)) b!179532))

(declare-fun m!207777 () Bool)

(assert (=> mapNonEmpty!7189 m!207777))

(declare-fun b_lambda!7143 () Bool)

(assert (= b_lambda!7141 (or (and b!179356 b_free!4425) b_lambda!7143)))

(check-sat (not bm!18141) (not d!54067) tp_is_empty!4197 (not b!179504) (not b_lambda!7143) (not b!179403) (not d!54073) (not b_next!4425) (not d!54071) (not b!179508) (not b!179517) (not bm!18142) (not b!179450) (not b!179518) (not b!179503) (not bm!18119) (not b!179457) (not b!179516) (not b!179459) (not b!179519) (not bm!18140) (not b!179448) (not bm!18122) (not b!179416) (not mapNonEmpty!7189) (not b!179404) (not b!179405) (not b!179510) (not d!54059) (not b!179436) b_and!10977 (not b!179419) (not b!179418) (not bm!18138))
(check-sat b_and!10977 (not b_next!4425))
