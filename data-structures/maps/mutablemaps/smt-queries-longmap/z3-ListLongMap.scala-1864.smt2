; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33628 () Bool)

(assert start!33628)

(declare-fun b_free!6855 () Bool)

(declare-fun b_next!6855 () Bool)

(assert (=> start!33628 (= b_free!6855 (not b_next!6855))))

(declare-fun tp!24069 () Bool)

(declare-fun b_and!14053 () Bool)

(assert (=> start!33628 (= tp!24069 b_and!14053)))

(declare-fun mapIsEmpty!11607 () Bool)

(declare-fun mapRes!11607 () Bool)

(assert (=> mapIsEmpty!11607 mapRes!11607))

(declare-fun b!333435 () Bool)

(declare-fun res!183757 () Bool)

(declare-fun e!204746 () Bool)

(assert (=> b!333435 (=> (not res!183757) (not e!204746))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10053 0))(
  ( (V!10054 (val!3448 Int)) )
))
(declare-datatypes ((ValueCell!3060 0))(
  ( (ValueCellFull!3060 (v!5606 V!10053)) (EmptyCell!3060) )
))
(declare-datatypes ((array!17209 0))(
  ( (array!17210 (arr!8132 (Array (_ BitVec 32) ValueCell!3060)) (size!8484 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17209)

(declare-datatypes ((array!17211 0))(
  ( (array!17212 (arr!8133 (Array (_ BitVec 32) (_ BitVec 64))) (size!8485 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17211)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!333435 (= res!183757 (and (= (size!8484 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8485 _keys!1895) (size!8484 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!333436 () Bool)

(declare-fun res!183756 () Bool)

(assert (=> b!333436 (=> (not res!183756) (not e!204746))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333436 (= res!183756 (validKeyInArray!0 k0!1348))))

(declare-fun b!333437 () Bool)

(declare-fun res!183755 () Bool)

(assert (=> b!333437 (=> (not res!183755) (not e!204746))))

(declare-datatypes ((List!4656 0))(
  ( (Nil!4653) (Cons!4652 (h!5508 (_ BitVec 64)) (t!9752 List!4656)) )
))
(declare-fun arrayNoDuplicates!0 (array!17211 (_ BitVec 32) List!4656) Bool)

(assert (=> b!333437 (= res!183755 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4653))))

(declare-fun res!183754 () Bool)

(assert (=> start!33628 (=> (not res!183754) (not e!204746))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33628 (= res!183754 (validMask!0 mask!2385))))

(assert (=> start!33628 e!204746))

(assert (=> start!33628 true))

(declare-fun tp_is_empty!6807 () Bool)

(assert (=> start!33628 tp_is_empty!6807))

(assert (=> start!33628 tp!24069))

(declare-fun e!204747 () Bool)

(declare-fun array_inv!6044 (array!17209) Bool)

(assert (=> start!33628 (and (array_inv!6044 _values!1525) e!204747)))

(declare-fun array_inv!6045 (array!17211) Bool)

(assert (=> start!33628 (array_inv!6045 _keys!1895)))

(declare-fun b!333438 () Bool)

(assert (=> b!333438 (= e!204746 false)))

(declare-datatypes ((SeekEntryResult!3156 0))(
  ( (MissingZero!3156 (index!14803 (_ BitVec 32))) (Found!3156 (index!14804 (_ BitVec 32))) (Intermediate!3156 (undefined!3968 Bool) (index!14805 (_ BitVec 32)) (x!33245 (_ BitVec 32))) (Undefined!3156) (MissingVacant!3156 (index!14806 (_ BitVec 32))) )
))
(declare-fun lt!159345 () SeekEntryResult!3156)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17211 (_ BitVec 32)) SeekEntryResult!3156)

(assert (=> b!333438 (= lt!159345 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!333439 () Bool)

(declare-fun e!204748 () Bool)

(assert (=> b!333439 (= e!204748 tp_is_empty!6807)))

(declare-fun b!333440 () Bool)

(assert (=> b!333440 (= e!204747 (and e!204748 mapRes!11607))))

(declare-fun condMapEmpty!11607 () Bool)

(declare-fun mapDefault!11607 () ValueCell!3060)

(assert (=> b!333440 (= condMapEmpty!11607 (= (arr!8132 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3060)) mapDefault!11607)))))

(declare-fun b!333441 () Bool)

(declare-fun res!183758 () Bool)

(assert (=> b!333441 (=> (not res!183758) (not e!204746))))

(declare-fun zeroValue!1467 () V!10053)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10053)

(declare-datatypes ((tuple2!5014 0))(
  ( (tuple2!5015 (_1!2517 (_ BitVec 64)) (_2!2517 V!10053)) )
))
(declare-datatypes ((List!4657 0))(
  ( (Nil!4654) (Cons!4653 (h!5509 tuple2!5014) (t!9753 List!4657)) )
))
(declare-datatypes ((ListLongMap!3941 0))(
  ( (ListLongMap!3942 (toList!1986 List!4657)) )
))
(declare-fun contains!2026 (ListLongMap!3941 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1509 (array!17211 array!17209 (_ BitVec 32) (_ BitVec 32) V!10053 V!10053 (_ BitVec 32) Int) ListLongMap!3941)

(assert (=> b!333441 (= res!183758 (not (contains!2026 (getCurrentListMap!1509 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!333442 () Bool)

(declare-fun res!183753 () Bool)

(assert (=> b!333442 (=> (not res!183753) (not e!204746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17211 (_ BitVec 32)) Bool)

(assert (=> b!333442 (= res!183753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!11607 () Bool)

(declare-fun tp!24068 () Bool)

(declare-fun e!204749 () Bool)

(assert (=> mapNonEmpty!11607 (= mapRes!11607 (and tp!24068 e!204749))))

(declare-fun mapKey!11607 () (_ BitVec 32))

(declare-fun mapRest!11607 () (Array (_ BitVec 32) ValueCell!3060))

(declare-fun mapValue!11607 () ValueCell!3060)

(assert (=> mapNonEmpty!11607 (= (arr!8132 _values!1525) (store mapRest!11607 mapKey!11607 mapValue!11607))))

(declare-fun b!333443 () Bool)

(assert (=> b!333443 (= e!204749 tp_is_empty!6807)))

(assert (= (and start!33628 res!183754) b!333435))

(assert (= (and b!333435 res!183757) b!333442))

(assert (= (and b!333442 res!183753) b!333437))

(assert (= (and b!333437 res!183755) b!333436))

(assert (= (and b!333436 res!183756) b!333441))

(assert (= (and b!333441 res!183758) b!333438))

(assert (= (and b!333440 condMapEmpty!11607) mapIsEmpty!11607))

(assert (= (and b!333440 (not condMapEmpty!11607)) mapNonEmpty!11607))

(get-info :version)

(assert (= (and mapNonEmpty!11607 ((_ is ValueCellFull!3060) mapValue!11607)) b!333443))

(assert (= (and b!333440 ((_ is ValueCellFull!3060) mapDefault!11607)) b!333439))

(assert (= start!33628 b!333440))

(declare-fun m!337681 () Bool)

(assert (=> start!33628 m!337681))

(declare-fun m!337683 () Bool)

(assert (=> start!33628 m!337683))

(declare-fun m!337685 () Bool)

(assert (=> start!33628 m!337685))

(declare-fun m!337687 () Bool)

(assert (=> b!333437 m!337687))

(declare-fun m!337689 () Bool)

(assert (=> b!333441 m!337689))

(assert (=> b!333441 m!337689))

(declare-fun m!337691 () Bool)

(assert (=> b!333441 m!337691))

(declare-fun m!337693 () Bool)

(assert (=> b!333436 m!337693))

(declare-fun m!337695 () Bool)

(assert (=> mapNonEmpty!11607 m!337695))

(declare-fun m!337697 () Bool)

(assert (=> b!333438 m!337697))

(declare-fun m!337699 () Bool)

(assert (=> b!333442 m!337699))

(check-sat (not b!333442) (not start!33628) b_and!14053 (not b!333441) (not b_next!6855) (not b!333437) (not b!333436) tp_is_empty!6807 (not mapNonEmpty!11607) (not b!333438))
(check-sat b_and!14053 (not b_next!6855))
