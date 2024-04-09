; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111748 () Bool)

(assert start!111748)

(declare-fun b_free!30369 () Bool)

(declare-fun b_next!30369 () Bool)

(assert (=> start!111748 (= b_free!30369 (not b_next!30369))))

(declare-fun tp!106583 () Bool)

(declare-fun b_and!48907 () Bool)

(assert (=> start!111748 (= tp!106583 b_and!48907)))

(declare-fun b!1323574 () Bool)

(declare-fun res!878629 () Bool)

(declare-fun e!754579 () Bool)

(assert (=> b!1323574 (=> (not res!878629) (not e!754579))))

(declare-datatypes ((array!89253 0))(
  ( (array!89254 (arr!43096 (Array (_ BitVec 32) (_ BitVec 64))) (size!43647 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89253)

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53355 0))(
  ( (V!53356 (val!18169 Int)) )
))
(declare-datatypes ((ValueCell!17196 0))(
  ( (ValueCellFull!17196 (v!20797 V!53355)) (EmptyCell!17196) )
))
(declare-datatypes ((array!89255 0))(
  ( (array!89256 (arr!43097 (Array (_ BitVec 32) ValueCell!17196)) (size!43648 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89255)

(declare-fun minValue!1279 () V!53355)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53355)

(declare-datatypes ((tuple2!23574 0))(
  ( (tuple2!23575 (_1!11797 (_ BitVec 64)) (_2!11797 V!53355)) )
))
(declare-datatypes ((List!30747 0))(
  ( (Nil!30744) (Cons!30743 (h!31952 tuple2!23574) (t!44672 List!30747)) )
))
(declare-datatypes ((ListLongMap!21243 0))(
  ( (ListLongMap!21244 (toList!10637 List!30747)) )
))
(declare-fun contains!8728 (ListLongMap!21243 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5574 (array!89253 array!89255 (_ BitVec 32) (_ BitVec 32) V!53355 V!53355 (_ BitVec 32) Int) ListLongMap!21243)

(assert (=> b!1323574 (= res!878629 (contains!8728 (getCurrentListMap!5574 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun mapIsEmpty!55931 () Bool)

(declare-fun mapRes!55931 () Bool)

(assert (=> mapIsEmpty!55931 mapRes!55931))

(declare-fun b!1323575 () Bool)

(assert (=> b!1323575 (= e!754579 (not true))))

(declare-fun lt!589197 () ListLongMap!21243)

(declare-fun +!4584 (ListLongMap!21243 tuple2!23574) ListLongMap!21243)

(assert (=> b!1323575 (contains!8728 (+!4584 lt!589197 (tuple2!23575 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k0!1164)))

(declare-datatypes ((Unit!43568 0))(
  ( (Unit!43569) )
))
(declare-fun lt!589194 () Unit!43568)

(declare-fun addStillContains!1165 (ListLongMap!21243 (_ BitVec 64) V!53355 (_ BitVec 64)) Unit!43568)

(assert (=> b!1323575 (= lt!589194 (addStillContains!1165 lt!589197 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k0!1164))))

(assert (=> b!1323575 (contains!8728 lt!589197 k0!1164)))

(declare-fun lt!589198 () ListLongMap!21243)

(declare-fun lt!589195 () tuple2!23574)

(assert (=> b!1323575 (= lt!589197 (+!4584 lt!589198 lt!589195))))

(declare-fun lt!589190 () Unit!43568)

(assert (=> b!1323575 (= lt!589190 (addStillContains!1165 lt!589198 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1323575 (contains!8728 lt!589198 k0!1164)))

(declare-fun lt!589189 () V!53355)

(declare-fun lt!589191 () Unit!43568)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!199 ((_ BitVec 64) (_ BitVec 64) V!53355 ListLongMap!21243) Unit!43568)

(assert (=> b!1323575 (= lt!589191 (lemmaInListMapAfterAddingDiffThenInBefore!199 k0!1164 (select (arr!43096 _keys!1609) from!2000) lt!589189 lt!589198))))

(declare-fun lt!589196 () ListLongMap!21243)

(assert (=> b!1323575 (contains!8728 lt!589196 k0!1164)))

(declare-fun lt!589188 () Unit!43568)

(assert (=> b!1323575 (= lt!589188 (lemmaInListMapAfterAddingDiffThenInBefore!199 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!589196))))

(declare-fun lt!589192 () ListLongMap!21243)

(assert (=> b!1323575 (contains!8728 lt!589192 k0!1164)))

(declare-fun lt!589193 () Unit!43568)

(assert (=> b!1323575 (= lt!589193 (lemmaInListMapAfterAddingDiffThenInBefore!199 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589192))))

(assert (=> b!1323575 (= lt!589192 (+!4584 lt!589196 lt!589195))))

(assert (=> b!1323575 (= lt!589195 (tuple2!23575 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1323575 (= lt!589196 (+!4584 lt!589198 (tuple2!23575 (select (arr!43096 _keys!1609) from!2000) lt!589189)))))

(declare-fun get!21754 (ValueCell!17196 V!53355) V!53355)

(declare-fun dynLambda!3621 (Int (_ BitVec 64)) V!53355)

(assert (=> b!1323575 (= lt!589189 (get!21754 (select (arr!43097 _values!1337) from!2000) (dynLambda!3621 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6299 (array!89253 array!89255 (_ BitVec 32) (_ BitVec 32) V!53355 V!53355 (_ BitVec 32) Int) ListLongMap!21243)

(assert (=> b!1323575 (= lt!589198 (getCurrentListMapNoExtraKeys!6299 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1323576 () Bool)

(declare-fun res!878625 () Bool)

(assert (=> b!1323576 (=> (not res!878625) (not e!754579))))

(assert (=> b!1323576 (= res!878625 (and (= (size!43648 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43647 _keys!1609) (size!43648 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!878627 () Bool)

(assert (=> start!111748 (=> (not res!878627) (not e!754579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111748 (= res!878627 (validMask!0 mask!2019))))

(assert (=> start!111748 e!754579))

(declare-fun array_inv!32489 (array!89253) Bool)

(assert (=> start!111748 (array_inv!32489 _keys!1609)))

(assert (=> start!111748 true))

(declare-fun tp_is_empty!36189 () Bool)

(assert (=> start!111748 tp_is_empty!36189))

(declare-fun e!754582 () Bool)

(declare-fun array_inv!32490 (array!89255) Bool)

(assert (=> start!111748 (and (array_inv!32490 _values!1337) e!754582)))

(assert (=> start!111748 tp!106583))

(declare-fun b!1323577 () Bool)

(declare-fun e!754581 () Bool)

(assert (=> b!1323577 (= e!754581 tp_is_empty!36189)))

(declare-fun b!1323578 () Bool)

(declare-fun res!878632 () Bool)

(assert (=> b!1323578 (=> (not res!878632) (not e!754579))))

(assert (=> b!1323578 (= res!878632 (not (= (select (arr!43096 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1323579 () Bool)

(declare-fun res!878630 () Bool)

(assert (=> b!1323579 (=> (not res!878630) (not e!754579))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1323579 (= res!878630 (validKeyInArray!0 (select (arr!43096 _keys!1609) from!2000)))))

(declare-fun b!1323580 () Bool)

(assert (=> b!1323580 (= e!754582 (and e!754581 mapRes!55931))))

(declare-fun condMapEmpty!55931 () Bool)

(declare-fun mapDefault!55931 () ValueCell!17196)

(assert (=> b!1323580 (= condMapEmpty!55931 (= (arr!43097 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17196)) mapDefault!55931)))))

(declare-fun b!1323581 () Bool)

(declare-fun res!878628 () Bool)

(assert (=> b!1323581 (=> (not res!878628) (not e!754579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89253 (_ BitVec 32)) Bool)

(assert (=> b!1323581 (= res!878628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1323582 () Bool)

(declare-fun res!878626 () Bool)

(assert (=> b!1323582 (=> (not res!878626) (not e!754579))))

(declare-datatypes ((List!30748 0))(
  ( (Nil!30745) (Cons!30744 (h!31953 (_ BitVec 64)) (t!44673 List!30748)) )
))
(declare-fun arrayNoDuplicates!0 (array!89253 (_ BitVec 32) List!30748) Bool)

(assert (=> b!1323582 (= res!878626 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30745))))

(declare-fun mapNonEmpty!55931 () Bool)

(declare-fun tp!106584 () Bool)

(declare-fun e!754580 () Bool)

(assert (=> mapNonEmpty!55931 (= mapRes!55931 (and tp!106584 e!754580))))

(declare-fun mapRest!55931 () (Array (_ BitVec 32) ValueCell!17196))

(declare-fun mapValue!55931 () ValueCell!17196)

(declare-fun mapKey!55931 () (_ BitVec 32))

(assert (=> mapNonEmpty!55931 (= (arr!43097 _values!1337) (store mapRest!55931 mapKey!55931 mapValue!55931))))

(declare-fun b!1323583 () Bool)

(declare-fun res!878631 () Bool)

(assert (=> b!1323583 (=> (not res!878631) (not e!754579))))

(assert (=> b!1323583 (= res!878631 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43647 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1323584 () Bool)

(assert (=> b!1323584 (= e!754580 tp_is_empty!36189)))

(assert (= (and start!111748 res!878627) b!1323576))

(assert (= (and b!1323576 res!878625) b!1323581))

(assert (= (and b!1323581 res!878628) b!1323582))

(assert (= (and b!1323582 res!878626) b!1323583))

(assert (= (and b!1323583 res!878631) b!1323574))

(assert (= (and b!1323574 res!878629) b!1323578))

(assert (= (and b!1323578 res!878632) b!1323579))

(assert (= (and b!1323579 res!878630) b!1323575))

(assert (= (and b!1323580 condMapEmpty!55931) mapIsEmpty!55931))

(assert (= (and b!1323580 (not condMapEmpty!55931)) mapNonEmpty!55931))

(get-info :version)

(assert (= (and mapNonEmpty!55931 ((_ is ValueCellFull!17196) mapValue!55931)) b!1323584))

(assert (= (and b!1323580 ((_ is ValueCellFull!17196) mapDefault!55931)) b!1323577))

(assert (= start!111748 b!1323580))

(declare-fun b_lambda!23705 () Bool)

(assert (=> (not b_lambda!23705) (not b!1323575)))

(declare-fun t!44671 () Bool)

(declare-fun tb!11729 () Bool)

(assert (=> (and start!111748 (= defaultEntry!1340 defaultEntry!1340) t!44671) tb!11729))

(declare-fun result!24505 () Bool)

(assert (=> tb!11729 (= result!24505 tp_is_empty!36189)))

(assert (=> b!1323575 t!44671))

(declare-fun b_and!48909 () Bool)

(assert (= b_and!48907 (and (=> t!44671 result!24505) b_and!48909)))

(declare-fun m!1212563 () Bool)

(assert (=> start!111748 m!1212563))

(declare-fun m!1212565 () Bool)

(assert (=> start!111748 m!1212565))

(declare-fun m!1212567 () Bool)

(assert (=> start!111748 m!1212567))

(declare-fun m!1212569 () Bool)

(assert (=> b!1323574 m!1212569))

(assert (=> b!1323574 m!1212569))

(declare-fun m!1212571 () Bool)

(assert (=> b!1323574 m!1212571))

(declare-fun m!1212573 () Bool)

(assert (=> b!1323575 m!1212573))

(declare-fun m!1212575 () Bool)

(assert (=> b!1323575 m!1212575))

(declare-fun m!1212577 () Bool)

(assert (=> b!1323575 m!1212577))

(declare-fun m!1212579 () Bool)

(assert (=> b!1323575 m!1212579))

(declare-fun m!1212581 () Bool)

(assert (=> b!1323575 m!1212581))

(declare-fun m!1212583 () Bool)

(assert (=> b!1323575 m!1212583))

(declare-fun m!1212585 () Bool)

(assert (=> b!1323575 m!1212585))

(declare-fun m!1212587 () Bool)

(assert (=> b!1323575 m!1212587))

(declare-fun m!1212589 () Bool)

(assert (=> b!1323575 m!1212589))

(assert (=> b!1323575 m!1212585))

(assert (=> b!1323575 m!1212581))

(declare-fun m!1212591 () Bool)

(assert (=> b!1323575 m!1212591))

(declare-fun m!1212593 () Bool)

(assert (=> b!1323575 m!1212593))

(declare-fun m!1212595 () Bool)

(assert (=> b!1323575 m!1212595))

(declare-fun m!1212597 () Bool)

(assert (=> b!1323575 m!1212597))

(assert (=> b!1323575 m!1212577))

(declare-fun m!1212599 () Bool)

(assert (=> b!1323575 m!1212599))

(declare-fun m!1212601 () Bool)

(assert (=> b!1323575 m!1212601))

(declare-fun m!1212603 () Bool)

(assert (=> b!1323575 m!1212603))

(assert (=> b!1323575 m!1212593))

(declare-fun m!1212605 () Bool)

(assert (=> b!1323575 m!1212605))

(declare-fun m!1212607 () Bool)

(assert (=> b!1323575 m!1212607))

(declare-fun m!1212609 () Bool)

(assert (=> b!1323575 m!1212609))

(declare-fun m!1212611 () Bool)

(assert (=> mapNonEmpty!55931 m!1212611))

(declare-fun m!1212613 () Bool)

(assert (=> b!1323581 m!1212613))

(assert (=> b!1323578 m!1212593))

(assert (=> b!1323579 m!1212593))

(assert (=> b!1323579 m!1212593))

(declare-fun m!1212615 () Bool)

(assert (=> b!1323579 m!1212615))

(declare-fun m!1212617 () Bool)

(assert (=> b!1323582 m!1212617))

(check-sat (not b!1323581) (not b!1323575) (not b_next!30369) b_and!48909 (not b!1323579) (not b!1323574) (not mapNonEmpty!55931) (not b_lambda!23705) tp_is_empty!36189 (not b!1323582) (not start!111748))
(check-sat b_and!48909 (not b_next!30369))
