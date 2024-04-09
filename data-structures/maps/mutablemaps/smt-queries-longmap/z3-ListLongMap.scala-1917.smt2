; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34120 () Bool)

(assert start!34120)

(declare-fun b_free!7173 () Bool)

(declare-fun b_next!7173 () Bool)

(assert (=> start!34120 (= b_free!7173 (not b_next!7173))))

(declare-fun tp!25047 () Bool)

(declare-fun b_and!14387 () Bool)

(assert (=> start!34120 (= tp!25047 b_and!14387)))

(declare-fun b!339761 () Bool)

(declare-fun res!187738 () Bool)

(declare-fun e!208454 () Bool)

(assert (=> b!339761 (=> (not res!187738) (not e!208454))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10477 0))(
  ( (V!10478 (val!3607 Int)) )
))
(declare-datatypes ((ValueCell!3219 0))(
  ( (ValueCellFull!3219 (v!5773 V!10477)) (EmptyCell!3219) )
))
(declare-datatypes ((array!17821 0))(
  ( (array!17822 (arr!8430 (Array (_ BitVec 32) ValueCell!3219)) (size!8782 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17821)

(declare-datatypes ((array!17823 0))(
  ( (array!17824 (arr!8431 (Array (_ BitVec 32) (_ BitVec 64))) (size!8783 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17823)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!339761 (= res!187738 (and (= (size!8782 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8783 _keys!1895) (size!8782 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!339762 () Bool)

(declare-datatypes ((SeekEntryResult!3259 0))(
  ( (MissingZero!3259 (index!15215 (_ BitVec 32))) (Found!3259 (index!15216 (_ BitVec 32))) (Intermediate!3259 (undefined!4071 Bool) (index!15217 (_ BitVec 32)) (x!33852 (_ BitVec 32))) (Undefined!3259) (MissingVacant!3259 (index!15218 (_ BitVec 32))) )
))
(declare-fun lt!161334 () SeekEntryResult!3259)

(get-info :version)

(assert (=> b!339762 (= e!208454 (and (not ((_ is Found!3259) lt!161334)) (not ((_ is MissingZero!3259) lt!161334)) ((_ is MissingVacant!3259) lt!161334) (bvslt #b00000000000000000000000000000000 (size!8783 _keys!1895)) (bvsge (size!8783 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17823 (_ BitVec 32)) SeekEntryResult!3259)

(assert (=> b!339762 (= lt!161334 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!339763 () Bool)

(declare-fun res!187734 () Bool)

(assert (=> b!339763 (=> (not res!187734) (not e!208454))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17823 (_ BitVec 32)) Bool)

(assert (=> b!339763 (= res!187734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!339764 () Bool)

(declare-fun res!187737 () Bool)

(assert (=> b!339764 (=> (not res!187737) (not e!208454))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!339764 (= res!187737 (validKeyInArray!0 k0!1348))))

(declare-fun res!187736 () Bool)

(assert (=> start!34120 (=> (not res!187736) (not e!208454))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34120 (= res!187736 (validMask!0 mask!2385))))

(assert (=> start!34120 e!208454))

(assert (=> start!34120 true))

(declare-fun tp_is_empty!7125 () Bool)

(assert (=> start!34120 tp_is_empty!7125))

(assert (=> start!34120 tp!25047))

(declare-fun e!208455 () Bool)

(declare-fun array_inv!6238 (array!17821) Bool)

(assert (=> start!34120 (and (array_inv!6238 _values!1525) e!208455)))

(declare-fun array_inv!6239 (array!17823) Bool)

(assert (=> start!34120 (array_inv!6239 _keys!1895)))

(declare-fun b!339765 () Bool)

(declare-fun res!187739 () Bool)

(assert (=> b!339765 (=> (not res!187739) (not e!208454))))

(declare-datatypes ((List!4868 0))(
  ( (Nil!4865) (Cons!4864 (h!5720 (_ BitVec 64)) (t!9980 List!4868)) )
))
(declare-fun arrayNoDuplicates!0 (array!17823 (_ BitVec 32) List!4868) Bool)

(assert (=> b!339765 (= res!187739 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4865))))

(declare-fun b!339766 () Bool)

(declare-fun e!208452 () Bool)

(assert (=> b!339766 (= e!208452 tp_is_empty!7125)))

(declare-fun mapIsEmpty!12108 () Bool)

(declare-fun mapRes!12108 () Bool)

(assert (=> mapIsEmpty!12108 mapRes!12108))

(declare-fun mapNonEmpty!12108 () Bool)

(declare-fun tp!25046 () Bool)

(assert (=> mapNonEmpty!12108 (= mapRes!12108 (and tp!25046 e!208452))))

(declare-fun mapKey!12108 () (_ BitVec 32))

(declare-fun mapValue!12108 () ValueCell!3219)

(declare-fun mapRest!12108 () (Array (_ BitVec 32) ValueCell!3219))

(assert (=> mapNonEmpty!12108 (= (arr!8430 _values!1525) (store mapRest!12108 mapKey!12108 mapValue!12108))))

(declare-fun b!339767 () Bool)

(declare-fun res!187735 () Bool)

(assert (=> b!339767 (=> (not res!187735) (not e!208454))))

(declare-fun zeroValue!1467 () V!10477)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10477)

(declare-datatypes ((tuple2!5224 0))(
  ( (tuple2!5225 (_1!2622 (_ BitVec 64)) (_2!2622 V!10477)) )
))
(declare-datatypes ((List!4869 0))(
  ( (Nil!4866) (Cons!4865 (h!5721 tuple2!5224) (t!9981 List!4869)) )
))
(declare-datatypes ((ListLongMap!4151 0))(
  ( (ListLongMap!4152 (toList!2091 List!4869)) )
))
(declare-fun contains!2139 (ListLongMap!4151 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1611 (array!17823 array!17821 (_ BitVec 32) (_ BitVec 32) V!10477 V!10477 (_ BitVec 32) Int) ListLongMap!4151)

(assert (=> b!339767 (= res!187735 (not (contains!2139 (getCurrentListMap!1611 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!339768 () Bool)

(declare-fun e!208451 () Bool)

(assert (=> b!339768 (= e!208455 (and e!208451 mapRes!12108))))

(declare-fun condMapEmpty!12108 () Bool)

(declare-fun mapDefault!12108 () ValueCell!3219)

(assert (=> b!339768 (= condMapEmpty!12108 (= (arr!8430 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3219)) mapDefault!12108)))))

(declare-fun b!339769 () Bool)

(assert (=> b!339769 (= e!208451 tp_is_empty!7125)))

(assert (= (and start!34120 res!187736) b!339761))

(assert (= (and b!339761 res!187738) b!339763))

(assert (= (and b!339763 res!187734) b!339765))

(assert (= (and b!339765 res!187739) b!339764))

(assert (= (and b!339764 res!187737) b!339767))

(assert (= (and b!339767 res!187735) b!339762))

(assert (= (and b!339768 condMapEmpty!12108) mapIsEmpty!12108))

(assert (= (and b!339768 (not condMapEmpty!12108)) mapNonEmpty!12108))

(assert (= (and mapNonEmpty!12108 ((_ is ValueCellFull!3219) mapValue!12108)) b!339766))

(assert (= (and b!339768 ((_ is ValueCellFull!3219) mapDefault!12108)) b!339769))

(assert (= start!34120 b!339768))

(declare-fun m!342643 () Bool)

(assert (=> b!339767 m!342643))

(assert (=> b!339767 m!342643))

(declare-fun m!342645 () Bool)

(assert (=> b!339767 m!342645))

(declare-fun m!342647 () Bool)

(assert (=> b!339762 m!342647))

(declare-fun m!342649 () Bool)

(assert (=> mapNonEmpty!12108 m!342649))

(declare-fun m!342651 () Bool)

(assert (=> b!339764 m!342651))

(declare-fun m!342653 () Bool)

(assert (=> b!339765 m!342653))

(declare-fun m!342655 () Bool)

(assert (=> b!339763 m!342655))

(declare-fun m!342657 () Bool)

(assert (=> start!34120 m!342657))

(declare-fun m!342659 () Bool)

(assert (=> start!34120 m!342659))

(declare-fun m!342661 () Bool)

(assert (=> start!34120 m!342661))

(check-sat (not b!339762) (not b!339765) (not mapNonEmpty!12108) (not b_next!7173) b_and!14387 (not b!339767) (not b!339764) (not start!34120) tp_is_empty!7125 (not b!339763))
(check-sat b_and!14387 (not b_next!7173))
(get-model)

(declare-fun b!339810 () Bool)

(declare-fun e!208479 () SeekEntryResult!3259)

(declare-fun lt!161345 () SeekEntryResult!3259)

(assert (=> b!339810 (= e!208479 (MissingZero!3259 (index!15217 lt!161345)))))

(declare-fun b!339811 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17823 (_ BitVec 32)) SeekEntryResult!3259)

(assert (=> b!339811 (= e!208479 (seekKeyOrZeroReturnVacant!0 (x!33852 lt!161345) (index!15217 lt!161345) (index!15217 lt!161345) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!339812 () Bool)

(declare-fun e!208477 () SeekEntryResult!3259)

(declare-fun e!208478 () SeekEntryResult!3259)

(assert (=> b!339812 (= e!208477 e!208478)))

(declare-fun lt!161346 () (_ BitVec 64))

(assert (=> b!339812 (= lt!161346 (select (arr!8431 _keys!1895) (index!15217 lt!161345)))))

(declare-fun c!52539 () Bool)

(assert (=> b!339812 (= c!52539 (= lt!161346 k0!1348))))

(declare-fun b!339809 () Bool)

(declare-fun c!52540 () Bool)

(assert (=> b!339809 (= c!52540 (= lt!161346 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!339809 (= e!208478 e!208479)))

(declare-fun d!70755 () Bool)

(declare-fun lt!161344 () SeekEntryResult!3259)

(assert (=> d!70755 (and (or ((_ is Undefined!3259) lt!161344) (not ((_ is Found!3259) lt!161344)) (and (bvsge (index!15216 lt!161344) #b00000000000000000000000000000000) (bvslt (index!15216 lt!161344) (size!8783 _keys!1895)))) (or ((_ is Undefined!3259) lt!161344) ((_ is Found!3259) lt!161344) (not ((_ is MissingZero!3259) lt!161344)) (and (bvsge (index!15215 lt!161344) #b00000000000000000000000000000000) (bvslt (index!15215 lt!161344) (size!8783 _keys!1895)))) (or ((_ is Undefined!3259) lt!161344) ((_ is Found!3259) lt!161344) ((_ is MissingZero!3259) lt!161344) (not ((_ is MissingVacant!3259) lt!161344)) (and (bvsge (index!15218 lt!161344) #b00000000000000000000000000000000) (bvslt (index!15218 lt!161344) (size!8783 _keys!1895)))) (or ((_ is Undefined!3259) lt!161344) (ite ((_ is Found!3259) lt!161344) (= (select (arr!8431 _keys!1895) (index!15216 lt!161344)) k0!1348) (ite ((_ is MissingZero!3259) lt!161344) (= (select (arr!8431 _keys!1895) (index!15215 lt!161344)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3259) lt!161344) (= (select (arr!8431 _keys!1895) (index!15218 lt!161344)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70755 (= lt!161344 e!208477)))

(declare-fun c!52541 () Bool)

(assert (=> d!70755 (= c!52541 (and ((_ is Intermediate!3259) lt!161345) (undefined!4071 lt!161345)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17823 (_ BitVec 32)) SeekEntryResult!3259)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70755 (= lt!161345 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!70755 (validMask!0 mask!2385)))

(assert (=> d!70755 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!161344)))

(declare-fun b!339813 () Bool)

(assert (=> b!339813 (= e!208477 Undefined!3259)))

(declare-fun b!339814 () Bool)

(assert (=> b!339814 (= e!208478 (Found!3259 (index!15217 lt!161345)))))

(assert (= (and d!70755 c!52541) b!339813))

(assert (= (and d!70755 (not c!52541)) b!339812))

(assert (= (and b!339812 c!52539) b!339814))

(assert (= (and b!339812 (not c!52539)) b!339809))

(assert (= (and b!339809 c!52540) b!339810))

(assert (= (and b!339809 (not c!52540)) b!339811))

(declare-fun m!342683 () Bool)

(assert (=> b!339811 m!342683))

(declare-fun m!342685 () Bool)

(assert (=> b!339812 m!342685))

(declare-fun m!342687 () Bool)

(assert (=> d!70755 m!342687))

(declare-fun m!342689 () Bool)

(assert (=> d!70755 m!342689))

(assert (=> d!70755 m!342657))

(declare-fun m!342691 () Bool)

(assert (=> d!70755 m!342691))

(assert (=> d!70755 m!342691))

(declare-fun m!342693 () Bool)

(assert (=> d!70755 m!342693))

(declare-fun m!342695 () Bool)

(assert (=> d!70755 m!342695))

(assert (=> b!339762 d!70755))

(declare-fun d!70757 () Bool)

(assert (=> d!70757 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34120 d!70757))

(declare-fun d!70759 () Bool)

(assert (=> d!70759 (= (array_inv!6238 _values!1525) (bvsge (size!8782 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34120 d!70759))

(declare-fun d!70761 () Bool)

(assert (=> d!70761 (= (array_inv!6239 _keys!1895) (bvsge (size!8783 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34120 d!70761))

(declare-fun b!339825 () Bool)

(declare-fun e!208488 () Bool)

(declare-fun call!26510 () Bool)

(assert (=> b!339825 (= e!208488 call!26510)))

(declare-fun d!70763 () Bool)

(declare-fun res!187764 () Bool)

(declare-fun e!208489 () Bool)

(assert (=> d!70763 (=> res!187764 e!208489)))

(assert (=> d!70763 (= res!187764 (bvsge #b00000000000000000000000000000000 (size!8783 _keys!1895)))))

(assert (=> d!70763 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4865) e!208489)))

(declare-fun b!339826 () Bool)

(declare-fun e!208490 () Bool)

(assert (=> b!339826 (= e!208489 e!208490)))

(declare-fun res!187765 () Bool)

(assert (=> b!339826 (=> (not res!187765) (not e!208490))))

(declare-fun e!208491 () Bool)

(assert (=> b!339826 (= res!187765 (not e!208491))))

(declare-fun res!187766 () Bool)

(assert (=> b!339826 (=> (not res!187766) (not e!208491))))

(assert (=> b!339826 (= res!187766 (validKeyInArray!0 (select (arr!8431 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!339827 () Bool)

(assert (=> b!339827 (= e!208490 e!208488)))

(declare-fun c!52544 () Bool)

(assert (=> b!339827 (= c!52544 (validKeyInArray!0 (select (arr!8431 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!339828 () Bool)

(assert (=> b!339828 (= e!208488 call!26510)))

(declare-fun bm!26507 () Bool)

(assert (=> bm!26507 (= call!26510 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52544 (Cons!4864 (select (arr!8431 _keys!1895) #b00000000000000000000000000000000) Nil!4865) Nil!4865)))))

(declare-fun b!339829 () Bool)

(declare-fun contains!2140 (List!4868 (_ BitVec 64)) Bool)

(assert (=> b!339829 (= e!208491 (contains!2140 Nil!4865 (select (arr!8431 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!70763 (not res!187764)) b!339826))

(assert (= (and b!339826 res!187766) b!339829))

(assert (= (and b!339826 res!187765) b!339827))

(assert (= (and b!339827 c!52544) b!339825))

(assert (= (and b!339827 (not c!52544)) b!339828))

(assert (= (or b!339825 b!339828) bm!26507))

(declare-fun m!342697 () Bool)

(assert (=> b!339826 m!342697))

(assert (=> b!339826 m!342697))

(declare-fun m!342699 () Bool)

(assert (=> b!339826 m!342699))

(assert (=> b!339827 m!342697))

(assert (=> b!339827 m!342697))

(assert (=> b!339827 m!342699))

(assert (=> bm!26507 m!342697))

(declare-fun m!342701 () Bool)

(assert (=> bm!26507 m!342701))

(assert (=> b!339829 m!342697))

(assert (=> b!339829 m!342697))

(declare-fun m!342703 () Bool)

(assert (=> b!339829 m!342703))

(assert (=> b!339765 d!70763))

(declare-fun b!339838 () Bool)

(declare-fun e!208499 () Bool)

(declare-fun call!26513 () Bool)

(assert (=> b!339838 (= e!208499 call!26513)))

(declare-fun d!70765 () Bool)

(declare-fun res!187772 () Bool)

(declare-fun e!208500 () Bool)

(assert (=> d!70765 (=> res!187772 e!208500)))

(assert (=> d!70765 (= res!187772 (bvsge #b00000000000000000000000000000000 (size!8783 _keys!1895)))))

(assert (=> d!70765 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!208500)))

(declare-fun bm!26510 () Bool)

(assert (=> bm!26510 (= call!26513 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!339839 () Bool)

(declare-fun e!208498 () Bool)

(assert (=> b!339839 (= e!208498 call!26513)))

(declare-fun b!339840 () Bool)

(assert (=> b!339840 (= e!208499 e!208498)))

(declare-fun lt!161354 () (_ BitVec 64))

(assert (=> b!339840 (= lt!161354 (select (arr!8431 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10590 0))(
  ( (Unit!10591) )
))
(declare-fun lt!161355 () Unit!10590)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17823 (_ BitVec 64) (_ BitVec 32)) Unit!10590)

(assert (=> b!339840 (= lt!161355 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!161354 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!17823 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!339840 (arrayContainsKey!0 _keys!1895 lt!161354 #b00000000000000000000000000000000)))

(declare-fun lt!161353 () Unit!10590)

(assert (=> b!339840 (= lt!161353 lt!161355)))

(declare-fun res!187771 () Bool)

(assert (=> b!339840 (= res!187771 (= (seekEntryOrOpen!0 (select (arr!8431 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3259 #b00000000000000000000000000000000)))))

(assert (=> b!339840 (=> (not res!187771) (not e!208498))))

(declare-fun b!339841 () Bool)

(assert (=> b!339841 (= e!208500 e!208499)))

(declare-fun c!52547 () Bool)

(assert (=> b!339841 (= c!52547 (validKeyInArray!0 (select (arr!8431 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!70765 (not res!187772)) b!339841))

(assert (= (and b!339841 c!52547) b!339840))

(assert (= (and b!339841 (not c!52547)) b!339838))

(assert (= (and b!339840 res!187771) b!339839))

(assert (= (or b!339839 b!339838) bm!26510))

(declare-fun m!342705 () Bool)

(assert (=> bm!26510 m!342705))

(assert (=> b!339840 m!342697))

(declare-fun m!342707 () Bool)

(assert (=> b!339840 m!342707))

(declare-fun m!342709 () Bool)

(assert (=> b!339840 m!342709))

(assert (=> b!339840 m!342697))

(declare-fun m!342711 () Bool)

(assert (=> b!339840 m!342711))

(assert (=> b!339841 m!342697))

(assert (=> b!339841 m!342697))

(assert (=> b!339841 m!342699))

(assert (=> b!339763 d!70765))

(declare-fun d!70767 () Bool)

(assert (=> d!70767 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!339764 d!70767))

(declare-fun d!70769 () Bool)

(declare-fun e!208506 () Bool)

(assert (=> d!70769 e!208506))

(declare-fun res!187775 () Bool)

(assert (=> d!70769 (=> res!187775 e!208506)))

(declare-fun lt!161365 () Bool)

(assert (=> d!70769 (= res!187775 (not lt!161365))))

(declare-fun lt!161367 () Bool)

(assert (=> d!70769 (= lt!161365 lt!161367)))

(declare-fun lt!161366 () Unit!10590)

(declare-fun e!208505 () Unit!10590)

(assert (=> d!70769 (= lt!161366 e!208505)))

(declare-fun c!52550 () Bool)

(assert (=> d!70769 (= c!52550 lt!161367)))

(declare-fun containsKey!323 (List!4869 (_ BitVec 64)) Bool)

(assert (=> d!70769 (= lt!161367 (containsKey!323 (toList!2091 (getCurrentListMap!1611 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!70769 (= (contains!2139 (getCurrentListMap!1611 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!161365)))

(declare-fun b!339848 () Bool)

(declare-fun lt!161364 () Unit!10590)

(assert (=> b!339848 (= e!208505 lt!161364)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!272 (List!4869 (_ BitVec 64)) Unit!10590)

(assert (=> b!339848 (= lt!161364 (lemmaContainsKeyImpliesGetValueByKeyDefined!272 (toList!2091 (getCurrentListMap!1611 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!337 0))(
  ( (Some!336 (v!5775 V!10477)) (None!335) )
))
(declare-fun isDefined!273 (Option!337) Bool)

(declare-fun getValueByKey!331 (List!4869 (_ BitVec 64)) Option!337)

(assert (=> b!339848 (isDefined!273 (getValueByKey!331 (toList!2091 (getCurrentListMap!1611 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!339849 () Bool)

(declare-fun Unit!10592 () Unit!10590)

(assert (=> b!339849 (= e!208505 Unit!10592)))

(declare-fun b!339850 () Bool)

(assert (=> b!339850 (= e!208506 (isDefined!273 (getValueByKey!331 (toList!2091 (getCurrentListMap!1611 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!70769 c!52550) b!339848))

(assert (= (and d!70769 (not c!52550)) b!339849))

(assert (= (and d!70769 (not res!187775)) b!339850))

(declare-fun m!342713 () Bool)

(assert (=> d!70769 m!342713))

(declare-fun m!342715 () Bool)

(assert (=> b!339848 m!342715))

(declare-fun m!342717 () Bool)

(assert (=> b!339848 m!342717))

(assert (=> b!339848 m!342717))

(declare-fun m!342719 () Bool)

(assert (=> b!339848 m!342719))

(assert (=> b!339850 m!342717))

(assert (=> b!339850 m!342717))

(assert (=> b!339850 m!342719))

(assert (=> b!339767 d!70769))

(declare-fun b!339893 () Bool)

(declare-fun e!208537 () Unit!10590)

(declare-fun lt!161428 () Unit!10590)

(assert (=> b!339893 (= e!208537 lt!161428)))

(declare-fun lt!161425 () ListLongMap!4151)

(declare-fun getCurrentListMapNoExtraKeys!593 (array!17823 array!17821 (_ BitVec 32) (_ BitVec 32) V!10477 V!10477 (_ BitVec 32) Int) ListLongMap!4151)

(assert (=> b!339893 (= lt!161425 (getCurrentListMapNoExtraKeys!593 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161427 () (_ BitVec 64))

(assert (=> b!339893 (= lt!161427 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161423 () (_ BitVec 64))

(assert (=> b!339893 (= lt!161423 (select (arr!8431 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161418 () Unit!10590)

(declare-fun addStillContains!250 (ListLongMap!4151 (_ BitVec 64) V!10477 (_ BitVec 64)) Unit!10590)

(assert (=> b!339893 (= lt!161418 (addStillContains!250 lt!161425 lt!161427 zeroValue!1467 lt!161423))))

(declare-fun +!718 (ListLongMap!4151 tuple2!5224) ListLongMap!4151)

(assert (=> b!339893 (contains!2139 (+!718 lt!161425 (tuple2!5225 lt!161427 zeroValue!1467)) lt!161423)))

(declare-fun lt!161420 () Unit!10590)

(assert (=> b!339893 (= lt!161420 lt!161418)))

(declare-fun lt!161413 () ListLongMap!4151)

(assert (=> b!339893 (= lt!161413 (getCurrentListMapNoExtraKeys!593 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161432 () (_ BitVec 64))

(assert (=> b!339893 (= lt!161432 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161426 () (_ BitVec 64))

(assert (=> b!339893 (= lt!161426 (select (arr!8431 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161417 () Unit!10590)

(declare-fun addApplyDifferent!250 (ListLongMap!4151 (_ BitVec 64) V!10477 (_ BitVec 64)) Unit!10590)

(assert (=> b!339893 (= lt!161417 (addApplyDifferent!250 lt!161413 lt!161432 minValue!1467 lt!161426))))

(declare-fun apply!274 (ListLongMap!4151 (_ BitVec 64)) V!10477)

(assert (=> b!339893 (= (apply!274 (+!718 lt!161413 (tuple2!5225 lt!161432 minValue!1467)) lt!161426) (apply!274 lt!161413 lt!161426))))

(declare-fun lt!161421 () Unit!10590)

(assert (=> b!339893 (= lt!161421 lt!161417)))

(declare-fun lt!161419 () ListLongMap!4151)

(assert (=> b!339893 (= lt!161419 (getCurrentListMapNoExtraKeys!593 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161414 () (_ BitVec 64))

(assert (=> b!339893 (= lt!161414 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161416 () (_ BitVec 64))

(assert (=> b!339893 (= lt!161416 (select (arr!8431 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161433 () Unit!10590)

(assert (=> b!339893 (= lt!161433 (addApplyDifferent!250 lt!161419 lt!161414 zeroValue!1467 lt!161416))))

(assert (=> b!339893 (= (apply!274 (+!718 lt!161419 (tuple2!5225 lt!161414 zeroValue!1467)) lt!161416) (apply!274 lt!161419 lt!161416))))

(declare-fun lt!161430 () Unit!10590)

(assert (=> b!339893 (= lt!161430 lt!161433)))

(declare-fun lt!161412 () ListLongMap!4151)

(assert (=> b!339893 (= lt!161412 (getCurrentListMapNoExtraKeys!593 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161431 () (_ BitVec 64))

(assert (=> b!339893 (= lt!161431 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161424 () (_ BitVec 64))

(assert (=> b!339893 (= lt!161424 (select (arr!8431 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!339893 (= lt!161428 (addApplyDifferent!250 lt!161412 lt!161431 minValue!1467 lt!161424))))

(assert (=> b!339893 (= (apply!274 (+!718 lt!161412 (tuple2!5225 lt!161431 minValue!1467)) lt!161424) (apply!274 lt!161412 lt!161424))))

(declare-fun b!339894 () Bool)

(declare-fun e!208545 () ListLongMap!4151)

(declare-fun call!26533 () ListLongMap!4151)

(assert (=> b!339894 (= e!208545 call!26533)))

(declare-fun b!339895 () Bool)

(declare-fun e!208534 () Bool)

(declare-fun call!26528 () Bool)

(assert (=> b!339895 (= e!208534 (not call!26528))))

(declare-fun b!339896 () Bool)

(declare-fun e!208540 () ListLongMap!4151)

(assert (=> b!339896 (= e!208540 call!26533)))

(declare-fun b!339897 () Bool)

(declare-fun e!208538 () Bool)

(assert (=> b!339897 (= e!208538 (validKeyInArray!0 (select (arr!8431 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26525 () Bool)

(declare-fun call!26530 () ListLongMap!4151)

(assert (=> bm!26525 (= call!26533 call!26530)))

(declare-fun b!339898 () Bool)

(declare-fun Unit!10593 () Unit!10590)

(assert (=> b!339898 (= e!208537 Unit!10593)))

(declare-fun b!339899 () Bool)

(declare-fun e!208539 () Bool)

(assert (=> b!339899 (= e!208534 e!208539)))

(declare-fun res!187801 () Bool)

(assert (=> b!339899 (= res!187801 call!26528)))

(assert (=> b!339899 (=> (not res!187801) (not e!208539))))

(declare-fun b!339900 () Bool)

(declare-fun e!208544 () Bool)

(declare-fun e!208535 () Bool)

(assert (=> b!339900 (= e!208544 e!208535)))

(declare-fun res!187794 () Bool)

(declare-fun call!26531 () Bool)

(assert (=> b!339900 (= res!187794 call!26531)))

(assert (=> b!339900 (=> (not res!187794) (not e!208535))))

(declare-fun b!339901 () Bool)

(declare-fun e!208536 () ListLongMap!4151)

(assert (=> b!339901 (= e!208536 (+!718 call!26530 (tuple2!5225 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!339902 () Bool)

(declare-fun call!26534 () ListLongMap!4151)

(assert (=> b!339902 (= e!208545 call!26534)))

(declare-fun lt!161422 () ListLongMap!4151)

(declare-fun b!339903 () Bool)

(declare-fun e!208533 () Bool)

(declare-fun get!4595 (ValueCell!3219 V!10477) V!10477)

(declare-fun dynLambda!612 (Int (_ BitVec 64)) V!10477)

(assert (=> b!339903 (= e!208533 (= (apply!274 lt!161422 (select (arr!8431 _keys!1895) #b00000000000000000000000000000000)) (get!4595 (select (arr!8430 _values!1525) #b00000000000000000000000000000000) (dynLambda!612 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!339903 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8782 _values!1525)))))

(assert (=> b!339903 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8783 _keys!1895)))))

(declare-fun b!339905 () Bool)

(assert (=> b!339905 (= e!208535 (= (apply!274 lt!161422 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun call!26529 () ListLongMap!4151)

(declare-fun bm!26526 () Bool)

(assert (=> bm!26526 (= call!26529 (getCurrentListMapNoExtraKeys!593 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!339906 () Bool)

(assert (=> b!339906 (= e!208544 (not call!26531))))

(declare-fun b!339907 () Bool)

(assert (=> b!339907 (= e!208539 (= (apply!274 lt!161422 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!339908 () Bool)

(declare-fun res!187798 () Bool)

(declare-fun e!208542 () Bool)

(assert (=> b!339908 (=> (not res!187798) (not e!208542))))

(assert (=> b!339908 (= res!187798 e!208534)))

(declare-fun c!52564 () Bool)

(assert (=> b!339908 (= c!52564 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!26527 () Bool)

(declare-fun call!26532 () ListLongMap!4151)

(assert (=> bm!26527 (= call!26534 call!26532)))

(declare-fun bm!26528 () Bool)

(assert (=> bm!26528 (= call!26532 call!26529)))

(declare-fun b!339909 () Bool)

(declare-fun res!187799 () Bool)

(assert (=> b!339909 (=> (not res!187799) (not e!208542))))

(declare-fun e!208541 () Bool)

(assert (=> b!339909 (= res!187799 e!208541)))

(declare-fun res!187797 () Bool)

(assert (=> b!339909 (=> res!187797 e!208541)))

(assert (=> b!339909 (= res!187797 (not e!208538))))

(declare-fun res!187800 () Bool)

(assert (=> b!339909 (=> (not res!187800) (not e!208538))))

(assert (=> b!339909 (= res!187800 (bvslt #b00000000000000000000000000000000 (size!8783 _keys!1895)))))

(declare-fun b!339910 () Bool)

(assert (=> b!339910 (= e!208536 e!208540)))

(declare-fun c!52565 () Bool)

(assert (=> b!339910 (= c!52565 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!339911 () Bool)

(assert (=> b!339911 (= e!208542 e!208544)))

(declare-fun c!52563 () Bool)

(assert (=> b!339911 (= c!52563 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!26529 () Bool)

(declare-fun c!52566 () Bool)

(assert (=> bm!26529 (= call!26530 (+!718 (ite c!52566 call!26529 (ite c!52565 call!26532 call!26534)) (ite (or c!52566 c!52565) (tuple2!5225 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5225 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun bm!26530 () Bool)

(assert (=> bm!26530 (= call!26531 (contains!2139 lt!161422 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!26531 () Bool)

(assert (=> bm!26531 (= call!26528 (contains!2139 lt!161422 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!70771 () Bool)

(assert (=> d!70771 e!208542))

(declare-fun res!187795 () Bool)

(assert (=> d!70771 (=> (not res!187795) (not e!208542))))

(assert (=> d!70771 (= res!187795 (or (bvsge #b00000000000000000000000000000000 (size!8783 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8783 _keys!1895)))))))

(declare-fun lt!161429 () ListLongMap!4151)

(assert (=> d!70771 (= lt!161422 lt!161429)))

(declare-fun lt!161415 () Unit!10590)

(assert (=> d!70771 (= lt!161415 e!208537)))

(declare-fun c!52568 () Bool)

(declare-fun e!208543 () Bool)

(assert (=> d!70771 (= c!52568 e!208543)))

(declare-fun res!187796 () Bool)

(assert (=> d!70771 (=> (not res!187796) (not e!208543))))

(assert (=> d!70771 (= res!187796 (bvslt #b00000000000000000000000000000000 (size!8783 _keys!1895)))))

(assert (=> d!70771 (= lt!161429 e!208536)))

(assert (=> d!70771 (= c!52566 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!70771 (validMask!0 mask!2385)))

(assert (=> d!70771 (= (getCurrentListMap!1611 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!161422)))

(declare-fun b!339904 () Bool)

(assert (=> b!339904 (= e!208543 (validKeyInArray!0 (select (arr!8431 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!339912 () Bool)

(assert (=> b!339912 (= e!208541 e!208533)))

(declare-fun res!187802 () Bool)

(assert (=> b!339912 (=> (not res!187802) (not e!208533))))

(assert (=> b!339912 (= res!187802 (contains!2139 lt!161422 (select (arr!8431 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!339912 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8783 _keys!1895)))))

(declare-fun b!339913 () Bool)

(declare-fun c!52567 () Bool)

(assert (=> b!339913 (= c!52567 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!339913 (= e!208540 e!208545)))

(assert (= (and d!70771 c!52566) b!339901))

(assert (= (and d!70771 (not c!52566)) b!339910))

(assert (= (and b!339910 c!52565) b!339896))

(assert (= (and b!339910 (not c!52565)) b!339913))

(assert (= (and b!339913 c!52567) b!339894))

(assert (= (and b!339913 (not c!52567)) b!339902))

(assert (= (or b!339894 b!339902) bm!26527))

(assert (= (or b!339896 bm!26527) bm!26528))

(assert (= (or b!339896 b!339894) bm!26525))

(assert (= (or b!339901 bm!26528) bm!26526))

(assert (= (or b!339901 bm!26525) bm!26529))

(assert (= (and d!70771 res!187796) b!339904))

(assert (= (and d!70771 c!52568) b!339893))

(assert (= (and d!70771 (not c!52568)) b!339898))

(assert (= (and d!70771 res!187795) b!339909))

(assert (= (and b!339909 res!187800) b!339897))

(assert (= (and b!339909 (not res!187797)) b!339912))

(assert (= (and b!339912 res!187802) b!339903))

(assert (= (and b!339909 res!187799) b!339908))

(assert (= (and b!339908 c!52564) b!339899))

(assert (= (and b!339908 (not c!52564)) b!339895))

(assert (= (and b!339899 res!187801) b!339907))

(assert (= (or b!339899 b!339895) bm!26531))

(assert (= (and b!339908 res!187798) b!339911))

(assert (= (and b!339911 c!52563) b!339900))

(assert (= (and b!339911 (not c!52563)) b!339906))

(assert (= (and b!339900 res!187794) b!339905))

(assert (= (or b!339900 b!339906) bm!26530))

(declare-fun b_lambda!8465 () Bool)

(assert (=> (not b_lambda!8465) (not b!339903)))

(declare-fun t!9983 () Bool)

(declare-fun tb!3071 () Bool)

(assert (=> (and start!34120 (= defaultEntry!1528 defaultEntry!1528) t!9983) tb!3071))

(declare-fun result!5527 () Bool)

(assert (=> tb!3071 (= result!5527 tp_is_empty!7125)))

(assert (=> b!339903 t!9983))

(declare-fun b_and!14391 () Bool)

(assert (= b_and!14387 (and (=> t!9983 result!5527) b_and!14391)))

(assert (=> d!70771 m!342657))

(declare-fun m!342721 () Bool)

(assert (=> b!339901 m!342721))

(assert (=> b!339904 m!342697))

(assert (=> b!339904 m!342697))

(assert (=> b!339904 m!342699))

(declare-fun m!342723 () Bool)

(assert (=> b!339893 m!342723))

(declare-fun m!342725 () Bool)

(assert (=> b!339893 m!342725))

(declare-fun m!342727 () Bool)

(assert (=> b!339893 m!342727))

(declare-fun m!342729 () Bool)

(assert (=> b!339893 m!342729))

(declare-fun m!342731 () Bool)

(assert (=> b!339893 m!342731))

(declare-fun m!342733 () Bool)

(assert (=> b!339893 m!342733))

(declare-fun m!342735 () Bool)

(assert (=> b!339893 m!342735))

(declare-fun m!342737 () Bool)

(assert (=> b!339893 m!342737))

(declare-fun m!342739 () Bool)

(assert (=> b!339893 m!342739))

(declare-fun m!342741 () Bool)

(assert (=> b!339893 m!342741))

(declare-fun m!342743 () Bool)

(assert (=> b!339893 m!342743))

(declare-fun m!342745 () Bool)

(assert (=> b!339893 m!342745))

(assert (=> b!339893 m!342735))

(assert (=> b!339893 m!342739))

(declare-fun m!342747 () Bool)

(assert (=> b!339893 m!342747))

(assert (=> b!339893 m!342741))

(declare-fun m!342749 () Bool)

(assert (=> b!339893 m!342749))

(assert (=> b!339893 m!342697))

(assert (=> b!339893 m!342727))

(declare-fun m!342751 () Bool)

(assert (=> b!339893 m!342751))

(declare-fun m!342753 () Bool)

(assert (=> b!339893 m!342753))

(declare-fun m!342755 () Bool)

(assert (=> b!339907 m!342755))

(declare-fun m!342757 () Bool)

(assert (=> bm!26531 m!342757))

(declare-fun m!342759 () Bool)

(assert (=> bm!26530 m!342759))

(declare-fun m!342761 () Bool)

(assert (=> b!339905 m!342761))

(declare-fun m!342763 () Bool)

(assert (=> bm!26529 m!342763))

(assert (=> b!339897 m!342697))

(assert (=> b!339897 m!342697))

(assert (=> b!339897 m!342699))

(assert (=> b!339912 m!342697))

(assert (=> b!339912 m!342697))

(declare-fun m!342765 () Bool)

(assert (=> b!339912 m!342765))

(declare-fun m!342767 () Bool)

(assert (=> b!339903 m!342767))

(declare-fun m!342769 () Bool)

(assert (=> b!339903 m!342769))

(declare-fun m!342771 () Bool)

(assert (=> b!339903 m!342771))

(assert (=> b!339903 m!342769))

(assert (=> b!339903 m!342697))

(declare-fun m!342773 () Bool)

(assert (=> b!339903 m!342773))

(assert (=> b!339903 m!342697))

(assert (=> b!339903 m!342767))

(assert (=> bm!26526 m!342733))

(assert (=> b!339767 d!70771))

(declare-fun mapNonEmpty!12114 () Bool)

(declare-fun mapRes!12114 () Bool)

(declare-fun tp!25056 () Bool)

(declare-fun e!208550 () Bool)

(assert (=> mapNonEmpty!12114 (= mapRes!12114 (and tp!25056 e!208550))))

(declare-fun mapValue!12114 () ValueCell!3219)

(declare-fun mapKey!12114 () (_ BitVec 32))

(declare-fun mapRest!12114 () (Array (_ BitVec 32) ValueCell!3219))

(assert (=> mapNonEmpty!12114 (= mapRest!12108 (store mapRest!12114 mapKey!12114 mapValue!12114))))

(declare-fun mapIsEmpty!12114 () Bool)

(assert (=> mapIsEmpty!12114 mapRes!12114))

(declare-fun condMapEmpty!12114 () Bool)

(declare-fun mapDefault!12114 () ValueCell!3219)

(assert (=> mapNonEmpty!12108 (= condMapEmpty!12114 (= mapRest!12108 ((as const (Array (_ BitVec 32) ValueCell!3219)) mapDefault!12114)))))

(declare-fun e!208551 () Bool)

(assert (=> mapNonEmpty!12108 (= tp!25046 (and e!208551 mapRes!12114))))

(declare-fun b!339923 () Bool)

(assert (=> b!339923 (= e!208551 tp_is_empty!7125)))

(declare-fun b!339922 () Bool)

(assert (=> b!339922 (= e!208550 tp_is_empty!7125)))

(assert (= (and mapNonEmpty!12108 condMapEmpty!12114) mapIsEmpty!12114))

(assert (= (and mapNonEmpty!12108 (not condMapEmpty!12114)) mapNonEmpty!12114))

(assert (= (and mapNonEmpty!12114 ((_ is ValueCellFull!3219) mapValue!12114)) b!339922))

(assert (= (and mapNonEmpty!12108 ((_ is ValueCellFull!3219) mapDefault!12114)) b!339923))

(declare-fun m!342775 () Bool)

(assert (=> mapNonEmpty!12114 m!342775))

(declare-fun b_lambda!8467 () Bool)

(assert (= b_lambda!8465 (or (and start!34120 b_free!7173) b_lambda!8467)))

(check-sat tp_is_empty!7125 (not b!339848) (not bm!26529) (not b!339841) (not b!339907) (not bm!26531) (not b_lambda!8467) (not d!70769) b_and!14391 (not b!339829) (not b!339850) (not b!339903) (not b!339901) (not d!70755) (not b!339840) (not b!339893) (not d!70771) (not b!339905) (not mapNonEmpty!12114) (not bm!26510) (not b!339912) (not b!339897) (not bm!26507) (not b!339811) (not b!339904) (not b!339827) (not bm!26526) (not bm!26530) (not b!339826) (not b_next!7173))
(check-sat b_and!14391 (not b_next!7173))
