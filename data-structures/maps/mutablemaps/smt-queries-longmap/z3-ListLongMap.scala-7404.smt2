; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94254 () Bool)

(assert start!94254)

(declare-fun b_free!21603 () Bool)

(declare-fun b_next!21603 () Bool)

(assert (=> start!94254 (= b_free!21603 (not b_next!21603))))

(declare-fun tp!76247 () Bool)

(declare-fun b_and!34381 () Bool)

(assert (=> start!94254 (= tp!76247 b_and!34381)))

(declare-fun b!1065439 () Bool)

(declare-fun res!711275 () Bool)

(declare-fun e!607438 () Bool)

(assert (=> b!1065439 (=> (not res!711275) (not e!607438))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39019 0))(
  ( (V!39020 (val!12757 Int)) )
))
(declare-datatypes ((ValueCell!12003 0))(
  ( (ValueCellFull!12003 (v!15370 V!39019)) (EmptyCell!12003) )
))
(declare-datatypes ((array!67786 0))(
  ( (array!67787 (arr!32592 (Array (_ BitVec 32) ValueCell!12003)) (size!33129 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67786)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67788 0))(
  ( (array!67789 (arr!32593 (Array (_ BitVec 32) (_ BitVec 64))) (size!33130 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67788)

(assert (=> b!1065439 (= res!711275 (and (= (size!33129 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33130 _keys!1163) (size!33129 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1065440 () Bool)

(declare-fun res!711278 () Bool)

(assert (=> b!1065440 (=> (not res!711278) (not e!607438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67788 (_ BitVec 32)) Bool)

(assert (=> b!1065440 (= res!711278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1065441 () Bool)

(declare-fun e!607440 () Bool)

(declare-fun e!607439 () Bool)

(declare-fun mapRes!39805 () Bool)

(assert (=> b!1065441 (= e!607440 (and e!607439 mapRes!39805))))

(declare-fun condMapEmpty!39805 () Bool)

(declare-fun mapDefault!39805 () ValueCell!12003)

(assert (=> b!1065441 (= condMapEmpty!39805 (= (arr!32592 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12003)) mapDefault!39805)))))

(declare-fun b!1065442 () Bool)

(declare-fun tp_is_empty!25413 () Bool)

(assert (=> b!1065442 (= e!607439 tp_is_empty!25413)))

(declare-fun b!1065444 () Bool)

(declare-fun e!607441 () Bool)

(assert (=> b!1065444 (= e!607441 true)))

(declare-datatypes ((tuple2!16250 0))(
  ( (tuple2!16251 (_1!8135 (_ BitVec 64)) (_2!8135 V!39019)) )
))
(declare-datatypes ((List!22850 0))(
  ( (Nil!22847) (Cons!22846 (h!24055 tuple2!16250) (t!32176 List!22850)) )
))
(declare-datatypes ((ListLongMap!14231 0))(
  ( (ListLongMap!14232 (toList!7131 List!22850)) )
))
(declare-fun lt!469882 () ListLongMap!14231)

(declare-fun lt!469881 () ListLongMap!14231)

(declare-fun -!597 (ListLongMap!14231 (_ BitVec 64)) ListLongMap!14231)

(assert (=> b!1065444 (= lt!469882 (-!597 lt!469881 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!469877 () ListLongMap!14231)

(declare-fun lt!469876 () ListLongMap!14231)

(assert (=> b!1065444 (= (-!597 lt!469877 #b0000000000000000000000000000000000000000000000000000000000000000) lt!469876)))

(declare-datatypes ((Unit!34924 0))(
  ( (Unit!34925) )
))
(declare-fun lt!469880 () Unit!34924)

(declare-fun zeroValueBefore!47 () V!39019)

(declare-fun addThenRemoveForNewKeyIsSame!6 (ListLongMap!14231 (_ BitVec 64) V!39019) Unit!34924)

(assert (=> b!1065444 (= lt!469880 (addThenRemoveForNewKeyIsSame!6 lt!469876 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!469875 () ListLongMap!14231)

(declare-fun lt!469878 () ListLongMap!14231)

(assert (=> b!1065444 (and (= lt!469881 lt!469877) (= lt!469875 lt!469878))))

(declare-fun +!3088 (ListLongMap!14231 tuple2!16250) ListLongMap!14231)

(assert (=> b!1065444 (= lt!469877 (+!3088 lt!469876 (tuple2!16251 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun minValue!907 () V!39019)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39019)

(declare-fun getCurrentListMap!4051 (array!67788 array!67786 (_ BitVec 32) (_ BitVec 32) V!39019 V!39019 (_ BitVec 32) Int) ListLongMap!14231)

(assert (=> b!1065444 (= lt!469875 (getCurrentListMap!4051 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065444 (= lt!469881 (getCurrentListMap!4051 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065445 () Bool)

(declare-fun e!607437 () Bool)

(assert (=> b!1065445 (= e!607437 tp_is_empty!25413)))

(declare-fun b!1065446 () Bool)

(declare-fun res!711274 () Bool)

(assert (=> b!1065446 (=> (not res!711274) (not e!607438))))

(declare-datatypes ((List!22851 0))(
  ( (Nil!22848) (Cons!22847 (h!24056 (_ BitVec 64)) (t!32177 List!22851)) )
))
(declare-fun arrayNoDuplicates!0 (array!67788 (_ BitVec 32) List!22851) Bool)

(assert (=> b!1065446 (= res!711274 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22848))))

(declare-fun mapIsEmpty!39805 () Bool)

(assert (=> mapIsEmpty!39805 mapRes!39805))

(declare-fun mapNonEmpty!39805 () Bool)

(declare-fun tp!76248 () Bool)

(assert (=> mapNonEmpty!39805 (= mapRes!39805 (and tp!76248 e!607437))))

(declare-fun mapValue!39805 () ValueCell!12003)

(declare-fun mapKey!39805 () (_ BitVec 32))

(declare-fun mapRest!39805 () (Array (_ BitVec 32) ValueCell!12003))

(assert (=> mapNonEmpty!39805 (= (arr!32592 _values!955) (store mapRest!39805 mapKey!39805 mapValue!39805))))

(declare-fun b!1065443 () Bool)

(assert (=> b!1065443 (= e!607438 (not e!607441))))

(declare-fun res!711277 () Bool)

(assert (=> b!1065443 (=> res!711277 e!607441)))

(assert (=> b!1065443 (= res!711277 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1065443 (= lt!469876 lt!469878)))

(declare-fun lt!469879 () Unit!34924)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!720 (array!67788 array!67786 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39019 V!39019 V!39019 V!39019 (_ BitVec 32) Int) Unit!34924)

(assert (=> b!1065443 (= lt!469879 (lemmaNoChangeToArrayThenSameMapNoExtras!720 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3681 (array!67788 array!67786 (_ BitVec 32) (_ BitVec 32) V!39019 V!39019 (_ BitVec 32) Int) ListLongMap!14231)

(assert (=> b!1065443 (= lt!469878 (getCurrentListMapNoExtraKeys!3681 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065443 (= lt!469876 (getCurrentListMapNoExtraKeys!3681 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!711276 () Bool)

(assert (=> start!94254 (=> (not res!711276) (not e!607438))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94254 (= res!711276 (validMask!0 mask!1515))))

(assert (=> start!94254 e!607438))

(assert (=> start!94254 true))

(assert (=> start!94254 tp_is_empty!25413))

(declare-fun array_inv!25074 (array!67786) Bool)

(assert (=> start!94254 (and (array_inv!25074 _values!955) e!607440)))

(assert (=> start!94254 tp!76247))

(declare-fun array_inv!25075 (array!67788) Bool)

(assert (=> start!94254 (array_inv!25075 _keys!1163)))

(assert (= (and start!94254 res!711276) b!1065439))

(assert (= (and b!1065439 res!711275) b!1065440))

(assert (= (and b!1065440 res!711278) b!1065446))

(assert (= (and b!1065446 res!711274) b!1065443))

(assert (= (and b!1065443 (not res!711277)) b!1065444))

(assert (= (and b!1065441 condMapEmpty!39805) mapIsEmpty!39805))

(assert (= (and b!1065441 (not condMapEmpty!39805)) mapNonEmpty!39805))

(get-info :version)

(assert (= (and mapNonEmpty!39805 ((_ is ValueCellFull!12003) mapValue!39805)) b!1065445))

(assert (= (and b!1065441 ((_ is ValueCellFull!12003) mapDefault!39805)) b!1065442))

(assert (= start!94254 b!1065441))

(declare-fun m!984045 () Bool)

(assert (=> b!1065444 m!984045))

(declare-fun m!984047 () Bool)

(assert (=> b!1065444 m!984047))

(declare-fun m!984049 () Bool)

(assert (=> b!1065444 m!984049))

(declare-fun m!984051 () Bool)

(assert (=> b!1065444 m!984051))

(declare-fun m!984053 () Bool)

(assert (=> b!1065444 m!984053))

(declare-fun m!984055 () Bool)

(assert (=> b!1065444 m!984055))

(declare-fun m!984057 () Bool)

(assert (=> b!1065443 m!984057))

(declare-fun m!984059 () Bool)

(assert (=> b!1065443 m!984059))

(declare-fun m!984061 () Bool)

(assert (=> b!1065443 m!984061))

(declare-fun m!984063 () Bool)

(assert (=> mapNonEmpty!39805 m!984063))

(declare-fun m!984065 () Bool)

(assert (=> start!94254 m!984065))

(declare-fun m!984067 () Bool)

(assert (=> start!94254 m!984067))

(declare-fun m!984069 () Bool)

(assert (=> start!94254 m!984069))

(declare-fun m!984071 () Bool)

(assert (=> b!1065440 m!984071))

(declare-fun m!984073 () Bool)

(assert (=> b!1065446 m!984073))

(check-sat (not b!1065446) (not start!94254) b_and!34381 (not mapNonEmpty!39805) tp_is_empty!25413 (not b!1065443) (not b!1065440) (not b_next!21603) (not b!1065444))
(check-sat b_and!34381 (not b_next!21603))
