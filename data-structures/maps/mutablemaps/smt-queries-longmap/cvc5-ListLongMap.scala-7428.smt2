; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94454 () Bool)

(assert start!94454)

(declare-fun b_free!21745 () Bool)

(declare-fun b_next!21745 () Bool)

(assert (=> start!94454 (= b_free!21745 (not b_next!21745))))

(declare-fun tp!76682 () Bool)

(declare-fun b_and!34555 () Bool)

(assert (=> start!94454 (= tp!76682 b_and!34555)))

(declare-fun b!1067515 () Bool)

(declare-fun e!608927 () Bool)

(declare-fun e!608926 () Bool)

(assert (=> b!1067515 (= e!608927 (not e!608926))))

(declare-fun res!712456 () Bool)

(assert (=> b!1067515 (=> res!712456 e!608926)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1067515 (= res!712456 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!39209 0))(
  ( (V!39210 (val!12828 Int)) )
))
(declare-datatypes ((tuple2!16360 0))(
  ( (tuple2!16361 (_1!8190 (_ BitVec 64)) (_2!8190 V!39209)) )
))
(declare-datatypes ((List!22951 0))(
  ( (Nil!22948) (Cons!22947 (h!24156 tuple2!16360) (t!32283 List!22951)) )
))
(declare-datatypes ((ListLongMap!14341 0))(
  ( (ListLongMap!14342 (toList!7186 List!22951)) )
))
(declare-fun lt!471482 () ListLongMap!14341)

(declare-fun lt!471485 () ListLongMap!14341)

(assert (=> b!1067515 (= lt!471482 lt!471485)))

(declare-fun zeroValueBefore!47 () V!39209)

(declare-datatypes ((ValueCell!12074 0))(
  ( (ValueCellFull!12074 (v!15443 V!39209)) (EmptyCell!12074) )
))
(declare-datatypes ((array!68064 0))(
  ( (array!68065 (arr!32728 (Array (_ BitVec 32) ValueCell!12074)) (size!33265 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68064)

(declare-fun minValue!907 () V!39209)

(declare-datatypes ((Unit!35038 0))(
  ( (Unit!35039) )
))
(declare-fun lt!471484 () Unit!35038)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39209)

(declare-datatypes ((array!68066 0))(
  ( (array!68067 (arr!32729 (Array (_ BitVec 32) (_ BitVec 64))) (size!33266 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68066)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!770 (array!68066 array!68064 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39209 V!39209 V!39209 V!39209 (_ BitVec 32) Int) Unit!35038)

(assert (=> b!1067515 (= lt!471484 (lemmaNoChangeToArrayThenSameMapNoExtras!770 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3731 (array!68066 array!68064 (_ BitVec 32) (_ BitVec 32) V!39209 V!39209 (_ BitVec 32) Int) ListLongMap!14341)

(assert (=> b!1067515 (= lt!471485 (getCurrentListMapNoExtraKeys!3731 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067515 (= lt!471482 (getCurrentListMapNoExtraKeys!3731 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067516 () Bool)

(declare-fun e!608929 () Bool)

(declare-fun e!608930 () Bool)

(declare-fun mapRes!40027 () Bool)

(assert (=> b!1067516 (= e!608929 (and e!608930 mapRes!40027))))

(declare-fun condMapEmpty!40027 () Bool)

(declare-fun mapDefault!40027 () ValueCell!12074)

