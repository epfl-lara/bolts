; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98136 () Bool)

(assert start!98136)

(declare-fun b_free!23801 () Bool)

(declare-fun b_next!23801 () Bool)

(assert (=> start!98136 (= b_free!23801 (not b_next!23801))))

(declare-fun tp!84107 () Bool)

(declare-fun b_and!38407 () Bool)

(assert (=> start!98136 (= tp!84107 b_and!38407)))

(declare-fun b!1127000 () Bool)

(declare-fun e!641507 () Bool)

(declare-datatypes ((V!42901 0))(
  ( (V!42902 (val!14222 Int)) )
))
(declare-datatypes ((tuple2!17974 0))(
  ( (tuple2!17975 (_1!8997 (_ BitVec 64)) (_2!8997 V!42901)) )
))
(declare-datatypes ((List!24800 0))(
  ( (Nil!24797) (Cons!24796 (h!26005 tuple2!17974) (t!35600 List!24800)) )
))
(declare-datatypes ((ListLongMap!15955 0))(
  ( (ListLongMap!15956 (toList!7993 List!24800)) )
))
(declare-fun call!47686 () ListLongMap!15955)

(declare-fun call!47687 () ListLongMap!15955)

(assert (=> b!1127000 (= e!641507 (= call!47686 call!47687))))

(declare-fun b!1127001 () Bool)

(declare-fun e!641505 () Bool)

(declare-fun e!641512 () Bool)

(assert (=> b!1127001 (= e!641505 e!641512)))

(declare-fun res!753197 () Bool)

(assert (=> b!1127001 (=> res!753197 e!641512)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1127001 (= res!753197 (not (= from!1455 i!673)))))

(declare-datatypes ((array!73482 0))(
  ( (array!73483 (arr!35390 (Array (_ BitVec 32) (_ BitVec 64))) (size!35927 (_ BitVec 32))) )
))
(declare-fun lt!500411 () array!73482)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13456 0))(
  ( (ValueCellFull!13456 (v!16856 V!42901)) (EmptyCell!13456) )
))
(declare-datatypes ((array!73484 0))(
  ( (array!73485 (arr!35391 (Array (_ BitVec 32) ValueCell!13456)) (size!35928 (_ BitVec 32))) )
))
(declare-fun lt!500412 () array!73484)

(declare-fun minValue!944 () V!42901)

(declare-fun zeroValue!944 () V!42901)

(declare-fun lt!500413 () ListLongMap!15955)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4452 (array!73482 array!73484 (_ BitVec 32) (_ BitVec 32) V!42901 V!42901 (_ BitVec 32) Int) ListLongMap!15955)

(assert (=> b!1127001 (= lt!500413 (getCurrentListMapNoExtraKeys!4452 lt!500411 lt!500412 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73484)

(declare-fun dynLambda!2532 (Int (_ BitVec 64)) V!42901)

(assert (=> b!1127001 (= lt!500412 (array!73485 (store (arr!35391 _values!996) i!673 (ValueCellFull!13456 (dynLambda!2532 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35928 _values!996)))))

(declare-fun _keys!1208 () array!73482)

(declare-fun lt!500415 () ListLongMap!15955)

(assert (=> b!1127001 (= lt!500415 (getCurrentListMapNoExtraKeys!4452 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1127002 () Bool)

(declare-fun res!753200 () Bool)

(declare-fun e!641506 () Bool)

(assert (=> b!1127002 (=> (not res!753200) (not e!641506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1127002 (= res!753200 (validMask!0 mask!1564))))

(declare-fun b!1127003 () Bool)

(declare-fun res!753189 () Bool)

(assert (=> b!1127003 (=> (not res!753189) (not e!641506))))

(assert (=> b!1127003 (= res!753189 (and (= (size!35928 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35927 _keys!1208) (size!35928 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!47683 () Bool)

(assert (=> bm!47683 (= call!47686 (getCurrentListMapNoExtraKeys!4452 lt!500411 lt!500412 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44314 () Bool)

(declare-fun mapRes!44314 () Bool)

(declare-fun tp!84108 () Bool)

(declare-fun e!641513 () Bool)

(assert (=> mapNonEmpty!44314 (= mapRes!44314 (and tp!84108 e!641513))))

(declare-fun mapKey!44314 () (_ BitVec 32))

(declare-fun mapRest!44314 () (Array (_ BitVec 32) ValueCell!13456))

(declare-fun mapValue!44314 () ValueCell!13456)

(assert (=> mapNonEmpty!44314 (= (arr!35391 _values!996) (store mapRest!44314 mapKey!44314 mapValue!44314))))

(declare-fun b!1127004 () Bool)

(declare-fun res!753193 () Bool)

(assert (=> b!1127004 (=> (not res!753193) (not e!641506))))

(assert (=> b!1127004 (= res!753193 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35927 _keys!1208))))))

(declare-fun b!1127005 () Bool)

(declare-fun tp_is_empty!28331 () Bool)

(assert (=> b!1127005 (= e!641513 tp_is_empty!28331)))

(declare-fun b!1127006 () Bool)

(declare-fun res!753188 () Bool)

(assert (=> b!1127006 (=> (not res!753188) (not e!641506))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1127006 (= res!753188 (= (select (arr!35390 _keys!1208) i!673) k!934))))

(declare-fun b!1127007 () Bool)

(declare-fun res!753190 () Bool)

(assert (=> b!1127007 (=> (not res!753190) (not e!641506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73482 (_ BitVec 32)) Bool)

(assert (=> b!1127007 (= res!753190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1127008 () Bool)

(declare-fun e!641509 () Bool)

(assert (=> b!1127008 (= e!641506 e!641509)))

(declare-fun res!753194 () Bool)

(assert (=> b!1127008 (=> (not res!753194) (not e!641509))))

(assert (=> b!1127008 (= res!753194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500411 mask!1564))))

(assert (=> b!1127008 (= lt!500411 (array!73483 (store (arr!35390 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35927 _keys!1208)))))

(declare-fun mapIsEmpty!44314 () Bool)

(assert (=> mapIsEmpty!44314 mapRes!44314))

(declare-fun b!1127009 () Bool)

(declare-fun e!641504 () Bool)

(assert (=> b!1127009 (= e!641512 e!641504)))

(declare-fun res!753201 () Bool)

(assert (=> b!1127009 (=> res!753201 e!641504)))

(assert (=> b!1127009 (= res!753201 (not (= (select (arr!35390 _keys!1208) from!1455) k!934)))))

(assert (=> b!1127009 e!641507))

(declare-fun c!109652 () Bool)

(assert (=> b!1127009 (= c!109652 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36877 0))(
  ( (Unit!36878) )
))
(declare-fun lt!500410 () Unit!36877)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!387 (array!73482 array!73484 (_ BitVec 32) (_ BitVec 32) V!42901 V!42901 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36877)

(assert (=> b!1127009 (= lt!500410 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!387 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127010 () Bool)

(assert (=> b!1127010 (= e!641504 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!35927 _keys!1208)))))))

(declare-fun b!1127011 () Bool)

(assert (=> b!1127011 (= e!641509 (not e!641505))))

(declare-fun res!753199 () Bool)

(assert (=> b!1127011 (=> res!753199 e!641505)))

(assert (=> b!1127011 (= res!753199 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73482 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1127011 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!500414 () Unit!36877)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73482 (_ BitVec 64) (_ BitVec 32)) Unit!36877)

(assert (=> b!1127011 (= lt!500414 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1127012 () Bool)

(declare-fun res!753195 () Bool)

(assert (=> b!1127012 (=> (not res!753195) (not e!641506))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1127012 (= res!753195 (validKeyInArray!0 k!934))))

(declare-fun b!1127013 () Bool)

(declare-fun e!641508 () Bool)

(declare-fun e!641511 () Bool)

(assert (=> b!1127013 (= e!641508 (and e!641511 mapRes!44314))))

(declare-fun condMapEmpty!44314 () Bool)

(declare-fun mapDefault!44314 () ValueCell!13456)

