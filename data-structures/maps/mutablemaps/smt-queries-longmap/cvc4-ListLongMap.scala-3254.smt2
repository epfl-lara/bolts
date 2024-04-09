; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45410 () Bool)

(assert start!45410)

(declare-fun res!300946 () Bool)

(declare-fun e!292311 () Bool)

(assert (=> start!45410 (=> (not res!300946) (not e!292311))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45410 (= res!300946 (validMask!0 mask!3524))))

(assert (=> start!45410 e!292311))

(assert (=> start!45410 true))

(declare-datatypes ((array!32195 0))(
  ( (array!32196 (arr!15476 (Array (_ BitVec 32) (_ BitVec 64))) (size!15840 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32195)

(declare-fun array_inv!11250 (array!32195) Bool)

(assert (=> start!45410 (array_inv!11250 a!3235)))

(declare-fun b!498768 () Bool)

(declare-fun res!300956 () Bool)

(declare-fun e!292315 () Bool)

(assert (=> b!498768 (=> res!300956 e!292315)))

(declare-datatypes ((SeekEntryResult!3950 0))(
  ( (MissingZero!3950 (index!17982 (_ BitVec 32))) (Found!3950 (index!17983 (_ BitVec 32))) (Intermediate!3950 (undefined!4762 Bool) (index!17984 (_ BitVec 32)) (x!47054 (_ BitVec 32))) (Undefined!3950) (MissingVacant!3950 (index!17985 (_ BitVec 32))) )
))
(declare-fun lt!226095 () SeekEntryResult!3950)

(assert (=> b!498768 (= res!300956 (or (undefined!4762 lt!226095) (not (is-Intermediate!3950 lt!226095))))))

(declare-fun b!498769 () Bool)

(declare-fun res!300951 () Bool)

(declare-fun e!292312 () Bool)

(assert (=> b!498769 (=> (not res!300951) (not e!292312))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32195 (_ BitVec 32)) Bool)

(assert (=> b!498769 (= res!300951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498770 () Bool)

(declare-fun res!300954 () Bool)

(assert (=> b!498770 (=> (not res!300954) (not e!292311))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!498770 (= res!300954 (and (= (size!15840 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15840 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15840 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!498771 () Bool)

(declare-fun res!300949 () Bool)

(assert (=> b!498771 (=> (not res!300949) (not e!292311))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498771 (= res!300949 (validKeyInArray!0 k!2280))))

(declare-fun b!498772 () Bool)

(declare-fun e!292309 () Bool)

(assert (=> b!498772 (= e!292309 false)))

(declare-fun b!498773 () Bool)

(assert (=> b!498773 (= e!292312 (not e!292315))))

(declare-fun res!300950 () Bool)

(assert (=> b!498773 (=> res!300950 e!292315)))

(declare-fun lt!226091 () (_ BitVec 32))

(declare-fun lt!226100 () array!32195)

(declare-fun lt!226098 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32195 (_ BitVec 32)) SeekEntryResult!3950)

(assert (=> b!498773 (= res!300950 (= lt!226095 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226091 lt!226098 lt!226100 mask!3524)))))

(declare-fun lt!226099 () (_ BitVec 32))

(assert (=> b!498773 (= lt!226095 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226099 (select (arr!15476 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498773 (= lt!226091 (toIndex!0 lt!226098 mask!3524))))

(assert (=> b!498773 (= lt!226098 (select (store (arr!15476 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!498773 (= lt!226099 (toIndex!0 (select (arr!15476 a!3235) j!176) mask!3524))))

(assert (=> b!498773 (= lt!226100 (array!32196 (store (arr!15476 a!3235) i!1204 k!2280) (size!15840 a!3235)))))

(declare-fun e!292314 () Bool)

(assert (=> b!498773 e!292314))

(declare-fun res!300945 () Bool)

(assert (=> b!498773 (=> (not res!300945) (not e!292314))))

(assert (=> b!498773 (= res!300945 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14890 0))(
  ( (Unit!14891) )
))
(declare-fun lt!226094 () Unit!14890)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32195 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14890)

(assert (=> b!498773 (= lt!226094 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!498774 () Bool)

(declare-fun e!292308 () Bool)

(assert (=> b!498774 (= e!292308 true)))

(declare-fun lt!226097 () SeekEntryResult!3950)

(assert (=> b!498774 (= lt!226097 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226099 lt!226098 lt!226100 mask!3524))))

(declare-fun b!498775 () Bool)

(declare-fun res!300948 () Bool)

(assert (=> b!498775 (=> (not res!300948) (not e!292311))))

(assert (=> b!498775 (= res!300948 (validKeyInArray!0 (select (arr!15476 a!3235) j!176)))))

(declare-fun b!498776 () Bool)

(assert (=> b!498776 (= e!292315 e!292308)))

(declare-fun res!300952 () Bool)

(assert (=> b!498776 (=> res!300952 e!292308)))

(assert (=> b!498776 (= res!300952 (or (bvsgt #b00000000000000000000000000000000 (x!47054 lt!226095)) (bvsgt (x!47054 lt!226095) #b01111111111111111111111111111110) (bvslt lt!226099 #b00000000000000000000000000000000) (bvsge lt!226099 (size!15840 a!3235)) (bvslt (index!17984 lt!226095) #b00000000000000000000000000000000) (bvsge (index!17984 lt!226095) (size!15840 a!3235)) (not (= lt!226095 (Intermediate!3950 false (index!17984 lt!226095) (x!47054 lt!226095))))))))

(assert (=> b!498776 (and (or (= (select (arr!15476 a!3235) (index!17984 lt!226095)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15476 a!3235) (index!17984 lt!226095)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15476 a!3235) (index!17984 lt!226095)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15476 a!3235) (index!17984 lt!226095)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226093 () Unit!14890)

(declare-fun e!292310 () Unit!14890)

(assert (=> b!498776 (= lt!226093 e!292310)))

(declare-fun c!59189 () Bool)

(assert (=> b!498776 (= c!59189 (= (select (arr!15476 a!3235) (index!17984 lt!226095)) (select (arr!15476 a!3235) j!176)))))

(assert (=> b!498776 (and (bvslt (x!47054 lt!226095) #b01111111111111111111111111111110) (or (= (select (arr!15476 a!3235) (index!17984 lt!226095)) (select (arr!15476 a!3235) j!176)) (= (select (arr!15476 a!3235) (index!17984 lt!226095)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15476 a!3235) (index!17984 lt!226095)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498777 () Bool)

(assert (=> b!498777 (= e!292311 e!292312)))

(declare-fun res!300953 () Bool)

(assert (=> b!498777 (=> (not res!300953) (not e!292312))))

(declare-fun lt!226096 () SeekEntryResult!3950)

(assert (=> b!498777 (= res!300953 (or (= lt!226096 (MissingZero!3950 i!1204)) (= lt!226096 (MissingVacant!3950 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32195 (_ BitVec 32)) SeekEntryResult!3950)

(assert (=> b!498777 (= lt!226096 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!498778 () Bool)

(declare-fun Unit!14892 () Unit!14890)

(assert (=> b!498778 (= e!292310 Unit!14892)))

(declare-fun b!498779 () Bool)

(declare-fun res!300955 () Bool)

(assert (=> b!498779 (=> (not res!300955) (not e!292312))))

(declare-datatypes ((List!9687 0))(
  ( (Nil!9684) (Cons!9683 (h!10557 (_ BitVec 64)) (t!15923 List!9687)) )
))
(declare-fun arrayNoDuplicates!0 (array!32195 (_ BitVec 32) List!9687) Bool)

(assert (=> b!498779 (= res!300955 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9684))))

(declare-fun b!498780 () Bool)

(declare-fun Unit!14893 () Unit!14890)

(assert (=> b!498780 (= e!292310 Unit!14893)))

(declare-fun lt!226092 () Unit!14890)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32195 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14890)

(assert (=> b!498780 (= lt!226092 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226099 #b00000000000000000000000000000000 (index!17984 lt!226095) (x!47054 lt!226095) mask!3524))))

(declare-fun res!300944 () Bool)

(assert (=> b!498780 (= res!300944 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226099 lt!226098 lt!226100 mask!3524) (Intermediate!3950 false (index!17984 lt!226095) (x!47054 lt!226095))))))

(assert (=> b!498780 (=> (not res!300944) (not e!292309))))

(assert (=> b!498780 e!292309))

(declare-fun b!498781 () Bool)

(declare-fun res!300947 () Bool)

(assert (=> b!498781 (=> (not res!300947) (not e!292311))))

(declare-fun arrayContainsKey!0 (array!32195 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498781 (= res!300947 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498782 () Bool)

(assert (=> b!498782 (= e!292314 (= (seekEntryOrOpen!0 (select (arr!15476 a!3235) j!176) a!3235 mask!3524) (Found!3950 j!176)))))

(assert (= (and start!45410 res!300946) b!498770))

(assert (= (and b!498770 res!300954) b!498775))

(assert (= (and b!498775 res!300948) b!498771))

(assert (= (and b!498771 res!300949) b!498781))

(assert (= (and b!498781 res!300947) b!498777))

(assert (= (and b!498777 res!300953) b!498769))

(assert (= (and b!498769 res!300951) b!498779))

(assert (= (and b!498779 res!300955) b!498773))

(assert (= (and b!498773 res!300945) b!498782))

(assert (= (and b!498773 (not res!300950)) b!498768))

(assert (= (and b!498768 (not res!300956)) b!498776))

(assert (= (and b!498776 c!59189) b!498780))

(assert (= (and b!498776 (not c!59189)) b!498778))

(assert (= (and b!498780 res!300944) b!498772))

(assert (= (and b!498776 (not res!300952)) b!498774))

(declare-fun m!480037 () Bool)

(assert (=> b!498777 m!480037))

(declare-fun m!480039 () Bool)

(assert (=> b!498780 m!480039))

(declare-fun m!480041 () Bool)

(assert (=> b!498780 m!480041))

(declare-fun m!480043 () Bool)

(assert (=> b!498769 m!480043))

(declare-fun m!480045 () Bool)

(assert (=> b!498779 m!480045))

(declare-fun m!480047 () Bool)

(assert (=> start!45410 m!480047))

(declare-fun m!480049 () Bool)

(assert (=> start!45410 m!480049))

(declare-fun m!480051 () Bool)

(assert (=> b!498775 m!480051))

(assert (=> b!498775 m!480051))

(declare-fun m!480053 () Bool)

(assert (=> b!498775 m!480053))

(declare-fun m!480055 () Bool)

(assert (=> b!498773 m!480055))

(declare-fun m!480057 () Bool)

(assert (=> b!498773 m!480057))

(declare-fun m!480059 () Bool)

(assert (=> b!498773 m!480059))

(declare-fun m!480061 () Bool)

(assert (=> b!498773 m!480061))

(assert (=> b!498773 m!480051))

(declare-fun m!480063 () Bool)

(assert (=> b!498773 m!480063))

(assert (=> b!498773 m!480051))

(declare-fun m!480065 () Bool)

(assert (=> b!498773 m!480065))

(assert (=> b!498773 m!480051))

(declare-fun m!480067 () Bool)

(assert (=> b!498773 m!480067))

(declare-fun m!480069 () Bool)

(assert (=> b!498773 m!480069))

(declare-fun m!480071 () Bool)

(assert (=> b!498776 m!480071))

(assert (=> b!498776 m!480051))

(assert (=> b!498782 m!480051))

(assert (=> b!498782 m!480051))

(declare-fun m!480073 () Bool)

(assert (=> b!498782 m!480073))

(declare-fun m!480075 () Bool)

(assert (=> b!498771 m!480075))

(declare-fun m!480077 () Bool)

(assert (=> b!498781 m!480077))

(assert (=> b!498774 m!480041))

(push 1)

