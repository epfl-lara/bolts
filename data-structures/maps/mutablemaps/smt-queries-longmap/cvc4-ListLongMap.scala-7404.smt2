; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94256 () Bool)

(assert start!94256)

(declare-fun b_free!21605 () Bool)

(declare-fun b_next!21605 () Bool)

(assert (=> start!94256 (= b_free!21605 (not b_next!21605))))

(declare-fun tp!76254 () Bool)

(declare-fun b_and!34383 () Bool)

(assert (=> start!94256 (= tp!76254 b_and!34383)))

(declare-fun b!1065463 () Bool)

(declare-fun res!711289 () Bool)

(declare-fun e!607455 () Bool)

(assert (=> b!1065463 (=> (not res!711289) (not e!607455))))

(declare-datatypes ((array!67790 0))(
  ( (array!67791 (arr!32594 (Array (_ BitVec 32) (_ BitVec 64))) (size!33131 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67790)

(declare-datatypes ((List!22852 0))(
  ( (Nil!22849) (Cons!22848 (h!24057 (_ BitVec 64)) (t!32178 List!22852)) )
))
(declare-fun arrayNoDuplicates!0 (array!67790 (_ BitVec 32) List!22852) Bool)

(assert (=> b!1065463 (= res!711289 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22849))))

(declare-fun res!711292 () Bool)

(assert (=> start!94256 (=> (not res!711292) (not e!607455))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94256 (= res!711292 (validMask!0 mask!1515))))

(assert (=> start!94256 e!607455))

(assert (=> start!94256 true))

(declare-fun tp_is_empty!25415 () Bool)

(assert (=> start!94256 tp_is_empty!25415))

(declare-datatypes ((V!39021 0))(
  ( (V!39022 (val!12758 Int)) )
))
(declare-datatypes ((ValueCell!12004 0))(
  ( (ValueCellFull!12004 (v!15371 V!39021)) (EmptyCell!12004) )
))
(declare-datatypes ((array!67792 0))(
  ( (array!67793 (arr!32595 (Array (_ BitVec 32) ValueCell!12004)) (size!33132 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67792)

(declare-fun e!607456 () Bool)

(declare-fun array_inv!25076 (array!67792) Bool)

(assert (=> start!94256 (and (array_inv!25076 _values!955) e!607456)))

(assert (=> start!94256 tp!76254))

(declare-fun array_inv!25077 (array!67790) Bool)

(assert (=> start!94256 (array_inv!25077 _keys!1163)))

(declare-fun b!1065464 () Bool)

(declare-fun res!711291 () Bool)

(assert (=> b!1065464 (=> (not res!711291) (not e!607455))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065464 (= res!711291 (and (= (size!33132 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33131 _keys!1163) (size!33132 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1065465 () Bool)

(declare-fun e!607459 () Bool)

(assert (=> b!1065465 (= e!607455 (not e!607459))))

(declare-fun res!711293 () Bool)

(assert (=> b!1065465 (=> res!711293 e!607459)))

(assert (=> b!1065465 (= res!711293 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16252 0))(
  ( (tuple2!16253 (_1!8136 (_ BitVec 64)) (_2!8136 V!39021)) )
))
(declare-datatypes ((List!22853 0))(
  ( (Nil!22850) (Cons!22849 (h!24058 tuple2!16252) (t!32179 List!22853)) )
))
(declare-datatypes ((ListLongMap!14233 0))(
  ( (ListLongMap!14234 (toList!7132 List!22853)) )
))
(declare-fun lt!469904 () ListLongMap!14233)

(declare-fun lt!469902 () ListLongMap!14233)

(assert (=> b!1065465 (= lt!469904 lt!469902)))

(declare-fun zeroValueBefore!47 () V!39021)

(declare-datatypes ((Unit!34926 0))(
  ( (Unit!34927) )
))
(declare-fun lt!469903 () Unit!34926)

(declare-fun minValue!907 () V!39021)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39021)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!721 (array!67790 array!67792 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39021 V!39021 V!39021 V!39021 (_ BitVec 32) Int) Unit!34926)

(assert (=> b!1065465 (= lt!469903 (lemmaNoChangeToArrayThenSameMapNoExtras!721 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3682 (array!67790 array!67792 (_ BitVec 32) (_ BitVec 32) V!39021 V!39021 (_ BitVec 32) Int) ListLongMap!14233)

(assert (=> b!1065465 (= lt!469902 (getCurrentListMapNoExtraKeys!3682 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065465 (= lt!469904 (getCurrentListMapNoExtraKeys!3682 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065466 () Bool)

(assert (=> b!1065466 (= e!607459 true)))

(declare-fun lt!469900 () ListLongMap!14233)

(declare-fun lt!469899 () ListLongMap!14233)

(declare-fun -!598 (ListLongMap!14233 (_ BitVec 64)) ListLongMap!14233)

(assert (=> b!1065466 (= lt!469900 (-!598 lt!469899 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!469905 () ListLongMap!14233)

(assert (=> b!1065466 (= (-!598 lt!469905 #b0000000000000000000000000000000000000000000000000000000000000000) lt!469904)))

(declare-fun lt!469906 () Unit!34926)

(declare-fun addThenRemoveForNewKeyIsSame!7 (ListLongMap!14233 (_ BitVec 64) V!39021) Unit!34926)

(assert (=> b!1065466 (= lt!469906 (addThenRemoveForNewKeyIsSame!7 lt!469904 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!469901 () ListLongMap!14233)

(assert (=> b!1065466 (and (= lt!469899 lt!469905) (= lt!469901 lt!469902))))

(declare-fun +!3089 (ListLongMap!14233 tuple2!16252) ListLongMap!14233)

(assert (=> b!1065466 (= lt!469905 (+!3089 lt!469904 (tuple2!16253 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun getCurrentListMap!4052 (array!67790 array!67792 (_ BitVec 32) (_ BitVec 32) V!39021 V!39021 (_ BitVec 32) Int) ListLongMap!14233)

(assert (=> b!1065466 (= lt!469901 (getCurrentListMap!4052 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065466 (= lt!469899 (getCurrentListMap!4052 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065467 () Bool)

(declare-fun e!607457 () Bool)

(declare-fun mapRes!39808 () Bool)

(assert (=> b!1065467 (= e!607456 (and e!607457 mapRes!39808))))

(declare-fun condMapEmpty!39808 () Bool)

(declare-fun mapDefault!39808 () ValueCell!12004)

