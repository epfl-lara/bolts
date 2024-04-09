; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127576 () Bool)

(assert start!127576)

(declare-fun b!1498259 () Bool)

(declare-fun res!1019412 () Bool)

(declare-fun e!838981 () Bool)

(assert (=> b!1498259 (=> (not res!1019412) (not e!838981))))

(declare-datatypes ((array!99870 0))(
  ( (array!99871 (arr!48190 (Array (_ BitVec 32) (_ BitVec 64))) (size!48741 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99870)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498259 (= res!1019412 (validKeyInArray!0 (select (arr!48190 a!2850) j!87)))))

(declare-fun res!1019408 () Bool)

(assert (=> start!127576 (=> (not res!1019408) (not e!838981))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127576 (= res!1019408 (validMask!0 mask!2661))))

(assert (=> start!127576 e!838981))

(assert (=> start!127576 true))

(declare-fun array_inv!37135 (array!99870) Bool)

(assert (=> start!127576 (array_inv!37135 a!2850)))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun b!1498260 () Bool)

(assert (=> b!1498260 (= e!838981 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48741 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48741 a!2850)) (= (select (arr!48190 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48190 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48741 a!2850)) (bvsge mask!2661 #b00000000000000000000000000000000) (bvslt index!625 (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge vacantBefore!10 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(declare-fun b!1498261 () Bool)

(declare-fun res!1019409 () Bool)

(assert (=> b!1498261 (=> (not res!1019409) (not e!838981))))

(assert (=> b!1498261 (= res!1019409 (validKeyInArray!0 (select (arr!48190 a!2850) i!996)))))

(declare-fun b!1498262 () Bool)

(declare-fun res!1019407 () Bool)

(assert (=> b!1498262 (=> (not res!1019407) (not e!838981))))

(assert (=> b!1498262 (= res!1019407 (and (= (size!48741 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48741 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48741 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498263 () Bool)

(declare-fun res!1019410 () Bool)

(assert (=> b!1498263 (=> (not res!1019410) (not e!838981))))

(declare-datatypes ((List!34862 0))(
  ( (Nil!34859) (Cons!34858 (h!36256 (_ BitVec 64)) (t!49563 List!34862)) )
))
(declare-fun arrayNoDuplicates!0 (array!99870 (_ BitVec 32) List!34862) Bool)

(assert (=> b!1498263 (= res!1019410 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34859))))

(declare-fun b!1498264 () Bool)

(declare-fun res!1019411 () Bool)

(assert (=> b!1498264 (=> (not res!1019411) (not e!838981))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99870 (_ BitVec 32)) Bool)

(assert (=> b!1498264 (= res!1019411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127576 res!1019408) b!1498262))

(assert (= (and b!1498262 res!1019407) b!1498261))

(assert (= (and b!1498261 res!1019409) b!1498259))

(assert (= (and b!1498259 res!1019412) b!1498264))

(assert (= (and b!1498264 res!1019411) b!1498263))

(assert (= (and b!1498263 res!1019410) b!1498260))

(declare-fun m!1381407 () Bool)

(assert (=> start!127576 m!1381407))

(declare-fun m!1381409 () Bool)

(assert (=> start!127576 m!1381409))

(declare-fun m!1381411 () Bool)

(assert (=> b!1498260 m!1381411))

(declare-fun m!1381413 () Bool)

(assert (=> b!1498260 m!1381413))

(declare-fun m!1381415 () Bool)

(assert (=> b!1498260 m!1381415))

(declare-fun m!1381417 () Bool)

(assert (=> b!1498264 m!1381417))

(declare-fun m!1381419 () Bool)

(assert (=> b!1498263 m!1381419))

(declare-fun m!1381421 () Bool)

(assert (=> b!1498261 m!1381421))

(assert (=> b!1498261 m!1381421))

(declare-fun m!1381423 () Bool)

(assert (=> b!1498261 m!1381423))

(declare-fun m!1381425 () Bool)

(assert (=> b!1498259 m!1381425))

(assert (=> b!1498259 m!1381425))

(declare-fun m!1381427 () Bool)

(assert (=> b!1498259 m!1381427))

(push 1)

(assert (not b!1498264))

(assert (not start!127576))

(assert (not b!1498259))

(assert (not b!1498261))

(assert (not b!1498263))

(check-sat)

(pop 1)

(push 1)

(check-sat)

