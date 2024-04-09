; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94328 () Bool)

(assert start!94328)

(declare-fun b_free!21655 () Bool)

(declare-fun b_next!21655 () Bool)

(assert (=> start!94328 (= b_free!21655 (not b_next!21655))))

(declare-fun tp!76407 () Bool)

(declare-fun b_and!34445 () Bool)

(assert (=> start!94328 (= tp!76407 b_and!34445)))

(declare-fun b!1066247 () Bool)

(declare-fun res!711749 () Bool)

(declare-fun e!608025 () Bool)

(assert (=> b!1066247 (=> (not res!711749) (not e!608025))))

(declare-datatypes ((array!67888 0))(
  ( (array!67889 (arr!32642 (Array (_ BitVec 32) (_ BitVec 64))) (size!33179 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67888)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67888 (_ BitVec 32)) Bool)

(assert (=> b!1066247 (= res!711749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1066248 () Bool)

(declare-fun e!608027 () Bool)

(declare-fun tp_is_empty!25465 () Bool)

(assert (=> b!1066248 (= e!608027 tp_is_empty!25465)))

(declare-fun b!1066249 () Bool)

(declare-fun e!608023 () Bool)

(assert (=> b!1066249 (= e!608023 true)))

(declare-datatypes ((V!39089 0))(
  ( (V!39090 (val!12783 Int)) )
))
(declare-datatypes ((tuple2!16296 0))(
  ( (tuple2!16297 (_1!8158 (_ BitVec 64)) (_2!8158 V!39089)) )
))
(declare-datatypes ((List!22891 0))(
  ( (Nil!22888) (Cons!22887 (h!24096 tuple2!16296) (t!32219 List!22891)) )
))
(declare-datatypes ((ListLongMap!14277 0))(
  ( (ListLongMap!14278 (toList!7154 List!22891)) )
))
(declare-fun lt!470644 () ListLongMap!14277)

(declare-fun lt!470640 () ListLongMap!14277)

(declare-fun -!614 (ListLongMap!14277 (_ BitVec 64)) ListLongMap!14277)

(assert (=> b!1066249 (= lt!470644 (-!614 lt!470640 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470637 () ListLongMap!14277)

(declare-fun lt!470642 () ListLongMap!14277)

(assert (=> b!1066249 (= (-!614 lt!470637 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470642)))

(declare-datatypes ((Unit!34972 0))(
  ( (Unit!34973) )
))
(declare-fun lt!470639 () Unit!34972)

(declare-fun zeroValueBefore!47 () V!39089)

(declare-fun addThenRemoveForNewKeyIsSame!23 (ListLongMap!14277 (_ BitVec 64) V!39089) Unit!34972)

(assert (=> b!1066249 (= lt!470639 (addThenRemoveForNewKeyIsSame!23 lt!470642 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470643 () ListLongMap!14277)

(declare-fun lt!470638 () ListLongMap!14277)

(assert (=> b!1066249 (and (= lt!470640 lt!470637) (= lt!470643 lt!470638))))

(declare-fun +!3105 (ListLongMap!14277 tuple2!16296) ListLongMap!14277)

(assert (=> b!1066249 (= lt!470637 (+!3105 lt!470642 (tuple2!16297 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-datatypes ((ValueCell!12029 0))(
  ( (ValueCellFull!12029 (v!15397 V!39089)) (EmptyCell!12029) )
))
(declare-datatypes ((array!67890 0))(
  ( (array!67891 (arr!32643 (Array (_ BitVec 32) ValueCell!12029)) (size!33180 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67890)

(declare-fun minValue!907 () V!39089)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39089)

(declare-fun getCurrentListMap!4068 (array!67888 array!67890 (_ BitVec 32) (_ BitVec 32) V!39089 V!39089 (_ BitVec 32) Int) ListLongMap!14277)

(assert (=> b!1066249 (= lt!470643 (getCurrentListMap!4068 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066249 (= lt!470640 (getCurrentListMap!4068 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066250 () Bool)

(declare-fun res!711746 () Bool)

(assert (=> b!1066250 (=> (not res!711746) (not e!608025))))

(declare-datatypes ((List!22892 0))(
  ( (Nil!22889) (Cons!22888 (h!24097 (_ BitVec 64)) (t!32220 List!22892)) )
))
(declare-fun arrayNoDuplicates!0 (array!67888 (_ BitVec 32) List!22892) Bool)

(assert (=> b!1066250 (= res!711746 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22889))))

(declare-fun b!1066251 () Bool)

(declare-fun res!711747 () Bool)

(assert (=> b!1066251 (=> (not res!711747) (not e!608025))))

(assert (=> b!1066251 (= res!711747 (and (= (size!33180 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33179 _keys!1163) (size!33180 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39886 () Bool)

(declare-fun mapRes!39886 () Bool)

(declare-fun tp!76406 () Bool)

(assert (=> mapNonEmpty!39886 (= mapRes!39886 (and tp!76406 e!608027))))

(declare-fun mapRest!39886 () (Array (_ BitVec 32) ValueCell!12029))

(declare-fun mapKey!39886 () (_ BitVec 32))

(declare-fun mapValue!39886 () ValueCell!12029)

(assert (=> mapNonEmpty!39886 (= (arr!32643 _values!955) (store mapRest!39886 mapKey!39886 mapValue!39886))))

(declare-fun b!1066252 () Bool)

(declare-fun e!608028 () Bool)

(declare-fun e!608024 () Bool)

(assert (=> b!1066252 (= e!608028 (and e!608024 mapRes!39886))))

(declare-fun condMapEmpty!39886 () Bool)

(declare-fun mapDefault!39886 () ValueCell!12029)

