; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94844 () Bool)

(assert start!94844)

(declare-fun b_free!22037 () Bool)

(declare-fun b_next!22037 () Bool)

(assert (=> start!94844 (= b_free!22037 (not b_next!22037))))

(declare-fun tp!77574 () Bool)

(declare-fun b_and!34897 () Bool)

(assert (=> start!94844 (= tp!77574 b_and!34897)))

(declare-fun b!1071946 () Bool)

(declare-fun e!612216 () Bool)

(declare-fun e!612220 () Bool)

(assert (=> b!1071946 (= e!612216 (not e!612220))))

(declare-fun res!715134 () Bool)

(assert (=> b!1071946 (=> res!715134 e!612220)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1071946 (= res!715134 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39597 0))(
  ( (V!39598 (val!12974 Int)) )
))
(declare-datatypes ((tuple2!16578 0))(
  ( (tuple2!16579 (_1!8299 (_ BitVec 64)) (_2!8299 V!39597)) )
))
(declare-datatypes ((List!23160 0))(
  ( (Nil!23157) (Cons!23156 (h!24365 tuple2!16578) (t!32502 List!23160)) )
))
(declare-datatypes ((ListLongMap!14559 0))(
  ( (ListLongMap!14560 (toList!7295 List!23160)) )
))
(declare-fun lt!474740 () ListLongMap!14559)

(declare-fun lt!474742 () ListLongMap!14559)

(assert (=> b!1071946 (= lt!474740 lt!474742)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39597)

(declare-datatypes ((Unit!35253 0))(
  ( (Unit!35254) )
))
(declare-fun lt!474749 () Unit!35253)

(declare-fun minValue!907 () V!39597)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12220 0))(
  ( (ValueCellFull!12220 (v!15592 V!39597)) (EmptyCell!12220) )
))
(declare-datatypes ((array!68624 0))(
  ( (array!68625 (arr!33003 (Array (_ BitVec 32) ValueCell!12220)) (size!33540 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68624)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39597)

(declare-datatypes ((array!68626 0))(
  ( (array!68627 (arr!33004 (Array (_ BitVec 32) (_ BitVec 64))) (size!33541 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68626)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!866 (array!68626 array!68624 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39597 V!39597 V!39597 V!39597 (_ BitVec 32) Int) Unit!35253)

(assert (=> b!1071946 (= lt!474749 (lemmaNoChangeToArrayThenSameMapNoExtras!866 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3827 (array!68626 array!68624 (_ BitVec 32) (_ BitVec 32) V!39597 V!39597 (_ BitVec 32) Int) ListLongMap!14559)

(assert (=> b!1071946 (= lt!474742 (getCurrentListMapNoExtraKeys!3827 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071946 (= lt!474740 (getCurrentListMapNoExtraKeys!3827 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071947 () Bool)

(assert (=> b!1071947 (= e!612220 true)))

(declare-fun lt!474751 () ListLongMap!14559)

(declare-fun lt!474743 () ListLongMap!14559)

(declare-fun -!686 (ListLongMap!14559 (_ BitVec 64)) ListLongMap!14559)

(assert (=> b!1071947 (= lt!474751 (-!686 lt!474743 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!474747 () ListLongMap!14559)

(declare-fun lt!474748 () ListLongMap!14559)

(assert (=> b!1071947 (= lt!474747 lt!474748)))

(declare-fun lt!474745 () Unit!35253)

(declare-fun addCommutativeForDiffKeys!730 (ListLongMap!14559 (_ BitVec 64) V!39597 (_ BitVec 64) V!39597) Unit!35253)

(assert (=> b!1071947 (= lt!474745 (addCommutativeForDiffKeys!730 lt!474740 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!474741 () ListLongMap!14559)

(assert (=> b!1071947 (= (-!686 lt!474748 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474741)))

(declare-fun lt!474750 () tuple2!16578)

(declare-fun +!3150 (ListLongMap!14559 tuple2!16578) ListLongMap!14559)

(assert (=> b!1071947 (= lt!474748 (+!3150 lt!474741 lt!474750))))

(declare-fun lt!474744 () Unit!35253)

(declare-fun addThenRemoveForNewKeyIsSame!60 (ListLongMap!14559 (_ BitVec 64) V!39597) Unit!35253)

(assert (=> b!1071947 (= lt!474744 (addThenRemoveForNewKeyIsSame!60 lt!474741 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!474739 () tuple2!16578)

(assert (=> b!1071947 (= lt!474741 (+!3150 lt!474740 lt!474739))))

(declare-fun e!612214 () Bool)

(assert (=> b!1071947 e!612214))

(declare-fun res!715133 () Bool)

(assert (=> b!1071947 (=> (not res!715133) (not e!612214))))

(assert (=> b!1071947 (= res!715133 (= lt!474743 lt!474747))))

(assert (=> b!1071947 (= lt!474747 (+!3150 (+!3150 lt!474740 lt!474750) lt!474739))))

(assert (=> b!1071947 (= lt!474739 (tuple2!16579 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071947 (= lt!474750 (tuple2!16579 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!474746 () ListLongMap!14559)

(declare-fun getCurrentListMap!4158 (array!68626 array!68624 (_ BitVec 32) (_ BitVec 32) V!39597 V!39597 (_ BitVec 32) Int) ListLongMap!14559)

(assert (=> b!1071947 (= lt!474746 (getCurrentListMap!4158 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071947 (= lt!474743 (getCurrentListMap!4158 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071948 () Bool)

(declare-fun e!612215 () Bool)

(declare-fun tp_is_empty!25847 () Bool)

(assert (=> b!1071948 (= e!612215 tp_is_empty!25847)))

(declare-fun mapNonEmpty!40480 () Bool)

(declare-fun mapRes!40480 () Bool)

(declare-fun tp!77573 () Bool)

(declare-fun e!612217 () Bool)

(assert (=> mapNonEmpty!40480 (= mapRes!40480 (and tp!77573 e!612217))))

(declare-fun mapValue!40480 () ValueCell!12220)

(declare-fun mapKey!40480 () (_ BitVec 32))

(declare-fun mapRest!40480 () (Array (_ BitVec 32) ValueCell!12220))

(assert (=> mapNonEmpty!40480 (= (arr!33003 _values!955) (store mapRest!40480 mapKey!40480 mapValue!40480))))

(declare-fun b!1071950 () Bool)

(assert (=> b!1071950 (= e!612214 (= lt!474746 (+!3150 lt!474742 lt!474739)))))

(declare-fun b!1071951 () Bool)

(declare-fun res!715136 () Bool)

(assert (=> b!1071951 (=> (not res!715136) (not e!612216))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68626 (_ BitVec 32)) Bool)

(assert (=> b!1071951 (= res!715136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1071952 () Bool)

(assert (=> b!1071952 (= e!612217 tp_is_empty!25847)))

(declare-fun mapIsEmpty!40480 () Bool)

(assert (=> mapIsEmpty!40480 mapRes!40480))

(declare-fun b!1071953 () Bool)

(declare-fun res!715132 () Bool)

(assert (=> b!1071953 (=> (not res!715132) (not e!612216))))

(assert (=> b!1071953 (= res!715132 (and (= (size!33540 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33541 _keys!1163) (size!33540 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1071954 () Bool)

(declare-fun e!612218 () Bool)

(assert (=> b!1071954 (= e!612218 (and e!612215 mapRes!40480))))

(declare-fun condMapEmpty!40480 () Bool)

(declare-fun mapDefault!40480 () ValueCell!12220)

