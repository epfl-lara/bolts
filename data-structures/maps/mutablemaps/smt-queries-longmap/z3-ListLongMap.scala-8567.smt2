; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104648 () Bool)

(assert start!104648)

(declare-fun mapIsEmpty!48766 () Bool)

(declare-fun mapRes!48766 () Bool)

(assert (=> mapIsEmpty!48766 mapRes!48766))

(declare-fun b!1247351 () Bool)

(declare-fun e!707649 () Bool)

(declare-fun tp_is_empty!31341 () Bool)

(assert (=> b!1247351 (= e!707649 tp_is_empty!31341)))

(declare-fun b!1247352 () Bool)

(declare-fun res!832393 () Bool)

(declare-fun e!707648 () Bool)

(assert (=> b!1247352 (=> (not res!832393) (not e!707648))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80359 0))(
  ( (array!80360 (arr!38744 (Array (_ BitVec 32) (_ BitVec 64))) (size!39281 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80359)

(declare-datatypes ((V!47153 0))(
  ( (V!47154 (val!15733 Int)) )
))
(declare-datatypes ((ValueCell!14907 0))(
  ( (ValueCellFull!14907 (v!18429 V!47153)) (EmptyCell!14907) )
))
(declare-datatypes ((array!80361 0))(
  ( (array!80362 (arr!38745 (Array (_ BitVec 32) ValueCell!14907)) (size!39282 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80361)

(assert (=> b!1247352 (= res!832393 (and (= (size!39282 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39281 _keys!1118) (size!39282 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1247353 () Bool)

(declare-fun res!832395 () Bool)

(assert (=> b!1247353 (=> (not res!832395) (not e!707648))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80359 (_ BitVec 32)) Bool)

(assert (=> b!1247353 (= res!832395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1247354 () Bool)

(declare-fun e!707651 () Bool)

(assert (=> b!1247354 (= e!707651 tp_is_empty!31341)))

(declare-fun res!832394 () Bool)

(assert (=> start!104648 (=> (not res!832394) (not e!707648))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104648 (= res!832394 (validMask!0 mask!1466))))

(assert (=> start!104648 e!707648))

(assert (=> start!104648 true))

(declare-fun array_inv!29509 (array!80359) Bool)

(assert (=> start!104648 (array_inv!29509 _keys!1118)))

(declare-fun e!707652 () Bool)

(declare-fun array_inv!29510 (array!80361) Bool)

(assert (=> start!104648 (and (array_inv!29510 _values!914) e!707652)))

(declare-fun mapNonEmpty!48766 () Bool)

(declare-fun tp!92868 () Bool)

(assert (=> mapNonEmpty!48766 (= mapRes!48766 (and tp!92868 e!707649))))

(declare-fun mapValue!48766 () ValueCell!14907)

(declare-fun mapRest!48766 () (Array (_ BitVec 32) ValueCell!14907))

(declare-fun mapKey!48766 () (_ BitVec 32))

(assert (=> mapNonEmpty!48766 (= (arr!38745 _values!914) (store mapRest!48766 mapKey!48766 mapValue!48766))))

(declare-fun b!1247355 () Bool)

(assert (=> b!1247355 (= e!707648 false)))

(declare-fun lt!563199 () Bool)

(declare-datatypes ((List!27692 0))(
  ( (Nil!27689) (Cons!27688 (h!28897 (_ BitVec 64)) (t!41168 List!27692)) )
))
(declare-fun arrayNoDuplicates!0 (array!80359 (_ BitVec 32) List!27692) Bool)

(assert (=> b!1247355 (= lt!563199 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27689))))

(declare-fun b!1247356 () Bool)

(assert (=> b!1247356 (= e!707652 (and e!707651 mapRes!48766))))

(declare-fun condMapEmpty!48766 () Bool)

(declare-fun mapDefault!48766 () ValueCell!14907)

(assert (=> b!1247356 (= condMapEmpty!48766 (= (arr!38745 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14907)) mapDefault!48766)))))

(assert (= (and start!104648 res!832394) b!1247352))

(assert (= (and b!1247352 res!832393) b!1247353))

(assert (= (and b!1247353 res!832395) b!1247355))

(assert (= (and b!1247356 condMapEmpty!48766) mapIsEmpty!48766))

(assert (= (and b!1247356 (not condMapEmpty!48766)) mapNonEmpty!48766))

(get-info :version)

(assert (= (and mapNonEmpty!48766 ((_ is ValueCellFull!14907) mapValue!48766)) b!1247351))

(assert (= (and b!1247356 ((_ is ValueCellFull!14907) mapDefault!48766)) b!1247354))

(assert (= start!104648 b!1247356))

(declare-fun m!1148901 () Bool)

(assert (=> b!1247353 m!1148901))

(declare-fun m!1148903 () Bool)

(assert (=> start!104648 m!1148903))

(declare-fun m!1148905 () Bool)

(assert (=> start!104648 m!1148905))

(declare-fun m!1148907 () Bool)

(assert (=> start!104648 m!1148907))

(declare-fun m!1148909 () Bool)

(assert (=> mapNonEmpty!48766 m!1148909))

(declare-fun m!1148911 () Bool)

(assert (=> b!1247355 m!1148911))

(check-sat (not b!1247355) tp_is_empty!31341 (not start!104648) (not b!1247353) (not mapNonEmpty!48766))
(check-sat)
