; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111508 () Bool)

(assert start!111508)

(declare-fun b_free!30129 () Bool)

(declare-fun b_next!30129 () Bool)

(assert (=> start!111508 (= b_free!30129 (not b_next!30129))))

(declare-fun tp!105863 () Bool)

(declare-fun b_and!48427 () Bool)

(assert (=> start!111508 (= tp!105863 b_and!48427)))

(declare-fun b!1319374 () Bool)

(declare-fun res!875749 () Bool)

(declare-fun e!752780 () Bool)

(assert (=> b!1319374 (=> (not res!875749) (not e!752780))))

(declare-datatypes ((array!88797 0))(
  ( (array!88798 (arr!42868 (Array (_ BitVec 32) (_ BitVec 64))) (size!43419 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88797)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88797 (_ BitVec 32)) Bool)

(assert (=> b!1319374 (= res!875749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!875748 () Bool)

(assert (=> start!111508 (=> (not res!875748) (not e!752780))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111508 (= res!875748 (validMask!0 mask!2019))))

(assert (=> start!111508 e!752780))

(declare-fun array_inv!32319 (array!88797) Bool)

(assert (=> start!111508 (array_inv!32319 _keys!1609)))

(assert (=> start!111508 true))

(declare-fun tp_is_empty!35949 () Bool)

(assert (=> start!111508 tp_is_empty!35949))

(declare-datatypes ((V!53035 0))(
  ( (V!53036 (val!18049 Int)) )
))
(declare-datatypes ((ValueCell!17076 0))(
  ( (ValueCellFull!17076 (v!20677 V!53035)) (EmptyCell!17076) )
))
(declare-datatypes ((array!88799 0))(
  ( (array!88800 (arr!42869 (Array (_ BitVec 32) ValueCell!17076)) (size!43420 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88799)

(declare-fun e!752781 () Bool)

(declare-fun array_inv!32320 (array!88799) Bool)

(assert (=> start!111508 (and (array_inv!32320 _values!1337) e!752781)))

(assert (=> start!111508 tp!105863))

(declare-fun b!1319375 () Bool)

(declare-fun e!752782 () Bool)

(assert (=> b!1319375 (= e!752782 tp_is_empty!35949)))

(declare-fun b!1319376 () Bool)

(declare-fun res!875747 () Bool)

(assert (=> b!1319376 (=> (not res!875747) (not e!752780))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1319376 (= res!875747 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43419 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1319377 () Bool)

(declare-fun res!875745 () Bool)

(assert (=> b!1319377 (=> (not res!875745) (not e!752780))))

(assert (=> b!1319377 (= res!875745 (and (= (size!43420 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43419 _keys!1609) (size!43420 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1319378 () Bool)

(declare-fun e!752779 () Bool)

(assert (=> b!1319378 (= e!752779 tp_is_empty!35949)))

(declare-fun mapNonEmpty!55571 () Bool)

(declare-fun mapRes!55571 () Bool)

(declare-fun tp!105864 () Bool)

(assert (=> mapNonEmpty!55571 (= mapRes!55571 (and tp!105864 e!752779))))

(declare-fun mapKey!55571 () (_ BitVec 32))

(declare-fun mapRest!55571 () (Array (_ BitVec 32) ValueCell!17076))

(declare-fun mapValue!55571 () ValueCell!17076)

(assert (=> mapNonEmpty!55571 (= (arr!42869 _values!1337) (store mapRest!55571 mapKey!55571 mapValue!55571))))

(declare-fun b!1319379 () Bool)

(declare-fun res!875752 () Bool)

(assert (=> b!1319379 (=> (not res!875752) (not e!752780))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319379 (= res!875752 (validKeyInArray!0 (select (arr!42868 _keys!1609) from!2000)))))

(declare-fun b!1319380 () Bool)

(declare-fun res!875750 () Bool)

(assert (=> b!1319380 (=> (not res!875750) (not e!752780))))

(assert (=> b!1319380 (= res!875750 (not (= (select (arr!42868 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1319381 () Bool)

(declare-fun res!875746 () Bool)

(assert (=> b!1319381 (=> (not res!875746) (not e!752780))))

(declare-datatypes ((List!30578 0))(
  ( (Nil!30575) (Cons!30574 (h!31783 (_ BitVec 64)) (t!44263 List!30578)) )
))
(declare-fun arrayNoDuplicates!0 (array!88797 (_ BitVec 32) List!30578) Bool)

(assert (=> b!1319381 (= res!875746 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30575))))

(declare-fun mapIsEmpty!55571 () Bool)

(assert (=> mapIsEmpty!55571 mapRes!55571))

(declare-fun b!1319382 () Bool)

(assert (=> b!1319382 (= e!752780 (not true))))

(declare-datatypes ((tuple2!23392 0))(
  ( (tuple2!23393 (_1!11706 (_ BitVec 64)) (_2!11706 V!53035)) )
))
(declare-datatypes ((List!30579 0))(
  ( (Nil!30576) (Cons!30575 (h!31784 tuple2!23392) (t!44264 List!30579)) )
))
(declare-datatypes ((ListLongMap!21061 0))(
  ( (ListLongMap!21062 (toList!10546 List!30579)) )
))
(declare-fun lt!586579 () ListLongMap!21061)

(declare-fun contains!8637 (ListLongMap!21061 (_ BitVec 64)) Bool)

(assert (=> b!1319382 (contains!8637 lt!586579 k0!1164)))

(declare-fun minValue!1279 () V!53035)

(declare-datatypes ((Unit!43406 0))(
  ( (Unit!43407) )
))
(declare-fun lt!586578 () Unit!43406)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!118 ((_ BitVec 64) (_ BitVec 64) V!53035 ListLongMap!21061) Unit!43406)

(assert (=> b!1319382 (= lt!586578 (lemmaInListMapAfterAddingDiffThenInBefore!118 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586579))))

(declare-fun zeroValue!1279 () V!53035)

(declare-fun defaultEntry!1340 () Int)

(declare-fun +!4503 (ListLongMap!21061 tuple2!23392) ListLongMap!21061)

(declare-fun getCurrentListMapNoExtraKeys!6218 (array!88797 array!88799 (_ BitVec 32) (_ BitVec 32) V!53035 V!53035 (_ BitVec 32) Int) ListLongMap!21061)

(declare-fun get!21593 (ValueCell!17076 V!53035) V!53035)

(declare-fun dynLambda!3540 (Int (_ BitVec 64)) V!53035)

(assert (=> b!1319382 (= lt!586579 (+!4503 (+!4503 (getCurrentListMapNoExtraKeys!6218 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23393 (select (arr!42868 _keys!1609) from!2000) (get!21593 (select (arr!42869 _values!1337) from!2000) (dynLambda!3540 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23393 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1319383 () Bool)

(assert (=> b!1319383 (= e!752781 (and e!752782 mapRes!55571))))

(declare-fun condMapEmpty!55571 () Bool)

(declare-fun mapDefault!55571 () ValueCell!17076)

(assert (=> b!1319383 (= condMapEmpty!55571 (= (arr!42869 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17076)) mapDefault!55571)))))

(declare-fun b!1319384 () Bool)

(declare-fun res!875751 () Bool)

(assert (=> b!1319384 (=> (not res!875751) (not e!752780))))

(declare-fun getCurrentListMap!5493 (array!88797 array!88799 (_ BitVec 32) (_ BitVec 32) V!53035 V!53035 (_ BitVec 32) Int) ListLongMap!21061)

(assert (=> b!1319384 (= res!875751 (contains!8637 (getCurrentListMap!5493 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(assert (= (and start!111508 res!875748) b!1319377))

(assert (= (and b!1319377 res!875745) b!1319374))

(assert (= (and b!1319374 res!875749) b!1319381))

(assert (= (and b!1319381 res!875746) b!1319376))

(assert (= (and b!1319376 res!875747) b!1319384))

(assert (= (and b!1319384 res!875751) b!1319380))

(assert (= (and b!1319380 res!875750) b!1319379))

(assert (= (and b!1319379 res!875752) b!1319382))

(assert (= (and b!1319383 condMapEmpty!55571) mapIsEmpty!55571))

(assert (= (and b!1319383 (not condMapEmpty!55571)) mapNonEmpty!55571))

(get-info :version)

(assert (= (and mapNonEmpty!55571 ((_ is ValueCellFull!17076) mapValue!55571)) b!1319378))

(assert (= (and b!1319383 ((_ is ValueCellFull!17076) mapDefault!55571)) b!1319375))

(assert (= start!111508 b!1319383))

(declare-fun b_lambda!23465 () Bool)

(assert (=> (not b_lambda!23465) (not b!1319382)))

(declare-fun t!44262 () Bool)

(declare-fun tb!11489 () Bool)

(assert (=> (and start!111508 (= defaultEntry!1340 defaultEntry!1340) t!44262) tb!11489))

(declare-fun result!24025 () Bool)

(assert (=> tb!11489 (= result!24025 tp_is_empty!35949)))

(assert (=> b!1319382 t!44262))

(declare-fun b_and!48429 () Bool)

(assert (= b_and!48427 (and (=> t!44262 result!24025) b_and!48429)))

(declare-fun m!1207011 () Bool)

(assert (=> b!1319379 m!1207011))

(assert (=> b!1319379 m!1207011))

(declare-fun m!1207013 () Bool)

(assert (=> b!1319379 m!1207013))

(declare-fun m!1207015 () Bool)

(assert (=> b!1319384 m!1207015))

(assert (=> b!1319384 m!1207015))

(declare-fun m!1207017 () Bool)

(assert (=> b!1319384 m!1207017))

(declare-fun m!1207019 () Bool)

(assert (=> start!111508 m!1207019))

(declare-fun m!1207021 () Bool)

(assert (=> start!111508 m!1207021))

(declare-fun m!1207023 () Bool)

(assert (=> start!111508 m!1207023))

(declare-fun m!1207025 () Bool)

(assert (=> b!1319381 m!1207025))

(declare-fun m!1207027 () Bool)

(assert (=> mapNonEmpty!55571 m!1207027))

(declare-fun m!1207029 () Bool)

(assert (=> b!1319382 m!1207029))

(declare-fun m!1207031 () Bool)

(assert (=> b!1319382 m!1207031))

(assert (=> b!1319382 m!1207029))

(declare-fun m!1207033 () Bool)

(assert (=> b!1319382 m!1207033))

(declare-fun m!1207035 () Bool)

(assert (=> b!1319382 m!1207035))

(declare-fun m!1207037 () Bool)

(assert (=> b!1319382 m!1207037))

(assert (=> b!1319382 m!1207033))

(declare-fun m!1207039 () Bool)

(assert (=> b!1319382 m!1207039))

(assert (=> b!1319382 m!1207037))

(assert (=> b!1319382 m!1207031))

(declare-fun m!1207041 () Bool)

(assert (=> b!1319382 m!1207041))

(assert (=> b!1319382 m!1207011))

(declare-fun m!1207043 () Bool)

(assert (=> b!1319382 m!1207043))

(declare-fun m!1207045 () Bool)

(assert (=> b!1319374 m!1207045))

(assert (=> b!1319380 m!1207011))

(check-sat tp_is_empty!35949 (not b_lambda!23465) (not b!1319379) (not b_next!30129) (not b!1319384) (not start!111508) (not b!1319374) (not mapNonEmpty!55571) (not b!1319382) b_and!48429 (not b!1319381))
(check-sat b_and!48429 (not b_next!30129))
