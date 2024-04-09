; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63746 () Bool)

(assert start!63746)

(declare-fun b!717100 () Bool)

(declare-datatypes ((array!40595 0))(
  ( (array!40596 (arr!19427 (Array (_ BitVec 32) (_ BitVec 64))) (size!19848 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40595)

(declare-fun i!1173 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7034 0))(
  ( (MissingZero!7034 (index!30503 (_ BitVec 32))) (Found!7034 (index!30504 (_ BitVec 32))) (Intermediate!7034 (undefined!7846 Bool) (index!30505 (_ BitVec 32)) (x!61551 (_ BitVec 32))) (Undefined!7034) (MissingVacant!7034 (index!30506 (_ BitVec 32))) )
))
(declare-fun lt!318989 () SeekEntryResult!7034)

(declare-fun e!402635 () Bool)

(assert (=> b!717100 (= e!402635 (and (or (= lt!318989 (MissingZero!7034 i!1173)) (= lt!318989 (MissingVacant!7034 i!1173))) (bvsgt #b00000000000000000000000000000000 (size!19848 a!3186))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40595 (_ BitVec 32)) SeekEntryResult!7034)

(assert (=> b!717100 (= lt!318989 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!717101 () Bool)

(declare-fun res!480030 () Bool)

(assert (=> b!717101 (=> (not res!480030) (not e!402635))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!717101 (= res!480030 (and (= (size!19848 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19848 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19848 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!717102 () Bool)

(declare-fun res!480027 () Bool)

(assert (=> b!717102 (=> (not res!480027) (not e!402635))))

(declare-fun arrayContainsKey!0 (array!40595 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717102 (= res!480027 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!717103 () Bool)

(declare-fun res!480026 () Bool)

(assert (=> b!717103 (=> (not res!480026) (not e!402635))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717103 (= res!480026 (validKeyInArray!0 k!2102))))

(declare-fun b!717104 () Bool)

(declare-fun res!480029 () Bool)

(assert (=> b!717104 (=> (not res!480029) (not e!402635))))

(assert (=> b!717104 (= res!480029 (validKeyInArray!0 (select (arr!19427 a!3186) j!159)))))

(declare-fun res!480028 () Bool)

(assert (=> start!63746 (=> (not res!480028) (not e!402635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63746 (= res!480028 (validMask!0 mask!3328))))

(assert (=> start!63746 e!402635))

(declare-fun array_inv!15201 (array!40595) Bool)

(assert (=> start!63746 (array_inv!15201 a!3186)))

(assert (=> start!63746 true))

(assert (= (and start!63746 res!480028) b!717101))

(assert (= (and b!717101 res!480030) b!717104))

(assert (= (and b!717104 res!480029) b!717103))

(assert (= (and b!717103 res!480026) b!717102))

(assert (= (and b!717102 res!480027) b!717100))

(declare-fun m!673165 () Bool)

(assert (=> start!63746 m!673165))

(declare-fun m!673167 () Bool)

(assert (=> start!63746 m!673167))

(declare-fun m!673169 () Bool)

(assert (=> b!717102 m!673169))

(declare-fun m!673171 () Bool)

(assert (=> b!717100 m!673171))

(declare-fun m!673173 () Bool)

(assert (=> b!717103 m!673173))

(declare-fun m!673175 () Bool)

(assert (=> b!717104 m!673175))

(assert (=> b!717104 m!673175))

(declare-fun m!673177 () Bool)

(assert (=> b!717104 m!673177))

(push 1)

(assert (not b!717100))

(assert (not start!63746))

(assert (not b!717102))

(assert (not b!717103))

(assert (not b!717104))

(check-sat)

