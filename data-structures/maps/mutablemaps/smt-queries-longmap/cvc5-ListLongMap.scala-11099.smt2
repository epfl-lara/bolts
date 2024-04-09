; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129648 () Bool)

(assert start!129648)

(declare-fun b!1521497 () Bool)

(declare-fun res!1040859 () Bool)

(declare-fun e!848541 () Bool)

(assert (=> b!1521497 (=> (not res!1040859) (not e!848541))))

(declare-datatypes ((array!101250 0))(
  ( (array!101251 (arr!48853 (Array (_ BitVec 32) (_ BitVec 64))) (size!49404 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101250)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101250 (_ BitVec 32)) Bool)

(assert (=> b!1521497 (= res!1040859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521498 () Bool)

(declare-fun res!1040865 () Bool)

(assert (=> b!1521498 (=> (not res!1040865) (not e!848541))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521498 (= res!1040865 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49404 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49404 a!2804))))))

(declare-fun b!1521499 () Bool)

(declare-fun res!1040862 () Bool)

(assert (=> b!1521499 (=> (not res!1040862) (not e!848541))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521499 (= res!1040862 (validKeyInArray!0 (select (arr!48853 a!2804) i!961)))))

(declare-fun b!1521500 () Bool)

(declare-fun res!1040860 () Bool)

(assert (=> b!1521500 (=> (not res!1040860) (not e!848541))))

(declare-datatypes ((List!35516 0))(
  ( (Nil!35513) (Cons!35512 (h!36934 (_ BitVec 64)) (t!50217 List!35516)) )
))
(declare-fun arrayNoDuplicates!0 (array!101250 (_ BitVec 32) List!35516) Bool)

(assert (=> b!1521500 (= res!1040860 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35513))))

(declare-fun b!1521501 () Bool)

(declare-fun res!1040858 () Bool)

(assert (=> b!1521501 (=> (not res!1040858) (not e!848541))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1521501 (= res!1040858 (validKeyInArray!0 (select (arr!48853 a!2804) j!70)))))

(declare-fun res!1040861 () Bool)

(assert (=> start!129648 (=> (not res!1040861) (not e!848541))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129648 (= res!1040861 (validMask!0 mask!2512))))

(assert (=> start!129648 e!848541))

(assert (=> start!129648 true))

(declare-fun array_inv!37798 (array!101250) Bool)

(assert (=> start!129648 (array_inv!37798 a!2804)))

(declare-fun b!1521502 () Bool)

(declare-fun res!1040864 () Bool)

(assert (=> b!1521502 (=> (not res!1040864) (not e!848541))))

(assert (=> b!1521502 (= res!1040864 (and (= (size!49404 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49404 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49404 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521503 () Bool)

(declare-fun e!848543 () Bool)

(assert (=> b!1521503 (= e!848543 false)))

(declare-datatypes ((SeekEntryResult!13039 0))(
  ( (MissingZero!13039 (index!54550 (_ BitVec 32))) (Found!13039 (index!54551 (_ BitVec 32))) (Intermediate!13039 (undefined!13851 Bool) (index!54552 (_ BitVec 32)) (x!136254 (_ BitVec 32))) (Undefined!13039) (MissingVacant!13039 (index!54553 (_ BitVec 32))) )
))
(declare-fun lt!659313 () SeekEntryResult!13039)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101250 (_ BitVec 32)) SeekEntryResult!13039)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521503 (= lt!659313 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48853 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48853 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101251 (store (arr!48853 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49404 a!2804)) mask!2512))))

(declare-fun b!1521504 () Bool)

(declare-fun res!1040863 () Bool)

(assert (=> b!1521504 (=> (not res!1040863) (not e!848543))))

(declare-fun lt!659314 () SeekEntryResult!13039)

(assert (=> b!1521504 (= res!1040863 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48853 a!2804) j!70) a!2804 mask!2512) lt!659314))))

(declare-fun b!1521505 () Bool)

(assert (=> b!1521505 (= e!848541 e!848543)))

(declare-fun res!1040857 () Bool)

(assert (=> b!1521505 (=> (not res!1040857) (not e!848543))))

(assert (=> b!1521505 (= res!1040857 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48853 a!2804) j!70) mask!2512) (select (arr!48853 a!2804) j!70) a!2804 mask!2512) lt!659314))))

(assert (=> b!1521505 (= lt!659314 (Intermediate!13039 false resIndex!21 resX!21))))

(assert (= (and start!129648 res!1040861) b!1521502))

(assert (= (and b!1521502 res!1040864) b!1521499))

(assert (= (and b!1521499 res!1040862) b!1521501))

(assert (= (and b!1521501 res!1040858) b!1521497))

(assert (= (and b!1521497 res!1040859) b!1521500))

(assert (= (and b!1521500 res!1040860) b!1521498))

(assert (= (and b!1521498 res!1040865) b!1521505))

(assert (= (and b!1521505 res!1040857) b!1521504))

(assert (= (and b!1521504 res!1040863) b!1521503))

(declare-fun m!1404641 () Bool)

(assert (=> b!1521503 m!1404641))

(declare-fun m!1404643 () Bool)

(assert (=> b!1521503 m!1404643))

(assert (=> b!1521503 m!1404643))

(declare-fun m!1404645 () Bool)

(assert (=> b!1521503 m!1404645))

(assert (=> b!1521503 m!1404645))

(assert (=> b!1521503 m!1404643))

(declare-fun m!1404647 () Bool)

(assert (=> b!1521503 m!1404647))

(declare-fun m!1404649 () Bool)

(assert (=> b!1521505 m!1404649))

(assert (=> b!1521505 m!1404649))

(declare-fun m!1404651 () Bool)

(assert (=> b!1521505 m!1404651))

(assert (=> b!1521505 m!1404651))

(assert (=> b!1521505 m!1404649))

(declare-fun m!1404653 () Bool)

(assert (=> b!1521505 m!1404653))

(declare-fun m!1404655 () Bool)

(assert (=> start!129648 m!1404655))

(declare-fun m!1404657 () Bool)

(assert (=> start!129648 m!1404657))

(assert (=> b!1521501 m!1404649))

(assert (=> b!1521501 m!1404649))

(declare-fun m!1404659 () Bool)

(assert (=> b!1521501 m!1404659))

(declare-fun m!1404661 () Bool)

(assert (=> b!1521499 m!1404661))

(assert (=> b!1521499 m!1404661))

(declare-fun m!1404663 () Bool)

(assert (=> b!1521499 m!1404663))

(declare-fun m!1404665 () Bool)

(assert (=> b!1521500 m!1404665))

(assert (=> b!1521504 m!1404649))

(assert (=> b!1521504 m!1404649))

(declare-fun m!1404667 () Bool)

(assert (=> b!1521504 m!1404667))

(declare-fun m!1404669 () Bool)

(assert (=> b!1521497 m!1404669))

(push 1)

