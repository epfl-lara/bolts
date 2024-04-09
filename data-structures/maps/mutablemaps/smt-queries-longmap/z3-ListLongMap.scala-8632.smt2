; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105132 () Bool)

(assert start!105132)

(declare-fun b_free!26829 () Bool)

(declare-fun b_next!26829 () Bool)

(assert (=> start!105132 (= b_free!26829 (not b_next!26829))))

(declare-fun tp!93989 () Bool)

(declare-fun b_and!44643 () Bool)

(assert (=> start!105132 (= tp!93989 b_and!44643)))

(declare-fun res!835240 () Bool)

(declare-fun e!711300 () Bool)

(assert (=> start!105132 (=> (not res!835240) (not e!711300))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105132 (= res!835240 (validMask!0 mask!1466))))

(assert (=> start!105132 e!711300))

(assert (=> start!105132 true))

(assert (=> start!105132 tp!93989))

(declare-fun tp_is_empty!31731 () Bool)

(assert (=> start!105132 tp_is_empty!31731))

(declare-datatypes ((array!81105 0))(
  ( (array!81106 (arr!39111 (Array (_ BitVec 32) (_ BitVec 64))) (size!39648 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81105)

(declare-fun array_inv!29761 (array!81105) Bool)

(assert (=> start!105132 (array_inv!29761 _keys!1118)))

(declare-datatypes ((V!47673 0))(
  ( (V!47674 (val!15928 Int)) )
))
(declare-datatypes ((ValueCell!15102 0))(
  ( (ValueCellFull!15102 (v!18626 V!47673)) (EmptyCell!15102) )
))
(declare-datatypes ((array!81107 0))(
  ( (array!81108 (arr!39112 (Array (_ BitVec 32) ValueCell!15102)) (size!39649 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81107)

(declare-fun e!711299 () Bool)

(declare-fun array_inv!29762 (array!81107) Bool)

(assert (=> start!105132 (and (array_inv!29762 _values!914) e!711299)))

(declare-fun b!1252318 () Bool)

(declare-fun e!711297 () Bool)

(assert (=> b!1252318 (= e!711297 tp_is_empty!31731)))

(declare-fun b!1252319 () Bool)

(declare-fun res!835241 () Bool)

(assert (=> b!1252319 (=> (not res!835241) (not e!711300))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81105 (_ BitVec 32)) Bool)

(assert (=> b!1252319 (= res!835241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252320 () Bool)

(declare-fun mapRes!49369 () Bool)

(assert (=> b!1252320 (= e!711299 (and e!711297 mapRes!49369))))

(declare-fun condMapEmpty!49369 () Bool)

(declare-fun mapDefault!49369 () ValueCell!15102)

(assert (=> b!1252320 (= condMapEmpty!49369 (= (arr!39112 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15102)) mapDefault!49369)))))

(declare-fun b!1252321 () Bool)

(declare-fun res!835242 () Bool)

(assert (=> b!1252321 (=> (not res!835242) (not e!711300))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1252321 (= res!835242 (and (= (size!39649 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39648 _keys!1118) (size!39649 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252322 () Bool)

(declare-fun e!711301 () Bool)

(assert (=> b!1252322 (= e!711300 (not e!711301))))

(declare-fun res!835239 () Bool)

(assert (=> b!1252322 (=> res!835239 e!711301)))

(assert (=> b!1252322 (= res!835239 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20686 0))(
  ( (tuple2!20687 (_1!10353 (_ BitVec 64)) (_2!10353 V!47673)) )
))
(declare-datatypes ((List!27936 0))(
  ( (Nil!27933) (Cons!27932 (h!29141 tuple2!20686) (t!41422 List!27936)) )
))
(declare-datatypes ((ListLongMap!18571 0))(
  ( (ListLongMap!18572 (toList!9301 List!27936)) )
))
(declare-fun lt!565255 () ListLongMap!18571)

(declare-fun lt!565257 () ListLongMap!18571)

(assert (=> b!1252322 (= lt!565255 lt!565257)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47673)

(declare-datatypes ((Unit!41579 0))(
  ( (Unit!41580) )
))
(declare-fun lt!565258 () Unit!41579)

(declare-fun zeroValue!871 () V!47673)

(declare-fun minValueBefore!43 () V!47673)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!992 (array!81105 array!81107 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47673 V!47673 V!47673 V!47673 (_ BitVec 32) Int) Unit!41579)

(assert (=> b!1252322 (= lt!565258 (lemmaNoChangeToArrayThenSameMapNoExtras!992 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5674 (array!81105 array!81107 (_ BitVec 32) (_ BitVec 32) V!47673 V!47673 (_ BitVec 32) Int) ListLongMap!18571)

(assert (=> b!1252322 (= lt!565257 (getCurrentListMapNoExtraKeys!5674 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252322 (= lt!565255 (getCurrentListMapNoExtraKeys!5674 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252323 () Bool)

(declare-fun e!711296 () Bool)

(assert (=> b!1252323 (= e!711296 tp_is_empty!31731)))

(declare-fun mapNonEmpty!49369 () Bool)

(declare-fun tp!93990 () Bool)

(assert (=> mapNonEmpty!49369 (= mapRes!49369 (and tp!93990 e!711296))))

(declare-fun mapRest!49369 () (Array (_ BitVec 32) ValueCell!15102))

(declare-fun mapValue!49369 () ValueCell!15102)

(declare-fun mapKey!49369 () (_ BitVec 32))

(assert (=> mapNonEmpty!49369 (= (arr!39112 _values!914) (store mapRest!49369 mapKey!49369 mapValue!49369))))

(declare-fun b!1252324 () Bool)

(declare-fun res!835243 () Bool)

(assert (=> b!1252324 (=> (not res!835243) (not e!711300))))

(declare-datatypes ((List!27937 0))(
  ( (Nil!27934) (Cons!27933 (h!29142 (_ BitVec 64)) (t!41423 List!27937)) )
))
(declare-fun arrayNoDuplicates!0 (array!81105 (_ BitVec 32) List!27937) Bool)

(assert (=> b!1252324 (= res!835243 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27934))))

(declare-fun mapIsEmpty!49369 () Bool)

(assert (=> mapIsEmpty!49369 mapRes!49369))

(declare-fun b!1252325 () Bool)

(assert (=> b!1252325 (= e!711301 true)))

(declare-fun lt!565256 () ListLongMap!18571)

(declare-fun getCurrentListMap!4498 (array!81105 array!81107 (_ BitVec 32) (_ BitVec 32) V!47673 V!47673 (_ BitVec 32) Int) ListLongMap!18571)

(assert (=> b!1252325 (= lt!565256 (getCurrentListMap!4498 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105132 res!835240) b!1252321))

(assert (= (and b!1252321 res!835242) b!1252319))

(assert (= (and b!1252319 res!835241) b!1252324))

(assert (= (and b!1252324 res!835243) b!1252322))

(assert (= (and b!1252322 (not res!835239)) b!1252325))

(assert (= (and b!1252320 condMapEmpty!49369) mapIsEmpty!49369))

(assert (= (and b!1252320 (not condMapEmpty!49369)) mapNonEmpty!49369))

(get-info :version)

(assert (= (and mapNonEmpty!49369 ((_ is ValueCellFull!15102) mapValue!49369)) b!1252323))

(assert (= (and b!1252320 ((_ is ValueCellFull!15102) mapDefault!49369)) b!1252318))

(assert (= start!105132 b!1252320))

(declare-fun m!1152991 () Bool)

(assert (=> b!1252324 m!1152991))

(declare-fun m!1152993 () Bool)

(assert (=> mapNonEmpty!49369 m!1152993))

(declare-fun m!1152995 () Bool)

(assert (=> b!1252319 m!1152995))

(declare-fun m!1152997 () Bool)

(assert (=> b!1252322 m!1152997))

(declare-fun m!1152999 () Bool)

(assert (=> b!1252322 m!1152999))

(declare-fun m!1153001 () Bool)

(assert (=> b!1252322 m!1153001))

(declare-fun m!1153003 () Bool)

(assert (=> start!105132 m!1153003))

(declare-fun m!1153005 () Bool)

(assert (=> start!105132 m!1153005))

(declare-fun m!1153007 () Bool)

(assert (=> start!105132 m!1153007))

(declare-fun m!1153009 () Bool)

(assert (=> b!1252325 m!1153009))

(check-sat (not b!1252319) (not b_next!26829) (not b!1252325) (not start!105132) b_and!44643 tp_is_empty!31731 (not b!1252322) (not b!1252324) (not mapNonEmpty!49369))
(check-sat b_and!44643 (not b_next!26829))
