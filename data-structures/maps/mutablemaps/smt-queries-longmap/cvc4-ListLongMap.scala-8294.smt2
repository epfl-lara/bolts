; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101114 () Bool)

(assert start!101114)

(declare-fun b_free!26039 () Bool)

(declare-fun b_next!26039 () Bool)

(assert (=> start!101114 (= b_free!26039 (not b_next!26039))))

(declare-fun tp!91136 () Bool)

(declare-fun b_and!43187 () Bool)

(assert (=> start!101114 (= tp!91136 b_and!43187)))

(declare-fun b!1211577 () Bool)

(declare-fun e!688119 () Bool)

(declare-fun e!688125 () Bool)

(assert (=> b!1211577 (= e!688119 (not e!688125))))

(declare-fun res!804924 () Bool)

(assert (=> b!1211577 (=> res!804924 e!688125)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1211577 (= res!804924 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!78244 0))(
  ( (array!78245 (arr!37754 (Array (_ BitVec 32) (_ BitVec 64))) (size!38291 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78244)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78244 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1211577 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40089 0))(
  ( (Unit!40090) )
))
(declare-fun lt!550342 () Unit!40089)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78244 (_ BitVec 64) (_ BitVec 32)) Unit!40089)

(assert (=> b!1211577 (= lt!550342 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1211578 () Bool)

(declare-fun res!804935 () Bool)

(declare-fun e!688114 () Bool)

(assert (=> b!1211578 (=> (not res!804935) (not e!688114))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78244 (_ BitVec 32)) Bool)

(assert (=> b!1211578 (= res!804935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1211579 () Bool)

(declare-fun res!804928 () Bool)

(assert (=> b!1211579 (=> (not res!804928) (not e!688119))))

(declare-fun lt!550334 () array!78244)

(declare-datatypes ((List!26772 0))(
  ( (Nil!26769) (Cons!26768 (h!27977 (_ BitVec 64)) (t!39798 List!26772)) )
))
(declare-fun arrayNoDuplicates!0 (array!78244 (_ BitVec 32) List!26772) Bool)

(assert (=> b!1211579 (= res!804928 (arrayNoDuplicates!0 lt!550334 #b00000000000000000000000000000000 Nil!26769))))

(declare-fun mapIsEmpty!47986 () Bool)

(declare-fun mapRes!47986 () Bool)

(assert (=> mapIsEmpty!47986 mapRes!47986))

(declare-fun b!1211580 () Bool)

(declare-fun res!804930 () Bool)

(assert (=> b!1211580 (=> (not res!804930) (not e!688114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1211580 (= res!804930 (validMask!0 mask!1564))))

(declare-fun b!1211581 () Bool)

(assert (=> b!1211581 (= e!688114 e!688119)))

(declare-fun res!804926 () Bool)

(assert (=> b!1211581 (=> (not res!804926) (not e!688119))))

(assert (=> b!1211581 (= res!804926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!550334 mask!1564))))

(assert (=> b!1211581 (= lt!550334 (array!78245 (store (arr!37754 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38291 _keys!1208)))))

(declare-fun b!1211582 () Bool)

(declare-fun res!804923 () Bool)

(assert (=> b!1211582 (=> (not res!804923) (not e!688114))))

(assert (=> b!1211582 (= res!804923 (= (select (arr!37754 _keys!1208) i!673) k!934))))

(declare-fun b!1211584 () Bool)

(declare-fun e!688111 () Unit!40089)

(declare-fun lt!550333 () Unit!40089)

(assert (=> b!1211584 (= e!688111 lt!550333)))

(declare-fun call!59935 () Unit!40089)

(assert (=> b!1211584 (= lt!550333 call!59935)))

(declare-fun call!59932 () Bool)

(assert (=> b!1211584 call!59932))

(declare-fun b!1211585 () Bool)

(declare-fun res!804932 () Bool)

(assert (=> b!1211585 (=> (not res!804932) (not e!688114))))

(assert (=> b!1211585 (= res!804932 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38291 _keys!1208))))))

(declare-datatypes ((V!46117 0))(
  ( (V!46118 (val!15428 Int)) )
))
(declare-datatypes ((tuple2!19952 0))(
  ( (tuple2!19953 (_1!9986 (_ BitVec 64)) (_2!9986 V!46117)) )
))
(declare-datatypes ((List!26773 0))(
  ( (Nil!26770) (Cons!26769 (h!27978 tuple2!19952) (t!39799 List!26773)) )
))
(declare-datatypes ((ListLongMap!17933 0))(
  ( (ListLongMap!17934 (toList!8982 List!26773)) )
))
(declare-fun call!59929 () ListLongMap!17933)

(declare-fun call!59934 () ListLongMap!17933)

(declare-fun e!688126 () Bool)

(declare-fun b!1211586 () Bool)

(declare-fun -!1880 (ListLongMap!17933 (_ BitVec 64)) ListLongMap!17933)

(assert (=> b!1211586 (= e!688126 (= call!59929 (-!1880 call!59934 k!934)))))

(declare-fun b!1211587 () Bool)

(declare-fun e!688124 () Bool)

(assert (=> b!1211587 (= e!688124 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!59925 () Bool)

(declare-fun call!59930 () Unit!40089)

(assert (=> bm!59925 (= call!59935 call!59930)))

(declare-fun b!1211588 () Bool)

(declare-fun res!804929 () Bool)

(assert (=> b!1211588 (=> (not res!804929) (not e!688114))))

(assert (=> b!1211588 (= res!804929 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26769))))

(declare-fun b!1211589 () Bool)

(declare-fun e!688118 () Bool)

(declare-datatypes ((ValueCell!14662 0))(
  ( (ValueCellFull!14662 (v!18081 V!46117)) (EmptyCell!14662) )
))
(declare-datatypes ((array!78246 0))(
  ( (array!78247 (arr!37755 (Array (_ BitVec 32) ValueCell!14662)) (size!38292 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78246)

(assert (=> b!1211589 (= e!688118 (bvslt i!673 (size!38292 _values!996)))))

(declare-fun e!688117 () Bool)

(assert (=> b!1211589 e!688117))

(declare-fun res!804934 () Bool)

(assert (=> b!1211589 (=> (not res!804934) (not e!688117))))

(declare-fun lt!550338 () ListLongMap!17933)

(declare-fun lt!550345 () V!46117)

(declare-fun +!4009 (ListLongMap!17933 tuple2!19952) ListLongMap!17933)

(assert (=> b!1211589 (= res!804934 (= (-!1880 (+!4009 lt!550338 (tuple2!19953 (select (arr!37754 _keys!1208) from!1455) lt!550345)) (select (arr!37754 _keys!1208) from!1455)) lt!550338))))

(declare-fun lt!550331 () Unit!40089)

(declare-fun addThenRemoveForNewKeyIsSame!281 (ListLongMap!17933 (_ BitVec 64) V!46117) Unit!40089)

(assert (=> b!1211589 (= lt!550331 (addThenRemoveForNewKeyIsSame!281 lt!550338 (select (arr!37754 _keys!1208) from!1455) lt!550345))))

(declare-fun lt!550337 () V!46117)

(declare-fun get!19283 (ValueCell!14662 V!46117) V!46117)

(assert (=> b!1211589 (= lt!550345 (get!19283 (select (arr!37755 _values!996) from!1455) lt!550337))))

(declare-fun lt!550336 () Unit!40089)

(declare-fun e!688112 () Unit!40089)

(assert (=> b!1211589 (= lt!550336 e!688112)))

(declare-fun c!119455 () Bool)

(declare-fun contains!6997 (ListLongMap!17933 (_ BitVec 64)) Bool)

(assert (=> b!1211589 (= c!119455 (contains!6997 lt!550338 k!934))))

(declare-fun zeroValue!944 () V!46117)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46117)

(declare-fun getCurrentListMapNoExtraKeys!5387 (array!78244 array!78246 (_ BitVec 32) (_ BitVec 32) V!46117 V!46117 (_ BitVec 32) Int) ListLongMap!17933)

(assert (=> b!1211589 (= lt!550338 (getCurrentListMapNoExtraKeys!5387 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1211590 () Bool)

(declare-fun Unit!40091 () Unit!40089)

(assert (=> b!1211590 (= e!688112 Unit!40091)))

(declare-fun b!1211591 () Bool)

(declare-fun e!688116 () Unit!40089)

(assert (=> b!1211591 (= e!688111 e!688116)))

(declare-fun c!119457 () Bool)

(declare-fun lt!550343 () Bool)

(assert (=> b!1211591 (= c!119457 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!550343))))

(declare-fun b!1211592 () Bool)

(declare-fun e!688123 () Bool)

(declare-fun e!688127 () Bool)

(assert (=> b!1211592 (= e!688123 (and e!688127 mapRes!47986))))

(declare-fun condMapEmpty!47986 () Bool)

(declare-fun mapDefault!47986 () ValueCell!14662)

