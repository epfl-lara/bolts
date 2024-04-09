; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94956 () Bool)

(assert start!94956)

(declare-fun b_free!22125 () Bool)

(declare-fun b_next!22125 () Bool)

(assert (=> start!94956 (= b_free!22125 (not b_next!22125))))

(declare-fun tp!77840 () Bool)

(declare-fun b_and!34997 () Bool)

(assert (=> start!94956 (= tp!77840 b_and!34997)))

(declare-fun mapNonEmpty!40615 () Bool)

(declare-fun mapRes!40615 () Bool)

(declare-fun tp!77841 () Bool)

(declare-fun e!613144 () Bool)

(assert (=> mapNonEmpty!40615 (= mapRes!40615 (and tp!77841 e!613144))))

(declare-fun mapKey!40615 () (_ BitVec 32))

(declare-datatypes ((V!39715 0))(
  ( (V!39716 (val!13018 Int)) )
))
(declare-datatypes ((ValueCell!12264 0))(
  ( (ValueCellFull!12264 (v!15637 V!39715)) (EmptyCell!12264) )
))
(declare-datatypes ((array!68796 0))(
  ( (array!68797 (arr!33088 (Array (_ BitVec 32) ValueCell!12264)) (size!33625 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68796)

(declare-fun mapValue!40615 () ValueCell!12264)

(declare-fun mapRest!40615 () (Array (_ BitVec 32) ValueCell!12264))

(assert (=> mapNonEmpty!40615 (= (arr!33088 _values!955) (store mapRest!40615 mapKey!40615 mapValue!40615))))

(declare-fun b!1073208 () Bool)

(declare-fun res!715896 () Bool)

(declare-fun e!613145 () Bool)

(assert (=> b!1073208 (=> (not res!715896) (not e!613145))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68798 0))(
  ( (array!68799 (arr!33089 (Array (_ BitVec 32) (_ BitVec 64))) (size!33626 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68798)

(assert (=> b!1073208 (= res!715896 (and (= (size!33625 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33626 _keys!1163) (size!33625 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!715899 () Bool)

(assert (=> start!94956 (=> (not res!715899) (not e!613145))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94956 (= res!715899 (validMask!0 mask!1515))))

(assert (=> start!94956 e!613145))

(assert (=> start!94956 true))

(declare-fun tp_is_empty!25935 () Bool)

(assert (=> start!94956 tp_is_empty!25935))

(declare-fun e!613147 () Bool)

(declare-fun array_inv!25432 (array!68796) Bool)

(assert (=> start!94956 (and (array_inv!25432 _values!955) e!613147)))

(assert (=> start!94956 tp!77840))

(declare-fun array_inv!25433 (array!68798) Bool)

(assert (=> start!94956 (array_inv!25433 _keys!1163)))

(declare-fun b!1073209 () Bool)

(declare-fun e!613146 () Bool)

(assert (=> b!1073209 (= e!613147 (and e!613146 mapRes!40615))))

(declare-fun condMapEmpty!40615 () Bool)

(declare-fun mapDefault!40615 () ValueCell!12264)

(assert (=> b!1073209 (= condMapEmpty!40615 (= (arr!33088 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12264)) mapDefault!40615)))))

(declare-fun b!1073210 () Bool)

(assert (=> b!1073210 (= e!613145 false)))

(declare-datatypes ((tuple2!16644 0))(
  ( (tuple2!16645 (_1!8332 (_ BitVec 64)) (_2!8332 V!39715)) )
))
(declare-datatypes ((List!23223 0))(
  ( (Nil!23220) (Cons!23219 (h!24428 tuple2!16644) (t!32567 List!23223)) )
))
(declare-datatypes ((ListLongMap!14625 0))(
  ( (ListLongMap!14626 (toList!7328 List!23223)) )
))
(declare-fun lt!475972 () ListLongMap!14625)

(declare-fun minValue!907 () V!39715)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39715)

(declare-fun getCurrentListMapNoExtraKeys!3858 (array!68798 array!68796 (_ BitVec 32) (_ BitVec 32) V!39715 V!39715 (_ BitVec 32) Int) ListLongMap!14625)

(assert (=> b!1073210 (= lt!475972 (getCurrentListMapNoExtraKeys!3858 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!39715)

(declare-fun lt!475973 () ListLongMap!14625)

(assert (=> b!1073210 (= lt!475973 (getCurrentListMapNoExtraKeys!3858 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1073211 () Bool)

(declare-fun res!715897 () Bool)

(assert (=> b!1073211 (=> (not res!715897) (not e!613145))))

(declare-datatypes ((List!23224 0))(
  ( (Nil!23221) (Cons!23220 (h!24429 (_ BitVec 64)) (t!32568 List!23224)) )
))
(declare-fun arrayNoDuplicates!0 (array!68798 (_ BitVec 32) List!23224) Bool)

(assert (=> b!1073211 (= res!715897 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23221))))

(declare-fun mapIsEmpty!40615 () Bool)

(assert (=> mapIsEmpty!40615 mapRes!40615))

(declare-fun b!1073212 () Bool)

(assert (=> b!1073212 (= e!613146 tp_is_empty!25935)))

(declare-fun b!1073213 () Bool)

(assert (=> b!1073213 (= e!613144 tp_is_empty!25935)))

(declare-fun b!1073214 () Bool)

(declare-fun res!715898 () Bool)

(assert (=> b!1073214 (=> (not res!715898) (not e!613145))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68798 (_ BitVec 32)) Bool)

(assert (=> b!1073214 (= res!715898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!94956 res!715899) b!1073208))

(assert (= (and b!1073208 res!715896) b!1073214))

(assert (= (and b!1073214 res!715898) b!1073211))

(assert (= (and b!1073211 res!715897) b!1073210))

(assert (= (and b!1073209 condMapEmpty!40615) mapIsEmpty!40615))

(assert (= (and b!1073209 (not condMapEmpty!40615)) mapNonEmpty!40615))

(get-info :version)

(assert (= (and mapNonEmpty!40615 ((_ is ValueCellFull!12264) mapValue!40615)) b!1073213))

(assert (= (and b!1073209 ((_ is ValueCellFull!12264) mapDefault!40615)) b!1073212))

(assert (= start!94956 b!1073209))

(declare-fun m!992373 () Bool)

(assert (=> b!1073210 m!992373))

(declare-fun m!992375 () Bool)

(assert (=> b!1073210 m!992375))

(declare-fun m!992377 () Bool)

(assert (=> b!1073214 m!992377))

(declare-fun m!992379 () Bool)

(assert (=> start!94956 m!992379))

(declare-fun m!992381 () Bool)

(assert (=> start!94956 m!992381))

(declare-fun m!992383 () Bool)

(assert (=> start!94956 m!992383))

(declare-fun m!992385 () Bool)

(assert (=> mapNonEmpty!40615 m!992385))

(declare-fun m!992387 () Bool)

(assert (=> b!1073211 m!992387))

(check-sat (not b!1073214) (not mapNonEmpty!40615) (not start!94956) (not b_next!22125) tp_is_empty!25935 (not b!1073210) (not b!1073211) b_and!34997)
(check-sat b_and!34997 (not b_next!22125))
