; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99890 () Bool)

(assert start!99890)

(declare-fun b_free!25433 () Bool)

(declare-fun b_next!25433 () Bool)

(assert (=> start!99890 (= b_free!25433 (not b_next!25433))))

(declare-fun tp!89013 () Bool)

(declare-fun b_and!41747 () Bool)

(assert (=> start!99890 (= tp!89013 b_and!41747)))

(declare-fun res!789690 () Bool)

(declare-fun e!675327 () Bool)

(assert (=> start!99890 (=> (not res!789690) (not e!675327))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76694 0))(
  ( (array!76695 (arr!36993 (Array (_ BitVec 32) (_ BitVec 64))) (size!37530 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76694)

(assert (=> start!99890 (= res!789690 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37530 _keys!1208))))))

(assert (=> start!99890 e!675327))

(declare-fun tp_is_empty!29963 () Bool)

(assert (=> start!99890 tp_is_empty!29963))

(declare-fun array_inv!28112 (array!76694) Bool)

(assert (=> start!99890 (array_inv!28112 _keys!1208)))

(assert (=> start!99890 true))

(assert (=> start!99890 tp!89013))

(declare-datatypes ((V!45077 0))(
  ( (V!45078 (val!15038 Int)) )
))
(declare-datatypes ((ValueCell!14272 0))(
  ( (ValueCellFull!14272 (v!17677 V!45077)) (EmptyCell!14272) )
))
(declare-datatypes ((array!76696 0))(
  ( (array!76697 (arr!36994 (Array (_ BitVec 32) ValueCell!14272)) (size!37531 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76696)

(declare-fun e!675328 () Bool)

(declare-fun array_inv!28113 (array!76696) Bool)

(assert (=> start!99890 (and (array_inv!28113 _values!996) e!675328)))

(declare-fun b!1187645 () Bool)

(declare-datatypes ((Unit!39319 0))(
  ( (Unit!39320) )
))
(declare-fun e!675331 () Unit!39319)

(declare-fun Unit!39321 () Unit!39319)

(assert (=> b!1187645 (= e!675331 Unit!39321)))

(declare-fun b!1187646 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!675329 () Bool)

(declare-fun arrayContainsKey!0 (array!76694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1187646 (= e!675329 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1187647 () Bool)

(declare-fun res!789700 () Bool)

(assert (=> b!1187647 (=> (not res!789700) (not e!675327))))

(assert (=> b!1187647 (= res!789700 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37530 _keys!1208))))))

(declare-fun b!1187648 () Bool)

(declare-fun e!675326 () Bool)

(declare-fun mapRes!46772 () Bool)

(assert (=> b!1187648 (= e!675328 (and e!675326 mapRes!46772))))

(declare-fun condMapEmpty!46772 () Bool)

(declare-fun mapDefault!46772 () ValueCell!14272)

