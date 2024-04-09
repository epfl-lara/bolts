; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26010 () Bool)

(assert start!26010)

(declare-fun res!132534 () Bool)

(declare-fun e!173280 () Bool)

(assert (=> start!26010 (=> (not res!132534) (not e!173280))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26010 (= res!132534 (validMask!0 mask!3868))))

(assert (=> start!26010 e!173280))

(declare-datatypes ((array!13096 0))(
  ( (array!13097 (arr!6197 (Array (_ BitVec 32) (_ BitVec 64))) (size!6549 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13096)

(declare-fun array_inv!4151 (array!13096) Bool)

(assert (=> start!26010 (array_inv!4151 a!3325)))

(assert (=> start!26010 true))

(declare-fun b!268216 () Bool)

(declare-fun e!173279 () Bool)

(assert (=> b!268216 (= e!173279 false)))

(declare-fun lt!134851 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13096 (_ BitVec 32)) Bool)

(assert (=> b!268216 (= lt!134851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268217 () Bool)

(declare-fun res!132536 () Bool)

(assert (=> b!268217 (=> (not res!132536) (not e!173280))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268217 (= res!132536 (validKeyInArray!0 k0!2581))))

(declare-fun b!268218 () Bool)

(assert (=> b!268218 (= e!173280 e!173279)))

(declare-fun res!132535 () Bool)

(assert (=> b!268218 (=> (not res!132535) (not e!173279))))

(declare-datatypes ((SeekEntryResult!1366 0))(
  ( (MissingZero!1366 (index!7634 (_ BitVec 32))) (Found!1366 (index!7635 (_ BitVec 32))) (Intermediate!1366 (undefined!2178 Bool) (index!7636 (_ BitVec 32)) (x!25971 (_ BitVec 32))) (Undefined!1366) (MissingVacant!1366 (index!7637 (_ BitVec 32))) )
))
(declare-fun lt!134852 () SeekEntryResult!1366)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268218 (= res!132535 (or (= lt!134852 (MissingZero!1366 i!1267)) (= lt!134852 (MissingVacant!1366 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13096 (_ BitVec 32)) SeekEntryResult!1366)

(assert (=> b!268218 (= lt!134852 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!268219 () Bool)

(declare-fun res!132532 () Bool)

(assert (=> b!268219 (=> (not res!132532) (not e!173280))))

(declare-fun arrayContainsKey!0 (array!13096 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268219 (= res!132532 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268220 () Bool)

(declare-fun res!132533 () Bool)

(assert (=> b!268220 (=> (not res!132533) (not e!173280))))

(declare-datatypes ((List!4026 0))(
  ( (Nil!4023) (Cons!4022 (h!4689 (_ BitVec 64)) (t!9116 List!4026)) )
))
(declare-fun arrayNoDuplicates!0 (array!13096 (_ BitVec 32) List!4026) Bool)

(assert (=> b!268220 (= res!132533 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4023))))

(declare-fun b!268221 () Bool)

(declare-fun res!132537 () Bool)

(assert (=> b!268221 (=> (not res!132537) (not e!173280))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268221 (= res!132537 (and (= (size!6549 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6549 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6549 a!3325))))))

(assert (= (and start!26010 res!132534) b!268221))

(assert (= (and b!268221 res!132537) b!268217))

(assert (= (and b!268217 res!132536) b!268220))

(assert (= (and b!268220 res!132533) b!268219))

(assert (= (and b!268219 res!132532) b!268218))

(assert (= (and b!268218 res!132535) b!268216))

(declare-fun m!284433 () Bool)

(assert (=> b!268220 m!284433))

(declare-fun m!284435 () Bool)

(assert (=> b!268218 m!284435))

(declare-fun m!284437 () Bool)

(assert (=> start!26010 m!284437))

(declare-fun m!284439 () Bool)

(assert (=> start!26010 m!284439))

(declare-fun m!284441 () Bool)

(assert (=> b!268219 m!284441))

(declare-fun m!284443 () Bool)

(assert (=> b!268216 m!284443))

(declare-fun m!284445 () Bool)

(assert (=> b!268217 m!284445))

(check-sat (not start!26010) (not b!268219) (not b!268217) (not b!268220) (not b!268218) (not b!268216))
(check-sat)
