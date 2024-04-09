; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98084 () Bool)

(assert start!98084)

(declare-fun b_free!23749 () Bool)

(declare-fun b_next!23749 () Bool)

(assert (=> start!98084 (= b_free!23749 (not b_next!23749))))

(declare-fun tp!83951 () Bool)

(declare-fun b_and!38303 () Bool)

(assert (=> start!98084 (= tp!83951 b_and!38303)))

(declare-fun mapNonEmpty!44236 () Bool)

(declare-fun mapRes!44236 () Bool)

(declare-fun tp!83952 () Bool)

(declare-fun e!640729 () Bool)

(assert (=> mapNonEmpty!44236 (= mapRes!44236 (and tp!83952 e!640729))))

(declare-datatypes ((V!42833 0))(
  ( (V!42834 (val!14196 Int)) )
))
(declare-datatypes ((ValueCell!13430 0))(
  ( (ValueCellFull!13430 (v!16830 V!42833)) (EmptyCell!13430) )
))
(declare-fun mapValue!44236 () ValueCell!13430)

(declare-fun mapKey!44236 () (_ BitVec 32))

(declare-datatypes ((array!73380 0))(
  ( (array!73381 (arr!35339 (Array (_ BitVec 32) ValueCell!13430)) (size!35876 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73380)

(declare-fun mapRest!44236 () (Array (_ BitVec 32) ValueCell!13430))

(assert (=> mapNonEmpty!44236 (= (arr!35339 _values!996) (store mapRest!44236 mapKey!44236 mapValue!44236))))

(declare-fun b!1125536 () Bool)

(declare-fun res!752169 () Bool)

(declare-fun e!640732 () Bool)

(assert (=> b!1125536 (=> (not res!752169) (not e!640732))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((array!73382 0))(
  ( (array!73383 (arr!35340 (Array (_ BitVec 32) (_ BitVec 64))) (size!35877 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73382)

(assert (=> b!1125536 (= res!752169 (and (= (size!35876 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35877 _keys!1208) (size!35876 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1125537 () Bool)

(declare-fun e!640733 () Bool)

(declare-fun e!640726 () Bool)

(assert (=> b!1125537 (= e!640733 e!640726)))

(declare-fun res!752167 () Bool)

(assert (=> b!1125537 (=> res!752167 e!640726)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1125537 (= res!752167 (not (= (select (arr!35340 _keys!1208) from!1455) k!934)))))

(declare-fun e!640730 () Bool)

(assert (=> b!1125537 e!640730))

(declare-fun c!109574 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1125537 (= c!109574 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42833)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!36833 0))(
  ( (Unit!36834) )
))
(declare-fun lt!499876 () Unit!36833)

(declare-fun minValue!944 () V!42833)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!369 (array!73382 array!73380 (_ BitVec 32) (_ BitVec 32) V!42833 V!42833 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36833)

(assert (=> b!1125537 (= lt!499876 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!369 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125538 () Bool)

(declare-fun e!640727 () Bool)

(declare-fun e!640724 () Bool)

(assert (=> b!1125538 (= e!640727 (not e!640724))))

(declare-fun res!752173 () Bool)

(assert (=> b!1125538 (=> res!752173 e!640724)))

(assert (=> b!1125538 (= res!752173 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1125538 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!499875 () Unit!36833)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73382 (_ BitVec 64) (_ BitVec 32)) Unit!36833)

(assert (=> b!1125538 (= lt!499875 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1125539 () Bool)

(assert (=> b!1125539 (= e!640724 e!640733)))

(declare-fun res!752170 () Bool)

(assert (=> b!1125539 (=> res!752170 e!640733)))

(assert (=> b!1125539 (= res!752170 (not (= from!1455 i!673)))))

(declare-fun lt!499878 () array!73382)

(declare-datatypes ((tuple2!17924 0))(
  ( (tuple2!17925 (_1!8972 (_ BitVec 64)) (_2!8972 V!42833)) )
))
(declare-datatypes ((List!24753 0))(
  ( (Nil!24750) (Cons!24749 (h!25958 tuple2!17924) (t!35501 List!24753)) )
))
(declare-datatypes ((ListLongMap!15905 0))(
  ( (ListLongMap!15906 (toList!7968 List!24753)) )
))
(declare-fun lt!499872 () ListLongMap!15905)

(declare-fun lt!499877 () array!73380)

(declare-fun getCurrentListMapNoExtraKeys!4427 (array!73382 array!73380 (_ BitVec 32) (_ BitVec 32) V!42833 V!42833 (_ BitVec 32) Int) ListLongMap!15905)

(assert (=> b!1125539 (= lt!499872 (getCurrentListMapNoExtraKeys!4427 lt!499878 lt!499877 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2511 (Int (_ BitVec 64)) V!42833)

(assert (=> b!1125539 (= lt!499877 (array!73381 (store (arr!35339 _values!996) i!673 (ValueCellFull!13430 (dynLambda!2511 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35876 _values!996)))))

(declare-fun lt!499874 () ListLongMap!15905)

(assert (=> b!1125539 (= lt!499874 (getCurrentListMapNoExtraKeys!4427 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1125540 () Bool)

(declare-fun res!752177 () Bool)

(assert (=> b!1125540 (=> (not res!752177) (not e!640732))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1125540 (= res!752177 (validMask!0 mask!1564))))

(declare-fun b!1125541 () Bool)

(assert (=> b!1125541 (= e!640732 e!640727)))

(declare-fun res!752178 () Bool)

(assert (=> b!1125541 (=> (not res!752178) (not e!640727))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73382 (_ BitVec 32)) Bool)

(assert (=> b!1125541 (= res!752178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499878 mask!1564))))

(assert (=> b!1125541 (= lt!499878 (array!73383 (store (arr!35340 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35877 _keys!1208)))))

(declare-fun call!47530 () ListLongMap!15905)

(declare-fun bm!47527 () Bool)

(assert (=> bm!47527 (= call!47530 (getCurrentListMapNoExtraKeys!4427 lt!499878 lt!499877 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125542 () Bool)

(declare-fun res!752171 () Bool)

(assert (=> b!1125542 (=> (not res!752171) (not e!640732))))

(assert (=> b!1125542 (= res!752171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1125543 () Bool)

(declare-fun res!752176 () Bool)

(assert (=> b!1125543 (=> (not res!752176) (not e!640732))))

(assert (=> b!1125543 (= res!752176 (= (select (arr!35340 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!44236 () Bool)

(assert (=> mapIsEmpty!44236 mapRes!44236))

(declare-fun b!1125544 () Bool)

(declare-fun res!752175 () Bool)

(assert (=> b!1125544 (=> (not res!752175) (not e!640732))))

(assert (=> b!1125544 (= res!752175 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35877 _keys!1208))))))

(declare-fun b!1125545 () Bool)

(declare-fun call!47531 () ListLongMap!15905)

(declare-fun -!1115 (ListLongMap!15905 (_ BitVec 64)) ListLongMap!15905)

(assert (=> b!1125545 (= e!640730 (= call!47530 (-!1115 call!47531 k!934)))))

(declare-fun b!1125546 () Bool)

(assert (=> b!1125546 (= e!640726 true)))

(declare-fun lt!499873 () Bool)

(declare-fun contains!6479 (ListLongMap!15905 (_ BitVec 64)) Bool)

(assert (=> b!1125546 (= lt!499873 (contains!6479 (getCurrentListMapNoExtraKeys!4427 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1125547 () Bool)

(declare-fun e!640731 () Bool)

(declare-fun tp_is_empty!28279 () Bool)

(assert (=> b!1125547 (= e!640731 tp_is_empty!28279)))

(declare-fun b!1125548 () Bool)

(declare-fun res!752172 () Bool)

(assert (=> b!1125548 (=> (not res!752172) (not e!640727))))

(declare-datatypes ((List!24754 0))(
  ( (Nil!24751) (Cons!24750 (h!25959 (_ BitVec 64)) (t!35502 List!24754)) )
))
(declare-fun arrayNoDuplicates!0 (array!73382 (_ BitVec 32) List!24754) Bool)

(assert (=> b!1125548 (= res!752172 (arrayNoDuplicates!0 lt!499878 #b00000000000000000000000000000000 Nil!24751))))

(declare-fun b!1125549 () Bool)

(assert (=> b!1125549 (= e!640729 tp_is_empty!28279)))

(declare-fun bm!47528 () Bool)

(assert (=> bm!47528 (= call!47531 (getCurrentListMapNoExtraKeys!4427 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125550 () Bool)

(declare-fun res!752166 () Bool)

(assert (=> b!1125550 (=> (not res!752166) (not e!640732))))

(assert (=> b!1125550 (= res!752166 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24751))))

(declare-fun b!1125551 () Bool)

(declare-fun e!640728 () Bool)

(assert (=> b!1125551 (= e!640728 (and e!640731 mapRes!44236))))

(declare-fun condMapEmpty!44236 () Bool)

(declare-fun mapDefault!44236 () ValueCell!13430)

