; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33864 () Bool)

(assert start!33864)

(declare-fun b_free!7035 () Bool)

(declare-fun b_next!7035 () Bool)

(assert (=> start!33864 (= b_free!7035 (not b_next!7035))))

(declare-fun tp!24617 () Bool)

(declare-fun b_and!14239 () Bool)

(assert (=> start!33864 (= tp!24617 b_and!14239)))

(declare-fun mapNonEmpty!11886 () Bool)

(declare-fun mapRes!11886 () Bool)

(declare-fun tp!24618 () Bool)

(declare-fun e!206661 () Bool)

(assert (=> mapNonEmpty!11886 (= mapRes!11886 (and tp!24618 e!206661))))

(declare-datatypes ((V!10293 0))(
  ( (V!10294 (val!3538 Int)) )
))
(declare-datatypes ((ValueCell!3150 0))(
  ( (ValueCellFull!3150 (v!5699 V!10293)) (EmptyCell!3150) )
))
(declare-fun mapValue!11886 () ValueCell!3150)

(declare-datatypes ((array!17551 0))(
  ( (array!17552 (arr!8300 (Array (_ BitVec 32) ValueCell!3150)) (size!8652 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17551)

(declare-fun mapRest!11886 () (Array (_ BitVec 32) ValueCell!3150))

(declare-fun mapKey!11886 () (_ BitVec 32))

(assert (=> mapNonEmpty!11886 (= (arr!8300 _values!1525) (store mapRest!11886 mapKey!11886 mapValue!11886))))

(declare-fun res!185959 () Bool)

(declare-fun e!206656 () Bool)

(assert (=> start!33864 (=> (not res!185959) (not e!206656))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33864 (= res!185959 (validMask!0 mask!2385))))

(assert (=> start!33864 e!206656))

(assert (=> start!33864 true))

(declare-fun tp_is_empty!6987 () Bool)

(assert (=> start!33864 tp_is_empty!6987))

(assert (=> start!33864 tp!24617))

(declare-fun e!206660 () Bool)

(declare-fun array_inv!6154 (array!17551) Bool)

(assert (=> start!33864 (and (array_inv!6154 _values!1525) e!206660)))

(declare-datatypes ((array!17553 0))(
  ( (array!17554 (arr!8301 (Array (_ BitVec 32) (_ BitVec 64))) (size!8653 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17553)

(declare-fun array_inv!6155 (array!17553) Bool)

(assert (=> start!33864 (array_inv!6155 _keys!1895)))

(declare-fun b!336694 () Bool)

(assert (=> b!336694 (= e!206661 tp_is_empty!6987)))

(declare-fun b!336695 () Bool)

(declare-fun e!206658 () Bool)

(assert (=> b!336695 (= e!206658 tp_is_empty!6987)))

(declare-fun b!336696 () Bool)

(declare-fun res!185962 () Bool)

(assert (=> b!336696 (=> (not res!185962) (not e!206656))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17553 (_ BitVec 32)) Bool)

(assert (=> b!336696 (= res!185962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!336697 () Bool)

(declare-fun res!185961 () Bool)

(declare-fun e!206659 () Bool)

(assert (=> b!336697 (=> (not res!185961) (not e!206659))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17553 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!336697 (= res!185961 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!11886 () Bool)

(assert (=> mapIsEmpty!11886 mapRes!11886))

(declare-fun b!336698 () Bool)

(declare-fun res!185958 () Bool)

(assert (=> b!336698 (=> (not res!185958) (not e!206656))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!336698 (= res!185958 (and (= (size!8652 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8653 _keys!1895) (size!8652 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!336699 () Bool)

(assert (=> b!336699 (= e!206656 e!206659)))

(declare-fun res!185960 () Bool)

(assert (=> b!336699 (=> (not res!185960) (not e!206659))))

(declare-datatypes ((SeekEntryResult!3217 0))(
  ( (MissingZero!3217 (index!15047 (_ BitVec 32))) (Found!3217 (index!15048 (_ BitVec 32))) (Intermediate!3217 (undefined!4029 Bool) (index!15049 (_ BitVec 32)) (x!33576 (_ BitVec 32))) (Undefined!3217) (MissingVacant!3217 (index!15050 (_ BitVec 32))) )
))
(declare-fun lt!160295 () SeekEntryResult!3217)

(get-info :version)

(assert (=> b!336699 (= res!185960 (and (not ((_ is Found!3217) lt!160295)) ((_ is MissingZero!3217) lt!160295)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17553 (_ BitVec 32)) SeekEntryResult!3217)

(assert (=> b!336699 (= lt!160295 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!336700 () Bool)

(declare-fun res!185956 () Bool)

(assert (=> b!336700 (=> (not res!185956) (not e!206656))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!336700 (= res!185956 (validKeyInArray!0 k0!1348))))

(declare-fun b!336701 () Bool)

(assert (=> b!336701 (= e!206659 false)))

(declare-fun lt!160296 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17553 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!336701 (= lt!160296 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!336702 () Bool)

(declare-fun res!185963 () Bool)

(assert (=> b!336702 (=> (not res!185963) (not e!206656))))

(declare-fun zeroValue!1467 () V!10293)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10293)

(declare-datatypes ((tuple2!5144 0))(
  ( (tuple2!5145 (_1!2582 (_ BitVec 64)) (_2!2582 V!10293)) )
))
(declare-datatypes ((List!4781 0))(
  ( (Nil!4778) (Cons!4777 (h!5633 tuple2!5144) (t!9883 List!4781)) )
))
(declare-datatypes ((ListLongMap!4071 0))(
  ( (ListLongMap!4072 (toList!2051 List!4781)) )
))
(declare-fun contains!2094 (ListLongMap!4071 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1571 (array!17553 array!17551 (_ BitVec 32) (_ BitVec 32) V!10293 V!10293 (_ BitVec 32) Int) ListLongMap!4071)

(assert (=> b!336702 (= res!185963 (not (contains!2094 (getCurrentListMap!1571 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!336703 () Bool)

(assert (=> b!336703 (= e!206660 (and e!206658 mapRes!11886))))

(declare-fun condMapEmpty!11886 () Bool)

(declare-fun mapDefault!11886 () ValueCell!3150)

(assert (=> b!336703 (= condMapEmpty!11886 (= (arr!8300 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3150)) mapDefault!11886)))))

(declare-fun b!336704 () Bool)

(declare-fun res!185957 () Bool)

(assert (=> b!336704 (=> (not res!185957) (not e!206656))))

(declare-datatypes ((List!4782 0))(
  ( (Nil!4779) (Cons!4778 (h!5634 (_ BitVec 64)) (t!9884 List!4782)) )
))
(declare-fun arrayNoDuplicates!0 (array!17553 (_ BitVec 32) List!4782) Bool)

(assert (=> b!336704 (= res!185957 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4779))))

(assert (= (and start!33864 res!185959) b!336698))

(assert (= (and b!336698 res!185958) b!336696))

(assert (= (and b!336696 res!185962) b!336704))

(assert (= (and b!336704 res!185957) b!336700))

(assert (= (and b!336700 res!185956) b!336702))

(assert (= (and b!336702 res!185963) b!336699))

(assert (= (and b!336699 res!185960) b!336697))

(assert (= (and b!336697 res!185961) b!336701))

(assert (= (and b!336703 condMapEmpty!11886) mapIsEmpty!11886))

(assert (= (and b!336703 (not condMapEmpty!11886)) mapNonEmpty!11886))

(assert (= (and mapNonEmpty!11886 ((_ is ValueCellFull!3150) mapValue!11886)) b!336694))

(assert (= (and b!336703 ((_ is ValueCellFull!3150) mapDefault!11886)) b!336695))

(assert (= start!33864 b!336703))

(declare-fun m!340411 () Bool)

(assert (=> b!336701 m!340411))

(declare-fun m!340413 () Bool)

(assert (=> b!336699 m!340413))

(declare-fun m!340415 () Bool)

(assert (=> b!336697 m!340415))

(declare-fun m!340417 () Bool)

(assert (=> mapNonEmpty!11886 m!340417))

(declare-fun m!340419 () Bool)

(assert (=> b!336702 m!340419))

(assert (=> b!336702 m!340419))

(declare-fun m!340421 () Bool)

(assert (=> b!336702 m!340421))

(declare-fun m!340423 () Bool)

(assert (=> start!33864 m!340423))

(declare-fun m!340425 () Bool)

(assert (=> start!33864 m!340425))

(declare-fun m!340427 () Bool)

(assert (=> start!33864 m!340427))

(declare-fun m!340429 () Bool)

(assert (=> b!336704 m!340429))

(declare-fun m!340431 () Bool)

(assert (=> b!336696 m!340431))

(declare-fun m!340433 () Bool)

(assert (=> b!336700 m!340433))

(check-sat (not b!336704) (not b!336701) tp_is_empty!6987 (not b!336699) (not mapNonEmpty!11886) (not b!336702) b_and!14239 (not b!336697) (not start!33864) (not b!336696) (not b_next!7035) (not b!336700))
(check-sat b_and!14239 (not b_next!7035))
