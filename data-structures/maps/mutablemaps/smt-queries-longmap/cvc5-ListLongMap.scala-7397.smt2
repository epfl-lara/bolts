; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94194 () Bool)

(assert start!94194)

(declare-fun b_free!21559 () Bool)

(declare-fun b_next!21559 () Bool)

(assert (=> start!94194 (= b_free!21559 (not b_next!21559))))

(declare-fun tp!76113 () Bool)

(declare-fun b_and!34327 () Bool)

(assert (=> start!94194 (= tp!76113 b_and!34327)))

(declare-fun mapNonEmpty!39736 () Bool)

(declare-fun mapRes!39736 () Bool)

(declare-fun tp!76112 () Bool)

(declare-fun e!606942 () Bool)

(assert (=> mapNonEmpty!39736 (= mapRes!39736 (and tp!76112 e!606942))))

(declare-fun mapKey!39736 () (_ BitVec 32))

(declare-datatypes ((V!38961 0))(
  ( (V!38962 (val!12735 Int)) )
))
(declare-datatypes ((ValueCell!11981 0))(
  ( (ValueCellFull!11981 (v!15348 V!38961)) (EmptyCell!11981) )
))
(declare-fun mapValue!39736 () ValueCell!11981)

(declare-datatypes ((array!67700 0))(
  ( (array!67701 (arr!32550 (Array (_ BitVec 32) ValueCell!11981)) (size!33087 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67700)

(declare-fun mapRest!39736 () (Array (_ BitVec 32) ValueCell!11981))

(assert (=> mapNonEmpty!39736 (= (arr!32550 _values!955) (store mapRest!39736 mapKey!39736 mapValue!39736))))

(declare-fun res!710879 () Bool)

(declare-fun e!606939 () Bool)

(assert (=> start!94194 (=> (not res!710879) (not e!606939))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94194 (= res!710879 (validMask!0 mask!1515))))

(assert (=> start!94194 e!606939))

(assert (=> start!94194 true))

(declare-fun tp_is_empty!25369 () Bool)

(assert (=> start!94194 tp_is_empty!25369))

(declare-fun e!606937 () Bool)

(declare-fun array_inv!25042 (array!67700) Bool)

(assert (=> start!94194 (and (array_inv!25042 _values!955) e!606937)))

(assert (=> start!94194 tp!76113))

(declare-datatypes ((array!67702 0))(
  ( (array!67703 (arr!32551 (Array (_ BitVec 32) (_ BitVec 64))) (size!33088 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67702)

(declare-fun array_inv!25043 (array!67702) Bool)

(assert (=> start!94194 (array_inv!25043 _keys!1163)))

(declare-fun b!1064754 () Bool)

(declare-fun e!606940 () Bool)

(assert (=> b!1064754 (= e!606940 true)))

(declare-fun zeroValueBefore!47 () V!38961)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38961)

(declare-datatypes ((tuple2!16216 0))(
  ( (tuple2!16217 (_1!8118 (_ BitVec 64)) (_2!8118 V!38961)) )
))
(declare-datatypes ((List!22817 0))(
  ( (Nil!22814) (Cons!22813 (h!24022 tuple2!16216) (t!32141 List!22817)) )
))
(declare-datatypes ((ListLongMap!14197 0))(
  ( (ListLongMap!14198 (toList!7114 List!22817)) )
))
(declare-fun lt!469360 () ListLongMap!14197)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4038 (array!67702 array!67700 (_ BitVec 32) (_ BitVec 32) V!38961 V!38961 (_ BitVec 32) Int) ListLongMap!14197)

(assert (=> b!1064754 (= lt!469360 (getCurrentListMap!4038 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064755 () Bool)

(assert (=> b!1064755 (= e!606939 (not e!606940))))

(declare-fun res!710878 () Bool)

(assert (=> b!1064755 (=> res!710878 e!606940)))

(assert (=> b!1064755 (= res!710878 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!469361 () ListLongMap!14197)

(declare-fun lt!469359 () ListLongMap!14197)

(assert (=> b!1064755 (= lt!469361 lt!469359)))

(declare-datatypes ((Unit!34889 0))(
  ( (Unit!34890) )
))
(declare-fun lt!469362 () Unit!34889)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!38961)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!704 (array!67702 array!67700 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38961 V!38961 V!38961 V!38961 (_ BitVec 32) Int) Unit!34889)

(assert (=> b!1064755 (= lt!469362 (lemmaNoChangeToArrayThenSameMapNoExtras!704 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3665 (array!67702 array!67700 (_ BitVec 32) (_ BitVec 32) V!38961 V!38961 (_ BitVec 32) Int) ListLongMap!14197)

(assert (=> b!1064755 (= lt!469359 (getCurrentListMapNoExtraKeys!3665 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064755 (= lt!469361 (getCurrentListMapNoExtraKeys!3665 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064756 () Bool)

(assert (=> b!1064756 (= e!606942 tp_is_empty!25369)))

(declare-fun b!1064757 () Bool)

(declare-fun res!710880 () Bool)

(assert (=> b!1064757 (=> (not res!710880) (not e!606939))))

(assert (=> b!1064757 (= res!710880 (and (= (size!33087 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33088 _keys!1163) (size!33087 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064758 () Bool)

(declare-fun e!606938 () Bool)

(assert (=> b!1064758 (= e!606937 (and e!606938 mapRes!39736))))

(declare-fun condMapEmpty!39736 () Bool)

(declare-fun mapDefault!39736 () ValueCell!11981)

