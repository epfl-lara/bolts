; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101120 () Bool)

(assert start!101120)

(declare-fun b_free!26045 () Bool)

(declare-fun b_next!26045 () Bool)

(assert (=> start!101120 (= b_free!26045 (not b_next!26045))))

(declare-fun tp!91154 () Bool)

(declare-fun b_and!43199 () Bool)

(assert (=> start!101120 (= tp!91154 b_and!43199)))

(declare-fun b!1211845 () Bool)

(declare-fun res!805050 () Bool)

(declare-fun e!688262 () Bool)

(assert (=> b!1211845 (=> (not res!805050) (not e!688262))))

(declare-datatypes ((array!78256 0))(
  ( (array!78257 (arr!37760 (Array (_ BitVec 32) (_ BitVec 64))) (size!38297 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78256)

(declare-datatypes ((List!26778 0))(
  ( (Nil!26775) (Cons!26774 (h!27983 (_ BitVec 64)) (t!39810 List!26778)) )
))
(declare-fun arrayNoDuplicates!0 (array!78256 (_ BitVec 32) List!26778) Bool)

(assert (=> b!1211845 (= res!805050 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26775))))

(declare-fun b!1211846 () Bool)

(declare-fun e!688269 () Bool)

(declare-fun tp_is_empty!30749 () Bool)

(assert (=> b!1211846 (= e!688269 tp_is_empty!30749)))

(declare-fun b!1211847 () Bool)

(declare-fun e!688268 () Bool)

(assert (=> b!1211847 (= e!688262 e!688268)))

(declare-fun res!805054 () Bool)

(assert (=> b!1211847 (=> (not res!805054) (not e!688268))))

(declare-fun lt!550542 () array!78256)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78256 (_ BitVec 32)) Bool)

(assert (=> b!1211847 (= res!805054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!550542 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1211847 (= lt!550542 (array!78257 (store (arr!37760 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38297 _keys!1208)))))

(declare-fun b!1211848 () Bool)

(declare-fun e!688257 () Bool)

(declare-fun e!688256 () Bool)

(assert (=> b!1211848 (= e!688257 e!688256)))

(declare-fun res!805056 () Bool)

(assert (=> b!1211848 (=> res!805056 e!688256)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1211848 (= res!805056 (not (= from!1455 i!673)))))

(declare-datatypes ((V!46125 0))(
  ( (V!46126 (val!15431 Int)) )
))
(declare-fun zeroValue!944 () V!46125)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19958 0))(
  ( (tuple2!19959 (_1!9989 (_ BitVec 64)) (_2!9989 V!46125)) )
))
(declare-datatypes ((List!26779 0))(
  ( (Nil!26776) (Cons!26775 (h!27984 tuple2!19958) (t!39811 List!26779)) )
))
(declare-datatypes ((ListLongMap!17939 0))(
  ( (ListLongMap!17940 (toList!8985 List!26779)) )
))
(declare-fun lt!550536 () ListLongMap!17939)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14665 0))(
  ( (ValueCellFull!14665 (v!18084 V!46125)) (EmptyCell!14665) )
))
(declare-datatypes ((array!78258 0))(
  ( (array!78259 (arr!37761 (Array (_ BitVec 32) ValueCell!14665)) (size!38298 (_ BitVec 32))) )
))
(declare-fun lt!550527 () array!78258)

(declare-fun minValue!944 () V!46125)

(declare-fun getCurrentListMapNoExtraKeys!5390 (array!78256 array!78258 (_ BitVec 32) (_ BitVec 32) V!46125 V!46125 (_ BitVec 32) Int) ListLongMap!17939)

(assert (=> b!1211848 (= lt!550536 (getCurrentListMapNoExtraKeys!5390 lt!550542 lt!550527 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!550530 () V!46125)

(declare-fun _values!996 () array!78258)

(assert (=> b!1211848 (= lt!550527 (array!78259 (store (arr!37761 _values!996) i!673 (ValueCellFull!14665 lt!550530)) (size!38298 _values!996)))))

(declare-fun dynLambda!3304 (Int (_ BitVec 64)) V!46125)

(assert (=> b!1211848 (= lt!550530 (dynLambda!3304 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!550545 () ListLongMap!17939)

(assert (=> b!1211848 (= lt!550545 (getCurrentListMapNoExtraKeys!5390 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1211849 () Bool)

(declare-fun e!688259 () Bool)

(declare-fun call!60007 () ListLongMap!17939)

(declare-fun call!60004 () ListLongMap!17939)

(assert (=> b!1211849 (= e!688259 (= call!60007 call!60004))))

(declare-fun b!1211850 () Bool)

(declare-fun lt!550528 () ListLongMap!17939)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!7000 (ListLongMap!17939 (_ BitVec 64)) Bool)

(declare-fun +!4012 (ListLongMap!17939 tuple2!19958) ListLongMap!17939)

(assert (=> b!1211850 (contains!7000 (+!4012 lt!550528 (tuple2!19959 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-datatypes ((Unit!40101 0))(
  ( (Unit!40102) )
))
(declare-fun lt!550532 () Unit!40101)

(declare-fun call!60003 () Unit!40101)

(assert (=> b!1211850 (= lt!550532 call!60003)))

(declare-fun call!60002 () Bool)

(assert (=> b!1211850 call!60002))

(declare-fun call!60000 () ListLongMap!17939)

(assert (=> b!1211850 (= lt!550528 call!60000)))

(declare-fun lt!550531 () ListLongMap!17939)

(declare-fun lt!550537 () Unit!40101)

(declare-fun addStillContains!1072 (ListLongMap!17939 (_ BitVec 64) V!46125 (_ BitVec 64)) Unit!40101)

(assert (=> b!1211850 (= lt!550537 (addStillContains!1072 lt!550531 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!688263 () Unit!40101)

(assert (=> b!1211850 (= e!688263 lt!550532)))

(declare-fun b!1211851 () Bool)

(declare-fun res!805052 () Bool)

(assert (=> b!1211851 (=> (not res!805052) (not e!688262))))

(assert (=> b!1211851 (= res!805052 (= (select (arr!37760 _keys!1208) i!673) k!934))))

(declare-fun b!1211852 () Bool)

(declare-fun res!805062 () Bool)

(assert (=> b!1211852 (=> (not res!805062) (not e!688262))))

(assert (=> b!1211852 (= res!805062 (and (= (size!38298 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38297 _keys!1208) (size!38298 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1211853 () Bool)

(declare-fun res!805049 () Bool)

(assert (=> b!1211853 (=> (not res!805049) (not e!688262))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1211853 (= res!805049 (validMask!0 mask!1564))))

(declare-fun c!119512 () Bool)

(declare-fun c!119511 () Bool)

(declare-fun bm!59997 () Bool)

(assert (=> bm!59997 (= call!60003 (addStillContains!1072 (ite c!119512 lt!550528 lt!550531) (ite c!119512 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!119511 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!119512 minValue!944 (ite c!119511 zeroValue!944 minValue!944)) k!934))))

(declare-fun bm!59998 () Bool)

(assert (=> bm!59998 (= call!60007 (getCurrentListMapNoExtraKeys!5390 lt!550542 lt!550527 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!47995 () Bool)

(declare-fun mapRes!47995 () Bool)

(assert (=> mapIsEmpty!47995 mapRes!47995))

(declare-fun lt!550546 () Bool)

(declare-fun e!688264 () Bool)

(declare-fun b!1211854 () Bool)

(assert (=> b!1211854 (= e!688264 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!550546) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1211855 () Bool)

(declare-fun e!688266 () Bool)

(declare-fun arrayContainsKey!0 (array!78256 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1211855 (= e!688266 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!59999 () Bool)

(declare-fun call!60001 () Bool)

(assert (=> bm!59999 (= call!60001 call!60002)))

(declare-fun b!1211856 () Bool)

(assert (=> b!1211856 call!60001))

(declare-fun lt!550526 () Unit!40101)

(declare-fun call!60005 () Unit!40101)

(assert (=> b!1211856 (= lt!550526 call!60005)))

(declare-fun e!688265 () Unit!40101)

(assert (=> b!1211856 (= e!688265 lt!550526)))

(declare-fun call!60006 () ListLongMap!17939)

(declare-fun bm!60000 () Bool)

(assert (=> bm!60000 (= call!60002 (contains!7000 (ite c!119512 lt!550528 call!60006) k!934))))

(declare-fun bm!60001 () Bool)

(assert (=> bm!60001 (= call!60000 (+!4012 lt!550531 (ite (or c!119512 c!119511) (tuple2!19959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19959 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1211857 () Bool)

(declare-fun e!688267 () Bool)

(assert (=> b!1211857 (= e!688267 tp_is_empty!30749)))

(declare-fun b!1211858 () Bool)

(assert (=> b!1211858 (= e!688264 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1211859 () Bool)

(assert (=> b!1211859 (= c!119511 (and (not lt!550546) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!688270 () Unit!40101)

(assert (=> b!1211859 (= e!688263 e!688270)))

(declare-fun b!1211860 () Bool)

(declare-fun res!805061 () Bool)

(assert (=> b!1211860 (=> (not res!805061) (not e!688268))))

(assert (=> b!1211860 (= res!805061 (arrayNoDuplicates!0 lt!550542 #b00000000000000000000000000000000 Nil!26775))))

(declare-fun res!805055 () Bool)

(assert (=> start!101120 (=> (not res!805055) (not e!688262))))

(assert (=> start!101120 (= res!805055 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38297 _keys!1208))))))

(assert (=> start!101120 e!688262))

(assert (=> start!101120 tp_is_empty!30749))

(declare-fun array_inv!28660 (array!78256) Bool)

(assert (=> start!101120 (array_inv!28660 _keys!1208)))

(assert (=> start!101120 true))

(assert (=> start!101120 tp!91154))

(declare-fun e!688261 () Bool)

(declare-fun array_inv!28661 (array!78258) Bool)

(assert (=> start!101120 (and (array_inv!28661 _values!996) e!688261)))

(declare-fun b!1211861 () Bool)

(declare-fun e!688260 () Unit!40101)

(declare-fun Unit!40103 () Unit!40101)

(assert (=> b!1211861 (= e!688260 Unit!40103)))

(assert (=> b!1211861 (= lt!550546 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1211861 (= c!119512 (and (not lt!550546) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!550534 () Unit!40101)

(assert (=> b!1211861 (= lt!550534 e!688263)))

(declare-fun lt!550540 () Unit!40101)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!609 (array!78256 array!78258 (_ BitVec 32) (_ BitVec 32) V!46125 V!46125 (_ BitVec 64) (_ BitVec 32) Int) Unit!40101)

(assert (=> b!1211861 (= lt!550540 (lemmaListMapContainsThenArrayContainsFrom!609 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119508 () Bool)

(assert (=> b!1211861 (= c!119508 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!805053 () Bool)

(assert (=> b!1211861 (= res!805053 e!688264)))

(assert (=> b!1211861 (=> (not res!805053) (not e!688266))))

(assert (=> b!1211861 e!688266))

(declare-fun lt!550539 () Unit!40101)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78256 (_ BitVec 32) (_ BitVec 32)) Unit!40101)

(assert (=> b!1211861 (= lt!550539 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1211861 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26775)))

(declare-fun lt!550541 () Unit!40101)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78256 (_ BitVec 64) (_ BitVec 32) List!26778) Unit!40101)

(assert (=> b!1211861 (= lt!550541 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26775))))

(assert (=> b!1211861 false))

(declare-fun bm!60002 () Bool)

(assert (=> bm!60002 (= call!60006 call!60000)))

(declare-fun b!1211862 () Bool)

(declare-fun lt!550538 () Unit!40101)

(assert (=> b!1211862 (= e!688270 lt!550538)))

(assert (=> b!1211862 (= lt!550538 call!60005)))

(assert (=> b!1211862 call!60001))

(declare-fun bm!60003 () Bool)

(assert (=> bm!60003 (= call!60004 (getCurrentListMapNoExtraKeys!5390 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1211863 () Bool)

(declare-fun Unit!40104 () Unit!40101)

(assert (=> b!1211863 (= e!688265 Unit!40104)))

(declare-fun b!1211864 () Bool)

(declare-fun Unit!40105 () Unit!40101)

(assert (=> b!1211864 (= e!688260 Unit!40105)))

(declare-fun b!1211865 () Bool)

(assert (=> b!1211865 (= e!688261 (and e!688269 mapRes!47995))))

(declare-fun condMapEmpty!47995 () Bool)

(declare-fun mapDefault!47995 () ValueCell!14665)

