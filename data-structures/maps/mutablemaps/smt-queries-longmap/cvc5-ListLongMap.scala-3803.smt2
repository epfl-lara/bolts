; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52190 () Bool)

(assert start!52190)

(declare-fun b!569286 () Bool)

(declare-fun res!359457 () Bool)

(declare-fun e!327492 () Bool)

(assert (=> b!569286 (=> (not res!359457) (not e!327492))))

(declare-datatypes ((array!35667 0))(
  ( (array!35668 (arr!17121 (Array (_ BitVec 32) (_ BitVec 64))) (size!17485 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35667)

(declare-datatypes ((List!11254 0))(
  ( (Nil!11251) (Cons!11250 (h!12271 (_ BitVec 64)) (t!17490 List!11254)) )
))
(declare-fun arrayNoDuplicates!0 (array!35667 (_ BitVec 32) List!11254) Bool)

(assert (=> b!569286 (= res!359457 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11251))))

(declare-fun b!569287 () Bool)

(declare-fun res!359459 () Bool)

(declare-fun e!327490 () Bool)

(assert (=> b!569287 (=> (not res!359459) (not e!327490))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35667 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569287 (= res!359459 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569288 () Bool)

(declare-fun e!327493 () Bool)

(assert (=> b!569288 (= e!327492 e!327493)))

(declare-fun res!359460 () Bool)

(assert (=> b!569288 (=> (not res!359460) (not e!327493))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!259537 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5577 0))(
  ( (MissingZero!5577 (index!24535 (_ BitVec 32))) (Found!5577 (index!24536 (_ BitVec 32))) (Intermediate!5577 (undefined!6389 Bool) (index!24537 (_ BitVec 32)) (x!53439 (_ BitVec 32))) (Undefined!5577) (MissingVacant!5577 (index!24538 (_ BitVec 32))) )
))
(declare-fun lt!259534 () SeekEntryResult!5577)

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35667 (_ BitVec 32)) SeekEntryResult!5577)

(assert (=> b!569288 (= res!359460 (= lt!259534 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259537 (select (store (arr!17121 a!3118) i!1132 k!1914) j!142) (array!35668 (store (arr!17121 a!3118) i!1132 k!1914) (size!17485 a!3118)) mask!3119)))))

(declare-fun lt!259536 () (_ BitVec 32))

(assert (=> b!569288 (= lt!259534 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259536 (select (arr!17121 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569288 (= lt!259537 (toIndex!0 (select (store (arr!17121 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!569288 (= lt!259536 (toIndex!0 (select (arr!17121 a!3118) j!142) mask!3119))))

(declare-fun b!569289 () Bool)

(declare-fun res!359461 () Bool)

(assert (=> b!569289 (=> (not res!359461) (not e!327490))))

(assert (=> b!569289 (= res!359461 (and (= (size!17485 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17485 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17485 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!359454 () Bool)

(assert (=> start!52190 (=> (not res!359454) (not e!327490))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52190 (= res!359454 (validMask!0 mask!3119))))

(assert (=> start!52190 e!327490))

(assert (=> start!52190 true))

(declare-fun array_inv!12895 (array!35667) Bool)

(assert (=> start!52190 (array_inv!12895 a!3118)))

(declare-fun b!569290 () Bool)

(assert (=> b!569290 (= e!327490 e!327492)))

(declare-fun res!359456 () Bool)

(assert (=> b!569290 (=> (not res!359456) (not e!327492))))

(declare-fun lt!259533 () SeekEntryResult!5577)

(assert (=> b!569290 (= res!359456 (or (= lt!259533 (MissingZero!5577 i!1132)) (= lt!259533 (MissingVacant!5577 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35667 (_ BitVec 32)) SeekEntryResult!5577)

(assert (=> b!569290 (= lt!259533 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!569291 () Bool)

(declare-fun res!359458 () Bool)

(assert (=> b!569291 (=> (not res!359458) (not e!327490))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569291 (= res!359458 (validKeyInArray!0 (select (arr!17121 a!3118) j!142)))))

(declare-fun b!569292 () Bool)

(declare-fun res!359462 () Bool)

(assert (=> b!569292 (=> (not res!359462) (not e!327490))))

(assert (=> b!569292 (= res!359462 (validKeyInArray!0 k!1914))))

(declare-fun b!569293 () Bool)

(declare-fun res!359455 () Bool)

(assert (=> b!569293 (=> (not res!359455) (not e!327492))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35667 (_ BitVec 32)) Bool)

(assert (=> b!569293 (= res!359455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569294 () Bool)

(assert (=> b!569294 (= e!327493 (not true))))

(declare-fun lt!259535 () SeekEntryResult!5577)

(assert (=> b!569294 (and (= lt!259535 (Found!5577 j!142)) (or (undefined!6389 lt!259534) (not (is-Intermediate!5577 lt!259534)) (= (select (arr!17121 a!3118) (index!24537 lt!259534)) (select (arr!17121 a!3118) j!142)) (not (= (select (arr!17121 a!3118) (index!24537 lt!259534)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259535 (MissingZero!5577 (index!24537 lt!259534)))))))

(assert (=> b!569294 (= lt!259535 (seekEntryOrOpen!0 (select (arr!17121 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!569294 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17856 0))(
  ( (Unit!17857) )
))
(declare-fun lt!259538 () Unit!17856)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35667 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17856)

(assert (=> b!569294 (= lt!259538 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!52190 res!359454) b!569289))

(assert (= (and b!569289 res!359461) b!569291))

(assert (= (and b!569291 res!359458) b!569292))

(assert (= (and b!569292 res!359462) b!569287))

(assert (= (and b!569287 res!359459) b!569290))

(assert (= (and b!569290 res!359456) b!569293))

(assert (= (and b!569293 res!359455) b!569286))

(assert (= (and b!569286 res!359457) b!569288))

(assert (= (and b!569288 res!359460) b!569294))

(declare-fun m!548071 () Bool)

(assert (=> b!569288 m!548071))

(declare-fun m!548073 () Bool)

(assert (=> b!569288 m!548073))

(assert (=> b!569288 m!548071))

(declare-fun m!548075 () Bool)

(assert (=> b!569288 m!548075))

(assert (=> b!569288 m!548075))

(declare-fun m!548077 () Bool)

(assert (=> b!569288 m!548077))

(assert (=> b!569288 m!548075))

(declare-fun m!548079 () Bool)

(assert (=> b!569288 m!548079))

(assert (=> b!569288 m!548071))

(declare-fun m!548081 () Bool)

(assert (=> b!569288 m!548081))

(declare-fun m!548083 () Bool)

(assert (=> b!569288 m!548083))

(declare-fun m!548085 () Bool)

(assert (=> b!569293 m!548085))

(declare-fun m!548087 () Bool)

(assert (=> b!569292 m!548087))

(assert (=> b!569291 m!548071))

(assert (=> b!569291 m!548071))

(declare-fun m!548089 () Bool)

(assert (=> b!569291 m!548089))

(declare-fun m!548091 () Bool)

(assert (=> start!52190 m!548091))

(declare-fun m!548093 () Bool)

(assert (=> start!52190 m!548093))

(declare-fun m!548095 () Bool)

(assert (=> b!569287 m!548095))

(declare-fun m!548097 () Bool)

(assert (=> b!569290 m!548097))

(assert (=> b!569294 m!548071))

(declare-fun m!548099 () Bool)

(assert (=> b!569294 m!548099))

(assert (=> b!569294 m!548071))

(declare-fun m!548101 () Bool)

(assert (=> b!569294 m!548101))

(declare-fun m!548103 () Bool)

(assert (=> b!569294 m!548103))

(declare-fun m!548105 () Bool)

(assert (=> b!569294 m!548105))

(declare-fun m!548107 () Bool)

(assert (=> b!569286 m!548107))

(push 1)

