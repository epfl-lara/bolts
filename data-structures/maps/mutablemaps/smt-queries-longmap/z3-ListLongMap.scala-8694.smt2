; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105622 () Bool)

(assert start!105622)

(declare-fun b_free!27201 () Bool)

(declare-fun b_next!27201 () Bool)

(assert (=> start!105622 (= b_free!27201 (not b_next!27201))))

(declare-fun tp!95124 () Bool)

(declare-fun b_and!45077 () Bool)

(assert (=> start!105622 (= tp!95124 b_and!45077)))

(declare-fun b!1257728 () Bool)

(declare-fun e!715263 () Bool)

(assert (=> b!1257728 (= e!715263 (not true))))

(declare-datatypes ((V!48169 0))(
  ( (V!48170 (val!16114 Int)) )
))
(declare-datatypes ((tuple2!20978 0))(
  ( (tuple2!20979 (_1!10499 (_ BitVec 64)) (_2!10499 V!48169)) )
))
(declare-datatypes ((List!28210 0))(
  ( (Nil!28207) (Cons!28206 (h!29415 tuple2!20978) (t!41708 List!28210)) )
))
(declare-datatypes ((ListLongMap!18863 0))(
  ( (ListLongMap!18864 (toList!9447 List!28210)) )
))
(declare-fun lt!568846 () ListLongMap!18863)

(declare-fun lt!568847 () ListLongMap!18863)

(assert (=> b!1257728 (= lt!568846 lt!568847)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48169)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48169)

(declare-datatypes ((array!81833 0))(
  ( (array!81834 (arr!39469 (Array (_ BitVec 32) (_ BitVec 64))) (size!40006 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81833)

(declare-datatypes ((ValueCell!15288 0))(
  ( (ValueCellFull!15288 (v!18816 V!48169)) (EmptyCell!15288) )
))
(declare-datatypes ((array!81835 0))(
  ( (array!81836 (arr!39470 (Array (_ BitVec 32) ValueCell!15288)) (size!40007 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81835)

(declare-fun minValueBefore!43 () V!48169)

(declare-datatypes ((Unit!41868 0))(
  ( (Unit!41869) )
))
(declare-fun lt!568845 () Unit!41868)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1117 (array!81833 array!81835 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48169 V!48169 V!48169 V!48169 (_ BitVec 32) Int) Unit!41868)

(assert (=> b!1257728 (= lt!568845 (lemmaNoChangeToArrayThenSameMapNoExtras!1117 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5799 (array!81833 array!81835 (_ BitVec 32) (_ BitVec 32) V!48169 V!48169 (_ BitVec 32) Int) ListLongMap!18863)

(assert (=> b!1257728 (= lt!568847 (getCurrentListMapNoExtraKeys!5799 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257728 (= lt!568846 (getCurrentListMapNoExtraKeys!5799 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49945 () Bool)

(declare-fun mapRes!49945 () Bool)

(declare-fun tp!95123 () Bool)

(declare-fun e!715264 () Bool)

(assert (=> mapNonEmpty!49945 (= mapRes!49945 (and tp!95123 e!715264))))

(declare-fun mapRest!49945 () (Array (_ BitVec 32) ValueCell!15288))

(declare-fun mapValue!49945 () ValueCell!15288)

(declare-fun mapKey!49945 () (_ BitVec 32))

(assert (=> mapNonEmpty!49945 (= (arr!39470 _values!914) (store mapRest!49945 mapKey!49945 mapValue!49945))))

(declare-fun b!1257729 () Bool)

(declare-fun e!715266 () Bool)

(declare-fun tp_is_empty!32103 () Bool)

(assert (=> b!1257729 (= e!715266 tp_is_empty!32103)))

(declare-fun b!1257730 () Bool)

(assert (=> b!1257730 (= e!715264 tp_is_empty!32103)))

(declare-fun res!838436 () Bool)

(assert (=> start!105622 (=> (not res!838436) (not e!715263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105622 (= res!838436 (validMask!0 mask!1466))))

(assert (=> start!105622 e!715263))

(assert (=> start!105622 true))

(assert (=> start!105622 tp!95124))

(assert (=> start!105622 tp_is_empty!32103))

(declare-fun array_inv!30013 (array!81833) Bool)

(assert (=> start!105622 (array_inv!30013 _keys!1118)))

(declare-fun e!715262 () Bool)

(declare-fun array_inv!30014 (array!81835) Bool)

(assert (=> start!105622 (and (array_inv!30014 _values!914) e!715262)))

(declare-fun b!1257731 () Bool)

(declare-fun res!838435 () Bool)

(assert (=> b!1257731 (=> (not res!838435) (not e!715263))))

(assert (=> b!1257731 (= res!838435 (and (= (size!40007 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40006 _keys!1118) (size!40007 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257732 () Bool)

(declare-fun res!838438 () Bool)

(assert (=> b!1257732 (=> (not res!838438) (not e!715263))))

(declare-datatypes ((List!28211 0))(
  ( (Nil!28208) (Cons!28207 (h!29416 (_ BitVec 64)) (t!41709 List!28211)) )
))
(declare-fun arrayNoDuplicates!0 (array!81833 (_ BitVec 32) List!28211) Bool)

(assert (=> b!1257732 (= res!838438 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28208))))

(declare-fun b!1257733 () Bool)

(assert (=> b!1257733 (= e!715262 (and e!715266 mapRes!49945))))

(declare-fun condMapEmpty!49945 () Bool)

(declare-fun mapDefault!49945 () ValueCell!15288)

(assert (=> b!1257733 (= condMapEmpty!49945 (= (arr!39470 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15288)) mapDefault!49945)))))

(declare-fun b!1257734 () Bool)

(declare-fun res!838437 () Bool)

(assert (=> b!1257734 (=> (not res!838437) (not e!715263))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81833 (_ BitVec 32)) Bool)

(assert (=> b!1257734 (= res!838437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49945 () Bool)

(assert (=> mapIsEmpty!49945 mapRes!49945))

(assert (= (and start!105622 res!838436) b!1257731))

(assert (= (and b!1257731 res!838435) b!1257734))

(assert (= (and b!1257734 res!838437) b!1257732))

(assert (= (and b!1257732 res!838438) b!1257728))

(assert (= (and b!1257733 condMapEmpty!49945) mapIsEmpty!49945))

(assert (= (and b!1257733 (not condMapEmpty!49945)) mapNonEmpty!49945))

(get-info :version)

(assert (= (and mapNonEmpty!49945 ((_ is ValueCellFull!15288) mapValue!49945)) b!1257730))

(assert (= (and b!1257733 ((_ is ValueCellFull!15288) mapDefault!49945)) b!1257729))

(assert (= start!105622 b!1257733))

(declare-fun m!1158305 () Bool)

(assert (=> b!1257734 m!1158305))

(declare-fun m!1158307 () Bool)

(assert (=> b!1257728 m!1158307))

(declare-fun m!1158309 () Bool)

(assert (=> b!1257728 m!1158309))

(declare-fun m!1158311 () Bool)

(assert (=> b!1257728 m!1158311))

(declare-fun m!1158313 () Bool)

(assert (=> start!105622 m!1158313))

(declare-fun m!1158315 () Bool)

(assert (=> start!105622 m!1158315))

(declare-fun m!1158317 () Bool)

(assert (=> start!105622 m!1158317))

(declare-fun m!1158319 () Bool)

(assert (=> b!1257732 m!1158319))

(declare-fun m!1158321 () Bool)

(assert (=> mapNonEmpty!49945 m!1158321))

(check-sat (not b!1257728) (not mapNonEmpty!49945) (not b!1257732) (not b_next!27201) (not start!105622) tp_is_empty!32103 (not b!1257734) b_and!45077)
(check-sat b_and!45077 (not b_next!27201))
