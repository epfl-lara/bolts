; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48750 () Bool)

(assert start!48750)

(declare-fun res!330954 () Bool)

(declare-fun e!311058 () Bool)

(assert (=> start!48750 (=> (not res!330954) (not e!311058))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48750 (= res!330954 (validMask!0 mask!3216))))

(assert (=> start!48750 e!311058))

(assert (=> start!48750 true))

(declare-datatypes ((array!33918 0))(
  ( (array!33919 (arr!16294 (Array (_ BitVec 32) (_ BitVec 64))) (size!16658 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33918)

(declare-fun array_inv!12068 (array!33918) Bool)

(assert (=> start!48750 (array_inv!12068 a!3154)))

(declare-fun b!535598 () Bool)

(declare-fun e!311062 () Bool)

(assert (=> b!535598 (= e!311062 false)))

(declare-fun x!1030 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4759 0))(
  ( (MissingZero!4759 (index!21260 (_ BitVec 32))) (Found!4759 (index!21261 (_ BitVec 32))) (Intermediate!4759 (undefined!5571 Bool) (index!21262 (_ BitVec 32)) (x!50233 (_ BitVec 32))) (Undefined!4759) (MissingVacant!4759 (index!21263 (_ BitVec 32))) )
))
(declare-fun lt!245858 () SeekEntryResult!4759)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun lt!245861 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33918 (_ BitVec 32)) SeekEntryResult!4759)

(assert (=> b!535598 (= lt!245858 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!245861 (select (arr!16294 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535599 () Bool)

(declare-fun res!330960 () Bool)

(declare-fun e!311059 () Bool)

(assert (=> b!535599 (=> (not res!330960) (not e!311059))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!535599 (= res!330960 (and (not (= (select (arr!16294 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16294 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16294 a!3154) index!1177) (select (arr!16294 a!3154) j!147)))))))

(declare-fun b!535600 () Bool)

(declare-fun res!330958 () Bool)

(assert (=> b!535600 (=> (not res!330958) (not e!311059))))

(declare-fun lt!245860 () SeekEntryResult!4759)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535600 (= res!330958 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16294 a!3154) j!147) mask!3216) (select (arr!16294 a!3154) j!147) a!3154 mask!3216) lt!245860))))

(declare-fun b!535601 () Bool)

(declare-fun e!311061 () Bool)

(assert (=> b!535601 (= e!311061 e!311059)))

(declare-fun res!330963 () Bool)

(assert (=> b!535601 (=> (not res!330963) (not e!311059))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535601 (= res!330963 (= lt!245860 (Intermediate!4759 false resIndex!32 resX!32)))))

(assert (=> b!535601 (= lt!245860 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16294 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535602 () Bool)

(declare-fun res!330962 () Bool)

(assert (=> b!535602 (=> (not res!330962) (not e!311058))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535602 (= res!330962 (validKeyInArray!0 k0!1998))))

(declare-fun b!535603 () Bool)

(declare-fun res!330964 () Bool)

(assert (=> b!535603 (=> (not res!330964) (not e!311061))))

(declare-datatypes ((List!10466 0))(
  ( (Nil!10463) (Cons!10462 (h!11405 (_ BitVec 64)) (t!16702 List!10466)) )
))
(declare-fun arrayNoDuplicates!0 (array!33918 (_ BitVec 32) List!10466) Bool)

(assert (=> b!535603 (= res!330964 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10463))))

(declare-fun b!535604 () Bool)

(assert (=> b!535604 (= e!311058 e!311061)))

(declare-fun res!330953 () Bool)

(assert (=> b!535604 (=> (not res!330953) (not e!311061))))

(declare-fun lt!245859 () SeekEntryResult!4759)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535604 (= res!330953 (or (= lt!245859 (MissingZero!4759 i!1153)) (= lt!245859 (MissingVacant!4759 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33918 (_ BitVec 32)) SeekEntryResult!4759)

(assert (=> b!535604 (= lt!245859 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!535605 () Bool)

(declare-fun res!330956 () Bool)

(assert (=> b!535605 (=> (not res!330956) (not e!311061))))

(assert (=> b!535605 (= res!330956 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16658 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16658 a!3154)) (= (select (arr!16294 a!3154) resIndex!32) (select (arr!16294 a!3154) j!147))))))

(declare-fun b!535606 () Bool)

(assert (=> b!535606 (= e!311059 e!311062)))

(declare-fun res!330959 () Bool)

(assert (=> b!535606 (=> (not res!330959) (not e!311062))))

(assert (=> b!535606 (= res!330959 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!245861 #b00000000000000000000000000000000) (bvslt lt!245861 (size!16658 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535606 (= lt!245861 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!535607 () Bool)

(declare-fun res!330961 () Bool)

(assert (=> b!535607 (=> (not res!330961) (not e!311058))))

(assert (=> b!535607 (= res!330961 (validKeyInArray!0 (select (arr!16294 a!3154) j!147)))))

(declare-fun b!535608 () Bool)

(declare-fun res!330957 () Bool)

(assert (=> b!535608 (=> (not res!330957) (not e!311058))))

(assert (=> b!535608 (= res!330957 (and (= (size!16658 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16658 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16658 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535609 () Bool)

(declare-fun res!330955 () Bool)

(assert (=> b!535609 (=> (not res!330955) (not e!311058))))

(declare-fun arrayContainsKey!0 (array!33918 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535609 (= res!330955 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535610 () Bool)

(declare-fun res!330965 () Bool)

(assert (=> b!535610 (=> (not res!330965) (not e!311061))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33918 (_ BitVec 32)) Bool)

(assert (=> b!535610 (= res!330965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48750 res!330954) b!535608))

(assert (= (and b!535608 res!330957) b!535607))

(assert (= (and b!535607 res!330961) b!535602))

(assert (= (and b!535602 res!330962) b!535609))

(assert (= (and b!535609 res!330955) b!535604))

(assert (= (and b!535604 res!330953) b!535610))

(assert (= (and b!535610 res!330965) b!535603))

(assert (= (and b!535603 res!330964) b!535605))

(assert (= (and b!535605 res!330956) b!535601))

(assert (= (and b!535601 res!330963) b!535600))

(assert (= (and b!535600 res!330958) b!535599))

(assert (= (and b!535599 res!330960) b!535606))

(assert (= (and b!535606 res!330959) b!535598))

(declare-fun m!515163 () Bool)

(assert (=> b!535598 m!515163))

(assert (=> b!535598 m!515163))

(declare-fun m!515165 () Bool)

(assert (=> b!535598 m!515165))

(declare-fun m!515167 () Bool)

(assert (=> b!535599 m!515167))

(assert (=> b!535599 m!515163))

(declare-fun m!515169 () Bool)

(assert (=> b!535610 m!515169))

(declare-fun m!515171 () Bool)

(assert (=> b!535602 m!515171))

(assert (=> b!535600 m!515163))

(assert (=> b!535600 m!515163))

(declare-fun m!515173 () Bool)

(assert (=> b!535600 m!515173))

(assert (=> b!535600 m!515173))

(assert (=> b!535600 m!515163))

(declare-fun m!515175 () Bool)

(assert (=> b!535600 m!515175))

(assert (=> b!535601 m!515163))

(assert (=> b!535601 m!515163))

(declare-fun m!515177 () Bool)

(assert (=> b!535601 m!515177))

(declare-fun m!515179 () Bool)

(assert (=> b!535609 m!515179))

(declare-fun m!515181 () Bool)

(assert (=> b!535606 m!515181))

(declare-fun m!515183 () Bool)

(assert (=> b!535605 m!515183))

(assert (=> b!535605 m!515163))

(declare-fun m!515185 () Bool)

(assert (=> b!535603 m!515185))

(declare-fun m!515187 () Bool)

(assert (=> b!535604 m!515187))

(declare-fun m!515189 () Bool)

(assert (=> start!48750 m!515189))

(declare-fun m!515191 () Bool)

(assert (=> start!48750 m!515191))

(assert (=> b!535607 m!515163))

(assert (=> b!535607 m!515163))

(declare-fun m!515193 () Bool)

(assert (=> b!535607 m!515193))

(check-sat (not start!48750) (not b!535607) (not b!535603) (not b!535606) (not b!535602) (not b!535609) (not b!535604) (not b!535598) (not b!535601) (not b!535600) (not b!535610))
(check-sat)
