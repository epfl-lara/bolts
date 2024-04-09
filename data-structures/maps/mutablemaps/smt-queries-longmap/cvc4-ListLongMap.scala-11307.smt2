; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131782 () Bool)

(assert start!131782)

(declare-fun mapNonEmpty!58312 () Bool)

(declare-fun mapRes!58312 () Bool)

(declare-fun tp!110840 () Bool)

(declare-fun e!858307 () Bool)

(assert (=> mapNonEmpty!58312 (= mapRes!58312 (and tp!110840 e!858307))))

(declare-fun mapKey!58312 () (_ BitVec 32))

(declare-datatypes ((V!58761 0))(
  ( (V!58762 (val!18947 Int)) )
))
(declare-datatypes ((ValueCell!17959 0))(
  ( (ValueCellFull!17959 (v!21745 V!58761)) (EmptyCell!17959) )
))
(declare-fun mapValue!58312 () ValueCell!17959)

(declare-datatypes ((array!102673 0))(
  ( (array!102674 (arr!49534 (Array (_ BitVec 32) ValueCell!17959)) (size!50085 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102673)

(declare-fun mapRest!58312 () (Array (_ BitVec 32) ValueCell!17959))

(assert (=> mapNonEmpty!58312 (= (arr!49534 _values!470) (store mapRest!58312 mapKey!58312 mapValue!58312))))

(declare-fun b!1542578 () Bool)

(declare-fun res!1058638 () Bool)

(declare-fun e!858305 () Bool)

(assert (=> b!1542578 (=> (not res!1058638) (not e!858305))))

(declare-datatypes ((array!102675 0))(
  ( (array!102676 (arr!49535 (Array (_ BitVec 32) (_ BitVec 64))) (size!50086 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102675)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102675 (_ BitVec 32)) Bool)

(assert (=> b!1542578 (= res!1058638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapIsEmpty!58312 () Bool)

(assert (=> mapIsEmpty!58312 mapRes!58312))

(declare-fun b!1542579 () Bool)

(declare-fun tp_is_empty!37739 () Bool)

(assert (=> b!1542579 (= e!858307 tp_is_empty!37739)))

(declare-fun res!1058637 () Bool)

(assert (=> start!131782 (=> (not res!1058637) (not e!858305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131782 (= res!1058637 (validMask!0 mask!926))))

(assert (=> start!131782 e!858305))

(assert (=> start!131782 true))

(declare-fun e!858303 () Bool)

(declare-fun array_inv!38463 (array!102673) Bool)

(assert (=> start!131782 (and (array_inv!38463 _values!470) e!858303)))

(declare-fun array_inv!38464 (array!102675) Bool)

(assert (=> start!131782 (array_inv!38464 _keys!618)))

(declare-fun b!1542580 () Bool)

(declare-fun res!1058639 () Bool)

(assert (=> b!1542580 (=> (not res!1058639) (not e!858305))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542580 (= res!1058639 (and (= (size!50085 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50086 _keys!618) (size!50085 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542581 () Bool)

(declare-fun e!858304 () Bool)

(assert (=> b!1542581 (= e!858303 (and e!858304 mapRes!58312))))

(declare-fun condMapEmpty!58312 () Bool)

(declare-fun mapDefault!58312 () ValueCell!17959)

