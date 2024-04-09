; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108850 () Bool)

(assert start!108850)

(declare-fun b_free!28327 () Bool)

(declare-fun b_next!28327 () Bool)

(assert (=> start!108850 (= b_free!28327 (not b_next!28327))))

(declare-fun tp!100097 () Bool)

(declare-fun b_and!46403 () Bool)

(assert (=> start!108850 (= tp!100097 b_and!46403)))

(declare-fun b!1284929 () Bool)

(declare-fun res!853691 () Bool)

(declare-fun e!733988 () Bool)

(assert (=> b!1284929 (=> (not res!853691) (not e!733988))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50393 0))(
  ( (V!50394 (val!17058 Int)) )
))
(declare-datatypes ((ValueCell!16085 0))(
  ( (ValueCellFull!16085 (v!19658 V!50393)) (EmptyCell!16085) )
))
(declare-datatypes ((array!84949 0))(
  ( (array!84950 (arr!40972 (Array (_ BitVec 32) ValueCell!16085)) (size!41523 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84949)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84951 0))(
  ( (array!84952 (arr!40973 (Array (_ BitVec 32) (_ BitVec 64))) (size!41524 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84951)

(assert (=> b!1284929 (= res!853691 (and (= (size!41523 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41524 _keys!1741) (size!41523 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1284930 () Bool)

(declare-fun res!853684 () Bool)

(assert (=> b!1284930 (=> (not res!853684) (not e!733988))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1284930 (= res!853684 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41524 _keys!1741))))))

(declare-fun b!1284931 () Bool)

(assert (=> b!1284931 (= e!733988 false)))

(declare-fun minValue!1387 () V!50393)

(declare-fun zeroValue!1387 () V!50393)

(declare-fun lt!576804 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21994 0))(
  ( (tuple2!21995 (_1!11007 (_ BitVec 64)) (_2!11007 V!50393)) )
))
(declare-datatypes ((List!29207 0))(
  ( (Nil!29204) (Cons!29203 (h!30412 tuple2!21994) (t!42758 List!29207)) )
))
(declare-datatypes ((ListLongMap!19663 0))(
  ( (ListLongMap!19664 (toList!9847 List!29207)) )
))
(declare-fun contains!7902 (ListLongMap!19663 (_ BitVec 64)) Bool)

(declare-fun +!4276 (ListLongMap!19663 tuple2!21994) ListLongMap!19663)

(declare-fun getCurrentListMapNoExtraKeys!5987 (array!84951 array!84949 (_ BitVec 32) (_ BitVec 32) V!50393 V!50393 (_ BitVec 32) Int) ListLongMap!19663)

(assert (=> b!1284931 (= lt!576804 (contains!7902 (+!4276 (getCurrentListMapNoExtraKeys!5987 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21995 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun b!1284932 () Bool)

(declare-fun res!853690 () Bool)

(assert (=> b!1284932 (=> (not res!853690) (not e!733988))))

(declare-datatypes ((List!29208 0))(
  ( (Nil!29205) (Cons!29204 (h!30413 (_ BitVec 64)) (t!42759 List!29208)) )
))
(declare-fun arrayNoDuplicates!0 (array!84951 (_ BitVec 32) List!29208) Bool)

(assert (=> b!1284932 (= res!853690 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29205))))

(declare-fun mapNonEmpty!52508 () Bool)

(declare-fun mapRes!52508 () Bool)

(declare-fun tp!100098 () Bool)

(declare-fun e!733989 () Bool)

(assert (=> mapNonEmpty!52508 (= mapRes!52508 (and tp!100098 e!733989))))

(declare-fun mapRest!52508 () (Array (_ BitVec 32) ValueCell!16085))

(declare-fun mapValue!52508 () ValueCell!16085)

(declare-fun mapKey!52508 () (_ BitVec 32))

(assert (=> mapNonEmpty!52508 (= (arr!40972 _values!1445) (store mapRest!52508 mapKey!52508 mapValue!52508))))

(declare-fun b!1284933 () Bool)

(declare-fun res!853689 () Bool)

(assert (=> b!1284933 (=> (not res!853689) (not e!733988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84951 (_ BitVec 32)) Bool)

(assert (=> b!1284933 (= res!853689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!853686 () Bool)

(assert (=> start!108850 (=> (not res!853686) (not e!733988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108850 (= res!853686 (validMask!0 mask!2175))))

(assert (=> start!108850 e!733988))

(declare-fun tp_is_empty!33967 () Bool)

(assert (=> start!108850 tp_is_empty!33967))

(assert (=> start!108850 true))

(declare-fun e!733990 () Bool)

(declare-fun array_inv!31053 (array!84949) Bool)

(assert (=> start!108850 (and (array_inv!31053 _values!1445) e!733990)))

(declare-fun array_inv!31054 (array!84951) Bool)

(assert (=> start!108850 (array_inv!31054 _keys!1741)))

(assert (=> start!108850 tp!100097))

(declare-fun b!1284934 () Bool)

(declare-fun res!853692 () Bool)

(assert (=> b!1284934 (=> (not res!853692) (not e!733988))))

(assert (=> b!1284934 (= res!853692 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41524 _keys!1741))))))

(declare-fun b!1284935 () Bool)

(declare-fun e!733986 () Bool)

(assert (=> b!1284935 (= e!733990 (and e!733986 mapRes!52508))))

(declare-fun condMapEmpty!52508 () Bool)

(declare-fun mapDefault!52508 () ValueCell!16085)

