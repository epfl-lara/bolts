; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40804 () Bool)

(assert start!40804)

(declare-fun b_free!10785 () Bool)

(declare-fun b_next!10785 () Bool)

(assert (=> start!40804 (= b_free!10785 (not b_next!10785))))

(declare-fun tp!38177 () Bool)

(declare-fun b_and!18875 () Bool)

(assert (=> start!40804 (= tp!38177 b_and!18875)))

(declare-fun b!452335 () Bool)

(declare-fun e!264850 () Bool)

(declare-fun e!264847 () Bool)

(assert (=> b!452335 (= e!264850 e!264847)))

(declare-fun res!269509 () Bool)

(assert (=> b!452335 (=> (not res!269509) (not e!264847))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!452335 (= res!269509 (= from!863 i!563))))

(declare-datatypes ((V!17269 0))(
  ( (V!17270 (val!6106 Int)) )
))
(declare-fun minValue!515 () V!17269)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17269)

(declare-datatypes ((array!28015 0))(
  ( (array!28016 (arr!13449 (Array (_ BitVec 32) (_ BitVec 64))) (size!13801 (_ BitVec 32))) )
))
(declare-fun lt!205254 () array!28015)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5718 0))(
  ( (ValueCellFull!5718 (v!8361 V!17269)) (EmptyCell!5718) )
))
(declare-datatypes ((array!28017 0))(
  ( (array!28018 (arr!13450 (Array (_ BitVec 32) ValueCell!5718)) (size!13802 (_ BitVec 32))) )
))
(declare-fun lt!205258 () array!28017)

(declare-datatypes ((tuple2!7984 0))(
  ( (tuple2!7985 (_1!4002 (_ BitVec 64)) (_2!4002 V!17269)) )
))
(declare-datatypes ((List!8087 0))(
  ( (Nil!8084) (Cons!8083 (h!8939 tuple2!7984) (t!13903 List!8087)) )
))
(declare-datatypes ((ListLongMap!6911 0))(
  ( (ListLongMap!6912 (toList!3471 List!8087)) )
))
(declare-fun lt!205252 () ListLongMap!6911)

(declare-fun getCurrentListMapNoExtraKeys!1648 (array!28015 array!28017 (_ BitVec 32) (_ BitVec 32) V!17269 V!17269 (_ BitVec 32) Int) ListLongMap!6911)

(assert (=> b!452335 (= lt!205252 (getCurrentListMapNoExtraKeys!1648 lt!205254 lt!205258 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!28017)

(declare-fun v!412 () V!17269)

(assert (=> b!452335 (= lt!205258 (array!28018 (store (arr!13450 _values!549) i!563 (ValueCellFull!5718 v!412)) (size!13802 _values!549)))))

(declare-fun lt!205255 () ListLongMap!6911)

(declare-fun _keys!709 () array!28015)

(assert (=> b!452335 (= lt!205255 (getCurrentListMapNoExtraKeys!1648 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!452336 () Bool)

(declare-fun res!269515 () Bool)

(declare-fun e!264848 () Bool)

(assert (=> b!452336 (=> (not res!269515) (not e!264848))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28015 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!452336 (= res!269515 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!452337 () Bool)

(declare-fun e!264846 () Bool)

(declare-fun tp_is_empty!12123 () Bool)

(assert (=> b!452337 (= e!264846 tp_is_empty!12123)))

(declare-fun b!452338 () Bool)

(declare-fun res!269513 () Bool)

(assert (=> b!452338 (=> (not res!269513) (not e!264850))))

(assert (=> b!452338 (= res!269513 (bvsle from!863 i!563))))

(declare-fun b!452339 () Bool)

(declare-fun res!269511 () Bool)

(assert (=> b!452339 (=> (not res!269511) (not e!264850))))

(declare-datatypes ((List!8088 0))(
  ( (Nil!8085) (Cons!8084 (h!8940 (_ BitVec 64)) (t!13904 List!8088)) )
))
(declare-fun arrayNoDuplicates!0 (array!28015 (_ BitVec 32) List!8088) Bool)

(assert (=> b!452339 (= res!269511 (arrayNoDuplicates!0 lt!205254 #b00000000000000000000000000000000 Nil!8085))))

(declare-fun b!452340 () Bool)

(declare-fun e!264844 () Bool)

(assert (=> b!452340 (= e!264847 (not e!264844))))

(declare-fun res!269506 () Bool)

(assert (=> b!452340 (=> res!269506 e!264844)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!452340 (= res!269506 (validKeyInArray!0 (select (arr!13449 _keys!709) from!863)))))

(declare-fun e!264849 () Bool)

(assert (=> b!452340 e!264849))

(declare-fun c!56051 () Bool)

(assert (=> b!452340 (= c!56051 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13177 0))(
  ( (Unit!13178) )
))
(declare-fun lt!205257 () Unit!13177)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!705 (array!28015 array!28017 (_ BitVec 32) (_ BitVec 32) V!17269 V!17269 (_ BitVec 32) (_ BitVec 64) V!17269 (_ BitVec 32) Int) Unit!13177)

(assert (=> b!452340 (= lt!205257 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!705 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452341 () Bool)

(declare-fun res!269510 () Bool)

(assert (=> b!452341 (=> (not res!269510) (not e!264848))))

(assert (=> b!452341 (= res!269510 (or (= (select (arr!13449 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13449 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19821 () Bool)

(declare-fun mapRes!19821 () Bool)

(declare-fun tp!38178 () Bool)

(assert (=> mapNonEmpty!19821 (= mapRes!19821 (and tp!38178 e!264846))))

(declare-fun mapKey!19821 () (_ BitVec 32))

(declare-fun mapValue!19821 () ValueCell!5718)

(declare-fun mapRest!19821 () (Array (_ BitVec 32) ValueCell!5718))

(assert (=> mapNonEmpty!19821 (= (arr!13450 _values!549) (store mapRest!19821 mapKey!19821 mapValue!19821))))

(declare-fun b!452342 () Bool)

(declare-fun res!269508 () Bool)

(assert (=> b!452342 (=> (not res!269508) (not e!264848))))

(assert (=> b!452342 (= res!269508 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8085))))

(declare-fun mapIsEmpty!19821 () Bool)

(assert (=> mapIsEmpty!19821 mapRes!19821))

(declare-fun call!29965 () ListLongMap!6911)

(declare-fun bm!29962 () Bool)

(assert (=> bm!29962 (= call!29965 (getCurrentListMapNoExtraKeys!1648 (ite c!56051 lt!205254 _keys!709) (ite c!56051 lt!205258 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452343 () Bool)

(declare-fun res!269505 () Bool)

(assert (=> b!452343 (=> (not res!269505) (not e!264848))))

(assert (=> b!452343 (= res!269505 (and (= (size!13802 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13801 _keys!709) (size!13802 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!452344 () Bool)

(assert (=> b!452344 (= e!264848 e!264850)))

(declare-fun res!269512 () Bool)

(assert (=> b!452344 (=> (not res!269512) (not e!264850))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28015 (_ BitVec 32)) Bool)

(assert (=> b!452344 (= res!269512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!205254 mask!1025))))

(assert (=> b!452344 (= lt!205254 (array!28016 (store (arr!13449 _keys!709) i!563 k0!794) (size!13801 _keys!709)))))

(declare-fun b!452345 () Bool)

(declare-fun e!264845 () Bool)

(declare-fun e!264851 () Bool)

(assert (=> b!452345 (= e!264845 (and e!264851 mapRes!19821))))

(declare-fun condMapEmpty!19821 () Bool)

(declare-fun mapDefault!19821 () ValueCell!5718)

(assert (=> b!452345 (= condMapEmpty!19821 (= (arr!13450 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5718)) mapDefault!19821)))))

(declare-fun b!452346 () Bool)

(declare-fun res!269504 () Bool)

(assert (=> b!452346 (=> (not res!269504) (not e!264848))))

(assert (=> b!452346 (= res!269504 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13801 _keys!709))))))

(declare-fun b!452347 () Bool)

(declare-fun call!29966 () ListLongMap!6911)

(assert (=> b!452347 (= e!264849 (= call!29966 call!29965))))

(declare-fun b!452348 () Bool)

(assert (=> b!452348 (= e!264851 tp_is_empty!12123)))

(declare-fun res!269514 () Bool)

(assert (=> start!40804 (=> (not res!269514) (not e!264848))))

(assert (=> start!40804 (= res!269514 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13801 _keys!709))))))

(assert (=> start!40804 e!264848))

(assert (=> start!40804 tp_is_empty!12123))

(assert (=> start!40804 tp!38177))

(assert (=> start!40804 true))

(declare-fun array_inv!9736 (array!28017) Bool)

(assert (=> start!40804 (and (array_inv!9736 _values!549) e!264845)))

(declare-fun array_inv!9737 (array!28015) Bool)

(assert (=> start!40804 (array_inv!9737 _keys!709)))

(declare-fun b!452349 () Bool)

(declare-fun +!1537 (ListLongMap!6911 tuple2!7984) ListLongMap!6911)

(assert (=> b!452349 (= e!264849 (= call!29965 (+!1537 call!29966 (tuple2!7985 k0!794 v!412))))))

(declare-fun b!452350 () Bool)

(declare-fun res!269503 () Bool)

(assert (=> b!452350 (=> (not res!269503) (not e!264848))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!452350 (= res!269503 (validMask!0 mask!1025))))

(declare-fun b!452351 () Bool)

(declare-fun res!269516 () Bool)

(assert (=> b!452351 (=> (not res!269516) (not e!264848))))

(assert (=> b!452351 (= res!269516 (validKeyInArray!0 k0!794))))

(declare-fun bm!29963 () Bool)

(assert (=> bm!29963 (= call!29966 (getCurrentListMapNoExtraKeys!1648 (ite c!56051 _keys!709 lt!205254) (ite c!56051 _values!549 lt!205258) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452352 () Bool)

(declare-fun res!269507 () Bool)

(assert (=> b!452352 (=> (not res!269507) (not e!264848))))

(assert (=> b!452352 (= res!269507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!452353 () Bool)

(assert (=> b!452353 (= e!264844 (bvslt i!563 (size!13802 _values!549)))))

(declare-fun lt!205259 () ListLongMap!6911)

(declare-fun lt!205253 () V!17269)

(declare-fun lt!205250 () tuple2!7984)

(assert (=> b!452353 (= (+!1537 lt!205259 lt!205250) (+!1537 (+!1537 lt!205259 (tuple2!7985 k0!794 lt!205253)) lt!205250))))

(declare-fun lt!205251 () V!17269)

(assert (=> b!452353 (= lt!205250 (tuple2!7985 k0!794 lt!205251))))

(declare-fun lt!205256 () Unit!13177)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!83 (ListLongMap!6911 (_ BitVec 64) V!17269 V!17269) Unit!13177)

(assert (=> b!452353 (= lt!205256 (addSameAsAddTwiceSameKeyDiffValues!83 lt!205259 k0!794 lt!205253 lt!205251))))

(declare-fun lt!205260 () V!17269)

(declare-fun get!6640 (ValueCell!5718 V!17269) V!17269)

(assert (=> b!452353 (= lt!205253 (get!6640 (select (arr!13450 _values!549) from!863) lt!205260))))

(assert (=> b!452353 (= lt!205252 (+!1537 lt!205259 (tuple2!7985 (select (arr!13449 lt!205254) from!863) lt!205251)))))

(assert (=> b!452353 (= lt!205251 (get!6640 (select (store (arr!13450 _values!549) i!563 (ValueCellFull!5718 v!412)) from!863) lt!205260))))

(declare-fun dynLambda!861 (Int (_ BitVec 64)) V!17269)

(assert (=> b!452353 (= lt!205260 (dynLambda!861 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!452353 (= lt!205259 (getCurrentListMapNoExtraKeys!1648 lt!205254 lt!205258 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!40804 res!269514) b!452350))

(assert (= (and b!452350 res!269503) b!452343))

(assert (= (and b!452343 res!269505) b!452352))

(assert (= (and b!452352 res!269507) b!452342))

(assert (= (and b!452342 res!269508) b!452346))

(assert (= (and b!452346 res!269504) b!452351))

(assert (= (and b!452351 res!269516) b!452341))

(assert (= (and b!452341 res!269510) b!452336))

(assert (= (and b!452336 res!269515) b!452344))

(assert (= (and b!452344 res!269512) b!452339))

(assert (= (and b!452339 res!269511) b!452338))

(assert (= (and b!452338 res!269513) b!452335))

(assert (= (and b!452335 res!269509) b!452340))

(assert (= (and b!452340 c!56051) b!452349))

(assert (= (and b!452340 (not c!56051)) b!452347))

(assert (= (or b!452349 b!452347) bm!29962))

(assert (= (or b!452349 b!452347) bm!29963))

(assert (= (and b!452340 (not res!269506)) b!452353))

(assert (= (and b!452345 condMapEmpty!19821) mapIsEmpty!19821))

(assert (= (and b!452345 (not condMapEmpty!19821)) mapNonEmpty!19821))

(get-info :version)

(assert (= (and mapNonEmpty!19821 ((_ is ValueCellFull!5718) mapValue!19821)) b!452337))

(assert (= (and b!452345 ((_ is ValueCellFull!5718) mapDefault!19821)) b!452348))

(assert (= start!40804 b!452345))

(declare-fun b_lambda!9593 () Bool)

(assert (=> (not b_lambda!9593) (not b!452353)))

(declare-fun t!13902 () Bool)

(declare-fun tb!3773 () Bool)

(assert (=> (and start!40804 (= defaultEntry!557 defaultEntry!557) t!13902) tb!3773))

(declare-fun result!7075 () Bool)

(assert (=> tb!3773 (= result!7075 tp_is_empty!12123)))

(assert (=> b!452353 t!13902))

(declare-fun b_and!18877 () Bool)

(assert (= b_and!18875 (and (=> t!13902 result!7075) b_and!18877)))

(declare-fun m!436099 () Bool)

(assert (=> b!452336 m!436099))

(declare-fun m!436101 () Bool)

(assert (=> b!452342 m!436101))

(declare-fun m!436103 () Bool)

(assert (=> b!452353 m!436103))

(declare-fun m!436105 () Bool)

(assert (=> b!452353 m!436105))

(declare-fun m!436107 () Bool)

(assert (=> b!452353 m!436107))

(assert (=> b!452353 m!436107))

(declare-fun m!436109 () Bool)

(assert (=> b!452353 m!436109))

(declare-fun m!436111 () Bool)

(assert (=> b!452353 m!436111))

(declare-fun m!436113 () Bool)

(assert (=> b!452353 m!436113))

(assert (=> b!452353 m!436111))

(declare-fun m!436115 () Bool)

(assert (=> b!452353 m!436115))

(declare-fun m!436117 () Bool)

(assert (=> b!452353 m!436117))

(assert (=> b!452353 m!436115))

(declare-fun m!436119 () Bool)

(assert (=> b!452353 m!436119))

(declare-fun m!436121 () Bool)

(assert (=> b!452353 m!436121))

(declare-fun m!436123 () Bool)

(assert (=> b!452353 m!436123))

(declare-fun m!436125 () Bool)

(assert (=> b!452353 m!436125))

(declare-fun m!436127 () Bool)

(assert (=> b!452353 m!436127))

(declare-fun m!436129 () Bool)

(assert (=> b!452352 m!436129))

(declare-fun m!436131 () Bool)

(assert (=> bm!29962 m!436131))

(declare-fun m!436133 () Bool)

(assert (=> b!452344 m!436133))

(declare-fun m!436135 () Bool)

(assert (=> b!452344 m!436135))

(declare-fun m!436137 () Bool)

(assert (=> bm!29963 m!436137))

(declare-fun m!436139 () Bool)

(assert (=> b!452335 m!436139))

(assert (=> b!452335 m!436105))

(declare-fun m!436141 () Bool)

(assert (=> b!452335 m!436141))

(declare-fun m!436143 () Bool)

(assert (=> b!452349 m!436143))

(declare-fun m!436145 () Bool)

(assert (=> start!40804 m!436145))

(declare-fun m!436147 () Bool)

(assert (=> start!40804 m!436147))

(declare-fun m!436149 () Bool)

(assert (=> b!452351 m!436149))

(declare-fun m!436151 () Bool)

(assert (=> b!452339 m!436151))

(declare-fun m!436153 () Bool)

(assert (=> b!452341 m!436153))

(declare-fun m!436155 () Bool)

(assert (=> b!452340 m!436155))

(assert (=> b!452340 m!436155))

(declare-fun m!436157 () Bool)

(assert (=> b!452340 m!436157))

(declare-fun m!436159 () Bool)

(assert (=> b!452340 m!436159))

(declare-fun m!436161 () Bool)

(assert (=> b!452350 m!436161))

(declare-fun m!436163 () Bool)

(assert (=> mapNonEmpty!19821 m!436163))

(check-sat (not b!452349) (not b!452342) (not b!452353) (not mapNonEmpty!19821) tp_is_empty!12123 (not b!452344) (not b!452350) (not bm!29962) (not b!452352) (not b!452340) b_and!18877 (not b_next!10785) (not b!452335) (not bm!29963) (not start!40804) (not b!452351) (not b_lambda!9593) (not b!452339) (not b!452336))
(check-sat b_and!18877 (not b_next!10785))
