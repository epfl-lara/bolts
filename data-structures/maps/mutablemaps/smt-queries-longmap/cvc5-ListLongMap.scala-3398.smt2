; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46990 () Bool)

(assert start!46990)

(declare-fun res!316907 () Bool)

(declare-fun e!302138 () Bool)

(assert (=> start!46990 (=> (not res!316907) (not e!302138))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46990 (= res!316907 (validMask!0 mask!3524))))

(assert (=> start!46990 e!302138))

(assert (=> start!46990 true))

(declare-datatypes ((array!33091 0))(
  ( (array!33092 (arr!15906 (Array (_ BitVec 32) (_ BitVec 64))) (size!16270 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33091)

(declare-fun array_inv!11680 (array!33091) Bool)

(assert (=> start!46990 (array_inv!11680 a!3235)))

(declare-fun b!517741 () Bool)

(declare-fun res!316909 () Bool)

(assert (=> b!517741 (=> (not res!316909) (not e!302138))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!517741 (= res!316909 (and (= (size!16270 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16270 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16270 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!517742 () Bool)

(declare-fun res!316906 () Bool)

(assert (=> b!517742 (=> (not res!316906) (not e!302138))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!517742 (= res!316906 (validKeyInArray!0 k!2280))))

(declare-fun b!517743 () Bool)

(declare-fun res!316912 () Bool)

(declare-fun e!302140 () Bool)

(assert (=> b!517743 (=> res!316912 e!302140)))

(declare-datatypes ((SeekEntryResult!4380 0))(
  ( (MissingZero!4380 (index!19708 (_ BitVec 32))) (Found!4380 (index!19709 (_ BitVec 32))) (Intermediate!4380 (undefined!5192 Bool) (index!19710 (_ BitVec 32)) (x!48708 (_ BitVec 32))) (Undefined!4380) (MissingVacant!4380 (index!19711 (_ BitVec 32))) )
))
(declare-fun lt!237053 () SeekEntryResult!4380)

(assert (=> b!517743 (= res!316912 (or (undefined!5192 lt!237053) (not (is-Intermediate!4380 lt!237053))))))

(declare-fun b!517744 () Bool)

(declare-fun res!316915 () Bool)

(declare-fun e!302137 () Bool)

(assert (=> b!517744 (=> (not res!316915) (not e!302137))))

(declare-datatypes ((List!10117 0))(
  ( (Nil!10114) (Cons!10113 (h!11020 (_ BitVec 64)) (t!16353 List!10117)) )
))
(declare-fun arrayNoDuplicates!0 (array!33091 (_ BitVec 32) List!10117) Bool)

(assert (=> b!517744 (= res!316915 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10114))))

(declare-fun b!517745 () Bool)

(declare-fun res!316913 () Bool)

(assert (=> b!517745 (=> (not res!316913) (not e!302138))))

(declare-fun arrayContainsKey!0 (array!33091 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!517745 (= res!316913 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!517746 () Bool)

(assert (=> b!517746 (= e!302138 e!302137)))

(declare-fun res!316911 () Bool)

(assert (=> b!517746 (=> (not res!316911) (not e!302137))))

(declare-fun lt!237049 () SeekEntryResult!4380)

(assert (=> b!517746 (= res!316911 (or (= lt!237049 (MissingZero!4380 i!1204)) (= lt!237049 (MissingVacant!4380 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33091 (_ BitVec 32)) SeekEntryResult!4380)

(assert (=> b!517746 (= lt!237049 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun e!302139 () Bool)

(declare-fun b!517747 () Bool)

(assert (=> b!517747 (= e!302139 (= (seekEntryOrOpen!0 (select (arr!15906 a!3235) j!176) a!3235 mask!3524) (Found!4380 j!176)))))

(declare-fun b!517748 () Bool)

(declare-fun res!316908 () Bool)

(assert (=> b!517748 (=> (not res!316908) (not e!302137))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33091 (_ BitVec 32)) Bool)

(assert (=> b!517748 (= res!316908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!517749 () Bool)

(declare-fun res!316914 () Bool)

(assert (=> b!517749 (=> (not res!316914) (not e!302138))))

(assert (=> b!517749 (= res!316914 (validKeyInArray!0 (select (arr!15906 a!3235) j!176)))))

(declare-fun b!517750 () Bool)

(assert (=> b!517750 (= e!302140 true)))

(assert (=> b!517750 (and (bvslt (x!48708 lt!237053) #b01111111111111111111111111111110) (or (= (select (arr!15906 a!3235) (index!19710 lt!237053)) (select (arr!15906 a!3235) j!176)) (= (select (arr!15906 a!3235) (index!19710 lt!237053)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15906 a!3235) (index!19710 lt!237053)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!517751 () Bool)

(assert (=> b!517751 (= e!302137 (not e!302140))))

(declare-fun res!316916 () Bool)

(assert (=> b!517751 (=> res!316916 e!302140)))

(declare-fun lt!237052 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33091 (_ BitVec 32)) SeekEntryResult!4380)

(assert (=> b!517751 (= res!316916 (= lt!237053 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237052 (select (store (arr!15906 a!3235) i!1204 k!2280) j!176) (array!33092 (store (arr!15906 a!3235) i!1204 k!2280) (size!16270 a!3235)) mask!3524)))))

(declare-fun lt!237050 () (_ BitVec 32))

(assert (=> b!517751 (= lt!237053 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237050 (select (arr!15906 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!517751 (= lt!237052 (toIndex!0 (select (store (arr!15906 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!517751 (= lt!237050 (toIndex!0 (select (arr!15906 a!3235) j!176) mask!3524))))

(assert (=> b!517751 e!302139))

(declare-fun res!316910 () Bool)

(assert (=> b!517751 (=> (not res!316910) (not e!302139))))

(assert (=> b!517751 (= res!316910 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16010 0))(
  ( (Unit!16011) )
))
(declare-fun lt!237051 () Unit!16010)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33091 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16010)

(assert (=> b!517751 (= lt!237051 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46990 res!316907) b!517741))

(assert (= (and b!517741 res!316909) b!517749))

(assert (= (and b!517749 res!316914) b!517742))

(assert (= (and b!517742 res!316906) b!517745))

(assert (= (and b!517745 res!316913) b!517746))

(assert (= (and b!517746 res!316911) b!517748))

(assert (= (and b!517748 res!316908) b!517744))

(assert (= (and b!517744 res!316915) b!517751))

(assert (= (and b!517751 res!316910) b!517747))

(assert (= (and b!517751 (not res!316916)) b!517743))

(assert (= (and b!517743 (not res!316912)) b!517750))

(declare-fun m!499099 () Bool)

(assert (=> b!517751 m!499099))

(declare-fun m!499101 () Bool)

(assert (=> b!517751 m!499101))

(declare-fun m!499103 () Bool)

(assert (=> b!517751 m!499103))

(declare-fun m!499105 () Bool)

(assert (=> b!517751 m!499105))

(assert (=> b!517751 m!499103))

(declare-fun m!499107 () Bool)

(assert (=> b!517751 m!499107))

(declare-fun m!499109 () Bool)

(assert (=> b!517751 m!499109))

(assert (=> b!517751 m!499103))

(declare-fun m!499111 () Bool)

(assert (=> b!517751 m!499111))

(assert (=> b!517751 m!499105))

(declare-fun m!499113 () Bool)

(assert (=> b!517751 m!499113))

(assert (=> b!517751 m!499105))

(declare-fun m!499115 () Bool)

(assert (=> b!517751 m!499115))

(declare-fun m!499117 () Bool)

(assert (=> b!517750 m!499117))

(assert (=> b!517750 m!499105))

(declare-fun m!499119 () Bool)

(assert (=> b!517746 m!499119))

(declare-fun m!499121 () Bool)

(assert (=> b!517744 m!499121))

(declare-fun m!499123 () Bool)

(assert (=> b!517742 m!499123))

(assert (=> b!517747 m!499105))

(assert (=> b!517747 m!499105))

(declare-fun m!499125 () Bool)

(assert (=> b!517747 m!499125))

(assert (=> b!517749 m!499105))

(assert (=> b!517749 m!499105))

(declare-fun m!499127 () Bool)

(assert (=> b!517749 m!499127))

(declare-fun m!499129 () Bool)

(assert (=> b!517745 m!499129))

(declare-fun m!499131 () Bool)

(assert (=> b!517748 m!499131))

(declare-fun m!499133 () Bool)

(assert (=> start!46990 m!499133))

(declare-fun m!499135 () Bool)

(assert (=> start!46990 m!499135))

(push 1)

