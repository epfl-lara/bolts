; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98856 () Bool)

(assert start!98856)

(declare-fun b_free!24425 () Bool)

(declare-fun b_next!24425 () Bool)

(assert (=> start!98856 (= b_free!24425 (not b_next!24425))))

(declare-fun tp!85987 () Bool)

(declare-fun b_and!39713 () Bool)

(assert (=> start!98856 (= tp!85987 b_and!39713)))

(declare-fun bm!54638 () Bool)

(declare-datatypes ((V!43733 0))(
  ( (V!43734 (val!14534 Int)) )
))
(declare-datatypes ((tuple2!18548 0))(
  ( (tuple2!18549 (_1!9284 (_ BitVec 64)) (_2!9284 V!43733)) )
))
(declare-datatypes ((List!25332 0))(
  ( (Nil!25329) (Cons!25328 (h!26537 tuple2!18548) (t!36756 List!25332)) )
))
(declare-datatypes ((ListLongMap!16529 0))(
  ( (ListLongMap!16530 (toList!8280 List!25332)) )
))
(declare-fun call!54643 () ListLongMap!16529)

(declare-fun call!54645 () ListLongMap!16529)

(assert (=> bm!54638 (= call!54643 call!54645)))

(declare-fun b!1154498 () Bool)

(declare-fun e!656628 () Bool)

(declare-fun e!656633 () Bool)

(assert (=> b!1154498 (= e!656628 e!656633)))

(declare-fun res!767274 () Bool)

(assert (=> b!1154498 (=> res!767274 e!656633)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1154498 (= res!767274 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!43733)

(declare-datatypes ((array!74706 0))(
  ( (array!74707 (arr!36000 (Array (_ BitVec 32) (_ BitVec 64))) (size!36537 (_ BitVec 32))) )
))
(declare-fun lt!517712 () array!74706)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!517714 () ListLongMap!16529)

(declare-fun minValue!944 () V!43733)

(declare-datatypes ((ValueCell!13768 0))(
  ( (ValueCellFull!13768 (v!17172 V!43733)) (EmptyCell!13768) )
))
(declare-datatypes ((array!74708 0))(
  ( (array!74709 (arr!36001 (Array (_ BitVec 32) ValueCell!13768)) (size!36538 (_ BitVec 32))) )
))
(declare-fun lt!517705 () array!74708)

(declare-fun getCurrentListMapNoExtraKeys!4720 (array!74706 array!74708 (_ BitVec 32) (_ BitVec 32) V!43733 V!43733 (_ BitVec 32) Int) ListLongMap!16529)

(assert (=> b!1154498 (= lt!517714 (getCurrentListMapNoExtraKeys!4720 lt!517712 lt!517705 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!517707 () V!43733)

(declare-fun _values!996 () array!74708)

(assert (=> b!1154498 (= lt!517705 (array!74709 (store (arr!36001 _values!996) i!673 (ValueCellFull!13768 lt!517707)) (size!36538 _values!996)))))

(declare-fun dynLambda!2737 (Int (_ BitVec 64)) V!43733)

(assert (=> b!1154498 (= lt!517707 (dynLambda!2737 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!74706)

(declare-fun lt!517716 () ListLongMap!16529)

(assert (=> b!1154498 (= lt!517716 (getCurrentListMapNoExtraKeys!4720 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1154499 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!656627 () Bool)

(declare-fun arrayContainsKey!0 (array!74706 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1154499 (= e!656627 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1154500 () Bool)

(declare-fun e!656632 () Bool)

(declare-fun call!54642 () ListLongMap!16529)

(declare-fun call!54648 () ListLongMap!16529)

(assert (=> b!1154500 (= e!656632 (= call!54642 call!54648))))

(declare-fun b!1154501 () Bool)

(declare-fun e!656634 () Bool)

(assert (=> b!1154501 (= e!656633 e!656634)))

(declare-fun res!767279 () Bool)

(assert (=> b!1154501 (=> res!767279 e!656634)))

(assert (=> b!1154501 (= res!767279 (not (= (select (arr!36000 _keys!1208) from!1455) k!934)))))

(assert (=> b!1154501 e!656632))

(declare-fun c!114632 () Bool)

(assert (=> b!1154501 (= c!114632 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!37909 0))(
  ( (Unit!37910) )
))
(declare-fun lt!517718 () Unit!37909)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!591 (array!74706 array!74708 (_ BitVec 32) (_ BitVec 32) V!43733 V!43733 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37909)

(assert (=> b!1154501 (= lt!517718 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!591 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1154502 () Bool)

(declare-fun e!656626 () Unit!37909)

(declare-fun lt!517717 () Unit!37909)

(assert (=> b!1154502 (= e!656626 lt!517717)))

(declare-fun call!54647 () Unit!37909)

(assert (=> b!1154502 (= lt!517717 call!54647)))

(declare-fun call!54644 () Bool)

(assert (=> b!1154502 call!54644))

(declare-fun b!1154503 () Bool)

(declare-fun e!656640 () Bool)

(declare-fun e!656638 () Bool)

(assert (=> b!1154503 (= e!656640 e!656638)))

(declare-fun res!767288 () Bool)

(assert (=> b!1154503 (=> (not res!767288) (not e!656638))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74706 (_ BitVec 32)) Bool)

(assert (=> b!1154503 (= res!767288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!517712 mask!1564))))

(assert (=> b!1154503 (= lt!517712 (array!74707 (store (arr!36000 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36537 _keys!1208)))))

(declare-fun bm!54639 () Bool)

(declare-fun call!54646 () Unit!37909)

(assert (=> bm!54639 (= call!54647 call!54646)))

(declare-fun b!1154504 () Bool)

(declare-fun e!656630 () Bool)

(declare-fun e!656631 () Bool)

(declare-fun mapRes!45257 () Bool)

(assert (=> b!1154504 (= e!656630 (and e!656631 mapRes!45257))))

(declare-fun condMapEmpty!45257 () Bool)

(declare-fun mapDefault!45257 () ValueCell!13768)

