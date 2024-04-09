; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94690 () Bool)

(assert start!94690)

(declare-fun b_free!21923 () Bool)

(declare-fun b_next!21923 () Bool)

(assert (=> start!94690 (= b_free!21923 (not b_next!21923))))

(declare-fun tp!77225 () Bool)

(declare-fun b_and!34761 () Bool)

(assert (=> start!94690 (= tp!77225 b_and!34761)))

(declare-fun b!1070131 () Bool)

(declare-fun res!714025 () Bool)

(declare-fun e!610865 () Bool)

(assert (=> b!1070131 (=> (not res!714025) (not e!610865))))

(declare-datatypes ((array!68412 0))(
  ( (array!68413 (arr!32899 (Array (_ BitVec 32) (_ BitVec 64))) (size!33436 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68412)

(declare-datatypes ((List!23080 0))(
  ( (Nil!23077) (Cons!23076 (h!24285 (_ BitVec 64)) (t!32418 List!23080)) )
))
(declare-fun arrayNoDuplicates!0 (array!68412 (_ BitVec 32) List!23080) Bool)

(assert (=> b!1070131 (= res!714025 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23077))))

(declare-fun b!1070132 () Bool)

(declare-fun e!610868 () Bool)

(declare-fun tp_is_empty!25733 () Bool)

(assert (=> b!1070132 (= e!610868 tp_is_empty!25733)))

(declare-fun mapIsEmpty!40303 () Bool)

(declare-fun mapRes!40303 () Bool)

(assert (=> mapIsEmpty!40303 mapRes!40303))

(declare-fun res!714024 () Bool)

(assert (=> start!94690 (=> (not res!714024) (not e!610865))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94690 (= res!714024 (validMask!0 mask!1515))))

(assert (=> start!94690 e!610865))

(assert (=> start!94690 true))

(assert (=> start!94690 tp_is_empty!25733))

(declare-datatypes ((V!39445 0))(
  ( (V!39446 (val!12917 Int)) )
))
(declare-datatypes ((ValueCell!12163 0))(
  ( (ValueCellFull!12163 (v!15534 V!39445)) (EmptyCell!12163) )
))
(declare-datatypes ((array!68414 0))(
  ( (array!68415 (arr!32900 (Array (_ BitVec 32) ValueCell!12163)) (size!33437 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68414)

(declare-fun e!610869 () Bool)

(declare-fun array_inv!25296 (array!68414) Bool)

(assert (=> start!94690 (and (array_inv!25296 _values!955) e!610869)))

(assert (=> start!94690 tp!77225))

(declare-fun array_inv!25297 (array!68412) Bool)

(assert (=> start!94690 (array_inv!25297 _keys!1163)))

(declare-fun mapNonEmpty!40303 () Bool)

(declare-fun tp!77226 () Bool)

(assert (=> mapNonEmpty!40303 (= mapRes!40303 (and tp!77226 e!610868))))

(declare-fun mapValue!40303 () ValueCell!12163)

(declare-fun mapRest!40303 () (Array (_ BitVec 32) ValueCell!12163))

(declare-fun mapKey!40303 () (_ BitVec 32))

(assert (=> mapNonEmpty!40303 (= (arr!32900 _values!955) (store mapRest!40303 mapKey!40303 mapValue!40303))))

(declare-fun b!1070133 () Bool)

(declare-fun res!714026 () Bool)

(assert (=> b!1070133 (=> (not res!714026) (not e!610865))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68412 (_ BitVec 32)) Bool)

(assert (=> b!1070133 (= res!714026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1070134 () Bool)

(declare-fun e!610867 () Bool)

(assert (=> b!1070134 (= e!610865 (not e!610867))))

(declare-fun res!714023 () Bool)

(assert (=> b!1070134 (=> res!714023 e!610867)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1070134 (= res!714023 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16494 0))(
  ( (tuple2!16495 (_1!8257 (_ BitVec 64)) (_2!8257 V!39445)) )
))
(declare-datatypes ((List!23081 0))(
  ( (Nil!23078) (Cons!23077 (h!24286 tuple2!16494) (t!32419 List!23081)) )
))
(declare-datatypes ((ListLongMap!14475 0))(
  ( (ListLongMap!14476 (toList!7253 List!23081)) )
))
(declare-fun lt!472920 () ListLongMap!14475)

(declare-fun lt!472922 () ListLongMap!14475)

(assert (=> b!1070134 (= lt!472920 lt!472922)))

(declare-fun zeroValueBefore!47 () V!39445)

(declare-fun minValue!907 () V!39445)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((Unit!35170 0))(
  ( (Unit!35171) )
))
(declare-fun lt!472921 () Unit!35170)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39445)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!828 (array!68412 array!68414 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39445 V!39445 V!39445 V!39445 (_ BitVec 32) Int) Unit!35170)

(assert (=> b!1070134 (= lt!472921 (lemmaNoChangeToArrayThenSameMapNoExtras!828 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3789 (array!68412 array!68414 (_ BitVec 32) (_ BitVec 32) V!39445 V!39445 (_ BitVec 32) Int) ListLongMap!14475)

(assert (=> b!1070134 (= lt!472922 (getCurrentListMapNoExtraKeys!3789 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070134 (= lt!472920 (getCurrentListMapNoExtraKeys!3789 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070135 () Bool)

(assert (=> b!1070135 (= e!610867 true)))

(declare-fun lt!472919 () ListLongMap!14475)

(declare-fun getCurrentListMap!4119 (array!68412 array!68414 (_ BitVec 32) (_ BitVec 32) V!39445 V!39445 (_ BitVec 32) Int) ListLongMap!14475)

(assert (=> b!1070135 (= lt!472919 (getCurrentListMap!4119 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070136 () Bool)

(declare-fun e!610866 () Bool)

(assert (=> b!1070136 (= e!610869 (and e!610866 mapRes!40303))))

(declare-fun condMapEmpty!40303 () Bool)

(declare-fun mapDefault!40303 () ValueCell!12163)

