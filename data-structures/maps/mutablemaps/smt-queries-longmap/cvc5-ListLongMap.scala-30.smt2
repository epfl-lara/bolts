; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!612 () Bool)

(assert start!612)

(declare-fun b_free!85 () Bool)

(declare-fun b_next!85 () Bool)

(assert (=> start!612 (= b_free!85 (not b_next!85))))

(declare-fun tp!473 () Bool)

(declare-fun b_and!223 () Bool)

(assert (=> start!612 (= tp!473 b_and!223)))

(declare-fun b!3826 () Bool)

(declare-fun e!1936 () Bool)

(declare-fun tp_is_empty!163 () Bool)

(assert (=> b!3826 (= e!1936 tp_is_empty!163)))

(declare-fun mapNonEmpty!203 () Bool)

(declare-fun mapRes!203 () Bool)

(declare-fun tp!472 () Bool)

(assert (=> mapNonEmpty!203 (= mapRes!203 (and tp!472 e!1936))))

(declare-fun mapKey!203 () (_ BitVec 32))

(declare-datatypes ((V!395 0))(
  ( (V!396 (val!87 Int)) )
))
(declare-datatypes ((ValueCell!65 0))(
  ( (ValueCellFull!65 (v!1174 V!395)) (EmptyCell!65) )
))
(declare-datatypes ((array!259 0))(
  ( (array!260 (arr!122 (Array (_ BitVec 32) ValueCell!65)) (size!184 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!259)

(declare-fun mapValue!203 () ValueCell!65)

(declare-fun mapRest!203 () (Array (_ BitVec 32) ValueCell!65))

(assert (=> mapNonEmpty!203 (= (arr!122 _values!1492) (store mapRest!203 mapKey!203 mapValue!203))))

(declare-fun b!3828 () Bool)

(declare-fun e!1940 () Bool)

(assert (=> b!3828 (= e!1940 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun lt!528 () Bool)

(declare-fun minValue!1434 () V!395)

(declare-datatypes ((array!261 0))(
  ( (array!262 (arr!123 (Array (_ BitVec 32) (_ BitVec 64))) (size!185 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!261)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!395)

(declare-datatypes ((tuple2!68 0))(
  ( (tuple2!69 (_1!34 (_ BitVec 64)) (_2!34 V!395)) )
))
(declare-datatypes ((List!74 0))(
  ( (Nil!71) (Cons!70 (h!636 tuple2!68) (t!2201 List!74)) )
))
(declare-datatypes ((ListLongMap!73 0))(
  ( (ListLongMap!74 (toList!52 List!74)) )
))
(declare-fun contains!22 (ListLongMap!73 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!11 (array!261 array!259 (_ BitVec 32) (_ BitVec 32) V!395 V!395 (_ BitVec 32) Int) ListLongMap!73)

(assert (=> b!3828 (= lt!528 (contains!22 (getCurrentListMap!11 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun mapIsEmpty!203 () Bool)

(assert (=> mapIsEmpty!203 mapRes!203))

(declare-fun b!3829 () Bool)

(declare-fun e!1938 () Bool)

(declare-fun e!1939 () Bool)

(assert (=> b!3829 (= e!1938 (and e!1939 mapRes!203))))

(declare-fun condMapEmpty!203 () Bool)

(declare-fun mapDefault!203 () ValueCell!65)

