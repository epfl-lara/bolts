; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25800 () Bool)

(assert start!25800)

(declare-fun res!131639 () Bool)

(declare-fun e!172801 () Bool)

(assert (=> start!25800 (=> (not res!131639) (not e!172801))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25800 (= res!131639 (validMask!0 mask!3868))))

(assert (=> start!25800 e!172801))

(declare-datatypes ((array!12966 0))(
  ( (array!12967 (arr!6137 (Array (_ BitVec 32) (_ BitVec 64))) (size!6489 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!12966)

(declare-fun array_inv!4091 (array!12966) Bool)

(assert (=> start!25800 (array_inv!4091 a!3325)))

(assert (=> start!25800 true))

(declare-fun b!267304 () Bool)

(declare-fun res!131638 () Bool)

(assert (=> b!267304 (=> (not res!131638) (not e!172801))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267304 (= res!131638 (and (= (size!6489 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6489 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6489 a!3325))))))

(declare-fun b!267305 () Bool)

(declare-fun res!131640 () Bool)

(assert (=> b!267305 (=> (not res!131640) (not e!172801))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267305 (= res!131640 (validKeyInArray!0 k0!2581))))

(declare-fun b!267306 () Bool)

(assert (=> b!267306 (= e!172801 (bvsgt #b00000000000000000000000000000000 (size!6489 a!3325)))))

(assert (= (and start!25800 res!131639) b!267304))

(assert (= (and b!267304 res!131638) b!267305))

(assert (= (and b!267305 res!131640) b!267306))

(declare-fun m!283751 () Bool)

(assert (=> start!25800 m!283751))

(declare-fun m!283753 () Bool)

(assert (=> start!25800 m!283753))

(declare-fun m!283755 () Bool)

(assert (=> b!267305 m!283755))

(check-sat (not b!267305) (not start!25800))
(check-sat)
