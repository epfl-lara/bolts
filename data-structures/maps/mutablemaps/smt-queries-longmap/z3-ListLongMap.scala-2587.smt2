; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39350 () Bool)

(assert start!39350)

(declare-fun b_free!9609 () Bool)

(declare-fun b_next!9609 () Bool)

(assert (=> start!39350 (= b_free!9609 (not b_next!9609))))

(declare-fun tp!34355 () Bool)

(declare-fun b_and!17111 () Bool)

(assert (=> start!39350 (= tp!34355 b_and!17111)))

(declare-datatypes ((V!15453 0))(
  ( (V!15454 (val!5425 Int)) )
))
(declare-fun minValue!515 () V!15453)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5037 0))(
  ( (ValueCellFull!5037 (v!7668 V!15453)) (EmptyCell!5037) )
))
(declare-datatypes ((array!25357 0))(
  ( (array!25358 (arr!12125 (Array (_ BitVec 32) ValueCell!5037)) (size!12477 (_ BitVec 32))) )
))
(declare-fun lt!191093 () array!25357)

(declare-fun bm!28999 () Bool)

(declare-fun _values!549 () array!25357)

(declare-fun zeroValue!515 () V!15453)

(declare-datatypes ((array!25359 0))(
  ( (array!25360 (arr!12126 (Array (_ BitVec 32) (_ BitVec 64))) (size!12478 (_ BitVec 32))) )
))
(declare-fun lt!191086 () array!25359)

(declare-fun c!55052 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7010 0))(
  ( (tuple2!7011 (_1!3515 (_ BitVec 64)) (_2!3515 V!15453)) )
))
(declare-datatypes ((List!7062 0))(
  ( (Nil!7059) (Cons!7058 (h!7914 tuple2!7010) (t!12344 List!7062)) )
))
(declare-datatypes ((ListLongMap!5937 0))(
  ( (ListLongMap!5938 (toList!2984 List!7062)) )
))
(declare-fun call!29002 () ListLongMap!5937)

(declare-fun _keys!709 () array!25359)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1187 (array!25359 array!25357 (_ BitVec 32) (_ BitVec 32) V!15453 V!15453 (_ BitVec 32) Int) ListLongMap!5937)

(assert (=> bm!28999 (= call!29002 (getCurrentListMapNoExtraKeys!1187 (ite c!55052 lt!191086 _keys!709) (ite c!55052 lt!191093 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417058 () Bool)

(declare-fun e!248869 () Bool)

(declare-fun call!29003 () ListLongMap!5937)

(assert (=> b!417058 (= e!248869 (= call!29003 call!29002))))

(declare-fun b!417059 () Bool)

(declare-fun res!242932 () Bool)

(declare-fun e!248865 () Bool)

(assert (=> b!417059 (=> (not res!242932) (not e!248865))))

(declare-datatypes ((List!7063 0))(
  ( (Nil!7060) (Cons!7059 (h!7915 (_ BitVec 64)) (t!12345 List!7063)) )
))
(declare-fun arrayNoDuplicates!0 (array!25359 (_ BitVec 32) List!7063) Bool)

(assert (=> b!417059 (= res!242932 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7060))))

(declare-fun mapIsEmpty!17763 () Bool)

(declare-fun mapRes!17763 () Bool)

(assert (=> mapIsEmpty!17763 mapRes!17763))

(declare-fun b!417060 () Bool)

(declare-fun res!242928 () Bool)

(declare-fun e!248866 () Bool)

(assert (=> b!417060 (=> (not res!242928) (not e!248866))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!417060 (= res!242928 (bvsle from!863 i!563))))

(declare-fun b!417061 () Bool)

(declare-fun res!242931 () Bool)

(assert (=> b!417061 (=> (not res!242931) (not e!248865))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!417061 (= res!242931 (validKeyInArray!0 k0!794))))

(declare-fun b!417062 () Bool)

(declare-fun res!242934 () Bool)

(assert (=> b!417062 (=> (not res!242934) (not e!248866))))

(assert (=> b!417062 (= res!242934 (arrayNoDuplicates!0 lt!191086 #b00000000000000000000000000000000 Nil!7060))))

(declare-fun b!417064 () Bool)

(declare-fun e!248872 () Bool)

(declare-fun tp_is_empty!10761 () Bool)

(assert (=> b!417064 (= e!248872 tp_is_empty!10761)))

(declare-fun b!417065 () Bool)

(declare-fun res!242939 () Bool)

(assert (=> b!417065 (=> (not res!242939) (not e!248865))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25359 (_ BitVec 32)) Bool)

(assert (=> b!417065 (= res!242939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!417066 () Bool)

(declare-fun e!248870 () Bool)

(assert (=> b!417066 (= e!248870 (and e!248872 mapRes!17763))))

(declare-fun condMapEmpty!17763 () Bool)

(declare-fun mapDefault!17763 () ValueCell!5037)

(assert (=> b!417066 (= condMapEmpty!17763 (= (arr!12125 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5037)) mapDefault!17763)))))

(declare-fun b!417067 () Bool)

(assert (=> b!417067 (= e!248865 e!248866)))

(declare-fun res!242929 () Bool)

(assert (=> b!417067 (=> (not res!242929) (not e!248866))))

(assert (=> b!417067 (= res!242929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191086 mask!1025))))

(assert (=> b!417067 (= lt!191086 (array!25360 (store (arr!12126 _keys!709) i!563 k0!794) (size!12478 _keys!709)))))

(declare-fun b!417068 () Bool)

(declare-fun v!412 () V!15453)

(declare-fun +!1195 (ListLongMap!5937 tuple2!7010) ListLongMap!5937)

(assert (=> b!417068 (= e!248869 (= call!29002 (+!1195 call!29003 (tuple2!7011 k0!794 v!412))))))

(declare-fun b!417069 () Bool)

(declare-fun e!248867 () Bool)

(assert (=> b!417069 (= e!248867 tp_is_empty!10761)))

(declare-fun mapNonEmpty!17763 () Bool)

(declare-fun tp!34356 () Bool)

(assert (=> mapNonEmpty!17763 (= mapRes!17763 (and tp!34356 e!248867))))

(declare-fun mapValue!17763 () ValueCell!5037)

(declare-fun mapKey!17763 () (_ BitVec 32))

(declare-fun mapRest!17763 () (Array (_ BitVec 32) ValueCell!5037))

(assert (=> mapNonEmpty!17763 (= (arr!12125 _values!549) (store mapRest!17763 mapKey!17763 mapValue!17763))))

(declare-fun bm!29000 () Bool)

(assert (=> bm!29000 (= call!29003 (getCurrentListMapNoExtraKeys!1187 (ite c!55052 _keys!709 lt!191086) (ite c!55052 _values!549 lt!191093) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417070 () Bool)

(declare-fun res!242937 () Bool)

(assert (=> b!417070 (=> (not res!242937) (not e!248865))))

(declare-fun arrayContainsKey!0 (array!25359 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!417070 (= res!242937 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!417071 () Bool)

(declare-fun res!242938 () Bool)

(assert (=> b!417071 (=> (not res!242938) (not e!248865))))

(assert (=> b!417071 (= res!242938 (and (= (size!12477 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12478 _keys!709) (size!12477 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!417072 () Bool)

(declare-fun res!242927 () Bool)

(assert (=> b!417072 (=> (not res!242927) (not e!248865))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!417072 (= res!242927 (validMask!0 mask!1025))))

(declare-fun res!242940 () Bool)

(assert (=> start!39350 (=> (not res!242940) (not e!248865))))

(assert (=> start!39350 (= res!242940 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12478 _keys!709))))))

(assert (=> start!39350 e!248865))

(assert (=> start!39350 tp_is_empty!10761))

(assert (=> start!39350 tp!34355))

(assert (=> start!39350 true))

(declare-fun array_inv!8842 (array!25357) Bool)

(assert (=> start!39350 (and (array_inv!8842 _values!549) e!248870)))

(declare-fun array_inv!8843 (array!25359) Bool)

(assert (=> start!39350 (array_inv!8843 _keys!709)))

(declare-fun b!417063 () Bool)

(declare-fun e!248871 () Bool)

(assert (=> b!417063 (= e!248871 true)))

(declare-fun lt!191091 () V!15453)

(declare-fun lt!191092 () tuple2!7010)

(declare-fun lt!191084 () ListLongMap!5937)

(assert (=> b!417063 (= (+!1195 lt!191084 lt!191092) (+!1195 (+!1195 lt!191084 (tuple2!7011 k0!794 lt!191091)) lt!191092))))

(declare-fun lt!191085 () V!15453)

(assert (=> b!417063 (= lt!191092 (tuple2!7011 k0!794 lt!191085))))

(declare-datatypes ((Unit!12291 0))(
  ( (Unit!12292) )
))
(declare-fun lt!191088 () Unit!12291)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!18 (ListLongMap!5937 (_ BitVec 64) V!15453 V!15453) Unit!12291)

(assert (=> b!417063 (= lt!191088 (addSameAsAddTwiceSameKeyDiffValues!18 lt!191084 k0!794 lt!191091 lt!191085))))

(declare-fun lt!191087 () V!15453)

(declare-fun get!6003 (ValueCell!5037 V!15453) V!15453)

(assert (=> b!417063 (= lt!191091 (get!6003 (select (arr!12125 _values!549) from!863) lt!191087))))

(declare-fun lt!191089 () ListLongMap!5937)

(assert (=> b!417063 (= lt!191089 (+!1195 lt!191084 (tuple2!7011 (select (arr!12126 lt!191086) from!863) lt!191085)))))

(assert (=> b!417063 (= lt!191085 (get!6003 (select (store (arr!12125 _values!549) i!563 (ValueCellFull!5037 v!412)) from!863) lt!191087))))

(declare-fun dynLambda!680 (Int (_ BitVec 64)) V!15453)

(assert (=> b!417063 (= lt!191087 (dynLambda!680 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!417063 (= lt!191084 (getCurrentListMapNoExtraKeys!1187 lt!191086 lt!191093 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417073 () Bool)

(declare-fun res!242930 () Bool)

(assert (=> b!417073 (=> (not res!242930) (not e!248865))))

(assert (=> b!417073 (= res!242930 (or (= (select (arr!12126 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12126 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!417074 () Bool)

(declare-fun res!242933 () Bool)

(assert (=> b!417074 (=> (not res!242933) (not e!248865))))

(assert (=> b!417074 (= res!242933 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12478 _keys!709))))))

(declare-fun b!417075 () Bool)

(declare-fun e!248864 () Bool)

(assert (=> b!417075 (= e!248866 e!248864)))

(declare-fun res!242935 () Bool)

(assert (=> b!417075 (=> (not res!242935) (not e!248864))))

(assert (=> b!417075 (= res!242935 (= from!863 i!563))))

(assert (=> b!417075 (= lt!191089 (getCurrentListMapNoExtraKeys!1187 lt!191086 lt!191093 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!417075 (= lt!191093 (array!25358 (store (arr!12125 _values!549) i!563 (ValueCellFull!5037 v!412)) (size!12477 _values!549)))))

(declare-fun lt!191090 () ListLongMap!5937)

(assert (=> b!417075 (= lt!191090 (getCurrentListMapNoExtraKeys!1187 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!417076 () Bool)

(assert (=> b!417076 (= e!248864 (not e!248871))))

(declare-fun res!242936 () Bool)

(assert (=> b!417076 (=> res!242936 e!248871)))

(assert (=> b!417076 (= res!242936 (validKeyInArray!0 (select (arr!12126 _keys!709) from!863)))))

(assert (=> b!417076 e!248869))

(assert (=> b!417076 (= c!55052 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!191094 () Unit!12291)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!406 (array!25359 array!25357 (_ BitVec 32) (_ BitVec 32) V!15453 V!15453 (_ BitVec 32) (_ BitVec 64) V!15453 (_ BitVec 32) Int) Unit!12291)

(assert (=> b!417076 (= lt!191094 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!406 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!39350 res!242940) b!417072))

(assert (= (and b!417072 res!242927) b!417071))

(assert (= (and b!417071 res!242938) b!417065))

(assert (= (and b!417065 res!242939) b!417059))

(assert (= (and b!417059 res!242932) b!417074))

(assert (= (and b!417074 res!242933) b!417061))

(assert (= (and b!417061 res!242931) b!417073))

(assert (= (and b!417073 res!242930) b!417070))

(assert (= (and b!417070 res!242937) b!417067))

(assert (= (and b!417067 res!242929) b!417062))

(assert (= (and b!417062 res!242934) b!417060))

(assert (= (and b!417060 res!242928) b!417075))

(assert (= (and b!417075 res!242935) b!417076))

(assert (= (and b!417076 c!55052) b!417068))

(assert (= (and b!417076 (not c!55052)) b!417058))

(assert (= (or b!417068 b!417058) bm!28999))

(assert (= (or b!417068 b!417058) bm!29000))

(assert (= (and b!417076 (not res!242936)) b!417063))

(assert (= (and b!417066 condMapEmpty!17763) mapIsEmpty!17763))

(assert (= (and b!417066 (not condMapEmpty!17763)) mapNonEmpty!17763))

(get-info :version)

(assert (= (and mapNonEmpty!17763 ((_ is ValueCellFull!5037) mapValue!17763)) b!417069))

(assert (= (and b!417066 ((_ is ValueCellFull!5037) mapDefault!17763)) b!417064))

(assert (= start!39350 b!417066))

(declare-fun b_lambda!8943 () Bool)

(assert (=> (not b_lambda!8943) (not b!417063)))

(declare-fun t!12343 () Bool)

(declare-fun tb!3239 () Bool)

(assert (=> (and start!39350 (= defaultEntry!557 defaultEntry!557) t!12343) tb!3239))

(declare-fun result!5997 () Bool)

(assert (=> tb!3239 (= result!5997 tp_is_empty!10761)))

(assert (=> b!417063 t!12343))

(declare-fun b_and!17113 () Bool)

(assert (= b_and!17111 (and (=> t!12343 result!5997) b_and!17113)))

(declare-fun m!406345 () Bool)

(assert (=> b!417076 m!406345))

(assert (=> b!417076 m!406345))

(declare-fun m!406347 () Bool)

(assert (=> b!417076 m!406347))

(declare-fun m!406349 () Bool)

(assert (=> b!417076 m!406349))

(declare-fun m!406351 () Bool)

(assert (=> b!417062 m!406351))

(declare-fun m!406353 () Bool)

(assert (=> b!417061 m!406353))

(declare-fun m!406355 () Bool)

(assert (=> b!417070 m!406355))

(declare-fun m!406357 () Bool)

(assert (=> mapNonEmpty!17763 m!406357))

(declare-fun m!406359 () Bool)

(assert (=> b!417063 m!406359))

(declare-fun m!406361 () Bool)

(assert (=> b!417063 m!406361))

(declare-fun m!406363 () Bool)

(assert (=> b!417063 m!406363))

(declare-fun m!406365 () Bool)

(assert (=> b!417063 m!406365))

(declare-fun m!406367 () Bool)

(assert (=> b!417063 m!406367))

(declare-fun m!406369 () Bool)

(assert (=> b!417063 m!406369))

(declare-fun m!406371 () Bool)

(assert (=> b!417063 m!406371))

(assert (=> b!417063 m!406367))

(declare-fun m!406373 () Bool)

(assert (=> b!417063 m!406373))

(declare-fun m!406375 () Bool)

(assert (=> b!417063 m!406375))

(declare-fun m!406377 () Bool)

(assert (=> b!417063 m!406377))

(assert (=> b!417063 m!406375))

(declare-fun m!406379 () Bool)

(assert (=> b!417063 m!406379))

(declare-fun m!406381 () Bool)

(assert (=> b!417063 m!406381))

(assert (=> b!417063 m!406371))

(declare-fun m!406383 () Bool)

(assert (=> b!417063 m!406383))

(declare-fun m!406385 () Bool)

(assert (=> b!417059 m!406385))

(declare-fun m!406387 () Bool)

(assert (=> bm!29000 m!406387))

(declare-fun m!406389 () Bool)

(assert (=> bm!28999 m!406389))

(declare-fun m!406391 () Bool)

(assert (=> b!417075 m!406391))

(assert (=> b!417075 m!406365))

(declare-fun m!406393 () Bool)

(assert (=> b!417075 m!406393))

(declare-fun m!406395 () Bool)

(assert (=> b!417065 m!406395))

(declare-fun m!406397 () Bool)

(assert (=> b!417073 m!406397))

(declare-fun m!406399 () Bool)

(assert (=> b!417067 m!406399))

(declare-fun m!406401 () Bool)

(assert (=> b!417067 m!406401))

(declare-fun m!406403 () Bool)

(assert (=> start!39350 m!406403))

(declare-fun m!406405 () Bool)

(assert (=> start!39350 m!406405))

(declare-fun m!406407 () Bool)

(assert (=> b!417072 m!406407))

(declare-fun m!406409 () Bool)

(assert (=> b!417068 m!406409))

(check-sat (not b!417072) (not mapNonEmpty!17763) (not b!417063) (not b_lambda!8943) (not b!417067) (not b_next!9609) (not b!417059) (not b!417075) (not b!417065) (not b!417070) (not b!417068) (not bm!28999) (not start!39350) tp_is_empty!10761 (not b!417061) (not b!417062) b_and!17113 (not bm!29000) (not b!417076))
(check-sat b_and!17113 (not b_next!9609))
