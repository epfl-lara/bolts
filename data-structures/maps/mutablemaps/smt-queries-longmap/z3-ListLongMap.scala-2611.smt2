; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39494 () Bool)

(assert start!39494)

(declare-fun b_free!9753 () Bool)

(declare-fun b_next!9753 () Bool)

(assert (=> start!39494 (= b_free!9753 (not b_next!9753))))

(declare-fun tp!34788 () Bool)

(declare-fun b_and!17399 () Bool)

(assert (=> start!39494 (= tp!34788 b_and!17399)))

(declare-fun b!421306 () Bool)

(declare-fun res!245963 () Bool)

(declare-fun e!250811 () Bool)

(assert (=> b!421306 (=> (not res!245963) (not e!250811))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!421306 (= res!245963 (bvsle from!863 i!563))))

(declare-fun e!250816 () Bool)

(declare-datatypes ((V!15645 0))(
  ( (V!15646 (val!5497 Int)) )
))
(declare-datatypes ((tuple2!7136 0))(
  ( (tuple2!7137 (_1!3578 (_ BitVec 64)) (_2!3578 V!15645)) )
))
(declare-datatypes ((List!7178 0))(
  ( (Nil!7175) (Cons!7174 (h!8030 tuple2!7136) (t!12604 List!7178)) )
))
(declare-datatypes ((ListLongMap!6063 0))(
  ( (ListLongMap!6064 (toList!3047 List!7178)) )
))
(declare-fun call!29434 () ListLongMap!6063)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun call!29435 () ListLongMap!6063)

(declare-fun b!421308 () Bool)

(declare-fun v!412 () V!15645)

(declare-fun +!1250 (ListLongMap!6063 tuple2!7136) ListLongMap!6063)

(assert (=> b!421308 (= e!250816 (= call!29434 (+!1250 call!29435 (tuple2!7137 k0!794 v!412))))))

(declare-fun b!421309 () Bool)

(declare-fun res!245959 () Bool)

(declare-fun e!250813 () Bool)

(assert (=> b!421309 (=> (not res!245959) (not e!250813))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!421309 (= res!245959 (validMask!0 mask!1025))))

(declare-fun b!421310 () Bool)

(declare-fun res!245960 () Bool)

(assert (=> b!421310 (=> (not res!245960) (not e!250813))))

(declare-datatypes ((array!25637 0))(
  ( (array!25638 (arr!12265 (Array (_ BitVec 32) (_ BitVec 64))) (size!12617 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25637)

(declare-datatypes ((List!7179 0))(
  ( (Nil!7176) (Cons!7175 (h!8031 (_ BitVec 64)) (t!12605 List!7179)) )
))
(declare-fun arrayNoDuplicates!0 (array!25637 (_ BitVec 32) List!7179) Bool)

(assert (=> b!421310 (= res!245960 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7176))))

(declare-fun b!421311 () Bool)

(declare-fun res!245951 () Bool)

(assert (=> b!421311 (=> (not res!245951) (not e!250813))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5109 0))(
  ( (ValueCellFull!5109 (v!7740 V!15645)) (EmptyCell!5109) )
))
(declare-datatypes ((array!25639 0))(
  ( (array!25640 (arr!12266 (Array (_ BitVec 32) ValueCell!5109)) (size!12618 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25639)

(assert (=> b!421311 (= res!245951 (and (= (size!12618 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12617 _keys!709) (size!12618 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!421312 () Bool)

(declare-fun res!245955 () Bool)

(assert (=> b!421312 (=> (not res!245955) (not e!250811))))

(declare-fun lt!193460 () array!25637)

(assert (=> b!421312 (= res!245955 (arrayNoDuplicates!0 lt!193460 #b00000000000000000000000000000000 Nil!7176))))

(declare-fun b!421313 () Bool)

(declare-fun e!250809 () Bool)

(assert (=> b!421313 (= e!250811 e!250809)))

(declare-fun res!245957 () Bool)

(assert (=> b!421313 (=> (not res!245957) (not e!250809))))

(assert (=> b!421313 (= res!245957 (= from!863 i!563))))

(declare-fun minValue!515 () V!15645)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!193468 () ListLongMap!6063)

(declare-fun zeroValue!515 () V!15645)

(declare-fun lt!193465 () array!25639)

(declare-fun getCurrentListMapNoExtraKeys!1248 (array!25637 array!25639 (_ BitVec 32) (_ BitVec 32) V!15645 V!15645 (_ BitVec 32) Int) ListLongMap!6063)

(assert (=> b!421313 (= lt!193468 (getCurrentListMapNoExtraKeys!1248 lt!193460 lt!193465 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!421313 (= lt!193465 (array!25640 (store (arr!12266 _values!549) i!563 (ValueCellFull!5109 v!412)) (size!12618 _values!549)))))

(declare-fun lt!193469 () ListLongMap!6063)

(assert (=> b!421313 (= lt!193469 (getCurrentListMapNoExtraKeys!1248 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!421314 () Bool)

(declare-fun e!250812 () Bool)

(assert (=> b!421314 (= e!250809 (not e!250812))))

(declare-fun res!245956 () Bool)

(assert (=> b!421314 (=> res!245956 e!250812)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!421314 (= res!245956 (validKeyInArray!0 (select (arr!12265 _keys!709) from!863)))))

(assert (=> b!421314 e!250816))

(declare-fun c!55268 () Bool)

(assert (=> b!421314 (= c!55268 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12401 0))(
  ( (Unit!12402) )
))
(declare-fun lt!193461 () Unit!12401)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!454 (array!25637 array!25639 (_ BitVec 32) (_ BitVec 32) V!15645 V!15645 (_ BitVec 32) (_ BitVec 64) V!15645 (_ BitVec 32) Int) Unit!12401)

(assert (=> b!421314 (= lt!193461 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!454 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421315 () Bool)

(declare-fun e!250810 () Bool)

(declare-fun tp_is_empty!10905 () Bool)

(assert (=> b!421315 (= e!250810 tp_is_empty!10905)))

(declare-fun b!421316 () Bool)

(declare-fun res!245964 () Bool)

(assert (=> b!421316 (=> (not res!245964) (not e!250813))))

(assert (=> b!421316 (= res!245964 (validKeyInArray!0 k0!794))))

(declare-fun b!421317 () Bool)

(assert (=> b!421317 (= e!250812 true)))

(declare-fun lt!193467 () tuple2!7136)

(declare-fun lt!193464 () V!15645)

(declare-fun lt!193462 () ListLongMap!6063)

(assert (=> b!421317 (= (+!1250 lt!193462 lt!193467) (+!1250 (+!1250 lt!193462 (tuple2!7137 k0!794 lt!193464)) lt!193467))))

(declare-fun lt!193470 () V!15645)

(assert (=> b!421317 (= lt!193467 (tuple2!7137 k0!794 lt!193470))))

(declare-fun lt!193466 () Unit!12401)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!66 (ListLongMap!6063 (_ BitVec 64) V!15645 V!15645) Unit!12401)

(assert (=> b!421317 (= lt!193466 (addSameAsAddTwiceSameKeyDiffValues!66 lt!193462 k0!794 lt!193464 lt!193470))))

(declare-fun lt!193463 () V!15645)

(declare-fun get!6099 (ValueCell!5109 V!15645) V!15645)

(assert (=> b!421317 (= lt!193464 (get!6099 (select (arr!12266 _values!549) from!863) lt!193463))))

(assert (=> b!421317 (= lt!193468 (+!1250 lt!193462 (tuple2!7137 (select (arr!12265 lt!193460) from!863) lt!193470)))))

(assert (=> b!421317 (= lt!193470 (get!6099 (select (store (arr!12266 _values!549) i!563 (ValueCellFull!5109 v!412)) from!863) lt!193463))))

(declare-fun dynLambda!728 (Int (_ BitVec 64)) V!15645)

(assert (=> b!421317 (= lt!193463 (dynLambda!728 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!421317 (= lt!193462 (getCurrentListMapNoExtraKeys!1248 lt!193460 lt!193465 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!17979 () Bool)

(declare-fun mapRes!17979 () Bool)

(assert (=> mapIsEmpty!17979 mapRes!17979))

(declare-fun bm!29431 () Bool)

(assert (=> bm!29431 (= call!29434 (getCurrentListMapNoExtraKeys!1248 (ite c!55268 lt!193460 _keys!709) (ite c!55268 lt!193465 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29432 () Bool)

(assert (=> bm!29432 (= call!29435 (getCurrentListMapNoExtraKeys!1248 (ite c!55268 _keys!709 lt!193460) (ite c!55268 _values!549 lt!193465) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421318 () Bool)

(declare-fun res!245954 () Bool)

(assert (=> b!421318 (=> (not res!245954) (not e!250813))))

(declare-fun arrayContainsKey!0 (array!25637 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!421318 (= res!245954 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!421307 () Bool)

(assert (=> b!421307 (= e!250813 e!250811)))

(declare-fun res!245961 () Bool)

(assert (=> b!421307 (=> (not res!245961) (not e!250811))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25637 (_ BitVec 32)) Bool)

(assert (=> b!421307 (= res!245961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193460 mask!1025))))

(assert (=> b!421307 (= lt!193460 (array!25638 (store (arr!12265 _keys!709) i!563 k0!794) (size!12617 _keys!709)))))

(declare-fun res!245952 () Bool)

(assert (=> start!39494 (=> (not res!245952) (not e!250813))))

(assert (=> start!39494 (= res!245952 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12617 _keys!709))))))

(assert (=> start!39494 e!250813))

(assert (=> start!39494 tp_is_empty!10905))

(assert (=> start!39494 tp!34788))

(assert (=> start!39494 true))

(declare-fun e!250808 () Bool)

(declare-fun array_inv!8936 (array!25639) Bool)

(assert (=> start!39494 (and (array_inv!8936 _values!549) e!250808)))

(declare-fun array_inv!8937 (array!25637) Bool)

(assert (=> start!39494 (array_inv!8937 _keys!709)))

(declare-fun b!421319 () Bool)

(declare-fun res!245958 () Bool)

(assert (=> b!421319 (=> (not res!245958) (not e!250813))))

(assert (=> b!421319 (= res!245958 (or (= (select (arr!12265 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12265 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!421320 () Bool)

(declare-fun res!245962 () Bool)

(assert (=> b!421320 (=> (not res!245962) (not e!250813))))

(assert (=> b!421320 (= res!245962 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12617 _keys!709))))))

(declare-fun b!421321 () Bool)

(declare-fun res!245953 () Bool)

(assert (=> b!421321 (=> (not res!245953) (not e!250813))))

(assert (=> b!421321 (= res!245953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!421322 () Bool)

(assert (=> b!421322 (= e!250816 (= call!29435 call!29434))))

(declare-fun b!421323 () Bool)

(declare-fun e!250815 () Bool)

(assert (=> b!421323 (= e!250815 tp_is_empty!10905)))

(declare-fun b!421324 () Bool)

(assert (=> b!421324 (= e!250808 (and e!250810 mapRes!17979))))

(declare-fun condMapEmpty!17979 () Bool)

(declare-fun mapDefault!17979 () ValueCell!5109)

(assert (=> b!421324 (= condMapEmpty!17979 (= (arr!12266 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5109)) mapDefault!17979)))))

(declare-fun mapNonEmpty!17979 () Bool)

(declare-fun tp!34787 () Bool)

(assert (=> mapNonEmpty!17979 (= mapRes!17979 (and tp!34787 e!250815))))

(declare-fun mapKey!17979 () (_ BitVec 32))

(declare-fun mapRest!17979 () (Array (_ BitVec 32) ValueCell!5109))

(declare-fun mapValue!17979 () ValueCell!5109)

(assert (=> mapNonEmpty!17979 (= (arr!12266 _values!549) (store mapRest!17979 mapKey!17979 mapValue!17979))))

(assert (= (and start!39494 res!245952) b!421309))

(assert (= (and b!421309 res!245959) b!421311))

(assert (= (and b!421311 res!245951) b!421321))

(assert (= (and b!421321 res!245953) b!421310))

(assert (= (and b!421310 res!245960) b!421320))

(assert (= (and b!421320 res!245962) b!421316))

(assert (= (and b!421316 res!245964) b!421319))

(assert (= (and b!421319 res!245958) b!421318))

(assert (= (and b!421318 res!245954) b!421307))

(assert (= (and b!421307 res!245961) b!421312))

(assert (= (and b!421312 res!245955) b!421306))

(assert (= (and b!421306 res!245963) b!421313))

(assert (= (and b!421313 res!245957) b!421314))

(assert (= (and b!421314 c!55268) b!421308))

(assert (= (and b!421314 (not c!55268)) b!421322))

(assert (= (or b!421308 b!421322) bm!29431))

(assert (= (or b!421308 b!421322) bm!29432))

(assert (= (and b!421314 (not res!245956)) b!421317))

(assert (= (and b!421324 condMapEmpty!17979) mapIsEmpty!17979))

(assert (= (and b!421324 (not condMapEmpty!17979)) mapNonEmpty!17979))

(get-info :version)

(assert (= (and mapNonEmpty!17979 ((_ is ValueCellFull!5109) mapValue!17979)) b!421323))

(assert (= (and b!421324 ((_ is ValueCellFull!5109) mapDefault!17979)) b!421315))

(assert (= start!39494 b!421324))

(declare-fun b_lambda!9087 () Bool)

(assert (=> (not b_lambda!9087) (not b!421317)))

(declare-fun t!12603 () Bool)

(declare-fun tb!3383 () Bool)

(assert (=> (and start!39494 (= defaultEntry!557 defaultEntry!557) t!12603) tb!3383))

(declare-fun result!6285 () Bool)

(assert (=> tb!3383 (= result!6285 tp_is_empty!10905)))

(assert (=> b!421317 t!12603))

(declare-fun b_and!17401 () Bool)

(assert (= b_and!17399 (and (=> t!12603 result!6285) b_and!17401)))

(declare-fun m!411093 () Bool)

(assert (=> b!421313 m!411093))

(declare-fun m!411095 () Bool)

(assert (=> b!421313 m!411095))

(declare-fun m!411097 () Bool)

(assert (=> b!421313 m!411097))

(declare-fun m!411099 () Bool)

(assert (=> start!39494 m!411099))

(declare-fun m!411101 () Bool)

(assert (=> start!39494 m!411101))

(declare-fun m!411103 () Bool)

(assert (=> b!421321 m!411103))

(declare-fun m!411105 () Bool)

(assert (=> b!421310 m!411105))

(declare-fun m!411107 () Bool)

(assert (=> b!421317 m!411107))

(declare-fun m!411109 () Bool)

(assert (=> b!421317 m!411109))

(declare-fun m!411111 () Bool)

(assert (=> b!421317 m!411111))

(declare-fun m!411113 () Bool)

(assert (=> b!421317 m!411113))

(declare-fun m!411115 () Bool)

(assert (=> b!421317 m!411115))

(declare-fun m!411117 () Bool)

(assert (=> b!421317 m!411117))

(declare-fun m!411119 () Bool)

(assert (=> b!421317 m!411119))

(assert (=> b!421317 m!411113))

(declare-fun m!411121 () Bool)

(assert (=> b!421317 m!411121))

(assert (=> b!421317 m!411095))

(declare-fun m!411123 () Bool)

(assert (=> b!421317 m!411123))

(assert (=> b!421317 m!411123))

(declare-fun m!411125 () Bool)

(assert (=> b!421317 m!411125))

(assert (=> b!421317 m!411115))

(declare-fun m!411127 () Bool)

(assert (=> b!421317 m!411127))

(declare-fun m!411129 () Bool)

(assert (=> b!421317 m!411129))

(declare-fun m!411131 () Bool)

(assert (=> bm!29431 m!411131))

(declare-fun m!411133 () Bool)

(assert (=> b!421308 m!411133))

(declare-fun m!411135 () Bool)

(assert (=> b!421319 m!411135))

(declare-fun m!411137 () Bool)

(assert (=> b!421309 m!411137))

(declare-fun m!411139 () Bool)

(assert (=> b!421307 m!411139))

(declare-fun m!411141 () Bool)

(assert (=> b!421307 m!411141))

(declare-fun m!411143 () Bool)

(assert (=> b!421314 m!411143))

(assert (=> b!421314 m!411143))

(declare-fun m!411145 () Bool)

(assert (=> b!421314 m!411145))

(declare-fun m!411147 () Bool)

(assert (=> b!421314 m!411147))

(declare-fun m!411149 () Bool)

(assert (=> b!421316 m!411149))

(declare-fun m!411151 () Bool)

(assert (=> b!421318 m!411151))

(declare-fun m!411153 () Bool)

(assert (=> bm!29432 m!411153))

(declare-fun m!411155 () Bool)

(assert (=> b!421312 m!411155))

(declare-fun m!411157 () Bool)

(assert (=> mapNonEmpty!17979 m!411157))

(check-sat (not mapNonEmpty!17979) (not b!421309) (not b_lambda!9087) (not bm!29432) (not b!421316) b_and!17401 (not b!421321) (not b!421308) (not bm!29431) (not start!39494) (not b!421314) (not b!421313) (not b!421307) (not b!421310) (not b!421318) (not b_next!9753) (not b!421317) tp_is_empty!10905 (not b!421312))
(check-sat b_and!17401 (not b_next!9753))
