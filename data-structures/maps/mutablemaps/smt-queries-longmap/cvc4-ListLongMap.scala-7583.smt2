; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95858 () Bool)

(assert start!95858)

(declare-fun b_free!22475 () Bool)

(declare-fun b_next!22475 () Bool)

(assert (=> start!95858 (= b_free!22475 (not b_next!22475))))

(declare-fun tp!79275 () Bool)

(declare-fun b_and!35643 () Bool)

(assert (=> start!95858 (= tp!79275 b_and!35643)))

(declare-fun b!1084187 () Bool)

(declare-fun res!722869 () Bool)

(declare-fun e!619467 () Bool)

(assert (=> b!1084187 (=> (not res!722869) (not e!619467))))

(declare-datatypes ((array!69856 0))(
  ( (array!69857 (arr!33598 (Array (_ BitVec 32) (_ BitVec 64))) (size!34135 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69856)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69856 (_ BitVec 32)) Bool)

(assert (=> b!1084187 (= res!722869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1084188 () Bool)

(declare-fun res!722875 () Bool)

(assert (=> b!1084188 (=> (not res!722875) (not e!619467))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1084188 (= res!722875 (= (select (arr!33598 _keys!1070) i!650) k!904))))

(declare-fun b!1084189 () Bool)

(declare-fun e!619468 () Bool)

(assert (=> b!1084189 (= e!619468 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40429 0))(
  ( (V!40430 (val!13295 Int)) )
))
(declare-datatypes ((ValueCell!12529 0))(
  ( (ValueCellFull!12529 (v!15917 V!40429)) (EmptyCell!12529) )
))
(declare-datatypes ((array!69858 0))(
  ( (array!69859 (arr!33599 (Array (_ BitVec 32) ValueCell!12529)) (size!34136 (_ BitVec 32))) )
))
(declare-fun lt!480535 () array!69858)

(declare-fun minValue!831 () V!40429)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!16914 0))(
  ( (tuple2!16915 (_1!8467 (_ BitVec 64)) (_2!8467 V!40429)) )
))
(declare-datatypes ((List!23556 0))(
  ( (Nil!23553) (Cons!23552 (h!24761 tuple2!16914) (t!33096 List!23556)) )
))
(declare-datatypes ((ListLongMap!14895 0))(
  ( (ListLongMap!14896 (toList!7463 List!23556)) )
))
(declare-fun lt!480542 () ListLongMap!14895)

(declare-fun lt!480538 () array!69856)

(declare-fun zeroValue!831 () V!40429)

(declare-fun getCurrentListMap!4222 (array!69856 array!69858 (_ BitVec 32) (_ BitVec 32) V!40429 V!40429 (_ BitVec 32) Int) ListLongMap!14895)

(assert (=> b!1084189 (= lt!480542 (getCurrentListMap!4222 lt!480538 lt!480535 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480536 () ListLongMap!14895)

(declare-fun lt!480541 () ListLongMap!14895)

(assert (=> b!1084189 (and (= lt!480536 lt!480541) (= lt!480541 lt!480536))))

(declare-fun lt!480537 () ListLongMap!14895)

(declare-fun -!745 (ListLongMap!14895 (_ BitVec 64)) ListLongMap!14895)

(assert (=> b!1084189 (= lt!480541 (-!745 lt!480537 k!904))))

(declare-datatypes ((Unit!35605 0))(
  ( (Unit!35606) )
))
(declare-fun lt!480540 () Unit!35605)

(declare-fun _values!874 () array!69858)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!28 (array!69856 array!69858 (_ BitVec 32) (_ BitVec 32) V!40429 V!40429 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35605)

(assert (=> b!1084189 (= lt!480540 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!28 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3974 (array!69856 array!69858 (_ BitVec 32) (_ BitVec 32) V!40429 V!40429 (_ BitVec 32) Int) ListLongMap!14895)

(assert (=> b!1084189 (= lt!480536 (getCurrentListMapNoExtraKeys!3974 lt!480538 lt!480535 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2110 (Int (_ BitVec 64)) V!40429)

(assert (=> b!1084189 (= lt!480535 (array!69859 (store (arr!33599 _values!874) i!650 (ValueCellFull!12529 (dynLambda!2110 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34136 _values!874)))))

(assert (=> b!1084189 (= lt!480537 (getCurrentListMapNoExtraKeys!3974 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69856 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1084189 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!480539 () Unit!35605)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69856 (_ BitVec 64) (_ BitVec 32)) Unit!35605)

(assert (=> b!1084189 (= lt!480539 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1084190 () Bool)

(assert (=> b!1084190 (= e!619467 e!619468)))

(declare-fun res!722872 () Bool)

(assert (=> b!1084190 (=> (not res!722872) (not e!619468))))

(assert (=> b!1084190 (= res!722872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480538 mask!1414))))

(assert (=> b!1084190 (= lt!480538 (array!69857 (store (arr!33598 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34135 _keys!1070)))))

(declare-fun mapIsEmpty!41470 () Bool)

(declare-fun mapRes!41470 () Bool)

(assert (=> mapIsEmpty!41470 mapRes!41470))

(declare-fun b!1084191 () Bool)

(declare-fun res!722873 () Bool)

(assert (=> b!1084191 (=> (not res!722873) (not e!619467))))

(assert (=> b!1084191 (= res!722873 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34135 _keys!1070))))))

(declare-fun b!1084192 () Bool)

(declare-fun e!619466 () Bool)

(declare-fun tp_is_empty!26477 () Bool)

(assert (=> b!1084192 (= e!619466 tp_is_empty!26477)))

(declare-fun res!722876 () Bool)

(assert (=> start!95858 (=> (not res!722876) (not e!619467))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95858 (= res!722876 (validMask!0 mask!1414))))

(assert (=> start!95858 e!619467))

(assert (=> start!95858 tp!79275))

(assert (=> start!95858 true))

(assert (=> start!95858 tp_is_empty!26477))

(declare-fun array_inv!25780 (array!69856) Bool)

(assert (=> start!95858 (array_inv!25780 _keys!1070)))

(declare-fun e!619471 () Bool)

(declare-fun array_inv!25781 (array!69858) Bool)

(assert (=> start!95858 (and (array_inv!25781 _values!874) e!619471)))

(declare-fun b!1084193 () Bool)

(declare-fun res!722870 () Bool)

(assert (=> b!1084193 (=> (not res!722870) (not e!619467))))

(declare-datatypes ((List!23557 0))(
  ( (Nil!23554) (Cons!23553 (h!24762 (_ BitVec 64)) (t!33097 List!23557)) )
))
(declare-fun arrayNoDuplicates!0 (array!69856 (_ BitVec 32) List!23557) Bool)

(assert (=> b!1084193 (= res!722870 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23554))))

(declare-fun b!1084194 () Bool)

(declare-fun e!619470 () Bool)

(assert (=> b!1084194 (= e!619470 tp_is_empty!26477)))

(declare-fun b!1084195 () Bool)

(declare-fun res!722874 () Bool)

(assert (=> b!1084195 (=> (not res!722874) (not e!619467))))

(assert (=> b!1084195 (= res!722874 (and (= (size!34136 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34135 _keys!1070) (size!34136 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1084196 () Bool)

(assert (=> b!1084196 (= e!619471 (and e!619466 mapRes!41470))))

(declare-fun condMapEmpty!41470 () Bool)

(declare-fun mapDefault!41470 () ValueCell!12529)

