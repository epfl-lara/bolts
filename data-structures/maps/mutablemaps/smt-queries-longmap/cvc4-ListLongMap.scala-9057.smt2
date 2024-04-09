; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109166 () Bool)

(assert start!109166)

(declare-fun b_free!28619 () Bool)

(declare-fun b_next!28619 () Bool)

(assert (=> start!109166 (= b_free!28619 (not b_next!28619))))

(declare-fun tp!100976 () Bool)

(declare-fun b_and!46719 () Bool)

(assert (=> start!109166 (= tp!100976 b_and!46719)))

(declare-fun b!1290327 () Bool)

(declare-fun res!857284 () Bool)

(declare-fun e!736682 () Bool)

(assert (=> b!1290327 (=> (not res!857284) (not e!736682))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50781 0))(
  ( (V!50782 (val!17204 Int)) )
))
(declare-datatypes ((ValueCell!16231 0))(
  ( (ValueCellFull!16231 (v!19805 V!50781)) (EmptyCell!16231) )
))
(declare-datatypes ((array!85517 0))(
  ( (array!85518 (arr!41255 (Array (_ BitVec 32) ValueCell!16231)) (size!41806 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85517)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85519 0))(
  ( (array!85520 (arr!41256 (Array (_ BitVec 32) (_ BitVec 64))) (size!41807 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85519)

(assert (=> b!1290327 (= res!857284 (and (= (size!41806 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41807 _keys!1741) (size!41806 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1290328 () Bool)

(declare-fun res!857281 () Bool)

(assert (=> b!1290328 (=> (not res!857281) (not e!736682))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1290328 (= res!857281 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41807 _keys!1741))))))

(declare-fun b!1290329 () Bool)

(declare-fun res!857279 () Bool)

(assert (=> b!1290329 (=> (not res!857279) (not e!736682))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290329 (= res!857279 (not (validKeyInArray!0 (select (arr!41256 _keys!1741) from!2144))))))

(declare-fun b!1290330 () Bool)

(declare-fun e!736683 () Bool)

(declare-fun tp_is_empty!34259 () Bool)

(assert (=> b!1290330 (= e!736683 tp_is_empty!34259)))

(declare-fun b!1290331 () Bool)

(declare-fun e!736686 () Bool)

(assert (=> b!1290331 (= e!736686 true)))

(declare-datatypes ((tuple2!22244 0))(
  ( (tuple2!22245 (_1!11132 (_ BitVec 64)) (_2!11132 V!50781)) )
))
(declare-datatypes ((List!29441 0))(
  ( (Nil!29438) (Cons!29437 (h!30646 tuple2!22244) (t!43012 List!29441)) )
))
(declare-datatypes ((ListLongMap!19913 0))(
  ( (ListLongMap!19914 (toList!9972 List!29441)) )
))
(declare-fun lt!578549 () ListLongMap!19913)

(declare-fun lt!578547 () tuple2!22244)

(declare-fun lt!578551 () Bool)

(declare-fun contains!8028 (ListLongMap!19913 (_ BitVec 64)) Bool)

(declare-fun +!4341 (ListLongMap!19913 tuple2!22244) ListLongMap!19913)

(assert (=> b!1290331 (= lt!578551 (contains!8028 (+!4341 lt!578549 lt!578547) k!1205))))

(declare-fun lt!578546 () ListLongMap!19913)

(assert (=> b!1290331 (not (contains!8028 (+!4341 lt!578546 lt!578547) k!1205))))

(declare-fun minValue!1387 () V!50781)

(assert (=> b!1290331 (= lt!578547 (tuple2!22245 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))

(declare-datatypes ((Unit!42633 0))(
  ( (Unit!42634) )
))
(declare-fun lt!578548 () Unit!42633)

(declare-fun addStillNotContains!386 (ListLongMap!19913 (_ BitVec 64) V!50781 (_ BitVec 64)) Unit!42633)

(assert (=> b!1290331 (= lt!578548 (addStillNotContains!386 lt!578546 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1290331 (not (contains!8028 lt!578549 k!1205))))

(declare-fun zeroValue!1387 () V!50781)

(assert (=> b!1290331 (= lt!578549 (+!4341 lt!578546 (tuple2!22245 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!578545 () Unit!42633)

(assert (=> b!1290331 (= lt!578545 (addStillNotContains!386 lt!578546 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6053 (array!85519 array!85517 (_ BitVec 32) (_ BitVec 32) V!50781 V!50781 (_ BitVec 32) Int) ListLongMap!19913)

(assert (=> b!1290331 (= lt!578546 (getCurrentListMapNoExtraKeys!6053 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1290332 () Bool)

(declare-fun res!857278 () Bool)

(assert (=> b!1290332 (=> (not res!857278) (not e!736682))))

(declare-datatypes ((List!29442 0))(
  ( (Nil!29439) (Cons!29438 (h!30647 (_ BitVec 64)) (t!43013 List!29442)) )
))
(declare-fun arrayNoDuplicates!0 (array!85519 (_ BitVec 32) List!29442) Bool)

(assert (=> b!1290332 (= res!857278 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29439))))

(declare-fun b!1290333 () Bool)

(assert (=> b!1290333 (= e!736682 (not e!736686))))

(declare-fun res!857285 () Bool)

(assert (=> b!1290333 (=> res!857285 e!736686)))

(assert (=> b!1290333 (= res!857285 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1290333 (not (contains!8028 (ListLongMap!19914 Nil!29438) k!1205))))

(declare-fun lt!578550 () Unit!42633)

(declare-fun emptyContainsNothing!77 ((_ BitVec 64)) Unit!42633)

(assert (=> b!1290333 (= lt!578550 (emptyContainsNothing!77 k!1205))))

(declare-fun b!1290334 () Bool)

(declare-fun res!857283 () Bool)

(assert (=> b!1290334 (=> (not res!857283) (not e!736682))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85519 (_ BitVec 32)) Bool)

(assert (=> b!1290334 (= res!857283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!857280 () Bool)

(assert (=> start!109166 (=> (not res!857280) (not e!736682))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109166 (= res!857280 (validMask!0 mask!2175))))

(assert (=> start!109166 e!736682))

(assert (=> start!109166 tp_is_empty!34259))

(assert (=> start!109166 true))

(declare-fun e!736687 () Bool)

(declare-fun array_inv!31243 (array!85517) Bool)

(assert (=> start!109166 (and (array_inv!31243 _values!1445) e!736687)))

(declare-fun array_inv!31244 (array!85519) Bool)

(assert (=> start!109166 (array_inv!31244 _keys!1741)))

(assert (=> start!109166 tp!100976))

(declare-fun b!1290335 () Bool)

(declare-fun e!736685 () Bool)

(declare-fun mapRes!52949 () Bool)

(assert (=> b!1290335 (= e!736687 (and e!736685 mapRes!52949))))

(declare-fun condMapEmpty!52949 () Bool)

(declare-fun mapDefault!52949 () ValueCell!16231)

