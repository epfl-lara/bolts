; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131620 () Bool)

(assert start!131620)

(declare-fun res!1058058 () Bool)

(declare-fun e!857324 () Bool)

(assert (=> start!131620 (=> (not res!1058058) (not e!857324))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131620 (= res!1058058 (validMask!0 mask!926))))

(assert (=> start!131620 e!857324))

(assert (=> start!131620 true))

(declare-datatypes ((V!58605 0))(
  ( (V!58606 (val!18888 Int)) )
))
(declare-datatypes ((ValueCell!17900 0))(
  ( (ValueCellFull!17900 (v!21685 V!58605)) (EmptyCell!17900) )
))
(declare-datatypes ((array!102435 0))(
  ( (array!102436 (arr!49420 (Array (_ BitVec 32) ValueCell!17900)) (size!49971 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102435)

(declare-fun e!857326 () Bool)

(declare-fun array_inv!38365 (array!102435) Bool)

(assert (=> start!131620 (and (array_inv!38365 _values!470) e!857326)))

(declare-datatypes ((array!102437 0))(
  ( (array!102438 (arr!49421 (Array (_ BitVec 32) (_ BitVec 64))) (size!49972 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102437)

(declare-fun array_inv!38366 (array!102437) Bool)

(assert (=> start!131620 (array_inv!38366 _keys!618)))

(declare-fun mapIsEmpty!58120 () Bool)

(declare-fun mapRes!58120 () Bool)

(assert (=> mapIsEmpty!58120 mapRes!58120))

(declare-fun b!1541404 () Bool)

(declare-fun e!857325 () Bool)

(assert (=> b!1541404 (= e!857326 (and e!857325 mapRes!58120))))

(declare-fun condMapEmpty!58120 () Bool)

(declare-fun mapDefault!58120 () ValueCell!17900)

