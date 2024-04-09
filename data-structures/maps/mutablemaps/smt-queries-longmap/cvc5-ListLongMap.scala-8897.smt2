; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108058 () Bool)

(assert start!108058)

(declare-fun res!848013 () Bool)

(declare-fun e!728440 () Bool)

(assert (=> start!108058 (=> (not res!848013) (not e!728440))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108058 (= res!848013 (validMask!0 mask!1805))))

(assert (=> start!108058 e!728440))

(assert (=> start!108058 true))

(declare-datatypes ((V!49497 0))(
  ( (V!49498 (val!16722 Int)) )
))
(declare-datatypes ((ValueCell!15749 0))(
  ( (ValueCellFull!15749 (v!19317 V!49497)) (EmptyCell!15749) )
))
(declare-datatypes ((array!83641 0))(
  ( (array!83642 (arr!40328 (Array (_ BitVec 32) ValueCell!15749)) (size!40879 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83641)

(declare-fun e!728441 () Bool)

(declare-fun array_inv!30605 (array!83641) Bool)

(assert (=> start!108058 (and (array_inv!30605 _values!1187) e!728441)))

(declare-datatypes ((array!83643 0))(
  ( (array!83644 (arr!40329 (Array (_ BitVec 32) (_ BitVec 64))) (size!40880 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83643)

(declare-fun array_inv!30606 (array!83643) Bool)

(assert (=> start!108058 (array_inv!30606 _keys!1427)))

(declare-fun b!1275794 () Bool)

(declare-fun res!848011 () Bool)

(assert (=> b!1275794 (=> (not res!848011) (not e!728440))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1275794 (= res!848011 (and (= (size!40879 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40880 _keys!1427) (size!40879 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1275795 () Bool)

(assert (=> b!1275795 (= e!728440 false)))

(declare-fun lt!575346 () Bool)

(declare-datatypes ((List!28788 0))(
  ( (Nil!28785) (Cons!28784 (h!29993 (_ BitVec 64)) (t!42331 List!28788)) )
))
(declare-fun arrayNoDuplicates!0 (array!83643 (_ BitVec 32) List!28788) Bool)

(assert (=> b!1275795 (= lt!575346 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28785))))

(declare-fun mapNonEmpty!51470 () Bool)

(declare-fun mapRes!51470 () Bool)

(declare-fun tp!98229 () Bool)

(declare-fun e!728444 () Bool)

(assert (=> mapNonEmpty!51470 (= mapRes!51470 (and tp!98229 e!728444))))

(declare-fun mapValue!51470 () ValueCell!15749)

(declare-fun mapRest!51470 () (Array (_ BitVec 32) ValueCell!15749))

(declare-fun mapKey!51470 () (_ BitVec 32))

(assert (=> mapNonEmpty!51470 (= (arr!40328 _values!1187) (store mapRest!51470 mapKey!51470 mapValue!51470))))

(declare-fun b!1275796 () Bool)

(declare-fun res!848012 () Bool)

(assert (=> b!1275796 (=> (not res!848012) (not e!728440))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83643 (_ BitVec 32)) Bool)

(assert (=> b!1275796 (= res!848012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1275797 () Bool)

(declare-fun e!728443 () Bool)

(declare-fun tp_is_empty!33295 () Bool)

(assert (=> b!1275797 (= e!728443 tp_is_empty!33295)))

(declare-fun mapIsEmpty!51470 () Bool)

(assert (=> mapIsEmpty!51470 mapRes!51470))

(declare-fun b!1275798 () Bool)

(assert (=> b!1275798 (= e!728444 tp_is_empty!33295)))

(declare-fun b!1275799 () Bool)

(assert (=> b!1275799 (= e!728441 (and e!728443 mapRes!51470))))

(declare-fun condMapEmpty!51470 () Bool)

(declare-fun mapDefault!51470 () ValueCell!15749)

