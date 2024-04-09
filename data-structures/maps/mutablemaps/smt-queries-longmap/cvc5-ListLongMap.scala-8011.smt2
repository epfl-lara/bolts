; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98942 () Bool)

(assert start!98942)

(declare-fun b_free!24511 () Bool)

(declare-fun b_next!24511 () Bool)

(assert (=> start!98942 (= b_free!24511 (not b_next!24511))))

(declare-fun tp!86245 () Bool)

(declare-fun b_and!39885 () Bool)

(assert (=> start!98942 (= tp!86245 b_and!39885)))

(declare-fun b!1158454 () Bool)

(declare-fun e!658822 () Bool)

(declare-fun tp_is_empty!29041 () Bool)

(assert (=> b!1158454 (= e!658822 tp_is_empty!29041)))

(declare-fun b!1158455 () Bool)

(declare-datatypes ((V!43849 0))(
  ( (V!43850 (val!14577 Int)) )
))
(declare-datatypes ((tuple2!18624 0))(
  ( (tuple2!18625 (_1!9322 (_ BitVec 64)) (_2!9322 V!43849)) )
))
(declare-datatypes ((List!25403 0))(
  ( (Nil!25400) (Cons!25399 (h!26608 tuple2!18624) (t!36913 List!25403)) )
))
(declare-datatypes ((ListLongMap!16605 0))(
  ( (ListLongMap!16606 (toList!8318 List!25403)) )
))
(declare-fun lt!520561 () ListLongMap!16605)

(declare-fun minValue!944 () V!43849)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6802 (ListLongMap!16605 (_ BitVec 64)) Bool)

(declare-fun +!3646 (ListLongMap!16605 tuple2!18624) ListLongMap!16605)

(assert (=> b!1158455 (contains!6802 (+!3646 lt!520561 (tuple2!18625 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-datatypes ((Unit!38064 0))(
  ( (Unit!38065) )
))
(declare-fun lt!520543 () Unit!38064)

(declare-fun addStillContains!942 (ListLongMap!16605 (_ BitVec 64) V!43849 (_ BitVec 64)) Unit!38064)

(assert (=> b!1158455 (= lt!520543 (addStillContains!942 lt!520561 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!55676 () Bool)

(assert (=> b!1158455 call!55676))

(declare-fun call!55679 () ListLongMap!16605)

(assert (=> b!1158455 (= lt!520561 call!55679)))

(declare-fun lt!520558 () Unit!38064)

(declare-fun call!55678 () Unit!38064)

(assert (=> b!1158455 (= lt!520558 call!55678)))

(declare-fun e!658817 () Unit!38064)

(assert (=> b!1158455 (= e!658817 lt!520543)))

(declare-fun b!1158456 () Bool)

(declare-fun res!769215 () Bool)

(declare-fun e!658833 () Bool)

(assert (=> b!1158456 (=> (not res!769215) (not e!658833))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1158456 (= res!769215 (validKeyInArray!0 k!934))))

(declare-fun zeroValue!944 () V!43849)

(declare-datatypes ((array!74872 0))(
  ( (array!74873 (arr!36083 (Array (_ BitVec 32) (_ BitVec 64))) (size!36620 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74872)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!55670 () Bool)

(declare-datatypes ((ValueCell!13811 0))(
  ( (ValueCellFull!13811 (v!17215 V!43849)) (EmptyCell!13811) )
))
(declare-datatypes ((array!74874 0))(
  ( (array!74875 (arr!36084 (Array (_ BitVec 32) ValueCell!13811)) (size!36621 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74874)

(declare-fun call!55680 () ListLongMap!16605)

(declare-fun getCurrentListMapNoExtraKeys!4755 (array!74872 array!74874 (_ BitVec 32) (_ BitVec 32) V!43849 V!43849 (_ BitVec 32) Int) ListLongMap!16605)

(assert (=> bm!55670 (= call!55680 (getCurrentListMapNoExtraKeys!4755 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158457 () Bool)

(declare-fun e!658831 () Bool)

(declare-fun mapRes!45386 () Bool)

(assert (=> b!1158457 (= e!658831 (and e!658822 mapRes!45386))))

(declare-fun condMapEmpty!45386 () Bool)

(declare-fun mapDefault!45386 () ValueCell!13811)

