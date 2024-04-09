; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131760 () Bool)

(assert start!131760)

(declare-fun res!1058539 () Bool)

(declare-fun e!858139 () Bool)

(assert (=> start!131760 (=> (not res!1058539) (not e!858139))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131760 (= res!1058539 (validMask!0 mask!926))))

(assert (=> start!131760 e!858139))

(assert (=> start!131760 true))

(declare-datatypes ((V!58733 0))(
  ( (V!58734 (val!18936 Int)) )
))
(declare-datatypes ((ValueCell!17948 0))(
  ( (ValueCellFull!17948 (v!21734 V!58733)) (EmptyCell!17948) )
))
(declare-datatypes ((array!102629 0))(
  ( (array!102630 (arr!49512 (Array (_ BitVec 32) ValueCell!17948)) (size!50063 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102629)

(declare-fun e!858138 () Bool)

(declare-fun array_inv!38447 (array!102629) Bool)

(assert (=> start!131760 (and (array_inv!38447 _values!470) e!858138)))

(declare-datatypes ((array!102631 0))(
  ( (array!102632 (arr!49513 (Array (_ BitVec 32) (_ BitVec 64))) (size!50064 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102631)

(declare-fun array_inv!38448 (array!102631) Bool)

(assert (=> start!131760 (array_inv!38448 _keys!618)))

(declare-fun b!1542380 () Bool)

(declare-fun res!1058540 () Bool)

(assert (=> b!1542380 (=> (not res!1058540) (not e!858139))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102631 (_ BitVec 32)) Bool)

(assert (=> b!1542380 (= res!1058540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542381 () Bool)

(declare-fun e!858140 () Bool)

(declare-fun tp_is_empty!37717 () Bool)

(assert (=> b!1542381 (= e!858140 tp_is_empty!37717)))

(declare-fun b!1542382 () Bool)

(declare-fun e!858141 () Bool)

(declare-fun mapRes!58279 () Bool)

(assert (=> b!1542382 (= e!858138 (and e!858141 mapRes!58279))))

(declare-fun condMapEmpty!58279 () Bool)

(declare-fun mapDefault!58279 () ValueCell!17948)

