; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104862 () Bool)

(assert start!104862)

(declare-fun b_free!26631 () Bool)

(declare-fun b_next!26631 () Bool)

(assert (=> start!104862 (= b_free!26631 (not b_next!26631))))

(declare-fun tp!93383 () Bool)

(declare-fun b_and!44409 () Bool)

(assert (=> start!104862 (= tp!93383 b_and!44409)))

(declare-fun mapNonEmpty!49060 () Bool)

(declare-fun mapRes!49060 () Bool)

(declare-fun tp!93384 () Bool)

(declare-fun e!709163 () Bool)

(assert (=> mapNonEmpty!49060 (= mapRes!49060 (and tp!93384 e!709163))))

(declare-datatypes ((V!47409 0))(
  ( (V!47410 (val!15829 Int)) )
))
(declare-datatypes ((ValueCell!15003 0))(
  ( (ValueCellFull!15003 (v!18525 V!47409)) (EmptyCell!15003) )
))
(declare-fun mapRest!49060 () (Array (_ BitVec 32) ValueCell!15003))

(declare-fun mapValue!49060 () ValueCell!15003)

(declare-fun mapKey!49060 () (_ BitVec 32))

(declare-datatypes ((array!80723 0))(
  ( (array!80724 (arr!38924 (Array (_ BitVec 32) ValueCell!15003)) (size!39461 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80723)

(assert (=> mapNonEmpty!49060 (= (arr!38924 _values!914) (store mapRest!49060 mapKey!49060 mapValue!49060))))

(declare-fun b!1249417 () Bool)

(declare-fun res!833530 () Bool)

(declare-fun e!709167 () Bool)

(assert (=> b!1249417 (=> (not res!833530) (not e!709167))))

(declare-datatypes ((array!80725 0))(
  ( (array!80726 (arr!38925 (Array (_ BitVec 32) (_ BitVec 64))) (size!39462 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80725)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80725 (_ BitVec 32)) Bool)

(assert (=> b!1249417 (= res!833530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1249418 () Bool)

(assert (=> b!1249418 (= e!709167 (not true))))

(declare-datatypes ((tuple2!20532 0))(
  ( (tuple2!20533 (_1!10276 (_ BitVec 64)) (_2!10276 V!47409)) )
))
(declare-datatypes ((List!27795 0))(
  ( (Nil!27792) (Cons!27791 (h!29000 tuple2!20532) (t!41273 List!27795)) )
))
(declare-datatypes ((ListLongMap!18417 0))(
  ( (ListLongMap!18418 (toList!9224 List!27795)) )
))
(declare-fun lt!563699 () ListLongMap!18417)

(declare-fun lt!563700 () ListLongMap!18417)

(assert (=> b!1249418 (= lt!563699 lt!563700)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41431 0))(
  ( (Unit!41432) )
))
(declare-fun lt!563698 () Unit!41431)

(declare-fun minValueAfter!43 () V!47409)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47409)

(declare-fun minValueBefore!43 () V!47409)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!925 (array!80725 array!80723 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47409 V!47409 V!47409 V!47409 (_ BitVec 32) Int) Unit!41431)

(assert (=> b!1249418 (= lt!563698 (lemmaNoChangeToArrayThenSameMapNoExtras!925 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5607 (array!80725 array!80723 (_ BitVec 32) (_ BitVec 32) V!47409 V!47409 (_ BitVec 32) Int) ListLongMap!18417)

(assert (=> b!1249418 (= lt!563700 (getCurrentListMapNoExtraKeys!5607 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249418 (= lt!563699 (getCurrentListMapNoExtraKeys!5607 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249419 () Bool)

(declare-fun tp_is_empty!31533 () Bool)

(assert (=> b!1249419 (= e!709163 tp_is_empty!31533)))

(declare-fun b!1249420 () Bool)

(declare-fun res!833532 () Bool)

(assert (=> b!1249420 (=> (not res!833532) (not e!709167))))

(declare-datatypes ((List!27796 0))(
  ( (Nil!27793) (Cons!27792 (h!29001 (_ BitVec 64)) (t!41274 List!27796)) )
))
(declare-fun arrayNoDuplicates!0 (array!80725 (_ BitVec 32) List!27796) Bool)

(assert (=> b!1249420 (= res!833532 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27793))))

(declare-fun res!833529 () Bool)

(assert (=> start!104862 (=> (not res!833529) (not e!709167))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104862 (= res!833529 (validMask!0 mask!1466))))

(assert (=> start!104862 e!709167))

(assert (=> start!104862 true))

(assert (=> start!104862 tp!93383))

(assert (=> start!104862 tp_is_empty!31533))

(declare-fun array_inv!29633 (array!80725) Bool)

(assert (=> start!104862 (array_inv!29633 _keys!1118)))

(declare-fun e!709164 () Bool)

(declare-fun array_inv!29634 (array!80723) Bool)

(assert (=> start!104862 (and (array_inv!29634 _values!914) e!709164)))

(declare-fun b!1249421 () Bool)

(declare-fun res!833531 () Bool)

(assert (=> b!1249421 (=> (not res!833531) (not e!709167))))

(assert (=> b!1249421 (= res!833531 (and (= (size!39461 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39462 _keys!1118) (size!39461 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1249422 () Bool)

(declare-fun e!709166 () Bool)

(assert (=> b!1249422 (= e!709166 tp_is_empty!31533)))

(declare-fun b!1249423 () Bool)

(assert (=> b!1249423 (= e!709164 (and e!709166 mapRes!49060))))

(declare-fun condMapEmpty!49060 () Bool)

(declare-fun mapDefault!49060 () ValueCell!15003)

(assert (=> b!1249423 (= condMapEmpty!49060 (= (arr!38924 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15003)) mapDefault!49060)))))

(declare-fun mapIsEmpty!49060 () Bool)

(assert (=> mapIsEmpty!49060 mapRes!49060))

(assert (= (and start!104862 res!833529) b!1249421))

(assert (= (and b!1249421 res!833531) b!1249417))

(assert (= (and b!1249417 res!833530) b!1249420))

(assert (= (and b!1249420 res!833532) b!1249418))

(assert (= (and b!1249423 condMapEmpty!49060) mapIsEmpty!49060))

(assert (= (and b!1249423 (not condMapEmpty!49060)) mapNonEmpty!49060))

(get-info :version)

(assert (= (and mapNonEmpty!49060 ((_ is ValueCellFull!15003) mapValue!49060)) b!1249419))

(assert (= (and b!1249423 ((_ is ValueCellFull!15003) mapDefault!49060)) b!1249422))

(assert (= start!104862 b!1249423))

(declare-fun m!1150379 () Bool)

(assert (=> b!1249418 m!1150379))

(declare-fun m!1150381 () Bool)

(assert (=> b!1249418 m!1150381))

(declare-fun m!1150383 () Bool)

(assert (=> b!1249418 m!1150383))

(declare-fun m!1150385 () Bool)

(assert (=> b!1249420 m!1150385))

(declare-fun m!1150387 () Bool)

(assert (=> b!1249417 m!1150387))

(declare-fun m!1150389 () Bool)

(assert (=> mapNonEmpty!49060 m!1150389))

(declare-fun m!1150391 () Bool)

(assert (=> start!104862 m!1150391))

(declare-fun m!1150393 () Bool)

(assert (=> start!104862 m!1150393))

(declare-fun m!1150395 () Bool)

(assert (=> start!104862 m!1150395))

(check-sat tp_is_empty!31533 (not b!1249418) (not mapNonEmpty!49060) b_and!44409 (not start!104862) (not b!1249420) (not b_next!26631) (not b!1249417))
(check-sat b_and!44409 (not b_next!26631))
