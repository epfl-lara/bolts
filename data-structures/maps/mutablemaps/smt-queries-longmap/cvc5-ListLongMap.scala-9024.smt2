; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108940 () Bool)

(assert start!108940)

(declare-fun b_free!28417 () Bool)

(declare-fun b_next!28417 () Bool)

(assert (=> start!108940 (= b_free!28417 (not b_next!28417))))

(declare-fun tp!100367 () Bool)

(declare-fun b_and!46505 () Bool)

(assert (=> start!108940 (= tp!100367 b_and!46505)))

(declare-fun res!854599 () Bool)

(declare-fun e!734773 () Bool)

(assert (=> start!108940 (=> (not res!854599) (not e!734773))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108940 (= res!854599 (validMask!0 mask!2175))))

(assert (=> start!108940 e!734773))

(declare-fun tp_is_empty!34057 () Bool)

(assert (=> start!108940 tp_is_empty!34057))

(assert (=> start!108940 true))

(declare-datatypes ((V!50513 0))(
  ( (V!50514 (val!17103 Int)) )
))
(declare-datatypes ((ValueCell!16130 0))(
  ( (ValueCellFull!16130 (v!19703 V!50513)) (EmptyCell!16130) )
))
(declare-datatypes ((array!85121 0))(
  ( (array!85122 (arr!41058 (Array (_ BitVec 32) ValueCell!16130)) (size!41609 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85121)

(declare-fun e!734769 () Bool)

(declare-fun array_inv!31111 (array!85121) Bool)

(assert (=> start!108940 (and (array_inv!31111 _values!1445) e!734769)))

(declare-datatypes ((array!85123 0))(
  ( (array!85124 (arr!41059 (Array (_ BitVec 32) (_ BitVec 64))) (size!41610 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85123)

(declare-fun array_inv!31112 (array!85123) Bool)

(assert (=> start!108940 (array_inv!31112 _keys!1741)))

(assert (=> start!108940 tp!100367))

(declare-fun bm!62945 () Bool)

(declare-fun call!62948 () Bool)

(declare-fun call!62952 () Bool)

(assert (=> bm!62945 (= call!62948 call!62952)))

(declare-fun minValue!1387 () V!50513)

(declare-fun zeroValue!1387 () V!50513)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((tuple2!22068 0))(
  ( (tuple2!22069 (_1!11044 (_ BitVec 64)) (_2!11044 V!50513)) )
))
(declare-datatypes ((List!29272 0))(
  ( (Nil!29269) (Cons!29268 (h!30477 tuple2!22068) (t!42837 List!29272)) )
))
(declare-datatypes ((ListLongMap!19737 0))(
  ( (ListLongMap!19738 (toList!9884 List!29272)) )
))
(declare-fun call!62949 () ListLongMap!19737)

(declare-fun bm!62946 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6001 (array!85123 array!85121 (_ BitVec 32) (_ BitVec 32) V!50513 V!50513 (_ BitVec 32) Int) ListLongMap!19737)

(assert (=> bm!62946 (= call!62949 (getCurrentListMapNoExtraKeys!6001 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!577267 () ListLongMap!19737)

(declare-fun c!124134 () Bool)

(declare-fun lt!577269 () ListLongMap!19737)

(declare-fun bm!62947 () Bool)

(declare-fun lt!577261 () ListLongMap!19737)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun c!124133 () Bool)

(declare-fun contains!7938 (ListLongMap!19737 (_ BitVec 64)) Bool)

(assert (=> bm!62947 (= call!62952 (contains!7938 (ite c!124134 lt!577267 (ite c!124133 lt!577269 lt!577261)) k!1205))))

(declare-fun b!1286429 () Bool)

(declare-fun e!734776 () Bool)

(declare-fun mapRes!52643 () Bool)

(assert (=> b!1286429 (= e!734769 (and e!734776 mapRes!52643))))

(declare-fun condMapEmpty!52643 () Bool)

(declare-fun mapDefault!52643 () ValueCell!16130)

