; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94716 () Bool)

(assert start!94716)

(declare-fun b_free!21949 () Bool)

(declare-fun b_next!21949 () Bool)

(assert (=> start!94716 (= b_free!21949 (not b_next!21949))))

(declare-fun tp!77304 () Bool)

(declare-fun b_and!34787 () Bool)

(assert (=> start!94716 (= tp!77304 b_and!34787)))

(declare-fun b!1070443 () Bool)

(declare-fun e!611103 () Bool)

(declare-fun tp_is_empty!25759 () Bool)

(assert (=> b!1070443 (= e!611103 tp_is_empty!25759)))

(declare-fun mapIsEmpty!40342 () Bool)

(declare-fun mapRes!40342 () Bool)

(assert (=> mapIsEmpty!40342 mapRes!40342))

(declare-fun b!1070444 () Bool)

(declare-fun res!714220 () Bool)

(declare-fun e!611099 () Bool)

(assert (=> b!1070444 (=> (not res!714220) (not e!611099))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39481 0))(
  ( (V!39482 (val!12930 Int)) )
))
(declare-datatypes ((ValueCell!12176 0))(
  ( (ValueCellFull!12176 (v!15547 V!39481)) (EmptyCell!12176) )
))
(declare-datatypes ((array!68458 0))(
  ( (array!68459 (arr!32922 (Array (_ BitVec 32) ValueCell!12176)) (size!33459 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68458)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68460 0))(
  ( (array!68461 (arr!32923 (Array (_ BitVec 32) (_ BitVec 64))) (size!33460 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68460)

(assert (=> b!1070444 (= res!714220 (and (= (size!33459 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33460 _keys!1163) (size!33459 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1070446 () Bool)

(declare-fun res!714221 () Bool)

(assert (=> b!1070446 (=> (not res!714221) (not e!611099))))

(declare-datatypes ((List!23098 0))(
  ( (Nil!23095) (Cons!23094 (h!24303 (_ BitVec 64)) (t!32436 List!23098)) )
))
(declare-fun arrayNoDuplicates!0 (array!68460 (_ BitVec 32) List!23098) Bool)

(assert (=> b!1070446 (= res!714221 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23095))))

(declare-fun b!1070447 () Bool)

(declare-fun e!611098 () Bool)

(assert (=> b!1070447 (= e!611098 tp_is_empty!25759)))

(declare-fun b!1070448 () Bool)

(declare-fun e!611101 () Bool)

(assert (=> b!1070448 (= e!611101 true)))

(declare-datatypes ((tuple2!16512 0))(
  ( (tuple2!16513 (_1!8266 (_ BitVec 64)) (_2!8266 V!39481)) )
))
(declare-datatypes ((List!23099 0))(
  ( (Nil!23096) (Cons!23095 (h!24304 tuple2!16512) (t!32437 List!23099)) )
))
(declare-datatypes ((ListLongMap!14493 0))(
  ( (ListLongMap!14494 (toList!7262 List!23099)) )
))
(declare-fun lt!473078 () ListLongMap!14493)

(declare-fun zeroValueBefore!47 () V!39481)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39481)

(declare-fun getCurrentListMap!4128 (array!68460 array!68458 (_ BitVec 32) (_ BitVec 32) V!39481 V!39481 (_ BitVec 32) Int) ListLongMap!14493)

(assert (=> b!1070448 (= lt!473078 (getCurrentListMap!4128 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070449 () Bool)

(declare-fun res!714217 () Bool)

(assert (=> b!1070449 (=> (not res!714217) (not e!611099))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68460 (_ BitVec 32)) Bool)

(assert (=> b!1070449 (= res!714217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1070450 () Bool)

(assert (=> b!1070450 (= e!611099 (not e!611101))))

(declare-fun res!714218 () Bool)

(assert (=> b!1070450 (=> res!714218 e!611101)))

(assert (=> b!1070450 (= res!714218 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!473075 () ListLongMap!14493)

(declare-fun lt!473076 () ListLongMap!14493)

(assert (=> b!1070450 (= lt!473075 lt!473076)))

(declare-datatypes ((Unit!35188 0))(
  ( (Unit!35189) )
))
(declare-fun lt!473077 () Unit!35188)

(declare-fun zeroValueAfter!47 () V!39481)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!837 (array!68460 array!68458 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39481 V!39481 V!39481 V!39481 (_ BitVec 32) Int) Unit!35188)

(assert (=> b!1070450 (= lt!473077 (lemmaNoChangeToArrayThenSameMapNoExtras!837 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3798 (array!68460 array!68458 (_ BitVec 32) (_ BitVec 32) V!39481 V!39481 (_ BitVec 32) Int) ListLongMap!14493)

(assert (=> b!1070450 (= lt!473076 (getCurrentListMapNoExtraKeys!3798 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070450 (= lt!473075 (getCurrentListMapNoExtraKeys!3798 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40342 () Bool)

(declare-fun tp!77303 () Bool)

(assert (=> mapNonEmpty!40342 (= mapRes!40342 (and tp!77303 e!611098))))

(declare-fun mapValue!40342 () ValueCell!12176)

(declare-fun mapRest!40342 () (Array (_ BitVec 32) ValueCell!12176))

(declare-fun mapKey!40342 () (_ BitVec 32))

(assert (=> mapNonEmpty!40342 (= (arr!32922 _values!955) (store mapRest!40342 mapKey!40342 mapValue!40342))))

(declare-fun res!714219 () Bool)

(assert (=> start!94716 (=> (not res!714219) (not e!611099))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94716 (= res!714219 (validMask!0 mask!1515))))

(assert (=> start!94716 e!611099))

(assert (=> start!94716 true))

(assert (=> start!94716 tp_is_empty!25759))

(declare-fun e!611102 () Bool)

(declare-fun array_inv!25316 (array!68458) Bool)

(assert (=> start!94716 (and (array_inv!25316 _values!955) e!611102)))

(assert (=> start!94716 tp!77304))

(declare-fun array_inv!25317 (array!68460) Bool)

(assert (=> start!94716 (array_inv!25317 _keys!1163)))

(declare-fun b!1070445 () Bool)

(assert (=> b!1070445 (= e!611102 (and e!611103 mapRes!40342))))

(declare-fun condMapEmpty!40342 () Bool)

(declare-fun mapDefault!40342 () ValueCell!12176)

