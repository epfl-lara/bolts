; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94568 () Bool)

(assert start!94568)

(declare-fun b_free!21837 () Bool)

(declare-fun b_next!21837 () Bool)

(assert (=> start!94568 (= b_free!21837 (not b_next!21837))))

(declare-fun tp!76961 () Bool)

(declare-fun b_and!34657 () Bool)

(assert (=> start!94568 (= tp!76961 b_and!34657)))

(declare-fun b!1068907 () Bool)

(declare-fun e!609986 () Bool)

(assert (=> b!1068907 (= e!609986 true)))

(declare-datatypes ((V!39331 0))(
  ( (V!39332 (val!12874 Int)) )
))
(declare-datatypes ((tuple2!16430 0))(
  ( (tuple2!16431 (_1!8225 (_ BitVec 64)) (_2!8225 V!39331)) )
))
(declare-datatypes ((List!23018 0))(
  ( (Nil!23015) (Cons!23014 (h!24223 tuple2!16430) (t!32352 List!23018)) )
))
(declare-datatypes ((ListLongMap!14411 0))(
  ( (ListLongMap!14412 (toList!7221 List!23018)) )
))
(declare-fun lt!472291 () ListLongMap!14411)

(declare-fun -!656 (ListLongMap!14411 (_ BitVec 64)) ListLongMap!14411)

(assert (=> b!1068907 (= (-!656 lt!472291 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472291)))

(declare-datatypes ((Unit!35106 0))(
  ( (Unit!35107) )
))
(declare-fun lt!472293 () Unit!35106)

(declare-fun removeNotPresentStillSame!65 (ListLongMap!14411 (_ BitVec 64)) Unit!35106)

(assert (=> b!1068907 (= lt!472293 (removeNotPresentStillSame!65 lt!472291 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1068908 () Bool)

(declare-fun e!609988 () Bool)

(declare-fun tp_is_empty!25647 () Bool)

(assert (=> b!1068908 (= e!609988 tp_is_empty!25647)))

(declare-fun b!1068909 () Bool)

(declare-fun res!713339 () Bool)

(declare-fun e!609987 () Bool)

(assert (=> b!1068909 (=> (not res!713339) (not e!609987))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12120 0))(
  ( (ValueCellFull!12120 (v!15490 V!39331)) (EmptyCell!12120) )
))
(declare-datatypes ((array!68244 0))(
  ( (array!68245 (arr!32817 (Array (_ BitVec 32) ValueCell!12120)) (size!33354 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68244)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68246 0))(
  ( (array!68247 (arr!32818 (Array (_ BitVec 32) (_ BitVec 64))) (size!33355 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68246)

(assert (=> b!1068909 (= res!713339 (and (= (size!33354 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33355 _keys!1163) (size!33354 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1068910 () Bool)

(declare-fun res!713340 () Bool)

(assert (=> b!1068910 (=> (not res!713340) (not e!609987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68246 (_ BitVec 32)) Bool)

(assert (=> b!1068910 (= res!713340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!40168 () Bool)

(declare-fun mapRes!40168 () Bool)

(assert (=> mapIsEmpty!40168 mapRes!40168))

(declare-fun res!713337 () Bool)

(assert (=> start!94568 (=> (not res!713337) (not e!609987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94568 (= res!713337 (validMask!0 mask!1515))))

(assert (=> start!94568 e!609987))

(assert (=> start!94568 true))

(assert (=> start!94568 tp_is_empty!25647))

(declare-fun e!609989 () Bool)

(declare-fun array_inv!25240 (array!68244) Bool)

(assert (=> start!94568 (and (array_inv!25240 _values!955) e!609989)))

(assert (=> start!94568 tp!76961))

(declare-fun array_inv!25241 (array!68246) Bool)

(assert (=> start!94568 (array_inv!25241 _keys!1163)))

(declare-fun b!1068911 () Bool)

(declare-fun e!609990 () Bool)

(assert (=> b!1068911 (= e!609987 (not e!609990))))

(declare-fun res!713336 () Bool)

(assert (=> b!1068911 (=> res!713336 e!609990)))

(assert (=> b!1068911 (= res!713336 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!472292 () ListLongMap!14411)

(declare-fun lt!472290 () ListLongMap!14411)

(assert (=> b!1068911 (= lt!472292 lt!472290)))

(declare-fun zeroValueBefore!47 () V!39331)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39331)

(declare-fun minValue!907 () V!39331)

(declare-fun lt!472289 () Unit!35106)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!798 (array!68246 array!68244 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39331 V!39331 V!39331 V!39331 (_ BitVec 32) Int) Unit!35106)

(assert (=> b!1068911 (= lt!472289 (lemmaNoChangeToArrayThenSameMapNoExtras!798 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3759 (array!68246 array!68244 (_ BitVec 32) (_ BitVec 32) V!39331 V!39331 (_ BitVec 32) Int) ListLongMap!14411)

(assert (=> b!1068911 (= lt!472290 (getCurrentListMapNoExtraKeys!3759 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1068911 (= lt!472292 (getCurrentListMapNoExtraKeys!3759 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068912 () Bool)

(declare-fun e!609985 () Bool)

(assert (=> b!1068912 (= e!609985 tp_is_empty!25647)))

(declare-fun b!1068913 () Bool)

(declare-fun res!713335 () Bool)

(assert (=> b!1068913 (=> (not res!713335) (not e!609987))))

(declare-datatypes ((List!23019 0))(
  ( (Nil!23016) (Cons!23015 (h!24224 (_ BitVec 64)) (t!32353 List!23019)) )
))
(declare-fun arrayNoDuplicates!0 (array!68246 (_ BitVec 32) List!23019) Bool)

(assert (=> b!1068913 (= res!713335 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23016))))

(declare-fun b!1068914 () Bool)

(assert (=> b!1068914 (= e!609989 (and e!609988 mapRes!40168))))

(declare-fun condMapEmpty!40168 () Bool)

(declare-fun mapDefault!40168 () ValueCell!12120)

(assert (=> b!1068914 (= condMapEmpty!40168 (= (arr!32817 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12120)) mapDefault!40168)))))

(declare-fun b!1068915 () Bool)

(assert (=> b!1068915 (= e!609990 e!609986)))

(declare-fun res!713338 () Bool)

(assert (=> b!1068915 (=> res!713338 e!609986)))

(declare-fun contains!6320 (ListLongMap!14411 (_ BitVec 64)) Bool)

(assert (=> b!1068915 (= res!713338 (contains!6320 lt!472291 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4109 (array!68246 array!68244 (_ BitVec 32) (_ BitVec 32) V!39331 V!39331 (_ BitVec 32) Int) ListLongMap!14411)

(assert (=> b!1068915 (= lt!472291 (getCurrentListMap!4109 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40168 () Bool)

(declare-fun tp!76962 () Bool)

(assert (=> mapNonEmpty!40168 (= mapRes!40168 (and tp!76962 e!609985))))

(declare-fun mapKey!40168 () (_ BitVec 32))

(declare-fun mapRest!40168 () (Array (_ BitVec 32) ValueCell!12120))

(declare-fun mapValue!40168 () ValueCell!12120)

(assert (=> mapNonEmpty!40168 (= (arr!32817 _values!955) (store mapRest!40168 mapKey!40168 mapValue!40168))))

(assert (= (and start!94568 res!713337) b!1068909))

(assert (= (and b!1068909 res!713339) b!1068910))

(assert (= (and b!1068910 res!713340) b!1068913))

(assert (= (and b!1068913 res!713335) b!1068911))

(assert (= (and b!1068911 (not res!713336)) b!1068915))

(assert (= (and b!1068915 (not res!713338)) b!1068907))

(assert (= (and b!1068914 condMapEmpty!40168) mapIsEmpty!40168))

(assert (= (and b!1068914 (not condMapEmpty!40168)) mapNonEmpty!40168))

(get-info :version)

(assert (= (and mapNonEmpty!40168 ((_ is ValueCellFull!12120) mapValue!40168)) b!1068912))

(assert (= (and b!1068914 ((_ is ValueCellFull!12120) mapDefault!40168)) b!1068908))

(assert (= start!94568 b!1068914))

(declare-fun m!987595 () Bool)

(assert (=> b!1068907 m!987595))

(declare-fun m!987597 () Bool)

(assert (=> b!1068907 m!987597))

(declare-fun m!987599 () Bool)

(assert (=> b!1068911 m!987599))

(declare-fun m!987601 () Bool)

(assert (=> b!1068911 m!987601))

(declare-fun m!987603 () Bool)

(assert (=> b!1068911 m!987603))

(declare-fun m!987605 () Bool)

(assert (=> mapNonEmpty!40168 m!987605))

(declare-fun m!987607 () Bool)

(assert (=> b!1068910 m!987607))

(declare-fun m!987609 () Bool)

(assert (=> start!94568 m!987609))

(declare-fun m!987611 () Bool)

(assert (=> start!94568 m!987611))

(declare-fun m!987613 () Bool)

(assert (=> start!94568 m!987613))

(declare-fun m!987615 () Bool)

(assert (=> b!1068915 m!987615))

(declare-fun m!987617 () Bool)

(assert (=> b!1068915 m!987617))

(declare-fun m!987619 () Bool)

(assert (=> b!1068913 m!987619))

(check-sat tp_is_empty!25647 (not mapNonEmpty!40168) b_and!34657 (not b!1068915) (not b!1068907) (not b!1068910) (not b_next!21837) (not start!94568) (not b!1068913) (not b!1068911))
(check-sat b_and!34657 (not b_next!21837))
