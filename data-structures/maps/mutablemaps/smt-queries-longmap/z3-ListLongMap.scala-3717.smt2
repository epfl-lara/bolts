; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51118 () Bool)

(assert start!51118)

(declare-fun b!558325 () Bool)

(declare-fun res!350342 () Bool)

(declare-fun e!321640 () Bool)

(assert (=> b!558325 (=> (not res!350342) (not e!321640))))

(declare-datatypes ((array!35126 0))(
  ( (array!35127 (arr!16864 (Array (_ BitVec 32) (_ BitVec 64))) (size!17228 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35126)

(declare-datatypes ((List!10997 0))(
  ( (Nil!10994) (Cons!10993 (h!11987 (_ BitVec 64)) (t!17233 List!10997)) )
))
(declare-fun arrayNoDuplicates!0 (array!35126 (_ BitVec 32) List!10997) Bool)

(assert (=> b!558325 (= res!350342 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10994))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5320 0))(
  ( (MissingZero!5320 (index!23507 (_ BitVec 32))) (Found!5320 (index!23508 (_ BitVec 32))) (Intermediate!5320 (undefined!6132 Bool) (index!23509 (_ BitVec 32)) (x!52431 (_ BitVec 32))) (Undefined!5320) (MissingVacant!5320 (index!23510 (_ BitVec 32))) )
))
(declare-fun lt!253782 () SeekEntryResult!5320)

(declare-fun lt!253785 () SeekEntryResult!5320)

(declare-fun b!558326 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!321635 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35126 (_ BitVec 32)) SeekEntryResult!5320)

(assert (=> b!558326 (= e!321635 (= lt!253785 (seekKeyOrZeroReturnVacant!0 (x!52431 lt!253782) (index!23509 lt!253782) (index!23509 lt!253782) (select (arr!16864 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!558327 () Bool)

(declare-fun res!350345 () Bool)

(assert (=> b!558327 (=> (not res!350345) (not e!321640))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35126 (_ BitVec 32)) Bool)

(assert (=> b!558327 (= res!350345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!558329 () Bool)

(declare-fun res!350340 () Bool)

(declare-fun e!321636 () Bool)

(assert (=> b!558329 (=> (not res!350340) (not e!321636))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!558329 (= res!350340 (validKeyInArray!0 k0!1914))))

(declare-fun b!558330 () Bool)

(assert (=> b!558330 (= e!321636 e!321640)))

(declare-fun res!350341 () Bool)

(assert (=> b!558330 (=> (not res!350341) (not e!321640))))

(declare-fun lt!253787 () SeekEntryResult!5320)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!558330 (= res!350341 (or (= lt!253787 (MissingZero!5320 i!1132)) (= lt!253787 (MissingVacant!5320 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35126 (_ BitVec 32)) SeekEntryResult!5320)

(assert (=> b!558330 (= lt!253787 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!558331 () Bool)

(declare-fun e!321638 () Bool)

(assert (=> b!558331 (= e!321640 e!321638)))

(declare-fun res!350346 () Bool)

(assert (=> b!558331 (=> (not res!350346) (not e!321638))))

(declare-fun lt!253784 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35126 (_ BitVec 32)) SeekEntryResult!5320)

(assert (=> b!558331 (= res!350346 (= lt!253782 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253784 (select (store (arr!16864 a!3118) i!1132 k0!1914) j!142) (array!35127 (store (arr!16864 a!3118) i!1132 k0!1914) (size!17228 a!3118)) mask!3119)))))

(declare-fun lt!253786 () (_ BitVec 32))

(assert (=> b!558331 (= lt!253782 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253786 (select (arr!16864 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558331 (= lt!253784 (toIndex!0 (select (store (arr!16864 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!558331 (= lt!253786 (toIndex!0 (select (arr!16864 a!3118) j!142) mask!3119))))

(declare-fun b!558332 () Bool)

(declare-fun res!350339 () Bool)

(assert (=> b!558332 (=> (not res!350339) (not e!321636))))

(declare-fun arrayContainsKey!0 (array!35126 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!558332 (= res!350339 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!558333 () Bool)

(declare-fun res!350338 () Bool)

(assert (=> b!558333 (=> (not res!350338) (not e!321636))))

(assert (=> b!558333 (= res!350338 (validKeyInArray!0 (select (arr!16864 a!3118) j!142)))))

(declare-fun b!558334 () Bool)

(assert (=> b!558334 (= e!321638 (not true))))

(declare-fun e!321639 () Bool)

(assert (=> b!558334 e!321639))

(declare-fun res!350348 () Bool)

(assert (=> b!558334 (=> (not res!350348) (not e!321639))))

(assert (=> b!558334 (= res!350348 (= lt!253785 (Found!5320 j!142)))))

(assert (=> b!558334 (= lt!253785 (seekEntryOrOpen!0 (select (arr!16864 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!558334 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17414 0))(
  ( (Unit!17415) )
))
(declare-fun lt!253783 () Unit!17414)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35126 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17414)

(assert (=> b!558334 (= lt!253783 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!558335 () Bool)

(declare-fun res!350347 () Bool)

(assert (=> b!558335 (=> (not res!350347) (not e!321636))))

(assert (=> b!558335 (= res!350347 (and (= (size!17228 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17228 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17228 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!350343 () Bool)

(assert (=> start!51118 (=> (not res!350343) (not e!321636))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51118 (= res!350343 (validMask!0 mask!3119))))

(assert (=> start!51118 e!321636))

(assert (=> start!51118 true))

(declare-fun array_inv!12638 (array!35126) Bool)

(assert (=> start!51118 (array_inv!12638 a!3118)))

(declare-fun b!558328 () Bool)

(assert (=> b!558328 (= e!321639 e!321635)))

(declare-fun res!350344 () Bool)

(assert (=> b!558328 (=> res!350344 e!321635)))

(get-info :version)

(assert (=> b!558328 (= res!350344 (or (undefined!6132 lt!253782) (not ((_ is Intermediate!5320) lt!253782)) (= (select (arr!16864 a!3118) (index!23509 lt!253782)) (select (arr!16864 a!3118) j!142)) (= (select (arr!16864 a!3118) (index!23509 lt!253782)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!51118 res!350343) b!558335))

(assert (= (and b!558335 res!350347) b!558333))

(assert (= (and b!558333 res!350338) b!558329))

(assert (= (and b!558329 res!350340) b!558332))

(assert (= (and b!558332 res!350339) b!558330))

(assert (= (and b!558330 res!350341) b!558327))

(assert (= (and b!558327 res!350345) b!558325))

(assert (= (and b!558325 res!350342) b!558331))

(assert (= (and b!558331 res!350346) b!558334))

(assert (= (and b!558334 res!350348) b!558328))

(assert (= (and b!558328 (not res!350344)) b!558326))

(declare-fun m!536357 () Bool)

(assert (=> b!558325 m!536357))

(declare-fun m!536359 () Bool)

(assert (=> b!558331 m!536359))

(declare-fun m!536361 () Bool)

(assert (=> b!558331 m!536361))

(declare-fun m!536363 () Bool)

(assert (=> b!558331 m!536363))

(declare-fun m!536365 () Bool)

(assert (=> b!558331 m!536365))

(assert (=> b!558331 m!536359))

(assert (=> b!558331 m!536363))

(assert (=> b!558331 m!536363))

(declare-fun m!536367 () Bool)

(assert (=> b!558331 m!536367))

(assert (=> b!558331 m!536359))

(declare-fun m!536369 () Bool)

(assert (=> b!558331 m!536369))

(declare-fun m!536371 () Bool)

(assert (=> b!558331 m!536371))

(declare-fun m!536373 () Bool)

(assert (=> b!558328 m!536373))

(assert (=> b!558328 m!536359))

(declare-fun m!536375 () Bool)

(assert (=> b!558330 m!536375))

(declare-fun m!536377 () Bool)

(assert (=> b!558329 m!536377))

(declare-fun m!536379 () Bool)

(assert (=> b!558332 m!536379))

(declare-fun m!536381 () Bool)

(assert (=> start!51118 m!536381))

(declare-fun m!536383 () Bool)

(assert (=> start!51118 m!536383))

(assert (=> b!558333 m!536359))

(assert (=> b!558333 m!536359))

(declare-fun m!536385 () Bool)

(assert (=> b!558333 m!536385))

(assert (=> b!558334 m!536359))

(assert (=> b!558334 m!536359))

(declare-fun m!536387 () Bool)

(assert (=> b!558334 m!536387))

(declare-fun m!536389 () Bool)

(assert (=> b!558334 m!536389))

(declare-fun m!536391 () Bool)

(assert (=> b!558334 m!536391))

(assert (=> b!558326 m!536359))

(assert (=> b!558326 m!536359))

(declare-fun m!536393 () Bool)

(assert (=> b!558326 m!536393))

(declare-fun m!536395 () Bool)

(assert (=> b!558327 m!536395))

(check-sat (not b!558327) (not b!558325) (not b!558330) (not b!558331) (not b!558326) (not b!558332) (not start!51118) (not b!558329) (not b!558333) (not b!558334))
(check-sat)
