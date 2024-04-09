; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94172 () Bool)

(assert start!94172)

(declare-fun b_free!21537 () Bool)

(declare-fun b_next!21537 () Bool)

(assert (=> start!94172 (= b_free!21537 (not b_next!21537))))

(declare-fun tp!76046 () Bool)

(declare-fun b_and!34305 () Bool)

(assert (=> start!94172 (= tp!76046 b_and!34305)))

(declare-fun b!1064490 () Bool)

(declare-fun e!606739 () Bool)

(declare-fun tp_is_empty!25347 () Bool)

(assert (=> b!1064490 (= e!606739 tp_is_empty!25347)))

(declare-fun b!1064491 () Bool)

(declare-fun res!710716 () Bool)

(declare-fun e!606741 () Bool)

(assert (=> b!1064491 (=> (not res!710716) (not e!606741))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38931 0))(
  ( (V!38932 (val!12724 Int)) )
))
(declare-datatypes ((ValueCell!11970 0))(
  ( (ValueCellFull!11970 (v!15337 V!38931)) (EmptyCell!11970) )
))
(declare-datatypes ((array!67658 0))(
  ( (array!67659 (arr!32529 (Array (_ BitVec 32) ValueCell!11970)) (size!33066 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67658)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67660 0))(
  ( (array!67661 (arr!32530 (Array (_ BitVec 32) (_ BitVec 64))) (size!33067 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67660)

(assert (=> b!1064491 (= res!710716 (and (= (size!33066 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33067 _keys!1163) (size!33066 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064492 () Bool)

(declare-fun e!606744 () Bool)

(assert (=> b!1064492 (= e!606741 (not e!606744))))

(declare-fun res!710715 () Bool)

(assert (=> b!1064492 (=> res!710715 e!606744)))

(assert (=> b!1064492 (= res!710715 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16200 0))(
  ( (tuple2!16201 (_1!8110 (_ BitVec 64)) (_2!8110 V!38931)) )
))
(declare-datatypes ((List!22801 0))(
  ( (Nil!22798) (Cons!22797 (h!24006 tuple2!16200) (t!32125 List!22801)) )
))
(declare-datatypes ((ListLongMap!14181 0))(
  ( (ListLongMap!14182 (toList!7106 List!22801)) )
))
(declare-fun lt!469228 () ListLongMap!14181)

(declare-fun lt!469230 () ListLongMap!14181)

(assert (=> b!1064492 (= lt!469228 lt!469230)))

(declare-fun zeroValueBefore!47 () V!38931)

(declare-fun minValue!907 () V!38931)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38931)

(declare-datatypes ((Unit!34879 0))(
  ( (Unit!34880) )
))
(declare-fun lt!469229 () Unit!34879)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!699 (array!67660 array!67658 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38931 V!38931 V!38931 V!38931 (_ BitVec 32) Int) Unit!34879)

(assert (=> b!1064492 (= lt!469229 (lemmaNoChangeToArrayThenSameMapNoExtras!699 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3660 (array!67660 array!67658 (_ BitVec 32) (_ BitVec 32) V!38931 V!38931 (_ BitVec 32) Int) ListLongMap!14181)

(assert (=> b!1064492 (= lt!469230 (getCurrentListMapNoExtraKeys!3660 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064492 (= lt!469228 (getCurrentListMapNoExtraKeys!3660 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39703 () Bool)

(declare-fun mapRes!39703 () Bool)

(declare-fun tp!76047 () Bool)

(declare-fun e!606742 () Bool)

(assert (=> mapNonEmpty!39703 (= mapRes!39703 (and tp!76047 e!606742))))

(declare-fun mapRest!39703 () (Array (_ BitVec 32) ValueCell!11970))

(declare-fun mapValue!39703 () ValueCell!11970)

(declare-fun mapKey!39703 () (_ BitVec 32))

(assert (=> mapNonEmpty!39703 (= (arr!32529 _values!955) (store mapRest!39703 mapKey!39703 mapValue!39703))))

(declare-fun b!1064493 () Bool)

(declare-fun res!710713 () Bool)

(assert (=> b!1064493 (=> (not res!710713) (not e!606741))))

(declare-datatypes ((List!22802 0))(
  ( (Nil!22799) (Cons!22798 (h!24007 (_ BitVec 64)) (t!32126 List!22802)) )
))
(declare-fun arrayNoDuplicates!0 (array!67660 (_ BitVec 32) List!22802) Bool)

(assert (=> b!1064493 (= res!710713 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22799))))

(declare-fun mapIsEmpty!39703 () Bool)

(assert (=> mapIsEmpty!39703 mapRes!39703))

(declare-fun b!1064494 () Bool)

(assert (=> b!1064494 (= e!606744 true)))

(declare-fun lt!469227 () ListLongMap!14181)

(declare-fun getCurrentListMap!4030 (array!67660 array!67658 (_ BitVec 32) (_ BitVec 32) V!38931 V!38931 (_ BitVec 32) Int) ListLongMap!14181)

(assert (=> b!1064494 (= lt!469227 (getCurrentListMap!4030 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!710712 () Bool)

(assert (=> start!94172 (=> (not res!710712) (not e!606741))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94172 (= res!710712 (validMask!0 mask!1515))))

(assert (=> start!94172 e!606741))

(assert (=> start!94172 true))

(assert (=> start!94172 tp_is_empty!25347))

(declare-fun e!606740 () Bool)

(declare-fun array_inv!25026 (array!67658) Bool)

(assert (=> start!94172 (and (array_inv!25026 _values!955) e!606740)))

(assert (=> start!94172 tp!76046))

(declare-fun array_inv!25027 (array!67660) Bool)

(assert (=> start!94172 (array_inv!25027 _keys!1163)))

(declare-fun b!1064495 () Bool)

(assert (=> b!1064495 (= e!606740 (and e!606739 mapRes!39703))))

(declare-fun condMapEmpty!39703 () Bool)

(declare-fun mapDefault!39703 () ValueCell!11970)

(assert (=> b!1064495 (= condMapEmpty!39703 (= (arr!32529 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11970)) mapDefault!39703)))))

(declare-fun b!1064496 () Bool)

(declare-fun res!710714 () Bool)

(assert (=> b!1064496 (=> (not res!710714) (not e!606741))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67660 (_ BitVec 32)) Bool)

(assert (=> b!1064496 (= res!710714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1064497 () Bool)

(assert (=> b!1064497 (= e!606742 tp_is_empty!25347)))

(assert (= (and start!94172 res!710712) b!1064491))

(assert (= (and b!1064491 res!710716) b!1064496))

(assert (= (and b!1064496 res!710714) b!1064493))

(assert (= (and b!1064493 res!710713) b!1064492))

(assert (= (and b!1064492 (not res!710715)) b!1064494))

(assert (= (and b!1064495 condMapEmpty!39703) mapIsEmpty!39703))

(assert (= (and b!1064495 (not condMapEmpty!39703)) mapNonEmpty!39703))

(get-info :version)

(assert (= (and mapNonEmpty!39703 ((_ is ValueCellFull!11970) mapValue!39703)) b!1064497))

(assert (= (and b!1064495 ((_ is ValueCellFull!11970) mapDefault!39703)) b!1064490))

(assert (= start!94172 b!1064495))

(declare-fun m!983155 () Bool)

(assert (=> b!1064494 m!983155))

(declare-fun m!983157 () Bool)

(assert (=> b!1064496 m!983157))

(declare-fun m!983159 () Bool)

(assert (=> start!94172 m!983159))

(declare-fun m!983161 () Bool)

(assert (=> start!94172 m!983161))

(declare-fun m!983163 () Bool)

(assert (=> start!94172 m!983163))

(declare-fun m!983165 () Bool)

(assert (=> mapNonEmpty!39703 m!983165))

(declare-fun m!983167 () Bool)

(assert (=> b!1064493 m!983167))

(declare-fun m!983169 () Bool)

(assert (=> b!1064492 m!983169))

(declare-fun m!983171 () Bool)

(assert (=> b!1064492 m!983171))

(declare-fun m!983173 () Bool)

(assert (=> b!1064492 m!983173))

(check-sat (not b_next!21537) (not b!1064493) b_and!34305 tp_is_empty!25347 (not start!94172) (not mapNonEmpty!39703) (not b!1064496) (not b!1064494) (not b!1064492))
(check-sat b_and!34305 (not b_next!21537))
