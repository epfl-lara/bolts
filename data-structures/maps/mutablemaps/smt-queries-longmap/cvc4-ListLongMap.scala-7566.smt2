; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95756 () Bool)

(assert start!95756)

(declare-fun b_free!22373 () Bool)

(declare-fun b_next!22373 () Bool)

(assert (=> start!95756 (= b_free!22373 (not b_next!22373))))

(declare-fun tp!78969 () Bool)

(declare-fun b_and!35439 () Bool)

(assert (=> start!95756 (= tp!78969 b_and!35439)))

(declare-fun res!721499 () Bool)

(declare-fun e!618550 () Bool)

(assert (=> start!95756 (=> (not res!721499) (not e!618550))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95756 (= res!721499 (validMask!0 mask!1414))))

(assert (=> start!95756 e!618550))

(assert (=> start!95756 tp!78969))

(assert (=> start!95756 true))

(declare-fun tp_is_empty!26375 () Bool)

(assert (=> start!95756 tp_is_empty!26375))

(declare-datatypes ((array!69654 0))(
  ( (array!69655 (arr!33497 (Array (_ BitVec 32) (_ BitVec 64))) (size!34034 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69654)

(declare-fun array_inv!25720 (array!69654) Bool)

(assert (=> start!95756 (array_inv!25720 _keys!1070)))

(declare-datatypes ((V!40293 0))(
  ( (V!40294 (val!13244 Int)) )
))
(declare-datatypes ((ValueCell!12478 0))(
  ( (ValueCellFull!12478 (v!15866 V!40293)) (EmptyCell!12478) )
))
(declare-datatypes ((array!69656 0))(
  ( (array!69657 (arr!33498 (Array (_ BitVec 32) ValueCell!12478)) (size!34035 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69656)

(declare-fun e!618552 () Bool)

(declare-fun array_inv!25721 (array!69656) Bool)

(assert (=> start!95756 (and (array_inv!25721 _values!874) e!618552)))

(declare-fun b!1082249 () Bool)

(declare-fun res!721495 () Bool)

(assert (=> b!1082249 (=> (not res!721495) (not e!618550))))

(declare-datatypes ((List!23482 0))(
  ( (Nil!23479) (Cons!23478 (h!24687 (_ BitVec 64)) (t!32920 List!23482)) )
))
(declare-fun arrayNoDuplicates!0 (array!69654 (_ BitVec 32) List!23482) Bool)

(assert (=> b!1082249 (= res!721495 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23479))))

(declare-fun mapIsEmpty!41317 () Bool)

(declare-fun mapRes!41317 () Bool)

(assert (=> mapIsEmpty!41317 mapRes!41317))

(declare-fun b!1082250 () Bool)

(declare-fun res!721497 () Bool)

(assert (=> b!1082250 (=> (not res!721497) (not e!618550))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1082250 (= res!721497 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34034 _keys!1070))))))

(declare-fun b!1082251 () Bool)

(declare-fun e!618549 () Bool)

(assert (=> b!1082251 (= e!618549 (not true))))

(declare-fun minValue!831 () V!40293)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40293)

(declare-fun lt!479552 () array!69654)

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!16850 0))(
  ( (tuple2!16851 (_1!8435 (_ BitVec 64)) (_2!8435 V!40293)) )
))
(declare-datatypes ((List!23483 0))(
  ( (Nil!23480) (Cons!23479 (h!24688 tuple2!16850) (t!32921 List!23483)) )
))
(declare-datatypes ((ListLongMap!14831 0))(
  ( (ListLongMap!14832 (toList!7431 List!23483)) )
))
(declare-fun lt!479551 () ListLongMap!14831)

(declare-fun getCurrentListMapNoExtraKeys!3942 (array!69654 array!69656 (_ BitVec 32) (_ BitVec 32) V!40293 V!40293 (_ BitVec 32) Int) ListLongMap!14831)

(declare-fun dynLambda!2078 (Int (_ BitVec 64)) V!40293)

(assert (=> b!1082251 (= lt!479551 (getCurrentListMapNoExtraKeys!3942 lt!479552 (array!69657 (store (arr!33498 _values!874) i!650 (ValueCellFull!12478 (dynLambda!2078 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34035 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479549 () ListLongMap!14831)

(assert (=> b!1082251 (= lt!479549 (getCurrentListMapNoExtraKeys!3942 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69654 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1082251 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35541 0))(
  ( (Unit!35542) )
))
(declare-fun lt!479550 () Unit!35541)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69654 (_ BitVec 64) (_ BitVec 32)) Unit!35541)

(assert (=> b!1082251 (= lt!479550 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1082252 () Bool)

(declare-fun e!618553 () Bool)

(assert (=> b!1082252 (= e!618553 tp_is_empty!26375)))

(declare-fun b!1082253 () Bool)

(declare-fun e!618551 () Bool)

(assert (=> b!1082253 (= e!618551 tp_is_empty!26375)))

(declare-fun b!1082254 () Bool)

(assert (=> b!1082254 (= e!618552 (and e!618553 mapRes!41317))))

(declare-fun condMapEmpty!41317 () Bool)

(declare-fun mapDefault!41317 () ValueCell!12478)

