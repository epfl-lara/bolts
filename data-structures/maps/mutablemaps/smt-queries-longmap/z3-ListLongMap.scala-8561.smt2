; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104568 () Bool)

(assert start!104568)

(declare-fun res!832159 () Bool)

(declare-fun e!707284 () Bool)

(assert (=> start!104568 (=> (not res!832159) (not e!707284))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104568 (= res!832159 (validMask!0 mask!1466))))

(assert (=> start!104568 e!707284))

(assert (=> start!104568 true))

(declare-datatypes ((array!80283 0))(
  ( (array!80284 (arr!38711 (Array (_ BitVec 32) (_ BitVec 64))) (size!39248 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80283)

(declare-fun array_inv!29487 (array!80283) Bool)

(assert (=> start!104568 (array_inv!29487 _keys!1118)))

(declare-datatypes ((V!47105 0))(
  ( (V!47106 (val!15715 Int)) )
))
(declare-datatypes ((ValueCell!14889 0))(
  ( (ValueCellFull!14889 (v!18410 V!47105)) (EmptyCell!14889) )
))
(declare-datatypes ((array!80285 0))(
  ( (array!80286 (arr!38712 (Array (_ BitVec 32) ValueCell!14889)) (size!39249 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80285)

(declare-fun e!707285 () Bool)

(declare-fun array_inv!29488 (array!80285) Bool)

(assert (=> start!104568 (and (array_inv!29488 _values!914) e!707285)))

(declare-fun b!1246891 () Bool)

(declare-fun e!707286 () Bool)

(declare-fun mapRes!48697 () Bool)

(assert (=> b!1246891 (= e!707285 (and e!707286 mapRes!48697))))

(declare-fun condMapEmpty!48697 () Bool)

(declare-fun mapDefault!48697 () ValueCell!14889)

(assert (=> b!1246891 (= condMapEmpty!48697 (= (arr!38712 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14889)) mapDefault!48697)))))

(declare-fun mapIsEmpty!48697 () Bool)

(assert (=> mapIsEmpty!48697 mapRes!48697))

(declare-fun b!1246892 () Bool)

(declare-fun tp_is_empty!31305 () Bool)

(assert (=> b!1246892 (= e!707286 tp_is_empty!31305)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun b!1246893 () Bool)

(assert (=> b!1246893 (= e!707284 (and (= (size!39249 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39248 _keys!1118) (size!39249 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (size!39248 _keys!1118) (bvadd #b00000000000000000000000000000001 mask!1466)) (bvsgt #b00000000000000000000000000000000 (size!39248 _keys!1118))))))

(declare-fun b!1246894 () Bool)

(declare-fun e!707283 () Bool)

(assert (=> b!1246894 (= e!707283 tp_is_empty!31305)))

(declare-fun mapNonEmpty!48697 () Bool)

(declare-fun tp!92799 () Bool)

(assert (=> mapNonEmpty!48697 (= mapRes!48697 (and tp!92799 e!707283))))

(declare-fun mapKey!48697 () (_ BitVec 32))

(declare-fun mapRest!48697 () (Array (_ BitVec 32) ValueCell!14889))

(declare-fun mapValue!48697 () ValueCell!14889)

(assert (=> mapNonEmpty!48697 (= (arr!38712 _values!914) (store mapRest!48697 mapKey!48697 mapValue!48697))))

(assert (= (and start!104568 res!832159) b!1246893))

(assert (= (and b!1246891 condMapEmpty!48697) mapIsEmpty!48697))

(assert (= (and b!1246891 (not condMapEmpty!48697)) mapNonEmpty!48697))

(get-info :version)

(assert (= (and mapNonEmpty!48697 ((_ is ValueCellFull!14889) mapValue!48697)) b!1246894))

(assert (= (and b!1246891 ((_ is ValueCellFull!14889) mapDefault!48697)) b!1246892))

(assert (= start!104568 b!1246891))

(declare-fun m!1148617 () Bool)

(assert (=> start!104568 m!1148617))

(declare-fun m!1148619 () Bool)

(assert (=> start!104568 m!1148619))

(declare-fun m!1148621 () Bool)

(assert (=> start!104568 m!1148621))

(declare-fun m!1148623 () Bool)

(assert (=> mapNonEmpty!48697 m!1148623))

(check-sat (not start!104568) (not mapNonEmpty!48697) tp_is_empty!31305)
(check-sat)
(get-model)

(declare-fun d!137631 () Bool)

(assert (=> d!137631 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!104568 d!137631))

(declare-fun d!137633 () Bool)

(assert (=> d!137633 (= (array_inv!29487 _keys!1118) (bvsge (size!39248 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!104568 d!137633))

(declare-fun d!137635 () Bool)

(assert (=> d!137635 (= (array_inv!29488 _values!914) (bvsge (size!39249 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!104568 d!137635))

(declare-fun b!1246913 () Bool)

(declare-fun e!707307 () Bool)

(assert (=> b!1246913 (= e!707307 tp_is_empty!31305)))

(declare-fun b!1246914 () Bool)

(declare-fun e!707308 () Bool)

(assert (=> b!1246914 (= e!707308 tp_is_empty!31305)))

(declare-fun condMapEmpty!48703 () Bool)

(declare-fun mapDefault!48703 () ValueCell!14889)

(assert (=> mapNonEmpty!48697 (= condMapEmpty!48703 (= mapRest!48697 ((as const (Array (_ BitVec 32) ValueCell!14889)) mapDefault!48703)))))

(declare-fun mapRes!48703 () Bool)

(assert (=> mapNonEmpty!48697 (= tp!92799 (and e!707308 mapRes!48703))))

(declare-fun mapIsEmpty!48703 () Bool)

(assert (=> mapIsEmpty!48703 mapRes!48703))

(declare-fun mapNonEmpty!48703 () Bool)

(declare-fun tp!92805 () Bool)

(assert (=> mapNonEmpty!48703 (= mapRes!48703 (and tp!92805 e!707307))))

(declare-fun mapValue!48703 () ValueCell!14889)

(declare-fun mapRest!48703 () (Array (_ BitVec 32) ValueCell!14889))

(declare-fun mapKey!48703 () (_ BitVec 32))

(assert (=> mapNonEmpty!48703 (= mapRest!48697 (store mapRest!48703 mapKey!48703 mapValue!48703))))

(assert (= (and mapNonEmpty!48697 condMapEmpty!48703) mapIsEmpty!48703))

(assert (= (and mapNonEmpty!48697 (not condMapEmpty!48703)) mapNonEmpty!48703))

(assert (= (and mapNonEmpty!48703 ((_ is ValueCellFull!14889) mapValue!48703)) b!1246913))

(assert (= (and mapNonEmpty!48697 ((_ is ValueCellFull!14889) mapDefault!48703)) b!1246914))

(declare-fun m!1148633 () Bool)

(assert (=> mapNonEmpty!48703 m!1148633))

(check-sat (not mapNonEmpty!48703) tp_is_empty!31305)
(check-sat)
