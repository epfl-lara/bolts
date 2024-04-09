; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94362 () Bool)

(assert start!94362)

(declare-fun b_free!21689 () Bool)

(declare-fun b_next!21689 () Bool)

(assert (=> start!94362 (= b_free!21689 (not b_next!21689))))

(declare-fun tp!76509 () Bool)

(declare-fun b_and!34479 () Bool)

(assert (=> start!94362 (= tp!76509 b_and!34479)))

(declare-fun b!1066663 () Bool)

(declare-fun res!712014 () Bool)

(declare-fun e!608338 () Bool)

(assert (=> b!1066663 (=> (not res!712014) (not e!608338))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39133 0))(
  ( (V!39134 (val!12800 Int)) )
))
(declare-datatypes ((ValueCell!12046 0))(
  ( (ValueCellFull!12046 (v!15414 V!39133)) (EmptyCell!12046) )
))
(declare-datatypes ((array!67956 0))(
  ( (array!67957 (arr!32676 (Array (_ BitVec 32) ValueCell!12046)) (size!33213 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67956)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67958 0))(
  ( (array!67959 (arr!32677 (Array (_ BitVec 32) (_ BitVec 64))) (size!33214 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67958)

(assert (=> b!1066663 (= res!712014 (and (= (size!33213 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33214 _keys!1163) (size!33213 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1066664 () Bool)

(declare-fun e!608343 () Bool)

(declare-fun tp_is_empty!25499 () Bool)

(assert (=> b!1066664 (= e!608343 tp_is_empty!25499)))

(declare-fun b!1066665 () Bool)

(declare-fun e!608340 () Bool)

(assert (=> b!1066665 (= e!608340 (bvsle #b00000000000000000000000000000000 (size!33214 _keys!1163)))))

(declare-fun b!1066666 () Bool)

(declare-fun e!608342 () Bool)

(assert (=> b!1066666 (= e!608342 e!608340)))

(declare-fun res!712009 () Bool)

(assert (=> b!1066666 (=> res!712009 e!608340)))

(declare-datatypes ((tuple2!16328 0))(
  ( (tuple2!16329 (_1!8174 (_ BitVec 64)) (_2!8174 V!39133)) )
))
(declare-datatypes ((List!22919 0))(
  ( (Nil!22916) (Cons!22915 (h!24124 tuple2!16328) (t!32247 List!22919)) )
))
(declare-datatypes ((ListLongMap!14309 0))(
  ( (ListLongMap!14310 (toList!7170 List!22919)) )
))
(declare-fun lt!471037 () ListLongMap!14309)

(declare-fun lt!471043 () ListLongMap!14309)

(declare-fun -!628 (ListLongMap!14309 (_ BitVec 64)) ListLongMap!14309)

(assert (=> b!1066666 (= res!712009 (not (= (-!628 lt!471037 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471043)))))

(declare-fun lt!471039 () ListLongMap!14309)

(declare-fun lt!471040 () ListLongMap!14309)

(assert (=> b!1066666 (= (-!628 lt!471039 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471040)))

(declare-datatypes ((Unit!35004 0))(
  ( (Unit!35005) )
))
(declare-fun lt!471042 () Unit!35004)

(declare-fun zeroValueBefore!47 () V!39133)

(declare-fun addThenRemoveForNewKeyIsSame!37 (ListLongMap!14309 (_ BitVec 64) V!39133) Unit!35004)

(assert (=> b!1066666 (= lt!471042 (addThenRemoveForNewKeyIsSame!37 lt!471040 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!471038 () ListLongMap!14309)

(assert (=> b!1066666 (and (= lt!471037 lt!471039) (= lt!471043 lt!471038))))

(declare-fun +!3119 (ListLongMap!14309 tuple2!16328) ListLongMap!14309)

(assert (=> b!1066666 (= lt!471039 (+!3119 lt!471040 (tuple2!16329 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun minValue!907 () V!39133)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39133)

(declare-fun getCurrentListMap!4082 (array!67958 array!67956 (_ BitVec 32) (_ BitVec 32) V!39133 V!39133 (_ BitVec 32) Int) ListLongMap!14309)

(assert (=> b!1066666 (= lt!471043 (getCurrentListMap!4082 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066666 (= lt!471037 (getCurrentListMap!4082 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066667 () Bool)

(declare-fun res!712013 () Bool)

(assert (=> b!1066667 (=> (not res!712013) (not e!608338))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67958 (_ BitVec 32)) Bool)

(assert (=> b!1066667 (= res!712013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1066668 () Bool)

(declare-fun e!608337 () Bool)

(declare-fun mapRes!39937 () Bool)

(assert (=> b!1066668 (= e!608337 (and e!608343 mapRes!39937))))

(declare-fun condMapEmpty!39937 () Bool)

(declare-fun mapDefault!39937 () ValueCell!12046)

