; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39380 () Bool)

(assert start!39380)

(declare-fun b_free!9639 () Bool)

(declare-fun b_next!9639 () Bool)

(assert (=> start!39380 (= b_free!9639 (not b_next!9639))))

(declare-fun tp!34446 () Bool)

(declare-fun b_and!17171 () Bool)

(assert (=> start!39380 (= tp!34446 b_and!17171)))

(declare-fun b!417943 () Bool)

(declare-fun res!243566 () Bool)

(declare-fun e!249273 () Bool)

(assert (=> b!417943 (=> (not res!243566) (not e!249273))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!417943 (= res!243566 (bvsle from!863 i!563))))

(declare-fun b!417944 () Bool)

(declare-fun res!243565 () Bool)

(declare-fun e!249270 () Bool)

(assert (=> b!417944 (=> (not res!243565) (not e!249270))))

(declare-datatypes ((array!25417 0))(
  ( (array!25418 (arr!12155 (Array (_ BitVec 32) (_ BitVec 64))) (size!12507 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25417)

(assert (=> b!417944 (= res!243565 (or (= (select (arr!12155 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12155 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!417945 () Bool)

(declare-fun res!243570 () Bool)

(assert (=> b!417945 (=> (not res!243570) (not e!249270))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15493 0))(
  ( (V!15494 (val!5440 Int)) )
))
(declare-datatypes ((ValueCell!5052 0))(
  ( (ValueCellFull!5052 (v!7683 V!15493)) (EmptyCell!5052) )
))
(declare-datatypes ((array!25419 0))(
  ( (array!25420 (arr!12156 (Array (_ BitVec 32) ValueCell!5052)) (size!12508 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25419)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!417945 (= res!243570 (and (= (size!12508 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12507 _keys!709) (size!12508 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun e!249275 () Bool)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun b!417946 () Bool)

(declare-datatypes ((tuple2!7038 0))(
  ( (tuple2!7039 (_1!3529 (_ BitVec 64)) (_2!3529 V!15493)) )
))
(declare-datatypes ((List!7089 0))(
  ( (Nil!7086) (Cons!7085 (h!7941 tuple2!7038) (t!12401 List!7089)) )
))
(declare-datatypes ((ListLongMap!5965 0))(
  ( (ListLongMap!5966 (toList!2998 List!7089)) )
))
(declare-fun call!29092 () ListLongMap!5965)

(declare-fun call!29093 () ListLongMap!5965)

(declare-fun v!412 () V!15493)

(declare-fun +!1207 (ListLongMap!5965 tuple2!7038) ListLongMap!5965)

(assert (=> b!417946 (= e!249275 (= call!29092 (+!1207 call!29093 (tuple2!7039 k0!794 v!412))))))

(declare-fun b!417947 () Bool)

(declare-fun e!249276 () Bool)

(declare-fun e!249274 () Bool)

(declare-fun mapRes!17808 () Bool)

(assert (=> b!417947 (= e!249276 (and e!249274 mapRes!17808))))

(declare-fun condMapEmpty!17808 () Bool)

(declare-fun mapDefault!17808 () ValueCell!5052)

(assert (=> b!417947 (= condMapEmpty!17808 (= (arr!12156 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5052)) mapDefault!17808)))))

(declare-fun lt!191587 () array!25417)

(declare-fun minValue!515 () V!15493)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15493)

(declare-fun bm!29089 () Bool)

(declare-fun c!55097 () Bool)

(declare-fun lt!191588 () array!25419)

(declare-fun getCurrentListMapNoExtraKeys!1201 (array!25417 array!25419 (_ BitVec 32) (_ BitVec 32) V!15493 V!15493 (_ BitVec 32) Int) ListLongMap!5965)

(assert (=> bm!29089 (= call!29092 (getCurrentListMapNoExtraKeys!1201 (ite c!55097 lt!191587 _keys!709) (ite c!55097 lt!191588 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!243564 () Bool)

(assert (=> start!39380 (=> (not res!243564) (not e!249270))))

(assert (=> start!39380 (= res!243564 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12507 _keys!709))))))

(assert (=> start!39380 e!249270))

(declare-fun tp_is_empty!10791 () Bool)

(assert (=> start!39380 tp_is_empty!10791))

(assert (=> start!39380 tp!34446))

(assert (=> start!39380 true))

(declare-fun array_inv!8864 (array!25419) Bool)

(assert (=> start!39380 (and (array_inv!8864 _values!549) e!249276)))

(declare-fun array_inv!8865 (array!25417) Bool)

(assert (=> start!39380 (array_inv!8865 _keys!709)))

(declare-fun b!417948 () Bool)

(declare-fun res!243557 () Bool)

(assert (=> b!417948 (=> (not res!243557) (not e!249270))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!417948 (= res!243557 (validKeyInArray!0 k0!794))))

(declare-fun b!417949 () Bool)

(assert (=> b!417949 (= e!249270 e!249273)))

(declare-fun res!243563 () Bool)

(assert (=> b!417949 (=> (not res!243563) (not e!249273))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25417 (_ BitVec 32)) Bool)

(assert (=> b!417949 (= res!243563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191587 mask!1025))))

(assert (=> b!417949 (= lt!191587 (array!25418 (store (arr!12155 _keys!709) i!563 k0!794) (size!12507 _keys!709)))))

(declare-fun b!417950 () Bool)

(assert (=> b!417950 (= e!249275 (= call!29093 call!29092))))

(declare-fun mapNonEmpty!17808 () Bool)

(declare-fun tp!34445 () Bool)

(declare-fun e!249272 () Bool)

(assert (=> mapNonEmpty!17808 (= mapRes!17808 (and tp!34445 e!249272))))

(declare-fun mapRest!17808 () (Array (_ BitVec 32) ValueCell!5052))

(declare-fun mapValue!17808 () ValueCell!5052)

(declare-fun mapKey!17808 () (_ BitVec 32))

(assert (=> mapNonEmpty!17808 (= (arr!12156 _values!549) (store mapRest!17808 mapKey!17808 mapValue!17808))))

(declare-fun b!417951 () Bool)

(declare-fun res!243558 () Bool)

(assert (=> b!417951 (=> (not res!243558) (not e!249273))))

(declare-datatypes ((List!7090 0))(
  ( (Nil!7087) (Cons!7086 (h!7942 (_ BitVec 64)) (t!12402 List!7090)) )
))
(declare-fun arrayNoDuplicates!0 (array!25417 (_ BitVec 32) List!7090) Bool)

(assert (=> b!417951 (= res!243558 (arrayNoDuplicates!0 lt!191587 #b00000000000000000000000000000000 Nil!7087))))

(declare-fun b!417952 () Bool)

(declare-fun res!243562 () Bool)

(assert (=> b!417952 (=> (not res!243562) (not e!249270))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!417952 (= res!243562 (validMask!0 mask!1025))))

(declare-fun b!417953 () Bool)

(declare-fun res!243559 () Bool)

(assert (=> b!417953 (=> (not res!243559) (not e!249270))))

(declare-fun arrayContainsKey!0 (array!25417 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!417953 (= res!243559 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17808 () Bool)

(assert (=> mapIsEmpty!17808 mapRes!17808))

(declare-fun b!417954 () Bool)

(declare-fun res!243560 () Bool)

(assert (=> b!417954 (=> (not res!243560) (not e!249270))))

(assert (=> b!417954 (= res!243560 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12507 _keys!709))))))

(declare-fun b!417955 () Bool)

(declare-fun e!249277 () Bool)

(assert (=> b!417955 (= e!249277 true)))

(declare-fun lt!191580 () tuple2!7038)

(declare-fun lt!191586 () V!15493)

(declare-fun lt!191581 () ListLongMap!5965)

(assert (=> b!417955 (= (+!1207 lt!191581 lt!191580) (+!1207 (+!1207 lt!191581 (tuple2!7039 k0!794 lt!191586)) lt!191580))))

(declare-fun lt!191585 () V!15493)

(assert (=> b!417955 (= lt!191580 (tuple2!7039 k0!794 lt!191585))))

(declare-datatypes ((Unit!12315 0))(
  ( (Unit!12316) )
))
(declare-fun lt!191582 () Unit!12315)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!30 (ListLongMap!5965 (_ BitVec 64) V!15493 V!15493) Unit!12315)

(assert (=> b!417955 (= lt!191582 (addSameAsAddTwiceSameKeyDiffValues!30 lt!191581 k0!794 lt!191586 lt!191585))))

(declare-fun lt!191589 () V!15493)

(declare-fun get!6025 (ValueCell!5052 V!15493) V!15493)

(assert (=> b!417955 (= lt!191586 (get!6025 (select (arr!12156 _values!549) from!863) lt!191589))))

(declare-fun lt!191579 () ListLongMap!5965)

(assert (=> b!417955 (= lt!191579 (+!1207 lt!191581 (tuple2!7039 (select (arr!12155 lt!191587) from!863) lt!191585)))))

(assert (=> b!417955 (= lt!191585 (get!6025 (select (store (arr!12156 _values!549) i!563 (ValueCellFull!5052 v!412)) from!863) lt!191589))))

(declare-fun dynLambda!692 (Int (_ BitVec 64)) V!15493)

(assert (=> b!417955 (= lt!191589 (dynLambda!692 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!417955 (= lt!191581 (getCurrentListMapNoExtraKeys!1201 lt!191587 lt!191588 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417956 () Bool)

(assert (=> b!417956 (= e!249272 tp_is_empty!10791)))

(declare-fun b!417957 () Bool)

(declare-fun e!249269 () Bool)

(assert (=> b!417957 (= e!249273 e!249269)))

(declare-fun res!243567 () Bool)

(assert (=> b!417957 (=> (not res!243567) (not e!249269))))

(assert (=> b!417957 (= res!243567 (= from!863 i!563))))

(assert (=> b!417957 (= lt!191579 (getCurrentListMapNoExtraKeys!1201 lt!191587 lt!191588 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!417957 (= lt!191588 (array!25420 (store (arr!12156 _values!549) i!563 (ValueCellFull!5052 v!412)) (size!12508 _values!549)))))

(declare-fun lt!191584 () ListLongMap!5965)

(assert (=> b!417957 (= lt!191584 (getCurrentListMapNoExtraKeys!1201 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun bm!29090 () Bool)

(assert (=> bm!29090 (= call!29093 (getCurrentListMapNoExtraKeys!1201 (ite c!55097 _keys!709 lt!191587) (ite c!55097 _values!549 lt!191588) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417958 () Bool)

(declare-fun res!243569 () Bool)

(assert (=> b!417958 (=> (not res!243569) (not e!249270))))

(assert (=> b!417958 (= res!243569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!417959 () Bool)

(assert (=> b!417959 (= e!249274 tp_is_empty!10791)))

(declare-fun b!417960 () Bool)

(declare-fun res!243568 () Bool)

(assert (=> b!417960 (=> (not res!243568) (not e!249270))))

(assert (=> b!417960 (= res!243568 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7087))))

(declare-fun b!417961 () Bool)

(assert (=> b!417961 (= e!249269 (not e!249277))))

(declare-fun res!243561 () Bool)

(assert (=> b!417961 (=> res!243561 e!249277)))

(assert (=> b!417961 (= res!243561 (validKeyInArray!0 (select (arr!12155 _keys!709) from!863)))))

(assert (=> b!417961 e!249275))

(assert (=> b!417961 (= c!55097 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!191583 () Unit!12315)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!415 (array!25417 array!25419 (_ BitVec 32) (_ BitVec 32) V!15493 V!15493 (_ BitVec 32) (_ BitVec 64) V!15493 (_ BitVec 32) Int) Unit!12315)

(assert (=> b!417961 (= lt!191583 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!415 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!39380 res!243564) b!417952))

(assert (= (and b!417952 res!243562) b!417945))

(assert (= (and b!417945 res!243570) b!417958))

(assert (= (and b!417958 res!243569) b!417960))

(assert (= (and b!417960 res!243568) b!417954))

(assert (= (and b!417954 res!243560) b!417948))

(assert (= (and b!417948 res!243557) b!417944))

(assert (= (and b!417944 res!243565) b!417953))

(assert (= (and b!417953 res!243559) b!417949))

(assert (= (and b!417949 res!243563) b!417951))

(assert (= (and b!417951 res!243558) b!417943))

(assert (= (and b!417943 res!243566) b!417957))

(assert (= (and b!417957 res!243567) b!417961))

(assert (= (and b!417961 c!55097) b!417946))

(assert (= (and b!417961 (not c!55097)) b!417950))

(assert (= (or b!417946 b!417950) bm!29089))

(assert (= (or b!417946 b!417950) bm!29090))

(assert (= (and b!417961 (not res!243561)) b!417955))

(assert (= (and b!417947 condMapEmpty!17808) mapIsEmpty!17808))

(assert (= (and b!417947 (not condMapEmpty!17808)) mapNonEmpty!17808))

(get-info :version)

(assert (= (and mapNonEmpty!17808 ((_ is ValueCellFull!5052) mapValue!17808)) b!417956))

(assert (= (and b!417947 ((_ is ValueCellFull!5052) mapDefault!17808)) b!417959))

(assert (= start!39380 b!417947))

(declare-fun b_lambda!8973 () Bool)

(assert (=> (not b_lambda!8973) (not b!417955)))

(declare-fun t!12400 () Bool)

(declare-fun tb!3269 () Bool)

(assert (=> (and start!39380 (= defaultEntry!557 defaultEntry!557) t!12400) tb!3269))

(declare-fun result!6057 () Bool)

(assert (=> tb!3269 (= result!6057 tp_is_empty!10791)))

(assert (=> b!417955 t!12400))

(declare-fun b_and!17173 () Bool)

(assert (= b_and!17171 (and (=> t!12400 result!6057) b_and!17173)))

(declare-fun m!407335 () Bool)

(assert (=> bm!29090 m!407335))

(declare-fun m!407337 () Bool)

(assert (=> b!417949 m!407337))

(declare-fun m!407339 () Bool)

(assert (=> b!417949 m!407339))

(declare-fun m!407341 () Bool)

(assert (=> b!417961 m!407341))

(assert (=> b!417961 m!407341))

(declare-fun m!407343 () Bool)

(assert (=> b!417961 m!407343))

(declare-fun m!407345 () Bool)

(assert (=> b!417961 m!407345))

(declare-fun m!407347 () Bool)

(assert (=> b!417953 m!407347))

(declare-fun m!407349 () Bool)

(assert (=> start!39380 m!407349))

(declare-fun m!407351 () Bool)

(assert (=> start!39380 m!407351))

(declare-fun m!407353 () Bool)

(assert (=> b!417952 m!407353))

(declare-fun m!407355 () Bool)

(assert (=> b!417957 m!407355))

(declare-fun m!407357 () Bool)

(assert (=> b!417957 m!407357))

(declare-fun m!407359 () Bool)

(assert (=> b!417957 m!407359))

(declare-fun m!407361 () Bool)

(assert (=> b!417946 m!407361))

(declare-fun m!407363 () Bool)

(assert (=> bm!29089 m!407363))

(declare-fun m!407365 () Bool)

(assert (=> b!417948 m!407365))

(declare-fun m!407367 () Bool)

(assert (=> b!417944 m!407367))

(declare-fun m!407369 () Bool)

(assert (=> b!417955 m!407369))

(declare-fun m!407371 () Bool)

(assert (=> b!417955 m!407371))

(declare-fun m!407373 () Bool)

(assert (=> b!417955 m!407373))

(declare-fun m!407375 () Bool)

(assert (=> b!417955 m!407375))

(declare-fun m!407377 () Bool)

(assert (=> b!417955 m!407377))

(declare-fun m!407379 () Bool)

(assert (=> b!417955 m!407379))

(assert (=> b!417955 m!407373))

(declare-fun m!407381 () Bool)

(assert (=> b!417955 m!407381))

(declare-fun m!407383 () Bool)

(assert (=> b!417955 m!407383))

(assert (=> b!417955 m!407379))

(declare-fun m!407385 () Bool)

(assert (=> b!417955 m!407385))

(declare-fun m!407387 () Bool)

(assert (=> b!417955 m!407387))

(declare-fun m!407389 () Bool)

(assert (=> b!417955 m!407389))

(assert (=> b!417955 m!407381))

(declare-fun m!407391 () Bool)

(assert (=> b!417955 m!407391))

(assert (=> b!417955 m!407357))

(declare-fun m!407393 () Bool)

(assert (=> mapNonEmpty!17808 m!407393))

(declare-fun m!407395 () Bool)

(assert (=> b!417951 m!407395))

(declare-fun m!407397 () Bool)

(assert (=> b!417960 m!407397))

(declare-fun m!407399 () Bool)

(assert (=> b!417958 m!407399))

(check-sat (not b!417946) (not b_lambda!8973) (not b!417949) tp_is_empty!10791 (not bm!29090) (not b_next!9639) (not b!417953) (not mapNonEmpty!17808) (not bm!29089) (not b!417958) (not b!417948) (not start!39380) (not b!417952) (not b!417960) (not b!417957) (not b!417951) (not b!417955) b_and!17173 (not b!417961))
(check-sat b_and!17173 (not b_next!9639))
