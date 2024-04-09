; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98828 () Bool)

(assert start!98828)

(declare-fun b_free!24397 () Bool)

(declare-fun b_next!24397 () Bool)

(assert (=> start!98828 (= b_free!24397 (not b_next!24397))))

(declare-fun tp!85902 () Bool)

(declare-fun b_and!39657 () Bool)

(assert (=> start!98828 (= tp!85902 b_and!39657)))

(declare-fun b!1153210 () Bool)

(declare-datatypes ((Unit!37860 0))(
  ( (Unit!37861) )
))
(declare-fun e!655920 () Unit!37860)

(declare-fun e!655915 () Unit!37860)

(assert (=> b!1153210 (= e!655920 e!655915)))

(declare-fun c!114382 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!516789 () Bool)

(assert (=> b!1153210 (= c!114382 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!516789))))

(declare-fun b!1153211 () Bool)

(declare-fun e!655922 () Bool)

(assert (=> b!1153211 (= e!655922 true)))

(declare-fun e!655910 () Bool)

(assert (=> b!1153211 e!655910))

(declare-fun res!766648 () Bool)

(assert (=> b!1153211 (=> (not res!766648) (not e!655910))))

(declare-datatypes ((V!43697 0))(
  ( (V!43698 (val!14520 Int)) )
))
(declare-datatypes ((tuple2!18522 0))(
  ( (tuple2!18523 (_1!9271 (_ BitVec 64)) (_2!9271 V!43697)) )
))
(declare-datatypes ((List!25310 0))(
  ( (Nil!25307) (Cons!25306 (h!26515 tuple2!18522) (t!36706 List!25310)) )
))
(declare-datatypes ((ListLongMap!16503 0))(
  ( (ListLongMap!16504 (toList!8267 List!25310)) )
))
(declare-fun lt!516788 () ListLongMap!16503)

(declare-fun lt!516780 () ListLongMap!16503)

(assert (=> b!1153211 (= res!766648 (= lt!516788 lt!516780))))

(declare-fun lt!516794 () ListLongMap!16503)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1349 (ListLongMap!16503 (_ BitVec 64)) ListLongMap!16503)

(assert (=> b!1153211 (= lt!516788 (-!1349 lt!516794 k!934))))

(declare-datatypes ((array!74652 0))(
  ( (array!74653 (arr!35973 (Array (_ BitVec 32) (_ BitVec 64))) (size!36510 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74652)

(declare-fun lt!516787 () V!43697)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun +!3602 (ListLongMap!16503 tuple2!18522) ListLongMap!16503)

(assert (=> b!1153211 (= (-!1349 (+!3602 lt!516780 (tuple2!18523 (select (arr!35973 _keys!1208) from!1455) lt!516787)) (select (arr!35973 _keys!1208) from!1455)) lt!516780)))

(declare-fun lt!516785 () Unit!37860)

(declare-fun addThenRemoveForNewKeyIsSame!194 (ListLongMap!16503 (_ BitVec 64) V!43697) Unit!37860)

(assert (=> b!1153211 (= lt!516785 (addThenRemoveForNewKeyIsSame!194 lt!516780 (select (arr!35973 _keys!1208) from!1455) lt!516787))))

(declare-fun lt!516793 () V!43697)

(declare-datatypes ((ValueCell!13754 0))(
  ( (ValueCellFull!13754 (v!17158 V!43697)) (EmptyCell!13754) )
))
(declare-datatypes ((array!74654 0))(
  ( (array!74655 (arr!35974 (Array (_ BitVec 32) ValueCell!13754)) (size!36511 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74654)

(declare-fun get!18348 (ValueCell!13754 V!43697) V!43697)

(assert (=> b!1153211 (= lt!516787 (get!18348 (select (arr!35974 _values!996) from!1455) lt!516793))))

(declare-fun lt!516799 () Unit!37860)

(declare-fun e!655917 () Unit!37860)

(assert (=> b!1153211 (= lt!516799 e!655917)))

(declare-fun c!114381 () Bool)

(declare-fun contains!6759 (ListLongMap!16503 (_ BitVec 64)) Bool)

(assert (=> b!1153211 (= c!114381 (contains!6759 lt!516780 k!934))))

(declare-fun zeroValue!944 () V!43697)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43697)

(declare-fun getCurrentListMapNoExtraKeys!4707 (array!74652 array!74654 (_ BitVec 32) (_ BitVec 32) V!43697 V!43697 (_ BitVec 32) Int) ListLongMap!16503)

(assert (=> b!1153211 (= lt!516780 (getCurrentListMapNoExtraKeys!4707 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!54302 () Bool)

(declare-fun call!54311 () Bool)

(declare-fun call!54305 () Bool)

(assert (=> bm!54302 (= call!54311 call!54305)))

(declare-fun b!1153212 () Bool)

(declare-fun e!655912 () Bool)

(declare-fun call!54312 () ListLongMap!16503)

(declare-fun call!54310 () ListLongMap!16503)

(assert (=> b!1153212 (= e!655912 (= call!54312 call!54310))))

(declare-fun b!1153213 () Bool)

(declare-fun Unit!37862 () Unit!37860)

(assert (=> b!1153213 (= e!655917 Unit!37862)))

(declare-fun b!1153214 () Bool)

(declare-fun Unit!37863 () Unit!37860)

(assert (=> b!1153214 (= e!655915 Unit!37863)))

(declare-fun b!1153215 () Bool)

(declare-fun lt!516786 () ListLongMap!16503)

(assert (=> b!1153215 (contains!6759 (+!3602 lt!516786 (tuple2!18523 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!516790 () Unit!37860)

(declare-fun call!54306 () Unit!37860)

(assert (=> b!1153215 (= lt!516790 call!54306)))

(assert (=> b!1153215 call!54305))

(declare-fun call!54307 () ListLongMap!16503)

(assert (=> b!1153215 (= lt!516786 call!54307)))

(declare-fun lt!516784 () Unit!37860)

(declare-fun addStillContains!899 (ListLongMap!16503 (_ BitVec 64) V!43697 (_ BitVec 64)) Unit!37860)

(assert (=> b!1153215 (= lt!516784 (addStillContains!899 lt!516780 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!655914 () Unit!37860)

(assert (=> b!1153215 (= e!655914 lt!516790)))

(declare-fun b!1153216 () Bool)

(declare-fun res!766651 () Bool)

(declare-fun e!655926 () Bool)

(assert (=> b!1153216 (=> (not res!766651) (not e!655926))))

(assert (=> b!1153216 (= res!766651 (and (= (size!36511 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36510 _keys!1208) (size!36511 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1153217 () Bool)

(declare-fun e!655911 () Bool)

(declare-fun arrayContainsKey!0 (array!74652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1153217 (= e!655911 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1153218 () Bool)

(declare-fun e!655921 () Bool)

(declare-fun e!655919 () Bool)

(declare-fun mapRes!45215 () Bool)

(assert (=> b!1153218 (= e!655921 (and e!655919 mapRes!45215))))

(declare-fun condMapEmpty!45215 () Bool)

(declare-fun mapDefault!45215 () ValueCell!13754)

