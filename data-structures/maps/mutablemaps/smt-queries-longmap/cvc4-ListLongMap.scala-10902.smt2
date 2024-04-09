; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127724 () Bool)

(assert start!127724)

(declare-fun b!1500100 () Bool)

(declare-fun res!1021255 () Bool)

(declare-fun e!839514 () Bool)

(assert (=> b!1500100 (=> (not res!1021255) (not e!839514))))

(declare-datatypes ((array!100018 0))(
  ( (array!100019 (arr!48264 (Array (_ BitVec 32) (_ BitVec 64))) (size!48815 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100018)

(declare-datatypes ((List!34936 0))(
  ( (Nil!34933) (Cons!34932 (h!36330 (_ BitVec 64)) (t!49637 List!34936)) )
))
(declare-fun arrayNoDuplicates!0 (array!100018 (_ BitVec 32) List!34936) Bool)

(assert (=> b!1500100 (= res!1021255 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34933))))

(declare-fun b!1500101 () Bool)

(declare-fun res!1021250 () Bool)

(assert (=> b!1500101 (=> (not res!1021250) (not e!839514))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500101 (= res!1021250 (validKeyInArray!0 (select (arr!48264 a!2850) j!87)))))

(declare-fun b!1500102 () Bool)

(declare-fun res!1021252 () Bool)

(assert (=> b!1500102 (=> (not res!1021252) (not e!839514))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500102 (= res!1021252 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48815 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48815 a!2850)) (= (select (arr!48264 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48264 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48815 a!2850))))))

(declare-fun b!1500103 () Bool)

(declare-fun res!1021254 () Bool)

(assert (=> b!1500103 (=> (not res!1021254) (not e!839514))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12493 0))(
  ( (MissingZero!12493 (index!52363 (_ BitVec 32))) (Found!12493 (index!52364 (_ BitVec 32))) (Intermediate!12493 (undefined!13305 Bool) (index!52365 (_ BitVec 32)) (x!134052 (_ BitVec 32))) (Undefined!12493) (MissingVacant!12493 (index!52366 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100018 (_ BitVec 32)) SeekEntryResult!12493)

(assert (=> b!1500103 (= res!1021254 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48264 a!2850) j!87) a!2850 mask!2661) (Found!12493 j!87)))))

(declare-fun b!1500104 () Bool)

(declare-fun e!839516 () Bool)

(assert (=> b!1500104 (= e!839516 false)))

(declare-fun lt!652839 () (_ BitVec 32))

(declare-fun lt!652840 () SeekEntryResult!12493)

(assert (=> b!1500104 (= lt!652840 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652839 vacantBefore!10 (select (arr!48264 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500105 () Bool)

(declare-fun res!1021253 () Bool)

(assert (=> b!1500105 (=> (not res!1021253) (not e!839514))))

(assert (=> b!1500105 (= res!1021253 (not (= (select (arr!48264 a!2850) index!625) (select (arr!48264 a!2850) j!87))))))

(declare-fun b!1500106 () Bool)

(declare-fun res!1021257 () Bool)

(assert (=> b!1500106 (=> (not res!1021257) (not e!839514))))

(assert (=> b!1500106 (= res!1021257 (and (= (size!48815 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48815 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48815 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500107 () Bool)

(assert (=> b!1500107 (= e!839514 e!839516)))

(declare-fun res!1021251 () Bool)

(assert (=> b!1500107 (=> (not res!1021251) (not e!839516))))

(assert (=> b!1500107 (= res!1021251 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652839 #b00000000000000000000000000000000) (bvslt lt!652839 (size!48815 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500107 (= lt!652839 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500108 () Bool)

(declare-fun res!1021256 () Bool)

(assert (=> b!1500108 (=> (not res!1021256) (not e!839514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100018 (_ BitVec 32)) Bool)

(assert (=> b!1500108 (= res!1021256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500109 () Bool)

(declare-fun res!1021249 () Bool)

(assert (=> b!1500109 (=> (not res!1021249) (not e!839514))))

(assert (=> b!1500109 (= res!1021249 (validKeyInArray!0 (select (arr!48264 a!2850) i!996)))))

(declare-fun res!1021248 () Bool)

(assert (=> start!127724 (=> (not res!1021248) (not e!839514))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127724 (= res!1021248 (validMask!0 mask!2661))))

(assert (=> start!127724 e!839514))

(assert (=> start!127724 true))

(declare-fun array_inv!37209 (array!100018) Bool)

(assert (=> start!127724 (array_inv!37209 a!2850)))

(assert (= (and start!127724 res!1021248) b!1500106))

(assert (= (and b!1500106 res!1021257) b!1500109))

(assert (= (and b!1500109 res!1021249) b!1500101))

(assert (= (and b!1500101 res!1021250) b!1500108))

(assert (= (and b!1500108 res!1021256) b!1500100))

(assert (= (and b!1500100 res!1021255) b!1500102))

(assert (= (and b!1500102 res!1021252) b!1500103))

(assert (= (and b!1500103 res!1021254) b!1500105))

(assert (= (and b!1500105 res!1021253) b!1500107))

(assert (= (and b!1500107 res!1021251) b!1500104))

(declare-fun m!1383351 () Bool)

(assert (=> b!1500107 m!1383351))

(declare-fun m!1383353 () Bool)

(assert (=> b!1500101 m!1383353))

(assert (=> b!1500101 m!1383353))

(declare-fun m!1383355 () Bool)

(assert (=> b!1500101 m!1383355))

(declare-fun m!1383357 () Bool)

(assert (=> b!1500109 m!1383357))

(assert (=> b!1500109 m!1383357))

(declare-fun m!1383359 () Bool)

(assert (=> b!1500109 m!1383359))

(assert (=> b!1500104 m!1383353))

(assert (=> b!1500104 m!1383353))

(declare-fun m!1383361 () Bool)

(assert (=> b!1500104 m!1383361))

(declare-fun m!1383363 () Bool)

(assert (=> b!1500100 m!1383363))

(declare-fun m!1383365 () Bool)

(assert (=> b!1500105 m!1383365))

(assert (=> b!1500105 m!1383353))

(assert (=> b!1500103 m!1383353))

(assert (=> b!1500103 m!1383353))

(declare-fun m!1383367 () Bool)

(assert (=> b!1500103 m!1383367))

(declare-fun m!1383369 () Bool)

(assert (=> start!127724 m!1383369))

(declare-fun m!1383371 () Bool)

(assert (=> start!127724 m!1383371))

(declare-fun m!1383373 () Bool)

(assert (=> b!1500102 m!1383373))

(declare-fun m!1383375 () Bool)

(assert (=> b!1500102 m!1383375))

(declare-fun m!1383377 () Bool)

(assert (=> b!1500102 m!1383377))

(declare-fun m!1383379 () Bool)

(assert (=> b!1500108 m!1383379))

(push 1)

(assert (not b!1500104))

(assert (not b!1500101))

(assert (not b!1500103))

(assert (not b!1500100))

(assert (not b!1500108))

(assert (not b!1500109))

(assert (not b!1500107))

(assert (not start!127724))

(check-sat)

(pop 1)

