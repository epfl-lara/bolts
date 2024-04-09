; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96674 () Bool)

(assert start!96674)

(declare-fun b_free!23111 () Bool)

(declare-fun b_next!23111 () Bool)

(assert (=> start!96674 (= b_free!23111 (not b_next!23111))))

(declare-fun tp!81272 () Bool)

(declare-fun b_and!36959 () Bool)

(assert (=> start!96674 (= tp!81272 b_and!36959)))

(declare-fun b!1099084 () Bool)

(declare-fun res!733582 () Bool)

(declare-fun e!627353 () Bool)

(assert (=> b!1099084 (=> (not res!733582) (not e!627353))))

(declare-datatypes ((array!71190 0))(
  ( (array!71191 (arr!34259 (Array (_ BitVec 32) (_ BitVec 64))) (size!34796 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71190)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1099084 (= res!733582 (= (select (arr!34259 _keys!1070) i!650) k!904))))

(declare-fun mapNonEmpty!42514 () Bool)

(declare-fun mapRes!42514 () Bool)

(declare-fun tp!81273 () Bool)

(declare-fun e!627354 () Bool)

(assert (=> mapNonEmpty!42514 (= mapRes!42514 (and tp!81273 e!627354))))

(declare-datatypes ((V!41341 0))(
  ( (V!41342 (val!13637 Int)) )
))
(declare-datatypes ((ValueCell!12871 0))(
  ( (ValueCellFull!12871 (v!16263 V!41341)) (EmptyCell!12871) )
))
(declare-datatypes ((array!71192 0))(
  ( (array!71193 (arr!34260 (Array (_ BitVec 32) ValueCell!12871)) (size!34797 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71192)

(declare-fun mapValue!42514 () ValueCell!12871)

(declare-fun mapRest!42514 () (Array (_ BitVec 32) ValueCell!12871))

(declare-fun mapKey!42514 () (_ BitVec 32))

(assert (=> mapNonEmpty!42514 (= (arr!34260 _values!874) (store mapRest!42514 mapKey!42514 mapValue!42514))))

(declare-fun b!1099085 () Bool)

(declare-fun res!733583 () Bool)

(assert (=> b!1099085 (=> (not res!733583) (not e!627353))))

(declare-datatypes ((List!24069 0))(
  ( (Nil!24066) (Cons!24065 (h!25274 (_ BitVec 64)) (t!34233 List!24069)) )
))
(declare-fun arrayNoDuplicates!0 (array!71190 (_ BitVec 32) List!24069) Bool)

(assert (=> b!1099085 (= res!733583 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24066))))

(declare-fun b!1099086 () Bool)

(declare-fun e!627356 () Bool)

(declare-fun e!627349 () Bool)

(assert (=> b!1099086 (= e!627356 (not e!627349))))

(declare-fun res!733577 () Bool)

(assert (=> b!1099086 (=> res!733577 e!627349)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1099086 (= res!733577 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41341)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41341)

(declare-datatypes ((tuple2!17394 0))(
  ( (tuple2!17395 (_1!8707 (_ BitVec 64)) (_2!8707 V!41341)) )
))
(declare-datatypes ((List!24070 0))(
  ( (Nil!24067) (Cons!24066 (h!25275 tuple2!17394) (t!34234 List!24070)) )
))
(declare-datatypes ((ListLongMap!15375 0))(
  ( (ListLongMap!15376 (toList!7703 List!24070)) )
))
(declare-fun lt!492055 () ListLongMap!15375)

(declare-fun getCurrentListMap!4397 (array!71190 array!71192 (_ BitVec 32) (_ BitVec 32) V!41341 V!41341 (_ BitVec 32) Int) ListLongMap!15375)

(assert (=> b!1099086 (= lt!492055 (getCurrentListMap!4397 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492060 () ListLongMap!15375)

(declare-fun lt!492053 () array!71192)

(declare-fun lt!492062 () array!71190)

(assert (=> b!1099086 (= lt!492060 (getCurrentListMap!4397 lt!492062 lt!492053 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492052 () ListLongMap!15375)

(declare-fun lt!492065 () ListLongMap!15375)

(assert (=> b!1099086 (and (= lt!492052 lt!492065) (= lt!492065 lt!492052))))

(declare-fun lt!492058 () ListLongMap!15375)

(declare-fun -!948 (ListLongMap!15375 (_ BitVec 64)) ListLongMap!15375)

(assert (=> b!1099086 (= lt!492065 (-!948 lt!492058 k!904))))

(declare-datatypes ((Unit!36083 0))(
  ( (Unit!36084) )
))
(declare-fun lt!492067 () Unit!36083)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!209 (array!71190 array!71192 (_ BitVec 32) (_ BitVec 32) V!41341 V!41341 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36083)

(assert (=> b!1099086 (= lt!492067 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!209 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4184 (array!71190 array!71192 (_ BitVec 32) (_ BitVec 32) V!41341 V!41341 (_ BitVec 32) Int) ListLongMap!15375)

(assert (=> b!1099086 (= lt!492052 (getCurrentListMapNoExtraKeys!4184 lt!492062 lt!492053 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2315 (Int (_ BitVec 64)) V!41341)

(assert (=> b!1099086 (= lt!492053 (array!71193 (store (arr!34260 _values!874) i!650 (ValueCellFull!12871 (dynLambda!2315 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34797 _values!874)))))

(assert (=> b!1099086 (= lt!492058 (getCurrentListMapNoExtraKeys!4184 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71190 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1099086 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!492051 () Unit!36083)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71190 (_ BitVec 64) (_ BitVec 32)) Unit!36083)

(assert (=> b!1099086 (= lt!492051 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1099087 () Bool)

(declare-fun e!627355 () Bool)

(assert (=> b!1099087 (= e!627355 (= (-!948 lt!492055 k!904) lt!492060))))

(declare-fun lt!492063 () tuple2!17394)

(declare-fun lt!492061 () ListLongMap!15375)

(declare-fun lt!492054 () ListLongMap!15375)

(declare-fun +!3338 (ListLongMap!15375 tuple2!17394) ListLongMap!15375)

(assert (=> b!1099087 (= (-!948 lt!492054 k!904) (+!3338 lt!492061 lt!492063))))

(declare-fun lt!492064 () ListLongMap!15375)

(declare-fun lt!492059 () Unit!36083)

(declare-fun addRemoveCommutativeForDiffKeys!129 (ListLongMap!15375 (_ BitVec 64) V!41341 (_ BitVec 64)) Unit!36083)

(assert (=> b!1099087 (= lt!492059 (addRemoveCommutativeForDiffKeys!129 lt!492064 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1099088 () Bool)

(declare-fun res!733575 () Bool)

(assert (=> b!1099088 (=> (not res!733575) (not e!627353))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71190 (_ BitVec 32)) Bool)

(assert (=> b!1099088 (= res!733575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!42514 () Bool)

(assert (=> mapIsEmpty!42514 mapRes!42514))

(declare-fun b!1099089 () Bool)

(declare-fun res!733580 () Bool)

(assert (=> b!1099089 (=> (not res!733580) (not e!627356))))

(assert (=> b!1099089 (= res!733580 (arrayNoDuplicates!0 lt!492062 #b00000000000000000000000000000000 Nil!24066))))

(declare-fun b!1099090 () Bool)

(assert (=> b!1099090 (= e!627349 e!627355)))

(declare-fun res!733576 () Bool)

(assert (=> b!1099090 (=> res!733576 e!627355)))

(assert (=> b!1099090 (= res!733576 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-fun lt!492057 () ListLongMap!15375)

(assert (=> b!1099090 (= lt!492061 lt!492057)))

(assert (=> b!1099090 (= lt!492061 (-!948 lt!492064 k!904))))

(declare-fun lt!492056 () Unit!36083)

(assert (=> b!1099090 (= lt!492056 (addRemoveCommutativeForDiffKeys!129 lt!492058 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(assert (=> b!1099090 (= lt!492060 (+!3338 lt!492057 lt!492063))))

(declare-fun lt!492066 () tuple2!17394)

(assert (=> b!1099090 (= lt!492057 (+!3338 lt!492065 lt!492066))))

(assert (=> b!1099090 (= lt!492055 lt!492054)))

(assert (=> b!1099090 (= lt!492054 (+!3338 lt!492064 lt!492063))))

(assert (=> b!1099090 (= lt!492064 (+!3338 lt!492058 lt!492066))))

(assert (=> b!1099090 (= lt!492060 (+!3338 (+!3338 lt!492052 lt!492066) lt!492063))))

(assert (=> b!1099090 (= lt!492063 (tuple2!17395 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1099090 (= lt!492066 (tuple2!17395 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1099092 () Bool)

(declare-fun res!733578 () Bool)

(assert (=> b!1099092 (=> (not res!733578) (not e!627353))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1099092 (= res!733578 (validKeyInArray!0 k!904))))

(declare-fun b!1099093 () Bool)

(declare-fun res!733585 () Bool)

(assert (=> b!1099093 (=> (not res!733585) (not e!627353))))

(assert (=> b!1099093 (= res!733585 (and (= (size!34797 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34796 _keys!1070) (size!34797 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1099094 () Bool)

(assert (=> b!1099094 (= e!627353 e!627356)))

(declare-fun res!733581 () Bool)

(assert (=> b!1099094 (=> (not res!733581) (not e!627356))))

(assert (=> b!1099094 (= res!733581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!492062 mask!1414))))

(assert (=> b!1099094 (= lt!492062 (array!71191 (store (arr!34259 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34796 _keys!1070)))))

(declare-fun b!1099095 () Bool)

(declare-fun tp_is_empty!27161 () Bool)

(assert (=> b!1099095 (= e!627354 tp_is_empty!27161)))

(declare-fun b!1099096 () Bool)

(declare-fun res!733579 () Bool)

(assert (=> b!1099096 (=> (not res!733579) (not e!627353))))

(assert (=> b!1099096 (= res!733579 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34796 _keys!1070))))))

(declare-fun b!1099097 () Bool)

(declare-fun e!627351 () Bool)

(assert (=> b!1099097 (= e!627351 tp_is_empty!27161)))

(declare-fun b!1099091 () Bool)

(declare-fun e!627352 () Bool)

(assert (=> b!1099091 (= e!627352 (and e!627351 mapRes!42514))))

(declare-fun condMapEmpty!42514 () Bool)

(declare-fun mapDefault!42514 () ValueCell!12871)

