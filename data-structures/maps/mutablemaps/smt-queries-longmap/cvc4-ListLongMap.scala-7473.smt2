; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94802 () Bool)

(assert start!94802)

(declare-fun b_free!22019 () Bool)

(declare-fun b_next!22019 () Bool)

(assert (=> start!94802 (= b_free!22019 (not b_next!22019))))

(declare-fun tp!77516 () Bool)

(declare-fun b_and!34867 () Bool)

(assert (=> start!94802 (= tp!77516 b_and!34867)))

(declare-fun b!1071511 () Bool)

(declare-fun res!714881 () Bool)

(declare-fun e!611907 () Bool)

(assert (=> b!1071511 (=> (not res!714881) (not e!611907))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39573 0))(
  ( (V!39574 (val!12965 Int)) )
))
(declare-datatypes ((ValueCell!12211 0))(
  ( (ValueCellFull!12211 (v!15582 V!39573)) (EmptyCell!12211) )
))
(declare-datatypes ((array!68588 0))(
  ( (array!68589 (arr!32986 (Array (_ BitVec 32) ValueCell!12211)) (size!33523 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68588)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68590 0))(
  ( (array!68591 (arr!32987 (Array (_ BitVec 32) (_ BitVec 64))) (size!33524 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68590)

(assert (=> b!1071511 (= res!714881 (and (= (size!33523 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33524 _keys!1163) (size!33523 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1071512 () Bool)

(declare-fun e!611902 () Bool)

(assert (=> b!1071512 (= e!611907 (not e!611902))))

(declare-fun res!714884 () Bool)

(assert (=> b!1071512 (=> res!714884 e!611902)))

(assert (=> b!1071512 (= res!714884 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16564 0))(
  ( (tuple2!16565 (_1!8292 (_ BitVec 64)) (_2!8292 V!39573)) )
))
(declare-datatypes ((List!23147 0))(
  ( (Nil!23144) (Cons!23143 (h!24352 tuple2!16564) (t!32487 List!23147)) )
))
(declare-datatypes ((ListLongMap!14545 0))(
  ( (ListLongMap!14546 (toList!7288 List!23147)) )
))
(declare-fun lt!474242 () ListLongMap!14545)

(declare-fun lt!474240 () ListLongMap!14545)

(assert (=> b!1071512 (= lt!474242 lt!474240)))

(declare-fun zeroValueBefore!47 () V!39573)

(declare-datatypes ((Unit!35237 0))(
  ( (Unit!35238) )
))
(declare-fun lt!474236 () Unit!35237)

(declare-fun minValue!907 () V!39573)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39573)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!860 (array!68590 array!68588 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39573 V!39573 V!39573 V!39573 (_ BitVec 32) Int) Unit!35237)

(assert (=> b!1071512 (= lt!474236 (lemmaNoChangeToArrayThenSameMapNoExtras!860 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3821 (array!68590 array!68588 (_ BitVec 32) (_ BitVec 32) V!39573 V!39573 (_ BitVec 32) Int) ListLongMap!14545)

(assert (=> b!1071512 (= lt!474240 (getCurrentListMapNoExtraKeys!3821 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071512 (= lt!474242 (getCurrentListMapNoExtraKeys!3821 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071513 () Bool)

(declare-fun e!611908 () Bool)

(declare-fun tp_is_empty!25829 () Bool)

(assert (=> b!1071513 (= e!611908 tp_is_empty!25829)))

(declare-fun b!1071514 () Bool)

(declare-fun res!714880 () Bool)

(assert (=> b!1071514 (=> (not res!714880) (not e!611907))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68590 (_ BitVec 32)) Bool)

(assert (=> b!1071514 (= res!714880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40450 () Bool)

(declare-fun mapRes!40450 () Bool)

(declare-fun tp!77517 () Bool)

(assert (=> mapNonEmpty!40450 (= mapRes!40450 (and tp!77517 e!611908))))

(declare-fun mapValue!40450 () ValueCell!12211)

(declare-fun mapKey!40450 () (_ BitVec 32))

(declare-fun mapRest!40450 () (Array (_ BitVec 32) ValueCell!12211))

(assert (=> mapNonEmpty!40450 (= (arr!32986 _values!955) (store mapRest!40450 mapKey!40450 mapValue!40450))))

(declare-fun b!1071515 () Bool)

(assert (=> b!1071515 (= e!611902 true)))

(declare-fun lt!474235 () ListLongMap!14545)

(declare-fun lt!474238 () ListLongMap!14545)

(declare-fun -!680 (ListLongMap!14545 (_ BitVec 64)) ListLongMap!14545)

(assert (=> b!1071515 (= lt!474235 (-!680 lt!474238 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!474233 () ListLongMap!14545)

(declare-fun lt!474239 () ListLongMap!14545)

(assert (=> b!1071515 (= lt!474233 lt!474239)))

(declare-fun lt!474231 () Unit!35237)

(declare-fun addCommutativeForDiffKeys!724 (ListLongMap!14545 (_ BitVec 64) V!39573 (_ BitVec 64) V!39573) Unit!35237)

(assert (=> b!1071515 (= lt!474231 (addCommutativeForDiffKeys!724 lt!474242 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!474234 () ListLongMap!14545)

(assert (=> b!1071515 (= (-!680 lt!474239 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474234)))

(declare-fun lt!474232 () tuple2!16564)

(declare-fun +!3144 (ListLongMap!14545 tuple2!16564) ListLongMap!14545)

(assert (=> b!1071515 (= lt!474239 (+!3144 lt!474234 lt!474232))))

(declare-fun lt!474243 () Unit!35237)

(declare-fun addThenRemoveForNewKeyIsSame!54 (ListLongMap!14545 (_ BitVec 64) V!39573) Unit!35237)

(assert (=> b!1071515 (= lt!474243 (addThenRemoveForNewKeyIsSame!54 lt!474234 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!474237 () tuple2!16564)

(assert (=> b!1071515 (= lt!474234 (+!3144 lt!474242 lt!474237))))

(declare-fun e!611904 () Bool)

(assert (=> b!1071515 e!611904))

(declare-fun res!714885 () Bool)

(assert (=> b!1071515 (=> (not res!714885) (not e!611904))))

(assert (=> b!1071515 (= res!714885 (= lt!474238 lt!474233))))

(assert (=> b!1071515 (= lt!474233 (+!3144 (+!3144 lt!474242 lt!474232) lt!474237))))

(assert (=> b!1071515 (= lt!474237 (tuple2!16565 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071515 (= lt!474232 (tuple2!16565 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!474241 () ListLongMap!14545)

(declare-fun getCurrentListMap!4152 (array!68590 array!68588 (_ BitVec 32) (_ BitVec 32) V!39573 V!39573 (_ BitVec 32) Int) ListLongMap!14545)

(assert (=> b!1071515 (= lt!474241 (getCurrentListMap!4152 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071515 (= lt!474238 (getCurrentListMap!4152 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071516 () Bool)

(declare-fun e!611905 () Bool)

(declare-fun e!611906 () Bool)

(assert (=> b!1071516 (= e!611905 (and e!611906 mapRes!40450))))

(declare-fun condMapEmpty!40450 () Bool)

(declare-fun mapDefault!40450 () ValueCell!12211)

