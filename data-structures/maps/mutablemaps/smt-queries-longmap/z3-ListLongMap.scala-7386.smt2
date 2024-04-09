; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94116 () Bool)

(assert start!94116)

(declare-fun b_free!21495 () Bool)

(declare-fun b_next!21495 () Bool)

(assert (=> start!94116 (= b_free!21495 (not b_next!21495))))

(declare-fun tp!75918 () Bool)

(declare-fun b_and!34255 () Bool)

(assert (=> start!94116 (= tp!75918 b_and!34255)))

(declare-fun b!1063941 () Bool)

(declare-fun e!606350 () Bool)

(declare-fun e!606347 () Bool)

(declare-fun mapRes!39637 () Bool)

(assert (=> b!1063941 (= e!606350 (and e!606347 mapRes!39637))))

(declare-fun condMapEmpty!39637 () Bool)

(declare-datatypes ((V!38875 0))(
  ( (V!38876 (val!12703 Int)) )
))
(declare-datatypes ((ValueCell!11949 0))(
  ( (ValueCellFull!11949 (v!15316 V!38875)) (EmptyCell!11949) )
))
(declare-datatypes ((array!67578 0))(
  ( (array!67579 (arr!32490 (Array (_ BitVec 32) ValueCell!11949)) (size!33027 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67578)

(declare-fun mapDefault!39637 () ValueCell!11949)

(assert (=> b!1063941 (= condMapEmpty!39637 (= (arr!32490 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11949)) mapDefault!39637)))))

(declare-fun mapNonEmpty!39637 () Bool)

(declare-fun tp!75917 () Bool)

(declare-fun e!606349 () Bool)

(assert (=> mapNonEmpty!39637 (= mapRes!39637 (and tp!75917 e!606349))))

(declare-fun mapKey!39637 () (_ BitVec 32))

(declare-fun mapRest!39637 () (Array (_ BitVec 32) ValueCell!11949))

(declare-fun mapValue!39637 () ValueCell!11949)

(assert (=> mapNonEmpty!39637 (= (arr!32490 _values!955) (store mapRest!39637 mapKey!39637 mapValue!39637))))

(declare-fun b!1063942 () Bool)

(declare-fun res!710409 () Bool)

(declare-fun e!606348 () Bool)

(assert (=> b!1063942 (=> (not res!710409) (not e!606348))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67580 0))(
  ( (array!67581 (arr!32491 (Array (_ BitVec 32) (_ BitVec 64))) (size!33028 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67580)

(assert (=> b!1063942 (= res!710409 (and (= (size!33027 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33028 _keys!1163) (size!33027 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1063943 () Bool)

(assert (=> b!1063943 (= e!606348 (not true))))

(declare-datatypes ((tuple2!16172 0))(
  ( (tuple2!16173 (_1!8096 (_ BitVec 64)) (_2!8096 V!38875)) )
))
(declare-datatypes ((List!22775 0))(
  ( (Nil!22772) (Cons!22771 (h!23980 tuple2!16172) (t!32097 List!22775)) )
))
(declare-datatypes ((ListLongMap!14153 0))(
  ( (ListLongMap!14154 (toList!7092 List!22775)) )
))
(declare-fun lt!468975 () ListLongMap!14153)

(declare-fun lt!468977 () ListLongMap!14153)

(assert (=> b!1063943 (= lt!468975 lt!468977)))

(declare-fun zeroValueBefore!47 () V!38875)

(declare-datatypes ((Unit!34851 0))(
  ( (Unit!34852) )
))
(declare-fun lt!468976 () Unit!34851)

(declare-fun minValue!907 () V!38875)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38875)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!685 (array!67580 array!67578 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38875 V!38875 V!38875 V!38875 (_ BitVec 32) Int) Unit!34851)

(assert (=> b!1063943 (= lt!468976 (lemmaNoChangeToArrayThenSameMapNoExtras!685 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3646 (array!67580 array!67578 (_ BitVec 32) (_ BitVec 32) V!38875 V!38875 (_ BitVec 32) Int) ListLongMap!14153)

(assert (=> b!1063943 (= lt!468977 (getCurrentListMapNoExtraKeys!3646 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063943 (= lt!468975 (getCurrentListMapNoExtraKeys!3646 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063944 () Bool)

(declare-fun res!710406 () Bool)

(assert (=> b!1063944 (=> (not res!710406) (not e!606348))))

(declare-datatypes ((List!22776 0))(
  ( (Nil!22773) (Cons!22772 (h!23981 (_ BitVec 64)) (t!32098 List!22776)) )
))
(declare-fun arrayNoDuplicates!0 (array!67580 (_ BitVec 32) List!22776) Bool)

(assert (=> b!1063944 (= res!710406 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22773))))

(declare-fun b!1063945 () Bool)

(declare-fun tp_is_empty!25305 () Bool)

(assert (=> b!1063945 (= e!606349 tp_is_empty!25305)))

(declare-fun mapIsEmpty!39637 () Bool)

(assert (=> mapIsEmpty!39637 mapRes!39637))

(declare-fun b!1063946 () Bool)

(declare-fun res!710407 () Bool)

(assert (=> b!1063946 (=> (not res!710407) (not e!606348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67580 (_ BitVec 32)) Bool)

(assert (=> b!1063946 (= res!710407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1063947 () Bool)

(assert (=> b!1063947 (= e!606347 tp_is_empty!25305)))

(declare-fun res!710408 () Bool)

(assert (=> start!94116 (=> (not res!710408) (not e!606348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94116 (= res!710408 (validMask!0 mask!1515))))

(assert (=> start!94116 e!606348))

(assert (=> start!94116 true))

(assert (=> start!94116 tp_is_empty!25305))

(declare-fun array_inv!24994 (array!67578) Bool)

(assert (=> start!94116 (and (array_inv!24994 _values!955) e!606350)))

(assert (=> start!94116 tp!75918))

(declare-fun array_inv!24995 (array!67580) Bool)

(assert (=> start!94116 (array_inv!24995 _keys!1163)))

(assert (= (and start!94116 res!710408) b!1063942))

(assert (= (and b!1063942 res!710409) b!1063946))

(assert (= (and b!1063946 res!710407) b!1063944))

(assert (= (and b!1063944 res!710406) b!1063943))

(assert (= (and b!1063941 condMapEmpty!39637) mapIsEmpty!39637))

(assert (= (and b!1063941 (not condMapEmpty!39637)) mapNonEmpty!39637))

(get-info :version)

(assert (= (and mapNonEmpty!39637 ((_ is ValueCellFull!11949) mapValue!39637)) b!1063945))

(assert (= (and b!1063941 ((_ is ValueCellFull!11949) mapDefault!39637)) b!1063947))

(assert (= start!94116 b!1063941))

(declare-fun m!982697 () Bool)

(assert (=> mapNonEmpty!39637 m!982697))

(declare-fun m!982699 () Bool)

(assert (=> b!1063946 m!982699))

(declare-fun m!982701 () Bool)

(assert (=> start!94116 m!982701))

(declare-fun m!982703 () Bool)

(assert (=> start!94116 m!982703))

(declare-fun m!982705 () Bool)

(assert (=> start!94116 m!982705))

(declare-fun m!982707 () Bool)

(assert (=> b!1063943 m!982707))

(declare-fun m!982709 () Bool)

(assert (=> b!1063943 m!982709))

(declare-fun m!982711 () Bool)

(assert (=> b!1063943 m!982711))

(declare-fun m!982713 () Bool)

(assert (=> b!1063944 m!982713))

(check-sat (not start!94116) (not b!1063944) (not mapNonEmpty!39637) (not b!1063943) tp_is_empty!25305 (not b!1063946) (not b_next!21495) b_and!34255)
(check-sat b_and!34255 (not b_next!21495))
