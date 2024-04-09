; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25934 () Bool)

(assert start!25934)

(declare-fun res!131977 () Bool)

(declare-fun e!173038 () Bool)

(assert (=> start!25934 (=> (not res!131977) (not e!173038))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25934 (= res!131977 (validMask!0 mask!3868))))

(assert (=> start!25934 e!173038))

(declare-datatypes ((array!13020 0))(
  ( (array!13021 (arr!6159 (Array (_ BitVec 32) (_ BitVec 64))) (size!6511 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13020)

(declare-fun array_inv!4113 (array!13020) Bool)

(assert (=> start!25934 (array_inv!4113 a!3325)))

(assert (=> start!25934 true))

(declare-fun b!267661 () Bool)

(declare-fun res!131978 () Bool)

(assert (=> b!267661 (=> (not res!131978) (not e!173038))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267661 (= res!131978 (and (= (size!6511 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6511 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6511 a!3325))))))

(declare-fun b!267662 () Bool)

(declare-fun res!131979 () Bool)

(assert (=> b!267662 (=> (not res!131979) (not e!173038))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267662 (= res!131979 (validKeyInArray!0 k!2581))))

(declare-fun b!267663 () Bool)

(assert (=> b!267663 (= e!173038 false)))

(declare-fun lt!134741 () Bool)

(declare-datatypes ((List!3988 0))(
  ( (Nil!3985) (Cons!3984 (h!4651 (_ BitVec 64)) (t!9078 List!3988)) )
))
(declare-fun arrayNoDuplicates!0 (array!13020 (_ BitVec 32) List!3988) Bool)

(assert (=> b!267663 (= lt!134741 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3985))))

(assert (= (and start!25934 res!131977) b!267661))

(assert (= (and b!267661 res!131978) b!267662))

(assert (= (and b!267662 res!131979) b!267663))

(declare-fun m!284003 () Bool)

(assert (=> start!25934 m!284003))

(declare-fun m!284005 () Bool)

(assert (=> start!25934 m!284005))

(declare-fun m!284007 () Bool)

(assert (=> b!267662 m!284007))

(declare-fun m!284009 () Bool)

(assert (=> b!267663 m!284009))

(push 1)

(assert (not b!267663))

(assert (not b!267662))

(assert (not start!25934))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

