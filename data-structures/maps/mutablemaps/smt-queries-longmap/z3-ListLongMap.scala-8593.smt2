; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104826 () Bool)

(assert start!104826)

(declare-fun b_free!26595 () Bool)

(declare-fun b_next!26595 () Bool)

(assert (=> start!104826 (= b_free!26595 (not b_next!26595))))

(declare-fun tp!93275 () Bool)

(declare-fun b_and!44373 () Bool)

(assert (=> start!104826 (= tp!93275 b_and!44373)))

(declare-fun mapIsEmpty!49006 () Bool)

(declare-fun mapRes!49006 () Bool)

(assert (=> mapIsEmpty!49006 mapRes!49006))

(declare-fun res!833314 () Bool)

(declare-fun e!708893 () Bool)

(assert (=> start!104826 (=> (not res!833314) (not e!708893))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104826 (= res!833314 (validMask!0 mask!1466))))

(assert (=> start!104826 e!708893))

(assert (=> start!104826 true))

(assert (=> start!104826 tp!93275))

(declare-fun tp_is_empty!31497 () Bool)

(assert (=> start!104826 tp_is_empty!31497))

(declare-datatypes ((array!80657 0))(
  ( (array!80658 (arr!38891 (Array (_ BitVec 32) (_ BitVec 64))) (size!39428 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80657)

(declare-fun array_inv!29611 (array!80657) Bool)

(assert (=> start!104826 (array_inv!29611 _keys!1118)))

(declare-datatypes ((V!47361 0))(
  ( (V!47362 (val!15811 Int)) )
))
(declare-datatypes ((ValueCell!14985 0))(
  ( (ValueCellFull!14985 (v!18507 V!47361)) (EmptyCell!14985) )
))
(declare-datatypes ((array!80659 0))(
  ( (array!80660 (arr!38892 (Array (_ BitVec 32) ValueCell!14985)) (size!39429 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80659)

(declare-fun e!708897 () Bool)

(declare-fun array_inv!29612 (array!80659) Bool)

(assert (=> start!104826 (and (array_inv!29612 _values!914) e!708897)))

(declare-fun b!1249039 () Bool)

(declare-fun res!833313 () Bool)

(assert (=> b!1249039 (=> (not res!833313) (not e!708893))))

(declare-datatypes ((List!27774 0))(
  ( (Nil!27771) (Cons!27770 (h!28979 (_ BitVec 64)) (t!41252 List!27774)) )
))
(declare-fun arrayNoDuplicates!0 (array!80657 (_ BitVec 32) List!27774) Bool)

(assert (=> b!1249039 (= res!833313 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27771))))

(declare-fun b!1249040 () Bool)

(declare-fun e!708894 () Bool)

(assert (=> b!1249040 (= e!708894 tp_is_empty!31497)))

(declare-fun b!1249041 () Bool)

(declare-fun res!833316 () Bool)

(assert (=> b!1249041 (=> (not res!833316) (not e!708893))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1249041 (= res!833316 (and (= (size!39429 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39428 _keys!1118) (size!39429 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1249042 () Bool)

(declare-fun e!708895 () Bool)

(assert (=> b!1249042 (= e!708895 tp_is_empty!31497)))

(declare-fun b!1249043 () Bool)

(declare-fun res!833315 () Bool)

(assert (=> b!1249043 (=> (not res!833315) (not e!708893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80657 (_ BitVec 32)) Bool)

(assert (=> b!1249043 (= res!833315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1249044 () Bool)

(assert (=> b!1249044 (= e!708897 (and e!708894 mapRes!49006))))

(declare-fun condMapEmpty!49006 () Bool)

(declare-fun mapDefault!49006 () ValueCell!14985)

(assert (=> b!1249044 (= condMapEmpty!49006 (= (arr!38892 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14985)) mapDefault!49006)))))

(declare-fun mapNonEmpty!49006 () Bool)

(declare-fun tp!93276 () Bool)

(assert (=> mapNonEmpty!49006 (= mapRes!49006 (and tp!93276 e!708895))))

(declare-fun mapKey!49006 () (_ BitVec 32))

(declare-fun mapValue!49006 () ValueCell!14985)

(declare-fun mapRest!49006 () (Array (_ BitVec 32) ValueCell!14985))

(assert (=> mapNonEmpty!49006 (= (arr!38892 _values!914) (store mapRest!49006 mapKey!49006 mapValue!49006))))

(declare-fun b!1249045 () Bool)

(assert (=> b!1249045 (= e!708893 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47361)

(declare-fun zeroValue!871 () V!47361)

(declare-datatypes ((tuple2!20514 0))(
  ( (tuple2!20515 (_1!10267 (_ BitVec 64)) (_2!10267 V!47361)) )
))
(declare-datatypes ((List!27775 0))(
  ( (Nil!27772) (Cons!27771 (h!28980 tuple2!20514) (t!41253 List!27775)) )
))
(declare-datatypes ((ListLongMap!18399 0))(
  ( (ListLongMap!18400 (toList!9215 List!27775)) )
))
(declare-fun lt!563549 () ListLongMap!18399)

(declare-fun getCurrentListMapNoExtraKeys!5598 (array!80657 array!80659 (_ BitVec 32) (_ BitVec 32) V!47361 V!47361 (_ BitVec 32) Int) ListLongMap!18399)

(assert (=> b!1249045 (= lt!563549 (getCurrentListMapNoExtraKeys!5598 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!563550 () ListLongMap!18399)

(declare-fun minValueBefore!43 () V!47361)

(assert (=> b!1249045 (= lt!563550 (getCurrentListMapNoExtraKeys!5598 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!104826 res!833314) b!1249041))

(assert (= (and b!1249041 res!833316) b!1249043))

(assert (= (and b!1249043 res!833315) b!1249039))

(assert (= (and b!1249039 res!833313) b!1249045))

(assert (= (and b!1249044 condMapEmpty!49006) mapIsEmpty!49006))

(assert (= (and b!1249044 (not condMapEmpty!49006)) mapNonEmpty!49006))

(get-info :version)

(assert (= (and mapNonEmpty!49006 ((_ is ValueCellFull!14985) mapValue!49006)) b!1249042))

(assert (= (and b!1249044 ((_ is ValueCellFull!14985) mapDefault!49006)) b!1249040))

(assert (= start!104826 b!1249044))

(declare-fun m!1150065 () Bool)

(assert (=> b!1249045 m!1150065))

(declare-fun m!1150067 () Bool)

(assert (=> b!1249045 m!1150067))

(declare-fun m!1150069 () Bool)

(assert (=> b!1249043 m!1150069))

(declare-fun m!1150071 () Bool)

(assert (=> mapNonEmpty!49006 m!1150071))

(declare-fun m!1150073 () Bool)

(assert (=> start!104826 m!1150073))

(declare-fun m!1150075 () Bool)

(assert (=> start!104826 m!1150075))

(declare-fun m!1150077 () Bool)

(assert (=> start!104826 m!1150077))

(declare-fun m!1150079 () Bool)

(assert (=> b!1249039 m!1150079))

(check-sat (not b!1249039) (not b_next!26595) (not b!1249043) (not b!1249045) tp_is_empty!31497 b_and!44373 (not mapNonEmpty!49006) (not start!104826))
(check-sat b_and!44373 (not b_next!26595))
