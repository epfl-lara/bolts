; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251556 () Bool)

(assert start!251556)

(declare-fun b!2594318 () Bool)

(assert (=> b!2594318 true))

(declare-fun b!2594311 () Bool)

(declare-fun e!1636807 () Bool)

(assert (=> b!2594311 (= e!1636807 true)))

(declare-fun res!1091463 () Bool)

(declare-fun e!1636809 () Bool)

(assert (=> start!251556 (=> (not res!1091463) (not e!1636809))))

(declare-datatypes ((B!2133 0))(
  ( (B!2134 (val!9534 Int)) )
))
(declare-datatypes ((List!29967 0))(
  ( (Nil!29867) (Cons!29867 (h!35287 B!2133) (t!212980 List!29967)) )
))
(declare-fun l1!1546 () List!29967)

(declare-fun noDuplicate!415 (List!29967) Bool)

(assert (=> start!251556 (= res!1091463 (noDuplicate!415 l1!1546))))

(assert (=> start!251556 e!1636809))

(declare-fun e!1636811 () Bool)

(assert (=> start!251556 e!1636811))

(declare-fun e!1636810 () Bool)

(assert (=> start!251556 e!1636810))

(declare-fun b!2594312 () Bool)

(declare-fun res!1091469 () Bool)

(declare-fun e!1636808 () Bool)

(assert (=> b!2594312 (=> (not res!1091469) (not e!1636808))))

(get-info :version)

(assert (=> b!2594312 (= res!1091469 ((_ is Cons!29867) l1!1546))))

(declare-fun b!2594313 () Bool)

(declare-fun res!1091464 () Bool)

(assert (=> b!2594313 (=> res!1091464 e!1636807)))

(declare-fun lt!913308 () List!29967)

(declare-fun contains!5415 (List!29967 B!2133) Bool)

(assert (=> b!2594313 (= res!1091464 (contains!5415 lt!913308 (h!35287 l1!1546)))))

(declare-fun b!2594314 () Bool)

(declare-fun res!1091468 () Bool)

(assert (=> b!2594314 (=> res!1091468 e!1636807)))

(declare-fun head!5884 (List!29967) B!2133)

(assert (=> b!2594314 (= res!1091468 (not (= (h!35287 l1!1546) (head!5884 l1!1546))))))

(declare-fun b!2594315 () Bool)

(declare-fun tp_is_empty!13413 () Bool)

(declare-fun tp!822976 () Bool)

(assert (=> b!2594315 (= e!1636810 (and tp_is_empty!13413 tp!822976))))

(declare-fun b!2594316 () Bool)

(declare-fun res!1091461 () Bool)

(assert (=> b!2594316 (=> (not res!1091461) (not e!1636808))))

(declare-fun l2!1515 () List!29967)

(assert (=> b!2594316 (= res!1091461 (contains!5415 l2!1515 (h!35287 l1!1546)))))

(declare-fun b!2594317 () Bool)

(assert (=> b!2594317 (= e!1636809 e!1636808)))

(declare-fun res!1091462 () Bool)

(assert (=> b!2594317 (=> (not res!1091462) (not e!1636808))))

(declare-fun lt!913311 () Int)

(declare-fun lt!913309 () Int)

(assert (=> b!2594317 (= res!1091462 (> lt!913311 lt!913309))))

(declare-fun size!23172 (List!29967) Int)

(assert (=> b!2594317 (= lt!913309 (size!23172 l2!1515))))

(assert (=> b!2594317 (= lt!913311 (size!23172 l1!1546))))

(declare-fun res!1091465 () Bool)

(assert (=> b!2594318 (=> (not res!1091465) (not e!1636808))))

(declare-fun lambda!96478 () Int)

(declare-fun forall!6104 (List!29967 Int) Bool)

(assert (=> b!2594318 (= res!1091465 (forall!6104 l2!1515 lambda!96478))))

(declare-fun b!2594319 () Bool)

(assert (=> b!2594319 (= e!1636808 (not e!1636807))))

(declare-fun res!1091470 () Bool)

(assert (=> b!2594319 (=> res!1091470 e!1636807)))

(assert (=> b!2594319 (= res!1091470 (not (forall!6104 lt!913308 lambda!96478)))))

(assert (=> b!2594319 (= (size!23172 lt!913308) (- lt!913309 1))))

(declare-datatypes ((Unit!43888 0))(
  ( (Unit!43889) )
))
(declare-fun lt!913312 () Unit!43888)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!6 (List!29967 B!2133) Unit!43888)

(assert (=> b!2594319 (= lt!913312 (lemmaRemoveElmtNoDuplicateRemoveOne!6 l2!1515 (h!35287 l1!1546)))))

(assert (=> b!2594319 (forall!6104 lt!913308 lambda!96478)))

(declare-fun lt!913310 () Unit!43888)

(declare-fun lemmaRemoveElmtMaintainsForall!8 (List!29967 B!2133 Int) Unit!43888)

(assert (=> b!2594319 (= lt!913310 (lemmaRemoveElmtMaintainsForall!8 l2!1515 (h!35287 l1!1546) lambda!96478))))

(assert (=> b!2594319 (noDuplicate!415 lt!913308)))

(declare-fun -!144 (List!29967 B!2133) List!29967)

(assert (=> b!2594319 (= lt!913308 (-!144 l2!1515 (h!35287 l1!1546)))))

(declare-fun lt!913313 () Unit!43888)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!10 (List!29967 B!2133) Unit!43888)

(assert (=> b!2594319 (= lt!913313 (lemmaRemoveElmtMaintainsNoDuplicate!10 l2!1515 (h!35287 l1!1546)))))

(declare-fun b!2594320 () Bool)

(declare-fun tp!822975 () Bool)

(assert (=> b!2594320 (= e!1636811 (and tp_is_empty!13413 tp!822975))))

(declare-fun b!2594321 () Bool)

(declare-fun res!1091467 () Bool)

(assert (=> b!2594321 (=> (not res!1091467) (not e!1636809))))

(assert (=> b!2594321 (= res!1091467 (noDuplicate!415 l2!1515))))

(declare-fun b!2594322 () Bool)

(declare-fun res!1091466 () Bool)

(assert (=> b!2594322 (=> res!1091466 e!1636807)))

(assert (=> b!2594322 (= res!1091466 (not (forall!6104 lt!913308 lambda!96478)))))

(declare-fun b!2594323 () Bool)

(declare-fun res!1091471 () Bool)

(assert (=> b!2594323 (=> res!1091471 e!1636807)))

(declare-fun isEmpty!17123 (List!29967) Bool)

(assert (=> b!2594323 (= res!1091471 (isEmpty!17123 l1!1546))))

(assert (= (and start!251556 res!1091463) b!2594321))

(assert (= (and b!2594321 res!1091467) b!2594317))

(assert (= (and b!2594317 res!1091462) b!2594318))

(assert (= (and b!2594318 res!1091465) b!2594312))

(assert (= (and b!2594312 res!1091469) b!2594316))

(assert (= (and b!2594316 res!1091461) b!2594319))

(assert (= (and b!2594319 (not res!1091470)) b!2594323))

(assert (= (and b!2594323 (not res!1091471)) b!2594322))

(assert (= (and b!2594322 (not res!1091466)) b!2594314))

(assert (= (and b!2594314 (not res!1091468)) b!2594313))

(assert (= (and b!2594313 (not res!1091464)) b!2594311))

(assert (= (and start!251556 ((_ is Cons!29867) l1!1546)) b!2594320))

(assert (= (and start!251556 ((_ is Cons!29867) l2!1515)) b!2594315))

(declare-fun m!2930337 () Bool)

(assert (=> b!2594313 m!2930337))

(declare-fun m!2930339 () Bool)

(assert (=> b!2594319 m!2930339))

(declare-fun m!2930341 () Bool)

(assert (=> b!2594319 m!2930341))

(declare-fun m!2930343 () Bool)

(assert (=> b!2594319 m!2930343))

(declare-fun m!2930345 () Bool)

(assert (=> b!2594319 m!2930345))

(declare-fun m!2930347 () Bool)

(assert (=> b!2594319 m!2930347))

(assert (=> b!2594319 m!2930347))

(declare-fun m!2930349 () Bool)

(assert (=> b!2594319 m!2930349))

(declare-fun m!2930351 () Bool)

(assert (=> b!2594319 m!2930351))

(declare-fun m!2930353 () Bool)

(assert (=> b!2594317 m!2930353))

(declare-fun m!2930355 () Bool)

(assert (=> b!2594317 m!2930355))

(declare-fun m!2930357 () Bool)

(assert (=> b!2594314 m!2930357))

(assert (=> b!2594322 m!2930347))

(declare-fun m!2930359 () Bool)

(assert (=> b!2594318 m!2930359))

(declare-fun m!2930361 () Bool)

(assert (=> b!2594321 m!2930361))

(declare-fun m!2930363 () Bool)

(assert (=> b!2594316 m!2930363))

(declare-fun m!2930365 () Bool)

(assert (=> start!251556 m!2930365))

(declare-fun m!2930367 () Bool)

(assert (=> b!2594323 m!2930367))

(check-sat (not b!2594316) (not b!2594320) (not b!2594322) (not b!2594319) (not start!251556) (not b!2594323) (not b!2594315) (not b!2594313) tp_is_empty!13413 (not b!2594318) (not b!2594317) (not b!2594314) (not b!2594321))
(check-sat)
