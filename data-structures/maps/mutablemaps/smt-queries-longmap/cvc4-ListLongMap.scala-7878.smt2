; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98052 () Bool)

(assert start!98052)

(declare-fun b_free!23717 () Bool)

(declare-fun b_next!23717 () Bool)

(assert (=> start!98052 (= b_free!23717 (not b_next!23717))))

(declare-fun tp!83856 () Bool)

(declare-fun b_and!38239 () Bool)

(assert (=> start!98052 (= tp!83856 b_and!38239)))

(declare-fun b!1124548 () Bool)

(declare-fun e!640208 () Bool)

(declare-fun e!640201 () Bool)

(assert (=> b!1124548 (= e!640208 e!640201)))

(declare-fun res!751464 () Bool)

(assert (=> b!1124548 (=> res!751464 e!640201)))

(declare-datatypes ((V!42789 0))(
  ( (V!42790 (val!14180 Int)) )
))
(declare-datatypes ((tuple2!17894 0))(
  ( (tuple2!17895 (_1!8957 (_ BitVec 64)) (_2!8957 V!42789)) )
))
(declare-datatypes ((List!24725 0))(
  ( (Nil!24722) (Cons!24721 (h!25930 tuple2!17894) (t!35441 List!24725)) )
))
(declare-datatypes ((ListLongMap!15875 0))(
  ( (ListLongMap!15876 (toList!7953 List!24725)) )
))
(declare-fun lt!499495 () ListLongMap!15875)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6464 (ListLongMap!15875 (_ BitVec 64)) Bool)

(assert (=> b!1124548 (= res!751464 (not (contains!6464 lt!499495 k!934)))))

(declare-fun zeroValue!944 () V!42789)

(declare-datatypes ((array!73318 0))(
  ( (array!73319 (arr!35308 (Array (_ BitVec 32) (_ BitVec 64))) (size!35845 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73318)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13414 0))(
  ( (ValueCellFull!13414 (v!16814 V!42789)) (EmptyCell!13414) )
))
(declare-datatypes ((array!73320 0))(
  ( (array!73321 (arr!35309 (Array (_ BitVec 32) ValueCell!13414)) (size!35846 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73320)

(declare-fun minValue!944 () V!42789)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4412 (array!73318 array!73320 (_ BitVec 32) (_ BitVec 32) V!42789 V!42789 (_ BitVec 32) Int) ListLongMap!15875)

(assert (=> b!1124548 (= lt!499495 (getCurrentListMapNoExtraKeys!4412 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!47434 () ListLongMap!15875)

(declare-fun bm!47431 () Bool)

(declare-fun lt!499497 () array!73320)

(declare-fun lt!499494 () array!73318)

(assert (=> bm!47431 (= call!47434 (getCurrentListMapNoExtraKeys!4412 lt!499494 lt!499497 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124549 () Bool)

(declare-fun res!751454 () Bool)

(assert (=> b!1124549 (=> res!751454 e!640201)))

(assert (=> b!1124549 (= res!751454 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1124550 () Bool)

(declare-fun e!640207 () Bool)

(declare-fun tp_is_empty!28247 () Bool)

(assert (=> b!1124550 (= e!640207 tp_is_empty!28247)))

(declare-fun call!47435 () ListLongMap!15875)

(declare-fun bm!47432 () Bool)

(assert (=> bm!47432 (= call!47435 (getCurrentListMapNoExtraKeys!4412 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124551 () Bool)

(declare-fun e!640204 () Bool)

(declare-fun e!640202 () Bool)

(assert (=> b!1124551 (= e!640204 e!640202)))

(declare-fun res!751453 () Bool)

(assert (=> b!1124551 (=> res!751453 e!640202)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1124551 (= res!751453 (not (= from!1455 i!673)))))

(declare-fun lt!499493 () ListLongMap!15875)

(assert (=> b!1124551 (= lt!499493 (getCurrentListMapNoExtraKeys!4412 lt!499494 lt!499497 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2501 (Int (_ BitVec 64)) V!42789)

(assert (=> b!1124551 (= lt!499497 (array!73321 (store (arr!35309 _values!996) i!673 (ValueCellFull!13414 (dynLambda!2501 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35846 _values!996)))))

(declare-fun lt!499496 () ListLongMap!15875)

(assert (=> b!1124551 (= lt!499496 (getCurrentListMapNoExtraKeys!4412 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1124552 () Bool)

(declare-fun res!751455 () Bool)

(declare-fun e!640200 () Bool)

(assert (=> b!1124552 (=> (not res!751455) (not e!640200))))

(assert (=> b!1124552 (= res!751455 (and (= (size!35846 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35845 _keys!1208) (size!35846 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!751460 () Bool)

(assert (=> start!98052 (=> (not res!751460) (not e!640200))))

(assert (=> start!98052 (= res!751460 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35845 _keys!1208))))))

(assert (=> start!98052 e!640200))

(assert (=> start!98052 tp_is_empty!28247))

(declare-fun array_inv!26974 (array!73318) Bool)

(assert (=> start!98052 (array_inv!26974 _keys!1208)))

(assert (=> start!98052 true))

(assert (=> start!98052 tp!83856))

(declare-fun e!640203 () Bool)

(declare-fun array_inv!26975 (array!73320) Bool)

(assert (=> start!98052 (and (array_inv!26975 _values!996) e!640203)))

(declare-fun b!1124553 () Bool)

(declare-fun mapRes!44188 () Bool)

(assert (=> b!1124553 (= e!640203 (and e!640207 mapRes!44188))))

(declare-fun condMapEmpty!44188 () Bool)

(declare-fun mapDefault!44188 () ValueCell!13414)

