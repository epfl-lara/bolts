; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108372 () Bool)

(assert start!108372)

(declare-fun mapNonEmpty!51836 () Bool)

(declare-fun mapRes!51836 () Bool)

(declare-fun tp!98811 () Bool)

(declare-fun e!730465 () Bool)

(assert (=> mapNonEmpty!51836 (= mapRes!51836 (and tp!98811 e!730465))))

(declare-datatypes ((V!49801 0))(
  ( (V!49802 (val!16836 Int)) )
))
(declare-datatypes ((ValueCell!15863 0))(
  ( (ValueCellFull!15863 (v!19434 V!49801)) (EmptyCell!15863) )
))
(declare-fun mapRest!51836 () (Array (_ BitVec 32) ValueCell!15863))

(declare-fun mapValue!51836 () ValueCell!15863)

(declare-fun mapKey!51836 () (_ BitVec 32))

(declare-datatypes ((array!84085 0))(
  ( (array!84086 (arr!40542 (Array (_ BitVec 32) ValueCell!15863)) (size!41093 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84085)

(assert (=> mapNonEmpty!51836 (= (arr!40542 _values!1445) (store mapRest!51836 mapKey!51836 mapValue!51836))))

(declare-fun res!849498 () Bool)

(declare-fun e!730461 () Bool)

(assert (=> start!108372 (=> (not res!849498) (not e!730461))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108372 (= res!849498 (validMask!0 mask!2175))))

(assert (=> start!108372 e!730461))

(assert (=> start!108372 true))

(declare-fun e!730464 () Bool)

(declare-fun array_inv!30771 (array!84085) Bool)

(assert (=> start!108372 (and (array_inv!30771 _values!1445) e!730464)))

(declare-datatypes ((array!84087 0))(
  ( (array!84088 (arr!40543 (Array (_ BitVec 32) (_ BitVec 64))) (size!41094 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84087)

(declare-fun array_inv!30772 (array!84087) Bool)

(assert (=> start!108372 (array_inv!30772 _keys!1741)))

(declare-fun b!1278597 () Bool)

(declare-fun tp_is_empty!33523 () Bool)

(assert (=> b!1278597 (= e!730465 tp_is_empty!33523)))

(declare-fun b!1278598 () Bool)

(declare-fun e!730462 () Bool)

(assert (=> b!1278598 (= e!730464 (and e!730462 mapRes!51836))))

(declare-fun condMapEmpty!51836 () Bool)

(declare-fun mapDefault!51836 () ValueCell!15863)

