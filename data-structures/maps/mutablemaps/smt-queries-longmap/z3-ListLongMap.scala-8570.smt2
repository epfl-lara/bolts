; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104666 () Bool)

(assert start!104666)

(declare-fun b!1247513 () Bool)

(declare-fun e!707786 () Bool)

(declare-fun e!707787 () Bool)

(declare-fun mapRes!48793 () Bool)

(assert (=> b!1247513 (= e!707786 (and e!707787 mapRes!48793))))

(declare-fun condMapEmpty!48793 () Bool)

(declare-datatypes ((V!47177 0))(
  ( (V!47178 (val!15742 Int)) )
))
(declare-datatypes ((ValueCell!14916 0))(
  ( (ValueCellFull!14916 (v!18438 V!47177)) (EmptyCell!14916) )
))
(declare-datatypes ((array!80393 0))(
  ( (array!80394 (arr!38761 (Array (_ BitVec 32) ValueCell!14916)) (size!39298 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80393)

(declare-fun mapDefault!48793 () ValueCell!14916)

(assert (=> b!1247513 (= condMapEmpty!48793 (= (arr!38761 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14916)) mapDefault!48793)))))

(declare-fun b!1247514 () Bool)

(declare-fun e!707785 () Bool)

(assert (=> b!1247514 (= e!707785 false)))

(declare-fun lt!563226 () Bool)

(declare-datatypes ((array!80395 0))(
  ( (array!80396 (arr!38762 (Array (_ BitVec 32) (_ BitVec 64))) (size!39299 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80395)

(declare-datatypes ((List!27700 0))(
  ( (Nil!27697) (Cons!27696 (h!28905 (_ BitVec 64)) (t!41176 List!27700)) )
))
(declare-fun arrayNoDuplicates!0 (array!80395 (_ BitVec 32) List!27700) Bool)

(assert (=> b!1247514 (= lt!563226 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27697))))

(declare-fun mapIsEmpty!48793 () Bool)

(assert (=> mapIsEmpty!48793 mapRes!48793))

(declare-fun mapNonEmpty!48793 () Bool)

(declare-fun tp!92895 () Bool)

(declare-fun e!707783 () Bool)

(assert (=> mapNonEmpty!48793 (= mapRes!48793 (and tp!92895 e!707783))))

(declare-fun mapValue!48793 () ValueCell!14916)

(declare-fun mapKey!48793 () (_ BitVec 32))

(declare-fun mapRest!48793 () (Array (_ BitVec 32) ValueCell!14916))

(assert (=> mapNonEmpty!48793 (= (arr!38761 _values!914) (store mapRest!48793 mapKey!48793 mapValue!48793))))

(declare-fun b!1247515 () Bool)

(declare-fun res!832475 () Bool)

(assert (=> b!1247515 (=> (not res!832475) (not e!707785))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80395 (_ BitVec 32)) Bool)

(assert (=> b!1247515 (= res!832475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1247516 () Bool)

(declare-fun tp_is_empty!31359 () Bool)

(assert (=> b!1247516 (= e!707783 tp_is_empty!31359)))

(declare-fun b!1247517 () Bool)

(assert (=> b!1247517 (= e!707787 tp_is_empty!31359)))

(declare-fun res!832474 () Bool)

(assert (=> start!104666 (=> (not res!832474) (not e!707785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104666 (= res!832474 (validMask!0 mask!1466))))

(assert (=> start!104666 e!707785))

(assert (=> start!104666 true))

(declare-fun array_inv!29519 (array!80395) Bool)

(assert (=> start!104666 (array_inv!29519 _keys!1118)))

(declare-fun array_inv!29520 (array!80393) Bool)

(assert (=> start!104666 (and (array_inv!29520 _values!914) e!707786)))

(declare-fun b!1247518 () Bool)

(declare-fun res!832476 () Bool)

(assert (=> b!1247518 (=> (not res!832476) (not e!707785))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247518 (= res!832476 (and (= (size!39298 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39299 _keys!1118) (size!39298 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!104666 res!832474) b!1247518))

(assert (= (and b!1247518 res!832476) b!1247515))

(assert (= (and b!1247515 res!832475) b!1247514))

(assert (= (and b!1247513 condMapEmpty!48793) mapIsEmpty!48793))

(assert (= (and b!1247513 (not condMapEmpty!48793)) mapNonEmpty!48793))

(get-info :version)

(assert (= (and mapNonEmpty!48793 ((_ is ValueCellFull!14916) mapValue!48793)) b!1247516))

(assert (= (and b!1247513 ((_ is ValueCellFull!14916) mapDefault!48793)) b!1247517))

(assert (= start!104666 b!1247513))

(declare-fun m!1149009 () Bool)

(assert (=> b!1247514 m!1149009))

(declare-fun m!1149011 () Bool)

(assert (=> mapNonEmpty!48793 m!1149011))

(declare-fun m!1149013 () Bool)

(assert (=> b!1247515 m!1149013))

(declare-fun m!1149015 () Bool)

(assert (=> start!104666 m!1149015))

(declare-fun m!1149017 () Bool)

(assert (=> start!104666 m!1149017))

(declare-fun m!1149019 () Bool)

(assert (=> start!104666 m!1149019))

(check-sat (not b!1247514) (not mapNonEmpty!48793) (not b!1247515) tp_is_empty!31359 (not start!104666))
(check-sat)
