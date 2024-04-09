; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20402 () Bool)

(assert start!20402)

(declare-fun b_free!5049 () Bool)

(declare-fun b_next!5049 () Bool)

(assert (=> start!20402 (= b_free!5049 (not b_next!5049))))

(declare-fun tp!18179 () Bool)

(declare-fun b_and!11813 () Bool)

(assert (=> start!20402 (= tp!18179 b_and!11813)))

(declare-fun b!201466 () Bool)

(declare-fun res!96304 () Bool)

(declare-fun e!132047 () Bool)

(assert (=> b!201466 (=> (not res!96304) (not e!132047))))

(declare-datatypes ((array!9038 0))(
  ( (array!9039 (arr!4269 (Array (_ BitVec 32) (_ BitVec 64))) (size!4594 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9038)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!201466 (= res!96304 (= (select (arr!4269 _keys!825) i!601) k0!843))))

(declare-fun b!201467 () Bool)

(declare-fun e!132049 () Bool)

(declare-fun e!132044 () Bool)

(assert (=> b!201467 (= e!132049 e!132044)))

(declare-fun res!96299 () Bool)

(assert (=> b!201467 (=> res!96299 e!132044)))

(assert (=> b!201467 (= res!96299 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6187 0))(
  ( (V!6188 (val!2497 Int)) )
))
(declare-datatypes ((tuple2!3776 0))(
  ( (tuple2!3777 (_1!1898 (_ BitVec 64)) (_2!1898 V!6187)) )
))
(declare-datatypes ((List!2712 0))(
  ( (Nil!2709) (Cons!2708 (h!3350 tuple2!3776) (t!7651 List!2712)) )
))
(declare-datatypes ((ListLongMap!2703 0))(
  ( (ListLongMap!2704 (toList!1367 List!2712)) )
))
(declare-fun lt!100487 () ListLongMap!2703)

(declare-fun lt!100491 () ListLongMap!2703)

(assert (=> b!201467 (= lt!100487 lt!100491)))

(declare-fun lt!100496 () ListLongMap!2703)

(declare-fun lt!100498 () tuple2!3776)

(declare-fun +!384 (ListLongMap!2703 tuple2!3776) ListLongMap!2703)

(assert (=> b!201467 (= lt!100491 (+!384 lt!100496 lt!100498))))

(declare-datatypes ((Unit!6075 0))(
  ( (Unit!6076) )
))
(declare-fun lt!100492 () Unit!6075)

(declare-fun lt!100497 () ListLongMap!2703)

(declare-fun v!520 () V!6187)

(declare-fun zeroValue!615 () V!6187)

(declare-fun addCommutativeForDiffKeys!105 (ListLongMap!2703 (_ BitVec 64) V!6187 (_ BitVec 64) V!6187) Unit!6075)

(assert (=> b!201467 (= lt!100492 (addCommutativeForDiffKeys!105 lt!100497 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!100495 () ListLongMap!2703)

(declare-fun lt!100501 () tuple2!3776)

(assert (=> b!201467 (= lt!100495 (+!384 lt!100487 lt!100501))))

(declare-fun lt!100499 () ListLongMap!2703)

(declare-fun lt!100489 () tuple2!3776)

(assert (=> b!201467 (= lt!100487 (+!384 lt!100499 lt!100489))))

(declare-fun lt!100500 () ListLongMap!2703)

(declare-fun lt!100490 () ListLongMap!2703)

(assert (=> b!201467 (= lt!100500 lt!100490)))

(assert (=> b!201467 (= lt!100490 (+!384 lt!100496 lt!100501))))

(assert (=> b!201467 (= lt!100496 (+!384 lt!100497 lt!100489))))

(declare-fun lt!100488 () ListLongMap!2703)

(assert (=> b!201467 (= lt!100495 (+!384 (+!384 lt!100488 lt!100489) lt!100501))))

(declare-fun minValue!615 () V!6187)

(assert (=> b!201467 (= lt!100501 (tuple2!3777 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201467 (= lt!100489 (tuple2!3777 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!201468 () Bool)

(assert (=> b!201468 (= e!132044 true)))

(assert (=> b!201468 (= (+!384 lt!100491 lt!100501) (+!384 lt!100490 lt!100498))))

(declare-fun lt!100486 () Unit!6075)

(assert (=> b!201468 (= lt!100486 (addCommutativeForDiffKeys!105 lt!100496 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!201469 () Bool)

(assert (=> b!201469 (= e!132047 (not e!132049))))

(declare-fun res!96302 () Bool)

(assert (=> b!201469 (=> res!96302 e!132049)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!201469 (= res!96302 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!2109 0))(
  ( (ValueCellFull!2109 (v!4463 V!6187)) (EmptyCell!2109) )
))
(declare-datatypes ((array!9040 0))(
  ( (array!9041 (arr!4270 (Array (_ BitVec 32) ValueCell!2109)) (size!4595 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9040)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!950 (array!9038 array!9040 (_ BitVec 32) (_ BitVec 32) V!6187 V!6187 (_ BitVec 32) Int) ListLongMap!2703)

(assert (=> b!201469 (= lt!100500 (getCurrentListMap!950 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100494 () array!9040)

(assert (=> b!201469 (= lt!100495 (getCurrentListMap!950 _keys!825 lt!100494 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201469 (and (= lt!100488 lt!100499) (= lt!100499 lt!100488))))

(assert (=> b!201469 (= lt!100499 (+!384 lt!100497 lt!100498))))

(assert (=> b!201469 (= lt!100498 (tuple2!3777 k0!843 v!520))))

(declare-fun lt!100493 () Unit!6075)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!63 (array!9038 array!9040 (_ BitVec 32) (_ BitVec 32) V!6187 V!6187 (_ BitVec 32) (_ BitVec 64) V!6187 (_ BitVec 32) Int) Unit!6075)

(assert (=> b!201469 (= lt!100493 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!63 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!321 (array!9038 array!9040 (_ BitVec 32) (_ BitVec 32) V!6187 V!6187 (_ BitVec 32) Int) ListLongMap!2703)

(assert (=> b!201469 (= lt!100488 (getCurrentListMapNoExtraKeys!321 _keys!825 lt!100494 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201469 (= lt!100494 (array!9041 (store (arr!4270 _values!649) i!601 (ValueCellFull!2109 v!520)) (size!4595 _values!649)))))

(assert (=> b!201469 (= lt!100497 (getCurrentListMapNoExtraKeys!321 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!201470 () Bool)

(declare-fun res!96303 () Bool)

(assert (=> b!201470 (=> (not res!96303) (not e!132047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201470 (= res!96303 (validKeyInArray!0 k0!843))))

(declare-fun mapNonEmpty!8426 () Bool)

(declare-fun mapRes!8426 () Bool)

(declare-fun tp!18178 () Bool)

(declare-fun e!132043 () Bool)

(assert (=> mapNonEmpty!8426 (= mapRes!8426 (and tp!18178 e!132043))))

(declare-fun mapKey!8426 () (_ BitVec 32))

(declare-fun mapRest!8426 () (Array (_ BitVec 32) ValueCell!2109))

(declare-fun mapValue!8426 () ValueCell!2109)

(assert (=> mapNonEmpty!8426 (= (arr!4270 _values!649) (store mapRest!8426 mapKey!8426 mapValue!8426))))

(declare-fun res!96305 () Bool)

(assert (=> start!20402 (=> (not res!96305) (not e!132047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20402 (= res!96305 (validMask!0 mask!1149))))

(assert (=> start!20402 e!132047))

(declare-fun e!132048 () Bool)

(declare-fun array_inv!2807 (array!9040) Bool)

(assert (=> start!20402 (and (array_inv!2807 _values!649) e!132048)))

(assert (=> start!20402 true))

(declare-fun tp_is_empty!4905 () Bool)

(assert (=> start!20402 tp_is_empty!4905))

(declare-fun array_inv!2808 (array!9038) Bool)

(assert (=> start!20402 (array_inv!2808 _keys!825)))

(assert (=> start!20402 tp!18179))

(declare-fun b!201471 () Bool)

(declare-fun res!96301 () Bool)

(assert (=> b!201471 (=> (not res!96301) (not e!132047))))

(assert (=> b!201471 (= res!96301 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4594 _keys!825))))))

(declare-fun mapIsEmpty!8426 () Bool)

(assert (=> mapIsEmpty!8426 mapRes!8426))

(declare-fun b!201472 () Bool)

(declare-fun res!96300 () Bool)

(assert (=> b!201472 (=> (not res!96300) (not e!132047))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9038 (_ BitVec 32)) Bool)

(assert (=> b!201472 (= res!96300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!201473 () Bool)

(declare-fun e!132045 () Bool)

(assert (=> b!201473 (= e!132045 tp_is_empty!4905)))

(declare-fun b!201474 () Bool)

(assert (=> b!201474 (= e!132048 (and e!132045 mapRes!8426))))

(declare-fun condMapEmpty!8426 () Bool)

(declare-fun mapDefault!8426 () ValueCell!2109)

(assert (=> b!201474 (= condMapEmpty!8426 (= (arr!4270 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2109)) mapDefault!8426)))))

(declare-fun b!201475 () Bool)

(declare-fun res!96306 () Bool)

(assert (=> b!201475 (=> (not res!96306) (not e!132047))))

(assert (=> b!201475 (= res!96306 (and (= (size!4595 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4594 _keys!825) (size!4595 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!201476 () Bool)

(assert (=> b!201476 (= e!132043 tp_is_empty!4905)))

(declare-fun b!201477 () Bool)

(declare-fun res!96307 () Bool)

(assert (=> b!201477 (=> (not res!96307) (not e!132047))))

(declare-datatypes ((List!2713 0))(
  ( (Nil!2710) (Cons!2709 (h!3351 (_ BitVec 64)) (t!7652 List!2713)) )
))
(declare-fun arrayNoDuplicates!0 (array!9038 (_ BitVec 32) List!2713) Bool)

(assert (=> b!201477 (= res!96307 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2710))))

(assert (= (and start!20402 res!96305) b!201475))

(assert (= (and b!201475 res!96306) b!201472))

(assert (= (and b!201472 res!96300) b!201477))

(assert (= (and b!201477 res!96307) b!201471))

(assert (= (and b!201471 res!96301) b!201470))

(assert (= (and b!201470 res!96303) b!201466))

(assert (= (and b!201466 res!96304) b!201469))

(assert (= (and b!201469 (not res!96302)) b!201467))

(assert (= (and b!201467 (not res!96299)) b!201468))

(assert (= (and b!201474 condMapEmpty!8426) mapIsEmpty!8426))

(assert (= (and b!201474 (not condMapEmpty!8426)) mapNonEmpty!8426))

(get-info :version)

(assert (= (and mapNonEmpty!8426 ((_ is ValueCellFull!2109) mapValue!8426)) b!201476))

(assert (= (and b!201474 ((_ is ValueCellFull!2109) mapDefault!8426)) b!201473))

(assert (= start!20402 b!201474))

(declare-fun m!228445 () Bool)

(assert (=> b!201468 m!228445))

(declare-fun m!228447 () Bool)

(assert (=> b!201468 m!228447))

(declare-fun m!228449 () Bool)

(assert (=> b!201468 m!228449))

(declare-fun m!228451 () Bool)

(assert (=> b!201467 m!228451))

(declare-fun m!228453 () Bool)

(assert (=> b!201467 m!228453))

(declare-fun m!228455 () Bool)

(assert (=> b!201467 m!228455))

(assert (=> b!201467 m!228451))

(declare-fun m!228457 () Bool)

(assert (=> b!201467 m!228457))

(declare-fun m!228459 () Bool)

(assert (=> b!201467 m!228459))

(declare-fun m!228461 () Bool)

(assert (=> b!201467 m!228461))

(declare-fun m!228463 () Bool)

(assert (=> b!201467 m!228463))

(declare-fun m!228465 () Bool)

(assert (=> b!201467 m!228465))

(declare-fun m!228467 () Bool)

(assert (=> start!20402 m!228467))

(declare-fun m!228469 () Bool)

(assert (=> start!20402 m!228469))

(declare-fun m!228471 () Bool)

(assert (=> start!20402 m!228471))

(declare-fun m!228473 () Bool)

(assert (=> b!201466 m!228473))

(declare-fun m!228475 () Bool)

(assert (=> b!201470 m!228475))

(declare-fun m!228477 () Bool)

(assert (=> b!201477 m!228477))

(declare-fun m!228479 () Bool)

(assert (=> mapNonEmpty!8426 m!228479))

(declare-fun m!228481 () Bool)

(assert (=> b!201472 m!228481))

(declare-fun m!228483 () Bool)

(assert (=> b!201469 m!228483))

(declare-fun m!228485 () Bool)

(assert (=> b!201469 m!228485))

(declare-fun m!228487 () Bool)

(assert (=> b!201469 m!228487))

(declare-fun m!228489 () Bool)

(assert (=> b!201469 m!228489))

(declare-fun m!228491 () Bool)

(assert (=> b!201469 m!228491))

(declare-fun m!228493 () Bool)

(assert (=> b!201469 m!228493))

(declare-fun m!228495 () Bool)

(assert (=> b!201469 m!228495))

(check-sat (not b!201470) (not b!201468) (not mapNonEmpty!8426) (not b!201467) (not b!201469) b_and!11813 tp_is_empty!4905 (not b!201472) (not start!20402) (not b!201477) (not b_next!5049))
(check-sat b_and!11813 (not b_next!5049))
