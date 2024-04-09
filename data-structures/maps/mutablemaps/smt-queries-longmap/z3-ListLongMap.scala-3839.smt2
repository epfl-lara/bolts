; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52804 () Bool)

(assert start!52804)

(declare-fun b!575430 () Bool)

(declare-fun res!364006 () Bool)

(declare-fun e!331099 () Bool)

(assert (=> b!575430 (=> (not res!364006) (not e!331099))))

(declare-datatypes ((array!35903 0))(
  ( (array!35904 (arr!17230 (Array (_ BitVec 32) (_ BitVec 64))) (size!17594 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35903)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575430 (= res!364006 (validKeyInArray!0 (select (arr!17230 a!3118) j!142)))))

(declare-fun b!575431 () Bool)

(declare-fun res!364003 () Bool)

(assert (=> b!575431 (=> (not res!364003) (not e!331099))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!575431 (= res!364003 (validKeyInArray!0 k0!1914))))

(declare-fun b!575432 () Bool)

(declare-fun e!331103 () Bool)

(declare-fun e!331100 () Bool)

(assert (=> b!575432 (= e!331103 (not e!331100))))

(declare-fun res!364005 () Bool)

(assert (=> b!575432 (=> res!364005 e!331100)))

(declare-datatypes ((SeekEntryResult!5686 0))(
  ( (MissingZero!5686 (index!24971 (_ BitVec 32))) (Found!5686 (index!24972 (_ BitVec 32))) (Intermediate!5686 (undefined!6498 Bool) (index!24973 (_ BitVec 32)) (x!53890 (_ BitVec 32))) (Undefined!5686) (MissingVacant!5686 (index!24974 (_ BitVec 32))) )
))
(declare-fun lt!263212 () SeekEntryResult!5686)

(get-info :version)

(assert (=> b!575432 (= res!364005 (or (undefined!6498 lt!263212) (not ((_ is Intermediate!5686) lt!263212))))))

(declare-fun lt!263209 () SeekEntryResult!5686)

(declare-fun lt!263213 () SeekEntryResult!5686)

(assert (=> b!575432 (= lt!263209 lt!263213)))

(assert (=> b!575432 (= lt!263213 (Found!5686 j!142))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35903 (_ BitVec 32)) SeekEntryResult!5686)

(assert (=> b!575432 (= lt!263209 (seekEntryOrOpen!0 (select (arr!17230 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35903 (_ BitVec 32)) Bool)

(assert (=> b!575432 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18074 0))(
  ( (Unit!18075) )
))
(declare-fun lt!263211 () Unit!18074)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35903 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18074)

(assert (=> b!575432 (= lt!263211 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!575433 () Bool)

(declare-fun e!331104 () Bool)

(assert (=> b!575433 (= e!331099 e!331104)))

(declare-fun res!364000 () Bool)

(assert (=> b!575433 (=> (not res!364000) (not e!331104))))

(declare-fun lt!263210 () SeekEntryResult!5686)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!575433 (= res!364000 (or (= lt!263210 (MissingZero!5686 i!1132)) (= lt!263210 (MissingVacant!5686 i!1132))))))

(assert (=> b!575433 (= lt!263210 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!575434 () Bool)

(declare-fun res!363999 () Bool)

(assert (=> b!575434 (=> (not res!363999) (not e!331104))))

(assert (=> b!575434 (= res!363999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!575435 () Bool)

(declare-fun e!331101 () Bool)

(declare-fun e!331105 () Bool)

(assert (=> b!575435 (= e!331101 e!331105)))

(declare-fun res!363998 () Bool)

(assert (=> b!575435 (=> res!363998 e!331105)))

(declare-fun lt!263216 () (_ BitVec 64))

(declare-fun lt!263205 () SeekEntryResult!5686)

(assert (=> b!575435 (= res!363998 (or (bvslt (index!24973 lt!263212) #b00000000000000000000000000000000) (bvsge (index!24973 lt!263212) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53890 lt!263212) #b01111111111111111111111111111110) (bvslt (x!53890 lt!263212) #b00000000000000000000000000000000) (not (= lt!263216 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!17230 a!3118) i!1132 k0!1914) (index!24973 lt!263212)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!263205 lt!263213))))))

(declare-fun lt!263208 () SeekEntryResult!5686)

(declare-fun lt!263203 () SeekEntryResult!5686)

(assert (=> b!575435 (= lt!263208 lt!263203)))

(declare-fun lt!263206 () (_ BitVec 64))

(declare-fun lt!263204 () array!35903)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35903 (_ BitVec 32)) SeekEntryResult!5686)

(assert (=> b!575435 (= lt!263203 (seekKeyOrZeroReturnVacant!0 (x!53890 lt!263212) (index!24973 lt!263212) (index!24973 lt!263212) lt!263206 lt!263204 mask!3119))))

(assert (=> b!575435 (= lt!263208 (seekEntryOrOpen!0 lt!263206 lt!263204 mask!3119))))

(assert (=> b!575435 (= lt!263209 lt!263205)))

(assert (=> b!575435 (= lt!263205 (seekKeyOrZeroReturnVacant!0 (x!53890 lt!263212) (index!24973 lt!263212) (index!24973 lt!263212) (select (arr!17230 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575436 () Bool)

(assert (=> b!575436 (= e!331105 true)))

(assert (=> b!575436 (= lt!263205 lt!263203)))

(declare-fun lt!263207 () Unit!18074)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35903 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18074)

(assert (=> b!575436 (= lt!263207 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k0!1914 j!142 (x!53890 lt!263212) (index!24973 lt!263212) (index!24973 lt!263212) mask!3119))))

(declare-fun b!575437 () Bool)

(declare-fun res!363996 () Bool)

(assert (=> b!575437 (=> (not res!363996) (not e!331104))))

(declare-datatypes ((List!11363 0))(
  ( (Nil!11360) (Cons!11359 (h!12398 (_ BitVec 64)) (t!17599 List!11363)) )
))
(declare-fun arrayNoDuplicates!0 (array!35903 (_ BitVec 32) List!11363) Bool)

(assert (=> b!575437 (= res!363996 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11360))))

(declare-fun b!575438 () Bool)

(assert (=> b!575438 (= e!331100 e!331101)))

(declare-fun res!364004 () Bool)

(assert (=> b!575438 (=> res!364004 e!331101)))

(assert (=> b!575438 (= res!364004 (or (= lt!263216 (select (arr!17230 a!3118) j!142)) (= lt!263216 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!575438 (= lt!263216 (select (arr!17230 a!3118) (index!24973 lt!263212)))))

(declare-fun res!364001 () Bool)

(assert (=> start!52804 (=> (not res!364001) (not e!331099))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52804 (= res!364001 (validMask!0 mask!3119))))

(assert (=> start!52804 e!331099))

(assert (=> start!52804 true))

(declare-fun array_inv!13004 (array!35903) Bool)

(assert (=> start!52804 (array_inv!13004 a!3118)))

(declare-fun b!575439 () Bool)

(assert (=> b!575439 (= e!331104 e!331103)))

(declare-fun res!364002 () Bool)

(assert (=> b!575439 (=> (not res!364002) (not e!331103))))

(declare-fun lt!263215 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35903 (_ BitVec 32)) SeekEntryResult!5686)

(assert (=> b!575439 (= res!364002 (= lt!263212 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263215 lt!263206 lt!263204 mask!3119)))))

(declare-fun lt!263214 () (_ BitVec 32))

(assert (=> b!575439 (= lt!263212 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263214 (select (arr!17230 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575439 (= lt!263215 (toIndex!0 lt!263206 mask!3119))))

(assert (=> b!575439 (= lt!263206 (select (store (arr!17230 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!575439 (= lt!263214 (toIndex!0 (select (arr!17230 a!3118) j!142) mask!3119))))

(assert (=> b!575439 (= lt!263204 (array!35904 (store (arr!17230 a!3118) i!1132 k0!1914) (size!17594 a!3118)))))

(declare-fun b!575440 () Bool)

(declare-fun res!364007 () Bool)

(assert (=> b!575440 (=> (not res!364007) (not e!331099))))

(assert (=> b!575440 (= res!364007 (and (= (size!17594 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17594 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17594 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575441 () Bool)

(declare-fun res!363997 () Bool)

(assert (=> b!575441 (=> (not res!363997) (not e!331099))))

(declare-fun arrayContainsKey!0 (array!35903 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575441 (= res!363997 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52804 res!364001) b!575440))

(assert (= (and b!575440 res!364007) b!575430))

(assert (= (and b!575430 res!364006) b!575431))

(assert (= (and b!575431 res!364003) b!575441))

(assert (= (and b!575441 res!363997) b!575433))

(assert (= (and b!575433 res!364000) b!575434))

(assert (= (and b!575434 res!363999) b!575437))

(assert (= (and b!575437 res!363996) b!575439))

(assert (= (and b!575439 res!364002) b!575432))

(assert (= (and b!575432 (not res!364005)) b!575438))

(assert (= (and b!575438 (not res!364004)) b!575435))

(assert (= (and b!575435 (not res!363998)) b!575436))

(declare-fun m!554383 () Bool)

(assert (=> b!575431 m!554383))

(declare-fun m!554385 () Bool)

(assert (=> b!575435 m!554385))

(declare-fun m!554387 () Bool)

(assert (=> b!575435 m!554387))

(assert (=> b!575435 m!554385))

(declare-fun m!554389 () Bool)

(assert (=> b!575435 m!554389))

(declare-fun m!554391 () Bool)

(assert (=> b!575435 m!554391))

(declare-fun m!554393 () Bool)

(assert (=> b!575435 m!554393))

(declare-fun m!554395 () Bool)

(assert (=> b!575435 m!554395))

(declare-fun m!554397 () Bool)

(assert (=> b!575441 m!554397))

(assert (=> b!575430 m!554385))

(assert (=> b!575430 m!554385))

(declare-fun m!554399 () Bool)

(assert (=> b!575430 m!554399))

(declare-fun m!554401 () Bool)

(assert (=> b!575434 m!554401))

(assert (=> b!575432 m!554385))

(assert (=> b!575432 m!554385))

(declare-fun m!554403 () Bool)

(assert (=> b!575432 m!554403))

(declare-fun m!554405 () Bool)

(assert (=> b!575432 m!554405))

(declare-fun m!554407 () Bool)

(assert (=> b!575432 m!554407))

(assert (=> b!575439 m!554385))

(declare-fun m!554409 () Bool)

(assert (=> b!575439 m!554409))

(declare-fun m!554411 () Bool)

(assert (=> b!575439 m!554411))

(declare-fun m!554413 () Bool)

(assert (=> b!575439 m!554413))

(assert (=> b!575439 m!554393))

(assert (=> b!575439 m!554385))

(declare-fun m!554415 () Bool)

(assert (=> b!575439 m!554415))

(assert (=> b!575439 m!554385))

(declare-fun m!554417 () Bool)

(assert (=> b!575439 m!554417))

(declare-fun m!554419 () Bool)

(assert (=> b!575437 m!554419))

(declare-fun m!554421 () Bool)

(assert (=> start!52804 m!554421))

(declare-fun m!554423 () Bool)

(assert (=> start!52804 m!554423))

(declare-fun m!554425 () Bool)

(assert (=> b!575433 m!554425))

(declare-fun m!554427 () Bool)

(assert (=> b!575436 m!554427))

(assert (=> b!575438 m!554385))

(declare-fun m!554429 () Bool)

(assert (=> b!575438 m!554429))

(check-sat (not b!575430) (not b!575437) (not b!575433) (not b!575436) (not b!575441) (not b!575432) (not b!575435) (not start!52804) (not b!575434) (not b!575439) (not b!575431))
(check-sat)
