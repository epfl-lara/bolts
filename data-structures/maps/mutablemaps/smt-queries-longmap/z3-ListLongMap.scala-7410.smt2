; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94312 () Bool)

(assert start!94312)

(declare-fun b_free!21639 () Bool)

(declare-fun b_next!21639 () Bool)

(assert (=> start!94312 (= b_free!21639 (not b_next!21639))))

(declare-fun tp!76359 () Bool)

(declare-fun b_and!34429 () Bool)

(assert (=> start!94312 (= tp!76359 b_and!34429)))

(declare-fun mapNonEmpty!39862 () Bool)

(declare-fun mapRes!39862 () Bool)

(declare-fun tp!76358 () Bool)

(declare-fun e!607884 () Bool)

(assert (=> mapNonEmpty!39862 (= mapRes!39862 (and tp!76358 e!607884))))

(declare-datatypes ((V!39067 0))(
  ( (V!39068 (val!12775 Int)) )
))
(declare-datatypes ((ValueCell!12021 0))(
  ( (ValueCellFull!12021 (v!15389 V!39067)) (EmptyCell!12021) )
))
(declare-fun mapValue!39862 () ValueCell!12021)

(declare-fun mapKey!39862 () (_ BitVec 32))

(declare-datatypes ((array!67858 0))(
  ( (array!67859 (arr!32627 (Array (_ BitVec 32) ValueCell!12021)) (size!33164 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67858)

(declare-fun mapRest!39862 () (Array (_ BitVec 32) ValueCell!12021))

(assert (=> mapNonEmpty!39862 (= (arr!32627 _values!955) (store mapRest!39862 mapKey!39862 mapValue!39862))))

(declare-fun res!711629 () Bool)

(declare-fun e!607882 () Bool)

(assert (=> start!94312 (=> (not res!711629) (not e!607882))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94312 (= res!711629 (validMask!0 mask!1515))))

(assert (=> start!94312 e!607882))

(assert (=> start!94312 true))

(declare-fun tp_is_empty!25449 () Bool)

(assert (=> start!94312 tp_is_empty!25449))

(declare-fun e!607883 () Bool)

(declare-fun array_inv!25102 (array!67858) Bool)

(assert (=> start!94312 (and (array_inv!25102 _values!955) e!607883)))

(assert (=> start!94312 tp!76359))

(declare-datatypes ((array!67860 0))(
  ( (array!67861 (arr!32628 (Array (_ BitVec 32) (_ BitVec 64))) (size!33165 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67860)

(declare-fun array_inv!25103 (array!67860) Bool)

(assert (=> start!94312 (array_inv!25103 _keys!1163)))

(declare-fun b!1066055 () Bool)

(declare-fun e!607880 () Bool)

(assert (=> b!1066055 (= e!607880 tp_is_empty!25449)))

(declare-fun b!1066056 () Bool)

(assert (=> b!1066056 (= e!607884 tp_is_empty!25449)))

(declare-fun b!1066057 () Bool)

(declare-fun e!607881 () Bool)

(assert (=> b!1066057 (= e!607882 (not e!607881))))

(declare-fun res!711628 () Bool)

(assert (=> b!1066057 (=> res!711628 e!607881)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066057 (= res!711628 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16282 0))(
  ( (tuple2!16283 (_1!8151 (_ BitVec 64)) (_2!8151 V!39067)) )
))
(declare-datatypes ((List!22879 0))(
  ( (Nil!22876) (Cons!22875 (h!24084 tuple2!16282) (t!32207 List!22879)) )
))
(declare-datatypes ((ListLongMap!14263 0))(
  ( (ListLongMap!14264 (toList!7147 List!22879)) )
))
(declare-fun lt!470452 () ListLongMap!14263)

(declare-fun lt!470450 () ListLongMap!14263)

(assert (=> b!1066057 (= lt!470452 lt!470450)))

(declare-fun zeroValueBefore!47 () V!39067)

(declare-datatypes ((Unit!34958 0))(
  ( (Unit!34959) )
))
(declare-fun lt!470447 () Unit!34958)

(declare-fun minValue!907 () V!39067)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39067)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!734 (array!67860 array!67858 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39067 V!39067 V!39067 V!39067 (_ BitVec 32) Int) Unit!34958)

(assert (=> b!1066057 (= lt!470447 (lemmaNoChangeToArrayThenSameMapNoExtras!734 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3695 (array!67860 array!67858 (_ BitVec 32) (_ BitVec 32) V!39067 V!39067 (_ BitVec 32) Int) ListLongMap!14263)

(assert (=> b!1066057 (= lt!470450 (getCurrentListMapNoExtraKeys!3695 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066057 (= lt!470452 (getCurrentListMapNoExtraKeys!3695 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39862 () Bool)

(assert (=> mapIsEmpty!39862 mapRes!39862))

(declare-fun b!1066058 () Bool)

(assert (=> b!1066058 (= e!607881 true)))

(declare-fun lt!470445 () ListLongMap!14263)

(declare-fun lt!470446 () ListLongMap!14263)

(declare-fun -!609 (ListLongMap!14263 (_ BitVec 64)) ListLongMap!14263)

(assert (=> b!1066058 (= lt!470445 (-!609 lt!470446 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470449 () ListLongMap!14263)

(assert (=> b!1066058 (= (-!609 lt!470449 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470452)))

(declare-fun lt!470451 () Unit!34958)

(declare-fun addThenRemoveForNewKeyIsSame!18 (ListLongMap!14263 (_ BitVec 64) V!39067) Unit!34958)

(assert (=> b!1066058 (= lt!470451 (addThenRemoveForNewKeyIsSame!18 lt!470452 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470448 () ListLongMap!14263)

(assert (=> b!1066058 (and (= lt!470446 lt!470449) (= lt!470448 lt!470450))))

(declare-fun +!3100 (ListLongMap!14263 tuple2!16282) ListLongMap!14263)

(assert (=> b!1066058 (= lt!470449 (+!3100 lt!470452 (tuple2!16283 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun getCurrentListMap!4063 (array!67860 array!67858 (_ BitVec 32) (_ BitVec 32) V!39067 V!39067 (_ BitVec 32) Int) ListLongMap!14263)

(assert (=> b!1066058 (= lt!470448 (getCurrentListMap!4063 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066058 (= lt!470446 (getCurrentListMap!4063 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066059 () Bool)

(assert (=> b!1066059 (= e!607883 (and e!607880 mapRes!39862))))

(declare-fun condMapEmpty!39862 () Bool)

(declare-fun mapDefault!39862 () ValueCell!12021)

(assert (=> b!1066059 (= condMapEmpty!39862 (= (arr!32627 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12021)) mapDefault!39862)))))

(declare-fun b!1066060 () Bool)

(declare-fun res!711630 () Bool)

(assert (=> b!1066060 (=> (not res!711630) (not e!607882))))

(declare-datatypes ((List!22880 0))(
  ( (Nil!22877) (Cons!22876 (h!24085 (_ BitVec 64)) (t!32208 List!22880)) )
))
(declare-fun arrayNoDuplicates!0 (array!67860 (_ BitVec 32) List!22880) Bool)

(assert (=> b!1066060 (= res!711630 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22877))))

(declare-fun b!1066061 () Bool)

(declare-fun res!711627 () Bool)

(assert (=> b!1066061 (=> (not res!711627) (not e!607882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67860 (_ BitVec 32)) Bool)

(assert (=> b!1066061 (= res!711627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1066062 () Bool)

(declare-fun res!711626 () Bool)

(assert (=> b!1066062 (=> (not res!711626) (not e!607882))))

(assert (=> b!1066062 (= res!711626 (and (= (size!33164 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33165 _keys!1163) (size!33164 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!94312 res!711629) b!1066062))

(assert (= (and b!1066062 res!711626) b!1066061))

(assert (= (and b!1066061 res!711627) b!1066060))

(assert (= (and b!1066060 res!711630) b!1066057))

(assert (= (and b!1066057 (not res!711628)) b!1066058))

(assert (= (and b!1066059 condMapEmpty!39862) mapIsEmpty!39862))

(assert (= (and b!1066059 (not condMapEmpty!39862)) mapNonEmpty!39862))

(get-info :version)

(assert (= (and mapNonEmpty!39862 ((_ is ValueCellFull!12021) mapValue!39862)) b!1066056))

(assert (= (and b!1066059 ((_ is ValueCellFull!12021) mapDefault!39862)) b!1066055))

(assert (= start!94312 b!1066059))

(declare-fun m!984769 () Bool)

(assert (=> start!94312 m!984769))

(declare-fun m!984771 () Bool)

(assert (=> start!94312 m!984771))

(declare-fun m!984773 () Bool)

(assert (=> start!94312 m!984773))

(declare-fun m!984775 () Bool)

(assert (=> b!1066057 m!984775))

(declare-fun m!984777 () Bool)

(assert (=> b!1066057 m!984777))

(declare-fun m!984779 () Bool)

(assert (=> b!1066057 m!984779))

(declare-fun m!984781 () Bool)

(assert (=> b!1066058 m!984781))

(declare-fun m!984783 () Bool)

(assert (=> b!1066058 m!984783))

(declare-fun m!984785 () Bool)

(assert (=> b!1066058 m!984785))

(declare-fun m!984787 () Bool)

(assert (=> b!1066058 m!984787))

(declare-fun m!984789 () Bool)

(assert (=> b!1066058 m!984789))

(declare-fun m!984791 () Bool)

(assert (=> b!1066058 m!984791))

(declare-fun m!984793 () Bool)

(assert (=> mapNonEmpty!39862 m!984793))

(declare-fun m!984795 () Bool)

(assert (=> b!1066060 m!984795))

(declare-fun m!984797 () Bool)

(assert (=> b!1066061 m!984797))

(check-sat (not mapNonEmpty!39862) b_and!34429 (not b!1066058) (not b!1066061) tp_is_empty!25449 (not start!94312) (not b!1066060) (not b_next!21639) (not b!1066057))
(check-sat b_and!34429 (not b_next!21639))
