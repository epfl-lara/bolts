; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39230 () Bool)

(assert start!39230)

(declare-fun b_free!9489 () Bool)

(declare-fun b_next!9489 () Bool)

(assert (=> start!39230 (= b_free!9489 (not b_next!9489))))

(declare-fun tp!33996 () Bool)

(declare-fun b_and!16893 () Bool)

(assert (=> start!39230 (= tp!33996 b_and!16893)))

(declare-fun e!247268 () Bool)

(declare-datatypes ((V!15293 0))(
  ( (V!15294 (val!5365 Int)) )
))
(declare-datatypes ((tuple2!6898 0))(
  ( (tuple2!6899 (_1!3459 (_ BitVec 64)) (_2!3459 V!15293)) )
))
(declare-datatypes ((List!6959 0))(
  ( (Nil!6956) (Cons!6955 (h!7811 tuple2!6898) (t!12141 List!6959)) )
))
(declare-datatypes ((ListLongMap!5825 0))(
  ( (ListLongMap!5826 (toList!2928 List!6959)) )
))
(declare-fun call!28642 () ListLongMap!5825)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun call!28643 () ListLongMap!5825)

(declare-fun b!413562 () Bool)

(declare-fun v!412 () V!15293)

(declare-fun +!1148 (ListLongMap!5825 tuple2!6898) ListLongMap!5825)

(assert (=> b!413562 (= e!247268 (= call!28643 (+!1148 call!28642 (tuple2!6899 k0!794 v!412))))))

(declare-fun b!413564 () Bool)

(declare-fun e!247267 () Bool)

(declare-fun e!247272 () Bool)

(assert (=> b!413564 (= e!247267 e!247272)))

(declare-fun res!240433 () Bool)

(assert (=> b!413564 (=> (not res!240433) (not e!247272))))

(declare-datatypes ((array!25121 0))(
  ( (array!25122 (arr!12007 (Array (_ BitVec 32) (_ BitVec 64))) (size!12359 (_ BitVec 32))) )
))
(declare-fun lt!189780 () array!25121)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25121 (_ BitVec 32)) Bool)

(assert (=> b!413564 (= res!240433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189780 mask!1025))))

(declare-fun _keys!709 () array!25121)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!413564 (= lt!189780 (array!25122 (store (arr!12007 _keys!709) i!563 k0!794) (size!12359 _keys!709)))))

(declare-fun b!413565 () Bool)

(declare-fun res!240431 () Bool)

(assert (=> b!413565 (=> (not res!240431) (not e!247272))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!413565 (= res!240431 (bvsle from!863 i!563))))

(declare-fun b!413566 () Bool)

(declare-fun e!247266 () Bool)

(declare-fun e!247269 () Bool)

(declare-fun mapRes!17583 () Bool)

(assert (=> b!413566 (= e!247266 (and e!247269 mapRes!17583))))

(declare-fun condMapEmpty!17583 () Bool)

(declare-datatypes ((ValueCell!4977 0))(
  ( (ValueCellFull!4977 (v!7608 V!15293)) (EmptyCell!4977) )
))
(declare-datatypes ((array!25123 0))(
  ( (array!25124 (arr!12008 (Array (_ BitVec 32) ValueCell!4977)) (size!12360 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25123)

(declare-fun mapDefault!17583 () ValueCell!4977)

(assert (=> b!413566 (= condMapEmpty!17583 (= (arr!12008 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4977)) mapDefault!17583)))))

(declare-fun mapNonEmpty!17583 () Bool)

(declare-fun tp!33995 () Bool)

(declare-fun e!247271 () Bool)

(assert (=> mapNonEmpty!17583 (= mapRes!17583 (and tp!33995 e!247271))))

(declare-fun mapValue!17583 () ValueCell!4977)

(declare-fun mapKey!17583 () (_ BitVec 32))

(declare-fun mapRest!17583 () (Array (_ BitVec 32) ValueCell!4977))

(assert (=> mapNonEmpty!17583 (= (arr!12008 _values!549) (store mapRest!17583 mapKey!17583 mapValue!17583))))

(declare-fun b!413567 () Bool)

(declare-fun res!240441 () Bool)

(assert (=> b!413567 (=> (not res!240441) (not e!247267))))

(assert (=> b!413567 (= res!240441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!413568 () Bool)

(assert (=> b!413568 (= e!247268 (= call!28642 call!28643))))

(declare-fun b!413569 () Bool)

(declare-fun tp_is_empty!10641 () Bool)

(assert (=> b!413569 (= e!247271 tp_is_empty!10641)))

(declare-fun b!413570 () Bool)

(assert (=> b!413570 (= e!247269 tp_is_empty!10641)))

(declare-fun b!413571 () Bool)

(declare-fun res!240430 () Bool)

(assert (=> b!413571 (=> (not res!240430) (not e!247267))))

(assert (=> b!413571 (= res!240430 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12359 _keys!709))))))

(declare-fun b!413572 () Bool)

(declare-fun res!240438 () Bool)

(assert (=> b!413572 (=> (not res!240438) (not e!247267))))

(assert (=> b!413572 (= res!240438 (or (= (select (arr!12007 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12007 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!413563 () Bool)

(declare-fun res!240435 () Bool)

(assert (=> b!413563 (=> (not res!240435) (not e!247267))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!413563 (= res!240435 (and (= (size!12360 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12359 _keys!709) (size!12360 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!240432 () Bool)

(assert (=> start!39230 (=> (not res!240432) (not e!247267))))

(assert (=> start!39230 (= res!240432 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12359 _keys!709))))))

(assert (=> start!39230 e!247267))

(assert (=> start!39230 tp_is_empty!10641))

(assert (=> start!39230 tp!33996))

(assert (=> start!39230 true))

(declare-fun array_inv!8758 (array!25123) Bool)

(assert (=> start!39230 (and (array_inv!8758 _values!549) e!247266)))

(declare-fun array_inv!8759 (array!25121) Bool)

(assert (=> start!39230 (array_inv!8759 _keys!709)))

(declare-fun b!413573 () Bool)

(declare-fun res!240439 () Bool)

(assert (=> b!413573 (=> (not res!240439) (not e!247267))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!413573 (= res!240439 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!17583 () Bool)

(assert (=> mapIsEmpty!17583 mapRes!17583))

(declare-fun b!413574 () Bool)

(declare-fun res!240434 () Bool)

(assert (=> b!413574 (=> (not res!240434) (not e!247267))))

(declare-fun arrayContainsKey!0 (array!25121 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!413574 (= res!240434 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun lt!189776 () array!25123)

(declare-fun minValue!515 () V!15293)

(declare-fun c!54872 () Bool)

(declare-fun bm!28639 () Bool)

(declare-fun zeroValue!515 () V!15293)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1136 (array!25121 array!25123 (_ BitVec 32) (_ BitVec 32) V!15293 V!15293 (_ BitVec 32) Int) ListLongMap!5825)

(assert (=> bm!28639 (= call!28642 (getCurrentListMapNoExtraKeys!1136 (ite c!54872 _keys!709 lt!189780) (ite c!54872 _values!549 lt!189776) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413575 () Bool)

(declare-fun e!247270 () Bool)

(assert (=> b!413575 (= e!247272 e!247270)))

(declare-fun res!240437 () Bool)

(assert (=> b!413575 (=> (not res!240437) (not e!247270))))

(assert (=> b!413575 (= res!240437 (= from!863 i!563))))

(declare-fun lt!189779 () ListLongMap!5825)

(assert (=> b!413575 (= lt!189779 (getCurrentListMapNoExtraKeys!1136 lt!189780 lt!189776 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!413575 (= lt!189776 (array!25124 (store (arr!12008 _values!549) i!563 (ValueCellFull!4977 v!412)) (size!12360 _values!549)))))

(declare-fun lt!189777 () ListLongMap!5825)

(assert (=> b!413575 (= lt!189777 (getCurrentListMapNoExtraKeys!1136 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!413576 () Bool)

(declare-fun res!240436 () Bool)

(assert (=> b!413576 (=> (not res!240436) (not e!247267))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!413576 (= res!240436 (validKeyInArray!0 k0!794))))

(declare-fun bm!28640 () Bool)

(assert (=> bm!28640 (= call!28643 (getCurrentListMapNoExtraKeys!1136 (ite c!54872 lt!189780 _keys!709) (ite c!54872 lt!189776 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413577 () Bool)

(declare-fun res!240429 () Bool)

(assert (=> b!413577 (=> (not res!240429) (not e!247267))))

(declare-datatypes ((List!6960 0))(
  ( (Nil!6957) (Cons!6956 (h!7812 (_ BitVec 64)) (t!12142 List!6960)) )
))
(declare-fun arrayNoDuplicates!0 (array!25121 (_ BitVec 32) List!6960) Bool)

(assert (=> b!413577 (= res!240429 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6957))))

(declare-fun b!413578 () Bool)

(assert (=> b!413578 (= e!247270 (not true))))

(assert (=> b!413578 e!247268))

(assert (=> b!413578 (= c!54872 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12195 0))(
  ( (Unit!12196) )
))
(declare-fun lt!189778 () Unit!12195)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!360 (array!25121 array!25123 (_ BitVec 32) (_ BitVec 32) V!15293 V!15293 (_ BitVec 32) (_ BitVec 64) V!15293 (_ BitVec 32) Int) Unit!12195)

(assert (=> b!413578 (= lt!189778 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!360 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413579 () Bool)

(declare-fun res!240440 () Bool)

(assert (=> b!413579 (=> (not res!240440) (not e!247272))))

(assert (=> b!413579 (= res!240440 (arrayNoDuplicates!0 lt!189780 #b00000000000000000000000000000000 Nil!6957))))

(assert (= (and start!39230 res!240432) b!413573))

(assert (= (and b!413573 res!240439) b!413563))

(assert (= (and b!413563 res!240435) b!413567))

(assert (= (and b!413567 res!240441) b!413577))

(assert (= (and b!413577 res!240429) b!413571))

(assert (= (and b!413571 res!240430) b!413576))

(assert (= (and b!413576 res!240436) b!413572))

(assert (= (and b!413572 res!240438) b!413574))

(assert (= (and b!413574 res!240434) b!413564))

(assert (= (and b!413564 res!240433) b!413579))

(assert (= (and b!413579 res!240440) b!413565))

(assert (= (and b!413565 res!240431) b!413575))

(assert (= (and b!413575 res!240437) b!413578))

(assert (= (and b!413578 c!54872) b!413562))

(assert (= (and b!413578 (not c!54872)) b!413568))

(assert (= (or b!413562 b!413568) bm!28640))

(assert (= (or b!413562 b!413568) bm!28639))

(assert (= (and b!413566 condMapEmpty!17583) mapIsEmpty!17583))

(assert (= (and b!413566 (not condMapEmpty!17583)) mapNonEmpty!17583))

(get-info :version)

(assert (= (and mapNonEmpty!17583 ((_ is ValueCellFull!4977) mapValue!17583)) b!413569))

(assert (= (and b!413566 ((_ is ValueCellFull!4977) mapDefault!17583)) b!413570))

(assert (= start!39230 b!413566))

(declare-fun m!403007 () Bool)

(assert (=> bm!28640 m!403007))

(declare-fun m!403009 () Bool)

(assert (=> b!413567 m!403009))

(declare-fun m!403011 () Bool)

(assert (=> b!413573 m!403011))

(declare-fun m!403013 () Bool)

(assert (=> b!413579 m!403013))

(declare-fun m!403015 () Bool)

(assert (=> b!413562 m!403015))

(declare-fun m!403017 () Bool)

(assert (=> b!413576 m!403017))

(declare-fun m!403019 () Bool)

(assert (=> b!413577 m!403019))

(declare-fun m!403021 () Bool)

(assert (=> mapNonEmpty!17583 m!403021))

(declare-fun m!403023 () Bool)

(assert (=> b!413578 m!403023))

(declare-fun m!403025 () Bool)

(assert (=> b!413574 m!403025))

(declare-fun m!403027 () Bool)

(assert (=> b!413564 m!403027))

(declare-fun m!403029 () Bool)

(assert (=> b!413564 m!403029))

(declare-fun m!403031 () Bool)

(assert (=> bm!28639 m!403031))

(declare-fun m!403033 () Bool)

(assert (=> start!39230 m!403033))

(declare-fun m!403035 () Bool)

(assert (=> start!39230 m!403035))

(declare-fun m!403037 () Bool)

(assert (=> b!413575 m!403037))

(declare-fun m!403039 () Bool)

(assert (=> b!413575 m!403039))

(declare-fun m!403041 () Bool)

(assert (=> b!413575 m!403041))

(declare-fun m!403043 () Bool)

(assert (=> b!413572 m!403043))

(check-sat (not b_next!9489) (not b!413564) (not b!413576) (not bm!28639) (not b!413562) (not b!413577) (not b!413573) (not start!39230) (not b!413575) (not b!413574) tp_is_empty!10641 (not mapNonEmpty!17583) (not b!413567) (not bm!28640) (not b!413578) (not b!413579) b_and!16893)
(check-sat b_and!16893 (not b_next!9489))
