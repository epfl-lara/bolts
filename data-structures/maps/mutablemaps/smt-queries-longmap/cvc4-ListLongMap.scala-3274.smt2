; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45602 () Bool)

(assert start!45602)

(declare-fun b!501829 () Bool)

(declare-fun e!293971 () Bool)

(declare-fun e!293970 () Bool)

(assert (=> b!501829 (= e!293971 (not e!293970))))

(declare-fun res!303444 () Bool)

(assert (=> b!501829 (=> res!303444 e!293970)))

(declare-datatypes ((SeekEntryResult!4010 0))(
  ( (MissingZero!4010 (index!18228 (_ BitVec 32))) (Found!4010 (index!18229 (_ BitVec 32))) (Intermediate!4010 (undefined!4822 Bool) (index!18230 (_ BitVec 32)) (x!47286 (_ BitVec 32))) (Undefined!4010) (MissingVacant!4010 (index!18231 (_ BitVec 32))) )
))
(declare-fun lt!228079 () SeekEntryResult!4010)

(declare-fun lt!228071 () (_ BitVec 32))

(declare-datatypes ((array!32318 0))(
  ( (array!32319 (arr!15536 (Array (_ BitVec 32) (_ BitVec 64))) (size!15900 (_ BitVec 32))) )
))
(declare-fun lt!228072 () array!32318)

(declare-fun lt!228076 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32318 (_ BitVec 32)) SeekEntryResult!4010)

(assert (=> b!501829 (= res!303444 (= lt!228079 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228071 lt!228076 lt!228072 mask!3524)))))

(declare-fun a!3235 () array!32318)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!228073 () (_ BitVec 32))

(assert (=> b!501829 (= lt!228079 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228073 (select (arr!15536 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!501829 (= lt!228071 (toIndex!0 lt!228076 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!501829 (= lt!228076 (select (store (arr!15536 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!501829 (= lt!228073 (toIndex!0 (select (arr!15536 a!3235) j!176) mask!3524))))

(assert (=> b!501829 (= lt!228072 (array!32319 (store (arr!15536 a!3235) i!1204 k!2280) (size!15900 a!3235)))))

(declare-fun e!293973 () Bool)

(assert (=> b!501829 e!293973))

(declare-fun res!303456 () Bool)

(assert (=> b!501829 (=> (not res!303456) (not e!293973))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32318 (_ BitVec 32)) Bool)

(assert (=> b!501829 (= res!303456 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15130 0))(
  ( (Unit!15131) )
))
(declare-fun lt!228074 () Unit!15130)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32318 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15130)

(assert (=> b!501829 (= lt!228074 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!501830 () Bool)

(declare-fun e!293969 () Bool)

(assert (=> b!501830 (= e!293969 false)))

(declare-fun b!501831 () Bool)

(declare-fun res!303448 () Bool)

(declare-fun e!293968 () Bool)

(assert (=> b!501831 (=> (not res!303448) (not e!293968))))

(assert (=> b!501831 (= res!303448 (and (= (size!15900 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15900 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15900 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!501832 () Bool)

(declare-fun res!303447 () Bool)

(assert (=> b!501832 (=> res!303447 e!293970)))

(assert (=> b!501832 (= res!303447 (or (undefined!4822 lt!228079) (not (is-Intermediate!4010 lt!228079))))))

(declare-fun b!501833 () Bool)

(assert (=> b!501833 (= e!293968 e!293971)))

(declare-fun res!303451 () Bool)

(assert (=> b!501833 (=> (not res!303451) (not e!293971))))

(declare-fun lt!228077 () SeekEntryResult!4010)

(assert (=> b!501833 (= res!303451 (or (= lt!228077 (MissingZero!4010 i!1204)) (= lt!228077 (MissingVacant!4010 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32318 (_ BitVec 32)) SeekEntryResult!4010)

(assert (=> b!501833 (= lt!228077 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!501834 () Bool)

(declare-fun res!303457 () Bool)

(assert (=> b!501834 (=> (not res!303457) (not e!293971))))

(assert (=> b!501834 (= res!303457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!501835 () Bool)

(declare-fun res!303454 () Bool)

(assert (=> b!501835 (=> (not res!303454) (not e!293968))))

(declare-fun arrayContainsKey!0 (array!32318 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!501835 (= res!303454 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!501836 () Bool)

(declare-fun e!293974 () Unit!15130)

(declare-fun Unit!15132 () Unit!15130)

(assert (=> b!501836 (= e!293974 Unit!15132)))

(declare-fun b!501837 () Bool)

(declare-fun Unit!15133 () Unit!15130)

(assert (=> b!501837 (= e!293974 Unit!15133)))

(declare-fun lt!228080 () Unit!15130)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32318 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15130)

(assert (=> b!501837 (= lt!228080 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228073 #b00000000000000000000000000000000 (index!18230 lt!228079) (x!47286 lt!228079) mask!3524))))

(declare-fun res!303458 () Bool)

(assert (=> b!501837 (= res!303458 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228073 lt!228076 lt!228072 mask!3524) (Intermediate!4010 false (index!18230 lt!228079) (x!47286 lt!228079))))))

(assert (=> b!501837 (=> (not res!303458) (not e!293969))))

(assert (=> b!501837 e!293969))

(declare-fun b!501838 () Bool)

(declare-fun e!293972 () Bool)

(assert (=> b!501838 (= e!293970 e!293972)))

(declare-fun res!303450 () Bool)

(assert (=> b!501838 (=> res!303450 e!293972)))

(assert (=> b!501838 (= res!303450 (or (bvsgt (x!47286 lt!228079) #b01111111111111111111111111111110) (bvslt lt!228073 #b00000000000000000000000000000000) (bvsge lt!228073 (size!15900 a!3235)) (bvslt (index!18230 lt!228079) #b00000000000000000000000000000000) (bvsge (index!18230 lt!228079) (size!15900 a!3235)) (not (= lt!228079 (Intermediate!4010 false (index!18230 lt!228079) (x!47286 lt!228079))))))))

(assert (=> b!501838 (= (index!18230 lt!228079) i!1204)))

(declare-fun lt!228075 () Unit!15130)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32318 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15130)

(assert (=> b!501838 (= lt!228075 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228073 #b00000000000000000000000000000000 (index!18230 lt!228079) (x!47286 lt!228079) mask!3524))))

(assert (=> b!501838 (and (or (= (select (arr!15536 a!3235) (index!18230 lt!228079)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15536 a!3235) (index!18230 lt!228079)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15536 a!3235) (index!18230 lt!228079)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15536 a!3235) (index!18230 lt!228079)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228070 () Unit!15130)

(assert (=> b!501838 (= lt!228070 e!293974)))

(declare-fun c!59471 () Bool)

(assert (=> b!501838 (= c!59471 (= (select (arr!15536 a!3235) (index!18230 lt!228079)) (select (arr!15536 a!3235) j!176)))))

(assert (=> b!501838 (and (bvslt (x!47286 lt!228079) #b01111111111111111111111111111110) (or (= (select (arr!15536 a!3235) (index!18230 lt!228079)) (select (arr!15536 a!3235) j!176)) (= (select (arr!15536 a!3235) (index!18230 lt!228079)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15536 a!3235) (index!18230 lt!228079)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!501839 () Bool)

(assert (=> b!501839 (= e!293973 (= (seekEntryOrOpen!0 (select (arr!15536 a!3235) j!176) a!3235 mask!3524) (Found!4010 j!176)))))

(declare-fun b!501840 () Bool)

(assert (=> b!501840 (= e!293972 true)))

(declare-fun lt!228078 () SeekEntryResult!4010)

(assert (=> b!501840 (= lt!228078 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228073 lt!228076 lt!228072 mask!3524))))

(declare-fun b!501841 () Bool)

(declare-fun e!293966 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32318 (_ BitVec 32)) SeekEntryResult!4010)

(assert (=> b!501841 (= e!293966 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228073 (index!18230 lt!228079) (select (arr!15536 a!3235) j!176) a!3235 mask!3524) (Found!4010 j!176))))))

(declare-fun res!303449 () Bool)

(assert (=> start!45602 (=> (not res!303449) (not e!293968))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45602 (= res!303449 (validMask!0 mask!3524))))

(assert (=> start!45602 e!293968))

(assert (=> start!45602 true))

(declare-fun array_inv!11310 (array!32318) Bool)

(assert (=> start!45602 (array_inv!11310 a!3235)))

(declare-fun b!501842 () Bool)

(declare-fun res!303452 () Bool)

(assert (=> b!501842 (=> (not res!303452) (not e!293968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!501842 (= res!303452 (validKeyInArray!0 k!2280))))

(declare-fun b!501843 () Bool)

(declare-fun res!303455 () Bool)

(assert (=> b!501843 (=> (not res!303455) (not e!293971))))

(declare-datatypes ((List!9747 0))(
  ( (Nil!9744) (Cons!9743 (h!10620 (_ BitVec 64)) (t!15983 List!9747)) )
))
(declare-fun arrayNoDuplicates!0 (array!32318 (_ BitVec 32) List!9747) Bool)

(assert (=> b!501843 (= res!303455 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9744))))

(declare-fun b!501844 () Bool)

(declare-fun res!303453 () Bool)

(assert (=> b!501844 (=> res!303453 e!293972)))

(assert (=> b!501844 (= res!303453 e!293966)))

(declare-fun res!303445 () Bool)

(assert (=> b!501844 (=> (not res!303445) (not e!293966))))

(assert (=> b!501844 (= res!303445 (bvsgt #b00000000000000000000000000000000 (x!47286 lt!228079)))))

(declare-fun b!501845 () Bool)

(declare-fun res!303446 () Bool)

(assert (=> b!501845 (=> (not res!303446) (not e!293968))))

(assert (=> b!501845 (= res!303446 (validKeyInArray!0 (select (arr!15536 a!3235) j!176)))))

(assert (= (and start!45602 res!303449) b!501831))

(assert (= (and b!501831 res!303448) b!501845))

(assert (= (and b!501845 res!303446) b!501842))

(assert (= (and b!501842 res!303452) b!501835))

(assert (= (and b!501835 res!303454) b!501833))

(assert (= (and b!501833 res!303451) b!501834))

(assert (= (and b!501834 res!303457) b!501843))

(assert (= (and b!501843 res!303455) b!501829))

(assert (= (and b!501829 res!303456) b!501839))

(assert (= (and b!501829 (not res!303444)) b!501832))

(assert (= (and b!501832 (not res!303447)) b!501838))

(assert (= (and b!501838 c!59471) b!501837))

(assert (= (and b!501838 (not c!59471)) b!501836))

(assert (= (and b!501837 res!303458) b!501830))

(assert (= (and b!501838 (not res!303450)) b!501844))

(assert (= (and b!501844 res!303445) b!501841))

(assert (= (and b!501844 (not res!303453)) b!501840))

(declare-fun m!482841 () Bool)

(assert (=> b!501841 m!482841))

(assert (=> b!501841 m!482841))

(declare-fun m!482843 () Bool)

(assert (=> b!501841 m!482843))

(declare-fun m!482845 () Bool)

(assert (=> b!501842 m!482845))

(declare-fun m!482847 () Bool)

(assert (=> b!501838 m!482847))

(declare-fun m!482849 () Bool)

(assert (=> b!501838 m!482849))

(assert (=> b!501838 m!482841))

(declare-fun m!482851 () Bool)

(assert (=> b!501829 m!482851))

(declare-fun m!482853 () Bool)

(assert (=> b!501829 m!482853))

(declare-fun m!482855 () Bool)

(assert (=> b!501829 m!482855))

(assert (=> b!501829 m!482841))

(declare-fun m!482857 () Bool)

(assert (=> b!501829 m!482857))

(declare-fun m!482859 () Bool)

(assert (=> b!501829 m!482859))

(assert (=> b!501829 m!482841))

(declare-fun m!482861 () Bool)

(assert (=> b!501829 m!482861))

(assert (=> b!501829 m!482841))

(declare-fun m!482863 () Bool)

(assert (=> b!501829 m!482863))

(declare-fun m!482865 () Bool)

(assert (=> b!501829 m!482865))

(declare-fun m!482867 () Bool)

(assert (=> b!501843 m!482867))

(declare-fun m!482869 () Bool)

(assert (=> b!501835 m!482869))

(declare-fun m!482871 () Bool)

(assert (=> b!501837 m!482871))

(declare-fun m!482873 () Bool)

(assert (=> b!501837 m!482873))

(declare-fun m!482875 () Bool)

(assert (=> b!501834 m!482875))

(assert (=> b!501840 m!482873))

(assert (=> b!501845 m!482841))

(assert (=> b!501845 m!482841))

(declare-fun m!482877 () Bool)

(assert (=> b!501845 m!482877))

(assert (=> b!501839 m!482841))

(assert (=> b!501839 m!482841))

(declare-fun m!482879 () Bool)

(assert (=> b!501839 m!482879))

(declare-fun m!482881 () Bool)

(assert (=> b!501833 m!482881))

(declare-fun m!482883 () Bool)

(assert (=> start!45602 m!482883))

(declare-fun m!482885 () Bool)

(assert (=> start!45602 m!482885))

(push 1)

