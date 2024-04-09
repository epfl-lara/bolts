; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15870 () Bool)

(assert start!15870)

(declare-fun b!157842 () Bool)

(declare-fun b_free!3465 () Bool)

(declare-fun b_next!3465 () Bool)

(assert (=> b!157842 (= b_free!3465 (not b_next!3465))))

(declare-fun tp!12936 () Bool)

(declare-fun b_and!9897 () Bool)

(assert (=> b!157842 (= tp!12936 b_and!9897)))

(declare-fun b!157837 () Bool)

(declare-fun e!103398 () Bool)

(declare-datatypes ((V!4003 0))(
  ( (V!4004 (val!1678 Int)) )
))
(declare-datatypes ((ValueCell!1290 0))(
  ( (ValueCellFull!1290 (v!3539 V!4003)) (EmptyCell!1290) )
))
(declare-datatypes ((array!5596 0))(
  ( (array!5597 (arr!2650 (Array (_ BitVec 32) (_ BitVec 64))) (size!2930 (_ BitVec 32))) )
))
(declare-datatypes ((array!5598 0))(
  ( (array!5599 (arr!2651 (Array (_ BitVec 32) ValueCell!1290)) (size!2931 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1488 0))(
  ( (LongMapFixedSize!1489 (defaultEntry!3186 Int) (mask!7681 (_ BitVec 32)) (extraKeys!2927 (_ BitVec 32)) (zeroValue!3029 V!4003) (minValue!3029 V!4003) (_size!793 (_ BitVec 32)) (_keys!4964 array!5596) (_values!3169 array!5598) (_vacant!793 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1488)

(assert (=> b!157837 (= e!103398 (not (= (size!2931 (_values!3169 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7681 thiss!1248)))))))

(declare-fun mapIsEmpty!5560 () Bool)

(declare-fun mapRes!5560 () Bool)

(assert (=> mapIsEmpty!5560 mapRes!5560))

(declare-fun b!157838 () Bool)

(declare-fun e!103393 () Bool)

(declare-fun e!103396 () Bool)

(assert (=> b!157838 (= e!103393 (and e!103396 mapRes!5560))))

(declare-fun condMapEmpty!5560 () Bool)

(declare-fun mapDefault!5560 () ValueCell!1290)

(assert (=> b!157838 (= condMapEmpty!5560 (= (arr!2651 (_values!3169 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1290)) mapDefault!5560)))))

(declare-fun res!74600 () Bool)

(assert (=> start!15870 (=> (not res!74600) (not e!103398))))

(declare-fun valid!701 (LongMapFixedSize!1488) Bool)

(assert (=> start!15870 (= res!74600 (valid!701 thiss!1248))))

(assert (=> start!15870 e!103398))

(declare-fun e!103395 () Bool)

(assert (=> start!15870 e!103395))

(assert (=> start!15870 true))

(declare-fun b!157839 () Bool)

(declare-fun e!103397 () Bool)

(declare-fun tp_is_empty!3267 () Bool)

(assert (=> b!157839 (= e!103397 tp_is_empty!3267)))

(declare-fun b!157840 () Bool)

(declare-fun res!74601 () Bool)

(assert (=> b!157840 (=> (not res!74601) (not e!103398))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!157840 (= res!74601 (validMask!0 (mask!7681 thiss!1248)))))

(declare-fun b!157841 () Bool)

(assert (=> b!157841 (= e!103396 tp_is_empty!3267)))

(declare-fun array_inv!1677 (array!5596) Bool)

(declare-fun array_inv!1678 (array!5598) Bool)

(assert (=> b!157842 (= e!103395 (and tp!12936 tp_is_empty!3267 (array_inv!1677 (_keys!4964 thiss!1248)) (array_inv!1678 (_values!3169 thiss!1248)) e!103393))))

(declare-fun mapNonEmpty!5560 () Bool)

(declare-fun tp!12937 () Bool)

(assert (=> mapNonEmpty!5560 (= mapRes!5560 (and tp!12937 e!103397))))

(declare-fun mapRest!5560 () (Array (_ BitVec 32) ValueCell!1290))

(declare-fun mapKey!5560 () (_ BitVec 32))

(declare-fun mapValue!5560 () ValueCell!1290)

(assert (=> mapNonEmpty!5560 (= (arr!2651 (_values!3169 thiss!1248)) (store mapRest!5560 mapKey!5560 mapValue!5560))))

(declare-fun b!157843 () Bool)

(declare-fun res!74602 () Bool)

(assert (=> b!157843 (=> (not res!74602) (not e!103398))))

(declare-fun key!828 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!303 0))(
  ( (MissingZero!303 (index!3380 (_ BitVec 32))) (Found!303 (index!3381 (_ BitVec 32))) (Intermediate!303 (undefined!1115 Bool) (index!3382 (_ BitVec 32)) (x!17419 (_ BitVec 32))) (Undefined!303) (MissingVacant!303 (index!3383 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5596 (_ BitVec 32)) SeekEntryResult!303)

(assert (=> b!157843 (= res!74602 ((_ is Undefined!303) (seekEntryOrOpen!0 key!828 (_keys!4964 thiss!1248) (mask!7681 thiss!1248))))))

(declare-fun b!157844 () Bool)

(declare-fun res!74599 () Bool)

(assert (=> b!157844 (=> (not res!74599) (not e!103398))))

(assert (=> b!157844 (= res!74599 (not (= key!828 (bvneg key!828))))))

(assert (= (and start!15870 res!74600) b!157844))

(assert (= (and b!157844 res!74599) b!157843))

(assert (= (and b!157843 res!74602) b!157840))

(assert (= (and b!157840 res!74601) b!157837))

(assert (= (and b!157838 condMapEmpty!5560) mapIsEmpty!5560))

(assert (= (and b!157838 (not condMapEmpty!5560)) mapNonEmpty!5560))

(assert (= (and mapNonEmpty!5560 ((_ is ValueCellFull!1290) mapValue!5560)) b!157839))

(assert (= (and b!157838 ((_ is ValueCellFull!1290) mapDefault!5560)) b!157841))

(assert (= b!157842 b!157838))

(assert (= start!15870 b!157842))

(declare-fun m!190871 () Bool)

(assert (=> mapNonEmpty!5560 m!190871))

(declare-fun m!190873 () Bool)

(assert (=> b!157840 m!190873))

(declare-fun m!190875 () Bool)

(assert (=> start!15870 m!190875))

(declare-fun m!190877 () Bool)

(assert (=> b!157842 m!190877))

(declare-fun m!190879 () Bool)

(assert (=> b!157842 m!190879))

(declare-fun m!190881 () Bool)

(assert (=> b!157843 m!190881))

(check-sat b_and!9897 (not b!157842) (not b!157843) (not mapNonEmpty!5560) tp_is_empty!3267 (not b_next!3465) (not start!15870) (not b!157840))
(check-sat b_and!9897 (not b_next!3465))
(get-model)

(declare-fun d!51025 () Bool)

(assert (=> d!51025 (= (validMask!0 (mask!7681 thiss!1248)) (and (or (= (mask!7681 thiss!1248) #b00000000000000000000000000000111) (= (mask!7681 thiss!1248) #b00000000000000000000000000001111) (= (mask!7681 thiss!1248) #b00000000000000000000000000011111) (= (mask!7681 thiss!1248) #b00000000000000000000000000111111) (= (mask!7681 thiss!1248) #b00000000000000000000000001111111) (= (mask!7681 thiss!1248) #b00000000000000000000000011111111) (= (mask!7681 thiss!1248) #b00000000000000000000000111111111) (= (mask!7681 thiss!1248) #b00000000000000000000001111111111) (= (mask!7681 thiss!1248) #b00000000000000000000011111111111) (= (mask!7681 thiss!1248) #b00000000000000000000111111111111) (= (mask!7681 thiss!1248) #b00000000000000000001111111111111) (= (mask!7681 thiss!1248) #b00000000000000000011111111111111) (= (mask!7681 thiss!1248) #b00000000000000000111111111111111) (= (mask!7681 thiss!1248) #b00000000000000001111111111111111) (= (mask!7681 thiss!1248) #b00000000000000011111111111111111) (= (mask!7681 thiss!1248) #b00000000000000111111111111111111) (= (mask!7681 thiss!1248) #b00000000000001111111111111111111) (= (mask!7681 thiss!1248) #b00000000000011111111111111111111) (= (mask!7681 thiss!1248) #b00000000000111111111111111111111) (= (mask!7681 thiss!1248) #b00000000001111111111111111111111) (= (mask!7681 thiss!1248) #b00000000011111111111111111111111) (= (mask!7681 thiss!1248) #b00000000111111111111111111111111) (= (mask!7681 thiss!1248) #b00000001111111111111111111111111) (= (mask!7681 thiss!1248) #b00000011111111111111111111111111) (= (mask!7681 thiss!1248) #b00000111111111111111111111111111) (= (mask!7681 thiss!1248) #b00001111111111111111111111111111) (= (mask!7681 thiss!1248) #b00011111111111111111111111111111) (= (mask!7681 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!7681 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!157840 d!51025))

(declare-fun d!51027 () Bool)

(declare-fun res!74621 () Bool)

(declare-fun e!103419 () Bool)

(assert (=> d!51027 (=> (not res!74621) (not e!103419))))

(declare-fun simpleValid!109 (LongMapFixedSize!1488) Bool)

(assert (=> d!51027 (= res!74621 (simpleValid!109 thiss!1248))))

(assert (=> d!51027 (= (valid!701 thiss!1248) e!103419)))

(declare-fun b!157875 () Bool)

(declare-fun res!74622 () Bool)

(assert (=> b!157875 (=> (not res!74622) (not e!103419))))

(declare-fun arrayCountValidKeys!0 (array!5596 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!157875 (= res!74622 (= (arrayCountValidKeys!0 (_keys!4964 thiss!1248) #b00000000000000000000000000000000 (size!2930 (_keys!4964 thiss!1248))) (_size!793 thiss!1248)))))

(declare-fun b!157876 () Bool)

(declare-fun res!74623 () Bool)

(assert (=> b!157876 (=> (not res!74623) (not e!103419))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5596 (_ BitVec 32)) Bool)

(assert (=> b!157876 (= res!74623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4964 thiss!1248) (mask!7681 thiss!1248)))))

(declare-fun b!157877 () Bool)

(declare-datatypes ((List!1901 0))(
  ( (Nil!1898) (Cons!1897 (h!2506 (_ BitVec 64)) (t!6711 List!1901)) )
))
(declare-fun arrayNoDuplicates!0 (array!5596 (_ BitVec 32) List!1901) Bool)

(assert (=> b!157877 (= e!103419 (arrayNoDuplicates!0 (_keys!4964 thiss!1248) #b00000000000000000000000000000000 Nil!1898))))

(assert (= (and d!51027 res!74621) b!157875))

(assert (= (and b!157875 res!74622) b!157876))

(assert (= (and b!157876 res!74623) b!157877))

(declare-fun m!190895 () Bool)

(assert (=> d!51027 m!190895))

(declare-fun m!190897 () Bool)

(assert (=> b!157875 m!190897))

(declare-fun m!190899 () Bool)

(assert (=> b!157876 m!190899))

(declare-fun m!190901 () Bool)

(assert (=> b!157877 m!190901))

(assert (=> start!15870 d!51027))

(declare-fun b!157890 () Bool)

(declare-fun e!103428 () SeekEntryResult!303)

(declare-fun lt!81788 () SeekEntryResult!303)

(assert (=> b!157890 (= e!103428 (MissingZero!303 (index!3382 lt!81788)))))

(declare-fun b!157891 () Bool)

(declare-fun c!29715 () Bool)

(declare-fun lt!81786 () (_ BitVec 64))

(assert (=> b!157891 (= c!29715 (= lt!81786 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!103427 () SeekEntryResult!303)

(assert (=> b!157891 (= e!103427 e!103428)))

(declare-fun b!157892 () Bool)

(declare-fun e!103426 () SeekEntryResult!303)

(assert (=> b!157892 (= e!103426 e!103427)))

(assert (=> b!157892 (= lt!81786 (select (arr!2650 (_keys!4964 thiss!1248)) (index!3382 lt!81788)))))

(declare-fun c!29713 () Bool)

(assert (=> b!157892 (= c!29713 (= lt!81786 key!828))))

(declare-fun b!157893 () Bool)

(assert (=> b!157893 (= e!103426 Undefined!303)))

(declare-fun d!51029 () Bool)

(declare-fun lt!81787 () SeekEntryResult!303)

(assert (=> d!51029 (and (or ((_ is Undefined!303) lt!81787) (not ((_ is Found!303) lt!81787)) (and (bvsge (index!3381 lt!81787) #b00000000000000000000000000000000) (bvslt (index!3381 lt!81787) (size!2930 (_keys!4964 thiss!1248))))) (or ((_ is Undefined!303) lt!81787) ((_ is Found!303) lt!81787) (not ((_ is MissingZero!303) lt!81787)) (and (bvsge (index!3380 lt!81787) #b00000000000000000000000000000000) (bvslt (index!3380 lt!81787) (size!2930 (_keys!4964 thiss!1248))))) (or ((_ is Undefined!303) lt!81787) ((_ is Found!303) lt!81787) ((_ is MissingZero!303) lt!81787) (not ((_ is MissingVacant!303) lt!81787)) (and (bvsge (index!3383 lt!81787) #b00000000000000000000000000000000) (bvslt (index!3383 lt!81787) (size!2930 (_keys!4964 thiss!1248))))) (or ((_ is Undefined!303) lt!81787) (ite ((_ is Found!303) lt!81787) (= (select (arr!2650 (_keys!4964 thiss!1248)) (index!3381 lt!81787)) key!828) (ite ((_ is MissingZero!303) lt!81787) (= (select (arr!2650 (_keys!4964 thiss!1248)) (index!3380 lt!81787)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!303) lt!81787) (= (select (arr!2650 (_keys!4964 thiss!1248)) (index!3383 lt!81787)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!51029 (= lt!81787 e!103426)))

(declare-fun c!29714 () Bool)

(assert (=> d!51029 (= c!29714 (and ((_ is Intermediate!303) lt!81788) (undefined!1115 lt!81788)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5596 (_ BitVec 32)) SeekEntryResult!303)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!51029 (= lt!81788 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!7681 thiss!1248)) key!828 (_keys!4964 thiss!1248) (mask!7681 thiss!1248)))))

(assert (=> d!51029 (validMask!0 (mask!7681 thiss!1248))))

(assert (=> d!51029 (= (seekEntryOrOpen!0 key!828 (_keys!4964 thiss!1248) (mask!7681 thiss!1248)) lt!81787)))

(declare-fun b!157894 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5596 (_ BitVec 32)) SeekEntryResult!303)

(assert (=> b!157894 (= e!103428 (seekKeyOrZeroReturnVacant!0 (x!17419 lt!81788) (index!3382 lt!81788) (index!3382 lt!81788) key!828 (_keys!4964 thiss!1248) (mask!7681 thiss!1248)))))

(declare-fun b!157895 () Bool)

(assert (=> b!157895 (= e!103427 (Found!303 (index!3382 lt!81788)))))

(assert (= (and d!51029 c!29714) b!157893))

(assert (= (and d!51029 (not c!29714)) b!157892))

(assert (= (and b!157892 c!29713) b!157895))

(assert (= (and b!157892 (not c!29713)) b!157891))

(assert (= (and b!157891 c!29715) b!157890))

(assert (= (and b!157891 (not c!29715)) b!157894))

(declare-fun m!190903 () Bool)

(assert (=> b!157892 m!190903))

(declare-fun m!190905 () Bool)

(assert (=> d!51029 m!190905))

(declare-fun m!190907 () Bool)

(assert (=> d!51029 m!190907))

(declare-fun m!190909 () Bool)

(assert (=> d!51029 m!190909))

(declare-fun m!190911 () Bool)

(assert (=> d!51029 m!190911))

(assert (=> d!51029 m!190873))

(assert (=> d!51029 m!190907))

(declare-fun m!190913 () Bool)

(assert (=> d!51029 m!190913))

(declare-fun m!190915 () Bool)

(assert (=> b!157894 m!190915))

(assert (=> b!157843 d!51029))

(declare-fun d!51031 () Bool)

(assert (=> d!51031 (= (array_inv!1677 (_keys!4964 thiss!1248)) (bvsge (size!2930 (_keys!4964 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!157842 d!51031))

(declare-fun d!51033 () Bool)

(assert (=> d!51033 (= (array_inv!1678 (_values!3169 thiss!1248)) (bvsge (size!2931 (_values!3169 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!157842 d!51033))

(declare-fun b!157903 () Bool)

(declare-fun e!103433 () Bool)

(assert (=> b!157903 (= e!103433 tp_is_empty!3267)))

(declare-fun mapNonEmpty!5566 () Bool)

(declare-fun mapRes!5566 () Bool)

(declare-fun tp!12946 () Bool)

(declare-fun e!103434 () Bool)

(assert (=> mapNonEmpty!5566 (= mapRes!5566 (and tp!12946 e!103434))))

(declare-fun mapRest!5566 () (Array (_ BitVec 32) ValueCell!1290))

(declare-fun mapKey!5566 () (_ BitVec 32))

(declare-fun mapValue!5566 () ValueCell!1290)

(assert (=> mapNonEmpty!5566 (= mapRest!5560 (store mapRest!5566 mapKey!5566 mapValue!5566))))

(declare-fun condMapEmpty!5566 () Bool)

(declare-fun mapDefault!5566 () ValueCell!1290)

(assert (=> mapNonEmpty!5560 (= condMapEmpty!5566 (= mapRest!5560 ((as const (Array (_ BitVec 32) ValueCell!1290)) mapDefault!5566)))))

(assert (=> mapNonEmpty!5560 (= tp!12937 (and e!103433 mapRes!5566))))

(declare-fun b!157902 () Bool)

(assert (=> b!157902 (= e!103434 tp_is_empty!3267)))

(declare-fun mapIsEmpty!5566 () Bool)

(assert (=> mapIsEmpty!5566 mapRes!5566))

(assert (= (and mapNonEmpty!5560 condMapEmpty!5566) mapIsEmpty!5566))

(assert (= (and mapNonEmpty!5560 (not condMapEmpty!5566)) mapNonEmpty!5566))

(assert (= (and mapNonEmpty!5566 ((_ is ValueCellFull!1290) mapValue!5566)) b!157902))

(assert (= (and mapNonEmpty!5560 ((_ is ValueCellFull!1290) mapDefault!5566)) b!157903))

(declare-fun m!190917 () Bool)

(assert (=> mapNonEmpty!5566 m!190917))

(check-sat (not d!51029) (not d!51027) b_and!9897 (not b!157894) (not b!157877) (not b!157875) (not mapNonEmpty!5566) (not b!157876) tp_is_empty!3267 (not b_next!3465))
(check-sat b_and!9897 (not b_next!3465))
(get-model)

(declare-fun b!157913 () Bool)

(declare-fun res!74635 () Bool)

(declare-fun e!103437 () Bool)

(assert (=> b!157913 (=> (not res!74635) (not e!103437))))

(declare-fun size!2934 (LongMapFixedSize!1488) (_ BitVec 32))

(assert (=> b!157913 (= res!74635 (bvsge (size!2934 thiss!1248) (_size!793 thiss!1248)))))

(declare-fun d!51035 () Bool)

(declare-fun res!74633 () Bool)

(assert (=> d!51035 (=> (not res!74633) (not e!103437))))

(assert (=> d!51035 (= res!74633 (validMask!0 (mask!7681 thiss!1248)))))

(assert (=> d!51035 (= (simpleValid!109 thiss!1248) e!103437)))

(declare-fun b!157912 () Bool)

(declare-fun res!74634 () Bool)

(assert (=> b!157912 (=> (not res!74634) (not e!103437))))

(assert (=> b!157912 (= res!74634 (and (= (size!2931 (_values!3169 thiss!1248)) (bvadd (mask!7681 thiss!1248) #b00000000000000000000000000000001)) (= (size!2930 (_keys!4964 thiss!1248)) (size!2931 (_values!3169 thiss!1248))) (bvsge (_size!793 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!793 thiss!1248) (bvadd (mask!7681 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!157914 () Bool)

(declare-fun res!74632 () Bool)

(assert (=> b!157914 (=> (not res!74632) (not e!103437))))

(assert (=> b!157914 (= res!74632 (= (size!2934 thiss!1248) (bvadd (_size!793 thiss!1248) (bvsdiv (bvadd (extraKeys!2927 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!157915 () Bool)

(assert (=> b!157915 (= e!103437 (and (bvsge (extraKeys!2927 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2927 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!793 thiss!1248) #b00000000000000000000000000000000)))))

(assert (= (and d!51035 res!74633) b!157912))

(assert (= (and b!157912 res!74634) b!157913))

(assert (= (and b!157913 res!74635) b!157914))

(assert (= (and b!157914 res!74632) b!157915))

(declare-fun m!190919 () Bool)

(assert (=> b!157913 m!190919))

(assert (=> d!51035 m!190873))

(assert (=> b!157914 m!190919))

(assert (=> d!51027 d!51035))

(declare-fun b!157926 () Bool)

(declare-fun e!103449 () Bool)

(declare-fun e!103446 () Bool)

(assert (=> b!157926 (= e!103449 e!103446)))

(declare-fun res!74643 () Bool)

(assert (=> b!157926 (=> (not res!74643) (not e!103446))))

(declare-fun e!103448 () Bool)

(assert (=> b!157926 (= res!74643 (not e!103448))))

(declare-fun res!74642 () Bool)

(assert (=> b!157926 (=> (not res!74642) (not e!103448))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!157926 (= res!74642 (validKeyInArray!0 (select (arr!2650 (_keys!4964 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!51037 () Bool)

(declare-fun res!74644 () Bool)

(assert (=> d!51037 (=> res!74644 e!103449)))

(assert (=> d!51037 (= res!74644 (bvsge #b00000000000000000000000000000000 (size!2930 (_keys!4964 thiss!1248))))))

(assert (=> d!51037 (= (arrayNoDuplicates!0 (_keys!4964 thiss!1248) #b00000000000000000000000000000000 Nil!1898) e!103449)))

(declare-fun b!157927 () Bool)

(declare-fun e!103447 () Bool)

(assert (=> b!157927 (= e!103446 e!103447)))

(declare-fun c!29718 () Bool)

(assert (=> b!157927 (= c!29718 (validKeyInArray!0 (select (arr!2650 (_keys!4964 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17231 () Bool)

(declare-fun call!17234 () Bool)

(assert (=> bm!17231 (= call!17234 (arrayNoDuplicates!0 (_keys!4964 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!29718 (Cons!1897 (select (arr!2650 (_keys!4964 thiss!1248)) #b00000000000000000000000000000000) Nil!1898) Nil!1898)))))

(declare-fun b!157928 () Bool)

(assert (=> b!157928 (= e!103447 call!17234)))

(declare-fun b!157929 () Bool)

(assert (=> b!157929 (= e!103447 call!17234)))

(declare-fun b!157930 () Bool)

(declare-fun contains!973 (List!1901 (_ BitVec 64)) Bool)

(assert (=> b!157930 (= e!103448 (contains!973 Nil!1898 (select (arr!2650 (_keys!4964 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!51037 (not res!74644)) b!157926))

(assert (= (and b!157926 res!74642) b!157930))

(assert (= (and b!157926 res!74643) b!157927))

(assert (= (and b!157927 c!29718) b!157929))

(assert (= (and b!157927 (not c!29718)) b!157928))

(assert (= (or b!157929 b!157928) bm!17231))

(declare-fun m!190921 () Bool)

(assert (=> b!157926 m!190921))

(assert (=> b!157926 m!190921))

(declare-fun m!190923 () Bool)

(assert (=> b!157926 m!190923))

(assert (=> b!157927 m!190921))

(assert (=> b!157927 m!190921))

(assert (=> b!157927 m!190923))

(assert (=> bm!17231 m!190921))

(declare-fun m!190925 () Bool)

(assert (=> bm!17231 m!190925))

(assert (=> b!157930 m!190921))

(assert (=> b!157930 m!190921))

(declare-fun m!190927 () Bool)

(assert (=> b!157930 m!190927))

(assert (=> b!157877 d!51037))

(declare-fun b!157939 () Bool)

(declare-fun e!103458 () Bool)

(declare-fun call!17237 () Bool)

(assert (=> b!157939 (= e!103458 call!17237)))

(declare-fun b!157940 () Bool)

(declare-fun e!103457 () Bool)

(assert (=> b!157940 (= e!103457 call!17237)))

(declare-fun b!157942 () Bool)

(declare-fun e!103456 () Bool)

(assert (=> b!157942 (= e!103456 e!103458)))

(declare-fun c!29721 () Bool)

(assert (=> b!157942 (= c!29721 (validKeyInArray!0 (select (arr!2650 (_keys!4964 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17234 () Bool)

(assert (=> bm!17234 (= call!17237 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4964 thiss!1248) (mask!7681 thiss!1248)))))

(declare-fun b!157941 () Bool)

(assert (=> b!157941 (= e!103458 e!103457)))

(declare-fun lt!81795 () (_ BitVec 64))

(assert (=> b!157941 (= lt!81795 (select (arr!2650 (_keys!4964 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!4980 0))(
  ( (Unit!4981) )
))
(declare-fun lt!81796 () Unit!4980)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!5596 (_ BitVec 64) (_ BitVec 32)) Unit!4980)

(assert (=> b!157941 (= lt!81796 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4964 thiss!1248) lt!81795 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!5596 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!157941 (arrayContainsKey!0 (_keys!4964 thiss!1248) lt!81795 #b00000000000000000000000000000000)))

(declare-fun lt!81797 () Unit!4980)

(assert (=> b!157941 (= lt!81797 lt!81796)))

(declare-fun res!74650 () Bool)

(assert (=> b!157941 (= res!74650 (= (seekEntryOrOpen!0 (select (arr!2650 (_keys!4964 thiss!1248)) #b00000000000000000000000000000000) (_keys!4964 thiss!1248) (mask!7681 thiss!1248)) (Found!303 #b00000000000000000000000000000000)))))

(assert (=> b!157941 (=> (not res!74650) (not e!103457))))

(declare-fun d!51039 () Bool)

(declare-fun res!74649 () Bool)

(assert (=> d!51039 (=> res!74649 e!103456)))

(assert (=> d!51039 (= res!74649 (bvsge #b00000000000000000000000000000000 (size!2930 (_keys!4964 thiss!1248))))))

(assert (=> d!51039 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4964 thiss!1248) (mask!7681 thiss!1248)) e!103456)))

(assert (= (and d!51039 (not res!74649)) b!157942))

(assert (= (and b!157942 c!29721) b!157941))

(assert (= (and b!157942 (not c!29721)) b!157939))

(assert (= (and b!157941 res!74650) b!157940))

(assert (= (or b!157940 b!157939) bm!17234))

(assert (=> b!157942 m!190921))

(assert (=> b!157942 m!190921))

(assert (=> b!157942 m!190923))

(declare-fun m!190929 () Bool)

(assert (=> bm!17234 m!190929))

(assert (=> b!157941 m!190921))

(declare-fun m!190931 () Bool)

(assert (=> b!157941 m!190931))

(declare-fun m!190933 () Bool)

(assert (=> b!157941 m!190933))

(assert (=> b!157941 m!190921))

(declare-fun m!190935 () Bool)

(assert (=> b!157941 m!190935))

(assert (=> b!157876 d!51039))

(declare-fun d!51041 () Bool)

(declare-fun e!103472 () Bool)

(assert (=> d!51041 e!103472))

(declare-fun c!29728 () Bool)

(declare-fun lt!81802 () SeekEntryResult!303)

(assert (=> d!51041 (= c!29728 (and ((_ is Intermediate!303) lt!81802) (undefined!1115 lt!81802)))))

(declare-fun e!103471 () SeekEntryResult!303)

(assert (=> d!51041 (= lt!81802 e!103471)))

(declare-fun c!29730 () Bool)

(assert (=> d!51041 (= c!29730 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!81803 () (_ BitVec 64))

(assert (=> d!51041 (= lt!81803 (select (arr!2650 (_keys!4964 thiss!1248)) (toIndex!0 key!828 (mask!7681 thiss!1248))))))

(assert (=> d!51041 (validMask!0 (mask!7681 thiss!1248))))

(assert (=> d!51041 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!7681 thiss!1248)) key!828 (_keys!4964 thiss!1248) (mask!7681 thiss!1248)) lt!81802)))

(declare-fun b!157961 () Bool)

(assert (=> b!157961 (and (bvsge (index!3382 lt!81802) #b00000000000000000000000000000000) (bvslt (index!3382 lt!81802) (size!2930 (_keys!4964 thiss!1248))))))

(declare-fun e!103470 () Bool)

(assert (=> b!157961 (= e!103470 (= (select (arr!2650 (_keys!4964 thiss!1248)) (index!3382 lt!81802)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!157962 () Bool)

(declare-fun e!103469 () SeekEntryResult!303)

(assert (=> b!157962 (= e!103469 (Intermediate!303 false (toIndex!0 key!828 (mask!7681 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!157963 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!157963 (= e!103469 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!7681 thiss!1248)) #b00000000000000000000000000000000 (mask!7681 thiss!1248)) key!828 (_keys!4964 thiss!1248) (mask!7681 thiss!1248)))))

(declare-fun b!157964 () Bool)

(assert (=> b!157964 (= e!103472 (bvsge (x!17419 lt!81802) #b01111111111111111111111111111110))))

(declare-fun b!157965 () Bool)

(assert (=> b!157965 (= e!103471 (Intermediate!303 true (toIndex!0 key!828 (mask!7681 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!157966 () Bool)

(assert (=> b!157966 (and (bvsge (index!3382 lt!81802) #b00000000000000000000000000000000) (bvslt (index!3382 lt!81802) (size!2930 (_keys!4964 thiss!1248))))))

(declare-fun res!74659 () Bool)

(assert (=> b!157966 (= res!74659 (= (select (arr!2650 (_keys!4964 thiss!1248)) (index!3382 lt!81802)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!157966 (=> res!74659 e!103470)))

(declare-fun b!157967 () Bool)

(assert (=> b!157967 (and (bvsge (index!3382 lt!81802) #b00000000000000000000000000000000) (bvslt (index!3382 lt!81802) (size!2930 (_keys!4964 thiss!1248))))))

(declare-fun res!74658 () Bool)

(assert (=> b!157967 (= res!74658 (= (select (arr!2650 (_keys!4964 thiss!1248)) (index!3382 lt!81802)) key!828))))

(assert (=> b!157967 (=> res!74658 e!103470)))

(declare-fun e!103473 () Bool)

(assert (=> b!157967 (= e!103473 e!103470)))

(declare-fun b!157968 () Bool)

(assert (=> b!157968 (= e!103471 e!103469)))

(declare-fun c!29729 () Bool)

(assert (=> b!157968 (= c!29729 (or (= lt!81803 key!828) (= (bvadd lt!81803 lt!81803) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!157969 () Bool)

(assert (=> b!157969 (= e!103472 e!103473)))

(declare-fun res!74657 () Bool)

(assert (=> b!157969 (= res!74657 (and ((_ is Intermediate!303) lt!81802) (not (undefined!1115 lt!81802)) (bvslt (x!17419 lt!81802) #b01111111111111111111111111111110) (bvsge (x!17419 lt!81802) #b00000000000000000000000000000000) (bvsge (x!17419 lt!81802) #b00000000000000000000000000000000)))))

(assert (=> b!157969 (=> (not res!74657) (not e!103473))))

(assert (= (and d!51041 c!29730) b!157965))

(assert (= (and d!51041 (not c!29730)) b!157968))

(assert (= (and b!157968 c!29729) b!157962))

(assert (= (and b!157968 (not c!29729)) b!157963))

(assert (= (and d!51041 c!29728) b!157964))

(assert (= (and d!51041 (not c!29728)) b!157969))

(assert (= (and b!157969 res!74657) b!157967))

(assert (= (and b!157967 (not res!74658)) b!157966))

(assert (= (and b!157966 (not res!74659)) b!157961))

(declare-fun m!190937 () Bool)

(assert (=> b!157966 m!190937))

(assert (=> d!51041 m!190907))

(declare-fun m!190939 () Bool)

(assert (=> d!51041 m!190939))

(assert (=> d!51041 m!190873))

(assert (=> b!157967 m!190937))

(assert (=> b!157961 m!190937))

(assert (=> b!157963 m!190907))

(declare-fun m!190941 () Bool)

(assert (=> b!157963 m!190941))

(assert (=> b!157963 m!190941))

(declare-fun m!190943 () Bool)

(assert (=> b!157963 m!190943))

(assert (=> d!51029 d!51041))

(declare-fun d!51043 () Bool)

(declare-fun lt!81809 () (_ BitVec 32))

(declare-fun lt!81808 () (_ BitVec 32))

(assert (=> d!51043 (= lt!81809 (bvmul (bvxor lt!81808 (bvlshr lt!81808 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!51043 (= lt!81808 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!51043 (and (bvsge (mask!7681 thiss!1248) #b00000000000000000000000000000000) (let ((res!74660 (let ((h!2507 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!17436 (bvmul (bvxor h!2507 (bvlshr h!2507 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!17436 (bvlshr x!17436 #b00000000000000000000000000001101)) (mask!7681 thiss!1248)))))) (and (bvslt res!74660 (bvadd (mask!7681 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!74660 #b00000000000000000000000000000000))))))

(assert (=> d!51043 (= (toIndex!0 key!828 (mask!7681 thiss!1248)) (bvand (bvxor lt!81809 (bvlshr lt!81809 #b00000000000000000000000000001101)) (mask!7681 thiss!1248)))))

(assert (=> d!51029 d!51043))

(assert (=> d!51029 d!51025))

(declare-fun b!157982 () Bool)

(declare-fun e!103480 () SeekEntryResult!303)

(assert (=> b!157982 (= e!103480 (Found!303 (index!3382 lt!81788)))))

(declare-fun b!157983 () Bool)

(declare-fun c!29739 () Bool)

(declare-fun lt!81815 () (_ BitVec 64))

(assert (=> b!157983 (= c!29739 (= lt!81815 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!103482 () SeekEntryResult!303)

(assert (=> b!157983 (= e!103480 e!103482)))

(declare-fun b!157984 () Bool)

(assert (=> b!157984 (= e!103482 (seekKeyOrZeroReturnVacant!0 (bvadd (x!17419 lt!81788) #b00000000000000000000000000000001) (nextIndex!0 (index!3382 lt!81788) (x!17419 lt!81788) (mask!7681 thiss!1248)) (index!3382 lt!81788) key!828 (_keys!4964 thiss!1248) (mask!7681 thiss!1248)))))

(declare-fun b!157985 () Bool)

(assert (=> b!157985 (= e!103482 (MissingVacant!303 (index!3382 lt!81788)))))

(declare-fun lt!81814 () SeekEntryResult!303)

(declare-fun d!51045 () Bool)

(assert (=> d!51045 (and (or ((_ is Undefined!303) lt!81814) (not ((_ is Found!303) lt!81814)) (and (bvsge (index!3381 lt!81814) #b00000000000000000000000000000000) (bvslt (index!3381 lt!81814) (size!2930 (_keys!4964 thiss!1248))))) (or ((_ is Undefined!303) lt!81814) ((_ is Found!303) lt!81814) (not ((_ is MissingVacant!303) lt!81814)) (not (= (index!3383 lt!81814) (index!3382 lt!81788))) (and (bvsge (index!3383 lt!81814) #b00000000000000000000000000000000) (bvslt (index!3383 lt!81814) (size!2930 (_keys!4964 thiss!1248))))) (or ((_ is Undefined!303) lt!81814) (ite ((_ is Found!303) lt!81814) (= (select (arr!2650 (_keys!4964 thiss!1248)) (index!3381 lt!81814)) key!828) (and ((_ is MissingVacant!303) lt!81814) (= (index!3383 lt!81814) (index!3382 lt!81788)) (= (select (arr!2650 (_keys!4964 thiss!1248)) (index!3383 lt!81814)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!103481 () SeekEntryResult!303)

(assert (=> d!51045 (= lt!81814 e!103481)))

(declare-fun c!29737 () Bool)

(assert (=> d!51045 (= c!29737 (bvsge (x!17419 lt!81788) #b01111111111111111111111111111110))))

(assert (=> d!51045 (= lt!81815 (select (arr!2650 (_keys!4964 thiss!1248)) (index!3382 lt!81788)))))

(assert (=> d!51045 (validMask!0 (mask!7681 thiss!1248))))

(assert (=> d!51045 (= (seekKeyOrZeroReturnVacant!0 (x!17419 lt!81788) (index!3382 lt!81788) (index!3382 lt!81788) key!828 (_keys!4964 thiss!1248) (mask!7681 thiss!1248)) lt!81814)))

(declare-fun b!157986 () Bool)

(assert (=> b!157986 (= e!103481 Undefined!303)))

(declare-fun b!157987 () Bool)

(assert (=> b!157987 (= e!103481 e!103480)))

(declare-fun c!29738 () Bool)

(assert (=> b!157987 (= c!29738 (= lt!81815 key!828))))

(assert (= (and d!51045 c!29737) b!157986))

(assert (= (and d!51045 (not c!29737)) b!157987))

(assert (= (and b!157987 c!29738) b!157982))

(assert (= (and b!157987 (not c!29738)) b!157983))

(assert (= (and b!157983 c!29739) b!157985))

(assert (= (and b!157983 (not c!29739)) b!157984))

(declare-fun m!190945 () Bool)

(assert (=> b!157984 m!190945))

(assert (=> b!157984 m!190945))

(declare-fun m!190947 () Bool)

(assert (=> b!157984 m!190947))

(declare-fun m!190949 () Bool)

(assert (=> d!51045 m!190949))

(declare-fun m!190951 () Bool)

(assert (=> d!51045 m!190951))

(assert (=> d!51045 m!190903))

(assert (=> d!51045 m!190873))

(assert (=> b!157894 d!51045))

(declare-fun b!157996 () Bool)

(declare-fun e!103488 () (_ BitVec 32))

(declare-fun e!103487 () (_ BitVec 32))

(assert (=> b!157996 (= e!103488 e!103487)))

(declare-fun c!29745 () Bool)

(assert (=> b!157996 (= c!29745 (validKeyInArray!0 (select (arr!2650 (_keys!4964 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!157997 () Bool)

(declare-fun call!17240 () (_ BitVec 32))

(assert (=> b!157997 (= e!103487 call!17240)))

(declare-fun d!51047 () Bool)

(declare-fun lt!81818 () (_ BitVec 32))

(assert (=> d!51047 (and (bvsge lt!81818 #b00000000000000000000000000000000) (bvsle lt!81818 (bvsub (size!2930 (_keys!4964 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!51047 (= lt!81818 e!103488)))

(declare-fun c!29744 () Bool)

(assert (=> d!51047 (= c!29744 (bvsge #b00000000000000000000000000000000 (size!2930 (_keys!4964 thiss!1248))))))

(assert (=> d!51047 (and (bvsle #b00000000000000000000000000000000 (size!2930 (_keys!4964 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2930 (_keys!4964 thiss!1248)) (size!2930 (_keys!4964 thiss!1248))))))

(assert (=> d!51047 (= (arrayCountValidKeys!0 (_keys!4964 thiss!1248) #b00000000000000000000000000000000 (size!2930 (_keys!4964 thiss!1248))) lt!81818)))

(declare-fun bm!17237 () Bool)

(assert (=> bm!17237 (= call!17240 (arrayCountValidKeys!0 (_keys!4964 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2930 (_keys!4964 thiss!1248))))))

(declare-fun b!157998 () Bool)

(assert (=> b!157998 (= e!103488 #b00000000000000000000000000000000)))

(declare-fun b!157999 () Bool)

(assert (=> b!157999 (= e!103487 (bvadd #b00000000000000000000000000000001 call!17240))))

(assert (= (and d!51047 c!29744) b!157998))

(assert (= (and d!51047 (not c!29744)) b!157996))

(assert (= (and b!157996 c!29745) b!157999))

(assert (= (and b!157996 (not c!29745)) b!157997))

(assert (= (or b!157999 b!157997) bm!17237))

(assert (=> b!157996 m!190921))

(assert (=> b!157996 m!190921))

(assert (=> b!157996 m!190923))

(declare-fun m!190953 () Bool)

(assert (=> bm!17237 m!190953))

(assert (=> b!157875 d!51047))

(declare-fun b!158001 () Bool)

(declare-fun e!103489 () Bool)

(assert (=> b!158001 (= e!103489 tp_is_empty!3267)))

(declare-fun mapNonEmpty!5567 () Bool)

(declare-fun mapRes!5567 () Bool)

(declare-fun tp!12947 () Bool)

(declare-fun e!103490 () Bool)

(assert (=> mapNonEmpty!5567 (= mapRes!5567 (and tp!12947 e!103490))))

(declare-fun mapRest!5567 () (Array (_ BitVec 32) ValueCell!1290))

(declare-fun mapKey!5567 () (_ BitVec 32))

(declare-fun mapValue!5567 () ValueCell!1290)

(assert (=> mapNonEmpty!5567 (= mapRest!5566 (store mapRest!5567 mapKey!5567 mapValue!5567))))

(declare-fun condMapEmpty!5567 () Bool)

(declare-fun mapDefault!5567 () ValueCell!1290)

(assert (=> mapNonEmpty!5566 (= condMapEmpty!5567 (= mapRest!5566 ((as const (Array (_ BitVec 32) ValueCell!1290)) mapDefault!5567)))))

(assert (=> mapNonEmpty!5566 (= tp!12946 (and e!103489 mapRes!5567))))

(declare-fun b!158000 () Bool)

(assert (=> b!158000 (= e!103490 tp_is_empty!3267)))

(declare-fun mapIsEmpty!5567 () Bool)

(assert (=> mapIsEmpty!5567 mapRes!5567))

(assert (= (and mapNonEmpty!5566 condMapEmpty!5567) mapIsEmpty!5567))

(assert (= (and mapNonEmpty!5566 (not condMapEmpty!5567)) mapNonEmpty!5567))

(assert (= (and mapNonEmpty!5567 ((_ is ValueCellFull!1290) mapValue!5567)) b!158000))

(assert (= (and mapNonEmpty!5566 ((_ is ValueCellFull!1290) mapDefault!5567)) b!158001))

(declare-fun m!190955 () Bool)

(assert (=> mapNonEmpty!5567 m!190955))

(check-sat (not b!157996) (not bm!17237) (not b!157927) (not b!157941) b_and!9897 (not b!157926) (not b!157913) (not bm!17234) (not d!51045) (not d!51041) (not b!157984) (not mapNonEmpty!5567) (not b!157914) (not d!51035) (not b!157942) (not b!157930) (not b!157963) (not b_next!3465) (not bm!17231) tp_is_empty!3267)
(check-sat b_and!9897 (not b_next!3465))
