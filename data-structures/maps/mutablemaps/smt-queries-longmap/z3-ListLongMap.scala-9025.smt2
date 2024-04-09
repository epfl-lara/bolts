; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108948 () Bool)

(assert start!108948)

(declare-fun b_free!28425 () Bool)

(declare-fun b_next!28425 () Bool)

(assert (=> start!108948 (= b_free!28425 (not b_next!28425))))

(declare-fun tp!100392 () Bool)

(declare-fun b_and!46519 () Bool)

(assert (=> start!108948 (= tp!100392 b_and!46519)))

(declare-fun b!1286646 () Bool)

(declare-fun res!854698 () Bool)

(declare-fun e!734876 () Bool)

(assert (=> b!1286646 (=> (not res!854698) (not e!734876))))

(declare-datatypes ((array!85137 0))(
  ( (array!85138 (arr!41066 (Array (_ BitVec 32) (_ BitVec 64))) (size!41617 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85137)

(declare-datatypes ((List!29279 0))(
  ( (Nil!29276) (Cons!29275 (h!30484 (_ BitVec 64)) (t!42848 List!29279)) )
))
(declare-fun arrayNoDuplicates!0 (array!85137 (_ BitVec 32) List!29279) Bool)

(assert (=> b!1286646 (= res!854698 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29276))))

(declare-fun res!854699 () Bool)

(assert (=> start!108948 (=> (not res!854699) (not e!734876))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108948 (= res!854699 (validMask!0 mask!2175))))

(assert (=> start!108948 e!734876))

(declare-fun tp_is_empty!34065 () Bool)

(assert (=> start!108948 tp_is_empty!34065))

(assert (=> start!108948 true))

(declare-datatypes ((V!50523 0))(
  ( (V!50524 (val!17107 Int)) )
))
(declare-datatypes ((ValueCell!16134 0))(
  ( (ValueCellFull!16134 (v!19707 V!50523)) (EmptyCell!16134) )
))
(declare-datatypes ((array!85139 0))(
  ( (array!85140 (arr!41067 (Array (_ BitVec 32) ValueCell!16134)) (size!41618 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85139)

(declare-fun e!734873 () Bool)

(declare-fun array_inv!31119 (array!85139) Bool)

(assert (=> start!108948 (and (array_inv!31119 _values!1445) e!734873)))

(declare-fun array_inv!31120 (array!85137) Bool)

(assert (=> start!108948 (array_inv!31120 _keys!1741)))

(assert (=> start!108948 tp!100392))

(declare-fun bm!63017 () Bool)

(declare-datatypes ((Unit!42471 0))(
  ( (Unit!42472) )
))
(declare-fun call!63021 () Unit!42471)

(declare-fun call!63024 () Unit!42471)

(assert (=> bm!63017 (= call!63021 call!63024)))

(declare-fun b!1286647 () Bool)

(declare-fun res!854697 () Bool)

(assert (=> b!1286647 (=> (not res!854697) (not e!734876))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1286647 (= res!854697 (and (= (size!41618 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41617 _keys!1741) (size!41618 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!52655 () Bool)

(declare-fun mapRes!52655 () Bool)

(assert (=> mapIsEmpty!52655 mapRes!52655))

(declare-fun bm!63018 () Bool)

(declare-fun call!63023 () Bool)

(declare-datatypes ((tuple2!22076 0))(
  ( (tuple2!22077 (_1!11048 (_ BitVec 64)) (_2!11048 V!50523)) )
))
(declare-datatypes ((List!29280 0))(
  ( (Nil!29277) (Cons!29276 (h!30485 tuple2!22076) (t!42849 List!29280)) )
))
(declare-datatypes ((ListLongMap!19745 0))(
  ( (ListLongMap!19746 (toList!9888 List!29280)) )
))
(declare-fun lt!577411 () ListLongMap!19745)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun c!124171 () Bool)

(declare-fun c!124169 () Bool)

(declare-fun lt!577409 () ListLongMap!19745)

(declare-fun lt!577406 () ListLongMap!19745)

(declare-fun contains!7942 (ListLongMap!19745 (_ BitVec 64)) Bool)

(assert (=> bm!63018 (= call!63023 (contains!7942 (ite c!124171 lt!577409 (ite c!124169 lt!577411 lt!577406)) k0!1205))))

(declare-fun b!1286648 () Bool)

(declare-fun e!734878 () Unit!42471)

(declare-fun lt!577408 () Unit!42471)

(assert (=> b!1286648 (= e!734878 lt!577408)))

(declare-fun call!63025 () ListLongMap!19745)

(assert (=> b!1286648 (= lt!577409 call!63025)))

(declare-fun lt!577407 () ListLongMap!19745)

(declare-fun zeroValue!1387 () V!50523)

(declare-fun +!4293 (ListLongMap!19745 tuple2!22076) ListLongMap!19745)

(assert (=> b!1286648 (= lt!577407 (+!4293 lt!577409 (tuple2!22077 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun minValue!1387 () V!50523)

(declare-fun lt!577413 () Unit!42471)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!33 ((_ BitVec 64) (_ BitVec 64) V!50523 ListLongMap!19745) Unit!42471)

(assert (=> b!1286648 (= lt!577413 (lemmaInListMapAfterAddingDiffThenInBefore!33 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!577407))))

(assert (=> b!1286648 (contains!7942 lt!577407 k0!1205)))

(assert (=> b!1286648 (= lt!577408 call!63024)))

(assert (=> b!1286648 call!63023))

(declare-fun b!1286649 () Bool)

(declare-fun e!734874 () Bool)

(assert (=> b!1286649 (= e!734874 tp_is_empty!34065)))

(declare-fun b!1286650 () Bool)

(declare-fun e!734872 () Unit!42471)

(declare-fun Unit!42473 () Unit!42471)

(assert (=> b!1286650 (= e!734872 Unit!42473)))

(declare-fun b!1286651 () Bool)

(declare-fun lt!577414 () Unit!42471)

(assert (=> b!1286651 (= e!734872 lt!577414)))

(declare-fun call!63020 () ListLongMap!19745)

(assert (=> b!1286651 (= lt!577406 call!63020)))

(assert (=> b!1286651 (= lt!577414 call!63021)))

(declare-fun call!63022 () Bool)

(assert (=> b!1286651 call!63022))

(declare-fun b!1286652 () Bool)

(declare-fun c!124170 () Bool)

(declare-fun lt!577410 () Bool)

(assert (=> b!1286652 (= c!124170 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!577410))))

(declare-fun e!734877 () Unit!42471)

(assert (=> b!1286652 (= e!734877 e!734872)))

(declare-fun b!1286653 () Bool)

(assert (=> b!1286653 call!63022))

(declare-fun lt!577416 () Unit!42471)

(assert (=> b!1286653 (= lt!577416 call!63021)))

(assert (=> b!1286653 (= lt!577411 call!63020)))

(assert (=> b!1286653 (= e!734877 lt!577416)))

(declare-fun b!1286654 () Bool)

(assert (=> b!1286654 (= e!734876 (not true))))

(assert (=> b!1286654 (not (contains!7942 (ListLongMap!19746 Nil!29277) k0!1205))))

(declare-fun lt!577415 () Unit!42471)

(declare-fun emptyContainsNothing!10 ((_ BitVec 64)) Unit!42471)

(assert (=> b!1286654 (= lt!577415 (emptyContainsNothing!10 k0!1205))))

(declare-fun lt!577412 () Unit!42471)

(assert (=> b!1286654 (= lt!577412 e!734878)))

(assert (=> b!1286654 (= c!124171 (and (not lt!577410) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1286654 (= lt!577410 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun bm!63019 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6004 (array!85137 array!85139 (_ BitVec 32) (_ BitVec 32) V!50523 V!50523 (_ BitVec 32) Int) ListLongMap!19745)

(assert (=> bm!63019 (= call!63025 (getCurrentListMapNoExtraKeys!6004 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1286655 () Bool)

(declare-fun res!854696 () Bool)

(assert (=> b!1286655 (=> (not res!854696) (not e!734876))))

(assert (=> b!1286655 (= res!854696 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41617 _keys!1741))))))

(declare-fun bm!63020 () Bool)

(assert (=> bm!63020 (= call!63022 call!63023)))

(declare-fun b!1286656 () Bool)

(declare-fun e!734875 () Bool)

(assert (=> b!1286656 (= e!734873 (and e!734875 mapRes!52655))))

(declare-fun condMapEmpty!52655 () Bool)

(declare-fun mapDefault!52655 () ValueCell!16134)

(assert (=> b!1286656 (= condMapEmpty!52655 (= (arr!41067 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16134)) mapDefault!52655)))))

(declare-fun bm!63021 () Bool)

(assert (=> bm!63021 (= call!63020 call!63025)))

(declare-fun b!1286657 () Bool)

(declare-fun res!854703 () Bool)

(assert (=> b!1286657 (=> (not res!854703) (not e!734876))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1286657 (= res!854703 (validKeyInArray!0 (select (arr!41066 _keys!1741) from!2144)))))

(declare-fun b!1286658 () Bool)

(declare-fun res!854701 () Bool)

(assert (=> b!1286658 (=> (not res!854701) (not e!734876))))

(declare-fun getCurrentListMap!4898 (array!85137 array!85139 (_ BitVec 32) (_ BitVec 32) V!50523 V!50523 (_ BitVec 32) Int) ListLongMap!19745)

(assert (=> b!1286658 (= res!854701 (contains!7942 (getCurrentListMap!4898 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun bm!63022 () Bool)

(assert (=> bm!63022 (= call!63024 (lemmaInListMapAfterAddingDiffThenInBefore!33 k0!1205 (ite (or c!124171 c!124169) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124171 c!124169) zeroValue!1387 minValue!1387) (ite c!124171 lt!577409 (ite c!124169 lt!577411 lt!577406))))))

(declare-fun b!1286659 () Bool)

(assert (=> b!1286659 (= e!734875 tp_is_empty!34065)))

(declare-fun b!1286660 () Bool)

(declare-fun res!854700 () Bool)

(assert (=> b!1286660 (=> (not res!854700) (not e!734876))))

(assert (=> b!1286660 (= res!854700 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41617 _keys!1741))))))

(declare-fun b!1286661 () Bool)

(assert (=> b!1286661 (= e!734878 e!734877)))

(assert (=> b!1286661 (= c!124169 (and (not lt!577410) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!52655 () Bool)

(declare-fun tp!100391 () Bool)

(assert (=> mapNonEmpty!52655 (= mapRes!52655 (and tp!100391 e!734874))))

(declare-fun mapKey!52655 () (_ BitVec 32))

(declare-fun mapValue!52655 () ValueCell!16134)

(declare-fun mapRest!52655 () (Array (_ BitVec 32) ValueCell!16134))

(assert (=> mapNonEmpty!52655 (= (arr!41067 _values!1445) (store mapRest!52655 mapKey!52655 mapValue!52655))))

(declare-fun b!1286662 () Bool)

(declare-fun res!854702 () Bool)

(assert (=> b!1286662 (=> (not res!854702) (not e!734876))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85137 (_ BitVec 32)) Bool)

(assert (=> b!1286662 (= res!854702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!108948 res!854699) b!1286647))

(assert (= (and b!1286647 res!854697) b!1286662))

(assert (= (and b!1286662 res!854702) b!1286646))

(assert (= (and b!1286646 res!854698) b!1286660))

(assert (= (and b!1286660 res!854700) b!1286658))

(assert (= (and b!1286658 res!854701) b!1286655))

(assert (= (and b!1286655 res!854696) b!1286657))

(assert (= (and b!1286657 res!854703) b!1286654))

(assert (= (and b!1286654 c!124171) b!1286648))

(assert (= (and b!1286654 (not c!124171)) b!1286661))

(assert (= (and b!1286661 c!124169) b!1286653))

(assert (= (and b!1286661 (not c!124169)) b!1286652))

(assert (= (and b!1286652 c!124170) b!1286651))

(assert (= (and b!1286652 (not c!124170)) b!1286650))

(assert (= (or b!1286653 b!1286651) bm!63021))

(assert (= (or b!1286653 b!1286651) bm!63017))

(assert (= (or b!1286653 b!1286651) bm!63020))

(assert (= (or b!1286648 bm!63021) bm!63019))

(assert (= (or b!1286648 bm!63017) bm!63022))

(assert (= (or b!1286648 bm!63020) bm!63018))

(assert (= (and b!1286656 condMapEmpty!52655) mapIsEmpty!52655))

(assert (= (and b!1286656 (not condMapEmpty!52655)) mapNonEmpty!52655))

(get-info :version)

(assert (= (and mapNonEmpty!52655 ((_ is ValueCellFull!16134) mapValue!52655)) b!1286649))

(assert (= (and b!1286656 ((_ is ValueCellFull!16134) mapDefault!52655)) b!1286659))

(assert (= start!108948 b!1286656))

(declare-fun m!1179711 () Bool)

(assert (=> bm!63019 m!1179711))

(declare-fun m!1179713 () Bool)

(assert (=> b!1286657 m!1179713))

(assert (=> b!1286657 m!1179713))

(declare-fun m!1179715 () Bool)

(assert (=> b!1286657 m!1179715))

(declare-fun m!1179717 () Bool)

(assert (=> b!1286648 m!1179717))

(declare-fun m!1179719 () Bool)

(assert (=> b!1286648 m!1179719))

(declare-fun m!1179721 () Bool)

(assert (=> b!1286648 m!1179721))

(declare-fun m!1179723 () Bool)

(assert (=> mapNonEmpty!52655 m!1179723))

(declare-fun m!1179725 () Bool)

(assert (=> start!108948 m!1179725))

(declare-fun m!1179727 () Bool)

(assert (=> start!108948 m!1179727))

(declare-fun m!1179729 () Bool)

(assert (=> start!108948 m!1179729))

(declare-fun m!1179731 () Bool)

(assert (=> b!1286646 m!1179731))

(declare-fun m!1179733 () Bool)

(assert (=> b!1286658 m!1179733))

(assert (=> b!1286658 m!1179733))

(declare-fun m!1179735 () Bool)

(assert (=> b!1286658 m!1179735))

(declare-fun m!1179737 () Bool)

(assert (=> b!1286654 m!1179737))

(declare-fun m!1179739 () Bool)

(assert (=> b!1286654 m!1179739))

(declare-fun m!1179741 () Bool)

(assert (=> b!1286662 m!1179741))

(declare-fun m!1179743 () Bool)

(assert (=> bm!63018 m!1179743))

(declare-fun m!1179745 () Bool)

(assert (=> bm!63022 m!1179745))

(check-sat tp_is_empty!34065 (not b!1286662) (not b!1286658) (not bm!63019) (not start!108948) (not b_next!28425) (not b!1286654) (not bm!63018) (not b!1286657) (not mapNonEmpty!52655) (not b!1286646) (not b!1286648) b_and!46519 (not bm!63022))
(check-sat b_and!46519 (not b_next!28425))
