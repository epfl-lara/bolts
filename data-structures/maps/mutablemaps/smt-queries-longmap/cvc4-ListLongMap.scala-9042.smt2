; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109076 () Bool)

(assert start!109076)

(declare-fun b_free!28529 () Bool)

(declare-fun b_next!28529 () Bool)

(assert (=> start!109076 (= b_free!28529 (not b_next!28529))))

(declare-fun tp!100707 () Bool)

(declare-fun b_and!46629 () Bool)

(assert (=> start!109076 (= tp!100707 b_and!46629)))

(declare-fun b!1288707 () Bool)

(declare-fun res!856064 () Bool)

(declare-fun e!735875 () Bool)

(assert (=> b!1288707 (=> (not res!856064) (not e!735875))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!85337 0))(
  ( (array!85338 (arr!41165 (Array (_ BitVec 32) (_ BitVec 64))) (size!41716 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85337)

(assert (=> b!1288707 (= res!856064 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41716 _keys!1741))))))

(declare-fun res!856063 () Bool)

(assert (=> start!109076 (=> (not res!856063) (not e!735875))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109076 (= res!856063 (validMask!0 mask!2175))))

(assert (=> start!109076 e!735875))

(declare-fun tp_is_empty!34169 () Bool)

(assert (=> start!109076 tp_is_empty!34169))

(assert (=> start!109076 true))

(declare-datatypes ((V!50661 0))(
  ( (V!50662 (val!17159 Int)) )
))
(declare-datatypes ((ValueCell!16186 0))(
  ( (ValueCellFull!16186 (v!19760 V!50661)) (EmptyCell!16186) )
))
(declare-datatypes ((array!85339 0))(
  ( (array!85340 (arr!41166 (Array (_ BitVec 32) ValueCell!16186)) (size!41717 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85339)

(declare-fun e!735874 () Bool)

(declare-fun array_inv!31185 (array!85339) Bool)

(assert (=> start!109076 (and (array_inv!31185 _values!1445) e!735874)))

(declare-fun array_inv!31186 (array!85337) Bool)

(assert (=> start!109076 (array_inv!31186 _keys!1741)))

(assert (=> start!109076 tp!100707))

(declare-fun mapNonEmpty!52814 () Bool)

(declare-fun mapRes!52814 () Bool)

(declare-fun tp!100706 () Bool)

(declare-fun e!735877 () Bool)

(assert (=> mapNonEmpty!52814 (= mapRes!52814 (and tp!100706 e!735877))))

(declare-fun mapKey!52814 () (_ BitVec 32))

(declare-fun mapValue!52814 () ValueCell!16186)

(declare-fun mapRest!52814 () (Array (_ BitVec 32) ValueCell!16186))

(assert (=> mapNonEmpty!52814 (= (arr!41166 _values!1445) (store mapRest!52814 mapKey!52814 mapValue!52814))))

(declare-fun b!1288708 () Bool)

(declare-fun e!735876 () Bool)

(assert (=> b!1288708 (= e!735876 true)))

(declare-datatypes ((tuple2!22164 0))(
  ( (tuple2!22165 (_1!11092 (_ BitVec 64)) (_2!11092 V!50661)) )
))
(declare-datatypes ((List!29362 0))(
  ( (Nil!29359) (Cons!29358 (h!30567 tuple2!22164) (t!42933 List!29362)) )
))
(declare-datatypes ((ListLongMap!19833 0))(
  ( (ListLongMap!19834 (toList!9932 List!29362)) )
))
(declare-fun lt!578020 () ListLongMap!19833)

(declare-fun zeroValue!1387 () V!50661)

(declare-fun contains!7988 (ListLongMap!19833 (_ BitVec 64)) Bool)

(declare-fun +!4307 (ListLongMap!19833 tuple2!22164) ListLongMap!19833)

(assert (=> b!1288708 (not (contains!7988 (+!4307 lt!578020 (tuple2!22165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-datatypes ((Unit!42559 0))(
  ( (Unit!42560) )
))
(declare-fun lt!578019 () Unit!42559)

(declare-fun addStillNotContains!352 (ListLongMap!19833 (_ BitVec 64) V!50661 (_ BitVec 64)) Unit!42559)

(assert (=> b!1288708 (= lt!578019 (addStillNotContains!352 lt!578020 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun minValue!1387 () V!50661)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6019 (array!85337 array!85339 (_ BitVec 32) (_ BitVec 32) V!50661 V!50661 (_ BitVec 32) Int) ListLongMap!19833)

(assert (=> b!1288708 (= lt!578020 (getCurrentListMapNoExtraKeys!6019 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1288709 () Bool)

(declare-fun res!856067 () Bool)

(assert (=> b!1288709 (=> (not res!856067) (not e!735875))))

(declare-fun getCurrentListMap!4935 (array!85337 array!85339 (_ BitVec 32) (_ BitVec 32) V!50661 V!50661 (_ BitVec 32) Int) ListLongMap!19833)

(assert (=> b!1288709 (= res!856067 (contains!7988 (getCurrentListMap!4935 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1288710 () Bool)

(declare-fun res!856071 () Bool)

(assert (=> b!1288710 (=> (not res!856071) (not e!735875))))

(assert (=> b!1288710 (= res!856071 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41716 _keys!1741))))))

(declare-fun mapIsEmpty!52814 () Bool)

(assert (=> mapIsEmpty!52814 mapRes!52814))

(declare-fun b!1288711 () Bool)

(declare-fun res!856068 () Bool)

(assert (=> b!1288711 (=> (not res!856068) (not e!735875))))

(assert (=> b!1288711 (= res!856068 (and (= (size!41717 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41716 _keys!1741) (size!41717 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1288712 () Bool)

(declare-fun e!735872 () Bool)

(assert (=> b!1288712 (= e!735872 tp_is_empty!34169)))

(declare-fun b!1288713 () Bool)

(declare-fun res!856066 () Bool)

(assert (=> b!1288713 (=> (not res!856066) (not e!735875))))

(declare-datatypes ((List!29363 0))(
  ( (Nil!29360) (Cons!29359 (h!30568 (_ BitVec 64)) (t!42934 List!29363)) )
))
(declare-fun arrayNoDuplicates!0 (array!85337 (_ BitVec 32) List!29363) Bool)

(assert (=> b!1288713 (= res!856066 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29360))))

(declare-fun b!1288714 () Bool)

(declare-fun res!856065 () Bool)

(assert (=> b!1288714 (=> (not res!856065) (not e!735875))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85337 (_ BitVec 32)) Bool)

(assert (=> b!1288714 (= res!856065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1288715 () Bool)

(assert (=> b!1288715 (= e!735875 (not e!735876))))

(declare-fun res!856069 () Bool)

(assert (=> b!1288715 (=> res!856069 e!735876)))

(assert (=> b!1288715 (= res!856069 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1288715 (not (contains!7988 (ListLongMap!19834 Nil!29359) k!1205))))

(declare-fun lt!578018 () Unit!42559)

(declare-fun emptyContainsNothing!45 ((_ BitVec 64)) Unit!42559)

(assert (=> b!1288715 (= lt!578018 (emptyContainsNothing!45 k!1205))))

(declare-fun b!1288716 () Bool)

(declare-fun res!856070 () Bool)

(assert (=> b!1288716 (=> (not res!856070) (not e!735875))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1288716 (= res!856070 (not (validKeyInArray!0 (select (arr!41165 _keys!1741) from!2144))))))

(declare-fun b!1288717 () Bool)

(assert (=> b!1288717 (= e!735877 tp_is_empty!34169)))

(declare-fun b!1288718 () Bool)

(assert (=> b!1288718 (= e!735874 (and e!735872 mapRes!52814))))

(declare-fun condMapEmpty!52814 () Bool)

(declare-fun mapDefault!52814 () ValueCell!16186)

