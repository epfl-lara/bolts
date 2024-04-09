; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104660 () Bool)

(assert start!104660)

(declare-fun b!1247459 () Bool)

(declare-fun res!832448 () Bool)

(declare-fun e!707742 () Bool)

(assert (=> b!1247459 (=> (not res!832448) (not e!707742))))

(declare-datatypes ((array!80383 0))(
  ( (array!80384 (arr!38756 (Array (_ BitVec 32) (_ BitVec 64))) (size!39293 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80383)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80383 (_ BitVec 32)) Bool)

(assert (=> b!1247459 (= res!832448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!48784 () Bool)

(declare-fun mapRes!48784 () Bool)

(declare-fun tp!92886 () Bool)

(declare-fun e!707739 () Bool)

(assert (=> mapNonEmpty!48784 (= mapRes!48784 (and tp!92886 e!707739))))

(declare-fun mapKey!48784 () (_ BitVec 32))

(declare-datatypes ((V!47169 0))(
  ( (V!47170 (val!15739 Int)) )
))
(declare-datatypes ((ValueCell!14913 0))(
  ( (ValueCellFull!14913 (v!18435 V!47169)) (EmptyCell!14913) )
))
(declare-fun mapRest!48784 () (Array (_ BitVec 32) ValueCell!14913))

(declare-datatypes ((array!80385 0))(
  ( (array!80386 (arr!38757 (Array (_ BitVec 32) ValueCell!14913)) (size!39294 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80385)

(declare-fun mapValue!48784 () ValueCell!14913)

(assert (=> mapNonEmpty!48784 (= (arr!38757 _values!914) (store mapRest!48784 mapKey!48784 mapValue!48784))))

(declare-fun b!1247460 () Bool)

(declare-fun e!707740 () Bool)

(declare-fun tp_is_empty!31353 () Bool)

(assert (=> b!1247460 (= e!707740 tp_is_empty!31353)))

(declare-fun b!1247461 () Bool)

(declare-fun e!707741 () Bool)

(assert (=> b!1247461 (= e!707741 (and e!707740 mapRes!48784))))

(declare-fun condMapEmpty!48784 () Bool)

(declare-fun mapDefault!48784 () ValueCell!14913)

(assert (=> b!1247461 (= condMapEmpty!48784 (= (arr!38757 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14913)) mapDefault!48784)))))

(declare-fun b!1247462 () Bool)

(assert (=> b!1247462 (= e!707739 tp_is_empty!31353)))

(declare-fun res!832447 () Bool)

(assert (=> start!104660 (=> (not res!832447) (not e!707742))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104660 (= res!832447 (validMask!0 mask!1466))))

(assert (=> start!104660 e!707742))

(assert (=> start!104660 true))

(declare-fun array_inv!29517 (array!80383) Bool)

(assert (=> start!104660 (array_inv!29517 _keys!1118)))

(declare-fun array_inv!29518 (array!80385) Bool)

(assert (=> start!104660 (and (array_inv!29518 _values!914) e!707741)))

(declare-fun mapIsEmpty!48784 () Bool)

(assert (=> mapIsEmpty!48784 mapRes!48784))

(declare-fun b!1247463 () Bool)

(assert (=> b!1247463 (= e!707742 false)))

(declare-fun lt!563217 () Bool)

(declare-datatypes ((List!27698 0))(
  ( (Nil!27695) (Cons!27694 (h!28903 (_ BitVec 64)) (t!41174 List!27698)) )
))
(declare-fun arrayNoDuplicates!0 (array!80383 (_ BitVec 32) List!27698) Bool)

(assert (=> b!1247463 (= lt!563217 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27695))))

(declare-fun b!1247464 () Bool)

(declare-fun res!832449 () Bool)

(assert (=> b!1247464 (=> (not res!832449) (not e!707742))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247464 (= res!832449 (and (= (size!39294 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39293 _keys!1118) (size!39294 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!104660 res!832447) b!1247464))

(assert (= (and b!1247464 res!832449) b!1247459))

(assert (= (and b!1247459 res!832448) b!1247463))

(assert (= (and b!1247461 condMapEmpty!48784) mapIsEmpty!48784))

(assert (= (and b!1247461 (not condMapEmpty!48784)) mapNonEmpty!48784))

(get-info :version)

(assert (= (and mapNonEmpty!48784 ((_ is ValueCellFull!14913) mapValue!48784)) b!1247462))

(assert (= (and b!1247461 ((_ is ValueCellFull!14913) mapDefault!48784)) b!1247460))

(assert (= start!104660 b!1247461))

(declare-fun m!1148973 () Bool)

(assert (=> b!1247459 m!1148973))

(declare-fun m!1148975 () Bool)

(assert (=> mapNonEmpty!48784 m!1148975))

(declare-fun m!1148977 () Bool)

(assert (=> start!104660 m!1148977))

(declare-fun m!1148979 () Bool)

(assert (=> start!104660 m!1148979))

(declare-fun m!1148981 () Bool)

(assert (=> start!104660 m!1148981))

(declare-fun m!1148983 () Bool)

(assert (=> b!1247463 m!1148983))

(check-sat (not mapNonEmpty!48784) (not b!1247463) tp_is_empty!31353 (not start!104660) (not b!1247459))
(check-sat)
