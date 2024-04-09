; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131784 () Bool)

(assert start!131784)

(declare-fun mapNonEmpty!58315 () Bool)

(declare-fun mapRes!58315 () Bool)

(declare-fun tp!110843 () Bool)

(declare-fun e!858319 () Bool)

(assert (=> mapNonEmpty!58315 (= mapRes!58315 (and tp!110843 e!858319))))

(declare-datatypes ((V!58765 0))(
  ( (V!58766 (val!18948 Int)) )
))
(declare-datatypes ((ValueCell!17960 0))(
  ( (ValueCellFull!17960 (v!21746 V!58765)) (EmptyCell!17960) )
))
(declare-fun mapValue!58315 () ValueCell!17960)

(declare-datatypes ((array!102677 0))(
  ( (array!102678 (arr!49536 (Array (_ BitVec 32) ValueCell!17960)) (size!50087 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102677)

(declare-fun mapKey!58315 () (_ BitVec 32))

(declare-fun mapRest!58315 () (Array (_ BitVec 32) ValueCell!17960))

(assert (=> mapNonEmpty!58315 (= (arr!49536 _values!470) (store mapRest!58315 mapKey!58315 mapValue!58315))))

(declare-fun b!1542596 () Bool)

(declare-fun e!858320 () Bool)

(declare-fun tp_is_empty!37741 () Bool)

(assert (=> b!1542596 (= e!858320 tp_is_empty!37741)))

(declare-fun b!1542597 () Bool)

(assert (=> b!1542597 (= e!858319 tp_is_empty!37741)))

(declare-fun b!1542598 () Bool)

(declare-fun res!1058646 () Bool)

(declare-fun e!858318 () Bool)

(assert (=> b!1542598 (=> (not res!1058646) (not e!858318))))

(declare-datatypes ((array!102679 0))(
  ( (array!102680 (arr!49537 (Array (_ BitVec 32) (_ BitVec 64))) (size!50088 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102679)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1542598 (= res!1058646 (and (= (size!50087 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50088 _keys!618) (size!50087 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542599 () Bool)

(declare-fun res!1058647 () Bool)

(assert (=> b!1542599 (=> (not res!1058647) (not e!858318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102679 (_ BitVec 32)) Bool)

(assert (=> b!1542599 (= res!1058647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542600 () Bool)

(declare-fun e!858321 () Bool)

(assert (=> b!1542600 (= e!858321 (and e!858320 mapRes!58315))))

(declare-fun condMapEmpty!58315 () Bool)

(declare-fun mapDefault!58315 () ValueCell!17960)

