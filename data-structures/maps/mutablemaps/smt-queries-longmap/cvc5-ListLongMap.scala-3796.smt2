; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52148 () Bool)

(assert start!52148)

(declare-fun b!568719 () Bool)

(declare-fun res!358887 () Bool)

(declare-fun e!327238 () Bool)

(assert (=> b!568719 (=> (not res!358887) (not e!327238))))

(declare-datatypes ((array!35625 0))(
  ( (array!35626 (arr!17100 (Array (_ BitVec 32) (_ BitVec 64))) (size!17464 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35625)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568719 (= res!358887 (validKeyInArray!0 (select (arr!17100 a!3118) j!142)))))

(declare-fun b!568720 () Bool)

(declare-fun res!358892 () Bool)

(assert (=> b!568720 (=> (not res!358892) (not e!327238))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!568720 (= res!358892 (and (= (size!17464 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17464 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17464 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!358894 () Bool)

(assert (=> start!52148 (=> (not res!358894) (not e!327238))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52148 (= res!358894 (validMask!0 mask!3119))))

(assert (=> start!52148 e!327238))

(assert (=> start!52148 true))

(declare-fun array_inv!12874 (array!35625) Bool)

(assert (=> start!52148 (array_inv!12874 a!3118)))

(declare-fun b!568721 () Bool)

(declare-fun e!327239 () Bool)

(assert (=> b!568721 (= e!327238 e!327239)))

(declare-fun res!358890 () Bool)

(assert (=> b!568721 (=> (not res!358890) (not e!327239))))

(declare-datatypes ((SeekEntryResult!5556 0))(
  ( (MissingZero!5556 (index!24451 (_ BitVec 32))) (Found!5556 (index!24452 (_ BitVec 32))) (Intermediate!5556 (undefined!6368 Bool) (index!24453 (_ BitVec 32)) (x!53362 (_ BitVec 32))) (Undefined!5556) (MissingVacant!5556 (index!24454 (_ BitVec 32))) )
))
(declare-fun lt!259157 () SeekEntryResult!5556)

(assert (=> b!568721 (= res!358890 (or (= lt!259157 (MissingZero!5556 i!1132)) (= lt!259157 (MissingVacant!5556 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35625 (_ BitVec 32)) SeekEntryResult!5556)

(assert (=> b!568721 (= lt!259157 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!568722 () Bool)

(declare-fun res!358891 () Bool)

(assert (=> b!568722 (=> (not res!358891) (not e!327238))))

(declare-fun arrayContainsKey!0 (array!35625 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568722 (= res!358891 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!568723 () Bool)

(declare-fun e!327241 () Bool)

(assert (=> b!568723 (= e!327239 e!327241)))

(declare-fun res!358893 () Bool)

(assert (=> b!568723 (=> (not res!358893) (not e!327241))))

(declare-fun lt!259159 () SeekEntryResult!5556)

(declare-fun lt!259156 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35625 (_ BitVec 32)) SeekEntryResult!5556)

(assert (=> b!568723 (= res!358893 (= lt!259159 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259156 (select (store (arr!17100 a!3118) i!1132 k!1914) j!142) (array!35626 (store (arr!17100 a!3118) i!1132 k!1914) (size!17464 a!3118)) mask!3119)))))

(declare-fun lt!259160 () (_ BitVec 32))

(assert (=> b!568723 (= lt!259159 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259160 (select (arr!17100 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568723 (= lt!259156 (toIndex!0 (select (store (arr!17100 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!568723 (= lt!259160 (toIndex!0 (select (arr!17100 a!3118) j!142) mask!3119))))

(declare-fun b!568724 () Bool)

(declare-fun res!358888 () Bool)

(assert (=> b!568724 (=> (not res!358888) (not e!327239))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35625 (_ BitVec 32)) Bool)

(assert (=> b!568724 (= res!358888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!568725 () Bool)

(declare-fun res!358895 () Bool)

(assert (=> b!568725 (=> (not res!358895) (not e!327239))))

(declare-datatypes ((List!11233 0))(
  ( (Nil!11230) (Cons!11229 (h!12250 (_ BitVec 64)) (t!17469 List!11233)) )
))
(declare-fun arrayNoDuplicates!0 (array!35625 (_ BitVec 32) List!11233) Bool)

(assert (=> b!568725 (= res!358895 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11230))))

(declare-fun b!568726 () Bool)

(declare-fun res!358889 () Bool)

(assert (=> b!568726 (=> (not res!358889) (not e!327238))))

(assert (=> b!568726 (= res!358889 (validKeyInArray!0 k!1914))))

(declare-fun b!568727 () Bool)

(assert (=> b!568727 (= e!327241 (not true))))

(declare-fun lt!259158 () SeekEntryResult!5556)

(assert (=> b!568727 (and (= lt!259158 (Found!5556 j!142)) (or (undefined!6368 lt!259159) (not (is-Intermediate!5556 lt!259159)) (= (select (arr!17100 a!3118) (index!24453 lt!259159)) (select (arr!17100 a!3118) j!142)) (not (= (select (arr!17100 a!3118) (index!24453 lt!259159)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259158 (MissingZero!5556 (index!24453 lt!259159)))))))

(assert (=> b!568727 (= lt!259158 (seekEntryOrOpen!0 (select (arr!17100 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!568727 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17814 0))(
  ( (Unit!17815) )
))
(declare-fun lt!259155 () Unit!17814)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35625 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17814)

(assert (=> b!568727 (= lt!259155 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!52148 res!358894) b!568720))

(assert (= (and b!568720 res!358892) b!568719))

(assert (= (and b!568719 res!358887) b!568726))

(assert (= (and b!568726 res!358889) b!568722))

(assert (= (and b!568722 res!358891) b!568721))

(assert (= (and b!568721 res!358890) b!568724))

(assert (= (and b!568724 res!358888) b!568725))

(assert (= (and b!568725 res!358895) b!568723))

(assert (= (and b!568723 res!358893) b!568727))

(declare-fun m!547273 () Bool)

(assert (=> b!568724 m!547273))

(declare-fun m!547275 () Bool)

(assert (=> b!568725 m!547275))

(declare-fun m!547277 () Bool)

(assert (=> b!568727 m!547277))

(declare-fun m!547279 () Bool)

(assert (=> b!568727 m!547279))

(declare-fun m!547281 () Bool)

(assert (=> b!568727 m!547281))

(declare-fun m!547283 () Bool)

(assert (=> b!568727 m!547283))

(assert (=> b!568727 m!547277))

(declare-fun m!547285 () Bool)

(assert (=> b!568727 m!547285))

(declare-fun m!547287 () Bool)

(assert (=> b!568722 m!547287))

(assert (=> b!568719 m!547277))

(assert (=> b!568719 m!547277))

(declare-fun m!547289 () Bool)

(assert (=> b!568719 m!547289))

(declare-fun m!547291 () Bool)

(assert (=> b!568726 m!547291))

(declare-fun m!547293 () Bool)

(assert (=> start!52148 m!547293))

(declare-fun m!547295 () Bool)

(assert (=> start!52148 m!547295))

(assert (=> b!568723 m!547277))

(declare-fun m!547297 () Bool)

(assert (=> b!568723 m!547297))

(assert (=> b!568723 m!547277))

(declare-fun m!547299 () Bool)

(assert (=> b!568723 m!547299))

(assert (=> b!568723 m!547277))

(declare-fun m!547301 () Bool)

(assert (=> b!568723 m!547301))

(assert (=> b!568723 m!547299))

(declare-fun m!547303 () Bool)

(assert (=> b!568723 m!547303))

(declare-fun m!547305 () Bool)

(assert (=> b!568723 m!547305))

(assert (=> b!568723 m!547299))

(declare-fun m!547307 () Bool)

(assert (=> b!568723 m!547307))

(declare-fun m!547309 () Bool)

(assert (=> b!568721 m!547309))

(push 1)

