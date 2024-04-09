; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39518 () Bool)

(assert start!39518)

(declare-fun b_free!9777 () Bool)

(declare-fun b_next!9777 () Bool)

(assert (=> start!39518 (= b_free!9777 (not b_next!9777))))

(declare-fun tp!34859 () Bool)

(declare-fun b_and!17447 () Bool)

(assert (=> start!39518 (= tp!34859 b_and!17447)))

(declare-datatypes ((V!15677 0))(
  ( (V!15678 (val!5509 Int)) )
))
(declare-datatypes ((tuple2!7160 0))(
  ( (tuple2!7161 (_1!3590 (_ BitVec 64)) (_2!3590 V!15677)) )
))
(declare-datatypes ((List!7202 0))(
  ( (Nil!7199) (Cons!7198 (h!8054 tuple2!7160) (t!12652 List!7202)) )
))
(declare-datatypes ((ListLongMap!6087 0))(
  ( (ListLongMap!6088 (toList!3059 List!7202)) )
))
(declare-fun call!29507 () ListLongMap!6087)

(declare-fun call!29506 () ListLongMap!6087)

(declare-fun b!422014 () Bool)

(declare-fun v!412 () V!15677)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun e!251139 () Bool)

(declare-fun +!1261 (ListLongMap!6087 tuple2!7160) ListLongMap!6087)

(assert (=> b!422014 (= e!251139 (= call!29506 (+!1261 call!29507 (tuple2!7161 k0!794 v!412))))))

(declare-fun b!422015 () Bool)

(declare-fun e!251137 () Bool)

(declare-fun e!251135 () Bool)

(declare-fun mapRes!18015 () Bool)

(assert (=> b!422015 (= e!251137 (and e!251135 mapRes!18015))))

(declare-fun condMapEmpty!18015 () Bool)

(declare-datatypes ((ValueCell!5121 0))(
  ( (ValueCellFull!5121 (v!7752 V!15677)) (EmptyCell!5121) )
))
(declare-datatypes ((array!25685 0))(
  ( (array!25686 (arr!12289 (Array (_ BitVec 32) ValueCell!5121)) (size!12641 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25685)

(declare-fun mapDefault!18015 () ValueCell!5121)

(assert (=> b!422015 (= condMapEmpty!18015 (= (arr!12289 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5121)) mapDefault!18015)))))

(declare-fun b!422016 () Bool)

(declare-fun e!251134 () Bool)

(declare-fun e!251138 () Bool)

(assert (=> b!422016 (= e!251134 e!251138)))

(declare-fun res!246459 () Bool)

(assert (=> b!422016 (=> (not res!246459) (not e!251138))))

(declare-datatypes ((array!25687 0))(
  ( (array!25688 (arr!12290 (Array (_ BitVec 32) (_ BitVec 64))) (size!12642 (_ BitVec 32))) )
))
(declare-fun lt!193860 () array!25687)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25687 (_ BitVec 32)) Bool)

(assert (=> b!422016 (= res!246459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193860 mask!1025))))

(declare-fun _keys!709 () array!25687)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!422016 (= lt!193860 (array!25688 (store (arr!12290 _keys!709) i!563 k0!794) (size!12642 _keys!709)))))

(declare-fun b!422017 () Bool)

(declare-fun res!246455 () Bool)

(assert (=> b!422017 (=> (not res!246455) (not e!251138))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!422017 (= res!246455 (bvsle from!863 i!563))))

(declare-fun b!422018 () Bool)

(assert (=> b!422018 (= e!251139 (= call!29507 call!29506))))

(declare-fun b!422019 () Bool)

(declare-fun res!246466 () Bool)

(assert (=> b!422019 (=> (not res!246466) (not e!251134))))

(declare-datatypes ((List!7203 0))(
  ( (Nil!7200) (Cons!7199 (h!8055 (_ BitVec 64)) (t!12653 List!7203)) )
))
(declare-fun arrayNoDuplicates!0 (array!25687 (_ BitVec 32) List!7203) Bool)

(assert (=> b!422019 (= res!246466 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7200))))

(declare-fun b!422020 () Bool)

(declare-fun res!246465 () Bool)

(assert (=> b!422020 (=> (not res!246465) (not e!251134))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!422020 (= res!246465 (validMask!0 mask!1025))))

(declare-fun res!246460 () Bool)

(assert (=> start!39518 (=> (not res!246460) (not e!251134))))

(assert (=> start!39518 (= res!246460 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12642 _keys!709))))))

(assert (=> start!39518 e!251134))

(declare-fun tp_is_empty!10929 () Bool)

(assert (=> start!39518 tp_is_empty!10929))

(assert (=> start!39518 tp!34859))

(assert (=> start!39518 true))

(declare-fun array_inv!8950 (array!25685) Bool)

(assert (=> start!39518 (and (array_inv!8950 _values!549) e!251137)))

(declare-fun array_inv!8951 (array!25687) Bool)

(assert (=> start!39518 (array_inv!8951 _keys!709)))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!29503 () Bool)

(declare-fun zeroValue!515 () V!15677)

(declare-fun lt!193862 () array!25685)

(declare-fun minValue!515 () V!15677)

(declare-fun c!55304 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1260 (array!25687 array!25685 (_ BitVec 32) (_ BitVec 32) V!15677 V!15677 (_ BitVec 32) Int) ListLongMap!6087)

(assert (=> bm!29503 (= call!29506 (getCurrentListMapNoExtraKeys!1260 (ite c!55304 lt!193860 _keys!709) (ite c!55304 lt!193862 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!422021 () Bool)

(assert (=> b!422021 (= e!251135 tp_is_empty!10929)))

(declare-fun b!422022 () Bool)

(declare-fun e!251132 () Bool)

(assert (=> b!422022 (= e!251132 tp_is_empty!10929)))

(declare-fun mapNonEmpty!18015 () Bool)

(declare-fun tp!34860 () Bool)

(assert (=> mapNonEmpty!18015 (= mapRes!18015 (and tp!34860 e!251132))))

(declare-fun mapValue!18015 () ValueCell!5121)

(declare-fun mapKey!18015 () (_ BitVec 32))

(declare-fun mapRest!18015 () (Array (_ BitVec 32) ValueCell!5121))

(assert (=> mapNonEmpty!18015 (= (arr!12289 _values!549) (store mapRest!18015 mapKey!18015 mapValue!18015))))

(declare-fun b!422023 () Bool)

(declare-fun res!246458 () Bool)

(assert (=> b!422023 (=> (not res!246458) (not e!251134))))

(assert (=> b!422023 (= res!246458 (or (= (select (arr!12290 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12290 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!29504 () Bool)

(assert (=> bm!29504 (= call!29507 (getCurrentListMapNoExtraKeys!1260 (ite c!55304 _keys!709 lt!193860) (ite c!55304 _values!549 lt!193862) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!422024 () Bool)

(declare-fun e!251136 () Bool)

(assert (=> b!422024 (= e!251136 true)))

(declare-fun lt!193864 () ListLongMap!6087)

(declare-fun lt!193865 () V!15677)

(declare-fun lt!193859 () tuple2!7160)

(assert (=> b!422024 (= (+!1261 lt!193864 lt!193859) (+!1261 (+!1261 lt!193864 (tuple2!7161 k0!794 lt!193865)) lt!193859))))

(declare-fun lt!193856 () V!15677)

(assert (=> b!422024 (= lt!193859 (tuple2!7161 k0!794 lt!193856))))

(declare-datatypes ((Unit!12425 0))(
  ( (Unit!12426) )
))
(declare-fun lt!193863 () Unit!12425)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!77 (ListLongMap!6087 (_ BitVec 64) V!15677 V!15677) Unit!12425)

(assert (=> b!422024 (= lt!193863 (addSameAsAddTwiceSameKeyDiffValues!77 lt!193864 k0!794 lt!193865 lt!193856))))

(declare-fun lt!193861 () V!15677)

(declare-fun get!6118 (ValueCell!5121 V!15677) V!15677)

(assert (=> b!422024 (= lt!193865 (get!6118 (select (arr!12289 _values!549) from!863) lt!193861))))

(declare-fun lt!193866 () ListLongMap!6087)

(assert (=> b!422024 (= lt!193866 (+!1261 lt!193864 (tuple2!7161 (select (arr!12290 lt!193860) from!863) lt!193856)))))

(assert (=> b!422024 (= lt!193856 (get!6118 (select (store (arr!12289 _values!549) i!563 (ValueCellFull!5121 v!412)) from!863) lt!193861))))

(declare-fun dynLambda!739 (Int (_ BitVec 64)) V!15677)

(assert (=> b!422024 (= lt!193861 (dynLambda!739 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!422024 (= lt!193864 (getCurrentListMapNoExtraKeys!1260 lt!193860 lt!193862 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!422025 () Bool)

(declare-fun res!246464 () Bool)

(assert (=> b!422025 (=> (not res!246464) (not e!251138))))

(assert (=> b!422025 (= res!246464 (arrayNoDuplicates!0 lt!193860 #b00000000000000000000000000000000 Nil!7200))))

(declare-fun b!422026 () Bool)

(declare-fun e!251140 () Bool)

(assert (=> b!422026 (= e!251140 (not e!251136))))

(declare-fun res!246467 () Bool)

(assert (=> b!422026 (=> res!246467 e!251136)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!422026 (= res!246467 (validKeyInArray!0 (select (arr!12290 _keys!709) from!863)))))

(assert (=> b!422026 e!251139))

(assert (=> b!422026 (= c!55304 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!193858 () Unit!12425)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!463 (array!25687 array!25685 (_ BitVec 32) (_ BitVec 32) V!15677 V!15677 (_ BitVec 32) (_ BitVec 64) V!15677 (_ BitVec 32) Int) Unit!12425)

(assert (=> b!422026 (= lt!193858 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!463 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!422027 () Bool)

(declare-fun res!246457 () Bool)

(assert (=> b!422027 (=> (not res!246457) (not e!251134))))

(declare-fun arrayContainsKey!0 (array!25687 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!422027 (= res!246457 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!422028 () Bool)

(declare-fun res!246461 () Bool)

(assert (=> b!422028 (=> (not res!246461) (not e!251134))))

(assert (=> b!422028 (= res!246461 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12642 _keys!709))))))

(declare-fun b!422029 () Bool)

(assert (=> b!422029 (= e!251138 e!251140)))

(declare-fun res!246456 () Bool)

(assert (=> b!422029 (=> (not res!246456) (not e!251140))))

(assert (=> b!422029 (= res!246456 (= from!863 i!563))))

(assert (=> b!422029 (= lt!193866 (getCurrentListMapNoExtraKeys!1260 lt!193860 lt!193862 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!422029 (= lt!193862 (array!25686 (store (arr!12289 _values!549) i!563 (ValueCellFull!5121 v!412)) (size!12641 _values!549)))))

(declare-fun lt!193857 () ListLongMap!6087)

(assert (=> b!422029 (= lt!193857 (getCurrentListMapNoExtraKeys!1260 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!422030 () Bool)

(declare-fun res!246468 () Bool)

(assert (=> b!422030 (=> (not res!246468) (not e!251134))))

(assert (=> b!422030 (= res!246468 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!18015 () Bool)

(assert (=> mapIsEmpty!18015 mapRes!18015))

(declare-fun b!422031 () Bool)

(declare-fun res!246462 () Bool)

(assert (=> b!422031 (=> (not res!246462) (not e!251134))))

(assert (=> b!422031 (= res!246462 (and (= (size!12641 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12642 _keys!709) (size!12641 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!422032 () Bool)

(declare-fun res!246463 () Bool)

(assert (=> b!422032 (=> (not res!246463) (not e!251134))))

(assert (=> b!422032 (= res!246463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!39518 res!246460) b!422020))

(assert (= (and b!422020 res!246465) b!422031))

(assert (= (and b!422031 res!246462) b!422032))

(assert (= (and b!422032 res!246463) b!422019))

(assert (= (and b!422019 res!246466) b!422028))

(assert (= (and b!422028 res!246461) b!422030))

(assert (= (and b!422030 res!246468) b!422023))

(assert (= (and b!422023 res!246458) b!422027))

(assert (= (and b!422027 res!246457) b!422016))

(assert (= (and b!422016 res!246459) b!422025))

(assert (= (and b!422025 res!246464) b!422017))

(assert (= (and b!422017 res!246455) b!422029))

(assert (= (and b!422029 res!246456) b!422026))

(assert (= (and b!422026 c!55304) b!422014))

(assert (= (and b!422026 (not c!55304)) b!422018))

(assert (= (or b!422014 b!422018) bm!29503))

(assert (= (or b!422014 b!422018) bm!29504))

(assert (= (and b!422026 (not res!246467)) b!422024))

(assert (= (and b!422015 condMapEmpty!18015) mapIsEmpty!18015))

(assert (= (and b!422015 (not condMapEmpty!18015)) mapNonEmpty!18015))

(get-info :version)

(assert (= (and mapNonEmpty!18015 ((_ is ValueCellFull!5121) mapValue!18015)) b!422022))

(assert (= (and b!422015 ((_ is ValueCellFull!5121) mapDefault!18015)) b!422021))

(assert (= start!39518 b!422015))

(declare-fun b_lambda!9111 () Bool)

(assert (=> (not b_lambda!9111) (not b!422024)))

(declare-fun t!12651 () Bool)

(declare-fun tb!3407 () Bool)

(assert (=> (and start!39518 (= defaultEntry!557 defaultEntry!557) t!12651) tb!3407))

(declare-fun result!6333 () Bool)

(assert (=> tb!3407 (= result!6333 tp_is_empty!10929)))

(assert (=> b!422024 t!12651))

(declare-fun b_and!17449 () Bool)

(assert (= b_and!17447 (and (=> t!12651 result!6333) b_and!17449)))

(declare-fun m!411883 () Bool)

(assert (=> mapNonEmpty!18015 m!411883))

(declare-fun m!411885 () Bool)

(assert (=> b!422029 m!411885))

(declare-fun m!411887 () Bool)

(assert (=> b!422029 m!411887))

(declare-fun m!411889 () Bool)

(assert (=> b!422029 m!411889))

(declare-fun m!411891 () Bool)

(assert (=> b!422024 m!411891))

(declare-fun m!411893 () Bool)

(assert (=> b!422024 m!411893))

(declare-fun m!411895 () Bool)

(assert (=> b!422024 m!411895))

(declare-fun m!411897 () Bool)

(assert (=> b!422024 m!411897))

(assert (=> b!422024 m!411887))

(declare-fun m!411899 () Bool)

(assert (=> b!422024 m!411899))

(declare-fun m!411901 () Bool)

(assert (=> b!422024 m!411901))

(assert (=> b!422024 m!411893))

(declare-fun m!411903 () Bool)

(assert (=> b!422024 m!411903))

(declare-fun m!411905 () Bool)

(assert (=> b!422024 m!411905))

(assert (=> b!422024 m!411905))

(declare-fun m!411907 () Bool)

(assert (=> b!422024 m!411907))

(declare-fun m!411909 () Bool)

(assert (=> b!422024 m!411909))

(declare-fun m!411911 () Bool)

(assert (=> b!422024 m!411911))

(declare-fun m!411913 () Bool)

(assert (=> b!422024 m!411913))

(assert (=> b!422024 m!411911))

(declare-fun m!411915 () Bool)

(assert (=> b!422020 m!411915))

(declare-fun m!411917 () Bool)

(assert (=> bm!29504 m!411917))

(declare-fun m!411919 () Bool)

(assert (=> b!422019 m!411919))

(declare-fun m!411921 () Bool)

(assert (=> b!422025 m!411921))

(declare-fun m!411923 () Bool)

(assert (=> start!39518 m!411923))

(declare-fun m!411925 () Bool)

(assert (=> start!39518 m!411925))

(declare-fun m!411927 () Bool)

(assert (=> b!422032 m!411927))

(declare-fun m!411929 () Bool)

(assert (=> b!422027 m!411929))

(declare-fun m!411931 () Bool)

(assert (=> b!422014 m!411931))

(declare-fun m!411933 () Bool)

(assert (=> bm!29503 m!411933))

(declare-fun m!411935 () Bool)

(assert (=> b!422030 m!411935))

(declare-fun m!411937 () Bool)

(assert (=> b!422023 m!411937))

(declare-fun m!411939 () Bool)

(assert (=> b!422026 m!411939))

(assert (=> b!422026 m!411939))

(declare-fun m!411941 () Bool)

(assert (=> b!422026 m!411941))

(declare-fun m!411943 () Bool)

(assert (=> b!422026 m!411943))

(declare-fun m!411945 () Bool)

(assert (=> b!422016 m!411945))

(declare-fun m!411947 () Bool)

(assert (=> b!422016 m!411947))

(check-sat (not bm!29503) (not b_lambda!9111) (not bm!29504) (not b!422020) b_and!17449 (not b!422016) (not mapNonEmpty!18015) (not b_next!9777) (not b!422026) (not b!422032) (not b!422024) (not b!422025) (not b!422027) tp_is_empty!10929 (not b!422030) (not start!39518) (not b!422019) (not b!422014) (not b!422029))
(check-sat b_and!17449 (not b_next!9777))
