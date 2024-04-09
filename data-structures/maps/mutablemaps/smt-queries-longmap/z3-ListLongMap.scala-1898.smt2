; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33888 () Bool)

(assert start!33888)

(declare-fun b_free!7059 () Bool)

(declare-fun b_next!7059 () Bool)

(assert (=> start!33888 (= b_free!7059 (not b_next!7059))))

(declare-fun tp!24689 () Bool)

(declare-fun b_and!14263 () Bool)

(assert (=> start!33888 (= tp!24689 b_and!14263)))

(declare-fun b!337090 () Bool)

(declare-fun e!206873 () Bool)

(declare-fun e!206875 () Bool)

(assert (=> b!337090 (= e!206873 e!206875)))

(declare-fun res!186250 () Bool)

(assert (=> b!337090 (=> (not res!186250) (not e!206875))))

(declare-datatypes ((SeekEntryResult!3223 0))(
  ( (MissingZero!3223 (index!15071 (_ BitVec 32))) (Found!3223 (index!15072 (_ BitVec 32))) (Intermediate!3223 (undefined!4035 Bool) (index!15073 (_ BitVec 32)) (x!33614 (_ BitVec 32))) (Undefined!3223) (MissingVacant!3223 (index!15074 (_ BitVec 32))) )
))
(declare-fun lt!160367 () SeekEntryResult!3223)

(get-info :version)

(assert (=> b!337090 (= res!186250 (and (not ((_ is Found!3223) lt!160367)) ((_ is MissingZero!3223) lt!160367)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((array!17597 0))(
  ( (array!17598 (arr!8323 (Array (_ BitVec 32) (_ BitVec 64))) (size!8675 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17597)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17597 (_ BitVec 32)) SeekEntryResult!3223)

(assert (=> b!337090 (= lt!160367 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!337091 () Bool)

(declare-fun e!206872 () Bool)

(declare-fun tp_is_empty!7011 () Bool)

(assert (=> b!337091 (= e!206872 tp_is_empty!7011)))

(declare-fun b!337092 () Bool)

(declare-fun res!186246 () Bool)

(assert (=> b!337092 (=> (not res!186246) (not e!206873))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!337092 (= res!186246 (validKeyInArray!0 k0!1348))))

(declare-fun b!337093 () Bool)

(declare-fun e!206876 () Bool)

(assert (=> b!337093 (= e!206876 tp_is_empty!7011)))

(declare-fun res!186251 () Bool)

(assert (=> start!33888 (=> (not res!186251) (not e!206873))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33888 (= res!186251 (validMask!0 mask!2385))))

(assert (=> start!33888 e!206873))

(assert (=> start!33888 true))

(assert (=> start!33888 tp_is_empty!7011))

(assert (=> start!33888 tp!24689))

(declare-datatypes ((V!10325 0))(
  ( (V!10326 (val!3550 Int)) )
))
(declare-datatypes ((ValueCell!3162 0))(
  ( (ValueCellFull!3162 (v!5711 V!10325)) (EmptyCell!3162) )
))
(declare-datatypes ((array!17599 0))(
  ( (array!17600 (arr!8324 (Array (_ BitVec 32) ValueCell!3162)) (size!8676 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17599)

(declare-fun e!206877 () Bool)

(declare-fun array_inv!6168 (array!17599) Bool)

(assert (=> start!33888 (and (array_inv!6168 _values!1525) e!206877)))

(declare-fun array_inv!6169 (array!17597) Bool)

(assert (=> start!33888 (array_inv!6169 _keys!1895)))

(declare-fun mapNonEmpty!11922 () Bool)

(declare-fun mapRes!11922 () Bool)

(declare-fun tp!24690 () Bool)

(assert (=> mapNonEmpty!11922 (= mapRes!11922 (and tp!24690 e!206876))))

(declare-fun mapKey!11922 () (_ BitVec 32))

(declare-fun mapRest!11922 () (Array (_ BitVec 32) ValueCell!3162))

(declare-fun mapValue!11922 () ValueCell!3162)

(assert (=> mapNonEmpty!11922 (= (arr!8324 _values!1525) (store mapRest!11922 mapKey!11922 mapValue!11922))))

(declare-fun b!337094 () Bool)

(assert (=> b!337094 (= e!206877 (and e!206872 mapRes!11922))))

(declare-fun condMapEmpty!11922 () Bool)

(declare-fun mapDefault!11922 () ValueCell!3162)

(assert (=> b!337094 (= condMapEmpty!11922 (= (arr!8324 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3162)) mapDefault!11922)))))

(declare-fun b!337095 () Bool)

(declare-fun res!186245 () Bool)

(assert (=> b!337095 (=> (not res!186245) (not e!206873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17597 (_ BitVec 32)) Bool)

(assert (=> b!337095 (= res!186245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11922 () Bool)

(assert (=> mapIsEmpty!11922 mapRes!11922))

(declare-fun b!337096 () Bool)

(declare-fun res!186248 () Bool)

(assert (=> b!337096 (=> (not res!186248) (not e!206873))))

(declare-fun zeroValue!1467 () V!10325)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10325)

(declare-datatypes ((tuple2!5158 0))(
  ( (tuple2!5159 (_1!2589 (_ BitVec 64)) (_2!2589 V!10325)) )
))
(declare-datatypes ((List!4798 0))(
  ( (Nil!4795) (Cons!4794 (h!5650 tuple2!5158) (t!9900 List!4798)) )
))
(declare-datatypes ((ListLongMap!4085 0))(
  ( (ListLongMap!4086 (toList!2058 List!4798)) )
))
(declare-fun contains!2101 (ListLongMap!4085 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1578 (array!17597 array!17599 (_ BitVec 32) (_ BitVec 32) V!10325 V!10325 (_ BitVec 32) Int) ListLongMap!4085)

(assert (=> b!337096 (= res!186248 (not (contains!2101 (getCurrentListMap!1578 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!337097 () Bool)

(assert (=> b!337097 (= e!206875 false)))

(declare-fun lt!160368 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17597 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!337097 (= lt!160368 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!337098 () Bool)

(declare-fun res!186247 () Bool)

(assert (=> b!337098 (=> (not res!186247) (not e!206873))))

(declare-datatypes ((List!4799 0))(
  ( (Nil!4796) (Cons!4795 (h!5651 (_ BitVec 64)) (t!9901 List!4799)) )
))
(declare-fun arrayNoDuplicates!0 (array!17597 (_ BitVec 32) List!4799) Bool)

(assert (=> b!337098 (= res!186247 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4796))))

(declare-fun b!337099 () Bool)

(declare-fun res!186249 () Bool)

(assert (=> b!337099 (=> (not res!186249) (not e!206875))))

(declare-fun arrayContainsKey!0 (array!17597 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!337099 (= res!186249 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!337100 () Bool)

(declare-fun res!186244 () Bool)

(assert (=> b!337100 (=> (not res!186244) (not e!206873))))

(assert (=> b!337100 (= res!186244 (and (= (size!8676 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8675 _keys!1895) (size!8676 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(assert (= (and start!33888 res!186251) b!337100))

(assert (= (and b!337100 res!186244) b!337095))

(assert (= (and b!337095 res!186245) b!337098))

(assert (= (and b!337098 res!186247) b!337092))

(assert (= (and b!337092 res!186246) b!337096))

(assert (= (and b!337096 res!186248) b!337090))

(assert (= (and b!337090 res!186250) b!337099))

(assert (= (and b!337099 res!186249) b!337097))

(assert (= (and b!337094 condMapEmpty!11922) mapIsEmpty!11922))

(assert (= (and b!337094 (not condMapEmpty!11922)) mapNonEmpty!11922))

(assert (= (and mapNonEmpty!11922 ((_ is ValueCellFull!3162) mapValue!11922)) b!337093))

(assert (= (and b!337094 ((_ is ValueCellFull!3162) mapDefault!11922)) b!337091))

(assert (= start!33888 b!337094))

(declare-fun m!340699 () Bool)

(assert (=> b!337099 m!340699))

(declare-fun m!340701 () Bool)

(assert (=> start!33888 m!340701))

(declare-fun m!340703 () Bool)

(assert (=> start!33888 m!340703))

(declare-fun m!340705 () Bool)

(assert (=> start!33888 m!340705))

(declare-fun m!340707 () Bool)

(assert (=> mapNonEmpty!11922 m!340707))

(declare-fun m!340709 () Bool)

(assert (=> b!337090 m!340709))

(declare-fun m!340711 () Bool)

(assert (=> b!337096 m!340711))

(assert (=> b!337096 m!340711))

(declare-fun m!340713 () Bool)

(assert (=> b!337096 m!340713))

(declare-fun m!340715 () Bool)

(assert (=> b!337092 m!340715))

(declare-fun m!340717 () Bool)

(assert (=> b!337098 m!340717))

(declare-fun m!340719 () Bool)

(assert (=> b!337097 m!340719))

(declare-fun m!340721 () Bool)

(assert (=> b!337095 m!340721))

(check-sat (not mapNonEmpty!11922) b_and!14263 (not b!337099) (not b!337098) tp_is_empty!7011 (not b!337095) (not b!337097) (not b!337092) (not b_next!7059) (not b!337096) (not start!33888) (not b!337090))
(check-sat b_and!14263 (not b_next!7059))
