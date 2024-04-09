; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!630 () Bool)

(assert start!630)

(declare-fun b_free!103 () Bool)

(declare-fun b_next!103 () Bool)

(assert (=> start!630 (= b_free!103 (not b_next!103))))

(declare-fun tp!527 () Bool)

(declare-fun b_and!241 () Bool)

(assert (=> start!630 (= tp!527 b_and!241)))

(declare-fun mapIsEmpty!230 () Bool)

(declare-fun mapRes!230 () Bool)

(assert (=> mapIsEmpty!230 mapRes!230))

(declare-fun b!4015 () Bool)

(declare-fun e!2072 () Bool)

(assert (=> b!4015 (= e!2072 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!419 0))(
  ( (V!420 (val!96 Int)) )
))
(declare-datatypes ((ValueCell!74 0))(
  ( (ValueCellFull!74 (v!1183 V!419)) (EmptyCell!74) )
))
(declare-datatypes ((array!295 0))(
  ( (array!296 (arr!140 (Array (_ BitVec 32) ValueCell!74)) (size!202 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!295)

(declare-fun minValue!1434 () V!419)

(declare-datatypes ((array!297 0))(
  ( (array!298 (arr!141 (Array (_ BitVec 32) (_ BitVec 64))) (size!203 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!297)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!419)

(declare-fun lt!555 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-datatypes ((tuple2!80 0))(
  ( (tuple2!81 (_1!40 (_ BitVec 64)) (_2!40 V!419)) )
))
(declare-datatypes ((List!85 0))(
  ( (Nil!82) (Cons!81 (h!647 tuple2!80) (t!2212 List!85)) )
))
(declare-datatypes ((ListLongMap!85 0))(
  ( (ListLongMap!86 (toList!58 List!85)) )
))
(declare-fun contains!28 (ListLongMap!85 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!17 (array!297 array!295 (_ BitVec 32) (_ BitVec 32) V!419 V!419 (_ BitVec 32) Int) ListLongMap!85)

(assert (=> b!4015 (= lt!555 (contains!28 (getCurrentListMap!17 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!4016 () Bool)

(declare-fun e!2073 () Bool)

(declare-fun tp_is_empty!181 () Bool)

(assert (=> b!4016 (= e!2073 tp_is_empty!181)))

(declare-fun b!4017 () Bool)

(declare-fun e!2071 () Bool)

(assert (=> b!4017 (= e!2071 tp_is_empty!181)))

(declare-fun b!4018 () Bool)

(declare-fun res!5500 () Bool)

(assert (=> b!4018 (=> (not res!5500) (not e!2072))))

(assert (=> b!4018 (= res!5500 (and (= (size!202 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!203 _keys!1806) (size!202 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!4019 () Bool)

(declare-fun e!2074 () Bool)

(assert (=> b!4019 (= e!2074 (and e!2073 mapRes!230))))

(declare-fun condMapEmpty!230 () Bool)

(declare-fun mapDefault!230 () ValueCell!74)

