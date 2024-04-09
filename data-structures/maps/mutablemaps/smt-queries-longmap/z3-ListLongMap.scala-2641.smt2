; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39674 () Bool)

(assert start!39674)

(declare-fun b_free!9933 () Bool)

(declare-fun b_next!9933 () Bool)

(assert (=> start!39674 (= b_free!9933 (not b_next!9933))))

(declare-fun tp!35328 () Bool)

(declare-fun b_and!17607 () Bool)

(assert (=> start!39674 (= tp!35328 b_and!17607)))

(declare-fun b!425612 () Bool)

(declare-fun e!252618 () Bool)

(assert (=> b!425612 (= e!252618 (not true))))

(declare-datatypes ((V!15885 0))(
  ( (V!15886 (val!5587 Int)) )
))
(declare-fun minValue!515 () V!15885)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5199 0))(
  ( (ValueCellFull!5199 (v!7830 V!15885)) (EmptyCell!5199) )
))
(declare-datatypes ((array!25995 0))(
  ( (array!25996 (arr!12444 (Array (_ BitVec 32) ValueCell!5199)) (size!12796 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25995)

(declare-fun zeroValue!515 () V!15885)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!194730 () array!25995)

(declare-fun v!412 () V!15885)

(declare-datatypes ((array!25997 0))(
  ( (array!25998 (arr!12445 (Array (_ BitVec 32) (_ BitVec 64))) (size!12797 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25997)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!194727 () array!25997)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7278 0))(
  ( (tuple2!7279 (_1!3649 (_ BitVec 64)) (_2!3649 V!15885)) )
))
(declare-datatypes ((List!7323 0))(
  ( (Nil!7320) (Cons!7319 (h!8175 tuple2!7278) (t!12775 List!7323)) )
))
(declare-datatypes ((ListLongMap!6205 0))(
  ( (ListLongMap!6206 (toList!3118 List!7323)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1319 (array!25997 array!25995 (_ BitVec 32) (_ BitVec 32) V!15885 V!15885 (_ BitVec 32) Int) ListLongMap!6205)

(declare-fun +!1276 (ListLongMap!6205 tuple2!7278) ListLongMap!6205)

(assert (=> b!425612 (= (getCurrentListMapNoExtraKeys!1319 lt!194727 lt!194730 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1276 (getCurrentListMapNoExtraKeys!1319 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7279 k0!794 v!412)))))

(declare-datatypes ((Unit!12455 0))(
  ( (Unit!12456) )
))
(declare-fun lt!194728 () Unit!12455)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!478 (array!25997 array!25995 (_ BitVec 32) (_ BitVec 32) V!15885 V!15885 (_ BitVec 32) (_ BitVec 64) V!15885 (_ BitVec 32) Int) Unit!12455)

(assert (=> b!425612 (= lt!194728 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!478 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!425613 () Bool)

(declare-fun res!249340 () Bool)

(declare-fun e!252622 () Bool)

(assert (=> b!425613 (=> (not res!249340) (not e!252622))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!425613 (= res!249340 (validMask!0 mask!1025))))

(declare-fun b!425614 () Bool)

(declare-fun res!249348 () Bool)

(assert (=> b!425614 (=> (not res!249348) (not e!252622))))

(assert (=> b!425614 (= res!249348 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12797 _keys!709))))))

(declare-fun b!425615 () Bool)

(declare-fun res!249345 () Bool)

(assert (=> b!425615 (=> (not res!249345) (not e!252622))))

(assert (=> b!425615 (= res!249345 (or (= (select (arr!12445 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12445 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!425616 () Bool)

(declare-fun res!249346 () Bool)

(declare-fun e!252620 () Bool)

(assert (=> b!425616 (=> (not res!249346) (not e!252620))))

(assert (=> b!425616 (= res!249346 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!18249 () Bool)

(declare-fun mapRes!18249 () Bool)

(declare-fun tp!35327 () Bool)

(declare-fun e!252617 () Bool)

(assert (=> mapNonEmpty!18249 (= mapRes!18249 (and tp!35327 e!252617))))

(declare-fun mapRest!18249 () (Array (_ BitVec 32) ValueCell!5199))

(declare-fun mapKey!18249 () (_ BitVec 32))

(declare-fun mapValue!18249 () ValueCell!5199)

(assert (=> mapNonEmpty!18249 (= (arr!12444 _values!549) (store mapRest!18249 mapKey!18249 mapValue!18249))))

(declare-fun b!425617 () Bool)

(assert (=> b!425617 (= e!252622 e!252620)))

(declare-fun res!249350 () Bool)

(assert (=> b!425617 (=> (not res!249350) (not e!252620))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25997 (_ BitVec 32)) Bool)

(assert (=> b!425617 (= res!249350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194727 mask!1025))))

(assert (=> b!425617 (= lt!194727 (array!25998 (store (arr!12445 _keys!709) i!563 k0!794) (size!12797 _keys!709)))))

(declare-fun res!249341 () Bool)

(assert (=> start!39674 (=> (not res!249341) (not e!252622))))

(assert (=> start!39674 (= res!249341 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12797 _keys!709))))))

(assert (=> start!39674 e!252622))

(declare-fun tp_is_empty!11085 () Bool)

(assert (=> start!39674 tp_is_empty!11085))

(assert (=> start!39674 tp!35328))

(assert (=> start!39674 true))

(declare-fun e!252616 () Bool)

(declare-fun array_inv!9068 (array!25995) Bool)

(assert (=> start!39674 (and (array_inv!9068 _values!549) e!252616)))

(declare-fun array_inv!9069 (array!25997) Bool)

(assert (=> start!39674 (array_inv!9069 _keys!709)))

(declare-fun b!425618 () Bool)

(declare-fun res!249343 () Bool)

(assert (=> b!425618 (=> (not res!249343) (not e!252622))))

(declare-datatypes ((List!7324 0))(
  ( (Nil!7321) (Cons!7320 (h!8176 (_ BitVec 64)) (t!12776 List!7324)) )
))
(declare-fun arrayNoDuplicates!0 (array!25997 (_ BitVec 32) List!7324) Bool)

(assert (=> b!425618 (= res!249343 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7321))))

(declare-fun b!425619 () Bool)

(declare-fun res!249351 () Bool)

(assert (=> b!425619 (=> (not res!249351) (not e!252622))))

(assert (=> b!425619 (= res!249351 (and (= (size!12796 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12797 _keys!709) (size!12796 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!425620 () Bool)

(declare-fun e!252621 () Bool)

(assert (=> b!425620 (= e!252616 (and e!252621 mapRes!18249))))

(declare-fun condMapEmpty!18249 () Bool)

(declare-fun mapDefault!18249 () ValueCell!5199)

(assert (=> b!425620 (= condMapEmpty!18249 (= (arr!12444 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5199)) mapDefault!18249)))))

(declare-fun b!425621 () Bool)

(declare-fun res!249344 () Bool)

(assert (=> b!425621 (=> (not res!249344) (not e!252622))))

(assert (=> b!425621 (= res!249344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!425622 () Bool)

(assert (=> b!425622 (= e!252620 e!252618)))

(declare-fun res!249342 () Bool)

(assert (=> b!425622 (=> (not res!249342) (not e!252618))))

(assert (=> b!425622 (= res!249342 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!194729 () ListLongMap!6205)

(assert (=> b!425622 (= lt!194729 (getCurrentListMapNoExtraKeys!1319 lt!194727 lt!194730 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!425622 (= lt!194730 (array!25996 (store (arr!12444 _values!549) i!563 (ValueCellFull!5199 v!412)) (size!12796 _values!549)))))

(declare-fun lt!194726 () ListLongMap!6205)

(assert (=> b!425622 (= lt!194726 (getCurrentListMapNoExtraKeys!1319 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!18249 () Bool)

(assert (=> mapIsEmpty!18249 mapRes!18249))

(declare-fun b!425623 () Bool)

(declare-fun res!249347 () Bool)

(assert (=> b!425623 (=> (not res!249347) (not e!252620))))

(assert (=> b!425623 (= res!249347 (arrayNoDuplicates!0 lt!194727 #b00000000000000000000000000000000 Nil!7321))))

(declare-fun b!425624 () Bool)

(declare-fun res!249339 () Bool)

(assert (=> b!425624 (=> (not res!249339) (not e!252622))))

(declare-fun arrayContainsKey!0 (array!25997 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!425624 (= res!249339 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!425625 () Bool)

(assert (=> b!425625 (= e!252621 tp_is_empty!11085)))

(declare-fun b!425626 () Bool)

(assert (=> b!425626 (= e!252617 tp_is_empty!11085)))

(declare-fun b!425627 () Bool)

(declare-fun res!249349 () Bool)

(assert (=> b!425627 (=> (not res!249349) (not e!252622))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!425627 (= res!249349 (validKeyInArray!0 k0!794))))

(assert (= (and start!39674 res!249341) b!425613))

(assert (= (and b!425613 res!249340) b!425619))

(assert (= (and b!425619 res!249351) b!425621))

(assert (= (and b!425621 res!249344) b!425618))

(assert (= (and b!425618 res!249343) b!425614))

(assert (= (and b!425614 res!249348) b!425627))

(assert (= (and b!425627 res!249349) b!425615))

(assert (= (and b!425615 res!249345) b!425624))

(assert (= (and b!425624 res!249339) b!425617))

(assert (= (and b!425617 res!249350) b!425623))

(assert (= (and b!425623 res!249347) b!425616))

(assert (= (and b!425616 res!249346) b!425622))

(assert (= (and b!425622 res!249342) b!425612))

(assert (= (and b!425620 condMapEmpty!18249) mapIsEmpty!18249))

(assert (= (and b!425620 (not condMapEmpty!18249)) mapNonEmpty!18249))

(get-info :version)

(assert (= (and mapNonEmpty!18249 ((_ is ValueCellFull!5199) mapValue!18249)) b!425626))

(assert (= (and b!425620 ((_ is ValueCellFull!5199) mapDefault!18249)) b!425625))

(assert (= start!39674 b!425620))

(declare-fun m!414471 () Bool)

(assert (=> b!425627 m!414471))

(declare-fun m!414473 () Bool)

(assert (=> b!425612 m!414473))

(declare-fun m!414475 () Bool)

(assert (=> b!425612 m!414475))

(assert (=> b!425612 m!414475))

(declare-fun m!414477 () Bool)

(assert (=> b!425612 m!414477))

(declare-fun m!414479 () Bool)

(assert (=> b!425612 m!414479))

(declare-fun m!414481 () Bool)

(assert (=> start!39674 m!414481))

(declare-fun m!414483 () Bool)

(assert (=> start!39674 m!414483))

(declare-fun m!414485 () Bool)

(assert (=> b!425615 m!414485))

(declare-fun m!414487 () Bool)

(assert (=> b!425617 m!414487))

(declare-fun m!414489 () Bool)

(assert (=> b!425617 m!414489))

(declare-fun m!414491 () Bool)

(assert (=> b!425622 m!414491))

(declare-fun m!414493 () Bool)

(assert (=> b!425622 m!414493))

(declare-fun m!414495 () Bool)

(assert (=> b!425622 m!414495))

(declare-fun m!414497 () Bool)

(assert (=> b!425624 m!414497))

(declare-fun m!414499 () Bool)

(assert (=> b!425613 m!414499))

(declare-fun m!414501 () Bool)

(assert (=> b!425618 m!414501))

(declare-fun m!414503 () Bool)

(assert (=> mapNonEmpty!18249 m!414503))

(declare-fun m!414505 () Bool)

(assert (=> b!425621 m!414505))

(declare-fun m!414507 () Bool)

(assert (=> b!425623 m!414507))

(check-sat (not b!425621) (not b!425624) (not b_next!9933) (not b!425622) tp_is_empty!11085 (not b!425612) (not b!425613) (not b!425617) (not mapNonEmpty!18249) (not b!425627) (not b!425618) (not start!39674) b_and!17607 (not b!425623))
(check-sat b_and!17607 (not b_next!9933))
