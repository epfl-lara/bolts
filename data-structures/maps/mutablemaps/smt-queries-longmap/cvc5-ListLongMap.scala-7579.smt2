; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95830 () Bool)

(assert start!95830)

(declare-fun b_free!22447 () Bool)

(declare-fun b_next!22447 () Bool)

(assert (=> start!95830 (= b_free!22447 (not b_next!22447))))

(declare-fun tp!79191 () Bool)

(declare-fun b_and!35587 () Bool)

(assert (=> start!95830 (= tp!79191 b_and!35587)))

(declare-fun b!1083655 () Bool)

(declare-fun e!619215 () Bool)

(declare-fun tp_is_empty!26449 () Bool)

(assert (=> b!1083655 (= e!619215 tp_is_empty!26449)))

(declare-fun b!1083656 () Bool)

(declare-fun res!722492 () Bool)

(declare-fun e!619218 () Bool)

(assert (=> b!1083656 (=> (not res!722492) (not e!619218))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69800 0))(
  ( (array!69801 (arr!33570 (Array (_ BitVec 32) (_ BitVec 64))) (size!34107 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69800)

(assert (=> b!1083656 (= res!722492 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34107 _keys!1070))))))

(declare-fun b!1083657 () Bool)

(declare-fun e!619214 () Bool)

(assert (=> b!1083657 (= e!619214 tp_is_empty!26449)))

(declare-fun b!1083658 () Bool)

(declare-fun res!722493 () Bool)

(assert (=> b!1083658 (=> (not res!722493) (not e!619218))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1083658 (= res!722493 (= (select (arr!33570 _keys!1070) i!650) k!904))))

(declare-fun b!1083659 () Bool)

(declare-fun res!722490 () Bool)

(assert (=> b!1083659 (=> (not res!722490) (not e!619218))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((V!40393 0))(
  ( (V!40394 (val!13281 Int)) )
))
(declare-datatypes ((ValueCell!12515 0))(
  ( (ValueCellFull!12515 (v!15903 V!40393)) (EmptyCell!12515) )
))
(declare-datatypes ((array!69802 0))(
  ( (array!69803 (arr!33571 (Array (_ BitVec 32) ValueCell!12515)) (size!34108 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69802)

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1083659 (= res!722490 (and (= (size!34108 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34107 _keys!1070) (size!34108 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1083660 () Bool)

(declare-fun res!722495 () Bool)

(assert (=> b!1083660 (=> (not res!722495) (not e!619218))))

(declare-datatypes ((List!23533 0))(
  ( (Nil!23530) (Cons!23529 (h!24738 (_ BitVec 64)) (t!33045 List!23533)) )
))
(declare-fun arrayNoDuplicates!0 (array!69800 (_ BitVec 32) List!23533) Bool)

(assert (=> b!1083660 (= res!722495 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23530))))

(declare-fun res!722496 () Bool)

(assert (=> start!95830 (=> (not res!722496) (not e!619218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95830 (= res!722496 (validMask!0 mask!1414))))

(assert (=> start!95830 e!619218))

(assert (=> start!95830 tp!79191))

(assert (=> start!95830 true))

(assert (=> start!95830 tp_is_empty!26449))

(declare-fun array_inv!25762 (array!69800) Bool)

(assert (=> start!95830 (array_inv!25762 _keys!1070)))

(declare-fun e!619217 () Bool)

(declare-fun array_inv!25763 (array!69802) Bool)

(assert (=> start!95830 (and (array_inv!25763 _values!874) e!619217)))

(declare-fun b!1083661 () Bool)

(declare-fun e!619219 () Bool)

(assert (=> b!1083661 (= e!619219 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40393)

(declare-fun lt!480201 () array!69802)

(declare-fun lt!480206 () array!69800)

(declare-datatypes ((tuple2!16894 0))(
  ( (tuple2!16895 (_1!8457 (_ BitVec 64)) (_2!8457 V!40393)) )
))
(declare-datatypes ((List!23534 0))(
  ( (Nil!23531) (Cons!23530 (h!24739 tuple2!16894) (t!33046 List!23534)) )
))
(declare-datatypes ((ListLongMap!14875 0))(
  ( (ListLongMap!14876 (toList!7453 List!23534)) )
))
(declare-fun lt!480203 () ListLongMap!14875)

(declare-fun zeroValue!831 () V!40393)

(declare-fun getCurrentListMap!4212 (array!69800 array!69802 (_ BitVec 32) (_ BitVec 32) V!40393 V!40393 (_ BitVec 32) Int) ListLongMap!14875)

(assert (=> b!1083661 (= lt!480203 (getCurrentListMap!4212 lt!480206 lt!480201 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480202 () ListLongMap!14875)

(declare-fun lt!480204 () ListLongMap!14875)

(assert (=> b!1083661 (and (= lt!480202 lt!480204) (= lt!480204 lt!480202))))

(declare-fun lt!480199 () ListLongMap!14875)

(declare-fun -!735 (ListLongMap!14875 (_ BitVec 64)) ListLongMap!14875)

(assert (=> b!1083661 (= lt!480204 (-!735 lt!480199 k!904))))

(declare-datatypes ((Unit!35585 0))(
  ( (Unit!35586) )
))
(declare-fun lt!480200 () Unit!35585)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!18 (array!69800 array!69802 (_ BitVec 32) (_ BitVec 32) V!40393 V!40393 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35585)

(assert (=> b!1083661 (= lt!480200 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!18 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3964 (array!69800 array!69802 (_ BitVec 32) (_ BitVec 32) V!40393 V!40393 (_ BitVec 32) Int) ListLongMap!14875)

(assert (=> b!1083661 (= lt!480202 (getCurrentListMapNoExtraKeys!3964 lt!480206 lt!480201 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2100 (Int (_ BitVec 64)) V!40393)

(assert (=> b!1083661 (= lt!480201 (array!69803 (store (arr!33571 _values!874) i!650 (ValueCellFull!12515 (dynLambda!2100 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34108 _values!874)))))

(assert (=> b!1083661 (= lt!480199 (getCurrentListMapNoExtraKeys!3964 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69800 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1083661 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!480205 () Unit!35585)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69800 (_ BitVec 64) (_ BitVec 32)) Unit!35585)

(assert (=> b!1083661 (= lt!480205 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1083662 () Bool)

(declare-fun res!722494 () Bool)

(assert (=> b!1083662 (=> (not res!722494) (not e!619218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69800 (_ BitVec 32)) Bool)

(assert (=> b!1083662 (= res!722494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1083663 () Bool)

(declare-fun mapRes!41428 () Bool)

(assert (=> b!1083663 (= e!619217 (and e!619215 mapRes!41428))))

(declare-fun condMapEmpty!41428 () Bool)

(declare-fun mapDefault!41428 () ValueCell!12515)

