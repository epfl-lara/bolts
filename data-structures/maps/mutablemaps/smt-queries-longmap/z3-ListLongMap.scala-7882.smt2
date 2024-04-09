; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98074 () Bool)

(assert start!98074)

(declare-fun b_free!23739 () Bool)

(declare-fun b_next!23739 () Bool)

(assert (=> start!98074 (= b_free!23739 (not b_next!23739))))

(declare-fun tp!83922 () Bool)

(declare-fun b_and!38283 () Bool)

(assert (=> start!98074 (= tp!83922 b_and!38283)))

(declare-fun b!1125230 () Bool)

(declare-fun res!751949 () Bool)

(declare-fun e!640561 () Bool)

(assert (=> b!1125230 (=> (not res!751949) (not e!640561))))

(declare-datatypes ((array!73360 0))(
  ( (array!73361 (arr!35329 (Array (_ BitVec 32) (_ BitVec 64))) (size!35866 (_ BitVec 32))) )
))
(declare-fun lt!499754 () array!73360)

(declare-datatypes ((List!24744 0))(
  ( (Nil!24741) (Cons!24740 (h!25949 (_ BitVec 64)) (t!35482 List!24744)) )
))
(declare-fun arrayNoDuplicates!0 (array!73360 (_ BitVec 32) List!24744) Bool)

(assert (=> b!1125230 (= res!751949 (arrayNoDuplicates!0 lt!499754 #b00000000000000000000000000000000 Nil!24741))))

(declare-fun b!1125231 () Bool)

(declare-fun e!640566 () Bool)

(declare-fun tp_is_empty!28269 () Bool)

(assert (=> b!1125231 (= e!640566 tp_is_empty!28269)))

(declare-fun mapNonEmpty!44221 () Bool)

(declare-fun mapRes!44221 () Bool)

(declare-fun tp!83921 () Bool)

(assert (=> mapNonEmpty!44221 (= mapRes!44221 (and tp!83921 e!640566))))

(declare-datatypes ((V!42819 0))(
  ( (V!42820 (val!14191 Int)) )
))
(declare-datatypes ((ValueCell!13425 0))(
  ( (ValueCellFull!13425 (v!16825 V!42819)) (EmptyCell!13425) )
))
(declare-fun mapRest!44221 () (Array (_ BitVec 32) ValueCell!13425))

(declare-fun mapKey!44221 () (_ BitVec 32))

(declare-fun mapValue!44221 () ValueCell!13425)

(declare-datatypes ((array!73362 0))(
  ( (array!73363 (arr!35330 (Array (_ BitVec 32) ValueCell!13425)) (size!35867 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73362)

(assert (=> mapNonEmpty!44221 (= (arr!35330 _values!996) (store mapRest!44221 mapKey!44221 mapValue!44221))))

(declare-fun b!1125233 () Bool)

(declare-fun res!751956 () Bool)

(declare-fun e!640570 () Bool)

(assert (=> b!1125233 (=> (not res!751956) (not e!640570))))

(declare-fun _keys!1208 () array!73360)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73360 (_ BitVec 32)) Bool)

(assert (=> b!1125233 (= res!751956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1125234 () Bool)

(declare-fun e!640568 () Bool)

(declare-datatypes ((tuple2!17914 0))(
  ( (tuple2!17915 (_1!8967 (_ BitVec 64)) (_2!8967 V!42819)) )
))
(declare-datatypes ((List!24745 0))(
  ( (Nil!24742) (Cons!24741 (h!25950 tuple2!17914) (t!35483 List!24745)) )
))
(declare-datatypes ((ListLongMap!15895 0))(
  ( (ListLongMap!15896 (toList!7963 List!24745)) )
))
(declare-fun call!47501 () ListLongMap!15895)

(declare-fun call!47500 () ListLongMap!15895)

(assert (=> b!1125234 (= e!640568 (= call!47501 call!47500))))

(declare-fun zeroValue!944 () V!42819)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!499761 () array!73362)

(declare-fun minValue!944 () V!42819)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!47497 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4422 (array!73360 array!73362 (_ BitVec 32) (_ BitVec 32) V!42819 V!42819 (_ BitVec 32) Int) ListLongMap!15895)

(assert (=> bm!47497 (= call!47501 (getCurrentListMapNoExtraKeys!4422 lt!499754 lt!499761 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44221 () Bool)

(assert (=> mapIsEmpty!44221 mapRes!44221))

(declare-fun b!1125235 () Bool)

(declare-fun res!751947 () Bool)

(assert (=> b!1125235 (=> (not res!751947) (not e!640570))))

(assert (=> b!1125235 (= res!751947 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24741))))

(declare-fun b!1125236 () Bool)

(declare-fun res!751952 () Bool)

(assert (=> b!1125236 (=> (not res!751952) (not e!640570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1125236 (= res!751952 (validMask!0 mask!1564))))

(declare-fun b!1125237 () Bool)

(assert (=> b!1125237 (= e!640570 e!640561)))

(declare-fun res!751958 () Bool)

(assert (=> b!1125237 (=> (not res!751958) (not e!640561))))

(assert (=> b!1125237 (= res!751958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499754 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1125237 (= lt!499754 (array!73361 (store (arr!35329 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35866 _keys!1208)))))

(declare-fun b!1125238 () Bool)

(declare-fun e!640571 () Bool)

(declare-fun e!640569 () Bool)

(assert (=> b!1125238 (= e!640571 e!640569)))

(declare-fun res!751950 () Bool)

(assert (=> b!1125238 (=> res!751950 e!640569)))

(assert (=> b!1125238 (= res!751950 (not (= from!1455 i!673)))))

(declare-fun lt!499756 () ListLongMap!15895)

(assert (=> b!1125238 (= lt!499756 (getCurrentListMapNoExtraKeys!4422 lt!499754 lt!499761 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2507 (Int (_ BitVec 64)) V!42819)

(assert (=> b!1125238 (= lt!499761 (array!73363 (store (arr!35330 _values!996) i!673 (ValueCellFull!13425 (dynLambda!2507 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35867 _values!996)))))

(declare-fun lt!499760 () ListLongMap!15895)

(assert (=> b!1125238 (= lt!499760 (getCurrentListMapNoExtraKeys!4422 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1125239 () Bool)

(declare-fun res!751951 () Bool)

(declare-fun e!640565 () Bool)

(assert (=> b!1125239 (=> res!751951 e!640565)))

(assert (=> b!1125239 (= res!751951 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1125240 () Bool)

(declare-fun res!751954 () Bool)

(assert (=> b!1125240 (=> (not res!751954) (not e!640570))))

(assert (=> b!1125240 (= res!751954 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35866 _keys!1208))))))

(declare-fun b!1125241 () Bool)

(declare-fun e!640563 () Bool)

(assert (=> b!1125241 (= e!640563 e!640565)))

(declare-fun res!751959 () Bool)

(assert (=> b!1125241 (=> res!751959 e!640565)))

(declare-fun lt!499755 () ListLongMap!15895)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6474 (ListLongMap!15895 (_ BitVec 64)) Bool)

(assert (=> b!1125241 (= res!751959 (not (contains!6474 lt!499755 k0!934)))))

(assert (=> b!1125241 (= lt!499755 (getCurrentListMapNoExtraKeys!4422 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125242 () Bool)

(assert (=> b!1125242 (= e!640569 e!640563)))

(declare-fun res!751948 () Bool)

(assert (=> b!1125242 (=> res!751948 e!640563)))

(assert (=> b!1125242 (= res!751948 (not (= (select (arr!35329 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1125242 e!640568))

(declare-fun c!109559 () Bool)

(assert (=> b!1125242 (= c!109559 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36823 0))(
  ( (Unit!36824) )
))
(declare-fun lt!499758 () Unit!36823)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!364 (array!73360 array!73362 (_ BitVec 32) (_ BitVec 32) V!42819 V!42819 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36823)

(assert (=> b!1125242 (= lt!499758 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!364 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125243 () Bool)

(declare-fun res!751953 () Bool)

(assert (=> b!1125243 (=> (not res!751953) (not e!640570))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1125243 (= res!751953 (validKeyInArray!0 k0!934))))

(declare-fun b!1125244 () Bool)

(declare-fun -!1111 (ListLongMap!15895 (_ BitVec 64)) ListLongMap!15895)

(assert (=> b!1125244 (= e!640568 (= call!47501 (-!1111 call!47500 k0!934)))))

(declare-fun bm!47498 () Bool)

(assert (=> bm!47498 (= call!47500 (getCurrentListMapNoExtraKeys!4422 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125245 () Bool)

(declare-fun res!751946 () Bool)

(assert (=> b!1125245 (=> (not res!751946) (not e!640570))))

(assert (=> b!1125245 (= res!751946 (= (select (arr!35329 _keys!1208) i!673) k0!934))))

(declare-fun b!1125246 () Bool)

(declare-fun e!640567 () Bool)

(assert (=> b!1125246 (= e!640567 tp_is_empty!28269)))

(declare-fun b!1125232 () Bool)

(assert (=> b!1125232 (= e!640561 (not e!640571))))

(declare-fun res!751945 () Bool)

(assert (=> b!1125232 (=> res!751945 e!640571)))

(assert (=> b!1125232 (= res!751945 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73360 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1125232 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!499757 () Unit!36823)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73360 (_ BitVec 64) (_ BitVec 32)) Unit!36823)

(assert (=> b!1125232 (= lt!499757 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!751955 () Bool)

(assert (=> start!98074 (=> (not res!751955) (not e!640570))))

(assert (=> start!98074 (= res!751955 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35866 _keys!1208))))))

(assert (=> start!98074 e!640570))

(assert (=> start!98074 tp_is_empty!28269))

(declare-fun array_inv!26990 (array!73360) Bool)

(assert (=> start!98074 (array_inv!26990 _keys!1208)))

(assert (=> start!98074 true))

(assert (=> start!98074 tp!83922))

(declare-fun e!640564 () Bool)

(declare-fun array_inv!26991 (array!73362) Bool)

(assert (=> start!98074 (and (array_inv!26991 _values!996) e!640564)))

(declare-fun b!1125247 () Bool)

(assert (=> b!1125247 (= e!640564 (and e!640567 mapRes!44221))))

(declare-fun condMapEmpty!44221 () Bool)

(declare-fun mapDefault!44221 () ValueCell!13425)

(assert (=> b!1125247 (= condMapEmpty!44221 (= (arr!35330 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13425)) mapDefault!44221)))))

(declare-fun b!1125248 () Bool)

(declare-fun res!751957 () Bool)

(assert (=> b!1125248 (=> (not res!751957) (not e!640570))))

(assert (=> b!1125248 (= res!751957 (and (= (size!35867 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35866 _keys!1208) (size!35867 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1125249 () Bool)

(assert (=> b!1125249 (= e!640565 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!35866 _keys!1208))))))

(declare-fun +!3387 (ListLongMap!15895 tuple2!17914) ListLongMap!15895)

(assert (=> b!1125249 (contains!6474 (+!3387 lt!499755 (tuple2!17915 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934)))

(declare-fun lt!499759 () Unit!36823)

(declare-fun addStillContains!686 (ListLongMap!15895 (_ BitVec 64) V!42819 (_ BitVec 64)) Unit!36823)

(assert (=> b!1125249 (= lt!499759 (addStillContains!686 lt!499755 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (= (and start!98074 res!751955) b!1125236))

(assert (= (and b!1125236 res!751952) b!1125248))

(assert (= (and b!1125248 res!751957) b!1125233))

(assert (= (and b!1125233 res!751956) b!1125235))

(assert (= (and b!1125235 res!751947) b!1125240))

(assert (= (and b!1125240 res!751954) b!1125243))

(assert (= (and b!1125243 res!751953) b!1125245))

(assert (= (and b!1125245 res!751946) b!1125237))

(assert (= (and b!1125237 res!751958) b!1125230))

(assert (= (and b!1125230 res!751949) b!1125232))

(assert (= (and b!1125232 (not res!751945)) b!1125238))

(assert (= (and b!1125238 (not res!751950)) b!1125242))

(assert (= (and b!1125242 c!109559) b!1125244))

(assert (= (and b!1125242 (not c!109559)) b!1125234))

(assert (= (or b!1125244 b!1125234) bm!47497))

(assert (= (or b!1125244 b!1125234) bm!47498))

(assert (= (and b!1125242 (not res!751948)) b!1125241))

(assert (= (and b!1125241 (not res!751959)) b!1125239))

(assert (= (and b!1125239 (not res!751951)) b!1125249))

(assert (= (and b!1125247 condMapEmpty!44221) mapIsEmpty!44221))

(assert (= (and b!1125247 (not condMapEmpty!44221)) mapNonEmpty!44221))

(get-info :version)

(assert (= (and mapNonEmpty!44221 ((_ is ValueCellFull!13425) mapValue!44221)) b!1125231))

(assert (= (and b!1125247 ((_ is ValueCellFull!13425) mapDefault!44221)) b!1125246))

(assert (= start!98074 b!1125247))

(declare-fun b_lambda!18743 () Bool)

(assert (=> (not b_lambda!18743) (not b!1125238)))

(declare-fun t!35481 () Bool)

(declare-fun tb!8559 () Bool)

(assert (=> (and start!98074 (= defaultEntry!1004 defaultEntry!1004) t!35481) tb!8559))

(declare-fun result!17671 () Bool)

(assert (=> tb!8559 (= result!17671 tp_is_empty!28269)))

(assert (=> b!1125238 t!35481))

(declare-fun b_and!38285 () Bool)

(assert (= b_and!38283 (and (=> t!35481 result!17671) b_and!38285)))

(declare-fun m!1039509 () Bool)

(assert (=> b!1125242 m!1039509))

(declare-fun m!1039511 () Bool)

(assert (=> b!1125242 m!1039511))

(declare-fun m!1039513 () Bool)

(assert (=> b!1125245 m!1039513))

(declare-fun m!1039515 () Bool)

(assert (=> b!1125244 m!1039515))

(declare-fun m!1039517 () Bool)

(assert (=> b!1125236 m!1039517))

(declare-fun m!1039519 () Bool)

(assert (=> mapNonEmpty!44221 m!1039519))

(declare-fun m!1039521 () Bool)

(assert (=> b!1125237 m!1039521))

(declare-fun m!1039523 () Bool)

(assert (=> b!1125237 m!1039523))

(declare-fun m!1039525 () Bool)

(assert (=> start!98074 m!1039525))

(declare-fun m!1039527 () Bool)

(assert (=> start!98074 m!1039527))

(declare-fun m!1039529 () Bool)

(assert (=> b!1125230 m!1039529))

(declare-fun m!1039531 () Bool)

(assert (=> b!1125233 m!1039531))

(declare-fun m!1039533 () Bool)

(assert (=> b!1125249 m!1039533))

(assert (=> b!1125249 m!1039533))

(declare-fun m!1039535 () Bool)

(assert (=> b!1125249 m!1039535))

(declare-fun m!1039537 () Bool)

(assert (=> b!1125249 m!1039537))

(declare-fun m!1039539 () Bool)

(assert (=> b!1125232 m!1039539))

(declare-fun m!1039541 () Bool)

(assert (=> b!1125232 m!1039541))

(declare-fun m!1039543 () Bool)

(assert (=> bm!47498 m!1039543))

(declare-fun m!1039545 () Bool)

(assert (=> b!1125243 m!1039545))

(declare-fun m!1039547 () Bool)

(assert (=> b!1125235 m!1039547))

(declare-fun m!1039549 () Bool)

(assert (=> bm!47497 m!1039549))

(declare-fun m!1039551 () Bool)

(assert (=> b!1125241 m!1039551))

(assert (=> b!1125241 m!1039543))

(declare-fun m!1039553 () Bool)

(assert (=> b!1125238 m!1039553))

(declare-fun m!1039555 () Bool)

(assert (=> b!1125238 m!1039555))

(declare-fun m!1039557 () Bool)

(assert (=> b!1125238 m!1039557))

(declare-fun m!1039559 () Bool)

(assert (=> b!1125238 m!1039559))

(check-sat (not b!1125249) (not start!98074) (not bm!47498) (not b!1125236) (not b!1125230) (not b!1125235) (not b!1125241) (not bm!47497) (not b_next!23739) (not b!1125232) b_and!38285 (not b!1125238) tp_is_empty!28269 (not b!1125242) (not b!1125237) (not b!1125244) (not b!1125233) (not b_lambda!18743) (not b!1125243) (not mapNonEmpty!44221))
(check-sat b_and!38285 (not b_next!23739))
