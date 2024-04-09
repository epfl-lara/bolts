; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39884 () Bool)

(assert start!39884)

(declare-fun b_free!10143 () Bool)

(declare-fun b_next!10143 () Bool)

(assert (=> start!39884 (= b_free!10143 (not b_next!10143))))

(declare-fun tp!35957 () Bool)

(declare-fun b_and!17963 () Bool)

(assert (=> start!39884 (= tp!35957 b_and!17963)))

(declare-fun b!431439 () Bool)

(declare-fun res!253742 () Bool)

(declare-fun e!255301 () Bool)

(assert (=> b!431439 (=> (not res!253742) (not e!255301))))

(declare-datatypes ((array!26403 0))(
  ( (array!26404 (arr!12648 (Array (_ BitVec 32) (_ BitVec 64))) (size!13000 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26403)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26403 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!431439 (= res!253742 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!431440 () Bool)

(declare-datatypes ((Unit!12690 0))(
  ( (Unit!12691) )
))
(declare-fun e!255304 () Unit!12690)

(declare-fun Unit!12692 () Unit!12690)

(assert (=> b!431440 (= e!255304 Unit!12692)))

(declare-fun b!431441 () Bool)

(declare-fun res!253747 () Bool)

(assert (=> b!431441 (=> (not res!253747) (not e!255301))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!431441 (= res!253747 (validMask!0 mask!1025))))

(declare-fun b!431442 () Bool)

(declare-fun res!253748 () Bool)

(assert (=> b!431442 (=> (not res!253748) (not e!255301))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!431442 (= res!253748 (or (= (select (arr!12648 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12648 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431443 () Bool)

(declare-fun e!255299 () Bool)

(declare-fun tp_is_empty!11295 () Bool)

(assert (=> b!431443 (= e!255299 tp_is_empty!11295)))

(declare-fun b!431444 () Bool)

(declare-fun e!255303 () Bool)

(declare-fun e!255302 () Bool)

(assert (=> b!431444 (= e!255303 e!255302)))

(declare-fun res!253745 () Bool)

(assert (=> b!431444 (=> res!253745 e!255302)))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!431444 (= res!253745 (= k0!794 (select (arr!12648 _keys!709) from!863)))))

(assert (=> b!431444 (not (= (select (arr!12648 _keys!709) from!863) k0!794))))

(declare-fun lt!197692 () Unit!12690)

(assert (=> b!431444 (= lt!197692 e!255304)))

(declare-fun c!55475 () Bool)

(assert (=> b!431444 (= c!55475 (= (select (arr!12648 _keys!709) from!863) k0!794))))

(declare-datatypes ((V!16165 0))(
  ( (V!16166 (val!5692 Int)) )
))
(declare-datatypes ((tuple2!7442 0))(
  ( (tuple2!7443 (_1!3731 (_ BitVec 64)) (_2!3731 V!16165)) )
))
(declare-datatypes ((List!7494 0))(
  ( (Nil!7491) (Cons!7490 (h!8346 tuple2!7442) (t!13094 List!7494)) )
))
(declare-datatypes ((ListLongMap!6369 0))(
  ( (ListLongMap!6370 (toList!3200 List!7494)) )
))
(declare-fun lt!197695 () ListLongMap!6369)

(declare-fun lt!197694 () ListLongMap!6369)

(assert (=> b!431444 (= lt!197695 lt!197694)))

(declare-fun lt!197690 () ListLongMap!6369)

(declare-fun lt!197683 () tuple2!7442)

(declare-fun +!1347 (ListLongMap!6369 tuple2!7442) ListLongMap!6369)

(assert (=> b!431444 (= lt!197694 (+!1347 lt!197690 lt!197683))))

(declare-fun lt!197685 () V!16165)

(assert (=> b!431444 (= lt!197683 (tuple2!7443 (select (arr!12648 _keys!709) from!863) lt!197685))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5304 0))(
  ( (ValueCellFull!5304 (v!7935 V!16165)) (EmptyCell!5304) )
))
(declare-datatypes ((array!26405 0))(
  ( (array!26406 (arr!12649 (Array (_ BitVec 32) ValueCell!5304)) (size!13001 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26405)

(declare-fun get!6288 (ValueCell!5304 V!16165) V!16165)

(declare-fun dynLambda!787 (Int (_ BitVec 64)) V!16165)

(assert (=> b!431444 (= lt!197685 (get!6288 (select (arr!12649 _values!549) from!863) (dynLambda!787 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18564 () Bool)

(declare-fun mapRes!18564 () Bool)

(declare-fun tp!35958 () Bool)

(declare-fun e!255295 () Bool)

(assert (=> mapNonEmpty!18564 (= mapRes!18564 (and tp!35958 e!255295))))

(declare-fun mapKey!18564 () (_ BitVec 32))

(declare-fun mapRest!18564 () (Array (_ BitVec 32) ValueCell!5304))

(declare-fun mapValue!18564 () ValueCell!5304)

(assert (=> mapNonEmpty!18564 (= (arr!12649 _values!549) (store mapRest!18564 mapKey!18564 mapValue!18564))))

(declare-fun b!431446 () Bool)

(assert (=> b!431446 (= e!255295 tp_is_empty!11295)))

(declare-fun b!431447 () Bool)

(declare-fun res!253753 () Bool)

(assert (=> b!431447 (=> (not res!253753) (not e!255301))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!431447 (= res!253753 (validKeyInArray!0 k0!794))))

(declare-fun b!431448 () Bool)

(declare-fun res!253754 () Bool)

(assert (=> b!431448 (=> (not res!253754) (not e!255301))))

(declare-datatypes ((List!7495 0))(
  ( (Nil!7492) (Cons!7491 (h!8347 (_ BitVec 64)) (t!13095 List!7495)) )
))
(declare-fun arrayNoDuplicates!0 (array!26403 (_ BitVec 32) List!7495) Bool)

(assert (=> b!431448 (= res!253754 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7492))))

(declare-fun b!431449 () Bool)

(declare-fun e!255300 () Bool)

(assert (=> b!431449 (= e!255300 (and e!255299 mapRes!18564))))

(declare-fun condMapEmpty!18564 () Bool)

(declare-fun mapDefault!18564 () ValueCell!5304)

(assert (=> b!431449 (= condMapEmpty!18564 (= (arr!12649 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5304)) mapDefault!18564)))))

(declare-fun b!431450 () Bool)

(declare-fun res!253746 () Bool)

(assert (=> b!431450 (=> (not res!253746) (not e!255301))))

(assert (=> b!431450 (= res!253746 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13000 _keys!709))))))

(declare-fun b!431451 () Bool)

(declare-fun e!255296 () Bool)

(declare-fun e!255297 () Bool)

(assert (=> b!431451 (= e!255296 e!255297)))

(declare-fun res!253741 () Bool)

(assert (=> b!431451 (=> (not res!253741) (not e!255297))))

(assert (=> b!431451 (= res!253741 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16165)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!197696 () array!26403)

(declare-fun lt!197688 () array!26405)

(declare-fun zeroValue!515 () V!16165)

(declare-fun getCurrentListMapNoExtraKeys!1394 (array!26403 array!26405 (_ BitVec 32) (_ BitVec 32) V!16165 V!16165 (_ BitVec 32) Int) ListLongMap!6369)

(assert (=> b!431451 (= lt!197695 (getCurrentListMapNoExtraKeys!1394 lt!197696 lt!197688 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16165)

(assert (=> b!431451 (= lt!197688 (array!26406 (store (arr!12649 _values!549) i!563 (ValueCellFull!5304 v!412)) (size!13001 _values!549)))))

(declare-fun lt!197686 () ListLongMap!6369)

(assert (=> b!431451 (= lt!197686 (getCurrentListMapNoExtraKeys!1394 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!431452 () Bool)

(assert (=> b!431452 (= e!255301 e!255296)))

(declare-fun res!253749 () Bool)

(assert (=> b!431452 (=> (not res!253749) (not e!255296))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26403 (_ BitVec 32)) Bool)

(assert (=> b!431452 (= res!253749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!197696 mask!1025))))

(assert (=> b!431452 (= lt!197696 (array!26404 (store (arr!12648 _keys!709) i!563 k0!794) (size!13000 _keys!709)))))

(declare-fun b!431453 () Bool)

(declare-fun res!253752 () Bool)

(assert (=> b!431453 (=> (not res!253752) (not e!255296))))

(assert (=> b!431453 (= res!253752 (arrayNoDuplicates!0 lt!197696 #b00000000000000000000000000000000 Nil!7492))))

(declare-fun b!431445 () Bool)

(declare-fun res!253743 () Bool)

(assert (=> b!431445 (=> (not res!253743) (not e!255301))))

(assert (=> b!431445 (= res!253743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!253744 () Bool)

(assert (=> start!39884 (=> (not res!253744) (not e!255301))))

(assert (=> start!39884 (= res!253744 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13000 _keys!709))))))

(assert (=> start!39884 e!255301))

(assert (=> start!39884 tp_is_empty!11295))

(assert (=> start!39884 tp!35957))

(assert (=> start!39884 true))

(declare-fun array_inv!9198 (array!26405) Bool)

(assert (=> start!39884 (and (array_inv!9198 _values!549) e!255300)))

(declare-fun array_inv!9199 (array!26403) Bool)

(assert (=> start!39884 (array_inv!9199 _keys!709)))

(declare-fun mapIsEmpty!18564 () Bool)

(assert (=> mapIsEmpty!18564 mapRes!18564))

(declare-fun b!431454 () Bool)

(assert (=> b!431454 (= e!255302 true)))

(declare-fun lt!197693 () ListLongMap!6369)

(declare-fun lt!197684 () tuple2!7442)

(assert (=> b!431454 (= lt!197694 (+!1347 (+!1347 lt!197693 lt!197683) lt!197684))))

(declare-fun lt!197691 () Unit!12690)

(declare-fun addCommutativeForDiffKeys!362 (ListLongMap!6369 (_ BitVec 64) V!16165 (_ BitVec 64) V!16165) Unit!12690)

(assert (=> b!431454 (= lt!197691 (addCommutativeForDiffKeys!362 lt!197693 k0!794 v!412 (select (arr!12648 _keys!709) from!863) lt!197685))))

(declare-fun b!431455 () Bool)

(declare-fun Unit!12693 () Unit!12690)

(assert (=> b!431455 (= e!255304 Unit!12693)))

(declare-fun lt!197687 () Unit!12690)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26403 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12690)

(assert (=> b!431455 (= lt!197687 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!431455 false))

(declare-fun b!431456 () Bool)

(declare-fun res!253755 () Bool)

(assert (=> b!431456 (=> (not res!253755) (not e!255296))))

(assert (=> b!431456 (= res!253755 (bvsle from!863 i!563))))

(declare-fun b!431457 () Bool)

(assert (=> b!431457 (= e!255297 (not e!255303))))

(declare-fun res!253751 () Bool)

(assert (=> b!431457 (=> res!253751 e!255303)))

(assert (=> b!431457 (= res!253751 (not (validKeyInArray!0 (select (arr!12648 _keys!709) from!863))))))

(declare-fun lt!197689 () ListLongMap!6369)

(assert (=> b!431457 (= lt!197689 lt!197690)))

(assert (=> b!431457 (= lt!197690 (+!1347 lt!197693 lt!197684))))

(assert (=> b!431457 (= lt!197689 (getCurrentListMapNoExtraKeys!1394 lt!197696 lt!197688 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!431457 (= lt!197684 (tuple2!7443 k0!794 v!412))))

(assert (=> b!431457 (= lt!197693 (getCurrentListMapNoExtraKeys!1394 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!197697 () Unit!12690)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!539 (array!26403 array!26405 (_ BitVec 32) (_ BitVec 32) V!16165 V!16165 (_ BitVec 32) (_ BitVec 64) V!16165 (_ BitVec 32) Int) Unit!12690)

(assert (=> b!431457 (= lt!197697 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!539 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!431458 () Bool)

(declare-fun res!253750 () Bool)

(assert (=> b!431458 (=> (not res!253750) (not e!255301))))

(assert (=> b!431458 (= res!253750 (and (= (size!13001 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13000 _keys!709) (size!13001 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(assert (= (and start!39884 res!253744) b!431441))

(assert (= (and b!431441 res!253747) b!431458))

(assert (= (and b!431458 res!253750) b!431445))

(assert (= (and b!431445 res!253743) b!431448))

(assert (= (and b!431448 res!253754) b!431450))

(assert (= (and b!431450 res!253746) b!431447))

(assert (= (and b!431447 res!253753) b!431442))

(assert (= (and b!431442 res!253748) b!431439))

(assert (= (and b!431439 res!253742) b!431452))

(assert (= (and b!431452 res!253749) b!431453))

(assert (= (and b!431453 res!253752) b!431456))

(assert (= (and b!431456 res!253755) b!431451))

(assert (= (and b!431451 res!253741) b!431457))

(assert (= (and b!431457 (not res!253751)) b!431444))

(assert (= (and b!431444 c!55475) b!431455))

(assert (= (and b!431444 (not c!55475)) b!431440))

(assert (= (and b!431444 (not res!253745)) b!431454))

(assert (= (and b!431449 condMapEmpty!18564) mapIsEmpty!18564))

(assert (= (and b!431449 (not condMapEmpty!18564)) mapNonEmpty!18564))

(get-info :version)

(assert (= (and mapNonEmpty!18564 ((_ is ValueCellFull!5304) mapValue!18564)) b!431446))

(assert (= (and b!431449 ((_ is ValueCellFull!5304) mapDefault!18564)) b!431443))

(assert (= start!39884 b!431449))

(declare-fun b_lambda!9261 () Bool)

(assert (=> (not b_lambda!9261) (not b!431444)))

(declare-fun t!13093 () Bool)

(declare-fun tb!3557 () Bool)

(assert (=> (and start!39884 (= defaultEntry!557 defaultEntry!557) t!13093) tb!3557))

(declare-fun result!6633 () Bool)

(assert (=> tb!3557 (= result!6633 tp_is_empty!11295)))

(assert (=> b!431444 t!13093))

(declare-fun b_and!17965 () Bool)

(assert (= b_and!17963 (and (=> t!13093 result!6633) b_and!17965)))

(declare-fun m!419609 () Bool)

(assert (=> mapNonEmpty!18564 m!419609))

(declare-fun m!419611 () Bool)

(assert (=> b!431457 m!419611))

(declare-fun m!419613 () Bool)

(assert (=> b!431457 m!419613))

(declare-fun m!419615 () Bool)

(assert (=> b!431457 m!419615))

(declare-fun m!419617 () Bool)

(assert (=> b!431457 m!419617))

(assert (=> b!431457 m!419611))

(declare-fun m!419619 () Bool)

(assert (=> b!431457 m!419619))

(declare-fun m!419621 () Bool)

(assert (=> b!431457 m!419621))

(declare-fun m!419623 () Bool)

(assert (=> b!431453 m!419623))

(declare-fun m!419625 () Bool)

(assert (=> b!431455 m!419625))

(assert (=> b!431444 m!419611))

(declare-fun m!419627 () Bool)

(assert (=> b!431444 m!419627))

(declare-fun m!419629 () Bool)

(assert (=> b!431444 m!419629))

(declare-fun m!419631 () Bool)

(assert (=> b!431444 m!419631))

(assert (=> b!431444 m!419629))

(assert (=> b!431444 m!419627))

(declare-fun m!419633 () Bool)

(assert (=> b!431444 m!419633))

(declare-fun m!419635 () Bool)

(assert (=> start!39884 m!419635))

(declare-fun m!419637 () Bool)

(assert (=> start!39884 m!419637))

(declare-fun m!419639 () Bool)

(assert (=> b!431441 m!419639))

(declare-fun m!419641 () Bool)

(assert (=> b!431442 m!419641))

(declare-fun m!419643 () Bool)

(assert (=> b!431448 m!419643))

(declare-fun m!419645 () Bool)

(assert (=> b!431454 m!419645))

(assert (=> b!431454 m!419645))

(declare-fun m!419647 () Bool)

(assert (=> b!431454 m!419647))

(assert (=> b!431454 m!419611))

(assert (=> b!431454 m!419611))

(declare-fun m!419649 () Bool)

(assert (=> b!431454 m!419649))

(declare-fun m!419651 () Bool)

(assert (=> b!431452 m!419651))

(declare-fun m!419653 () Bool)

(assert (=> b!431452 m!419653))

(declare-fun m!419655 () Bool)

(assert (=> b!431447 m!419655))

(declare-fun m!419657 () Bool)

(assert (=> b!431451 m!419657))

(declare-fun m!419659 () Bool)

(assert (=> b!431451 m!419659))

(declare-fun m!419661 () Bool)

(assert (=> b!431451 m!419661))

(declare-fun m!419663 () Bool)

(assert (=> b!431445 m!419663))

(declare-fun m!419665 () Bool)

(assert (=> b!431439 m!419665))

(check-sat tp_is_empty!11295 (not b_next!10143) b_and!17965 (not b!431439) (not b!431451) (not start!39884) (not b!431444) (not b!431455) (not b!431452) (not b!431457) (not b!431454) (not b_lambda!9261) (not mapNonEmpty!18564) (not b!431441) (not b!431453) (not b!431448) (not b!431447) (not b!431445))
(check-sat b_and!17965 (not b_next!10143))
