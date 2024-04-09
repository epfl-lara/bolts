; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60246 () Bool)

(assert start!60246)

(declare-fun b!674403 () Bool)

(declare-fun res!441053 () Bool)

(declare-fun e!384944 () Bool)

(assert (=> b!674403 (=> (not res!441053) (not e!384944))))

(declare-datatypes ((array!39249 0))(
  ( (array!39250 (arr!18813 (Array (_ BitVec 32) (_ BitVec 64))) (size!19177 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39249)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12907 0))(
  ( (Nil!12904) (Cons!12903 (h!13948 (_ BitVec 64)) (t!19143 List!12907)) )
))
(declare-fun acc!681 () List!12907)

(declare-fun arrayNoDuplicates!0 (array!39249 (_ BitVec 32) List!12907) Bool)

(assert (=> b!674403 (= res!441053 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!674404 () Bool)

(declare-fun res!441045 () Bool)

(declare-fun e!384940 () Bool)

(assert (=> b!674404 (=> (not res!441045) (not e!384940))))

(declare-fun lt!312582 () List!12907)

(declare-fun noDuplicate!697 (List!12907) Bool)

(assert (=> b!674404 (= res!441045 (noDuplicate!697 lt!312582))))

(declare-fun b!674405 () Bool)

(declare-fun res!441055 () Bool)

(assert (=> b!674405 (=> (not res!441055) (not e!384944))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!674405 (= res!441055 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19177 a!3626))))))

(declare-fun b!674406 () Bool)

(declare-fun res!441042 () Bool)

(assert (=> b!674406 (=> (not res!441042) (not e!384944))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!674406 (= res!441042 (validKeyInArray!0 k!2843))))

(declare-fun b!674407 () Bool)

(declare-fun res!441040 () Bool)

(assert (=> b!674407 (=> (not res!441040) (not e!384944))))

(declare-fun contains!3450 (List!12907 (_ BitVec 64)) Bool)

(assert (=> b!674407 (= res!441040 (not (contains!3450 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674408 () Bool)

(declare-fun e!384937 () Bool)

(assert (=> b!674408 (= e!384937 (not (contains!3450 lt!312582 k!2843)))))

(declare-fun b!674409 () Bool)

(declare-fun e!384946 () Bool)

(assert (=> b!674409 (= e!384946 (contains!3450 acc!681 k!2843))))

(declare-fun res!441036 () Bool)

(assert (=> start!60246 (=> (not res!441036) (not e!384944))))

(assert (=> start!60246 (= res!441036 (and (bvslt (size!19177 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19177 a!3626))))))

(assert (=> start!60246 e!384944))

(assert (=> start!60246 true))

(declare-fun array_inv!14587 (array!39249) Bool)

(assert (=> start!60246 (array_inv!14587 a!3626)))

(declare-fun b!674410 () Bool)

(declare-fun res!441056 () Bool)

(assert (=> b!674410 (=> (not res!441056) (not e!384940))))

(assert (=> b!674410 (= res!441056 (not (contains!3450 lt!312582 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674411 () Bool)

(declare-fun res!441035 () Bool)

(assert (=> b!674411 (=> (not res!441035) (not e!384944))))

(assert (=> b!674411 (= res!441035 (validKeyInArray!0 (select (arr!18813 a!3626) from!3004)))))

(declare-fun b!674412 () Bool)

(declare-fun res!441046 () Bool)

(assert (=> b!674412 (=> (not res!441046) (not e!384944))))

(declare-fun arrayContainsKey!0 (array!39249 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!674412 (= res!441046 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!674413 () Bool)

(declare-fun res!441039 () Bool)

(assert (=> b!674413 (=> (not res!441039) (not e!384940))))

(declare-fun e!384945 () Bool)

(assert (=> b!674413 (= res!441039 e!384945)))

(declare-fun res!441051 () Bool)

(assert (=> b!674413 (=> res!441051 e!384945)))

(declare-fun e!384938 () Bool)

(assert (=> b!674413 (= res!441051 e!384938)))

(declare-fun res!441054 () Bool)

(assert (=> b!674413 (=> (not res!441054) (not e!384938))))

(assert (=> b!674413 (= res!441054 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674414 () Bool)

(declare-fun res!441041 () Bool)

(assert (=> b!674414 (=> (not res!441041) (not e!384944))))

(declare-fun e!384942 () Bool)

(assert (=> b!674414 (= res!441041 e!384942)))

(declare-fun res!441043 () Bool)

(assert (=> b!674414 (=> res!441043 e!384942)))

(assert (=> b!674414 (= res!441043 e!384946)))

(declare-fun res!441044 () Bool)

(assert (=> b!674414 (=> (not res!441044) (not e!384946))))

(assert (=> b!674414 (= res!441044 (bvsgt from!3004 i!1382))))

(declare-fun b!674415 () Bool)

(assert (=> b!674415 (= e!384940 (not true))))

(assert (=> b!674415 (arrayNoDuplicates!0 (array!39250 (store (arr!18813 a!3626) i!1382 k!2843) (size!19177 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) lt!312582)))

(declare-datatypes ((Unit!23716 0))(
  ( (Unit!23717) )
))
(declare-fun lt!312583 () Unit!23716)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39249 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12907) Unit!23716)

(assert (=> b!674415 (= lt!312583 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!312582))))

(declare-fun b!674416 () Bool)

(declare-fun e!384936 () Bool)

(assert (=> b!674416 (= e!384944 e!384936)))

(declare-fun res!441058 () Bool)

(assert (=> b!674416 (=> (not res!441058) (not e!384936))))

(assert (=> b!674416 (= res!441058 (not (= (select (arr!18813 a!3626) from!3004) k!2843)))))

(declare-fun lt!312585 () Unit!23716)

(declare-fun e!384939 () Unit!23716)

(assert (=> b!674416 (= lt!312585 e!384939)))

(declare-fun c!77051 () Bool)

(assert (=> b!674416 (= c!77051 (= (select (arr!18813 a!3626) from!3004) k!2843))))

(declare-fun b!674417 () Bool)

(declare-fun res!441052 () Bool)

(assert (=> b!674417 (=> (not res!441052) (not e!384944))))

(assert (=> b!674417 (= res!441052 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12904))))

(declare-fun b!674418 () Bool)

(assert (=> b!674418 (= e!384938 (contains!3450 lt!312582 k!2843))))

(declare-fun b!674419 () Bool)

(declare-fun res!441037 () Bool)

(assert (=> b!674419 (=> (not res!441037) (not e!384940))))

(assert (=> b!674419 (= res!441037 (not (contains!3450 lt!312582 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674420 () Bool)

(declare-fun Unit!23718 () Unit!23716)

(assert (=> b!674420 (= e!384939 Unit!23718)))

(assert (=> b!674420 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312584 () Unit!23716)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39249 (_ BitVec 64) (_ BitVec 32)) Unit!23716)

(assert (=> b!674420 (= lt!312584 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!674420 false))

(declare-fun b!674421 () Bool)

(declare-fun res!441059 () Bool)

(assert (=> b!674421 (=> (not res!441059) (not e!384940))))

(assert (=> b!674421 (= res!441059 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312582))))

(declare-fun b!674422 () Bool)

(assert (=> b!674422 (= e!384945 e!384937)))

(declare-fun res!441050 () Bool)

(assert (=> b!674422 (=> (not res!441050) (not e!384937))))

(assert (=> b!674422 (= res!441050 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674423 () Bool)

(declare-fun res!441047 () Bool)

(assert (=> b!674423 (=> (not res!441047) (not e!384944))))

(assert (=> b!674423 (= res!441047 (noDuplicate!697 acc!681))))

(declare-fun b!674424 () Bool)

(declare-fun e!384941 () Bool)

(assert (=> b!674424 (= e!384942 e!384941)))

(declare-fun res!441057 () Bool)

(assert (=> b!674424 (=> (not res!441057) (not e!384941))))

(assert (=> b!674424 (= res!441057 (bvsle from!3004 i!1382))))

(declare-fun b!674425 () Bool)

(assert (=> b!674425 (= e!384936 e!384940)))

(declare-fun res!441038 () Bool)

(assert (=> b!674425 (=> (not res!441038) (not e!384940))))

(assert (=> b!674425 (= res!441038 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!298 (List!12907 (_ BitVec 64)) List!12907)

(assert (=> b!674425 (= lt!312582 ($colon$colon!298 acc!681 (select (arr!18813 a!3626) from!3004)))))

(declare-fun b!674426 () Bool)

(assert (=> b!674426 (= e!384941 (not (contains!3450 acc!681 k!2843)))))

(declare-fun b!674427 () Bool)

(declare-fun Unit!23719 () Unit!23716)

(assert (=> b!674427 (= e!384939 Unit!23719)))

(declare-fun b!674428 () Bool)

(declare-fun res!441049 () Bool)

(assert (=> b!674428 (=> (not res!441049) (not e!384944))))

(assert (=> b!674428 (= res!441049 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19177 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!674429 () Bool)

(declare-fun res!441048 () Bool)

(assert (=> b!674429 (=> (not res!441048) (not e!384944))))

(assert (=> b!674429 (= res!441048 (not (contains!3450 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60246 res!441036) b!674423))

(assert (= (and b!674423 res!441047) b!674407))

(assert (= (and b!674407 res!441040) b!674429))

(assert (= (and b!674429 res!441048) b!674414))

(assert (= (and b!674414 res!441044) b!674409))

(assert (= (and b!674414 (not res!441043)) b!674424))

(assert (= (and b!674424 res!441057) b!674426))

(assert (= (and b!674414 res!441041) b!674417))

(assert (= (and b!674417 res!441052) b!674403))

(assert (= (and b!674403 res!441053) b!674405))

(assert (= (and b!674405 res!441055) b!674406))

(assert (= (and b!674406 res!441042) b!674412))

(assert (= (and b!674412 res!441046) b!674428))

(assert (= (and b!674428 res!441049) b!674411))

(assert (= (and b!674411 res!441035) b!674416))

(assert (= (and b!674416 c!77051) b!674420))

(assert (= (and b!674416 (not c!77051)) b!674427))

(assert (= (and b!674416 res!441058) b!674425))

(assert (= (and b!674425 res!441038) b!674404))

(assert (= (and b!674404 res!441045) b!674410))

(assert (= (and b!674410 res!441056) b!674419))

(assert (= (and b!674419 res!441037) b!674413))

(assert (= (and b!674413 res!441054) b!674418))

(assert (= (and b!674413 (not res!441051)) b!674422))

(assert (= (and b!674422 res!441050) b!674408))

(assert (= (and b!674413 res!441039) b!674421))

(assert (= (and b!674421 res!441059) b!674415))

(declare-fun m!642345 () Bool)

(assert (=> b!674421 m!642345))

(declare-fun m!642347 () Bool)

(assert (=> start!60246 m!642347))

(declare-fun m!642349 () Bool)

(assert (=> b!674420 m!642349))

(declare-fun m!642351 () Bool)

(assert (=> b!674420 m!642351))

(declare-fun m!642353 () Bool)

(assert (=> b!674417 m!642353))

(declare-fun m!642355 () Bool)

(assert (=> b!674429 m!642355))

(declare-fun m!642357 () Bool)

(assert (=> b!674415 m!642357))

(declare-fun m!642359 () Bool)

(assert (=> b!674415 m!642359))

(declare-fun m!642361 () Bool)

(assert (=> b!674415 m!642361))

(declare-fun m!642363 () Bool)

(assert (=> b!674407 m!642363))

(declare-fun m!642365 () Bool)

(assert (=> b!674409 m!642365))

(declare-fun m!642367 () Bool)

(assert (=> b!674403 m!642367))

(declare-fun m!642369 () Bool)

(assert (=> b!674419 m!642369))

(declare-fun m!642371 () Bool)

(assert (=> b!674406 m!642371))

(declare-fun m!642373 () Bool)

(assert (=> b!674408 m!642373))

(assert (=> b!674426 m!642365))

(declare-fun m!642375 () Bool)

(assert (=> b!674425 m!642375))

(assert (=> b!674425 m!642375))

(declare-fun m!642377 () Bool)

(assert (=> b!674425 m!642377))

(assert (=> b!674416 m!642375))

(declare-fun m!642379 () Bool)

(assert (=> b!674410 m!642379))

(declare-fun m!642381 () Bool)

(assert (=> b!674423 m!642381))

(declare-fun m!642383 () Bool)

(assert (=> b!674412 m!642383))

(assert (=> b!674418 m!642373))

(declare-fun m!642385 () Bool)

(assert (=> b!674404 m!642385))

(assert (=> b!674411 m!642375))

(assert (=> b!674411 m!642375))

(declare-fun m!642387 () Bool)

(assert (=> b!674411 m!642387))

(push 1)

