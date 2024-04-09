; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25998 () Bool)

(assert start!25998)

(declare-fun b!268112 () Bool)

(declare-fun res!132429 () Bool)

(declare-fun e!173229 () Bool)

(assert (=> b!268112 (=> (not res!132429) (not e!173229))))

(declare-datatypes ((array!13084 0))(
  ( (array!13085 (arr!6191 (Array (_ BitVec 32) (_ BitVec 64))) (size!6543 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13084)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13084 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268112 (= res!132429 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!132431 () Bool)

(assert (=> start!25998 (=> (not res!132431) (not e!173229))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25998 (= res!132431 (validMask!0 mask!3868))))

(assert (=> start!25998 e!173229))

(declare-fun array_inv!4145 (array!13084) Bool)

(assert (=> start!25998 (array_inv!4145 a!3325)))

(assert (=> start!25998 true))

(declare-fun b!268113 () Bool)

(declare-fun res!132428 () Bool)

(assert (=> b!268113 (=> (not res!132428) (not e!173229))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268113 (= res!132428 (validKeyInArray!0 k0!2581))))

(declare-fun b!268114 () Bool)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1360 0))(
  ( (MissingZero!1360 (index!7610 (_ BitVec 32))) (Found!1360 (index!7611 (_ BitVec 32))) (Intermediate!1360 (undefined!2172 Bool) (index!7612 (_ BitVec 32)) (x!25949 (_ BitVec 32))) (Undefined!1360) (MissingVacant!1360 (index!7613 (_ BitVec 32))) )
))
(declare-fun lt!134819 () SeekEntryResult!1360)

(assert (=> b!268114 (= e!173229 (and (or (= lt!134819 (MissingZero!1360 i!1267)) (= lt!134819 (MissingVacant!1360 i!1267))) (bvsgt #b00000000000000000000000000000000 (size!6543 a!3325))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13084 (_ BitVec 32)) SeekEntryResult!1360)

(assert (=> b!268114 (= lt!134819 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!268115 () Bool)

(declare-fun res!132432 () Bool)

(assert (=> b!268115 (=> (not res!132432) (not e!173229))))

(declare-datatypes ((List!4020 0))(
  ( (Nil!4017) (Cons!4016 (h!4683 (_ BitVec 64)) (t!9110 List!4020)) )
))
(declare-fun arrayNoDuplicates!0 (array!13084 (_ BitVec 32) List!4020) Bool)

(assert (=> b!268115 (= res!132432 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4017))))

(declare-fun b!268116 () Bool)

(declare-fun res!132430 () Bool)

(assert (=> b!268116 (=> (not res!132430) (not e!173229))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268116 (= res!132430 (and (= (size!6543 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6543 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6543 a!3325))))))

(assert (= (and start!25998 res!132431) b!268116))

(assert (= (and b!268116 res!132430) b!268113))

(assert (= (and b!268113 res!132428) b!268115))

(assert (= (and b!268115 res!132432) b!268112))

(assert (= (and b!268112 res!132429) b!268114))

(declare-fun m!284353 () Bool)

(assert (=> b!268113 m!284353))

(declare-fun m!284355 () Bool)

(assert (=> b!268114 m!284355))

(declare-fun m!284357 () Bool)

(assert (=> start!25998 m!284357))

(declare-fun m!284359 () Bool)

(assert (=> start!25998 m!284359))

(declare-fun m!284361 () Bool)

(assert (=> b!268112 m!284361))

(declare-fun m!284363 () Bool)

(assert (=> b!268115 m!284363))

(check-sat (not b!268115) (not start!25998) (not b!268114) (not b!268112) (not b!268113))
(check-sat)
