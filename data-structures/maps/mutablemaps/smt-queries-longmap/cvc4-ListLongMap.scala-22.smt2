; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!558 () Bool)

(assert start!558)

(declare-fun b!3357 () Bool)

(declare-fun e!1581 () Bool)

(declare-fun tp_is_empty!119 () Bool)

(assert (=> b!3357 (= e!1581 tp_is_empty!119)))

(declare-fun mapNonEmpty!134 () Bool)

(declare-fun mapRes!134 () Bool)

(declare-fun tp!374 () Bool)

(declare-fun e!1583 () Bool)

(assert (=> mapNonEmpty!134 (= mapRes!134 (and tp!374 e!1583))))

(declare-fun mapKey!134 () (_ BitVec 32))

(declare-datatypes ((V!335 0))(
  ( (V!336 (val!65 Int)) )
))
(declare-datatypes ((ValueCell!43 0))(
  ( (ValueCellFull!43 (v!1152 V!335)) (EmptyCell!43) )
))
(declare-fun mapRest!134 () (Array (_ BitVec 32) ValueCell!43))

(declare-fun mapValue!134 () ValueCell!43)

(declare-datatypes ((array!171 0))(
  ( (array!172 (arr!79 (Array (_ BitVec 32) ValueCell!43)) (size!141 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!171)

(assert (=> mapNonEmpty!134 (= (arr!79 _values!1492) (store mapRest!134 mapKey!134 mapValue!134))))

(declare-fun b!3358 () Bool)

(assert (=> b!3358 (= e!1583 tp_is_empty!119)))

(declare-fun b!3359 () Bool)

(declare-fun res!5138 () Bool)

(declare-fun e!1579 () Bool)

(assert (=> b!3359 (=> (not res!5138) (not e!1579))))

(declare-datatypes ((array!173 0))(
  ( (array!174 (arr!80 (Array (_ BitVec 32) (_ BitVec 64))) (size!142 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!173)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!173 (_ BitVec 32)) Bool)

(assert (=> b!3359 (= res!5138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapIsEmpty!134 () Bool)

(assert (=> mapIsEmpty!134 mapRes!134))

(declare-fun res!5139 () Bool)

(assert (=> start!558 (=> (not res!5139) (not e!1579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!558 (= res!5139 (validMask!0 mask!2250))))

(assert (=> start!558 e!1579))

(assert (=> start!558 true))

(declare-fun e!1580 () Bool)

(declare-fun array_inv!57 (array!171) Bool)

(assert (=> start!558 (and (array_inv!57 _values!1492) e!1580)))

(declare-fun array_inv!58 (array!173) Bool)

(assert (=> start!558 (array_inv!58 _keys!1806)))

(declare-fun b!3360 () Bool)

(declare-fun res!5140 () Bool)

(assert (=> b!3360 (=> (not res!5140) (not e!1579))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3360 (= res!5140 (and (= (size!141 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!142 _keys!1806) (size!141 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3361 () Bool)

(assert (=> b!3361 (= e!1580 (and e!1581 mapRes!134))))

(declare-fun condMapEmpty!134 () Bool)

(declare-fun mapDefault!134 () ValueCell!43)

