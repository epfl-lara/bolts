; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131880 () Bool)

(assert start!131880)

(declare-fun res!1059078 () Bool)

(declare-fun e!859040 () Bool)

(assert (=> start!131880 (=> (not res!1059078) (not e!859040))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131880 (= res!1059078 (validMask!0 mask!926))))

(assert (=> start!131880 e!859040))

(assert (=> start!131880 true))

(declare-datatypes ((V!58893 0))(
  ( (V!58894 (val!18996 Int)) )
))
(declare-datatypes ((ValueCell!18008 0))(
  ( (ValueCellFull!18008 (v!21794 V!58893)) (EmptyCell!18008) )
))
(declare-datatypes ((array!102851 0))(
  ( (array!102852 (arr!49623 (Array (_ BitVec 32) ValueCell!18008)) (size!50174 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102851)

(declare-fun e!859042 () Bool)

(declare-fun array_inv!38525 (array!102851) Bool)

(assert (=> start!131880 (and (array_inv!38525 _values!470) e!859042)))

(declare-datatypes ((array!102853 0))(
  ( (array!102854 (arr!49624 (Array (_ BitVec 32) (_ BitVec 64))) (size!50175 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102853)

(declare-fun array_inv!38526 (array!102853) Bool)

(assert (=> start!131880 (array_inv!38526 _keys!618)))

(declare-fun b!1543460 () Bool)

(declare-fun e!859038 () Bool)

(declare-fun tp_is_empty!37837 () Bool)

(assert (=> b!1543460 (= e!859038 tp_is_empty!37837)))

(declare-fun b!1543461 () Bool)

(declare-fun e!859041 () Bool)

(assert (=> b!1543461 (= e!859041 tp_is_empty!37837)))

(declare-fun mapIsEmpty!58459 () Bool)

(declare-fun mapRes!58459 () Bool)

(assert (=> mapIsEmpty!58459 mapRes!58459))

(declare-fun b!1543462 () Bool)

(assert (=> b!1543462 (= e!859042 (and e!859041 mapRes!58459))))

(declare-fun condMapEmpty!58459 () Bool)

(declare-fun mapDefault!58459 () ValueCell!18008)

