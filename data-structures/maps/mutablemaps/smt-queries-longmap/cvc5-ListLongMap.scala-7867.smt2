; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97982 () Bool)

(assert start!97982)

(declare-fun b_free!23647 () Bool)

(declare-fun b_next!23647 () Bool)

(assert (=> start!97982 (= b_free!23647 (not b_next!23647))))

(declare-fun tp!83646 () Bool)

(declare-fun b_and!38099 () Bool)

(assert (=> start!97982 (= tp!83646 b_and!38099)))

(declare-fun b!1122491 () Bool)

(declare-fun e!639109 () Bool)

(declare-fun tp_is_empty!28177 () Bool)

(assert (=> b!1122491 (= e!639109 tp_is_empty!28177)))

(declare-datatypes ((V!42697 0))(
  ( (V!42698 (val!14145 Int)) )
))
(declare-fun zeroValue!944 () V!42697)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!47221 () Bool)

(declare-datatypes ((ValueCell!13379 0))(
  ( (ValueCellFull!13379 (v!16779 V!42697)) (EmptyCell!13379) )
))
(declare-datatypes ((array!73180 0))(
  ( (array!73181 (arr!35239 (Array (_ BitVec 32) ValueCell!13379)) (size!35776 (_ BitVec 32))) )
))
(declare-fun lt!498723 () array!73180)

(declare-datatypes ((tuple2!17830 0))(
  ( (tuple2!17831 (_1!8925 (_ BitVec 64)) (_2!8925 V!42697)) )
))
(declare-datatypes ((List!24667 0))(
  ( (Nil!24664) (Cons!24663 (h!25872 tuple2!17830) (t!35313 List!24667)) )
))
(declare-datatypes ((ListLongMap!15811 0))(
  ( (ListLongMap!15812 (toList!7921 List!24667)) )
))
(declare-fun call!47225 () ListLongMap!15811)

(declare-fun minValue!944 () V!42697)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((array!73182 0))(
  ( (array!73183 (arr!35240 (Array (_ BitVec 32) (_ BitVec 64))) (size!35777 (_ BitVec 32))) )
))
(declare-fun lt!498725 () array!73182)

(declare-fun getCurrentListMapNoExtraKeys!4381 (array!73182 array!73180 (_ BitVec 32) (_ BitVec 32) V!42697 V!42697 (_ BitVec 32) Int) ListLongMap!15811)

(assert (=> bm!47221 (= call!47225 (getCurrentListMapNoExtraKeys!4381 lt!498725 lt!498723 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122492 () Bool)

(declare-fun e!639110 () Bool)

(declare-fun e!639111 () Bool)

(assert (=> b!1122492 (= e!639110 e!639111)))

(declare-fun res!749997 () Bool)

(assert (=> b!1122492 (=> res!749997 e!639111)))

(declare-fun _keys!1208 () array!73182)

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1122492 (= res!749997 (not (= (select (arr!35240 _keys!1208) from!1455) k!934)))))

(declare-fun e!639105 () Bool)

(assert (=> b!1122492 e!639105))

(declare-fun c!109421 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1122492 (= c!109421 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun _values!996 () array!73180)

(declare-datatypes ((Unit!36749 0))(
  ( (Unit!36750) )
))
(declare-fun lt!498722 () Unit!36749)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!334 (array!73182 array!73180 (_ BitVec 32) (_ BitVec 32) V!42697 V!42697 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36749)

(assert (=> b!1122492 (= lt!498722 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!334 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!47222 () Bool)

(declare-fun call!47224 () ListLongMap!15811)

(assert (=> bm!47222 (= call!47224 (getCurrentListMapNoExtraKeys!4381 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122493 () Bool)

(declare-fun -!1083 (ListLongMap!15811 (_ BitVec 64)) ListLongMap!15811)

(assert (=> b!1122493 (= e!639105 (= call!47225 (-!1083 call!47224 k!934)))))

(declare-fun mapNonEmpty!44083 () Bool)

(declare-fun mapRes!44083 () Bool)

(declare-fun tp!83645 () Bool)

(declare-fun e!639112 () Bool)

(assert (=> mapNonEmpty!44083 (= mapRes!44083 (and tp!83645 e!639112))))

(declare-fun mapKey!44083 () (_ BitVec 32))

(declare-fun mapRest!44083 () (Array (_ BitVec 32) ValueCell!13379))

(declare-fun mapValue!44083 () ValueCell!13379)

(assert (=> mapNonEmpty!44083 (= (arr!35239 _values!996) (store mapRest!44083 mapKey!44083 mapValue!44083))))

(declare-fun b!1122494 () Bool)

(declare-fun res!750000 () Bool)

(declare-fun e!639106 () Bool)

(assert (=> b!1122494 (=> (not res!750000) (not e!639106))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1122494 (= res!750000 (validMask!0 mask!1564))))

(declare-fun b!1122495 () Bool)

(declare-fun res!749990 () Bool)

(assert (=> b!1122495 (=> (not res!749990) (not e!639106))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73182 (_ BitVec 32)) Bool)

(assert (=> b!1122495 (= res!749990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1122496 () Bool)

(declare-fun e!639113 () Bool)

(assert (=> b!1122496 (= e!639113 e!639110)))

(declare-fun res!749999 () Bool)

(assert (=> b!1122496 (=> res!749999 e!639110)))

(assert (=> b!1122496 (= res!749999 (not (= from!1455 i!673)))))

(declare-fun lt!498720 () ListLongMap!15811)

(assert (=> b!1122496 (= lt!498720 (getCurrentListMapNoExtraKeys!4381 lt!498725 lt!498723 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2478 (Int (_ BitVec 64)) V!42697)

(assert (=> b!1122496 (= lt!498723 (array!73181 (store (arr!35239 _values!996) i!673 (ValueCellFull!13379 (dynLambda!2478 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35776 _values!996)))))

(declare-fun lt!498724 () ListLongMap!15811)

(assert (=> b!1122496 (= lt!498724 (getCurrentListMapNoExtraKeys!4381 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1122497 () Bool)

(declare-fun e!639107 () Bool)

(assert (=> b!1122497 (= e!639107 (and e!639109 mapRes!44083))))

(declare-fun condMapEmpty!44083 () Bool)

(declare-fun mapDefault!44083 () ValueCell!13379)

