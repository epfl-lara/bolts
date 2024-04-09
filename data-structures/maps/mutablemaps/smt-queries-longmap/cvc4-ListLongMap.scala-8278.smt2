; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100808 () Bool)

(assert start!100808)

(declare-fun b_free!25943 () Bool)

(declare-fun b_next!25943 () Bool)

(assert (=> start!100808 (= b_free!25943 (not b_next!25943))))

(declare-fun tp!90833 () Bool)

(declare-fun b_and!42883 () Bool)

(assert (=> start!100808 (= tp!90833 b_and!42883)))

(declare-datatypes ((V!45989 0))(
  ( (V!45990 (val!15380 Int)) )
))
(declare-fun zeroValue!944 () V!45989)

(declare-fun bm!58640 () Bool)

(declare-fun c!118349 () Bool)

(declare-datatypes ((tuple2!19866 0))(
  ( (tuple2!19867 (_1!9943 (_ BitVec 64)) (_2!9943 V!45989)) )
))
(declare-datatypes ((List!26690 0))(
  ( (Nil!26687) (Cons!26686 (h!27895 tuple2!19866) (t!39620 List!26690)) )
))
(declare-datatypes ((ListLongMap!17847 0))(
  ( (ListLongMap!17848 (toList!8939 List!26690)) )
))
(declare-fun call!58644 () ListLongMap!17847)

(declare-fun lt!547051 () ListLongMap!17847)

(declare-fun c!118350 () Bool)

(declare-fun minValue!944 () V!45989)

(declare-fun +!3968 (ListLongMap!17847 tuple2!19866) ListLongMap!17847)

(assert (=> bm!58640 (= call!58644 (+!3968 lt!547051 (ite (or c!118350 c!118349) (tuple2!19867 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19867 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!58641 () Bool)

(declare-datatypes ((Unit!39907 0))(
  ( (Unit!39908) )
))
(declare-fun call!58649 () Unit!39907)

(declare-fun call!58647 () Unit!39907)

(assert (=> bm!58641 (= call!58649 call!58647)))

(declare-fun b!1206059 () Bool)

(declare-fun res!802201 () Bool)

(declare-fun e!684948 () Bool)

(assert (=> b!1206059 (=> (not res!802201) (not e!684948))))

(declare-datatypes ((array!78050 0))(
  ( (array!78051 (arr!37662 (Array (_ BitVec 32) (_ BitVec 64))) (size!38199 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78050)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1206059 (= res!802201 (= (select (arr!37662 _keys!1208) i!673) k!934))))

(declare-fun b!1206060 () Bool)

(declare-fun e!684952 () Bool)

(declare-fun e!684949 () Bool)

(assert (=> b!1206060 (= e!684952 e!684949)))

(declare-fun res!802196 () Bool)

(assert (=> b!1206060 (=> res!802196 e!684949)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1206060 (= res!802196 (not (= from!1455 i!673)))))

(declare-fun lt!547046 () ListLongMap!17847)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!547054 () array!78050)

(declare-datatypes ((ValueCell!14614 0))(
  ( (ValueCellFull!14614 (v!18025 V!45989)) (EmptyCell!14614) )
))
(declare-datatypes ((array!78052 0))(
  ( (array!78053 (arr!37663 (Array (_ BitVec 32) ValueCell!14614)) (size!38200 (_ BitVec 32))) )
))
(declare-fun lt!547047 () array!78052)

(declare-fun getCurrentListMapNoExtraKeys!5347 (array!78050 array!78052 (_ BitVec 32) (_ BitVec 32) V!45989 V!45989 (_ BitVec 32) Int) ListLongMap!17847)

(assert (=> b!1206060 (= lt!547046 (getCurrentListMapNoExtraKeys!5347 lt!547054 lt!547047 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78052)

(declare-fun dynLambda!3268 (Int (_ BitVec 64)) V!45989)

(assert (=> b!1206060 (= lt!547047 (array!78053 (store (arr!37663 _values!996) i!673 (ValueCellFull!14614 (dynLambda!3268 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38200 _values!996)))))

(declare-fun lt!547059 () ListLongMap!17847)

(assert (=> b!1206060 (= lt!547059 (getCurrentListMapNoExtraKeys!5347 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1206061 () Bool)

(declare-fun res!802194 () Bool)

(assert (=> b!1206061 (=> (not res!802194) (not e!684948))))

(assert (=> b!1206061 (= res!802194 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38199 _keys!1208))))))

(declare-fun e!684944 () Bool)

(declare-fun b!1206062 () Bool)

(declare-fun arrayContainsKey!0 (array!78050 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1206062 (= e!684944 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1206063 () Bool)

(declare-fun c!118348 () Bool)

(declare-fun lt!547049 () Bool)

(assert (=> b!1206063 (= c!118348 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!547049))))

(declare-fun e!684943 () Unit!39907)

(declare-fun e!684942 () Unit!39907)

(assert (=> b!1206063 (= e!684943 e!684942)))

(declare-fun b!1206064 () Bool)

(declare-fun Unit!39909 () Unit!39907)

(assert (=> b!1206064 (= e!684942 Unit!39909)))

(declare-fun bm!58642 () Bool)

(declare-fun call!58645 () Bool)

(declare-fun call!58643 () Bool)

(assert (=> bm!58642 (= call!58645 call!58643)))

(declare-fun call!58646 () ListLongMap!17847)

(declare-fun e!684940 () Bool)

(declare-fun b!1206066 () Bool)

(declare-fun call!58648 () ListLongMap!17847)

(declare-fun -!1850 (ListLongMap!17847 (_ BitVec 64)) ListLongMap!17847)

(assert (=> b!1206066 (= e!684940 (= call!58646 (-!1850 call!58648 k!934)))))

(declare-fun b!1206067 () Bool)

(declare-fun res!802200 () Bool)

(assert (=> b!1206067 (=> (not res!802200) (not e!684948))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1206067 (= res!802200 (validKeyInArray!0 k!934))))

(declare-fun b!1206068 () Bool)

(declare-fun e!684953 () Bool)

(declare-fun tp_is_empty!30647 () Bool)

(assert (=> b!1206068 (= e!684953 tp_is_empty!30647)))

(declare-fun mapNonEmpty!47826 () Bool)

(declare-fun mapRes!47826 () Bool)

(declare-fun tp!90832 () Bool)

(declare-fun e!684941 () Bool)

(assert (=> mapNonEmpty!47826 (= mapRes!47826 (and tp!90832 e!684941))))

(declare-fun mapKey!47826 () (_ BitVec 32))

(declare-fun mapValue!47826 () ValueCell!14614)

(declare-fun mapRest!47826 () (Array (_ BitVec 32) ValueCell!14614))

(assert (=> mapNonEmpty!47826 (= (arr!37663 _values!996) (store mapRest!47826 mapKey!47826 mapValue!47826))))

(declare-fun b!1206069 () Bool)

(declare-fun e!684939 () Bool)

(assert (=> b!1206069 (= e!684939 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!547049) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1206070 () Bool)

(assert (=> b!1206070 (= e!684941 tp_is_empty!30647)))

(declare-fun bm!58643 () Bool)

(assert (=> bm!58643 (= call!58648 (getCurrentListMapNoExtraKeys!5347 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1206071 () Bool)

(declare-fun res!802197 () Bool)

(assert (=> b!1206071 (=> (not res!802197) (not e!684948))))

(declare-datatypes ((List!26691 0))(
  ( (Nil!26688) (Cons!26687 (h!27896 (_ BitVec 64)) (t!39621 List!26691)) )
))
(declare-fun arrayNoDuplicates!0 (array!78050 (_ BitVec 32) List!26691) Bool)

(assert (=> b!1206071 (= res!802197 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26688))))

(declare-fun b!1206072 () Bool)

(declare-fun res!802193 () Bool)

(assert (=> b!1206072 (=> (not res!802193) (not e!684948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1206072 (= res!802193 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!47826 () Bool)

(assert (=> mapIsEmpty!47826 mapRes!47826))

(declare-fun b!1206073 () Bool)

(declare-fun lt!547052 () Unit!39907)

(assert (=> b!1206073 (= e!684942 lt!547052)))

(assert (=> b!1206073 (= lt!547052 call!58649)))

(assert (=> b!1206073 call!58645))

(declare-fun bm!58644 () Bool)

(declare-fun lt!547056 () ListLongMap!17847)

(declare-fun addStillContains!1033 (ListLongMap!17847 (_ BitVec 64) V!45989 (_ BitVec 64)) Unit!39907)

(assert (=> bm!58644 (= call!58647 (addStillContains!1033 (ite c!118350 lt!547056 lt!547051) (ite c!118350 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118349 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118350 minValue!944 (ite c!118349 zeroValue!944 minValue!944)) k!934))))

(declare-fun bm!58645 () Bool)

(assert (=> bm!58645 (= call!58646 (getCurrentListMapNoExtraKeys!5347 lt!547054 lt!547047 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1206074 () Bool)

(declare-fun e!684938 () Bool)

(assert (=> b!1206074 (= e!684938 (not e!684952))))

(declare-fun res!802199 () Bool)

(assert (=> b!1206074 (=> res!802199 e!684952)))

(assert (=> b!1206074 (= res!802199 (bvsgt from!1455 i!673))))

(assert (=> b!1206074 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!547058 () Unit!39907)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78050 (_ BitVec 64) (_ BitVec 32)) Unit!39907)

(assert (=> b!1206074 (= lt!547058 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1206075 () Bool)

(declare-fun e!684945 () Bool)

(assert (=> b!1206075 (= e!684949 e!684945)))

(declare-fun res!802204 () Bool)

(assert (=> b!1206075 (=> res!802204 e!684945)))

(assert (=> b!1206075 (= res!802204 (not (= (select (arr!37662 _keys!1208) from!1455) k!934)))))

(assert (=> b!1206075 e!684940))

(declare-fun c!118351 () Bool)

(assert (=> b!1206075 (= c!118351 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!547060 () Unit!39907)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1054 (array!78050 array!78052 (_ BitVec 32) (_ BitVec 32) V!45989 V!45989 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39907)

(assert (=> b!1206075 (= lt!547060 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1054 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1206076 () Bool)

(assert (=> b!1206076 (= e!684948 e!684938)))

(declare-fun res!802202 () Bool)

(assert (=> b!1206076 (=> (not res!802202) (not e!684938))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78050 (_ BitVec 32)) Bool)

(assert (=> b!1206076 (= res!802202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!547054 mask!1564))))

(assert (=> b!1206076 (= lt!547054 (array!78051 (store (arr!37662 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38199 _keys!1208)))))

(declare-fun res!802205 () Bool)

(assert (=> start!100808 (=> (not res!802205) (not e!684948))))

(assert (=> start!100808 (= res!802205 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38199 _keys!1208))))))

(assert (=> start!100808 e!684948))

(assert (=> start!100808 tp_is_empty!30647))

(declare-fun array_inv!28592 (array!78050) Bool)

(assert (=> start!100808 (array_inv!28592 _keys!1208)))

(assert (=> start!100808 true))

(assert (=> start!100808 tp!90833))

(declare-fun e!684947 () Bool)

(declare-fun array_inv!28593 (array!78052) Bool)

(assert (=> start!100808 (and (array_inv!28593 _values!996) e!684947)))

(declare-fun b!1206065 () Bool)

(declare-fun res!802203 () Bool)

(assert (=> b!1206065 (=> (not res!802203) (not e!684948))))

(assert (=> b!1206065 (= res!802203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1206077 () Bool)

(assert (=> b!1206077 (= e!684947 (and e!684953 mapRes!47826))))

(declare-fun condMapEmpty!47826 () Bool)

(declare-fun mapDefault!47826 () ValueCell!14614)

