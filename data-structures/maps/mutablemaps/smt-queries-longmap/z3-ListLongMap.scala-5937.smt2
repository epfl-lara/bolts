; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77456 () Bool)

(assert start!77456)

(declare-fun b!902346 () Bool)

(declare-fun e!505404 () Bool)

(declare-datatypes ((List!17963 0))(
  ( (Nil!17960) (Cons!17959 (h!19105 (_ BitVec 64)) (t!25354 List!17963)) )
))
(declare-fun contains!4434 (List!17963 (_ BitVec 64)) Bool)

(assert (=> b!902346 (= e!505404 (contains!4434 Nil!17960 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!902347 () Bool)

(declare-fun e!505400 () Bool)

(declare-fun tp_is_empty!18453 () Bool)

(assert (=> b!902347 (= e!505400 tp_is_empty!18453)))

(declare-fun b!902348 () Bool)

(declare-fun res!609049 () Bool)

(declare-fun e!505403 () Bool)

(assert (=> b!902348 (=> (not res!609049) (not e!505403))))

(declare-fun noDuplicate!1328 (List!17963) Bool)

(assert (=> b!902348 (= res!609049 (noDuplicate!1328 Nil!17960))))

(declare-fun b!902349 () Bool)

(assert (=> b!902349 (= e!505403 e!505404)))

(declare-fun res!609048 () Bool)

(assert (=> b!902349 (=> res!609048 e!505404)))

(assert (=> b!902349 (= res!609048 (contains!4434 Nil!17960 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!902350 () Bool)

(declare-fun res!609050 () Bool)

(assert (=> b!902350 (=> (not res!609050) (not e!505403))))

(declare-datatypes ((array!52956 0))(
  ( (array!52957 (arr!25435 (Array (_ BitVec 32) (_ BitVec 64))) (size!25895 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52956)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52956 (_ BitVec 32)) Bool)

(assert (=> b!902350 (= res!609050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!609051 () Bool)

(assert (=> start!77456 (=> (not res!609051) (not e!505403))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77456 (= res!609051 (validMask!0 mask!1756))))

(assert (=> start!77456 e!505403))

(assert (=> start!77456 true))

(declare-datatypes ((V!29569 0))(
  ( (V!29570 (val!9277 Int)) )
))
(declare-datatypes ((ValueCell!8745 0))(
  ( (ValueCellFull!8745 (v!11781 V!29569)) (EmptyCell!8745) )
))
(declare-datatypes ((array!52958 0))(
  ( (array!52959 (arr!25436 (Array (_ BitVec 32) ValueCell!8745)) (size!25896 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52958)

(declare-fun e!505399 () Bool)

(declare-fun array_inv!19920 (array!52958) Bool)

(assert (=> start!77456 (and (array_inv!19920 _values!1152) e!505399)))

(declare-fun array_inv!19921 (array!52956) Bool)

(assert (=> start!77456 (array_inv!19921 _keys!1386)))

(declare-fun b!902351 () Bool)

(declare-fun res!609052 () Bool)

(assert (=> b!902351 (=> (not res!609052) (not e!505403))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!902351 (= res!609052 (and (= (size!25896 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25895 _keys!1386) (size!25896 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!29386 () Bool)

(declare-fun mapRes!29386 () Bool)

(declare-fun tp!56446 () Bool)

(declare-fun e!505401 () Bool)

(assert (=> mapNonEmpty!29386 (= mapRes!29386 (and tp!56446 e!505401))))

(declare-fun mapValue!29386 () ValueCell!8745)

(declare-fun mapRest!29386 () (Array (_ BitVec 32) ValueCell!8745))

(declare-fun mapKey!29386 () (_ BitVec 32))

(assert (=> mapNonEmpty!29386 (= (arr!25436 _values!1152) (store mapRest!29386 mapKey!29386 mapValue!29386))))

(declare-fun mapIsEmpty!29386 () Bool)

(assert (=> mapIsEmpty!29386 mapRes!29386))

(declare-fun b!902352 () Bool)

(assert (=> b!902352 (= e!505399 (and e!505400 mapRes!29386))))

(declare-fun condMapEmpty!29386 () Bool)

(declare-fun mapDefault!29386 () ValueCell!8745)

(assert (=> b!902352 (= condMapEmpty!29386 (= (arr!25436 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8745)) mapDefault!29386)))))

(declare-fun b!902353 () Bool)

(assert (=> b!902353 (= e!505401 tp_is_empty!18453)))

(declare-fun b!902354 () Bool)

(declare-fun res!609047 () Bool)

(assert (=> b!902354 (=> (not res!609047) (not e!505403))))

(assert (=> b!902354 (= res!609047 (and (bvsle #b00000000000000000000000000000000 (size!25895 _keys!1386)) (bvslt (size!25895 _keys!1386) #b01111111111111111111111111111111)))))

(assert (= (and start!77456 res!609051) b!902351))

(assert (= (and b!902351 res!609052) b!902350))

(assert (= (and b!902350 res!609050) b!902354))

(assert (= (and b!902354 res!609047) b!902348))

(assert (= (and b!902348 res!609049) b!902349))

(assert (= (and b!902349 (not res!609048)) b!902346))

(assert (= (and b!902352 condMapEmpty!29386) mapIsEmpty!29386))

(assert (= (and b!902352 (not condMapEmpty!29386)) mapNonEmpty!29386))

(get-info :version)

(assert (= (and mapNonEmpty!29386 ((_ is ValueCellFull!8745) mapValue!29386)) b!902353))

(assert (= (and b!902352 ((_ is ValueCellFull!8745) mapDefault!29386)) b!902347))

(assert (= start!77456 b!902352))

(declare-fun m!838427 () Bool)

(assert (=> start!77456 m!838427))

(declare-fun m!838429 () Bool)

(assert (=> start!77456 m!838429))

(declare-fun m!838431 () Bool)

(assert (=> start!77456 m!838431))

(declare-fun m!838433 () Bool)

(assert (=> b!902348 m!838433))

(declare-fun m!838435 () Bool)

(assert (=> b!902346 m!838435))

(declare-fun m!838437 () Bool)

(assert (=> mapNonEmpty!29386 m!838437))

(declare-fun m!838439 () Bool)

(assert (=> b!902350 m!838439))

(declare-fun m!838441 () Bool)

(assert (=> b!902349 m!838441))

(check-sat tp_is_empty!18453 (not start!77456) (not b!902346) (not b!902350) (not b!902349) (not mapNonEmpty!29386) (not b!902348))
(check-sat)
(get-model)

(declare-fun d!111883 () Bool)

(assert (=> d!111883 (= (validMask!0 mask!1756) (and (or (= mask!1756 #b00000000000000000000000000000111) (= mask!1756 #b00000000000000000000000000001111) (= mask!1756 #b00000000000000000000000000011111) (= mask!1756 #b00000000000000000000000000111111) (= mask!1756 #b00000000000000000000000001111111) (= mask!1756 #b00000000000000000000000011111111) (= mask!1756 #b00000000000000000000000111111111) (= mask!1756 #b00000000000000000000001111111111) (= mask!1756 #b00000000000000000000011111111111) (= mask!1756 #b00000000000000000000111111111111) (= mask!1756 #b00000000000000000001111111111111) (= mask!1756 #b00000000000000000011111111111111) (= mask!1756 #b00000000000000000111111111111111) (= mask!1756 #b00000000000000001111111111111111) (= mask!1756 #b00000000000000011111111111111111) (= mask!1756 #b00000000000000111111111111111111) (= mask!1756 #b00000000000001111111111111111111) (= mask!1756 #b00000000000011111111111111111111) (= mask!1756 #b00000000000111111111111111111111) (= mask!1756 #b00000000001111111111111111111111) (= mask!1756 #b00000000011111111111111111111111) (= mask!1756 #b00000000111111111111111111111111) (= mask!1756 #b00000001111111111111111111111111) (= mask!1756 #b00000011111111111111111111111111) (= mask!1756 #b00000111111111111111111111111111) (= mask!1756 #b00001111111111111111111111111111) (= mask!1756 #b00011111111111111111111111111111) (= mask!1756 #b00111111111111111111111111111111)) (bvsle mask!1756 #b00111111111111111111111111111111)))))

(assert (=> start!77456 d!111883))

(declare-fun d!111885 () Bool)

(assert (=> d!111885 (= (array_inv!19920 _values!1152) (bvsge (size!25896 _values!1152) #b00000000000000000000000000000000))))

(assert (=> start!77456 d!111885))

(declare-fun d!111887 () Bool)

(assert (=> d!111887 (= (array_inv!19921 _keys!1386) (bvsge (size!25895 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> start!77456 d!111887))

(declare-fun bm!40243 () Bool)

(declare-fun call!40246 () Bool)

(assert (=> bm!40243 (= call!40246 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1386 mask!1756))))

(declare-fun b!902391 () Bool)

(declare-fun e!505430 () Bool)

(assert (=> b!902391 (= e!505430 call!40246)))

(declare-fun b!902392 () Bool)

(declare-fun e!505431 () Bool)

(assert (=> b!902392 (= e!505431 call!40246)))

(declare-fun b!902393 () Bool)

(assert (=> b!902393 (= e!505431 e!505430)))

(declare-fun lt!407818 () (_ BitVec 64))

(assert (=> b!902393 (= lt!407818 (select (arr!25435 _keys!1386) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30609 0))(
  ( (Unit!30610) )
))
(declare-fun lt!407817 () Unit!30609)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52956 (_ BitVec 64) (_ BitVec 32)) Unit!30609)

(assert (=> b!902393 (= lt!407817 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1386 lt!407818 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!52956 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!902393 (arrayContainsKey!0 _keys!1386 lt!407818 #b00000000000000000000000000000000)))

(declare-fun lt!407816 () Unit!30609)

(assert (=> b!902393 (= lt!407816 lt!407817)))

(declare-fun res!609076 () Bool)

(declare-datatypes ((SeekEntryResult!8948 0))(
  ( (MissingZero!8948 (index!38162 (_ BitVec 32))) (Found!8948 (index!38163 (_ BitVec 32))) (Intermediate!8948 (undefined!9760 Bool) (index!38164 (_ BitVec 32)) (x!76912 (_ BitVec 32))) (Undefined!8948) (MissingVacant!8948 (index!38165 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52956 (_ BitVec 32)) SeekEntryResult!8948)

(assert (=> b!902393 (= res!609076 (= (seekEntryOrOpen!0 (select (arr!25435 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756) (Found!8948 #b00000000000000000000000000000000)))))

(assert (=> b!902393 (=> (not res!609076) (not e!505430))))

(declare-fun d!111889 () Bool)

(declare-fun res!609075 () Bool)

(declare-fun e!505429 () Bool)

(assert (=> d!111889 (=> res!609075 e!505429)))

(assert (=> d!111889 (= res!609075 (bvsge #b00000000000000000000000000000000 (size!25895 _keys!1386)))))

(assert (=> d!111889 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756) e!505429)))

(declare-fun b!902390 () Bool)

(assert (=> b!902390 (= e!505429 e!505431)))

(declare-fun c!95560 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!902390 (= c!95560 (validKeyInArray!0 (select (arr!25435 _keys!1386) #b00000000000000000000000000000000)))))

(assert (= (and d!111889 (not res!609075)) b!902390))

(assert (= (and b!902390 c!95560) b!902393))

(assert (= (and b!902390 (not c!95560)) b!902392))

(assert (= (and b!902393 res!609076) b!902391))

(assert (= (or b!902391 b!902392) bm!40243))

(declare-fun m!838459 () Bool)

(assert (=> bm!40243 m!838459))

(declare-fun m!838461 () Bool)

(assert (=> b!902393 m!838461))

(declare-fun m!838463 () Bool)

(assert (=> b!902393 m!838463))

(declare-fun m!838465 () Bool)

(assert (=> b!902393 m!838465))

(assert (=> b!902393 m!838461))

(declare-fun m!838467 () Bool)

(assert (=> b!902393 m!838467))

(assert (=> b!902390 m!838461))

(assert (=> b!902390 m!838461))

(declare-fun m!838469 () Bool)

(assert (=> b!902390 m!838469))

(assert (=> b!902350 d!111889))

(declare-fun d!111891 () Bool)

(declare-fun lt!407821 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!404 (List!17963) (InoxSet (_ BitVec 64)))

(assert (=> d!111891 (= lt!407821 (select (content!404 Nil!17960) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!505436 () Bool)

(assert (=> d!111891 (= lt!407821 e!505436)))

(declare-fun res!609081 () Bool)

(assert (=> d!111891 (=> (not res!609081) (not e!505436))))

(assert (=> d!111891 (= res!609081 ((_ is Cons!17959) Nil!17960))))

(assert (=> d!111891 (= (contains!4434 Nil!17960 #b1000000000000000000000000000000000000000000000000000000000000000) lt!407821)))

(declare-fun b!902398 () Bool)

(declare-fun e!505437 () Bool)

(assert (=> b!902398 (= e!505436 e!505437)))

(declare-fun res!609082 () Bool)

(assert (=> b!902398 (=> res!609082 e!505437)))

(assert (=> b!902398 (= res!609082 (= (h!19105 Nil!17960) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!902399 () Bool)

(assert (=> b!902399 (= e!505437 (contains!4434 (t!25354 Nil!17960) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!111891 res!609081) b!902398))

(assert (= (and b!902398 (not res!609082)) b!902399))

(declare-fun m!838471 () Bool)

(assert (=> d!111891 m!838471))

(declare-fun m!838473 () Bool)

(assert (=> d!111891 m!838473))

(declare-fun m!838475 () Bool)

(assert (=> b!902399 m!838475))

(assert (=> b!902346 d!111891))

(declare-fun d!111893 () Bool)

(declare-fun res!609087 () Bool)

(declare-fun e!505442 () Bool)

(assert (=> d!111893 (=> res!609087 e!505442)))

(assert (=> d!111893 (= res!609087 ((_ is Nil!17960) Nil!17960))))

(assert (=> d!111893 (= (noDuplicate!1328 Nil!17960) e!505442)))

(declare-fun b!902404 () Bool)

(declare-fun e!505443 () Bool)

(assert (=> b!902404 (= e!505442 e!505443)))

(declare-fun res!609088 () Bool)

(assert (=> b!902404 (=> (not res!609088) (not e!505443))))

(assert (=> b!902404 (= res!609088 (not (contains!4434 (t!25354 Nil!17960) (h!19105 Nil!17960))))))

(declare-fun b!902405 () Bool)

(assert (=> b!902405 (= e!505443 (noDuplicate!1328 (t!25354 Nil!17960)))))

(assert (= (and d!111893 (not res!609087)) b!902404))

(assert (= (and b!902404 res!609088) b!902405))

(declare-fun m!838477 () Bool)

(assert (=> b!902404 m!838477))

(declare-fun m!838479 () Bool)

(assert (=> b!902405 m!838479))

(assert (=> b!902348 d!111893))

(declare-fun d!111895 () Bool)

(declare-fun lt!407822 () Bool)

(assert (=> d!111895 (= lt!407822 (select (content!404 Nil!17960) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!505444 () Bool)

(assert (=> d!111895 (= lt!407822 e!505444)))

(declare-fun res!609089 () Bool)

(assert (=> d!111895 (=> (not res!609089) (not e!505444))))

(assert (=> d!111895 (= res!609089 ((_ is Cons!17959) Nil!17960))))

(assert (=> d!111895 (= (contains!4434 Nil!17960 #b0000000000000000000000000000000000000000000000000000000000000000) lt!407822)))

(declare-fun b!902406 () Bool)

(declare-fun e!505445 () Bool)

(assert (=> b!902406 (= e!505444 e!505445)))

(declare-fun res!609090 () Bool)

(assert (=> b!902406 (=> res!609090 e!505445)))

(assert (=> b!902406 (= res!609090 (= (h!19105 Nil!17960) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!902407 () Bool)

(assert (=> b!902407 (= e!505445 (contains!4434 (t!25354 Nil!17960) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!111895 res!609089) b!902406))

(assert (= (and b!902406 (not res!609090)) b!902407))

(assert (=> d!111895 m!838471))

(declare-fun m!838481 () Bool)

(assert (=> d!111895 m!838481))

(declare-fun m!838483 () Bool)

(assert (=> b!902407 m!838483))

(assert (=> b!902349 d!111895))

(declare-fun mapIsEmpty!29392 () Bool)

(declare-fun mapRes!29392 () Bool)

(assert (=> mapIsEmpty!29392 mapRes!29392))

(declare-fun condMapEmpty!29392 () Bool)

(declare-fun mapDefault!29392 () ValueCell!8745)

(assert (=> mapNonEmpty!29386 (= condMapEmpty!29392 (= mapRest!29386 ((as const (Array (_ BitVec 32) ValueCell!8745)) mapDefault!29392)))))

(declare-fun e!505450 () Bool)

(assert (=> mapNonEmpty!29386 (= tp!56446 (and e!505450 mapRes!29392))))

(declare-fun mapNonEmpty!29392 () Bool)

(declare-fun tp!56452 () Bool)

(declare-fun e!505451 () Bool)

(assert (=> mapNonEmpty!29392 (= mapRes!29392 (and tp!56452 e!505451))))

(declare-fun mapValue!29392 () ValueCell!8745)

(declare-fun mapRest!29392 () (Array (_ BitVec 32) ValueCell!8745))

(declare-fun mapKey!29392 () (_ BitVec 32))

(assert (=> mapNonEmpty!29392 (= mapRest!29386 (store mapRest!29392 mapKey!29392 mapValue!29392))))

(declare-fun b!902414 () Bool)

(assert (=> b!902414 (= e!505451 tp_is_empty!18453)))

(declare-fun b!902415 () Bool)

(assert (=> b!902415 (= e!505450 tp_is_empty!18453)))

(assert (= (and mapNonEmpty!29386 condMapEmpty!29392) mapIsEmpty!29392))

(assert (= (and mapNonEmpty!29386 (not condMapEmpty!29392)) mapNonEmpty!29392))

(assert (= (and mapNonEmpty!29392 ((_ is ValueCellFull!8745) mapValue!29392)) b!902414))

(assert (= (and mapNonEmpty!29386 ((_ is ValueCellFull!8745) mapDefault!29392)) b!902415))

(declare-fun m!838485 () Bool)

(assert (=> mapNonEmpty!29392 m!838485))

(check-sat (not bm!40243) (not b!902407) (not mapNonEmpty!29392) (not b!902390) (not d!111895) (not b!902405) (not b!902393) (not b!902404) (not b!902399) (not d!111891) tp_is_empty!18453)
(check-sat)
