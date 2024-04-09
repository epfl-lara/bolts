; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120152 () Bool)

(assert start!120152)

(declare-fun b!1398395 () Bool)

(declare-fun res!937424 () Bool)

(declare-fun e!791697 () Bool)

(assert (=> b!1398395 (=> (not res!937424) (not e!791697))))

(declare-datatypes ((array!95599 0))(
  ( (array!95600 (arr!46149 (Array (_ BitVec 32) (_ BitVec 64))) (size!46700 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95599)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398395 (= res!937424 (validKeyInArray!0 (select (arr!46149 a!2901) i!1037)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!791698 () Bool)

(declare-fun b!1398396 () Bool)

(declare-datatypes ((SeekEntryResult!10488 0))(
  ( (MissingZero!10488 (index!44322 (_ BitVec 32))) (Found!10488 (index!44323 (_ BitVec 32))) (Intermediate!10488 (undefined!11300 Bool) (index!44324 (_ BitVec 32)) (x!125969 (_ BitVec 32))) (Undefined!10488) (MissingVacant!10488 (index!44325 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95599 (_ BitVec 32)) SeekEntryResult!10488)

(assert (=> b!1398396 (= e!791698 (= (seekEntryOrOpen!0 (select (arr!46149 a!2901) j!112) a!2901 mask!2840) (Found!10488 j!112)))))

(declare-fun b!1398397 () Bool)

(declare-fun res!937417 () Bool)

(assert (=> b!1398397 (=> (not res!937417) (not e!791697))))

(declare-datatypes ((List!32848 0))(
  ( (Nil!32845) (Cons!32844 (h!34086 (_ BitVec 64)) (t!47549 List!32848)) )
))
(declare-fun arrayNoDuplicates!0 (array!95599 (_ BitVec 32) List!32848) Bool)

(assert (=> b!1398397 (= res!937417 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32845))))

(declare-fun b!1398398 () Bool)

(declare-fun e!791696 () Bool)

(declare-fun e!791695 () Bool)

(assert (=> b!1398398 (= e!791696 e!791695)))

(declare-fun res!937422 () Bool)

(assert (=> b!1398398 (=> res!937422 e!791695)))

(declare-fun lt!614895 () SeekEntryResult!10488)

(declare-fun lt!614892 () SeekEntryResult!10488)

(assert (=> b!1398398 (= res!937422 (or (= lt!614895 lt!614892) (not (is-Intermediate!10488 lt!614892))))))

(declare-fun lt!614896 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95599 (_ BitVec 32)) SeekEntryResult!10488)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398398 (= lt!614892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614896 mask!2840) lt!614896 (array!95600 (store (arr!46149 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46700 a!2901)) mask!2840))))

(assert (=> b!1398398 (= lt!614896 (select (store (arr!46149 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398399 () Bool)

(declare-fun res!937419 () Bool)

(assert (=> b!1398399 (=> (not res!937419) (not e!791697))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95599 (_ BitVec 32)) Bool)

(assert (=> b!1398399 (= res!937419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!937423 () Bool)

(assert (=> start!120152 (=> (not res!937423) (not e!791697))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120152 (= res!937423 (validMask!0 mask!2840))))

(assert (=> start!120152 e!791697))

(assert (=> start!120152 true))

(declare-fun array_inv!35094 (array!95599) Bool)

(assert (=> start!120152 (array_inv!35094 a!2901)))

(declare-fun b!1398400 () Bool)

(assert (=> b!1398400 (= e!791695 (bvsge mask!2840 #b00000000000000000000000000000000))))

(assert (=> b!1398400 (and (not (undefined!11300 lt!614892)) (= (index!44324 lt!614892) i!1037) (bvslt (x!125969 lt!614892) (x!125969 lt!614895)) (= (select (store (arr!46149 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44324 lt!614892)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!46930 0))(
  ( (Unit!46931) )
))
(declare-fun lt!614893 () Unit!46930)

(declare-fun lt!614894 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95599 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46930)

(assert (=> b!1398400 (= lt!614893 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614894 (x!125969 lt!614895) (index!44324 lt!614895) (x!125969 lt!614892) (index!44324 lt!614892) (undefined!11300 lt!614892) mask!2840))))

(declare-fun b!1398401 () Bool)

(declare-fun res!937418 () Bool)

(assert (=> b!1398401 (=> (not res!937418) (not e!791697))))

(assert (=> b!1398401 (= res!937418 (and (= (size!46700 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46700 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46700 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398402 () Bool)

(declare-fun res!937425 () Bool)

(assert (=> b!1398402 (=> (not res!937425) (not e!791697))))

(assert (=> b!1398402 (= res!937425 (validKeyInArray!0 (select (arr!46149 a!2901) j!112)))))

(declare-fun b!1398403 () Bool)

(assert (=> b!1398403 (= e!791697 (not e!791696))))

(declare-fun res!937421 () Bool)

(assert (=> b!1398403 (=> res!937421 e!791696)))

(assert (=> b!1398403 (= res!937421 (or (not (is-Intermediate!10488 lt!614895)) (undefined!11300 lt!614895)))))

(assert (=> b!1398403 e!791698))

(declare-fun res!937420 () Bool)

(assert (=> b!1398403 (=> (not res!937420) (not e!791698))))

(assert (=> b!1398403 (= res!937420 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!614891 () Unit!46930)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95599 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46930)

(assert (=> b!1398403 (= lt!614891 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1398403 (= lt!614895 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614894 (select (arr!46149 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1398403 (= lt!614894 (toIndex!0 (select (arr!46149 a!2901) j!112) mask!2840))))

(assert (= (and start!120152 res!937423) b!1398401))

(assert (= (and b!1398401 res!937418) b!1398395))

(assert (= (and b!1398395 res!937424) b!1398402))

(assert (= (and b!1398402 res!937425) b!1398399))

(assert (= (and b!1398399 res!937419) b!1398397))

(assert (= (and b!1398397 res!937417) b!1398403))

(assert (= (and b!1398403 res!937420) b!1398396))

(assert (= (and b!1398403 (not res!937421)) b!1398398))

(assert (= (and b!1398398 (not res!937422)) b!1398400))

(declare-fun m!1285599 () Bool)

(assert (=> b!1398402 m!1285599))

(assert (=> b!1398402 m!1285599))

(declare-fun m!1285601 () Bool)

(assert (=> b!1398402 m!1285601))

(declare-fun m!1285603 () Bool)

(assert (=> b!1398399 m!1285603))

(declare-fun m!1285605 () Bool)

(assert (=> b!1398400 m!1285605))

(declare-fun m!1285607 () Bool)

(assert (=> b!1398400 m!1285607))

(declare-fun m!1285609 () Bool)

(assert (=> b!1398400 m!1285609))

(declare-fun m!1285611 () Bool)

(assert (=> b!1398398 m!1285611))

(assert (=> b!1398398 m!1285605))

(assert (=> b!1398398 m!1285611))

(declare-fun m!1285613 () Bool)

(assert (=> b!1398398 m!1285613))

(declare-fun m!1285615 () Bool)

(assert (=> b!1398398 m!1285615))

(assert (=> b!1398403 m!1285599))

(declare-fun m!1285617 () Bool)

(assert (=> b!1398403 m!1285617))

(assert (=> b!1398403 m!1285599))

(declare-fun m!1285619 () Bool)

(assert (=> b!1398403 m!1285619))

(declare-fun m!1285621 () Bool)

(assert (=> b!1398403 m!1285621))

(assert (=> b!1398403 m!1285599))

(declare-fun m!1285623 () Bool)

(assert (=> b!1398403 m!1285623))

(assert (=> b!1398396 m!1285599))

(assert (=> b!1398396 m!1285599))

(declare-fun m!1285625 () Bool)

(assert (=> b!1398396 m!1285625))

(declare-fun m!1285627 () Bool)

(assert (=> start!120152 m!1285627))

(declare-fun m!1285629 () Bool)

(assert (=> start!120152 m!1285629))

(declare-fun m!1285631 () Bool)

(assert (=> b!1398395 m!1285631))

(assert (=> b!1398395 m!1285631))

(declare-fun m!1285633 () Bool)

(assert (=> b!1398395 m!1285633))

(declare-fun m!1285635 () Bool)

(assert (=> b!1398397 m!1285635))

(push 1)

