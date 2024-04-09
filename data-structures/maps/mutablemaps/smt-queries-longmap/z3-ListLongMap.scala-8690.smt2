; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105598 () Bool)

(assert start!105598)

(declare-fun b_free!27177 () Bool)

(declare-fun b_next!27177 () Bool)

(assert (=> start!105598 (= b_free!27177 (not b_next!27177))))

(declare-fun tp!95051 () Bool)

(declare-fun b_and!45053 () Bool)

(assert (=> start!105598 (= tp!95051 b_and!45053)))

(declare-fun b!1257476 () Bool)

(declare-fun res!838294 () Bool)

(declare-fun e!715086 () Bool)

(assert (=> b!1257476 (=> (not res!838294) (not e!715086))))

(declare-datatypes ((array!81789 0))(
  ( (array!81790 (arr!39447 (Array (_ BitVec 32) (_ BitVec 64))) (size!39984 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81789)

(declare-datatypes ((List!28192 0))(
  ( (Nil!28189) (Cons!28188 (h!29397 (_ BitVec 64)) (t!41690 List!28192)) )
))
(declare-fun arrayNoDuplicates!0 (array!81789 (_ BitVec 32) List!28192) Bool)

(assert (=> b!1257476 (= res!838294 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28189))))

(declare-fun b!1257477 () Bool)

(declare-fun res!838292 () Bool)

(assert (=> b!1257477 (=> (not res!838292) (not e!715086))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81789 (_ BitVec 32)) Bool)

(assert (=> b!1257477 (= res!838292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1257479 () Bool)

(declare-fun e!715083 () Bool)

(declare-fun tp_is_empty!32079 () Bool)

(assert (=> b!1257479 (= e!715083 tp_is_empty!32079)))

(declare-fun mapIsEmpty!49909 () Bool)

(declare-fun mapRes!49909 () Bool)

(assert (=> mapIsEmpty!49909 mapRes!49909))

(declare-fun b!1257478 () Bool)

(declare-fun res!838291 () Bool)

(assert (=> b!1257478 (=> (not res!838291) (not e!715086))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!48137 0))(
  ( (V!48138 (val!16102 Int)) )
))
(declare-datatypes ((ValueCell!15276 0))(
  ( (ValueCellFull!15276 (v!18804 V!48137)) (EmptyCell!15276) )
))
(declare-datatypes ((array!81791 0))(
  ( (array!81792 (arr!39448 (Array (_ BitVec 32) ValueCell!15276)) (size!39985 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81791)

(assert (=> b!1257478 (= res!838291 (and (= (size!39985 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39984 _keys!1118) (size!39985 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!838293 () Bool)

(assert (=> start!105598 (=> (not res!838293) (not e!715086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105598 (= res!838293 (validMask!0 mask!1466))))

(assert (=> start!105598 e!715086))

(assert (=> start!105598 true))

(assert (=> start!105598 tp!95051))

(assert (=> start!105598 tp_is_empty!32079))

(declare-fun array_inv!29995 (array!81789) Bool)

(assert (=> start!105598 (array_inv!29995 _keys!1118)))

(declare-fun e!715082 () Bool)

(declare-fun array_inv!29996 (array!81791) Bool)

(assert (=> start!105598 (and (array_inv!29996 _values!914) e!715082)))

(declare-fun b!1257480 () Bool)

(declare-fun e!715084 () Bool)

(assert (=> b!1257480 (= e!715082 (and e!715084 mapRes!49909))))

(declare-fun condMapEmpty!49909 () Bool)

(declare-fun mapDefault!49909 () ValueCell!15276)

(assert (=> b!1257480 (= condMapEmpty!49909 (= (arr!39448 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15276)) mapDefault!49909)))))

(declare-fun b!1257481 () Bool)

(assert (=> b!1257481 (= e!715084 tp_is_empty!32079)))

(declare-fun b!1257482 () Bool)

(assert (=> b!1257482 (= e!715086 (not true))))

(declare-datatypes ((tuple2!20962 0))(
  ( (tuple2!20963 (_1!10491 (_ BitVec 64)) (_2!10491 V!48137)) )
))
(declare-datatypes ((List!28193 0))(
  ( (Nil!28190) (Cons!28189 (h!29398 tuple2!20962) (t!41691 List!28193)) )
))
(declare-datatypes ((ListLongMap!18847 0))(
  ( (ListLongMap!18848 (toList!9439 List!28193)) )
))
(declare-fun lt!568739 () ListLongMap!18847)

(declare-fun lt!568737 () ListLongMap!18847)

(assert (=> b!1257482 (= lt!568739 lt!568737)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48137)

(declare-fun zeroValue!871 () V!48137)

(declare-datatypes ((Unit!41852 0))(
  ( (Unit!41853) )
))
(declare-fun lt!568738 () Unit!41852)

(declare-fun minValueBefore!43 () V!48137)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1109 (array!81789 array!81791 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48137 V!48137 V!48137 V!48137 (_ BitVec 32) Int) Unit!41852)

(assert (=> b!1257482 (= lt!568738 (lemmaNoChangeToArrayThenSameMapNoExtras!1109 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5791 (array!81789 array!81791 (_ BitVec 32) (_ BitVec 32) V!48137 V!48137 (_ BitVec 32) Int) ListLongMap!18847)

(assert (=> b!1257482 (= lt!568737 (getCurrentListMapNoExtraKeys!5791 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257482 (= lt!568739 (getCurrentListMapNoExtraKeys!5791 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49909 () Bool)

(declare-fun tp!95052 () Bool)

(assert (=> mapNonEmpty!49909 (= mapRes!49909 (and tp!95052 e!715083))))

(declare-fun mapKey!49909 () (_ BitVec 32))

(declare-fun mapRest!49909 () (Array (_ BitVec 32) ValueCell!15276))

(declare-fun mapValue!49909 () ValueCell!15276)

(assert (=> mapNonEmpty!49909 (= (arr!39448 _values!914) (store mapRest!49909 mapKey!49909 mapValue!49909))))

(assert (= (and start!105598 res!838293) b!1257478))

(assert (= (and b!1257478 res!838291) b!1257477))

(assert (= (and b!1257477 res!838292) b!1257476))

(assert (= (and b!1257476 res!838294) b!1257482))

(assert (= (and b!1257480 condMapEmpty!49909) mapIsEmpty!49909))

(assert (= (and b!1257480 (not condMapEmpty!49909)) mapNonEmpty!49909))

(get-info :version)

(assert (= (and mapNonEmpty!49909 ((_ is ValueCellFull!15276) mapValue!49909)) b!1257479))

(assert (= (and b!1257480 ((_ is ValueCellFull!15276) mapDefault!49909)) b!1257481))

(assert (= start!105598 b!1257480))

(declare-fun m!1158089 () Bool)

(assert (=> start!105598 m!1158089))

(declare-fun m!1158091 () Bool)

(assert (=> start!105598 m!1158091))

(declare-fun m!1158093 () Bool)

(assert (=> start!105598 m!1158093))

(declare-fun m!1158095 () Bool)

(assert (=> b!1257476 m!1158095))

(declare-fun m!1158097 () Bool)

(assert (=> mapNonEmpty!49909 m!1158097))

(declare-fun m!1158099 () Bool)

(assert (=> b!1257482 m!1158099))

(declare-fun m!1158101 () Bool)

(assert (=> b!1257482 m!1158101))

(declare-fun m!1158103 () Bool)

(assert (=> b!1257482 m!1158103))

(declare-fun m!1158105 () Bool)

(assert (=> b!1257477 m!1158105))

(check-sat (not mapNonEmpty!49909) (not b_next!27177) (not b!1257476) b_and!45053 (not b!1257477) (not b!1257482) tp_is_empty!32079 (not start!105598))
(check-sat b_and!45053 (not b_next!27177))
