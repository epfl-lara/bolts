; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97408 () Bool)

(assert start!97408)

(declare-fun b_free!23343 () Bool)

(declare-fun b_next!23343 () Bool)

(assert (=> start!97408 (= b_free!23343 (not b_next!23343))))

(declare-fun tp!82329 () Bool)

(declare-fun b_and!37543 () Bool)

(assert (=> start!97408 (= tp!82329 b_and!37543)))

(declare-fun b!1109943 () Bool)

(declare-fun res!740791 () Bool)

(declare-fun e!633090 () Bool)

(assert (=> b!1109943 (=> (not res!740791) (not e!633090))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72072 0))(
  ( (array!72073 (arr!34685 (Array (_ BitVec 32) (_ BitVec 64))) (size!35222 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72072)

(assert (=> b!1109943 (= res!740791 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35222 _keys!1208))))))

(declare-fun b!1109944 () Bool)

(declare-fun e!633093 () Bool)

(assert (=> b!1109944 (= e!633093 true)))

(declare-fun e!633092 () Bool)

(assert (=> b!1109944 e!633092))

(declare-fun c!109166 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1109944 (= c!109166 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!41931 0))(
  ( (V!41932 (val!13858 Int)) )
))
(declare-fun zeroValue!944 () V!41931)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((ValueCell!13092 0))(
  ( (ValueCellFull!13092 (v!16492 V!41931)) (EmptyCell!13092) )
))
(declare-datatypes ((array!72074 0))(
  ( (array!72075 (arr!34686 (Array (_ BitVec 32) ValueCell!13092)) (size!35223 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72074)

(declare-fun minValue!944 () V!41931)

(declare-datatypes ((Unit!36345 0))(
  ( (Unit!36346) )
))
(declare-fun lt!496057 () Unit!36345)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!279 (array!72072 array!72074 (_ BitVec 32) (_ BitVec 32) V!41931 V!41931 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36345)

(assert (=> b!1109944 (= lt!496057 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!279 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109945 () Bool)

(declare-fun res!740789 () Bool)

(assert (=> b!1109945 (=> (not res!740789) (not e!633090))))

(assert (=> b!1109945 (= res!740789 (= (select (arr!34685 _keys!1208) i!673) k0!934))))

(declare-fun b!1109946 () Bool)

(declare-datatypes ((tuple2!17588 0))(
  ( (tuple2!17589 (_1!8804 (_ BitVec 64)) (_2!8804 V!41931)) )
))
(declare-datatypes ((List!24324 0))(
  ( (Nil!24321) (Cons!24320 (h!25529 tuple2!17588) (t!34720 List!24324)) )
))
(declare-datatypes ((ListLongMap!15569 0))(
  ( (ListLongMap!15570 (toList!7800 List!24324)) )
))
(declare-fun call!46726 () ListLongMap!15569)

(declare-fun call!46727 () ListLongMap!15569)

(declare-fun -!1028 (ListLongMap!15569 (_ BitVec 64)) ListLongMap!15569)

(assert (=> b!1109946 (= e!633092 (= call!46727 (-!1028 call!46726 k0!934)))))

(declare-fun b!1109947 () Bool)

(declare-fun res!740793 () Bool)

(assert (=> b!1109947 (=> (not res!740793) (not e!633090))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1109947 (= res!740793 (validMask!0 mask!1564))))

(declare-fun b!1109948 () Bool)

(declare-fun e!633095 () Bool)

(assert (=> b!1109948 (= e!633095 (not e!633093))))

(declare-fun res!740786 () Bool)

(assert (=> b!1109948 (=> res!740786 e!633093)))

(assert (=> b!1109948 (= res!740786 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35222 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72072 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1109948 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!496058 () Unit!36345)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72072 (_ BitVec 64) (_ BitVec 32)) Unit!36345)

(assert (=> b!1109948 (= lt!496058 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1109949 () Bool)

(declare-fun res!740787 () Bool)

(assert (=> b!1109949 (=> (not res!740787) (not e!633090))))

(assert (=> b!1109949 (= res!740787 (and (= (size!35223 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35222 _keys!1208) (size!35223 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1109950 () Bool)

(declare-fun e!633091 () Bool)

(declare-fun tp_is_empty!27603 () Bool)

(assert (=> b!1109950 (= e!633091 tp_is_empty!27603)))

(declare-fun b!1109951 () Bool)

(assert (=> b!1109951 (= e!633090 e!633095)))

(declare-fun res!740790 () Bool)

(assert (=> b!1109951 (=> (not res!740790) (not e!633095))))

(declare-fun lt!496059 () array!72072)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72072 (_ BitVec 32)) Bool)

(assert (=> b!1109951 (= res!740790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496059 mask!1564))))

(assert (=> b!1109951 (= lt!496059 (array!72073 (store (arr!34685 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35222 _keys!1208)))))

(declare-fun b!1109952 () Bool)

(declare-fun e!633089 () Bool)

(assert (=> b!1109952 (= e!633089 tp_is_empty!27603)))

(declare-fun b!1109953 () Bool)

(assert (=> b!1109953 (= e!633092 (= call!46727 call!46726))))

(declare-fun mapIsEmpty!43222 () Bool)

(declare-fun mapRes!43222 () Bool)

(assert (=> mapIsEmpty!43222 mapRes!43222))

(declare-fun res!740783 () Bool)

(assert (=> start!97408 (=> (not res!740783) (not e!633090))))

(assert (=> start!97408 (= res!740783 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35222 _keys!1208))))))

(assert (=> start!97408 e!633090))

(assert (=> start!97408 tp_is_empty!27603))

(declare-fun array_inv!26556 (array!72072) Bool)

(assert (=> start!97408 (array_inv!26556 _keys!1208)))

(assert (=> start!97408 true))

(assert (=> start!97408 tp!82329))

(declare-fun e!633094 () Bool)

(declare-fun array_inv!26557 (array!72074) Bool)

(assert (=> start!97408 (and (array_inv!26557 _values!996) e!633094)))

(declare-fun b!1109954 () Bool)

(declare-fun res!740784 () Bool)

(assert (=> b!1109954 (=> (not res!740784) (not e!633090))))

(assert (=> b!1109954 (= res!740784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!43222 () Bool)

(declare-fun tp!82328 () Bool)

(assert (=> mapNonEmpty!43222 (= mapRes!43222 (and tp!82328 e!633089))))

(declare-fun mapValue!43222 () ValueCell!13092)

(declare-fun mapRest!43222 () (Array (_ BitVec 32) ValueCell!13092))

(declare-fun mapKey!43222 () (_ BitVec 32))

(assert (=> mapNonEmpty!43222 (= (arr!34686 _values!996) (store mapRest!43222 mapKey!43222 mapValue!43222))))

(declare-fun bm!46723 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4263 (array!72072 array!72074 (_ BitVec 32) (_ BitVec 32) V!41931 V!41931 (_ BitVec 32) Int) ListLongMap!15569)

(declare-fun dynLambda!2386 (Int (_ BitVec 64)) V!41931)

(assert (=> bm!46723 (= call!46727 (getCurrentListMapNoExtraKeys!4263 lt!496059 (array!72075 (store (arr!34686 _values!996) i!673 (ValueCellFull!13092 (dynLambda!2386 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35223 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109955 () Bool)

(declare-fun res!740788 () Bool)

(assert (=> b!1109955 (=> (not res!740788) (not e!633095))))

(declare-datatypes ((List!24325 0))(
  ( (Nil!24322) (Cons!24321 (h!25530 (_ BitVec 64)) (t!34721 List!24325)) )
))
(declare-fun arrayNoDuplicates!0 (array!72072 (_ BitVec 32) List!24325) Bool)

(assert (=> b!1109955 (= res!740788 (arrayNoDuplicates!0 lt!496059 #b00000000000000000000000000000000 Nil!24322))))

(declare-fun b!1109956 () Bool)

(declare-fun res!740792 () Bool)

(assert (=> b!1109956 (=> (not res!740792) (not e!633090))))

(assert (=> b!1109956 (= res!740792 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24322))))

(declare-fun bm!46724 () Bool)

(assert (=> bm!46724 (= call!46726 (getCurrentListMapNoExtraKeys!4263 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109957 () Bool)

(declare-fun res!740785 () Bool)

(assert (=> b!1109957 (=> (not res!740785) (not e!633090))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1109957 (= res!740785 (validKeyInArray!0 k0!934))))

(declare-fun b!1109958 () Bool)

(assert (=> b!1109958 (= e!633094 (and e!633091 mapRes!43222))))

(declare-fun condMapEmpty!43222 () Bool)

(declare-fun mapDefault!43222 () ValueCell!13092)

(assert (=> b!1109958 (= condMapEmpty!43222 (= (arr!34686 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13092)) mapDefault!43222)))))

(assert (= (and start!97408 res!740783) b!1109947))

(assert (= (and b!1109947 res!740793) b!1109949))

(assert (= (and b!1109949 res!740787) b!1109954))

(assert (= (and b!1109954 res!740784) b!1109956))

(assert (= (and b!1109956 res!740792) b!1109943))

(assert (= (and b!1109943 res!740791) b!1109957))

(assert (= (and b!1109957 res!740785) b!1109945))

(assert (= (and b!1109945 res!740789) b!1109951))

(assert (= (and b!1109951 res!740790) b!1109955))

(assert (= (and b!1109955 res!740788) b!1109948))

(assert (= (and b!1109948 (not res!740786)) b!1109944))

(assert (= (and b!1109944 c!109166) b!1109946))

(assert (= (and b!1109944 (not c!109166)) b!1109953))

(assert (= (or b!1109946 b!1109953) bm!46723))

(assert (= (or b!1109946 b!1109953) bm!46724))

(assert (= (and b!1109958 condMapEmpty!43222) mapIsEmpty!43222))

(assert (= (and b!1109958 (not condMapEmpty!43222)) mapNonEmpty!43222))

(get-info :version)

(assert (= (and mapNonEmpty!43222 ((_ is ValueCellFull!13092) mapValue!43222)) b!1109952))

(assert (= (and b!1109958 ((_ is ValueCellFull!13092) mapDefault!43222)) b!1109950))

(assert (= start!97408 b!1109958))

(declare-fun b_lambda!18399 () Bool)

(assert (=> (not b_lambda!18399) (not bm!46723)))

(declare-fun t!34719 () Bool)

(declare-fun tb!8217 () Bool)

(assert (=> (and start!97408 (= defaultEntry!1004 defaultEntry!1004) t!34719) tb!8217))

(declare-fun result!16987 () Bool)

(assert (=> tb!8217 (= result!16987 tp_is_empty!27603)))

(assert (=> bm!46723 t!34719))

(declare-fun b_and!37545 () Bool)

(assert (= b_and!37543 (and (=> t!34719 result!16987) b_and!37545)))

(declare-fun m!1028205 () Bool)

(assert (=> b!1109948 m!1028205))

(declare-fun m!1028207 () Bool)

(assert (=> b!1109948 m!1028207))

(declare-fun m!1028209 () Bool)

(assert (=> b!1109956 m!1028209))

(declare-fun m!1028211 () Bool)

(assert (=> b!1109957 m!1028211))

(declare-fun m!1028213 () Bool)

(assert (=> start!97408 m!1028213))

(declare-fun m!1028215 () Bool)

(assert (=> start!97408 m!1028215))

(declare-fun m!1028217 () Bool)

(assert (=> bm!46723 m!1028217))

(declare-fun m!1028219 () Bool)

(assert (=> bm!46723 m!1028219))

(declare-fun m!1028221 () Bool)

(assert (=> bm!46723 m!1028221))

(declare-fun m!1028223 () Bool)

(assert (=> b!1109946 m!1028223))

(declare-fun m!1028225 () Bool)

(assert (=> bm!46724 m!1028225))

(declare-fun m!1028227 () Bool)

(assert (=> b!1109951 m!1028227))

(declare-fun m!1028229 () Bool)

(assert (=> b!1109951 m!1028229))

(declare-fun m!1028231 () Bool)

(assert (=> b!1109947 m!1028231))

(declare-fun m!1028233 () Bool)

(assert (=> b!1109954 m!1028233))

(declare-fun m!1028235 () Bool)

(assert (=> b!1109955 m!1028235))

(declare-fun m!1028237 () Bool)

(assert (=> b!1109945 m!1028237))

(declare-fun m!1028239 () Bool)

(assert (=> b!1109944 m!1028239))

(declare-fun m!1028241 () Bool)

(assert (=> mapNonEmpty!43222 m!1028241))

(check-sat (not b!1109956) (not b!1109951) b_and!37545 (not bm!46723) (not bm!46724) tp_is_empty!27603 (not b!1109954) (not start!97408) (not b_next!23343) (not b!1109948) (not b!1109955) (not mapNonEmpty!43222) (not b!1109944) (not b!1109947) (not b!1109957) (not b_lambda!18399) (not b!1109946))
(check-sat b_and!37545 (not b_next!23343))
