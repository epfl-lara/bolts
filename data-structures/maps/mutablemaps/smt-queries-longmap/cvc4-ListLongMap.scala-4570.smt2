; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63740 () Bool)

(assert start!63740)

(declare-fun b!717055 () Bool)

(declare-fun res!479983 () Bool)

(declare-fun e!402618 () Bool)

(assert (=> b!717055 (=> (not res!479983) (not e!402618))))

(declare-datatypes ((array!40589 0))(
  ( (array!40590 (arr!19424 (Array (_ BitVec 32) (_ BitVec 64))) (size!19845 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40589)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!717055 (= res!479983 (and (= (size!19845 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19845 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19845 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!717056 () Bool)

(declare-fun res!479982 () Bool)

(assert (=> b!717056 (=> (not res!479982) (not e!402618))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717056 (= res!479982 (validKeyInArray!0 (select (arr!19424 a!3186) j!159)))))

(declare-fun res!479981 () Bool)

(assert (=> start!63740 (=> (not res!479981) (not e!402618))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63740 (= res!479981 (validMask!0 mask!3328))))

(assert (=> start!63740 e!402618))

(declare-fun array_inv!15198 (array!40589) Bool)

(assert (=> start!63740 (array_inv!15198 a!3186)))

(assert (=> start!63740 true))

(declare-fun b!717057 () Bool)

(declare-fun res!479985 () Bool)

(assert (=> b!717057 (=> (not res!479985) (not e!402618))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!717057 (= res!479985 (validKeyInArray!0 k!2102))))

(declare-fun b!717058 () Bool)

(assert (=> b!717058 (= e!402618 false)))

(declare-datatypes ((SeekEntryResult!7031 0))(
  ( (MissingZero!7031 (index!30491 (_ BitVec 32))) (Found!7031 (index!30492 (_ BitVec 32))) (Intermediate!7031 (undefined!7843 Bool) (index!30493 (_ BitVec 32)) (x!61540 (_ BitVec 32))) (Undefined!7031) (MissingVacant!7031 (index!30494 (_ BitVec 32))) )
))
(declare-fun lt!318980 () SeekEntryResult!7031)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40589 (_ BitVec 32)) SeekEntryResult!7031)

(assert (=> b!717058 (= lt!318980 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!717059 () Bool)

(declare-fun res!479984 () Bool)

(assert (=> b!717059 (=> (not res!479984) (not e!402618))))

(declare-fun arrayContainsKey!0 (array!40589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717059 (= res!479984 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!63740 res!479981) b!717055))

(assert (= (and b!717055 res!479983) b!717056))

(assert (= (and b!717056 res!479982) b!717057))

(assert (= (and b!717057 res!479985) b!717059))

(assert (= (and b!717059 res!479984) b!717058))

(declare-fun m!673123 () Bool)

(assert (=> b!717057 m!673123))

(declare-fun m!673125 () Bool)

(assert (=> b!717058 m!673125))

(declare-fun m!673127 () Bool)

(assert (=> start!63740 m!673127))

(declare-fun m!673129 () Bool)

(assert (=> start!63740 m!673129))

(declare-fun m!673131 () Bool)

(assert (=> b!717059 m!673131))

(declare-fun m!673133 () Bool)

(assert (=> b!717056 m!673133))

(assert (=> b!717056 m!673133))

(declare-fun m!673135 () Bool)

(assert (=> b!717056 m!673135))

(push 1)

(assert (not b!717059))

(assert (not b!717058))

(assert (not b!717056))

(assert (not b!717057))

(assert (not start!63740))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

