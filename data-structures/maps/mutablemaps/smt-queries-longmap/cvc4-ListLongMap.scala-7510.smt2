; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95276 () Bool)

(assert start!95276)

(declare-fun b_free!22241 () Bool)

(declare-fun b_next!22241 () Bool)

(assert (=> start!95276 (= b_free!22241 (not b_next!22241))))

(declare-fun tp!78222 () Bool)

(declare-fun b_and!35237 () Bool)

(assert (=> start!95276 (= tp!78222 b_and!35237)))

(declare-fun b!1076475 () Bool)

(declare-fun e!615387 () Bool)

(declare-fun e!615391 () Bool)

(assert (=> b!1076475 (= e!615387 (not e!615391))))

(declare-fun res!717559 () Bool)

(assert (=> b!1076475 (=> res!717559 e!615391)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1076475 (= res!717559 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39869 0))(
  ( (V!39870 (val!13076 Int)) )
))
(declare-datatypes ((tuple2!16736 0))(
  ( (tuple2!16737 (_1!8378 (_ BitVec 64)) (_2!8378 V!39869)) )
))
(declare-datatypes ((List!23308 0))(
  ( (Nil!23305) (Cons!23304 (h!24513 tuple2!16736) (t!32674 List!23308)) )
))
(declare-datatypes ((ListLongMap!14717 0))(
  ( (ListLongMap!14718 (toList!7374 List!23308)) )
))
(declare-fun lt!478222 () ListLongMap!14717)

(declare-fun lt!478224 () ListLongMap!14717)

(assert (=> b!1076475 (= lt!478222 lt!478224)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39869)

(declare-datatypes ((Unit!35387 0))(
  ( (Unit!35388) )
))
(declare-fun lt!478223 () Unit!35387)

(declare-datatypes ((ValueCell!12322 0))(
  ( (ValueCellFull!12322 (v!15705 V!39869)) (EmptyCell!12322) )
))
(declare-datatypes ((array!69040 0))(
  ( (array!69041 (arr!33199 (Array (_ BitVec 32) ValueCell!12322)) (size!33736 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!69040)

(declare-fun minValue!907 () V!39869)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39869)

(declare-datatypes ((array!69042 0))(
  ( (array!69043 (arr!33200 (Array (_ BitVec 32) (_ BitVec 64))) (size!33737 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!69042)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!916 (array!69042 array!69040 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39869 V!39869 V!39869 V!39869 (_ BitVec 32) Int) Unit!35387)

(assert (=> b!1076475 (= lt!478223 (lemmaNoChangeToArrayThenSameMapNoExtras!916 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3897 (array!69042 array!69040 (_ BitVec 32) (_ BitVec 32) V!39869 V!39869 (_ BitVec 32) Int) ListLongMap!14717)

(assert (=> b!1076475 (= lt!478224 (getCurrentListMapNoExtraKeys!3897 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1076475 (= lt!478222 (getCurrentListMapNoExtraKeys!3897 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1076476 () Bool)

(declare-fun res!717557 () Bool)

(assert (=> b!1076476 (=> (not res!717557) (not e!615387))))

(assert (=> b!1076476 (= res!717557 (and (= (size!33736 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33737 _keys!1163) (size!33736 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!478229 () ListLongMap!14717)

(declare-fun lt!478225 () tuple2!16736)

(declare-fun b!1076477 () Bool)

(declare-fun e!615390 () Bool)

(declare-fun +!3197 (ListLongMap!14717 tuple2!16736) ListLongMap!14717)

(assert (=> b!1076477 (= e!615390 (= lt!478229 (+!3197 lt!478224 lt!478225)))))

(declare-fun res!717555 () Bool)

(assert (=> start!95276 (=> (not res!717555) (not e!615387))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95276 (= res!717555 (validMask!0 mask!1515))))

(assert (=> start!95276 e!615387))

(assert (=> start!95276 true))

(declare-fun tp_is_empty!26051 () Bool)

(assert (=> start!95276 tp_is_empty!26051))

(declare-fun e!615388 () Bool)

(declare-fun array_inv!25510 (array!69040) Bool)

(assert (=> start!95276 (and (array_inv!25510 _values!955) e!615388)))

(assert (=> start!95276 tp!78222))

(declare-fun array_inv!25511 (array!69042) Bool)

(assert (=> start!95276 (array_inv!25511 _keys!1163)))

(declare-fun mapIsEmpty!40822 () Bool)

(declare-fun mapRes!40822 () Bool)

(assert (=> mapIsEmpty!40822 mapRes!40822))

(declare-fun b!1076478 () Bool)

(declare-fun res!717558 () Bool)

(assert (=> b!1076478 (=> (not res!717558) (not e!615387))))

(declare-datatypes ((List!23309 0))(
  ( (Nil!23306) (Cons!23305 (h!24514 (_ BitVec 64)) (t!32675 List!23309)) )
))
(declare-fun arrayNoDuplicates!0 (array!69042 (_ BitVec 32) List!23309) Bool)

(assert (=> b!1076478 (= res!717558 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23306))))

(declare-fun b!1076479 () Bool)

(declare-fun e!615392 () Bool)

(assert (=> b!1076479 (= e!615388 (and e!615392 mapRes!40822))))

(declare-fun condMapEmpty!40822 () Bool)

(declare-fun mapDefault!40822 () ValueCell!12322)

