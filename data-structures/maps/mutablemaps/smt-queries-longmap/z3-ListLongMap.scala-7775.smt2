; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97432 () Bool)

(assert start!97432)

(declare-fun b_free!23367 () Bool)

(declare-fun b_next!23367 () Bool)

(assert (=> start!97432 (= b_free!23367 (not b_next!23367))))

(declare-fun tp!82400 () Bool)

(declare-fun b_and!37591 () Bool)

(assert (=> start!97432 (= tp!82400 b_and!37591)))

(declare-fun b!1110543 () Bool)

(declare-fun e!633378 () Bool)

(declare-fun tp_is_empty!27627 () Bool)

(assert (=> b!1110543 (= e!633378 tp_is_empty!27627)))

(declare-fun b!1110544 () Bool)

(declare-fun res!741180 () Bool)

(declare-fun e!633381 () Bool)

(assert (=> b!1110544 (=> (not res!741180) (not e!633381))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72120 0))(
  ( (array!72121 (arr!34709 (Array (_ BitVec 32) (_ BitVec 64))) (size!35246 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72120)

(assert (=> b!1110544 (= res!741180 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35246 _keys!1208))))))

(declare-fun e!633382 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((V!41963 0))(
  ( (V!41964 (val!13870 Int)) )
))
(declare-datatypes ((tuple2!17610 0))(
  ( (tuple2!17611 (_1!8815 (_ BitVec 64)) (_2!8815 V!41963)) )
))
(declare-datatypes ((List!24346 0))(
  ( (Nil!24343) (Cons!24342 (h!25551 tuple2!17610) (t!34766 List!24346)) )
))
(declare-datatypes ((ListLongMap!15591 0))(
  ( (ListLongMap!15592 (toList!7811 List!24346)) )
))
(declare-fun call!46799 () ListLongMap!15591)

(declare-fun call!46798 () ListLongMap!15591)

(declare-fun b!1110545 () Bool)

(declare-fun -!1035 (ListLongMap!15591 (_ BitVec 64)) ListLongMap!15591)

(assert (=> b!1110545 (= e!633382 (= call!46799 (-!1035 call!46798 k0!934)))))

(declare-fun res!741181 () Bool)

(assert (=> start!97432 (=> (not res!741181) (not e!633381))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97432 (= res!741181 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35246 _keys!1208))))))

(assert (=> start!97432 e!633381))

(assert (=> start!97432 tp_is_empty!27627))

(declare-fun array_inv!26572 (array!72120) Bool)

(assert (=> start!97432 (array_inv!26572 _keys!1208)))

(assert (=> start!97432 true))

(assert (=> start!97432 tp!82400))

(declare-datatypes ((ValueCell!13104 0))(
  ( (ValueCellFull!13104 (v!16504 V!41963)) (EmptyCell!13104) )
))
(declare-datatypes ((array!72122 0))(
  ( (array!72123 (arr!34710 (Array (_ BitVec 32) ValueCell!13104)) (size!35247 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72122)

(declare-fun e!633379 () Bool)

(declare-fun array_inv!26573 (array!72122) Bool)

(assert (=> start!97432 (and (array_inv!26573 _values!996) e!633379)))

(declare-fun b!1110546 () Bool)

(declare-fun res!741184 () Bool)

(assert (=> b!1110546 (=> (not res!741184) (not e!633381))))

(assert (=> b!1110546 (= res!741184 (= (select (arr!34709 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!43258 () Bool)

(declare-fun mapRes!43258 () Bool)

(assert (=> mapIsEmpty!43258 mapRes!43258))

(declare-fun b!1110547 () Bool)

(declare-fun e!633383 () Bool)

(declare-fun e!633377 () Bool)

(assert (=> b!1110547 (= e!633383 (not e!633377))))

(declare-fun res!741186 () Bool)

(assert (=> b!1110547 (=> res!741186 e!633377)))

(assert (=> b!1110547 (= res!741186 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35246 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72120 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1110547 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36363 0))(
  ( (Unit!36364) )
))
(declare-fun lt!496166 () Unit!36363)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72120 (_ BitVec 64) (_ BitVec 32)) Unit!36363)

(assert (=> b!1110547 (= lt!496166 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1110548 () Bool)

(declare-fun res!741188 () Bool)

(assert (=> b!1110548 (=> (not res!741188) (not e!633381))))

(declare-datatypes ((List!24347 0))(
  ( (Nil!24344) (Cons!24343 (h!25552 (_ BitVec 64)) (t!34767 List!24347)) )
))
(declare-fun arrayNoDuplicates!0 (array!72120 (_ BitVec 32) List!24347) Bool)

(assert (=> b!1110548 (= res!741188 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24344))))

(declare-fun zeroValue!944 () V!41963)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!46795 () Bool)

(declare-fun minValue!944 () V!41963)

(declare-fun getCurrentListMapNoExtraKeys!4274 (array!72120 array!72122 (_ BitVec 32) (_ BitVec 32) V!41963 V!41963 (_ BitVec 32) Int) ListLongMap!15591)

(assert (=> bm!46795 (= call!46798 (getCurrentListMapNoExtraKeys!4274 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110549 () Bool)

(declare-fun res!741182 () Bool)

(assert (=> b!1110549 (=> (not res!741182) (not e!633381))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1110549 (= res!741182 (validKeyInArray!0 k0!934))))

(declare-fun lt!496165 () array!72120)

(declare-fun bm!46796 () Bool)

(declare-fun dynLambda!2396 (Int (_ BitVec 64)) V!41963)

(assert (=> bm!46796 (= call!46799 (getCurrentListMapNoExtraKeys!4274 lt!496165 (array!72123 (store (arr!34710 _values!996) i!673 (ValueCellFull!13104 (dynLambda!2396 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35247 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110550 () Bool)

(assert (=> b!1110550 (= e!633377 true)))

(assert (=> b!1110550 e!633382))

(declare-fun c!109202 () Bool)

(assert (=> b!1110550 (= c!109202 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!496167 () Unit!36363)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!288 (array!72120 array!72122 (_ BitVec 32) (_ BitVec 32) V!41963 V!41963 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36363)

(assert (=> b!1110550 (= lt!496167 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!288 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110551 () Bool)

(declare-fun res!741187 () Bool)

(assert (=> b!1110551 (=> (not res!741187) (not e!633381))))

(assert (=> b!1110551 (= res!741187 (and (= (size!35247 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35246 _keys!1208) (size!35247 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!43258 () Bool)

(declare-fun tp!82401 () Bool)

(assert (=> mapNonEmpty!43258 (= mapRes!43258 (and tp!82401 e!633378))))

(declare-fun mapKey!43258 () (_ BitVec 32))

(declare-fun mapValue!43258 () ValueCell!13104)

(declare-fun mapRest!43258 () (Array (_ BitVec 32) ValueCell!13104))

(assert (=> mapNonEmpty!43258 (= (arr!34710 _values!996) (store mapRest!43258 mapKey!43258 mapValue!43258))))

(declare-fun b!1110552 () Bool)

(assert (=> b!1110552 (= e!633381 e!633383)))

(declare-fun res!741185 () Bool)

(assert (=> b!1110552 (=> (not res!741185) (not e!633383))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72120 (_ BitVec 32)) Bool)

(assert (=> b!1110552 (= res!741185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496165 mask!1564))))

(assert (=> b!1110552 (= lt!496165 (array!72121 (store (arr!34709 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35246 _keys!1208)))))

(declare-fun b!1110553 () Bool)

(declare-fun res!741179 () Bool)

(assert (=> b!1110553 (=> (not res!741179) (not e!633381))))

(assert (=> b!1110553 (= res!741179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1110554 () Bool)

(declare-fun res!741183 () Bool)

(assert (=> b!1110554 (=> (not res!741183) (not e!633383))))

(assert (=> b!1110554 (= res!741183 (arrayNoDuplicates!0 lt!496165 #b00000000000000000000000000000000 Nil!24344))))

(declare-fun b!1110555 () Bool)

(assert (=> b!1110555 (= e!633382 (= call!46799 call!46798))))

(declare-fun b!1110556 () Bool)

(declare-fun res!741189 () Bool)

(assert (=> b!1110556 (=> (not res!741189) (not e!633381))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1110556 (= res!741189 (validMask!0 mask!1564))))

(declare-fun b!1110557 () Bool)

(declare-fun e!633380 () Bool)

(assert (=> b!1110557 (= e!633380 tp_is_empty!27627)))

(declare-fun b!1110558 () Bool)

(assert (=> b!1110558 (= e!633379 (and e!633380 mapRes!43258))))

(declare-fun condMapEmpty!43258 () Bool)

(declare-fun mapDefault!43258 () ValueCell!13104)

(assert (=> b!1110558 (= condMapEmpty!43258 (= (arr!34710 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13104)) mapDefault!43258)))))

(assert (= (and start!97432 res!741181) b!1110556))

(assert (= (and b!1110556 res!741189) b!1110551))

(assert (= (and b!1110551 res!741187) b!1110553))

(assert (= (and b!1110553 res!741179) b!1110548))

(assert (= (and b!1110548 res!741188) b!1110544))

(assert (= (and b!1110544 res!741180) b!1110549))

(assert (= (and b!1110549 res!741182) b!1110546))

(assert (= (and b!1110546 res!741184) b!1110552))

(assert (= (and b!1110552 res!741185) b!1110554))

(assert (= (and b!1110554 res!741183) b!1110547))

(assert (= (and b!1110547 (not res!741186)) b!1110550))

(assert (= (and b!1110550 c!109202) b!1110545))

(assert (= (and b!1110550 (not c!109202)) b!1110555))

(assert (= (or b!1110545 b!1110555) bm!46796))

(assert (= (or b!1110545 b!1110555) bm!46795))

(assert (= (and b!1110558 condMapEmpty!43258) mapIsEmpty!43258))

(assert (= (and b!1110558 (not condMapEmpty!43258)) mapNonEmpty!43258))

(get-info :version)

(assert (= (and mapNonEmpty!43258 ((_ is ValueCellFull!13104) mapValue!43258)) b!1110543))

(assert (= (and b!1110558 ((_ is ValueCellFull!13104) mapDefault!43258)) b!1110557))

(assert (= start!97432 b!1110558))

(declare-fun b_lambda!18423 () Bool)

(assert (=> (not b_lambda!18423) (not bm!46796)))

(declare-fun t!34765 () Bool)

(declare-fun tb!8241 () Bool)

(assert (=> (and start!97432 (= defaultEntry!1004 defaultEntry!1004) t!34765) tb!8241))

(declare-fun result!17035 () Bool)

(assert (=> tb!8241 (= result!17035 tp_is_empty!27627)))

(assert (=> bm!46796 t!34765))

(declare-fun b_and!37593 () Bool)

(assert (= b_and!37591 (and (=> t!34765 result!17035) b_and!37593)))

(declare-fun m!1028661 () Bool)

(assert (=> b!1110554 m!1028661))

(declare-fun m!1028663 () Bool)

(assert (=> b!1110546 m!1028663))

(declare-fun m!1028665 () Bool)

(assert (=> b!1110548 m!1028665))

(declare-fun m!1028667 () Bool)

(assert (=> b!1110553 m!1028667))

(declare-fun m!1028669 () Bool)

(assert (=> mapNonEmpty!43258 m!1028669))

(declare-fun m!1028671 () Bool)

(assert (=> b!1110549 m!1028671))

(declare-fun m!1028673 () Bool)

(assert (=> b!1110550 m!1028673))

(declare-fun m!1028675 () Bool)

(assert (=> start!97432 m!1028675))

(declare-fun m!1028677 () Bool)

(assert (=> start!97432 m!1028677))

(declare-fun m!1028679 () Bool)

(assert (=> bm!46796 m!1028679))

(declare-fun m!1028681 () Bool)

(assert (=> bm!46796 m!1028681))

(declare-fun m!1028683 () Bool)

(assert (=> bm!46796 m!1028683))

(declare-fun m!1028685 () Bool)

(assert (=> b!1110556 m!1028685))

(declare-fun m!1028687 () Bool)

(assert (=> bm!46795 m!1028687))

(declare-fun m!1028689 () Bool)

(assert (=> b!1110547 m!1028689))

(declare-fun m!1028691 () Bool)

(assert (=> b!1110547 m!1028691))

(declare-fun m!1028693 () Bool)

(assert (=> b!1110545 m!1028693))

(declare-fun m!1028695 () Bool)

(assert (=> b!1110552 m!1028695))

(declare-fun m!1028697 () Bool)

(assert (=> b!1110552 m!1028697))

(check-sat b_and!37593 (not b!1110548) (not b!1110556) (not bm!46795) (not b!1110552) (not b!1110547) (not b!1110550) (not bm!46796) (not b!1110549) (not start!97432) (not b!1110554) (not mapNonEmpty!43258) (not b!1110553) (not b_lambda!18423) tp_is_empty!27627 (not b_next!23367) (not b!1110545))
(check-sat b_and!37593 (not b_next!23367))
