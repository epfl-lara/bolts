; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131652 () Bool)

(assert start!131652)

(declare-fun mapNonEmpty!58153 () Bool)

(declare-fun mapRes!58153 () Bool)

(declare-fun tp!110681 () Bool)

(declare-fun e!857482 () Bool)

(assert (=> mapNonEmpty!58153 (= mapRes!58153 (and tp!110681 e!857482))))

(declare-fun mapKey!58153 () (_ BitVec 32))

(declare-datatypes ((V!58629 0))(
  ( (V!58630 (val!18897 Int)) )
))
(declare-datatypes ((ValueCell!17909 0))(
  ( (ValueCellFull!17909 (v!21694 V!58629)) (EmptyCell!17909) )
))
(declare-fun mapRest!58153 () (Array (_ BitVec 32) ValueCell!17909))

(declare-datatypes ((array!102475 0))(
  ( (array!102476 (arr!49438 (Array (_ BitVec 32) ValueCell!17909)) (size!49989 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102475)

(declare-fun mapValue!58153 () ValueCell!17909)

(assert (=> mapNonEmpty!58153 (= (arr!49438 _values!470) (store mapRest!58153 mapKey!58153 mapValue!58153))))

(declare-fun b!1541562 () Bool)

(declare-fun e!857481 () Bool)

(declare-fun tp_is_empty!37639 () Bool)

(assert (=> b!1541562 (= e!857481 tp_is_empty!37639)))

(declare-fun b!1541563 () Bool)

(declare-fun e!857479 () Bool)

(assert (=> b!1541563 (= e!857479 (and e!857481 mapRes!58153))))

(declare-fun condMapEmpty!58153 () Bool)

(declare-fun mapDefault!58153 () ValueCell!17909)

