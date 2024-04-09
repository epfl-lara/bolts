; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101286 () Bool)

(assert start!101286)

(declare-fun b_free!26173 () Bool)

(declare-fun b_next!26173 () Bool)

(assert (=> start!101286 (= b_free!26173 (not b_next!26173))))

(declare-fun tp!91542 () Bool)

(declare-fun b_and!43473 () Bool)

(assert (=> start!101286 (= tp!91542 b_and!43473)))

(declare-fun mapIsEmpty!48190 () Bool)

(declare-fun mapRes!48190 () Bool)

(assert (=> mapIsEmpty!48190 mapRes!48190))

(declare-fun b!1216005 () Bool)

(declare-fun res!807532 () Bool)

(declare-fun e!690444 () Bool)

(assert (=> b!1216005 (=> (not res!807532) (not e!690444))))

(declare-datatypes ((array!78504 0))(
  ( (array!78505 (arr!37883 (Array (_ BitVec 32) (_ BitVec 64))) (size!38420 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78504)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!46297 0))(
  ( (V!46298 (val!15495 Int)) )
))
(declare-datatypes ((ValueCell!14729 0))(
  ( (ValueCellFull!14729 (v!18149 V!46297)) (EmptyCell!14729) )
))
(declare-datatypes ((array!78506 0))(
  ( (array!78507 (arr!37884 (Array (_ BitVec 32) ValueCell!14729)) (size!38421 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78506)

(assert (=> b!1216005 (= res!807532 (and (= (size!38421 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38420 _keys!1208) (size!38421 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1216006 () Bool)

(declare-fun e!690449 () Bool)

(declare-fun e!690450 () Bool)

(assert (=> b!1216006 (= e!690449 (and e!690450 mapRes!48190))))

(declare-fun condMapEmpty!48190 () Bool)

(declare-fun mapDefault!48190 () ValueCell!14729)

