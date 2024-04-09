; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127840 () Bool)

(assert start!127840)

(declare-fun b!1501821 () Bool)

(declare-fun res!1022973 () Bool)

(declare-fun e!840097 () Bool)

(assert (=> b!1501821 (=> (not res!1022973) (not e!840097))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100134 0))(
  ( (array!100135 (arr!48322 (Array (_ BitVec 32) (_ BitVec 64))) (size!48873 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100134)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1501821 (= res!1022973 (and (= (size!48873 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48873 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48873 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501822 () Bool)

(declare-fun res!1022970 () Bool)

(assert (=> b!1501822 (=> (not res!1022970) (not e!840097))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501822 (= res!1022970 (validKeyInArray!0 (select (arr!48322 a!2850) i!996)))))

(declare-fun b!1501823 () Bool)

(declare-fun res!1022971 () Bool)

(assert (=> b!1501823 (=> (not res!1022971) (not e!840097))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100134 (_ BitVec 32)) Bool)

(assert (=> b!1501823 (= res!1022971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501824 () Bool)

(declare-fun res!1022972 () Bool)

(assert (=> b!1501824 (=> (not res!1022972) (not e!840097))))

(assert (=> b!1501824 (= res!1022972 (validKeyInArray!0 (select (arr!48322 a!2850) j!87)))))

(declare-fun res!1022969 () Bool)

(assert (=> start!127840 (=> (not res!1022969) (not e!840097))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127840 (= res!1022969 (validMask!0 mask!2661))))

(assert (=> start!127840 e!840097))

(assert (=> start!127840 true))

(declare-fun array_inv!37267 (array!100134) Bool)

(assert (=> start!127840 (array_inv!37267 a!2850)))

(declare-fun b!1501825 () Bool)

(assert (=> b!1501825 (= e!840097 false)))

(declare-fun lt!653239 () Bool)

(declare-datatypes ((List!34994 0))(
  ( (Nil!34991) (Cons!34990 (h!36388 (_ BitVec 64)) (t!49695 List!34994)) )
))
(declare-fun arrayNoDuplicates!0 (array!100134 (_ BitVec 32) List!34994) Bool)

(assert (=> b!1501825 (= lt!653239 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34991))))

(assert (= (and start!127840 res!1022969) b!1501821))

(assert (= (and b!1501821 res!1022973) b!1501822))

(assert (= (and b!1501822 res!1022970) b!1501824))

(assert (= (and b!1501824 res!1022972) b!1501823))

(assert (= (and b!1501823 res!1022971) b!1501825))

(declare-fun m!1385157 () Bool)

(assert (=> b!1501822 m!1385157))

(assert (=> b!1501822 m!1385157))

(declare-fun m!1385159 () Bool)

(assert (=> b!1501822 m!1385159))

(declare-fun m!1385161 () Bool)

(assert (=> b!1501824 m!1385161))

(assert (=> b!1501824 m!1385161))

(declare-fun m!1385163 () Bool)

(assert (=> b!1501824 m!1385163))

(declare-fun m!1385165 () Bool)

(assert (=> b!1501825 m!1385165))

(declare-fun m!1385167 () Bool)

(assert (=> start!127840 m!1385167))

(declare-fun m!1385169 () Bool)

(assert (=> start!127840 m!1385169))

(declare-fun m!1385171 () Bool)

(assert (=> b!1501823 m!1385171))

(push 1)

(assert (not b!1501825))

(assert (not b!1501824))

(assert (not b!1501823))

(assert (not start!127840))

(assert (not b!1501822))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

