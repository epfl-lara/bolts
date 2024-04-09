; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40040 () Bool)

(assert start!40040)

(declare-fun b_free!10299 () Bool)

(declare-fun b_next!10299 () Bool)

(assert (=> start!40040 (= b_free!10299 (not b_next!10299))))

(declare-fun tp!36426 () Bool)

(declare-fun b_and!18275 () Bool)

(assert (=> start!40040 (= tp!36426 b_and!18275)))

(declare-fun b!436275 () Bool)

(declare-fun e!257640 () Bool)

(declare-fun tp_is_empty!11451 () Bool)

(assert (=> b!436275 (= e!257640 tp_is_empty!11451)))

(declare-fun b!436276 () Bool)

(declare-fun res!257257 () Bool)

(declare-fun e!257638 () Bool)

(assert (=> b!436276 (=> (not res!257257) (not e!257638))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!26703 0))(
  ( (array!26704 (arr!12798 (Array (_ BitVec 32) (_ BitVec 64))) (size!13150 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26703)

(assert (=> b!436276 (= res!257257 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13150 _keys!709))))))

(declare-fun b!436277 () Bool)

(declare-fun res!257264 () Bool)

(assert (=> b!436277 (=> (not res!257264) (not e!257638))))

(assert (=> b!436277 (= res!257264 (or (= (select (arr!12798 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12798 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!436278 () Bool)

(declare-fun res!257251 () Bool)

(declare-fun e!257642 () Bool)

(assert (=> b!436278 (=> (not res!257251) (not e!257642))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!436278 (= res!257251 (bvsle from!863 i!563))))

(declare-fun res!257259 () Bool)

(assert (=> start!40040 (=> (not res!257259) (not e!257638))))

(assert (=> start!40040 (= res!257259 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13150 _keys!709))))))

(assert (=> start!40040 e!257638))

(assert (=> start!40040 tp_is_empty!11451))

(assert (=> start!40040 tp!36426))

(assert (=> start!40040 true))

(declare-datatypes ((V!16373 0))(
  ( (V!16374 (val!5770 Int)) )
))
(declare-datatypes ((ValueCell!5382 0))(
  ( (ValueCellFull!5382 (v!8013 V!16373)) (EmptyCell!5382) )
))
(declare-datatypes ((array!26705 0))(
  ( (array!26706 (arr!12799 (Array (_ BitVec 32) ValueCell!5382)) (size!13151 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26705)

(declare-fun e!257636 () Bool)

(declare-fun array_inv!9294 (array!26705) Bool)

(assert (=> start!40040 (and (array_inv!9294 _values!549) e!257636)))

(declare-fun array_inv!9295 (array!26703) Bool)

(assert (=> start!40040 (array_inv!9295 _keys!709)))

(declare-fun mapNonEmpty!18798 () Bool)

(declare-fun mapRes!18798 () Bool)

(declare-fun tp!36425 () Bool)

(declare-fun e!257641 () Bool)

(assert (=> mapNonEmpty!18798 (= mapRes!18798 (and tp!36425 e!257641))))

(declare-fun mapValue!18798 () ValueCell!5382)

(declare-fun mapKey!18798 () (_ BitVec 32))

(declare-fun mapRest!18798 () (Array (_ BitVec 32) ValueCell!5382))

(assert (=> mapNonEmpty!18798 (= (arr!12799 _values!549) (store mapRest!18798 mapKey!18798 mapValue!18798))))

(declare-fun b!436279 () Bool)

(declare-fun res!257255 () Bool)

(assert (=> b!436279 (=> (not res!257255) (not e!257638))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26703 (_ BitVec 32)) Bool)

(assert (=> b!436279 (= res!257255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!436280 () Bool)

(assert (=> b!436280 (= e!257638 e!257642)))

(declare-fun res!257260 () Bool)

(assert (=> b!436280 (=> (not res!257260) (not e!257642))))

(declare-fun lt!201197 () array!26703)

(assert (=> b!436280 (= res!257260 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201197 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!436280 (= lt!201197 (array!26704 (store (arr!12798 _keys!709) i!563 k0!794) (size!13150 _keys!709)))))

(declare-fun mapIsEmpty!18798 () Bool)

(assert (=> mapIsEmpty!18798 mapRes!18798))

(declare-fun b!436281 () Bool)

(declare-fun res!257254 () Bool)

(assert (=> b!436281 (=> (not res!257254) (not e!257638))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!436281 (= res!257254 (validKeyInArray!0 k0!794))))

(declare-fun b!436282 () Bool)

(declare-datatypes ((Unit!12931 0))(
  ( (Unit!12932) )
))
(declare-fun e!257643 () Unit!12931)

(declare-fun Unit!12933 () Unit!12931)

(assert (=> b!436282 (= e!257643 Unit!12933)))

(declare-fun b!436283 () Bool)

(declare-fun res!257262 () Bool)

(assert (=> b!436283 (=> (not res!257262) (not e!257638))))

(declare-datatypes ((List!7619 0))(
  ( (Nil!7616) (Cons!7615 (h!8471 (_ BitVec 64)) (t!13375 List!7619)) )
))
(declare-fun arrayNoDuplicates!0 (array!26703 (_ BitVec 32) List!7619) Bool)

(assert (=> b!436283 (= res!257262 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7616))))

(declare-fun b!436284 () Bool)

(assert (=> b!436284 (= e!257641 tp_is_empty!11451)))

(declare-fun b!436285 () Bool)

(declare-fun e!257639 () Bool)

(assert (=> b!436285 (= e!257642 e!257639)))

(declare-fun res!257252 () Bool)

(assert (=> b!436285 (=> (not res!257252) (not e!257639))))

(assert (=> b!436285 (= res!257252 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16373)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!201205 () array!26705)

(declare-fun zeroValue!515 () V!16373)

(declare-datatypes ((tuple2!7576 0))(
  ( (tuple2!7577 (_1!3798 (_ BitVec 64)) (_2!3798 V!16373)) )
))
(declare-datatypes ((List!7620 0))(
  ( (Nil!7617) (Cons!7616 (h!8472 tuple2!7576) (t!13376 List!7620)) )
))
(declare-datatypes ((ListLongMap!6503 0))(
  ( (ListLongMap!6504 (toList!3267 List!7620)) )
))
(declare-fun lt!201196 () ListLongMap!6503)

(declare-fun getCurrentListMapNoExtraKeys!1449 (array!26703 array!26705 (_ BitVec 32) (_ BitVec 32) V!16373 V!16373 (_ BitVec 32) Int) ListLongMap!6503)

(assert (=> b!436285 (= lt!201196 (getCurrentListMapNoExtraKeys!1449 lt!201197 lt!201205 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16373)

(assert (=> b!436285 (= lt!201205 (array!26706 (store (arr!12799 _values!549) i!563 (ValueCellFull!5382 v!412)) (size!13151 _values!549)))))

(declare-fun lt!201194 () ListLongMap!6503)

(assert (=> b!436285 (= lt!201194 (getCurrentListMapNoExtraKeys!1449 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!436286 () Bool)

(declare-fun Unit!12934 () Unit!12931)

(assert (=> b!436286 (= e!257643 Unit!12934)))

(declare-fun lt!201201 () Unit!12931)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26703 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12931)

(assert (=> b!436286 (= lt!201201 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!436286 false))

(declare-fun b!436287 () Bool)

(declare-fun res!257253 () Bool)

(assert (=> b!436287 (=> (not res!257253) (not e!257638))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!436287 (= res!257253 (validMask!0 mask!1025))))

(declare-fun b!436288 () Bool)

(declare-fun res!257261 () Bool)

(assert (=> b!436288 (=> (not res!257261) (not e!257638))))

(assert (=> b!436288 (= res!257261 (and (= (size!13151 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13150 _keys!709) (size!13151 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!436289 () Bool)

(declare-fun e!257644 () Bool)

(assert (=> b!436289 (= e!257644 true)))

(declare-fun lt!201207 () ListLongMap!6503)

(declare-fun lt!201206 () tuple2!7576)

(declare-fun lt!201193 () ListLongMap!6503)

(declare-fun lt!201199 () tuple2!7576)

(declare-fun +!1411 (ListLongMap!6503 tuple2!7576) ListLongMap!6503)

(assert (=> b!436289 (= lt!201193 (+!1411 (+!1411 lt!201207 lt!201206) lt!201199))))

(declare-fun lt!201200 () V!16373)

(declare-fun lt!201195 () Unit!12931)

(declare-fun addCommutativeForDiffKeys!414 (ListLongMap!6503 (_ BitVec 64) V!16373 (_ BitVec 64) V!16373) Unit!12931)

(assert (=> b!436289 (= lt!201195 (addCommutativeForDiffKeys!414 lt!201207 k0!794 v!412 (select (arr!12798 _keys!709) from!863) lt!201200))))

(declare-fun b!436290 () Bool)

(assert (=> b!436290 (= e!257636 (and e!257640 mapRes!18798))))

(declare-fun condMapEmpty!18798 () Bool)

(declare-fun mapDefault!18798 () ValueCell!5382)

(assert (=> b!436290 (= condMapEmpty!18798 (= (arr!12799 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5382)) mapDefault!18798)))))

(declare-fun b!436291 () Bool)

(declare-fun res!257263 () Bool)

(assert (=> b!436291 (=> (not res!257263) (not e!257638))))

(declare-fun arrayContainsKey!0 (array!26703 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!436291 (= res!257263 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!436292 () Bool)

(declare-fun e!257637 () Bool)

(assert (=> b!436292 (= e!257637 e!257644)))

(declare-fun res!257265 () Bool)

(assert (=> b!436292 (=> res!257265 e!257644)))

(assert (=> b!436292 (= res!257265 (= k0!794 (select (arr!12798 _keys!709) from!863)))))

(assert (=> b!436292 (not (= (select (arr!12798 _keys!709) from!863) k0!794))))

(declare-fun lt!201204 () Unit!12931)

(assert (=> b!436292 (= lt!201204 e!257643)))

(declare-fun c!55709 () Bool)

(assert (=> b!436292 (= c!55709 (= (select (arr!12798 _keys!709) from!863) k0!794))))

(assert (=> b!436292 (= lt!201196 lt!201193)))

(declare-fun lt!201203 () ListLongMap!6503)

(assert (=> b!436292 (= lt!201193 (+!1411 lt!201203 lt!201206))))

(assert (=> b!436292 (= lt!201206 (tuple2!7577 (select (arr!12798 _keys!709) from!863) lt!201200))))

(declare-fun get!6390 (ValueCell!5382 V!16373) V!16373)

(declare-fun dynLambda!837 (Int (_ BitVec 64)) V!16373)

(assert (=> b!436292 (= lt!201200 (get!6390 (select (arr!12799 _values!549) from!863) (dynLambda!837 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!436293 () Bool)

(declare-fun res!257256 () Bool)

(assert (=> b!436293 (=> (not res!257256) (not e!257642))))

(assert (=> b!436293 (= res!257256 (arrayNoDuplicates!0 lt!201197 #b00000000000000000000000000000000 Nil!7616))))

(declare-fun b!436294 () Bool)

(assert (=> b!436294 (= e!257639 (not e!257637))))

(declare-fun res!257258 () Bool)

(assert (=> b!436294 (=> res!257258 e!257637)))

(assert (=> b!436294 (= res!257258 (not (validKeyInArray!0 (select (arr!12798 _keys!709) from!863))))))

(declare-fun lt!201202 () ListLongMap!6503)

(assert (=> b!436294 (= lt!201202 lt!201203)))

(assert (=> b!436294 (= lt!201203 (+!1411 lt!201207 lt!201199))))

(assert (=> b!436294 (= lt!201202 (getCurrentListMapNoExtraKeys!1449 lt!201197 lt!201205 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!436294 (= lt!201199 (tuple2!7577 k0!794 v!412))))

(assert (=> b!436294 (= lt!201207 (getCurrentListMapNoExtraKeys!1449 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!201198 () Unit!12931)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!589 (array!26703 array!26705 (_ BitVec 32) (_ BitVec 32) V!16373 V!16373 (_ BitVec 32) (_ BitVec 64) V!16373 (_ BitVec 32) Int) Unit!12931)

(assert (=> b!436294 (= lt!201198 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!589 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!40040 res!257259) b!436287))

(assert (= (and b!436287 res!257253) b!436288))

(assert (= (and b!436288 res!257261) b!436279))

(assert (= (and b!436279 res!257255) b!436283))

(assert (= (and b!436283 res!257262) b!436276))

(assert (= (and b!436276 res!257257) b!436281))

(assert (= (and b!436281 res!257254) b!436277))

(assert (= (and b!436277 res!257264) b!436291))

(assert (= (and b!436291 res!257263) b!436280))

(assert (= (and b!436280 res!257260) b!436293))

(assert (= (and b!436293 res!257256) b!436278))

(assert (= (and b!436278 res!257251) b!436285))

(assert (= (and b!436285 res!257252) b!436294))

(assert (= (and b!436294 (not res!257258)) b!436292))

(assert (= (and b!436292 c!55709) b!436286))

(assert (= (and b!436292 (not c!55709)) b!436282))

(assert (= (and b!436292 (not res!257265)) b!436289))

(assert (= (and b!436290 condMapEmpty!18798) mapIsEmpty!18798))

(assert (= (and b!436290 (not condMapEmpty!18798)) mapNonEmpty!18798))

(get-info :version)

(assert (= (and mapNonEmpty!18798 ((_ is ValueCellFull!5382) mapValue!18798)) b!436284))

(assert (= (and b!436290 ((_ is ValueCellFull!5382) mapDefault!18798)) b!436275))

(assert (= start!40040 b!436290))

(declare-fun b_lambda!9417 () Bool)

(assert (=> (not b_lambda!9417) (not b!436292)))

(declare-fun t!13374 () Bool)

(declare-fun tb!3713 () Bool)

(assert (=> (and start!40040 (= defaultEntry!557 defaultEntry!557) t!13374) tb!3713))

(declare-fun result!6945 () Bool)

(assert (=> tb!3713 (= result!6945 tp_is_empty!11451)))

(assert (=> b!436292 t!13374))

(declare-fun b_and!18277 () Bool)

(assert (= b_and!18275 (and (=> t!13374 result!6945) b_and!18277)))

(declare-fun m!424133 () Bool)

(assert (=> b!436286 m!424133))

(declare-fun m!424135 () Bool)

(assert (=> mapNonEmpty!18798 m!424135))

(declare-fun m!424137 () Bool)

(assert (=> b!436283 m!424137))

(declare-fun m!424139 () Bool)

(assert (=> b!436279 m!424139))

(declare-fun m!424141 () Bool)

(assert (=> start!40040 m!424141))

(declare-fun m!424143 () Bool)

(assert (=> start!40040 m!424143))

(declare-fun m!424145 () Bool)

(assert (=> b!436293 m!424145))

(declare-fun m!424147 () Bool)

(assert (=> b!436281 m!424147))

(declare-fun m!424149 () Bool)

(assert (=> b!436289 m!424149))

(assert (=> b!436289 m!424149))

(declare-fun m!424151 () Bool)

(assert (=> b!436289 m!424151))

(declare-fun m!424153 () Bool)

(assert (=> b!436289 m!424153))

(assert (=> b!436289 m!424153))

(declare-fun m!424155 () Bool)

(assert (=> b!436289 m!424155))

(assert (=> b!436294 m!424153))

(declare-fun m!424157 () Bool)

(assert (=> b!436294 m!424157))

(declare-fun m!424159 () Bool)

(assert (=> b!436294 m!424159))

(declare-fun m!424161 () Bool)

(assert (=> b!436294 m!424161))

(assert (=> b!436294 m!424153))

(declare-fun m!424163 () Bool)

(assert (=> b!436294 m!424163))

(declare-fun m!424165 () Bool)

(assert (=> b!436294 m!424165))

(declare-fun m!424167 () Bool)

(assert (=> b!436277 m!424167))

(declare-fun m!424169 () Bool)

(assert (=> b!436287 m!424169))

(declare-fun m!424171 () Bool)

(assert (=> b!436280 m!424171))

(declare-fun m!424173 () Bool)

(assert (=> b!436280 m!424173))

(declare-fun m!424175 () Bool)

(assert (=> b!436285 m!424175))

(declare-fun m!424177 () Bool)

(assert (=> b!436285 m!424177))

(declare-fun m!424179 () Bool)

(assert (=> b!436285 m!424179))

(assert (=> b!436292 m!424153))

(declare-fun m!424181 () Bool)

(assert (=> b!436292 m!424181))

(declare-fun m!424183 () Bool)

(assert (=> b!436292 m!424183))

(declare-fun m!424185 () Bool)

(assert (=> b!436292 m!424185))

(assert (=> b!436292 m!424183))

(assert (=> b!436292 m!424181))

(declare-fun m!424187 () Bool)

(assert (=> b!436292 m!424187))

(declare-fun m!424189 () Bool)

(assert (=> b!436291 m!424189))

(check-sat (not b!436283) (not b!436287) (not b_next!10299) (not b!436285) (not b_lambda!9417) (not b!436281) (not b!436286) (not start!40040) (not b!436293) (not b!436291) (not mapNonEmpty!18798) b_and!18277 tp_is_empty!11451 (not b!436289) (not b!436294) (not b!436292) (not b!436279) (not b!436280))
(check-sat b_and!18277 (not b_next!10299))
