; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95268 () Bool)

(assert start!95268)

(declare-fun b_free!22233 () Bool)

(declare-fun b_next!22233 () Bool)

(assert (=> start!95268 (= b_free!22233 (not b_next!22233))))

(declare-fun tp!78197 () Bool)

(declare-fun b_and!35229 () Bool)

(assert (=> start!95268 (= tp!78197 b_and!35229)))

(declare-fun b!1076368 () Bool)

(declare-fun e!615308 () Bool)

(declare-fun tp_is_empty!26043 () Bool)

(assert (=> b!1076368 (= e!615308 tp_is_empty!26043)))

(declare-fun mapIsEmpty!40810 () Bool)

(declare-fun mapRes!40810 () Bool)

(assert (=> mapIsEmpty!40810 mapRes!40810))

(declare-fun b!1076369 () Bool)

(declare-fun res!717484 () Bool)

(declare-fun e!615306 () Bool)

(assert (=> b!1076369 (=> (not res!717484) (not e!615306))))

(declare-datatypes ((array!69024 0))(
  ( (array!69025 (arr!33191 (Array (_ BitVec 32) (_ BitVec 64))) (size!33728 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!69024)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69024 (_ BitVec 32)) Bool)

(assert (=> b!1076369 (= res!717484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1076370 () Bool)

(declare-fun res!717483 () Bool)

(assert (=> b!1076370 (=> (not res!717483) (not e!615306))))

(declare-datatypes ((List!23300 0))(
  ( (Nil!23297) (Cons!23296 (h!24505 (_ BitVec 64)) (t!32666 List!23300)) )
))
(declare-fun arrayNoDuplicates!0 (array!69024 (_ BitVec 32) List!23300) Bool)

(assert (=> b!1076370 (= res!717483 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23297))))

(declare-fun b!1076371 () Bool)

(declare-fun res!717486 () Bool)

(assert (=> b!1076371 (=> (not res!717486) (not e!615306))))

(declare-datatypes ((V!39859 0))(
  ( (V!39860 (val!13072 Int)) )
))
(declare-datatypes ((ValueCell!12318 0))(
  ( (ValueCellFull!12318 (v!15701 V!39859)) (EmptyCell!12318) )
))
(declare-datatypes ((array!69026 0))(
  ( (array!69027 (arr!33192 (Array (_ BitVec 32) ValueCell!12318)) (size!33729 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!69026)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1076371 (= res!717486 (and (= (size!33729 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33728 _keys!1163) (size!33729 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!40810 () Bool)

(declare-fun tp!78198 () Bool)

(declare-fun e!615305 () Bool)

(assert (=> mapNonEmpty!40810 (= mapRes!40810 (and tp!78198 e!615305))))

(declare-fun mapValue!40810 () ValueCell!12318)

(declare-fun mapRest!40810 () (Array (_ BitVec 32) ValueCell!12318))

(declare-fun mapKey!40810 () (_ BitVec 32))

(assert (=> mapNonEmpty!40810 (= (arr!33192 _values!955) (store mapRest!40810 mapKey!40810 mapValue!40810))))

(declare-fun b!1076372 () Bool)

(declare-fun e!615307 () Bool)

(assert (=> b!1076372 (= e!615306 (not e!615307))))

(declare-fun res!717488 () Bool)

(assert (=> b!1076372 (=> res!717488 e!615307)))

(assert (=> b!1076372 (= res!717488 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16728 0))(
  ( (tuple2!16729 (_1!8374 (_ BitVec 64)) (_2!8374 V!39859)) )
))
(declare-datatypes ((List!23301 0))(
  ( (Nil!23298) (Cons!23297 (h!24506 tuple2!16728) (t!32667 List!23301)) )
))
(declare-datatypes ((ListLongMap!14709 0))(
  ( (ListLongMap!14710 (toList!7370 List!23301)) )
))
(declare-fun lt!478095 () ListLongMap!14709)

(declare-fun lt!478097 () ListLongMap!14709)

(assert (=> b!1076372 (= lt!478095 lt!478097)))

(declare-fun zeroValueBefore!47 () V!39859)

(declare-datatypes ((Unit!35379 0))(
  ( (Unit!35380) )
))
(declare-fun lt!478092 () Unit!35379)

(declare-fun minValue!907 () V!39859)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39859)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!912 (array!69024 array!69026 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39859 V!39859 V!39859 V!39859 (_ BitVec 32) Int) Unit!35379)

(assert (=> b!1076372 (= lt!478092 (lemmaNoChangeToArrayThenSameMapNoExtras!912 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3893 (array!69024 array!69026 (_ BitVec 32) (_ BitVec 32) V!39859 V!39859 (_ BitVec 32) Int) ListLongMap!14709)

(assert (=> b!1076372 (= lt!478097 (getCurrentListMapNoExtraKeys!3893 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1076372 (= lt!478095 (getCurrentListMapNoExtraKeys!3893 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1076373 () Bool)

(assert (=> b!1076373 (= e!615305 tp_is_empty!26043)))

(declare-fun b!1076374 () Bool)

(assert (=> b!1076374 (= e!615307 true)))

(declare-fun lt!478093 () ListLongMap!14709)

(declare-fun lt!478094 () tuple2!16728)

(declare-fun -!713 (ListLongMap!14709 (_ BitVec 64)) ListLongMap!14709)

(declare-fun +!3193 (ListLongMap!14709 tuple2!16728) ListLongMap!14709)

(assert (=> b!1076374 (= (-!713 (+!3193 lt!478093 lt!478094) #b0000000000000000000000000000000000000000000000000000000000000000) lt!478093)))

(declare-fun lt!478098 () Unit!35379)

(declare-fun addThenRemoveForNewKeyIsSame!84 (ListLongMap!14709 (_ BitVec 64) V!39859) Unit!35379)

(assert (=> b!1076374 (= lt!478098 (addThenRemoveForNewKeyIsSame!84 lt!478093 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!478096 () tuple2!16728)

(assert (=> b!1076374 (= lt!478093 (+!3193 lt!478095 lt!478096))))

(declare-fun e!615302 () Bool)

(assert (=> b!1076374 e!615302))

(declare-fun res!717485 () Bool)

(assert (=> b!1076374 (=> (not res!717485) (not e!615302))))

(declare-fun lt!478090 () ListLongMap!14709)

(assert (=> b!1076374 (= res!717485 (= lt!478090 (+!3193 (+!3193 lt!478095 lt!478094) lt!478096)))))

(assert (=> b!1076374 (= lt!478096 (tuple2!16729 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1076374 (= lt!478094 (tuple2!16729 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!478091 () ListLongMap!14709)

(declare-fun getCurrentListMap!4205 (array!69024 array!69026 (_ BitVec 32) (_ BitVec 32) V!39859 V!39859 (_ BitVec 32) Int) ListLongMap!14709)

(assert (=> b!1076374 (= lt!478091 (getCurrentListMap!4205 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1076374 (= lt!478090 (getCurrentListMap!4205 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1076375 () Bool)

(declare-fun e!615303 () Bool)

(assert (=> b!1076375 (= e!615303 (and e!615308 mapRes!40810))))

(declare-fun condMapEmpty!40810 () Bool)

(declare-fun mapDefault!40810 () ValueCell!12318)

(assert (=> b!1076375 (= condMapEmpty!40810 (= (arr!33192 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12318)) mapDefault!40810)))))

(declare-fun res!717487 () Bool)

(assert (=> start!95268 (=> (not res!717487) (not e!615306))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95268 (= res!717487 (validMask!0 mask!1515))))

(assert (=> start!95268 e!615306))

(assert (=> start!95268 true))

(assert (=> start!95268 tp_is_empty!26043))

(declare-fun array_inv!25502 (array!69026) Bool)

(assert (=> start!95268 (and (array_inv!25502 _values!955) e!615303)))

(assert (=> start!95268 tp!78197))

(declare-fun array_inv!25503 (array!69024) Bool)

(assert (=> start!95268 (array_inv!25503 _keys!1163)))

(declare-fun b!1076367 () Bool)

(assert (=> b!1076367 (= e!615302 (= lt!478091 (+!3193 lt!478097 lt!478096)))))

(assert (= (and start!95268 res!717487) b!1076371))

(assert (= (and b!1076371 res!717486) b!1076369))

(assert (= (and b!1076369 res!717484) b!1076370))

(assert (= (and b!1076370 res!717483) b!1076372))

(assert (= (and b!1076372 (not res!717488)) b!1076374))

(assert (= (and b!1076374 res!717485) b!1076367))

(assert (= (and b!1076375 condMapEmpty!40810) mapIsEmpty!40810))

(assert (= (and b!1076375 (not condMapEmpty!40810)) mapNonEmpty!40810))

(get-info :version)

(assert (= (and mapNonEmpty!40810 ((_ is ValueCellFull!12318) mapValue!40810)) b!1076373))

(assert (= (and b!1076375 ((_ is ValueCellFull!12318) mapDefault!40810)) b!1076368))

(assert (= start!95268 b!1076375))

(declare-fun m!995397 () Bool)

(assert (=> b!1076369 m!995397))

(declare-fun m!995399 () Bool)

(assert (=> mapNonEmpty!40810 m!995399))

(declare-fun m!995401 () Bool)

(assert (=> start!95268 m!995401))

(declare-fun m!995403 () Bool)

(assert (=> start!95268 m!995403))

(declare-fun m!995405 () Bool)

(assert (=> start!95268 m!995405))

(declare-fun m!995407 () Bool)

(assert (=> b!1076367 m!995407))

(declare-fun m!995409 () Bool)

(assert (=> b!1076374 m!995409))

(declare-fun m!995411 () Bool)

(assert (=> b!1076374 m!995411))

(declare-fun m!995413 () Bool)

(assert (=> b!1076374 m!995413))

(declare-fun m!995415 () Bool)

(assert (=> b!1076374 m!995415))

(declare-fun m!995417 () Bool)

(assert (=> b!1076374 m!995417))

(declare-fun m!995419 () Bool)

(assert (=> b!1076374 m!995419))

(assert (=> b!1076374 m!995413))

(declare-fun m!995421 () Bool)

(assert (=> b!1076374 m!995421))

(assert (=> b!1076374 m!995417))

(declare-fun m!995423 () Bool)

(assert (=> b!1076374 m!995423))

(declare-fun m!995425 () Bool)

(assert (=> b!1076370 m!995425))

(declare-fun m!995427 () Bool)

(assert (=> b!1076372 m!995427))

(declare-fun m!995429 () Bool)

(assert (=> b!1076372 m!995429))

(declare-fun m!995431 () Bool)

(assert (=> b!1076372 m!995431))

(check-sat (not b!1076370) (not mapNonEmpty!40810) b_and!35229 (not b!1076367) (not b!1076372) tp_is_empty!26043 (not b_next!22233) (not b!1076374) (not b!1076369) (not start!95268))
(check-sat b_and!35229 (not b_next!22233))
