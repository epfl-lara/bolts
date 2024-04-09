; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98270 () Bool)

(assert start!98270)

(declare-fun b_free!23935 () Bool)

(declare-fun b_next!23935 () Bool)

(assert (=> start!98270 (= b_free!23935 (not b_next!23935))))

(declare-fun tp!84509 () Bool)

(declare-fun b_and!38675 () Bool)

(assert (=> start!98270 (= tp!84509 b_and!38675)))

(declare-fun b!1131581 () Bool)

(declare-fun res!756004 () Bool)

(declare-fun e!644020 () Bool)

(assert (=> b!1131581 (=> (not res!756004) (not e!644020))))

(declare-datatypes ((array!73748 0))(
  ( (array!73749 (arr!35523 (Array (_ BitVec 32) (_ BitVec 64))) (size!36060 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73748)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!43081 0))(
  ( (V!43082 (val!14289 Int)) )
))
(declare-datatypes ((ValueCell!13523 0))(
  ( (ValueCellFull!13523 (v!16923 V!43081)) (EmptyCell!13523) )
))
(declare-datatypes ((array!73750 0))(
  ( (array!73751 (arr!35524 (Array (_ BitVec 32) ValueCell!13523)) (size!36061 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73750)

(assert (=> b!1131581 (= res!756004 (and (= (size!36061 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36060 _keys!1208) (size!36061 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1131582 () Bool)

(declare-fun e!644024 () Bool)

(declare-fun tp_is_empty!28465 () Bool)

(assert (=> b!1131582 (= e!644024 tp_is_empty!28465)))

(declare-fun zeroValue!944 () V!43081)

(declare-datatypes ((Unit!37019 0))(
  ( (Unit!37020) )
))
(declare-fun call!48694 () Unit!37019)

(declare-fun c!110171 () Bool)

(declare-fun bm!48691 () Bool)

(declare-fun c!110170 () Bool)

(declare-datatypes ((tuple2!18100 0))(
  ( (tuple2!18101 (_1!9060 (_ BitVec 64)) (_2!9060 V!43081)) )
))
(declare-datatypes ((List!24915 0))(
  ( (Nil!24912) (Cons!24911 (h!26120 tuple2!18100) (t!35849 List!24915)) )
))
(declare-datatypes ((ListLongMap!16081 0))(
  ( (ListLongMap!16082 (toList!8056 List!24915)) )
))
(declare-fun lt!502626 () ListLongMap!16081)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!43081)

(declare-fun addStillContains!719 (ListLongMap!16081 (_ BitVec 64) V!43081 (_ BitVec 64)) Unit!37019)

(assert (=> bm!48691 (= call!48694 (addStillContains!719 lt!502626 (ite (or c!110171 c!110170) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110171 c!110170) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1131583 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!644028 () Bool)

(declare-fun arrayContainsKey!0 (array!73748 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1131583 (= e!644028 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!756005 () Bool)

(assert (=> start!98270 (=> (not res!756005) (not e!644020))))

(assert (=> start!98270 (= res!756005 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36060 _keys!1208))))))

(assert (=> start!98270 e!644020))

(assert (=> start!98270 tp_is_empty!28465))

(declare-fun array_inv!27114 (array!73748) Bool)

(assert (=> start!98270 (array_inv!27114 _keys!1208)))

(assert (=> start!98270 true))

(assert (=> start!98270 tp!84509))

(declare-fun e!644025 () Bool)

(declare-fun array_inv!27115 (array!73750) Bool)

(assert (=> start!98270 (and (array_inv!27115 _values!996) e!644025)))

(declare-fun mapNonEmpty!44515 () Bool)

(declare-fun mapRes!44515 () Bool)

(declare-fun tp!84510 () Bool)

(declare-fun e!644032 () Bool)

(assert (=> mapNonEmpty!44515 (= mapRes!44515 (and tp!84510 e!644032))))

(declare-fun mapKey!44515 () (_ BitVec 32))

(declare-fun mapRest!44515 () (Array (_ BitVec 32) ValueCell!13523))

(declare-fun mapValue!44515 () ValueCell!13523)

(assert (=> mapNonEmpty!44515 (= (arr!35524 _values!996) (store mapRest!44515 mapKey!44515 mapValue!44515))))

(declare-fun bm!48692 () Bool)

(declare-fun call!48701 () Unit!37019)

(assert (=> bm!48692 (= call!48701 call!48694)))

(declare-fun b!1131584 () Bool)

(declare-fun e!644030 () Bool)

(declare-fun e!644019 () Bool)

(assert (=> b!1131584 (= e!644030 (not e!644019))))

(declare-fun res!756006 () Bool)

(assert (=> b!1131584 (=> res!756006 e!644019)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1131584 (= res!756006 (bvsgt from!1455 i!673))))

(assert (=> b!1131584 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!502621 () Unit!37019)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73748 (_ BitVec 64) (_ BitVec 32)) Unit!37019)

(assert (=> b!1131584 (= lt!502621 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1131585 () Bool)

(declare-fun e!644029 () Bool)

(declare-fun call!48699 () ListLongMap!16081)

(declare-fun call!48695 () ListLongMap!16081)

(assert (=> b!1131585 (= e!644029 (= call!48699 call!48695))))

(declare-fun b!1131586 () Bool)

(assert (=> b!1131586 (= e!644025 (and e!644024 mapRes!44515))))

(declare-fun condMapEmpty!44515 () Bool)

(declare-fun mapDefault!44515 () ValueCell!13523)

