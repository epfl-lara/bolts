; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94282 () Bool)

(assert start!94282)

(declare-fun b_free!21631 () Bool)

(declare-fun b_next!21631 () Bool)

(assert (=> start!94282 (= b_free!21631 (not b_next!21631))))

(declare-fun tp!76331 () Bool)

(declare-fun b_and!34409 () Bool)

(assert (=> start!94282 (= tp!76331 b_and!34409)))

(declare-fun b!1065777 () Bool)

(declare-fun res!711488 () Bool)

(declare-fun e!607693 () Bool)

(assert (=> b!1065777 (=> (not res!711488) (not e!607693))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39057 0))(
  ( (V!39058 (val!12771 Int)) )
))
(declare-datatypes ((ValueCell!12017 0))(
  ( (ValueCellFull!12017 (v!15384 V!39057)) (EmptyCell!12017) )
))
(declare-datatypes ((array!67840 0))(
  ( (array!67841 (arr!32619 (Array (_ BitVec 32) ValueCell!12017)) (size!33156 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67840)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67842 0))(
  ( (array!67843 (arr!32620 (Array (_ BitVec 32) (_ BitVec 64))) (size!33157 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67842)

(assert (=> b!1065777 (= res!711488 (and (= (size!33156 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33157 _keys!1163) (size!33156 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1065778 () Bool)

(declare-fun res!711487 () Bool)

(assert (=> b!1065778 (=> (not res!711487) (not e!607693))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67842 (_ BitVec 32)) Bool)

(assert (=> b!1065778 (= res!711487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1065779 () Bool)

(declare-fun e!607690 () Bool)

(declare-fun e!607691 () Bool)

(assert (=> b!1065779 (= e!607690 e!607691)))

(declare-fun res!711486 () Bool)

(assert (=> b!1065779 (=> res!711486 e!607691)))

(declare-datatypes ((tuple2!16274 0))(
  ( (tuple2!16275 (_1!8147 (_ BitVec 64)) (_2!8147 V!39057)) )
))
(declare-datatypes ((List!22873 0))(
  ( (Nil!22870) (Cons!22869 (h!24078 tuple2!16274) (t!32199 List!22873)) )
))
(declare-datatypes ((ListLongMap!14255 0))(
  ( (ListLongMap!14256 (toList!7143 List!22873)) )
))
(declare-fun lt!470214 () ListLongMap!14255)

(declare-fun lt!470210 () ListLongMap!14255)

(declare-fun -!606 (ListLongMap!14255 (_ BitVec 64)) ListLongMap!14255)

(assert (=> b!1065779 (= res!711486 (not (= (-!606 lt!470214 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470210)))))

(declare-fun lt!470212 () ListLongMap!14255)

(declare-fun lt!470209 () ListLongMap!14255)

(assert (=> b!1065779 (= (-!606 lt!470212 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470209)))

(declare-datatypes ((Unit!34948 0))(
  ( (Unit!34949) )
))
(declare-fun lt!470215 () Unit!34948)

(declare-fun zeroValueBefore!47 () V!39057)

(declare-fun addThenRemoveForNewKeyIsSame!15 (ListLongMap!14255 (_ BitVec 64) V!39057) Unit!34948)

(assert (=> b!1065779 (= lt!470215 (addThenRemoveForNewKeyIsSame!15 lt!470209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470213 () ListLongMap!14255)

(assert (=> b!1065779 (and (= lt!470214 lt!470212) (= lt!470210 lt!470213))))

(declare-fun +!3097 (ListLongMap!14255 tuple2!16274) ListLongMap!14255)

(assert (=> b!1065779 (= lt!470212 (+!3097 lt!470209 (tuple2!16275 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun minValue!907 () V!39057)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39057)

(declare-fun getCurrentListMap!4060 (array!67842 array!67840 (_ BitVec 32) (_ BitVec 32) V!39057 V!39057 (_ BitVec 32) Int) ListLongMap!14255)

(assert (=> b!1065779 (= lt!470210 (getCurrentListMap!4060 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065779 (= lt!470214 (getCurrentListMap!4060 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065780 () Bool)

(declare-fun e!607696 () Bool)

(declare-fun tp_is_empty!25441 () Bool)

(assert (=> b!1065780 (= e!607696 tp_is_empty!25441)))

(declare-fun b!1065781 () Bool)

(assert (=> b!1065781 (= e!607693 (not e!607690))))

(declare-fun res!711491 () Bool)

(assert (=> b!1065781 (=> res!711491 e!607690)))

(assert (=> b!1065781 (= res!711491 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1065781 (= lt!470209 lt!470213)))

(declare-fun lt!470211 () Unit!34948)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!730 (array!67842 array!67840 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39057 V!39057 V!39057 V!39057 (_ BitVec 32) Int) Unit!34948)

(assert (=> b!1065781 (= lt!470211 (lemmaNoChangeToArrayThenSameMapNoExtras!730 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3691 (array!67842 array!67840 (_ BitVec 32) (_ BitVec 32) V!39057 V!39057 (_ BitVec 32) Int) ListLongMap!14255)

(assert (=> b!1065781 (= lt!470213 (getCurrentListMapNoExtraKeys!3691 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065781 (= lt!470209 (getCurrentListMapNoExtraKeys!3691 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!711490 () Bool)

(assert (=> start!94282 (=> (not res!711490) (not e!607693))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94282 (= res!711490 (validMask!0 mask!1515))))

(assert (=> start!94282 e!607693))

(assert (=> start!94282 true))

(assert (=> start!94282 tp_is_empty!25441))

(declare-fun e!607695 () Bool)

(declare-fun array_inv!25096 (array!67840) Bool)

(assert (=> start!94282 (and (array_inv!25096 _values!955) e!607695)))

(assert (=> start!94282 tp!76331))

(declare-fun array_inv!25097 (array!67842) Bool)

(assert (=> start!94282 (array_inv!25097 _keys!1163)))

(declare-fun mapIsEmpty!39847 () Bool)

(declare-fun mapRes!39847 () Bool)

(assert (=> mapIsEmpty!39847 mapRes!39847))

(declare-fun b!1065782 () Bool)

(assert (=> b!1065782 (= e!607695 (and e!607696 mapRes!39847))))

(declare-fun condMapEmpty!39847 () Bool)

(declare-fun mapDefault!39847 () ValueCell!12017)

