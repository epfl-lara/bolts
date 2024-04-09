; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20750 () Bool)

(assert start!20750)

(declare-fun b_free!5397 () Bool)

(declare-fun b_next!5397 () Bool)

(assert (=> start!20750 (= b_free!5397 (not b_next!5397))))

(declare-fun tp!19222 () Bool)

(declare-fun b_and!12161 () Bool)

(assert (=> start!20750 (= tp!19222 b_and!12161)))

(declare-fun b!207522 () Bool)

(declare-fun e!135472 () Bool)

(declare-fun tp_is_empty!5253 () Bool)

(assert (=> b!207522 (= e!135472 tp_is_empty!5253)))

(declare-fun b!207523 () Bool)

(declare-fun res!100790 () Bool)

(declare-fun e!135471 () Bool)

(assert (=> b!207523 (=> (not res!100790) (not e!135471))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207523 (= res!100790 (validKeyInArray!0 k0!843))))

(declare-fun b!207524 () Bool)

(declare-fun res!100791 () Bool)

(assert (=> b!207524 (=> (not res!100791) (not e!135471))))

(declare-datatypes ((array!9712 0))(
  ( (array!9713 (arr!4606 (Array (_ BitVec 32) (_ BitVec 64))) (size!4931 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9712)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9712 (_ BitVec 32)) Bool)

(assert (=> b!207524 (= res!100791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207525 () Bool)

(declare-fun res!100795 () Bool)

(assert (=> b!207525 (=> (not res!100795) (not e!135471))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!207525 (= res!100795 (= (select (arr!4606 _keys!825) i!601) k0!843))))

(declare-fun mapIsEmpty!8948 () Bool)

(declare-fun mapRes!8948 () Bool)

(assert (=> mapIsEmpty!8948 mapRes!8948))

(declare-fun b!207526 () Bool)

(declare-fun res!100792 () Bool)

(assert (=> b!207526 (=> (not res!100792) (not e!135471))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6651 0))(
  ( (V!6652 (val!2671 Int)) )
))
(declare-datatypes ((ValueCell!2283 0))(
  ( (ValueCellFull!2283 (v!4637 V!6651)) (EmptyCell!2283) )
))
(declare-datatypes ((array!9714 0))(
  ( (array!9715 (arr!4607 (Array (_ BitVec 32) ValueCell!2283)) (size!4932 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9714)

(assert (=> b!207526 (= res!100792 (and (= (size!4932 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4931 _keys!825) (size!4932 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!100789 () Bool)

(assert (=> start!20750 (=> (not res!100789) (not e!135471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20750 (= res!100789 (validMask!0 mask!1149))))

(assert (=> start!20750 e!135471))

(declare-fun e!135474 () Bool)

(declare-fun array_inv!3043 (array!9714) Bool)

(assert (=> start!20750 (and (array_inv!3043 _values!649) e!135474)))

(assert (=> start!20750 true))

(assert (=> start!20750 tp_is_empty!5253))

(declare-fun array_inv!3044 (array!9712) Bool)

(assert (=> start!20750 (array_inv!3044 _keys!825)))

(assert (=> start!20750 tp!19222))

(declare-fun b!207527 () Bool)

(declare-fun e!135475 () Bool)

(assert (=> b!207527 (= e!135475 tp_is_empty!5253)))

(declare-fun b!207528 () Bool)

(declare-fun res!100794 () Bool)

(assert (=> b!207528 (=> (not res!100794) (not e!135471))))

(declare-datatypes ((List!2966 0))(
  ( (Nil!2963) (Cons!2962 (h!3604 (_ BitVec 64)) (t!7905 List!2966)) )
))
(declare-fun arrayNoDuplicates!0 (array!9712 (_ BitVec 32) List!2966) Bool)

(assert (=> b!207528 (= res!100794 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2963))))

(declare-fun mapNonEmpty!8948 () Bool)

(declare-fun tp!19223 () Bool)

(assert (=> mapNonEmpty!8948 (= mapRes!8948 (and tp!19223 e!135475))))

(declare-fun mapKey!8948 () (_ BitVec 32))

(declare-fun mapRest!8948 () (Array (_ BitVec 32) ValueCell!2283))

(declare-fun mapValue!8948 () ValueCell!2283)

(assert (=> mapNonEmpty!8948 (= (arr!4607 _values!649) (store mapRest!8948 mapKey!8948 mapValue!8948))))

(declare-fun b!207529 () Bool)

(declare-fun res!100793 () Bool)

(assert (=> b!207529 (=> (not res!100793) (not e!135471))))

(assert (=> b!207529 (= res!100793 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4931 _keys!825))))))

(declare-fun b!207530 () Bool)

(assert (=> b!207530 (= e!135471 (not true))))

(declare-datatypes ((tuple2!4050 0))(
  ( (tuple2!4051 (_1!2035 (_ BitVec 64)) (_2!2035 V!6651)) )
))
(declare-datatypes ((List!2967 0))(
  ( (Nil!2964) (Cons!2963 (h!3605 tuple2!4050) (t!7906 List!2967)) )
))
(declare-datatypes ((ListLongMap!2977 0))(
  ( (ListLongMap!2978 (toList!1504 List!2967)) )
))
(declare-fun lt!106390 () ListLongMap!2977)

(declare-fun zeroValue!615 () V!6651)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6651)

(declare-fun getCurrentListMap!1066 (array!9712 array!9714 (_ BitVec 32) (_ BitVec 32) V!6651 V!6651 (_ BitVec 32) Int) ListLongMap!2977)

(assert (=> b!207530 (= lt!106390 (getCurrentListMap!1066 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106395 () array!9714)

(declare-fun lt!106392 () ListLongMap!2977)

(assert (=> b!207530 (= lt!106392 (getCurrentListMap!1066 _keys!825 lt!106395 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106391 () ListLongMap!2977)

(declare-fun lt!106396 () ListLongMap!2977)

(assert (=> b!207530 (and (= lt!106391 lt!106396) (= lt!106396 lt!106391))))

(declare-fun lt!106393 () ListLongMap!2977)

(declare-fun v!520 () V!6651)

(declare-fun +!521 (ListLongMap!2977 tuple2!4050) ListLongMap!2977)

(assert (=> b!207530 (= lt!106396 (+!521 lt!106393 (tuple2!4051 k0!843 v!520)))))

(declare-datatypes ((Unit!6337 0))(
  ( (Unit!6338) )
))
(declare-fun lt!106394 () Unit!6337)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!179 (array!9712 array!9714 (_ BitVec 32) (_ BitVec 32) V!6651 V!6651 (_ BitVec 32) (_ BitVec 64) V!6651 (_ BitVec 32) Int) Unit!6337)

(assert (=> b!207530 (= lt!106394 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!179 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!437 (array!9712 array!9714 (_ BitVec 32) (_ BitVec 32) V!6651 V!6651 (_ BitVec 32) Int) ListLongMap!2977)

(assert (=> b!207530 (= lt!106391 (getCurrentListMapNoExtraKeys!437 _keys!825 lt!106395 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207530 (= lt!106395 (array!9715 (store (arr!4607 _values!649) i!601 (ValueCellFull!2283 v!520)) (size!4932 _values!649)))))

(assert (=> b!207530 (= lt!106393 (getCurrentListMapNoExtraKeys!437 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!207531 () Bool)

(assert (=> b!207531 (= e!135474 (and e!135472 mapRes!8948))))

(declare-fun condMapEmpty!8948 () Bool)

(declare-fun mapDefault!8948 () ValueCell!2283)

(assert (=> b!207531 (= condMapEmpty!8948 (= (arr!4607 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2283)) mapDefault!8948)))))

(assert (= (and start!20750 res!100789) b!207526))

(assert (= (and b!207526 res!100792) b!207524))

(assert (= (and b!207524 res!100791) b!207528))

(assert (= (and b!207528 res!100794) b!207529))

(assert (= (and b!207529 res!100793) b!207523))

(assert (= (and b!207523 res!100790) b!207525))

(assert (= (and b!207525 res!100795) b!207530))

(assert (= (and b!207531 condMapEmpty!8948) mapIsEmpty!8948))

(assert (= (and b!207531 (not condMapEmpty!8948)) mapNonEmpty!8948))

(get-info :version)

(assert (= (and mapNonEmpty!8948 ((_ is ValueCellFull!2283) mapValue!8948)) b!207527))

(assert (= (and b!207531 ((_ is ValueCellFull!2283) mapDefault!8948)) b!207522))

(assert (= start!20750 b!207531))

(declare-fun m!235287 () Bool)

(assert (=> b!207523 m!235287))

(declare-fun m!235289 () Bool)

(assert (=> b!207524 m!235289))

(declare-fun m!235291 () Bool)

(assert (=> b!207530 m!235291))

(declare-fun m!235293 () Bool)

(assert (=> b!207530 m!235293))

(declare-fun m!235295 () Bool)

(assert (=> b!207530 m!235295))

(declare-fun m!235297 () Bool)

(assert (=> b!207530 m!235297))

(declare-fun m!235299 () Bool)

(assert (=> b!207530 m!235299))

(declare-fun m!235301 () Bool)

(assert (=> b!207530 m!235301))

(declare-fun m!235303 () Bool)

(assert (=> b!207530 m!235303))

(declare-fun m!235305 () Bool)

(assert (=> b!207525 m!235305))

(declare-fun m!235307 () Bool)

(assert (=> b!207528 m!235307))

(declare-fun m!235309 () Bool)

(assert (=> mapNonEmpty!8948 m!235309))

(declare-fun m!235311 () Bool)

(assert (=> start!20750 m!235311))

(declare-fun m!235313 () Bool)

(assert (=> start!20750 m!235313))

(declare-fun m!235315 () Bool)

(assert (=> start!20750 m!235315))

(check-sat tp_is_empty!5253 (not b!207530) (not start!20750) (not b!207523) (not b!207528) b_and!12161 (not b_next!5397) (not mapNonEmpty!8948) (not b!207524))
(check-sat b_and!12161 (not b_next!5397))
