; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48632 () Bool)

(assert start!48632)

(declare-fun b!533741 () Bool)

(declare-fun e!310455 () Bool)

(assert (=> b!533741 (= e!310455 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4700 0))(
  ( (MissingZero!4700 (index!21024 (_ BitVec 32))) (Found!4700 (index!21025 (_ BitVec 32))) (Intermediate!4700 (undefined!5512 Bool) (index!21026 (_ BitVec 32)) (x!50014 (_ BitVec 32))) (Undefined!4700) (MissingVacant!4700 (index!21027 (_ BitVec 32))) )
))
(declare-fun lt!245494 () SeekEntryResult!4700)

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33800 0))(
  ( (array!33801 (arr!16235 (Array (_ BitVec 32) (_ BitVec 64))) (size!16599 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33800)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33800 (_ BitVec 32)) SeekEntryResult!4700)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!533741 (= lt!245494 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16235 a!3154) j!147) mask!3216) (select (arr!16235 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!329101 () Bool)

(declare-fun e!310454 () Bool)

(assert (=> start!48632 (=> (not res!329101) (not e!310454))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48632 (= res!329101 (validMask!0 mask!3216))))

(assert (=> start!48632 e!310454))

(assert (=> start!48632 true))

(declare-fun array_inv!12009 (array!33800) Bool)

(assert (=> start!48632 (array_inv!12009 a!3154)))

(declare-fun b!533742 () Bool)

(declare-fun res!329099 () Bool)

(assert (=> b!533742 (=> (not res!329099) (not e!310454))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33800 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533742 (= res!329099 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533743 () Bool)

(declare-fun res!329097 () Bool)

(assert (=> b!533743 (=> (not res!329097) (not e!310454))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533743 (= res!329097 (and (= (size!16599 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16599 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16599 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533744 () Bool)

(declare-fun res!329104 () Bool)

(assert (=> b!533744 (=> (not res!329104) (not e!310455))))

(declare-datatypes ((List!10407 0))(
  ( (Nil!10404) (Cons!10403 (h!11346 (_ BitVec 64)) (t!16643 List!10407)) )
))
(declare-fun arrayNoDuplicates!0 (array!33800 (_ BitVec 32) List!10407) Bool)

(assert (=> b!533744 (= res!329104 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10404))))

(declare-fun b!533745 () Bool)

(declare-fun res!329098 () Bool)

(assert (=> b!533745 (=> (not res!329098) (not e!310455))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33800 (_ BitVec 32)) Bool)

(assert (=> b!533745 (= res!329098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533746 () Bool)

(declare-fun res!329102 () Bool)

(assert (=> b!533746 (=> (not res!329102) (not e!310455))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533746 (= res!329102 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16599 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16599 a!3154)) (= (select (arr!16235 a!3154) resIndex!32) (select (arr!16235 a!3154) j!147))))))

(declare-fun b!533747 () Bool)

(declare-fun res!329105 () Bool)

(assert (=> b!533747 (=> (not res!329105) (not e!310454))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533747 (= res!329105 (validKeyInArray!0 (select (arr!16235 a!3154) j!147)))))

(declare-fun b!533748 () Bool)

(assert (=> b!533748 (= e!310454 e!310455)))

(declare-fun res!329096 () Bool)

(assert (=> b!533748 (=> (not res!329096) (not e!310455))))

(declare-fun lt!245495 () SeekEntryResult!4700)

(assert (=> b!533748 (= res!329096 (or (= lt!245495 (MissingZero!4700 i!1153)) (= lt!245495 (MissingVacant!4700 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33800 (_ BitVec 32)) SeekEntryResult!4700)

(assert (=> b!533748 (= lt!245495 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533749 () Bool)

(declare-fun res!329100 () Bool)

(assert (=> b!533749 (=> (not res!329100) (not e!310455))))

(assert (=> b!533749 (= res!329100 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16235 a!3154) j!147) a!3154 mask!3216) (Intermediate!4700 false resIndex!32 resX!32)))))

(declare-fun b!533750 () Bool)

(declare-fun res!329103 () Bool)

(assert (=> b!533750 (=> (not res!329103) (not e!310454))))

(assert (=> b!533750 (= res!329103 (validKeyInArray!0 k!1998))))

(assert (= (and start!48632 res!329101) b!533743))

(assert (= (and b!533743 res!329097) b!533747))

(assert (= (and b!533747 res!329105) b!533750))

(assert (= (and b!533750 res!329103) b!533742))

(assert (= (and b!533742 res!329099) b!533748))

(assert (= (and b!533748 res!329096) b!533745))

(assert (= (and b!533745 res!329098) b!533744))

(assert (= (and b!533744 res!329104) b!533746))

(assert (= (and b!533746 res!329102) b!533749))

(assert (= (and b!533749 res!329100) b!533741))

(declare-fun m!513563 () Bool)

(assert (=> b!533742 m!513563))

(declare-fun m!513565 () Bool)

(assert (=> b!533741 m!513565))

(assert (=> b!533741 m!513565))

(declare-fun m!513567 () Bool)

(assert (=> b!533741 m!513567))

(assert (=> b!533741 m!513567))

(assert (=> b!533741 m!513565))

(declare-fun m!513569 () Bool)

(assert (=> b!533741 m!513569))

(declare-fun m!513571 () Bool)

(assert (=> b!533744 m!513571))

(declare-fun m!513573 () Bool)

(assert (=> b!533750 m!513573))

(declare-fun m!513575 () Bool)

(assert (=> b!533746 m!513575))

(assert (=> b!533746 m!513565))

(assert (=> b!533749 m!513565))

(assert (=> b!533749 m!513565))

(declare-fun m!513577 () Bool)

(assert (=> b!533749 m!513577))

(assert (=> b!533747 m!513565))

(assert (=> b!533747 m!513565))

(declare-fun m!513579 () Bool)

(assert (=> b!533747 m!513579))

(declare-fun m!513581 () Bool)

(assert (=> b!533745 m!513581))

(declare-fun m!513583 () Bool)

(assert (=> b!533748 m!513583))

(declare-fun m!513585 () Bool)

(assert (=> start!48632 m!513585))

(declare-fun m!513587 () Bool)

(assert (=> start!48632 m!513587))

(push 1)

(assert (not b!533741))

(assert (not b!533750))

(assert (not start!48632))

(assert (not b!533747))

