; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97264 () Bool)

(assert start!97264)

(declare-fun b!1106410 () Bool)

(declare-fun e!631403 () Bool)

(declare-fun tp_is_empty!27459 () Bool)

(assert (=> b!1106410 (= e!631403 tp_is_empty!27459)))

(declare-fun mapNonEmpty!43006 () Bool)

(declare-fun mapRes!43006 () Bool)

(declare-fun tp!81927 () Bool)

(assert (=> mapNonEmpty!43006 (= mapRes!43006 (and tp!81927 e!631403))))

(declare-fun mapKey!43006 () (_ BitVec 32))

(declare-datatypes ((V!41739 0))(
  ( (V!41740 (val!13786 Int)) )
))
(declare-datatypes ((ValueCell!13020 0))(
  ( (ValueCellFull!13020 (v!16420 V!41739)) (EmptyCell!13020) )
))
(declare-datatypes ((array!71788 0))(
  ( (array!71789 (arr!34543 (Array (_ BitVec 32) ValueCell!13020)) (size!35080 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71788)

(declare-fun mapRest!43006 () (Array (_ BitVec 32) ValueCell!13020))

(declare-fun mapValue!43006 () ValueCell!13020)

(assert (=> mapNonEmpty!43006 (= (arr!34543 _values!996) (store mapRest!43006 mapKey!43006 mapValue!43006))))

(declare-fun b!1106411 () Bool)

(declare-fun res!738447 () Bool)

(declare-fun e!631399 () Bool)

(assert (=> b!1106411 (=> (not res!738447) (not e!631399))))

(declare-datatypes ((array!71790 0))(
  ( (array!71791 (arr!34544 (Array (_ BitVec 32) (_ BitVec 64))) (size!35081 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71790)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1106411 (= res!738447 (and (= (size!35080 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35081 _keys!1208) (size!35080 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1106412 () Bool)

(declare-fun res!738439 () Bool)

(declare-fun e!631400 () Bool)

(assert (=> b!1106412 (=> (not res!738439) (not e!631400))))

(declare-fun lt!495441 () array!71790)

(declare-datatypes ((List!24216 0))(
  ( (Nil!24213) (Cons!24212 (h!25421 (_ BitVec 64)) (t!34488 List!24216)) )
))
(declare-fun arrayNoDuplicates!0 (array!71790 (_ BitVec 32) List!24216) Bool)

(assert (=> b!1106412 (= res!738439 (arrayNoDuplicates!0 lt!495441 #b00000000000000000000000000000000 Nil!24213))))

(declare-fun b!1106413 () Bool)

(declare-fun res!738442 () Bool)

(assert (=> b!1106413 (=> (not res!738442) (not e!631399))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1106413 (= res!738442 (= (select (arr!34544 _keys!1208) i!673) k0!934))))

(declare-fun b!1106414 () Bool)

(declare-fun res!738441 () Bool)

(assert (=> b!1106414 (=> (not res!738441) (not e!631399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106414 (= res!738441 (validMask!0 mask!1564))))

(declare-fun b!1106415 () Bool)

(assert (=> b!1106415 (= e!631400 (not true))))

(declare-fun arrayContainsKey!0 (array!71790 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1106415 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36247 0))(
  ( (Unit!36248) )
))
(declare-fun lt!495440 () Unit!36247)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71790 (_ BitVec 64) (_ BitVec 32)) Unit!36247)

(assert (=> b!1106415 (= lt!495440 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1106416 () Bool)

(declare-fun e!631402 () Bool)

(assert (=> b!1106416 (= e!631402 tp_is_empty!27459)))

(declare-fun b!1106417 () Bool)

(declare-fun res!738440 () Bool)

(assert (=> b!1106417 (=> (not res!738440) (not e!631399))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71790 (_ BitVec 32)) Bool)

(assert (=> b!1106417 (= res!738440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1106418 () Bool)

(declare-fun res!738443 () Bool)

(assert (=> b!1106418 (=> (not res!738443) (not e!631399))))

(assert (=> b!1106418 (= res!738443 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35081 _keys!1208))))))

(declare-fun mapIsEmpty!43006 () Bool)

(assert (=> mapIsEmpty!43006 mapRes!43006))

(declare-fun b!1106420 () Bool)

(declare-fun res!738438 () Bool)

(assert (=> b!1106420 (=> (not res!738438) (not e!631399))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1106420 (= res!738438 (validKeyInArray!0 k0!934))))

(declare-fun b!1106421 () Bool)

(declare-fun res!738446 () Bool)

(assert (=> b!1106421 (=> (not res!738446) (not e!631399))))

(assert (=> b!1106421 (= res!738446 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24213))))

(declare-fun b!1106422 () Bool)

(declare-fun e!631398 () Bool)

(assert (=> b!1106422 (= e!631398 (and e!631402 mapRes!43006))))

(declare-fun condMapEmpty!43006 () Bool)

(declare-fun mapDefault!43006 () ValueCell!13020)

(assert (=> b!1106422 (= condMapEmpty!43006 (= (arr!34543 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13020)) mapDefault!43006)))))

(declare-fun res!738445 () Bool)

(assert (=> start!97264 (=> (not res!738445) (not e!631399))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97264 (= res!738445 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35081 _keys!1208))))))

(assert (=> start!97264 e!631399))

(declare-fun array_inv!26444 (array!71790) Bool)

(assert (=> start!97264 (array_inv!26444 _keys!1208)))

(assert (=> start!97264 true))

(declare-fun array_inv!26445 (array!71788) Bool)

(assert (=> start!97264 (and (array_inv!26445 _values!996) e!631398)))

(declare-fun b!1106419 () Bool)

(assert (=> b!1106419 (= e!631399 e!631400)))

(declare-fun res!738444 () Bool)

(assert (=> b!1106419 (=> (not res!738444) (not e!631400))))

(assert (=> b!1106419 (= res!738444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495441 mask!1564))))

(assert (=> b!1106419 (= lt!495441 (array!71791 (store (arr!34544 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35081 _keys!1208)))))

(assert (= (and start!97264 res!738445) b!1106414))

(assert (= (and b!1106414 res!738441) b!1106411))

(assert (= (and b!1106411 res!738447) b!1106417))

(assert (= (and b!1106417 res!738440) b!1106421))

(assert (= (and b!1106421 res!738446) b!1106418))

(assert (= (and b!1106418 res!738443) b!1106420))

(assert (= (and b!1106420 res!738438) b!1106413))

(assert (= (and b!1106413 res!738442) b!1106419))

(assert (= (and b!1106419 res!738444) b!1106412))

(assert (= (and b!1106412 res!738439) b!1106415))

(assert (= (and b!1106422 condMapEmpty!43006) mapIsEmpty!43006))

(assert (= (and b!1106422 (not condMapEmpty!43006)) mapNonEmpty!43006))

(get-info :version)

(assert (= (and mapNonEmpty!43006 ((_ is ValueCellFull!13020) mapValue!43006)) b!1106410))

(assert (= (and b!1106422 ((_ is ValueCellFull!13020) mapDefault!43006)) b!1106416))

(assert (= start!97264 b!1106422))

(declare-fun m!1025601 () Bool)

(assert (=> mapNonEmpty!43006 m!1025601))

(declare-fun m!1025603 () Bool)

(assert (=> start!97264 m!1025603))

(declare-fun m!1025605 () Bool)

(assert (=> start!97264 m!1025605))

(declare-fun m!1025607 () Bool)

(assert (=> b!1106419 m!1025607))

(declare-fun m!1025609 () Bool)

(assert (=> b!1106419 m!1025609))

(declare-fun m!1025611 () Bool)

(assert (=> b!1106420 m!1025611))

(declare-fun m!1025613 () Bool)

(assert (=> b!1106414 m!1025613))

(declare-fun m!1025615 () Bool)

(assert (=> b!1106415 m!1025615))

(declare-fun m!1025617 () Bool)

(assert (=> b!1106415 m!1025617))

(declare-fun m!1025619 () Bool)

(assert (=> b!1106421 m!1025619))

(declare-fun m!1025621 () Bool)

(assert (=> b!1106412 m!1025621))

(declare-fun m!1025623 () Bool)

(assert (=> b!1106417 m!1025623))

(declare-fun m!1025625 () Bool)

(assert (=> b!1106413 m!1025625))

(check-sat tp_is_empty!27459 (not b!1106417) (not b!1106414) (not b!1106415) (not b!1106421) (not b!1106420) (not b!1106412) (not start!97264) (not b!1106419) (not mapNonEmpty!43006))
(check-sat)
