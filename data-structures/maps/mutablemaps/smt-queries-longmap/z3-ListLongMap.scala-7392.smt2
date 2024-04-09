; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94166 () Bool)

(assert start!94166)

(declare-fun b_free!21531 () Bool)

(declare-fun b_next!21531 () Bool)

(assert (=> start!94166 (= b_free!21531 (not b_next!21531))))

(declare-fun tp!76028 () Bool)

(declare-fun b_and!34299 () Bool)

(assert (=> start!94166 (= tp!76028 b_and!34299)))

(declare-fun b!1064418 () Bool)

(declare-fun e!606690 () Bool)

(declare-fun tp_is_empty!25341 () Bool)

(assert (=> b!1064418 (= e!606690 tp_is_empty!25341)))

(declare-fun b!1064419 () Bool)

(declare-fun e!606688 () Bool)

(assert (=> b!1064419 (= e!606688 true)))

(declare-datatypes ((V!38923 0))(
  ( (V!38924 (val!12721 Int)) )
))
(declare-fun zeroValueBefore!47 () V!38923)

(declare-datatypes ((tuple2!16194 0))(
  ( (tuple2!16195 (_1!8107 (_ BitVec 64)) (_2!8107 V!38923)) )
))
(declare-datatypes ((List!22796 0))(
  ( (Nil!22793) (Cons!22792 (h!24001 tuple2!16194) (t!32120 List!22796)) )
))
(declare-datatypes ((ListLongMap!14175 0))(
  ( (ListLongMap!14176 (toList!7103 List!22796)) )
))
(declare-fun lt!469191 () ListLongMap!14175)

(declare-datatypes ((ValueCell!11967 0))(
  ( (ValueCellFull!11967 (v!15334 V!38923)) (EmptyCell!11967) )
))
(declare-datatypes ((array!67646 0))(
  ( (array!67647 (arr!32523 (Array (_ BitVec 32) ValueCell!11967)) (size!33060 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67646)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38923)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67648 0))(
  ( (array!67649 (arr!32524 (Array (_ BitVec 32) (_ BitVec 64))) (size!33061 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67648)

(declare-fun getCurrentListMap!4029 (array!67648 array!67646 (_ BitVec 32) (_ BitVec 32) V!38923 V!38923 (_ BitVec 32) Int) ListLongMap!14175)

(assert (=> b!1064419 (= lt!469191 (getCurrentListMap!4029 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39694 () Bool)

(declare-fun mapRes!39694 () Bool)

(assert (=> mapIsEmpty!39694 mapRes!39694))

(declare-fun b!1064420 () Bool)

(declare-fun res!710670 () Bool)

(declare-fun e!606687 () Bool)

(assert (=> b!1064420 (=> (not res!710670) (not e!606687))))

(declare-datatypes ((List!22797 0))(
  ( (Nil!22794) (Cons!22793 (h!24002 (_ BitVec 64)) (t!32121 List!22797)) )
))
(declare-fun arrayNoDuplicates!0 (array!67648 (_ BitVec 32) List!22797) Bool)

(assert (=> b!1064420 (= res!710670 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22794))))

(declare-fun b!1064421 () Bool)

(declare-fun res!710668 () Bool)

(assert (=> b!1064421 (=> (not res!710668) (not e!606687))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1064421 (= res!710668 (and (= (size!33060 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33061 _keys!1163) (size!33060 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064422 () Bool)

(declare-fun res!710667 () Bool)

(assert (=> b!1064422 (=> (not res!710667) (not e!606687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67648 (_ BitVec 32)) Bool)

(assert (=> b!1064422 (= res!710667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1064423 () Bool)

(assert (=> b!1064423 (= e!606687 (not e!606688))))

(declare-fun res!710671 () Bool)

(assert (=> b!1064423 (=> res!710671 e!606688)))

(assert (=> b!1064423 (= res!710671 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!469194 () ListLongMap!14175)

(declare-fun lt!469193 () ListLongMap!14175)

(assert (=> b!1064423 (= lt!469194 lt!469193)))

(declare-datatypes ((Unit!34873 0))(
  ( (Unit!34874) )
))
(declare-fun lt!469192 () Unit!34873)

(declare-fun zeroValueAfter!47 () V!38923)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!696 (array!67648 array!67646 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38923 V!38923 V!38923 V!38923 (_ BitVec 32) Int) Unit!34873)

(assert (=> b!1064423 (= lt!469192 (lemmaNoChangeToArrayThenSameMapNoExtras!696 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3657 (array!67648 array!67646 (_ BitVec 32) (_ BitVec 32) V!38923 V!38923 (_ BitVec 32) Int) ListLongMap!14175)

(assert (=> b!1064423 (= lt!469193 (getCurrentListMapNoExtraKeys!3657 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064423 (= lt!469194 (getCurrentListMapNoExtraKeys!3657 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064424 () Bool)

(declare-fun e!606689 () Bool)

(assert (=> b!1064424 (= e!606689 tp_is_empty!25341)))

(declare-fun res!710669 () Bool)

(assert (=> start!94166 (=> (not res!710669) (not e!606687))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94166 (= res!710669 (validMask!0 mask!1515))))

(assert (=> start!94166 e!606687))

(assert (=> start!94166 true))

(assert (=> start!94166 tp_is_empty!25341))

(declare-fun e!606685 () Bool)

(declare-fun array_inv!25022 (array!67646) Bool)

(assert (=> start!94166 (and (array_inv!25022 _values!955) e!606685)))

(assert (=> start!94166 tp!76028))

(declare-fun array_inv!25023 (array!67648) Bool)

(assert (=> start!94166 (array_inv!25023 _keys!1163)))

(declare-fun mapNonEmpty!39694 () Bool)

(declare-fun tp!76029 () Bool)

(assert (=> mapNonEmpty!39694 (= mapRes!39694 (and tp!76029 e!606690))))

(declare-fun mapRest!39694 () (Array (_ BitVec 32) ValueCell!11967))

(declare-fun mapKey!39694 () (_ BitVec 32))

(declare-fun mapValue!39694 () ValueCell!11967)

(assert (=> mapNonEmpty!39694 (= (arr!32523 _values!955) (store mapRest!39694 mapKey!39694 mapValue!39694))))

(declare-fun b!1064425 () Bool)

(assert (=> b!1064425 (= e!606685 (and e!606689 mapRes!39694))))

(declare-fun condMapEmpty!39694 () Bool)

(declare-fun mapDefault!39694 () ValueCell!11967)

(assert (=> b!1064425 (= condMapEmpty!39694 (= (arr!32523 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11967)) mapDefault!39694)))))

(assert (= (and start!94166 res!710669) b!1064421))

(assert (= (and b!1064421 res!710668) b!1064422))

(assert (= (and b!1064422 res!710667) b!1064420))

(assert (= (and b!1064420 res!710670) b!1064423))

(assert (= (and b!1064423 (not res!710671)) b!1064419))

(assert (= (and b!1064425 condMapEmpty!39694) mapIsEmpty!39694))

(assert (= (and b!1064425 (not condMapEmpty!39694)) mapNonEmpty!39694))

(get-info :version)

(assert (= (and mapNonEmpty!39694 ((_ is ValueCellFull!11967) mapValue!39694)) b!1064418))

(assert (= (and b!1064425 ((_ is ValueCellFull!11967) mapDefault!39694)) b!1064424))

(assert (= start!94166 b!1064425))

(declare-fun m!983095 () Bool)

(assert (=> b!1064422 m!983095))

(declare-fun m!983097 () Bool)

(assert (=> start!94166 m!983097))

(declare-fun m!983099 () Bool)

(assert (=> start!94166 m!983099))

(declare-fun m!983101 () Bool)

(assert (=> start!94166 m!983101))

(declare-fun m!983103 () Bool)

(assert (=> b!1064423 m!983103))

(declare-fun m!983105 () Bool)

(assert (=> b!1064423 m!983105))

(declare-fun m!983107 () Bool)

(assert (=> b!1064423 m!983107))

(declare-fun m!983109 () Bool)

(assert (=> mapNonEmpty!39694 m!983109))

(declare-fun m!983111 () Bool)

(assert (=> b!1064420 m!983111))

(declare-fun m!983113 () Bool)

(assert (=> b!1064419 m!983113))

(check-sat (not b!1064419) (not b!1064423) (not b_next!21531) (not b!1064420) tp_is_empty!25341 (not mapNonEmpty!39694) b_and!34299 (not start!94166) (not b!1064422))
(check-sat b_and!34299 (not b_next!21531))
