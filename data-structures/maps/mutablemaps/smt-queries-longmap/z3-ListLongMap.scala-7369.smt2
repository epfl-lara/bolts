; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93970 () Bool)

(assert start!93970)

(declare-fun b_free!21393 () Bool)

(declare-fun b_next!21393 () Bool)

(assert (=> start!93970 (= b_free!21393 (not b_next!21393))))

(declare-fun tp!75606 () Bool)

(declare-fun b_and!34133 () Bool)

(assert (=> start!93970 (= tp!75606 b_and!34133)))

(declare-fun b!1062332 () Bool)

(declare-fun res!709452 () Bool)

(declare-fun e!605161 () Bool)

(assert (=> b!1062332 (=> (not res!709452) (not e!605161))))

(declare-datatypes ((array!67382 0))(
  ( (array!67383 (arr!32394 (Array (_ BitVec 32) (_ BitVec 64))) (size!32931 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67382)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67382 (_ BitVec 32)) Bool)

(assert (=> b!1062332 (= res!709452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1062333 () Bool)

(declare-fun e!605160 () Bool)

(assert (=> b!1062333 (= e!605160 true)))

(declare-datatypes ((V!38739 0))(
  ( (V!38740 (val!12652 Int)) )
))
(declare-datatypes ((tuple2!16092 0))(
  ( (tuple2!16093 (_1!8056 (_ BitVec 64)) (_2!8056 V!38739)) )
))
(declare-datatypes ((List!22705 0))(
  ( (Nil!22702) (Cons!22701 (h!23910 tuple2!16092) (t!32023 List!22705)) )
))
(declare-datatypes ((ListLongMap!14073 0))(
  ( (ListLongMap!14074 (toList!7052 List!22705)) )
))
(declare-fun lt!468044 () ListLongMap!14073)

(declare-fun -!567 (ListLongMap!14073 (_ BitVec 64)) ListLongMap!14073)

(assert (=> b!1062333 (= (-!567 lt!468044 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468044)))

(declare-datatypes ((Unit!34777 0))(
  ( (Unit!34778) )
))
(declare-fun lt!468047 () Unit!34777)

(declare-fun removeNotPresentStillSame!13 (ListLongMap!14073 (_ BitVec 64)) Unit!34777)

(assert (=> b!1062333 (= lt!468047 (removeNotPresentStillSame!13 lt!468044 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1062334 () Bool)

(declare-fun e!605163 () Bool)

(assert (=> b!1062334 (= e!605163 e!605160)))

(declare-fun res!709450 () Bool)

(assert (=> b!1062334 (=> res!709450 e!605160)))

(declare-fun contains!6248 (ListLongMap!14073 (_ BitVec 64)) Bool)

(assert (=> b!1062334 (= res!709450 (contains!6248 lt!468044 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!38739)

(declare-datatypes ((ValueCell!11898 0))(
  ( (ValueCellFull!11898 (v!15263 V!38739)) (EmptyCell!11898) )
))
(declare-datatypes ((array!67384 0))(
  ( (array!67385 (arr!32395 (Array (_ BitVec 32) ValueCell!11898)) (size!32932 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67384)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38739)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!3998 (array!67382 array!67384 (_ BitVec 32) (_ BitVec 32) V!38739 V!38739 (_ BitVec 32) Int) ListLongMap!14073)

(assert (=> b!1062334 (= lt!468044 (getCurrentListMap!3998 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062335 () Bool)

(declare-fun res!709451 () Bool)

(assert (=> b!1062335 (=> (not res!709451) (not e!605161))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1062335 (= res!709451 (and (= (size!32932 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32931 _keys!1163) (size!32932 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!709453 () Bool)

(assert (=> start!93970 (=> (not res!709453) (not e!605161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93970 (= res!709453 (validMask!0 mask!1515))))

(assert (=> start!93970 e!605161))

(assert (=> start!93970 true))

(declare-fun tp_is_empty!25203 () Bool)

(assert (=> start!93970 tp_is_empty!25203))

(declare-fun e!605159 () Bool)

(declare-fun array_inv!24934 (array!67384) Bool)

(assert (=> start!93970 (and (array_inv!24934 _values!955) e!605159)))

(assert (=> start!93970 tp!75606))

(declare-fun array_inv!24935 (array!67382) Bool)

(assert (=> start!93970 (array_inv!24935 _keys!1163)))

(declare-fun b!1062336 () Bool)

(declare-fun res!709448 () Bool)

(assert (=> b!1062336 (=> (not res!709448) (not e!605161))))

(declare-datatypes ((List!22706 0))(
  ( (Nil!22703) (Cons!22702 (h!23911 (_ BitVec 64)) (t!32024 List!22706)) )
))
(declare-fun arrayNoDuplicates!0 (array!67382 (_ BitVec 32) List!22706) Bool)

(assert (=> b!1062336 (= res!709448 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22703))))

(declare-fun b!1062337 () Bool)

(declare-fun e!605162 () Bool)

(assert (=> b!1062337 (= e!605162 tp_is_empty!25203)))

(declare-fun b!1062338 () Bool)

(assert (=> b!1062338 (= e!605161 (not e!605163))))

(declare-fun res!709449 () Bool)

(assert (=> b!1062338 (=> res!709449 e!605163)))

(assert (=> b!1062338 (= res!709449 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!468046 () ListLongMap!14073)

(declare-fun lt!468048 () ListLongMap!14073)

(assert (=> b!1062338 (= lt!468046 lt!468048)))

(declare-fun lt!468045 () Unit!34777)

(declare-fun zeroValueAfter!47 () V!38739)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!654 (array!67382 array!67384 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38739 V!38739 V!38739 V!38739 (_ BitVec 32) Int) Unit!34777)

(assert (=> b!1062338 (= lt!468045 (lemmaNoChangeToArrayThenSameMapNoExtras!654 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3615 (array!67382 array!67384 (_ BitVec 32) (_ BitVec 32) V!38739 V!38739 (_ BitVec 32) Int) ListLongMap!14073)

(assert (=> b!1062338 (= lt!468048 (getCurrentListMapNoExtraKeys!3615 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062338 (= lt!468046 (getCurrentListMapNoExtraKeys!3615 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062339 () Bool)

(declare-fun e!605157 () Bool)

(declare-fun mapRes!39478 () Bool)

(assert (=> b!1062339 (= e!605159 (and e!605157 mapRes!39478))))

(declare-fun condMapEmpty!39478 () Bool)

(declare-fun mapDefault!39478 () ValueCell!11898)

(assert (=> b!1062339 (= condMapEmpty!39478 (= (arr!32395 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11898)) mapDefault!39478)))))

(declare-fun b!1062340 () Bool)

(assert (=> b!1062340 (= e!605157 tp_is_empty!25203)))

(declare-fun mapNonEmpty!39478 () Bool)

(declare-fun tp!75605 () Bool)

(assert (=> mapNonEmpty!39478 (= mapRes!39478 (and tp!75605 e!605162))))

(declare-fun mapRest!39478 () (Array (_ BitVec 32) ValueCell!11898))

(declare-fun mapKey!39478 () (_ BitVec 32))

(declare-fun mapValue!39478 () ValueCell!11898)

(assert (=> mapNonEmpty!39478 (= (arr!32395 _values!955) (store mapRest!39478 mapKey!39478 mapValue!39478))))

(declare-fun mapIsEmpty!39478 () Bool)

(assert (=> mapIsEmpty!39478 mapRes!39478))

(assert (= (and start!93970 res!709453) b!1062335))

(assert (= (and b!1062335 res!709451) b!1062332))

(assert (= (and b!1062332 res!709452) b!1062336))

(assert (= (and b!1062336 res!709448) b!1062338))

(assert (= (and b!1062338 (not res!709449)) b!1062334))

(assert (= (and b!1062334 (not res!709450)) b!1062333))

(assert (= (and b!1062339 condMapEmpty!39478) mapIsEmpty!39478))

(assert (= (and b!1062339 (not condMapEmpty!39478)) mapNonEmpty!39478))

(get-info :version)

(assert (= (and mapNonEmpty!39478 ((_ is ValueCellFull!11898) mapValue!39478)) b!1062337))

(assert (= (and b!1062339 ((_ is ValueCellFull!11898) mapDefault!39478)) b!1062340))

(assert (= start!93970 b!1062339))

(declare-fun m!981223 () Bool)

(assert (=> b!1062332 m!981223))

(declare-fun m!981225 () Bool)

(assert (=> b!1062333 m!981225))

(declare-fun m!981227 () Bool)

(assert (=> b!1062333 m!981227))

(declare-fun m!981229 () Bool)

(assert (=> mapNonEmpty!39478 m!981229))

(declare-fun m!981231 () Bool)

(assert (=> b!1062338 m!981231))

(declare-fun m!981233 () Bool)

(assert (=> b!1062338 m!981233))

(declare-fun m!981235 () Bool)

(assert (=> b!1062338 m!981235))

(declare-fun m!981237 () Bool)

(assert (=> b!1062336 m!981237))

(declare-fun m!981239 () Bool)

(assert (=> b!1062334 m!981239))

(declare-fun m!981241 () Bool)

(assert (=> b!1062334 m!981241))

(declare-fun m!981243 () Bool)

(assert (=> start!93970 m!981243))

(declare-fun m!981245 () Bool)

(assert (=> start!93970 m!981245))

(declare-fun m!981247 () Bool)

(assert (=> start!93970 m!981247))

(check-sat b_and!34133 (not mapNonEmpty!39478) (not b!1062332) (not b!1062333) tp_is_empty!25203 (not b!1062338) (not b!1062336) (not b!1062334) (not b_next!21393) (not start!93970))
(check-sat b_and!34133 (not b_next!21393))
