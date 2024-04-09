; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63752 () Bool)

(assert start!63752)

(declare-fun b!717161 () Bool)

(declare-fun res!480089 () Bool)

(declare-fun e!402662 () Bool)

(assert (=> b!717161 (=> (not res!480089) (not e!402662))))

(declare-datatypes ((array!40601 0))(
  ( (array!40602 (arr!19430 (Array (_ BitVec 32) (_ BitVec 64))) (size!19851 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40601)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40601 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717161 (= res!480089 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!717162 () Bool)

(declare-fun res!480087 () Bool)

(declare-fun e!402663 () Bool)

(assert (=> b!717162 (=> (not res!480087) (not e!402663))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40601 (_ BitVec 32)) Bool)

(assert (=> b!717162 (= res!480087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!480088 () Bool)

(assert (=> start!63752 (=> (not res!480088) (not e!402662))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63752 (= res!480088 (validMask!0 mask!3328))))

(assert (=> start!63752 e!402662))

(declare-fun array_inv!15204 (array!40601) Bool)

(assert (=> start!63752 (array_inv!15204 a!3186)))

(assert (=> start!63752 true))

(declare-fun b!717163 () Bool)

(declare-fun res!480092 () Bool)

(assert (=> b!717163 (=> (not res!480092) (not e!402662))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717163 (= res!480092 (validKeyInArray!0 k!2102))))

(declare-fun b!717164 () Bool)

(declare-fun res!480090 () Bool)

(assert (=> b!717164 (=> (not res!480090) (not e!402662))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!717164 (= res!480090 (validKeyInArray!0 (select (arr!19430 a!3186) j!159)))))

(declare-fun b!717165 () Bool)

(assert (=> b!717165 (= e!402663 (bvsgt #b00000000000000000000000000000000 (size!19851 a!3186)))))

(declare-fun b!717166 () Bool)

(assert (=> b!717166 (= e!402662 e!402663)))

(declare-fun res!480091 () Bool)

(assert (=> b!717166 (=> (not res!480091) (not e!402663))))

(declare-datatypes ((SeekEntryResult!7037 0))(
  ( (MissingZero!7037 (index!30515 (_ BitVec 32))) (Found!7037 (index!30516 (_ BitVec 32))) (Intermediate!7037 (undefined!7849 Bool) (index!30517 (_ BitVec 32)) (x!61562 (_ BitVec 32))) (Undefined!7037) (MissingVacant!7037 (index!30518 (_ BitVec 32))) )
))
(declare-fun lt!318998 () SeekEntryResult!7037)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!717166 (= res!480091 (or (= lt!318998 (MissingZero!7037 i!1173)) (= lt!318998 (MissingVacant!7037 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40601 (_ BitVec 32)) SeekEntryResult!7037)

(assert (=> b!717166 (= lt!318998 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!717167 () Bool)

(declare-fun res!480093 () Bool)

(assert (=> b!717167 (=> (not res!480093) (not e!402662))))

(assert (=> b!717167 (= res!480093 (and (= (size!19851 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19851 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19851 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!63752 res!480088) b!717167))

(assert (= (and b!717167 res!480093) b!717164))

(assert (= (and b!717164 res!480090) b!717163))

(assert (= (and b!717163 res!480092) b!717161))

(assert (= (and b!717161 res!480089) b!717166))

(assert (= (and b!717166 res!480091) b!717162))

(assert (= (and b!717162 res!480087) b!717165))

(declare-fun m!673211 () Bool)

(assert (=> b!717164 m!673211))

(assert (=> b!717164 m!673211))

(declare-fun m!673213 () Bool)

(assert (=> b!717164 m!673213))

(declare-fun m!673215 () Bool)

(assert (=> b!717162 m!673215))

(declare-fun m!673217 () Bool)

(assert (=> b!717161 m!673217))

(declare-fun m!673219 () Bool)

(assert (=> start!63752 m!673219))

(declare-fun m!673221 () Bool)

(assert (=> start!63752 m!673221))

(declare-fun m!673223 () Bool)

(assert (=> b!717166 m!673223))

(declare-fun m!673225 () Bool)

(assert (=> b!717163 m!673225))

(push 1)

(assert (not b!717166))

(assert (not b!717163))

(assert (not b!717162))

(assert (not b!717164))

(assert (not start!63752))

(assert (not b!717161))

(check-sat)

(pop 1)

