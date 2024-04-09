; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98076 () Bool)

(assert start!98076)

(declare-fun b_free!23741 () Bool)

(declare-fun b_next!23741 () Bool)

(assert (=> start!98076 (= b_free!23741 (not b_next!23741))))

(declare-fun tp!83927 () Bool)

(declare-fun b_and!38287 () Bool)

(assert (=> start!98076 (= tp!83927 b_and!38287)))

(declare-fun b!1125293 () Bool)

(declare-fun res!751993 () Bool)

(declare-fun e!640602 () Bool)

(assert (=> b!1125293 (=> (not res!751993) (not e!640602))))

(declare-datatypes ((array!73364 0))(
  ( (array!73365 (arr!35331 (Array (_ BitVec 32) (_ BitVec 64))) (size!35868 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73364)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42821 0))(
  ( (V!42822 (val!14192 Int)) )
))
(declare-datatypes ((ValueCell!13426 0))(
  ( (ValueCellFull!13426 (v!16826 V!42821)) (EmptyCell!13426) )
))
(declare-datatypes ((array!73366 0))(
  ( (array!73367 (arr!35332 (Array (_ BitVec 32) ValueCell!13426)) (size!35869 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73366)

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1125293 (= res!751993 (and (= (size!35869 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35868 _keys!1208) (size!35869 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1125294 () Bool)

(declare-fun res!752004 () Bool)

(declare-fun e!640595 () Bool)

(assert (=> b!1125294 (=> (not res!752004) (not e!640595))))

(declare-fun lt!499782 () array!73364)

(declare-datatypes ((List!24746 0))(
  ( (Nil!24743) (Cons!24742 (h!25951 (_ BitVec 64)) (t!35486 List!24746)) )
))
(declare-fun arrayNoDuplicates!0 (array!73364 (_ BitVec 32) List!24746) Bool)

(assert (=> b!1125294 (= res!752004 (arrayNoDuplicates!0 lt!499782 #b00000000000000000000000000000000 Nil!24743))))

(declare-fun b!1125295 () Bool)

(declare-fun e!640599 () Bool)

(declare-fun e!640598 () Bool)

(assert (=> b!1125295 (= e!640599 e!640598)))

(declare-fun res!752003 () Bool)

(assert (=> b!1125295 (=> res!752003 e!640598)))

(declare-datatypes ((tuple2!17916 0))(
  ( (tuple2!17917 (_1!8968 (_ BitVec 64)) (_2!8968 V!42821)) )
))
(declare-datatypes ((List!24747 0))(
  ( (Nil!24744) (Cons!24743 (h!25952 tuple2!17916) (t!35487 List!24747)) )
))
(declare-datatypes ((ListLongMap!15897 0))(
  ( (ListLongMap!15898 (toList!7964 List!24747)) )
))
(declare-fun lt!499785 () ListLongMap!15897)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6475 (ListLongMap!15897 (_ BitVec 64)) Bool)

(assert (=> b!1125295 (= res!752003 (not (contains!6475 lt!499785 k!934)))))

(declare-fun zeroValue!944 () V!42821)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!42821)

(declare-fun getCurrentListMapNoExtraKeys!4423 (array!73364 array!73366 (_ BitVec 32) (_ BitVec 32) V!42821 V!42821 (_ BitVec 32) Int) ListLongMap!15897)

(assert (=> b!1125295 (= lt!499785 (getCurrentListMapNoExtraKeys!4423 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44224 () Bool)

(declare-fun mapRes!44224 () Bool)

(declare-fun tp!83928 () Bool)

(declare-fun e!640603 () Bool)

(assert (=> mapNonEmpty!44224 (= mapRes!44224 (and tp!83928 e!640603))))

(declare-fun mapValue!44224 () ValueCell!13426)

(declare-fun mapRest!44224 () (Array (_ BitVec 32) ValueCell!13426))

(declare-fun mapKey!44224 () (_ BitVec 32))

(assert (=> mapNonEmpty!44224 (= (arr!35332 _values!996) (store mapRest!44224 mapKey!44224 mapValue!44224))))

(declare-fun b!1125296 () Bool)

(assert (=> b!1125296 (= e!640598 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!35868 _keys!1208))))))

(declare-fun +!3388 (ListLongMap!15897 tuple2!17916) ListLongMap!15897)

(assert (=> b!1125296 (contains!6475 (+!3388 lt!499785 (tuple2!17917 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k!934)))

(declare-datatypes ((Unit!36825 0))(
  ( (Unit!36826) )
))
(declare-fun lt!499778 () Unit!36825)

(declare-fun addStillContains!687 (ListLongMap!15897 (_ BitVec 64) V!42821 (_ BitVec 64)) Unit!36825)

(assert (=> b!1125296 (= lt!499778 (addStillContains!687 lt!499785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun lt!499783 () array!73366)

(declare-fun bm!47503 () Bool)

(declare-fun c!109562 () Bool)

(declare-fun call!47507 () ListLongMap!15897)

(assert (=> bm!47503 (= call!47507 (getCurrentListMapNoExtraKeys!4423 (ite c!109562 lt!499782 _keys!1208) (ite c!109562 lt!499783 _values!996) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125297 () Bool)

(declare-fun e!640596 () Bool)

(assert (=> b!1125297 (= e!640596 e!640599)))

(declare-fun res!751999 () Bool)

(assert (=> b!1125297 (=> res!751999 e!640599)))

(assert (=> b!1125297 (= res!751999 (not (= (select (arr!35331 _keys!1208) from!1455) k!934)))))

(declare-fun e!640604 () Bool)

(assert (=> b!1125297 e!640604))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1125297 (= c!109562 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!499780 () Unit!36825)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!365 (array!73364 array!73366 (_ BitVec 32) (_ BitVec 32) V!42821 V!42821 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36825)

(assert (=> b!1125297 (= lt!499780 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!365 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125298 () Bool)

(declare-fun res!752002 () Bool)

(assert (=> b!1125298 (=> (not res!752002) (not e!640602))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1125298 (= res!752002 (validMask!0 mask!1564))))

(declare-fun b!1125299 () Bool)

(declare-fun e!640594 () Bool)

(assert (=> b!1125299 (= e!640594 e!640596)))

(declare-fun res!751991 () Bool)

(assert (=> b!1125299 (=> res!751991 e!640596)))

(assert (=> b!1125299 (= res!751991 (not (= from!1455 i!673)))))

(declare-fun lt!499779 () ListLongMap!15897)

(assert (=> b!1125299 (= lt!499779 (getCurrentListMapNoExtraKeys!4423 lt!499782 lt!499783 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2508 (Int (_ BitVec 64)) V!42821)

(assert (=> b!1125299 (= lt!499783 (array!73367 (store (arr!35332 _values!996) i!673 (ValueCellFull!13426 (dynLambda!2508 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35869 _values!996)))))

(declare-fun lt!499784 () ListLongMap!15897)

(assert (=> b!1125299 (= lt!499784 (getCurrentListMapNoExtraKeys!4423 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun call!47506 () ListLongMap!15897)

(declare-fun bm!47504 () Bool)

(assert (=> bm!47504 (= call!47506 (getCurrentListMapNoExtraKeys!4423 (ite c!109562 _keys!1208 lt!499782) (ite c!109562 _values!996 lt!499783) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44224 () Bool)

(assert (=> mapIsEmpty!44224 mapRes!44224))

(declare-fun b!1125300 () Bool)

(declare-fun res!751990 () Bool)

(assert (=> b!1125300 (=> (not res!751990) (not e!640602))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1125300 (= res!751990 (validKeyInArray!0 k!934))))

(declare-fun b!1125301 () Bool)

(declare-fun e!640600 () Bool)

(declare-fun tp_is_empty!28271 () Bool)

(assert (=> b!1125301 (= e!640600 tp_is_empty!28271)))

(declare-fun b!1125302 () Bool)

(declare-fun -!1112 (ListLongMap!15897 (_ BitVec 64)) ListLongMap!15897)

(assert (=> b!1125302 (= e!640604 (= call!47507 (-!1112 call!47506 k!934)))))

(declare-fun b!1125292 () Bool)

(assert (=> b!1125292 (= e!640603 tp_is_empty!28271)))

(declare-fun res!751996 () Bool)

(assert (=> start!98076 (=> (not res!751996) (not e!640602))))

(assert (=> start!98076 (= res!751996 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35868 _keys!1208))))))

(assert (=> start!98076 e!640602))

(assert (=> start!98076 tp_is_empty!28271))

(declare-fun array_inv!26992 (array!73364) Bool)

(assert (=> start!98076 (array_inv!26992 _keys!1208)))

(assert (=> start!98076 true))

(assert (=> start!98076 tp!83927))

(declare-fun e!640597 () Bool)

(declare-fun array_inv!26993 (array!73366) Bool)

(assert (=> start!98076 (and (array_inv!26993 _values!996) e!640597)))

(declare-fun b!1125303 () Bool)

(declare-fun res!752001 () Bool)

(assert (=> b!1125303 (=> res!752001 e!640598)))

(assert (=> b!1125303 (= res!752001 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1125304 () Bool)

(declare-fun res!752000 () Bool)

(assert (=> b!1125304 (=> (not res!752000) (not e!640602))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73364 (_ BitVec 32)) Bool)

(assert (=> b!1125304 (= res!752000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1125305 () Bool)

(assert (=> b!1125305 (= e!640602 e!640595)))

(declare-fun res!751998 () Bool)

(assert (=> b!1125305 (=> (not res!751998) (not e!640595))))

(assert (=> b!1125305 (= res!751998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499782 mask!1564))))

(assert (=> b!1125305 (= lt!499782 (array!73365 (store (arr!35331 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35868 _keys!1208)))))

(declare-fun b!1125306 () Bool)

(assert (=> b!1125306 (= e!640595 (not e!640594))))

(declare-fun res!751997 () Bool)

(assert (=> b!1125306 (=> res!751997 e!640594)))

(assert (=> b!1125306 (= res!751997 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73364 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1125306 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!499781 () Unit!36825)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73364 (_ BitVec 64) (_ BitVec 32)) Unit!36825)

(assert (=> b!1125306 (= lt!499781 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1125307 () Bool)

(declare-fun res!751994 () Bool)

(assert (=> b!1125307 (=> (not res!751994) (not e!640602))))

(assert (=> b!1125307 (= res!751994 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24743))))

(declare-fun b!1125308 () Bool)

(declare-fun res!751995 () Bool)

(assert (=> b!1125308 (=> (not res!751995) (not e!640602))))

(assert (=> b!1125308 (= res!751995 (= (select (arr!35331 _keys!1208) i!673) k!934))))

(declare-fun b!1125309 () Bool)

(assert (=> b!1125309 (= e!640597 (and e!640600 mapRes!44224))))

(declare-fun condMapEmpty!44224 () Bool)

(declare-fun mapDefault!44224 () ValueCell!13426)

