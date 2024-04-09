; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94270 () Bool)

(assert start!94270)

(declare-fun b_free!21619 () Bool)

(declare-fun b_next!21619 () Bool)

(assert (=> start!94270 (= b_free!21619 (not b_next!21619))))

(declare-fun tp!76295 () Bool)

(declare-fun b_and!34397 () Bool)

(assert (=> start!94270 (= tp!76295 b_and!34397)))

(declare-fun b!1065631 () Bool)

(declare-fun e!607582 () Bool)

(declare-fun tp_is_empty!25429 () Bool)

(assert (=> b!1065631 (= e!607582 tp_is_empty!25429)))

(declare-fun b!1065632 () Bool)

(declare-fun res!711397 () Bool)

(declare-fun e!607585 () Bool)

(assert (=> b!1065632 (=> (not res!711397) (not e!607585))))

(declare-datatypes ((array!67816 0))(
  ( (array!67817 (arr!32607 (Array (_ BitVec 32) (_ BitVec 64))) (size!33144 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67816)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67816 (_ BitVec 32)) Bool)

(assert (=> b!1065632 (= res!711397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!711395 () Bool)

(assert (=> start!94270 (=> (not res!711395) (not e!607585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94270 (= res!711395 (validMask!0 mask!1515))))

(assert (=> start!94270 e!607585))

(assert (=> start!94270 true))

(assert (=> start!94270 tp_is_empty!25429))

(declare-datatypes ((V!39041 0))(
  ( (V!39042 (val!12765 Int)) )
))
(declare-datatypes ((ValueCell!12011 0))(
  ( (ValueCellFull!12011 (v!15378 V!39041)) (EmptyCell!12011) )
))
(declare-datatypes ((array!67818 0))(
  ( (array!67819 (arr!32608 (Array (_ BitVec 32) ValueCell!12011)) (size!33145 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67818)

(declare-fun e!607583 () Bool)

(declare-fun array_inv!25086 (array!67818) Bool)

(assert (=> start!94270 (and (array_inv!25086 _values!955) e!607583)))

(assert (=> start!94270 tp!76295))

(declare-fun array_inv!25087 (array!67816) Bool)

(assert (=> start!94270 (array_inv!25087 _keys!1163)))

(declare-fun b!1065633 () Bool)

(declare-fun e!607584 () Bool)

(assert (=> b!1065633 (= e!607584 true)))

(declare-datatypes ((tuple2!16264 0))(
  ( (tuple2!16265 (_1!8142 (_ BitVec 64)) (_2!8142 V!39041)) )
))
(declare-datatypes ((List!22863 0))(
  ( (Nil!22860) (Cons!22859 (h!24068 tuple2!16264) (t!32189 List!22863)) )
))
(declare-datatypes ((ListLongMap!14245 0))(
  ( (ListLongMap!14246 (toList!7138 List!22863)) )
))
(declare-fun lt!470072 () ListLongMap!14245)

(declare-fun lt!470070 () ListLongMap!14245)

(declare-fun -!602 (ListLongMap!14245 (_ BitVec 64)) ListLongMap!14245)

(assert (=> b!1065633 (= lt!470072 (-!602 lt!470070 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470068 () ListLongMap!14245)

(declare-fun lt!470067 () ListLongMap!14245)

(assert (=> b!1065633 (= (-!602 lt!470068 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470067)))

(declare-datatypes ((Unit!34938 0))(
  ( (Unit!34939) )
))
(declare-fun lt!470073 () Unit!34938)

(declare-fun zeroValueBefore!47 () V!39041)

(declare-fun addThenRemoveForNewKeyIsSame!11 (ListLongMap!14245 (_ BitVec 64) V!39041) Unit!34938)

(assert (=> b!1065633 (= lt!470073 (addThenRemoveForNewKeyIsSame!11 lt!470067 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470069 () ListLongMap!14245)

(declare-fun lt!470074 () ListLongMap!14245)

(assert (=> b!1065633 (and (= lt!470070 lt!470068) (= lt!470069 lt!470074))))

(declare-fun +!3093 (ListLongMap!14245 tuple2!16264) ListLongMap!14245)

(assert (=> b!1065633 (= lt!470068 (+!3093 lt!470067 (tuple2!16265 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun minValue!907 () V!39041)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39041)

(declare-fun getCurrentListMap!4056 (array!67816 array!67818 (_ BitVec 32) (_ BitVec 32) V!39041 V!39041 (_ BitVec 32) Int) ListLongMap!14245)

(assert (=> b!1065633 (= lt!470069 (getCurrentListMap!4056 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065633 (= lt!470070 (getCurrentListMap!4056 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39829 () Bool)

(declare-fun mapRes!39829 () Bool)

(declare-fun tp!76296 () Bool)

(assert (=> mapNonEmpty!39829 (= mapRes!39829 (and tp!76296 e!607582))))

(declare-fun mapRest!39829 () (Array (_ BitVec 32) ValueCell!12011))

(declare-fun mapKey!39829 () (_ BitVec 32))

(declare-fun mapValue!39829 () ValueCell!12011)

(assert (=> mapNonEmpty!39829 (= (arr!32608 _values!955) (store mapRest!39829 mapKey!39829 mapValue!39829))))

(declare-fun b!1065634 () Bool)

(declare-fun e!607580 () Bool)

(assert (=> b!1065634 (= e!607583 (and e!607580 mapRes!39829))))

(declare-fun condMapEmpty!39829 () Bool)

(declare-fun mapDefault!39829 () ValueCell!12011)

