; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105610 () Bool)

(assert start!105610)

(declare-fun b_free!27189 () Bool)

(declare-fun b_next!27189 () Bool)

(assert (=> start!105610 (= b_free!27189 (not b_next!27189))))

(declare-fun tp!95087 () Bool)

(declare-fun b_and!45065 () Bool)

(assert (=> start!105610 (= tp!95087 b_and!45065)))

(declare-fun b!1257602 () Bool)

(declare-fun e!715173 () Bool)

(declare-fun tp_is_empty!32091 () Bool)

(assert (=> b!1257602 (= e!715173 tp_is_empty!32091)))

(declare-fun res!838363 () Bool)

(declare-fun e!715175 () Bool)

(assert (=> start!105610 (=> (not res!838363) (not e!715175))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105610 (= res!838363 (validMask!0 mask!1466))))

(assert (=> start!105610 e!715175))

(assert (=> start!105610 true))

(assert (=> start!105610 tp!95087))

(assert (=> start!105610 tp_is_empty!32091))

(declare-datatypes ((array!81811 0))(
  ( (array!81812 (arr!39458 (Array (_ BitVec 32) (_ BitVec 64))) (size!39995 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81811)

(declare-fun array_inv!30005 (array!81811) Bool)

(assert (=> start!105610 (array_inv!30005 _keys!1118)))

(declare-datatypes ((V!48153 0))(
  ( (V!48154 (val!16108 Int)) )
))
(declare-datatypes ((ValueCell!15282 0))(
  ( (ValueCellFull!15282 (v!18810 V!48153)) (EmptyCell!15282) )
))
(declare-datatypes ((array!81813 0))(
  ( (array!81814 (arr!39459 (Array (_ BitVec 32) ValueCell!15282)) (size!39996 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81813)

(declare-fun e!715172 () Bool)

(declare-fun array_inv!30006 (array!81813) Bool)

(assert (=> start!105610 (and (array_inv!30006 _values!914) e!715172)))

(declare-fun b!1257603 () Bool)

(declare-fun res!838366 () Bool)

(assert (=> b!1257603 (=> (not res!838366) (not e!715175))))

(declare-datatypes ((List!28201 0))(
  ( (Nil!28198) (Cons!28197 (h!29406 (_ BitVec 64)) (t!41699 List!28201)) )
))
(declare-fun arrayNoDuplicates!0 (array!81811 (_ BitVec 32) List!28201) Bool)

(assert (=> b!1257603 (= res!838366 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28198))))

(declare-fun mapNonEmpty!49927 () Bool)

(declare-fun mapRes!49927 () Bool)

(declare-fun tp!95088 () Bool)

(declare-fun e!715174 () Bool)

(assert (=> mapNonEmpty!49927 (= mapRes!49927 (and tp!95088 e!715174))))

(declare-fun mapValue!49927 () ValueCell!15282)

(declare-fun mapKey!49927 () (_ BitVec 32))

(declare-fun mapRest!49927 () (Array (_ BitVec 32) ValueCell!15282))

(assert (=> mapNonEmpty!49927 (= (arr!39459 _values!914) (store mapRest!49927 mapKey!49927 mapValue!49927))))

(declare-fun b!1257604 () Bool)

(assert (=> b!1257604 (= e!715172 (and e!715173 mapRes!49927))))

(declare-fun condMapEmpty!49927 () Bool)

(declare-fun mapDefault!49927 () ValueCell!15282)

(assert (=> b!1257604 (= condMapEmpty!49927 (= (arr!39459 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15282)) mapDefault!49927)))))

(declare-fun b!1257605 () Bool)

(declare-fun res!838364 () Bool)

(assert (=> b!1257605 (=> (not res!838364) (not e!715175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81811 (_ BitVec 32)) Bool)

(assert (=> b!1257605 (= res!838364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49927 () Bool)

(assert (=> mapIsEmpty!49927 mapRes!49927))

(declare-fun b!1257606 () Bool)

(assert (=> b!1257606 (= e!715175 (not true))))

(declare-datatypes ((tuple2!20970 0))(
  ( (tuple2!20971 (_1!10495 (_ BitVec 64)) (_2!10495 V!48153)) )
))
(declare-datatypes ((List!28202 0))(
  ( (Nil!28199) (Cons!28198 (h!29407 tuple2!20970) (t!41700 List!28202)) )
))
(declare-datatypes ((ListLongMap!18855 0))(
  ( (ListLongMap!18856 (toList!9443 List!28202)) )
))
(declare-fun lt!568793 () ListLongMap!18855)

(declare-fun lt!568791 () ListLongMap!18855)

(assert (=> b!1257606 (= lt!568793 lt!568791)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48153)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48153)

(declare-datatypes ((Unit!41860 0))(
  ( (Unit!41861) )
))
(declare-fun lt!568792 () Unit!41860)

(declare-fun minValueBefore!43 () V!48153)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1113 (array!81811 array!81813 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48153 V!48153 V!48153 V!48153 (_ BitVec 32) Int) Unit!41860)

(assert (=> b!1257606 (= lt!568792 (lemmaNoChangeToArrayThenSameMapNoExtras!1113 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5795 (array!81811 array!81813 (_ BitVec 32) (_ BitVec 32) V!48153 V!48153 (_ BitVec 32) Int) ListLongMap!18855)

(assert (=> b!1257606 (= lt!568791 (getCurrentListMapNoExtraKeys!5795 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257606 (= lt!568793 (getCurrentListMapNoExtraKeys!5795 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1257607 () Bool)

(declare-fun res!838365 () Bool)

(assert (=> b!1257607 (=> (not res!838365) (not e!715175))))

(assert (=> b!1257607 (= res!838365 (and (= (size!39996 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39995 _keys!1118) (size!39996 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257608 () Bool)

(assert (=> b!1257608 (= e!715174 tp_is_empty!32091)))

(assert (= (and start!105610 res!838363) b!1257607))

(assert (= (and b!1257607 res!838365) b!1257605))

(assert (= (and b!1257605 res!838364) b!1257603))

(assert (= (and b!1257603 res!838366) b!1257606))

(assert (= (and b!1257604 condMapEmpty!49927) mapIsEmpty!49927))

(assert (= (and b!1257604 (not condMapEmpty!49927)) mapNonEmpty!49927))

(get-info :version)

(assert (= (and mapNonEmpty!49927 ((_ is ValueCellFull!15282) mapValue!49927)) b!1257608))

(assert (= (and b!1257604 ((_ is ValueCellFull!15282) mapDefault!49927)) b!1257602))

(assert (= start!105610 b!1257604))

(declare-fun m!1158197 () Bool)

(assert (=> b!1257603 m!1158197))

(declare-fun m!1158199 () Bool)

(assert (=> b!1257605 m!1158199))

(declare-fun m!1158201 () Bool)

(assert (=> b!1257606 m!1158201))

(declare-fun m!1158203 () Bool)

(assert (=> b!1257606 m!1158203))

(declare-fun m!1158205 () Bool)

(assert (=> b!1257606 m!1158205))

(declare-fun m!1158207 () Bool)

(assert (=> start!105610 m!1158207))

(declare-fun m!1158209 () Bool)

(assert (=> start!105610 m!1158209))

(declare-fun m!1158211 () Bool)

(assert (=> start!105610 m!1158211))

(declare-fun m!1158213 () Bool)

(assert (=> mapNonEmpty!49927 m!1158213))

(check-sat tp_is_empty!32091 (not b!1257605) (not start!105610) (not b!1257606) b_and!45065 (not b_next!27189) (not mapNonEmpty!49927) (not b!1257603))
(check-sat b_and!45065 (not b_next!27189))
