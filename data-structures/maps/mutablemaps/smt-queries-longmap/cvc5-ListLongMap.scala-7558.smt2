; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95704 () Bool)

(assert start!95704)

(declare-fun b_free!22321 () Bool)

(declare-fun b_next!22321 () Bool)

(assert (=> start!95704 (= b_free!22321 (not b_next!22321))))

(declare-fun tp!78813 () Bool)

(declare-fun b_and!35335 () Bool)

(assert (=> start!95704 (= tp!78813 b_and!35335)))

(declare-fun b!1081261 () Bool)

(declare-fun res!720793 () Bool)

(declare-fun e!618082 () Bool)

(assert (=> b!1081261 (=> (not res!720793) (not e!618082))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1081261 (= res!720793 (validKeyInArray!0 k!904))))

(declare-fun b!1081262 () Bool)

(declare-fun e!618081 () Bool)

(assert (=> b!1081262 (= e!618081 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40225 0))(
  ( (V!40226 (val!13218 Int)) )
))
(declare-datatypes ((ValueCell!12452 0))(
  ( (ValueCellFull!12452 (v!15840 V!40225)) (EmptyCell!12452) )
))
(declare-datatypes ((array!69550 0))(
  ( (array!69551 (arr!33445 (Array (_ BitVec 32) ValueCell!12452)) (size!33982 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69550)

(declare-fun minValue!831 () V!40225)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40225)

(declare-datatypes ((tuple2!16816 0))(
  ( (tuple2!16817 (_1!8418 (_ BitVec 64)) (_2!8418 V!40225)) )
))
(declare-datatypes ((List!23442 0))(
  ( (Nil!23439) (Cons!23438 (h!24647 tuple2!16816) (t!32828 List!23442)) )
))
(declare-datatypes ((ListLongMap!14797 0))(
  ( (ListLongMap!14798 (toList!7414 List!23442)) )
))
(declare-fun lt!479237 () ListLongMap!14797)

(declare-datatypes ((array!69552 0))(
  ( (array!69553 (arr!33446 (Array (_ BitVec 32) (_ BitVec 64))) (size!33983 (_ BitVec 32))) )
))
(declare-fun lt!479238 () array!69552)

(declare-fun getCurrentListMapNoExtraKeys!3925 (array!69552 array!69550 (_ BitVec 32) (_ BitVec 32) V!40225 V!40225 (_ BitVec 32) Int) ListLongMap!14797)

(declare-fun dynLambda!2061 (Int (_ BitVec 64)) V!40225)

(assert (=> b!1081262 (= lt!479237 (getCurrentListMapNoExtraKeys!3925 lt!479238 (array!69551 (store (arr!33445 _values!874) i!650 (ValueCellFull!12452 (dynLambda!2061 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!33982 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479240 () ListLongMap!14797)

(declare-fun _keys!1070 () array!69552)

(assert (=> b!1081262 (= lt!479240 (getCurrentListMapNoExtraKeys!3925 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1081262 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35507 0))(
  ( (Unit!35508) )
))
(declare-fun lt!479239 () Unit!35507)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69552 (_ BitVec 64) (_ BitVec 32)) Unit!35507)

(assert (=> b!1081262 (= lt!479239 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1081263 () Bool)

(declare-fun res!720790 () Bool)

(assert (=> b!1081263 (=> (not res!720790) (not e!618082))))

(assert (=> b!1081263 (= res!720790 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33983 _keys!1070))))))

(declare-fun b!1081264 () Bool)

(declare-fun res!720791 () Bool)

(assert (=> b!1081264 (=> (not res!720791) (not e!618082))))

(declare-datatypes ((List!23443 0))(
  ( (Nil!23440) (Cons!23439 (h!24648 (_ BitVec 64)) (t!32829 List!23443)) )
))
(declare-fun arrayNoDuplicates!0 (array!69552 (_ BitVec 32) List!23443) Bool)

(assert (=> b!1081264 (= res!720791 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23440))))

(declare-fun b!1081265 () Bool)

(declare-fun e!618080 () Bool)

(declare-fun tp_is_empty!26323 () Bool)

(assert (=> b!1081265 (= e!618080 tp_is_empty!26323)))

(declare-fun b!1081266 () Bool)

(declare-fun res!720797 () Bool)

(assert (=> b!1081266 (=> (not res!720797) (not e!618082))))

(assert (=> b!1081266 (= res!720797 (and (= (size!33982 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33983 _keys!1070) (size!33982 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1081267 () Bool)

(declare-fun res!720794 () Bool)

(assert (=> b!1081267 (=> (not res!720794) (not e!618082))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69552 (_ BitVec 32)) Bool)

(assert (=> b!1081267 (= res!720794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!41239 () Bool)

(declare-fun mapRes!41239 () Bool)

(assert (=> mapIsEmpty!41239 mapRes!41239))

(declare-fun mapNonEmpty!41239 () Bool)

(declare-fun tp!78812 () Bool)

(assert (=> mapNonEmpty!41239 (= mapRes!41239 (and tp!78812 e!618080))))

(declare-fun mapRest!41239 () (Array (_ BitVec 32) ValueCell!12452))

(declare-fun mapValue!41239 () ValueCell!12452)

(declare-fun mapKey!41239 () (_ BitVec 32))

(assert (=> mapNonEmpty!41239 (= (arr!33445 _values!874) (store mapRest!41239 mapKey!41239 mapValue!41239))))

(declare-fun b!1081269 () Bool)

(assert (=> b!1081269 (= e!618082 e!618081)))

(declare-fun res!720792 () Bool)

(assert (=> b!1081269 (=> (not res!720792) (not e!618081))))

(assert (=> b!1081269 (= res!720792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479238 mask!1414))))

(assert (=> b!1081269 (= lt!479238 (array!69553 (store (arr!33446 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33983 _keys!1070)))))

(declare-fun b!1081270 () Bool)

(declare-fun res!720796 () Bool)

(assert (=> b!1081270 (=> (not res!720796) (not e!618082))))

(assert (=> b!1081270 (= res!720796 (= (select (arr!33446 _keys!1070) i!650) k!904))))

(declare-fun b!1081271 () Bool)

(declare-fun e!618085 () Bool)

(declare-fun e!618084 () Bool)

(assert (=> b!1081271 (= e!618085 (and e!618084 mapRes!41239))))

(declare-fun condMapEmpty!41239 () Bool)

(declare-fun mapDefault!41239 () ValueCell!12452)

