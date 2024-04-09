; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94756 () Bool)

(assert start!94756)

(declare-fun b_free!21973 () Bool)

(declare-fun b_next!21973 () Bool)

(assert (=> start!94756 (= b_free!21973 (not b_next!21973))))

(declare-fun tp!77379 () Bool)

(declare-fun b_and!34821 () Bool)

(assert (=> start!94756 (= tp!77379 b_and!34821)))

(declare-fun b!1070890 () Bool)

(declare-fun e!611420 () Bool)

(assert (=> b!1070890 (= e!611420 true)))

(declare-datatypes ((V!39513 0))(
  ( (V!39514 (val!12942 Int)) )
))
(declare-datatypes ((tuple2!16528 0))(
  ( (tuple2!16529 (_1!8274 (_ BitVec 64)) (_2!8274 V!39513)) )
))
(declare-datatypes ((List!23113 0))(
  ( (Nil!23110) (Cons!23109 (h!24318 tuple2!16528) (t!32453 List!23113)) )
))
(declare-datatypes ((ListLongMap!14509 0))(
  ( (ListLongMap!14510 (toList!7270 List!23113)) )
))
(declare-fun lt!473362 () ListLongMap!14509)

(declare-fun lt!473363 () tuple2!16528)

(declare-fun -!664 (ListLongMap!14509 (_ BitVec 64)) ListLongMap!14509)

(declare-fun +!3127 (ListLongMap!14509 tuple2!16528) ListLongMap!14509)

(assert (=> b!1070890 (= (-!664 (+!3127 lt!473362 lt!473363) #b0000000000000000000000000000000000000000000000000000000000000000) lt!473362)))

(declare-datatypes ((Unit!35203 0))(
  ( (Unit!35204) )
))
(declare-fun lt!473366 () Unit!35203)

(declare-fun zeroValueBefore!47 () V!39513)

(declare-fun addThenRemoveForNewKeyIsSame!38 (ListLongMap!14509 (_ BitVec 64) V!39513) Unit!35203)

(assert (=> b!1070890 (= lt!473366 (addThenRemoveForNewKeyIsSame!38 lt!473362 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!473365 () ListLongMap!14509)

(declare-fun lt!473369 () tuple2!16528)

(assert (=> b!1070890 (= lt!473362 (+!3127 lt!473365 lt!473369))))

(declare-fun e!611419 () Bool)

(assert (=> b!1070890 e!611419))

(declare-fun res!714471 () Bool)

(assert (=> b!1070890 (=> (not res!714471) (not e!611419))))

(declare-fun lt!473364 () ListLongMap!14509)

(assert (=> b!1070890 (= res!714471 (= lt!473364 (+!3127 (+!3127 lt!473365 lt!473363) lt!473369)))))

(declare-fun minValue!907 () V!39513)

(assert (=> b!1070890 (= lt!473369 (tuple2!16529 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1070890 (= lt!473363 (tuple2!16529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun lt!473368 () ListLongMap!14509)

(declare-datatypes ((ValueCell!12188 0))(
  ( (ValueCellFull!12188 (v!15559 V!39513)) (EmptyCell!12188) )
))
(declare-datatypes ((array!68500 0))(
  ( (array!68501 (arr!32942 (Array (_ BitVec 32) ValueCell!12188)) (size!33479 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68500)

(declare-datatypes ((array!68502 0))(
  ( (array!68503 (arr!32943 (Array (_ BitVec 32) (_ BitVec 64))) (size!33480 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68502)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39513)

(declare-fun getCurrentListMap!4136 (array!68502 array!68500 (_ BitVec 32) (_ BitVec 32) V!39513 V!39513 (_ BitVec 32) Int) ListLongMap!14509)

(assert (=> b!1070890 (= lt!473368 (getCurrentListMap!4136 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1070890 (= lt!473364 (getCurrentListMap!4136 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070891 () Bool)

(declare-fun res!714470 () Bool)

(declare-fun e!611423 () Bool)

(assert (=> b!1070891 (=> (not res!714470) (not e!611423))))

(declare-datatypes ((List!23114 0))(
  ( (Nil!23111) (Cons!23110 (h!24319 (_ BitVec 64)) (t!32454 List!23114)) )
))
(declare-fun arrayNoDuplicates!0 (array!68502 (_ BitVec 32) List!23114) Bool)

(assert (=> b!1070891 (= res!714470 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23111))))

(declare-fun mapIsEmpty!40381 () Bool)

(declare-fun mapRes!40381 () Bool)

(assert (=> mapIsEmpty!40381 mapRes!40381))

(declare-fun lt!473367 () ListLongMap!14509)

(declare-fun b!1070892 () Bool)

(assert (=> b!1070892 (= e!611419 (= lt!473368 (+!3127 lt!473367 lt!473369)))))

(declare-fun b!1070893 () Bool)

(assert (=> b!1070893 (= e!611423 (not e!611420))))

(declare-fun res!714468 () Bool)

(assert (=> b!1070893 (=> res!714468 e!611420)))

(assert (=> b!1070893 (= res!714468 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1070893 (= lt!473365 lt!473367)))

(declare-fun lt!473370 () Unit!35203)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!844 (array!68502 array!68500 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39513 V!39513 V!39513 V!39513 (_ BitVec 32) Int) Unit!35203)

(assert (=> b!1070893 (= lt!473370 (lemmaNoChangeToArrayThenSameMapNoExtras!844 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3805 (array!68502 array!68500 (_ BitVec 32) (_ BitVec 32) V!39513 V!39513 (_ BitVec 32) Int) ListLongMap!14509)

(assert (=> b!1070893 (= lt!473367 (getCurrentListMapNoExtraKeys!3805 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070893 (= lt!473365 (getCurrentListMapNoExtraKeys!3805 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070894 () Bool)

(declare-fun res!714467 () Bool)

(assert (=> b!1070894 (=> (not res!714467) (not e!611423))))

(assert (=> b!1070894 (= res!714467 (and (= (size!33479 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33480 _keys!1163) (size!33479 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1070895 () Bool)

(declare-fun e!611424 () Bool)

(declare-fun e!611422 () Bool)

(assert (=> b!1070895 (= e!611424 (and e!611422 mapRes!40381))))

(declare-fun condMapEmpty!40381 () Bool)

(declare-fun mapDefault!40381 () ValueCell!12188)

