; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98118 () Bool)

(assert start!98118)

(declare-fun b_free!23783 () Bool)

(declare-fun b_next!23783 () Bool)

(assert (=> start!98118 (= b_free!23783 (not b_next!23783))))

(declare-fun tp!84054 () Bool)

(declare-fun b_and!38371 () Bool)

(assert (=> start!98118 (= tp!84054 b_and!38371)))

(declare-fun b!1126488 () Bool)

(declare-fun res!752838 () Bool)

(declare-fun e!641242 () Bool)

(assert (=> b!1126488 (=> (not res!752838) (not e!641242))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73448 0))(
  ( (array!73449 (arr!35373 (Array (_ BitVec 32) (_ BitVec 64))) (size!35910 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73448)

(assert (=> b!1126488 (= res!752838 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35910 _keys!1208))))))

(declare-fun b!1126489 () Bool)

(declare-fun e!641234 () Bool)

(declare-fun tp_is_empty!28313 () Bool)

(assert (=> b!1126489 (= e!641234 tp_is_empty!28313)))

(declare-fun b!1126490 () Bool)

(declare-fun e!641240 () Bool)

(declare-fun e!641237 () Bool)

(assert (=> b!1126490 (= e!641240 (not e!641237))))

(declare-fun res!752837 () Bool)

(assert (=> b!1126490 (=> res!752837 e!641237)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1126490 (= res!752837 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1126490 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36863 0))(
  ( (Unit!36864) )
))
(declare-fun lt!500234 () Unit!36863)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73448 (_ BitVec 64) (_ BitVec 32)) Unit!36863)

(assert (=> b!1126490 (= lt!500234 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1126491 () Bool)

(declare-fun res!752834 () Bool)

(assert (=> b!1126491 (=> (not res!752834) (not e!641242))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42877 0))(
  ( (V!42878 (val!14213 Int)) )
))
(declare-datatypes ((ValueCell!13447 0))(
  ( (ValueCellFull!13447 (v!16847 V!42877)) (EmptyCell!13447) )
))
(declare-datatypes ((array!73450 0))(
  ( (array!73451 (arr!35374 (Array (_ BitVec 32) ValueCell!13447)) (size!35911 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73450)

(assert (=> b!1126491 (= res!752834 (and (= (size!35911 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35910 _keys!1208) (size!35911 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1126492 () Bool)

(declare-fun e!641238 () Bool)

(declare-fun e!641243 () Bool)

(assert (=> b!1126492 (= e!641238 e!641243)))

(declare-fun res!752835 () Bool)

(assert (=> b!1126492 (=> res!752835 e!641243)))

(assert (=> b!1126492 (= res!752835 (not (= (select (arr!35373 _keys!1208) from!1455) k!934)))))

(declare-fun e!641239 () Bool)

(assert (=> b!1126492 e!641239))

(declare-fun c!109625 () Bool)

(assert (=> b!1126492 (= c!109625 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42877)

(declare-fun lt!500233 () Unit!36863)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42877)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!381 (array!73448 array!73450 (_ BitVec 32) (_ BitVec 32) V!42877 V!42877 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36863)

(assert (=> b!1126492 (= lt!500233 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!381 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((tuple2!17958 0))(
  ( (tuple2!17959 (_1!8989 (_ BitVec 64)) (_2!8989 V!42877)) )
))
(declare-datatypes ((List!24785 0))(
  ( (Nil!24782) (Cons!24781 (h!25990 tuple2!17958) (t!35567 List!24785)) )
))
(declare-datatypes ((ListLongMap!15939 0))(
  ( (ListLongMap!15940 (toList!7985 List!24785)) )
))
(declare-fun call!47632 () ListLongMap!15939)

(declare-fun lt!500231 () array!73448)

(declare-fun bm!47629 () Bool)

(declare-fun lt!500232 () array!73450)

(declare-fun getCurrentListMapNoExtraKeys!4444 (array!73448 array!73450 (_ BitVec 32) (_ BitVec 32) V!42877 V!42877 (_ BitVec 32) Int) ListLongMap!15939)

(assert (=> bm!47629 (= call!47632 (getCurrentListMapNoExtraKeys!4444 lt!500231 lt!500232 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44287 () Bool)

(declare-fun mapRes!44287 () Bool)

(declare-fun tp!84053 () Bool)

(assert (=> mapNonEmpty!44287 (= mapRes!44287 (and tp!84053 e!641234))))

(declare-fun mapRest!44287 () (Array (_ BitVec 32) ValueCell!13447))

(declare-fun mapKey!44287 () (_ BitVec 32))

(declare-fun mapValue!44287 () ValueCell!13447)

(assert (=> mapNonEmpty!44287 (= (arr!35374 _values!996) (store mapRest!44287 mapKey!44287 mapValue!44287))))

(declare-fun b!1126493 () Bool)

(declare-fun e!641241 () Bool)

(assert (=> b!1126493 (= e!641241 tp_is_empty!28313)))

(declare-fun b!1126494 () Bool)

(declare-fun res!752833 () Bool)

(assert (=> b!1126494 (=> (not res!752833) (not e!641240))))

(declare-datatypes ((List!24786 0))(
  ( (Nil!24783) (Cons!24782 (h!25991 (_ BitVec 64)) (t!35568 List!24786)) )
))
(declare-fun arrayNoDuplicates!0 (array!73448 (_ BitVec 32) List!24786) Bool)

(assert (=> b!1126494 (= res!752833 (arrayNoDuplicates!0 lt!500231 #b00000000000000000000000000000000 Nil!24783))))

(declare-fun b!1126495 () Bool)

(declare-fun res!752830 () Bool)

(assert (=> b!1126495 (=> (not res!752830) (not e!641242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1126495 (= res!752830 (validMask!0 mask!1564))))

(declare-fun call!47633 () ListLongMap!15939)

(declare-fun bm!47630 () Bool)

(assert (=> bm!47630 (= call!47633 (getCurrentListMapNoExtraKeys!4444 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44287 () Bool)

(assert (=> mapIsEmpty!44287 mapRes!44287))

(declare-fun b!1126496 () Bool)

(declare-fun -!1125 (ListLongMap!15939 (_ BitVec 64)) ListLongMap!15939)

(assert (=> b!1126496 (= e!641239 (= call!47632 (-!1125 call!47633 k!934)))))

(declare-fun b!1126497 () Bool)

(declare-fun res!752839 () Bool)

(assert (=> b!1126497 (=> (not res!752839) (not e!641242))))

(assert (=> b!1126497 (= res!752839 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24783))))

(declare-fun b!1126498 () Bool)

(assert (=> b!1126498 (= e!641237 e!641238)))

(declare-fun res!752836 () Bool)

(assert (=> b!1126498 (=> res!752836 e!641238)))

(assert (=> b!1126498 (= res!752836 (not (= from!1455 i!673)))))

(declare-fun lt!500230 () ListLongMap!15939)

(assert (=> b!1126498 (= lt!500230 (getCurrentListMapNoExtraKeys!4444 lt!500231 lt!500232 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2525 (Int (_ BitVec 64)) V!42877)

(assert (=> b!1126498 (= lt!500232 (array!73451 (store (arr!35374 _values!996) i!673 (ValueCellFull!13447 (dynLambda!2525 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35911 _values!996)))))

(declare-fun lt!500235 () ListLongMap!15939)

(assert (=> b!1126498 (= lt!500235 (getCurrentListMapNoExtraKeys!4444 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1126499 () Bool)

(declare-fun e!641236 () Bool)

(assert (=> b!1126499 (= e!641236 (and e!641241 mapRes!44287))))

(declare-fun condMapEmpty!44287 () Bool)

(declare-fun mapDefault!44287 () ValueCell!13447)

