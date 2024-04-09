; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127844 () Bool)

(assert start!127844)

(declare-fun b!1501851 () Bool)

(declare-fun res!1022999 () Bool)

(declare-fun e!840110 () Bool)

(assert (=> b!1501851 (=> (not res!1022999) (not e!840110))))

(declare-datatypes ((array!100138 0))(
  ( (array!100139 (arr!48324 (Array (_ BitVec 32) (_ BitVec 64))) (size!48875 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100138)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun mask!2661 () (_ BitVec 32))

(assert (=> b!1501851 (= res!1022999 (and (= (size!48875 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48875 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48875 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501852 () Bool)

(assert (=> b!1501852 (= e!840110 false)))

(declare-fun lt!653245 () Bool)

(declare-datatypes ((List!34996 0))(
  ( (Nil!34993) (Cons!34992 (h!36390 (_ BitVec 64)) (t!49697 List!34996)) )
))
(declare-fun arrayNoDuplicates!0 (array!100138 (_ BitVec 32) List!34996) Bool)

(assert (=> b!1501852 (= lt!653245 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34993))))

(declare-fun res!1023000 () Bool)

(assert (=> start!127844 (=> (not res!1023000) (not e!840110))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127844 (= res!1023000 (validMask!0 mask!2661))))

(assert (=> start!127844 e!840110))

(assert (=> start!127844 true))

(declare-fun array_inv!37269 (array!100138) Bool)

(assert (=> start!127844 (array_inv!37269 a!2850)))

(declare-fun b!1501853 () Bool)

(declare-fun res!1023003 () Bool)

(assert (=> b!1501853 (=> (not res!1023003) (not e!840110))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501853 (= res!1023003 (validKeyInArray!0 (select (arr!48324 a!2850) j!87)))))

(declare-fun b!1501854 () Bool)

(declare-fun res!1023001 () Bool)

(assert (=> b!1501854 (=> (not res!1023001) (not e!840110))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100138 (_ BitVec 32)) Bool)

(assert (=> b!1501854 (= res!1023001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501855 () Bool)

(declare-fun res!1023002 () Bool)

(assert (=> b!1501855 (=> (not res!1023002) (not e!840110))))

(assert (=> b!1501855 (= res!1023002 (validKeyInArray!0 (select (arr!48324 a!2850) i!996)))))

(assert (= (and start!127844 res!1023000) b!1501851))

(assert (= (and b!1501851 res!1022999) b!1501855))

(assert (= (and b!1501855 res!1023002) b!1501853))

(assert (= (and b!1501853 res!1023003) b!1501854))

(assert (= (and b!1501854 res!1023001) b!1501852))

(declare-fun m!1385189 () Bool)

(assert (=> b!1501852 m!1385189))

(declare-fun m!1385191 () Bool)

(assert (=> b!1501853 m!1385191))

(assert (=> b!1501853 m!1385191))

(declare-fun m!1385193 () Bool)

(assert (=> b!1501853 m!1385193))

(declare-fun m!1385195 () Bool)

(assert (=> b!1501855 m!1385195))

(assert (=> b!1501855 m!1385195))

(declare-fun m!1385197 () Bool)

(assert (=> b!1501855 m!1385197))

(declare-fun m!1385199 () Bool)

(assert (=> b!1501854 m!1385199))

(declare-fun m!1385201 () Bool)

(assert (=> start!127844 m!1385201))

(declare-fun m!1385203 () Bool)

(assert (=> start!127844 m!1385203))

(push 1)

(assert (not b!1501852))

(assert (not b!1501855))

(assert (not b!1501854))

(assert (not start!127844))

(assert (not b!1501853))

(check-sat)

