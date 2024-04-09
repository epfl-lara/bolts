; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101106 () Bool)

(assert start!101106)

(declare-fun b_free!26031 () Bool)

(declare-fun b_next!26031 () Bool)

(assert (=> start!101106 (= b_free!26031 (not b_next!26031))))

(declare-fun tp!91112 () Bool)

(declare-fun b_and!43171 () Bool)

(assert (=> start!101106 (= tp!91112 b_and!43171)))

(declare-fun b!1211209 () Bool)

(declare-datatypes ((Unit!40072 0))(
  ( (Unit!40073) )
))
(declare-fun e!687920 () Unit!40072)

(declare-fun lt!550076 () Unit!40072)

(assert (=> b!1211209 (= e!687920 lt!550076)))

(declare-fun call!59835 () Unit!40072)

(assert (=> b!1211209 (= lt!550076 call!59835)))

(declare-fun call!59837 () Bool)

(assert (=> b!1211209 call!59837))

(declare-fun b!1211210 () Bool)

(declare-fun e!687912 () Bool)

(assert (=> b!1211210 (= e!687912 true)))

(declare-fun e!687916 () Bool)

(assert (=> b!1211210 e!687916))

(declare-fun res!804753 () Bool)

(assert (=> b!1211210 (=> (not res!804753) (not e!687916))))

(declare-datatypes ((array!78228 0))(
  ( (array!78229 (arr!37746 (Array (_ BitVec 32) (_ BitVec 64))) (size!38283 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78228)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((V!46107 0))(
  ( (V!46108 (val!15424 Int)) )
))
(declare-fun lt!550088 () V!46107)

(declare-datatypes ((tuple2!19946 0))(
  ( (tuple2!19947 (_1!9983 (_ BitVec 64)) (_2!9983 V!46107)) )
))
(declare-datatypes ((List!26765 0))(
  ( (Nil!26762) (Cons!26761 (h!27970 tuple2!19946) (t!39783 List!26765)) )
))
(declare-datatypes ((ListLongMap!17927 0))(
  ( (ListLongMap!17928 (toList!8979 List!26765)) )
))
(declare-fun lt!550086 () ListLongMap!17927)

(declare-fun -!1877 (ListLongMap!17927 (_ BitVec 64)) ListLongMap!17927)

(declare-fun +!4006 (ListLongMap!17927 tuple2!19946) ListLongMap!17927)

(assert (=> b!1211210 (= res!804753 (= (-!1877 (+!4006 lt!550086 (tuple2!19947 (select (arr!37746 _keys!1208) from!1455) lt!550088)) (select (arr!37746 _keys!1208) from!1455)) lt!550086))))

(declare-fun lt!550083 () Unit!40072)

(declare-fun addThenRemoveForNewKeyIsSame!279 (ListLongMap!17927 (_ BitVec 64) V!46107) Unit!40072)

(assert (=> b!1211210 (= lt!550083 (addThenRemoveForNewKeyIsSame!279 lt!550086 (select (arr!37746 _keys!1208) from!1455) lt!550088))))

(declare-datatypes ((ValueCell!14658 0))(
  ( (ValueCellFull!14658 (v!18077 V!46107)) (EmptyCell!14658) )
))
(declare-datatypes ((array!78230 0))(
  ( (array!78231 (arr!37747 (Array (_ BitVec 32) ValueCell!14658)) (size!38284 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78230)

(declare-fun lt!550090 () V!46107)

(declare-fun get!19279 (ValueCell!14658 V!46107) V!46107)

(assert (=> b!1211210 (= lt!550088 (get!19279 (select (arr!37747 _values!996) from!1455) lt!550090))))

(declare-fun lt!550093 () Unit!40072)

(declare-fun e!687915 () Unit!40072)

(assert (=> b!1211210 (= lt!550093 e!687915)))

(declare-fun c!119383 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6994 (ListLongMap!17927 (_ BitVec 64)) Bool)

(assert (=> b!1211210 (= c!119383 (contains!6994 lt!550086 k0!934))))

(declare-fun zeroValue!944 () V!46107)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46107)

(declare-fun getCurrentListMapNoExtraKeys!5384 (array!78228 array!78230 (_ BitVec 32) (_ BitVec 32) V!46107 V!46107 (_ BitVec 32) Int) ListLongMap!17927)

(assert (=> b!1211210 (= lt!550086 (getCurrentListMapNoExtraKeys!5384 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!550085 () ListLongMap!17927)

(declare-fun b!1211211 () Bool)

(assert (=> b!1211211 (= e!687916 (= (-!1877 lt!550085 k0!934) lt!550086))))

(declare-fun b!1211212 () Bool)

(declare-fun e!687907 () Bool)

(declare-fun call!59836 () ListLongMap!17927)

(declare-fun call!59832 () ListLongMap!17927)

(assert (=> b!1211212 (= e!687907 (= call!59836 call!59832))))

(declare-fun b!1211213 () Bool)

(declare-fun res!804748 () Bool)

(declare-fun e!687922 () Bool)

(assert (=> b!1211213 (=> (not res!804748) (not e!687922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1211213 (= res!804748 (validMask!0 mask!1564))))

(declare-fun b!1211214 () Bool)

(declare-fun e!687914 () Bool)

(declare-fun tp_is_empty!30735 () Bool)

(assert (=> b!1211214 (= e!687914 tp_is_empty!30735)))

(declare-fun b!1211215 () Bool)

(declare-fun res!804754 () Bool)

(assert (=> b!1211215 (=> (not res!804754) (not e!687922))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1211215 (= res!804754 (= (select (arr!37746 _keys!1208) i!673) k0!934))))

(declare-fun b!1211216 () Bool)

(declare-fun e!687918 () Unit!40072)

(assert (=> b!1211216 (= e!687920 e!687918)))

(declare-fun c!119384 () Bool)

(declare-fun lt!550079 () Bool)

(assert (=> b!1211216 (= c!119384 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!550079))))

(declare-fun b!1211217 () Bool)

(declare-fun c!119387 () Bool)

(assert (=> b!1211217 (= c!119387 (and (not lt!550079) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!687908 () Unit!40072)

(assert (=> b!1211217 (= e!687908 e!687920)))

(declare-fun b!1211218 () Bool)

(assert (=> b!1211218 (= e!687907 (= call!59836 (-!1877 call!59832 k0!934)))))

(declare-fun bm!59829 () Bool)

(declare-fun call!59834 () Bool)

(assert (=> bm!59829 (= call!59837 call!59834)))

(declare-fun bm!59830 () Bool)

(declare-fun call!59839 () Unit!40072)

(assert (=> bm!59830 (= call!59835 call!59839)))

(declare-fun b!1211219 () Bool)

(declare-fun res!804742 () Bool)

(assert (=> b!1211219 (=> (not res!804742) (not e!687922))))

(assert (=> b!1211219 (= res!804742 (and (= (size!38284 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38283 _keys!1208) (size!38284 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!47974 () Bool)

(declare-fun mapRes!47974 () Bool)

(declare-fun tp!91113 () Bool)

(assert (=> mapNonEmpty!47974 (= mapRes!47974 (and tp!91113 e!687914))))

(declare-fun mapRest!47974 () (Array (_ BitVec 32) ValueCell!14658))

(declare-fun mapValue!47974 () ValueCell!14658)

(declare-fun mapKey!47974 () (_ BitVec 32))

(assert (=> mapNonEmpty!47974 (= (arr!37747 _values!996) (store mapRest!47974 mapKey!47974 mapValue!47974))))

(declare-fun bm!59831 () Bool)

(assert (=> bm!59831 (= call!59832 (getCurrentListMapNoExtraKeys!5384 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!59832 () Bool)

(declare-fun lt!550081 () array!78230)

(declare-fun lt!550087 () array!78228)

(assert (=> bm!59832 (= call!59836 (getCurrentListMapNoExtraKeys!5384 lt!550087 lt!550081 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!59833 () Bool)

(declare-fun call!59833 () ListLongMap!17927)

(declare-fun call!59838 () ListLongMap!17927)

(assert (=> bm!59833 (= call!59833 call!59838)))

(declare-fun b!1211220 () Bool)

(declare-fun res!804750 () Bool)

(assert (=> b!1211220 (=> (not res!804750) (not e!687922))))

(assert (=> b!1211220 (= res!804750 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38283 _keys!1208))))))

(declare-fun res!804744 () Bool)

(assert (=> start!101106 (=> (not res!804744) (not e!687922))))

(assert (=> start!101106 (= res!804744 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38283 _keys!1208))))))

(assert (=> start!101106 e!687922))

(assert (=> start!101106 tp_is_empty!30735))

(declare-fun array_inv!28652 (array!78228) Bool)

(assert (=> start!101106 (array_inv!28652 _keys!1208)))

(assert (=> start!101106 true))

(assert (=> start!101106 tp!91112))

(declare-fun e!687911 () Bool)

(declare-fun array_inv!28653 (array!78230) Bool)

(assert (=> start!101106 (and (array_inv!28653 _values!996) e!687911)))

(declare-fun b!1211221 () Bool)

(assert (=> b!1211221 call!59837))

(declare-fun lt!550089 () Unit!40072)

(assert (=> b!1211221 (= lt!550089 call!59835)))

(assert (=> b!1211221 (= e!687918 lt!550089)))

(declare-fun b!1211222 () Bool)

(declare-fun e!687913 () Bool)

(assert (=> b!1211222 (= e!687913 tp_is_empty!30735)))

(declare-fun b!1211223 () Bool)

(declare-fun Unit!40074 () Unit!40072)

(assert (=> b!1211223 (= e!687918 Unit!40074)))

(declare-fun b!1211224 () Bool)

(declare-fun e!687921 () Bool)

(declare-fun e!687919 () Bool)

(assert (=> b!1211224 (= e!687921 e!687919)))

(declare-fun res!804743 () Bool)

(assert (=> b!1211224 (=> res!804743 e!687919)))

(assert (=> b!1211224 (= res!804743 (not (= from!1455 i!673)))))

(declare-fun lt!550094 () ListLongMap!17927)

(assert (=> b!1211224 (= lt!550094 (getCurrentListMapNoExtraKeys!5384 lt!550087 lt!550081 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1211224 (= lt!550081 (array!78231 (store (arr!37747 _values!996) i!673 (ValueCellFull!14658 lt!550090)) (size!38284 _values!996)))))

(declare-fun dynLambda!3299 (Int (_ BitVec 64)) V!46107)

(assert (=> b!1211224 (= lt!550090 (dynLambda!3299 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1211224 (= lt!550085 (getCurrentListMapNoExtraKeys!5384 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1211225 () Bool)

(declare-fun e!687923 () Bool)

(assert (=> b!1211225 (= e!687923 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!550079) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!687910 () Bool)

(declare-fun b!1211226 () Bool)

(declare-fun arrayContainsKey!0 (array!78228 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1211226 (= e!687910 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1211227 () Bool)

(declare-fun e!687917 () Bool)

(assert (=> b!1211227 (= e!687917 (not e!687921))))

(declare-fun res!804746 () Bool)

(assert (=> b!1211227 (=> res!804746 e!687921)))

(assert (=> b!1211227 (= res!804746 (bvsgt from!1455 i!673))))

(assert (=> b!1211227 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!550077 () Unit!40072)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78228 (_ BitVec 64) (_ BitVec 32)) Unit!40072)

(assert (=> b!1211227 (= lt!550077 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1211228 () Bool)

(assert (=> b!1211228 (= e!687919 e!687912)))

(declare-fun res!804751 () Bool)

(assert (=> b!1211228 (=> res!804751 e!687912)))

(assert (=> b!1211228 (= res!804751 (not (= (select (arr!37746 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1211228 e!687907))

(declare-fun c!119385 () Bool)

(assert (=> b!1211228 (= c!119385 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!550095 () Unit!40072)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1085 (array!78228 array!78230 (_ BitVec 32) (_ BitVec 32) V!46107 V!46107 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40072)

(assert (=> b!1211228 (= lt!550095 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1085 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1211229 () Bool)

(declare-fun Unit!40075 () Unit!40072)

(assert (=> b!1211229 (= e!687915 Unit!40075)))

(assert (=> b!1211229 (= lt!550079 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!119386 () Bool)

(assert (=> b!1211229 (= c!119386 (and (not lt!550079) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!550084 () Unit!40072)

(assert (=> b!1211229 (= lt!550084 e!687908)))

(declare-fun lt!550092 () Unit!40072)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!604 (array!78228 array!78230 (_ BitVec 32) (_ BitVec 32) V!46107 V!46107 (_ BitVec 64) (_ BitVec 32) Int) Unit!40072)

(assert (=> b!1211229 (= lt!550092 (lemmaListMapContainsThenArrayContainsFrom!604 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119382 () Bool)

(assert (=> b!1211229 (= c!119382 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!804745 () Bool)

(assert (=> b!1211229 (= res!804745 e!687923)))

(assert (=> b!1211229 (=> (not res!804745) (not e!687910))))

(assert (=> b!1211229 e!687910))

(declare-fun lt!550096 () Unit!40072)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78228 (_ BitVec 32) (_ BitVec 32)) Unit!40072)

(assert (=> b!1211229 (= lt!550096 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26766 0))(
  ( (Nil!26763) (Cons!26762 (h!27971 (_ BitVec 64)) (t!39784 List!26766)) )
))
(declare-fun arrayNoDuplicates!0 (array!78228 (_ BitVec 32) List!26766) Bool)

(assert (=> b!1211229 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26763)))

(declare-fun lt!550091 () Unit!40072)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78228 (_ BitVec 64) (_ BitVec 32) List!26766) Unit!40072)

(assert (=> b!1211229 (= lt!550091 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26763))))

(assert (=> b!1211229 false))

(declare-fun b!1211230 () Bool)

(assert (=> b!1211230 (= e!687923 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1211231 () Bool)

(declare-fun res!804756 () Bool)

(assert (=> b!1211231 (=> (not res!804756) (not e!687917))))

(assert (=> b!1211231 (= res!804756 (arrayNoDuplicates!0 lt!550087 #b00000000000000000000000000000000 Nil!26763))))

(declare-fun lt!550082 () ListLongMap!17927)

(declare-fun bm!59834 () Bool)

(assert (=> bm!59834 (= call!59834 (contains!6994 (ite c!119386 lt!550082 call!59833) k0!934))))

(declare-fun b!1211232 () Bool)

(declare-fun res!804755 () Bool)

(assert (=> b!1211232 (=> (not res!804755) (not e!687922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78228 (_ BitVec 32)) Bool)

(assert (=> b!1211232 (= res!804755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!59835 () Bool)

(assert (=> bm!59835 (= call!59838 (+!4006 (ite c!119386 lt!550082 lt!550086) (ite c!119386 (tuple2!19947 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!119387 (tuple2!19947 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19947 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1211233 () Bool)

(assert (=> b!1211233 (= e!687911 (and e!687913 mapRes!47974))))

(declare-fun condMapEmpty!47974 () Bool)

(declare-fun mapDefault!47974 () ValueCell!14658)

(assert (=> b!1211233 (= condMapEmpty!47974 (= (arr!37747 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14658)) mapDefault!47974)))))

(declare-fun bm!59836 () Bool)

(declare-fun addStillContains!1067 (ListLongMap!17927 (_ BitVec 64) V!46107 (_ BitVec 64)) Unit!40072)

(assert (=> bm!59836 (= call!59839 (addStillContains!1067 lt!550086 (ite (or c!119386 c!119387) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119386 c!119387) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1211234 () Bool)

(declare-fun Unit!40076 () Unit!40072)

(assert (=> b!1211234 (= e!687915 Unit!40076)))

(declare-fun b!1211235 () Bool)

(assert (=> b!1211235 (= e!687922 e!687917)))

(declare-fun res!804747 () Bool)

(assert (=> b!1211235 (=> (not res!804747) (not e!687917))))

(assert (=> b!1211235 (= res!804747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!550087 mask!1564))))

(assert (=> b!1211235 (= lt!550087 (array!78229 (store (arr!37746 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38283 _keys!1208)))))

(declare-fun b!1211236 () Bool)

(declare-fun res!804752 () Bool)

(assert (=> b!1211236 (=> (not res!804752) (not e!687922))))

(assert (=> b!1211236 (= res!804752 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26763))))

(declare-fun b!1211237 () Bool)

(declare-fun res!804749 () Bool)

(assert (=> b!1211237 (=> (not res!804749) (not e!687922))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1211237 (= res!804749 (validKeyInArray!0 k0!934))))

(declare-fun b!1211238 () Bool)

(assert (=> b!1211238 (contains!6994 call!59838 k0!934)))

(declare-fun lt!550078 () Unit!40072)

(assert (=> b!1211238 (= lt!550078 (addStillContains!1067 lt!550082 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1211238 call!59834))

(assert (=> b!1211238 (= lt!550082 (+!4006 lt!550086 (tuple2!19947 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!550080 () Unit!40072)

(assert (=> b!1211238 (= lt!550080 call!59839)))

(assert (=> b!1211238 (= e!687908 lt!550078)))

(declare-fun mapIsEmpty!47974 () Bool)

(assert (=> mapIsEmpty!47974 mapRes!47974))

(assert (= (and start!101106 res!804744) b!1211213))

(assert (= (and b!1211213 res!804748) b!1211219))

(assert (= (and b!1211219 res!804742) b!1211232))

(assert (= (and b!1211232 res!804755) b!1211236))

(assert (= (and b!1211236 res!804752) b!1211220))

(assert (= (and b!1211220 res!804750) b!1211237))

(assert (= (and b!1211237 res!804749) b!1211215))

(assert (= (and b!1211215 res!804754) b!1211235))

(assert (= (and b!1211235 res!804747) b!1211231))

(assert (= (and b!1211231 res!804756) b!1211227))

(assert (= (and b!1211227 (not res!804746)) b!1211224))

(assert (= (and b!1211224 (not res!804743)) b!1211228))

(assert (= (and b!1211228 c!119385) b!1211218))

(assert (= (and b!1211228 (not c!119385)) b!1211212))

(assert (= (or b!1211218 b!1211212) bm!59832))

(assert (= (or b!1211218 b!1211212) bm!59831))

(assert (= (and b!1211228 (not res!804751)) b!1211210))

(assert (= (and b!1211210 c!119383) b!1211229))

(assert (= (and b!1211210 (not c!119383)) b!1211234))

(assert (= (and b!1211229 c!119386) b!1211238))

(assert (= (and b!1211229 (not c!119386)) b!1211217))

(assert (= (and b!1211217 c!119387) b!1211209))

(assert (= (and b!1211217 (not c!119387)) b!1211216))

(assert (= (and b!1211216 c!119384) b!1211221))

(assert (= (and b!1211216 (not c!119384)) b!1211223))

(assert (= (or b!1211209 b!1211221) bm!59830))

(assert (= (or b!1211209 b!1211221) bm!59833))

(assert (= (or b!1211209 b!1211221) bm!59829))

(assert (= (or b!1211238 bm!59829) bm!59834))

(assert (= (or b!1211238 bm!59830) bm!59836))

(assert (= (or b!1211238 bm!59833) bm!59835))

(assert (= (and b!1211229 c!119382) b!1211230))

(assert (= (and b!1211229 (not c!119382)) b!1211225))

(assert (= (and b!1211229 res!804745) b!1211226))

(assert (= (and b!1211210 res!804753) b!1211211))

(assert (= (and b!1211233 condMapEmpty!47974) mapIsEmpty!47974))

(assert (= (and b!1211233 (not condMapEmpty!47974)) mapNonEmpty!47974))

(get-info :version)

(assert (= (and mapNonEmpty!47974 ((_ is ValueCellFull!14658) mapValue!47974)) b!1211214))

(assert (= (and b!1211233 ((_ is ValueCellFull!14658) mapDefault!47974)) b!1211222))

(assert (= start!101106 b!1211233))

(declare-fun b_lambda!21679 () Bool)

(assert (=> (not b_lambda!21679) (not b!1211224)))

(declare-fun t!39782 () Bool)

(declare-fun tb!10839 () Bool)

(assert (=> (and start!101106 (= defaultEntry!1004 defaultEntry!1004) t!39782) tb!10839))

(declare-fun result!22265 () Bool)

(assert (=> tb!10839 (= result!22265 tp_is_empty!30735)))

(assert (=> b!1211224 t!39782))

(declare-fun b_and!43173 () Bool)

(assert (= b_and!43171 (and (=> t!39782 result!22265) b_and!43173)))

(declare-fun m!1116725 () Bool)

(assert (=> bm!59832 m!1116725))

(declare-fun m!1116727 () Bool)

(assert (=> b!1211227 m!1116727))

(declare-fun m!1116729 () Bool)

(assert (=> b!1211227 m!1116729))

(declare-fun m!1116731 () Bool)

(assert (=> b!1211218 m!1116731))

(declare-fun m!1116733 () Bool)

(assert (=> bm!59834 m!1116733))

(declare-fun m!1116735 () Bool)

(assert (=> b!1211213 m!1116735))

(declare-fun m!1116737 () Bool)

(assert (=> b!1211232 m!1116737))

(declare-fun m!1116739 () Bool)

(assert (=> b!1211235 m!1116739))

(declare-fun m!1116741 () Bool)

(assert (=> b!1211235 m!1116741))

(declare-fun m!1116743 () Bool)

(assert (=> start!101106 m!1116743))

(declare-fun m!1116745 () Bool)

(assert (=> start!101106 m!1116745))

(declare-fun m!1116747 () Bool)

(assert (=> b!1211226 m!1116747))

(declare-fun m!1116749 () Bool)

(assert (=> b!1211237 m!1116749))

(declare-fun m!1116751 () Bool)

(assert (=> b!1211228 m!1116751))

(declare-fun m!1116753 () Bool)

(assert (=> b!1211228 m!1116753))

(declare-fun m!1116755 () Bool)

(assert (=> bm!59831 m!1116755))

(declare-fun m!1116757 () Bool)

(assert (=> b!1211236 m!1116757))

(declare-fun m!1116759 () Bool)

(assert (=> b!1211215 m!1116759))

(declare-fun m!1116761 () Bool)

(assert (=> bm!59836 m!1116761))

(declare-fun m!1116763 () Bool)

(assert (=> bm!59835 m!1116763))

(declare-fun m!1116765 () Bool)

(assert (=> b!1211211 m!1116765))

(declare-fun m!1116767 () Bool)

(assert (=> b!1211238 m!1116767))

(declare-fun m!1116769 () Bool)

(assert (=> b!1211238 m!1116769))

(declare-fun m!1116771 () Bool)

(assert (=> b!1211238 m!1116771))

(declare-fun m!1116773 () Bool)

(assert (=> b!1211210 m!1116773))

(assert (=> b!1211210 m!1116751))

(declare-fun m!1116775 () Bool)

(assert (=> b!1211210 m!1116775))

(assert (=> b!1211210 m!1116755))

(declare-fun m!1116777 () Bool)

(assert (=> b!1211210 m!1116777))

(assert (=> b!1211210 m!1116751))

(declare-fun m!1116779 () Bool)

(assert (=> b!1211210 m!1116779))

(assert (=> b!1211210 m!1116773))

(declare-fun m!1116781 () Bool)

(assert (=> b!1211210 m!1116781))

(assert (=> b!1211210 m!1116777))

(declare-fun m!1116783 () Bool)

(assert (=> b!1211210 m!1116783))

(assert (=> b!1211210 m!1116751))

(declare-fun m!1116785 () Bool)

(assert (=> b!1211224 m!1116785))

(declare-fun m!1116787 () Bool)

(assert (=> b!1211224 m!1116787))

(declare-fun m!1116789 () Bool)

(assert (=> b!1211224 m!1116789))

(declare-fun m!1116791 () Bool)

(assert (=> b!1211224 m!1116791))

(declare-fun m!1116793 () Bool)

(assert (=> b!1211229 m!1116793))

(declare-fun m!1116795 () Bool)

(assert (=> b!1211229 m!1116795))

(declare-fun m!1116797 () Bool)

(assert (=> b!1211229 m!1116797))

(declare-fun m!1116799 () Bool)

(assert (=> b!1211229 m!1116799))

(declare-fun m!1116801 () Bool)

(assert (=> b!1211231 m!1116801))

(assert (=> b!1211230 m!1116747))

(declare-fun m!1116803 () Bool)

(assert (=> mapNonEmpty!47974 m!1116803))

(check-sat (not mapNonEmpty!47974) (not b!1211218) (not b!1211213) (not b_next!26031) (not b!1211229) b_and!43173 (not b!1211238) (not b!1211231) (not b_lambda!21679) (not b!1211228) (not b!1211226) (not bm!59832) tp_is_empty!30735 (not b!1211232) (not b!1211235) (not b!1211210) (not bm!59834) (not b!1211224) (not b!1211237) (not b!1211211) (not bm!59831) (not b!1211236) (not bm!59835) (not b!1211230) (not b!1211227) (not start!101106) (not bm!59836))
(check-sat b_and!43173 (not b_next!26031))
