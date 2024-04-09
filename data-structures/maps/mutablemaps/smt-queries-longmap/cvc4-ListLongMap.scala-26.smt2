; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!582 () Bool)

(assert start!582)

(declare-fun b!3581 () Bool)

(declare-fun res!5255 () Bool)

(declare-fun e!1759 () Bool)

(assert (=> b!3581 (=> (not res!5255) (not e!1759))))

(declare-datatypes ((array!219 0))(
  ( (array!220 (arr!103 (Array (_ BitVec 32) (_ BitVec 64))) (size!165 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!219)

(declare-datatypes ((List!61 0))(
  ( (Nil!58) (Cons!57 (h!623 (_ BitVec 64)) (t!2188 List!61)) )
))
(declare-fun arrayNoDuplicates!0 (array!219 (_ BitVec 32) List!61) Bool)

(assert (=> b!3581 (= res!5255 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!58))))

(declare-fun b!3582 () Bool)

(declare-fun e!1762 () Bool)

(declare-fun tp_is_empty!143 () Bool)

(assert (=> b!3582 (= e!1762 tp_is_empty!143)))

(declare-fun b!3583 () Bool)

(declare-fun res!5257 () Bool)

(assert (=> b!3583 (=> (not res!5257) (not e!1759))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!219 (_ BitVec 32)) Bool)

(assert (=> b!3583 (= res!5257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapNonEmpty!170 () Bool)

(declare-fun mapRes!170 () Bool)

(declare-fun tp!410 () Bool)

(assert (=> mapNonEmpty!170 (= mapRes!170 (and tp!410 e!1762))))

(declare-fun mapKey!170 () (_ BitVec 32))

(declare-datatypes ((V!367 0))(
  ( (V!368 (val!77 Int)) )
))
(declare-datatypes ((ValueCell!55 0))(
  ( (ValueCellFull!55 (v!1164 V!367)) (EmptyCell!55) )
))
(declare-fun mapRest!170 () (Array (_ BitVec 32) ValueCell!55))

(declare-datatypes ((array!221 0))(
  ( (array!222 (arr!104 (Array (_ BitVec 32) ValueCell!55)) (size!166 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!221)

(declare-fun mapValue!170 () ValueCell!55)

(assert (=> mapNonEmpty!170 (= (arr!104 _values!1492) (store mapRest!170 mapKey!170 mapValue!170))))

(declare-fun b!3584 () Bool)

(declare-fun e!1763 () Bool)

(declare-fun e!1761 () Bool)

(assert (=> b!3584 (= e!1763 (and e!1761 mapRes!170))))

(declare-fun condMapEmpty!170 () Bool)

(declare-fun mapDefault!170 () ValueCell!55)

