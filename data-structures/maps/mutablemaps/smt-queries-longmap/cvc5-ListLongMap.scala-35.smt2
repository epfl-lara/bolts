; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!642 () Bool)

(assert start!642)

(declare-fun b_free!115 () Bool)

(declare-fun b_next!115 () Bool)

(assert (=> start!642 (= b_free!115 (not b_next!115))))

(declare-fun tp!562 () Bool)

(declare-fun b_and!253 () Bool)

(assert (=> start!642 (= tp!562 b_and!253)))

(declare-fun b!4141 () Bool)

(declare-fun res!5570 () Bool)

(declare-fun e!2163 () Bool)

(assert (=> b!4141 (=> (not res!5570) (not e!2163))))

(declare-datatypes ((array!319 0))(
  ( (array!320 (arr!152 (Array (_ BitVec 32) (_ BitVec 64))) (size!214 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!319)

(declare-datatypes ((List!95 0))(
  ( (Nil!92) (Cons!91 (h!657 (_ BitVec 64)) (t!2222 List!95)) )
))
(declare-fun arrayNoDuplicates!0 (array!319 (_ BitVec 32) List!95) Bool)

(assert (=> b!4141 (= res!5570 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!92))))

(declare-fun b!4142 () Bool)

(assert (=> b!4142 (= e!2163 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun lt!573 () Bool)

(declare-datatypes ((V!435 0))(
  ( (V!436 (val!102 Int)) )
))
(declare-datatypes ((ValueCell!80 0))(
  ( (ValueCellFull!80 (v!1189 V!435)) (EmptyCell!80) )
))
(declare-datatypes ((array!321 0))(
  ( (array!322 (arr!153 (Array (_ BitVec 32) ValueCell!80)) (size!215 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!321)

(declare-fun minValue!1434 () V!435)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!435)

(declare-datatypes ((tuple2!90 0))(
  ( (tuple2!91 (_1!45 (_ BitVec 64)) (_2!45 V!435)) )
))
(declare-datatypes ((List!96 0))(
  ( (Nil!93) (Cons!92 (h!658 tuple2!90) (t!2223 List!96)) )
))
(declare-datatypes ((ListLongMap!95 0))(
  ( (ListLongMap!96 (toList!63 List!96)) )
))
(declare-fun contains!33 (ListLongMap!95 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!22 (array!319 array!321 (_ BitVec 32) (_ BitVec 32) V!435 V!435 (_ BitVec 32) Int) ListLongMap!95)

(assert (=> b!4142 (= lt!573 (contains!33 (getCurrentListMap!22 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun mapIsEmpty!248 () Bool)

(declare-fun mapRes!248 () Bool)

(assert (=> mapIsEmpty!248 mapRes!248))

(declare-fun b!4143 () Bool)

(declare-fun res!5572 () Bool)

(assert (=> b!4143 (=> (not res!5572) (not e!2163))))

(assert (=> b!4143 (= res!5572 (and (= (size!215 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!214 _keys!1806) (size!215 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!4144 () Bool)

(declare-fun res!5571 () Bool)

(assert (=> b!4144 (=> (not res!5571) (not e!2163))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!319 (_ BitVec 32)) Bool)

(assert (=> b!4144 (= res!5571 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapNonEmpty!248 () Bool)

(declare-fun tp!563 () Bool)

(declare-fun e!2165 () Bool)

(assert (=> mapNonEmpty!248 (= mapRes!248 (and tp!563 e!2165))))

(declare-fun mapValue!248 () ValueCell!80)

(declare-fun mapKey!248 () (_ BitVec 32))

(declare-fun mapRest!248 () (Array (_ BitVec 32) ValueCell!80))

(assert (=> mapNonEmpty!248 (= (arr!153 _values!1492) (store mapRest!248 mapKey!248 mapValue!248))))

(declare-fun b!4145 () Bool)

(declare-fun e!2164 () Bool)

(declare-fun e!2161 () Bool)

(assert (=> b!4145 (= e!2164 (and e!2161 mapRes!248))))

(declare-fun condMapEmpty!248 () Bool)

(declare-fun mapDefault!248 () ValueCell!80)

