; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94724 () Bool)

(assert start!94724)

(declare-fun b_free!21957 () Bool)

(declare-fun b_next!21957 () Bool)

(assert (=> start!94724 (= b_free!21957 (not b_next!21957))))

(declare-fun tp!77328 () Bool)

(declare-fun b_and!34795 () Bool)

(assert (=> start!94724 (= tp!77328 b_and!34795)))

(declare-fun b!1070539 () Bool)

(declare-fun e!611175 () Bool)

(declare-fun e!611173 () Bool)

(declare-fun mapRes!40354 () Bool)

(assert (=> b!1070539 (= e!611175 (and e!611173 mapRes!40354))))

(declare-fun condMapEmpty!40354 () Bool)

(declare-datatypes ((V!39491 0))(
  ( (V!39492 (val!12934 Int)) )
))
(declare-datatypes ((ValueCell!12180 0))(
  ( (ValueCellFull!12180 (v!15551 V!39491)) (EmptyCell!12180) )
))
(declare-datatypes ((array!68470 0))(
  ( (array!68471 (arr!32928 (Array (_ BitVec 32) ValueCell!12180)) (size!33465 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68470)

(declare-fun mapDefault!40354 () ValueCell!12180)

(assert (=> b!1070539 (= condMapEmpty!40354 (= (arr!32928 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12180)) mapDefault!40354)))))

(declare-fun b!1070540 () Bool)

(declare-fun res!714279 () Bool)

(declare-fun e!611171 () Bool)

(assert (=> b!1070540 (=> (not res!714279) (not e!611171))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68472 0))(
  ( (array!68473 (arr!32929 (Array (_ BitVec 32) (_ BitVec 64))) (size!33466 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68472)

(assert (=> b!1070540 (= res!714279 (and (= (size!33465 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33466 _keys!1163) (size!33465 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!714277 () Bool)

(assert (=> start!94724 (=> (not res!714277) (not e!611171))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94724 (= res!714277 (validMask!0 mask!1515))))

(assert (=> start!94724 e!611171))

(assert (=> start!94724 true))

(declare-fun tp_is_empty!25767 () Bool)

(assert (=> start!94724 tp_is_empty!25767))

(declare-fun array_inv!25320 (array!68470) Bool)

(assert (=> start!94724 (and (array_inv!25320 _values!955) e!611175)))

(assert (=> start!94724 tp!77328))

(declare-fun array_inv!25321 (array!68472) Bool)

(assert (=> start!94724 (array_inv!25321 _keys!1163)))

(declare-fun b!1070541 () Bool)

(declare-fun e!611170 () Bool)

(assert (=> b!1070541 (= e!611170 tp_is_empty!25767)))

(declare-fun mapNonEmpty!40354 () Bool)

(declare-fun tp!77327 () Bool)

(assert (=> mapNonEmpty!40354 (= mapRes!40354 (and tp!77327 e!611170))))

(declare-fun mapRest!40354 () (Array (_ BitVec 32) ValueCell!12180))

(declare-fun mapValue!40354 () ValueCell!12180)

(declare-fun mapKey!40354 () (_ BitVec 32))

(assert (=> mapNonEmpty!40354 (= (arr!32928 _values!955) (store mapRest!40354 mapKey!40354 mapValue!40354))))

(declare-fun mapIsEmpty!40354 () Bool)

(assert (=> mapIsEmpty!40354 mapRes!40354))

(declare-fun b!1070542 () Bool)

(declare-fun res!714281 () Bool)

(assert (=> b!1070542 (=> (not res!714281) (not e!611171))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68472 (_ BitVec 32)) Bool)

(assert (=> b!1070542 (= res!714281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1070543 () Bool)

(assert (=> b!1070543 (= e!611173 tp_is_empty!25767)))

(declare-fun b!1070544 () Bool)

(declare-fun res!714278 () Bool)

(assert (=> b!1070544 (=> (not res!714278) (not e!611171))))

(declare-datatypes ((List!23102 0))(
  ( (Nil!23099) (Cons!23098 (h!24307 (_ BitVec 64)) (t!32440 List!23102)) )
))
(declare-fun arrayNoDuplicates!0 (array!68472 (_ BitVec 32) List!23102) Bool)

(assert (=> b!1070544 (= res!714278 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23099))))

(declare-fun b!1070545 () Bool)

(declare-fun e!611172 () Bool)

(assert (=> b!1070545 (= e!611172 true)))

(declare-fun zeroValueBefore!47 () V!39491)

(declare-datatypes ((tuple2!16516 0))(
  ( (tuple2!16517 (_1!8268 (_ BitVec 64)) (_2!8268 V!39491)) )
))
(declare-datatypes ((List!23103 0))(
  ( (Nil!23100) (Cons!23099 (h!24308 tuple2!16516) (t!32441 List!23103)) )
))
(declare-datatypes ((ListLongMap!14497 0))(
  ( (ListLongMap!14498 (toList!7264 List!23103)) )
))
(declare-fun lt!473123 () ListLongMap!14497)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39491)

(declare-fun getCurrentListMap!4130 (array!68472 array!68470 (_ BitVec 32) (_ BitVec 32) V!39491 V!39491 (_ BitVec 32) Int) ListLongMap!14497)

(assert (=> b!1070545 (= lt!473123 (getCurrentListMap!4130 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070546 () Bool)

(assert (=> b!1070546 (= e!611171 (not e!611172))))

(declare-fun res!714280 () Bool)

(assert (=> b!1070546 (=> res!714280 e!611172)))

(assert (=> b!1070546 (= res!714280 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!473124 () ListLongMap!14497)

(declare-fun lt!473125 () ListLongMap!14497)

(assert (=> b!1070546 (= lt!473124 lt!473125)))

(declare-datatypes ((Unit!35192 0))(
  ( (Unit!35193) )
))
(declare-fun lt!473126 () Unit!35192)

(declare-fun zeroValueAfter!47 () V!39491)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!839 (array!68472 array!68470 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39491 V!39491 V!39491 V!39491 (_ BitVec 32) Int) Unit!35192)

(assert (=> b!1070546 (= lt!473126 (lemmaNoChangeToArrayThenSameMapNoExtras!839 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3800 (array!68472 array!68470 (_ BitVec 32) (_ BitVec 32) V!39491 V!39491 (_ BitVec 32) Int) ListLongMap!14497)

(assert (=> b!1070546 (= lt!473125 (getCurrentListMapNoExtraKeys!3800 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070546 (= lt!473124 (getCurrentListMapNoExtraKeys!3800 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94724 res!714277) b!1070540))

(assert (= (and b!1070540 res!714279) b!1070542))

(assert (= (and b!1070542 res!714281) b!1070544))

(assert (= (and b!1070544 res!714278) b!1070546))

(assert (= (and b!1070546 (not res!714280)) b!1070545))

(assert (= (and b!1070539 condMapEmpty!40354) mapIsEmpty!40354))

(assert (= (and b!1070539 (not condMapEmpty!40354)) mapNonEmpty!40354))

(get-info :version)

(assert (= (and mapNonEmpty!40354 ((_ is ValueCellFull!12180) mapValue!40354)) b!1070541))

(assert (= (and b!1070539 ((_ is ValueCellFull!12180) mapDefault!40354)) b!1070543))

(assert (= start!94724 b!1070539))

(declare-fun m!988999 () Bool)

(assert (=> start!94724 m!988999))

(declare-fun m!989001 () Bool)

(assert (=> start!94724 m!989001))

(declare-fun m!989003 () Bool)

(assert (=> start!94724 m!989003))

(declare-fun m!989005 () Bool)

(assert (=> b!1070542 m!989005))

(declare-fun m!989007 () Bool)

(assert (=> b!1070546 m!989007))

(declare-fun m!989009 () Bool)

(assert (=> b!1070546 m!989009))

(declare-fun m!989011 () Bool)

(assert (=> b!1070546 m!989011))

(declare-fun m!989013 () Bool)

(assert (=> mapNonEmpty!40354 m!989013))

(declare-fun m!989015 () Bool)

(assert (=> b!1070544 m!989015))

(declare-fun m!989017 () Bool)

(assert (=> b!1070545 m!989017))

(check-sat b_and!34795 (not b!1070544) (not b!1070546) (not start!94724) tp_is_empty!25767 (not b!1070545) (not b_next!21957) (not b!1070542) (not mapNonEmpty!40354))
(check-sat b_and!34795 (not b_next!21957))
