; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94184 () Bool)

(assert start!94184)

(declare-fun b_free!21549 () Bool)

(declare-fun b_next!21549 () Bool)

(assert (=> start!94184 (= b_free!21549 (not b_next!21549))))

(declare-fun tp!76082 () Bool)

(declare-fun b_and!34317 () Bool)

(assert (=> start!94184 (= tp!76082 b_and!34317)))

(declare-fun b!1064634 () Bool)

(declare-fun e!606851 () Bool)

(assert (=> b!1064634 (= e!606851 true)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38947 0))(
  ( (V!38948 (val!12730 Int)) )
))
(declare-fun zeroValueBefore!47 () V!38947)

(declare-datatypes ((tuple2!16208 0))(
  ( (tuple2!16209 (_1!8114 (_ BitVec 64)) (_2!8114 V!38947)) )
))
(declare-datatypes ((List!22809 0))(
  ( (Nil!22806) (Cons!22805 (h!24014 tuple2!16208) (t!32133 List!22809)) )
))
(declare-datatypes ((ListLongMap!14189 0))(
  ( (ListLongMap!14190 (toList!7110 List!22809)) )
))
(declare-fun lt!469299 () ListLongMap!14189)

(declare-datatypes ((ValueCell!11976 0))(
  ( (ValueCellFull!11976 (v!15343 V!38947)) (EmptyCell!11976) )
))
(declare-datatypes ((array!67682 0))(
  ( (array!67683 (arr!32541 (Array (_ BitVec 32) ValueCell!11976)) (size!33078 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67682)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38947)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67684 0))(
  ( (array!67685 (arr!32542 (Array (_ BitVec 32) (_ BitVec 64))) (size!33079 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67684)

(declare-fun getCurrentListMap!4034 (array!67684 array!67682 (_ BitVec 32) (_ BitVec 32) V!38947 V!38947 (_ BitVec 32) Int) ListLongMap!14189)

(assert (=> b!1064634 (= lt!469299 (getCurrentListMap!4034 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!710803 () Bool)

(declare-fun e!606848 () Bool)

(assert (=> start!94184 (=> (not res!710803) (not e!606848))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94184 (= res!710803 (validMask!0 mask!1515))))

(assert (=> start!94184 e!606848))

(assert (=> start!94184 true))

(declare-fun tp_is_empty!25359 () Bool)

(assert (=> start!94184 tp_is_empty!25359))

(declare-fun e!606852 () Bool)

(declare-fun array_inv!25034 (array!67682) Bool)

(assert (=> start!94184 (and (array_inv!25034 _values!955) e!606852)))

(assert (=> start!94184 tp!76082))

(declare-fun array_inv!25035 (array!67684) Bool)

(assert (=> start!94184 (array_inv!25035 _keys!1163)))

(declare-fun b!1064635 () Bool)

(declare-fun res!710805 () Bool)

(assert (=> b!1064635 (=> (not res!710805) (not e!606848))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1064635 (= res!710805 (and (= (size!33078 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33079 _keys!1163) (size!33078 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064636 () Bool)

(declare-fun e!606849 () Bool)

(assert (=> b!1064636 (= e!606849 tp_is_empty!25359)))

(declare-fun b!1064637 () Bool)

(declare-fun e!606847 () Bool)

(assert (=> b!1064637 (= e!606847 tp_is_empty!25359)))

(declare-fun b!1064638 () Bool)

(assert (=> b!1064638 (= e!606848 (not e!606851))))

(declare-fun res!710802 () Bool)

(assert (=> b!1064638 (=> res!710802 e!606851)))

(assert (=> b!1064638 (= res!710802 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!469300 () ListLongMap!14189)

(declare-fun lt!469301 () ListLongMap!14189)

(assert (=> b!1064638 (= lt!469300 lt!469301)))

(declare-datatypes ((Unit!34883 0))(
  ( (Unit!34884) )
))
(declare-fun lt!469302 () Unit!34883)

(declare-fun zeroValueAfter!47 () V!38947)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!701 (array!67684 array!67682 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38947 V!38947 V!38947 V!38947 (_ BitVec 32) Int) Unit!34883)

(assert (=> b!1064638 (= lt!469302 (lemmaNoChangeToArrayThenSameMapNoExtras!701 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3662 (array!67684 array!67682 (_ BitVec 32) (_ BitVec 32) V!38947 V!38947 (_ BitVec 32) Int) ListLongMap!14189)

(assert (=> b!1064638 (= lt!469301 (getCurrentListMapNoExtraKeys!3662 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064638 (= lt!469300 (getCurrentListMapNoExtraKeys!3662 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064639 () Bool)

(declare-fun res!710804 () Bool)

(assert (=> b!1064639 (=> (not res!710804) (not e!606848))))

(declare-datatypes ((List!22810 0))(
  ( (Nil!22807) (Cons!22806 (h!24015 (_ BitVec 64)) (t!32134 List!22810)) )
))
(declare-fun arrayNoDuplicates!0 (array!67684 (_ BitVec 32) List!22810) Bool)

(assert (=> b!1064639 (= res!710804 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22807))))

(declare-fun mapNonEmpty!39721 () Bool)

(declare-fun mapRes!39721 () Bool)

(declare-fun tp!76083 () Bool)

(assert (=> mapNonEmpty!39721 (= mapRes!39721 (and tp!76083 e!606847))))

(declare-fun mapKey!39721 () (_ BitVec 32))

(declare-fun mapValue!39721 () ValueCell!11976)

(declare-fun mapRest!39721 () (Array (_ BitVec 32) ValueCell!11976))

(assert (=> mapNonEmpty!39721 (= (arr!32541 _values!955) (store mapRest!39721 mapKey!39721 mapValue!39721))))

(declare-fun b!1064640 () Bool)

(assert (=> b!1064640 (= e!606852 (and e!606849 mapRes!39721))))

(declare-fun condMapEmpty!39721 () Bool)

(declare-fun mapDefault!39721 () ValueCell!11976)

(assert (=> b!1064640 (= condMapEmpty!39721 (= (arr!32541 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11976)) mapDefault!39721)))))

(declare-fun mapIsEmpty!39721 () Bool)

(assert (=> mapIsEmpty!39721 mapRes!39721))

(declare-fun b!1064641 () Bool)

(declare-fun res!710806 () Bool)

(assert (=> b!1064641 (=> (not res!710806) (not e!606848))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67684 (_ BitVec 32)) Bool)

(assert (=> b!1064641 (= res!710806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!94184 res!710803) b!1064635))

(assert (= (and b!1064635 res!710805) b!1064641))

(assert (= (and b!1064641 res!710806) b!1064639))

(assert (= (and b!1064639 res!710804) b!1064638))

(assert (= (and b!1064638 (not res!710802)) b!1064634))

(assert (= (and b!1064640 condMapEmpty!39721) mapIsEmpty!39721))

(assert (= (and b!1064640 (not condMapEmpty!39721)) mapNonEmpty!39721))

(get-info :version)

(assert (= (and mapNonEmpty!39721 ((_ is ValueCellFull!11976) mapValue!39721)) b!1064637))

(assert (= (and b!1064640 ((_ is ValueCellFull!11976) mapDefault!39721)) b!1064636))

(assert (= start!94184 b!1064640))

(declare-fun m!983275 () Bool)

(assert (=> mapNonEmpty!39721 m!983275))

(declare-fun m!983277 () Bool)

(assert (=> start!94184 m!983277))

(declare-fun m!983279 () Bool)

(assert (=> start!94184 m!983279))

(declare-fun m!983281 () Bool)

(assert (=> start!94184 m!983281))

(declare-fun m!983283 () Bool)

(assert (=> b!1064634 m!983283))

(declare-fun m!983285 () Bool)

(assert (=> b!1064638 m!983285))

(declare-fun m!983287 () Bool)

(assert (=> b!1064638 m!983287))

(declare-fun m!983289 () Bool)

(assert (=> b!1064638 m!983289))

(declare-fun m!983291 () Bool)

(assert (=> b!1064639 m!983291))

(declare-fun m!983293 () Bool)

(assert (=> b!1064641 m!983293))

(check-sat tp_is_empty!25359 (not b_next!21549) b_and!34317 (not mapNonEmpty!39721) (not b!1064641) (not b!1064639) (not start!94184) (not b!1064638) (not b!1064634))
(check-sat b_and!34317 (not b_next!21549))
