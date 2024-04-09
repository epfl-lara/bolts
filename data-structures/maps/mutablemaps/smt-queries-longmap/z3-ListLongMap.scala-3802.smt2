; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52186 () Bool)

(assert start!52186)

(declare-fun b!569232 () Bool)

(declare-fun res!359402 () Bool)

(declare-fun e!327468 () Bool)

(assert (=> b!569232 (=> (not res!359402) (not e!327468))))

(declare-datatypes ((array!35663 0))(
  ( (array!35664 (arr!17119 (Array (_ BitVec 32) (_ BitVec 64))) (size!17483 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35663)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569232 (= res!359402 (validKeyInArray!0 (select (arr!17119 a!3118) j!142)))))

(declare-fun b!569233 () Bool)

(declare-fun res!359407 () Bool)

(declare-fun e!327466 () Bool)

(assert (=> b!569233 (=> (not res!359407) (not e!327466))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35663 (_ BitVec 32)) Bool)

(assert (=> b!569233 (= res!359407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569234 () Bool)

(declare-fun res!359405 () Bool)

(assert (=> b!569234 (=> (not res!359405) (not e!327468))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!569234 (= res!359405 (and (= (size!17483 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17483 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17483 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569235 () Bool)

(declare-fun res!359401 () Bool)

(assert (=> b!569235 (=> (not res!359401) (not e!327468))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!569235 (= res!359401 (validKeyInArray!0 k0!1914))))

(declare-fun b!569236 () Bool)

(declare-fun e!327467 () Bool)

(assert (=> b!569236 (= e!327467 (not true))))

(declare-datatypes ((SeekEntryResult!5575 0))(
  ( (MissingZero!5575 (index!24527 (_ BitVec 32))) (Found!5575 (index!24528 (_ BitVec 32))) (Intermediate!5575 (undefined!6387 Bool) (index!24529 (_ BitVec 32)) (x!53429 (_ BitVec 32))) (Undefined!5575) (MissingVacant!5575 (index!24530 (_ BitVec 32))) )
))
(declare-fun lt!259499 () SeekEntryResult!5575)

(declare-fun lt!259497 () SeekEntryResult!5575)

(get-info :version)

(assert (=> b!569236 (and (= lt!259497 (Found!5575 j!142)) (or (undefined!6387 lt!259499) (not ((_ is Intermediate!5575) lt!259499)) (= (select (arr!17119 a!3118) (index!24529 lt!259499)) (select (arr!17119 a!3118) j!142)) (not (= (select (arr!17119 a!3118) (index!24529 lt!259499)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259497 (MissingZero!5575 (index!24529 lt!259499)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35663 (_ BitVec 32)) SeekEntryResult!5575)

(assert (=> b!569236 (= lt!259497 (seekEntryOrOpen!0 (select (arr!17119 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!569236 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17852 0))(
  ( (Unit!17853) )
))
(declare-fun lt!259500 () Unit!17852)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35663 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17852)

(assert (=> b!569236 (= lt!259500 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569237 () Bool)

(assert (=> b!569237 (= e!327468 e!327466)))

(declare-fun res!359408 () Bool)

(assert (=> b!569237 (=> (not res!359408) (not e!327466))))

(declare-fun lt!259498 () SeekEntryResult!5575)

(assert (=> b!569237 (= res!359408 (or (= lt!259498 (MissingZero!5575 i!1132)) (= lt!259498 (MissingVacant!5575 i!1132))))))

(assert (=> b!569237 (= lt!259498 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!569238 () Bool)

(assert (=> b!569238 (= e!327466 e!327467)))

(declare-fun res!359403 () Bool)

(assert (=> b!569238 (=> (not res!359403) (not e!327467))))

(declare-fun lt!259502 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35663 (_ BitVec 32)) SeekEntryResult!5575)

(assert (=> b!569238 (= res!359403 (= lt!259499 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259502 (select (store (arr!17119 a!3118) i!1132 k0!1914) j!142) (array!35664 (store (arr!17119 a!3118) i!1132 k0!1914) (size!17483 a!3118)) mask!3119)))))

(declare-fun lt!259501 () (_ BitVec 32))

(assert (=> b!569238 (= lt!259499 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259501 (select (arr!17119 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569238 (= lt!259502 (toIndex!0 (select (store (arr!17119 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!569238 (= lt!259501 (toIndex!0 (select (arr!17119 a!3118) j!142) mask!3119))))

(declare-fun b!569239 () Bool)

(declare-fun res!359400 () Bool)

(assert (=> b!569239 (=> (not res!359400) (not e!327466))))

(declare-datatypes ((List!11252 0))(
  ( (Nil!11249) (Cons!11248 (h!12269 (_ BitVec 64)) (t!17488 List!11252)) )
))
(declare-fun arrayNoDuplicates!0 (array!35663 (_ BitVec 32) List!11252) Bool)

(assert (=> b!569239 (= res!359400 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11249))))

(declare-fun b!569240 () Bool)

(declare-fun res!359406 () Bool)

(assert (=> b!569240 (=> (not res!359406) (not e!327468))))

(declare-fun arrayContainsKey!0 (array!35663 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569240 (= res!359406 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!359404 () Bool)

(assert (=> start!52186 (=> (not res!359404) (not e!327468))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52186 (= res!359404 (validMask!0 mask!3119))))

(assert (=> start!52186 e!327468))

(assert (=> start!52186 true))

(declare-fun array_inv!12893 (array!35663) Bool)

(assert (=> start!52186 (array_inv!12893 a!3118)))

(assert (= (and start!52186 res!359404) b!569234))

(assert (= (and b!569234 res!359405) b!569232))

(assert (= (and b!569232 res!359402) b!569235))

(assert (= (and b!569235 res!359401) b!569240))

(assert (= (and b!569240 res!359406) b!569237))

(assert (= (and b!569237 res!359408) b!569233))

(assert (= (and b!569233 res!359407) b!569239))

(assert (= (and b!569239 res!359400) b!569238))

(assert (= (and b!569238 res!359403) b!569236))

(declare-fun m!547995 () Bool)

(assert (=> b!569240 m!547995))

(declare-fun m!547997 () Bool)

(assert (=> b!569232 m!547997))

(assert (=> b!569232 m!547997))

(declare-fun m!547999 () Bool)

(assert (=> b!569232 m!547999))

(assert (=> b!569238 m!547997))

(declare-fun m!548001 () Bool)

(assert (=> b!569238 m!548001))

(assert (=> b!569238 m!547997))

(declare-fun m!548003 () Bool)

(assert (=> b!569238 m!548003))

(assert (=> b!569238 m!547997))

(declare-fun m!548005 () Bool)

(assert (=> b!569238 m!548005))

(assert (=> b!569238 m!548005))

(declare-fun m!548007 () Bool)

(assert (=> b!569238 m!548007))

(declare-fun m!548009 () Bool)

(assert (=> b!569238 m!548009))

(assert (=> b!569238 m!548005))

(declare-fun m!548011 () Bool)

(assert (=> b!569238 m!548011))

(declare-fun m!548013 () Bool)

(assert (=> b!569233 m!548013))

(declare-fun m!548015 () Bool)

(assert (=> b!569235 m!548015))

(assert (=> b!569236 m!547997))

(declare-fun m!548017 () Bool)

(assert (=> b!569236 m!548017))

(declare-fun m!548019 () Bool)

(assert (=> b!569236 m!548019))

(declare-fun m!548021 () Bool)

(assert (=> b!569236 m!548021))

(assert (=> b!569236 m!547997))

(declare-fun m!548023 () Bool)

(assert (=> b!569236 m!548023))

(declare-fun m!548025 () Bool)

(assert (=> b!569237 m!548025))

(declare-fun m!548027 () Bool)

(assert (=> start!52186 m!548027))

(declare-fun m!548029 () Bool)

(assert (=> start!52186 m!548029))

(declare-fun m!548031 () Bool)

(assert (=> b!569239 m!548031))

(check-sat (not b!569238) (not b!569233) (not b!569232) (not b!569235) (not start!52186) (not b!569237) (not b!569239) (not b!569236) (not b!569240))
(check-sat)
