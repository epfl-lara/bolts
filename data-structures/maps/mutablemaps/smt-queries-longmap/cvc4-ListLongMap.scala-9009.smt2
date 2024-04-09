; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108854 () Bool)

(assert start!108854)

(declare-fun b_free!28331 () Bool)

(declare-fun b_next!28331 () Bool)

(assert (=> start!108854 (= b_free!28331 (not b_next!28331))))

(declare-fun tp!100110 () Bool)

(declare-fun b_and!46407 () Bool)

(assert (=> start!108854 (= tp!100110 b_and!46407)))

(declare-fun mapNonEmpty!52514 () Bool)

(declare-fun mapRes!52514 () Bool)

(declare-fun tp!100109 () Bool)

(declare-fun e!734019 () Bool)

(assert (=> mapNonEmpty!52514 (= mapRes!52514 (and tp!100109 e!734019))))

(declare-fun mapKey!52514 () (_ BitVec 32))

(declare-datatypes ((V!50397 0))(
  ( (V!50398 (val!17060 Int)) )
))
(declare-datatypes ((ValueCell!16087 0))(
  ( (ValueCellFull!16087 (v!19660 V!50397)) (EmptyCell!16087) )
))
(declare-fun mapRest!52514 () (Array (_ BitVec 32) ValueCell!16087))

(declare-fun mapValue!52514 () ValueCell!16087)

(declare-datatypes ((array!84957 0))(
  ( (array!84958 (arr!40976 (Array (_ BitVec 32) ValueCell!16087)) (size!41527 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84957)

(assert (=> mapNonEmpty!52514 (= (arr!40976 _values!1445) (store mapRest!52514 mapKey!52514 mapValue!52514))))

(declare-fun mapIsEmpty!52514 () Bool)

(assert (=> mapIsEmpty!52514 mapRes!52514))

(declare-fun b!1285002 () Bool)

(declare-fun res!853740 () Bool)

(declare-fun e!734016 () Bool)

(assert (=> b!1285002 (=> (not res!853740) (not e!734016))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!84959 0))(
  ( (array!84960 (arr!40977 (Array (_ BitVec 32) (_ BitVec 64))) (size!41528 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84959)

(assert (=> b!1285002 (= res!853740 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41528 _keys!1741))))))

(declare-fun b!1285003 () Bool)

(declare-fun e!734017 () Bool)

(declare-fun tp_is_empty!33971 () Bool)

(assert (=> b!1285003 (= e!734017 tp_is_empty!33971)))

(declare-fun b!1285004 () Bool)

(declare-fun res!853745 () Bool)

(assert (=> b!1285004 (=> (not res!853745) (not e!734016))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1285004 (= res!853745 (validKeyInArray!0 (select (arr!40977 _keys!1741) from!2144)))))

(declare-fun b!1285005 () Bool)

(declare-fun res!853741 () Bool)

(assert (=> b!1285005 (=> (not res!853741) (not e!734016))))

(declare-fun minValue!1387 () V!50397)

(declare-fun zeroValue!1387 () V!50397)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21998 0))(
  ( (tuple2!21999 (_1!11009 (_ BitVec 64)) (_2!11009 V!50397)) )
))
(declare-datatypes ((List!29211 0))(
  ( (Nil!29208) (Cons!29207 (h!30416 tuple2!21998) (t!42762 List!29211)) )
))
(declare-datatypes ((ListLongMap!19667 0))(
  ( (ListLongMap!19668 (toList!9849 List!29211)) )
))
(declare-fun contains!7904 (ListLongMap!19667 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4865 (array!84959 array!84957 (_ BitVec 32) (_ BitVec 32) V!50397 V!50397 (_ BitVec 32) Int) ListLongMap!19667)

(assert (=> b!1285005 (= res!853741 (contains!7904 (getCurrentListMap!4865 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1285006 () Bool)

(assert (=> b!1285006 (= e!734019 tp_is_empty!33971)))

(declare-fun b!1285007 () Bool)

(assert (=> b!1285007 (= e!734016 false)))

(declare-fun lt!576810 () Bool)

(declare-fun +!4278 (ListLongMap!19667 tuple2!21998) ListLongMap!19667)

(declare-fun getCurrentListMapNoExtraKeys!5989 (array!84959 array!84957 (_ BitVec 32) (_ BitVec 32) V!50397 V!50397 (_ BitVec 32) Int) ListLongMap!19667)

(assert (=> b!1285007 (= lt!576810 (contains!7904 (+!4278 (getCurrentListMapNoExtraKeys!5989 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21999 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun b!1285008 () Bool)

(declare-fun res!853744 () Bool)

(assert (=> b!1285008 (=> (not res!853744) (not e!734016))))

(assert (=> b!1285008 (= res!853744 (and (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!1285009 () Bool)

(declare-fun res!853746 () Bool)

(assert (=> b!1285009 (=> (not res!853746) (not e!734016))))

(assert (=> b!1285009 (= res!853746 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41528 _keys!1741))))))

(declare-fun b!1285010 () Bool)

(declare-fun res!853739 () Bool)

(assert (=> b!1285010 (=> (not res!853739) (not e!734016))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84959 (_ BitVec 32)) Bool)

(assert (=> b!1285010 (= res!853739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1285001 () Bool)

(declare-fun res!853738 () Bool)

(assert (=> b!1285001 (=> (not res!853738) (not e!734016))))

(declare-datatypes ((List!29212 0))(
  ( (Nil!29209) (Cons!29208 (h!30417 (_ BitVec 64)) (t!42763 List!29212)) )
))
(declare-fun arrayNoDuplicates!0 (array!84959 (_ BitVec 32) List!29212) Bool)

(assert (=> b!1285001 (= res!853738 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29209))))

(declare-fun res!853742 () Bool)

(assert (=> start!108854 (=> (not res!853742) (not e!734016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108854 (= res!853742 (validMask!0 mask!2175))))

(assert (=> start!108854 e!734016))

(assert (=> start!108854 tp_is_empty!33971))

(assert (=> start!108854 true))

(declare-fun e!734020 () Bool)

(declare-fun array_inv!31057 (array!84957) Bool)

(assert (=> start!108854 (and (array_inv!31057 _values!1445) e!734020)))

(declare-fun array_inv!31058 (array!84959) Bool)

(assert (=> start!108854 (array_inv!31058 _keys!1741)))

(assert (=> start!108854 tp!100110))

(declare-fun b!1285011 () Bool)

(declare-fun res!853743 () Bool)

(assert (=> b!1285011 (=> (not res!853743) (not e!734016))))

(assert (=> b!1285011 (= res!853743 (and (= (size!41527 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41528 _keys!1741) (size!41527 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1285012 () Bool)

(assert (=> b!1285012 (= e!734020 (and e!734017 mapRes!52514))))

(declare-fun condMapEmpty!52514 () Bool)

(declare-fun mapDefault!52514 () ValueCell!16087)

