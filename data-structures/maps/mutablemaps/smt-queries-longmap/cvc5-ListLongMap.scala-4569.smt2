; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63730 () Bool)

(assert start!63730)

(declare-fun res!479907 () Bool)

(declare-fun e!402587 () Bool)

(assert (=> start!63730 (=> (not res!479907) (not e!402587))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63730 (= res!479907 (validMask!0 mask!3328))))

(assert (=> start!63730 e!402587))

(declare-datatypes ((array!40579 0))(
  ( (array!40580 (arr!19419 (Array (_ BitVec 32) (_ BitVec 64))) (size!19840 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40579)

(declare-fun array_inv!15193 (array!40579) Bool)

(assert (=> start!63730 (array_inv!15193 a!3186)))

(assert (=> start!63730 true))

(declare-fun b!716980 () Bool)

(declare-fun res!479909 () Bool)

(assert (=> b!716980 (=> (not res!479909) (not e!402587))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716980 (= res!479909 (validKeyInArray!0 (select (arr!19419 a!3186) j!159)))))

(declare-fun b!716981 () Bool)

(declare-fun res!479908 () Bool)

(assert (=> b!716981 (=> (not res!479908) (not e!402587))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!716981 (= res!479908 (validKeyInArray!0 k!2102))))

(declare-fun b!716982 () Bool)

(declare-fun res!479910 () Bool)

(assert (=> b!716982 (=> (not res!479910) (not e!402587))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!716982 (= res!479910 (and (= (size!19840 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19840 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19840 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!716983 () Bool)

(declare-fun res!479906 () Bool)

(assert (=> b!716983 (=> (not res!479906) (not e!402587))))

(declare-fun arrayContainsKey!0 (array!40579 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716983 (= res!479906 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!716984 () Bool)

(assert (=> b!716984 (= e!402587 false)))

(declare-datatypes ((SeekEntryResult!7026 0))(
  ( (MissingZero!7026 (index!30471 (_ BitVec 32))) (Found!7026 (index!30472 (_ BitVec 32))) (Intermediate!7026 (undefined!7838 Bool) (index!30473 (_ BitVec 32)) (x!61527 (_ BitVec 32))) (Undefined!7026) (MissingVacant!7026 (index!30474 (_ BitVec 32))) )
))
(declare-fun lt!318965 () SeekEntryResult!7026)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40579 (_ BitVec 32)) SeekEntryResult!7026)

(assert (=> b!716984 (= lt!318965 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!63730 res!479907) b!716982))

(assert (= (and b!716982 res!479910) b!716980))

(assert (= (and b!716980 res!479909) b!716981))

(assert (= (and b!716981 res!479908) b!716983))

(assert (= (and b!716983 res!479906) b!716984))

(declare-fun m!673053 () Bool)

(assert (=> b!716980 m!673053))

(assert (=> b!716980 m!673053))

(declare-fun m!673055 () Bool)

(assert (=> b!716980 m!673055))

(declare-fun m!673057 () Bool)

(assert (=> b!716983 m!673057))

(declare-fun m!673059 () Bool)

(assert (=> b!716981 m!673059))

(declare-fun m!673061 () Bool)

(assert (=> b!716984 m!673061))

(declare-fun m!673063 () Bool)

(assert (=> start!63730 m!673063))

(declare-fun m!673065 () Bool)

(assert (=> start!63730 m!673065))

(push 1)

(assert (not b!716980))

(assert (not b!716984))

(assert (not b!716983))

(assert (not b!716981))

(assert (not start!63730))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

