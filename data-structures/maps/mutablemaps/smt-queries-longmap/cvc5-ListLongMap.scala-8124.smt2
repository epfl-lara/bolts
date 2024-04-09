; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99646 () Bool)

(assert start!99646)

(declare-fun b_free!25189 () Bool)

(declare-fun b_next!25189 () Bool)

(assert (=> start!99646 (= b_free!25189 (not b_next!25189))))

(declare-fun tp!88281 () Bool)

(declare-fun b_and!41259 () Bool)

(assert (=> start!99646 (= tp!88281 b_and!41259)))

(declare-fun mapIsEmpty!46406 () Bool)

(declare-fun mapRes!46406 () Bool)

(assert (=> mapIsEmpty!46406 mapRes!46406))

(declare-fun b!1179941 () Bool)

(declare-fun res!784069 () Bool)

(declare-fun e!670867 () Bool)

(assert (=> b!1179941 (=> (not res!784069) (not e!670867))))

(declare-datatypes ((array!76210 0))(
  ( (array!76211 (arr!36751 (Array (_ BitVec 32) (_ BitVec 64))) (size!37288 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76210)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1179941 (= res!784069 (= (select (arr!36751 _keys!1208) i!673) k!934))))

(declare-fun b!1179942 () Bool)

(declare-fun e!670875 () Bool)

(declare-fun e!670872 () Bool)

(assert (=> b!1179942 (= e!670875 (and e!670872 mapRes!46406))))

(declare-fun condMapEmpty!46406 () Bool)

(declare-datatypes ((V!44753 0))(
  ( (V!44754 (val!14916 Int)) )
))
(declare-datatypes ((ValueCell!14150 0))(
  ( (ValueCellFull!14150 (v!17555 V!44753)) (EmptyCell!14150) )
))
(declare-datatypes ((array!76212 0))(
  ( (array!76213 (arr!36752 (Array (_ BitVec 32) ValueCell!14150)) (size!37289 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76212)

(declare-fun mapDefault!46406 () ValueCell!14150)

