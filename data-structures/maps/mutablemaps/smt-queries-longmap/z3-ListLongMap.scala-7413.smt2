; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94330 () Bool)

(assert start!94330)

(declare-fun b_free!21657 () Bool)

(declare-fun b_next!21657 () Bool)

(assert (=> start!94330 (= b_free!21657 (not b_next!21657))))

(declare-fun tp!76412 () Bool)

(declare-fun b_and!34447 () Bool)

(assert (=> start!94330 (= tp!76412 b_and!34447)))

(declare-fun mapIsEmpty!39889 () Bool)

(declare-fun mapRes!39889 () Bool)

(assert (=> mapIsEmpty!39889 mapRes!39889))

(declare-fun b!1066271 () Bool)

(declare-fun e!608046 () Bool)

(declare-fun e!608042 () Bool)

(assert (=> b!1066271 (= e!608046 (and e!608042 mapRes!39889))))

(declare-fun condMapEmpty!39889 () Bool)

(declare-datatypes ((V!39091 0))(
  ( (V!39092 (val!12784 Int)) )
))
(declare-datatypes ((ValueCell!12030 0))(
  ( (ValueCellFull!12030 (v!15398 V!39091)) (EmptyCell!12030) )
))
(declare-datatypes ((array!67892 0))(
  ( (array!67893 (arr!32644 (Array (_ BitVec 32) ValueCell!12030)) (size!33181 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67892)

(declare-fun mapDefault!39889 () ValueCell!12030)

(assert (=> b!1066271 (= condMapEmpty!39889 (= (arr!32644 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12030)) mapDefault!39889)))))

(declare-fun res!711762 () Bool)

(declare-fun e!608045 () Bool)

(assert (=> start!94330 (=> (not res!711762) (not e!608045))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94330 (= res!711762 (validMask!0 mask!1515))))

(assert (=> start!94330 e!608045))

(assert (=> start!94330 true))

(declare-fun tp_is_empty!25467 () Bool)

(assert (=> start!94330 tp_is_empty!25467))

(declare-fun array_inv!25110 (array!67892) Bool)

(assert (=> start!94330 (and (array_inv!25110 _values!955) e!608046)))

(assert (=> start!94330 tp!76412))

(declare-datatypes ((array!67894 0))(
  ( (array!67895 (arr!32645 (Array (_ BitVec 32) (_ BitVec 64))) (size!33182 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67894)

(declare-fun array_inv!25111 (array!67894) Bool)

(assert (=> start!94330 (array_inv!25111 _keys!1163)))

(declare-fun mapNonEmpty!39889 () Bool)

(declare-fun tp!76413 () Bool)

(declare-fun e!608044 () Bool)

(assert (=> mapNonEmpty!39889 (= mapRes!39889 (and tp!76413 e!608044))))

(declare-fun mapValue!39889 () ValueCell!12030)

(declare-fun mapRest!39889 () (Array (_ BitVec 32) ValueCell!12030))

(declare-fun mapKey!39889 () (_ BitVec 32))

(assert (=> mapNonEmpty!39889 (= (arr!32644 _values!955) (store mapRest!39889 mapKey!39889 mapValue!39889))))

(declare-fun b!1066272 () Bool)

(declare-fun res!711761 () Bool)

(assert (=> b!1066272 (=> (not res!711761) (not e!608045))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066272 (= res!711761 (and (= (size!33181 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33182 _keys!1163) (size!33181 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1066273 () Bool)

(assert (=> b!1066273 (= e!608044 tp_is_empty!25467)))

(declare-fun b!1066274 () Bool)

(declare-fun res!711764 () Bool)

(assert (=> b!1066274 (=> (not res!711764) (not e!608045))))

(declare-datatypes ((List!22893 0))(
  ( (Nil!22890) (Cons!22889 (h!24098 (_ BitVec 64)) (t!32221 List!22893)) )
))
(declare-fun arrayNoDuplicates!0 (array!67894 (_ BitVec 32) List!22893) Bool)

(assert (=> b!1066274 (= res!711764 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22890))))

(declare-fun b!1066275 () Bool)

(declare-fun e!608043 () Bool)

(assert (=> b!1066275 (= e!608045 (not e!608043))))

(declare-fun res!711765 () Bool)

(assert (=> b!1066275 (=> res!711765 e!608043)))

(assert (=> b!1066275 (= res!711765 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16298 0))(
  ( (tuple2!16299 (_1!8159 (_ BitVec 64)) (_2!8159 V!39091)) )
))
(declare-datatypes ((List!22894 0))(
  ( (Nil!22891) (Cons!22890 (h!24099 tuple2!16298) (t!32222 List!22894)) )
))
(declare-datatypes ((ListLongMap!14279 0))(
  ( (ListLongMap!14280 (toList!7155 List!22894)) )
))
(declare-fun lt!470667 () ListLongMap!14279)

(declare-fun lt!470665 () ListLongMap!14279)

(assert (=> b!1066275 (= lt!470667 lt!470665)))

(declare-fun zeroValueBefore!47 () V!39091)

(declare-datatypes ((Unit!34974 0))(
  ( (Unit!34975) )
))
(declare-fun lt!470666 () Unit!34974)

(declare-fun minValue!907 () V!39091)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39091)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!741 (array!67894 array!67892 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39091 V!39091 V!39091 V!39091 (_ BitVec 32) Int) Unit!34974)

(assert (=> b!1066275 (= lt!470666 (lemmaNoChangeToArrayThenSameMapNoExtras!741 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3702 (array!67894 array!67892 (_ BitVec 32) (_ BitVec 32) V!39091 V!39091 (_ BitVec 32) Int) ListLongMap!14279)

(assert (=> b!1066275 (= lt!470665 (getCurrentListMapNoExtraKeys!3702 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066275 (= lt!470667 (getCurrentListMapNoExtraKeys!3702 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066276 () Bool)

(assert (=> b!1066276 (= e!608043 true)))

(declare-fun lt!470662 () ListLongMap!14279)

(declare-fun lt!470661 () ListLongMap!14279)

(declare-fun -!615 (ListLongMap!14279 (_ BitVec 64)) ListLongMap!14279)

(assert (=> b!1066276 (= lt!470662 (-!615 lt!470661 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470664 () ListLongMap!14279)

(assert (=> b!1066276 (= (-!615 lt!470664 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470667)))

(declare-fun lt!470663 () Unit!34974)

(declare-fun addThenRemoveForNewKeyIsSame!24 (ListLongMap!14279 (_ BitVec 64) V!39091) Unit!34974)

(assert (=> b!1066276 (= lt!470663 (addThenRemoveForNewKeyIsSame!24 lt!470667 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470668 () ListLongMap!14279)

(assert (=> b!1066276 (and (= lt!470661 lt!470664) (= lt!470668 lt!470665))))

(declare-fun +!3106 (ListLongMap!14279 tuple2!16298) ListLongMap!14279)

(assert (=> b!1066276 (= lt!470664 (+!3106 lt!470667 (tuple2!16299 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun getCurrentListMap!4069 (array!67894 array!67892 (_ BitVec 32) (_ BitVec 32) V!39091 V!39091 (_ BitVec 32) Int) ListLongMap!14279)

(assert (=> b!1066276 (= lt!470668 (getCurrentListMap!4069 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066276 (= lt!470661 (getCurrentListMap!4069 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066277 () Bool)

(declare-fun res!711763 () Bool)

(assert (=> b!1066277 (=> (not res!711763) (not e!608045))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67894 (_ BitVec 32)) Bool)

(assert (=> b!1066277 (= res!711763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1066278 () Bool)

(assert (=> b!1066278 (= e!608042 tp_is_empty!25467)))

(assert (= (and start!94330 res!711762) b!1066272))

(assert (= (and b!1066272 res!711761) b!1066277))

(assert (= (and b!1066277 res!711763) b!1066274))

(assert (= (and b!1066274 res!711764) b!1066275))

(assert (= (and b!1066275 (not res!711765)) b!1066276))

(assert (= (and b!1066271 condMapEmpty!39889) mapIsEmpty!39889))

(assert (= (and b!1066271 (not condMapEmpty!39889)) mapNonEmpty!39889))

(get-info :version)

(assert (= (and mapNonEmpty!39889 ((_ is ValueCellFull!12030) mapValue!39889)) b!1066273))

(assert (= (and b!1066271 ((_ is ValueCellFull!12030) mapDefault!39889)) b!1066278))

(assert (= start!94330 b!1066271))

(declare-fun m!985039 () Bool)

(assert (=> b!1066277 m!985039))

(declare-fun m!985041 () Bool)

(assert (=> b!1066274 m!985041))

(declare-fun m!985043 () Bool)

(assert (=> mapNonEmpty!39889 m!985043))

(declare-fun m!985045 () Bool)

(assert (=> start!94330 m!985045))

(declare-fun m!985047 () Bool)

(assert (=> start!94330 m!985047))

(declare-fun m!985049 () Bool)

(assert (=> start!94330 m!985049))

(declare-fun m!985051 () Bool)

(assert (=> b!1066275 m!985051))

(declare-fun m!985053 () Bool)

(assert (=> b!1066275 m!985053))

(declare-fun m!985055 () Bool)

(assert (=> b!1066275 m!985055))

(declare-fun m!985057 () Bool)

(assert (=> b!1066276 m!985057))

(declare-fun m!985059 () Bool)

(assert (=> b!1066276 m!985059))

(declare-fun m!985061 () Bool)

(assert (=> b!1066276 m!985061))

(declare-fun m!985063 () Bool)

(assert (=> b!1066276 m!985063))

(declare-fun m!985065 () Bool)

(assert (=> b!1066276 m!985065))

(declare-fun m!985067 () Bool)

(assert (=> b!1066276 m!985067))

(check-sat (not start!94330) (not b!1066274) (not b!1066276) b_and!34447 (not b!1066277) (not b_next!21657) tp_is_empty!25467 (not mapNonEmpty!39889) (not b!1066275))
(check-sat b_and!34447 (not b_next!21657))
