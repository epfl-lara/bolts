; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95650 () Bool)

(assert start!95650)

(declare-fun b_free!22267 () Bool)

(declare-fun b_next!22267 () Bool)

(assert (=> start!95650 (= b_free!22267 (not b_next!22267))))

(declare-fun tp!78650 () Bool)

(declare-fun b_and!35263 () Bool)

(assert (=> start!95650 (= tp!78650 b_and!35263)))

(declare-fun b!1080271 () Bool)

(declare-fun res!720066 () Bool)

(declare-fun e!617597 () Bool)

(assert (=> b!1080271 (=> (not res!720066) (not e!617597))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69444 0))(
  ( (array!69445 (arr!33392 (Array (_ BitVec 32) (_ BitVec 64))) (size!33929 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69444)

(assert (=> b!1080271 (= res!720066 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33929 _keys!1070))))))

(declare-fun b!1080272 () Bool)

(declare-fun e!617599 () Bool)

(declare-fun tp_is_empty!26269 () Bool)

(assert (=> b!1080272 (= e!617599 tp_is_empty!26269)))

(declare-fun b!1080273 () Bool)

(declare-fun res!720065 () Bool)

(assert (=> b!1080273 (=> (not res!720065) (not e!617597))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1080273 (= res!720065 (= (select (arr!33392 _keys!1070) i!650) k!904))))

(declare-fun b!1080274 () Bool)

(declare-fun e!617596 () Bool)

(assert (=> b!1080274 (= e!617596 tp_is_empty!26269)))

(declare-fun b!1080275 () Bool)

(declare-fun res!720062 () Bool)

(assert (=> b!1080275 (=> (not res!720062) (not e!617597))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69444 (_ BitVec 32)) Bool)

(assert (=> b!1080275 (= res!720062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!720061 () Bool)

(assert (=> start!95650 (=> (not res!720061) (not e!617597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95650 (= res!720061 (validMask!0 mask!1414))))

(assert (=> start!95650 e!617597))

(assert (=> start!95650 tp!78650))

(assert (=> start!95650 true))

(assert (=> start!95650 tp_is_empty!26269))

(declare-fun array_inv!25646 (array!69444) Bool)

(assert (=> start!95650 (array_inv!25646 _keys!1070)))

(declare-datatypes ((V!40153 0))(
  ( (V!40154 (val!13191 Int)) )
))
(declare-datatypes ((ValueCell!12425 0))(
  ( (ValueCellFull!12425 (v!15813 V!40153)) (EmptyCell!12425) )
))
(declare-datatypes ((array!69446 0))(
  ( (array!69447 (arr!33393 (Array (_ BitVec 32) ValueCell!12425)) (size!33930 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69446)

(declare-fun e!617595 () Bool)

(declare-fun array_inv!25647 (array!69446) Bool)

(assert (=> start!95650 (and (array_inv!25647 _values!874) e!617595)))

(declare-fun b!1080276 () Bool)

(declare-fun res!720060 () Bool)

(declare-fun e!617594 () Bool)

(assert (=> b!1080276 (=> (not res!720060) (not e!617594))))

(declare-fun lt!478965 () array!69444)

(declare-datatypes ((List!23398 0))(
  ( (Nil!23395) (Cons!23394 (h!24603 (_ BitVec 64)) (t!32764 List!23398)) )
))
(declare-fun arrayNoDuplicates!0 (array!69444 (_ BitVec 32) List!23398) Bool)

(assert (=> b!1080276 (= res!720060 (arrayNoDuplicates!0 lt!478965 #b00000000000000000000000000000000 Nil!23395))))

(declare-fun b!1080277 () Bool)

(declare-fun res!720067 () Bool)

(assert (=> b!1080277 (=> (not res!720067) (not e!617597))))

(assert (=> b!1080277 (= res!720067 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23395))))

(declare-fun b!1080278 () Bool)

(declare-fun res!720064 () Bool)

(assert (=> b!1080278 (=> (not res!720064) (not e!617597))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1080278 (= res!720064 (and (= (size!33930 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33929 _keys!1070) (size!33930 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!41158 () Bool)

(declare-fun mapRes!41158 () Bool)

(declare-fun tp!78651 () Bool)

(assert (=> mapNonEmpty!41158 (= mapRes!41158 (and tp!78651 e!617599))))

(declare-fun mapRest!41158 () (Array (_ BitVec 32) ValueCell!12425))

(declare-fun mapValue!41158 () ValueCell!12425)

(declare-fun mapKey!41158 () (_ BitVec 32))

(assert (=> mapNonEmpty!41158 (= (arr!33393 _values!874) (store mapRest!41158 mapKey!41158 mapValue!41158))))

(declare-fun b!1080279 () Bool)

(assert (=> b!1080279 (= e!617597 e!617594)))

(declare-fun res!720068 () Bool)

(assert (=> b!1080279 (=> (not res!720068) (not e!617594))))

(assert (=> b!1080279 (= res!720068 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478965 mask!1414))))

(assert (=> b!1080279 (= lt!478965 (array!69445 (store (arr!33392 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33929 _keys!1070)))))

(declare-fun b!1080280 () Bool)

(declare-fun res!720063 () Bool)

(assert (=> b!1080280 (=> (not res!720063) (not e!617597))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080280 (= res!720063 (validKeyInArray!0 k!904))))

(declare-fun b!1080281 () Bool)

(assert (=> b!1080281 (= e!617594 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!16776 0))(
  ( (tuple2!16777 (_1!8398 (_ BitVec 64)) (_2!8398 V!40153)) )
))
(declare-datatypes ((List!23399 0))(
  ( (Nil!23396) (Cons!23395 (h!24604 tuple2!16776) (t!32765 List!23399)) )
))
(declare-datatypes ((ListLongMap!14757 0))(
  ( (ListLongMap!14758 (toList!7394 List!23399)) )
))
(declare-fun lt!478967 () ListLongMap!14757)

(declare-fun minValue!831 () V!40153)

(declare-fun zeroValue!831 () V!40153)

(declare-fun getCurrentListMapNoExtraKeys!3905 (array!69444 array!69446 (_ BitVec 32) (_ BitVec 32) V!40153 V!40153 (_ BitVec 32) Int) ListLongMap!14757)

(assert (=> b!1080281 (= lt!478967 (getCurrentListMapNoExtraKeys!3905 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080281 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35467 0))(
  ( (Unit!35468) )
))
(declare-fun lt!478966 () Unit!35467)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69444 (_ BitVec 64) (_ BitVec 32)) Unit!35467)

(assert (=> b!1080281 (= lt!478966 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1080282 () Bool)

(assert (=> b!1080282 (= e!617595 (and e!617596 mapRes!41158))))

(declare-fun condMapEmpty!41158 () Bool)

(declare-fun mapDefault!41158 () ValueCell!12425)

