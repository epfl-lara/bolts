; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110102 () Bool)

(assert start!110102)

(declare-fun b_free!29265 () Bool)

(declare-fun b_next!29265 () Bool)

(assert (=> start!110102 (= b_free!29265 (not b_next!29265))))

(declare-fun tp!102947 () Bool)

(declare-fun b_and!47439 () Bool)

(assert (=> start!110102 (= tp!102947 b_and!47439)))

(declare-fun b!1303410 () Bool)

(declare-fun res!865801 () Bool)

(declare-fun e!743481 () Bool)

(assert (=> b!1303410 (=> (not res!865801) (not e!743481))))

(declare-datatypes ((array!86787 0))(
  ( (array!86788 (arr!41880 (Array (_ BitVec 32) (_ BitVec 64))) (size!42431 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86787)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86787 (_ BitVec 32)) Bool)

(assert (=> b!1303410 (= res!865801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!865793 () Bool)

(assert (=> start!110102 (=> (not res!865793) (not e!743481))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110102 (= res!865793 (validMask!0 mask!2175))))

(assert (=> start!110102 e!743481))

(declare-fun tp_is_empty!34905 () Bool)

(assert (=> start!110102 tp_is_empty!34905))

(assert (=> start!110102 true))

(declare-datatypes ((V!51643 0))(
  ( (V!51644 (val!17527 Int)) )
))
(declare-datatypes ((ValueCell!16554 0))(
  ( (ValueCellFull!16554 (v!20141 V!51643)) (EmptyCell!16554) )
))
(declare-datatypes ((array!86789 0))(
  ( (array!86790 (arr!41881 (Array (_ BitVec 32) ValueCell!16554)) (size!42432 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86789)

(declare-fun e!743480 () Bool)

(declare-fun array_inv!31671 (array!86789) Bool)

(assert (=> start!110102 (and (array_inv!31671 _values!1445) e!743480)))

(declare-fun array_inv!31672 (array!86787) Bool)

(assert (=> start!110102 (array_inv!31672 _keys!1741)))

(assert (=> start!110102 tp!102947))

(declare-fun b!1303411 () Bool)

(declare-fun res!865800 () Bool)

(assert (=> b!1303411 (=> (not res!865800) (not e!743481))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1303411 (= res!865800 (not (validKeyInArray!0 (select (arr!41880 _keys!1741) from!2144))))))

(declare-fun b!1303412 () Bool)

(declare-fun res!865797 () Bool)

(assert (=> b!1303412 (=> (not res!865797) (not e!743481))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1303412 (= res!865797 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42431 _keys!1741))))))

(declare-fun b!1303413 () Bool)

(declare-fun e!743482 () Bool)

(declare-fun mapRes!53950 () Bool)

(assert (=> b!1303413 (= e!743480 (and e!743482 mapRes!53950))))

(declare-fun condMapEmpty!53950 () Bool)

(declare-fun mapDefault!53950 () ValueCell!16554)

(assert (=> b!1303413 (= condMapEmpty!53950 (= (arr!41881 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16554)) mapDefault!53950)))))

(declare-fun b!1303414 () Bool)

(declare-fun res!865799 () Bool)

(assert (=> b!1303414 (=> (not res!865799) (not e!743481))))

(assert (=> b!1303414 (= res!865799 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42431 _keys!1741))))))

(declare-fun b!1303415 () Bool)

(declare-fun e!743483 () Bool)

(assert (=> b!1303415 (= e!743483 true)))

(assert (=> b!1303415 false))

(declare-fun minValue!1387 () V!51643)

(declare-datatypes ((Unit!43104 0))(
  ( (Unit!43105) )
))
(declare-fun lt!583256 () Unit!43104)

(declare-datatypes ((tuple2!22772 0))(
  ( (tuple2!22773 (_1!11396 (_ BitVec 64)) (_2!11396 V!51643)) )
))
(declare-datatypes ((List!29923 0))(
  ( (Nil!29920) (Cons!29919 (h!31128 tuple2!22772) (t!43524 List!29923)) )
))
(declare-datatypes ((ListLongMap!20441 0))(
  ( (ListLongMap!20442 (toList!10236 List!29923)) )
))
(declare-fun lt!583255 () ListLongMap!20441)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!89 ((_ BitVec 64) (_ BitVec 64) V!51643 ListLongMap!20441) Unit!43104)

(assert (=> b!1303415 (= lt!583256 (lemmaInListMapAfterAddingDiffThenInBefore!89 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!583255))))

(declare-fun lt!583252 () ListLongMap!20441)

(declare-fun contains!8307 (ListLongMap!20441 (_ BitVec 64)) Bool)

(declare-fun +!4456 (ListLongMap!20441 tuple2!22772) ListLongMap!20441)

(assert (=> b!1303415 (not (contains!8307 (+!4456 lt!583252 (tuple2!22773 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!583254 () Unit!43104)

(declare-fun addStillNotContains!480 (ListLongMap!20441 (_ BitVec 64) V!51643 (_ BitVec 64)) Unit!43104)

(assert (=> b!1303415 (= lt!583254 (addStillNotContains!480 lt!583252 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1303415 (not (contains!8307 lt!583255 k0!1205))))

(declare-fun zeroValue!1387 () V!51643)

(assert (=> b!1303415 (= lt!583255 (+!4456 lt!583252 (tuple2!22773 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!583257 () Unit!43104)

(assert (=> b!1303415 (= lt!583257 (addStillNotContains!480 lt!583252 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6170 (array!86787 array!86789 (_ BitVec 32) (_ BitVec 32) V!51643 V!51643 (_ BitVec 32) Int) ListLongMap!20441)

(assert (=> b!1303415 (= lt!583252 (getCurrentListMapNoExtraKeys!6170 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1303416 () Bool)

(declare-fun e!743479 () Bool)

(assert (=> b!1303416 (= e!743479 tp_is_empty!34905)))

(declare-fun b!1303417 () Bool)

(assert (=> b!1303417 (= e!743481 (not e!743483))))

(declare-fun res!865796 () Bool)

(assert (=> b!1303417 (=> res!865796 e!743483)))

(assert (=> b!1303417 (= res!865796 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1303417 (not (contains!8307 (ListLongMap!20442 Nil!29920) k0!1205))))

(declare-fun lt!583253 () Unit!43104)

(declare-fun emptyContainsNothing!222 ((_ BitVec 64)) Unit!43104)

(assert (=> b!1303417 (= lt!583253 (emptyContainsNothing!222 k0!1205))))

(declare-fun b!1303418 () Bool)

(assert (=> b!1303418 (= e!743482 tp_is_empty!34905)))

(declare-fun mapNonEmpty!53950 () Bool)

(declare-fun tp!102946 () Bool)

(assert (=> mapNonEmpty!53950 (= mapRes!53950 (and tp!102946 e!743479))))

(declare-fun mapRest!53950 () (Array (_ BitVec 32) ValueCell!16554))

(declare-fun mapKey!53950 () (_ BitVec 32))

(declare-fun mapValue!53950 () ValueCell!16554)

(assert (=> mapNonEmpty!53950 (= (arr!41881 _values!1445) (store mapRest!53950 mapKey!53950 mapValue!53950))))

(declare-fun b!1303419 () Bool)

(declare-fun res!865795 () Bool)

(assert (=> b!1303419 (=> (not res!865795) (not e!743481))))

(assert (=> b!1303419 (= res!865795 (and (= (size!42432 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42431 _keys!1741) (size!42432 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1303420 () Bool)

(declare-fun res!865794 () Bool)

(assert (=> b!1303420 (=> (not res!865794) (not e!743481))))

(declare-datatypes ((List!29924 0))(
  ( (Nil!29921) (Cons!29920 (h!31129 (_ BitVec 64)) (t!43525 List!29924)) )
))
(declare-fun arrayNoDuplicates!0 (array!86787 (_ BitVec 32) List!29924) Bool)

(assert (=> b!1303420 (= res!865794 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29921))))

(declare-fun b!1303421 () Bool)

(declare-fun res!865798 () Bool)

(assert (=> b!1303421 (=> (not res!865798) (not e!743481))))

(declare-fun getCurrentListMap!5196 (array!86787 array!86789 (_ BitVec 32) (_ BitVec 32) V!51643 V!51643 (_ BitVec 32) Int) ListLongMap!20441)

(assert (=> b!1303421 (= res!865798 (contains!8307 (getCurrentListMap!5196 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapIsEmpty!53950 () Bool)

(assert (=> mapIsEmpty!53950 mapRes!53950))

(assert (= (and start!110102 res!865793) b!1303419))

(assert (= (and b!1303419 res!865795) b!1303410))

(assert (= (and b!1303410 res!865801) b!1303420))

(assert (= (and b!1303420 res!865794) b!1303414))

(assert (= (and b!1303414 res!865799) b!1303421))

(assert (= (and b!1303421 res!865798) b!1303412))

(assert (= (and b!1303412 res!865797) b!1303411))

(assert (= (and b!1303411 res!865800) b!1303417))

(assert (= (and b!1303417 (not res!865796)) b!1303415))

(assert (= (and b!1303413 condMapEmpty!53950) mapIsEmpty!53950))

(assert (= (and b!1303413 (not condMapEmpty!53950)) mapNonEmpty!53950))

(get-info :version)

(assert (= (and mapNonEmpty!53950 ((_ is ValueCellFull!16554) mapValue!53950)) b!1303416))

(assert (= (and b!1303413 ((_ is ValueCellFull!16554) mapDefault!53950)) b!1303418))

(assert (= start!110102 b!1303413))

(declare-fun m!1194361 () Bool)

(assert (=> b!1303421 m!1194361))

(assert (=> b!1303421 m!1194361))

(declare-fun m!1194363 () Bool)

(assert (=> b!1303421 m!1194363))

(declare-fun m!1194365 () Bool)

(assert (=> b!1303410 m!1194365))

(declare-fun m!1194367 () Bool)

(assert (=> b!1303417 m!1194367))

(declare-fun m!1194369 () Bool)

(assert (=> b!1303417 m!1194369))

(declare-fun m!1194371 () Bool)

(assert (=> b!1303415 m!1194371))

(declare-fun m!1194373 () Bool)

(assert (=> b!1303415 m!1194373))

(declare-fun m!1194375 () Bool)

(assert (=> b!1303415 m!1194375))

(declare-fun m!1194377 () Bool)

(assert (=> b!1303415 m!1194377))

(declare-fun m!1194379 () Bool)

(assert (=> b!1303415 m!1194379))

(declare-fun m!1194381 () Bool)

(assert (=> b!1303415 m!1194381))

(declare-fun m!1194383 () Bool)

(assert (=> b!1303415 m!1194383))

(assert (=> b!1303415 m!1194379))

(declare-fun m!1194385 () Bool)

(assert (=> b!1303415 m!1194385))

(declare-fun m!1194387 () Bool)

(assert (=> b!1303420 m!1194387))

(declare-fun m!1194389 () Bool)

(assert (=> start!110102 m!1194389))

(declare-fun m!1194391 () Bool)

(assert (=> start!110102 m!1194391))

(declare-fun m!1194393 () Bool)

(assert (=> start!110102 m!1194393))

(declare-fun m!1194395 () Bool)

(assert (=> mapNonEmpty!53950 m!1194395))

(declare-fun m!1194397 () Bool)

(assert (=> b!1303411 m!1194397))

(assert (=> b!1303411 m!1194397))

(declare-fun m!1194399 () Bool)

(assert (=> b!1303411 m!1194399))

(check-sat (not b!1303417) tp_is_empty!34905 (not b!1303421) (not b!1303411) (not b!1303415) b_and!47439 (not b!1303410) (not mapNonEmpty!53950) (not b_next!29265) (not b!1303420) (not start!110102))
(check-sat b_and!47439 (not b_next!29265))
