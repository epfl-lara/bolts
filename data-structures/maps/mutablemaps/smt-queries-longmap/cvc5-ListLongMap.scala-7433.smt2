; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94484 () Bool)

(assert start!94484)

(declare-fun b_free!21775 () Bool)

(declare-fun b_next!21775 () Bool)

(assert (=> start!94484 (= b_free!21775 (not b_next!21775))))

(declare-fun tp!76773 () Bool)

(declare-fun b_and!34585 () Bool)

(assert (=> start!94484 (= tp!76773 b_and!34585)))

(declare-fun mapIsEmpty!40072 () Bool)

(declare-fun mapRes!40072 () Bool)

(assert (=> mapIsEmpty!40072 mapRes!40072))

(declare-fun res!712717 () Bool)

(declare-fun e!609240 () Bool)

(assert (=> start!94484 (=> (not res!712717) (not e!609240))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94484 (= res!712717 (validMask!0 mask!1515))))

(assert (=> start!94484 e!609240))

(assert (=> start!94484 true))

(declare-fun tp_is_empty!25585 () Bool)

(assert (=> start!94484 tp_is_empty!25585))

(declare-datatypes ((V!39249 0))(
  ( (V!39250 (val!12843 Int)) )
))
(declare-datatypes ((ValueCell!12089 0))(
  ( (ValueCellFull!12089 (v!15458 V!39249)) (EmptyCell!12089) )
))
(declare-datatypes ((array!68124 0))(
  ( (array!68125 (arr!32758 (Array (_ BitVec 32) ValueCell!12089)) (size!33295 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68124)

(declare-fun e!609239 () Bool)

(declare-fun array_inv!25196 (array!68124) Bool)

(assert (=> start!94484 (and (array_inv!25196 _values!955) e!609239)))

(assert (=> start!94484 tp!76773))

(declare-datatypes ((array!68126 0))(
  ( (array!68127 (arr!32759 (Array (_ BitVec 32) (_ BitVec 64))) (size!33296 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68126)

(declare-fun array_inv!25197 (array!68126) Bool)

(assert (=> start!94484 (array_inv!25197 _keys!1163)))

(declare-fun b!1067913 () Bool)

(declare-fun e!609238 () Bool)

(assert (=> b!1067913 (= e!609240 (not e!609238))))

(declare-fun res!712719 () Bool)

(assert (=> b!1067913 (=> res!712719 e!609238)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1067913 (= res!712719 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16382 0))(
  ( (tuple2!16383 (_1!8201 (_ BitVec 64)) (_2!8201 V!39249)) )
))
(declare-datatypes ((List!22973 0))(
  ( (Nil!22970) (Cons!22969 (h!24178 tuple2!16382) (t!32305 List!22973)) )
))
(declare-datatypes ((ListLongMap!14363 0))(
  ( (ListLongMap!14364 (toList!7197 List!22973)) )
))
(declare-fun lt!471701 () ListLongMap!14363)

(declare-fun lt!471702 () ListLongMap!14363)

(assert (=> b!1067913 (= lt!471701 lt!471702)))

(declare-fun zeroValueBefore!47 () V!39249)

(declare-datatypes ((Unit!35060 0))(
  ( (Unit!35061) )
))
(declare-fun lt!471704 () Unit!35060)

(declare-fun minValue!907 () V!39249)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39249)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!781 (array!68126 array!68124 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39249 V!39249 V!39249 V!39249 (_ BitVec 32) Int) Unit!35060)

(assert (=> b!1067913 (= lt!471704 (lemmaNoChangeToArrayThenSameMapNoExtras!781 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3742 (array!68126 array!68124 (_ BitVec 32) (_ BitVec 32) V!39249 V!39249 (_ BitVec 32) Int) ListLongMap!14363)

(assert (=> b!1067913 (= lt!471702 (getCurrentListMapNoExtraKeys!3742 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067913 (= lt!471701 (getCurrentListMapNoExtraKeys!3742 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067914 () Bool)

(declare-fun e!609235 () Bool)

(assert (=> b!1067914 (= e!609235 true)))

(declare-fun lt!471703 () ListLongMap!14363)

(declare-fun -!638 (ListLongMap!14363 (_ BitVec 64)) ListLongMap!14363)

(assert (=> b!1067914 (= (-!638 lt!471703 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471703)))

(declare-fun lt!471700 () Unit!35060)

(declare-fun removeNotPresentStillSame!47 (ListLongMap!14363 (_ BitVec 64)) Unit!35060)

(assert (=> b!1067914 (= lt!471700 (removeNotPresentStillSame!47 lt!471703 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1067915 () Bool)

(declare-fun e!609236 () Bool)

(assert (=> b!1067915 (= e!609236 tp_is_empty!25585)))

(declare-fun b!1067916 () Bool)

(declare-fun res!712718 () Bool)

(assert (=> b!1067916 (=> (not res!712718) (not e!609240))))

(assert (=> b!1067916 (= res!712718 (and (= (size!33295 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33296 _keys!1163) (size!33295 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067917 () Bool)

(declare-fun res!712721 () Bool)

(assert (=> b!1067917 (=> (not res!712721) (not e!609240))))

(declare-datatypes ((List!22974 0))(
  ( (Nil!22971) (Cons!22970 (h!24179 (_ BitVec 64)) (t!32306 List!22974)) )
))
(declare-fun arrayNoDuplicates!0 (array!68126 (_ BitVec 32) List!22974) Bool)

(assert (=> b!1067917 (= res!712721 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22971))))

(declare-fun b!1067918 () Bool)

(declare-fun res!712716 () Bool)

(assert (=> b!1067918 (=> (not res!712716) (not e!609240))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68126 (_ BitVec 32)) Bool)

(assert (=> b!1067918 (= res!712716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40072 () Bool)

(declare-fun tp!76772 () Bool)

(declare-fun e!609234 () Bool)

(assert (=> mapNonEmpty!40072 (= mapRes!40072 (and tp!76772 e!609234))))

(declare-fun mapKey!40072 () (_ BitVec 32))

(declare-fun mapRest!40072 () (Array (_ BitVec 32) ValueCell!12089))

(declare-fun mapValue!40072 () ValueCell!12089)

(assert (=> mapNonEmpty!40072 (= (arr!32758 _values!955) (store mapRest!40072 mapKey!40072 mapValue!40072))))

(declare-fun b!1067919 () Bool)

(assert (=> b!1067919 (= e!609234 tp_is_empty!25585)))

(declare-fun b!1067920 () Bool)

(assert (=> b!1067920 (= e!609239 (and e!609236 mapRes!40072))))

(declare-fun condMapEmpty!40072 () Bool)

(declare-fun mapDefault!40072 () ValueCell!12089)

