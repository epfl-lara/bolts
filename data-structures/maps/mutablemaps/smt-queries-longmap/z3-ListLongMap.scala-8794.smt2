; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107026 () Bool)

(assert start!107026)

(declare-fun res!844358 () Bool)

(declare-fun e!722900 () Bool)

(assert (=> start!107026 (=> (not res!844358) (not e!722900))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107026 (= res!844358 (validMask!0 mask!1730))))

(assert (=> start!107026 e!722900))

(declare-datatypes ((V!48765 0))(
  ( (V!48766 (val!16414 Int)) )
))
(declare-datatypes ((ValueCell!15486 0))(
  ( (ValueCellFull!15486 (v!19049 V!48765)) (EmptyCell!15486) )
))
(declare-datatypes ((array!82609 0))(
  ( (array!82610 (arr!39837 (Array (_ BitVec 32) ValueCell!15486)) (size!40374 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82609)

(declare-fun e!722903 () Bool)

(declare-fun array_inv!30271 (array!82609) Bool)

(assert (=> start!107026 (and (array_inv!30271 _values!1134) e!722903)))

(assert (=> start!107026 true))

(declare-datatypes ((array!82611 0))(
  ( (array!82612 (arr!39838 (Array (_ BitVec 32) (_ BitVec 64))) (size!40375 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82611)

(declare-fun array_inv!30272 (array!82611) Bool)

(assert (=> start!107026 (array_inv!30272 _keys!1364)))

(declare-fun b!1268511 () Bool)

(declare-fun res!844357 () Bool)

(assert (=> b!1268511 (=> (not res!844357) (not e!722900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82611 (_ BitVec 32)) Bool)

(assert (=> b!1268511 (= res!844357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1268512 () Bool)

(assert (=> b!1268512 (= e!722900 false)))

(declare-fun lt!574391 () Bool)

(declare-datatypes ((List!28564 0))(
  ( (Nil!28561) (Cons!28560 (h!29769 (_ BitVec 64)) (t!42100 List!28564)) )
))
(declare-fun arrayNoDuplicates!0 (array!82611 (_ BitVec 32) List!28564) Bool)

(assert (=> b!1268512 (= lt!574391 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28561))))

(declare-fun mapIsEmpty!50599 () Bool)

(declare-fun mapRes!50599 () Bool)

(assert (=> mapIsEmpty!50599 mapRes!50599))

(declare-fun mapNonEmpty!50599 () Bool)

(declare-fun tp!96779 () Bool)

(declare-fun e!722902 () Bool)

(assert (=> mapNonEmpty!50599 (= mapRes!50599 (and tp!96779 e!722902))))

(declare-fun mapKey!50599 () (_ BitVec 32))

(declare-fun mapRest!50599 () (Array (_ BitVec 32) ValueCell!15486))

(declare-fun mapValue!50599 () ValueCell!15486)

(assert (=> mapNonEmpty!50599 (= (arr!39837 _values!1134) (store mapRest!50599 mapKey!50599 mapValue!50599))))

(declare-fun b!1268513 () Bool)

(declare-fun e!722901 () Bool)

(declare-fun tp_is_empty!32679 () Bool)

(assert (=> b!1268513 (= e!722901 tp_is_empty!32679)))

(declare-fun b!1268514 () Bool)

(declare-fun res!844356 () Bool)

(assert (=> b!1268514 (=> (not res!844356) (not e!722900))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268514 (= res!844356 (and (= (size!40374 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40375 _keys!1364) (size!40374 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1268515 () Bool)

(assert (=> b!1268515 (= e!722903 (and e!722901 mapRes!50599))))

(declare-fun condMapEmpty!50599 () Bool)

(declare-fun mapDefault!50599 () ValueCell!15486)

(assert (=> b!1268515 (= condMapEmpty!50599 (= (arr!39837 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15486)) mapDefault!50599)))))

(declare-fun b!1268516 () Bool)

(assert (=> b!1268516 (= e!722902 tp_is_empty!32679)))

(assert (= (and start!107026 res!844358) b!1268514))

(assert (= (and b!1268514 res!844356) b!1268511))

(assert (= (and b!1268511 res!844357) b!1268512))

(assert (= (and b!1268515 condMapEmpty!50599) mapIsEmpty!50599))

(assert (= (and b!1268515 (not condMapEmpty!50599)) mapNonEmpty!50599))

(get-info :version)

(assert (= (and mapNonEmpty!50599 ((_ is ValueCellFull!15486) mapValue!50599)) b!1268516))

(assert (= (and b!1268515 ((_ is ValueCellFull!15486) mapDefault!50599)) b!1268513))

(assert (= start!107026 b!1268515))

(declare-fun m!1167341 () Bool)

(assert (=> start!107026 m!1167341))

(declare-fun m!1167343 () Bool)

(assert (=> start!107026 m!1167343))

(declare-fun m!1167345 () Bool)

(assert (=> start!107026 m!1167345))

(declare-fun m!1167347 () Bool)

(assert (=> b!1268511 m!1167347))

(declare-fun m!1167349 () Bool)

(assert (=> b!1268512 m!1167349))

(declare-fun m!1167351 () Bool)

(assert (=> mapNonEmpty!50599 m!1167351))

(check-sat (not mapNonEmpty!50599) (not b!1268511) (not b!1268512) (not start!107026) tp_is_empty!32679)
(check-sat)
