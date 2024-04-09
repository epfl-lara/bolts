; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94774 () Bool)

(assert start!94774)

(declare-fun b_free!21991 () Bool)

(declare-fun b_next!21991 () Bool)

(assert (=> start!94774 (= b_free!21991 (not b_next!21991))))

(declare-fun tp!77433 () Bool)

(declare-fun b_and!34839 () Bool)

(assert (=> start!94774 (= tp!77433 b_and!34839)))

(declare-fun b!1071133 () Bool)

(declare-fun res!714632 () Bool)

(declare-fun e!611612 () Bool)

(assert (=> b!1071133 (=> (not res!714632) (not e!611612))))

(declare-datatypes ((array!68536 0))(
  ( (array!68537 (arr!32960 (Array (_ BitVec 32) (_ BitVec 64))) (size!33497 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68536)

(declare-datatypes ((List!23126 0))(
  ( (Nil!23123) (Cons!23122 (h!24331 (_ BitVec 64)) (t!32466 List!23126)) )
))
(declare-fun arrayNoDuplicates!0 (array!68536 (_ BitVec 32) List!23126) Bool)

(assert (=> b!1071133 (= res!714632 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23123))))

(declare-fun b!1071134 () Bool)

(declare-fun res!714633 () Bool)

(assert (=> b!1071134 (=> (not res!714633) (not e!611612))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68536 (_ BitVec 32)) Bool)

(assert (=> b!1071134 (= res!714633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!714629 () Bool)

(assert (=> start!94774 (=> (not res!714629) (not e!611612))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94774 (= res!714629 (validMask!0 mask!1515))))

(assert (=> start!94774 e!611612))

(assert (=> start!94774 true))

(declare-fun tp_is_empty!25801 () Bool)

(assert (=> start!94774 tp_is_empty!25801))

(declare-datatypes ((V!39537 0))(
  ( (V!39538 (val!12951 Int)) )
))
(declare-datatypes ((ValueCell!12197 0))(
  ( (ValueCellFull!12197 (v!15568 V!39537)) (EmptyCell!12197) )
))
(declare-datatypes ((array!68538 0))(
  ( (array!68539 (arr!32961 (Array (_ BitVec 32) ValueCell!12197)) (size!33498 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68538)

(declare-fun e!611614 () Bool)

(declare-fun array_inv!25340 (array!68538) Bool)

(assert (=> start!94774 (and (array_inv!25340 _values!955) e!611614)))

(assert (=> start!94774 tp!77433))

(declare-fun array_inv!25341 (array!68536) Bool)

(assert (=> start!94774 (array_inv!25341 _keys!1163)))

(declare-fun b!1071135 () Bool)

(declare-fun e!611610 () Bool)

(assert (=> b!1071135 (= e!611610 tp_is_empty!25801)))

(declare-fun mapNonEmpty!40408 () Bool)

(declare-fun mapRes!40408 () Bool)

(declare-fun tp!77432 () Bool)

(declare-fun e!611608 () Bool)

(assert (=> mapNonEmpty!40408 (= mapRes!40408 (and tp!77432 e!611608))))

(declare-fun mapKey!40408 () (_ BitVec 32))

(declare-fun mapRest!40408 () (Array (_ BitVec 32) ValueCell!12197))

(declare-fun mapValue!40408 () ValueCell!12197)

(assert (=> mapNonEmpty!40408 (= (arr!32961 _values!955) (store mapRest!40408 mapKey!40408 mapValue!40408))))

(declare-datatypes ((tuple2!16542 0))(
  ( (tuple2!16543 (_1!8281 (_ BitVec 64)) (_2!8281 V!39537)) )
))
(declare-datatypes ((List!23127 0))(
  ( (Nil!23124) (Cons!23123 (h!24332 tuple2!16542) (t!32467 List!23127)) )
))
(declare-datatypes ((ListLongMap!14523 0))(
  ( (ListLongMap!14524 (toList!7277 List!23127)) )
))
(declare-fun lt!473692 () ListLongMap!14523)

(declare-fun lt!473693 () tuple2!16542)

(declare-fun b!1071136 () Bool)

(declare-fun e!611611 () Bool)

(declare-fun lt!473697 () ListLongMap!14523)

(declare-fun +!3134 (ListLongMap!14523 tuple2!16542) ListLongMap!14523)

(assert (=> b!1071136 (= e!611611 (= lt!473692 (+!3134 lt!473697 lt!473693)))))

(declare-fun b!1071137 () Bool)

(declare-fun e!611609 () Bool)

(assert (=> b!1071137 (= e!611612 (not e!611609))))

(declare-fun res!714631 () Bool)

(assert (=> b!1071137 (=> res!714631 e!611609)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1071137 (= res!714631 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!473686 () ListLongMap!14523)

(assert (=> b!1071137 (= lt!473686 lt!473697)))

(declare-fun zeroValueBefore!47 () V!39537)

(declare-fun minValue!907 () V!39537)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39537)

(declare-datatypes ((Unit!35217 0))(
  ( (Unit!35218) )
))
(declare-fun lt!473688 () Unit!35217)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!851 (array!68536 array!68538 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39537 V!39537 V!39537 V!39537 (_ BitVec 32) Int) Unit!35217)

(assert (=> b!1071137 (= lt!473688 (lemmaNoChangeToArrayThenSameMapNoExtras!851 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3812 (array!68536 array!68538 (_ BitVec 32) (_ BitVec 32) V!39537 V!39537 (_ BitVec 32) Int) ListLongMap!14523)

(assert (=> b!1071137 (= lt!473697 (getCurrentListMapNoExtraKeys!3812 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071137 (= lt!473686 (getCurrentListMapNoExtraKeys!3812 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071138 () Bool)

(assert (=> b!1071138 (= e!611608 tp_is_empty!25801)))

(declare-fun b!1071139 () Bool)

(declare-fun res!714628 () Bool)

(assert (=> b!1071139 (=> (not res!714628) (not e!611612))))

(assert (=> b!1071139 (= res!714628 (and (= (size!33498 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33497 _keys!1163) (size!33498 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1071140 () Bool)

(assert (=> b!1071140 (= e!611609 true)))

(declare-fun lt!473690 () ListLongMap!14523)

(declare-fun lt!473691 () ListLongMap!14523)

(declare-fun -!671 (ListLongMap!14523 (_ BitVec 64)) ListLongMap!14523)

(assert (=> b!1071140 (= lt!473690 (-!671 lt!473691 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!473696 () ListLongMap!14523)

(declare-fun lt!473685 () ListLongMap!14523)

(assert (=> b!1071140 (= lt!473696 lt!473685)))

(declare-fun lt!473689 () Unit!35217)

(declare-fun addCommutativeForDiffKeys!715 (ListLongMap!14523 (_ BitVec 64) V!39537 (_ BitVec 64) V!39537) Unit!35217)

(assert (=> b!1071140 (= lt!473689 (addCommutativeForDiffKeys!715 lt!473686 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!473695 () ListLongMap!14523)

(assert (=> b!1071140 (= (-!671 lt!473685 #b0000000000000000000000000000000000000000000000000000000000000000) lt!473695)))

(declare-fun lt!473687 () tuple2!16542)

(assert (=> b!1071140 (= lt!473685 (+!3134 lt!473695 lt!473687))))

(declare-fun lt!473694 () Unit!35217)

(declare-fun addThenRemoveForNewKeyIsSame!45 (ListLongMap!14523 (_ BitVec 64) V!39537) Unit!35217)

(assert (=> b!1071140 (= lt!473694 (addThenRemoveForNewKeyIsSame!45 lt!473695 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1071140 (= lt!473695 (+!3134 lt!473686 lt!473693))))

(assert (=> b!1071140 e!611611))

(declare-fun res!714630 () Bool)

(assert (=> b!1071140 (=> (not res!714630) (not e!611611))))

(assert (=> b!1071140 (= res!714630 (= lt!473691 lt!473696))))

(assert (=> b!1071140 (= lt!473696 (+!3134 (+!3134 lt!473686 lt!473687) lt!473693))))

(assert (=> b!1071140 (= lt!473693 (tuple2!16543 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071140 (= lt!473687 (tuple2!16543 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun getCurrentListMap!4143 (array!68536 array!68538 (_ BitVec 32) (_ BitVec 32) V!39537 V!39537 (_ BitVec 32) Int) ListLongMap!14523)

(assert (=> b!1071140 (= lt!473692 (getCurrentListMap!4143 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071140 (= lt!473691 (getCurrentListMap!4143 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071141 () Bool)

(assert (=> b!1071141 (= e!611614 (and e!611610 mapRes!40408))))

(declare-fun condMapEmpty!40408 () Bool)

(declare-fun mapDefault!40408 () ValueCell!12197)

