; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107234 () Bool)

(assert start!107234)

(declare-fun b!1270707 () Bool)

(declare-fun res!845618 () Bool)

(declare-fun e!724462 () Bool)

(assert (=> b!1270707 (=> (not res!845618) (not e!724462))))

(declare-datatypes ((V!49043 0))(
  ( (V!49044 (val!16518 Int)) )
))
(declare-datatypes ((ValueCell!15590 0))(
  ( (ValueCellFull!15590 (v!19153 V!49043)) (EmptyCell!15590) )
))
(declare-datatypes ((array!82995 0))(
  ( (array!82996 (arr!40030 (Array (_ BitVec 32) ValueCell!15590)) (size!40567 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82995)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82997 0))(
  ( (array!82998 (arr!40031 (Array (_ BitVec 32) (_ BitVec 64))) (size!40568 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82997)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270707 (= res!845618 (and (= (size!40567 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40568 _keys!1364) (size!40567 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270708 () Bool)

(declare-fun e!724459 () Bool)

(declare-fun tp_is_empty!32887 () Bool)

(assert (=> b!1270708 (= e!724459 tp_is_empty!32887)))

(declare-fun b!1270709 () Bool)

(declare-fun res!845617 () Bool)

(assert (=> b!1270709 (=> (not res!845617) (not e!724462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82997 (_ BitVec 32)) Bool)

(assert (=> b!1270709 (= res!845617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun res!845616 () Bool)

(assert (=> start!107234 (=> (not res!845616) (not e!724462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107234 (= res!845616 (validMask!0 mask!1730))))

(assert (=> start!107234 e!724462))

(declare-fun e!724461 () Bool)

(declare-fun array_inv!30395 (array!82995) Bool)

(assert (=> start!107234 (and (array_inv!30395 _values!1134) e!724461)))

(assert (=> start!107234 true))

(declare-fun array_inv!30396 (array!82997) Bool)

(assert (=> start!107234 (array_inv!30396 _keys!1364)))

(declare-fun mapIsEmpty!50911 () Bool)

(declare-fun mapRes!50911 () Bool)

(assert (=> mapIsEmpty!50911 mapRes!50911))

(declare-fun mapNonEmpty!50911 () Bool)

(declare-fun tp!97253 () Bool)

(assert (=> mapNonEmpty!50911 (= mapRes!50911 (and tp!97253 e!724459))))

(declare-fun mapRest!50911 () (Array (_ BitVec 32) ValueCell!15590))

(declare-fun mapValue!50911 () ValueCell!15590)

(declare-fun mapKey!50911 () (_ BitVec 32))

(assert (=> mapNonEmpty!50911 (= (arr!40030 _values!1134) (store mapRest!50911 mapKey!50911 mapValue!50911))))

(declare-fun b!1270710 () Bool)

(declare-fun e!724463 () Bool)

(assert (=> b!1270710 (= e!724463 tp_is_empty!32887)))

(declare-fun b!1270711 () Bool)

(assert (=> b!1270711 (= e!724462 false)))

(declare-fun lt!574703 () Bool)

(declare-datatypes ((List!28663 0))(
  ( (Nil!28660) (Cons!28659 (h!29868 (_ BitVec 64)) (t!42199 List!28663)) )
))
(declare-fun arrayNoDuplicates!0 (array!82997 (_ BitVec 32) List!28663) Bool)

(assert (=> b!1270711 (= lt!574703 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28660))))

(declare-fun b!1270712 () Bool)

(assert (=> b!1270712 (= e!724461 (and e!724463 mapRes!50911))))

(declare-fun condMapEmpty!50911 () Bool)

(declare-fun mapDefault!50911 () ValueCell!15590)

