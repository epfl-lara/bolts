; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7394 () Bool)

(assert start!7394)

(declare-fun b!47446 () Bool)

(declare-fun e!30382 () Bool)

(declare-datatypes ((List!1276 0))(
  ( (Nil!1273) (Cons!1272 (h!1852 (_ BitVec 64)) (t!4312 List!1276)) )
))
(declare-fun contains!587 (List!1276 (_ BitVec 64)) Bool)

(assert (=> b!47446 (= e!30382 (contains!587 Nil!1273 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!47447 () Bool)

(declare-fun e!30380 () Bool)

(declare-fun tp_is_empty!2031 () Bool)

(assert (=> b!47447 (= e!30380 tp_is_empty!2031)))

(declare-fun b!47448 () Bool)

(declare-fun res!27593 () Bool)

(declare-fun e!30379 () Bool)

(assert (=> b!47448 (=> (not res!27593) (not e!30379))))

(declare-datatypes ((array!3128 0))(
  ( (array!3129 (arr!1499 (Array (_ BitVec 32) (_ BitVec 64))) (size!1721 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3128)

(assert (=> b!47448 (= res!27593 (and (bvsle #b00000000000000000000000000000000 (size!1721 _keys!1940)) (bvslt (size!1721 _keys!1940) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!2087 () Bool)

(declare-fun mapRes!2087 () Bool)

(assert (=> mapIsEmpty!2087 mapRes!2087))

(declare-fun b!47449 () Bool)

(declare-fun e!30383 () Bool)

(assert (=> b!47449 (= e!30383 tp_is_empty!2031)))

(declare-fun mapNonEmpty!2087 () Bool)

(declare-fun tp!6236 () Bool)

(assert (=> mapNonEmpty!2087 (= mapRes!2087 (and tp!6236 e!30383))))

(declare-datatypes ((V!2441 0))(
  ( (V!2442 (val!1054 Int)) )
))
(declare-datatypes ((ValueCell!726 0))(
  ( (ValueCellFull!726 (v!2113 V!2441)) (EmptyCell!726) )
))
(declare-fun mapValue!2087 () ValueCell!726)

(declare-fun mapKey!2087 () (_ BitVec 32))

(declare-datatypes ((array!3130 0))(
  ( (array!3131 (arr!1500 (Array (_ BitVec 32) ValueCell!726)) (size!1722 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3130)

(declare-fun mapRest!2087 () (Array (_ BitVec 32) ValueCell!726))

(assert (=> mapNonEmpty!2087 (= (arr!1500 _values!1550) (store mapRest!2087 mapKey!2087 mapValue!2087))))

(declare-fun b!47450 () Bool)

(declare-fun res!27594 () Bool)

(assert (=> b!47450 (=> (not res!27594) (not e!30379))))

(declare-fun mask!2458 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3128 (_ BitVec 32)) Bool)

(assert (=> b!47450 (= res!27594 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458))))

(declare-fun b!47451 () Bool)

(assert (=> b!47451 (= e!30379 e!30382)))

(declare-fun res!27592 () Bool)

(assert (=> b!47451 (=> res!27592 e!30382)))

(assert (=> b!47451 (= res!27592 (contains!587 Nil!1273 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!47452 () Bool)

(declare-fun res!27590 () Bool)

(assert (=> b!47452 (=> (not res!27590) (not e!30379))))

(declare-fun noDuplicate!37 (List!1276) Bool)

(assert (=> b!47452 (= res!27590 (noDuplicate!37 Nil!1273))))

(declare-fun res!27591 () Bool)

(assert (=> start!7394 (=> (not res!27591) (not e!30379))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7394 (= res!27591 (validMask!0 mask!2458))))

(assert (=> start!7394 e!30379))

(assert (=> start!7394 true))

(declare-fun e!30381 () Bool)

(declare-fun array_inv!858 (array!3130) Bool)

(assert (=> start!7394 (and (array_inv!858 _values!1550) e!30381)))

(declare-fun array_inv!859 (array!3128) Bool)

(assert (=> start!7394 (array_inv!859 _keys!1940)))

(declare-fun b!47453 () Bool)

(declare-fun res!27595 () Bool)

(assert (=> b!47453 (=> (not res!27595) (not e!30379))))

(declare-fun extraKeys!1471 () (_ BitVec 32))

(assert (=> b!47453 (= res!27595 (and (= (size!1722 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1721 _keys!1940) (size!1722 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011)))))

(declare-fun b!47454 () Bool)

(assert (=> b!47454 (= e!30381 (and e!30380 mapRes!2087))))

(declare-fun condMapEmpty!2087 () Bool)

(declare-fun mapDefault!2087 () ValueCell!726)

(assert (=> b!47454 (= condMapEmpty!2087 (= (arr!1500 _values!1550) ((as const (Array (_ BitVec 32) ValueCell!726)) mapDefault!2087)))))

(assert (= (and start!7394 res!27591) b!47453))

(assert (= (and b!47453 res!27595) b!47450))

(assert (= (and b!47450 res!27594) b!47448))

(assert (= (and b!47448 res!27593) b!47452))

(assert (= (and b!47452 res!27590) b!47451))

(assert (= (and b!47451 (not res!27592)) b!47446))

(assert (= (and b!47454 condMapEmpty!2087) mapIsEmpty!2087))

(assert (= (and b!47454 (not condMapEmpty!2087)) mapNonEmpty!2087))

(get-info :version)

(assert (= (and mapNonEmpty!2087 ((_ is ValueCellFull!726) mapValue!2087)) b!47449))

(assert (= (and b!47454 ((_ is ValueCellFull!726) mapDefault!2087)) b!47447))

(assert (= start!7394 b!47454))

(declare-fun m!41683 () Bool)

(assert (=> b!47450 m!41683))

(declare-fun m!41685 () Bool)

(assert (=> b!47451 m!41685))

(declare-fun m!41687 () Bool)

(assert (=> b!47446 m!41687))

(declare-fun m!41689 () Bool)

(assert (=> b!47452 m!41689))

(declare-fun m!41691 () Bool)

(assert (=> mapNonEmpty!2087 m!41691))

(declare-fun m!41693 () Bool)

(assert (=> start!7394 m!41693))

(declare-fun m!41695 () Bool)

(assert (=> start!7394 m!41695))

(declare-fun m!41697 () Bool)

(assert (=> start!7394 m!41697))

(check-sat (not mapNonEmpty!2087) tp_is_empty!2031 (not start!7394) (not b!47450) (not b!47446) (not b!47452) (not b!47451))
(check-sat)
(get-model)

(declare-fun b!47490 () Bool)

(declare-fun e!30410 () Bool)

(declare-fun e!30408 () Bool)

(assert (=> b!47490 (= e!30410 e!30408)))

(declare-fun lt!20429 () (_ BitVec 64))

(assert (=> b!47490 (= lt!20429 (select (arr!1499 _keys!1940) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!1333 0))(
  ( (Unit!1334) )
))
(declare-fun lt!20427 () Unit!1333)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3128 (_ BitVec 64) (_ BitVec 32)) Unit!1333)

(assert (=> b!47490 (= lt!20427 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1940 lt!20429 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!3128 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!47490 (arrayContainsKey!0 _keys!1940 lt!20429 #b00000000000000000000000000000000)))

(declare-fun lt!20428 () Unit!1333)

(assert (=> b!47490 (= lt!20428 lt!20427)))

(declare-fun res!27619 () Bool)

(declare-datatypes ((SeekEntryResult!219 0))(
  ( (MissingZero!219 (index!2998 (_ BitVec 32))) (Found!219 (index!2999 (_ BitVec 32))) (Intermediate!219 (undefined!1031 Bool) (index!3000 (_ BitVec 32)) (x!8759 (_ BitVec 32))) (Undefined!219) (MissingVacant!219 (index!3001 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3128 (_ BitVec 32)) SeekEntryResult!219)

(assert (=> b!47490 (= res!27619 (= (seekEntryOrOpen!0 (select (arr!1499 _keys!1940) #b00000000000000000000000000000000) _keys!1940 mask!2458) (Found!219 #b00000000000000000000000000000000)))))

(assert (=> b!47490 (=> (not res!27619) (not e!30408))))

(declare-fun b!47491 () Bool)

(declare-fun call!3723 () Bool)

(assert (=> b!47491 (= e!30410 call!3723)))

(declare-fun bm!3720 () Bool)

(assert (=> bm!3720 (= call!3723 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1940 mask!2458))))

(declare-fun b!47492 () Bool)

(declare-fun e!30409 () Bool)

(assert (=> b!47492 (= e!30409 e!30410)))

(declare-fun c!6426 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!47492 (= c!6426 (validKeyInArray!0 (select (arr!1499 _keys!1940) #b00000000000000000000000000000000)))))

(declare-fun d!9485 () Bool)

(declare-fun res!27618 () Bool)

(assert (=> d!9485 (=> res!27618 e!30409)))

(assert (=> d!9485 (= res!27618 (bvsge #b00000000000000000000000000000000 (size!1721 _keys!1940)))))

(assert (=> d!9485 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458) e!30409)))

(declare-fun b!47493 () Bool)

(assert (=> b!47493 (= e!30408 call!3723)))

(assert (= (and d!9485 (not res!27618)) b!47492))

(assert (= (and b!47492 c!6426) b!47490))

(assert (= (and b!47492 (not c!6426)) b!47491))

(assert (= (and b!47490 res!27619) b!47493))

(assert (= (or b!47493 b!47491) bm!3720))

(declare-fun m!41715 () Bool)

(assert (=> b!47490 m!41715))

(declare-fun m!41717 () Bool)

(assert (=> b!47490 m!41717))

(declare-fun m!41719 () Bool)

(assert (=> b!47490 m!41719))

(assert (=> b!47490 m!41715))

(declare-fun m!41721 () Bool)

(assert (=> b!47490 m!41721))

(declare-fun m!41723 () Bool)

(assert (=> bm!3720 m!41723))

(assert (=> b!47492 m!41715))

(assert (=> b!47492 m!41715))

(declare-fun m!41725 () Bool)

(assert (=> b!47492 m!41725))

(assert (=> b!47450 d!9485))

(declare-fun d!9487 () Bool)

(declare-fun lt!20432 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!44 (List!1276) (InoxSet (_ BitVec 64)))

(assert (=> d!9487 (= lt!20432 (select (content!44 Nil!1273) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!30416 () Bool)

(assert (=> d!9487 (= lt!20432 e!30416)))

(declare-fun res!27624 () Bool)

(assert (=> d!9487 (=> (not res!27624) (not e!30416))))

(assert (=> d!9487 (= res!27624 ((_ is Cons!1272) Nil!1273))))

(assert (=> d!9487 (= (contains!587 Nil!1273 #b0000000000000000000000000000000000000000000000000000000000000000) lt!20432)))

(declare-fun b!47498 () Bool)

(declare-fun e!30415 () Bool)

(assert (=> b!47498 (= e!30416 e!30415)))

(declare-fun res!27625 () Bool)

(assert (=> b!47498 (=> res!27625 e!30415)))

(assert (=> b!47498 (= res!27625 (= (h!1852 Nil!1273) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!47499 () Bool)

(assert (=> b!47499 (= e!30415 (contains!587 (t!4312 Nil!1273) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!9487 res!27624) b!47498))

(assert (= (and b!47498 (not res!27625)) b!47499))

(declare-fun m!41727 () Bool)

(assert (=> d!9487 m!41727))

(declare-fun m!41729 () Bool)

(assert (=> d!9487 m!41729))

(declare-fun m!41731 () Bool)

(assert (=> b!47499 m!41731))

(assert (=> b!47451 d!9487))

(declare-fun d!9489 () Bool)

(declare-fun lt!20433 () Bool)

(assert (=> d!9489 (= lt!20433 (select (content!44 Nil!1273) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!30418 () Bool)

(assert (=> d!9489 (= lt!20433 e!30418)))

(declare-fun res!27626 () Bool)

(assert (=> d!9489 (=> (not res!27626) (not e!30418))))

(assert (=> d!9489 (= res!27626 ((_ is Cons!1272) Nil!1273))))

(assert (=> d!9489 (= (contains!587 Nil!1273 #b1000000000000000000000000000000000000000000000000000000000000000) lt!20433)))

(declare-fun b!47500 () Bool)

(declare-fun e!30417 () Bool)

(assert (=> b!47500 (= e!30418 e!30417)))

(declare-fun res!27627 () Bool)

(assert (=> b!47500 (=> res!27627 e!30417)))

(assert (=> b!47500 (= res!27627 (= (h!1852 Nil!1273) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!47501 () Bool)

(assert (=> b!47501 (= e!30417 (contains!587 (t!4312 Nil!1273) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!9489 res!27626) b!47500))

(assert (= (and b!47500 (not res!27627)) b!47501))

(assert (=> d!9489 m!41727))

(declare-fun m!41733 () Bool)

(assert (=> d!9489 m!41733))

(declare-fun m!41735 () Bool)

(assert (=> b!47501 m!41735))

(assert (=> b!47446 d!9489))

(declare-fun d!9491 () Bool)

(assert (=> d!9491 (= (validMask!0 mask!2458) (and (or (= mask!2458 #b00000000000000000000000000000111) (= mask!2458 #b00000000000000000000000000001111) (= mask!2458 #b00000000000000000000000000011111) (= mask!2458 #b00000000000000000000000000111111) (= mask!2458 #b00000000000000000000000001111111) (= mask!2458 #b00000000000000000000000011111111) (= mask!2458 #b00000000000000000000000111111111) (= mask!2458 #b00000000000000000000001111111111) (= mask!2458 #b00000000000000000000011111111111) (= mask!2458 #b00000000000000000000111111111111) (= mask!2458 #b00000000000000000001111111111111) (= mask!2458 #b00000000000000000011111111111111) (= mask!2458 #b00000000000000000111111111111111) (= mask!2458 #b00000000000000001111111111111111) (= mask!2458 #b00000000000000011111111111111111) (= mask!2458 #b00000000000000111111111111111111) (= mask!2458 #b00000000000001111111111111111111) (= mask!2458 #b00000000000011111111111111111111) (= mask!2458 #b00000000000111111111111111111111) (= mask!2458 #b00000000001111111111111111111111) (= mask!2458 #b00000000011111111111111111111111) (= mask!2458 #b00000000111111111111111111111111) (= mask!2458 #b00000001111111111111111111111111) (= mask!2458 #b00000011111111111111111111111111) (= mask!2458 #b00000111111111111111111111111111) (= mask!2458 #b00001111111111111111111111111111) (= mask!2458 #b00011111111111111111111111111111) (= mask!2458 #b00111111111111111111111111111111)) (bvsle mask!2458 #b00111111111111111111111111111111)))))

(assert (=> start!7394 d!9491))

(declare-fun d!9493 () Bool)

(assert (=> d!9493 (= (array_inv!858 _values!1550) (bvsge (size!1722 _values!1550) #b00000000000000000000000000000000))))

(assert (=> start!7394 d!9493))

(declare-fun d!9495 () Bool)

(assert (=> d!9495 (= (array_inv!859 _keys!1940) (bvsge (size!1721 _keys!1940) #b00000000000000000000000000000000))))

(assert (=> start!7394 d!9495))

(declare-fun d!9497 () Bool)

(declare-fun res!27632 () Bool)

(declare-fun e!30423 () Bool)

(assert (=> d!9497 (=> res!27632 e!30423)))

(assert (=> d!9497 (= res!27632 ((_ is Nil!1273) Nil!1273))))

(assert (=> d!9497 (= (noDuplicate!37 Nil!1273) e!30423)))

(declare-fun b!47506 () Bool)

(declare-fun e!30424 () Bool)

(assert (=> b!47506 (= e!30423 e!30424)))

(declare-fun res!27633 () Bool)

(assert (=> b!47506 (=> (not res!27633) (not e!30424))))

(assert (=> b!47506 (= res!27633 (not (contains!587 (t!4312 Nil!1273) (h!1852 Nil!1273))))))

(declare-fun b!47507 () Bool)

(assert (=> b!47507 (= e!30424 (noDuplicate!37 (t!4312 Nil!1273)))))

(assert (= (and d!9497 (not res!27632)) b!47506))

(assert (= (and b!47506 res!27633) b!47507))

(declare-fun m!41737 () Bool)

(assert (=> b!47506 m!41737))

(declare-fun m!41739 () Bool)

(assert (=> b!47507 m!41739))

(assert (=> b!47452 d!9497))

(declare-fun b!47514 () Bool)

(declare-fun e!30429 () Bool)

(assert (=> b!47514 (= e!30429 tp_is_empty!2031)))

(declare-fun mapNonEmpty!2093 () Bool)

(declare-fun mapRes!2093 () Bool)

(declare-fun tp!6242 () Bool)

(assert (=> mapNonEmpty!2093 (= mapRes!2093 (and tp!6242 e!30429))))

(declare-fun mapRest!2093 () (Array (_ BitVec 32) ValueCell!726))

(declare-fun mapValue!2093 () ValueCell!726)

(declare-fun mapKey!2093 () (_ BitVec 32))

(assert (=> mapNonEmpty!2093 (= mapRest!2087 (store mapRest!2093 mapKey!2093 mapValue!2093))))

(declare-fun b!47515 () Bool)

(declare-fun e!30430 () Bool)

(assert (=> b!47515 (= e!30430 tp_is_empty!2031)))

(declare-fun mapIsEmpty!2093 () Bool)

(assert (=> mapIsEmpty!2093 mapRes!2093))

(declare-fun condMapEmpty!2093 () Bool)

(declare-fun mapDefault!2093 () ValueCell!726)

(assert (=> mapNonEmpty!2087 (= condMapEmpty!2093 (= mapRest!2087 ((as const (Array (_ BitVec 32) ValueCell!726)) mapDefault!2093)))))

(assert (=> mapNonEmpty!2087 (= tp!6236 (and e!30430 mapRes!2093))))

(assert (= (and mapNonEmpty!2087 condMapEmpty!2093) mapIsEmpty!2093))

(assert (= (and mapNonEmpty!2087 (not condMapEmpty!2093)) mapNonEmpty!2093))

(assert (= (and mapNonEmpty!2093 ((_ is ValueCellFull!726) mapValue!2093)) b!47514))

(assert (= (and mapNonEmpty!2087 ((_ is ValueCellFull!726) mapDefault!2093)) b!47515))

(declare-fun m!41741 () Bool)

(assert (=> mapNonEmpty!2093 m!41741))

(check-sat (not b!47507) (not b!47490) (not d!9489) (not b!47492) (not mapNonEmpty!2093) tp_is_empty!2031 (not b!47506) (not b!47501) (not d!9487) (not bm!3720) (not b!47499))
(check-sat)
