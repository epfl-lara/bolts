; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94860 () Bool)

(assert start!94860)

(declare-fun b_free!22053 () Bool)

(declare-fun b_next!22053 () Bool)

(assert (=> start!94860 (= b_free!22053 (not b_next!22053))))

(declare-fun tp!77621 () Bool)

(declare-fun b_and!34913 () Bool)

(assert (=> start!94860 (= tp!77621 b_and!34913)))

(declare-fun b!1072162 () Bool)

(declare-fun e!612386 () Bool)

(declare-fun e!612387 () Bool)

(declare-fun mapRes!40504 () Bool)

(assert (=> b!1072162 (= e!612386 (and e!612387 mapRes!40504))))

(declare-fun condMapEmpty!40504 () Bool)

(declare-datatypes ((V!39619 0))(
  ( (V!39620 (val!12982 Int)) )
))
(declare-datatypes ((ValueCell!12228 0))(
  ( (ValueCellFull!12228 (v!15600 V!39619)) (EmptyCell!12228) )
))
(declare-datatypes ((array!68656 0))(
  ( (array!68657 (arr!33019 (Array (_ BitVec 32) ValueCell!12228)) (size!33556 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68656)

(declare-fun mapDefault!40504 () ValueCell!12228)

(assert (=> b!1072162 (= condMapEmpty!40504 (= (arr!33019 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12228)) mapDefault!40504)))))

(declare-fun b!1072163 () Bool)

(declare-fun res!715279 () Bool)

(declare-fun e!612388 () Bool)

(assert (=> b!1072163 (=> (not res!715279) (not e!612388))))

(declare-datatypes ((array!68658 0))(
  ( (array!68659 (arr!33020 (Array (_ BitVec 32) (_ BitVec 64))) (size!33557 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68658)

(declare-datatypes ((List!23174 0))(
  ( (Nil!23171) (Cons!23170 (h!24379 (_ BitVec 64)) (t!32516 List!23174)) )
))
(declare-fun arrayNoDuplicates!0 (array!68658 (_ BitVec 32) List!23174) Bool)

(assert (=> b!1072163 (= res!715279 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23171))))

(declare-fun mapNonEmpty!40504 () Bool)

(declare-fun tp!77622 () Bool)

(declare-fun e!612382 () Bool)

(assert (=> mapNonEmpty!40504 (= mapRes!40504 (and tp!77622 e!612382))))

(declare-fun mapValue!40504 () ValueCell!12228)

(declare-fun mapRest!40504 () (Array (_ BitVec 32) ValueCell!12228))

(declare-fun mapKey!40504 () (_ BitVec 32))

(assert (=> mapNonEmpty!40504 (= (arr!33019 _values!955) (store mapRest!40504 mapKey!40504 mapValue!40504))))

(declare-fun b!1072164 () Bool)

(declare-fun res!715278 () Bool)

(assert (=> b!1072164 (=> (not res!715278) (not e!612388))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072164 (= res!715278 (and (= (size!33556 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33557 _keys!1163) (size!33556 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072165 () Bool)

(declare-fun e!612383 () Bool)

(assert (=> b!1072165 (= e!612388 (not e!612383))))

(declare-fun res!715280 () Bool)

(assert (=> b!1072165 (=> res!715280 e!612383)))

(assert (=> b!1072165 (= res!715280 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16594 0))(
  ( (tuple2!16595 (_1!8307 (_ BitVec 64)) (_2!8307 V!39619)) )
))
(declare-datatypes ((List!23175 0))(
  ( (Nil!23172) (Cons!23171 (h!24380 tuple2!16594) (t!32517 List!23175)) )
))
(declare-datatypes ((ListLongMap!14575 0))(
  ( (ListLongMap!14576 (toList!7303 List!23175)) )
))
(declare-fun lt!475058 () ListLongMap!14575)

(declare-fun lt!475060 () ListLongMap!14575)

(assert (=> b!1072165 (= lt!475058 lt!475060)))

(declare-fun zeroValueBefore!47 () V!39619)

(declare-datatypes ((Unit!35267 0))(
  ( (Unit!35268) )
))
(declare-fun lt!475057 () Unit!35267)

(declare-fun minValue!907 () V!39619)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39619)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!873 (array!68658 array!68656 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39619 V!39619 V!39619 V!39619 (_ BitVec 32) Int) Unit!35267)

(assert (=> b!1072165 (= lt!475057 (lemmaNoChangeToArrayThenSameMapNoExtras!873 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3834 (array!68658 array!68656 (_ BitVec 32) (_ BitVec 32) V!39619 V!39619 (_ BitVec 32) Int) ListLongMap!14575)

(assert (=> b!1072165 (= lt!475060 (getCurrentListMapNoExtraKeys!3834 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072165 (= lt!475058 (getCurrentListMapNoExtraKeys!3834 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072166 () Bool)

(assert (=> b!1072166 (= e!612383 true)))

(declare-fun lt!475059 () ListLongMap!14575)

(declare-fun lt!475062 () ListLongMap!14575)

(declare-fun -!693 (ListLongMap!14575 (_ BitVec 64)) ListLongMap!14575)

(assert (=> b!1072166 (= lt!475059 (-!693 lt!475062 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!475051 () ListLongMap!14575)

(declare-fun lt!475061 () ListLongMap!14575)

(assert (=> b!1072166 (= lt!475051 lt!475061)))

(declare-fun lt!475055 () Unit!35267)

(declare-fun addCommutativeForDiffKeys!737 (ListLongMap!14575 (_ BitVec 64) V!39619 (_ BitVec 64) V!39619) Unit!35267)

(assert (=> b!1072166 (= lt!475055 (addCommutativeForDiffKeys!737 lt!475058 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!475056 () ListLongMap!14575)

(assert (=> b!1072166 (= (-!693 lt!475061 #b0000000000000000000000000000000000000000000000000000000000000000) lt!475056)))

(declare-fun lt!475052 () tuple2!16594)

(declare-fun +!3158 (ListLongMap!14575 tuple2!16594) ListLongMap!14575)

(assert (=> b!1072166 (= lt!475061 (+!3158 lt!475056 lt!475052))))

(declare-fun lt!475053 () Unit!35267)

(declare-fun addThenRemoveForNewKeyIsSame!67 (ListLongMap!14575 (_ BitVec 64) V!39619) Unit!35267)

(assert (=> b!1072166 (= lt!475053 (addThenRemoveForNewKeyIsSame!67 lt!475056 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!475063 () tuple2!16594)

(assert (=> b!1072166 (= lt!475056 (+!3158 lt!475058 lt!475063))))

(declare-fun e!612385 () Bool)

(assert (=> b!1072166 e!612385))

(declare-fun res!715277 () Bool)

(assert (=> b!1072166 (=> (not res!715277) (not e!612385))))

(assert (=> b!1072166 (= res!715277 (= lt!475062 lt!475051))))

(assert (=> b!1072166 (= lt!475051 (+!3158 (+!3158 lt!475058 lt!475052) lt!475063))))

(assert (=> b!1072166 (= lt!475063 (tuple2!16595 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1072166 (= lt!475052 (tuple2!16595 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!475054 () ListLongMap!14575)

(declare-fun getCurrentListMap!4165 (array!68658 array!68656 (_ BitVec 32) (_ BitVec 32) V!39619 V!39619 (_ BitVec 32) Int) ListLongMap!14575)

(assert (=> b!1072166 (= lt!475054 (getCurrentListMap!4165 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072166 (= lt!475062 (getCurrentListMap!4165 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40504 () Bool)

(assert (=> mapIsEmpty!40504 mapRes!40504))

(declare-fun b!1072167 () Bool)

(assert (=> b!1072167 (= e!612385 (= lt!475054 (+!3158 lt!475060 lt!475063)))))

(declare-fun b!1072168 () Bool)

(declare-fun tp_is_empty!25863 () Bool)

(assert (=> b!1072168 (= e!612387 tp_is_empty!25863)))

(declare-fun res!715276 () Bool)

(assert (=> start!94860 (=> (not res!715276) (not e!612388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94860 (= res!715276 (validMask!0 mask!1515))))

(assert (=> start!94860 e!612388))

(assert (=> start!94860 true))

(assert (=> start!94860 tp_is_empty!25863))

(declare-fun array_inv!25382 (array!68656) Bool)

(assert (=> start!94860 (and (array_inv!25382 _values!955) e!612386)))

(assert (=> start!94860 tp!77621))

(declare-fun array_inv!25383 (array!68658) Bool)

(assert (=> start!94860 (array_inv!25383 _keys!1163)))

(declare-fun b!1072169 () Bool)

(assert (=> b!1072169 (= e!612382 tp_is_empty!25863)))

(declare-fun b!1072170 () Bool)

(declare-fun res!715281 () Bool)

(assert (=> b!1072170 (=> (not res!715281) (not e!612388))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68658 (_ BitVec 32)) Bool)

(assert (=> b!1072170 (= res!715281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!94860 res!715276) b!1072164))

(assert (= (and b!1072164 res!715278) b!1072170))

(assert (= (and b!1072170 res!715281) b!1072163))

(assert (= (and b!1072163 res!715279) b!1072165))

(assert (= (and b!1072165 (not res!715280)) b!1072166))

(assert (= (and b!1072166 res!715277) b!1072167))

(assert (= (and b!1072162 condMapEmpty!40504) mapIsEmpty!40504))

(assert (= (and b!1072162 (not condMapEmpty!40504)) mapNonEmpty!40504))

(get-info :version)

(assert (= (and mapNonEmpty!40504 ((_ is ValueCellFull!12228) mapValue!40504)) b!1072169))

(assert (= (and b!1072162 ((_ is ValueCellFull!12228) mapDefault!40504)) b!1072168))

(assert (= start!94860 b!1072162))

(declare-fun m!991139 () Bool)

(assert (=> start!94860 m!991139))

(declare-fun m!991141 () Bool)

(assert (=> start!94860 m!991141))

(declare-fun m!991143 () Bool)

(assert (=> start!94860 m!991143))

(declare-fun m!991145 () Bool)

(assert (=> b!1072167 m!991145))

(declare-fun m!991147 () Bool)

(assert (=> b!1072170 m!991147))

(declare-fun m!991149 () Bool)

(assert (=> b!1072165 m!991149))

(declare-fun m!991151 () Bool)

(assert (=> b!1072165 m!991151))

(declare-fun m!991153 () Bool)

(assert (=> b!1072165 m!991153))

(declare-fun m!991155 () Bool)

(assert (=> b!1072166 m!991155))

(declare-fun m!991157 () Bool)

(assert (=> b!1072166 m!991157))

(declare-fun m!991159 () Bool)

(assert (=> b!1072166 m!991159))

(declare-fun m!991161 () Bool)

(assert (=> b!1072166 m!991161))

(declare-fun m!991163 () Bool)

(assert (=> b!1072166 m!991163))

(declare-fun m!991165 () Bool)

(assert (=> b!1072166 m!991165))

(declare-fun m!991167 () Bool)

(assert (=> b!1072166 m!991167))

(declare-fun m!991169 () Bool)

(assert (=> b!1072166 m!991169))

(declare-fun m!991171 () Bool)

(assert (=> b!1072166 m!991171))

(assert (=> b!1072166 m!991169))

(declare-fun m!991173 () Bool)

(assert (=> b!1072166 m!991173))

(declare-fun m!991175 () Bool)

(assert (=> mapNonEmpty!40504 m!991175))

(declare-fun m!991177 () Bool)

(assert (=> b!1072163 m!991177))

(check-sat (not mapNonEmpty!40504) (not b_next!22053) (not b!1072167) (not b!1072166) (not start!94860) (not b!1072170) tp_is_empty!25863 b_and!34913 (not b!1072163) (not b!1072165))
(check-sat b_and!34913 (not b_next!22053))
