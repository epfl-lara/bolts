; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127548 () Bool)

(assert start!127548)

(declare-fun b!1498029 () Bool)

(declare-fun res!1019181 () Bool)

(declare-fun e!838897 () Bool)

(assert (=> b!1498029 (=> (not res!1019181) (not e!838897))))

(declare-datatypes ((array!99842 0))(
  ( (array!99843 (arr!48176 (Array (_ BitVec 32) (_ BitVec 64))) (size!48727 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99842)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99842 (_ BitVec 32)) Bool)

(assert (=> b!1498029 (= res!1019181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498030 () Bool)

(declare-fun res!1019177 () Bool)

(assert (=> b!1498030 (=> (not res!1019177) (not e!838897))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498030 (= res!1019177 (and (= (size!48727 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48727 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48727 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498031 () Bool)

(declare-fun res!1019179 () Bool)

(assert (=> b!1498031 (=> (not res!1019179) (not e!838897))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498031 (= res!1019179 (validKeyInArray!0 (select (arr!48176 a!2850) i!996)))))

(declare-fun res!1019180 () Bool)

(assert (=> start!127548 (=> (not res!1019180) (not e!838897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127548 (= res!1019180 (validMask!0 mask!2661))))

(assert (=> start!127548 e!838897))

(assert (=> start!127548 true))

(declare-fun array_inv!37121 (array!99842) Bool)

(assert (=> start!127548 (array_inv!37121 a!2850)))

(declare-fun b!1498032 () Bool)

(declare-fun res!1019178 () Bool)

(assert (=> b!1498032 (=> (not res!1019178) (not e!838897))))

(assert (=> b!1498032 (= res!1019178 (validKeyInArray!0 (select (arr!48176 a!2850) j!87)))))

(declare-fun b!1498033 () Bool)

(assert (=> b!1498033 (= e!838897 false)))

(declare-fun lt!652567 () Bool)

(declare-datatypes ((List!34848 0))(
  ( (Nil!34845) (Cons!34844 (h!36242 (_ BitVec 64)) (t!49549 List!34848)) )
))
(declare-fun arrayNoDuplicates!0 (array!99842 (_ BitVec 32) List!34848) Bool)

(assert (=> b!1498033 (= lt!652567 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34845))))

(assert (= (and start!127548 res!1019180) b!1498030))

(assert (= (and b!1498030 res!1019177) b!1498031))

(assert (= (and b!1498031 res!1019179) b!1498032))

(assert (= (and b!1498032 res!1019178) b!1498029))

(assert (= (and b!1498029 res!1019181) b!1498033))

(declare-fun m!1381147 () Bool)

(assert (=> b!1498033 m!1381147))

(declare-fun m!1381149 () Bool)

(assert (=> b!1498029 m!1381149))

(declare-fun m!1381151 () Bool)

(assert (=> start!127548 m!1381151))

(declare-fun m!1381153 () Bool)

(assert (=> start!127548 m!1381153))

(declare-fun m!1381155 () Bool)

(assert (=> b!1498031 m!1381155))

(assert (=> b!1498031 m!1381155))

(declare-fun m!1381157 () Bool)

(assert (=> b!1498031 m!1381157))

(declare-fun m!1381159 () Bool)

(assert (=> b!1498032 m!1381159))

(assert (=> b!1498032 m!1381159))

(declare-fun m!1381161 () Bool)

(assert (=> b!1498032 m!1381161))

(check-sat (not start!127548) (not b!1498032) (not b!1498033) (not b!1498031) (not b!1498029))
