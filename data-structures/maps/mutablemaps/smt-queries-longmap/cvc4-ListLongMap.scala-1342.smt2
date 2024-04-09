; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26624 () Bool)

(assert start!26624)

(declare-fun b!276262 () Bool)

(declare-fun res!140291 () Bool)

(declare-fun e!176519 () Bool)

(assert (=> b!276262 (=> (not res!140291) (not e!176519))))

(declare-datatypes ((array!13710 0))(
  ( (array!13711 (arr!6504 (Array (_ BitVec 32) (_ BitVec 64))) (size!6856 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13710)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!276262 (= res!140291 (and (= (size!6856 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6856 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6856 a!3325))))))

(declare-fun res!140290 () Bool)

(assert (=> start!26624 (=> (not res!140290) (not e!176519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26624 (= res!140290 (validMask!0 mask!3868))))

(assert (=> start!26624 e!176519))

(declare-fun array_inv!4458 (array!13710) Bool)

(assert (=> start!26624 (array_inv!4458 a!3325)))

(assert (=> start!26624 true))

(declare-fun b!276263 () Bool)

(declare-fun e!176521 () Bool)

(assert (=> b!276263 (= e!176519 e!176521)))

(declare-fun res!140293 () Bool)

(assert (=> b!276263 (=> (not res!140293) (not e!176521))))

(declare-datatypes ((SeekEntryResult!1673 0))(
  ( (MissingZero!1673 (index!8862 (_ BitVec 32))) (Found!1673 (index!8863 (_ BitVec 32))) (Intermediate!1673 (undefined!2485 Bool) (index!8864 (_ BitVec 32)) (x!27094 (_ BitVec 32))) (Undefined!1673) (MissingVacant!1673 (index!8865 (_ BitVec 32))) )
))
(declare-fun lt!137621 () SeekEntryResult!1673)

(assert (=> b!276263 (= res!140293 (or (= lt!137621 (MissingZero!1673 i!1267)) (= lt!137621 (MissingVacant!1673 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13710 (_ BitVec 32)) SeekEntryResult!1673)

(assert (=> b!276263 (= lt!137621 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276264 () Bool)

(assert (=> b!276264 (= e!176521 false)))

(declare-fun lt!137620 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13710 (_ BitVec 32)) Bool)

(assert (=> b!276264 (= lt!137620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276265 () Bool)

(declare-fun res!140295 () Bool)

(assert (=> b!276265 (=> (not res!140295) (not e!176519))))

(declare-datatypes ((List!4333 0))(
  ( (Nil!4330) (Cons!4329 (h!4996 (_ BitVec 64)) (t!9423 List!4333)) )
))
(declare-fun arrayNoDuplicates!0 (array!13710 (_ BitVec 32) List!4333) Bool)

(assert (=> b!276265 (= res!140295 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4330))))

(declare-fun b!276266 () Bool)

(declare-fun res!140294 () Bool)

(assert (=> b!276266 (=> (not res!140294) (not e!176519))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276266 (= res!140294 (validKeyInArray!0 k!2581))))

(declare-fun b!276267 () Bool)

(declare-fun res!140292 () Bool)

(assert (=> b!276267 (=> (not res!140292) (not e!176519))))

(declare-fun arrayContainsKey!0 (array!13710 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276267 (= res!140292 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26624 res!140290) b!276262))

(assert (= (and b!276262 res!140291) b!276266))

(assert (= (and b!276266 res!140294) b!276265))

(assert (= (and b!276265 res!140295) b!276267))

(assert (= (and b!276267 res!140292) b!276263))

(assert (= (and b!276263 res!140293) b!276264))

(declare-fun m!291671 () Bool)

(assert (=> b!276267 m!291671))

(declare-fun m!291673 () Bool)

(assert (=> b!276266 m!291673))

(declare-fun m!291675 () Bool)

(assert (=> b!276264 m!291675))

(declare-fun m!291677 () Bool)

(assert (=> b!276263 m!291677))

(declare-fun m!291679 () Bool)

(assert (=> start!26624 m!291679))

(declare-fun m!291681 () Bool)

(assert (=> start!26624 m!291681))

(declare-fun m!291683 () Bool)

(assert (=> b!276265 m!291683))

(push 1)

(assert (not b!276264))

(assert (not b!276263))

(assert (not start!26624))

(assert (not b!276265))

(assert (not b!276267))

(assert (not b!276266))

(check-sat)

