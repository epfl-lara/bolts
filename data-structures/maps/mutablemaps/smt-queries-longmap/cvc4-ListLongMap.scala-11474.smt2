; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133678 () Bool)

(assert start!133678)

(declare-fun b!1562543 () Bool)

(declare-fun e!870760 () Bool)

(declare-fun tp_is_empty!38729 () Bool)

(assert (=> b!1562543 (= e!870760 tp_is_empty!38729)))

(declare-fun res!1068396 () Bool)

(declare-fun e!870758 () Bool)

(assert (=> start!133678 (=> (not res!1068396) (not e!870758))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133678 (= res!1068396 (validMask!0 mask!947))))

(assert (=> start!133678 e!870758))

(assert (=> start!133678 true))

(declare-datatypes ((V!59845 0))(
  ( (V!59846 (val!19448 Int)) )
))
(declare-datatypes ((ValueCell!18334 0))(
  ( (ValueCellFull!18334 (v!22197 V!59845)) (EmptyCell!18334) )
))
(declare-datatypes ((array!104123 0))(
  ( (array!104124 (arr!50249 (Array (_ BitVec 32) ValueCell!18334)) (size!50800 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104123)

(declare-fun e!870761 () Bool)

(declare-fun array_inv!38983 (array!104123) Bool)

(assert (=> start!133678 (and (array_inv!38983 _values!487) e!870761)))

(declare-datatypes ((array!104125 0))(
  ( (array!104126 (arr!50250 (Array (_ BitVec 32) (_ BitVec 64))) (size!50801 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104125)

(declare-fun array_inv!38984 (array!104125) Bool)

(assert (=> start!133678 (array_inv!38984 _keys!637)))

(declare-fun b!1562544 () Bool)

(declare-fun res!1068397 () Bool)

(assert (=> b!1562544 (=> (not res!1068397) (not e!870758))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1562544 (= res!1068397 (and (= (size!50800 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50801 _keys!637) (size!50800 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562545 () Bool)

(declare-fun e!870759 () Bool)

(declare-fun mapRes!59469 () Bool)

(assert (=> b!1562545 (= e!870761 (and e!870759 mapRes!59469))))

(declare-fun condMapEmpty!59469 () Bool)

(declare-fun mapDefault!59469 () ValueCell!18334)

