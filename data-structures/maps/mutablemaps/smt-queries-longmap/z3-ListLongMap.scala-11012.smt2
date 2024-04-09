; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128952 () Bool)

(assert start!128952)

(declare-fun b!1510908 () Bool)

(declare-fun res!1030884 () Bool)

(declare-fun e!843654 () Bool)

(assert (=> b!1510908 (=> (not res!1030884) (not e!843654))))

(declare-datatypes ((array!100721 0))(
  ( (array!100722 (arr!48593 (Array (_ BitVec 32) (_ BitVec 64))) (size!49144 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100721)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510908 (= res!1030884 (validKeyInArray!0 (select (arr!48593 a!2804) i!961)))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun e!843656 () Bool)

(declare-fun b!1510909 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12785 0))(
  ( (MissingZero!12785 (index!53534 (_ BitVec 32))) (Found!12785 (index!53535 (_ BitVec 32))) (Intermediate!12785 (undefined!13597 Bool) (index!53536 (_ BitVec 32)) (x!135284 (_ BitVec 32))) (Undefined!12785) (MissingVacant!12785 (index!53537 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100721 (_ BitVec 32)) SeekEntryResult!12785)

(assert (=> b!1510909 (= e!843656 (= (seekEntry!0 (select (arr!48593 a!2804) j!70) a!2804 mask!2512) (Found!12785 j!70)))))

(declare-fun b!1510910 () Bool)

(declare-fun res!1030887 () Bool)

(assert (=> b!1510910 (=> (not res!1030887) (not e!843654))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100721 (_ BitVec 32)) Bool)

(assert (=> b!1510910 (= res!1030887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun b!1510911 () Bool)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun e!843653 () Bool)

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1510911 (= e!843653 (not (or (not (= (select (arr!48593 a!2804) j!70) (select (store (arr!48593 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48593 a!2804) index!487) (select (arr!48593 a!2804) j!70)) (not (= (select (arr!48593 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(assert (=> b!1510911 e!843656))

(declare-fun res!1030886 () Bool)

(assert (=> b!1510911 (=> (not res!1030886) (not e!843656))))

(assert (=> b!1510911 (= res!1030886 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50394 0))(
  ( (Unit!50395) )
))
(declare-fun lt!655269 () Unit!50394)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100721 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50394)

(assert (=> b!1510911 (= lt!655269 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510912 () Bool)

(declare-fun res!1030893 () Bool)

(assert (=> b!1510912 (=> (not res!1030893) (not e!843654))))

(declare-datatypes ((List!35256 0))(
  ( (Nil!35253) (Cons!35252 (h!36665 (_ BitVec 64)) (t!49957 List!35256)) )
))
(declare-fun arrayNoDuplicates!0 (array!100721 (_ BitVec 32) List!35256) Bool)

(assert (=> b!1510912 (= res!1030893 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35253))))

(declare-fun b!1510913 () Bool)

(declare-fun res!1030892 () Bool)

(assert (=> b!1510913 (=> (not res!1030892) (not e!843653))))

(declare-fun lt!655268 () SeekEntryResult!12785)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100721 (_ BitVec 32)) SeekEntryResult!12785)

(assert (=> b!1510913 (= res!1030892 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48593 a!2804) j!70) a!2804 mask!2512) lt!655268))))

(declare-fun b!1510914 () Bool)

(declare-fun res!1030888 () Bool)

(assert (=> b!1510914 (=> (not res!1030888) (not e!843653))))

(declare-fun lt!655270 () SeekEntryResult!12785)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510914 (= res!1030888 (= lt!655270 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48593 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48593 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100722 (store (arr!48593 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49144 a!2804)) mask!2512)))))

(declare-fun res!1030890 () Bool)

(assert (=> start!128952 (=> (not res!1030890) (not e!843654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128952 (= res!1030890 (validMask!0 mask!2512))))

(assert (=> start!128952 e!843654))

(assert (=> start!128952 true))

(declare-fun array_inv!37538 (array!100721) Bool)

(assert (=> start!128952 (array_inv!37538 a!2804)))

(declare-fun b!1510915 () Bool)

(declare-fun res!1030891 () Bool)

(assert (=> b!1510915 (=> (not res!1030891) (not e!843654))))

(assert (=> b!1510915 (= res!1030891 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49144 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49144 a!2804))))))

(declare-fun b!1510916 () Bool)

(declare-fun res!1030889 () Bool)

(assert (=> b!1510916 (=> (not res!1030889) (not e!843654))))

(assert (=> b!1510916 (= res!1030889 (validKeyInArray!0 (select (arr!48593 a!2804) j!70)))))

(declare-fun b!1510917 () Bool)

(declare-fun res!1030883 () Bool)

(assert (=> b!1510917 (=> (not res!1030883) (not e!843654))))

(assert (=> b!1510917 (= res!1030883 (and (= (size!49144 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49144 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49144 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510918 () Bool)

(assert (=> b!1510918 (= e!843654 e!843653)))

(declare-fun res!1030885 () Bool)

(assert (=> b!1510918 (=> (not res!1030885) (not e!843653))))

(assert (=> b!1510918 (= res!1030885 (= lt!655270 lt!655268))))

(assert (=> b!1510918 (= lt!655268 (Intermediate!12785 false resIndex!21 resX!21))))

(assert (=> b!1510918 (= lt!655270 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48593 a!2804) j!70) mask!2512) (select (arr!48593 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!128952 res!1030890) b!1510917))

(assert (= (and b!1510917 res!1030883) b!1510908))

(assert (= (and b!1510908 res!1030884) b!1510916))

(assert (= (and b!1510916 res!1030889) b!1510910))

(assert (= (and b!1510910 res!1030887) b!1510912))

(assert (= (and b!1510912 res!1030893) b!1510915))

(assert (= (and b!1510915 res!1030891) b!1510918))

(assert (= (and b!1510918 res!1030885) b!1510913))

(assert (= (and b!1510913 res!1030892) b!1510914))

(assert (= (and b!1510914 res!1030888) b!1510911))

(assert (= (and b!1510911 res!1030886) b!1510909))

(declare-fun m!1393607 () Bool)

(assert (=> b!1510914 m!1393607))

(declare-fun m!1393609 () Bool)

(assert (=> b!1510914 m!1393609))

(assert (=> b!1510914 m!1393609))

(declare-fun m!1393611 () Bool)

(assert (=> b!1510914 m!1393611))

(assert (=> b!1510914 m!1393611))

(assert (=> b!1510914 m!1393609))

(declare-fun m!1393613 () Bool)

(assert (=> b!1510914 m!1393613))

(declare-fun m!1393615 () Bool)

(assert (=> b!1510908 m!1393615))

(assert (=> b!1510908 m!1393615))

(declare-fun m!1393617 () Bool)

(assert (=> b!1510908 m!1393617))

(declare-fun m!1393619 () Bool)

(assert (=> b!1510909 m!1393619))

(assert (=> b!1510909 m!1393619))

(declare-fun m!1393621 () Bool)

(assert (=> b!1510909 m!1393621))

(assert (=> b!1510918 m!1393619))

(assert (=> b!1510918 m!1393619))

(declare-fun m!1393623 () Bool)

(assert (=> b!1510918 m!1393623))

(assert (=> b!1510918 m!1393623))

(assert (=> b!1510918 m!1393619))

(declare-fun m!1393625 () Bool)

(assert (=> b!1510918 m!1393625))

(declare-fun m!1393627 () Bool)

(assert (=> b!1510912 m!1393627))

(assert (=> b!1510916 m!1393619))

(assert (=> b!1510916 m!1393619))

(declare-fun m!1393629 () Bool)

(assert (=> b!1510916 m!1393629))

(declare-fun m!1393631 () Bool)

(assert (=> b!1510910 m!1393631))

(assert (=> b!1510913 m!1393619))

(assert (=> b!1510913 m!1393619))

(declare-fun m!1393633 () Bool)

(assert (=> b!1510913 m!1393633))

(declare-fun m!1393635 () Bool)

(assert (=> start!128952 m!1393635))

(declare-fun m!1393637 () Bool)

(assert (=> start!128952 m!1393637))

(assert (=> b!1510911 m!1393619))

(declare-fun m!1393639 () Bool)

(assert (=> b!1510911 m!1393639))

(assert (=> b!1510911 m!1393607))

(declare-fun m!1393641 () Bool)

(assert (=> b!1510911 m!1393641))

(assert (=> b!1510911 m!1393609))

(declare-fun m!1393643 () Bool)

(assert (=> b!1510911 m!1393643))

(check-sat (not start!128952) (not b!1510918) (not b!1510910) (not b!1510913) (not b!1510909) (not b!1510911) (not b!1510914) (not b!1510916) (not b!1510912) (not b!1510908))
(check-sat)
