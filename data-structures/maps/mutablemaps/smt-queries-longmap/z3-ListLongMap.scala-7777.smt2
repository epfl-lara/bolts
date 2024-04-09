; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97444 () Bool)

(assert start!97444)

(declare-fun b_free!23379 () Bool)

(declare-fun b_next!23379 () Bool)

(assert (=> start!97444 (= b_free!23379 (not b_next!23379))))

(declare-fun tp!82437 () Bool)

(declare-fun b_and!37615 () Bool)

(assert (=> start!97444 (= tp!82437 b_and!37615)))

(declare-datatypes ((V!41979 0))(
  ( (V!41980 (val!13876 Int)) )
))
(declare-fun zeroValue!944 () V!41979)

(declare-fun bm!46831 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13110 0))(
  ( (ValueCellFull!13110 (v!16510 V!41979)) (EmptyCell!13110) )
))
(declare-datatypes ((array!72144 0))(
  ( (array!72145 (arr!34721 (Array (_ BitVec 32) ValueCell!13110)) (size!35258 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72144)

(declare-datatypes ((tuple2!17620 0))(
  ( (tuple2!17621 (_1!8820 (_ BitVec 64)) (_2!8820 V!41979)) )
))
(declare-datatypes ((List!24355 0))(
  ( (Nil!24352) (Cons!24351 (h!25560 tuple2!17620) (t!34787 List!24355)) )
))
(declare-datatypes ((ListLongMap!15601 0))(
  ( (ListLongMap!15602 (toList!7816 List!24355)) )
))
(declare-fun call!46835 () ListLongMap!15601)

(declare-fun minValue!944 () V!41979)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((array!72146 0))(
  ( (array!72147 (arr!34722 (Array (_ BitVec 32) (_ BitVec 64))) (size!35259 (_ BitVec 32))) )
))
(declare-fun lt!496220 () array!72146)

(declare-fun getCurrentListMapNoExtraKeys!4279 (array!72146 array!72144 (_ BitVec 32) (_ BitVec 32) V!41979 V!41979 (_ BitVec 32) Int) ListLongMap!15601)

(declare-fun dynLambda!2401 (Int (_ BitVec 64)) V!41979)

(assert (=> bm!46831 (= call!46835 (getCurrentListMapNoExtraKeys!4279 lt!496220 (array!72145 (store (arr!34721 _values!996) i!673 (ValueCellFull!13110 (dynLambda!2401 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35258 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110843 () Bool)

(declare-fun res!741380 () Bool)

(declare-fun e!633520 () Bool)

(assert (=> b!1110843 (=> (not res!741380) (not e!633520))))

(declare-fun _keys!1208 () array!72146)

(assert (=> b!1110843 (= res!741380 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35259 _keys!1208))))))

(declare-fun b!1110844 () Bool)

(declare-fun res!741387 () Bool)

(assert (=> b!1110844 (=> (not res!741387) (not e!633520))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1110844 (= res!741387 (= (select (arr!34722 _keys!1208) i!673) k0!934))))

(declare-fun bm!46832 () Bool)

(declare-fun call!46834 () ListLongMap!15601)

(assert (=> bm!46832 (= call!46834 (getCurrentListMapNoExtraKeys!4279 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110845 () Bool)

(declare-fun res!741386 () Bool)

(assert (=> b!1110845 (=> (not res!741386) (not e!633520))))

(assert (=> b!1110845 (= res!741386 (and (= (size!35258 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35259 _keys!1208) (size!35258 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1110846 () Bool)

(declare-fun e!633525 () Bool)

(assert (=> b!1110846 (= e!633525 (= call!46835 call!46834))))

(declare-fun b!1110847 () Bool)

(declare-fun e!633527 () Bool)

(assert (=> b!1110847 (= e!633520 e!633527)))

(declare-fun res!741379 () Bool)

(assert (=> b!1110847 (=> (not res!741379) (not e!633527))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72146 (_ BitVec 32)) Bool)

(assert (=> b!1110847 (= res!741379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496220 mask!1564))))

(assert (=> b!1110847 (= lt!496220 (array!72147 (store (arr!34722 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35259 _keys!1208)))))

(declare-fun b!1110848 () Bool)

(declare-fun res!741385 () Bool)

(assert (=> b!1110848 (=> (not res!741385) (not e!633520))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1110848 (= res!741385 (validMask!0 mask!1564))))

(declare-fun res!741378 () Bool)

(assert (=> start!97444 (=> (not res!741378) (not e!633520))))

(assert (=> start!97444 (= res!741378 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35259 _keys!1208))))))

(assert (=> start!97444 e!633520))

(declare-fun tp_is_empty!27639 () Bool)

(assert (=> start!97444 tp_is_empty!27639))

(declare-fun array_inv!26580 (array!72146) Bool)

(assert (=> start!97444 (array_inv!26580 _keys!1208)))

(assert (=> start!97444 true))

(assert (=> start!97444 tp!82437))

(declare-fun e!633524 () Bool)

(declare-fun array_inv!26581 (array!72144) Bool)

(assert (=> start!97444 (and (array_inv!26581 _values!996) e!633524)))

(declare-fun b!1110849 () Bool)

(declare-fun e!633521 () Bool)

(assert (=> b!1110849 (= e!633527 (not e!633521))))

(declare-fun res!741381 () Bool)

(assert (=> b!1110849 (=> res!741381 e!633521)))

(assert (=> b!1110849 (= res!741381 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35259 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72146 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1110849 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36373 0))(
  ( (Unit!36374) )
))
(declare-fun lt!496221 () Unit!36373)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72146 (_ BitVec 64) (_ BitVec 32)) Unit!36373)

(assert (=> b!1110849 (= lt!496221 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1110850 () Bool)

(declare-fun res!741384 () Bool)

(assert (=> b!1110850 (=> (not res!741384) (not e!633527))))

(declare-datatypes ((List!24356 0))(
  ( (Nil!24353) (Cons!24352 (h!25561 (_ BitVec 64)) (t!34788 List!24356)) )
))
(declare-fun arrayNoDuplicates!0 (array!72146 (_ BitVec 32) List!24356) Bool)

(assert (=> b!1110850 (= res!741384 (arrayNoDuplicates!0 lt!496220 #b00000000000000000000000000000000 Nil!24353))))

(declare-fun mapNonEmpty!43276 () Bool)

(declare-fun mapRes!43276 () Bool)

(declare-fun tp!82436 () Bool)

(declare-fun e!633526 () Bool)

(assert (=> mapNonEmpty!43276 (= mapRes!43276 (and tp!82436 e!633526))))

(declare-fun mapValue!43276 () ValueCell!13110)

(declare-fun mapRest!43276 () (Array (_ BitVec 32) ValueCell!13110))

(declare-fun mapKey!43276 () (_ BitVec 32))

(assert (=> mapNonEmpty!43276 (= (arr!34721 _values!996) (store mapRest!43276 mapKey!43276 mapValue!43276))))

(declare-fun mapIsEmpty!43276 () Bool)

(assert (=> mapIsEmpty!43276 mapRes!43276))

(declare-fun b!1110851 () Bool)

(declare-fun res!741382 () Bool)

(assert (=> b!1110851 (=> (not res!741382) (not e!633520))))

(assert (=> b!1110851 (= res!741382 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24353))))

(declare-fun b!1110852 () Bool)

(declare-fun res!741377 () Bool)

(assert (=> b!1110852 (=> (not res!741377) (not e!633520))))

(assert (=> b!1110852 (= res!741377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1110853 () Bool)

(declare-fun e!633523 () Bool)

(assert (=> b!1110853 (= e!633524 (and e!633523 mapRes!43276))))

(declare-fun condMapEmpty!43276 () Bool)

(declare-fun mapDefault!43276 () ValueCell!13110)

(assert (=> b!1110853 (= condMapEmpty!43276 (= (arr!34721 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13110)) mapDefault!43276)))))

(declare-fun b!1110854 () Bool)

(assert (=> b!1110854 (= e!633523 tp_is_empty!27639)))

(declare-fun b!1110855 () Bool)

(declare-fun res!741383 () Bool)

(assert (=> b!1110855 (=> (not res!741383) (not e!633520))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1110855 (= res!741383 (validKeyInArray!0 k0!934))))

(declare-fun b!1110856 () Bool)

(declare-fun -!1039 (ListLongMap!15601 (_ BitVec 64)) ListLongMap!15601)

(assert (=> b!1110856 (= e!633525 (= call!46835 (-!1039 call!46834 k0!934)))))

(declare-fun b!1110857 () Bool)

(assert (=> b!1110857 (= e!633521 true)))

(assert (=> b!1110857 e!633525))

(declare-fun c!109220 () Bool)

(assert (=> b!1110857 (= c!109220 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!496219 () Unit!36373)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!293 (array!72146 array!72144 (_ BitVec 32) (_ BitVec 32) V!41979 V!41979 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36373)

(assert (=> b!1110857 (= lt!496219 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!293 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110858 () Bool)

(assert (=> b!1110858 (= e!633526 tp_is_empty!27639)))

(assert (= (and start!97444 res!741378) b!1110848))

(assert (= (and b!1110848 res!741385) b!1110845))

(assert (= (and b!1110845 res!741386) b!1110852))

(assert (= (and b!1110852 res!741377) b!1110851))

(assert (= (and b!1110851 res!741382) b!1110843))

(assert (= (and b!1110843 res!741380) b!1110855))

(assert (= (and b!1110855 res!741383) b!1110844))

(assert (= (and b!1110844 res!741387) b!1110847))

(assert (= (and b!1110847 res!741379) b!1110850))

(assert (= (and b!1110850 res!741384) b!1110849))

(assert (= (and b!1110849 (not res!741381)) b!1110857))

(assert (= (and b!1110857 c!109220) b!1110856))

(assert (= (and b!1110857 (not c!109220)) b!1110846))

(assert (= (or b!1110856 b!1110846) bm!46832))

(assert (= (or b!1110856 b!1110846) bm!46831))

(assert (= (and b!1110853 condMapEmpty!43276) mapIsEmpty!43276))

(assert (= (and b!1110853 (not condMapEmpty!43276)) mapNonEmpty!43276))

(get-info :version)

(assert (= (and mapNonEmpty!43276 ((_ is ValueCellFull!13110) mapValue!43276)) b!1110858))

(assert (= (and b!1110853 ((_ is ValueCellFull!13110) mapDefault!43276)) b!1110854))

(assert (= start!97444 b!1110853))

(declare-fun b_lambda!18435 () Bool)

(assert (=> (not b_lambda!18435) (not bm!46831)))

(declare-fun t!34786 () Bool)

(declare-fun tb!8253 () Bool)

(assert (=> (and start!97444 (= defaultEntry!1004 defaultEntry!1004) t!34786) tb!8253))

(declare-fun result!17059 () Bool)

(assert (=> tb!8253 (= result!17059 tp_is_empty!27639)))

(assert (=> bm!46831 t!34786))

(declare-fun b_and!37617 () Bool)

(assert (= b_and!37615 (and (=> t!34786 result!17059) b_and!37617)))

(declare-fun m!1028889 () Bool)

(assert (=> b!1110851 m!1028889))

(declare-fun m!1028891 () Bool)

(assert (=> b!1110847 m!1028891))

(declare-fun m!1028893 () Bool)

(assert (=> b!1110847 m!1028893))

(declare-fun m!1028895 () Bool)

(assert (=> b!1110857 m!1028895))

(declare-fun m!1028897 () Bool)

(assert (=> b!1110849 m!1028897))

(declare-fun m!1028899 () Bool)

(assert (=> b!1110849 m!1028899))

(declare-fun m!1028901 () Bool)

(assert (=> bm!46831 m!1028901))

(declare-fun m!1028903 () Bool)

(assert (=> bm!46831 m!1028903))

(declare-fun m!1028905 () Bool)

(assert (=> bm!46831 m!1028905))

(declare-fun m!1028907 () Bool)

(assert (=> b!1110848 m!1028907))

(declare-fun m!1028909 () Bool)

(assert (=> b!1110850 m!1028909))

(declare-fun m!1028911 () Bool)

(assert (=> bm!46832 m!1028911))

(declare-fun m!1028913 () Bool)

(assert (=> mapNonEmpty!43276 m!1028913))

(declare-fun m!1028915 () Bool)

(assert (=> start!97444 m!1028915))

(declare-fun m!1028917 () Bool)

(assert (=> start!97444 m!1028917))

(declare-fun m!1028919 () Bool)

(assert (=> b!1110855 m!1028919))

(declare-fun m!1028921 () Bool)

(assert (=> b!1110852 m!1028921))

(declare-fun m!1028923 () Bool)

(assert (=> b!1110856 m!1028923))

(declare-fun m!1028925 () Bool)

(assert (=> b!1110844 m!1028925))

(check-sat (not start!97444) b_and!37617 tp_is_empty!27639 (not bm!46831) (not b!1110848) (not b!1110856) (not b!1110849) (not bm!46832) (not b!1110850) (not b!1110857) (not b!1110851) (not b!1110855) (not mapNonEmpty!43276) (not b_lambda!18435) (not b!1110847) (not b!1110852) (not b_next!23379))
(check-sat b_and!37617 (not b_next!23379))
