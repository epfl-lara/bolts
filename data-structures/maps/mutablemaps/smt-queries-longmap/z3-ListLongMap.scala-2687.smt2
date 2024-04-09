; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39950 () Bool)

(assert start!39950)

(declare-fun b_free!10209 () Bool)

(declare-fun b_next!10209 () Bool)

(assert (=> start!39950 (= b_free!10209 (not b_next!10209))))

(declare-fun tp!36155 () Bool)

(declare-fun b_and!18095 () Bool)

(assert (=> start!39950 (= tp!36155 b_and!18095)))

(declare-fun b!433485 () Bool)

(declare-fun res!255238 () Bool)

(declare-fun e!256287 () Bool)

(assert (=> b!433485 (=> (not res!255238) (not e!256287))))

(declare-datatypes ((array!26531 0))(
  ( (array!26532 (arr!12712 (Array (_ BitVec 32) (_ BitVec 64))) (size!13064 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26531)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26531 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!433485 (= res!255238 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!433486 () Bool)

(declare-fun res!255237 () Bool)

(assert (=> b!433486 (=> (not res!255237) (not e!256287))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!433486 (= res!255237 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13064 _keys!709))))))

(declare-fun b!433487 () Bool)

(declare-fun e!256290 () Bool)

(declare-fun tp_is_empty!11361 () Bool)

(assert (=> b!433487 (= e!256290 tp_is_empty!11361)))

(declare-fun b!433488 () Bool)

(declare-fun res!255231 () Bool)

(assert (=> b!433488 (=> (not res!255231) (not e!256287))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26531 (_ BitVec 32)) Bool)

(assert (=> b!433488 (= res!255231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!433489 () Bool)

(declare-fun e!256292 () Bool)

(assert (=> b!433489 (= e!256292 true)))

(declare-datatypes ((V!16253 0))(
  ( (V!16254 (val!5725 Int)) )
))
(declare-datatypes ((tuple2!7500 0))(
  ( (tuple2!7501 (_1!3760 (_ BitVec 64)) (_2!3760 V!16253)) )
))
(declare-fun lt!199179 () tuple2!7500)

(declare-datatypes ((List!7549 0))(
  ( (Nil!7546) (Cons!7545 (h!8401 tuple2!7500) (t!13215 List!7549)) )
))
(declare-datatypes ((ListLongMap!6427 0))(
  ( (ListLongMap!6428 (toList!3229 List!7549)) )
))
(declare-fun lt!199172 () ListLongMap!6427)

(declare-fun lt!199181 () ListLongMap!6427)

(declare-fun lt!199182 () tuple2!7500)

(declare-fun +!1375 (ListLongMap!6427 tuple2!7500) ListLongMap!6427)

(assert (=> b!433489 (= lt!199172 (+!1375 (+!1375 lt!199181 lt!199182) lt!199179))))

(declare-fun lt!199168 () V!16253)

(declare-fun v!412 () V!16253)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((Unit!12793 0))(
  ( (Unit!12794) )
))
(declare-fun lt!199171 () Unit!12793)

(declare-fun addCommutativeForDiffKeys!385 (ListLongMap!6427 (_ BitVec 64) V!16253 (_ BitVec 64) V!16253) Unit!12793)

(assert (=> b!433489 (= lt!199171 (addCommutativeForDiffKeys!385 lt!199181 k0!794 v!412 (select (arr!12712 _keys!709) from!863) lt!199168))))

(declare-fun mapIsEmpty!18663 () Bool)

(declare-fun mapRes!18663 () Bool)

(assert (=> mapIsEmpty!18663 mapRes!18663))

(declare-fun b!433490 () Bool)

(declare-fun e!256294 () Bool)

(declare-fun e!256293 () Bool)

(assert (=> b!433490 (= e!256294 (and e!256293 mapRes!18663))))

(declare-fun condMapEmpty!18663 () Bool)

(declare-datatypes ((ValueCell!5337 0))(
  ( (ValueCellFull!5337 (v!7968 V!16253)) (EmptyCell!5337) )
))
(declare-datatypes ((array!26533 0))(
  ( (array!26534 (arr!12713 (Array (_ BitVec 32) ValueCell!5337)) (size!13065 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26533)

(declare-fun mapDefault!18663 () ValueCell!5337)

(assert (=> b!433490 (= condMapEmpty!18663 (= (arr!12713 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5337)) mapDefault!18663)))))

(declare-fun res!255240 () Bool)

(assert (=> start!39950 (=> (not res!255240) (not e!256287))))

(assert (=> start!39950 (= res!255240 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13064 _keys!709))))))

(assert (=> start!39950 e!256287))

(assert (=> start!39950 tp_is_empty!11361))

(assert (=> start!39950 tp!36155))

(assert (=> start!39950 true))

(declare-fun array_inv!9242 (array!26533) Bool)

(assert (=> start!39950 (and (array_inv!9242 _values!549) e!256294)))

(declare-fun array_inv!9243 (array!26531) Bool)

(assert (=> start!39950 (array_inv!9243 _keys!709)))

(declare-fun b!433491 () Bool)

(declare-fun res!255226 () Bool)

(declare-fun e!256286 () Bool)

(assert (=> b!433491 (=> (not res!255226) (not e!256286))))

(declare-fun lt!199178 () array!26531)

(declare-datatypes ((List!7550 0))(
  ( (Nil!7547) (Cons!7546 (h!8402 (_ BitVec 64)) (t!13216 List!7550)) )
))
(declare-fun arrayNoDuplicates!0 (array!26531 (_ BitVec 32) List!7550) Bool)

(assert (=> b!433491 (= res!255226 (arrayNoDuplicates!0 lt!199178 #b00000000000000000000000000000000 Nil!7547))))

(declare-fun b!433492 () Bool)

(declare-fun e!256289 () Bool)

(assert (=> b!433492 (= e!256289 e!256292)))

(declare-fun res!255234 () Bool)

(assert (=> b!433492 (=> res!255234 e!256292)))

(assert (=> b!433492 (= res!255234 (= k0!794 (select (arr!12712 _keys!709) from!863)))))

(assert (=> b!433492 (not (= (select (arr!12712 _keys!709) from!863) k0!794))))

(declare-fun lt!199174 () Unit!12793)

(declare-fun e!256288 () Unit!12793)

(assert (=> b!433492 (= lt!199174 e!256288)))

(declare-fun c!55574 () Bool)

(assert (=> b!433492 (= c!55574 (= (select (arr!12712 _keys!709) from!863) k0!794))))

(declare-fun lt!199169 () ListLongMap!6427)

(assert (=> b!433492 (= lt!199169 lt!199172)))

(declare-fun lt!199175 () ListLongMap!6427)

(assert (=> b!433492 (= lt!199172 (+!1375 lt!199175 lt!199182))))

(assert (=> b!433492 (= lt!199182 (tuple2!7501 (select (arr!12712 _keys!709) from!863) lt!199168))))

(declare-fun defaultEntry!557 () Int)

(declare-fun get!6330 (ValueCell!5337 V!16253) V!16253)

(declare-fun dynLambda!807 (Int (_ BitVec 64)) V!16253)

(assert (=> b!433492 (= lt!199168 (get!6330 (select (arr!12713 _values!549) from!863) (dynLambda!807 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433493 () Bool)

(declare-fun res!255235 () Bool)

(assert (=> b!433493 (=> (not res!255235) (not e!256287))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!433493 (= res!255235 (validKeyInArray!0 k0!794))))

(declare-fun b!433494 () Bool)

(declare-fun e!256291 () Bool)

(assert (=> b!433494 (= e!256291 (not e!256289))))

(declare-fun res!255232 () Bool)

(assert (=> b!433494 (=> res!255232 e!256289)))

(assert (=> b!433494 (= res!255232 (not (validKeyInArray!0 (select (arr!12712 _keys!709) from!863))))))

(declare-fun lt!199173 () ListLongMap!6427)

(assert (=> b!433494 (= lt!199173 lt!199175)))

(assert (=> b!433494 (= lt!199175 (+!1375 lt!199181 lt!199179))))

(declare-fun minValue!515 () V!16253)

(declare-fun zeroValue!515 () V!16253)

(declare-fun lt!199176 () array!26533)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1418 (array!26531 array!26533 (_ BitVec 32) (_ BitVec 32) V!16253 V!16253 (_ BitVec 32) Int) ListLongMap!6427)

(assert (=> b!433494 (= lt!199173 (getCurrentListMapNoExtraKeys!1418 lt!199178 lt!199176 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!433494 (= lt!199179 (tuple2!7501 k0!794 v!412))))

(assert (=> b!433494 (= lt!199181 (getCurrentListMapNoExtraKeys!1418 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!199170 () Unit!12793)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!562 (array!26531 array!26533 (_ BitVec 32) (_ BitVec 32) V!16253 V!16253 (_ BitVec 32) (_ BitVec 64) V!16253 (_ BitVec 32) Int) Unit!12793)

(assert (=> b!433494 (= lt!199170 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!562 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!433495 () Bool)

(declare-fun res!255228 () Bool)

(assert (=> b!433495 (=> (not res!255228) (not e!256287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!433495 (= res!255228 (validMask!0 mask!1025))))

(declare-fun b!433496 () Bool)

(declare-fun res!255239 () Bool)

(assert (=> b!433496 (=> (not res!255239) (not e!256287))))

(assert (=> b!433496 (= res!255239 (or (= (select (arr!12712 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12712 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433497 () Bool)

(declare-fun Unit!12795 () Unit!12793)

(assert (=> b!433497 (= e!256288 Unit!12795)))

(declare-fun lt!199180 () Unit!12793)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26531 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12793)

(assert (=> b!433497 (= lt!199180 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!433497 false))

(declare-fun mapNonEmpty!18663 () Bool)

(declare-fun tp!36156 () Bool)

(assert (=> mapNonEmpty!18663 (= mapRes!18663 (and tp!36156 e!256290))))

(declare-fun mapValue!18663 () ValueCell!5337)

(declare-fun mapKey!18663 () (_ BitVec 32))

(declare-fun mapRest!18663 () (Array (_ BitVec 32) ValueCell!5337))

(assert (=> mapNonEmpty!18663 (= (arr!12713 _values!549) (store mapRest!18663 mapKey!18663 mapValue!18663))))

(declare-fun b!433498 () Bool)

(assert (=> b!433498 (= e!256286 e!256291)))

(declare-fun res!255227 () Bool)

(assert (=> b!433498 (=> (not res!255227) (not e!256291))))

(assert (=> b!433498 (= res!255227 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!433498 (= lt!199169 (getCurrentListMapNoExtraKeys!1418 lt!199178 lt!199176 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!433498 (= lt!199176 (array!26534 (store (arr!12713 _values!549) i!563 (ValueCellFull!5337 v!412)) (size!13065 _values!549)))))

(declare-fun lt!199177 () ListLongMap!6427)

(assert (=> b!433498 (= lt!199177 (getCurrentListMapNoExtraKeys!1418 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!433499 () Bool)

(declare-fun Unit!12796 () Unit!12793)

(assert (=> b!433499 (= e!256288 Unit!12796)))

(declare-fun b!433500 () Bool)

(assert (=> b!433500 (= e!256293 tp_is_empty!11361)))

(declare-fun b!433501 () Bool)

(declare-fun res!255236 () Bool)

(assert (=> b!433501 (=> (not res!255236) (not e!256286))))

(assert (=> b!433501 (= res!255236 (bvsle from!863 i!563))))

(declare-fun b!433502 () Bool)

(assert (=> b!433502 (= e!256287 e!256286)))

(declare-fun res!255230 () Bool)

(assert (=> b!433502 (=> (not res!255230) (not e!256286))))

(assert (=> b!433502 (= res!255230 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!199178 mask!1025))))

(assert (=> b!433502 (= lt!199178 (array!26532 (store (arr!12712 _keys!709) i!563 k0!794) (size!13064 _keys!709)))))

(declare-fun b!433503 () Bool)

(declare-fun res!255229 () Bool)

(assert (=> b!433503 (=> (not res!255229) (not e!256287))))

(assert (=> b!433503 (= res!255229 (and (= (size!13065 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13064 _keys!709) (size!13065 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!433504 () Bool)

(declare-fun res!255233 () Bool)

(assert (=> b!433504 (=> (not res!255233) (not e!256287))))

(assert (=> b!433504 (= res!255233 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7547))))

(assert (= (and start!39950 res!255240) b!433495))

(assert (= (and b!433495 res!255228) b!433503))

(assert (= (and b!433503 res!255229) b!433488))

(assert (= (and b!433488 res!255231) b!433504))

(assert (= (and b!433504 res!255233) b!433486))

(assert (= (and b!433486 res!255237) b!433493))

(assert (= (and b!433493 res!255235) b!433496))

(assert (= (and b!433496 res!255239) b!433485))

(assert (= (and b!433485 res!255238) b!433502))

(assert (= (and b!433502 res!255230) b!433491))

(assert (= (and b!433491 res!255226) b!433501))

(assert (= (and b!433501 res!255236) b!433498))

(assert (= (and b!433498 res!255227) b!433494))

(assert (= (and b!433494 (not res!255232)) b!433492))

(assert (= (and b!433492 c!55574) b!433497))

(assert (= (and b!433492 (not c!55574)) b!433499))

(assert (= (and b!433492 (not res!255234)) b!433489))

(assert (= (and b!433490 condMapEmpty!18663) mapIsEmpty!18663))

(assert (= (and b!433490 (not condMapEmpty!18663)) mapNonEmpty!18663))

(get-info :version)

(assert (= (and mapNonEmpty!18663 ((_ is ValueCellFull!5337) mapValue!18663)) b!433487))

(assert (= (and b!433490 ((_ is ValueCellFull!5337) mapDefault!18663)) b!433500))

(assert (= start!39950 b!433490))

(declare-fun b_lambda!9327 () Bool)

(assert (=> (not b_lambda!9327) (not b!433492)))

(declare-fun t!13214 () Bool)

(declare-fun tb!3623 () Bool)

(assert (=> (and start!39950 (= defaultEntry!557 defaultEntry!557) t!13214) tb!3623))

(declare-fun result!6765 () Bool)

(assert (=> tb!3623 (= result!6765 tp_is_empty!11361)))

(assert (=> b!433492 t!13214))

(declare-fun b_and!18097 () Bool)

(assert (= b_and!18095 (and (=> t!13214 result!6765) b_and!18097)))

(declare-fun m!421523 () Bool)

(assert (=> b!433488 m!421523))

(declare-fun m!421525 () Bool)

(assert (=> b!433502 m!421525))

(declare-fun m!421527 () Bool)

(assert (=> b!433502 m!421527))

(declare-fun m!421529 () Bool)

(assert (=> b!433498 m!421529))

(declare-fun m!421531 () Bool)

(assert (=> b!433498 m!421531))

(declare-fun m!421533 () Bool)

(assert (=> b!433498 m!421533))

(declare-fun m!421535 () Bool)

(assert (=> b!433491 m!421535))

(declare-fun m!421537 () Bool)

(assert (=> b!433495 m!421537))

(declare-fun m!421539 () Bool)

(assert (=> b!433493 m!421539))

(declare-fun m!421541 () Bool)

(assert (=> start!39950 m!421541))

(declare-fun m!421543 () Bool)

(assert (=> start!39950 m!421543))

(declare-fun m!421545 () Bool)

(assert (=> b!433489 m!421545))

(assert (=> b!433489 m!421545))

(declare-fun m!421547 () Bool)

(assert (=> b!433489 m!421547))

(declare-fun m!421549 () Bool)

(assert (=> b!433489 m!421549))

(assert (=> b!433489 m!421549))

(declare-fun m!421551 () Bool)

(assert (=> b!433489 m!421551))

(declare-fun m!421553 () Bool)

(assert (=> b!433496 m!421553))

(declare-fun m!421555 () Bool)

(assert (=> b!433485 m!421555))

(declare-fun m!421557 () Bool)

(assert (=> mapNonEmpty!18663 m!421557))

(declare-fun m!421559 () Bool)

(assert (=> b!433497 m!421559))

(declare-fun m!421561 () Bool)

(assert (=> b!433504 m!421561))

(assert (=> b!433492 m!421549))

(declare-fun m!421563 () Bool)

(assert (=> b!433492 m!421563))

(declare-fun m!421565 () Bool)

(assert (=> b!433492 m!421565))

(declare-fun m!421567 () Bool)

(assert (=> b!433492 m!421567))

(assert (=> b!433492 m!421565))

(assert (=> b!433492 m!421563))

(declare-fun m!421569 () Bool)

(assert (=> b!433492 m!421569))

(assert (=> b!433494 m!421549))

(declare-fun m!421571 () Bool)

(assert (=> b!433494 m!421571))

(declare-fun m!421573 () Bool)

(assert (=> b!433494 m!421573))

(declare-fun m!421575 () Bool)

(assert (=> b!433494 m!421575))

(assert (=> b!433494 m!421549))

(declare-fun m!421577 () Bool)

(assert (=> b!433494 m!421577))

(declare-fun m!421579 () Bool)

(assert (=> b!433494 m!421579))

(check-sat (not mapNonEmpty!18663) (not b_next!10209) (not b!433494) (not b!433492) (not b!433488) (not b!433485) (not b!433495) (not b!433493) (not b!433491) (not b!433497) (not b_lambda!9327) (not b!433489) tp_is_empty!11361 b_and!18097 (not start!39950) (not b!433498) (not b!433502) (not b!433504))
(check-sat b_and!18097 (not b_next!10209))
