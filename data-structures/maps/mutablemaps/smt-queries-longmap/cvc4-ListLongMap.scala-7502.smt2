; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95132 () Bool)

(assert start!95132)

(declare-fun b_free!22193 () Bool)

(declare-fun b_next!22193 () Bool)

(assert (=> start!95132 (= b_free!22193 (not b_next!22193))))

(declare-fun tp!78062 () Bool)

(declare-fun b_and!35131 () Bool)

(assert (=> start!95132 (= tp!78062 b_and!35131)))

(declare-fun b!1074965 () Bool)

(declare-fun e!614351 () Bool)

(declare-fun tp_is_empty!26003 () Bool)

(assert (=> b!1074965 (= e!614351 tp_is_empty!26003)))

(declare-fun b!1074966 () Bool)

(declare-fun e!614346 () Bool)

(declare-fun e!614347 () Bool)

(assert (=> b!1074966 (= e!614346 (not e!614347))))

(declare-fun res!716780 () Bool)

(assert (=> b!1074966 (=> res!716780 e!614347)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1074966 (= res!716780 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39805 0))(
  ( (V!39806 (val!13052 Int)) )
))
(declare-datatypes ((tuple2!16694 0))(
  ( (tuple2!16695 (_1!8357 (_ BitVec 64)) (_2!8357 V!39805)) )
))
(declare-datatypes ((List!23268 0))(
  ( (Nil!23265) (Cons!23264 (h!24473 tuple2!16694) (t!32624 List!23268)) )
))
(declare-datatypes ((ListLongMap!14675 0))(
  ( (ListLongMap!14676 (toList!7353 List!23268)) )
))
(declare-fun lt!477051 () ListLongMap!14675)

(declare-fun lt!477053 () ListLongMap!14675)

(assert (=> b!1074966 (= lt!477051 lt!477053)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39805)

(declare-datatypes ((ValueCell!12298 0))(
  ( (ValueCellFull!12298 (v!15676 V!39805)) (EmptyCell!12298) )
))
(declare-datatypes ((array!68938 0))(
  ( (array!68939 (arr!33153 (Array (_ BitVec 32) ValueCell!12298)) (size!33690 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68938)

(declare-fun minValue!907 () V!39805)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39805)

(declare-datatypes ((array!68940 0))(
  ( (array!68941 (arr!33154 (Array (_ BitVec 32) (_ BitVec 64))) (size!33691 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68940)

(declare-datatypes ((Unit!35337 0))(
  ( (Unit!35338) )
))
(declare-fun lt!477049 () Unit!35337)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!899 (array!68940 array!68938 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39805 V!39805 V!39805 V!39805 (_ BitVec 32) Int) Unit!35337)

(assert (=> b!1074966 (= lt!477049 (lemmaNoChangeToArrayThenSameMapNoExtras!899 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3880 (array!68940 array!68938 (_ BitVec 32) (_ BitVec 32) V!39805 V!39805 (_ BitVec 32) Int) ListLongMap!14675)

(assert (=> b!1074966 (= lt!477053 (getCurrentListMapNoExtraKeys!3880 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1074966 (= lt!477051 (getCurrentListMapNoExtraKeys!3880 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074967 () Bool)

(declare-fun lt!477048 () ListLongMap!14675)

(declare-fun lt!477054 () ListLongMap!14675)

(declare-fun -!708 (ListLongMap!14675 (_ BitVec 64)) ListLongMap!14675)

(assert (=> b!1074967 (= e!614347 (= (-!708 lt!477048 #b0000000000000000000000000000000000000000000000000000000000000000) lt!477054))))

(declare-fun lt!477050 () ListLongMap!14675)

(assert (=> b!1074967 (= (-!708 lt!477050 #b0000000000000000000000000000000000000000000000000000000000000000) lt!477051)))

(declare-fun lt!477052 () Unit!35337)

(declare-fun addThenRemoveForNewKeyIsSame!81 (ListLongMap!14675 (_ BitVec 64) V!39805) Unit!35337)

(assert (=> b!1074967 (= lt!477052 (addThenRemoveForNewKeyIsSame!81 lt!477051 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1074967 (and (= lt!477048 lt!477050) (= lt!477054 lt!477053))))

(declare-fun +!3181 (ListLongMap!14675 tuple2!16694) ListLongMap!14675)

(assert (=> b!1074967 (= lt!477050 (+!3181 lt!477051 (tuple2!16695 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun getCurrentListMap!4191 (array!68940 array!68938 (_ BitVec 32) (_ BitVec 32) V!39805 V!39805 (_ BitVec 32) Int) ListLongMap!14675)

(assert (=> b!1074967 (= lt!477054 (getCurrentListMap!4191 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1074967 (= lt!477048 (getCurrentListMap!4191 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074968 () Bool)

(declare-fun res!716777 () Bool)

(assert (=> b!1074968 (=> (not res!716777) (not e!614346))))

(declare-datatypes ((List!23269 0))(
  ( (Nil!23266) (Cons!23265 (h!24474 (_ BitVec 64)) (t!32625 List!23269)) )
))
(declare-fun arrayNoDuplicates!0 (array!68940 (_ BitVec 32) List!23269) Bool)

(assert (=> b!1074968 (= res!716777 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23266))))

(declare-fun b!1074969 () Bool)

(declare-fun e!614349 () Bool)

(declare-fun e!614348 () Bool)

(declare-fun mapRes!40735 () Bool)

(assert (=> b!1074969 (= e!614349 (and e!614348 mapRes!40735))))

(declare-fun condMapEmpty!40735 () Bool)

(declare-fun mapDefault!40735 () ValueCell!12298)

