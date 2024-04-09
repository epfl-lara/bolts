; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48804 () Bool)

(assert start!48804)

(declare-fun b!536651 () Bool)

(declare-fun e!311463 () Bool)

(assert (=> b!536651 (= e!311463 false)))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4786 0))(
  ( (MissingZero!4786 (index!21368 (_ BitVec 32))) (Found!4786 (index!21369 (_ BitVec 32))) (Intermediate!4786 (undefined!5598 Bool) (index!21370 (_ BitVec 32)) (x!50332 (_ BitVec 32))) (Undefined!4786) (MissingVacant!4786 (index!21371 (_ BitVec 32))) )
))
(declare-fun lt!246183 () SeekEntryResult!4786)

(declare-fun lt!246184 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33972 0))(
  ( (array!33973 (arr!16321 (Array (_ BitVec 32) (_ BitVec 64))) (size!16685 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33972)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33972 (_ BitVec 32)) SeekEntryResult!4786)

(assert (=> b!536651 (= lt!246183 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246184 (select (arr!16321 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536652 () Bool)

(declare-fun e!311466 () Bool)

(declare-fun e!311467 () Bool)

(assert (=> b!536652 (= e!311466 e!311467)))

(declare-fun res!332012 () Bool)

(assert (=> b!536652 (=> (not res!332012) (not e!311467))))

(declare-fun lt!246182 () SeekEntryResult!4786)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536652 (= res!332012 (or (= lt!246182 (MissingZero!4786 i!1153)) (= lt!246182 (MissingVacant!4786 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33972 (_ BitVec 32)) SeekEntryResult!4786)

(assert (=> b!536652 (= lt!246182 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!536653 () Bool)

(declare-fun res!332018 () Bool)

(assert (=> b!536653 (=> (not res!332018) (not e!311466))))

(declare-fun arrayContainsKey!0 (array!33972 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536653 (= res!332018 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536654 () Bool)

(declare-fun res!332007 () Bool)

(assert (=> b!536654 (=> (not res!332007) (not e!311466))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536654 (= res!332007 (validKeyInArray!0 (select (arr!16321 a!3154) j!147)))))

(declare-fun b!536655 () Bool)

(declare-fun res!332017 () Bool)

(assert (=> b!536655 (=> (not res!332017) (not e!311466))))

(assert (=> b!536655 (= res!332017 (validKeyInArray!0 k0!1998))))

(declare-fun b!536656 () Bool)

(declare-fun e!311464 () Bool)

(assert (=> b!536656 (= e!311464 e!311463)))

(declare-fun res!332008 () Bool)

(assert (=> b!536656 (=> (not res!332008) (not e!311463))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536656 (= res!332008 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246184 #b00000000000000000000000000000000) (bvslt lt!246184 (size!16685 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536656 (= lt!246184 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536657 () Bool)

(declare-fun res!332011 () Bool)

(assert (=> b!536657 (=> (not res!332011) (not e!311466))))

(assert (=> b!536657 (= res!332011 (and (= (size!16685 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16685 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16685 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!332009 () Bool)

(assert (=> start!48804 (=> (not res!332009) (not e!311466))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48804 (= res!332009 (validMask!0 mask!3216))))

(assert (=> start!48804 e!311466))

(assert (=> start!48804 true))

(declare-fun array_inv!12095 (array!33972) Bool)

(assert (=> start!48804 (array_inv!12095 a!3154)))

(declare-fun b!536658 () Bool)

(declare-fun res!332013 () Bool)

(assert (=> b!536658 (=> (not res!332013) (not e!311467))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33972 (_ BitVec 32)) Bool)

(assert (=> b!536658 (= res!332013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536659 () Bool)

(declare-fun res!332015 () Bool)

(assert (=> b!536659 (=> (not res!332015) (not e!311467))))

(declare-datatypes ((List!10493 0))(
  ( (Nil!10490) (Cons!10489 (h!11432 (_ BitVec 64)) (t!16729 List!10493)) )
))
(declare-fun arrayNoDuplicates!0 (array!33972 (_ BitVec 32) List!10493) Bool)

(assert (=> b!536659 (= res!332015 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10490))))

(declare-fun b!536660 () Bool)

(declare-fun res!332010 () Bool)

(assert (=> b!536660 (=> (not res!332010) (not e!311467))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!536660 (= res!332010 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16685 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16685 a!3154)) (= (select (arr!16321 a!3154) resIndex!32) (select (arr!16321 a!3154) j!147))))))

(declare-fun b!536661 () Bool)

(declare-fun res!332006 () Bool)

(assert (=> b!536661 (=> (not res!332006) (not e!311464))))

(declare-fun lt!246185 () SeekEntryResult!4786)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536661 (= res!332006 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16321 a!3154) j!147) mask!3216) (select (arr!16321 a!3154) j!147) a!3154 mask!3216) lt!246185))))

(declare-fun b!536662 () Bool)

(declare-fun res!332016 () Bool)

(assert (=> b!536662 (=> (not res!332016) (not e!311464))))

(assert (=> b!536662 (= res!332016 (and (not (= (select (arr!16321 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16321 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16321 a!3154) index!1177) (select (arr!16321 a!3154) j!147)))))))

(declare-fun b!536663 () Bool)

(assert (=> b!536663 (= e!311467 e!311464)))

(declare-fun res!332014 () Bool)

(assert (=> b!536663 (=> (not res!332014) (not e!311464))))

(assert (=> b!536663 (= res!332014 (= lt!246185 (Intermediate!4786 false resIndex!32 resX!32)))))

(assert (=> b!536663 (= lt!246185 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16321 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48804 res!332009) b!536657))

(assert (= (and b!536657 res!332011) b!536654))

(assert (= (and b!536654 res!332007) b!536655))

(assert (= (and b!536655 res!332017) b!536653))

(assert (= (and b!536653 res!332018) b!536652))

(assert (= (and b!536652 res!332012) b!536658))

(assert (= (and b!536658 res!332013) b!536659))

(assert (= (and b!536659 res!332015) b!536660))

(assert (= (and b!536660 res!332010) b!536663))

(assert (= (and b!536663 res!332014) b!536661))

(assert (= (and b!536661 res!332006) b!536662))

(assert (= (and b!536662 res!332016) b!536656))

(assert (= (and b!536656 res!332008) b!536651))

(declare-fun m!516027 () Bool)

(assert (=> b!536662 m!516027))

(declare-fun m!516029 () Bool)

(assert (=> b!536662 m!516029))

(declare-fun m!516031 () Bool)

(assert (=> b!536659 m!516031))

(assert (=> b!536651 m!516029))

(assert (=> b!536651 m!516029))

(declare-fun m!516033 () Bool)

(assert (=> b!536651 m!516033))

(assert (=> b!536663 m!516029))

(assert (=> b!536663 m!516029))

(declare-fun m!516035 () Bool)

(assert (=> b!536663 m!516035))

(declare-fun m!516037 () Bool)

(assert (=> b!536658 m!516037))

(declare-fun m!516039 () Bool)

(assert (=> b!536652 m!516039))

(declare-fun m!516041 () Bool)

(assert (=> b!536660 m!516041))

(assert (=> b!536660 m!516029))

(declare-fun m!516043 () Bool)

(assert (=> b!536656 m!516043))

(assert (=> b!536661 m!516029))

(assert (=> b!536661 m!516029))

(declare-fun m!516045 () Bool)

(assert (=> b!536661 m!516045))

(assert (=> b!536661 m!516045))

(assert (=> b!536661 m!516029))

(declare-fun m!516047 () Bool)

(assert (=> b!536661 m!516047))

(declare-fun m!516049 () Bool)

(assert (=> b!536655 m!516049))

(assert (=> b!536654 m!516029))

(assert (=> b!536654 m!516029))

(declare-fun m!516051 () Bool)

(assert (=> b!536654 m!516051))

(declare-fun m!516053 () Bool)

(assert (=> start!48804 m!516053))

(declare-fun m!516055 () Bool)

(assert (=> start!48804 m!516055))

(declare-fun m!516057 () Bool)

(assert (=> b!536653 m!516057))

(check-sat (not b!536658) (not b!536655) (not b!536651) (not start!48804) (not b!536652) (not b!536653) (not b!536656) (not b!536661) (not b!536654) (not b!536663) (not b!536659))
(check-sat)
