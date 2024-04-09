; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104814 () Bool)

(assert start!104814)

(declare-fun b_free!26583 () Bool)

(declare-fun b_next!26583 () Bool)

(assert (=> start!104814 (= b_free!26583 (not b_next!26583))))

(declare-fun tp!93240 () Bool)

(declare-fun b_and!44361 () Bool)

(assert (=> start!104814 (= tp!93240 b_and!44361)))

(declare-fun b!1248913 () Bool)

(declare-fun e!708806 () Bool)

(declare-fun e!708807 () Bool)

(declare-fun mapRes!48988 () Bool)

(assert (=> b!1248913 (= e!708806 (and e!708807 mapRes!48988))))

(declare-fun condMapEmpty!48988 () Bool)

(declare-datatypes ((V!47345 0))(
  ( (V!47346 (val!15805 Int)) )
))
(declare-datatypes ((ValueCell!14979 0))(
  ( (ValueCellFull!14979 (v!18501 V!47345)) (EmptyCell!14979) )
))
(declare-datatypes ((array!80635 0))(
  ( (array!80636 (arr!38880 (Array (_ BitVec 32) ValueCell!14979)) (size!39417 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80635)

(declare-fun mapDefault!48988 () ValueCell!14979)

(assert (=> b!1248913 (= condMapEmpty!48988 (= (arr!38880 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14979)) mapDefault!48988)))))

(declare-fun b!1248914 () Bool)

(declare-fun e!708804 () Bool)

(assert (=> b!1248914 (= e!708804 false)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun minValueAfter!43 () V!47345)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47345)

(declare-datatypes ((array!80637 0))(
  ( (array!80638 (arr!38881 (Array (_ BitVec 32) (_ BitVec 64))) (size!39418 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80637)

(declare-datatypes ((tuple2!20508 0))(
  ( (tuple2!20509 (_1!10264 (_ BitVec 64)) (_2!10264 V!47345)) )
))
(declare-datatypes ((List!27769 0))(
  ( (Nil!27766) (Cons!27765 (h!28974 tuple2!20508) (t!41247 List!27769)) )
))
(declare-datatypes ((ListLongMap!18393 0))(
  ( (ListLongMap!18394 (toList!9212 List!27769)) )
))
(declare-fun lt!563513 () ListLongMap!18393)

(declare-fun defaultEntry!922 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5595 (array!80637 array!80635 (_ BitVec 32) (_ BitVec 32) V!47345 V!47345 (_ BitVec 32) Int) ListLongMap!18393)

(assert (=> b!1248914 (= lt!563513 (getCurrentListMapNoExtraKeys!5595 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun minValueBefore!43 () V!47345)

(declare-fun lt!563514 () ListLongMap!18393)

(assert (=> b!1248914 (= lt!563514 (getCurrentListMapNoExtraKeys!5595 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!48988 () Bool)

(declare-fun tp!93239 () Bool)

(declare-fun e!708803 () Bool)

(assert (=> mapNonEmpty!48988 (= mapRes!48988 (and tp!93239 e!708803))))

(declare-fun mapKey!48988 () (_ BitVec 32))

(declare-fun mapRest!48988 () (Array (_ BitVec 32) ValueCell!14979))

(declare-fun mapValue!48988 () ValueCell!14979)

(assert (=> mapNonEmpty!48988 (= (arr!38880 _values!914) (store mapRest!48988 mapKey!48988 mapValue!48988))))

(declare-fun b!1248915 () Bool)

(declare-fun res!833242 () Bool)

(assert (=> b!1248915 (=> (not res!833242) (not e!708804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80637 (_ BitVec 32)) Bool)

(assert (=> b!1248915 (= res!833242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248916 () Bool)

(declare-fun res!833241 () Bool)

(assert (=> b!1248916 (=> (not res!833241) (not e!708804))))

(assert (=> b!1248916 (= res!833241 (and (= (size!39417 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39418 _keys!1118) (size!39417 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1248917 () Bool)

(declare-fun tp_is_empty!31485 () Bool)

(assert (=> b!1248917 (= e!708803 tp_is_empty!31485)))

(declare-fun res!833244 () Bool)

(assert (=> start!104814 (=> (not res!833244) (not e!708804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104814 (= res!833244 (validMask!0 mask!1466))))

(assert (=> start!104814 e!708804))

(assert (=> start!104814 true))

(assert (=> start!104814 tp!93240))

(assert (=> start!104814 tp_is_empty!31485))

(declare-fun array_inv!29601 (array!80637) Bool)

(assert (=> start!104814 (array_inv!29601 _keys!1118)))

(declare-fun array_inv!29602 (array!80635) Bool)

(assert (=> start!104814 (and (array_inv!29602 _values!914) e!708806)))

(declare-fun b!1248918 () Bool)

(declare-fun res!833243 () Bool)

(assert (=> b!1248918 (=> (not res!833243) (not e!708804))))

(declare-datatypes ((List!27770 0))(
  ( (Nil!27767) (Cons!27766 (h!28975 (_ BitVec 64)) (t!41248 List!27770)) )
))
(declare-fun arrayNoDuplicates!0 (array!80637 (_ BitVec 32) List!27770) Bool)

(assert (=> b!1248918 (= res!833243 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27767))))

(declare-fun mapIsEmpty!48988 () Bool)

(assert (=> mapIsEmpty!48988 mapRes!48988))

(declare-fun b!1248919 () Bool)

(assert (=> b!1248919 (= e!708807 tp_is_empty!31485)))

(assert (= (and start!104814 res!833244) b!1248916))

(assert (= (and b!1248916 res!833241) b!1248915))

(assert (= (and b!1248915 res!833242) b!1248918))

(assert (= (and b!1248918 res!833243) b!1248914))

(assert (= (and b!1248913 condMapEmpty!48988) mapIsEmpty!48988))

(assert (= (and b!1248913 (not condMapEmpty!48988)) mapNonEmpty!48988))

(get-info :version)

(assert (= (and mapNonEmpty!48988 ((_ is ValueCellFull!14979) mapValue!48988)) b!1248917))

(assert (= (and b!1248913 ((_ is ValueCellFull!14979) mapDefault!48988)) b!1248919))

(assert (= start!104814 b!1248913))

(declare-fun m!1149969 () Bool)

(assert (=> mapNonEmpty!48988 m!1149969))

(declare-fun m!1149971 () Bool)

(assert (=> b!1248914 m!1149971))

(declare-fun m!1149973 () Bool)

(assert (=> b!1248914 m!1149973))

(declare-fun m!1149975 () Bool)

(assert (=> start!104814 m!1149975))

(declare-fun m!1149977 () Bool)

(assert (=> start!104814 m!1149977))

(declare-fun m!1149979 () Bool)

(assert (=> start!104814 m!1149979))

(declare-fun m!1149981 () Bool)

(assert (=> b!1248915 m!1149981))

(declare-fun m!1149983 () Bool)

(assert (=> b!1248918 m!1149983))

(check-sat b_and!44361 (not start!104814) (not b!1248914) (not b!1248918) (not b!1248915) (not mapNonEmpty!48988) (not b_next!26583) tp_is_empty!31485)
(check-sat b_and!44361 (not b_next!26583))
