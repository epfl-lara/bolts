; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7416 () Bool)

(assert start!7416)

(declare-fun b!47582 () Bool)

(declare-fun res!27669 () Bool)

(declare-fun e!30489 () Bool)

(assert (=> b!47582 (=> (not res!27669) (not e!30489))))

(declare-datatypes ((array!3146 0))(
  ( (array!3147 (arr!1507 (Array (_ BitVec 32) (_ BitVec 64))) (size!1729 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3146)

(declare-fun mask!2458 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3146 (_ BitVec 32)) Bool)

(assert (=> b!47582 (= res!27669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458))))

(declare-fun b!47583 () Bool)

(declare-fun e!30487 () Bool)

(declare-fun tp_is_empty!2041 () Bool)

(assert (=> b!47583 (= e!30487 tp_is_empty!2041)))

(declare-fun b!47584 () Bool)

(declare-fun e!30486 () Bool)

(assert (=> b!47584 (= e!30486 tp_is_empty!2041)))

(declare-fun b!47585 () Bool)

(declare-fun e!30488 () Bool)

(declare-fun mapRes!2105 () Bool)

(assert (=> b!47585 (= e!30488 (and e!30487 mapRes!2105))))

(declare-fun condMapEmpty!2105 () Bool)

(declare-datatypes ((V!2455 0))(
  ( (V!2456 (val!1059 Int)) )
))
(declare-datatypes ((ValueCell!731 0))(
  ( (ValueCellFull!731 (v!2119 V!2455)) (EmptyCell!731) )
))
(declare-datatypes ((array!3148 0))(
  ( (array!3149 (arr!1508 (Array (_ BitVec 32) ValueCell!731)) (size!1730 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3148)

(declare-fun mapDefault!2105 () ValueCell!731)

