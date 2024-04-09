; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97524 () Bool)

(assert start!97524)

(declare-fun b!1112728 () Bool)

(declare-fun res!742670 () Bool)

(declare-fun e!634417 () Bool)

(assert (=> b!1112728 (=> (not res!742670) (not e!634417))))

(declare-datatypes ((array!72294 0))(
  ( (array!72295 (arr!34796 (Array (_ BitVec 32) (_ BitVec 64))) (size!35333 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72294)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1112728 (= res!742670 (= (select (arr!34796 _keys!1208) i!673) k!934))))

(declare-fun b!1112729 () Bool)

(declare-fun e!634420 () Bool)

(declare-fun e!634421 () Bool)

(declare-fun mapRes!43396 () Bool)

(assert (=> b!1112729 (= e!634420 (and e!634421 mapRes!43396))))

(declare-fun condMapEmpty!43396 () Bool)

(declare-datatypes ((V!42085 0))(
  ( (V!42086 (val!13916 Int)) )
))
(declare-datatypes ((ValueCell!13150 0))(
  ( (ValueCellFull!13150 (v!16550 V!42085)) (EmptyCell!13150) )
))
(declare-datatypes ((array!72296 0))(
  ( (array!72297 (arr!34797 (Array (_ BitVec 32) ValueCell!13150)) (size!35334 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72296)

(declare-fun mapDefault!43396 () ValueCell!13150)

