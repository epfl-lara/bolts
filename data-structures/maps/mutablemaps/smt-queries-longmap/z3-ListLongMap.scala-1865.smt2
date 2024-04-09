; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33634 () Bool)

(assert start!33634)

(declare-fun b_free!6861 () Bool)

(declare-fun b_next!6861 () Bool)

(assert (=> start!33634 (= b_free!6861 (not b_next!6861))))

(declare-fun tp!24086 () Bool)

(declare-fun b_and!14059 () Bool)

(assert (=> start!33634 (= tp!24086 b_and!14059)))

(declare-fun b!333516 () Bool)

(declare-fun e!204795 () Bool)

(declare-fun e!204791 () Bool)

(declare-fun mapRes!11616 () Bool)

(assert (=> b!333516 (= e!204795 (and e!204791 mapRes!11616))))

(declare-fun condMapEmpty!11616 () Bool)

(declare-datatypes ((V!10061 0))(
  ( (V!10062 (val!3451 Int)) )
))
(declare-datatypes ((ValueCell!3063 0))(
  ( (ValueCellFull!3063 (v!5609 V!10061)) (EmptyCell!3063) )
))
(declare-datatypes ((array!17219 0))(
  ( (array!17220 (arr!8137 (Array (_ BitVec 32) ValueCell!3063)) (size!8489 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17219)

(declare-fun mapDefault!11616 () ValueCell!3063)

(assert (=> b!333516 (= condMapEmpty!11616 (= (arr!8137 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3063)) mapDefault!11616)))))

(declare-fun b!333517 () Bool)

(declare-fun res!183811 () Bool)

(declare-fun e!204793 () Bool)

(assert (=> b!333517 (=> (not res!183811) (not e!204793))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((array!17221 0))(
  ( (array!17222 (arr!8138 (Array (_ BitVec 32) (_ BitVec 64))) (size!8490 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17221)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10061)

(declare-fun zeroValue!1467 () V!10061)

(declare-datatypes ((tuple2!5016 0))(
  ( (tuple2!5017 (_1!2518 (_ BitVec 64)) (_2!2518 V!10061)) )
))
(declare-datatypes ((List!4658 0))(
  ( (Nil!4655) (Cons!4654 (h!5510 tuple2!5016) (t!9754 List!4658)) )
))
(declare-datatypes ((ListLongMap!3943 0))(
  ( (ListLongMap!3944 (toList!1987 List!4658)) )
))
(declare-fun contains!2027 (ListLongMap!3943 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1510 (array!17221 array!17219 (_ BitVec 32) (_ BitVec 32) V!10061 V!10061 (_ BitVec 32) Int) ListLongMap!3943)

(assert (=> b!333517 (= res!183811 (not (contains!2027 (getCurrentListMap!1510 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun res!183812 () Bool)

(assert (=> start!33634 (=> (not res!183812) (not e!204793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33634 (= res!183812 (validMask!0 mask!2385))))

(assert (=> start!33634 e!204793))

(assert (=> start!33634 true))

(declare-fun tp_is_empty!6813 () Bool)

(assert (=> start!33634 tp_is_empty!6813))

(assert (=> start!33634 tp!24086))

(declare-fun array_inv!6048 (array!17219) Bool)

(assert (=> start!33634 (and (array_inv!6048 _values!1525) e!204795)))

(declare-fun array_inv!6049 (array!17221) Bool)

(assert (=> start!33634 (array_inv!6049 _keys!1895)))

(declare-fun b!333518 () Bool)

(declare-fun res!183808 () Bool)

(assert (=> b!333518 (=> (not res!183808) (not e!204793))))

(declare-datatypes ((List!4659 0))(
  ( (Nil!4656) (Cons!4655 (h!5511 (_ BitVec 64)) (t!9755 List!4659)) )
))
(declare-fun arrayNoDuplicates!0 (array!17221 (_ BitVec 32) List!4659) Bool)

(assert (=> b!333518 (= res!183808 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4656))))

(declare-fun b!333519 () Bool)

(declare-fun e!204794 () Bool)

(assert (=> b!333519 (= e!204794 tp_is_empty!6813)))

(declare-fun b!333520 () Bool)

(assert (=> b!333520 (= e!204793 false)))

(declare-datatypes ((SeekEntryResult!3157 0))(
  ( (MissingZero!3157 (index!14807 (_ BitVec 32))) (Found!3157 (index!14808 (_ BitVec 32))) (Intermediate!3157 (undefined!3969 Bool) (index!14809 (_ BitVec 32)) (x!33254 (_ BitVec 32))) (Undefined!3157) (MissingVacant!3157 (index!14810 (_ BitVec 32))) )
))
(declare-fun lt!159354 () SeekEntryResult!3157)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17221 (_ BitVec 32)) SeekEntryResult!3157)

(assert (=> b!333520 (= lt!159354 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!333521 () Bool)

(declare-fun res!183809 () Bool)

(assert (=> b!333521 (=> (not res!183809) (not e!204793))))

(assert (=> b!333521 (= res!183809 (and (= (size!8489 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8490 _keys!1895) (size!8489 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!333522 () Bool)

(declare-fun res!183807 () Bool)

(assert (=> b!333522 (=> (not res!183807) (not e!204793))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333522 (= res!183807 (validKeyInArray!0 k0!1348))))

(declare-fun mapIsEmpty!11616 () Bool)

(assert (=> mapIsEmpty!11616 mapRes!11616))

(declare-fun b!333523 () Bool)

(declare-fun res!183810 () Bool)

(assert (=> b!333523 (=> (not res!183810) (not e!204793))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17221 (_ BitVec 32)) Bool)

(assert (=> b!333523 (= res!183810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!11616 () Bool)

(declare-fun tp!24087 () Bool)

(assert (=> mapNonEmpty!11616 (= mapRes!11616 (and tp!24087 e!204794))))

(declare-fun mapRest!11616 () (Array (_ BitVec 32) ValueCell!3063))

(declare-fun mapValue!11616 () ValueCell!3063)

(declare-fun mapKey!11616 () (_ BitVec 32))

(assert (=> mapNonEmpty!11616 (= (arr!8137 _values!1525) (store mapRest!11616 mapKey!11616 mapValue!11616))))

(declare-fun b!333524 () Bool)

(assert (=> b!333524 (= e!204791 tp_is_empty!6813)))

(assert (= (and start!33634 res!183812) b!333521))

(assert (= (and b!333521 res!183809) b!333523))

(assert (= (and b!333523 res!183810) b!333518))

(assert (= (and b!333518 res!183808) b!333522))

(assert (= (and b!333522 res!183807) b!333517))

(assert (= (and b!333517 res!183811) b!333520))

(assert (= (and b!333516 condMapEmpty!11616) mapIsEmpty!11616))

(assert (= (and b!333516 (not condMapEmpty!11616)) mapNonEmpty!11616))

(get-info :version)

(assert (= (and mapNonEmpty!11616 ((_ is ValueCellFull!3063) mapValue!11616)) b!333519))

(assert (= (and b!333516 ((_ is ValueCellFull!3063) mapDefault!11616)) b!333524))

(assert (= start!33634 b!333516))

(declare-fun m!337741 () Bool)

(assert (=> b!333520 m!337741))

(declare-fun m!337743 () Bool)

(assert (=> b!333517 m!337743))

(assert (=> b!333517 m!337743))

(declare-fun m!337745 () Bool)

(assert (=> b!333517 m!337745))

(declare-fun m!337747 () Bool)

(assert (=> start!33634 m!337747))

(declare-fun m!337749 () Bool)

(assert (=> start!33634 m!337749))

(declare-fun m!337751 () Bool)

(assert (=> start!33634 m!337751))

(declare-fun m!337753 () Bool)

(assert (=> mapNonEmpty!11616 m!337753))

(declare-fun m!337755 () Bool)

(assert (=> b!333522 m!337755))

(declare-fun m!337757 () Bool)

(assert (=> b!333518 m!337757))

(declare-fun m!337759 () Bool)

(assert (=> b!333523 m!337759))

(check-sat (not b!333523) (not b_next!6861) (not b!333517) (not start!33634) (not b!333518) (not b!333522) (not b!333520) b_and!14059 (not mapNonEmpty!11616) tp_is_empty!6813)
(check-sat b_and!14059 (not b_next!6861))
