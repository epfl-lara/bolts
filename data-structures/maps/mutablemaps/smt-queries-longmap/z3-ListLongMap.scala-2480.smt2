; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38708 () Bool)

(assert start!38708)

(declare-fun b_free!9237 () Bool)

(declare-fun b_next!9237 () Bool)

(assert (=> start!38708 (= b_free!9237 (not b_next!9237))))

(declare-fun tp!32834 () Bool)

(declare-fun b_and!16641 () Bool)

(assert (=> start!38708 (= tp!32834 b_and!16641)))

(declare-fun b!402307 () Bool)

(declare-fun e!242385 () Bool)

(assert (=> b!402307 (= e!242385 (not true))))

(declare-fun e!242383 () Bool)

(assert (=> b!402307 e!242383))

(declare-fun c!54737 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!402307 (= c!54737 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12129 0))(
  ( (Unit!12130) )
))
(declare-fun lt!187899 () Unit!12129)

(declare-datatypes ((V!14597 0))(
  ( (V!14598 (val!5104 Int)) )
))
(declare-fun minValue!515 () V!14597)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4716 0))(
  ( (ValueCellFull!4716 (v!7347 V!14597)) (EmptyCell!4716) )
))
(declare-datatypes ((array!24109 0))(
  ( (array!24110 (arr!11501 (Array (_ BitVec 32) ValueCell!4716)) (size!11853 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24109)

(declare-fun zeroValue!515 () V!14597)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!14597)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!24111 0))(
  ( (array!24112 (arr!11502 (Array (_ BitVec 32) (_ BitVec 64))) (size!11854 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24111)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!327 (array!24111 array!24109 (_ BitVec 32) (_ BitVec 32) V!14597 V!14597 (_ BitVec 32) (_ BitVec 64) V!14597 (_ BitVec 32) Int) Unit!12129)

(assert (=> b!402307 (= lt!187899 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!327 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402308 () Bool)

(declare-fun res!231799 () Bool)

(declare-fun e!242387 () Bool)

(assert (=> b!402308 (=> (not res!231799) (not e!242387))))

(assert (=> b!402308 (= res!231799 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11854 _keys!709))))))

(declare-fun b!402309 () Bool)

(declare-fun res!231794 () Bool)

(assert (=> b!402309 (=> (not res!231794) (not e!242387))))

(declare-datatypes ((List!6664 0))(
  ( (Nil!6661) (Cons!6660 (h!7516 (_ BitVec 64)) (t!11846 List!6664)) )
))
(declare-fun arrayNoDuplicates!0 (array!24111 (_ BitVec 32) List!6664) Bool)

(assert (=> b!402309 (= res!231794 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6661))))

(declare-fun b!402310 () Bool)

(declare-fun e!242389 () Bool)

(declare-fun e!242384 () Bool)

(declare-fun mapRes!16800 () Bool)

(assert (=> b!402310 (= e!242389 (and e!242384 mapRes!16800))))

(declare-fun condMapEmpty!16800 () Bool)

(declare-fun mapDefault!16800 () ValueCell!4716)

(assert (=> b!402310 (= condMapEmpty!16800 (= (arr!11501 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4716)) mapDefault!16800)))))

(declare-fun b!402311 () Bool)

(declare-datatypes ((tuple2!6718 0))(
  ( (tuple2!6719 (_1!3369 (_ BitVec 64)) (_2!3369 V!14597)) )
))
(declare-datatypes ((List!6665 0))(
  ( (Nil!6662) (Cons!6661 (h!7517 tuple2!6718) (t!11847 List!6665)) )
))
(declare-datatypes ((ListLongMap!5645 0))(
  ( (ListLongMap!5646 (toList!2838 List!6665)) )
))
(declare-fun call!28373 () ListLongMap!5645)

(declare-fun call!28372 () ListLongMap!5645)

(assert (=> b!402311 (= e!242383 (= call!28373 call!28372))))

(declare-fun b!402312 () Bool)

(declare-fun res!231803 () Bool)

(assert (=> b!402312 (=> (not res!231803) (not e!242385))))

(assert (=> b!402312 (= res!231803 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11854 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun lt!187898 () array!24111)

(declare-fun bm!28369 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1050 (array!24111 array!24109 (_ BitVec 32) (_ BitVec 32) V!14597 V!14597 (_ BitVec 32) Int) ListLongMap!5645)

(assert (=> bm!28369 (= call!28373 (getCurrentListMapNoExtraKeys!1050 lt!187898 (array!24110 (store (arr!11501 _values!549) i!563 (ValueCellFull!4716 v!412)) (size!11853 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402313 () Bool)

(declare-fun res!231804 () Bool)

(assert (=> b!402313 (=> (not res!231804) (not e!242387))))

(assert (=> b!402313 (= res!231804 (or (= (select (arr!11502 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11502 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16800 () Bool)

(assert (=> mapIsEmpty!16800 mapRes!16800))

(declare-fun b!402314 () Bool)

(declare-fun res!231802 () Bool)

(assert (=> b!402314 (=> (not res!231802) (not e!242387))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!402314 (= res!231802 (validKeyInArray!0 k0!794))))

(declare-fun b!402315 () Bool)

(declare-fun res!231800 () Bool)

(assert (=> b!402315 (=> (not res!231800) (not e!242385))))

(assert (=> b!402315 (= res!231800 (arrayNoDuplicates!0 lt!187898 #b00000000000000000000000000000000 Nil!6661))))

(declare-fun b!402316 () Bool)

(declare-fun res!231801 () Bool)

(assert (=> b!402316 (=> (not res!231801) (not e!242387))))

(declare-fun arrayContainsKey!0 (array!24111 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!402316 (= res!231801 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!402317 () Bool)

(declare-fun +!1116 (ListLongMap!5645 tuple2!6718) ListLongMap!5645)

(assert (=> b!402317 (= e!242383 (= call!28373 (+!1116 call!28372 (tuple2!6719 k0!794 v!412))))))

(declare-fun res!231795 () Bool)

(assert (=> start!38708 (=> (not res!231795) (not e!242387))))

(assert (=> start!38708 (= res!231795 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11854 _keys!709))))))

(assert (=> start!38708 e!242387))

(declare-fun tp_is_empty!10119 () Bool)

(assert (=> start!38708 tp_is_empty!10119))

(assert (=> start!38708 tp!32834))

(assert (=> start!38708 true))

(declare-fun array_inv!8406 (array!24109) Bool)

(assert (=> start!38708 (and (array_inv!8406 _values!549) e!242389)))

(declare-fun array_inv!8407 (array!24111) Bool)

(assert (=> start!38708 (array_inv!8407 _keys!709)))

(declare-fun bm!28370 () Bool)

(assert (=> bm!28370 (= call!28372 (getCurrentListMapNoExtraKeys!1050 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!16800 () Bool)

(declare-fun tp!32835 () Bool)

(declare-fun e!242386 () Bool)

(assert (=> mapNonEmpty!16800 (= mapRes!16800 (and tp!32835 e!242386))))

(declare-fun mapRest!16800 () (Array (_ BitVec 32) ValueCell!4716))

(declare-fun mapKey!16800 () (_ BitVec 32))

(declare-fun mapValue!16800 () ValueCell!4716)

(assert (=> mapNonEmpty!16800 (= (arr!11501 _values!549) (store mapRest!16800 mapKey!16800 mapValue!16800))))

(declare-fun b!402318 () Bool)

(declare-fun res!231798 () Bool)

(assert (=> b!402318 (=> (not res!231798) (not e!242387))))

(assert (=> b!402318 (= res!231798 (and (= (size!11853 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11854 _keys!709) (size!11853 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!402319 () Bool)

(assert (=> b!402319 (= e!242387 e!242385)))

(declare-fun res!231797 () Bool)

(assert (=> b!402319 (=> (not res!231797) (not e!242385))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24111 (_ BitVec 32)) Bool)

(assert (=> b!402319 (= res!231797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187898 mask!1025))))

(assert (=> b!402319 (= lt!187898 (array!24112 (store (arr!11502 _keys!709) i!563 k0!794) (size!11854 _keys!709)))))

(declare-fun b!402320 () Bool)

(declare-fun res!231796 () Bool)

(assert (=> b!402320 (=> (not res!231796) (not e!242387))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!402320 (= res!231796 (validMask!0 mask!1025))))

(declare-fun b!402321 () Bool)

(assert (=> b!402321 (= e!242386 tp_is_empty!10119)))

(declare-fun b!402322 () Bool)

(declare-fun res!231793 () Bool)

(assert (=> b!402322 (=> (not res!231793) (not e!242387))))

(assert (=> b!402322 (= res!231793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!402323 () Bool)

(assert (=> b!402323 (= e!242384 tp_is_empty!10119)))

(assert (= (and start!38708 res!231795) b!402320))

(assert (= (and b!402320 res!231796) b!402318))

(assert (= (and b!402318 res!231798) b!402322))

(assert (= (and b!402322 res!231793) b!402309))

(assert (= (and b!402309 res!231794) b!402308))

(assert (= (and b!402308 res!231799) b!402314))

(assert (= (and b!402314 res!231802) b!402313))

(assert (= (and b!402313 res!231804) b!402316))

(assert (= (and b!402316 res!231801) b!402319))

(assert (= (and b!402319 res!231797) b!402315))

(assert (= (and b!402315 res!231800) b!402312))

(assert (= (and b!402312 res!231803) b!402307))

(assert (= (and b!402307 c!54737) b!402317))

(assert (= (and b!402307 (not c!54737)) b!402311))

(assert (= (or b!402317 b!402311) bm!28369))

(assert (= (or b!402317 b!402311) bm!28370))

(assert (= (and b!402310 condMapEmpty!16800) mapIsEmpty!16800))

(assert (= (and b!402310 (not condMapEmpty!16800)) mapNonEmpty!16800))

(get-info :version)

(assert (= (and mapNonEmpty!16800 ((_ is ValueCellFull!4716) mapValue!16800)) b!402321))

(assert (= (and b!402310 ((_ is ValueCellFull!4716) mapDefault!16800)) b!402323))

(assert (= start!38708 b!402310))

(declare-fun m!395851 () Bool)

(assert (=> start!38708 m!395851))

(declare-fun m!395853 () Bool)

(assert (=> start!38708 m!395853))

(declare-fun m!395855 () Bool)

(assert (=> b!402313 m!395855))

(declare-fun m!395857 () Bool)

(assert (=> bm!28370 m!395857))

(declare-fun m!395859 () Bool)

(assert (=> b!402307 m!395859))

(declare-fun m!395861 () Bool)

(assert (=> b!402314 m!395861))

(declare-fun m!395863 () Bool)

(assert (=> bm!28369 m!395863))

(declare-fun m!395865 () Bool)

(assert (=> bm!28369 m!395865))

(declare-fun m!395867 () Bool)

(assert (=> b!402316 m!395867))

(declare-fun m!395869 () Bool)

(assert (=> b!402317 m!395869))

(declare-fun m!395871 () Bool)

(assert (=> b!402315 m!395871))

(declare-fun m!395873 () Bool)

(assert (=> b!402309 m!395873))

(declare-fun m!395875 () Bool)

(assert (=> b!402320 m!395875))

(declare-fun m!395877 () Bool)

(assert (=> mapNonEmpty!16800 m!395877))

(declare-fun m!395879 () Bool)

(assert (=> b!402322 m!395879))

(declare-fun m!395881 () Bool)

(assert (=> b!402319 m!395881))

(declare-fun m!395883 () Bool)

(assert (=> b!402319 m!395883))

(check-sat (not b!402320) (not b!402314) (not b!402317) (not b!402315) (not start!38708) (not b!402322) (not b!402307) (not b_next!9237) (not b!402316) (not b!402309) (not b!402319) (not mapNonEmpty!16800) (not bm!28370) tp_is_empty!10119 b_and!16641 (not bm!28369))
(check-sat b_and!16641 (not b_next!9237))
