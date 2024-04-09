; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107008 () Bool)

(assert start!107008)

(declare-fun mapNonEmpty!50572 () Bool)

(declare-fun mapRes!50572 () Bool)

(declare-fun tp!96752 () Bool)

(declare-fun e!722767 () Bool)

(assert (=> mapNonEmpty!50572 (= mapRes!50572 (and tp!96752 e!722767))))

(declare-fun mapKey!50572 () (_ BitVec 32))

(declare-datatypes ((V!48741 0))(
  ( (V!48742 (val!16405 Int)) )
))
(declare-datatypes ((ValueCell!15477 0))(
  ( (ValueCellFull!15477 (v!19040 V!48741)) (EmptyCell!15477) )
))
(declare-fun mapRest!50572 () (Array (_ BitVec 32) ValueCell!15477))

(declare-datatypes ((array!82573 0))(
  ( (array!82574 (arr!39819 (Array (_ BitVec 32) ValueCell!15477)) (size!40356 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82573)

(declare-fun mapValue!50572 () ValueCell!15477)

(assert (=> mapNonEmpty!50572 (= (arr!39819 _values!1134) (store mapRest!50572 mapKey!50572 mapValue!50572))))

(declare-fun res!844277 () Bool)

(declare-fun e!722768 () Bool)

(assert (=> start!107008 (=> (not res!844277) (not e!722768))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107008 (= res!844277 (validMask!0 mask!1730))))

(assert (=> start!107008 e!722768))

(declare-fun e!722765 () Bool)

(declare-fun array_inv!30259 (array!82573) Bool)

(assert (=> start!107008 (and (array_inv!30259 _values!1134) e!722765)))

(assert (=> start!107008 true))

(declare-datatypes ((array!82575 0))(
  ( (array!82576 (arr!39820 (Array (_ BitVec 32) (_ BitVec 64))) (size!40357 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82575)

(declare-fun array_inv!30260 (array!82575) Bool)

(assert (=> start!107008 (array_inv!30260 _keys!1364)))

(declare-fun b!1268349 () Bool)

(assert (=> b!1268349 (= e!722768 false)))

(declare-fun lt!574364 () Bool)

(declare-datatypes ((List!28558 0))(
  ( (Nil!28555) (Cons!28554 (h!29763 (_ BitVec 64)) (t!42094 List!28558)) )
))
(declare-fun arrayNoDuplicates!0 (array!82575 (_ BitVec 32) List!28558) Bool)

(assert (=> b!1268349 (= lt!574364 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28555))))

(declare-fun b!1268350 () Bool)

(declare-fun e!722764 () Bool)

(assert (=> b!1268350 (= e!722765 (and e!722764 mapRes!50572))))

(declare-fun condMapEmpty!50572 () Bool)

(declare-fun mapDefault!50572 () ValueCell!15477)

(assert (=> b!1268350 (= condMapEmpty!50572 (= (arr!39819 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15477)) mapDefault!50572)))))

(declare-fun b!1268351 () Bool)

(declare-fun res!844276 () Bool)

(assert (=> b!1268351 (=> (not res!844276) (not e!722768))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268351 (= res!844276 (and (= (size!40356 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40357 _keys!1364) (size!40356 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1268352 () Bool)

(declare-fun tp_is_empty!32661 () Bool)

(assert (=> b!1268352 (= e!722767 tp_is_empty!32661)))

(declare-fun b!1268353 () Bool)

(declare-fun res!844275 () Bool)

(assert (=> b!1268353 (=> (not res!844275) (not e!722768))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82575 (_ BitVec 32)) Bool)

(assert (=> b!1268353 (= res!844275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!50572 () Bool)

(assert (=> mapIsEmpty!50572 mapRes!50572))

(declare-fun b!1268354 () Bool)

(assert (=> b!1268354 (= e!722764 tp_is_empty!32661)))

(assert (= (and start!107008 res!844277) b!1268351))

(assert (= (and b!1268351 res!844276) b!1268353))

(assert (= (and b!1268353 res!844275) b!1268349))

(assert (= (and b!1268350 condMapEmpty!50572) mapIsEmpty!50572))

(assert (= (and b!1268350 (not condMapEmpty!50572)) mapNonEmpty!50572))

(get-info :version)

(assert (= (and mapNonEmpty!50572 ((_ is ValueCellFull!15477) mapValue!50572)) b!1268352))

(assert (= (and b!1268350 ((_ is ValueCellFull!15477) mapDefault!50572)) b!1268354))

(assert (= start!107008 b!1268350))

(declare-fun m!1167233 () Bool)

(assert (=> mapNonEmpty!50572 m!1167233))

(declare-fun m!1167235 () Bool)

(assert (=> start!107008 m!1167235))

(declare-fun m!1167237 () Bool)

(assert (=> start!107008 m!1167237))

(declare-fun m!1167239 () Bool)

(assert (=> start!107008 m!1167239))

(declare-fun m!1167241 () Bool)

(assert (=> b!1268349 m!1167241))

(declare-fun m!1167243 () Bool)

(assert (=> b!1268353 m!1167243))

(check-sat (not b!1268349) tp_is_empty!32661 (not mapNonEmpty!50572) (not start!107008) (not b!1268353))
(check-sat)
