; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94264 () Bool)

(assert start!94264)

(declare-fun b_free!21613 () Bool)

(declare-fun b_next!21613 () Bool)

(assert (=> start!94264 (= b_free!21613 (not b_next!21613))))

(declare-fun tp!76277 () Bool)

(declare-fun b_and!34391 () Bool)

(assert (=> start!94264 (= tp!76277 b_and!34391)))

(declare-fun mapNonEmpty!39820 () Bool)

(declare-fun mapRes!39820 () Bool)

(declare-fun tp!76278 () Bool)

(declare-fun e!607529 () Bool)

(assert (=> mapNonEmpty!39820 (= mapRes!39820 (and tp!76278 e!607529))))

(declare-datatypes ((V!39033 0))(
  ( (V!39034 (val!12762 Int)) )
))
(declare-datatypes ((ValueCell!12008 0))(
  ( (ValueCellFull!12008 (v!15375 V!39033)) (EmptyCell!12008) )
))
(declare-fun mapRest!39820 () (Array (_ BitVec 32) ValueCell!12008))

(declare-fun mapKey!39820 () (_ BitVec 32))

(declare-datatypes ((array!67804 0))(
  ( (array!67805 (arr!32601 (Array (_ BitVec 32) ValueCell!12008)) (size!33138 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67804)

(declare-fun mapValue!39820 () ValueCell!12008)

(assert (=> mapNonEmpty!39820 (= (arr!32601 _values!955) (store mapRest!39820 mapKey!39820 mapValue!39820))))

(declare-fun b!1065559 () Bool)

(declare-fun e!607527 () Bool)

(declare-fun e!607526 () Bool)

(assert (=> b!1065559 (= e!607527 (not e!607526))))

(declare-fun res!711353 () Bool)

(assert (=> b!1065559 (=> res!711353 e!607526)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065559 (= res!711353 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16258 0))(
  ( (tuple2!16259 (_1!8139 (_ BitVec 64)) (_2!8139 V!39033)) )
))
(declare-datatypes ((List!22858 0))(
  ( (Nil!22855) (Cons!22854 (h!24063 tuple2!16258) (t!32184 List!22858)) )
))
(declare-datatypes ((ListLongMap!14239 0))(
  ( (ListLongMap!14240 (toList!7135 List!22858)) )
))
(declare-fun lt!469996 () ListLongMap!14239)

(declare-fun lt!469997 () ListLongMap!14239)

(assert (=> b!1065559 (= lt!469996 lt!469997)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39033)

(declare-datatypes ((Unit!34932 0))(
  ( (Unit!34933) )
))
(declare-fun lt!469995 () Unit!34932)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39033)

(declare-fun minValue!907 () V!39033)

(declare-datatypes ((array!67806 0))(
  ( (array!67807 (arr!32602 (Array (_ BitVec 32) (_ BitVec 64))) (size!33139 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67806)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!723 (array!67806 array!67804 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39033 V!39033 V!39033 V!39033 (_ BitVec 32) Int) Unit!34932)

(assert (=> b!1065559 (= lt!469995 (lemmaNoChangeToArrayThenSameMapNoExtras!723 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3684 (array!67806 array!67804 (_ BitVec 32) (_ BitVec 32) V!39033 V!39033 (_ BitVec 32) Int) ListLongMap!14239)

(assert (=> b!1065559 (= lt!469997 (getCurrentListMapNoExtraKeys!3684 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065559 (= lt!469996 (getCurrentListMapNoExtraKeys!3684 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065560 () Bool)

(declare-fun e!607530 () Bool)

(declare-fun tp_is_empty!25423 () Bool)

(assert (=> b!1065560 (= e!607530 tp_is_empty!25423)))

(declare-fun res!711350 () Bool)

(assert (=> start!94264 (=> (not res!711350) (not e!607527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94264 (= res!711350 (validMask!0 mask!1515))))

(assert (=> start!94264 e!607527))

(assert (=> start!94264 true))

(assert (=> start!94264 tp_is_empty!25423))

(declare-fun e!607531 () Bool)

(declare-fun array_inv!25082 (array!67804) Bool)

(assert (=> start!94264 (and (array_inv!25082 _values!955) e!607531)))

(assert (=> start!94264 tp!76277))

(declare-fun array_inv!25083 (array!67806) Bool)

(assert (=> start!94264 (array_inv!25083 _keys!1163)))

(declare-fun b!1065561 () Bool)

(declare-fun res!711352 () Bool)

(assert (=> b!1065561 (=> (not res!711352) (not e!607527))))

(declare-datatypes ((List!22859 0))(
  ( (Nil!22856) (Cons!22855 (h!24064 (_ BitVec 64)) (t!32185 List!22859)) )
))
(declare-fun arrayNoDuplicates!0 (array!67806 (_ BitVec 32) List!22859) Bool)

(assert (=> b!1065561 (= res!711352 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22856))))

(declare-fun b!1065562 () Bool)

(declare-fun res!711351 () Bool)

(assert (=> b!1065562 (=> (not res!711351) (not e!607527))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67806 (_ BitVec 32)) Bool)

(assert (=> b!1065562 (= res!711351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39820 () Bool)

(assert (=> mapIsEmpty!39820 mapRes!39820))

(declare-fun b!1065563 () Bool)

(declare-fun res!711349 () Bool)

(assert (=> b!1065563 (=> (not res!711349) (not e!607527))))

(assert (=> b!1065563 (= res!711349 (and (= (size!33138 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33139 _keys!1163) (size!33138 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1065564 () Bool)

(assert (=> b!1065564 (= e!607529 tp_is_empty!25423)))

(declare-fun b!1065565 () Bool)

(assert (=> b!1065565 (= e!607531 (and e!607530 mapRes!39820))))

(declare-fun condMapEmpty!39820 () Bool)

(declare-fun mapDefault!39820 () ValueCell!12008)

