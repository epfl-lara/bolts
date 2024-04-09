; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94544 () Bool)

(assert start!94544)

(declare-fun b_free!21813 () Bool)

(declare-fun b_next!21813 () Bool)

(assert (=> start!94544 (= b_free!21813 (not b_next!21813))))

(declare-fun tp!76890 () Bool)

(declare-fun b_and!34633 () Bool)

(assert (=> start!94544 (= tp!76890 b_and!34633)))

(declare-fun b!1068583 () Bool)

(declare-fun res!713119 () Bool)

(declare-fun e!609733 () Bool)

(assert (=> b!1068583 (=> (not res!713119) (not e!609733))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39299 0))(
  ( (V!39300 (val!12862 Int)) )
))
(declare-datatypes ((ValueCell!12108 0))(
  ( (ValueCellFull!12108 (v!15478 V!39299)) (EmptyCell!12108) )
))
(declare-datatypes ((array!68198 0))(
  ( (array!68199 (arr!32794 (Array (_ BitVec 32) ValueCell!12108)) (size!33331 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68198)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68200 0))(
  ( (array!68201 (arr!32795 (Array (_ BitVec 32) (_ BitVec 64))) (size!33332 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68200)

(assert (=> b!1068583 (= res!713119 (and (= (size!33331 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33332 _keys!1163) (size!33331 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1068584 () Bool)

(declare-fun e!609739 () Bool)

(assert (=> b!1068584 (= e!609739 true)))

(declare-datatypes ((tuple2!16410 0))(
  ( (tuple2!16411 (_1!8215 (_ BitVec 64)) (_2!8215 V!39299)) )
))
(declare-datatypes ((List!23001 0))(
  ( (Nil!22998) (Cons!22997 (h!24206 tuple2!16410) (t!32335 List!23001)) )
))
(declare-datatypes ((ListLongMap!14391 0))(
  ( (ListLongMap!14392 (toList!7211 List!23001)) )
))
(declare-fun lt!472112 () ListLongMap!14391)

(declare-fun -!648 (ListLongMap!14391 (_ BitVec 64)) ListLongMap!14391)

(assert (=> b!1068584 (= (-!648 lt!472112 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472112)))

(declare-datatypes ((Unit!35088 0))(
  ( (Unit!35089) )
))
(declare-fun lt!472109 () Unit!35088)

(declare-fun removeNotPresentStillSame!57 (ListLongMap!14391 (_ BitVec 64)) Unit!35088)

(assert (=> b!1068584 (= lt!472109 (removeNotPresentStillSame!57 lt!472112 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1068586 () Bool)

(declare-fun res!713122 () Bool)

(assert (=> b!1068586 (=> (not res!713122) (not e!609733))))

(declare-datatypes ((List!23002 0))(
  ( (Nil!22999) (Cons!22998 (h!24207 (_ BitVec 64)) (t!32336 List!23002)) )
))
(declare-fun arrayNoDuplicates!0 (array!68200 (_ BitVec 32) List!23002) Bool)

(assert (=> b!1068586 (= res!713122 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22999))))

(declare-fun b!1068587 () Bool)

(declare-fun e!609735 () Bool)

(assert (=> b!1068587 (= e!609733 (not e!609735))))

(declare-fun res!713120 () Bool)

(assert (=> b!1068587 (=> res!713120 e!609735)))

(assert (=> b!1068587 (= res!713120 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!472113 () ListLongMap!14391)

(declare-fun lt!472111 () ListLongMap!14391)

(assert (=> b!1068587 (= lt!472113 lt!472111)))

(declare-fun lt!472110 () Unit!35088)

(declare-fun zeroValueBefore!47 () V!39299)

(declare-fun minValue!907 () V!39299)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39299)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!792 (array!68200 array!68198 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39299 V!39299 V!39299 V!39299 (_ BitVec 32) Int) Unit!35088)

(assert (=> b!1068587 (= lt!472110 (lemmaNoChangeToArrayThenSameMapNoExtras!792 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3753 (array!68200 array!68198 (_ BitVec 32) (_ BitVec 32) V!39299 V!39299 (_ BitVec 32) Int) ListLongMap!14391)

(assert (=> b!1068587 (= lt!472111 (getCurrentListMapNoExtraKeys!3753 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1068587 (= lt!472113 (getCurrentListMapNoExtraKeys!3753 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068588 () Bool)

(declare-fun e!609737 () Bool)

(declare-fun tp_is_empty!25623 () Bool)

(assert (=> b!1068588 (= e!609737 tp_is_empty!25623)))

(declare-fun b!1068589 () Bool)

(declare-fun e!609738 () Bool)

(declare-fun mapRes!40132 () Bool)

(assert (=> b!1068589 (= e!609738 (and e!609737 mapRes!40132))))

(declare-fun condMapEmpty!40132 () Bool)

(declare-fun mapDefault!40132 () ValueCell!12108)

(assert (=> b!1068589 (= condMapEmpty!40132 (= (arr!32794 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12108)) mapDefault!40132)))))

(declare-fun mapIsEmpty!40132 () Bool)

(assert (=> mapIsEmpty!40132 mapRes!40132))

(declare-fun b!1068590 () Bool)

(assert (=> b!1068590 (= e!609735 e!609739)))

(declare-fun res!713121 () Bool)

(assert (=> b!1068590 (=> res!713121 e!609739)))

(declare-fun contains!6314 (ListLongMap!14391 (_ BitVec 64)) Bool)

(assert (=> b!1068590 (= res!713121 (contains!6314 lt!472112 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4103 (array!68200 array!68198 (_ BitVec 32) (_ BitVec 32) V!39299 V!39299 (_ BitVec 32) Int) ListLongMap!14391)

(assert (=> b!1068590 (= lt!472112 (getCurrentListMap!4103 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!713124 () Bool)

(assert (=> start!94544 (=> (not res!713124) (not e!609733))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94544 (= res!713124 (validMask!0 mask!1515))))

(assert (=> start!94544 e!609733))

(assert (=> start!94544 true))

(assert (=> start!94544 tp_is_empty!25623))

(declare-fun array_inv!25226 (array!68198) Bool)

(assert (=> start!94544 (and (array_inv!25226 _values!955) e!609738)))

(assert (=> start!94544 tp!76890))

(declare-fun array_inv!25227 (array!68200) Bool)

(assert (=> start!94544 (array_inv!25227 _keys!1163)))

(declare-fun b!1068585 () Bool)

(declare-fun e!609734 () Bool)

(assert (=> b!1068585 (= e!609734 tp_is_empty!25623)))

(declare-fun b!1068591 () Bool)

(declare-fun res!713123 () Bool)

(assert (=> b!1068591 (=> (not res!713123) (not e!609733))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68200 (_ BitVec 32)) Bool)

(assert (=> b!1068591 (= res!713123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40132 () Bool)

(declare-fun tp!76889 () Bool)

(assert (=> mapNonEmpty!40132 (= mapRes!40132 (and tp!76889 e!609734))))

(declare-fun mapRest!40132 () (Array (_ BitVec 32) ValueCell!12108))

(declare-fun mapValue!40132 () ValueCell!12108)

(declare-fun mapKey!40132 () (_ BitVec 32))

(assert (=> mapNonEmpty!40132 (= (arr!32794 _values!955) (store mapRest!40132 mapKey!40132 mapValue!40132))))

(assert (= (and start!94544 res!713124) b!1068583))

(assert (= (and b!1068583 res!713119) b!1068591))

(assert (= (and b!1068591 res!713123) b!1068586))

(assert (= (and b!1068586 res!713122) b!1068587))

(assert (= (and b!1068587 (not res!713120)) b!1068590))

(assert (= (and b!1068590 (not res!713121)) b!1068584))

(assert (= (and b!1068589 condMapEmpty!40132) mapIsEmpty!40132))

(assert (= (and b!1068589 (not condMapEmpty!40132)) mapNonEmpty!40132))

(get-info :version)

(assert (= (and mapNonEmpty!40132 ((_ is ValueCellFull!12108) mapValue!40132)) b!1068585))

(assert (= (and b!1068589 ((_ is ValueCellFull!12108) mapDefault!40132)) b!1068588))

(assert (= start!94544 b!1068589))

(declare-fun m!987283 () Bool)

(assert (=> b!1068587 m!987283))

(declare-fun m!987285 () Bool)

(assert (=> b!1068587 m!987285))

(declare-fun m!987287 () Bool)

(assert (=> b!1068587 m!987287))

(declare-fun m!987289 () Bool)

(assert (=> b!1068591 m!987289))

(declare-fun m!987291 () Bool)

(assert (=> b!1068586 m!987291))

(declare-fun m!987293 () Bool)

(assert (=> b!1068590 m!987293))

(declare-fun m!987295 () Bool)

(assert (=> b!1068590 m!987295))

(declare-fun m!987297 () Bool)

(assert (=> b!1068584 m!987297))

(declare-fun m!987299 () Bool)

(assert (=> b!1068584 m!987299))

(declare-fun m!987301 () Bool)

(assert (=> start!94544 m!987301))

(declare-fun m!987303 () Bool)

(assert (=> start!94544 m!987303))

(declare-fun m!987305 () Bool)

(assert (=> start!94544 m!987305))

(declare-fun m!987307 () Bool)

(assert (=> mapNonEmpty!40132 m!987307))

(check-sat b_and!34633 (not b!1068587) (not b!1068584) tp_is_empty!25623 (not b!1068590) (not b_next!21813) (not b!1068591) (not start!94544) (not b!1068586) (not mapNonEmpty!40132))
(check-sat b_and!34633 (not b_next!21813))
