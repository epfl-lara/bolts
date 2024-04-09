; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25944 () Bool)

(assert start!25944)

(declare-fun res!132040 () Bool)

(declare-fun e!173067 () Bool)

(assert (=> start!25944 (=> (not res!132040) (not e!173067))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25944 (= res!132040 (validMask!0 mask!3868))))

(assert (=> start!25944 e!173067))

(declare-datatypes ((array!13030 0))(
  ( (array!13031 (arr!6164 (Array (_ BitVec 32) (_ BitVec 64))) (size!6516 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13030)

(declare-fun array_inv!4118 (array!13030) Bool)

(assert (=> start!25944 (array_inv!4118 a!3325)))

(assert (=> start!25944 true))

(declare-fun b!267724 () Bool)

(declare-fun res!132042 () Bool)

(assert (=> b!267724 (=> (not res!132042) (not e!173067))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267724 (= res!132042 (and (= (size!6516 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6516 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6516 a!3325))))))

(declare-fun b!267725 () Bool)

(declare-fun res!132041 () Bool)

(assert (=> b!267725 (=> (not res!132041) (not e!173067))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267725 (= res!132041 (validKeyInArray!0 k0!2581))))

(declare-fun b!267726 () Bool)

(assert (=> b!267726 (= e!173067 false)))

(declare-fun lt!134747 () Bool)

(declare-datatypes ((List!3993 0))(
  ( (Nil!3990) (Cons!3989 (h!4656 (_ BitVec 64)) (t!9083 List!3993)) )
))
(declare-fun arrayNoDuplicates!0 (array!13030 (_ BitVec 32) List!3993) Bool)

(assert (=> b!267726 (= lt!134747 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3990))))

(assert (= (and start!25944 res!132040) b!267724))

(assert (= (and b!267724 res!132042) b!267725))

(assert (= (and b!267725 res!132041) b!267726))

(declare-fun m!284049 () Bool)

(assert (=> start!25944 m!284049))

(declare-fun m!284051 () Bool)

(assert (=> start!25944 m!284051))

(declare-fun m!284053 () Bool)

(assert (=> b!267725 m!284053))

(declare-fun m!284055 () Bool)

(assert (=> b!267726 m!284055))

(check-sat (not b!267726) (not start!25944) (not b!267725))
