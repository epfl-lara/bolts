; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98798 () Bool)

(assert start!98798)

(declare-fun b_free!24367 () Bool)

(declare-fun b_next!24367 () Bool)

(assert (=> start!98798 (= b_free!24367 (not b_next!24367))))

(declare-fun tp!85812 () Bool)

(declare-fun b_and!39597 () Bool)

(assert (=> start!98798 (= tp!85812 b_and!39597)))

(declare-fun b!1151830 () Bool)

(declare-fun e!655152 () Bool)

(declare-fun e!655156 () Bool)

(assert (=> b!1151830 (= e!655152 e!655156)))

(declare-fun res!765979 () Bool)

(assert (=> b!1151830 (=> (not res!765979) (not e!655156))))

(declare-datatypes ((array!74596 0))(
  ( (array!74597 (arr!35945 (Array (_ BitVec 32) (_ BitVec 64))) (size!36482 (_ BitVec 32))) )
))
(declare-fun lt!515803 () array!74596)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74596 (_ BitVec 32)) Bool)

(assert (=> b!1151830 (= res!765979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!515803 mask!1564))))

(declare-fun _keys!1208 () array!74596)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1151830 (= lt!515803 (array!74597 (store (arr!35945 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36482 _keys!1208)))))

(declare-fun b!1151831 () Bool)

(declare-fun c!114111 () Bool)

(declare-fun lt!515795 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1151831 (= c!114111 (and (not lt!515795) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!37808 0))(
  ( (Unit!37809) )
))
(declare-fun e!655161 () Unit!37808)

(declare-fun e!655157 () Unit!37808)

(assert (=> b!1151831 (= e!655161 e!655157)))

(declare-fun e!655151 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1151832 () Bool)

(assert (=> b!1151832 (= e!655151 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!515795) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1151833 () Bool)

(declare-fun e!655149 () Unit!37808)

(assert (=> b!1151833 (= e!655157 e!655149)))

(declare-fun c!114112 () Bool)

(assert (=> b!1151833 (= c!114112 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!515795))))

(declare-fun b!1151834 () Bool)

(declare-fun res!765978 () Bool)

(assert (=> b!1151834 (=> (not res!765978) (not e!655152))))

(assert (=> b!1151834 (= res!765978 (= (select (arr!35945 _keys!1208) i!673) k!934))))

(declare-fun b!1151835 () Bool)

(declare-fun call!53948 () Bool)

(assert (=> b!1151835 call!53948))

(declare-fun lt!515790 () Unit!37808)

(declare-fun call!53946 () Unit!37808)

(assert (=> b!1151835 (= lt!515790 call!53946)))

(assert (=> b!1151835 (= e!655149 lt!515790)))

(declare-fun b!1151836 () Bool)

(declare-fun res!765969 () Bool)

(assert (=> b!1151836 (=> (not res!765969) (not e!655152))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1151836 (= res!765969 (validKeyInArray!0 k!934))))

(declare-fun b!1151837 () Bool)

(declare-fun e!655145 () Unit!37808)

(declare-fun Unit!37810 () Unit!37808)

(assert (=> b!1151837 (= e!655145 Unit!37810)))

(declare-fun res!765970 () Bool)

(assert (=> start!98798 (=> (not res!765970) (not e!655152))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!98798 (= res!765970 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36482 _keys!1208))))))

(assert (=> start!98798 e!655152))

(declare-fun tp_is_empty!28897 () Bool)

(assert (=> start!98798 tp_is_empty!28897))

(declare-fun array_inv!27400 (array!74596) Bool)

(assert (=> start!98798 (array_inv!27400 _keys!1208)))

(assert (=> start!98798 true))

(assert (=> start!98798 tp!85812))

(declare-datatypes ((V!43657 0))(
  ( (V!43658 (val!14505 Int)) )
))
(declare-datatypes ((ValueCell!13739 0))(
  ( (ValueCellFull!13739 (v!17143 V!43657)) (EmptyCell!13739) )
))
(declare-datatypes ((array!74598 0))(
  ( (array!74599 (arr!35946 (Array (_ BitVec 32) ValueCell!13739)) (size!36483 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74598)

(declare-fun e!655148 () Bool)

(declare-fun array_inv!27401 (array!74598) Bool)

(assert (=> start!98798 (and (array_inv!27401 _values!996) e!655148)))

(declare-fun b!1151838 () Bool)

(declare-fun e!655159 () Bool)

(assert (=> b!1151838 (= e!655159 true)))

(declare-fun e!655153 () Bool)

(assert (=> b!1151838 e!655153))

(declare-fun res!765976 () Bool)

(assert (=> b!1151838 (=> (not res!765976) (not e!655153))))

(declare-datatypes ((tuple2!18496 0))(
  ( (tuple2!18497 (_1!9258 (_ BitVec 64)) (_2!9258 V!43657)) )
))
(declare-datatypes ((List!25286 0))(
  ( (Nil!25283) (Cons!25282 (h!26491 tuple2!18496) (t!36652 List!25286)) )
))
(declare-datatypes ((ListLongMap!16477 0))(
  ( (ListLongMap!16478 (toList!8254 List!25286)) )
))
(declare-fun lt!515792 () ListLongMap!16477)

(declare-fun lt!515805 () ListLongMap!16477)

(assert (=> b!1151838 (= res!765976 (= lt!515792 lt!515805))))

(declare-fun lt!515791 () ListLongMap!16477)

(declare-fun -!1339 (ListLongMap!16477 (_ BitVec 64)) ListLongMap!16477)

(assert (=> b!1151838 (= lt!515792 (-!1339 lt!515791 k!934))))

(declare-fun lt!515793 () V!43657)

(declare-fun +!3589 (ListLongMap!16477 tuple2!18496) ListLongMap!16477)

(assert (=> b!1151838 (= (-!1339 (+!3589 lt!515805 (tuple2!18497 (select (arr!35945 _keys!1208) from!1455) lt!515793)) (select (arr!35945 _keys!1208) from!1455)) lt!515805)))

(declare-fun lt!515802 () Unit!37808)

(declare-fun addThenRemoveForNewKeyIsSame!186 (ListLongMap!16477 (_ BitVec 64) V!43657) Unit!37808)

(assert (=> b!1151838 (= lt!515802 (addThenRemoveForNewKeyIsSame!186 lt!515805 (select (arr!35945 _keys!1208) from!1455) lt!515793))))

(declare-fun lt!515796 () V!43657)

(declare-fun get!18330 (ValueCell!13739 V!43657) V!43657)

(assert (=> b!1151838 (= lt!515793 (get!18330 (select (arr!35946 _values!996) from!1455) lt!515796))))

(declare-fun lt!515811 () Unit!37808)

(assert (=> b!1151838 (= lt!515811 e!655145)))

(declare-fun c!114109 () Bool)

(declare-fun contains!6747 (ListLongMap!16477 (_ BitVec 64)) Bool)

(assert (=> b!1151838 (= c!114109 (contains!6747 lt!515805 k!934))))

(declare-fun zeroValue!944 () V!43657)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43657)

(declare-fun getCurrentListMapNoExtraKeys!4694 (array!74596 array!74598 (_ BitVec 32) (_ BitVec 32) V!43657 V!43657 (_ BitVec 32) Int) ListLongMap!16477)

(assert (=> b!1151838 (= lt!515805 (getCurrentListMapNoExtraKeys!4694 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!53942 () Bool)

(declare-fun lt!515808 () array!74598)

(declare-fun call!53945 () ListLongMap!16477)

(assert (=> bm!53942 (= call!53945 (getCurrentListMapNoExtraKeys!4694 lt!515803 lt!515808 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1151839 () Bool)

(assert (=> b!1151839 (= e!655153 (= lt!515792 (getCurrentListMapNoExtraKeys!4694 lt!515803 lt!515808 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1151840 () Bool)

(declare-fun lt!515806 () Unit!37808)

(assert (=> b!1151840 (= e!655157 lt!515806)))

(assert (=> b!1151840 (= lt!515806 call!53946)))

(assert (=> b!1151840 call!53948))

(declare-fun b!1151841 () Bool)

(declare-fun e!655155 () Bool)

(assert (=> b!1151841 (= e!655156 (not e!655155))))

(declare-fun res!765981 () Bool)

(assert (=> b!1151841 (=> res!765981 e!655155)))

(assert (=> b!1151841 (= res!765981 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74596 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1151841 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!515810 () Unit!37808)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74596 (_ BitVec 64) (_ BitVec 32)) Unit!37808)

(assert (=> b!1151841 (= lt!515810 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!53943 () Bool)

(declare-fun call!53947 () Bool)

(assert (=> bm!53943 (= call!53948 call!53947)))

(declare-fun bm!53944 () Bool)

(declare-fun call!53951 () ListLongMap!16477)

(declare-fun call!53949 () ListLongMap!16477)

(assert (=> bm!53944 (= call!53951 call!53949)))

(declare-fun b!1151842 () Bool)

(declare-fun e!655150 () Bool)

(assert (=> b!1151842 (= e!655150 e!655159)))

(declare-fun res!765971 () Bool)

(assert (=> b!1151842 (=> res!765971 e!655159)))

(assert (=> b!1151842 (= res!765971 (not (= (select (arr!35945 _keys!1208) from!1455) k!934)))))

(declare-fun e!655158 () Bool)

(assert (=> b!1151842 e!655158))

(declare-fun c!114113 () Bool)

(assert (=> b!1151842 (= c!114113 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!515800 () Unit!37808)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!574 (array!74596 array!74598 (_ BitVec 32) (_ BitVec 32) V!43657 V!43657 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37808)

(assert (=> b!1151842 (= lt!515800 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!574 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1151843 () Bool)

(declare-fun res!765975 () Bool)

(assert (=> b!1151843 (=> (not res!765975) (not e!655152))))

(assert (=> b!1151843 (= res!765975 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36482 _keys!1208))))))

(declare-fun b!1151844 () Bool)

(declare-fun res!765973 () Bool)

(assert (=> b!1151844 (=> (not res!765973) (not e!655152))))

(declare-datatypes ((List!25287 0))(
  ( (Nil!25284) (Cons!25283 (h!26492 (_ BitVec 64)) (t!36653 List!25287)) )
))
(declare-fun arrayNoDuplicates!0 (array!74596 (_ BitVec 32) List!25287) Bool)

(assert (=> b!1151844 (= res!765973 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25284))))

(declare-fun c!114114 () Bool)

(declare-fun bm!53945 () Bool)

(assert (=> bm!53945 (= call!53949 (+!3589 lt!515805 (ite (or c!114114 c!114111) (tuple2!18497 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18497 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun lt!515797 () ListLongMap!16477)

(declare-fun bm!53946 () Bool)

(declare-fun call!53950 () Unit!37808)

(declare-fun addStillContains!889 (ListLongMap!16477 (_ BitVec 64) V!43657 (_ BitVec 64)) Unit!37808)

(assert (=> bm!53946 (= call!53950 (addStillContains!889 (ite c!114114 lt!515797 lt!515805) (ite c!114114 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114111 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114114 minValue!944 (ite c!114111 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1151845 () Bool)

(declare-fun Unit!37811 () Unit!37808)

(assert (=> b!1151845 (= e!655149 Unit!37811)))

(declare-fun bm!53947 () Bool)

(assert (=> bm!53947 (= call!53947 (contains!6747 (ite c!114114 lt!515797 call!53951) k!934))))

(declare-fun b!1151846 () Bool)

(assert (=> b!1151846 (= e!655155 e!655150)))

(declare-fun res!765980 () Bool)

(assert (=> b!1151846 (=> res!765980 e!655150)))

(assert (=> b!1151846 (= res!765980 (not (= from!1455 i!673)))))

(declare-fun lt!515798 () ListLongMap!16477)

(assert (=> b!1151846 (= lt!515798 (getCurrentListMapNoExtraKeys!4694 lt!515803 lt!515808 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1151846 (= lt!515808 (array!74599 (store (arr!35946 _values!996) i!673 (ValueCellFull!13739 lt!515796)) (size!36483 _values!996)))))

(declare-fun dynLambda!2720 (Int (_ BitVec 64)) V!43657)

(assert (=> b!1151846 (= lt!515796 (dynLambda!2720 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1151846 (= lt!515791 (getCurrentListMapNoExtraKeys!4694 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1151847 () Bool)

(declare-fun e!655154 () Bool)

(declare-fun mapRes!45170 () Bool)

(assert (=> b!1151847 (= e!655148 (and e!655154 mapRes!45170))))

(declare-fun condMapEmpty!45170 () Bool)

(declare-fun mapDefault!45170 () ValueCell!13739)

