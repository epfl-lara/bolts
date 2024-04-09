; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128014 () Bool)

(assert start!128014)

(declare-fun b!1503305 () Bool)

(declare-fun res!1024263 () Bool)

(declare-fun e!840602 () Bool)

(assert (=> b!1503305 (=> (not res!1024263) (not e!840602))))

(declare-datatypes ((array!100242 0))(
  ( (array!100243 (arr!48373 (Array (_ BitVec 32) (_ BitVec 64))) (size!48924 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100242)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503305 (= res!1024263 (not (= (select (arr!48373 a!2850) index!625) (select (arr!48373 a!2850) j!87))))))

(declare-fun b!1503306 () Bool)

(declare-fun res!1024257 () Bool)

(assert (=> b!1503306 (=> (not res!1024257) (not e!840602))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503306 (= res!1024257 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48924 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48924 a!2850)) (= (select (arr!48373 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48373 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48924 a!2850))))))

(declare-fun b!1503307 () Bool)

(declare-fun res!1024262 () Bool)

(assert (=> b!1503307 (=> (not res!1024262) (not e!840602))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503307 (= res!1024262 (validKeyInArray!0 (select (arr!48373 a!2850) i!996)))))

(declare-fun res!1024255 () Bool)

(assert (=> start!128014 (=> (not res!1024255) (not e!840602))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128014 (= res!1024255 (validMask!0 mask!2661))))

(assert (=> start!128014 e!840602))

(assert (=> start!128014 true))

(declare-fun array_inv!37318 (array!100242) Bool)

(assert (=> start!128014 (array_inv!37318 a!2850)))

(declare-fun b!1503308 () Bool)

(declare-fun res!1024258 () Bool)

(assert (=> b!1503308 (=> (not res!1024258) (not e!840602))))

(declare-datatypes ((List!35045 0))(
  ( (Nil!35042) (Cons!35041 (h!36439 (_ BitVec 64)) (t!49746 List!35045)) )
))
(declare-fun arrayNoDuplicates!0 (array!100242 (_ BitVec 32) List!35045) Bool)

(assert (=> b!1503308 (= res!1024258 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35042))))

(declare-fun b!1503309 () Bool)

(declare-fun res!1024259 () Bool)

(assert (=> b!1503309 (=> (not res!1024259) (not e!840602))))

(declare-datatypes ((SeekEntryResult!12590 0))(
  ( (MissingZero!12590 (index!52751 (_ BitVec 32))) (Found!12590 (index!52752 (_ BitVec 32))) (Intermediate!12590 (undefined!13402 Bool) (index!52753 (_ BitVec 32)) (x!134451 (_ BitVec 32))) (Undefined!12590) (MissingVacant!12590 (index!52754 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100242 (_ BitVec 32)) SeekEntryResult!12590)

(assert (=> b!1503309 (= res!1024259 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48373 a!2850) j!87) a!2850 mask!2661) (Found!12590 j!87)))))

(declare-fun b!1503310 () Bool)

(declare-fun res!1024256 () Bool)

(assert (=> b!1503310 (=> (not res!1024256) (not e!840602))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100242 (_ BitVec 32)) Bool)

(assert (=> b!1503310 (= res!1024256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503311 () Bool)

(assert (=> b!1503311 (= e!840602 false)))

(declare-fun lt!653479 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503311 (= lt!653479 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503312 () Bool)

(declare-fun res!1024260 () Bool)

(assert (=> b!1503312 (=> (not res!1024260) (not e!840602))))

(assert (=> b!1503312 (= res!1024260 (validKeyInArray!0 (select (arr!48373 a!2850) j!87)))))

(declare-fun b!1503313 () Bool)

(declare-fun res!1024261 () Bool)

(assert (=> b!1503313 (=> (not res!1024261) (not e!840602))))

(assert (=> b!1503313 (= res!1024261 (and (= (size!48924 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48924 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48924 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!128014 res!1024255) b!1503313))

(assert (= (and b!1503313 res!1024261) b!1503307))

(assert (= (and b!1503307 res!1024262) b!1503312))

(assert (= (and b!1503312 res!1024260) b!1503310))

(assert (= (and b!1503310 res!1024256) b!1503308))

(assert (= (and b!1503308 res!1024258) b!1503306))

(assert (= (and b!1503306 res!1024257) b!1503309))

(assert (= (and b!1503309 res!1024259) b!1503305))

(assert (= (and b!1503305 res!1024263) b!1503311))

(declare-fun m!1386609 () Bool)

(assert (=> b!1503311 m!1386609))

(declare-fun m!1386611 () Bool)

(assert (=> start!128014 m!1386611))

(declare-fun m!1386613 () Bool)

(assert (=> start!128014 m!1386613))

(declare-fun m!1386615 () Bool)

(assert (=> b!1503308 m!1386615))

(declare-fun m!1386617 () Bool)

(assert (=> b!1503307 m!1386617))

(assert (=> b!1503307 m!1386617))

(declare-fun m!1386619 () Bool)

(assert (=> b!1503307 m!1386619))

(declare-fun m!1386621 () Bool)

(assert (=> b!1503309 m!1386621))

(assert (=> b!1503309 m!1386621))

(declare-fun m!1386623 () Bool)

(assert (=> b!1503309 m!1386623))

(declare-fun m!1386625 () Bool)

(assert (=> b!1503306 m!1386625))

(declare-fun m!1386627 () Bool)

(assert (=> b!1503306 m!1386627))

(declare-fun m!1386629 () Bool)

(assert (=> b!1503306 m!1386629))

(declare-fun m!1386631 () Bool)

(assert (=> b!1503305 m!1386631))

(assert (=> b!1503305 m!1386621))

(declare-fun m!1386633 () Bool)

(assert (=> b!1503310 m!1386633))

(assert (=> b!1503312 m!1386621))

(assert (=> b!1503312 m!1386621))

(declare-fun m!1386635 () Bool)

(assert (=> b!1503312 m!1386635))

(push 1)

(assert (not b!1503307))

(assert (not b!1503311))

(assert (not b!1503312))

(assert (not b!1503310))

(assert (not start!128014))

(assert (not b!1503309))

(assert (not b!1503308))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

