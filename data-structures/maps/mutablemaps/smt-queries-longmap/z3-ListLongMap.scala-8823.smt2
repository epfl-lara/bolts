; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107200 () Bool)

(assert start!107200)

(declare-fun b!1270401 () Bool)

(declare-fun e!724208 () Bool)

(declare-fun e!724206 () Bool)

(declare-fun mapRes!50860 () Bool)

(assert (=> b!1270401 (= e!724208 (and e!724206 mapRes!50860))))

(declare-fun condMapEmpty!50860 () Bool)

(declare-datatypes ((V!48997 0))(
  ( (V!48998 (val!16501 Int)) )
))
(declare-datatypes ((ValueCell!15573 0))(
  ( (ValueCellFull!15573 (v!19136 V!48997)) (EmptyCell!15573) )
))
(declare-datatypes ((array!82935 0))(
  ( (array!82936 (arr!40000 (Array (_ BitVec 32) ValueCell!15573)) (size!40537 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82935)

(declare-fun mapDefault!50860 () ValueCell!15573)

(assert (=> b!1270401 (= condMapEmpty!50860 (= (arr!40000 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15573)) mapDefault!50860)))))

(declare-fun b!1270402 () Bool)

(declare-fun res!845465 () Bool)

(declare-fun e!724205 () Bool)

(assert (=> b!1270402 (=> (not res!845465) (not e!724205))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82937 0))(
  ( (array!82938 (arr!40001 (Array (_ BitVec 32) (_ BitVec 64))) (size!40538 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82937)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270402 (= res!845465 (and (= (size!40537 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40538 _keys!1364) (size!40537 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270403 () Bool)

(declare-fun res!845464 () Bool)

(assert (=> b!1270403 (=> (not res!845464) (not e!724205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82937 (_ BitVec 32)) Bool)

(assert (=> b!1270403 (= res!845464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270404 () Bool)

(declare-fun e!724207 () Bool)

(declare-fun tp_is_empty!32853 () Bool)

(assert (=> b!1270404 (= e!724207 tp_is_empty!32853)))

(declare-fun b!1270405 () Bool)

(assert (=> b!1270405 (= e!724205 false)))

(declare-fun lt!574652 () Bool)

(declare-datatypes ((List!28654 0))(
  ( (Nil!28651) (Cons!28650 (h!29859 (_ BitVec 64)) (t!42190 List!28654)) )
))
(declare-fun arrayNoDuplicates!0 (array!82937 (_ BitVec 32) List!28654) Bool)

(assert (=> b!1270405 (= lt!574652 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28651))))

(declare-fun res!845463 () Bool)

(assert (=> start!107200 (=> (not res!845463) (not e!724205))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107200 (= res!845463 (validMask!0 mask!1730))))

(assert (=> start!107200 e!724205))

(declare-fun array_inv!30379 (array!82935) Bool)

(assert (=> start!107200 (and (array_inv!30379 _values!1134) e!724208)))

(assert (=> start!107200 true))

(declare-fun array_inv!30380 (array!82937) Bool)

(assert (=> start!107200 (array_inv!30380 _keys!1364)))

(declare-fun mapIsEmpty!50860 () Bool)

(assert (=> mapIsEmpty!50860 mapRes!50860))

(declare-fun b!1270406 () Bool)

(assert (=> b!1270406 (= e!724206 tp_is_empty!32853)))

(declare-fun mapNonEmpty!50860 () Bool)

(declare-fun tp!97202 () Bool)

(assert (=> mapNonEmpty!50860 (= mapRes!50860 (and tp!97202 e!724207))))

(declare-fun mapRest!50860 () (Array (_ BitVec 32) ValueCell!15573))

(declare-fun mapValue!50860 () ValueCell!15573)

(declare-fun mapKey!50860 () (_ BitVec 32))

(assert (=> mapNonEmpty!50860 (= (arr!40000 _values!1134) (store mapRest!50860 mapKey!50860 mapValue!50860))))

(assert (= (and start!107200 res!845463) b!1270402))

(assert (= (and b!1270402 res!845465) b!1270403))

(assert (= (and b!1270403 res!845464) b!1270405))

(assert (= (and b!1270401 condMapEmpty!50860) mapIsEmpty!50860))

(assert (= (and b!1270401 (not condMapEmpty!50860)) mapNonEmpty!50860))

(get-info :version)

(assert (= (and mapNonEmpty!50860 ((_ is ValueCellFull!15573) mapValue!50860)) b!1270404))

(assert (= (and b!1270401 ((_ is ValueCellFull!15573) mapDefault!50860)) b!1270406))

(assert (= start!107200 b!1270401))

(declare-fun m!1168709 () Bool)

(assert (=> b!1270403 m!1168709))

(declare-fun m!1168711 () Bool)

(assert (=> b!1270405 m!1168711))

(declare-fun m!1168713 () Bool)

(assert (=> start!107200 m!1168713))

(declare-fun m!1168715 () Bool)

(assert (=> start!107200 m!1168715))

(declare-fun m!1168717 () Bool)

(assert (=> start!107200 m!1168717))

(declare-fun m!1168719 () Bool)

(assert (=> mapNonEmpty!50860 m!1168719))

(check-sat (not b!1270403) (not start!107200) (not mapNonEmpty!50860) (not b!1270405) tp_is_empty!32853)
(check-sat)
