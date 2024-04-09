; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96326 () Bool)

(assert start!96326)

(declare-fun b_free!22943 () Bool)

(declare-fun b_next!22943 () Bool)

(assert (=> start!96326 (= b_free!22943 (not b_next!22943))))

(declare-fun tp!80679 () Bool)

(declare-fun b_and!36579 () Bool)

(assert (=> start!96326 (= tp!80679 b_and!36579)))

(declare-fun b!1094141 () Bool)

(declare-fun res!730254 () Bool)

(declare-fun e!624718 () Bool)

(assert (=> b!1094141 (=> (not res!730254) (not e!624718))))

(declare-datatypes ((array!70762 0))(
  ( (array!70763 (arr!34051 (Array (_ BitVec 32) (_ BitVec 64))) (size!34588 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70762)

(declare-datatypes ((List!23928 0))(
  ( (Nil!23925) (Cons!23924 (h!25133 (_ BitVec 64)) (t!33936 List!23928)) )
))
(declare-fun arrayNoDuplicates!0 (array!70762 (_ BitVec 32) List!23928) Bool)

(assert (=> b!1094141 (= res!730254 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23925))))

(declare-fun b!1094142 () Bool)

(declare-fun e!624717 () Bool)

(declare-fun tp_is_empty!26945 () Bool)

(assert (=> b!1094142 (= e!624717 tp_is_empty!26945)))

(declare-fun b!1094143 () Bool)

(declare-fun res!730250 () Bool)

(assert (=> b!1094143 (=> (not res!730250) (not e!624718))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1094143 (= res!730250 (= (select (arr!34051 _keys!1070) i!650) k!904))))

(declare-fun b!1094144 () Bool)

(declare-fun e!624715 () Bool)

(assert (=> b!1094144 (= e!624715 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41053 0))(
  ( (V!41054 (val!13529 Int)) )
))
(declare-fun minValue!831 () V!41053)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!17278 0))(
  ( (tuple2!17279 (_1!8649 (_ BitVec 64)) (_2!8649 V!41053)) )
))
(declare-datatypes ((List!23929 0))(
  ( (Nil!23926) (Cons!23925 (h!25134 tuple2!17278) (t!33937 List!23929)) )
))
(declare-datatypes ((ListLongMap!15259 0))(
  ( (ListLongMap!15260 (toList!7645 List!23929)) )
))
(declare-fun lt!489508 () ListLongMap!15259)

(declare-fun zeroValue!831 () V!41053)

(declare-datatypes ((ValueCell!12763 0))(
  ( (ValueCellFull!12763 (v!16151 V!41053)) (EmptyCell!12763) )
))
(declare-datatypes ((array!70764 0))(
  ( (array!70765 (arr!34052 (Array (_ BitVec 32) ValueCell!12763)) (size!34589 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70764)

(declare-fun getCurrentListMap!4380 (array!70762 array!70764 (_ BitVec 32) (_ BitVec 32) V!41053 V!41053 (_ BitVec 32) Int) ListLongMap!15259)

(assert (=> b!1094144 (= lt!489508 (getCurrentListMap!4380 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489509 () array!70764)

(declare-fun lt!489511 () array!70762)

(declare-fun lt!489515 () ListLongMap!15259)

(assert (=> b!1094144 (= lt!489515 (getCurrentListMap!4380 lt!489511 lt!489509 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489510 () ListLongMap!15259)

(declare-fun lt!489512 () ListLongMap!15259)

(assert (=> b!1094144 (and (= lt!489510 lt!489512) (= lt!489512 lt!489510))))

(declare-fun lt!489514 () ListLongMap!15259)

(declare-fun -!921 (ListLongMap!15259 (_ BitVec 64)) ListLongMap!15259)

(assert (=> b!1094144 (= lt!489512 (-!921 lt!489514 k!904))))

(declare-datatypes ((Unit!35957 0))(
  ( (Unit!35958) )
))
(declare-fun lt!489513 () Unit!35957)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!186 (array!70762 array!70764 (_ BitVec 32) (_ BitVec 32) V!41053 V!41053 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35957)

(assert (=> b!1094144 (= lt!489513 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!186 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4132 (array!70762 array!70764 (_ BitVec 32) (_ BitVec 32) V!41053 V!41053 (_ BitVec 32) Int) ListLongMap!15259)

(assert (=> b!1094144 (= lt!489510 (getCurrentListMapNoExtraKeys!4132 lt!489511 lt!489509 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2268 (Int (_ BitVec 64)) V!41053)

(assert (=> b!1094144 (= lt!489509 (array!70765 (store (arr!34052 _values!874) i!650 (ValueCellFull!12763 (dynLambda!2268 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34589 _values!874)))))

(assert (=> b!1094144 (= lt!489514 (getCurrentListMapNoExtraKeys!4132 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1094144 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!489507 () Unit!35957)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70762 (_ BitVec 64) (_ BitVec 32)) Unit!35957)

(assert (=> b!1094144 (= lt!489507 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1094145 () Bool)

(declare-fun e!624716 () Bool)

(declare-fun mapRes!42172 () Bool)

(assert (=> b!1094145 (= e!624716 (and e!624717 mapRes!42172))))

(declare-fun condMapEmpty!42172 () Bool)

(declare-fun mapDefault!42172 () ValueCell!12763)

