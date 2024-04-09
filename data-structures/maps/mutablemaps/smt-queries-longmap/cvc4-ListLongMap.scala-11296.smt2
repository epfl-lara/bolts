; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131716 () Bool)

(assert start!131716)

(declare-fun b!1541984 () Bool)

(declare-fun e!857808 () Bool)

(declare-fun tp_is_empty!37673 () Bool)

(assert (=> b!1541984 (= e!857808 tp_is_empty!37673)))

(declare-fun b!1541985 () Bool)

(declare-fun res!1058342 () Bool)

(declare-fun e!857812 () Bool)

(assert (=> b!1541985 (=> (not res!1058342) (not e!857812))))

(declare-datatypes ((array!102543 0))(
  ( (array!102544 (arr!49469 (Array (_ BitVec 32) (_ BitVec 64))) (size!50020 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102543)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58673 0))(
  ( (V!58674 (val!18914 Int)) )
))
(declare-datatypes ((ValueCell!17926 0))(
  ( (ValueCellFull!17926 (v!21712 V!58673)) (EmptyCell!17926) )
))
(declare-datatypes ((array!102545 0))(
  ( (array!102546 (arr!49470 (Array (_ BitVec 32) ValueCell!17926)) (size!50021 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102545)

(assert (=> b!1541985 (= res!1058342 (and (= (size!50021 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50020 _keys!618) (size!50021 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1058340 () Bool)

(assert (=> start!131716 (=> (not res!1058340) (not e!857812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131716 (= res!1058340 (validMask!0 mask!926))))

(assert (=> start!131716 e!857812))

(assert (=> start!131716 true))

(declare-fun e!857809 () Bool)

(declare-fun array_inv!38405 (array!102545) Bool)

(assert (=> start!131716 (and (array_inv!38405 _values!470) e!857809)))

(declare-fun array_inv!38406 (array!102543) Bool)

(assert (=> start!131716 (array_inv!38406 _keys!618)))

(declare-fun b!1541986 () Bool)

(declare-fun mapRes!58213 () Bool)

(assert (=> b!1541986 (= e!857809 (and e!857808 mapRes!58213))))

(declare-fun condMapEmpty!58213 () Bool)

(declare-fun mapDefault!58213 () ValueCell!17926)

