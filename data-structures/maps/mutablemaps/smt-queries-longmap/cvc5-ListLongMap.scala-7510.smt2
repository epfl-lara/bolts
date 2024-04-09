; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95272 () Bool)

(assert start!95272)

(declare-fun b_free!22237 () Bool)

(declare-fun b_next!22237 () Bool)

(assert (=> start!95272 (= b_free!22237 (not b_next!22237))))

(declare-fun tp!78210 () Bool)

(declare-fun b_and!35233 () Bool)

(assert (=> start!95272 (= tp!78210 b_and!35233)))

(declare-fun mapNonEmpty!40816 () Bool)

(declare-fun mapRes!40816 () Bool)

(declare-fun tp!78209 () Bool)

(declare-fun e!615345 () Bool)

(assert (=> mapNonEmpty!40816 (= mapRes!40816 (and tp!78209 e!615345))))

(declare-datatypes ((V!39865 0))(
  ( (V!39866 (val!13074 Int)) )
))
(declare-datatypes ((ValueCell!12320 0))(
  ( (ValueCellFull!12320 (v!15703 V!39865)) (EmptyCell!12320) )
))
(declare-fun mapValue!40816 () ValueCell!12320)

(declare-fun mapRest!40816 () (Array (_ BitVec 32) ValueCell!12320))

(declare-fun mapKey!40816 () (_ BitVec 32))

(declare-datatypes ((array!69032 0))(
  ( (array!69033 (arr!33195 (Array (_ BitVec 32) ValueCell!12320)) (size!33732 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!69032)

(assert (=> mapNonEmpty!40816 (= (arr!33195 _values!955) (store mapRest!40816 mapKey!40816 mapValue!40816))))

(declare-datatypes ((tuple2!16732 0))(
  ( (tuple2!16733 (_1!8376 (_ BitVec 64)) (_2!8376 V!39865)) )
))
(declare-fun lt!478159 () tuple2!16732)

(declare-datatypes ((List!23304 0))(
  ( (Nil!23301) (Cons!23300 (h!24509 tuple2!16732) (t!32670 List!23304)) )
))
(declare-datatypes ((ListLongMap!14713 0))(
  ( (ListLongMap!14714 (toList!7372 List!23304)) )
))
(declare-fun lt!478151 () ListLongMap!14713)

(declare-fun b!1076421 () Bool)

(declare-fun e!615344 () Bool)

(declare-fun lt!478158 () ListLongMap!14713)

(declare-fun +!3195 (ListLongMap!14713 tuple2!16732) ListLongMap!14713)

(assert (=> b!1076421 (= e!615344 (= lt!478151 (+!3195 lt!478158 lt!478159)))))

(declare-fun b!1076422 () Bool)

(declare-fun e!615349 () Bool)

(declare-fun tp_is_empty!26047 () Bool)

(assert (=> b!1076422 (= e!615349 tp_is_empty!26047)))

(declare-fun b!1076423 () Bool)

(declare-fun e!615350 () Bool)

(declare-fun lt!478160 () ListLongMap!14713)

(declare-fun -!715 (ListLongMap!14713 (_ BitVec 64)) ListLongMap!14713)

(assert (=> b!1076423 (= e!615350 (= (-!715 lt!478160 #b0000000000000000000000000000000000000000000000000000000000000000) lt!478151))))

(declare-fun lt!478156 () ListLongMap!14713)

(declare-fun lt!478153 () ListLongMap!14713)

(assert (=> b!1076423 (= lt!478156 lt!478153)))

(declare-fun zeroValueBefore!47 () V!39865)

(declare-fun lt!478150 () ListLongMap!14713)

(declare-datatypes ((Unit!35383 0))(
  ( (Unit!35384) )
))
(declare-fun lt!478155 () Unit!35383)

(declare-fun minValue!907 () V!39865)

(declare-fun addCommutativeForDiffKeys!749 (ListLongMap!14713 (_ BitVec 64) V!39865 (_ BitVec 64) V!39865) Unit!35383)

(assert (=> b!1076423 (= lt!478155 (addCommutativeForDiffKeys!749 lt!478150 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!478152 () ListLongMap!14713)

(assert (=> b!1076423 (= (-!715 lt!478153 #b0000000000000000000000000000000000000000000000000000000000000000) lt!478152)))

(declare-fun lt!478157 () tuple2!16732)

(assert (=> b!1076423 (= lt!478153 (+!3195 lt!478152 lt!478157))))

(declare-fun lt!478154 () Unit!35383)

(declare-fun addThenRemoveForNewKeyIsSame!86 (ListLongMap!14713 (_ BitVec 64) V!39865) Unit!35383)

(assert (=> b!1076423 (= lt!478154 (addThenRemoveForNewKeyIsSame!86 lt!478152 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1076423 (= lt!478152 (+!3195 lt!478150 lt!478159))))

(assert (=> b!1076423 e!615344))

(declare-fun res!717524 () Bool)

(assert (=> b!1076423 (=> (not res!717524) (not e!615344))))

(assert (=> b!1076423 (= res!717524 (= lt!478160 lt!478156))))

(assert (=> b!1076423 (= lt!478156 (+!3195 (+!3195 lt!478150 lt!478157) lt!478159))))

(assert (=> b!1076423 (= lt!478159 (tuple2!16733 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1076423 (= lt!478157 (tuple2!16733 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((array!69034 0))(
  ( (array!69035 (arr!33196 (Array (_ BitVec 32) (_ BitVec 64))) (size!33733 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!69034)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39865)

(declare-fun getCurrentListMap!4207 (array!69034 array!69032 (_ BitVec 32) (_ BitVec 32) V!39865 V!39865 (_ BitVec 32) Int) ListLongMap!14713)

(assert (=> b!1076423 (= lt!478151 (getCurrentListMap!4207 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1076423 (= lt!478160 (getCurrentListMap!4207 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1076424 () Bool)

(declare-fun e!615348 () Bool)

(assert (=> b!1076424 (= e!615348 (not e!615350))))

(declare-fun res!717521 () Bool)

(assert (=> b!1076424 (=> res!717521 e!615350)))

(assert (=> b!1076424 (= res!717521 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1076424 (= lt!478150 lt!478158)))

(declare-fun lt!478161 () Unit!35383)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!914 (array!69034 array!69032 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39865 V!39865 V!39865 V!39865 (_ BitVec 32) Int) Unit!35383)

(assert (=> b!1076424 (= lt!478161 (lemmaNoChangeToArrayThenSameMapNoExtras!914 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3895 (array!69034 array!69032 (_ BitVec 32) (_ BitVec 32) V!39865 V!39865 (_ BitVec 32) Int) ListLongMap!14713)

(assert (=> b!1076424 (= lt!478158 (getCurrentListMapNoExtraKeys!3895 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1076424 (= lt!478150 (getCurrentListMapNoExtraKeys!3895 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1076425 () Bool)

(declare-fun res!717520 () Bool)

(assert (=> b!1076425 (=> (not res!717520) (not e!615348))))

(declare-datatypes ((List!23305 0))(
  ( (Nil!23302) (Cons!23301 (h!24510 (_ BitVec 64)) (t!32671 List!23305)) )
))
(declare-fun arrayNoDuplicates!0 (array!69034 (_ BitVec 32) List!23305) Bool)

(assert (=> b!1076425 (= res!717520 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23302))))

(declare-fun b!1076426 () Bool)

(declare-fun res!717522 () Bool)

(assert (=> b!1076426 (=> (not res!717522) (not e!615348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69034 (_ BitVec 32)) Bool)

(assert (=> b!1076426 (= res!717522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1076427 () Bool)

(assert (=> b!1076427 (= e!615345 tp_is_empty!26047)))

(declare-fun res!717523 () Bool)

(assert (=> start!95272 (=> (not res!717523) (not e!615348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95272 (= res!717523 (validMask!0 mask!1515))))

(assert (=> start!95272 e!615348))

(assert (=> start!95272 true))

(assert (=> start!95272 tp_is_empty!26047))

(declare-fun e!615347 () Bool)

(declare-fun array_inv!25506 (array!69032) Bool)

(assert (=> start!95272 (and (array_inv!25506 _values!955) e!615347)))

(assert (=> start!95272 tp!78210))

(declare-fun array_inv!25507 (array!69034) Bool)

(assert (=> start!95272 (array_inv!25507 _keys!1163)))

(declare-fun b!1076428 () Bool)

(declare-fun res!717519 () Bool)

(assert (=> b!1076428 (=> (not res!717519) (not e!615348))))

(assert (=> b!1076428 (= res!717519 (and (= (size!33732 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33733 _keys!1163) (size!33732 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1076429 () Bool)

(assert (=> b!1076429 (= e!615347 (and e!615349 mapRes!40816))))

(declare-fun condMapEmpty!40816 () Bool)

(declare-fun mapDefault!40816 () ValueCell!12320)

