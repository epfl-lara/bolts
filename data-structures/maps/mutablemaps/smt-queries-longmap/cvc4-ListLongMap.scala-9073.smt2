; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109262 () Bool)

(assert start!109262)

(declare-fun b_free!28715 () Bool)

(declare-fun b_next!28715 () Bool)

(assert (=> start!109262 (= b_free!28715 (not b_next!28715))))

(declare-fun tp!101265 () Bool)

(declare-fun b_and!46815 () Bool)

(assert (=> start!109262 (= tp!101265 b_and!46815)))

(declare-fun b!1292020 () Bool)

(declare-fun e!737511 () Bool)

(declare-fun tp_is_empty!34355 () Bool)

(assert (=> b!1292020 (= e!737511 tp_is_empty!34355)))

(declare-fun b!1292021 () Bool)

(declare-fun res!858540 () Bool)

(declare-fun e!737512 () Bool)

(assert (=> b!1292021 (=> (not res!858540) (not e!737512))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50909 0))(
  ( (V!50910 (val!17252 Int)) )
))
(declare-datatypes ((ValueCell!16279 0))(
  ( (ValueCellFull!16279 (v!19853 V!50909)) (EmptyCell!16279) )
))
(declare-datatypes ((array!85703 0))(
  ( (array!85704 (arr!41348 (Array (_ BitVec 32) ValueCell!16279)) (size!41899 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85703)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85705 0))(
  ( (array!85706 (arr!41349 (Array (_ BitVec 32) (_ BitVec 64))) (size!41900 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85705)

(assert (=> b!1292021 (= res!858540 (and (= (size!41899 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41900 _keys!1741) (size!41899 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1292022 () Bool)

(declare-fun res!858541 () Bool)

(assert (=> b!1292022 (=> (not res!858541) (not e!737512))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1292022 (= res!858541 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41900 _keys!1741))))))

(declare-fun b!1292023 () Bool)

(declare-fun res!858544 () Bool)

(assert (=> b!1292023 (=> (not res!858544) (not e!737512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85705 (_ BitVec 32)) Bool)

(assert (=> b!1292023 (= res!858544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!53093 () Bool)

(declare-fun mapRes!53093 () Bool)

(assert (=> mapIsEmpty!53093 mapRes!53093))

(declare-fun b!1292024 () Bool)

(declare-fun res!858542 () Bool)

(assert (=> b!1292024 (=> (not res!858542) (not e!737512))))

(assert (=> b!1292024 (= res!858542 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41900 _keys!1741))))))

(declare-fun b!1292025 () Bool)

(declare-fun res!858543 () Bool)

(assert (=> b!1292025 (=> (not res!858543) (not e!737512))))

(declare-fun minValue!1387 () V!50909)

(declare-fun zeroValue!1387 () V!50909)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22324 0))(
  ( (tuple2!22325 (_1!11172 (_ BitVec 64)) (_2!11172 V!50909)) )
))
(declare-datatypes ((List!29515 0))(
  ( (Nil!29512) (Cons!29511 (h!30720 tuple2!22324) (t!43086 List!29515)) )
))
(declare-datatypes ((ListLongMap!19993 0))(
  ( (ListLongMap!19994 (toList!10012 List!29515)) )
))
(declare-fun contains!8068 (ListLongMap!19993 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5005 (array!85705 array!85703 (_ BitVec 32) (_ BitVec 32) V!50909 V!50909 (_ BitVec 32) Int) ListLongMap!19993)

(assert (=> b!1292025 (= res!858543 (contains!8068 (getCurrentListMap!5005 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1292026 () Bool)

(declare-fun e!737515 () Bool)

(declare-fun e!737513 () Bool)

(assert (=> b!1292026 (= e!737515 (and e!737513 mapRes!53093))))

(declare-fun condMapEmpty!53093 () Bool)

(declare-fun mapDefault!53093 () ValueCell!16279)

