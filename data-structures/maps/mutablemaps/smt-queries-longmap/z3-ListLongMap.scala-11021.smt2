; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129006 () Bool)

(assert start!129006)

(declare-fun b!1511845 () Bool)

(declare-fun res!1031830 () Bool)

(declare-fun e!844003 () Bool)

(assert (=> b!1511845 (=> (not res!1031830) (not e!844003))))

(declare-datatypes ((array!100775 0))(
  ( (array!100776 (arr!48620 (Array (_ BitVec 32) (_ BitVec 64))) (size!49171 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100775)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511845 (= res!1031830 (validKeyInArray!0 (select (arr!48620 a!2804) i!961)))))

(declare-fun b!1511846 () Bool)

(declare-fun res!1031829 () Bool)

(declare-fun e!844000 () Bool)

(assert (=> b!1511846 (=> (not res!1031829) (not e!844000))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12812 0))(
  ( (MissingZero!12812 (index!53642 (_ BitVec 32))) (Found!12812 (index!53643 (_ BitVec 32))) (Intermediate!12812 (undefined!13624 Bool) (index!53644 (_ BitVec 32)) (x!135383 (_ BitVec 32))) (Undefined!12812) (MissingVacant!12812 (index!53645 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100775 (_ BitVec 32)) SeekEntryResult!12812)

(assert (=> b!1511846 (= res!1031829 (= (seekEntry!0 (select (arr!48620 a!2804) j!70) a!2804 mask!2512) (Found!12812 j!70)))))

(declare-fun b!1511847 () Bool)

(declare-fun res!1031825 () Bool)

(declare-fun e!844002 () Bool)

(assert (=> b!1511847 (=> (not res!1031825) (not e!844002))))

(declare-fun lt!655512 () SeekEntryResult!12812)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100775 (_ BitVec 32)) SeekEntryResult!12812)

(assert (=> b!1511847 (= res!1031825 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48620 a!2804) j!70) a!2804 mask!2512) lt!655512))))

(declare-fun b!1511848 () Bool)

(declare-fun e!844001 () Bool)

(assert (=> b!1511848 (= e!844000 e!844001)))

(declare-fun res!1031831 () Bool)

(assert (=> b!1511848 (=> res!1031831 e!844001)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1511848 (= res!1031831 (or (not (= (select (arr!48620 a!2804) j!70) (select (store (arr!48620 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48620 a!2804) index!487) (select (arr!48620 a!2804) j!70)) (not (= (select (arr!48620 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1511849 () Bool)

(declare-fun res!1031827 () Bool)

(assert (=> b!1511849 (=> (not res!1031827) (not e!844003))))

(assert (=> b!1511849 (= res!1031827 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49171 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49171 a!2804))))))

(declare-fun b!1511850 () Bool)

(declare-fun res!1031828 () Bool)

(assert (=> b!1511850 (=> (not res!1031828) (not e!844003))))

(assert (=> b!1511850 (= res!1031828 (and (= (size!49171 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49171 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49171 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511851 () Bool)

(declare-fun res!1031822 () Bool)

(assert (=> b!1511851 (=> (not res!1031822) (not e!844002))))

(declare-fun lt!655511 () SeekEntryResult!12812)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511851 (= res!1031822 (= lt!655511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48620 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48620 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100776 (store (arr!48620 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49171 a!2804)) mask!2512)))))

(declare-fun b!1511852 () Bool)

(declare-fun res!1031826 () Bool)

(assert (=> b!1511852 (=> (not res!1031826) (not e!844003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100775 (_ BitVec 32)) Bool)

(assert (=> b!1511852 (= res!1031826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511853 () Bool)

(assert (=> b!1511853 (= e!844002 (not true))))

(assert (=> b!1511853 e!844000))

(declare-fun res!1031821 () Bool)

(assert (=> b!1511853 (=> (not res!1031821) (not e!844000))))

(assert (=> b!1511853 (= res!1031821 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50448 0))(
  ( (Unit!50449) )
))
(declare-fun lt!655513 () Unit!50448)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100775 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50448)

(assert (=> b!1511853 (= lt!655513 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511854 () Bool)

(declare-fun res!1031824 () Bool)

(assert (=> b!1511854 (=> (not res!1031824) (not e!844003))))

(assert (=> b!1511854 (= res!1031824 (validKeyInArray!0 (select (arr!48620 a!2804) j!70)))))

(declare-fun b!1511855 () Bool)

(assert (=> b!1511855 (= e!844003 e!844002)))

(declare-fun res!1031832 () Bool)

(assert (=> b!1511855 (=> (not res!1031832) (not e!844002))))

(assert (=> b!1511855 (= res!1031832 (= lt!655511 lt!655512))))

(assert (=> b!1511855 (= lt!655512 (Intermediate!12812 false resIndex!21 resX!21))))

(assert (=> b!1511855 (= lt!655511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48620 a!2804) j!70) mask!2512) (select (arr!48620 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511856 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100775 (_ BitVec 32)) SeekEntryResult!12812)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100775 (_ BitVec 32)) SeekEntryResult!12812)

(assert (=> b!1511856 (= e!844001 (= (seekEntryOrOpen!0 (select (arr!48620 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48620 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1511857 () Bool)

(declare-fun res!1031823 () Bool)

(assert (=> b!1511857 (=> (not res!1031823) (not e!844003))))

(declare-datatypes ((List!35283 0))(
  ( (Nil!35280) (Cons!35279 (h!36692 (_ BitVec 64)) (t!49984 List!35283)) )
))
(declare-fun arrayNoDuplicates!0 (array!100775 (_ BitVec 32) List!35283) Bool)

(assert (=> b!1511857 (= res!1031823 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35280))))

(declare-fun res!1031820 () Bool)

(assert (=> start!129006 (=> (not res!1031820) (not e!844003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129006 (= res!1031820 (validMask!0 mask!2512))))

(assert (=> start!129006 e!844003))

(assert (=> start!129006 true))

(declare-fun array_inv!37565 (array!100775) Bool)

(assert (=> start!129006 (array_inv!37565 a!2804)))

(assert (= (and start!129006 res!1031820) b!1511850))

(assert (= (and b!1511850 res!1031828) b!1511845))

(assert (= (and b!1511845 res!1031830) b!1511854))

(assert (= (and b!1511854 res!1031824) b!1511852))

(assert (= (and b!1511852 res!1031826) b!1511857))

(assert (= (and b!1511857 res!1031823) b!1511849))

(assert (= (and b!1511849 res!1031827) b!1511855))

(assert (= (and b!1511855 res!1031832) b!1511847))

(assert (= (and b!1511847 res!1031825) b!1511851))

(assert (= (and b!1511851 res!1031822) b!1511853))

(assert (= (and b!1511853 res!1031821) b!1511846))

(assert (= (and b!1511846 res!1031829) b!1511848))

(assert (= (and b!1511848 (not res!1031831)) b!1511856))

(declare-fun m!1394631 () Bool)

(assert (=> b!1511846 m!1394631))

(assert (=> b!1511846 m!1394631))

(declare-fun m!1394633 () Bool)

(assert (=> b!1511846 m!1394633))

(declare-fun m!1394635 () Bool)

(assert (=> b!1511851 m!1394635))

(declare-fun m!1394637 () Bool)

(assert (=> b!1511851 m!1394637))

(assert (=> b!1511851 m!1394637))

(declare-fun m!1394639 () Bool)

(assert (=> b!1511851 m!1394639))

(assert (=> b!1511851 m!1394639))

(assert (=> b!1511851 m!1394637))

(declare-fun m!1394641 () Bool)

(assert (=> b!1511851 m!1394641))

(declare-fun m!1394643 () Bool)

(assert (=> b!1511853 m!1394643))

(declare-fun m!1394645 () Bool)

(assert (=> b!1511853 m!1394645))

(declare-fun m!1394647 () Bool)

(assert (=> start!129006 m!1394647))

(declare-fun m!1394649 () Bool)

(assert (=> start!129006 m!1394649))

(assert (=> b!1511855 m!1394631))

(assert (=> b!1511855 m!1394631))

(declare-fun m!1394651 () Bool)

(assert (=> b!1511855 m!1394651))

(assert (=> b!1511855 m!1394651))

(assert (=> b!1511855 m!1394631))

(declare-fun m!1394653 () Bool)

(assert (=> b!1511855 m!1394653))

(declare-fun m!1394655 () Bool)

(assert (=> b!1511845 m!1394655))

(assert (=> b!1511845 m!1394655))

(declare-fun m!1394657 () Bool)

(assert (=> b!1511845 m!1394657))

(assert (=> b!1511856 m!1394631))

(assert (=> b!1511856 m!1394631))

(declare-fun m!1394659 () Bool)

(assert (=> b!1511856 m!1394659))

(assert (=> b!1511856 m!1394631))

(declare-fun m!1394661 () Bool)

(assert (=> b!1511856 m!1394661))

(assert (=> b!1511848 m!1394631))

(assert (=> b!1511848 m!1394635))

(assert (=> b!1511848 m!1394637))

(declare-fun m!1394663 () Bool)

(assert (=> b!1511848 m!1394663))

(assert (=> b!1511847 m!1394631))

(assert (=> b!1511847 m!1394631))

(declare-fun m!1394665 () Bool)

(assert (=> b!1511847 m!1394665))

(assert (=> b!1511854 m!1394631))

(assert (=> b!1511854 m!1394631))

(declare-fun m!1394667 () Bool)

(assert (=> b!1511854 m!1394667))

(declare-fun m!1394669 () Bool)

(assert (=> b!1511852 m!1394669))

(declare-fun m!1394671 () Bool)

(assert (=> b!1511857 m!1394671))

(check-sat (not b!1511853) (not b!1511854) (not b!1511846) (not start!129006) (not b!1511857) (not b!1511851) (not b!1511852) (not b!1511856) (not b!1511855) (not b!1511847) (not b!1511845))
(check-sat)
