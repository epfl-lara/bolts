; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26024 () Bool)

(assert start!26024)

(declare-fun res!132672 () Bool)

(declare-fun e!173343 () Bool)

(assert (=> start!26024 (=> (not res!132672) (not e!173343))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26024 (= res!132672 (validMask!0 mask!3868))))

(assert (=> start!26024 e!173343))

(declare-datatypes ((array!13110 0))(
  ( (array!13111 (arr!6204 (Array (_ BitVec 32) (_ BitVec 64))) (size!6556 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13110)

(declare-fun array_inv!4158 (array!13110) Bool)

(assert (=> start!26024 (array_inv!4158 a!3325)))

(assert (=> start!26024 true))

(declare-fun b!268350 () Bool)

(declare-fun res!132671 () Bool)

(assert (=> b!268350 (=> (not res!132671) (not e!173343))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13110 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268350 (= res!132671 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268351 () Bool)

(declare-fun res!132669 () Bool)

(assert (=> b!268351 (=> (not res!132669) (not e!173343))))

(declare-datatypes ((List!4033 0))(
  ( (Nil!4030) (Cons!4029 (h!4696 (_ BitVec 64)) (t!9123 List!4033)) )
))
(declare-fun arrayNoDuplicates!0 (array!13110 (_ BitVec 32) List!4033) Bool)

(assert (=> b!268351 (= res!132669 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4030))))

(declare-fun b!268352 () Bool)

(declare-fun res!132666 () Bool)

(declare-fun e!173342 () Bool)

(assert (=> b!268352 (=> (not res!132666) (not e!173342))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13110 (_ BitVec 32)) Bool)

(assert (=> b!268352 (= res!132666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268353 () Bool)

(declare-fun res!132670 () Bool)

(assert (=> b!268353 (=> (not res!132670) (not e!173343))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268353 (= res!132670 (and (= (size!6556 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6556 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6556 a!3325))))))

(declare-fun b!268354 () Bool)

(declare-fun res!132667 () Bool)

(assert (=> b!268354 (=> (not res!132667) (not e!173343))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268354 (= res!132667 (validKeyInArray!0 k!2581))))

(declare-fun b!268355 () Bool)

(assert (=> b!268355 (= e!173342 (bvsgt #b00000000000000000000000000000000 (size!6556 a!3325)))))

(declare-fun b!268356 () Bool)

(assert (=> b!268356 (= e!173343 e!173342)))

(declare-fun res!132668 () Bool)

(assert (=> b!268356 (=> (not res!132668) (not e!173342))))

(declare-datatypes ((SeekEntryResult!1373 0))(
  ( (MissingZero!1373 (index!7662 (_ BitVec 32))) (Found!1373 (index!7663 (_ BitVec 32))) (Intermediate!1373 (undefined!2185 Bool) (index!7664 (_ BitVec 32)) (x!25994 (_ BitVec 32))) (Undefined!1373) (MissingVacant!1373 (index!7665 (_ BitVec 32))) )
))
(declare-fun lt!134885 () SeekEntryResult!1373)

(assert (=> b!268356 (= res!132668 (or (= lt!134885 (MissingZero!1373 i!1267)) (= lt!134885 (MissingVacant!1373 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13110 (_ BitVec 32)) SeekEntryResult!1373)

(assert (=> b!268356 (= lt!134885 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26024 res!132672) b!268353))

(assert (= (and b!268353 res!132670) b!268354))

(assert (= (and b!268354 res!132667) b!268351))

(assert (= (and b!268351 res!132669) b!268350))

(assert (= (and b!268350 res!132671) b!268356))

(assert (= (and b!268356 res!132668) b!268352))

(assert (= (and b!268352 res!132666) b!268355))

(declare-fun m!284531 () Bool)

(assert (=> b!268352 m!284531))

(declare-fun m!284533 () Bool)

(assert (=> b!268356 m!284533))

(declare-fun m!284535 () Bool)

(assert (=> b!268350 m!284535))

(declare-fun m!284537 () Bool)

(assert (=> start!26024 m!284537))

(declare-fun m!284539 () Bool)

(assert (=> start!26024 m!284539))

(declare-fun m!284541 () Bool)

(assert (=> b!268354 m!284541))

(declare-fun m!284543 () Bool)

(assert (=> b!268351 m!284543))

(push 1)

(assert (not b!268354))

(assert (not start!26024))

(assert (not b!268352))

(assert (not b!268356))

(assert (not b!268350))

(assert (not b!268351))

(check-sat)

(pop 1)

