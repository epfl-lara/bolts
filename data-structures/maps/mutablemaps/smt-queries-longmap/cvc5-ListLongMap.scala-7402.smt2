; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94240 () Bool)

(assert start!94240)

(declare-fun b_free!21589 () Bool)

(declare-fun b_next!21589 () Bool)

(assert (=> start!94240 (= b_free!21589 (not b_next!21589))))

(declare-fun tp!76205 () Bool)

(declare-fun b_and!34367 () Bool)

(assert (=> start!94240 (= tp!76205 b_and!34367)))

(declare-fun mapNonEmpty!39784 () Bool)

(declare-fun mapRes!39784 () Bool)

(declare-fun tp!76206 () Bool)

(declare-fun e!607312 () Bool)

(assert (=> mapNonEmpty!39784 (= mapRes!39784 (and tp!76206 e!607312))))

(declare-datatypes ((V!39001 0))(
  ( (V!39002 (val!12750 Int)) )
))
(declare-datatypes ((ValueCell!11996 0))(
  ( (ValueCellFull!11996 (v!15363 V!39001)) (EmptyCell!11996) )
))
(declare-fun mapRest!39784 () (Array (_ BitVec 32) ValueCell!11996))

(declare-fun mapKey!39784 () (_ BitVec 32))

(declare-datatypes ((array!67758 0))(
  ( (array!67759 (arr!32578 (Array (_ BitVec 32) ValueCell!11996)) (size!33115 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67758)

(declare-fun mapValue!39784 () ValueCell!11996)

(assert (=> mapNonEmpty!39784 (= (arr!32578 _values!955) (store mapRest!39784 mapKey!39784 mapValue!39784))))

(declare-fun b!1065271 () Bool)

(declare-fun res!711172 () Bool)

(declare-fun e!607311 () Bool)

(assert (=> b!1065271 (=> (not res!711172) (not e!607311))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67760 0))(
  ( (array!67761 (arr!32579 (Array (_ BitVec 32) (_ BitVec 64))) (size!33116 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67760)

(assert (=> b!1065271 (= res!711172 (and (= (size!33115 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33116 _keys!1163) (size!33115 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!711170 () Bool)

(assert (=> start!94240 (=> (not res!711170) (not e!607311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94240 (= res!711170 (validMask!0 mask!1515))))

(assert (=> start!94240 e!607311))

(assert (=> start!94240 true))

(declare-fun tp_is_empty!25399 () Bool)

(assert (=> start!94240 tp_is_empty!25399))

(declare-fun e!607314 () Bool)

(declare-fun array_inv!25062 (array!67758) Bool)

(assert (=> start!94240 (and (array_inv!25062 _values!955) e!607314)))

(assert (=> start!94240 tp!76205))

(declare-fun array_inv!25063 (array!67760) Bool)

(assert (=> start!94240 (array_inv!25063 _keys!1163)))

(declare-fun b!1065272 () Bool)

(declare-fun e!607310 () Bool)

(assert (=> b!1065272 (= e!607310 tp_is_empty!25399)))

(declare-fun b!1065273 () Bool)

(declare-fun res!711173 () Bool)

(assert (=> b!1065273 (=> (not res!711173) (not e!607311))))

(declare-datatypes ((List!22837 0))(
  ( (Nil!22834) (Cons!22833 (h!24042 (_ BitVec 64)) (t!32163 List!22837)) )
))
(declare-fun arrayNoDuplicates!0 (array!67760 (_ BitVec 32) List!22837) Bool)

(assert (=> b!1065273 (= res!711173 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22834))))

(declare-fun b!1065274 () Bool)

(declare-fun e!607315 () Bool)

(assert (=> b!1065274 (= e!607315 true)))

(declare-datatypes ((tuple2!16238 0))(
  ( (tuple2!16239 (_1!8129 (_ BitVec 64)) (_2!8129 V!39001)) )
))
(declare-datatypes ((List!22838 0))(
  ( (Nil!22835) (Cons!22834 (h!24043 tuple2!16238) (t!32164 List!22838)) )
))
(declare-datatypes ((ListLongMap!14219 0))(
  ( (ListLongMap!14220 (toList!7125 List!22838)) )
))
(declare-fun lt!469711 () ListLongMap!14219)

(declare-fun lt!469707 () ListLongMap!14219)

(declare-fun -!593 (ListLongMap!14219 (_ BitVec 64)) ListLongMap!14219)

(assert (=> b!1065274 (= lt!469711 (-!593 lt!469707 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!469714 () ListLongMap!14219)

(declare-fun lt!469713 () ListLongMap!14219)

(assert (=> b!1065274 (= (-!593 lt!469714 #b0000000000000000000000000000000000000000000000000000000000000000) lt!469713)))

(declare-datatypes ((Unit!34912 0))(
  ( (Unit!34913) )
))
(declare-fun lt!469709 () Unit!34912)

(declare-fun zeroValueBefore!47 () V!39001)

(declare-fun addThenRemoveForNewKeyIsSame!2 (ListLongMap!14219 (_ BitVec 64) V!39001) Unit!34912)

(assert (=> b!1065274 (= lt!469709 (addThenRemoveForNewKeyIsSame!2 lt!469713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!469710 () ListLongMap!14219)

(declare-fun lt!469708 () ListLongMap!14219)

(assert (=> b!1065274 (and (= lt!469707 lt!469714) (= lt!469710 lt!469708))))

(declare-fun +!3084 (ListLongMap!14219 tuple2!16238) ListLongMap!14219)

(assert (=> b!1065274 (= lt!469714 (+!3084 lt!469713 (tuple2!16239 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun minValue!907 () V!39001)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39001)

(declare-fun getCurrentListMap!4047 (array!67760 array!67758 (_ BitVec 32) (_ BitVec 32) V!39001 V!39001 (_ BitVec 32) Int) ListLongMap!14219)

(assert (=> b!1065274 (= lt!469710 (getCurrentListMap!4047 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065274 (= lt!469707 (getCurrentListMap!4047 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065275 () Bool)

(declare-fun res!711169 () Bool)

(assert (=> b!1065275 (=> (not res!711169) (not e!607311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67760 (_ BitVec 32)) Bool)

(assert (=> b!1065275 (= res!711169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1065276 () Bool)

(assert (=> b!1065276 (= e!607314 (and e!607310 mapRes!39784))))

(declare-fun condMapEmpty!39784 () Bool)

(declare-fun mapDefault!39784 () ValueCell!11996)

