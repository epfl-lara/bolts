; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99120 () Bool)

(assert start!99120)

(declare-fun b_free!24689 () Bool)

(declare-fun b_next!24689 () Bool)

(assert (=> start!99120 (= b_free!24689 (not b_next!24689))))

(declare-fun tp!86779 () Bool)

(declare-fun b_and!40241 () Bool)

(assert (=> start!99120 (= tp!86779 b_and!40241)))

(declare-fun b!1165218 () Bool)

(declare-fun res!772860 () Bool)

(declare-fun e!662471 () Bool)

(assert (=> b!1165218 (=> (not res!772860) (not e!662471))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((array!75222 0))(
  ( (array!75223 (arr!36258 (Array (_ BitVec 32) (_ BitVec 64))) (size!36795 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75222)

(assert (=> b!1165218 (= res!772860 (= (select (arr!36258 _keys!1208) i!673) k!934))))

(declare-fun b!1165219 () Bool)

(declare-fun res!772859 () Bool)

(assert (=> b!1165219 (=> (not res!772859) (not e!662471))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44085 0))(
  ( (V!44086 (val!14666 Int)) )
))
(declare-datatypes ((ValueCell!13900 0))(
  ( (ValueCellFull!13900 (v!17304 V!44085)) (EmptyCell!13900) )
))
(declare-datatypes ((array!75224 0))(
  ( (array!75225 (arr!36259 (Array (_ BitVec 32) ValueCell!13900)) (size!36796 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75224)

(assert (=> b!1165219 (= res!772859 (and (= (size!36796 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36795 _keys!1208) (size!36796 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!772868 () Bool)

(assert (=> start!99120 (=> (not res!772868) (not e!662471))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99120 (= res!772868 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36795 _keys!1208))))))

(assert (=> start!99120 e!662471))

(declare-fun tp_is_empty!29219 () Bool)

(assert (=> start!99120 tp_is_empty!29219))

(declare-fun array_inv!27606 (array!75222) Bool)

(assert (=> start!99120 (array_inv!27606 _keys!1208)))

(assert (=> start!99120 true))

(assert (=> start!99120 tp!86779))

(declare-fun e!662466 () Bool)

(declare-fun array_inv!27607 (array!75224) Bool)

(assert (=> start!99120 (and (array_inv!27607 _values!996) e!662466)))

(declare-fun b!1165220 () Bool)

(declare-fun res!772864 () Bool)

(assert (=> b!1165220 (=> (not res!772864) (not e!662471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1165220 (= res!772864 (validMask!0 mask!1564))))

(declare-fun b!1165221 () Bool)

(declare-fun e!662467 () Bool)

(declare-fun mapRes!45653 () Bool)

(assert (=> b!1165221 (= e!662466 (and e!662467 mapRes!45653))))

(declare-fun condMapEmpty!45653 () Bool)

(declare-fun mapDefault!45653 () ValueCell!13900)

