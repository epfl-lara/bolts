; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86484 () Bool)

(assert start!86484)

(declare-fun b!1000773 () Bool)

(declare-fun res!670411 () Bool)

(declare-fun e!564020 () Bool)

(assert (=> b!1000773 (=> (not res!670411) (not e!564020))))

(declare-datatypes ((array!63237 0))(
  ( (array!63238 (arr!30440 (Array (_ BitVec 32) (_ BitVec 64))) (size!30943 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63237)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9372 0))(
  ( (MissingZero!9372 (index!39858 (_ BitVec 32))) (Found!9372 (index!39859 (_ BitVec 32))) (Intermediate!9372 (undefined!10184 Bool) (index!39860 (_ BitVec 32)) (x!87313 (_ BitVec 32))) (Undefined!9372) (MissingVacant!9372 (index!39861 (_ BitVec 32))) )
))
(declare-fun lt!442370 () SeekEntryResult!9372)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63237 (_ BitVec 32)) SeekEntryResult!9372)

(assert (=> b!1000773 (= res!670411 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30440 a!3219) j!170) a!3219 mask!3464) lt!442370))))

(declare-fun b!1000774 () Bool)

(declare-fun res!670407 () Bool)

(declare-fun e!564023 () Bool)

(assert (=> b!1000774 (=> (not res!670407) (not e!564023))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000774 (= res!670407 (validKeyInArray!0 (select (arr!30440 a!3219) j!170)))))

(declare-fun b!1000775 () Bool)

(declare-fun e!564021 () Bool)

(assert (=> b!1000775 (= e!564023 e!564021)))

(declare-fun res!670415 () Bool)

(assert (=> b!1000775 (=> (not res!670415) (not e!564021))))

(declare-fun lt!442366 () SeekEntryResult!9372)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1000775 (= res!670415 (or (= lt!442366 (MissingVacant!9372 i!1194)) (= lt!442366 (MissingZero!9372 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63237 (_ BitVec 32)) SeekEntryResult!9372)

(assert (=> b!1000775 (= lt!442366 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1000776 () Bool)

(declare-fun e!564022 () Bool)

(assert (=> b!1000776 (= e!564020 e!564022)))

(declare-fun res!670410 () Bool)

(assert (=> b!1000776 (=> (not res!670410) (not e!564022))))

(declare-fun lt!442368 () array!63237)

(declare-fun lt!442367 () (_ BitVec 64))

(declare-fun lt!442369 () SeekEntryResult!9372)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000776 (= res!670410 (not (= lt!442369 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442367 mask!3464) lt!442367 lt!442368 mask!3464))))))

(assert (=> b!1000776 (= lt!442367 (select (store (arr!30440 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1000776 (= lt!442368 (array!63238 (store (arr!30440 a!3219) i!1194 k0!2224) (size!30943 a!3219)))))

(declare-fun b!1000777 () Bool)

(assert (=> b!1000777 (= e!564021 e!564020)))

(declare-fun res!670417 () Bool)

(assert (=> b!1000777 (=> (not res!670417) (not e!564020))))

(assert (=> b!1000777 (= res!670417 (= lt!442369 lt!442370))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000777 (= lt!442370 (Intermediate!9372 false resIndex!38 resX!38))))

(assert (=> b!1000777 (= lt!442369 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30440 a!3219) j!170) mask!3464) (select (arr!30440 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000778 () Bool)

(declare-fun res!670416 () Bool)

(assert (=> b!1000778 (=> (not res!670416) (not e!564023))))

(declare-fun arrayContainsKey!0 (array!63237 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000778 (= res!670416 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000779 () Bool)

(assert (=> b!1000779 (= e!564022 false)))

(declare-fun lt!442371 () SeekEntryResult!9372)

(assert (=> b!1000779 (= lt!442371 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442367 lt!442368 mask!3464))))

(declare-fun b!1000780 () Bool)

(declare-fun res!670409 () Bool)

(assert (=> b!1000780 (=> (not res!670409) (not e!564021))))

(assert (=> b!1000780 (= res!670409 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30943 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30943 a!3219))))))

(declare-fun b!1000781 () Bool)

(declare-fun res!670412 () Bool)

(assert (=> b!1000781 (=> (not res!670412) (not e!564021))))

(declare-datatypes ((List!21242 0))(
  ( (Nil!21239) (Cons!21238 (h!22415 (_ BitVec 64)) (t!30251 List!21242)) )
))
(declare-fun arrayNoDuplicates!0 (array!63237 (_ BitVec 32) List!21242) Bool)

(assert (=> b!1000781 (= res!670412 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21239))))

(declare-fun res!670414 () Bool)

(assert (=> start!86484 (=> (not res!670414) (not e!564023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86484 (= res!670414 (validMask!0 mask!3464))))

(assert (=> start!86484 e!564023))

(declare-fun array_inv!23430 (array!63237) Bool)

(assert (=> start!86484 (array_inv!23430 a!3219)))

(assert (=> start!86484 true))

(declare-fun b!1000772 () Bool)

(declare-fun res!670406 () Bool)

(assert (=> b!1000772 (=> (not res!670406) (not e!564021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63237 (_ BitVec 32)) Bool)

(assert (=> b!1000772 (= res!670406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000782 () Bool)

(declare-fun res!670413 () Bool)

(assert (=> b!1000782 (=> (not res!670413) (not e!564023))))

(assert (=> b!1000782 (= res!670413 (and (= (size!30943 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30943 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30943 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000783 () Bool)

(declare-fun res!670408 () Bool)

(assert (=> b!1000783 (=> (not res!670408) (not e!564023))))

(assert (=> b!1000783 (= res!670408 (validKeyInArray!0 k0!2224))))

(assert (= (and start!86484 res!670414) b!1000782))

(assert (= (and b!1000782 res!670413) b!1000774))

(assert (= (and b!1000774 res!670407) b!1000783))

(assert (= (and b!1000783 res!670408) b!1000778))

(assert (= (and b!1000778 res!670416) b!1000775))

(assert (= (and b!1000775 res!670415) b!1000772))

(assert (= (and b!1000772 res!670406) b!1000781))

(assert (= (and b!1000781 res!670412) b!1000780))

(assert (= (and b!1000780 res!670409) b!1000777))

(assert (= (and b!1000777 res!670417) b!1000773))

(assert (= (and b!1000773 res!670411) b!1000776))

(assert (= (and b!1000776 res!670410) b!1000779))

(declare-fun m!927007 () Bool)

(assert (=> b!1000775 m!927007))

(declare-fun m!927009 () Bool)

(assert (=> b!1000783 m!927009))

(declare-fun m!927011 () Bool)

(assert (=> b!1000781 m!927011))

(declare-fun m!927013 () Bool)

(assert (=> b!1000777 m!927013))

(assert (=> b!1000777 m!927013))

(declare-fun m!927015 () Bool)

(assert (=> b!1000777 m!927015))

(assert (=> b!1000777 m!927015))

(assert (=> b!1000777 m!927013))

(declare-fun m!927017 () Bool)

(assert (=> b!1000777 m!927017))

(declare-fun m!927019 () Bool)

(assert (=> b!1000779 m!927019))

(assert (=> b!1000774 m!927013))

(assert (=> b!1000774 m!927013))

(declare-fun m!927021 () Bool)

(assert (=> b!1000774 m!927021))

(declare-fun m!927023 () Bool)

(assert (=> b!1000778 m!927023))

(declare-fun m!927025 () Bool)

(assert (=> b!1000772 m!927025))

(assert (=> b!1000773 m!927013))

(assert (=> b!1000773 m!927013))

(declare-fun m!927027 () Bool)

(assert (=> b!1000773 m!927027))

(declare-fun m!927029 () Bool)

(assert (=> start!86484 m!927029))

(declare-fun m!927031 () Bool)

(assert (=> start!86484 m!927031))

(declare-fun m!927033 () Bool)

(assert (=> b!1000776 m!927033))

(assert (=> b!1000776 m!927033))

(declare-fun m!927035 () Bool)

(assert (=> b!1000776 m!927035))

(declare-fun m!927037 () Bool)

(assert (=> b!1000776 m!927037))

(declare-fun m!927039 () Bool)

(assert (=> b!1000776 m!927039))

(check-sat (not b!1000772) (not start!86484) (not b!1000778) (not b!1000781) (not b!1000783) (not b!1000775) (not b!1000776) (not b!1000777) (not b!1000773) (not b!1000779) (not b!1000774))
(check-sat)
