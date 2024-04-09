; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63800 () Bool)

(assert start!63800)

(declare-fun b!717403 () Bool)

(declare-fun res!480260 () Bool)

(declare-fun e!402789 () Bool)

(assert (=> b!717403 (=> (not res!480260) (not e!402789))))

(declare-datatypes ((array!40616 0))(
  ( (array!40617 (arr!19436 (Array (_ BitVec 32) (_ BitVec 64))) (size!19857 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40616)

(assert (=> b!717403 (= res!480260 (and (bvsle #b00000000000000000000000000000000 (size!19857 a!3186)) (bvslt (size!19857 a!3186) #b01111111111111111111111111111111)))))

(declare-fun b!717404 () Bool)

(declare-datatypes ((List!13491 0))(
  ( (Nil!13488) (Cons!13487 (h!14532 (_ BitVec 64)) (t!19814 List!13491)) )
))
(declare-fun noDuplicate!1281 (List!13491) Bool)

(assert (=> b!717404 (= e!402789 (not (noDuplicate!1281 Nil!13488)))))

(declare-fun b!717405 () Bool)

(declare-fun res!480262 () Bool)

(assert (=> b!717405 (=> (not res!480262) (not e!402789))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40616 (_ BitVec 32)) Bool)

(assert (=> b!717405 (= res!480262 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!717406 () Bool)

(declare-fun res!480264 () Bool)

(declare-fun e!402787 () Bool)

(assert (=> b!717406 (=> (not res!480264) (not e!402787))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717406 (= res!480264 (validKeyInArray!0 (select (arr!19436 a!3186) j!159)))))

(declare-fun b!717407 () Bool)

(assert (=> b!717407 (= e!402787 e!402789)))

(declare-fun res!480258 () Bool)

(assert (=> b!717407 (=> (not res!480258) (not e!402789))))

(declare-datatypes ((SeekEntryResult!7043 0))(
  ( (MissingZero!7043 (index!30539 (_ BitVec 32))) (Found!7043 (index!30540 (_ BitVec 32))) (Intermediate!7043 (undefined!7855 Bool) (index!30541 (_ BitVec 32)) (x!61584 (_ BitVec 32))) (Undefined!7043) (MissingVacant!7043 (index!30542 (_ BitVec 32))) )
))
(declare-fun lt!319070 () SeekEntryResult!7043)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!717407 (= res!480258 (or (= lt!319070 (MissingZero!7043 i!1173)) (= lt!319070 (MissingVacant!7043 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40616 (_ BitVec 32)) SeekEntryResult!7043)

(assert (=> b!717407 (= lt!319070 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!717408 () Bool)

(declare-fun res!480263 () Bool)

(assert (=> b!717408 (=> (not res!480263) (not e!402787))))

(declare-fun arrayContainsKey!0 (array!40616 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717408 (= res!480263 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!480257 () Bool)

(assert (=> start!63800 (=> (not res!480257) (not e!402787))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63800 (= res!480257 (validMask!0 mask!3328))))

(assert (=> start!63800 e!402787))

(declare-fun array_inv!15210 (array!40616) Bool)

(assert (=> start!63800 (array_inv!15210 a!3186)))

(assert (=> start!63800 true))

(declare-fun b!717409 () Bool)

(declare-fun res!480259 () Bool)

(assert (=> b!717409 (=> (not res!480259) (not e!402787))))

(assert (=> b!717409 (= res!480259 (and (= (size!19857 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19857 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19857 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!717410 () Bool)

(declare-fun res!480261 () Bool)

(assert (=> b!717410 (=> (not res!480261) (not e!402787))))

(assert (=> b!717410 (= res!480261 (validKeyInArray!0 k!2102))))

(assert (= (and start!63800 res!480257) b!717409))

(assert (= (and b!717409 res!480259) b!717406))

(assert (= (and b!717406 res!480264) b!717410))

(assert (= (and b!717410 res!480261) b!717408))

(assert (= (and b!717408 res!480263) b!717407))

(assert (= (and b!717407 res!480258) b!717405))

(assert (= (and b!717405 res!480262) b!717403))

(assert (= (and b!717403 res!480260) b!717404))

(declare-fun m!673395 () Bool)

(assert (=> start!63800 m!673395))

(declare-fun m!673397 () Bool)

(assert (=> start!63800 m!673397))

(declare-fun m!673399 () Bool)

(assert (=> b!717406 m!673399))

(assert (=> b!717406 m!673399))

(declare-fun m!673401 () Bool)

(assert (=> b!717406 m!673401))

(declare-fun m!673403 () Bool)

(assert (=> b!717408 m!673403))

(declare-fun m!673405 () Bool)

(assert (=> b!717405 m!673405))

(declare-fun m!673407 () Bool)

(assert (=> b!717404 m!673407))

(declare-fun m!673409 () Bool)

(assert (=> b!717410 m!673409))

(declare-fun m!673411 () Bool)

(assert (=> b!717407 m!673411))

(push 1)

(assert (not b!717406))

(assert (not start!63800))

(assert (not b!717408))

(assert (not b!717404))

(assert (not b!717405))

(assert (not b!717407))

(assert (not b!717410))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

