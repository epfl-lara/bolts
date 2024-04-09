; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133364 () Bool)

(assert start!133364)

(declare-fun e!868630 () Bool)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!103597 0))(
  ( (array!103598 (arr!49991 (Array (_ BitVec 32) (_ BitVec 64))) (size!50542 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103597)

(declare-datatypes ((V!59485 0))(
  ( (V!59486 (val!19313 Int)) )
))
(declare-datatypes ((ValueCell!18199 0))(
  ( (ValueCellFull!18199 (v!22061 V!59485)) (EmptyCell!18199) )
))
(declare-datatypes ((array!103599 0))(
  ( (array!103600 (arr!49992 (Array (_ BitVec 32) ValueCell!18199)) (size!50543 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103599)

(declare-fun b!1559029 () Bool)

(assert (=> b!1559029 (= e!868630 (and (= (size!50543 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50542 _keys!637) (size!50543 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011) (not (= (size!50542 _keys!637) (bvadd #b00000000000000000000000000000001 mask!947)))))))

(declare-fun res!1066275 () Bool)

(assert (=> start!133364 (=> (not res!1066275) (not e!868630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133364 (= res!1066275 (validMask!0 mask!947))))

(assert (=> start!133364 e!868630))

(assert (=> start!133364 true))

(declare-fun e!868628 () Bool)

(declare-fun array_inv!38785 (array!103599) Bool)

(assert (=> start!133364 (and (array_inv!38785 _values!487) e!868628)))

(declare-fun array_inv!38786 (array!103597) Bool)

(assert (=> start!133364 (array_inv!38786 _keys!637)))

(declare-fun mapNonEmpty!59049 () Bool)

(declare-fun mapRes!59049 () Bool)

(declare-fun tp!112705 () Bool)

(declare-fun e!868629 () Bool)

(assert (=> mapNonEmpty!59049 (= mapRes!59049 (and tp!112705 e!868629))))

(declare-fun mapKey!59049 () (_ BitVec 32))

(declare-fun mapValue!59049 () ValueCell!18199)

(declare-fun mapRest!59049 () (Array (_ BitVec 32) ValueCell!18199))

(assert (=> mapNonEmpty!59049 (= (arr!49992 _values!487) (store mapRest!59049 mapKey!59049 mapValue!59049))))

(declare-fun b!1559030 () Bool)

(declare-fun e!868631 () Bool)

(assert (=> b!1559030 (= e!868628 (and e!868631 mapRes!59049))))

(declare-fun condMapEmpty!59049 () Bool)

(declare-fun mapDefault!59049 () ValueCell!18199)

