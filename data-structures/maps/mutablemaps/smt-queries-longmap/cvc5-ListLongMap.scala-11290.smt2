; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131638 () Bool)

(assert start!131638)

(declare-fun res!1058081 () Bool)

(declare-fun e!857419 () Bool)

(assert (=> start!131638 (=> (not res!1058081) (not e!857419))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131638 (= res!1058081 (validMask!0 mask!926))))

(assert (=> start!131638 e!857419))

(assert (=> start!131638 true))

(declare-datatypes ((V!58621 0))(
  ( (V!58622 (val!18894 Int)) )
))
(declare-datatypes ((ValueCell!17906 0))(
  ( (ValueCellFull!17906 (v!21691 V!58621)) (EmptyCell!17906) )
))
(declare-datatypes ((array!102461 0))(
  ( (array!102462 (arr!49432 (Array (_ BitVec 32) ValueCell!17906)) (size!49983 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102461)

(declare-fun e!857421 () Bool)

(declare-fun array_inv!38377 (array!102461) Bool)

(assert (=> start!131638 (and (array_inv!38377 _values!470) e!857421)))

(declare-datatypes ((array!102463 0))(
  ( (array!102464 (arr!49433 (Array (_ BitVec 32) (_ BitVec 64))) (size!49984 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102463)

(declare-fun array_inv!38378 (array!102463) Bool)

(assert (=> start!131638 (array_inv!38378 _keys!618)))

(declare-fun b!1541488 () Bool)

(declare-fun res!1058082 () Bool)

(assert (=> b!1541488 (=> (not res!1058082) (not e!857419))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1541488 (= res!1058082 (and (= (size!49983 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!49984 _keys!618) (size!49983 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1541489 () Bool)

(declare-fun e!857423 () Bool)

(declare-fun tp_is_empty!37633 () Bool)

(assert (=> b!1541489 (= e!857423 tp_is_empty!37633)))

(declare-fun b!1541490 () Bool)

(declare-fun e!857422 () Bool)

(declare-fun mapRes!58141 () Bool)

(assert (=> b!1541490 (= e!857421 (and e!857422 mapRes!58141))))

(declare-fun condMapEmpty!58141 () Bool)

(declare-fun mapDefault!58141 () ValueCell!17906)

