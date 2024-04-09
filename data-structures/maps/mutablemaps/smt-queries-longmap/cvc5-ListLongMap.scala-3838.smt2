; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52796 () Bool)

(assert start!52796)

(declare-fun res!363861 () Bool)

(declare-fun e!331021 () Bool)

(assert (=> start!52796 (=> (not res!363861) (not e!331021))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52796 (= res!363861 (validMask!0 mask!3119))))

(assert (=> start!52796 e!331021))

(assert (=> start!52796 true))

(declare-datatypes ((array!35895 0))(
  ( (array!35896 (arr!17226 (Array (_ BitVec 32) (_ BitVec 64))) (size!17590 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35895)

(declare-fun array_inv!13000 (array!35895) Bool)

(assert (=> start!52796 (array_inv!13000 a!3118)))

(declare-fun b!575286 () Bool)

(declare-fun res!363856 () Bool)

(declare-fun e!331016 () Bool)

(assert (=> b!575286 (=> (not res!363856) (not e!331016))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35895 (_ BitVec 32)) Bool)

(assert (=> b!575286 (= res!363856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!575287 () Bool)

(assert (=> b!575287 (= e!331021 e!331016)))

(declare-fun res!363860 () Bool)

(assert (=> b!575287 (=> (not res!363860) (not e!331016))))

(declare-datatypes ((SeekEntryResult!5682 0))(
  ( (MissingZero!5682 (index!24955 (_ BitVec 32))) (Found!5682 (index!24956 (_ BitVec 32))) (Intermediate!5682 (undefined!6494 Bool) (index!24957 (_ BitVec 32)) (x!53878 (_ BitVec 32))) (Undefined!5682) (MissingVacant!5682 (index!24958 (_ BitVec 32))) )
))
(declare-fun lt!263042 () SeekEntryResult!5682)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!575287 (= res!363860 (or (= lt!263042 (MissingZero!5682 i!1132)) (= lt!263042 (MissingVacant!5682 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35895 (_ BitVec 32)) SeekEntryResult!5682)

(assert (=> b!575287 (= lt!263042 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!575288 () Bool)

(declare-fun e!331015 () Bool)

(assert (=> b!575288 (= e!331015 true)))

(declare-fun lt!263037 () SeekEntryResult!5682)

(declare-fun lt!263040 () SeekEntryResult!5682)

(assert (=> b!575288 (= lt!263037 lt!263040)))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((Unit!18066 0))(
  ( (Unit!18067) )
))
(declare-fun lt!263046 () Unit!18066)

(declare-fun lt!263035 () SeekEntryResult!5682)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35895 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18066)

(assert (=> b!575288 (= lt!263046 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!53878 lt!263035) (index!24957 lt!263035) (index!24957 lt!263035) mask!3119))))

(declare-fun b!575289 () Bool)

(declare-fun e!331018 () Bool)

(declare-fun e!331019 () Bool)

(assert (=> b!575289 (= e!331018 (not e!331019))))

(declare-fun res!363853 () Bool)

(assert (=> b!575289 (=> res!363853 e!331019)))

(assert (=> b!575289 (= res!363853 (or (undefined!6494 lt!263035) (not (is-Intermediate!5682 lt!263035))))))

(declare-fun lt!263047 () SeekEntryResult!5682)

(declare-fun lt!263044 () SeekEntryResult!5682)

(assert (=> b!575289 (= lt!263047 lt!263044)))

(assert (=> b!575289 (= lt!263044 (Found!5682 j!142))))

(assert (=> b!575289 (= lt!263047 (seekEntryOrOpen!0 (select (arr!17226 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!575289 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!263036 () Unit!18066)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35895 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18066)

(assert (=> b!575289 (= lt!263036 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!575290 () Bool)

(declare-fun e!331017 () Bool)

(assert (=> b!575290 (= e!331019 e!331017)))

(declare-fun res!363855 () Bool)

(assert (=> b!575290 (=> res!363855 e!331017)))

(declare-fun lt!263043 () (_ BitVec 64))

(assert (=> b!575290 (= res!363855 (or (= lt!263043 (select (arr!17226 a!3118) j!142)) (= lt!263043 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!575290 (= lt!263043 (select (arr!17226 a!3118) (index!24957 lt!263035)))))

(declare-fun b!575291 () Bool)

(assert (=> b!575291 (= e!331017 e!331015)))

(declare-fun res!363863 () Bool)

(assert (=> b!575291 (=> res!363863 e!331015)))

(assert (=> b!575291 (= res!363863 (or (bvslt (index!24957 lt!263035) #b00000000000000000000000000000000) (bvsge (index!24957 lt!263035) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53878 lt!263035) #b01111111111111111111111111111110) (bvslt (x!53878 lt!263035) #b00000000000000000000000000000000) (not (= lt!263043 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!17226 a!3118) i!1132 k!1914) (index!24957 lt!263035)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!263037 lt!263044))))))

(declare-fun lt!263038 () SeekEntryResult!5682)

(assert (=> b!575291 (= lt!263038 lt!263040)))

(declare-fun lt!263048 () (_ BitVec 64))

(declare-fun lt!263041 () array!35895)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35895 (_ BitVec 32)) SeekEntryResult!5682)

(assert (=> b!575291 (= lt!263040 (seekKeyOrZeroReturnVacant!0 (x!53878 lt!263035) (index!24957 lt!263035) (index!24957 lt!263035) lt!263048 lt!263041 mask!3119))))

(assert (=> b!575291 (= lt!263038 (seekEntryOrOpen!0 lt!263048 lt!263041 mask!3119))))

(assert (=> b!575291 (= lt!263047 lt!263037)))

(assert (=> b!575291 (= lt!263037 (seekKeyOrZeroReturnVacant!0 (x!53878 lt!263035) (index!24957 lt!263035) (index!24957 lt!263035) (select (arr!17226 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575292 () Bool)

(declare-fun res!363852 () Bool)

(assert (=> b!575292 (=> (not res!363852) (not e!331021))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575292 (= res!363852 (validKeyInArray!0 (select (arr!17226 a!3118) j!142)))))

(declare-fun b!575293 () Bool)

(declare-fun res!363858 () Bool)

(assert (=> b!575293 (=> (not res!363858) (not e!331021))))

(assert (=> b!575293 (= res!363858 (validKeyInArray!0 k!1914))))

(declare-fun b!575294 () Bool)

(declare-fun res!363854 () Bool)

(assert (=> b!575294 (=> (not res!363854) (not e!331021))))

(assert (=> b!575294 (= res!363854 (and (= (size!17590 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17590 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17590 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575295 () Bool)

(declare-fun res!363859 () Bool)

(assert (=> b!575295 (=> (not res!363859) (not e!331021))))

(declare-fun arrayContainsKey!0 (array!35895 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575295 (= res!363859 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!575296 () Bool)

(assert (=> b!575296 (= e!331016 e!331018)))

(declare-fun res!363862 () Bool)

(assert (=> b!575296 (=> (not res!363862) (not e!331018))))

(declare-fun lt!263039 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35895 (_ BitVec 32)) SeekEntryResult!5682)

(assert (=> b!575296 (= res!363862 (= lt!263035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263039 lt!263048 lt!263041 mask!3119)))))

(declare-fun lt!263045 () (_ BitVec 32))

(assert (=> b!575296 (= lt!263035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263045 (select (arr!17226 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575296 (= lt!263039 (toIndex!0 lt!263048 mask!3119))))

(assert (=> b!575296 (= lt!263048 (select (store (arr!17226 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!575296 (= lt!263045 (toIndex!0 (select (arr!17226 a!3118) j!142) mask!3119))))

(assert (=> b!575296 (= lt!263041 (array!35896 (store (arr!17226 a!3118) i!1132 k!1914) (size!17590 a!3118)))))

(declare-fun b!575297 () Bool)

(declare-fun res!363857 () Bool)

(assert (=> b!575297 (=> (not res!363857) (not e!331016))))

(declare-datatypes ((List!11359 0))(
  ( (Nil!11356) (Cons!11355 (h!12394 (_ BitVec 64)) (t!17595 List!11359)) )
))
(declare-fun arrayNoDuplicates!0 (array!35895 (_ BitVec 32) List!11359) Bool)

(assert (=> b!575297 (= res!363857 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11356))))

(assert (= (and start!52796 res!363861) b!575294))

(assert (= (and b!575294 res!363854) b!575292))

(assert (= (and b!575292 res!363852) b!575293))

(assert (= (and b!575293 res!363858) b!575295))

(assert (= (and b!575295 res!363859) b!575287))

(assert (= (and b!575287 res!363860) b!575286))

(assert (= (and b!575286 res!363856) b!575297))

(assert (= (and b!575297 res!363857) b!575296))

(assert (= (and b!575296 res!363862) b!575289))

(assert (= (and b!575289 (not res!363853)) b!575290))

(assert (= (and b!575290 (not res!363855)) b!575291))

(assert (= (and b!575291 (not res!363863)) b!575288))

(declare-fun m!554191 () Bool)

(assert (=> b!575295 m!554191))

(declare-fun m!554193 () Bool)

(assert (=> b!575297 m!554193))

(declare-fun m!554195 () Bool)

(assert (=> b!575286 m!554195))

(declare-fun m!554197 () Bool)

(assert (=> b!575287 m!554197))

(declare-fun m!554199 () Bool)

(assert (=> b!575289 m!554199))

(assert (=> b!575289 m!554199))

(declare-fun m!554201 () Bool)

(assert (=> b!575289 m!554201))

(declare-fun m!554203 () Bool)

(assert (=> b!575289 m!554203))

(declare-fun m!554205 () Bool)

(assert (=> b!575289 m!554205))

(declare-fun m!554207 () Bool)

(assert (=> start!52796 m!554207))

(declare-fun m!554209 () Bool)

(assert (=> start!52796 m!554209))

(assert (=> b!575292 m!554199))

(assert (=> b!575292 m!554199))

(declare-fun m!554211 () Bool)

(assert (=> b!575292 m!554211))

(assert (=> b!575290 m!554199))

(declare-fun m!554213 () Bool)

(assert (=> b!575290 m!554213))

(assert (=> b!575291 m!554199))

(assert (=> b!575291 m!554199))

(declare-fun m!554215 () Bool)

(assert (=> b!575291 m!554215))

(declare-fun m!554217 () Bool)

(assert (=> b!575291 m!554217))

(declare-fun m!554219 () Bool)

(assert (=> b!575291 m!554219))

(declare-fun m!554221 () Bool)

(assert (=> b!575291 m!554221))

(declare-fun m!554223 () Bool)

(assert (=> b!575291 m!554223))

(declare-fun m!554225 () Bool)

(assert (=> b!575288 m!554225))

(declare-fun m!554227 () Bool)

(assert (=> b!575293 m!554227))

(assert (=> b!575296 m!554199))

(declare-fun m!554229 () Bool)

(assert (=> b!575296 m!554229))

(declare-fun m!554231 () Bool)

(assert (=> b!575296 m!554231))

(declare-fun m!554233 () Bool)

(assert (=> b!575296 m!554233))

(assert (=> b!575296 m!554199))

(declare-fun m!554235 () Bool)

(assert (=> b!575296 m!554235))

(assert (=> b!575296 m!554221))

(declare-fun m!554237 () Bool)

(assert (=> b!575296 m!554237))

(assert (=> b!575296 m!554199))

(push 1)

