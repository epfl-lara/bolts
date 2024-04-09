; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43176 () Bool)

(assert start!43176)

(declare-fun b!478365 () Bool)

(declare-fun res!285478 () Bool)

(declare-fun e!281275 () Bool)

(assert (=> b!478365 (=> (not res!285478) (not e!281275))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!30783 0))(
  ( (array!30784 (arr!14797 (Array (_ BitVec 32) (_ BitVec 64))) (size!15155 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30783)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19163 0))(
  ( (V!19164 (val!6832 Int)) )
))
(declare-datatypes ((ValueCell!6423 0))(
  ( (ValueCellFull!6423 (v!9116 V!19163)) (EmptyCell!6423) )
))
(declare-datatypes ((array!30785 0))(
  ( (array!30786 (arr!14798 (Array (_ BitVec 32) ValueCell!6423)) (size!15156 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30785)

(assert (=> b!478365 (= res!285478 (and (= (size!15156 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15155 _keys!1874) (size!15156 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!478366 () Bool)

(declare-fun e!281279 () Bool)

(assert (=> b!478366 (= e!281275 e!281279)))

(declare-fun res!285474 () Bool)

(assert (=> b!478366 (=> res!285474 e!281279)))

(declare-datatypes ((List!9092 0))(
  ( (Nil!9089) (Cons!9088 (h!9944 (_ BitVec 64)) (t!15306 List!9092)) )
))
(declare-fun contains!2584 (List!9092 (_ BitVec 64)) Bool)

(assert (=> b!478366 (= res!285474 (contains!2584 Nil!9089 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!478367 () Bool)

(declare-fun e!281277 () Bool)

(declare-fun tp_is_empty!13569 () Bool)

(assert (=> b!478367 (= e!281277 tp_is_empty!13569)))

(declare-fun b!478368 () Bool)

(declare-fun res!285473 () Bool)

(assert (=> b!478368 (=> (not res!285473) (not e!281275))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30783 (_ BitVec 32)) Bool)

(assert (=> b!478368 (= res!285473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun mapIsEmpty!22045 () Bool)

(declare-fun mapRes!22045 () Bool)

(assert (=> mapIsEmpty!22045 mapRes!22045))

(declare-fun b!478370 () Bool)

(assert (=> b!478370 (= e!281279 (contains!2584 Nil!9089 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!478369 () Bool)

(declare-fun res!285476 () Bool)

(assert (=> b!478369 (=> (not res!285476) (not e!281275))))

(declare-fun noDuplicate!206 (List!9092) Bool)

(assert (=> b!478369 (= res!285476 (noDuplicate!206 Nil!9089))))

(declare-fun res!285477 () Bool)

(assert (=> start!43176 (=> (not res!285477) (not e!281275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43176 (= res!285477 (validMask!0 mask!2352))))

(assert (=> start!43176 e!281275))

(assert (=> start!43176 true))

(declare-fun e!281274 () Bool)

(declare-fun array_inv!10664 (array!30785) Bool)

(assert (=> start!43176 (and (array_inv!10664 _values!1516) e!281274)))

(declare-fun array_inv!10665 (array!30783) Bool)

(assert (=> start!43176 (array_inv!10665 _keys!1874)))

(declare-fun mapNonEmpty!22045 () Bool)

(declare-fun tp!42520 () Bool)

(assert (=> mapNonEmpty!22045 (= mapRes!22045 (and tp!42520 e!281277))))

(declare-fun mapKey!22045 () (_ BitVec 32))

(declare-fun mapValue!22045 () ValueCell!6423)

(declare-fun mapRest!22045 () (Array (_ BitVec 32) ValueCell!6423))

(assert (=> mapNonEmpty!22045 (= (arr!14798 _values!1516) (store mapRest!22045 mapKey!22045 mapValue!22045))))

(declare-fun b!478371 () Bool)

(declare-fun e!281278 () Bool)

(assert (=> b!478371 (= e!281278 tp_is_empty!13569)))

(declare-fun b!478372 () Bool)

(assert (=> b!478372 (= e!281274 (and e!281278 mapRes!22045))))

(declare-fun condMapEmpty!22045 () Bool)

(declare-fun mapDefault!22045 () ValueCell!6423)

(assert (=> b!478372 (= condMapEmpty!22045 (= (arr!14798 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6423)) mapDefault!22045)))))

(declare-fun b!478373 () Bool)

(declare-fun res!285475 () Bool)

(assert (=> b!478373 (=> (not res!285475) (not e!281275))))

(assert (=> b!478373 (= res!285475 (and (bvsle #b00000000000000000000000000000000 (size!15155 _keys!1874)) (bvslt (size!15155 _keys!1874) #b01111111111111111111111111111111)))))

(assert (= (and start!43176 res!285477) b!478365))

(assert (= (and b!478365 res!285478) b!478368))

(assert (= (and b!478368 res!285473) b!478373))

(assert (= (and b!478373 res!285475) b!478369))

(assert (= (and b!478369 res!285476) b!478366))

(assert (= (and b!478366 (not res!285474)) b!478370))

(assert (= (and b!478372 condMapEmpty!22045) mapIsEmpty!22045))

(assert (= (and b!478372 (not condMapEmpty!22045)) mapNonEmpty!22045))

(get-info :version)

(assert (= (and mapNonEmpty!22045 ((_ is ValueCellFull!6423) mapValue!22045)) b!478367))

(assert (= (and b!478372 ((_ is ValueCellFull!6423) mapDefault!22045)) b!478371))

(assert (= start!43176 b!478372))

(declare-fun m!460621 () Bool)

(assert (=> b!478368 m!460621))

(declare-fun m!460623 () Bool)

(assert (=> b!478369 m!460623))

(declare-fun m!460625 () Bool)

(assert (=> mapNonEmpty!22045 m!460625))

(declare-fun m!460627 () Bool)

(assert (=> b!478370 m!460627))

(declare-fun m!460629 () Bool)

(assert (=> start!43176 m!460629))

(declare-fun m!460631 () Bool)

(assert (=> start!43176 m!460631))

(declare-fun m!460633 () Bool)

(assert (=> start!43176 m!460633))

(declare-fun m!460635 () Bool)

(assert (=> b!478366 m!460635))

(check-sat (not b!478369) (not b!478370) (not b!478366) tp_is_empty!13569 (not mapNonEmpty!22045) (not start!43176) (not b!478368))
(check-sat)
(get-model)

(declare-fun d!76493 () Bool)

(declare-fun res!285501 () Bool)

(declare-fun e!281302 () Bool)

(assert (=> d!76493 (=> res!285501 e!281302)))

(assert (=> d!76493 (= res!285501 ((_ is Nil!9089) Nil!9089))))

(assert (=> d!76493 (= (noDuplicate!206 Nil!9089) e!281302)))

(declare-fun b!478405 () Bool)

(declare-fun e!281303 () Bool)

(assert (=> b!478405 (= e!281302 e!281303)))

(declare-fun res!285502 () Bool)

(assert (=> b!478405 (=> (not res!285502) (not e!281303))))

(assert (=> b!478405 (= res!285502 (not (contains!2584 (t!15306 Nil!9089) (h!9944 Nil!9089))))))

(declare-fun b!478406 () Bool)

(assert (=> b!478406 (= e!281303 (noDuplicate!206 (t!15306 Nil!9089)))))

(assert (= (and d!76493 (not res!285501)) b!478405))

(assert (= (and b!478405 res!285502) b!478406))

(declare-fun m!460653 () Bool)

(assert (=> b!478405 m!460653))

(declare-fun m!460655 () Bool)

(assert (=> b!478406 m!460655))

(assert (=> b!478369 d!76493))

(declare-fun d!76495 () Bool)

(declare-fun lt!217693 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!212 (List!9092) (InoxSet (_ BitVec 64)))

(assert (=> d!76495 (= lt!217693 (select (content!212 Nil!9089) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!281309 () Bool)

(assert (=> d!76495 (= lt!217693 e!281309)))

(declare-fun res!285508 () Bool)

(assert (=> d!76495 (=> (not res!285508) (not e!281309))))

(assert (=> d!76495 (= res!285508 ((_ is Cons!9088) Nil!9089))))

(assert (=> d!76495 (= (contains!2584 Nil!9089 #b0000000000000000000000000000000000000000000000000000000000000000) lt!217693)))

(declare-fun b!478411 () Bool)

(declare-fun e!281308 () Bool)

(assert (=> b!478411 (= e!281309 e!281308)))

(declare-fun res!285507 () Bool)

(assert (=> b!478411 (=> res!285507 e!281308)))

(assert (=> b!478411 (= res!285507 (= (h!9944 Nil!9089) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!478412 () Bool)

(assert (=> b!478412 (= e!281308 (contains!2584 (t!15306 Nil!9089) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!76495 res!285508) b!478411))

(assert (= (and b!478411 (not res!285507)) b!478412))

(declare-fun m!460657 () Bool)

(assert (=> d!76495 m!460657))

(declare-fun m!460659 () Bool)

(assert (=> d!76495 m!460659))

(declare-fun m!460661 () Bool)

(assert (=> b!478412 m!460661))

(assert (=> b!478366 d!76495))

(declare-fun d!76497 () Bool)

(declare-fun lt!217694 () Bool)

(assert (=> d!76497 (= lt!217694 (select (content!212 Nil!9089) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!281311 () Bool)

(assert (=> d!76497 (= lt!217694 e!281311)))

(declare-fun res!285510 () Bool)

(assert (=> d!76497 (=> (not res!285510) (not e!281311))))

(assert (=> d!76497 (= res!285510 ((_ is Cons!9088) Nil!9089))))

(assert (=> d!76497 (= (contains!2584 Nil!9089 #b1000000000000000000000000000000000000000000000000000000000000000) lt!217694)))

(declare-fun b!478413 () Bool)

(declare-fun e!281310 () Bool)

(assert (=> b!478413 (= e!281311 e!281310)))

(declare-fun res!285509 () Bool)

(assert (=> b!478413 (=> res!285509 e!281310)))

(assert (=> b!478413 (= res!285509 (= (h!9944 Nil!9089) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!478414 () Bool)

(assert (=> b!478414 (= e!281310 (contains!2584 (t!15306 Nil!9089) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!76497 res!285510) b!478413))

(assert (= (and b!478413 (not res!285509)) b!478414))

(assert (=> d!76497 m!460657))

(declare-fun m!460663 () Bool)

(assert (=> d!76497 m!460663))

(declare-fun m!460665 () Bool)

(assert (=> b!478414 m!460665))

(assert (=> b!478370 d!76497))

(declare-fun d!76499 () Bool)

(assert (=> d!76499 (= (validMask!0 mask!2352) (and (or (= mask!2352 #b00000000000000000000000000000111) (= mask!2352 #b00000000000000000000000000001111) (= mask!2352 #b00000000000000000000000000011111) (= mask!2352 #b00000000000000000000000000111111) (= mask!2352 #b00000000000000000000000001111111) (= mask!2352 #b00000000000000000000000011111111) (= mask!2352 #b00000000000000000000000111111111) (= mask!2352 #b00000000000000000000001111111111) (= mask!2352 #b00000000000000000000011111111111) (= mask!2352 #b00000000000000000000111111111111) (= mask!2352 #b00000000000000000001111111111111) (= mask!2352 #b00000000000000000011111111111111) (= mask!2352 #b00000000000000000111111111111111) (= mask!2352 #b00000000000000001111111111111111) (= mask!2352 #b00000000000000011111111111111111) (= mask!2352 #b00000000000000111111111111111111) (= mask!2352 #b00000000000001111111111111111111) (= mask!2352 #b00000000000011111111111111111111) (= mask!2352 #b00000000000111111111111111111111) (= mask!2352 #b00000000001111111111111111111111) (= mask!2352 #b00000000011111111111111111111111) (= mask!2352 #b00000000111111111111111111111111) (= mask!2352 #b00000001111111111111111111111111) (= mask!2352 #b00000011111111111111111111111111) (= mask!2352 #b00000111111111111111111111111111) (= mask!2352 #b00001111111111111111111111111111) (= mask!2352 #b00011111111111111111111111111111) (= mask!2352 #b00111111111111111111111111111111)) (bvsle mask!2352 #b00111111111111111111111111111111)))))

(assert (=> start!43176 d!76499))

(declare-fun d!76501 () Bool)

(assert (=> d!76501 (= (array_inv!10664 _values!1516) (bvsge (size!15156 _values!1516) #b00000000000000000000000000000000))))

(assert (=> start!43176 d!76501))

(declare-fun d!76503 () Bool)

(assert (=> d!76503 (= (array_inv!10665 _keys!1874) (bvsge (size!15155 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> start!43176 d!76503))

(declare-fun bm!30835 () Bool)

(declare-fun call!30838 () Bool)

(assert (=> bm!30835 (= call!30838 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1874 mask!2352))))

(declare-fun b!478423 () Bool)

(declare-fun e!281318 () Bool)

(declare-fun e!281319 () Bool)

(assert (=> b!478423 (= e!281318 e!281319)))

(declare-fun c!57595 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!478423 (= c!57595 (validKeyInArray!0 (select (arr!14797 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun d!76505 () Bool)

(declare-fun res!285516 () Bool)

(assert (=> d!76505 (=> res!285516 e!281318)))

(assert (=> d!76505 (= res!285516 (bvsge #b00000000000000000000000000000000 (size!15155 _keys!1874)))))

(assert (=> d!76505 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352) e!281318)))

(declare-fun b!478424 () Bool)

(declare-fun e!281320 () Bool)

(assert (=> b!478424 (= e!281320 call!30838)))

(declare-fun b!478425 () Bool)

(assert (=> b!478425 (= e!281319 call!30838)))

(declare-fun b!478426 () Bool)

(assert (=> b!478426 (= e!281319 e!281320)))

(declare-fun lt!217701 () (_ BitVec 64))

(assert (=> b!478426 (= lt!217701 (select (arr!14797 _keys!1874) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!14032 0))(
  ( (Unit!14033) )
))
(declare-fun lt!217703 () Unit!14032)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!30783 (_ BitVec 64) (_ BitVec 32)) Unit!14032)

(assert (=> b!478426 (= lt!217703 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1874 lt!217701 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!30783 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!478426 (arrayContainsKey!0 _keys!1874 lt!217701 #b00000000000000000000000000000000)))

(declare-fun lt!217702 () Unit!14032)

(assert (=> b!478426 (= lt!217702 lt!217703)))

(declare-fun res!285515 () Bool)

(declare-datatypes ((SeekEntryResult!3554 0))(
  ( (MissingZero!3554 (index!16395 (_ BitVec 32))) (Found!3554 (index!16396 (_ BitVec 32))) (Intermediate!3554 (undefined!4366 Bool) (index!16397 (_ BitVec 32)) (x!44899 (_ BitVec 32))) (Undefined!3554) (MissingVacant!3554 (index!16398 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!30783 (_ BitVec 32)) SeekEntryResult!3554)

(assert (=> b!478426 (= res!285515 (= (seekEntryOrOpen!0 (select (arr!14797 _keys!1874) #b00000000000000000000000000000000) _keys!1874 mask!2352) (Found!3554 #b00000000000000000000000000000000)))))

(assert (=> b!478426 (=> (not res!285515) (not e!281320))))

(assert (= (and d!76505 (not res!285516)) b!478423))

(assert (= (and b!478423 c!57595) b!478426))

(assert (= (and b!478423 (not c!57595)) b!478425))

(assert (= (and b!478426 res!285515) b!478424))

(assert (= (or b!478424 b!478425) bm!30835))

(declare-fun m!460667 () Bool)

(assert (=> bm!30835 m!460667))

(declare-fun m!460669 () Bool)

(assert (=> b!478423 m!460669))

(assert (=> b!478423 m!460669))

(declare-fun m!460671 () Bool)

(assert (=> b!478423 m!460671))

(assert (=> b!478426 m!460669))

(declare-fun m!460673 () Bool)

(assert (=> b!478426 m!460673))

(declare-fun m!460675 () Bool)

(assert (=> b!478426 m!460675))

(assert (=> b!478426 m!460669))

(declare-fun m!460677 () Bool)

(assert (=> b!478426 m!460677))

(assert (=> b!478368 d!76505))

(declare-fun b!478433 () Bool)

(declare-fun e!281325 () Bool)

(assert (=> b!478433 (= e!281325 tp_is_empty!13569)))

(declare-fun b!478434 () Bool)

(declare-fun e!281326 () Bool)

(assert (=> b!478434 (= e!281326 tp_is_empty!13569)))

(declare-fun condMapEmpty!22051 () Bool)

(declare-fun mapDefault!22051 () ValueCell!6423)

(assert (=> mapNonEmpty!22045 (= condMapEmpty!22051 (= mapRest!22045 ((as const (Array (_ BitVec 32) ValueCell!6423)) mapDefault!22051)))))

(declare-fun mapRes!22051 () Bool)

(assert (=> mapNonEmpty!22045 (= tp!42520 (and e!281326 mapRes!22051))))

(declare-fun mapIsEmpty!22051 () Bool)

(assert (=> mapIsEmpty!22051 mapRes!22051))

(declare-fun mapNonEmpty!22051 () Bool)

(declare-fun tp!42526 () Bool)

(assert (=> mapNonEmpty!22051 (= mapRes!22051 (and tp!42526 e!281325))))

(declare-fun mapRest!22051 () (Array (_ BitVec 32) ValueCell!6423))

(declare-fun mapKey!22051 () (_ BitVec 32))

(declare-fun mapValue!22051 () ValueCell!6423)

(assert (=> mapNonEmpty!22051 (= mapRest!22045 (store mapRest!22051 mapKey!22051 mapValue!22051))))

(assert (= (and mapNonEmpty!22045 condMapEmpty!22051) mapIsEmpty!22051))

(assert (= (and mapNonEmpty!22045 (not condMapEmpty!22051)) mapNonEmpty!22051))

(assert (= (and mapNonEmpty!22051 ((_ is ValueCellFull!6423) mapValue!22051)) b!478433))

(assert (= (and mapNonEmpty!22045 ((_ is ValueCellFull!6423) mapDefault!22051)) b!478434))

(declare-fun m!460679 () Bool)

(assert (=> mapNonEmpty!22051 m!460679))

(check-sat (not b!478414) (not b!478406) (not b!478412) tp_is_empty!13569 (not mapNonEmpty!22051) (not bm!30835) (not d!76497) (not b!478423) (not d!76495) (not b!478426) (not b!478405))
(check-sat)
