; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94462 () Bool)

(assert start!94462)

(declare-fun b_free!21753 () Bool)

(declare-fun b_next!21753 () Bool)

(assert (=> start!94462 (= b_free!21753 (not b_next!21753))))

(declare-fun tp!76706 () Bool)

(declare-fun b_and!34563 () Bool)

(assert (=> start!94462 (= tp!76706 b_and!34563)))

(declare-fun b!1067616 () Bool)

(declare-fun e!609006 () Bool)

(assert (=> b!1067616 (= e!609006 true)))

(declare-datatypes ((V!39219 0))(
  ( (V!39220 (val!12832 Int)) )
))
(declare-datatypes ((tuple2!16366 0))(
  ( (tuple2!16367 (_1!8193 (_ BitVec 64)) (_2!8193 V!39219)) )
))
(declare-datatypes ((List!22956 0))(
  ( (Nil!22953) (Cons!22952 (h!24161 tuple2!16366) (t!32288 List!22956)) )
))
(declare-datatypes ((ListLongMap!14347 0))(
  ( (ListLongMap!14348 (toList!7189 List!22956)) )
))
(declare-fun lt!471535 () ListLongMap!14347)

(declare-fun -!630 (ListLongMap!14347 (_ BitVec 64)) ListLongMap!14347)

(assert (=> b!1067616 (= (-!630 lt!471535 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471535)))

(declare-datatypes ((Unit!35044 0))(
  ( (Unit!35045) )
))
(declare-fun lt!471536 () Unit!35044)

(declare-fun removeNotPresentStillSame!39 (ListLongMap!14347 (_ BitVec 64)) Unit!35044)

(assert (=> b!1067616 (= lt!471536 (removeNotPresentStillSame!39 lt!471535 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1067617 () Bool)

(declare-fun e!609005 () Bool)

(declare-fun tp_is_empty!25563 () Bool)

(assert (=> b!1067617 (= e!609005 tp_is_empty!25563)))

(declare-fun mapNonEmpty!40039 () Bool)

(declare-fun mapRes!40039 () Bool)

(declare-fun tp!76707 () Bool)

(assert (=> mapNonEmpty!40039 (= mapRes!40039 (and tp!76707 e!609005))))

(declare-datatypes ((ValueCell!12078 0))(
  ( (ValueCellFull!12078 (v!15447 V!39219)) (EmptyCell!12078) )
))
(declare-fun mapRest!40039 () (Array (_ BitVec 32) ValueCell!12078))

(declare-datatypes ((array!68080 0))(
  ( (array!68081 (arr!32736 (Array (_ BitVec 32) ValueCell!12078)) (size!33273 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68080)

(declare-fun mapValue!40039 () ValueCell!12078)

(declare-fun mapKey!40039 () (_ BitVec 32))

(assert (=> mapNonEmpty!40039 (= (arr!32736 _values!955) (store mapRest!40039 mapKey!40039 mapValue!40039))))

(declare-fun b!1067618 () Bool)

(declare-fun e!609007 () Bool)

(declare-fun e!609008 () Bool)

(assert (=> b!1067618 (= e!609007 (and e!609008 mapRes!40039))))

(declare-fun condMapEmpty!40039 () Bool)

(declare-fun mapDefault!40039 () ValueCell!12078)

(assert (=> b!1067618 (= condMapEmpty!40039 (= (arr!32736 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12078)) mapDefault!40039)))))

(declare-fun b!1067619 () Bool)

(declare-fun res!712523 () Bool)

(declare-fun e!609003 () Bool)

(assert (=> b!1067619 (=> (not res!712523) (not e!609003))))

(declare-datatypes ((array!68082 0))(
  ( (array!68083 (arr!32737 (Array (_ BitVec 32) (_ BitVec 64))) (size!33274 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68082)

(declare-datatypes ((List!22957 0))(
  ( (Nil!22954) (Cons!22953 (h!24162 (_ BitVec 64)) (t!32289 List!22957)) )
))
(declare-fun arrayNoDuplicates!0 (array!68082 (_ BitVec 32) List!22957) Bool)

(assert (=> b!1067619 (= res!712523 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22954))))

(declare-fun b!1067620 () Bool)

(declare-fun e!609009 () Bool)

(assert (=> b!1067620 (= e!609009 e!609006)))

(declare-fun res!712522 () Bool)

(assert (=> b!1067620 (=> res!712522 e!609006)))

(declare-fun contains!6295 (ListLongMap!14347 (_ BitVec 64)) Bool)

(assert (=> b!1067620 (= res!712522 (contains!6295 lt!471535 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39219)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39219)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4085 (array!68082 array!68080 (_ BitVec 32) (_ BitVec 32) V!39219 V!39219 (_ BitVec 32) Int) ListLongMap!14347)

(assert (=> b!1067620 (= lt!471535 (getCurrentListMap!4085 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067621 () Bool)

(declare-fun res!712519 () Bool)

(assert (=> b!1067621 (=> (not res!712519) (not e!609003))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1067621 (= res!712519 (and (= (size!33273 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33274 _keys!1163) (size!33273 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067622 () Bool)

(declare-fun res!712520 () Bool)

(assert (=> b!1067622 (=> (not res!712520) (not e!609003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68082 (_ BitVec 32)) Bool)

(assert (=> b!1067622 (= res!712520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067623 () Bool)

(assert (=> b!1067623 (= e!609008 tp_is_empty!25563)))

(declare-fun b!1067624 () Bool)

(assert (=> b!1067624 (= e!609003 (not e!609009))))

(declare-fun res!712518 () Bool)

(assert (=> b!1067624 (=> res!712518 e!609009)))

(assert (=> b!1067624 (= res!712518 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!471539 () ListLongMap!14347)

(declare-fun lt!471538 () ListLongMap!14347)

(assert (=> b!1067624 (= lt!471539 lt!471538)))

(declare-fun zeroValueAfter!47 () V!39219)

(declare-fun lt!471537 () Unit!35044)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!773 (array!68082 array!68080 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39219 V!39219 V!39219 V!39219 (_ BitVec 32) Int) Unit!35044)

(assert (=> b!1067624 (= lt!471537 (lemmaNoChangeToArrayThenSameMapNoExtras!773 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3734 (array!68082 array!68080 (_ BitVec 32) (_ BitVec 32) V!39219 V!39219 (_ BitVec 32) Int) ListLongMap!14347)

(assert (=> b!1067624 (= lt!471538 (getCurrentListMapNoExtraKeys!3734 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067624 (= lt!471539 (getCurrentListMapNoExtraKeys!3734 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!712521 () Bool)

(assert (=> start!94462 (=> (not res!712521) (not e!609003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94462 (= res!712521 (validMask!0 mask!1515))))

(assert (=> start!94462 e!609003))

(assert (=> start!94462 true))

(assert (=> start!94462 tp_is_empty!25563))

(declare-fun array_inv!25176 (array!68080) Bool)

(assert (=> start!94462 (and (array_inv!25176 _values!955) e!609007)))

(assert (=> start!94462 tp!76706))

(declare-fun array_inv!25177 (array!68082) Bool)

(assert (=> start!94462 (array_inv!25177 _keys!1163)))

(declare-fun mapIsEmpty!40039 () Bool)

(assert (=> mapIsEmpty!40039 mapRes!40039))

(assert (= (and start!94462 res!712521) b!1067621))

(assert (= (and b!1067621 res!712519) b!1067622))

(assert (= (and b!1067622 res!712520) b!1067619))

(assert (= (and b!1067619 res!712523) b!1067624))

(assert (= (and b!1067624 (not res!712518)) b!1067620))

(assert (= (and b!1067620 (not res!712522)) b!1067616))

(assert (= (and b!1067618 condMapEmpty!40039) mapIsEmpty!40039))

(assert (= (and b!1067618 (not condMapEmpty!40039)) mapNonEmpty!40039))

(get-info :version)

(assert (= (and mapNonEmpty!40039 ((_ is ValueCellFull!12078) mapValue!40039)) b!1067617))

(assert (= (and b!1067618 ((_ is ValueCellFull!12078) mapDefault!40039)) b!1067623))

(assert (= start!94462 b!1067618))

(declare-fun m!986377 () Bool)

(assert (=> start!94462 m!986377))

(declare-fun m!986379 () Bool)

(assert (=> start!94462 m!986379))

(declare-fun m!986381 () Bool)

(assert (=> start!94462 m!986381))

(declare-fun m!986383 () Bool)

(assert (=> mapNonEmpty!40039 m!986383))

(declare-fun m!986385 () Bool)

(assert (=> b!1067622 m!986385))

(declare-fun m!986387 () Bool)

(assert (=> b!1067624 m!986387))

(declare-fun m!986389 () Bool)

(assert (=> b!1067624 m!986389))

(declare-fun m!986391 () Bool)

(assert (=> b!1067624 m!986391))

(declare-fun m!986393 () Bool)

(assert (=> b!1067619 m!986393))

(declare-fun m!986395 () Bool)

(assert (=> b!1067620 m!986395))

(declare-fun m!986397 () Bool)

(assert (=> b!1067620 m!986397))

(declare-fun m!986399 () Bool)

(assert (=> b!1067616 m!986399))

(declare-fun m!986401 () Bool)

(assert (=> b!1067616 m!986401))

(check-sat (not b_next!21753) (not b!1067624) (not b!1067616) tp_is_empty!25563 (not mapNonEmpty!40039) (not b!1067619) (not b!1067620) b_and!34563 (not start!94462) (not b!1067622))
(check-sat b_and!34563 (not b_next!21753))
