; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97932 () Bool)

(assert start!97932)

(declare-fun b_free!23597 () Bool)

(declare-fun b_next!23597 () Bool)

(assert (=> start!97932 (= b_free!23597 (not b_next!23597))))

(declare-fun tp!83495 () Bool)

(declare-fun b_and!37999 () Bool)

(assert (=> start!97932 (= tp!83495 b_and!37999)))

(declare-fun mapNonEmpty!44008 () Bool)

(declare-fun mapRes!44008 () Bool)

(declare-fun tp!83496 () Bool)

(declare-fun e!638403 () Bool)

(assert (=> mapNonEmpty!44008 (= mapRes!44008 (and tp!83496 e!638403))))

(declare-fun mapKey!44008 () (_ BitVec 32))

(declare-datatypes ((V!42629 0))(
  ( (V!42630 (val!14120 Int)) )
))
(declare-datatypes ((ValueCell!13354 0))(
  ( (ValueCellFull!13354 (v!16754 V!42629)) (EmptyCell!13354) )
))
(declare-datatypes ((array!73080 0))(
  ( (array!73081 (arr!35189 (Array (_ BitVec 32) ValueCell!13354)) (size!35726 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73080)

(declare-fun mapRest!44008 () (Array (_ BitVec 32) ValueCell!13354))

(declare-fun mapValue!44008 () ValueCell!13354)

(assert (=> mapNonEmpty!44008 (= (arr!35189 _values!996) (store mapRest!44008 mapKey!44008 mapValue!44008))))

(declare-fun zeroValue!944 () V!42629)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!47071 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73082 0))(
  ( (array!73083 (arr!35190 (Array (_ BitVec 32) (_ BitVec 64))) (size!35727 (_ BitVec 32))) )
))
(declare-fun lt!498241 () array!73082)

(declare-fun lt!498245 () array!73080)

(declare-datatypes ((tuple2!17782 0))(
  ( (tuple2!17783 (_1!8901 (_ BitVec 64)) (_2!8901 V!42629)) )
))
(declare-datatypes ((List!24621 0))(
  ( (Nil!24618) (Cons!24617 (h!25826 tuple2!17782) (t!35217 List!24621)) )
))
(declare-datatypes ((ListLongMap!15763 0))(
  ( (ListLongMap!15764 (toList!7897 List!24621)) )
))
(declare-fun call!47075 () ListLongMap!15763)

(declare-fun minValue!944 () V!42629)

(declare-fun getCurrentListMapNoExtraKeys!4358 (array!73082 array!73080 (_ BitVec 32) (_ BitVec 32) V!42629 V!42629 (_ BitVec 32) Int) ListLongMap!15763)

(assert (=> bm!47071 (= call!47075 (getCurrentListMapNoExtraKeys!4358 lt!498241 lt!498245 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121137 () Bool)

(declare-fun res!749067 () Bool)

(declare-fun e!638405 () Bool)

(assert (=> b!1121137 (=> (not res!749067) (not e!638405))))

(declare-fun _keys!1208 () array!73082)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1121137 (= res!749067 (= (select (arr!35190 _keys!1208) i!673) k!934))))

(declare-fun b!1121138 () Bool)

(declare-fun tp_is_empty!28127 () Bool)

(assert (=> b!1121138 (= e!638403 tp_is_empty!28127)))

(declare-fun res!749070 () Bool)

(assert (=> start!97932 (=> (not res!749070) (not e!638405))))

(assert (=> start!97932 (= res!749070 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35727 _keys!1208))))))

(assert (=> start!97932 e!638405))

(assert (=> start!97932 tp_is_empty!28127))

(declare-fun array_inv!26898 (array!73082) Bool)

(assert (=> start!97932 (array_inv!26898 _keys!1208)))

(assert (=> start!97932 true))

(assert (=> start!97932 tp!83495))

(declare-fun e!638408 () Bool)

(declare-fun array_inv!26899 (array!73080) Bool)

(assert (=> start!97932 (and (array_inv!26899 _values!996) e!638408)))

(declare-fun e!638400 () Bool)

(declare-fun b!1121139 () Bool)

(declare-fun call!47074 () ListLongMap!15763)

(declare-fun -!1063 (ListLongMap!15763 (_ BitVec 64)) ListLongMap!15763)

(assert (=> b!1121139 (= e!638400 (= call!47075 (-!1063 call!47074 k!934)))))

(declare-fun b!1121140 () Bool)

(declare-fun e!638406 () Bool)

(assert (=> b!1121140 (= e!638406 true)))

(assert (=> b!1121140 e!638400))

(declare-fun c!109346 () Bool)

(assert (=> b!1121140 (= c!109346 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36709 0))(
  ( (Unit!36710) )
))
(declare-fun lt!498243 () Unit!36709)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!318 (array!73082 array!73080 (_ BitVec 32) (_ BitVec 32) V!42629 V!42629 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36709)

(assert (=> b!1121140 (= lt!498243 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!318 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121141 () Bool)

(declare-fun e!638404 () Bool)

(assert (=> b!1121141 (= e!638404 e!638406)))

(declare-fun res!749068 () Bool)

(assert (=> b!1121141 (=> res!749068 e!638406)))

(assert (=> b!1121141 (= res!749068 (not (= from!1455 i!673)))))

(declare-fun lt!498246 () ListLongMap!15763)

(assert (=> b!1121141 (= lt!498246 (getCurrentListMapNoExtraKeys!4358 lt!498241 lt!498245 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2458 (Int (_ BitVec 64)) V!42629)

(assert (=> b!1121141 (= lt!498245 (array!73081 (store (arr!35189 _values!996) i!673 (ValueCellFull!13354 (dynLambda!2458 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35726 _values!996)))))

(declare-fun lt!498242 () ListLongMap!15763)

(assert (=> b!1121141 (= lt!498242 (getCurrentListMapNoExtraKeys!4358 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1121142 () Bool)

(assert (=> b!1121142 (= e!638400 (= call!47075 call!47074))))

(declare-fun b!1121143 () Bool)

(declare-fun res!749062 () Bool)

(assert (=> b!1121143 (=> (not res!749062) (not e!638405))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1121143 (= res!749062 (validKeyInArray!0 k!934))))

(declare-fun b!1121144 () Bool)

(declare-fun e!638402 () Bool)

(assert (=> b!1121144 (= e!638405 e!638402)))

(declare-fun res!749066 () Bool)

(assert (=> b!1121144 (=> (not res!749066) (not e!638402))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73082 (_ BitVec 32)) Bool)

(assert (=> b!1121144 (= res!749066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498241 mask!1564))))

(assert (=> b!1121144 (= lt!498241 (array!73083 (store (arr!35190 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35727 _keys!1208)))))

(declare-fun b!1121145 () Bool)

(declare-fun res!749060 () Bool)

(assert (=> b!1121145 (=> (not res!749060) (not e!638405))))

(assert (=> b!1121145 (= res!749060 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35727 _keys!1208))))))

(declare-fun mapIsEmpty!44008 () Bool)

(assert (=> mapIsEmpty!44008 mapRes!44008))

(declare-fun b!1121146 () Bool)

(declare-fun res!749063 () Bool)

(assert (=> b!1121146 (=> (not res!749063) (not e!638405))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1121146 (= res!749063 (validMask!0 mask!1564))))

(declare-fun b!1121147 () Bool)

(declare-fun e!638401 () Bool)

(assert (=> b!1121147 (= e!638401 tp_is_empty!28127)))

(declare-fun b!1121148 () Bool)

(assert (=> b!1121148 (= e!638408 (and e!638401 mapRes!44008))))

(declare-fun condMapEmpty!44008 () Bool)

(declare-fun mapDefault!44008 () ValueCell!13354)

