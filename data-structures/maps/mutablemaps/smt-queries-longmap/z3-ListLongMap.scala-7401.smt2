; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94236 () Bool)

(assert start!94236)

(declare-fun b_free!21585 () Bool)

(declare-fun b_next!21585 () Bool)

(assert (=> start!94236 (= b_free!21585 (not b_next!21585))))

(declare-fun tp!76193 () Bool)

(declare-fun b_and!34363 () Bool)

(assert (=> start!94236 (= tp!76193 b_and!34363)))

(declare-fun res!711143 () Bool)

(declare-fun e!607277 () Bool)

(assert (=> start!94236 (=> (not res!711143) (not e!607277))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94236 (= res!711143 (validMask!0 mask!1515))))

(assert (=> start!94236 e!607277))

(assert (=> start!94236 true))

(declare-fun tp_is_empty!25395 () Bool)

(assert (=> start!94236 tp_is_empty!25395))

(declare-datatypes ((V!38995 0))(
  ( (V!38996 (val!12748 Int)) )
))
(declare-datatypes ((ValueCell!11994 0))(
  ( (ValueCellFull!11994 (v!15361 V!38995)) (EmptyCell!11994) )
))
(declare-datatypes ((array!67750 0))(
  ( (array!67751 (arr!32574 (Array (_ BitVec 32) ValueCell!11994)) (size!33111 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67750)

(declare-fun e!607279 () Bool)

(declare-fun array_inv!25060 (array!67750) Bool)

(assert (=> start!94236 (and (array_inv!25060 _values!955) e!607279)))

(assert (=> start!94236 tp!76193))

(declare-datatypes ((array!67752 0))(
  ( (array!67753 (arr!32575 (Array (_ BitVec 32) (_ BitVec 64))) (size!33112 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67752)

(declare-fun array_inv!25061 (array!67752) Bool)

(assert (=> start!94236 (array_inv!25061 _keys!1163)))

(declare-fun b!1065223 () Bool)

(declare-fun res!711141 () Bool)

(assert (=> b!1065223 (=> (not res!711141) (not e!607277))))

(declare-datatypes ((List!22834 0))(
  ( (Nil!22831) (Cons!22830 (h!24039 (_ BitVec 64)) (t!32160 List!22834)) )
))
(declare-fun arrayNoDuplicates!0 (array!67752 (_ BitVec 32) List!22834) Bool)

(assert (=> b!1065223 (= res!711141 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22831))))

(declare-fun b!1065224 () Bool)

(declare-fun e!607275 () Bool)

(assert (=> b!1065224 (= e!607277 (not e!607275))))

(declare-fun res!711140 () Bool)

(assert (=> b!1065224 (=> res!711140 e!607275)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065224 (= res!711140 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16234 0))(
  ( (tuple2!16235 (_1!8127 (_ BitVec 64)) (_2!8127 V!38995)) )
))
(declare-datatypes ((List!22835 0))(
  ( (Nil!22832) (Cons!22831 (h!24040 tuple2!16234) (t!32161 List!22835)) )
))
(declare-datatypes ((ListLongMap!14215 0))(
  ( (ListLongMap!14216 (toList!7123 List!22835)) )
))
(declare-fun lt!469663 () ListLongMap!14215)

(declare-fun lt!469665 () ListLongMap!14215)

(assert (=> b!1065224 (= lt!469663 lt!469665)))

(declare-fun zeroValueBefore!47 () V!38995)

(declare-fun minValue!907 () V!38995)

(declare-datatypes ((Unit!34908 0))(
  ( (Unit!34909) )
))
(declare-fun lt!469660 () Unit!34908)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38995)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!713 (array!67752 array!67750 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38995 V!38995 V!38995 V!38995 (_ BitVec 32) Int) Unit!34908)

(assert (=> b!1065224 (= lt!469660 (lemmaNoChangeToArrayThenSameMapNoExtras!713 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3674 (array!67752 array!67750 (_ BitVec 32) (_ BitVec 32) V!38995 V!38995 (_ BitVec 32) Int) ListLongMap!14215)

(assert (=> b!1065224 (= lt!469665 (getCurrentListMapNoExtraKeys!3674 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065224 (= lt!469663 (getCurrentListMapNoExtraKeys!3674 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39778 () Bool)

(declare-fun mapRes!39778 () Bool)

(assert (=> mapIsEmpty!39778 mapRes!39778))

(declare-fun b!1065225 () Bool)

(declare-fun e!607278 () Bool)

(assert (=> b!1065225 (= e!607278 tp_is_empty!25395)))

(declare-fun b!1065226 () Bool)

(declare-fun e!607274 () Bool)

(assert (=> b!1065226 (= e!607274 tp_is_empty!25395)))

(declare-fun b!1065227 () Bool)

(assert (=> b!1065227 (= e!607279 (and e!607278 mapRes!39778))))

(declare-fun condMapEmpty!39778 () Bool)

(declare-fun mapDefault!39778 () ValueCell!11994)

(assert (=> b!1065227 (= condMapEmpty!39778 (= (arr!32574 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11994)) mapDefault!39778)))))

(declare-fun b!1065228 () Bool)

(assert (=> b!1065228 (= e!607275 true)))

(declare-fun lt!469664 () ListLongMap!14215)

(declare-fun lt!469659 () ListLongMap!14215)

(declare-fun -!592 (ListLongMap!14215 (_ BitVec 64)) ListLongMap!14215)

(assert (=> b!1065228 (= lt!469664 (-!592 lt!469659 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!469661 () ListLongMap!14215)

(assert (=> b!1065228 (= (-!592 lt!469661 #b0000000000000000000000000000000000000000000000000000000000000000) lt!469663)))

(declare-fun lt!469662 () Unit!34908)

(declare-fun addThenRemoveForNewKeyIsSame!1 (ListLongMap!14215 (_ BitVec 64) V!38995) Unit!34908)

(assert (=> b!1065228 (= lt!469662 (addThenRemoveForNewKeyIsSame!1 lt!469663 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!469666 () ListLongMap!14215)

(assert (=> b!1065228 (and (= lt!469659 lt!469661) (= lt!469666 lt!469665))))

(declare-fun +!3083 (ListLongMap!14215 tuple2!16234) ListLongMap!14215)

(assert (=> b!1065228 (= lt!469661 (+!3083 lt!469663 (tuple2!16235 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun getCurrentListMap!4046 (array!67752 array!67750 (_ BitVec 32) (_ BitVec 32) V!38995 V!38995 (_ BitVec 32) Int) ListLongMap!14215)

(assert (=> b!1065228 (= lt!469666 (getCurrentListMap!4046 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065228 (= lt!469659 (getCurrentListMap!4046 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065229 () Bool)

(declare-fun res!711142 () Bool)

(assert (=> b!1065229 (=> (not res!711142) (not e!607277))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67752 (_ BitVec 32)) Bool)

(assert (=> b!1065229 (= res!711142 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1065230 () Bool)

(declare-fun res!711139 () Bool)

(assert (=> b!1065230 (=> (not res!711139) (not e!607277))))

(assert (=> b!1065230 (= res!711139 (and (= (size!33111 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33112 _keys!1163) (size!33111 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39778 () Bool)

(declare-fun tp!76194 () Bool)

(assert (=> mapNonEmpty!39778 (= mapRes!39778 (and tp!76194 e!607274))))

(declare-fun mapRest!39778 () (Array (_ BitVec 32) ValueCell!11994))

(declare-fun mapKey!39778 () (_ BitVec 32))

(declare-fun mapValue!39778 () ValueCell!11994)

(assert (=> mapNonEmpty!39778 (= (arr!32574 _values!955) (store mapRest!39778 mapKey!39778 mapValue!39778))))

(assert (= (and start!94236 res!711143) b!1065230))

(assert (= (and b!1065230 res!711139) b!1065229))

(assert (= (and b!1065229 res!711142) b!1065223))

(assert (= (and b!1065223 res!711141) b!1065224))

(assert (= (and b!1065224 (not res!711140)) b!1065228))

(assert (= (and b!1065227 condMapEmpty!39778) mapIsEmpty!39778))

(assert (= (and b!1065227 (not condMapEmpty!39778)) mapNonEmpty!39778))

(get-info :version)

(assert (= (and mapNonEmpty!39778 ((_ is ValueCellFull!11994) mapValue!39778)) b!1065226))

(assert (= (and b!1065227 ((_ is ValueCellFull!11994) mapDefault!39778)) b!1065225))

(assert (= start!94236 b!1065227))

(declare-fun m!983775 () Bool)

(assert (=> b!1065229 m!983775))

(declare-fun m!983777 () Bool)

(assert (=> start!94236 m!983777))

(declare-fun m!983779 () Bool)

(assert (=> start!94236 m!983779))

(declare-fun m!983781 () Bool)

(assert (=> start!94236 m!983781))

(declare-fun m!983783 () Bool)

(assert (=> b!1065228 m!983783))

(declare-fun m!983785 () Bool)

(assert (=> b!1065228 m!983785))

(declare-fun m!983787 () Bool)

(assert (=> b!1065228 m!983787))

(declare-fun m!983789 () Bool)

(assert (=> b!1065228 m!983789))

(declare-fun m!983791 () Bool)

(assert (=> b!1065228 m!983791))

(declare-fun m!983793 () Bool)

(assert (=> b!1065228 m!983793))

(declare-fun m!983795 () Bool)

(assert (=> mapNonEmpty!39778 m!983795))

(declare-fun m!983797 () Bool)

(assert (=> b!1065224 m!983797))

(declare-fun m!983799 () Bool)

(assert (=> b!1065224 m!983799))

(declare-fun m!983801 () Bool)

(assert (=> b!1065224 m!983801))

(declare-fun m!983803 () Bool)

(assert (=> b!1065223 m!983803))

(check-sat (not mapNonEmpty!39778) (not b_next!21585) (not b!1065229) tp_is_empty!25395 b_and!34363 (not b!1065228) (not b!1065223) (not b!1065224) (not start!94236))
(check-sat b_and!34363 (not b_next!21585))
