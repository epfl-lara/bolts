; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94310 () Bool)

(assert start!94310)

(declare-fun b_free!21637 () Bool)

(declare-fun b_next!21637 () Bool)

(assert (=> start!94310 (= b_free!21637 (not b_next!21637))))

(declare-fun tp!76352 () Bool)

(declare-fun b_and!34427 () Bool)

(assert (=> start!94310 (= tp!76352 b_and!34427)))

(declare-fun b!1066031 () Bool)

(declare-fun res!711614 () Bool)

(declare-fun e!607864 () Bool)

(assert (=> b!1066031 (=> (not res!711614) (not e!607864))))

(declare-datatypes ((array!67854 0))(
  ( (array!67855 (arr!32625 (Array (_ BitVec 32) (_ BitVec 64))) (size!33162 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67854)

(declare-datatypes ((List!22877 0))(
  ( (Nil!22874) (Cons!22873 (h!24082 (_ BitVec 64)) (t!32205 List!22877)) )
))
(declare-fun arrayNoDuplicates!0 (array!67854 (_ BitVec 32) List!22877) Bool)

(assert (=> b!1066031 (= res!711614 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22874))))

(declare-fun res!711615 () Bool)

(assert (=> start!94310 (=> (not res!711615) (not e!607864))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94310 (= res!711615 (validMask!0 mask!1515))))

(assert (=> start!94310 e!607864))

(assert (=> start!94310 true))

(declare-fun tp_is_empty!25447 () Bool)

(assert (=> start!94310 tp_is_empty!25447))

(declare-datatypes ((V!39065 0))(
  ( (V!39066 (val!12774 Int)) )
))
(declare-datatypes ((ValueCell!12020 0))(
  ( (ValueCellFull!12020 (v!15388 V!39065)) (EmptyCell!12020) )
))
(declare-datatypes ((array!67856 0))(
  ( (array!67857 (arr!32626 (Array (_ BitVec 32) ValueCell!12020)) (size!33163 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67856)

(declare-fun e!607861 () Bool)

(declare-fun array_inv!25100 (array!67856) Bool)

(assert (=> start!94310 (and (array_inv!25100 _values!955) e!607861)))

(assert (=> start!94310 tp!76352))

(declare-fun array_inv!25101 (array!67854) Bool)

(assert (=> start!94310 (array_inv!25101 _keys!1163)))

(declare-fun mapIsEmpty!39859 () Bool)

(declare-fun mapRes!39859 () Bool)

(assert (=> mapIsEmpty!39859 mapRes!39859))

(declare-fun mapNonEmpty!39859 () Bool)

(declare-fun tp!76353 () Bool)

(declare-fun e!607866 () Bool)

(assert (=> mapNonEmpty!39859 (= mapRes!39859 (and tp!76353 e!607866))))

(declare-fun mapValue!39859 () ValueCell!12020)

(declare-fun mapRest!39859 () (Array (_ BitVec 32) ValueCell!12020))

(declare-fun mapKey!39859 () (_ BitVec 32))

(assert (=> mapNonEmpty!39859 (= (arr!32626 _values!955) (store mapRest!39859 mapKey!39859 mapValue!39859))))

(declare-fun b!1066032 () Bool)

(declare-fun e!607862 () Bool)

(assert (=> b!1066032 (= e!607862 true)))

(declare-datatypes ((tuple2!16280 0))(
  ( (tuple2!16281 (_1!8150 (_ BitVec 64)) (_2!8150 V!39065)) )
))
(declare-datatypes ((List!22878 0))(
  ( (Nil!22875) (Cons!22874 (h!24083 tuple2!16280) (t!32206 List!22878)) )
))
(declare-datatypes ((ListLongMap!14261 0))(
  ( (ListLongMap!14262 (toList!7146 List!22878)) )
))
(declare-fun lt!470423 () ListLongMap!14261)

(declare-fun lt!470428 () ListLongMap!14261)

(declare-fun -!608 (ListLongMap!14261 (_ BitVec 64)) ListLongMap!14261)

(assert (=> b!1066032 (= lt!470423 (-!608 lt!470428 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470422 () ListLongMap!14261)

(declare-fun lt!470424 () ListLongMap!14261)

(assert (=> b!1066032 (= (-!608 lt!470422 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470424)))

(declare-datatypes ((Unit!34956 0))(
  ( (Unit!34957) )
))
(declare-fun lt!470421 () Unit!34956)

(declare-fun zeroValueBefore!47 () V!39065)

(declare-fun addThenRemoveForNewKeyIsSame!17 (ListLongMap!14261 (_ BitVec 64) V!39065) Unit!34956)

(assert (=> b!1066032 (= lt!470421 (addThenRemoveForNewKeyIsSame!17 lt!470424 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470425 () ListLongMap!14261)

(declare-fun lt!470427 () ListLongMap!14261)

(assert (=> b!1066032 (and (= lt!470428 lt!470422) (= lt!470425 lt!470427))))

(declare-fun +!3099 (ListLongMap!14261 tuple2!16280) ListLongMap!14261)

(assert (=> b!1066032 (= lt!470422 (+!3099 lt!470424 (tuple2!16281 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun minValue!907 () V!39065)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39065)

(declare-fun getCurrentListMap!4062 (array!67854 array!67856 (_ BitVec 32) (_ BitVec 32) V!39065 V!39065 (_ BitVec 32) Int) ListLongMap!14261)

(assert (=> b!1066032 (= lt!470425 (getCurrentListMap!4062 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066032 (= lt!470428 (getCurrentListMap!4062 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066033 () Bool)

(assert (=> b!1066033 (= e!607866 tp_is_empty!25447)))

(declare-fun b!1066034 () Bool)

(assert (=> b!1066034 (= e!607864 (not e!607862))))

(declare-fun res!711613 () Bool)

(assert (=> b!1066034 (=> res!711613 e!607862)))

(assert (=> b!1066034 (= res!711613 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1066034 (= lt!470424 lt!470427)))

(declare-fun lt!470426 () Unit!34956)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!733 (array!67854 array!67856 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39065 V!39065 V!39065 V!39065 (_ BitVec 32) Int) Unit!34956)

(assert (=> b!1066034 (= lt!470426 (lemmaNoChangeToArrayThenSameMapNoExtras!733 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3694 (array!67854 array!67856 (_ BitVec 32) (_ BitVec 32) V!39065 V!39065 (_ BitVec 32) Int) ListLongMap!14261)

(assert (=> b!1066034 (= lt!470427 (getCurrentListMapNoExtraKeys!3694 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066034 (= lt!470424 (getCurrentListMapNoExtraKeys!3694 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066035 () Bool)

(declare-fun res!711612 () Bool)

(assert (=> b!1066035 (=> (not res!711612) (not e!607864))))

(assert (=> b!1066035 (= res!711612 (and (= (size!33163 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33162 _keys!1163) (size!33163 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1066036 () Bool)

(declare-fun e!607863 () Bool)

(assert (=> b!1066036 (= e!607863 tp_is_empty!25447)))

(declare-fun b!1066037 () Bool)

(assert (=> b!1066037 (= e!607861 (and e!607863 mapRes!39859))))

(declare-fun condMapEmpty!39859 () Bool)

(declare-fun mapDefault!39859 () ValueCell!12020)

