; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95728 () Bool)

(assert start!95728)

(declare-fun b_free!22345 () Bool)

(declare-fun b_next!22345 () Bool)

(assert (=> start!95728 (= b_free!22345 (not b_next!22345))))

(declare-fun tp!78884 () Bool)

(declare-fun b_and!35383 () Bool)

(assert (=> start!95728 (= tp!78884 b_and!35383)))

(declare-fun b!1081717 () Bool)

(declare-fun e!618300 () Bool)

(assert (=> b!1081717 (= e!618300 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40257 0))(
  ( (V!40258 (val!13230 Int)) )
))
(declare-datatypes ((ValueCell!12464 0))(
  ( (ValueCellFull!12464 (v!15852 V!40257)) (EmptyCell!12464) )
))
(declare-datatypes ((array!69598 0))(
  ( (array!69599 (arr!33469 (Array (_ BitVec 32) ValueCell!12464)) (size!34006 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69598)

(declare-fun minValue!831 () V!40257)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69600 0))(
  ( (array!69601 (arr!33470 (Array (_ BitVec 32) (_ BitVec 64))) (size!34007 (_ BitVec 32))) )
))
(declare-fun lt!479382 () array!69600)

(declare-datatypes ((tuple2!16830 0))(
  ( (tuple2!16831 (_1!8425 (_ BitVec 64)) (_2!8425 V!40257)) )
))
(declare-datatypes ((List!23461 0))(
  ( (Nil!23458) (Cons!23457 (h!24666 tuple2!16830) (t!32871 List!23461)) )
))
(declare-datatypes ((ListLongMap!14811 0))(
  ( (ListLongMap!14812 (toList!7421 List!23461)) )
))
(declare-fun lt!479384 () ListLongMap!14811)

(declare-fun zeroValue!831 () V!40257)

(declare-fun getCurrentListMapNoExtraKeys!3932 (array!69600 array!69598 (_ BitVec 32) (_ BitVec 32) V!40257 V!40257 (_ BitVec 32) Int) ListLongMap!14811)

(declare-fun dynLambda!2068 (Int (_ BitVec 64)) V!40257)

(assert (=> b!1081717 (= lt!479384 (getCurrentListMapNoExtraKeys!3932 lt!479382 (array!69599 (store (arr!33469 _values!874) i!650 (ValueCellFull!12464 (dynLambda!2068 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34006 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479381 () ListLongMap!14811)

(declare-fun _keys!1070 () array!69600)

(assert (=> b!1081717 (= lt!479381 (getCurrentListMapNoExtraKeys!3932 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69600 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1081717 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35521 0))(
  ( (Unit!35522) )
))
(declare-fun lt!479383 () Unit!35521)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69600 (_ BitVec 64) (_ BitVec 32)) Unit!35521)

(assert (=> b!1081717 (= lt!479383 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1081718 () Bool)

(declare-fun res!721114 () Bool)

(declare-fun e!618296 () Bool)

(assert (=> b!1081718 (=> (not res!721114) (not e!618296))))

(assert (=> b!1081718 (= res!721114 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34007 _keys!1070))))))

(declare-fun res!721116 () Bool)

(assert (=> start!95728 (=> (not res!721116) (not e!618296))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95728 (= res!721116 (validMask!0 mask!1414))))

(assert (=> start!95728 e!618296))

(assert (=> start!95728 tp!78884))

(assert (=> start!95728 true))

(declare-fun tp_is_empty!26347 () Bool)

(assert (=> start!95728 tp_is_empty!26347))

(declare-fun array_inv!25696 (array!69600) Bool)

(assert (=> start!95728 (array_inv!25696 _keys!1070)))

(declare-fun e!618297 () Bool)

(declare-fun array_inv!25697 (array!69598) Bool)

(assert (=> start!95728 (and (array_inv!25697 _values!874) e!618297)))

(declare-fun b!1081719 () Bool)

(declare-fun res!721117 () Bool)

(assert (=> b!1081719 (=> (not res!721117) (not e!618296))))

(declare-datatypes ((List!23462 0))(
  ( (Nil!23459) (Cons!23458 (h!24667 (_ BitVec 64)) (t!32872 List!23462)) )
))
(declare-fun arrayNoDuplicates!0 (array!69600 (_ BitVec 32) List!23462) Bool)

(assert (=> b!1081719 (= res!721117 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23459))))

(declare-fun b!1081720 () Bool)

(declare-fun res!721115 () Bool)

(assert (=> b!1081720 (=> (not res!721115) (not e!618296))))

(assert (=> b!1081720 (= res!721115 (= (select (arr!33470 _keys!1070) i!650) k!904))))

(declare-fun mapIsEmpty!41275 () Bool)

(declare-fun mapRes!41275 () Bool)

(assert (=> mapIsEmpty!41275 mapRes!41275))

(declare-fun b!1081721 () Bool)

(declare-fun res!721119 () Bool)

(assert (=> b!1081721 (=> (not res!721119) (not e!618296))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1081721 (= res!721119 (validKeyInArray!0 k!904))))

(declare-fun b!1081722 () Bool)

(declare-fun e!618298 () Bool)

(assert (=> b!1081722 (= e!618298 tp_is_empty!26347)))

(declare-fun b!1081723 () Bool)

(declare-fun e!618301 () Bool)

(assert (=> b!1081723 (= e!618297 (and e!618301 mapRes!41275))))

(declare-fun condMapEmpty!41275 () Bool)

(declare-fun mapDefault!41275 () ValueCell!12464)

