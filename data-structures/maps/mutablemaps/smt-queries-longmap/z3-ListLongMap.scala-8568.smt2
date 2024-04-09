; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104654 () Bool)

(assert start!104654)

(declare-fun b!1247405 () Bool)

(declare-fun e!707696 () Bool)

(assert (=> b!1247405 (= e!707696 false)))

(declare-fun lt!563208 () Bool)

(declare-datatypes ((array!80371 0))(
  ( (array!80372 (arr!38750 (Array (_ BitVec 32) (_ BitVec 64))) (size!39287 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80371)

(declare-datatypes ((List!27695 0))(
  ( (Nil!27692) (Cons!27691 (h!28900 (_ BitVec 64)) (t!41171 List!27695)) )
))
(declare-fun arrayNoDuplicates!0 (array!80371 (_ BitVec 32) List!27695) Bool)

(assert (=> b!1247405 (= lt!563208 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27692))))

(declare-fun b!1247406 () Bool)

(declare-fun e!707695 () Bool)

(declare-fun tp_is_empty!31347 () Bool)

(assert (=> b!1247406 (= e!707695 tp_is_empty!31347)))

(declare-fun res!832421 () Bool)

(assert (=> start!104654 (=> (not res!832421) (not e!707696))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104654 (= res!832421 (validMask!0 mask!1466))))

(assert (=> start!104654 e!707696))

(assert (=> start!104654 true))

(declare-fun array_inv!29515 (array!80371) Bool)

(assert (=> start!104654 (array_inv!29515 _keys!1118)))

(declare-datatypes ((V!47161 0))(
  ( (V!47162 (val!15736 Int)) )
))
(declare-datatypes ((ValueCell!14910 0))(
  ( (ValueCellFull!14910 (v!18432 V!47161)) (EmptyCell!14910) )
))
(declare-datatypes ((array!80373 0))(
  ( (array!80374 (arr!38751 (Array (_ BitVec 32) ValueCell!14910)) (size!39288 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80373)

(declare-fun e!707697 () Bool)

(declare-fun array_inv!29516 (array!80373) Bool)

(assert (=> start!104654 (and (array_inv!29516 _values!914) e!707697)))

(declare-fun b!1247407 () Bool)

(declare-fun e!707693 () Bool)

(assert (=> b!1247407 (= e!707693 tp_is_empty!31347)))

(declare-fun b!1247408 () Bool)

(declare-fun res!832420 () Bool)

(assert (=> b!1247408 (=> (not res!832420) (not e!707696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80371 (_ BitVec 32)) Bool)

(assert (=> b!1247408 (= res!832420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1247409 () Bool)

(declare-fun res!832422 () Bool)

(assert (=> b!1247409 (=> (not res!832422) (not e!707696))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247409 (= res!832422 (and (= (size!39288 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39287 _keys!1118) (size!39288 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!48775 () Bool)

(declare-fun mapRes!48775 () Bool)

(assert (=> mapIsEmpty!48775 mapRes!48775))

(declare-fun mapNonEmpty!48775 () Bool)

(declare-fun tp!92877 () Bool)

(assert (=> mapNonEmpty!48775 (= mapRes!48775 (and tp!92877 e!707693))))

(declare-fun mapValue!48775 () ValueCell!14910)

(declare-fun mapKey!48775 () (_ BitVec 32))

(declare-fun mapRest!48775 () (Array (_ BitVec 32) ValueCell!14910))

(assert (=> mapNonEmpty!48775 (= (arr!38751 _values!914) (store mapRest!48775 mapKey!48775 mapValue!48775))))

(declare-fun b!1247410 () Bool)

(assert (=> b!1247410 (= e!707697 (and e!707695 mapRes!48775))))

(declare-fun condMapEmpty!48775 () Bool)

(declare-fun mapDefault!48775 () ValueCell!14910)

(assert (=> b!1247410 (= condMapEmpty!48775 (= (arr!38751 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14910)) mapDefault!48775)))))

(assert (= (and start!104654 res!832421) b!1247409))

(assert (= (and b!1247409 res!832422) b!1247408))

(assert (= (and b!1247408 res!832420) b!1247405))

(assert (= (and b!1247410 condMapEmpty!48775) mapIsEmpty!48775))

(assert (= (and b!1247410 (not condMapEmpty!48775)) mapNonEmpty!48775))

(get-info :version)

(assert (= (and mapNonEmpty!48775 ((_ is ValueCellFull!14910) mapValue!48775)) b!1247407))

(assert (= (and b!1247410 ((_ is ValueCellFull!14910) mapDefault!48775)) b!1247406))

(assert (= start!104654 b!1247410))

(declare-fun m!1148937 () Bool)

(assert (=> b!1247405 m!1148937))

(declare-fun m!1148939 () Bool)

(assert (=> start!104654 m!1148939))

(declare-fun m!1148941 () Bool)

(assert (=> start!104654 m!1148941))

(declare-fun m!1148943 () Bool)

(assert (=> start!104654 m!1148943))

(declare-fun m!1148945 () Bool)

(assert (=> b!1247408 m!1148945))

(declare-fun m!1148947 () Bool)

(assert (=> mapNonEmpty!48775 m!1148947))

(check-sat tp_is_empty!31347 (not b!1247408) (not b!1247405) (not mapNonEmpty!48775) (not start!104654))
(check-sat)
