; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120524 () Bool)

(assert start!120524)

(declare-fun b!1402845 () Bool)

(declare-fun e!794375 () Bool)

(declare-fun lt!618144 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402845 (= e!794375 (validKeyInArray!0 lt!618144))))

(declare-fun res!941472 () Bool)

(declare-fun e!794370 () Bool)

(assert (=> start!120524 (=> (not res!941472) (not e!794370))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120524 (= res!941472 (validMask!0 mask!2840))))

(assert (=> start!120524 e!794370))

(assert (=> start!120524 true))

(declare-datatypes ((array!95851 0))(
  ( (array!95852 (arr!46272 (Array (_ BitVec 32) (_ BitVec 64))) (size!46823 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95851)

(declare-fun array_inv!35217 (array!95851) Bool)

(assert (=> start!120524 (array_inv!35217 a!2901)))

(declare-fun b!1402846 () Bool)

(declare-fun res!941469 () Bool)

(assert (=> b!1402846 (=> (not res!941469) (not e!794370))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1402846 (= res!941469 (and (= (size!46823 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46823 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46823 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402847 () Bool)

(declare-fun res!941465 () Bool)

(declare-fun e!794371 () Bool)

(assert (=> b!1402847 (=> res!941465 e!794371)))

(declare-fun lt!618143 () array!95851)

(declare-datatypes ((SeekEntryResult!10611 0))(
  ( (MissingZero!10611 (index!44820 (_ BitVec 32))) (Found!10611 (index!44821 (_ BitVec 32))) (Intermediate!10611 (undefined!11423 Bool) (index!44822 (_ BitVec 32)) (x!126441 (_ BitVec 32))) (Undefined!10611) (MissingVacant!10611 (index!44823 (_ BitVec 32))) )
))
(declare-fun lt!618151 () SeekEntryResult!10611)

(declare-fun lt!618150 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95851 (_ BitVec 32)) SeekEntryResult!10611)

(assert (=> b!1402847 (= res!941465 (not (= lt!618151 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!618150 lt!618144 lt!618143 mask!2840))))))

(declare-fun b!1402848 () Bool)

(declare-fun res!941468 () Bool)

(assert (=> b!1402848 (=> (not res!941468) (not e!794370))))

(assert (=> b!1402848 (= res!941468 (validKeyInArray!0 (select (arr!46272 a!2901) j!112)))))

(declare-fun b!1402849 () Bool)

(declare-fun res!941471 () Bool)

(assert (=> b!1402849 (=> (not res!941471) (not e!794370))))

(assert (=> b!1402849 (= res!941471 (validKeyInArray!0 (select (arr!46272 a!2901) i!1037)))))

(declare-fun b!1402850 () Bool)

(declare-fun res!941466 () Bool)

(assert (=> b!1402850 (=> (not res!941466) (not e!794370))))

(declare-datatypes ((List!32971 0))(
  ( (Nil!32968) (Cons!32967 (h!34215 (_ BitVec 64)) (t!47672 List!32971)) )
))
(declare-fun arrayNoDuplicates!0 (array!95851 (_ BitVec 32) List!32971) Bool)

(assert (=> b!1402850 (= res!941466 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32968))))

(declare-fun b!1402851 () Bool)

(declare-fun e!794372 () Bool)

(assert (=> b!1402851 (= e!794370 (not e!794372))))

(declare-fun res!941474 () Bool)

(assert (=> b!1402851 (=> res!941474 e!794372)))

(declare-fun lt!618146 () SeekEntryResult!10611)

(assert (=> b!1402851 (= res!941474 (or (not (is-Intermediate!10611 lt!618146)) (undefined!11423 lt!618146)))))

(declare-fun lt!618142 () SeekEntryResult!10611)

(assert (=> b!1402851 (= lt!618142 (Found!10611 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95851 (_ BitVec 32)) SeekEntryResult!10611)

(assert (=> b!1402851 (= lt!618142 (seekEntryOrOpen!0 (select (arr!46272 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95851 (_ BitVec 32)) Bool)

(assert (=> b!1402851 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47176 0))(
  ( (Unit!47177) )
))
(declare-fun lt!618145 () Unit!47176)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95851 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47176)

(assert (=> b!1402851 (= lt!618145 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402851 (= lt!618146 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!618150 (select (arr!46272 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402851 (= lt!618150 (toIndex!0 (select (arr!46272 a!2901) j!112) mask!2840))))

(declare-fun b!1402852 () Bool)

(declare-fun e!794373 () Bool)

(assert (=> b!1402852 (= e!794373 e!794371)))

(declare-fun res!941467 () Bool)

(assert (=> b!1402852 (=> res!941467 e!794371)))

(assert (=> b!1402852 (= res!941467 (or (bvslt (x!126441 lt!618146) #b00000000000000000000000000000000) (bvsgt (x!126441 lt!618146) #b01111111111111111111111111111110) (bvslt (x!126441 lt!618151) #b00000000000000000000000000000000) (bvsgt (x!126441 lt!618151) #b01111111111111111111111111111110) (bvslt lt!618150 #b00000000000000000000000000000000) (bvsge lt!618150 (size!46823 a!2901)) (bvslt (index!44822 lt!618146) #b00000000000000000000000000000000) (bvsge (index!44822 lt!618146) (size!46823 a!2901)) (bvslt (index!44822 lt!618151) #b00000000000000000000000000000000) (bvsge (index!44822 lt!618151) (size!46823 a!2901)) (not (= lt!618146 (Intermediate!10611 false (index!44822 lt!618146) (x!126441 lt!618146)))) (not (= lt!618151 (Intermediate!10611 false (index!44822 lt!618151) (x!126441 lt!618151))))))))

(declare-fun lt!618149 () SeekEntryResult!10611)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95851 (_ BitVec 32)) SeekEntryResult!10611)

(assert (=> b!1402852 (= lt!618149 (seekKeyOrZeroReturnVacant!0 (x!126441 lt!618151) (index!44822 lt!618151) (index!44822 lt!618151) (select (arr!46272 a!2901) j!112) lt!618143 mask!2840))))

(assert (=> b!1402852 (= lt!618149 (seekEntryOrOpen!0 lt!618144 lt!618143 mask!2840))))

(assert (=> b!1402852 (and (not (undefined!11423 lt!618151)) (= (index!44822 lt!618151) i!1037) (bvslt (x!126441 lt!618151) (x!126441 lt!618146)) (= (select (store (arr!46272 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44822 lt!618151)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!618147 () Unit!47176)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95851 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47176)

(assert (=> b!1402852 (= lt!618147 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!618150 (x!126441 lt!618146) (index!44822 lt!618146) (x!126441 lt!618151) (index!44822 lt!618151) (undefined!11423 lt!618151) mask!2840))))

(declare-fun b!1402853 () Bool)

(declare-fun res!941473 () Bool)

(assert (=> b!1402853 (=> (not res!941473) (not e!794370))))

(assert (=> b!1402853 (= res!941473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402854 () Bool)

(assert (=> b!1402854 (= e!794372 e!794373)))

(declare-fun res!941475 () Bool)

(assert (=> b!1402854 (=> res!941475 e!794373)))

(assert (=> b!1402854 (= res!941475 (or (= lt!618146 lt!618151) (not (is-Intermediate!10611 lt!618151))))))

(assert (=> b!1402854 (= lt!618151 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!618144 mask!2840) lt!618144 lt!618143 mask!2840))))

(assert (=> b!1402854 (= lt!618144 (select (store (arr!46272 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402854 (= lt!618143 (array!95852 (store (arr!46272 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46823 a!2901)))))

(declare-fun b!1402855 () Bool)

(assert (=> b!1402855 (= e!794371 e!794375)))

(declare-fun res!941470 () Bool)

(assert (=> b!1402855 (=> res!941470 e!794375)))

(assert (=> b!1402855 (= res!941470 (bvslt mask!2840 #b00000000000000000000000000000000))))

(assert (=> b!1402855 (= lt!618142 lt!618149)))

(declare-fun lt!618148 () Unit!47176)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95851 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47176)

(assert (=> b!1402855 (= lt!618148 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!618150 (x!126441 lt!618146) (index!44822 lt!618146) (x!126441 lt!618151) (index!44822 lt!618151) mask!2840))))

(assert (= (and start!120524 res!941472) b!1402846))

(assert (= (and b!1402846 res!941469) b!1402849))

(assert (= (and b!1402849 res!941471) b!1402848))

(assert (= (and b!1402848 res!941468) b!1402853))

(assert (= (and b!1402853 res!941473) b!1402850))

(assert (= (and b!1402850 res!941466) b!1402851))

(assert (= (and b!1402851 (not res!941474)) b!1402854))

(assert (= (and b!1402854 (not res!941475)) b!1402852))

(assert (= (and b!1402852 (not res!941467)) b!1402847))

(assert (= (and b!1402847 (not res!941465)) b!1402855))

(assert (= (and b!1402855 (not res!941470)) b!1402845))

(declare-fun m!1291319 () Bool)

(assert (=> b!1402855 m!1291319))

(declare-fun m!1291321 () Bool)

(assert (=> b!1402845 m!1291321))

(declare-fun m!1291323 () Bool)

(assert (=> b!1402848 m!1291323))

(assert (=> b!1402848 m!1291323))

(declare-fun m!1291325 () Bool)

(assert (=> b!1402848 m!1291325))

(declare-fun m!1291327 () Bool)

(assert (=> b!1402847 m!1291327))

(declare-fun m!1291329 () Bool)

(assert (=> b!1402850 m!1291329))

(declare-fun m!1291331 () Bool)

(assert (=> b!1402853 m!1291331))

(assert (=> b!1402851 m!1291323))

(declare-fun m!1291333 () Bool)

(assert (=> b!1402851 m!1291333))

(assert (=> b!1402851 m!1291323))

(declare-fun m!1291335 () Bool)

(assert (=> b!1402851 m!1291335))

(assert (=> b!1402851 m!1291323))

(declare-fun m!1291337 () Bool)

(assert (=> b!1402851 m!1291337))

(assert (=> b!1402851 m!1291323))

(declare-fun m!1291339 () Bool)

(assert (=> b!1402851 m!1291339))

(declare-fun m!1291341 () Bool)

(assert (=> b!1402851 m!1291341))

(declare-fun m!1291343 () Bool)

(assert (=> start!120524 m!1291343))

(declare-fun m!1291345 () Bool)

(assert (=> start!120524 m!1291345))

(declare-fun m!1291347 () Bool)

(assert (=> b!1402854 m!1291347))

(assert (=> b!1402854 m!1291347))

(declare-fun m!1291349 () Bool)

(assert (=> b!1402854 m!1291349))

(declare-fun m!1291351 () Bool)

(assert (=> b!1402854 m!1291351))

(declare-fun m!1291353 () Bool)

(assert (=> b!1402854 m!1291353))

(assert (=> b!1402852 m!1291323))

(declare-fun m!1291355 () Bool)

(assert (=> b!1402852 m!1291355))

(declare-fun m!1291357 () Bool)

(assert (=> b!1402852 m!1291357))

(declare-fun m!1291359 () Bool)

(assert (=> b!1402852 m!1291359))

(assert (=> b!1402852 m!1291351))

(declare-fun m!1291361 () Bool)

(assert (=> b!1402852 m!1291361))

(assert (=> b!1402852 m!1291323))

(declare-fun m!1291363 () Bool)

(assert (=> b!1402849 m!1291363))

(assert (=> b!1402849 m!1291363))

(declare-fun m!1291365 () Bool)

(assert (=> b!1402849 m!1291365))

(push 1)

