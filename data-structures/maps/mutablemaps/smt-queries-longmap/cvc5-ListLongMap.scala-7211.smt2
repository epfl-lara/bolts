; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92364 () Bool)

(assert start!92364)

(declare-fun b!1049376 () Bool)

(declare-fun res!698614 () Bool)

(declare-fun e!595418 () Bool)

(assert (=> b!1049376 (=> (not res!698614) (not e!595418))))

(declare-datatypes ((array!66113 0))(
  ( (array!66114 (arr!31792 (Array (_ BitVec 32) (_ BitVec 64))) (size!32329 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66113)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049376 (= res!698614 (= (select (arr!31792 a!3488) i!1381) k!2747))))

(declare-fun b!1049377 () Bool)

(declare-fun e!595417 () Bool)

(declare-fun e!595420 () Bool)

(assert (=> b!1049377 (= e!595417 e!595420)))

(declare-fun res!698620 () Bool)

(assert (=> b!1049377 (=> res!698620 e!595420)))

(declare-fun lt!463487 () (_ BitVec 32))

(assert (=> b!1049377 (= res!698620 (bvsle lt!463487 i!1381))))

(declare-fun res!698616 () Bool)

(assert (=> start!92364 (=> (not res!698616) (not e!595418))))

(assert (=> start!92364 (= res!698616 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32329 a!3488)) (bvslt (size!32329 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92364 e!595418))

(assert (=> start!92364 true))

(declare-fun array_inv!24414 (array!66113) Bool)

(assert (=> start!92364 (array_inv!24414 a!3488)))

(declare-fun b!1049378 () Bool)

(declare-fun arrayContainsKey!0 (array!66113 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049378 (= e!595420 (arrayContainsKey!0 a!3488 k!2747 lt!463487))))

(declare-fun b!1049379 () Bool)

(declare-fun res!698618 () Bool)

(assert (=> b!1049379 (=> (not res!698618) (not e!595418))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049379 (= res!698618 (validKeyInArray!0 k!2747))))

(declare-fun b!1049380 () Bool)

(declare-fun e!595424 () Bool)

(declare-fun e!595423 () Bool)

(assert (=> b!1049380 (= e!595424 e!595423)))

(declare-fun res!698617 () Bool)

(assert (=> b!1049380 (=> res!698617 e!595423)))

(assert (=> b!1049380 (= res!698617 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32329 a!3488)))))

(assert (=> b!1049380 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34313 0))(
  ( (Unit!34314) )
))
(declare-fun lt!463485 () Unit!34313)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66113 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34313)

(assert (=> b!1049380 (= lt!463485 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463487 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22235 0))(
  ( (Nil!22232) (Cons!22231 (h!23440 (_ BitVec 64)) (t!31549 List!22235)) )
))
(declare-fun arrayNoDuplicates!0 (array!66113 (_ BitVec 32) List!22235) Bool)

(assert (=> b!1049380 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22232)))

(declare-fun lt!463486 () Unit!34313)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66113 (_ BitVec 32) (_ BitVec 32)) Unit!34313)

(assert (=> b!1049380 (= lt!463486 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049381 () Bool)

(declare-fun res!698612 () Bool)

(assert (=> b!1049381 (=> (not res!698612) (not e!595418))))

(assert (=> b!1049381 (= res!698612 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22232))))

(declare-fun b!1049382 () Bool)

(declare-fun e!595419 () Bool)

(declare-fun e!595422 () Bool)

(assert (=> b!1049382 (= e!595419 e!595422)))

(declare-fun res!698611 () Bool)

(assert (=> b!1049382 (=> (not res!698611) (not e!595422))))

(assert (=> b!1049382 (= res!698611 (not (= lt!463487 i!1381)))))

(declare-fun lt!463489 () array!66113)

(declare-fun arrayScanForKey!0 (array!66113 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049382 (= lt!463487 (arrayScanForKey!0 lt!463489 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049383 () Bool)

(assert (=> b!1049383 (= e!595418 e!595419)))

(declare-fun res!698622 () Bool)

(assert (=> b!1049383 (=> (not res!698622) (not e!595419))))

(assert (=> b!1049383 (= res!698622 (arrayContainsKey!0 lt!463489 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049383 (= lt!463489 (array!66114 (store (arr!31792 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32329 a!3488)))))

(declare-fun b!1049384 () Bool)

(declare-fun res!698621 () Bool)

(assert (=> b!1049384 (=> res!698621 e!595423)))

(declare-fun contains!6127 (List!22235 (_ BitVec 64)) Bool)

(assert (=> b!1049384 (= res!698621 (contains!6127 Nil!22232 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049385 () Bool)

(assert (=> b!1049385 (= e!595423 true)))

(declare-fun lt!463488 () Bool)

(assert (=> b!1049385 (= lt!463488 (contains!6127 Nil!22232 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049386 () Bool)

(assert (=> b!1049386 (= e!595422 (not e!595424))))

(declare-fun res!698613 () Bool)

(assert (=> b!1049386 (=> res!698613 e!595424)))

(assert (=> b!1049386 (= res!698613 (bvsle lt!463487 i!1381))))

(assert (=> b!1049386 e!595417))

(declare-fun res!698619 () Bool)

(assert (=> b!1049386 (=> (not res!698619) (not e!595417))))

(assert (=> b!1049386 (= res!698619 (= (select (store (arr!31792 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463487) k!2747))))

(declare-fun b!1049387 () Bool)

(declare-fun res!698615 () Bool)

(assert (=> b!1049387 (=> res!698615 e!595423)))

(declare-fun noDuplicate!1512 (List!22235) Bool)

(assert (=> b!1049387 (= res!698615 (not (noDuplicate!1512 Nil!22232)))))

(assert (= (and start!92364 res!698616) b!1049381))

(assert (= (and b!1049381 res!698612) b!1049379))

(assert (= (and b!1049379 res!698618) b!1049376))

(assert (= (and b!1049376 res!698614) b!1049383))

(assert (= (and b!1049383 res!698622) b!1049382))

(assert (= (and b!1049382 res!698611) b!1049386))

(assert (= (and b!1049386 res!698619) b!1049377))

(assert (= (and b!1049377 (not res!698620)) b!1049378))

(assert (= (and b!1049386 (not res!698613)) b!1049380))

(assert (= (and b!1049380 (not res!698617)) b!1049387))

(assert (= (and b!1049387 (not res!698615)) b!1049384))

(assert (= (and b!1049384 (not res!698621)) b!1049385))

(declare-fun m!970281 () Bool)

(assert (=> start!92364 m!970281))

(declare-fun m!970283 () Bool)

(assert (=> b!1049386 m!970283))

(declare-fun m!970285 () Bool)

(assert (=> b!1049386 m!970285))

(declare-fun m!970287 () Bool)

(assert (=> b!1049387 m!970287))

(declare-fun m!970289 () Bool)

(assert (=> b!1049380 m!970289))

(declare-fun m!970291 () Bool)

(assert (=> b!1049380 m!970291))

(declare-fun m!970293 () Bool)

(assert (=> b!1049380 m!970293))

(declare-fun m!970295 () Bool)

(assert (=> b!1049380 m!970295))

(declare-fun m!970297 () Bool)

(assert (=> b!1049385 m!970297))

(declare-fun m!970299 () Bool)

(assert (=> b!1049376 m!970299))

(declare-fun m!970301 () Bool)

(assert (=> b!1049379 m!970301))

(declare-fun m!970303 () Bool)

(assert (=> b!1049378 m!970303))

(declare-fun m!970305 () Bool)

(assert (=> b!1049381 m!970305))

(declare-fun m!970307 () Bool)

(assert (=> b!1049384 m!970307))

(declare-fun m!970309 () Bool)

(assert (=> b!1049382 m!970309))

(declare-fun m!970311 () Bool)

(assert (=> b!1049383 m!970311))

(assert (=> b!1049383 m!970283))

(push 1)

