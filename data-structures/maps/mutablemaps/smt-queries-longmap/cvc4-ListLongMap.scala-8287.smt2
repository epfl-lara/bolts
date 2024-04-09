; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101034 () Bool)

(assert start!101034)

(declare-fun b_free!25997 () Bool)

(declare-fun b_next!25997 () Bool)

(assert (=> start!101034 (= b_free!25997 (not b_next!25997))))

(declare-fun tp!91007 () Bool)

(declare-fun b_and!43085 () Bool)

(assert (=> start!101034 (= tp!91007 b_and!43085)))

(declare-fun b!1209522 () Bool)

(declare-fun res!803948 () Bool)

(declare-fun e!686983 () Bool)

(assert (=> b!1209522 (=> (not res!803948) (not e!686983))))

(declare-datatypes ((array!78162 0))(
  ( (array!78163 (arr!37714 (Array (_ BitVec 32) (_ BitVec 64))) (size!38251 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78162)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1209522 (= res!803948 (= (select (arr!37714 _keys!1208) i!673) k!934))))

(declare-fun b!1209523 () Bool)

(declare-fun e!686971 () Bool)

(declare-fun e!686978 () Bool)

(assert (=> b!1209523 (= e!686971 e!686978)))

(declare-fun res!803953 () Bool)

(assert (=> b!1209523 (=> res!803953 e!686978)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1209523 (= res!803953 (not (= (select (arr!37714 _keys!1208) from!1455) k!934)))))

(declare-fun e!686973 () Bool)

(assert (=> b!1209523 e!686973))

(declare-fun c!119043 () Bool)

(assert (=> b!1209523 (= c!119043 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!46061 0))(
  ( (V!46062 (val!15407 Int)) )
))
(declare-fun zeroValue!944 () V!46061)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14641 0))(
  ( (ValueCellFull!14641 (v!18059 V!46061)) (EmptyCell!14641) )
))
(declare-datatypes ((array!78164 0))(
  ( (array!78165 (arr!37715 (Array (_ BitVec 32) ValueCell!14641)) (size!38252 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78164)

(declare-fun minValue!944 () V!46061)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((Unit!40010 0))(
  ( (Unit!40011) )
))
(declare-fun lt!549005 () Unit!40010)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1073 (array!78162 array!78164 (_ BitVec 32) (_ BitVec 32) V!46061 V!46061 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40010)

(assert (=> b!1209523 (= lt!549005 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1073 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209524 () Bool)

(declare-fun e!686986 () Bool)

(declare-fun e!686979 () Bool)

(declare-fun mapRes!47920 () Bool)

(assert (=> b!1209524 (= e!686986 (and e!686979 mapRes!47920))))

(declare-fun condMapEmpty!47920 () Bool)

(declare-fun mapDefault!47920 () ValueCell!14641)

