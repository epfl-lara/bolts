; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101116 () Bool)

(assert start!101116)

(declare-fun b_free!26041 () Bool)

(declare-fun b_next!26041 () Bool)

(assert (=> start!101116 (= b_free!26041 (not b_next!26041))))

(declare-fun tp!91143 () Bool)

(declare-fun b_and!43191 () Bool)

(assert (=> start!101116 (= tp!91143 b_and!43191)))

(declare-fun b!1211667 () Bool)

(declare-fun e!688173 () Bool)

(declare-fun e!688166 () Bool)

(assert (=> b!1211667 (= e!688173 e!688166)))

(declare-fun res!804973 () Bool)

(assert (=> b!1211667 (=> res!804973 e!688166)))

(declare-datatypes ((array!78248 0))(
  ( (array!78249 (arr!37756 (Array (_ BitVec 32) (_ BitVec 64))) (size!38293 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78248)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1211667 (= res!804973 (not (= (select (arr!37756 _keys!1208) from!1455) k!934)))))

(declare-fun e!688165 () Bool)

(assert (=> b!1211667 e!688165))

(declare-fun c!119474 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1211667 (= c!119474 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!46121 0))(
  ( (V!46122 (val!15429 Int)) )
))
(declare-fun zeroValue!944 () V!46121)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((Unit!40092 0))(
  ( (Unit!40093) )
))
(declare-fun lt!550398 () Unit!40092)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14663 0))(
  ( (ValueCellFull!14663 (v!18082 V!46121)) (EmptyCell!14663) )
))
(declare-datatypes ((array!78250 0))(
  ( (array!78251 (arr!37757 (Array (_ BitVec 32) ValueCell!14663)) (size!38294 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78250)

(declare-fun minValue!944 () V!46121)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1088 (array!78248 array!78250 (_ BitVec 32) (_ BitVec 32) V!46121 V!46121 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40092)

(assert (=> b!1211667 (= lt!550398 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1088 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1211668 () Bool)

(declare-fun res!804968 () Bool)

(declare-fun e!688161 () Bool)

(assert (=> b!1211668 (=> (not res!804968) (not e!688161))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1211668 (= res!804968 (validKeyInArray!0 k!934))))

(declare-datatypes ((tuple2!19954 0))(
  ( (tuple2!19955 (_1!9987 (_ BitVec 64)) (_2!9987 V!46121)) )
))
(declare-datatypes ((List!26774 0))(
  ( (Nil!26771) (Cons!26770 (h!27979 tuple2!19954) (t!39802 List!26774)) )
))
(declare-datatypes ((ListLongMap!17935 0))(
  ( (ListLongMap!17936 (toList!8983 List!26774)) )
))
(declare-fun call!59952 () ListLongMap!17935)

(declare-fun lt!550396 () ListLongMap!17935)

(declare-fun c!119477 () Bool)

(declare-fun call!59958 () Bool)

(declare-fun bm!59949 () Bool)

(declare-fun contains!6998 (ListLongMap!17935 (_ BitVec 64)) Bool)

(assert (=> bm!59949 (= call!59958 (contains!6998 (ite c!119477 lt!550396 call!59952) k!934))))

(declare-fun b!1211670 () Bool)

(declare-fun e!688174 () Unit!40092)

(declare-fun Unit!40094 () Unit!40092)

(assert (=> b!1211670 (= e!688174 Unit!40094)))

(declare-fun lt!550394 () Bool)

(assert (=> b!1211670 (= lt!550394 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1211670 (= c!119477 (and (not lt!550394) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!550399 () Unit!40092)

(declare-fun e!688162 () Unit!40092)

(assert (=> b!1211670 (= lt!550399 e!688162)))

(declare-fun lt!550405 () Unit!40092)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!607 (array!78248 array!78250 (_ BitVec 32) (_ BitVec 32) V!46121 V!46121 (_ BitVec 64) (_ BitVec 32) Int) Unit!40092)

(assert (=> b!1211670 (= lt!550405 (lemmaListMapContainsThenArrayContainsFrom!607 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119476 () Bool)

(assert (=> b!1211670 (= c!119476 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!804975 () Bool)

(declare-fun e!688163 () Bool)

(assert (=> b!1211670 (= res!804975 e!688163)))

(declare-fun e!688171 () Bool)

(assert (=> b!1211670 (=> (not res!804975) (not e!688171))))

(assert (=> b!1211670 e!688171))

(declare-fun lt!550414 () Unit!40092)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78248 (_ BitVec 32) (_ BitVec 32)) Unit!40092)

(assert (=> b!1211670 (= lt!550414 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26775 0))(
  ( (Nil!26772) (Cons!26771 (h!27980 (_ BitVec 64)) (t!39803 List!26775)) )
))
(declare-fun arrayNoDuplicates!0 (array!78248 (_ BitVec 32) List!26775) Bool)

(assert (=> b!1211670 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26772)))

(declare-fun lt!550413 () Unit!40092)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78248 (_ BitVec 64) (_ BitVec 32) List!26775) Unit!40092)

(assert (=> b!1211670 (= lt!550413 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26772))))

(assert (=> b!1211670 false))

(declare-fun bm!59950 () Bool)

(declare-fun call!59959 () Bool)

(assert (=> bm!59950 (= call!59959 call!59958)))

(declare-fun b!1211671 () Bool)

(declare-fun res!804970 () Bool)

(assert (=> b!1211671 (=> (not res!804970) (not e!688161))))

(assert (=> b!1211671 (= res!804970 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26772))))

(declare-fun mapNonEmpty!47989 () Bool)

(declare-fun mapRes!47989 () Bool)

(declare-fun tp!91142 () Bool)

(declare-fun e!688168 () Bool)

(assert (=> mapNonEmpty!47989 (= mapRes!47989 (and tp!91142 e!688168))))

(declare-fun mapRest!47989 () (Array (_ BitVec 32) ValueCell!14663))

(declare-fun mapValue!47989 () ValueCell!14663)

(declare-fun mapKey!47989 () (_ BitVec 32))

(assert (=> mapNonEmpty!47989 (= (arr!37757 _values!996) (store mapRest!47989 mapKey!47989 mapValue!47989))))

(declare-fun b!1211672 () Bool)

(declare-fun res!804976 () Bool)

(assert (=> b!1211672 (=> (not res!804976) (not e!688161))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78248 (_ BitVec 32)) Bool)

(assert (=> b!1211672 (= res!804976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun call!59956 () ListLongMap!17935)

(declare-fun bm!59951 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5388 (array!78248 array!78250 (_ BitVec 32) (_ BitVec 32) V!46121 V!46121 (_ BitVec 32) Int) ListLongMap!17935)

(assert (=> bm!59951 (= call!59956 (getCurrentListMapNoExtraKeys!5388 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1211673 () Bool)

(declare-fun res!804971 () Bool)

(assert (=> b!1211673 (=> (not res!804971) (not e!688161))))

(assert (=> b!1211673 (= res!804971 (and (= (size!38294 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38293 _keys!1208) (size!38294 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1211674 () Bool)

(declare-fun e!688164 () Bool)

(declare-fun tp_is_empty!30745 () Bool)

(assert (=> b!1211674 (= e!688164 tp_is_empty!30745)))

(declare-fun b!1211675 () Bool)

(declare-fun res!804965 () Bool)

(declare-fun e!688172 () Bool)

(assert (=> b!1211675 (=> (not res!804965) (not e!688172))))

(declare-fun lt!550408 () array!78248)

(assert (=> b!1211675 (= res!804965 (arrayNoDuplicates!0 lt!550408 #b00000000000000000000000000000000 Nil!26772))))

(declare-fun b!1211676 () Bool)

(declare-fun arrayContainsKey!0 (array!78248 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1211676 (= e!688163 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!804978 () Bool)

(assert (=> start!101116 (=> (not res!804978) (not e!688161))))

(assert (=> start!101116 (= res!804978 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38293 _keys!1208))))))

(assert (=> start!101116 e!688161))

(assert (=> start!101116 tp_is_empty!30745))

(declare-fun array_inv!28656 (array!78248) Bool)

(assert (=> start!101116 (array_inv!28656 _keys!1208)))

(assert (=> start!101116 true))

(assert (=> start!101116 tp!91143))

(declare-fun e!688160 () Bool)

(declare-fun array_inv!28657 (array!78250) Bool)

(assert (=> start!101116 (and (array_inv!28657 _values!996) e!688160)))

(declare-fun b!1211669 () Bool)

(declare-fun res!804972 () Bool)

(assert (=> b!1211669 (=> (not res!804972) (not e!688161))))

(assert (=> b!1211669 (= res!804972 (= (select (arr!37756 _keys!1208) i!673) k!934))))

(declare-fun b!1211677 () Bool)

(declare-fun call!59955 () ListLongMap!17935)

(assert (=> b!1211677 (contains!6998 call!59955 k!934)))

(declare-fun lt!550406 () Unit!40092)

(declare-fun call!59953 () Unit!40092)

(assert (=> b!1211677 (= lt!550406 call!59953)))

(assert (=> b!1211677 call!59958))

(declare-fun lt!550395 () ListLongMap!17935)

(declare-fun +!4010 (ListLongMap!17935 tuple2!19954) ListLongMap!17935)

(assert (=> b!1211677 (= lt!550396 (+!4010 lt!550395 (tuple2!19955 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!550401 () Unit!40092)

(declare-fun addStillContains!1070 (ListLongMap!17935 (_ BitVec 64) V!46121 (_ BitVec 64)) Unit!40092)

(assert (=> b!1211677 (= lt!550401 (addStillContains!1070 lt!550395 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1211677 (= e!688162 lt!550406)))

(declare-fun b!1211678 () Bool)

(declare-fun e!688170 () Bool)

(assert (=> b!1211678 (= e!688170 e!688173)))

(declare-fun res!804974 () Bool)

(assert (=> b!1211678 (=> res!804974 e!688173)))

(assert (=> b!1211678 (= res!804974 (not (= from!1455 i!673)))))

(declare-fun lt!550402 () array!78250)

(declare-fun lt!550409 () ListLongMap!17935)

(assert (=> b!1211678 (= lt!550409 (getCurrentListMapNoExtraKeys!5388 lt!550408 lt!550402 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!550400 () V!46121)

(assert (=> b!1211678 (= lt!550402 (array!78251 (store (arr!37757 _values!996) i!673 (ValueCellFull!14663 lt!550400)) (size!38294 _values!996)))))

(declare-fun dynLambda!3302 (Int (_ BitVec 64)) V!46121)

(assert (=> b!1211678 (= lt!550400 (dynLambda!3302 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!550403 () ListLongMap!17935)

(assert (=> b!1211678 (= lt!550403 (getCurrentListMapNoExtraKeys!5388 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!59952 () Bool)

(declare-fun c!119472 () Bool)

(assert (=> bm!59952 (= call!59955 (+!4010 (ite c!119477 lt!550396 lt!550395) (ite c!119477 (tuple2!19955 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!119472 (tuple2!19955 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19955 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!59953 () Bool)

(declare-fun call!59957 () ListLongMap!17935)

(assert (=> bm!59953 (= call!59957 (getCurrentListMapNoExtraKeys!5388 lt!550408 lt!550402 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!59954 () Bool)

(declare-fun call!59954 () Unit!40092)

(assert (=> bm!59954 (= call!59954 call!59953)))

(declare-fun b!1211679 () Bool)

(declare-fun e!688167 () Unit!40092)

(declare-fun e!688175 () Unit!40092)

(assert (=> b!1211679 (= e!688167 e!688175)))

(declare-fun c!119473 () Bool)

(assert (=> b!1211679 (= c!119473 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!550394))))

(declare-fun b!1211680 () Bool)

(assert (=> b!1211680 (= e!688161 e!688172)))

(declare-fun res!804967 () Bool)

(assert (=> b!1211680 (=> (not res!804967) (not e!688172))))

(assert (=> b!1211680 (= res!804967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!550408 mask!1564))))

(assert (=> b!1211680 (= lt!550408 (array!78249 (store (arr!37756 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38293 _keys!1208)))))

(declare-fun b!1211681 () Bool)

(declare-fun lt!550412 () Unit!40092)

(assert (=> b!1211681 (= e!688167 lt!550412)))

(assert (=> b!1211681 (= lt!550412 call!59954)))

(assert (=> b!1211681 call!59959))

(declare-fun b!1211682 () Bool)

(assert (=> b!1211682 (= e!688171 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1211683 () Bool)

(assert (=> b!1211683 (= e!688168 tp_is_empty!30745)))

(declare-fun b!1211684 () Bool)

(declare-fun Unit!40095 () Unit!40092)

(assert (=> b!1211684 (= e!688174 Unit!40095)))

(declare-fun b!1211685 () Bool)

(declare-fun res!804966 () Bool)

(assert (=> b!1211685 (=> (not res!804966) (not e!688161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1211685 (= res!804966 (validMask!0 mask!1564))))

(declare-fun b!1211686 () Bool)

(assert (=> b!1211686 (= e!688163 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!550394) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1211687 () Bool)

(assert (=> b!1211687 (= e!688160 (and e!688164 mapRes!47989))))

(declare-fun condMapEmpty!47989 () Bool)

(declare-fun mapDefault!47989 () ValueCell!14663)

