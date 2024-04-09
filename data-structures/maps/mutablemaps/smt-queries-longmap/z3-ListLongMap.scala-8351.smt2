; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101694 () Bool)

(assert start!101694)

(declare-fun b_free!26379 () Bool)

(declare-fun b_next!26379 () Bool)

(assert (=> start!101694 (= b_free!26379 (not b_next!26379))))

(declare-fun tp!92180 () Bool)

(declare-fun b_and!44011 () Bool)

(assert (=> start!101694 (= tp!92180 b_and!44011)))

(declare-fun b!1222900 () Bool)

(declare-fun e!694551 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((V!46571 0))(
  ( (V!46572 (val!15598 Int)) )
))
(declare-datatypes ((ValueCell!14832 0))(
  ( (ValueCellFull!14832 (v!18260 V!46571)) (EmptyCell!14832) )
))
(declare-datatypes ((array!78924 0))(
  ( (array!78925 (arr!38086 (Array (_ BitVec 32) ValueCell!14832)) (size!38623 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78924)

(assert (=> b!1222900 (= e!694551 (bvslt from!1455 (size!38623 _values!996)))))

(declare-datatypes ((array!78926 0))(
  ( (array!78927 (arr!38087 (Array (_ BitVec 32) (_ BitVec 64))) (size!38624 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78926)

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1222900 (not (= (select (arr!38087 _keys!1208) from!1455) k0!934))))

(declare-datatypes ((Unit!40433 0))(
  ( (Unit!40434) )
))
(declare-fun lt!556484 () Unit!40433)

(declare-fun e!694556 () Unit!40433)

(assert (=> b!1222900 (= lt!556484 e!694556)))

(declare-fun c!120294 () Bool)

(assert (=> b!1222900 (= c!120294 (= (select (arr!38087 _keys!1208) from!1455) k0!934))))

(declare-fun e!694555 () Bool)

(assert (=> b!1222900 e!694555))

(declare-fun res!812638 () Bool)

(assert (=> b!1222900 (=> (not res!812638) (not e!694555))))

(declare-datatypes ((tuple2!20236 0))(
  ( (tuple2!20237 (_1!10128 (_ BitVec 64)) (_2!10128 V!46571)) )
))
(declare-datatypes ((List!27049 0))(
  ( (Nil!27046) (Cons!27045 (h!28254 tuple2!20236) (t!40415 List!27049)) )
))
(declare-datatypes ((ListLongMap!18217 0))(
  ( (ListLongMap!18218 (toList!9124 List!27049)) )
))
(declare-fun lt!556476 () ListLongMap!18217)

(declare-fun lt!556482 () ListLongMap!18217)

(declare-fun lt!556483 () V!46571)

(declare-fun +!4088 (ListLongMap!18217 tuple2!20236) ListLongMap!18217)

(declare-fun get!19486 (ValueCell!14832 V!46571) V!46571)

(assert (=> b!1222900 (= res!812638 (= lt!556476 (+!4088 lt!556482 (tuple2!20237 (select (arr!38087 _keys!1208) from!1455) (get!19486 (select (arr!38086 _values!996) from!1455) lt!556483)))))))

(declare-fun mapNonEmpty!48520 () Bool)

(declare-fun mapRes!48520 () Bool)

(declare-fun tp!92181 () Bool)

(declare-fun e!694558 () Bool)

(assert (=> mapNonEmpty!48520 (= mapRes!48520 (and tp!92181 e!694558))))

(declare-fun mapRest!48520 () (Array (_ BitVec 32) ValueCell!14832))

(declare-fun mapValue!48520 () ValueCell!14832)

(declare-fun mapKey!48520 () (_ BitVec 32))

(assert (=> mapNonEmpty!48520 (= (arr!38086 _values!996) (store mapRest!48520 mapKey!48520 mapValue!48520))))

(declare-fun b!1222901 () Bool)

(declare-fun e!694550 () Bool)

(assert (=> b!1222901 (= e!694550 e!694551)))

(declare-fun res!812632 () Bool)

(assert (=> b!1222901 (=> res!812632 e!694551)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1222901 (= res!812632 (not (validKeyInArray!0 (select (arr!38087 _keys!1208) from!1455))))))

(declare-fun lt!556472 () ListLongMap!18217)

(assert (=> b!1222901 (= lt!556472 lt!556482)))

(declare-fun lt!556473 () ListLongMap!18217)

(declare-fun -!1966 (ListLongMap!18217 (_ BitVec 64)) ListLongMap!18217)

(assert (=> b!1222901 (= lt!556482 (-!1966 lt!556473 k0!934))))

(declare-fun zeroValue!944 () V!46571)

(declare-fun lt!556475 () array!78926)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46571)

(declare-fun lt!556477 () array!78924)

(declare-fun getCurrentListMapNoExtraKeys!5522 (array!78926 array!78924 (_ BitVec 32) (_ BitVec 32) V!46571 V!46571 (_ BitVec 32) Int) ListLongMap!18217)

(assert (=> b!1222901 (= lt!556472 (getCurrentListMapNoExtraKeys!5522 lt!556475 lt!556477 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1222901 (= lt!556473 (getCurrentListMapNoExtraKeys!5522 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!556474 () Unit!40433)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1168 (array!78926 array!78924 (_ BitVec 32) (_ BitVec 32) V!46571 V!46571 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40433)

(assert (=> b!1222901 (= lt!556474 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1168 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1222902 () Bool)

(declare-fun e!694549 () Bool)

(declare-fun tp_is_empty!31083 () Bool)

(assert (=> b!1222902 (= e!694549 tp_is_empty!31083)))

(declare-fun b!1222903 () Bool)

(declare-fun res!812640 () Bool)

(declare-fun e!694557 () Bool)

(assert (=> b!1222903 (=> (not res!812640) (not e!694557))))

(declare-datatypes ((List!27050 0))(
  ( (Nil!27047) (Cons!27046 (h!28255 (_ BitVec 64)) (t!40416 List!27050)) )
))
(declare-fun arrayNoDuplicates!0 (array!78926 (_ BitVec 32) List!27050) Bool)

(assert (=> b!1222903 (= res!812640 (arrayNoDuplicates!0 lt!556475 #b00000000000000000000000000000000 Nil!27047))))

(declare-fun b!1222904 () Bool)

(declare-fun e!694552 () Bool)

(assert (=> b!1222904 (= e!694552 e!694557)))

(declare-fun res!812631 () Bool)

(assert (=> b!1222904 (=> (not res!812631) (not e!694557))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78926 (_ BitVec 32)) Bool)

(assert (=> b!1222904 (= res!812631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!556475 mask!1564))))

(assert (=> b!1222904 (= lt!556475 (array!78927 (store (arr!38087 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38624 _keys!1208)))))

(declare-fun b!1222905 () Bool)

(declare-fun e!694559 () Bool)

(assert (=> b!1222905 (= e!694557 (not e!694559))))

(declare-fun res!812642 () Bool)

(assert (=> b!1222905 (=> res!812642 e!694559)))

(assert (=> b!1222905 (= res!812642 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78926 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1222905 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!556481 () Unit!40433)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78926 (_ BitVec 64) (_ BitVec 32)) Unit!40433)

(assert (=> b!1222905 (= lt!556481 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1222906 () Bool)

(declare-fun res!812637 () Bool)

(assert (=> b!1222906 (=> (not res!812637) (not e!694552))))

(assert (=> b!1222906 (= res!812637 (and (= (size!38623 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38624 _keys!1208) (size!38623 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1222907 () Bool)

(assert (=> b!1222907 (= e!694559 e!694550)))

(declare-fun res!812633 () Bool)

(assert (=> b!1222907 (=> res!812633 e!694550)))

(assert (=> b!1222907 (= res!812633 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1222907 (= lt!556476 (getCurrentListMapNoExtraKeys!5522 lt!556475 lt!556477 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1222907 (= lt!556477 (array!78925 (store (arr!38086 _values!996) i!673 (ValueCellFull!14832 lt!556483)) (size!38623 _values!996)))))

(declare-fun dynLambda!3418 (Int (_ BitVec 64)) V!46571)

(assert (=> b!1222907 (= lt!556483 (dynLambda!3418 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!556480 () ListLongMap!18217)

(assert (=> b!1222907 (= lt!556480 (getCurrentListMapNoExtraKeys!5522 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1222908 () Bool)

(declare-fun res!812634 () Bool)

(assert (=> b!1222908 (=> (not res!812634) (not e!694552))))

(assert (=> b!1222908 (= res!812634 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38624 _keys!1208))))))

(declare-fun res!812630 () Bool)

(assert (=> start!101694 (=> (not res!812630) (not e!694552))))

(assert (=> start!101694 (= res!812630 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38624 _keys!1208))))))

(assert (=> start!101694 e!694552))

(assert (=> start!101694 tp_is_empty!31083))

(declare-fun array_inv!28894 (array!78926) Bool)

(assert (=> start!101694 (array_inv!28894 _keys!1208)))

(assert (=> start!101694 true))

(assert (=> start!101694 tp!92180))

(declare-fun e!694548 () Bool)

(declare-fun array_inv!28895 (array!78924) Bool)

(assert (=> start!101694 (and (array_inv!28895 _values!996) e!694548)))

(declare-fun b!1222909 () Bool)

(declare-fun res!812641 () Bool)

(assert (=> b!1222909 (=> (not res!812641) (not e!694552))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1222909 (= res!812641 (validMask!0 mask!1564))))

(declare-fun b!1222910 () Bool)

(declare-fun Unit!40435 () Unit!40433)

(assert (=> b!1222910 (= e!694556 Unit!40435)))

(declare-fun lt!556478 () Unit!40433)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78926 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40433)

(assert (=> b!1222910 (= lt!556478 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1222910 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!556479 () Unit!40433)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78926 (_ BitVec 32) (_ BitVec 32)) Unit!40433)

(assert (=> b!1222910 (= lt!556479 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1222910 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27047)))

(declare-fun lt!556485 () Unit!40433)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78926 (_ BitVec 64) (_ BitVec 32) List!27050) Unit!40433)

(assert (=> b!1222910 (= lt!556485 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!27047))))

(assert (=> b!1222910 false))

(declare-fun b!1222911 () Bool)

(assert (=> b!1222911 (= e!694548 (and e!694549 mapRes!48520))))

(declare-fun condMapEmpty!48520 () Bool)

(declare-fun mapDefault!48520 () ValueCell!14832)

(assert (=> b!1222911 (= condMapEmpty!48520 (= (arr!38086 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14832)) mapDefault!48520)))))

(declare-fun b!1222912 () Bool)

(declare-fun e!694553 () Bool)

(assert (=> b!1222912 (= e!694555 e!694553)))

(declare-fun res!812636 () Bool)

(assert (=> b!1222912 (=> res!812636 e!694553)))

(assert (=> b!1222912 (= res!812636 (not (= (select (arr!38087 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1222913 () Bool)

(declare-fun Unit!40436 () Unit!40433)

(assert (=> b!1222913 (= e!694556 Unit!40436)))

(declare-fun b!1222914 () Bool)

(declare-fun res!812643 () Bool)

(assert (=> b!1222914 (=> (not res!812643) (not e!694552))))

(assert (=> b!1222914 (= res!812643 (validKeyInArray!0 k0!934))))

(declare-fun b!1222915 () Bool)

(assert (=> b!1222915 (= e!694553 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1222916 () Bool)

(assert (=> b!1222916 (= e!694558 tp_is_empty!31083)))

(declare-fun b!1222917 () Bool)

(declare-fun res!812635 () Bool)

(assert (=> b!1222917 (=> (not res!812635) (not e!694552))))

(assert (=> b!1222917 (= res!812635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1222918 () Bool)

(declare-fun res!812639 () Bool)

(assert (=> b!1222918 (=> (not res!812639) (not e!694552))))

(assert (=> b!1222918 (= res!812639 (= (select (arr!38087 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!48520 () Bool)

(assert (=> mapIsEmpty!48520 mapRes!48520))

(declare-fun b!1222919 () Bool)

(declare-fun res!812644 () Bool)

(assert (=> b!1222919 (=> (not res!812644) (not e!694552))))

(assert (=> b!1222919 (= res!812644 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27047))))

(assert (= (and start!101694 res!812630) b!1222909))

(assert (= (and b!1222909 res!812641) b!1222906))

(assert (= (and b!1222906 res!812637) b!1222917))

(assert (= (and b!1222917 res!812635) b!1222919))

(assert (= (and b!1222919 res!812644) b!1222908))

(assert (= (and b!1222908 res!812634) b!1222914))

(assert (= (and b!1222914 res!812643) b!1222918))

(assert (= (and b!1222918 res!812639) b!1222904))

(assert (= (and b!1222904 res!812631) b!1222903))

(assert (= (and b!1222903 res!812640) b!1222905))

(assert (= (and b!1222905 (not res!812642)) b!1222907))

(assert (= (and b!1222907 (not res!812633)) b!1222901))

(assert (= (and b!1222901 (not res!812632)) b!1222900))

(assert (= (and b!1222900 res!812638) b!1222912))

(assert (= (and b!1222912 (not res!812636)) b!1222915))

(assert (= (and b!1222900 c!120294) b!1222910))

(assert (= (and b!1222900 (not c!120294)) b!1222913))

(assert (= (and b!1222911 condMapEmpty!48520) mapIsEmpty!48520))

(assert (= (and b!1222911 (not condMapEmpty!48520)) mapNonEmpty!48520))

(get-info :version)

(assert (= (and mapNonEmpty!48520 ((_ is ValueCellFull!14832) mapValue!48520)) b!1222916))

(assert (= (and b!1222911 ((_ is ValueCellFull!14832) mapDefault!48520)) b!1222902))

(assert (= start!101694 b!1222911))

(declare-fun b_lambda!22331 () Bool)

(assert (=> (not b_lambda!22331) (not b!1222907)))

(declare-fun t!40414 () Bool)

(declare-fun tb!11187 () Bool)

(assert (=> (and start!101694 (= defaultEntry!1004 defaultEntry!1004) t!40414) tb!11187))

(declare-fun result!22977 () Bool)

(assert (=> tb!11187 (= result!22977 tp_is_empty!31083)))

(assert (=> b!1222907 t!40414))

(declare-fun b_and!44013 () Bool)

(assert (= b_and!44011 (and (=> t!40414 result!22977) b_and!44013)))

(declare-fun m!1127891 () Bool)

(assert (=> mapNonEmpty!48520 m!1127891))

(declare-fun m!1127893 () Bool)

(assert (=> b!1222900 m!1127893))

(declare-fun m!1127895 () Bool)

(assert (=> b!1222900 m!1127895))

(assert (=> b!1222900 m!1127895))

(declare-fun m!1127897 () Bool)

(assert (=> b!1222900 m!1127897))

(declare-fun m!1127899 () Bool)

(assert (=> b!1222900 m!1127899))

(declare-fun m!1127901 () Bool)

(assert (=> b!1222917 m!1127901))

(declare-fun m!1127903 () Bool)

(assert (=> b!1222904 m!1127903))

(declare-fun m!1127905 () Bool)

(assert (=> b!1222904 m!1127905))

(declare-fun m!1127907 () Bool)

(assert (=> b!1222903 m!1127907))

(assert (=> b!1222912 m!1127893))

(declare-fun m!1127909 () Bool)

(assert (=> b!1222905 m!1127909))

(declare-fun m!1127911 () Bool)

(assert (=> b!1222905 m!1127911))

(declare-fun m!1127913 () Bool)

(assert (=> start!101694 m!1127913))

(declare-fun m!1127915 () Bool)

(assert (=> start!101694 m!1127915))

(declare-fun m!1127917 () Bool)

(assert (=> b!1222914 m!1127917))

(declare-fun m!1127919 () Bool)

(assert (=> b!1222901 m!1127919))

(declare-fun m!1127921 () Bool)

(assert (=> b!1222901 m!1127921))

(declare-fun m!1127923 () Bool)

(assert (=> b!1222901 m!1127923))

(declare-fun m!1127925 () Bool)

(assert (=> b!1222901 m!1127925))

(assert (=> b!1222901 m!1127893))

(declare-fun m!1127927 () Bool)

(assert (=> b!1222901 m!1127927))

(assert (=> b!1222901 m!1127893))

(declare-fun m!1127929 () Bool)

(assert (=> b!1222918 m!1127929))

(declare-fun m!1127931 () Bool)

(assert (=> b!1222910 m!1127931))

(declare-fun m!1127933 () Bool)

(assert (=> b!1222910 m!1127933))

(declare-fun m!1127935 () Bool)

(assert (=> b!1222910 m!1127935))

(declare-fun m!1127937 () Bool)

(assert (=> b!1222910 m!1127937))

(declare-fun m!1127939 () Bool)

(assert (=> b!1222910 m!1127939))

(declare-fun m!1127941 () Bool)

(assert (=> b!1222909 m!1127941))

(declare-fun m!1127943 () Bool)

(assert (=> b!1222919 m!1127943))

(declare-fun m!1127945 () Bool)

(assert (=> b!1222915 m!1127945))

(declare-fun m!1127947 () Bool)

(assert (=> b!1222907 m!1127947))

(declare-fun m!1127949 () Bool)

(assert (=> b!1222907 m!1127949))

(declare-fun m!1127951 () Bool)

(assert (=> b!1222907 m!1127951))

(declare-fun m!1127953 () Bool)

(assert (=> b!1222907 m!1127953))

(check-sat (not b!1222904) (not b!1222915) (not b!1222919) tp_is_empty!31083 (not b_next!26379) (not start!101694) (not b!1222900) (not b!1222914) (not b!1222901) (not mapNonEmpty!48520) b_and!44013 (not b!1222909) (not b!1222905) (not b!1222903) (not b!1222917) (not b_lambda!22331) (not b!1222910) (not b!1222907))
(check-sat b_and!44013 (not b_next!26379))
