; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26734 () Bool)

(assert start!26734)

(declare-fun res!141417 () Bool)

(declare-fun e!177070 () Bool)

(assert (=> start!26734 (=> (not res!141417) (not e!177070))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26734 (= res!141417 (validMask!0 mask!3868))))

(assert (=> start!26734 e!177070))

(declare-datatypes ((array!13820 0))(
  ( (array!13821 (arr!6559 (Array (_ BitVec 32) (_ BitVec 64))) (size!6911 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13820)

(declare-fun array_inv!4513 (array!13820) Bool)

(assert (=> start!26734 (array_inv!4513 a!3325)))

(assert (=> start!26734 true))

(declare-fun b!277494 () Bool)

(declare-fun res!141416 () Bool)

(assert (=> b!277494 (=> (not res!141416) (not e!177070))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277494 (= res!141416 (validKeyInArray!0 k!2581))))

(declare-fun b!277495 () Bool)

(declare-fun res!141412 () Bool)

(declare-fun e!177073 () Bool)

(assert (=> b!277495 (=> (not res!141412) (not e!177073))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!277495 (= res!141412 (= startIndex!26 i!1267))))

(declare-fun b!277496 () Bool)

(declare-datatypes ((Unit!8754 0))(
  ( (Unit!8755) )
))
(declare-fun e!177072 () Unit!8754)

(declare-fun lt!137989 () Unit!8754)

(assert (=> b!277496 (= e!177072 lt!137989)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13820 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8754)

(assert (=> b!277496 (= lt!137989 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13820 (_ BitVec 32)) Bool)

(assert (=> b!277496 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13821 (store (arr!6559 a!3325) i!1267 k!2581) (size!6911 a!3325)) mask!3868)))

(declare-fun b!277497 () Bool)

(declare-fun res!141414 () Bool)

(assert (=> b!277497 (=> (not res!141414) (not e!177070))))

(declare-fun arrayContainsKey!0 (array!13820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277497 (= res!141414 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277498 () Bool)

(declare-fun res!141413 () Bool)

(assert (=> b!277498 (=> (not res!141413) (not e!177070))))

(declare-datatypes ((List!4388 0))(
  ( (Nil!4385) (Cons!4384 (h!5051 (_ BitVec 64)) (t!9478 List!4388)) )
))
(declare-fun arrayNoDuplicates!0 (array!13820 (_ BitVec 32) List!4388) Bool)

(assert (=> b!277498 (= res!141413 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4385))))

(declare-fun b!277499 () Bool)

(declare-fun Unit!8756 () Unit!8754)

(assert (=> b!277499 (= e!177072 Unit!8756)))

(declare-fun b!277500 () Bool)

(declare-fun res!141415 () Bool)

(assert (=> b!277500 (=> (not res!141415) (not e!177070))))

(assert (=> b!277500 (= res!141415 (and (= (size!6911 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6911 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6911 a!3325))))))

(declare-fun b!277501 () Bool)

(assert (=> b!277501 (= e!177073 false)))

(declare-fun lt!137990 () Unit!8754)

(assert (=> b!277501 (= lt!137990 e!177072)))

(declare-fun c!45593 () Bool)

(assert (=> b!277501 (= c!45593 (bvslt startIndex!26 (bvsub (size!6911 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277502 () Bool)

(assert (=> b!277502 (= e!177070 e!177073)))

(declare-fun res!141410 () Bool)

(assert (=> b!277502 (=> (not res!141410) (not e!177073))))

(declare-datatypes ((SeekEntryResult!1728 0))(
  ( (MissingZero!1728 (index!9082 (_ BitVec 32))) (Found!1728 (index!9083 (_ BitVec 32))) (Intermediate!1728 (undefined!2540 Bool) (index!9084 (_ BitVec 32)) (x!27301 (_ BitVec 32))) (Undefined!1728) (MissingVacant!1728 (index!9085 (_ BitVec 32))) )
))
(declare-fun lt!137988 () SeekEntryResult!1728)

(assert (=> b!277502 (= res!141410 (or (= lt!137988 (MissingZero!1728 i!1267)) (= lt!137988 (MissingVacant!1728 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13820 (_ BitVec 32)) SeekEntryResult!1728)

(assert (=> b!277502 (= lt!137988 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!277503 () Bool)

(declare-fun res!141411 () Bool)

(assert (=> b!277503 (=> (not res!141411) (not e!177073))))

(assert (=> b!277503 (= res!141411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26734 res!141417) b!277500))

(assert (= (and b!277500 res!141415) b!277494))

(assert (= (and b!277494 res!141416) b!277498))

(assert (= (and b!277498 res!141413) b!277497))

(assert (= (and b!277497 res!141414) b!277502))

(assert (= (and b!277502 res!141410) b!277503))

(assert (= (and b!277503 res!141411) b!277495))

(assert (= (and b!277495 res!141412) b!277501))

(assert (= (and b!277501 c!45593) b!277496))

(assert (= (and b!277501 (not c!45593)) b!277499))

(declare-fun m!292549 () Bool)

(assert (=> b!277502 m!292549))

(declare-fun m!292551 () Bool)

(assert (=> b!277497 m!292551))

(declare-fun m!292553 () Bool)

(assert (=> b!277498 m!292553))

(declare-fun m!292555 () Bool)

(assert (=> start!26734 m!292555))

(declare-fun m!292557 () Bool)

(assert (=> start!26734 m!292557))

(declare-fun m!292559 () Bool)

(assert (=> b!277494 m!292559))

(declare-fun m!292561 () Bool)

(assert (=> b!277503 m!292561))

(declare-fun m!292563 () Bool)

(assert (=> b!277496 m!292563))

(declare-fun m!292565 () Bool)

(assert (=> b!277496 m!292565))

(declare-fun m!292567 () Bool)

(assert (=> b!277496 m!292567))

(push 1)

(assert (not b!277497))

(assert (not b!277502))

(assert (not b!277498))

(assert (not b!277496))

(assert (not start!26734))

(assert (not b!277503))

