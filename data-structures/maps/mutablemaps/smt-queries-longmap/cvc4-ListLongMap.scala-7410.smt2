; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94314 () Bool)

(assert start!94314)

(declare-fun b_free!21641 () Bool)

(declare-fun b_next!21641 () Bool)

(assert (=> start!94314 (= b_free!21641 (not b_next!21641))))

(declare-fun tp!76364 () Bool)

(declare-fun b_and!34431 () Bool)

(assert (=> start!94314 (= tp!76364 b_and!34431)))

(declare-fun b!1066079 () Bool)

(declare-fun e!607900 () Bool)

(assert (=> b!1066079 (= e!607900 true)))

(declare-datatypes ((V!39069 0))(
  ( (V!39070 (val!12776 Int)) )
))
(declare-datatypes ((tuple2!16284 0))(
  ( (tuple2!16285 (_1!8152 (_ BitVec 64)) (_2!8152 V!39069)) )
))
(declare-datatypes ((List!22881 0))(
  ( (Nil!22878) (Cons!22877 (h!24086 tuple2!16284) (t!32209 List!22881)) )
))
(declare-datatypes ((ListLongMap!14265 0))(
  ( (ListLongMap!14266 (toList!7148 List!22881)) )
))
(declare-fun lt!470469 () ListLongMap!14265)

(declare-fun lt!470475 () ListLongMap!14265)

(declare-fun -!610 (ListLongMap!14265 (_ BitVec 64)) ListLongMap!14265)

(assert (=> b!1066079 (= lt!470469 (-!610 lt!470475 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470473 () ListLongMap!14265)

(declare-fun lt!470476 () ListLongMap!14265)

(assert (=> b!1066079 (= (-!610 lt!470473 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470476)))

(declare-datatypes ((Unit!34960 0))(
  ( (Unit!34961) )
))
(declare-fun lt!470472 () Unit!34960)

(declare-fun zeroValueBefore!47 () V!39069)

(declare-fun addThenRemoveForNewKeyIsSame!19 (ListLongMap!14265 (_ BitVec 64) V!39069) Unit!34960)

(assert (=> b!1066079 (= lt!470472 (addThenRemoveForNewKeyIsSame!19 lt!470476 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470474 () ListLongMap!14265)

(declare-fun lt!470471 () ListLongMap!14265)

(assert (=> b!1066079 (and (= lt!470475 lt!470473) (= lt!470471 lt!470474))))

(declare-fun +!3101 (ListLongMap!14265 tuple2!16284) ListLongMap!14265)

(assert (=> b!1066079 (= lt!470473 (+!3101 lt!470476 (tuple2!16285 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12022 0))(
  ( (ValueCellFull!12022 (v!15390 V!39069)) (EmptyCell!12022) )
))
(declare-datatypes ((array!67862 0))(
  ( (array!67863 (arr!32629 (Array (_ BitVec 32) ValueCell!12022)) (size!33166 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67862)

(declare-fun minValue!907 () V!39069)

(declare-datatypes ((array!67864 0))(
  ( (array!67865 (arr!32630 (Array (_ BitVec 32) (_ BitVec 64))) (size!33167 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67864)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39069)

(declare-fun getCurrentListMap!4064 (array!67864 array!67862 (_ BitVec 32) (_ BitVec 32) V!39069 V!39069 (_ BitVec 32) Int) ListLongMap!14265)

(assert (=> b!1066079 (= lt!470471 (getCurrentListMap!4064 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066079 (= lt!470475 (getCurrentListMap!4064 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066080 () Bool)

(declare-fun e!607901 () Bool)

(assert (=> b!1066080 (= e!607901 (not e!607900))))

(declare-fun res!711641 () Bool)

(assert (=> b!1066080 (=> res!711641 e!607900)))

(assert (=> b!1066080 (= res!711641 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1066080 (= lt!470476 lt!470474)))

(declare-fun lt!470470 () Unit!34960)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!735 (array!67864 array!67862 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39069 V!39069 V!39069 V!39069 (_ BitVec 32) Int) Unit!34960)

(assert (=> b!1066080 (= lt!470470 (lemmaNoChangeToArrayThenSameMapNoExtras!735 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3696 (array!67864 array!67862 (_ BitVec 32) (_ BitVec 32) V!39069 V!39069 (_ BitVec 32) Int) ListLongMap!14265)

(assert (=> b!1066080 (= lt!470474 (getCurrentListMapNoExtraKeys!3696 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066080 (= lt!470476 (getCurrentListMapNoExtraKeys!3696 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066082 () Bool)

(declare-fun e!607898 () Bool)

(declare-fun e!607897 () Bool)

(declare-fun mapRes!39865 () Bool)

(assert (=> b!1066082 (= e!607898 (and e!607897 mapRes!39865))))

(declare-fun condMapEmpty!39865 () Bool)

(declare-fun mapDefault!39865 () ValueCell!12022)

