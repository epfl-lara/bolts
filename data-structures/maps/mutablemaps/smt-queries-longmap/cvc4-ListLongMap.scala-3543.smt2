; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48848 () Bool)

(assert start!48848)

(declare-fun res!332868 () Bool)

(declare-fun e!311793 () Bool)

(assert (=> start!48848 (=> (not res!332868) (not e!311793))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48848 (= res!332868 (validMask!0 mask!3216))))

(assert (=> start!48848 e!311793))

(assert (=> start!48848 true))

(declare-datatypes ((array!34016 0))(
  ( (array!34017 (arr!16343 (Array (_ BitVec 32) (_ BitVec 64))) (size!16707 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34016)

(declare-fun array_inv!12117 (array!34016) Bool)

(assert (=> start!48848 (array_inv!12117 a!3154)))

(declare-fun b!537509 () Bool)

(declare-fun res!332875 () Bool)

(assert (=> b!537509 (=> (not res!332875) (not e!311793))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34016 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537509 (= res!332875 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537510 () Bool)

(declare-fun e!311797 () Bool)

(declare-fun e!311794 () Bool)

(assert (=> b!537510 (= e!311797 e!311794)))

(declare-fun res!332873 () Bool)

(assert (=> b!537510 (=> (not res!332873) (not e!311794))))

(declare-fun lt!246449 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537510 (= res!332873 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246449 #b00000000000000000000000000000000) (bvslt lt!246449 (size!16707 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537510 (= lt!246449 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!537511 () Bool)

(declare-fun res!332870 () Bool)

(assert (=> b!537511 (=> (not res!332870) (not e!311797))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4808 0))(
  ( (MissingZero!4808 (index!21456 (_ BitVec 32))) (Found!4808 (index!21457 (_ BitVec 32))) (Intermediate!4808 (undefined!5620 Bool) (index!21458 (_ BitVec 32)) (x!50410 (_ BitVec 32))) (Undefined!4808) (MissingVacant!4808 (index!21459 (_ BitVec 32))) )
))
(declare-fun lt!246446 () SeekEntryResult!4808)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34016 (_ BitVec 32)) SeekEntryResult!4808)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537511 (= res!332870 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16343 a!3154) j!147) mask!3216) (select (arr!16343 a!3154) j!147) a!3154 mask!3216) lt!246446))))

(declare-fun b!537512 () Bool)

(declare-fun res!332871 () Bool)

(assert (=> b!537512 (=> (not res!332871) (not e!311793))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537512 (= res!332871 (validKeyInArray!0 k!1998))))

(declare-fun b!537513 () Bool)

(declare-fun res!332869 () Bool)

(declare-fun e!311795 () Bool)

(assert (=> b!537513 (=> (not res!332869) (not e!311795))))

(declare-datatypes ((List!10515 0))(
  ( (Nil!10512) (Cons!10511 (h!11454 (_ BitVec 64)) (t!16751 List!10515)) )
))
(declare-fun arrayNoDuplicates!0 (array!34016 (_ BitVec 32) List!10515) Bool)

(assert (=> b!537513 (= res!332869 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10512))))

(declare-fun b!537514 () Bool)

(declare-fun res!332876 () Bool)

(assert (=> b!537514 (=> (not res!332876) (not e!311793))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537514 (= res!332876 (and (= (size!16707 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16707 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16707 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537515 () Bool)

(assert (=> b!537515 (= e!311794 false)))

(declare-fun lt!246447 () SeekEntryResult!4808)

(assert (=> b!537515 (= lt!246447 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246449 (select (arr!16343 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537516 () Bool)

(declare-fun res!332872 () Bool)

(assert (=> b!537516 (=> (not res!332872) (not e!311795))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34016 (_ BitVec 32)) Bool)

(assert (=> b!537516 (= res!332872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537517 () Bool)

(declare-fun res!332866 () Bool)

(assert (=> b!537517 (=> (not res!332866) (not e!311795))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!537517 (= res!332866 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16707 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16707 a!3154)) (= (select (arr!16343 a!3154) resIndex!32) (select (arr!16343 a!3154) j!147))))))

(declare-fun b!537518 () Bool)

(declare-fun res!332864 () Bool)

(assert (=> b!537518 (=> (not res!332864) (not e!311797))))

(assert (=> b!537518 (= res!332864 (and (not (= (select (arr!16343 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16343 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16343 a!3154) index!1177) (select (arr!16343 a!3154) j!147)))))))

(declare-fun b!537519 () Bool)

(assert (=> b!537519 (= e!311795 e!311797)))

(declare-fun res!332867 () Bool)

(assert (=> b!537519 (=> (not res!332867) (not e!311797))))

(assert (=> b!537519 (= res!332867 (= lt!246446 (Intermediate!4808 false resIndex!32 resX!32)))))

(assert (=> b!537519 (= lt!246446 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16343 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537520 () Bool)

(declare-fun res!332865 () Bool)

(assert (=> b!537520 (=> (not res!332865) (not e!311793))))

(assert (=> b!537520 (= res!332865 (validKeyInArray!0 (select (arr!16343 a!3154) j!147)))))

(declare-fun b!537521 () Bool)

(assert (=> b!537521 (= e!311793 e!311795)))

(declare-fun res!332874 () Bool)

(assert (=> b!537521 (=> (not res!332874) (not e!311795))))

(declare-fun lt!246448 () SeekEntryResult!4808)

(assert (=> b!537521 (= res!332874 (or (= lt!246448 (MissingZero!4808 i!1153)) (= lt!246448 (MissingVacant!4808 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34016 (_ BitVec 32)) SeekEntryResult!4808)

(assert (=> b!537521 (= lt!246448 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!48848 res!332868) b!537514))

(assert (= (and b!537514 res!332876) b!537520))

(assert (= (and b!537520 res!332865) b!537512))

(assert (= (and b!537512 res!332871) b!537509))

(assert (= (and b!537509 res!332875) b!537521))

(assert (= (and b!537521 res!332874) b!537516))

(assert (= (and b!537516 res!332872) b!537513))

(assert (= (and b!537513 res!332869) b!537517))

(assert (= (and b!537517 res!332866) b!537519))

(assert (= (and b!537519 res!332867) b!537511))

(assert (= (and b!537511 res!332870) b!537518))

(assert (= (and b!537518 res!332864) b!537510))

(assert (= (and b!537510 res!332873) b!537515))

(declare-fun m!516731 () Bool)

(assert (=> b!537516 m!516731))

(declare-fun m!516733 () Bool)

(assert (=> b!537521 m!516733))

(declare-fun m!516735 () Bool)

(assert (=> b!537518 m!516735))

(declare-fun m!516737 () Bool)

(assert (=> b!537518 m!516737))

(assert (=> b!537519 m!516737))

(assert (=> b!537519 m!516737))

(declare-fun m!516739 () Bool)

(assert (=> b!537519 m!516739))

(declare-fun m!516741 () Bool)

(assert (=> b!537513 m!516741))

(assert (=> b!537511 m!516737))

(assert (=> b!537511 m!516737))

(declare-fun m!516743 () Bool)

(assert (=> b!537511 m!516743))

(assert (=> b!537511 m!516743))

(assert (=> b!537511 m!516737))

(declare-fun m!516745 () Bool)

(assert (=> b!537511 m!516745))

(declare-fun m!516747 () Bool)

(assert (=> b!537510 m!516747))

(assert (=> b!537520 m!516737))

(assert (=> b!537520 m!516737))

(declare-fun m!516749 () Bool)

(assert (=> b!537520 m!516749))

(declare-fun m!516751 () Bool)

(assert (=> b!537512 m!516751))

(assert (=> b!537515 m!516737))

(assert (=> b!537515 m!516737))

(declare-fun m!516753 () Bool)

(assert (=> b!537515 m!516753))

(declare-fun m!516755 () Bool)

(assert (=> start!48848 m!516755))

(declare-fun m!516757 () Bool)

(assert (=> start!48848 m!516757))

(declare-fun m!516759 () Bool)

(assert (=> b!537509 m!516759))

(declare-fun m!516761 () Bool)

(assert (=> b!537517 m!516761))

(assert (=> b!537517 m!516737))

(push 1)

(assert (not start!48848))

(assert (not b!537509))

(assert (not b!537520))

(assert (not b!537512))

