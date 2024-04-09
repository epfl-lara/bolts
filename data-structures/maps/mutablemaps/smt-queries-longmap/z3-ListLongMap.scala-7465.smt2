; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94752 () Bool)

(assert start!94752)

(declare-fun b_free!21969 () Bool)

(declare-fun b_next!21969 () Bool)

(assert (=> start!94752 (= b_free!21969 (not b_next!21969))))

(declare-fun tp!77367 () Bool)

(declare-fun b_and!34817 () Bool)

(assert (=> start!94752 (= tp!77367 b_and!34817)))

(declare-fun b!1070836 () Bool)

(declare-fun e!611382 () Bool)

(declare-fun e!611381 () Bool)

(declare-fun mapRes!40375 () Bool)

(assert (=> b!1070836 (= e!611382 (and e!611381 mapRes!40375))))

(declare-fun condMapEmpty!40375 () Bool)

(declare-datatypes ((V!39507 0))(
  ( (V!39508 (val!12940 Int)) )
))
(declare-datatypes ((ValueCell!12186 0))(
  ( (ValueCellFull!12186 (v!15557 V!39507)) (EmptyCell!12186) )
))
(declare-datatypes ((array!68494 0))(
  ( (array!68495 (arr!32939 (Array (_ BitVec 32) ValueCell!12186)) (size!33476 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68494)

(declare-fun mapDefault!40375 () ValueCell!12186)

(assert (=> b!1070836 (= condMapEmpty!40375 (= (arr!32939 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12186)) mapDefault!40375)))))

(declare-fun res!714435 () Bool)

(declare-fun e!611378 () Bool)

(assert (=> start!94752 (=> (not res!714435) (not e!611378))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94752 (= res!714435 (validMask!0 mask!1515))))

(assert (=> start!94752 e!611378))

(assert (=> start!94752 true))

(declare-fun tp_is_empty!25779 () Bool)

(assert (=> start!94752 tp_is_empty!25779))

(declare-fun array_inv!25326 (array!68494) Bool)

(assert (=> start!94752 (and (array_inv!25326 _values!955) e!611382)))

(assert (=> start!94752 tp!77367))

(declare-datatypes ((array!68496 0))(
  ( (array!68497 (arr!32940 (Array (_ BitVec 32) (_ BitVec 64))) (size!33477 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68496)

(declare-fun array_inv!25327 (array!68496) Bool)

(assert (=> start!94752 (array_inv!25327 _keys!1163)))

(declare-fun mapNonEmpty!40375 () Bool)

(declare-fun tp!77366 () Bool)

(declare-fun e!611379 () Bool)

(assert (=> mapNonEmpty!40375 (= mapRes!40375 (and tp!77366 e!611379))))

(declare-fun mapKey!40375 () (_ BitVec 32))

(declare-fun mapValue!40375 () ValueCell!12186)

(declare-fun mapRest!40375 () (Array (_ BitVec 32) ValueCell!12186))

(assert (=> mapNonEmpty!40375 (= (arr!32939 _values!955) (store mapRest!40375 mapKey!40375 mapValue!40375))))

(declare-fun b!1070837 () Bool)

(declare-fun res!714431 () Bool)

(assert (=> b!1070837 (=> (not res!714431) (not e!611378))))

(declare-datatypes ((List!23111 0))(
  ( (Nil!23108) (Cons!23107 (h!24316 (_ BitVec 64)) (t!32451 List!23111)) )
))
(declare-fun arrayNoDuplicates!0 (array!68496 (_ BitVec 32) List!23111) Bool)

(assert (=> b!1070837 (= res!714431 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23108))))

(declare-fun b!1070838 () Bool)

(declare-fun res!714433 () Bool)

(assert (=> b!1070838 (=> (not res!714433) (not e!611378))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1070838 (= res!714433 (and (= (size!33476 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33477 _keys!1163) (size!33476 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1070839 () Bool)

(declare-fun e!611383 () Bool)

(assert (=> b!1070839 (= e!611378 (not e!611383))))

(declare-fun res!714430 () Bool)

(assert (=> b!1070839 (=> res!714430 e!611383)))

(assert (=> b!1070839 (= res!714430 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16526 0))(
  ( (tuple2!16527 (_1!8273 (_ BitVec 64)) (_2!8273 V!39507)) )
))
(declare-datatypes ((List!23112 0))(
  ( (Nil!23109) (Cons!23108 (h!24317 tuple2!16526) (t!32452 List!23112)) )
))
(declare-datatypes ((ListLongMap!14507 0))(
  ( (ListLongMap!14508 (toList!7269 List!23112)) )
))
(declare-fun lt!473317 () ListLongMap!14507)

(declare-fun lt!473321 () ListLongMap!14507)

(assert (=> b!1070839 (= lt!473317 lt!473321)))

(declare-fun zeroValueBefore!47 () V!39507)

(declare-fun minValue!907 () V!39507)

(declare-datatypes ((Unit!35201 0))(
  ( (Unit!35202) )
))
(declare-fun lt!473318 () Unit!35201)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39507)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!843 (array!68496 array!68494 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39507 V!39507 V!39507 V!39507 (_ BitVec 32) Int) Unit!35201)

(assert (=> b!1070839 (= lt!473318 (lemmaNoChangeToArrayThenSameMapNoExtras!843 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3804 (array!68496 array!68494 (_ BitVec 32) (_ BitVec 32) V!39507 V!39507 (_ BitVec 32) Int) ListLongMap!14507)

(assert (=> b!1070839 (= lt!473321 (getCurrentListMapNoExtraKeys!3804 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070839 (= lt!473317 (getCurrentListMapNoExtraKeys!3804 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070840 () Bool)

(assert (=> b!1070840 (= e!611379 tp_is_empty!25779)))

(declare-fun b!1070841 () Bool)

(assert (=> b!1070841 (= e!611383 true)))

(declare-fun lt!473322 () Bool)

(declare-fun lt!473316 () tuple2!16526)

(declare-fun contains!6333 (ListLongMap!14507 (_ BitVec 64)) Bool)

(declare-fun +!3126 (ListLongMap!14507 tuple2!16526) ListLongMap!14507)

(assert (=> b!1070841 (= lt!473322 (contains!6333 (+!3126 lt!473317 lt!473316) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!611380 () Bool)

(assert (=> b!1070841 e!611380))

(declare-fun res!714434 () Bool)

(assert (=> b!1070841 (=> (not res!714434) (not e!611380))))

(declare-fun lt!473319 () ListLongMap!14507)

(assert (=> b!1070841 (= res!714434 (= lt!473319 (+!3126 (+!3126 lt!473317 (tuple2!16527 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) lt!473316)))))

(assert (=> b!1070841 (= lt!473316 (tuple2!16527 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!473320 () ListLongMap!14507)

(declare-fun getCurrentListMap!4135 (array!68496 array!68494 (_ BitVec 32) (_ BitVec 32) V!39507 V!39507 (_ BitVec 32) Int) ListLongMap!14507)

(assert (=> b!1070841 (= lt!473320 (getCurrentListMap!4135 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070841 (= lt!473319 (getCurrentListMap!4135 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070842 () Bool)

(assert (=> b!1070842 (= e!611380 (= lt!473320 (+!3126 lt!473321 lt!473316)))))

(declare-fun mapIsEmpty!40375 () Bool)

(assert (=> mapIsEmpty!40375 mapRes!40375))

(declare-fun b!1070843 () Bool)

(assert (=> b!1070843 (= e!611381 tp_is_empty!25779)))

(declare-fun b!1070844 () Bool)

(declare-fun res!714432 () Bool)

(assert (=> b!1070844 (=> (not res!714432) (not e!611378))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68496 (_ BitVec 32)) Bool)

(assert (=> b!1070844 (= res!714432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!94752 res!714435) b!1070838))

(assert (= (and b!1070838 res!714433) b!1070844))

(assert (= (and b!1070844 res!714432) b!1070837))

(assert (= (and b!1070837 res!714431) b!1070839))

(assert (= (and b!1070839 (not res!714430)) b!1070841))

(assert (= (and b!1070841 res!714434) b!1070842))

(assert (= (and b!1070836 condMapEmpty!40375) mapIsEmpty!40375))

(assert (= (and b!1070836 (not condMapEmpty!40375)) mapNonEmpty!40375))

(get-info :version)

(assert (= (and mapNonEmpty!40375 ((_ is ValueCellFull!12186) mapValue!40375)) b!1070840))

(assert (= (and b!1070836 ((_ is ValueCellFull!12186) mapDefault!40375)) b!1070843))

(assert (= start!94752 b!1070836))

(declare-fun m!989243 () Bool)

(assert (=> b!1070842 m!989243))

(declare-fun m!989245 () Bool)

(assert (=> b!1070844 m!989245))

(declare-fun m!989247 () Bool)

(assert (=> b!1070837 m!989247))

(declare-fun m!989249 () Bool)

(assert (=> start!94752 m!989249))

(declare-fun m!989251 () Bool)

(assert (=> start!94752 m!989251))

(declare-fun m!989253 () Bool)

(assert (=> start!94752 m!989253))

(declare-fun m!989255 () Bool)

(assert (=> b!1070841 m!989255))

(declare-fun m!989257 () Bool)

(assert (=> b!1070841 m!989257))

(assert (=> b!1070841 m!989255))

(declare-fun m!989259 () Bool)

(assert (=> b!1070841 m!989259))

(declare-fun m!989261 () Bool)

(assert (=> b!1070841 m!989261))

(assert (=> b!1070841 m!989259))

(declare-fun m!989263 () Bool)

(assert (=> b!1070841 m!989263))

(declare-fun m!989265 () Bool)

(assert (=> b!1070841 m!989265))

(declare-fun m!989267 () Bool)

(assert (=> b!1070839 m!989267))

(declare-fun m!989269 () Bool)

(assert (=> b!1070839 m!989269))

(declare-fun m!989271 () Bool)

(assert (=> b!1070839 m!989271))

(declare-fun m!989273 () Bool)

(assert (=> mapNonEmpty!40375 m!989273))

(check-sat b_and!34817 (not b!1070841) (not b_next!21969) (not b!1070842) (not mapNonEmpty!40375) (not b!1070839) (not b!1070837) (not b!1070844) tp_is_empty!25779 (not start!94752))
(check-sat b_and!34817 (not b_next!21969))
