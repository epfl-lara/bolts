; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108788 () Bool)

(assert start!108788)

(declare-fun b_free!28265 () Bool)

(declare-fun b_next!28265 () Bool)

(assert (=> start!108788 (= b_free!28265 (not b_next!28265))))

(declare-fun tp!99911 () Bool)

(declare-fun b_and!46341 () Bool)

(assert (=> start!108788 (= tp!99911 b_and!46341)))

(declare-fun b!1284110 () Bool)

(declare-fun e!733524 () Bool)

(declare-fun tp_is_empty!33905 () Bool)

(assert (=> b!1284110 (= e!733524 tp_is_empty!33905)))

(declare-fun b!1284111 () Bool)

(declare-fun res!853146 () Bool)

(declare-fun e!733521 () Bool)

(assert (=> b!1284111 (=> (not res!853146) (not e!733521))))

(declare-datatypes ((array!84825 0))(
  ( (array!84826 (arr!40910 (Array (_ BitVec 32) (_ BitVec 64))) (size!41461 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84825)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84825 (_ BitVec 32)) Bool)

(assert (=> b!1284111 (= res!853146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1284112 () Bool)

(declare-fun res!853152 () Bool)

(assert (=> b!1284112 (=> (not res!853152) (not e!733521))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1284112 (= res!853152 (validKeyInArray!0 (select (arr!40910 _keys!1741) from!2144)))))

(declare-fun b!1284113 () Bool)

(declare-fun res!853149 () Bool)

(assert (=> b!1284113 (=> (not res!853149) (not e!733521))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1284113 (= res!853149 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!853147 () Bool)

(assert (=> start!108788 (=> (not res!853147) (not e!733521))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108788 (= res!853147 (validMask!0 mask!2175))))

(assert (=> start!108788 e!733521))

(assert (=> start!108788 tp_is_empty!33905))

(assert (=> start!108788 true))

(declare-datatypes ((V!50309 0))(
  ( (V!50310 (val!17027 Int)) )
))
(declare-datatypes ((ValueCell!16054 0))(
  ( (ValueCellFull!16054 (v!19627 V!50309)) (EmptyCell!16054) )
))
(declare-datatypes ((array!84827 0))(
  ( (array!84828 (arr!40911 (Array (_ BitVec 32) ValueCell!16054)) (size!41462 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84827)

(declare-fun e!733523 () Bool)

(declare-fun array_inv!31011 (array!84827) Bool)

(assert (=> start!108788 (and (array_inv!31011 _values!1445) e!733523)))

(declare-fun array_inv!31012 (array!84825) Bool)

(assert (=> start!108788 (array_inv!31012 _keys!1741)))

(assert (=> start!108788 tp!99911))

(declare-fun mapNonEmpty!52415 () Bool)

(declare-fun mapRes!52415 () Bool)

(declare-fun tp!99912 () Bool)

(assert (=> mapNonEmpty!52415 (= mapRes!52415 (and tp!99912 e!733524))))

(declare-fun mapKey!52415 () (_ BitVec 32))

(declare-fun mapRest!52415 () (Array (_ BitVec 32) ValueCell!16054))

(declare-fun mapValue!52415 () ValueCell!16054)

(assert (=> mapNonEmpty!52415 (= (arr!40911 _values!1445) (store mapRest!52415 mapKey!52415 mapValue!52415))))

(declare-fun b!1284114 () Bool)

(declare-fun e!733522 () Bool)

(assert (=> b!1284114 (= e!733522 tp_is_empty!33905)))

(declare-fun mapIsEmpty!52415 () Bool)

(assert (=> mapIsEmpty!52415 mapRes!52415))

(declare-fun b!1284115 () Bool)

(declare-fun res!853151 () Bool)

(assert (=> b!1284115 (=> (not res!853151) (not e!733521))))

(assert (=> b!1284115 (= res!853151 (and (= (size!41462 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41461 _keys!1741) (size!41462 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1284116 () Bool)

(assert (=> b!1284116 (= e!733521 (not true))))

(declare-datatypes ((tuple2!21954 0))(
  ( (tuple2!21955 (_1!10987 (_ BitVec 64)) (_2!10987 V!50309)) )
))
(declare-datatypes ((List!29161 0))(
  ( (Nil!29158) (Cons!29157 (h!30366 tuple2!21954) (t!42712 List!29161)) )
))
(declare-datatypes ((ListLongMap!19623 0))(
  ( (ListLongMap!19624 (toList!9827 List!29161)) )
))
(declare-fun lt!576719 () ListLongMap!19623)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!7882 (ListLongMap!19623 (_ BitVec 64)) Bool)

(assert (=> b!1284116 (contains!7882 lt!576719 k!1205)))

(declare-fun minValue!1387 () V!50309)

(declare-datatypes ((Unit!42439 0))(
  ( (Unit!42440) )
))
(declare-fun lt!576720 () Unit!42439)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!21 ((_ BitVec 64) (_ BitVec 64) V!50309 ListLongMap!19623) Unit!42439)

(assert (=> b!1284116 (= lt!576720 (lemmaInListMapAfterAddingDiffThenInBefore!21 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576719))))

(declare-fun zeroValue!1387 () V!50309)

(declare-fun defaultEntry!1448 () Int)

(declare-fun +!4272 (ListLongMap!19623 tuple2!21954) ListLongMap!19623)

(declare-fun getCurrentListMapNoExtraKeys!5983 (array!84825 array!84827 (_ BitVec 32) (_ BitVec 32) V!50309 V!50309 (_ BitVec 32) Int) ListLongMap!19623)

(assert (=> b!1284116 (= lt!576719 (+!4272 (getCurrentListMapNoExtraKeys!5983 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21955 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1284117 () Bool)

(declare-fun res!853150 () Bool)

(assert (=> b!1284117 (=> (not res!853150) (not e!733521))))

(declare-datatypes ((List!29162 0))(
  ( (Nil!29159) (Cons!29158 (h!30367 (_ BitVec 64)) (t!42713 List!29162)) )
))
(declare-fun arrayNoDuplicates!0 (array!84825 (_ BitVec 32) List!29162) Bool)

(assert (=> b!1284117 (= res!853150 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29159))))

(declare-fun b!1284118 () Bool)

(declare-fun res!853144 () Bool)

(assert (=> b!1284118 (=> (not res!853144) (not e!733521))))

(assert (=> b!1284118 (= res!853144 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41461 _keys!1741))))))

(declare-fun b!1284119 () Bool)

(declare-fun res!853145 () Bool)

(assert (=> b!1284119 (=> (not res!853145) (not e!733521))))

(declare-fun getCurrentListMap!4845 (array!84825 array!84827 (_ BitVec 32) (_ BitVec 32) V!50309 V!50309 (_ BitVec 32) Int) ListLongMap!19623)

(assert (=> b!1284119 (= res!853145 (contains!7882 (getCurrentListMap!4845 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1284120 () Bool)

(assert (=> b!1284120 (= e!733523 (and e!733522 mapRes!52415))))

(declare-fun condMapEmpty!52415 () Bool)

(declare-fun mapDefault!52415 () ValueCell!16054)

