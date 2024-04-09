; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95274 () Bool)

(assert start!95274)

(declare-fun b_free!22239 () Bool)

(declare-fun b_next!22239 () Bool)

(assert (=> start!95274 (= b_free!22239 (not b_next!22239))))

(declare-fun tp!78215 () Bool)

(declare-fun b_and!35235 () Bool)

(assert (=> start!95274 (= tp!78215 b_and!35235)))

(declare-fun b!1076448 () Bool)

(declare-fun e!615368 () Bool)

(declare-datatypes ((V!39867 0))(
  ( (V!39868 (val!13075 Int)) )
))
(declare-datatypes ((tuple2!16734 0))(
  ( (tuple2!16735 (_1!8377 (_ BitVec 64)) (_2!8377 V!39867)) )
))
(declare-datatypes ((List!23306 0))(
  ( (Nil!23303) (Cons!23302 (h!24511 tuple2!16734) (t!32672 List!23306)) )
))
(declare-datatypes ((ListLongMap!14715 0))(
  ( (ListLongMap!14716 (toList!7373 List!23306)) )
))
(declare-fun lt!478193 () ListLongMap!14715)

(declare-fun lt!478192 () ListLongMap!14715)

(declare-fun -!716 (ListLongMap!14715 (_ BitVec 64)) ListLongMap!14715)

(assert (=> b!1076448 (= e!615368 (= (-!716 lt!478193 #b0000000000000000000000000000000000000000000000000000000000000000) lt!478192))))

(declare-fun lt!478194 () ListLongMap!14715)

(declare-fun lt!478195 () ListLongMap!14715)

(assert (=> b!1076448 (= lt!478194 lt!478195)))

(declare-fun zeroValueBefore!47 () V!39867)

(declare-fun lt!478188 () ListLongMap!14715)

(declare-fun minValue!907 () V!39867)

(declare-datatypes ((Unit!35385 0))(
  ( (Unit!35386) )
))
(declare-fun lt!478186 () Unit!35385)

(declare-fun addCommutativeForDiffKeys!750 (ListLongMap!14715 (_ BitVec 64) V!39867 (_ BitVec 64) V!39867) Unit!35385)

(assert (=> b!1076448 (= lt!478186 (addCommutativeForDiffKeys!750 lt!478188 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!478190 () ListLongMap!14715)

(assert (=> b!1076448 (= (-!716 lt!478195 #b0000000000000000000000000000000000000000000000000000000000000000) lt!478190)))

(declare-fun lt!478189 () tuple2!16734)

(declare-fun +!3196 (ListLongMap!14715 tuple2!16734) ListLongMap!14715)

(assert (=> b!1076448 (= lt!478195 (+!3196 lt!478190 lt!478189))))

(declare-fun lt!478191 () Unit!35385)

(declare-fun addThenRemoveForNewKeyIsSame!87 (ListLongMap!14715 (_ BitVec 64) V!39867) Unit!35385)

(assert (=> b!1076448 (= lt!478191 (addThenRemoveForNewKeyIsSame!87 lt!478190 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!478187 () tuple2!16734)

(assert (=> b!1076448 (= lt!478190 (+!3196 lt!478188 lt!478187))))

(declare-fun e!615366 () Bool)

(assert (=> b!1076448 e!615366))

(declare-fun res!717539 () Bool)

(assert (=> b!1076448 (=> (not res!717539) (not e!615366))))

(assert (=> b!1076448 (= res!717539 (= lt!478193 lt!478194))))

(assert (=> b!1076448 (= lt!478194 (+!3196 (+!3196 lt!478188 lt!478189) lt!478187))))

(assert (=> b!1076448 (= lt!478187 (tuple2!16735 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1076448 (= lt!478189 (tuple2!16735 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12321 0))(
  ( (ValueCellFull!12321 (v!15704 V!39867)) (EmptyCell!12321) )
))
(declare-datatypes ((array!69036 0))(
  ( (array!69037 (arr!33197 (Array (_ BitVec 32) ValueCell!12321)) (size!33734 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!69036)

(declare-datatypes ((array!69038 0))(
  ( (array!69039 (arr!33198 (Array (_ BitVec 32) (_ BitVec 64))) (size!33735 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!69038)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39867)

(declare-fun getCurrentListMap!4208 (array!69038 array!69036 (_ BitVec 32) (_ BitVec 32) V!39867 V!39867 (_ BitVec 32) Int) ListLongMap!14715)

(assert (=> b!1076448 (= lt!478192 (getCurrentListMap!4208 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1076448 (= lt!478193 (getCurrentListMap!4208 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1076449 () Bool)

(declare-fun e!615370 () Bool)

(declare-fun e!615371 () Bool)

(declare-fun mapRes!40819 () Bool)

(assert (=> b!1076449 (= e!615370 (and e!615371 mapRes!40819))))

(declare-fun condMapEmpty!40819 () Bool)

(declare-fun mapDefault!40819 () ValueCell!12321)

(assert (=> b!1076449 (= condMapEmpty!40819 (= (arr!33197 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12321)) mapDefault!40819)))))

(declare-fun mapNonEmpty!40819 () Bool)

(declare-fun tp!78216 () Bool)

(declare-fun e!615365 () Bool)

(assert (=> mapNonEmpty!40819 (= mapRes!40819 (and tp!78216 e!615365))))

(declare-fun mapRest!40819 () (Array (_ BitVec 32) ValueCell!12321))

(declare-fun mapValue!40819 () ValueCell!12321)

(declare-fun mapKey!40819 () (_ BitVec 32))

(assert (=> mapNonEmpty!40819 (= (arr!33197 _values!955) (store mapRest!40819 mapKey!40819 mapValue!40819))))

(declare-fun b!1076451 () Bool)

(declare-fun tp_is_empty!26049 () Bool)

(assert (=> b!1076451 (= e!615365 tp_is_empty!26049)))

(declare-fun mapIsEmpty!40819 () Bool)

(assert (=> mapIsEmpty!40819 mapRes!40819))

(declare-fun lt!478196 () ListLongMap!14715)

(declare-fun b!1076452 () Bool)

(assert (=> b!1076452 (= e!615366 (= lt!478192 (+!3196 lt!478196 lt!478187)))))

(declare-fun res!717541 () Bool)

(declare-fun e!615369 () Bool)

(assert (=> start!95274 (=> (not res!717541) (not e!615369))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95274 (= res!717541 (validMask!0 mask!1515))))

(assert (=> start!95274 e!615369))

(assert (=> start!95274 true))

(assert (=> start!95274 tp_is_empty!26049))

(declare-fun array_inv!25508 (array!69036) Bool)

(assert (=> start!95274 (and (array_inv!25508 _values!955) e!615370)))

(assert (=> start!95274 tp!78215))

(declare-fun array_inv!25509 (array!69038) Bool)

(assert (=> start!95274 (array_inv!25509 _keys!1163)))

(declare-fun b!1076450 () Bool)

(declare-fun res!717540 () Bool)

(assert (=> b!1076450 (=> (not res!717540) (not e!615369))))

(declare-datatypes ((List!23307 0))(
  ( (Nil!23304) (Cons!23303 (h!24512 (_ BitVec 64)) (t!32673 List!23307)) )
))
(declare-fun arrayNoDuplicates!0 (array!69038 (_ BitVec 32) List!23307) Bool)

(assert (=> b!1076450 (= res!717540 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23304))))

(declare-fun b!1076453 () Bool)

(declare-fun res!717538 () Bool)

(assert (=> b!1076453 (=> (not res!717538) (not e!615369))))

(assert (=> b!1076453 (= res!717538 (and (= (size!33734 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33735 _keys!1163) (size!33734 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1076454 () Bool)

(assert (=> b!1076454 (= e!615369 (not e!615368))))

(declare-fun res!717537 () Bool)

(assert (=> b!1076454 (=> res!717537 e!615368)))

(assert (=> b!1076454 (= res!717537 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1076454 (= lt!478188 lt!478196)))

(declare-fun lt!478197 () Unit!35385)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!915 (array!69038 array!69036 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39867 V!39867 V!39867 V!39867 (_ BitVec 32) Int) Unit!35385)

(assert (=> b!1076454 (= lt!478197 (lemmaNoChangeToArrayThenSameMapNoExtras!915 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3896 (array!69038 array!69036 (_ BitVec 32) (_ BitVec 32) V!39867 V!39867 (_ BitVec 32) Int) ListLongMap!14715)

(assert (=> b!1076454 (= lt!478196 (getCurrentListMapNoExtraKeys!3896 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1076454 (= lt!478188 (getCurrentListMapNoExtraKeys!3896 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1076455 () Bool)

(declare-fun res!717542 () Bool)

(assert (=> b!1076455 (=> (not res!717542) (not e!615369))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69038 (_ BitVec 32)) Bool)

(assert (=> b!1076455 (= res!717542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1076456 () Bool)

(assert (=> b!1076456 (= e!615371 tp_is_empty!26049)))

(assert (= (and start!95274 res!717541) b!1076453))

(assert (= (and b!1076453 res!717538) b!1076455))

(assert (= (and b!1076455 res!717542) b!1076450))

(assert (= (and b!1076450 res!717540) b!1076454))

(assert (= (and b!1076454 (not res!717537)) b!1076448))

(assert (= (and b!1076448 res!717539) b!1076452))

(assert (= (and b!1076449 condMapEmpty!40819) mapIsEmpty!40819))

(assert (= (and b!1076449 (not condMapEmpty!40819)) mapNonEmpty!40819))

(get-info :version)

(assert (= (and mapNonEmpty!40819 ((_ is ValueCellFull!12321) mapValue!40819)) b!1076451))

(assert (= (and b!1076449 ((_ is ValueCellFull!12321) mapDefault!40819)) b!1076456))

(assert (= start!95274 b!1076449))

(declare-fun m!995509 () Bool)

(assert (=> b!1076454 m!995509))

(declare-fun m!995511 () Bool)

(assert (=> b!1076454 m!995511))

(declare-fun m!995513 () Bool)

(assert (=> b!1076454 m!995513))

(declare-fun m!995515 () Bool)

(assert (=> b!1076455 m!995515))

(declare-fun m!995517 () Bool)

(assert (=> start!95274 m!995517))

(declare-fun m!995519 () Bool)

(assert (=> start!95274 m!995519))

(declare-fun m!995521 () Bool)

(assert (=> start!95274 m!995521))

(declare-fun m!995523 () Bool)

(assert (=> b!1076450 m!995523))

(declare-fun m!995525 () Bool)

(assert (=> b!1076448 m!995525))

(declare-fun m!995527 () Bool)

(assert (=> b!1076448 m!995527))

(declare-fun m!995529 () Bool)

(assert (=> b!1076448 m!995529))

(declare-fun m!995531 () Bool)

(assert (=> b!1076448 m!995531))

(declare-fun m!995533 () Bool)

(assert (=> b!1076448 m!995533))

(declare-fun m!995535 () Bool)

(assert (=> b!1076448 m!995535))

(assert (=> b!1076448 m!995531))

(declare-fun m!995537 () Bool)

(assert (=> b!1076448 m!995537))

(declare-fun m!995539 () Bool)

(assert (=> b!1076448 m!995539))

(declare-fun m!995541 () Bool)

(assert (=> b!1076448 m!995541))

(declare-fun m!995543 () Bool)

(assert (=> b!1076448 m!995543))

(declare-fun m!995545 () Bool)

(assert (=> mapNonEmpty!40819 m!995545))

(declare-fun m!995547 () Bool)

(assert (=> b!1076452 m!995547))

(check-sat (not start!95274) (not b!1076454) tp_is_empty!26049 (not b!1076452) (not b!1076455) b_and!35235 (not b!1076448) (not b_next!22239) (not mapNonEmpty!40819) (not b!1076450))
(check-sat b_and!35235 (not b_next!22239))
