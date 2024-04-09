; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63736 () Bool)

(assert start!63736)

(declare-fun b!717026 () Bool)

(declare-fun res!479954 () Bool)

(declare-fun e!402605 () Bool)

(assert (=> b!717026 (=> (not res!479954) (not e!402605))))

(declare-datatypes ((array!40585 0))(
  ( (array!40586 (arr!19422 (Array (_ BitVec 32) (_ BitVec 64))) (size!19843 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40585)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717026 (= res!479954 (validKeyInArray!0 (select (arr!19422 a!3186) j!159)))))

(declare-fun b!717027 () Bool)

(assert (=> b!717027 (= e!402605 false)))

(declare-datatypes ((SeekEntryResult!7029 0))(
  ( (MissingZero!7029 (index!30483 (_ BitVec 32))) (Found!7029 (index!30484 (_ BitVec 32))) (Intermediate!7029 (undefined!7841 Bool) (index!30485 (_ BitVec 32)) (x!61538 (_ BitVec 32))) (Undefined!7029) (MissingVacant!7029 (index!30486 (_ BitVec 32))) )
))
(declare-fun lt!318974 () SeekEntryResult!7029)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40585 (_ BitVec 32)) SeekEntryResult!7029)

(assert (=> b!717027 (= lt!318974 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!717028 () Bool)

(declare-fun res!479951 () Bool)

(assert (=> b!717028 (=> (not res!479951) (not e!402605))))

(assert (=> b!717028 (= res!479951 (validKeyInArray!0 k!2102))))

(declare-fun b!717029 () Bool)

(declare-fun res!479955 () Bool)

(assert (=> b!717029 (=> (not res!479955) (not e!402605))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!717029 (= res!479955 (and (= (size!19843 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19843 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19843 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!717025 () Bool)

(declare-fun res!479952 () Bool)

(assert (=> b!717025 (=> (not res!479952) (not e!402605))))

(declare-fun arrayContainsKey!0 (array!40585 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717025 (= res!479952 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!479953 () Bool)

(assert (=> start!63736 (=> (not res!479953) (not e!402605))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63736 (= res!479953 (validMask!0 mask!3328))))

(assert (=> start!63736 e!402605))

(declare-fun array_inv!15196 (array!40585) Bool)

(assert (=> start!63736 (array_inv!15196 a!3186)))

(assert (=> start!63736 true))

(assert (= (and start!63736 res!479953) b!717029))

(assert (= (and b!717029 res!479955) b!717026))

(assert (= (and b!717026 res!479954) b!717028))

(assert (= (and b!717028 res!479951) b!717025))

(assert (= (and b!717025 res!479952) b!717027))

(declare-fun m!673095 () Bool)

(assert (=> start!63736 m!673095))

(declare-fun m!673097 () Bool)

(assert (=> start!63736 m!673097))

(declare-fun m!673099 () Bool)

(assert (=> b!717025 m!673099))

(declare-fun m!673101 () Bool)

(assert (=> b!717028 m!673101))

(declare-fun m!673103 () Bool)

(assert (=> b!717027 m!673103))

(declare-fun m!673105 () Bool)

(assert (=> b!717026 m!673105))

(assert (=> b!717026 m!673105))

(declare-fun m!673107 () Bool)

(assert (=> b!717026 m!673107))

(push 1)

(assert (not b!717028))

(assert (not b!717026))

(assert (not b!717027))

(assert (not b!717025))

(assert (not start!63736))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

