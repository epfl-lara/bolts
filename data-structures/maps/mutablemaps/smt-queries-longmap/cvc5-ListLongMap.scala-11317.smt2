; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131838 () Bool)

(assert start!131838)

(declare-fun b!1543082 () Bool)

(declare-fun e!858727 () Bool)

(declare-fun tp_is_empty!37795 () Bool)

(assert (=> b!1543082 (= e!858727 tp_is_empty!37795)))

(declare-fun res!1058890 () Bool)

(declare-fun e!858725 () Bool)

(assert (=> start!131838 (=> (not res!1058890) (not e!858725))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131838 (= res!1058890 (validMask!0 mask!926))))

(assert (=> start!131838 e!858725))

(assert (=> start!131838 true))

(declare-datatypes ((V!58837 0))(
  ( (V!58838 (val!18975 Int)) )
))
(declare-datatypes ((ValueCell!17987 0))(
  ( (ValueCellFull!17987 (v!21773 V!58837)) (EmptyCell!17987) )
))
(declare-datatypes ((array!102773 0))(
  ( (array!102774 (arr!49584 (Array (_ BitVec 32) ValueCell!17987)) (size!50135 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102773)

(declare-fun e!858723 () Bool)

(declare-fun array_inv!38501 (array!102773) Bool)

(assert (=> start!131838 (and (array_inv!38501 _values!470) e!858723)))

(declare-datatypes ((array!102775 0))(
  ( (array!102776 (arr!49585 (Array (_ BitVec 32) (_ BitVec 64))) (size!50136 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102775)

(declare-fun array_inv!38502 (array!102775) Bool)

(assert (=> start!131838 (array_inv!38502 _keys!618)))

(declare-fun mapIsEmpty!58396 () Bool)

(declare-fun mapRes!58396 () Bool)

(assert (=> mapIsEmpty!58396 mapRes!58396))

(declare-fun mapNonEmpty!58396 () Bool)

(declare-fun tp!110924 () Bool)

(declare-fun e!858724 () Bool)

(assert (=> mapNonEmpty!58396 (= mapRes!58396 (and tp!110924 e!858724))))

(declare-fun mapKey!58396 () (_ BitVec 32))

(declare-fun mapRest!58396 () (Array (_ BitVec 32) ValueCell!17987))

(declare-fun mapValue!58396 () ValueCell!17987)

(assert (=> mapNonEmpty!58396 (= (arr!49584 _values!470) (store mapRest!58396 mapKey!58396 mapValue!58396))))

(declare-fun b!1543083 () Bool)

(assert (=> b!1543083 (= e!858723 (and e!858727 mapRes!58396))))

(declare-fun condMapEmpty!58396 () Bool)

(declare-fun mapDefault!58396 () ValueCell!17987)

