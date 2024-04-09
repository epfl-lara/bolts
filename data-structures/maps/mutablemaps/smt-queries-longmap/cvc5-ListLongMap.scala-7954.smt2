; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98600 () Bool)

(assert start!98600)

(declare-fun b_free!24169 () Bool)

(declare-fun b_next!24169 () Bool)

(assert (=> start!98600 (= b_free!24169 (not b_next!24169))))

(declare-fun tp!85219 () Bool)

(declare-fun b_and!39201 () Bool)

(assert (=> start!98600 (= tp!85219 b_and!39201)))

(declare-fun b!1142765 () Bool)

(declare-fun res!761567 () Bool)

(declare-fun e!650140 () Bool)

(assert (=> b!1142765 (=> (not res!761567) (not e!650140))))

(declare-datatypes ((array!74208 0))(
  ( (array!74209 (arr!35751 (Array (_ BitVec 32) (_ BitVec 64))) (size!36288 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74208)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74208 (_ BitVec 32)) Bool)

(assert (=> b!1142765 (= res!761567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-datatypes ((V!43393 0))(
  ( (V!43394 (val!14406 Int)) )
))
(declare-datatypes ((tuple2!18318 0))(
  ( (tuple2!18319 (_1!9169 (_ BitVec 64)) (_2!9169 V!43393)) )
))
(declare-datatypes ((List!25117 0))(
  ( (Nil!25114) (Cons!25113 (h!26322 tuple2!18318) (t!36285 List!25117)) )
))
(declare-datatypes ((ListLongMap!16299 0))(
  ( (ListLongMap!16300 (toList!8165 List!25117)) )
))
(declare-fun call!51573 () ListLongMap!16299)

(declare-fun e!650143 () Bool)

(declare-fun call!51576 () ListLongMap!16299)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1142766 () Bool)

(declare-fun -!1259 (ListLongMap!16299 (_ BitVec 64)) ListLongMap!16299)

(assert (=> b!1142766 (= e!650143 (= call!51573 (-!1259 call!51576 k!934)))))

(declare-fun b!1142767 () Bool)

(declare-fun e!650149 () Bool)

(assert (=> b!1142767 (= e!650149 true)))

(declare-fun lt!509481 () V!43393)

(declare-fun lt!509476 () ListLongMap!16299)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun +!3509 (ListLongMap!16299 tuple2!18318) ListLongMap!16299)

(assert (=> b!1142767 (= (-!1259 (+!3509 lt!509476 (tuple2!18319 (select (arr!35751 _keys!1208) from!1455) lt!509481)) (select (arr!35751 _keys!1208) from!1455)) lt!509476)))

(declare-datatypes ((Unit!37418 0))(
  ( (Unit!37419) )
))
(declare-fun lt!509465 () Unit!37418)

(declare-fun addThenRemoveForNewKeyIsSame!114 (ListLongMap!16299 (_ BitVec 64) V!43393) Unit!37418)

(assert (=> b!1142767 (= lt!509465 (addThenRemoveForNewKeyIsSame!114 lt!509476 (select (arr!35751 _keys!1208) from!1455) lt!509481))))

(declare-fun lt!509467 () V!43393)

(declare-datatypes ((ValueCell!13640 0))(
  ( (ValueCellFull!13640 (v!17044 V!43393)) (EmptyCell!13640) )
))
(declare-datatypes ((array!74210 0))(
  ( (array!74211 (arr!35752 (Array (_ BitVec 32) ValueCell!13640)) (size!36289 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74210)

(declare-fun get!18192 (ValueCell!13640 V!43393) V!43393)

(assert (=> b!1142767 (= lt!509481 (get!18192 (select (arr!35752 _values!996) from!1455) lt!509467))))

(declare-fun lt!509462 () Unit!37418)

(declare-fun e!650154 () Unit!37418)

(assert (=> b!1142767 (= lt!509462 e!650154)))

(declare-fun c!112330 () Bool)

(declare-fun contains!6668 (ListLongMap!16299 (_ BitVec 64)) Bool)

(assert (=> b!1142767 (= c!112330 (contains!6668 lt!509476 k!934))))

(declare-fun zeroValue!944 () V!43393)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43393)

(declare-fun getCurrentListMapNoExtraKeys!4608 (array!74208 array!74210 (_ BitVec 32) (_ BitVec 32) V!43393 V!43393 (_ BitVec 32) Int) ListLongMap!16299)

(assert (=> b!1142767 (= lt!509476 (getCurrentListMapNoExtraKeys!4608 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!650147 () Bool)

(declare-fun b!1142768 () Bool)

(declare-fun arrayContainsKey!0 (array!74208 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1142768 (= e!650147 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapIsEmpty!44873 () Bool)

(declare-fun mapRes!44873 () Bool)

(assert (=> mapIsEmpty!44873 mapRes!44873))

(declare-fun b!1142769 () Bool)

(declare-fun e!650142 () Bool)

(declare-fun e!650153 () Bool)

(assert (=> b!1142769 (= e!650142 (not e!650153))))

(declare-fun res!761561 () Bool)

(assert (=> b!1142769 (=> res!761561 e!650153)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1142769 (= res!761561 (bvsgt from!1455 i!673))))

(assert (=> b!1142769 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!509475 () Unit!37418)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74208 (_ BitVec 64) (_ BitVec 32)) Unit!37418)

(assert (=> b!1142769 (= lt!509475 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1142770 () Bool)

(declare-fun e!650152 () Unit!37418)

(declare-fun Unit!37420 () Unit!37418)

(assert (=> b!1142770 (= e!650152 Unit!37420)))

(declare-fun c!112328 () Bool)

(declare-fun call!51571 () Bool)

(declare-fun call!51575 () ListLongMap!16299)

(declare-fun bm!51566 () Bool)

(declare-fun lt!509473 () ListLongMap!16299)

(assert (=> bm!51566 (= call!51571 (contains!6668 (ite c!112328 lt!509473 call!51575) k!934))))

(declare-fun b!1142771 () Bool)

(declare-fun e!650145 () Bool)

(assert (=> b!1142771 (= e!650145 e!650149)))

(declare-fun res!761569 () Bool)

(assert (=> b!1142771 (=> res!761569 e!650149)))

(assert (=> b!1142771 (= res!761569 (not (= (select (arr!35751 _keys!1208) from!1455) k!934)))))

(assert (=> b!1142771 e!650143))

(declare-fun c!112327 () Bool)

(assert (=> b!1142771 (= c!112327 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!509466 () Unit!37418)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!514 (array!74208 array!74210 (_ BitVec 32) (_ BitVec 32) V!43393 V!43393 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37418)

(assert (=> b!1142771 (= lt!509466 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!514 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!51567 () Bool)

(declare-fun call!51569 () ListLongMap!16299)

(assert (=> bm!51567 (= call!51575 call!51569)))

(declare-fun b!1142772 () Bool)

(declare-fun e!650141 () Bool)

(declare-fun tp_is_empty!28699 () Bool)

(assert (=> b!1142772 (= e!650141 tp_is_empty!28699)))

(declare-fun lt!509468 () array!74208)

(declare-fun bm!51568 () Bool)

(declare-fun lt!509469 () array!74210)

(assert (=> bm!51568 (= call!51573 (getCurrentListMapNoExtraKeys!4608 lt!509468 lt!509469 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142773 () Bool)

(declare-fun e!650144 () Unit!37418)

(declare-fun lt!509477 () Unit!37418)

(assert (=> b!1142773 (= e!650144 lt!509477)))

(declare-fun call!51572 () Unit!37418)

(assert (=> b!1142773 (= lt!509477 call!51572)))

(declare-fun call!51574 () Bool)

(assert (=> b!1142773 call!51574))

(declare-fun bm!51569 () Bool)

(declare-fun call!51570 () Unit!37418)

(declare-fun c!112329 () Bool)

(declare-fun addStillContains!807 (ListLongMap!16299 (_ BitVec 64) V!43393 (_ BitVec 64)) Unit!37418)

(assert (=> bm!51569 (= call!51570 (addStillContains!807 (ite c!112328 lt!509473 lt!509476) (ite c!112328 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112329 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112328 minValue!944 (ite c!112329 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1142774 () Bool)

(assert (=> b!1142774 (= e!650144 e!650152)))

(declare-fun c!112331 () Bool)

(declare-fun lt!509479 () Bool)

(assert (=> b!1142774 (= c!112331 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!509479))))

(declare-fun b!1142775 () Bool)

(declare-fun res!761570 () Bool)

(assert (=> b!1142775 (=> (not res!761570) (not e!650140))))

(assert (=> b!1142775 (= res!761570 (= (select (arr!35751 _keys!1208) i!673) k!934))))

(declare-fun bm!51570 () Bool)

(assert (=> bm!51570 (= call!51574 call!51571)))

(declare-fun b!1142776 () Bool)

(declare-fun res!761557 () Bool)

(assert (=> b!1142776 (=> (not res!761557) (not e!650140))))

(assert (=> b!1142776 (= res!761557 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36288 _keys!1208))))))

(declare-fun b!1142777 () Bool)

(assert (=> b!1142777 (= e!650153 e!650145)))

(declare-fun res!761564 () Bool)

(assert (=> b!1142777 (=> res!761564 e!650145)))

(assert (=> b!1142777 (= res!761564 (not (= from!1455 i!673)))))

(declare-fun lt!509480 () ListLongMap!16299)

(assert (=> b!1142777 (= lt!509480 (getCurrentListMapNoExtraKeys!4608 lt!509468 lt!509469 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1142777 (= lt!509469 (array!74211 (store (arr!35752 _values!996) i!673 (ValueCellFull!13640 lt!509467)) (size!36289 _values!996)))))

(declare-fun dynLambda!2656 (Int (_ BitVec 64)) V!43393)

(assert (=> b!1142777 (= lt!509467 (dynLambda!2656 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!509478 () ListLongMap!16299)

(assert (=> b!1142777 (= lt!509478 (getCurrentListMapNoExtraKeys!4608 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1142778 () Bool)

(assert (=> b!1142778 (= c!112329 (and (not lt!509479) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!650146 () Unit!37418)

(assert (=> b!1142778 (= e!650146 e!650144)))

(declare-fun b!1142779 () Bool)

(declare-fun e!650139 () Bool)

(assert (=> b!1142779 (= e!650139 tp_is_empty!28699)))

(declare-fun b!1142780 () Bool)

(assert (=> b!1142780 (contains!6668 (+!3509 lt!509473 (tuple2!18319 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!509463 () Unit!37418)

(assert (=> b!1142780 (= lt!509463 call!51570)))

(assert (=> b!1142780 call!51571))

(assert (=> b!1142780 (= lt!509473 call!51569)))

(declare-fun lt!509472 () Unit!37418)

(assert (=> b!1142780 (= lt!509472 (addStillContains!807 lt!509476 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1142780 (= e!650146 lt!509463)))

(declare-fun b!1142781 () Bool)

(assert (=> b!1142781 call!51574))

(declare-fun lt!509461 () Unit!37418)

(assert (=> b!1142781 (= lt!509461 call!51572)))

(assert (=> b!1142781 (= e!650152 lt!509461)))

(declare-fun b!1142782 () Bool)

(assert (=> b!1142782 (= e!650140 e!650142)))

(declare-fun res!761563 () Bool)

(assert (=> b!1142782 (=> (not res!761563) (not e!650142))))

(assert (=> b!1142782 (= res!761563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!509468 mask!1564))))

(assert (=> b!1142782 (= lt!509468 (array!74209 (store (arr!35751 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36288 _keys!1208)))))

(declare-fun b!1142783 () Bool)

(declare-fun res!761562 () Bool)

(assert (=> b!1142783 (=> (not res!761562) (not e!650140))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1142783 (= res!761562 (validKeyInArray!0 k!934))))

(declare-fun b!1142784 () Bool)

(declare-fun res!761560 () Bool)

(assert (=> b!1142784 (=> (not res!761560) (not e!650140))))

(declare-datatypes ((List!25118 0))(
  ( (Nil!25115) (Cons!25114 (h!26323 (_ BitVec 64)) (t!36286 List!25118)) )
))
(declare-fun arrayNoDuplicates!0 (array!74208 (_ BitVec 32) List!25118) Bool)

(assert (=> b!1142784 (= res!761560 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25115))))

(declare-fun b!1142785 () Bool)

(declare-fun e!650148 () Bool)

(assert (=> b!1142785 (= e!650148 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!509479) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1142786 () Bool)

(assert (=> b!1142786 (= e!650148 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1142787 () Bool)

(declare-fun res!761559 () Bool)

(assert (=> b!1142787 (=> (not res!761559) (not e!650140))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1142787 (= res!761559 (validMask!0 mask!1564))))

(declare-fun bm!51571 () Bool)

(assert (=> bm!51571 (= call!51572 call!51570)))

(declare-fun b!1142788 () Bool)

(declare-fun res!761566 () Bool)

(assert (=> b!1142788 (=> (not res!761566) (not e!650140))))

(assert (=> b!1142788 (= res!761566 (and (= (size!36289 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36288 _keys!1208) (size!36289 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1142789 () Bool)

(declare-fun Unit!37421 () Unit!37418)

(assert (=> b!1142789 (= e!650154 Unit!37421)))

(declare-fun b!1142790 () Bool)

(declare-fun Unit!37422 () Unit!37418)

(assert (=> b!1142790 (= e!650154 Unit!37422)))

(assert (=> b!1142790 (= lt!509479 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1142790 (= c!112328 (and (not lt!509479) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!509474 () Unit!37418)

(assert (=> b!1142790 (= lt!509474 e!650146)))

(declare-fun lt!509470 () Unit!37418)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!402 (array!74208 array!74210 (_ BitVec 32) (_ BitVec 32) V!43393 V!43393 (_ BitVec 64) (_ BitVec 32) Int) Unit!37418)

(assert (=> b!1142790 (= lt!509470 (lemmaListMapContainsThenArrayContainsFrom!402 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112332 () Bool)

(assert (=> b!1142790 (= c!112332 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!761565 () Bool)

(assert (=> b!1142790 (= res!761565 e!650148)))

(assert (=> b!1142790 (=> (not res!761565) (not e!650147))))

(assert (=> b!1142790 e!650147))

(declare-fun lt!509471 () Unit!37418)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74208 (_ BitVec 32) (_ BitVec 32)) Unit!37418)

(assert (=> b!1142790 (= lt!509471 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1142790 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25115)))

(declare-fun lt!509464 () Unit!37418)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74208 (_ BitVec 64) (_ BitVec 32) List!25118) Unit!37418)

(assert (=> b!1142790 (= lt!509464 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25115))))

(assert (=> b!1142790 false))

(declare-fun b!1142791 () Bool)

(declare-fun e!650151 () Bool)

(assert (=> b!1142791 (= e!650151 (and e!650141 mapRes!44873))))

(declare-fun condMapEmpty!44873 () Bool)

(declare-fun mapDefault!44873 () ValueCell!13640)

