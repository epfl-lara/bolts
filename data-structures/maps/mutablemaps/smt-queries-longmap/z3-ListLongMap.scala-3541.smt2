; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48834 () Bool)

(assert start!48834)

(declare-fun b!537236 () Bool)

(declare-fun res!332593 () Bool)

(declare-fun e!311692 () Bool)

(assert (=> b!537236 (=> (not res!332593) (not e!311692))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34002 0))(
  ( (array!34003 (arr!16336 (Array (_ BitVec 32) (_ BitVec 64))) (size!16700 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34002)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537236 (= res!332593 (and (= (size!16700 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16700 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16700 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537237 () Bool)

(declare-fun res!332603 () Bool)

(declare-fun e!311691 () Bool)

(assert (=> b!537237 (=> (not res!332603) (not e!311691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34002 (_ BitVec 32)) Bool)

(assert (=> b!537237 (= res!332603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537238 () Bool)

(declare-fun e!311689 () Bool)

(assert (=> b!537238 (= e!311689 false)))

(declare-datatypes ((SeekEntryResult!4801 0))(
  ( (MissingZero!4801 (index!21428 (_ BitVec 32))) (Found!4801 (index!21429 (_ BitVec 32))) (Intermediate!4801 (undefined!5613 Bool) (index!21430 (_ BitVec 32)) (x!50387 (_ BitVec 32))) (Undefined!4801) (MissingVacant!4801 (index!21431 (_ BitVec 32))) )
))
(declare-fun lt!246362 () SeekEntryResult!4801)

(declare-fun lt!246365 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34002 (_ BitVec 32)) SeekEntryResult!4801)

(assert (=> b!537238 (= lt!246362 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246365 (select (arr!16336 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537239 () Bool)

(declare-fun e!311688 () Bool)

(assert (=> b!537239 (= e!311688 e!311689)))

(declare-fun res!332596 () Bool)

(assert (=> b!537239 (=> (not res!332596) (not e!311689))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537239 (= res!332596 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246365 #b00000000000000000000000000000000) (bvslt lt!246365 (size!16700 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537239 (= lt!246365 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!537240 () Bool)

(declare-fun res!332599 () Bool)

(assert (=> b!537240 (=> (not res!332599) (not e!311692))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34002 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537240 (= res!332599 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537241 () Bool)

(declare-fun res!332602 () Bool)

(assert (=> b!537241 (=> (not res!332602) (not e!311692))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537241 (= res!332602 (validKeyInArray!0 k0!1998))))

(declare-fun b!537243 () Bool)

(declare-fun res!332592 () Bool)

(assert (=> b!537243 (=> (not res!332592) (not e!311688))))

(declare-fun lt!246363 () SeekEntryResult!4801)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537243 (= res!332592 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16336 a!3154) j!147) mask!3216) (select (arr!16336 a!3154) j!147) a!3154 mask!3216) lt!246363))))

(declare-fun b!537244 () Bool)

(declare-fun res!332594 () Bool)

(assert (=> b!537244 (=> (not res!332594) (not e!311691))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!537244 (= res!332594 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16700 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16700 a!3154)) (= (select (arr!16336 a!3154) resIndex!32) (select (arr!16336 a!3154) j!147))))))

(declare-fun b!537245 () Bool)

(declare-fun res!332600 () Bool)

(assert (=> b!537245 (=> (not res!332600) (not e!311692))))

(assert (=> b!537245 (= res!332600 (validKeyInArray!0 (select (arr!16336 a!3154) j!147)))))

(declare-fun b!537246 () Bool)

(assert (=> b!537246 (= e!311691 e!311688)))

(declare-fun res!332597 () Bool)

(assert (=> b!537246 (=> (not res!332597) (not e!311688))))

(assert (=> b!537246 (= res!332597 (= lt!246363 (Intermediate!4801 false resIndex!32 resX!32)))))

(assert (=> b!537246 (= lt!246363 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16336 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537247 () Bool)

(declare-fun res!332595 () Bool)

(assert (=> b!537247 (=> (not res!332595) (not e!311688))))

(assert (=> b!537247 (= res!332595 (and (not (= (select (arr!16336 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16336 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16336 a!3154) index!1177) (select (arr!16336 a!3154) j!147)))))))

(declare-fun b!537248 () Bool)

(declare-fun res!332598 () Bool)

(assert (=> b!537248 (=> (not res!332598) (not e!311691))))

(declare-datatypes ((List!10508 0))(
  ( (Nil!10505) (Cons!10504 (h!11447 (_ BitVec 64)) (t!16744 List!10508)) )
))
(declare-fun arrayNoDuplicates!0 (array!34002 (_ BitVec 32) List!10508) Bool)

(assert (=> b!537248 (= res!332598 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10505))))

(declare-fun res!332601 () Bool)

(assert (=> start!48834 (=> (not res!332601) (not e!311692))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48834 (= res!332601 (validMask!0 mask!3216))))

(assert (=> start!48834 e!311692))

(assert (=> start!48834 true))

(declare-fun array_inv!12110 (array!34002) Bool)

(assert (=> start!48834 (array_inv!12110 a!3154)))

(declare-fun b!537242 () Bool)

(assert (=> b!537242 (= e!311692 e!311691)))

(declare-fun res!332591 () Bool)

(assert (=> b!537242 (=> (not res!332591) (not e!311691))))

(declare-fun lt!246364 () SeekEntryResult!4801)

(assert (=> b!537242 (= res!332591 (or (= lt!246364 (MissingZero!4801 i!1153)) (= lt!246364 (MissingVacant!4801 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34002 (_ BitVec 32)) SeekEntryResult!4801)

(assert (=> b!537242 (= lt!246364 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(assert (= (and start!48834 res!332601) b!537236))

(assert (= (and b!537236 res!332593) b!537245))

(assert (= (and b!537245 res!332600) b!537241))

(assert (= (and b!537241 res!332602) b!537240))

(assert (= (and b!537240 res!332599) b!537242))

(assert (= (and b!537242 res!332591) b!537237))

(assert (= (and b!537237 res!332603) b!537248))

(assert (= (and b!537248 res!332598) b!537244))

(assert (= (and b!537244 res!332594) b!537246))

(assert (= (and b!537246 res!332597) b!537243))

(assert (= (and b!537243 res!332592) b!537247))

(assert (= (and b!537247 res!332595) b!537239))

(assert (= (and b!537239 res!332596) b!537238))

(declare-fun m!516507 () Bool)

(assert (=> b!537243 m!516507))

(assert (=> b!537243 m!516507))

(declare-fun m!516509 () Bool)

(assert (=> b!537243 m!516509))

(assert (=> b!537243 m!516509))

(assert (=> b!537243 m!516507))

(declare-fun m!516511 () Bool)

(assert (=> b!537243 m!516511))

(assert (=> b!537238 m!516507))

(assert (=> b!537238 m!516507))

(declare-fun m!516513 () Bool)

(assert (=> b!537238 m!516513))

(declare-fun m!516515 () Bool)

(assert (=> b!537237 m!516515))

(declare-fun m!516517 () Bool)

(assert (=> b!537240 m!516517))

(declare-fun m!516519 () Bool)

(assert (=> b!537248 m!516519))

(declare-fun m!516521 () Bool)

(assert (=> b!537241 m!516521))

(declare-fun m!516523 () Bool)

(assert (=> start!48834 m!516523))

(declare-fun m!516525 () Bool)

(assert (=> start!48834 m!516525))

(declare-fun m!516527 () Bool)

(assert (=> b!537239 m!516527))

(assert (=> b!537246 m!516507))

(assert (=> b!537246 m!516507))

(declare-fun m!516529 () Bool)

(assert (=> b!537246 m!516529))

(assert (=> b!537245 m!516507))

(assert (=> b!537245 m!516507))

(declare-fun m!516531 () Bool)

(assert (=> b!537245 m!516531))

(declare-fun m!516533 () Bool)

(assert (=> b!537244 m!516533))

(assert (=> b!537244 m!516507))

(declare-fun m!516535 () Bool)

(assert (=> b!537242 m!516535))

(declare-fun m!516537 () Bool)

(assert (=> b!537247 m!516537))

(assert (=> b!537247 m!516507))

(check-sat (not b!537245) (not b!537239) (not b!537248) (not b!537242) (not b!537238) (not b!537241) (not b!537243) (not b!537240) (not b!537237) (not start!48834) (not b!537246))
(check-sat)
