; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127624 () Bool)

(assert start!127624)

(declare-fun b!1498740 () Bool)

(declare-fun res!1019893 () Bool)

(declare-fun e!839125 () Bool)

(assert (=> b!1498740 (=> (not res!1019893) (not e!839125))))

(declare-datatypes ((array!99918 0))(
  ( (array!99919 (arr!48214 (Array (_ BitVec 32) (_ BitVec 64))) (size!48765 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99918)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99918 (_ BitVec 32)) Bool)

(assert (=> b!1498740 (= res!1019893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498741 () Bool)

(declare-fun res!1019888 () Bool)

(assert (=> b!1498741 (=> (not res!1019888) (not e!839125))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498741 (= res!1019888 (validKeyInArray!0 (select (arr!48214 a!2850) j!87)))))

(declare-fun res!1019891 () Bool)

(assert (=> start!127624 (=> (not res!1019891) (not e!839125))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127624 (= res!1019891 (validMask!0 mask!2661))))

(assert (=> start!127624 e!839125))

(assert (=> start!127624 true))

(declare-fun array_inv!37159 (array!99918) Bool)

(assert (=> start!127624 (array_inv!37159 a!2850)))

(declare-fun b!1498742 () Bool)

(declare-fun res!1019894 () Bool)

(assert (=> b!1498742 (=> (not res!1019894) (not e!839125))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12443 0))(
  ( (MissingZero!12443 (index!52163 (_ BitVec 32))) (Found!12443 (index!52164 (_ BitVec 32))) (Intermediate!12443 (undefined!13255 Bool) (index!52165 (_ BitVec 32)) (x!133874 (_ BitVec 32))) (Undefined!12443) (MissingVacant!12443 (index!52166 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99918 (_ BitVec 32)) SeekEntryResult!12443)

(assert (=> b!1498742 (= res!1019894 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48214 a!2850) j!87) a!2850 mask!2661) (Found!12443 j!87)))))

(declare-fun b!1498743 () Bool)

(declare-fun res!1019890 () Bool)

(assert (=> b!1498743 (=> (not res!1019890) (not e!839125))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1498743 (= res!1019890 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48765 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48765 a!2850)) (= (select (arr!48214 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48214 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48765 a!2850))))))

(declare-fun b!1498744 () Bool)

(declare-fun res!1019892 () Bool)

(assert (=> b!1498744 (=> (not res!1019892) (not e!839125))))

(assert (=> b!1498744 (= res!1019892 (validKeyInArray!0 (select (arr!48214 a!2850) i!996)))))

(declare-fun b!1498745 () Bool)

(declare-fun res!1019889 () Bool)

(assert (=> b!1498745 (=> (not res!1019889) (not e!839125))))

(declare-datatypes ((List!34886 0))(
  ( (Nil!34883) (Cons!34882 (h!36280 (_ BitVec 64)) (t!49587 List!34886)) )
))
(declare-fun arrayNoDuplicates!0 (array!99918 (_ BitVec 32) List!34886) Bool)

(assert (=> b!1498745 (= res!1019889 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34883))))

(declare-fun b!1498746 () Bool)

(assert (=> b!1498746 (= e!839125 (and (= (select (arr!48214 a!2850) index!625) (select (arr!48214 a!2850) j!87)) (= j!87 index!625) (bvsge mask!2661 #b00000000000000000000000000000000) (bvslt index!625 (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge vacantAfter!10 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(declare-fun b!1498747 () Bool)

(declare-fun res!1019895 () Bool)

(assert (=> b!1498747 (=> (not res!1019895) (not e!839125))))

(assert (=> b!1498747 (= res!1019895 (and (= (size!48765 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48765 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48765 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127624 res!1019891) b!1498747))

(assert (= (and b!1498747 res!1019895) b!1498744))

(assert (= (and b!1498744 res!1019892) b!1498741))

(assert (= (and b!1498741 res!1019888) b!1498740))

(assert (= (and b!1498740 res!1019893) b!1498745))

(assert (= (and b!1498745 res!1019889) b!1498743))

(assert (= (and b!1498743 res!1019890) b!1498742))

(assert (= (and b!1498742 res!1019894) b!1498746))

(declare-fun m!1381941 () Bool)

(assert (=> b!1498746 m!1381941))

(declare-fun m!1381943 () Bool)

(assert (=> b!1498746 m!1381943))

(declare-fun m!1381945 () Bool)

(assert (=> start!127624 m!1381945))

(declare-fun m!1381947 () Bool)

(assert (=> start!127624 m!1381947))

(declare-fun m!1381949 () Bool)

(assert (=> b!1498744 m!1381949))

(assert (=> b!1498744 m!1381949))

(declare-fun m!1381951 () Bool)

(assert (=> b!1498744 m!1381951))

(declare-fun m!1381953 () Bool)

(assert (=> b!1498740 m!1381953))

(assert (=> b!1498742 m!1381943))

(assert (=> b!1498742 m!1381943))

(declare-fun m!1381955 () Bool)

(assert (=> b!1498742 m!1381955))

(declare-fun m!1381957 () Bool)

(assert (=> b!1498745 m!1381957))

(declare-fun m!1381959 () Bool)

(assert (=> b!1498743 m!1381959))

(declare-fun m!1381961 () Bool)

(assert (=> b!1498743 m!1381961))

(declare-fun m!1381963 () Bool)

(assert (=> b!1498743 m!1381963))

(assert (=> b!1498741 m!1381943))

(assert (=> b!1498741 m!1381943))

(declare-fun m!1381965 () Bool)

(assert (=> b!1498741 m!1381965))

(push 1)

(assert (not b!1498745))

(assert (not start!127624))

(assert (not b!1498741))

(assert (not b!1498742))

(assert (not b!1498744))

(assert (not b!1498740))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

