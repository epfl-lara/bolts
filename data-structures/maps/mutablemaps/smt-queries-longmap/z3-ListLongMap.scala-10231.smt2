; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120480 () Bool)

(assert start!120480)

(declare-fun b!1402177 () Bool)

(declare-fun res!940799 () Bool)

(declare-fun e!794035 () Bool)

(assert (=> b!1402177 (=> (not res!940799) (not e!794035))))

(declare-datatypes ((array!95807 0))(
  ( (array!95808 (arr!46250 (Array (_ BitVec 32) (_ BitVec 64))) (size!46801 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95807)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402177 (= res!940799 (validKeyInArray!0 (select (arr!46250 a!2901) i!1037)))))

(declare-fun b!1402178 () Bool)

(declare-fun e!794034 () Bool)

(assert (=> b!1402178 (= e!794035 (not e!794034))))

(declare-fun res!940801 () Bool)

(assert (=> b!1402178 (=> res!940801 e!794034)))

(declare-datatypes ((SeekEntryResult!10589 0))(
  ( (MissingZero!10589 (index!44732 (_ BitVec 32))) (Found!10589 (index!44733 (_ BitVec 32))) (Intermediate!10589 (undefined!11401 Bool) (index!44734 (_ BitVec 32)) (x!126363 (_ BitVec 32))) (Undefined!10589) (MissingVacant!10589 (index!44735 (_ BitVec 32))) )
))
(declare-fun lt!617483 () SeekEntryResult!10589)

(get-info :version)

(assert (=> b!1402178 (= res!940801 (or (not ((_ is Intermediate!10589) lt!617483)) (undefined!11401 lt!617483)))))

(declare-fun lt!617490 () SeekEntryResult!10589)

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1402178 (= lt!617490 (Found!10589 j!112))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95807 (_ BitVec 32)) SeekEntryResult!10589)

(assert (=> b!1402178 (= lt!617490 (seekEntryOrOpen!0 (select (arr!46250 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95807 (_ BitVec 32)) Bool)

(assert (=> b!1402178 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47132 0))(
  ( (Unit!47133) )
))
(declare-fun lt!617485 () Unit!47132)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95807 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47132)

(assert (=> b!1402178 (= lt!617485 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!617482 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95807 (_ BitVec 32)) SeekEntryResult!10589)

(assert (=> b!1402178 (= lt!617483 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617482 (select (arr!46250 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402178 (= lt!617482 (toIndex!0 (select (arr!46250 a!2901) j!112) mask!2840))))

(declare-fun b!1402179 () Bool)

(declare-fun res!940797 () Bool)

(assert (=> b!1402179 (=> (not res!940797) (not e!794035))))

(assert (=> b!1402179 (= res!940797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402180 () Bool)

(declare-fun e!794032 () Bool)

(declare-fun e!794036 () Bool)

(assert (=> b!1402180 (= e!794032 e!794036)))

(declare-fun res!940804 () Bool)

(assert (=> b!1402180 (=> res!940804 e!794036)))

(declare-fun lt!617488 () SeekEntryResult!10589)

(assert (=> b!1402180 (= res!940804 (or (bvslt (x!126363 lt!617483) #b00000000000000000000000000000000) (bvsgt (x!126363 lt!617483) #b01111111111111111111111111111110) (bvslt (x!126363 lt!617488) #b00000000000000000000000000000000) (bvsgt (x!126363 lt!617488) #b01111111111111111111111111111110) (bvslt lt!617482 #b00000000000000000000000000000000) (bvsge lt!617482 (size!46801 a!2901)) (bvslt (index!44734 lt!617483) #b00000000000000000000000000000000) (bvsge (index!44734 lt!617483) (size!46801 a!2901)) (bvslt (index!44734 lt!617488) #b00000000000000000000000000000000) (bvsge (index!44734 lt!617488) (size!46801 a!2901)) (not (= lt!617483 (Intermediate!10589 false (index!44734 lt!617483) (x!126363 lt!617483)))) (not (= lt!617488 (Intermediate!10589 false (index!44734 lt!617488) (x!126363 lt!617488))))))))

(declare-fun lt!617487 () array!95807)

(declare-fun lt!617489 () SeekEntryResult!10589)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95807 (_ BitVec 32)) SeekEntryResult!10589)

(assert (=> b!1402180 (= lt!617489 (seekKeyOrZeroReturnVacant!0 (x!126363 lt!617488) (index!44734 lt!617488) (index!44734 lt!617488) (select (arr!46250 a!2901) j!112) lt!617487 mask!2840))))

(declare-fun lt!617486 () (_ BitVec 64))

(assert (=> b!1402180 (= lt!617489 (seekEntryOrOpen!0 lt!617486 lt!617487 mask!2840))))

(assert (=> b!1402180 (and (not (undefined!11401 lt!617488)) (= (index!44734 lt!617488) i!1037) (bvslt (x!126363 lt!617488) (x!126363 lt!617483)) (= (select (store (arr!46250 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44734 lt!617488)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!617491 () Unit!47132)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95807 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47132)

(assert (=> b!1402180 (= lt!617491 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617482 (x!126363 lt!617483) (index!44734 lt!617483) (x!126363 lt!617488) (index!44734 lt!617488) (undefined!11401 lt!617488) mask!2840))))

(declare-fun b!1402181 () Bool)

(assert (=> b!1402181 (= e!794036 true)))

(assert (=> b!1402181 (= lt!617490 lt!617489)))

(declare-fun lt!617484 () Unit!47132)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95807 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47132)

(assert (=> b!1402181 (= lt!617484 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617482 (x!126363 lt!617483) (index!44734 lt!617483) (x!126363 lt!617488) (index!44734 lt!617488) mask!2840))))

(declare-fun b!1402182 () Bool)

(declare-fun res!940806 () Bool)

(assert (=> b!1402182 (=> res!940806 e!794036)))

(assert (=> b!1402182 (= res!940806 (not (= lt!617488 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617482 lt!617486 lt!617487 mask!2840))))))

(declare-fun b!1402183 () Bool)

(declare-fun res!940805 () Bool)

(assert (=> b!1402183 (=> (not res!940805) (not e!794035))))

(declare-datatypes ((List!32949 0))(
  ( (Nil!32946) (Cons!32945 (h!34193 (_ BitVec 64)) (t!47650 List!32949)) )
))
(declare-fun arrayNoDuplicates!0 (array!95807 (_ BitVec 32) List!32949) Bool)

(assert (=> b!1402183 (= res!940805 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32946))))

(declare-fun res!940798 () Bool)

(assert (=> start!120480 (=> (not res!940798) (not e!794035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120480 (= res!940798 (validMask!0 mask!2840))))

(assert (=> start!120480 e!794035))

(assert (=> start!120480 true))

(declare-fun array_inv!35195 (array!95807) Bool)

(assert (=> start!120480 (array_inv!35195 a!2901)))

(declare-fun b!1402184 () Bool)

(declare-fun res!940802 () Bool)

(assert (=> b!1402184 (=> (not res!940802) (not e!794035))))

(assert (=> b!1402184 (= res!940802 (validKeyInArray!0 (select (arr!46250 a!2901) j!112)))))

(declare-fun b!1402185 () Bool)

(declare-fun res!940800 () Bool)

(assert (=> b!1402185 (=> (not res!940800) (not e!794035))))

(assert (=> b!1402185 (= res!940800 (and (= (size!46801 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46801 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46801 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402186 () Bool)

(assert (=> b!1402186 (= e!794034 e!794032)))

(declare-fun res!940803 () Bool)

(assert (=> b!1402186 (=> res!940803 e!794032)))

(assert (=> b!1402186 (= res!940803 (or (= lt!617483 lt!617488) (not ((_ is Intermediate!10589) lt!617488))))))

(assert (=> b!1402186 (= lt!617488 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617486 mask!2840) lt!617486 lt!617487 mask!2840))))

(assert (=> b!1402186 (= lt!617486 (select (store (arr!46250 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402186 (= lt!617487 (array!95808 (store (arr!46250 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46801 a!2901)))))

(assert (= (and start!120480 res!940798) b!1402185))

(assert (= (and b!1402185 res!940800) b!1402177))

(assert (= (and b!1402177 res!940799) b!1402184))

(assert (= (and b!1402184 res!940802) b!1402179))

(assert (= (and b!1402179 res!940797) b!1402183))

(assert (= (and b!1402183 res!940805) b!1402178))

(assert (= (and b!1402178 (not res!940801)) b!1402186))

(assert (= (and b!1402186 (not res!940803)) b!1402180))

(assert (= (and b!1402180 (not res!940804)) b!1402182))

(assert (= (and b!1402182 (not res!940806)) b!1402181))

(declare-fun m!1290303 () Bool)

(assert (=> b!1402186 m!1290303))

(assert (=> b!1402186 m!1290303))

(declare-fun m!1290305 () Bool)

(assert (=> b!1402186 m!1290305))

(declare-fun m!1290307 () Bool)

(assert (=> b!1402186 m!1290307))

(declare-fun m!1290309 () Bool)

(assert (=> b!1402186 m!1290309))

(declare-fun m!1290311 () Bool)

(assert (=> b!1402182 m!1290311))

(declare-fun m!1290313 () Bool)

(assert (=> start!120480 m!1290313))

(declare-fun m!1290315 () Bool)

(assert (=> start!120480 m!1290315))

(declare-fun m!1290317 () Bool)

(assert (=> b!1402184 m!1290317))

(assert (=> b!1402184 m!1290317))

(declare-fun m!1290319 () Bool)

(assert (=> b!1402184 m!1290319))

(assert (=> b!1402180 m!1290317))

(declare-fun m!1290321 () Bool)

(assert (=> b!1402180 m!1290321))

(declare-fun m!1290323 () Bool)

(assert (=> b!1402180 m!1290323))

(declare-fun m!1290325 () Bool)

(assert (=> b!1402180 m!1290325))

(assert (=> b!1402180 m!1290307))

(assert (=> b!1402180 m!1290317))

(declare-fun m!1290327 () Bool)

(assert (=> b!1402180 m!1290327))

(assert (=> b!1402178 m!1290317))

(declare-fun m!1290329 () Bool)

(assert (=> b!1402178 m!1290329))

(assert (=> b!1402178 m!1290317))

(declare-fun m!1290331 () Bool)

(assert (=> b!1402178 m!1290331))

(assert (=> b!1402178 m!1290317))

(declare-fun m!1290333 () Bool)

(assert (=> b!1402178 m!1290333))

(assert (=> b!1402178 m!1290317))

(declare-fun m!1290335 () Bool)

(assert (=> b!1402178 m!1290335))

(declare-fun m!1290337 () Bool)

(assert (=> b!1402178 m!1290337))

(declare-fun m!1290339 () Bool)

(assert (=> b!1402183 m!1290339))

(declare-fun m!1290341 () Bool)

(assert (=> b!1402177 m!1290341))

(assert (=> b!1402177 m!1290341))

(declare-fun m!1290343 () Bool)

(assert (=> b!1402177 m!1290343))

(declare-fun m!1290345 () Bool)

(assert (=> b!1402179 m!1290345))

(declare-fun m!1290347 () Bool)

(assert (=> b!1402181 m!1290347))

(check-sat (not b!1402179) (not b!1402186) (not b!1402183) (not b!1402180) (not start!120480) (not b!1402184) (not b!1402182) (not b!1402178) (not b!1402177) (not b!1402181))
(check-sat)
