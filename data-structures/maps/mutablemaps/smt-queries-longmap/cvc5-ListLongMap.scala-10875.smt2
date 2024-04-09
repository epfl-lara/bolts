; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127558 () Bool)

(assert start!127558)

(declare-fun b!1498114 () Bool)

(declare-fun res!1019263 () Bool)

(declare-fun e!838927 () Bool)

(assert (=> b!1498114 (=> (not res!1019263) (not e!838927))))

(declare-datatypes ((array!99852 0))(
  ( (array!99853 (arr!48181 (Array (_ BitVec 32) (_ BitVec 64))) (size!48732 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99852)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99852 (_ BitVec 32)) Bool)

(assert (=> b!1498114 (= res!1019263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498115 () Bool)

(declare-fun res!1019264 () Bool)

(assert (=> b!1498115 (=> (not res!1019264) (not e!838927))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498115 (= res!1019264 (and (= (size!48732 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48732 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48732 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498116 () Bool)

(declare-fun res!1019261 () Bool)

(assert (=> b!1498116 (=> (not res!1019261) (not e!838927))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498116 (= res!1019261 (validKeyInArray!0 (select (arr!48181 a!2850) i!996)))))

(declare-fun b!1498117 () Bool)

(assert (=> b!1498117 (= e!838927 false)))

(declare-fun lt!652573 () Bool)

(declare-datatypes ((List!34853 0))(
  ( (Nil!34850) (Cons!34849 (h!36247 (_ BitVec 64)) (t!49554 List!34853)) )
))
(declare-fun arrayNoDuplicates!0 (array!99852 (_ BitVec 32) List!34853) Bool)

(assert (=> b!1498117 (= lt!652573 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34850))))

(declare-fun b!1498113 () Bool)

(declare-fun res!1019265 () Bool)

(assert (=> b!1498113 (=> (not res!1019265) (not e!838927))))

(assert (=> b!1498113 (= res!1019265 (validKeyInArray!0 (select (arr!48181 a!2850) j!87)))))

(declare-fun res!1019262 () Bool)

(assert (=> start!127558 (=> (not res!1019262) (not e!838927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127558 (= res!1019262 (validMask!0 mask!2661))))

(assert (=> start!127558 e!838927))

(assert (=> start!127558 true))

(declare-fun array_inv!37126 (array!99852) Bool)

(assert (=> start!127558 (array_inv!37126 a!2850)))

(assert (= (and start!127558 res!1019262) b!1498115))

(assert (= (and b!1498115 res!1019264) b!1498116))

(assert (= (and b!1498116 res!1019261) b!1498113))

(assert (= (and b!1498113 res!1019265) b!1498114))

(assert (= (and b!1498114 res!1019263) b!1498117))

(declare-fun m!1381245 () Bool)

(assert (=> b!1498114 m!1381245))

(declare-fun m!1381247 () Bool)

(assert (=> b!1498117 m!1381247))

(declare-fun m!1381249 () Bool)

(assert (=> b!1498116 m!1381249))

(assert (=> b!1498116 m!1381249))

(declare-fun m!1381251 () Bool)

(assert (=> b!1498116 m!1381251))

(declare-fun m!1381253 () Bool)

(assert (=> start!127558 m!1381253))

(declare-fun m!1381255 () Bool)

(assert (=> start!127558 m!1381255))

(declare-fun m!1381257 () Bool)

(assert (=> b!1498113 m!1381257))

(assert (=> b!1498113 m!1381257))

(declare-fun m!1381259 () Bool)

(assert (=> b!1498113 m!1381259))

(push 1)

(assert (not b!1498116))

(assert (not b!1498114))

(assert (not b!1498113))

(assert (not start!127558))

(assert (not b!1498117))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

