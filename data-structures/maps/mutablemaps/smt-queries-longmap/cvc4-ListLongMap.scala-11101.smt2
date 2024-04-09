; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129664 () Bool)

(assert start!129664)

(declare-fun b!1521713 () Bool)

(declare-fun res!1041076 () Bool)

(declare-fun e!848613 () Bool)

(assert (=> b!1521713 (=> (not res!1041076) (not e!848613))))

(declare-datatypes ((array!101266 0))(
  ( (array!101267 (arr!48861 (Array (_ BitVec 32) (_ BitVec 64))) (size!49412 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101266)

(declare-datatypes ((List!35524 0))(
  ( (Nil!35521) (Cons!35520 (h!36942 (_ BitVec 64)) (t!50225 List!35524)) )
))
(declare-fun arrayNoDuplicates!0 (array!101266 (_ BitVec 32) List!35524) Bool)

(assert (=> b!1521713 (= res!1041076 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35521))))

(declare-fun b!1521714 () Bool)

(declare-fun res!1041073 () Bool)

(assert (=> b!1521714 (=> (not res!1041073) (not e!848613))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1521714 (= res!1041073 (and (= (size!49412 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49412 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49412 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521715 () Bool)

(declare-fun res!1041081 () Bool)

(assert (=> b!1521715 (=> (not res!1041081) (not e!848613))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521715 (= res!1041081 (validKeyInArray!0 (select (arr!48861 a!2804) j!70)))))

(declare-fun res!1041080 () Bool)

(assert (=> start!129664 (=> (not res!1041080) (not e!848613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129664 (= res!1041080 (validMask!0 mask!2512))))

(assert (=> start!129664 e!848613))

(assert (=> start!129664 true))

(declare-fun array_inv!37806 (array!101266) Bool)

(assert (=> start!129664 (array_inv!37806 a!2804)))

(declare-fun b!1521716 () Bool)

(declare-fun res!1041075 () Bool)

(assert (=> b!1521716 (=> (not res!1041075) (not e!848613))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1521716 (= res!1041075 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49412 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49412 a!2804))))))

(declare-fun b!1521717 () Bool)

(declare-fun res!1041079 () Bool)

(assert (=> b!1521717 (=> (not res!1041079) (not e!848613))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101266 (_ BitVec 32)) Bool)

(assert (=> b!1521717 (= res!1041079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521718 () Bool)

(declare-fun res!1041078 () Bool)

(assert (=> b!1521718 (=> (not res!1041078) (not e!848613))))

(assert (=> b!1521718 (= res!1041078 (validKeyInArray!0 (select (arr!48861 a!2804) i!961)))))

(declare-fun b!1521719 () Bool)

(declare-fun e!848615 () Bool)

(assert (=> b!1521719 (= e!848615 false)))

(declare-datatypes ((SeekEntryResult!13047 0))(
  ( (MissingZero!13047 (index!54582 (_ BitVec 32))) (Found!13047 (index!54583 (_ BitVec 32))) (Intermediate!13047 (undefined!13859 Bool) (index!54584 (_ BitVec 32)) (x!136278 (_ BitVec 32))) (Undefined!13047) (MissingVacant!13047 (index!54585 (_ BitVec 32))) )
))
(declare-fun lt!659361 () SeekEntryResult!13047)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101266 (_ BitVec 32)) SeekEntryResult!13047)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521719 (= lt!659361 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48861 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48861 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101267 (store (arr!48861 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49412 a!2804)) mask!2512))))

(declare-fun b!1521720 () Bool)

(assert (=> b!1521720 (= e!848613 e!848615)))

(declare-fun res!1041077 () Bool)

(assert (=> b!1521720 (=> (not res!1041077) (not e!848615))))

(declare-fun lt!659362 () SeekEntryResult!13047)

(assert (=> b!1521720 (= res!1041077 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48861 a!2804) j!70) mask!2512) (select (arr!48861 a!2804) j!70) a!2804 mask!2512) lt!659362))))

(assert (=> b!1521720 (= lt!659362 (Intermediate!13047 false resIndex!21 resX!21))))

(declare-fun b!1521721 () Bool)

(declare-fun res!1041074 () Bool)

(assert (=> b!1521721 (=> (not res!1041074) (not e!848615))))

(assert (=> b!1521721 (= res!1041074 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48861 a!2804) j!70) a!2804 mask!2512) lt!659362))))

(assert (= (and start!129664 res!1041080) b!1521714))

(assert (= (and b!1521714 res!1041073) b!1521718))

(assert (= (and b!1521718 res!1041078) b!1521715))

(assert (= (and b!1521715 res!1041081) b!1521717))

(assert (= (and b!1521717 res!1041079) b!1521713))

(assert (= (and b!1521713 res!1041076) b!1521716))

(assert (= (and b!1521716 res!1041075) b!1521720))

(assert (= (and b!1521720 res!1041077) b!1521721))

(assert (= (and b!1521721 res!1041074) b!1521719))

(declare-fun m!1404881 () Bool)

(assert (=> b!1521715 m!1404881))

(assert (=> b!1521715 m!1404881))

(declare-fun m!1404883 () Bool)

(assert (=> b!1521715 m!1404883))

(assert (=> b!1521721 m!1404881))

(assert (=> b!1521721 m!1404881))

(declare-fun m!1404885 () Bool)

(assert (=> b!1521721 m!1404885))

(declare-fun m!1404887 () Bool)

(assert (=> b!1521713 m!1404887))

(assert (=> b!1521720 m!1404881))

(assert (=> b!1521720 m!1404881))

(declare-fun m!1404889 () Bool)

(assert (=> b!1521720 m!1404889))

(assert (=> b!1521720 m!1404889))

(assert (=> b!1521720 m!1404881))

(declare-fun m!1404891 () Bool)

(assert (=> b!1521720 m!1404891))

(declare-fun m!1404893 () Bool)

(assert (=> b!1521717 m!1404893))

(declare-fun m!1404895 () Bool)

(assert (=> b!1521719 m!1404895))

(declare-fun m!1404897 () Bool)

(assert (=> b!1521719 m!1404897))

(assert (=> b!1521719 m!1404897))

(declare-fun m!1404899 () Bool)

(assert (=> b!1521719 m!1404899))

(assert (=> b!1521719 m!1404899))

(assert (=> b!1521719 m!1404897))

(declare-fun m!1404901 () Bool)

(assert (=> b!1521719 m!1404901))

(declare-fun m!1404903 () Bool)

(assert (=> b!1521718 m!1404903))

(assert (=> b!1521718 m!1404903))

(declare-fun m!1404905 () Bool)

(assert (=> b!1521718 m!1404905))

(declare-fun m!1404907 () Bool)

(assert (=> start!129664 m!1404907))

(declare-fun m!1404909 () Bool)

(assert (=> start!129664 m!1404909))

(push 1)

(assert (not b!1521721))

(assert (not b!1521718))

(assert (not b!1521719))

(assert (not b!1521713))

(assert (not start!129664))

(assert (not b!1521720))

(assert (not b!1521717))

(assert (not b!1521715))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

