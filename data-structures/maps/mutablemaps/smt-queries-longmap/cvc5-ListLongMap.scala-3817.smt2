; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52406 () Bool)

(assert start!52406)

(declare-fun b!571334 () Bool)

(declare-fun e!328608 () Bool)

(declare-fun e!328609 () Bool)

(assert (=> b!571334 (= e!328608 e!328609)))

(declare-fun res!360993 () Bool)

(assert (=> b!571334 (=> res!360993 e!328609)))

(declare-fun lt!260572 () (_ BitVec 64))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((array!35757 0))(
  ( (array!35758 (arr!17163 (Array (_ BitVec 32) (_ BitVec 64))) (size!17527 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35757)

(assert (=> b!571334 (= res!360993 (or (= lt!260572 (select (arr!17163 a!3118) j!142)) (= lt!260572 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5619 0))(
  ( (MissingZero!5619 (index!24703 (_ BitVec 32))) (Found!5619 (index!24704 (_ BitVec 32))) (Intermediate!5619 (undefined!6431 Bool) (index!24705 (_ BitVec 32)) (x!53611 (_ BitVec 32))) (Undefined!5619) (MissingVacant!5619 (index!24706 (_ BitVec 32))) )
))
(declare-fun lt!260576 () SeekEntryResult!5619)

(assert (=> b!571334 (= lt!260572 (select (arr!17163 a!3118) (index!24705 lt!260576)))))

(declare-fun b!571335 () Bool)

(declare-fun res!360999 () Bool)

(declare-fun e!328611 () Bool)

(assert (=> b!571335 (=> (not res!360999) (not e!328611))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!571335 (= res!360999 (and (= (size!17527 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17527 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17527 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!571336 () Bool)

(declare-fun res!360997 () Bool)

(assert (=> b!571336 (=> (not res!360997) (not e!328611))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!571336 (= res!360997 (validKeyInArray!0 k!1914))))

(declare-fun b!571338 () Bool)

(declare-fun e!328613 () Bool)

(assert (=> b!571338 (= e!328609 e!328613)))

(declare-fun res!360996 () Bool)

(assert (=> b!571338 (=> (not res!360996) (not e!328613))))

(declare-fun lt!260575 () SeekEntryResult!5619)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35757 (_ BitVec 32)) SeekEntryResult!5619)

(assert (=> b!571338 (= res!360996 (= lt!260575 (seekKeyOrZeroReturnVacant!0 (x!53611 lt!260576) (index!24705 lt!260576) (index!24705 lt!260576) (select (arr!17163 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!571339 () Bool)

(declare-fun e!328615 () Bool)

(assert (=> b!571339 (= e!328611 e!328615)))

(declare-fun res!361003 () Bool)

(assert (=> b!571339 (=> (not res!361003) (not e!328615))))

(declare-fun lt!260573 () SeekEntryResult!5619)

(assert (=> b!571339 (= res!361003 (or (= lt!260573 (MissingZero!5619 i!1132)) (= lt!260573 (MissingVacant!5619 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35757 (_ BitVec 32)) SeekEntryResult!5619)

(assert (=> b!571339 (= lt!260573 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!571340 () Bool)

(declare-fun e!328614 () Bool)

(assert (=> b!571340 (= e!328614 (not true))))

(declare-fun e!328610 () Bool)

(assert (=> b!571340 e!328610))

(declare-fun res!361000 () Bool)

(assert (=> b!571340 (=> (not res!361000) (not e!328610))))

(assert (=> b!571340 (= res!361000 (= lt!260575 (Found!5619 j!142)))))

(assert (=> b!571340 (= lt!260575 (seekEntryOrOpen!0 (select (arr!17163 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35757 (_ BitVec 32)) Bool)

(assert (=> b!571340 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17940 0))(
  ( (Unit!17941) )
))
(declare-fun lt!260574 () Unit!17940)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35757 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17940)

(assert (=> b!571340 (= lt!260574 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!571341 () Bool)

(declare-fun res!360995 () Bool)

(assert (=> b!571341 (=> (not res!360995) (not e!328611))))

(assert (=> b!571341 (= res!360995 (validKeyInArray!0 (select (arr!17163 a!3118) j!142)))))

(declare-fun lt!260569 () array!35757)

(declare-fun lt!260568 () (_ BitVec 64))

(declare-fun b!571342 () Bool)

(assert (=> b!571342 (= e!328613 (= (seekEntryOrOpen!0 lt!260568 lt!260569 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53611 lt!260576) (index!24705 lt!260576) (index!24705 lt!260576) lt!260568 lt!260569 mask!3119)))))

(declare-fun b!571343 () Bool)

(declare-fun res!360998 () Bool)

(assert (=> b!571343 (=> (not res!360998) (not e!328615))))

(assert (=> b!571343 (= res!360998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!571344 () Bool)

(declare-fun res!361002 () Bool)

(assert (=> b!571344 (=> (not res!361002) (not e!328615))))

(declare-datatypes ((List!11296 0))(
  ( (Nil!11293) (Cons!11292 (h!12319 (_ BitVec 64)) (t!17532 List!11296)) )
))
(declare-fun arrayNoDuplicates!0 (array!35757 (_ BitVec 32) List!11296) Bool)

(assert (=> b!571344 (= res!361002 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11293))))

(declare-fun b!571337 () Bool)

(assert (=> b!571337 (= e!328610 e!328608)))

(declare-fun res!361004 () Bool)

(assert (=> b!571337 (=> res!361004 e!328608)))

(assert (=> b!571337 (= res!361004 (or (undefined!6431 lt!260576) (not (is-Intermediate!5619 lt!260576))))))

(declare-fun res!360992 () Bool)

(assert (=> start!52406 (=> (not res!360992) (not e!328611))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52406 (= res!360992 (validMask!0 mask!3119))))

(assert (=> start!52406 e!328611))

(assert (=> start!52406 true))

(declare-fun array_inv!12937 (array!35757) Bool)

(assert (=> start!52406 (array_inv!12937 a!3118)))

(declare-fun b!571345 () Bool)

(assert (=> b!571345 (= e!328615 e!328614)))

(declare-fun res!361001 () Bool)

(assert (=> b!571345 (=> (not res!361001) (not e!328614))))

(declare-fun lt!260570 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35757 (_ BitVec 32)) SeekEntryResult!5619)

(assert (=> b!571345 (= res!361001 (= lt!260576 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260570 lt!260568 lt!260569 mask!3119)))))

(declare-fun lt!260571 () (_ BitVec 32))

(assert (=> b!571345 (= lt!260576 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260571 (select (arr!17163 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571345 (= lt!260570 (toIndex!0 lt!260568 mask!3119))))

(assert (=> b!571345 (= lt!260568 (select (store (arr!17163 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!571345 (= lt!260571 (toIndex!0 (select (arr!17163 a!3118) j!142) mask!3119))))

(assert (=> b!571345 (= lt!260569 (array!35758 (store (arr!17163 a!3118) i!1132 k!1914) (size!17527 a!3118)))))

(declare-fun b!571346 () Bool)

(declare-fun res!360994 () Bool)

(assert (=> b!571346 (=> (not res!360994) (not e!328611))))

(declare-fun arrayContainsKey!0 (array!35757 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!571346 (= res!360994 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52406 res!360992) b!571335))

(assert (= (and b!571335 res!360999) b!571341))

(assert (= (and b!571341 res!360995) b!571336))

(assert (= (and b!571336 res!360997) b!571346))

(assert (= (and b!571346 res!360994) b!571339))

(assert (= (and b!571339 res!361003) b!571343))

(assert (= (and b!571343 res!360998) b!571344))

(assert (= (and b!571344 res!361002) b!571345))

(assert (= (and b!571345 res!361001) b!571340))

(assert (= (and b!571340 res!361000) b!571337))

(assert (= (and b!571337 (not res!361004)) b!571334))

(assert (= (and b!571334 (not res!360993)) b!571338))

(assert (= (and b!571338 res!360996) b!571342))

(declare-fun m!550231 () Bool)

(assert (=> b!571341 m!550231))

(assert (=> b!571341 m!550231))

(declare-fun m!550233 () Bool)

(assert (=> b!571341 m!550233))

(assert (=> b!571340 m!550231))

(assert (=> b!571340 m!550231))

(declare-fun m!550235 () Bool)

(assert (=> b!571340 m!550235))

(declare-fun m!550237 () Bool)

(assert (=> b!571340 m!550237))

(declare-fun m!550239 () Bool)

(assert (=> b!571340 m!550239))

(declare-fun m!550241 () Bool)

(assert (=> b!571342 m!550241))

(declare-fun m!550243 () Bool)

(assert (=> b!571342 m!550243))

(declare-fun m!550245 () Bool)

(assert (=> start!52406 m!550245))

(declare-fun m!550247 () Bool)

(assert (=> start!52406 m!550247))

(declare-fun m!550249 () Bool)

(assert (=> b!571344 m!550249))

(assert (=> b!571334 m!550231))

(declare-fun m!550251 () Bool)

(assert (=> b!571334 m!550251))

(declare-fun m!550253 () Bool)

(assert (=> b!571343 m!550253))

(assert (=> b!571338 m!550231))

(assert (=> b!571338 m!550231))

(declare-fun m!550255 () Bool)

(assert (=> b!571338 m!550255))

(declare-fun m!550257 () Bool)

(assert (=> b!571339 m!550257))

(assert (=> b!571345 m!550231))

(declare-fun m!550259 () Bool)

(assert (=> b!571345 m!550259))

(assert (=> b!571345 m!550231))

(declare-fun m!550261 () Bool)

(assert (=> b!571345 m!550261))

(declare-fun m!550263 () Bool)

(assert (=> b!571345 m!550263))

(assert (=> b!571345 m!550231))

(declare-fun m!550265 () Bool)

(assert (=> b!571345 m!550265))

(declare-fun m!550267 () Bool)

(assert (=> b!571345 m!550267))

(declare-fun m!550269 () Bool)

(assert (=> b!571345 m!550269))

(declare-fun m!550271 () Bool)

(assert (=> b!571346 m!550271))

(declare-fun m!550273 () Bool)

(assert (=> b!571336 m!550273))

(push 1)

