; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104642 () Bool)

(assert start!104642)

(declare-fun b!1247297 () Bool)

(declare-fun res!832368 () Bool)

(declare-fun e!707606 () Bool)

(assert (=> b!1247297 (=> (not res!832368) (not e!707606))))

(declare-datatypes ((array!80347 0))(
  ( (array!80348 (arr!38738 (Array (_ BitVec 32) (_ BitVec 64))) (size!39275 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80347)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80347 (_ BitVec 32)) Bool)

(assert (=> b!1247297 (= res!832368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1247298 () Bool)

(declare-fun e!707605 () Bool)

(declare-fun e!707607 () Bool)

(declare-fun mapRes!48757 () Bool)

(assert (=> b!1247298 (= e!707605 (and e!707607 mapRes!48757))))

(declare-fun condMapEmpty!48757 () Bool)

(declare-datatypes ((V!47145 0))(
  ( (V!47146 (val!15730 Int)) )
))
(declare-datatypes ((ValueCell!14904 0))(
  ( (ValueCellFull!14904 (v!18426 V!47145)) (EmptyCell!14904) )
))
(declare-datatypes ((array!80349 0))(
  ( (array!80350 (arr!38739 (Array (_ BitVec 32) ValueCell!14904)) (size!39276 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80349)

(declare-fun mapDefault!48757 () ValueCell!14904)

(assert (=> b!1247298 (= condMapEmpty!48757 (= (arr!38739 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14904)) mapDefault!48757)))))

(declare-fun b!1247299 () Bool)

(declare-fun res!832367 () Bool)

(assert (=> b!1247299 (=> (not res!832367) (not e!707606))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247299 (= res!832367 (and (= (size!39276 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39275 _keys!1118) (size!39276 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1247301 () Bool)

(declare-fun tp_is_empty!31335 () Bool)

(assert (=> b!1247301 (= e!707607 tp_is_empty!31335)))

(declare-fun mapNonEmpty!48757 () Bool)

(declare-fun tp!92859 () Bool)

(declare-fun e!707603 () Bool)

(assert (=> mapNonEmpty!48757 (= mapRes!48757 (and tp!92859 e!707603))))

(declare-fun mapValue!48757 () ValueCell!14904)

(declare-fun mapRest!48757 () (Array (_ BitVec 32) ValueCell!14904))

(declare-fun mapKey!48757 () (_ BitVec 32))

(assert (=> mapNonEmpty!48757 (= (arr!38739 _values!914) (store mapRest!48757 mapKey!48757 mapValue!48757))))

(declare-fun mapIsEmpty!48757 () Bool)

(assert (=> mapIsEmpty!48757 mapRes!48757))

(declare-fun b!1247302 () Bool)

(assert (=> b!1247302 (= e!707603 tp_is_empty!31335)))

(declare-fun res!832366 () Bool)

(assert (=> start!104642 (=> (not res!832366) (not e!707606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104642 (= res!832366 (validMask!0 mask!1466))))

(assert (=> start!104642 e!707606))

(assert (=> start!104642 true))

(declare-fun array_inv!29505 (array!80347) Bool)

(assert (=> start!104642 (array_inv!29505 _keys!1118)))

(declare-fun array_inv!29506 (array!80349) Bool)

(assert (=> start!104642 (and (array_inv!29506 _values!914) e!707605)))

(declare-fun b!1247300 () Bool)

(assert (=> b!1247300 (= e!707606 false)))

(declare-fun lt!563190 () Bool)

(declare-datatypes ((List!27689 0))(
  ( (Nil!27686) (Cons!27685 (h!28894 (_ BitVec 64)) (t!41165 List!27689)) )
))
(declare-fun arrayNoDuplicates!0 (array!80347 (_ BitVec 32) List!27689) Bool)

(assert (=> b!1247300 (= lt!563190 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27686))))

(assert (= (and start!104642 res!832366) b!1247299))

(assert (= (and b!1247299 res!832367) b!1247297))

(assert (= (and b!1247297 res!832368) b!1247300))

(assert (= (and b!1247298 condMapEmpty!48757) mapIsEmpty!48757))

(assert (= (and b!1247298 (not condMapEmpty!48757)) mapNonEmpty!48757))

(get-info :version)

(assert (= (and mapNonEmpty!48757 ((_ is ValueCellFull!14904) mapValue!48757)) b!1247302))

(assert (= (and b!1247298 ((_ is ValueCellFull!14904) mapDefault!48757)) b!1247301))

(assert (= start!104642 b!1247298))

(declare-fun m!1148865 () Bool)

(assert (=> b!1247297 m!1148865))

(declare-fun m!1148867 () Bool)

(assert (=> mapNonEmpty!48757 m!1148867))

(declare-fun m!1148869 () Bool)

(assert (=> start!104642 m!1148869))

(declare-fun m!1148871 () Bool)

(assert (=> start!104642 m!1148871))

(declare-fun m!1148873 () Bool)

(assert (=> start!104642 m!1148873))

(declare-fun m!1148875 () Bool)

(assert (=> b!1247300 m!1148875))

(check-sat (not mapNonEmpty!48757) (not b!1247300) (not start!104642) (not b!1247297) tp_is_empty!31335)
(check-sat)
