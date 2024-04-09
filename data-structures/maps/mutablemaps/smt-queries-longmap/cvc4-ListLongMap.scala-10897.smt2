; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127694 () Bool)

(assert start!127694)

(declare-fun res!1020798 () Bool)

(declare-fun e!839381 () Bool)

(assert (=> start!127694 (=> (not res!1020798) (not e!839381))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127694 (= res!1020798 (validMask!0 mask!2661))))

(assert (=> start!127694 e!839381))

(assert (=> start!127694 true))

(declare-datatypes ((array!99988 0))(
  ( (array!99989 (arr!48249 (Array (_ BitVec 32) (_ BitVec 64))) (size!48800 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99988)

(declare-fun array_inv!37194 (array!99988) Bool)

(assert (=> start!127694 (array_inv!37194 a!2850)))

(declare-fun b!1499650 () Bool)

(declare-fun res!1020801 () Bool)

(assert (=> b!1499650 (=> (not res!1020801) (not e!839381))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99988 (_ BitVec 32)) Bool)

(assert (=> b!1499650 (= res!1020801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499651 () Bool)

(declare-fun res!1020800 () Bool)

(assert (=> b!1499651 (=> (not res!1020800) (not e!839381))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12478 0))(
  ( (MissingZero!12478 (index!52303 (_ BitVec 32))) (Found!12478 (index!52304 (_ BitVec 32))) (Intermediate!12478 (undefined!13290 Bool) (index!52305 (_ BitVec 32)) (x!133997 (_ BitVec 32))) (Undefined!12478) (MissingVacant!12478 (index!52306 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99988 (_ BitVec 32)) SeekEntryResult!12478)

(assert (=> b!1499651 (= res!1020800 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48249 a!2850) j!87) a!2850 mask!2661) (Found!12478 j!87)))))

(declare-fun b!1499652 () Bool)

(declare-fun res!1020806 () Bool)

(assert (=> b!1499652 (=> (not res!1020806) (not e!839381))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499652 (= res!1020806 (validKeyInArray!0 (select (arr!48249 a!2850) i!996)))))

(declare-fun b!1499653 () Bool)

(declare-fun res!1020804 () Bool)

(assert (=> b!1499653 (=> (not res!1020804) (not e!839381))))

(assert (=> b!1499653 (= res!1020804 (not (= (select (arr!48249 a!2850) index!625) (select (arr!48249 a!2850) j!87))))))

(declare-fun b!1499654 () Bool)

(declare-fun res!1020802 () Bool)

(assert (=> b!1499654 (=> (not res!1020802) (not e!839381))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499654 (= res!1020802 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48800 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48800 a!2850)) (= (select (arr!48249 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48249 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48800 a!2850))))))

(declare-fun b!1499655 () Bool)

(declare-fun e!839380 () Bool)

(assert (=> b!1499655 (= e!839381 e!839380)))

(declare-fun res!1020807 () Bool)

(assert (=> b!1499655 (=> (not res!1020807) (not e!839380))))

(declare-fun lt!652749 () (_ BitVec 32))

(assert (=> b!1499655 (= res!1020807 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652749 #b00000000000000000000000000000000) (bvslt lt!652749 (size!48800 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499655 (= lt!652749 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499656 () Bool)

(declare-fun res!1020805 () Bool)

(assert (=> b!1499656 (=> (not res!1020805) (not e!839381))))

(assert (=> b!1499656 (= res!1020805 (and (= (size!48800 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48800 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48800 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499657 () Bool)

(declare-fun res!1020803 () Bool)

(assert (=> b!1499657 (=> (not res!1020803) (not e!839381))))

(declare-datatypes ((List!34921 0))(
  ( (Nil!34918) (Cons!34917 (h!36315 (_ BitVec 64)) (t!49622 List!34921)) )
))
(declare-fun arrayNoDuplicates!0 (array!99988 (_ BitVec 32) List!34921) Bool)

(assert (=> b!1499657 (= res!1020803 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34918))))

(declare-fun b!1499658 () Bool)

(assert (=> b!1499658 (= e!839380 false)))

(declare-fun lt!652750 () SeekEntryResult!12478)

(assert (=> b!1499658 (= lt!652750 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652749 vacantBefore!10 (select (arr!48249 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499659 () Bool)

(declare-fun res!1020799 () Bool)

(assert (=> b!1499659 (=> (not res!1020799) (not e!839381))))

(assert (=> b!1499659 (= res!1020799 (validKeyInArray!0 (select (arr!48249 a!2850) j!87)))))

(assert (= (and start!127694 res!1020798) b!1499656))

(assert (= (and b!1499656 res!1020805) b!1499652))

(assert (= (and b!1499652 res!1020806) b!1499659))

(assert (= (and b!1499659 res!1020799) b!1499650))

(assert (= (and b!1499650 res!1020801) b!1499657))

(assert (= (and b!1499657 res!1020803) b!1499654))

(assert (= (and b!1499654 res!1020802) b!1499651))

(assert (= (and b!1499651 res!1020800) b!1499653))

(assert (= (and b!1499653 res!1020804) b!1499655))

(assert (= (and b!1499655 res!1020807) b!1499658))

(declare-fun m!1382901 () Bool)

(assert (=> b!1499651 m!1382901))

(assert (=> b!1499651 m!1382901))

(declare-fun m!1382903 () Bool)

(assert (=> b!1499651 m!1382903))

(declare-fun m!1382905 () Bool)

(assert (=> b!1499650 m!1382905))

(declare-fun m!1382907 () Bool)

(assert (=> b!1499655 m!1382907))

(declare-fun m!1382909 () Bool)

(assert (=> start!127694 m!1382909))

(declare-fun m!1382911 () Bool)

(assert (=> start!127694 m!1382911))

(assert (=> b!1499659 m!1382901))

(assert (=> b!1499659 m!1382901))

(declare-fun m!1382913 () Bool)

(assert (=> b!1499659 m!1382913))

(assert (=> b!1499658 m!1382901))

(assert (=> b!1499658 m!1382901))

(declare-fun m!1382915 () Bool)

(assert (=> b!1499658 m!1382915))

(declare-fun m!1382917 () Bool)

(assert (=> b!1499652 m!1382917))

(assert (=> b!1499652 m!1382917))

(declare-fun m!1382919 () Bool)

(assert (=> b!1499652 m!1382919))

(declare-fun m!1382921 () Bool)

(assert (=> b!1499657 m!1382921))

(declare-fun m!1382923 () Bool)

(assert (=> b!1499654 m!1382923))

(declare-fun m!1382925 () Bool)

(assert (=> b!1499654 m!1382925))

(declare-fun m!1382927 () Bool)

(assert (=> b!1499654 m!1382927))

(declare-fun m!1382929 () Bool)

(assert (=> b!1499653 m!1382929))

(assert (=> b!1499653 m!1382901))

(push 1)

(assert (not b!1499651))

(assert (not b!1499659))

(assert (not b!1499658))

(assert (not start!127694))

(assert (not b!1499652))

(assert (not b!1499655))

(assert (not b!1499650))

(assert (not b!1499657))

(check-sat)

