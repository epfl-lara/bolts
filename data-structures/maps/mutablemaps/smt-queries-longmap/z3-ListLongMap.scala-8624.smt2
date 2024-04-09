; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105070 () Bool)

(assert start!105070)

(declare-fun b_free!26781 () Bool)

(declare-fun b_next!26781 () Bool)

(assert (=> start!105070 (= b_free!26781 (not b_next!26781))))

(declare-fun tp!93842 () Bool)

(declare-fun b_and!44587 () Bool)

(assert (=> start!105070 (= tp!93842 b_and!44587)))

(declare-fun b!1251724 () Bool)

(declare-fun res!834918 () Bool)

(declare-fun e!710880 () Bool)

(assert (=> b!1251724 (=> (not res!834918) (not e!710880))))

(declare-datatypes ((array!81009 0))(
  ( (array!81010 (arr!39064 (Array (_ BitVec 32) (_ BitVec 64))) (size!39601 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81009)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81009 (_ BitVec 32)) Bool)

(assert (=> b!1251724 (= res!834918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251725 () Bool)

(declare-fun res!834916 () Bool)

(assert (=> b!1251725 (=> (not res!834916) (not e!710880))))

(declare-datatypes ((List!27903 0))(
  ( (Nil!27900) (Cons!27899 (h!29108 (_ BitVec 64)) (t!41387 List!27903)) )
))
(declare-fun arrayNoDuplicates!0 (array!81009 (_ BitVec 32) List!27903) Bool)

(assert (=> b!1251725 (= res!834916 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27900))))

(declare-fun res!834917 () Bool)

(assert (=> start!105070 (=> (not res!834917) (not e!710880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105070 (= res!834917 (validMask!0 mask!1466))))

(assert (=> start!105070 e!710880))

(assert (=> start!105070 true))

(assert (=> start!105070 tp!93842))

(declare-fun tp_is_empty!31683 () Bool)

(assert (=> start!105070 tp_is_empty!31683))

(declare-fun array_inv!29729 (array!81009) Bool)

(assert (=> start!105070 (array_inv!29729 _keys!1118)))

(declare-datatypes ((V!47609 0))(
  ( (V!47610 (val!15904 Int)) )
))
(declare-datatypes ((ValueCell!15078 0))(
  ( (ValueCellFull!15078 (v!18602 V!47609)) (EmptyCell!15078) )
))
(declare-datatypes ((array!81011 0))(
  ( (array!81012 (arr!39065 (Array (_ BitVec 32) ValueCell!15078)) (size!39602 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81011)

(declare-fun e!710878 () Bool)

(declare-fun array_inv!29730 (array!81011) Bool)

(assert (=> start!105070 (and (array_inv!29730 _values!914) e!710878)))

(declare-fun b!1251726 () Bool)

(declare-fun e!710877 () Bool)

(assert (=> b!1251726 (= e!710877 tp_is_empty!31683)))

(declare-fun b!1251727 () Bool)

(declare-fun e!710879 () Bool)

(assert (=> b!1251727 (= e!710879 tp_is_empty!31683)))

(declare-fun b!1251728 () Bool)

(declare-fun mapRes!49294 () Bool)

(assert (=> b!1251728 (= e!710878 (and e!710879 mapRes!49294))))

(declare-fun condMapEmpty!49294 () Bool)

(declare-fun mapDefault!49294 () ValueCell!15078)

(assert (=> b!1251728 (= condMapEmpty!49294 (= (arr!39065 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15078)) mapDefault!49294)))))

(declare-fun mapNonEmpty!49294 () Bool)

(declare-fun tp!93843 () Bool)

(assert (=> mapNonEmpty!49294 (= mapRes!49294 (and tp!93843 e!710877))))

(declare-fun mapRest!49294 () (Array (_ BitVec 32) ValueCell!15078))

(declare-fun mapValue!49294 () ValueCell!15078)

(declare-fun mapKey!49294 () (_ BitVec 32))

(assert (=> mapNonEmpty!49294 (= (arr!39065 _values!914) (store mapRest!49294 mapKey!49294 mapValue!49294))))

(declare-fun b!1251729 () Bool)

(assert (=> b!1251729 (= e!710880 (not true))))

(declare-datatypes ((tuple2!20652 0))(
  ( (tuple2!20653 (_1!10336 (_ BitVec 64)) (_2!10336 V!47609)) )
))
(declare-datatypes ((List!27904 0))(
  ( (Nil!27901) (Cons!27900 (h!29109 tuple2!20652) (t!41388 List!27904)) )
))
(declare-datatypes ((ListLongMap!18537 0))(
  ( (ListLongMap!18538 (toList!9284 List!27904)) )
))
(declare-fun lt!564994 () ListLongMap!18537)

(declare-fun lt!564996 () ListLongMap!18537)

(assert (=> b!1251729 (= lt!564994 lt!564996)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41545 0))(
  ( (Unit!41546) )
))
(declare-fun lt!564995 () Unit!41545)

(declare-fun minValueAfter!43 () V!47609)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47609)

(declare-fun minValueBefore!43 () V!47609)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!975 (array!81009 array!81011 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47609 V!47609 V!47609 V!47609 (_ BitVec 32) Int) Unit!41545)

(assert (=> b!1251729 (= lt!564995 (lemmaNoChangeToArrayThenSameMapNoExtras!975 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5657 (array!81009 array!81011 (_ BitVec 32) (_ BitVec 32) V!47609 V!47609 (_ BitVec 32) Int) ListLongMap!18537)

(assert (=> b!1251729 (= lt!564996 (getCurrentListMapNoExtraKeys!5657 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251729 (= lt!564994 (getCurrentListMapNoExtraKeys!5657 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49294 () Bool)

(assert (=> mapIsEmpty!49294 mapRes!49294))

(declare-fun b!1251730 () Bool)

(declare-fun res!834915 () Bool)

(assert (=> b!1251730 (=> (not res!834915) (not e!710880))))

(assert (=> b!1251730 (= res!834915 (and (= (size!39602 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39601 _keys!1118) (size!39602 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!105070 res!834917) b!1251730))

(assert (= (and b!1251730 res!834915) b!1251724))

(assert (= (and b!1251724 res!834918) b!1251725))

(assert (= (and b!1251725 res!834916) b!1251729))

(assert (= (and b!1251728 condMapEmpty!49294) mapIsEmpty!49294))

(assert (= (and b!1251728 (not condMapEmpty!49294)) mapNonEmpty!49294))

(get-info :version)

(assert (= (and mapNonEmpty!49294 ((_ is ValueCellFull!15078) mapValue!49294)) b!1251726))

(assert (= (and b!1251728 ((_ is ValueCellFull!15078) mapDefault!49294)) b!1251727))

(assert (= start!105070 b!1251728))

(declare-fun m!1152491 () Bool)

(assert (=> start!105070 m!1152491))

(declare-fun m!1152493 () Bool)

(assert (=> start!105070 m!1152493))

(declare-fun m!1152495 () Bool)

(assert (=> start!105070 m!1152495))

(declare-fun m!1152497 () Bool)

(assert (=> mapNonEmpty!49294 m!1152497))

(declare-fun m!1152499 () Bool)

(assert (=> b!1251729 m!1152499))

(declare-fun m!1152501 () Bool)

(assert (=> b!1251729 m!1152501))

(declare-fun m!1152503 () Bool)

(assert (=> b!1251729 m!1152503))

(declare-fun m!1152505 () Bool)

(assert (=> b!1251724 m!1152505))

(declare-fun m!1152507 () Bool)

(assert (=> b!1251725 m!1152507))

(check-sat (not b_next!26781) (not b!1251725) (not start!105070) (not mapNonEmpty!49294) b_and!44587 tp_is_empty!31683 (not b!1251724) (not b!1251729))
(check-sat b_and!44587 (not b_next!26781))
