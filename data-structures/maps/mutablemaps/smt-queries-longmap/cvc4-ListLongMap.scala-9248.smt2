; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110876 () Bool)

(assert start!110876)

(declare-fun b_free!29675 () Bool)

(declare-fun b_next!29675 () Bool)

(assert (=> start!110876 (= b_free!29675 (not b_next!29675))))

(declare-fun tp!104348 () Bool)

(declare-fun b_and!47893 () Bool)

(assert (=> start!110876 (= tp!104348 b_and!47893)))

(declare-fun b!1311962 () Bool)

(declare-fun res!871090 () Bool)

(declare-fun e!748399 () Bool)

(assert (=> b!1311962 (=> (not res!871090) (not e!748399))))

(declare-datatypes ((array!87761 0))(
  ( (array!87762 (arr!42356 (Array (_ BitVec 32) (_ BitVec 64))) (size!42907 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87761)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1311962 (= res!871090 (not (= (select (arr!42356 _keys!1628) from!2020) k!1175)))))

(declare-fun res!871095 () Bool)

(assert (=> start!110876 (=> (not res!871095) (not e!748399))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110876 (= res!871095 (validMask!0 mask!2040))))

(assert (=> start!110876 e!748399))

(assert (=> start!110876 tp!104348))

(declare-fun array_inv!31987 (array!87761) Bool)

(assert (=> start!110876 (array_inv!31987 _keys!1628)))

(assert (=> start!110876 true))

(declare-fun tp_is_empty!35405 () Bool)

(assert (=> start!110876 tp_is_empty!35405))

(declare-datatypes ((V!52309 0))(
  ( (V!52310 (val!17777 Int)) )
))
(declare-datatypes ((ValueCell!16804 0))(
  ( (ValueCellFull!16804 (v!20402 V!52309)) (EmptyCell!16804) )
))
(declare-datatypes ((array!87763 0))(
  ( (array!87764 (arr!42357 (Array (_ BitVec 32) ValueCell!16804)) (size!42908 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87763)

(declare-fun e!748396 () Bool)

(declare-fun array_inv!31988 (array!87763) Bool)

(assert (=> start!110876 (and (array_inv!31988 _values!1354) e!748396)))

(declare-fun b!1311963 () Bool)

(declare-fun res!871097 () Bool)

(assert (=> b!1311963 (=> (not res!871097) (not e!748399))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1311963 (= res!871097 (and (= (size!42908 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42907 _keys!1628) (size!42908 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!54736 () Bool)

(declare-fun mapRes!54736 () Bool)

(declare-fun tp!104347 () Bool)

(declare-fun e!748397 () Bool)

(assert (=> mapNonEmpty!54736 (= mapRes!54736 (and tp!104347 e!748397))))

(declare-fun mapRest!54736 () (Array (_ BitVec 32) ValueCell!16804))

(declare-fun mapValue!54736 () ValueCell!16804)

(declare-fun mapKey!54736 () (_ BitVec 32))

(assert (=> mapNonEmpty!54736 (= (arr!42357 _values!1354) (store mapRest!54736 mapKey!54736 mapValue!54736))))

(declare-fun b!1311964 () Bool)

(declare-fun res!871093 () Bool)

(assert (=> b!1311964 (=> (not res!871093) (not e!748399))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52309)

(declare-fun zeroValue!1296 () V!52309)

(declare-datatypes ((tuple2!23086 0))(
  ( (tuple2!23087 (_1!11553 (_ BitVec 64)) (_2!11553 V!52309)) )
))
(declare-datatypes ((List!30247 0))(
  ( (Nil!30244) (Cons!30243 (h!31452 tuple2!23086) (t!43860 List!30247)) )
))
(declare-datatypes ((ListLongMap!20755 0))(
  ( (ListLongMap!20756 (toList!10393 List!30247)) )
))
(declare-fun contains!8479 (ListLongMap!20755 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5349 (array!87761 array!87763 (_ BitVec 32) (_ BitVec 32) V!52309 V!52309 (_ BitVec 32) Int) ListLongMap!20755)

(assert (=> b!1311964 (= res!871093 (contains!8479 (getCurrentListMap!5349 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1311965 () Bool)

(declare-fun e!748398 () Bool)

(assert (=> b!1311965 (= e!748398 tp_is_empty!35405)))

(declare-fun b!1311966 () Bool)

(assert (=> b!1311966 (= e!748396 (and e!748398 mapRes!54736))))

(declare-fun condMapEmpty!54736 () Bool)

(declare-fun mapDefault!54736 () ValueCell!16804)

