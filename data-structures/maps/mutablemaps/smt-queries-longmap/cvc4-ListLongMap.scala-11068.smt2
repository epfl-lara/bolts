; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129290 () Bool)

(assert start!129290)

(declare-fun b!1517482 () Bool)

(declare-fun e!846664 () Bool)

(assert (=> b!1517482 (= e!846664 true)))

(declare-datatypes ((SeekEntryResult!12954 0))(
  ( (MissingZero!12954 (index!54210 (_ BitVec 32))) (Found!12954 (index!54211 (_ BitVec 32))) (Intermediate!12954 (undefined!13766 Bool) (index!54212 (_ BitVec 32)) (x!135901 (_ BitVec 32))) (Undefined!12954) (MissingVacant!12954 (index!54213 (_ BitVec 32))) )
))
(declare-fun lt!657781 () SeekEntryResult!12954)

(declare-fun lt!657778 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101059 0))(
  ( (array!101060 (arr!48762 (Array (_ BitVec 32) (_ BitVec 64))) (size!49313 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101059)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101059 (_ BitVec 32)) SeekEntryResult!12954)

(assert (=> b!1517482 (= lt!657781 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657778 (select (arr!48762 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1037464 () Bool)

(declare-fun e!846661 () Bool)

(assert (=> start!129290 (=> (not res!1037464) (not e!846661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129290 (= res!1037464 (validMask!0 mask!2512))))

(assert (=> start!129290 e!846661))

(assert (=> start!129290 true))

(declare-fun array_inv!37707 (array!101059) Bool)

(assert (=> start!129290 (array_inv!37707 a!2804)))

(declare-fun b!1517483 () Bool)

(declare-fun res!1037466 () Bool)

(assert (=> b!1517483 (=> (not res!1037466) (not e!846661))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1517483 (= res!1037466 (and (= (size!49313 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49313 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49313 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517484 () Bool)

(declare-fun res!1037463 () Bool)

(assert (=> b!1517484 (=> (not res!1037463) (not e!846661))))

(declare-datatypes ((List!35425 0))(
  ( (Nil!35422) (Cons!35421 (h!36834 (_ BitVec 64)) (t!50126 List!35425)) )
))
(declare-fun arrayNoDuplicates!0 (array!101059 (_ BitVec 32) List!35425) Bool)

(assert (=> b!1517484 (= res!1037463 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35422))))

(declare-fun b!1517485 () Bool)

(declare-fun res!1037457 () Bool)

(declare-fun e!846663 () Bool)

(assert (=> b!1517485 (=> (not res!1037457) (not e!846663))))

(declare-fun lt!657780 () SeekEntryResult!12954)

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1517485 (= res!1037457 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48762 a!2804) j!70) a!2804 mask!2512) lt!657780))))

(declare-fun b!1517486 () Bool)

(declare-fun res!1037469 () Bool)

(assert (=> b!1517486 (=> (not res!1037469) (not e!846661))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101059 (_ BitVec 32)) Bool)

(assert (=> b!1517486 (= res!1037469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517487 () Bool)

(assert (=> b!1517487 (= e!846661 e!846663)))

(declare-fun res!1037462 () Bool)

(assert (=> b!1517487 (=> (not res!1037462) (not e!846663))))

(declare-fun lt!657777 () SeekEntryResult!12954)

(assert (=> b!1517487 (= res!1037462 (= lt!657777 lt!657780))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1517487 (= lt!657780 (Intermediate!12954 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517487 (= lt!657777 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48762 a!2804) j!70) mask!2512) (select (arr!48762 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517488 () Bool)

(declare-fun res!1037461 () Bool)

(assert (=> b!1517488 (=> (not res!1037461) (not e!846661))))

(assert (=> b!1517488 (= res!1037461 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49313 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49313 a!2804))))))

(declare-fun b!1517489 () Bool)

(declare-fun e!846665 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101059 (_ BitVec 32)) SeekEntryResult!12954)

(assert (=> b!1517489 (= e!846665 (= (seekEntry!0 (select (arr!48762 a!2804) j!70) a!2804 mask!2512) (Found!12954 j!70)))))

(declare-fun b!1517490 () Bool)

(declare-fun res!1037467 () Bool)

(assert (=> b!1517490 (=> (not res!1037467) (not e!846661))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517490 (= res!1037467 (validKeyInArray!0 (select (arr!48762 a!2804) i!961)))))

(declare-fun b!1517491 () Bool)

(declare-fun e!846662 () Bool)

(assert (=> b!1517491 (= e!846663 (not e!846662))))

(declare-fun res!1037459 () Bool)

(assert (=> b!1517491 (=> res!1037459 e!846662)))

(assert (=> b!1517491 (= res!1037459 (or (not (= (select (arr!48762 a!2804) j!70) (select (store (arr!48762 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1517491 e!846665))

(declare-fun res!1037468 () Bool)

(assert (=> b!1517491 (=> (not res!1037468) (not e!846665))))

(assert (=> b!1517491 (= res!1037468 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50732 0))(
  ( (Unit!50733) )
))
(declare-fun lt!657779 () Unit!50732)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101059 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50732)

(assert (=> b!1517491 (= lt!657779 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517492 () Bool)

(declare-fun res!1037460 () Bool)

(assert (=> b!1517492 (=> (not res!1037460) (not e!846661))))

(assert (=> b!1517492 (= res!1037460 (validKeyInArray!0 (select (arr!48762 a!2804) j!70)))))

(declare-fun b!1517493 () Bool)

(declare-fun res!1037465 () Bool)

(assert (=> b!1517493 (=> (not res!1037465) (not e!846663))))

(assert (=> b!1517493 (= res!1037465 (= lt!657777 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48762 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48762 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101060 (store (arr!48762 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49313 a!2804)) mask!2512)))))

(declare-fun b!1517494 () Bool)

(assert (=> b!1517494 (= e!846662 e!846664)))

(declare-fun res!1037458 () Bool)

(assert (=> b!1517494 (=> res!1037458 e!846664)))

(assert (=> b!1517494 (= res!1037458 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657778 #b00000000000000000000000000000000) (bvsge lt!657778 (size!49313 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517494 (= lt!657778 (nextIndex!0 index!487 x!534 mask!2512))))

(assert (= (and start!129290 res!1037464) b!1517483))

(assert (= (and b!1517483 res!1037466) b!1517490))

(assert (= (and b!1517490 res!1037467) b!1517492))

(assert (= (and b!1517492 res!1037460) b!1517486))

(assert (= (and b!1517486 res!1037469) b!1517484))

(assert (= (and b!1517484 res!1037463) b!1517488))

(assert (= (and b!1517488 res!1037461) b!1517487))

(assert (= (and b!1517487 res!1037462) b!1517485))

(assert (= (and b!1517485 res!1037457) b!1517493))

(assert (= (and b!1517493 res!1037465) b!1517491))

(assert (= (and b!1517491 res!1037468) b!1517489))

(assert (= (and b!1517491 (not res!1037459)) b!1517494))

(assert (= (and b!1517494 (not res!1037458)) b!1517482))

(declare-fun m!1400831 () Bool)

(assert (=> b!1517484 m!1400831))

(declare-fun m!1400833 () Bool)

(assert (=> b!1517487 m!1400833))

(assert (=> b!1517487 m!1400833))

(declare-fun m!1400835 () Bool)

(assert (=> b!1517487 m!1400835))

(assert (=> b!1517487 m!1400835))

(assert (=> b!1517487 m!1400833))

(declare-fun m!1400837 () Bool)

(assert (=> b!1517487 m!1400837))

(assert (=> b!1517489 m!1400833))

(assert (=> b!1517489 m!1400833))

(declare-fun m!1400839 () Bool)

(assert (=> b!1517489 m!1400839))

(declare-fun m!1400841 () Bool)

(assert (=> b!1517494 m!1400841))

(assert (=> b!1517492 m!1400833))

(assert (=> b!1517492 m!1400833))

(declare-fun m!1400843 () Bool)

(assert (=> b!1517492 m!1400843))

(assert (=> b!1517485 m!1400833))

(assert (=> b!1517485 m!1400833))

(declare-fun m!1400845 () Bool)

(assert (=> b!1517485 m!1400845))

(declare-fun m!1400847 () Bool)

(assert (=> b!1517490 m!1400847))

(assert (=> b!1517490 m!1400847))

(declare-fun m!1400849 () Bool)

(assert (=> b!1517490 m!1400849))

(assert (=> b!1517482 m!1400833))

(assert (=> b!1517482 m!1400833))

(declare-fun m!1400851 () Bool)

(assert (=> b!1517482 m!1400851))

(assert (=> b!1517491 m!1400833))

(declare-fun m!1400853 () Bool)

(assert (=> b!1517491 m!1400853))

(declare-fun m!1400855 () Bool)

(assert (=> b!1517491 m!1400855))

(declare-fun m!1400857 () Bool)

(assert (=> b!1517491 m!1400857))

(declare-fun m!1400859 () Bool)

(assert (=> b!1517491 m!1400859))

(declare-fun m!1400861 () Bool)

(assert (=> b!1517486 m!1400861))

(assert (=> b!1517493 m!1400855))

(assert (=> b!1517493 m!1400857))

(assert (=> b!1517493 m!1400857))

(declare-fun m!1400863 () Bool)

(assert (=> b!1517493 m!1400863))

(assert (=> b!1517493 m!1400863))

(assert (=> b!1517493 m!1400857))

(declare-fun m!1400865 () Bool)

(assert (=> b!1517493 m!1400865))

(declare-fun m!1400867 () Bool)

(assert (=> start!129290 m!1400867))

(declare-fun m!1400869 () Bool)

(assert (=> start!129290 m!1400869))

(push 1)

