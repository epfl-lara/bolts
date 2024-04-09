; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20396 () Bool)

(assert start!20396)

(declare-fun b_free!5043 () Bool)

(declare-fun b_next!5043 () Bool)

(assert (=> start!20396 (= b_free!5043 (not b_next!5043))))

(declare-fun tp!18161 () Bool)

(declare-fun b_and!11807 () Bool)

(assert (=> start!20396 (= tp!18161 b_and!11807)))

(declare-fun b!201358 () Bool)

(declare-fun res!96219 () Bool)

(declare-fun e!131985 () Bool)

(assert (=> b!201358 (=> (not res!96219) (not e!131985))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9026 0))(
  ( (array!9027 (arr!4263 (Array (_ BitVec 32) (_ BitVec 64))) (size!4588 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9026)

(assert (=> b!201358 (= res!96219 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4588 _keys!825))))))

(declare-fun b!201359 () Bool)

(declare-fun res!96226 () Bool)

(assert (=> b!201359 (=> (not res!96226) (not e!131985))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201359 (= res!96226 (validKeyInArray!0 k0!843))))

(declare-fun res!96218 () Bool)

(assert (=> start!20396 (=> (not res!96218) (not e!131985))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20396 (= res!96218 (validMask!0 mask!1149))))

(assert (=> start!20396 e!131985))

(declare-datatypes ((V!6179 0))(
  ( (V!6180 (val!2494 Int)) )
))
(declare-datatypes ((ValueCell!2106 0))(
  ( (ValueCellFull!2106 (v!4460 V!6179)) (EmptyCell!2106) )
))
(declare-datatypes ((array!9028 0))(
  ( (array!9029 (arr!4264 (Array (_ BitVec 32) ValueCell!2106)) (size!4589 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9028)

(declare-fun e!131981 () Bool)

(declare-fun array_inv!2801 (array!9028) Bool)

(assert (=> start!20396 (and (array_inv!2801 _values!649) e!131981)))

(assert (=> start!20396 true))

(declare-fun tp_is_empty!4899 () Bool)

(assert (=> start!20396 tp_is_empty!4899))

(declare-fun array_inv!2802 (array!9026) Bool)

(assert (=> start!20396 (array_inv!2802 _keys!825)))

(assert (=> start!20396 tp!18161))

(declare-fun b!201360 () Bool)

(declare-fun e!131984 () Bool)

(assert (=> b!201360 (= e!131984 tp_is_empty!4899)))

(declare-fun b!201361 () Bool)

(declare-fun res!96224 () Bool)

(assert (=> b!201361 (=> (not res!96224) (not e!131985))))

(declare-datatypes ((List!2709 0))(
  ( (Nil!2706) (Cons!2705 (h!3347 (_ BitVec 64)) (t!7648 List!2709)) )
))
(declare-fun arrayNoDuplicates!0 (array!9026 (_ BitVec 32) List!2709) Bool)

(assert (=> b!201361 (= res!96224 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2706))))

(declare-fun b!201362 () Bool)

(declare-fun e!131983 () Bool)

(assert (=> b!201362 (= e!131983 true)))

(declare-datatypes ((tuple2!3772 0))(
  ( (tuple2!3773 (_1!1896 (_ BitVec 64)) (_2!1896 V!6179)) )
))
(declare-fun lt!100354 () tuple2!3772)

(declare-datatypes ((List!2710 0))(
  ( (Nil!2707) (Cons!2706 (h!3348 tuple2!3772) (t!7649 List!2710)) )
))
(declare-datatypes ((ListLongMap!2699 0))(
  ( (ListLongMap!2700 (toList!1365 List!2710)) )
))
(declare-fun lt!100343 () ListLongMap!2699)

(declare-fun lt!100347 () tuple2!3772)

(declare-fun lt!100344 () ListLongMap!2699)

(declare-fun +!382 (ListLongMap!2699 tuple2!3772) ListLongMap!2699)

(assert (=> b!201362 (= (+!382 lt!100343 lt!100354) (+!382 lt!100344 lt!100347))))

(declare-fun lt!100342 () ListLongMap!2699)

(declare-fun minValue!615 () V!6179)

(declare-datatypes ((Unit!6071 0))(
  ( (Unit!6072) )
))
(declare-fun lt!100353 () Unit!6071)

(declare-fun v!520 () V!6179)

(declare-fun addCommutativeForDiffKeys!103 (ListLongMap!2699 (_ BitVec 64) V!6179 (_ BitVec 64) V!6179) Unit!6071)

(assert (=> b!201362 (= lt!100353 (addCommutativeForDiffKeys!103 lt!100342 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!201363 () Bool)

(declare-fun e!131980 () Bool)

(assert (=> b!201363 (= e!131985 (not e!131980))))

(declare-fun res!96222 () Bool)

(assert (=> b!201363 (=> res!96222 e!131980)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!201363 (= res!96222 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!100351 () ListLongMap!2699)

(declare-fun zeroValue!615 () V!6179)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!949 (array!9026 array!9028 (_ BitVec 32) (_ BitVec 32) V!6179 V!6179 (_ BitVec 32) Int) ListLongMap!2699)

(assert (=> b!201363 (= lt!100351 (getCurrentListMap!949 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100350 () array!9028)

(declare-fun lt!100346 () ListLongMap!2699)

(assert (=> b!201363 (= lt!100346 (getCurrentListMap!949 _keys!825 lt!100350 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100355 () ListLongMap!2699)

(declare-fun lt!100345 () ListLongMap!2699)

(assert (=> b!201363 (and (= lt!100355 lt!100345) (= lt!100345 lt!100355))))

(declare-fun lt!100352 () ListLongMap!2699)

(assert (=> b!201363 (= lt!100345 (+!382 lt!100352 lt!100347))))

(assert (=> b!201363 (= lt!100347 (tuple2!3773 k0!843 v!520))))

(declare-fun lt!100356 () Unit!6071)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!62 (array!9026 array!9028 (_ BitVec 32) (_ BitVec 32) V!6179 V!6179 (_ BitVec 32) (_ BitVec 64) V!6179 (_ BitVec 32) Int) Unit!6071)

(assert (=> b!201363 (= lt!100356 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!62 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!320 (array!9026 array!9028 (_ BitVec 32) (_ BitVec 32) V!6179 V!6179 (_ BitVec 32) Int) ListLongMap!2699)

(assert (=> b!201363 (= lt!100355 (getCurrentListMapNoExtraKeys!320 _keys!825 lt!100350 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201363 (= lt!100350 (array!9029 (store (arr!4264 _values!649) i!601 (ValueCellFull!2106 v!520)) (size!4589 _values!649)))))

(assert (=> b!201363 (= lt!100352 (getCurrentListMapNoExtraKeys!320 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapNonEmpty!8417 () Bool)

(declare-fun mapRes!8417 () Bool)

(declare-fun tp!18160 () Bool)

(declare-fun e!131982 () Bool)

(assert (=> mapNonEmpty!8417 (= mapRes!8417 (and tp!18160 e!131982))))

(declare-fun mapKey!8417 () (_ BitVec 32))

(declare-fun mapRest!8417 () (Array (_ BitVec 32) ValueCell!2106))

(declare-fun mapValue!8417 () ValueCell!2106)

(assert (=> mapNonEmpty!8417 (= (arr!4264 _values!649) (store mapRest!8417 mapKey!8417 mapValue!8417))))

(declare-fun b!201364 () Bool)

(declare-fun res!96220 () Bool)

(assert (=> b!201364 (=> (not res!96220) (not e!131985))))

(assert (=> b!201364 (= res!96220 (and (= (size!4589 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4588 _keys!825) (size!4589 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!201365 () Bool)

(declare-fun res!96225 () Bool)

(assert (=> b!201365 (=> (not res!96225) (not e!131985))))

(assert (=> b!201365 (= res!96225 (= (select (arr!4263 _keys!825) i!601) k0!843))))

(declare-fun mapIsEmpty!8417 () Bool)

(assert (=> mapIsEmpty!8417 mapRes!8417))

(declare-fun b!201366 () Bool)

(assert (=> b!201366 (= e!131980 e!131983)))

(declare-fun res!96221 () Bool)

(assert (=> b!201366 (=> res!96221 e!131983)))

(assert (=> b!201366 (= res!96221 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!100357 () ListLongMap!2699)

(assert (=> b!201366 (= lt!100357 lt!100343)))

(assert (=> b!201366 (= lt!100343 (+!382 lt!100342 lt!100347))))

(declare-fun lt!100348 () Unit!6071)

(assert (=> b!201366 (= lt!100348 (addCommutativeForDiffKeys!103 lt!100352 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (=> b!201366 (= lt!100346 (+!382 lt!100357 lt!100354))))

(declare-fun lt!100349 () tuple2!3772)

(assert (=> b!201366 (= lt!100357 (+!382 lt!100345 lt!100349))))

(assert (=> b!201366 (= lt!100351 lt!100344)))

(assert (=> b!201366 (= lt!100344 (+!382 lt!100342 lt!100354))))

(assert (=> b!201366 (= lt!100342 (+!382 lt!100352 lt!100349))))

(assert (=> b!201366 (= lt!100346 (+!382 (+!382 lt!100355 lt!100349) lt!100354))))

(assert (=> b!201366 (= lt!100354 (tuple2!3773 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201366 (= lt!100349 (tuple2!3773 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!201367 () Bool)

(declare-fun res!96223 () Bool)

(assert (=> b!201367 (=> (not res!96223) (not e!131985))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9026 (_ BitVec 32)) Bool)

(assert (=> b!201367 (= res!96223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!201368 () Bool)

(assert (=> b!201368 (= e!131982 tp_is_empty!4899)))

(declare-fun b!201369 () Bool)

(assert (=> b!201369 (= e!131981 (and e!131984 mapRes!8417))))

(declare-fun condMapEmpty!8417 () Bool)

(declare-fun mapDefault!8417 () ValueCell!2106)

(assert (=> b!201369 (= condMapEmpty!8417 (= (arr!4264 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2106)) mapDefault!8417)))))

(assert (= (and start!20396 res!96218) b!201364))

(assert (= (and b!201364 res!96220) b!201367))

(assert (= (and b!201367 res!96223) b!201361))

(assert (= (and b!201361 res!96224) b!201358))

(assert (= (and b!201358 res!96219) b!201359))

(assert (= (and b!201359 res!96226) b!201365))

(assert (= (and b!201365 res!96225) b!201363))

(assert (= (and b!201363 (not res!96222)) b!201366))

(assert (= (and b!201366 (not res!96221)) b!201362))

(assert (= (and b!201369 condMapEmpty!8417) mapIsEmpty!8417))

(assert (= (and b!201369 (not condMapEmpty!8417)) mapNonEmpty!8417))

(get-info :version)

(assert (= (and mapNonEmpty!8417 ((_ is ValueCellFull!2106) mapValue!8417)) b!201368))

(assert (= (and b!201369 ((_ is ValueCellFull!2106) mapDefault!8417)) b!201360))

(assert (= start!20396 b!201369))

(declare-fun m!228289 () Bool)

(assert (=> b!201362 m!228289))

(declare-fun m!228291 () Bool)

(assert (=> b!201362 m!228291))

(declare-fun m!228293 () Bool)

(assert (=> b!201362 m!228293))

(declare-fun m!228295 () Bool)

(assert (=> b!201361 m!228295))

(declare-fun m!228297 () Bool)

(assert (=> mapNonEmpty!8417 m!228297))

(declare-fun m!228299 () Bool)

(assert (=> b!201363 m!228299))

(declare-fun m!228301 () Bool)

(assert (=> b!201363 m!228301))

(declare-fun m!228303 () Bool)

(assert (=> b!201363 m!228303))

(declare-fun m!228305 () Bool)

(assert (=> b!201363 m!228305))

(declare-fun m!228307 () Bool)

(assert (=> b!201363 m!228307))

(declare-fun m!228309 () Bool)

(assert (=> b!201363 m!228309))

(declare-fun m!228311 () Bool)

(assert (=> b!201363 m!228311))

(declare-fun m!228313 () Bool)

(assert (=> b!201367 m!228313))

(declare-fun m!228315 () Bool)

(assert (=> b!201366 m!228315))

(declare-fun m!228317 () Bool)

(assert (=> b!201366 m!228317))

(declare-fun m!228319 () Bool)

(assert (=> b!201366 m!228319))

(declare-fun m!228321 () Bool)

(assert (=> b!201366 m!228321))

(declare-fun m!228323 () Bool)

(assert (=> b!201366 m!228323))

(declare-fun m!228325 () Bool)

(assert (=> b!201366 m!228325))

(assert (=> b!201366 m!228321))

(declare-fun m!228327 () Bool)

(assert (=> b!201366 m!228327))

(declare-fun m!228329 () Bool)

(assert (=> b!201366 m!228329))

(declare-fun m!228331 () Bool)

(assert (=> b!201359 m!228331))

(declare-fun m!228333 () Bool)

(assert (=> start!20396 m!228333))

(declare-fun m!228335 () Bool)

(assert (=> start!20396 m!228335))

(declare-fun m!228337 () Bool)

(assert (=> start!20396 m!228337))

(declare-fun m!228339 () Bool)

(assert (=> b!201365 m!228339))

(check-sat (not b!201359) b_and!11807 (not b!201367) (not mapNonEmpty!8417) tp_is_empty!4899 (not b_next!5043) (not b!201366) (not b!201362) (not b!201361) (not start!20396) (not b!201363))
(check-sat b_and!11807 (not b_next!5043))
