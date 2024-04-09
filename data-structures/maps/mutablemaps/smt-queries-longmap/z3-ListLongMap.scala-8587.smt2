; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104790 () Bool)

(assert start!104790)

(declare-fun b_free!26559 () Bool)

(declare-fun b_next!26559 () Bool)

(assert (=> start!104790 (= b_free!26559 (not b_next!26559))))

(declare-fun tp!93168 () Bool)

(declare-fun b_and!44337 () Bool)

(assert (=> start!104790 (= tp!93168 b_and!44337)))

(declare-fun b!1248661 () Bool)

(declare-fun e!708625 () Bool)

(declare-fun e!708624 () Bool)

(declare-fun mapRes!48952 () Bool)

(assert (=> b!1248661 (= e!708625 (and e!708624 mapRes!48952))))

(declare-fun condMapEmpty!48952 () Bool)

(declare-datatypes ((V!47313 0))(
  ( (V!47314 (val!15793 Int)) )
))
(declare-datatypes ((ValueCell!14967 0))(
  ( (ValueCellFull!14967 (v!18489 V!47313)) (EmptyCell!14967) )
))
(declare-datatypes ((array!80591 0))(
  ( (array!80592 (arr!38858 (Array (_ BitVec 32) ValueCell!14967)) (size!39395 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80591)

(declare-fun mapDefault!48952 () ValueCell!14967)

(assert (=> b!1248661 (= condMapEmpty!48952 (= (arr!38858 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14967)) mapDefault!48952)))))

(declare-fun mapNonEmpty!48952 () Bool)

(declare-fun tp!93167 () Bool)

(declare-fun e!708626 () Bool)

(assert (=> mapNonEmpty!48952 (= mapRes!48952 (and tp!93167 e!708626))))

(declare-fun mapRest!48952 () (Array (_ BitVec 32) ValueCell!14967))

(declare-fun mapValue!48952 () ValueCell!14967)

(declare-fun mapKey!48952 () (_ BitVec 32))

(assert (=> mapNonEmpty!48952 (= (arr!38858 _values!914) (store mapRest!48952 mapKey!48952 mapValue!48952))))

(declare-fun b!1248662 () Bool)

(declare-fun res!833099 () Bool)

(declare-fun e!708627 () Bool)

(assert (=> b!1248662 (=> (not res!833099) (not e!708627))))

(declare-datatypes ((array!80593 0))(
  ( (array!80594 (arr!38859 (Array (_ BitVec 32) (_ BitVec 64))) (size!39396 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80593)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80593 (_ BitVec 32)) Bool)

(assert (=> b!1248662 (= res!833099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248663 () Bool)

(declare-fun res!833100 () Bool)

(assert (=> b!1248663 (=> (not res!833100) (not e!708627))))

(declare-datatypes ((List!27754 0))(
  ( (Nil!27751) (Cons!27750 (h!28959 (_ BitVec 64)) (t!41232 List!27754)) )
))
(declare-fun arrayNoDuplicates!0 (array!80593 (_ BitVec 32) List!27754) Bool)

(assert (=> b!1248663 (= res!833100 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27751))))

(declare-fun mapIsEmpty!48952 () Bool)

(assert (=> mapIsEmpty!48952 mapRes!48952))

(declare-fun b!1248664 () Bool)

(declare-fun res!833097 () Bool)

(assert (=> b!1248664 (=> (not res!833097) (not e!708627))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1248664 (= res!833097 (and (= (size!39395 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39396 _keys!1118) (size!39395 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1248665 () Bool)

(assert (=> b!1248665 (= e!708627 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47313)

(declare-datatypes ((tuple2!20496 0))(
  ( (tuple2!20497 (_1!10258 (_ BitVec 64)) (_2!10258 V!47313)) )
))
(declare-datatypes ((List!27755 0))(
  ( (Nil!27752) (Cons!27751 (h!28960 tuple2!20496) (t!41233 List!27755)) )
))
(declare-datatypes ((ListLongMap!18381 0))(
  ( (ListLongMap!18382 (toList!9206 List!27755)) )
))
(declare-fun lt!563441 () ListLongMap!18381)

(declare-fun zeroValue!871 () V!47313)

(declare-fun getCurrentListMapNoExtraKeys!5589 (array!80593 array!80591 (_ BitVec 32) (_ BitVec 32) V!47313 V!47313 (_ BitVec 32) Int) ListLongMap!18381)

(assert (=> b!1248665 (= lt!563441 (getCurrentListMapNoExtraKeys!5589 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!563442 () ListLongMap!18381)

(declare-fun minValueBefore!43 () V!47313)

(assert (=> b!1248665 (= lt!563442 (getCurrentListMapNoExtraKeys!5589 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1248666 () Bool)

(declare-fun tp_is_empty!31461 () Bool)

(assert (=> b!1248666 (= e!708626 tp_is_empty!31461)))

(declare-fun b!1248667 () Bool)

(assert (=> b!1248667 (= e!708624 tp_is_empty!31461)))

(declare-fun res!833098 () Bool)

(assert (=> start!104790 (=> (not res!833098) (not e!708627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104790 (= res!833098 (validMask!0 mask!1466))))

(assert (=> start!104790 e!708627))

(assert (=> start!104790 true))

(assert (=> start!104790 tp!93168))

(assert (=> start!104790 tp_is_empty!31461))

(declare-fun array_inv!29583 (array!80593) Bool)

(assert (=> start!104790 (array_inv!29583 _keys!1118)))

(declare-fun array_inv!29584 (array!80591) Bool)

(assert (=> start!104790 (and (array_inv!29584 _values!914) e!708625)))

(assert (= (and start!104790 res!833098) b!1248664))

(assert (= (and b!1248664 res!833097) b!1248662))

(assert (= (and b!1248662 res!833099) b!1248663))

(assert (= (and b!1248663 res!833100) b!1248665))

(assert (= (and b!1248661 condMapEmpty!48952) mapIsEmpty!48952))

(assert (= (and b!1248661 (not condMapEmpty!48952)) mapNonEmpty!48952))

(get-info :version)

(assert (= (and mapNonEmpty!48952 ((_ is ValueCellFull!14967) mapValue!48952)) b!1248666))

(assert (= (and b!1248661 ((_ is ValueCellFull!14967) mapDefault!48952)) b!1248667))

(assert (= start!104790 b!1248661))

(declare-fun m!1149777 () Bool)

(assert (=> start!104790 m!1149777))

(declare-fun m!1149779 () Bool)

(assert (=> start!104790 m!1149779))

(declare-fun m!1149781 () Bool)

(assert (=> start!104790 m!1149781))

(declare-fun m!1149783 () Bool)

(assert (=> b!1248663 m!1149783))

(declare-fun m!1149785 () Bool)

(assert (=> mapNonEmpty!48952 m!1149785))

(declare-fun m!1149787 () Bool)

(assert (=> b!1248662 m!1149787))

(declare-fun m!1149789 () Bool)

(assert (=> b!1248665 m!1149789))

(declare-fun m!1149791 () Bool)

(assert (=> b!1248665 m!1149791))

(check-sat b_and!44337 tp_is_empty!31461 (not mapNonEmpty!48952) (not start!104790) (not b!1248665) (not b!1248662) (not b_next!26559) (not b!1248663))
(check-sat b_and!44337 (not b_next!26559))
