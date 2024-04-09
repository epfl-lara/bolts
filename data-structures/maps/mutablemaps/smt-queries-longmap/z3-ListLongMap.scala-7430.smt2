; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94468 () Bool)

(assert start!94468)

(declare-fun b_free!21759 () Bool)

(declare-fun b_next!21759 () Bool)

(assert (=> start!94468 (= b_free!21759 (not b_next!21759))))

(declare-fun tp!76725 () Bool)

(declare-fun b_and!34569 () Bool)

(assert (=> start!94468 (= tp!76725 b_and!34569)))

(declare-fun mapNonEmpty!40048 () Bool)

(declare-fun mapRes!40048 () Bool)

(declare-fun tp!76724 () Bool)

(declare-fun e!609066 () Bool)

(assert (=> mapNonEmpty!40048 (= mapRes!40048 (and tp!76724 e!609066))))

(declare-fun mapKey!40048 () (_ BitVec 32))

(declare-datatypes ((V!39227 0))(
  ( (V!39228 (val!12835 Int)) )
))
(declare-datatypes ((ValueCell!12081 0))(
  ( (ValueCellFull!12081 (v!15450 V!39227)) (EmptyCell!12081) )
))
(declare-datatypes ((array!68092 0))(
  ( (array!68093 (arr!32742 (Array (_ BitVec 32) ValueCell!12081)) (size!33279 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68092)

(declare-fun mapValue!40048 () ValueCell!12081)

(declare-fun mapRest!40048 () (Array (_ BitVec 32) ValueCell!12081))

(assert (=> mapNonEmpty!40048 (= (arr!32742 _values!955) (store mapRest!40048 mapKey!40048 mapValue!40048))))

(declare-fun b!1067697 () Bool)

(declare-fun e!609072 () Bool)

(declare-fun tp_is_empty!25569 () Bool)

(assert (=> b!1067697 (= e!609072 tp_is_empty!25569)))

(declare-fun b!1067698 () Bool)

(declare-fun e!609070 () Bool)

(declare-fun e!609071 () Bool)

(assert (=> b!1067698 (= e!609070 (not e!609071))))

(declare-fun res!712574 () Bool)

(assert (=> b!1067698 (=> res!712574 e!609071)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1067698 (= res!712574 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16372 0))(
  ( (tuple2!16373 (_1!8196 (_ BitVec 64)) (_2!8196 V!39227)) )
))
(declare-datatypes ((List!22962 0))(
  ( (Nil!22959) (Cons!22958 (h!24167 tuple2!16372) (t!32294 List!22962)) )
))
(declare-datatypes ((ListLongMap!14353 0))(
  ( (ListLongMap!14354 (toList!7192 List!22962)) )
))
(declare-fun lt!471584 () ListLongMap!14353)

(declare-fun lt!471580 () ListLongMap!14353)

(assert (=> b!1067698 (= lt!471584 lt!471580)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39227)

(declare-fun minValue!907 () V!39227)

(declare-datatypes ((Unit!35050 0))(
  ( (Unit!35051) )
))
(declare-fun lt!471582 () Unit!35050)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39227)

(declare-datatypes ((array!68094 0))(
  ( (array!68095 (arr!32743 (Array (_ BitVec 32) (_ BitVec 64))) (size!33280 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68094)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!776 (array!68094 array!68092 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39227 V!39227 V!39227 V!39227 (_ BitVec 32) Int) Unit!35050)

(assert (=> b!1067698 (= lt!471582 (lemmaNoChangeToArrayThenSameMapNoExtras!776 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3737 (array!68094 array!68092 (_ BitVec 32) (_ BitVec 32) V!39227 V!39227 (_ BitVec 32) Int) ListLongMap!14353)

(assert (=> b!1067698 (= lt!471580 (getCurrentListMapNoExtraKeys!3737 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067698 (= lt!471584 (getCurrentListMapNoExtraKeys!3737 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067699 () Bool)

(declare-fun res!712573 () Bool)

(assert (=> b!1067699 (=> (not res!712573) (not e!609070))))

(assert (=> b!1067699 (= res!712573 (and (= (size!33279 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33280 _keys!1163) (size!33279 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067700 () Bool)

(assert (=> b!1067700 (= e!609066 tp_is_empty!25569)))

(declare-fun mapIsEmpty!40048 () Bool)

(assert (=> mapIsEmpty!40048 mapRes!40048))

(declare-fun b!1067702 () Bool)

(declare-fun res!712576 () Bool)

(assert (=> b!1067702 (=> (not res!712576) (not e!609070))))

(declare-datatypes ((List!22963 0))(
  ( (Nil!22960) (Cons!22959 (h!24168 (_ BitVec 64)) (t!32295 List!22963)) )
))
(declare-fun arrayNoDuplicates!0 (array!68094 (_ BitVec 32) List!22963) Bool)

(assert (=> b!1067702 (= res!712576 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22960))))

(declare-fun b!1067703 () Bool)

(declare-fun e!609069 () Bool)

(assert (=> b!1067703 (= e!609071 e!609069)))

(declare-fun res!712575 () Bool)

(assert (=> b!1067703 (=> res!712575 e!609069)))

(declare-fun lt!471583 () ListLongMap!14353)

(declare-fun contains!6298 (ListLongMap!14353 (_ BitVec 64)) Bool)

(assert (=> b!1067703 (= res!712575 (contains!6298 lt!471583 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4088 (array!68094 array!68092 (_ BitVec 32) (_ BitVec 32) V!39227 V!39227 (_ BitVec 32) Int) ListLongMap!14353)

(assert (=> b!1067703 (= lt!471583 (getCurrentListMap!4088 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!712572 () Bool)

(assert (=> start!94468 (=> (not res!712572) (not e!609070))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94468 (= res!712572 (validMask!0 mask!1515))))

(assert (=> start!94468 e!609070))

(assert (=> start!94468 true))

(assert (=> start!94468 tp_is_empty!25569))

(declare-fun e!609067 () Bool)

(declare-fun array_inv!25182 (array!68092) Bool)

(assert (=> start!94468 (and (array_inv!25182 _values!955) e!609067)))

(assert (=> start!94468 tp!76725))

(declare-fun array_inv!25183 (array!68094) Bool)

(assert (=> start!94468 (array_inv!25183 _keys!1163)))

(declare-fun b!1067701 () Bool)

(assert (=> b!1067701 (= e!609067 (and e!609072 mapRes!40048))))

(declare-fun condMapEmpty!40048 () Bool)

(declare-fun mapDefault!40048 () ValueCell!12081)

(assert (=> b!1067701 (= condMapEmpty!40048 (= (arr!32742 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12081)) mapDefault!40048)))))

(declare-fun b!1067704 () Bool)

(assert (=> b!1067704 (= e!609069 true)))

(declare-fun -!633 (ListLongMap!14353 (_ BitVec 64)) ListLongMap!14353)

(assert (=> b!1067704 (= (-!633 lt!471583 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471583)))

(declare-fun lt!471581 () Unit!35050)

(declare-fun removeNotPresentStillSame!42 (ListLongMap!14353 (_ BitVec 64)) Unit!35050)

(assert (=> b!1067704 (= lt!471581 (removeNotPresentStillSame!42 lt!471583 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1067705 () Bool)

(declare-fun res!712577 () Bool)

(assert (=> b!1067705 (=> (not res!712577) (not e!609070))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68094 (_ BitVec 32)) Bool)

(assert (=> b!1067705 (= res!712577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!94468 res!712572) b!1067699))

(assert (= (and b!1067699 res!712573) b!1067705))

(assert (= (and b!1067705 res!712577) b!1067702))

(assert (= (and b!1067702 res!712576) b!1067698))

(assert (= (and b!1067698 (not res!712574)) b!1067703))

(assert (= (and b!1067703 (not res!712575)) b!1067704))

(assert (= (and b!1067701 condMapEmpty!40048) mapIsEmpty!40048))

(assert (= (and b!1067701 (not condMapEmpty!40048)) mapNonEmpty!40048))

(get-info :version)

(assert (= (and mapNonEmpty!40048 ((_ is ValueCellFull!12081) mapValue!40048)) b!1067700))

(assert (= (and b!1067701 ((_ is ValueCellFull!12081) mapDefault!40048)) b!1067697))

(assert (= start!94468 b!1067701))

(declare-fun m!986455 () Bool)

(assert (=> b!1067703 m!986455))

(declare-fun m!986457 () Bool)

(assert (=> b!1067703 m!986457))

(declare-fun m!986459 () Bool)

(assert (=> b!1067705 m!986459))

(declare-fun m!986461 () Bool)

(assert (=> b!1067698 m!986461))

(declare-fun m!986463 () Bool)

(assert (=> b!1067698 m!986463))

(declare-fun m!986465 () Bool)

(assert (=> b!1067698 m!986465))

(declare-fun m!986467 () Bool)

(assert (=> mapNonEmpty!40048 m!986467))

(declare-fun m!986469 () Bool)

(assert (=> start!94468 m!986469))

(declare-fun m!986471 () Bool)

(assert (=> start!94468 m!986471))

(declare-fun m!986473 () Bool)

(assert (=> start!94468 m!986473))

(declare-fun m!986475 () Bool)

(assert (=> b!1067704 m!986475))

(declare-fun m!986477 () Bool)

(assert (=> b!1067704 m!986477))

(declare-fun m!986479 () Bool)

(assert (=> b!1067702 m!986479))

(check-sat (not mapNonEmpty!40048) (not start!94468) (not b!1067702) b_and!34569 (not b!1067698) tp_is_empty!25569 (not b!1067705) (not b!1067703) (not b_next!21759) (not b!1067704))
(check-sat b_and!34569 (not b_next!21759))
