; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101206 () Bool)

(assert start!101206)

(declare-fun b_free!26093 () Bool)

(declare-fun b_next!26093 () Bool)

(assert (=> start!101206 (= b_free!26093 (not b_next!26093))))

(declare-fun tp!91301 () Bool)

(declare-fun b_and!43313 () Bool)

(assert (=> start!101206 (= tp!91301 b_and!43313)))

(declare-fun b!1214228 () Bool)

(declare-fun e!689594 () Bool)

(declare-datatypes ((V!46189 0))(
  ( (V!46190 (val!15455 Int)) )
))
(declare-datatypes ((tuple2!20004 0))(
  ( (tuple2!20005 (_1!10012 (_ BitVec 64)) (_2!10012 V!46189)) )
))
(declare-datatypes ((List!26823 0))(
  ( (Nil!26820) (Cons!26819 (h!28028 tuple2!20004) (t!39903 List!26823)) )
))
(declare-datatypes ((ListLongMap!17985 0))(
  ( (ListLongMap!17986 (toList!9008 List!26823)) )
))
(declare-fun call!60598 () ListLongMap!17985)

(declare-fun call!60597 () ListLongMap!17985)

(assert (=> b!1214228 (= e!689594 (= call!60598 call!60597))))

(declare-fun b!1214229 () Bool)

(declare-fun res!806206 () Bool)

(declare-fun e!689597 () Bool)

(assert (=> b!1214229 (=> (not res!806206) (not e!689597))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78354 0))(
  ( (array!78355 (arr!37808 (Array (_ BitVec 32) (_ BitVec 64))) (size!38345 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78354)

(assert (=> b!1214229 (= res!806206 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38345 _keys!1208))))))

(declare-fun b!1214230 () Bool)

(declare-fun call!60604 () ListLongMap!17985)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!7022 (ListLongMap!17985 (_ BitVec 64)) Bool)

(assert (=> b!1214230 (contains!7022 call!60604 k!934)))

(declare-datatypes ((Unit!40202 0))(
  ( (Unit!40203) )
))
(declare-fun lt!552239 () Unit!40202)

(declare-fun call!60600 () Unit!40202)

(assert (=> b!1214230 (= lt!552239 call!60600)))

(declare-fun call!60602 () Bool)

(assert (=> b!1214230 call!60602))

(declare-fun lt!552249 () ListLongMap!17985)

(declare-fun lt!552243 () ListLongMap!17985)

(declare-fun zeroValue!944 () V!46189)

(declare-fun +!4033 (ListLongMap!17985 tuple2!20004) ListLongMap!17985)

(assert (=> b!1214230 (= lt!552249 (+!4033 lt!552243 (tuple2!20005 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!552251 () Unit!40202)

(declare-fun addStillContains!1090 (ListLongMap!17985 (_ BitVec 64) V!46189 (_ BitVec 64)) Unit!40202)

(assert (=> b!1214230 (= lt!552251 (addStillContains!1090 lt!552243 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!689604 () Unit!40202)

(assert (=> b!1214230 (= e!689604 lt!552239)))

(declare-fun b!1214231 () Bool)

(declare-fun res!806204 () Bool)

(assert (=> b!1214231 (=> (not res!806204) (not e!689597))))

(declare-datatypes ((List!26824 0))(
  ( (Nil!26821) (Cons!26820 (h!28029 (_ BitVec 64)) (t!39904 List!26824)) )
))
(declare-fun arrayNoDuplicates!0 (array!78354 (_ BitVec 32) List!26824) Bool)

(assert (=> b!1214231 (= res!806204 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26821))))

(declare-fun b!1214232 () Bool)

(declare-fun e!689598 () Unit!40202)

(declare-fun Unit!40204 () Unit!40202)

(assert (=> b!1214232 (= e!689598 Unit!40204)))

(declare-fun b!1214233 () Bool)

(declare-fun c!119990 () Bool)

(declare-fun lt!552246 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1214233 (= c!119990 (and (not lt!552246) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!689600 () Unit!40202)

(assert (=> b!1214233 (= e!689604 e!689600)))

(declare-fun b!1214234 () Bool)

(declare-fun e!689601 () Unit!40202)

(declare-fun Unit!40205 () Unit!40202)

(assert (=> b!1214234 (= e!689601 Unit!40205)))

(declare-fun b!1214235 () Bool)

(declare-fun res!806201 () Bool)

(assert (=> b!1214235 (=> (not res!806201) (not e!689597))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1214235 (= res!806201 (validKeyInArray!0 k!934))))

(declare-fun res!806203 () Bool)

(assert (=> start!101206 (=> (not res!806203) (not e!689597))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101206 (= res!806203 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38345 _keys!1208))))))

(assert (=> start!101206 e!689597))

(declare-fun tp_is_empty!30797 () Bool)

(assert (=> start!101206 tp_is_empty!30797))

(declare-fun array_inv!28696 (array!78354) Bool)

(assert (=> start!101206 (array_inv!28696 _keys!1208)))

(assert (=> start!101206 true))

(assert (=> start!101206 tp!91301))

(declare-datatypes ((ValueCell!14689 0))(
  ( (ValueCellFull!14689 (v!18109 V!46189)) (EmptyCell!14689) )
))
(declare-datatypes ((array!78356 0))(
  ( (array!78357 (arr!37809 (Array (_ BitVec 32) ValueCell!14689)) (size!38346 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78356)

(declare-fun e!689599 () Bool)

(declare-fun array_inv!28697 (array!78356) Bool)

(assert (=> start!101206 (and (array_inv!28697 _values!996) e!689599)))

(declare-fun e!689596 () Bool)

(declare-fun b!1214236 () Bool)

(declare-fun arrayContainsKey!0 (array!78354 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1214236 (= e!689596 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!552233 () array!78354)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!552247 () array!78356)

(declare-fun bm!60594 () Bool)

(declare-fun minValue!944 () V!46189)

(declare-fun getCurrentListMapNoExtraKeys!5413 (array!78354 array!78356 (_ BitVec 32) (_ BitVec 32) V!46189 V!46189 (_ BitVec 32) Int) ListLongMap!17985)

(assert (=> bm!60594 (= call!60598 (getCurrentListMapNoExtraKeys!5413 lt!552233 lt!552247 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!60595 () Bool)

(declare-fun c!119992 () Bool)

(assert (=> bm!60595 (= call!60600 (addStillContains!1090 (ite c!119992 lt!552249 lt!552243) (ite c!119992 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!119990 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!119992 minValue!944 (ite c!119990 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1214237 () Bool)

(declare-fun e!689602 () Bool)

(declare-fun e!689606 () Bool)

(assert (=> b!1214237 (= e!689602 e!689606)))

(declare-fun res!806207 () Bool)

(assert (=> b!1214237 (=> res!806207 e!689606)))

(assert (=> b!1214237 (= res!806207 (not (= from!1455 i!673)))))

(declare-fun lt!552242 () ListLongMap!17985)

(assert (=> b!1214237 (= lt!552242 (getCurrentListMapNoExtraKeys!5413 lt!552233 lt!552247 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552250 () V!46189)

(assert (=> b!1214237 (= lt!552247 (array!78357 (store (arr!37809 _values!996) i!673 (ValueCellFull!14689 lt!552250)) (size!38346 _values!996)))))

(declare-fun dynLambda!3322 (Int (_ BitVec 64)) V!46189)

(assert (=> b!1214237 (= lt!552250 (dynLambda!3322 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!552232 () ListLongMap!17985)

(assert (=> b!1214237 (= lt!552232 (getCurrentListMapNoExtraKeys!5413 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1214238 () Bool)

(declare-fun e!689610 () Bool)

(declare-fun mapRes!48070 () Bool)

(assert (=> b!1214238 (= e!689599 (and e!689610 mapRes!48070))))

(declare-fun condMapEmpty!48070 () Bool)

(declare-fun mapDefault!48070 () ValueCell!14689)

