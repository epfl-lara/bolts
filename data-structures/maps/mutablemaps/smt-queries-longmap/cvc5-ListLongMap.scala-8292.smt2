; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101060 () Bool)

(assert start!101060)

(declare-fun b_free!26023 () Bool)

(declare-fun b_next!26023 () Bool)

(assert (=> start!101060 (= b_free!26023 (not b_next!26023))))

(declare-fun tp!91085 () Bool)

(declare-fun b_and!43137 () Bool)

(assert (=> start!101060 (= tp!91085 b_and!43137)))

(declare-fun b!1210672 () Bool)

(declare-datatypes ((Unit!40052 0))(
  ( (Unit!40053) )
))
(declare-fun e!687598 () Unit!40052)

(declare-fun Unit!40054 () Unit!40052)

(assert (=> b!1210672 (= e!687598 Unit!40054)))

(declare-fun lt!549717 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1210672 (= lt!549717 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!119264 () Bool)

(assert (=> b!1210672 (= c!119264 (and (not lt!549717) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!549718 () Unit!40052)

(declare-fun e!687595 () Unit!40052)

(assert (=> b!1210672 (= lt!549718 e!687595)))

(declare-datatypes ((V!46097 0))(
  ( (V!46098 (val!15420 Int)) )
))
(declare-fun zeroValue!944 () V!46097)

(declare-datatypes ((array!78210 0))(
  ( (array!78211 (arr!37738 (Array (_ BitVec 32) (_ BitVec 64))) (size!38275 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78210)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14654 0))(
  ( (ValueCellFull!14654 (v!18072 V!46097)) (EmptyCell!14654) )
))
(declare-datatypes ((array!78212 0))(
  ( (array!78213 (arr!37739 (Array (_ BitVec 32) ValueCell!14654)) (size!38276 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78212)

(declare-fun minValue!944 () V!46097)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!549703 () Unit!40052)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!601 (array!78210 array!78212 (_ BitVec 32) (_ BitVec 32) V!46097 V!46097 (_ BitVec 64) (_ BitVec 32) Int) Unit!40052)

(assert (=> b!1210672 (= lt!549703 (lemmaListMapContainsThenArrayContainsFrom!601 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119263 () Bool)

(assert (=> b!1210672 (= c!119263 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!804504 () Bool)

(declare-fun e!687602 () Bool)

(assert (=> b!1210672 (= res!804504 e!687602)))

(declare-fun e!687600 () Bool)

(assert (=> b!1210672 (=> (not res!804504) (not e!687600))))

(assert (=> b!1210672 e!687600))

(declare-fun lt!549714 () Unit!40052)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78210 (_ BitVec 32) (_ BitVec 32)) Unit!40052)

(assert (=> b!1210672 (= lt!549714 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26757 0))(
  ( (Nil!26754) (Cons!26753 (h!27962 (_ BitVec 64)) (t!39767 List!26757)) )
))
(declare-fun arrayNoDuplicates!0 (array!78210 (_ BitVec 32) List!26757) Bool)

(assert (=> b!1210672 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26754)))

(declare-fun lt!549711 () Unit!40052)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78210 (_ BitVec 64) (_ BitVec 32) List!26757) Unit!40052)

(assert (=> b!1210672 (= lt!549711 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26754))))

(assert (=> b!1210672 false))

(declare-fun b!1210673 () Bool)

(declare-fun e!687603 () Bool)

(declare-fun tp_is_empty!30727 () Bool)

(assert (=> b!1210673 (= e!687603 tp_is_empty!30727)))

(declare-fun b!1210674 () Bool)

(declare-fun res!804500 () Bool)

(declare-fun e!687596 () Bool)

(assert (=> b!1210674 (=> (not res!804500) (not e!687596))))

(declare-fun lt!549709 () array!78210)

(assert (=> b!1210674 (= res!804500 (arrayNoDuplicates!0 lt!549709 #b00000000000000000000000000000000 Nil!26754))))

(declare-fun bm!59712 () Bool)

(declare-fun call!59715 () Bool)

(declare-fun call!59718 () Bool)

(assert (=> bm!59712 (= call!59715 call!59718)))

(declare-fun b!1210675 () Bool)

(declare-fun e!687605 () Bool)

(declare-fun e!687609 () Bool)

(assert (=> b!1210675 (= e!687605 e!687609)))

(declare-fun res!804508 () Bool)

(assert (=> b!1210675 (=> res!804508 e!687609)))

(assert (=> b!1210675 (= res!804508 (not (= (select (arr!37738 _keys!1208) from!1455) k!934)))))

(declare-fun e!687601 () Bool)

(assert (=> b!1210675 e!687601))

(declare-fun c!119268 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1210675 (= c!119268 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!549720 () Unit!40052)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1081 (array!78210 array!78212 (_ BitVec 32) (_ BitVec 32) V!46097 V!46097 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40052)

(assert (=> b!1210675 (= lt!549720 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1081 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1210676 () Bool)

(declare-fun Unit!40055 () Unit!40052)

(assert (=> b!1210676 (= e!687598 Unit!40055)))

(declare-fun b!1210677 () Bool)

(declare-datatypes ((tuple2!19938 0))(
  ( (tuple2!19939 (_1!9979 (_ BitVec 64)) (_2!9979 V!46097)) )
))
(declare-datatypes ((List!26758 0))(
  ( (Nil!26755) (Cons!26754 (h!27963 tuple2!19938) (t!39768 List!26758)) )
))
(declare-datatypes ((ListLongMap!17919 0))(
  ( (ListLongMap!17920 (toList!8975 List!26758)) )
))
(declare-fun call!59720 () ListLongMap!17919)

(declare-fun call!59717 () ListLongMap!17919)

(declare-fun -!1873 (ListLongMap!17919 (_ BitVec 64)) ListLongMap!17919)

(assert (=> b!1210677 (= e!687601 (= call!59720 (-!1873 call!59717 k!934)))))

(declare-fun mapIsEmpty!47959 () Bool)

(declare-fun mapRes!47959 () Bool)

(assert (=> mapIsEmpty!47959 mapRes!47959))

(declare-fun lt!549715 () ListLongMap!17919)

(declare-fun call!59722 () ListLongMap!17919)

(declare-fun bm!59713 () Bool)

(declare-fun lt!549721 () ListLongMap!17919)

(declare-fun c!119265 () Bool)

(declare-fun +!4002 (ListLongMap!17919 tuple2!19938) ListLongMap!17919)

(assert (=> bm!59713 (= call!59722 (+!4002 (ite c!119264 lt!549715 lt!549721) (ite c!119264 (tuple2!19939 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!119265 (tuple2!19939 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19939 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1210678 () Bool)

(declare-fun e!687608 () Bool)

(assert (=> b!1210678 (= e!687608 tp_is_empty!30727)))

(declare-fun lt!549723 () ListLongMap!17919)

(declare-fun b!1210679 () Bool)

(assert (=> b!1210679 (= e!687609 (= (-!1873 lt!549723 k!934) lt!549721))))

(declare-fun lt!549719 () V!46097)

(assert (=> b!1210679 (= (-!1873 (+!4002 lt!549721 (tuple2!19939 (select (arr!37738 _keys!1208) from!1455) lt!549719)) (select (arr!37738 _keys!1208) from!1455)) lt!549721)))

(declare-fun lt!549708 () Unit!40052)

(declare-fun addThenRemoveForNewKeyIsSame!275 (ListLongMap!17919 (_ BitVec 64) V!46097) Unit!40052)

(assert (=> b!1210679 (= lt!549708 (addThenRemoveForNewKeyIsSame!275 lt!549721 (select (arr!37738 _keys!1208) from!1455) lt!549719))))

(declare-fun lt!549712 () V!46097)

(declare-fun get!19271 (ValueCell!14654 V!46097) V!46097)

(assert (=> b!1210679 (= lt!549719 (get!19271 (select (arr!37739 _values!996) from!1455) lt!549712))))

(declare-fun lt!549710 () Unit!40052)

(assert (=> b!1210679 (= lt!549710 e!687598)))

(declare-fun c!119266 () Bool)

(declare-fun contains!6988 (ListLongMap!17919 (_ BitVec 64)) Bool)

(assert (=> b!1210679 (= c!119266 (contains!6988 lt!549721 k!934))))

(declare-fun getCurrentListMapNoExtraKeys!5380 (array!78210 array!78212 (_ BitVec 32) (_ BitVec 32) V!46097 V!46097 (_ BitVec 32) Int) ListLongMap!17919)

(assert (=> b!1210679 (= lt!549721 (getCurrentListMapNoExtraKeys!5380 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1210680 () Bool)

(declare-fun e!687610 () Bool)

(assert (=> b!1210680 (= e!687610 (and e!687603 mapRes!47959))))

(declare-fun condMapEmpty!47959 () Bool)

(declare-fun mapDefault!47959 () ValueCell!14654)

