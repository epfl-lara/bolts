; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98822 () Bool)

(assert start!98822)

(declare-fun b_free!24391 () Bool)

(declare-fun b_next!24391 () Bool)

(assert (=> start!98822 (= b_free!24391 (not b_next!24391))))

(declare-fun tp!85884 () Bool)

(declare-fun b_and!39645 () Bool)

(assert (=> start!98822 (= tp!85884 b_and!39645)))

(declare-fun b!1152934 () Bool)

(declare-datatypes ((Unit!37848 0))(
  ( (Unit!37849) )
))
(declare-fun e!655770 () Unit!37848)

(declare-fun Unit!37850 () Unit!37848)

(assert (=> b!1152934 (= e!655770 Unit!37850)))

(declare-fun b!1152935 () Bool)

(declare-fun e!655769 () Bool)

(declare-fun e!655763 () Bool)

(assert (=> b!1152935 (= e!655769 e!655763)))

(declare-fun res!766518 () Bool)

(assert (=> b!1152935 (=> res!766518 e!655763)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1152935 (= res!766518 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43689 0))(
  ( (V!43690 (val!14517 Int)) )
))
(declare-fun zeroValue!944 () V!43689)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!74640 0))(
  ( (array!74641 (arr!35967 (Array (_ BitVec 32) (_ BitVec 64))) (size!36504 (_ BitVec 32))) )
))
(declare-fun lt!516584 () array!74640)

(declare-fun minValue!944 () V!43689)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!18516 0))(
  ( (tuple2!18517 (_1!9268 (_ BitVec 64)) (_2!9268 V!43689)) )
))
(declare-datatypes ((List!25305 0))(
  ( (Nil!25302) (Cons!25301 (h!26510 tuple2!18516) (t!36695 List!25305)) )
))
(declare-datatypes ((ListLongMap!16497 0))(
  ( (ListLongMap!16498 (toList!8264 List!25305)) )
))
(declare-fun lt!516586 () ListLongMap!16497)

(declare-datatypes ((ValueCell!13751 0))(
  ( (ValueCellFull!13751 (v!17155 V!43689)) (EmptyCell!13751) )
))
(declare-datatypes ((array!74642 0))(
  ( (array!74643 (arr!35968 (Array (_ BitVec 32) ValueCell!13751)) (size!36505 (_ BitVec 32))) )
))
(declare-fun lt!516593 () array!74642)

(declare-fun getCurrentListMapNoExtraKeys!4704 (array!74640 array!74642 (_ BitVec 32) (_ BitVec 32) V!43689 V!43689 (_ BitVec 32) Int) ListLongMap!16497)

(assert (=> b!1152935 (= lt!516586 (getCurrentListMapNoExtraKeys!4704 lt!516584 lt!516593 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!516589 () V!43689)

(declare-fun _values!996 () array!74642)

(assert (=> b!1152935 (= lt!516593 (array!74643 (store (arr!35968 _values!996) i!673 (ValueCellFull!13751 lt!516589)) (size!36505 _values!996)))))

(declare-fun dynLambda!2727 (Int (_ BitVec 64)) V!43689)

(assert (=> b!1152935 (= lt!516589 (dynLambda!2727 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!74640)

(declare-fun lt!516582 () ListLongMap!16497)

(assert (=> b!1152935 (= lt!516582 (getCurrentListMapNoExtraKeys!4704 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1152936 () Bool)

(declare-fun e!655771 () Bool)

(declare-fun tp_is_empty!28921 () Bool)

(assert (=> b!1152936 (= e!655771 tp_is_empty!28921)))

(declare-fun c!114327 () Bool)

(declare-fun lt!516601 () ListLongMap!16497)

(declare-fun call!54240 () ListLongMap!16497)

(declare-fun c!114328 () Bool)

(declare-fun bm!54230 () Bool)

(declare-fun +!3599 (ListLongMap!16497 tuple2!18516) ListLongMap!16497)

(assert (=> bm!54230 (= call!54240 (+!3599 lt!516601 (ite (or c!114328 c!114327) (tuple2!18517 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18517 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun call!54238 () ListLongMap!16497)

(declare-fun bm!54231 () Bool)

(assert (=> bm!54231 (= call!54238 (getCurrentListMapNoExtraKeys!4704 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1152937 () Bool)

(declare-fun e!655765 () Bool)

(assert (=> b!1152937 (= e!655765 (not e!655769))))

(declare-fun res!766519 () Bool)

(assert (=> b!1152937 (=> res!766519 e!655769)))

(assert (=> b!1152937 (= res!766519 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!74640 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1152937 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!516599 () Unit!37848)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74640 (_ BitVec 64) (_ BitVec 32)) Unit!37848)

(assert (=> b!1152937 (= lt!516599 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1152938 () Bool)

(declare-fun e!655760 () Bool)

(assert (=> b!1152938 (= e!655760 tp_is_empty!28921)))

(declare-fun call!54235 () Unit!37848)

(declare-fun bm!54233 () Bool)

(declare-fun addStillContains!897 (ListLongMap!16497 (_ BitVec 64) V!43689 (_ BitVec 64)) Unit!37848)

(assert (=> bm!54233 (= call!54235 (addStillContains!897 lt!516601 (ite (or c!114328 c!114327) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!114328 c!114327) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1152939 () Bool)

(declare-fun lt!516583 () ListLongMap!16497)

(declare-fun e!655768 () Bool)

(assert (=> b!1152939 (= e!655768 (= lt!516583 (getCurrentListMapNoExtraKeys!4704 lt!516584 lt!516593 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1152940 () Bool)

(declare-fun e!655773 () Bool)

(assert (=> b!1152940 (= e!655773 e!655765)))

(declare-fun res!766521 () Bool)

(assert (=> b!1152940 (=> (not res!766521) (not e!655765))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74640 (_ BitVec 32)) Bool)

(assert (=> b!1152940 (= res!766521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!516584 mask!1564))))

(assert (=> b!1152940 (= lt!516584 (array!74641 (store (arr!35967 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36504 _keys!1208)))))

(declare-fun b!1152941 () Bool)

(declare-fun res!766523 () Bool)

(assert (=> b!1152941 (=> (not res!766523) (not e!655773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1152941 (= res!766523 (validMask!0 mask!1564))))

(declare-fun b!1152942 () Bool)

(declare-fun e!655757 () Unit!37848)

(declare-fun Unit!37851 () Unit!37848)

(assert (=> b!1152942 (= e!655757 Unit!37851)))

(declare-fun lt!516603 () Bool)

(assert (=> b!1152942 (= lt!516603 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1152942 (= c!114328 (and (not lt!516603) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!516588 () Unit!37848)

(declare-fun e!655767 () Unit!37848)

(assert (=> b!1152942 (= lt!516588 e!655767)))

(declare-fun lt!516592 () Unit!37848)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!480 (array!74640 array!74642 (_ BitVec 32) (_ BitVec 32) V!43689 V!43689 (_ BitVec 64) (_ BitVec 32) Int) Unit!37848)

(assert (=> b!1152942 (= lt!516592 (lemmaListMapContainsThenArrayContainsFrom!480 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114326 () Bool)

(assert (=> b!1152942 (= c!114326 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!766515 () Bool)

(declare-fun e!655759 () Bool)

(assert (=> b!1152942 (= res!766515 e!655759)))

(declare-fun e!655762 () Bool)

(assert (=> b!1152942 (=> (not res!766515) (not e!655762))))

(assert (=> b!1152942 e!655762))

(declare-fun lt!516590 () Unit!37848)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74640 (_ BitVec 32) (_ BitVec 32)) Unit!37848)

(assert (=> b!1152942 (= lt!516590 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25306 0))(
  ( (Nil!25303) (Cons!25302 (h!26511 (_ BitVec 64)) (t!36696 List!25306)) )
))
(declare-fun arrayNoDuplicates!0 (array!74640 (_ BitVec 32) List!25306) Bool)

(assert (=> b!1152942 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25303)))

(declare-fun lt!516591 () Unit!37848)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74640 (_ BitVec 64) (_ BitVec 32) List!25306) Unit!37848)

(assert (=> b!1152942 (= lt!516591 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25303))))

(assert (=> b!1152942 false))

(declare-fun b!1152943 () Bool)

(declare-fun Unit!37852 () Unit!37848)

(assert (=> b!1152943 (= e!655757 Unit!37852)))

(declare-fun b!1152944 () Bool)

(declare-fun res!766522 () Bool)

(assert (=> b!1152944 (=> (not res!766522) (not e!655773))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1152944 (= res!766522 (validKeyInArray!0 k!934))))

(declare-fun b!1152945 () Bool)

(declare-fun e!655772 () Bool)

(declare-fun mapRes!45206 () Bool)

(assert (=> b!1152945 (= e!655772 (and e!655771 mapRes!45206))))

(declare-fun condMapEmpty!45206 () Bool)

(declare-fun mapDefault!45206 () ValueCell!13751)

