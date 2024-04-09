; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94190 () Bool)

(assert start!94190)

(declare-fun b_free!21555 () Bool)

(declare-fun b_next!21555 () Bool)

(assert (=> start!94190 (= b_free!21555 (not b_next!21555))))

(declare-fun tp!76101 () Bool)

(declare-fun b_and!34323 () Bool)

(assert (=> start!94190 (= tp!76101 b_and!34323)))

(declare-fun res!710847 () Bool)

(declare-fun e!606906 () Bool)

(assert (=> start!94190 (=> (not res!710847) (not e!606906))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94190 (= res!710847 (validMask!0 mask!1515))))

(assert (=> start!94190 e!606906))

(assert (=> start!94190 true))

(declare-fun tp_is_empty!25365 () Bool)

(assert (=> start!94190 tp_is_empty!25365))

(declare-datatypes ((V!38955 0))(
  ( (V!38956 (val!12733 Int)) )
))
(declare-datatypes ((ValueCell!11979 0))(
  ( (ValueCellFull!11979 (v!15346 V!38955)) (EmptyCell!11979) )
))
(declare-datatypes ((array!67692 0))(
  ( (array!67693 (arr!32546 (Array (_ BitVec 32) ValueCell!11979)) (size!33083 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67692)

(declare-fun e!606905 () Bool)

(declare-fun array_inv!25038 (array!67692) Bool)

(assert (=> start!94190 (and (array_inv!25038 _values!955) e!606905)))

(assert (=> start!94190 tp!76101))

(declare-datatypes ((array!67694 0))(
  ( (array!67695 (arr!32547 (Array (_ BitVec 32) (_ BitVec 64))) (size!33084 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67694)

(declare-fun array_inv!25039 (array!67694) Bool)

(assert (=> start!94190 (array_inv!25039 _keys!1163)))

(declare-fun mapNonEmpty!39730 () Bool)

(declare-fun mapRes!39730 () Bool)

(declare-fun tp!76100 () Bool)

(declare-fun e!606901 () Bool)

(assert (=> mapNonEmpty!39730 (= mapRes!39730 (and tp!76100 e!606901))))

(declare-fun mapValue!39730 () ValueCell!11979)

(declare-fun mapRest!39730 () (Array (_ BitVec 32) ValueCell!11979))

(declare-fun mapKey!39730 () (_ BitVec 32))

(assert (=> mapNonEmpty!39730 (= (arr!32546 _values!955) (store mapRest!39730 mapKey!39730 mapValue!39730))))

(declare-fun b!1064706 () Bool)

(declare-fun e!606903 () Bool)

(assert (=> b!1064706 (= e!606903 tp_is_empty!25365)))

(declare-fun mapIsEmpty!39730 () Bool)

(assert (=> mapIsEmpty!39730 mapRes!39730))

(declare-fun b!1064707 () Bool)

(declare-fun res!710848 () Bool)

(assert (=> b!1064707 (=> (not res!710848) (not e!606906))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1064707 (= res!710848 (and (= (size!33083 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33084 _keys!1163) (size!33083 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064708 () Bool)

(assert (=> b!1064708 (= e!606905 (and e!606903 mapRes!39730))))

(declare-fun condMapEmpty!39730 () Bool)

(declare-fun mapDefault!39730 () ValueCell!11979)

(assert (=> b!1064708 (= condMapEmpty!39730 (= (arr!32546 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11979)) mapDefault!39730)))))

(declare-fun b!1064709 () Bool)

(declare-fun res!710850 () Bool)

(assert (=> b!1064709 (=> (not res!710850) (not e!606906))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67694 (_ BitVec 32)) Bool)

(assert (=> b!1064709 (= res!710850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1064710 () Bool)

(declare-fun e!606902 () Bool)

(assert (=> b!1064710 (= e!606906 (not e!606902))))

(declare-fun res!710849 () Bool)

(assert (=> b!1064710 (=> res!710849 e!606902)))

(assert (=> b!1064710 (= res!710849 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16212 0))(
  ( (tuple2!16213 (_1!8116 (_ BitVec 64)) (_2!8116 V!38955)) )
))
(declare-datatypes ((List!22813 0))(
  ( (Nil!22810) (Cons!22809 (h!24018 tuple2!16212) (t!32137 List!22813)) )
))
(declare-datatypes ((ListLongMap!14193 0))(
  ( (ListLongMap!14194 (toList!7112 List!22813)) )
))
(declare-fun lt!469335 () ListLongMap!14193)

(declare-fun lt!469337 () ListLongMap!14193)

(assert (=> b!1064710 (= lt!469335 lt!469337)))

(declare-fun zeroValueBefore!47 () V!38955)

(declare-datatypes ((Unit!34887 0))(
  ( (Unit!34888) )
))
(declare-fun lt!469338 () Unit!34887)

(declare-fun minValue!907 () V!38955)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38955)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!703 (array!67694 array!67692 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38955 V!38955 V!38955 V!38955 (_ BitVec 32) Int) Unit!34887)

(assert (=> b!1064710 (= lt!469338 (lemmaNoChangeToArrayThenSameMapNoExtras!703 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3664 (array!67694 array!67692 (_ BitVec 32) (_ BitVec 32) V!38955 V!38955 (_ BitVec 32) Int) ListLongMap!14193)

(assert (=> b!1064710 (= lt!469337 (getCurrentListMapNoExtraKeys!3664 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064710 (= lt!469335 (getCurrentListMapNoExtraKeys!3664 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064711 () Bool)

(declare-fun res!710851 () Bool)

(assert (=> b!1064711 (=> (not res!710851) (not e!606906))))

(declare-datatypes ((List!22814 0))(
  ( (Nil!22811) (Cons!22810 (h!24019 (_ BitVec 64)) (t!32138 List!22814)) )
))
(declare-fun arrayNoDuplicates!0 (array!67694 (_ BitVec 32) List!22814) Bool)

(assert (=> b!1064711 (= res!710851 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22811))))

(declare-fun b!1064712 () Bool)

(assert (=> b!1064712 (= e!606901 tp_is_empty!25365)))

(declare-fun b!1064713 () Bool)

(assert (=> b!1064713 (= e!606902 true)))

(declare-fun lt!469336 () ListLongMap!14193)

(declare-fun getCurrentListMap!4036 (array!67694 array!67692 (_ BitVec 32) (_ BitVec 32) V!38955 V!38955 (_ BitVec 32) Int) ListLongMap!14193)

(assert (=> b!1064713 (= lt!469336 (getCurrentListMap!4036 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94190 res!710847) b!1064707))

(assert (= (and b!1064707 res!710848) b!1064709))

(assert (= (and b!1064709 res!710850) b!1064711))

(assert (= (and b!1064711 res!710851) b!1064710))

(assert (= (and b!1064710 (not res!710849)) b!1064713))

(assert (= (and b!1064708 condMapEmpty!39730) mapIsEmpty!39730))

(assert (= (and b!1064708 (not condMapEmpty!39730)) mapNonEmpty!39730))

(get-info :version)

(assert (= (and mapNonEmpty!39730 ((_ is ValueCellFull!11979) mapValue!39730)) b!1064712))

(assert (= (and b!1064708 ((_ is ValueCellFull!11979) mapDefault!39730)) b!1064706))

(assert (= start!94190 b!1064708))

(declare-fun m!983335 () Bool)

(assert (=> mapNonEmpty!39730 m!983335))

(declare-fun m!983337 () Bool)

(assert (=> b!1064711 m!983337))

(declare-fun m!983339 () Bool)

(assert (=> start!94190 m!983339))

(declare-fun m!983341 () Bool)

(assert (=> start!94190 m!983341))

(declare-fun m!983343 () Bool)

(assert (=> start!94190 m!983343))

(declare-fun m!983345 () Bool)

(assert (=> b!1064713 m!983345))

(declare-fun m!983347 () Bool)

(assert (=> b!1064709 m!983347))

(declare-fun m!983349 () Bool)

(assert (=> b!1064710 m!983349))

(declare-fun m!983351 () Bool)

(assert (=> b!1064710 m!983351))

(declare-fun m!983353 () Bool)

(assert (=> b!1064710 m!983353))

(check-sat (not b_next!21555) b_and!34323 (not b!1064711) (not mapNonEmpty!39730) tp_is_empty!25365 (not b!1064710) (not start!94190) (not b!1064709) (not b!1064713))
(check-sat b_and!34323 (not b_next!21555))
