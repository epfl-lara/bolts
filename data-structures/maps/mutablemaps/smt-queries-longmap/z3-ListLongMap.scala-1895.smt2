; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33870 () Bool)

(assert start!33870)

(declare-fun b_free!7041 () Bool)

(declare-fun b_next!7041 () Bool)

(assert (=> start!33870 (= b_free!7041 (not b_next!7041))))

(declare-fun tp!24636 () Bool)

(declare-fun b_and!14245 () Bool)

(assert (=> start!33870 (= tp!24636 b_and!14245)))

(declare-fun mapIsEmpty!11895 () Bool)

(declare-fun mapRes!11895 () Bool)

(assert (=> mapIsEmpty!11895 mapRes!11895))

(declare-fun b!336793 () Bool)

(declare-fun res!186032 () Bool)

(declare-fun e!206715 () Bool)

(assert (=> b!336793 (=> (not res!186032) (not e!206715))))

(declare-datatypes ((array!17563 0))(
  ( (array!17564 (arr!8306 (Array (_ BitVec 32) (_ BitVec 64))) (size!8658 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17563)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17563 (_ BitVec 32)) Bool)

(assert (=> b!336793 (= res!186032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!336794 () Bool)

(declare-fun e!206710 () Bool)

(declare-fun tp_is_empty!6993 () Bool)

(assert (=> b!336794 (= e!206710 tp_is_empty!6993)))

(declare-fun b!336795 () Bool)

(declare-fun res!186034 () Bool)

(assert (=> b!336795 (=> (not res!186034) (not e!206715))))

(declare-datatypes ((List!4786 0))(
  ( (Nil!4783) (Cons!4782 (h!5638 (_ BitVec 64)) (t!9888 List!4786)) )
))
(declare-fun arrayNoDuplicates!0 (array!17563 (_ BitVec 32) List!4786) Bool)

(assert (=> b!336795 (= res!186034 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4783))))

(declare-fun b!336796 () Bool)

(declare-fun res!186030 () Bool)

(assert (=> b!336796 (=> (not res!186030) (not e!206715))))

(declare-datatypes ((V!10301 0))(
  ( (V!10302 (val!3541 Int)) )
))
(declare-datatypes ((ValueCell!3153 0))(
  ( (ValueCellFull!3153 (v!5702 V!10301)) (EmptyCell!3153) )
))
(declare-datatypes ((array!17565 0))(
  ( (array!17566 (arr!8307 (Array (_ BitVec 32) ValueCell!3153)) (size!8659 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17565)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!336796 (= res!186030 (and (= (size!8659 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8658 _keys!1895) (size!8659 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!336797 () Bool)

(declare-fun e!206712 () Bool)

(declare-fun e!206713 () Bool)

(assert (=> b!336797 (= e!206712 (and e!206713 mapRes!11895))))

(declare-fun condMapEmpty!11895 () Bool)

(declare-fun mapDefault!11895 () ValueCell!3153)

(assert (=> b!336797 (= condMapEmpty!11895 (= (arr!8307 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3153)) mapDefault!11895)))))

(declare-fun b!336799 () Bool)

(declare-fun res!186029 () Bool)

(declare-fun e!206711 () Bool)

(assert (=> b!336799 (=> (not res!186029) (not e!206711))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17563 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!336799 (= res!186029 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!336800 () Bool)

(declare-fun res!186035 () Bool)

(assert (=> b!336800 (=> (not res!186035) (not e!206715))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!336800 (= res!186035 (validKeyInArray!0 k0!1348))))

(declare-fun b!336801 () Bool)

(declare-fun res!186033 () Bool)

(assert (=> b!336801 (=> (not res!186033) (not e!206715))))

(declare-fun zeroValue!1467 () V!10301)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10301)

(declare-datatypes ((tuple2!5148 0))(
  ( (tuple2!5149 (_1!2584 (_ BitVec 64)) (_2!2584 V!10301)) )
))
(declare-datatypes ((List!4787 0))(
  ( (Nil!4784) (Cons!4783 (h!5639 tuple2!5148) (t!9889 List!4787)) )
))
(declare-datatypes ((ListLongMap!4075 0))(
  ( (ListLongMap!4076 (toList!2053 List!4787)) )
))
(declare-fun contains!2096 (ListLongMap!4075 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1573 (array!17563 array!17565 (_ BitVec 32) (_ BitVec 32) V!10301 V!10301 (_ BitVec 32) Int) ListLongMap!4075)

(assert (=> b!336801 (= res!186033 (not (contains!2096 (getCurrentListMap!1573 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!336798 () Bool)

(assert (=> b!336798 (= e!206711 false)))

(declare-fun lt!160313 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17563 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!336798 (= lt!160313 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun res!186031 () Bool)

(assert (=> start!33870 (=> (not res!186031) (not e!206715))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33870 (= res!186031 (validMask!0 mask!2385))))

(assert (=> start!33870 e!206715))

(assert (=> start!33870 true))

(assert (=> start!33870 tp_is_empty!6993))

(assert (=> start!33870 tp!24636))

(declare-fun array_inv!6158 (array!17565) Bool)

(assert (=> start!33870 (and (array_inv!6158 _values!1525) e!206712)))

(declare-fun array_inv!6159 (array!17563) Bool)

(assert (=> start!33870 (array_inv!6159 _keys!1895)))

(declare-fun b!336802 () Bool)

(assert (=> b!336802 (= e!206713 tp_is_empty!6993)))

(declare-fun b!336803 () Bool)

(assert (=> b!336803 (= e!206715 e!206711)))

(declare-fun res!186028 () Bool)

(assert (=> b!336803 (=> (not res!186028) (not e!206711))))

(declare-datatypes ((SeekEntryResult!3219 0))(
  ( (MissingZero!3219 (index!15055 (_ BitVec 32))) (Found!3219 (index!15056 (_ BitVec 32))) (Intermediate!3219 (undefined!4031 Bool) (index!15057 (_ BitVec 32)) (x!33586 (_ BitVec 32))) (Undefined!3219) (MissingVacant!3219 (index!15058 (_ BitVec 32))) )
))
(declare-fun lt!160314 () SeekEntryResult!3219)

(get-info :version)

(assert (=> b!336803 (= res!186028 (and (not ((_ is Found!3219) lt!160314)) ((_ is MissingZero!3219) lt!160314)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17563 (_ BitVec 32)) SeekEntryResult!3219)

(assert (=> b!336803 (= lt!160314 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!11895 () Bool)

(declare-fun tp!24635 () Bool)

(assert (=> mapNonEmpty!11895 (= mapRes!11895 (and tp!24635 e!206710))))

(declare-fun mapValue!11895 () ValueCell!3153)

(declare-fun mapKey!11895 () (_ BitVec 32))

(declare-fun mapRest!11895 () (Array (_ BitVec 32) ValueCell!3153))

(assert (=> mapNonEmpty!11895 (= (arr!8307 _values!1525) (store mapRest!11895 mapKey!11895 mapValue!11895))))

(assert (= (and start!33870 res!186031) b!336796))

(assert (= (and b!336796 res!186030) b!336793))

(assert (= (and b!336793 res!186032) b!336795))

(assert (= (and b!336795 res!186034) b!336800))

(assert (= (and b!336800 res!186035) b!336801))

(assert (= (and b!336801 res!186033) b!336803))

(assert (= (and b!336803 res!186028) b!336799))

(assert (= (and b!336799 res!186029) b!336798))

(assert (= (and b!336797 condMapEmpty!11895) mapIsEmpty!11895))

(assert (= (and b!336797 (not condMapEmpty!11895)) mapNonEmpty!11895))

(assert (= (and mapNonEmpty!11895 ((_ is ValueCellFull!3153) mapValue!11895)) b!336794))

(assert (= (and b!336797 ((_ is ValueCellFull!3153) mapDefault!11895)) b!336802))

(assert (= start!33870 b!336797))

(declare-fun m!340483 () Bool)

(assert (=> start!33870 m!340483))

(declare-fun m!340485 () Bool)

(assert (=> start!33870 m!340485))

(declare-fun m!340487 () Bool)

(assert (=> start!33870 m!340487))

(declare-fun m!340489 () Bool)

(assert (=> b!336803 m!340489))

(declare-fun m!340491 () Bool)

(assert (=> b!336798 m!340491))

(declare-fun m!340493 () Bool)

(assert (=> b!336793 m!340493))

(declare-fun m!340495 () Bool)

(assert (=> b!336799 m!340495))

(declare-fun m!340497 () Bool)

(assert (=> b!336801 m!340497))

(assert (=> b!336801 m!340497))

(declare-fun m!340499 () Bool)

(assert (=> b!336801 m!340499))

(declare-fun m!340501 () Bool)

(assert (=> b!336795 m!340501))

(declare-fun m!340503 () Bool)

(assert (=> b!336800 m!340503))

(declare-fun m!340505 () Bool)

(assert (=> mapNonEmpty!11895 m!340505))

(check-sat b_and!14245 (not mapNonEmpty!11895) (not b!336798) (not b!336803) (not b!336800) (not start!33870) (not b!336799) tp_is_empty!6993 (not b!336795) (not b!336793) (not b!336801) (not b_next!7041))
(check-sat b_and!14245 (not b_next!7041))
