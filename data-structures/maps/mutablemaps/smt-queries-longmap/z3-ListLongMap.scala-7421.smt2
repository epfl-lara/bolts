; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94400 () Bool)

(assert start!94400)

(declare-fun b_free!21705 () Bool)

(declare-fun b_next!21705 () Bool)

(assert (=> start!94400 (= b_free!21705 (not b_next!21705))))

(declare-fun tp!76560 () Bool)

(declare-fun b_and!34507 () Bool)

(assert (=> start!94400 (= tp!76560 b_and!34507)))

(declare-fun b!1067008 () Bool)

(declare-fun res!712180 () Bool)

(declare-fun e!608572 () Bool)

(assert (=> b!1067008 (=> (not res!712180) (not e!608572))))

(declare-datatypes ((array!67988 0))(
  ( (array!67989 (arr!32691 (Array (_ BitVec 32) (_ BitVec 64))) (size!33228 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67988)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67988 (_ BitVec 32)) Bool)

(assert (=> b!1067008 (= res!712180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!712182 () Bool)

(assert (=> start!94400 (=> (not res!712182) (not e!608572))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94400 (= res!712182 (validMask!0 mask!1515))))

(assert (=> start!94400 e!608572))

(assert (=> start!94400 true))

(declare-fun tp_is_empty!25515 () Bool)

(assert (=> start!94400 tp_is_empty!25515))

(declare-datatypes ((V!39155 0))(
  ( (V!39156 (val!12808 Int)) )
))
(declare-datatypes ((ValueCell!12054 0))(
  ( (ValueCellFull!12054 (v!15423 V!39155)) (EmptyCell!12054) )
))
(declare-datatypes ((array!67990 0))(
  ( (array!67991 (arr!32692 (Array (_ BitVec 32) ValueCell!12054)) (size!33229 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67990)

(declare-fun e!608570 () Bool)

(declare-fun array_inv!25148 (array!67990) Bool)

(assert (=> start!94400 (and (array_inv!25148 _values!955) e!608570)))

(assert (=> start!94400 tp!76560))

(declare-fun array_inv!25149 (array!67988) Bool)

(assert (=> start!94400 (array_inv!25149 _keys!1163)))

(declare-fun b!1067009 () Bool)

(declare-fun e!608571 () Bool)

(assert (=> b!1067009 (= e!608571 tp_is_empty!25515)))

(declare-fun b!1067010 () Bool)

(declare-fun e!608573 () Bool)

(assert (=> b!1067010 (= e!608573 tp_is_empty!25515)))

(declare-fun b!1067011 () Bool)

(assert (=> b!1067011 (= e!608572 (not true))))

(declare-datatypes ((tuple2!16336 0))(
  ( (tuple2!16337 (_1!8178 (_ BitVec 64)) (_2!8178 V!39155)) )
))
(declare-datatypes ((List!22927 0))(
  ( (Nil!22924) (Cons!22923 (h!24132 tuple2!16336) (t!32257 List!22927)) )
))
(declare-datatypes ((ListLongMap!14317 0))(
  ( (ListLongMap!14318 (toList!7174 List!22927)) )
))
(declare-fun lt!471261 () ListLongMap!14317)

(declare-fun lt!471262 () ListLongMap!14317)

(assert (=> b!1067011 (= lt!471261 lt!471262)))

(declare-fun zeroValueBefore!47 () V!39155)

(declare-datatypes ((Unit!35014 0))(
  ( (Unit!35015) )
))
(declare-fun lt!471260 () Unit!35014)

(declare-fun minValue!907 () V!39155)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39155)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!758 (array!67988 array!67990 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39155 V!39155 V!39155 V!39155 (_ BitVec 32) Int) Unit!35014)

(assert (=> b!1067011 (= lt!471260 (lemmaNoChangeToArrayThenSameMapNoExtras!758 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3719 (array!67988 array!67990 (_ BitVec 32) (_ BitVec 32) V!39155 V!39155 (_ BitVec 32) Int) ListLongMap!14317)

(assert (=> b!1067011 (= lt!471262 (getCurrentListMapNoExtraKeys!3719 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067011 (= lt!471261 (getCurrentListMapNoExtraKeys!3719 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067012 () Bool)

(declare-fun res!712181 () Bool)

(assert (=> b!1067012 (=> (not res!712181) (not e!608572))))

(declare-datatypes ((List!22928 0))(
  ( (Nil!22925) (Cons!22924 (h!24133 (_ BitVec 64)) (t!32258 List!22928)) )
))
(declare-fun arrayNoDuplicates!0 (array!67988 (_ BitVec 32) List!22928) Bool)

(assert (=> b!1067012 (= res!712181 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22925))))

(declare-fun b!1067013 () Bool)

(declare-fun mapRes!39964 () Bool)

(assert (=> b!1067013 (= e!608570 (and e!608573 mapRes!39964))))

(declare-fun condMapEmpty!39964 () Bool)

(declare-fun mapDefault!39964 () ValueCell!12054)

(assert (=> b!1067013 (= condMapEmpty!39964 (= (arr!32692 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12054)) mapDefault!39964)))))

(declare-fun mapNonEmpty!39964 () Bool)

(declare-fun tp!76559 () Bool)

(assert (=> mapNonEmpty!39964 (= mapRes!39964 (and tp!76559 e!608571))))

(declare-fun mapValue!39964 () ValueCell!12054)

(declare-fun mapRest!39964 () (Array (_ BitVec 32) ValueCell!12054))

(declare-fun mapKey!39964 () (_ BitVec 32))

(assert (=> mapNonEmpty!39964 (= (arr!32692 _values!955) (store mapRest!39964 mapKey!39964 mapValue!39964))))

(declare-fun mapIsEmpty!39964 () Bool)

(assert (=> mapIsEmpty!39964 mapRes!39964))

(declare-fun b!1067014 () Bool)

(declare-fun res!712183 () Bool)

(assert (=> b!1067014 (=> (not res!712183) (not e!608572))))

(assert (=> b!1067014 (= res!712183 (and (= (size!33229 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33228 _keys!1163) (size!33229 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!94400 res!712182) b!1067014))

(assert (= (and b!1067014 res!712183) b!1067008))

(assert (= (and b!1067008 res!712180) b!1067012))

(assert (= (and b!1067012 res!712181) b!1067011))

(assert (= (and b!1067013 condMapEmpty!39964) mapIsEmpty!39964))

(assert (= (and b!1067013 (not condMapEmpty!39964)) mapNonEmpty!39964))

(get-info :version)

(assert (= (and mapNonEmpty!39964 ((_ is ValueCellFull!12054) mapValue!39964)) b!1067009))

(assert (= (and b!1067013 ((_ is ValueCellFull!12054) mapDefault!39964)) b!1067010))

(assert (= start!94400 b!1067013))

(declare-fun m!985859 () Bool)

(assert (=> b!1067011 m!985859))

(declare-fun m!985861 () Bool)

(assert (=> b!1067011 m!985861))

(declare-fun m!985863 () Bool)

(assert (=> b!1067011 m!985863))

(declare-fun m!985865 () Bool)

(assert (=> mapNonEmpty!39964 m!985865))

(declare-fun m!985867 () Bool)

(assert (=> b!1067008 m!985867))

(declare-fun m!985869 () Bool)

(assert (=> start!94400 m!985869))

(declare-fun m!985871 () Bool)

(assert (=> start!94400 m!985871))

(declare-fun m!985873 () Bool)

(assert (=> start!94400 m!985873))

(declare-fun m!985875 () Bool)

(assert (=> b!1067012 m!985875))

(check-sat b_and!34507 (not b!1067011) (not start!94400) (not b!1067008) (not mapNonEmpty!39964) (not b!1067012) tp_is_empty!25515 (not b_next!21705))
(check-sat b_and!34507 (not b_next!21705))
