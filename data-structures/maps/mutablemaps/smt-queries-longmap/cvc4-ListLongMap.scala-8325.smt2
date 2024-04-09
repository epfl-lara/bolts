; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101364 () Bool)

(assert start!101364)

(declare-fun b_free!26225 () Bool)

(declare-fun b_next!26225 () Bool)

(assert (=> start!101364 (= b_free!26225 (not b_next!26225))))

(declare-fun tp!91700 () Bool)

(declare-fun b_and!43595 () Bool)

(assert (=> start!101364 (= tp!91700 b_and!43595)))

(declare-fun b!1217397 () Bool)

(declare-fun res!808548 () Bool)

(declare-fun e!691191 () Bool)

(assert (=> b!1217397 (=> (not res!808548) (not e!691191))))

(declare-datatypes ((array!78606 0))(
  ( (array!78607 (arr!37933 (Array (_ BitVec 32) (_ BitVec 64))) (size!38470 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78606)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1217397 (= res!808548 (= (select (arr!37933 _keys!1208) i!673) k!934))))

(declare-fun b!1217398 () Bool)

(declare-fun res!808554 () Bool)

(assert (=> b!1217398 (=> (not res!808554) (not e!691191))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1217398 (= res!808554 (validMask!0 mask!1564))))

(declare-fun res!808558 () Bool)

(assert (=> start!101364 (=> (not res!808558) (not e!691191))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101364 (= res!808558 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38470 _keys!1208))))))

(assert (=> start!101364 e!691191))

(declare-fun tp_is_empty!30929 () Bool)

(assert (=> start!101364 tp_is_empty!30929))

(declare-fun array_inv!28784 (array!78606) Bool)

(assert (=> start!101364 (array_inv!28784 _keys!1208)))

(assert (=> start!101364 true))

(assert (=> start!101364 tp!91700))

(declare-datatypes ((V!46365 0))(
  ( (V!46366 (val!15521 Int)) )
))
(declare-datatypes ((ValueCell!14755 0))(
  ( (ValueCellFull!14755 (v!18176 V!46365)) (EmptyCell!14755) )
))
(declare-datatypes ((array!78608 0))(
  ( (array!78609 (arr!37934 (Array (_ BitVec 32) ValueCell!14755)) (size!38471 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78608)

(declare-fun e!691195 () Bool)

(declare-fun array_inv!28785 (array!78608) Bool)

(assert (=> start!101364 (and (array_inv!28785 _values!996) e!691195)))

(declare-fun b!1217399 () Bool)

(declare-fun e!691197 () Bool)

(declare-fun mapRes!48271 () Bool)

(assert (=> b!1217399 (= e!691195 (and e!691197 mapRes!48271))))

(declare-fun condMapEmpty!48271 () Bool)

(declare-fun mapDefault!48271 () ValueCell!14755)

