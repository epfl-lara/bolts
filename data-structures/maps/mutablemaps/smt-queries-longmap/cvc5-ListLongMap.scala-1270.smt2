; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26188 () Bool)

(assert start!26188)

(declare-fun b!270375 () Bool)

(declare-fun res!134417 () Bool)

(declare-fun e!174282 () Bool)

(assert (=> b!270375 (=> (not res!134417) (not e!174282))))

(declare-datatypes ((array!13274 0))(
  ( (array!13275 (arr!6286 (Array (_ BitVec 32) (_ BitVec 64))) (size!6638 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13274)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!270375 (= res!134417 (and (= (size!6638 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6638 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6638 a!3325))))))

(declare-fun b!270376 () Bool)

(declare-fun e!174284 () Bool)

(assert (=> b!270376 (= e!174282 e!174284)))

(declare-fun res!134423 () Bool)

(assert (=> b!270376 (=> (not res!134423) (not e!174284))))

(declare-datatypes ((SeekEntryResult!1455 0))(
  ( (MissingZero!1455 (index!7990 (_ BitVec 32))) (Found!1455 (index!7991 (_ BitVec 32))) (Intermediate!1455 (undefined!2267 Bool) (index!7992 (_ BitVec 32)) (x!26300 (_ BitVec 32))) (Undefined!1455) (MissingVacant!1455 (index!7993 (_ BitVec 32))) )
))
(declare-fun lt!135645 () SeekEntryResult!1455)

(assert (=> b!270376 (= res!134423 (or (= lt!135645 (MissingZero!1455 i!1267)) (= lt!135645 (MissingVacant!1455 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13274 (_ BitVec 32)) SeekEntryResult!1455)

(assert (=> b!270376 (= lt!135645 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!270377 () Bool)

(declare-fun res!134424 () Bool)

(assert (=> b!270377 (=> (not res!134424) (not e!174282))))

(declare-fun arrayContainsKey!0 (array!13274 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270377 (= res!134424 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270378 () Bool)

(declare-fun e!174283 () Bool)

(assert (=> b!270378 (= e!174284 e!174283)))

(declare-fun res!134422 () Bool)

(assert (=> b!270378 (=> (not res!134422) (not e!174283))))

(assert (=> b!270378 (= res!134422 (= startIndex!26 i!1267))))

(declare-fun lt!135643 () array!13274)

(assert (=> b!270378 (= lt!135643 (array!13275 (store (arr!6286 a!3325) i!1267 k!2581) (size!6638 a!3325)))))

(declare-fun b!270380 () Bool)

(assert (=> b!270380 (= e!174283 (not (bvsle startIndex!26 (size!6638 a!3325))))))

(assert (=> b!270380 (= (seekEntryOrOpen!0 k!2581 lt!135643 mask!3868) (Found!1455 i!1267))))

(declare-datatypes ((Unit!8439 0))(
  ( (Unit!8440) )
))
(declare-fun lt!135646 () Unit!8439)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13274 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8439)

(assert (=> b!270380 (= lt!135646 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!135647 () Unit!8439)

(declare-fun e!174286 () Unit!8439)

(assert (=> b!270380 (= lt!135647 e!174286)))

(declare-fun c!45530 () Bool)

(assert (=> b!270380 (= c!45530 (bvslt startIndex!26 (bvsub (size!6638 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!270381 () Bool)

(declare-fun res!134420 () Bool)

(assert (=> b!270381 (=> (not res!134420) (not e!174282))))

(declare-datatypes ((List!4115 0))(
  ( (Nil!4112) (Cons!4111 (h!4778 (_ BitVec 64)) (t!9205 List!4115)) )
))
(declare-fun arrayNoDuplicates!0 (array!13274 (_ BitVec 32) List!4115) Bool)

(assert (=> b!270381 (= res!134420 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4112))))

(declare-fun b!270382 () Bool)

(declare-fun res!134418 () Bool)

(assert (=> b!270382 (=> (not res!134418) (not e!174284))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13274 (_ BitVec 32)) Bool)

(assert (=> b!270382 (= res!134418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270383 () Bool)

(declare-fun Unit!8441 () Unit!8439)

(assert (=> b!270383 (= e!174286 Unit!8441)))

(declare-fun b!270384 () Bool)

(declare-fun res!134421 () Bool)

(assert (=> b!270384 (=> (not res!134421) (not e!174282))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270384 (= res!134421 (validKeyInArray!0 k!2581))))

(declare-fun res!134419 () Bool)

(assert (=> start!26188 (=> (not res!134419) (not e!174282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26188 (= res!134419 (validMask!0 mask!3868))))

(assert (=> start!26188 e!174282))

(declare-fun array_inv!4240 (array!13274) Bool)

(assert (=> start!26188 (array_inv!4240 a!3325)))

(assert (=> start!26188 true))

(declare-fun b!270379 () Bool)

(declare-fun lt!135644 () Unit!8439)

(assert (=> b!270379 (= e!174286 lt!135644)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13274 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8439)

(assert (=> b!270379 (= lt!135644 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!270379 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135643 mask!3868)))

(assert (= (and start!26188 res!134419) b!270375))

(assert (= (and b!270375 res!134417) b!270384))

(assert (= (and b!270384 res!134421) b!270381))

(assert (= (and b!270381 res!134420) b!270377))

(assert (= (and b!270377 res!134424) b!270376))

(assert (= (and b!270376 res!134423) b!270382))

(assert (= (and b!270382 res!134418) b!270378))

(assert (= (and b!270378 res!134422) b!270380))

(assert (= (and b!270380 c!45530) b!270379))

(assert (= (and b!270380 (not c!45530)) b!270383))

(declare-fun m!286033 () Bool)

(assert (=> b!270382 m!286033))

(declare-fun m!286035 () Bool)

(assert (=> b!270381 m!286035))

(declare-fun m!286037 () Bool)

(assert (=> b!270378 m!286037))

(declare-fun m!286039 () Bool)

(assert (=> b!270376 m!286039))

(declare-fun m!286041 () Bool)

(assert (=> b!270380 m!286041))

(declare-fun m!286043 () Bool)

(assert (=> b!270380 m!286043))

(declare-fun m!286045 () Bool)

(assert (=> start!26188 m!286045))

(declare-fun m!286047 () Bool)

(assert (=> start!26188 m!286047))

(declare-fun m!286049 () Bool)

(assert (=> b!270377 m!286049))

(declare-fun m!286051 () Bool)

(assert (=> b!270384 m!286051))

(declare-fun m!286053 () Bool)

(assert (=> b!270379 m!286053))

(declare-fun m!286055 () Bool)

(assert (=> b!270379 m!286055))

(push 1)

(assert (not b!270376))

(assert (not b!270380))

(assert (not start!26188))

(assert (not b!270377))

(assert (not b!270381))

(assert (not b!270382))

(assert (not b!270384))

(assert (not b!270379))

(check-sat)

(pop 1)

(push 1)

(check-sat)

