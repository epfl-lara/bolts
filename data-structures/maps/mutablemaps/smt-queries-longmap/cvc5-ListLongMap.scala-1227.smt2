; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25930 () Bool)

(assert start!25930)

(declare-fun res!131961 () Bool)

(declare-fun e!173025 () Bool)

(assert (=> start!25930 (=> (not res!131961) (not e!173025))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25930 (= res!131961 (validMask!0 mask!3868))))

(assert (=> start!25930 e!173025))

(declare-datatypes ((array!13016 0))(
  ( (array!13017 (arr!6157 (Array (_ BitVec 32) (_ BitVec 64))) (size!6509 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13016)

(declare-fun array_inv!4111 (array!13016) Bool)

(assert (=> start!25930 (array_inv!4111 a!3325)))

(assert (=> start!25930 true))

(declare-fun b!267643 () Bool)

(declare-fun res!131960 () Bool)

(assert (=> b!267643 (=> (not res!131960) (not e!173025))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267643 (= res!131960 (and (= (size!6509 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6509 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6509 a!3325))))))

(declare-fun b!267644 () Bool)

(declare-fun res!131959 () Bool)

(assert (=> b!267644 (=> (not res!131959) (not e!173025))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267644 (= res!131959 (validKeyInArray!0 k!2581))))

(declare-fun b!267645 () Bool)

(assert (=> b!267645 (= e!173025 false)))

(declare-fun lt!134735 () Bool)

(declare-datatypes ((List!3986 0))(
  ( (Nil!3983) (Cons!3982 (h!4649 (_ BitVec 64)) (t!9076 List!3986)) )
))
(declare-fun arrayNoDuplicates!0 (array!13016 (_ BitVec 32) List!3986) Bool)

(assert (=> b!267645 (= lt!134735 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3983))))

(assert (= (and start!25930 res!131961) b!267643))

(assert (= (and b!267643 res!131960) b!267644))

(assert (= (and b!267644 res!131959) b!267645))

(declare-fun m!283987 () Bool)

(assert (=> start!25930 m!283987))

(declare-fun m!283989 () Bool)

(assert (=> start!25930 m!283989))

(declare-fun m!283991 () Bool)

(assert (=> b!267644 m!283991))

(declare-fun m!283993 () Bool)

(assert (=> b!267645 m!283993))

(push 1)

(assert (not b!267644))

(assert (not start!25930))

(assert (not b!267645))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

