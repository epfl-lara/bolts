; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4030 () Bool)

(assert start!4030)

(declare-fun b_free!937 () Bool)

(declare-fun b_next!937 () Bool)

(assert (=> start!4030 (= b_free!937 (not b_next!937))))

(declare-fun tp!4231 () Bool)

(declare-fun b_and!1749 () Bool)

(assert (=> start!4030 (= tp!4231 b_and!1749)))

(declare-fun b!29510 () Bool)

(declare-fun res!17683 () Bool)

(declare-fun e!19048 () Bool)

(assert (=> b!29510 (=> (not res!17683) (not e!19048))))

(declare-datatypes ((array!1803 0))(
  ( (array!1804 (arr!855 (Array (_ BitVec 32) (_ BitVec 64))) (size!956 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1803)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1803 (_ BitVec 32)) Bool)

(assert (=> b!29510 (= res!17683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!1465 () Bool)

(declare-fun mapRes!1465 () Bool)

(assert (=> mapIsEmpty!1465 mapRes!1465))

(declare-fun b!29511 () Bool)

(declare-fun e!19046 () Bool)

(assert (=> b!29511 (= e!19048 e!19046)))

(declare-fun res!17689 () Bool)

(assert (=> b!29511 (=> (not res!17689) (not e!19046))))

(declare-datatypes ((V!1547 0))(
  ( (V!1548 (val!672 Int)) )
))
(declare-datatypes ((tuple2!1102 0))(
  ( (tuple2!1103 (_1!561 (_ BitVec 64)) (_2!561 V!1547)) )
))
(declare-datatypes ((List!709 0))(
  ( (Nil!706) (Cons!705 (h!1272 tuple2!1102) (t!3404 List!709)) )
))
(declare-datatypes ((ListLongMap!683 0))(
  ( (ListLongMap!684 (toList!357 List!709)) )
))
(declare-fun lt!11309 () ListLongMap!683)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun contains!294 (ListLongMap!683 (_ BitVec 64)) Bool)

(assert (=> b!29511 (= res!17689 (not (contains!294 lt!11309 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!446 0))(
  ( (ValueCellFull!446 (v!1761 V!1547)) (EmptyCell!446) )
))
(declare-datatypes ((array!1805 0))(
  ( (array!1806 (arr!856 (Array (_ BitVec 32) ValueCell!446)) (size!957 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1805)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1547)

(declare-fun minValue!1443 () V!1547)

(declare-fun getCurrentListMap!184 (array!1803 array!1805 (_ BitVec 32) (_ BitVec 32) V!1547 V!1547 (_ BitVec 32) Int) ListLongMap!683)

(assert (=> b!29511 (= lt!11309 (getCurrentListMap!184 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!29512 () Bool)

(declare-fun e!19050 () Bool)

(declare-fun e!19047 () Bool)

(assert (=> b!29512 (= e!19050 (and e!19047 mapRes!1465))))

(declare-fun condMapEmpty!1465 () Bool)

(declare-fun mapDefault!1465 () ValueCell!446)

