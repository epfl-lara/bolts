; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39422 () Bool)

(assert start!39422)

(declare-fun b_free!9681 () Bool)

(declare-fun b_next!9681 () Bool)

(assert (=> start!39422 (= b_free!9681 (not b_next!9681))))

(declare-fun tp!34571 () Bool)

(declare-fun b_and!17255 () Bool)

(assert (=> start!39422 (= tp!34571 b_and!17255)))

(declare-fun b!419182 () Bool)

(declare-fun res!244442 () Bool)

(declare-fun e!249836 () Bool)

(assert (=> b!419182 (=> (not res!244442) (not e!249836))))

(declare-datatypes ((array!25497 0))(
  ( (array!25498 (arr!12195 (Array (_ BitVec 32) (_ BitVec 64))) (size!12547 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25497)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25497 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!419182 (= res!244442 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun bm!29215 () Bool)

(declare-datatypes ((V!15549 0))(
  ( (V!15550 (val!5461 Int)) )
))
(declare-fun minValue!515 () V!15549)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5073 0))(
  ( (ValueCellFull!5073 (v!7704 V!15549)) (EmptyCell!5073) )
))
(declare-datatypes ((array!25499 0))(
  ( (array!25500 (arr!12196 (Array (_ BitVec 32) ValueCell!5073)) (size!12548 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25499)

(declare-fun zeroValue!515 () V!15549)

(declare-fun lt!192275 () array!25499)

(declare-fun c!55160 () Bool)

(declare-datatypes ((tuple2!7076 0))(
  ( (tuple2!7077 (_1!3548 (_ BitVec 64)) (_2!3548 V!15549)) )
))
(declare-datatypes ((List!7121 0))(
  ( (Nil!7118) (Cons!7117 (h!7973 tuple2!7076) (t!12475 List!7121)) )
))
(declare-datatypes ((ListLongMap!6003 0))(
  ( (ListLongMap!6004 (toList!3017 List!7121)) )
))
(declare-fun call!29219 () ListLongMap!6003)

(declare-fun lt!192281 () array!25497)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1218 (array!25497 array!25499 (_ BitVec 32) (_ BitVec 32) V!15549 V!15549 (_ BitVec 32) Int) ListLongMap!6003)

(assert (=> bm!29215 (= call!29219 (getCurrentListMapNoExtraKeys!1218 (ite c!55160 _keys!709 lt!192281) (ite c!55160 _values!549 lt!192275) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419183 () Bool)

(declare-fun res!244440 () Bool)

(assert (=> b!419183 (=> (not res!244440) (not e!249836))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25497 (_ BitVec 32)) Bool)

(assert (=> b!419183 (= res!244440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!419184 () Bool)

(declare-fun e!249837 () Bool)

(declare-fun tp_is_empty!10833 () Bool)

(assert (=> b!419184 (= e!249837 tp_is_empty!10833)))

(declare-fun b!419185 () Bool)

(declare-fun res!244451 () Bool)

(assert (=> b!419185 (=> (not res!244451) (not e!249836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!419185 (= res!244451 (validKeyInArray!0 k0!794))))

(declare-fun b!419186 () Bool)

(declare-fun res!244447 () Bool)

(assert (=> b!419186 (=> (not res!244447) (not e!249836))))

(declare-datatypes ((List!7122 0))(
  ( (Nil!7119) (Cons!7118 (h!7974 (_ BitVec 64)) (t!12476 List!7122)) )
))
(declare-fun arrayNoDuplicates!0 (array!25497 (_ BitVec 32) List!7122) Bool)

(assert (=> b!419186 (= res!244447 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7119))))

(declare-fun res!244443 () Bool)

(assert (=> start!39422 (=> (not res!244443) (not e!249836))))

(assert (=> start!39422 (= res!244443 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12547 _keys!709))))))

(assert (=> start!39422 e!249836))

(assert (=> start!39422 tp_is_empty!10833))

(assert (=> start!39422 tp!34571))

(assert (=> start!39422 true))

(declare-fun e!249839 () Bool)

(declare-fun array_inv!8888 (array!25499) Bool)

(assert (=> start!39422 (and (array_inv!8888 _values!549) e!249839)))

(declare-fun array_inv!8889 (array!25497) Bool)

(assert (=> start!39422 (array_inv!8889 _keys!709)))

(declare-fun b!419187 () Bool)

(declare-fun res!244448 () Bool)

(assert (=> b!419187 (=> (not res!244448) (not e!249836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!419187 (= res!244448 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!17871 () Bool)

(declare-fun mapRes!17871 () Bool)

(declare-fun tp!34572 () Bool)

(assert (=> mapNonEmpty!17871 (= mapRes!17871 (and tp!34572 e!249837))))

(declare-fun mapKey!17871 () (_ BitVec 32))

(declare-fun mapValue!17871 () ValueCell!5073)

(declare-fun mapRest!17871 () (Array (_ BitVec 32) ValueCell!5073))

(assert (=> mapNonEmpty!17871 (= (arr!12196 _values!549) (store mapRest!17871 mapKey!17871 mapValue!17871))))

(declare-fun b!419188 () Bool)

(declare-fun res!244444 () Bool)

(assert (=> b!419188 (=> (not res!244444) (not e!249836))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!419188 (= res!244444 (or (= (select (arr!12195 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12195 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!419189 () Bool)

(declare-fun res!244446 () Bool)

(declare-fun e!249844 () Bool)

(assert (=> b!419189 (=> (not res!244446) (not e!249844))))

(assert (=> b!419189 (= res!244446 (bvsle from!863 i!563))))

(declare-fun b!419190 () Bool)

(declare-fun e!249841 () Bool)

(assert (=> b!419190 (= e!249844 e!249841)))

(declare-fun res!244439 () Bool)

(assert (=> b!419190 (=> (not res!244439) (not e!249841))))

(assert (=> b!419190 (= res!244439 (= from!863 i!563))))

(declare-fun lt!192273 () ListLongMap!6003)

(assert (=> b!419190 (= lt!192273 (getCurrentListMapNoExtraKeys!1218 lt!192281 lt!192275 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15549)

(assert (=> b!419190 (= lt!192275 (array!25500 (store (arr!12196 _values!549) i!563 (ValueCellFull!5073 v!412)) (size!12548 _values!549)))))

(declare-fun lt!192278 () ListLongMap!6003)

(assert (=> b!419190 (= lt!192278 (getCurrentListMapNoExtraKeys!1218 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!419191 () Bool)

(declare-fun res!244445 () Bool)

(assert (=> b!419191 (=> (not res!244445) (not e!249836))))

(assert (=> b!419191 (= res!244445 (and (= (size!12548 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12547 _keys!709) (size!12548 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17871 () Bool)

(assert (=> mapIsEmpty!17871 mapRes!17871))

(declare-fun b!419192 () Bool)

(declare-fun e!249842 () Bool)

(assert (=> b!419192 (= e!249839 (and e!249842 mapRes!17871))))

(declare-fun condMapEmpty!17871 () Bool)

(declare-fun mapDefault!17871 () ValueCell!5073)

(assert (=> b!419192 (= condMapEmpty!17871 (= (arr!12196 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5073)) mapDefault!17871)))))

(declare-fun b!419193 () Bool)

(declare-fun res!244441 () Bool)

(assert (=> b!419193 (=> (not res!244441) (not e!249836))))

(assert (=> b!419193 (= res!244441 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12547 _keys!709))))))

(declare-fun b!419194 () Bool)

(assert (=> b!419194 (= e!249836 e!249844)))

(declare-fun res!244449 () Bool)

(assert (=> b!419194 (=> (not res!244449) (not e!249844))))

(assert (=> b!419194 (= res!244449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!192281 mask!1025))))

(assert (=> b!419194 (= lt!192281 (array!25498 (store (arr!12195 _keys!709) i!563 k0!794) (size!12547 _keys!709)))))

(declare-fun b!419195 () Bool)

(declare-fun e!249840 () Bool)

(assert (=> b!419195 (= e!249840 true)))

(declare-fun lt!192276 () V!15549)

(declare-fun lt!192282 () ListLongMap!6003)

(declare-fun lt!192277 () tuple2!7076)

(declare-fun +!1224 (ListLongMap!6003 tuple2!7076) ListLongMap!6003)

(assert (=> b!419195 (= (+!1224 lt!192282 lt!192277) (+!1224 (+!1224 lt!192282 (tuple2!7077 k0!794 lt!192276)) lt!192277))))

(declare-fun lt!192280 () V!15549)

(assert (=> b!419195 (= lt!192277 (tuple2!7077 k0!794 lt!192280))))

(declare-datatypes ((Unit!12345 0))(
  ( (Unit!12346) )
))
(declare-fun lt!192274 () Unit!12345)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!43 (ListLongMap!6003 (_ BitVec 64) V!15549 V!15549) Unit!12345)

(assert (=> b!419195 (= lt!192274 (addSameAsAddTwiceSameKeyDiffValues!43 lt!192282 k0!794 lt!192276 lt!192280))))

(declare-fun lt!192272 () V!15549)

(declare-fun get!6052 (ValueCell!5073 V!15549) V!15549)

(assert (=> b!419195 (= lt!192276 (get!6052 (select (arr!12196 _values!549) from!863) lt!192272))))

(assert (=> b!419195 (= lt!192273 (+!1224 lt!192282 (tuple2!7077 (select (arr!12195 lt!192281) from!863) lt!192280)))))

(assert (=> b!419195 (= lt!192280 (get!6052 (select (store (arr!12196 _values!549) i!563 (ValueCellFull!5073 v!412)) from!863) lt!192272))))

(declare-fun dynLambda!705 (Int (_ BitVec 64)) V!15549)

(assert (=> b!419195 (= lt!192272 (dynLambda!705 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!419195 (= lt!192282 (getCurrentListMapNoExtraKeys!1218 lt!192281 lt!192275 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419196 () Bool)

(declare-fun e!249838 () Bool)

(declare-fun call!29218 () ListLongMap!6003)

(assert (=> b!419196 (= e!249838 (= call!29219 call!29218))))

(declare-fun b!419197 () Bool)

(assert (=> b!419197 (= e!249838 (= call!29218 (+!1224 call!29219 (tuple2!7077 k0!794 v!412))))))

(declare-fun b!419198 () Bool)

(declare-fun res!244450 () Bool)

(assert (=> b!419198 (=> (not res!244450) (not e!249844))))

(assert (=> b!419198 (= res!244450 (arrayNoDuplicates!0 lt!192281 #b00000000000000000000000000000000 Nil!7119))))

(declare-fun b!419199 () Bool)

(assert (=> b!419199 (= e!249842 tp_is_empty!10833)))

(declare-fun b!419200 () Bool)

(assert (=> b!419200 (= e!249841 (not e!249840))))

(declare-fun res!244452 () Bool)

(assert (=> b!419200 (=> res!244452 e!249840)))

(assert (=> b!419200 (= res!244452 (validKeyInArray!0 (select (arr!12195 _keys!709) from!863)))))

(assert (=> b!419200 e!249838))

(assert (=> b!419200 (= c!55160 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!192279 () Unit!12345)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!428 (array!25497 array!25499 (_ BitVec 32) (_ BitVec 32) V!15549 V!15549 (_ BitVec 32) (_ BitVec 64) V!15549 (_ BitVec 32) Int) Unit!12345)

(assert (=> b!419200 (= lt!192279 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!428 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29216 () Bool)

(assert (=> bm!29216 (= call!29218 (getCurrentListMapNoExtraKeys!1218 (ite c!55160 lt!192281 _keys!709) (ite c!55160 lt!192275 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!39422 res!244443) b!419187))

(assert (= (and b!419187 res!244448) b!419191))

(assert (= (and b!419191 res!244445) b!419183))

(assert (= (and b!419183 res!244440) b!419186))

(assert (= (and b!419186 res!244447) b!419193))

(assert (= (and b!419193 res!244441) b!419185))

(assert (= (and b!419185 res!244451) b!419188))

(assert (= (and b!419188 res!244444) b!419182))

(assert (= (and b!419182 res!244442) b!419194))

(assert (= (and b!419194 res!244449) b!419198))

(assert (= (and b!419198 res!244450) b!419189))

(assert (= (and b!419189 res!244446) b!419190))

(assert (= (and b!419190 res!244439) b!419200))

(assert (= (and b!419200 c!55160) b!419197))

(assert (= (and b!419200 (not c!55160)) b!419196))

(assert (= (or b!419197 b!419196) bm!29216))

(assert (= (or b!419197 b!419196) bm!29215))

(assert (= (and b!419200 (not res!244452)) b!419195))

(assert (= (and b!419192 condMapEmpty!17871) mapIsEmpty!17871))

(assert (= (and b!419192 (not condMapEmpty!17871)) mapNonEmpty!17871))

(get-info :version)

(assert (= (and mapNonEmpty!17871 ((_ is ValueCellFull!5073) mapValue!17871)) b!419184))

(assert (= (and b!419192 ((_ is ValueCellFull!5073) mapDefault!17871)) b!419199))

(assert (= start!39422 b!419192))

(declare-fun b_lambda!9015 () Bool)

(assert (=> (not b_lambda!9015) (not b!419195)))

(declare-fun t!12474 () Bool)

(declare-fun tb!3311 () Bool)

(assert (=> (and start!39422 (= defaultEntry!557 defaultEntry!557) t!12474) tb!3311))

(declare-fun result!6141 () Bool)

(assert (=> tb!3311 (= result!6141 tp_is_empty!10833)))

(assert (=> b!419195 t!12474))

(declare-fun b_and!17257 () Bool)

(assert (= b_and!17255 (and (=> t!12474 result!6141) b_and!17257)))

(declare-fun m!408721 () Bool)

(assert (=> b!419190 m!408721))

(declare-fun m!408723 () Bool)

(assert (=> b!419190 m!408723))

(declare-fun m!408725 () Bool)

(assert (=> b!419190 m!408725))

(declare-fun m!408727 () Bool)

(assert (=> bm!29216 m!408727))

(declare-fun m!408729 () Bool)

(assert (=> b!419195 m!408729))

(declare-fun m!408731 () Bool)

(assert (=> b!419195 m!408731))

(assert (=> b!419195 m!408723))

(declare-fun m!408733 () Bool)

(assert (=> b!419195 m!408733))

(declare-fun m!408735 () Bool)

(assert (=> b!419195 m!408735))

(assert (=> b!419195 m!408729))

(assert (=> b!419195 m!408733))

(declare-fun m!408737 () Bool)

(assert (=> b!419195 m!408737))

(declare-fun m!408739 () Bool)

(assert (=> b!419195 m!408739))

(declare-fun m!408741 () Bool)

(assert (=> b!419195 m!408741))

(declare-fun m!408743 () Bool)

(assert (=> b!419195 m!408743))

(declare-fun m!408745 () Bool)

(assert (=> b!419195 m!408745))

(assert (=> b!419195 m!408737))

(declare-fun m!408747 () Bool)

(assert (=> b!419195 m!408747))

(declare-fun m!408749 () Bool)

(assert (=> b!419195 m!408749))

(declare-fun m!408751 () Bool)

(assert (=> b!419195 m!408751))

(declare-fun m!408753 () Bool)

(assert (=> b!419187 m!408753))

(declare-fun m!408755 () Bool)

(assert (=> mapNonEmpty!17871 m!408755))

(declare-fun m!408757 () Bool)

(assert (=> b!419186 m!408757))

(declare-fun m!408759 () Bool)

(assert (=> start!39422 m!408759))

(declare-fun m!408761 () Bool)

(assert (=> start!39422 m!408761))

(declare-fun m!408763 () Bool)

(assert (=> bm!29215 m!408763))

(declare-fun m!408765 () Bool)

(assert (=> b!419182 m!408765))

(declare-fun m!408767 () Bool)

(assert (=> b!419188 m!408767))

(declare-fun m!408769 () Bool)

(assert (=> b!419197 m!408769))

(declare-fun m!408771 () Bool)

(assert (=> b!419183 m!408771))

(declare-fun m!408773 () Bool)

(assert (=> b!419194 m!408773))

(declare-fun m!408775 () Bool)

(assert (=> b!419194 m!408775))

(declare-fun m!408777 () Bool)

(assert (=> b!419185 m!408777))

(declare-fun m!408779 () Bool)

(assert (=> b!419200 m!408779))

(assert (=> b!419200 m!408779))

(declare-fun m!408781 () Bool)

(assert (=> b!419200 m!408781))

(declare-fun m!408783 () Bool)

(assert (=> b!419200 m!408783))

(declare-fun m!408785 () Bool)

(assert (=> b!419198 m!408785))

(check-sat (not b!419183) (not b!419190) (not b_lambda!9015) (not mapNonEmpty!17871) (not start!39422) (not bm!29216) b_and!17257 (not b!419186) (not b!419195) (not b!419200) (not bm!29215) (not b!419198) (not b_next!9681) (not b!419187) (not b!419197) (not b!419194) tp_is_empty!10833 (not b!419182) (not b!419185))
(check-sat b_and!17257 (not b_next!9681))
