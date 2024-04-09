; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131890 () Bool)

(assert start!131890)

(declare-fun mapNonEmpty!58474 () Bool)

(declare-fun mapRes!58474 () Bool)

(declare-fun tp!111002 () Bool)

(declare-fun e!859113 () Bool)

(assert (=> mapNonEmpty!58474 (= mapRes!58474 (and tp!111002 e!859113))))

(declare-datatypes ((V!58905 0))(
  ( (V!58906 (val!19001 Int)) )
))
(declare-datatypes ((ValueCell!18013 0))(
  ( (ValueCellFull!18013 (v!21799 V!58905)) (EmptyCell!18013) )
))
(declare-fun mapValue!58474 () ValueCell!18013)

(declare-fun mapRest!58474 () (Array (_ BitVec 32) ValueCell!18013))

(declare-datatypes ((array!102871 0))(
  ( (array!102872 (arr!49633 (Array (_ BitVec 32) ValueCell!18013)) (size!50184 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102871)

(declare-fun mapKey!58474 () (_ BitVec 32))

(assert (=> mapNonEmpty!58474 (= (arr!49633 _values!470) (store mapRest!58474 mapKey!58474 mapValue!58474))))

(declare-fun res!1059123 () Bool)

(declare-fun e!859114 () Bool)

(assert (=> start!131890 (=> (not res!1059123) (not e!859114))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131890 (= res!1059123 (validMask!0 mask!926))))

(assert (=> start!131890 e!859114))

(assert (=> start!131890 true))

(declare-fun e!859115 () Bool)

(declare-fun array_inv!38531 (array!102871) Bool)

(assert (=> start!131890 (and (array_inv!38531 _values!470) e!859115)))

(declare-datatypes ((array!102873 0))(
  ( (array!102874 (arr!49634 (Array (_ BitVec 32) (_ BitVec 64))) (size!50185 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102873)

(declare-fun array_inv!38532 (array!102873) Bool)

(assert (=> start!131890 (array_inv!38532 _keys!618)))

(declare-fun b!1543550 () Bool)

(declare-fun e!859116 () Bool)

(assert (=> b!1543550 (= e!859115 (and e!859116 mapRes!58474))))

(declare-fun condMapEmpty!58474 () Bool)

(declare-fun mapDefault!58474 () ValueCell!18013)

