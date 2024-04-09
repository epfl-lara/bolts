; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98268 () Bool)

(assert start!98268)

(declare-fun b_free!23933 () Bool)

(declare-fun b_next!23933 () Bool)

(assert (=> start!98268 (= b_free!23933 (not b_next!23933))))

(declare-fun tp!84503 () Bool)

(declare-fun b_and!38671 () Bool)

(assert (=> start!98268 (= tp!84503 b_and!38671)))

(declare-fun b!1131498 () Bool)

(declare-datatypes ((Unit!37017 0))(
  ( (Unit!37018) )
))
(declare-fun e!643976 () Unit!37017)

(declare-fun e!643974 () Unit!37017)

(assert (=> b!1131498 (= e!643976 e!643974)))

(declare-fun c!110156 () Bool)

(declare-fun lt!502584 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1131498 (= c!110156 (and (not lt!502584) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1131499 () Bool)

(declare-fun res!755964 () Bool)

(declare-fun e!643985 () Bool)

(assert (=> b!1131499 (=> (not res!755964) (not e!643985))))

(declare-datatypes ((array!73744 0))(
  ( (array!73745 (arr!35521 (Array (_ BitVec 32) (_ BitVec 64))) (size!36058 (_ BitVec 32))) )
))
(declare-fun lt!502575 () array!73744)

(declare-datatypes ((List!24913 0))(
  ( (Nil!24910) (Cons!24909 (h!26118 (_ BitVec 64)) (t!35845 List!24913)) )
))
(declare-fun arrayNoDuplicates!0 (array!73744 (_ BitVec 32) List!24913) Bool)

(assert (=> b!1131499 (= res!755964 (arrayNoDuplicates!0 lt!502575 #b00000000000000000000000000000000 Nil!24910))))

(declare-fun b!1131500 () Bool)

(declare-fun e!643982 () Bool)

(declare-fun tp_is_empty!28463 () Bool)

(assert (=> b!1131500 (= e!643982 tp_is_empty!28463)))

(declare-datatypes ((V!43077 0))(
  ( (V!43078 (val!14288 Int)) )
))
(declare-fun zeroValue!944 () V!43077)

(declare-fun bm!48667 () Bool)

(declare-datatypes ((tuple2!18098 0))(
  ( (tuple2!18099 (_1!9059 (_ BitVec 64)) (_2!9059 V!43077)) )
))
(declare-datatypes ((List!24914 0))(
  ( (Nil!24911) (Cons!24910 (h!26119 tuple2!18098) (t!35846 List!24914)) )
))
(declare-datatypes ((ListLongMap!16079 0))(
  ( (ListLongMap!16080 (toList!8055 List!24914)) )
))
(declare-fun call!48670 () ListLongMap!16079)

(declare-fun lt!502573 () ListLongMap!16079)

(declare-fun c!110154 () Bool)

(declare-fun minValue!944 () V!43077)

(declare-fun +!3419 (ListLongMap!16079 tuple2!18098) ListLongMap!16079)

(assert (=> bm!48667 (= call!48670 (+!3419 lt!502573 (ite (or c!110154 c!110156) (tuple2!18099 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18099 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun _keys!1208 () array!73744)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!48668 () Bool)

(declare-fun call!48672 () ListLongMap!16079)

(declare-datatypes ((ValueCell!13522 0))(
  ( (ValueCellFull!13522 (v!16922 V!43077)) (EmptyCell!13522) )
))
(declare-datatypes ((array!73746 0))(
  ( (array!73747 (arr!35522 (Array (_ BitVec 32) ValueCell!13522)) (size!36059 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73746)

(declare-fun getCurrentListMapNoExtraKeys!4507 (array!73744 array!73746 (_ BitVec 32) (_ BitVec 32) V!43077 V!43077 (_ BitVec 32) Int) ListLongMap!16079)

(assert (=> bm!48668 (= call!48672 (getCurrentListMapNoExtraKeys!4507 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1131502 () Bool)

(declare-fun e!643980 () Bool)

(declare-fun e!643984 () Bool)

(assert (=> b!1131502 (= e!643980 e!643984)))

(declare-fun res!755972 () Bool)

(assert (=> b!1131502 (=> res!755972 e!643984)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1131502 (= res!755972 (not (= from!1455 i!673)))))

(declare-fun lt!502578 () array!73746)

(declare-fun lt!502570 () ListLongMap!16079)

(assert (=> b!1131502 (= lt!502570 (getCurrentListMapNoExtraKeys!4507 lt!502575 lt!502578 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2579 (Int (_ BitVec 64)) V!43077)

(assert (=> b!1131502 (= lt!502578 (array!73747 (store (arr!35522 _values!996) i!673 (ValueCellFull!13522 (dynLambda!2579 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36059 _values!996)))))

(declare-fun lt!502571 () ListLongMap!16079)

(assert (=> b!1131502 (= lt!502571 (getCurrentListMapNoExtraKeys!4507 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1131503 () Bool)

(declare-fun res!755967 () Bool)

(declare-fun e!643983 () Bool)

(assert (=> b!1131503 (=> (not res!755967) (not e!643983))))

(assert (=> b!1131503 (= res!755967 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36058 _keys!1208))))))

(declare-fun b!1131504 () Bool)

(declare-fun e!643981 () Bool)

(declare-fun e!643988 () Bool)

(declare-fun mapRes!44512 () Bool)

(assert (=> b!1131504 (= e!643981 (and e!643988 mapRes!44512))))

(declare-fun condMapEmpty!44512 () Bool)

(declare-fun mapDefault!44512 () ValueCell!13522)

