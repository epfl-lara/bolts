; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94500 () Bool)

(assert start!94500)

(declare-fun b_free!21791 () Bool)

(declare-fun b_next!21791 () Bool)

(assert (=> start!94500 (= b_free!21791 (not b_next!21791))))

(declare-fun tp!76821 () Bool)

(declare-fun b_and!34601 () Bool)

(assert (=> start!94500 (= tp!76821 b_and!34601)))

(declare-fun b!1068129 () Bool)

(declare-fun e!609405 () Bool)

(declare-fun tp_is_empty!25601 () Bool)

(assert (=> b!1068129 (= e!609405 tp_is_empty!25601)))

(declare-fun b!1068130 () Bool)

(declare-fun e!609407 () Bool)

(assert (=> b!1068130 (= e!609407 true)))

(declare-datatypes ((V!39269 0))(
  ( (V!39270 (val!12851 Int)) )
))
(declare-datatypes ((tuple2!16398 0))(
  ( (tuple2!16399 (_1!8209 (_ BitVec 64)) (_2!8209 V!39269)) )
))
(declare-datatypes ((List!22989 0))(
  ( (Nil!22986) (Cons!22985 (h!24194 tuple2!16398) (t!32321 List!22989)) )
))
(declare-datatypes ((ListLongMap!14379 0))(
  ( (ListLongMap!14380 (toList!7205 List!22989)) )
))
(declare-fun lt!471820 () ListLongMap!14379)

(declare-fun -!643 (ListLongMap!14379 (_ BitVec 64)) ListLongMap!14379)

(assert (=> b!1068130 (= (-!643 lt!471820 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471820)))

(declare-datatypes ((Unit!35076 0))(
  ( (Unit!35077) )
))
(declare-fun lt!471823 () Unit!35076)

(declare-fun removeNotPresentStillSame!52 (ListLongMap!14379 (_ BitVec 64)) Unit!35076)

(assert (=> b!1068130 (= lt!471823 (removeNotPresentStillSame!52 lt!471820 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1068131 () Bool)

(declare-fun e!609402 () Bool)

(assert (=> b!1068131 (= e!609402 e!609407)))

(declare-fun res!712865 () Bool)

(assert (=> b!1068131 (=> res!712865 e!609407)))

(declare-fun contains!6307 (ListLongMap!14379 (_ BitVec 64)) Bool)

(assert (=> b!1068131 (= res!712865 (contains!6307 lt!471820 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39269)

(declare-datatypes ((ValueCell!12097 0))(
  ( (ValueCellFull!12097 (v!15466 V!39269)) (EmptyCell!12097) )
))
(declare-datatypes ((array!68156 0))(
  ( (array!68157 (arr!32774 (Array (_ BitVec 32) ValueCell!12097)) (size!33311 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68156)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39269)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68158 0))(
  ( (array!68159 (arr!32775 (Array (_ BitVec 32) (_ BitVec 64))) (size!33312 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68158)

(declare-fun getCurrentListMap!4097 (array!68158 array!68156 (_ BitVec 32) (_ BitVec 32) V!39269 V!39269 (_ BitVec 32) Int) ListLongMap!14379)

(assert (=> b!1068131 (= lt!471820 (getCurrentListMap!4097 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40096 () Bool)

(declare-fun mapRes!40096 () Bool)

(assert (=> mapIsEmpty!40096 mapRes!40096))

(declare-fun b!1068132 () Bool)

(declare-fun e!609408 () Bool)

(assert (=> b!1068132 (= e!609408 tp_is_empty!25601)))

(declare-fun res!712864 () Bool)

(declare-fun e!609404 () Bool)

(assert (=> start!94500 (=> (not res!712864) (not e!609404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94500 (= res!712864 (validMask!0 mask!1515))))

(assert (=> start!94500 e!609404))

(assert (=> start!94500 true))

(assert (=> start!94500 tp_is_empty!25601))

(declare-fun e!609403 () Bool)

(declare-fun array_inv!25208 (array!68156) Bool)

(assert (=> start!94500 (and (array_inv!25208 _values!955) e!609403)))

(assert (=> start!94500 tp!76821))

(declare-fun array_inv!25209 (array!68158) Bool)

(assert (=> start!94500 (array_inv!25209 _keys!1163)))

(declare-fun b!1068133 () Bool)

(assert (=> b!1068133 (= e!609404 (not e!609402))))

(declare-fun res!712860 () Bool)

(assert (=> b!1068133 (=> res!712860 e!609402)))

(assert (=> b!1068133 (= res!712860 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!471822 () ListLongMap!14379)

(declare-fun lt!471821 () ListLongMap!14379)

(assert (=> b!1068133 (= lt!471822 lt!471821)))

(declare-fun lt!471824 () Unit!35076)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!39269)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!788 (array!68158 array!68156 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39269 V!39269 V!39269 V!39269 (_ BitVec 32) Int) Unit!35076)

(assert (=> b!1068133 (= lt!471824 (lemmaNoChangeToArrayThenSameMapNoExtras!788 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3749 (array!68158 array!68156 (_ BitVec 32) (_ BitVec 32) V!39269 V!39269 (_ BitVec 32) Int) ListLongMap!14379)

(assert (=> b!1068133 (= lt!471821 (getCurrentListMapNoExtraKeys!3749 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1068133 (= lt!471822 (getCurrentListMapNoExtraKeys!3749 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068134 () Bool)

(declare-fun res!712863 () Bool)

(assert (=> b!1068134 (=> (not res!712863) (not e!609404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68158 (_ BitVec 32)) Bool)

(assert (=> b!1068134 (= res!712863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40096 () Bool)

(declare-fun tp!76820 () Bool)

(assert (=> mapNonEmpty!40096 (= mapRes!40096 (and tp!76820 e!609405))))

(declare-fun mapValue!40096 () ValueCell!12097)

(declare-fun mapKey!40096 () (_ BitVec 32))

(declare-fun mapRest!40096 () (Array (_ BitVec 32) ValueCell!12097))

(assert (=> mapNonEmpty!40096 (= (arr!32774 _values!955) (store mapRest!40096 mapKey!40096 mapValue!40096))))

(declare-fun b!1068135 () Bool)

(assert (=> b!1068135 (= e!609403 (and e!609408 mapRes!40096))))

(declare-fun condMapEmpty!40096 () Bool)

(declare-fun mapDefault!40096 () ValueCell!12097)

