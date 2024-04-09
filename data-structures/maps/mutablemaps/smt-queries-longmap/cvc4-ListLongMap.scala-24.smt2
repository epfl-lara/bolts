; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!570 () Bool)

(assert start!570)

(declare-fun b!3465 () Bool)

(declare-fun res!5193 () Bool)

(declare-fun e!1672 () Bool)

(assert (=> b!3465 (=> (not res!5193) (not e!1672))))

(declare-datatypes ((array!195 0))(
  ( (array!196 (arr!91 (Array (_ BitVec 32) (_ BitVec 64))) (size!153 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!195)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!195 (_ BitVec 32)) Bool)

(assert (=> b!3465 (= res!5193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun res!5194 () Bool)

(assert (=> start!570 (=> (not res!5194) (not e!1672))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!570 (= res!5194 (validMask!0 mask!2250))))

(assert (=> start!570 e!1672))

(assert (=> start!570 true))

(declare-datatypes ((V!351 0))(
  ( (V!352 (val!71 Int)) )
))
(declare-datatypes ((ValueCell!49 0))(
  ( (ValueCellFull!49 (v!1158 V!351)) (EmptyCell!49) )
))
(declare-datatypes ((array!197 0))(
  ( (array!198 (arr!92 (Array (_ BitVec 32) ValueCell!49)) (size!154 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!197)

(declare-fun e!1671 () Bool)

(declare-fun array_inv!65 (array!197) Bool)

(assert (=> start!570 (and (array_inv!65 _values!1492) e!1671)))

(declare-fun array_inv!66 (array!195) Bool)

(assert (=> start!570 (array_inv!66 _keys!1806)))

(declare-fun b!3466 () Bool)

(declare-fun e!1673 () Bool)

(declare-fun tp_is_empty!131 () Bool)

(assert (=> b!3466 (= e!1673 tp_is_empty!131)))

(declare-fun b!3467 () Bool)

(declare-fun res!5192 () Bool)

(assert (=> b!3467 (=> (not res!5192) (not e!1672))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3467 (= res!5192 (and (= (size!154 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!153 _keys!1806) (size!154 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3468 () Bool)

(declare-fun e!1669 () Bool)

(assert (=> b!3468 (= e!1669 tp_is_empty!131)))

(declare-fun b!3469 () Bool)

(assert (=> b!3469 (= e!1672 false)))

(declare-fun lt!480 () Bool)

(declare-datatypes ((List!55 0))(
  ( (Nil!52) (Cons!51 (h!617 (_ BitVec 64)) (t!2182 List!55)) )
))
(declare-fun arrayNoDuplicates!0 (array!195 (_ BitVec 32) List!55) Bool)

(assert (=> b!3469 (= lt!480 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!52))))

(declare-fun b!3470 () Bool)

(declare-fun mapRes!152 () Bool)

(assert (=> b!3470 (= e!1671 (and e!1669 mapRes!152))))

(declare-fun condMapEmpty!152 () Bool)

(declare-fun mapDefault!152 () ValueCell!49)

