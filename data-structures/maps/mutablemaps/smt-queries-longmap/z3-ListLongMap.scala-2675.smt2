; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39878 () Bool)

(assert start!39878)

(declare-fun b_free!10137 () Bool)

(declare-fun b_next!10137 () Bool)

(assert (=> start!39878 (= b_free!10137 (not b_next!10137))))

(declare-fun tp!35940 () Bool)

(declare-fun b_and!17951 () Bool)

(assert (=> start!39878 (= tp!35940 b_and!17951)))

(declare-fun b!431253 () Bool)

(declare-fun res!253616 () Bool)

(declare-fun e!255210 () Bool)

(assert (=> b!431253 (=> (not res!253616) (not e!255210))))

(declare-datatypes ((array!26391 0))(
  ( (array!26392 (arr!12642 (Array (_ BitVec 32) (_ BitVec 64))) (size!12994 (_ BitVec 32))) )
))
(declare-fun lt!197551 () array!26391)

(declare-datatypes ((List!7488 0))(
  ( (Nil!7485) (Cons!7484 (h!8340 (_ BitVec 64)) (t!13082 List!7488)) )
))
(declare-fun arrayNoDuplicates!0 (array!26391 (_ BitVec 32) List!7488) Bool)

(assert (=> b!431253 (= res!253616 (arrayNoDuplicates!0 lt!197551 #b00000000000000000000000000000000 Nil!7485))))

(declare-fun b!431254 () Bool)

(declare-fun e!255208 () Bool)

(assert (=> b!431254 (= e!255208 true)))

(declare-datatypes ((V!16157 0))(
  ( (V!16158 (val!5689 Int)) )
))
(declare-datatypes ((tuple2!7436 0))(
  ( (tuple2!7437 (_1!3728 (_ BitVec 64)) (_2!3728 V!16157)) )
))
(declare-fun lt!197559 () tuple2!7436)

(declare-datatypes ((List!7489 0))(
  ( (Nil!7486) (Cons!7485 (h!8341 tuple2!7436) (t!13083 List!7489)) )
))
(declare-datatypes ((ListLongMap!6363 0))(
  ( (ListLongMap!6364 (toList!3197 List!7489)) )
))
(declare-fun lt!197560 () ListLongMap!6363)

(declare-fun lt!197549 () ListLongMap!6363)

(declare-fun lt!197550 () tuple2!7436)

(declare-fun +!1345 (ListLongMap!6363 tuple2!7436) ListLongMap!6363)

(assert (=> b!431254 (= lt!197549 (+!1345 (+!1345 lt!197560 lt!197550) lt!197559))))

(declare-datatypes ((Unit!12679 0))(
  ( (Unit!12680) )
))
(declare-fun lt!197553 () Unit!12679)

(declare-fun v!412 () V!16157)

(declare-fun _keys!709 () array!26391)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!197561 () V!16157)

(declare-fun addCommutativeForDiffKeys!360 (ListLongMap!6363 (_ BitVec 64) V!16157 (_ BitVec 64) V!16157) Unit!12679)

(assert (=> b!431254 (= lt!197553 (addCommutativeForDiffKeys!360 lt!197560 k0!794 v!412 (select (arr!12642 _keys!709) from!863) lt!197561))))

(declare-fun mapIsEmpty!18555 () Bool)

(declare-fun mapRes!18555 () Bool)

(assert (=> mapIsEmpty!18555 mapRes!18555))

(declare-fun b!431255 () Bool)

(declare-fun e!255213 () Bool)

(declare-fun tp_is_empty!11289 () Bool)

(assert (=> b!431255 (= e!255213 tp_is_empty!11289)))

(declare-fun b!431256 () Bool)

(declare-fun res!253607 () Bool)

(declare-fun e!255212 () Bool)

(assert (=> b!431256 (=> (not res!253607) (not e!255212))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!431256 (= res!253607 (or (= (select (arr!12642 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12642 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431257 () Bool)

(declare-fun res!253611 () Bool)

(assert (=> b!431257 (=> (not res!253611) (not e!255212))))

(declare-fun arrayContainsKey!0 (array!26391 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!431257 (= res!253611 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!431258 () Bool)

(declare-fun e!255214 () Bool)

(assert (=> b!431258 (= e!255214 e!255208)))

(declare-fun res!253619 () Bool)

(assert (=> b!431258 (=> res!253619 e!255208)))

(assert (=> b!431258 (= res!253619 (= k0!794 (select (arr!12642 _keys!709) from!863)))))

(assert (=> b!431258 (not (= (select (arr!12642 _keys!709) from!863) k0!794))))

(declare-fun lt!197557 () Unit!12679)

(declare-fun e!255205 () Unit!12679)

(assert (=> b!431258 (= lt!197557 e!255205)))

(declare-fun c!55466 () Bool)

(assert (=> b!431258 (= c!55466 (= (select (arr!12642 _keys!709) from!863) k0!794))))

(declare-fun lt!197555 () ListLongMap!6363)

(assert (=> b!431258 (= lt!197555 lt!197549)))

(declare-fun lt!197554 () ListLongMap!6363)

(assert (=> b!431258 (= lt!197549 (+!1345 lt!197554 lt!197550))))

(assert (=> b!431258 (= lt!197550 (tuple2!7437 (select (arr!12642 _keys!709) from!863) lt!197561))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5301 0))(
  ( (ValueCellFull!5301 (v!7932 V!16157)) (EmptyCell!5301) )
))
(declare-datatypes ((array!26393 0))(
  ( (array!26394 (arr!12643 (Array (_ BitVec 32) ValueCell!5301)) (size!12995 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26393)

(declare-fun get!6284 (ValueCell!5301 V!16157) V!16157)

(declare-fun dynLambda!785 (Int (_ BitVec 64)) V!16157)

(assert (=> b!431258 (= lt!197561 (get!6284 (select (arr!12643 _values!549) from!863) (dynLambda!785 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431259 () Bool)

(declare-fun res!253615 () Bool)

(assert (=> b!431259 (=> (not res!253615) (not e!255212))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!431259 (= res!253615 (validMask!0 mask!1025))))

(declare-fun res!253610 () Bool)

(assert (=> start!39878 (=> (not res!253610) (not e!255212))))

(assert (=> start!39878 (= res!253610 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12994 _keys!709))))))

(assert (=> start!39878 e!255212))

(assert (=> start!39878 tp_is_empty!11289))

(assert (=> start!39878 tp!35940))

(assert (=> start!39878 true))

(declare-fun e!255211 () Bool)

(declare-fun array_inv!9192 (array!26393) Bool)

(assert (=> start!39878 (and (array_inv!9192 _values!549) e!255211)))

(declare-fun array_inv!9193 (array!26391) Bool)

(assert (=> start!39878 (array_inv!9193 _keys!709)))

(declare-fun b!431260 () Bool)

(declare-fun e!255206 () Bool)

(assert (=> b!431260 (= e!255210 e!255206)))

(declare-fun res!253617 () Bool)

(assert (=> b!431260 (=> (not res!253617) (not e!255206))))

(assert (=> b!431260 (= res!253617 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16157)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!197562 () array!26393)

(declare-fun zeroValue!515 () V!16157)

(declare-fun getCurrentListMapNoExtraKeys!1391 (array!26391 array!26393 (_ BitVec 32) (_ BitVec 32) V!16157 V!16157 (_ BitVec 32) Int) ListLongMap!6363)

(assert (=> b!431260 (= lt!197555 (getCurrentListMapNoExtraKeys!1391 lt!197551 lt!197562 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!431260 (= lt!197562 (array!26394 (store (arr!12643 _values!549) i!563 (ValueCellFull!5301 v!412)) (size!12995 _values!549)))))

(declare-fun lt!197558 () ListLongMap!6363)

(assert (=> b!431260 (= lt!197558 (getCurrentListMapNoExtraKeys!1391 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!431261 () Bool)

(declare-fun e!255207 () Bool)

(assert (=> b!431261 (= e!255211 (and e!255207 mapRes!18555))))

(declare-fun condMapEmpty!18555 () Bool)

(declare-fun mapDefault!18555 () ValueCell!5301)

(assert (=> b!431261 (= condMapEmpty!18555 (= (arr!12643 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5301)) mapDefault!18555)))))

(declare-fun b!431262 () Bool)

(declare-fun Unit!12681 () Unit!12679)

(assert (=> b!431262 (= e!255205 Unit!12681)))

(declare-fun mapNonEmpty!18555 () Bool)

(declare-fun tp!35939 () Bool)

(assert (=> mapNonEmpty!18555 (= mapRes!18555 (and tp!35939 e!255213))))

(declare-fun mapKey!18555 () (_ BitVec 32))

(declare-fun mapValue!18555 () ValueCell!5301)

(declare-fun mapRest!18555 () (Array (_ BitVec 32) ValueCell!5301))

(assert (=> mapNonEmpty!18555 (= (arr!12643 _values!549) (store mapRest!18555 mapKey!18555 mapValue!18555))))

(declare-fun b!431263 () Bool)

(declare-fun res!253613 () Bool)

(assert (=> b!431263 (=> (not res!253613) (not e!255212))))

(assert (=> b!431263 (= res!253613 (and (= (size!12995 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12994 _keys!709) (size!12995 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!431264 () Bool)

(declare-fun res!253608 () Bool)

(assert (=> b!431264 (=> (not res!253608) (not e!255212))))

(assert (=> b!431264 (= res!253608 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12994 _keys!709))))))

(declare-fun b!431265 () Bool)

(declare-fun res!253620 () Bool)

(assert (=> b!431265 (=> (not res!253620) (not e!255212))))

(assert (=> b!431265 (= res!253620 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7485))))

(declare-fun b!431266 () Bool)

(declare-fun res!253618 () Bool)

(assert (=> b!431266 (=> (not res!253618) (not e!255212))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!431266 (= res!253618 (validKeyInArray!0 k0!794))))

(declare-fun b!431267 () Bool)

(assert (=> b!431267 (= e!255206 (not e!255214))))

(declare-fun res!253614 () Bool)

(assert (=> b!431267 (=> res!253614 e!255214)))

(assert (=> b!431267 (= res!253614 (not (validKeyInArray!0 (select (arr!12642 _keys!709) from!863))))))

(declare-fun lt!197548 () ListLongMap!6363)

(assert (=> b!431267 (= lt!197548 lt!197554)))

(assert (=> b!431267 (= lt!197554 (+!1345 lt!197560 lt!197559))))

(assert (=> b!431267 (= lt!197548 (getCurrentListMapNoExtraKeys!1391 lt!197551 lt!197562 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!431267 (= lt!197559 (tuple2!7437 k0!794 v!412))))

(assert (=> b!431267 (= lt!197560 (getCurrentListMapNoExtraKeys!1391 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!197556 () Unit!12679)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!538 (array!26391 array!26393 (_ BitVec 32) (_ BitVec 32) V!16157 V!16157 (_ BitVec 32) (_ BitVec 64) V!16157 (_ BitVec 32) Int) Unit!12679)

(assert (=> b!431267 (= lt!197556 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!538 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!431268 () Bool)

(declare-fun res!253606 () Bool)

(assert (=> b!431268 (=> (not res!253606) (not e!255212))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26391 (_ BitVec 32)) Bool)

(assert (=> b!431268 (= res!253606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!431269 () Bool)

(declare-fun Unit!12682 () Unit!12679)

(assert (=> b!431269 (= e!255205 Unit!12682)))

(declare-fun lt!197552 () Unit!12679)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26391 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12679)

(assert (=> b!431269 (= lt!197552 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!431269 false))

(declare-fun b!431270 () Bool)

(assert (=> b!431270 (= e!255212 e!255210)))

(declare-fun res!253612 () Bool)

(assert (=> b!431270 (=> (not res!253612) (not e!255210))))

(assert (=> b!431270 (= res!253612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!197551 mask!1025))))

(assert (=> b!431270 (= lt!197551 (array!26392 (store (arr!12642 _keys!709) i!563 k0!794) (size!12994 _keys!709)))))

(declare-fun b!431271 () Bool)

(assert (=> b!431271 (= e!255207 tp_is_empty!11289)))

(declare-fun b!431272 () Bool)

(declare-fun res!253609 () Bool)

(assert (=> b!431272 (=> (not res!253609) (not e!255210))))

(assert (=> b!431272 (= res!253609 (bvsle from!863 i!563))))

(assert (= (and start!39878 res!253610) b!431259))

(assert (= (and b!431259 res!253615) b!431263))

(assert (= (and b!431263 res!253613) b!431268))

(assert (= (and b!431268 res!253606) b!431265))

(assert (= (and b!431265 res!253620) b!431264))

(assert (= (and b!431264 res!253608) b!431266))

(assert (= (and b!431266 res!253618) b!431256))

(assert (= (and b!431256 res!253607) b!431257))

(assert (= (and b!431257 res!253611) b!431270))

(assert (= (and b!431270 res!253612) b!431253))

(assert (= (and b!431253 res!253616) b!431272))

(assert (= (and b!431272 res!253609) b!431260))

(assert (= (and b!431260 res!253617) b!431267))

(assert (= (and b!431267 (not res!253614)) b!431258))

(assert (= (and b!431258 c!55466) b!431269))

(assert (= (and b!431258 (not c!55466)) b!431262))

(assert (= (and b!431258 (not res!253619)) b!431254))

(assert (= (and b!431261 condMapEmpty!18555) mapIsEmpty!18555))

(assert (= (and b!431261 (not condMapEmpty!18555)) mapNonEmpty!18555))

(get-info :version)

(assert (= (and mapNonEmpty!18555 ((_ is ValueCellFull!5301) mapValue!18555)) b!431255))

(assert (= (and b!431261 ((_ is ValueCellFull!5301) mapDefault!18555)) b!431271))

(assert (= start!39878 b!431261))

(declare-fun b_lambda!9255 () Bool)

(assert (=> (not b_lambda!9255) (not b!431258)))

(declare-fun t!13081 () Bool)

(declare-fun tb!3551 () Bool)

(assert (=> (and start!39878 (= defaultEntry!557 defaultEntry!557) t!13081) tb!3551))

(declare-fun result!6621 () Bool)

(assert (=> tb!3551 (= result!6621 tp_is_empty!11289)))

(assert (=> b!431258 t!13081))

(declare-fun b_and!17953 () Bool)

(assert (= b_and!17951 (and (=> t!13081 result!6621) b_and!17953)))

(declare-fun m!419435 () Bool)

(assert (=> b!431265 m!419435))

(declare-fun m!419437 () Bool)

(assert (=> b!431254 m!419437))

(assert (=> b!431254 m!419437))

(declare-fun m!419439 () Bool)

(assert (=> b!431254 m!419439))

(declare-fun m!419441 () Bool)

(assert (=> b!431254 m!419441))

(assert (=> b!431254 m!419441))

(declare-fun m!419443 () Bool)

(assert (=> b!431254 m!419443))

(declare-fun m!419445 () Bool)

(assert (=> start!39878 m!419445))

(declare-fun m!419447 () Bool)

(assert (=> start!39878 m!419447))

(declare-fun m!419449 () Bool)

(assert (=> b!431266 m!419449))

(declare-fun m!419451 () Bool)

(assert (=> mapNonEmpty!18555 m!419451))

(assert (=> b!431258 m!419441))

(declare-fun m!419453 () Bool)

(assert (=> b!431258 m!419453))

(declare-fun m!419455 () Bool)

(assert (=> b!431258 m!419455))

(declare-fun m!419457 () Bool)

(assert (=> b!431258 m!419457))

(assert (=> b!431258 m!419457))

(assert (=> b!431258 m!419453))

(declare-fun m!419459 () Bool)

(assert (=> b!431258 m!419459))

(assert (=> b!431267 m!419441))

(declare-fun m!419461 () Bool)

(assert (=> b!431267 m!419461))

(declare-fun m!419463 () Bool)

(assert (=> b!431267 m!419463))

(declare-fun m!419465 () Bool)

(assert (=> b!431267 m!419465))

(assert (=> b!431267 m!419441))

(declare-fun m!419467 () Bool)

(assert (=> b!431267 m!419467))

(declare-fun m!419469 () Bool)

(assert (=> b!431267 m!419469))

(declare-fun m!419471 () Bool)

(assert (=> b!431257 m!419471))

(declare-fun m!419473 () Bool)

(assert (=> b!431269 m!419473))

(declare-fun m!419475 () Bool)

(assert (=> b!431268 m!419475))

(declare-fun m!419477 () Bool)

(assert (=> b!431270 m!419477))

(declare-fun m!419479 () Bool)

(assert (=> b!431270 m!419479))

(declare-fun m!419481 () Bool)

(assert (=> b!431259 m!419481))

(declare-fun m!419483 () Bool)

(assert (=> b!431256 m!419483))

(declare-fun m!419485 () Bool)

(assert (=> b!431260 m!419485))

(declare-fun m!419487 () Bool)

(assert (=> b!431260 m!419487))

(declare-fun m!419489 () Bool)

(assert (=> b!431260 m!419489))

(declare-fun m!419491 () Bool)

(assert (=> b!431253 m!419491))

(check-sat b_and!17953 (not b!431270) (not mapNonEmpty!18555) tp_is_empty!11289 (not b!431266) (not b!431258) (not b_lambda!9255) (not b!431268) (not b!431254) (not b!431257) (not b!431265) (not b!431253) (not b!431267) (not b_next!10137) (not start!39878) (not b!431269) (not b!431259) (not b!431260))
(check-sat b_and!17953 (not b_next!10137))
