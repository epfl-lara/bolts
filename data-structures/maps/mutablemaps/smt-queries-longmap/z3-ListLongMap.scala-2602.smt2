; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39440 () Bool)

(assert start!39440)

(declare-fun b_free!9699 () Bool)

(declare-fun b_next!9699 () Bool)

(assert (=> start!39440 (= b_free!9699 (not b_next!9699))))

(declare-fun tp!34625 () Bool)

(declare-fun b_and!17291 () Bool)

(assert (=> start!39440 (= tp!34625 b_and!17291)))

(declare-fun b!419713 () Bool)

(declare-fun res!244829 () Bool)

(declare-fun e!250086 () Bool)

(assert (=> b!419713 (=> (not res!244829) (not e!250086))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!419713 (= res!244829 (validMask!0 mask!1025))))

(declare-fun b!419714 () Bool)

(declare-fun res!244830 () Bool)

(assert (=> b!419714 (=> (not res!244830) (not e!250086))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25533 0))(
  ( (array!25534 (arr!12213 (Array (_ BitVec 32) (_ BitVec 64))) (size!12565 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25533)

(assert (=> b!419714 (= res!244830 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12565 _keys!709))))))

(declare-fun mapNonEmpty!17898 () Bool)

(declare-fun mapRes!17898 () Bool)

(declare-fun tp!34626 () Bool)

(declare-fun e!250080 () Bool)

(assert (=> mapNonEmpty!17898 (= mapRes!17898 (and tp!34626 e!250080))))

(declare-datatypes ((V!15573 0))(
  ( (V!15574 (val!5470 Int)) )
))
(declare-datatypes ((ValueCell!5082 0))(
  ( (ValueCellFull!5082 (v!7713 V!15573)) (EmptyCell!5082) )
))
(declare-datatypes ((array!25535 0))(
  ( (array!25536 (arr!12214 (Array (_ BitVec 32) ValueCell!5082)) (size!12566 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25535)

(declare-fun mapKey!17898 () (_ BitVec 32))

(declare-fun mapValue!17898 () ValueCell!5082)

(declare-fun mapRest!17898 () (Array (_ BitVec 32) ValueCell!5082))

(assert (=> mapNonEmpty!17898 (= (arr!12214 _values!549) (store mapRest!17898 mapKey!17898 mapValue!17898))))

(declare-fun b!419715 () Bool)

(declare-fun res!244819 () Bool)

(assert (=> b!419715 (=> (not res!244819) (not e!250086))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25533 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!419715 (= res!244819 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!244824 () Bool)

(assert (=> start!39440 (=> (not res!244824) (not e!250086))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39440 (= res!244824 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12565 _keys!709))))))

(assert (=> start!39440 e!250086))

(declare-fun tp_is_empty!10851 () Bool)

(assert (=> start!39440 tp_is_empty!10851))

(assert (=> start!39440 tp!34625))

(assert (=> start!39440 true))

(declare-fun e!250085 () Bool)

(declare-fun array_inv!8900 (array!25535) Bool)

(assert (=> start!39440 (and (array_inv!8900 _values!549) e!250085)))

(declare-fun array_inv!8901 (array!25533) Bool)

(assert (=> start!39440 (array_inv!8901 _keys!709)))

(declare-fun b!419716 () Bool)

(declare-fun res!244820 () Bool)

(assert (=> b!419716 (=> (not res!244820) (not e!250086))))

(declare-datatypes ((List!7138 0))(
  ( (Nil!7135) (Cons!7134 (h!7990 (_ BitVec 64)) (t!12510 List!7138)) )
))
(declare-fun arrayNoDuplicates!0 (array!25533 (_ BitVec 32) List!7138) Bool)

(assert (=> b!419716 (= res!244820 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7135))))

(declare-fun b!419717 () Bool)

(declare-fun res!244826 () Bool)

(declare-fun e!250083 () Bool)

(assert (=> b!419717 (=> (not res!244826) (not e!250083))))

(assert (=> b!419717 (= res!244826 (bvsle from!863 i!563))))

(declare-fun lt!192577 () array!25533)

(declare-fun minValue!515 () V!15573)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15573)

(declare-fun lt!192578 () array!25535)

(declare-datatypes ((tuple2!7094 0))(
  ( (tuple2!7095 (_1!3557 (_ BitVec 64)) (_2!3557 V!15573)) )
))
(declare-datatypes ((List!7139 0))(
  ( (Nil!7136) (Cons!7135 (h!7991 tuple2!7094) (t!12511 List!7139)) )
))
(declare-datatypes ((ListLongMap!6021 0))(
  ( (ListLongMap!6022 (toList!3026 List!7139)) )
))
(declare-fun call!29273 () ListLongMap!6021)

(declare-fun bm!29269 () Bool)

(declare-fun c!55187 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1227 (array!25533 array!25535 (_ BitVec 32) (_ BitVec 32) V!15573 V!15573 (_ BitVec 32) Int) ListLongMap!6021)

(assert (=> bm!29269 (= call!29273 (getCurrentListMapNoExtraKeys!1227 (ite c!55187 lt!192577 _keys!709) (ite c!55187 lt!192578 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun e!250084 () Bool)

(declare-fun call!29272 () ListLongMap!6021)

(declare-fun v!412 () V!15573)

(declare-fun b!419718 () Bool)

(declare-fun +!1231 (ListLongMap!6021 tuple2!7094) ListLongMap!6021)

(assert (=> b!419718 (= e!250084 (= call!29273 (+!1231 call!29272 (tuple2!7095 k0!794 v!412))))))

(declare-fun b!419719 () Bool)

(assert (=> b!419719 (= e!250086 e!250083)))

(declare-fun res!244823 () Bool)

(assert (=> b!419719 (=> (not res!244823) (not e!250083))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25533 (_ BitVec 32)) Bool)

(assert (=> b!419719 (= res!244823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!192577 mask!1025))))

(assert (=> b!419719 (= lt!192577 (array!25534 (store (arr!12213 _keys!709) i!563 k0!794) (size!12565 _keys!709)))))

(declare-fun b!419720 () Bool)

(declare-fun e!250082 () Bool)

(assert (=> b!419720 (= e!250085 (and e!250082 mapRes!17898))))

(declare-fun condMapEmpty!17898 () Bool)

(declare-fun mapDefault!17898 () ValueCell!5082)

(assert (=> b!419720 (= condMapEmpty!17898 (= (arr!12214 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5082)) mapDefault!17898)))))

(declare-fun b!419721 () Bool)

(assert (=> b!419721 (= e!250080 tp_is_empty!10851)))

(declare-fun b!419722 () Bool)

(declare-fun res!244828 () Bool)

(assert (=> b!419722 (=> (not res!244828) (not e!250086))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!419722 (= res!244828 (validKeyInArray!0 k0!794))))

(declare-fun b!419723 () Bool)

(declare-fun e!250079 () Bool)

(assert (=> b!419723 (= e!250079 true)))

(declare-fun lt!192573 () ListLongMap!6021)

(declare-fun lt!192574 () V!15573)

(declare-fun lt!192571 () tuple2!7094)

(assert (=> b!419723 (= (+!1231 lt!192573 lt!192571) (+!1231 (+!1231 lt!192573 (tuple2!7095 k0!794 lt!192574)) lt!192571))))

(declare-fun lt!192576 () V!15573)

(assert (=> b!419723 (= lt!192571 (tuple2!7095 k0!794 lt!192576))))

(declare-datatypes ((Unit!12361 0))(
  ( (Unit!12362) )
))
(declare-fun lt!192569 () Unit!12361)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!50 (ListLongMap!6021 (_ BitVec 64) V!15573 V!15573) Unit!12361)

(assert (=> b!419723 (= lt!192569 (addSameAsAddTwiceSameKeyDiffValues!50 lt!192573 k0!794 lt!192574 lt!192576))))

(declare-fun lt!192579 () V!15573)

(declare-fun get!6065 (ValueCell!5082 V!15573) V!15573)

(assert (=> b!419723 (= lt!192574 (get!6065 (select (arr!12214 _values!549) from!863) lt!192579))))

(declare-fun lt!192575 () ListLongMap!6021)

(assert (=> b!419723 (= lt!192575 (+!1231 lt!192573 (tuple2!7095 (select (arr!12213 lt!192577) from!863) lt!192576)))))

(assert (=> b!419723 (= lt!192576 (get!6065 (select (store (arr!12214 _values!549) i!563 (ValueCellFull!5082 v!412)) from!863) lt!192579))))

(declare-fun dynLambda!712 (Int (_ BitVec 64)) V!15573)

(assert (=> b!419723 (= lt!192579 (dynLambda!712 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!419723 (= lt!192573 (getCurrentListMapNoExtraKeys!1227 lt!192577 lt!192578 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29270 () Bool)

(assert (=> bm!29270 (= call!29272 (getCurrentListMapNoExtraKeys!1227 (ite c!55187 _keys!709 lt!192577) (ite c!55187 _values!549 lt!192578) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419724 () Bool)

(assert (=> b!419724 (= e!250084 (= call!29272 call!29273))))

(declare-fun b!419725 () Bool)

(assert (=> b!419725 (= e!250082 tp_is_empty!10851)))

(declare-fun b!419726 () Bool)

(declare-fun res!244818 () Bool)

(assert (=> b!419726 (=> (not res!244818) (not e!250086))))

(assert (=> b!419726 (= res!244818 (or (= (select (arr!12213 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12213 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!419727 () Bool)

(declare-fun e!250081 () Bool)

(assert (=> b!419727 (= e!250081 (not e!250079))))

(declare-fun res!244827 () Bool)

(assert (=> b!419727 (=> res!244827 e!250079)))

(assert (=> b!419727 (= res!244827 (validKeyInArray!0 (select (arr!12213 _keys!709) from!863)))))

(assert (=> b!419727 e!250084))

(assert (=> b!419727 (= c!55187 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!192570 () Unit!12361)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!436 (array!25533 array!25535 (_ BitVec 32) (_ BitVec 32) V!15573 V!15573 (_ BitVec 32) (_ BitVec 64) V!15573 (_ BitVec 32) Int) Unit!12361)

(assert (=> b!419727 (= lt!192570 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!436 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419728 () Bool)

(assert (=> b!419728 (= e!250083 e!250081)))

(declare-fun res!244822 () Bool)

(assert (=> b!419728 (=> (not res!244822) (not e!250081))))

(assert (=> b!419728 (= res!244822 (= from!863 i!563))))

(assert (=> b!419728 (= lt!192575 (getCurrentListMapNoExtraKeys!1227 lt!192577 lt!192578 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!419728 (= lt!192578 (array!25536 (store (arr!12214 _values!549) i!563 (ValueCellFull!5082 v!412)) (size!12566 _values!549)))))

(declare-fun lt!192572 () ListLongMap!6021)

(assert (=> b!419728 (= lt!192572 (getCurrentListMapNoExtraKeys!1227 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!17898 () Bool)

(assert (=> mapIsEmpty!17898 mapRes!17898))

(declare-fun b!419729 () Bool)

(declare-fun res!244825 () Bool)

(assert (=> b!419729 (=> (not res!244825) (not e!250086))))

(assert (=> b!419729 (= res!244825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!419730 () Bool)

(declare-fun res!244817 () Bool)

(assert (=> b!419730 (=> (not res!244817) (not e!250086))))

(assert (=> b!419730 (= res!244817 (and (= (size!12566 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12565 _keys!709) (size!12566 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!419731 () Bool)

(declare-fun res!244821 () Bool)

(assert (=> b!419731 (=> (not res!244821) (not e!250083))))

(assert (=> b!419731 (= res!244821 (arrayNoDuplicates!0 lt!192577 #b00000000000000000000000000000000 Nil!7135))))

(assert (= (and start!39440 res!244824) b!419713))

(assert (= (and b!419713 res!244829) b!419730))

(assert (= (and b!419730 res!244817) b!419729))

(assert (= (and b!419729 res!244825) b!419716))

(assert (= (and b!419716 res!244820) b!419714))

(assert (= (and b!419714 res!244830) b!419722))

(assert (= (and b!419722 res!244828) b!419726))

(assert (= (and b!419726 res!244818) b!419715))

(assert (= (and b!419715 res!244819) b!419719))

(assert (= (and b!419719 res!244823) b!419731))

(assert (= (and b!419731 res!244821) b!419717))

(assert (= (and b!419717 res!244826) b!419728))

(assert (= (and b!419728 res!244822) b!419727))

(assert (= (and b!419727 c!55187) b!419718))

(assert (= (and b!419727 (not c!55187)) b!419724))

(assert (= (or b!419718 b!419724) bm!29269))

(assert (= (or b!419718 b!419724) bm!29270))

(assert (= (and b!419727 (not res!244827)) b!419723))

(assert (= (and b!419720 condMapEmpty!17898) mapIsEmpty!17898))

(assert (= (and b!419720 (not condMapEmpty!17898)) mapNonEmpty!17898))

(get-info :version)

(assert (= (and mapNonEmpty!17898 ((_ is ValueCellFull!5082) mapValue!17898)) b!419721))

(assert (= (and b!419720 ((_ is ValueCellFull!5082) mapDefault!17898)) b!419725))

(assert (= start!39440 b!419720))

(declare-fun b_lambda!9033 () Bool)

(assert (=> (not b_lambda!9033) (not b!419723)))

(declare-fun t!12509 () Bool)

(declare-fun tb!3329 () Bool)

(assert (=> (and start!39440 (= defaultEntry!557 defaultEntry!557) t!12509) tb!3329))

(declare-fun result!6177 () Bool)

(assert (=> tb!3329 (= result!6177 tp_is_empty!10851)))

(assert (=> b!419723 t!12509))

(declare-fun b_and!17293 () Bool)

(assert (= b_and!17291 (and (=> t!12509 result!6177) b_and!17293)))

(declare-fun m!409315 () Bool)

(assert (=> b!419727 m!409315))

(assert (=> b!419727 m!409315))

(declare-fun m!409317 () Bool)

(assert (=> b!419727 m!409317))

(declare-fun m!409319 () Bool)

(assert (=> b!419727 m!409319))

(declare-fun m!409321 () Bool)

(assert (=> b!419729 m!409321))

(declare-fun m!409323 () Bool)

(assert (=> bm!29270 m!409323))

(declare-fun m!409325 () Bool)

(assert (=> b!419718 m!409325))

(declare-fun m!409327 () Bool)

(assert (=> b!419713 m!409327))

(declare-fun m!409329 () Bool)

(assert (=> b!419722 m!409329))

(declare-fun m!409331 () Bool)

(assert (=> b!419726 m!409331))

(declare-fun m!409333 () Bool)

(assert (=> bm!29269 m!409333))

(declare-fun m!409335 () Bool)

(assert (=> b!419716 m!409335))

(declare-fun m!409337 () Bool)

(assert (=> b!419731 m!409337))

(declare-fun m!409339 () Bool)

(assert (=> b!419715 m!409339))

(declare-fun m!409341 () Bool)

(assert (=> b!419723 m!409341))

(declare-fun m!409343 () Bool)

(assert (=> b!419723 m!409343))

(declare-fun m!409345 () Bool)

(assert (=> b!419723 m!409345))

(declare-fun m!409347 () Bool)

(assert (=> b!419723 m!409347))

(declare-fun m!409349 () Bool)

(assert (=> b!419723 m!409349))

(declare-fun m!409351 () Bool)

(assert (=> b!419723 m!409351))

(declare-fun m!409353 () Bool)

(assert (=> b!419723 m!409353))

(assert (=> b!419723 m!409351))

(assert (=> b!419723 m!409341))

(declare-fun m!409355 () Bool)

(assert (=> b!419723 m!409355))

(declare-fun m!409357 () Bool)

(assert (=> b!419723 m!409357))

(declare-fun m!409359 () Bool)

(assert (=> b!419723 m!409359))

(declare-fun m!409361 () Bool)

(assert (=> b!419723 m!409361))

(declare-fun m!409363 () Bool)

(assert (=> b!419723 m!409363))

(assert (=> b!419723 m!409361))

(declare-fun m!409365 () Bool)

(assert (=> b!419723 m!409365))

(declare-fun m!409367 () Bool)

(assert (=> b!419719 m!409367))

(declare-fun m!409369 () Bool)

(assert (=> b!419719 m!409369))

(declare-fun m!409371 () Bool)

(assert (=> start!39440 m!409371))

(declare-fun m!409373 () Bool)

(assert (=> start!39440 m!409373))

(declare-fun m!409375 () Bool)

(assert (=> mapNonEmpty!17898 m!409375))

(declare-fun m!409377 () Bool)

(assert (=> b!419728 m!409377))

(assert (=> b!419728 m!409349))

(declare-fun m!409379 () Bool)

(assert (=> b!419728 m!409379))

(check-sat (not mapNonEmpty!17898) (not b_lambda!9033) (not b!419713) (not b!419731) (not b!419722) (not b!419716) (not b!419718) (not b!419729) (not b!419727) (not bm!29269) b_and!17293 (not b!419715) (not start!39440) (not b_next!9699) (not b!419719) (not b!419728) tp_is_empty!10851 (not b!419723) (not bm!29270))
(check-sat b_and!17293 (not b_next!9699))
