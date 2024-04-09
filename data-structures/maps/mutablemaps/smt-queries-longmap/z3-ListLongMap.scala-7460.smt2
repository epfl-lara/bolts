; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94706 () Bool)

(assert start!94706)

(declare-fun b_free!21939 () Bool)

(declare-fun b_next!21939 () Bool)

(assert (=> start!94706 (= b_free!21939 (not b_next!21939))))

(declare-fun tp!77274 () Bool)

(declare-fun b_and!34777 () Bool)

(assert (=> start!94706 (= tp!77274 b_and!34777)))

(declare-fun b!1070323 () Bool)

(declare-fun e!611009 () Bool)

(declare-fun e!611011 () Bool)

(declare-fun mapRes!40327 () Bool)

(assert (=> b!1070323 (= e!611009 (and e!611011 mapRes!40327))))

(declare-fun condMapEmpty!40327 () Bool)

(declare-datatypes ((V!39467 0))(
  ( (V!39468 (val!12925 Int)) )
))
(declare-datatypes ((ValueCell!12171 0))(
  ( (ValueCellFull!12171 (v!15542 V!39467)) (EmptyCell!12171) )
))
(declare-datatypes ((array!68442 0))(
  ( (array!68443 (arr!32914 (Array (_ BitVec 32) ValueCell!12171)) (size!33451 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68442)

(declare-fun mapDefault!40327 () ValueCell!12171)

(assert (=> b!1070323 (= condMapEmpty!40327 (= (arr!32914 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12171)) mapDefault!40327)))))

(declare-fun mapNonEmpty!40327 () Bool)

(declare-fun tp!77273 () Bool)

(declare-fun e!611008 () Bool)

(assert (=> mapNonEmpty!40327 (= mapRes!40327 (and tp!77273 e!611008))))

(declare-fun mapRest!40327 () (Array (_ BitVec 32) ValueCell!12171))

(declare-fun mapValue!40327 () ValueCell!12171)

(declare-fun mapKey!40327 () (_ BitVec 32))

(assert (=> mapNonEmpty!40327 (= (arr!32914 _values!955) (store mapRest!40327 mapKey!40327 mapValue!40327))))

(declare-fun mapIsEmpty!40327 () Bool)

(assert (=> mapIsEmpty!40327 mapRes!40327))

(declare-fun res!714145 () Bool)

(declare-fun e!611012 () Bool)

(assert (=> start!94706 (=> (not res!714145) (not e!611012))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94706 (= res!714145 (validMask!0 mask!1515))))

(assert (=> start!94706 e!611012))

(assert (=> start!94706 true))

(declare-fun tp_is_empty!25749 () Bool)

(assert (=> start!94706 tp_is_empty!25749))

(declare-fun array_inv!25310 (array!68442) Bool)

(assert (=> start!94706 (and (array_inv!25310 _values!955) e!611009)))

(assert (=> start!94706 tp!77274))

(declare-datatypes ((array!68444 0))(
  ( (array!68445 (arr!32915 (Array (_ BitVec 32) (_ BitVec 64))) (size!33452 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68444)

(declare-fun array_inv!25311 (array!68444) Bool)

(assert (=> start!94706 (array_inv!25311 _keys!1163)))

(declare-fun b!1070324 () Bool)

(declare-fun res!714144 () Bool)

(assert (=> b!1070324 (=> (not res!714144) (not e!611012))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68444 (_ BitVec 32)) Bool)

(assert (=> b!1070324 (= res!714144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1070325 () Bool)

(assert (=> b!1070325 (= e!611008 tp_is_empty!25749)))

(declare-fun b!1070326 () Bool)

(declare-fun e!611010 () Bool)

(assert (=> b!1070326 (= e!611012 (not e!611010))))

(declare-fun res!714143 () Bool)

(assert (=> b!1070326 (=> res!714143 e!611010)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1070326 (= res!714143 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16506 0))(
  ( (tuple2!16507 (_1!8263 (_ BitVec 64)) (_2!8263 V!39467)) )
))
(declare-datatypes ((List!23092 0))(
  ( (Nil!23089) (Cons!23088 (h!24297 tuple2!16506) (t!32430 List!23092)) )
))
(declare-datatypes ((ListLongMap!14487 0))(
  ( (ListLongMap!14488 (toList!7259 List!23092)) )
))
(declare-fun lt!473018 () ListLongMap!14487)

(declare-fun lt!473016 () ListLongMap!14487)

(assert (=> b!1070326 (= lt!473018 lt!473016)))

(declare-fun zeroValueBefore!47 () V!39467)

(declare-datatypes ((Unit!35182 0))(
  ( (Unit!35183) )
))
(declare-fun lt!473015 () Unit!35182)

(declare-fun minValue!907 () V!39467)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39467)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!834 (array!68444 array!68442 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39467 V!39467 V!39467 V!39467 (_ BitVec 32) Int) Unit!35182)

(assert (=> b!1070326 (= lt!473015 (lemmaNoChangeToArrayThenSameMapNoExtras!834 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3795 (array!68444 array!68442 (_ BitVec 32) (_ BitVec 32) V!39467 V!39467 (_ BitVec 32) Int) ListLongMap!14487)

(assert (=> b!1070326 (= lt!473016 (getCurrentListMapNoExtraKeys!3795 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070326 (= lt!473018 (getCurrentListMapNoExtraKeys!3795 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070327 () Bool)

(assert (=> b!1070327 (= e!611011 tp_is_empty!25749)))

(declare-fun b!1070328 () Bool)

(assert (=> b!1070328 (= e!611010 true)))

(declare-fun lt!473017 () ListLongMap!14487)

(declare-fun getCurrentListMap!4125 (array!68444 array!68442 (_ BitVec 32) (_ BitVec 32) V!39467 V!39467 (_ BitVec 32) Int) ListLongMap!14487)

(assert (=> b!1070328 (= lt!473017 (getCurrentListMap!4125 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070329 () Bool)

(declare-fun res!714142 () Bool)

(assert (=> b!1070329 (=> (not res!714142) (not e!611012))))

(assert (=> b!1070329 (= res!714142 (and (= (size!33451 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33452 _keys!1163) (size!33451 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1070330 () Bool)

(declare-fun res!714146 () Bool)

(assert (=> b!1070330 (=> (not res!714146) (not e!611012))))

(declare-datatypes ((List!23093 0))(
  ( (Nil!23090) (Cons!23089 (h!24298 (_ BitVec 64)) (t!32431 List!23093)) )
))
(declare-fun arrayNoDuplicates!0 (array!68444 (_ BitVec 32) List!23093) Bool)

(assert (=> b!1070330 (= res!714146 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23090))))

(assert (= (and start!94706 res!714145) b!1070329))

(assert (= (and b!1070329 res!714142) b!1070324))

(assert (= (and b!1070324 res!714144) b!1070330))

(assert (= (and b!1070330 res!714146) b!1070326))

(assert (= (and b!1070326 (not res!714143)) b!1070328))

(assert (= (and b!1070323 condMapEmpty!40327) mapIsEmpty!40327))

(assert (= (and b!1070323 (not condMapEmpty!40327)) mapNonEmpty!40327))

(get-info :version)

(assert (= (and mapNonEmpty!40327 ((_ is ValueCellFull!12171) mapValue!40327)) b!1070325))

(assert (= (and b!1070323 ((_ is ValueCellFull!12171) mapDefault!40327)) b!1070327))

(assert (= start!94706 b!1070323))

(declare-fun m!988819 () Bool)

(assert (=> b!1070326 m!988819))

(declare-fun m!988821 () Bool)

(assert (=> b!1070326 m!988821))

(declare-fun m!988823 () Bool)

(assert (=> b!1070326 m!988823))

(declare-fun m!988825 () Bool)

(assert (=> b!1070330 m!988825))

(declare-fun m!988827 () Bool)

(assert (=> b!1070328 m!988827))

(declare-fun m!988829 () Bool)

(assert (=> mapNonEmpty!40327 m!988829))

(declare-fun m!988831 () Bool)

(assert (=> b!1070324 m!988831))

(declare-fun m!988833 () Bool)

(assert (=> start!94706 m!988833))

(declare-fun m!988835 () Bool)

(assert (=> start!94706 m!988835))

(declare-fun m!988837 () Bool)

(assert (=> start!94706 m!988837))

(check-sat (not b_next!21939) (not mapNonEmpty!40327) (not b!1070324) (not b!1070328) (not b!1070330) b_and!34777 (not start!94706) tp_is_empty!25749 (not b!1070326))
(check-sat b_and!34777 (not b_next!21939))
