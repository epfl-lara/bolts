; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107188 () Bool)

(assert start!107188)

(declare-fun mapNonEmpty!50842 () Bool)

(declare-fun mapRes!50842 () Bool)

(declare-fun tp!97184 () Bool)

(declare-fun e!724114 () Bool)

(assert (=> mapNonEmpty!50842 (= mapRes!50842 (and tp!97184 e!724114))))

(declare-datatypes ((V!48981 0))(
  ( (V!48982 (val!16495 Int)) )
))
(declare-datatypes ((ValueCell!15567 0))(
  ( (ValueCellFull!15567 (v!19130 V!48981)) (EmptyCell!15567) )
))
(declare-datatypes ((array!82911 0))(
  ( (array!82912 (arr!39988 (Array (_ BitVec 32) ValueCell!15567)) (size!40525 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82911)

(declare-fun mapKey!50842 () (_ BitVec 32))

(declare-fun mapRest!50842 () (Array (_ BitVec 32) ValueCell!15567))

(declare-fun mapValue!50842 () ValueCell!15567)

(assert (=> mapNonEmpty!50842 (= (arr!39988 _values!1134) (store mapRest!50842 mapKey!50842 mapValue!50842))))

(declare-fun b!1270293 () Bool)

(declare-fun res!845409 () Bool)

(declare-fun e!724116 () Bool)

(assert (=> b!1270293 (=> (not res!845409) (not e!724116))))

(declare-datatypes ((array!82913 0))(
  ( (array!82914 (arr!39989 (Array (_ BitVec 32) (_ BitVec 64))) (size!40526 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82913)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82913 (_ BitVec 32)) Bool)

(assert (=> b!1270293 (= res!845409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270294 () Bool)

(declare-fun tp_is_empty!32841 () Bool)

(assert (=> b!1270294 (= e!724114 tp_is_empty!32841)))

(declare-fun res!845411 () Bool)

(assert (=> start!107188 (=> (not res!845411) (not e!724116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107188 (= res!845411 (validMask!0 mask!1730))))

(assert (=> start!107188 e!724116))

(declare-fun e!724115 () Bool)

(declare-fun array_inv!30373 (array!82911) Bool)

(assert (=> start!107188 (and (array_inv!30373 _values!1134) e!724115)))

(assert (=> start!107188 true))

(declare-fun array_inv!30374 (array!82913) Bool)

(assert (=> start!107188 (array_inv!30374 _keys!1364)))

(declare-fun b!1270295 () Bool)

(declare-fun res!845410 () Bool)

(assert (=> b!1270295 (=> (not res!845410) (not e!724116))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270295 (= res!845410 (and (= (size!40525 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40526 _keys!1364) (size!40525 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270296 () Bool)

(declare-fun e!724117 () Bool)

(assert (=> b!1270296 (= e!724115 (and e!724117 mapRes!50842))))

(declare-fun condMapEmpty!50842 () Bool)

(declare-fun mapDefault!50842 () ValueCell!15567)

(assert (=> b!1270296 (= condMapEmpty!50842 (= (arr!39988 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15567)) mapDefault!50842)))))

(declare-fun b!1270297 () Bool)

(assert (=> b!1270297 (= e!724116 false)))

(declare-fun lt!574634 () Bool)

(declare-datatypes ((List!28650 0))(
  ( (Nil!28647) (Cons!28646 (h!29855 (_ BitVec 64)) (t!42186 List!28650)) )
))
(declare-fun arrayNoDuplicates!0 (array!82913 (_ BitVec 32) List!28650) Bool)

(assert (=> b!1270297 (= lt!574634 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28647))))

(declare-fun mapIsEmpty!50842 () Bool)

(assert (=> mapIsEmpty!50842 mapRes!50842))

(declare-fun b!1270298 () Bool)

(assert (=> b!1270298 (= e!724117 tp_is_empty!32841)))

(assert (= (and start!107188 res!845411) b!1270295))

(assert (= (and b!1270295 res!845410) b!1270293))

(assert (= (and b!1270293 res!845409) b!1270297))

(assert (= (and b!1270296 condMapEmpty!50842) mapIsEmpty!50842))

(assert (= (and b!1270296 (not condMapEmpty!50842)) mapNonEmpty!50842))

(get-info :version)

(assert (= (and mapNonEmpty!50842 ((_ is ValueCellFull!15567) mapValue!50842)) b!1270294))

(assert (= (and b!1270296 ((_ is ValueCellFull!15567) mapDefault!50842)) b!1270298))

(assert (= start!107188 b!1270296))

(declare-fun m!1168637 () Bool)

(assert (=> mapNonEmpty!50842 m!1168637))

(declare-fun m!1168639 () Bool)

(assert (=> b!1270293 m!1168639))

(declare-fun m!1168641 () Bool)

(assert (=> start!107188 m!1168641))

(declare-fun m!1168643 () Bool)

(assert (=> start!107188 m!1168643))

(declare-fun m!1168645 () Bool)

(assert (=> start!107188 m!1168645))

(declare-fun m!1168647 () Bool)

(assert (=> b!1270297 m!1168647))

(check-sat tp_is_empty!32841 (not b!1270293) (not mapNonEmpty!50842) (not b!1270297) (not start!107188))
(check-sat)
