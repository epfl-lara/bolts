; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104820 () Bool)

(assert start!104820)

(declare-fun b_free!26589 () Bool)

(declare-fun b_next!26589 () Bool)

(assert (=> start!104820 (= b_free!26589 (not b_next!26589))))

(declare-fun tp!93257 () Bool)

(declare-fun b_and!44367 () Bool)

(assert (=> start!104820 (= tp!93257 b_and!44367)))

(declare-fun b!1248976 () Bool)

(declare-fun e!708852 () Bool)

(declare-fun tp_is_empty!31491 () Bool)

(assert (=> b!1248976 (= e!708852 tp_is_empty!31491)))

(declare-fun res!833279 () Bool)

(declare-fun e!708848 () Bool)

(assert (=> start!104820 (=> (not res!833279) (not e!708848))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104820 (= res!833279 (validMask!0 mask!1466))))

(assert (=> start!104820 e!708848))

(assert (=> start!104820 true))

(assert (=> start!104820 tp!93257))

(assert (=> start!104820 tp_is_empty!31491))

(declare-datatypes ((array!80647 0))(
  ( (array!80648 (arr!38886 (Array (_ BitVec 32) (_ BitVec 64))) (size!39423 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80647)

(declare-fun array_inv!29607 (array!80647) Bool)

(assert (=> start!104820 (array_inv!29607 _keys!1118)))

(declare-datatypes ((V!47353 0))(
  ( (V!47354 (val!15808 Int)) )
))
(declare-datatypes ((ValueCell!14982 0))(
  ( (ValueCellFull!14982 (v!18504 V!47353)) (EmptyCell!14982) )
))
(declare-datatypes ((array!80649 0))(
  ( (array!80650 (arr!38887 (Array (_ BitVec 32) ValueCell!14982)) (size!39424 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80649)

(declare-fun e!708850 () Bool)

(declare-fun array_inv!29608 (array!80649) Bool)

(assert (=> start!104820 (and (array_inv!29608 _values!914) e!708850)))

(declare-fun b!1248977 () Bool)

(declare-fun mapRes!48997 () Bool)

(assert (=> b!1248977 (= e!708850 (and e!708852 mapRes!48997))))

(declare-fun condMapEmpty!48997 () Bool)

(declare-fun mapDefault!48997 () ValueCell!14982)

(assert (=> b!1248977 (= condMapEmpty!48997 (= (arr!38887 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14982)) mapDefault!48997)))))

(declare-fun b!1248978 () Bool)

(declare-fun res!833280 () Bool)

(assert (=> b!1248978 (=> (not res!833280) (not e!708848))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1248978 (= res!833280 (and (= (size!39424 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39423 _keys!1118) (size!39424 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!48997 () Bool)

(declare-fun tp!93258 () Bool)

(declare-fun e!708851 () Bool)

(assert (=> mapNonEmpty!48997 (= mapRes!48997 (and tp!93258 e!708851))))

(declare-fun mapValue!48997 () ValueCell!14982)

(declare-fun mapRest!48997 () (Array (_ BitVec 32) ValueCell!14982))

(declare-fun mapKey!48997 () (_ BitVec 32))

(assert (=> mapNonEmpty!48997 (= (arr!38887 _values!914) (store mapRest!48997 mapKey!48997 mapValue!48997))))

(declare-fun b!1248979 () Bool)

(assert (=> b!1248979 (= e!708851 tp_is_empty!31491)))

(declare-fun b!1248980 () Bool)

(declare-fun res!833277 () Bool)

(assert (=> b!1248980 (=> (not res!833277) (not e!708848))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80647 (_ BitVec 32)) Bool)

(assert (=> b!1248980 (= res!833277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!48997 () Bool)

(assert (=> mapIsEmpty!48997 mapRes!48997))

(declare-fun b!1248981 () Bool)

(declare-fun res!833278 () Bool)

(assert (=> b!1248981 (=> (not res!833278) (not e!708848))))

(declare-datatypes ((List!27772 0))(
  ( (Nil!27769) (Cons!27768 (h!28977 (_ BitVec 64)) (t!41250 List!27772)) )
))
(declare-fun arrayNoDuplicates!0 (array!80647 (_ BitVec 32) List!27772) Bool)

(assert (=> b!1248981 (= res!833278 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27769))))

(declare-fun b!1248982 () Bool)

(assert (=> b!1248982 (= e!708848 false)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((tuple2!20512 0))(
  ( (tuple2!20513 (_1!10266 (_ BitVec 64)) (_2!10266 V!47353)) )
))
(declare-datatypes ((List!27773 0))(
  ( (Nil!27770) (Cons!27769 (h!28978 tuple2!20512) (t!41251 List!27773)) )
))
(declare-datatypes ((ListLongMap!18397 0))(
  ( (ListLongMap!18398 (toList!9214 List!27773)) )
))
(declare-fun lt!563532 () ListLongMap!18397)

(declare-fun minValueAfter!43 () V!47353)

(declare-fun zeroValue!871 () V!47353)

(declare-fun getCurrentListMapNoExtraKeys!5597 (array!80647 array!80649 (_ BitVec 32) (_ BitVec 32) V!47353 V!47353 (_ BitVec 32) Int) ListLongMap!18397)

(assert (=> b!1248982 (= lt!563532 (getCurrentListMapNoExtraKeys!5597 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!563531 () ListLongMap!18397)

(declare-fun minValueBefore!43 () V!47353)

(assert (=> b!1248982 (= lt!563531 (getCurrentListMapNoExtraKeys!5597 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!104820 res!833279) b!1248978))

(assert (= (and b!1248978 res!833280) b!1248980))

(assert (= (and b!1248980 res!833277) b!1248981))

(assert (= (and b!1248981 res!833278) b!1248982))

(assert (= (and b!1248977 condMapEmpty!48997) mapIsEmpty!48997))

(assert (= (and b!1248977 (not condMapEmpty!48997)) mapNonEmpty!48997))

(get-info :version)

(assert (= (and mapNonEmpty!48997 ((_ is ValueCellFull!14982) mapValue!48997)) b!1248979))

(assert (= (and b!1248977 ((_ is ValueCellFull!14982) mapDefault!48997)) b!1248976))

(assert (= start!104820 b!1248977))

(declare-fun m!1150017 () Bool)

(assert (=> b!1248982 m!1150017))

(declare-fun m!1150019 () Bool)

(assert (=> b!1248982 m!1150019))

(declare-fun m!1150021 () Bool)

(assert (=> start!104820 m!1150021))

(declare-fun m!1150023 () Bool)

(assert (=> start!104820 m!1150023))

(declare-fun m!1150025 () Bool)

(assert (=> start!104820 m!1150025))

(declare-fun m!1150027 () Bool)

(assert (=> b!1248980 m!1150027))

(declare-fun m!1150029 () Bool)

(assert (=> b!1248981 m!1150029))

(declare-fun m!1150031 () Bool)

(assert (=> mapNonEmpty!48997 m!1150031))

(check-sat (not b!1248982) (not start!104820) tp_is_empty!31491 (not mapNonEmpty!48997) (not b!1248980) (not b!1248981) (not b_next!26589) b_and!44367)
(check-sat b_and!44367 (not b_next!26589))
