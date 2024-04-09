; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108086 () Bool)

(assert start!108086)

(declare-fun mapIsEmpty!51512 () Bool)

(declare-fun mapRes!51512 () Bool)

(assert (=> mapIsEmpty!51512 mapRes!51512))

(declare-fun b!1276054 () Bool)

(declare-fun e!728650 () Bool)

(declare-datatypes ((array!83695 0))(
  ( (array!83696 (arr!40355 (Array (_ BitVec 32) (_ BitVec 64))) (size!40906 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83695)

(assert (=> b!1276054 (= e!728650 (bvsgt #b00000000000000000000000000000000 (size!40906 _keys!1427)))))

(declare-fun b!1276055 () Bool)

(declare-fun res!848147 () Bool)

(assert (=> b!1276055 (=> (not res!848147) (not e!728650))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((V!49533 0))(
  ( (V!49534 (val!16736 Int)) )
))
(declare-datatypes ((ValueCell!15763 0))(
  ( (ValueCellFull!15763 (v!19331 V!49533)) (EmptyCell!15763) )
))
(declare-datatypes ((array!83697 0))(
  ( (array!83698 (arr!40356 (Array (_ BitVec 32) ValueCell!15763)) (size!40907 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83697)

(assert (=> b!1276055 (= res!848147 (and (= (size!40907 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40906 _keys!1427) (size!40907 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1276056 () Bool)

(declare-fun e!728654 () Bool)

(declare-fun tp_is_empty!33323 () Bool)

(assert (=> b!1276056 (= e!728654 tp_is_empty!33323)))

(declare-fun b!1276057 () Bool)

(declare-fun res!848146 () Bool)

(assert (=> b!1276057 (=> (not res!848146) (not e!728650))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83695 (_ BitVec 32)) Bool)

(assert (=> b!1276057 (= res!848146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun res!848148 () Bool)

(assert (=> start!108086 (=> (not res!848148) (not e!728650))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108086 (= res!848148 (validMask!0 mask!1805))))

(assert (=> start!108086 e!728650))

(assert (=> start!108086 true))

(declare-fun e!728653 () Bool)

(declare-fun array_inv!30629 (array!83697) Bool)

(assert (=> start!108086 (and (array_inv!30629 _values!1187) e!728653)))

(declare-fun array_inv!30630 (array!83695) Bool)

(assert (=> start!108086 (array_inv!30630 _keys!1427)))

(declare-fun b!1276058 () Bool)

(declare-fun e!728651 () Bool)

(assert (=> b!1276058 (= e!728653 (and e!728651 mapRes!51512))))

(declare-fun condMapEmpty!51512 () Bool)

(declare-fun mapDefault!51512 () ValueCell!15763)

