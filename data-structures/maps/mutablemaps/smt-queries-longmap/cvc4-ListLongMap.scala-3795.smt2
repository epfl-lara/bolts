; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52146 () Bool)

(assert start!52146)

(declare-fun b!568692 () Bool)

(declare-fun res!358863 () Bool)

(declare-fun e!327228 () Bool)

(assert (=> b!568692 (=> (not res!358863) (not e!327228))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35623 0))(
  ( (array!35624 (arr!17099 (Array (_ BitVec 32) (_ BitVec 64))) (size!17463 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35623)

(assert (=> b!568692 (= res!358863 (and (= (size!17463 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17463 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17463 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!568693 () Bool)

(declare-fun e!327226 () Bool)

(declare-fun e!327227 () Bool)

(assert (=> b!568693 (= e!327226 e!327227)))

(declare-fun res!358864 () Bool)

(assert (=> b!568693 (=> (not res!358864) (not e!327227))))

(declare-fun lt!259139 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5555 0))(
  ( (MissingZero!5555 (index!24447 (_ BitVec 32))) (Found!5555 (index!24448 (_ BitVec 32))) (Intermediate!5555 (undefined!6367 Bool) (index!24449 (_ BitVec 32)) (x!53353 (_ BitVec 32))) (Undefined!5555) (MissingVacant!5555 (index!24450 (_ BitVec 32))) )
))
(declare-fun lt!259140 () SeekEntryResult!5555)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35623 (_ BitVec 32)) SeekEntryResult!5555)

(assert (=> b!568693 (= res!358864 (= lt!259140 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259139 (select (store (arr!17099 a!3118) i!1132 k!1914) j!142) (array!35624 (store (arr!17099 a!3118) i!1132 k!1914) (size!17463 a!3118)) mask!3119)))))

(declare-fun lt!259141 () (_ BitVec 32))

(assert (=> b!568693 (= lt!259140 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259141 (select (arr!17099 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568693 (= lt!259139 (toIndex!0 (select (store (arr!17099 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!568693 (= lt!259141 (toIndex!0 (select (arr!17099 a!3118) j!142) mask!3119))))

(declare-fun b!568694 () Bool)

(declare-fun res!358866 () Bool)

(assert (=> b!568694 (=> (not res!358866) (not e!327228))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568694 (= res!358866 (validKeyInArray!0 (select (arr!17099 a!3118) j!142)))))

(declare-fun b!568695 () Bool)

(declare-fun res!358862 () Bool)

(assert (=> b!568695 (=> (not res!358862) (not e!327228))))

(assert (=> b!568695 (= res!358862 (validKeyInArray!0 k!1914))))

(declare-fun b!568696 () Bool)

(assert (=> b!568696 (= e!327228 e!327226)))

(declare-fun res!358860 () Bool)

(assert (=> b!568696 (=> (not res!358860) (not e!327226))))

(declare-fun lt!259138 () SeekEntryResult!5555)

(assert (=> b!568696 (= res!358860 (or (= lt!259138 (MissingZero!5555 i!1132)) (= lt!259138 (MissingVacant!5555 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35623 (_ BitVec 32)) SeekEntryResult!5555)

(assert (=> b!568696 (= lt!259138 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!568697 () Bool)

(assert (=> b!568697 (= e!327227 (not true))))

(declare-fun lt!259137 () SeekEntryResult!5555)

(assert (=> b!568697 (and (= lt!259137 (Found!5555 j!142)) (or (undefined!6367 lt!259140) (not (is-Intermediate!5555 lt!259140)) (= (select (arr!17099 a!3118) (index!24449 lt!259140)) (select (arr!17099 a!3118) j!142)) (not (= (select (arr!17099 a!3118) (index!24449 lt!259140)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259137 (MissingZero!5555 (index!24449 lt!259140)))))))

(assert (=> b!568697 (= lt!259137 (seekEntryOrOpen!0 (select (arr!17099 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35623 (_ BitVec 32)) Bool)

(assert (=> b!568697 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17812 0))(
  ( (Unit!17813) )
))
(declare-fun lt!259142 () Unit!17812)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35623 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17812)

(assert (=> b!568697 (= lt!259142 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!568699 () Bool)

(declare-fun res!358865 () Bool)

(assert (=> b!568699 (=> (not res!358865) (not e!327226))))

(assert (=> b!568699 (= res!358865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!568700 () Bool)

(declare-fun res!358868 () Bool)

(assert (=> b!568700 (=> (not res!358868) (not e!327228))))

(declare-fun arrayContainsKey!0 (array!35623 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568700 (= res!358868 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!358867 () Bool)

(assert (=> start!52146 (=> (not res!358867) (not e!327228))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52146 (= res!358867 (validMask!0 mask!3119))))

(assert (=> start!52146 e!327228))

(assert (=> start!52146 true))

(declare-fun array_inv!12873 (array!35623) Bool)

(assert (=> start!52146 (array_inv!12873 a!3118)))

(declare-fun b!568698 () Bool)

(declare-fun res!358861 () Bool)

(assert (=> b!568698 (=> (not res!358861) (not e!327226))))

(declare-datatypes ((List!11232 0))(
  ( (Nil!11229) (Cons!11228 (h!12249 (_ BitVec 64)) (t!17468 List!11232)) )
))
(declare-fun arrayNoDuplicates!0 (array!35623 (_ BitVec 32) List!11232) Bool)

(assert (=> b!568698 (= res!358861 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11229))))

(assert (= (and start!52146 res!358867) b!568692))

(assert (= (and b!568692 res!358863) b!568694))

(assert (= (and b!568694 res!358866) b!568695))

(assert (= (and b!568695 res!358862) b!568700))

(assert (= (and b!568700 res!358868) b!568696))

(assert (= (and b!568696 res!358860) b!568699))

(assert (= (and b!568699 res!358865) b!568698))

(assert (= (and b!568698 res!358861) b!568693))

(assert (= (and b!568693 res!358864) b!568697))

(declare-fun m!547235 () Bool)

(assert (=> b!568700 m!547235))

(declare-fun m!547237 () Bool)

(assert (=> b!568693 m!547237))

(declare-fun m!547239 () Bool)

(assert (=> b!568693 m!547239))

(assert (=> b!568693 m!547237))

(declare-fun m!547241 () Bool)

(assert (=> b!568693 m!547241))

(assert (=> b!568693 m!547237))

(declare-fun m!547243 () Bool)

(assert (=> b!568693 m!547243))

(declare-fun m!547245 () Bool)

(assert (=> b!568693 m!547245))

(assert (=> b!568693 m!547243))

(declare-fun m!547247 () Bool)

(assert (=> b!568693 m!547247))

(assert (=> b!568693 m!547243))

(declare-fun m!547249 () Bool)

(assert (=> b!568693 m!547249))

(declare-fun m!547251 () Bool)

(assert (=> b!568698 m!547251))

(declare-fun m!547253 () Bool)

(assert (=> b!568696 m!547253))

(assert (=> b!568694 m!547237))

(assert (=> b!568694 m!547237))

(declare-fun m!547255 () Bool)

(assert (=> b!568694 m!547255))

(declare-fun m!547257 () Bool)

(assert (=> b!568699 m!547257))

(assert (=> b!568697 m!547237))

(declare-fun m!547259 () Bool)

(assert (=> b!568697 m!547259))

(declare-fun m!547261 () Bool)

(assert (=> b!568697 m!547261))

(declare-fun m!547263 () Bool)

(assert (=> b!568697 m!547263))

(assert (=> b!568697 m!547237))

(declare-fun m!547265 () Bool)

(assert (=> b!568697 m!547265))

(declare-fun m!547267 () Bool)

(assert (=> start!52146 m!547267))

(declare-fun m!547269 () Bool)

(assert (=> start!52146 m!547269))

(declare-fun m!547271 () Bool)

(assert (=> b!568695 m!547271))

(push 1)

