; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94474 () Bool)

(assert start!94474)

(declare-fun b_free!21765 () Bool)

(declare-fun b_next!21765 () Bool)

(assert (=> start!94474 (= b_free!21765 (not b_next!21765))))

(declare-fun tp!76743 () Bool)

(declare-fun b_and!34575 () Bool)

(assert (=> start!94474 (= tp!76743 b_and!34575)))

(declare-fun b!1067778 () Bool)

(declare-fun e!609130 () Bool)

(declare-fun e!609132 () Bool)

(assert (=> b!1067778 (= e!609130 (not e!609132))))

(declare-fun res!712630 () Bool)

(assert (=> b!1067778 (=> res!712630 e!609132)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1067778 (= res!712630 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!39235 0))(
  ( (V!39236 (val!12838 Int)) )
))
(declare-datatypes ((tuple2!16376 0))(
  ( (tuple2!16377 (_1!8198 (_ BitVec 64)) (_2!8198 V!39235)) )
))
(declare-datatypes ((List!22966 0))(
  ( (Nil!22963) (Cons!22962 (h!24171 tuple2!16376) (t!32298 List!22966)) )
))
(declare-datatypes ((ListLongMap!14357 0))(
  ( (ListLongMap!14358 (toList!7194 List!22966)) )
))
(declare-fun lt!471629 () ListLongMap!14357)

(declare-fun lt!471628 () ListLongMap!14357)

(assert (=> b!1067778 (= lt!471629 lt!471628)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39235)

(declare-datatypes ((Unit!35054 0))(
  ( (Unit!35055) )
))
(declare-fun lt!471626 () Unit!35054)

(declare-datatypes ((ValueCell!12084 0))(
  ( (ValueCellFull!12084 (v!15453 V!39235)) (EmptyCell!12084) )
))
(declare-datatypes ((array!68104 0))(
  ( (array!68105 (arr!32748 (Array (_ BitVec 32) ValueCell!12084)) (size!33285 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68104)

(declare-fun minValue!907 () V!39235)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39235)

(declare-datatypes ((array!68106 0))(
  ( (array!68107 (arr!32749 (Array (_ BitVec 32) (_ BitVec 64))) (size!33286 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68106)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!778 (array!68106 array!68104 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39235 V!39235 V!39235 V!39235 (_ BitVec 32) Int) Unit!35054)

(assert (=> b!1067778 (= lt!471626 (lemmaNoChangeToArrayThenSameMapNoExtras!778 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3739 (array!68106 array!68104 (_ BitVec 32) (_ BitVec 32) V!39235 V!39235 (_ BitVec 32) Int) ListLongMap!14357)

(assert (=> b!1067778 (= lt!471628 (getCurrentListMapNoExtraKeys!3739 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067778 (= lt!471629 (getCurrentListMapNoExtraKeys!3739 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40057 () Bool)

(declare-fun mapRes!40057 () Bool)

(assert (=> mapIsEmpty!40057 mapRes!40057))

(declare-fun b!1067779 () Bool)

(declare-fun e!609133 () Bool)

(declare-fun tp_is_empty!25575 () Bool)

(assert (=> b!1067779 (= e!609133 tp_is_empty!25575)))

(declare-fun b!1067780 () Bool)

(declare-fun e!609135 () Bool)

(assert (=> b!1067780 (= e!609132 e!609135)))

(declare-fun res!712631 () Bool)

(assert (=> b!1067780 (=> res!712631 e!609135)))

(declare-fun lt!471627 () ListLongMap!14357)

(declare-fun contains!6300 (ListLongMap!14357 (_ BitVec 64)) Bool)

(assert (=> b!1067780 (= res!712631 (contains!6300 lt!471627 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4090 (array!68106 array!68104 (_ BitVec 32) (_ BitVec 32) V!39235 V!39235 (_ BitVec 32) Int) ListLongMap!14357)

(assert (=> b!1067780 (= lt!471627 (getCurrentListMap!4090 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40057 () Bool)

(declare-fun tp!76742 () Bool)

(declare-fun e!609131 () Bool)

(assert (=> mapNonEmpty!40057 (= mapRes!40057 (and tp!76742 e!609131))))

(declare-fun mapKey!40057 () (_ BitVec 32))

(declare-fun mapRest!40057 () (Array (_ BitVec 32) ValueCell!12084))

(declare-fun mapValue!40057 () ValueCell!12084)

(assert (=> mapNonEmpty!40057 (= (arr!32748 _values!955) (store mapRest!40057 mapKey!40057 mapValue!40057))))

(declare-fun b!1067781 () Bool)

(declare-fun e!609129 () Bool)

(assert (=> b!1067781 (= e!609129 (and e!609133 mapRes!40057))))

(declare-fun condMapEmpty!40057 () Bool)

(declare-fun mapDefault!40057 () ValueCell!12084)

(assert (=> b!1067781 (= condMapEmpty!40057 (= (arr!32748 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12084)) mapDefault!40057)))))

(declare-fun b!1067782 () Bool)

(declare-fun res!712626 () Bool)

(assert (=> b!1067782 (=> (not res!712626) (not e!609130))))

(declare-datatypes ((List!22967 0))(
  ( (Nil!22964) (Cons!22963 (h!24172 (_ BitVec 64)) (t!32299 List!22967)) )
))
(declare-fun arrayNoDuplicates!0 (array!68106 (_ BitVec 32) List!22967) Bool)

(assert (=> b!1067782 (= res!712626 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22964))))

(declare-fun b!1067783 () Bool)

(declare-fun res!712629 () Bool)

(assert (=> b!1067783 (=> (not res!712629) (not e!609130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68106 (_ BitVec 32)) Bool)

(assert (=> b!1067783 (= res!712629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067784 () Bool)

(assert (=> b!1067784 (= e!609135 true)))

(declare-fun -!635 (ListLongMap!14357 (_ BitVec 64)) ListLongMap!14357)

(assert (=> b!1067784 (= (-!635 lt!471627 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471627)))

(declare-fun lt!471625 () Unit!35054)

(declare-fun removeNotPresentStillSame!44 (ListLongMap!14357 (_ BitVec 64)) Unit!35054)

(assert (=> b!1067784 (= lt!471625 (removeNotPresentStillSame!44 lt!471627 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!712627 () Bool)

(assert (=> start!94474 (=> (not res!712627) (not e!609130))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94474 (= res!712627 (validMask!0 mask!1515))))

(assert (=> start!94474 e!609130))

(assert (=> start!94474 true))

(assert (=> start!94474 tp_is_empty!25575))

(declare-fun array_inv!25186 (array!68104) Bool)

(assert (=> start!94474 (and (array_inv!25186 _values!955) e!609129)))

(assert (=> start!94474 tp!76743))

(declare-fun array_inv!25187 (array!68106) Bool)

(assert (=> start!94474 (array_inv!25187 _keys!1163)))

(declare-fun b!1067785 () Bool)

(declare-fun res!712628 () Bool)

(assert (=> b!1067785 (=> (not res!712628) (not e!609130))))

(assert (=> b!1067785 (= res!712628 (and (= (size!33285 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33286 _keys!1163) (size!33285 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067786 () Bool)

(assert (=> b!1067786 (= e!609131 tp_is_empty!25575)))

(assert (= (and start!94474 res!712627) b!1067785))

(assert (= (and b!1067785 res!712628) b!1067783))

(assert (= (and b!1067783 res!712629) b!1067782))

(assert (= (and b!1067782 res!712626) b!1067778))

(assert (= (and b!1067778 (not res!712630)) b!1067780))

(assert (= (and b!1067780 (not res!712631)) b!1067784))

(assert (= (and b!1067781 condMapEmpty!40057) mapIsEmpty!40057))

(assert (= (and b!1067781 (not condMapEmpty!40057)) mapNonEmpty!40057))

(get-info :version)

(assert (= (and mapNonEmpty!40057 ((_ is ValueCellFull!12084) mapValue!40057)) b!1067786))

(assert (= (and b!1067781 ((_ is ValueCellFull!12084) mapDefault!40057)) b!1067779))

(assert (= start!94474 b!1067781))

(declare-fun m!986533 () Bool)

(assert (=> b!1067783 m!986533))

(declare-fun m!986535 () Bool)

(assert (=> start!94474 m!986535))

(declare-fun m!986537 () Bool)

(assert (=> start!94474 m!986537))

(declare-fun m!986539 () Bool)

(assert (=> start!94474 m!986539))

(declare-fun m!986541 () Bool)

(assert (=> b!1067784 m!986541))

(declare-fun m!986543 () Bool)

(assert (=> b!1067784 m!986543))

(declare-fun m!986545 () Bool)

(assert (=> b!1067782 m!986545))

(declare-fun m!986547 () Bool)

(assert (=> mapNonEmpty!40057 m!986547))

(declare-fun m!986549 () Bool)

(assert (=> b!1067780 m!986549))

(declare-fun m!986551 () Bool)

(assert (=> b!1067780 m!986551))

(declare-fun m!986553 () Bool)

(assert (=> b!1067778 m!986553))

(declare-fun m!986555 () Bool)

(assert (=> b!1067778 m!986555))

(declare-fun m!986557 () Bool)

(assert (=> b!1067778 m!986557))

(check-sat (not b!1067782) (not b!1067784) tp_is_empty!25575 (not b_next!21765) (not b!1067778) (not mapNonEmpty!40057) b_and!34575 (not b!1067780) (not start!94474) (not b!1067783))
(check-sat b_and!34575 (not b_next!21765))
