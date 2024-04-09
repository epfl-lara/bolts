; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94884 () Bool)

(assert start!94884)

(declare-fun b_free!22077 () Bool)

(declare-fun b_next!22077 () Bool)

(assert (=> start!94884 (= b_free!22077 (not b_next!22077))))

(declare-fun tp!77694 () Bool)

(declare-fun b_and!34937 () Bool)

(assert (=> start!94884 (= tp!77694 b_and!34937)))

(declare-fun b!1072486 () Bool)

(declare-fun e!612640 () Bool)

(declare-fun tp_is_empty!25887 () Bool)

(assert (=> b!1072486 (= e!612640 tp_is_empty!25887)))

(declare-fun mapNonEmpty!40540 () Bool)

(declare-fun mapRes!40540 () Bool)

(declare-fun tp!77693 () Bool)

(declare-fun e!612638 () Bool)

(assert (=> mapNonEmpty!40540 (= mapRes!40540 (and tp!77693 e!612638))))

(declare-fun mapKey!40540 () (_ BitVec 32))

(declare-datatypes ((V!39651 0))(
  ( (V!39652 (val!12994 Int)) )
))
(declare-datatypes ((ValueCell!12240 0))(
  ( (ValueCellFull!12240 (v!15612 V!39651)) (EmptyCell!12240) )
))
(declare-fun mapValue!40540 () ValueCell!12240)

(declare-datatypes ((array!68702 0))(
  ( (array!68703 (arr!33042 (Array (_ BitVec 32) ValueCell!12240)) (size!33579 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68702)

(declare-fun mapRest!40540 () (Array (_ BitVec 32) ValueCell!12240))

(assert (=> mapNonEmpty!40540 (= (arr!33042 _values!955) (store mapRest!40540 mapKey!40540 mapValue!40540))))

(declare-fun b!1072487 () Bool)

(declare-fun e!612634 () Bool)

(assert (=> b!1072487 (= e!612634 (and e!612640 mapRes!40540))))

(declare-fun condMapEmpty!40540 () Bool)

(declare-fun mapDefault!40540 () ValueCell!12240)

(assert (=> b!1072487 (= condMapEmpty!40540 (= (arr!33042 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12240)) mapDefault!40540)))))

(declare-fun e!612637 () Bool)

(declare-datatypes ((tuple2!16610 0))(
  ( (tuple2!16611 (_1!8315 (_ BitVec 64)) (_2!8315 V!39651)) )
))
(declare-datatypes ((List!23191 0))(
  ( (Nil!23188) (Cons!23187 (h!24396 tuple2!16610) (t!32533 List!23191)) )
))
(declare-datatypes ((ListLongMap!14591 0))(
  ( (ListLongMap!14592 (toList!7311 List!23191)) )
))
(declare-fun lt!475528 () ListLongMap!14591)

(declare-fun b!1072488 () Bool)

(declare-fun lt!475530 () tuple2!16610)

(declare-fun lt!475522 () ListLongMap!14591)

(declare-fun +!3166 (ListLongMap!14591 tuple2!16610) ListLongMap!14591)

(assert (=> b!1072488 (= e!612637 (= lt!475528 (+!3166 lt!475522 lt!475530)))))

(declare-fun b!1072489 () Bool)

(declare-fun e!612639 () Bool)

(declare-fun e!612635 () Bool)

(assert (=> b!1072489 (= e!612639 (not e!612635))))

(declare-fun res!715495 () Bool)

(assert (=> b!1072489 (=> res!715495 e!612635)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072489 (= res!715495 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!475524 () ListLongMap!14591)

(assert (=> b!1072489 (= lt!475524 lt!475522)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39651)

(declare-datatypes ((Unit!35283 0))(
  ( (Unit!35284) )
))
(declare-fun lt!475527 () Unit!35283)

(declare-fun minValue!907 () V!39651)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39651)

(declare-datatypes ((array!68704 0))(
  ( (array!68705 (arr!33043 (Array (_ BitVec 32) (_ BitVec 64))) (size!33580 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68704)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!880 (array!68704 array!68702 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39651 V!39651 V!39651 V!39651 (_ BitVec 32) Int) Unit!35283)

(assert (=> b!1072489 (= lt!475527 (lemmaNoChangeToArrayThenSameMapNoExtras!880 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3841 (array!68704 array!68702 (_ BitVec 32) (_ BitVec 32) V!39651 V!39651 (_ BitVec 32) Int) ListLongMap!14591)

(assert (=> b!1072489 (= lt!475522 (getCurrentListMapNoExtraKeys!3841 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072489 (= lt!475524 (getCurrentListMapNoExtraKeys!3841 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!715492 () Bool)

(assert (=> start!94884 (=> (not res!715492) (not e!612639))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94884 (= res!715492 (validMask!0 mask!1515))))

(assert (=> start!94884 e!612639))

(assert (=> start!94884 true))

(assert (=> start!94884 tp_is_empty!25887))

(declare-fun array_inv!25398 (array!68702) Bool)

(assert (=> start!94884 (and (array_inv!25398 _values!955) e!612634)))

(assert (=> start!94884 tp!77694))

(declare-fun array_inv!25399 (array!68704) Bool)

(assert (=> start!94884 (array_inv!25399 _keys!1163)))

(declare-fun mapIsEmpty!40540 () Bool)

(assert (=> mapIsEmpty!40540 mapRes!40540))

(declare-fun b!1072490 () Bool)

(declare-fun res!715493 () Bool)

(assert (=> b!1072490 (=> (not res!715493) (not e!612639))))

(declare-datatypes ((List!23192 0))(
  ( (Nil!23189) (Cons!23188 (h!24397 (_ BitVec 64)) (t!32534 List!23192)) )
))
(declare-fun arrayNoDuplicates!0 (array!68704 (_ BitVec 32) List!23192) Bool)

(assert (=> b!1072490 (= res!715493 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23189))))

(declare-fun b!1072491 () Bool)

(declare-fun res!715494 () Bool)

(assert (=> b!1072491 (=> (not res!715494) (not e!612639))))

(assert (=> b!1072491 (= res!715494 (and (= (size!33579 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33580 _keys!1163) (size!33579 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072492 () Bool)

(assert (=> b!1072492 (= e!612638 tp_is_empty!25887)))

(declare-fun b!1072493 () Bool)

(assert (=> b!1072493 (= e!612635 true)))

(declare-fun lt!475529 () ListLongMap!14591)

(declare-fun lt!475520 () ListLongMap!14591)

(declare-fun -!701 (ListLongMap!14591 (_ BitVec 64)) ListLongMap!14591)

(assert (=> b!1072493 (= lt!475529 (-!701 lt!475520 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!475525 () ListLongMap!14591)

(declare-fun lt!475526 () ListLongMap!14591)

(assert (=> b!1072493 (= lt!475525 lt!475526)))

(declare-fun lt!475531 () Unit!35283)

(declare-fun addCommutativeForDiffKeys!745 (ListLongMap!14591 (_ BitVec 64) V!39651 (_ BitVec 64) V!39651) Unit!35283)

(assert (=> b!1072493 (= lt!475531 (addCommutativeForDiffKeys!745 lt!475524 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!475521 () ListLongMap!14591)

(assert (=> b!1072493 (= (-!701 lt!475526 #b0000000000000000000000000000000000000000000000000000000000000000) lt!475521)))

(declare-fun lt!475523 () tuple2!16610)

(assert (=> b!1072493 (= lt!475526 (+!3166 lt!475521 lt!475523))))

(declare-fun lt!475519 () Unit!35283)

(declare-fun addThenRemoveForNewKeyIsSame!75 (ListLongMap!14591 (_ BitVec 64) V!39651) Unit!35283)

(assert (=> b!1072493 (= lt!475519 (addThenRemoveForNewKeyIsSame!75 lt!475521 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1072493 (= lt!475521 (+!3166 lt!475524 lt!475530))))

(assert (=> b!1072493 e!612637))

(declare-fun res!715496 () Bool)

(assert (=> b!1072493 (=> (not res!715496) (not e!612637))))

(assert (=> b!1072493 (= res!715496 (= lt!475520 lt!475525))))

(assert (=> b!1072493 (= lt!475525 (+!3166 (+!3166 lt!475524 lt!475523) lt!475530))))

(assert (=> b!1072493 (= lt!475530 (tuple2!16611 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1072493 (= lt!475523 (tuple2!16611 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun getCurrentListMap!4173 (array!68704 array!68702 (_ BitVec 32) (_ BitVec 32) V!39651 V!39651 (_ BitVec 32) Int) ListLongMap!14591)

(assert (=> b!1072493 (= lt!475528 (getCurrentListMap!4173 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072493 (= lt!475520 (getCurrentListMap!4173 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072494 () Bool)

(declare-fun res!715497 () Bool)

(assert (=> b!1072494 (=> (not res!715497) (not e!612639))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68704 (_ BitVec 32)) Bool)

(assert (=> b!1072494 (= res!715497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!94884 res!715492) b!1072491))

(assert (= (and b!1072491 res!715494) b!1072494))

(assert (= (and b!1072494 res!715497) b!1072490))

(assert (= (and b!1072490 res!715493) b!1072489))

(assert (= (and b!1072489 (not res!715495)) b!1072493))

(assert (= (and b!1072493 res!715496) b!1072488))

(assert (= (and b!1072487 condMapEmpty!40540) mapIsEmpty!40540))

(assert (= (and b!1072487 (not condMapEmpty!40540)) mapNonEmpty!40540))

(get-info :version)

(assert (= (and mapNonEmpty!40540 ((_ is ValueCellFull!12240) mapValue!40540)) b!1072492))

(assert (= (and b!1072487 ((_ is ValueCellFull!12240) mapDefault!40540)) b!1072486))

(assert (= start!94884 b!1072487))

(declare-fun m!991619 () Bool)

(assert (=> b!1072488 m!991619))

(declare-fun m!991621 () Bool)

(assert (=> b!1072493 m!991621))

(declare-fun m!991623 () Bool)

(assert (=> b!1072493 m!991623))

(assert (=> b!1072493 m!991623))

(declare-fun m!991625 () Bool)

(assert (=> b!1072493 m!991625))

(declare-fun m!991627 () Bool)

(assert (=> b!1072493 m!991627))

(declare-fun m!991629 () Bool)

(assert (=> b!1072493 m!991629))

(declare-fun m!991631 () Bool)

(assert (=> b!1072493 m!991631))

(declare-fun m!991633 () Bool)

(assert (=> b!1072493 m!991633))

(declare-fun m!991635 () Bool)

(assert (=> b!1072493 m!991635))

(declare-fun m!991637 () Bool)

(assert (=> b!1072493 m!991637))

(declare-fun m!991639 () Bool)

(assert (=> b!1072493 m!991639))

(declare-fun m!991641 () Bool)

(assert (=> start!94884 m!991641))

(declare-fun m!991643 () Bool)

(assert (=> start!94884 m!991643))

(declare-fun m!991645 () Bool)

(assert (=> start!94884 m!991645))

(declare-fun m!991647 () Bool)

(assert (=> b!1072490 m!991647))

(declare-fun m!991649 () Bool)

(assert (=> b!1072494 m!991649))

(declare-fun m!991651 () Bool)

(assert (=> b!1072489 m!991651))

(declare-fun m!991653 () Bool)

(assert (=> b!1072489 m!991653))

(declare-fun m!991655 () Bool)

(assert (=> b!1072489 m!991655))

(declare-fun m!991657 () Bool)

(assert (=> mapNonEmpty!40540 m!991657))

(check-sat (not b!1072494) (not b_next!22077) (not b!1072488) (not start!94884) tp_is_empty!25887 (not mapNonEmpty!40540) b_and!34937 (not b!1072493) (not b!1072489) (not b!1072490))
(check-sat b_and!34937 (not b_next!22077))
