; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40010 () Bool)

(assert start!40010)

(declare-fun b_free!10269 () Bool)

(declare-fun b_next!10269 () Bool)

(assert (=> start!40010 (= b_free!10269 (not b_next!10269))))

(declare-fun tp!36336 () Bool)

(declare-fun b_and!18215 () Bool)

(assert (=> start!40010 (= tp!36336 b_and!18215)))

(declare-fun b!435345 () Bool)

(declare-fun res!256587 () Bool)

(declare-fun e!257192 () Bool)

(assert (=> b!435345 (=> (not res!256587) (not e!257192))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!435345 (= res!256587 (bvsle from!863 i!563))))

(declare-fun b!435346 () Bool)

(declare-fun e!257185 () Bool)

(declare-fun e!257191 () Bool)

(assert (=> b!435346 (= e!257185 (not e!257191))))

(declare-fun res!256588 () Bool)

(assert (=> b!435346 (=> res!256588 e!257191)))

(declare-datatypes ((array!26645 0))(
  ( (array!26646 (arr!12769 (Array (_ BitVec 32) (_ BitVec 64))) (size!13121 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26645)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!435346 (= res!256588 (not (validKeyInArray!0 (select (arr!12769 _keys!709) from!863))))))

(declare-datatypes ((V!16333 0))(
  ( (V!16334 (val!5755 Int)) )
))
(declare-datatypes ((tuple2!7552 0))(
  ( (tuple2!7553 (_1!3786 (_ BitVec 64)) (_2!3786 V!16333)) )
))
(declare-datatypes ((List!7597 0))(
  ( (Nil!7594) (Cons!7593 (h!8449 tuple2!7552) (t!13323 List!7597)) )
))
(declare-datatypes ((ListLongMap!6479 0))(
  ( (ListLongMap!6480 (toList!3255 List!7597)) )
))
(declare-fun lt!200520 () ListLongMap!6479)

(declare-fun lt!200523 () ListLongMap!6479)

(assert (=> b!435346 (= lt!200520 lt!200523)))

(declare-fun lt!200525 () ListLongMap!6479)

(declare-fun lt!200524 () tuple2!7552)

(declare-fun +!1400 (ListLongMap!6479 tuple2!7552) ListLongMap!6479)

(assert (=> b!435346 (= lt!200523 (+!1400 lt!200525 lt!200524))))

(declare-fun minValue!515 () V!16333)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16333)

(declare-datatypes ((ValueCell!5367 0))(
  ( (ValueCellFull!5367 (v!7998 V!16333)) (EmptyCell!5367) )
))
(declare-datatypes ((array!26647 0))(
  ( (array!26648 (arr!12770 (Array (_ BitVec 32) ValueCell!5367)) (size!13122 (_ BitVec 32))) )
))
(declare-fun lt!200522 () array!26647)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!200532 () array!26645)

(declare-fun getCurrentListMapNoExtraKeys!1439 (array!26645 array!26647 (_ BitVec 32) (_ BitVec 32) V!16333 V!16333 (_ BitVec 32) Int) ListLongMap!6479)

(assert (=> b!435346 (= lt!200520 (getCurrentListMapNoExtraKeys!1439 lt!200532 lt!200522 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!16333)

(assert (=> b!435346 (= lt!200524 (tuple2!7553 k0!794 v!412))))

(declare-fun _values!549 () array!26647)

(assert (=> b!435346 (= lt!200525 (getCurrentListMapNoExtraKeys!1439 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12887 0))(
  ( (Unit!12888) )
))
(declare-fun lt!200519 () Unit!12887)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!580 (array!26645 array!26647 (_ BitVec 32) (_ BitVec 32) V!16333 V!16333 (_ BitVec 32) (_ BitVec 64) V!16333 (_ BitVec 32) Int) Unit!12887)

(assert (=> b!435346 (= lt!200519 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!580 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!435347 () Bool)

(declare-fun e!257189 () Unit!12887)

(declare-fun Unit!12889 () Unit!12887)

(assert (=> b!435347 (= e!257189 Unit!12889)))

(declare-fun b!435349 () Bool)

(declare-fun res!256580 () Bool)

(declare-fun e!257193 () Bool)

(assert (=> b!435349 (=> (not res!256580) (not e!257193))))

(assert (=> b!435349 (= res!256580 (and (= (size!13122 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13121 _keys!709) (size!13122 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!435350 () Bool)

(declare-fun e!257194 () Bool)

(assert (=> b!435350 (= e!257194 true)))

(declare-fun lt!200529 () tuple2!7552)

(declare-fun lt!200528 () ListLongMap!6479)

(assert (=> b!435350 (= lt!200528 (+!1400 (+!1400 lt!200525 lt!200529) lt!200524))))

(declare-fun lt!200526 () V!16333)

(declare-fun lt!200530 () Unit!12887)

(declare-fun addCommutativeForDiffKeys!405 (ListLongMap!6479 (_ BitVec 64) V!16333 (_ BitVec 64) V!16333) Unit!12887)

(assert (=> b!435350 (= lt!200530 (addCommutativeForDiffKeys!405 lt!200525 k0!794 v!412 (select (arr!12769 _keys!709) from!863) lt!200526))))

(declare-fun mapIsEmpty!18753 () Bool)

(declare-fun mapRes!18753 () Bool)

(assert (=> mapIsEmpty!18753 mapRes!18753))

(declare-fun b!435351 () Bool)

(declare-fun res!256583 () Bool)

(assert (=> b!435351 (=> (not res!256583) (not e!257193))))

(assert (=> b!435351 (= res!256583 (or (= (select (arr!12769 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12769 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!435352 () Bool)

(declare-fun res!256586 () Bool)

(assert (=> b!435352 (=> (not res!256586) (not e!257193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!435352 (= res!256586 (validMask!0 mask!1025))))

(declare-fun b!435353 () Bool)

(assert (=> b!435353 (= e!257192 e!257185)))

(declare-fun res!256585 () Bool)

(assert (=> b!435353 (=> (not res!256585) (not e!257185))))

(assert (=> b!435353 (= res!256585 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!200521 () ListLongMap!6479)

(assert (=> b!435353 (= lt!200521 (getCurrentListMapNoExtraKeys!1439 lt!200532 lt!200522 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!435353 (= lt!200522 (array!26648 (store (arr!12770 _values!549) i!563 (ValueCellFull!5367 v!412)) (size!13122 _values!549)))))

(declare-fun lt!200518 () ListLongMap!6479)

(assert (=> b!435353 (= lt!200518 (getCurrentListMapNoExtraKeys!1439 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!435354 () Bool)

(declare-fun res!256581 () Bool)

(assert (=> b!435354 (=> (not res!256581) (not e!257192))))

(declare-datatypes ((List!7598 0))(
  ( (Nil!7595) (Cons!7594 (h!8450 (_ BitVec 64)) (t!13324 List!7598)) )
))
(declare-fun arrayNoDuplicates!0 (array!26645 (_ BitVec 32) List!7598) Bool)

(assert (=> b!435354 (= res!256581 (arrayNoDuplicates!0 lt!200532 #b00000000000000000000000000000000 Nil!7595))))

(declare-fun b!435355 () Bool)

(declare-fun e!257186 () Bool)

(declare-fun tp_is_empty!11421 () Bool)

(assert (=> b!435355 (= e!257186 tp_is_empty!11421)))

(declare-fun b!435356 () Bool)

(declare-fun res!256577 () Bool)

(assert (=> b!435356 (=> (not res!256577) (not e!257193))))

(assert (=> b!435356 (= res!256577 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7595))))

(declare-fun b!435357 () Bool)

(declare-fun e!257190 () Bool)

(assert (=> b!435357 (= e!257190 tp_is_empty!11421)))

(declare-fun b!435358 () Bool)

(declare-fun res!256582 () Bool)

(assert (=> b!435358 (=> (not res!256582) (not e!257193))))

(declare-fun arrayContainsKey!0 (array!26645 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!435358 (= res!256582 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18753 () Bool)

(declare-fun tp!36335 () Bool)

(assert (=> mapNonEmpty!18753 (= mapRes!18753 (and tp!36335 e!257190))))

(declare-fun mapRest!18753 () (Array (_ BitVec 32) ValueCell!5367))

(declare-fun mapValue!18753 () ValueCell!5367)

(declare-fun mapKey!18753 () (_ BitVec 32))

(assert (=> mapNonEmpty!18753 (= (arr!12770 _values!549) (store mapRest!18753 mapKey!18753 mapValue!18753))))

(declare-fun b!435359 () Bool)

(assert (=> b!435359 (= e!257193 e!257192)))

(declare-fun res!256584 () Bool)

(assert (=> b!435359 (=> (not res!256584) (not e!257192))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26645 (_ BitVec 32)) Bool)

(assert (=> b!435359 (= res!256584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!200532 mask!1025))))

(assert (=> b!435359 (= lt!200532 (array!26646 (store (arr!12769 _keys!709) i!563 k0!794) (size!13121 _keys!709)))))

(declare-fun b!435360 () Bool)

(assert (=> b!435360 (= e!257191 e!257194)))

(declare-fun res!256579 () Bool)

(assert (=> b!435360 (=> res!256579 e!257194)))

(assert (=> b!435360 (= res!256579 (= k0!794 (select (arr!12769 _keys!709) from!863)))))

(assert (=> b!435360 (not (= (select (arr!12769 _keys!709) from!863) k0!794))))

(declare-fun lt!200527 () Unit!12887)

(assert (=> b!435360 (= lt!200527 e!257189)))

(declare-fun c!55664 () Bool)

(assert (=> b!435360 (= c!55664 (= (select (arr!12769 _keys!709) from!863) k0!794))))

(assert (=> b!435360 (= lt!200521 lt!200528)))

(assert (=> b!435360 (= lt!200528 (+!1400 lt!200523 lt!200529))))

(assert (=> b!435360 (= lt!200529 (tuple2!7553 (select (arr!12769 _keys!709) from!863) lt!200526))))

(declare-fun get!6371 (ValueCell!5367 V!16333) V!16333)

(declare-fun dynLambda!828 (Int (_ BitVec 64)) V!16333)

(assert (=> b!435360 (= lt!200526 (get!6371 (select (arr!12770 _values!549) from!863) (dynLambda!828 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!435361 () Bool)

(declare-fun res!256589 () Bool)

(assert (=> b!435361 (=> (not res!256589) (not e!257193))))

(assert (=> b!435361 (= res!256589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!435362 () Bool)

(declare-fun res!256576 () Bool)

(assert (=> b!435362 (=> (not res!256576) (not e!257193))))

(assert (=> b!435362 (= res!256576 (validKeyInArray!0 k0!794))))

(declare-fun b!435363 () Bool)

(declare-fun res!256578 () Bool)

(assert (=> b!435363 (=> (not res!256578) (not e!257193))))

(assert (=> b!435363 (= res!256578 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13121 _keys!709))))))

(declare-fun b!435364 () Bool)

(declare-fun e!257187 () Bool)

(assert (=> b!435364 (= e!257187 (and e!257186 mapRes!18753))))

(declare-fun condMapEmpty!18753 () Bool)

(declare-fun mapDefault!18753 () ValueCell!5367)

(assert (=> b!435364 (= condMapEmpty!18753 (= (arr!12770 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5367)) mapDefault!18753)))))

(declare-fun b!435348 () Bool)

(declare-fun Unit!12890 () Unit!12887)

(assert (=> b!435348 (= e!257189 Unit!12890)))

(declare-fun lt!200531 () Unit!12887)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26645 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12887)

(assert (=> b!435348 (= lt!200531 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!435348 false))

(declare-fun res!256590 () Bool)

(assert (=> start!40010 (=> (not res!256590) (not e!257193))))

(assert (=> start!40010 (= res!256590 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13121 _keys!709))))))

(assert (=> start!40010 e!257193))

(assert (=> start!40010 tp_is_empty!11421))

(assert (=> start!40010 tp!36336))

(assert (=> start!40010 true))

(declare-fun array_inv!9278 (array!26647) Bool)

(assert (=> start!40010 (and (array_inv!9278 _values!549) e!257187)))

(declare-fun array_inv!9279 (array!26645) Bool)

(assert (=> start!40010 (array_inv!9279 _keys!709)))

(assert (= (and start!40010 res!256590) b!435352))

(assert (= (and b!435352 res!256586) b!435349))

(assert (= (and b!435349 res!256580) b!435361))

(assert (= (and b!435361 res!256589) b!435356))

(assert (= (and b!435356 res!256577) b!435363))

(assert (= (and b!435363 res!256578) b!435362))

(assert (= (and b!435362 res!256576) b!435351))

(assert (= (and b!435351 res!256583) b!435358))

(assert (= (and b!435358 res!256582) b!435359))

(assert (= (and b!435359 res!256584) b!435354))

(assert (= (and b!435354 res!256581) b!435345))

(assert (= (and b!435345 res!256587) b!435353))

(assert (= (and b!435353 res!256585) b!435346))

(assert (= (and b!435346 (not res!256588)) b!435360))

(assert (= (and b!435360 c!55664) b!435348))

(assert (= (and b!435360 (not c!55664)) b!435347))

(assert (= (and b!435360 (not res!256579)) b!435350))

(assert (= (and b!435364 condMapEmpty!18753) mapIsEmpty!18753))

(assert (= (and b!435364 (not condMapEmpty!18753)) mapNonEmpty!18753))

(get-info :version)

(assert (= (and mapNonEmpty!18753 ((_ is ValueCellFull!5367) mapValue!18753)) b!435357))

(assert (= (and b!435364 ((_ is ValueCellFull!5367) mapDefault!18753)) b!435355))

(assert (= start!40010 b!435364))

(declare-fun b_lambda!9387 () Bool)

(assert (=> (not b_lambda!9387) (not b!435360)))

(declare-fun t!13322 () Bool)

(declare-fun tb!3683 () Bool)

(assert (=> (and start!40010 (= defaultEntry!557 defaultEntry!557) t!13322) tb!3683))

(declare-fun result!6885 () Bool)

(assert (=> tb!3683 (= result!6885 tp_is_empty!11421)))

(assert (=> b!435360 t!13322))

(declare-fun b_and!18217 () Bool)

(assert (= b_and!18215 (and (=> t!13322 result!6885) b_and!18217)))

(declare-fun m!423263 () Bool)

(assert (=> b!435359 m!423263))

(declare-fun m!423265 () Bool)

(assert (=> b!435359 m!423265))

(declare-fun m!423267 () Bool)

(assert (=> b!435350 m!423267))

(assert (=> b!435350 m!423267))

(declare-fun m!423269 () Bool)

(assert (=> b!435350 m!423269))

(declare-fun m!423271 () Bool)

(assert (=> b!435350 m!423271))

(assert (=> b!435350 m!423271))

(declare-fun m!423273 () Bool)

(assert (=> b!435350 m!423273))

(assert (=> b!435346 m!423271))

(declare-fun m!423275 () Bool)

(assert (=> b!435346 m!423275))

(assert (=> b!435346 m!423271))

(declare-fun m!423277 () Bool)

(assert (=> b!435346 m!423277))

(declare-fun m!423279 () Bool)

(assert (=> b!435346 m!423279))

(declare-fun m!423281 () Bool)

(assert (=> b!435346 m!423281))

(declare-fun m!423283 () Bool)

(assert (=> b!435346 m!423283))

(declare-fun m!423285 () Bool)

(assert (=> b!435362 m!423285))

(declare-fun m!423287 () Bool)

(assert (=> b!435354 m!423287))

(declare-fun m!423289 () Bool)

(assert (=> b!435361 m!423289))

(declare-fun m!423291 () Bool)

(assert (=> start!40010 m!423291))

(declare-fun m!423293 () Bool)

(assert (=> start!40010 m!423293))

(declare-fun m!423295 () Bool)

(assert (=> b!435353 m!423295))

(declare-fun m!423297 () Bool)

(assert (=> b!435353 m!423297))

(declare-fun m!423299 () Bool)

(assert (=> b!435353 m!423299))

(declare-fun m!423301 () Bool)

(assert (=> b!435348 m!423301))

(declare-fun m!423303 () Bool)

(assert (=> b!435351 m!423303))

(declare-fun m!423305 () Bool)

(assert (=> b!435358 m!423305))

(declare-fun m!423307 () Bool)

(assert (=> b!435356 m!423307))

(assert (=> b!435360 m!423271))

(declare-fun m!423309 () Bool)

(assert (=> b!435360 m!423309))

(declare-fun m!423311 () Bool)

(assert (=> b!435360 m!423311))

(declare-fun m!423313 () Bool)

(assert (=> b!435360 m!423313))

(assert (=> b!435360 m!423311))

(assert (=> b!435360 m!423309))

(declare-fun m!423315 () Bool)

(assert (=> b!435360 m!423315))

(declare-fun m!423317 () Bool)

(assert (=> b!435352 m!423317))

(declare-fun m!423319 () Bool)

(assert (=> mapNonEmpty!18753 m!423319))

(check-sat (not b!435353) (not b!435358) (not b!435359) (not start!40010) b_and!18217 (not b!435360) (not b_lambda!9387) (not b!435346) (not b!435362) (not b!435352) (not b_next!10269) (not b!435354) (not b!435361) (not b!435348) tp_is_empty!11421 (not b!435356) (not mapNonEmpty!18753) (not b!435350))
(check-sat b_and!18217 (not b_next!10269))
