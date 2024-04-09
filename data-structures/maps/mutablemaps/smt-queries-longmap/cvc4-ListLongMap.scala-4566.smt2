; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63716 () Bool)

(assert start!63716)

(declare-fun b!716875 () Bool)

(declare-fun e!402546 () Bool)

(assert (=> b!716875 (= e!402546 false)))

(declare-datatypes ((array!40565 0))(
  ( (array!40566 (arr!19412 (Array (_ BitVec 32) (_ BitVec 64))) (size!19833 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40565)

(declare-fun k!2102 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!7019 0))(
  ( (MissingZero!7019 (index!30443 (_ BitVec 32))) (Found!7019 (index!30444 (_ BitVec 32))) (Intermediate!7019 (undefined!7831 Bool) (index!30445 (_ BitVec 32)) (x!61496 (_ BitVec 32))) (Undefined!7019) (MissingVacant!7019 (index!30446 (_ BitVec 32))) )
))
(declare-fun lt!318944 () SeekEntryResult!7019)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40565 (_ BitVec 32)) SeekEntryResult!7019)

(assert (=> b!716875 (= lt!318944 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!716876 () Bool)

(declare-fun res!479803 () Bool)

(assert (=> b!716876 (=> (not res!479803) (not e!402546))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!716876 (= res!479803 (and (= (size!19833 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19833 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19833 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!716877 () Bool)

(declare-fun res!479804 () Bool)

(assert (=> b!716877 (=> (not res!479804) (not e!402546))))

(declare-fun arrayContainsKey!0 (array!40565 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716877 (= res!479804 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!716878 () Bool)

(declare-fun res!479801 () Bool)

(assert (=> b!716878 (=> (not res!479801) (not e!402546))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716878 (= res!479801 (validKeyInArray!0 k!2102))))

(declare-fun res!479805 () Bool)

(assert (=> start!63716 (=> (not res!479805) (not e!402546))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63716 (= res!479805 (validMask!0 mask!3328))))

(assert (=> start!63716 e!402546))

(declare-fun array_inv!15186 (array!40565) Bool)

(assert (=> start!63716 (array_inv!15186 a!3186)))

(assert (=> start!63716 true))

(declare-fun b!716879 () Bool)

(declare-fun res!479802 () Bool)

(assert (=> b!716879 (=> (not res!479802) (not e!402546))))

(assert (=> b!716879 (= res!479802 (validKeyInArray!0 (select (arr!19412 a!3186) j!159)))))

(assert (= (and start!63716 res!479805) b!716876))

(assert (= (and b!716876 res!479803) b!716879))

(assert (= (and b!716879 res!479802) b!716878))

(assert (= (and b!716878 res!479801) b!716877))

(assert (= (and b!716877 res!479804) b!716875))

(declare-fun m!672955 () Bool)

(assert (=> b!716878 m!672955))

(declare-fun m!672957 () Bool)

(assert (=> b!716877 m!672957))

(declare-fun m!672959 () Bool)

(assert (=> start!63716 m!672959))

(declare-fun m!672961 () Bool)

(assert (=> start!63716 m!672961))

(declare-fun m!672963 () Bool)

(assert (=> b!716879 m!672963))

(assert (=> b!716879 m!672963))

(declare-fun m!672965 () Bool)

(assert (=> b!716879 m!672965))

(declare-fun m!672967 () Bool)

(assert (=> b!716875 m!672967))

(push 1)

(assert (not start!63716))

(assert (not b!716878))

(assert (not b!716879))

(assert (not b!716877))

(assert (not b!716875))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

