; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94780 () Bool)

(assert start!94780)

(declare-fun b_free!21997 () Bool)

(declare-fun b_next!21997 () Bool)

(assert (=> start!94780 (= b_free!21997 (not b_next!21997))))

(declare-fun tp!77450 () Bool)

(declare-fun b_and!34845 () Bool)

(assert (=> start!94780 (= tp!77450 b_and!34845)))

(declare-fun b!1071214 () Bool)

(declare-fun e!611677 () Bool)

(declare-fun tp_is_empty!25807 () Bool)

(assert (=> b!1071214 (= e!611677 tp_is_empty!25807)))

(declare-fun b!1071215 () Bool)

(declare-fun res!714683 () Bool)

(declare-fun e!611673 () Bool)

(assert (=> b!1071215 (=> (not res!714683) (not e!611673))))

(declare-datatypes ((array!68548 0))(
  ( (array!68549 (arr!32966 (Array (_ BitVec 32) (_ BitVec 64))) (size!33503 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68548)

(declare-datatypes ((List!23130 0))(
  ( (Nil!23127) (Cons!23126 (h!24335 (_ BitVec 64)) (t!32470 List!23130)) )
))
(declare-fun arrayNoDuplicates!0 (array!68548 (_ BitVec 32) List!23130) Bool)

(assert (=> b!1071215 (= res!714683 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23127))))

(declare-datatypes ((V!39545 0))(
  ( (V!39546 (val!12954 Int)) )
))
(declare-datatypes ((tuple2!16546 0))(
  ( (tuple2!16547 (_1!8283 (_ BitVec 64)) (_2!8283 V!39545)) )
))
(declare-datatypes ((List!23131 0))(
  ( (Nil!23128) (Cons!23127 (h!24336 tuple2!16546) (t!32471 List!23131)) )
))
(declare-datatypes ((ListLongMap!14527 0))(
  ( (ListLongMap!14528 (toList!7279 List!23131)) )
))
(declare-fun lt!473814 () ListLongMap!14527)

(declare-fun lt!473810 () ListLongMap!14527)

(declare-fun lt!473807 () tuple2!16546)

(declare-fun b!1071216 () Bool)

(declare-fun e!611674 () Bool)

(declare-fun +!3136 (ListLongMap!14527 tuple2!16546) ListLongMap!14527)

(assert (=> b!1071216 (= e!611674 (= lt!473810 (+!3136 lt!473814 lt!473807)))))

(declare-fun mapNonEmpty!40417 () Bool)

(declare-fun mapRes!40417 () Bool)

(declare-fun tp!77451 () Bool)

(declare-fun e!611676 () Bool)

(assert (=> mapNonEmpty!40417 (= mapRes!40417 (and tp!77451 e!611676))))

(declare-datatypes ((ValueCell!12200 0))(
  ( (ValueCellFull!12200 (v!15571 V!39545)) (EmptyCell!12200) )
))
(declare-fun mapRest!40417 () (Array (_ BitVec 32) ValueCell!12200))

(declare-fun mapKey!40417 () (_ BitVec 32))

(declare-datatypes ((array!68550 0))(
  ( (array!68551 (arr!32967 (Array (_ BitVec 32) ValueCell!12200)) (size!33504 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68550)

(declare-fun mapValue!40417 () ValueCell!12200)

(assert (=> mapNonEmpty!40417 (= (arr!32967 _values!955) (store mapRest!40417 mapKey!40417 mapValue!40417))))

(declare-fun b!1071217 () Bool)

(declare-fun e!611672 () Bool)

(assert (=> b!1071217 (= e!611672 true)))

(declare-fun lt!473809 () ListLongMap!14527)

(declare-fun lt!473812 () ListLongMap!14527)

(declare-fun -!673 (ListLongMap!14527 (_ BitVec 64)) ListLongMap!14527)

(assert (=> b!1071217 (= lt!473809 (-!673 lt!473812 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!473811 () ListLongMap!14527)

(declare-fun lt!473806 () ListLongMap!14527)

(assert (=> b!1071217 (= lt!473811 lt!473806)))

(declare-fun zeroValueBefore!47 () V!39545)

(declare-fun lt!473813 () ListLongMap!14527)

(declare-fun minValue!907 () V!39545)

(declare-datatypes ((Unit!35221 0))(
  ( (Unit!35222) )
))
(declare-fun lt!473803 () Unit!35221)

(declare-fun addCommutativeForDiffKeys!717 (ListLongMap!14527 (_ BitVec 64) V!39545 (_ BitVec 64) V!39545) Unit!35221)

(assert (=> b!1071217 (= lt!473803 (addCommutativeForDiffKeys!717 lt!473813 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!473805 () ListLongMap!14527)

(assert (=> b!1071217 (= (-!673 lt!473806 #b0000000000000000000000000000000000000000000000000000000000000000) lt!473805)))

(declare-fun lt!473804 () tuple2!16546)

(assert (=> b!1071217 (= lt!473806 (+!3136 lt!473805 lt!473804))))

(declare-fun lt!473808 () Unit!35221)

(declare-fun addThenRemoveForNewKeyIsSame!47 (ListLongMap!14527 (_ BitVec 64) V!39545) Unit!35221)

(assert (=> b!1071217 (= lt!473808 (addThenRemoveForNewKeyIsSame!47 lt!473805 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1071217 (= lt!473805 (+!3136 lt!473813 lt!473807))))

(assert (=> b!1071217 e!611674))

(declare-fun res!714684 () Bool)

(assert (=> b!1071217 (=> (not res!714684) (not e!611674))))

(assert (=> b!1071217 (= res!714684 (= lt!473812 lt!473811))))

(assert (=> b!1071217 (= lt!473811 (+!3136 (+!3136 lt!473813 lt!473804) lt!473807))))

(assert (=> b!1071217 (= lt!473807 (tuple2!16547 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071217 (= lt!473804 (tuple2!16547 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39545)

(declare-fun getCurrentListMap!4145 (array!68548 array!68550 (_ BitVec 32) (_ BitVec 32) V!39545 V!39545 (_ BitVec 32) Int) ListLongMap!14527)

(assert (=> b!1071217 (= lt!473810 (getCurrentListMap!4145 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1071217 (= lt!473812 (getCurrentListMap!4145 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40417 () Bool)

(assert (=> mapIsEmpty!40417 mapRes!40417))

(declare-fun b!1071218 () Bool)

(declare-fun res!714682 () Bool)

(assert (=> b!1071218 (=> (not res!714682) (not e!611673))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68548 (_ BitVec 32)) Bool)

(assert (=> b!1071218 (= res!714682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1071219 () Bool)

(assert (=> b!1071219 (= e!611676 tp_is_empty!25807)))

(declare-fun b!1071220 () Bool)

(declare-fun res!714685 () Bool)

(assert (=> b!1071220 (=> (not res!714685) (not e!611673))))

(assert (=> b!1071220 (= res!714685 (and (= (size!33504 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33503 _keys!1163) (size!33504 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1071221 () Bool)

(assert (=> b!1071221 (= e!611673 (not e!611672))))

(declare-fun res!714686 () Bool)

(assert (=> b!1071221 (=> res!714686 e!611672)))

(assert (=> b!1071221 (= res!714686 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1071221 (= lt!473813 lt!473814)))

(declare-fun lt!473802 () Unit!35221)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!853 (array!68548 array!68550 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39545 V!39545 V!39545 V!39545 (_ BitVec 32) Int) Unit!35221)

(assert (=> b!1071221 (= lt!473802 (lemmaNoChangeToArrayThenSameMapNoExtras!853 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3814 (array!68548 array!68550 (_ BitVec 32) (_ BitVec 32) V!39545 V!39545 (_ BitVec 32) Int) ListLongMap!14527)

(assert (=> b!1071221 (= lt!473814 (getCurrentListMapNoExtraKeys!3814 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071221 (= lt!473813 (getCurrentListMapNoExtraKeys!3814 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!714687 () Bool)

(assert (=> start!94780 (=> (not res!714687) (not e!611673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94780 (= res!714687 (validMask!0 mask!1515))))

(assert (=> start!94780 e!611673))

(assert (=> start!94780 true))

(assert (=> start!94780 tp_is_empty!25807))

(declare-fun e!611671 () Bool)

(declare-fun array_inv!25346 (array!68550) Bool)

(assert (=> start!94780 (and (array_inv!25346 _values!955) e!611671)))

(assert (=> start!94780 tp!77450))

(declare-fun array_inv!25347 (array!68548) Bool)

(assert (=> start!94780 (array_inv!25347 _keys!1163)))

(declare-fun b!1071222 () Bool)

(assert (=> b!1071222 (= e!611671 (and e!611677 mapRes!40417))))

(declare-fun condMapEmpty!40417 () Bool)

(declare-fun mapDefault!40417 () ValueCell!12200)

