; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111044 () Bool)

(assert start!111044)

(declare-fun b_free!29843 () Bool)

(declare-fun b_next!29843 () Bool)

(assert (=> start!111044 (= b_free!29843 (not b_next!29843))))

(declare-fun tp!104851 () Bool)

(declare-fun b_and!48061 () Bool)

(assert (=> start!111044 (= tp!104851 b_and!48061)))

(declare-fun b!1314185 () Bool)

(declare-fun res!872558 () Bool)

(declare-fun e!749657 () Bool)

(assert (=> b!1314185 (=> (not res!872558) (not e!749657))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!88083 0))(
  ( (array!88084 (arr!42517 (Array (_ BitVec 32) (_ BitVec 64))) (size!43068 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88083)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52533 0))(
  ( (V!52534 (val!17861 Int)) )
))
(declare-fun minValue!1296 () V!52533)

(declare-datatypes ((ValueCell!16888 0))(
  ( (ValueCellFull!16888 (v!20486 V!52533)) (EmptyCell!16888) )
))
(declare-datatypes ((array!88085 0))(
  ( (array!88086 (arr!42518 (Array (_ BitVec 32) ValueCell!16888)) (size!43069 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88085)

(declare-fun zeroValue!1296 () V!52533)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23200 0))(
  ( (tuple2!23201 (_1!11610 (_ BitVec 64)) (_2!11610 V!52533)) )
))
(declare-datatypes ((List!30364 0))(
  ( (Nil!30361) (Cons!30360 (h!31569 tuple2!23200) (t!43977 List!30364)) )
))
(declare-datatypes ((ListLongMap!20869 0))(
  ( (ListLongMap!20870 (toList!10450 List!30364)) )
))
(declare-fun contains!8536 (ListLongMap!20869 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5406 (array!88083 array!88085 (_ BitVec 32) (_ BitVec 32) V!52533 V!52533 (_ BitVec 32) Int) ListLongMap!20869)

(assert (=> b!1314185 (= res!872558 (contains!8536 (getCurrentListMap!5406 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1314186 () Bool)

(declare-fun res!872559 () Bool)

(assert (=> b!1314186 (=> (not res!872559) (not e!749657))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88083 (_ BitVec 32)) Bool)

(assert (=> b!1314186 (= res!872559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314187 () Bool)

(declare-fun res!872562 () Bool)

(assert (=> b!1314187 (=> (not res!872562) (not e!749657))))

(assert (=> b!1314187 (= res!872562 (not (= (select (arr!42517 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1314188 () Bool)

(declare-fun res!872561 () Bool)

(assert (=> b!1314188 (=> (not res!872561) (not e!749657))))

(assert (=> b!1314188 (= res!872561 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43068 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1314189 () Bool)

(declare-fun e!749660 () Bool)

(declare-fun e!749658 () Bool)

(declare-fun mapRes!54988 () Bool)

(assert (=> b!1314189 (= e!749660 (and e!749658 mapRes!54988))))

(declare-fun condMapEmpty!54988 () Bool)

(declare-fun mapDefault!54988 () ValueCell!16888)

