; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96962 () Bool)

(assert start!96962)

(declare-fun b_free!23219 () Bool)

(declare-fun b_next!23219 () Bool)

(assert (=> start!96962 (= b_free!23219 (not b_next!23219))))

(declare-fun tp!81618 () Bool)

(declare-fun b_and!37273 () Bool)

(assert (=> start!96962 (= tp!81618 b_and!37273)))

(declare-fun b!1102767 () Bool)

(declare-fun res!735900 () Bool)

(declare-fun e!629455 () Bool)

(assert (=> b!1102767 (=> (not res!735900) (not e!629455))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71414 0))(
  ( (array!71415 (arr!34364 (Array (_ BitVec 32) (_ BitVec 64))) (size!34901 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71414)

(assert (=> b!1102767 (= res!735900 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34901 _keys!1070))))))

(declare-fun b!1102768 () Bool)

(declare-fun e!629457 () Bool)

(declare-fun tp_is_empty!27269 () Bool)

(assert (=> b!1102768 (= e!629457 tp_is_empty!27269)))

(declare-fun k!904 () (_ BitVec 64))

(declare-datatypes ((V!41485 0))(
  ( (V!41486 (val!13691 Int)) )
))
(declare-datatypes ((tuple2!17484 0))(
  ( (tuple2!17485 (_1!8752 (_ BitVec 64)) (_2!8752 V!41485)) )
))
(declare-datatypes ((List!24157 0))(
  ( (Nil!24154) (Cons!24153 (h!25362 tuple2!17484) (t!34429 List!24157)) )
))
(declare-datatypes ((ListLongMap!15465 0))(
  ( (ListLongMap!15466 (toList!7748 List!24157)) )
))
(declare-fun lt!494874 () ListLongMap!15465)

(declare-fun b!1102769 () Bool)

(declare-fun e!629460 () Bool)

(declare-fun lt!494881 () ListLongMap!15465)

(declare-fun -!985 (ListLongMap!15465 (_ BitVec 64)) ListLongMap!15465)

(assert (=> b!1102769 (= e!629460 (= (-!985 lt!494881 k!904) lt!494874))))

(declare-fun mapIsEmpty!42697 () Bool)

(declare-fun mapRes!42697 () Bool)

(assert (=> mapIsEmpty!42697 mapRes!42697))

(declare-fun b!1102770 () Bool)

(declare-fun res!735898 () Bool)

(assert (=> b!1102770 (=> (not res!735898) (not e!629455))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12925 0))(
  ( (ValueCellFull!12925 (v!16323 V!41485)) (EmptyCell!12925) )
))
(declare-datatypes ((array!71416 0))(
  ( (array!71417 (arr!34365 (Array (_ BitVec 32) ValueCell!12925)) (size!34902 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71416)

(assert (=> b!1102770 (= res!735898 (and (= (size!34902 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34901 _keys!1070) (size!34902 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1102771 () Bool)

(declare-fun res!735897 () Bool)

(assert (=> b!1102771 (=> (not res!735897) (not e!629455))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71414 (_ BitVec 32)) Bool)

(assert (=> b!1102771 (= res!735897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1102772 () Bool)

(declare-fun e!629458 () Bool)

(assert (=> b!1102772 (= e!629458 (and e!629457 mapRes!42697))))

(declare-fun condMapEmpty!42697 () Bool)

(declare-fun mapDefault!42697 () ValueCell!12925)

