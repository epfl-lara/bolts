; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97348 () Bool)

(assert start!97348)

(declare-fun b_free!23283 () Bool)

(declare-fun b_next!23283 () Bool)

(assert (=> start!97348 (= b_free!23283 (not b_next!23283))))

(declare-fun tp!82148 () Bool)

(declare-fun b_and!37419 () Bool)

(assert (=> start!97348 (= tp!82148 b_and!37419)))

(declare-datatypes ((V!41851 0))(
  ( (V!41852 (val!13828 Int)) )
))
(declare-fun zeroValue!944 () V!41851)

(declare-datatypes ((array!71954 0))(
  ( (array!71955 (arr!34626 (Array (_ BitVec 32) (_ BitVec 64))) (size!35163 (_ BitVec 32))) )
))
(declare-fun lt!495789 () array!71954)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun bm!46543 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!17542 0))(
  ( (tuple2!17543 (_1!8781 (_ BitVec 64)) (_2!8781 V!41851)) )
))
(declare-datatypes ((List!24278 0))(
  ( (Nil!24275) (Cons!24274 (h!25483 tuple2!17542) (t!34614 List!24278)) )
))
(declare-datatypes ((ListLongMap!15523 0))(
  ( (ListLongMap!15524 (toList!7777 List!24278)) )
))
(declare-fun call!46546 () ListLongMap!15523)

(declare-datatypes ((ValueCell!13062 0))(
  ( (ValueCellFull!13062 (v!16462 V!41851)) (EmptyCell!13062) )
))
(declare-datatypes ((array!71956 0))(
  ( (array!71957 (arr!34627 (Array (_ BitVec 32) ValueCell!13062)) (size!35164 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71956)

(declare-fun minValue!944 () V!41851)

(declare-fun getCurrentListMapNoExtraKeys!4244 (array!71954 array!71956 (_ BitVec 32) (_ BitVec 32) V!41851 V!41851 (_ BitVec 32) Int) ListLongMap!15523)

(declare-fun dynLambda!2369 (Int (_ BitVec 64)) V!41851)

(assert (=> bm!46543 (= call!46546 (getCurrentListMapNoExtraKeys!4244 lt!495789 (array!71957 (store (arr!34627 _values!996) i!673 (ValueCellFull!13062 (dynLambda!2369 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35164 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!43132 () Bool)

(declare-fun mapRes!43132 () Bool)

(declare-fun tp!82149 () Bool)

(declare-fun e!632358 () Bool)

(assert (=> mapNonEmpty!43132 (= mapRes!43132 (and tp!82149 e!632358))))

(declare-fun mapValue!43132 () ValueCell!13062)

(declare-fun mapRest!43132 () (Array (_ BitVec 32) ValueCell!13062))

(declare-fun mapKey!43132 () (_ BitVec 32))

(assert (=> mapNonEmpty!43132 (= (arr!34627 _values!996) (store mapRest!43132 mapKey!43132 mapValue!43132))))

(declare-fun b!1108420 () Bool)

(declare-fun res!739795 () Bool)

(declare-fun e!632362 () Bool)

(assert (=> b!1108420 (=> (not res!739795) (not e!632362))))

(declare-fun _keys!1208 () array!71954)

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1108420 (= res!739795 (= (select (arr!34626 _keys!1208) i!673) k0!934))))

(declare-fun b!1108421 () Bool)

(declare-fun e!632359 () Bool)

(declare-fun tp_is_empty!27543 () Bool)

(assert (=> b!1108421 (= e!632359 tp_is_empty!27543)))

(declare-fun mapIsEmpty!43132 () Bool)

(assert (=> mapIsEmpty!43132 mapRes!43132))

(declare-fun b!1108422 () Bool)

(declare-fun res!739799 () Bool)

(assert (=> b!1108422 (=> (not res!739799) (not e!632362))))

(declare-datatypes ((List!24279 0))(
  ( (Nil!24276) (Cons!24275 (h!25484 (_ BitVec 64)) (t!34615 List!24279)) )
))
(declare-fun arrayNoDuplicates!0 (array!71954 (_ BitVec 32) List!24279) Bool)

(assert (=> b!1108422 (= res!739799 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24276))))

(declare-fun b!1108423 () Bool)

(declare-fun res!739798 () Bool)

(assert (=> b!1108423 (=> (not res!739798) (not e!632362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1108423 (= res!739798 (validMask!0 mask!1564))))

(declare-fun b!1108424 () Bool)

(declare-fun e!632356 () Bool)

(declare-fun e!632361 () Bool)

(assert (=> b!1108424 (= e!632356 (not e!632361))))

(declare-fun res!739796 () Bool)

(assert (=> b!1108424 (=> res!739796 e!632361)))

(assert (=> b!1108424 (= res!739796 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35163 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71954 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1108424 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36305 0))(
  ( (Unit!36306) )
))
(declare-fun lt!495788 () Unit!36305)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71954 (_ BitVec 64) (_ BitVec 32)) Unit!36305)

(assert (=> b!1108424 (= lt!495788 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1108425 () Bool)

(declare-fun res!739803 () Bool)

(assert (=> b!1108425 (=> (not res!739803) (not e!632362))))

(assert (=> b!1108425 (= res!739803 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35163 _keys!1208))))))

(declare-fun b!1108426 () Bool)

(assert (=> b!1108426 (= e!632362 e!632356)))

(declare-fun res!739793 () Bool)

(assert (=> b!1108426 (=> (not res!739793) (not e!632356))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71954 (_ BitVec 32)) Bool)

(assert (=> b!1108426 (= res!739793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495789 mask!1564))))

(assert (=> b!1108426 (= lt!495789 (array!71955 (store (arr!34626 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35163 _keys!1208)))))

(declare-fun b!1108427 () Bool)

(assert (=> b!1108427 (= e!632358 tp_is_empty!27543)))

(declare-fun b!1108428 () Bool)

(declare-fun e!632360 () Bool)

(declare-fun call!46547 () ListLongMap!15523)

(declare-fun -!1008 (ListLongMap!15523 (_ BitVec 64)) ListLongMap!15523)

(assert (=> b!1108428 (= e!632360 (= call!46546 (-!1008 call!46547 k0!934)))))

(declare-fun b!1108429 () Bool)

(declare-fun res!739794 () Bool)

(assert (=> b!1108429 (=> (not res!739794) (not e!632362))))

(assert (=> b!1108429 (= res!739794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!46544 () Bool)

(assert (=> bm!46544 (= call!46547 (getCurrentListMapNoExtraKeys!4244 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108430 () Bool)

(declare-fun res!739801 () Bool)

(assert (=> b!1108430 (=> (not res!739801) (not e!632362))))

(assert (=> b!1108430 (= res!739801 (and (= (size!35164 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35163 _keys!1208) (size!35164 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1108419 () Bool)

(declare-fun res!739802 () Bool)

(assert (=> b!1108419 (=> (not res!739802) (not e!632362))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1108419 (= res!739802 (validKeyInArray!0 k0!934))))

(declare-fun res!739800 () Bool)

(assert (=> start!97348 (=> (not res!739800) (not e!632362))))

(assert (=> start!97348 (= res!739800 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35163 _keys!1208))))))

(assert (=> start!97348 e!632362))

(assert (=> start!97348 tp_is_empty!27543))

(declare-fun array_inv!26512 (array!71954) Bool)

(assert (=> start!97348 (array_inv!26512 _keys!1208)))

(assert (=> start!97348 true))

(assert (=> start!97348 tp!82148))

(declare-fun e!632363 () Bool)

(declare-fun array_inv!26513 (array!71956) Bool)

(assert (=> start!97348 (and (array_inv!26513 _values!996) e!632363)))

(declare-fun b!1108431 () Bool)

(assert (=> b!1108431 (= e!632360 (= call!46546 call!46547))))

(declare-fun b!1108432 () Bool)

(assert (=> b!1108432 (= e!632363 (and e!632359 mapRes!43132))))

(declare-fun condMapEmpty!43132 () Bool)

(declare-fun mapDefault!43132 () ValueCell!13062)

(assert (=> b!1108432 (= condMapEmpty!43132 (= (arr!34627 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13062)) mapDefault!43132)))))

(declare-fun b!1108433 () Bool)

(declare-fun res!739797 () Bool)

(assert (=> b!1108433 (=> (not res!739797) (not e!632356))))

(assert (=> b!1108433 (= res!739797 (arrayNoDuplicates!0 lt!495789 #b00000000000000000000000000000000 Nil!24276))))

(declare-fun b!1108434 () Bool)

(assert (=> b!1108434 (= e!632361 true)))

(assert (=> b!1108434 e!632360))

(declare-fun c!109064 () Bool)

(assert (=> b!1108434 (= c!109064 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!495787 () Unit!36305)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!261 (array!71954 array!71956 (_ BitVec 32) (_ BitVec 32) V!41851 V!41851 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36305)

(assert (=> b!1108434 (= lt!495787 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!261 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!97348 res!739800) b!1108423))

(assert (= (and b!1108423 res!739798) b!1108430))

(assert (= (and b!1108430 res!739801) b!1108429))

(assert (= (and b!1108429 res!739794) b!1108422))

(assert (= (and b!1108422 res!739799) b!1108425))

(assert (= (and b!1108425 res!739803) b!1108419))

(assert (= (and b!1108419 res!739802) b!1108420))

(assert (= (and b!1108420 res!739795) b!1108426))

(assert (= (and b!1108426 res!739793) b!1108433))

(assert (= (and b!1108433 res!739797) b!1108424))

(assert (= (and b!1108424 (not res!739796)) b!1108434))

(assert (= (and b!1108434 c!109064) b!1108428))

(assert (= (and b!1108434 (not c!109064)) b!1108431))

(assert (= (or b!1108428 b!1108431) bm!46543))

(assert (= (or b!1108428 b!1108431) bm!46544))

(assert (= (and b!1108432 condMapEmpty!43132) mapIsEmpty!43132))

(assert (= (and b!1108432 (not condMapEmpty!43132)) mapNonEmpty!43132))

(get-info :version)

(assert (= (and mapNonEmpty!43132 ((_ is ValueCellFull!13062) mapValue!43132)) b!1108427))

(assert (= (and b!1108432 ((_ is ValueCellFull!13062) mapDefault!43132)) b!1108421))

(assert (= start!97348 b!1108432))

(declare-fun b_lambda!18335 () Bool)

(assert (=> (not b_lambda!18335) (not bm!46543)))

(declare-fun t!34613 () Bool)

(declare-fun tb!8157 () Bool)

(assert (=> (and start!97348 (= defaultEntry!1004 defaultEntry!1004) t!34613) tb!8157))

(declare-fun result!16867 () Bool)

(assert (=> tb!8157 (= result!16867 tp_is_empty!27543)))

(assert (=> bm!46543 t!34613))

(declare-fun b_and!37421 () Bool)

(assert (= b_and!37419 (and (=> t!34613 result!16867) b_and!37421)))

(declare-fun m!1027065 () Bool)

(assert (=> bm!46544 m!1027065))

(declare-fun m!1027067 () Bool)

(assert (=> b!1108429 m!1027067))

(declare-fun m!1027069 () Bool)

(assert (=> b!1108422 m!1027069))

(declare-fun m!1027071 () Bool)

(assert (=> b!1108434 m!1027071))

(declare-fun m!1027073 () Bool)

(assert (=> bm!46543 m!1027073))

(declare-fun m!1027075 () Bool)

(assert (=> bm!46543 m!1027075))

(declare-fun m!1027077 () Bool)

(assert (=> bm!46543 m!1027077))

(declare-fun m!1027079 () Bool)

(assert (=> b!1108420 m!1027079))

(declare-fun m!1027081 () Bool)

(assert (=> b!1108419 m!1027081))

(declare-fun m!1027083 () Bool)

(assert (=> b!1108433 m!1027083))

(declare-fun m!1027085 () Bool)

(assert (=> mapNonEmpty!43132 m!1027085))

(declare-fun m!1027087 () Bool)

(assert (=> b!1108428 m!1027087))

(declare-fun m!1027089 () Bool)

(assert (=> b!1108426 m!1027089))

(declare-fun m!1027091 () Bool)

(assert (=> b!1108426 m!1027091))

(declare-fun m!1027093 () Bool)

(assert (=> b!1108424 m!1027093))

(declare-fun m!1027095 () Bool)

(assert (=> b!1108424 m!1027095))

(declare-fun m!1027097 () Bool)

(assert (=> b!1108423 m!1027097))

(declare-fun m!1027099 () Bool)

(assert (=> start!97348 m!1027099))

(declare-fun m!1027101 () Bool)

(assert (=> start!97348 m!1027101))

(check-sat (not b!1108434) (not bm!46543) (not bm!46544) (not b_lambda!18335) (not b!1108422) (not b!1108433) (not b!1108419) (not b_next!23283) tp_is_empty!27543 (not b!1108426) b_and!37421 (not mapNonEmpty!43132) (not b!1108424) (not b!1108428) (not start!97348) (not b!1108423) (not b!1108429))
(check-sat b_and!37421 (not b_next!23283))
