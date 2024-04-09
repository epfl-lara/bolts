; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107212 () Bool)

(assert start!107212)

(declare-fun b!1270509 () Bool)

(declare-fun e!724298 () Bool)

(declare-fun tp_is_empty!32865 () Bool)

(assert (=> b!1270509 (= e!724298 tp_is_empty!32865)))

(declare-fun mapNonEmpty!50878 () Bool)

(declare-fun mapRes!50878 () Bool)

(declare-fun tp!97220 () Bool)

(assert (=> mapNonEmpty!50878 (= mapRes!50878 (and tp!97220 e!724298))))

(declare-datatypes ((V!49013 0))(
  ( (V!49014 (val!16507 Int)) )
))
(declare-datatypes ((ValueCell!15579 0))(
  ( (ValueCellFull!15579 (v!19142 V!49013)) (EmptyCell!15579) )
))
(declare-datatypes ((array!82955 0))(
  ( (array!82956 (arr!40010 (Array (_ BitVec 32) ValueCell!15579)) (size!40547 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82955)

(declare-fun mapKey!50878 () (_ BitVec 32))

(declare-fun mapRest!50878 () (Array (_ BitVec 32) ValueCell!15579))

(declare-fun mapValue!50878 () ValueCell!15579)

(assert (=> mapNonEmpty!50878 (= (arr!40010 _values!1134) (store mapRest!50878 mapKey!50878 mapValue!50878))))

(declare-fun b!1270510 () Bool)

(declare-fun res!845519 () Bool)

(declare-fun e!724297 () Bool)

(assert (=> b!1270510 (=> (not res!845519) (not e!724297))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82957 0))(
  ( (array!82958 (arr!40011 (Array (_ BitVec 32) (_ BitVec 64))) (size!40548 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82957)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270510 (= res!845519 (and (= (size!40547 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40548 _keys!1364) (size!40547 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270511 () Bool)

(declare-fun e!724295 () Bool)

(declare-fun e!724296 () Bool)

(assert (=> b!1270511 (= e!724295 (and e!724296 mapRes!50878))))

(declare-fun condMapEmpty!50878 () Bool)

(declare-fun mapDefault!50878 () ValueCell!15579)

(assert (=> b!1270511 (= condMapEmpty!50878 (= (arr!40010 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15579)) mapDefault!50878)))))

(declare-fun b!1270513 () Bool)

(assert (=> b!1270513 (= e!724297 false)))

(declare-fun lt!574670 () Bool)

(declare-datatypes ((List!28657 0))(
  ( (Nil!28654) (Cons!28653 (h!29862 (_ BitVec 64)) (t!42193 List!28657)) )
))
(declare-fun arrayNoDuplicates!0 (array!82957 (_ BitVec 32) List!28657) Bool)

(assert (=> b!1270513 (= lt!574670 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28654))))

(declare-fun b!1270514 () Bool)

(assert (=> b!1270514 (= e!724296 tp_is_empty!32865)))

(declare-fun mapIsEmpty!50878 () Bool)

(assert (=> mapIsEmpty!50878 mapRes!50878))

(declare-fun b!1270512 () Bool)

(declare-fun res!845518 () Bool)

(assert (=> b!1270512 (=> (not res!845518) (not e!724297))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82957 (_ BitVec 32)) Bool)

(assert (=> b!1270512 (= res!845518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun res!845517 () Bool)

(assert (=> start!107212 (=> (not res!845517) (not e!724297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107212 (= res!845517 (validMask!0 mask!1730))))

(assert (=> start!107212 e!724297))

(declare-fun array_inv!30385 (array!82955) Bool)

(assert (=> start!107212 (and (array_inv!30385 _values!1134) e!724295)))

(assert (=> start!107212 true))

(declare-fun array_inv!30386 (array!82957) Bool)

(assert (=> start!107212 (array_inv!30386 _keys!1364)))

(assert (= (and start!107212 res!845517) b!1270510))

(assert (= (and b!1270510 res!845519) b!1270512))

(assert (= (and b!1270512 res!845518) b!1270513))

(assert (= (and b!1270511 condMapEmpty!50878) mapIsEmpty!50878))

(assert (= (and b!1270511 (not condMapEmpty!50878)) mapNonEmpty!50878))

(get-info :version)

(assert (= (and mapNonEmpty!50878 ((_ is ValueCellFull!15579) mapValue!50878)) b!1270509))

(assert (= (and b!1270511 ((_ is ValueCellFull!15579) mapDefault!50878)) b!1270514))

(assert (= start!107212 b!1270511))

(declare-fun m!1168781 () Bool)

(assert (=> mapNonEmpty!50878 m!1168781))

(declare-fun m!1168783 () Bool)

(assert (=> b!1270513 m!1168783))

(declare-fun m!1168785 () Bool)

(assert (=> b!1270512 m!1168785))

(declare-fun m!1168787 () Bool)

(assert (=> start!107212 m!1168787))

(declare-fun m!1168789 () Bool)

(assert (=> start!107212 m!1168789))

(declare-fun m!1168791 () Bool)

(assert (=> start!107212 m!1168791))

(check-sat tp_is_empty!32865 (not b!1270512) (not start!107212) (not b!1270513) (not mapNonEmpty!50878))
(check-sat)
