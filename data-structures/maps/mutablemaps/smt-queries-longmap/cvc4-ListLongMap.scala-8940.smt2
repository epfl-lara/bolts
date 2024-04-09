; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108406 () Bool)

(assert start!108406)

(declare-fun b!1278911 () Bool)

(declare-fun res!849660 () Bool)

(declare-fun e!730716 () Bool)

(assert (=> b!1278911 (=> (not res!849660) (not e!730716))))

(declare-datatypes ((array!84151 0))(
  ( (array!84152 (arr!40575 (Array (_ BitVec 32) (_ BitVec 64))) (size!41126 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84151)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84151 (_ BitVec 32)) Bool)

(assert (=> b!1278911 (= res!849660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278912 () Bool)

(declare-fun res!849659 () Bool)

(assert (=> b!1278912 (=> (not res!849659) (not e!730716))))

(declare-datatypes ((List!28921 0))(
  ( (Nil!28918) (Cons!28917 (h!30126 (_ BitVec 64)) (t!42468 List!28921)) )
))
(declare-fun arrayNoDuplicates!0 (array!84151 (_ BitVec 32) List!28921) Bool)

(assert (=> b!1278912 (= res!849659 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28918))))

(declare-fun mapNonEmpty!51887 () Bool)

(declare-fun mapRes!51887 () Bool)

(declare-fun tp!98862 () Bool)

(declare-fun e!730720 () Bool)

(assert (=> mapNonEmpty!51887 (= mapRes!51887 (and tp!98862 e!730720))))

(declare-fun mapKey!51887 () (_ BitVec 32))

(declare-datatypes ((V!49845 0))(
  ( (V!49846 (val!16853 Int)) )
))
(declare-datatypes ((ValueCell!15880 0))(
  ( (ValueCellFull!15880 (v!19451 V!49845)) (EmptyCell!15880) )
))
(declare-fun mapValue!51887 () ValueCell!15880)

(declare-fun mapRest!51887 () (Array (_ BitVec 32) ValueCell!15880))

(declare-datatypes ((array!84153 0))(
  ( (array!84154 (arr!40576 (Array (_ BitVec 32) ValueCell!15880)) (size!41127 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84153)

(assert (=> mapNonEmpty!51887 (= (arr!40576 _values!1445) (store mapRest!51887 mapKey!51887 mapValue!51887))))

(declare-fun mapIsEmpty!51887 () Bool)

(assert (=> mapIsEmpty!51887 mapRes!51887))

(declare-fun res!849661 () Bool)

(assert (=> start!108406 (=> (not res!849661) (not e!730716))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108406 (= res!849661 (validMask!0 mask!2175))))

(assert (=> start!108406 e!730716))

(assert (=> start!108406 true))

(declare-fun e!730717 () Bool)

(declare-fun array_inv!30793 (array!84153) Bool)

(assert (=> start!108406 (and (array_inv!30793 _values!1445) e!730717)))

(declare-fun array_inv!30794 (array!84151) Bool)

(assert (=> start!108406 (array_inv!30794 _keys!1741)))

(declare-fun b!1278913 () Bool)

(declare-fun tp_is_empty!33557 () Bool)

(assert (=> b!1278913 (= e!730720 tp_is_empty!33557)))

(declare-fun b!1278914 () Bool)

(declare-fun e!730718 () Bool)

(assert (=> b!1278914 (= e!730718 tp_is_empty!33557)))

(declare-fun b!1278915 () Bool)

(assert (=> b!1278915 (= e!730717 (and e!730718 mapRes!51887))))

(declare-fun condMapEmpty!51887 () Bool)

(declare-fun mapDefault!51887 () ValueCell!15880)

