; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94962 () Bool)

(assert start!94962)

(declare-fun b_free!22131 () Bool)

(declare-fun b_next!22131 () Bool)

(assert (=> start!94962 (= b_free!22131 (not b_next!22131))))

(declare-fun tp!77858 () Bool)

(declare-fun b_and!35003 () Bool)

(assert (=> start!94962 (= tp!77858 b_and!35003)))

(declare-fun b!1073271 () Bool)

(declare-fun e!613192 () Bool)

(declare-fun tp_is_empty!25941 () Bool)

(assert (=> b!1073271 (= e!613192 tp_is_empty!25941)))

(declare-fun b!1073272 () Bool)

(declare-fun res!715934 () Bool)

(declare-fun e!613190 () Bool)

(assert (=> b!1073272 (=> (not res!715934) (not e!613190))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39723 0))(
  ( (V!39724 (val!13021 Int)) )
))
(declare-datatypes ((ValueCell!12267 0))(
  ( (ValueCellFull!12267 (v!15640 V!39723)) (EmptyCell!12267) )
))
(declare-datatypes ((array!68808 0))(
  ( (array!68809 (arr!33094 (Array (_ BitVec 32) ValueCell!12267)) (size!33631 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68808)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68810 0))(
  ( (array!68811 (arr!33095 (Array (_ BitVec 32) (_ BitVec 64))) (size!33632 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68810)

(assert (=> b!1073272 (= res!715934 (and (= (size!33631 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33632 _keys!1163) (size!33631 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1073273 () Bool)

(declare-fun res!715932 () Bool)

(assert (=> b!1073273 (=> (not res!715932) (not e!613190))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68810 (_ BitVec 32)) Bool)

(assert (=> b!1073273 (= res!715932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1073274 () Bool)

(declare-fun res!715933 () Bool)

(assert (=> b!1073274 (=> (not res!715933) (not e!613190))))

(declare-datatypes ((List!23228 0))(
  ( (Nil!23225) (Cons!23224 (h!24433 (_ BitVec 64)) (t!32572 List!23228)) )
))
(declare-fun arrayNoDuplicates!0 (array!68810 (_ BitVec 32) List!23228) Bool)

(assert (=> b!1073274 (= res!715933 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23225))))

(declare-fun res!715935 () Bool)

(assert (=> start!94962 (=> (not res!715935) (not e!613190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94962 (= res!715935 (validMask!0 mask!1515))))

(assert (=> start!94962 e!613190))

(assert (=> start!94962 true))

(assert (=> start!94962 tp_is_empty!25941))

(declare-fun e!613188 () Bool)

(declare-fun array_inv!25436 (array!68808) Bool)

(assert (=> start!94962 (and (array_inv!25436 _values!955) e!613188)))

(assert (=> start!94962 tp!77858))

(declare-fun array_inv!25437 (array!68810) Bool)

(assert (=> start!94962 (array_inv!25437 _keys!1163)))

(declare-fun b!1073275 () Bool)

(declare-fun mapRes!40624 () Bool)

(assert (=> b!1073275 (= e!613188 (and e!613192 mapRes!40624))))

(declare-fun condMapEmpty!40624 () Bool)

(declare-fun mapDefault!40624 () ValueCell!12267)

(assert (=> b!1073275 (= condMapEmpty!40624 (= (arr!33094 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12267)) mapDefault!40624)))))

(declare-fun mapIsEmpty!40624 () Bool)

(assert (=> mapIsEmpty!40624 mapRes!40624))

(declare-fun b!1073276 () Bool)

(assert (=> b!1073276 (= e!613190 false)))

(declare-fun minValue!907 () V!39723)

(declare-datatypes ((tuple2!16650 0))(
  ( (tuple2!16651 (_1!8335 (_ BitVec 64)) (_2!8335 V!39723)) )
))
(declare-datatypes ((List!23229 0))(
  ( (Nil!23226) (Cons!23225 (h!24434 tuple2!16650) (t!32573 List!23229)) )
))
(declare-datatypes ((ListLongMap!14631 0))(
  ( (ListLongMap!14632 (toList!7331 List!23229)) )
))
(declare-fun lt!475990 () ListLongMap!14631)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39723)

(declare-fun getCurrentListMapNoExtraKeys!3861 (array!68810 array!68808 (_ BitVec 32) (_ BitVec 32) V!39723 V!39723 (_ BitVec 32) Int) ListLongMap!14631)

(assert (=> b!1073276 (= lt!475990 (getCurrentListMapNoExtraKeys!3861 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!39723)

(declare-fun lt!475991 () ListLongMap!14631)

(assert (=> b!1073276 (= lt!475991 (getCurrentListMapNoExtraKeys!3861 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40624 () Bool)

(declare-fun tp!77859 () Bool)

(declare-fun e!613191 () Bool)

(assert (=> mapNonEmpty!40624 (= mapRes!40624 (and tp!77859 e!613191))))

(declare-fun mapKey!40624 () (_ BitVec 32))

(declare-fun mapValue!40624 () ValueCell!12267)

(declare-fun mapRest!40624 () (Array (_ BitVec 32) ValueCell!12267))

(assert (=> mapNonEmpty!40624 (= (arr!33094 _values!955) (store mapRest!40624 mapKey!40624 mapValue!40624))))

(declare-fun b!1073277 () Bool)

(assert (=> b!1073277 (= e!613191 tp_is_empty!25941)))

(assert (= (and start!94962 res!715935) b!1073272))

(assert (= (and b!1073272 res!715934) b!1073273))

(assert (= (and b!1073273 res!715932) b!1073274))

(assert (= (and b!1073274 res!715933) b!1073276))

(assert (= (and b!1073275 condMapEmpty!40624) mapIsEmpty!40624))

(assert (= (and b!1073275 (not condMapEmpty!40624)) mapNonEmpty!40624))

(get-info :version)

(assert (= (and mapNonEmpty!40624 ((_ is ValueCellFull!12267) mapValue!40624)) b!1073277))

(assert (= (and b!1073275 ((_ is ValueCellFull!12267) mapDefault!40624)) b!1073271))

(assert (= start!94962 b!1073275))

(declare-fun m!992421 () Bool)

(assert (=> b!1073273 m!992421))

(declare-fun m!992423 () Bool)

(assert (=> mapNonEmpty!40624 m!992423))

(declare-fun m!992425 () Bool)

(assert (=> start!94962 m!992425))

(declare-fun m!992427 () Bool)

(assert (=> start!94962 m!992427))

(declare-fun m!992429 () Bool)

(assert (=> start!94962 m!992429))

(declare-fun m!992431 () Bool)

(assert (=> b!1073276 m!992431))

(declare-fun m!992433 () Bool)

(assert (=> b!1073276 m!992433))

(declare-fun m!992435 () Bool)

(assert (=> b!1073274 m!992435))

(check-sat tp_is_empty!25941 b_and!35003 (not mapNonEmpty!40624) (not start!94962) (not b!1073273) (not b!1073276) (not b_next!22131) (not b!1073274))
(check-sat b_and!35003 (not b_next!22131))
