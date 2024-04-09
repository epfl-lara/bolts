; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111590 () Bool)

(assert start!111590)

(declare-fun b_free!30211 () Bool)

(declare-fun b_next!30211 () Bool)

(assert (=> start!111590 (= b_free!30211 (not b_next!30211))))

(declare-fun tp!106109 () Bool)

(declare-fun b_and!48591 () Bool)

(assert (=> start!111590 (= tp!106109 b_and!48591)))

(declare-fun b!1320809 () Bool)

(declare-fun e!753394 () Bool)

(assert (=> b!1320809 (= e!753394 (not true))))

(declare-datatypes ((V!53145 0))(
  ( (V!53146 (val!18090 Int)) )
))
(declare-datatypes ((tuple2!23458 0))(
  ( (tuple2!23459 (_1!11739 (_ BitVec 64)) (_2!11739 V!53145)) )
))
(declare-datatypes ((List!30639 0))(
  ( (Nil!30636) (Cons!30635 (h!31844 tuple2!23458) (t!44406 List!30639)) )
))
(declare-datatypes ((ListLongMap!21127 0))(
  ( (ListLongMap!21128 (toList!10579 List!30639)) )
))
(declare-fun lt!587083 () ListLongMap!21127)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8670 (ListLongMap!21127 (_ BitVec 64)) Bool)

(assert (=> b!1320809 (contains!8670 lt!587083 k!1164)))

(declare-datatypes ((array!88955 0))(
  ( (array!88956 (arr!42947 (Array (_ BitVec 32) (_ BitVec 64))) (size!43498 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88955)

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((Unit!43466 0))(
  ( (Unit!43467) )
))
(declare-fun lt!587079 () Unit!43466)

(declare-fun lt!587080 () V!53145)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!148 ((_ BitVec 64) (_ BitVec 64) V!53145 ListLongMap!21127) Unit!43466)

(assert (=> b!1320809 (= lt!587079 (lemmaInListMapAfterAddingDiffThenInBefore!148 k!1164 (select (arr!42947 _keys!1609) from!2000) lt!587080 lt!587083))))

(declare-fun lt!587082 () ListLongMap!21127)

(assert (=> b!1320809 (contains!8670 lt!587082 k!1164)))

(declare-fun zeroValue!1279 () V!53145)

(declare-fun lt!587078 () Unit!43466)

(assert (=> b!1320809 (= lt!587078 (lemmaInListMapAfterAddingDiffThenInBefore!148 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587082))))

(declare-fun lt!587081 () ListLongMap!21127)

(assert (=> b!1320809 (contains!8670 lt!587081 k!1164)))

(declare-fun minValue!1279 () V!53145)

(declare-fun lt!587077 () Unit!43466)

(assert (=> b!1320809 (= lt!587077 (lemmaInListMapAfterAddingDiffThenInBefore!148 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587081))))

(declare-fun +!4533 (ListLongMap!21127 tuple2!23458) ListLongMap!21127)

(assert (=> b!1320809 (= lt!587081 (+!4533 lt!587082 (tuple2!23459 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1320809 (= lt!587082 (+!4533 lt!587083 (tuple2!23459 (select (arr!42947 _keys!1609) from!2000) lt!587080)))))

(declare-datatypes ((ValueCell!17117 0))(
  ( (ValueCellFull!17117 (v!20718 V!53145)) (EmptyCell!17117) )
))
(declare-datatypes ((array!88957 0))(
  ( (array!88958 (arr!42948 (Array (_ BitVec 32) ValueCell!17117)) (size!43499 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88957)

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21651 (ValueCell!17117 V!53145) V!53145)

(declare-fun dynLambda!3570 (Int (_ BitVec 64)) V!53145)

(assert (=> b!1320809 (= lt!587080 (get!21651 (select (arr!42948 _values!1337) from!2000) (dynLambda!3570 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6248 (array!88955 array!88957 (_ BitVec 32) (_ BitVec 32) V!53145 V!53145 (_ BitVec 32) Int) ListLongMap!21127)

(assert (=> b!1320809 (= lt!587083 (getCurrentListMapNoExtraKeys!6248 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1320810 () Bool)

(declare-fun res!876732 () Bool)

(assert (=> b!1320810 (=> (not res!876732) (not e!753394))))

(assert (=> b!1320810 (= res!876732 (and (= (size!43499 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43498 _keys!1609) (size!43499 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1320811 () Bool)

(declare-fun e!753395 () Bool)

(declare-fun tp_is_empty!36031 () Bool)

(assert (=> b!1320811 (= e!753395 tp_is_empty!36031)))

(declare-fun b!1320812 () Bool)

(declare-fun res!876734 () Bool)

(assert (=> b!1320812 (=> (not res!876734) (not e!753394))))

(assert (=> b!1320812 (= res!876734 (not (= (select (arr!42947 _keys!1609) from!2000) k!1164)))))

(declare-fun mapNonEmpty!55694 () Bool)

(declare-fun mapRes!55694 () Bool)

(declare-fun tp!106110 () Bool)

(assert (=> mapNonEmpty!55694 (= mapRes!55694 (and tp!106110 e!753395))))

(declare-fun mapRest!55694 () (Array (_ BitVec 32) ValueCell!17117))

(declare-fun mapValue!55694 () ValueCell!17117)

(declare-fun mapKey!55694 () (_ BitVec 32))

(assert (=> mapNonEmpty!55694 (= (arr!42948 _values!1337) (store mapRest!55694 mapKey!55694 mapValue!55694))))

(declare-fun b!1320813 () Bool)

(declare-fun res!876729 () Bool)

(assert (=> b!1320813 (=> (not res!876729) (not e!753394))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88955 (_ BitVec 32)) Bool)

(assert (=> b!1320813 (= res!876729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1320814 () Bool)

(declare-fun res!876730 () Bool)

(assert (=> b!1320814 (=> (not res!876730) (not e!753394))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1320814 (= res!876730 (validKeyInArray!0 (select (arr!42947 _keys!1609) from!2000)))))

(declare-fun b!1320815 () Bool)

(declare-fun res!876736 () Bool)

(assert (=> b!1320815 (=> (not res!876736) (not e!753394))))

(declare-datatypes ((List!30640 0))(
  ( (Nil!30637) (Cons!30636 (h!31845 (_ BitVec 64)) (t!44407 List!30640)) )
))
(declare-fun arrayNoDuplicates!0 (array!88955 (_ BitVec 32) List!30640) Bool)

(assert (=> b!1320815 (= res!876736 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30637))))

(declare-fun res!876733 () Bool)

(assert (=> start!111590 (=> (not res!876733) (not e!753394))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111590 (= res!876733 (validMask!0 mask!2019))))

(assert (=> start!111590 e!753394))

(declare-fun array_inv!32379 (array!88955) Bool)

(assert (=> start!111590 (array_inv!32379 _keys!1609)))

(assert (=> start!111590 true))

(assert (=> start!111590 tp_is_empty!36031))

(declare-fun e!753393 () Bool)

(declare-fun array_inv!32380 (array!88957) Bool)

(assert (=> start!111590 (and (array_inv!32380 _values!1337) e!753393)))

(assert (=> start!111590 tp!106109))

(declare-fun b!1320816 () Bool)

(declare-fun res!876731 () Bool)

(assert (=> b!1320816 (=> (not res!876731) (not e!753394))))

(declare-fun getCurrentListMap!5522 (array!88955 array!88957 (_ BitVec 32) (_ BitVec 32) V!53145 V!53145 (_ BitVec 32) Int) ListLongMap!21127)

(assert (=> b!1320816 (= res!876731 (contains!8670 (getCurrentListMap!5522 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1320817 () Bool)

(declare-fun res!876735 () Bool)

(assert (=> b!1320817 (=> (not res!876735) (not e!753394))))

(assert (=> b!1320817 (= res!876735 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43498 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320818 () Bool)

(declare-fun e!753397 () Bool)

(assert (=> b!1320818 (= e!753397 tp_is_empty!36031)))

(declare-fun b!1320819 () Bool)

(assert (=> b!1320819 (= e!753393 (and e!753397 mapRes!55694))))

(declare-fun condMapEmpty!55694 () Bool)

(declare-fun mapDefault!55694 () ValueCell!17117)

