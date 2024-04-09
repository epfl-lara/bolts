; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43658 () Bool)

(assert start!43658)

(declare-fun b_free!12357 () Bool)

(declare-fun b_next!12357 () Bool)

(assert (=> start!43658 (= b_free!12357 (not b_next!12357))))

(declare-fun tp!43362 () Bool)

(declare-fun b_and!21141 () Bool)

(assert (=> start!43658 (= tp!43362 b_and!21141)))

(declare-fun b!483276 () Bool)

(declare-fun e!284411 () Bool)

(declare-fun e!284415 () Bool)

(declare-fun mapRes!22522 () Bool)

(assert (=> b!483276 (= e!284411 (and e!284415 mapRes!22522))))

(declare-fun condMapEmpty!22522 () Bool)

(declare-datatypes ((V!19563 0))(
  ( (V!19564 (val!6982 Int)) )
))
(declare-datatypes ((ValueCell!6573 0))(
  ( (ValueCellFull!6573 (v!9274 V!19563)) (EmptyCell!6573) )
))
(declare-datatypes ((array!31367 0))(
  ( (array!31368 (arr!15080 (Array (_ BitVec 32) ValueCell!6573)) (size!15438 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31367)

(declare-fun mapDefault!22522 () ValueCell!6573)

(assert (=> b!483276 (= condMapEmpty!22522 (= (arr!15080 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6573)) mapDefault!22522)))))

(declare-fun b!483277 () Bool)

(declare-fun e!284414 () Bool)

(declare-fun tp_is_empty!13869 () Bool)

(assert (=> b!483277 (= e!284414 tp_is_empty!13869)))

(declare-fun b!483278 () Bool)

(assert (=> b!483278 (= e!284415 tp_is_empty!13869)))

(declare-fun b!483279 () Bool)

(declare-fun res!288057 () Bool)

(declare-fun e!284416 () Bool)

(assert (=> b!483279 (=> (not res!288057) (not e!284416))))

(declare-datatypes ((array!31369 0))(
  ( (array!31370 (arr!15081 (Array (_ BitVec 32) (_ BitVec 64))) (size!15439 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31369)

(declare-datatypes ((List!9279 0))(
  ( (Nil!9276) (Cons!9275 (h!10131 (_ BitVec 64)) (t!15507 List!9279)) )
))
(declare-fun arrayNoDuplicates!0 (array!31369 (_ BitVec 32) List!9279) Bool)

(assert (=> b!483279 (= res!288057 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9276))))

(declare-fun b!483280 () Bool)

(declare-fun res!288050 () Bool)

(assert (=> b!483280 (=> (not res!288050) (not e!284416))))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun minValue!1458 () V!19563)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19563)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9162 0))(
  ( (tuple2!9163 (_1!4591 (_ BitVec 64)) (_2!4591 V!19563)) )
))
(declare-datatypes ((List!9280 0))(
  ( (Nil!9277) (Cons!9276 (h!10132 tuple2!9162) (t!15508 List!9280)) )
))
(declare-datatypes ((ListLongMap!8089 0))(
  ( (ListLongMap!8090 (toList!4060 List!9280)) )
))
(declare-fun contains!2674 (ListLongMap!8089 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2352 (array!31369 array!31367 (_ BitVec 32) (_ BitVec 32) V!19563 V!19563 (_ BitVec 32) Int) ListLongMap!8089)

(assert (=> b!483280 (= res!288050 (contains!2674 (getCurrentListMap!2352 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun res!288053 () Bool)

(assert (=> start!43658 (=> (not res!288053) (not e!284416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43658 (= res!288053 (validMask!0 mask!2352))))

(assert (=> start!43658 e!284416))

(assert (=> start!43658 true))

(assert (=> start!43658 tp_is_empty!13869))

(declare-fun array_inv!10854 (array!31367) Bool)

(assert (=> start!43658 (and (array_inv!10854 _values!1516) e!284411)))

(assert (=> start!43658 tp!43362))

(declare-fun array_inv!10855 (array!31369) Bool)

(assert (=> start!43658 (array_inv!10855 _keys!1874)))

(declare-fun b!483281 () Bool)

(declare-fun res!288055 () Bool)

(assert (=> b!483281 (=> (not res!288055) (not e!284416))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!483281 (= res!288055 (validKeyInArray!0 k0!1332))))

(declare-fun b!483282 () Bool)

(declare-fun res!288051 () Bool)

(assert (=> b!483282 (=> (not res!288051) (not e!284416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31369 (_ BitVec 32)) Bool)

(assert (=> b!483282 (= res!288051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-datatypes ((SeekEntryResult!3565 0))(
  ( (MissingZero!3565 (index!16439 (_ BitVec 32))) (Found!3565 (index!16440 (_ BitVec 32))) (Intermediate!3565 (undefined!4377 Bool) (index!16441 (_ BitVec 32)) (x!45382 (_ BitVec 32))) (Undefined!3565) (MissingVacant!3565 (index!16442 (_ BitVec 32))) )
))
(declare-fun lt!219117 () SeekEntryResult!3565)

(declare-fun b!483283 () Bool)

(declare-fun e!284412 () Bool)

(assert (=> b!483283 (= e!284412 (= (select (arr!15081 _keys!1874) (index!16440 lt!219117)) k0!1332))))

(declare-fun b!483284 () Bool)

(assert (=> b!483284 (= e!284416 (not e!284412))))

(declare-fun res!288056 () Bool)

(assert (=> b!483284 (=> (not res!288056) (not e!284412))))

(get-info :version)

(assert (=> b!483284 (= res!288056 ((_ is Found!3565) lt!219117))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31369 (_ BitVec 32)) SeekEntryResult!3565)

(assert (=> b!483284 (= lt!219117 (seekEntryOrOpen!0 k0!1332 _keys!1874 mask!2352))))

(declare-fun lt!219116 () (_ BitVec 32))

(assert (=> b!483284 (arrayForallSeekEntryOrOpenFound!0 lt!219116 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14138 0))(
  ( (Unit!14139) )
))
(declare-fun lt!219119 () Unit!14138)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31369 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14138)

(assert (=> b!483284 (= lt!219119 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!219116))))

(declare-fun arrayScanForKey!0 (array!31369 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!483284 (= lt!219116 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun e!284413 () Bool)

(assert (=> b!483284 e!284413))

(declare-fun c!58042 () Bool)

(assert (=> b!483284 (= c!58042 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!219118 () Unit!14138)

(declare-fun lemmaKeyInListMapIsInArray!155 (array!31369 array!31367 (_ BitVec 32) (_ BitVec 32) V!19563 V!19563 (_ BitVec 64) Int) Unit!14138)

(assert (=> b!483284 (= lt!219118 (lemmaKeyInListMapIsInArray!155 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun b!483285 () Bool)

(declare-fun res!288054 () Bool)

(assert (=> b!483285 (=> (not res!288054) (not e!284412))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!483285 (= res!288054 (inRange!0 (index!16440 lt!219117) mask!2352))))

(declare-fun b!483286 () Bool)

(declare-fun res!288052 () Bool)

(assert (=> b!483286 (=> (not res!288052) (not e!284416))))

(assert (=> b!483286 (= res!288052 (and (= (size!15438 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15439 _keys!1874) (size!15438 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!483287 () Bool)

(assert (=> b!483287 (= e!284413 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!483288 () Bool)

(declare-fun arrayContainsKey!0 (array!31369 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!483288 (= e!284413 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!22522 () Bool)

(declare-fun tp!43363 () Bool)

(assert (=> mapNonEmpty!22522 (= mapRes!22522 (and tp!43363 e!284414))))

(declare-fun mapKey!22522 () (_ BitVec 32))

(declare-fun mapValue!22522 () ValueCell!6573)

(declare-fun mapRest!22522 () (Array (_ BitVec 32) ValueCell!6573))

(assert (=> mapNonEmpty!22522 (= (arr!15080 _values!1516) (store mapRest!22522 mapKey!22522 mapValue!22522))))

(declare-fun mapIsEmpty!22522 () Bool)

(assert (=> mapIsEmpty!22522 mapRes!22522))

(assert (= (and start!43658 res!288053) b!483286))

(assert (= (and b!483286 res!288052) b!483282))

(assert (= (and b!483282 res!288051) b!483279))

(assert (= (and b!483279 res!288057) b!483280))

(assert (= (and b!483280 res!288050) b!483281))

(assert (= (and b!483281 res!288055) b!483284))

(assert (= (and b!483284 c!58042) b!483288))

(assert (= (and b!483284 (not c!58042)) b!483287))

(assert (= (and b!483284 res!288056) b!483285))

(assert (= (and b!483285 res!288054) b!483283))

(assert (= (and b!483276 condMapEmpty!22522) mapIsEmpty!22522))

(assert (= (and b!483276 (not condMapEmpty!22522)) mapNonEmpty!22522))

(assert (= (and mapNonEmpty!22522 ((_ is ValueCellFull!6573) mapValue!22522)) b!483277))

(assert (= (and b!483276 ((_ is ValueCellFull!6573) mapDefault!22522)) b!483278))

(assert (= start!43658 b!483276))

(declare-fun m!464289 () Bool)

(assert (=> start!43658 m!464289))

(declare-fun m!464291 () Bool)

(assert (=> start!43658 m!464291))

(declare-fun m!464293 () Bool)

(assert (=> start!43658 m!464293))

(declare-fun m!464295 () Bool)

(assert (=> b!483279 m!464295))

(declare-fun m!464297 () Bool)

(assert (=> b!483283 m!464297))

(declare-fun m!464299 () Bool)

(assert (=> b!483284 m!464299))

(declare-fun m!464301 () Bool)

(assert (=> b!483284 m!464301))

(declare-fun m!464303 () Bool)

(assert (=> b!483284 m!464303))

(declare-fun m!464305 () Bool)

(assert (=> b!483284 m!464305))

(declare-fun m!464307 () Bool)

(assert (=> b!483284 m!464307))

(declare-fun m!464309 () Bool)

(assert (=> b!483288 m!464309))

(declare-fun m!464311 () Bool)

(assert (=> b!483282 m!464311))

(declare-fun m!464313 () Bool)

(assert (=> b!483281 m!464313))

(declare-fun m!464315 () Bool)

(assert (=> b!483285 m!464315))

(declare-fun m!464317 () Bool)

(assert (=> mapNonEmpty!22522 m!464317))

(declare-fun m!464319 () Bool)

(assert (=> b!483280 m!464319))

(assert (=> b!483280 m!464319))

(declare-fun m!464321 () Bool)

(assert (=> b!483280 m!464321))

(check-sat (not b!483285) (not b!483282) tp_is_empty!13869 (not start!43658) b_and!21141 (not b!483279) (not mapNonEmpty!22522) (not b!483280) (not b!483281) (not b_next!12357) (not b!483284) (not b!483288))
(check-sat b_and!21141 (not b_next!12357))
(get-model)

(declare-fun lt!219140 () SeekEntryResult!3565)

(declare-fun b!483340 () Bool)

(declare-fun e!284445 () SeekEntryResult!3565)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31369 (_ BitVec 32)) SeekEntryResult!3565)

(assert (=> b!483340 (= e!284445 (seekKeyOrZeroReturnVacant!0 (x!45382 lt!219140) (index!16441 lt!219140) (index!16441 lt!219140) k0!1332 _keys!1874 mask!2352))))

(declare-fun b!483341 () Bool)

(declare-fun e!284444 () SeekEntryResult!3565)

(declare-fun e!284446 () SeekEntryResult!3565)

(assert (=> b!483341 (= e!284444 e!284446)))

(declare-fun lt!219139 () (_ BitVec 64))

(assert (=> b!483341 (= lt!219139 (select (arr!15081 _keys!1874) (index!16441 lt!219140)))))

(declare-fun c!58052 () Bool)

(assert (=> b!483341 (= c!58052 (= lt!219139 k0!1332))))

(declare-fun d!76783 () Bool)

(declare-fun lt!219138 () SeekEntryResult!3565)

(assert (=> d!76783 (and (or ((_ is Undefined!3565) lt!219138) (not ((_ is Found!3565) lt!219138)) (and (bvsge (index!16440 lt!219138) #b00000000000000000000000000000000) (bvslt (index!16440 lt!219138) (size!15439 _keys!1874)))) (or ((_ is Undefined!3565) lt!219138) ((_ is Found!3565) lt!219138) (not ((_ is MissingZero!3565) lt!219138)) (and (bvsge (index!16439 lt!219138) #b00000000000000000000000000000000) (bvslt (index!16439 lt!219138) (size!15439 _keys!1874)))) (or ((_ is Undefined!3565) lt!219138) ((_ is Found!3565) lt!219138) ((_ is MissingZero!3565) lt!219138) (not ((_ is MissingVacant!3565) lt!219138)) (and (bvsge (index!16442 lt!219138) #b00000000000000000000000000000000) (bvslt (index!16442 lt!219138) (size!15439 _keys!1874)))) (or ((_ is Undefined!3565) lt!219138) (ite ((_ is Found!3565) lt!219138) (= (select (arr!15081 _keys!1874) (index!16440 lt!219138)) k0!1332) (ite ((_ is MissingZero!3565) lt!219138) (= (select (arr!15081 _keys!1874) (index!16439 lt!219138)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3565) lt!219138) (= (select (arr!15081 _keys!1874) (index!16442 lt!219138)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!76783 (= lt!219138 e!284444)))

(declare-fun c!58053 () Bool)

(assert (=> d!76783 (= c!58053 (and ((_ is Intermediate!3565) lt!219140) (undefined!4377 lt!219140)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31369 (_ BitVec 32)) SeekEntryResult!3565)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!76783 (= lt!219140 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1332 mask!2352) k0!1332 _keys!1874 mask!2352))))

(assert (=> d!76783 (validMask!0 mask!2352)))

(assert (=> d!76783 (= (seekEntryOrOpen!0 k0!1332 _keys!1874 mask!2352) lt!219138)))

(declare-fun b!483342 () Bool)

(assert (=> b!483342 (= e!284445 (MissingZero!3565 (index!16441 lt!219140)))))

(declare-fun b!483343 () Bool)

(declare-fun c!58054 () Bool)

(assert (=> b!483343 (= c!58054 (= lt!219139 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!483343 (= e!284446 e!284445)))

(declare-fun b!483344 () Bool)

(assert (=> b!483344 (= e!284446 (Found!3565 (index!16441 lt!219140)))))

(declare-fun b!483345 () Bool)

(assert (=> b!483345 (= e!284444 Undefined!3565)))

(assert (= (and d!76783 c!58053) b!483345))

(assert (= (and d!76783 (not c!58053)) b!483341))

(assert (= (and b!483341 c!58052) b!483344))

(assert (= (and b!483341 (not c!58052)) b!483343))

(assert (= (and b!483343 c!58054) b!483342))

(assert (= (and b!483343 (not c!58054)) b!483340))

(declare-fun m!464357 () Bool)

(assert (=> b!483340 m!464357))

(declare-fun m!464359 () Bool)

(assert (=> b!483341 m!464359))

(declare-fun m!464361 () Bool)

(assert (=> d!76783 m!464361))

(declare-fun m!464363 () Bool)

(assert (=> d!76783 m!464363))

(assert (=> d!76783 m!464289))

(declare-fun m!464365 () Bool)

(assert (=> d!76783 m!464365))

(declare-fun m!464367 () Bool)

(assert (=> d!76783 m!464367))

(assert (=> d!76783 m!464363))

(declare-fun m!464369 () Bool)

(assert (=> d!76783 m!464369))

(assert (=> b!483284 d!76783))

(declare-fun d!76785 () Bool)

(assert (=> d!76785 (arrayForallSeekEntryOrOpenFound!0 lt!219116 _keys!1874 mask!2352)))

(declare-fun lt!219143 () Unit!14138)

(declare-fun choose!38 (array!31369 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14138)

(assert (=> d!76785 (= lt!219143 (choose!38 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!219116))))

(assert (=> d!76785 (validMask!0 mask!2352)))

(assert (=> d!76785 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!219116) lt!219143)))

(declare-fun bs!15365 () Bool)

(assert (= bs!15365 d!76785))

(assert (=> bs!15365 m!464307))

(declare-fun m!464371 () Bool)

(assert (=> bs!15365 m!464371))

(assert (=> bs!15365 m!464289))

(assert (=> b!483284 d!76785))

(declare-fun b!483354 () Bool)

(declare-fun e!284455 () Bool)

(declare-fun e!284453 () Bool)

(assert (=> b!483354 (= e!284455 e!284453)))

(declare-fun lt!219152 () (_ BitVec 64))

(assert (=> b!483354 (= lt!219152 (select (arr!15081 _keys!1874) lt!219116))))

(declare-fun lt!219151 () Unit!14138)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31369 (_ BitVec 64) (_ BitVec 32)) Unit!14138)

(assert (=> b!483354 (= lt!219151 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1874 lt!219152 lt!219116))))

(assert (=> b!483354 (arrayContainsKey!0 _keys!1874 lt!219152 #b00000000000000000000000000000000)))

(declare-fun lt!219150 () Unit!14138)

(assert (=> b!483354 (= lt!219150 lt!219151)))

(declare-fun res!288087 () Bool)

(assert (=> b!483354 (= res!288087 (= (seekEntryOrOpen!0 (select (arr!15081 _keys!1874) lt!219116) _keys!1874 mask!2352) (Found!3565 lt!219116)))))

(assert (=> b!483354 (=> (not res!288087) (not e!284453))))

(declare-fun b!483355 () Bool)

(declare-fun call!31039 () Bool)

(assert (=> b!483355 (= e!284453 call!31039)))

(declare-fun b!483356 () Bool)

(assert (=> b!483356 (= e!284455 call!31039)))

(declare-fun d!76787 () Bool)

(declare-fun res!288086 () Bool)

(declare-fun e!284454 () Bool)

(assert (=> d!76787 (=> res!288086 e!284454)))

(assert (=> d!76787 (= res!288086 (bvsge lt!219116 (size!15439 _keys!1874)))))

(assert (=> d!76787 (= (arrayForallSeekEntryOrOpenFound!0 lt!219116 _keys!1874 mask!2352) e!284454)))

(declare-fun b!483357 () Bool)

(assert (=> b!483357 (= e!284454 e!284455)))

(declare-fun c!58057 () Bool)

(assert (=> b!483357 (= c!58057 (validKeyInArray!0 (select (arr!15081 _keys!1874) lt!219116)))))

(declare-fun bm!31036 () Bool)

(assert (=> bm!31036 (= call!31039 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!219116 #b00000000000000000000000000000001) _keys!1874 mask!2352))))

(assert (= (and d!76787 (not res!288086)) b!483357))

(assert (= (and b!483357 c!58057) b!483354))

(assert (= (and b!483357 (not c!58057)) b!483356))

(assert (= (and b!483354 res!288087) b!483355))

(assert (= (or b!483355 b!483356) bm!31036))

(declare-fun m!464373 () Bool)

(assert (=> b!483354 m!464373))

(declare-fun m!464375 () Bool)

(assert (=> b!483354 m!464375))

(declare-fun m!464377 () Bool)

(assert (=> b!483354 m!464377))

(assert (=> b!483354 m!464373))

(declare-fun m!464379 () Bool)

(assert (=> b!483354 m!464379))

(assert (=> b!483357 m!464373))

(assert (=> b!483357 m!464373))

(declare-fun m!464381 () Bool)

(assert (=> b!483357 m!464381))

(declare-fun m!464383 () Bool)

(assert (=> bm!31036 m!464383))

(assert (=> b!483284 d!76787))

(declare-fun d!76789 () Bool)

(declare-fun e!284458 () Bool)

(assert (=> d!76789 e!284458))

(declare-fun c!58060 () Bool)

(assert (=> d!76789 (= c!58060 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!219155 () Unit!14138)

(declare-fun choose!1389 (array!31369 array!31367 (_ BitVec 32) (_ BitVec 32) V!19563 V!19563 (_ BitVec 64) Int) Unit!14138)

(assert (=> d!76789 (= lt!219155 (choose!1389 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(assert (=> d!76789 (validMask!0 mask!2352)))

(assert (=> d!76789 (= (lemmaKeyInListMapIsInArray!155 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519) lt!219155)))

(declare-fun b!483362 () Bool)

(assert (=> b!483362 (= e!284458 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!483363 () Bool)

(assert (=> b!483363 (= e!284458 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!76789 c!58060) b!483362))

(assert (= (and d!76789 (not c!58060)) b!483363))

(declare-fun m!464385 () Bool)

(assert (=> d!76789 m!464385))

(assert (=> d!76789 m!464289))

(assert (=> b!483362 m!464309))

(assert (=> b!483284 d!76789))

(declare-fun d!76791 () Bool)

(declare-fun lt!219158 () (_ BitVec 32))

(assert (=> d!76791 (and (or (bvslt lt!219158 #b00000000000000000000000000000000) (bvsge lt!219158 (size!15439 _keys!1874)) (and (bvsge lt!219158 #b00000000000000000000000000000000) (bvslt lt!219158 (size!15439 _keys!1874)))) (bvsge lt!219158 #b00000000000000000000000000000000) (bvslt lt!219158 (size!15439 _keys!1874)) (= (select (arr!15081 _keys!1874) lt!219158) k0!1332))))

(declare-fun e!284461 () (_ BitVec 32))

(assert (=> d!76791 (= lt!219158 e!284461)))

(declare-fun c!58063 () Bool)

(assert (=> d!76791 (= c!58063 (= (select (arr!15081 _keys!1874) #b00000000000000000000000000000000) k0!1332))))

(assert (=> d!76791 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15439 _keys!1874)) (bvslt (size!15439 _keys!1874) #b01111111111111111111111111111111))))

(assert (=> d!76791 (= (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000) lt!219158)))

(declare-fun b!483368 () Bool)

(assert (=> b!483368 (= e!284461 #b00000000000000000000000000000000)))

(declare-fun b!483369 () Bool)

(assert (=> b!483369 (= e!284461 (arrayScanForKey!0 _keys!1874 k0!1332 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!76791 c!58063) b!483368))

(assert (= (and d!76791 (not c!58063)) b!483369))

(declare-fun m!464387 () Bool)

(assert (=> d!76791 m!464387))

(declare-fun m!464389 () Bool)

(assert (=> d!76791 m!464389))

(declare-fun m!464391 () Bool)

(assert (=> b!483369 m!464391))

(assert (=> b!483284 d!76791))

(declare-fun b!483380 () Bool)

(declare-fun e!284472 () Bool)

(declare-fun call!31042 () Bool)

(assert (=> b!483380 (= e!284472 call!31042)))

(declare-fun d!76793 () Bool)

(declare-fun res!288096 () Bool)

(declare-fun e!284470 () Bool)

(assert (=> d!76793 (=> res!288096 e!284470)))

(assert (=> d!76793 (= res!288096 (bvsge #b00000000000000000000000000000000 (size!15439 _keys!1874)))))

(assert (=> d!76793 (= (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9276) e!284470)))

(declare-fun b!483381 () Bool)

(declare-fun e!284471 () Bool)

(declare-fun contains!2676 (List!9279 (_ BitVec 64)) Bool)

(assert (=> b!483381 (= e!284471 (contains!2676 Nil!9276 (select (arr!15081 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!483382 () Bool)

(declare-fun e!284473 () Bool)

(assert (=> b!483382 (= e!284473 e!284472)))

(declare-fun c!58066 () Bool)

(assert (=> b!483382 (= c!58066 (validKeyInArray!0 (select (arr!15081 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!483383 () Bool)

(assert (=> b!483383 (= e!284470 e!284473)))

(declare-fun res!288094 () Bool)

(assert (=> b!483383 (=> (not res!288094) (not e!284473))))

(assert (=> b!483383 (= res!288094 (not e!284471))))

(declare-fun res!288095 () Bool)

(assert (=> b!483383 (=> (not res!288095) (not e!284471))))

(assert (=> b!483383 (= res!288095 (validKeyInArray!0 (select (arr!15081 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun bm!31039 () Bool)

(assert (=> bm!31039 (= call!31042 (arrayNoDuplicates!0 _keys!1874 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58066 (Cons!9275 (select (arr!15081 _keys!1874) #b00000000000000000000000000000000) Nil!9276) Nil!9276)))))

(declare-fun b!483384 () Bool)

(assert (=> b!483384 (= e!284472 call!31042)))

(assert (= (and d!76793 (not res!288096)) b!483383))

(assert (= (and b!483383 res!288095) b!483381))

(assert (= (and b!483383 res!288094) b!483382))

(assert (= (and b!483382 c!58066) b!483380))

(assert (= (and b!483382 (not c!58066)) b!483384))

(assert (= (or b!483380 b!483384) bm!31039))

(assert (=> b!483381 m!464389))

(assert (=> b!483381 m!464389))

(declare-fun m!464393 () Bool)

(assert (=> b!483381 m!464393))

(assert (=> b!483382 m!464389))

(assert (=> b!483382 m!464389))

(declare-fun m!464395 () Bool)

(assert (=> b!483382 m!464395))

(assert (=> b!483383 m!464389))

(assert (=> b!483383 m!464389))

(assert (=> b!483383 m!464395))

(assert (=> bm!31039 m!464389))

(declare-fun m!464397 () Bool)

(assert (=> bm!31039 m!464397))

(assert (=> b!483279 d!76793))

(declare-fun d!76795 () Bool)

(declare-fun e!284479 () Bool)

(assert (=> d!76795 e!284479))

(declare-fun res!288099 () Bool)

(assert (=> d!76795 (=> res!288099 e!284479)))

(declare-fun lt!219168 () Bool)

(assert (=> d!76795 (= res!288099 (not lt!219168))))

(declare-fun lt!219170 () Bool)

(assert (=> d!76795 (= lt!219168 lt!219170)))

(declare-fun lt!219167 () Unit!14138)

(declare-fun e!284478 () Unit!14138)

(assert (=> d!76795 (= lt!219167 e!284478)))

(declare-fun c!58069 () Bool)

(assert (=> d!76795 (= c!58069 lt!219170)))

(declare-fun containsKey!360 (List!9280 (_ BitVec 64)) Bool)

(assert (=> d!76795 (= lt!219170 (containsKey!360 (toList!4060 (getCurrentListMap!2352 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(assert (=> d!76795 (= (contains!2674 (getCurrentListMap!2352 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332) lt!219168)))

(declare-fun b!483391 () Bool)

(declare-fun lt!219169 () Unit!14138)

(assert (=> b!483391 (= e!284478 lt!219169)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!309 (List!9280 (_ BitVec 64)) Unit!14138)

(assert (=> b!483391 (= lt!219169 (lemmaContainsKeyImpliesGetValueByKeyDefined!309 (toList!4060 (getCurrentListMap!2352 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(declare-datatypes ((Option!404 0))(
  ( (Some!403 (v!9276 V!19563)) (None!402) )
))
(declare-fun isDefined!310 (Option!404) Bool)

(declare-fun getValueByKey!398 (List!9280 (_ BitVec 64)) Option!404)

(assert (=> b!483391 (isDefined!310 (getValueByKey!398 (toList!4060 (getCurrentListMap!2352 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(declare-fun b!483392 () Bool)

(declare-fun Unit!14142 () Unit!14138)

(assert (=> b!483392 (= e!284478 Unit!14142)))

(declare-fun b!483393 () Bool)

(assert (=> b!483393 (= e!284479 (isDefined!310 (getValueByKey!398 (toList!4060 (getCurrentListMap!2352 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332)))))

(assert (= (and d!76795 c!58069) b!483391))

(assert (= (and d!76795 (not c!58069)) b!483392))

(assert (= (and d!76795 (not res!288099)) b!483393))

(declare-fun m!464399 () Bool)

(assert (=> d!76795 m!464399))

(declare-fun m!464401 () Bool)

(assert (=> b!483391 m!464401))

(declare-fun m!464403 () Bool)

(assert (=> b!483391 m!464403))

(assert (=> b!483391 m!464403))

(declare-fun m!464405 () Bool)

(assert (=> b!483391 m!464405))

(assert (=> b!483393 m!464403))

(assert (=> b!483393 m!464403))

(assert (=> b!483393 m!464405))

(assert (=> b!483280 d!76795))

(declare-fun b!483436 () Bool)

(declare-fun e!284510 () ListLongMap!8089)

(declare-fun call!31062 () ListLongMap!8089)

(assert (=> b!483436 (= e!284510 call!31062)))

(declare-fun b!483437 () Bool)

(declare-fun e!284506 () Unit!14138)

(declare-fun Unit!14143 () Unit!14138)

(assert (=> b!483437 (= e!284506 Unit!14143)))

(declare-fun b!483438 () Bool)

(declare-fun e!284507 () Bool)

(declare-fun call!31059 () Bool)

(assert (=> b!483438 (= e!284507 (not call!31059))))

(declare-fun b!483439 () Bool)

(declare-fun e!284509 () Bool)

(declare-fun e!284513 () Bool)

(assert (=> b!483439 (= e!284509 e!284513)))

(declare-fun c!58085 () Bool)

(assert (=> b!483439 (= c!58085 (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!483440 () Bool)

(declare-fun e!284512 () Bool)

(assert (=> b!483440 (= e!284512 (validKeyInArray!0 (select (arr!15081 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!483441 () Bool)

(declare-fun res!288125 () Bool)

(assert (=> b!483441 (=> (not res!288125) (not e!284509))))

(assert (=> b!483441 (= res!288125 e!284507)))

(declare-fun c!58086 () Bool)

(assert (=> b!483441 (= c!58086 (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!483442 () Bool)

(declare-fun e!284518 () ListLongMap!8089)

(assert (=> b!483442 (= e!284518 e!284510)))

(declare-fun c!58083 () Bool)

(assert (=> b!483442 (= c!58083 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!483443 () Bool)

(declare-fun lt!219225 () Unit!14138)

(assert (=> b!483443 (= e!284506 lt!219225)))

(declare-fun lt!219233 () ListLongMap!8089)

(declare-fun getCurrentListMapNoExtraKeys!2119 (array!31369 array!31367 (_ BitVec 32) (_ BitVec 32) V!19563 V!19563 (_ BitVec 32) Int) ListLongMap!8089)

(assert (=> b!483443 (= lt!219233 (getCurrentListMapNoExtraKeys!2119 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!219235 () (_ BitVec 64))

(assert (=> b!483443 (= lt!219235 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!219226 () (_ BitVec 64))

(assert (=> b!483443 (= lt!219226 (select (arr!15081 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!219219 () Unit!14138)

(declare-fun addStillContains!304 (ListLongMap!8089 (_ BitVec 64) V!19563 (_ BitVec 64)) Unit!14138)

(assert (=> b!483443 (= lt!219219 (addStillContains!304 lt!219233 lt!219235 zeroValue!1458 lt!219226))))

(declare-fun +!1749 (ListLongMap!8089 tuple2!9162) ListLongMap!8089)

(assert (=> b!483443 (contains!2674 (+!1749 lt!219233 (tuple2!9163 lt!219235 zeroValue!1458)) lt!219226)))

(declare-fun lt!219217 () Unit!14138)

(assert (=> b!483443 (= lt!219217 lt!219219)))

(declare-fun lt!219215 () ListLongMap!8089)

(assert (=> b!483443 (= lt!219215 (getCurrentListMapNoExtraKeys!2119 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!219222 () (_ BitVec 64))

(assert (=> b!483443 (= lt!219222 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!219218 () (_ BitVec 64))

(assert (=> b!483443 (= lt!219218 (select (arr!15081 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!219227 () Unit!14138)

(declare-fun addApplyDifferent!304 (ListLongMap!8089 (_ BitVec 64) V!19563 (_ BitVec 64)) Unit!14138)

(assert (=> b!483443 (= lt!219227 (addApplyDifferent!304 lt!219215 lt!219222 minValue!1458 lt!219218))))

(declare-fun apply!346 (ListLongMap!8089 (_ BitVec 64)) V!19563)

(assert (=> b!483443 (= (apply!346 (+!1749 lt!219215 (tuple2!9163 lt!219222 minValue!1458)) lt!219218) (apply!346 lt!219215 lt!219218))))

(declare-fun lt!219234 () Unit!14138)

(assert (=> b!483443 (= lt!219234 lt!219227)))

(declare-fun lt!219228 () ListLongMap!8089)

(assert (=> b!483443 (= lt!219228 (getCurrentListMapNoExtraKeys!2119 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!219220 () (_ BitVec 64))

(assert (=> b!483443 (= lt!219220 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!219236 () (_ BitVec 64))

(assert (=> b!483443 (= lt!219236 (select (arr!15081 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!219223 () Unit!14138)

(assert (=> b!483443 (= lt!219223 (addApplyDifferent!304 lt!219228 lt!219220 zeroValue!1458 lt!219236))))

(assert (=> b!483443 (= (apply!346 (+!1749 lt!219228 (tuple2!9163 lt!219220 zeroValue!1458)) lt!219236) (apply!346 lt!219228 lt!219236))))

(declare-fun lt!219230 () Unit!14138)

(assert (=> b!483443 (= lt!219230 lt!219223)))

(declare-fun lt!219221 () ListLongMap!8089)

(assert (=> b!483443 (= lt!219221 (getCurrentListMapNoExtraKeys!2119 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!219224 () (_ BitVec 64))

(assert (=> b!483443 (= lt!219224 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!219231 () (_ BitVec 64))

(assert (=> b!483443 (= lt!219231 (select (arr!15081 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> b!483443 (= lt!219225 (addApplyDifferent!304 lt!219221 lt!219224 minValue!1458 lt!219231))))

(assert (=> b!483443 (= (apply!346 (+!1749 lt!219221 (tuple2!9163 lt!219224 minValue!1458)) lt!219231) (apply!346 lt!219221 lt!219231))))

(declare-fun bm!31054 () Bool)

(declare-fun call!31060 () ListLongMap!8089)

(assert (=> bm!31054 (= call!31062 call!31060)))

(declare-fun b!483444 () Bool)

(declare-fun res!288119 () Bool)

(assert (=> b!483444 (=> (not res!288119) (not e!284509))))

(declare-fun e!284517 () Bool)

(assert (=> b!483444 (= res!288119 e!284517)))

(declare-fun res!288118 () Bool)

(assert (=> b!483444 (=> res!288118 e!284517)))

(assert (=> b!483444 (= res!288118 (not e!284512))))

(declare-fun res!288120 () Bool)

(assert (=> b!483444 (=> (not res!288120) (not e!284512))))

(assert (=> b!483444 (= res!288120 (bvslt #b00000000000000000000000000000000 (size!15439 _keys!1874)))))

(declare-fun bm!31055 () Bool)

(declare-fun call!31061 () ListLongMap!8089)

(declare-fun call!31058 () ListLongMap!8089)

(assert (=> bm!31055 (= call!31061 call!31058)))

(declare-fun b!483445 () Bool)

(assert (=> b!483445 (= e!284518 (+!1749 call!31060 (tuple2!9163 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1458)))))

(declare-fun call!31063 () ListLongMap!8089)

(declare-fun bm!31056 () Bool)

(assert (=> bm!31056 (= call!31063 (getCurrentListMapNoExtraKeys!2119 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun b!483446 () Bool)

(declare-fun e!284516 () ListLongMap!8089)

(assert (=> b!483446 (= e!284516 call!31061)))

(declare-fun c!58084 () Bool)

(declare-fun bm!31057 () Bool)

(assert (=> bm!31057 (= call!31060 (+!1749 (ite c!58084 call!31063 (ite c!58083 call!31058 call!31061)) (ite (or c!58084 c!58083) (tuple2!9163 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1458) (tuple2!9163 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1458))))))

(declare-fun b!483447 () Bool)

(declare-fun call!31057 () Bool)

(assert (=> b!483447 (= e!284513 (not call!31057))))

(declare-fun bm!31058 () Bool)

(declare-fun lt!219229 () ListLongMap!8089)

(assert (=> bm!31058 (= call!31059 (contains!2674 lt!219229 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!483448 () Bool)

(declare-fun e!284508 () Bool)

(assert (=> b!483448 (= e!284508 (= (apply!346 lt!219229 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1458))))

(declare-fun b!483449 () Bool)

(assert (=> b!483449 (= e!284507 e!284508)))

(declare-fun res!288122 () Bool)

(assert (=> b!483449 (= res!288122 call!31059)))

(assert (=> b!483449 (=> (not res!288122) (not e!284508))))

(declare-fun b!483450 () Bool)

(declare-fun e!284511 () Bool)

(assert (=> b!483450 (= e!284517 e!284511)))

(declare-fun res!288126 () Bool)

(assert (=> b!483450 (=> (not res!288126) (not e!284511))))

(assert (=> b!483450 (= res!288126 (contains!2674 lt!219229 (select (arr!15081 _keys!1874) #b00000000000000000000000000000000)))))

(assert (=> b!483450 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15439 _keys!1874)))))

(declare-fun bm!31059 () Bool)

(assert (=> bm!31059 (= call!31057 (contains!2674 lt!219229 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!483451 () Bool)

(assert (=> b!483451 (= e!284516 call!31062)))

(declare-fun b!483452 () Bool)

(declare-fun e!284515 () Bool)

(assert (=> b!483452 (= e!284515 (validKeyInArray!0 (select (arr!15081 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!483453 () Bool)

(declare-fun e!284514 () Bool)

(assert (=> b!483453 (= e!284513 e!284514)))

(declare-fun res!288121 () Bool)

(assert (=> b!483453 (= res!288121 call!31057)))

(assert (=> b!483453 (=> (not res!288121) (not e!284514))))

(declare-fun d!76797 () Bool)

(assert (=> d!76797 e!284509))

(declare-fun res!288123 () Bool)

(assert (=> d!76797 (=> (not res!288123) (not e!284509))))

(assert (=> d!76797 (= res!288123 (or (bvsge #b00000000000000000000000000000000 (size!15439 _keys!1874)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15439 _keys!1874)))))))

(declare-fun lt!219232 () ListLongMap!8089)

(assert (=> d!76797 (= lt!219229 lt!219232)))

(declare-fun lt!219216 () Unit!14138)

(assert (=> d!76797 (= lt!219216 e!284506)))

(declare-fun c!58087 () Bool)

(assert (=> d!76797 (= c!58087 e!284515)))

(declare-fun res!288124 () Bool)

(assert (=> d!76797 (=> (not res!288124) (not e!284515))))

(assert (=> d!76797 (= res!288124 (bvslt #b00000000000000000000000000000000 (size!15439 _keys!1874)))))

(assert (=> d!76797 (= lt!219232 e!284518)))

(assert (=> d!76797 (= c!58084 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!76797 (validMask!0 mask!2352)))

(assert (=> d!76797 (= (getCurrentListMap!2352 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) lt!219229)))

(declare-fun bm!31060 () Bool)

(assert (=> bm!31060 (= call!31058 call!31063)))

(declare-fun b!483454 () Bool)

(assert (=> b!483454 (= e!284514 (= (apply!346 lt!219229 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1458))))

(declare-fun b!483455 () Bool)

(declare-fun c!58082 () Bool)

(assert (=> b!483455 (= c!58082 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!483455 (= e!284510 e!284516)))

(declare-fun b!483456 () Bool)

(declare-fun get!7312 (ValueCell!6573 V!19563) V!19563)

(declare-fun dynLambda!956 (Int (_ BitVec 64)) V!19563)

(assert (=> b!483456 (= e!284511 (= (apply!346 lt!219229 (select (arr!15081 _keys!1874) #b00000000000000000000000000000000)) (get!7312 (select (arr!15080 _values!1516) #b00000000000000000000000000000000) (dynLambda!956 defaultEntry!1519 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!483456 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15438 _values!1516)))))

(assert (=> b!483456 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15439 _keys!1874)))))

(assert (= (and d!76797 c!58084) b!483445))

(assert (= (and d!76797 (not c!58084)) b!483442))

(assert (= (and b!483442 c!58083) b!483436))

(assert (= (and b!483442 (not c!58083)) b!483455))

(assert (= (and b!483455 c!58082) b!483451))

(assert (= (and b!483455 (not c!58082)) b!483446))

(assert (= (or b!483451 b!483446) bm!31055))

(assert (= (or b!483436 bm!31055) bm!31060))

(assert (= (or b!483436 b!483451) bm!31054))

(assert (= (or b!483445 bm!31060) bm!31056))

(assert (= (or b!483445 bm!31054) bm!31057))

(assert (= (and d!76797 res!288124) b!483452))

(assert (= (and d!76797 c!58087) b!483443))

(assert (= (and d!76797 (not c!58087)) b!483437))

(assert (= (and d!76797 res!288123) b!483444))

(assert (= (and b!483444 res!288120) b!483440))

(assert (= (and b!483444 (not res!288118)) b!483450))

(assert (= (and b!483450 res!288126) b!483456))

(assert (= (and b!483444 res!288119) b!483441))

(assert (= (and b!483441 c!58086) b!483449))

(assert (= (and b!483441 (not c!58086)) b!483438))

(assert (= (and b!483449 res!288122) b!483448))

(assert (= (or b!483449 b!483438) bm!31058))

(assert (= (and b!483441 res!288125) b!483439))

(assert (= (and b!483439 c!58085) b!483453))

(assert (= (and b!483439 (not c!58085)) b!483447))

(assert (= (and b!483453 res!288121) b!483454))

(assert (= (or b!483453 b!483447) bm!31059))

(declare-fun b_lambda!10849 () Bool)

(assert (=> (not b_lambda!10849) (not b!483456)))

(declare-fun t!15512 () Bool)

(declare-fun tb!4181 () Bool)

(assert (=> (and start!43658 (= defaultEntry!1519 defaultEntry!1519) t!15512) tb!4181))

(declare-fun result!7795 () Bool)

(assert (=> tb!4181 (= result!7795 tp_is_empty!13869)))

(assert (=> b!483456 t!15512))

(declare-fun b_and!21145 () Bool)

(assert (= b_and!21141 (and (=> t!15512 result!7795) b_and!21145)))

(assert (=> b!483440 m!464389))

(assert (=> b!483440 m!464389))

(assert (=> b!483440 m!464395))

(declare-fun m!464407 () Bool)

(assert (=> bm!31059 m!464407))

(assert (=> b!483450 m!464389))

(assert (=> b!483450 m!464389))

(declare-fun m!464409 () Bool)

(assert (=> b!483450 m!464409))

(declare-fun m!464411 () Bool)

(assert (=> bm!31056 m!464411))

(assert (=> d!76797 m!464289))

(declare-fun m!464413 () Bool)

(assert (=> b!483448 m!464413))

(declare-fun m!464415 () Bool)

(assert (=> b!483443 m!464415))

(declare-fun m!464417 () Bool)

(assert (=> b!483443 m!464417))

(declare-fun m!464419 () Bool)

(assert (=> b!483443 m!464419))

(declare-fun m!464421 () Bool)

(assert (=> b!483443 m!464421))

(declare-fun m!464423 () Bool)

(assert (=> b!483443 m!464423))

(declare-fun m!464425 () Bool)

(assert (=> b!483443 m!464425))

(assert (=> b!483443 m!464415))

(declare-fun m!464427 () Bool)

(assert (=> b!483443 m!464427))

(declare-fun m!464429 () Bool)

(assert (=> b!483443 m!464429))

(declare-fun m!464431 () Bool)

(assert (=> b!483443 m!464431))

(declare-fun m!464433 () Bool)

(assert (=> b!483443 m!464433))

(assert (=> b!483443 m!464421))

(assert (=> b!483443 m!464389))

(declare-fun m!464435 () Bool)

(assert (=> b!483443 m!464435))

(declare-fun m!464437 () Bool)

(assert (=> b!483443 m!464437))

(declare-fun m!464439 () Bool)

(assert (=> b!483443 m!464439))

(declare-fun m!464441 () Bool)

(assert (=> b!483443 m!464441))

(assert (=> b!483443 m!464429))

(assert (=> b!483443 m!464411))

(assert (=> b!483443 m!464437))

(declare-fun m!464443 () Bool)

(assert (=> b!483443 m!464443))

(declare-fun m!464445 () Bool)

(assert (=> bm!31057 m!464445))

(declare-fun m!464447 () Bool)

(assert (=> b!483456 m!464447))

(declare-fun m!464449 () Bool)

(assert (=> b!483456 m!464449))

(declare-fun m!464451 () Bool)

(assert (=> b!483456 m!464451))

(assert (=> b!483456 m!464449))

(assert (=> b!483456 m!464389))

(declare-fun m!464453 () Bool)

(assert (=> b!483456 m!464453))

(assert (=> b!483456 m!464447))

(assert (=> b!483456 m!464389))

(declare-fun m!464455 () Bool)

(assert (=> bm!31058 m!464455))

(declare-fun m!464457 () Bool)

(assert (=> b!483445 m!464457))

(assert (=> b!483452 m!464389))

(assert (=> b!483452 m!464389))

(assert (=> b!483452 m!464395))

(declare-fun m!464459 () Bool)

(assert (=> b!483454 m!464459))

(assert (=> b!483280 d!76797))

(declare-fun d!76799 () Bool)

(assert (=> d!76799 (= (inRange!0 (index!16440 lt!219117) mask!2352) (and (bvsge (index!16440 lt!219117) #b00000000000000000000000000000000) (bvslt (index!16440 lt!219117) (bvadd mask!2352 #b00000000000000000000000000000001))))))

(assert (=> b!483285 d!76799))

(declare-fun d!76801 () Bool)

(assert (=> d!76801 (= (validMask!0 mask!2352) (and (or (= mask!2352 #b00000000000000000000000000000111) (= mask!2352 #b00000000000000000000000000001111) (= mask!2352 #b00000000000000000000000000011111) (= mask!2352 #b00000000000000000000000000111111) (= mask!2352 #b00000000000000000000000001111111) (= mask!2352 #b00000000000000000000000011111111) (= mask!2352 #b00000000000000000000000111111111) (= mask!2352 #b00000000000000000000001111111111) (= mask!2352 #b00000000000000000000011111111111) (= mask!2352 #b00000000000000000000111111111111) (= mask!2352 #b00000000000000000001111111111111) (= mask!2352 #b00000000000000000011111111111111) (= mask!2352 #b00000000000000000111111111111111) (= mask!2352 #b00000000000000001111111111111111) (= mask!2352 #b00000000000000011111111111111111) (= mask!2352 #b00000000000000111111111111111111) (= mask!2352 #b00000000000001111111111111111111) (= mask!2352 #b00000000000011111111111111111111) (= mask!2352 #b00000000000111111111111111111111) (= mask!2352 #b00000000001111111111111111111111) (= mask!2352 #b00000000011111111111111111111111) (= mask!2352 #b00000000111111111111111111111111) (= mask!2352 #b00000001111111111111111111111111) (= mask!2352 #b00000011111111111111111111111111) (= mask!2352 #b00000111111111111111111111111111) (= mask!2352 #b00001111111111111111111111111111) (= mask!2352 #b00011111111111111111111111111111) (= mask!2352 #b00111111111111111111111111111111)) (bvsle mask!2352 #b00111111111111111111111111111111)))))

(assert (=> start!43658 d!76801))

(declare-fun d!76803 () Bool)

(assert (=> d!76803 (= (array_inv!10854 _values!1516) (bvsge (size!15438 _values!1516) #b00000000000000000000000000000000))))

(assert (=> start!43658 d!76803))

(declare-fun d!76805 () Bool)

(assert (=> d!76805 (= (array_inv!10855 _keys!1874) (bvsge (size!15439 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> start!43658 d!76805))

(declare-fun d!76807 () Bool)

(assert (=> d!76807 (= (validKeyInArray!0 k0!1332) (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!483281 d!76807))

(declare-fun d!76809 () Bool)

(declare-fun res!288131 () Bool)

(declare-fun e!284523 () Bool)

(assert (=> d!76809 (=> res!288131 e!284523)))

(assert (=> d!76809 (= res!288131 (= (select (arr!15081 _keys!1874) #b00000000000000000000000000000000) k0!1332))))

(assert (=> d!76809 (= (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000) e!284523)))

(declare-fun b!483463 () Bool)

(declare-fun e!284524 () Bool)

(assert (=> b!483463 (= e!284523 e!284524)))

(declare-fun res!288132 () Bool)

(assert (=> b!483463 (=> (not res!288132) (not e!284524))))

(assert (=> b!483463 (= res!288132 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15439 _keys!1874)))))

(declare-fun b!483464 () Bool)

(assert (=> b!483464 (= e!284524 (arrayContainsKey!0 _keys!1874 k0!1332 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!76809 (not res!288131)) b!483463))

(assert (= (and b!483463 res!288132) b!483464))

(assert (=> d!76809 m!464389))

(declare-fun m!464461 () Bool)

(assert (=> b!483464 m!464461))

(assert (=> b!483288 d!76809))

(declare-fun b!483465 () Bool)

(declare-fun e!284527 () Bool)

(declare-fun e!284525 () Bool)

(assert (=> b!483465 (= e!284527 e!284525)))

(declare-fun lt!219239 () (_ BitVec 64))

(assert (=> b!483465 (= lt!219239 (select (arr!15081 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!219238 () Unit!14138)

(assert (=> b!483465 (= lt!219238 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1874 lt!219239 #b00000000000000000000000000000000))))

(assert (=> b!483465 (arrayContainsKey!0 _keys!1874 lt!219239 #b00000000000000000000000000000000)))

(declare-fun lt!219237 () Unit!14138)

(assert (=> b!483465 (= lt!219237 lt!219238)))

(declare-fun res!288134 () Bool)

(assert (=> b!483465 (= res!288134 (= (seekEntryOrOpen!0 (select (arr!15081 _keys!1874) #b00000000000000000000000000000000) _keys!1874 mask!2352) (Found!3565 #b00000000000000000000000000000000)))))

(assert (=> b!483465 (=> (not res!288134) (not e!284525))))

(declare-fun b!483466 () Bool)

(declare-fun call!31064 () Bool)

(assert (=> b!483466 (= e!284525 call!31064)))

(declare-fun b!483467 () Bool)

(assert (=> b!483467 (= e!284527 call!31064)))

(declare-fun d!76811 () Bool)

(declare-fun res!288133 () Bool)

(declare-fun e!284526 () Bool)

(assert (=> d!76811 (=> res!288133 e!284526)))

(assert (=> d!76811 (= res!288133 (bvsge #b00000000000000000000000000000000 (size!15439 _keys!1874)))))

(assert (=> d!76811 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352) e!284526)))

(declare-fun b!483468 () Bool)

(assert (=> b!483468 (= e!284526 e!284527)))

(declare-fun c!58088 () Bool)

(assert (=> b!483468 (= c!58088 (validKeyInArray!0 (select (arr!15081 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun bm!31061 () Bool)

(assert (=> bm!31061 (= call!31064 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1874 mask!2352))))

(assert (= (and d!76811 (not res!288133)) b!483468))

(assert (= (and b!483468 c!58088) b!483465))

(assert (= (and b!483468 (not c!58088)) b!483467))

(assert (= (and b!483465 res!288134) b!483466))

(assert (= (or b!483466 b!483467) bm!31061))

(assert (=> b!483465 m!464389))

(declare-fun m!464463 () Bool)

(assert (=> b!483465 m!464463))

(declare-fun m!464465 () Bool)

(assert (=> b!483465 m!464465))

(assert (=> b!483465 m!464389))

(declare-fun m!464467 () Bool)

(assert (=> b!483465 m!464467))

(assert (=> b!483468 m!464389))

(assert (=> b!483468 m!464389))

(assert (=> b!483468 m!464395))

(declare-fun m!464469 () Bool)

(assert (=> bm!31061 m!464469))

(assert (=> b!483282 d!76811))

(declare-fun b!483475 () Bool)

(declare-fun e!284532 () Bool)

(assert (=> b!483475 (= e!284532 tp_is_empty!13869)))

(declare-fun condMapEmpty!22528 () Bool)

(declare-fun mapDefault!22528 () ValueCell!6573)

(assert (=> mapNonEmpty!22522 (= condMapEmpty!22528 (= mapRest!22522 ((as const (Array (_ BitVec 32) ValueCell!6573)) mapDefault!22528)))))

(declare-fun e!284533 () Bool)

(declare-fun mapRes!22528 () Bool)

(assert (=> mapNonEmpty!22522 (= tp!43363 (and e!284533 mapRes!22528))))

(declare-fun b!483476 () Bool)

(assert (=> b!483476 (= e!284533 tp_is_empty!13869)))

(declare-fun mapIsEmpty!22528 () Bool)

(assert (=> mapIsEmpty!22528 mapRes!22528))

(declare-fun mapNonEmpty!22528 () Bool)

(declare-fun tp!43372 () Bool)

(assert (=> mapNonEmpty!22528 (= mapRes!22528 (and tp!43372 e!284532))))

(declare-fun mapKey!22528 () (_ BitVec 32))

(declare-fun mapValue!22528 () ValueCell!6573)

(declare-fun mapRest!22528 () (Array (_ BitVec 32) ValueCell!6573))

(assert (=> mapNonEmpty!22528 (= mapRest!22522 (store mapRest!22528 mapKey!22528 mapValue!22528))))

(assert (= (and mapNonEmpty!22522 condMapEmpty!22528) mapIsEmpty!22528))

(assert (= (and mapNonEmpty!22522 (not condMapEmpty!22528)) mapNonEmpty!22528))

(assert (= (and mapNonEmpty!22528 ((_ is ValueCellFull!6573) mapValue!22528)) b!483475))

(assert (= (and mapNonEmpty!22522 ((_ is ValueCellFull!6573) mapDefault!22528)) b!483476))

(declare-fun m!464471 () Bool)

(assert (=> mapNonEmpty!22528 m!464471))

(declare-fun b_lambda!10851 () Bool)

(assert (= b_lambda!10849 (or (and start!43658 b_free!12357) b_lambda!10851)))

(check-sat (not b!483354) (not mapNonEmpty!22528) (not b!483369) tp_is_empty!13869 (not bm!31058) (not b!483468) (not b!483340) (not b!483357) (not b!483445) (not b!483456) (not b!483440) (not bm!31061) (not b!483448) (not b!483465) (not b!483450) (not b_lambda!10851) (not b!483452) b_and!21145 (not b!483464) (not b!483393) (not bm!31036) (not b!483381) (not bm!31056) (not d!76783) (not b_next!12357) (not d!76797) (not b!483362) (not bm!31039) (not d!76785) (not b!483382) (not d!76795) (not bm!31059) (not b!483443) (not d!76789) (not b!483391) (not b!483383) (not b!483454) (not bm!31057))
(check-sat b_and!21145 (not b_next!12357))
