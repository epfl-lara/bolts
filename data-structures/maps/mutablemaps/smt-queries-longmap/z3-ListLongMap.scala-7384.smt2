; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94104 () Bool)

(assert start!94104)

(declare-fun b_free!21483 () Bool)

(declare-fun b_next!21483 () Bool)

(assert (=> start!94104 (= b_free!21483 (not b_next!21483))))

(declare-fun tp!75881 () Bool)

(declare-fun b_and!34243 () Bool)

(assert (=> start!94104 (= tp!75881 b_and!34243)))

(declare-fun b!1063815 () Bool)

(declare-fun e!606256 () Bool)

(declare-fun tp_is_empty!25293 () Bool)

(assert (=> b!1063815 (= e!606256 tp_is_empty!25293)))

(declare-fun b!1063816 () Bool)

(declare-fun e!606260 () Bool)

(declare-fun e!606257 () Bool)

(declare-fun mapRes!39619 () Bool)

(assert (=> b!1063816 (= e!606260 (and e!606257 mapRes!39619))))

(declare-fun condMapEmpty!39619 () Bool)

(declare-datatypes ((V!38859 0))(
  ( (V!38860 (val!12697 Int)) )
))
(declare-datatypes ((ValueCell!11943 0))(
  ( (ValueCellFull!11943 (v!15310 V!38859)) (EmptyCell!11943) )
))
(declare-datatypes ((array!67560 0))(
  ( (array!67561 (arr!32481 (Array (_ BitVec 32) ValueCell!11943)) (size!33018 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67560)

(declare-fun mapDefault!39619 () ValueCell!11943)

(assert (=> b!1063816 (= condMapEmpty!39619 (= (arr!32481 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11943)) mapDefault!39619)))))

(declare-fun b!1063817 () Bool)

(declare-fun res!710337 () Bool)

(declare-fun e!606259 () Bool)

(assert (=> b!1063817 (=> (not res!710337) (not e!606259))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67562 0))(
  ( (array!67563 (arr!32482 (Array (_ BitVec 32) (_ BitVec 64))) (size!33019 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67562)

(assert (=> b!1063817 (= res!710337 (and (= (size!33018 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33019 _keys!1163) (size!33018 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39619 () Bool)

(declare-fun tp!75882 () Bool)

(assert (=> mapNonEmpty!39619 (= mapRes!39619 (and tp!75882 e!606256))))

(declare-fun mapValue!39619 () ValueCell!11943)

(declare-fun mapRest!39619 () (Array (_ BitVec 32) ValueCell!11943))

(declare-fun mapKey!39619 () (_ BitVec 32))

(assert (=> mapNonEmpty!39619 (= (arr!32481 _values!955) (store mapRest!39619 mapKey!39619 mapValue!39619))))

(declare-fun b!1063818 () Bool)

(assert (=> b!1063818 (= e!606257 tp_is_empty!25293)))

(declare-fun b!1063819 () Bool)

(declare-fun res!710335 () Bool)

(assert (=> b!1063819 (=> (not res!710335) (not e!606259))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67562 (_ BitVec 32)) Bool)

(assert (=> b!1063819 (= res!710335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39619 () Bool)

(assert (=> mapIsEmpty!39619 mapRes!39619))

(declare-fun res!710334 () Bool)

(assert (=> start!94104 (=> (not res!710334) (not e!606259))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94104 (= res!710334 (validMask!0 mask!1515))))

(assert (=> start!94104 e!606259))

(assert (=> start!94104 true))

(assert (=> start!94104 tp_is_empty!25293))

(declare-fun array_inv!24990 (array!67560) Bool)

(assert (=> start!94104 (and (array_inv!24990 _values!955) e!606260)))

(assert (=> start!94104 tp!75881))

(declare-fun array_inv!24991 (array!67562) Bool)

(assert (=> start!94104 (array_inv!24991 _keys!1163)))

(declare-fun b!1063820 () Bool)

(declare-fun res!710336 () Bool)

(assert (=> b!1063820 (=> (not res!710336) (not e!606259))))

(declare-datatypes ((List!22770 0))(
  ( (Nil!22767) (Cons!22766 (h!23975 (_ BitVec 64)) (t!32092 List!22770)) )
))
(declare-fun arrayNoDuplicates!0 (array!67562 (_ BitVec 32) List!22770) Bool)

(assert (=> b!1063820 (= res!710336 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22767))))

(declare-fun b!1063821 () Bool)

(assert (=> b!1063821 (= e!606259 (not true))))

(declare-datatypes ((tuple2!16166 0))(
  ( (tuple2!16167 (_1!8093 (_ BitVec 64)) (_2!8093 V!38859)) )
))
(declare-datatypes ((List!22771 0))(
  ( (Nil!22768) (Cons!22767 (h!23976 tuple2!16166) (t!32093 List!22771)) )
))
(declare-datatypes ((ListLongMap!14147 0))(
  ( (ListLongMap!14148 (toList!7089 List!22771)) )
))
(declare-fun lt!468923 () ListLongMap!14147)

(declare-fun lt!468922 () ListLongMap!14147)

(assert (=> b!1063821 (= lt!468923 lt!468922)))

(declare-fun zeroValueBefore!47 () V!38859)

(declare-datatypes ((Unit!34845 0))(
  ( (Unit!34846) )
))
(declare-fun lt!468921 () Unit!34845)

(declare-fun minValue!907 () V!38859)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38859)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!682 (array!67562 array!67560 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38859 V!38859 V!38859 V!38859 (_ BitVec 32) Int) Unit!34845)

(assert (=> b!1063821 (= lt!468921 (lemmaNoChangeToArrayThenSameMapNoExtras!682 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3643 (array!67562 array!67560 (_ BitVec 32) (_ BitVec 32) V!38859 V!38859 (_ BitVec 32) Int) ListLongMap!14147)

(assert (=> b!1063821 (= lt!468922 (getCurrentListMapNoExtraKeys!3643 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063821 (= lt!468923 (getCurrentListMapNoExtraKeys!3643 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94104 res!710334) b!1063817))

(assert (= (and b!1063817 res!710337) b!1063819))

(assert (= (and b!1063819 res!710335) b!1063820))

(assert (= (and b!1063820 res!710336) b!1063821))

(assert (= (and b!1063816 condMapEmpty!39619) mapIsEmpty!39619))

(assert (= (and b!1063816 (not condMapEmpty!39619)) mapNonEmpty!39619))

(get-info :version)

(assert (= (and mapNonEmpty!39619 ((_ is ValueCellFull!11943) mapValue!39619)) b!1063815))

(assert (= (and b!1063816 ((_ is ValueCellFull!11943) mapDefault!39619)) b!1063818))

(assert (= start!94104 b!1063816))

(declare-fun m!982589 () Bool)

(assert (=> b!1063821 m!982589))

(declare-fun m!982591 () Bool)

(assert (=> b!1063821 m!982591))

(declare-fun m!982593 () Bool)

(assert (=> b!1063821 m!982593))

(declare-fun m!982595 () Bool)

(assert (=> start!94104 m!982595))

(declare-fun m!982597 () Bool)

(assert (=> start!94104 m!982597))

(declare-fun m!982599 () Bool)

(assert (=> start!94104 m!982599))

(declare-fun m!982601 () Bool)

(assert (=> mapNonEmpty!39619 m!982601))

(declare-fun m!982603 () Bool)

(assert (=> b!1063820 m!982603))

(declare-fun m!982605 () Bool)

(assert (=> b!1063819 m!982605))

(check-sat (not b!1063819) tp_is_empty!25293 (not start!94104) (not b_next!21483) (not b!1063821) (not b!1063820) b_and!34243 (not mapNonEmpty!39619))
(check-sat b_and!34243 (not b_next!21483))
