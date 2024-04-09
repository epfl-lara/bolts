; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108396 () Bool)

(assert start!108396)

(declare-fun b!1278813 () Bool)

(declare-fun res!849608 () Bool)

(declare-fun e!730645 () Bool)

(assert (=> b!1278813 (=> (not res!849608) (not e!730645))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((V!49833 0))(
  ( (V!49834 (val!16848 Int)) )
))
(declare-datatypes ((ValueCell!15875 0))(
  ( (ValueCellFull!15875 (v!19446 V!49833)) (EmptyCell!15875) )
))
(declare-datatypes ((array!84133 0))(
  ( (array!84134 (arr!40566 (Array (_ BitVec 32) ValueCell!15875)) (size!41117 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84133)

(declare-datatypes ((array!84135 0))(
  ( (array!84136 (arr!40567 (Array (_ BitVec 32) (_ BitVec 64))) (size!41118 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84135)

(assert (=> b!1278813 (= res!849608 (and (= (size!41117 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41118 _keys!1741) (size!41117 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!849607 () Bool)

(assert (=> start!108396 (=> (not res!849607) (not e!730645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108396 (= res!849607 (validMask!0 mask!2175))))

(assert (=> start!108396 e!730645))

(assert (=> start!108396 true))

(declare-fun e!730643 () Bool)

(declare-fun array_inv!30787 (array!84133) Bool)

(assert (=> start!108396 (and (array_inv!30787 _values!1445) e!730643)))

(declare-fun array_inv!30788 (array!84135) Bool)

(assert (=> start!108396 (array_inv!30788 _keys!1741)))

(declare-fun b!1278814 () Bool)

(declare-fun e!730641 () Bool)

(declare-fun tp_is_empty!33547 () Bool)

(assert (=> b!1278814 (= e!730641 tp_is_empty!33547)))

(declare-fun b!1278815 () Bool)

(declare-fun res!849606 () Bool)

(assert (=> b!1278815 (=> (not res!849606) (not e!730645))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84135 (_ BitVec 32)) Bool)

(assert (=> b!1278815 (= res!849606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278816 () Bool)

(declare-fun e!730642 () Bool)

(assert (=> b!1278816 (= e!730642 tp_is_empty!33547)))

(declare-fun b!1278817 () Bool)

(assert (=> b!1278817 (= e!730645 false)))

(declare-fun lt!575887 () Bool)

(declare-datatypes ((List!28918 0))(
  ( (Nil!28915) (Cons!28914 (h!30123 (_ BitVec 64)) (t!42465 List!28918)) )
))
(declare-fun arrayNoDuplicates!0 (array!84135 (_ BitVec 32) List!28918) Bool)

(assert (=> b!1278817 (= lt!575887 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28915))))

(declare-fun b!1278818 () Bool)

(declare-fun mapRes!51872 () Bool)

(assert (=> b!1278818 (= e!730643 (and e!730642 mapRes!51872))))

(declare-fun condMapEmpty!51872 () Bool)

(declare-fun mapDefault!51872 () ValueCell!15875)

