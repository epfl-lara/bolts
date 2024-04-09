; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39452 () Bool)

(assert start!39452)

(declare-fun b_free!9711 () Bool)

(declare-fun b_next!9711 () Bool)

(assert (=> start!39452 (= b_free!9711 (not b_next!9711))))

(declare-fun tp!34661 () Bool)

(declare-fun b_and!17315 () Bool)

(assert (=> start!39452 (= tp!34661 b_and!17315)))

(declare-fun b!420067 () Bool)

(declare-fun e!250246 () Bool)

(declare-fun e!250241 () Bool)

(declare-fun mapRes!17916 () Bool)

(assert (=> b!420067 (= e!250246 (and e!250241 mapRes!17916))))

(declare-fun condMapEmpty!17916 () Bool)

(declare-datatypes ((V!15589 0))(
  ( (V!15590 (val!5476 Int)) )
))
(declare-datatypes ((ValueCell!5088 0))(
  ( (ValueCellFull!5088 (v!7719 V!15589)) (EmptyCell!5088) )
))
(declare-datatypes ((array!25557 0))(
  ( (array!25558 (arr!12225 (Array (_ BitVec 32) ValueCell!5088)) (size!12577 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25557)

(declare-fun mapDefault!17916 () ValueCell!5088)

(assert (=> b!420067 (= condMapEmpty!17916 (= (arr!12225 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5088)) mapDefault!17916)))))

(declare-fun b!420068 () Bool)

(declare-fun tp_is_empty!10863 () Bool)

(assert (=> b!420068 (= e!250241 tp_is_empty!10863)))

(declare-fun b!420069 () Bool)

(declare-fun e!250248 () Bool)

(declare-fun e!250249 () Bool)

(assert (=> b!420069 (= e!250248 e!250249)))

(declare-fun res!245082 () Bool)

(assert (=> b!420069 (=> (not res!245082) (not e!250249))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!420069 (= res!245082 (= from!863 i!563))))

(declare-fun minValue!515 () V!15589)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((array!25559 0))(
  ( (array!25560 (arr!12226 (Array (_ BitVec 32) (_ BitVec 64))) (size!12578 (_ BitVec 32))) )
))
(declare-fun lt!192770 () array!25559)

(declare-datatypes ((tuple2!7102 0))(
  ( (tuple2!7103 (_1!3561 (_ BitVec 64)) (_2!3561 V!15589)) )
))
(declare-datatypes ((List!7147 0))(
  ( (Nil!7144) (Cons!7143 (h!7999 tuple2!7102) (t!12531 List!7147)) )
))
(declare-datatypes ((ListLongMap!6029 0))(
  ( (ListLongMap!6030 (toList!3030 List!7147)) )
))
(declare-fun lt!192771 () ListLongMap!6029)

(declare-fun zeroValue!515 () V!15589)

(declare-fun lt!192772 () array!25557)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1231 (array!25559 array!25557 (_ BitVec 32) (_ BitVec 32) V!15589 V!15589 (_ BitVec 32) Int) ListLongMap!6029)

(assert (=> b!420069 (= lt!192771 (getCurrentListMapNoExtraKeys!1231 lt!192770 lt!192772 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15589)

(assert (=> b!420069 (= lt!192772 (array!25558 (store (arr!12225 _values!549) i!563 (ValueCellFull!5088 v!412)) (size!12577 _values!549)))))

(declare-fun lt!192767 () ListLongMap!6029)

(declare-fun _keys!709 () array!25559)

(assert (=> b!420069 (= lt!192767 (getCurrentListMapNoExtraKeys!1231 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!420070 () Bool)

(declare-fun res!245072 () Bool)

(declare-fun e!250245 () Bool)

(assert (=> b!420070 (=> (not res!245072) (not e!250245))))

(assert (=> b!420070 (= res!245072 (and (= (size!12577 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12578 _keys!709) (size!12577 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!420071 () Bool)

(declare-fun res!245074 () Bool)

(assert (=> b!420071 (=> (not res!245074) (not e!250245))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!420071 (= res!245074 (validKeyInArray!0 k0!794))))

(declare-fun b!420072 () Bool)

(declare-fun e!250244 () Bool)

(assert (=> b!420072 (= e!250249 (not e!250244))))

(declare-fun res!245071 () Bool)

(assert (=> b!420072 (=> res!245071 e!250244)))

(assert (=> b!420072 (= res!245071 (validKeyInArray!0 (select (arr!12226 _keys!709) from!863)))))

(declare-fun e!250242 () Bool)

(assert (=> b!420072 e!250242))

(declare-fun c!55205 () Bool)

(assert (=> b!420072 (= c!55205 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12369 0))(
  ( (Unit!12370) )
))
(declare-fun lt!192776 () Unit!12369)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!440 (array!25559 array!25557 (_ BitVec 32) (_ BitVec 32) V!15589 V!15589 (_ BitVec 32) (_ BitVec 64) V!15589 (_ BitVec 32) Int) Unit!12369)

(assert (=> b!420072 (= lt!192776 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!440 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420073 () Bool)

(declare-fun res!245075 () Bool)

(assert (=> b!420073 (=> (not res!245075) (not e!250248))))

(assert (=> b!420073 (= res!245075 (bvsle from!863 i!563))))

(declare-fun b!420074 () Bool)

(declare-fun res!245079 () Bool)

(assert (=> b!420074 (=> (not res!245079) (not e!250245))))

(declare-datatypes ((List!7148 0))(
  ( (Nil!7145) (Cons!7144 (h!8000 (_ BitVec 64)) (t!12532 List!7148)) )
))
(declare-fun arrayNoDuplicates!0 (array!25559 (_ BitVec 32) List!7148) Bool)

(assert (=> b!420074 (= res!245079 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7145))))

(declare-fun b!420075 () Bool)

(declare-fun res!245080 () Bool)

(assert (=> b!420075 (=> (not res!245080) (not e!250245))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!420075 (= res!245080 (validMask!0 mask!1025))))

(declare-fun b!420076 () Bool)

(declare-fun res!245073 () Bool)

(assert (=> b!420076 (=> (not res!245073) (not e!250245))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25559 (_ BitVec 32)) Bool)

(assert (=> b!420076 (= res!245073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!420077 () Bool)

(assert (=> b!420077 (= e!250245 e!250248)))

(declare-fun res!245081 () Bool)

(assert (=> b!420077 (=> (not res!245081) (not e!250248))))

(assert (=> b!420077 (= res!245081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!192770 mask!1025))))

(assert (=> b!420077 (= lt!192770 (array!25560 (store (arr!12226 _keys!709) i!563 k0!794) (size!12578 _keys!709)))))

(declare-fun b!420078 () Bool)

(assert (=> b!420078 (= e!250244 true)))

(declare-fun lt!192769 () V!15589)

(declare-fun lt!192775 () tuple2!7102)

(declare-fun lt!192768 () ListLongMap!6029)

(declare-fun +!1235 (ListLongMap!6029 tuple2!7102) ListLongMap!6029)

(assert (=> b!420078 (= (+!1235 lt!192768 lt!192775) (+!1235 (+!1235 lt!192768 (tuple2!7103 k0!794 lt!192769)) lt!192775))))

(declare-fun lt!192777 () V!15589)

(assert (=> b!420078 (= lt!192775 (tuple2!7103 k0!794 lt!192777))))

(declare-fun lt!192774 () Unit!12369)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!54 (ListLongMap!6029 (_ BitVec 64) V!15589 V!15589) Unit!12369)

(assert (=> b!420078 (= lt!192774 (addSameAsAddTwiceSameKeyDiffValues!54 lt!192768 k0!794 lt!192769 lt!192777))))

(declare-fun lt!192773 () V!15589)

(declare-fun get!6073 (ValueCell!5088 V!15589) V!15589)

(assert (=> b!420078 (= lt!192769 (get!6073 (select (arr!12225 _values!549) from!863) lt!192773))))

(assert (=> b!420078 (= lt!192771 (+!1235 lt!192768 (tuple2!7103 (select (arr!12226 lt!192770) from!863) lt!192777)))))

(assert (=> b!420078 (= lt!192777 (get!6073 (select (store (arr!12225 _values!549) i!563 (ValueCellFull!5088 v!412)) from!863) lt!192773))))

(declare-fun dynLambda!716 (Int (_ BitVec 64)) V!15589)

(assert (=> b!420078 (= lt!192773 (dynLambda!716 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!420078 (= lt!192768 (getCurrentListMapNoExtraKeys!1231 lt!192770 lt!192772 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420079 () Bool)

(declare-fun res!245070 () Bool)

(assert (=> b!420079 (=> (not res!245070) (not e!250245))))

(assert (=> b!420079 (= res!245070 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12578 _keys!709))))))

(declare-fun mapNonEmpty!17916 () Bool)

(declare-fun tp!34662 () Bool)

(declare-fun e!250247 () Bool)

(assert (=> mapNonEmpty!17916 (= mapRes!17916 (and tp!34662 e!250247))))

(declare-fun mapValue!17916 () ValueCell!5088)

(declare-fun mapKey!17916 () (_ BitVec 32))

(declare-fun mapRest!17916 () (Array (_ BitVec 32) ValueCell!5088))

(assert (=> mapNonEmpty!17916 (= (arr!12225 _values!549) (store mapRest!17916 mapKey!17916 mapValue!17916))))

(declare-fun b!420080 () Bool)

(assert (=> b!420080 (= e!250247 tp_is_empty!10863)))

(declare-fun call!29308 () ListLongMap!6029)

(declare-fun bm!29306 () Bool)

(assert (=> bm!29306 (= call!29308 (getCurrentListMapNoExtraKeys!1231 (ite c!55205 _keys!709 lt!192770) (ite c!55205 _values!549 lt!192772) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420081 () Bool)

(declare-fun res!245078 () Bool)

(assert (=> b!420081 (=> (not res!245078) (not e!250245))))

(declare-fun arrayContainsKey!0 (array!25559 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!420081 (= res!245078 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!420082 () Bool)

(declare-fun res!245077 () Bool)

(assert (=> b!420082 (=> (not res!245077) (not e!250248))))

(assert (=> b!420082 (= res!245077 (arrayNoDuplicates!0 lt!192770 #b00000000000000000000000000000000 Nil!7145))))

(declare-fun b!420083 () Bool)

(declare-fun res!245076 () Bool)

(assert (=> b!420083 (=> (not res!245076) (not e!250245))))

(assert (=> b!420083 (= res!245076 (or (= (select (arr!12226 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12226 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!420084 () Bool)

(declare-fun call!29309 () ListLongMap!6029)

(assert (=> b!420084 (= e!250242 (= call!29309 (+!1235 call!29308 (tuple2!7103 k0!794 v!412))))))

(declare-fun mapIsEmpty!17916 () Bool)

(assert (=> mapIsEmpty!17916 mapRes!17916))

(declare-fun b!420085 () Bool)

(assert (=> b!420085 (= e!250242 (= call!29308 call!29309))))

(declare-fun bm!29305 () Bool)

(assert (=> bm!29305 (= call!29309 (getCurrentListMapNoExtraKeys!1231 (ite c!55205 lt!192770 _keys!709) (ite c!55205 lt!192772 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!245069 () Bool)

(assert (=> start!39452 (=> (not res!245069) (not e!250245))))

(assert (=> start!39452 (= res!245069 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12578 _keys!709))))))

(assert (=> start!39452 e!250245))

(assert (=> start!39452 tp_is_empty!10863))

(assert (=> start!39452 tp!34661))

(assert (=> start!39452 true))

(declare-fun array_inv!8908 (array!25557) Bool)

(assert (=> start!39452 (and (array_inv!8908 _values!549) e!250246)))

(declare-fun array_inv!8909 (array!25559) Bool)

(assert (=> start!39452 (array_inv!8909 _keys!709)))

(assert (= (and start!39452 res!245069) b!420075))

(assert (= (and b!420075 res!245080) b!420070))

(assert (= (and b!420070 res!245072) b!420076))

(assert (= (and b!420076 res!245073) b!420074))

(assert (= (and b!420074 res!245079) b!420079))

(assert (= (and b!420079 res!245070) b!420071))

(assert (= (and b!420071 res!245074) b!420083))

(assert (= (and b!420083 res!245076) b!420081))

(assert (= (and b!420081 res!245078) b!420077))

(assert (= (and b!420077 res!245081) b!420082))

(assert (= (and b!420082 res!245077) b!420073))

(assert (= (and b!420073 res!245075) b!420069))

(assert (= (and b!420069 res!245082) b!420072))

(assert (= (and b!420072 c!55205) b!420084))

(assert (= (and b!420072 (not c!55205)) b!420085))

(assert (= (or b!420084 b!420085) bm!29305))

(assert (= (or b!420084 b!420085) bm!29306))

(assert (= (and b!420072 (not res!245071)) b!420078))

(assert (= (and b!420067 condMapEmpty!17916) mapIsEmpty!17916))

(assert (= (and b!420067 (not condMapEmpty!17916)) mapNonEmpty!17916))

(get-info :version)

(assert (= (and mapNonEmpty!17916 ((_ is ValueCellFull!5088) mapValue!17916)) b!420080))

(assert (= (and b!420067 ((_ is ValueCellFull!5088) mapDefault!17916)) b!420068))

(assert (= start!39452 b!420067))

(declare-fun b_lambda!9045 () Bool)

(assert (=> (not b_lambda!9045) (not b!420078)))

(declare-fun t!12530 () Bool)

(declare-fun tb!3341 () Bool)

(assert (=> (and start!39452 (= defaultEntry!557 defaultEntry!557) t!12530) tb!3341))

(declare-fun result!6201 () Bool)

(assert (=> tb!3341 (= result!6201 tp_is_empty!10863)))

(assert (=> b!420078 t!12530))

(declare-fun b_and!17317 () Bool)

(assert (= b_and!17315 (and (=> t!12530 result!6201) b_and!17317)))

(declare-fun m!409709 () Bool)

(assert (=> b!420074 m!409709))

(declare-fun m!409711 () Bool)

(assert (=> b!420084 m!409711))

(declare-fun m!409713 () Bool)

(assert (=> b!420075 m!409713))

(declare-fun m!409715 () Bool)

(assert (=> b!420077 m!409715))

(declare-fun m!409717 () Bool)

(assert (=> b!420077 m!409717))

(declare-fun m!409719 () Bool)

(assert (=> start!39452 m!409719))

(declare-fun m!409721 () Bool)

(assert (=> start!39452 m!409721))

(declare-fun m!409723 () Bool)

(assert (=> b!420071 m!409723))

(declare-fun m!409725 () Bool)

(assert (=> mapNonEmpty!17916 m!409725))

(declare-fun m!409727 () Bool)

(assert (=> b!420076 m!409727))

(declare-fun m!409729 () Bool)

(assert (=> b!420081 m!409729))

(declare-fun m!409731 () Bool)

(assert (=> bm!29306 m!409731))

(declare-fun m!409733 () Bool)

(assert (=> b!420072 m!409733))

(assert (=> b!420072 m!409733))

(declare-fun m!409735 () Bool)

(assert (=> b!420072 m!409735))

(declare-fun m!409737 () Bool)

(assert (=> b!420072 m!409737))

(declare-fun m!409739 () Bool)

(assert (=> b!420069 m!409739))

(declare-fun m!409741 () Bool)

(assert (=> b!420069 m!409741))

(declare-fun m!409743 () Bool)

(assert (=> b!420069 m!409743))

(declare-fun m!409745 () Bool)

(assert (=> b!420078 m!409745))

(declare-fun m!409747 () Bool)

(assert (=> b!420078 m!409747))

(declare-fun m!409749 () Bool)

(assert (=> b!420078 m!409749))

(assert (=> b!420078 m!409741))

(declare-fun m!409751 () Bool)

(assert (=> b!420078 m!409751))

(declare-fun m!409753 () Bool)

(assert (=> b!420078 m!409753))

(declare-fun m!409755 () Bool)

(assert (=> b!420078 m!409755))

(declare-fun m!409757 () Bool)

(assert (=> b!420078 m!409757))

(declare-fun m!409759 () Bool)

(assert (=> b!420078 m!409759))

(assert (=> b!420078 m!409745))

(declare-fun m!409761 () Bool)

(assert (=> b!420078 m!409761))

(assert (=> b!420078 m!409751))

(declare-fun m!409763 () Bool)

(assert (=> b!420078 m!409763))

(declare-fun m!409765 () Bool)

(assert (=> b!420078 m!409765))

(assert (=> b!420078 m!409761))

(declare-fun m!409767 () Bool)

(assert (=> b!420078 m!409767))

(declare-fun m!409769 () Bool)

(assert (=> b!420082 m!409769))

(declare-fun m!409771 () Bool)

(assert (=> bm!29305 m!409771))

(declare-fun m!409773 () Bool)

(assert (=> b!420083 m!409773))

(check-sat (not b!420077) (not b!420078) (not b!420081) (not b_next!9711) (not b!420084) (not b!420072) (not b!420075) b_and!17317 (not b!420082) (not b!420074) (not b!420071) (not start!39452) (not b_lambda!9045) (not mapNonEmpty!17916) (not bm!29305) tp_is_empty!10863 (not bm!29306) (not b!420069) (not b!420076))
(check-sat b_and!17317 (not b_next!9711))
