; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39944 () Bool)

(assert start!39944)

(declare-fun b_free!10203 () Bool)

(declare-fun b_next!10203 () Bool)

(assert (=> start!39944 (= b_free!10203 (not b_next!10203))))

(declare-fun tp!36138 () Bool)

(declare-fun b_and!18083 () Bool)

(assert (=> start!39944 (= tp!36138 b_and!18083)))

(declare-fun b!433299 () Bool)

(declare-fun e!256203 () Bool)

(assert (=> b!433299 (= e!256203 true)))

(declare-datatypes ((V!16245 0))(
  ( (V!16246 (val!5722 Int)) )
))
(declare-datatypes ((tuple2!7496 0))(
  ( (tuple2!7497 (_1!3758 (_ BitVec 64)) (_2!3758 V!16245)) )
))
(declare-datatypes ((List!7545 0))(
  ( (Nil!7542) (Cons!7541 (h!8397 tuple2!7496) (t!13205 List!7545)) )
))
(declare-datatypes ((ListLongMap!6423 0))(
  ( (ListLongMap!6424 (toList!3227 List!7545)) )
))
(declare-fun lt!199035 () ListLongMap!6423)

(declare-fun lt!199036 () tuple2!7496)

(declare-fun lt!199037 () ListLongMap!6423)

(declare-fun lt!199042 () tuple2!7496)

(declare-fun +!1373 (ListLongMap!6423 tuple2!7496) ListLongMap!6423)

(assert (=> b!433299 (= lt!199037 (+!1373 (+!1373 lt!199035 lt!199042) lt!199036))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12784 0))(
  ( (Unit!12785) )
))
(declare-fun lt!199033 () Unit!12784)

(declare-datatypes ((array!26519 0))(
  ( (array!26520 (arr!12706 (Array (_ BitVec 32) (_ BitVec 64))) (size!13058 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26519)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!199047 () V!16245)

(declare-fun v!412 () V!16245)

(declare-fun addCommutativeForDiffKeys!383 (ListLongMap!6423 (_ BitVec 64) V!16245 (_ BitVec 64) V!16245) Unit!12784)

(assert (=> b!433299 (= lt!199033 (addCommutativeForDiffKeys!383 lt!199035 k0!794 v!412 (select (arr!12706 _keys!709) from!863) lt!199047))))

(declare-fun b!433300 () Bool)

(declare-fun res!255102 () Bool)

(declare-fun e!256195 () Bool)

(assert (=> b!433300 (=> (not res!255102) (not e!256195))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!433300 (= res!255102 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13058 _keys!709))))))

(declare-fun b!433301 () Bool)

(declare-fun e!256199 () Bool)

(assert (=> b!433301 (= e!256195 e!256199)))

(declare-fun res!255093 () Bool)

(assert (=> b!433301 (=> (not res!255093) (not e!256199))))

(declare-fun lt!199045 () array!26519)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26519 (_ BitVec 32)) Bool)

(assert (=> b!433301 (= res!255093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!199045 mask!1025))))

(assert (=> b!433301 (= lt!199045 (array!26520 (store (arr!12706 _keys!709) i!563 k0!794) (size!13058 _keys!709)))))

(declare-fun b!433302 () Bool)

(declare-fun e!256198 () Bool)

(assert (=> b!433302 (= e!256198 e!256203)))

(declare-fun res!255094 () Bool)

(assert (=> b!433302 (=> res!255094 e!256203)))

(assert (=> b!433302 (= res!255094 (= k0!794 (select (arr!12706 _keys!709) from!863)))))

(assert (=> b!433302 (not (= (select (arr!12706 _keys!709) from!863) k0!794))))

(declare-fun lt!199041 () Unit!12784)

(declare-fun e!256202 () Unit!12784)

(assert (=> b!433302 (= lt!199041 e!256202)))

(declare-fun c!55565 () Bool)

(assert (=> b!433302 (= c!55565 (= (select (arr!12706 _keys!709) from!863) k0!794))))

(declare-fun lt!199039 () ListLongMap!6423)

(assert (=> b!433302 (= lt!199039 lt!199037)))

(declare-fun lt!199034 () ListLongMap!6423)

(assert (=> b!433302 (= lt!199037 (+!1373 lt!199034 lt!199042))))

(assert (=> b!433302 (= lt!199042 (tuple2!7497 (select (arr!12706 _keys!709) from!863) lt!199047))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5334 0))(
  ( (ValueCellFull!5334 (v!7965 V!16245)) (EmptyCell!5334) )
))
(declare-datatypes ((array!26521 0))(
  ( (array!26522 (arr!12707 (Array (_ BitVec 32) ValueCell!5334)) (size!13059 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26521)

(declare-fun get!6327 (ValueCell!5334 V!16245) V!16245)

(declare-fun dynLambda!806 (Int (_ BitVec 64)) V!16245)

(assert (=> b!433302 (= lt!199047 (get!6327 (select (arr!12707 _values!549) from!863) (dynLambda!806 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18654 () Bool)

(declare-fun mapRes!18654 () Bool)

(assert (=> mapIsEmpty!18654 mapRes!18654))

(declare-fun b!433303 () Bool)

(declare-fun e!256197 () Bool)

(declare-fun tp_is_empty!11355 () Bool)

(assert (=> b!433303 (= e!256197 tp_is_empty!11355)))

(declare-fun b!433304 () Bool)

(declare-fun res!255100 () Bool)

(assert (=> b!433304 (=> (not res!255100) (not e!256195))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!433304 (= res!255100 (validKeyInArray!0 k0!794))))

(declare-fun b!433305 () Bool)

(declare-fun e!256204 () Bool)

(assert (=> b!433305 (= e!256204 (not e!256198))))

(declare-fun res!255091 () Bool)

(assert (=> b!433305 (=> res!255091 e!256198)))

(assert (=> b!433305 (= res!255091 (not (validKeyInArray!0 (select (arr!12706 _keys!709) from!863))))))

(declare-fun lt!199046 () ListLongMap!6423)

(assert (=> b!433305 (= lt!199046 lt!199034)))

(assert (=> b!433305 (= lt!199034 (+!1373 lt!199035 lt!199036))))

(declare-fun minValue!515 () V!16245)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16245)

(declare-fun lt!199038 () array!26521)

(declare-fun getCurrentListMapNoExtraKeys!1416 (array!26519 array!26521 (_ BitVec 32) (_ BitVec 32) V!16245 V!16245 (_ BitVec 32) Int) ListLongMap!6423)

(assert (=> b!433305 (= lt!199046 (getCurrentListMapNoExtraKeys!1416 lt!199045 lt!199038 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!433305 (= lt!199036 (tuple2!7497 k0!794 v!412))))

(assert (=> b!433305 (= lt!199035 (getCurrentListMapNoExtraKeys!1416 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!199040 () Unit!12784)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!560 (array!26519 array!26521 (_ BitVec 32) (_ BitVec 32) V!16245 V!16245 (_ BitVec 32) (_ BitVec 64) V!16245 (_ BitVec 32) Int) Unit!12784)

(assert (=> b!433305 (= lt!199040 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!560 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!18654 () Bool)

(declare-fun tp!36137 () Bool)

(declare-fun e!256201 () Bool)

(assert (=> mapNonEmpty!18654 (= mapRes!18654 (and tp!36137 e!256201))))

(declare-fun mapValue!18654 () ValueCell!5334)

(declare-fun mapKey!18654 () (_ BitVec 32))

(declare-fun mapRest!18654 () (Array (_ BitVec 32) ValueCell!5334))

(assert (=> mapNonEmpty!18654 (= (arr!12707 _values!549) (store mapRest!18654 mapKey!18654 mapValue!18654))))

(declare-fun b!433306 () Bool)

(declare-fun res!255101 () Bool)

(assert (=> b!433306 (=> (not res!255101) (not e!256195))))

(assert (=> b!433306 (= res!255101 (or (= (select (arr!12706 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12706 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433307 () Bool)

(declare-fun Unit!12786 () Unit!12784)

(assert (=> b!433307 (= e!256202 Unit!12786)))

(declare-fun lt!199044 () Unit!12784)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26519 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12784)

(assert (=> b!433307 (= lt!199044 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!433307 false))

(declare-fun b!433308 () Bool)

(declare-fun res!255096 () Bool)

(assert (=> b!433308 (=> (not res!255096) (not e!256199))))

(declare-datatypes ((List!7546 0))(
  ( (Nil!7543) (Cons!7542 (h!8398 (_ BitVec 64)) (t!13206 List!7546)) )
))
(declare-fun arrayNoDuplicates!0 (array!26519 (_ BitVec 32) List!7546) Bool)

(assert (=> b!433308 (= res!255096 (arrayNoDuplicates!0 lt!199045 #b00000000000000000000000000000000 Nil!7543))))

(declare-fun b!433309 () Bool)

(assert (=> b!433309 (= e!256201 tp_is_empty!11355)))

(declare-fun b!433310 () Bool)

(declare-fun e!256200 () Bool)

(assert (=> b!433310 (= e!256200 (and e!256197 mapRes!18654))))

(declare-fun condMapEmpty!18654 () Bool)

(declare-fun mapDefault!18654 () ValueCell!5334)

(assert (=> b!433310 (= condMapEmpty!18654 (= (arr!12707 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5334)) mapDefault!18654)))))

(declare-fun res!255104 () Bool)

(assert (=> start!39944 (=> (not res!255104) (not e!256195))))

(assert (=> start!39944 (= res!255104 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13058 _keys!709))))))

(assert (=> start!39944 e!256195))

(assert (=> start!39944 tp_is_empty!11355))

(assert (=> start!39944 tp!36138))

(assert (=> start!39944 true))

(declare-fun array_inv!9236 (array!26521) Bool)

(assert (=> start!39944 (and (array_inv!9236 _values!549) e!256200)))

(declare-fun array_inv!9237 (array!26519) Bool)

(assert (=> start!39944 (array_inv!9237 _keys!709)))

(declare-fun b!433311 () Bool)

(declare-fun res!255105 () Bool)

(assert (=> b!433311 (=> (not res!255105) (not e!256195))))

(assert (=> b!433311 (= res!255105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!433312 () Bool)

(assert (=> b!433312 (= e!256199 e!256204)))

(declare-fun res!255097 () Bool)

(assert (=> b!433312 (=> (not res!255097) (not e!256204))))

(assert (=> b!433312 (= res!255097 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!433312 (= lt!199039 (getCurrentListMapNoExtraKeys!1416 lt!199045 lt!199038 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!433312 (= lt!199038 (array!26522 (store (arr!12707 _values!549) i!563 (ValueCellFull!5334 v!412)) (size!13059 _values!549)))))

(declare-fun lt!199043 () ListLongMap!6423)

(assert (=> b!433312 (= lt!199043 (getCurrentListMapNoExtraKeys!1416 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!433313 () Bool)

(declare-fun res!255095 () Bool)

(assert (=> b!433313 (=> (not res!255095) (not e!256195))))

(declare-fun arrayContainsKey!0 (array!26519 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!433313 (= res!255095 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!433314 () Bool)

(declare-fun res!255092 () Bool)

(assert (=> b!433314 (=> (not res!255092) (not e!256195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!433314 (= res!255092 (validMask!0 mask!1025))))

(declare-fun b!433315 () Bool)

(declare-fun res!255099 () Bool)

(assert (=> b!433315 (=> (not res!255099) (not e!256195))))

(assert (=> b!433315 (= res!255099 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7543))))

(declare-fun b!433316 () Bool)

(declare-fun Unit!12787 () Unit!12784)

(assert (=> b!433316 (= e!256202 Unit!12787)))

(declare-fun b!433317 () Bool)

(declare-fun res!255098 () Bool)

(assert (=> b!433317 (=> (not res!255098) (not e!256195))))

(assert (=> b!433317 (= res!255098 (and (= (size!13059 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13058 _keys!709) (size!13059 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!433318 () Bool)

(declare-fun res!255103 () Bool)

(assert (=> b!433318 (=> (not res!255103) (not e!256199))))

(assert (=> b!433318 (= res!255103 (bvsle from!863 i!563))))

(assert (= (and start!39944 res!255104) b!433314))

(assert (= (and b!433314 res!255092) b!433317))

(assert (= (and b!433317 res!255098) b!433311))

(assert (= (and b!433311 res!255105) b!433315))

(assert (= (and b!433315 res!255099) b!433300))

(assert (= (and b!433300 res!255102) b!433304))

(assert (= (and b!433304 res!255100) b!433306))

(assert (= (and b!433306 res!255101) b!433313))

(assert (= (and b!433313 res!255095) b!433301))

(assert (= (and b!433301 res!255093) b!433308))

(assert (= (and b!433308 res!255096) b!433318))

(assert (= (and b!433318 res!255103) b!433312))

(assert (= (and b!433312 res!255097) b!433305))

(assert (= (and b!433305 (not res!255091)) b!433302))

(assert (= (and b!433302 c!55565) b!433307))

(assert (= (and b!433302 (not c!55565)) b!433316))

(assert (= (and b!433302 (not res!255094)) b!433299))

(assert (= (and b!433310 condMapEmpty!18654) mapIsEmpty!18654))

(assert (= (and b!433310 (not condMapEmpty!18654)) mapNonEmpty!18654))

(get-info :version)

(assert (= (and mapNonEmpty!18654 ((_ is ValueCellFull!5334) mapValue!18654)) b!433309))

(assert (= (and b!433310 ((_ is ValueCellFull!5334) mapDefault!18654)) b!433303))

(assert (= start!39944 b!433310))

(declare-fun b_lambda!9321 () Bool)

(assert (=> (not b_lambda!9321) (not b!433302)))

(declare-fun t!13204 () Bool)

(declare-fun tb!3617 () Bool)

(assert (=> (and start!39944 (= defaultEntry!557 defaultEntry!557) t!13204) tb!3617))

(declare-fun result!6753 () Bool)

(assert (=> tb!3617 (= result!6753 tp_is_empty!11355)))

(assert (=> b!433302 t!13204))

(declare-fun b_and!18085 () Bool)

(assert (= b_and!18083 (and (=> t!13204 result!6753) b_and!18085)))

(declare-fun m!421349 () Bool)

(assert (=> b!433304 m!421349))

(declare-fun m!421351 () Bool)

(assert (=> b!433305 m!421351))

(declare-fun m!421353 () Bool)

(assert (=> b!433305 m!421353))

(declare-fun m!421355 () Bool)

(assert (=> b!433305 m!421355))

(assert (=> b!433305 m!421351))

(declare-fun m!421357 () Bool)

(assert (=> b!433305 m!421357))

(declare-fun m!421359 () Bool)

(assert (=> b!433305 m!421359))

(declare-fun m!421361 () Bool)

(assert (=> b!433305 m!421361))

(declare-fun m!421363 () Bool)

(assert (=> b!433315 m!421363))

(declare-fun m!421365 () Bool)

(assert (=> b!433307 m!421365))

(declare-fun m!421367 () Bool)

(assert (=> b!433301 m!421367))

(declare-fun m!421369 () Bool)

(assert (=> b!433301 m!421369))

(assert (=> b!433302 m!421351))

(declare-fun m!421371 () Bool)

(assert (=> b!433302 m!421371))

(declare-fun m!421373 () Bool)

(assert (=> b!433302 m!421373))

(declare-fun m!421375 () Bool)

(assert (=> b!433302 m!421375))

(assert (=> b!433302 m!421375))

(assert (=> b!433302 m!421373))

(declare-fun m!421377 () Bool)

(assert (=> b!433302 m!421377))

(declare-fun m!421379 () Bool)

(assert (=> b!433312 m!421379))

(declare-fun m!421381 () Bool)

(assert (=> b!433312 m!421381))

(declare-fun m!421383 () Bool)

(assert (=> b!433312 m!421383))

(declare-fun m!421385 () Bool)

(assert (=> b!433308 m!421385))

(declare-fun m!421387 () Bool)

(assert (=> mapNonEmpty!18654 m!421387))

(declare-fun m!421389 () Bool)

(assert (=> b!433306 m!421389))

(declare-fun m!421391 () Bool)

(assert (=> b!433313 m!421391))

(declare-fun m!421393 () Bool)

(assert (=> start!39944 m!421393))

(declare-fun m!421395 () Bool)

(assert (=> start!39944 m!421395))

(declare-fun m!421397 () Bool)

(assert (=> b!433314 m!421397))

(declare-fun m!421399 () Bool)

(assert (=> b!433299 m!421399))

(assert (=> b!433299 m!421399))

(declare-fun m!421401 () Bool)

(assert (=> b!433299 m!421401))

(assert (=> b!433299 m!421351))

(assert (=> b!433299 m!421351))

(declare-fun m!421403 () Bool)

(assert (=> b!433299 m!421403))

(declare-fun m!421405 () Bool)

(assert (=> b!433311 m!421405))

(check-sat (not b_lambda!9321) (not mapNonEmpty!18654) (not b!433312) (not b!433315) (not b!433302) (not b!433305) (not b!433314) (not start!39944) (not b!433308) tp_is_empty!11355 (not b!433313) (not b_next!10203) b_and!18085 (not b!433307) (not b!433301) (not b!433304) (not b!433311) (not b!433299))
(check-sat b_and!18085 (not b_next!10203))
