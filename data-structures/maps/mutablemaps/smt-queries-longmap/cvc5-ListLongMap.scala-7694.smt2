; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96624 () Bool)

(assert start!96624)

(declare-fun b_free!23089 () Bool)

(declare-fun b_next!23089 () Bool)

(assert (=> start!96624 (= b_free!23089 (not b_next!23089))))

(declare-fun tp!81203 () Bool)

(declare-fun b_and!36901 () Bool)

(assert (=> start!96624 (= tp!81203 b_and!36901)))

(declare-fun b!1098400 () Bool)

(declare-fun res!733126 () Bool)

(declare-fun e!626963 () Bool)

(assert (=> b!1098400 (=> (not res!733126) (not e!626963))))

(declare-datatypes ((array!71144 0))(
  ( (array!71145 (arr!34237 (Array (_ BitVec 32) (_ BitVec 64))) (size!34774 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71144)

(declare-datatypes ((List!24051 0))(
  ( (Nil!24048) (Cons!24047 (h!25256 (_ BitVec 64)) (t!34193 List!24051)) )
))
(declare-fun arrayNoDuplicates!0 (array!71144 (_ BitVec 32) List!24051) Bool)

(assert (=> b!1098400 (= res!733126 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24048))))

(declare-fun b!1098401 () Bool)

(declare-fun res!733125 () Bool)

(assert (=> b!1098401 (=> (not res!733125) (not e!626963))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1098401 (= res!733125 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34774 _keys!1070))))))

(declare-fun res!733123 () Bool)

(assert (=> start!96624 (=> (not res!733123) (not e!626963))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96624 (= res!733123 (validMask!0 mask!1414))))

(assert (=> start!96624 e!626963))

(assert (=> start!96624 tp!81203))

(assert (=> start!96624 true))

(declare-fun tp_is_empty!27139 () Bool)

(assert (=> start!96624 tp_is_empty!27139))

(declare-fun array_inv!26234 (array!71144) Bool)

(assert (=> start!96624 (array_inv!26234 _keys!1070)))

(declare-datatypes ((V!41313 0))(
  ( (V!41314 (val!13626 Int)) )
))
(declare-datatypes ((ValueCell!12860 0))(
  ( (ValueCellFull!12860 (v!16251 V!41313)) (EmptyCell!12860) )
))
(declare-datatypes ((array!71146 0))(
  ( (array!71147 (arr!34238 (Array (_ BitVec 32) ValueCell!12860)) (size!34775 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71146)

(declare-fun e!626964 () Bool)

(declare-fun array_inv!26235 (array!71146) Bool)

(assert (=> start!96624 (and (array_inv!26235 _values!874) e!626964)))

(declare-fun b!1098402 () Bool)

(declare-fun res!733127 () Bool)

(assert (=> b!1098402 (=> (not res!733127) (not e!626963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71144 (_ BitVec 32)) Bool)

(assert (=> b!1098402 (= res!733127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1098403 () Bool)

(declare-fun e!626960 () Bool)

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1098403 (= e!626960 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904)))))

(declare-datatypes ((tuple2!17374 0))(
  ( (tuple2!17375 (_1!8697 (_ BitVec 64)) (_2!8697 V!41313)) )
))
(declare-datatypes ((List!24052 0))(
  ( (Nil!24049) (Cons!24048 (h!25257 tuple2!17374) (t!34194 List!24052)) )
))
(declare-datatypes ((ListLongMap!15355 0))(
  ( (ListLongMap!15356 (toList!7693 List!24052)) )
))
(declare-fun lt!491341 () ListLongMap!15355)

(declare-fun lt!491350 () ListLongMap!15355)

(declare-fun -!938 (ListLongMap!15355 (_ BitVec 64)) ListLongMap!15355)

(assert (=> b!1098403 (= (-!938 lt!491341 k!904) lt!491350)))

(declare-datatypes ((Unit!36061 0))(
  ( (Unit!36062) )
))
(declare-fun lt!491344 () Unit!36061)

(declare-fun lt!491347 () ListLongMap!15355)

(declare-fun zeroValue!831 () V!41313)

(declare-fun addRemoveCommutativeForDiffKeys!119 (ListLongMap!15355 (_ BitVec 64) V!41313 (_ BitVec 64)) Unit!36061)

(assert (=> b!1098403 (= lt!491344 (addRemoveCommutativeForDiffKeys!119 lt!491347 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun lt!491348 () ListLongMap!15355)

(declare-fun lt!491345 () tuple2!17374)

(declare-fun +!3328 (ListLongMap!15355 tuple2!17374) ListLongMap!15355)

(assert (=> b!1098403 (= lt!491348 (+!3328 lt!491350 lt!491345))))

(declare-fun lt!491343 () ListLongMap!15355)

(declare-fun lt!491342 () tuple2!17374)

(assert (=> b!1098403 (= lt!491350 (+!3328 lt!491343 lt!491342))))

(declare-fun lt!491339 () ListLongMap!15355)

(assert (=> b!1098403 (= lt!491339 (+!3328 lt!491341 lt!491345))))

(assert (=> b!1098403 (= lt!491341 (+!3328 lt!491347 lt!491342))))

(declare-fun lt!491349 () ListLongMap!15355)

(assert (=> b!1098403 (= lt!491348 (+!3328 (+!3328 lt!491349 lt!491342) lt!491345))))

(declare-fun minValue!831 () V!41313)

(assert (=> b!1098403 (= lt!491345 (tuple2!17375 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1098403 (= lt!491342 (tuple2!17375 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1098404 () Bool)

(declare-fun res!733129 () Bool)

(assert (=> b!1098404 (=> (not res!733129) (not e!626963))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1098404 (= res!733129 (and (= (size!34775 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34774 _keys!1070) (size!34775 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1098405 () Bool)

(declare-fun res!733122 () Bool)

(assert (=> b!1098405 (=> (not res!733122) (not e!626963))))

(assert (=> b!1098405 (= res!733122 (= (select (arr!34237 _keys!1070) i!650) k!904))))

(declare-fun b!1098406 () Bool)

(declare-fun res!733130 () Bool)

(assert (=> b!1098406 (=> (not res!733130) (not e!626963))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1098406 (= res!733130 (validKeyInArray!0 k!904))))

(declare-fun b!1098407 () Bool)

(declare-fun e!626959 () Bool)

(declare-fun mapRes!42478 () Bool)

(assert (=> b!1098407 (= e!626964 (and e!626959 mapRes!42478))))

(declare-fun condMapEmpty!42478 () Bool)

(declare-fun mapDefault!42478 () ValueCell!12860)

