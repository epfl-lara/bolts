; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98256 () Bool)

(assert start!98256)

(declare-fun b_free!23921 () Bool)

(declare-fun b_next!23921 () Bool)

(assert (=> start!98256 (= b_free!23921 (not b_next!23921))))

(declare-fun tp!84468 () Bool)

(declare-fun b_and!38647 () Bool)

(assert (=> start!98256 (= tp!84468 b_and!38647)))

(declare-fun c!110072 () Bool)

(declare-fun call!48532 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((V!43061 0))(
  ( (V!43062 (val!14282 Int)) )
))
(declare-datatypes ((tuple2!18086 0))(
  ( (tuple2!18087 (_1!9053 (_ BitVec 64)) (_2!9053 V!43061)) )
))
(declare-datatypes ((List!24905 0))(
  ( (Nil!24902) (Cons!24901 (h!26110 tuple2!18086) (t!35825 List!24905)) )
))
(declare-datatypes ((ListLongMap!16067 0))(
  ( (ListLongMap!16068 (toList!8049 List!24905)) )
))
(declare-fun lt!502313 () ListLongMap!16067)

(declare-fun bm!48523 () Bool)

(declare-fun call!48531 () ListLongMap!16067)

(declare-fun contains!6543 (ListLongMap!16067 (_ BitVec 64)) Bool)

(assert (=> bm!48523 (= call!48532 (contains!6543 (ite c!110072 lt!502313 call!48531) k!934))))

(declare-fun mapNonEmpty!44494 () Bool)

(declare-fun mapRes!44494 () Bool)

(declare-fun tp!84467 () Bool)

(declare-fun e!643707 () Bool)

(assert (=> mapNonEmpty!44494 (= mapRes!44494 (and tp!84467 e!643707))))

(declare-datatypes ((ValueCell!13516 0))(
  ( (ValueCellFull!13516 (v!16916 V!43061)) (EmptyCell!13516) )
))
(declare-fun mapRest!44494 () (Array (_ BitVec 32) ValueCell!13516))

(declare-fun mapKey!44494 () (_ BitVec 32))

(declare-fun mapValue!44494 () ValueCell!13516)

(declare-datatypes ((array!73720 0))(
  ( (array!73721 (arr!35509 (Array (_ BitVec 32) ValueCell!13516)) (size!36046 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73720)

(assert (=> mapNonEmpty!44494 (= (arr!35509 _values!996) (store mapRest!44494 mapKey!44494 mapValue!44494))))

(declare-fun b!1131010 () Bool)

(declare-fun res!755706 () Bool)

(declare-fun e!643717 () Bool)

(assert (=> b!1131010 (=> (not res!755706) (not e!643717))))

(declare-datatypes ((array!73722 0))(
  ( (array!73723 (arr!35510 (Array (_ BitVec 32) (_ BitVec 64))) (size!36047 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73722)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73722 (_ BitVec 32)) Bool)

(assert (=> b!1131010 (= res!755706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1131011 () Bool)

(declare-fun res!755702 () Bool)

(assert (=> b!1131011 (=> (not res!755702) (not e!643717))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1131011 (= res!755702 (= (select (arr!35510 _keys!1208) i!673) k!934))))

(declare-fun b!1131012 () Bool)

(declare-fun e!643718 () Bool)

(declare-fun e!643704 () Bool)

(assert (=> b!1131012 (= e!643718 e!643704)))

(declare-fun res!755709 () Bool)

(assert (=> b!1131012 (=> res!755709 e!643704)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1131012 (= res!755709 (not (= (select (arr!35510 _keys!1208) from!1455) k!934)))))

(declare-fun e!643710 () Bool)

(assert (=> b!1131012 e!643710))

(declare-fun c!110075 () Bool)

(assert (=> b!1131012 (= c!110075 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!43061)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43061)

(declare-datatypes ((Unit!37005 0))(
  ( (Unit!37006) )
))
(declare-fun lt!502310 () Unit!37005)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!430 (array!73722 array!73720 (_ BitVec 32) (_ BitVec 32) V!43061 V!43061 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37005)

(assert (=> b!1131012 (= lt!502310 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!430 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1131013 () Bool)

(declare-fun call!48526 () ListLongMap!16067)

(declare-fun call!48533 () ListLongMap!16067)

(assert (=> b!1131013 (= e!643710 (= call!48526 call!48533))))

(declare-fun bm!48524 () Bool)

(declare-fun call!48530 () ListLongMap!16067)

(assert (=> bm!48524 (= call!48531 call!48530)))

(declare-fun b!1131014 () Bool)

(declare-fun e!643705 () Bool)

(declare-fun e!643714 () Bool)

(assert (=> b!1131014 (= e!643705 (and e!643714 mapRes!44494))))

(declare-fun condMapEmpty!44494 () Bool)

(declare-fun mapDefault!44494 () ValueCell!13516)

