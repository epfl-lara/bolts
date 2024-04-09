; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94388 () Bool)

(assert start!94388)

(declare-fun b_free!21693 () Bool)

(declare-fun b_next!21693 () Bool)

(assert (=> start!94388 (= b_free!21693 (not b_next!21693))))

(declare-fun tp!76523 () Bool)

(declare-fun b_and!34495 () Bool)

(assert (=> start!94388 (= tp!76523 b_and!34495)))

(declare-fun res!712111 () Bool)

(declare-fun e!608483 () Bool)

(assert (=> start!94388 (=> (not res!712111) (not e!608483))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94388 (= res!712111 (validMask!0 mask!1515))))

(assert (=> start!94388 e!608483))

(assert (=> start!94388 true))

(declare-fun tp_is_empty!25503 () Bool)

(assert (=> start!94388 tp_is_empty!25503))

(declare-datatypes ((V!39139 0))(
  ( (V!39140 (val!12802 Int)) )
))
(declare-datatypes ((ValueCell!12048 0))(
  ( (ValueCellFull!12048 (v!15417 V!39139)) (EmptyCell!12048) )
))
(declare-datatypes ((array!67966 0))(
  ( (array!67967 (arr!32680 (Array (_ BitVec 32) ValueCell!12048)) (size!33217 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67966)

(declare-fun e!608480 () Bool)

(declare-fun array_inv!25138 (array!67966) Bool)

(assert (=> start!94388 (and (array_inv!25138 _values!955) e!608480)))

(assert (=> start!94388 tp!76523))

(declare-datatypes ((array!67968 0))(
  ( (array!67969 (arr!32681 (Array (_ BitVec 32) (_ BitVec 64))) (size!33218 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67968)

(declare-fun array_inv!25139 (array!67968) Bool)

(assert (=> start!94388 (array_inv!25139 _keys!1163)))

(declare-fun b!1066882 () Bool)

(assert (=> b!1066882 (= e!608483 (not true))))

(declare-datatypes ((tuple2!16330 0))(
  ( (tuple2!16331 (_1!8175 (_ BitVec 64)) (_2!8175 V!39139)) )
))
(declare-datatypes ((List!22921 0))(
  ( (Nil!22918) (Cons!22917 (h!24126 tuple2!16330) (t!32251 List!22921)) )
))
(declare-datatypes ((ListLongMap!14311 0))(
  ( (ListLongMap!14312 (toList!7171 List!22921)) )
))
(declare-fun lt!471206 () ListLongMap!14311)

(declare-fun lt!471208 () ListLongMap!14311)

(assert (=> b!1066882 (= lt!471206 lt!471208)))

(declare-fun zeroValueBefore!47 () V!39139)

(declare-datatypes ((Unit!35008 0))(
  ( (Unit!35009) )
))
(declare-fun lt!471207 () Unit!35008)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39139)

(declare-fun minValue!907 () V!39139)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!755 (array!67968 array!67966 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39139 V!39139 V!39139 V!39139 (_ BitVec 32) Int) Unit!35008)

(assert (=> b!1066882 (= lt!471207 (lemmaNoChangeToArrayThenSameMapNoExtras!755 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3716 (array!67968 array!67966 (_ BitVec 32) (_ BitVec 32) V!39139 V!39139 (_ BitVec 32) Int) ListLongMap!14311)

(assert (=> b!1066882 (= lt!471208 (getCurrentListMapNoExtraKeys!3716 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066882 (= lt!471206 (getCurrentListMapNoExtraKeys!3716 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39946 () Bool)

(declare-fun mapRes!39946 () Bool)

(declare-fun tp!76524 () Bool)

(declare-fun e!608481 () Bool)

(assert (=> mapNonEmpty!39946 (= mapRes!39946 (and tp!76524 e!608481))))

(declare-fun mapValue!39946 () ValueCell!12048)

(declare-fun mapKey!39946 () (_ BitVec 32))

(declare-fun mapRest!39946 () (Array (_ BitVec 32) ValueCell!12048))

(assert (=> mapNonEmpty!39946 (= (arr!32680 _values!955) (store mapRest!39946 mapKey!39946 mapValue!39946))))

(declare-fun b!1066883 () Bool)

(declare-fun res!712108 () Bool)

(assert (=> b!1066883 (=> (not res!712108) (not e!608483))))

(declare-datatypes ((List!22922 0))(
  ( (Nil!22919) (Cons!22918 (h!24127 (_ BitVec 64)) (t!32252 List!22922)) )
))
(declare-fun arrayNoDuplicates!0 (array!67968 (_ BitVec 32) List!22922) Bool)

(assert (=> b!1066883 (= res!712108 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22919))))

(declare-fun b!1066884 () Bool)

(declare-fun res!712110 () Bool)

(assert (=> b!1066884 (=> (not res!712110) (not e!608483))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67968 (_ BitVec 32)) Bool)

(assert (=> b!1066884 (= res!712110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1066885 () Bool)

(declare-fun e!608479 () Bool)

(assert (=> b!1066885 (= e!608479 tp_is_empty!25503)))

(declare-fun b!1066886 () Bool)

(assert (=> b!1066886 (= e!608481 tp_is_empty!25503)))

(declare-fun b!1066887 () Bool)

(declare-fun res!712109 () Bool)

(assert (=> b!1066887 (=> (not res!712109) (not e!608483))))

(assert (=> b!1066887 (= res!712109 (and (= (size!33217 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33218 _keys!1163) (size!33217 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1066888 () Bool)

(assert (=> b!1066888 (= e!608480 (and e!608479 mapRes!39946))))

(declare-fun condMapEmpty!39946 () Bool)

(declare-fun mapDefault!39946 () ValueCell!12048)

(assert (=> b!1066888 (= condMapEmpty!39946 (= (arr!32680 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12048)) mapDefault!39946)))))

(declare-fun mapIsEmpty!39946 () Bool)

(assert (=> mapIsEmpty!39946 mapRes!39946))

(assert (= (and start!94388 res!712111) b!1066887))

(assert (= (and b!1066887 res!712109) b!1066884))

(assert (= (and b!1066884 res!712110) b!1066883))

(assert (= (and b!1066883 res!712108) b!1066882))

(assert (= (and b!1066888 condMapEmpty!39946) mapIsEmpty!39946))

(assert (= (and b!1066888 (not condMapEmpty!39946)) mapNonEmpty!39946))

(get-info :version)

(assert (= (and mapNonEmpty!39946 ((_ is ValueCellFull!12048) mapValue!39946)) b!1066886))

(assert (= (and b!1066888 ((_ is ValueCellFull!12048) mapDefault!39946)) b!1066885))

(assert (= start!94388 b!1066888))

(declare-fun m!985751 () Bool)

(assert (=> mapNonEmpty!39946 m!985751))

(declare-fun m!985753 () Bool)

(assert (=> b!1066882 m!985753))

(declare-fun m!985755 () Bool)

(assert (=> b!1066882 m!985755))

(declare-fun m!985757 () Bool)

(assert (=> b!1066882 m!985757))

(declare-fun m!985759 () Bool)

(assert (=> b!1066884 m!985759))

(declare-fun m!985761 () Bool)

(assert (=> start!94388 m!985761))

(declare-fun m!985763 () Bool)

(assert (=> start!94388 m!985763))

(declare-fun m!985765 () Bool)

(assert (=> start!94388 m!985765))

(declare-fun m!985767 () Bool)

(assert (=> b!1066883 m!985767))

(check-sat (not b_next!21693) (not b!1066883) (not b!1066884) (not b!1066882) b_and!34495 (not start!94388) tp_is_empty!25503 (not mapNonEmpty!39946))
(check-sat b_and!34495 (not b_next!21693))
