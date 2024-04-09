; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111502 () Bool)

(assert start!111502)

(declare-fun b_free!30123 () Bool)

(declare-fun b_next!30123 () Bool)

(assert (=> start!111502 (= b_free!30123 (not b_next!30123))))

(declare-fun tp!105846 () Bool)

(declare-fun b_and!48415 () Bool)

(assert (=> start!111502 (= tp!105846 b_and!48415)))

(declare-fun b!1319269 () Bool)

(declare-fun res!875679 () Bool)

(declare-fun e!752734 () Bool)

(assert (=> b!1319269 (=> (not res!875679) (not e!752734))))

(declare-datatypes ((array!88785 0))(
  ( (array!88786 (arr!42862 (Array (_ BitVec 32) (_ BitVec 64))) (size!43413 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88785)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53027 0))(
  ( (V!53028 (val!18046 Int)) )
))
(declare-datatypes ((ValueCell!17073 0))(
  ( (ValueCellFull!17073 (v!20674 V!53027)) (EmptyCell!17073) )
))
(declare-datatypes ((array!88787 0))(
  ( (array!88788 (arr!42863 (Array (_ BitVec 32) ValueCell!17073)) (size!43414 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88787)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1319269 (= res!875679 (and (= (size!43414 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43413 _keys!1609) (size!43414 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1319270 () Bool)

(declare-fun from!2000 () (_ BitVec 32))

(assert (=> b!1319270 (= e!752734 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!23386 0))(
  ( (tuple2!23387 (_1!11703 (_ BitVec 64)) (_2!11703 V!53027)) )
))
(declare-datatypes ((List!30572 0))(
  ( (Nil!30569) (Cons!30568 (h!31777 tuple2!23386) (t!44251 List!30572)) )
))
(declare-datatypes ((ListLongMap!21055 0))(
  ( (ListLongMap!21056 (toList!10543 List!30572)) )
))
(declare-fun lt!586560 () ListLongMap!21055)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun contains!8634 (ListLongMap!21055 (_ BitVec 64)) Bool)

(assert (=> b!1319270 (contains!8634 lt!586560 k0!1164)))

(declare-fun minValue!1279 () V!53027)

(declare-datatypes ((Unit!43402 0))(
  ( (Unit!43403) )
))
(declare-fun lt!586561 () Unit!43402)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!116 ((_ BitVec 64) (_ BitVec 64) V!53027 ListLongMap!21055) Unit!43402)

(assert (=> b!1319270 (= lt!586561 (lemmaInListMapAfterAddingDiffThenInBefore!116 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586560))))

(declare-fun zeroValue!1279 () V!53027)

(declare-fun defaultEntry!1340 () Int)

(declare-fun +!4501 (ListLongMap!21055 tuple2!23386) ListLongMap!21055)

(declare-fun getCurrentListMapNoExtraKeys!6216 (array!88785 array!88787 (_ BitVec 32) (_ BitVec 32) V!53027 V!53027 (_ BitVec 32) Int) ListLongMap!21055)

(declare-fun get!21589 (ValueCell!17073 V!53027) V!53027)

(declare-fun dynLambda!3538 (Int (_ BitVec 64)) V!53027)

(assert (=> b!1319270 (= lt!586560 (+!4501 (+!4501 (getCurrentListMapNoExtraKeys!6216 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23387 (select (arr!42862 _keys!1609) from!2000) (get!21589 (select (arr!42863 _values!1337) from!2000) (dynLambda!3538 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23387 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun res!875680 () Bool)

(assert (=> start!111502 (=> (not res!875680) (not e!752734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111502 (= res!875680 (validMask!0 mask!2019))))

(assert (=> start!111502 e!752734))

(declare-fun array_inv!32313 (array!88785) Bool)

(assert (=> start!111502 (array_inv!32313 _keys!1609)))

(assert (=> start!111502 true))

(declare-fun tp_is_empty!35943 () Bool)

(assert (=> start!111502 tp_is_empty!35943))

(declare-fun e!752737 () Bool)

(declare-fun array_inv!32314 (array!88787) Bool)

(assert (=> start!111502 (and (array_inv!32314 _values!1337) e!752737)))

(assert (=> start!111502 tp!105846))

(declare-fun mapNonEmpty!55562 () Bool)

(declare-fun mapRes!55562 () Bool)

(declare-fun tp!105845 () Bool)

(declare-fun e!752733 () Bool)

(assert (=> mapNonEmpty!55562 (= mapRes!55562 (and tp!105845 e!752733))))

(declare-fun mapValue!55562 () ValueCell!17073)

(declare-fun mapKey!55562 () (_ BitVec 32))

(declare-fun mapRest!55562 () (Array (_ BitVec 32) ValueCell!17073))

(assert (=> mapNonEmpty!55562 (= (arr!42863 _values!1337) (store mapRest!55562 mapKey!55562 mapValue!55562))))

(declare-fun b!1319271 () Bool)

(declare-fun res!875676 () Bool)

(assert (=> b!1319271 (=> (not res!875676) (not e!752734))))

(declare-fun getCurrentListMap!5491 (array!88785 array!88787 (_ BitVec 32) (_ BitVec 32) V!53027 V!53027 (_ BitVec 32) Int) ListLongMap!21055)

(assert (=> b!1319271 (= res!875676 (contains!8634 (getCurrentListMap!5491 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1319272 () Bool)

(declare-fun res!875677 () Bool)

(assert (=> b!1319272 (=> (not res!875677) (not e!752734))))

(assert (=> b!1319272 (= res!875677 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43413 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1319273 () Bool)

(declare-fun res!875673 () Bool)

(assert (=> b!1319273 (=> (not res!875673) (not e!752734))))

(assert (=> b!1319273 (= res!875673 (not (= (select (arr!42862 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1319274 () Bool)

(declare-fun res!875674 () Bool)

(assert (=> b!1319274 (=> (not res!875674) (not e!752734))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319274 (= res!875674 (validKeyInArray!0 (select (arr!42862 _keys!1609) from!2000)))))

(declare-fun b!1319275 () Bool)

(declare-fun res!875678 () Bool)

(assert (=> b!1319275 (=> (not res!875678) (not e!752734))))

(declare-datatypes ((List!30573 0))(
  ( (Nil!30570) (Cons!30569 (h!31778 (_ BitVec 64)) (t!44252 List!30573)) )
))
(declare-fun arrayNoDuplicates!0 (array!88785 (_ BitVec 32) List!30573) Bool)

(assert (=> b!1319275 (= res!875678 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30570))))

(declare-fun b!1319276 () Bool)

(declare-fun e!752736 () Bool)

(assert (=> b!1319276 (= e!752736 tp_is_empty!35943)))

(declare-fun b!1319277 () Bool)

(declare-fun res!875675 () Bool)

(assert (=> b!1319277 (=> (not res!875675) (not e!752734))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88785 (_ BitVec 32)) Bool)

(assert (=> b!1319277 (= res!875675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319278 () Bool)

(assert (=> b!1319278 (= e!752733 tp_is_empty!35943)))

(declare-fun b!1319279 () Bool)

(assert (=> b!1319279 (= e!752737 (and e!752736 mapRes!55562))))

(declare-fun condMapEmpty!55562 () Bool)

(declare-fun mapDefault!55562 () ValueCell!17073)

(assert (=> b!1319279 (= condMapEmpty!55562 (= (arr!42863 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17073)) mapDefault!55562)))))

(declare-fun mapIsEmpty!55562 () Bool)

(assert (=> mapIsEmpty!55562 mapRes!55562))

(assert (= (and start!111502 res!875680) b!1319269))

(assert (= (and b!1319269 res!875679) b!1319277))

(assert (= (and b!1319277 res!875675) b!1319275))

(assert (= (and b!1319275 res!875678) b!1319272))

(assert (= (and b!1319272 res!875677) b!1319271))

(assert (= (and b!1319271 res!875676) b!1319273))

(assert (= (and b!1319273 res!875673) b!1319274))

(assert (= (and b!1319274 res!875674) b!1319270))

(assert (= (and b!1319279 condMapEmpty!55562) mapIsEmpty!55562))

(assert (= (and b!1319279 (not condMapEmpty!55562)) mapNonEmpty!55562))

(get-info :version)

(assert (= (and mapNonEmpty!55562 ((_ is ValueCellFull!17073) mapValue!55562)) b!1319278))

(assert (= (and b!1319279 ((_ is ValueCellFull!17073) mapDefault!55562)) b!1319276))

(assert (= start!111502 b!1319279))

(declare-fun b_lambda!23459 () Bool)

(assert (=> (not b_lambda!23459) (not b!1319270)))

(declare-fun t!44250 () Bool)

(declare-fun tb!11483 () Bool)

(assert (=> (and start!111502 (= defaultEntry!1340 defaultEntry!1340) t!44250) tb!11483))

(declare-fun result!24013 () Bool)

(assert (=> tb!11483 (= result!24013 tp_is_empty!35943)))

(assert (=> b!1319270 t!44250))

(declare-fun b_and!48417 () Bool)

(assert (= b_and!48415 (and (=> t!44250 result!24013) b_and!48417)))

(declare-fun m!1206903 () Bool)

(assert (=> b!1319270 m!1206903))

(declare-fun m!1206905 () Bool)

(assert (=> b!1319270 m!1206905))

(declare-fun m!1206907 () Bool)

(assert (=> b!1319270 m!1206907))

(assert (=> b!1319270 m!1206903))

(declare-fun m!1206909 () Bool)

(assert (=> b!1319270 m!1206909))

(declare-fun m!1206911 () Bool)

(assert (=> b!1319270 m!1206911))

(assert (=> b!1319270 m!1206909))

(declare-fun m!1206913 () Bool)

(assert (=> b!1319270 m!1206913))

(assert (=> b!1319270 m!1206911))

(assert (=> b!1319270 m!1206907))

(declare-fun m!1206915 () Bool)

(assert (=> b!1319270 m!1206915))

(declare-fun m!1206917 () Bool)

(assert (=> b!1319270 m!1206917))

(declare-fun m!1206919 () Bool)

(assert (=> b!1319270 m!1206919))

(declare-fun m!1206921 () Bool)

(assert (=> b!1319277 m!1206921))

(assert (=> b!1319274 m!1206919))

(assert (=> b!1319274 m!1206919))

(declare-fun m!1206923 () Bool)

(assert (=> b!1319274 m!1206923))

(declare-fun m!1206925 () Bool)

(assert (=> b!1319275 m!1206925))

(assert (=> b!1319273 m!1206919))

(declare-fun m!1206927 () Bool)

(assert (=> b!1319271 m!1206927))

(assert (=> b!1319271 m!1206927))

(declare-fun m!1206929 () Bool)

(assert (=> b!1319271 m!1206929))

(declare-fun m!1206931 () Bool)

(assert (=> mapNonEmpty!55562 m!1206931))

(declare-fun m!1206933 () Bool)

(assert (=> start!111502 m!1206933))

(declare-fun m!1206935 () Bool)

(assert (=> start!111502 m!1206935))

(declare-fun m!1206937 () Bool)

(assert (=> start!111502 m!1206937))

(check-sat (not b!1319275) (not b!1319271) (not start!111502) (not b_next!30123) (not mapNonEmpty!55562) (not b_lambda!23459) (not b!1319274) b_and!48417 tp_is_empty!35943 (not b!1319277) (not b!1319270))
(check-sat b_and!48417 (not b_next!30123))
