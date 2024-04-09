; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109124 () Bool)

(assert start!109124)

(declare-fun b_free!28577 () Bool)

(declare-fun b_next!28577 () Bool)

(assert (=> start!109124 (= b_free!28577 (not b_next!28577))))

(declare-fun tp!100850 () Bool)

(declare-fun b_and!46677 () Bool)

(assert (=> start!109124 (= tp!100850 b_and!46677)))

(declare-fun b!1289571 () Bool)

(declare-fun res!856712 () Bool)

(declare-fun e!736309 () Bool)

(assert (=> b!1289571 (=> (not res!856712) (not e!736309))))

(declare-datatypes ((V!50725 0))(
  ( (V!50726 (val!17183 Int)) )
))
(declare-fun minValue!1387 () V!50725)

(declare-fun zeroValue!1387 () V!50725)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16210 0))(
  ( (ValueCellFull!16210 (v!19784 V!50725)) (EmptyCell!16210) )
))
(declare-datatypes ((array!85433 0))(
  ( (array!85434 (arr!41213 (Array (_ BitVec 32) ValueCell!16210)) (size!41764 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85433)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85435 0))(
  ( (array!85436 (arr!41214 (Array (_ BitVec 32) (_ BitVec 64))) (size!41765 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85435)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22206 0))(
  ( (tuple2!22207 (_1!11113 (_ BitVec 64)) (_2!11113 V!50725)) )
))
(declare-datatypes ((List!29406 0))(
  ( (Nil!29403) (Cons!29402 (h!30611 tuple2!22206) (t!42977 List!29406)) )
))
(declare-datatypes ((ListLongMap!19875 0))(
  ( (ListLongMap!19876 (toList!9953 List!29406)) )
))
(declare-fun contains!8009 (ListLongMap!19875 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4955 (array!85435 array!85433 (_ BitVec 32) (_ BitVec 32) V!50725 V!50725 (_ BitVec 32) Int) ListLongMap!19875)

(assert (=> b!1289571 (= res!856712 (contains!8009 (getCurrentListMap!4955 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1289572 () Bool)

(declare-fun res!856714 () Bool)

(assert (=> b!1289572 (=> (not res!856714) (not e!736309))))

(assert (=> b!1289572 (= res!856714 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41765 _keys!1741))))))

(declare-fun b!1289573 () Bool)

(declare-fun e!736305 () Bool)

(assert (=> b!1289573 (= e!736305 true)))

(declare-fun lt!578270 () ListLongMap!19875)

(declare-fun +!4325 (ListLongMap!19875 tuple2!22206) ListLongMap!19875)

(assert (=> b!1289573 (not (contains!8009 (+!4325 lt!578270 (tuple2!22207 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-datatypes ((Unit!42601 0))(
  ( (Unit!42602) )
))
(declare-fun lt!578271 () Unit!42601)

(declare-fun addStillNotContains!370 (ListLongMap!19875 (_ BitVec 64) V!50725 (_ BitVec 64)) Unit!42601)

(assert (=> b!1289573 (= lt!578271 (addStillNotContains!370 lt!578270 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1289573 (not (contains!8009 (+!4325 lt!578270 (tuple2!22207 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!578269 () Unit!42601)

(assert (=> b!1289573 (= lt!578269 (addStillNotContains!370 lt!578270 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6037 (array!85435 array!85433 (_ BitVec 32) (_ BitVec 32) V!50725 V!50725 (_ BitVec 32) Int) ListLongMap!19875)

(assert (=> b!1289573 (= lt!578270 (getCurrentListMapNoExtraKeys!6037 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1289574 () Bool)

(declare-fun e!736304 () Bool)

(declare-fun tp_is_empty!34217 () Bool)

(assert (=> b!1289574 (= e!736304 tp_is_empty!34217)))

(declare-fun mapNonEmpty!52886 () Bool)

(declare-fun mapRes!52886 () Bool)

(declare-fun tp!100851 () Bool)

(declare-fun e!736306 () Bool)

(assert (=> mapNonEmpty!52886 (= mapRes!52886 (and tp!100851 e!736306))))

(declare-fun mapRest!52886 () (Array (_ BitVec 32) ValueCell!16210))

(declare-fun mapKey!52886 () (_ BitVec 32))

(declare-fun mapValue!52886 () ValueCell!16210)

(assert (=> mapNonEmpty!52886 (= (arr!41213 _values!1445) (store mapRest!52886 mapKey!52886 mapValue!52886))))

(declare-fun b!1289575 () Bool)

(declare-fun res!856718 () Bool)

(assert (=> b!1289575 (=> (not res!856718) (not e!736309))))

(assert (=> b!1289575 (= res!856718 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41765 _keys!1741))))))

(declare-fun res!856719 () Bool)

(assert (=> start!109124 (=> (not res!856719) (not e!736309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109124 (= res!856719 (validMask!0 mask!2175))))

(assert (=> start!109124 e!736309))

(assert (=> start!109124 tp_is_empty!34217))

(assert (=> start!109124 true))

(declare-fun e!736307 () Bool)

(declare-fun array_inv!31217 (array!85433) Bool)

(assert (=> start!109124 (and (array_inv!31217 _values!1445) e!736307)))

(declare-fun array_inv!31218 (array!85435) Bool)

(assert (=> start!109124 (array_inv!31218 _keys!1741)))

(assert (=> start!109124 tp!100850))

(declare-fun b!1289576 () Bool)

(assert (=> b!1289576 (= e!736307 (and e!736304 mapRes!52886))))

(declare-fun condMapEmpty!52886 () Bool)

(declare-fun mapDefault!52886 () ValueCell!16210)

