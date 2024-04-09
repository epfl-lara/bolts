; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48738 () Bool)

(assert start!48738)

(declare-fun b!535390 () Bool)

(declare-fun res!330755 () Bool)

(declare-fun e!310984 () Bool)

(assert (=> b!535390 (=> (not res!330755) (not e!310984))))

(declare-datatypes ((array!33906 0))(
  ( (array!33907 (arr!16288 (Array (_ BitVec 32) (_ BitVec 64))) (size!16652 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33906)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535390 (= res!330755 (validKeyInArray!0 (select (arr!16288 a!3154) j!147)))))

(declare-fun b!535391 () Bool)

(declare-fun e!310982 () Bool)

(declare-fun e!310981 () Bool)

(assert (=> b!535391 (= e!310982 e!310981)))

(declare-fun res!330753 () Bool)

(assert (=> b!535391 (=> (not res!330753) (not e!310981))))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4753 0))(
  ( (MissingZero!4753 (index!21236 (_ BitVec 32))) (Found!4753 (index!21237 (_ BitVec 32))) (Intermediate!4753 (undefined!5565 Bool) (index!21238 (_ BitVec 32)) (x!50211 (_ BitVec 32))) (Undefined!4753) (MissingVacant!4753 (index!21239 (_ BitVec 32))) )
))
(declare-fun lt!245812 () SeekEntryResult!4753)

(assert (=> b!535391 (= res!330753 (= lt!245812 (Intermediate!4753 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33906 (_ BitVec 32)) SeekEntryResult!4753)

(assert (=> b!535391 (= lt!245812 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16288 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535392 () Bool)

(declare-fun res!330745 () Bool)

(assert (=> b!535392 (=> (not res!330745) (not e!310982))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33906 (_ BitVec 32)) Bool)

(assert (=> b!535392 (= res!330745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535393 () Bool)

(declare-fun res!330751 () Bool)

(assert (=> b!535393 (=> (not res!330751) (not e!310982))))

(declare-datatypes ((List!10460 0))(
  ( (Nil!10457) (Cons!10456 (h!11399 (_ BitVec 64)) (t!16696 List!10460)) )
))
(declare-fun arrayNoDuplicates!0 (array!33906 (_ BitVec 32) List!10460) Bool)

(assert (=> b!535393 (= res!330751 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10457))))

(declare-fun b!535394 () Bool)

(declare-fun res!330746 () Bool)

(assert (=> b!535394 (=> (not res!330746) (not e!310984))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33906 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535394 (= res!330746 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535395 () Bool)

(declare-fun res!330749 () Bool)

(assert (=> b!535395 (=> (not res!330749) (not e!310981))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535395 (= res!330749 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16288 a!3154) j!147) mask!3216) (select (arr!16288 a!3154) j!147) a!3154 mask!3216) lt!245812))))

(declare-fun b!535396 () Bool)

(assert (=> b!535396 (= e!310984 e!310982)))

(declare-fun res!330747 () Bool)

(assert (=> b!535396 (=> (not res!330747) (not e!310982))))

(declare-fun lt!245813 () SeekEntryResult!4753)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535396 (= res!330747 (or (= lt!245813 (MissingZero!4753 i!1153)) (= lt!245813 (MissingVacant!4753 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33906 (_ BitVec 32)) SeekEntryResult!4753)

(assert (=> b!535396 (= lt!245813 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!535397 () Bool)

(declare-fun res!330752 () Bool)

(assert (=> b!535397 (=> (not res!330752) (not e!310984))))

(assert (=> b!535397 (= res!330752 (validKeyInArray!0 k0!1998))))

(declare-fun res!330748 () Bool)

(assert (=> start!48738 (=> (not res!330748) (not e!310984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48738 (= res!330748 (validMask!0 mask!3216))))

(assert (=> start!48738 e!310984))

(assert (=> start!48738 true))

(declare-fun array_inv!12062 (array!33906) Bool)

(assert (=> start!48738 (array_inv!12062 a!3154)))

(declare-fun b!535398 () Bool)

(declare-fun res!330750 () Bool)

(assert (=> b!535398 (=> (not res!330750) (not e!310984))))

(assert (=> b!535398 (= res!330750 (and (= (size!16652 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16652 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16652 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535399 () Bool)

(assert (=> b!535399 (= e!310981 (and (not (= (select (arr!16288 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16288 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16288 a!3154) index!1177) (select (arr!16288 a!3154) j!147))) (bvsge mask!3216 #b00000000000000000000000000000000) (bvsge index!1177 (bvadd #b00000000000000000000000000000001 mask!3216))))))

(declare-fun b!535400 () Bool)

(declare-fun res!330754 () Bool)

(assert (=> b!535400 (=> (not res!330754) (not e!310982))))

(assert (=> b!535400 (= res!330754 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16652 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16652 a!3154)) (= (select (arr!16288 a!3154) resIndex!32) (select (arr!16288 a!3154) j!147))))))

(assert (= (and start!48738 res!330748) b!535398))

(assert (= (and b!535398 res!330750) b!535390))

(assert (= (and b!535390 res!330755) b!535397))

(assert (= (and b!535397 res!330752) b!535394))

(assert (= (and b!535394 res!330746) b!535396))

(assert (= (and b!535396 res!330747) b!535392))

(assert (= (and b!535392 res!330745) b!535393))

(assert (= (and b!535393 res!330751) b!535400))

(assert (= (and b!535400 res!330754) b!535391))

(assert (= (and b!535391 res!330753) b!535395))

(assert (= (and b!535395 res!330749) b!535399))

(declare-fun m!514991 () Bool)

(assert (=> start!48738 m!514991))

(declare-fun m!514993 () Bool)

(assert (=> start!48738 m!514993))

(declare-fun m!514995 () Bool)

(assert (=> b!535391 m!514995))

(assert (=> b!535391 m!514995))

(declare-fun m!514997 () Bool)

(assert (=> b!535391 m!514997))

(declare-fun m!514999 () Bool)

(assert (=> b!535399 m!514999))

(assert (=> b!535399 m!514995))

(declare-fun m!515001 () Bool)

(assert (=> b!535397 m!515001))

(assert (=> b!535390 m!514995))

(assert (=> b!535390 m!514995))

(declare-fun m!515003 () Bool)

(assert (=> b!535390 m!515003))

(declare-fun m!515005 () Bool)

(assert (=> b!535393 m!515005))

(declare-fun m!515007 () Bool)

(assert (=> b!535394 m!515007))

(declare-fun m!515009 () Bool)

(assert (=> b!535392 m!515009))

(declare-fun m!515011 () Bool)

(assert (=> b!535396 m!515011))

(assert (=> b!535395 m!514995))

(assert (=> b!535395 m!514995))

(declare-fun m!515013 () Bool)

(assert (=> b!535395 m!515013))

(assert (=> b!535395 m!515013))

(assert (=> b!535395 m!514995))

(declare-fun m!515015 () Bool)

(assert (=> b!535395 m!515015))

(declare-fun m!515017 () Bool)

(assert (=> b!535400 m!515017))

(assert (=> b!535400 m!514995))

(check-sat (not b!535392) (not b!535391) (not b!535396) (not b!535394) (not start!48738) (not b!535393) (not b!535390) (not b!535397) (not b!535395))
(check-sat)
