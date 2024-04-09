; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127562 () Bool)

(assert start!127562)

(declare-fun b!1498143 () Bool)

(declare-fun res!1019295 () Bool)

(declare-fun e!838939 () Bool)

(assert (=> b!1498143 (=> (not res!1019295) (not e!838939))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!99856 0))(
  ( (array!99857 (arr!48183 (Array (_ BitVec 32) (_ BitVec 64))) (size!48734 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99856)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498143 (= res!1019295 (and (= (size!48734 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48734 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48734 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498144 () Bool)

(declare-fun res!1019293 () Bool)

(assert (=> b!1498144 (=> (not res!1019293) (not e!838939))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498144 (= res!1019293 (validKeyInArray!0 (select (arr!48183 a!2850) i!996)))))

(declare-fun b!1498146 () Bool)

(assert (=> b!1498146 (= e!838939 false)))

(declare-fun lt!652579 () Bool)

(declare-datatypes ((List!34855 0))(
  ( (Nil!34852) (Cons!34851 (h!36249 (_ BitVec 64)) (t!49556 List!34855)) )
))
(declare-fun arrayNoDuplicates!0 (array!99856 (_ BitVec 32) List!34855) Bool)

(assert (=> b!1498146 (= lt!652579 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34852))))

(declare-fun b!1498147 () Bool)

(declare-fun res!1019291 () Bool)

(assert (=> b!1498147 (=> (not res!1019291) (not e!838939))))

(assert (=> b!1498147 (= res!1019291 (validKeyInArray!0 (select (arr!48183 a!2850) j!87)))))

(declare-fun b!1498145 () Bool)

(declare-fun res!1019294 () Bool)

(assert (=> b!1498145 (=> (not res!1019294) (not e!838939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99856 (_ BitVec 32)) Bool)

(assert (=> b!1498145 (= res!1019294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1019292 () Bool)

(assert (=> start!127562 (=> (not res!1019292) (not e!838939))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127562 (= res!1019292 (validMask!0 mask!2661))))

(assert (=> start!127562 e!838939))

(assert (=> start!127562 true))

(declare-fun array_inv!37128 (array!99856) Bool)

(assert (=> start!127562 (array_inv!37128 a!2850)))

(assert (= (and start!127562 res!1019292) b!1498143))

(assert (= (and b!1498143 res!1019295) b!1498144))

(assert (= (and b!1498144 res!1019293) b!1498147))

(assert (= (and b!1498147 res!1019291) b!1498145))

(assert (= (and b!1498145 res!1019294) b!1498146))

(declare-fun m!1381277 () Bool)

(assert (=> b!1498147 m!1381277))

(assert (=> b!1498147 m!1381277))

(declare-fun m!1381279 () Bool)

(assert (=> b!1498147 m!1381279))

(declare-fun m!1381281 () Bool)

(assert (=> start!127562 m!1381281))

(declare-fun m!1381283 () Bool)

(assert (=> start!127562 m!1381283))

(declare-fun m!1381285 () Bool)

(assert (=> b!1498144 m!1381285))

(assert (=> b!1498144 m!1381285))

(declare-fun m!1381287 () Bool)

(assert (=> b!1498144 m!1381287))

(declare-fun m!1381289 () Bool)

(assert (=> b!1498145 m!1381289))

(declare-fun m!1381291 () Bool)

(assert (=> b!1498146 m!1381291))

(push 1)

(assert (not b!1498145))

(assert (not b!1498146))

(assert (not b!1498147))

(assert (not start!127562))

(assert (not b!1498144))

(check-sat)

(pop 1)

(push 1)

