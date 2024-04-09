; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39416 () Bool)

(assert start!39416)

(declare-fun b_free!9675 () Bool)

(declare-fun b_next!9675 () Bool)

(assert (=> start!39416 (= b_free!9675 (not b_next!9675))))

(declare-fun tp!34554 () Bool)

(declare-fun b_and!17243 () Bool)

(assert (=> start!39416 (= tp!34554 b_and!17243)))

(declare-fun b!419005 () Bool)

(declare-fun e!249755 () Bool)

(declare-fun e!249756 () Bool)

(declare-fun mapRes!17862 () Bool)

(assert (=> b!419005 (= e!249755 (and e!249756 mapRes!17862))))

(declare-fun condMapEmpty!17862 () Bool)

(declare-datatypes ((V!15541 0))(
  ( (V!15542 (val!5458 Int)) )
))
(declare-datatypes ((ValueCell!5070 0))(
  ( (ValueCellFull!5070 (v!7701 V!15541)) (EmptyCell!5070) )
))
(declare-datatypes ((array!25485 0))(
  ( (array!25486 (arr!12189 (Array (_ BitVec 32) ValueCell!5070)) (size!12541 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25485)

(declare-fun mapDefault!17862 () ValueCell!5070)

(assert (=> b!419005 (= condMapEmpty!17862 (= (arr!12189 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5070)) mapDefault!17862)))))

(declare-fun b!419006 () Bool)

(declare-fun tp_is_empty!10827 () Bool)

(assert (=> b!419006 (= e!249756 tp_is_empty!10827)))

(declare-fun b!419007 () Bool)

(declare-fun e!249758 () Bool)

(assert (=> b!419007 (= e!249758 true)))

(declare-datatypes ((tuple2!7070 0))(
  ( (tuple2!7071 (_1!3545 (_ BitVec 64)) (_2!3545 V!15541)) )
))
(declare-fun lt!192174 () tuple2!7070)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!192178 () V!15541)

(declare-datatypes ((List!7117 0))(
  ( (Nil!7114) (Cons!7113 (h!7969 tuple2!7070) (t!12465 List!7117)) )
))
(declare-datatypes ((ListLongMap!5997 0))(
  ( (ListLongMap!5998 (toList!3014 List!7117)) )
))
(declare-fun lt!192177 () ListLongMap!5997)

(declare-fun +!1221 (ListLongMap!5997 tuple2!7070) ListLongMap!5997)

(assert (=> b!419007 (= (+!1221 lt!192177 lt!192174) (+!1221 (+!1221 lt!192177 (tuple2!7071 k0!794 lt!192178)) lt!192174))))

(declare-fun lt!192176 () V!15541)

(assert (=> b!419007 (= lt!192174 (tuple2!7071 k0!794 lt!192176))))

(declare-datatypes ((Unit!12341 0))(
  ( (Unit!12342) )
))
(declare-fun lt!192175 () Unit!12341)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!41 (ListLongMap!5997 (_ BitVec 64) V!15541 V!15541) Unit!12341)

(assert (=> b!419007 (= lt!192175 (addSameAsAddTwiceSameKeyDiffValues!41 lt!192177 k0!794 lt!192178 lt!192176))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!192183 () V!15541)

(declare-fun get!6048 (ValueCell!5070 V!15541) V!15541)

(assert (=> b!419007 (= lt!192178 (get!6048 (select (arr!12189 _values!549) from!863) lt!192183))))

(declare-fun lt!192179 () ListLongMap!5997)

(declare-datatypes ((array!25487 0))(
  ( (array!25488 (arr!12190 (Array (_ BitVec 32) (_ BitVec 64))) (size!12542 (_ BitVec 32))) )
))
(declare-fun lt!192180 () array!25487)

(assert (=> b!419007 (= lt!192179 (+!1221 lt!192177 (tuple2!7071 (select (arr!12190 lt!192180) from!863) lt!192176)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15541)

(assert (=> b!419007 (= lt!192176 (get!6048 (select (store (arr!12189 _values!549) i!563 (ValueCellFull!5070 v!412)) from!863) lt!192183))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!703 (Int (_ BitVec 64)) V!15541)

(assert (=> b!419007 (= lt!192183 (dynLambda!703 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!15541)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!192173 () array!25485)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15541)

(declare-fun getCurrentListMapNoExtraKeys!1216 (array!25487 array!25485 (_ BitVec 32) (_ BitVec 32) V!15541 V!15541 (_ BitVec 32) Int) ListLongMap!5997)

(assert (=> b!419007 (= lt!192177 (getCurrentListMapNoExtraKeys!1216 lt!192180 lt!192173 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419008 () Bool)

(declare-fun e!249762 () Bool)

(assert (=> b!419008 (= e!249762 tp_is_empty!10827)))

(declare-fun b!419009 () Bool)

(declare-fun res!244326 () Bool)

(declare-fun e!249757 () Bool)

(assert (=> b!419009 (=> (not res!244326) (not e!249757))))

(declare-fun _keys!709 () array!25487)

(assert (=> b!419009 (= res!244326 (and (= (size!12541 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12542 _keys!709) (size!12541 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!419010 () Bool)

(declare-fun res!244317 () Bool)

(assert (=> b!419010 (=> (not res!244317) (not e!249757))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!419010 (= res!244317 (validMask!0 mask!1025))))

(declare-fun b!419011 () Bool)

(declare-fun e!249759 () Bool)

(assert (=> b!419011 (= e!249757 e!249759)))

(declare-fun res!244316 () Bool)

(assert (=> b!419011 (=> (not res!244316) (not e!249759))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25487 (_ BitVec 32)) Bool)

(assert (=> b!419011 (= res!244316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!192180 mask!1025))))

(assert (=> b!419011 (= lt!192180 (array!25488 (store (arr!12190 _keys!709) i!563 k0!794) (size!12542 _keys!709)))))

(declare-fun b!419012 () Bool)

(declare-fun res!244324 () Bool)

(assert (=> b!419012 (=> (not res!244324) (not e!249757))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!419012 (= res!244324 (validKeyInArray!0 k0!794))))

(declare-fun call!29200 () ListLongMap!5997)

(declare-fun b!419013 () Bool)

(declare-fun e!249760 () Bool)

(declare-fun call!29201 () ListLongMap!5997)

(assert (=> b!419013 (= e!249760 (= call!29201 (+!1221 call!29200 (tuple2!7071 k0!794 v!412))))))

(declare-fun b!419014 () Bool)

(declare-fun res!244321 () Bool)

(assert (=> b!419014 (=> (not res!244321) (not e!249759))))

(declare-datatypes ((List!7118 0))(
  ( (Nil!7115) (Cons!7114 (h!7970 (_ BitVec 64)) (t!12466 List!7118)) )
))
(declare-fun arrayNoDuplicates!0 (array!25487 (_ BitVec 32) List!7118) Bool)

(assert (=> b!419014 (= res!244321 (arrayNoDuplicates!0 lt!192180 #b00000000000000000000000000000000 Nil!7115))))

(declare-fun c!55151 () Bool)

(declare-fun bm!29197 () Bool)

(assert (=> bm!29197 (= call!29200 (getCurrentListMapNoExtraKeys!1216 (ite c!55151 _keys!709 lt!192180) (ite c!55151 _values!549 lt!192173) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29198 () Bool)

(assert (=> bm!29198 (= call!29201 (getCurrentListMapNoExtraKeys!1216 (ite c!55151 lt!192180 _keys!709) (ite c!55151 lt!192173 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419015 () Bool)

(declare-fun res!244319 () Bool)

(assert (=> b!419015 (=> (not res!244319) (not e!249757))))

(assert (=> b!419015 (= res!244319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!419016 () Bool)

(declare-fun res!244320 () Bool)

(assert (=> b!419016 (=> (not res!244320) (not e!249759))))

(assert (=> b!419016 (= res!244320 (bvsle from!863 i!563))))

(declare-fun b!419017 () Bool)

(assert (=> b!419017 (= e!249760 (= call!29200 call!29201))))

(declare-fun b!419018 () Bool)

(declare-fun res!244315 () Bool)

(assert (=> b!419018 (=> (not res!244315) (not e!249757))))

(assert (=> b!419018 (= res!244315 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7115))))

(declare-fun res!244318 () Bool)

(assert (=> start!39416 (=> (not res!244318) (not e!249757))))

(assert (=> start!39416 (= res!244318 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12542 _keys!709))))))

(assert (=> start!39416 e!249757))

(assert (=> start!39416 tp_is_empty!10827))

(assert (=> start!39416 tp!34554))

(assert (=> start!39416 true))

(declare-fun array_inv!8886 (array!25485) Bool)

(assert (=> start!39416 (and (array_inv!8886 _values!549) e!249755)))

(declare-fun array_inv!8887 (array!25487) Bool)

(assert (=> start!39416 (array_inv!8887 _keys!709)))

(declare-fun b!419019 () Bool)

(declare-fun res!244323 () Bool)

(assert (=> b!419019 (=> (not res!244323) (not e!249757))))

(assert (=> b!419019 (= res!244323 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12542 _keys!709))))))

(declare-fun mapIsEmpty!17862 () Bool)

(assert (=> mapIsEmpty!17862 mapRes!17862))

(declare-fun b!419020 () Bool)

(declare-fun e!249761 () Bool)

(assert (=> b!419020 (= e!249759 e!249761)))

(declare-fun res!244313 () Bool)

(assert (=> b!419020 (=> (not res!244313) (not e!249761))))

(assert (=> b!419020 (= res!244313 (= from!863 i!563))))

(assert (=> b!419020 (= lt!192179 (getCurrentListMapNoExtraKeys!1216 lt!192180 lt!192173 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!419020 (= lt!192173 (array!25486 (store (arr!12189 _values!549) i!563 (ValueCellFull!5070 v!412)) (size!12541 _values!549)))))

(declare-fun lt!192181 () ListLongMap!5997)

(assert (=> b!419020 (= lt!192181 (getCurrentListMapNoExtraKeys!1216 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!17862 () Bool)

(declare-fun tp!34553 () Bool)

(assert (=> mapNonEmpty!17862 (= mapRes!17862 (and tp!34553 e!249762))))

(declare-fun mapKey!17862 () (_ BitVec 32))

(declare-fun mapRest!17862 () (Array (_ BitVec 32) ValueCell!5070))

(declare-fun mapValue!17862 () ValueCell!5070)

(assert (=> mapNonEmpty!17862 (= (arr!12189 _values!549) (store mapRest!17862 mapKey!17862 mapValue!17862))))

(declare-fun b!419021 () Bool)

(declare-fun res!244322 () Bool)

(assert (=> b!419021 (=> (not res!244322) (not e!249757))))

(assert (=> b!419021 (= res!244322 (or (= (select (arr!12190 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12190 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!419022 () Bool)

(assert (=> b!419022 (= e!249761 (not e!249758))))

(declare-fun res!244314 () Bool)

(assert (=> b!419022 (=> res!244314 e!249758)))

(assert (=> b!419022 (= res!244314 (validKeyInArray!0 (select (arr!12190 _keys!709) from!863)))))

(assert (=> b!419022 e!249760))

(assert (=> b!419022 (= c!55151 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!192182 () Unit!12341)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!427 (array!25487 array!25485 (_ BitVec 32) (_ BitVec 32) V!15541 V!15541 (_ BitVec 32) (_ BitVec 64) V!15541 (_ BitVec 32) Int) Unit!12341)

(assert (=> b!419022 (= lt!192182 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!427 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419023 () Bool)

(declare-fun res!244325 () Bool)

(assert (=> b!419023 (=> (not res!244325) (not e!249757))))

(declare-fun arrayContainsKey!0 (array!25487 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!419023 (= res!244325 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!39416 res!244318) b!419010))

(assert (= (and b!419010 res!244317) b!419009))

(assert (= (and b!419009 res!244326) b!419015))

(assert (= (and b!419015 res!244319) b!419018))

(assert (= (and b!419018 res!244315) b!419019))

(assert (= (and b!419019 res!244323) b!419012))

(assert (= (and b!419012 res!244324) b!419021))

(assert (= (and b!419021 res!244322) b!419023))

(assert (= (and b!419023 res!244325) b!419011))

(assert (= (and b!419011 res!244316) b!419014))

(assert (= (and b!419014 res!244321) b!419016))

(assert (= (and b!419016 res!244320) b!419020))

(assert (= (and b!419020 res!244313) b!419022))

(assert (= (and b!419022 c!55151) b!419013))

(assert (= (and b!419022 (not c!55151)) b!419017))

(assert (= (or b!419013 b!419017) bm!29198))

(assert (= (or b!419013 b!419017) bm!29197))

(assert (= (and b!419022 (not res!244314)) b!419007))

(assert (= (and b!419005 condMapEmpty!17862) mapIsEmpty!17862))

(assert (= (and b!419005 (not condMapEmpty!17862)) mapNonEmpty!17862))

(get-info :version)

(assert (= (and mapNonEmpty!17862 ((_ is ValueCellFull!5070) mapValue!17862)) b!419008))

(assert (= (and b!419005 ((_ is ValueCellFull!5070) mapDefault!17862)) b!419006))

(assert (= start!39416 b!419005))

(declare-fun b_lambda!9009 () Bool)

(assert (=> (not b_lambda!9009) (not b!419007)))

(declare-fun t!12464 () Bool)

(declare-fun tb!3305 () Bool)

(assert (=> (and start!39416 (= defaultEntry!557 defaultEntry!557) t!12464) tb!3305))

(declare-fun result!6129 () Bool)

(assert (=> tb!3305 (= result!6129 tp_is_empty!10827)))

(assert (=> b!419007 t!12464))

(declare-fun b_and!17245 () Bool)

(assert (= b_and!17243 (and (=> t!12464 result!6129) b_and!17245)))

(declare-fun m!408523 () Bool)

(assert (=> b!419023 m!408523))

(declare-fun m!408525 () Bool)

(assert (=> b!419012 m!408525))

(declare-fun m!408527 () Bool)

(assert (=> b!419013 m!408527))

(declare-fun m!408529 () Bool)

(assert (=> b!419021 m!408529))

(declare-fun m!408531 () Bool)

(assert (=> b!419011 m!408531))

(declare-fun m!408533 () Bool)

(assert (=> b!419011 m!408533))

(declare-fun m!408535 () Bool)

(assert (=> bm!29197 m!408535))

(declare-fun m!408537 () Bool)

(assert (=> bm!29198 m!408537))

(declare-fun m!408539 () Bool)

(assert (=> b!419007 m!408539))

(declare-fun m!408541 () Bool)

(assert (=> b!419007 m!408541))

(declare-fun m!408543 () Bool)

(assert (=> b!419007 m!408543))

(declare-fun m!408545 () Bool)

(assert (=> b!419007 m!408545))

(declare-fun m!408547 () Bool)

(assert (=> b!419007 m!408547))

(declare-fun m!408549 () Bool)

(assert (=> b!419007 m!408549))

(assert (=> b!419007 m!408541))

(declare-fun m!408551 () Bool)

(assert (=> b!419007 m!408551))

(declare-fun m!408553 () Bool)

(assert (=> b!419007 m!408553))

(declare-fun m!408555 () Bool)

(assert (=> b!419007 m!408555))

(assert (=> b!419007 m!408549))

(declare-fun m!408557 () Bool)

(assert (=> b!419007 m!408557))

(declare-fun m!408559 () Bool)

(assert (=> b!419007 m!408559))

(assert (=> b!419007 m!408547))

(declare-fun m!408561 () Bool)

(assert (=> b!419007 m!408561))

(declare-fun m!408563 () Bool)

(assert (=> b!419007 m!408563))

(declare-fun m!408565 () Bool)

(assert (=> b!419014 m!408565))

(declare-fun m!408567 () Bool)

(assert (=> b!419022 m!408567))

(assert (=> b!419022 m!408567))

(declare-fun m!408569 () Bool)

(assert (=> b!419022 m!408569))

(declare-fun m!408571 () Bool)

(assert (=> b!419022 m!408571))

(declare-fun m!408573 () Bool)

(assert (=> b!419018 m!408573))

(declare-fun m!408575 () Bool)

(assert (=> b!419020 m!408575))

(assert (=> b!419020 m!408545))

(declare-fun m!408577 () Bool)

(assert (=> b!419020 m!408577))

(declare-fun m!408579 () Bool)

(assert (=> mapNonEmpty!17862 m!408579))

(declare-fun m!408581 () Bool)

(assert (=> start!39416 m!408581))

(declare-fun m!408583 () Bool)

(assert (=> start!39416 m!408583))

(declare-fun m!408585 () Bool)

(assert (=> b!419010 m!408585))

(declare-fun m!408587 () Bool)

(assert (=> b!419015 m!408587))

(check-sat (not b!419012) b_and!17245 (not b!419020) (not bm!29197) (not b!419014) (not b!419007) (not bm!29198) (not b!419010) tp_is_empty!10827 (not b!419018) (not b_next!9675) (not b!419023) (not b_lambda!9009) (not start!39416) (not mapNonEmpty!17862) (not b!419022) (not b!419015) (not b!419011) (not b!419013))
(check-sat b_and!17245 (not b_next!9675))
