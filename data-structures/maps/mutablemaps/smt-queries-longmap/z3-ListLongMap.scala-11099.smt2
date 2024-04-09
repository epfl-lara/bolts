; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129650 () Bool)

(assert start!129650)

(declare-fun b!1521524 () Bool)

(declare-fun res!1040891 () Bool)

(declare-fun e!848550 () Bool)

(assert (=> b!1521524 (=> (not res!1040891) (not e!848550))))

(declare-datatypes ((array!101252 0))(
  ( (array!101253 (arr!48854 (Array (_ BitVec 32) (_ BitVec 64))) (size!49405 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101252)

(declare-datatypes ((List!35517 0))(
  ( (Nil!35514) (Cons!35513 (h!36935 (_ BitVec 64)) (t!50218 List!35517)) )
))
(declare-fun arrayNoDuplicates!0 (array!101252 (_ BitVec 32) List!35517) Bool)

(assert (=> b!1521524 (= res!1040891 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35514))))

(declare-fun b!1521526 () Bool)

(declare-fun res!1040887 () Bool)

(assert (=> b!1521526 (=> (not res!1040887) (not e!848550))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1521526 (= res!1040887 (and (= (size!49405 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49405 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49405 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521527 () Bool)

(declare-fun res!1040884 () Bool)

(assert (=> b!1521527 (=> (not res!1040884) (not e!848550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521527 (= res!1040884 (validKeyInArray!0 (select (arr!48854 a!2804) i!961)))))

(declare-fun b!1521528 () Bool)

(declare-fun e!848552 () Bool)

(assert (=> b!1521528 (= e!848550 e!848552)))

(declare-fun res!1040889 () Bool)

(assert (=> b!1521528 (=> (not res!1040889) (not e!848552))))

(declare-datatypes ((SeekEntryResult!13040 0))(
  ( (MissingZero!13040 (index!54554 (_ BitVec 32))) (Found!13040 (index!54555 (_ BitVec 32))) (Intermediate!13040 (undefined!13852 Bool) (index!54556 (_ BitVec 32)) (x!136255 (_ BitVec 32))) (Undefined!13040) (MissingVacant!13040 (index!54557 (_ BitVec 32))) )
))
(declare-fun lt!659320 () SeekEntryResult!13040)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101252 (_ BitVec 32)) SeekEntryResult!13040)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521528 (= res!1040889 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48854 a!2804) j!70) mask!2512) (select (arr!48854 a!2804) j!70) a!2804 mask!2512) lt!659320))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1521528 (= lt!659320 (Intermediate!13040 false resIndex!21 resX!21))))

(declare-fun b!1521529 () Bool)

(declare-fun res!1040885 () Bool)

(assert (=> b!1521529 (=> (not res!1040885) (not e!848552))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1521529 (= res!1040885 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48854 a!2804) j!70) a!2804 mask!2512) lt!659320))))

(declare-fun b!1521530 () Bool)

(declare-fun res!1040888 () Bool)

(assert (=> b!1521530 (=> (not res!1040888) (not e!848550))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101252 (_ BitVec 32)) Bool)

(assert (=> b!1521530 (= res!1040888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521531 () Bool)

(declare-fun res!1040886 () Bool)

(assert (=> b!1521531 (=> (not res!1040886) (not e!848550))))

(assert (=> b!1521531 (= res!1040886 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49405 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49405 a!2804))))))

(declare-fun b!1521532 () Bool)

(assert (=> b!1521532 (= e!848552 false)))

(declare-fun lt!659319 () SeekEntryResult!13040)

(assert (=> b!1521532 (= lt!659319 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48854 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48854 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101253 (store (arr!48854 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49405 a!2804)) mask!2512))))

(declare-fun res!1040892 () Bool)

(assert (=> start!129650 (=> (not res!1040892) (not e!848550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129650 (= res!1040892 (validMask!0 mask!2512))))

(assert (=> start!129650 e!848550))

(assert (=> start!129650 true))

(declare-fun array_inv!37799 (array!101252) Bool)

(assert (=> start!129650 (array_inv!37799 a!2804)))

(declare-fun b!1521525 () Bool)

(declare-fun res!1040890 () Bool)

(assert (=> b!1521525 (=> (not res!1040890) (not e!848550))))

(assert (=> b!1521525 (= res!1040890 (validKeyInArray!0 (select (arr!48854 a!2804) j!70)))))

(assert (= (and start!129650 res!1040892) b!1521526))

(assert (= (and b!1521526 res!1040887) b!1521527))

(assert (= (and b!1521527 res!1040884) b!1521525))

(assert (= (and b!1521525 res!1040890) b!1521530))

(assert (= (and b!1521530 res!1040888) b!1521524))

(assert (= (and b!1521524 res!1040891) b!1521531))

(assert (= (and b!1521531 res!1040886) b!1521528))

(assert (= (and b!1521528 res!1040889) b!1521529))

(assert (= (and b!1521529 res!1040885) b!1521532))

(declare-fun m!1404671 () Bool)

(assert (=> b!1521527 m!1404671))

(assert (=> b!1521527 m!1404671))

(declare-fun m!1404673 () Bool)

(assert (=> b!1521527 m!1404673))

(declare-fun m!1404675 () Bool)

(assert (=> b!1521532 m!1404675))

(declare-fun m!1404677 () Bool)

(assert (=> b!1521532 m!1404677))

(assert (=> b!1521532 m!1404677))

(declare-fun m!1404679 () Bool)

(assert (=> b!1521532 m!1404679))

(assert (=> b!1521532 m!1404679))

(assert (=> b!1521532 m!1404677))

(declare-fun m!1404681 () Bool)

(assert (=> b!1521532 m!1404681))

(declare-fun m!1404683 () Bool)

(assert (=> b!1521525 m!1404683))

(assert (=> b!1521525 m!1404683))

(declare-fun m!1404685 () Bool)

(assert (=> b!1521525 m!1404685))

(assert (=> b!1521529 m!1404683))

(assert (=> b!1521529 m!1404683))

(declare-fun m!1404687 () Bool)

(assert (=> b!1521529 m!1404687))

(declare-fun m!1404689 () Bool)

(assert (=> start!129650 m!1404689))

(declare-fun m!1404691 () Bool)

(assert (=> start!129650 m!1404691))

(declare-fun m!1404693 () Bool)

(assert (=> b!1521524 m!1404693))

(declare-fun m!1404695 () Bool)

(assert (=> b!1521530 m!1404695))

(assert (=> b!1521528 m!1404683))

(assert (=> b!1521528 m!1404683))

(declare-fun m!1404697 () Bool)

(assert (=> b!1521528 m!1404697))

(assert (=> b!1521528 m!1404697))

(assert (=> b!1521528 m!1404683))

(declare-fun m!1404699 () Bool)

(assert (=> b!1521528 m!1404699))

(check-sat (not b!1521532) (not b!1521528) (not b!1521529) (not start!129650) (not b!1521525) (not b!1521530) (not b!1521527) (not b!1521524))
(check-sat)
