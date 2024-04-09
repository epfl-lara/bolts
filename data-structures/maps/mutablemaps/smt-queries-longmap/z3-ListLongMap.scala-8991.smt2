; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108744 () Bool)

(assert start!108744)

(declare-fun b_free!28221 () Bool)

(declare-fun b_next!28221 () Bool)

(assert (=> start!108744 (= b_free!28221 (not b_next!28221))))

(declare-fun tp!99779 () Bool)

(declare-fun b_and!46297 () Bool)

(assert (=> start!108744 (= tp!99779 b_and!46297)))

(declare-fun res!852553 () Bool)

(declare-fun e!733195 () Bool)

(assert (=> start!108744 (=> (not res!852553) (not e!733195))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108744 (= res!852553 (validMask!0 mask!2175))))

(assert (=> start!108744 e!733195))

(declare-fun tp_is_empty!33861 () Bool)

(assert (=> start!108744 tp_is_empty!33861))

(assert (=> start!108744 true))

(declare-datatypes ((V!50251 0))(
  ( (V!50252 (val!17005 Int)) )
))
(declare-datatypes ((ValueCell!16032 0))(
  ( (ValueCellFull!16032 (v!19605 V!50251)) (EmptyCell!16032) )
))
(declare-datatypes ((array!84741 0))(
  ( (array!84742 (arr!40868 (Array (_ BitVec 32) ValueCell!16032)) (size!41419 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84741)

(declare-fun e!733192 () Bool)

(declare-fun array_inv!30983 (array!84741) Bool)

(assert (=> start!108744 (and (array_inv!30983 _values!1445) e!733192)))

(declare-datatypes ((array!84743 0))(
  ( (array!84744 (arr!40869 (Array (_ BitVec 32) (_ BitVec 64))) (size!41420 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84743)

(declare-fun array_inv!30984 (array!84743) Bool)

(assert (=> start!108744 (array_inv!30984 _keys!1741)))

(assert (=> start!108744 tp!99779))

(declare-fun b!1283318 () Bool)

(declare-fun res!852550 () Bool)

(assert (=> b!1283318 (=> (not res!852550) (not e!733195))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1283318 (= res!852550 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41420 _keys!1741))))))

(declare-fun mapNonEmpty!52349 () Bool)

(declare-fun mapRes!52349 () Bool)

(declare-fun tp!99780 () Bool)

(declare-fun e!733191 () Bool)

(assert (=> mapNonEmpty!52349 (= mapRes!52349 (and tp!99780 e!733191))))

(declare-fun mapKey!52349 () (_ BitVec 32))

(declare-fun mapValue!52349 () ValueCell!16032)

(declare-fun mapRest!52349 () (Array (_ BitVec 32) ValueCell!16032))

(assert (=> mapNonEmpty!52349 (= (arr!40868 _values!1445) (store mapRest!52349 mapKey!52349 mapValue!52349))))

(declare-fun b!1283319 () Bool)

(declare-fun res!852557 () Bool)

(assert (=> b!1283319 (=> (not res!852557) (not e!733195))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283319 (= res!852557 (validKeyInArray!0 (select (arr!40869 _keys!1741) from!2144)))))

(declare-fun b!1283320 () Bool)

(assert (=> b!1283320 (= e!733195 (not true))))

(declare-datatypes ((tuple2!21922 0))(
  ( (tuple2!21923 (_1!10971 (_ BitVec 64)) (_2!10971 V!50251)) )
))
(declare-datatypes ((List!29131 0))(
  ( (Nil!29128) (Cons!29127 (h!30336 tuple2!21922) (t!42682 List!29131)) )
))
(declare-datatypes ((ListLongMap!19591 0))(
  ( (ListLongMap!19592 (toList!9811 List!29131)) )
))
(declare-fun lt!576588 () ListLongMap!19591)

(declare-fun contains!7866 (ListLongMap!19591 (_ BitVec 64)) Bool)

(assert (=> b!1283320 (contains!7866 lt!576588 k0!1205)))

(declare-fun minValue!1387 () V!50251)

(declare-datatypes ((Unit!42411 0))(
  ( (Unit!42412) )
))
(declare-fun lt!576587 () Unit!42411)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!7 ((_ BitVec 64) (_ BitVec 64) V!50251 ListLongMap!19591) Unit!42411)

(assert (=> b!1283320 (= lt!576587 (lemmaInListMapAfterAddingDiffThenInBefore!7 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576588))))

(declare-fun zeroValue!1387 () V!50251)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun +!4258 (ListLongMap!19591 tuple2!21922) ListLongMap!19591)

(declare-fun getCurrentListMapNoExtraKeys!5969 (array!84743 array!84741 (_ BitVec 32) (_ BitVec 32) V!50251 V!50251 (_ BitVec 32) Int) ListLongMap!19591)

(assert (=> b!1283320 (= lt!576588 (+!4258 (getCurrentListMapNoExtraKeys!5969 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21923 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1283321 () Bool)

(assert (=> b!1283321 (= e!733191 tp_is_empty!33861)))

(declare-fun b!1283322 () Bool)

(declare-fun e!733193 () Bool)

(assert (=> b!1283322 (= e!733192 (and e!733193 mapRes!52349))))

(declare-fun condMapEmpty!52349 () Bool)

(declare-fun mapDefault!52349 () ValueCell!16032)

(assert (=> b!1283322 (= condMapEmpty!52349 (= (arr!40868 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16032)) mapDefault!52349)))))

(declare-fun b!1283323 () Bool)

(declare-fun res!852552 () Bool)

(assert (=> b!1283323 (=> (not res!852552) (not e!733195))))

(declare-fun getCurrentListMap!4829 (array!84743 array!84741 (_ BitVec 32) (_ BitVec 32) V!50251 V!50251 (_ BitVec 32) Int) ListLongMap!19591)

(assert (=> b!1283323 (= res!852552 (contains!7866 (getCurrentListMap!4829 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1283324 () Bool)

(declare-fun res!852554 () Bool)

(assert (=> b!1283324 (=> (not res!852554) (not e!733195))))

(declare-datatypes ((List!29132 0))(
  ( (Nil!29129) (Cons!29128 (h!30337 (_ BitVec 64)) (t!42683 List!29132)) )
))
(declare-fun arrayNoDuplicates!0 (array!84743 (_ BitVec 32) List!29132) Bool)

(assert (=> b!1283324 (= res!852554 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29129))))

(declare-fun b!1283325 () Bool)

(assert (=> b!1283325 (= e!733193 tp_is_empty!33861)))

(declare-fun b!1283326 () Bool)

(declare-fun res!852555 () Bool)

(assert (=> b!1283326 (=> (not res!852555) (not e!733195))))

(assert (=> b!1283326 (= res!852555 (and (= (size!41419 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41420 _keys!1741) (size!41419 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1283327 () Bool)

(declare-fun res!852558 () Bool)

(assert (=> b!1283327 (=> (not res!852558) (not e!733195))))

(assert (=> b!1283327 (= res!852558 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!52349 () Bool)

(assert (=> mapIsEmpty!52349 mapRes!52349))

(declare-fun b!1283328 () Bool)

(declare-fun res!852551 () Bool)

(assert (=> b!1283328 (=> (not res!852551) (not e!733195))))

(assert (=> b!1283328 (= res!852551 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41420 _keys!1741))))))

(declare-fun b!1283329 () Bool)

(declare-fun res!852556 () Bool)

(assert (=> b!1283329 (=> (not res!852556) (not e!733195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84743 (_ BitVec 32)) Bool)

(assert (=> b!1283329 (= res!852556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!108744 res!852553) b!1283326))

(assert (= (and b!1283326 res!852555) b!1283329))

(assert (= (and b!1283329 res!852556) b!1283324))

(assert (= (and b!1283324 res!852554) b!1283328))

(assert (= (and b!1283328 res!852551) b!1283323))

(assert (= (and b!1283323 res!852552) b!1283318))

(assert (= (and b!1283318 res!852550) b!1283319))

(assert (= (and b!1283319 res!852557) b!1283327))

(assert (= (and b!1283327 res!852558) b!1283320))

(assert (= (and b!1283322 condMapEmpty!52349) mapIsEmpty!52349))

(assert (= (and b!1283322 (not condMapEmpty!52349)) mapNonEmpty!52349))

(get-info :version)

(assert (= (and mapNonEmpty!52349 ((_ is ValueCellFull!16032) mapValue!52349)) b!1283321))

(assert (= (and b!1283322 ((_ is ValueCellFull!16032) mapDefault!52349)) b!1283325))

(assert (= start!108744 b!1283322))

(declare-fun m!1177291 () Bool)

(assert (=> b!1283329 m!1177291))

(declare-fun m!1177293 () Bool)

(assert (=> mapNonEmpty!52349 m!1177293))

(declare-fun m!1177295 () Bool)

(assert (=> b!1283323 m!1177295))

(assert (=> b!1283323 m!1177295))

(declare-fun m!1177297 () Bool)

(assert (=> b!1283323 m!1177297))

(declare-fun m!1177299 () Bool)

(assert (=> b!1283319 m!1177299))

(assert (=> b!1283319 m!1177299))

(declare-fun m!1177301 () Bool)

(assert (=> b!1283319 m!1177301))

(declare-fun m!1177303 () Bool)

(assert (=> b!1283324 m!1177303))

(declare-fun m!1177305 () Bool)

(assert (=> start!108744 m!1177305))

(declare-fun m!1177307 () Bool)

(assert (=> start!108744 m!1177307))

(declare-fun m!1177309 () Bool)

(assert (=> start!108744 m!1177309))

(declare-fun m!1177311 () Bool)

(assert (=> b!1283320 m!1177311))

(declare-fun m!1177313 () Bool)

(assert (=> b!1283320 m!1177313))

(declare-fun m!1177315 () Bool)

(assert (=> b!1283320 m!1177315))

(assert (=> b!1283320 m!1177315))

(declare-fun m!1177317 () Bool)

(assert (=> b!1283320 m!1177317))

(check-sat (not b!1283324) (not mapNonEmpty!52349) b_and!46297 (not b!1283329) (not b_next!28221) (not b!1283319) (not start!108744) (not b!1283323) tp_is_empty!33861 (not b!1283320))
(check-sat b_and!46297 (not b_next!28221))
