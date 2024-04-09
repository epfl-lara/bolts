; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98116 () Bool)

(assert start!98116)

(declare-fun b_free!23781 () Bool)

(declare-fun b_next!23781 () Bool)

(assert (=> start!98116 (= b_free!23781 (not b_next!23781))))

(declare-fun tp!84048 () Bool)

(declare-fun b_and!38367 () Bool)

(assert (=> start!98116 (= tp!84048 b_and!38367)))

(declare-fun b!1126432 () Bool)

(declare-fun e!641210 () Bool)

(declare-datatypes ((V!42875 0))(
  ( (V!42876 (val!14212 Int)) )
))
(declare-datatypes ((tuple2!17956 0))(
  ( (tuple2!17957 (_1!8988 (_ BitVec 64)) (_2!8988 V!42875)) )
))
(declare-datatypes ((List!24783 0))(
  ( (Nil!24780) (Cons!24779 (h!25988 tuple2!17956) (t!35563 List!24783)) )
))
(declare-datatypes ((ListLongMap!15937 0))(
  ( (ListLongMap!15938 (toList!7984 List!24783)) )
))
(declare-fun call!47626 () ListLongMap!15937)

(declare-fun call!47627 () ListLongMap!15937)

(assert (=> b!1126432 (= e!641210 (= call!47626 call!47627))))

(declare-fun b!1126433 () Bool)

(declare-fun res!752792 () Bool)

(declare-fun e!641213 () Bool)

(assert (=> b!1126433 (=> (not res!752792) (not e!641213))))

(declare-datatypes ((array!73444 0))(
  ( (array!73445 (arr!35371 (Array (_ BitVec 32) (_ BitVec 64))) (size!35908 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73444)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73444 (_ BitVec 32)) Bool)

(assert (=> b!1126433 (= res!752792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1126434 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1124 (ListLongMap!15937 (_ BitVec 64)) ListLongMap!15937)

(assert (=> b!1126434 (= e!641210 (= call!47626 (-!1124 call!47627 k0!934)))))

(declare-fun mapIsEmpty!44284 () Bool)

(declare-fun mapRes!44284 () Bool)

(assert (=> mapIsEmpty!44284 mapRes!44284))

(declare-fun b!1126436 () Bool)

(declare-fun res!752801 () Bool)

(assert (=> b!1126436 (=> (not res!752801) (not e!641213))))

(declare-datatypes ((ValueCell!13446 0))(
  ( (ValueCellFull!13446 (v!16846 V!42875)) (EmptyCell!13446) )
))
(declare-datatypes ((array!73446 0))(
  ( (array!73447 (arr!35372 (Array (_ BitVec 32) ValueCell!13446)) (size!35909 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73446)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1126436 (= res!752801 (and (= (size!35909 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35908 _keys!1208) (size!35909 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1126437 () Bool)

(declare-fun res!752799 () Bool)

(assert (=> b!1126437 (=> (not res!752799) (not e!641213))))

(declare-datatypes ((List!24784 0))(
  ( (Nil!24781) (Cons!24780 (h!25989 (_ BitVec 64)) (t!35564 List!24784)) )
))
(declare-fun arrayNoDuplicates!0 (array!73444 (_ BitVec 32) List!24784) Bool)

(assert (=> b!1126437 (= res!752799 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24781))))

(declare-fun b!1126438 () Bool)

(declare-fun res!752793 () Bool)

(assert (=> b!1126438 (=> (not res!752793) (not e!641213))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1126438 (= res!752793 (validKeyInArray!0 k0!934))))

(declare-fun b!1126439 () Bool)

(declare-fun res!752796 () Bool)

(assert (=> b!1126439 (=> (not res!752796) (not e!641213))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1126439 (= res!752796 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35908 _keys!1208))))))

(declare-fun zeroValue!944 () V!42875)

(declare-fun lt!500212 () array!73446)

(declare-fun bm!47623 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!500214 () array!73444)

(declare-fun minValue!944 () V!42875)

(declare-fun getCurrentListMapNoExtraKeys!4443 (array!73444 array!73446 (_ BitVec 32) (_ BitVec 32) V!42875 V!42875 (_ BitVec 32) Int) ListLongMap!15937)

(assert (=> bm!47623 (= call!47626 (getCurrentListMapNoExtraKeys!4443 lt!500214 lt!500212 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126440 () Bool)

(declare-fun e!641212 () Bool)

(assert (=> b!1126440 (= e!641213 e!641212)))

(declare-fun res!752794 () Bool)

(assert (=> b!1126440 (=> (not res!752794) (not e!641212))))

(assert (=> b!1126440 (= res!752794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500214 mask!1564))))

(assert (=> b!1126440 (= lt!500214 (array!73445 (store (arr!35371 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35908 _keys!1208)))))

(declare-fun b!1126441 () Bool)

(declare-fun e!641208 () Bool)

(declare-fun tp_is_empty!28311 () Bool)

(assert (=> b!1126441 (= e!641208 tp_is_empty!28311)))

(declare-fun b!1126442 () Bool)

(declare-fun res!752790 () Bool)

(assert (=> b!1126442 (=> (not res!752790) (not e!641213))))

(assert (=> b!1126442 (= res!752790 (= (select (arr!35371 _keys!1208) i!673) k0!934))))

(declare-fun bm!47624 () Bool)

(assert (=> bm!47624 (= call!47627 (getCurrentListMapNoExtraKeys!4443 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126443 () Bool)

(declare-fun res!752802 () Bool)

(assert (=> b!1126443 (=> (not res!752802) (not e!641213))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1126443 (= res!752802 (validMask!0 mask!1564))))

(declare-fun b!1126444 () Bool)

(declare-fun e!641204 () Bool)

(assert (=> b!1126444 (= e!641204 true)))

(declare-fun lt!500210 () Bool)

(declare-fun contains!6492 (ListLongMap!15937 (_ BitVec 64)) Bool)

(assert (=> b!1126444 (= lt!500210 (contains!6492 (getCurrentListMapNoExtraKeys!4443 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1126445 () Bool)

(declare-fun e!641209 () Bool)

(assert (=> b!1126445 (= e!641212 (not e!641209))))

(declare-fun res!752800 () Bool)

(assert (=> b!1126445 (=> res!752800 e!641209)))

(assert (=> b!1126445 (= res!752800 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1126445 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36861 0))(
  ( (Unit!36862) )
))
(declare-fun lt!500213 () Unit!36861)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73444 (_ BitVec 64) (_ BitVec 32)) Unit!36861)

(assert (=> b!1126445 (= lt!500213 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!752797 () Bool)

(assert (=> start!98116 (=> (not res!752797) (not e!641213))))

(assert (=> start!98116 (= res!752797 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35908 _keys!1208))))))

(assert (=> start!98116 e!641213))

(assert (=> start!98116 tp_is_empty!28311))

(declare-fun array_inv!27018 (array!73444) Bool)

(assert (=> start!98116 (array_inv!27018 _keys!1208)))

(assert (=> start!98116 true))

(assert (=> start!98116 tp!84048))

(declare-fun e!641207 () Bool)

(declare-fun array_inv!27019 (array!73446) Bool)

(assert (=> start!98116 (and (array_inv!27019 _values!996) e!641207)))

(declare-fun b!1126435 () Bool)

(declare-fun e!641211 () Bool)

(assert (=> b!1126435 (= e!641211 tp_is_empty!28311)))

(declare-fun b!1126446 () Bool)

(declare-fun e!641206 () Bool)

(assert (=> b!1126446 (= e!641209 e!641206)))

(declare-fun res!752791 () Bool)

(assert (=> b!1126446 (=> res!752791 e!641206)))

(assert (=> b!1126446 (= res!752791 (not (= from!1455 i!673)))))

(declare-fun lt!500209 () ListLongMap!15937)

(assert (=> b!1126446 (= lt!500209 (getCurrentListMapNoExtraKeys!4443 lt!500214 lt!500212 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2524 (Int (_ BitVec 64)) V!42875)

(assert (=> b!1126446 (= lt!500212 (array!73447 (store (arr!35372 _values!996) i!673 (ValueCellFull!13446 (dynLambda!2524 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35909 _values!996)))))

(declare-fun lt!500208 () ListLongMap!15937)

(assert (=> b!1126446 (= lt!500208 (getCurrentListMapNoExtraKeys!4443 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1126447 () Bool)

(assert (=> b!1126447 (= e!641207 (and e!641211 mapRes!44284))))

(declare-fun condMapEmpty!44284 () Bool)

(declare-fun mapDefault!44284 () ValueCell!13446)

(assert (=> b!1126447 (= condMapEmpty!44284 (= (arr!35372 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13446)) mapDefault!44284)))))

(declare-fun b!1126448 () Bool)

(assert (=> b!1126448 (= e!641206 e!641204)))

(declare-fun res!752798 () Bool)

(assert (=> b!1126448 (=> res!752798 e!641204)))

(assert (=> b!1126448 (= res!752798 (not (= (select (arr!35371 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1126448 e!641210))

(declare-fun c!109622 () Bool)

(assert (=> b!1126448 (= c!109622 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!500211 () Unit!36861)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!380 (array!73444 array!73446 (_ BitVec 32) (_ BitVec 32) V!42875 V!42875 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36861)

(assert (=> b!1126448 (= lt!500211 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!380 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44284 () Bool)

(declare-fun tp!84047 () Bool)

(assert (=> mapNonEmpty!44284 (= mapRes!44284 (and tp!84047 e!641208))))

(declare-fun mapValue!44284 () ValueCell!13446)

(declare-fun mapRest!44284 () (Array (_ BitVec 32) ValueCell!13446))

(declare-fun mapKey!44284 () (_ BitVec 32))

(assert (=> mapNonEmpty!44284 (= (arr!35372 _values!996) (store mapRest!44284 mapKey!44284 mapValue!44284))))

(declare-fun b!1126449 () Bool)

(declare-fun res!752795 () Bool)

(assert (=> b!1126449 (=> (not res!752795) (not e!641212))))

(assert (=> b!1126449 (= res!752795 (arrayNoDuplicates!0 lt!500214 #b00000000000000000000000000000000 Nil!24781))))

(assert (= (and start!98116 res!752797) b!1126443))

(assert (= (and b!1126443 res!752802) b!1126436))

(assert (= (and b!1126436 res!752801) b!1126433))

(assert (= (and b!1126433 res!752792) b!1126437))

(assert (= (and b!1126437 res!752799) b!1126439))

(assert (= (and b!1126439 res!752796) b!1126438))

(assert (= (and b!1126438 res!752793) b!1126442))

(assert (= (and b!1126442 res!752790) b!1126440))

(assert (= (and b!1126440 res!752794) b!1126449))

(assert (= (and b!1126449 res!752795) b!1126445))

(assert (= (and b!1126445 (not res!752800)) b!1126446))

(assert (= (and b!1126446 (not res!752791)) b!1126448))

(assert (= (and b!1126448 c!109622) b!1126434))

(assert (= (and b!1126448 (not c!109622)) b!1126432))

(assert (= (or b!1126434 b!1126432) bm!47624))

(assert (= (or b!1126434 b!1126432) bm!47623))

(assert (= (and b!1126448 (not res!752798)) b!1126444))

(assert (= (and b!1126447 condMapEmpty!44284) mapIsEmpty!44284))

(assert (= (and b!1126447 (not condMapEmpty!44284)) mapNonEmpty!44284))

(get-info :version)

(assert (= (and mapNonEmpty!44284 ((_ is ValueCellFull!13446) mapValue!44284)) b!1126441))

(assert (= (and b!1126447 ((_ is ValueCellFull!13446) mapDefault!44284)) b!1126435))

(assert (= start!98116 b!1126447))

(declare-fun b_lambda!18785 () Bool)

(assert (=> (not b_lambda!18785) (not b!1126446)))

(declare-fun t!35562 () Bool)

(declare-fun tb!8601 () Bool)

(assert (=> (and start!98116 (= defaultEntry!1004 defaultEntry!1004) t!35562) tb!8601))

(declare-fun result!17755 () Bool)

(assert (=> tb!8601 (= result!17755 tp_is_empty!28311)))

(assert (=> b!1126446 t!35562))

(declare-fun b_and!38369 () Bool)

(assert (= b_and!38367 (and (=> t!35562 result!17755) b_and!38369)))

(declare-fun m!1040511 () Bool)

(assert (=> mapNonEmpty!44284 m!1040511))

(declare-fun m!1040513 () Bool)

(assert (=> b!1126442 m!1040513))

(declare-fun m!1040515 () Bool)

(assert (=> b!1126434 m!1040515))

(declare-fun m!1040517 () Bool)

(assert (=> start!98116 m!1040517))

(declare-fun m!1040519 () Bool)

(assert (=> start!98116 m!1040519))

(declare-fun m!1040521 () Bool)

(assert (=> b!1126437 m!1040521))

(declare-fun m!1040523 () Bool)

(assert (=> b!1126444 m!1040523))

(assert (=> b!1126444 m!1040523))

(declare-fun m!1040525 () Bool)

(assert (=> b!1126444 m!1040525))

(declare-fun m!1040527 () Bool)

(assert (=> b!1126440 m!1040527))

(declare-fun m!1040529 () Bool)

(assert (=> b!1126440 m!1040529))

(declare-fun m!1040531 () Bool)

(assert (=> b!1126446 m!1040531))

(declare-fun m!1040533 () Bool)

(assert (=> b!1126446 m!1040533))

(declare-fun m!1040535 () Bool)

(assert (=> b!1126446 m!1040535))

(declare-fun m!1040537 () Bool)

(assert (=> b!1126446 m!1040537))

(declare-fun m!1040539 () Bool)

(assert (=> b!1126448 m!1040539))

(declare-fun m!1040541 () Bool)

(assert (=> b!1126448 m!1040541))

(declare-fun m!1040543 () Bool)

(assert (=> b!1126443 m!1040543))

(declare-fun m!1040545 () Bool)

(assert (=> b!1126449 m!1040545))

(declare-fun m!1040547 () Bool)

(assert (=> b!1126445 m!1040547))

(declare-fun m!1040549 () Bool)

(assert (=> b!1126445 m!1040549))

(declare-fun m!1040551 () Bool)

(assert (=> b!1126438 m!1040551))

(declare-fun m!1040553 () Bool)

(assert (=> b!1126433 m!1040553))

(assert (=> bm!47624 m!1040523))

(declare-fun m!1040555 () Bool)

(assert (=> bm!47623 m!1040555))

(check-sat (not bm!47624) (not b!1126434) (not b!1126448) (not mapNonEmpty!44284) (not b_lambda!18785) b_and!38369 (not b_next!23781) (not b!1126438) (not b!1126449) (not b!1126440) (not b!1126437) (not bm!47623) tp_is_empty!28311 (not start!98116) (not b!1126445) (not b!1126444) (not b!1126446) (not b!1126433) (not b!1126443))
(check-sat b_and!38369 (not b_next!23781))
