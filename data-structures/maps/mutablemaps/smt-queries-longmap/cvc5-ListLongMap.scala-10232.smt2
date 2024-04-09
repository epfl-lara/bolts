; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120484 () Bool)

(assert start!120484)

(declare-fun b!1402237 () Bool)

(declare-fun res!940858 () Bool)

(declare-fun e!794065 () Bool)

(assert (=> b!1402237 (=> res!940858 e!794065)))

(declare-datatypes ((SeekEntryResult!10591 0))(
  ( (MissingZero!10591 (index!44740 (_ BitVec 32))) (Found!10591 (index!44741 (_ BitVec 32))) (Intermediate!10591 (undefined!11403 Bool) (index!44742 (_ BitVec 32)) (x!126373 (_ BitVec 32))) (Undefined!10591) (MissingVacant!10591 (index!44743 (_ BitVec 32))) )
))
(declare-fun lt!617545 () SeekEntryResult!10591)

(declare-fun lt!617542 () (_ BitVec 32))

(declare-fun lt!617544 () (_ BitVec 64))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95811 0))(
  ( (array!95812 (arr!46252 (Array (_ BitVec 32) (_ BitVec 64))) (size!46803 (_ BitVec 32))) )
))
(declare-fun lt!617547 () array!95811)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95811 (_ BitVec 32)) SeekEntryResult!10591)

(assert (=> b!1402237 (= res!940858 (not (= lt!617545 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617542 lt!617544 lt!617547 mask!2840))))))

(declare-fun b!1402238 () Bool)

(declare-fun res!940861 () Bool)

(declare-fun e!794064 () Bool)

(assert (=> b!1402238 (=> (not res!940861) (not e!794064))))

(declare-fun a!2901 () array!95811)

(declare-datatypes ((List!32951 0))(
  ( (Nil!32948) (Cons!32947 (h!34195 (_ BitVec 64)) (t!47652 List!32951)) )
))
(declare-fun arrayNoDuplicates!0 (array!95811 (_ BitVec 32) List!32951) Bool)

(assert (=> b!1402238 (= res!940861 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32948))))

(declare-fun b!1402239 () Bool)

(declare-fun res!940865 () Bool)

(assert (=> b!1402239 (=> (not res!940865) (not e!794064))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95811 (_ BitVec 32)) Bool)

(assert (=> b!1402239 (= res!940865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402240 () Bool)

(declare-fun e!794062 () Bool)

(declare-fun e!794066 () Bool)

(assert (=> b!1402240 (= e!794062 e!794066)))

(declare-fun res!940862 () Bool)

(assert (=> b!1402240 (=> res!940862 e!794066)))

(declare-fun lt!617550 () SeekEntryResult!10591)

(assert (=> b!1402240 (= res!940862 (or (= lt!617550 lt!617545) (not (is-Intermediate!10591 lt!617545))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402240 (= lt!617545 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617544 mask!2840) lt!617544 lt!617547 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1402240 (= lt!617544 (select (store (arr!46252 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402240 (= lt!617547 (array!95812 (store (arr!46252 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46803 a!2901)))))

(declare-fun res!940864 () Bool)

(assert (=> start!120484 (=> (not res!940864) (not e!794064))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120484 (= res!940864 (validMask!0 mask!2840))))

(assert (=> start!120484 e!794064))

(assert (=> start!120484 true))

(declare-fun array_inv!35197 (array!95811) Bool)

(assert (=> start!120484 (array_inv!35197 a!2901)))

(declare-fun b!1402241 () Bool)

(declare-fun res!940866 () Bool)

(assert (=> b!1402241 (=> (not res!940866) (not e!794064))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402241 (= res!940866 (validKeyInArray!0 (select (arr!46252 a!2901) i!1037)))))

(declare-fun b!1402242 () Bool)

(declare-fun res!940863 () Bool)

(assert (=> b!1402242 (=> (not res!940863) (not e!794064))))

(assert (=> b!1402242 (= res!940863 (validKeyInArray!0 (select (arr!46252 a!2901) j!112)))))

(declare-fun b!1402243 () Bool)

(assert (=> b!1402243 (= e!794064 (not e!794062))))

(declare-fun res!940859 () Bool)

(assert (=> b!1402243 (=> res!940859 e!794062)))

(assert (=> b!1402243 (= res!940859 (or (not (is-Intermediate!10591 lt!617550)) (undefined!11403 lt!617550)))))

(declare-fun lt!617543 () SeekEntryResult!10591)

(assert (=> b!1402243 (= lt!617543 (Found!10591 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95811 (_ BitVec 32)) SeekEntryResult!10591)

(assert (=> b!1402243 (= lt!617543 (seekEntryOrOpen!0 (select (arr!46252 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402243 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47136 0))(
  ( (Unit!47137) )
))
(declare-fun lt!617549 () Unit!47136)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95811 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47136)

(assert (=> b!1402243 (= lt!617549 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402243 (= lt!617550 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617542 (select (arr!46252 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402243 (= lt!617542 (toIndex!0 (select (arr!46252 a!2901) j!112) mask!2840))))

(declare-fun b!1402244 () Bool)

(assert (=> b!1402244 (= e!794066 e!794065)))

(declare-fun res!940860 () Bool)

(assert (=> b!1402244 (=> res!940860 e!794065)))

(assert (=> b!1402244 (= res!940860 (or (bvslt (x!126373 lt!617550) #b00000000000000000000000000000000) (bvsgt (x!126373 lt!617550) #b01111111111111111111111111111110) (bvslt (x!126373 lt!617545) #b00000000000000000000000000000000) (bvsgt (x!126373 lt!617545) #b01111111111111111111111111111110) (bvslt lt!617542 #b00000000000000000000000000000000) (bvsge lt!617542 (size!46803 a!2901)) (bvslt (index!44742 lt!617550) #b00000000000000000000000000000000) (bvsge (index!44742 lt!617550) (size!46803 a!2901)) (bvslt (index!44742 lt!617545) #b00000000000000000000000000000000) (bvsge (index!44742 lt!617545) (size!46803 a!2901)) (not (= lt!617550 (Intermediate!10591 false (index!44742 lt!617550) (x!126373 lt!617550)))) (not (= lt!617545 (Intermediate!10591 false (index!44742 lt!617545) (x!126373 lt!617545))))))))

(declare-fun lt!617551 () SeekEntryResult!10591)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95811 (_ BitVec 32)) SeekEntryResult!10591)

(assert (=> b!1402244 (= lt!617551 (seekKeyOrZeroReturnVacant!0 (x!126373 lt!617545) (index!44742 lt!617545) (index!44742 lt!617545) (select (arr!46252 a!2901) j!112) lt!617547 mask!2840))))

(assert (=> b!1402244 (= lt!617551 (seekEntryOrOpen!0 lt!617544 lt!617547 mask!2840))))

(assert (=> b!1402244 (and (not (undefined!11403 lt!617545)) (= (index!44742 lt!617545) i!1037) (bvslt (x!126373 lt!617545) (x!126373 lt!617550)) (= (select (store (arr!46252 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44742 lt!617545)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!617548 () Unit!47136)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95811 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47136)

(assert (=> b!1402244 (= lt!617548 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617542 (x!126373 lt!617550) (index!44742 lt!617550) (x!126373 lt!617545) (index!44742 lt!617545) (undefined!11403 lt!617545) mask!2840))))

(declare-fun b!1402245 () Bool)

(assert (=> b!1402245 (= e!794065 (bvsge mask!2840 #b00000000000000000000000000000000))))

(assert (=> b!1402245 (= lt!617543 lt!617551)))

(declare-fun lt!617546 () Unit!47136)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95811 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47136)

(assert (=> b!1402245 (= lt!617546 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617542 (x!126373 lt!617550) (index!44742 lt!617550) (x!126373 lt!617545) (index!44742 lt!617545) mask!2840))))

(declare-fun b!1402246 () Bool)

(declare-fun res!940857 () Bool)

(assert (=> b!1402246 (=> (not res!940857) (not e!794064))))

(assert (=> b!1402246 (= res!940857 (and (= (size!46803 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46803 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46803 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120484 res!940864) b!1402246))

(assert (= (and b!1402246 res!940857) b!1402241))

(assert (= (and b!1402241 res!940866) b!1402242))

(assert (= (and b!1402242 res!940863) b!1402239))

(assert (= (and b!1402239 res!940865) b!1402238))

(assert (= (and b!1402238 res!940861) b!1402243))

(assert (= (and b!1402243 (not res!940859)) b!1402240))

(assert (= (and b!1402240 (not res!940862)) b!1402244))

(assert (= (and b!1402244 (not res!940860)) b!1402237))

(assert (= (and b!1402237 (not res!940858)) b!1402245))

(declare-fun m!1290395 () Bool)

(assert (=> b!1402243 m!1290395))

(declare-fun m!1290397 () Bool)

(assert (=> b!1402243 m!1290397))

(assert (=> b!1402243 m!1290395))

(declare-fun m!1290399 () Bool)

(assert (=> b!1402243 m!1290399))

(assert (=> b!1402243 m!1290395))

(declare-fun m!1290401 () Bool)

(assert (=> b!1402243 m!1290401))

(declare-fun m!1290403 () Bool)

(assert (=> b!1402243 m!1290403))

(assert (=> b!1402243 m!1290395))

(declare-fun m!1290405 () Bool)

(assert (=> b!1402243 m!1290405))

(declare-fun m!1290407 () Bool)

(assert (=> b!1402237 m!1290407))

(assert (=> b!1402242 m!1290395))

(assert (=> b!1402242 m!1290395))

(declare-fun m!1290409 () Bool)

(assert (=> b!1402242 m!1290409))

(declare-fun m!1290411 () Bool)

(assert (=> start!120484 m!1290411))

(declare-fun m!1290413 () Bool)

(assert (=> start!120484 m!1290413))

(declare-fun m!1290415 () Bool)

(assert (=> b!1402239 m!1290415))

(declare-fun m!1290417 () Bool)

(assert (=> b!1402238 m!1290417))

(declare-fun m!1290419 () Bool)

(assert (=> b!1402240 m!1290419))

(assert (=> b!1402240 m!1290419))

(declare-fun m!1290421 () Bool)

(assert (=> b!1402240 m!1290421))

(declare-fun m!1290423 () Bool)

(assert (=> b!1402240 m!1290423))

(declare-fun m!1290425 () Bool)

(assert (=> b!1402240 m!1290425))

(declare-fun m!1290427 () Bool)

(assert (=> b!1402245 m!1290427))

(declare-fun m!1290429 () Bool)

(assert (=> b!1402241 m!1290429))

(assert (=> b!1402241 m!1290429))

(declare-fun m!1290431 () Bool)

(assert (=> b!1402241 m!1290431))

(declare-fun m!1290433 () Bool)

(assert (=> b!1402244 m!1290433))

(assert (=> b!1402244 m!1290395))

(declare-fun m!1290435 () Bool)

(assert (=> b!1402244 m!1290435))

(assert (=> b!1402244 m!1290395))

(declare-fun m!1290437 () Bool)

(assert (=> b!1402244 m!1290437))

(declare-fun m!1290439 () Bool)

(assert (=> b!1402244 m!1290439))

(assert (=> b!1402244 m!1290423))

(push 1)

