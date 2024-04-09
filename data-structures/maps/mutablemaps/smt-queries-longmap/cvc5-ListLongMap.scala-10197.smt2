; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120148 () Bool)

(assert start!120148)

(declare-fun b!1398341 () Bool)

(declare-fun e!791665 () Bool)

(declare-fun e!791666 () Bool)

(assert (=> b!1398341 (= e!791665 e!791666)))

(declare-fun res!937371 () Bool)

(assert (=> b!1398341 (=> res!937371 e!791666)))

(declare-datatypes ((SeekEntryResult!10486 0))(
  ( (MissingZero!10486 (index!44314 (_ BitVec 32))) (Found!10486 (index!44315 (_ BitVec 32))) (Intermediate!10486 (undefined!11298 Bool) (index!44316 (_ BitVec 32)) (x!125967 (_ BitVec 32))) (Undefined!10486) (MissingVacant!10486 (index!44317 (_ BitVec 32))) )
))
(declare-fun lt!614855 () SeekEntryResult!10486)

(declare-fun lt!614860 () SeekEntryResult!10486)

(assert (=> b!1398341 (= res!937371 (or (= lt!614855 lt!614860) (not (is-Intermediate!10486 lt!614860))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95595 0))(
  ( (array!95596 (arr!46147 (Array (_ BitVec 32) (_ BitVec 64))) (size!46698 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95595)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!614856 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95595 (_ BitVec 32)) SeekEntryResult!10486)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398341 (= lt!614860 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614856 mask!2840) lt!614856 (array!95596 (store (arr!46147 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46698 a!2901)) mask!2840))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1398341 (= lt!614856 (select (store (arr!46147 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398342 () Bool)

(assert (=> b!1398342 (= e!791666 (bvsge mask!2840 #b00000000000000000000000000000000))))

(assert (=> b!1398342 (and (not (undefined!11298 lt!614860)) (= (index!44316 lt!614860) i!1037) (bvslt (x!125967 lt!614860) (x!125967 lt!614855)) (= (select (store (arr!46147 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44316 lt!614860)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!614858 () (_ BitVec 32))

(declare-datatypes ((Unit!46926 0))(
  ( (Unit!46927) )
))
(declare-fun lt!614859 () Unit!46926)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95595 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46926)

(assert (=> b!1398342 (= lt!614859 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614858 (x!125967 lt!614855) (index!44316 lt!614855) (x!125967 lt!614860) (index!44316 lt!614860) (undefined!11298 lt!614860) mask!2840))))

(declare-fun b!1398343 () Bool)

(declare-fun res!937363 () Bool)

(declare-fun e!791669 () Bool)

(assert (=> b!1398343 (=> (not res!937363) (not e!791669))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95595 (_ BitVec 32)) Bool)

(assert (=> b!1398343 (= res!937363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1398344 () Bool)

(declare-fun res!937366 () Bool)

(assert (=> b!1398344 (=> (not res!937366) (not e!791669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398344 (= res!937366 (validKeyInArray!0 (select (arr!46147 a!2901) j!112)))))

(declare-fun b!1398345 () Bool)

(declare-fun res!937370 () Bool)

(assert (=> b!1398345 (=> (not res!937370) (not e!791669))))

(assert (=> b!1398345 (= res!937370 (and (= (size!46698 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46698 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46698 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398347 () Bool)

(declare-fun res!937364 () Bool)

(assert (=> b!1398347 (=> (not res!937364) (not e!791669))))

(declare-datatypes ((List!32846 0))(
  ( (Nil!32843) (Cons!32842 (h!34084 (_ BitVec 64)) (t!47547 List!32846)) )
))
(declare-fun arrayNoDuplicates!0 (array!95595 (_ BitVec 32) List!32846) Bool)

(assert (=> b!1398347 (= res!937364 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32843))))

(declare-fun e!791668 () Bool)

(declare-fun b!1398348 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95595 (_ BitVec 32)) SeekEntryResult!10486)

(assert (=> b!1398348 (= e!791668 (= (seekEntryOrOpen!0 (select (arr!46147 a!2901) j!112) a!2901 mask!2840) (Found!10486 j!112)))))

(declare-fun b!1398349 () Bool)

(assert (=> b!1398349 (= e!791669 (not e!791665))))

(declare-fun res!937367 () Bool)

(assert (=> b!1398349 (=> res!937367 e!791665)))

(assert (=> b!1398349 (= res!937367 (or (not (is-Intermediate!10486 lt!614855)) (undefined!11298 lt!614855)))))

(assert (=> b!1398349 e!791668))

(declare-fun res!937365 () Bool)

(assert (=> b!1398349 (=> (not res!937365) (not e!791668))))

(assert (=> b!1398349 (= res!937365 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!614857 () Unit!46926)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95595 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46926)

(assert (=> b!1398349 (= lt!614857 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1398349 (= lt!614855 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614858 (select (arr!46147 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1398349 (= lt!614858 (toIndex!0 (select (arr!46147 a!2901) j!112) mask!2840))))

(declare-fun b!1398346 () Bool)

(declare-fun res!937368 () Bool)

(assert (=> b!1398346 (=> (not res!937368) (not e!791669))))

(assert (=> b!1398346 (= res!937368 (validKeyInArray!0 (select (arr!46147 a!2901) i!1037)))))

(declare-fun res!937369 () Bool)

(assert (=> start!120148 (=> (not res!937369) (not e!791669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120148 (= res!937369 (validMask!0 mask!2840))))

(assert (=> start!120148 e!791669))

(assert (=> start!120148 true))

(declare-fun array_inv!35092 (array!95595) Bool)

(assert (=> start!120148 (array_inv!35092 a!2901)))

(assert (= (and start!120148 res!937369) b!1398345))

(assert (= (and b!1398345 res!937370) b!1398346))

(assert (= (and b!1398346 res!937368) b!1398344))

(assert (= (and b!1398344 res!937366) b!1398343))

(assert (= (and b!1398343 res!937363) b!1398347))

(assert (= (and b!1398347 res!937364) b!1398349))

(assert (= (and b!1398349 res!937365) b!1398348))

(assert (= (and b!1398349 (not res!937367)) b!1398341))

(assert (= (and b!1398341 (not res!937371)) b!1398342))

(declare-fun m!1285523 () Bool)

(assert (=> b!1398342 m!1285523))

(declare-fun m!1285525 () Bool)

(assert (=> b!1398342 m!1285525))

(declare-fun m!1285527 () Bool)

(assert (=> b!1398342 m!1285527))

(declare-fun m!1285529 () Bool)

(assert (=> b!1398348 m!1285529))

(assert (=> b!1398348 m!1285529))

(declare-fun m!1285531 () Bool)

(assert (=> b!1398348 m!1285531))

(declare-fun m!1285533 () Bool)

(assert (=> b!1398343 m!1285533))

(declare-fun m!1285535 () Bool)

(assert (=> b!1398347 m!1285535))

(assert (=> b!1398344 m!1285529))

(assert (=> b!1398344 m!1285529))

(declare-fun m!1285537 () Bool)

(assert (=> b!1398344 m!1285537))

(declare-fun m!1285539 () Bool)

(assert (=> b!1398346 m!1285539))

(assert (=> b!1398346 m!1285539))

(declare-fun m!1285541 () Bool)

(assert (=> b!1398346 m!1285541))

(declare-fun m!1285543 () Bool)

(assert (=> b!1398341 m!1285543))

(assert (=> b!1398341 m!1285523))

(assert (=> b!1398341 m!1285543))

(declare-fun m!1285545 () Bool)

(assert (=> b!1398341 m!1285545))

(declare-fun m!1285547 () Bool)

(assert (=> b!1398341 m!1285547))

(declare-fun m!1285549 () Bool)

(assert (=> start!120148 m!1285549))

(declare-fun m!1285551 () Bool)

(assert (=> start!120148 m!1285551))

(assert (=> b!1398349 m!1285529))

(declare-fun m!1285553 () Bool)

(assert (=> b!1398349 m!1285553))

(assert (=> b!1398349 m!1285529))

(declare-fun m!1285555 () Bool)

(assert (=> b!1398349 m!1285555))

(assert (=> b!1398349 m!1285529))

(declare-fun m!1285557 () Bool)

(assert (=> b!1398349 m!1285557))

(declare-fun m!1285559 () Bool)

(assert (=> b!1398349 m!1285559))

(push 1)

