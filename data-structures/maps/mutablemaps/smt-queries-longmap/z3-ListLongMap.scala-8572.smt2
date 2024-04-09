; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104678 () Bool)

(assert start!104678)

(declare-fun mapIsEmpty!48811 () Bool)

(declare-fun mapRes!48811 () Bool)

(assert (=> mapIsEmpty!48811 mapRes!48811))

(declare-fun b!1247621 () Bool)

(declare-fun res!832529 () Bool)

(declare-fun e!707877 () Bool)

(assert (=> b!1247621 (=> (not res!832529) (not e!707877))))

(declare-datatypes ((array!80413 0))(
  ( (array!80414 (arr!38771 (Array (_ BitVec 32) (_ BitVec 64))) (size!39308 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80413)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80413 (_ BitVec 32)) Bool)

(assert (=> b!1247621 (= res!832529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1247622 () Bool)

(assert (=> b!1247622 (= e!707877 false)))

(declare-fun lt!563244 () Bool)

(declare-datatypes ((List!27703 0))(
  ( (Nil!27700) (Cons!27699 (h!28908 (_ BitVec 64)) (t!41179 List!27703)) )
))
(declare-fun arrayNoDuplicates!0 (array!80413 (_ BitVec 32) List!27703) Bool)

(assert (=> b!1247622 (= lt!563244 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27700))))

(declare-fun b!1247623 () Bool)

(declare-fun e!707874 () Bool)

(declare-fun tp_is_empty!31371 () Bool)

(assert (=> b!1247623 (= e!707874 tp_is_empty!31371)))

(declare-fun b!1247624 () Bool)

(declare-fun e!707873 () Bool)

(assert (=> b!1247624 (= e!707873 tp_is_empty!31371)))

(declare-fun res!832530 () Bool)

(assert (=> start!104678 (=> (not res!832530) (not e!707877))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104678 (= res!832530 (validMask!0 mask!1466))))

(assert (=> start!104678 e!707877))

(assert (=> start!104678 true))

(declare-fun array_inv!29527 (array!80413) Bool)

(assert (=> start!104678 (array_inv!29527 _keys!1118)))

(declare-datatypes ((V!47193 0))(
  ( (V!47194 (val!15748 Int)) )
))
(declare-datatypes ((ValueCell!14922 0))(
  ( (ValueCellFull!14922 (v!18444 V!47193)) (EmptyCell!14922) )
))
(declare-datatypes ((array!80415 0))(
  ( (array!80416 (arr!38772 (Array (_ BitVec 32) ValueCell!14922)) (size!39309 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80415)

(declare-fun e!707876 () Bool)

(declare-fun array_inv!29528 (array!80415) Bool)

(assert (=> start!104678 (and (array_inv!29528 _values!914) e!707876)))

(declare-fun b!1247625 () Bool)

(assert (=> b!1247625 (= e!707876 (and e!707874 mapRes!48811))))

(declare-fun condMapEmpty!48811 () Bool)

(declare-fun mapDefault!48811 () ValueCell!14922)

(assert (=> b!1247625 (= condMapEmpty!48811 (= (arr!38772 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14922)) mapDefault!48811)))))

(declare-fun b!1247626 () Bool)

(declare-fun res!832528 () Bool)

(assert (=> b!1247626 (=> (not res!832528) (not e!707877))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247626 (= res!832528 (and (= (size!39309 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39308 _keys!1118) (size!39309 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!48811 () Bool)

(declare-fun tp!92913 () Bool)

(assert (=> mapNonEmpty!48811 (= mapRes!48811 (and tp!92913 e!707873))))

(declare-fun mapValue!48811 () ValueCell!14922)

(declare-fun mapKey!48811 () (_ BitVec 32))

(declare-fun mapRest!48811 () (Array (_ BitVec 32) ValueCell!14922))

(assert (=> mapNonEmpty!48811 (= (arr!38772 _values!914) (store mapRest!48811 mapKey!48811 mapValue!48811))))

(assert (= (and start!104678 res!832530) b!1247626))

(assert (= (and b!1247626 res!832528) b!1247621))

(assert (= (and b!1247621 res!832529) b!1247622))

(assert (= (and b!1247625 condMapEmpty!48811) mapIsEmpty!48811))

(assert (= (and b!1247625 (not condMapEmpty!48811)) mapNonEmpty!48811))

(get-info :version)

(assert (= (and mapNonEmpty!48811 ((_ is ValueCellFull!14922) mapValue!48811)) b!1247624))

(assert (= (and b!1247625 ((_ is ValueCellFull!14922) mapDefault!48811)) b!1247623))

(assert (= start!104678 b!1247625))

(declare-fun m!1149081 () Bool)

(assert (=> b!1247621 m!1149081))

(declare-fun m!1149083 () Bool)

(assert (=> b!1247622 m!1149083))

(declare-fun m!1149085 () Bool)

(assert (=> start!104678 m!1149085))

(declare-fun m!1149087 () Bool)

(assert (=> start!104678 m!1149087))

(declare-fun m!1149089 () Bool)

(assert (=> start!104678 m!1149089))

(declare-fun m!1149091 () Bool)

(assert (=> mapNonEmpty!48811 m!1149091))

(check-sat (not start!104678) (not mapNonEmpty!48811) (not b!1247621) tp_is_empty!31371 (not b!1247622))
(check-sat)
