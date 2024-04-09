; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39358 () Bool)

(assert start!39358)

(declare-fun b_free!9617 () Bool)

(declare-fun b_next!9617 () Bool)

(assert (=> start!39358 (= b_free!9617 (not b_next!9617))))

(declare-fun tp!34380 () Bool)

(declare-fun b_and!17127 () Bool)

(assert (=> start!39358 (= tp!34380 b_and!17127)))

(declare-fun b!417294 () Bool)

(declare-fun e!248973 () Bool)

(declare-fun tp_is_empty!10769 () Bool)

(assert (=> b!417294 (= e!248973 tp_is_empty!10769)))

(declare-fun b!417295 () Bool)

(declare-fun res!243104 () Bool)

(declare-fun e!248980 () Bool)

(assert (=> b!417295 (=> (not res!243104) (not e!248980))))

(declare-datatypes ((array!25373 0))(
  ( (array!25374 (arr!12133 (Array (_ BitVec 32) (_ BitVec 64))) (size!12485 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25373)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25373 (_ BitVec 32)) Bool)

(assert (=> b!417295 (= res!243104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!417296 () Bool)

(declare-fun e!248974 () Bool)

(declare-fun e!248975 () Bool)

(assert (=> b!417296 (= e!248974 e!248975)))

(declare-fun res!243106 () Bool)

(assert (=> b!417296 (=> (not res!243106) (not e!248975))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!417296 (= res!243106 (= from!863 i!563))))

(declare-datatypes ((V!15463 0))(
  ( (V!15464 (val!5429 Int)) )
))
(declare-fun minValue!515 () V!15463)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7016 0))(
  ( (tuple2!7017 (_1!3518 (_ BitVec 64)) (_2!3518 V!15463)) )
))
(declare-datatypes ((List!7068 0))(
  ( (Nil!7065) (Cons!7064 (h!7920 tuple2!7016) (t!12358 List!7068)) )
))
(declare-datatypes ((ListLongMap!5943 0))(
  ( (ListLongMap!5944 (toList!2987 List!7068)) )
))
(declare-fun lt!191216 () ListLongMap!5943)

(declare-fun zeroValue!515 () V!15463)

(declare-fun lt!191224 () array!25373)

(declare-datatypes ((ValueCell!5041 0))(
  ( (ValueCellFull!5041 (v!7672 V!15463)) (EmptyCell!5041) )
))
(declare-datatypes ((array!25375 0))(
  ( (array!25376 (arr!12134 (Array (_ BitVec 32) ValueCell!5041)) (size!12486 (_ BitVec 32))) )
))
(declare-fun lt!191218 () array!25375)

(declare-fun getCurrentListMapNoExtraKeys!1190 (array!25373 array!25375 (_ BitVec 32) (_ BitVec 32) V!15463 V!15463 (_ BitVec 32) Int) ListLongMap!5943)

(assert (=> b!417296 (= lt!191216 (getCurrentListMapNoExtraKeys!1190 lt!191224 lt!191218 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25375)

(declare-fun v!412 () V!15463)

(assert (=> b!417296 (= lt!191218 (array!25376 (store (arr!12134 _values!549) i!563 (ValueCellFull!5041 v!412)) (size!12486 _values!549)))))

(declare-fun lt!191225 () ListLongMap!5943)

(assert (=> b!417296 (= lt!191225 (getCurrentListMapNoExtraKeys!1190 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!417297 () Bool)

(declare-fun res!243101 () Bool)

(assert (=> b!417297 (=> (not res!243101) (not e!248974))))

(assert (=> b!417297 (= res!243101 (bvsle from!863 i!563))))

(declare-fun call!29027 () ListLongMap!5943)

(declare-fun e!248976 () Bool)

(declare-fun call!29026 () ListLongMap!5943)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun b!417298 () Bool)

(declare-fun +!1198 (ListLongMap!5943 tuple2!7016) ListLongMap!5943)

(assert (=> b!417298 (= e!248976 (= call!29027 (+!1198 call!29026 (tuple2!7017 k!794 v!412))))))

(declare-fun b!417299 () Bool)

(declare-fun e!248978 () Bool)

(assert (=> b!417299 (= e!248978 true)))

(declare-fun lt!191226 () tuple2!7016)

(declare-fun lt!191217 () V!15463)

(declare-fun lt!191219 () ListLongMap!5943)

(assert (=> b!417299 (= (+!1198 lt!191219 lt!191226) (+!1198 (+!1198 lt!191219 (tuple2!7017 k!794 lt!191217)) lt!191226))))

(declare-fun lt!191223 () V!15463)

(assert (=> b!417299 (= lt!191226 (tuple2!7017 k!794 lt!191223))))

(declare-datatypes ((Unit!12297 0))(
  ( (Unit!12298) )
))
(declare-fun lt!191221 () Unit!12297)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!21 (ListLongMap!5943 (_ BitVec 64) V!15463 V!15463) Unit!12297)

(assert (=> b!417299 (= lt!191221 (addSameAsAddTwiceSameKeyDiffValues!21 lt!191219 k!794 lt!191217 lt!191223))))

(declare-fun lt!191220 () V!15463)

(declare-fun get!6008 (ValueCell!5041 V!15463) V!15463)

(assert (=> b!417299 (= lt!191217 (get!6008 (select (arr!12134 _values!549) from!863) lt!191220))))

(assert (=> b!417299 (= lt!191216 (+!1198 lt!191219 (tuple2!7017 (select (arr!12133 lt!191224) from!863) lt!191223)))))

(assert (=> b!417299 (= lt!191223 (get!6008 (select (store (arr!12134 _values!549) i!563 (ValueCellFull!5041 v!412)) from!863) lt!191220))))

(declare-fun dynLambda!683 (Int (_ BitVec 64)) V!15463)

(assert (=> b!417299 (= lt!191220 (dynLambda!683 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!417299 (= lt!191219 (getCurrentListMapNoExtraKeys!1190 lt!191224 lt!191218 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417301 () Bool)

(declare-fun res!243105 () Bool)

(assert (=> b!417301 (=> (not res!243105) (not e!248974))))

(declare-datatypes ((List!7069 0))(
  ( (Nil!7066) (Cons!7065 (h!7921 (_ BitVec 64)) (t!12359 List!7069)) )
))
(declare-fun arrayNoDuplicates!0 (array!25373 (_ BitVec 32) List!7069) Bool)

(assert (=> b!417301 (= res!243105 (arrayNoDuplicates!0 lt!191224 #b00000000000000000000000000000000 Nil!7066))))

(declare-fun b!417302 () Bool)

(assert (=> b!417302 (= e!248980 e!248974)))

(declare-fun res!243098 () Bool)

(assert (=> b!417302 (=> (not res!243098) (not e!248974))))

(assert (=> b!417302 (= res!243098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191224 mask!1025))))

(assert (=> b!417302 (= lt!191224 (array!25374 (store (arr!12133 _keys!709) i!563 k!794) (size!12485 _keys!709)))))

(declare-fun b!417303 () Bool)

(declare-fun res!243097 () Bool)

(assert (=> b!417303 (=> (not res!243097) (not e!248980))))

(assert (=> b!417303 (= res!243097 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12485 _keys!709))))))

(declare-fun b!417304 () Bool)

(assert (=> b!417304 (= e!248976 (= call!29026 call!29027))))

(declare-fun b!417305 () Bool)

(declare-fun res!243102 () Bool)

(assert (=> b!417305 (=> (not res!243102) (not e!248980))))

(assert (=> b!417305 (= res!243102 (or (= (select (arr!12133 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12133 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!417300 () Bool)

(declare-fun res!243103 () Bool)

(assert (=> b!417300 (=> (not res!243103) (not e!248980))))

(assert (=> b!417300 (= res!243103 (and (= (size!12486 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12485 _keys!709) (size!12486 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!243096 () Bool)

(assert (=> start!39358 (=> (not res!243096) (not e!248980))))

(assert (=> start!39358 (= res!243096 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12485 _keys!709))))))

(assert (=> start!39358 e!248980))

(assert (=> start!39358 tp_is_empty!10769))

(assert (=> start!39358 tp!34380))

(assert (=> start!39358 true))

(declare-fun e!248977 () Bool)

(declare-fun array_inv!8846 (array!25375) Bool)

(assert (=> start!39358 (and (array_inv!8846 _values!549) e!248977)))

(declare-fun array_inv!8847 (array!25373) Bool)

(assert (=> start!39358 (array_inv!8847 _keys!709)))

(declare-fun b!417306 () Bool)

(declare-fun res!243107 () Bool)

(assert (=> b!417306 (=> (not res!243107) (not e!248980))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!417306 (= res!243107 (validMask!0 mask!1025))))

(declare-fun c!55064 () Bool)

(declare-fun bm!29023 () Bool)

(assert (=> bm!29023 (= call!29026 (getCurrentListMapNoExtraKeys!1190 (ite c!55064 _keys!709 lt!191224) (ite c!55064 _values!549 lt!191218) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417307 () Bool)

(declare-fun res!243100 () Bool)

(assert (=> b!417307 (=> (not res!243100) (not e!248980))))

(assert (=> b!417307 (= res!243100 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7066))))

(declare-fun b!417308 () Bool)

(declare-fun res!243095 () Bool)

(assert (=> b!417308 (=> (not res!243095) (not e!248980))))

(declare-fun arrayContainsKey!0 (array!25373 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!417308 (= res!243095 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17775 () Bool)

(declare-fun mapRes!17775 () Bool)

(assert (=> mapIsEmpty!17775 mapRes!17775))

(declare-fun mapNonEmpty!17775 () Bool)

(declare-fun tp!34379 () Bool)

(assert (=> mapNonEmpty!17775 (= mapRes!17775 (and tp!34379 e!248973))))

(declare-fun mapKey!17775 () (_ BitVec 32))

(declare-fun mapValue!17775 () ValueCell!5041)

(declare-fun mapRest!17775 () (Array (_ BitVec 32) ValueCell!5041))

(assert (=> mapNonEmpty!17775 (= (arr!12134 _values!549) (store mapRest!17775 mapKey!17775 mapValue!17775))))

(declare-fun b!417309 () Bool)

(declare-fun e!248979 () Bool)

(assert (=> b!417309 (= e!248977 (and e!248979 mapRes!17775))))

(declare-fun condMapEmpty!17775 () Bool)

(declare-fun mapDefault!17775 () ValueCell!5041)

