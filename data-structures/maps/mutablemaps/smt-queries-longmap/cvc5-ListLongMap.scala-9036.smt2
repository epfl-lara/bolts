; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109036 () Bool)

(assert start!109036)

(declare-fun b_free!28489 () Bool)

(declare-fun b_next!28489 () Bool)

(assert (=> start!109036 (= b_free!28489 (not b_next!28489))))

(declare-fun tp!100587 () Bool)

(declare-fun b_and!46589 () Bool)

(assert (=> start!109036 (= tp!100587 b_and!46589)))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85259 0))(
  ( (array!85260 (arr!41126 (Array (_ BitVec 32) (_ BitVec 64))) (size!41677 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85259)

(declare-fun b!1287994 () Bool)

(declare-fun e!735519 () Bool)

(assert (=> b!1287994 (= e!735519 (not (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle from!2144 (size!41677 _keys!1741)))))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!50609 0))(
  ( (V!50610 (val!17139 Int)) )
))
(declare-datatypes ((tuple2!22132 0))(
  ( (tuple2!22133 (_1!11076 (_ BitVec 64)) (_2!11076 V!50609)) )
))
(declare-datatypes ((List!29332 0))(
  ( (Nil!29329) (Cons!29328 (h!30537 tuple2!22132) (t!42903 List!29332)) )
))
(declare-datatypes ((ListLongMap!19801 0))(
  ( (ListLongMap!19802 (toList!9916 List!29332)) )
))
(declare-fun contains!7972 (ListLongMap!19801 (_ BitVec 64)) Bool)

(assert (=> b!1287994 (not (contains!7972 (ListLongMap!19802 Nil!29329) k!1205))))

(declare-datatypes ((Unit!42529 0))(
  ( (Unit!42530) )
))
(declare-fun lt!577861 () Unit!42529)

(declare-fun emptyContainsNothing!32 ((_ BitVec 64)) Unit!42529)

(assert (=> b!1287994 (= lt!577861 (emptyContainsNothing!32 k!1205))))

(declare-fun mapIsEmpty!52754 () Bool)

(declare-fun mapRes!52754 () Bool)

(assert (=> mapIsEmpty!52754 mapRes!52754))

(declare-fun b!1287995 () Bool)

(declare-fun res!855535 () Bool)

(assert (=> b!1287995 (=> (not res!855535) (not e!735519))))

(declare-datatypes ((List!29333 0))(
  ( (Nil!29330) (Cons!29329 (h!30538 (_ BitVec 64)) (t!42904 List!29333)) )
))
(declare-fun arrayNoDuplicates!0 (array!85259 (_ BitVec 32) List!29333) Bool)

(assert (=> b!1287995 (= res!855535 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29330))))

(declare-fun b!1287996 () Bool)

(declare-fun res!855536 () Bool)

(assert (=> b!1287996 (=> (not res!855536) (not e!735519))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85259 (_ BitVec 32)) Bool)

(assert (=> b!1287996 (= res!855536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!52754 () Bool)

(declare-fun tp!100586 () Bool)

(declare-fun e!735522 () Bool)

(assert (=> mapNonEmpty!52754 (= mapRes!52754 (and tp!100586 e!735522))))

(declare-fun mapKey!52754 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16166 0))(
  ( (ValueCellFull!16166 (v!19740 V!50609)) (EmptyCell!16166) )
))
(declare-fun mapValue!52754 () ValueCell!16166)

(declare-datatypes ((array!85261 0))(
  ( (array!85262 (arr!41127 (Array (_ BitVec 32) ValueCell!16166)) (size!41678 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85261)

(declare-fun mapRest!52754 () (Array (_ BitVec 32) ValueCell!16166))

(assert (=> mapNonEmpty!52754 (= (arr!41127 _values!1445) (store mapRest!52754 mapKey!52754 mapValue!52754))))

(declare-fun b!1287997 () Bool)

(declare-fun e!735520 () Bool)

(declare-fun tp_is_empty!34129 () Bool)

(assert (=> b!1287997 (= e!735520 tp_is_empty!34129)))

(declare-fun b!1287998 () Bool)

(declare-fun res!855530 () Bool)

(assert (=> b!1287998 (=> (not res!855530) (not e!735519))))

(assert (=> b!1287998 (= res!855530 (and (= (size!41678 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41677 _keys!1741) (size!41678 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1287999 () Bool)

(assert (=> b!1287999 (= e!735522 tp_is_empty!34129)))

(declare-fun b!1288000 () Bool)

(declare-fun res!855531 () Bool)

(assert (=> b!1288000 (=> (not res!855531) (not e!735519))))

(assert (=> b!1288000 (= res!855531 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41677 _keys!1741))))))

(declare-fun b!1288001 () Bool)

(declare-fun res!855532 () Bool)

(assert (=> b!1288001 (=> (not res!855532) (not e!735519))))

(declare-fun minValue!1387 () V!50609)

(declare-fun zeroValue!1387 () V!50609)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4921 (array!85259 array!85261 (_ BitVec 32) (_ BitVec 32) V!50609 V!50609 (_ BitVec 32) Int) ListLongMap!19801)

(assert (=> b!1288001 (= res!855532 (contains!7972 (getCurrentListMap!4921 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1288003 () Bool)

(declare-fun e!735523 () Bool)

(assert (=> b!1288003 (= e!735523 (and e!735520 mapRes!52754))))

(declare-fun condMapEmpty!52754 () Bool)

(declare-fun mapDefault!52754 () ValueCell!16166)

