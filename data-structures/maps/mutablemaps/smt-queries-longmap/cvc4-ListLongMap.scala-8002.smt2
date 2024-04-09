; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98892 () Bool)

(assert start!98892)

(declare-fun b_free!24461 () Bool)

(declare-fun b_next!24461 () Bool)

(assert (=> start!98892 (= b_free!24461 (not b_next!24461))))

(declare-fun tp!86095 () Bool)

(declare-fun b_and!39785 () Bool)

(assert (=> start!98892 (= tp!86095 b_and!39785)))

(declare-fun b!1156154 () Bool)

(declare-fun res!768093 () Bool)

(declare-fun e!657557 () Bool)

(assert (=> b!1156154 (=> (not res!768093) (not e!657557))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!43781 0))(
  ( (V!43782 (val!14552 Int)) )
))
(declare-datatypes ((ValueCell!13786 0))(
  ( (ValueCellFull!13786 (v!17190 V!43781)) (EmptyCell!13786) )
))
(declare-datatypes ((array!74776 0))(
  ( (array!74777 (arr!36035 (Array (_ BitVec 32) ValueCell!13786)) (size!36572 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74776)

(declare-datatypes ((array!74778 0))(
  ( (array!74779 (arr!36036 (Array (_ BitVec 32) (_ BitVec 64))) (size!36573 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74778)

(assert (=> b!1156154 (= res!768093 (and (= (size!36572 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36573 _keys!1208) (size!36572 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1156155 () Bool)

(declare-fun res!768095 () Bool)

(assert (=> b!1156155 (=> (not res!768095) (not e!657557))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1156155 (= res!768095 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36573 _keys!1208))))))

(declare-fun b!1156156 () Bool)

(declare-fun e!657550 () Bool)

(assert (=> b!1156156 (= e!657550 true)))

(declare-fun e!657553 () Bool)

(assert (=> b!1156156 e!657553))

(declare-fun res!768090 () Bool)

(assert (=> b!1156156 (=> (not res!768090) (not e!657553))))

(declare-datatypes ((tuple2!18578 0))(
  ( (tuple2!18579 (_1!9299 (_ BitVec 64)) (_2!9299 V!43781)) )
))
(declare-datatypes ((List!25361 0))(
  ( (Nil!25358) (Cons!25357 (h!26566 tuple2!18578) (t!36821 List!25361)) )
))
(declare-datatypes ((ListLongMap!16559 0))(
  ( (ListLongMap!16560 (toList!8295 List!25361)) )
))
(declare-fun lt!518908 () ListLongMap!16559)

(declare-fun lt!518900 () ListLongMap!16559)

(assert (=> b!1156156 (= res!768090 (= lt!518908 lt!518900))))

(declare-fun lt!518893 () ListLongMap!16559)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1372 (ListLongMap!16559 (_ BitVec 64)) ListLongMap!16559)

(assert (=> b!1156156 (= lt!518908 (-!1372 lt!518893 k!934))))

(declare-fun lt!518912 () V!43781)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun +!3626 (ListLongMap!16559 tuple2!18578) ListLongMap!16559)

(assert (=> b!1156156 (= (-!1372 (+!3626 lt!518900 (tuple2!18579 (select (arr!36036 _keys!1208) from!1455) lt!518912)) (select (arr!36036 _keys!1208) from!1455)) lt!518900)))

(declare-datatypes ((Unit!37974 0))(
  ( (Unit!37975) )
))
(declare-fun lt!518895 () Unit!37974)

(declare-fun addThenRemoveForNewKeyIsSame!214 (ListLongMap!16559 (_ BitVec 64) V!43781) Unit!37974)

(assert (=> b!1156156 (= lt!518895 (addThenRemoveForNewKeyIsSame!214 lt!518900 (select (arr!36036 _keys!1208) from!1455) lt!518912))))

(declare-fun lt!518909 () V!43781)

(declare-fun get!18388 (ValueCell!13786 V!43781) V!43781)

(assert (=> b!1156156 (= lt!518912 (get!18388 (select (arr!36035 _values!996) from!1455) lt!518909))))

(declare-fun lt!518898 () Unit!37974)

(declare-fun e!657548 () Unit!37974)

(assert (=> b!1156156 (= lt!518898 e!657548)))

(declare-fun c!114955 () Bool)

(declare-fun contains!6782 (ListLongMap!16559 (_ BitVec 64)) Bool)

(assert (=> b!1156156 (= c!114955 (contains!6782 lt!518900 k!934))))

(declare-fun zeroValue!944 () V!43781)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43781)

(declare-fun getCurrentListMapNoExtraKeys!4733 (array!74778 array!74776 (_ BitVec 32) (_ BitVec 32) V!43781 V!43781 (_ BitVec 32) Int) ListLongMap!16559)

(assert (=> b!1156156 (= lt!518900 (getCurrentListMapNoExtraKeys!4733 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1156157 () Bool)

(declare-fun res!768085 () Bool)

(assert (=> b!1156157 (=> (not res!768085) (not e!657557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1156157 (= res!768085 (validMask!0 mask!1564))))

(declare-fun b!1156158 () Bool)

(declare-fun call!55077 () Bool)

(assert (=> b!1156158 call!55077))

(declare-fun lt!518911 () Unit!37974)

(declare-fun call!55074 () Unit!37974)

(assert (=> b!1156158 (= lt!518911 call!55074)))

(declare-fun e!657554 () Unit!37974)

(assert (=> b!1156158 (= e!657554 lt!518911)))

(declare-fun b!1156159 () Bool)

(declare-fun e!657551 () Bool)

(declare-fun call!55073 () ListLongMap!16559)

(declare-fun call!55079 () ListLongMap!16559)

(assert (=> b!1156159 (= e!657551 (= call!55073 call!55079))))

(declare-fun b!1156160 () Bool)

(declare-fun lt!518896 () ListLongMap!16559)

(assert (=> b!1156160 (contains!6782 (+!3626 lt!518896 (tuple2!18579 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!518907 () Unit!37974)

(declare-fun addStillContains!923 (ListLongMap!16559 (_ BitVec 64) V!43781 (_ BitVec 64)) Unit!37974)

(assert (=> b!1156160 (= lt!518907 (addStillContains!923 lt!518896 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!55075 () Bool)

(assert (=> b!1156160 call!55075))

(declare-fun call!55076 () ListLongMap!16559)

(assert (=> b!1156160 (= lt!518896 call!55076)))

(declare-fun lt!518892 () Unit!37974)

(declare-fun call!55080 () Unit!37974)

(assert (=> b!1156160 (= lt!518892 call!55080)))

(declare-fun e!657545 () Unit!37974)

(assert (=> b!1156160 (= e!657545 lt!518907)))

(declare-fun b!1156161 () Bool)

(declare-fun e!657552 () Bool)

(assert (=> b!1156161 (= e!657557 e!657552)))

(declare-fun res!768098 () Bool)

(assert (=> b!1156161 (=> (not res!768098) (not e!657552))))

(declare-fun lt!518899 () array!74778)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74778 (_ BitVec 32)) Bool)

(assert (=> b!1156161 (= res!768098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!518899 mask!1564))))

(assert (=> b!1156161 (= lt!518899 (array!74779 (store (arr!36036 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36573 _keys!1208)))))

(declare-fun b!1156162 () Bool)

(declare-fun e!657542 () Bool)

(assert (=> b!1156162 (= e!657542 e!657550)))

(declare-fun res!768086 () Bool)

(assert (=> b!1156162 (=> res!768086 e!657550)))

(assert (=> b!1156162 (= res!768086 (not (= (select (arr!36036 _keys!1208) from!1455) k!934)))))

(assert (=> b!1156162 e!657551))

(declare-fun c!114959 () Bool)

(assert (=> b!1156162 (= c!114959 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!518894 () Unit!37974)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!601 (array!74778 array!74776 (_ BitVec 32) (_ BitVec 32) V!43781 V!43781 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37974)

(assert (=> b!1156162 (= lt!518894 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!601 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!657558 () Bool)

(declare-fun lt!518910 () Bool)

(declare-fun b!1156163 () Bool)

(assert (=> b!1156163 (= e!657558 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!518910) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!45311 () Bool)

(declare-fun mapRes!45311 () Bool)

(declare-fun tp!86094 () Bool)

(declare-fun e!657544 () Bool)

(assert (=> mapNonEmpty!45311 (= mapRes!45311 (and tp!86094 e!657544))))

(declare-fun mapKey!45311 () (_ BitVec 32))

(declare-fun mapValue!45311 () ValueCell!13786)

(declare-fun mapRest!45311 () (Array (_ BitVec 32) ValueCell!13786))

(assert (=> mapNonEmpty!45311 (= (arr!36035 _values!996) (store mapRest!45311 mapKey!45311 mapValue!45311))))

(declare-fun bm!55070 () Bool)

(assert (=> bm!55070 (= call!55074 call!55080)))

(declare-fun b!1156164 () Bool)

(declare-fun tp_is_empty!28991 () Bool)

(assert (=> b!1156164 (= e!657544 tp_is_empty!28991)))

(declare-fun b!1156165 () Bool)

(declare-fun res!768088 () Bool)

(assert (=> b!1156165 (=> (not res!768088) (not e!657557))))

(assert (=> b!1156165 (= res!768088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1156166 () Bool)

(declare-fun Unit!37976 () Unit!37974)

(assert (=> b!1156166 (= e!657548 Unit!37976)))

(assert (=> b!1156166 (= lt!518910 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!114956 () Bool)

(assert (=> b!1156166 (= c!114956 (and (not lt!518910) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!518904 () Unit!37974)

(assert (=> b!1156166 (= lt!518904 e!657545)))

(declare-fun lt!518913 () Unit!37974)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!502 (array!74778 array!74776 (_ BitVec 32) (_ BitVec 32) V!43781 V!43781 (_ BitVec 64) (_ BitVec 32) Int) Unit!37974)

(assert (=> b!1156166 (= lt!518913 (lemmaListMapContainsThenArrayContainsFrom!502 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114957 () Bool)

(assert (=> b!1156166 (= c!114957 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!768097 () Bool)

(assert (=> b!1156166 (= res!768097 e!657558)))

(declare-fun e!657555 () Bool)

(assert (=> b!1156166 (=> (not res!768097) (not e!657555))))

(assert (=> b!1156166 e!657555))

(declare-fun lt!518906 () Unit!37974)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74778 (_ BitVec 32) (_ BitVec 32)) Unit!37974)

(assert (=> b!1156166 (= lt!518906 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25362 0))(
  ( (Nil!25359) (Cons!25358 (h!26567 (_ BitVec 64)) (t!36822 List!25362)) )
))
(declare-fun arrayNoDuplicates!0 (array!74778 (_ BitVec 32) List!25362) Bool)

(assert (=> b!1156166 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25359)))

(declare-fun lt!518903 () Unit!37974)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74778 (_ BitVec 64) (_ BitVec 32) List!25362) Unit!37974)

(assert (=> b!1156166 (= lt!518903 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25359))))

(assert (=> b!1156166 false))

(declare-fun b!1156167 () Bool)

(declare-fun Unit!37977 () Unit!37974)

(assert (=> b!1156167 (= e!657554 Unit!37977)))

(declare-fun bm!55071 () Bool)

(assert (=> bm!55071 (= call!55079 (getCurrentListMapNoExtraKeys!4733 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1156168 () Bool)

(declare-fun e!657549 () Bool)

(declare-fun e!657546 () Bool)

(assert (=> b!1156168 (= e!657549 (and e!657546 mapRes!45311))))

(declare-fun condMapEmpty!45311 () Bool)

(declare-fun mapDefault!45311 () ValueCell!13786)

