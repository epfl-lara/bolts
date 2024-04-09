; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39398 () Bool)

(assert start!39398)

(declare-fun b_free!9657 () Bool)

(declare-fun b_next!9657 () Bool)

(assert (=> start!39398 (= b_free!9657 (not b_next!9657))))

(declare-fun tp!34499 () Bool)

(declare-fun b_and!17207 () Bool)

(assert (=> start!39398 (= tp!34499 b_and!17207)))

(declare-fun b!418474 () Bool)

(declare-fun e!249520 () Bool)

(declare-fun tp_is_empty!10809 () Bool)

(assert (=> b!418474 (= e!249520 tp_is_empty!10809)))

(declare-datatypes ((V!15517 0))(
  ( (V!15518 (val!5449 Int)) )
))
(declare-fun minValue!515 () V!15517)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5061 0))(
  ( (ValueCellFull!5061 (v!7692 V!15517)) (EmptyCell!5061) )
))
(declare-datatypes ((array!25449 0))(
  ( (array!25450 (arr!12171 (Array (_ BitVec 32) ValueCell!5061)) (size!12523 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25449)

(declare-datatypes ((array!25451 0))(
  ( (array!25452 (arr!12172 (Array (_ BitVec 32) (_ BitVec 64))) (size!12524 (_ BitVec 32))) )
))
(declare-fun lt!191881 () array!25451)

(declare-fun zeroValue!515 () V!15517)

(declare-fun lt!191886 () array!25449)

(declare-fun c!55124 () Bool)

(declare-datatypes ((tuple2!7052 0))(
  ( (tuple2!7053 (_1!3536 (_ BitVec 64)) (_2!3536 V!15517)) )
))
(declare-datatypes ((List!7103 0))(
  ( (Nil!7100) (Cons!7099 (h!7955 tuple2!7052) (t!12433 List!7103)) )
))
(declare-datatypes ((ListLongMap!5979 0))(
  ( (ListLongMap!5980 (toList!3005 List!7103)) )
))
(declare-fun call!29146 () ListLongMap!5979)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!25451)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun bm!29143 () Bool)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1208 (array!25451 array!25449 (_ BitVec 32) (_ BitVec 32) V!15517 V!15517 (_ BitVec 32) Int) ListLongMap!5979)

(assert (=> bm!29143 (= call!29146 (getCurrentListMapNoExtraKeys!1208 (ite c!55124 lt!191881 _keys!709) (ite c!55124 lt!191886 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418475 () Bool)

(declare-fun res!243942 () Bool)

(declare-fun e!249519 () Bool)

(assert (=> b!418475 (=> (not res!243942) (not e!249519))))

(declare-datatypes ((List!7104 0))(
  ( (Nil!7101) (Cons!7100 (h!7956 (_ BitVec 64)) (t!12434 List!7104)) )
))
(declare-fun arrayNoDuplicates!0 (array!25451 (_ BitVec 32) List!7104) Bool)

(assert (=> b!418475 (= res!243942 (arrayNoDuplicates!0 lt!191881 #b00000000000000000000000000000000 Nil!7101))))

(declare-fun b!418476 () Bool)

(declare-fun res!243939 () Bool)

(declare-fun e!249516 () Bool)

(assert (=> b!418476 (=> (not res!243939) (not e!249516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25451 (_ BitVec 32)) Bool)

(assert (=> b!418476 (= res!243939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!418477 () Bool)

(declare-fun e!249514 () Bool)

(assert (=> b!418477 (= e!249519 e!249514)))

(declare-fun res!243935 () Bool)

(assert (=> b!418477 (=> (not res!243935) (not e!249514))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!418477 (= res!243935 (= from!863 i!563))))

(declare-fun lt!191876 () ListLongMap!5979)

(assert (=> b!418477 (= lt!191876 (getCurrentListMapNoExtraKeys!1208 lt!191881 lt!191886 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15517)

(assert (=> b!418477 (= lt!191886 (array!25450 (store (arr!12171 _values!549) i!563 (ValueCellFull!5061 v!412)) (size!12523 _values!549)))))

(declare-fun lt!191878 () ListLongMap!5979)

(assert (=> b!418477 (= lt!191878 (getCurrentListMapNoExtraKeys!1208 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!418478 () Bool)

(declare-fun e!249518 () Bool)

(assert (=> b!418478 (= e!249518 tp_is_empty!10809)))

(declare-fun b!418480 () Bool)

(declare-fun e!249512 () Bool)

(declare-fun mapRes!17835 () Bool)

(assert (=> b!418480 (= e!249512 (and e!249518 mapRes!17835))))

(declare-fun condMapEmpty!17835 () Bool)

(declare-fun mapDefault!17835 () ValueCell!5061)

(assert (=> b!418480 (= condMapEmpty!17835 (= (arr!12171 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5061)) mapDefault!17835)))))

(declare-fun b!418481 () Bool)

(declare-fun e!249517 () Bool)

(assert (=> b!418481 (= e!249514 (not e!249517))))

(declare-fun res!243936 () Bool)

(assert (=> b!418481 (=> res!243936 e!249517)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!418481 (= res!243936 (validKeyInArray!0 (select (arr!12172 _keys!709) from!863)))))

(declare-fun e!249513 () Bool)

(assert (=> b!418481 e!249513))

(assert (=> b!418481 (= c!55124 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12329 0))(
  ( (Unit!12330) )
))
(declare-fun lt!191880 () Unit!12329)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!422 (array!25451 array!25449 (_ BitVec 32) (_ BitVec 32) V!15517 V!15517 (_ BitVec 32) (_ BitVec 64) V!15517 (_ BitVec 32) Int) Unit!12329)

(assert (=> b!418481 (= lt!191880 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!422 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!17835 () Bool)

(declare-fun tp!34500 () Bool)

(assert (=> mapNonEmpty!17835 (= mapRes!17835 (and tp!34500 e!249520))))

(declare-fun mapKey!17835 () (_ BitVec 32))

(declare-fun mapValue!17835 () ValueCell!5061)

(declare-fun mapRest!17835 () (Array (_ BitVec 32) ValueCell!5061))

(assert (=> mapNonEmpty!17835 (= (arr!12171 _values!549) (store mapRest!17835 mapKey!17835 mapValue!17835))))

(declare-fun bm!29144 () Bool)

(declare-fun call!29147 () ListLongMap!5979)

(assert (=> bm!29144 (= call!29147 (getCurrentListMapNoExtraKeys!1208 (ite c!55124 _keys!709 lt!191881) (ite c!55124 _values!549 lt!191886) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418482 () Bool)

(assert (=> b!418482 (= e!249513 (= call!29147 call!29146))))

(declare-fun b!418483 () Bool)

(declare-fun res!243945 () Bool)

(assert (=> b!418483 (=> (not res!243945) (not e!249516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!418483 (= res!243945 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!17835 () Bool)

(assert (=> mapIsEmpty!17835 mapRes!17835))

(declare-fun b!418484 () Bool)

(declare-fun res!243937 () Bool)

(assert (=> b!418484 (=> (not res!243937) (not e!249516))))

(assert (=> b!418484 (= res!243937 (and (= (size!12523 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12524 _keys!709) (size!12523 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!418485 () Bool)

(declare-fun res!243938 () Bool)

(assert (=> b!418485 (=> (not res!243938) (not e!249516))))

(assert (=> b!418485 (= res!243938 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7101))))

(declare-fun b!418486 () Bool)

(assert (=> b!418486 (= e!249516 e!249519)))

(declare-fun res!243948 () Bool)

(assert (=> b!418486 (=> (not res!243948) (not e!249519))))

(assert (=> b!418486 (= res!243948 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191881 mask!1025))))

(assert (=> b!418486 (= lt!191881 (array!25452 (store (arr!12172 _keys!709) i!563 k0!794) (size!12524 _keys!709)))))

(declare-fun res!243943 () Bool)

(assert (=> start!39398 (=> (not res!243943) (not e!249516))))

(assert (=> start!39398 (= res!243943 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12524 _keys!709))))))

(assert (=> start!39398 e!249516))

(assert (=> start!39398 tp_is_empty!10809))

(assert (=> start!39398 tp!34499))

(assert (=> start!39398 true))

(declare-fun array_inv!8876 (array!25449) Bool)

(assert (=> start!39398 (and (array_inv!8876 _values!549) e!249512)))

(declare-fun array_inv!8877 (array!25451) Bool)

(assert (=> start!39398 (array_inv!8877 _keys!709)))

(declare-fun b!418479 () Bool)

(declare-fun res!243941 () Bool)

(assert (=> b!418479 (=> (not res!243941) (not e!249516))))

(assert (=> b!418479 (= res!243941 (validKeyInArray!0 k0!794))))

(declare-fun b!418487 () Bool)

(declare-fun res!243940 () Bool)

(assert (=> b!418487 (=> (not res!243940) (not e!249519))))

(assert (=> b!418487 (= res!243940 (bvsle from!863 i!563))))

(declare-fun b!418488 () Bool)

(declare-fun res!243947 () Bool)

(assert (=> b!418488 (=> (not res!243947) (not e!249516))))

(assert (=> b!418488 (= res!243947 (or (= (select (arr!12172 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12172 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!418489 () Bool)

(declare-fun res!243946 () Bool)

(assert (=> b!418489 (=> (not res!243946) (not e!249516))))

(assert (=> b!418489 (= res!243946 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12524 _keys!709))))))

(declare-fun b!418490 () Bool)

(declare-fun +!1214 (ListLongMap!5979 tuple2!7052) ListLongMap!5979)

(assert (=> b!418490 (= e!249513 (= call!29146 (+!1214 call!29147 (tuple2!7053 k0!794 v!412))))))

(declare-fun b!418491 () Bool)

(assert (=> b!418491 (= e!249517 true)))

(declare-fun lt!191884 () tuple2!7052)

(declare-fun lt!191877 () ListLongMap!5979)

(declare-fun lt!191882 () V!15517)

(assert (=> b!418491 (= (+!1214 lt!191877 lt!191884) (+!1214 (+!1214 lt!191877 (tuple2!7053 k0!794 lt!191882)) lt!191884))))

(declare-fun lt!191885 () V!15517)

(assert (=> b!418491 (= lt!191884 (tuple2!7053 k0!794 lt!191885))))

(declare-fun lt!191883 () Unit!12329)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!37 (ListLongMap!5979 (_ BitVec 64) V!15517 V!15517) Unit!12329)

(assert (=> b!418491 (= lt!191883 (addSameAsAddTwiceSameKeyDiffValues!37 lt!191877 k0!794 lt!191882 lt!191885))))

(declare-fun lt!191879 () V!15517)

(declare-fun get!6038 (ValueCell!5061 V!15517) V!15517)

(assert (=> b!418491 (= lt!191882 (get!6038 (select (arr!12171 _values!549) from!863) lt!191879))))

(assert (=> b!418491 (= lt!191876 (+!1214 lt!191877 (tuple2!7053 (select (arr!12172 lt!191881) from!863) lt!191885)))))

(assert (=> b!418491 (= lt!191885 (get!6038 (select (store (arr!12171 _values!549) i!563 (ValueCellFull!5061 v!412)) from!863) lt!191879))))

(declare-fun dynLambda!699 (Int (_ BitVec 64)) V!15517)

(assert (=> b!418491 (= lt!191879 (dynLambda!699 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!418491 (= lt!191877 (getCurrentListMapNoExtraKeys!1208 lt!191881 lt!191886 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418492 () Bool)

(declare-fun res!243944 () Bool)

(assert (=> b!418492 (=> (not res!243944) (not e!249516))))

(declare-fun arrayContainsKey!0 (array!25451 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!418492 (= res!243944 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!39398 res!243943) b!418483))

(assert (= (and b!418483 res!243945) b!418484))

(assert (= (and b!418484 res!243937) b!418476))

(assert (= (and b!418476 res!243939) b!418485))

(assert (= (and b!418485 res!243938) b!418489))

(assert (= (and b!418489 res!243946) b!418479))

(assert (= (and b!418479 res!243941) b!418488))

(assert (= (and b!418488 res!243947) b!418492))

(assert (= (and b!418492 res!243944) b!418486))

(assert (= (and b!418486 res!243948) b!418475))

(assert (= (and b!418475 res!243942) b!418487))

(assert (= (and b!418487 res!243940) b!418477))

(assert (= (and b!418477 res!243935) b!418481))

(assert (= (and b!418481 c!55124) b!418490))

(assert (= (and b!418481 (not c!55124)) b!418482))

(assert (= (or b!418490 b!418482) bm!29143))

(assert (= (or b!418490 b!418482) bm!29144))

(assert (= (and b!418481 (not res!243936)) b!418491))

(assert (= (and b!418480 condMapEmpty!17835) mapIsEmpty!17835))

(assert (= (and b!418480 (not condMapEmpty!17835)) mapNonEmpty!17835))

(get-info :version)

(assert (= (and mapNonEmpty!17835 ((_ is ValueCellFull!5061) mapValue!17835)) b!418474))

(assert (= (and b!418480 ((_ is ValueCellFull!5061) mapDefault!17835)) b!418478))

(assert (= start!39398 b!418480))

(declare-fun b_lambda!8991 () Bool)

(assert (=> (not b_lambda!8991) (not b!418491)))

(declare-fun t!12432 () Bool)

(declare-fun tb!3287 () Bool)

(assert (=> (and start!39398 (= defaultEntry!557 defaultEntry!557) t!12432) tb!3287))

(declare-fun result!6093 () Bool)

(assert (=> tb!3287 (= result!6093 tp_is_empty!10809)))

(assert (=> b!418491 t!12432))

(declare-fun b_and!17209 () Bool)

(assert (= b_and!17207 (and (=> t!12432 result!6093) b_and!17209)))

(declare-fun m!407929 () Bool)

(assert (=> b!418490 m!407929))

(declare-fun m!407931 () Bool)

(assert (=> bm!29144 m!407931))

(declare-fun m!407933 () Bool)

(assert (=> b!418488 m!407933))

(declare-fun m!407935 () Bool)

(assert (=> start!39398 m!407935))

(declare-fun m!407937 () Bool)

(assert (=> start!39398 m!407937))

(declare-fun m!407939 () Bool)

(assert (=> b!418479 m!407939))

(declare-fun m!407941 () Bool)

(assert (=> b!418476 m!407941))

(declare-fun m!407943 () Bool)

(assert (=> mapNonEmpty!17835 m!407943))

(declare-fun m!407945 () Bool)

(assert (=> b!418475 m!407945))

(declare-fun m!407947 () Bool)

(assert (=> b!418486 m!407947))

(declare-fun m!407949 () Bool)

(assert (=> b!418486 m!407949))

(declare-fun m!407951 () Bool)

(assert (=> b!418481 m!407951))

(assert (=> b!418481 m!407951))

(declare-fun m!407953 () Bool)

(assert (=> b!418481 m!407953))

(declare-fun m!407955 () Bool)

(assert (=> b!418481 m!407955))

(declare-fun m!407957 () Bool)

(assert (=> b!418485 m!407957))

(declare-fun m!407959 () Bool)

(assert (=> bm!29143 m!407959))

(declare-fun m!407961 () Bool)

(assert (=> b!418491 m!407961))

(declare-fun m!407963 () Bool)

(assert (=> b!418491 m!407963))

(declare-fun m!407965 () Bool)

(assert (=> b!418491 m!407965))

(declare-fun m!407967 () Bool)

(assert (=> b!418491 m!407967))

(declare-fun m!407969 () Bool)

(assert (=> b!418491 m!407969))

(assert (=> b!418491 m!407965))

(declare-fun m!407971 () Bool)

(assert (=> b!418491 m!407971))

(declare-fun m!407973 () Bool)

(assert (=> b!418491 m!407973))

(declare-fun m!407975 () Bool)

(assert (=> b!418491 m!407975))

(declare-fun m!407977 () Bool)

(assert (=> b!418491 m!407977))

(declare-fun m!407979 () Bool)

(assert (=> b!418491 m!407979))

(declare-fun m!407981 () Bool)

(assert (=> b!418491 m!407981))

(assert (=> b!418491 m!407973))

(declare-fun m!407983 () Bool)

(assert (=> b!418491 m!407983))

(assert (=> b!418491 m!407975))

(declare-fun m!407985 () Bool)

(assert (=> b!418491 m!407985))

(declare-fun m!407987 () Bool)

(assert (=> b!418483 m!407987))

(declare-fun m!407989 () Bool)

(assert (=> b!418477 m!407989))

(assert (=> b!418477 m!407981))

(declare-fun m!407991 () Bool)

(assert (=> b!418477 m!407991))

(declare-fun m!407993 () Bool)

(assert (=> b!418492 m!407993))

(check-sat (not b!418479) tp_is_empty!10809 (not b!418491) (not bm!29144) (not b!418486) (not mapNonEmpty!17835) (not b!418476) (not b!418483) b_and!17209 (not b_lambda!8991) (not b!418481) (not b!418475) (not bm!29143) (not b!418477) (not b_next!9657) (not b!418492) (not b!418490) (not start!39398) (not b!418485))
(check-sat b_and!17209 (not b_next!9657))
