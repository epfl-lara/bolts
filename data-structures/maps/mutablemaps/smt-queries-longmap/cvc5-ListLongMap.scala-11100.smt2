; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129654 () Bool)

(assert start!129654)

(declare-fun b!1521579 () Bool)

(declare-fun res!1040941 () Bool)

(declare-fun e!848570 () Bool)

(assert (=> b!1521579 (=> (not res!1040941) (not e!848570))))

(declare-datatypes ((array!101256 0))(
  ( (array!101257 (arr!48856 (Array (_ BitVec 32) (_ BitVec 64))) (size!49407 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101256)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521579 (= res!1040941 (validKeyInArray!0 (select (arr!48856 a!2804) i!961)))))

(declare-fun b!1521580 () Bool)

(declare-fun res!1040946 () Bool)

(assert (=> b!1521580 (=> (not res!1040946) (not e!848570))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101256 (_ BitVec 32)) Bool)

(assert (=> b!1521580 (= res!1040946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521581 () Bool)

(declare-fun res!1040939 () Bool)

(assert (=> b!1521581 (=> (not res!1040939) (not e!848570))))

(declare-datatypes ((List!35519 0))(
  ( (Nil!35516) (Cons!35515 (h!36937 (_ BitVec 64)) (t!50220 List!35519)) )
))
(declare-fun arrayNoDuplicates!0 (array!101256 (_ BitVec 32) List!35519) Bool)

(assert (=> b!1521581 (= res!1040939 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35516))))

(declare-fun b!1521582 () Bool)

(declare-fun res!1040944 () Bool)

(assert (=> b!1521582 (=> (not res!1040944) (not e!848570))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1521582 (= res!1040944 (and (= (size!49407 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49407 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49407 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521583 () Bool)

(declare-fun res!1040942 () Bool)

(assert (=> b!1521583 (=> (not res!1040942) (not e!848570))))

(assert (=> b!1521583 (= res!1040942 (validKeyInArray!0 (select (arr!48856 a!2804) j!70)))))

(declare-fun b!1521584 () Bool)

(declare-fun res!1040938 () Bool)

(declare-fun e!848568 () Bool)

(assert (=> b!1521584 (=> (not res!1040938) (not e!848568))))

(declare-datatypes ((SeekEntryResult!13042 0))(
  ( (MissingZero!13042 (index!54562 (_ BitVec 32))) (Found!13042 (index!54563 (_ BitVec 32))) (Intermediate!13042 (undefined!13854 Bool) (index!54564 (_ BitVec 32)) (x!136265 (_ BitVec 32))) (Undefined!13042) (MissingVacant!13042 (index!54565 (_ BitVec 32))) )
))
(declare-fun lt!659331 () SeekEntryResult!13042)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101256 (_ BitVec 32)) SeekEntryResult!13042)

(assert (=> b!1521584 (= res!1040938 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48856 a!2804) j!70) a!2804 mask!2512) lt!659331))))

(declare-fun b!1521585 () Bool)

(assert (=> b!1521585 (= e!848568 false)))

(declare-fun lt!659332 () SeekEntryResult!13042)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521585 (= lt!659332 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48856 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48856 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101257 (store (arr!48856 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49407 a!2804)) mask!2512))))

(declare-fun b!1521586 () Bool)

(declare-fun res!1040943 () Bool)

(assert (=> b!1521586 (=> (not res!1040943) (not e!848570))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521586 (= res!1040943 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49407 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49407 a!2804))))))

(declare-fun res!1040940 () Bool)

(assert (=> start!129654 (=> (not res!1040940) (not e!848570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129654 (= res!1040940 (validMask!0 mask!2512))))

(assert (=> start!129654 e!848570))

(assert (=> start!129654 true))

(declare-fun array_inv!37801 (array!101256) Bool)

(assert (=> start!129654 (array_inv!37801 a!2804)))

(declare-fun b!1521578 () Bool)

(assert (=> b!1521578 (= e!848570 e!848568)))

(declare-fun res!1040945 () Bool)

(assert (=> b!1521578 (=> (not res!1040945) (not e!848568))))

(assert (=> b!1521578 (= res!1040945 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48856 a!2804) j!70) mask!2512) (select (arr!48856 a!2804) j!70) a!2804 mask!2512) lt!659331))))

(assert (=> b!1521578 (= lt!659331 (Intermediate!13042 false resIndex!21 resX!21))))

(assert (= (and start!129654 res!1040940) b!1521582))

(assert (= (and b!1521582 res!1040944) b!1521579))

(assert (= (and b!1521579 res!1040941) b!1521583))

(assert (= (and b!1521583 res!1040942) b!1521580))

(assert (= (and b!1521580 res!1040946) b!1521581))

(assert (= (and b!1521581 res!1040939) b!1521586))

(assert (= (and b!1521586 res!1040943) b!1521578))

(assert (= (and b!1521578 res!1040945) b!1521584))

(assert (= (and b!1521584 res!1040938) b!1521585))

(declare-fun m!1404731 () Bool)

(assert (=> b!1521585 m!1404731))

(declare-fun m!1404733 () Bool)

(assert (=> b!1521585 m!1404733))

(assert (=> b!1521585 m!1404733))

(declare-fun m!1404735 () Bool)

(assert (=> b!1521585 m!1404735))

(assert (=> b!1521585 m!1404735))

(assert (=> b!1521585 m!1404733))

(declare-fun m!1404737 () Bool)

(assert (=> b!1521585 m!1404737))

(declare-fun m!1404739 () Bool)

(assert (=> b!1521579 m!1404739))

(assert (=> b!1521579 m!1404739))

(declare-fun m!1404741 () Bool)

(assert (=> b!1521579 m!1404741))

(declare-fun m!1404743 () Bool)

(assert (=> b!1521584 m!1404743))

(assert (=> b!1521584 m!1404743))

(declare-fun m!1404745 () Bool)

(assert (=> b!1521584 m!1404745))

(assert (=> b!1521578 m!1404743))

(assert (=> b!1521578 m!1404743))

(declare-fun m!1404747 () Bool)

(assert (=> b!1521578 m!1404747))

(assert (=> b!1521578 m!1404747))

(assert (=> b!1521578 m!1404743))

(declare-fun m!1404749 () Bool)

(assert (=> b!1521578 m!1404749))

(declare-fun m!1404751 () Bool)

(assert (=> b!1521580 m!1404751))

(declare-fun m!1404753 () Bool)

(assert (=> start!129654 m!1404753))

(declare-fun m!1404755 () Bool)

(assert (=> start!129654 m!1404755))

(declare-fun m!1404757 () Bool)

(assert (=> b!1521581 m!1404757))

(assert (=> b!1521583 m!1404743))

(assert (=> b!1521583 m!1404743))

(declare-fun m!1404759 () Bool)

(assert (=> b!1521583 m!1404759))

(push 1)

