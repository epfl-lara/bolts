; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111512 () Bool)

(assert start!111512)

(declare-fun b_free!30133 () Bool)

(declare-fun b_next!30133 () Bool)

(assert (=> start!111512 (= b_free!30133 (not b_next!30133))))

(declare-fun tp!105875 () Bool)

(declare-fun b_and!48435 () Bool)

(assert (=> start!111512 (= tp!105875 b_and!48435)))

(declare-fun b!1319444 () Bool)

(declare-fun res!875794 () Bool)

(declare-fun e!752812 () Bool)

(assert (=> b!1319444 (=> (not res!875794) (not e!752812))))

(declare-datatypes ((array!88805 0))(
  ( (array!88806 (arr!42872 (Array (_ BitVec 32) (_ BitVec 64))) (size!43423 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88805)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53041 0))(
  ( (V!53042 (val!18051 Int)) )
))
(declare-datatypes ((ValueCell!17078 0))(
  ( (ValueCellFull!17078 (v!20679 V!53041)) (EmptyCell!17078) )
))
(declare-datatypes ((array!88807 0))(
  ( (array!88808 (arr!42873 (Array (_ BitVec 32) ValueCell!17078)) (size!43424 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88807)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1319444 (= res!875794 (and (= (size!43424 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43423 _keys!1609) (size!43424 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!55577 () Bool)

(declare-fun mapRes!55577 () Bool)

(assert (=> mapIsEmpty!55577 mapRes!55577))

(declare-fun b!1319445 () Bool)

(assert (=> b!1319445 (= e!752812 (not true))))

(declare-datatypes ((tuple2!23394 0))(
  ( (tuple2!23395 (_1!11707 (_ BitVec 64)) (_2!11707 V!53041)) )
))
(declare-datatypes ((List!30581 0))(
  ( (Nil!30578) (Cons!30577 (h!31786 tuple2!23394) (t!44270 List!30581)) )
))
(declare-datatypes ((ListLongMap!21063 0))(
  ( (ListLongMap!21064 (toList!10547 List!30581)) )
))
(declare-fun lt!586591 () ListLongMap!21063)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8638 (ListLongMap!21063 (_ BitVec 64)) Bool)

(assert (=> b!1319445 (contains!8638 lt!586591 k!1164)))

(declare-datatypes ((Unit!43408 0))(
  ( (Unit!43409) )
))
(declare-fun lt!586590 () Unit!43408)

(declare-fun minValue!1279 () V!53041)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!119 ((_ BitVec 64) (_ BitVec 64) V!53041 ListLongMap!21063) Unit!43408)

(assert (=> b!1319445 (= lt!586590 (lemmaInListMapAfterAddingDiffThenInBefore!119 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586591))))

(declare-fun zeroValue!1279 () V!53041)

(declare-fun defaultEntry!1340 () Int)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun +!4504 (ListLongMap!21063 tuple2!23394) ListLongMap!21063)

(declare-fun getCurrentListMapNoExtraKeys!6219 (array!88805 array!88807 (_ BitVec 32) (_ BitVec 32) V!53041 V!53041 (_ BitVec 32) Int) ListLongMap!21063)

(declare-fun get!21596 (ValueCell!17078 V!53041) V!53041)

(declare-fun dynLambda!3541 (Int (_ BitVec 64)) V!53041)

(assert (=> b!1319445 (= lt!586591 (+!4504 (+!4504 (getCurrentListMapNoExtraKeys!6219 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23395 (select (arr!42872 _keys!1609) from!2000) (get!21596 (select (arr!42873 _values!1337) from!2000) (dynLambda!3541 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23395 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun mapNonEmpty!55577 () Bool)

(declare-fun tp!105876 () Bool)

(declare-fun e!752808 () Bool)

(assert (=> mapNonEmpty!55577 (= mapRes!55577 (and tp!105876 e!752808))))

(declare-fun mapRest!55577 () (Array (_ BitVec 32) ValueCell!17078))

(declare-fun mapValue!55577 () ValueCell!17078)

(declare-fun mapKey!55577 () (_ BitVec 32))

(assert (=> mapNonEmpty!55577 (= (arr!42873 _values!1337) (store mapRest!55577 mapKey!55577 mapValue!55577))))

(declare-fun b!1319446 () Bool)

(declare-fun res!875799 () Bool)

(assert (=> b!1319446 (=> (not res!875799) (not e!752812))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319446 (= res!875799 (validKeyInArray!0 (select (arr!42872 _keys!1609) from!2000)))))

(declare-fun b!1319448 () Bool)

(declare-fun res!875796 () Bool)

(assert (=> b!1319448 (=> (not res!875796) (not e!752812))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88805 (_ BitVec 32)) Bool)

(assert (=> b!1319448 (= res!875796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319449 () Bool)

(declare-fun tp_is_empty!35953 () Bool)

(assert (=> b!1319449 (= e!752808 tp_is_empty!35953)))

(declare-fun b!1319450 () Bool)

(declare-fun res!875793 () Bool)

(assert (=> b!1319450 (=> (not res!875793) (not e!752812))))

(declare-fun getCurrentListMap!5494 (array!88805 array!88807 (_ BitVec 32) (_ BitVec 32) V!53041 V!53041 (_ BitVec 32) Int) ListLongMap!21063)

(assert (=> b!1319450 (= res!875793 (contains!8638 (getCurrentListMap!5494 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1319451 () Bool)

(declare-fun res!875797 () Bool)

(assert (=> b!1319451 (=> (not res!875797) (not e!752812))))

(assert (=> b!1319451 (= res!875797 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43423 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1319452 () Bool)

(declare-fun e!752811 () Bool)

(assert (=> b!1319452 (= e!752811 tp_is_empty!35953)))

(declare-fun b!1319447 () Bool)

(declare-fun res!875800 () Bool)

(assert (=> b!1319447 (=> (not res!875800) (not e!752812))))

(assert (=> b!1319447 (= res!875800 (not (= (select (arr!42872 _keys!1609) from!2000) k!1164)))))

(declare-fun res!875798 () Bool)

(assert (=> start!111512 (=> (not res!875798) (not e!752812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111512 (= res!875798 (validMask!0 mask!2019))))

(assert (=> start!111512 e!752812))

(declare-fun array_inv!32321 (array!88805) Bool)

(assert (=> start!111512 (array_inv!32321 _keys!1609)))

(assert (=> start!111512 true))

(assert (=> start!111512 tp_is_empty!35953))

(declare-fun e!752809 () Bool)

(declare-fun array_inv!32322 (array!88807) Bool)

(assert (=> start!111512 (and (array_inv!32322 _values!1337) e!752809)))

(assert (=> start!111512 tp!105875))

(declare-fun b!1319453 () Bool)

(declare-fun res!875795 () Bool)

(assert (=> b!1319453 (=> (not res!875795) (not e!752812))))

(declare-datatypes ((List!30582 0))(
  ( (Nil!30579) (Cons!30578 (h!31787 (_ BitVec 64)) (t!44271 List!30582)) )
))
(declare-fun arrayNoDuplicates!0 (array!88805 (_ BitVec 32) List!30582) Bool)

(assert (=> b!1319453 (= res!875795 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30579))))

(declare-fun b!1319454 () Bool)

(assert (=> b!1319454 (= e!752809 (and e!752811 mapRes!55577))))

(declare-fun condMapEmpty!55577 () Bool)

(declare-fun mapDefault!55577 () ValueCell!17078)

