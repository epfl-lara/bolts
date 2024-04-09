; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94866 () Bool)

(assert start!94866)

(declare-fun b_free!22059 () Bool)

(declare-fun b_next!22059 () Bool)

(assert (=> start!94866 (= b_free!22059 (not b_next!22059))))

(declare-fun tp!77640 () Bool)

(declare-fun b_and!34919 () Bool)

(assert (=> start!94866 (= tp!77640 b_and!34919)))

(declare-fun b!1072243 () Bool)

(declare-fun res!715331 () Bool)

(declare-fun e!612451 () Bool)

(assert (=> b!1072243 (=> (not res!715331) (not e!612451))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39627 0))(
  ( (V!39628 (val!12985 Int)) )
))
(declare-datatypes ((ValueCell!12231 0))(
  ( (ValueCellFull!12231 (v!15603 V!39627)) (EmptyCell!12231) )
))
(declare-datatypes ((array!68668 0))(
  ( (array!68669 (arr!33025 (Array (_ BitVec 32) ValueCell!12231)) (size!33562 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68668)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68670 0))(
  ( (array!68671 (arr!33026 (Array (_ BitVec 32) (_ BitVec 64))) (size!33563 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68670)

(assert (=> b!1072243 (= res!715331 (and (= (size!33562 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33563 _keys!1163) (size!33562 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!40513 () Bool)

(declare-fun mapRes!40513 () Bool)

(assert (=> mapIsEmpty!40513 mapRes!40513))

(declare-fun res!715332 () Bool)

(assert (=> start!94866 (=> (not res!715332) (not e!612451))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94866 (= res!715332 (validMask!0 mask!1515))))

(assert (=> start!94866 e!612451))

(assert (=> start!94866 true))

(declare-fun tp_is_empty!25869 () Bool)

(assert (=> start!94866 tp_is_empty!25869))

(declare-fun e!612450 () Bool)

(declare-fun array_inv!25388 (array!68668) Bool)

(assert (=> start!94866 (and (array_inv!25388 _values!955) e!612450)))

(assert (=> start!94866 tp!77640))

(declare-fun array_inv!25389 (array!68670) Bool)

(assert (=> start!94866 (array_inv!25389 _keys!1163)))

(declare-fun b!1072244 () Bool)

(declare-fun res!715333 () Bool)

(assert (=> b!1072244 (=> (not res!715333) (not e!612451))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68670 (_ BitVec 32)) Bool)

(assert (=> b!1072244 (= res!715333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1072245 () Bool)

(declare-fun e!612448 () Bool)

(assert (=> b!1072245 (= e!612450 (and e!612448 mapRes!40513))))

(declare-fun condMapEmpty!40513 () Bool)

(declare-fun mapDefault!40513 () ValueCell!12231)

(assert (=> b!1072245 (= condMapEmpty!40513 (= (arr!33025 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12231)) mapDefault!40513)))))

(declare-fun b!1072246 () Bool)

(declare-fun e!612447 () Bool)

(assert (=> b!1072246 (= e!612447 tp_is_empty!25869)))

(declare-fun b!1072247 () Bool)

(declare-fun e!612445 () Bool)

(assert (=> b!1072247 (= e!612445 true)))

(declare-datatypes ((tuple2!16600 0))(
  ( (tuple2!16601 (_1!8310 (_ BitVec 64)) (_2!8310 V!39627)) )
))
(declare-datatypes ((List!23179 0))(
  ( (Nil!23176) (Cons!23175 (h!24384 tuple2!16600) (t!32521 List!23179)) )
))
(declare-datatypes ((ListLongMap!14581 0))(
  ( (ListLongMap!14582 (toList!7306 List!23179)) )
))
(declare-fun lt!475180 () ListLongMap!14581)

(declare-fun lt!475171 () ListLongMap!14581)

(declare-fun -!696 (ListLongMap!14581 (_ BitVec 64)) ListLongMap!14581)

(assert (=> b!1072247 (= lt!475180 (-!696 lt!475171 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!475173 () ListLongMap!14581)

(declare-fun lt!475168 () ListLongMap!14581)

(assert (=> b!1072247 (= lt!475173 lt!475168)))

(declare-fun minValue!907 () V!39627)

(declare-fun lt!475178 () ListLongMap!14581)

(declare-fun zeroValueBefore!47 () V!39627)

(declare-datatypes ((Unit!35273 0))(
  ( (Unit!35274) )
))
(declare-fun lt!475174 () Unit!35273)

(declare-fun addCommutativeForDiffKeys!740 (ListLongMap!14581 (_ BitVec 64) V!39627 (_ BitVec 64) V!39627) Unit!35273)

(assert (=> b!1072247 (= lt!475174 (addCommutativeForDiffKeys!740 lt!475178 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!475170 () ListLongMap!14581)

(assert (=> b!1072247 (= (-!696 lt!475168 #b0000000000000000000000000000000000000000000000000000000000000000) lt!475170)))

(declare-fun lt!475172 () tuple2!16600)

(declare-fun +!3161 (ListLongMap!14581 tuple2!16600) ListLongMap!14581)

(assert (=> b!1072247 (= lt!475168 (+!3161 lt!475170 lt!475172))))

(declare-fun lt!475176 () Unit!35273)

(declare-fun addThenRemoveForNewKeyIsSame!70 (ListLongMap!14581 (_ BitVec 64) V!39627) Unit!35273)

(assert (=> b!1072247 (= lt!475176 (addThenRemoveForNewKeyIsSame!70 lt!475170 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!475175 () tuple2!16600)

(assert (=> b!1072247 (= lt!475170 (+!3161 lt!475178 lt!475175))))

(declare-fun e!612446 () Bool)

(assert (=> b!1072247 e!612446))

(declare-fun res!715330 () Bool)

(assert (=> b!1072247 (=> (not res!715330) (not e!612446))))

(assert (=> b!1072247 (= res!715330 (= lt!475171 lt!475173))))

(assert (=> b!1072247 (= lt!475173 (+!3161 (+!3161 lt!475178 lt!475172) lt!475175))))

(assert (=> b!1072247 (= lt!475175 (tuple2!16601 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1072247 (= lt!475172 (tuple2!16601 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!475179 () ListLongMap!14581)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39627)

(declare-fun getCurrentListMap!4168 (array!68670 array!68668 (_ BitVec 32) (_ BitVec 32) V!39627 V!39627 (_ BitVec 32) Int) ListLongMap!14581)

(assert (=> b!1072247 (= lt!475179 (getCurrentListMap!4168 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072247 (= lt!475171 (getCurrentListMap!4168 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072248 () Bool)

(assert (=> b!1072248 (= e!612451 (not e!612445))))

(declare-fun res!715334 () Bool)

(assert (=> b!1072248 (=> res!715334 e!612445)))

(assert (=> b!1072248 (= res!715334 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!475169 () ListLongMap!14581)

(assert (=> b!1072248 (= lt!475178 lt!475169)))

(declare-fun lt!475177 () Unit!35273)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!875 (array!68670 array!68668 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39627 V!39627 V!39627 V!39627 (_ BitVec 32) Int) Unit!35273)

(assert (=> b!1072248 (= lt!475177 (lemmaNoChangeToArrayThenSameMapNoExtras!875 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3836 (array!68670 array!68668 (_ BitVec 32) (_ BitVec 32) V!39627 V!39627 (_ BitVec 32) Int) ListLongMap!14581)

(assert (=> b!1072248 (= lt!475169 (getCurrentListMapNoExtraKeys!3836 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072248 (= lt!475178 (getCurrentListMapNoExtraKeys!3836 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072249 () Bool)

(assert (=> b!1072249 (= e!612448 tp_is_empty!25869)))

(declare-fun b!1072250 () Bool)

(assert (=> b!1072250 (= e!612446 (= lt!475179 (+!3161 lt!475169 lt!475175)))))

(declare-fun b!1072251 () Bool)

(declare-fun res!715335 () Bool)

(assert (=> b!1072251 (=> (not res!715335) (not e!612451))))

(declare-datatypes ((List!23180 0))(
  ( (Nil!23177) (Cons!23176 (h!24385 (_ BitVec 64)) (t!32522 List!23180)) )
))
(declare-fun arrayNoDuplicates!0 (array!68670 (_ BitVec 32) List!23180) Bool)

(assert (=> b!1072251 (= res!715335 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23177))))

(declare-fun mapNonEmpty!40513 () Bool)

(declare-fun tp!77639 () Bool)

(assert (=> mapNonEmpty!40513 (= mapRes!40513 (and tp!77639 e!612447))))

(declare-fun mapKey!40513 () (_ BitVec 32))

(declare-fun mapRest!40513 () (Array (_ BitVec 32) ValueCell!12231))

(declare-fun mapValue!40513 () ValueCell!12231)

(assert (=> mapNonEmpty!40513 (= (arr!33025 _values!955) (store mapRest!40513 mapKey!40513 mapValue!40513))))

(assert (= (and start!94866 res!715332) b!1072243))

(assert (= (and b!1072243 res!715331) b!1072244))

(assert (= (and b!1072244 res!715333) b!1072251))

(assert (= (and b!1072251 res!715335) b!1072248))

(assert (= (and b!1072248 (not res!715334)) b!1072247))

(assert (= (and b!1072247 res!715330) b!1072250))

(assert (= (and b!1072245 condMapEmpty!40513) mapIsEmpty!40513))

(assert (= (and b!1072245 (not condMapEmpty!40513)) mapNonEmpty!40513))

(get-info :version)

(assert (= (and mapNonEmpty!40513 ((_ is ValueCellFull!12231) mapValue!40513)) b!1072246))

(assert (= (and b!1072245 ((_ is ValueCellFull!12231) mapDefault!40513)) b!1072249))

(assert (= start!94866 b!1072245))

(declare-fun m!991259 () Bool)

(assert (=> start!94866 m!991259))

(declare-fun m!991261 () Bool)

(assert (=> start!94866 m!991261))

(declare-fun m!991263 () Bool)

(assert (=> start!94866 m!991263))

(declare-fun m!991265 () Bool)

(assert (=> b!1072248 m!991265))

(declare-fun m!991267 () Bool)

(assert (=> b!1072248 m!991267))

(declare-fun m!991269 () Bool)

(assert (=> b!1072248 m!991269))

(declare-fun m!991271 () Bool)

(assert (=> mapNonEmpty!40513 m!991271))

(declare-fun m!991273 () Bool)

(assert (=> b!1072247 m!991273))

(declare-fun m!991275 () Bool)

(assert (=> b!1072247 m!991275))

(declare-fun m!991277 () Bool)

(assert (=> b!1072247 m!991277))

(declare-fun m!991279 () Bool)

(assert (=> b!1072247 m!991279))

(declare-fun m!991281 () Bool)

(assert (=> b!1072247 m!991281))

(declare-fun m!991283 () Bool)

(assert (=> b!1072247 m!991283))

(assert (=> b!1072247 m!991275))

(declare-fun m!991285 () Bool)

(assert (=> b!1072247 m!991285))

(declare-fun m!991287 () Bool)

(assert (=> b!1072247 m!991287))

(declare-fun m!991289 () Bool)

(assert (=> b!1072247 m!991289))

(declare-fun m!991291 () Bool)

(assert (=> b!1072247 m!991291))

(declare-fun m!991293 () Bool)

(assert (=> b!1072244 m!991293))

(declare-fun m!991295 () Bool)

(assert (=> b!1072250 m!991295))

(declare-fun m!991297 () Bool)

(assert (=> b!1072251 m!991297))

(check-sat (not b!1072251) (not b!1072244) (not b_next!22059) (not start!94866) (not b!1072248) (not b!1072250) tp_is_empty!25869 (not b!1072247) (not mapNonEmpty!40513) b_and!34919)
(check-sat b_and!34919 (not b_next!22059))
