; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98622 () Bool)

(assert start!98622)

(declare-fun b_free!24191 () Bool)

(declare-fun b_next!24191 () Bool)

(assert (=> start!98622 (= b_free!24191 (not b_next!24191))))

(declare-fun tp!85284 () Bool)

(declare-fun b_and!39245 () Bool)

(assert (=> start!98622 (= tp!85284 b_and!39245)))

(declare-fun b!1143744 () Bool)

(declare-datatypes ((Unit!37464 0))(
  ( (Unit!37465) )
))
(declare-fun e!650674 () Unit!37464)

(declare-fun Unit!37466 () Unit!37464)

(assert (=> b!1143744 (= e!650674 Unit!37466)))

(declare-fun lt!510170 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1143744 (= lt!510170 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!112528 () Bool)

(assert (=> b!1143744 (= c!112528 (and (not lt!510170) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!510168 () Unit!37464)

(declare-fun e!650677 () Unit!37464)

(assert (=> b!1143744 (= lt!510168 e!650677)))

(declare-datatypes ((V!43421 0))(
  ( (V!43422 (val!14417 Int)) )
))
(declare-fun zeroValue!944 () V!43421)

(declare-datatypes ((array!74250 0))(
  ( (array!74251 (arr!35772 (Array (_ BitVec 32) (_ BitVec 64))) (size!36309 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74250)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!510172 () Unit!37464)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13651 0))(
  ( (ValueCellFull!13651 (v!17055 V!43421)) (EmptyCell!13651) )
))
(declare-datatypes ((array!74252 0))(
  ( (array!74253 (arr!35773 (Array (_ BitVec 32) ValueCell!13651)) (size!36310 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74252)

(declare-fun minValue!944 () V!43421)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!410 (array!74250 array!74252 (_ BitVec 32) (_ BitVec 32) V!43421 V!43421 (_ BitVec 64) (_ BitVec 32) Int) Unit!37464)

(assert (=> b!1143744 (= lt!510172 (lemmaListMapContainsThenArrayContainsFrom!410 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112529 () Bool)

(assert (=> b!1143744 (= c!112529 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!762025 () Bool)

(declare-fun e!650671 () Bool)

(assert (=> b!1143744 (= res!762025 e!650671)))

(declare-fun e!650669 () Bool)

(assert (=> b!1143744 (=> (not res!762025) (not e!650669))))

(assert (=> b!1143744 e!650669))

(declare-fun lt!510167 () Unit!37464)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74250 (_ BitVec 32) (_ BitVec 32)) Unit!37464)

(assert (=> b!1143744 (= lt!510167 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25136 0))(
  ( (Nil!25133) (Cons!25132 (h!26341 (_ BitVec 64)) (t!36326 List!25136)) )
))
(declare-fun arrayNoDuplicates!0 (array!74250 (_ BitVec 32) List!25136) Bool)

(assert (=> b!1143744 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25133)))

(declare-fun lt!510156 () Unit!37464)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74250 (_ BitVec 64) (_ BitVec 32) List!25136) Unit!37464)

(assert (=> b!1143744 (= lt!510156 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25133))))

(assert (=> b!1143744 false))

(declare-fun b!1143745 () Bool)

(declare-fun res!762023 () Bool)

(declare-fun e!650681 () Bool)

(assert (=> b!1143745 (=> (not res!762023) (not e!650681))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1143745 (= res!762023 (= (select (arr!35772 _keys!1208) i!673) k!934))))

(declare-fun b!1143746 () Bool)

(declare-fun e!650678 () Unit!37464)

(declare-fun lt!510157 () Unit!37464)

(assert (=> b!1143746 (= e!650678 lt!510157)))

(declare-fun call!51838 () Unit!37464)

(assert (=> b!1143746 (= lt!510157 call!51838)))

(declare-fun call!51840 () Bool)

(assert (=> b!1143746 call!51840))

(declare-fun b!1143747 () Bool)

(declare-fun e!650667 () Unit!37464)

(declare-fun Unit!37467 () Unit!37464)

(assert (=> b!1143747 (= e!650667 Unit!37467)))

(declare-fun b!1143748 () Bool)

(declare-fun e!650673 () Bool)

(declare-fun e!650670 () Bool)

(declare-fun mapRes!44906 () Bool)

(assert (=> b!1143748 (= e!650673 (and e!650670 mapRes!44906))))

(declare-fun condMapEmpty!44906 () Bool)

(declare-fun mapDefault!44906 () ValueCell!13651)

