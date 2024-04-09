; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49038 () Bool)

(assert start!49038)

(declare-fun b!540011 () Bool)

(declare-fun res!335210 () Bool)

(declare-fun e!312891 () Bool)

(assert (=> b!540011 (=> (not res!335210) (not e!312891))))

(declare-datatypes ((array!34155 0))(
  ( (array!34156 (arr!16411 (Array (_ BitVec 32) (_ BitVec 64))) (size!16775 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34155)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34155 (_ BitVec 32)) Bool)

(assert (=> b!540011 (= res!335210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540012 () Bool)

(declare-fun res!335208 () Bool)

(declare-fun e!312892 () Bool)

(assert (=> b!540012 (=> (not res!335208) (not e!312892))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540012 (= res!335208 (validKeyInArray!0 k0!1998))))

(declare-fun b!540013 () Bool)

(declare-fun res!335209 () Bool)

(assert (=> b!540013 (=> (not res!335209) (not e!312891))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4876 0))(
  ( (MissingZero!4876 (index!21728 (_ BitVec 32))) (Found!4876 (index!21729 (_ BitVec 32))) (Intermediate!4876 (undefined!5688 Bool) (index!21730 (_ BitVec 32)) (x!50668 (_ BitVec 32))) (Undefined!4876) (MissingVacant!4876 (index!21731 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34155 (_ BitVec 32)) SeekEntryResult!4876)

(assert (=> b!540013 (= res!335209 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16411 a!3154) j!147) a!3154 mask!3216) (Intermediate!4876 false resIndex!32 resX!32)))))

(declare-fun b!540014 () Bool)

(declare-fun res!335215 () Bool)

(assert (=> b!540014 (=> (not res!335215) (not e!312892))))

(declare-fun arrayContainsKey!0 (array!34155 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540014 (= res!335215 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!540015 () Bool)

(declare-fun res!335212 () Bool)

(assert (=> b!540015 (=> (not res!335212) (not e!312892))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540015 (= res!335212 (and (= (size!16775 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16775 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16775 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!335211 () Bool)

(assert (=> start!49038 (=> (not res!335211) (not e!312892))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49038 (= res!335211 (validMask!0 mask!3216))))

(assert (=> start!49038 e!312892))

(assert (=> start!49038 true))

(declare-fun array_inv!12185 (array!34155) Bool)

(assert (=> start!49038 (array_inv!12185 a!3154)))

(declare-fun b!540016 () Bool)

(assert (=> b!540016 (= e!312891 false)))

(declare-fun lt!247295 () SeekEntryResult!4876)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540016 (= lt!247295 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16411 a!3154) j!147) mask!3216) (select (arr!16411 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540017 () Bool)

(assert (=> b!540017 (= e!312892 e!312891)))

(declare-fun res!335216 () Bool)

(assert (=> b!540017 (=> (not res!335216) (not e!312891))))

(declare-fun lt!247294 () SeekEntryResult!4876)

(assert (=> b!540017 (= res!335216 (or (= lt!247294 (MissingZero!4876 i!1153)) (= lt!247294 (MissingVacant!4876 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34155 (_ BitVec 32)) SeekEntryResult!4876)

(assert (=> b!540017 (= lt!247294 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!540018 () Bool)

(declare-fun res!335213 () Bool)

(assert (=> b!540018 (=> (not res!335213) (not e!312891))))

(declare-datatypes ((List!10583 0))(
  ( (Nil!10580) (Cons!10579 (h!11525 (_ BitVec 64)) (t!16819 List!10583)) )
))
(declare-fun arrayNoDuplicates!0 (array!34155 (_ BitVec 32) List!10583) Bool)

(assert (=> b!540018 (= res!335213 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10580))))

(declare-fun b!540019 () Bool)

(declare-fun res!335207 () Bool)

(assert (=> b!540019 (=> (not res!335207) (not e!312891))))

(assert (=> b!540019 (= res!335207 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16775 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16775 a!3154)) (= (select (arr!16411 a!3154) resIndex!32) (select (arr!16411 a!3154) j!147))))))

(declare-fun b!540020 () Bool)

(declare-fun res!335214 () Bool)

(assert (=> b!540020 (=> (not res!335214) (not e!312892))))

(assert (=> b!540020 (= res!335214 (validKeyInArray!0 (select (arr!16411 a!3154) j!147)))))

(assert (= (and start!49038 res!335211) b!540015))

(assert (= (and b!540015 res!335212) b!540020))

(assert (= (and b!540020 res!335214) b!540012))

(assert (= (and b!540012 res!335208) b!540014))

(assert (= (and b!540014 res!335215) b!540017))

(assert (= (and b!540017 res!335216) b!540011))

(assert (= (and b!540011 res!335210) b!540018))

(assert (= (and b!540018 res!335213) b!540019))

(assert (= (and b!540019 res!335207) b!540013))

(assert (= (and b!540013 res!335209) b!540016))

(declare-fun m!518877 () Bool)

(assert (=> b!540016 m!518877))

(assert (=> b!540016 m!518877))

(declare-fun m!518879 () Bool)

(assert (=> b!540016 m!518879))

(assert (=> b!540016 m!518879))

(assert (=> b!540016 m!518877))

(declare-fun m!518881 () Bool)

(assert (=> b!540016 m!518881))

(declare-fun m!518883 () Bool)

(assert (=> b!540017 m!518883))

(declare-fun m!518885 () Bool)

(assert (=> b!540019 m!518885))

(assert (=> b!540019 m!518877))

(declare-fun m!518887 () Bool)

(assert (=> b!540014 m!518887))

(declare-fun m!518889 () Bool)

(assert (=> b!540011 m!518889))

(declare-fun m!518891 () Bool)

(assert (=> b!540018 m!518891))

(assert (=> b!540020 m!518877))

(assert (=> b!540020 m!518877))

(declare-fun m!518893 () Bool)

(assert (=> b!540020 m!518893))

(declare-fun m!518895 () Bool)

(assert (=> b!540012 m!518895))

(assert (=> b!540013 m!518877))

(assert (=> b!540013 m!518877))

(declare-fun m!518897 () Bool)

(assert (=> b!540013 m!518897))

(declare-fun m!518899 () Bool)

(assert (=> start!49038 m!518899))

(declare-fun m!518901 () Bool)

(assert (=> start!49038 m!518901))

(check-sat (not b!540011) (not b!540013) (not b!540014) (not b!540017) (not b!540018) (not start!49038) (not b!540020) (not b!540012) (not b!540016))
(check-sat)
