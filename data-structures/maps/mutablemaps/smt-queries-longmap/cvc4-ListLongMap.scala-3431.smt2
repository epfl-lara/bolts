; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47720 () Bool)

(assert start!47720)

(declare-fun b!524514 () Bool)

(declare-fun res!321542 () Bool)

(declare-fun e!305889 () Bool)

(assert (=> b!524514 (=> res!321542 e!305889)))

(declare-datatypes ((SeekEntryResult!4481 0))(
  ( (MissingZero!4481 (index!20136 (_ BitVec 32))) (Found!4481 (index!20137 (_ BitVec 32))) (Intermediate!4481 (undefined!5293 Bool) (index!20138 (_ BitVec 32)) (x!49145 (_ BitVec 32))) (Undefined!4481) (MissingVacant!4481 (index!20139 (_ BitVec 32))) )
))
(declare-fun lt!240841 () SeekEntryResult!4481)

(assert (=> b!524514 (= res!321542 (or (undefined!5293 lt!240841) (not (is-Intermediate!4481 lt!240841))))))

(declare-fun e!305892 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33317 0))(
  ( (array!33318 (arr!16007 (Array (_ BitVec 32) (_ BitVec 64))) (size!16371 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33317)

(declare-fun b!524515 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33317 (_ BitVec 32)) SeekEntryResult!4481)

(assert (=> b!524515 (= e!305892 (= (seekEntryOrOpen!0 (select (arr!16007 a!3235) j!176) a!3235 mask!3524) (Found!4481 j!176)))))

(declare-fun b!524516 () Bool)

(declare-fun e!305887 () Bool)

(assert (=> b!524516 (= e!305889 e!305887)))

(declare-fun res!321541 () Bool)

(assert (=> b!524516 (=> res!321541 e!305887)))

(declare-fun lt!240835 () (_ BitVec 32))

(assert (=> b!524516 (= res!321541 (or (bvsgt #b00000000000000000000000000000000 (x!49145 lt!240841)) (bvsgt (x!49145 lt!240841) #b01111111111111111111111111111110) (bvslt lt!240835 #b00000000000000000000000000000000) (bvsge lt!240835 (size!16371 a!3235)) (bvslt (index!20138 lt!240841) #b00000000000000000000000000000000) (bvsge (index!20138 lt!240841) (size!16371 a!3235)) (not (= lt!240841 (Intermediate!4481 false (index!20138 lt!240841) (x!49145 lt!240841))))))))

(declare-fun lt!240845 () Bool)

(declare-fun lt!240840 () (_ BitVec 64))

(assert (=> b!524516 (and (or lt!240845 (= lt!240840 #b1000000000000000000000000000000000000000000000000000000000000000)) (not lt!240845) (= lt!240840 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!524516 (= lt!240845 (= lt!240840 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!16390 0))(
  ( (Unit!16391) )
))
(declare-fun lt!240844 () Unit!16390)

(declare-fun e!305886 () Unit!16390)

(assert (=> b!524516 (= lt!240844 e!305886)))

(declare-fun c!61796 () Bool)

(assert (=> b!524516 (= c!61796 (= lt!240840 (select (arr!16007 a!3235) j!176)))))

(assert (=> b!524516 (= lt!240840 (select (arr!16007 a!3235) (index!20138 lt!240841)))))

(assert (=> b!524516 (and (bvslt (x!49145 lt!240841) #b01111111111111111111111111111110) (let ((bdg!15572 (select (arr!16007 a!3235) (index!20138 lt!240841)))) (or (= bdg!15572 (select (arr!16007 a!3235) j!176)) (= bdg!15572 #b0000000000000000000000000000000000000000000000000000000000000000) (= bdg!15572 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!524517 () Bool)

(declare-fun res!321535 () Bool)

(declare-fun e!305890 () Bool)

(assert (=> b!524517 (=> (not res!321535) (not e!305890))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33317 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524517 (= res!321535 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524518 () Bool)

(declare-fun res!321533 () Bool)

(assert (=> b!524518 (=> (not res!321533) (not e!305890))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!524518 (= res!321533 (and (= (size!16371 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16371 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16371 a!3235)) (not (= i!1204 j!176))))))

(declare-fun lt!240839 () array!33317)

(declare-fun lt!240838 () (_ BitVec 64))

(declare-fun b!524519 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33317 (_ BitVec 32)) SeekEntryResult!4481)

(assert (=> b!524519 (= e!305887 (not (= lt!240841 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240835 lt!240838 lt!240839 mask!3524))))))

(declare-fun b!524520 () Bool)

(declare-fun res!321537 () Bool)

(assert (=> b!524520 (=> (not res!321537) (not e!305890))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524520 (= res!321537 (validKeyInArray!0 (select (arr!16007 a!3235) j!176)))))

(declare-fun b!524521 () Bool)

(declare-fun Unit!16392 () Unit!16390)

(assert (=> b!524521 (= e!305886 Unit!16392)))

(declare-fun b!524522 () Bool)

(declare-fun Unit!16393 () Unit!16390)

(assert (=> b!524522 (= e!305886 Unit!16393)))

(declare-fun lt!240843 () Unit!16390)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33317 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16390)

(assert (=> b!524522 (= lt!240843 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240835 #b00000000000000000000000000000000 (index!20138 lt!240841) (x!49145 lt!240841) mask!3524))))

(declare-fun res!321538 () Bool)

(assert (=> b!524522 (= res!321538 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240835 lt!240838 lt!240839 mask!3524) (Intermediate!4481 false (index!20138 lt!240841) (x!49145 lt!240841))))))

(declare-fun e!305891 () Bool)

(assert (=> b!524522 (=> (not res!321538) (not e!305891))))

(assert (=> b!524522 e!305891))

(declare-fun b!524523 () Bool)

(declare-fun e!305888 () Bool)

(assert (=> b!524523 (= e!305890 e!305888)))

(declare-fun res!321540 () Bool)

(assert (=> b!524523 (=> (not res!321540) (not e!305888))))

(declare-fun lt!240837 () SeekEntryResult!4481)

(assert (=> b!524523 (= res!321540 (or (= lt!240837 (MissingZero!4481 i!1204)) (= lt!240837 (MissingVacant!4481 i!1204))))))

(assert (=> b!524523 (= lt!240837 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!524524 () Bool)

(assert (=> b!524524 (= e!305891 false)))

(declare-fun b!524526 () Bool)

(assert (=> b!524526 (= e!305888 (not e!305889))))

(declare-fun res!321544 () Bool)

(assert (=> b!524526 (=> res!321544 e!305889)))

(declare-fun lt!240842 () (_ BitVec 32))

(assert (=> b!524526 (= res!321544 (= lt!240841 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240842 lt!240838 lt!240839 mask!3524)))))

(assert (=> b!524526 (= lt!240841 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240835 (select (arr!16007 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524526 (= lt!240842 (toIndex!0 lt!240838 mask!3524))))

(assert (=> b!524526 (= lt!240838 (select (store (arr!16007 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!524526 (= lt!240835 (toIndex!0 (select (arr!16007 a!3235) j!176) mask!3524))))

(assert (=> b!524526 (= lt!240839 (array!33318 (store (arr!16007 a!3235) i!1204 k!2280) (size!16371 a!3235)))))

(assert (=> b!524526 e!305892))

(declare-fun res!321543 () Bool)

(assert (=> b!524526 (=> (not res!321543) (not e!305892))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33317 (_ BitVec 32)) Bool)

(assert (=> b!524526 (= res!321543 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240836 () Unit!16390)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33317 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16390)

(assert (=> b!524526 (= lt!240836 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524527 () Bool)

(declare-fun res!321536 () Bool)

(assert (=> b!524527 (=> (not res!321536) (not e!305890))))

(assert (=> b!524527 (= res!321536 (validKeyInArray!0 k!2280))))

(declare-fun b!524528 () Bool)

(declare-fun res!321545 () Bool)

(assert (=> b!524528 (=> (not res!321545) (not e!305888))))

(declare-datatypes ((List!10218 0))(
  ( (Nil!10215) (Cons!10214 (h!11145 (_ BitVec 64)) (t!16454 List!10218)) )
))
(declare-fun arrayNoDuplicates!0 (array!33317 (_ BitVec 32) List!10218) Bool)

(assert (=> b!524528 (= res!321545 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10215))))

(declare-fun b!524525 () Bool)

(declare-fun res!321534 () Bool)

(assert (=> b!524525 (=> (not res!321534) (not e!305888))))

(assert (=> b!524525 (= res!321534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!321539 () Bool)

(assert (=> start!47720 (=> (not res!321539) (not e!305890))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47720 (= res!321539 (validMask!0 mask!3524))))

(assert (=> start!47720 e!305890))

(assert (=> start!47720 true))

(declare-fun array_inv!11781 (array!33317) Bool)

(assert (=> start!47720 (array_inv!11781 a!3235)))

(assert (= (and start!47720 res!321539) b!524518))

(assert (= (and b!524518 res!321533) b!524520))

(assert (= (and b!524520 res!321537) b!524527))

(assert (= (and b!524527 res!321536) b!524517))

(assert (= (and b!524517 res!321535) b!524523))

(assert (= (and b!524523 res!321540) b!524525))

(assert (= (and b!524525 res!321534) b!524528))

(assert (= (and b!524528 res!321545) b!524526))

(assert (= (and b!524526 res!321543) b!524515))

(assert (= (and b!524526 (not res!321544)) b!524514))

(assert (= (and b!524514 (not res!321542)) b!524516))

(assert (= (and b!524516 c!61796) b!524522))

(assert (= (and b!524516 (not c!61796)) b!524521))

(assert (= (and b!524522 res!321538) b!524524))

(assert (= (and b!524516 (not res!321541)) b!524519))

(declare-fun m!505177 () Bool)

(assert (=> b!524525 m!505177))

(declare-fun m!505179 () Bool)

(assert (=> b!524528 m!505179))

(declare-fun m!505181 () Bool)

(assert (=> b!524515 m!505181))

(assert (=> b!524515 m!505181))

(declare-fun m!505183 () Bool)

(assert (=> b!524515 m!505183))

(declare-fun m!505185 () Bool)

(assert (=> b!524519 m!505185))

(declare-fun m!505187 () Bool)

(assert (=> start!47720 m!505187))

(declare-fun m!505189 () Bool)

(assert (=> start!47720 m!505189))

(declare-fun m!505191 () Bool)

(assert (=> b!524522 m!505191))

(assert (=> b!524522 m!505185))

(declare-fun m!505193 () Bool)

(assert (=> b!524527 m!505193))

(declare-fun m!505195 () Bool)

(assert (=> b!524526 m!505195))

(declare-fun m!505197 () Bool)

(assert (=> b!524526 m!505197))

(declare-fun m!505199 () Bool)

(assert (=> b!524526 m!505199))

(assert (=> b!524526 m!505181))

(declare-fun m!505201 () Bool)

(assert (=> b!524526 m!505201))

(assert (=> b!524526 m!505181))

(declare-fun m!505203 () Bool)

(assert (=> b!524526 m!505203))

(declare-fun m!505205 () Bool)

(assert (=> b!524526 m!505205))

(assert (=> b!524526 m!505181))

(declare-fun m!505207 () Bool)

(assert (=> b!524526 m!505207))

(declare-fun m!505209 () Bool)

(assert (=> b!524526 m!505209))

(declare-fun m!505211 () Bool)

(assert (=> b!524523 m!505211))

(declare-fun m!505213 () Bool)

(assert (=> b!524517 m!505213))

(assert (=> b!524516 m!505181))

(declare-fun m!505215 () Bool)

(assert (=> b!524516 m!505215))

(assert (=> b!524520 m!505181))

(assert (=> b!524520 m!505181))

(declare-fun m!505217 () Bool)

(assert (=> b!524520 m!505217))

(push 1)

