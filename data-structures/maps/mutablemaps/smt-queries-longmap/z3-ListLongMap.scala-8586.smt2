; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104784 () Bool)

(assert start!104784)

(declare-fun b_free!26553 () Bool)

(declare-fun b_next!26553 () Bool)

(assert (=> start!104784 (= b_free!26553 (not b_next!26553))))

(declare-fun tp!93149 () Bool)

(declare-fun b_and!44331 () Bool)

(assert (=> start!104784 (= tp!93149 b_and!44331)))

(declare-fun mapIsEmpty!48943 () Bool)

(declare-fun mapRes!48943 () Bool)

(assert (=> mapIsEmpty!48943 mapRes!48943))

(declare-fun b!1248598 () Bool)

(declare-fun e!708580 () Bool)

(declare-fun tp_is_empty!31455 () Bool)

(assert (=> b!1248598 (= e!708580 tp_is_empty!31455)))

(declare-fun b!1248599 () Bool)

(declare-fun res!833064 () Bool)

(declare-fun e!708578 () Bool)

(assert (=> b!1248599 (=> (not res!833064) (not e!708578))))

(declare-datatypes ((array!80579 0))(
  ( (array!80580 (arr!38852 (Array (_ BitVec 32) (_ BitVec 64))) (size!39389 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80579)

(declare-datatypes ((List!27750 0))(
  ( (Nil!27747) (Cons!27746 (h!28955 (_ BitVec 64)) (t!41228 List!27750)) )
))
(declare-fun arrayNoDuplicates!0 (array!80579 (_ BitVec 32) List!27750) Bool)

(assert (=> b!1248599 (= res!833064 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27747))))

(declare-fun b!1248600 () Bool)

(assert (=> b!1248600 (= e!708578 false)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((V!47305 0))(
  ( (V!47306 (val!15790 Int)) )
))
(declare-fun minValueAfter!43 () V!47305)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47305)

(declare-datatypes ((ValueCell!14964 0))(
  ( (ValueCellFull!14964 (v!18486 V!47305)) (EmptyCell!14964) )
))
(declare-datatypes ((array!80581 0))(
  ( (array!80582 (arr!38853 (Array (_ BitVec 32) ValueCell!14964)) (size!39390 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80581)

(declare-datatypes ((tuple2!20492 0))(
  ( (tuple2!20493 (_1!10256 (_ BitVec 64)) (_2!10256 V!47305)) )
))
(declare-datatypes ((List!27751 0))(
  ( (Nil!27748) (Cons!27747 (h!28956 tuple2!20492) (t!41229 List!27751)) )
))
(declare-datatypes ((ListLongMap!18377 0))(
  ( (ListLongMap!18378 (toList!9204 List!27751)) )
))
(declare-fun lt!563424 () ListLongMap!18377)

(declare-fun getCurrentListMapNoExtraKeys!5587 (array!80579 array!80581 (_ BitVec 32) (_ BitVec 32) V!47305 V!47305 (_ BitVec 32) Int) ListLongMap!18377)

(assert (=> b!1248600 (= lt!563424 (getCurrentListMapNoExtraKeys!5587 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!563423 () ListLongMap!18377)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun minValueBefore!43 () V!47305)

(assert (=> b!1248600 (= lt!563423 (getCurrentListMapNoExtraKeys!5587 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!833061 () Bool)

(assert (=> start!104784 (=> (not res!833061) (not e!708578))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104784 (= res!833061 (validMask!0 mask!1466))))

(assert (=> start!104784 e!708578))

(assert (=> start!104784 true))

(assert (=> start!104784 tp!93149))

(assert (=> start!104784 tp_is_empty!31455))

(declare-fun array_inv!29577 (array!80579) Bool)

(assert (=> start!104784 (array_inv!29577 _keys!1118)))

(declare-fun e!708582 () Bool)

(declare-fun array_inv!29578 (array!80581) Bool)

(assert (=> start!104784 (and (array_inv!29578 _values!914) e!708582)))

(declare-fun b!1248601 () Bool)

(declare-fun e!708581 () Bool)

(assert (=> b!1248601 (= e!708581 tp_is_empty!31455)))

(declare-fun b!1248602 () Bool)

(declare-fun res!833062 () Bool)

(assert (=> b!1248602 (=> (not res!833062) (not e!708578))))

(assert (=> b!1248602 (= res!833062 (and (= (size!39390 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39389 _keys!1118) (size!39390 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!48943 () Bool)

(declare-fun tp!93150 () Bool)

(assert (=> mapNonEmpty!48943 (= mapRes!48943 (and tp!93150 e!708581))))

(declare-fun mapRest!48943 () (Array (_ BitVec 32) ValueCell!14964))

(declare-fun mapKey!48943 () (_ BitVec 32))

(declare-fun mapValue!48943 () ValueCell!14964)

(assert (=> mapNonEmpty!48943 (= (arr!38853 _values!914) (store mapRest!48943 mapKey!48943 mapValue!48943))))

(declare-fun b!1248603 () Bool)

(assert (=> b!1248603 (= e!708582 (and e!708580 mapRes!48943))))

(declare-fun condMapEmpty!48943 () Bool)

(declare-fun mapDefault!48943 () ValueCell!14964)

(assert (=> b!1248603 (= condMapEmpty!48943 (= (arr!38853 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14964)) mapDefault!48943)))))

(declare-fun b!1248604 () Bool)

(declare-fun res!833063 () Bool)

(assert (=> b!1248604 (=> (not res!833063) (not e!708578))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80579 (_ BitVec 32)) Bool)

(assert (=> b!1248604 (= res!833063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(assert (= (and start!104784 res!833061) b!1248602))

(assert (= (and b!1248602 res!833062) b!1248604))

(assert (= (and b!1248604 res!833063) b!1248599))

(assert (= (and b!1248599 res!833064) b!1248600))

(assert (= (and b!1248603 condMapEmpty!48943) mapIsEmpty!48943))

(assert (= (and b!1248603 (not condMapEmpty!48943)) mapNonEmpty!48943))

(get-info :version)

(assert (= (and mapNonEmpty!48943 ((_ is ValueCellFull!14964) mapValue!48943)) b!1248601))

(assert (= (and b!1248603 ((_ is ValueCellFull!14964) mapDefault!48943)) b!1248598))

(assert (= start!104784 b!1248603))

(declare-fun m!1149729 () Bool)

(assert (=> start!104784 m!1149729))

(declare-fun m!1149731 () Bool)

(assert (=> start!104784 m!1149731))

(declare-fun m!1149733 () Bool)

(assert (=> start!104784 m!1149733))

(declare-fun m!1149735 () Bool)

(assert (=> b!1248600 m!1149735))

(declare-fun m!1149737 () Bool)

(assert (=> b!1248600 m!1149737))

(declare-fun m!1149739 () Bool)

(assert (=> mapNonEmpty!48943 m!1149739))

(declare-fun m!1149741 () Bool)

(assert (=> b!1248604 m!1149741))

(declare-fun m!1149743 () Bool)

(assert (=> b!1248599 m!1149743))

(check-sat tp_is_empty!31455 (not mapNonEmpty!48943) (not b_next!26553) (not b!1248599) (not b!1248604) b_and!44331 (not start!104784) (not b!1248600))
(check-sat b_and!44331 (not b_next!26553))
