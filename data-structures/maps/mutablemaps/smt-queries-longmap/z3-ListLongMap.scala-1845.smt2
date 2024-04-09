; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33436 () Bool)

(assert start!33436)

(declare-fun b!331698 () Bool)

(declare-fun e!203590 () Bool)

(declare-fun tp_is_empty!6693 () Bool)

(assert (=> b!331698 (= e!203590 tp_is_empty!6693)))

(declare-fun res!182812 () Bool)

(declare-fun e!203593 () Bool)

(assert (=> start!33436 (=> (not res!182812) (not e!203593))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33436 (= res!182812 (validMask!0 mask!2385))))

(assert (=> start!33436 e!203593))

(assert (=> start!33436 true))

(declare-datatypes ((V!9901 0))(
  ( (V!9902 (val!3391 Int)) )
))
(declare-datatypes ((ValueCell!3003 0))(
  ( (ValueCellFull!3003 (v!5545 V!9901)) (EmptyCell!3003) )
))
(declare-datatypes ((array!16983 0))(
  ( (array!16984 (arr!8024 (Array (_ BitVec 32) ValueCell!3003)) (size!8376 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16983)

(declare-fun e!203589 () Bool)

(declare-fun array_inv!5966 (array!16983) Bool)

(assert (=> start!33436 (and (array_inv!5966 _values!1525) e!203589)))

(declare-datatypes ((array!16985 0))(
  ( (array!16986 (arr!8025 (Array (_ BitVec 32) (_ BitVec 64))) (size!8377 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!16985)

(declare-fun array_inv!5967 (array!16985) Bool)

(assert (=> start!33436 (array_inv!5967 _keys!1895)))

(declare-fun b!331699 () Bool)

(declare-fun e!203588 () Bool)

(assert (=> b!331699 (= e!203593 e!203588)))

(declare-fun res!182814 () Bool)

(assert (=> b!331699 (=> res!182814 e!203588)))

(declare-datatypes ((List!4598 0))(
  ( (Nil!4595) (Cons!4594 (h!5450 (_ BitVec 64)) (t!9688 List!4598)) )
))
(declare-fun contains!2003 (List!4598 (_ BitVec 64)) Bool)

(assert (=> b!331699 (= res!182814 (contains!2003 Nil!4595 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!331700 () Bool)

(declare-fun e!203592 () Bool)

(assert (=> b!331700 (= e!203592 tp_is_empty!6693)))

(declare-fun b!331701 () Bool)

(declare-fun res!182811 () Bool)

(assert (=> b!331701 (=> (not res!182811) (not e!203593))))

(assert (=> b!331701 (= res!182811 (and (bvsle #b00000000000000000000000000000000 (size!8377 _keys!1895)) (bvslt (size!8377 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun b!331702 () Bool)

(declare-fun res!182813 () Bool)

(assert (=> b!331702 (=> (not res!182813) (not e!203593))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!331702 (= res!182813 (and (= (size!8376 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8377 _keys!1895) (size!8376 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!331703 () Bool)

(declare-fun res!182810 () Bool)

(assert (=> b!331703 (=> (not res!182810) (not e!203593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16985 (_ BitVec 32)) Bool)

(assert (=> b!331703 (= res!182810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!331704 () Bool)

(assert (=> b!331704 (= e!203588 (contains!2003 Nil!4595 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!331705 () Bool)

(declare-fun mapRes!11421 () Bool)

(assert (=> b!331705 (= e!203589 (and e!203592 mapRes!11421))))

(declare-fun condMapEmpty!11421 () Bool)

(declare-fun mapDefault!11421 () ValueCell!3003)

(assert (=> b!331705 (= condMapEmpty!11421 (= (arr!8024 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3003)) mapDefault!11421)))))

(declare-fun mapIsEmpty!11421 () Bool)

(assert (=> mapIsEmpty!11421 mapRes!11421))

(declare-fun mapNonEmpty!11421 () Bool)

(declare-fun tp!23796 () Bool)

(assert (=> mapNonEmpty!11421 (= mapRes!11421 (and tp!23796 e!203590))))

(declare-fun mapValue!11421 () ValueCell!3003)

(declare-fun mapKey!11421 () (_ BitVec 32))

(declare-fun mapRest!11421 () (Array (_ BitVec 32) ValueCell!3003))

(assert (=> mapNonEmpty!11421 (= (arr!8024 _values!1525) (store mapRest!11421 mapKey!11421 mapValue!11421))))

(declare-fun b!331706 () Bool)

(declare-fun res!182809 () Bool)

(assert (=> b!331706 (=> (not res!182809) (not e!203593))))

(declare-fun noDuplicate!176 (List!4598) Bool)

(assert (=> b!331706 (= res!182809 (noDuplicate!176 Nil!4595))))

(assert (= (and start!33436 res!182812) b!331702))

(assert (= (and b!331702 res!182813) b!331703))

(assert (= (and b!331703 res!182810) b!331701))

(assert (= (and b!331701 res!182811) b!331706))

(assert (= (and b!331706 res!182809) b!331699))

(assert (= (and b!331699 (not res!182814)) b!331704))

(assert (= (and b!331705 condMapEmpty!11421) mapIsEmpty!11421))

(assert (= (and b!331705 (not condMapEmpty!11421)) mapNonEmpty!11421))

(get-info :version)

(assert (= (and mapNonEmpty!11421 ((_ is ValueCellFull!3003) mapValue!11421)) b!331698))

(assert (= (and b!331705 ((_ is ValueCellFull!3003) mapDefault!11421)) b!331700))

(assert (= start!33436 b!331705))

(declare-fun m!336437 () Bool)

(assert (=> b!331703 m!336437))

(declare-fun m!336439 () Bool)

(assert (=> b!331706 m!336439))

(declare-fun m!336441 () Bool)

(assert (=> start!33436 m!336441))

(declare-fun m!336443 () Bool)

(assert (=> start!33436 m!336443))

(declare-fun m!336445 () Bool)

(assert (=> start!33436 m!336445))

(declare-fun m!336447 () Bool)

(assert (=> b!331699 m!336447))

(declare-fun m!336449 () Bool)

(assert (=> mapNonEmpty!11421 m!336449))

(declare-fun m!336451 () Bool)

(assert (=> b!331704 m!336451))

(check-sat (not start!33436) (not b!331706) (not b!331704) (not mapNonEmpty!11421) tp_is_empty!6693 (not b!331699) (not b!331703))
(check-sat)
(get-model)

(declare-fun d!70357 () Bool)

(assert (=> d!70357 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!33436 d!70357))

(declare-fun d!70359 () Bool)

(assert (=> d!70359 (= (array_inv!5966 _values!1525) (bvsge (size!8376 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!33436 d!70359))

(declare-fun d!70361 () Bool)

(assert (=> d!70361 (= (array_inv!5967 _keys!1895) (bvsge (size!8377 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!33436 d!70361))

(declare-fun b!331742 () Bool)

(declare-fun e!203618 () Bool)

(declare-fun call!26204 () Bool)

(assert (=> b!331742 (= e!203618 call!26204)))

(declare-fun bm!26201 () Bool)

(assert (=> bm!26201 (= call!26204 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun d!70363 () Bool)

(declare-fun res!182838 () Bool)

(declare-fun e!203620 () Bool)

(assert (=> d!70363 (=> res!182838 e!203620)))

(assert (=> d!70363 (= res!182838 (bvsge #b00000000000000000000000000000000 (size!8377 _keys!1895)))))

(assert (=> d!70363 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!203620)))

(declare-fun b!331743 () Bool)

(assert (=> b!331743 (= e!203620 e!203618)))

(declare-fun c!52001 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!331743 (= c!52001 (validKeyInArray!0 (select (arr!8025 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!331744 () Bool)

(declare-fun e!203619 () Bool)

(assert (=> b!331744 (= e!203618 e!203619)))

(declare-fun lt!158894 () (_ BitVec 64))

(assert (=> b!331744 (= lt!158894 (select (arr!8025 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10358 0))(
  ( (Unit!10359) )
))
(declare-fun lt!158892 () Unit!10358)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16985 (_ BitVec 64) (_ BitVec 32)) Unit!10358)

(assert (=> b!331744 (= lt!158892 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!158894 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!16985 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!331744 (arrayContainsKey!0 _keys!1895 lt!158894 #b00000000000000000000000000000000)))

(declare-fun lt!158893 () Unit!10358)

(assert (=> b!331744 (= lt!158893 lt!158892)))

(declare-fun res!182837 () Bool)

(declare-datatypes ((SeekEntryResult!3141 0))(
  ( (MissingZero!3141 (index!14743 (_ BitVec 32))) (Found!3141 (index!14744 (_ BitVec 32))) (Intermediate!3141 (undefined!3953 Bool) (index!14745 (_ BitVec 32)) (x!33046 (_ BitVec 32))) (Undefined!3141) (MissingVacant!3141 (index!14746 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16985 (_ BitVec 32)) SeekEntryResult!3141)

(assert (=> b!331744 (= res!182837 (= (seekEntryOrOpen!0 (select (arr!8025 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3141 #b00000000000000000000000000000000)))))

(assert (=> b!331744 (=> (not res!182837) (not e!203619))))

(declare-fun b!331745 () Bool)

(assert (=> b!331745 (= e!203619 call!26204)))

(assert (= (and d!70363 (not res!182838)) b!331743))

(assert (= (and b!331743 c!52001) b!331744))

(assert (= (and b!331743 (not c!52001)) b!331742))

(assert (= (and b!331744 res!182837) b!331745))

(assert (= (or b!331745 b!331742) bm!26201))

(declare-fun m!336469 () Bool)

(assert (=> bm!26201 m!336469))

(declare-fun m!336471 () Bool)

(assert (=> b!331743 m!336471))

(assert (=> b!331743 m!336471))

(declare-fun m!336473 () Bool)

(assert (=> b!331743 m!336473))

(assert (=> b!331744 m!336471))

(declare-fun m!336475 () Bool)

(assert (=> b!331744 m!336475))

(declare-fun m!336477 () Bool)

(assert (=> b!331744 m!336477))

(assert (=> b!331744 m!336471))

(declare-fun m!336479 () Bool)

(assert (=> b!331744 m!336479))

(assert (=> b!331703 d!70363))

(declare-fun d!70365 () Bool)

(declare-fun res!182843 () Bool)

(declare-fun e!203625 () Bool)

(assert (=> d!70365 (=> res!182843 e!203625)))

(assert (=> d!70365 (= res!182843 ((_ is Nil!4595) Nil!4595))))

(assert (=> d!70365 (= (noDuplicate!176 Nil!4595) e!203625)))

(declare-fun b!331750 () Bool)

(declare-fun e!203626 () Bool)

(assert (=> b!331750 (= e!203625 e!203626)))

(declare-fun res!182844 () Bool)

(assert (=> b!331750 (=> (not res!182844) (not e!203626))))

(assert (=> b!331750 (= res!182844 (not (contains!2003 (t!9688 Nil!4595) (h!5450 Nil!4595))))))

(declare-fun b!331751 () Bool)

(assert (=> b!331751 (= e!203626 (noDuplicate!176 (t!9688 Nil!4595)))))

(assert (= (and d!70365 (not res!182843)) b!331750))

(assert (= (and b!331750 res!182844) b!331751))

(declare-fun m!336481 () Bool)

(assert (=> b!331750 m!336481))

(declare-fun m!336483 () Bool)

(assert (=> b!331751 m!336483))

(assert (=> b!331706 d!70365))

(declare-fun d!70367 () Bool)

(declare-fun lt!158897 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!196 (List!4598) (InoxSet (_ BitVec 64)))

(assert (=> d!70367 (= lt!158897 (select (content!196 Nil!4595) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!203632 () Bool)

(assert (=> d!70367 (= lt!158897 e!203632)))

(declare-fun res!182850 () Bool)

(assert (=> d!70367 (=> (not res!182850) (not e!203632))))

(assert (=> d!70367 (= res!182850 ((_ is Cons!4594) Nil!4595))))

(assert (=> d!70367 (= (contains!2003 Nil!4595 #b0000000000000000000000000000000000000000000000000000000000000000) lt!158897)))

(declare-fun b!331756 () Bool)

(declare-fun e!203631 () Bool)

(assert (=> b!331756 (= e!203632 e!203631)))

(declare-fun res!182849 () Bool)

(assert (=> b!331756 (=> res!182849 e!203631)))

(assert (=> b!331756 (= res!182849 (= (h!5450 Nil!4595) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!331757 () Bool)

(assert (=> b!331757 (= e!203631 (contains!2003 (t!9688 Nil!4595) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!70367 res!182850) b!331756))

(assert (= (and b!331756 (not res!182849)) b!331757))

(declare-fun m!336485 () Bool)

(assert (=> d!70367 m!336485))

(declare-fun m!336487 () Bool)

(assert (=> d!70367 m!336487))

(declare-fun m!336489 () Bool)

(assert (=> b!331757 m!336489))

(assert (=> b!331699 d!70367))

(declare-fun d!70369 () Bool)

(declare-fun lt!158898 () Bool)

(assert (=> d!70369 (= lt!158898 (select (content!196 Nil!4595) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!203634 () Bool)

(assert (=> d!70369 (= lt!158898 e!203634)))

(declare-fun res!182852 () Bool)

(assert (=> d!70369 (=> (not res!182852) (not e!203634))))

(assert (=> d!70369 (= res!182852 ((_ is Cons!4594) Nil!4595))))

(assert (=> d!70369 (= (contains!2003 Nil!4595 #b1000000000000000000000000000000000000000000000000000000000000000) lt!158898)))

(declare-fun b!331758 () Bool)

(declare-fun e!203633 () Bool)

(assert (=> b!331758 (= e!203634 e!203633)))

(declare-fun res!182851 () Bool)

(assert (=> b!331758 (=> res!182851 e!203633)))

(assert (=> b!331758 (= res!182851 (= (h!5450 Nil!4595) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!331759 () Bool)

(assert (=> b!331759 (= e!203633 (contains!2003 (t!9688 Nil!4595) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!70369 res!182852) b!331758))

(assert (= (and b!331758 (not res!182851)) b!331759))

(assert (=> d!70369 m!336485))

(declare-fun m!336491 () Bool)

(assert (=> d!70369 m!336491))

(declare-fun m!336493 () Bool)

(assert (=> b!331759 m!336493))

(assert (=> b!331704 d!70369))

(declare-fun b!331766 () Bool)

(declare-fun e!203640 () Bool)

(assert (=> b!331766 (= e!203640 tp_is_empty!6693)))

(declare-fun mapNonEmpty!11427 () Bool)

(declare-fun mapRes!11427 () Bool)

(declare-fun tp!23802 () Bool)

(assert (=> mapNonEmpty!11427 (= mapRes!11427 (and tp!23802 e!203640))))

(declare-fun mapRest!11427 () (Array (_ BitVec 32) ValueCell!3003))

(declare-fun mapValue!11427 () ValueCell!3003)

(declare-fun mapKey!11427 () (_ BitVec 32))

(assert (=> mapNonEmpty!11427 (= mapRest!11421 (store mapRest!11427 mapKey!11427 mapValue!11427))))

(declare-fun condMapEmpty!11427 () Bool)

(declare-fun mapDefault!11427 () ValueCell!3003)

(assert (=> mapNonEmpty!11421 (= condMapEmpty!11427 (= mapRest!11421 ((as const (Array (_ BitVec 32) ValueCell!3003)) mapDefault!11427)))))

(declare-fun e!203639 () Bool)

(assert (=> mapNonEmpty!11421 (= tp!23796 (and e!203639 mapRes!11427))))

(declare-fun mapIsEmpty!11427 () Bool)

(assert (=> mapIsEmpty!11427 mapRes!11427))

(declare-fun b!331767 () Bool)

(assert (=> b!331767 (= e!203639 tp_is_empty!6693)))

(assert (= (and mapNonEmpty!11421 condMapEmpty!11427) mapIsEmpty!11427))

(assert (= (and mapNonEmpty!11421 (not condMapEmpty!11427)) mapNonEmpty!11427))

(assert (= (and mapNonEmpty!11427 ((_ is ValueCellFull!3003) mapValue!11427)) b!331766))

(assert (= (and mapNonEmpty!11421 ((_ is ValueCellFull!3003) mapDefault!11427)) b!331767))

(declare-fun m!336495 () Bool)

(assert (=> mapNonEmpty!11427 m!336495))

(check-sat (not b!331743) (not b!331751) (not d!70369) (not bm!26201) tp_is_empty!6693 (not mapNonEmpty!11427) (not b!331744) (not d!70367) (not b!331750) (not b!331757) (not b!331759))
(check-sat)
