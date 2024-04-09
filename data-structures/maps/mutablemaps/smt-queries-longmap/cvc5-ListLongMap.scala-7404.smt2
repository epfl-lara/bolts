; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94252 () Bool)

(assert start!94252)

(declare-fun b_free!21601 () Bool)

(declare-fun b_next!21601 () Bool)

(assert (=> start!94252 (= b_free!21601 (not b_next!21601))))

(declare-fun tp!76242 () Bool)

(declare-fun b_and!34379 () Bool)

(assert (=> start!94252 (= tp!76242 b_and!34379)))

(declare-fun b!1065415 () Bool)

(declare-fun res!711263 () Bool)

(declare-fun e!607422 () Bool)

(assert (=> b!1065415 (=> (not res!711263) (not e!607422))))

(declare-datatypes ((array!67782 0))(
  ( (array!67783 (arr!32590 (Array (_ BitVec 32) (_ BitVec 64))) (size!33127 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67782)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67782 (_ BitVec 32)) Bool)

(assert (=> b!1065415 (= res!711263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1065416 () Bool)

(declare-fun e!607423 () Bool)

(declare-fun tp_is_empty!25411 () Bool)

(assert (=> b!1065416 (= e!607423 tp_is_empty!25411)))

(declare-fun mapNonEmpty!39802 () Bool)

(declare-fun mapRes!39802 () Bool)

(declare-fun tp!76241 () Bool)

(declare-fun e!607419 () Bool)

(assert (=> mapNonEmpty!39802 (= mapRes!39802 (and tp!76241 e!607419))))

(declare-datatypes ((V!39017 0))(
  ( (V!39018 (val!12756 Int)) )
))
(declare-datatypes ((ValueCell!12002 0))(
  ( (ValueCellFull!12002 (v!15369 V!39017)) (EmptyCell!12002) )
))
(declare-fun mapRest!39802 () (Array (_ BitVec 32) ValueCell!12002))

(declare-fun mapValue!39802 () ValueCell!12002)

(declare-datatypes ((array!67784 0))(
  ( (array!67785 (arr!32591 (Array (_ BitVec 32) ValueCell!12002)) (size!33128 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67784)

(declare-fun mapKey!39802 () (_ BitVec 32))

(assert (=> mapNonEmpty!39802 (= (arr!32591 _values!955) (store mapRest!39802 mapKey!39802 mapValue!39802))))

(declare-fun mapIsEmpty!39802 () Bool)

(assert (=> mapIsEmpty!39802 mapRes!39802))

(declare-fun b!1065417 () Bool)

(declare-fun res!711259 () Bool)

(assert (=> b!1065417 (=> (not res!711259) (not e!607422))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065417 (= res!711259 (and (= (size!33128 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33127 _keys!1163) (size!33128 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1065418 () Bool)

(declare-fun res!711261 () Bool)

(assert (=> b!1065418 (=> (not res!711261) (not e!607422))))

(declare-datatypes ((List!22848 0))(
  ( (Nil!22845) (Cons!22844 (h!24053 (_ BitVec 64)) (t!32174 List!22848)) )
))
(declare-fun arrayNoDuplicates!0 (array!67782 (_ BitVec 32) List!22848) Bool)

(assert (=> b!1065418 (= res!711261 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22845))))

(declare-fun res!711260 () Bool)

(assert (=> start!94252 (=> (not res!711260) (not e!607422))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94252 (= res!711260 (validMask!0 mask!1515))))

(assert (=> start!94252 e!607422))

(assert (=> start!94252 true))

(assert (=> start!94252 tp_is_empty!25411))

(declare-fun e!607421 () Bool)

(declare-fun array_inv!25072 (array!67784) Bool)

(assert (=> start!94252 (and (array_inv!25072 _values!955) e!607421)))

(assert (=> start!94252 tp!76242))

(declare-fun array_inv!25073 (array!67782) Bool)

(assert (=> start!94252 (array_inv!25073 _keys!1163)))

(declare-fun b!1065419 () Bool)

(declare-fun e!607418 () Bool)

(assert (=> b!1065419 (= e!607422 (not e!607418))))

(declare-fun res!711262 () Bool)

(assert (=> b!1065419 (=> res!711262 e!607418)))

(assert (=> b!1065419 (= res!711262 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16248 0))(
  ( (tuple2!16249 (_1!8134 (_ BitVec 64)) (_2!8134 V!39017)) )
))
(declare-datatypes ((List!22849 0))(
  ( (Nil!22846) (Cons!22845 (h!24054 tuple2!16248) (t!32175 List!22849)) )
))
(declare-datatypes ((ListLongMap!14229 0))(
  ( (ListLongMap!14230 (toList!7130 List!22849)) )
))
(declare-fun lt!469854 () ListLongMap!14229)

(declare-fun lt!469852 () ListLongMap!14229)

(assert (=> b!1065419 (= lt!469854 lt!469852)))

(declare-fun zeroValueBefore!47 () V!39017)

(declare-fun minValue!907 () V!39017)

(declare-datatypes ((Unit!34922 0))(
  ( (Unit!34923) )
))
(declare-fun lt!469856 () Unit!34922)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39017)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!719 (array!67782 array!67784 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39017 V!39017 V!39017 V!39017 (_ BitVec 32) Int) Unit!34922)

(assert (=> b!1065419 (= lt!469856 (lemmaNoChangeToArrayThenSameMapNoExtras!719 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3680 (array!67782 array!67784 (_ BitVec 32) (_ BitVec 32) V!39017 V!39017 (_ BitVec 32) Int) ListLongMap!14229)

(assert (=> b!1065419 (= lt!469852 (getCurrentListMapNoExtraKeys!3680 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065419 (= lt!469854 (getCurrentListMapNoExtraKeys!3680 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065420 () Bool)

(assert (=> b!1065420 (= e!607421 (and e!607423 mapRes!39802))))

(declare-fun condMapEmpty!39802 () Bool)

(declare-fun mapDefault!39802 () ValueCell!12002)

