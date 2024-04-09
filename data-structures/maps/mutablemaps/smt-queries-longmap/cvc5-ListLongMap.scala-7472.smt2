; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94792 () Bool)

(assert start!94792)

(declare-fun b_free!22009 () Bool)

(declare-fun b_next!22009 () Bool)

(assert (=> start!94792 (= b_free!22009 (not b_next!22009))))

(declare-fun tp!77487 () Bool)

(declare-fun b_and!34857 () Bool)

(assert (=> start!94792 (= tp!77487 b_and!34857)))

(declare-fun mapIsEmpty!40435 () Bool)

(declare-fun mapRes!40435 () Bool)

(assert (=> mapIsEmpty!40435 mapRes!40435))

(declare-fun b!1071376 () Bool)

(declare-fun e!611803 () Bool)

(declare-fun tp_is_empty!25819 () Bool)

(assert (=> b!1071376 (= e!611803 tp_is_empty!25819)))

(declare-fun b!1071377 () Bool)

(declare-fun e!611799 () Bool)

(assert (=> b!1071377 (= e!611799 true)))

(declare-datatypes ((V!39561 0))(
  ( (V!39562 (val!12960 Int)) )
))
(declare-datatypes ((tuple2!16554 0))(
  ( (tuple2!16555 (_1!8287 (_ BitVec 64)) (_2!8287 V!39561)) )
))
(declare-datatypes ((List!23137 0))(
  ( (Nil!23134) (Cons!23133 (h!24342 tuple2!16554) (t!32477 List!23137)) )
))
(declare-datatypes ((ListLongMap!14535 0))(
  ( (ListLongMap!14536 (toList!7283 List!23137)) )
))
(declare-fun lt!474041 () ListLongMap!14535)

(declare-fun lt!474045 () ListLongMap!14535)

(declare-fun -!676 (ListLongMap!14535 (_ BitVec 64)) ListLongMap!14535)

(assert (=> b!1071377 (= lt!474041 (-!676 lt!474045 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!474043 () ListLongMap!14535)

(declare-fun lt!474039 () ListLongMap!14535)

(assert (=> b!1071377 (= lt!474043 lt!474039)))

(declare-fun zeroValueBefore!47 () V!39561)

(declare-fun lt!474044 () ListLongMap!14535)

(declare-datatypes ((Unit!35229 0))(
  ( (Unit!35230) )
))
(declare-fun lt!474038 () Unit!35229)

(declare-fun minValue!907 () V!39561)

(declare-fun addCommutativeForDiffKeys!720 (ListLongMap!14535 (_ BitVec 64) V!39561 (_ BitVec 64) V!39561) Unit!35229)

(assert (=> b!1071377 (= lt!474038 (addCommutativeForDiffKeys!720 lt!474044 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!474046 () ListLongMap!14535)

(assert (=> b!1071377 (= (-!676 lt!474039 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474046)))

(declare-fun lt!474042 () tuple2!16554)

(declare-fun +!3139 (ListLongMap!14535 tuple2!16554) ListLongMap!14535)

(assert (=> b!1071377 (= lt!474039 (+!3139 lt!474046 lt!474042))))

(declare-fun lt!474048 () Unit!35229)

(declare-fun addThenRemoveForNewKeyIsSame!50 (ListLongMap!14535 (_ BitVec 64) V!39561) Unit!35229)

(assert (=> b!1071377 (= lt!474048 (addThenRemoveForNewKeyIsSame!50 lt!474046 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!474036 () tuple2!16554)

(assert (=> b!1071377 (= lt!474046 (+!3139 lt!474044 lt!474036))))

(declare-fun e!611798 () Bool)

(assert (=> b!1071377 e!611798))

(declare-fun res!714793 () Bool)

(assert (=> b!1071377 (=> (not res!714793) (not e!611798))))

(assert (=> b!1071377 (= res!714793 (= lt!474045 lt!474043))))

(assert (=> b!1071377 (= lt!474043 (+!3139 (+!3139 lt!474044 lt!474042) lt!474036))))

(assert (=> b!1071377 (= lt!474036 (tuple2!16555 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071377 (= lt!474042 (tuple2!16555 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12206 0))(
  ( (ValueCellFull!12206 (v!15577 V!39561)) (EmptyCell!12206) )
))
(declare-datatypes ((array!68568 0))(
  ( (array!68569 (arr!32976 (Array (_ BitVec 32) ValueCell!12206)) (size!33513 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68568)

(declare-fun lt!474040 () ListLongMap!14535)

(declare-datatypes ((array!68570 0))(
  ( (array!68571 (arr!32977 (Array (_ BitVec 32) (_ BitVec 64))) (size!33514 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68570)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39561)

(declare-fun getCurrentListMap!4148 (array!68570 array!68568 (_ BitVec 32) (_ BitVec 32) V!39561 V!39561 (_ BitVec 32) Int) ListLongMap!14535)

(assert (=> b!1071377 (= lt!474040 (getCurrentListMap!4148 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1071377 (= lt!474045 (getCurrentListMap!4148 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071378 () Bool)

(declare-fun lt!474037 () ListLongMap!14535)

(assert (=> b!1071378 (= e!611798 (= lt!474040 (+!3139 lt!474037 lt!474036)))))

(declare-fun b!1071379 () Bool)

(declare-fun res!714795 () Bool)

(declare-fun e!611802 () Bool)

(assert (=> b!1071379 (=> (not res!714795) (not e!611802))))

(declare-datatypes ((List!23138 0))(
  ( (Nil!23135) (Cons!23134 (h!24343 (_ BitVec 64)) (t!32478 List!23138)) )
))
(declare-fun arrayNoDuplicates!0 (array!68570 (_ BitVec 32) List!23138) Bool)

(assert (=> b!1071379 (= res!714795 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23135))))

(declare-fun res!714790 () Bool)

(assert (=> start!94792 (=> (not res!714790) (not e!611802))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94792 (= res!714790 (validMask!0 mask!1515))))

(assert (=> start!94792 e!611802))

(assert (=> start!94792 true))

(assert (=> start!94792 tp_is_empty!25819))

(declare-fun e!611801 () Bool)

(declare-fun array_inv!25352 (array!68568) Bool)

(assert (=> start!94792 (and (array_inv!25352 _values!955) e!611801)))

(assert (=> start!94792 tp!77487))

(declare-fun array_inv!25353 (array!68570) Bool)

(assert (=> start!94792 (array_inv!25353 _keys!1163)))

(declare-fun b!1071380 () Bool)

(declare-fun res!714792 () Bool)

(assert (=> b!1071380 (=> (not res!714792) (not e!611802))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68570 (_ BitVec 32)) Bool)

(assert (=> b!1071380 (= res!714792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40435 () Bool)

(declare-fun tp!77486 () Bool)

(assert (=> mapNonEmpty!40435 (= mapRes!40435 (and tp!77486 e!611803))))

(declare-fun mapKey!40435 () (_ BitVec 32))

(declare-fun mapValue!40435 () ValueCell!12206)

(declare-fun mapRest!40435 () (Array (_ BitVec 32) ValueCell!12206))

(assert (=> mapNonEmpty!40435 (= (arr!32976 _values!955) (store mapRest!40435 mapKey!40435 mapValue!40435))))

(declare-fun b!1071381 () Bool)

(declare-fun res!714791 () Bool)

(assert (=> b!1071381 (=> (not res!714791) (not e!611802))))

(assert (=> b!1071381 (= res!714791 (and (= (size!33513 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33514 _keys!1163) (size!33513 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1071382 () Bool)

(declare-fun e!611797 () Bool)

(assert (=> b!1071382 (= e!611801 (and e!611797 mapRes!40435))))

(declare-fun condMapEmpty!40435 () Bool)

(declare-fun mapDefault!40435 () ValueCell!12206)

