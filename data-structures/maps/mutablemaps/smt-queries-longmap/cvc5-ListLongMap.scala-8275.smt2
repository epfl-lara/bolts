; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100786 () Bool)

(assert start!100786)

(declare-fun b_free!25921 () Bool)

(declare-fun b_next!25921 () Bool)

(assert (=> start!100786 (= b_free!25921 (not b_next!25921))))

(declare-fun tp!90767 () Bool)

(declare-fun b_and!42839 () Bool)

(assert (=> start!100786 (= tp!90767 b_and!42839)))

(declare-fun b!1205113 () Bool)

(declare-fun c!118187 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!546560 () Bool)

(assert (=> b!1205113 (= c!118187 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!546560))))

(declare-datatypes ((Unit!39878 0))(
  ( (Unit!39879) )
))
(declare-fun e!684418 () Unit!39878)

(declare-fun e!684413 () Unit!39878)

(assert (=> b!1205113 (= e!684418 e!684413)))

(declare-datatypes ((V!45961 0))(
  ( (V!45962 (val!15369 Int)) )
))
(declare-fun zeroValue!944 () V!45961)

(declare-datatypes ((array!78008 0))(
  ( (array!78009 (arr!37641 (Array (_ BitVec 32) (_ BitVec 64))) (size!38178 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78008)

(declare-datatypes ((tuple2!19844 0))(
  ( (tuple2!19845 (_1!9932 (_ BitVec 64)) (_2!9932 V!45961)) )
))
(declare-datatypes ((List!26672 0))(
  ( (Nil!26669) (Cons!26668 (h!27877 tuple2!19844) (t!39580 List!26672)) )
))
(declare-datatypes ((ListLongMap!17825 0))(
  ( (ListLongMap!17826 (toList!8928 List!26672)) )
))
(declare-fun call!58380 () ListLongMap!17825)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!58376 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14603 0))(
  ( (ValueCellFull!14603 (v!18014 V!45961)) (EmptyCell!14603) )
))
(declare-datatypes ((array!78010 0))(
  ( (array!78011 (arr!37642 (Array (_ BitVec 32) ValueCell!14603)) (size!38179 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78010)

(declare-fun minValue!944 () V!45961)

(declare-fun getCurrentListMapNoExtraKeys!5337 (array!78008 array!78010 (_ BitVec 32) (_ BitVec 32) V!45961 V!45961 (_ BitVec 32) Int) ListLongMap!17825)

(assert (=> bm!58376 (= call!58380 (getCurrentListMapNoExtraKeys!5337 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!58377 () Bool)

(declare-fun call!58379 () Bool)

(declare-fun call!58384 () Bool)

(assert (=> bm!58377 (= call!58379 call!58384)))

(declare-fun b!1205115 () Bool)

(declare-fun e!684415 () Bool)

(declare-fun e!684420 () Bool)

(assert (=> b!1205115 (= e!684415 e!684420)))

(declare-fun res!801704 () Bool)

(assert (=> b!1205115 (=> res!801704 e!684420)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1205115 (= res!801704 (not (= (select (arr!37641 _keys!1208) from!1455) k!934)))))

(declare-fun e!684417 () Bool)

(assert (=> b!1205115 e!684417))

(declare-fun c!118185 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1205115 (= c!118185 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!546558 () Unit!39878)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1047 (array!78008 array!78010 (_ BitVec 32) (_ BitVec 32) V!45961 V!45961 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39878)

(assert (=> b!1205115 (= lt!546558 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1047 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1205116 () Bool)

(declare-fun e!684425 () Bool)

(declare-fun arrayContainsKey!0 (array!78008 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1205116 (= e!684425 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1205117 () Bool)

(declare-fun res!801699 () Bool)

(declare-fun e!684411 () Bool)

(assert (=> b!1205117 (=> (not res!801699) (not e!684411))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78008 (_ BitVec 32)) Bool)

(assert (=> b!1205117 (= res!801699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1205118 () Bool)

(declare-fun e!684421 () Unit!39878)

(assert (=> b!1205118 (= e!684421 e!684418)))

(declare-fun c!118184 () Bool)

(assert (=> b!1205118 (= c!118184 (and (not lt!546560) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1205119 () Bool)

(declare-fun e!684412 () Bool)

(declare-fun e!684410 () Bool)

(assert (=> b!1205119 (= e!684412 (not e!684410))))

(declare-fun res!801703 () Bool)

(assert (=> b!1205119 (=> res!801703 e!684410)))

(assert (=> b!1205119 (= res!801703 (bvsgt from!1455 i!673))))

(assert (=> b!1205119 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!546565 () Unit!39878)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78008 (_ BitVec 64) (_ BitVec 32)) Unit!39878)

(assert (=> b!1205119 (= lt!546565 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!47793 () Bool)

(declare-fun mapRes!47793 () Bool)

(assert (=> mapIsEmpty!47793 mapRes!47793))

(declare-fun b!1205120 () Bool)

(declare-fun res!801705 () Bool)

(assert (=> b!1205120 (=> (not res!801705) (not e!684411))))

(assert (=> b!1205120 (= res!801705 (= (select (arr!37641 _keys!1208) i!673) k!934))))

(declare-fun b!1205121 () Bool)

(declare-fun res!801712 () Bool)

(assert (=> b!1205121 (=> (not res!801712) (not e!684411))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1205121 (= res!801712 (validKeyInArray!0 k!934))))

(declare-fun b!1205122 () Bool)

(declare-fun e!684416 () Bool)

(declare-fun tp_is_empty!30625 () Bool)

(assert (=> b!1205122 (= e!684416 tp_is_empty!30625)))

(declare-fun b!1205123 () Bool)

(declare-fun e!684422 () Bool)

(assert (=> b!1205123 (= e!684422 true)))

(declare-fun e!684419 () Bool)

(assert (=> b!1205123 e!684419))

(declare-fun res!801709 () Bool)

(assert (=> b!1205123 (=> (not res!801709) (not e!684419))))

(assert (=> b!1205123 (= res!801709 e!684425)))

(declare-fun c!118183 () Bool)

(assert (=> b!1205123 (= c!118183 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!546564 () Unit!39878)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!567 (array!78008 array!78010 (_ BitVec 32) (_ BitVec 32) V!45961 V!45961 (_ BitVec 64) (_ BitVec 32) Int) Unit!39878)

(assert (=> b!1205123 (= lt!546564 (lemmaListMapContainsThenArrayContainsFrom!567 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!546551 () Unit!39878)

(assert (=> b!1205123 (= lt!546551 e!684421)))

(declare-fun c!118186 () Bool)

(assert (=> b!1205123 (= c!118186 (and (not lt!546560) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1205123 (= lt!546560 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1205124 () Bool)

(assert (=> b!1205124 call!58379))

(declare-fun lt!546562 () Unit!39878)

(declare-fun call!58382 () Unit!39878)

(assert (=> b!1205124 (= lt!546562 call!58382)))

(assert (=> b!1205124 (= e!684418 lt!546562)))

(declare-fun b!1205125 () Bool)

(declare-fun call!58383 () ListLongMap!17825)

(assert (=> b!1205125 (= e!684417 (= call!58383 call!58380))))

(declare-fun b!1205126 () Bool)

(assert (=> b!1205126 (= e!684410 e!684415)))

(declare-fun res!801698 () Bool)

(assert (=> b!1205126 (=> res!801698 e!684415)))

(assert (=> b!1205126 (= res!801698 (not (= from!1455 i!673)))))

(declare-fun lt!546554 () ListLongMap!17825)

(declare-fun lt!546561 () array!78008)

(declare-fun lt!546556 () array!78010)

(assert (=> b!1205126 (= lt!546554 (getCurrentListMapNoExtraKeys!5337 lt!546561 lt!546556 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3259 (Int (_ BitVec 64)) V!45961)

(assert (=> b!1205126 (= lt!546556 (array!78011 (store (arr!37642 _values!996) i!673 (ValueCellFull!14603 (dynLambda!3259 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38179 _values!996)))))

(declare-fun lt!546555 () ListLongMap!17825)

(assert (=> b!1205126 (= lt!546555 (getCurrentListMapNoExtraKeys!5337 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun call!58385 () Unit!39878)

(declare-fun lt!546557 () ListLongMap!17825)

(declare-fun bm!58378 () Bool)

(declare-fun lt!546563 () ListLongMap!17825)

(declare-fun addStillContains!1026 (ListLongMap!17825 (_ BitVec 64) V!45961 (_ BitVec 64)) Unit!39878)

(assert (=> bm!58378 (= call!58385 (addStillContains!1026 (ite c!118186 lt!546557 lt!546563) (ite c!118186 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118184 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118186 minValue!944 (ite c!118184 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1205127 () Bool)

(assert (=> b!1205127 (= e!684425 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!546560) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1205128 () Bool)

(assert (=> b!1205128 (= e!684420 e!684422)))

(declare-fun res!801701 () Bool)

(assert (=> b!1205128 (=> res!801701 e!684422)))

(declare-fun contains!6934 (ListLongMap!17825 (_ BitVec 64)) Bool)

(assert (=> b!1205128 (= res!801701 (not (contains!6934 lt!546563 k!934)))))

(assert (=> b!1205128 (= lt!546563 (getCurrentListMapNoExtraKeys!5337 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1205129 () Bool)

(declare-fun res!801706 () Bool)

(assert (=> b!1205129 (=> (not res!801706) (not e!684411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1205129 (= res!801706 (validMask!0 mask!1564))))

(declare-fun b!1205130 () Bool)

(declare-fun res!801700 () Bool)

(assert (=> b!1205130 (=> (not res!801700) (not e!684412))))

(declare-datatypes ((List!26673 0))(
  ( (Nil!26670) (Cons!26669 (h!27878 (_ BitVec 64)) (t!39581 List!26673)) )
))
(declare-fun arrayNoDuplicates!0 (array!78008 (_ BitVec 32) List!26673) Bool)

(assert (=> b!1205130 (= res!801700 (arrayNoDuplicates!0 lt!546561 #b00000000000000000000000000000000 Nil!26670))))

(declare-fun b!1205131 () Bool)

(declare-fun res!801711 () Bool)

(assert (=> b!1205131 (=> (not res!801711) (not e!684411))))

(assert (=> b!1205131 (= res!801711 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38178 _keys!1208))))))

(declare-fun b!1205132 () Bool)

(declare-fun lt!546552 () Unit!39878)

(assert (=> b!1205132 (= e!684413 lt!546552)))

(assert (=> b!1205132 (= lt!546552 call!58382)))

(assert (=> b!1205132 call!58379))

(declare-fun b!1205133 () Bool)

(assert (=> b!1205133 (= e!684419 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1205134 () Bool)

(declare-fun -!1843 (ListLongMap!17825 (_ BitVec 64)) ListLongMap!17825)

(assert (=> b!1205134 (= e!684417 (= call!58383 (-!1843 call!58380 k!934)))))

(declare-fun b!1205135 () Bool)

(declare-fun e!684423 () Bool)

(declare-fun e!684424 () Bool)

(assert (=> b!1205135 (= e!684423 (and e!684424 mapRes!47793))))

(declare-fun condMapEmpty!47793 () Bool)

(declare-fun mapDefault!47793 () ValueCell!14603)

