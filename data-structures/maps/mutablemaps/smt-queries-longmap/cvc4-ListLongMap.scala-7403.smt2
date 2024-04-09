; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94250 () Bool)

(assert start!94250)

(declare-fun b_free!21599 () Bool)

(declare-fun b_next!21599 () Bool)

(assert (=> start!94250 (= b_free!21599 (not b_next!21599))))

(declare-fun tp!76236 () Bool)

(declare-fun b_and!34377 () Bool)

(assert (=> start!94250 (= tp!76236 b_and!34377)))

(declare-fun b!1065391 () Bool)

(declare-fun e!607405 () Bool)

(declare-fun tp_is_empty!25409 () Bool)

(assert (=> b!1065391 (= e!607405 tp_is_empty!25409)))

(declare-fun b!1065392 () Bool)

(declare-fun res!711248 () Bool)

(declare-fun e!607402 () Bool)

(assert (=> b!1065392 (=> (not res!711248) (not e!607402))))

(declare-datatypes ((array!67778 0))(
  ( (array!67779 (arr!32588 (Array (_ BitVec 32) (_ BitVec 64))) (size!33125 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67778)

(declare-datatypes ((List!22846 0))(
  ( (Nil!22843) (Cons!22842 (h!24051 (_ BitVec 64)) (t!32172 List!22846)) )
))
(declare-fun arrayNoDuplicates!0 (array!67778 (_ BitVec 32) List!22846) Bool)

(assert (=> b!1065392 (= res!711248 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22843))))

(declare-fun b!1065393 () Bool)

(declare-fun e!607400 () Bool)

(assert (=> b!1065393 (= e!607400 tp_is_empty!25409)))

(declare-fun res!711247 () Bool)

(assert (=> start!94250 (=> (not res!711247) (not e!607402))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94250 (= res!711247 (validMask!0 mask!1515))))

(assert (=> start!94250 e!607402))

(assert (=> start!94250 true))

(assert (=> start!94250 tp_is_empty!25409))

(declare-datatypes ((V!39013 0))(
  ( (V!39014 (val!12755 Int)) )
))
(declare-datatypes ((ValueCell!12001 0))(
  ( (ValueCellFull!12001 (v!15368 V!39013)) (EmptyCell!12001) )
))
(declare-datatypes ((array!67780 0))(
  ( (array!67781 (arr!32589 (Array (_ BitVec 32) ValueCell!12001)) (size!33126 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67780)

(declare-fun e!607403 () Bool)

(declare-fun array_inv!25070 (array!67780) Bool)

(assert (=> start!94250 (and (array_inv!25070 _values!955) e!607403)))

(assert (=> start!94250 tp!76236))

(declare-fun array_inv!25071 (array!67778) Bool)

(assert (=> start!94250 (array_inv!25071 _keys!1163)))

(declare-fun b!1065394 () Bool)

(declare-fun e!607404 () Bool)

(assert (=> b!1065394 (= e!607402 (not e!607404))))

(declare-fun res!711246 () Bool)

(assert (=> b!1065394 (=> res!711246 e!607404)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065394 (= res!711246 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16246 0))(
  ( (tuple2!16247 (_1!8133 (_ BitVec 64)) (_2!8133 V!39013)) )
))
(declare-datatypes ((List!22847 0))(
  ( (Nil!22844) (Cons!22843 (h!24052 tuple2!16246) (t!32173 List!22847)) )
))
(declare-datatypes ((ListLongMap!14227 0))(
  ( (ListLongMap!14228 (toList!7129 List!22847)) )
))
(declare-fun lt!469834 () ListLongMap!14227)

(declare-fun lt!469830 () ListLongMap!14227)

(assert (=> b!1065394 (= lt!469834 lt!469830)))

(declare-fun zeroValueBefore!47 () V!39013)

(declare-fun minValue!907 () V!39013)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39013)

(declare-datatypes ((Unit!34920 0))(
  ( (Unit!34921) )
))
(declare-fun lt!469828 () Unit!34920)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!718 (array!67778 array!67780 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39013 V!39013 V!39013 V!39013 (_ BitVec 32) Int) Unit!34920)

(assert (=> b!1065394 (= lt!469828 (lemmaNoChangeToArrayThenSameMapNoExtras!718 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3679 (array!67778 array!67780 (_ BitVec 32) (_ BitVec 32) V!39013 V!39013 (_ BitVec 32) Int) ListLongMap!14227)

(assert (=> b!1065394 (= lt!469830 (getCurrentListMapNoExtraKeys!3679 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065394 (= lt!469834 (getCurrentListMapNoExtraKeys!3679 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065395 () Bool)

(declare-fun res!711244 () Bool)

(assert (=> b!1065395 (=> (not res!711244) (not e!607402))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67778 (_ BitVec 32)) Bool)

(assert (=> b!1065395 (= res!711244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39799 () Bool)

(declare-fun mapRes!39799 () Bool)

(assert (=> mapIsEmpty!39799 mapRes!39799))

(declare-fun b!1065396 () Bool)

(assert (=> b!1065396 (= e!607403 (and e!607400 mapRes!39799))))

(declare-fun condMapEmpty!39799 () Bool)

(declare-fun mapDefault!39799 () ValueCell!12001)

