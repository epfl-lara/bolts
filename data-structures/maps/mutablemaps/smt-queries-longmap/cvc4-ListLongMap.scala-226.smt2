; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4040 () Bool)

(assert start!4040)

(declare-fun b_free!947 () Bool)

(declare-fun b_next!947 () Bool)

(assert (=> start!4040 (= b_free!947 (not b_next!947))))

(declare-fun tp!4261 () Bool)

(declare-fun b_and!1759 () Bool)

(assert (=> start!4040 (= tp!4261 b_and!1759)))

(declare-fun b!29644 () Bool)

(declare-fun e!19130 () Bool)

(assert (=> b!29644 (= e!19130 false)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1559 0))(
  ( (V!1560 (val!677 Int)) )
))
(declare-datatypes ((ValueCell!451 0))(
  ( (ValueCellFull!451 (v!1766 V!1559)) (EmptyCell!451) )
))
(declare-datatypes ((array!1823 0))(
  ( (array!1824 (arr!865 (Array (_ BitVec 32) ValueCell!451)) (size!966 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1823)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1825 0))(
  ( (array!1826 (arr!866 (Array (_ BitVec 32) (_ BitVec 64))) (size!967 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1825)

(declare-fun lt!11355 () Bool)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1559)

(declare-fun minValue!1443 () V!1559)

(declare-datatypes ((tuple2!1110 0))(
  ( (tuple2!1111 (_1!565 (_ BitVec 64)) (_2!565 V!1559)) )
))
(declare-datatypes ((List!715 0))(
  ( (Nil!712) (Cons!711 (h!1278 tuple2!1110) (t!3410 List!715)) )
))
(declare-datatypes ((ListLongMap!691 0))(
  ( (ListLongMap!692 (toList!361 List!715)) )
))
(declare-fun contains!298 (ListLongMap!691 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!188 (array!1825 array!1823 (_ BitVec 32) (_ BitVec 32) V!1559 V!1559 (_ BitVec 32) Int) ListLongMap!691)

(assert (=> b!29644 (= lt!11355 (contains!298 (getCurrentListMap!188 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304))))

(declare-fun b!29645 () Bool)

(declare-fun res!17773 () Bool)

(assert (=> b!29645 (=> (not res!17773) (not e!19130))))

(declare-datatypes ((List!716 0))(
  ( (Nil!713) (Cons!712 (h!1279 (_ BitVec 64)) (t!3411 List!716)) )
))
(declare-fun arrayNoDuplicates!0 (array!1825 (_ BitVec 32) List!716) Bool)

(assert (=> b!29645 (= res!17773 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!713))))

(declare-fun b!29646 () Bool)

(declare-fun e!19129 () Bool)

(declare-fun e!19131 () Bool)

(declare-fun mapRes!1480 () Bool)

(assert (=> b!29646 (= e!19129 (and e!19131 mapRes!1480))))

(declare-fun condMapEmpty!1480 () Bool)

(declare-fun mapDefault!1480 () ValueCell!451)

