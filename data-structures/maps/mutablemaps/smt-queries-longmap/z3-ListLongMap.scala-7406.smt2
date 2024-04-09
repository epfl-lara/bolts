; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94266 () Bool)

(assert start!94266)

(declare-fun b_free!21615 () Bool)

(declare-fun b_next!21615 () Bool)

(assert (=> start!94266 (= b_free!21615 (not b_next!21615))))

(declare-fun tp!76284 () Bool)

(declare-fun b_and!34393 () Bool)

(assert (=> start!94266 (= tp!76284 b_and!34393)))

(declare-fun b!1065583 () Bool)

(declare-fun res!711365 () Bool)

(declare-fun e!607546 () Bool)

(assert (=> b!1065583 (=> (not res!711365) (not e!607546))))

(declare-datatypes ((array!67808 0))(
  ( (array!67809 (arr!32603 (Array (_ BitVec 32) (_ BitVec 64))) (size!33140 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67808)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67808 (_ BitVec 32)) Bool)

(assert (=> b!1065583 (= res!711365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39823 () Bool)

(declare-fun mapRes!39823 () Bool)

(assert (=> mapIsEmpty!39823 mapRes!39823))

(declare-fun b!1065584 () Bool)

(declare-fun e!607544 () Bool)

(assert (=> b!1065584 (= e!607544 true)))

(declare-datatypes ((V!39035 0))(
  ( (V!39036 (val!12763 Int)) )
))
(declare-datatypes ((tuple2!16260 0))(
  ( (tuple2!16261 (_1!8140 (_ BitVec 64)) (_2!8140 V!39035)) )
))
(declare-datatypes ((List!22860 0))(
  ( (Nil!22857) (Cons!22856 (h!24065 tuple2!16260) (t!32186 List!22860)) )
))
(declare-datatypes ((ListLongMap!14241 0))(
  ( (ListLongMap!14242 (toList!7136 List!22860)) )
))
(declare-fun lt!470021 () ListLongMap!14241)

(declare-fun lt!470020 () ListLongMap!14241)

(declare-fun -!601 (ListLongMap!14241 (_ BitVec 64)) ListLongMap!14241)

(assert (=> b!1065584 (= lt!470021 (-!601 lt!470020 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470025 () ListLongMap!14241)

(declare-fun lt!470019 () ListLongMap!14241)

(assert (=> b!1065584 (= (-!601 lt!470025 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470019)))

(declare-datatypes ((Unit!34934 0))(
  ( (Unit!34935) )
))
(declare-fun lt!470026 () Unit!34934)

(declare-fun zeroValueBefore!47 () V!39035)

(declare-fun addThenRemoveForNewKeyIsSame!10 (ListLongMap!14241 (_ BitVec 64) V!39035) Unit!34934)

(assert (=> b!1065584 (= lt!470026 (addThenRemoveForNewKeyIsSame!10 lt!470019 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470023 () ListLongMap!14241)

(declare-fun lt!470022 () ListLongMap!14241)

(assert (=> b!1065584 (and (= lt!470020 lt!470025) (= lt!470023 lt!470022))))

(declare-fun +!3092 (ListLongMap!14241 tuple2!16260) ListLongMap!14241)

(assert (=> b!1065584 (= lt!470025 (+!3092 lt!470019 (tuple2!16261 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-datatypes ((ValueCell!12009 0))(
  ( (ValueCellFull!12009 (v!15376 V!39035)) (EmptyCell!12009) )
))
(declare-datatypes ((array!67810 0))(
  ( (array!67811 (arr!32604 (Array (_ BitVec 32) ValueCell!12009)) (size!33141 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67810)

(declare-fun minValue!907 () V!39035)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39035)

(declare-fun getCurrentListMap!4055 (array!67808 array!67810 (_ BitVec 32) (_ BitVec 32) V!39035 V!39035 (_ BitVec 32) Int) ListLongMap!14241)

(assert (=> b!1065584 (= lt!470023 (getCurrentListMap!4055 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065584 (= lt!470020 (getCurrentListMap!4055 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!711367 () Bool)

(assert (=> start!94266 (=> (not res!711367) (not e!607546))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94266 (= res!711367 (validMask!0 mask!1515))))

(assert (=> start!94266 e!607546))

(assert (=> start!94266 true))

(declare-fun tp_is_empty!25425 () Bool)

(assert (=> start!94266 tp_is_empty!25425))

(declare-fun e!607548 () Bool)

(declare-fun array_inv!25084 (array!67810) Bool)

(assert (=> start!94266 (and (array_inv!25084 _values!955) e!607548)))

(assert (=> start!94266 tp!76284))

(declare-fun array_inv!25085 (array!67808) Bool)

(assert (=> start!94266 (array_inv!25085 _keys!1163)))

(declare-fun mapNonEmpty!39823 () Bool)

(declare-fun tp!76283 () Bool)

(declare-fun e!607545 () Bool)

(assert (=> mapNonEmpty!39823 (= mapRes!39823 (and tp!76283 e!607545))))

(declare-fun mapRest!39823 () (Array (_ BitVec 32) ValueCell!12009))

(declare-fun mapKey!39823 () (_ BitVec 32))

(declare-fun mapValue!39823 () ValueCell!12009)

(assert (=> mapNonEmpty!39823 (= (arr!32604 _values!955) (store mapRest!39823 mapKey!39823 mapValue!39823))))

(declare-fun b!1065585 () Bool)

(declare-fun e!607549 () Bool)

(assert (=> b!1065585 (= e!607548 (and e!607549 mapRes!39823))))

(declare-fun condMapEmpty!39823 () Bool)

(declare-fun mapDefault!39823 () ValueCell!12009)

(assert (=> b!1065585 (= condMapEmpty!39823 (= (arr!32604 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12009)) mapDefault!39823)))))

(declare-fun b!1065586 () Bool)

(assert (=> b!1065586 (= e!607549 tp_is_empty!25425)))

(declare-fun b!1065587 () Bool)

(declare-fun res!711368 () Bool)

(assert (=> b!1065587 (=> (not res!711368) (not e!607546))))

(assert (=> b!1065587 (= res!711368 (and (= (size!33141 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33140 _keys!1163) (size!33141 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1065588 () Bool)

(declare-fun res!711366 () Bool)

(assert (=> b!1065588 (=> (not res!711366) (not e!607546))))

(declare-datatypes ((List!22861 0))(
  ( (Nil!22858) (Cons!22857 (h!24066 (_ BitVec 64)) (t!32187 List!22861)) )
))
(declare-fun arrayNoDuplicates!0 (array!67808 (_ BitVec 32) List!22861) Bool)

(assert (=> b!1065588 (= res!711366 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22858))))

(declare-fun b!1065589 () Bool)

(assert (=> b!1065589 (= e!607545 tp_is_empty!25425)))

(declare-fun b!1065590 () Bool)

(assert (=> b!1065590 (= e!607546 (not e!607544))))

(declare-fun res!711364 () Bool)

(assert (=> b!1065590 (=> res!711364 e!607544)))

(assert (=> b!1065590 (= res!711364 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1065590 (= lt!470019 lt!470022)))

(declare-fun lt!470024 () Unit!34934)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!724 (array!67808 array!67810 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39035 V!39035 V!39035 V!39035 (_ BitVec 32) Int) Unit!34934)

(assert (=> b!1065590 (= lt!470024 (lemmaNoChangeToArrayThenSameMapNoExtras!724 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3685 (array!67808 array!67810 (_ BitVec 32) (_ BitVec 32) V!39035 V!39035 (_ BitVec 32) Int) ListLongMap!14241)

(assert (=> b!1065590 (= lt!470022 (getCurrentListMapNoExtraKeys!3685 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065590 (= lt!470019 (getCurrentListMapNoExtraKeys!3685 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94266 res!711367) b!1065587))

(assert (= (and b!1065587 res!711368) b!1065583))

(assert (= (and b!1065583 res!711365) b!1065588))

(assert (= (and b!1065588 res!711366) b!1065590))

(assert (= (and b!1065590 (not res!711364)) b!1065584))

(assert (= (and b!1065585 condMapEmpty!39823) mapIsEmpty!39823))

(assert (= (and b!1065585 (not condMapEmpty!39823)) mapNonEmpty!39823))

(get-info :version)

(assert (= (and mapNonEmpty!39823 ((_ is ValueCellFull!12009) mapValue!39823)) b!1065589))

(assert (= (and b!1065585 ((_ is ValueCellFull!12009) mapDefault!39823)) b!1065586))

(assert (= start!94266 b!1065585))

(declare-fun m!984225 () Bool)

(assert (=> start!94266 m!984225))

(declare-fun m!984227 () Bool)

(assert (=> start!94266 m!984227))

(declare-fun m!984229 () Bool)

(assert (=> start!94266 m!984229))

(declare-fun m!984231 () Bool)

(assert (=> mapNonEmpty!39823 m!984231))

(declare-fun m!984233 () Bool)

(assert (=> b!1065590 m!984233))

(declare-fun m!984235 () Bool)

(assert (=> b!1065590 m!984235))

(declare-fun m!984237 () Bool)

(assert (=> b!1065590 m!984237))

(declare-fun m!984239 () Bool)

(assert (=> b!1065583 m!984239))

(declare-fun m!984241 () Bool)

(assert (=> b!1065584 m!984241))

(declare-fun m!984243 () Bool)

(assert (=> b!1065584 m!984243))

(declare-fun m!984245 () Bool)

(assert (=> b!1065584 m!984245))

(declare-fun m!984247 () Bool)

(assert (=> b!1065584 m!984247))

(declare-fun m!984249 () Bool)

(assert (=> b!1065584 m!984249))

(declare-fun m!984251 () Bool)

(assert (=> b!1065584 m!984251))

(declare-fun m!984253 () Bool)

(assert (=> b!1065588 m!984253))

(check-sat (not b!1065590) (not b!1065584) tp_is_empty!25425 (not b_next!21615) b_and!34393 (not b!1065588) (not mapNonEmpty!39823) (not b!1065583) (not start!94266))
(check-sat b_and!34393 (not b_next!21615))
