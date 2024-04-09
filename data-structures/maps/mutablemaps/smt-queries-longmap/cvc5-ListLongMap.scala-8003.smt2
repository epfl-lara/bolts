; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98894 () Bool)

(assert start!98894)

(declare-fun b_free!24463 () Bool)

(declare-fun b_next!24463 () Bool)

(assert (=> start!98894 (= b_free!24463 (not b_next!24463))))

(declare-fun tp!86101 () Bool)

(declare-fun b_and!39789 () Bool)

(assert (=> start!98894 (= tp!86101 b_and!39789)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun e!657607 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!518965 () Bool)

(declare-fun b!1156246 () Bool)

(assert (=> b!1156246 (= e!657607 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!518965) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1156247 () Bool)

(declare-fun e!657603 () Bool)

(declare-fun e!657600 () Bool)

(assert (=> b!1156247 (= e!657603 e!657600)))

(declare-fun res!768131 () Bool)

(assert (=> b!1156247 (=> (not res!768131) (not e!657600))))

(declare-datatypes ((array!74780 0))(
  ( (array!74781 (arr!36037 (Array (_ BitVec 32) (_ BitVec 64))) (size!36574 (_ BitVec 32))) )
))
(declare-fun lt!518960 () array!74780)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74780 (_ BitVec 32)) Bool)

(assert (=> b!1156247 (= res!768131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!518960 mask!1564))))

(declare-fun _keys!1208 () array!74780)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1156247 (= lt!518960 (array!74781 (store (arr!36037 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36574 _keys!1208)))))

(declare-fun b!1156248 () Bool)

(declare-fun res!768129 () Bool)

(assert (=> b!1156248 (=> (not res!768129) (not e!657603))))

(assert (=> b!1156248 (= res!768129 (= (select (arr!36037 _keys!1208) i!673) k!934))))

(declare-fun b!1156249 () Bool)

(declare-datatypes ((V!43785 0))(
  ( (V!43786 (val!14553 Int)) )
))
(declare-datatypes ((tuple2!18580 0))(
  ( (tuple2!18581 (_1!9300 (_ BitVec 64)) (_2!9300 V!43785)) )
))
(declare-datatypes ((List!25363 0))(
  ( (Nil!25360) (Cons!25359 (h!26568 tuple2!18580) (t!36825 List!25363)) )
))
(declare-datatypes ((ListLongMap!16561 0))(
  ( (ListLongMap!16562 (toList!8296 List!25363)) )
))
(declare-fun lt!518962 () ListLongMap!16561)

(declare-fun minValue!944 () V!43785)

(declare-fun contains!6783 (ListLongMap!16561 (_ BitVec 64)) Bool)

(declare-fun +!3627 (ListLongMap!16561 tuple2!18580) ListLongMap!16561)

(assert (=> b!1156249 (contains!6783 (+!3627 lt!518962 (tuple2!18581 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-datatypes ((Unit!37978 0))(
  ( (Unit!37979) )
))
(declare-fun lt!518970 () Unit!37978)

(declare-fun call!55100 () Unit!37978)

(assert (=> b!1156249 (= lt!518970 call!55100)))

(declare-fun call!55098 () Bool)

(assert (=> b!1156249 call!55098))

(declare-fun call!55099 () ListLongMap!16561)

(assert (=> b!1156249 (= lt!518962 call!55099)))

(declare-fun zeroValue!944 () V!43785)

(declare-fun lt!518969 () Unit!37978)

(declare-fun lt!518974 () ListLongMap!16561)

(declare-fun addStillContains!924 (ListLongMap!16561 (_ BitVec 64) V!43785 (_ BitVec 64)) Unit!37978)

(assert (=> b!1156249 (= lt!518969 (addStillContains!924 lt!518974 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!657598 () Unit!37978)

(assert (=> b!1156249 (= e!657598 lt!518970)))

(declare-fun res!768132 () Bool)

(assert (=> start!98894 (=> (not res!768132) (not e!657603))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!98894 (= res!768132 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36574 _keys!1208))))))

(assert (=> start!98894 e!657603))

(declare-fun tp_is_empty!28993 () Bool)

(assert (=> start!98894 tp_is_empty!28993))

(declare-fun array_inv!27452 (array!74780) Bool)

(assert (=> start!98894 (array_inv!27452 _keys!1208)))

(assert (=> start!98894 true))

(assert (=> start!98894 tp!86101))

(declare-datatypes ((ValueCell!13787 0))(
  ( (ValueCellFull!13787 (v!17191 V!43785)) (EmptyCell!13787) )
))
(declare-datatypes ((array!74782 0))(
  ( (array!74783 (arr!36038 (Array (_ BitVec 32) ValueCell!13787)) (size!36575 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74782)

(declare-fun e!657606 () Bool)

(declare-fun array_inv!27453 (array!74782) Bool)

(assert (=> start!98894 (and (array_inv!27453 _values!996) e!657606)))

(declare-fun b!1156250 () Bool)

(declare-fun res!768142 () Bool)

(assert (=> b!1156250 (=> (not res!768142) (not e!657603))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1156250 (= res!768142 (validKeyInArray!0 k!934))))

(declare-fun b!1156251 () Bool)

(declare-fun call!55097 () Bool)

(assert (=> b!1156251 call!55097))

(declare-fun lt!518973 () Unit!37978)

(declare-fun call!55104 () Unit!37978)

(assert (=> b!1156251 (= lt!518973 call!55104)))

(declare-fun e!657605 () Unit!37978)

(assert (=> b!1156251 (= e!657605 lt!518973)))

(declare-fun b!1156252 () Bool)

(declare-fun e!657601 () Bool)

(assert (=> b!1156252 (= e!657601 true)))

(declare-fun e!657596 () Bool)

(assert (=> b!1156252 e!657596))

(declare-fun res!768133 () Bool)

(assert (=> b!1156252 (=> (not res!768133) (not e!657596))))

(declare-fun lt!518961 () ListLongMap!16561)

(assert (=> b!1156252 (= res!768133 (= lt!518961 lt!518974))))

(declare-fun lt!518968 () ListLongMap!16561)

(declare-fun -!1373 (ListLongMap!16561 (_ BitVec 64)) ListLongMap!16561)

(assert (=> b!1156252 (= lt!518961 (-!1373 lt!518968 k!934))))

(declare-fun lt!518976 () V!43785)

(assert (=> b!1156252 (= (-!1373 (+!3627 lt!518974 (tuple2!18581 (select (arr!36037 _keys!1208) from!1455) lt!518976)) (select (arr!36037 _keys!1208) from!1455)) lt!518974)))

(declare-fun lt!518978 () Unit!37978)

(declare-fun addThenRemoveForNewKeyIsSame!215 (ListLongMap!16561 (_ BitVec 64) V!43785) Unit!37978)

(assert (=> b!1156252 (= lt!518978 (addThenRemoveForNewKeyIsSame!215 lt!518974 (select (arr!36037 _keys!1208) from!1455) lt!518976))))

(declare-fun lt!518979 () V!43785)

(declare-fun get!18391 (ValueCell!13787 V!43785) V!43785)

(assert (=> b!1156252 (= lt!518976 (get!18391 (select (arr!36038 _values!996) from!1455) lt!518979))))

(declare-fun lt!518977 () Unit!37978)

(declare-fun e!657597 () Unit!37978)

(assert (=> b!1156252 (= lt!518977 e!657597)))

(declare-fun c!114976 () Bool)

(assert (=> b!1156252 (= c!114976 (contains!6783 lt!518974 k!934))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4734 (array!74780 array!74782 (_ BitVec 32) (_ BitVec 32) V!43785 V!43785 (_ BitVec 32) Int) ListLongMap!16561)

(assert (=> b!1156252 (= lt!518974 (getCurrentListMapNoExtraKeys!4734 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1156253 () Bool)

(declare-fun e!657594 () Unit!37978)

(assert (=> b!1156253 (= e!657594 e!657605)))

(declare-fun c!114974 () Bool)

(assert (=> b!1156253 (= c!114974 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!518965))))

(declare-fun b!1156254 () Bool)

(declare-fun res!768130 () Bool)

(assert (=> b!1156254 (=> (not res!768130) (not e!657603))))

(assert (=> b!1156254 (= res!768130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!45314 () Bool)

(declare-fun mapRes!45314 () Bool)

(declare-fun tp!86100 () Bool)

(declare-fun e!657595 () Bool)

(assert (=> mapNonEmpty!45314 (= mapRes!45314 (and tp!86100 e!657595))))

(declare-fun mapValue!45314 () ValueCell!13787)

(declare-fun mapRest!45314 () (Array (_ BitVec 32) ValueCell!13787))

(declare-fun mapKey!45314 () (_ BitVec 32))

(assert (=> mapNonEmpty!45314 (= (arr!36038 _values!996) (store mapRest!45314 mapKey!45314 mapValue!45314))))

(declare-fun b!1156255 () Bool)

(declare-fun res!768138 () Bool)

(assert (=> b!1156255 (=> (not res!768138) (not e!657603))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1156255 (= res!768138 (validMask!0 mask!1564))))

(declare-fun b!1156256 () Bool)

(declare-fun e!657608 () Bool)

(assert (=> b!1156256 (= e!657608 tp_is_empty!28993)))

(declare-fun bm!55094 () Bool)

(assert (=> bm!55094 (= call!55097 call!55098)))

(declare-fun b!1156257 () Bool)

(declare-fun e!657602 () Bool)

(assert (=> b!1156257 (= e!657600 (not e!657602))))

(declare-fun res!768139 () Bool)

(assert (=> b!1156257 (=> res!768139 e!657602)))

(assert (=> b!1156257 (= res!768139 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74780 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1156257 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!518972 () Unit!37978)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74780 (_ BitVec 64) (_ BitVec 32)) Unit!37978)

(assert (=> b!1156257 (= lt!518972 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!55095 () Bool)

(declare-fun c!114973 () Bool)

(declare-fun c!114978 () Bool)

(assert (=> bm!55095 (= call!55100 (addStillContains!924 (ite c!114978 lt!518962 lt!518974) (ite c!114978 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114973 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114978 minValue!944 (ite c!114973 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1156258 () Bool)

(assert (=> b!1156258 (= e!657607 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1156259 () Bool)

(declare-fun res!768143 () Bool)

(assert (=> b!1156259 (=> (not res!768143) (not e!657603))))

(assert (=> b!1156259 (= res!768143 (and (= (size!36575 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36574 _keys!1208) (size!36575 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!55096 () Bool)

(declare-fun call!55101 () ListLongMap!16561)

(assert (=> bm!55096 (= call!55101 call!55099)))

(declare-fun b!1156260 () Bool)

(assert (=> b!1156260 (= e!657595 tp_is_empty!28993)))

(declare-fun b!1156261 () Bool)

(assert (=> b!1156261 (= e!657606 (and e!657608 mapRes!45314))))

(declare-fun condMapEmpty!45314 () Bool)

(declare-fun mapDefault!45314 () ValueCell!13787)

