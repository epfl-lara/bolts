; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94550 () Bool)

(assert start!94550)

(declare-fun b_free!21819 () Bool)

(declare-fun b_next!21819 () Bool)

(assert (=> start!94550 (= b_free!21819 (not b_next!21819))))

(declare-fun tp!76908 () Bool)

(declare-fun b_and!34639 () Bool)

(assert (=> start!94550 (= tp!76908 b_and!34639)))

(declare-fun b!1068664 () Bool)

(declare-fun e!609797 () Bool)

(declare-fun e!609801 () Bool)

(assert (=> b!1068664 (= e!609797 e!609801)))

(declare-fun res!713174 () Bool)

(assert (=> b!1068664 (=> res!713174 e!609801)))

(declare-datatypes ((V!39307 0))(
  ( (V!39308 (val!12865 Int)) )
))
(declare-datatypes ((tuple2!16416 0))(
  ( (tuple2!16417 (_1!8218 (_ BitVec 64)) (_2!8218 V!39307)) )
))
(declare-datatypes ((List!23005 0))(
  ( (Nil!23002) (Cons!23001 (h!24210 tuple2!16416) (t!32339 List!23005)) )
))
(declare-datatypes ((ListLongMap!14397 0))(
  ( (ListLongMap!14398 (toList!7214 List!23005)) )
))
(declare-fun lt!472158 () ListLongMap!14397)

(declare-fun contains!6316 (ListLongMap!14397 (_ BitVec 64)) Bool)

(assert (=> b!1068664 (= res!713174 (contains!6316 lt!472158 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!39307)

(declare-datatypes ((ValueCell!12111 0))(
  ( (ValueCellFull!12111 (v!15481 V!39307)) (EmptyCell!12111) )
))
(declare-datatypes ((array!68208 0))(
  ( (array!68209 (arr!32799 (Array (_ BitVec 32) ValueCell!12111)) (size!33336 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68208)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39307)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68210 0))(
  ( (array!68211 (arr!32800 (Array (_ BitVec 32) (_ BitVec 64))) (size!33337 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68210)

(declare-fun getCurrentListMap!4105 (array!68210 array!68208 (_ BitVec 32) (_ BitVec 32) V!39307 V!39307 (_ BitVec 32) Int) ListLongMap!14397)

(assert (=> b!1068664 (= lt!472158 (getCurrentListMap!4105 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!713177 () Bool)

(declare-fun e!609800 () Bool)

(assert (=> start!94550 (=> (not res!713177) (not e!609800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94550 (= res!713177 (validMask!0 mask!1515))))

(assert (=> start!94550 e!609800))

(assert (=> start!94550 true))

(declare-fun tp_is_empty!25629 () Bool)

(assert (=> start!94550 tp_is_empty!25629))

(declare-fun e!609796 () Bool)

(declare-fun array_inv!25230 (array!68208) Bool)

(assert (=> start!94550 (and (array_inv!25230 _values!955) e!609796)))

(assert (=> start!94550 tp!76908))

(declare-fun array_inv!25231 (array!68210) Bool)

(assert (=> start!94550 (array_inv!25231 _keys!1163)))

(declare-fun b!1068665 () Bool)

(declare-fun e!609802 () Bool)

(assert (=> b!1068665 (= e!609802 tp_is_empty!25629)))

(declare-fun b!1068666 () Bool)

(assert (=> b!1068666 (= e!609801 true)))

(declare-fun -!650 (ListLongMap!14397 (_ BitVec 64)) ListLongMap!14397)

(assert (=> b!1068666 (= (-!650 lt!472158 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472158)))

(declare-datatypes ((Unit!35092 0))(
  ( (Unit!35093) )
))
(declare-fun lt!472157 () Unit!35092)

(declare-fun removeNotPresentStillSame!59 (ListLongMap!14397 (_ BitVec 64)) Unit!35092)

(assert (=> b!1068666 (= lt!472157 (removeNotPresentStillSame!59 lt!472158 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1068667 () Bool)

(assert (=> b!1068667 (= e!609800 (not e!609797))))

(declare-fun res!713178 () Bool)

(assert (=> b!1068667 (=> res!713178 e!609797)))

(assert (=> b!1068667 (= res!713178 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!472155 () ListLongMap!14397)

(declare-fun lt!472154 () ListLongMap!14397)

(assert (=> b!1068667 (= lt!472155 lt!472154)))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lt!472156 () Unit!35092)

(declare-fun zeroValueAfter!47 () V!39307)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!793 (array!68210 array!68208 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39307 V!39307 V!39307 V!39307 (_ BitVec 32) Int) Unit!35092)

(assert (=> b!1068667 (= lt!472156 (lemmaNoChangeToArrayThenSameMapNoExtras!793 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3754 (array!68210 array!68208 (_ BitVec 32) (_ BitVec 32) V!39307 V!39307 (_ BitVec 32) Int) ListLongMap!14397)

(assert (=> b!1068667 (= lt!472154 (getCurrentListMapNoExtraKeys!3754 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1068667 (= lt!472155 (getCurrentListMapNoExtraKeys!3754 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068668 () Bool)

(declare-fun res!713175 () Bool)

(assert (=> b!1068668 (=> (not res!713175) (not e!609800))))

(declare-datatypes ((List!23006 0))(
  ( (Nil!23003) (Cons!23002 (h!24211 (_ BitVec 64)) (t!32340 List!23006)) )
))
(declare-fun arrayNoDuplicates!0 (array!68210 (_ BitVec 32) List!23006) Bool)

(assert (=> b!1068668 (= res!713175 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23003))))

(declare-fun b!1068669 () Bool)

(declare-fun res!713176 () Bool)

(assert (=> b!1068669 (=> (not res!713176) (not e!609800))))

(assert (=> b!1068669 (= res!713176 (and (= (size!33336 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33337 _keys!1163) (size!33336 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!40141 () Bool)

(declare-fun mapRes!40141 () Bool)

(assert (=> mapIsEmpty!40141 mapRes!40141))

(declare-fun b!1068670 () Bool)

(declare-fun e!609798 () Bool)

(assert (=> b!1068670 (= e!609798 tp_is_empty!25629)))

(declare-fun b!1068671 () Bool)

(assert (=> b!1068671 (= e!609796 (and e!609798 mapRes!40141))))

(declare-fun condMapEmpty!40141 () Bool)

(declare-fun mapDefault!40141 () ValueCell!12111)

(assert (=> b!1068671 (= condMapEmpty!40141 (= (arr!32799 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12111)) mapDefault!40141)))))

(declare-fun mapNonEmpty!40141 () Bool)

(declare-fun tp!76907 () Bool)

(assert (=> mapNonEmpty!40141 (= mapRes!40141 (and tp!76907 e!609802))))

(declare-fun mapRest!40141 () (Array (_ BitVec 32) ValueCell!12111))

(declare-fun mapValue!40141 () ValueCell!12111)

(declare-fun mapKey!40141 () (_ BitVec 32))

(assert (=> mapNonEmpty!40141 (= (arr!32799 _values!955) (store mapRest!40141 mapKey!40141 mapValue!40141))))

(declare-fun b!1068672 () Bool)

(declare-fun res!713173 () Bool)

(assert (=> b!1068672 (=> (not res!713173) (not e!609800))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68210 (_ BitVec 32)) Bool)

(assert (=> b!1068672 (= res!713173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!94550 res!713177) b!1068669))

(assert (= (and b!1068669 res!713176) b!1068672))

(assert (= (and b!1068672 res!713173) b!1068668))

(assert (= (and b!1068668 res!713175) b!1068667))

(assert (= (and b!1068667 (not res!713178)) b!1068664))

(assert (= (and b!1068664 (not res!713174)) b!1068666))

(assert (= (and b!1068671 condMapEmpty!40141) mapIsEmpty!40141))

(assert (= (and b!1068671 (not condMapEmpty!40141)) mapNonEmpty!40141))

(get-info :version)

(assert (= (and mapNonEmpty!40141 ((_ is ValueCellFull!12111) mapValue!40141)) b!1068665))

(assert (= (and b!1068671 ((_ is ValueCellFull!12111) mapDefault!40141)) b!1068670))

(assert (= start!94550 b!1068671))

(declare-fun m!987361 () Bool)

(assert (=> start!94550 m!987361))

(declare-fun m!987363 () Bool)

(assert (=> start!94550 m!987363))

(declare-fun m!987365 () Bool)

(assert (=> start!94550 m!987365))

(declare-fun m!987367 () Bool)

(assert (=> b!1068668 m!987367))

(declare-fun m!987369 () Bool)

(assert (=> b!1068664 m!987369))

(declare-fun m!987371 () Bool)

(assert (=> b!1068664 m!987371))

(declare-fun m!987373 () Bool)

(assert (=> b!1068667 m!987373))

(declare-fun m!987375 () Bool)

(assert (=> b!1068667 m!987375))

(declare-fun m!987377 () Bool)

(assert (=> b!1068667 m!987377))

(declare-fun m!987379 () Bool)

(assert (=> mapNonEmpty!40141 m!987379))

(declare-fun m!987381 () Bool)

(assert (=> b!1068672 m!987381))

(declare-fun m!987383 () Bool)

(assert (=> b!1068666 m!987383))

(declare-fun m!987385 () Bool)

(assert (=> b!1068666 m!987385))

(check-sat (not b!1068666) (not mapNonEmpty!40141) tp_is_empty!25629 (not b!1068668) (not b!1068667) (not b!1068664) (not start!94550) b_and!34639 (not b_next!21819) (not b!1068672))
(check-sat b_and!34639 (not b_next!21819))
