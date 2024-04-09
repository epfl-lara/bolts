; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94340 () Bool)

(assert start!94340)

(declare-fun b_free!21667 () Bool)

(declare-fun b_next!21667 () Bool)

(assert (=> start!94340 (= b_free!21667 (not b_next!21667))))

(declare-fun tp!76442 () Bool)

(declare-fun b_and!34457 () Bool)

(assert (=> start!94340 (= tp!76442 b_and!34457)))

(declare-fun b!1066391 () Bool)

(declare-fun res!711839 () Bool)

(declare-fun e!608136 () Bool)

(assert (=> b!1066391 (=> (not res!711839) (not e!608136))))

(declare-datatypes ((array!67912 0))(
  ( (array!67913 (arr!32654 (Array (_ BitVec 32) (_ BitVec 64))) (size!33191 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67912)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67912 (_ BitVec 32)) Bool)

(assert (=> b!1066391 (= res!711839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39904 () Bool)

(declare-fun mapRes!39904 () Bool)

(assert (=> mapIsEmpty!39904 mapRes!39904))

(declare-fun mapNonEmpty!39904 () Bool)

(declare-fun tp!76443 () Bool)

(declare-fun e!608131 () Bool)

(assert (=> mapNonEmpty!39904 (= mapRes!39904 (and tp!76443 e!608131))))

(declare-datatypes ((V!39105 0))(
  ( (V!39106 (val!12789 Int)) )
))
(declare-datatypes ((ValueCell!12035 0))(
  ( (ValueCellFull!12035 (v!15403 V!39105)) (EmptyCell!12035) )
))
(declare-datatypes ((array!67914 0))(
  ( (array!67915 (arr!32655 (Array (_ BitVec 32) ValueCell!12035)) (size!33192 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67914)

(declare-fun mapValue!39904 () ValueCell!12035)

(declare-fun mapKey!39904 () (_ BitVec 32))

(declare-fun mapRest!39904 () (Array (_ BitVec 32) ValueCell!12035))

(assert (=> mapNonEmpty!39904 (= (arr!32655 _values!955) (store mapRest!39904 mapKey!39904 mapValue!39904))))

(declare-fun b!1066392 () Bool)

(declare-fun e!608135 () Bool)

(assert (=> b!1066392 (= e!608136 (not e!608135))))

(declare-fun res!711840 () Bool)

(assert (=> b!1066392 (=> res!711840 e!608135)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066392 (= res!711840 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16306 0))(
  ( (tuple2!16307 (_1!8163 (_ BitVec 64)) (_2!8163 V!39105)) )
))
(declare-datatypes ((List!22900 0))(
  ( (Nil!22897) (Cons!22896 (h!24105 tuple2!16306) (t!32228 List!22900)) )
))
(declare-datatypes ((ListLongMap!14287 0))(
  ( (ListLongMap!14288 (toList!7159 List!22900)) )
))
(declare-fun lt!470788 () ListLongMap!14287)

(declare-fun lt!470782 () ListLongMap!14287)

(assert (=> b!1066392 (= lt!470788 lt!470782)))

(declare-fun zeroValueBefore!47 () V!39105)

(declare-fun minValue!907 () V!39105)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39105)

(declare-datatypes ((Unit!34982 0))(
  ( (Unit!34983) )
))
(declare-fun lt!470783 () Unit!34982)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!745 (array!67912 array!67914 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39105 V!39105 V!39105 V!39105 (_ BitVec 32) Int) Unit!34982)

(assert (=> b!1066392 (= lt!470783 (lemmaNoChangeToArrayThenSameMapNoExtras!745 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3706 (array!67912 array!67914 (_ BitVec 32) (_ BitVec 32) V!39105 V!39105 (_ BitVec 32) Int) ListLongMap!14287)

(assert (=> b!1066392 (= lt!470782 (getCurrentListMapNoExtraKeys!3706 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066392 (= lt!470788 (getCurrentListMapNoExtraKeys!3706 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066393 () Bool)

(declare-fun tp_is_empty!25477 () Bool)

(assert (=> b!1066393 (= e!608131 tp_is_empty!25477)))

(declare-fun b!1066394 () Bool)

(declare-fun e!608133 () Bool)

(declare-fun e!608134 () Bool)

(assert (=> b!1066394 (= e!608133 (and e!608134 mapRes!39904))))

(declare-fun condMapEmpty!39904 () Bool)

(declare-fun mapDefault!39904 () ValueCell!12035)

