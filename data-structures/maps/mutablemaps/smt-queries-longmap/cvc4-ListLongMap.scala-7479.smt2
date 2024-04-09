; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94862 () Bool)

(assert start!94862)

(declare-fun b_free!22055 () Bool)

(declare-fun b_next!22055 () Bool)

(assert (=> start!94862 (= b_free!22055 (not b_next!22055))))

(declare-fun tp!77628 () Bool)

(declare-fun b_and!34915 () Bool)

(assert (=> start!94862 (= tp!77628 b_and!34915)))

(declare-fun mapNonEmpty!40507 () Bool)

(declare-fun mapRes!40507 () Bool)

(declare-fun tp!77627 () Bool)

(declare-fun e!612406 () Bool)

(assert (=> mapNonEmpty!40507 (= mapRes!40507 (and tp!77627 e!612406))))

(declare-fun mapKey!40507 () (_ BitVec 32))

(declare-datatypes ((V!39621 0))(
  ( (V!39622 (val!12983 Int)) )
))
(declare-datatypes ((ValueCell!12229 0))(
  ( (ValueCellFull!12229 (v!15601 V!39621)) (EmptyCell!12229) )
))
(declare-fun mapRest!40507 () (Array (_ BitVec 32) ValueCell!12229))

(declare-fun mapValue!40507 () ValueCell!12229)

(declare-datatypes ((array!68660 0))(
  ( (array!68661 (arr!33021 (Array (_ BitVec 32) ValueCell!12229)) (size!33558 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68660)

(assert (=> mapNonEmpty!40507 (= (arr!33021 _values!955) (store mapRest!40507 mapKey!40507 mapValue!40507))))

(declare-fun mapIsEmpty!40507 () Bool)

(assert (=> mapIsEmpty!40507 mapRes!40507))

(declare-fun res!715297 () Bool)

(declare-fun e!612409 () Bool)

(assert (=> start!94862 (=> (not res!715297) (not e!612409))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94862 (= res!715297 (validMask!0 mask!1515))))

(assert (=> start!94862 e!612409))

(assert (=> start!94862 true))

(declare-fun tp_is_empty!25865 () Bool)

(assert (=> start!94862 tp_is_empty!25865))

(declare-fun e!612408 () Bool)

(declare-fun array_inv!25384 (array!68660) Bool)

(assert (=> start!94862 (and (array_inv!25384 _values!955) e!612408)))

(assert (=> start!94862 tp!77628))

(declare-datatypes ((array!68662 0))(
  ( (array!68663 (arr!33022 (Array (_ BitVec 32) (_ BitVec 64))) (size!33559 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68662)

(declare-fun array_inv!25385 (array!68662) Bool)

(assert (=> start!94862 (array_inv!25385 _keys!1163)))

(declare-fun b!1072189 () Bool)

(assert (=> b!1072189 (= e!612406 tp_is_empty!25865)))

(declare-fun b!1072190 () Bool)

(declare-fun res!715296 () Bool)

(assert (=> b!1072190 (=> (not res!715296) (not e!612409))))

(declare-datatypes ((List!23176 0))(
  ( (Nil!23173) (Cons!23172 (h!24381 (_ BitVec 64)) (t!32518 List!23176)) )
))
(declare-fun arrayNoDuplicates!0 (array!68662 (_ BitVec 32) List!23176) Bool)

(assert (=> b!1072190 (= res!715296 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23173))))

(declare-fun b!1072191 () Bool)

(declare-fun e!612404 () Bool)

(assert (=> b!1072191 (= e!612404 tp_is_empty!25865)))

(declare-fun b!1072192 () Bool)

(declare-fun e!612407 () Bool)

(assert (=> b!1072192 (= e!612407 true)))

(declare-datatypes ((tuple2!16596 0))(
  ( (tuple2!16597 (_1!8308 (_ BitVec 64)) (_2!8308 V!39621)) )
))
(declare-datatypes ((List!23177 0))(
  ( (Nil!23174) (Cons!23173 (h!24382 tuple2!16596) (t!32519 List!23177)) )
))
(declare-datatypes ((ListLongMap!14577 0))(
  ( (ListLongMap!14578 (toList!7304 List!23177)) )
))
(declare-fun lt!475097 () ListLongMap!14577)

(declare-fun lt!475090 () ListLongMap!14577)

(declare-fun -!694 (ListLongMap!14577 (_ BitVec 64)) ListLongMap!14577)

(assert (=> b!1072192 (= lt!475097 (-!694 lt!475090 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!475093 () ListLongMap!14577)

(declare-fun lt!475099 () ListLongMap!14577)

(assert (=> b!1072192 (= lt!475093 lt!475099)))

(declare-fun zeroValueBefore!47 () V!39621)

(declare-fun lt!475101 () ListLongMap!14577)

(declare-fun minValue!907 () V!39621)

(declare-datatypes ((Unit!35269 0))(
  ( (Unit!35270) )
))
(declare-fun lt!475095 () Unit!35269)

(declare-fun addCommutativeForDiffKeys!738 (ListLongMap!14577 (_ BitVec 64) V!39621 (_ BitVec 64) V!39621) Unit!35269)

(assert (=> b!1072192 (= lt!475095 (addCommutativeForDiffKeys!738 lt!475101 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!475100 () ListLongMap!14577)

(assert (=> b!1072192 (= (-!694 lt!475099 #b0000000000000000000000000000000000000000000000000000000000000000) lt!475100)))

(declare-fun lt!475094 () tuple2!16596)

(declare-fun +!3159 (ListLongMap!14577 tuple2!16596) ListLongMap!14577)

(assert (=> b!1072192 (= lt!475099 (+!3159 lt!475100 lt!475094))))

(declare-fun lt!475098 () Unit!35269)

(declare-fun addThenRemoveForNewKeyIsSame!68 (ListLongMap!14577 (_ BitVec 64) V!39621) Unit!35269)

(assert (=> b!1072192 (= lt!475098 (addThenRemoveForNewKeyIsSame!68 lt!475100 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!475092 () tuple2!16596)

(assert (=> b!1072192 (= lt!475100 (+!3159 lt!475101 lt!475092))))

(declare-fun e!612405 () Bool)

(assert (=> b!1072192 e!612405))

(declare-fun res!715298 () Bool)

(assert (=> b!1072192 (=> (not res!715298) (not e!612405))))

(assert (=> b!1072192 (= res!715298 (= lt!475090 lt!475093))))

(assert (=> b!1072192 (= lt!475093 (+!3159 (+!3159 lt!475101 lt!475094) lt!475092))))

(assert (=> b!1072192 (= lt!475092 (tuple2!16597 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1072192 (= lt!475094 (tuple2!16597 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39621)

(declare-fun lt!475102 () ListLongMap!14577)

(declare-fun getCurrentListMap!4166 (array!68662 array!68660 (_ BitVec 32) (_ BitVec 32) V!39621 V!39621 (_ BitVec 32) Int) ListLongMap!14577)

(assert (=> b!1072192 (= lt!475102 (getCurrentListMap!4166 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072192 (= lt!475090 (getCurrentListMap!4166 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072193 () Bool)

(declare-fun res!715295 () Bool)

(assert (=> b!1072193 (=> (not res!715295) (not e!612409))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68662 (_ BitVec 32)) Bool)

(assert (=> b!1072193 (= res!715295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1072194 () Bool)

(assert (=> b!1072194 (= e!612409 (not e!612407))))

(declare-fun res!715294 () Bool)

(assert (=> b!1072194 (=> res!715294 e!612407)))

(assert (=> b!1072194 (= res!715294 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!475096 () ListLongMap!14577)

(assert (=> b!1072194 (= lt!475101 lt!475096)))

(declare-fun lt!475091 () Unit!35269)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!874 (array!68662 array!68660 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39621 V!39621 V!39621 V!39621 (_ BitVec 32) Int) Unit!35269)

(assert (=> b!1072194 (= lt!475091 (lemmaNoChangeToArrayThenSameMapNoExtras!874 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3835 (array!68662 array!68660 (_ BitVec 32) (_ BitVec 32) V!39621 V!39621 (_ BitVec 32) Int) ListLongMap!14577)

(assert (=> b!1072194 (= lt!475096 (getCurrentListMapNoExtraKeys!3835 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072194 (= lt!475101 (getCurrentListMapNoExtraKeys!3835 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072195 () Bool)

(declare-fun res!715299 () Bool)

(assert (=> b!1072195 (=> (not res!715299) (not e!612409))))

(assert (=> b!1072195 (= res!715299 (and (= (size!33558 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33559 _keys!1163) (size!33558 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072196 () Bool)

(assert (=> b!1072196 (= e!612408 (and e!612404 mapRes!40507))))

(declare-fun condMapEmpty!40507 () Bool)

(declare-fun mapDefault!40507 () ValueCell!12229)

