; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109234 () Bool)

(assert start!109234)

(declare-fun b_free!28687 () Bool)

(declare-fun b_next!28687 () Bool)

(assert (=> start!109234 (= b_free!28687 (not b_next!28687))))

(declare-fun tp!101180 () Bool)

(declare-fun b_and!46787 () Bool)

(assert (=> start!109234 (= tp!101180 b_and!46787)))

(declare-fun b!1291551 () Bool)

(declare-fun res!858199 () Bool)

(declare-fun e!737297 () Bool)

(assert (=> b!1291551 (=> (not res!858199) (not e!737297))))

(declare-datatypes ((array!85649 0))(
  ( (array!85650 (arr!41321 (Array (_ BitVec 32) (_ BitVec 64))) (size!41872 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85649)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291551 (= res!858199 (not (validKeyInArray!0 (select (arr!41321 _keys!1741) from!2144))))))

(declare-fun b!1291552 () Bool)

(declare-fun res!858196 () Bool)

(assert (=> b!1291552 (=> (not res!858196) (not e!737297))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1291552 (= res!858196 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41872 _keys!1741))))))

(declare-fun res!858200 () Bool)

(assert (=> start!109234 (=> (not res!858200) (not e!737297))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109234 (= res!858200 (validMask!0 mask!2175))))

(assert (=> start!109234 e!737297))

(declare-fun tp_is_empty!34327 () Bool)

(assert (=> start!109234 tp_is_empty!34327))

(assert (=> start!109234 true))

(declare-datatypes ((V!50873 0))(
  ( (V!50874 (val!17238 Int)) )
))
(declare-datatypes ((ValueCell!16265 0))(
  ( (ValueCellFull!16265 (v!19839 V!50873)) (EmptyCell!16265) )
))
(declare-datatypes ((array!85651 0))(
  ( (array!85652 (arr!41322 (Array (_ BitVec 32) ValueCell!16265)) (size!41873 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85651)

(declare-fun e!737294 () Bool)

(declare-fun array_inv!31283 (array!85651) Bool)

(assert (=> start!109234 (and (array_inv!31283 _values!1445) e!737294)))

(declare-fun array_inv!31284 (array!85649) Bool)

(assert (=> start!109234 (array_inv!31284 _keys!1741)))

(assert (=> start!109234 tp!101180))

(declare-fun b!1291553 () Bool)

(declare-fun e!737296 () Bool)

(assert (=> b!1291553 (= e!737296 true)))

(assert (=> b!1291553 false))

(declare-fun minValue!1387 () V!50873)

(declare-datatypes ((Unit!42689 0))(
  ( (Unit!42690) )
))
(declare-fun lt!579168 () Unit!42689)

(declare-datatypes ((tuple2!22300 0))(
  ( (tuple2!22301 (_1!11160 (_ BitVec 64)) (_2!11160 V!50873)) )
))
(declare-datatypes ((List!29491 0))(
  ( (Nil!29488) (Cons!29487 (h!30696 tuple2!22300) (t!43062 List!29491)) )
))
(declare-datatypes ((ListLongMap!19969 0))(
  ( (ListLongMap!19970 (toList!10000 List!29491)) )
))
(declare-fun lt!579172 () ListLongMap!19969)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!57 ((_ BitVec 64) (_ BitVec 64) V!50873 ListLongMap!19969) Unit!42689)

(assert (=> b!1291553 (= lt!579168 (lemmaInListMapAfterAddingDiffThenInBefore!57 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!579172))))

(declare-fun lt!579167 () ListLongMap!19969)

(declare-fun contains!8056 (ListLongMap!19969 (_ BitVec 64)) Bool)

(declare-fun +!4362 (ListLongMap!19969 tuple2!22300) ListLongMap!19969)

(assert (=> b!1291553 (not (contains!8056 (+!4362 lt!579167 (tuple2!22301 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!579170 () Unit!42689)

(declare-fun addStillNotContains!407 (ListLongMap!19969 (_ BitVec 64) V!50873 (_ BitVec 64)) Unit!42689)

(assert (=> b!1291553 (= lt!579170 (addStillNotContains!407 lt!579167 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1291553 (not (contains!8056 lt!579172 k!1205))))

(declare-fun zeroValue!1387 () V!50873)

(assert (=> b!1291553 (= lt!579172 (+!4362 lt!579167 (tuple2!22301 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!579171 () Unit!42689)

(assert (=> b!1291553 (= lt!579171 (addStillNotContains!407 lt!579167 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6074 (array!85649 array!85651 (_ BitVec 32) (_ BitVec 32) V!50873 V!50873 (_ BitVec 32) Int) ListLongMap!19969)

(assert (=> b!1291553 (= lt!579167 (getCurrentListMapNoExtraKeys!6074 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapIsEmpty!53051 () Bool)

(declare-fun mapRes!53051 () Bool)

(assert (=> mapIsEmpty!53051 mapRes!53051))

(declare-fun b!1291554 () Bool)

(assert (=> b!1291554 (= e!737297 (not e!737296))))

(declare-fun res!858197 () Bool)

(assert (=> b!1291554 (=> res!858197 e!737296)))

(assert (=> b!1291554 (= res!858197 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1291554 (not (contains!8056 (ListLongMap!19970 Nil!29488) k!1205))))

(declare-fun lt!579169 () Unit!42689)

(declare-fun emptyContainsNothing!101 ((_ BitVec 64)) Unit!42689)

(assert (=> b!1291554 (= lt!579169 (emptyContainsNothing!101 k!1205))))

(declare-fun b!1291555 () Bool)

(declare-fun e!737299 () Bool)

(assert (=> b!1291555 (= e!737299 tp_is_empty!34327)))

(declare-fun b!1291556 () Bool)

(declare-fun res!858204 () Bool)

(assert (=> b!1291556 (=> (not res!858204) (not e!737297))))

(declare-datatypes ((List!29492 0))(
  ( (Nil!29489) (Cons!29488 (h!30697 (_ BitVec 64)) (t!43063 List!29492)) )
))
(declare-fun arrayNoDuplicates!0 (array!85649 (_ BitVec 32) List!29492) Bool)

(assert (=> b!1291556 (= res!858204 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29489))))

(declare-fun b!1291557 () Bool)

(declare-fun res!858203 () Bool)

(assert (=> b!1291557 (=> (not res!858203) (not e!737297))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85649 (_ BitVec 32)) Bool)

(assert (=> b!1291557 (= res!858203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1291558 () Bool)

(declare-fun res!858202 () Bool)

(assert (=> b!1291558 (=> (not res!858202) (not e!737297))))

(assert (=> b!1291558 (= res!858202 (and (= (size!41873 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41872 _keys!1741) (size!41873 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1291559 () Bool)

(declare-fun res!858201 () Bool)

(assert (=> b!1291559 (=> (not res!858201) (not e!737297))))

(declare-fun getCurrentListMap!4994 (array!85649 array!85651 (_ BitVec 32) (_ BitVec 32) V!50873 V!50873 (_ BitVec 32) Int) ListLongMap!19969)

(assert (=> b!1291559 (= res!858201 (contains!8056 (getCurrentListMap!4994 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapNonEmpty!53051 () Bool)

(declare-fun tp!101181 () Bool)

(assert (=> mapNonEmpty!53051 (= mapRes!53051 (and tp!101181 e!737299))))

(declare-fun mapRest!53051 () (Array (_ BitVec 32) ValueCell!16265))

(declare-fun mapValue!53051 () ValueCell!16265)

(declare-fun mapKey!53051 () (_ BitVec 32))

(assert (=> mapNonEmpty!53051 (= (arr!41322 _values!1445) (store mapRest!53051 mapKey!53051 mapValue!53051))))

(declare-fun b!1291560 () Bool)

(declare-fun e!737295 () Bool)

(assert (=> b!1291560 (= e!737294 (and e!737295 mapRes!53051))))

(declare-fun condMapEmpty!53051 () Bool)

(declare-fun mapDefault!53051 () ValueCell!16265)

