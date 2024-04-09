; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95266 () Bool)

(assert start!95266)

(declare-fun b_free!22231 () Bool)

(declare-fun b_next!22231 () Bool)

(assert (=> start!95266 (= b_free!22231 (not b_next!22231))))

(declare-fun tp!78191 () Bool)

(declare-fun b_and!35227 () Bool)

(assert (=> start!95266 (= tp!78191 b_and!35227)))

(declare-fun b!1076340 () Bool)

(declare-fun e!615282 () Bool)

(assert (=> b!1076340 (= e!615282 true)))

(declare-datatypes ((V!39857 0))(
  ( (V!39858 (val!13071 Int)) )
))
(declare-datatypes ((tuple2!16726 0))(
  ( (tuple2!16727 (_1!8373 (_ BitVec 64)) (_2!8373 V!39857)) )
))
(declare-datatypes ((List!23299 0))(
  ( (Nil!23296) (Cons!23295 (h!24504 tuple2!16726) (t!32665 List!23299)) )
))
(declare-datatypes ((ListLongMap!14707 0))(
  ( (ListLongMap!14708 (toList!7369 List!23299)) )
))
(declare-fun lt!478070 () ListLongMap!14707)

(declare-fun lt!478063 () tuple2!16726)

(declare-fun -!712 (ListLongMap!14707 (_ BitVec 64)) ListLongMap!14707)

(declare-fun +!3192 (ListLongMap!14707 tuple2!16726) ListLongMap!14707)

(assert (=> b!1076340 (= (-!712 (+!3192 lt!478070 lt!478063) #b0000000000000000000000000000000000000000000000000000000000000000) lt!478070)))

(declare-datatypes ((Unit!35377 0))(
  ( (Unit!35378) )
))
(declare-fun lt!478066 () Unit!35377)

(declare-fun zeroValueBefore!47 () V!39857)

(declare-fun addThenRemoveForNewKeyIsSame!83 (ListLongMap!14707 (_ BitVec 64) V!39857) Unit!35377)

(assert (=> b!1076340 (= lt!478066 (addThenRemoveForNewKeyIsSame!83 lt!478070 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!478069 () ListLongMap!14707)

(declare-fun lt!478071 () tuple2!16726)

(assert (=> b!1076340 (= lt!478070 (+!3192 lt!478069 lt!478071))))

(declare-fun e!615285 () Bool)

(assert (=> b!1076340 e!615285))

(declare-fun res!717466 () Bool)

(assert (=> b!1076340 (=> (not res!717466) (not e!615285))))

(declare-fun lt!478065 () ListLongMap!14707)

(assert (=> b!1076340 (= res!717466 (= lt!478065 (+!3192 (+!3192 lt!478069 lt!478063) lt!478071)))))

(declare-fun minValue!907 () V!39857)

(assert (=> b!1076340 (= lt!478071 (tuple2!16727 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1076340 (= lt!478063 (tuple2!16727 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12317 0))(
  ( (ValueCellFull!12317 (v!15700 V!39857)) (EmptyCell!12317) )
))
(declare-datatypes ((array!69020 0))(
  ( (array!69021 (arr!33189 (Array (_ BitVec 32) ValueCell!12317)) (size!33726 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!69020)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39857)

(declare-fun lt!478067 () ListLongMap!14707)

(declare-datatypes ((array!69022 0))(
  ( (array!69023 (arr!33190 (Array (_ BitVec 32) (_ BitVec 64))) (size!33727 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!69022)

(declare-fun getCurrentListMap!4204 (array!69022 array!69020 (_ BitVec 32) (_ BitVec 32) V!39857 V!39857 (_ BitVec 32) Int) ListLongMap!14707)

(assert (=> b!1076340 (= lt!478067 (getCurrentListMap!4204 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1076340 (= lt!478065 (getCurrentListMap!4204 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1076341 () Bool)

(declare-fun e!615283 () Bool)

(declare-fun tp_is_empty!26041 () Bool)

(assert (=> b!1076341 (= e!615283 tp_is_empty!26041)))

(declare-fun res!717470 () Bool)

(declare-fun e!615287 () Bool)

(assert (=> start!95266 (=> (not res!717470) (not e!615287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95266 (= res!717470 (validMask!0 mask!1515))))

(assert (=> start!95266 e!615287))

(assert (=> start!95266 true))

(assert (=> start!95266 tp_is_empty!26041))

(declare-fun e!615286 () Bool)

(declare-fun array_inv!25500 (array!69020) Bool)

(assert (=> start!95266 (and (array_inv!25500 _values!955) e!615286)))

(assert (=> start!95266 tp!78191))

(declare-fun array_inv!25501 (array!69022) Bool)

(assert (=> start!95266 (array_inv!25501 _keys!1163)))

(declare-fun mapIsEmpty!40807 () Bool)

(declare-fun mapRes!40807 () Bool)

(assert (=> mapIsEmpty!40807 mapRes!40807))

(declare-fun b!1076342 () Bool)

(declare-fun res!717465 () Bool)

(assert (=> b!1076342 (=> (not res!717465) (not e!615287))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69022 (_ BitVec 32)) Bool)

(assert (=> b!1076342 (= res!717465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1076343 () Bool)

(declare-fun res!717467 () Bool)

(assert (=> b!1076343 (=> (not res!717467) (not e!615287))))

(assert (=> b!1076343 (= res!717467 (and (= (size!33726 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33727 _keys!1163) (size!33726 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1076344 () Bool)

(declare-fun e!615284 () Bool)

(assert (=> b!1076344 (= e!615286 (and e!615284 mapRes!40807))))

(declare-fun condMapEmpty!40807 () Bool)

(declare-fun mapDefault!40807 () ValueCell!12317)

