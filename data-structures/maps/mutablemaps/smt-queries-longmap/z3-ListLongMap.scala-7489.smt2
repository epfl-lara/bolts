; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94944 () Bool)

(assert start!94944)

(declare-fun b_free!22113 () Bool)

(declare-fun b_next!22113 () Bool)

(assert (=> start!94944 (= b_free!22113 (not b_next!22113))))

(declare-fun tp!77804 () Bool)

(declare-fun b_and!34985 () Bool)

(assert (=> start!94944 (= tp!77804 b_and!34985)))

(declare-fun b!1073082 () Bool)

(declare-fun res!715824 () Bool)

(declare-fun e!613053 () Bool)

(assert (=> b!1073082 (=> (not res!715824) (not e!613053))))

(declare-datatypes ((array!68774 0))(
  ( (array!68775 (arr!33077 (Array (_ BitVec 32) (_ BitVec 64))) (size!33614 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68774)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68774 (_ BitVec 32)) Bool)

(assert (=> b!1073082 (= res!715824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1073083 () Bool)

(declare-fun res!715827 () Bool)

(assert (=> b!1073083 (=> (not res!715827) (not e!613053))))

(declare-datatypes ((List!23215 0))(
  ( (Nil!23212) (Cons!23211 (h!24420 (_ BitVec 64)) (t!32559 List!23215)) )
))
(declare-fun arrayNoDuplicates!0 (array!68774 (_ BitVec 32) List!23215) Bool)

(assert (=> b!1073083 (= res!715827 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23212))))

(declare-fun b!1073084 () Bool)

(assert (=> b!1073084 (= e!613053 false)))

(declare-datatypes ((V!39699 0))(
  ( (V!39700 (val!13012 Int)) )
))
(declare-datatypes ((ValueCell!12258 0))(
  ( (ValueCellFull!12258 (v!15631 V!39699)) (EmptyCell!12258) )
))
(declare-datatypes ((array!68776 0))(
  ( (array!68777 (arr!33078 (Array (_ BitVec 32) ValueCell!12258)) (size!33615 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68776)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39699)

(declare-fun minValue!907 () V!39699)

(declare-datatypes ((tuple2!16636 0))(
  ( (tuple2!16637 (_1!8328 (_ BitVec 64)) (_2!8328 V!39699)) )
))
(declare-datatypes ((List!23216 0))(
  ( (Nil!23213) (Cons!23212 (h!24421 tuple2!16636) (t!32560 List!23216)) )
))
(declare-datatypes ((ListLongMap!14617 0))(
  ( (ListLongMap!14618 (toList!7324 List!23216)) )
))
(declare-fun lt!475937 () ListLongMap!14617)

(declare-fun getCurrentListMapNoExtraKeys!3854 (array!68774 array!68776 (_ BitVec 32) (_ BitVec 32) V!39699 V!39699 (_ BitVec 32) Int) ListLongMap!14617)

(assert (=> b!1073084 (= lt!475937 (getCurrentListMapNoExtraKeys!3854 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!39699)

(declare-fun lt!475936 () ListLongMap!14617)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1073084 (= lt!475936 (getCurrentListMapNoExtraKeys!3854 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1073085 () Bool)

(declare-fun e!613055 () Bool)

(declare-fun e!613056 () Bool)

(declare-fun mapRes!40597 () Bool)

(assert (=> b!1073085 (= e!613055 (and e!613056 mapRes!40597))))

(declare-fun condMapEmpty!40597 () Bool)

(declare-fun mapDefault!40597 () ValueCell!12258)

(assert (=> b!1073085 (= condMapEmpty!40597 (= (arr!33078 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12258)) mapDefault!40597)))))

(declare-fun b!1073086 () Bool)

(declare-fun tp_is_empty!25923 () Bool)

(assert (=> b!1073086 (= e!613056 tp_is_empty!25923)))

(declare-fun b!1073087 () Bool)

(declare-fun e!613054 () Bool)

(assert (=> b!1073087 (= e!613054 tp_is_empty!25923)))

(declare-fun res!715825 () Bool)

(assert (=> start!94944 (=> (not res!715825) (not e!613053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94944 (= res!715825 (validMask!0 mask!1515))))

(assert (=> start!94944 e!613053))

(assert (=> start!94944 true))

(assert (=> start!94944 tp_is_empty!25923))

(declare-fun array_inv!25424 (array!68776) Bool)

(assert (=> start!94944 (and (array_inv!25424 _values!955) e!613055)))

(assert (=> start!94944 tp!77804))

(declare-fun array_inv!25425 (array!68774) Bool)

(assert (=> start!94944 (array_inv!25425 _keys!1163)))

(declare-fun mapNonEmpty!40597 () Bool)

(declare-fun tp!77805 () Bool)

(assert (=> mapNonEmpty!40597 (= mapRes!40597 (and tp!77805 e!613054))))

(declare-fun mapRest!40597 () (Array (_ BitVec 32) ValueCell!12258))

(declare-fun mapKey!40597 () (_ BitVec 32))

(declare-fun mapValue!40597 () ValueCell!12258)

(assert (=> mapNonEmpty!40597 (= (arr!33078 _values!955) (store mapRest!40597 mapKey!40597 mapValue!40597))))

(declare-fun b!1073088 () Bool)

(declare-fun res!715826 () Bool)

(assert (=> b!1073088 (=> (not res!715826) (not e!613053))))

(assert (=> b!1073088 (= res!715826 (and (= (size!33615 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33614 _keys!1163) (size!33615 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!40597 () Bool)

(assert (=> mapIsEmpty!40597 mapRes!40597))

(assert (= (and start!94944 res!715825) b!1073088))

(assert (= (and b!1073088 res!715826) b!1073082))

(assert (= (and b!1073082 res!715824) b!1073083))

(assert (= (and b!1073083 res!715827) b!1073084))

(assert (= (and b!1073085 condMapEmpty!40597) mapIsEmpty!40597))

(assert (= (and b!1073085 (not condMapEmpty!40597)) mapNonEmpty!40597))

(get-info :version)

(assert (= (and mapNonEmpty!40597 ((_ is ValueCellFull!12258) mapValue!40597)) b!1073087))

(assert (= (and b!1073085 ((_ is ValueCellFull!12258) mapDefault!40597)) b!1073086))

(assert (= start!94944 b!1073085))

(declare-fun m!992277 () Bool)

(assert (=> b!1073084 m!992277))

(declare-fun m!992279 () Bool)

(assert (=> b!1073084 m!992279))

(declare-fun m!992281 () Bool)

(assert (=> b!1073083 m!992281))

(declare-fun m!992283 () Bool)

(assert (=> mapNonEmpty!40597 m!992283))

(declare-fun m!992285 () Bool)

(assert (=> start!94944 m!992285))

(declare-fun m!992287 () Bool)

(assert (=> start!94944 m!992287))

(declare-fun m!992289 () Bool)

(assert (=> start!94944 m!992289))

(declare-fun m!992291 () Bool)

(assert (=> b!1073082 m!992291))

(check-sat (not b_next!22113) (not mapNonEmpty!40597) b_and!34985 tp_is_empty!25923 (not b!1073083) (not b!1073084) (not b!1073082) (not start!94944))
(check-sat b_and!34985 (not b_next!22113))
