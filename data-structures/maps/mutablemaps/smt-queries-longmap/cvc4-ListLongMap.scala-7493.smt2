; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94970 () Bool)

(assert start!94970)

(declare-fun b_free!22139 () Bool)

(declare-fun b_next!22139 () Bool)

(assert (=> start!94970 (= b_free!22139 (not b_next!22139))))

(declare-fun tp!77883 () Bool)

(declare-fun b_and!35011 () Bool)

(assert (=> start!94970 (= tp!77883 b_and!35011)))

(declare-fun b!1073355 () Bool)

(declare-fun e!613250 () Bool)

(declare-fun tp_is_empty!25949 () Bool)

(assert (=> b!1073355 (= e!613250 tp_is_empty!25949)))

(declare-fun res!715982 () Bool)

(declare-fun e!613248 () Bool)

(assert (=> start!94970 (=> (not res!715982) (not e!613248))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94970 (= res!715982 (validMask!0 mask!1515))))

(assert (=> start!94970 e!613248))

(assert (=> start!94970 true))

(assert (=> start!94970 tp_is_empty!25949))

(declare-datatypes ((V!39733 0))(
  ( (V!39734 (val!13025 Int)) )
))
(declare-datatypes ((ValueCell!12271 0))(
  ( (ValueCellFull!12271 (v!15644 V!39733)) (EmptyCell!12271) )
))
(declare-datatypes ((array!68824 0))(
  ( (array!68825 (arr!33102 (Array (_ BitVec 32) ValueCell!12271)) (size!33639 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68824)

(declare-fun e!613252 () Bool)

(declare-fun array_inv!25442 (array!68824) Bool)

(assert (=> start!94970 (and (array_inv!25442 _values!955) e!613252)))

(assert (=> start!94970 tp!77883))

(declare-datatypes ((array!68826 0))(
  ( (array!68827 (arr!33103 (Array (_ BitVec 32) (_ BitVec 64))) (size!33640 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68826)

(declare-fun array_inv!25443 (array!68826) Bool)

(assert (=> start!94970 (array_inv!25443 _keys!1163)))

(declare-fun mapIsEmpty!40636 () Bool)

(declare-fun mapRes!40636 () Bool)

(assert (=> mapIsEmpty!40636 mapRes!40636))

(declare-fun b!1073356 () Bool)

(declare-fun e!613249 () Bool)

(assert (=> b!1073356 (= e!613249 tp_is_empty!25949)))

(declare-fun mapNonEmpty!40636 () Bool)

(declare-fun tp!77882 () Bool)

(assert (=> mapNonEmpty!40636 (= mapRes!40636 (and tp!77882 e!613250))))

(declare-fun mapKey!40636 () (_ BitVec 32))

(declare-fun mapValue!40636 () ValueCell!12271)

(declare-fun mapRest!40636 () (Array (_ BitVec 32) ValueCell!12271))

(assert (=> mapNonEmpty!40636 (= (arr!33102 _values!955) (store mapRest!40636 mapKey!40636 mapValue!40636))))

(declare-fun b!1073357 () Bool)

(assert (=> b!1073357 (= e!613248 false)))

(declare-datatypes ((tuple2!16654 0))(
  ( (tuple2!16655 (_1!8337 (_ BitVec 64)) (_2!8337 V!39733)) )
))
(declare-datatypes ((List!23233 0))(
  ( (Nil!23230) (Cons!23229 (h!24438 tuple2!16654) (t!32577 List!23233)) )
))
(declare-datatypes ((ListLongMap!14635 0))(
  ( (ListLongMap!14636 (toList!7333 List!23233)) )
))
(declare-fun lt!476014 () ListLongMap!14635)

(declare-fun minValue!907 () V!39733)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39733)

(declare-fun getCurrentListMapNoExtraKeys!3863 (array!68826 array!68824 (_ BitVec 32) (_ BitVec 32) V!39733 V!39733 (_ BitVec 32) Int) ListLongMap!14635)

(assert (=> b!1073357 (= lt!476014 (getCurrentListMapNoExtraKeys!3863 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!39733)

(declare-fun lt!476015 () ListLongMap!14635)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1073357 (= lt!476015 (getCurrentListMapNoExtraKeys!3863 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1073358 () Bool)

(assert (=> b!1073358 (= e!613252 (and e!613249 mapRes!40636))))

(declare-fun condMapEmpty!40636 () Bool)

(declare-fun mapDefault!40636 () ValueCell!12271)

