; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131904 () Bool)

(assert start!131904)

(declare-fun b!1543676 () Bool)

(declare-fun res!1059188 () Bool)

(declare-fun e!859218 () Bool)

(assert (=> b!1543676 (=> (not res!1059188) (not e!859218))))

(declare-datatypes ((array!102897 0))(
  ( (array!102898 (arr!49646 (Array (_ BitVec 32) (_ BitVec 64))) (size!50197 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102897)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102897 (_ BitVec 32)) Bool)

(assert (=> b!1543676 (= res!1059188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapNonEmpty!58495 () Bool)

(declare-fun mapRes!58495 () Bool)

(declare-fun tp!111023 () Bool)

(declare-fun e!859221 () Bool)

(assert (=> mapNonEmpty!58495 (= mapRes!58495 (and tp!111023 e!859221))))

(declare-datatypes ((V!58925 0))(
  ( (V!58926 (val!19008 Int)) )
))
(declare-datatypes ((ValueCell!18020 0))(
  ( (ValueCellFull!18020 (v!21806 V!58925)) (EmptyCell!18020) )
))
(declare-datatypes ((array!102899 0))(
  ( (array!102900 (arr!49647 (Array (_ BitVec 32) ValueCell!18020)) (size!50198 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102899)

(declare-fun mapKey!58495 () (_ BitVec 32))

(declare-fun mapValue!58495 () ValueCell!18020)

(declare-fun mapRest!58495 () (Array (_ BitVec 32) ValueCell!18020))

(assert (=> mapNonEmpty!58495 (= (arr!49647 _values!470) (store mapRest!58495 mapKey!58495 mapValue!58495))))

(declare-fun mapIsEmpty!58495 () Bool)

(assert (=> mapIsEmpty!58495 mapRes!58495))

(declare-fun b!1543677 () Bool)

(declare-fun e!859219 () Bool)

(declare-fun tp_is_empty!37861 () Bool)

(assert (=> b!1543677 (= e!859219 tp_is_empty!37861)))

(declare-fun res!1059186 () Bool)

(assert (=> start!131904 (=> (not res!1059186) (not e!859218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131904 (= res!1059186 (validMask!0 mask!926))))

(assert (=> start!131904 e!859218))

(assert (=> start!131904 true))

(declare-fun e!859222 () Bool)

(declare-fun array_inv!38543 (array!102899) Bool)

(assert (=> start!131904 (and (array_inv!38543 _values!470) e!859222)))

(declare-fun array_inv!38544 (array!102897) Bool)

(assert (=> start!131904 (array_inv!38544 _keys!618)))

(declare-fun b!1543678 () Bool)

(assert (=> b!1543678 (= e!859222 (and e!859219 mapRes!58495))))

(declare-fun condMapEmpty!58495 () Bool)

(declare-fun mapDefault!58495 () ValueCell!18020)

