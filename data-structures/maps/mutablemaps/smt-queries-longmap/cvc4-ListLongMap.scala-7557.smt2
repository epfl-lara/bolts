; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95702 () Bool)

(assert start!95702)

(declare-fun b_free!22319 () Bool)

(declare-fun b_next!22319 () Bool)

(assert (=> start!95702 (= b_free!22319 (not b_next!22319))))

(declare-fun tp!78806 () Bool)

(declare-fun b_and!35331 () Bool)

(assert (=> start!95702 (= tp!78806 b_and!35331)))

(declare-fun b!1081223 () Bool)

(declare-fun e!618066 () Bool)

(assert (=> b!1081223 (= e!618066 (not true))))

(declare-datatypes ((array!69546 0))(
  ( (array!69547 (arr!33443 (Array (_ BitVec 32) (_ BitVec 64))) (size!33980 (_ BitVec 32))) )
))
(declare-fun lt!479227 () array!69546)

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40221 0))(
  ( (V!40222 (val!13217 Int)) )
))
(declare-datatypes ((ValueCell!12451 0))(
  ( (ValueCellFull!12451 (v!15839 V!40221)) (EmptyCell!12451) )
))
(declare-datatypes ((array!69548 0))(
  ( (array!69549 (arr!33444 (Array (_ BitVec 32) ValueCell!12451)) (size!33981 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69548)

(declare-fun minValue!831 () V!40221)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!16814 0))(
  ( (tuple2!16815 (_1!8417 (_ BitVec 64)) (_2!8417 V!40221)) )
))
(declare-datatypes ((List!23440 0))(
  ( (Nil!23437) (Cons!23436 (h!24645 tuple2!16814) (t!32824 List!23440)) )
))
(declare-datatypes ((ListLongMap!14795 0))(
  ( (ListLongMap!14796 (toList!7413 List!23440)) )
))
(declare-fun lt!479225 () ListLongMap!14795)

(declare-fun zeroValue!831 () V!40221)

(declare-fun getCurrentListMapNoExtraKeys!3924 (array!69546 array!69548 (_ BitVec 32) (_ BitVec 32) V!40221 V!40221 (_ BitVec 32) Int) ListLongMap!14795)

(declare-fun dynLambda!2060 (Int (_ BitVec 64)) V!40221)

(assert (=> b!1081223 (= lt!479225 (getCurrentListMapNoExtraKeys!3924 lt!479227 (array!69549 (store (arr!33444 _values!874) i!650 (ValueCellFull!12451 (dynLambda!2060 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!33981 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479228 () ListLongMap!14795)

(declare-fun _keys!1070 () array!69546)

(assert (=> b!1081223 (= lt!479228 (getCurrentListMapNoExtraKeys!3924 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1081223 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35505 0))(
  ( (Unit!35506) )
))
(declare-fun lt!479226 () Unit!35505)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69546 (_ BitVec 64) (_ BitVec 32)) Unit!35505)

(assert (=> b!1081223 (= lt!479226 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1081224 () Bool)

(declare-fun e!618064 () Bool)

(declare-fun tp_is_empty!26321 () Bool)

(assert (=> b!1081224 (= e!618064 tp_is_empty!26321)))

(declare-fun b!1081225 () Bool)

(declare-fun res!720767 () Bool)

(declare-fun e!618062 () Bool)

(assert (=> b!1081225 (=> (not res!720767) (not e!618062))))

(assert (=> b!1081225 (= res!720767 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33980 _keys!1070))))))

(declare-fun mapNonEmpty!41236 () Bool)

(declare-fun mapRes!41236 () Bool)

(declare-fun tp!78807 () Bool)

(assert (=> mapNonEmpty!41236 (= mapRes!41236 (and tp!78807 e!618064))))

(declare-fun mapValue!41236 () ValueCell!12451)

(declare-fun mapRest!41236 () (Array (_ BitVec 32) ValueCell!12451))

(declare-fun mapKey!41236 () (_ BitVec 32))

(assert (=> mapNonEmpty!41236 (= (arr!33444 _values!874) (store mapRest!41236 mapKey!41236 mapValue!41236))))

(declare-fun mapIsEmpty!41236 () Bool)

(assert (=> mapIsEmpty!41236 mapRes!41236))

(declare-fun res!720769 () Bool)

(assert (=> start!95702 (=> (not res!720769) (not e!618062))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95702 (= res!720769 (validMask!0 mask!1414))))

(assert (=> start!95702 e!618062))

(assert (=> start!95702 tp!78806))

(assert (=> start!95702 true))

(assert (=> start!95702 tp_is_empty!26321))

(declare-fun array_inv!25680 (array!69546) Bool)

(assert (=> start!95702 (array_inv!25680 _keys!1070)))

(declare-fun e!618067 () Bool)

(declare-fun array_inv!25681 (array!69548) Bool)

(assert (=> start!95702 (and (array_inv!25681 _values!874) e!618067)))

(declare-fun b!1081226 () Bool)

(declare-fun res!720768 () Bool)

(assert (=> b!1081226 (=> (not res!720768) (not e!618062))))

(assert (=> b!1081226 (= res!720768 (= (select (arr!33443 _keys!1070) i!650) k!904))))

(declare-fun b!1081227 () Bool)

(declare-fun res!720765 () Bool)

(assert (=> b!1081227 (=> (not res!720765) (not e!618066))))

(declare-datatypes ((List!23441 0))(
  ( (Nil!23438) (Cons!23437 (h!24646 (_ BitVec 64)) (t!32825 List!23441)) )
))
(declare-fun arrayNoDuplicates!0 (array!69546 (_ BitVec 32) List!23441) Bool)

(assert (=> b!1081227 (= res!720765 (arrayNoDuplicates!0 lt!479227 #b00000000000000000000000000000000 Nil!23438))))

(declare-fun b!1081228 () Bool)

(declare-fun res!720764 () Bool)

(assert (=> b!1081228 (=> (not res!720764) (not e!618062))))

(assert (=> b!1081228 (= res!720764 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23438))))

(declare-fun b!1081229 () Bool)

(declare-fun res!720766 () Bool)

(assert (=> b!1081229 (=> (not res!720766) (not e!618062))))

(assert (=> b!1081229 (= res!720766 (and (= (size!33981 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33980 _keys!1070) (size!33981 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1081230 () Bool)

(declare-fun e!618063 () Bool)

(assert (=> b!1081230 (= e!618067 (and e!618063 mapRes!41236))))

(declare-fun condMapEmpty!41236 () Bool)

(declare-fun mapDefault!41236 () ValueCell!12451)

