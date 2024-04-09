; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86512 () Bool)

(assert start!86512)

(declare-fun b!1001347 () Bool)

(declare-fun e!564284 () Bool)

(declare-fun e!564278 () Bool)

(assert (=> b!1001347 (= e!564284 e!564278)))

(declare-fun res!670992 () Bool)

(assert (=> b!1001347 (=> (not res!670992) (not e!564278))))

(declare-datatypes ((SeekEntryResult!9386 0))(
  ( (MissingZero!9386 (index!39914 (_ BitVec 32))) (Found!9386 (index!39915 (_ BitVec 32))) (Intermediate!9386 (undefined!10198 Bool) (index!39916 (_ BitVec 32)) (x!87367 (_ BitVec 32))) (Undefined!9386) (MissingVacant!9386 (index!39917 (_ BitVec 32))) )
))
(declare-fun lt!442641 () SeekEntryResult!9386)

(declare-fun lt!442646 () SeekEntryResult!9386)

(assert (=> b!1001347 (= res!670992 (= lt!442641 lt!442646))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001347 (= lt!442646 (Intermediate!9386 false resIndex!38 resX!38))))

(declare-datatypes ((array!63265 0))(
  ( (array!63266 (arr!30454 (Array (_ BitVec 32) (_ BitVec 64))) (size!30957 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63265)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63265 (_ BitVec 32)) SeekEntryResult!9386)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001347 (= lt!442641 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30454 a!3219) j!170) mask!3464) (select (arr!30454 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001348 () Bool)

(declare-fun res!670988 () Bool)

(declare-fun e!564279 () Bool)

(assert (=> b!1001348 (=> (not res!670988) (not e!564279))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001348 (= res!670988 (validKeyInArray!0 (select (arr!30454 a!3219) j!170)))))

(declare-fun b!1001349 () Bool)

(declare-fun res!670996 () Bool)

(assert (=> b!1001349 (=> (not res!670996) (not e!564279))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63265 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001349 (= res!670996 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001350 () Bool)

(declare-fun res!670993 () Bool)

(assert (=> b!1001350 (=> (not res!670993) (not e!564284))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63265 (_ BitVec 32)) Bool)

(assert (=> b!1001350 (= res!670993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1001351 () Bool)

(declare-fun res!670995 () Bool)

(declare-fun e!564281 () Bool)

(assert (=> b!1001351 (=> (not res!670995) (not e!564281))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!442644 () (_ BitVec 64))

(declare-fun lt!442647 () array!63265)

(declare-fun lt!442643 () SeekEntryResult!9386)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1001351 (= res!670995 (not (= lt!442643 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442644 lt!442647 mask!3464))))))

(declare-fun b!1001352 () Bool)

(assert (=> b!1001352 (= e!564279 e!564284)))

(declare-fun res!670987 () Bool)

(assert (=> b!1001352 (=> (not res!670987) (not e!564284))))

(declare-fun lt!442642 () SeekEntryResult!9386)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1001352 (= res!670987 (or (= lt!442642 (MissingVacant!9386 i!1194)) (= lt!442642 (MissingZero!9386 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63265 (_ BitVec 32)) SeekEntryResult!9386)

(assert (=> b!1001352 (= lt!442642 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1001353 () Bool)

(declare-fun res!670994 () Bool)

(declare-fun e!564283 () Bool)

(assert (=> b!1001353 (=> (not res!670994) (not e!564283))))

(declare-fun lt!442640 () (_ BitVec 32))

(assert (=> b!1001353 (= res!670994 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442640 (select (arr!30454 a!3219) j!170) a!3219 mask!3464) lt!442646))))

(declare-fun b!1001355 () Bool)

(declare-fun res!670984 () Bool)

(assert (=> b!1001355 (=> (not res!670984) (not e!564279))))

(assert (=> b!1001355 (= res!670984 (validKeyInArray!0 k!2224))))

(declare-fun b!1001356 () Bool)

(declare-fun res!670989 () Bool)

(assert (=> b!1001356 (=> (not res!670989) (not e!564279))))

(assert (=> b!1001356 (= res!670989 (and (= (size!30957 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30957 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30957 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001357 () Bool)

(declare-fun res!670985 () Bool)

(assert (=> b!1001357 (=> (not res!670985) (not e!564284))))

(assert (=> b!1001357 (= res!670985 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30957 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30957 a!3219))))))

(declare-fun b!1001358 () Bool)

(declare-fun e!564280 () Bool)

(assert (=> b!1001358 (= e!564278 e!564280)))

(declare-fun res!670991 () Bool)

(assert (=> b!1001358 (=> (not res!670991) (not e!564280))))

(assert (=> b!1001358 (= res!670991 (= lt!442643 lt!442646))))

(assert (=> b!1001358 (= lt!442643 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30454 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001359 () Bool)

(declare-fun res!670990 () Bool)

(assert (=> b!1001359 (=> (not res!670990) (not e!564284))))

(declare-datatypes ((List!21256 0))(
  ( (Nil!21253) (Cons!21252 (h!22429 (_ BitVec 64)) (t!30265 List!21256)) )
))
(declare-fun arrayNoDuplicates!0 (array!63265 (_ BitVec 32) List!21256) Bool)

(assert (=> b!1001359 (= res!670990 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21253))))

(declare-fun b!1001354 () Bool)

(assert (=> b!1001354 (= e!564280 e!564281)))

(declare-fun res!670981 () Bool)

(assert (=> b!1001354 (=> (not res!670981) (not e!564281))))

(assert (=> b!1001354 (= res!670981 (not (= lt!442641 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442644 mask!3464) lt!442644 lt!442647 mask!3464))))))

(assert (=> b!1001354 (= lt!442644 (select (store (arr!30454 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1001354 (= lt!442647 (array!63266 (store (arr!30454 a!3219) i!1194 k!2224) (size!30957 a!3219)))))

(declare-fun res!670983 () Bool)

(assert (=> start!86512 (=> (not res!670983) (not e!564279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86512 (= res!670983 (validMask!0 mask!3464))))

(assert (=> start!86512 e!564279))

(declare-fun array_inv!23444 (array!63265) Bool)

(assert (=> start!86512 (array_inv!23444 a!3219)))

(assert (=> start!86512 true))

(declare-fun b!1001360 () Bool)

(assert (=> b!1001360 (= e!564281 e!564283)))

(declare-fun res!670986 () Bool)

(assert (=> b!1001360 (=> (not res!670986) (not e!564283))))

(assert (=> b!1001360 (= res!670986 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!442640 #b00000000000000000000000000000000) (bvslt lt!442640 (size!30957 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001360 (= lt!442640 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1001361 () Bool)

(declare-fun res!670982 () Bool)

(assert (=> b!1001361 (=> (not res!670982) (not e!564281))))

(assert (=> b!1001361 (= res!670982 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1001362 () Bool)

(assert (=> b!1001362 (= e!564283 false)))

(declare-fun lt!442645 () SeekEntryResult!9386)

(assert (=> b!1001362 (= lt!442645 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442640 lt!442644 lt!442647 mask!3464))))

(assert (= (and start!86512 res!670983) b!1001356))

(assert (= (and b!1001356 res!670989) b!1001348))

(assert (= (and b!1001348 res!670988) b!1001355))

(assert (= (and b!1001355 res!670984) b!1001349))

(assert (= (and b!1001349 res!670996) b!1001352))

(assert (= (and b!1001352 res!670987) b!1001350))

(assert (= (and b!1001350 res!670993) b!1001359))

(assert (= (and b!1001359 res!670990) b!1001357))

(assert (= (and b!1001357 res!670985) b!1001347))

(assert (= (and b!1001347 res!670992) b!1001358))

(assert (= (and b!1001358 res!670991) b!1001354))

(assert (= (and b!1001354 res!670981) b!1001351))

(assert (= (and b!1001351 res!670995) b!1001361))

(assert (= (and b!1001361 res!670982) b!1001360))

(assert (= (and b!1001360 res!670986) b!1001353))

(assert (= (and b!1001353 res!670994) b!1001362))

(declare-fun m!927501 () Bool)

(assert (=> b!1001355 m!927501))

(declare-fun m!927503 () Bool)

(assert (=> b!1001351 m!927503))

(declare-fun m!927505 () Bool)

(assert (=> b!1001348 m!927505))

(assert (=> b!1001348 m!927505))

(declare-fun m!927507 () Bool)

(assert (=> b!1001348 m!927507))

(declare-fun m!927509 () Bool)

(assert (=> b!1001360 m!927509))

(declare-fun m!927511 () Bool)

(assert (=> b!1001354 m!927511))

(assert (=> b!1001354 m!927511))

(declare-fun m!927513 () Bool)

(assert (=> b!1001354 m!927513))

(declare-fun m!927515 () Bool)

(assert (=> b!1001354 m!927515))

(declare-fun m!927517 () Bool)

(assert (=> b!1001354 m!927517))

(declare-fun m!927519 () Bool)

(assert (=> b!1001352 m!927519))

(declare-fun m!927521 () Bool)

(assert (=> b!1001350 m!927521))

(assert (=> b!1001347 m!927505))

(assert (=> b!1001347 m!927505))

(declare-fun m!927523 () Bool)

(assert (=> b!1001347 m!927523))

(assert (=> b!1001347 m!927523))

(assert (=> b!1001347 m!927505))

(declare-fun m!927525 () Bool)

(assert (=> b!1001347 m!927525))

(declare-fun m!927527 () Bool)

(assert (=> start!86512 m!927527))

(declare-fun m!927529 () Bool)

(assert (=> start!86512 m!927529))

(assert (=> b!1001353 m!927505))

(assert (=> b!1001353 m!927505))

(declare-fun m!927531 () Bool)

(assert (=> b!1001353 m!927531))

(declare-fun m!927533 () Bool)

(assert (=> b!1001362 m!927533))

(declare-fun m!927535 () Bool)

(assert (=> b!1001349 m!927535))

(declare-fun m!927537 () Bool)

(assert (=> b!1001359 m!927537))

(assert (=> b!1001358 m!927505))

(assert (=> b!1001358 m!927505))

(declare-fun m!927539 () Bool)

(assert (=> b!1001358 m!927539))

(push 1)

