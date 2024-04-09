; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!634 () Bool)

(assert start!634)

(declare-fun b_free!107 () Bool)

(declare-fun b_next!107 () Bool)

(assert (=> start!634 (= b_free!107 (not b_next!107))))

(declare-fun tp!538 () Bool)

(declare-fun b_and!245 () Bool)

(assert (=> start!634 (= tp!538 b_and!245)))

(declare-fun b!4057 () Bool)

(declare-fun e!2101 () Bool)

(declare-fun tp_is_empty!185 () Bool)

(assert (=> b!4057 (= e!2101 tp_is_empty!185)))

(declare-fun b!4058 () Bool)

(declare-fun res!5522 () Bool)

(declare-fun e!2102 () Bool)

(assert (=> b!4058 (=> (not res!5522) (not e!2102))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!423 0))(
  ( (V!424 (val!98 Int)) )
))
(declare-datatypes ((ValueCell!76 0))(
  ( (ValueCellFull!76 (v!1185 V!423)) (EmptyCell!76) )
))
(declare-datatypes ((array!303 0))(
  ( (array!304 (arr!144 (Array (_ BitVec 32) ValueCell!76)) (size!206 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!303)

(declare-datatypes ((array!305 0))(
  ( (array!306 (arr!145 (Array (_ BitVec 32) (_ BitVec 64))) (size!207 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!305)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!4058 (= res!5522 (and (= (size!206 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!207 _keys!1806) (size!206 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!4059 () Bool)

(assert (=> b!4059 (= e!2102 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!423)

(declare-fun lt!561 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun zeroValue!1434 () V!423)

(declare-datatypes ((tuple2!84 0))(
  ( (tuple2!85 (_1!42 (_ BitVec 64)) (_2!42 V!423)) )
))
(declare-datatypes ((List!88 0))(
  ( (Nil!85) (Cons!84 (h!650 tuple2!84) (t!2215 List!88)) )
))
(declare-datatypes ((ListLongMap!89 0))(
  ( (ListLongMap!90 (toList!60 List!88)) )
))
(declare-fun contains!30 (ListLongMap!89 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!19 (array!305 array!303 (_ BitVec 32) (_ BitVec 32) V!423 V!423 (_ BitVec 32) Int) ListLongMap!89)

(assert (=> b!4059 (= lt!561 (contains!30 (getCurrentListMap!19 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!4060 () Bool)

(declare-fun res!5524 () Bool)

(assert (=> b!4060 (=> (not res!5524) (not e!2102))))

(declare-datatypes ((List!89 0))(
  ( (Nil!86) (Cons!85 (h!651 (_ BitVec 64)) (t!2216 List!89)) )
))
(declare-fun arrayNoDuplicates!0 (array!305 (_ BitVec 32) List!89) Bool)

(assert (=> b!4060 (= res!5524 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!86))))

(declare-fun b!4061 () Bool)

(declare-fun e!2105 () Bool)

(assert (=> b!4061 (= e!2105 tp_is_empty!185)))

(declare-fun b!4062 () Bool)

(declare-fun res!5523 () Bool)

(assert (=> b!4062 (=> (not res!5523) (not e!2102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!305 (_ BitVec 32)) Bool)

(assert (=> b!4062 (= res!5523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapIsEmpty!236 () Bool)

(declare-fun mapRes!236 () Bool)

(assert (=> mapIsEmpty!236 mapRes!236))

(declare-fun b!4063 () Bool)

(declare-fun e!2104 () Bool)

(assert (=> b!4063 (= e!2104 (and e!2105 mapRes!236))))

(declare-fun condMapEmpty!236 () Bool)

(declare-fun mapDefault!236 () ValueCell!76)

