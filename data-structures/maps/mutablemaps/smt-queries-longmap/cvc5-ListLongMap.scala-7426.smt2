; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94428 () Bool)

(assert start!94428)

(declare-fun b_free!21733 () Bool)

(declare-fun b_next!21733 () Bool)

(assert (=> start!94428 (= b_free!21733 (not b_next!21733))))

(declare-fun tp!76643 () Bool)

(declare-fun b_and!34535 () Bool)

(assert (=> start!94428 (= tp!76643 b_and!34535)))

(declare-fun b!1067302 () Bool)

(declare-fun res!712350 () Bool)

(declare-fun e!608779 () Bool)

(assert (=> b!1067302 (=> (not res!712350) (not e!608779))))

(declare-datatypes ((array!68040 0))(
  ( (array!68041 (arr!32717 (Array (_ BitVec 32) (_ BitVec 64))) (size!33254 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68040)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68040 (_ BitVec 32)) Bool)

(assert (=> b!1067302 (= res!712350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067303 () Bool)

(declare-fun e!608781 () Bool)

(declare-fun tp_is_empty!25543 () Bool)

(assert (=> b!1067303 (= e!608781 tp_is_empty!25543)))

(declare-fun b!1067304 () Bool)

(assert (=> b!1067304 (= e!608779 (not true))))

(declare-datatypes ((V!39193 0))(
  ( (V!39194 (val!12822 Int)) )
))
(declare-datatypes ((tuple2!16352 0))(
  ( (tuple2!16353 (_1!8186 (_ BitVec 64)) (_2!8186 V!39193)) )
))
(declare-datatypes ((List!22944 0))(
  ( (Nil!22941) (Cons!22940 (h!24149 tuple2!16352) (t!32274 List!22944)) )
))
(declare-datatypes ((ListLongMap!14333 0))(
  ( (ListLongMap!14334 (toList!7182 List!22944)) )
))
(declare-fun lt!471388 () ListLongMap!14333)

(declare-fun lt!471387 () ListLongMap!14333)

(assert (=> b!1067304 (= lt!471388 lt!471387)))

(declare-datatypes ((Unit!35030 0))(
  ( (Unit!35031) )
))
(declare-fun lt!471386 () Unit!35030)

(declare-datatypes ((ValueCell!12068 0))(
  ( (ValueCellFull!12068 (v!15437 V!39193)) (EmptyCell!12068) )
))
(declare-datatypes ((array!68042 0))(
  ( (array!68043 (arr!32718 (Array (_ BitVec 32) ValueCell!12068)) (size!33255 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68042)

(declare-fun minValue!907 () V!39193)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39193)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39193)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!766 (array!68040 array!68042 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39193 V!39193 V!39193 V!39193 (_ BitVec 32) Int) Unit!35030)

(assert (=> b!1067304 (= lt!471386 (lemmaNoChangeToArrayThenSameMapNoExtras!766 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3727 (array!68040 array!68042 (_ BitVec 32) (_ BitVec 32) V!39193 V!39193 (_ BitVec 32) Int) ListLongMap!14333)

(assert (=> b!1067304 (= lt!471387 (getCurrentListMapNoExtraKeys!3727 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067304 (= lt!471388 (getCurrentListMapNoExtraKeys!3727 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067305 () Bool)

(declare-fun e!608782 () Bool)

(declare-fun mapRes!40006 () Bool)

(assert (=> b!1067305 (= e!608782 (and e!608781 mapRes!40006))))

(declare-fun condMapEmpty!40006 () Bool)

(declare-fun mapDefault!40006 () ValueCell!12068)

