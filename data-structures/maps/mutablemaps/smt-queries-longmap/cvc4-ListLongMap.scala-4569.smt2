; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63734 () Bool)

(assert start!63734)

(declare-fun b!717010 () Bool)

(declare-fun res!479938 () Bool)

(declare-fun e!402600 () Bool)

(assert (=> b!717010 (=> (not res!479938) (not e!402600))))

(declare-datatypes ((array!40583 0))(
  ( (array!40584 (arr!19421 (Array (_ BitVec 32) (_ BitVec 64))) (size!19842 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40583)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717010 (= res!479938 (validKeyInArray!0 (select (arr!19421 a!3186) j!159)))))

(declare-fun b!717011 () Bool)

(declare-fun res!479936 () Bool)

(assert (=> b!717011 (=> (not res!479936) (not e!402600))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40583 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717011 (= res!479936 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!717012 () Bool)

(declare-fun res!479939 () Bool)

(assert (=> b!717012 (=> (not res!479939) (not e!402600))))

(assert (=> b!717012 (= res!479939 (validKeyInArray!0 k!2102))))

(declare-fun b!717013 () Bool)

(declare-fun res!479937 () Bool)

(assert (=> b!717013 (=> (not res!479937) (not e!402600))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!717013 (= res!479937 (and (= (size!19842 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19842 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19842 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!479940 () Bool)

(assert (=> start!63734 (=> (not res!479940) (not e!402600))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63734 (= res!479940 (validMask!0 mask!3328))))

(assert (=> start!63734 e!402600))

(declare-fun array_inv!15195 (array!40583) Bool)

(assert (=> start!63734 (array_inv!15195 a!3186)))

(assert (=> start!63734 true))

(declare-fun b!717014 () Bool)

(assert (=> b!717014 (= e!402600 false)))

(declare-datatypes ((SeekEntryResult!7028 0))(
  ( (MissingZero!7028 (index!30479 (_ BitVec 32))) (Found!7028 (index!30480 (_ BitVec 32))) (Intermediate!7028 (undefined!7840 Bool) (index!30481 (_ BitVec 32)) (x!61529 (_ BitVec 32))) (Undefined!7028) (MissingVacant!7028 (index!30482 (_ BitVec 32))) )
))
(declare-fun lt!318971 () SeekEntryResult!7028)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40583 (_ BitVec 32)) SeekEntryResult!7028)

(assert (=> b!717014 (= lt!318971 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!63734 res!479940) b!717013))

(assert (= (and b!717013 res!479937) b!717010))

(assert (= (and b!717010 res!479938) b!717012))

(assert (= (and b!717012 res!479939) b!717011))

(assert (= (and b!717011 res!479936) b!717014))

(declare-fun m!673081 () Bool)

(assert (=> b!717014 m!673081))

(declare-fun m!673083 () Bool)

(assert (=> start!63734 m!673083))

(declare-fun m!673085 () Bool)

(assert (=> start!63734 m!673085))

(declare-fun m!673087 () Bool)

(assert (=> b!717012 m!673087))

(declare-fun m!673089 () Bool)

(assert (=> b!717011 m!673089))

(declare-fun m!673091 () Bool)

(assert (=> b!717010 m!673091))

(assert (=> b!717010 m!673091))

(declare-fun m!673093 () Bool)

(assert (=> b!717010 m!673093))

(push 1)

(assert (not b!717014))

(assert (not b!717011))

(assert (not b!717010))

(assert (not b!717012))

(assert (not start!63734))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

