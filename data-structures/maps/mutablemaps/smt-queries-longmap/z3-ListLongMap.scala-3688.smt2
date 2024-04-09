; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50764 () Bool)

(assert start!50764)

(declare-fun b!554868 () Bool)

(declare-fun res!347434 () Bool)

(declare-fun e!319861 () Bool)

(assert (=> b!554868 (=> (not res!347434) (not e!319861))))

(declare-datatypes ((array!34943 0))(
  ( (array!34944 (arr!16777 (Array (_ BitVec 32) (_ BitVec 64))) (size!17141 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34943)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34943 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554868 (= res!347434 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554869 () Bool)

(declare-fun res!347437 () Bool)

(declare-fun e!319862 () Bool)

(assert (=> b!554869 (=> (not res!347437) (not e!319862))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34943 (_ BitVec 32)) Bool)

(assert (=> b!554869 (= res!347437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554870 () Bool)

(declare-fun res!347430 () Bool)

(assert (=> b!554870 (=> (not res!347430) (not e!319861))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554870 (= res!347430 (validKeyInArray!0 (select (arr!16777 a!3118) j!142)))))

(declare-fun b!554871 () Bool)

(declare-fun res!347432 () Bool)

(assert (=> b!554871 (=> (not res!347432) (not e!319861))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554871 (= res!347432 (and (= (size!17141 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17141 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17141 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554872 () Bool)

(declare-fun e!319864 () Bool)

(assert (=> b!554872 (= e!319862 e!319864)))

(declare-fun res!347435 () Bool)

(assert (=> b!554872 (=> (not res!347435) (not e!319864))))

(declare-datatypes ((SeekEntryResult!5233 0))(
  ( (MissingZero!5233 (index!23159 (_ BitVec 32))) (Found!5233 (index!23160 (_ BitVec 32))) (Intermediate!5233 (undefined!6045 Bool) (index!23161 (_ BitVec 32)) (x!52094 (_ BitVec 32))) (Undefined!5233) (MissingVacant!5233 (index!23162 (_ BitVec 32))) )
))
(declare-fun lt!252131 () SeekEntryResult!5233)

(declare-fun lt!252126 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34943 (_ BitVec 32)) SeekEntryResult!5233)

(assert (=> b!554872 (= res!347435 (= lt!252131 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252126 (select (store (arr!16777 a!3118) i!1132 k0!1914) j!142) (array!34944 (store (arr!16777 a!3118) i!1132 k0!1914) (size!17141 a!3118)) mask!3119)))))

(declare-fun lt!252129 () (_ BitVec 32))

(assert (=> b!554872 (= lt!252131 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252129 (select (arr!16777 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554872 (= lt!252126 (toIndex!0 (select (store (arr!16777 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!554872 (= lt!252129 (toIndex!0 (select (arr!16777 a!3118) j!142) mask!3119))))

(declare-fun b!554874 () Bool)

(assert (=> b!554874 (= e!319861 e!319862)))

(declare-fun res!347433 () Bool)

(assert (=> b!554874 (=> (not res!347433) (not e!319862))))

(declare-fun lt!252127 () SeekEntryResult!5233)

(assert (=> b!554874 (= res!347433 (or (= lt!252127 (MissingZero!5233 i!1132)) (= lt!252127 (MissingVacant!5233 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34943 (_ BitVec 32)) SeekEntryResult!5233)

(assert (=> b!554874 (= lt!252127 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!554875 () Bool)

(assert (=> b!554875 (= e!319864 (not true))))

(declare-fun lt!252128 () SeekEntryResult!5233)

(get-info :version)

(assert (=> b!554875 (and (= lt!252128 (Found!5233 j!142)) (or (undefined!6045 lt!252131) (not ((_ is Intermediate!5233) lt!252131)) (= (select (arr!16777 a!3118) (index!23161 lt!252131)) (select (arr!16777 a!3118) j!142)) (not (= (select (arr!16777 a!3118) (index!23161 lt!252131)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252128 (MissingZero!5233 (index!23161 lt!252131)))))))

(assert (=> b!554875 (= lt!252128 (seekEntryOrOpen!0 (select (arr!16777 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!554875 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17240 0))(
  ( (Unit!17241) )
))
(declare-fun lt!252130 () Unit!17240)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34943 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17240)

(assert (=> b!554875 (= lt!252130 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554876 () Bool)

(declare-fun res!347436 () Bool)

(assert (=> b!554876 (=> (not res!347436) (not e!319861))))

(assert (=> b!554876 (= res!347436 (validKeyInArray!0 k0!1914))))

(declare-fun res!347431 () Bool)

(assert (=> start!50764 (=> (not res!347431) (not e!319861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50764 (= res!347431 (validMask!0 mask!3119))))

(assert (=> start!50764 e!319861))

(assert (=> start!50764 true))

(declare-fun array_inv!12551 (array!34943) Bool)

(assert (=> start!50764 (array_inv!12551 a!3118)))

(declare-fun b!554873 () Bool)

(declare-fun res!347438 () Bool)

(assert (=> b!554873 (=> (not res!347438) (not e!319862))))

(declare-datatypes ((List!10910 0))(
  ( (Nil!10907) (Cons!10906 (h!11891 (_ BitVec 64)) (t!17146 List!10910)) )
))
(declare-fun arrayNoDuplicates!0 (array!34943 (_ BitVec 32) List!10910) Bool)

(assert (=> b!554873 (= res!347438 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10907))))

(assert (= (and start!50764 res!347431) b!554871))

(assert (= (and b!554871 res!347432) b!554870))

(assert (= (and b!554870 res!347430) b!554876))

(assert (= (and b!554876 res!347436) b!554868))

(assert (= (and b!554868 res!347434) b!554874))

(assert (= (and b!554874 res!347433) b!554869))

(assert (= (and b!554869 res!347437) b!554873))

(assert (= (and b!554873 res!347438) b!554872))

(assert (= (and b!554872 res!347435) b!554875))

(declare-fun m!532437 () Bool)

(assert (=> b!554868 m!532437))

(declare-fun m!532439 () Bool)

(assert (=> b!554876 m!532439))

(declare-fun m!532441 () Bool)

(assert (=> b!554873 m!532441))

(declare-fun m!532443 () Bool)

(assert (=> b!554875 m!532443))

(declare-fun m!532445 () Bool)

(assert (=> b!554875 m!532445))

(declare-fun m!532447 () Bool)

(assert (=> b!554875 m!532447))

(declare-fun m!532449 () Bool)

(assert (=> b!554875 m!532449))

(assert (=> b!554875 m!532443))

(declare-fun m!532451 () Bool)

(assert (=> b!554875 m!532451))

(declare-fun m!532453 () Bool)

(assert (=> b!554874 m!532453))

(assert (=> b!554872 m!532443))

(declare-fun m!532455 () Bool)

(assert (=> b!554872 m!532455))

(assert (=> b!554872 m!532443))

(declare-fun m!532457 () Bool)

(assert (=> b!554872 m!532457))

(assert (=> b!554872 m!532457))

(declare-fun m!532459 () Bool)

(assert (=> b!554872 m!532459))

(declare-fun m!532461 () Bool)

(assert (=> b!554872 m!532461))

(assert (=> b!554872 m!532443))

(declare-fun m!532463 () Bool)

(assert (=> b!554872 m!532463))

(assert (=> b!554872 m!532457))

(declare-fun m!532465 () Bool)

(assert (=> b!554872 m!532465))

(declare-fun m!532467 () Bool)

(assert (=> start!50764 m!532467))

(declare-fun m!532469 () Bool)

(assert (=> start!50764 m!532469))

(declare-fun m!532471 () Bool)

(assert (=> b!554869 m!532471))

(assert (=> b!554870 m!532443))

(assert (=> b!554870 m!532443))

(declare-fun m!532473 () Bool)

(assert (=> b!554870 m!532473))

(check-sat (not b!554875) (not b!554876) (not b!554872) (not b!554868) (not b!554870) (not b!554873) (not start!50764) (not b!554869) (not b!554874))
(check-sat)
