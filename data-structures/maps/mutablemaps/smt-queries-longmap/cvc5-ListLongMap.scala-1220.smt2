; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25798 () Bool)

(assert start!25798)

(declare-fun res!131629 () Bool)

(declare-fun e!172794 () Bool)

(assert (=> start!25798 (=> (not res!131629) (not e!172794))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25798 (= res!131629 (validMask!0 mask!3868))))

(assert (=> start!25798 e!172794))

(declare-datatypes ((array!12964 0))(
  ( (array!12965 (arr!6136 (Array (_ BitVec 32) (_ BitVec 64))) (size!6488 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!12964)

(declare-fun array_inv!4090 (array!12964) Bool)

(assert (=> start!25798 (array_inv!4090 a!3325)))

(assert (=> start!25798 true))

(declare-fun b!267295 () Bool)

(declare-fun res!131631 () Bool)

(assert (=> b!267295 (=> (not res!131631) (not e!172794))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267295 (= res!131631 (and (= (size!6488 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6488 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6488 a!3325))))))

(declare-fun b!267296 () Bool)

(declare-fun res!131630 () Bool)

(assert (=> b!267296 (=> (not res!131630) (not e!172794))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267296 (= res!131630 (validKeyInArray!0 k!2581))))

(declare-fun b!267297 () Bool)

(assert (=> b!267297 (= e!172794 (bvsgt #b00000000000000000000000000000000 (size!6488 a!3325)))))

(assert (= (and start!25798 res!131629) b!267295))

(assert (= (and b!267295 res!131631) b!267296))

(assert (= (and b!267296 res!131630) b!267297))

(declare-fun m!283745 () Bool)

(assert (=> start!25798 m!283745))

(declare-fun m!283747 () Bool)

(assert (=> start!25798 m!283747))

(declare-fun m!283749 () Bool)

(assert (=> b!267296 m!283749))

(push 1)

(assert (not b!267296))

(assert (not start!25798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

