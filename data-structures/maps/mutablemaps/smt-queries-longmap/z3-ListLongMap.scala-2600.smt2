; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39428 () Bool)

(assert start!39428)

(declare-fun b_free!9687 () Bool)

(declare-fun b_next!9687 () Bool)

(assert (=> start!39428 (= b_free!9687 (not b_next!9687))))

(declare-fun tp!34590 () Bool)

(declare-fun b_and!17267 () Bool)

(assert (=> start!39428 (= tp!34590 b_and!17267)))

(declare-fun b!419359 () Bool)

(declare-fun e!249918 () Bool)

(assert (=> b!419359 (= e!249918 true)))

(declare-datatypes ((V!15557 0))(
  ( (V!15558 (val!5464 Int)) )
))
(declare-fun lt!192381 () V!15557)

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((tuple2!7082 0))(
  ( (tuple2!7083 (_1!3551 (_ BitVec 64)) (_2!3551 V!15557)) )
))
(declare-datatypes ((List!7127 0))(
  ( (Nil!7124) (Cons!7123 (h!7979 tuple2!7082) (t!12487 List!7127)) )
))
(declare-datatypes ((ListLongMap!6009 0))(
  ( (ListLongMap!6010 (toList!3020 List!7127)) )
))
(declare-fun lt!192380 () ListLongMap!6009)

(declare-fun lt!192375 () tuple2!7082)

(declare-fun +!1225 (ListLongMap!6009 tuple2!7082) ListLongMap!6009)

(assert (=> b!419359 (= (+!1225 lt!192380 lt!192375) (+!1225 (+!1225 lt!192380 (tuple2!7083 k0!794 lt!192381)) lt!192375))))

(declare-fun lt!192371 () V!15557)

(assert (=> b!419359 (= lt!192375 (tuple2!7083 k0!794 lt!192371))))

(declare-datatypes ((Unit!12349 0))(
  ( (Unit!12350) )
))
(declare-fun lt!192378 () Unit!12349)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!44 (ListLongMap!6009 (_ BitVec 64) V!15557 V!15557) Unit!12349)

(assert (=> b!419359 (= lt!192378 (addSameAsAddTwiceSameKeyDiffValues!44 lt!192380 k0!794 lt!192381 lt!192371))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5076 0))(
  ( (ValueCellFull!5076 (v!7707 V!15557)) (EmptyCell!5076) )
))
(declare-datatypes ((array!25509 0))(
  ( (array!25510 (arr!12201 (Array (_ BitVec 32) ValueCell!5076)) (size!12553 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25509)

(declare-fun lt!192377 () V!15557)

(declare-fun get!6055 (ValueCell!5076 V!15557) V!15557)

(assert (=> b!419359 (= lt!192381 (get!6055 (select (arr!12201 _values!549) from!863) lt!192377))))

(declare-fun lt!192373 () ListLongMap!6009)

(declare-datatypes ((array!25511 0))(
  ( (array!25512 (arr!12202 (Array (_ BitVec 32) (_ BitVec 64))) (size!12554 (_ BitVec 32))) )
))
(declare-fun lt!192372 () array!25511)

(assert (=> b!419359 (= lt!192373 (+!1225 lt!192380 (tuple2!7083 (select (arr!12202 lt!192372) from!863) lt!192371)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15557)

(assert (=> b!419359 (= lt!192371 (get!6055 (select (store (arr!12201 _values!549) i!563 (ValueCellFull!5076 v!412)) from!863) lt!192377))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!706 (Int (_ BitVec 64)) V!15557)

(assert (=> b!419359 (= lt!192377 (dynLambda!706 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!15557)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15557)

(declare-fun lt!192376 () array!25509)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1221 (array!25511 array!25509 (_ BitVec 32) (_ BitVec 32) V!15557 V!15557 (_ BitVec 32) Int) ListLongMap!6009)

(assert (=> b!419359 (= lt!192380 (getCurrentListMapNoExtraKeys!1221 lt!192372 lt!192376 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419360 () Bool)

(declare-fun res!244572 () Bool)

(declare-fun e!249924 () Bool)

(assert (=> b!419360 (=> (not res!244572) (not e!249924))))

(declare-fun _keys!709 () array!25511)

(assert (=> b!419360 (= res!244572 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12554 _keys!709))))))

(declare-fun b!419361 () Bool)

(declare-fun res!244571 () Bool)

(assert (=> b!419361 (=> (not res!244571) (not e!249924))))

(assert (=> b!419361 (= res!244571 (or (= (select (arr!12202 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12202 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!419362 () Bool)

(declare-fun e!249919 () Bool)

(declare-fun tp_is_empty!10839 () Bool)

(assert (=> b!419362 (= e!249919 tp_is_empty!10839)))

(declare-fun b!419363 () Bool)

(declare-fun res!244570 () Bool)

(assert (=> b!419363 (=> (not res!244570) (not e!249924))))

(assert (=> b!419363 (= res!244570 (and (= (size!12553 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12554 _keys!709) (size!12553 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!419364 () Bool)

(declare-fun e!249917 () Bool)

(assert (=> b!419364 (= e!249917 (not e!249918))))

(declare-fun res!244574 () Bool)

(assert (=> b!419364 (=> res!244574 e!249918)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!419364 (= res!244574 (validKeyInArray!0 (select (arr!12202 _keys!709) from!863)))))

(declare-fun e!249922 () Bool)

(assert (=> b!419364 e!249922))

(declare-fun c!55169 () Bool)

(assert (=> b!419364 (= c!55169 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!192374 () Unit!12349)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!430 (array!25511 array!25509 (_ BitVec 32) (_ BitVec 32) V!15557 V!15557 (_ BitVec 32) (_ BitVec 64) V!15557 (_ BitVec 32) Int) Unit!12349)

(assert (=> b!419364 (= lt!192374 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!430 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29233 () Bool)

(declare-fun call!29237 () ListLongMap!6009)

(assert (=> bm!29233 (= call!29237 (getCurrentListMapNoExtraKeys!1221 (ite c!55169 _keys!709 lt!192372) (ite c!55169 _values!549 lt!192376) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419365 () Bool)

(declare-fun res!244578 () Bool)

(declare-fun e!249921 () Bool)

(assert (=> b!419365 (=> (not res!244578) (not e!249921))))

(assert (=> b!419365 (= res!244578 (bvsle from!863 i!563))))

(declare-fun b!419366 () Bool)

(declare-fun res!244576 () Bool)

(assert (=> b!419366 (=> (not res!244576) (not e!249924))))

(declare-fun arrayContainsKey!0 (array!25511 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!419366 (= res!244576 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!419367 () Bool)

(declare-fun e!249925 () Bool)

(declare-fun e!249920 () Bool)

(declare-fun mapRes!17880 () Bool)

(assert (=> b!419367 (= e!249925 (and e!249920 mapRes!17880))))

(declare-fun condMapEmpty!17880 () Bool)

(declare-fun mapDefault!17880 () ValueCell!5076)

(assert (=> b!419367 (= condMapEmpty!17880 (= (arr!12201 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5076)) mapDefault!17880)))))

(declare-fun b!419368 () Bool)

(declare-fun call!29236 () ListLongMap!6009)

(assert (=> b!419368 (= e!249922 (= call!29237 call!29236))))

(declare-fun b!419370 () Bool)

(declare-fun res!244566 () Bool)

(assert (=> b!419370 (=> (not res!244566) (not e!249924))))

(assert (=> b!419370 (= res!244566 (validKeyInArray!0 k0!794))))

(declare-fun b!419371 () Bool)

(assert (=> b!419371 (= e!249922 (= call!29236 (+!1225 call!29237 (tuple2!7083 k0!794 v!412))))))

(declare-fun b!419372 () Bool)

(declare-fun res!244575 () Bool)

(assert (=> b!419372 (=> (not res!244575) (not e!249921))))

(declare-datatypes ((List!7128 0))(
  ( (Nil!7125) (Cons!7124 (h!7980 (_ BitVec 64)) (t!12488 List!7128)) )
))
(declare-fun arrayNoDuplicates!0 (array!25511 (_ BitVec 32) List!7128) Bool)

(assert (=> b!419372 (= res!244575 (arrayNoDuplicates!0 lt!192372 #b00000000000000000000000000000000 Nil!7125))))

(declare-fun b!419373 () Bool)

(assert (=> b!419373 (= e!249920 tp_is_empty!10839)))

(declare-fun b!419374 () Bool)

(declare-fun res!244567 () Bool)

(assert (=> b!419374 (=> (not res!244567) (not e!249924))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25511 (_ BitVec 32)) Bool)

(assert (=> b!419374 (= res!244567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun bm!29234 () Bool)

(assert (=> bm!29234 (= call!29236 (getCurrentListMapNoExtraKeys!1221 (ite c!55169 lt!192372 _keys!709) (ite c!55169 lt!192376 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419375 () Bool)

(declare-fun res!244577 () Bool)

(assert (=> b!419375 (=> (not res!244577) (not e!249924))))

(assert (=> b!419375 (= res!244577 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7125))))

(declare-fun mapNonEmpty!17880 () Bool)

(declare-fun tp!34589 () Bool)

(assert (=> mapNonEmpty!17880 (= mapRes!17880 (and tp!34589 e!249919))))

(declare-fun mapRest!17880 () (Array (_ BitVec 32) ValueCell!5076))

(declare-fun mapValue!17880 () ValueCell!5076)

(declare-fun mapKey!17880 () (_ BitVec 32))

(assert (=> mapNonEmpty!17880 (= (arr!12201 _values!549) (store mapRest!17880 mapKey!17880 mapValue!17880))))

(declare-fun mapIsEmpty!17880 () Bool)

(assert (=> mapIsEmpty!17880 mapRes!17880))

(declare-fun b!419376 () Bool)

(declare-fun res!244573 () Bool)

(assert (=> b!419376 (=> (not res!244573) (not e!249924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!419376 (= res!244573 (validMask!0 mask!1025))))

(declare-fun b!419377 () Bool)

(assert (=> b!419377 (= e!249924 e!249921)))

(declare-fun res!244565 () Bool)

(assert (=> b!419377 (=> (not res!244565) (not e!249921))))

(assert (=> b!419377 (= res!244565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!192372 mask!1025))))

(assert (=> b!419377 (= lt!192372 (array!25512 (store (arr!12202 _keys!709) i!563 k0!794) (size!12554 _keys!709)))))

(declare-fun res!244568 () Bool)

(assert (=> start!39428 (=> (not res!244568) (not e!249924))))

(assert (=> start!39428 (= res!244568 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12554 _keys!709))))))

(assert (=> start!39428 e!249924))

(assert (=> start!39428 tp_is_empty!10839))

(assert (=> start!39428 tp!34590))

(assert (=> start!39428 true))

(declare-fun array_inv!8890 (array!25509) Bool)

(assert (=> start!39428 (and (array_inv!8890 _values!549) e!249925)))

(declare-fun array_inv!8891 (array!25511) Bool)

(assert (=> start!39428 (array_inv!8891 _keys!709)))

(declare-fun b!419369 () Bool)

(assert (=> b!419369 (= e!249921 e!249917)))

(declare-fun res!244569 () Bool)

(assert (=> b!419369 (=> (not res!244569) (not e!249917))))

(assert (=> b!419369 (= res!244569 (= from!863 i!563))))

(assert (=> b!419369 (= lt!192373 (getCurrentListMapNoExtraKeys!1221 lt!192372 lt!192376 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!419369 (= lt!192376 (array!25510 (store (arr!12201 _values!549) i!563 (ValueCellFull!5076 v!412)) (size!12553 _values!549)))))

(declare-fun lt!192379 () ListLongMap!6009)

(assert (=> b!419369 (= lt!192379 (getCurrentListMapNoExtraKeys!1221 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (= (and start!39428 res!244568) b!419376))

(assert (= (and b!419376 res!244573) b!419363))

(assert (= (and b!419363 res!244570) b!419374))

(assert (= (and b!419374 res!244567) b!419375))

(assert (= (and b!419375 res!244577) b!419360))

(assert (= (and b!419360 res!244572) b!419370))

(assert (= (and b!419370 res!244566) b!419361))

(assert (= (and b!419361 res!244571) b!419366))

(assert (= (and b!419366 res!244576) b!419377))

(assert (= (and b!419377 res!244565) b!419372))

(assert (= (and b!419372 res!244575) b!419365))

(assert (= (and b!419365 res!244578) b!419369))

(assert (= (and b!419369 res!244569) b!419364))

(assert (= (and b!419364 c!55169) b!419371))

(assert (= (and b!419364 (not c!55169)) b!419368))

(assert (= (or b!419371 b!419368) bm!29234))

(assert (= (or b!419371 b!419368) bm!29233))

(assert (= (and b!419364 (not res!244574)) b!419359))

(assert (= (and b!419367 condMapEmpty!17880) mapIsEmpty!17880))

(assert (= (and b!419367 (not condMapEmpty!17880)) mapNonEmpty!17880))

(get-info :version)

(assert (= (and mapNonEmpty!17880 ((_ is ValueCellFull!5076) mapValue!17880)) b!419362))

(assert (= (and b!419367 ((_ is ValueCellFull!5076) mapDefault!17880)) b!419373))

(assert (= start!39428 b!419367))

(declare-fun b_lambda!9021 () Bool)

(assert (=> (not b_lambda!9021) (not b!419359)))

(declare-fun t!12486 () Bool)

(declare-fun tb!3317 () Bool)

(assert (=> (and start!39428 (= defaultEntry!557 defaultEntry!557) t!12486) tb!3317))

(declare-fun result!6153 () Bool)

(assert (=> tb!3317 (= result!6153 tp_is_empty!10839)))

(assert (=> b!419359 t!12486))

(declare-fun b_and!17269 () Bool)

(assert (= b_and!17267 (and (=> t!12486 result!6153) b_and!17269)))

(declare-fun m!408919 () Bool)

(assert (=> start!39428 m!408919))

(declare-fun m!408921 () Bool)

(assert (=> start!39428 m!408921))

(declare-fun m!408923 () Bool)

(assert (=> b!419371 m!408923))

(declare-fun m!408925 () Bool)

(assert (=> b!419359 m!408925))

(declare-fun m!408927 () Bool)

(assert (=> b!419359 m!408927))

(declare-fun m!408929 () Bool)

(assert (=> b!419359 m!408929))

(declare-fun m!408931 () Bool)

(assert (=> b!419359 m!408931))

(declare-fun m!408933 () Bool)

(assert (=> b!419359 m!408933))

(declare-fun m!408935 () Bool)

(assert (=> b!419359 m!408935))

(assert (=> b!419359 m!408933))

(declare-fun m!408937 () Bool)

(assert (=> b!419359 m!408937))

(declare-fun m!408939 () Bool)

(assert (=> b!419359 m!408939))

(assert (=> b!419359 m!408927))

(declare-fun m!408941 () Bool)

(assert (=> b!419359 m!408941))

(declare-fun m!408943 () Bool)

(assert (=> b!419359 m!408943))

(declare-fun m!408945 () Bool)

(assert (=> b!419359 m!408945))

(declare-fun m!408947 () Bool)

(assert (=> b!419359 m!408947))

(assert (=> b!419359 m!408939))

(declare-fun m!408949 () Bool)

(assert (=> b!419359 m!408949))

(declare-fun m!408951 () Bool)

(assert (=> b!419377 m!408951))

(declare-fun m!408953 () Bool)

(assert (=> b!419377 m!408953))

(declare-fun m!408955 () Bool)

(assert (=> b!419366 m!408955))

(declare-fun m!408957 () Bool)

(assert (=> b!419375 m!408957))

(declare-fun m!408959 () Bool)

(assert (=> b!419370 m!408959))

(declare-fun m!408961 () Bool)

(assert (=> b!419364 m!408961))

(assert (=> b!419364 m!408961))

(declare-fun m!408963 () Bool)

(assert (=> b!419364 m!408963))

(declare-fun m!408965 () Bool)

(assert (=> b!419364 m!408965))

(declare-fun m!408967 () Bool)

(assert (=> mapNonEmpty!17880 m!408967))

(declare-fun m!408969 () Bool)

(assert (=> b!419361 m!408969))

(declare-fun m!408971 () Bool)

(assert (=> b!419372 m!408971))

(declare-fun m!408973 () Bool)

(assert (=> b!419369 m!408973))

(assert (=> b!419369 m!408931))

(declare-fun m!408975 () Bool)

(assert (=> b!419369 m!408975))

(declare-fun m!408977 () Bool)

(assert (=> bm!29233 m!408977))

(declare-fun m!408979 () Bool)

(assert (=> b!419376 m!408979))

(declare-fun m!408981 () Bool)

(assert (=> b!419374 m!408981))

(declare-fun m!408983 () Bool)

(assert (=> bm!29234 m!408983))

(check-sat (not b!419377) (not b!419371) (not b!419370) (not start!39428) (not b_lambda!9021) (not b!419374) (not b!419376) (not b!419369) (not b!419364) (not mapNonEmpty!17880) tp_is_empty!10839 (not b!419359) (not b!419366) (not bm!29233) (not b!419375) b_and!17269 (not bm!29234) (not b_next!9687) (not b!419372))
(check-sat b_and!17269 (not b_next!9687))
