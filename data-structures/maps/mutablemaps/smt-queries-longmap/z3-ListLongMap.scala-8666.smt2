; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105396 () Bool)

(assert start!105396)

(declare-fun b_free!27033 () Bool)

(declare-fun b_next!27033 () Bool)

(assert (=> start!105396 (= b_free!27033 (not b_next!27033))))

(declare-fun tp!94610 () Bool)

(declare-fun b_and!44881 () Bool)

(assert (=> start!105396 (= tp!94610 b_and!44881)))

(declare-fun res!836941 () Bool)

(declare-fun e!713416 () Bool)

(assert (=> start!105396 (=> (not res!836941) (not e!713416))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105396 (= res!836941 (validMask!0 mask!1466))))

(assert (=> start!105396 e!713416))

(assert (=> start!105396 true))

(assert (=> start!105396 tp!94610))

(declare-fun tp_is_empty!31935 () Bool)

(assert (=> start!105396 tp_is_empty!31935))

(declare-datatypes ((array!81503 0))(
  ( (array!81504 (arr!39307 (Array (_ BitVec 32) (_ BitVec 64))) (size!39844 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81503)

(declare-fun array_inv!29899 (array!81503) Bool)

(assert (=> start!105396 (array_inv!29899 _keys!1118)))

(declare-datatypes ((V!47945 0))(
  ( (V!47946 (val!16030 Int)) )
))
(declare-datatypes ((ValueCell!15204 0))(
  ( (ValueCellFull!15204 (v!18730 V!47945)) (EmptyCell!15204) )
))
(declare-datatypes ((array!81505 0))(
  ( (array!81506 (arr!39308 (Array (_ BitVec 32) ValueCell!15204)) (size!39845 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81505)

(declare-fun e!713418 () Bool)

(declare-fun array_inv!29900 (array!81505) Bool)

(assert (=> start!105396 (and (array_inv!29900 _values!914) e!713418)))

(declare-fun mapIsEmpty!49684 () Bool)

(declare-fun mapRes!49684 () Bool)

(assert (=> mapIsEmpty!49684 mapRes!49684))

(declare-fun b!1255232 () Bool)

(declare-fun res!836943 () Bool)

(assert (=> b!1255232 (=> (not res!836943) (not e!713416))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1255232 (= res!836943 (and (= (size!39845 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39844 _keys!1118) (size!39845 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255233 () Bool)

(declare-fun res!836944 () Bool)

(assert (=> b!1255233 (=> (not res!836944) (not e!713416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81503 (_ BitVec 32)) Bool)

(assert (=> b!1255233 (= res!836944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255234 () Bool)

(assert (=> b!1255234 (= e!713416 (not true))))

(declare-datatypes ((tuple2!20844 0))(
  ( (tuple2!20845 (_1!10432 (_ BitVec 64)) (_2!10432 V!47945)) )
))
(declare-datatypes ((List!28083 0))(
  ( (Nil!28080) (Cons!28079 (h!29288 tuple2!20844) (t!41575 List!28083)) )
))
(declare-datatypes ((ListLongMap!18729 0))(
  ( (ListLongMap!18730 (toList!9380 List!28083)) )
))
(declare-fun lt!567470 () ListLongMap!18729)

(declare-fun lt!567469 () ListLongMap!18729)

(assert (=> b!1255234 (= lt!567470 lt!567469)))

(declare-datatypes ((Unit!41734 0))(
  ( (Unit!41735) )
))
(declare-fun lt!567468 () Unit!41734)

(declare-fun minValueAfter!43 () V!47945)

(declare-fun zeroValue!871 () V!47945)

(declare-fun minValueBefore!43 () V!47945)

(declare-fun defaultEntry!922 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1059 (array!81503 array!81505 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47945 V!47945 V!47945 V!47945 (_ BitVec 32) Int) Unit!41734)

(assert (=> b!1255234 (= lt!567468 (lemmaNoChangeToArrayThenSameMapNoExtras!1059 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5741 (array!81503 array!81505 (_ BitVec 32) (_ BitVec 32) V!47945 V!47945 (_ BitVec 32) Int) ListLongMap!18729)

(assert (=> b!1255234 (= lt!567469 (getCurrentListMapNoExtraKeys!5741 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255234 (= lt!567470 (getCurrentListMapNoExtraKeys!5741 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255235 () Bool)

(declare-fun res!836942 () Bool)

(assert (=> b!1255235 (=> (not res!836942) (not e!713416))))

(declare-datatypes ((List!28084 0))(
  ( (Nil!28081) (Cons!28080 (h!29289 (_ BitVec 64)) (t!41576 List!28084)) )
))
(declare-fun arrayNoDuplicates!0 (array!81503 (_ BitVec 32) List!28084) Bool)

(assert (=> b!1255235 (= res!836942 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28081))))

(declare-fun b!1255236 () Bool)

(declare-fun e!713417 () Bool)

(assert (=> b!1255236 (= e!713417 tp_is_empty!31935)))

(declare-fun mapNonEmpty!49684 () Bool)

(declare-fun tp!94611 () Bool)

(assert (=> mapNonEmpty!49684 (= mapRes!49684 (and tp!94611 e!713417))))

(declare-fun mapKey!49684 () (_ BitVec 32))

(declare-fun mapRest!49684 () (Array (_ BitVec 32) ValueCell!15204))

(declare-fun mapValue!49684 () ValueCell!15204)

(assert (=> mapNonEmpty!49684 (= (arr!39308 _values!914) (store mapRest!49684 mapKey!49684 mapValue!49684))))

(declare-fun b!1255237 () Bool)

(declare-fun e!713414 () Bool)

(assert (=> b!1255237 (= e!713414 tp_is_empty!31935)))

(declare-fun b!1255238 () Bool)

(assert (=> b!1255238 (= e!713418 (and e!713414 mapRes!49684))))

(declare-fun condMapEmpty!49684 () Bool)

(declare-fun mapDefault!49684 () ValueCell!15204)

(assert (=> b!1255238 (= condMapEmpty!49684 (= (arr!39308 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15204)) mapDefault!49684)))))

(assert (= (and start!105396 res!836941) b!1255232))

(assert (= (and b!1255232 res!836943) b!1255233))

(assert (= (and b!1255233 res!836944) b!1255235))

(assert (= (and b!1255235 res!836942) b!1255234))

(assert (= (and b!1255238 condMapEmpty!49684) mapIsEmpty!49684))

(assert (= (and b!1255238 (not condMapEmpty!49684)) mapNonEmpty!49684))

(get-info :version)

(assert (= (and mapNonEmpty!49684 ((_ is ValueCellFull!15204) mapValue!49684)) b!1255236))

(assert (= (and b!1255238 ((_ is ValueCellFull!15204) mapDefault!49684)) b!1255237))

(assert (= start!105396 b!1255238))

(declare-fun m!1156031 () Bool)

(assert (=> b!1255233 m!1156031))

(declare-fun m!1156033 () Bool)

(assert (=> start!105396 m!1156033))

(declare-fun m!1156035 () Bool)

(assert (=> start!105396 m!1156035))

(declare-fun m!1156037 () Bool)

(assert (=> start!105396 m!1156037))

(declare-fun m!1156039 () Bool)

(assert (=> mapNonEmpty!49684 m!1156039))

(declare-fun m!1156041 () Bool)

(assert (=> b!1255234 m!1156041))

(declare-fun m!1156043 () Bool)

(assert (=> b!1255234 m!1156043))

(declare-fun m!1156045 () Bool)

(assert (=> b!1255234 m!1156045))

(declare-fun m!1156047 () Bool)

(assert (=> b!1255235 m!1156047))

(check-sat (not b_next!27033) (not b!1255235) b_and!44881 (not mapNonEmpty!49684) (not b!1255233) (not start!105396) (not b!1255234) tp_is_empty!31935)
(check-sat b_and!44881 (not b_next!27033))
