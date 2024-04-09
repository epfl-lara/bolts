; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94336 () Bool)

(assert start!94336)

(declare-fun b_free!21663 () Bool)

(declare-fun b_next!21663 () Bool)

(assert (=> start!94336 (= b_free!21663 (not b_next!21663))))

(declare-fun tp!76430 () Bool)

(declare-fun b_and!34453 () Bool)

(assert (=> start!94336 (= tp!76430 b_and!34453)))

(declare-fun b!1066343 () Bool)

(declare-fun e!608097 () Bool)

(declare-fun e!608100 () Bool)

(declare-fun mapRes!39898 () Bool)

(assert (=> b!1066343 (= e!608097 (and e!608100 mapRes!39898))))

(declare-fun condMapEmpty!39898 () Bool)

(declare-datatypes ((V!39099 0))(
  ( (V!39100 (val!12787 Int)) )
))
(declare-datatypes ((ValueCell!12033 0))(
  ( (ValueCellFull!12033 (v!15401 V!39099)) (EmptyCell!12033) )
))
(declare-datatypes ((array!67904 0))(
  ( (array!67905 (arr!32650 (Array (_ BitVec 32) ValueCell!12033)) (size!33187 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67904)

(declare-fun mapDefault!39898 () ValueCell!12033)

(assert (=> b!1066343 (= condMapEmpty!39898 (= (arr!32650 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12033)) mapDefault!39898)))))

(declare-fun b!1066344 () Bool)

(declare-fun res!711806 () Bool)

(declare-fun e!608096 () Bool)

(assert (=> b!1066344 (=> (not res!711806) (not e!608096))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67906 0))(
  ( (array!67907 (arr!32651 (Array (_ BitVec 32) (_ BitVec 64))) (size!33188 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67906)

(assert (=> b!1066344 (= res!711806 (and (= (size!33187 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33188 _keys!1163) (size!33187 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1066345 () Bool)

(declare-fun res!711808 () Bool)

(assert (=> b!1066345 (=> (not res!711808) (not e!608096))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67906 (_ BitVec 32)) Bool)

(assert (=> b!1066345 (= res!711808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1066346 () Bool)

(declare-fun e!608095 () Bool)

(assert (=> b!1066346 (= e!608096 (not e!608095))))

(declare-fun res!711807 () Bool)

(assert (=> b!1066346 (=> res!711807 e!608095)))

(assert (=> b!1066346 (= res!711807 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16304 0))(
  ( (tuple2!16305 (_1!8162 (_ BitVec 64)) (_2!8162 V!39099)) )
))
(declare-datatypes ((List!22898 0))(
  ( (Nil!22895) (Cons!22894 (h!24103 tuple2!16304) (t!32226 List!22898)) )
))
(declare-datatypes ((ListLongMap!14285 0))(
  ( (ListLongMap!14286 (toList!7158 List!22898)) )
))
(declare-fun lt!470733 () ListLongMap!14285)

(declare-fun lt!470737 () ListLongMap!14285)

(assert (=> b!1066346 (= lt!470733 lt!470737)))

(declare-fun zeroValueBefore!47 () V!39099)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39099)

(declare-fun minValue!907 () V!39099)

(declare-datatypes ((Unit!34980 0))(
  ( (Unit!34981) )
))
(declare-fun lt!470738 () Unit!34980)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!744 (array!67906 array!67904 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39099 V!39099 V!39099 V!39099 (_ BitVec 32) Int) Unit!34980)

(assert (=> b!1066346 (= lt!470738 (lemmaNoChangeToArrayThenSameMapNoExtras!744 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3705 (array!67906 array!67904 (_ BitVec 32) (_ BitVec 32) V!39099 V!39099 (_ BitVec 32) Int) ListLongMap!14285)

(assert (=> b!1066346 (= lt!470737 (getCurrentListMapNoExtraKeys!3705 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066346 (= lt!470733 (getCurrentListMapNoExtraKeys!3705 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066347 () Bool)

(declare-fun e!608098 () Bool)

(declare-fun tp_is_empty!25473 () Bool)

(assert (=> b!1066347 (= e!608098 tp_is_empty!25473)))

(declare-fun b!1066348 () Bool)

(assert (=> b!1066348 (= e!608095 true)))

(declare-fun lt!470740 () ListLongMap!14285)

(declare-fun lt!470735 () ListLongMap!14285)

(declare-fun -!617 (ListLongMap!14285 (_ BitVec 64)) ListLongMap!14285)

(assert (=> b!1066348 (= lt!470740 (-!617 lt!470735 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470739 () ListLongMap!14285)

(assert (=> b!1066348 (= (-!617 lt!470739 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470733)))

(declare-fun lt!470736 () Unit!34980)

(declare-fun addThenRemoveForNewKeyIsSame!26 (ListLongMap!14285 (_ BitVec 64) V!39099) Unit!34980)

(assert (=> b!1066348 (= lt!470736 (addThenRemoveForNewKeyIsSame!26 lt!470733 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470734 () ListLongMap!14285)

(assert (=> b!1066348 (and (= lt!470735 lt!470739) (= lt!470734 lt!470737))))

(declare-fun +!3108 (ListLongMap!14285 tuple2!16304) ListLongMap!14285)

(assert (=> b!1066348 (= lt!470739 (+!3108 lt!470733 (tuple2!16305 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun getCurrentListMap!4071 (array!67906 array!67904 (_ BitVec 32) (_ BitVec 32) V!39099 V!39099 (_ BitVec 32) Int) ListLongMap!14285)

(assert (=> b!1066348 (= lt!470734 (getCurrentListMap!4071 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066348 (= lt!470735 (getCurrentListMap!4071 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066349 () Bool)

(declare-fun res!711809 () Bool)

(assert (=> b!1066349 (=> (not res!711809) (not e!608096))))

(declare-datatypes ((List!22899 0))(
  ( (Nil!22896) (Cons!22895 (h!24104 (_ BitVec 64)) (t!32227 List!22899)) )
))
(declare-fun arrayNoDuplicates!0 (array!67906 (_ BitVec 32) List!22899) Bool)

(assert (=> b!1066349 (= res!711809 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22896))))

(declare-fun b!1066350 () Bool)

(assert (=> b!1066350 (= e!608100 tp_is_empty!25473)))

(declare-fun mapNonEmpty!39898 () Bool)

(declare-fun tp!76431 () Bool)

(assert (=> mapNonEmpty!39898 (= mapRes!39898 (and tp!76431 e!608098))))

(declare-fun mapValue!39898 () ValueCell!12033)

(declare-fun mapRest!39898 () (Array (_ BitVec 32) ValueCell!12033))

(declare-fun mapKey!39898 () (_ BitVec 32))

(assert (=> mapNonEmpty!39898 (= (arr!32650 _values!955) (store mapRest!39898 mapKey!39898 mapValue!39898))))

(declare-fun mapIsEmpty!39898 () Bool)

(assert (=> mapIsEmpty!39898 mapRes!39898))

(declare-fun res!711810 () Bool)

(assert (=> start!94336 (=> (not res!711810) (not e!608096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94336 (= res!711810 (validMask!0 mask!1515))))

(assert (=> start!94336 e!608096))

(assert (=> start!94336 true))

(assert (=> start!94336 tp_is_empty!25473))

(declare-fun array_inv!25116 (array!67904) Bool)

(assert (=> start!94336 (and (array_inv!25116 _values!955) e!608097)))

(assert (=> start!94336 tp!76430))

(declare-fun array_inv!25117 (array!67906) Bool)

(assert (=> start!94336 (array_inv!25117 _keys!1163)))

(assert (= (and start!94336 res!711810) b!1066344))

(assert (= (and b!1066344 res!711806) b!1066345))

(assert (= (and b!1066345 res!711808) b!1066349))

(assert (= (and b!1066349 res!711809) b!1066346))

(assert (= (and b!1066346 (not res!711807)) b!1066348))

(assert (= (and b!1066343 condMapEmpty!39898) mapIsEmpty!39898))

(assert (= (and b!1066343 (not condMapEmpty!39898)) mapNonEmpty!39898))

(get-info :version)

(assert (= (and mapNonEmpty!39898 ((_ is ValueCellFull!12033) mapValue!39898)) b!1066347))

(assert (= (and b!1066343 ((_ is ValueCellFull!12033) mapDefault!39898)) b!1066350))

(assert (= start!94336 b!1066343))

(declare-fun m!985129 () Bool)

(assert (=> b!1066345 m!985129))

(declare-fun m!985131 () Bool)

(assert (=> b!1066348 m!985131))

(declare-fun m!985133 () Bool)

(assert (=> b!1066348 m!985133))

(declare-fun m!985135 () Bool)

(assert (=> b!1066348 m!985135))

(declare-fun m!985137 () Bool)

(assert (=> b!1066348 m!985137))

(declare-fun m!985139 () Bool)

(assert (=> b!1066348 m!985139))

(declare-fun m!985141 () Bool)

(assert (=> b!1066348 m!985141))

(declare-fun m!985143 () Bool)

(assert (=> b!1066349 m!985143))

(declare-fun m!985145 () Bool)

(assert (=> start!94336 m!985145))

(declare-fun m!985147 () Bool)

(assert (=> start!94336 m!985147))

(declare-fun m!985149 () Bool)

(assert (=> start!94336 m!985149))

(declare-fun m!985151 () Bool)

(assert (=> b!1066346 m!985151))

(declare-fun m!985153 () Bool)

(assert (=> b!1066346 m!985153))

(declare-fun m!985155 () Bool)

(assert (=> b!1066346 m!985155))

(declare-fun m!985157 () Bool)

(assert (=> mapNonEmpty!39898 m!985157))

(check-sat (not b!1066349) (not start!94336) (not mapNonEmpty!39898) tp_is_empty!25473 (not b!1066345) (not b!1066346) b_and!34453 (not b!1066348) (not b_next!21663))
(check-sat b_and!34453 (not b_next!21663))
