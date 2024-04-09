; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39668 () Bool)

(assert start!39668)

(declare-fun b_free!9927 () Bool)

(declare-fun b_next!9927 () Bool)

(assert (=> start!39668 (= b_free!9927 (not b_next!9927))))

(declare-fun tp!35310 () Bool)

(declare-fun b_and!17601 () Bool)

(assert (=> start!39668 (= tp!35310 b_and!17601)))

(declare-fun b!425468 () Bool)

(declare-fun e!252559 () Bool)

(declare-fun e!252556 () Bool)

(assert (=> b!425468 (= e!252559 e!252556)))

(declare-fun res!249226 () Bool)

(assert (=> b!425468 (=> (not res!249226) (not e!252556))))

(declare-datatypes ((array!25985 0))(
  ( (array!25986 (arr!12439 (Array (_ BitVec 32) (_ BitVec 64))) (size!12791 (_ BitVec 32))) )
))
(declare-fun lt!194681 () array!25985)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25985 (_ BitVec 32)) Bool)

(assert (=> b!425468 (= res!249226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194681 mask!1025))))

(declare-fun _keys!709 () array!25985)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!425468 (= lt!194681 (array!25986 (store (arr!12439 _keys!709) i!563 k0!794) (size!12791 _keys!709)))))

(declare-fun b!425469 () Bool)

(declare-fun res!249231 () Bool)

(assert (=> b!425469 (=> (not res!249231) (not e!252559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!425469 (= res!249231 (validMask!0 mask!1025))))

(declare-fun b!425470 () Bool)

(declare-fun res!249233 () Bool)

(assert (=> b!425470 (=> (not res!249233) (not e!252559))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15877 0))(
  ( (V!15878 (val!5584 Int)) )
))
(declare-datatypes ((ValueCell!5196 0))(
  ( (ValueCellFull!5196 (v!7827 V!15877)) (EmptyCell!5196) )
))
(declare-datatypes ((array!25987 0))(
  ( (array!25988 (arr!12440 (Array (_ BitVec 32) ValueCell!5196)) (size!12792 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25987)

(assert (=> b!425470 (= res!249233 (and (= (size!12792 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12791 _keys!709) (size!12792 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!425471 () Bool)

(declare-fun res!249224 () Bool)

(assert (=> b!425471 (=> (not res!249224) (not e!252559))))

(assert (=> b!425471 (= res!249224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!425472 () Bool)

(declare-fun res!249227 () Bool)

(assert (=> b!425472 (=> (not res!249227) (not e!252559))))

(assert (=> b!425472 (= res!249227 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12791 _keys!709))))))

(declare-fun b!425473 () Bool)

(declare-fun e!252553 () Bool)

(assert (=> b!425473 (= e!252553 (not true))))

(declare-fun minValue!515 () V!15877)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!194685 () array!25987)

(declare-fun zeroValue!515 () V!15877)

(declare-fun v!412 () V!15877)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7274 0))(
  ( (tuple2!7275 (_1!3647 (_ BitVec 64)) (_2!3647 V!15877)) )
))
(declare-datatypes ((List!7319 0))(
  ( (Nil!7316) (Cons!7315 (h!8171 tuple2!7274) (t!12771 List!7319)) )
))
(declare-datatypes ((ListLongMap!6201 0))(
  ( (ListLongMap!6202 (toList!3116 List!7319)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1317 (array!25985 array!25987 (_ BitVec 32) (_ BitVec 32) V!15877 V!15877 (_ BitVec 32) Int) ListLongMap!6201)

(declare-fun +!1274 (ListLongMap!6201 tuple2!7274) ListLongMap!6201)

(assert (=> b!425473 (= (getCurrentListMapNoExtraKeys!1317 lt!194681 lt!194685 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1274 (getCurrentListMapNoExtraKeys!1317 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7275 k0!794 v!412)))))

(declare-datatypes ((Unit!12451 0))(
  ( (Unit!12452) )
))
(declare-fun lt!194684 () Unit!12451)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!476 (array!25985 array!25987 (_ BitVec 32) (_ BitVec 32) V!15877 V!15877 (_ BitVec 32) (_ BitVec 64) V!15877 (_ BitVec 32) Int) Unit!12451)

(assert (=> b!425473 (= lt!194684 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!476 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!18240 () Bool)

(declare-fun mapRes!18240 () Bool)

(declare-fun tp!35309 () Bool)

(declare-fun e!252557 () Bool)

(assert (=> mapNonEmpty!18240 (= mapRes!18240 (and tp!35309 e!252557))))

(declare-fun mapValue!18240 () ValueCell!5196)

(declare-fun mapKey!18240 () (_ BitVec 32))

(declare-fun mapRest!18240 () (Array (_ BitVec 32) ValueCell!5196))

(assert (=> mapNonEmpty!18240 (= (arr!12440 _values!549) (store mapRest!18240 mapKey!18240 mapValue!18240))))

(declare-fun b!425474 () Bool)

(declare-fun res!249223 () Bool)

(assert (=> b!425474 (=> (not res!249223) (not e!252559))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!425474 (= res!249223 (validKeyInArray!0 k0!794))))

(declare-fun b!425475 () Bool)

(declare-fun tp_is_empty!11079 () Bool)

(assert (=> b!425475 (= e!252557 tp_is_empty!11079)))

(declare-fun b!425476 () Bool)

(declare-fun res!249229 () Bool)

(assert (=> b!425476 (=> (not res!249229) (not e!252559))))

(declare-fun arrayContainsKey!0 (array!25985 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!425476 (= res!249229 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!425477 () Bool)

(assert (=> b!425477 (= e!252556 e!252553)))

(declare-fun res!249222 () Bool)

(assert (=> b!425477 (=> (not res!249222) (not e!252553))))

(assert (=> b!425477 (= res!249222 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!194683 () ListLongMap!6201)

(assert (=> b!425477 (= lt!194683 (getCurrentListMapNoExtraKeys!1317 lt!194681 lt!194685 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!425477 (= lt!194685 (array!25988 (store (arr!12440 _values!549) i!563 (ValueCellFull!5196 v!412)) (size!12792 _values!549)))))

(declare-fun lt!194682 () ListLongMap!6201)

(assert (=> b!425477 (= lt!194682 (getCurrentListMapNoExtraKeys!1317 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!249228 () Bool)

(assert (=> start!39668 (=> (not res!249228) (not e!252559))))

(assert (=> start!39668 (= res!249228 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12791 _keys!709))))))

(assert (=> start!39668 e!252559))

(assert (=> start!39668 tp_is_empty!11079))

(assert (=> start!39668 tp!35310))

(assert (=> start!39668 true))

(declare-fun e!252558 () Bool)

(declare-fun array_inv!9064 (array!25987) Bool)

(assert (=> start!39668 (and (array_inv!9064 _values!549) e!252558)))

(declare-fun array_inv!9065 (array!25985) Bool)

(assert (=> start!39668 (array_inv!9065 _keys!709)))

(declare-fun b!425478 () Bool)

(declare-fun res!249234 () Bool)

(assert (=> b!425478 (=> (not res!249234) (not e!252559))))

(assert (=> b!425478 (= res!249234 (or (= (select (arr!12439 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12439 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!425479 () Bool)

(declare-fun res!249232 () Bool)

(assert (=> b!425479 (=> (not res!249232) (not e!252556))))

(declare-datatypes ((List!7320 0))(
  ( (Nil!7317) (Cons!7316 (h!8172 (_ BitVec 64)) (t!12772 List!7320)) )
))
(declare-fun arrayNoDuplicates!0 (array!25985 (_ BitVec 32) List!7320) Bool)

(assert (=> b!425479 (= res!249232 (arrayNoDuplicates!0 lt!194681 #b00000000000000000000000000000000 Nil!7317))))

(declare-fun b!425480 () Bool)

(declare-fun res!249225 () Bool)

(assert (=> b!425480 (=> (not res!249225) (not e!252559))))

(assert (=> b!425480 (= res!249225 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7317))))

(declare-fun b!425481 () Bool)

(declare-fun res!249230 () Bool)

(assert (=> b!425481 (=> (not res!249230) (not e!252556))))

(assert (=> b!425481 (= res!249230 (bvsle from!863 i!563))))

(declare-fun b!425482 () Bool)

(declare-fun e!252555 () Bool)

(assert (=> b!425482 (= e!252558 (and e!252555 mapRes!18240))))

(declare-fun condMapEmpty!18240 () Bool)

(declare-fun mapDefault!18240 () ValueCell!5196)

(assert (=> b!425482 (= condMapEmpty!18240 (= (arr!12440 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5196)) mapDefault!18240)))))

(declare-fun mapIsEmpty!18240 () Bool)

(assert (=> mapIsEmpty!18240 mapRes!18240))

(declare-fun b!425483 () Bool)

(assert (=> b!425483 (= e!252555 tp_is_empty!11079)))

(assert (= (and start!39668 res!249228) b!425469))

(assert (= (and b!425469 res!249231) b!425470))

(assert (= (and b!425470 res!249233) b!425471))

(assert (= (and b!425471 res!249224) b!425480))

(assert (= (and b!425480 res!249225) b!425472))

(assert (= (and b!425472 res!249227) b!425474))

(assert (= (and b!425474 res!249223) b!425478))

(assert (= (and b!425478 res!249234) b!425476))

(assert (= (and b!425476 res!249229) b!425468))

(assert (= (and b!425468 res!249226) b!425479))

(assert (= (and b!425479 res!249232) b!425481))

(assert (= (and b!425481 res!249230) b!425477))

(assert (= (and b!425477 res!249222) b!425473))

(assert (= (and b!425482 condMapEmpty!18240) mapIsEmpty!18240))

(assert (= (and b!425482 (not condMapEmpty!18240)) mapNonEmpty!18240))

(get-info :version)

(assert (= (and mapNonEmpty!18240 ((_ is ValueCellFull!5196) mapValue!18240)) b!425475))

(assert (= (and b!425482 ((_ is ValueCellFull!5196) mapDefault!18240)) b!425483))

(assert (= start!39668 b!425482))

(declare-fun m!414357 () Bool)

(assert (=> b!425479 m!414357))

(declare-fun m!414359 () Bool)

(assert (=> b!425469 m!414359))

(declare-fun m!414361 () Bool)

(assert (=> start!39668 m!414361))

(declare-fun m!414363 () Bool)

(assert (=> start!39668 m!414363))

(declare-fun m!414365 () Bool)

(assert (=> mapNonEmpty!18240 m!414365))

(declare-fun m!414367 () Bool)

(assert (=> b!425480 m!414367))

(declare-fun m!414369 () Bool)

(assert (=> b!425476 m!414369))

(declare-fun m!414371 () Bool)

(assert (=> b!425473 m!414371))

(declare-fun m!414373 () Bool)

(assert (=> b!425473 m!414373))

(assert (=> b!425473 m!414373))

(declare-fun m!414375 () Bool)

(assert (=> b!425473 m!414375))

(declare-fun m!414377 () Bool)

(assert (=> b!425473 m!414377))

(declare-fun m!414379 () Bool)

(assert (=> b!425471 m!414379))

(declare-fun m!414381 () Bool)

(assert (=> b!425468 m!414381))

(declare-fun m!414383 () Bool)

(assert (=> b!425468 m!414383))

(declare-fun m!414385 () Bool)

(assert (=> b!425474 m!414385))

(declare-fun m!414387 () Bool)

(assert (=> b!425478 m!414387))

(declare-fun m!414389 () Bool)

(assert (=> b!425477 m!414389))

(declare-fun m!414391 () Bool)

(assert (=> b!425477 m!414391))

(declare-fun m!414393 () Bool)

(assert (=> b!425477 m!414393))

(check-sat (not b!425480) (not b!425468) (not b!425473) (not start!39668) (not b!425477) (not b_next!9927) (not b!425474) b_and!17601 (not b!425469) (not mapNonEmpty!18240) tp_is_empty!11079 (not b!425471) (not b!425476) (not b!425479))
(check-sat b_and!17601 (not b_next!9927))
