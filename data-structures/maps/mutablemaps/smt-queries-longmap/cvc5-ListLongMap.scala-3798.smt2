; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52160 () Bool)

(assert start!52160)

(declare-fun b!568881 () Bool)

(declare-fun res!359057 () Bool)

(declare-fun e!327311 () Bool)

(assert (=> b!568881 (=> (not res!359057) (not e!327311))))

(declare-datatypes ((array!35637 0))(
  ( (array!35638 (arr!17106 (Array (_ BitVec 32) (_ BitVec 64))) (size!17470 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35637)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35637 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568881 (= res!359057 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!568882 () Bool)

(declare-fun res!359053 () Bool)

(declare-fun e!327312 () Bool)

(assert (=> b!568882 (=> (not res!359053) (not e!327312))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35637 (_ BitVec 32)) Bool)

(assert (=> b!568882 (= res!359053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!568883 () Bool)

(assert (=> b!568883 (= e!327311 e!327312)))

(declare-fun res!359050 () Bool)

(assert (=> b!568883 (=> (not res!359050) (not e!327312))))

(declare-datatypes ((SeekEntryResult!5562 0))(
  ( (MissingZero!5562 (index!24475 (_ BitVec 32))) (Found!5562 (index!24476 (_ BitVec 32))) (Intermediate!5562 (undefined!6374 Bool) (index!24477 (_ BitVec 32)) (x!53384 (_ BitVec 32))) (Undefined!5562) (MissingVacant!5562 (index!24478 (_ BitVec 32))) )
))
(declare-fun lt!259264 () SeekEntryResult!5562)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!568883 (= res!359050 (or (= lt!259264 (MissingZero!5562 i!1132)) (= lt!259264 (MissingVacant!5562 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35637 (_ BitVec 32)) SeekEntryResult!5562)

(assert (=> b!568883 (= lt!259264 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!359055 () Bool)

(assert (=> start!52160 (=> (not res!359055) (not e!327311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52160 (= res!359055 (validMask!0 mask!3119))))

(assert (=> start!52160 e!327311))

(assert (=> start!52160 true))

(declare-fun array_inv!12880 (array!35637) Bool)

(assert (=> start!52160 (array_inv!12880 a!3118)))

(declare-fun b!568884 () Bool)

(declare-fun res!359056 () Bool)

(assert (=> b!568884 (=> (not res!359056) (not e!327312))))

(declare-datatypes ((List!11239 0))(
  ( (Nil!11236) (Cons!11235 (h!12256 (_ BitVec 64)) (t!17475 List!11239)) )
))
(declare-fun arrayNoDuplicates!0 (array!35637 (_ BitVec 32) List!11239) Bool)

(assert (=> b!568884 (= res!359056 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11236))))

(declare-fun b!568885 () Bool)

(declare-fun e!327313 () Bool)

(assert (=> b!568885 (= e!327312 e!327313)))

(declare-fun res!359049 () Bool)

(assert (=> b!568885 (=> (not res!359049) (not e!327313))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!259265 () (_ BitVec 32))

(declare-fun lt!259267 () SeekEntryResult!5562)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35637 (_ BitVec 32)) SeekEntryResult!5562)

(assert (=> b!568885 (= res!359049 (= lt!259267 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259265 (select (store (arr!17106 a!3118) i!1132 k!1914) j!142) (array!35638 (store (arr!17106 a!3118) i!1132 k!1914) (size!17470 a!3118)) mask!3119)))))

(declare-fun lt!259268 () (_ BitVec 32))

(assert (=> b!568885 (= lt!259267 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259268 (select (arr!17106 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568885 (= lt!259265 (toIndex!0 (select (store (arr!17106 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!568885 (= lt!259268 (toIndex!0 (select (arr!17106 a!3118) j!142) mask!3119))))

(declare-fun b!568886 () Bool)

(declare-fun res!359051 () Bool)

(assert (=> b!568886 (=> (not res!359051) (not e!327311))))

(assert (=> b!568886 (= res!359051 (and (= (size!17470 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17470 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17470 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!568887 () Bool)

(declare-fun res!359052 () Bool)

(assert (=> b!568887 (=> (not res!359052) (not e!327311))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568887 (= res!359052 (validKeyInArray!0 (select (arr!17106 a!3118) j!142)))))

(declare-fun b!568888 () Bool)

(assert (=> b!568888 (= e!327313 (not (or (undefined!6374 lt!259267) (not (is-Intermediate!5562 lt!259267)) (= (select (arr!17106 a!3118) (index!24477 lt!259267)) (select (arr!17106 a!3118) j!142)) (not (= (select (arr!17106 a!3118) (index!24477 lt!259267)) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!17470 a!3118)))))))

(declare-fun lt!259266 () SeekEntryResult!5562)

(assert (=> b!568888 (and (= lt!259266 (Found!5562 j!142)) (or (undefined!6374 lt!259267) (not (is-Intermediate!5562 lt!259267)) (= (select (arr!17106 a!3118) (index!24477 lt!259267)) (select (arr!17106 a!3118) j!142)) (not (= (select (arr!17106 a!3118) (index!24477 lt!259267)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259266 (MissingZero!5562 (index!24477 lt!259267)))))))

(assert (=> b!568888 (= lt!259266 (seekEntryOrOpen!0 (select (arr!17106 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!568888 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17826 0))(
  ( (Unit!17827) )
))
(declare-fun lt!259263 () Unit!17826)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35637 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17826)

(assert (=> b!568888 (= lt!259263 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!568889 () Bool)

(declare-fun res!359054 () Bool)

(assert (=> b!568889 (=> (not res!359054) (not e!327311))))

(assert (=> b!568889 (= res!359054 (validKeyInArray!0 k!1914))))

(assert (= (and start!52160 res!359055) b!568886))

(assert (= (and b!568886 res!359051) b!568887))

(assert (= (and b!568887 res!359052) b!568889))

(assert (= (and b!568889 res!359054) b!568881))

(assert (= (and b!568881 res!359057) b!568883))

(assert (= (and b!568883 res!359050) b!568882))

(assert (= (and b!568882 res!359053) b!568884))

(assert (= (and b!568884 res!359056) b!568885))

(assert (= (and b!568885 res!359049) b!568888))

(declare-fun m!547501 () Bool)

(assert (=> b!568884 m!547501))

(declare-fun m!547503 () Bool)

(assert (=> b!568882 m!547503))

(declare-fun m!547505 () Bool)

(assert (=> b!568881 m!547505))

(declare-fun m!547507 () Bool)

(assert (=> start!52160 m!547507))

(declare-fun m!547509 () Bool)

(assert (=> start!52160 m!547509))

(declare-fun m!547511 () Bool)

(assert (=> b!568888 m!547511))

(declare-fun m!547513 () Bool)

(assert (=> b!568888 m!547513))

(declare-fun m!547515 () Bool)

(assert (=> b!568888 m!547515))

(assert (=> b!568888 m!547511))

(declare-fun m!547517 () Bool)

(assert (=> b!568888 m!547517))

(declare-fun m!547519 () Bool)

(assert (=> b!568888 m!547519))

(declare-fun m!547521 () Bool)

(assert (=> b!568883 m!547521))

(declare-fun m!547523 () Bool)

(assert (=> b!568889 m!547523))

(assert (=> b!568887 m!547511))

(assert (=> b!568887 m!547511))

(declare-fun m!547525 () Bool)

(assert (=> b!568887 m!547525))

(assert (=> b!568885 m!547511))

(declare-fun m!547527 () Bool)

(assert (=> b!568885 m!547527))

(assert (=> b!568885 m!547511))

(assert (=> b!568885 m!547511))

(declare-fun m!547529 () Bool)

(assert (=> b!568885 m!547529))

(declare-fun m!547531 () Bool)

(assert (=> b!568885 m!547531))

(declare-fun m!547533 () Bool)

(assert (=> b!568885 m!547533))

(declare-fun m!547535 () Bool)

(assert (=> b!568885 m!547535))

(assert (=> b!568885 m!547533))

(declare-fun m!547537 () Bool)

(assert (=> b!568885 m!547537))

(assert (=> b!568885 m!547533))

(push 1)

