; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131722 () Bool)

(assert start!131722)

(declare-fun b!1542038 () Bool)

(declare-fun res!1058367 () Bool)

(declare-fun e!857853 () Bool)

(assert (=> b!1542038 (=> (not res!1058367) (not e!857853))))

(declare-datatypes ((array!102553 0))(
  ( (array!102554 (arr!49474 (Array (_ BitVec 32) (_ BitVec 64))) (size!50025 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102553)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102553 (_ BitVec 32)) Bool)

(assert (=> b!1542038 (= res!1058367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapIsEmpty!58222 () Bool)

(declare-fun mapRes!58222 () Bool)

(assert (=> mapIsEmpty!58222 mapRes!58222))

(declare-fun mapNonEmpty!58222 () Bool)

(declare-fun tp!110750 () Bool)

(declare-fun e!857857 () Bool)

(assert (=> mapNonEmpty!58222 (= mapRes!58222 (and tp!110750 e!857857))))

(declare-datatypes ((V!58681 0))(
  ( (V!58682 (val!18917 Int)) )
))
(declare-datatypes ((ValueCell!17929 0))(
  ( (ValueCellFull!17929 (v!21715 V!58681)) (EmptyCell!17929) )
))
(declare-fun mapValue!58222 () ValueCell!17929)

(declare-datatypes ((array!102555 0))(
  ( (array!102556 (arr!49475 (Array (_ BitVec 32) ValueCell!17929)) (size!50026 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102555)

(declare-fun mapRest!58222 () (Array (_ BitVec 32) ValueCell!17929))

(declare-fun mapKey!58222 () (_ BitVec 32))

(assert (=> mapNonEmpty!58222 (= (arr!49475 _values!470) (store mapRest!58222 mapKey!58222 mapValue!58222))))

(declare-fun res!1058369 () Bool)

(assert (=> start!131722 (=> (not res!1058369) (not e!857853))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131722 (= res!1058369 (validMask!0 mask!926))))

(assert (=> start!131722 e!857853))

(assert (=> start!131722 true))

(declare-fun e!857855 () Bool)

(declare-fun array_inv!38409 (array!102555) Bool)

(assert (=> start!131722 (and (array_inv!38409 _values!470) e!857855)))

(declare-fun array_inv!38410 (array!102553) Bool)

(assert (=> start!131722 (array_inv!38410 _keys!618)))

(declare-fun b!1542039 () Bool)

(declare-fun e!857854 () Bool)

(declare-fun tp_is_empty!37679 () Bool)

(assert (=> b!1542039 (= e!857854 tp_is_empty!37679)))

(declare-fun b!1542040 () Bool)

(assert (=> b!1542040 (= e!857855 (and e!857854 mapRes!58222))))

(declare-fun condMapEmpty!58222 () Bool)

(declare-fun mapDefault!58222 () ValueCell!17929)

