; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101126 () Bool)

(assert start!101126)

(declare-fun b_free!26051 () Bool)

(declare-fun b_next!26051 () Bool)

(assert (=> start!101126 (= b_free!26051 (not b_next!26051))))

(declare-fun tp!91172 () Bool)

(declare-fun b_and!43211 () Bool)

(assert (=> start!101126 (= tp!91172 b_and!43211)))

(declare-fun bm!60069 () Bool)

(declare-datatypes ((Unit!40114 0))(
  ( (Unit!40115) )
))
(declare-fun call!60072 () Unit!40114)

(declare-fun call!60078 () Unit!40114)

(assert (=> bm!60069 (= call!60072 call!60078)))

(declare-fun res!805196 () Bool)

(declare-fun e!688424 () Bool)

(assert (=> start!101126 (=> (not res!805196) (not e!688424))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78268 0))(
  ( (array!78269 (arr!37766 (Array (_ BitVec 32) (_ BitVec 64))) (size!38303 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78268)

(assert (=> start!101126 (= res!805196 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38303 _keys!1208))))))

(assert (=> start!101126 e!688424))

(declare-fun tp_is_empty!30755 () Bool)

(assert (=> start!101126 tp_is_empty!30755))

(declare-fun array_inv!28664 (array!78268) Bool)

(assert (=> start!101126 (array_inv!28664 _keys!1208)))

(assert (=> start!101126 true))

(assert (=> start!101126 tp!91172))

(declare-datatypes ((V!46133 0))(
  ( (V!46134 (val!15434 Int)) )
))
(declare-datatypes ((ValueCell!14668 0))(
  ( (ValueCellFull!14668 (v!18087 V!46133)) (EmptyCell!14668) )
))
(declare-datatypes ((array!78270 0))(
  ( (array!78271 (arr!37767 (Array (_ BitVec 32) ValueCell!14668)) (size!38304 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78270)

(declare-fun e!688416 () Bool)

(declare-fun array_inv!28665 (array!78270) Bool)

(assert (=> start!101126 (and (array_inv!28665 _values!996) e!688416)))

(declare-fun b!1212120 () Bool)

(declare-fun e!688419 () Bool)

(assert (=> b!1212120 (= e!688419 true)))

(declare-fun e!688414 () Bool)

(assert (=> b!1212120 e!688414))

(declare-fun res!805188 () Bool)

(assert (=> b!1212120 (=> (not res!805188) (not e!688414))))

(declare-datatypes ((tuple2!19964 0))(
  ( (tuple2!19965 (_1!9992 (_ BitVec 64)) (_2!9992 V!46133)) )
))
(declare-datatypes ((List!26784 0))(
  ( (Nil!26781) (Cons!26780 (h!27989 tuple2!19964) (t!39822 List!26784)) )
))
(declare-datatypes ((ListLongMap!17945 0))(
  ( (ListLongMap!17946 (toList!8988 List!26784)) )
))
(declare-fun lt!550739 () ListLongMap!17945)

(declare-fun lt!550727 () ListLongMap!17945)

(assert (=> b!1212120 (= res!805188 (= lt!550739 lt!550727))))

(declare-fun lt!550741 () ListLongMap!17945)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1884 (ListLongMap!17945 (_ BitVec 64)) ListLongMap!17945)

(assert (=> b!1212120 (= lt!550739 (-!1884 lt!550741 k!934))))

(declare-fun lt!550737 () V!46133)

(declare-fun +!4015 (ListLongMap!17945 tuple2!19964) ListLongMap!17945)

(assert (=> b!1212120 (= (-!1884 (+!4015 lt!550727 (tuple2!19965 (select (arr!37766 _keys!1208) from!1455) lt!550737)) (select (arr!37766 _keys!1208) from!1455)) lt!550727)))

(declare-fun lt!550733 () Unit!40114)

(declare-fun addThenRemoveForNewKeyIsSame!285 (ListLongMap!17945 (_ BitVec 64) V!46133) Unit!40114)

(assert (=> b!1212120 (= lt!550733 (addThenRemoveForNewKeyIsSame!285 lt!550727 (select (arr!37766 _keys!1208) from!1455) lt!550737))))

(declare-fun lt!550734 () V!46133)

(declare-fun get!19291 (ValueCell!14668 V!46133) V!46133)

(assert (=> b!1212120 (= lt!550737 (get!19291 (select (arr!37767 _values!996) from!1455) lt!550734))))

(declare-fun lt!550732 () Unit!40114)

(declare-fun e!688413 () Unit!40114)

(assert (=> b!1212120 (= lt!550732 e!688413)))

(declare-fun c!119567 () Bool)

(declare-fun contains!7003 (ListLongMap!17945 (_ BitVec 64)) Bool)

(assert (=> b!1212120 (= c!119567 (contains!7003 lt!550727 k!934))))

(declare-fun zeroValue!944 () V!46133)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46133)

(declare-fun getCurrentListMapNoExtraKeys!5393 (array!78268 array!78270 (_ BitVec 32) (_ BitVec 32) V!46133 V!46133 (_ BitVec 32) Int) ListLongMap!17945)

(assert (=> b!1212120 (= lt!550727 (getCurrentListMapNoExtraKeys!5393 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1212121 () Bool)

(declare-fun res!805184 () Bool)

(assert (=> b!1212121 (=> (not res!805184) (not e!688424))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1212121 (= res!805184 (validMask!0 mask!1564))))

(declare-fun b!1212122 () Bool)

(declare-fun res!805193 () Bool)

(assert (=> b!1212122 (=> (not res!805193) (not e!688424))))

(declare-datatypes ((List!26785 0))(
  ( (Nil!26782) (Cons!26781 (h!27990 (_ BitVec 64)) (t!39823 List!26785)) )
))
(declare-fun arrayNoDuplicates!0 (array!78268 (_ BitVec 32) List!26785) Bool)

(assert (=> b!1212122 (= res!805193 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26782))))

(declare-fun b!1212123 () Bool)

(declare-fun e!688415 () Bool)

(assert (=> b!1212123 (= e!688424 e!688415)))

(declare-fun res!805197 () Bool)

(assert (=> b!1212123 (=> (not res!805197) (not e!688415))))

(declare-fun lt!550726 () array!78268)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78268 (_ BitVec 32)) Bool)

(assert (=> b!1212123 (= res!805197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!550726 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1212123 (= lt!550726 (array!78269 (store (arr!37766 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38303 _keys!1208)))))

(declare-fun b!1212124 () Bool)

(declare-fun call!60079 () Bool)

(assert (=> b!1212124 call!60079))

(declare-fun lt!550736 () Unit!40114)

(assert (=> b!1212124 (= lt!550736 call!60072)))

(declare-fun e!688411 () Unit!40114)

(assert (=> b!1212124 (= e!688411 lt!550736)))

(declare-fun b!1212125 () Bool)

(declare-fun call!60076 () ListLongMap!17945)

(declare-fun call!60077 () ListLongMap!17945)

(declare-fun e!688418 () Bool)

(assert (=> b!1212125 (= e!688418 (= call!60077 (-!1884 call!60076 k!934)))))

(declare-fun bm!60070 () Bool)

(declare-fun call!60074 () ListLongMap!17945)

(declare-fun c!119563 () Bool)

(declare-fun lt!550744 () ListLongMap!17945)

(declare-fun c!119565 () Bool)

(assert (=> bm!60070 (= call!60074 (+!4015 (ite c!119565 lt!550744 lt!550727) (ite c!119565 (tuple2!19965 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!119563 (tuple2!19965 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19965 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun mapIsEmpty!48004 () Bool)

(declare-fun mapRes!48004 () Bool)

(assert (=> mapIsEmpty!48004 mapRes!48004))

(declare-fun b!1212126 () Bool)

(declare-fun e!688409 () Bool)

(assert (=> b!1212126 (= e!688415 (not e!688409))))

(declare-fun res!805192 () Bool)

(assert (=> b!1212126 (=> res!805192 e!688409)))

(assert (=> b!1212126 (= res!805192 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78268 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1212126 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!550738 () Unit!40114)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78268 (_ BitVec 64) (_ BitVec 32)) Unit!40114)

(assert (=> b!1212126 (= lt!550738 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1212127 () Bool)

(declare-fun e!688422 () Unit!40114)

(declare-fun lt!550742 () Unit!40114)

(assert (=> b!1212127 (= e!688422 lt!550742)))

(assert (=> b!1212127 (= lt!550742 call!60072)))

(assert (=> b!1212127 call!60079))

(declare-fun b!1212128 () Bool)

(declare-fun res!805191 () Bool)

(assert (=> b!1212128 (=> (not res!805191) (not e!688415))))

(assert (=> b!1212128 (= res!805191 (arrayNoDuplicates!0 lt!550726 #b00000000000000000000000000000000 Nil!26782))))

(declare-fun b!1212129 () Bool)

(declare-fun e!688420 () Bool)

(assert (=> b!1212129 (= e!688420 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!550724 () array!78270)

(declare-fun bm!60071 () Bool)

(assert (=> bm!60071 (= call!60077 (getCurrentListMapNoExtraKeys!5393 lt!550726 lt!550724 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1212130 () Bool)

(assert (=> b!1212130 (contains!7003 call!60074 k!934)))

(declare-fun lt!550731 () Unit!40114)

(assert (=> b!1212130 (= lt!550731 call!60078)))

(declare-fun call!60075 () Bool)

(assert (=> b!1212130 call!60075))

(assert (=> b!1212130 (= lt!550744 (+!4015 lt!550727 (tuple2!19965 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!550729 () Unit!40114)

(declare-fun addStillContains!1075 (ListLongMap!17945 (_ BitVec 64) V!46133 (_ BitVec 64)) Unit!40114)

(assert (=> b!1212130 (= lt!550729 (addStillContains!1075 lt!550727 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!688417 () Unit!40114)

(assert (=> b!1212130 (= e!688417 lt!550731)))

(declare-fun mapNonEmpty!48004 () Bool)

(declare-fun tp!91173 () Bool)

(declare-fun e!688412 () Bool)

(assert (=> mapNonEmpty!48004 (= mapRes!48004 (and tp!91173 e!688412))))

(declare-fun mapValue!48004 () ValueCell!14668)

(declare-fun mapRest!48004 () (Array (_ BitVec 32) ValueCell!14668))

(declare-fun mapKey!48004 () (_ BitVec 32))

(assert (=> mapNonEmpty!48004 (= (arr!37767 _values!996) (store mapRest!48004 mapKey!48004 mapValue!48004))))

(declare-fun b!1212131 () Bool)

(declare-fun lt!550735 () Bool)

(assert (=> b!1212131 (= c!119563 (and (not lt!550735) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1212131 (= e!688417 e!688422)))

(declare-fun bm!60072 () Bool)

(declare-fun call!60073 () ListLongMap!17945)

(assert (=> bm!60072 (= call!60073 call!60074)))

(declare-fun b!1212132 () Bool)

(declare-fun res!805195 () Bool)

(assert (=> b!1212132 (=> (not res!805195) (not e!688424))))

(assert (=> b!1212132 (= res!805195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1212133 () Bool)

(declare-fun e!688410 () Bool)

(assert (=> b!1212133 (= e!688416 (and e!688410 mapRes!48004))))

(declare-fun condMapEmpty!48004 () Bool)

(declare-fun mapDefault!48004 () ValueCell!14668)

