; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63728 () Bool)

(assert start!63728)

(declare-fun b!716965 () Bool)

(declare-fun res!479892 () Bool)

(declare-fun e!402582 () Bool)

(assert (=> b!716965 (=> (not res!479892) (not e!402582))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716965 (= res!479892 (validKeyInArray!0 k!2102))))

(declare-fun b!716966 () Bool)

(declare-fun res!479894 () Bool)

(assert (=> b!716966 (=> (not res!479894) (not e!402582))))

(declare-datatypes ((array!40577 0))(
  ( (array!40578 (arr!19418 (Array (_ BitVec 32) (_ BitVec 64))) (size!19839 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40577)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!716966 (= res!479894 (validKeyInArray!0 (select (arr!19418 a!3186) j!159)))))

(declare-fun b!716967 () Bool)

(declare-fun res!479891 () Bool)

(assert (=> b!716967 (=> (not res!479891) (not e!402582))))

(declare-fun arrayContainsKey!0 (array!40577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716967 (= res!479891 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!716968 () Bool)

(declare-fun res!479893 () Bool)

(assert (=> b!716968 (=> (not res!479893) (not e!402582))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!716968 (= res!479893 (and (= (size!19839 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19839 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19839 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!716969 () Bool)

(assert (=> b!716969 (= e!402582 false)))

(declare-datatypes ((SeekEntryResult!7025 0))(
  ( (MissingZero!7025 (index!30467 (_ BitVec 32))) (Found!7025 (index!30468 (_ BitVec 32))) (Intermediate!7025 (undefined!7837 Bool) (index!30469 (_ BitVec 32)) (x!61518 (_ BitVec 32))) (Undefined!7025) (MissingVacant!7025 (index!30470 (_ BitVec 32))) )
))
(declare-fun lt!318962 () SeekEntryResult!7025)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40577 (_ BitVec 32)) SeekEntryResult!7025)

(assert (=> b!716969 (= lt!318962 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!479895 () Bool)

(assert (=> start!63728 (=> (not res!479895) (not e!402582))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63728 (= res!479895 (validMask!0 mask!3328))))

(assert (=> start!63728 e!402582))

(declare-fun array_inv!15192 (array!40577) Bool)

(assert (=> start!63728 (array_inv!15192 a!3186)))

(assert (=> start!63728 true))

(assert (= (and start!63728 res!479895) b!716968))

(assert (= (and b!716968 res!479893) b!716966))

(assert (= (and b!716966 res!479894) b!716965))

(assert (= (and b!716965 res!479892) b!716967))

(assert (= (and b!716967 res!479891) b!716969))

(declare-fun m!673039 () Bool)

(assert (=> b!716965 m!673039))

(declare-fun m!673041 () Bool)

(assert (=> b!716969 m!673041))

(declare-fun m!673043 () Bool)

(assert (=> b!716966 m!673043))

(assert (=> b!716966 m!673043))

(declare-fun m!673045 () Bool)

(assert (=> b!716966 m!673045))

(declare-fun m!673047 () Bool)

(assert (=> start!63728 m!673047))

(declare-fun m!673049 () Bool)

(assert (=> start!63728 m!673049))

(declare-fun m!673051 () Bool)

(assert (=> b!716967 m!673051))

(push 1)

(assert (not b!716967))

(assert (not start!63728))

(assert (not b!716965))

(assert (not b!716969))

(assert (not b!716966))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

