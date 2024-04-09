; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94128 () Bool)

(assert start!94128)

(declare-fun b_free!21507 () Bool)

(declare-fun b_next!21507 () Bool)

(assert (=> start!94128 (= b_free!21507 (not b_next!21507))))

(declare-fun tp!75953 () Bool)

(declare-fun b_and!34267 () Bool)

(assert (=> start!94128 (= tp!75953 b_and!34267)))

(declare-fun b!1064067 () Bool)

(declare-fun e!606439 () Bool)

(declare-fun tp_is_empty!25317 () Bool)

(assert (=> b!1064067 (= e!606439 tp_is_empty!25317)))

(declare-fun b!1064068 () Bool)

(declare-fun res!710480 () Bool)

(declare-fun e!606440 () Bool)

(assert (=> b!1064068 (=> (not res!710480) (not e!606440))))

(declare-datatypes ((array!67602 0))(
  ( (array!67603 (arr!32502 (Array (_ BitVec 32) (_ BitVec 64))) (size!33039 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67602)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67602 (_ BitVec 32)) Bool)

(assert (=> b!1064068 (= res!710480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1064069 () Bool)

(declare-fun e!606437 () Bool)

(declare-fun mapRes!39655 () Bool)

(assert (=> b!1064069 (= e!606437 (and e!606439 mapRes!39655))))

(declare-fun condMapEmpty!39655 () Bool)

(declare-datatypes ((V!38891 0))(
  ( (V!38892 (val!12709 Int)) )
))
(declare-datatypes ((ValueCell!11955 0))(
  ( (ValueCellFull!11955 (v!15322 V!38891)) (EmptyCell!11955) )
))
(declare-datatypes ((array!67604 0))(
  ( (array!67605 (arr!32503 (Array (_ BitVec 32) ValueCell!11955)) (size!33040 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67604)

(declare-fun mapDefault!39655 () ValueCell!11955)

(assert (=> b!1064069 (= condMapEmpty!39655 (= (arr!32503 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11955)) mapDefault!39655)))))

(declare-fun b!1064070 () Bool)

(assert (=> b!1064070 (= e!606440 (not true))))

(declare-datatypes ((tuple2!16182 0))(
  ( (tuple2!16183 (_1!8101 (_ BitVec 64)) (_2!8101 V!38891)) )
))
(declare-datatypes ((List!22784 0))(
  ( (Nil!22781) (Cons!22780 (h!23989 tuple2!16182) (t!32106 List!22784)) )
))
(declare-datatypes ((ListLongMap!14163 0))(
  ( (ListLongMap!14164 (toList!7097 List!22784)) )
))
(declare-fun lt!469030 () ListLongMap!14163)

(declare-fun lt!469029 () ListLongMap!14163)

(assert (=> b!1064070 (= lt!469030 lt!469029)))

(declare-fun zeroValueBefore!47 () V!38891)

(declare-datatypes ((Unit!34861 0))(
  ( (Unit!34862) )
))
(declare-fun lt!469031 () Unit!34861)

(declare-fun minValue!907 () V!38891)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38891)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!690 (array!67602 array!67604 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38891 V!38891 V!38891 V!38891 (_ BitVec 32) Int) Unit!34861)

(assert (=> b!1064070 (= lt!469031 (lemmaNoChangeToArrayThenSameMapNoExtras!690 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3651 (array!67602 array!67604 (_ BitVec 32) (_ BitVec 32) V!38891 V!38891 (_ BitVec 32) Int) ListLongMap!14163)

(assert (=> b!1064070 (= lt!469029 (getCurrentListMapNoExtraKeys!3651 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064070 (= lt!469030 (getCurrentListMapNoExtraKeys!3651 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39655 () Bool)

(declare-fun tp!75954 () Bool)

(declare-fun e!606436 () Bool)

(assert (=> mapNonEmpty!39655 (= mapRes!39655 (and tp!75954 e!606436))))

(declare-fun mapRest!39655 () (Array (_ BitVec 32) ValueCell!11955))

(declare-fun mapKey!39655 () (_ BitVec 32))

(declare-fun mapValue!39655 () ValueCell!11955)

(assert (=> mapNonEmpty!39655 (= (arr!32503 _values!955) (store mapRest!39655 mapKey!39655 mapValue!39655))))

(declare-fun res!710479 () Bool)

(assert (=> start!94128 (=> (not res!710479) (not e!606440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94128 (= res!710479 (validMask!0 mask!1515))))

(assert (=> start!94128 e!606440))

(assert (=> start!94128 true))

(assert (=> start!94128 tp_is_empty!25317))

(declare-fun array_inv!25006 (array!67604) Bool)

(assert (=> start!94128 (and (array_inv!25006 _values!955) e!606437)))

(assert (=> start!94128 tp!75953))

(declare-fun array_inv!25007 (array!67602) Bool)

(assert (=> start!94128 (array_inv!25007 _keys!1163)))

(declare-fun b!1064071 () Bool)

(assert (=> b!1064071 (= e!606436 tp_is_empty!25317)))

(declare-fun mapIsEmpty!39655 () Bool)

(assert (=> mapIsEmpty!39655 mapRes!39655))

(declare-fun b!1064072 () Bool)

(declare-fun res!710481 () Bool)

(assert (=> b!1064072 (=> (not res!710481) (not e!606440))))

(assert (=> b!1064072 (= res!710481 (and (= (size!33040 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33039 _keys!1163) (size!33040 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064073 () Bool)

(declare-fun res!710478 () Bool)

(assert (=> b!1064073 (=> (not res!710478) (not e!606440))))

(declare-datatypes ((List!22785 0))(
  ( (Nil!22782) (Cons!22781 (h!23990 (_ BitVec 64)) (t!32107 List!22785)) )
))
(declare-fun arrayNoDuplicates!0 (array!67602 (_ BitVec 32) List!22785) Bool)

(assert (=> b!1064073 (= res!710478 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22782))))

(assert (= (and start!94128 res!710479) b!1064072))

(assert (= (and b!1064072 res!710481) b!1064068))

(assert (= (and b!1064068 res!710480) b!1064073))

(assert (= (and b!1064073 res!710478) b!1064070))

(assert (= (and b!1064069 condMapEmpty!39655) mapIsEmpty!39655))

(assert (= (and b!1064069 (not condMapEmpty!39655)) mapNonEmpty!39655))

(get-info :version)

(assert (= (and mapNonEmpty!39655 ((_ is ValueCellFull!11955) mapValue!39655)) b!1064071))

(assert (= (and b!1064069 ((_ is ValueCellFull!11955) mapDefault!39655)) b!1064067))

(assert (= start!94128 b!1064069))

(declare-fun m!982805 () Bool)

(assert (=> mapNonEmpty!39655 m!982805))

(declare-fun m!982807 () Bool)

(assert (=> start!94128 m!982807))

(declare-fun m!982809 () Bool)

(assert (=> start!94128 m!982809))

(declare-fun m!982811 () Bool)

(assert (=> start!94128 m!982811))

(declare-fun m!982813 () Bool)

(assert (=> b!1064068 m!982813))

(declare-fun m!982815 () Bool)

(assert (=> b!1064070 m!982815))

(declare-fun m!982817 () Bool)

(assert (=> b!1064070 m!982817))

(declare-fun m!982819 () Bool)

(assert (=> b!1064070 m!982819))

(declare-fun m!982821 () Bool)

(assert (=> b!1064073 m!982821))

(check-sat (not b!1064070) b_and!34267 (not start!94128) tp_is_empty!25317 (not mapNonEmpty!39655) (not b!1064073) (not b!1064068) (not b_next!21507))
(check-sat b_and!34267 (not b_next!21507))
