; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101178 () Bool)

(assert start!101178)

(declare-fun b_free!26065 () Bool)

(declare-fun b_next!26065 () Bool)

(assert (=> start!101178 (= b_free!26065 (not b_next!26065))))

(declare-fun tp!91217 () Bool)

(declare-fun b_and!43257 () Bool)

(assert (=> start!101178 (= tp!91217 b_and!43257)))

(declare-fun b!1212940 () Bool)

(declare-fun e!688883 () Bool)

(declare-fun tp_is_empty!30769 () Bool)

(assert (=> b!1212940 (= e!688883 tp_is_empty!30769)))

(declare-fun lt!551326 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!688881 () Bool)

(declare-fun b!1212941 () Bool)

(assert (=> b!1212941 (= e!688881 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!551326) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!46153 0))(
  ( (V!46154 (val!15441 Int)) )
))
(declare-fun zeroValue!944 () V!46153)

(declare-datatypes ((array!78298 0))(
  ( (array!78299 (arr!37780 (Array (_ BitVec 32) (_ BitVec 64))) (size!38317 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78298)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14675 0))(
  ( (ValueCellFull!14675 (v!18095 V!46153)) (EmptyCell!14675) )
))
(declare-datatypes ((array!78300 0))(
  ( (array!78301 (arr!37781 (Array (_ BitVec 32) ValueCell!14675)) (size!38318 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78300)

(declare-fun minValue!944 () V!46153)

(declare-fun bm!60258 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!19976 0))(
  ( (tuple2!19977 (_1!9998 (_ BitVec 64)) (_2!9998 V!46153)) )
))
(declare-datatypes ((List!26796 0))(
  ( (Nil!26793) (Cons!26792 (h!28001 tuple2!19976) (t!39848 List!26796)) )
))
(declare-datatypes ((ListLongMap!17957 0))(
  ( (ListLongMap!17958 (toList!8994 List!26796)) )
))
(declare-fun call!60267 () ListLongMap!17957)

(declare-fun getCurrentListMapNoExtraKeys!5399 (array!78298 array!78300 (_ BitVec 32) (_ BitVec 32) V!46153 V!46153 (_ BitVec 32) Int) ListLongMap!17957)

(assert (=> bm!60258 (= call!60267 (getCurrentListMapNoExtraKeys!5399 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1212942 () Bool)

(declare-fun res!805584 () Bool)

(declare-fun e!688895 () Bool)

(assert (=> b!1212942 (=> (not res!805584) (not e!688895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78298 (_ BitVec 32)) Bool)

(assert (=> b!1212942 (= res!805584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1212943 () Bool)

(declare-datatypes ((Unit!40144 0))(
  ( (Unit!40145) )
))
(declare-fun e!688887 () Unit!40144)

(declare-fun lt!551318 () Unit!40144)

(assert (=> b!1212943 (= e!688887 lt!551318)))

(declare-fun call!60266 () Unit!40144)

(assert (=> b!1212943 (= lt!551318 call!60266)))

(declare-fun call!60262 () Bool)

(assert (=> b!1212943 call!60262))

(declare-fun bm!60259 () Bool)

(declare-fun call!60264 () ListLongMap!17957)

(declare-fun call!60263 () ListLongMap!17957)

(assert (=> bm!60259 (= call!60264 call!60263)))

(declare-fun b!1212944 () Bool)

(declare-fun e!688893 () Bool)

(assert (=> b!1212944 (= e!688895 e!688893)))

(declare-fun res!805583 () Bool)

(assert (=> b!1212944 (=> (not res!805583) (not e!688893))))

(declare-fun lt!551313 () array!78298)

(assert (=> b!1212944 (= res!805583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!551313 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1212944 (= lt!551313 (array!78299 (store (arr!37780 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38317 _keys!1208)))))

(declare-fun e!688896 () Bool)

(declare-fun lt!551310 () ListLongMap!17957)

(declare-fun b!1212945 () Bool)

(declare-fun lt!551327 () array!78300)

(assert (=> b!1212945 (= e!688896 (= lt!551310 (getCurrentListMapNoExtraKeys!5399 lt!551313 lt!551327 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1212946 () Bool)

(declare-fun res!805585 () Bool)

(assert (=> b!1212946 (=> (not res!805585) (not e!688893))))

(declare-datatypes ((List!26797 0))(
  ( (Nil!26794) (Cons!26793 (h!28002 (_ BitVec 64)) (t!39849 List!26797)) )
))
(declare-fun arrayNoDuplicates!0 (array!78298 (_ BitVec 32) List!26797) Bool)

(assert (=> b!1212946 (= res!805585 (arrayNoDuplicates!0 lt!551313 #b00000000000000000000000000000000 Nil!26794))))

(declare-fun b!1212947 () Bool)

(declare-fun e!688888 () Bool)

(declare-fun arrayContainsKey!0 (array!78298 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1212947 (= e!688888 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1212948 () Bool)

(declare-fun e!688891 () Unit!40144)

(declare-fun Unit!40146 () Unit!40144)

(assert (=> b!1212948 (= e!688891 Unit!40146)))

(assert (=> b!1212948 (= lt!551326 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!119737 () Bool)

(assert (=> b!1212948 (= c!119737 (and (not lt!551326) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!551308 () Unit!40144)

(declare-fun e!688892 () Unit!40144)

(assert (=> b!1212948 (= lt!551308 e!688892)))

(declare-fun lt!551325 () Unit!40144)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!615 (array!78298 array!78300 (_ BitVec 32) (_ BitVec 32) V!46153 V!46153 (_ BitVec 64) (_ BitVec 32) Int) Unit!40144)

(assert (=> b!1212948 (= lt!551325 (lemmaListMapContainsThenArrayContainsFrom!615 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119739 () Bool)

(assert (=> b!1212948 (= c!119739 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!805578 () Bool)

(assert (=> b!1212948 (= res!805578 e!688881)))

(assert (=> b!1212948 (=> (not res!805578) (not e!688888))))

(assert (=> b!1212948 e!688888))

(declare-fun lt!551322 () Unit!40144)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78298 (_ BitVec 32) (_ BitVec 32)) Unit!40144)

(assert (=> b!1212948 (= lt!551322 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1212948 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26794)))

(declare-fun lt!551320 () Unit!40144)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78298 (_ BitVec 64) (_ BitVec 32) List!26797) Unit!40144)

(assert (=> b!1212948 (= lt!551320 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26794))))

(assert (=> b!1212948 false))

(declare-fun mapIsEmpty!48028 () Bool)

(declare-fun mapRes!48028 () Bool)

(assert (=> mapIsEmpty!48028 mapRes!48028))

(declare-fun b!1212949 () Bool)

(declare-fun e!688880 () Unit!40144)

(declare-fun Unit!40147 () Unit!40144)

(assert (=> b!1212949 (= e!688880 Unit!40147)))

(declare-fun call!60261 () Bool)

(declare-fun lt!551311 () ListLongMap!17957)

(declare-fun bm!60260 () Bool)

(declare-fun contains!7010 (ListLongMap!17957 (_ BitVec 64)) Bool)

(assert (=> bm!60260 (= call!60261 (contains!7010 (ite c!119737 lt!551311 call!60264) k!934))))

(declare-fun lt!551316 () ListLongMap!17957)

(declare-fun bm!60261 () Bool)

(declare-fun c!119740 () Bool)

(declare-fun +!4020 (ListLongMap!17957 tuple2!19976) ListLongMap!17957)

(assert (=> bm!60261 (= call!60263 (+!4020 (ite c!119737 lt!551311 lt!551316) (ite c!119737 (tuple2!19977 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!119740 (tuple2!19977 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19977 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1212950 () Bool)

(declare-fun e!688884 () Bool)

(declare-fun e!688889 () Bool)

(assert (=> b!1212950 (= e!688884 e!688889)))

(declare-fun res!805577 () Bool)

(assert (=> b!1212950 (=> res!805577 e!688889)))

(assert (=> b!1212950 (= res!805577 (not (= from!1455 i!673)))))

(declare-fun lt!551319 () ListLongMap!17957)

(assert (=> b!1212950 (= lt!551319 (getCurrentListMapNoExtraKeys!5399 lt!551313 lt!551327 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!551309 () V!46153)

(assert (=> b!1212950 (= lt!551327 (array!78301 (store (arr!37781 _values!996) i!673 (ValueCellFull!14675 lt!551309)) (size!38318 _values!996)))))

(declare-fun dynLambda!3311 (Int (_ BitVec 64)) V!46153)

(assert (=> b!1212950 (= lt!551309 (dynLambda!3311 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!551317 () ListLongMap!17957)

(assert (=> b!1212950 (= lt!551317 (getCurrentListMapNoExtraKeys!5399 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1212951 () Bool)

(assert (=> b!1212951 (= e!688887 e!688880)))

(declare-fun c!119738 () Bool)

(assert (=> b!1212951 (= c!119738 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!551326))))

(declare-fun bm!60262 () Bool)

(assert (=> bm!60262 (= call!60262 call!60261)))

(declare-fun b!1212952 () Bool)

(declare-fun res!805582 () Bool)

(assert (=> b!1212952 (=> (not res!805582) (not e!688895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1212952 (= res!805582 (validMask!0 mask!1564))))

(declare-fun e!688885 () Bool)

(declare-fun call!60265 () ListLongMap!17957)

(declare-fun b!1212953 () Bool)

(declare-fun -!1890 (ListLongMap!17957 (_ BitVec 64)) ListLongMap!17957)

(assert (=> b!1212953 (= e!688885 (= call!60265 (-!1890 call!60267 k!934)))))

(declare-fun b!1212954 () Bool)

(declare-fun res!805576 () Bool)

(assert (=> b!1212954 (=> (not res!805576) (not e!688895))))

(assert (=> b!1212954 (= res!805576 (and (= (size!38318 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38317 _keys!1208) (size!38318 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1212955 () Bool)

(assert (=> b!1212955 (= e!688881 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1212956 () Bool)

(declare-fun Unit!40148 () Unit!40144)

(assert (=> b!1212956 (= e!688891 Unit!40148)))

(declare-fun b!1212957 () Bool)

(assert (=> b!1212957 (= e!688893 (not e!688884))))

(declare-fun res!805579 () Bool)

(assert (=> b!1212957 (=> res!805579 e!688884)))

(assert (=> b!1212957 (= res!805579 (bvsgt from!1455 i!673))))

(assert (=> b!1212957 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!551314 () Unit!40144)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78298 (_ BitVec 64) (_ BitVec 32)) Unit!40144)

(assert (=> b!1212957 (= lt!551314 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1212958 () Bool)

(declare-fun res!805580 () Bool)

(assert (=> b!1212958 (=> (not res!805580) (not e!688895))))

(assert (=> b!1212958 (= res!805580 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38317 _keys!1208))))))

(declare-fun b!1212959 () Bool)

(declare-fun e!688886 () Bool)

(assert (=> b!1212959 (= e!688886 true)))

(assert (=> b!1212959 e!688896))

(declare-fun res!805575 () Bool)

(assert (=> b!1212959 (=> (not res!805575) (not e!688896))))

(assert (=> b!1212959 (= res!805575 (= lt!551310 lt!551316))))

(assert (=> b!1212959 (= lt!551310 (-!1890 lt!551317 k!934))))

(declare-fun lt!551312 () V!46153)

(assert (=> b!1212959 (= (-!1890 (+!4020 lt!551316 (tuple2!19977 (select (arr!37780 _keys!1208) from!1455) lt!551312)) (select (arr!37780 _keys!1208) from!1455)) lt!551316)))

(declare-fun lt!551315 () Unit!40144)

(declare-fun addThenRemoveForNewKeyIsSame!290 (ListLongMap!17957 (_ BitVec 64) V!46153) Unit!40144)

(assert (=> b!1212959 (= lt!551315 (addThenRemoveForNewKeyIsSame!290 lt!551316 (select (arr!37780 _keys!1208) from!1455) lt!551312))))

(declare-fun get!19304 (ValueCell!14675 V!46153) V!46153)

(assert (=> b!1212959 (= lt!551312 (get!19304 (select (arr!37781 _values!996) from!1455) lt!551309))))

(declare-fun lt!551323 () Unit!40144)

(assert (=> b!1212959 (= lt!551323 e!688891)))

(declare-fun c!119735 () Bool)

(assert (=> b!1212959 (= c!119735 (contains!7010 lt!551316 k!934))))

(assert (=> b!1212959 (= lt!551316 (getCurrentListMapNoExtraKeys!5399 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!805572 () Bool)

(assert (=> start!101178 (=> (not res!805572) (not e!688895))))

(assert (=> start!101178 (= res!805572 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38317 _keys!1208))))))

(assert (=> start!101178 e!688895))

(assert (=> start!101178 tp_is_empty!30769))

(declare-fun array_inv!28676 (array!78298) Bool)

(assert (=> start!101178 (array_inv!28676 _keys!1208)))

(assert (=> start!101178 true))

(assert (=> start!101178 tp!91217))

(declare-fun e!688894 () Bool)

(declare-fun array_inv!28677 (array!78300) Bool)

(assert (=> start!101178 (and (array_inv!28677 _values!996) e!688894)))

(declare-fun b!1212960 () Bool)

(declare-fun e!688890 () Bool)

(assert (=> b!1212960 (= e!688894 (and e!688890 mapRes!48028))))

(declare-fun condMapEmpty!48028 () Bool)

(declare-fun mapDefault!48028 () ValueCell!14675)

