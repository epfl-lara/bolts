; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107014 () Bool)

(assert start!107014)

(declare-fun b!1268403 () Bool)

(declare-fun res!844303 () Bool)

(declare-fun e!722813 () Bool)

(assert (=> b!1268403 (=> (not res!844303) (not e!722813))))

(declare-datatypes ((array!82585 0))(
  ( (array!82586 (arr!39825 (Array (_ BitVec 32) (_ BitVec 64))) (size!40362 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82585)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82585 (_ BitVec 32)) Bool)

(assert (=> b!1268403 (= res!844303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1268404 () Bool)

(declare-fun res!844302 () Bool)

(assert (=> b!1268404 (=> (not res!844302) (not e!722813))))

(declare-datatypes ((V!48749 0))(
  ( (V!48750 (val!16408 Int)) )
))
(declare-datatypes ((ValueCell!15480 0))(
  ( (ValueCellFull!15480 (v!19043 V!48749)) (EmptyCell!15480) )
))
(declare-datatypes ((array!82587 0))(
  ( (array!82588 (arr!39826 (Array (_ BitVec 32) ValueCell!15480)) (size!40363 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82587)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268404 (= res!844302 (and (= (size!40363 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40362 _keys!1364) (size!40363 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!844304 () Bool)

(assert (=> start!107014 (=> (not res!844304) (not e!722813))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107014 (= res!844304 (validMask!0 mask!1730))))

(assert (=> start!107014 e!722813))

(declare-fun e!722812 () Bool)

(declare-fun array_inv!30261 (array!82587) Bool)

(assert (=> start!107014 (and (array_inv!30261 _values!1134) e!722812)))

(assert (=> start!107014 true))

(declare-fun array_inv!30262 (array!82585) Bool)

(assert (=> start!107014 (array_inv!30262 _keys!1364)))

(declare-fun mapNonEmpty!50581 () Bool)

(declare-fun mapRes!50581 () Bool)

(declare-fun tp!96761 () Bool)

(declare-fun e!722809 () Bool)

(assert (=> mapNonEmpty!50581 (= mapRes!50581 (and tp!96761 e!722809))))

(declare-fun mapValue!50581 () ValueCell!15480)

(declare-fun mapRest!50581 () (Array (_ BitVec 32) ValueCell!15480))

(declare-fun mapKey!50581 () (_ BitVec 32))

(assert (=> mapNonEmpty!50581 (= (arr!39826 _values!1134) (store mapRest!50581 mapKey!50581 mapValue!50581))))

(declare-fun b!1268405 () Bool)

(declare-fun e!722810 () Bool)

(assert (=> b!1268405 (= e!722812 (and e!722810 mapRes!50581))))

(declare-fun condMapEmpty!50581 () Bool)

(declare-fun mapDefault!50581 () ValueCell!15480)

(assert (=> b!1268405 (= condMapEmpty!50581 (= (arr!39826 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15480)) mapDefault!50581)))))

(declare-fun b!1268406 () Bool)

(declare-fun tp_is_empty!32667 () Bool)

(assert (=> b!1268406 (= e!722809 tp_is_empty!32667)))

(declare-fun b!1268407 () Bool)

(assert (=> b!1268407 (= e!722813 false)))

(declare-fun lt!574373 () Bool)

(declare-datatypes ((List!28560 0))(
  ( (Nil!28557) (Cons!28556 (h!29765 (_ BitVec 64)) (t!42096 List!28560)) )
))
(declare-fun arrayNoDuplicates!0 (array!82585 (_ BitVec 32) List!28560) Bool)

(assert (=> b!1268407 (= lt!574373 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28557))))

(declare-fun b!1268408 () Bool)

(assert (=> b!1268408 (= e!722810 tp_is_empty!32667)))

(declare-fun mapIsEmpty!50581 () Bool)

(assert (=> mapIsEmpty!50581 mapRes!50581))

(assert (= (and start!107014 res!844304) b!1268404))

(assert (= (and b!1268404 res!844302) b!1268403))

(assert (= (and b!1268403 res!844303) b!1268407))

(assert (= (and b!1268405 condMapEmpty!50581) mapIsEmpty!50581))

(assert (= (and b!1268405 (not condMapEmpty!50581)) mapNonEmpty!50581))

(get-info :version)

(assert (= (and mapNonEmpty!50581 ((_ is ValueCellFull!15480) mapValue!50581)) b!1268406))

(assert (= (and b!1268405 ((_ is ValueCellFull!15480) mapDefault!50581)) b!1268408))

(assert (= start!107014 b!1268405))

(declare-fun m!1167269 () Bool)

(assert (=> b!1268403 m!1167269))

(declare-fun m!1167271 () Bool)

(assert (=> start!107014 m!1167271))

(declare-fun m!1167273 () Bool)

(assert (=> start!107014 m!1167273))

(declare-fun m!1167275 () Bool)

(assert (=> start!107014 m!1167275))

(declare-fun m!1167277 () Bool)

(assert (=> mapNonEmpty!50581 m!1167277))

(declare-fun m!1167279 () Bool)

(assert (=> b!1268407 m!1167279))

(check-sat (not b!1268403) tp_is_empty!32667 (not mapNonEmpty!50581) (not b!1268407) (not start!107014))
(check-sat)
