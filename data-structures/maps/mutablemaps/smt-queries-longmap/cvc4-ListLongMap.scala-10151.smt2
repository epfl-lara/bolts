; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119714 () Bool)

(assert start!119714)

(declare-fun b!1393941 () Bool)

(declare-fun e!789293 () Bool)

(declare-fun e!789296 () Bool)

(assert (=> b!1393941 (= e!789293 (not e!789296))))

(declare-fun res!933462 () Bool)

(assert (=> b!1393941 (=> res!933462 e!789296)))

(declare-datatypes ((SeekEntryResult!10350 0))(
  ( (MissingZero!10350 (index!43770 (_ BitVec 32))) (Found!10350 (index!43771 (_ BitVec 32))) (Intermediate!10350 (undefined!11162 Bool) (index!43772 (_ BitVec 32)) (x!125445 (_ BitVec 32))) (Undefined!10350) (MissingVacant!10350 (index!43773 (_ BitVec 32))) )
))
(declare-fun lt!612150 () SeekEntryResult!10350)

(assert (=> b!1393941 (= res!933462 (or (not (is-Intermediate!10350 lt!612150)) (undefined!11162 lt!612150)))))

(declare-fun e!789294 () Bool)

(assert (=> b!1393941 e!789294))

(declare-fun res!933465 () Bool)

(assert (=> b!1393941 (=> (not res!933465) (not e!789294))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95314 0))(
  ( (array!95315 (arr!46011 (Array (_ BitVec 32) (_ BitVec 64))) (size!46562 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95314)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95314 (_ BitVec 32)) Bool)

(assert (=> b!1393941 (= res!933465 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46654 0))(
  ( (Unit!46655) )
))
(declare-fun lt!612151 () Unit!46654)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95314 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46654)

(assert (=> b!1393941 (= lt!612151 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95314 (_ BitVec 32)) SeekEntryResult!10350)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393941 (= lt!612150 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46011 a!2901) j!112) mask!2840) (select (arr!46011 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393942 () Bool)

(declare-fun res!933459 () Bool)

(assert (=> b!1393942 (=> (not res!933459) (not e!789293))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1393942 (= res!933459 (and (= (size!46562 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46562 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46562 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393943 () Bool)

(declare-fun res!933461 () Bool)

(assert (=> b!1393943 (=> (not res!933461) (not e!789293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393943 (= res!933461 (validKeyInArray!0 (select (arr!46011 a!2901) i!1037)))))

(declare-fun b!1393944 () Bool)

(declare-fun res!933463 () Bool)

(assert (=> b!1393944 (=> (not res!933463) (not e!789293))))

(declare-datatypes ((List!32710 0))(
  ( (Nil!32707) (Cons!32706 (h!33939 (_ BitVec 64)) (t!47411 List!32710)) )
))
(declare-fun arrayNoDuplicates!0 (array!95314 (_ BitVec 32) List!32710) Bool)

(assert (=> b!1393944 (= res!933463 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32707))))

(declare-fun b!1393945 () Bool)

(declare-fun res!933460 () Bool)

(assert (=> b!1393945 (=> (not res!933460) (not e!789293))))

(assert (=> b!1393945 (= res!933460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393946 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95314 (_ BitVec 32)) SeekEntryResult!10350)

(assert (=> b!1393946 (= e!789294 (= (seekEntryOrOpen!0 (select (arr!46011 a!2901) j!112) a!2901 mask!2840) (Found!10350 j!112)))))

(declare-fun res!933464 () Bool)

(assert (=> start!119714 (=> (not res!933464) (not e!789293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119714 (= res!933464 (validMask!0 mask!2840))))

(assert (=> start!119714 e!789293))

(assert (=> start!119714 true))

(declare-fun array_inv!34956 (array!95314) Bool)

(assert (=> start!119714 (array_inv!34956 a!2901)))

(declare-fun b!1393947 () Bool)

(assert (=> b!1393947 (= e!789296 true)))

(declare-fun lt!612149 () SeekEntryResult!10350)

(assert (=> b!1393947 (= lt!612149 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46011 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46011 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95315 (store (arr!46011 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46562 a!2901)) mask!2840))))

(declare-fun b!1393948 () Bool)

(declare-fun res!933458 () Bool)

(assert (=> b!1393948 (=> (not res!933458) (not e!789293))))

(assert (=> b!1393948 (= res!933458 (validKeyInArray!0 (select (arr!46011 a!2901) j!112)))))

(assert (= (and start!119714 res!933464) b!1393942))

(assert (= (and b!1393942 res!933459) b!1393943))

(assert (= (and b!1393943 res!933461) b!1393948))

(assert (= (and b!1393948 res!933458) b!1393945))

(assert (= (and b!1393945 res!933460) b!1393944))

(assert (= (and b!1393944 res!933463) b!1393941))

(assert (= (and b!1393941 res!933465) b!1393946))

(assert (= (and b!1393941 (not res!933462)) b!1393947))

(declare-fun m!1280155 () Bool)

(assert (=> b!1393941 m!1280155))

(declare-fun m!1280157 () Bool)

(assert (=> b!1393941 m!1280157))

(assert (=> b!1393941 m!1280155))

(declare-fun m!1280159 () Bool)

(assert (=> b!1393941 m!1280159))

(assert (=> b!1393941 m!1280157))

(assert (=> b!1393941 m!1280155))

(declare-fun m!1280161 () Bool)

(assert (=> b!1393941 m!1280161))

(declare-fun m!1280163 () Bool)

(assert (=> b!1393941 m!1280163))

(assert (=> b!1393948 m!1280155))

(assert (=> b!1393948 m!1280155))

(declare-fun m!1280165 () Bool)

(assert (=> b!1393948 m!1280165))

(declare-fun m!1280167 () Bool)

(assert (=> b!1393944 m!1280167))

(declare-fun m!1280169 () Bool)

(assert (=> b!1393947 m!1280169))

(declare-fun m!1280171 () Bool)

(assert (=> b!1393947 m!1280171))

(assert (=> b!1393947 m!1280171))

(declare-fun m!1280173 () Bool)

(assert (=> b!1393947 m!1280173))

(assert (=> b!1393947 m!1280173))

(assert (=> b!1393947 m!1280171))

(declare-fun m!1280175 () Bool)

(assert (=> b!1393947 m!1280175))

(assert (=> b!1393946 m!1280155))

(assert (=> b!1393946 m!1280155))

(declare-fun m!1280177 () Bool)

(assert (=> b!1393946 m!1280177))

(declare-fun m!1280179 () Bool)

(assert (=> start!119714 m!1280179))

(declare-fun m!1280181 () Bool)

(assert (=> start!119714 m!1280181))

(declare-fun m!1280183 () Bool)

(assert (=> b!1393943 m!1280183))

(assert (=> b!1393943 m!1280183))

(declare-fun m!1280185 () Bool)

(assert (=> b!1393943 m!1280185))

(declare-fun m!1280187 () Bool)

(assert (=> b!1393945 m!1280187))

(push 1)

(assert (not b!1393943))

(assert (not b!1393941))

(assert (not b!1393947))

(assert (not b!1393948))

(assert (not b!1393945))

(assert (not b!1393944))

(assert (not b!1393946))

(assert (not start!119714))

(check-sat)

