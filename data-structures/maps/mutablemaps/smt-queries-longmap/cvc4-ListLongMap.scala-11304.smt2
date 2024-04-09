; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131764 () Bool)

(assert start!131764)

(declare-fun res!1058558 () Bool)

(declare-fun e!858171 () Bool)

(assert (=> start!131764 (=> (not res!1058558) (not e!858171))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131764 (= res!1058558 (validMask!0 mask!926))))

(assert (=> start!131764 e!858171))

(assert (=> start!131764 true))

(declare-datatypes ((V!58737 0))(
  ( (V!58738 (val!18938 Int)) )
))
(declare-datatypes ((ValueCell!17950 0))(
  ( (ValueCellFull!17950 (v!21736 V!58737)) (EmptyCell!17950) )
))
(declare-datatypes ((array!102637 0))(
  ( (array!102638 (arr!49516 (Array (_ BitVec 32) ValueCell!17950)) (size!50067 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102637)

(declare-fun e!858170 () Bool)

(declare-fun array_inv!38451 (array!102637) Bool)

(assert (=> start!131764 (and (array_inv!38451 _values!470) e!858170)))

(declare-datatypes ((array!102639 0))(
  ( (array!102640 (arr!49517 (Array (_ BitVec 32) (_ BitVec 64))) (size!50068 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102639)

(declare-fun array_inv!38452 (array!102639) Bool)

(assert (=> start!131764 (array_inv!38452 _keys!618)))

(declare-fun b!1542416 () Bool)

(declare-fun res!1058556 () Bool)

(assert (=> b!1542416 (=> (not res!1058556) (not e!858171))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542416 (= res!1058556 (and (= (size!50067 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50068 _keys!618) (size!50067 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542417 () Bool)

(declare-fun e!858168 () Bool)

(declare-fun mapRes!58285 () Bool)

(assert (=> b!1542417 (= e!858170 (and e!858168 mapRes!58285))))

(declare-fun condMapEmpty!58285 () Bool)

(declare-fun mapDefault!58285 () ValueCell!17950)

