; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39392 () Bool)

(assert start!39392)

(declare-fun b_free!9651 () Bool)

(declare-fun b_next!9651 () Bool)

(assert (=> start!39392 (= b_free!9651 (not b_next!9651))))

(declare-fun tp!34482 () Bool)

(declare-fun b_and!17195 () Bool)

(assert (=> start!39392 (= tp!34482 b_and!17195)))

(declare-datatypes ((V!15509 0))(
  ( (V!15510 (val!5446 Int)) )
))
(declare-fun minValue!515 () V!15509)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5058 0))(
  ( (ValueCellFull!5058 (v!7689 V!15509)) (EmptyCell!5058) )
))
(declare-datatypes ((array!25439 0))(
  ( (array!25440 (arr!12166 (Array (_ BitVec 32) ValueCell!5058)) (size!12518 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25439)

(declare-fun zeroValue!515 () V!15509)

(declare-datatypes ((array!25441 0))(
  ( (array!25442 (arr!12167 (Array (_ BitVec 32) (_ BitVec 64))) (size!12519 (_ BitVec 32))) )
))
(declare-fun lt!191779 () array!25441)

(declare-fun lt!191777 () array!25439)

(declare-fun bm!29125 () Bool)

(declare-datatypes ((tuple2!7048 0))(
  ( (tuple2!7049 (_1!3534 (_ BitVec 64)) (_2!3534 V!15509)) )
))
(declare-datatypes ((List!7099 0))(
  ( (Nil!7096) (Cons!7095 (h!7951 tuple2!7048) (t!12423 List!7099)) )
))
(declare-datatypes ((ListLongMap!5975 0))(
  ( (ListLongMap!5976 (toList!3003 List!7099)) )
))
(declare-fun call!29129 () ListLongMap!5975)

(declare-fun _keys!709 () array!25441)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun c!55115 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1206 (array!25441 array!25439 (_ BitVec 32) (_ BitVec 32) V!15509 V!15509 (_ BitVec 32) Int) ListLongMap!5975)

(assert (=> bm!29125 (= call!29129 (getCurrentListMapNoExtraKeys!1206 (ite c!55115 lt!191779 _keys!709) (ite c!55115 lt!191777 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418298 () Bool)

(declare-fun res!243820 () Bool)

(declare-fun e!249437 () Bool)

(assert (=> b!418298 (=> (not res!243820) (not e!249437))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!418298 (= res!243820 (validMask!0 mask!1025))))

(declare-fun b!418299 () Bool)

(declare-fun e!249433 () Bool)

(assert (=> b!418299 (= e!249433 true)))

(declare-fun lt!191783 () tuple2!7048)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!191782 () ListLongMap!5975)

(declare-fun lt!191784 () V!15509)

(declare-fun +!1212 (ListLongMap!5975 tuple2!7048) ListLongMap!5975)

(assert (=> b!418299 (= (+!1212 lt!191782 lt!191783) (+!1212 (+!1212 lt!191782 (tuple2!7049 k0!794 lt!191784)) lt!191783))))

(declare-fun lt!191778 () V!15509)

(assert (=> b!418299 (= lt!191783 (tuple2!7049 k0!794 lt!191778))))

(declare-datatypes ((Unit!12325 0))(
  ( (Unit!12326) )
))
(declare-fun lt!191781 () Unit!12325)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!35 (ListLongMap!5975 (_ BitVec 64) V!15509 V!15509) Unit!12325)

(assert (=> b!418299 (= lt!191781 (addSameAsAddTwiceSameKeyDiffValues!35 lt!191782 k0!794 lt!191784 lt!191778))))

(declare-fun lt!191787 () V!15509)

(declare-fun get!6034 (ValueCell!5058 V!15509) V!15509)

(assert (=> b!418299 (= lt!191784 (get!6034 (select (arr!12166 _values!549) from!863) lt!191787))))

(declare-fun lt!191786 () ListLongMap!5975)

(assert (=> b!418299 (= lt!191786 (+!1212 lt!191782 (tuple2!7049 (select (arr!12167 lt!191779) from!863) lt!191778)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15509)

(assert (=> b!418299 (= lt!191778 (get!6034 (select (store (arr!12166 _values!549) i!563 (ValueCellFull!5058 v!412)) from!863) lt!191787))))

(declare-fun dynLambda!697 (Int (_ BitVec 64)) V!15509)

(assert (=> b!418299 (= lt!191787 (dynLambda!697 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!418299 (= lt!191782 (getCurrentListMapNoExtraKeys!1206 lt!191779 lt!191777 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418300 () Bool)

(declare-fun e!249438 () Bool)

(assert (=> b!418300 (= e!249437 e!249438)))

(declare-fun res!243809 () Bool)

(assert (=> b!418300 (=> (not res!243809) (not e!249438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25441 (_ BitVec 32)) Bool)

(assert (=> b!418300 (= res!243809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191779 mask!1025))))

(assert (=> b!418300 (= lt!191779 (array!25442 (store (arr!12167 _keys!709) i!563 k0!794) (size!12519 _keys!709)))))

(declare-fun b!418301 () Bool)

(declare-fun res!243813 () Bool)

(assert (=> b!418301 (=> (not res!243813) (not e!249437))))

(assert (=> b!418301 (= res!243813 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12519 _keys!709))))))

(declare-fun b!418302 () Bool)

(declare-fun e!249431 () Bool)

(declare-fun tp_is_empty!10803 () Bool)

(assert (=> b!418302 (= e!249431 tp_is_empty!10803)))

(declare-fun call!29128 () ListLongMap!5975)

(declare-fun bm!29126 () Bool)

(assert (=> bm!29126 (= call!29128 (getCurrentListMapNoExtraKeys!1206 (ite c!55115 _keys!709 lt!191779) (ite c!55115 _values!549 lt!191777) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418303 () Bool)

(declare-fun e!249439 () Bool)

(assert (=> b!418303 (= e!249439 (= call!29129 (+!1212 call!29128 (tuple2!7049 k0!794 v!412))))))

(declare-fun b!418304 () Bool)

(declare-fun res!243816 () Bool)

(assert (=> b!418304 (=> (not res!243816) (not e!249437))))

(declare-datatypes ((List!7100 0))(
  ( (Nil!7097) (Cons!7096 (h!7952 (_ BitVec 64)) (t!12424 List!7100)) )
))
(declare-fun arrayNoDuplicates!0 (array!25441 (_ BitVec 32) List!7100) Bool)

(assert (=> b!418304 (= res!243816 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7097))))

(declare-fun b!418305 () Bool)

(declare-fun e!249436 () Bool)

(assert (=> b!418305 (= e!249436 (not e!249433))))

(declare-fun res!243811 () Bool)

(assert (=> b!418305 (=> res!243811 e!249433)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!418305 (= res!243811 (validKeyInArray!0 (select (arr!12167 _keys!709) from!863)))))

(assert (=> b!418305 e!249439))

(assert (=> b!418305 (= c!55115 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!191785 () Unit!12325)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!420 (array!25441 array!25439 (_ BitVec 32) (_ BitVec 32) V!15509 V!15509 (_ BitVec 32) (_ BitVec 64) V!15509 (_ BitVec 32) Int) Unit!12325)

(assert (=> b!418305 (= lt!191785 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!420 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418306 () Bool)

(declare-fun res!243815 () Bool)

(assert (=> b!418306 (=> (not res!243815) (not e!249437))))

(declare-fun arrayContainsKey!0 (array!25441 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!418306 (= res!243815 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!418307 () Bool)

(declare-fun res!243821 () Bool)

(assert (=> b!418307 (=> (not res!243821) (not e!249437))))

(assert (=> b!418307 (= res!243821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!418308 () Bool)

(declare-fun res!243818 () Bool)

(assert (=> b!418308 (=> (not res!243818) (not e!249438))))

(assert (=> b!418308 (= res!243818 (arrayNoDuplicates!0 lt!191779 #b00000000000000000000000000000000 Nil!7097))))

(declare-fun b!418297 () Bool)

(declare-fun e!249435 () Bool)

(declare-fun mapRes!17826 () Bool)

(assert (=> b!418297 (= e!249435 (and e!249431 mapRes!17826))))

(declare-fun condMapEmpty!17826 () Bool)

(declare-fun mapDefault!17826 () ValueCell!5058)

(assert (=> b!418297 (= condMapEmpty!17826 (= (arr!12166 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5058)) mapDefault!17826)))))

(declare-fun res!243812 () Bool)

(assert (=> start!39392 (=> (not res!243812) (not e!249437))))

(assert (=> start!39392 (= res!243812 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12519 _keys!709))))))

(assert (=> start!39392 e!249437))

(assert (=> start!39392 tp_is_empty!10803))

(assert (=> start!39392 tp!34482))

(assert (=> start!39392 true))

(declare-fun array_inv!8872 (array!25439) Bool)

(assert (=> start!39392 (and (array_inv!8872 _values!549) e!249435)))

(declare-fun array_inv!8873 (array!25441) Bool)

(assert (=> start!39392 (array_inv!8873 _keys!709)))

(declare-fun mapIsEmpty!17826 () Bool)

(assert (=> mapIsEmpty!17826 mapRes!17826))

(declare-fun b!418309 () Bool)

(declare-fun res!243814 () Bool)

(assert (=> b!418309 (=> (not res!243814) (not e!249437))))

(assert (=> b!418309 (= res!243814 (and (= (size!12518 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12519 _keys!709) (size!12518 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!418310 () Bool)

(assert (=> b!418310 (= e!249439 (= call!29128 call!29129))))

(declare-fun b!418311 () Bool)

(assert (=> b!418311 (= e!249438 e!249436)))

(declare-fun res!243810 () Bool)

(assert (=> b!418311 (=> (not res!243810) (not e!249436))))

(assert (=> b!418311 (= res!243810 (= from!863 i!563))))

(assert (=> b!418311 (= lt!191786 (getCurrentListMapNoExtraKeys!1206 lt!191779 lt!191777 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!418311 (= lt!191777 (array!25440 (store (arr!12166 _values!549) i!563 (ValueCellFull!5058 v!412)) (size!12518 _values!549)))))

(declare-fun lt!191780 () ListLongMap!5975)

(assert (=> b!418311 (= lt!191780 (getCurrentListMapNoExtraKeys!1206 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!17826 () Bool)

(declare-fun tp!34481 () Bool)

(declare-fun e!249434 () Bool)

(assert (=> mapNonEmpty!17826 (= mapRes!17826 (and tp!34481 e!249434))))

(declare-fun mapKey!17826 () (_ BitVec 32))

(declare-fun mapRest!17826 () (Array (_ BitVec 32) ValueCell!5058))

(declare-fun mapValue!17826 () ValueCell!5058)

(assert (=> mapNonEmpty!17826 (= (arr!12166 _values!549) (store mapRest!17826 mapKey!17826 mapValue!17826))))

(declare-fun b!418312 () Bool)

(declare-fun res!243819 () Bool)

(assert (=> b!418312 (=> (not res!243819) (not e!249438))))

(assert (=> b!418312 (= res!243819 (bvsle from!863 i!563))))

(declare-fun b!418313 () Bool)

(declare-fun res!243822 () Bool)

(assert (=> b!418313 (=> (not res!243822) (not e!249437))))

(assert (=> b!418313 (= res!243822 (validKeyInArray!0 k0!794))))

(declare-fun b!418314 () Bool)

(assert (=> b!418314 (= e!249434 tp_is_empty!10803)))

(declare-fun b!418315 () Bool)

(declare-fun res!243817 () Bool)

(assert (=> b!418315 (=> (not res!243817) (not e!249437))))

(assert (=> b!418315 (= res!243817 (or (= (select (arr!12167 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12167 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!39392 res!243812) b!418298))

(assert (= (and b!418298 res!243820) b!418309))

(assert (= (and b!418309 res!243814) b!418307))

(assert (= (and b!418307 res!243821) b!418304))

(assert (= (and b!418304 res!243816) b!418301))

(assert (= (and b!418301 res!243813) b!418313))

(assert (= (and b!418313 res!243822) b!418315))

(assert (= (and b!418315 res!243817) b!418306))

(assert (= (and b!418306 res!243815) b!418300))

(assert (= (and b!418300 res!243809) b!418308))

(assert (= (and b!418308 res!243818) b!418312))

(assert (= (and b!418312 res!243819) b!418311))

(assert (= (and b!418311 res!243810) b!418305))

(assert (= (and b!418305 c!55115) b!418303))

(assert (= (and b!418305 (not c!55115)) b!418310))

(assert (= (or b!418303 b!418310) bm!29125))

(assert (= (or b!418303 b!418310) bm!29126))

(assert (= (and b!418305 (not res!243811)) b!418299))

(assert (= (and b!418297 condMapEmpty!17826) mapIsEmpty!17826))

(assert (= (and b!418297 (not condMapEmpty!17826)) mapNonEmpty!17826))

(get-info :version)

(assert (= (and mapNonEmpty!17826 ((_ is ValueCellFull!5058) mapValue!17826)) b!418314))

(assert (= (and b!418297 ((_ is ValueCellFull!5058) mapDefault!17826)) b!418302))

(assert (= start!39392 b!418297))

(declare-fun b_lambda!8985 () Bool)

(assert (=> (not b_lambda!8985) (not b!418299)))

(declare-fun t!12422 () Bool)

(declare-fun tb!3281 () Bool)

(assert (=> (and start!39392 (= defaultEntry!557 defaultEntry!557) t!12422) tb!3281))

(declare-fun result!6081 () Bool)

(assert (=> tb!3281 (= result!6081 tp_is_empty!10803)))

(assert (=> b!418299 t!12422))

(declare-fun b_and!17197 () Bool)

(assert (= b_and!17195 (and (=> t!12422 result!6081) b_and!17197)))

(declare-fun m!407731 () Bool)

(assert (=> b!418305 m!407731))

(assert (=> b!418305 m!407731))

(declare-fun m!407733 () Bool)

(assert (=> b!418305 m!407733))

(declare-fun m!407735 () Bool)

(assert (=> b!418305 m!407735))

(declare-fun m!407737 () Bool)

(assert (=> b!418311 m!407737))

(declare-fun m!407739 () Bool)

(assert (=> b!418311 m!407739))

(declare-fun m!407741 () Bool)

(assert (=> b!418311 m!407741))

(declare-fun m!407743 () Bool)

(assert (=> b!418304 m!407743))

(declare-fun m!407745 () Bool)

(assert (=> mapNonEmpty!17826 m!407745))

(declare-fun m!407747 () Bool)

(assert (=> b!418298 m!407747))

(declare-fun m!407749 () Bool)

(assert (=> b!418300 m!407749))

(declare-fun m!407751 () Bool)

(assert (=> b!418300 m!407751))

(declare-fun m!407753 () Bool)

(assert (=> b!418306 m!407753))

(declare-fun m!407755 () Bool)

(assert (=> b!418313 m!407755))

(declare-fun m!407757 () Bool)

(assert (=> bm!29126 m!407757))

(declare-fun m!407759 () Bool)

(assert (=> bm!29125 m!407759))

(declare-fun m!407761 () Bool)

(assert (=> start!39392 m!407761))

(declare-fun m!407763 () Bool)

(assert (=> start!39392 m!407763))

(declare-fun m!407765 () Bool)

(assert (=> b!418315 m!407765))

(declare-fun m!407767 () Bool)

(assert (=> b!418303 m!407767))

(declare-fun m!407769 () Bool)

(assert (=> b!418307 m!407769))

(declare-fun m!407771 () Bool)

(assert (=> b!418308 m!407771))

(declare-fun m!407773 () Bool)

(assert (=> b!418299 m!407773))

(declare-fun m!407775 () Bool)

(assert (=> b!418299 m!407775))

(declare-fun m!407777 () Bool)

(assert (=> b!418299 m!407777))

(declare-fun m!407779 () Bool)

(assert (=> b!418299 m!407779))

(declare-fun m!407781 () Bool)

(assert (=> b!418299 m!407781))

(declare-fun m!407783 () Bool)

(assert (=> b!418299 m!407783))

(declare-fun m!407785 () Bool)

(assert (=> b!418299 m!407785))

(assert (=> b!418299 m!407739))

(declare-fun m!407787 () Bool)

(assert (=> b!418299 m!407787))

(assert (=> b!418299 m!407773))

(declare-fun m!407789 () Bool)

(assert (=> b!418299 m!407789))

(assert (=> b!418299 m!407787))

(declare-fun m!407791 () Bool)

(assert (=> b!418299 m!407791))

(declare-fun m!407793 () Bool)

(assert (=> b!418299 m!407793))

(declare-fun m!407795 () Bool)

(assert (=> b!418299 m!407795))

(assert (=> b!418299 m!407781))

(check-sat (not b_lambda!8985) (not b!418311) (not b!418306) (not b!418313) (not b!418308) (not b!418299) (not bm!29125) (not b!418307) (not bm!29126) (not b!418298) (not start!39392) (not b_next!9651) tp_is_empty!10803 (not b!418300) (not b!418303) b_and!17197 (not mapNonEmpty!17826) (not b!418305) (not b!418304))
(check-sat b_and!17197 (not b_next!9651))
