; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94316 () Bool)

(assert start!94316)

(declare-fun b_free!21643 () Bool)

(declare-fun b_next!21643 () Bool)

(assert (=> start!94316 (= b_free!21643 (not b_next!21643))))

(declare-fun tp!76371 () Bool)

(declare-fun b_and!34433 () Bool)

(assert (=> start!94316 (= tp!76371 b_and!34433)))

(declare-fun b!1066103 () Bool)

(declare-fun res!711656 () Bool)

(declare-fun e!607920 () Bool)

(assert (=> b!1066103 (=> (not res!711656) (not e!607920))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39073 0))(
  ( (V!39074 (val!12777 Int)) )
))
(declare-datatypes ((ValueCell!12023 0))(
  ( (ValueCellFull!12023 (v!15391 V!39073)) (EmptyCell!12023) )
))
(declare-datatypes ((array!67866 0))(
  ( (array!67867 (arr!32631 (Array (_ BitVec 32) ValueCell!12023)) (size!33168 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67866)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67868 0))(
  ( (array!67869 (arr!32632 (Array (_ BitVec 32) (_ BitVec 64))) (size!33169 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67868)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1066103 (= res!711656 (and (= (size!33168 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33169 _keys!1163) (size!33168 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39868 () Bool)

(declare-fun mapRes!39868 () Bool)

(declare-fun tp!76370 () Bool)

(declare-fun e!607918 () Bool)

(assert (=> mapNonEmpty!39868 (= mapRes!39868 (and tp!76370 e!607918))))

(declare-fun mapRest!39868 () (Array (_ BitVec 32) ValueCell!12023))

(declare-fun mapValue!39868 () ValueCell!12023)

(declare-fun mapKey!39868 () (_ BitVec 32))

(assert (=> mapNonEmpty!39868 (= (arr!32631 _values!955) (store mapRest!39868 mapKey!39868 mapValue!39868))))

(declare-fun b!1066104 () Bool)

(declare-fun tp_is_empty!25453 () Bool)

(assert (=> b!1066104 (= e!607918 tp_is_empty!25453)))

(declare-fun mapIsEmpty!39868 () Bool)

(assert (=> mapIsEmpty!39868 mapRes!39868))

(declare-fun res!711657 () Bool)

(assert (=> start!94316 (=> (not res!711657) (not e!607920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94316 (= res!711657 (validMask!0 mask!1515))))

(assert (=> start!94316 e!607920))

(assert (=> start!94316 true))

(assert (=> start!94316 tp_is_empty!25453))

(declare-fun e!607916 () Bool)

(declare-fun array_inv!25104 (array!67866) Bool)

(assert (=> start!94316 (and (array_inv!25104 _values!955) e!607916)))

(assert (=> start!94316 tp!76371))

(declare-fun array_inv!25105 (array!67868) Bool)

(assert (=> start!94316 (array_inv!25105 _keys!1163)))

(declare-fun b!1066105 () Bool)

(declare-fun res!711659 () Bool)

(assert (=> b!1066105 (=> (not res!711659) (not e!607920))))

(declare-datatypes ((List!22882 0))(
  ( (Nil!22879) (Cons!22878 (h!24087 (_ BitVec 64)) (t!32210 List!22882)) )
))
(declare-fun arrayNoDuplicates!0 (array!67868 (_ BitVec 32) List!22882) Bool)

(assert (=> b!1066105 (= res!711659 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22879))))

(declare-fun b!1066106 () Bool)

(declare-fun res!711658 () Bool)

(assert (=> b!1066106 (=> (not res!711658) (not e!607920))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67868 (_ BitVec 32)) Bool)

(assert (=> b!1066106 (= res!711658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1066107 () Bool)

(declare-fun e!607917 () Bool)

(assert (=> b!1066107 (= e!607917 true)))

(declare-datatypes ((tuple2!16286 0))(
  ( (tuple2!16287 (_1!8153 (_ BitVec 64)) (_2!8153 V!39073)) )
))
(declare-datatypes ((List!22883 0))(
  ( (Nil!22880) (Cons!22879 (h!24088 tuple2!16286) (t!32211 List!22883)) )
))
(declare-datatypes ((ListLongMap!14267 0))(
  ( (ListLongMap!14268 (toList!7149 List!22883)) )
))
(declare-fun lt!470493 () ListLongMap!14267)

(declare-fun lt!470499 () ListLongMap!14267)

(declare-fun -!611 (ListLongMap!14267 (_ BitVec 64)) ListLongMap!14267)

(assert (=> b!1066107 (= lt!470493 (-!611 lt!470499 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470495 () ListLongMap!14267)

(declare-fun lt!470498 () ListLongMap!14267)

(assert (=> b!1066107 (= (-!611 lt!470495 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470498)))

(declare-datatypes ((Unit!34962 0))(
  ( (Unit!34963) )
))
(declare-fun lt!470494 () Unit!34962)

(declare-fun zeroValueBefore!47 () V!39073)

(declare-fun addThenRemoveForNewKeyIsSame!20 (ListLongMap!14267 (_ BitVec 64) V!39073) Unit!34962)

(assert (=> b!1066107 (= lt!470494 (addThenRemoveForNewKeyIsSame!20 lt!470498 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470500 () ListLongMap!14267)

(declare-fun lt!470496 () ListLongMap!14267)

(assert (=> b!1066107 (and (= lt!470499 lt!470495) (= lt!470496 lt!470500))))

(declare-fun +!3102 (ListLongMap!14267 tuple2!16286) ListLongMap!14267)

(assert (=> b!1066107 (= lt!470495 (+!3102 lt!470498 (tuple2!16287 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun minValue!907 () V!39073)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39073)

(declare-fun getCurrentListMap!4065 (array!67868 array!67866 (_ BitVec 32) (_ BitVec 32) V!39073 V!39073 (_ BitVec 32) Int) ListLongMap!14267)

(assert (=> b!1066107 (= lt!470496 (getCurrentListMap!4065 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066107 (= lt!470499 (getCurrentListMap!4065 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066108 () Bool)

(declare-fun e!607919 () Bool)

(assert (=> b!1066108 (= e!607919 tp_is_empty!25453)))

(declare-fun b!1066109 () Bool)

(assert (=> b!1066109 (= e!607920 (not e!607917))))

(declare-fun res!711660 () Bool)

(assert (=> b!1066109 (=> res!711660 e!607917)))

(assert (=> b!1066109 (= res!711660 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1066109 (= lt!470498 lt!470500)))

(declare-fun lt!470497 () Unit!34962)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!736 (array!67868 array!67866 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39073 V!39073 V!39073 V!39073 (_ BitVec 32) Int) Unit!34962)

(assert (=> b!1066109 (= lt!470497 (lemmaNoChangeToArrayThenSameMapNoExtras!736 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3697 (array!67868 array!67866 (_ BitVec 32) (_ BitVec 32) V!39073 V!39073 (_ BitVec 32) Int) ListLongMap!14267)

(assert (=> b!1066109 (= lt!470500 (getCurrentListMapNoExtraKeys!3697 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066109 (= lt!470498 (getCurrentListMapNoExtraKeys!3697 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066110 () Bool)

(assert (=> b!1066110 (= e!607916 (and e!607919 mapRes!39868))))

(declare-fun condMapEmpty!39868 () Bool)

(declare-fun mapDefault!39868 () ValueCell!12023)

