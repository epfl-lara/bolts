; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94858 () Bool)

(assert start!94858)

(declare-fun b_free!22051 () Bool)

(declare-fun b_next!22051 () Bool)

(assert (=> start!94858 (= b_free!22051 (not b_next!22051))))

(declare-fun tp!77616 () Bool)

(declare-fun b_and!34911 () Bool)

(assert (=> start!94858 (= tp!77616 b_and!34911)))

(declare-fun b!1072135 () Bool)

(declare-fun res!715261 () Bool)

(declare-fun e!612361 () Bool)

(assert (=> b!1072135 (=> (not res!715261) (not e!612361))))

(declare-datatypes ((array!68652 0))(
  ( (array!68653 (arr!33017 (Array (_ BitVec 32) (_ BitVec 64))) (size!33554 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68652)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68652 (_ BitVec 32)) Bool)

(assert (=> b!1072135 (= res!715261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!40501 () Bool)

(declare-fun mapRes!40501 () Bool)

(assert (=> mapIsEmpty!40501 mapRes!40501))

(declare-fun b!1072136 () Bool)

(declare-fun e!612367 () Bool)

(assert (=> b!1072136 (= e!612367 true)))

(declare-datatypes ((V!39617 0))(
  ( (V!39618 (val!12981 Int)) )
))
(declare-datatypes ((tuple2!16592 0))(
  ( (tuple2!16593 (_1!8306 (_ BitVec 64)) (_2!8306 V!39617)) )
))
(declare-datatypes ((List!23172 0))(
  ( (Nil!23169) (Cons!23168 (h!24377 tuple2!16592) (t!32514 List!23172)) )
))
(declare-datatypes ((ListLongMap!14573 0))(
  ( (ListLongMap!14574 (toList!7302 List!23172)) )
))
(declare-fun lt!475024 () ListLongMap!14573)

(declare-fun lt!475019 () ListLongMap!14573)

(declare-fun -!692 (ListLongMap!14573 (_ BitVec 64)) ListLongMap!14573)

(assert (=> b!1072136 (= lt!475024 (-!692 lt!475019 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!475015 () ListLongMap!14573)

(declare-fun lt!475017 () ListLongMap!14573)

(assert (=> b!1072136 (= lt!475015 lt!475017)))

(declare-fun zeroValueBefore!47 () V!39617)

(declare-fun lt!475016 () ListLongMap!14573)

(declare-datatypes ((Unit!35265 0))(
  ( (Unit!35266) )
))
(declare-fun lt!475012 () Unit!35265)

(declare-fun minValue!907 () V!39617)

(declare-fun addCommutativeForDiffKeys!736 (ListLongMap!14573 (_ BitVec 64) V!39617 (_ BitVec 64) V!39617) Unit!35265)

(assert (=> b!1072136 (= lt!475012 (addCommutativeForDiffKeys!736 lt!475016 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!475021 () ListLongMap!14573)

(assert (=> b!1072136 (= (-!692 lt!475017 #b0000000000000000000000000000000000000000000000000000000000000000) lt!475021)))

(declare-fun lt!475013 () tuple2!16592)

(declare-fun +!3157 (ListLongMap!14573 tuple2!16592) ListLongMap!14573)

(assert (=> b!1072136 (= lt!475017 (+!3157 lt!475021 lt!475013))))

(declare-fun lt!475022 () Unit!35265)

(declare-fun addThenRemoveForNewKeyIsSame!66 (ListLongMap!14573 (_ BitVec 64) V!39617) Unit!35265)

(assert (=> b!1072136 (= lt!475022 (addThenRemoveForNewKeyIsSame!66 lt!475021 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!475020 () tuple2!16592)

(assert (=> b!1072136 (= lt!475021 (+!3157 lt!475016 lt!475020))))

(declare-fun e!612363 () Bool)

(assert (=> b!1072136 e!612363))

(declare-fun res!715263 () Bool)

(assert (=> b!1072136 (=> (not res!715263) (not e!612363))))

(assert (=> b!1072136 (= res!715263 (= lt!475019 lt!475015))))

(assert (=> b!1072136 (= lt!475015 (+!3157 (+!3157 lt!475016 lt!475013) lt!475020))))

(assert (=> b!1072136 (= lt!475020 (tuple2!16593 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1072136 (= lt!475013 (tuple2!16593 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-datatypes ((ValueCell!12227 0))(
  ( (ValueCellFull!12227 (v!15599 V!39617)) (EmptyCell!12227) )
))
(declare-datatypes ((array!68654 0))(
  ( (array!68655 (arr!33018 (Array (_ BitVec 32) ValueCell!12227)) (size!33555 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68654)

(declare-fun lt!475023 () ListLongMap!14573)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39617)

(declare-fun getCurrentListMap!4164 (array!68652 array!68654 (_ BitVec 32) (_ BitVec 32) V!39617 V!39617 (_ BitVec 32) Int) ListLongMap!14573)

(assert (=> b!1072136 (= lt!475023 (getCurrentListMap!4164 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072136 (= lt!475019 (getCurrentListMap!4164 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072137 () Bool)

(declare-fun res!715260 () Bool)

(assert (=> b!1072137 (=> (not res!715260) (not e!612361))))

(assert (=> b!1072137 (= res!715260 (and (= (size!33555 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33554 _keys!1163) (size!33555 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!40501 () Bool)

(declare-fun tp!77615 () Bool)

(declare-fun e!612365 () Bool)

(assert (=> mapNonEmpty!40501 (= mapRes!40501 (and tp!77615 e!612365))))

(declare-fun mapValue!40501 () ValueCell!12227)

(declare-fun mapRest!40501 () (Array (_ BitVec 32) ValueCell!12227))

(declare-fun mapKey!40501 () (_ BitVec 32))

(assert (=> mapNonEmpty!40501 (= (arr!33018 _values!955) (store mapRest!40501 mapKey!40501 mapValue!40501))))

(declare-fun b!1072138 () Bool)

(declare-fun e!612362 () Bool)

(declare-fun tp_is_empty!25861 () Bool)

(assert (=> b!1072138 (= e!612362 tp_is_empty!25861)))

(declare-fun b!1072140 () Bool)

(declare-fun res!715259 () Bool)

(assert (=> b!1072140 (=> (not res!715259) (not e!612361))))

(declare-datatypes ((List!23173 0))(
  ( (Nil!23170) (Cons!23169 (h!24378 (_ BitVec 64)) (t!32515 List!23173)) )
))
(declare-fun arrayNoDuplicates!0 (array!68652 (_ BitVec 32) List!23173) Bool)

(assert (=> b!1072140 (= res!715259 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23170))))

(declare-fun b!1072141 () Bool)

(declare-fun lt!475014 () ListLongMap!14573)

(assert (=> b!1072141 (= e!612363 (= lt!475023 (+!3157 lt!475014 lt!475020)))))

(declare-fun b!1072142 () Bool)

(assert (=> b!1072142 (= e!612365 tp_is_empty!25861)))

(declare-fun b!1072143 () Bool)

(assert (=> b!1072143 (= e!612361 (not e!612367))))

(declare-fun res!715258 () Bool)

(assert (=> b!1072143 (=> res!715258 e!612367)))

(assert (=> b!1072143 (= res!715258 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1072143 (= lt!475016 lt!475014)))

(declare-fun lt!475018 () Unit!35265)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!872 (array!68652 array!68654 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39617 V!39617 V!39617 V!39617 (_ BitVec 32) Int) Unit!35265)

(assert (=> b!1072143 (= lt!475018 (lemmaNoChangeToArrayThenSameMapNoExtras!872 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3833 (array!68652 array!68654 (_ BitVec 32) (_ BitVec 32) V!39617 V!39617 (_ BitVec 32) Int) ListLongMap!14573)

(assert (=> b!1072143 (= lt!475014 (getCurrentListMapNoExtraKeys!3833 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072143 (= lt!475016 (getCurrentListMapNoExtraKeys!3833 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072139 () Bool)

(declare-fun e!612366 () Bool)

(assert (=> b!1072139 (= e!612366 (and e!612362 mapRes!40501))))

(declare-fun condMapEmpty!40501 () Bool)

(declare-fun mapDefault!40501 () ValueCell!12227)

