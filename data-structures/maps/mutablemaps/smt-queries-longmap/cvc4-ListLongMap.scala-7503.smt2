; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95138 () Bool)

(assert start!95138)

(declare-fun b_free!22199 () Bool)

(declare-fun b_next!22199 () Bool)

(assert (=> start!95138 (= b_free!22199 (not b_next!22199))))

(declare-fun tp!78080 () Bool)

(declare-fun b_and!35137 () Bool)

(assert (=> start!95138 (= tp!78080 b_and!35137)))

(declare-fun b!1075037 () Bool)

(declare-fun e!614405 () Bool)

(declare-fun e!614400 () Bool)

(assert (=> b!1075037 (= e!614405 (not e!614400))))

(declare-fun res!716823 () Bool)

(assert (=> b!1075037 (=> res!716823 e!614400)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1075037 (= res!716823 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39813 0))(
  ( (V!39814 (val!13055 Int)) )
))
(declare-datatypes ((tuple2!16698 0))(
  ( (tuple2!16699 (_1!8359 (_ BitVec 64)) (_2!8359 V!39813)) )
))
(declare-datatypes ((List!23272 0))(
  ( (Nil!23269) (Cons!23268 (h!24477 tuple2!16698) (t!32628 List!23272)) )
))
(declare-datatypes ((ListLongMap!14679 0))(
  ( (ListLongMap!14680 (toList!7355 List!23272)) )
))
(declare-fun lt!477125 () ListLongMap!14679)

(declare-fun lt!477124 () ListLongMap!14679)

(assert (=> b!1075037 (= lt!477125 lt!477124)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39813)

(declare-fun minValue!907 () V!39813)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12301 0))(
  ( (ValueCellFull!12301 (v!15679 V!39813)) (EmptyCell!12301) )
))
(declare-datatypes ((array!68948 0))(
  ( (array!68949 (arr!33158 (Array (_ BitVec 32) ValueCell!12301)) (size!33695 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68948)

(declare-datatypes ((Unit!35341 0))(
  ( (Unit!35342) )
))
(declare-fun lt!477122 () Unit!35341)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39813)

(declare-datatypes ((array!68950 0))(
  ( (array!68951 (arr!33159 (Array (_ BitVec 32) (_ BitVec 64))) (size!33696 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68950)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!901 (array!68950 array!68948 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39813 V!39813 V!39813 V!39813 (_ BitVec 32) Int) Unit!35341)

(assert (=> b!1075037 (= lt!477122 (lemmaNoChangeToArrayThenSameMapNoExtras!901 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3882 (array!68950 array!68948 (_ BitVec 32) (_ BitVec 32) V!39813 V!39813 (_ BitVec 32) Int) ListLongMap!14679)

(assert (=> b!1075037 (= lt!477124 (getCurrentListMapNoExtraKeys!3882 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1075037 (= lt!477125 (getCurrentListMapNoExtraKeys!3882 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1075038 () Bool)

(declare-fun res!716822 () Bool)

(assert (=> b!1075038 (=> (not res!716822) (not e!614405))))

(declare-datatypes ((List!23273 0))(
  ( (Nil!23270) (Cons!23269 (h!24478 (_ BitVec 64)) (t!32629 List!23273)) )
))
(declare-fun arrayNoDuplicates!0 (array!68950 (_ BitVec 32) List!23273) Bool)

(assert (=> b!1075038 (= res!716822 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23270))))

(declare-fun mapNonEmpty!40744 () Bool)

(declare-fun mapRes!40744 () Bool)

(declare-fun tp!78081 () Bool)

(declare-fun e!614401 () Bool)

(assert (=> mapNonEmpty!40744 (= mapRes!40744 (and tp!78081 e!614401))))

(declare-fun mapRest!40744 () (Array (_ BitVec 32) ValueCell!12301))

(declare-fun mapValue!40744 () ValueCell!12301)

(declare-fun mapKey!40744 () (_ BitVec 32))

(assert (=> mapNonEmpty!40744 (= (arr!33158 _values!955) (store mapRest!40744 mapKey!40744 mapValue!40744))))

(declare-fun res!716824 () Bool)

(assert (=> start!95138 (=> (not res!716824) (not e!614405))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95138 (= res!716824 (validMask!0 mask!1515))))

(assert (=> start!95138 e!614405))

(assert (=> start!95138 true))

(declare-fun tp_is_empty!26009 () Bool)

(assert (=> start!95138 tp_is_empty!26009))

(declare-fun e!614402 () Bool)

(declare-fun array_inv!25476 (array!68948) Bool)

(assert (=> start!95138 (and (array_inv!25476 _values!955) e!614402)))

(assert (=> start!95138 tp!78080))

(declare-fun array_inv!25477 (array!68950) Bool)

(assert (=> start!95138 (array_inv!25477 _keys!1163)))

(declare-fun b!1075039 () Bool)

(declare-fun e!614403 () Bool)

(assert (=> b!1075039 (= e!614403 tp_is_empty!26009)))

(declare-fun b!1075040 () Bool)

(assert (=> b!1075040 (= e!614402 (and e!614403 mapRes!40744))))

(declare-fun condMapEmpty!40744 () Bool)

(declare-fun mapDefault!40744 () ValueCell!12301)

