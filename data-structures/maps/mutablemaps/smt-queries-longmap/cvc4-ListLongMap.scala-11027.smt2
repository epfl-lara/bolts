; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129044 () Bool)

(assert start!129044)

(declare-fun b!1512595 () Bool)

(declare-fun e!844296 () Bool)

(assert (=> b!1512595 (= e!844296 (not true))))

(declare-fun e!844297 () Bool)

(assert (=> b!1512595 e!844297))

(declare-fun res!1032581 () Bool)

(assert (=> b!1512595 (=> (not res!1032581) (not e!844297))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100813 0))(
  ( (array!100814 (arr!48639 (Array (_ BitVec 32) (_ BitVec 64))) (size!49190 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100813)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100813 (_ BitVec 32)) Bool)

(assert (=> b!1512595 (= res!1032581 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50486 0))(
  ( (Unit!50487) )
))
(declare-fun lt!655683 () Unit!50486)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100813 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50486)

(assert (=> b!1512595 (= lt!655683 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1032577 () Bool)

(declare-fun e!844295 () Bool)

(assert (=> start!129044 (=> (not res!1032577) (not e!844295))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129044 (= res!1032577 (validMask!0 mask!2512))))

(assert (=> start!129044 e!844295))

(assert (=> start!129044 true))

(declare-fun array_inv!37584 (array!100813) Bool)

(assert (=> start!129044 (array_inv!37584 a!2804)))

(declare-fun b!1512596 () Bool)

(declare-fun res!1032580 () Bool)

(assert (=> b!1512596 (=> (not res!1032580) (not e!844295))))

(declare-datatypes ((List!35302 0))(
  ( (Nil!35299) (Cons!35298 (h!36711 (_ BitVec 64)) (t!50003 List!35302)) )
))
(declare-fun arrayNoDuplicates!0 (array!100813 (_ BitVec 32) List!35302) Bool)

(assert (=> b!1512596 (= res!1032580 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35299))))

(declare-fun b!1512597 () Bool)

(declare-fun res!1032578 () Bool)

(assert (=> b!1512597 (=> (not res!1032578) (not e!844295))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512597 (= res!1032578 (validKeyInArray!0 (select (arr!48639 a!2804) i!961)))))

(declare-fun b!1512598 () Bool)

(declare-fun e!844294 () Bool)

(assert (=> b!1512598 (= e!844297 e!844294)))

(declare-fun res!1032576 () Bool)

(assert (=> b!1512598 (=> res!1032576 e!844294)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1512598 (= res!1032576 (or (not (= (select (arr!48639 a!2804) j!70) (select (store (arr!48639 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48639 a!2804) index!487) (select (arr!48639 a!2804) j!70)) (not (= (select (arr!48639 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512599 () Bool)

(declare-fun res!1032570 () Bool)

(assert (=> b!1512599 (=> (not res!1032570) (not e!844295))))

(assert (=> b!1512599 (= res!1032570 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49190 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49190 a!2804))))))

(declare-fun b!1512600 () Bool)

(declare-fun res!1032572 () Bool)

(assert (=> b!1512600 (=> (not res!1032572) (not e!844296))))

(declare-datatypes ((SeekEntryResult!12831 0))(
  ( (MissingZero!12831 (index!53718 (_ BitVec 32))) (Found!12831 (index!53719 (_ BitVec 32))) (Intermediate!12831 (undefined!13643 Bool) (index!53720 (_ BitVec 32)) (x!135450 (_ BitVec 32))) (Undefined!12831) (MissingVacant!12831 (index!53721 (_ BitVec 32))) )
))
(declare-fun lt!655684 () SeekEntryResult!12831)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100813 (_ BitVec 32)) SeekEntryResult!12831)

(assert (=> b!1512600 (= res!1032572 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48639 a!2804) j!70) a!2804 mask!2512) lt!655684))))

(declare-fun b!1512601 () Bool)

(declare-fun res!1032579 () Bool)

(assert (=> b!1512601 (=> (not res!1032579) (not e!844295))))

(assert (=> b!1512601 (= res!1032579 (validKeyInArray!0 (select (arr!48639 a!2804) j!70)))))

(declare-fun b!1512602 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100813 (_ BitVec 32)) SeekEntryResult!12831)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100813 (_ BitVec 32)) SeekEntryResult!12831)

(assert (=> b!1512602 (= e!844294 (= (seekEntryOrOpen!0 (select (arr!48639 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48639 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512603 () Bool)

(declare-fun res!1032582 () Bool)

(assert (=> b!1512603 (=> (not res!1032582) (not e!844295))))

(assert (=> b!1512603 (= res!1032582 (and (= (size!49190 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49190 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49190 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512604 () Bool)

(assert (=> b!1512604 (= e!844295 e!844296)))

(declare-fun res!1032573 () Bool)

(assert (=> b!1512604 (=> (not res!1032573) (not e!844296))))

(declare-fun lt!655682 () SeekEntryResult!12831)

(assert (=> b!1512604 (= res!1032573 (= lt!655682 lt!655684))))

(assert (=> b!1512604 (= lt!655684 (Intermediate!12831 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512604 (= lt!655682 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48639 a!2804) j!70) mask!2512) (select (arr!48639 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512605 () Bool)

(declare-fun res!1032571 () Bool)

(assert (=> b!1512605 (=> (not res!1032571) (not e!844295))))

(assert (=> b!1512605 (= res!1032571 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512606 () Bool)

(declare-fun res!1032574 () Bool)

(assert (=> b!1512606 (=> (not res!1032574) (not e!844297))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100813 (_ BitVec 32)) SeekEntryResult!12831)

(assert (=> b!1512606 (= res!1032574 (= (seekEntry!0 (select (arr!48639 a!2804) j!70) a!2804 mask!2512) (Found!12831 j!70)))))

(declare-fun b!1512607 () Bool)

(declare-fun res!1032575 () Bool)

(assert (=> b!1512607 (=> (not res!1032575) (not e!844296))))

(assert (=> b!1512607 (= res!1032575 (= lt!655682 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48639 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48639 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100814 (store (arr!48639 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49190 a!2804)) mask!2512)))))

(assert (= (and start!129044 res!1032577) b!1512603))

(assert (= (and b!1512603 res!1032582) b!1512597))

(assert (= (and b!1512597 res!1032578) b!1512601))

(assert (= (and b!1512601 res!1032579) b!1512605))

(assert (= (and b!1512605 res!1032571) b!1512596))

(assert (= (and b!1512596 res!1032580) b!1512599))

(assert (= (and b!1512599 res!1032570) b!1512604))

(assert (= (and b!1512604 res!1032573) b!1512600))

(assert (= (and b!1512600 res!1032572) b!1512607))

(assert (= (and b!1512607 res!1032575) b!1512595))

(assert (= (and b!1512595 res!1032581) b!1512606))

(assert (= (and b!1512606 res!1032574) b!1512598))

(assert (= (and b!1512598 (not res!1032576)) b!1512602))

(declare-fun m!1395435 () Bool)

(assert (=> b!1512600 m!1395435))

(assert (=> b!1512600 m!1395435))

(declare-fun m!1395437 () Bool)

(assert (=> b!1512600 m!1395437))

(assert (=> b!1512598 m!1395435))

(declare-fun m!1395439 () Bool)

(assert (=> b!1512598 m!1395439))

(declare-fun m!1395441 () Bool)

(assert (=> b!1512598 m!1395441))

(declare-fun m!1395443 () Bool)

(assert (=> b!1512598 m!1395443))

(declare-fun m!1395445 () Bool)

(assert (=> b!1512596 m!1395445))

(assert (=> b!1512604 m!1395435))

(assert (=> b!1512604 m!1395435))

(declare-fun m!1395447 () Bool)

(assert (=> b!1512604 m!1395447))

(assert (=> b!1512604 m!1395447))

(assert (=> b!1512604 m!1395435))

(declare-fun m!1395449 () Bool)

(assert (=> b!1512604 m!1395449))

(declare-fun m!1395451 () Bool)

(assert (=> b!1512595 m!1395451))

(declare-fun m!1395453 () Bool)

(assert (=> b!1512595 m!1395453))

(declare-fun m!1395455 () Bool)

(assert (=> b!1512597 m!1395455))

(assert (=> b!1512597 m!1395455))

(declare-fun m!1395457 () Bool)

(assert (=> b!1512597 m!1395457))

(declare-fun m!1395459 () Bool)

(assert (=> b!1512605 m!1395459))

(assert (=> b!1512607 m!1395439))

(assert (=> b!1512607 m!1395441))

(assert (=> b!1512607 m!1395441))

(declare-fun m!1395461 () Bool)

(assert (=> b!1512607 m!1395461))

(assert (=> b!1512607 m!1395461))

(assert (=> b!1512607 m!1395441))

(declare-fun m!1395463 () Bool)

(assert (=> b!1512607 m!1395463))

(assert (=> b!1512606 m!1395435))

(assert (=> b!1512606 m!1395435))

(declare-fun m!1395465 () Bool)

(assert (=> b!1512606 m!1395465))

(assert (=> b!1512601 m!1395435))

(assert (=> b!1512601 m!1395435))

(declare-fun m!1395467 () Bool)

(assert (=> b!1512601 m!1395467))

(assert (=> b!1512602 m!1395435))

(assert (=> b!1512602 m!1395435))

(declare-fun m!1395469 () Bool)

(assert (=> b!1512602 m!1395469))

(assert (=> b!1512602 m!1395435))

(declare-fun m!1395471 () Bool)

(assert (=> b!1512602 m!1395471))

(declare-fun m!1395473 () Bool)

(assert (=> start!129044 m!1395473))

(declare-fun m!1395475 () Bool)

(assert (=> start!129044 m!1395475))

(push 1)

