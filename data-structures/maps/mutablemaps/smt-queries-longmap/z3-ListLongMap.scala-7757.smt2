; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97324 () Bool)

(assert start!97324)

(declare-fun b_free!23259 () Bool)

(declare-fun b_next!23259 () Bool)

(assert (=> start!97324 (= b_free!23259 (not b_next!23259))))

(declare-fun tp!82077 () Bool)

(declare-fun b_and!37367 () Bool)

(assert (=> start!97324 (= tp!82077 b_and!37367)))

(declare-fun b!1107795 () Bool)

(declare-fun res!739407 () Bool)

(declare-fun e!632060 () Bool)

(assert (=> b!1107795 (=> (not res!739407) (not e!632060))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1107795 (= res!739407 (validKeyInArray!0 k0!934))))

(declare-fun b!1107796 () Bool)

(declare-fun e!632057 () Bool)

(assert (=> b!1107796 (= e!632060 e!632057)))

(declare-fun res!739406 () Bool)

(assert (=> b!1107796 (=> (not res!739406) (not e!632057))))

(declare-datatypes ((array!71906 0))(
  ( (array!71907 (arr!34602 (Array (_ BitVec 32) (_ BitVec 64))) (size!35139 (_ BitVec 32))) )
))
(declare-fun lt!495679 () array!71906)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71906 (_ BitVec 32)) Bool)

(assert (=> b!1107796 (= res!739406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495679 mask!1564))))

(declare-fun _keys!1208 () array!71906)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1107796 (= lt!495679 (array!71907 (store (arr!34602 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35139 _keys!1208)))))

(declare-fun b!1107797 () Bool)

(declare-fun res!739402 () Bool)

(assert (=> b!1107797 (=> (not res!739402) (not e!632057))))

(declare-datatypes ((List!24259 0))(
  ( (Nil!24256) (Cons!24255 (h!25464 (_ BitVec 64)) (t!34571 List!24259)) )
))
(declare-fun arrayNoDuplicates!0 (array!71906 (_ BitVec 32) List!24259) Bool)

(assert (=> b!1107797 (= res!739402 (arrayNoDuplicates!0 lt!495679 #b00000000000000000000000000000000 Nil!24256))))

(declare-datatypes ((V!41819 0))(
  ( (V!41820 (val!13816 Int)) )
))
(declare-datatypes ((tuple2!17522 0))(
  ( (tuple2!17523 (_1!8771 (_ BitVec 64)) (_2!8771 V!41819)) )
))
(declare-datatypes ((List!24260 0))(
  ( (Nil!24257) (Cons!24256 (h!25465 tuple2!17522) (t!34572 List!24260)) )
))
(declare-datatypes ((ListLongMap!15503 0))(
  ( (ListLongMap!15504 (toList!7767 List!24260)) )
))
(declare-fun call!46475 () ListLongMap!15503)

(declare-fun call!46474 () ListLongMap!15503)

(declare-fun b!1107798 () Bool)

(declare-fun e!632063 () Bool)

(declare-fun -!1000 (ListLongMap!15503 (_ BitVec 64)) ListLongMap!15503)

(assert (=> b!1107798 (= e!632063 (= call!46474 (-!1000 call!46475 k0!934)))))

(declare-fun b!1107799 () Bool)

(declare-fun res!739403 () Bool)

(assert (=> b!1107799 (=> (not res!739403) (not e!632060))))

(assert (=> b!1107799 (= res!739403 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24256))))

(declare-fun mapIsEmpty!43096 () Bool)

(declare-fun mapRes!43096 () Bool)

(assert (=> mapIsEmpty!43096 mapRes!43096))

(declare-fun b!1107800 () Bool)

(declare-fun e!632059 () Bool)

(assert (=> b!1107800 (= e!632059 true)))

(assert (=> b!1107800 e!632063))

(declare-fun c!109016 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1107800 (= c!109016 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!36291 0))(
  ( (Unit!36292) )
))
(declare-fun lt!495680 () Unit!36291)

(declare-datatypes ((ValueCell!13050 0))(
  ( (ValueCellFull!13050 (v!16450 V!41819)) (EmptyCell!13050) )
))
(declare-datatypes ((array!71908 0))(
  ( (array!71909 (arr!34603 (Array (_ BitVec 32) ValueCell!13050)) (size!35140 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71908)

(declare-fun minValue!944 () V!41819)

(declare-fun zeroValue!944 () V!41819)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!255 (array!71906 array!71908 (_ BitVec 32) (_ BitVec 32) V!41819 V!41819 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36291)

(assert (=> b!1107800 (= lt!495680 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!255 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107801 () Bool)

(declare-fun res!739405 () Bool)

(assert (=> b!1107801 (=> (not res!739405) (not e!632060))))

(assert (=> b!1107801 (= res!739405 (= (select (arr!34602 _keys!1208) i!673) k0!934))))

(declare-fun res!739397 () Bool)

(assert (=> start!97324 (=> (not res!739397) (not e!632060))))

(assert (=> start!97324 (= res!739397 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35139 _keys!1208))))))

(assert (=> start!97324 e!632060))

(declare-fun tp_is_empty!27519 () Bool)

(assert (=> start!97324 tp_is_empty!27519))

(declare-fun array_inv!26494 (array!71906) Bool)

(assert (=> start!97324 (array_inv!26494 _keys!1208)))

(assert (=> start!97324 true))

(assert (=> start!97324 tp!82077))

(declare-fun e!632062 () Bool)

(declare-fun array_inv!26495 (array!71908) Bool)

(assert (=> start!97324 (and (array_inv!26495 _values!996) e!632062)))

(declare-fun b!1107802 () Bool)

(declare-fun e!632058 () Bool)

(assert (=> b!1107802 (= e!632062 (and e!632058 mapRes!43096))))

(declare-fun condMapEmpty!43096 () Bool)

(declare-fun mapDefault!43096 () ValueCell!13050)

(assert (=> b!1107802 (= condMapEmpty!43096 (= (arr!34603 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13050)) mapDefault!43096)))))

(declare-fun b!1107803 () Bool)

(declare-fun res!739401 () Bool)

(assert (=> b!1107803 (=> (not res!739401) (not e!632060))))

(assert (=> b!1107803 (= res!739401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!43096 () Bool)

(declare-fun tp!82076 () Bool)

(declare-fun e!632061 () Bool)

(assert (=> mapNonEmpty!43096 (= mapRes!43096 (and tp!82076 e!632061))))

(declare-fun mapValue!43096 () ValueCell!13050)

(declare-fun mapKey!43096 () (_ BitVec 32))

(declare-fun mapRest!43096 () (Array (_ BitVec 32) ValueCell!13050))

(assert (=> mapNonEmpty!43096 (= (arr!34603 _values!996) (store mapRest!43096 mapKey!43096 mapValue!43096))))

(declare-fun bm!46471 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4235 (array!71906 array!71908 (_ BitVec 32) (_ BitVec 32) V!41819 V!41819 (_ BitVec 32) Int) ListLongMap!15503)

(declare-fun dynLambda!2362 (Int (_ BitVec 64)) V!41819)

(assert (=> bm!46471 (= call!46474 (getCurrentListMapNoExtraKeys!4235 lt!495679 (array!71909 (store (arr!34603 _values!996) i!673 (ValueCellFull!13050 (dynLambda!2362 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35140 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107804 () Bool)

(assert (=> b!1107804 (= e!632063 (= call!46474 call!46475))))

(declare-fun b!1107805 () Bool)

(assert (=> b!1107805 (= e!632057 (not e!632059))))

(declare-fun res!739404 () Bool)

(assert (=> b!1107805 (=> res!739404 e!632059)))

(assert (=> b!1107805 (= res!739404 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35139 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71906 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1107805 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!495681 () Unit!36291)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71906 (_ BitVec 64) (_ BitVec 32)) Unit!36291)

(assert (=> b!1107805 (= lt!495681 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1107806 () Bool)

(assert (=> b!1107806 (= e!632061 tp_is_empty!27519)))

(declare-fun bm!46472 () Bool)

(assert (=> bm!46472 (= call!46475 (getCurrentListMapNoExtraKeys!4235 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107807 () Bool)

(declare-fun res!739398 () Bool)

(assert (=> b!1107807 (=> (not res!739398) (not e!632060))))

(assert (=> b!1107807 (= res!739398 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35139 _keys!1208))))))

(declare-fun b!1107808 () Bool)

(assert (=> b!1107808 (= e!632058 tp_is_empty!27519)))

(declare-fun b!1107809 () Bool)

(declare-fun res!739399 () Bool)

(assert (=> b!1107809 (=> (not res!739399) (not e!632060))))

(assert (=> b!1107809 (= res!739399 (and (= (size!35140 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35139 _keys!1208) (size!35140 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1107810 () Bool)

(declare-fun res!739400 () Bool)

(assert (=> b!1107810 (=> (not res!739400) (not e!632060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1107810 (= res!739400 (validMask!0 mask!1564))))

(assert (= (and start!97324 res!739397) b!1107810))

(assert (= (and b!1107810 res!739400) b!1107809))

(assert (= (and b!1107809 res!739399) b!1107803))

(assert (= (and b!1107803 res!739401) b!1107799))

(assert (= (and b!1107799 res!739403) b!1107807))

(assert (= (and b!1107807 res!739398) b!1107795))

(assert (= (and b!1107795 res!739407) b!1107801))

(assert (= (and b!1107801 res!739405) b!1107796))

(assert (= (and b!1107796 res!739406) b!1107797))

(assert (= (and b!1107797 res!739402) b!1107805))

(assert (= (and b!1107805 (not res!739404)) b!1107800))

(assert (= (and b!1107800 c!109016) b!1107798))

(assert (= (and b!1107800 (not c!109016)) b!1107804))

(assert (= (or b!1107798 b!1107804) bm!46471))

(assert (= (or b!1107798 b!1107804) bm!46472))

(assert (= (and b!1107802 condMapEmpty!43096) mapIsEmpty!43096))

(assert (= (and b!1107802 (not condMapEmpty!43096)) mapNonEmpty!43096))

(get-info :version)

(assert (= (and mapNonEmpty!43096 ((_ is ValueCellFull!13050) mapValue!43096)) b!1107806))

(assert (= (and b!1107802 ((_ is ValueCellFull!13050) mapDefault!43096)) b!1107808))

(assert (= start!97324 b!1107802))

(declare-fun b_lambda!18307 () Bool)

(assert (=> (not b_lambda!18307) (not bm!46471)))

(declare-fun t!34570 () Bool)

(declare-fun tb!8133 () Bool)

(assert (=> (and start!97324 (= defaultEntry!1004 defaultEntry!1004) t!34570) tb!8133))

(declare-fun result!16819 () Bool)

(assert (=> tb!8133 (= result!16819 tp_is_empty!27519)))

(assert (=> bm!46471 t!34570))

(declare-fun b_and!37369 () Bool)

(assert (= b_and!37367 (and (=> t!34570 result!16819) b_and!37369)))

(declare-fun m!1026609 () Bool)

(assert (=> bm!46472 m!1026609))

(declare-fun m!1026611 () Bool)

(assert (=> b!1107810 m!1026611))

(declare-fun m!1026613 () Bool)

(assert (=> b!1107796 m!1026613))

(declare-fun m!1026615 () Bool)

(assert (=> b!1107796 m!1026615))

(declare-fun m!1026617 () Bool)

(assert (=> mapNonEmpty!43096 m!1026617))

(declare-fun m!1026619 () Bool)

(assert (=> bm!46471 m!1026619))

(declare-fun m!1026621 () Bool)

(assert (=> bm!46471 m!1026621))

(declare-fun m!1026623 () Bool)

(assert (=> bm!46471 m!1026623))

(declare-fun m!1026625 () Bool)

(assert (=> start!97324 m!1026625))

(declare-fun m!1026627 () Bool)

(assert (=> start!97324 m!1026627))

(declare-fun m!1026629 () Bool)

(assert (=> b!1107800 m!1026629))

(declare-fun m!1026631 () Bool)

(assert (=> b!1107798 m!1026631))

(declare-fun m!1026633 () Bool)

(assert (=> b!1107799 m!1026633))

(declare-fun m!1026635 () Bool)

(assert (=> b!1107801 m!1026635))

(declare-fun m!1026637 () Bool)

(assert (=> b!1107805 m!1026637))

(declare-fun m!1026639 () Bool)

(assert (=> b!1107805 m!1026639))

(declare-fun m!1026641 () Bool)

(assert (=> b!1107795 m!1026641))

(declare-fun m!1026643 () Bool)

(assert (=> b!1107797 m!1026643))

(declare-fun m!1026645 () Bool)

(assert (=> b!1107803 m!1026645))

(check-sat (not b_lambda!18307) (not b!1107803) (not b!1107798) (not b!1107810) (not mapNonEmpty!43096) (not b!1107805) b_and!37369 (not start!97324) (not bm!46471) (not b!1107796) (not b!1107800) (not b_next!23259) (not b!1107795) (not b!1107797) (not b!1107799) (not bm!46472) tp_is_empty!27519)
(check-sat b_and!37369 (not b_next!23259))
