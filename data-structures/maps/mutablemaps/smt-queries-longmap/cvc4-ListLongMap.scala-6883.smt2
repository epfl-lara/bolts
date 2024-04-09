; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86588 () Bool)

(assert start!86588)

(declare-fun b!1003171 () Bool)

(declare-fun e!565081 () Bool)

(declare-fun e!565079 () Bool)

(assert (=> b!1003171 (= e!565081 e!565079)))

(declare-fun res!672820 () Bool)

(assert (=> b!1003171 (=> (not res!672820) (not e!565079))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((array!63341 0))(
  ( (array!63342 (arr!30492 (Array (_ BitVec 32) (_ BitVec 64))) (size!30995 (_ BitVec 32))) )
))
(declare-fun lt!443557 () array!63341)

(declare-datatypes ((SeekEntryResult!9424 0))(
  ( (MissingZero!9424 (index!40066 (_ BitVec 32))) (Found!9424 (index!40067 (_ BitVec 32))) (Intermediate!9424 (undefined!10236 Bool) (index!40068 (_ BitVec 32)) (x!87501 (_ BitVec 32))) (Undefined!9424) (MissingVacant!9424 (index!40069 (_ BitVec 32))) )
))
(declare-fun lt!443552 () SeekEntryResult!9424)

(declare-fun lt!443559 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63341 (_ BitVec 32)) SeekEntryResult!9424)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003171 (= res!672820 (not (= lt!443552 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443559 mask!3464) lt!443559 lt!443557 mask!3464))))))

(declare-fun a!3219 () array!63341)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1003171 (= lt!443559 (select (store (arr!30492 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1003171 (= lt!443557 (array!63342 (store (arr!30492 a!3219) i!1194 k!2224) (size!30995 a!3219)))))

(declare-fun b!1003172 () Bool)

(declare-fun e!565078 () Bool)

(declare-fun e!565077 () Bool)

(assert (=> b!1003172 (= e!565078 e!565077)))

(declare-fun res!672809 () Bool)

(assert (=> b!1003172 (=> (not res!672809) (not e!565077))))

(declare-fun lt!443556 () SeekEntryResult!9424)

(assert (=> b!1003172 (= res!672809 (= lt!443552 lt!443556))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003172 (= lt!443556 (Intermediate!9424 false resIndex!38 resX!38))))

(assert (=> b!1003172 (= lt!443552 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30492 a!3219) j!170) mask!3464) (select (arr!30492 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003173 () Bool)

(declare-fun res!672813 () Bool)

(declare-fun e!565076 () Bool)

(assert (=> b!1003173 (=> (not res!672813) (not e!565076))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!443553 () (_ BitVec 32))

(assert (=> b!1003173 (= res!672813 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443553 (select (arr!30492 a!3219) j!170) a!3219 mask!3464) lt!443556))))

(declare-fun b!1003174 () Bool)

(declare-fun res!672816 () Bool)

(declare-fun e!565080 () Bool)

(assert (=> b!1003174 (=> (not res!672816) (not e!565080))))

(assert (=> b!1003174 (= res!672816 (and (= (size!30995 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30995 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30995 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003175 () Bool)

(declare-fun res!672805 () Bool)

(assert (=> b!1003175 (=> (not res!672805) (not e!565080))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003175 (= res!672805 (validKeyInArray!0 k!2224))))

(declare-fun b!1003176 () Bool)

(assert (=> b!1003176 (= e!565079 e!565076)))

(declare-fun res!672806 () Bool)

(assert (=> b!1003176 (=> (not res!672806) (not e!565076))))

(assert (=> b!1003176 (= res!672806 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443553 #b00000000000000000000000000000000) (bvslt lt!443553 (size!30995 a!3219))))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003176 (= lt!443553 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1003177 () Bool)

(assert (=> b!1003177 (= e!565077 e!565081)))

(declare-fun res!672810 () Bool)

(assert (=> b!1003177 (=> (not res!672810) (not e!565081))))

(declare-fun lt!443554 () SeekEntryResult!9424)

(assert (=> b!1003177 (= res!672810 (= lt!443554 lt!443556))))

(assert (=> b!1003177 (= lt!443554 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30492 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003179 () Bool)

(declare-fun res!672815 () Bool)

(assert (=> b!1003179 (=> (not res!672815) (not e!565078))))

(declare-datatypes ((List!21294 0))(
  ( (Nil!21291) (Cons!21290 (h!22467 (_ BitVec 64)) (t!30303 List!21294)) )
))
(declare-fun arrayNoDuplicates!0 (array!63341 (_ BitVec 32) List!21294) Bool)

(assert (=> b!1003179 (= res!672815 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21291))))

(declare-fun b!1003180 () Bool)

(assert (=> b!1003180 (= e!565080 e!565078)))

(declare-fun res!672814 () Bool)

(assert (=> b!1003180 (=> (not res!672814) (not e!565078))))

(declare-fun lt!443555 () SeekEntryResult!9424)

(assert (=> b!1003180 (= res!672814 (or (= lt!443555 (MissingVacant!9424 i!1194)) (= lt!443555 (MissingZero!9424 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63341 (_ BitVec 32)) SeekEntryResult!9424)

(assert (=> b!1003180 (= lt!443555 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1003181 () Bool)

(declare-fun res!672818 () Bool)

(assert (=> b!1003181 (=> (not res!672818) (not e!565079))))

(assert (=> b!1003181 (= res!672818 (not (= lt!443554 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443559 lt!443557 mask!3464))))))

(declare-fun b!1003182 () Bool)

(declare-fun res!672807 () Bool)

(assert (=> b!1003182 (=> (not res!672807) (not e!565079))))

(assert (=> b!1003182 (= res!672807 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003183 () Bool)

(declare-fun res!672812 () Bool)

(assert (=> b!1003183 (=> (not res!672812) (not e!565078))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63341 (_ BitVec 32)) Bool)

(assert (=> b!1003183 (= res!672812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003184 () Bool)

(declare-fun res!672817 () Bool)

(assert (=> b!1003184 (=> (not res!672817) (not e!565080))))

(assert (=> b!1003184 (= res!672817 (validKeyInArray!0 (select (arr!30492 a!3219) j!170)))))

(declare-fun b!1003185 () Bool)

(declare-fun res!672811 () Bool)

(assert (=> b!1003185 (=> (not res!672811) (not e!565078))))

(assert (=> b!1003185 (= res!672811 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30995 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30995 a!3219))))))

(declare-fun b!1003186 () Bool)

(declare-fun res!672808 () Bool)

(assert (=> b!1003186 (=> (not res!672808) (not e!565080))))

(declare-fun arrayContainsKey!0 (array!63341 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003186 (= res!672808 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1003178 () Bool)

(assert (=> b!1003178 (= e!565076 false)))

(declare-fun lt!443558 () SeekEntryResult!9424)

(assert (=> b!1003178 (= lt!443558 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443553 lt!443559 lt!443557 mask!3464))))

(declare-fun res!672819 () Bool)

(assert (=> start!86588 (=> (not res!672819) (not e!565080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86588 (= res!672819 (validMask!0 mask!3464))))

(assert (=> start!86588 e!565080))

(declare-fun array_inv!23482 (array!63341) Bool)

(assert (=> start!86588 (array_inv!23482 a!3219)))

(assert (=> start!86588 true))

(assert (= (and start!86588 res!672819) b!1003174))

(assert (= (and b!1003174 res!672816) b!1003184))

(assert (= (and b!1003184 res!672817) b!1003175))

(assert (= (and b!1003175 res!672805) b!1003186))

(assert (= (and b!1003186 res!672808) b!1003180))

(assert (= (and b!1003180 res!672814) b!1003183))

(assert (= (and b!1003183 res!672812) b!1003179))

(assert (= (and b!1003179 res!672815) b!1003185))

(assert (= (and b!1003185 res!672811) b!1003172))

(assert (= (and b!1003172 res!672809) b!1003177))

(assert (= (and b!1003177 res!672810) b!1003171))

(assert (= (and b!1003171 res!672820) b!1003181))

(assert (= (and b!1003181 res!672818) b!1003182))

(assert (= (and b!1003182 res!672807) b!1003176))

(assert (= (and b!1003176 res!672806) b!1003173))

(assert (= (and b!1003173 res!672813) b!1003178))

(declare-fun m!929021 () Bool)

(assert (=> b!1003173 m!929021))

(assert (=> b!1003173 m!929021))

(declare-fun m!929023 () Bool)

(assert (=> b!1003173 m!929023))

(declare-fun m!929025 () Bool)

(assert (=> b!1003175 m!929025))

(declare-fun m!929027 () Bool)

(assert (=> b!1003178 m!929027))

(assert (=> b!1003172 m!929021))

(assert (=> b!1003172 m!929021))

(declare-fun m!929029 () Bool)

(assert (=> b!1003172 m!929029))

(assert (=> b!1003172 m!929029))

(assert (=> b!1003172 m!929021))

(declare-fun m!929031 () Bool)

(assert (=> b!1003172 m!929031))

(declare-fun m!929033 () Bool)

(assert (=> b!1003171 m!929033))

(assert (=> b!1003171 m!929033))

(declare-fun m!929035 () Bool)

(assert (=> b!1003171 m!929035))

(declare-fun m!929037 () Bool)

(assert (=> b!1003171 m!929037))

(declare-fun m!929039 () Bool)

(assert (=> b!1003171 m!929039))

(declare-fun m!929041 () Bool)

(assert (=> start!86588 m!929041))

(declare-fun m!929043 () Bool)

(assert (=> start!86588 m!929043))

(declare-fun m!929045 () Bool)

(assert (=> b!1003181 m!929045))

(declare-fun m!929047 () Bool)

(assert (=> b!1003180 m!929047))

(assert (=> b!1003177 m!929021))

(assert (=> b!1003177 m!929021))

(declare-fun m!929049 () Bool)

(assert (=> b!1003177 m!929049))

(declare-fun m!929051 () Bool)

(assert (=> b!1003179 m!929051))

(declare-fun m!929053 () Bool)

(assert (=> b!1003176 m!929053))

(declare-fun m!929055 () Bool)

(assert (=> b!1003183 m!929055))

(declare-fun m!929057 () Bool)

(assert (=> b!1003186 m!929057))

(assert (=> b!1003184 m!929021))

(assert (=> b!1003184 m!929021))

(declare-fun m!929059 () Bool)

(assert (=> b!1003184 m!929059))

(push 1)

(assert (not b!1003181))

