; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92754 () Bool)

(assert start!92754)

(declare-fun b!1053371 () Bool)

(declare-fun res!702500 () Bool)

(declare-fun e!598285 () Bool)

(assert (=> b!1053371 (=> (not res!702500) (not e!598285))))

(declare-datatypes ((array!66422 0))(
  ( (array!66423 (arr!31942 (Array (_ BitVec 32) (_ BitVec 64))) (size!32479 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66422)

(declare-datatypes ((List!22385 0))(
  ( (Nil!22382) (Cons!22381 (h!23590 (_ BitVec 64)) (t!31699 List!22385)) )
))
(declare-fun arrayNoDuplicates!0 (array!66422 (_ BitVec 32) List!22385) Bool)

(assert (=> b!1053371 (= res!702500 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22382))))

(declare-fun e!598286 () Bool)

(declare-fun b!1053372 () Bool)

(declare-fun lt!465117 () (_ BitVec 32))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053372 (= e!598286 (arrayContainsKey!0 a!3488 k!2747 lt!465117))))

(declare-fun res!702499 () Bool)

(assert (=> start!92754 (=> (not res!702499) (not e!598285))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> start!92754 (= res!702499 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32479 a!3488)) (bvslt (size!32479 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92754 e!598285))

(assert (=> start!92754 true))

(declare-fun array_inv!24564 (array!66422) Bool)

(assert (=> start!92754 (array_inv!24564 a!3488)))

(declare-fun b!1053373 () Bool)

(declare-fun e!598283 () Bool)

(assert (=> b!1053373 (= e!598283 (not e!598286))))

(declare-fun res!702501 () Bool)

(assert (=> b!1053373 (=> res!702501 e!598286)))

(assert (=> b!1053373 (= res!702501 (bvsle lt!465117 i!1381))))

(assert (=> b!1053373 (= (select (store (arr!31942 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465117) k!2747)))

(declare-fun b!1053374 () Bool)

(declare-fun e!598282 () Bool)

(assert (=> b!1053374 (= e!598282 e!598283)))

(declare-fun res!702504 () Bool)

(assert (=> b!1053374 (=> (not res!702504) (not e!598283))))

(assert (=> b!1053374 (= res!702504 (not (= lt!465117 i!1381)))))

(declare-fun lt!465118 () array!66422)

(declare-fun arrayScanForKey!0 (array!66422 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053374 (= lt!465117 (arrayScanForKey!0 lt!465118 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053375 () Bool)

(assert (=> b!1053375 (= e!598285 e!598282)))

(declare-fun res!702502 () Bool)

(assert (=> b!1053375 (=> (not res!702502) (not e!598282))))

(assert (=> b!1053375 (= res!702502 (arrayContainsKey!0 lt!465118 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053375 (= lt!465118 (array!66423 (store (arr!31942 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32479 a!3488)))))

(declare-fun b!1053376 () Bool)

(declare-fun res!702498 () Bool)

(assert (=> b!1053376 (=> (not res!702498) (not e!598285))))

(assert (=> b!1053376 (= res!702498 (= (select (arr!31942 a!3488) i!1381) k!2747))))

(declare-fun b!1053377 () Bool)

(declare-fun res!702503 () Bool)

(assert (=> b!1053377 (=> (not res!702503) (not e!598285))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053377 (= res!702503 (validKeyInArray!0 k!2747))))

(assert (= (and start!92754 res!702499) b!1053371))

(assert (= (and b!1053371 res!702500) b!1053377))

(assert (= (and b!1053377 res!702503) b!1053376))

(assert (= (and b!1053376 res!702498) b!1053375))

(assert (= (and b!1053375 res!702502) b!1053374))

(assert (= (and b!1053374 res!702504) b!1053373))

(assert (= (and b!1053373 (not res!702501)) b!1053372))

(declare-fun m!973803 () Bool)

(assert (=> b!1053377 m!973803))

(declare-fun m!973805 () Bool)

(assert (=> b!1053376 m!973805))

(declare-fun m!973807 () Bool)

(assert (=> b!1053375 m!973807))

(declare-fun m!973809 () Bool)

(assert (=> b!1053375 m!973809))

(declare-fun m!973811 () Bool)

(assert (=> b!1053371 m!973811))

(assert (=> b!1053373 m!973809))

(declare-fun m!973813 () Bool)

(assert (=> b!1053373 m!973813))

(declare-fun m!973815 () Bool)

(assert (=> b!1053372 m!973815))

(declare-fun m!973817 () Bool)

(assert (=> start!92754 m!973817))

(declare-fun m!973819 () Bool)

(assert (=> b!1053374 m!973819))

(push 1)

(assert (not b!1053375))

(assert (not b!1053372))

(assert (not start!92754))

(assert (not b!1053374))

(assert (not b!1053371))

(assert (not b!1053377))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!127865 () Bool)

(declare-fun res!702557 () Bool)

(declare-fun e!598329 () Bool)

(assert (=> d!127865 (=> res!702557 e!598329)))

(assert (=> d!127865 (= res!702557 (= (select (arr!31942 lt!465118) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!127865 (= (arrayContainsKey!0 lt!465118 k!2747 #b00000000000000000000000000000000) e!598329)))

(declare-fun b!1053434 () Bool)

(declare-fun e!598330 () Bool)

(assert (=> b!1053434 (= e!598329 e!598330)))

(declare-fun res!702558 () Bool)

(assert (=> b!1053434 (=> (not res!702558) (not e!598330))))

(assert (=> b!1053434 (= res!702558 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32479 lt!465118)))))

(declare-fun b!1053435 () Bool)

(assert (=> b!1053435 (= e!598330 (arrayContainsKey!0 lt!465118 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127865 (not res!702557)) b!1053434))

(assert (= (and b!1053434 res!702558) b!1053435))

(declare-fun m!973861 () Bool)

(assert (=> d!127865 m!973861))

(declare-fun m!973863 () Bool)

(assert (=> b!1053435 m!973863))

(assert (=> b!1053375 d!127865))

(declare-fun b!1053464 () Bool)

(declare-fun e!598352 () Bool)

(declare-fun contains!6186 (List!22385 (_ BitVec 64)) Bool)

(assert (=> b!1053464 (= e!598352 (contains!6186 Nil!22382 (select (arr!31942 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053465 () Bool)

(declare-fun e!598355 () Bool)

(declare-fun e!598353 () Bool)

(assert (=> b!1053465 (= e!598355 e!598353)))

(declare-fun c!106908 () Bool)

(assert (=> b!1053465 (= c!106908 (validKeyInArray!0 (select (arr!31942 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053466 () Bool)

(declare-fun call!44755 () Bool)

(assert (=> b!1053466 (= e!598353 call!44755)))

(declare-fun bm!44752 () Bool)

(assert (=> bm!44752 (= call!44755 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106908 (Cons!22381 (select (arr!31942 a!3488) #b00000000000000000000000000000000) Nil!22382) Nil!22382)))))

(declare-fun d!127867 () Bool)

(declare-fun res!702574 () Bool)

(declare-fun e!598354 () Bool)

(assert (=> d!127867 (=> res!702574 e!598354)))

(assert (=> d!127867 (= res!702574 (bvsge #b00000000000000000000000000000000 (size!32479 a!3488)))))

(assert (=> d!127867 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22382) e!598354)))

(declare-fun b!1053467 () Bool)

(assert (=> b!1053467 (= e!598353 call!44755)))

(declare-fun b!1053468 () Bool)

(assert (=> b!1053468 (= e!598354 e!598355)))

(declare-fun res!702573 () Bool)

(assert (=> b!1053468 (=> (not res!702573) (not e!598355))))

(assert (=> b!1053468 (= res!702573 (not e!598352))))

(declare-fun res!702575 () Bool)

(assert (=> b!1053468 (=> (not res!702575) (not e!598352))))

(assert (=> b!1053468 (= res!702575 (validKeyInArray!0 (select (arr!31942 a!3488) #b00000000000000000000000000000000)))))

(assert (= (and d!127867 (not res!702574)) b!1053468))

(assert (= (and b!1053468 res!702575) b!1053464))

(assert (= (and b!1053468 res!702573) b!1053465))

(assert (= (and b!1053465 c!106908) b!1053467))

(assert (= (and b!1053465 (not c!106908)) b!1053466))

(assert (= (or b!1053467 b!1053466) bm!44752))

(declare-fun m!973873 () Bool)

(assert (=> b!1053464 m!973873))

(assert (=> b!1053464 m!973873))

(declare-fun m!973875 () Bool)

(assert (=> b!1053464 m!973875))

(assert (=> b!1053465 m!973873))

(assert (=> b!1053465 m!973873))

(declare-fun m!973877 () Bool)

(assert (=> b!1053465 m!973877))

(assert (=> bm!44752 m!973873))

(declare-fun m!973879 () Bool)

(assert (=> bm!44752 m!973879))

(assert (=> b!1053468 m!973873))

(assert (=> b!1053468 m!973873))

(assert (=> b!1053468 m!973877))

(assert (=> b!1053371 d!127867))

(declare-fun d!127875 () Bool)

