; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94578 () Bool)

(assert start!94578)

(declare-fun b_free!21847 () Bool)

(declare-fun b_next!21847 () Bool)

(assert (=> start!94578 (= b_free!21847 (not b_next!21847))))

(declare-fun tp!76991 () Bool)

(declare-fun b_and!34667 () Bool)

(assert (=> start!94578 (= tp!76991 b_and!34667)))

(declare-fun mapNonEmpty!40183 () Bool)

(declare-fun mapRes!40183 () Bool)

(declare-fun tp!76992 () Bool)

(declare-fun e!610094 () Bool)

(assert (=> mapNonEmpty!40183 (= mapRes!40183 (and tp!76992 e!610094))))

(declare-fun mapKey!40183 () (_ BitVec 32))

(declare-datatypes ((V!39345 0))(
  ( (V!39346 (val!12879 Int)) )
))
(declare-datatypes ((ValueCell!12125 0))(
  ( (ValueCellFull!12125 (v!15495 V!39345)) (EmptyCell!12125) )
))
(declare-datatypes ((array!68262 0))(
  ( (array!68263 (arr!32826 (Array (_ BitVec 32) ValueCell!12125)) (size!33363 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68262)

(declare-fun mapRest!40183 () (Array (_ BitVec 32) ValueCell!12125))

(declare-fun mapValue!40183 () ValueCell!12125)

(assert (=> mapNonEmpty!40183 (= (arr!32826 _values!955) (store mapRest!40183 mapKey!40183 mapValue!40183))))

(declare-fun b!1069042 () Bool)

(declare-fun res!713425 () Bool)

(declare-fun e!610093 () Bool)

(assert (=> b!1069042 (=> (not res!713425) (not e!610093))))

(declare-datatypes ((array!68264 0))(
  ( (array!68265 (arr!32827 (Array (_ BitVec 32) (_ BitVec 64))) (size!33364 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68264)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68264 (_ BitVec 32)) Bool)

(assert (=> b!1069042 (= res!713425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1069043 () Bool)

(declare-fun e!610095 () Bool)

(assert (=> b!1069043 (= e!610095 true)))

(declare-datatypes ((tuple2!16438 0))(
  ( (tuple2!16439 (_1!8229 (_ BitVec 64)) (_2!8229 V!39345)) )
))
(declare-datatypes ((List!23025 0))(
  ( (Nil!23022) (Cons!23021 (h!24230 tuple2!16438) (t!32359 List!23025)) )
))
(declare-datatypes ((ListLongMap!14419 0))(
  ( (ListLongMap!14420 (toList!7225 List!23025)) )
))
(declare-fun lt!472367 () ListLongMap!14419)

(declare-fun -!659 (ListLongMap!14419 (_ BitVec 64)) ListLongMap!14419)

(assert (=> b!1069043 (= (-!659 lt!472367 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472367)))

(declare-datatypes ((Unit!35114 0))(
  ( (Unit!35115) )
))
(declare-fun lt!472365 () Unit!35114)

(declare-fun removeNotPresentStillSame!68 (ListLongMap!14419 (_ BitVec 64)) Unit!35114)

(assert (=> b!1069043 (= lt!472365 (removeNotPresentStillSame!68 lt!472367 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1069044 () Bool)

(declare-fun e!610090 () Bool)

(assert (=> b!1069044 (= e!610090 e!610095)))

(declare-fun res!713426 () Bool)

(assert (=> b!1069044 (=> res!713426 e!610095)))

(declare-fun contains!6323 (ListLongMap!14419 (_ BitVec 64)) Bool)

(assert (=> b!1069044 (= res!713426 (contains!6323 lt!472367 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!39345)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39345)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4112 (array!68264 array!68262 (_ BitVec 32) (_ BitVec 32) V!39345 V!39345 (_ BitVec 32) Int) ListLongMap!14419)

(assert (=> b!1069044 (= lt!472367 (getCurrentListMap!4112 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069045 () Bool)

(declare-fun res!713430 () Bool)

(assert (=> b!1069045 (=> (not res!713430) (not e!610093))))

(declare-datatypes ((List!23026 0))(
  ( (Nil!23023) (Cons!23022 (h!24231 (_ BitVec 64)) (t!32360 List!23026)) )
))
(declare-fun arrayNoDuplicates!0 (array!68264 (_ BitVec 32) List!23026) Bool)

(assert (=> b!1069045 (= res!713430 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23023))))

(declare-fun res!713429 () Bool)

(assert (=> start!94578 (=> (not res!713429) (not e!610093))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94578 (= res!713429 (validMask!0 mask!1515))))

(assert (=> start!94578 e!610093))

(assert (=> start!94578 true))

(declare-fun tp_is_empty!25657 () Bool)

(assert (=> start!94578 tp_is_empty!25657))

(declare-fun e!610096 () Bool)

(declare-fun array_inv!25248 (array!68262) Bool)

(assert (=> start!94578 (and (array_inv!25248 _values!955) e!610096)))

(assert (=> start!94578 tp!76991))

(declare-fun array_inv!25249 (array!68264) Bool)

(assert (=> start!94578 (array_inv!25249 _keys!1163)))

(declare-fun b!1069046 () Bool)

(declare-fun e!610092 () Bool)

(assert (=> b!1069046 (= e!610092 tp_is_empty!25657)))

(declare-fun mapIsEmpty!40183 () Bool)

(assert (=> mapIsEmpty!40183 mapRes!40183))

(declare-fun b!1069047 () Bool)

(declare-fun res!713428 () Bool)

(assert (=> b!1069047 (=> (not res!713428) (not e!610093))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1069047 (= res!713428 (and (= (size!33363 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33364 _keys!1163) (size!33363 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1069048 () Bool)

(assert (=> b!1069048 (= e!610093 (not e!610090))))

(declare-fun res!713427 () Bool)

(assert (=> b!1069048 (=> res!713427 e!610090)))

(assert (=> b!1069048 (= res!713427 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!472368 () ListLongMap!14419)

(declare-fun lt!472364 () ListLongMap!14419)

(assert (=> b!1069048 (= lt!472368 lt!472364)))

(declare-fun lt!472366 () Unit!35114)

(declare-fun zeroValueAfter!47 () V!39345)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!802 (array!68264 array!68262 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39345 V!39345 V!39345 V!39345 (_ BitVec 32) Int) Unit!35114)

(assert (=> b!1069048 (= lt!472366 (lemmaNoChangeToArrayThenSameMapNoExtras!802 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3763 (array!68264 array!68262 (_ BitVec 32) (_ BitVec 32) V!39345 V!39345 (_ BitVec 32) Int) ListLongMap!14419)

(assert (=> b!1069048 (= lt!472364 (getCurrentListMapNoExtraKeys!3763 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069048 (= lt!472368 (getCurrentListMapNoExtraKeys!3763 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069049 () Bool)

(assert (=> b!1069049 (= e!610096 (and e!610092 mapRes!40183))))

(declare-fun condMapEmpty!40183 () Bool)

(declare-fun mapDefault!40183 () ValueCell!12125)

