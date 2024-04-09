; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98888 () Bool)

(assert start!98888)

(declare-fun b_free!24457 () Bool)

(declare-fun b_next!24457 () Bool)

(assert (=> start!98888 (= b_free!24457 (not b_next!24457))))

(declare-fun tp!86082 () Bool)

(declare-fun b_and!39777 () Bool)

(assert (=> start!98888 (= tp!86082 b_and!39777)))

(declare-fun bm!55022 () Bool)

(declare-fun call!55026 () Bool)

(declare-fun call!55032 () Bool)

(assert (=> bm!55022 (= call!55026 call!55032)))

(declare-datatypes ((array!74768 0))(
  ( (array!74769 (arr!36031 (Array (_ BitVec 32) (_ BitVec 64))) (size!36568 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74768)

(declare-fun e!657454 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1155970 () Bool)

(declare-fun arrayContainsKey!0 (array!74768 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1155970 (= e!657454 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapIsEmpty!45305 () Bool)

(declare-fun mapRes!45305 () Bool)

(assert (=> mapIsEmpty!45305 mapRes!45305))

(declare-fun b!1155971 () Bool)

(declare-fun e!657453 () Bool)

(declare-fun e!657445 () Bool)

(assert (=> b!1155971 (= e!657453 e!657445)))

(declare-fun res!768003 () Bool)

(assert (=> b!1155971 (=> res!768003 e!657445)))

(assert (=> b!1155971 (= res!768003 (not (= (select (arr!36031 _keys!1208) from!1455) k!934)))))

(declare-fun e!657444 () Bool)

(assert (=> b!1155971 e!657444))

(declare-fun c!114919 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1155971 (= c!114919 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43777 0))(
  ( (V!43778 (val!14550 Int)) )
))
(declare-fun zeroValue!944 () V!43777)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13784 0))(
  ( (ValueCellFull!13784 (v!17188 V!43777)) (EmptyCell!13784) )
))
(declare-datatypes ((array!74770 0))(
  ( (array!74771 (arr!36032 (Array (_ BitVec 32) ValueCell!13784)) (size!36569 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74770)

(declare-fun minValue!944 () V!43777)

(declare-datatypes ((Unit!37967 0))(
  ( (Unit!37968) )
))
(declare-fun lt!518769 () Unit!37967)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!599 (array!74768 array!74770 (_ BitVec 32) (_ BitVec 32) V!43777 V!43777 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37967)

(assert (=> b!1155971 (= lt!518769 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!599 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1155972 () Bool)

(declare-fun res!768007 () Bool)

(declare-fun e!657443 () Bool)

(assert (=> b!1155972 (=> (not res!768007) (not e!657443))))

(assert (=> b!1155972 (= res!768007 (and (= (size!36569 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36568 _keys!1208) (size!36569 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1155973 () Bool)

(declare-fun e!657450 () Bool)

(declare-fun e!657446 () Bool)

(assert (=> b!1155973 (= e!657450 (and e!657446 mapRes!45305))))

(declare-fun condMapEmpty!45305 () Bool)

(declare-fun mapDefault!45305 () ValueCell!13784)

