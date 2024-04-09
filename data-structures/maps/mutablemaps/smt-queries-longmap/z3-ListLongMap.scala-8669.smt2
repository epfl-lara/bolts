; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105428 () Bool)

(assert start!105428)

(declare-fun b_free!27051 () Bool)

(declare-fun b_next!27051 () Bool)

(assert (=> start!105428 (= b_free!27051 (not b_next!27051))))

(declare-fun tp!94667 () Bool)

(declare-fun b_and!44907 () Bool)

(assert (=> start!105428 (= tp!94667 b_and!44907)))

(declare-fun b!1255511 () Bool)

(declare-fun e!713613 () Bool)

(declare-fun tp_is_empty!31953 () Bool)

(assert (=> b!1255511 (= e!713613 tp_is_empty!31953)))

(declare-fun mapNonEmpty!49714 () Bool)

(declare-fun mapRes!49714 () Bool)

(declare-fun tp!94668 () Bool)

(assert (=> mapNonEmpty!49714 (= mapRes!49714 (and tp!94668 e!713613))))

(declare-datatypes ((V!47969 0))(
  ( (V!47970 (val!16039 Int)) )
))
(declare-datatypes ((ValueCell!15213 0))(
  ( (ValueCellFull!15213 (v!18739 V!47969)) (EmptyCell!15213) )
))
(declare-fun mapValue!49714 () ValueCell!15213)

(declare-fun mapKey!49714 () (_ BitVec 32))

(declare-datatypes ((array!81541 0))(
  ( (array!81542 (arr!39325 (Array (_ BitVec 32) ValueCell!15213)) (size!39862 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81541)

(declare-fun mapRest!49714 () (Array (_ BitVec 32) ValueCell!15213))

(assert (=> mapNonEmpty!49714 (= (arr!39325 _values!914) (store mapRest!49714 mapKey!49714 mapValue!49714))))

(declare-fun b!1255512 () Bool)

(declare-fun e!713610 () Bool)

(declare-fun e!713609 () Bool)

(assert (=> b!1255512 (= e!713610 (not e!713609))))

(declare-fun res!837089 () Bool)

(assert (=> b!1255512 (=> res!837089 e!713609)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1255512 (= res!837089 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!20858 0))(
  ( (tuple2!20859 (_1!10439 (_ BitVec 64)) (_2!10439 V!47969)) )
))
(declare-datatypes ((List!28097 0))(
  ( (Nil!28094) (Cons!28093 (h!29302 tuple2!20858) (t!41591 List!28097)) )
))
(declare-datatypes ((ListLongMap!18743 0))(
  ( (ListLongMap!18744 (toList!9387 List!28097)) )
))
(declare-fun lt!567597 () ListLongMap!18743)

(declare-fun lt!567596 () ListLongMap!18743)

(assert (=> b!1255512 (= lt!567597 lt!567596)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun minValueAfter!43 () V!47969)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47969)

(declare-datatypes ((array!81543 0))(
  ( (array!81544 (arr!39326 (Array (_ BitVec 32) (_ BitVec 64))) (size!39863 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81543)

(declare-datatypes ((Unit!41748 0))(
  ( (Unit!41749) )
))
(declare-fun lt!567595 () Unit!41748)

(declare-fun minValueBefore!43 () V!47969)

(declare-fun defaultEntry!922 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1066 (array!81543 array!81541 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47969 V!47969 V!47969 V!47969 (_ BitVec 32) Int) Unit!41748)

(assert (=> b!1255512 (= lt!567595 (lemmaNoChangeToArrayThenSameMapNoExtras!1066 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5748 (array!81543 array!81541 (_ BitVec 32) (_ BitVec 32) V!47969 V!47969 (_ BitVec 32) Int) ListLongMap!18743)

(assert (=> b!1255512 (= lt!567596 (getCurrentListMapNoExtraKeys!5748 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255512 (= lt!567597 (getCurrentListMapNoExtraKeys!5748 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255513 () Bool)

(declare-fun res!837088 () Bool)

(assert (=> b!1255513 (=> (not res!837088) (not e!713610))))

(declare-datatypes ((List!28098 0))(
  ( (Nil!28095) (Cons!28094 (h!29303 (_ BitVec 64)) (t!41592 List!28098)) )
))
(declare-fun arrayNoDuplicates!0 (array!81543 (_ BitVec 32) List!28098) Bool)

(assert (=> b!1255513 (= res!837088 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28095))))

(declare-fun b!1255514 () Bool)

(declare-fun e!713611 () Bool)

(assert (=> b!1255514 (= e!713611 tp_is_empty!31953)))

(declare-fun b!1255515 () Bool)

(assert (=> b!1255515 (= e!713609 true)))

(declare-fun lt!567594 () Bool)

(declare-fun contains!7548 (ListLongMap!18743 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4553 (array!81543 array!81541 (_ BitVec 32) (_ BitVec 32) V!47969 V!47969 (_ BitVec 32) Int) ListLongMap!18743)

(assert (=> b!1255515 (= lt!567594 (contains!7548 (getCurrentListMap!4553 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1255516 () Bool)

(declare-fun res!837086 () Bool)

(assert (=> b!1255516 (=> (not res!837086) (not e!713610))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81543 (_ BitVec 32)) Bool)

(assert (=> b!1255516 (= res!837086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49714 () Bool)

(assert (=> mapIsEmpty!49714 mapRes!49714))

(declare-fun res!837087 () Bool)

(assert (=> start!105428 (=> (not res!837087) (not e!713610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105428 (= res!837087 (validMask!0 mask!1466))))

(assert (=> start!105428 e!713610))

(assert (=> start!105428 true))

(assert (=> start!105428 tp!94667))

(assert (=> start!105428 tp_is_empty!31953))

(declare-fun array_inv!29913 (array!81543) Bool)

(assert (=> start!105428 (array_inv!29913 _keys!1118)))

(declare-fun e!713612 () Bool)

(declare-fun array_inv!29914 (array!81541) Bool)

(assert (=> start!105428 (and (array_inv!29914 _values!914) e!713612)))

(declare-fun b!1255517 () Bool)

(declare-fun res!837085 () Bool)

(assert (=> b!1255517 (=> (not res!837085) (not e!713610))))

(assert (=> b!1255517 (= res!837085 (and (= (size!39862 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39863 _keys!1118) (size!39862 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255518 () Bool)

(assert (=> b!1255518 (= e!713612 (and e!713611 mapRes!49714))))

(declare-fun condMapEmpty!49714 () Bool)

(declare-fun mapDefault!49714 () ValueCell!15213)

(assert (=> b!1255518 (= condMapEmpty!49714 (= (arr!39325 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15213)) mapDefault!49714)))))

(assert (= (and start!105428 res!837087) b!1255517))

(assert (= (and b!1255517 res!837085) b!1255516))

(assert (= (and b!1255516 res!837086) b!1255513))

(assert (= (and b!1255513 res!837088) b!1255512))

(assert (= (and b!1255512 (not res!837089)) b!1255515))

(assert (= (and b!1255518 condMapEmpty!49714) mapIsEmpty!49714))

(assert (= (and b!1255518 (not condMapEmpty!49714)) mapNonEmpty!49714))

(get-info :version)

(assert (= (and mapNonEmpty!49714 ((_ is ValueCellFull!15213) mapValue!49714)) b!1255511))

(assert (= (and b!1255518 ((_ is ValueCellFull!15213) mapDefault!49714)) b!1255514))

(assert (= start!105428 b!1255518))

(declare-fun m!1156263 () Bool)

(assert (=> mapNonEmpty!49714 m!1156263))

(declare-fun m!1156265 () Bool)

(assert (=> b!1255516 m!1156265))

(declare-fun m!1156267 () Bool)

(assert (=> b!1255515 m!1156267))

(assert (=> b!1255515 m!1156267))

(declare-fun m!1156269 () Bool)

(assert (=> b!1255515 m!1156269))

(declare-fun m!1156271 () Bool)

(assert (=> start!105428 m!1156271))

(declare-fun m!1156273 () Bool)

(assert (=> start!105428 m!1156273))

(declare-fun m!1156275 () Bool)

(assert (=> start!105428 m!1156275))

(declare-fun m!1156277 () Bool)

(assert (=> b!1255512 m!1156277))

(declare-fun m!1156279 () Bool)

(assert (=> b!1255512 m!1156279))

(declare-fun m!1156281 () Bool)

(assert (=> b!1255512 m!1156281))

(declare-fun m!1156283 () Bool)

(assert (=> b!1255513 m!1156283))

(check-sat (not b!1255515) (not b!1255512) (not b!1255516) b_and!44907 (not b!1255513) (not mapNonEmpty!49714) tp_is_empty!31953 (not start!105428) (not b_next!27051))
(check-sat b_and!44907 (not b_next!27051))
