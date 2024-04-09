; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25938 () Bool)

(assert start!25938)

(declare-fun res!132009 () Bool)

(declare-fun e!173049 () Bool)

(assert (=> start!25938 (=> (not res!132009) (not e!173049))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25938 (= res!132009 (validMask!0 mask!3868))))

(assert (=> start!25938 e!173049))

(declare-datatypes ((array!13024 0))(
  ( (array!13025 (arr!6161 (Array (_ BitVec 32) (_ BitVec 64))) (size!6513 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13024)

(declare-fun array_inv!4115 (array!13024) Bool)

(assert (=> start!25938 (array_inv!4115 a!3325)))

(assert (=> start!25938 true))

(declare-fun b!267689 () Bool)

(assert (=> b!267689 (= e!173049 (bvslt mask!3868 #b00000000000000000000000000000000))))

(declare-fun b!267690 () Bool)

(declare-fun res!132005 () Bool)

(assert (=> b!267690 (=> (not res!132005) (not e!173049))))

(declare-datatypes ((List!3990 0))(
  ( (Nil!3987) (Cons!3986 (h!4653 (_ BitVec 64)) (t!9080 List!3990)) )
))
(declare-fun arrayNoDuplicates!0 (array!13024 (_ BitVec 32) List!3990) Bool)

(assert (=> b!267690 (= res!132005 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3987))))

(declare-fun b!267691 () Bool)

(declare-fun res!132006 () Bool)

(assert (=> b!267691 (=> (not res!132006) (not e!173049))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267691 (= res!132006 (and (= (size!6513 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6513 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6513 a!3325))))))

(declare-fun b!267692 () Bool)

(declare-fun res!132007 () Bool)

(assert (=> b!267692 (=> (not res!132007) (not e!173049))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13024 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267692 (= res!132007 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!267693 () Bool)

(declare-fun res!132008 () Bool)

(assert (=> b!267693 (=> (not res!132008) (not e!173049))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267693 (= res!132008 (validKeyInArray!0 k0!2581))))

(assert (= (and start!25938 res!132009) b!267691))

(assert (= (and b!267691 res!132006) b!267693))

(assert (= (and b!267693 res!132008) b!267690))

(assert (= (and b!267690 res!132005) b!267692))

(assert (= (and b!267692 res!132007) b!267689))

(declare-fun m!284021 () Bool)

(assert (=> start!25938 m!284021))

(declare-fun m!284023 () Bool)

(assert (=> start!25938 m!284023))

(declare-fun m!284025 () Bool)

(assert (=> b!267690 m!284025))

(declare-fun m!284027 () Bool)

(assert (=> b!267692 m!284027))

(declare-fun m!284029 () Bool)

(assert (=> b!267693 m!284029))

(check-sat (not b!267692) (not start!25938) (not b!267690) (not b!267693))
(check-sat)
