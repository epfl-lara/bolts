; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94492 () Bool)

(assert start!94492)

(declare-fun b_free!21783 () Bool)

(declare-fun b_next!21783 () Bool)

(assert (=> start!94492 (= b_free!21783 (not b_next!21783))))

(declare-fun tp!76797 () Bool)

(declare-fun b_and!34593 () Bool)

(assert (=> start!94492 (= tp!76797 b_and!34593)))

(declare-fun b!1068021 () Bool)

(declare-fun e!609320 () Bool)

(declare-fun tp_is_empty!25593 () Bool)

(assert (=> b!1068021 (= e!609320 tp_is_empty!25593)))

(declare-fun b!1068022 () Bool)

(declare-fun e!609323 () Bool)

(assert (=> b!1068022 (= e!609323 tp_is_empty!25593)))

(declare-fun b!1068023 () Bool)

(declare-fun e!609321 () Bool)

(assert (=> b!1068023 (= e!609321 true)))

(declare-datatypes ((V!39259 0))(
  ( (V!39260 (val!12847 Int)) )
))
(declare-datatypes ((tuple2!16390 0))(
  ( (tuple2!16391 (_1!8205 (_ BitVec 64)) (_2!8205 V!39259)) )
))
(declare-datatypes ((List!22981 0))(
  ( (Nil!22978) (Cons!22977 (h!24186 tuple2!16390) (t!32313 List!22981)) )
))
(declare-datatypes ((ListLongMap!14371 0))(
  ( (ListLongMap!14372 (toList!7201 List!22981)) )
))
(declare-fun lt!471763 () ListLongMap!14371)

(declare-fun -!640 (ListLongMap!14371 (_ BitVec 64)) ListLongMap!14371)

(assert (=> b!1068023 (= (-!640 lt!471763 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471763)))

(declare-datatypes ((Unit!35068 0))(
  ( (Unit!35069) )
))
(declare-fun lt!471762 () Unit!35068)

(declare-fun removeNotPresentStillSame!49 (ListLongMap!14371 (_ BitVec 64)) Unit!35068)

(assert (=> b!1068023 (= lt!471762 (removeNotPresentStillSame!49 lt!471763 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1068024 () Bool)

(declare-fun res!712793 () Bool)

(declare-fun e!609319 () Bool)

(assert (=> b!1068024 (=> (not res!712793) (not e!609319))))

(declare-datatypes ((array!68140 0))(
  ( (array!68141 (arr!32766 (Array (_ BitVec 32) (_ BitVec 64))) (size!33303 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68140)

(declare-datatypes ((List!22982 0))(
  ( (Nil!22979) (Cons!22978 (h!24187 (_ BitVec 64)) (t!32314 List!22982)) )
))
(declare-fun arrayNoDuplicates!0 (array!68140 (_ BitVec 32) List!22982) Bool)

(assert (=> b!1068024 (= res!712793 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22979))))

(declare-fun b!1068025 () Bool)

(declare-fun e!609318 () Bool)

(assert (=> b!1068025 (= e!609318 e!609321)))

(declare-fun res!712788 () Bool)

(assert (=> b!1068025 (=> res!712788 e!609321)))

(declare-fun contains!6304 (ListLongMap!14371 (_ BitVec 64)) Bool)

(assert (=> b!1068025 (= res!712788 (contains!6304 lt!471763 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39259)

(declare-datatypes ((ValueCell!12093 0))(
  ( (ValueCellFull!12093 (v!15462 V!39259)) (EmptyCell!12093) )
))
(declare-datatypes ((array!68142 0))(
  ( (array!68143 (arr!32767 (Array (_ BitVec 32) ValueCell!12093)) (size!33304 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68142)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39259)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4094 (array!68140 array!68142 (_ BitVec 32) (_ BitVec 32) V!39259 V!39259 (_ BitVec 32) Int) ListLongMap!14371)

(assert (=> b!1068025 (= lt!471763 (getCurrentListMap!4094 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40084 () Bool)

(declare-fun mapRes!40084 () Bool)

(declare-fun tp!76796 () Bool)

(assert (=> mapNonEmpty!40084 (= mapRes!40084 (and tp!76796 e!609323))))

(declare-fun mapRest!40084 () (Array (_ BitVec 32) ValueCell!12093))

(declare-fun mapValue!40084 () ValueCell!12093)

(declare-fun mapKey!40084 () (_ BitVec 32))

(assert (=> mapNonEmpty!40084 (= (arr!32767 _values!955) (store mapRest!40084 mapKey!40084 mapValue!40084))))

(declare-fun b!1068026 () Bool)

(declare-fun e!609322 () Bool)

(assert (=> b!1068026 (= e!609322 (and e!609320 mapRes!40084))))

(declare-fun condMapEmpty!40084 () Bool)

(declare-fun mapDefault!40084 () ValueCell!12093)

(assert (=> b!1068026 (= condMapEmpty!40084 (= (arr!32767 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12093)) mapDefault!40084)))))

(declare-fun res!712792 () Bool)

(assert (=> start!94492 (=> (not res!712792) (not e!609319))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94492 (= res!712792 (validMask!0 mask!1515))))

(assert (=> start!94492 e!609319))

(assert (=> start!94492 true))

(assert (=> start!94492 tp_is_empty!25593))

(declare-fun array_inv!25202 (array!68142) Bool)

(assert (=> start!94492 (and (array_inv!25202 _values!955) e!609322)))

(assert (=> start!94492 tp!76797))

(declare-fun array_inv!25203 (array!68140) Bool)

(assert (=> start!94492 (array_inv!25203 _keys!1163)))

(declare-fun b!1068027 () Bool)

(declare-fun res!712789 () Bool)

(assert (=> b!1068027 (=> (not res!712789) (not e!609319))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68140 (_ BitVec 32)) Bool)

(assert (=> b!1068027 (= res!712789 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1068028 () Bool)

(assert (=> b!1068028 (= e!609319 (not e!609318))))

(declare-fun res!712790 () Bool)

(assert (=> b!1068028 (=> res!712790 e!609318)))

(assert (=> b!1068028 (= res!712790 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!471760 () ListLongMap!14371)

(declare-fun lt!471761 () ListLongMap!14371)

(assert (=> b!1068028 (= lt!471760 lt!471761)))

(declare-fun lt!471764 () Unit!35068)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!39259)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!785 (array!68140 array!68142 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39259 V!39259 V!39259 V!39259 (_ BitVec 32) Int) Unit!35068)

(assert (=> b!1068028 (= lt!471764 (lemmaNoChangeToArrayThenSameMapNoExtras!785 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3746 (array!68140 array!68142 (_ BitVec 32) (_ BitVec 32) V!39259 V!39259 (_ BitVec 32) Int) ListLongMap!14371)

(assert (=> b!1068028 (= lt!471761 (getCurrentListMapNoExtraKeys!3746 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1068028 (= lt!471760 (getCurrentListMapNoExtraKeys!3746 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40084 () Bool)

(assert (=> mapIsEmpty!40084 mapRes!40084))

(declare-fun b!1068029 () Bool)

(declare-fun res!712791 () Bool)

(assert (=> b!1068029 (=> (not res!712791) (not e!609319))))

(assert (=> b!1068029 (= res!712791 (and (= (size!33304 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33303 _keys!1163) (size!33304 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!94492 res!712792) b!1068029))

(assert (= (and b!1068029 res!712791) b!1068027))

(assert (= (and b!1068027 res!712789) b!1068024))

(assert (= (and b!1068024 res!712793) b!1068028))

(assert (= (and b!1068028 (not res!712790)) b!1068025))

(assert (= (and b!1068025 (not res!712788)) b!1068023))

(assert (= (and b!1068026 condMapEmpty!40084) mapIsEmpty!40084))

(assert (= (and b!1068026 (not condMapEmpty!40084)) mapNonEmpty!40084))

(get-info :version)

(assert (= (and mapNonEmpty!40084 ((_ is ValueCellFull!12093) mapValue!40084)) b!1068022))

(assert (= (and b!1068026 ((_ is ValueCellFull!12093) mapDefault!40084)) b!1068021))

(assert (= start!94492 b!1068026))

(declare-fun m!986767 () Bool)

(assert (=> b!1068023 m!986767))

(declare-fun m!986769 () Bool)

(assert (=> b!1068023 m!986769))

(declare-fun m!986771 () Bool)

(assert (=> b!1068025 m!986771))

(declare-fun m!986773 () Bool)

(assert (=> b!1068025 m!986773))

(declare-fun m!986775 () Bool)

(assert (=> b!1068028 m!986775))

(declare-fun m!986777 () Bool)

(assert (=> b!1068028 m!986777))

(declare-fun m!986779 () Bool)

(assert (=> b!1068028 m!986779))

(declare-fun m!986781 () Bool)

(assert (=> b!1068027 m!986781))

(declare-fun m!986783 () Bool)

(assert (=> mapNonEmpty!40084 m!986783))

(declare-fun m!986785 () Bool)

(assert (=> start!94492 m!986785))

(declare-fun m!986787 () Bool)

(assert (=> start!94492 m!986787))

(declare-fun m!986789 () Bool)

(assert (=> start!94492 m!986789))

(declare-fun m!986791 () Bool)

(assert (=> b!1068024 m!986791))

(check-sat (not b!1068028) tp_is_empty!25593 (not b_next!21783) (not b!1068024) (not b!1068023) b_and!34593 (not b!1068025) (not mapNonEmpty!40084) (not b!1068027) (not start!94492))
(check-sat b_and!34593 (not b_next!21783))
