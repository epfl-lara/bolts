; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39458 () Bool)

(assert start!39458)

(declare-fun b_free!9717 () Bool)

(declare-fun b_next!9717 () Bool)

(assert (=> start!39458 (= b_free!9717 (not b_next!9717))))

(declare-fun tp!34679 () Bool)

(declare-fun b_and!17327 () Bool)

(assert (=> start!39458 (= tp!34679 b_and!17327)))

(declare-fun b!420244 () Bool)

(declare-fun res!245202 () Bool)

(declare-fun e!250327 () Bool)

(assert (=> b!420244 (=> (not res!245202) (not e!250327))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!420244 (= res!245202 (validMask!0 mask!1025))))

(declare-fun b!420245 () Bool)

(declare-fun e!250323 () Bool)

(declare-fun e!250330 () Bool)

(assert (=> b!420245 (= e!250323 (not e!250330))))

(declare-fun res!245195 () Bool)

(assert (=> b!420245 (=> res!245195 e!250330)))

(declare-datatypes ((array!25565 0))(
  ( (array!25566 (arr!12229 (Array (_ BitVec 32) (_ BitVec 64))) (size!12581 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25565)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!420245 (= res!245195 (validKeyInArray!0 (select (arr!12229 _keys!709) from!863)))))

(declare-fun e!250325 () Bool)

(assert (=> b!420245 e!250325))

(declare-fun c!55214 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!420245 (= c!55214 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!15597 0))(
  ( (V!15598 (val!5479 Int)) )
))
(declare-fun minValue!515 () V!15597)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((Unit!12371 0))(
  ( (Unit!12372) )
))
(declare-fun lt!192872 () Unit!12371)

(declare-datatypes ((ValueCell!5091 0))(
  ( (ValueCellFull!5091 (v!7722 V!15597)) (EmptyCell!5091) )
))
(declare-datatypes ((array!25567 0))(
  ( (array!25568 (arr!12230 (Array (_ BitVec 32) ValueCell!5091)) (size!12582 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25567)

(declare-fun zeroValue!515 () V!15597)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!15597)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!441 (array!25565 array!25567 (_ BitVec 32) (_ BitVec 32) V!15597 V!15597 (_ BitVec 32) (_ BitVec 64) V!15597 (_ BitVec 32) Int) Unit!12371)

(assert (=> b!420245 (= lt!192872 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!441 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420246 () Bool)

(declare-fun res!245196 () Bool)

(declare-fun e!250328 () Bool)

(assert (=> b!420246 (=> (not res!245196) (not e!250328))))

(declare-fun lt!192874 () array!25565)

(declare-datatypes ((List!7149 0))(
  ( (Nil!7146) (Cons!7145 (h!8001 (_ BitVec 64)) (t!12539 List!7149)) )
))
(declare-fun arrayNoDuplicates!0 (array!25565 (_ BitVec 32) List!7149) Bool)

(assert (=> b!420246 (= res!245196 (arrayNoDuplicates!0 lt!192874 #b00000000000000000000000000000000 Nil!7146))))

(declare-fun b!420247 () Bool)

(assert (=> b!420247 (= e!250330 true)))

(declare-datatypes ((tuple2!7104 0))(
  ( (tuple2!7105 (_1!3562 (_ BitVec 64)) (_2!3562 V!15597)) )
))
(declare-datatypes ((List!7150 0))(
  ( (Nil!7147) (Cons!7146 (h!8002 tuple2!7104) (t!12540 List!7150)) )
))
(declare-datatypes ((ListLongMap!6031 0))(
  ( (ListLongMap!6032 (toList!3031 List!7150)) )
))
(declare-fun lt!192866 () ListLongMap!6031)

(declare-fun lt!192871 () tuple2!7104)

(declare-fun lt!192869 () V!15597)

(declare-fun +!1236 (ListLongMap!6031 tuple2!7104) ListLongMap!6031)

(assert (=> b!420247 (= (+!1236 lt!192866 lt!192871) (+!1236 (+!1236 lt!192866 (tuple2!7105 k0!794 lt!192869)) lt!192871))))

(declare-fun lt!192868 () V!15597)

(assert (=> b!420247 (= lt!192871 (tuple2!7105 k0!794 lt!192868))))

(declare-fun lt!192870 () Unit!12371)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!55 (ListLongMap!6031 (_ BitVec 64) V!15597 V!15597) Unit!12371)

(assert (=> b!420247 (= lt!192870 (addSameAsAddTwiceSameKeyDiffValues!55 lt!192866 k0!794 lt!192869 lt!192868))))

(declare-fun lt!192876 () V!15597)

(declare-fun get!6076 (ValueCell!5091 V!15597) V!15597)

(assert (=> b!420247 (= lt!192869 (get!6076 (select (arr!12230 _values!549) from!863) lt!192876))))

(declare-fun lt!192873 () ListLongMap!6031)

(assert (=> b!420247 (= lt!192873 (+!1236 lt!192866 (tuple2!7105 (select (arr!12229 lt!192874) from!863) lt!192868)))))

(assert (=> b!420247 (= lt!192868 (get!6076 (select (store (arr!12230 _values!549) i!563 (ValueCellFull!5091 v!412)) from!863) lt!192876))))

(declare-fun dynLambda!717 (Int (_ BitVec 64)) V!15597)

(assert (=> b!420247 (= lt!192876 (dynLambda!717 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!192867 () array!25567)

(declare-fun getCurrentListMapNoExtraKeys!1232 (array!25565 array!25567 (_ BitVec 32) (_ BitVec 32) V!15597 V!15597 (_ BitVec 32) Int) ListLongMap!6031)

(assert (=> b!420247 (= lt!192866 (getCurrentListMapNoExtraKeys!1232 lt!192874 lt!192867 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420248 () Bool)

(declare-fun res!245204 () Bool)

(assert (=> b!420248 (=> (not res!245204) (not e!250328))))

(assert (=> b!420248 (= res!245204 (bvsle from!863 i!563))))

(declare-fun call!29326 () ListLongMap!6031)

(declare-fun b!420249 () Bool)

(declare-fun call!29327 () ListLongMap!6031)

(assert (=> b!420249 (= e!250325 (= call!29326 (+!1236 call!29327 (tuple2!7105 k0!794 v!412))))))

(declare-fun b!420250 () Bool)

(declare-fun res!245199 () Bool)

(assert (=> b!420250 (=> (not res!245199) (not e!250327))))

(assert (=> b!420250 (= res!245199 (or (= (select (arr!12229 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12229 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!420251 () Bool)

(declare-fun res!245197 () Bool)

(assert (=> b!420251 (=> (not res!245197) (not e!250327))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25565 (_ BitVec 32)) Bool)

(assert (=> b!420251 (= res!245197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!17925 () Bool)

(declare-fun mapRes!17925 () Bool)

(assert (=> mapIsEmpty!17925 mapRes!17925))

(declare-fun b!420252 () Bool)

(declare-fun e!250322 () Bool)

(declare-fun e!250326 () Bool)

(assert (=> b!420252 (= e!250322 (and e!250326 mapRes!17925))))

(declare-fun condMapEmpty!17925 () Bool)

(declare-fun mapDefault!17925 () ValueCell!5091)

(assert (=> b!420252 (= condMapEmpty!17925 (= (arr!12230 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5091)) mapDefault!17925)))))

(declare-fun b!420253 () Bool)

(declare-fun res!245198 () Bool)

(assert (=> b!420253 (=> (not res!245198) (not e!250327))))

(assert (=> b!420253 (= res!245198 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12581 _keys!709))))))

(declare-fun bm!29323 () Bool)

(assert (=> bm!29323 (= call!29326 (getCurrentListMapNoExtraKeys!1232 (ite c!55214 lt!192874 _keys!709) (ite c!55214 lt!192867 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420254 () Bool)

(declare-fun res!245208 () Bool)

(assert (=> b!420254 (=> (not res!245208) (not e!250327))))

(assert (=> b!420254 (= res!245208 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7146))))

(declare-fun b!420255 () Bool)

(assert (=> b!420255 (= e!250325 (= call!29327 call!29326))))

(declare-fun b!420256 () Bool)

(declare-fun res!245207 () Bool)

(assert (=> b!420256 (=> (not res!245207) (not e!250327))))

(assert (=> b!420256 (= res!245207 (and (= (size!12582 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12581 _keys!709) (size!12582 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!420257 () Bool)

(assert (=> b!420257 (= e!250328 e!250323)))

(declare-fun res!245203 () Bool)

(assert (=> b!420257 (=> (not res!245203) (not e!250323))))

(assert (=> b!420257 (= res!245203 (= from!863 i!563))))

(assert (=> b!420257 (= lt!192873 (getCurrentListMapNoExtraKeys!1232 lt!192874 lt!192867 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!420257 (= lt!192867 (array!25568 (store (arr!12230 _values!549) i!563 (ValueCellFull!5091 v!412)) (size!12582 _values!549)))))

(declare-fun lt!192875 () ListLongMap!6031)

(assert (=> b!420257 (= lt!192875 (getCurrentListMapNoExtraKeys!1232 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!17925 () Bool)

(declare-fun tp!34680 () Bool)

(declare-fun e!250329 () Bool)

(assert (=> mapNonEmpty!17925 (= mapRes!17925 (and tp!34680 e!250329))))

(declare-fun mapRest!17925 () (Array (_ BitVec 32) ValueCell!5091))

(declare-fun mapValue!17925 () ValueCell!5091)

(declare-fun mapKey!17925 () (_ BitVec 32))

(assert (=> mapNonEmpty!17925 (= (arr!12230 _values!549) (store mapRest!17925 mapKey!17925 mapValue!17925))))

(declare-fun b!420258 () Bool)

(declare-fun tp_is_empty!10869 () Bool)

(assert (=> b!420258 (= e!250326 tp_is_empty!10869)))

(declare-fun b!420259 () Bool)

(declare-fun res!245205 () Bool)

(assert (=> b!420259 (=> (not res!245205) (not e!250327))))

(assert (=> b!420259 (= res!245205 (validKeyInArray!0 k0!794))))

(declare-fun b!420260 () Bool)

(declare-fun res!245201 () Bool)

(assert (=> b!420260 (=> (not res!245201) (not e!250327))))

(declare-fun arrayContainsKey!0 (array!25565 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!420260 (= res!245201 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!420261 () Bool)

(assert (=> b!420261 (= e!250329 tp_is_empty!10869)))

(declare-fun res!245206 () Bool)

(assert (=> start!39458 (=> (not res!245206) (not e!250327))))

(assert (=> start!39458 (= res!245206 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12581 _keys!709))))))

(assert (=> start!39458 e!250327))

(assert (=> start!39458 tp_is_empty!10869))

(assert (=> start!39458 tp!34679))

(assert (=> start!39458 true))

(declare-fun array_inv!8910 (array!25567) Bool)

(assert (=> start!39458 (and (array_inv!8910 _values!549) e!250322)))

(declare-fun array_inv!8911 (array!25565) Bool)

(assert (=> start!39458 (array_inv!8911 _keys!709)))

(declare-fun b!420262 () Bool)

(assert (=> b!420262 (= e!250327 e!250328)))

(declare-fun res!245200 () Bool)

(assert (=> b!420262 (=> (not res!245200) (not e!250328))))

(assert (=> b!420262 (= res!245200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!192874 mask!1025))))

(assert (=> b!420262 (= lt!192874 (array!25566 (store (arr!12229 _keys!709) i!563 k0!794) (size!12581 _keys!709)))))

(declare-fun bm!29324 () Bool)

(assert (=> bm!29324 (= call!29327 (getCurrentListMapNoExtraKeys!1232 (ite c!55214 _keys!709 lt!192874) (ite c!55214 _values!549 lt!192867) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!39458 res!245206) b!420244))

(assert (= (and b!420244 res!245202) b!420256))

(assert (= (and b!420256 res!245207) b!420251))

(assert (= (and b!420251 res!245197) b!420254))

(assert (= (and b!420254 res!245208) b!420253))

(assert (= (and b!420253 res!245198) b!420259))

(assert (= (and b!420259 res!245205) b!420250))

(assert (= (and b!420250 res!245199) b!420260))

(assert (= (and b!420260 res!245201) b!420262))

(assert (= (and b!420262 res!245200) b!420246))

(assert (= (and b!420246 res!245196) b!420248))

(assert (= (and b!420248 res!245204) b!420257))

(assert (= (and b!420257 res!245203) b!420245))

(assert (= (and b!420245 c!55214) b!420249))

(assert (= (and b!420245 (not c!55214)) b!420255))

(assert (= (or b!420249 b!420255) bm!29323))

(assert (= (or b!420249 b!420255) bm!29324))

(assert (= (and b!420245 (not res!245195)) b!420247))

(assert (= (and b!420252 condMapEmpty!17925) mapIsEmpty!17925))

(assert (= (and b!420252 (not condMapEmpty!17925)) mapNonEmpty!17925))

(get-info :version)

(assert (= (and mapNonEmpty!17925 ((_ is ValueCellFull!5091) mapValue!17925)) b!420261))

(assert (= (and b!420252 ((_ is ValueCellFull!5091) mapDefault!17925)) b!420258))

(assert (= start!39458 b!420252))

(declare-fun b_lambda!9051 () Bool)

(assert (=> (not b_lambda!9051) (not b!420247)))

(declare-fun t!12538 () Bool)

(declare-fun tb!3347 () Bool)

(assert (=> (and start!39458 (= defaultEntry!557 defaultEntry!557) t!12538) tb!3347))

(declare-fun result!6213 () Bool)

(assert (=> tb!3347 (= result!6213 tp_is_empty!10869)))

(assert (=> b!420247 t!12538))

(declare-fun b_and!17329 () Bool)

(assert (= b_and!17327 (and (=> t!12538 result!6213) b_and!17329)))

(declare-fun m!409907 () Bool)

(assert (=> bm!29324 m!409907))

(declare-fun m!409909 () Bool)

(assert (=> b!420245 m!409909))

(assert (=> b!420245 m!409909))

(declare-fun m!409911 () Bool)

(assert (=> b!420245 m!409911))

(declare-fun m!409913 () Bool)

(assert (=> b!420245 m!409913))

(declare-fun m!409915 () Bool)

(assert (=> b!420249 m!409915))

(declare-fun m!409917 () Bool)

(assert (=> b!420250 m!409917))

(declare-fun m!409919 () Bool)

(assert (=> b!420251 m!409919))

(declare-fun m!409921 () Bool)

(assert (=> b!420254 m!409921))

(declare-fun m!409923 () Bool)

(assert (=> b!420262 m!409923))

(declare-fun m!409925 () Bool)

(assert (=> b!420262 m!409925))

(declare-fun m!409927 () Bool)

(assert (=> b!420260 m!409927))

(declare-fun m!409929 () Bool)

(assert (=> start!39458 m!409929))

(declare-fun m!409931 () Bool)

(assert (=> start!39458 m!409931))

(declare-fun m!409933 () Bool)

(assert (=> bm!29323 m!409933))

(declare-fun m!409935 () Bool)

(assert (=> b!420257 m!409935))

(declare-fun m!409937 () Bool)

(assert (=> b!420257 m!409937))

(declare-fun m!409939 () Bool)

(assert (=> b!420257 m!409939))

(declare-fun m!409941 () Bool)

(assert (=> b!420244 m!409941))

(declare-fun m!409943 () Bool)

(assert (=> b!420246 m!409943))

(declare-fun m!409945 () Bool)

(assert (=> b!420247 m!409945))

(declare-fun m!409947 () Bool)

(assert (=> b!420247 m!409947))

(declare-fun m!409949 () Bool)

(assert (=> b!420247 m!409949))

(declare-fun m!409951 () Bool)

(assert (=> b!420247 m!409951))

(assert (=> b!420247 m!409945))

(declare-fun m!409953 () Bool)

(assert (=> b!420247 m!409953))

(declare-fun m!409955 () Bool)

(assert (=> b!420247 m!409955))

(declare-fun m!409957 () Bool)

(assert (=> b!420247 m!409957))

(assert (=> b!420247 m!409937))

(declare-fun m!409959 () Bool)

(assert (=> b!420247 m!409959))

(declare-fun m!409961 () Bool)

(assert (=> b!420247 m!409961))

(declare-fun m!409963 () Bool)

(assert (=> b!420247 m!409963))

(assert (=> b!420247 m!409955))

(declare-fun m!409965 () Bool)

(assert (=> b!420247 m!409965))

(assert (=> b!420247 m!409953))

(declare-fun m!409967 () Bool)

(assert (=> b!420247 m!409967))

(declare-fun m!409969 () Bool)

(assert (=> mapNonEmpty!17925 m!409969))

(declare-fun m!409971 () Bool)

(assert (=> b!420259 m!409971))

(check-sat (not b!420244) b_and!17329 (not b!420245) (not b!420249) (not b!420246) (not b_lambda!9051) tp_is_empty!10869 (not b!420262) (not b!420254) (not b!420251) (not bm!29323) (not b!420259) (not b_next!9717) (not b!420257) (not b!420247) (not start!39458) (not b!420260) (not mapNonEmpty!17925) (not bm!29324))
(check-sat b_and!17329 (not b_next!9717))
