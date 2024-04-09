; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94134 () Bool)

(assert start!94134)

(declare-fun b_free!21513 () Bool)

(declare-fun b_next!21513 () Bool)

(assert (=> start!94134 (= b_free!21513 (not b_next!21513))))

(declare-fun tp!75971 () Bool)

(declare-fun b_and!34273 () Bool)

(assert (=> start!94134 (= tp!75971 b_and!34273)))

(declare-fun b!1064130 () Bool)

(declare-fun e!606481 () Bool)

(assert (=> b!1064130 (= e!606481 (not true))))

(declare-datatypes ((V!38899 0))(
  ( (V!38900 (val!12712 Int)) )
))
(declare-datatypes ((tuple2!16184 0))(
  ( (tuple2!16185 (_1!8102 (_ BitVec 64)) (_2!8102 V!38899)) )
))
(declare-datatypes ((List!22786 0))(
  ( (Nil!22783) (Cons!22782 (h!23991 tuple2!16184) (t!32108 List!22786)) )
))
(declare-datatypes ((ListLongMap!14165 0))(
  ( (ListLongMap!14166 (toList!7098 List!22786)) )
))
(declare-fun lt!469058 () ListLongMap!14165)

(declare-fun lt!469057 () ListLongMap!14165)

(assert (=> b!1064130 (= lt!469058 lt!469057)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38899)

(declare-datatypes ((ValueCell!11958 0))(
  ( (ValueCellFull!11958 (v!15325 V!38899)) (EmptyCell!11958) )
))
(declare-datatypes ((array!67612 0))(
  ( (array!67613 (arr!32507 (Array (_ BitVec 32) ValueCell!11958)) (size!33044 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67612)

(declare-datatypes ((Unit!34863 0))(
  ( (Unit!34864) )
))
(declare-fun lt!469056 () Unit!34863)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38899)

(declare-fun minValue!907 () V!38899)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67614 0))(
  ( (array!67615 (arr!32508 (Array (_ BitVec 32) (_ BitVec 64))) (size!33045 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67614)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!691 (array!67614 array!67612 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38899 V!38899 V!38899 V!38899 (_ BitVec 32) Int) Unit!34863)

(assert (=> b!1064130 (= lt!469056 (lemmaNoChangeToArrayThenSameMapNoExtras!691 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3652 (array!67614 array!67612 (_ BitVec 32) (_ BitVec 32) V!38899 V!38899 (_ BitVec 32) Int) ListLongMap!14165)

(assert (=> b!1064130 (= lt!469057 (getCurrentListMapNoExtraKeys!3652 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064130 (= lt!469058 (getCurrentListMapNoExtraKeys!3652 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064131 () Bool)

(declare-fun res!710517 () Bool)

(assert (=> b!1064131 (=> (not res!710517) (not e!606481))))

(declare-datatypes ((List!22787 0))(
  ( (Nil!22784) (Cons!22783 (h!23992 (_ BitVec 64)) (t!32109 List!22787)) )
))
(declare-fun arrayNoDuplicates!0 (array!67614 (_ BitVec 32) List!22787) Bool)

(assert (=> b!1064131 (= res!710517 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22784))))

(declare-fun res!710515 () Bool)

(assert (=> start!94134 (=> (not res!710515) (not e!606481))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94134 (= res!710515 (validMask!0 mask!1515))))

(assert (=> start!94134 e!606481))

(assert (=> start!94134 true))

(declare-fun tp_is_empty!25323 () Bool)

(assert (=> start!94134 tp_is_empty!25323))

(declare-fun e!606482 () Bool)

(declare-fun array_inv!25010 (array!67612) Bool)

(assert (=> start!94134 (and (array_inv!25010 _values!955) e!606482)))

(assert (=> start!94134 tp!75971))

(declare-fun array_inv!25011 (array!67614) Bool)

(assert (=> start!94134 (array_inv!25011 _keys!1163)))

(declare-fun b!1064132 () Bool)

(declare-fun e!606485 () Bool)

(assert (=> b!1064132 (= e!606485 tp_is_empty!25323)))

(declare-fun mapNonEmpty!39664 () Bool)

(declare-fun mapRes!39664 () Bool)

(declare-fun tp!75972 () Bool)

(declare-fun e!606483 () Bool)

(assert (=> mapNonEmpty!39664 (= mapRes!39664 (and tp!75972 e!606483))))

(declare-fun mapValue!39664 () ValueCell!11958)

(declare-fun mapKey!39664 () (_ BitVec 32))

(declare-fun mapRest!39664 () (Array (_ BitVec 32) ValueCell!11958))

(assert (=> mapNonEmpty!39664 (= (arr!32507 _values!955) (store mapRest!39664 mapKey!39664 mapValue!39664))))

(declare-fun mapIsEmpty!39664 () Bool)

(assert (=> mapIsEmpty!39664 mapRes!39664))

(declare-fun b!1064133 () Bool)

(assert (=> b!1064133 (= e!606483 tp_is_empty!25323)))

(declare-fun b!1064134 () Bool)

(declare-fun res!710514 () Bool)

(assert (=> b!1064134 (=> (not res!710514) (not e!606481))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67614 (_ BitVec 32)) Bool)

(assert (=> b!1064134 (= res!710514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1064135 () Bool)

(declare-fun res!710516 () Bool)

(assert (=> b!1064135 (=> (not res!710516) (not e!606481))))

(assert (=> b!1064135 (= res!710516 (and (= (size!33044 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33045 _keys!1163) (size!33044 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064136 () Bool)

(assert (=> b!1064136 (= e!606482 (and e!606485 mapRes!39664))))

(declare-fun condMapEmpty!39664 () Bool)

(declare-fun mapDefault!39664 () ValueCell!11958)

(assert (=> b!1064136 (= condMapEmpty!39664 (= (arr!32507 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11958)) mapDefault!39664)))))

(assert (= (and start!94134 res!710515) b!1064135))

(assert (= (and b!1064135 res!710516) b!1064134))

(assert (= (and b!1064134 res!710514) b!1064131))

(assert (= (and b!1064131 res!710517) b!1064130))

(assert (= (and b!1064136 condMapEmpty!39664) mapIsEmpty!39664))

(assert (= (and b!1064136 (not condMapEmpty!39664)) mapNonEmpty!39664))

(get-info :version)

(assert (= (and mapNonEmpty!39664 ((_ is ValueCellFull!11958) mapValue!39664)) b!1064133))

(assert (= (and b!1064136 ((_ is ValueCellFull!11958) mapDefault!39664)) b!1064132))

(assert (= start!94134 b!1064136))

(declare-fun m!982859 () Bool)

(assert (=> b!1064131 m!982859))

(declare-fun m!982861 () Bool)

(assert (=> b!1064134 m!982861))

(declare-fun m!982863 () Bool)

(assert (=> b!1064130 m!982863))

(declare-fun m!982865 () Bool)

(assert (=> b!1064130 m!982865))

(declare-fun m!982867 () Bool)

(assert (=> b!1064130 m!982867))

(declare-fun m!982869 () Bool)

(assert (=> start!94134 m!982869))

(declare-fun m!982871 () Bool)

(assert (=> start!94134 m!982871))

(declare-fun m!982873 () Bool)

(assert (=> start!94134 m!982873))

(declare-fun m!982875 () Bool)

(assert (=> mapNonEmpty!39664 m!982875))

(check-sat tp_is_empty!25323 (not start!94134) (not mapNonEmpty!39664) b_and!34273 (not b!1064134) (not b_next!21513) (not b!1064130) (not b!1064131))
(check-sat b_and!34273 (not b_next!21513))
