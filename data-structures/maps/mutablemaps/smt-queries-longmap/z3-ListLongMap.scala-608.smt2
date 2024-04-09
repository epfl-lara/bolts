; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15854 () Bool)

(assert start!15854)

(declare-fun b!157739 () Bool)

(declare-fun b_free!3459 () Bool)

(declare-fun b_next!3459 () Bool)

(assert (=> b!157739 (= b_free!3459 (not b_next!3459))))

(declare-fun tp!12915 () Bool)

(declare-fun b_and!9891 () Bool)

(assert (=> b!157739 (= tp!12915 b_and!9891)))

(declare-fun b!157734 () Bool)

(declare-fun e!103323 () Bool)

(declare-fun tp_is_empty!3261 () Bool)

(assert (=> b!157734 (= e!103323 tp_is_empty!3261)))

(declare-fun res!74560 () Bool)

(declare-fun e!103326 () Bool)

(assert (=> start!15854 (=> (not res!74560) (not e!103326))))

(declare-datatypes ((V!3995 0))(
  ( (V!3996 (val!1675 Int)) )
))
(declare-datatypes ((ValueCell!1287 0))(
  ( (ValueCellFull!1287 (v!3536 V!3995)) (EmptyCell!1287) )
))
(declare-datatypes ((array!5582 0))(
  ( (array!5583 (arr!2644 (Array (_ BitVec 32) (_ BitVec 64))) (size!2924 (_ BitVec 32))) )
))
(declare-datatypes ((array!5584 0))(
  ( (array!5585 (arr!2645 (Array (_ BitVec 32) ValueCell!1287)) (size!2925 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1482 0))(
  ( (LongMapFixedSize!1483 (defaultEntry!3183 Int) (mask!7674 (_ BitVec 32)) (extraKeys!2924 (_ BitVec 32)) (zeroValue!3026 V!3995) (minValue!3026 V!3995) (_size!790 (_ BitVec 32)) (_keys!4960 array!5582) (_values!3166 array!5584) (_vacant!790 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1482)

(declare-fun valid!699 (LongMapFixedSize!1482) Bool)

(assert (=> start!15854 (= res!74560 (valid!699 thiss!1248))))

(assert (=> start!15854 e!103326))

(declare-fun e!103322 () Bool)

(assert (=> start!15854 e!103322))

(assert (=> start!15854 true))

(declare-fun mapIsEmpty!5548 () Bool)

(declare-fun mapRes!5548 () Bool)

(assert (=> mapIsEmpty!5548 mapRes!5548))

(declare-fun b!157735 () Bool)

(declare-fun res!74559 () Bool)

(assert (=> b!157735 (=> (not res!74559) (not e!103326))))

(declare-fun key!828 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!300 0))(
  ( (MissingZero!300 (index!3368 (_ BitVec 32))) (Found!300 (index!3369 (_ BitVec 32))) (Intermediate!300 (undefined!1112 Bool) (index!3370 (_ BitVec 32)) (x!17400 (_ BitVec 32))) (Undefined!300) (MissingVacant!300 (index!3371 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5582 (_ BitVec 32)) SeekEntryResult!300)

(assert (=> b!157735 (= res!74559 ((_ is Undefined!300) (seekEntryOrOpen!0 key!828 (_keys!4960 thiss!1248) (mask!7674 thiss!1248))))))

(declare-fun b!157736 () Bool)

(declare-fun res!74558 () Bool)

(assert (=> b!157736 (=> (not res!74558) (not e!103326))))

(assert (=> b!157736 (= res!74558 (not (= key!828 (bvneg key!828))))))

(declare-fun b!157737 () Bool)

(declare-fun e!103324 () Bool)

(assert (=> b!157737 (= e!103324 tp_is_empty!3261)))

(declare-fun mapNonEmpty!5548 () Bool)

(declare-fun tp!12916 () Bool)

(assert (=> mapNonEmpty!5548 (= mapRes!5548 (and tp!12916 e!103323))))

(declare-fun mapRest!5548 () (Array (_ BitVec 32) ValueCell!1287))

(declare-fun mapValue!5548 () ValueCell!1287)

(declare-fun mapKey!5548 () (_ BitVec 32))

(assert (=> mapNonEmpty!5548 (= (arr!2645 (_values!3166 thiss!1248)) (store mapRest!5548 mapKey!5548 mapValue!5548))))

(declare-fun b!157738 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!157738 (= e!103326 (not (validMask!0 (mask!7674 thiss!1248))))))

(declare-fun e!103321 () Bool)

(declare-fun array_inv!1673 (array!5582) Bool)

(declare-fun array_inv!1674 (array!5584) Bool)

(assert (=> b!157739 (= e!103322 (and tp!12915 tp_is_empty!3261 (array_inv!1673 (_keys!4960 thiss!1248)) (array_inv!1674 (_values!3166 thiss!1248)) e!103321))))

(declare-fun b!157740 () Bool)

(assert (=> b!157740 (= e!103321 (and e!103324 mapRes!5548))))

(declare-fun condMapEmpty!5548 () Bool)

(declare-fun mapDefault!5548 () ValueCell!1287)

(assert (=> b!157740 (= condMapEmpty!5548 (= (arr!2645 (_values!3166 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1287)) mapDefault!5548)))))

(assert (= (and start!15854 res!74560) b!157736))

(assert (= (and b!157736 res!74558) b!157735))

(assert (= (and b!157735 res!74559) b!157738))

(assert (= (and b!157740 condMapEmpty!5548) mapIsEmpty!5548))

(assert (= (and b!157740 (not condMapEmpty!5548)) mapNonEmpty!5548))

(assert (= (and mapNonEmpty!5548 ((_ is ValueCellFull!1287) mapValue!5548)) b!157734))

(assert (= (and b!157740 ((_ is ValueCellFull!1287) mapDefault!5548)) b!157737))

(assert (= b!157739 b!157740))

(assert (= start!15854 b!157739))

(declare-fun m!190811 () Bool)

(assert (=> start!15854 m!190811))

(declare-fun m!190813 () Bool)

(assert (=> b!157739 m!190813))

(declare-fun m!190815 () Bool)

(assert (=> b!157739 m!190815))

(declare-fun m!190817 () Bool)

(assert (=> b!157738 m!190817))

(declare-fun m!190819 () Bool)

(assert (=> b!157735 m!190819))

(declare-fun m!190821 () Bool)

(assert (=> mapNonEmpty!5548 m!190821))

(check-sat tp_is_empty!3261 (not b!157739) (not b!157738) b_and!9891 (not mapNonEmpty!5548) (not b_next!3459) (not b!157735) (not start!15854))
(check-sat b_and!9891 (not b_next!3459))
(get-model)

(declare-fun d!51013 () Bool)

(declare-fun res!74576 () Bool)

(declare-fun e!103347 () Bool)

(assert (=> d!51013 (=> (not res!74576) (not e!103347))))

(declare-fun simpleValid!108 (LongMapFixedSize!1482) Bool)

(assert (=> d!51013 (= res!74576 (simpleValid!108 thiss!1248))))

(assert (=> d!51013 (= (valid!699 thiss!1248) e!103347)))

(declare-fun b!157768 () Bool)

(declare-fun res!74577 () Bool)

(assert (=> b!157768 (=> (not res!74577) (not e!103347))))

(declare-fun arrayCountValidKeys!0 (array!5582 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!157768 (= res!74577 (= (arrayCountValidKeys!0 (_keys!4960 thiss!1248) #b00000000000000000000000000000000 (size!2924 (_keys!4960 thiss!1248))) (_size!790 thiss!1248)))))

(declare-fun b!157769 () Bool)

(declare-fun res!74578 () Bool)

(assert (=> b!157769 (=> (not res!74578) (not e!103347))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5582 (_ BitVec 32)) Bool)

(assert (=> b!157769 (= res!74578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4960 thiss!1248) (mask!7674 thiss!1248)))))

(declare-fun b!157770 () Bool)

(declare-datatypes ((List!1900 0))(
  ( (Nil!1897) (Cons!1896 (h!2505 (_ BitVec 64)) (t!6710 List!1900)) )
))
(declare-fun arrayNoDuplicates!0 (array!5582 (_ BitVec 32) List!1900) Bool)

(assert (=> b!157770 (= e!103347 (arrayNoDuplicates!0 (_keys!4960 thiss!1248) #b00000000000000000000000000000000 Nil!1897))))

(assert (= (and d!51013 res!74576) b!157768))

(assert (= (and b!157768 res!74577) b!157769))

(assert (= (and b!157769 res!74578) b!157770))

(declare-fun m!190835 () Bool)

(assert (=> d!51013 m!190835))

(declare-fun m!190837 () Bool)

(assert (=> b!157768 m!190837))

(declare-fun m!190839 () Bool)

(assert (=> b!157769 m!190839))

(declare-fun m!190841 () Bool)

(assert (=> b!157770 m!190841))

(assert (=> start!15854 d!51013))

(declare-fun b!157783 () Bool)

(declare-fun e!103354 () SeekEntryResult!300)

(declare-fun e!103355 () SeekEntryResult!300)

(assert (=> b!157783 (= e!103354 e!103355)))

(declare-fun lt!81778 () (_ BitVec 64))

(declare-fun lt!81779 () SeekEntryResult!300)

(assert (=> b!157783 (= lt!81778 (select (arr!2644 (_keys!4960 thiss!1248)) (index!3370 lt!81779)))))

(declare-fun c!29704 () Bool)

(assert (=> b!157783 (= c!29704 (= lt!81778 key!828))))

(declare-fun d!51015 () Bool)

(declare-fun lt!81777 () SeekEntryResult!300)

(assert (=> d!51015 (and (or ((_ is Undefined!300) lt!81777) (not ((_ is Found!300) lt!81777)) (and (bvsge (index!3369 lt!81777) #b00000000000000000000000000000000) (bvslt (index!3369 lt!81777) (size!2924 (_keys!4960 thiss!1248))))) (or ((_ is Undefined!300) lt!81777) ((_ is Found!300) lt!81777) (not ((_ is MissingZero!300) lt!81777)) (and (bvsge (index!3368 lt!81777) #b00000000000000000000000000000000) (bvslt (index!3368 lt!81777) (size!2924 (_keys!4960 thiss!1248))))) (or ((_ is Undefined!300) lt!81777) ((_ is Found!300) lt!81777) ((_ is MissingZero!300) lt!81777) (not ((_ is MissingVacant!300) lt!81777)) (and (bvsge (index!3371 lt!81777) #b00000000000000000000000000000000) (bvslt (index!3371 lt!81777) (size!2924 (_keys!4960 thiss!1248))))) (or ((_ is Undefined!300) lt!81777) (ite ((_ is Found!300) lt!81777) (= (select (arr!2644 (_keys!4960 thiss!1248)) (index!3369 lt!81777)) key!828) (ite ((_ is MissingZero!300) lt!81777) (= (select (arr!2644 (_keys!4960 thiss!1248)) (index!3368 lt!81777)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!300) lt!81777) (= (select (arr!2644 (_keys!4960 thiss!1248)) (index!3371 lt!81777)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!51015 (= lt!81777 e!103354)))

(declare-fun c!29705 () Bool)

(assert (=> d!51015 (= c!29705 (and ((_ is Intermediate!300) lt!81779) (undefined!1112 lt!81779)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5582 (_ BitVec 32)) SeekEntryResult!300)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!51015 (= lt!81779 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!7674 thiss!1248)) key!828 (_keys!4960 thiss!1248) (mask!7674 thiss!1248)))))

(assert (=> d!51015 (validMask!0 (mask!7674 thiss!1248))))

(assert (=> d!51015 (= (seekEntryOrOpen!0 key!828 (_keys!4960 thiss!1248) (mask!7674 thiss!1248)) lt!81777)))

(declare-fun b!157784 () Bool)

(assert (=> b!157784 (= e!103354 Undefined!300)))

(declare-fun e!103356 () SeekEntryResult!300)

(declare-fun b!157785 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5582 (_ BitVec 32)) SeekEntryResult!300)

(assert (=> b!157785 (= e!103356 (seekKeyOrZeroReturnVacant!0 (x!17400 lt!81779) (index!3370 lt!81779) (index!3370 lt!81779) key!828 (_keys!4960 thiss!1248) (mask!7674 thiss!1248)))))

(declare-fun b!157786 () Bool)

(assert (=> b!157786 (= e!103355 (Found!300 (index!3370 lt!81779)))))

(declare-fun b!157787 () Bool)

(assert (=> b!157787 (= e!103356 (MissingZero!300 (index!3370 lt!81779)))))

(declare-fun b!157788 () Bool)

(declare-fun c!29706 () Bool)

(assert (=> b!157788 (= c!29706 (= lt!81778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!157788 (= e!103355 e!103356)))

(assert (= (and d!51015 c!29705) b!157784))

(assert (= (and d!51015 (not c!29705)) b!157783))

(assert (= (and b!157783 c!29704) b!157786))

(assert (= (and b!157783 (not c!29704)) b!157788))

(assert (= (and b!157788 c!29706) b!157787))

(assert (= (and b!157788 (not c!29706)) b!157785))

(declare-fun m!190843 () Bool)

(assert (=> b!157783 m!190843))

(declare-fun m!190845 () Bool)

(assert (=> d!51015 m!190845))

(assert (=> d!51015 m!190845))

(declare-fun m!190847 () Bool)

(assert (=> d!51015 m!190847))

(assert (=> d!51015 m!190817))

(declare-fun m!190849 () Bool)

(assert (=> d!51015 m!190849))

(declare-fun m!190851 () Bool)

(assert (=> d!51015 m!190851))

(declare-fun m!190853 () Bool)

(assert (=> d!51015 m!190853))

(declare-fun m!190855 () Bool)

(assert (=> b!157785 m!190855))

(assert (=> b!157735 d!51015))

(declare-fun d!51017 () Bool)

(assert (=> d!51017 (= (array_inv!1673 (_keys!4960 thiss!1248)) (bvsge (size!2924 (_keys!4960 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!157739 d!51017))

(declare-fun d!51019 () Bool)

(assert (=> d!51019 (= (array_inv!1674 (_values!3166 thiss!1248)) (bvsge (size!2925 (_values!3166 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!157739 d!51019))

(declare-fun d!51021 () Bool)

(assert (=> d!51021 (= (validMask!0 (mask!7674 thiss!1248)) (and (or (= (mask!7674 thiss!1248) #b00000000000000000000000000000111) (= (mask!7674 thiss!1248) #b00000000000000000000000000001111) (= (mask!7674 thiss!1248) #b00000000000000000000000000011111) (= (mask!7674 thiss!1248) #b00000000000000000000000000111111) (= (mask!7674 thiss!1248) #b00000000000000000000000001111111) (= (mask!7674 thiss!1248) #b00000000000000000000000011111111) (= (mask!7674 thiss!1248) #b00000000000000000000000111111111) (= (mask!7674 thiss!1248) #b00000000000000000000001111111111) (= (mask!7674 thiss!1248) #b00000000000000000000011111111111) (= (mask!7674 thiss!1248) #b00000000000000000000111111111111) (= (mask!7674 thiss!1248) #b00000000000000000001111111111111) (= (mask!7674 thiss!1248) #b00000000000000000011111111111111) (= (mask!7674 thiss!1248) #b00000000000000000111111111111111) (= (mask!7674 thiss!1248) #b00000000000000001111111111111111) (= (mask!7674 thiss!1248) #b00000000000000011111111111111111) (= (mask!7674 thiss!1248) #b00000000000000111111111111111111) (= (mask!7674 thiss!1248) #b00000000000001111111111111111111) (= (mask!7674 thiss!1248) #b00000000000011111111111111111111) (= (mask!7674 thiss!1248) #b00000000000111111111111111111111) (= (mask!7674 thiss!1248) #b00000000001111111111111111111111) (= (mask!7674 thiss!1248) #b00000000011111111111111111111111) (= (mask!7674 thiss!1248) #b00000000111111111111111111111111) (= (mask!7674 thiss!1248) #b00000001111111111111111111111111) (= (mask!7674 thiss!1248) #b00000011111111111111111111111111) (= (mask!7674 thiss!1248) #b00000111111111111111111111111111) (= (mask!7674 thiss!1248) #b00001111111111111111111111111111) (= (mask!7674 thiss!1248) #b00011111111111111111111111111111) (= (mask!7674 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!7674 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!157738 d!51021))

(declare-fun mapNonEmpty!5554 () Bool)

(declare-fun mapRes!5554 () Bool)

(declare-fun tp!12925 () Bool)

(declare-fun e!103362 () Bool)

(assert (=> mapNonEmpty!5554 (= mapRes!5554 (and tp!12925 e!103362))))

(declare-fun mapValue!5554 () ValueCell!1287)

(declare-fun mapRest!5554 () (Array (_ BitVec 32) ValueCell!1287))

(declare-fun mapKey!5554 () (_ BitVec 32))

(assert (=> mapNonEmpty!5554 (= mapRest!5548 (store mapRest!5554 mapKey!5554 mapValue!5554))))

(declare-fun b!157795 () Bool)

(assert (=> b!157795 (= e!103362 tp_is_empty!3261)))

(declare-fun b!157796 () Bool)

(declare-fun e!103361 () Bool)

(assert (=> b!157796 (= e!103361 tp_is_empty!3261)))

(declare-fun condMapEmpty!5554 () Bool)

(declare-fun mapDefault!5554 () ValueCell!1287)

(assert (=> mapNonEmpty!5548 (= condMapEmpty!5554 (= mapRest!5548 ((as const (Array (_ BitVec 32) ValueCell!1287)) mapDefault!5554)))))

(assert (=> mapNonEmpty!5548 (= tp!12916 (and e!103361 mapRes!5554))))

(declare-fun mapIsEmpty!5554 () Bool)

(assert (=> mapIsEmpty!5554 mapRes!5554))

(assert (= (and mapNonEmpty!5548 condMapEmpty!5554) mapIsEmpty!5554))

(assert (= (and mapNonEmpty!5548 (not condMapEmpty!5554)) mapNonEmpty!5554))

(assert (= (and mapNonEmpty!5554 ((_ is ValueCellFull!1287) mapValue!5554)) b!157795))

(assert (= (and mapNonEmpty!5548 ((_ is ValueCellFull!1287) mapDefault!5554)) b!157796))

(declare-fun m!190857 () Bool)

(assert (=> mapNonEmpty!5554 m!190857))

(check-sat (not b!157785) tp_is_empty!3261 (not b!157769) b_and!9891 (not b!157768) (not b!157770) (not d!51015) (not d!51013) (not mapNonEmpty!5554) (not b_next!3459))
(check-sat b_and!9891 (not b_next!3459))
