; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47714 () Bool)

(assert start!47714)

(declare-fun b!524380 () Bool)

(declare-datatypes ((Unit!16378 0))(
  ( (Unit!16379) )
))
(declare-fun e!305820 () Unit!16378)

(declare-fun Unit!16380 () Unit!16378)

(assert (=> b!524380 (= e!305820 Unit!16380)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33311 0))(
  ( (array!33312 (arr!16004 (Array (_ BitVec 32) (_ BitVec 64))) (size!16368 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33311)

(declare-fun lt!240740 () Unit!16378)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4478 0))(
  ( (MissingZero!4478 (index!20124 (_ BitVec 32))) (Found!4478 (index!20125 (_ BitVec 32))) (Intermediate!4478 (undefined!5290 Bool) (index!20126 (_ BitVec 32)) (x!49134 (_ BitVec 32))) (Undefined!4478) (MissingVacant!4478 (index!20127 (_ BitVec 32))) )
))
(declare-fun lt!240746 () SeekEntryResult!4478)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!240741 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33311 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16378)

(assert (=> b!524380 (= lt!240740 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240741 #b00000000000000000000000000000000 (index!20126 lt!240746) (x!49134 lt!240746) mask!3524))))

(declare-fun res!321420 () Bool)

(declare-fun lt!240738 () array!33311)

(declare-fun lt!240742 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33311 (_ BitVec 32)) SeekEntryResult!4478)

(assert (=> b!524380 (= res!321420 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240741 lt!240742 lt!240738 mask!3524) (Intermediate!4478 false (index!20126 lt!240746) (x!49134 lt!240746))))))

(declare-fun e!305815 () Bool)

(assert (=> b!524380 (=> (not res!321420) (not e!305815))))

(assert (=> b!524380 e!305815))

(declare-fun b!524381 () Bool)

(declare-fun e!305816 () Bool)

(assert (=> b!524381 (= e!305816 true)))

(assert (=> b!524381 (and (or (= (select (arr!16004 a!3235) (index!20126 lt!240746)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16004 a!3235) (index!20126 lt!240746)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16004 a!3235) (index!20126 lt!240746)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16004 a!3235) (index!20126 lt!240746)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240745 () Unit!16378)

(assert (=> b!524381 (= lt!240745 e!305820)))

(declare-fun c!61787 () Bool)

(assert (=> b!524381 (= c!61787 (= (select (arr!16004 a!3235) (index!20126 lt!240746)) (select (arr!16004 a!3235) j!176)))))

(assert (=> b!524381 (and (bvslt (x!49134 lt!240746) #b01111111111111111111111111111110) (or (= (select (arr!16004 a!3235) (index!20126 lt!240746)) (select (arr!16004 a!3235) j!176)) (= (select (arr!16004 a!3235) (index!20126 lt!240746)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16004 a!3235) (index!20126 lt!240746)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!524383 () Bool)

(declare-fun res!321422 () Bool)

(declare-fun e!305817 () Bool)

(assert (=> b!524383 (=> (not res!321422) (not e!305817))))

(declare-fun arrayContainsKey!0 (array!33311 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524383 (= res!321422 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524384 () Bool)

(declare-fun res!321428 () Bool)

(declare-fun e!305821 () Bool)

(assert (=> b!524384 (=> (not res!321428) (not e!305821))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33311 (_ BitVec 32)) Bool)

(assert (=> b!524384 (= res!321428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!524385 () Bool)

(declare-fun res!321417 () Bool)

(assert (=> b!524385 (=> (not res!321417) (not e!305817))))

(assert (=> b!524385 (= res!321417 (and (= (size!16368 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16368 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16368 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524386 () Bool)

(assert (=> b!524386 (= e!305821 (not e!305816))))

(declare-fun res!321426 () Bool)

(assert (=> b!524386 (=> res!321426 e!305816)))

(declare-fun lt!240743 () (_ BitVec 32))

(assert (=> b!524386 (= res!321426 (= lt!240746 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240743 lt!240742 lt!240738 mask!3524)))))

(assert (=> b!524386 (= lt!240746 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240741 (select (arr!16004 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524386 (= lt!240743 (toIndex!0 lt!240742 mask!3524))))

(assert (=> b!524386 (= lt!240742 (select (store (arr!16004 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!524386 (= lt!240741 (toIndex!0 (select (arr!16004 a!3235) j!176) mask!3524))))

(assert (=> b!524386 (= lt!240738 (array!33312 (store (arr!16004 a!3235) i!1204 k!2280) (size!16368 a!3235)))))

(declare-fun e!305819 () Bool)

(assert (=> b!524386 e!305819))

(declare-fun res!321423 () Bool)

(assert (=> b!524386 (=> (not res!321423) (not e!305819))))

(assert (=> b!524386 (= res!321423 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240739 () Unit!16378)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33311 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16378)

(assert (=> b!524386 (= lt!240739 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524387 () Bool)

(assert (=> b!524387 (= e!305815 false)))

(declare-fun b!524388 () Bool)

(assert (=> b!524388 (= e!305817 e!305821)))

(declare-fun res!321419 () Bool)

(assert (=> b!524388 (=> (not res!321419) (not e!305821))))

(declare-fun lt!240744 () SeekEntryResult!4478)

(assert (=> b!524388 (= res!321419 (or (= lt!240744 (MissingZero!4478 i!1204)) (= lt!240744 (MissingVacant!4478 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33311 (_ BitVec 32)) SeekEntryResult!4478)

(assert (=> b!524388 (= lt!240744 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!524389 () Bool)

(declare-fun res!321421 () Bool)

(assert (=> b!524389 (=> (not res!321421) (not e!305817))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524389 (= res!321421 (validKeyInArray!0 (select (arr!16004 a!3235) j!176)))))

(declare-fun b!524390 () Bool)

(assert (=> b!524390 (= e!305819 (= (seekEntryOrOpen!0 (select (arr!16004 a!3235) j!176) a!3235 mask!3524) (Found!4478 j!176)))))

(declare-fun b!524391 () Bool)

(declare-fun Unit!16381 () Unit!16378)

(assert (=> b!524391 (= e!305820 Unit!16381)))

(declare-fun b!524382 () Bool)

(declare-fun res!321425 () Bool)

(assert (=> b!524382 (=> (not res!321425) (not e!305821))))

(declare-datatypes ((List!10215 0))(
  ( (Nil!10212) (Cons!10211 (h!11142 (_ BitVec 64)) (t!16451 List!10215)) )
))
(declare-fun arrayNoDuplicates!0 (array!33311 (_ BitVec 32) List!10215) Bool)

(assert (=> b!524382 (= res!321425 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10212))))

(declare-fun res!321418 () Bool)

(assert (=> start!47714 (=> (not res!321418) (not e!305817))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47714 (= res!321418 (validMask!0 mask!3524))))

(assert (=> start!47714 e!305817))

(assert (=> start!47714 true))

(declare-fun array_inv!11778 (array!33311) Bool)

(assert (=> start!47714 (array_inv!11778 a!3235)))

(declare-fun b!524392 () Bool)

(declare-fun res!321427 () Bool)

(assert (=> b!524392 (=> res!321427 e!305816)))

(assert (=> b!524392 (= res!321427 (or (undefined!5290 lt!240746) (not (is-Intermediate!4478 lt!240746))))))

(declare-fun b!524393 () Bool)

(declare-fun res!321424 () Bool)

(assert (=> b!524393 (=> (not res!321424) (not e!305817))))

(assert (=> b!524393 (= res!321424 (validKeyInArray!0 k!2280))))

(assert (= (and start!47714 res!321418) b!524385))

(assert (= (and b!524385 res!321417) b!524389))

(assert (= (and b!524389 res!321421) b!524393))

(assert (= (and b!524393 res!321424) b!524383))

(assert (= (and b!524383 res!321422) b!524388))

(assert (= (and b!524388 res!321419) b!524384))

(assert (= (and b!524384 res!321428) b!524382))

(assert (= (and b!524382 res!321425) b!524386))

(assert (= (and b!524386 res!321423) b!524390))

(assert (= (and b!524386 (not res!321426)) b!524392))

(assert (= (and b!524392 (not res!321427)) b!524381))

(assert (= (and b!524381 c!61787) b!524380))

(assert (= (and b!524381 (not c!61787)) b!524391))

(assert (= (and b!524380 res!321420) b!524387))

(declare-fun m!505051 () Bool)

(assert (=> b!524389 m!505051))

(assert (=> b!524389 m!505051))

(declare-fun m!505053 () Bool)

(assert (=> b!524389 m!505053))

(declare-fun m!505055 () Bool)

(assert (=> start!47714 m!505055))

(declare-fun m!505057 () Bool)

(assert (=> start!47714 m!505057))

(declare-fun m!505059 () Bool)

(assert (=> b!524380 m!505059))

(declare-fun m!505061 () Bool)

(assert (=> b!524380 m!505061))

(declare-fun m!505063 () Bool)

(assert (=> b!524383 m!505063))

(assert (=> b!524386 m!505051))

(declare-fun m!505065 () Bool)

(assert (=> b!524386 m!505065))

(declare-fun m!505067 () Bool)

(assert (=> b!524386 m!505067))

(declare-fun m!505069 () Bool)

(assert (=> b!524386 m!505069))

(declare-fun m!505071 () Bool)

(assert (=> b!524386 m!505071))

(assert (=> b!524386 m!505051))

(declare-fun m!505073 () Bool)

(assert (=> b!524386 m!505073))

(declare-fun m!505075 () Bool)

(assert (=> b!524386 m!505075))

(assert (=> b!524386 m!505051))

(declare-fun m!505077 () Bool)

(assert (=> b!524386 m!505077))

(declare-fun m!505079 () Bool)

(assert (=> b!524386 m!505079))

(declare-fun m!505081 () Bool)

(assert (=> b!524382 m!505081))

(assert (=> b!524390 m!505051))

(assert (=> b!524390 m!505051))

(declare-fun m!505083 () Bool)

(assert (=> b!524390 m!505083))

(declare-fun m!505085 () Bool)

(assert (=> b!524388 m!505085))

(declare-fun m!505087 () Bool)

(assert (=> b!524393 m!505087))

(declare-fun m!505089 () Bool)

(assert (=> b!524384 m!505089))

(declare-fun m!505091 () Bool)

(assert (=> b!524381 m!505091))

(assert (=> b!524381 m!505051))

(push 1)

