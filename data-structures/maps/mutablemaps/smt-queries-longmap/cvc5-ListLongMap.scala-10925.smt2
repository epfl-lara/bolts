; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127858 () Bool)

(assert start!127858)

(declare-fun b!1501978 () Bool)

(declare-fun res!1023127 () Bool)

(declare-fun e!840151 () Bool)

(assert (=> b!1501978 (=> (not res!1023127) (not e!840151))))

(declare-datatypes ((array!100152 0))(
  ( (array!100153 (arr!48331 (Array (_ BitVec 32) (_ BitVec 64))) (size!48882 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100152)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100152 (_ BitVec 32)) Bool)

(assert (=> b!1501978 (= res!1023127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1023132 () Bool)

(assert (=> start!127858 (=> (not res!1023132) (not e!840151))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127858 (= res!1023132 (validMask!0 mask!2661))))

(assert (=> start!127858 e!840151))

(assert (=> start!127858 true))

(declare-fun array_inv!37276 (array!100152) Bool)

(assert (=> start!127858 (array_inv!37276 a!2850)))

(declare-fun b!1501979 () Bool)

(declare-fun res!1023126 () Bool)

(assert (=> b!1501979 (=> (not res!1023126) (not e!840151))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501979 (= res!1023126 (validKeyInArray!0 (select (arr!48331 a!2850) j!87)))))

(declare-fun b!1501980 () Bool)

(declare-fun res!1023128 () Bool)

(assert (=> b!1501980 (=> (not res!1023128) (not e!840151))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1501980 (= res!1023128 (validKeyInArray!0 (select (arr!48331 a!2850) i!996)))))

(declare-fun b!1501981 () Bool)

(declare-fun res!1023130 () Bool)

(assert (=> b!1501981 (=> (not res!1023130) (not e!840151))))

(declare-datatypes ((List!35003 0))(
  ( (Nil!35000) (Cons!34999 (h!36397 (_ BitVec 64)) (t!49704 List!35003)) )
))
(declare-fun arrayNoDuplicates!0 (array!100152 (_ BitVec 32) List!35003) Bool)

(assert (=> b!1501981 (= res!1023130 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35000))))

(declare-fun b!1501982 () Bool)

(declare-fun res!1023129 () Bool)

(assert (=> b!1501982 (=> (not res!1023129) (not e!840151))))

(assert (=> b!1501982 (= res!1023129 (and (= (size!48882 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48882 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48882 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501983 () Bool)

(declare-fun res!1023131 () Bool)

(assert (=> b!1501983 (=> (not res!1023131) (not e!840151))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501983 (= res!1023131 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48882 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48882 a!2850)) (= (select (arr!48331 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48331 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48882 a!2850))))))

(declare-fun b!1501984 () Bool)

(assert (=> b!1501984 (= e!840151 false)))

(declare-datatypes ((SeekEntryResult!12548 0))(
  ( (MissingZero!12548 (index!52583 (_ BitVec 32))) (Found!12548 (index!52584 (_ BitVec 32))) (Intermediate!12548 (undefined!13360 Bool) (index!52585 (_ BitVec 32)) (x!134291 (_ BitVec 32))) (Undefined!12548) (MissingVacant!12548 (index!52586 (_ BitVec 32))) )
))
(declare-fun lt!653266 () SeekEntryResult!12548)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100152 (_ BitVec 32)) SeekEntryResult!12548)

(assert (=> b!1501984 (= lt!653266 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48331 a!2850) j!87) a!2850 mask!2661))))

(assert (= (and start!127858 res!1023132) b!1501982))

(assert (= (and b!1501982 res!1023129) b!1501980))

(assert (= (and b!1501980 res!1023128) b!1501979))

(assert (= (and b!1501979 res!1023126) b!1501978))

(assert (= (and b!1501978 res!1023127) b!1501981))

(assert (= (and b!1501981 res!1023130) b!1501983))

(assert (= (and b!1501983 res!1023131) b!1501984))

(declare-fun m!1385325 () Bool)

(assert (=> b!1501983 m!1385325))

(declare-fun m!1385327 () Bool)

(assert (=> b!1501983 m!1385327))

(declare-fun m!1385329 () Bool)

(assert (=> b!1501983 m!1385329))

(declare-fun m!1385331 () Bool)

(assert (=> b!1501984 m!1385331))

(assert (=> b!1501984 m!1385331))

(declare-fun m!1385333 () Bool)

(assert (=> b!1501984 m!1385333))

(declare-fun m!1385335 () Bool)

(assert (=> b!1501981 m!1385335))

(assert (=> b!1501979 m!1385331))

(assert (=> b!1501979 m!1385331))

(declare-fun m!1385337 () Bool)

(assert (=> b!1501979 m!1385337))

(declare-fun m!1385339 () Bool)

(assert (=> b!1501980 m!1385339))

(assert (=> b!1501980 m!1385339))

(declare-fun m!1385341 () Bool)

(assert (=> b!1501980 m!1385341))

(declare-fun m!1385343 () Bool)

(assert (=> start!127858 m!1385343))

(declare-fun m!1385345 () Bool)

(assert (=> start!127858 m!1385345))

(declare-fun m!1385347 () Bool)

(assert (=> b!1501978 m!1385347))

(push 1)

(assert (not b!1501978))

(assert (not start!127858))

(assert (not b!1501980))

(assert (not b!1501981))

(assert (not b!1501979))

(assert (not b!1501984))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

