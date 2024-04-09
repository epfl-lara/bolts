; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101128 () Bool)

(assert start!101128)

(declare-fun b_free!26053 () Bool)

(declare-fun b_next!26053 () Bool)

(assert (=> start!101128 (= b_free!26053 (not b_next!26053))))

(declare-fun tp!91178 () Bool)

(declare-fun b_and!43215 () Bool)

(assert (=> start!101128 (= tp!91178 b_and!43215)))

(declare-fun mapNonEmpty!48007 () Bool)

(declare-fun mapRes!48007 () Bool)

(declare-fun tp!91179 () Bool)

(declare-fun e!688466 () Bool)

(assert (=> mapNonEmpty!48007 (= mapRes!48007 (and tp!91179 e!688466))))

(declare-fun mapKey!48007 () (_ BitVec 32))

(declare-datatypes ((V!46137 0))(
  ( (V!46138 (val!15435 Int)) )
))
(declare-datatypes ((ValueCell!14669 0))(
  ( (ValueCellFull!14669 (v!18088 V!46137)) (EmptyCell!14669) )
))
(declare-fun mapValue!48007 () ValueCell!14669)

(declare-fun mapRest!48007 () (Array (_ BitVec 32) ValueCell!14669))

(declare-datatypes ((array!78272 0))(
  ( (array!78273 (arr!37768 (Array (_ BitVec 32) ValueCell!14669)) (size!38305 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78272)

(assert (=> mapNonEmpty!48007 (= (arr!37768 _values!996) (store mapRest!48007 mapKey!48007 mapValue!48007))))

(declare-fun b!1212212 () Bool)

(declare-fun res!805238 () Bool)

(declare-fun e!688470 () Bool)

(assert (=> b!1212212 (=> (not res!805238) (not e!688470))))

(declare-datatypes ((array!78274 0))(
  ( (array!78275 (arr!37769 (Array (_ BitVec 32) (_ BitVec 64))) (size!38306 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78274)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1212212 (= res!805238 (= (select (arr!37769 _keys!1208) i!673) k!934))))

(declare-fun b!1212213 () Bool)

(declare-fun e!688460 () Bool)

(declare-fun e!688463 () Bool)

(assert (=> b!1212213 (= e!688460 e!688463)))

(declare-fun res!805237 () Bool)

(assert (=> b!1212213 (=> res!805237 e!688463)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1212213 (= res!805237 (not (= (select (arr!37769 _keys!1208) from!1455) k!934)))))

(declare-fun e!688475 () Bool)

(assert (=> b!1212213 e!688475))

(declare-fun c!119581 () Bool)

(assert (=> b!1212213 (= c!119581 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!46137)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46137)

(declare-datatypes ((Unit!40116 0))(
  ( (Unit!40117) )
))
(declare-fun lt!550797 () Unit!40116)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1092 (array!78274 array!78272 (_ BitVec 32) (_ BitVec 32) V!46137 V!46137 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40116)

(assert (=> b!1212213 (= lt!550797 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1092 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1212214 () Bool)

(declare-fun e!688469 () Unit!40116)

(declare-fun lt!550794 () Unit!40116)

(assert (=> b!1212214 (= e!688469 lt!550794)))

(declare-fun call!60103 () Unit!40116)

(assert (=> b!1212214 (= lt!550794 call!60103)))

(declare-fun call!60098 () Bool)

(assert (=> b!1212214 call!60098))

(declare-fun b!1212215 () Bool)

(declare-fun res!805228 () Bool)

(assert (=> b!1212215 (=> (not res!805228) (not e!688470))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1212215 (= res!805228 (validKeyInArray!0 k!934))))

(declare-fun b!1212216 () Bool)

(declare-fun e!688474 () Bool)

(declare-fun arrayContainsKey!0 (array!78274 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1212216 (= e!688474 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1212217 () Bool)

(declare-fun e!688473 () Unit!40116)

(declare-fun Unit!40118 () Unit!40116)

(assert (=> b!1212217 (= e!688473 Unit!40118)))

(declare-fun b!1212218 () Bool)

(declare-fun res!805229 () Bool)

(assert (=> b!1212218 (=> (not res!805229) (not e!688470))))

(assert (=> b!1212218 (= res!805229 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38306 _keys!1208))))))

(declare-fun res!805235 () Bool)

(assert (=> start!101128 (=> (not res!805235) (not e!688470))))

(assert (=> start!101128 (= res!805235 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38306 _keys!1208))))))

(assert (=> start!101128 e!688470))

(declare-fun tp_is_empty!30757 () Bool)

(assert (=> start!101128 tp_is_empty!30757))

(declare-fun array_inv!28666 (array!78274) Bool)

(assert (=> start!101128 (array_inv!28666 _keys!1208)))

(assert (=> start!101128 true))

(assert (=> start!101128 tp!91178))

(declare-fun e!688459 () Bool)

(declare-fun array_inv!28667 (array!78272) Bool)

(assert (=> start!101128 (and (array_inv!28667 _values!996) e!688459)))

(declare-fun bm!60093 () Bool)

(declare-fun call!60100 () Unit!40116)

(assert (=> bm!60093 (= call!60103 call!60100)))

(declare-fun b!1212219 () Bool)

(declare-fun e!688467 () Unit!40116)

(declare-fun Unit!40119 () Unit!40116)

(assert (=> b!1212219 (= e!688467 Unit!40119)))

(declare-fun b!1212220 () Bool)

(declare-fun res!805242 () Bool)

(declare-fun e!688465 () Bool)

(assert (=> b!1212220 (=> (not res!805242) (not e!688465))))

(declare-fun lt!550789 () array!78274)

(declare-datatypes ((List!26786 0))(
  ( (Nil!26783) (Cons!26782 (h!27991 (_ BitVec 64)) (t!39826 List!26786)) )
))
(declare-fun arrayNoDuplicates!0 (array!78274 (_ BitVec 32) List!26786) Bool)

(assert (=> b!1212220 (= res!805242 (arrayNoDuplicates!0 lt!550789 #b00000000000000000000000000000000 Nil!26783))))

(declare-fun b!1212221 () Bool)

(assert (=> b!1212221 (= e!688463 (bvslt i!673 (size!38305 _values!996)))))

(declare-fun e!688462 () Bool)

(assert (=> b!1212221 e!688462))

(declare-fun res!805236 () Bool)

(assert (=> b!1212221 (=> (not res!805236) (not e!688462))))

(declare-datatypes ((tuple2!19966 0))(
  ( (tuple2!19967 (_1!9993 (_ BitVec 64)) (_2!9993 V!46137)) )
))
(declare-datatypes ((List!26787 0))(
  ( (Nil!26784) (Cons!26783 (h!27992 tuple2!19966) (t!39827 List!26787)) )
))
(declare-datatypes ((ListLongMap!17947 0))(
  ( (ListLongMap!17948 (toList!8989 List!26787)) )
))
(declare-fun lt!550790 () ListLongMap!17947)

(declare-fun lt!550791 () ListLongMap!17947)

(assert (=> b!1212221 (= res!805236 (= lt!550790 lt!550791))))

(declare-fun lt!550795 () ListLongMap!17947)

(declare-fun -!1885 (ListLongMap!17947 (_ BitVec 64)) ListLongMap!17947)

(assert (=> b!1212221 (= lt!550790 (-!1885 lt!550795 k!934))))

(declare-fun lt!550796 () V!46137)

(declare-fun +!4016 (ListLongMap!17947 tuple2!19966) ListLongMap!17947)

(assert (=> b!1212221 (= (-!1885 (+!4016 lt!550791 (tuple2!19967 (select (arr!37769 _keys!1208) from!1455) lt!550796)) (select (arr!37769 _keys!1208) from!1455)) lt!550791)))

(declare-fun lt!550798 () Unit!40116)

(declare-fun addThenRemoveForNewKeyIsSame!286 (ListLongMap!17947 (_ BitVec 64) V!46137) Unit!40116)

(assert (=> b!1212221 (= lt!550798 (addThenRemoveForNewKeyIsSame!286 lt!550791 (select (arr!37769 _keys!1208) from!1455) lt!550796))))

(declare-fun lt!550800 () V!46137)

(declare-fun get!19294 (ValueCell!14669 V!46137) V!46137)

(assert (=> b!1212221 (= lt!550796 (get!19294 (select (arr!37768 _values!996) from!1455) lt!550800))))

(declare-fun lt!550792 () Unit!40116)

(assert (=> b!1212221 (= lt!550792 e!688467)))

(declare-fun c!119584 () Bool)

(declare-fun contains!7004 (ListLongMap!17947 (_ BitVec 64)) Bool)

(assert (=> b!1212221 (= c!119584 (contains!7004 lt!550791 k!934))))

(declare-fun getCurrentListMapNoExtraKeys!5394 (array!78274 array!78272 (_ BitVec 32) (_ BitVec 32) V!46137 V!46137 (_ BitVec 32) Int) ListLongMap!17947)

(assert (=> b!1212221 (= lt!550791 (getCurrentListMapNoExtraKeys!5394 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!550809 () array!78272)

(declare-fun bm!60094 () Bool)

(declare-fun call!60099 () ListLongMap!17947)

(assert (=> bm!60094 (= call!60099 (getCurrentListMapNoExtraKeys!5394 lt!550789 lt!550809 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!60095 () Bool)

(declare-fun call!60102 () ListLongMap!17947)

(declare-fun call!60097 () ListLongMap!17947)

(assert (=> bm!60095 (= call!60102 call!60097)))

(declare-fun b!1212222 () Bool)

(assert (=> b!1212222 (= e!688462 (= lt!550790 (getCurrentListMapNoExtraKeys!5394 lt!550789 lt!550809 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1212223 () Bool)

(assert (=> b!1212223 call!60098))

(declare-fun lt!550799 () Unit!40116)

(assert (=> b!1212223 (= lt!550799 call!60103)))

(assert (=> b!1212223 (= e!688473 lt!550799)))

(declare-fun b!1212224 () Bool)

(declare-fun call!60096 () ListLongMap!17947)

(assert (=> b!1212224 (= e!688475 (= call!60099 call!60096))))

(declare-fun b!1212225 () Bool)

(assert (=> b!1212225 (= e!688466 tp_is_empty!30757)))

(declare-fun b!1212226 () Bool)

(declare-fun res!805234 () Bool)

(assert (=> b!1212226 (=> (not res!805234) (not e!688470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1212226 (= res!805234 (validMask!0 mask!1564))))

(declare-fun call!60101 () Bool)

(declare-fun c!119583 () Bool)

(declare-fun lt!550808 () ListLongMap!17947)

(declare-fun bm!60096 () Bool)

(assert (=> bm!60096 (= call!60101 (contains!7004 (ite c!119583 lt!550808 call!60102) k!934))))

(declare-fun b!1212227 () Bool)

(declare-fun res!805241 () Bool)

(assert (=> b!1212227 (=> (not res!805241) (not e!688470))))

(assert (=> b!1212227 (= res!805241 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26783))))

(declare-fun b!1212228 () Bool)

(declare-fun c!119582 () Bool)

(declare-fun lt!550802 () Bool)

(assert (=> b!1212228 (= c!119582 (and (not lt!550802) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!688472 () Unit!40116)

(assert (=> b!1212228 (= e!688472 e!688469)))

(declare-fun b!1212229 () Bool)

(declare-fun e!688468 () Bool)

(assert (=> b!1212229 (= e!688468 e!688460)))

(declare-fun res!805232 () Bool)

(assert (=> b!1212229 (=> res!805232 e!688460)))

(assert (=> b!1212229 (= res!805232 (not (= from!1455 i!673)))))

(declare-fun lt!550805 () ListLongMap!17947)

(assert (=> b!1212229 (= lt!550805 (getCurrentListMapNoExtraKeys!5394 lt!550789 lt!550809 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1212229 (= lt!550809 (array!78273 (store (arr!37768 _values!996) i!673 (ValueCellFull!14669 lt!550800)) (size!38305 _values!996)))))

(declare-fun dynLambda!3306 (Int (_ BitVec 64)) V!46137)

(assert (=> b!1212229 (= lt!550800 (dynLambda!3306 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1212229 (= lt!550795 (getCurrentListMapNoExtraKeys!5394 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1212230 () Bool)

(assert (=> b!1212230 (= e!688475 (= call!60099 (-!1885 call!60096 k!934)))))

(declare-fun b!1212231 () Bool)

(declare-fun e!688464 () Bool)

(assert (=> b!1212231 (= e!688464 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1212232 () Bool)

(declare-fun e!688461 () Bool)

(assert (=> b!1212232 (= e!688461 tp_is_empty!30757)))

(declare-fun b!1212233 () Bool)

(assert (=> b!1212233 (= e!688459 (and e!688461 mapRes!48007))))

(declare-fun condMapEmpty!48007 () Bool)

(declare-fun mapDefault!48007 () ValueCell!14669)

