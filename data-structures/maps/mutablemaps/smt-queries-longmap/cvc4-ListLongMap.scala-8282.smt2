; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100864 () Bool)

(assert start!100864)

(declare-fun b_free!25967 () Bool)

(declare-fun b_next!25967 () Bool)

(assert (=> start!100864 (= b_free!25967 (not b_next!25967))))

(declare-fun tp!90907 () Bool)

(declare-fun b_and!42949 () Bool)

(assert (=> start!100864 (= tp!90907 b_and!42949)))

(declare-datatypes ((array!78098 0))(
  ( (array!78099 (arr!37685 (Array (_ BitVec 32) (_ BitVec 64))) (size!38222 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78098)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!685627 () Bool)

(declare-fun b!1207259 () Bool)

(declare-fun arrayContainsKey!0 (array!78098 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1207259 (= e!685627 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!58949 () Bool)

(declare-fun call!58956 () Bool)

(declare-fun call!58958 () Bool)

(assert (=> bm!58949 (= call!58956 call!58958)))

(declare-datatypes ((V!46021 0))(
  ( (V!46022 (val!15392 Int)) )
))
(declare-fun zeroValue!944 () V!46021)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14626 0))(
  ( (ValueCellFull!14626 (v!18038 V!46021)) (EmptyCell!14626) )
))
(declare-datatypes ((array!78100 0))(
  ( (array!78101 (arr!37686 (Array (_ BitVec 32) ValueCell!14626)) (size!38223 (_ BitVec 32))) )
))
(declare-fun lt!547735 () array!78100)

(declare-datatypes ((tuple2!19888 0))(
  ( (tuple2!19889 (_1!9954 (_ BitVec 64)) (_2!9954 V!46021)) )
))
(declare-datatypes ((List!26711 0))(
  ( (Nil!26708) (Cons!26707 (h!27916 tuple2!19888) (t!39665 List!26711)) )
))
(declare-datatypes ((ListLongMap!17869 0))(
  ( (ListLongMap!17870 (toList!8950 List!26711)) )
))
(declare-fun call!58957 () ListLongMap!17869)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!547741 () array!78098)

(declare-fun bm!58950 () Bool)

(declare-fun _values!996 () array!78100)

(declare-fun c!118572 () Bool)

(declare-fun minValue!944 () V!46021)

(declare-fun getCurrentListMapNoExtraKeys!5357 (array!78098 array!78100 (_ BitVec 32) (_ BitVec 32) V!46021 V!46021 (_ BitVec 32) Int) ListLongMap!17869)

(assert (=> bm!58950 (= call!58957 (getCurrentListMapNoExtraKeys!5357 (ite c!118572 lt!547741 _keys!1208) (ite c!118572 lt!547735 _values!996) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1207260 () Bool)

(declare-datatypes ((Unit!39943 0))(
  ( (Unit!39944) )
))
(declare-fun e!685639 () Unit!39943)

(declare-fun Unit!39945 () Unit!39943)

(assert (=> b!1207260 (= e!685639 Unit!39945)))

(declare-fun bm!58951 () Bool)

(declare-fun call!58955 () Unit!39943)

(declare-fun call!58959 () Unit!39943)

(assert (=> bm!58951 (= call!58955 call!58959)))

(declare-fun b!1207261 () Bool)

(declare-fun e!685630 () Bool)

(declare-fun e!685631 () Bool)

(assert (=> b!1207261 (= e!685630 e!685631)))

(declare-fun res!802805 () Bool)

(assert (=> b!1207261 (=> (not res!802805) (not e!685631))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78098 (_ BitVec 32)) Bool)

(assert (=> b!1207261 (= res!802805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!547741 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1207261 (= lt!547741 (array!78099 (store (arr!37685 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38222 _keys!1208)))))

(declare-fun b!1207262 () Bool)

(declare-fun e!685638 () Bool)

(declare-fun e!685629 () Bool)

(assert (=> b!1207262 (= e!685638 e!685629)))

(declare-fun res!802813 () Bool)

(assert (=> b!1207262 (=> res!802813 e!685629)))

(assert (=> b!1207262 (= res!802813 (not (= from!1455 i!673)))))

(declare-fun lt!547744 () ListLongMap!17869)

(assert (=> b!1207262 (= lt!547744 (getCurrentListMapNoExtraKeys!5357 lt!547741 lt!547735 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3276 (Int (_ BitVec 64)) V!46021)

(assert (=> b!1207262 (= lt!547735 (array!78101 (store (arr!37686 _values!996) i!673 (ValueCellFull!14626 (dynLambda!3276 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38223 _values!996)))))

(declare-fun lt!547737 () ListLongMap!17869)

(assert (=> b!1207262 (= lt!547737 (getCurrentListMapNoExtraKeys!5357 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1207263 () Bool)

(declare-fun e!685626 () Unit!39943)

(declare-fun lt!547736 () Unit!39943)

(assert (=> b!1207263 (= e!685626 lt!547736)))

(declare-fun lt!547733 () Unit!39943)

(declare-fun lt!547743 () ListLongMap!17869)

(declare-fun addStillContains!1043 (ListLongMap!17869 (_ BitVec 64) V!46021 (_ BitVec 64)) Unit!39943)

(assert (=> b!1207263 (= lt!547733 (addStillContains!1043 lt!547743 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun lt!547732 () ListLongMap!17869)

(declare-fun call!58954 () ListLongMap!17869)

(assert (=> b!1207263 (= lt!547732 call!58954)))

(assert (=> b!1207263 call!58958))

(assert (=> b!1207263 (= lt!547736 call!58959)))

(declare-fun contains!6953 (ListLongMap!17869 (_ BitVec 64)) Bool)

(declare-fun +!3979 (ListLongMap!17869 tuple2!19888) ListLongMap!17869)

(assert (=> b!1207263 (contains!6953 (+!3979 lt!547732 (tuple2!19889 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1207264 () Bool)

(declare-fun res!802806 () Bool)

(assert (=> b!1207264 (=> (not res!802806) (not e!685630))))

(assert (=> b!1207264 (= res!802806 (and (= (size!38223 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38222 _keys!1208) (size!38223 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1207265 () Bool)

(declare-fun lt!547731 () Unit!39943)

(assert (=> b!1207265 (= e!685639 lt!547731)))

(assert (=> b!1207265 (= lt!547731 call!58955)))

(assert (=> b!1207265 call!58956))

(declare-fun b!1207266 () Bool)

(declare-fun e!685635 () Bool)

(declare-fun e!685625 () Bool)

(assert (=> b!1207266 (= e!685635 e!685625)))

(declare-fun res!802815 () Bool)

(assert (=> b!1207266 (=> res!802815 e!685625)))

(assert (=> b!1207266 (= res!802815 (not (contains!6953 lt!547743 k!934)))))

(assert (=> b!1207266 (= lt!547743 (getCurrentListMapNoExtraKeys!5357 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!58953 () ListLongMap!17869)

(declare-fun bm!58952 () Bool)

(declare-fun c!118575 () Bool)

(assert (=> bm!58952 (= call!58958 (contains!6953 (ite c!118575 lt!547732 call!58953) k!934))))

(declare-fun b!1207267 () Bool)

(declare-fun res!802811 () Bool)

(assert (=> b!1207267 (=> (not res!802811) (not e!685630))))

(assert (=> b!1207267 (= res!802811 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38222 _keys!1208))))))

(declare-fun b!1207268 () Bool)

(declare-fun res!802818 () Bool)

(assert (=> b!1207268 (=> (not res!802818) (not e!685630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1207268 (= res!802818 (validMask!0 mask!1564))))

(declare-fun b!1207269 () Bool)

(declare-fun e!685637 () Unit!39943)

(assert (=> b!1207269 (= e!685626 e!685637)))

(declare-fun c!118573 () Bool)

(declare-fun lt!547738 () Bool)

(assert (=> b!1207269 (= c!118573 (and (not lt!547738) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1207270 () Bool)

(assert (=> b!1207270 (= e!685629 e!685635)))

(declare-fun res!802816 () Bool)

(assert (=> b!1207270 (=> res!802816 e!685635)))

(assert (=> b!1207270 (= res!802816 (not (= (select (arr!37685 _keys!1208) from!1455) k!934)))))

(declare-fun e!685634 () Bool)

(assert (=> b!1207270 e!685634))

(assert (=> b!1207270 (= c!118572 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!547734 () Unit!39943)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1062 (array!78098 array!78100 (_ BitVec 32) (_ BitVec 32) V!46021 V!46021 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39943)

(assert (=> b!1207270 (= lt!547734 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1062 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!58953 () Bool)

(declare-fun call!58952 () ListLongMap!17869)

(assert (=> bm!58953 (= call!58952 (getCurrentListMapNoExtraKeys!5357 (ite c!118572 _keys!1208 lt!547741) (ite c!118572 _values!996 lt!547735) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1207271 () Bool)

(declare-fun e!685632 () Bool)

(assert (=> b!1207271 (= e!685632 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1207272 () Bool)

(declare-fun res!802807 () Bool)

(assert (=> b!1207272 (=> (not res!802807) (not e!685630))))

(assert (=> b!1207272 (= res!802807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!802817 () Bool)

(assert (=> start!100864 (=> (not res!802817) (not e!685630))))

(assert (=> start!100864 (= res!802817 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38222 _keys!1208))))))

(assert (=> start!100864 e!685630))

(declare-fun tp_is_empty!30671 () Bool)

(assert (=> start!100864 tp_is_empty!30671))

(declare-fun array_inv!28610 (array!78098) Bool)

(assert (=> start!100864 (array_inv!28610 _keys!1208)))

(assert (=> start!100864 true))

(assert (=> start!100864 tp!90907))

(declare-fun e!685640 () Bool)

(declare-fun array_inv!28611 (array!78100) Bool)

(assert (=> start!100864 (and (array_inv!28611 _values!996) e!685640)))

(declare-fun bm!58954 () Bool)

(assert (=> bm!58954 (= call!58953 call!58954)))

(declare-fun b!1207273 () Bool)

(declare-fun e!685636 () Bool)

(assert (=> b!1207273 (= e!685636 tp_is_empty!30671)))

(declare-fun b!1207274 () Bool)

(assert (=> b!1207274 (= e!685625 (or (bvsge (size!38222 _keys!1208) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38222 _keys!1208))))))

(declare-datatypes ((List!26712 0))(
  ( (Nil!26709) (Cons!26708 (h!27917 (_ BitVec 64)) (t!39666 List!26712)) )
))
(declare-fun arrayNoDuplicates!0 (array!78098 (_ BitVec 32) List!26712) Bool)

(assert (=> b!1207274 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26709)))

(declare-fun lt!547742 () Unit!39943)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78098 (_ BitVec 32) (_ BitVec 32)) Unit!39943)

(assert (=> b!1207274 (= lt!547742 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1207274 e!685632))

(declare-fun res!802804 () Bool)

(assert (=> b!1207274 (=> (not res!802804) (not e!685632))))

(assert (=> b!1207274 (= res!802804 e!685627)))

(declare-fun c!118576 () Bool)

(assert (=> b!1207274 (= c!118576 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!547740 () Unit!39943)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!581 (array!78098 array!78100 (_ BitVec 32) (_ BitVec 32) V!46021 V!46021 (_ BitVec 64) (_ BitVec 32) Int) Unit!39943)

(assert (=> b!1207274 (= lt!547740 (lemmaListMapContainsThenArrayContainsFrom!581 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!547730 () Unit!39943)

(assert (=> b!1207274 (= lt!547730 e!685626)))

(assert (=> b!1207274 (= c!118575 (and (not lt!547738) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1207274 (= lt!547738 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1207275 () Bool)

(declare-fun c!118574 () Bool)

(assert (=> b!1207275 (= c!118574 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!547738))))

(assert (=> b!1207275 (= e!685637 e!685639)))

(declare-fun b!1207276 () Bool)

(declare-fun e!685628 () Bool)

(assert (=> b!1207276 (= e!685628 tp_is_empty!30671)))

(declare-fun b!1207277 () Bool)

(declare-fun res!802814 () Bool)

(assert (=> b!1207277 (=> (not res!802814) (not e!685631))))

(assert (=> b!1207277 (= res!802814 (arrayNoDuplicates!0 lt!547741 #b00000000000000000000000000000000 Nil!26709))))

(declare-fun b!1207278 () Bool)

(assert (=> b!1207278 (= e!685634 (= call!58952 call!58957))))

(declare-fun b!1207279 () Bool)

(assert (=> b!1207279 (= e!685631 (not e!685638))))

(declare-fun res!802808 () Bool)

(assert (=> b!1207279 (=> res!802808 e!685638)))

(assert (=> b!1207279 (= res!802808 (bvsgt from!1455 i!673))))

(assert (=> b!1207279 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!547745 () Unit!39943)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78098 (_ BitVec 64) (_ BitVec 32)) Unit!39943)

(assert (=> b!1207279 (= lt!547745 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1207280 () Bool)

(declare-fun mapRes!47865 () Bool)

(assert (=> b!1207280 (= e!685640 (and e!685636 mapRes!47865))))

(declare-fun condMapEmpty!47865 () Bool)

(declare-fun mapDefault!47865 () ValueCell!14626)

