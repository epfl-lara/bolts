; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25896 () Bool)

(assert start!25896)

(declare-fun b!267540 () Bool)

(declare-fun res!131874 () Bool)

(declare-fun e!172959 () Bool)

(assert (=> b!267540 (=> (not res!131874) (not e!172959))))

(declare-datatypes ((array!13003 0))(
  ( (array!13004 (arr!6152 (Array (_ BitVec 32) (_ BitVec 64))) (size!6504 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13003)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!267540 (= res!131874 (and (= (size!6504 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6504 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6504 a!3325))))))

(declare-fun b!267543 () Bool)

(assert (=> b!267543 (= e!172959 (bvsge #b00000000000000000000000000000000 (size!6504 a!3325)))))

(declare-fun b!267541 () Bool)

(declare-fun res!131876 () Bool)

(assert (=> b!267541 (=> (not res!131876) (not e!172959))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267541 (= res!131876 (validKeyInArray!0 k0!2581))))

(declare-fun b!267542 () Bool)

(declare-fun res!131877 () Bool)

(assert (=> b!267542 (=> (not res!131877) (not e!172959))))

(declare-datatypes ((List!3981 0))(
  ( (Nil!3978) (Cons!3977 (h!4644 (_ BitVec 64)) (t!9071 List!3981)) )
))
(declare-fun arrayNoDuplicates!0 (array!13003 (_ BitVec 32) List!3981) Bool)

(assert (=> b!267542 (= res!131877 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3978))))

(declare-fun res!131875 () Bool)

(assert (=> start!25896 (=> (not res!131875) (not e!172959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25896 (= res!131875 (validMask!0 mask!3868))))

(assert (=> start!25896 e!172959))

(declare-fun array_inv!4106 (array!13003) Bool)

(assert (=> start!25896 (array_inv!4106 a!3325)))

(assert (=> start!25896 true))

(assert (= (and start!25896 res!131875) b!267540))

(assert (= (and b!267540 res!131874) b!267541))

(assert (= (and b!267541 res!131876) b!267542))

(assert (= (and b!267542 res!131877) b!267543))

(declare-fun m!283923 () Bool)

(assert (=> b!267541 m!283923))

(declare-fun m!283925 () Bool)

(assert (=> b!267542 m!283925))

(declare-fun m!283927 () Bool)

(assert (=> start!25896 m!283927))

(declare-fun m!283929 () Bool)

(assert (=> start!25896 m!283929))

(check-sat (not b!267541) (not start!25896) (not b!267542))
(check-sat)
