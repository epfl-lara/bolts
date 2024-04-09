; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!566 () Bool)

(assert start!566)

(declare-fun mapNonEmpty!146 () Bool)

(declare-fun mapRes!146 () Bool)

(declare-fun tp!386 () Bool)

(declare-fun e!1642 () Bool)

(assert (=> mapNonEmpty!146 (= mapRes!146 (and tp!386 e!1642))))

(declare-datatypes ((V!347 0))(
  ( (V!348 (val!69 Int)) )
))
(declare-datatypes ((ValueCell!47 0))(
  ( (ValueCellFull!47 (v!1156 V!347)) (EmptyCell!47) )
))
(declare-fun mapRest!146 () (Array (_ BitVec 32) ValueCell!47))

(declare-fun mapKey!146 () (_ BitVec 32))

(declare-fun mapValue!146 () ValueCell!47)

(declare-datatypes ((array!187 0))(
  ( (array!188 (arr!87 (Array (_ BitVec 32) ValueCell!47)) (size!149 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!187)

(assert (=> mapNonEmpty!146 (= (arr!87 _values!1492) (store mapRest!146 mapKey!146 mapValue!146))))

(declare-fun b!3429 () Bool)

(declare-fun res!5174 () Bool)

(declare-fun e!1640 () Bool)

(assert (=> b!3429 (=> (not res!5174) (not e!1640))))

(declare-datatypes ((array!189 0))(
  ( (array!190 (arr!88 (Array (_ BitVec 32) (_ BitVec 64))) (size!150 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!189)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!189 (_ BitVec 32)) Bool)

(assert (=> b!3429 (= res!5174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapIsEmpty!146 () Bool)

(assert (=> mapIsEmpty!146 mapRes!146))

(declare-fun b!3430 () Bool)

(declare-fun res!5176 () Bool)

(assert (=> b!3430 (=> (not res!5176) (not e!1640))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3430 (= res!5176 (and (= (size!149 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!150 _keys!1806) (size!149 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3431 () Bool)

(declare-fun e!1643 () Bool)

(declare-fun e!1641 () Bool)

(assert (=> b!3431 (= e!1643 (and e!1641 mapRes!146))))

(declare-fun condMapEmpty!146 () Bool)

(declare-fun mapDefault!146 () ValueCell!47)

