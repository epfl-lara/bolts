; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104948 () Bool)

(assert start!104948)

(declare-fun b_free!26703 () Bool)

(declare-fun b_next!26703 () Bool)

(assert (=> start!104948 (= b_free!26703 (not b_next!26703))))

(declare-fun tp!93603 () Bool)

(declare-fun b_and!44489 () Bool)

(assert (=> start!104948 (= tp!93603 b_and!44489)))

(declare-fun b!1250385 () Bool)

(declare-fun e!709888 () Bool)

(declare-fun e!709886 () Bool)

(assert (=> b!1250385 (= e!709888 (not e!709886))))

(declare-fun res!834123 () Bool)

(assert (=> b!1250385 (=> res!834123 e!709886)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1250385 (= res!834123 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!47505 0))(
  ( (V!47506 (val!15865 Int)) )
))
(declare-datatypes ((tuple2!20588 0))(
  ( (tuple2!20589 (_1!10304 (_ BitVec 64)) (_2!10304 V!47505)) )
))
(declare-datatypes ((List!27845 0))(
  ( (Nil!27842) (Cons!27841 (h!29050 tuple2!20588) (t!41325 List!27845)) )
))
(declare-datatypes ((ListLongMap!18473 0))(
  ( (ListLongMap!18474 (toList!9252 List!27845)) )
))
(declare-fun lt!564191 () ListLongMap!18473)

(declare-fun lt!564189 () ListLongMap!18473)

(assert (=> b!1250385 (= lt!564191 lt!564189)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41485 0))(
  ( (Unit!41486) )
))
(declare-fun lt!564190 () Unit!41485)

(declare-fun minValueAfter!43 () V!47505)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47505)

(declare-datatypes ((array!80859 0))(
  ( (array!80860 (arr!38991 (Array (_ BitVec 32) (_ BitVec 64))) (size!39528 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80859)

(declare-datatypes ((ValueCell!15039 0))(
  ( (ValueCellFull!15039 (v!18561 V!47505)) (EmptyCell!15039) )
))
(declare-datatypes ((array!80861 0))(
  ( (array!80862 (arr!38992 (Array (_ BitVec 32) ValueCell!15039)) (size!39529 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80861)

(declare-fun minValueBefore!43 () V!47505)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!951 (array!80859 array!80861 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47505 V!47505 V!47505 V!47505 (_ BitVec 32) Int) Unit!41485)

(assert (=> b!1250385 (= lt!564190 (lemmaNoChangeToArrayThenSameMapNoExtras!951 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5633 (array!80859 array!80861 (_ BitVec 32) (_ BitVec 32) V!47505 V!47505 (_ BitVec 32) Int) ListLongMap!18473)

(assert (=> b!1250385 (= lt!564189 (getCurrentListMapNoExtraKeys!5633 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250385 (= lt!564191 (getCurrentListMapNoExtraKeys!5633 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!834119 () Bool)

(assert (=> start!104948 (=> (not res!834119) (not e!709888))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104948 (= res!834119 (validMask!0 mask!1466))))

(assert (=> start!104948 e!709888))

(assert (=> start!104948 true))

(assert (=> start!104948 tp!93603))

(declare-fun tp_is_empty!31605 () Bool)

(assert (=> start!104948 tp_is_empty!31605))

(declare-fun array_inv!29677 (array!80859) Bool)

(assert (=> start!104948 (array_inv!29677 _keys!1118)))

(declare-fun e!709885 () Bool)

(declare-fun array_inv!29678 (array!80861) Bool)

(assert (=> start!104948 (and (array_inv!29678 _values!914) e!709885)))

(declare-fun mapNonEmpty!49171 () Bool)

(declare-fun mapRes!49171 () Bool)

(declare-fun tp!93602 () Bool)

(declare-fun e!709891 () Bool)

(assert (=> mapNonEmpty!49171 (= mapRes!49171 (and tp!93602 e!709891))))

(declare-fun mapValue!49171 () ValueCell!15039)

(declare-fun mapRest!49171 () (Array (_ BitVec 32) ValueCell!15039))

(declare-fun mapKey!49171 () (_ BitVec 32))

(assert (=> mapNonEmpty!49171 (= (arr!38992 _values!914) (store mapRest!49171 mapKey!49171 mapValue!49171))))

(declare-fun b!1250386 () Bool)

(declare-fun e!709887 () Bool)

(assert (=> b!1250386 (= e!709886 e!709887)))

(declare-fun res!834120 () Bool)

(assert (=> b!1250386 (=> res!834120 e!709887)))

(declare-fun lt!564192 () ListLongMap!18473)

(declare-fun contains!7503 (ListLongMap!18473 (_ BitVec 64)) Bool)

(assert (=> b!1250386 (= res!834120 (contains!7503 lt!564192 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4469 (array!80859 array!80861 (_ BitVec 32) (_ BitVec 32) V!47505 V!47505 (_ BitVec 32) Int) ListLongMap!18473)

(assert (=> b!1250386 (= lt!564192 (getCurrentListMap!4469 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49171 () Bool)

(assert (=> mapIsEmpty!49171 mapRes!49171))

(declare-fun b!1250387 () Bool)

(declare-fun res!834122 () Bool)

(assert (=> b!1250387 (=> (not res!834122) (not e!709888))))

(declare-datatypes ((List!27846 0))(
  ( (Nil!27843) (Cons!27842 (h!29051 (_ BitVec 64)) (t!41326 List!27846)) )
))
(declare-fun arrayNoDuplicates!0 (array!80859 (_ BitVec 32) List!27846) Bool)

(assert (=> b!1250387 (= res!834122 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27843))))

(declare-fun b!1250388 () Bool)

(declare-fun e!709890 () Bool)

(assert (=> b!1250388 (= e!709885 (and e!709890 mapRes!49171))))

(declare-fun condMapEmpty!49171 () Bool)

(declare-fun mapDefault!49171 () ValueCell!15039)

(assert (=> b!1250388 (= condMapEmpty!49171 (= (arr!38992 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15039)) mapDefault!49171)))))

(declare-fun b!1250389 () Bool)

(assert (=> b!1250389 (= e!709890 tp_is_empty!31605)))

(declare-fun b!1250390 () Bool)

(declare-fun res!834121 () Bool)

(assert (=> b!1250390 (=> (not res!834121) (not e!709888))))

(assert (=> b!1250390 (= res!834121 (and (= (size!39529 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39528 _keys!1118) (size!39529 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1250391 () Bool)

(assert (=> b!1250391 (= e!709887 true)))

(declare-fun -!2020 (ListLongMap!18473 (_ BitVec 64)) ListLongMap!18473)

(assert (=> b!1250391 (= (-!2020 lt!564192 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564192)))

(declare-fun lt!564193 () Unit!41485)

(declare-fun removeNotPresentStillSame!87 (ListLongMap!18473 (_ BitVec 64)) Unit!41485)

(assert (=> b!1250391 (= lt!564193 (removeNotPresentStillSame!87 lt!564192 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1250392 () Bool)

(declare-fun res!834124 () Bool)

(assert (=> b!1250392 (=> (not res!834124) (not e!709888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80859 (_ BitVec 32)) Bool)

(assert (=> b!1250392 (= res!834124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1250393 () Bool)

(assert (=> b!1250393 (= e!709891 tp_is_empty!31605)))

(assert (= (and start!104948 res!834119) b!1250390))

(assert (= (and b!1250390 res!834121) b!1250392))

(assert (= (and b!1250392 res!834124) b!1250387))

(assert (= (and b!1250387 res!834122) b!1250385))

(assert (= (and b!1250385 (not res!834123)) b!1250386))

(assert (= (and b!1250386 (not res!834120)) b!1250391))

(assert (= (and b!1250388 condMapEmpty!49171) mapIsEmpty!49171))

(assert (= (and b!1250388 (not condMapEmpty!49171)) mapNonEmpty!49171))

(get-info :version)

(assert (= (and mapNonEmpty!49171 ((_ is ValueCellFull!15039) mapValue!49171)) b!1250393))

(assert (= (and b!1250388 ((_ is ValueCellFull!15039) mapDefault!49171)) b!1250389))

(assert (= start!104948 b!1250388))

(declare-fun m!1151257 () Bool)

(assert (=> b!1250392 m!1151257))

(declare-fun m!1151259 () Bool)

(assert (=> b!1250391 m!1151259))

(declare-fun m!1151261 () Bool)

(assert (=> b!1250391 m!1151261))

(declare-fun m!1151263 () Bool)

(assert (=> b!1250385 m!1151263))

(declare-fun m!1151265 () Bool)

(assert (=> b!1250385 m!1151265))

(declare-fun m!1151267 () Bool)

(assert (=> b!1250385 m!1151267))

(declare-fun m!1151269 () Bool)

(assert (=> start!104948 m!1151269))

(declare-fun m!1151271 () Bool)

(assert (=> start!104948 m!1151271))

(declare-fun m!1151273 () Bool)

(assert (=> start!104948 m!1151273))

(declare-fun m!1151275 () Bool)

(assert (=> mapNonEmpty!49171 m!1151275))

(declare-fun m!1151277 () Bool)

(assert (=> b!1250386 m!1151277))

(declare-fun m!1151279 () Bool)

(assert (=> b!1250386 m!1151279))

(declare-fun m!1151281 () Bool)

(assert (=> b!1250387 m!1151281))

(check-sat b_and!44489 (not mapNonEmpty!49171) (not b!1250385) (not b!1250391) (not b_next!26703) (not start!104948) tp_is_empty!31605 (not b!1250387) (not b!1250392) (not b!1250386))
(check-sat b_and!44489 (not b_next!26703))
