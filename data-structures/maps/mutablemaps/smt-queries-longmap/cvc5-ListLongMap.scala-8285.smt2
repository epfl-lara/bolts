; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100982 () Bool)

(assert start!100982)

(declare-fun b_free!25981 () Bool)

(declare-fun b_next!25981 () Bool)

(assert (=> start!100982 (= b_free!25981 (not b_next!25981))))

(declare-fun tp!90957 () Bool)

(declare-fun b_and!43035 () Bool)

(assert (=> start!100982 (= tp!90957 b_and!43035)))

(declare-datatypes ((V!46041 0))(
  ( (V!46042 (val!15399 Int)) )
))
(declare-datatypes ((tuple2!19902 0))(
  ( (tuple2!19903 (_1!9961 (_ BitVec 64)) (_2!9961 V!46041)) )
))
(declare-datatypes ((List!26724 0))(
  ( (Nil!26721) (Cons!26720 (h!27929 tuple2!19902) (t!39692 List!26724)) )
))
(declare-datatypes ((ListLongMap!17883 0))(
  ( (ListLongMap!17884 (toList!8957 List!26724)) )
))
(declare-fun lt!548495 () ListLongMap!17883)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun c!118878 () Bool)

(declare-fun call!59196 () Bool)

(declare-fun bm!59187 () Bool)

(declare-fun call!59192 () ListLongMap!17883)

(declare-fun contains!6964 (ListLongMap!17883 (_ BitVec 64)) Bool)

(assert (=> bm!59187 (= call!59196 (contains!6964 (ite c!118878 lt!548495 call!59192) k!934))))

(declare-fun b!1208580 () Bool)

(declare-fun res!803437 () Bool)

(declare-fun e!686447 () Bool)

(assert (=> b!1208580 (=> (not res!803437) (not e!686447))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78130 0))(
  ( (array!78131 (arr!37699 (Array (_ BitVec 32) (_ BitVec 64))) (size!38236 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78130)

(assert (=> b!1208580 (= res!803437 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38236 _keys!1208))))))

(declare-fun b!1208581 () Bool)

(declare-fun e!686430 () Bool)

(declare-fun e!686441 () Bool)

(assert (=> b!1208581 (= e!686430 e!686441)))

(declare-fun res!803435 () Bool)

(assert (=> b!1208581 (=> res!803435 e!686441)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1208581 (= res!803435 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46041)

(declare-fun lt!548493 () array!78130)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!548500 () ListLongMap!17883)

(declare-datatypes ((ValueCell!14633 0))(
  ( (ValueCellFull!14633 (v!18049 V!46041)) (EmptyCell!14633) )
))
(declare-datatypes ((array!78132 0))(
  ( (array!78133 (arr!37700 (Array (_ BitVec 32) ValueCell!14633)) (size!38237 (_ BitVec 32))) )
))
(declare-fun lt!548497 () array!78132)

(declare-fun minValue!944 () V!46041)

(declare-fun getCurrentListMapNoExtraKeys!5364 (array!78130 array!78132 (_ BitVec 32) (_ BitVec 32) V!46041 V!46041 (_ BitVec 32) Int) ListLongMap!17883)

(assert (=> b!1208581 (= lt!548500 (getCurrentListMapNoExtraKeys!5364 lt!548493 lt!548497 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78132)

(declare-fun dynLambda!3282 (Int (_ BitVec 64)) V!46041)

(assert (=> b!1208581 (= lt!548497 (array!78133 (store (arr!37700 _values!996) i!673 (ValueCellFull!14633 (dynLambda!3282 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38237 _values!996)))))

(declare-fun lt!548491 () ListLongMap!17883)

(assert (=> b!1208581 (= lt!548491 (getCurrentListMapNoExtraKeys!5364 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1208582 () Bool)

(declare-fun e!686439 () Bool)

(declare-fun e!686437 () Bool)

(declare-fun mapRes!47893 () Bool)

(assert (=> b!1208582 (= e!686439 (and e!686437 mapRes!47893))))

(declare-fun condMapEmpty!47893 () Bool)

(declare-fun mapDefault!47893 () ValueCell!14633)

