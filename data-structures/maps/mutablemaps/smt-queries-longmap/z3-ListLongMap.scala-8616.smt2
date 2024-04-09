; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105000 () Bool)

(assert start!105000)

(declare-fun b_free!26733 () Bool)

(declare-fun b_next!26733 () Bool)

(assert (=> start!105000 (= b_free!26733 (not b_next!26733))))

(declare-fun tp!93695 () Bool)

(declare-fun b_and!44529 () Bool)

(assert (=> start!105000 (= tp!93695 b_and!44529)))

(declare-fun b!1250947 () Bool)

(declare-fun e!710306 () Bool)

(assert (=> b!1250947 (= e!710306 true)))

(declare-datatypes ((V!47545 0))(
  ( (V!47546 (val!15880 Int)) )
))
(declare-datatypes ((tuple2!20614 0))(
  ( (tuple2!20615 (_1!10317 (_ BitVec 64)) (_2!10317 V!47545)) )
))
(declare-datatypes ((List!27869 0))(
  ( (Nil!27866) (Cons!27865 (h!29074 tuple2!20614) (t!41351 List!27869)) )
))
(declare-datatypes ((ListLongMap!18499 0))(
  ( (ListLongMap!18500 (toList!9265 List!27869)) )
))
(declare-fun lt!564542 () ListLongMap!18499)

(declare-fun -!2028 (ListLongMap!18499 (_ BitVec 64)) ListLongMap!18499)

(assert (=> b!1250947 (= (-!2028 lt!564542 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564542)))

(declare-datatypes ((Unit!41509 0))(
  ( (Unit!41510) )
))
(declare-fun lt!564541 () Unit!41509)

(declare-fun removeNotPresentStillSame!95 (ListLongMap!18499 (_ BitVec 64)) Unit!41509)

(assert (=> b!1250947 (= lt!564541 (removeNotPresentStillSame!95 lt!564542 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1250948 () Bool)

(declare-fun e!710300 () Bool)

(declare-fun e!710302 () Bool)

(declare-fun mapRes!49219 () Bool)

(assert (=> b!1250948 (= e!710300 (and e!710302 mapRes!49219))))

(declare-fun condMapEmpty!49219 () Bool)

(declare-datatypes ((ValueCell!15054 0))(
  ( (ValueCellFull!15054 (v!18577 V!47545)) (EmptyCell!15054) )
))
(declare-datatypes ((array!80917 0))(
  ( (array!80918 (arr!39019 (Array (_ BitVec 32) ValueCell!15054)) (size!39556 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80917)

(declare-fun mapDefault!49219 () ValueCell!15054)

(assert (=> b!1250948 (= condMapEmpty!49219 (= (arr!39019 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15054)) mapDefault!49219)))))

(declare-fun b!1250949 () Bool)

(declare-fun e!710301 () Bool)

(declare-fun tp_is_empty!31635 () Bool)

(assert (=> b!1250949 (= e!710301 tp_is_empty!31635)))

(declare-fun b!1250950 () Bool)

(assert (=> b!1250950 (= e!710302 tp_is_empty!31635)))

(declare-fun b!1250951 () Bool)

(declare-fun e!710303 () Bool)

(assert (=> b!1250951 (= e!710303 e!710306)))

(declare-fun res!834454 () Bool)

(assert (=> b!1250951 (=> res!834454 e!710306)))

(declare-fun contains!7516 (ListLongMap!18499 (_ BitVec 64)) Bool)

(assert (=> b!1250951 (= res!834454 (contains!7516 lt!564542 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47545)

(declare-datatypes ((array!80919 0))(
  ( (array!80920 (arr!39020 (Array (_ BitVec 32) (_ BitVec 64))) (size!39557 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80919)

(declare-fun minValueBefore!43 () V!47545)

(declare-fun getCurrentListMap!4481 (array!80919 array!80917 (_ BitVec 32) (_ BitVec 32) V!47545 V!47545 (_ BitVec 32) Int) ListLongMap!18499)

(assert (=> b!1250951 (= lt!564542 (getCurrentListMap!4481 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250952 () Bool)

(declare-fun e!710304 () Bool)

(assert (=> b!1250952 (= e!710304 (not e!710303))))

(declare-fun res!834455 () Bool)

(assert (=> b!1250952 (=> res!834455 e!710303)))

(assert (=> b!1250952 (= res!834455 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564539 () ListLongMap!18499)

(declare-fun lt!564538 () ListLongMap!18499)

(assert (=> b!1250952 (= lt!564539 lt!564538)))

(declare-fun minValueAfter!43 () V!47545)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lt!564540 () Unit!41509)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!960 (array!80919 array!80917 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47545 V!47545 V!47545 V!47545 (_ BitVec 32) Int) Unit!41509)

(assert (=> b!1250952 (= lt!564540 (lemmaNoChangeToArrayThenSameMapNoExtras!960 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5642 (array!80919 array!80917 (_ BitVec 32) (_ BitVec 32) V!47545 V!47545 (_ BitVec 32) Int) ListLongMap!18499)

(assert (=> b!1250952 (= lt!564538 (getCurrentListMapNoExtraKeys!5642 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250952 (= lt!564539 (getCurrentListMapNoExtraKeys!5642 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250953 () Bool)

(declare-fun res!834453 () Bool)

(assert (=> b!1250953 (=> (not res!834453) (not e!710304))))

(assert (=> b!1250953 (= res!834453 (and (= (size!39556 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39557 _keys!1118) (size!39556 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!834451 () Bool)

(assert (=> start!105000 (=> (not res!834451) (not e!710304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105000 (= res!834451 (validMask!0 mask!1466))))

(assert (=> start!105000 e!710304))

(assert (=> start!105000 true))

(assert (=> start!105000 tp!93695))

(assert (=> start!105000 tp_is_empty!31635))

(declare-fun array_inv!29699 (array!80919) Bool)

(assert (=> start!105000 (array_inv!29699 _keys!1118)))

(declare-fun array_inv!29700 (array!80917) Bool)

(assert (=> start!105000 (and (array_inv!29700 _values!914) e!710300)))

(declare-fun mapIsEmpty!49219 () Bool)

(assert (=> mapIsEmpty!49219 mapRes!49219))

(declare-fun b!1250954 () Bool)

(declare-fun res!834450 () Bool)

(assert (=> b!1250954 (=> (not res!834450) (not e!710304))))

(declare-datatypes ((List!27870 0))(
  ( (Nil!27867) (Cons!27866 (h!29075 (_ BitVec 64)) (t!41352 List!27870)) )
))
(declare-fun arrayNoDuplicates!0 (array!80919 (_ BitVec 32) List!27870) Bool)

(assert (=> b!1250954 (= res!834450 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27867))))

(declare-fun mapNonEmpty!49219 () Bool)

(declare-fun tp!93696 () Bool)

(assert (=> mapNonEmpty!49219 (= mapRes!49219 (and tp!93696 e!710301))))

(declare-fun mapKey!49219 () (_ BitVec 32))

(declare-fun mapRest!49219 () (Array (_ BitVec 32) ValueCell!15054))

(declare-fun mapValue!49219 () ValueCell!15054)

(assert (=> mapNonEmpty!49219 (= (arr!39019 _values!914) (store mapRest!49219 mapKey!49219 mapValue!49219))))

(declare-fun b!1250955 () Bool)

(declare-fun res!834452 () Bool)

(assert (=> b!1250955 (=> (not res!834452) (not e!710304))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80919 (_ BitVec 32)) Bool)

(assert (=> b!1250955 (= res!834452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(assert (= (and start!105000 res!834451) b!1250953))

(assert (= (and b!1250953 res!834453) b!1250955))

(assert (= (and b!1250955 res!834452) b!1250954))

(assert (= (and b!1250954 res!834450) b!1250952))

(assert (= (and b!1250952 (not res!834455)) b!1250951))

(assert (= (and b!1250951 (not res!834454)) b!1250947))

(assert (= (and b!1250948 condMapEmpty!49219) mapIsEmpty!49219))

(assert (= (and b!1250948 (not condMapEmpty!49219)) mapNonEmpty!49219))

(get-info :version)

(assert (= (and mapNonEmpty!49219 ((_ is ValueCellFull!15054) mapValue!49219)) b!1250949))

(assert (= (and b!1250948 ((_ is ValueCellFull!15054) mapDefault!49219)) b!1250950))

(assert (= start!105000 b!1250948))

(declare-fun m!1151773 () Bool)

(assert (=> start!105000 m!1151773))

(declare-fun m!1151775 () Bool)

(assert (=> start!105000 m!1151775))

(declare-fun m!1151777 () Bool)

(assert (=> start!105000 m!1151777))

(declare-fun m!1151779 () Bool)

(assert (=> b!1250947 m!1151779))

(declare-fun m!1151781 () Bool)

(assert (=> b!1250947 m!1151781))

(declare-fun m!1151783 () Bool)

(assert (=> b!1250952 m!1151783))

(declare-fun m!1151785 () Bool)

(assert (=> b!1250952 m!1151785))

(declare-fun m!1151787 () Bool)

(assert (=> b!1250952 m!1151787))

(declare-fun m!1151789 () Bool)

(assert (=> b!1250954 m!1151789))

(declare-fun m!1151791 () Bool)

(assert (=> b!1250955 m!1151791))

(declare-fun m!1151793 () Bool)

(assert (=> mapNonEmpty!49219 m!1151793))

(declare-fun m!1151795 () Bool)

(assert (=> b!1250951 m!1151795))

(declare-fun m!1151797 () Bool)

(assert (=> b!1250951 m!1151797))

(check-sat tp_is_empty!31635 (not mapNonEmpty!49219) (not b!1250947) (not start!105000) (not b!1250952) (not b_next!26733) (not b!1250951) (not b!1250955) (not b!1250954) b_and!44529)
(check-sat b_and!44529 (not b_next!26733))
