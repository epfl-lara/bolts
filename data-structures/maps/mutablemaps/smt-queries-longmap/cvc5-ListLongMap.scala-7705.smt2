; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96796 () Bool)

(assert start!96796)

(declare-fun b_free!23155 () Bool)

(declare-fun b_next!23155 () Bool)

(assert (=> start!96796 (= b_free!23155 (not b_next!23155))))

(declare-fun tp!81414 () Bool)

(declare-fun b_and!37089 () Bool)

(assert (=> start!96796 (= tp!81414 b_and!37089)))

(declare-fun b!1100638 () Bool)

(declare-fun e!628248 () Bool)

(declare-fun tp_is_empty!27205 () Bool)

(assert (=> b!1100638 (= e!628248 tp_is_empty!27205)))

(declare-fun b!1100639 () Bool)

(declare-fun e!628247 () Bool)

(declare-fun e!628251 () Bool)

(assert (=> b!1100639 (= e!628247 e!628251)))

(declare-fun res!734560 () Bool)

(assert (=> b!1100639 (=> (not res!734560) (not e!628251))))

(declare-datatypes ((array!71278 0))(
  ( (array!71279 (arr!34300 (Array (_ BitVec 32) (_ BitVec 64))) (size!34837 (_ BitVec 32))) )
))
(declare-fun lt!493250 () array!71278)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71278 (_ BitVec 32)) Bool)

(assert (=> b!1100639 (= res!734560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!493250 mask!1414))))

(declare-fun _keys!1070 () array!71278)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1100639 (= lt!493250 (array!71279 (store (arr!34300 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34837 _keys!1070)))))

(declare-fun b!1100640 () Bool)

(declare-fun res!734566 () Bool)

(assert (=> b!1100640 (=> (not res!734566) (not e!628251))))

(declare-datatypes ((List!24102 0))(
  ( (Nil!24099) (Cons!24098 (h!25307 (_ BitVec 64)) (t!34310 List!24102)) )
))
(declare-fun arrayNoDuplicates!0 (array!71278 (_ BitVec 32) List!24102) Bool)

(assert (=> b!1100640 (= res!734566 (arrayNoDuplicates!0 lt!493250 #b00000000000000000000000000000000 Nil!24099))))

(declare-fun b!1100641 () Bool)

(declare-fun res!734562 () Bool)

(assert (=> b!1100641 (=> (not res!734562) (not e!628247))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1100641 (= res!734562 (= (select (arr!34300 _keys!1070) i!650) k!904))))

(declare-fun mapIsEmpty!42589 () Bool)

(declare-fun mapRes!42589 () Bool)

(assert (=> mapIsEmpty!42589 mapRes!42589))

(declare-datatypes ((V!41401 0))(
  ( (V!41402 (val!13659 Int)) )
))
(declare-datatypes ((tuple2!17430 0))(
  ( (tuple2!17431 (_1!8725 (_ BitVec 64)) (_2!8725 V!41401)) )
))
(declare-datatypes ((List!24103 0))(
  ( (Nil!24100) (Cons!24099 (h!25308 tuple2!17430) (t!34311 List!24103)) )
))
(declare-datatypes ((ListLongMap!15411 0))(
  ( (ListLongMap!15412 (toList!7721 List!24103)) )
))
(declare-fun lt!493255 () ListLongMap!15411)

(declare-fun minValue!831 () V!41401)

(declare-fun e!628250 () Bool)

(declare-fun b!1100642 () Bool)

(declare-fun lt!493252 () ListLongMap!15411)

(declare-fun +!3354 (ListLongMap!15411 tuple2!17430) ListLongMap!15411)

(assert (=> b!1100642 (= e!628250 (= lt!493252 (+!3354 lt!493255 (tuple2!17431 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1100643 () Bool)

(declare-fun res!734558 () Bool)

(assert (=> b!1100643 (=> (not res!734558) (not e!628247))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12893 0))(
  ( (ValueCellFull!12893 (v!16288 V!41401)) (EmptyCell!12893) )
))
(declare-datatypes ((array!71280 0))(
  ( (array!71281 (arr!34301 (Array (_ BitVec 32) ValueCell!12893)) (size!34838 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71280)

(assert (=> b!1100643 (= res!734558 (and (= (size!34838 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34837 _keys!1070) (size!34838 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1100644 () Bool)

(assert (=> b!1100644 (= e!628251 (not e!628250))))

(declare-fun res!734559 () Bool)

(assert (=> b!1100644 (=> res!734559 e!628250)))

(assert (=> b!1100644 (= res!734559 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!493253 () ListLongMap!15411)

(declare-fun zeroValue!831 () V!41401)

(declare-fun getCurrentListMap!4409 (array!71278 array!71280 (_ BitVec 32) (_ BitVec 32) V!41401 V!41401 (_ BitVec 32) Int) ListLongMap!15411)

(assert (=> b!1100644 (= lt!493253 (getCurrentListMap!4409 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493254 () array!71280)

(assert (=> b!1100644 (= lt!493252 (getCurrentListMap!4409 lt!493250 lt!493254 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493248 () ListLongMap!15411)

(assert (=> b!1100644 (and (= lt!493255 lt!493248) (= lt!493248 lt!493255))))

(declare-fun lt!493249 () ListLongMap!15411)

(declare-fun -!961 (ListLongMap!15411 (_ BitVec 64)) ListLongMap!15411)

(assert (=> b!1100644 (= lt!493248 (-!961 lt!493249 k!904))))

(declare-datatypes ((Unit!36115 0))(
  ( (Unit!36116) )
))
(declare-fun lt!493251 () Unit!36115)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!221 (array!71278 array!71280 (_ BitVec 32) (_ BitVec 32) V!41401 V!41401 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36115)

(assert (=> b!1100644 (= lt!493251 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!221 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4196 (array!71278 array!71280 (_ BitVec 32) (_ BitVec 32) V!41401 V!41401 (_ BitVec 32) Int) ListLongMap!15411)

(assert (=> b!1100644 (= lt!493255 (getCurrentListMapNoExtraKeys!4196 lt!493250 lt!493254 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2327 (Int (_ BitVec 64)) V!41401)

(assert (=> b!1100644 (= lt!493254 (array!71281 (store (arr!34301 _values!874) i!650 (ValueCellFull!12893 (dynLambda!2327 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34838 _values!874)))))

(assert (=> b!1100644 (= lt!493249 (getCurrentListMapNoExtraKeys!4196 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71278 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1100644 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!493247 () Unit!36115)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71278 (_ BitVec 64) (_ BitVec 32)) Unit!36115)

(assert (=> b!1100644 (= lt!493247 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1100645 () Bool)

(declare-fun e!628253 () Bool)

(assert (=> b!1100645 (= e!628253 tp_is_empty!27205)))

(declare-fun res!734564 () Bool)

(assert (=> start!96796 (=> (not res!734564) (not e!628247))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96796 (= res!734564 (validMask!0 mask!1414))))

(assert (=> start!96796 e!628247))

(assert (=> start!96796 tp!81414))

(assert (=> start!96796 true))

(assert (=> start!96796 tp_is_empty!27205))

(declare-fun array_inv!26278 (array!71278) Bool)

(assert (=> start!96796 (array_inv!26278 _keys!1070)))

(declare-fun e!628252 () Bool)

(declare-fun array_inv!26279 (array!71280) Bool)

(assert (=> start!96796 (and (array_inv!26279 _values!874) e!628252)))

(declare-fun b!1100646 () Bool)

(declare-fun res!734561 () Bool)

(assert (=> b!1100646 (=> (not res!734561) (not e!628247))))

(assert (=> b!1100646 (= res!734561 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34837 _keys!1070))))))

(declare-fun b!1100647 () Bool)

(declare-fun res!734563 () Bool)

(assert (=> b!1100647 (=> (not res!734563) (not e!628247))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1100647 (= res!734563 (validKeyInArray!0 k!904))))

(declare-fun mapNonEmpty!42589 () Bool)

(declare-fun tp!81413 () Bool)

(assert (=> mapNonEmpty!42589 (= mapRes!42589 (and tp!81413 e!628253))))

(declare-fun mapRest!42589 () (Array (_ BitVec 32) ValueCell!12893))

(declare-fun mapKey!42589 () (_ BitVec 32))

(declare-fun mapValue!42589 () ValueCell!12893)

(assert (=> mapNonEmpty!42589 (= (arr!34301 _values!874) (store mapRest!42589 mapKey!42589 mapValue!42589))))

(declare-fun b!1100648 () Bool)

(declare-fun res!734557 () Bool)

(assert (=> b!1100648 (=> (not res!734557) (not e!628247))))

(assert (=> b!1100648 (= res!734557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1100649 () Bool)

(declare-fun res!734565 () Bool)

(assert (=> b!1100649 (=> (not res!734565) (not e!628247))))

(assert (=> b!1100649 (= res!734565 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24099))))

(declare-fun b!1100650 () Bool)

(assert (=> b!1100650 (= e!628252 (and e!628248 mapRes!42589))))

(declare-fun condMapEmpty!42589 () Bool)

(declare-fun mapDefault!42589 () ValueCell!12893)

