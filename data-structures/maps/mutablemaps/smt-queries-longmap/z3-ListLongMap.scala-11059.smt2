; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129234 () Bool)

(assert start!129234)

(declare-fun b!1516390 () Bool)

(declare-fun e!846158 () Bool)

(declare-fun e!846159 () Bool)

(assert (=> b!1516390 (= e!846158 e!846159)))

(declare-fun res!1036370 () Bool)

(assert (=> b!1516390 (=> (not res!1036370) (not e!846159))))

(declare-datatypes ((SeekEntryResult!12926 0))(
  ( (MissingZero!12926 (index!54098 (_ BitVec 32))) (Found!12926 (index!54099 (_ BitVec 32))) (Intermediate!12926 (undefined!13738 Bool) (index!54100 (_ BitVec 32)) (x!135801 (_ BitVec 32))) (Undefined!12926) (MissingVacant!12926 (index!54101 (_ BitVec 32))) )
))
(declare-fun lt!657360 () SeekEntryResult!12926)

(declare-fun lt!657361 () SeekEntryResult!12926)

(assert (=> b!1516390 (= res!1036370 (= lt!657360 lt!657361))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1516390 (= lt!657361 (Intermediate!12926 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101003 0))(
  ( (array!101004 (arr!48734 (Array (_ BitVec 32) (_ BitVec 64))) (size!49285 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101003)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101003 (_ BitVec 32)) SeekEntryResult!12926)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516390 (= lt!657360 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48734 a!2804) j!70) mask!2512) (select (arr!48734 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516391 () Bool)

(declare-fun res!1036372 () Bool)

(assert (=> b!1516391 (=> (not res!1036372) (not e!846158))))

(declare-datatypes ((List!35397 0))(
  ( (Nil!35394) (Cons!35393 (h!36806 (_ BitVec 64)) (t!50098 List!35397)) )
))
(declare-fun arrayNoDuplicates!0 (array!101003 (_ BitVec 32) List!35397) Bool)

(assert (=> b!1516391 (= res!1036372 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35394))))

(declare-fun b!1516392 () Bool)

(declare-fun res!1036377 () Bool)

(assert (=> b!1516392 (=> (not res!1036377) (not e!846158))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101003 (_ BitVec 32)) Bool)

(assert (=> b!1516392 (= res!1036377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516393 () Bool)

(declare-fun e!846161 () Bool)

(assert (=> b!1516393 (= e!846159 (not e!846161))))

(declare-fun res!1036373 () Bool)

(assert (=> b!1516393 (=> res!1036373 e!846161)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1516393 (= res!1036373 (or (not (= (select (arr!48734 a!2804) j!70) (select (store (arr!48734 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846156 () Bool)

(assert (=> b!1516393 e!846156))

(declare-fun res!1036365 () Bool)

(assert (=> b!1516393 (=> (not res!1036365) (not e!846156))))

(assert (=> b!1516393 (= res!1036365 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50676 0))(
  ( (Unit!50677) )
))
(declare-fun lt!657358 () Unit!50676)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101003 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50676)

(assert (=> b!1516393 (= lt!657358 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516394 () Bool)

(declare-fun res!1036375 () Bool)

(assert (=> b!1516394 (=> (not res!1036375) (not e!846159))))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1516394 (= res!1036375 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48734 a!2804) j!70) a!2804 mask!2512) lt!657361))))

(declare-fun b!1516395 () Bool)

(declare-fun res!1036367 () Bool)

(assert (=> b!1516395 (=> (not res!1036367) (not e!846158))))

(assert (=> b!1516395 (= res!1036367 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49285 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49285 a!2804))))))

(declare-fun b!1516396 () Bool)

(declare-fun res!1036371 () Bool)

(assert (=> b!1516396 (=> (not res!1036371) (not e!846158))))

(assert (=> b!1516396 (= res!1036371 (and (= (size!49285 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49285 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49285 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516397 () Bool)

(declare-fun e!846157 () Bool)

(assert (=> b!1516397 (= e!846161 e!846157)))

(declare-fun res!1036368 () Bool)

(assert (=> b!1516397 (=> res!1036368 e!846157)))

(declare-fun lt!657357 () (_ BitVec 32))

(assert (=> b!1516397 (= res!1036368 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657357 #b00000000000000000000000000000000) (bvsge lt!657357 (size!49285 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516397 (= lt!657357 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1516398 () Bool)

(assert (=> b!1516398 (= e!846157 true)))

(declare-fun lt!657359 () SeekEntryResult!12926)

(assert (=> b!1516398 (= lt!657359 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657357 (select (arr!48734 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1036374 () Bool)

(assert (=> start!129234 (=> (not res!1036374) (not e!846158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129234 (= res!1036374 (validMask!0 mask!2512))))

(assert (=> start!129234 e!846158))

(assert (=> start!129234 true))

(declare-fun array_inv!37679 (array!101003) Bool)

(assert (=> start!129234 (array_inv!37679 a!2804)))

(declare-fun b!1516399 () Bool)

(declare-fun res!1036376 () Bool)

(assert (=> b!1516399 (=> (not res!1036376) (not e!846158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516399 (= res!1036376 (validKeyInArray!0 (select (arr!48734 a!2804) i!961)))))

(declare-fun b!1516400 () Bool)

(declare-fun res!1036369 () Bool)

(assert (=> b!1516400 (=> (not res!1036369) (not e!846159))))

(assert (=> b!1516400 (= res!1036369 (= lt!657360 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48734 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48734 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101004 (store (arr!48734 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49285 a!2804)) mask!2512)))))

(declare-fun b!1516401 () Bool)

(declare-fun res!1036366 () Bool)

(assert (=> b!1516401 (=> (not res!1036366) (not e!846158))))

(assert (=> b!1516401 (= res!1036366 (validKeyInArray!0 (select (arr!48734 a!2804) j!70)))))

(declare-fun b!1516402 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101003 (_ BitVec 32)) SeekEntryResult!12926)

(assert (=> b!1516402 (= e!846156 (= (seekEntry!0 (select (arr!48734 a!2804) j!70) a!2804 mask!2512) (Found!12926 j!70)))))

(assert (= (and start!129234 res!1036374) b!1516396))

(assert (= (and b!1516396 res!1036371) b!1516399))

(assert (= (and b!1516399 res!1036376) b!1516401))

(assert (= (and b!1516401 res!1036366) b!1516392))

(assert (= (and b!1516392 res!1036377) b!1516391))

(assert (= (and b!1516391 res!1036372) b!1516395))

(assert (= (and b!1516395 res!1036367) b!1516390))

(assert (= (and b!1516390 res!1036370) b!1516394))

(assert (= (and b!1516394 res!1036375) b!1516400))

(assert (= (and b!1516400 res!1036369) b!1516393))

(assert (= (and b!1516393 res!1036365) b!1516402))

(assert (= (and b!1516393 (not res!1036373)) b!1516397))

(assert (= (and b!1516397 (not res!1036368)) b!1516398))

(declare-fun m!1399711 () Bool)

(assert (=> b!1516400 m!1399711))

(declare-fun m!1399713 () Bool)

(assert (=> b!1516400 m!1399713))

(assert (=> b!1516400 m!1399713))

(declare-fun m!1399715 () Bool)

(assert (=> b!1516400 m!1399715))

(assert (=> b!1516400 m!1399715))

(assert (=> b!1516400 m!1399713))

(declare-fun m!1399717 () Bool)

(assert (=> b!1516400 m!1399717))

(declare-fun m!1399719 () Bool)

(assert (=> b!1516394 m!1399719))

(assert (=> b!1516394 m!1399719))

(declare-fun m!1399721 () Bool)

(assert (=> b!1516394 m!1399721))

(assert (=> b!1516401 m!1399719))

(assert (=> b!1516401 m!1399719))

(declare-fun m!1399723 () Bool)

(assert (=> b!1516401 m!1399723))

(declare-fun m!1399725 () Bool)

(assert (=> b!1516392 m!1399725))

(assert (=> b!1516390 m!1399719))

(assert (=> b!1516390 m!1399719))

(declare-fun m!1399727 () Bool)

(assert (=> b!1516390 m!1399727))

(assert (=> b!1516390 m!1399727))

(assert (=> b!1516390 m!1399719))

(declare-fun m!1399729 () Bool)

(assert (=> b!1516390 m!1399729))

(declare-fun m!1399731 () Bool)

(assert (=> start!129234 m!1399731))

(declare-fun m!1399733 () Bool)

(assert (=> start!129234 m!1399733))

(declare-fun m!1399735 () Bool)

(assert (=> b!1516399 m!1399735))

(assert (=> b!1516399 m!1399735))

(declare-fun m!1399737 () Bool)

(assert (=> b!1516399 m!1399737))

(declare-fun m!1399739 () Bool)

(assert (=> b!1516397 m!1399739))

(assert (=> b!1516402 m!1399719))

(assert (=> b!1516402 m!1399719))

(declare-fun m!1399741 () Bool)

(assert (=> b!1516402 m!1399741))

(assert (=> b!1516398 m!1399719))

(assert (=> b!1516398 m!1399719))

(declare-fun m!1399743 () Bool)

(assert (=> b!1516398 m!1399743))

(assert (=> b!1516393 m!1399719))

(declare-fun m!1399745 () Bool)

(assert (=> b!1516393 m!1399745))

(assert (=> b!1516393 m!1399711))

(assert (=> b!1516393 m!1399713))

(declare-fun m!1399747 () Bool)

(assert (=> b!1516393 m!1399747))

(declare-fun m!1399749 () Bool)

(assert (=> b!1516391 m!1399749))

(check-sat (not b!1516397) (not start!129234) (not b!1516400) (not b!1516398) (not b!1516401) (not b!1516392) (not b!1516390) (not b!1516399) (not b!1516393) (not b!1516394) (not b!1516402) (not b!1516391))
(check-sat)
