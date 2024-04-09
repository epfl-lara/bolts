; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108920 () Bool)

(assert start!108920)

(declare-fun b_free!28397 () Bool)

(declare-fun b_next!28397 () Bool)

(assert (=> start!108920 (= b_free!28397 (not b_next!28397))))

(declare-fun tp!100308 () Bool)

(declare-fun b_and!46473 () Bool)

(assert (=> start!108920 (= tp!100308 b_and!46473)))

(declare-fun b!1285892 () Bool)

(declare-fun res!854337 () Bool)

(declare-fun e!734512 () Bool)

(assert (=> b!1285892 (=> (not res!854337) (not e!734512))))

(declare-datatypes ((array!85083 0))(
  ( (array!85084 (arr!41039 (Array (_ BitVec 32) (_ BitVec 64))) (size!41590 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85083)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1285892 (= res!854337 (validKeyInArray!0 (select (arr!41039 _keys!1741) from!2144)))))

(declare-fun b!1285893 () Bool)

(declare-fun res!854334 () Bool)

(assert (=> b!1285893 (=> (not res!854334) (not e!734512))))

(assert (=> b!1285893 (= res!854334 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41590 _keys!1741))))))

(declare-fun mapNonEmpty!52613 () Bool)

(declare-fun mapRes!52613 () Bool)

(declare-fun tp!100307 () Bool)

(declare-fun e!734515 () Bool)

(assert (=> mapNonEmpty!52613 (= mapRes!52613 (and tp!100307 e!734515))))

(declare-datatypes ((V!50485 0))(
  ( (V!50486 (val!17093 Int)) )
))
(declare-datatypes ((ValueCell!16120 0))(
  ( (ValueCellFull!16120 (v!19693 V!50485)) (EmptyCell!16120) )
))
(declare-fun mapValue!52613 () ValueCell!16120)

(declare-datatypes ((array!85085 0))(
  ( (array!85086 (arr!41040 (Array (_ BitVec 32) ValueCell!16120)) (size!41591 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85085)

(declare-fun mapKey!52613 () (_ BitVec 32))

(declare-fun mapRest!52613 () (Array (_ BitVec 32) ValueCell!16120))

(assert (=> mapNonEmpty!52613 (= (arr!41040 _values!1445) (store mapRest!52613 mapKey!52613 mapValue!52613))))

(declare-fun b!1285895 () Bool)

(declare-fun res!854339 () Bool)

(assert (=> b!1285895 (=> (not res!854339) (not e!734512))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1285895 (= res!854339 (and (= (size!41591 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41590 _keys!1741) (size!41591 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1285896 () Bool)

(assert (=> b!1285896 (= e!734512 false)))

(declare-fun minValue!1387 () V!50485)

(declare-fun zeroValue!1387 () V!50485)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!576900 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22048 0))(
  ( (tuple2!22049 (_1!11034 (_ BitVec 64)) (_2!11034 V!50485)) )
))
(declare-datatypes ((List!29258 0))(
  ( (Nil!29255) (Cons!29254 (h!30463 tuple2!22048) (t!42809 List!29258)) )
))
(declare-datatypes ((ListLongMap!19717 0))(
  ( (ListLongMap!19718 (toList!9874 List!29258)) )
))
(declare-fun contains!7929 (ListLongMap!19717 (_ BitVec 64)) Bool)

(declare-fun +!4283 (ListLongMap!19717 tuple2!22048) ListLongMap!19717)

(declare-fun getCurrentListMapNoExtraKeys!5994 (array!85083 array!85085 (_ BitVec 32) (_ BitVec 32) V!50485 V!50485 (_ BitVec 32) Int) ListLongMap!19717)

(assert (=> b!1285896 (= lt!576900 (contains!7929 (+!4283 (getCurrentListMapNoExtraKeys!5994 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22049 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun mapIsEmpty!52613 () Bool)

(assert (=> mapIsEmpty!52613 mapRes!52613))

(declare-fun b!1285897 () Bool)

(declare-fun res!854336 () Bool)

(assert (=> b!1285897 (=> (not res!854336) (not e!734512))))

(assert (=> b!1285897 (= res!854336 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41590 _keys!1741))))))

(declare-fun b!1285898 () Bool)

(declare-fun e!734511 () Bool)

(declare-fun tp_is_empty!34037 () Bool)

(assert (=> b!1285898 (= e!734511 tp_is_empty!34037)))

(declare-fun b!1285899 () Bool)

(declare-fun res!854340 () Bool)

(assert (=> b!1285899 (=> (not res!854340) (not e!734512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85083 (_ BitVec 32)) Bool)

(assert (=> b!1285899 (= res!854340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1285900 () Bool)

(declare-fun e!734513 () Bool)

(assert (=> b!1285900 (= e!734513 (and e!734511 mapRes!52613))))

(declare-fun condMapEmpty!52613 () Bool)

(declare-fun mapDefault!52613 () ValueCell!16120)

