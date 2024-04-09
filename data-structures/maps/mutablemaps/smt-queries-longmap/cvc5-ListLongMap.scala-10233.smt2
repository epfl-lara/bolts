; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120490 () Bool)

(assert start!120490)

(declare-fun b!1402327 () Bool)

(declare-fun res!940956 () Bool)

(declare-fun e!794109 () Bool)

(assert (=> b!1402327 (=> res!940956 e!794109)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!617639 () (_ BitVec 32))

(declare-datatypes ((array!95817 0))(
  ( (array!95818 (arr!46255 (Array (_ BitVec 32) (_ BitVec 64))) (size!46806 (_ BitVec 32))) )
))
(declare-fun lt!617636 () array!95817)

(declare-fun lt!617641 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!10594 0))(
  ( (MissingZero!10594 (index!44752 (_ BitVec 32))) (Found!10594 (index!44753 (_ BitVec 32))) (Intermediate!10594 (undefined!11406 Bool) (index!44754 (_ BitVec 32)) (x!126384 (_ BitVec 32))) (Undefined!10594) (MissingVacant!10594 (index!44755 (_ BitVec 32))) )
))
(declare-fun lt!617633 () SeekEntryResult!10594)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95817 (_ BitVec 32)) SeekEntryResult!10594)

(assert (=> b!1402327 (= res!940956 (not (= lt!617633 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617639 lt!617641 lt!617636 mask!2840))))))

(declare-fun b!1402328 () Bool)

(declare-fun e!794107 () Bool)

(declare-fun e!794108 () Bool)

(assert (=> b!1402328 (= e!794107 e!794108)))

(declare-fun res!940954 () Bool)

(assert (=> b!1402328 (=> res!940954 e!794108)))

(declare-fun lt!617638 () SeekEntryResult!10594)

(assert (=> b!1402328 (= res!940954 (or (= lt!617638 lt!617633) (not (is-Intermediate!10594 lt!617633))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402328 (= lt!617633 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617641 mask!2840) lt!617641 lt!617636 mask!2840))))

(declare-fun a!2901 () array!95817)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1402328 (= lt!617641 (select (store (arr!46255 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402328 (= lt!617636 (array!95818 (store (arr!46255 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46806 a!2901)))))

(declare-fun res!940955 () Bool)

(declare-fun e!794110 () Bool)

(assert (=> start!120490 (=> (not res!940955) (not e!794110))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120490 (= res!940955 (validMask!0 mask!2840))))

(assert (=> start!120490 e!794110))

(assert (=> start!120490 true))

(declare-fun array_inv!35200 (array!95817) Bool)

(assert (=> start!120490 (array_inv!35200 a!2901)))

(declare-fun b!1402329 () Bool)

(assert (=> b!1402329 (= e!794110 (not e!794107))))

(declare-fun res!940949 () Bool)

(assert (=> b!1402329 (=> res!940949 e!794107)))

(assert (=> b!1402329 (= res!940949 (or (not (is-Intermediate!10594 lt!617638)) (undefined!11406 lt!617638)))))

(declare-fun lt!617634 () SeekEntryResult!10594)

(assert (=> b!1402329 (= lt!617634 (Found!10594 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95817 (_ BitVec 32)) SeekEntryResult!10594)

(assert (=> b!1402329 (= lt!617634 (seekEntryOrOpen!0 (select (arr!46255 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95817 (_ BitVec 32)) Bool)

(assert (=> b!1402329 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47142 0))(
  ( (Unit!47143) )
))
(declare-fun lt!617640 () Unit!47142)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95817 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47142)

(assert (=> b!1402329 (= lt!617640 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402329 (= lt!617638 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617639 (select (arr!46255 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402329 (= lt!617639 (toIndex!0 (select (arr!46255 a!2901) j!112) mask!2840))))

(declare-fun b!1402330 () Bool)

(assert (=> b!1402330 (= e!794109 true)))

(declare-fun lt!617635 () SeekEntryResult!10594)

(assert (=> b!1402330 (= lt!617634 lt!617635)))

(declare-fun lt!617632 () Unit!47142)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95817 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47142)

(assert (=> b!1402330 (= lt!617632 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617639 (x!126384 lt!617638) (index!44754 lt!617638) (x!126384 lt!617633) (index!44754 lt!617633) mask!2840))))

(declare-fun b!1402331 () Bool)

(assert (=> b!1402331 (= e!794108 e!794109)))

(declare-fun res!940947 () Bool)

(assert (=> b!1402331 (=> res!940947 e!794109)))

(assert (=> b!1402331 (= res!940947 (or (bvslt (x!126384 lt!617638) #b00000000000000000000000000000000) (bvsgt (x!126384 lt!617638) #b01111111111111111111111111111110) (bvslt (x!126384 lt!617633) #b00000000000000000000000000000000) (bvsgt (x!126384 lt!617633) #b01111111111111111111111111111110) (bvslt lt!617639 #b00000000000000000000000000000000) (bvsge lt!617639 (size!46806 a!2901)) (bvslt (index!44754 lt!617638) #b00000000000000000000000000000000) (bvsge (index!44754 lt!617638) (size!46806 a!2901)) (bvslt (index!44754 lt!617633) #b00000000000000000000000000000000) (bvsge (index!44754 lt!617633) (size!46806 a!2901)) (not (= lt!617638 (Intermediate!10594 false (index!44754 lt!617638) (x!126384 lt!617638)))) (not (= lt!617633 (Intermediate!10594 false (index!44754 lt!617633) (x!126384 lt!617633))))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95817 (_ BitVec 32)) SeekEntryResult!10594)

(assert (=> b!1402331 (= lt!617635 (seekKeyOrZeroReturnVacant!0 (x!126384 lt!617633) (index!44754 lt!617633) (index!44754 lt!617633) (select (arr!46255 a!2901) j!112) lt!617636 mask!2840))))

(assert (=> b!1402331 (= lt!617635 (seekEntryOrOpen!0 lt!617641 lt!617636 mask!2840))))

(assert (=> b!1402331 (and (not (undefined!11406 lt!617633)) (= (index!44754 lt!617633) i!1037) (bvslt (x!126384 lt!617633) (x!126384 lt!617638)) (= (select (store (arr!46255 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44754 lt!617633)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!617637 () Unit!47142)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95817 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47142)

(assert (=> b!1402331 (= lt!617637 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617639 (x!126384 lt!617638) (index!44754 lt!617638) (x!126384 lt!617633) (index!44754 lt!617633) (undefined!11406 lt!617633) mask!2840))))

(declare-fun b!1402332 () Bool)

(declare-fun res!940952 () Bool)

(assert (=> b!1402332 (=> (not res!940952) (not e!794110))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402332 (= res!940952 (validKeyInArray!0 (select (arr!46255 a!2901) i!1037)))))

(declare-fun b!1402333 () Bool)

(declare-fun res!940953 () Bool)

(assert (=> b!1402333 (=> (not res!940953) (not e!794110))))

(assert (=> b!1402333 (= res!940953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402334 () Bool)

(declare-fun res!940950 () Bool)

(assert (=> b!1402334 (=> (not res!940950) (not e!794110))))

(assert (=> b!1402334 (= res!940950 (validKeyInArray!0 (select (arr!46255 a!2901) j!112)))))

(declare-fun b!1402335 () Bool)

(declare-fun res!940948 () Bool)

(assert (=> b!1402335 (=> (not res!940948) (not e!794110))))

(assert (=> b!1402335 (= res!940948 (and (= (size!46806 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46806 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46806 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402336 () Bool)

(declare-fun res!940951 () Bool)

(assert (=> b!1402336 (=> (not res!940951) (not e!794110))))

(declare-datatypes ((List!32954 0))(
  ( (Nil!32951) (Cons!32950 (h!34198 (_ BitVec 64)) (t!47655 List!32954)) )
))
(declare-fun arrayNoDuplicates!0 (array!95817 (_ BitVec 32) List!32954) Bool)

(assert (=> b!1402336 (= res!940951 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32951))))

(assert (= (and start!120490 res!940955) b!1402335))

(assert (= (and b!1402335 res!940948) b!1402332))

(assert (= (and b!1402332 res!940952) b!1402334))

(assert (= (and b!1402334 res!940950) b!1402333))

(assert (= (and b!1402333 res!940953) b!1402336))

(assert (= (and b!1402336 res!940951) b!1402329))

(assert (= (and b!1402329 (not res!940949)) b!1402328))

(assert (= (and b!1402328 (not res!940954)) b!1402331))

(assert (= (and b!1402331 (not res!940947)) b!1402327))

(assert (= (and b!1402327 (not res!940956)) b!1402330))

(declare-fun m!1290533 () Bool)

(assert (=> b!1402333 m!1290533))

(declare-fun m!1290535 () Bool)

(assert (=> b!1402328 m!1290535))

(assert (=> b!1402328 m!1290535))

(declare-fun m!1290537 () Bool)

(assert (=> b!1402328 m!1290537))

(declare-fun m!1290539 () Bool)

(assert (=> b!1402328 m!1290539))

(declare-fun m!1290541 () Bool)

(assert (=> b!1402328 m!1290541))

(declare-fun m!1290543 () Bool)

(assert (=> b!1402332 m!1290543))

(assert (=> b!1402332 m!1290543))

(declare-fun m!1290545 () Bool)

(assert (=> b!1402332 m!1290545))

(declare-fun m!1290547 () Bool)

(assert (=> b!1402336 m!1290547))

(declare-fun m!1290549 () Bool)

(assert (=> b!1402331 m!1290549))

(declare-fun m!1290551 () Bool)

(assert (=> b!1402331 m!1290551))

(declare-fun m!1290553 () Bool)

(assert (=> b!1402331 m!1290553))

(assert (=> b!1402331 m!1290551))

(declare-fun m!1290555 () Bool)

(assert (=> b!1402331 m!1290555))

(declare-fun m!1290557 () Bool)

(assert (=> b!1402331 m!1290557))

(assert (=> b!1402331 m!1290539))

(assert (=> b!1402329 m!1290551))

(declare-fun m!1290559 () Bool)

(assert (=> b!1402329 m!1290559))

(assert (=> b!1402329 m!1290551))

(declare-fun m!1290561 () Bool)

(assert (=> b!1402329 m!1290561))

(assert (=> b!1402329 m!1290551))

(declare-fun m!1290563 () Bool)

(assert (=> b!1402329 m!1290563))

(assert (=> b!1402329 m!1290551))

(declare-fun m!1290565 () Bool)

(assert (=> b!1402329 m!1290565))

(declare-fun m!1290567 () Bool)

(assert (=> b!1402329 m!1290567))

(declare-fun m!1290569 () Bool)

(assert (=> b!1402327 m!1290569))

(declare-fun m!1290571 () Bool)

(assert (=> start!120490 m!1290571))

(declare-fun m!1290573 () Bool)

(assert (=> start!120490 m!1290573))

(assert (=> b!1402334 m!1290551))

(assert (=> b!1402334 m!1290551))

(declare-fun m!1290575 () Bool)

(assert (=> b!1402334 m!1290575))

(declare-fun m!1290577 () Bool)

(assert (=> b!1402330 m!1290577))

(push 1)

