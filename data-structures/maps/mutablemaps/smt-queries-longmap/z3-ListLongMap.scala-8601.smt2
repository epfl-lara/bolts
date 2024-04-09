; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104874 () Bool)

(assert start!104874)

(declare-fun b_free!26643 () Bool)

(declare-fun b_next!26643 () Bool)

(assert (=> start!104874 (= b_free!26643 (not b_next!26643))))

(declare-fun tp!93419 () Bool)

(declare-fun b_and!44421 () Bool)

(assert (=> start!104874 (= tp!93419 b_and!44421)))

(declare-fun b!1249543 () Bool)

(declare-fun e!709255 () Bool)

(assert (=> b!1249543 (= e!709255 (not true))))

(declare-datatypes ((V!47425 0))(
  ( (V!47426 (val!15835 Int)) )
))
(declare-datatypes ((tuple2!20542 0))(
  ( (tuple2!20543 (_1!10281 (_ BitVec 64)) (_2!10281 V!47425)) )
))
(declare-datatypes ((List!27805 0))(
  ( (Nil!27802) (Cons!27801 (h!29010 tuple2!20542) (t!41283 List!27805)) )
))
(declare-datatypes ((ListLongMap!18427 0))(
  ( (ListLongMap!18428 (toList!9229 List!27805)) )
))
(declare-fun lt!563753 () ListLongMap!18427)

(declare-fun lt!563754 () ListLongMap!18427)

(assert (=> b!1249543 (= lt!563753 lt!563754)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47425)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47425)

(declare-datatypes ((array!80747 0))(
  ( (array!80748 (arr!38936 (Array (_ BitVec 32) (_ BitVec 64))) (size!39473 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80747)

(declare-datatypes ((ValueCell!15009 0))(
  ( (ValueCellFull!15009 (v!18531 V!47425)) (EmptyCell!15009) )
))
(declare-datatypes ((array!80749 0))(
  ( (array!80750 (arr!38937 (Array (_ BitVec 32) ValueCell!15009)) (size!39474 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80749)

(declare-fun minValueBefore!43 () V!47425)

(declare-datatypes ((Unit!41441 0))(
  ( (Unit!41442) )
))
(declare-fun lt!563752 () Unit!41441)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!930 (array!80747 array!80749 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47425 V!47425 V!47425 V!47425 (_ BitVec 32) Int) Unit!41441)

(assert (=> b!1249543 (= lt!563752 (lemmaNoChangeToArrayThenSameMapNoExtras!930 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5612 (array!80747 array!80749 (_ BitVec 32) (_ BitVec 32) V!47425 V!47425 (_ BitVec 32) Int) ListLongMap!18427)

(assert (=> b!1249543 (= lt!563754 (getCurrentListMapNoExtraKeys!5612 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249543 (= lt!563753 (getCurrentListMapNoExtraKeys!5612 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249544 () Bool)

(declare-fun res!833602 () Bool)

(assert (=> b!1249544 (=> (not res!833602) (not e!709255))))

(assert (=> b!1249544 (= res!833602 (and (= (size!39474 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39473 _keys!1118) (size!39474 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49078 () Bool)

(declare-fun mapRes!49078 () Bool)

(declare-fun tp!93420 () Bool)

(declare-fun e!709253 () Bool)

(assert (=> mapNonEmpty!49078 (= mapRes!49078 (and tp!93420 e!709253))))

(declare-fun mapRest!49078 () (Array (_ BitVec 32) ValueCell!15009))

(declare-fun mapValue!49078 () ValueCell!15009)

(declare-fun mapKey!49078 () (_ BitVec 32))

(assert (=> mapNonEmpty!49078 (= (arr!38937 _values!914) (store mapRest!49078 mapKey!49078 mapValue!49078))))

(declare-fun b!1249545 () Bool)

(declare-fun tp_is_empty!31545 () Bool)

(assert (=> b!1249545 (= e!709253 tp_is_empty!31545)))

(declare-fun b!1249546 () Bool)

(declare-fun e!709257 () Bool)

(assert (=> b!1249546 (= e!709257 tp_is_empty!31545)))

(declare-fun b!1249547 () Bool)

(declare-fun res!833601 () Bool)

(assert (=> b!1249547 (=> (not res!833601) (not e!709255))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80747 (_ BitVec 32)) Bool)

(assert (=> b!1249547 (= res!833601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1249548 () Bool)

(declare-fun e!709256 () Bool)

(assert (=> b!1249548 (= e!709256 (and e!709257 mapRes!49078))))

(declare-fun condMapEmpty!49078 () Bool)

(declare-fun mapDefault!49078 () ValueCell!15009)

(assert (=> b!1249548 (= condMapEmpty!49078 (= (arr!38937 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15009)) mapDefault!49078)))))

(declare-fun res!833604 () Bool)

(assert (=> start!104874 (=> (not res!833604) (not e!709255))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104874 (= res!833604 (validMask!0 mask!1466))))

(assert (=> start!104874 e!709255))

(assert (=> start!104874 true))

(assert (=> start!104874 tp!93419))

(assert (=> start!104874 tp_is_empty!31545))

(declare-fun array_inv!29641 (array!80747) Bool)

(assert (=> start!104874 (array_inv!29641 _keys!1118)))

(declare-fun array_inv!29642 (array!80749) Bool)

(assert (=> start!104874 (and (array_inv!29642 _values!914) e!709256)))

(declare-fun b!1249549 () Bool)

(declare-fun res!833603 () Bool)

(assert (=> b!1249549 (=> (not res!833603) (not e!709255))))

(declare-datatypes ((List!27806 0))(
  ( (Nil!27803) (Cons!27802 (h!29011 (_ BitVec 64)) (t!41284 List!27806)) )
))
(declare-fun arrayNoDuplicates!0 (array!80747 (_ BitVec 32) List!27806) Bool)

(assert (=> b!1249549 (= res!833603 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27803))))

(declare-fun mapIsEmpty!49078 () Bool)

(assert (=> mapIsEmpty!49078 mapRes!49078))

(assert (= (and start!104874 res!833604) b!1249544))

(assert (= (and b!1249544 res!833602) b!1249547))

(assert (= (and b!1249547 res!833601) b!1249549))

(assert (= (and b!1249549 res!833603) b!1249543))

(assert (= (and b!1249548 condMapEmpty!49078) mapIsEmpty!49078))

(assert (= (and b!1249548 (not condMapEmpty!49078)) mapNonEmpty!49078))

(get-info :version)

(assert (= (and mapNonEmpty!49078 ((_ is ValueCellFull!15009) mapValue!49078)) b!1249545))

(assert (= (and b!1249548 ((_ is ValueCellFull!15009) mapDefault!49078)) b!1249546))

(assert (= start!104874 b!1249548))

(declare-fun m!1150487 () Bool)

(assert (=> b!1249547 m!1150487))

(declare-fun m!1150489 () Bool)

(assert (=> start!104874 m!1150489))

(declare-fun m!1150491 () Bool)

(assert (=> start!104874 m!1150491))

(declare-fun m!1150493 () Bool)

(assert (=> start!104874 m!1150493))

(declare-fun m!1150495 () Bool)

(assert (=> b!1249543 m!1150495))

(declare-fun m!1150497 () Bool)

(assert (=> b!1249543 m!1150497))

(declare-fun m!1150499 () Bool)

(assert (=> b!1249543 m!1150499))

(declare-fun m!1150501 () Bool)

(assert (=> mapNonEmpty!49078 m!1150501))

(declare-fun m!1150503 () Bool)

(assert (=> b!1249549 m!1150503))

(check-sat tp_is_empty!31545 (not b!1249543) b_and!44421 (not b!1249549) (not start!104874) (not mapNonEmpty!49078) (not b!1249547) (not b_next!26643))
(check-sat b_and!44421 (not b_next!26643))
