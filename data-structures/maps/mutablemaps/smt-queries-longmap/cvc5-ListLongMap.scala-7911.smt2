; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98246 () Bool)

(assert start!98246)

(declare-fun b_free!23911 () Bool)

(declare-fun b_next!23911 () Bool)

(assert (=> start!98246 (= b_free!23911 (not b_next!23911))))

(declare-fun tp!84438 () Bool)

(declare-fun b_and!38627 () Bool)

(assert (=> start!98246 (= tp!84438 b_and!38627)))

(declare-fun b!1130610 () Bool)

(declare-fun e!643493 () Bool)

(declare-fun tp_is_empty!28441 () Bool)

(assert (=> b!1130610 (= e!643493 tp_is_empty!28441)))

(declare-fun b!1130611 () Bool)

(declare-datatypes ((Unit!36991 0))(
  ( (Unit!36992) )
))
(declare-fun e!643487 () Unit!36991)

(declare-fun e!643483 () Unit!36991)

(assert (=> b!1130611 (= e!643487 e!643483)))

(declare-fun c!110013 () Bool)

(declare-fun lt!502089 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1130611 (= c!110013 (and (not lt!502089) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!48403 () Bool)

(declare-fun call!48409 () Unit!36991)

(declare-fun call!48412 () Unit!36991)

(assert (=> bm!48403 (= call!48409 call!48412)))

(declare-datatypes ((V!43049 0))(
  ( (V!43050 (val!14277 Int)) )
))
(declare-fun zeroValue!944 () V!43049)

(declare-fun c!110014 () Bool)

(declare-fun bm!48404 () Bool)

(declare-datatypes ((tuple2!18076 0))(
  ( (tuple2!18077 (_1!9048 (_ BitVec 64)) (_2!9048 V!43049)) )
))
(declare-datatypes ((List!24895 0))(
  ( (Nil!24892) (Cons!24891 (h!26100 tuple2!18076) (t!35805 List!24895)) )
))
(declare-datatypes ((ListLongMap!16057 0))(
  ( (ListLongMap!16058 (toList!8044 List!24895)) )
))
(declare-fun lt!502087 () ListLongMap!16057)

(declare-fun call!48410 () ListLongMap!16057)

(declare-fun minValue!944 () V!43049)

(declare-fun +!3411 (ListLongMap!16057 tuple2!18076) ListLongMap!16057)

(assert (=> bm!48404 (= call!48410 (+!3411 lt!502087 (ite (or c!110014 c!110013) (tuple2!18077 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18077 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1130612 () Bool)

(declare-fun res!755483 () Bool)

(declare-fun e!643482 () Bool)

(assert (=> b!1130612 (=> (not res!755483) (not e!643482))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1130612 (= res!755483 (validMask!0 mask!1564))))

(declare-fun b!1130613 () Bool)

(declare-fun call!48413 () Bool)

(assert (=> b!1130613 call!48413))

(declare-fun lt!502075 () Unit!36991)

(assert (=> b!1130613 (= lt!502075 call!48409)))

(assert (=> b!1130613 (= e!643483 lt!502075)))

(declare-fun b!1130614 () Bool)

(declare-fun e!643488 () Bool)

(declare-fun e!643491 () Bool)

(assert (=> b!1130614 (= e!643488 e!643491)))

(declare-fun res!755487 () Bool)

(assert (=> b!1130614 (=> res!755487 e!643491)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73700 0))(
  ( (array!73701 (arr!35499 (Array (_ BitVec 32) (_ BitVec 64))) (size!36036 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73700)

(assert (=> b!1130614 (= res!755487 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36036 _keys!1208))))))

(declare-fun lt!502078 () Unit!36991)

(assert (=> b!1130614 (= lt!502078 e!643487)))

(assert (=> b!1130614 (= c!110014 (and (not lt!502089) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1130614 (= lt!502089 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1130615 () Bool)

(declare-fun e!643484 () Unit!36991)

(declare-fun lt!502081 () Unit!36991)

(assert (=> b!1130615 (= e!643484 lt!502081)))

(assert (=> b!1130615 (= lt!502081 call!48409)))

(assert (=> b!1130615 call!48413))

(declare-fun b!1130616 () Bool)

(declare-fun res!755480 () Bool)

(assert (=> b!1130616 (=> (not res!755480) (not e!643482))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1130616 (= res!755480 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36036 _keys!1208))))))

(declare-fun b!1130617 () Bool)

(declare-fun res!755477 () Bool)

(assert (=> b!1130617 (=> (not res!755477) (not e!643482))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1130617 (= res!755477 (validKeyInArray!0 k!934))))

(declare-fun b!1130618 () Bool)

(declare-fun e!643492 () Bool)

(assert (=> b!1130618 (= e!643492 e!643488)))

(declare-fun res!755486 () Bool)

(assert (=> b!1130618 (=> res!755486 e!643488)))

(declare-fun contains!6538 (ListLongMap!16057 (_ BitVec 64)) Bool)

(assert (=> b!1130618 (= res!755486 (not (contains!6538 lt!502087 k!934)))))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13511 0))(
  ( (ValueCellFull!13511 (v!16911 V!43049)) (EmptyCell!13511) )
))
(declare-datatypes ((array!73702 0))(
  ( (array!73703 (arr!35500 (Array (_ BitVec 32) ValueCell!13511)) (size!36037 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73702)

(declare-fun getCurrentListMapNoExtraKeys!4497 (array!73700 array!73702 (_ BitVec 32) (_ BitVec 32) V!43049 V!43049 (_ BitVec 32) Int) ListLongMap!16057)

(assert (=> b!1130618 (= lt!502087 (getCurrentListMapNoExtraKeys!4497 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130619 () Bool)

(declare-fun res!755475 () Bool)

(assert (=> b!1130619 (=> (not res!755475) (not e!643482))))

(declare-datatypes ((List!24896 0))(
  ( (Nil!24893) (Cons!24892 (h!26101 (_ BitVec 64)) (t!35806 List!24896)) )
))
(declare-fun arrayNoDuplicates!0 (array!73700 (_ BitVec 32) List!24896) Bool)

(assert (=> b!1130619 (= res!755475 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24893))))

(declare-fun call!48407 () ListLongMap!16057)

(declare-fun b!1130620 () Bool)

(declare-fun call!48411 () ListLongMap!16057)

(declare-fun e!643485 () Bool)

(declare-fun -!1172 (ListLongMap!16057 (_ BitVec 64)) ListLongMap!16057)

(assert (=> b!1130620 (= e!643485 (= call!48407 (-!1172 call!48411 k!934)))))

(declare-fun b!1130621 () Bool)

(declare-fun lt!502083 () Unit!36991)

(assert (=> b!1130621 (= e!643487 lt!502083)))

(declare-fun lt!502079 () Unit!36991)

(assert (=> b!1130621 (= lt!502079 call!48412)))

(declare-fun lt!502086 () ListLongMap!16057)

(assert (=> b!1130621 (= lt!502086 call!48410)))

(declare-fun call!48406 () Bool)

(assert (=> b!1130621 call!48406))

(declare-fun addStillContains!711 (ListLongMap!16057 (_ BitVec 64) V!43049 (_ BitVec 64)) Unit!36991)

(assert (=> b!1130621 (= lt!502083 (addStillContains!711 lt!502086 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1130621 (contains!6538 (+!3411 lt!502086 (tuple2!18077 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1130622 () Bool)

(declare-fun e!643481 () Bool)

(assert (=> b!1130622 (= e!643482 e!643481)))

(declare-fun res!755482 () Bool)

(assert (=> b!1130622 (=> (not res!755482) (not e!643481))))

(declare-fun lt!502077 () array!73700)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73700 (_ BitVec 32)) Bool)

(assert (=> b!1130622 (= res!755482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!502077 mask!1564))))

(assert (=> b!1130622 (= lt!502077 (array!73701 (store (arr!35499 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36036 _keys!1208)))))

(declare-fun lt!502085 () array!73702)

(declare-fun bm!48406 () Bool)

(assert (=> bm!48406 (= call!48407 (getCurrentListMapNoExtraKeys!4497 lt!502077 lt!502085 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130623 () Bool)

(declare-fun c!110015 () Bool)

(assert (=> b!1130623 (= c!110015 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!502089))))

(assert (=> b!1130623 (= e!643483 e!643484)))

(declare-fun b!1130624 () Bool)

(assert (=> b!1130624 (= e!643491 true)))

(declare-fun lt!502088 () Bool)

(declare-fun getCurrentListMap!4448 (array!73700 array!73702 (_ BitVec 32) (_ BitVec 32) V!43049 V!43049 (_ BitVec 32) Int) ListLongMap!16057)

(assert (=> b!1130624 (= lt!502088 (contains!6538 (getCurrentListMap!4448 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun bm!48407 () Bool)

(declare-fun call!48408 () ListLongMap!16057)

(assert (=> bm!48407 (= call!48408 call!48410)))

(declare-fun mapIsEmpty!44479 () Bool)

(declare-fun mapRes!44479 () Bool)

(assert (=> mapIsEmpty!44479 mapRes!44479))

(declare-fun b!1130625 () Bool)

(declare-fun res!755481 () Bool)

(assert (=> b!1130625 (=> (not res!755481) (not e!643481))))

(assert (=> b!1130625 (= res!755481 (arrayNoDuplicates!0 lt!502077 #b00000000000000000000000000000000 Nil!24893))))

(declare-fun mapNonEmpty!44479 () Bool)

(declare-fun tp!84437 () Bool)

(declare-fun e!643490 () Bool)

(assert (=> mapNonEmpty!44479 (= mapRes!44479 (and tp!84437 e!643490))))

(declare-fun mapRest!44479 () (Array (_ BitVec 32) ValueCell!13511))

(declare-fun mapKey!44479 () (_ BitVec 32))

(declare-fun mapValue!44479 () ValueCell!13511)

(assert (=> mapNonEmpty!44479 (= (arr!35500 _values!996) (store mapRest!44479 mapKey!44479 mapValue!44479))))

(declare-fun b!1130626 () Bool)

(declare-fun res!755484 () Bool)

(assert (=> b!1130626 (=> (not res!755484) (not e!643482))))

(assert (=> b!1130626 (= res!755484 (and (= (size!36037 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36036 _keys!1208) (size!36037 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!48408 () Bool)

(assert (=> bm!48408 (= call!48406 (contains!6538 (ite c!110014 lt!502086 call!48408) k!934))))

(declare-fun b!1130627 () Bool)

(declare-fun res!755479 () Bool)

(assert (=> b!1130627 (=> (not res!755479) (not e!643482))))

(assert (=> b!1130627 (= res!755479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!755473 () Bool)

(assert (=> start!98246 (=> (not res!755473) (not e!643482))))

(assert (=> start!98246 (= res!755473 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36036 _keys!1208))))))

(assert (=> start!98246 e!643482))

(assert (=> start!98246 tp_is_empty!28441))

(declare-fun array_inv!27102 (array!73700) Bool)

(assert (=> start!98246 (array_inv!27102 _keys!1208)))

(assert (=> start!98246 true))

(assert (=> start!98246 tp!84438))

(declare-fun e!643486 () Bool)

(declare-fun array_inv!27103 (array!73702) Bool)

(assert (=> start!98246 (and (array_inv!27103 _values!996) e!643486)))

(declare-fun bm!48405 () Bool)

(assert (=> bm!48405 (= call!48411 (getCurrentListMapNoExtraKeys!4497 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130628 () Bool)

(assert (=> b!1130628 (= e!643486 (and e!643493 mapRes!44479))))

(declare-fun condMapEmpty!44479 () Bool)

(declare-fun mapDefault!44479 () ValueCell!13511)

