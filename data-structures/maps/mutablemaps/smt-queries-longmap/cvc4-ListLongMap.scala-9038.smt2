; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109052 () Bool)

(assert start!109052)

(declare-fun b_free!28505 () Bool)

(declare-fun b_next!28505 () Bool)

(assert (=> start!109052 (= b_free!28505 (not b_next!28505))))

(declare-fun tp!100634 () Bool)

(declare-fun b_and!46605 () Bool)

(assert (=> start!109052 (= tp!100634 b_and!46605)))

(declare-fun b!1288275 () Bool)

(declare-fun res!855744 () Bool)

(declare-fun e!735659 () Bool)

(assert (=> b!1288275 (=> (not res!855744) (not e!735659))))

(declare-datatypes ((array!85291 0))(
  ( (array!85292 (arr!41142 (Array (_ BitVec 32) (_ BitVec 64))) (size!41693 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85291)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1288275 (= res!855744 (not (validKeyInArray!0 (select (arr!41142 _keys!1741) from!2144))))))

(declare-fun b!1288276 () Bool)

(declare-fun res!855742 () Bool)

(assert (=> b!1288276 (=> (not res!855742) (not e!735659))))

(declare-datatypes ((V!50629 0))(
  ( (V!50630 (val!17147 Int)) )
))
(declare-fun minValue!1387 () V!50629)

(declare-fun zeroValue!1387 () V!50629)

(declare-datatypes ((ValueCell!16174 0))(
  ( (ValueCellFull!16174 (v!19748 V!50629)) (EmptyCell!16174) )
))
(declare-datatypes ((array!85293 0))(
  ( (array!85294 (arr!41143 (Array (_ BitVec 32) ValueCell!16174)) (size!41694 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85293)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22146 0))(
  ( (tuple2!22147 (_1!11083 (_ BitVec 64)) (_2!11083 V!50629)) )
))
(declare-datatypes ((List!29345 0))(
  ( (Nil!29342) (Cons!29341 (h!30550 tuple2!22146) (t!42916 List!29345)) )
))
(declare-datatypes ((ListLongMap!19815 0))(
  ( (ListLongMap!19816 (toList!9923 List!29345)) )
))
(declare-fun contains!7979 (ListLongMap!19815 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4926 (array!85291 array!85293 (_ BitVec 32) (_ BitVec 32) V!50629 V!50629 (_ BitVec 32) Int) ListLongMap!19815)

(assert (=> b!1288276 (= res!855742 (contains!7979 (getCurrentListMap!4926 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1288277 () Bool)

(declare-fun e!735658 () Bool)

(assert (=> b!1288277 (= e!735659 (not e!735658))))

(declare-fun res!855739 () Bool)

(assert (=> b!1288277 (=> res!855739 e!735658)))

(assert (=> b!1288277 (= res!855739 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1288277 (not (contains!7979 (ListLongMap!19816 Nil!29342) k!1205))))

(declare-datatypes ((Unit!42541 0))(
  ( (Unit!42542) )
))
(declare-fun lt!577910 () Unit!42541)

(declare-fun emptyContainsNothing!38 ((_ BitVec 64)) Unit!42541)

(assert (=> b!1288277 (= lt!577910 (emptyContainsNothing!38 k!1205))))

(declare-fun mapNonEmpty!52778 () Bool)

(declare-fun mapRes!52778 () Bool)

(declare-fun tp!100635 () Bool)

(declare-fun e!735661 () Bool)

(assert (=> mapNonEmpty!52778 (= mapRes!52778 (and tp!100635 e!735661))))

(declare-fun mapKey!52778 () (_ BitVec 32))

(declare-fun mapValue!52778 () ValueCell!16174)

(declare-fun mapRest!52778 () (Array (_ BitVec 32) ValueCell!16174))

(assert (=> mapNonEmpty!52778 (= (arr!41143 _values!1445) (store mapRest!52778 mapKey!52778 mapValue!52778))))

(declare-fun b!1288278 () Bool)

(declare-fun res!855740 () Bool)

(assert (=> b!1288278 (=> (not res!855740) (not e!735659))))

(assert (=> b!1288278 (= res!855740 (and (= (size!41694 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41693 _keys!1741) (size!41694 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1288279 () Bool)

(declare-fun e!735657 () Bool)

(declare-fun tp_is_empty!34145 () Bool)

(assert (=> b!1288279 (= e!735657 tp_is_empty!34145)))

(declare-fun b!1288280 () Bool)

(declare-fun e!735660 () Bool)

(assert (=> b!1288280 (= e!735660 (and e!735657 mapRes!52778))))

(declare-fun condMapEmpty!52778 () Bool)

(declare-fun mapDefault!52778 () ValueCell!16174)

