; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!944 () Bool)

(assert start!944)

(declare-fun b_free!317 () Bool)

(declare-fun b_next!317 () Bool)

(assert (=> start!944 (= b_free!317 (not b_next!317))))

(declare-fun tp!1183 () Bool)

(declare-fun b_and!465 () Bool)

(assert (=> start!944 (= tp!1183 b_and!465)))

(declare-fun b!7974 () Bool)

(declare-fun res!7711 () Bool)

(declare-fun e!4516 () Bool)

(assert (=> b!7974 (=> (not res!7711) (not e!4516))))

(declare-datatypes ((array!715 0))(
  ( (array!716 (arr!345 (Array (_ BitVec 32) (_ BitVec 64))) (size!407 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!715)

(declare-datatypes ((List!236 0))(
  ( (Nil!233) (Cons!232 (h!798 (_ BitVec 64)) (t!2373 List!236)) )
))
(declare-fun arrayNoDuplicates!0 (array!715 (_ BitVec 32) List!236) Bool)

(assert (=> b!7974 (= res!7711 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!233))))

(declare-fun mapIsEmpty!566 () Bool)

(declare-fun mapRes!566 () Bool)

(assert (=> mapIsEmpty!566 mapRes!566))

(declare-fun b!7975 () Bool)

(declare-fun res!7714 () Bool)

(assert (=> b!7975 (=> (not res!7714) (not e!4516))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!703 0))(
  ( (V!704 (val!203 Int)) )
))
(declare-datatypes ((ValueCell!181 0))(
  ( (ValueCellFull!181 (v!1295 V!703)) (EmptyCell!181) )
))
(declare-datatypes ((array!717 0))(
  ( (array!718 (arr!346 (Array (_ BitVec 32) ValueCell!181)) (size!408 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!717)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!7975 (= res!7714 (and (= (size!408 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!407 _keys!1806) (size!408 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!566 () Bool)

(declare-fun tp!1184 () Bool)

(declare-fun e!4513 () Bool)

(assert (=> mapNonEmpty!566 (= mapRes!566 (and tp!1184 e!4513))))

(declare-fun mapRest!566 () (Array (_ BitVec 32) ValueCell!181))

(declare-fun mapKey!566 () (_ BitVec 32))

(declare-fun mapValue!566 () ValueCell!181)

(assert (=> mapNonEmpty!566 (= (arr!346 _values!1492) (store mapRest!566 mapKey!566 mapValue!566))))

(declare-fun b!7976 () Bool)

(assert (=> b!7976 (= e!4516 false)))

(declare-fun lt!1614 () Bool)

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!703)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun zeroValue!1434 () V!703)

(declare-datatypes ((tuple2!214 0))(
  ( (tuple2!215 (_1!107 (_ BitVec 64)) (_2!107 V!703)) )
))
(declare-datatypes ((List!237 0))(
  ( (Nil!234) (Cons!233 (h!799 tuple2!214) (t!2374 List!237)) )
))
(declare-datatypes ((ListLongMap!219 0))(
  ( (ListLongMap!220 (toList!125 List!237)) )
))
(declare-fun contains!100 (ListLongMap!219 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!84 (array!715 array!717 (_ BitVec 32) (_ BitVec 32) V!703 V!703 (_ BitVec 32) Int) ListLongMap!219)

(assert (=> b!7976 (= lt!1614 (contains!100 (getCurrentListMap!84 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!7977 () Bool)

(declare-fun e!4514 () Bool)

(declare-fun tp_is_empty!395 () Bool)

(assert (=> b!7977 (= e!4514 tp_is_empty!395)))

(declare-fun b!7978 () Bool)

(declare-fun e!4515 () Bool)

(assert (=> b!7978 (= e!4515 (and e!4514 mapRes!566))))

(declare-fun condMapEmpty!566 () Bool)

(declare-fun mapDefault!566 () ValueCell!181)

