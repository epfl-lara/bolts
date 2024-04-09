; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94028 () Bool)

(assert start!94028)

(declare-fun b_free!21429 () Bool)

(declare-fun b_next!21429 () Bool)

(assert (=> start!94028 (= b_free!21429 (not b_next!21429))))

(declare-fun tp!75716 () Bool)

(declare-fun b_and!34179 () Bool)

(assert (=> start!94028 (= tp!75716 b_and!34179)))

(declare-fun b!1062975 () Bool)

(declare-fun e!605638 () Bool)

(declare-fun e!605637 () Bool)

(declare-fun mapRes!39535 () Bool)

(assert (=> b!1062975 (= e!605638 (and e!605637 mapRes!39535))))

(declare-fun condMapEmpty!39535 () Bool)

(declare-datatypes ((V!38787 0))(
  ( (V!38788 (val!12670 Int)) )
))
(declare-datatypes ((ValueCell!11916 0))(
  ( (ValueCellFull!11916 (v!15282 V!38787)) (EmptyCell!11916) )
))
(declare-datatypes ((array!67454 0))(
  ( (array!67455 (arr!32429 (Array (_ BitVec 32) ValueCell!11916)) (size!32966 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67454)

(declare-fun mapDefault!39535 () ValueCell!11916)

(assert (=> b!1062975 (= condMapEmpty!39535 (= (arr!32429 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11916)) mapDefault!39535)))))

(declare-fun b!1062976 () Bool)

(declare-fun res!709834 () Bool)

(declare-fun e!605636 () Bool)

(assert (=> b!1062976 (=> (not res!709834) (not e!605636))))

(declare-datatypes ((array!67456 0))(
  ( (array!67457 (arr!32430 (Array (_ BitVec 32) (_ BitVec 64))) (size!32967 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67456)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67456 (_ BitVec 32)) Bool)

(assert (=> b!1062976 (= res!709834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!709835 () Bool)

(assert (=> start!94028 (=> (not res!709835) (not e!605636))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94028 (= res!709835 (validMask!0 mask!1515))))

(assert (=> start!94028 e!605636))

(assert (=> start!94028 true))

(declare-fun tp_is_empty!25239 () Bool)

(assert (=> start!94028 tp_is_empty!25239))

(declare-fun array_inv!24960 (array!67454) Bool)

(assert (=> start!94028 (and (array_inv!24960 _values!955) e!605638)))

(assert (=> start!94028 tp!75716))

(declare-fun array_inv!24961 (array!67456) Bool)

(assert (=> start!94028 (array_inv!24961 _keys!1163)))

(declare-fun mapIsEmpty!39535 () Bool)

(assert (=> mapIsEmpty!39535 mapRes!39535))

(declare-fun b!1062977 () Bool)

(declare-fun res!709837 () Bool)

(assert (=> b!1062977 (=> (not res!709837) (not e!605636))))

(declare-datatypes ((List!22732 0))(
  ( (Nil!22729) (Cons!22728 (h!23937 (_ BitVec 64)) (t!32052 List!22732)) )
))
(declare-fun arrayNoDuplicates!0 (array!67456 (_ BitVec 32) List!22732) Bool)

(assert (=> b!1062977 (= res!709837 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22729))))

(declare-fun b!1062978 () Bool)

(declare-fun e!605640 () Bool)

(assert (=> b!1062978 (= e!605636 (not e!605640))))

(declare-fun res!709836 () Bool)

(assert (=> b!1062978 (=> res!709836 e!605640)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1062978 (= res!709836 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16124 0))(
  ( (tuple2!16125 (_1!8072 (_ BitVec 64)) (_2!8072 V!38787)) )
))
(declare-datatypes ((List!22733 0))(
  ( (Nil!22730) (Cons!22729 (h!23938 tuple2!16124) (t!32053 List!22733)) )
))
(declare-datatypes ((ListLongMap!14105 0))(
  ( (ListLongMap!14106 (toList!7068 List!22733)) )
))
(declare-fun lt!468438 () ListLongMap!14105)

(declare-fun lt!468440 () ListLongMap!14105)

(assert (=> b!1062978 (= lt!468438 lt!468440)))

(declare-fun zeroValueBefore!47 () V!38787)

(declare-datatypes ((Unit!34803 0))(
  ( (Unit!34804) )
))
(declare-fun lt!468442 () Unit!34803)

(declare-fun minValue!907 () V!38787)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38787)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!663 (array!67456 array!67454 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38787 V!38787 V!38787 V!38787 (_ BitVec 32) Int) Unit!34803)

(assert (=> b!1062978 (= lt!468442 (lemmaNoChangeToArrayThenSameMapNoExtras!663 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3624 (array!67456 array!67454 (_ BitVec 32) (_ BitVec 32) V!38787 V!38787 (_ BitVec 32) Int) ListLongMap!14105)

(assert (=> b!1062978 (= lt!468440 (getCurrentListMapNoExtraKeys!3624 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062978 (= lt!468438 (getCurrentListMapNoExtraKeys!3624 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062979 () Bool)

(declare-fun e!605635 () Bool)

(assert (=> b!1062979 (= e!605635 tp_is_empty!25239)))

(declare-fun mapNonEmpty!39535 () Bool)

(declare-fun tp!75717 () Bool)

(assert (=> mapNonEmpty!39535 (= mapRes!39535 (and tp!75717 e!605635))))

(declare-fun mapValue!39535 () ValueCell!11916)

(declare-fun mapKey!39535 () (_ BitVec 32))

(declare-fun mapRest!39535 () (Array (_ BitVec 32) ValueCell!11916))

(assert (=> mapNonEmpty!39535 (= (arr!32429 _values!955) (store mapRest!39535 mapKey!39535 mapValue!39535))))

(declare-fun b!1062980 () Bool)

(declare-fun e!605639 () Bool)

(assert (=> b!1062980 (= e!605640 e!605639)))

(declare-fun res!709833 () Bool)

(assert (=> b!1062980 (=> res!709833 e!605639)))

(declare-fun lt!468439 () ListLongMap!14105)

(declare-fun contains!6264 (ListLongMap!14105 (_ BitVec 64)) Bool)

(assert (=> b!1062980 (= res!709833 (contains!6264 lt!468439 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4013 (array!67456 array!67454 (_ BitVec 32) (_ BitVec 32) V!38787 V!38787 (_ BitVec 32) Int) ListLongMap!14105)

(assert (=> b!1062980 (= lt!468439 (getCurrentListMap!4013 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062981 () Bool)

(declare-fun res!709838 () Bool)

(assert (=> b!1062981 (=> (not res!709838) (not e!605636))))

(assert (=> b!1062981 (= res!709838 (and (= (size!32966 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32967 _keys!1163) (size!32966 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1062982 () Bool)

(assert (=> b!1062982 (= e!605639 true)))

(declare-fun -!579 (ListLongMap!14105 (_ BitVec 64)) ListLongMap!14105)

(assert (=> b!1062982 (= (-!579 lt!468439 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468439)))

(declare-fun lt!468441 () Unit!34803)

(declare-fun removeNotPresentStillSame!25 (ListLongMap!14105 (_ BitVec 64)) Unit!34803)

(assert (=> b!1062982 (= lt!468441 (removeNotPresentStillSame!25 lt!468439 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1062983 () Bool)

(assert (=> b!1062983 (= e!605637 tp_is_empty!25239)))

(assert (= (and start!94028 res!709835) b!1062981))

(assert (= (and b!1062981 res!709838) b!1062976))

(assert (= (and b!1062976 res!709834) b!1062977))

(assert (= (and b!1062977 res!709837) b!1062978))

(assert (= (and b!1062978 (not res!709836)) b!1062980))

(assert (= (and b!1062980 (not res!709833)) b!1062982))

(assert (= (and b!1062975 condMapEmpty!39535) mapIsEmpty!39535))

(assert (= (and b!1062975 (not condMapEmpty!39535)) mapNonEmpty!39535))

(get-info :version)

(assert (= (and mapNonEmpty!39535 ((_ is ValueCellFull!11916) mapValue!39535)) b!1062979))

(assert (= (and b!1062975 ((_ is ValueCellFull!11916) mapDefault!39535)) b!1062983))

(assert (= start!94028 b!1062975))

(declare-fun m!981817 () Bool)

(assert (=> start!94028 m!981817))

(declare-fun m!981819 () Bool)

(assert (=> start!94028 m!981819))

(declare-fun m!981821 () Bool)

(assert (=> start!94028 m!981821))

(declare-fun m!981823 () Bool)

(assert (=> b!1062978 m!981823))

(declare-fun m!981825 () Bool)

(assert (=> b!1062978 m!981825))

(declare-fun m!981827 () Bool)

(assert (=> b!1062978 m!981827))

(declare-fun m!981829 () Bool)

(assert (=> mapNonEmpty!39535 m!981829))

(declare-fun m!981831 () Bool)

(assert (=> b!1062982 m!981831))

(declare-fun m!981833 () Bool)

(assert (=> b!1062982 m!981833))

(declare-fun m!981835 () Bool)

(assert (=> b!1062980 m!981835))

(declare-fun m!981837 () Bool)

(assert (=> b!1062980 m!981837))

(declare-fun m!981839 () Bool)

(assert (=> b!1062977 m!981839))

(declare-fun m!981841 () Bool)

(assert (=> b!1062976 m!981841))

(check-sat (not b!1062978) (not b!1062977) (not b_next!21429) (not mapNonEmpty!39535) tp_is_empty!25239 (not b!1062982) b_and!34179 (not b!1062980) (not start!94028) (not b!1062976))
(check-sat b_and!34179 (not b_next!21429))
