; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104706 () Bool)

(assert start!104706)

(declare-fun b_free!26487 () Bool)

(declare-fun b_next!26487 () Bool)

(assert (=> start!104706 (= b_free!26487 (not b_next!26487))))

(declare-fun tp!92948 () Bool)

(declare-fun b_and!44261 () Bool)

(assert (=> start!104706 (= tp!92948 b_and!44261)))

(declare-fun b!1247832 () Bool)

(declare-fun res!832638 () Bool)

(declare-fun e!708038 () Bool)

(assert (=> b!1247832 (=> (not res!832638) (not e!708038))))

(declare-datatypes ((array!80449 0))(
  ( (array!80450 (arr!38788 (Array (_ BitVec 32) (_ BitVec 64))) (size!39325 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80449)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80449 (_ BitVec 32)) Bool)

(assert (=> b!1247832 (= res!832638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!48841 () Bool)

(declare-fun mapRes!48841 () Bool)

(declare-fun tp!92949 () Bool)

(declare-fun e!708037 () Bool)

(assert (=> mapNonEmpty!48841 (= mapRes!48841 (and tp!92949 e!708037))))

(declare-datatypes ((V!47217 0))(
  ( (V!47218 (val!15757 Int)) )
))
(declare-datatypes ((ValueCell!14931 0))(
  ( (ValueCellFull!14931 (v!18453 V!47217)) (EmptyCell!14931) )
))
(declare-fun mapValue!48841 () ValueCell!14931)

(declare-fun mapRest!48841 () (Array (_ BitVec 32) ValueCell!14931))

(declare-fun mapKey!48841 () (_ BitVec 32))

(declare-datatypes ((array!80451 0))(
  ( (array!80452 (arr!38789 (Array (_ BitVec 32) ValueCell!14931)) (size!39326 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80451)

(assert (=> mapNonEmpty!48841 (= (arr!38789 _values!914) (store mapRest!48841 mapKey!48841 mapValue!48841))))

(declare-fun res!832641 () Bool)

(assert (=> start!104706 (=> (not res!832641) (not e!708038))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104706 (= res!832641 (validMask!0 mask!1466))))

(assert (=> start!104706 e!708038))

(assert (=> start!104706 true))

(assert (=> start!104706 tp!92948))

(declare-fun tp_is_empty!31389 () Bool)

(assert (=> start!104706 tp_is_empty!31389))

(declare-fun array_inv!29535 (array!80449) Bool)

(assert (=> start!104706 (array_inv!29535 _keys!1118)))

(declare-fun e!708035 () Bool)

(declare-fun array_inv!29536 (array!80451) Bool)

(assert (=> start!104706 (and (array_inv!29536 _values!914) e!708035)))

(declare-fun b!1247833 () Bool)

(declare-fun res!832640 () Bool)

(assert (=> b!1247833 (=> (not res!832640) (not e!708038))))

(declare-datatypes ((List!27707 0))(
  ( (Nil!27704) (Cons!27703 (h!28912 (_ BitVec 64)) (t!41183 List!27707)) )
))
(declare-fun arrayNoDuplicates!0 (array!80449 (_ BitVec 32) List!27707) Bool)

(assert (=> b!1247833 (= res!832640 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27704))))

(declare-fun b!1247834 () Bool)

(assert (=> b!1247834 (= e!708038 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47217)

(declare-datatypes ((tuple2!20450 0))(
  ( (tuple2!20451 (_1!10235 (_ BitVec 64)) (_2!10235 V!47217)) )
))
(declare-datatypes ((List!27708 0))(
  ( (Nil!27705) (Cons!27704 (h!28913 tuple2!20450) (t!41184 List!27708)) )
))
(declare-datatypes ((ListLongMap!18335 0))(
  ( (ListLongMap!18336 (toList!9183 List!27708)) )
))
(declare-fun lt!563271 () ListLongMap!18335)

(declare-fun minValueBefore!43 () V!47217)

(declare-fun getCurrentListMapNoExtraKeys!5566 (array!80449 array!80451 (_ BitVec 32) (_ BitVec 32) V!47217 V!47217 (_ BitVec 32) Int) ListLongMap!18335)

(assert (=> b!1247834 (= lt!563271 (getCurrentListMapNoExtraKeys!5566 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1247835 () Bool)

(assert (=> b!1247835 (= e!708037 tp_is_empty!31389)))

(declare-fun b!1247836 () Bool)

(declare-fun e!708036 () Bool)

(assert (=> b!1247836 (= e!708035 (and e!708036 mapRes!48841))))

(declare-fun condMapEmpty!48841 () Bool)

(declare-fun mapDefault!48841 () ValueCell!14931)

(assert (=> b!1247836 (= condMapEmpty!48841 (= (arr!38789 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14931)) mapDefault!48841)))))

(declare-fun b!1247837 () Bool)

(assert (=> b!1247837 (= e!708036 tp_is_empty!31389)))

(declare-fun b!1247838 () Bool)

(declare-fun res!832639 () Bool)

(assert (=> b!1247838 (=> (not res!832639) (not e!708038))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247838 (= res!832639 (and (= (size!39326 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39325 _keys!1118) (size!39326 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!48841 () Bool)

(assert (=> mapIsEmpty!48841 mapRes!48841))

(assert (= (and start!104706 res!832641) b!1247838))

(assert (= (and b!1247838 res!832639) b!1247832))

(assert (= (and b!1247832 res!832638) b!1247833))

(assert (= (and b!1247833 res!832640) b!1247834))

(assert (= (and b!1247836 condMapEmpty!48841) mapIsEmpty!48841))

(assert (= (and b!1247836 (not condMapEmpty!48841)) mapNonEmpty!48841))

(get-info :version)

(assert (= (and mapNonEmpty!48841 ((_ is ValueCellFull!14931) mapValue!48841)) b!1247835))

(assert (= (and b!1247836 ((_ is ValueCellFull!14931) mapDefault!48841)) b!1247837))

(assert (= start!104706 b!1247836))

(declare-fun m!1149209 () Bool)

(assert (=> b!1247832 m!1149209))

(declare-fun m!1149211 () Bool)

(assert (=> mapNonEmpty!48841 m!1149211))

(declare-fun m!1149213 () Bool)

(assert (=> b!1247833 m!1149213))

(declare-fun m!1149215 () Bool)

(assert (=> b!1247834 m!1149215))

(declare-fun m!1149217 () Bool)

(assert (=> start!104706 m!1149217))

(declare-fun m!1149219 () Bool)

(assert (=> start!104706 m!1149219))

(declare-fun m!1149221 () Bool)

(assert (=> start!104706 m!1149221))

(check-sat (not b!1247834) (not b!1247832) (not b_next!26487) (not b!1247833) (not start!104706) tp_is_empty!31389 b_and!44261 (not mapNonEmpty!48841))
(check-sat b_and!44261 (not b_next!26487))
