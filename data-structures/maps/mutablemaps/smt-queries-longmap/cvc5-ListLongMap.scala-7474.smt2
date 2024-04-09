; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94804 () Bool)

(assert start!94804)

(declare-fun b_free!22021 () Bool)

(declare-fun b_next!22021 () Bool)

(assert (=> start!94804 (= b_free!22021 (not b_next!22021))))

(declare-fun tp!77523 () Bool)

(declare-fun b_and!34869 () Bool)

(assert (=> start!94804 (= tp!77523 b_and!34869)))

(declare-fun b!1071538 () Bool)

(declare-fun res!714899 () Bool)

(declare-fun e!611926 () Bool)

(assert (=> b!1071538 (=> (not res!714899) (not e!611926))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39577 0))(
  ( (V!39578 (val!12966 Int)) )
))
(declare-datatypes ((ValueCell!12212 0))(
  ( (ValueCellFull!12212 (v!15583 V!39577)) (EmptyCell!12212) )
))
(declare-datatypes ((array!68592 0))(
  ( (array!68593 (arr!32988 (Array (_ BitVec 32) ValueCell!12212)) (size!33525 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68592)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68594 0))(
  ( (array!68595 (arr!32989 (Array (_ BitVec 32) (_ BitVec 64))) (size!33526 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68594)

(assert (=> b!1071538 (= res!714899 (and (= (size!33525 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33526 _keys!1163) (size!33525 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!40453 () Bool)

(declare-fun mapRes!40453 () Bool)

(declare-fun tp!77522 () Bool)

(declare-fun e!611929 () Bool)

(assert (=> mapNonEmpty!40453 (= mapRes!40453 (and tp!77522 e!611929))))

(declare-fun mapValue!40453 () ValueCell!12212)

(declare-fun mapKey!40453 () (_ BitVec 32))

(declare-fun mapRest!40453 () (Array (_ BitVec 32) ValueCell!12212))

(assert (=> mapNonEmpty!40453 (= (arr!32988 _values!955) (store mapRest!40453 mapKey!40453 mapValue!40453))))

(declare-datatypes ((tuple2!16566 0))(
  ( (tuple2!16567 (_1!8293 (_ BitVec 64)) (_2!8293 V!39577)) )
))
(declare-datatypes ((List!23148 0))(
  ( (Nil!23145) (Cons!23144 (h!24353 tuple2!16566) (t!32488 List!23148)) )
))
(declare-datatypes ((ListLongMap!14547 0))(
  ( (ListLongMap!14548 (toList!7289 List!23148)) )
))
(declare-fun lt!474281 () ListLongMap!14547)

(declare-fun lt!474276 () tuple2!16566)

(declare-fun e!611923 () Bool)

(declare-fun lt!474279 () ListLongMap!14547)

(declare-fun b!1071539 () Bool)

(declare-fun +!3145 (ListLongMap!14547 tuple2!16566) ListLongMap!14547)

(assert (=> b!1071539 (= e!611923 (= lt!474281 (+!3145 lt!474279 lt!474276)))))

(declare-fun b!1071540 () Bool)

(declare-fun e!611927 () Bool)

(assert (=> b!1071540 (= e!611926 (not e!611927))))

(declare-fun res!714901 () Bool)

(assert (=> b!1071540 (=> res!714901 e!611927)))

(assert (=> b!1071540 (= res!714901 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!474275 () ListLongMap!14547)

(assert (=> b!1071540 (= lt!474275 lt!474279)))

(declare-fun zeroValueBefore!47 () V!39577)

(declare-fun minValue!907 () V!39577)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39577)

(declare-datatypes ((Unit!35239 0))(
  ( (Unit!35240) )
))
(declare-fun lt!474280 () Unit!35239)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!861 (array!68594 array!68592 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39577 V!39577 V!39577 V!39577 (_ BitVec 32) Int) Unit!35239)

(assert (=> b!1071540 (= lt!474280 (lemmaNoChangeToArrayThenSameMapNoExtras!861 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3822 (array!68594 array!68592 (_ BitVec 32) (_ BitVec 32) V!39577 V!39577 (_ BitVec 32) Int) ListLongMap!14547)

(assert (=> b!1071540 (= lt!474279 (getCurrentListMapNoExtraKeys!3822 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071540 (= lt!474275 (getCurrentListMapNoExtraKeys!3822 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40453 () Bool)

(assert (=> mapIsEmpty!40453 mapRes!40453))

(declare-fun res!714900 () Bool)

(assert (=> start!94804 (=> (not res!714900) (not e!611926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94804 (= res!714900 (validMask!0 mask!1515))))

(assert (=> start!94804 e!611926))

(assert (=> start!94804 true))

(declare-fun tp_is_empty!25831 () Bool)

(assert (=> start!94804 tp_is_empty!25831))

(declare-fun e!611925 () Bool)

(declare-fun array_inv!25362 (array!68592) Bool)

(assert (=> start!94804 (and (array_inv!25362 _values!955) e!611925)))

(assert (=> start!94804 tp!77523))

(declare-fun array_inv!25363 (array!68594) Bool)

(assert (=> start!94804 (array_inv!25363 _keys!1163)))

(declare-fun b!1071541 () Bool)

(assert (=> b!1071541 (= e!611927 true)))

(declare-fun lt!474282 () ListLongMap!14547)

(declare-fun lt!474270 () ListLongMap!14547)

(declare-fun -!681 (ListLongMap!14547 (_ BitVec 64)) ListLongMap!14547)

(assert (=> b!1071541 (= lt!474282 (-!681 lt!474270 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!474278 () ListLongMap!14547)

(declare-fun lt!474277 () ListLongMap!14547)

(assert (=> b!1071541 (= lt!474278 lt!474277)))

(declare-fun lt!474273 () Unit!35239)

(declare-fun addCommutativeForDiffKeys!725 (ListLongMap!14547 (_ BitVec 64) V!39577 (_ BitVec 64) V!39577) Unit!35239)

(assert (=> b!1071541 (= lt!474273 (addCommutativeForDiffKeys!725 lt!474275 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!474274 () ListLongMap!14547)

(assert (=> b!1071541 (= (-!681 lt!474277 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474274)))

(declare-fun lt!474272 () tuple2!16566)

(assert (=> b!1071541 (= lt!474277 (+!3145 lt!474274 lt!474272))))

(declare-fun lt!474271 () Unit!35239)

(declare-fun addThenRemoveForNewKeyIsSame!55 (ListLongMap!14547 (_ BitVec 64) V!39577) Unit!35239)

(assert (=> b!1071541 (= lt!474271 (addThenRemoveForNewKeyIsSame!55 lt!474274 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1071541 (= lt!474274 (+!3145 lt!474275 lt!474276))))

(assert (=> b!1071541 e!611923))

(declare-fun res!714902 () Bool)

(assert (=> b!1071541 (=> (not res!714902) (not e!611923))))

(assert (=> b!1071541 (= res!714902 (= lt!474270 lt!474278))))

(assert (=> b!1071541 (= lt!474278 (+!3145 (+!3145 lt!474275 lt!474272) lt!474276))))

(assert (=> b!1071541 (= lt!474276 (tuple2!16567 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071541 (= lt!474272 (tuple2!16567 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun getCurrentListMap!4153 (array!68594 array!68592 (_ BitVec 32) (_ BitVec 32) V!39577 V!39577 (_ BitVec 32) Int) ListLongMap!14547)

(assert (=> b!1071541 (= lt!474281 (getCurrentListMap!4153 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071541 (= lt!474270 (getCurrentListMap!4153 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071542 () Bool)

(declare-fun res!714898 () Bool)

(assert (=> b!1071542 (=> (not res!714898) (not e!611926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68594 (_ BitVec 32)) Bool)

(assert (=> b!1071542 (= res!714898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1071543 () Bool)

(declare-fun res!714903 () Bool)

(assert (=> b!1071543 (=> (not res!714903) (not e!611926))))

(declare-datatypes ((List!23149 0))(
  ( (Nil!23146) (Cons!23145 (h!24354 (_ BitVec 64)) (t!32489 List!23149)) )
))
(declare-fun arrayNoDuplicates!0 (array!68594 (_ BitVec 32) List!23149) Bool)

(assert (=> b!1071543 (= res!714903 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23146))))

(declare-fun b!1071544 () Bool)

(declare-fun e!611924 () Bool)

(assert (=> b!1071544 (= e!611925 (and e!611924 mapRes!40453))))

(declare-fun condMapEmpty!40453 () Bool)

(declare-fun mapDefault!40453 () ValueCell!12212)

