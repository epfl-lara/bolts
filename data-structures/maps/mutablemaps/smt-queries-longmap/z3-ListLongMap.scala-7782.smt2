; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97474 () Bool)

(assert start!97474)

(declare-fun b_free!23409 () Bool)

(declare-fun b_next!23409 () Bool)

(assert (=> start!97474 (= b_free!23409 (not b_next!23409))))

(declare-fun tp!82526 () Bool)

(declare-fun b_and!37675 () Bool)

(assert (=> start!97474 (= tp!82526 b_and!37675)))

(declare-fun b!1111593 () Bool)

(declare-fun res!741878 () Bool)

(declare-fun e!633883 () Bool)

(assert (=> b!1111593 (=> (not res!741878) (not e!633883))))

(declare-datatypes ((array!72200 0))(
  ( (array!72201 (arr!34749 (Array (_ BitVec 32) (_ BitVec 64))) (size!35286 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72200)

(declare-datatypes ((List!24377 0))(
  ( (Nil!24374) (Cons!24373 (h!25582 (_ BitVec 64)) (t!34839 List!24377)) )
))
(declare-fun arrayNoDuplicates!0 (array!72200 (_ BitVec 32) List!24377) Bool)

(assert (=> b!1111593 (= res!741878 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24374))))

(declare-fun b!1111594 () Bool)

(declare-fun res!741876 () Bool)

(assert (=> b!1111594 (=> (not res!741876) (not e!633883))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1111594 (= res!741876 (= (select (arr!34749 _keys!1208) i!673) k0!934))))

(declare-fun b!1111595 () Bool)

(declare-fun e!633882 () Bool)

(declare-fun tp_is_empty!27669 () Bool)

(assert (=> b!1111595 (= e!633882 tp_is_empty!27669)))

(declare-fun b!1111596 () Bool)

(declare-fun e!633884 () Bool)

(assert (=> b!1111596 (= e!633884 tp_is_empty!27669)))

(declare-fun b!1111597 () Bool)

(declare-fun res!741880 () Bool)

(declare-fun e!633885 () Bool)

(assert (=> b!1111597 (=> (not res!741880) (not e!633885))))

(declare-fun lt!496354 () array!72200)

(assert (=> b!1111597 (= res!741880 (arrayNoDuplicates!0 lt!496354 #b00000000000000000000000000000000 Nil!24374))))

(declare-fun b!1111598 () Bool)

(declare-fun res!741873 () Bool)

(assert (=> b!1111598 (=> (not res!741873) (not e!633883))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1111598 (= res!741873 (validKeyInArray!0 k0!934))))

(declare-datatypes ((V!42019 0))(
  ( (V!42020 (val!13891 Int)) )
))
(declare-fun zeroValue!944 () V!42019)

(declare-fun bm!46921 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!17642 0))(
  ( (tuple2!17643 (_1!8831 (_ BitVec 64)) (_2!8831 V!42019)) )
))
(declare-datatypes ((List!24378 0))(
  ( (Nil!24375) (Cons!24374 (h!25583 tuple2!17642) (t!34840 List!24378)) )
))
(declare-datatypes ((ListLongMap!15623 0))(
  ( (ListLongMap!15624 (toList!7827 List!24378)) )
))
(declare-fun call!46925 () ListLongMap!15623)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13125 0))(
  ( (ValueCellFull!13125 (v!16525 V!42019)) (EmptyCell!13125) )
))
(declare-datatypes ((array!72202 0))(
  ( (array!72203 (arr!34750 (Array (_ BitVec 32) ValueCell!13125)) (size!35287 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72202)

(declare-fun minValue!944 () V!42019)

(declare-fun getCurrentListMapNoExtraKeys!4288 (array!72200 array!72202 (_ BitVec 32) (_ BitVec 32) V!42019 V!42019 (_ BitVec 32) Int) ListLongMap!15623)

(declare-fun dynLambda!2410 (Int (_ BitVec 64)) V!42019)

(assert (=> bm!46921 (= call!46925 (getCurrentListMapNoExtraKeys!4288 lt!496354 (array!72203 (store (arr!34750 _values!996) i!673 (ValueCellFull!13125 (dynLambda!2410 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35287 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1111599 () Bool)

(declare-fun res!741879 () Bool)

(assert (=> b!1111599 (=> (not res!741879) (not e!633883))))

(assert (=> b!1111599 (= res!741879 (and (= (size!35287 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35286 _keys!1208) (size!35287 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1111600 () Bool)

(declare-fun e!633881 () Bool)

(declare-fun call!46924 () ListLongMap!15623)

(assert (=> b!1111600 (= e!633881 (= call!46925 call!46924))))

(declare-fun b!1111602 () Bool)

(declare-fun e!633880 () Bool)

(assert (=> b!1111602 (= e!633885 (not e!633880))))

(declare-fun res!741874 () Bool)

(assert (=> b!1111602 (=> res!741874 e!633880)))

(assert (=> b!1111602 (= res!741874 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35286 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72200 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1111602 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36393 0))(
  ( (Unit!36394) )
))
(declare-fun lt!496356 () Unit!36393)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72200 (_ BitVec 64) (_ BitVec 32)) Unit!36393)

(assert (=> b!1111602 (= lt!496356 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1111603 () Bool)

(assert (=> b!1111603 (= e!633883 e!633885)))

(declare-fun res!741882 () Bool)

(assert (=> b!1111603 (=> (not res!741882) (not e!633885))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72200 (_ BitVec 32)) Bool)

(assert (=> b!1111603 (= res!741882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496354 mask!1564))))

(assert (=> b!1111603 (= lt!496354 (array!72201 (store (arr!34749 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35286 _keys!1208)))))

(declare-fun bm!46922 () Bool)

(assert (=> bm!46922 (= call!46924 (getCurrentListMapNoExtraKeys!4288 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!43321 () Bool)

(declare-fun mapRes!43321 () Bool)

(assert (=> mapIsEmpty!43321 mapRes!43321))

(declare-fun b!1111604 () Bool)

(declare-fun e!633886 () Bool)

(assert (=> b!1111604 (= e!633886 (and e!633882 mapRes!43321))))

(declare-fun condMapEmpty!43321 () Bool)

(declare-fun mapDefault!43321 () ValueCell!13125)

(assert (=> b!1111604 (= condMapEmpty!43321 (= (arr!34750 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13125)) mapDefault!43321)))))

(declare-fun b!1111605 () Bool)

(declare-fun res!741877 () Bool)

(assert (=> b!1111605 (=> (not res!741877) (not e!633883))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1111605 (= res!741877 (validMask!0 mask!1564))))

(declare-fun b!1111606 () Bool)

(declare-fun res!741881 () Bool)

(assert (=> b!1111606 (=> (not res!741881) (not e!633883))))

(assert (=> b!1111606 (= res!741881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1111607 () Bool)

(declare-fun -!1047 (ListLongMap!15623 (_ BitVec 64)) ListLongMap!15623)

(assert (=> b!1111607 (= e!633881 (= call!46925 (-!1047 call!46924 k0!934)))))

(declare-fun res!741875 () Bool)

(assert (=> start!97474 (=> (not res!741875) (not e!633883))))

(assert (=> start!97474 (= res!741875 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35286 _keys!1208))))))

(assert (=> start!97474 e!633883))

(assert (=> start!97474 tp_is_empty!27669))

(declare-fun array_inv!26594 (array!72200) Bool)

(assert (=> start!97474 (array_inv!26594 _keys!1208)))

(assert (=> start!97474 true))

(assert (=> start!97474 tp!82526))

(declare-fun array_inv!26595 (array!72202) Bool)

(assert (=> start!97474 (and (array_inv!26595 _values!996) e!633886)))

(declare-fun b!1111601 () Bool)

(declare-fun res!741872 () Bool)

(assert (=> b!1111601 (=> (not res!741872) (not e!633883))))

(assert (=> b!1111601 (= res!741872 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35286 _keys!1208))))))

(declare-fun b!1111608 () Bool)

(assert (=> b!1111608 (= e!633880 true)))

(assert (=> b!1111608 e!633881))

(declare-fun c!109265 () Bool)

(assert (=> b!1111608 (= c!109265 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!496355 () Unit!36393)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!302 (array!72200 array!72202 (_ BitVec 32) (_ BitVec 32) V!42019 V!42019 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36393)

(assert (=> b!1111608 (= lt!496355 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!302 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!43321 () Bool)

(declare-fun tp!82527 () Bool)

(assert (=> mapNonEmpty!43321 (= mapRes!43321 (and tp!82527 e!633884))))

(declare-fun mapValue!43321 () ValueCell!13125)

(declare-fun mapRest!43321 () (Array (_ BitVec 32) ValueCell!13125))

(declare-fun mapKey!43321 () (_ BitVec 32))

(assert (=> mapNonEmpty!43321 (= (arr!34750 _values!996) (store mapRest!43321 mapKey!43321 mapValue!43321))))

(assert (= (and start!97474 res!741875) b!1111605))

(assert (= (and b!1111605 res!741877) b!1111599))

(assert (= (and b!1111599 res!741879) b!1111606))

(assert (= (and b!1111606 res!741881) b!1111593))

(assert (= (and b!1111593 res!741878) b!1111601))

(assert (= (and b!1111601 res!741872) b!1111598))

(assert (= (and b!1111598 res!741873) b!1111594))

(assert (= (and b!1111594 res!741876) b!1111603))

(assert (= (and b!1111603 res!741882) b!1111597))

(assert (= (and b!1111597 res!741880) b!1111602))

(assert (= (and b!1111602 (not res!741874)) b!1111608))

(assert (= (and b!1111608 c!109265) b!1111607))

(assert (= (and b!1111608 (not c!109265)) b!1111600))

(assert (= (or b!1111607 b!1111600) bm!46921))

(assert (= (or b!1111607 b!1111600) bm!46922))

(assert (= (and b!1111604 condMapEmpty!43321) mapIsEmpty!43321))

(assert (= (and b!1111604 (not condMapEmpty!43321)) mapNonEmpty!43321))

(get-info :version)

(assert (= (and mapNonEmpty!43321 ((_ is ValueCellFull!13125) mapValue!43321)) b!1111596))

(assert (= (and b!1111604 ((_ is ValueCellFull!13125) mapDefault!43321)) b!1111595))

(assert (= start!97474 b!1111604))

(declare-fun b_lambda!18465 () Bool)

(assert (=> (not b_lambda!18465) (not bm!46921)))

(declare-fun t!34838 () Bool)

(declare-fun tb!8283 () Bool)

(assert (=> (and start!97474 (= defaultEntry!1004 defaultEntry!1004) t!34838) tb!8283))

(declare-fun result!17119 () Bool)

(assert (=> tb!8283 (= result!17119 tp_is_empty!27669)))

(assert (=> bm!46921 t!34838))

(declare-fun b_and!37677 () Bool)

(assert (= b_and!37675 (and (=> t!34838 result!17119) b_and!37677)))

(declare-fun m!1029459 () Bool)

(assert (=> start!97474 m!1029459))

(declare-fun m!1029461 () Bool)

(assert (=> start!97474 m!1029461))

(declare-fun m!1029463 () Bool)

(assert (=> bm!46921 m!1029463))

(declare-fun m!1029465 () Bool)

(assert (=> bm!46921 m!1029465))

(declare-fun m!1029467 () Bool)

(assert (=> bm!46921 m!1029467))

(declare-fun m!1029469 () Bool)

(assert (=> b!1111606 m!1029469))

(declare-fun m!1029471 () Bool)

(assert (=> b!1111608 m!1029471))

(declare-fun m!1029473 () Bool)

(assert (=> bm!46922 m!1029473))

(declare-fun m!1029475 () Bool)

(assert (=> mapNonEmpty!43321 m!1029475))

(declare-fun m!1029477 () Bool)

(assert (=> b!1111598 m!1029477))

(declare-fun m!1029479 () Bool)

(assert (=> b!1111603 m!1029479))

(declare-fun m!1029481 () Bool)

(assert (=> b!1111603 m!1029481))

(declare-fun m!1029483 () Bool)

(assert (=> b!1111597 m!1029483))

(declare-fun m!1029485 () Bool)

(assert (=> b!1111593 m!1029485))

(declare-fun m!1029487 () Bool)

(assert (=> b!1111607 m!1029487))

(declare-fun m!1029489 () Bool)

(assert (=> b!1111605 m!1029489))

(declare-fun m!1029491 () Bool)

(assert (=> b!1111594 m!1029491))

(declare-fun m!1029493 () Bool)

(assert (=> b!1111602 m!1029493))

(declare-fun m!1029495 () Bool)

(assert (=> b!1111602 m!1029495))

(check-sat (not mapNonEmpty!43321) (not bm!46922) (not b!1111607) (not b_next!23409) tp_is_empty!27669 (not b!1111593) (not b!1111608) (not start!97474) b_and!37677 (not b!1111603) (not b!1111606) (not b_lambda!18465) (not bm!46921) (not b!1111597) (not b!1111602) (not b!1111598) (not b!1111605))
(check-sat b_and!37677 (not b_next!23409))
