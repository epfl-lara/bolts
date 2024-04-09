; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105464 () Bool)

(assert start!105464)

(declare-fun b_free!27087 () Bool)

(declare-fun b_next!27087 () Bool)

(assert (=> start!105464 (= b_free!27087 (not b_next!27087))))

(declare-fun tp!94776 () Bool)

(declare-fun b_and!44943 () Bool)

(assert (=> start!105464 (= tp!94776 b_and!44943)))

(declare-fun res!837409 () Bool)

(declare-fun e!713989 () Bool)

(assert (=> start!105464 (=> (not res!837409) (not e!713989))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105464 (= res!837409 (validMask!0 mask!1466))))

(assert (=> start!105464 e!713989))

(assert (=> start!105464 true))

(assert (=> start!105464 tp!94776))

(declare-fun tp_is_empty!31989 () Bool)

(assert (=> start!105464 tp_is_empty!31989))

(declare-datatypes ((array!81611 0))(
  ( (array!81612 (arr!39360 (Array (_ BitVec 32) (_ BitVec 64))) (size!39897 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81611)

(declare-fun array_inv!29933 (array!81611) Bool)

(assert (=> start!105464 (array_inv!29933 _keys!1118)))

(declare-datatypes ((V!48017 0))(
  ( (V!48018 (val!16057 Int)) )
))
(declare-datatypes ((ValueCell!15231 0))(
  ( (ValueCellFull!15231 (v!18757 V!48017)) (EmptyCell!15231) )
))
(declare-datatypes ((array!81613 0))(
  ( (array!81614 (arr!39361 (Array (_ BitVec 32) ValueCell!15231)) (size!39898 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81613)

(declare-fun e!713983 () Bool)

(declare-fun array_inv!29934 (array!81613) Bool)

(assert (=> start!105464 (and (array_inv!29934 _values!914) e!713983)))

(declare-fun mapIsEmpty!49768 () Bool)

(declare-fun mapRes!49768 () Bool)

(assert (=> mapIsEmpty!49768 mapRes!49768))

(declare-fun mapNonEmpty!49768 () Bool)

(declare-fun tp!94775 () Bool)

(declare-fun e!713985 () Bool)

(assert (=> mapNonEmpty!49768 (= mapRes!49768 (and tp!94775 e!713985))))

(declare-fun mapValue!49768 () ValueCell!15231)

(declare-fun mapKey!49768 () (_ BitVec 32))

(declare-fun mapRest!49768 () (Array (_ BitVec 32) ValueCell!15231))

(assert (=> mapNonEmpty!49768 (= (arr!39361 _values!914) (store mapRest!49768 mapKey!49768 mapValue!49768))))

(declare-fun b!1255993 () Bool)

(declare-fun res!837407 () Bool)

(assert (=> b!1255993 (=> (not res!837407) (not e!713989))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81611 (_ BitVec 32)) Bool)

(assert (=> b!1255993 (= res!837407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255994 () Bool)

(declare-fun e!713988 () Bool)

(assert (=> b!1255994 (= e!713983 (and e!713988 mapRes!49768))))

(declare-fun condMapEmpty!49768 () Bool)

(declare-fun mapDefault!49768 () ValueCell!15231)

(assert (=> b!1255994 (= condMapEmpty!49768 (= (arr!39361 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15231)) mapDefault!49768)))))

(declare-fun b!1255995 () Bool)

(assert (=> b!1255995 (= e!713988 tp_is_empty!31989)))

(declare-fun b!1255996 () Bool)

(assert (=> b!1255996 (= e!713985 tp_is_empty!31989)))

(declare-fun b!1255997 () Bool)

(declare-fun e!713984 () Bool)

(declare-fun e!713986 () Bool)

(assert (=> b!1255997 (= e!713984 e!713986)))

(declare-fun res!837405 () Bool)

(assert (=> b!1255997 (=> res!837405 e!713986)))

(declare-datatypes ((tuple2!20890 0))(
  ( (tuple2!20891 (_1!10455 (_ BitVec 64)) (_2!10455 V!48017)) )
))
(declare-datatypes ((List!28124 0))(
  ( (Nil!28121) (Cons!28120 (h!29329 tuple2!20890) (t!41618 List!28124)) )
))
(declare-datatypes ((ListLongMap!18775 0))(
  ( (ListLongMap!18776 (toList!9403 List!28124)) )
))
(declare-fun lt!567860 () ListLongMap!18775)

(declare-fun contains!7560 (ListLongMap!18775 (_ BitVec 64)) Bool)

(assert (=> b!1255997 (= res!837405 (contains!7560 lt!567860 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48017)

(declare-fun minValueBefore!43 () V!48017)

(declare-fun getCurrentListMap!4565 (array!81611 array!81613 (_ BitVec 32) (_ BitVec 32) V!48017 V!48017 (_ BitVec 32) Int) ListLongMap!18775)

(assert (=> b!1255997 (= lt!567860 (getCurrentListMap!4565 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255998 () Bool)

(declare-fun res!837406 () Bool)

(assert (=> b!1255998 (=> (not res!837406) (not e!713989))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1255998 (= res!837406 (and (= (size!39898 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39897 _keys!1118) (size!39898 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255999 () Bool)

(assert (=> b!1255999 (= e!713986 true)))

(declare-fun -!2084 (ListLongMap!18775 (_ BitVec 64)) ListLongMap!18775)

(assert (=> b!1255999 (= (-!2084 lt!567860 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567860)))

(declare-datatypes ((Unit!41778 0))(
  ( (Unit!41779) )
))
(declare-fun lt!567864 () Unit!41778)

(declare-fun removeNotPresentStillSame!117 (ListLongMap!18775 (_ BitVec 64)) Unit!41778)

(assert (=> b!1255999 (= lt!567864 (removeNotPresentStillSame!117 lt!567860 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256000 () Bool)

(declare-fun res!837410 () Bool)

(assert (=> b!1256000 (=> (not res!837410) (not e!713989))))

(declare-datatypes ((List!28125 0))(
  ( (Nil!28122) (Cons!28121 (h!29330 (_ BitVec 64)) (t!41619 List!28125)) )
))
(declare-fun arrayNoDuplicates!0 (array!81611 (_ BitVec 32) List!28125) Bool)

(assert (=> b!1256000 (= res!837410 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28122))))

(declare-fun b!1256001 () Bool)

(assert (=> b!1256001 (= e!713989 (not e!713984))))

(declare-fun res!837408 () Bool)

(assert (=> b!1256001 (=> res!837408 e!713984)))

(assert (=> b!1256001 (= res!837408 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!567862 () ListLongMap!18775)

(declare-fun lt!567863 () ListLongMap!18775)

(assert (=> b!1256001 (= lt!567862 lt!567863)))

(declare-fun lt!567861 () Unit!41778)

(declare-fun minValueAfter!43 () V!48017)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1077 (array!81611 array!81613 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48017 V!48017 V!48017 V!48017 (_ BitVec 32) Int) Unit!41778)

(assert (=> b!1256001 (= lt!567861 (lemmaNoChangeToArrayThenSameMapNoExtras!1077 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5759 (array!81611 array!81613 (_ BitVec 32) (_ BitVec 32) V!48017 V!48017 (_ BitVec 32) Int) ListLongMap!18775)

(assert (=> b!1256001 (= lt!567863 (getCurrentListMapNoExtraKeys!5759 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256001 (= lt!567862 (getCurrentListMapNoExtraKeys!5759 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105464 res!837409) b!1255998))

(assert (= (and b!1255998 res!837406) b!1255993))

(assert (= (and b!1255993 res!837407) b!1256000))

(assert (= (and b!1256000 res!837410) b!1256001))

(assert (= (and b!1256001 (not res!837408)) b!1255997))

(assert (= (and b!1255997 (not res!837405)) b!1255999))

(assert (= (and b!1255994 condMapEmpty!49768) mapIsEmpty!49768))

(assert (= (and b!1255994 (not condMapEmpty!49768)) mapNonEmpty!49768))

(get-info :version)

(assert (= (and mapNonEmpty!49768 ((_ is ValueCellFull!15231) mapValue!49768)) b!1255996))

(assert (= (and b!1255994 ((_ is ValueCellFull!15231) mapDefault!49768)) b!1255995))

(assert (= start!105464 b!1255994))

(declare-fun m!1156723 () Bool)

(assert (=> b!1255993 m!1156723))

(declare-fun m!1156725 () Bool)

(assert (=> b!1256001 m!1156725))

(declare-fun m!1156727 () Bool)

(assert (=> b!1256001 m!1156727))

(declare-fun m!1156729 () Bool)

(assert (=> b!1256001 m!1156729))

(declare-fun m!1156731 () Bool)

(assert (=> start!105464 m!1156731))

(declare-fun m!1156733 () Bool)

(assert (=> start!105464 m!1156733))

(declare-fun m!1156735 () Bool)

(assert (=> start!105464 m!1156735))

(declare-fun m!1156737 () Bool)

(assert (=> b!1255999 m!1156737))

(declare-fun m!1156739 () Bool)

(assert (=> b!1255999 m!1156739))

(declare-fun m!1156741 () Bool)

(assert (=> b!1255997 m!1156741))

(declare-fun m!1156743 () Bool)

(assert (=> b!1255997 m!1156743))

(declare-fun m!1156745 () Bool)

(assert (=> b!1256000 m!1156745))

(declare-fun m!1156747 () Bool)

(assert (=> mapNonEmpty!49768 m!1156747))

(check-sat (not b!1256001) (not start!105464) (not b!1255997) (not mapNonEmpty!49768) tp_is_empty!31989 (not b!1255993) (not b_next!27087) (not b!1255999) (not b!1256000) b_and!44943)
(check-sat b_and!44943 (not b_next!27087))
