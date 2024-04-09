; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108382 () Bool)

(assert start!108382)

(declare-fun b!1278687 () Bool)

(declare-fun res!849544 () Bool)

(declare-fun e!730536 () Bool)

(assert (=> b!1278687 (=> (not res!849544) (not e!730536))))

(declare-datatypes ((array!84105 0))(
  ( (array!84106 (arr!40552 (Array (_ BitVec 32) (_ BitVec 64))) (size!41103 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84105)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84105 (_ BitVec 32)) Bool)

(assert (=> b!1278687 (= res!849544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278688 () Bool)

(declare-fun res!849545 () Bool)

(assert (=> b!1278688 (=> (not res!849545) (not e!730536))))

(declare-datatypes ((V!49813 0))(
  ( (V!49814 (val!16841 Int)) )
))
(declare-datatypes ((ValueCell!15868 0))(
  ( (ValueCellFull!15868 (v!19439 V!49813)) (EmptyCell!15868) )
))
(declare-datatypes ((array!84107 0))(
  ( (array!84108 (arr!40553 (Array (_ BitVec 32) ValueCell!15868)) (size!41104 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84107)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1278688 (= res!849545 (and (= (size!41104 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41103 _keys!1741) (size!41104 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1278689 () Bool)

(declare-fun e!730537 () Bool)

(declare-fun tp_is_empty!33533 () Bool)

(assert (=> b!1278689 (= e!730537 tp_is_empty!33533)))

(declare-fun mapIsEmpty!51851 () Bool)

(declare-fun mapRes!51851 () Bool)

(assert (=> mapIsEmpty!51851 mapRes!51851))

(declare-fun b!1278690 () Bool)

(declare-fun e!730538 () Bool)

(assert (=> b!1278690 (= e!730538 tp_is_empty!33533)))

(declare-fun b!1278691 () Bool)

(declare-fun e!730539 () Bool)

(assert (=> b!1278691 (= e!730539 (and e!730538 mapRes!51851))))

(declare-fun condMapEmpty!51851 () Bool)

(declare-fun mapDefault!51851 () ValueCell!15868)

