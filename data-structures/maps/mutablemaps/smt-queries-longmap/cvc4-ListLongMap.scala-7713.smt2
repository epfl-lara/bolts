; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96950 () Bool)

(assert start!96950)

(declare-fun b_free!23207 () Bool)

(declare-fun b_next!23207 () Bool)

(assert (=> start!96950 (= b_free!23207 (not b_next!23207))))

(declare-fun tp!81582 () Bool)

(declare-fun b_and!37249 () Bool)

(assert (=> start!96950 (= tp!81582 b_and!37249)))

(declare-fun b!1102531 () Bool)

(declare-fun e!629342 () Bool)

(assert (=> b!1102531 (= e!629342 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41469 0))(
  ( (V!41470 (val!13685 Int)) )
))
(declare-datatypes ((tuple2!17478 0))(
  ( (tuple2!17479 (_1!8749 (_ BitVec 64)) (_2!8749 V!41469)) )
))
(declare-datatypes ((List!24150 0))(
  ( (Nil!24147) (Cons!24146 (h!25355 tuple2!17478) (t!34410 List!24150)) )
))
(declare-datatypes ((ListLongMap!15459 0))(
  ( (ListLongMap!15460 (toList!7745 List!24150)) )
))
(declare-fun lt!494696 () ListLongMap!15459)

(declare-fun minValue!831 () V!41469)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41469)

(declare-datatypes ((array!71390 0))(
  ( (array!71391 (arr!34352 (Array (_ BitVec 32) (_ BitVec 64))) (size!34889 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71390)

(declare-datatypes ((ValueCell!12919 0))(
  ( (ValueCellFull!12919 (v!16317 V!41469)) (EmptyCell!12919) )
))
(declare-datatypes ((array!71392 0))(
  ( (array!71393 (arr!34353 (Array (_ BitVec 32) ValueCell!12919)) (size!34890 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71392)

(declare-fun getCurrentListMap!4428 (array!71390 array!71392 (_ BitVec 32) (_ BitVec 32) V!41469 V!41469 (_ BitVec 32) Int) ListLongMap!15459)

(assert (=> b!1102531 (= lt!494696 (getCurrentListMap!4428 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494698 () ListLongMap!15459)

(declare-fun lt!494701 () array!71392)

(declare-fun lt!494695 () array!71390)

(assert (=> b!1102531 (= lt!494698 (getCurrentListMap!4428 lt!494695 lt!494701 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494693 () ListLongMap!15459)

(declare-fun lt!494697 () ListLongMap!15459)

(assert (=> b!1102531 (and (= lt!494693 lt!494697) (= lt!494697 lt!494693))))

(declare-fun lt!494694 () ListLongMap!15459)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!982 (ListLongMap!15459 (_ BitVec 64)) ListLongMap!15459)

(assert (=> b!1102531 (= lt!494697 (-!982 lt!494694 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!36165 0))(
  ( (Unit!36166) )
))
(declare-fun lt!494700 () Unit!36165)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!240 (array!71390 array!71392 (_ BitVec 32) (_ BitVec 32) V!41469 V!41469 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36165)

(assert (=> b!1102531 (= lt!494700 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!240 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4215 (array!71390 array!71392 (_ BitVec 32) (_ BitVec 32) V!41469 V!41469 (_ BitVec 32) Int) ListLongMap!15459)

(assert (=> b!1102531 (= lt!494693 (getCurrentListMapNoExtraKeys!4215 lt!494695 lt!494701 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2346 (Int (_ BitVec 64)) V!41469)

(assert (=> b!1102531 (= lt!494701 (array!71393 (store (arr!34353 _values!874) i!650 (ValueCellFull!12919 (dynLambda!2346 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34890 _values!874)))))

(assert (=> b!1102531 (= lt!494694 (getCurrentListMapNoExtraKeys!4215 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71390 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1102531 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!494699 () Unit!36165)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71390 (_ BitVec 64) (_ BitVec 32)) Unit!36165)

(assert (=> b!1102531 (= lt!494699 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1102532 () Bool)

(declare-fun res!735727 () Bool)

(declare-fun e!629339 () Bool)

(assert (=> b!1102532 (=> (not res!735727) (not e!629339))))

(assert (=> b!1102532 (= res!735727 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34889 _keys!1070))))))

(declare-fun b!1102533 () Bool)

(declare-fun res!735724 () Bool)

(assert (=> b!1102533 (=> (not res!735724) (not e!629339))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71390 (_ BitVec 32)) Bool)

(assert (=> b!1102533 (= res!735724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1102535 () Bool)

(declare-fun e!629343 () Bool)

(declare-fun e!629338 () Bool)

(declare-fun mapRes!42679 () Bool)

(assert (=> b!1102535 (= e!629343 (and e!629338 mapRes!42679))))

(declare-fun condMapEmpty!42679 () Bool)

(declare-fun mapDefault!42679 () ValueCell!12919)

