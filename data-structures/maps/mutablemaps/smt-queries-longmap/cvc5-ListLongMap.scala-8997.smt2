; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108778 () Bool)

(assert start!108778)

(declare-fun b_free!28255 () Bool)

(declare-fun b_next!28255 () Bool)

(assert (=> start!108778 (= b_free!28255 (not b_next!28255))))

(declare-fun tp!99881 () Bool)

(declare-fun b_and!46331 () Bool)

(assert (=> start!108778 (= tp!99881 b_and!46331)))

(declare-fun b!1283930 () Bool)

(declare-fun e!733450 () Bool)

(declare-fun tp_is_empty!33895 () Bool)

(assert (=> b!1283930 (= e!733450 tp_is_empty!33895)))

(declare-fun b!1283931 () Bool)

(declare-fun res!853015 () Bool)

(declare-fun e!733446 () Bool)

(assert (=> b!1283931 (=> (not res!853015) (not e!733446))))

(declare-datatypes ((V!50297 0))(
  ( (V!50298 (val!17022 Int)) )
))
(declare-fun minValue!1387 () V!50297)

(declare-fun zeroValue!1387 () V!50297)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16049 0))(
  ( (ValueCellFull!16049 (v!19622 V!50297)) (EmptyCell!16049) )
))
(declare-datatypes ((array!84807 0))(
  ( (array!84808 (arr!40901 (Array (_ BitVec 32) ValueCell!16049)) (size!41452 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84807)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84809 0))(
  ( (array!84810 (arr!40902 (Array (_ BitVec 32) (_ BitVec 64))) (size!41453 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84809)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21946 0))(
  ( (tuple2!21947 (_1!10983 (_ BitVec 64)) (_2!10983 V!50297)) )
))
(declare-datatypes ((List!29153 0))(
  ( (Nil!29150) (Cons!29149 (h!30358 tuple2!21946) (t!42704 List!29153)) )
))
(declare-datatypes ((ListLongMap!19615 0))(
  ( (ListLongMap!19616 (toList!9823 List!29153)) )
))
(declare-fun contains!7878 (ListLongMap!19615 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4841 (array!84809 array!84807 (_ BitVec 32) (_ BitVec 32) V!50297 V!50297 (_ BitVec 32) Int) ListLongMap!19615)

(assert (=> b!1283931 (= res!853015 (contains!7878 (getCurrentListMap!4841 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!853009 () Bool)

(assert (=> start!108778 (=> (not res!853009) (not e!733446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108778 (= res!853009 (validMask!0 mask!2175))))

(assert (=> start!108778 e!733446))

(assert (=> start!108778 tp_is_empty!33895))

(assert (=> start!108778 true))

(declare-fun e!733447 () Bool)

(declare-fun array_inv!31005 (array!84807) Bool)

(assert (=> start!108778 (and (array_inv!31005 _values!1445) e!733447)))

(declare-fun array_inv!31006 (array!84809) Bool)

(assert (=> start!108778 (array_inv!31006 _keys!1741)))

(assert (=> start!108778 tp!99881))

(declare-fun b!1283932 () Bool)

(declare-fun res!853017 () Bool)

(assert (=> b!1283932 (=> (not res!853017) (not e!733446))))

(assert (=> b!1283932 (= res!853017 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41453 _keys!1741))))))

(declare-fun b!1283933 () Bool)

(declare-fun res!853014 () Bool)

(assert (=> b!1283933 (=> (not res!853014) (not e!733446))))

(assert (=> b!1283933 (= res!853014 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!52400 () Bool)

(declare-fun mapRes!52400 () Bool)

(assert (=> mapIsEmpty!52400 mapRes!52400))

(declare-fun b!1283934 () Bool)

(declare-fun res!853010 () Bool)

(assert (=> b!1283934 (=> (not res!853010) (not e!733446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84809 (_ BitVec 32)) Bool)

(assert (=> b!1283934 (= res!853010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1283935 () Bool)

(declare-fun e!733448 () Bool)

(assert (=> b!1283935 (= e!733448 tp_is_empty!33895)))

(declare-fun b!1283936 () Bool)

(declare-fun res!853011 () Bool)

(assert (=> b!1283936 (=> (not res!853011) (not e!733446))))

(declare-datatypes ((List!29154 0))(
  ( (Nil!29151) (Cons!29150 (h!30359 (_ BitVec 64)) (t!42705 List!29154)) )
))
(declare-fun arrayNoDuplicates!0 (array!84809 (_ BitVec 32) List!29154) Bool)

(assert (=> b!1283936 (= res!853011 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29151))))

(declare-fun b!1283937 () Bool)

(declare-fun res!853013 () Bool)

(assert (=> b!1283937 (=> (not res!853013) (not e!733446))))

(assert (=> b!1283937 (= res!853013 (and (= (size!41452 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41453 _keys!1741) (size!41452 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52400 () Bool)

(declare-fun tp!99882 () Bool)

(assert (=> mapNonEmpty!52400 (= mapRes!52400 (and tp!99882 e!733448))))

(declare-fun mapRest!52400 () (Array (_ BitVec 32) ValueCell!16049))

(declare-fun mapKey!52400 () (_ BitVec 32))

(declare-fun mapValue!52400 () ValueCell!16049)

(assert (=> mapNonEmpty!52400 (= (arr!40901 _values!1445) (store mapRest!52400 mapKey!52400 mapValue!52400))))

(declare-fun b!1283938 () Bool)

(declare-fun res!853016 () Bool)

(assert (=> b!1283938 (=> (not res!853016) (not e!733446))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283938 (= res!853016 (validKeyInArray!0 (select (arr!40902 _keys!1741) from!2144)))))

(declare-fun b!1283939 () Bool)

(assert (=> b!1283939 (= e!733447 (and e!733450 mapRes!52400))))

(declare-fun condMapEmpty!52400 () Bool)

(declare-fun mapDefault!52400 () ValueCell!16049)

