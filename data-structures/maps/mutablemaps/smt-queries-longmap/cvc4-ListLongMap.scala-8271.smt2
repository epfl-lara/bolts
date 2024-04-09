; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100614 () Bool)

(assert start!100614)

(declare-fun b_free!25901 () Bool)

(declare-fun b_next!25901 () Bool)

(assert (=> start!100614 (= b_free!25901 (not b_next!25901))))

(declare-fun tp!90693 () Bool)

(declare-fun b_and!42703 () Bool)

(assert (=> start!100614 (= tp!90693 b_and!42703)))

(declare-fun mapIsEmpty!47750 () Bool)

(declare-fun mapRes!47750 () Bool)

(assert (=> mapIsEmpty!47750 mapRes!47750))

(declare-fun b!1203229 () Bool)

(declare-fun call!58016 () Bool)

(assert (=> b!1203229 call!58016))

(declare-datatypes ((Unit!39814 0))(
  ( (Unit!39815) )
))
(declare-fun lt!545409 () Unit!39814)

(declare-fun call!58012 () Unit!39814)

(assert (=> b!1203229 (= lt!545409 call!58012)))

(declare-fun e!683273 () Unit!39814)

(assert (=> b!1203229 (= e!683273 lt!545409)))

(declare-fun res!800836 () Bool)

(declare-fun e!683271 () Bool)

(assert (=> start!100614 (=> (not res!800836) (not e!683271))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77960 0))(
  ( (array!77961 (arr!37621 (Array (_ BitVec 32) (_ BitVec 64))) (size!38158 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77960)

(assert (=> start!100614 (= res!800836 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38158 _keys!1208))))))

(assert (=> start!100614 e!683271))

(declare-fun tp_is_empty!30605 () Bool)

(assert (=> start!100614 tp_is_empty!30605))

(declare-fun array_inv!28562 (array!77960) Bool)

(assert (=> start!100614 (array_inv!28562 _keys!1208)))

(assert (=> start!100614 true))

(assert (=> start!100614 tp!90693))

(declare-datatypes ((V!45933 0))(
  ( (V!45934 (val!15359 Int)) )
))
(declare-datatypes ((ValueCell!14593 0))(
  ( (ValueCellFull!14593 (v!17998 V!45933)) (EmptyCell!14593) )
))
(declare-datatypes ((array!77962 0))(
  ( (array!77963 (arr!37622 (Array (_ BitVec 32) ValueCell!14593)) (size!38159 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77962)

(declare-fun e!683280 () Bool)

(declare-fun array_inv!28563 (array!77962) Bool)

(assert (=> start!100614 (and (array_inv!28563 _values!996) e!683280)))

(declare-fun b!1203230 () Bool)

(declare-fun e!683279 () Bool)

(declare-datatypes ((tuple2!19826 0))(
  ( (tuple2!19827 (_1!9923 (_ BitVec 64)) (_2!9923 V!45933)) )
))
(declare-datatypes ((List!26654 0))(
  ( (Nil!26651) (Cons!26650 (h!27859 tuple2!19826) (t!39542 List!26654)) )
))
(declare-datatypes ((ListLongMap!17807 0))(
  ( (ListLongMap!17808 (toList!8919 List!26654)) )
))
(declare-fun call!58015 () ListLongMap!17807)

(declare-fun call!58017 () ListLongMap!17807)

(assert (=> b!1203230 (= e!683279 (= call!58015 call!58017))))

(declare-fun b!1203231 () Bool)

(declare-fun e!683284 () Unit!39814)

(declare-fun Unit!39816 () Unit!39814)

(assert (=> b!1203231 (= e!683284 Unit!39816)))

(declare-fun b!1203232 () Bool)

(declare-fun res!800828 () Bool)

(assert (=> b!1203232 (=> (not res!800828) (not e!683271))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1203232 (= res!800828 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38158 _keys!1208))))))

(declare-fun b!1203233 () Bool)

(declare-fun e!683277 () Unit!39814)

(assert (=> b!1203233 (= e!683277 e!683273)))

(declare-fun c!117751 () Bool)

(declare-fun lt!545417 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1203233 (= c!117751 (and (not lt!545417) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1203234 () Bool)

(declare-fun c!117752 () Bool)

(assert (=> b!1203234 (= c!117752 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!545417))))

(assert (=> b!1203234 (= e!683273 e!683284)))

(declare-fun b!1203235 () Bool)

(declare-fun e!683274 () Bool)

(declare-fun e!683282 () Bool)

(assert (=> b!1203235 (= e!683274 e!683282)))

(declare-fun res!800834 () Bool)

(assert (=> b!1203235 (=> res!800834 e!683282)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1203235 (= res!800834 (not (= (select (arr!37621 _keys!1208) from!1455) k!934)))))

(assert (=> b!1203235 e!683279))

(declare-fun c!117753 () Bool)

(assert (=> b!1203235 (= c!117753 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!45933)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!545412 () Unit!39814)

(declare-fun minValue!944 () V!45933)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1039 (array!77960 array!77962 (_ BitVec 32) (_ BitVec 32) V!45933 V!45933 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39814)

(assert (=> b!1203235 (= lt!545412 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1039 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!58008 () Bool)

(declare-fun call!58011 () Bool)

(assert (=> bm!58008 (= call!58016 call!58011)))

(declare-fun b!1203236 () Bool)

(declare-fun e!683275 () Bool)

(assert (=> b!1203236 (= e!683282 e!683275)))

(declare-fun res!800837 () Bool)

(assert (=> b!1203236 (=> res!800837 e!683275)))

(declare-fun lt!545411 () ListLongMap!17807)

(declare-fun contains!6917 (ListLongMap!17807 (_ BitVec 64)) Bool)

(assert (=> b!1203236 (= res!800837 (not (contains!6917 lt!545411 k!934)))))

(declare-fun getCurrentListMapNoExtraKeys!5329 (array!77960 array!77962 (_ BitVec 32) (_ BitVec 32) V!45933 V!45933 (_ BitVec 32) Int) ListLongMap!17807)

(assert (=> b!1203236 (= lt!545411 (getCurrentListMapNoExtraKeys!5329 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1203237 () Bool)

(declare-fun res!800830 () Bool)

(assert (=> b!1203237 (=> (not res!800830) (not e!683271))))

(assert (=> b!1203237 (= res!800830 (= (select (arr!37621 _keys!1208) i!673) k!934))))

(declare-fun b!1203238 () Bool)

(declare-fun res!800841 () Bool)

(assert (=> b!1203238 (=> (not res!800841) (not e!683271))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1203238 (= res!800841 (validKeyInArray!0 k!934))))

(declare-fun b!1203239 () Bool)

(declare-fun e!683276 () Bool)

(assert (=> b!1203239 (= e!683271 e!683276)))

(declare-fun res!800831 () Bool)

(assert (=> b!1203239 (=> (not res!800831) (not e!683276))))

(declare-fun lt!545413 () array!77960)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77960 (_ BitVec 32)) Bool)

(assert (=> b!1203239 (= res!800831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!545413 mask!1564))))

(assert (=> b!1203239 (= lt!545413 (array!77961 (store (arr!37621 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38158 _keys!1208)))))

(declare-fun b!1203240 () Bool)

(declare-fun res!800833 () Bool)

(assert (=> b!1203240 (=> (not res!800833) (not e!683271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1203240 (= res!800833 (validMask!0 mask!1564))))

(declare-fun b!1203241 () Bool)

(declare-fun -!1835 (ListLongMap!17807 (_ BitVec 64)) ListLongMap!17807)

(assert (=> b!1203241 (= e!683279 (= call!58015 (-!1835 call!58017 k!934)))))

(declare-fun b!1203242 () Bool)

(declare-fun e!683281 () Bool)

(assert (=> b!1203242 (= e!683280 (and e!683281 mapRes!47750))))

(declare-fun condMapEmpty!47750 () Bool)

(declare-fun mapDefault!47750 () ValueCell!14593)

