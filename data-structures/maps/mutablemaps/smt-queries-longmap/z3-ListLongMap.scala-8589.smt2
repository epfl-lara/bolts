; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104802 () Bool)

(assert start!104802)

(declare-fun b_free!26571 () Bool)

(declare-fun b_next!26571 () Bool)

(assert (=> start!104802 (= b_free!26571 (not b_next!26571))))

(declare-fun tp!93204 () Bool)

(declare-fun b_and!44349 () Bool)

(assert (=> start!104802 (= tp!93204 b_and!44349)))

(declare-fun b!1248787 () Bool)

(declare-fun res!833170 () Bool)

(declare-fun e!708715 () Bool)

(assert (=> b!1248787 (=> (not res!833170) (not e!708715))))

(declare-datatypes ((array!80613 0))(
  ( (array!80614 (arr!38869 (Array (_ BitVec 32) (_ BitVec 64))) (size!39406 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80613)

(declare-datatypes ((List!27762 0))(
  ( (Nil!27759) (Cons!27758 (h!28967 (_ BitVec 64)) (t!41240 List!27762)) )
))
(declare-fun arrayNoDuplicates!0 (array!80613 (_ BitVec 32) List!27762) Bool)

(assert (=> b!1248787 (= res!833170 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27759))))

(declare-fun mapNonEmpty!48970 () Bool)

(declare-fun mapRes!48970 () Bool)

(declare-fun tp!93203 () Bool)

(declare-fun e!708716 () Bool)

(assert (=> mapNonEmpty!48970 (= mapRes!48970 (and tp!93203 e!708716))))

(declare-datatypes ((V!47329 0))(
  ( (V!47330 (val!15799 Int)) )
))
(declare-datatypes ((ValueCell!14973 0))(
  ( (ValueCellFull!14973 (v!18495 V!47329)) (EmptyCell!14973) )
))
(declare-fun mapValue!48970 () ValueCell!14973)

(declare-datatypes ((array!80615 0))(
  ( (array!80616 (arr!38870 (Array (_ BitVec 32) ValueCell!14973)) (size!39407 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80615)

(declare-fun mapRest!48970 () (Array (_ BitVec 32) ValueCell!14973))

(declare-fun mapKey!48970 () (_ BitVec 32))

(assert (=> mapNonEmpty!48970 (= (arr!38870 _values!914) (store mapRest!48970 mapKey!48970 mapValue!48970))))

(declare-fun b!1248788 () Bool)

(declare-fun res!833172 () Bool)

(assert (=> b!1248788 (=> (not res!833172) (not e!708715))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80613 (_ BitVec 32)) Bool)

(assert (=> b!1248788 (= res!833172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248789 () Bool)

(declare-fun res!833169 () Bool)

(assert (=> b!1248789 (=> (not res!833169) (not e!708715))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1248789 (= res!833169 (and (= (size!39407 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39406 _keys!1118) (size!39407 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1248790 () Bool)

(declare-fun e!708714 () Bool)

(declare-fun tp_is_empty!31473 () Bool)

(assert (=> b!1248790 (= e!708714 tp_is_empty!31473)))

(declare-fun b!1248791 () Bool)

(declare-fun e!708713 () Bool)

(assert (=> b!1248791 (= e!708713 (and e!708714 mapRes!48970))))

(declare-fun condMapEmpty!48970 () Bool)

(declare-fun mapDefault!48970 () ValueCell!14973)

(assert (=> b!1248791 (= condMapEmpty!48970 (= (arr!38870 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14973)) mapDefault!48970)))))

(declare-fun b!1248792 () Bool)

(assert (=> b!1248792 (= e!708715 false)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((tuple2!20502 0))(
  ( (tuple2!20503 (_1!10261 (_ BitVec 64)) (_2!10261 V!47329)) )
))
(declare-datatypes ((List!27763 0))(
  ( (Nil!27760) (Cons!27759 (h!28968 tuple2!20502) (t!41241 List!27763)) )
))
(declare-datatypes ((ListLongMap!18387 0))(
  ( (ListLongMap!18388 (toList!9209 List!27763)) )
))
(declare-fun lt!563478 () ListLongMap!18387)

(declare-fun minValueAfter!43 () V!47329)

(declare-fun zeroValue!871 () V!47329)

(declare-fun getCurrentListMapNoExtraKeys!5592 (array!80613 array!80615 (_ BitVec 32) (_ BitVec 32) V!47329 V!47329 (_ BitVec 32) Int) ListLongMap!18387)

(assert (=> b!1248792 (= lt!563478 (getCurrentListMapNoExtraKeys!5592 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun minValueBefore!43 () V!47329)

(declare-fun lt!563477 () ListLongMap!18387)

(assert (=> b!1248792 (= lt!563477 (getCurrentListMapNoExtraKeys!5592 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!833171 () Bool)

(assert (=> start!104802 (=> (not res!833171) (not e!708715))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104802 (= res!833171 (validMask!0 mask!1466))))

(assert (=> start!104802 e!708715))

(assert (=> start!104802 true))

(assert (=> start!104802 tp!93204))

(assert (=> start!104802 tp_is_empty!31473))

(declare-fun array_inv!29591 (array!80613) Bool)

(assert (=> start!104802 (array_inv!29591 _keys!1118)))

(declare-fun array_inv!29592 (array!80615) Bool)

(assert (=> start!104802 (and (array_inv!29592 _values!914) e!708713)))

(declare-fun mapIsEmpty!48970 () Bool)

(assert (=> mapIsEmpty!48970 mapRes!48970))

(declare-fun b!1248793 () Bool)

(assert (=> b!1248793 (= e!708716 tp_is_empty!31473)))

(assert (= (and start!104802 res!833171) b!1248789))

(assert (= (and b!1248789 res!833169) b!1248788))

(assert (= (and b!1248788 res!833172) b!1248787))

(assert (= (and b!1248787 res!833170) b!1248792))

(assert (= (and b!1248791 condMapEmpty!48970) mapIsEmpty!48970))

(assert (= (and b!1248791 (not condMapEmpty!48970)) mapNonEmpty!48970))

(get-info :version)

(assert (= (and mapNonEmpty!48970 ((_ is ValueCellFull!14973) mapValue!48970)) b!1248793))

(assert (= (and b!1248791 ((_ is ValueCellFull!14973) mapDefault!48970)) b!1248790))

(assert (= start!104802 b!1248791))

(declare-fun m!1149873 () Bool)

(assert (=> b!1248787 m!1149873))

(declare-fun m!1149875 () Bool)

(assert (=> start!104802 m!1149875))

(declare-fun m!1149877 () Bool)

(assert (=> start!104802 m!1149877))

(declare-fun m!1149879 () Bool)

(assert (=> start!104802 m!1149879))

(declare-fun m!1149881 () Bool)

(assert (=> b!1248788 m!1149881))

(declare-fun m!1149883 () Bool)

(assert (=> b!1248792 m!1149883))

(declare-fun m!1149885 () Bool)

(assert (=> b!1248792 m!1149885))

(declare-fun m!1149887 () Bool)

(assert (=> mapNonEmpty!48970 m!1149887))

(check-sat (not b!1248792) (not b_next!26571) (not b!1248787) (not start!104802) (not b!1248788) b_and!44349 (not mapNonEmpty!48970) tp_is_empty!31473)
(check-sat b_and!44349 (not b_next!26571))
