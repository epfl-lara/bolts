; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105326 () Bool)

(assert start!105326)

(declare-fun b_free!26985 () Bool)

(declare-fun b_next!26985 () Bool)

(assert (=> start!105326 (= b_free!26985 (not b_next!26985))))

(declare-fun tp!94464 () Bool)

(declare-fun b_and!44821 () Bool)

(assert (=> start!105326 (= tp!94464 b_and!44821)))

(declare-fun b!1254531 () Bool)

(declare-fun e!712927 () Bool)

(declare-fun tp_is_empty!31887 () Bool)

(assert (=> b!1254531 (= e!712927 tp_is_empty!31887)))

(declare-fun b!1254532 () Bool)

(declare-fun e!712922 () Bool)

(declare-fun e!712923 () Bool)

(assert (=> b!1254532 (= e!712922 (not e!712923))))

(declare-fun res!836560 () Bool)

(assert (=> b!1254532 (=> res!836560 e!712923)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1254532 (= res!836560 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!47881 0))(
  ( (V!47882 (val!16006 Int)) )
))
(declare-datatypes ((tuple2!20808 0))(
  ( (tuple2!20809 (_1!10414 (_ BitVec 64)) (_2!10414 V!47881)) )
))
(declare-datatypes ((List!28050 0))(
  ( (Nil!28047) (Cons!28046 (h!29255 tuple2!20808) (t!41540 List!28050)) )
))
(declare-datatypes ((ListLongMap!18693 0))(
  ( (ListLongMap!18694 (toList!9362 List!28050)) )
))
(declare-fun lt!567056 () ListLongMap!18693)

(declare-fun lt!567049 () ListLongMap!18693)

(assert (=> b!1254532 (= lt!567056 lt!567049)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47881)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47881)

(declare-datatypes ((array!81407 0))(
  ( (array!81408 (arr!39260 (Array (_ BitVec 32) (_ BitVec 64))) (size!39797 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81407)

(declare-datatypes ((ValueCell!15180 0))(
  ( (ValueCellFull!15180 (v!18705 V!47881)) (EmptyCell!15180) )
))
(declare-datatypes ((array!81409 0))(
  ( (array!81410 (arr!39261 (Array (_ BitVec 32) ValueCell!15180)) (size!39798 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81409)

(declare-fun minValueBefore!43 () V!47881)

(declare-datatypes ((Unit!41696 0))(
  ( (Unit!41697) )
))
(declare-fun lt!567051 () Unit!41696)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1041 (array!81407 array!81409 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47881 V!47881 V!47881 V!47881 (_ BitVec 32) Int) Unit!41696)

(assert (=> b!1254532 (= lt!567051 (lemmaNoChangeToArrayThenSameMapNoExtras!1041 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5723 (array!81407 array!81409 (_ BitVec 32) (_ BitVec 32) V!47881 V!47881 (_ BitVec 32) Int) ListLongMap!18693)

(assert (=> b!1254532 (= lt!567049 (getCurrentListMapNoExtraKeys!5723 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254532 (= lt!567056 (getCurrentListMapNoExtraKeys!5723 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49609 () Bool)

(declare-fun mapRes!49609 () Bool)

(declare-fun tp!94463 () Bool)

(assert (=> mapNonEmpty!49609 (= mapRes!49609 (and tp!94463 e!712927))))

(declare-fun mapValue!49609 () ValueCell!15180)

(declare-fun mapRest!49609 () (Array (_ BitVec 32) ValueCell!15180))

(declare-fun mapKey!49609 () (_ BitVec 32))

(assert (=> mapNonEmpty!49609 (= (arr!39261 _values!914) (store mapRest!49609 mapKey!49609 mapValue!49609))))

(declare-fun b!1254533 () Bool)

(declare-fun res!836561 () Bool)

(assert (=> b!1254533 (=> (not res!836561) (not e!712922))))

(assert (=> b!1254533 (= res!836561 (and (= (size!39798 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39797 _keys!1118) (size!39798 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!49609 () Bool)

(assert (=> mapIsEmpty!49609 mapRes!49609))

(declare-fun res!836562 () Bool)

(assert (=> start!105326 (=> (not res!836562) (not e!712922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105326 (= res!836562 (validMask!0 mask!1466))))

(assert (=> start!105326 e!712922))

(assert (=> start!105326 true))

(assert (=> start!105326 tp!94464))

(assert (=> start!105326 tp_is_empty!31887))

(declare-fun array_inv!29863 (array!81407) Bool)

(assert (=> start!105326 (array_inv!29863 _keys!1118)))

(declare-fun e!712924 () Bool)

(declare-fun array_inv!29864 (array!81409) Bool)

(assert (=> start!105326 (and (array_inv!29864 _values!914) e!712924)))

(declare-fun b!1254534 () Bool)

(declare-fun e!712926 () Bool)

(assert (=> b!1254534 (= e!712924 (and e!712926 mapRes!49609))))

(declare-fun condMapEmpty!49609 () Bool)

(declare-fun mapDefault!49609 () ValueCell!15180)

(assert (=> b!1254534 (= condMapEmpty!49609 (= (arr!39261 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15180)) mapDefault!49609)))))

(declare-fun b!1254535 () Bool)

(assert (=> b!1254535 (= e!712923 true)))

(declare-fun lt!567054 () ListLongMap!18693)

(declare-fun lt!567050 () ListLongMap!18693)

(declare-fun -!2071 (ListLongMap!18693 (_ BitVec 64)) ListLongMap!18693)

(assert (=> b!1254535 (= lt!567054 (-!2071 lt!567050 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!567055 () ListLongMap!18693)

(assert (=> b!1254535 (= (-!2071 lt!567055 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567056)))

(declare-fun lt!567053 () Unit!41696)

(declare-fun addThenRemoveForNewKeyIsSame!331 (ListLongMap!18693 (_ BitVec 64) V!47881) Unit!41696)

(assert (=> b!1254535 (= lt!567053 (addThenRemoveForNewKeyIsSame!331 lt!567056 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!567052 () ListLongMap!18693)

(assert (=> b!1254535 (and (= lt!567050 lt!567055) (= lt!567052 lt!567049))))

(declare-fun +!4162 (ListLongMap!18693 tuple2!20808) ListLongMap!18693)

(assert (=> b!1254535 (= lt!567055 (+!4162 lt!567056 (tuple2!20809 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun getCurrentListMap!4549 (array!81407 array!81409 (_ BitVec 32) (_ BitVec 32) V!47881 V!47881 (_ BitVec 32) Int) ListLongMap!18693)

(assert (=> b!1254535 (= lt!567052 (getCurrentListMap!4549 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254535 (= lt!567050 (getCurrentListMap!4549 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254536 () Bool)

(declare-fun res!836559 () Bool)

(assert (=> b!1254536 (=> (not res!836559) (not e!712922))))

(declare-datatypes ((List!28051 0))(
  ( (Nil!28048) (Cons!28047 (h!29256 (_ BitVec 64)) (t!41541 List!28051)) )
))
(declare-fun arrayNoDuplicates!0 (array!81407 (_ BitVec 32) List!28051) Bool)

(assert (=> b!1254536 (= res!836559 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28048))))

(declare-fun b!1254537 () Bool)

(declare-fun res!836558 () Bool)

(assert (=> b!1254537 (=> (not res!836558) (not e!712922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81407 (_ BitVec 32)) Bool)

(assert (=> b!1254537 (= res!836558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1254538 () Bool)

(assert (=> b!1254538 (= e!712926 tp_is_empty!31887)))

(assert (= (and start!105326 res!836562) b!1254533))

(assert (= (and b!1254533 res!836561) b!1254537))

(assert (= (and b!1254537 res!836558) b!1254536))

(assert (= (and b!1254536 res!836559) b!1254532))

(assert (= (and b!1254532 (not res!836560)) b!1254535))

(assert (= (and b!1254534 condMapEmpty!49609) mapIsEmpty!49609))

(assert (= (and b!1254534 (not condMapEmpty!49609)) mapNonEmpty!49609))

(get-info :version)

(assert (= (and mapNonEmpty!49609 ((_ is ValueCellFull!15180) mapValue!49609)) b!1254531))

(assert (= (and b!1254534 ((_ is ValueCellFull!15180) mapDefault!49609)) b!1254538))

(assert (= start!105326 b!1254534))

(declare-fun m!1155355 () Bool)

(assert (=> mapNonEmpty!49609 m!1155355))

(declare-fun m!1155357 () Bool)

(assert (=> b!1254532 m!1155357))

(declare-fun m!1155359 () Bool)

(assert (=> b!1254532 m!1155359))

(declare-fun m!1155361 () Bool)

(assert (=> b!1254532 m!1155361))

(declare-fun m!1155363 () Bool)

(assert (=> start!105326 m!1155363))

(declare-fun m!1155365 () Bool)

(assert (=> start!105326 m!1155365))

(declare-fun m!1155367 () Bool)

(assert (=> start!105326 m!1155367))

(declare-fun m!1155369 () Bool)

(assert (=> b!1254537 m!1155369))

(declare-fun m!1155371 () Bool)

(assert (=> b!1254536 m!1155371))

(declare-fun m!1155373 () Bool)

(assert (=> b!1254535 m!1155373))

(declare-fun m!1155375 () Bool)

(assert (=> b!1254535 m!1155375))

(declare-fun m!1155377 () Bool)

(assert (=> b!1254535 m!1155377))

(declare-fun m!1155379 () Bool)

(assert (=> b!1254535 m!1155379))

(declare-fun m!1155381 () Bool)

(assert (=> b!1254535 m!1155381))

(declare-fun m!1155383 () Bool)

(assert (=> b!1254535 m!1155383))

(check-sat (not b!1254535) (not mapNonEmpty!49609) (not b!1254536) (not b_next!26985) tp_is_empty!31887 (not b!1254537) (not start!105326) b_and!44821 (not b!1254532))
(check-sat b_and!44821 (not b_next!26985))
