; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39908 () Bool)

(assert start!39908)

(declare-fun b_free!10167 () Bool)

(declare-fun b_next!10167 () Bool)

(assert (=> start!39908 (= b_free!10167 (not b_next!10167))))

(declare-fun tp!36029 () Bool)

(declare-fun b_and!18011 () Bool)

(assert (=> start!39908 (= tp!36029 b_and!18011)))

(declare-fun b!432183 () Bool)

(declare-fun e!255655 () Bool)

(declare-fun e!255664 () Bool)

(assert (=> b!432183 (= e!255655 e!255664)))

(declare-fun res!254289 () Bool)

(assert (=> b!432183 (=> res!254289 e!255664)))

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((array!26449 0))(
  ( (array!26450 (arr!12671 (Array (_ BitVec 32) (_ BitVec 64))) (size!13023 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26449)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!432183 (= res!254289 (= k0!794 (select (arr!12671 _keys!709) from!863)))))

(assert (=> b!432183 (not (= (select (arr!12671 _keys!709) from!863) k0!794))))

(declare-datatypes ((Unit!12725 0))(
  ( (Unit!12726) )
))
(declare-fun lt!198228 () Unit!12725)

(declare-fun e!255658 () Unit!12725)

(assert (=> b!432183 (= lt!198228 e!255658)))

(declare-fun c!55511 () Bool)

(assert (=> b!432183 (= c!55511 (= (select (arr!12671 _keys!709) from!863) k0!794))))

(declare-datatypes ((V!16197 0))(
  ( (V!16198 (val!5704 Int)) )
))
(declare-datatypes ((tuple2!7462 0))(
  ( (tuple2!7463 (_1!3741 (_ BitVec 64)) (_2!3741 V!16197)) )
))
(declare-datatypes ((List!7515 0))(
  ( (Nil!7512) (Cons!7511 (h!8367 tuple2!7462) (t!13139 List!7515)) )
))
(declare-datatypes ((ListLongMap!6389 0))(
  ( (ListLongMap!6390 (toList!3210 List!7515)) )
))
(declare-fun lt!198225 () ListLongMap!6389)

(declare-fun lt!198224 () ListLongMap!6389)

(assert (=> b!432183 (= lt!198225 lt!198224)))

(declare-fun lt!198226 () ListLongMap!6389)

(declare-fun lt!198237 () tuple2!7462)

(declare-fun +!1356 (ListLongMap!6389 tuple2!7462) ListLongMap!6389)

(assert (=> b!432183 (= lt!198224 (+!1356 lt!198226 lt!198237))))

(declare-fun lt!198229 () V!16197)

(assert (=> b!432183 (= lt!198237 (tuple2!7463 (select (arr!12671 _keys!709) from!863) lt!198229))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5316 0))(
  ( (ValueCellFull!5316 (v!7947 V!16197)) (EmptyCell!5316) )
))
(declare-datatypes ((array!26451 0))(
  ( (array!26452 (arr!12672 (Array (_ BitVec 32) ValueCell!5316)) (size!13024 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26451)

(declare-fun get!6304 (ValueCell!5316 V!16197) V!16197)

(declare-fun dynLambda!795 (Int (_ BitVec 64)) V!16197)

(assert (=> b!432183 (= lt!198229 (get!6304 (select (arr!12672 _values!549) from!863) (dynLambda!795 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432184 () Bool)

(declare-fun res!254292 () Bool)

(declare-fun e!255656 () Bool)

(assert (=> b!432184 (=> (not res!254292) (not e!255656))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!432184 (= res!254292 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13023 _keys!709))))))

(declare-fun b!432185 () Bool)

(declare-fun e!255661 () Bool)

(assert (=> b!432185 (= e!255661 (not e!255655))))

(declare-fun res!254283 () Bool)

(assert (=> b!432185 (=> res!254283 e!255655)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!432185 (= res!254283 (not (validKeyInArray!0 (select (arr!12671 _keys!709) from!863))))))

(declare-fun lt!198236 () ListLongMap!6389)

(assert (=> b!432185 (= lt!198236 lt!198226)))

(declare-fun lt!198227 () ListLongMap!6389)

(declare-fun lt!198230 () tuple2!7462)

(assert (=> b!432185 (= lt!198226 (+!1356 lt!198227 lt!198230))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16197)

(declare-fun lt!198235 () array!26449)

(declare-fun lt!198231 () array!26451)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun minValue!515 () V!16197)

(declare-fun getCurrentListMapNoExtraKeys!1403 (array!26449 array!26451 (_ BitVec 32) (_ BitVec 32) V!16197 V!16197 (_ BitVec 32) Int) ListLongMap!6389)

(assert (=> b!432185 (= lt!198236 (getCurrentListMapNoExtraKeys!1403 lt!198235 lt!198231 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!16197)

(assert (=> b!432185 (= lt!198230 (tuple2!7463 k0!794 v!412))))

(assert (=> b!432185 (= lt!198227 (getCurrentListMapNoExtraKeys!1403 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!198233 () Unit!12725)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!547 (array!26449 array!26451 (_ BitVec 32) (_ BitVec 32) V!16197 V!16197 (_ BitVec 32) (_ BitVec 64) V!16197 (_ BitVec 32) Int) Unit!12725)

(assert (=> b!432185 (= lt!198233 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!547 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!432186 () Bool)

(declare-fun res!254290 () Bool)

(declare-fun e!255663 () Bool)

(assert (=> b!432186 (=> (not res!254290) (not e!255663))))

(declare-datatypes ((List!7516 0))(
  ( (Nil!7513) (Cons!7512 (h!8368 (_ BitVec 64)) (t!13140 List!7516)) )
))
(declare-fun arrayNoDuplicates!0 (array!26449 (_ BitVec 32) List!7516) Bool)

(assert (=> b!432186 (= res!254290 (arrayNoDuplicates!0 lt!198235 #b00000000000000000000000000000000 Nil!7513))))

(declare-fun b!432187 () Bool)

(declare-fun e!255659 () Bool)

(declare-fun tp_is_empty!11319 () Bool)

(assert (=> b!432187 (= e!255659 tp_is_empty!11319)))

(declare-fun b!432188 () Bool)

(declare-fun e!255662 () Bool)

(declare-fun mapRes!18600 () Bool)

(assert (=> b!432188 (= e!255662 (and e!255659 mapRes!18600))))

(declare-fun condMapEmpty!18600 () Bool)

(declare-fun mapDefault!18600 () ValueCell!5316)

(assert (=> b!432188 (= condMapEmpty!18600 (= (arr!12672 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5316)) mapDefault!18600)))))

(declare-fun b!432189 () Bool)

(declare-fun res!254281 () Bool)

(assert (=> b!432189 (=> (not res!254281) (not e!255656))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26449 (_ BitVec 32)) Bool)

(assert (=> b!432189 (= res!254281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!432190 () Bool)

(assert (=> b!432190 (= e!255664 true)))

(assert (=> b!432190 (= lt!198224 (+!1356 (+!1356 lt!198227 lt!198237) lt!198230))))

(declare-fun lt!198234 () Unit!12725)

(declare-fun addCommutativeForDiffKeys!368 (ListLongMap!6389 (_ BitVec 64) V!16197 (_ BitVec 64) V!16197) Unit!12725)

(assert (=> b!432190 (= lt!198234 (addCommutativeForDiffKeys!368 lt!198227 k0!794 v!412 (select (arr!12671 _keys!709) from!863) lt!198229))))

(declare-fun b!432191 () Bool)

(declare-fun Unit!12727 () Unit!12725)

(assert (=> b!432191 (= e!255658 Unit!12727)))

(declare-fun lt!198232 () Unit!12725)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26449 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12725)

(assert (=> b!432191 (= lt!198232 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!432191 false))

(declare-fun b!432192 () Bool)

(assert (=> b!432192 (= e!255663 e!255661)))

(declare-fun res!254285 () Bool)

(assert (=> b!432192 (=> (not res!254285) (not e!255661))))

(assert (=> b!432192 (= res!254285 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!432192 (= lt!198225 (getCurrentListMapNoExtraKeys!1403 lt!198235 lt!198231 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!432192 (= lt!198231 (array!26452 (store (arr!12672 _values!549) i!563 (ValueCellFull!5316 v!412)) (size!13024 _values!549)))))

(declare-fun lt!198223 () ListLongMap!6389)

(assert (=> b!432192 (= lt!198223 (getCurrentListMapNoExtraKeys!1403 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!18600 () Bool)

(declare-fun tp!36030 () Bool)

(declare-fun e!255657 () Bool)

(assert (=> mapNonEmpty!18600 (= mapRes!18600 (and tp!36030 e!255657))))

(declare-fun mapRest!18600 () (Array (_ BitVec 32) ValueCell!5316))

(declare-fun mapKey!18600 () (_ BitVec 32))

(declare-fun mapValue!18600 () ValueCell!5316)

(assert (=> mapNonEmpty!18600 (= (arr!12672 _values!549) (store mapRest!18600 mapKey!18600 mapValue!18600))))

(declare-fun b!432193 () Bool)

(declare-fun res!254295 () Bool)

(assert (=> b!432193 (=> (not res!254295) (not e!255656))))

(declare-fun arrayContainsKey!0 (array!26449 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!432193 (= res!254295 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18600 () Bool)

(assert (=> mapIsEmpty!18600 mapRes!18600))

(declare-fun b!432194 () Bool)

(assert (=> b!432194 (= e!255657 tp_is_empty!11319)))

(declare-fun b!432195 () Bool)

(declare-fun Unit!12728 () Unit!12725)

(assert (=> b!432195 (= e!255658 Unit!12728)))

(declare-fun b!432196 () Bool)

(declare-fun res!254294 () Bool)

(assert (=> b!432196 (=> (not res!254294) (not e!255656))))

(assert (=> b!432196 (= res!254294 (validKeyInArray!0 k0!794))))

(declare-fun b!432197 () Bool)

(declare-fun res!254293 () Bool)

(assert (=> b!432197 (=> (not res!254293) (not e!255656))))

(assert (=> b!432197 (= res!254293 (or (= (select (arr!12671 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12671 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!254282 () Bool)

(assert (=> start!39908 (=> (not res!254282) (not e!255656))))

(assert (=> start!39908 (= res!254282 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13023 _keys!709))))))

(assert (=> start!39908 e!255656))

(assert (=> start!39908 tp_is_empty!11319))

(assert (=> start!39908 tp!36029))

(assert (=> start!39908 true))

(declare-fun array_inv!9216 (array!26451) Bool)

(assert (=> start!39908 (and (array_inv!9216 _values!549) e!255662)))

(declare-fun array_inv!9217 (array!26449) Bool)

(assert (=> start!39908 (array_inv!9217 _keys!709)))

(declare-fun b!432198 () Bool)

(declare-fun res!254287 () Bool)

(assert (=> b!432198 (=> (not res!254287) (not e!255656))))

(assert (=> b!432198 (= res!254287 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7513))))

(declare-fun b!432199 () Bool)

(declare-fun res!254288 () Bool)

(assert (=> b!432199 (=> (not res!254288) (not e!255663))))

(assert (=> b!432199 (= res!254288 (bvsle from!863 i!563))))

(declare-fun b!432200 () Bool)

(declare-fun res!254291 () Bool)

(assert (=> b!432200 (=> (not res!254291) (not e!255656))))

(assert (=> b!432200 (= res!254291 (and (= (size!13024 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13023 _keys!709) (size!13024 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!432201 () Bool)

(assert (=> b!432201 (= e!255656 e!255663)))

(declare-fun res!254284 () Bool)

(assert (=> b!432201 (=> (not res!254284) (not e!255663))))

(assert (=> b!432201 (= res!254284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!198235 mask!1025))))

(assert (=> b!432201 (= lt!198235 (array!26450 (store (arr!12671 _keys!709) i!563 k0!794) (size!13023 _keys!709)))))

(declare-fun b!432202 () Bool)

(declare-fun res!254286 () Bool)

(assert (=> b!432202 (=> (not res!254286) (not e!255656))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!432202 (= res!254286 (validMask!0 mask!1025))))

(assert (= (and start!39908 res!254282) b!432202))

(assert (= (and b!432202 res!254286) b!432200))

(assert (= (and b!432200 res!254291) b!432189))

(assert (= (and b!432189 res!254281) b!432198))

(assert (= (and b!432198 res!254287) b!432184))

(assert (= (and b!432184 res!254292) b!432196))

(assert (= (and b!432196 res!254294) b!432197))

(assert (= (and b!432197 res!254293) b!432193))

(assert (= (and b!432193 res!254295) b!432201))

(assert (= (and b!432201 res!254284) b!432186))

(assert (= (and b!432186 res!254290) b!432199))

(assert (= (and b!432199 res!254288) b!432192))

(assert (= (and b!432192 res!254285) b!432185))

(assert (= (and b!432185 (not res!254283)) b!432183))

(assert (= (and b!432183 c!55511) b!432191))

(assert (= (and b!432183 (not c!55511)) b!432195))

(assert (= (and b!432183 (not res!254289)) b!432190))

(assert (= (and b!432188 condMapEmpty!18600) mapIsEmpty!18600))

(assert (= (and b!432188 (not condMapEmpty!18600)) mapNonEmpty!18600))

(get-info :version)

(assert (= (and mapNonEmpty!18600 ((_ is ValueCellFull!5316) mapValue!18600)) b!432194))

(assert (= (and b!432188 ((_ is ValueCellFull!5316) mapDefault!18600)) b!432187))

(assert (= start!39908 b!432188))

(declare-fun b_lambda!9285 () Bool)

(assert (=> (not b_lambda!9285) (not b!432183)))

(declare-fun t!13138 () Bool)

(declare-fun tb!3581 () Bool)

(assert (=> (and start!39908 (= defaultEntry!557 defaultEntry!557) t!13138) tb!3581))

(declare-fun result!6681 () Bool)

(assert (=> tb!3581 (= result!6681 tp_is_empty!11319)))

(assert (=> b!432183 t!13138))

(declare-fun b_and!18013 () Bool)

(assert (= b_and!18011 (and (=> t!13138 result!6681) b_and!18013)))

(declare-fun m!420305 () Bool)

(assert (=> b!432197 m!420305))

(declare-fun m!420307 () Bool)

(assert (=> b!432198 m!420307))

(declare-fun m!420309 () Bool)

(assert (=> b!432192 m!420309))

(declare-fun m!420311 () Bool)

(assert (=> b!432192 m!420311))

(declare-fun m!420313 () Bool)

(assert (=> b!432192 m!420313))

(declare-fun m!420315 () Bool)

(assert (=> b!432190 m!420315))

(assert (=> b!432190 m!420315))

(declare-fun m!420317 () Bool)

(assert (=> b!432190 m!420317))

(declare-fun m!420319 () Bool)

(assert (=> b!432190 m!420319))

(assert (=> b!432190 m!420319))

(declare-fun m!420321 () Bool)

(assert (=> b!432190 m!420321))

(declare-fun m!420323 () Bool)

(assert (=> b!432196 m!420323))

(declare-fun m!420325 () Bool)

(assert (=> b!432201 m!420325))

(declare-fun m!420327 () Bool)

(assert (=> b!432201 m!420327))

(declare-fun m!420329 () Bool)

(assert (=> b!432191 m!420329))

(declare-fun m!420331 () Bool)

(assert (=> b!432186 m!420331))

(declare-fun m!420333 () Bool)

(assert (=> b!432202 m!420333))

(declare-fun m!420335 () Bool)

(assert (=> b!432189 m!420335))

(assert (=> b!432183 m!420319))

(declare-fun m!420337 () Bool)

(assert (=> b!432183 m!420337))

(declare-fun m!420339 () Bool)

(assert (=> b!432183 m!420339))

(declare-fun m!420341 () Bool)

(assert (=> b!432183 m!420341))

(assert (=> b!432183 m!420339))

(assert (=> b!432183 m!420337))

(declare-fun m!420343 () Bool)

(assert (=> b!432183 m!420343))

(declare-fun m!420345 () Bool)

(assert (=> start!39908 m!420345))

(declare-fun m!420347 () Bool)

(assert (=> start!39908 m!420347))

(assert (=> b!432185 m!420319))

(declare-fun m!420349 () Bool)

(assert (=> b!432185 m!420349))

(declare-fun m!420351 () Bool)

(assert (=> b!432185 m!420351))

(assert (=> b!432185 m!420319))

(declare-fun m!420353 () Bool)

(assert (=> b!432185 m!420353))

(declare-fun m!420355 () Bool)

(assert (=> b!432185 m!420355))

(declare-fun m!420357 () Bool)

(assert (=> b!432185 m!420357))

(declare-fun m!420359 () Bool)

(assert (=> mapNonEmpty!18600 m!420359))

(declare-fun m!420361 () Bool)

(assert (=> b!432193 m!420361))

(check-sat (not b!432192) (not b!432186) (not b!432190) (not b!432196) (not start!39908) (not b!432198) tp_is_empty!11319 (not mapNonEmpty!18600) (not b!432202) (not b_lambda!9285) (not b!432193) (not b!432201) (not b_next!10167) (not b!432185) (not b!432183) (not b!432191) (not b!432189) b_and!18013)
(check-sat b_and!18013 (not b_next!10167))
