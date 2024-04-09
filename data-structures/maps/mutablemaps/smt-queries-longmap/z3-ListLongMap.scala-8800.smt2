; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107062 () Bool)

(assert start!107062)

(declare-fun b!1268835 () Bool)

(declare-fun e!723173 () Bool)

(declare-fun tp_is_empty!32715 () Bool)

(assert (=> b!1268835 (= e!723173 tp_is_empty!32715)))

(declare-fun b!1268836 () Bool)

(declare-fun e!723172 () Bool)

(assert (=> b!1268836 (= e!723172 tp_is_empty!32715)))

(declare-fun mapIsEmpty!50653 () Bool)

(declare-fun mapRes!50653 () Bool)

(assert (=> mapIsEmpty!50653 mapRes!50653))

(declare-fun b!1268837 () Bool)

(declare-fun e!723169 () Bool)

(assert (=> b!1268837 (= e!723169 false)))

(declare-fun lt!574445 () Bool)

(declare-datatypes ((array!82673 0))(
  ( (array!82674 (arr!39869 (Array (_ BitVec 32) (_ BitVec 64))) (size!40406 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82673)

(declare-datatypes ((List!28575 0))(
  ( (Nil!28572) (Cons!28571 (h!29780 (_ BitVec 64)) (t!42111 List!28575)) )
))
(declare-fun arrayNoDuplicates!0 (array!82673 (_ BitVec 32) List!28575) Bool)

(assert (=> b!1268837 (= lt!574445 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28572))))

(declare-fun b!1268838 () Bool)

(declare-fun e!723170 () Bool)

(assert (=> b!1268838 (= e!723170 (and e!723173 mapRes!50653))))

(declare-fun condMapEmpty!50653 () Bool)

(declare-datatypes ((V!48813 0))(
  ( (V!48814 (val!16432 Int)) )
))
(declare-datatypes ((ValueCell!15504 0))(
  ( (ValueCellFull!15504 (v!19067 V!48813)) (EmptyCell!15504) )
))
(declare-datatypes ((array!82675 0))(
  ( (array!82676 (arr!39870 (Array (_ BitVec 32) ValueCell!15504)) (size!40407 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82675)

(declare-fun mapDefault!50653 () ValueCell!15504)

(assert (=> b!1268838 (= condMapEmpty!50653 (= (arr!39870 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15504)) mapDefault!50653)))))

(declare-fun mapNonEmpty!50653 () Bool)

(declare-fun tp!96833 () Bool)

(assert (=> mapNonEmpty!50653 (= mapRes!50653 (and tp!96833 e!723172))))

(declare-fun mapValue!50653 () ValueCell!15504)

(declare-fun mapRest!50653 () (Array (_ BitVec 32) ValueCell!15504))

(declare-fun mapKey!50653 () (_ BitVec 32))

(assert (=> mapNonEmpty!50653 (= (arr!39870 _values!1134) (store mapRest!50653 mapKey!50653 mapValue!50653))))

(declare-fun b!1268839 () Bool)

(declare-fun res!844520 () Bool)

(assert (=> b!1268839 (=> (not res!844520) (not e!723169))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268839 (= res!844520 (and (= (size!40407 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40406 _keys!1364) (size!40407 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1268840 () Bool)

(declare-fun res!844518 () Bool)

(assert (=> b!1268840 (=> (not res!844518) (not e!723169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82673 (_ BitVec 32)) Bool)

(assert (=> b!1268840 (= res!844518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun res!844519 () Bool)

(assert (=> start!107062 (=> (not res!844519) (not e!723169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107062 (= res!844519 (validMask!0 mask!1730))))

(assert (=> start!107062 e!723169))

(declare-fun array_inv!30295 (array!82675) Bool)

(assert (=> start!107062 (and (array_inv!30295 _values!1134) e!723170)))

(assert (=> start!107062 true))

(declare-fun array_inv!30296 (array!82673) Bool)

(assert (=> start!107062 (array_inv!30296 _keys!1364)))

(assert (= (and start!107062 res!844519) b!1268839))

(assert (= (and b!1268839 res!844520) b!1268840))

(assert (= (and b!1268840 res!844518) b!1268837))

(assert (= (and b!1268838 condMapEmpty!50653) mapIsEmpty!50653))

(assert (= (and b!1268838 (not condMapEmpty!50653)) mapNonEmpty!50653))

(get-info :version)

(assert (= (and mapNonEmpty!50653 ((_ is ValueCellFull!15504) mapValue!50653)) b!1268836))

(assert (= (and b!1268838 ((_ is ValueCellFull!15504) mapDefault!50653)) b!1268835))

(assert (= start!107062 b!1268838))

(declare-fun m!1167557 () Bool)

(assert (=> b!1268837 m!1167557))

(declare-fun m!1167559 () Bool)

(assert (=> mapNonEmpty!50653 m!1167559))

(declare-fun m!1167561 () Bool)

(assert (=> b!1268840 m!1167561))

(declare-fun m!1167563 () Bool)

(assert (=> start!107062 m!1167563))

(declare-fun m!1167565 () Bool)

(assert (=> start!107062 m!1167565))

(declare-fun m!1167567 () Bool)

(assert (=> start!107062 m!1167567))

(check-sat tp_is_empty!32715 (not mapNonEmpty!50653) (not start!107062) (not b!1268837) (not b!1268840))
(check-sat)
