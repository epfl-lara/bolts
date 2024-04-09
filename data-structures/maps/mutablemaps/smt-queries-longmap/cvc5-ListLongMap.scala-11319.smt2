; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131850 () Bool)

(assert start!131850)

(declare-fun res!1058943 () Bool)

(declare-fun e!858813 () Bool)

(assert (=> start!131850 (=> (not res!1058943) (not e!858813))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131850 (= res!1058943 (validMask!0 mask!926))))

(assert (=> start!131850 e!858813))

(assert (=> start!131850 true))

(declare-datatypes ((V!58853 0))(
  ( (V!58854 (val!18981 Int)) )
))
(declare-datatypes ((ValueCell!17993 0))(
  ( (ValueCellFull!17993 (v!21779 V!58853)) (EmptyCell!17993) )
))
(declare-datatypes ((array!102793 0))(
  ( (array!102794 (arr!49594 (Array (_ BitVec 32) ValueCell!17993)) (size!50145 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102793)

(declare-fun e!858815 () Bool)

(declare-fun array_inv!38507 (array!102793) Bool)

(assert (=> start!131850 (and (array_inv!38507 _values!470) e!858815)))

(declare-datatypes ((array!102795 0))(
  ( (array!102796 (arr!49595 (Array (_ BitVec 32) (_ BitVec 64))) (size!50146 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102795)

(declare-fun array_inv!38508 (array!102795) Bool)

(assert (=> start!131850 (array_inv!38508 _keys!618)))

(declare-fun b!1543190 () Bool)

(declare-fun res!1058945 () Bool)

(assert (=> b!1543190 (=> (not res!1058945) (not e!858813))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1543190 (= res!1058945 (and (= (size!50145 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50146 _keys!618) (size!50145 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!58414 () Bool)

(declare-fun mapRes!58414 () Bool)

(declare-fun tp!110942 () Bool)

(declare-fun e!858816 () Bool)

(assert (=> mapNonEmpty!58414 (= mapRes!58414 (and tp!110942 e!858816))))

(declare-fun mapValue!58414 () ValueCell!17993)

(declare-fun mapKey!58414 () (_ BitVec 32))

(declare-fun mapRest!58414 () (Array (_ BitVec 32) ValueCell!17993))

(assert (=> mapNonEmpty!58414 (= (arr!49594 _values!470) (store mapRest!58414 mapKey!58414 mapValue!58414))))

(declare-fun b!1543191 () Bool)

(declare-fun e!858817 () Bool)

(assert (=> b!1543191 (= e!858815 (and e!858817 mapRes!58414))))

(declare-fun condMapEmpty!58414 () Bool)

(declare-fun mapDefault!58414 () ValueCell!17993)

