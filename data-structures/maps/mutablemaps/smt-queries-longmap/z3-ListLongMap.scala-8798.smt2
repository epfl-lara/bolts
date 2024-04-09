; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107050 () Bool)

(assert start!107050)

(declare-fun b!1268727 () Bool)

(declare-fun e!723080 () Bool)

(assert (=> b!1268727 (= e!723080 false)))

(declare-fun lt!574427 () Bool)

(declare-datatypes ((array!82651 0))(
  ( (array!82652 (arr!39858 (Array (_ BitVec 32) (_ BitVec 64))) (size!40395 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82651)

(declare-datatypes ((List!28570 0))(
  ( (Nil!28567) (Cons!28566 (h!29775 (_ BitVec 64)) (t!42106 List!28570)) )
))
(declare-fun arrayNoDuplicates!0 (array!82651 (_ BitVec 32) List!28570) Bool)

(assert (=> b!1268727 (= lt!574427 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28567))))

(declare-fun b!1268728 () Bool)

(declare-fun e!723083 () Bool)

(declare-fun e!723079 () Bool)

(declare-fun mapRes!50635 () Bool)

(assert (=> b!1268728 (= e!723083 (and e!723079 mapRes!50635))))

(declare-fun condMapEmpty!50635 () Bool)

(declare-datatypes ((V!48797 0))(
  ( (V!48798 (val!16426 Int)) )
))
(declare-datatypes ((ValueCell!15498 0))(
  ( (ValueCellFull!15498 (v!19061 V!48797)) (EmptyCell!15498) )
))
(declare-datatypes ((array!82653 0))(
  ( (array!82654 (arr!39859 (Array (_ BitVec 32) ValueCell!15498)) (size!40396 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82653)

(declare-fun mapDefault!50635 () ValueCell!15498)

(assert (=> b!1268728 (= condMapEmpty!50635 (= (arr!39859 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15498)) mapDefault!50635)))))

(declare-fun b!1268729 () Bool)

(declare-fun res!844464 () Bool)

(assert (=> b!1268729 (=> (not res!844464) (not e!723080))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82651 (_ BitVec 32)) Bool)

(assert (=> b!1268729 (= res!844464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapNonEmpty!50635 () Bool)

(declare-fun tp!96815 () Bool)

(declare-fun e!723081 () Bool)

(assert (=> mapNonEmpty!50635 (= mapRes!50635 (and tp!96815 e!723081))))

(declare-fun mapKey!50635 () (_ BitVec 32))

(declare-fun mapRest!50635 () (Array (_ BitVec 32) ValueCell!15498))

(declare-fun mapValue!50635 () ValueCell!15498)

(assert (=> mapNonEmpty!50635 (= (arr!39859 _values!1134) (store mapRest!50635 mapKey!50635 mapValue!50635))))

(declare-fun b!1268730 () Bool)

(declare-fun tp_is_empty!32703 () Bool)

(assert (=> b!1268730 (= e!723081 tp_is_empty!32703)))

(declare-fun b!1268731 () Bool)

(declare-fun res!844465 () Bool)

(assert (=> b!1268731 (=> (not res!844465) (not e!723080))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268731 (= res!844465 (and (= (size!40396 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40395 _keys!1364) (size!40396 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!844466 () Bool)

(assert (=> start!107050 (=> (not res!844466) (not e!723080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107050 (= res!844466 (validMask!0 mask!1730))))

(assert (=> start!107050 e!723080))

(declare-fun array_inv!30287 (array!82653) Bool)

(assert (=> start!107050 (and (array_inv!30287 _values!1134) e!723083)))

(assert (=> start!107050 true))

(declare-fun array_inv!30288 (array!82651) Bool)

(assert (=> start!107050 (array_inv!30288 _keys!1364)))

(declare-fun b!1268732 () Bool)

(assert (=> b!1268732 (= e!723079 tp_is_empty!32703)))

(declare-fun mapIsEmpty!50635 () Bool)

(assert (=> mapIsEmpty!50635 mapRes!50635))

(assert (= (and start!107050 res!844466) b!1268731))

(assert (= (and b!1268731 res!844465) b!1268729))

(assert (= (and b!1268729 res!844464) b!1268727))

(assert (= (and b!1268728 condMapEmpty!50635) mapIsEmpty!50635))

(assert (= (and b!1268728 (not condMapEmpty!50635)) mapNonEmpty!50635))

(get-info :version)

(assert (= (and mapNonEmpty!50635 ((_ is ValueCellFull!15498) mapValue!50635)) b!1268730))

(assert (= (and b!1268728 ((_ is ValueCellFull!15498) mapDefault!50635)) b!1268732))

(assert (= start!107050 b!1268728))

(declare-fun m!1167485 () Bool)

(assert (=> b!1268727 m!1167485))

(declare-fun m!1167487 () Bool)

(assert (=> b!1268729 m!1167487))

(declare-fun m!1167489 () Bool)

(assert (=> mapNonEmpty!50635 m!1167489))

(declare-fun m!1167491 () Bool)

(assert (=> start!107050 m!1167491))

(declare-fun m!1167493 () Bool)

(assert (=> start!107050 m!1167493))

(declare-fun m!1167495 () Bool)

(assert (=> start!107050 m!1167495))

(check-sat (not start!107050) (not mapNonEmpty!50635) (not b!1268727) (not b!1268729) tp_is_empty!32703)
(check-sat)
