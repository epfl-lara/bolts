; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119690 () Bool)

(assert start!119690)

(declare-fun b!1393653 () Bool)

(declare-fun res!933174 () Bool)

(declare-fun e!789150 () Bool)

(assert (=> b!1393653 (=> (not res!933174) (not e!789150))))

(declare-datatypes ((array!95290 0))(
  ( (array!95291 (arr!45999 (Array (_ BitVec 32) (_ BitVec 64))) (size!46550 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95290)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95290 (_ BitVec 32)) Bool)

(assert (=> b!1393653 (= res!933174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393654 () Bool)

(declare-fun e!789152 () Bool)

(assert (=> b!1393654 (= e!789150 (not e!789152))))

(declare-fun res!933170 () Bool)

(assert (=> b!1393654 (=> res!933170 e!789152)))

(declare-datatypes ((SeekEntryResult!10338 0))(
  ( (MissingZero!10338 (index!43722 (_ BitVec 32))) (Found!10338 (index!43723 (_ BitVec 32))) (Intermediate!10338 (undefined!11150 Bool) (index!43724 (_ BitVec 32)) (x!125401 (_ BitVec 32))) (Undefined!10338) (MissingVacant!10338 (index!43725 (_ BitVec 32))) )
))
(declare-fun lt!612041 () SeekEntryResult!10338)

(assert (=> b!1393654 (= res!933170 (or (not (is-Intermediate!10338 lt!612041)) (undefined!11150 lt!612041)))))

(declare-fun e!789149 () Bool)

(assert (=> b!1393654 e!789149))

(declare-fun res!933172 () Bool)

(assert (=> b!1393654 (=> (not res!933172) (not e!789149))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1393654 (= res!933172 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46630 0))(
  ( (Unit!46631) )
))
(declare-fun lt!612043 () Unit!46630)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95290 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46630)

(assert (=> b!1393654 (= lt!612043 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95290 (_ BitVec 32)) SeekEntryResult!10338)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393654 (= lt!612041 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45999 a!2901) j!112) mask!2840) (select (arr!45999 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393655 () Bool)

(declare-fun res!933175 () Bool)

(assert (=> b!1393655 (=> (not res!933175) (not e!789150))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1393655 (= res!933175 (and (= (size!46550 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46550 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46550 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393656 () Bool)

(declare-fun res!933173 () Bool)

(assert (=> b!1393656 (=> (not res!933173) (not e!789150))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393656 (= res!933173 (validKeyInArray!0 (select (arr!45999 a!2901) i!1037)))))

(declare-fun res!933176 () Bool)

(assert (=> start!119690 (=> (not res!933176) (not e!789150))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119690 (= res!933176 (validMask!0 mask!2840))))

(assert (=> start!119690 e!789150))

(assert (=> start!119690 true))

(declare-fun array_inv!34944 (array!95290) Bool)

(assert (=> start!119690 (array_inv!34944 a!2901)))

(declare-fun b!1393657 () Bool)

(assert (=> b!1393657 (= e!789152 true)))

(declare-fun lt!612042 () SeekEntryResult!10338)

(assert (=> b!1393657 (= lt!612042 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45999 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45999 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95291 (store (arr!45999 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46550 a!2901)) mask!2840))))

(declare-fun b!1393658 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95290 (_ BitVec 32)) SeekEntryResult!10338)

(assert (=> b!1393658 (= e!789149 (= (seekEntryOrOpen!0 (select (arr!45999 a!2901) j!112) a!2901 mask!2840) (Found!10338 j!112)))))

(declare-fun b!1393659 () Bool)

(declare-fun res!933171 () Bool)

(assert (=> b!1393659 (=> (not res!933171) (not e!789150))))

(declare-datatypes ((List!32698 0))(
  ( (Nil!32695) (Cons!32694 (h!33927 (_ BitVec 64)) (t!47399 List!32698)) )
))
(declare-fun arrayNoDuplicates!0 (array!95290 (_ BitVec 32) List!32698) Bool)

(assert (=> b!1393659 (= res!933171 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32695))))

(declare-fun b!1393660 () Bool)

(declare-fun res!933177 () Bool)

(assert (=> b!1393660 (=> (not res!933177) (not e!789150))))

(assert (=> b!1393660 (= res!933177 (validKeyInArray!0 (select (arr!45999 a!2901) j!112)))))

(assert (= (and start!119690 res!933176) b!1393655))

(assert (= (and b!1393655 res!933175) b!1393656))

(assert (= (and b!1393656 res!933173) b!1393660))

(assert (= (and b!1393660 res!933177) b!1393653))

(assert (= (and b!1393653 res!933174) b!1393659))

(assert (= (and b!1393659 res!933171) b!1393654))

(assert (= (and b!1393654 res!933172) b!1393658))

(assert (= (and b!1393654 (not res!933170)) b!1393657))

(declare-fun m!1279747 () Bool)

(assert (=> b!1393658 m!1279747))

(assert (=> b!1393658 m!1279747))

(declare-fun m!1279749 () Bool)

(assert (=> b!1393658 m!1279749))

(declare-fun m!1279751 () Bool)

(assert (=> b!1393657 m!1279751))

(declare-fun m!1279753 () Bool)

(assert (=> b!1393657 m!1279753))

(assert (=> b!1393657 m!1279753))

(declare-fun m!1279755 () Bool)

(assert (=> b!1393657 m!1279755))

(assert (=> b!1393657 m!1279755))

(assert (=> b!1393657 m!1279753))

(declare-fun m!1279757 () Bool)

(assert (=> b!1393657 m!1279757))

(assert (=> b!1393654 m!1279747))

(declare-fun m!1279759 () Bool)

(assert (=> b!1393654 m!1279759))

(assert (=> b!1393654 m!1279747))

(declare-fun m!1279761 () Bool)

(assert (=> b!1393654 m!1279761))

(assert (=> b!1393654 m!1279759))

(assert (=> b!1393654 m!1279747))

(declare-fun m!1279763 () Bool)

(assert (=> b!1393654 m!1279763))

(declare-fun m!1279765 () Bool)

(assert (=> b!1393654 m!1279765))

(assert (=> b!1393660 m!1279747))

(assert (=> b!1393660 m!1279747))

(declare-fun m!1279767 () Bool)

(assert (=> b!1393660 m!1279767))

(declare-fun m!1279769 () Bool)

(assert (=> b!1393659 m!1279769))

(declare-fun m!1279771 () Bool)

(assert (=> b!1393653 m!1279771))

(declare-fun m!1279773 () Bool)

(assert (=> b!1393656 m!1279773))

(assert (=> b!1393656 m!1279773))

(declare-fun m!1279775 () Bool)

(assert (=> b!1393656 m!1279775))

(declare-fun m!1279777 () Bool)

(assert (=> start!119690 m!1279777))

(declare-fun m!1279779 () Bool)

(assert (=> start!119690 m!1279779))

(push 1)

(assert (not b!1393660))

(assert (not b!1393654))

(assert (not b!1393659))

(assert (not b!1393653))

(assert (not b!1393656))

(assert (not b!1393657))

(assert (not b!1393658))

(assert (not start!119690))

(check-sat)

(pop 1)

