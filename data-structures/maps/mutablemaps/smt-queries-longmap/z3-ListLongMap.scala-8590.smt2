; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104808 () Bool)

(assert start!104808)

(declare-fun b_free!26577 () Bool)

(declare-fun b_next!26577 () Bool)

(assert (=> start!104808 (= b_free!26577 (not b_next!26577))))

(declare-fun tp!93221 () Bool)

(declare-fun b_and!44355 () Bool)

(assert (=> start!104808 (= tp!93221 b_and!44355)))

(declare-fun b!1248850 () Bool)

(declare-fun e!708761 () Bool)

(declare-fun tp_is_empty!31479 () Bool)

(assert (=> b!1248850 (= e!708761 tp_is_empty!31479)))

(declare-fun res!833207 () Bool)

(declare-fun e!708758 () Bool)

(assert (=> start!104808 (=> (not res!833207) (not e!708758))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104808 (= res!833207 (validMask!0 mask!1466))))

(assert (=> start!104808 e!708758))

(assert (=> start!104808 true))

(assert (=> start!104808 tp!93221))

(assert (=> start!104808 tp_is_empty!31479))

(declare-datatypes ((array!80623 0))(
  ( (array!80624 (arr!38874 (Array (_ BitVec 32) (_ BitVec 64))) (size!39411 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80623)

(declare-fun array_inv!29595 (array!80623) Bool)

(assert (=> start!104808 (array_inv!29595 _keys!1118)))

(declare-datatypes ((V!47337 0))(
  ( (V!47338 (val!15802 Int)) )
))
(declare-datatypes ((ValueCell!14976 0))(
  ( (ValueCellFull!14976 (v!18498 V!47337)) (EmptyCell!14976) )
))
(declare-datatypes ((array!80625 0))(
  ( (array!80626 (arr!38875 (Array (_ BitVec 32) ValueCell!14976)) (size!39412 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80625)

(declare-fun e!708760 () Bool)

(declare-fun array_inv!29596 (array!80625) Bool)

(assert (=> start!104808 (and (array_inv!29596 _values!914) e!708760)))

(declare-fun b!1248851 () Bool)

(assert (=> b!1248851 (= e!708758 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47337)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47337)

(declare-datatypes ((tuple2!20504 0))(
  ( (tuple2!20505 (_1!10262 (_ BitVec 64)) (_2!10262 V!47337)) )
))
(declare-datatypes ((List!27764 0))(
  ( (Nil!27761) (Cons!27760 (h!28969 tuple2!20504) (t!41242 List!27764)) )
))
(declare-datatypes ((ListLongMap!18389 0))(
  ( (ListLongMap!18390 (toList!9210 List!27764)) )
))
(declare-fun lt!563495 () ListLongMap!18389)

(declare-fun getCurrentListMapNoExtraKeys!5593 (array!80623 array!80625 (_ BitVec 32) (_ BitVec 32) V!47337 V!47337 (_ BitVec 32) Int) ListLongMap!18389)

(assert (=> b!1248851 (= lt!563495 (getCurrentListMapNoExtraKeys!5593 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun lt!563496 () ListLongMap!18389)

(declare-fun minValueBefore!43 () V!47337)

(assert (=> b!1248851 (= lt!563496 (getCurrentListMapNoExtraKeys!5593 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1248852 () Bool)

(declare-fun res!833208 () Bool)

(assert (=> b!1248852 (=> (not res!833208) (not e!708758))))

(declare-datatypes ((List!27765 0))(
  ( (Nil!27762) (Cons!27761 (h!28970 (_ BitVec 64)) (t!41243 List!27765)) )
))
(declare-fun arrayNoDuplicates!0 (array!80623 (_ BitVec 32) List!27765) Bool)

(assert (=> b!1248852 (= res!833208 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27762))))

(declare-fun mapIsEmpty!48979 () Bool)

(declare-fun mapRes!48979 () Bool)

(assert (=> mapIsEmpty!48979 mapRes!48979))

(declare-fun b!1248853 () Bool)

(declare-fun res!833206 () Bool)

(assert (=> b!1248853 (=> (not res!833206) (not e!708758))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80623 (_ BitVec 32)) Bool)

(assert (=> b!1248853 (= res!833206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248854 () Bool)

(declare-fun e!708762 () Bool)

(assert (=> b!1248854 (= e!708762 tp_is_empty!31479)))

(declare-fun mapNonEmpty!48979 () Bool)

(declare-fun tp!93222 () Bool)

(assert (=> mapNonEmpty!48979 (= mapRes!48979 (and tp!93222 e!708762))))

(declare-fun mapValue!48979 () ValueCell!14976)

(declare-fun mapKey!48979 () (_ BitVec 32))

(declare-fun mapRest!48979 () (Array (_ BitVec 32) ValueCell!14976))

(assert (=> mapNonEmpty!48979 (= (arr!38875 _values!914) (store mapRest!48979 mapKey!48979 mapValue!48979))))

(declare-fun b!1248855 () Bool)

(assert (=> b!1248855 (= e!708760 (and e!708761 mapRes!48979))))

(declare-fun condMapEmpty!48979 () Bool)

(declare-fun mapDefault!48979 () ValueCell!14976)

(assert (=> b!1248855 (= condMapEmpty!48979 (= (arr!38875 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14976)) mapDefault!48979)))))

(declare-fun b!1248856 () Bool)

(declare-fun res!833205 () Bool)

(assert (=> b!1248856 (=> (not res!833205) (not e!708758))))

(assert (=> b!1248856 (= res!833205 (and (= (size!39412 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39411 _keys!1118) (size!39412 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!104808 res!833207) b!1248856))

(assert (= (and b!1248856 res!833205) b!1248853))

(assert (= (and b!1248853 res!833206) b!1248852))

(assert (= (and b!1248852 res!833208) b!1248851))

(assert (= (and b!1248855 condMapEmpty!48979) mapIsEmpty!48979))

(assert (= (and b!1248855 (not condMapEmpty!48979)) mapNonEmpty!48979))

(get-info :version)

(assert (= (and mapNonEmpty!48979 ((_ is ValueCellFull!14976) mapValue!48979)) b!1248854))

(assert (= (and b!1248855 ((_ is ValueCellFull!14976) mapDefault!48979)) b!1248850))

(assert (= start!104808 b!1248855))

(declare-fun m!1149921 () Bool)

(assert (=> b!1248851 m!1149921))

(declare-fun m!1149923 () Bool)

(assert (=> b!1248851 m!1149923))

(declare-fun m!1149925 () Bool)

(assert (=> start!104808 m!1149925))

(declare-fun m!1149927 () Bool)

(assert (=> start!104808 m!1149927))

(declare-fun m!1149929 () Bool)

(assert (=> start!104808 m!1149929))

(declare-fun m!1149931 () Bool)

(assert (=> b!1248852 m!1149931))

(declare-fun m!1149933 () Bool)

(assert (=> b!1248853 m!1149933))

(declare-fun m!1149935 () Bool)

(assert (=> mapNonEmpty!48979 m!1149935))

(check-sat (not b!1248853) (not start!104808) b_and!44355 (not mapNonEmpty!48979) tp_is_empty!31479 (not b_next!26577) (not b!1248852) (not b!1248851))
(check-sat b_and!44355 (not b_next!26577))
