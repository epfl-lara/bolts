; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48774 () Bool)

(assert start!48774)

(declare-fun b!536066 () Bool)

(declare-fun res!331421 () Bool)

(declare-fun e!311239 () Bool)

(assert (=> b!536066 (=> (not res!331421) (not e!311239))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33942 0))(
  ( (array!33943 (arr!16306 (Array (_ BitVec 32) (_ BitVec 64))) (size!16670 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33942)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536066 (= res!331421 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16670 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16670 a!3154)) (= (select (arr!16306 a!3154) resIndex!32) (select (arr!16306 a!3154) j!147))))))

(declare-fun b!536067 () Bool)

(declare-fun res!331426 () Bool)

(assert (=> b!536067 (=> (not res!331426) (not e!311239))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33942 (_ BitVec 32)) Bool)

(assert (=> b!536067 (= res!331426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536068 () Bool)

(declare-fun e!311240 () Bool)

(assert (=> b!536068 (= e!311240 false)))

(declare-fun lt!246004 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4771 0))(
  ( (MissingZero!4771 (index!21308 (_ BitVec 32))) (Found!4771 (index!21309 (_ BitVec 32))) (Intermediate!4771 (undefined!5583 Bool) (index!21310 (_ BitVec 32)) (x!50277 (_ BitVec 32))) (Undefined!4771) (MissingVacant!4771 (index!21311 (_ BitVec 32))) )
))
(declare-fun lt!246005 () SeekEntryResult!4771)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33942 (_ BitVec 32)) SeekEntryResult!4771)

(assert (=> b!536068 (= lt!246005 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246004 (select (arr!16306 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536069 () Bool)

(declare-fun e!311242 () Bool)

(assert (=> b!536069 (= e!311239 e!311242)))

(declare-fun res!331425 () Bool)

(assert (=> b!536069 (=> (not res!331425) (not e!311242))))

(declare-fun lt!246003 () SeekEntryResult!4771)

(assert (=> b!536069 (= res!331425 (= lt!246003 (Intermediate!4771 false resIndex!32 resX!32)))))

(assert (=> b!536069 (= lt!246003 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16306 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!331428 () Bool)

(declare-fun e!311241 () Bool)

(assert (=> start!48774 (=> (not res!331428) (not e!311241))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48774 (= res!331428 (validMask!0 mask!3216))))

(assert (=> start!48774 e!311241))

(assert (=> start!48774 true))

(declare-fun array_inv!12080 (array!33942) Bool)

(assert (=> start!48774 (array_inv!12080 a!3154)))

(declare-fun b!536070 () Bool)

(declare-fun res!331431 () Bool)

(assert (=> b!536070 (=> (not res!331431) (not e!311241))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536070 (= res!331431 (validKeyInArray!0 (select (arr!16306 a!3154) j!147)))))

(declare-fun b!536071 () Bool)

(assert (=> b!536071 (= e!311241 e!311239)))

(declare-fun res!331427 () Bool)

(assert (=> b!536071 (=> (not res!331427) (not e!311239))))

(declare-fun lt!246002 () SeekEntryResult!4771)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536071 (= res!331427 (or (= lt!246002 (MissingZero!4771 i!1153)) (= lt!246002 (MissingVacant!4771 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33942 (_ BitVec 32)) SeekEntryResult!4771)

(assert (=> b!536071 (= lt!246002 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!536072 () Bool)

(declare-fun res!331423 () Bool)

(assert (=> b!536072 (=> (not res!331423) (not e!311241))))

(declare-fun arrayContainsKey!0 (array!33942 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536072 (= res!331423 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536073 () Bool)

(declare-fun res!331424 () Bool)

(assert (=> b!536073 (=> (not res!331424) (not e!311239))))

(declare-datatypes ((List!10478 0))(
  ( (Nil!10475) (Cons!10474 (h!11417 (_ BitVec 64)) (t!16714 List!10478)) )
))
(declare-fun arrayNoDuplicates!0 (array!33942 (_ BitVec 32) List!10478) Bool)

(assert (=> b!536073 (= res!331424 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10475))))

(declare-fun b!536074 () Bool)

(assert (=> b!536074 (= e!311242 e!311240)))

(declare-fun res!331432 () Bool)

(assert (=> b!536074 (=> (not res!331432) (not e!311240))))

(assert (=> b!536074 (= res!331432 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246004 #b00000000000000000000000000000000) (bvslt lt!246004 (size!16670 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536074 (= lt!246004 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536075 () Bool)

(declare-fun res!331422 () Bool)

(assert (=> b!536075 (=> (not res!331422) (not e!311242))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536075 (= res!331422 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16306 a!3154) j!147) mask!3216) (select (arr!16306 a!3154) j!147) a!3154 mask!3216) lt!246003))))

(declare-fun b!536076 () Bool)

(declare-fun res!331433 () Bool)

(assert (=> b!536076 (=> (not res!331433) (not e!311241))))

(assert (=> b!536076 (= res!331433 (validKeyInArray!0 k0!1998))))

(declare-fun b!536077 () Bool)

(declare-fun res!331429 () Bool)

(assert (=> b!536077 (=> (not res!331429) (not e!311242))))

(assert (=> b!536077 (= res!331429 (and (not (= (select (arr!16306 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16306 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16306 a!3154) index!1177) (select (arr!16306 a!3154) j!147)))))))

(declare-fun b!536078 () Bool)

(declare-fun res!331430 () Bool)

(assert (=> b!536078 (=> (not res!331430) (not e!311241))))

(assert (=> b!536078 (= res!331430 (and (= (size!16670 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16670 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16670 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48774 res!331428) b!536078))

(assert (= (and b!536078 res!331430) b!536070))

(assert (= (and b!536070 res!331431) b!536076))

(assert (= (and b!536076 res!331433) b!536072))

(assert (= (and b!536072 res!331423) b!536071))

(assert (= (and b!536071 res!331427) b!536067))

(assert (= (and b!536067 res!331426) b!536073))

(assert (= (and b!536073 res!331424) b!536066))

(assert (= (and b!536066 res!331421) b!536069))

(assert (= (and b!536069 res!331425) b!536075))

(assert (= (and b!536075 res!331422) b!536077))

(assert (= (and b!536077 res!331429) b!536074))

(assert (= (and b!536074 res!331432) b!536068))

(declare-fun m!515547 () Bool)

(assert (=> b!536066 m!515547))

(declare-fun m!515549 () Bool)

(assert (=> b!536066 m!515549))

(declare-fun m!515551 () Bool)

(assert (=> start!48774 m!515551))

(declare-fun m!515553 () Bool)

(assert (=> start!48774 m!515553))

(declare-fun m!515555 () Bool)

(assert (=> b!536076 m!515555))

(declare-fun m!515557 () Bool)

(assert (=> b!536077 m!515557))

(assert (=> b!536077 m!515549))

(assert (=> b!536070 m!515549))

(assert (=> b!536070 m!515549))

(declare-fun m!515559 () Bool)

(assert (=> b!536070 m!515559))

(assert (=> b!536075 m!515549))

(assert (=> b!536075 m!515549))

(declare-fun m!515561 () Bool)

(assert (=> b!536075 m!515561))

(assert (=> b!536075 m!515561))

(assert (=> b!536075 m!515549))

(declare-fun m!515563 () Bool)

(assert (=> b!536075 m!515563))

(assert (=> b!536069 m!515549))

(assert (=> b!536069 m!515549))

(declare-fun m!515565 () Bool)

(assert (=> b!536069 m!515565))

(declare-fun m!515567 () Bool)

(assert (=> b!536071 m!515567))

(declare-fun m!515569 () Bool)

(assert (=> b!536073 m!515569))

(assert (=> b!536068 m!515549))

(assert (=> b!536068 m!515549))

(declare-fun m!515571 () Bool)

(assert (=> b!536068 m!515571))

(declare-fun m!515573 () Bool)

(assert (=> b!536067 m!515573))

(declare-fun m!515575 () Bool)

(assert (=> b!536072 m!515575))

(declare-fun m!515577 () Bool)

(assert (=> b!536074 m!515577))

(check-sat (not b!536070) (not b!536074) (not b!536071) (not b!536075) (not b!536068) (not b!536067) (not start!48774) (not b!536076) (not b!536073) (not b!536069) (not b!536072))
(check-sat)
