; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104796 () Bool)

(assert start!104796)

(declare-fun b_free!26565 () Bool)

(declare-fun b_next!26565 () Bool)

(assert (=> start!104796 (= b_free!26565 (not b_next!26565))))

(declare-fun tp!93185 () Bool)

(declare-fun b_and!44343 () Bool)

(assert (=> start!104796 (= tp!93185 b_and!44343)))

(declare-fun b!1248724 () Bool)

(declare-fun e!708670 () Bool)

(declare-fun tp_is_empty!31467 () Bool)

(assert (=> b!1248724 (= e!708670 tp_is_empty!31467)))

(declare-fun b!1248725 () Bool)

(declare-fun res!833135 () Bool)

(declare-fun e!708672 () Bool)

(assert (=> b!1248725 (=> (not res!833135) (not e!708672))))

(declare-datatypes ((array!80601 0))(
  ( (array!80602 (arr!38863 (Array (_ BitVec 32) (_ BitVec 64))) (size!39400 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80601)

(declare-datatypes ((List!27758 0))(
  ( (Nil!27755) (Cons!27754 (h!28963 (_ BitVec 64)) (t!41236 List!27758)) )
))
(declare-fun arrayNoDuplicates!0 (array!80601 (_ BitVec 32) List!27758) Bool)

(assert (=> b!1248725 (= res!833135 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27755))))

(declare-fun b!1248726 () Bool)

(declare-fun res!833134 () Bool)

(assert (=> b!1248726 (=> (not res!833134) (not e!708672))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!47321 0))(
  ( (V!47322 (val!15796 Int)) )
))
(declare-datatypes ((ValueCell!14970 0))(
  ( (ValueCellFull!14970 (v!18492 V!47321)) (EmptyCell!14970) )
))
(declare-datatypes ((array!80603 0))(
  ( (array!80604 (arr!38864 (Array (_ BitVec 32) ValueCell!14970)) (size!39401 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80603)

(assert (=> b!1248726 (= res!833134 (and (= (size!39401 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39400 _keys!1118) (size!39401 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1248727 () Bool)

(declare-fun e!708669 () Bool)

(declare-fun mapRes!48961 () Bool)

(assert (=> b!1248727 (= e!708669 (and e!708670 mapRes!48961))))

(declare-fun condMapEmpty!48961 () Bool)

(declare-fun mapDefault!48961 () ValueCell!14970)

(assert (=> b!1248727 (= condMapEmpty!48961 (= (arr!38864 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14970)) mapDefault!48961)))))

(declare-fun b!1248728 () Bool)

(assert (=> b!1248728 (= e!708672 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47321)

(declare-fun zeroValue!871 () V!47321)

(declare-datatypes ((tuple2!20500 0))(
  ( (tuple2!20501 (_1!10260 (_ BitVec 64)) (_2!10260 V!47321)) )
))
(declare-datatypes ((List!27759 0))(
  ( (Nil!27756) (Cons!27755 (h!28964 tuple2!20500) (t!41237 List!27759)) )
))
(declare-datatypes ((ListLongMap!18385 0))(
  ( (ListLongMap!18386 (toList!9208 List!27759)) )
))
(declare-fun lt!563459 () ListLongMap!18385)

(declare-fun getCurrentListMapNoExtraKeys!5591 (array!80601 array!80603 (_ BitVec 32) (_ BitVec 32) V!47321 V!47321 (_ BitVec 32) Int) ListLongMap!18385)

(assert (=> b!1248728 (= lt!563459 (getCurrentListMapNoExtraKeys!5591 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun minValueBefore!43 () V!47321)

(declare-fun lt!563460 () ListLongMap!18385)

(assert (=> b!1248728 (= lt!563460 (getCurrentListMapNoExtraKeys!5591 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!833136 () Bool)

(assert (=> start!104796 (=> (not res!833136) (not e!708672))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104796 (= res!833136 (validMask!0 mask!1466))))

(assert (=> start!104796 e!708672))

(assert (=> start!104796 true))

(assert (=> start!104796 tp!93185))

(assert (=> start!104796 tp_is_empty!31467))

(declare-fun array_inv!29585 (array!80601) Bool)

(assert (=> start!104796 (array_inv!29585 _keys!1118)))

(declare-fun array_inv!29586 (array!80603) Bool)

(assert (=> start!104796 (and (array_inv!29586 _values!914) e!708669)))

(declare-fun mapIsEmpty!48961 () Bool)

(assert (=> mapIsEmpty!48961 mapRes!48961))

(declare-fun b!1248729 () Bool)

(declare-fun e!708668 () Bool)

(assert (=> b!1248729 (= e!708668 tp_is_empty!31467)))

(declare-fun mapNonEmpty!48961 () Bool)

(declare-fun tp!93186 () Bool)

(assert (=> mapNonEmpty!48961 (= mapRes!48961 (and tp!93186 e!708668))))

(declare-fun mapKey!48961 () (_ BitVec 32))

(declare-fun mapValue!48961 () ValueCell!14970)

(declare-fun mapRest!48961 () (Array (_ BitVec 32) ValueCell!14970))

(assert (=> mapNonEmpty!48961 (= (arr!38864 _values!914) (store mapRest!48961 mapKey!48961 mapValue!48961))))

(declare-fun b!1248730 () Bool)

(declare-fun res!833133 () Bool)

(assert (=> b!1248730 (=> (not res!833133) (not e!708672))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80601 (_ BitVec 32)) Bool)

(assert (=> b!1248730 (= res!833133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(assert (= (and start!104796 res!833136) b!1248726))

(assert (= (and b!1248726 res!833134) b!1248730))

(assert (= (and b!1248730 res!833133) b!1248725))

(assert (= (and b!1248725 res!833135) b!1248728))

(assert (= (and b!1248727 condMapEmpty!48961) mapIsEmpty!48961))

(assert (= (and b!1248727 (not condMapEmpty!48961)) mapNonEmpty!48961))

(get-info :version)

(assert (= (and mapNonEmpty!48961 ((_ is ValueCellFull!14970) mapValue!48961)) b!1248729))

(assert (= (and b!1248727 ((_ is ValueCellFull!14970) mapDefault!48961)) b!1248724))

(assert (= start!104796 b!1248727))

(declare-fun m!1149825 () Bool)

(assert (=> b!1248730 m!1149825))

(declare-fun m!1149827 () Bool)

(assert (=> start!104796 m!1149827))

(declare-fun m!1149829 () Bool)

(assert (=> start!104796 m!1149829))

(declare-fun m!1149831 () Bool)

(assert (=> start!104796 m!1149831))

(declare-fun m!1149833 () Bool)

(assert (=> mapNonEmpty!48961 m!1149833))

(declare-fun m!1149835 () Bool)

(assert (=> b!1248728 m!1149835))

(declare-fun m!1149837 () Bool)

(assert (=> b!1248728 m!1149837))

(declare-fun m!1149839 () Bool)

(assert (=> b!1248725 m!1149839))

(check-sat (not mapNonEmpty!48961) (not start!104796) tp_is_empty!31467 (not b!1248730) (not b_next!26565) (not b!1248728) (not b!1248725) b_and!44343)
(check-sat b_and!44343 (not b_next!26565))
