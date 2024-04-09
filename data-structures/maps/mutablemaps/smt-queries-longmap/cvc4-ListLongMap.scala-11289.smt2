; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131630 () Bool)

(assert start!131630)

(declare-fun b!1541464 () Bool)

(declare-fun e!857402 () Bool)

(declare-fun tp_is_empty!37631 () Bool)

(assert (=> b!1541464 (= e!857402 tp_is_empty!37631)))

(declare-fun res!1058073 () Bool)

(declare-fun e!857399 () Bool)

(assert (=> start!131630 (=> (not res!1058073) (not e!857399))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131630 (= res!1058073 (validMask!0 mask!926))))

(assert (=> start!131630 e!857399))

(assert (=> start!131630 true))

(declare-datatypes ((V!58617 0))(
  ( (V!58618 (val!18893 Int)) )
))
(declare-datatypes ((ValueCell!17905 0))(
  ( (ValueCellFull!17905 (v!21690 V!58617)) (EmptyCell!17905) )
))
(declare-datatypes ((array!102455 0))(
  ( (array!102456 (arr!49430 (Array (_ BitVec 32) ValueCell!17905)) (size!49981 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102455)

(declare-fun e!857400 () Bool)

(declare-fun array_inv!38375 (array!102455) Bool)

(assert (=> start!131630 (and (array_inv!38375 _values!470) e!857400)))

(declare-datatypes ((array!102457 0))(
  ( (array!102458 (arr!49431 (Array (_ BitVec 32) (_ BitVec 64))) (size!49982 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102457)

(declare-fun array_inv!38376 (array!102457) Bool)

(assert (=> start!131630 (array_inv!38376 _keys!618)))

(declare-fun b!1541465 () Bool)

(declare-fun mapRes!58135 () Bool)

(assert (=> b!1541465 (= e!857400 (and e!857402 mapRes!58135))))

(declare-fun condMapEmpty!58135 () Bool)

(declare-fun mapDefault!58135 () ValueCell!17905)

