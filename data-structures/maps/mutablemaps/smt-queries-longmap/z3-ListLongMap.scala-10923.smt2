; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127848 () Bool)

(assert start!127848)

(declare-fun b!1501881 () Bool)

(declare-fun res!1023030 () Bool)

(declare-fun e!840121 () Bool)

(assert (=> b!1501881 (=> (not res!1023030) (not e!840121))))

(declare-datatypes ((array!100142 0))(
  ( (array!100143 (arr!48326 (Array (_ BitVec 32) (_ BitVec 64))) (size!48877 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100142)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501881 (= res!1023030 (validKeyInArray!0 (select (arr!48326 a!2850) i!996)))))

(declare-fun b!1501882 () Bool)

(declare-fun res!1023029 () Bool)

(assert (=> b!1501882 (=> (not res!1023029) (not e!840121))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1501882 (= res!1023029 (validKeyInArray!0 (select (arr!48326 a!2850) j!87)))))

(declare-fun b!1501883 () Bool)

(assert (=> b!1501883 (= e!840121 false)))

(declare-fun lt!653251 () Bool)

(declare-datatypes ((List!34998 0))(
  ( (Nil!34995) (Cons!34994 (h!36392 (_ BitVec 64)) (t!49699 List!34998)) )
))
(declare-fun arrayNoDuplicates!0 (array!100142 (_ BitVec 32) List!34998) Bool)

(assert (=> b!1501883 (= lt!653251 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34995))))

(declare-fun b!1501884 () Bool)

(declare-fun res!1023031 () Bool)

(assert (=> b!1501884 (=> (not res!1023031) (not e!840121))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100142 (_ BitVec 32)) Bool)

(assert (=> b!1501884 (= res!1023031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1023032 () Bool)

(assert (=> start!127848 (=> (not res!1023032) (not e!840121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127848 (= res!1023032 (validMask!0 mask!2661))))

(assert (=> start!127848 e!840121))

(assert (=> start!127848 true))

(declare-fun array_inv!37271 (array!100142) Bool)

(assert (=> start!127848 (array_inv!37271 a!2850)))

(declare-fun b!1501885 () Bool)

(declare-fun res!1023033 () Bool)

(assert (=> b!1501885 (=> (not res!1023033) (not e!840121))))

(assert (=> b!1501885 (= res!1023033 (and (= (size!48877 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48877 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48877 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127848 res!1023032) b!1501885))

(assert (= (and b!1501885 res!1023033) b!1501881))

(assert (= (and b!1501881 res!1023030) b!1501882))

(assert (= (and b!1501882 res!1023029) b!1501884))

(assert (= (and b!1501884 res!1023031) b!1501883))

(declare-fun m!1385221 () Bool)

(assert (=> b!1501882 m!1385221))

(assert (=> b!1501882 m!1385221))

(declare-fun m!1385223 () Bool)

(assert (=> b!1501882 m!1385223))

(declare-fun m!1385225 () Bool)

(assert (=> start!127848 m!1385225))

(declare-fun m!1385227 () Bool)

(assert (=> start!127848 m!1385227))

(declare-fun m!1385229 () Bool)

(assert (=> b!1501883 m!1385229))

(declare-fun m!1385231 () Bool)

(assert (=> b!1501884 m!1385231))

(declare-fun m!1385233 () Bool)

(assert (=> b!1501881 m!1385233))

(assert (=> b!1501881 m!1385233))

(declare-fun m!1385235 () Bool)

(assert (=> b!1501881 m!1385235))

(check-sat (not b!1501883) (not b!1501882) (not start!127848) (not b!1501884) (not b!1501881))
