; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96438 () Bool)

(assert start!96438)

(declare-fun b_free!22981 () Bool)

(declare-fun b_next!22981 () Bool)

(assert (=> start!96438 (= b_free!22981 (not b_next!22981))))

(declare-fun tp!80871 () Bool)

(declare-fun b_and!36643 () Bool)

(assert (=> start!96438 (= tp!80871 b_and!36643)))

(declare-fun b!1095675 () Bool)

(declare-fun res!731324 () Bool)

(declare-fun e!625537 () Bool)

(assert (=> b!1095675 (=> (not res!731324) (not e!625537))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70928 0))(
  ( (array!70929 (arr!34132 (Array (_ BitVec 32) (_ BitVec 64))) (size!34669 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70928)

(assert (=> b!1095675 (= res!731324 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34669 _keys!1070))))))

(declare-fun b!1095676 () Bool)

(declare-fun res!731326 () Bool)

(assert (=> b!1095676 (=> (not res!731326) (not e!625537))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1095676 (= res!731326 (= (select (arr!34132 _keys!1070) i!650) k!904))))

(declare-fun b!1095677 () Bool)

(declare-fun e!625539 () Bool)

(declare-fun tp_is_empty!27031 () Bool)

(assert (=> b!1095677 (= e!625539 tp_is_empty!27031)))

(declare-fun b!1095678 () Bool)

(declare-fun res!731328 () Bool)

(declare-fun e!625536 () Bool)

(assert (=> b!1095678 (=> (not res!731328) (not e!625536))))

(declare-fun lt!489899 () array!70928)

(declare-datatypes ((List!23972 0))(
  ( (Nil!23969) (Cons!23968 (h!25177 (_ BitVec 64)) (t!34006 List!23972)) )
))
(declare-fun arrayNoDuplicates!0 (array!70928 (_ BitVec 32) List!23972) Bool)

(assert (=> b!1095678 (= res!731328 (arrayNoDuplicates!0 lt!489899 #b00000000000000000000000000000000 Nil!23969))))

(declare-fun b!1095679 () Bool)

(declare-fun res!731321 () Bool)

(assert (=> b!1095679 (=> (not res!731321) (not e!625537))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1095679 (= res!731321 (validKeyInArray!0 k!904))))

(declare-fun mapNonEmpty!42307 () Bool)

(declare-fun mapRes!42307 () Bool)

(declare-fun tp!80870 () Bool)

(declare-fun e!625535 () Bool)

(assert (=> mapNonEmpty!42307 (= mapRes!42307 (and tp!80870 e!625535))))

(declare-datatypes ((V!41169 0))(
  ( (V!41170 (val!13572 Int)) )
))
(declare-datatypes ((ValueCell!12806 0))(
  ( (ValueCellFull!12806 (v!16194 V!41169)) (EmptyCell!12806) )
))
(declare-datatypes ((array!70930 0))(
  ( (array!70931 (arr!34133 (Array (_ BitVec 32) ValueCell!12806)) (size!34670 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70930)

(declare-fun mapValue!42307 () ValueCell!12806)

(declare-fun mapRest!42307 () (Array (_ BitVec 32) ValueCell!12806))

(declare-fun mapKey!42307 () (_ BitVec 32))

(assert (=> mapNonEmpty!42307 (= (arr!34133 _values!874) (store mapRest!42307 mapKey!42307 mapValue!42307))))

(declare-fun b!1095680 () Bool)

(assert (=> b!1095680 (= e!625536 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41169)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17300 0))(
  ( (tuple2!17301 (_1!8660 (_ BitVec 64)) (_2!8660 V!41169)) )
))
(declare-datatypes ((List!23973 0))(
  ( (Nil!23970) (Cons!23969 (h!25178 tuple2!17300) (t!34007 List!23973)) )
))
(declare-datatypes ((ListLongMap!15281 0))(
  ( (ListLongMap!15282 (toList!7656 List!23973)) )
))
(declare-fun lt!489901 () ListLongMap!15281)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41169)

(declare-fun getCurrentListMapNoExtraKeys!4143 (array!70928 array!70930 (_ BitVec 32) (_ BitVec 32) V!41169 V!41169 (_ BitVec 32) Int) ListLongMap!15281)

(declare-fun dynLambda!2274 (Int (_ BitVec 64)) V!41169)

(assert (=> b!1095680 (= lt!489901 (getCurrentListMapNoExtraKeys!4143 lt!489899 (array!70931 (store (arr!34133 _values!874) i!650 (ValueCellFull!12806 (dynLambda!2274 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34670 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489900 () ListLongMap!15281)

(assert (=> b!1095680 (= lt!489900 (getCurrentListMapNoExtraKeys!4143 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70928 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1095680 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35985 0))(
  ( (Unit!35986) )
))
(declare-fun lt!489902 () Unit!35985)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70928 (_ BitVec 64) (_ BitVec 32)) Unit!35985)

(assert (=> b!1095680 (= lt!489902 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun res!731327 () Bool)

(assert (=> start!96438 (=> (not res!731327) (not e!625537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96438 (= res!731327 (validMask!0 mask!1414))))

(assert (=> start!96438 e!625537))

(assert (=> start!96438 tp!80871))

(assert (=> start!96438 true))

(assert (=> start!96438 tp_is_empty!27031))

(declare-fun array_inv!26154 (array!70928) Bool)

(assert (=> start!96438 (array_inv!26154 _keys!1070)))

(declare-fun e!625534 () Bool)

(declare-fun array_inv!26155 (array!70930) Bool)

(assert (=> start!96438 (and (array_inv!26155 _values!874) e!625534)))

(declare-fun b!1095674 () Bool)

(assert (=> b!1095674 (= e!625537 e!625536)))

(declare-fun res!731323 () Bool)

(assert (=> b!1095674 (=> (not res!731323) (not e!625536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70928 (_ BitVec 32)) Bool)

(assert (=> b!1095674 (= res!731323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489899 mask!1414))))

(assert (=> b!1095674 (= lt!489899 (array!70929 (store (arr!34132 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34669 _keys!1070)))))

(declare-fun b!1095681 () Bool)

(assert (=> b!1095681 (= e!625534 (and e!625539 mapRes!42307))))

(declare-fun condMapEmpty!42307 () Bool)

(declare-fun mapDefault!42307 () ValueCell!12806)

