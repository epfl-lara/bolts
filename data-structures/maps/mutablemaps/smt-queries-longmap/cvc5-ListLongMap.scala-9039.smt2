; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109054 () Bool)

(assert start!109054)

(declare-fun b_free!28507 () Bool)

(declare-fun b_next!28507 () Bool)

(assert (=> start!109054 (= b_free!28507 (not b_next!28507))))

(declare-fun tp!100640 () Bool)

(declare-fun b_and!46607 () Bool)

(assert (=> start!109054 (= tp!100640 b_and!46607)))

(declare-fun b!1288311 () Bool)

(declare-fun res!855767 () Bool)

(declare-fun e!735675 () Bool)

(assert (=> b!1288311 (=> (not res!855767) (not e!735675))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85295 0))(
  ( (array!85296 (arr!41144 (Array (_ BitVec 32) (_ BitVec 64))) (size!41695 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85295)

(assert (=> b!1288311 (= res!855767 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41695 _keys!1741))))))

(declare-fun b!1288312 () Bool)

(declare-fun res!855773 () Bool)

(assert (=> b!1288312 (=> (not res!855773) (not e!735675))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1288312 (= res!855773 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41695 _keys!1741))))))

(declare-fun b!1288313 () Bool)

(declare-fun res!855768 () Bool)

(assert (=> b!1288313 (=> (not res!855768) (not e!735675))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85295 (_ BitVec 32)) Bool)

(assert (=> b!1288313 (= res!855768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1288314 () Bool)

(declare-fun e!735676 () Bool)

(assert (=> b!1288314 (= e!735676 true)))

(declare-datatypes ((V!50633 0))(
  ( (V!50634 (val!17148 Int)) )
))
(declare-datatypes ((tuple2!22148 0))(
  ( (tuple2!22149 (_1!11084 (_ BitVec 64)) (_2!11084 V!50633)) )
))
(declare-datatypes ((List!29346 0))(
  ( (Nil!29343) (Cons!29342 (h!30551 tuple2!22148) (t!42917 List!29346)) )
))
(declare-datatypes ((ListLongMap!19817 0))(
  ( (ListLongMap!19818 (toList!9924 List!29346)) )
))
(declare-fun lt!577919 () ListLongMap!19817)

(declare-fun zeroValue!1387 () V!50633)

(declare-fun contains!7980 (ListLongMap!19817 (_ BitVec 64)) Bool)

(declare-fun +!4299 (ListLongMap!19817 tuple2!22148) ListLongMap!19817)

(assert (=> b!1288314 (not (contains!7980 (+!4299 lt!577919 (tuple2!22149 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-datatypes ((Unit!42543 0))(
  ( (Unit!42544) )
))
(declare-fun lt!577921 () Unit!42543)

(declare-fun addStillNotContains!344 (ListLongMap!19817 (_ BitVec 64) V!50633 (_ BitVec 64)) Unit!42543)

(assert (=> b!1288314 (= lt!577921 (addStillNotContains!344 lt!577919 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun minValue!1387 () V!50633)

(declare-datatypes ((ValueCell!16175 0))(
  ( (ValueCellFull!16175 (v!19749 V!50633)) (EmptyCell!16175) )
))
(declare-datatypes ((array!85297 0))(
  ( (array!85298 (arr!41145 (Array (_ BitVec 32) ValueCell!16175)) (size!41696 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85297)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6011 (array!85295 array!85297 (_ BitVec 32) (_ BitVec 32) V!50633 V!50633 (_ BitVec 32) Int) ListLongMap!19817)

(assert (=> b!1288314 (= lt!577919 (getCurrentListMapNoExtraKeys!6011 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1288315 () Bool)

(declare-fun res!855766 () Bool)

(assert (=> b!1288315 (=> (not res!855766) (not e!735675))))

(assert (=> b!1288315 (= res!855766 (and (= (size!41696 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41695 _keys!1741) (size!41696 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52781 () Bool)

(declare-fun mapRes!52781 () Bool)

(declare-fun tp!100641 () Bool)

(declare-fun e!735679 () Bool)

(assert (=> mapNonEmpty!52781 (= mapRes!52781 (and tp!100641 e!735679))))

(declare-fun mapRest!52781 () (Array (_ BitVec 32) ValueCell!16175))

(declare-fun mapKey!52781 () (_ BitVec 32))

(declare-fun mapValue!52781 () ValueCell!16175)

(assert (=> mapNonEmpty!52781 (= (arr!41145 _values!1445) (store mapRest!52781 mapKey!52781 mapValue!52781))))

(declare-fun mapIsEmpty!52781 () Bool)

(assert (=> mapIsEmpty!52781 mapRes!52781))

(declare-fun b!1288317 () Bool)

(declare-fun tp_is_empty!34147 () Bool)

(assert (=> b!1288317 (= e!735679 tp_is_empty!34147)))

(declare-fun b!1288318 () Bool)

(declare-fun res!855774 () Bool)

(assert (=> b!1288318 (=> (not res!855774) (not e!735675))))

(declare-fun getCurrentListMap!4927 (array!85295 array!85297 (_ BitVec 32) (_ BitVec 32) V!50633 V!50633 (_ BitVec 32) Int) ListLongMap!19817)

(assert (=> b!1288318 (= res!855774 (contains!7980 (getCurrentListMap!4927 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1288319 () Bool)

(declare-fun e!735677 () Bool)

(declare-fun e!735674 () Bool)

(assert (=> b!1288319 (= e!735677 (and e!735674 mapRes!52781))))

(declare-fun condMapEmpty!52781 () Bool)

(declare-fun mapDefault!52781 () ValueCell!16175)

