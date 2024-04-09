; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127730 () Bool)

(assert start!127730)

(declare-fun b!1500190 () Bool)

(declare-fun res!1021343 () Bool)

(declare-fun e!839543 () Bool)

(assert (=> b!1500190 (=> (not res!1021343) (not e!839543))))

(declare-datatypes ((array!100024 0))(
  ( (array!100025 (arr!48267 (Array (_ BitVec 32) (_ BitVec 64))) (size!48818 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100024)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100024 (_ BitVec 32)) Bool)

(assert (=> b!1500190 (= res!1021343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500191 () Bool)

(declare-fun res!1021340 () Bool)

(assert (=> b!1500191 (=> (not res!1021340) (not e!839543))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12496 0))(
  ( (MissingZero!12496 (index!52375 (_ BitVec 32))) (Found!12496 (index!52376 (_ BitVec 32))) (Intermediate!12496 (undefined!13308 Bool) (index!52377 (_ BitVec 32)) (x!134063 (_ BitVec 32))) (Undefined!12496) (MissingVacant!12496 (index!52378 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100024 (_ BitVec 32)) SeekEntryResult!12496)

(assert (=> b!1500191 (= res!1021340 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48267 a!2850) j!87) a!2850 mask!2661) (Found!12496 j!87)))))

(declare-fun b!1500192 () Bool)

(declare-fun res!1021344 () Bool)

(assert (=> b!1500192 (=> (not res!1021344) (not e!839543))))

(assert (=> b!1500192 (= res!1021344 (not (= (select (arr!48267 a!2850) index!625) (select (arr!48267 a!2850) j!87))))))

(declare-fun b!1500193 () Bool)

(declare-fun res!1021338 () Bool)

(assert (=> b!1500193 (=> (not res!1021338) (not e!839543))))

(declare-datatypes ((List!34939 0))(
  ( (Nil!34936) (Cons!34935 (h!36333 (_ BitVec 64)) (t!49640 List!34939)) )
))
(declare-fun arrayNoDuplicates!0 (array!100024 (_ BitVec 32) List!34939) Bool)

(assert (=> b!1500193 (= res!1021338 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34936))))

(declare-fun b!1500194 () Bool)

(declare-fun e!839542 () Bool)

(assert (=> b!1500194 (= e!839542 false)))

(declare-fun lt!652857 () (_ BitVec 32))

(declare-fun lt!652858 () SeekEntryResult!12496)

(assert (=> b!1500194 (= lt!652858 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652857 vacantBefore!10 (select (arr!48267 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500195 () Bool)

(declare-fun res!1021342 () Bool)

(assert (=> b!1500195 (=> (not res!1021342) (not e!839543))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500195 (= res!1021342 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48818 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48818 a!2850)) (= (select (arr!48267 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48267 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48818 a!2850))))))

(declare-fun b!1500196 () Bool)

(declare-fun res!1021345 () Bool)

(assert (=> b!1500196 (=> (not res!1021345) (not e!839543))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500196 (= res!1021345 (validKeyInArray!0 (select (arr!48267 a!2850) i!996)))))

(declare-fun res!1021339 () Bool)

(assert (=> start!127730 (=> (not res!1021339) (not e!839543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127730 (= res!1021339 (validMask!0 mask!2661))))

(assert (=> start!127730 e!839543))

(assert (=> start!127730 true))

(declare-fun array_inv!37212 (array!100024) Bool)

(assert (=> start!127730 (array_inv!37212 a!2850)))

(declare-fun b!1500197 () Bool)

(declare-fun res!1021347 () Bool)

(assert (=> b!1500197 (=> (not res!1021347) (not e!839543))))

(assert (=> b!1500197 (= res!1021347 (validKeyInArray!0 (select (arr!48267 a!2850) j!87)))))

(declare-fun b!1500198 () Bool)

(declare-fun res!1021341 () Bool)

(assert (=> b!1500198 (=> (not res!1021341) (not e!839543))))

(assert (=> b!1500198 (= res!1021341 (and (= (size!48818 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48818 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48818 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500199 () Bool)

(assert (=> b!1500199 (= e!839543 e!839542)))

(declare-fun res!1021346 () Bool)

(assert (=> b!1500199 (=> (not res!1021346) (not e!839542))))

(assert (=> b!1500199 (= res!1021346 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652857 #b00000000000000000000000000000000) (bvslt lt!652857 (size!48818 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500199 (= lt!652857 (nextIndex!0 index!625 x!647 mask!2661))))

(assert (= (and start!127730 res!1021339) b!1500198))

(assert (= (and b!1500198 res!1021341) b!1500196))

(assert (= (and b!1500196 res!1021345) b!1500197))

(assert (= (and b!1500197 res!1021347) b!1500190))

(assert (= (and b!1500190 res!1021343) b!1500193))

(assert (= (and b!1500193 res!1021338) b!1500195))

(assert (= (and b!1500195 res!1021342) b!1500191))

(assert (= (and b!1500191 res!1021340) b!1500192))

(assert (= (and b!1500192 res!1021344) b!1500199))

(assert (= (and b!1500199 res!1021346) b!1500194))

(declare-fun m!1383441 () Bool)

(assert (=> b!1500196 m!1383441))

(assert (=> b!1500196 m!1383441))

(declare-fun m!1383443 () Bool)

(assert (=> b!1500196 m!1383443))

(declare-fun m!1383445 () Bool)

(assert (=> b!1500192 m!1383445))

(declare-fun m!1383447 () Bool)

(assert (=> b!1500192 m!1383447))

(assert (=> b!1500191 m!1383447))

(assert (=> b!1500191 m!1383447))

(declare-fun m!1383449 () Bool)

(assert (=> b!1500191 m!1383449))

(assert (=> b!1500194 m!1383447))

(assert (=> b!1500194 m!1383447))

(declare-fun m!1383451 () Bool)

(assert (=> b!1500194 m!1383451))

(declare-fun m!1383453 () Bool)

(assert (=> b!1500190 m!1383453))

(declare-fun m!1383455 () Bool)

(assert (=> start!127730 m!1383455))

(declare-fun m!1383457 () Bool)

(assert (=> start!127730 m!1383457))

(declare-fun m!1383459 () Bool)

(assert (=> b!1500193 m!1383459))

(declare-fun m!1383461 () Bool)

(assert (=> b!1500199 m!1383461))

(declare-fun m!1383463 () Bool)

(assert (=> b!1500195 m!1383463))

(declare-fun m!1383465 () Bool)

(assert (=> b!1500195 m!1383465))

(declare-fun m!1383467 () Bool)

(assert (=> b!1500195 m!1383467))

(assert (=> b!1500197 m!1383447))

(assert (=> b!1500197 m!1383447))

(declare-fun m!1383469 () Bool)

(assert (=> b!1500197 m!1383469))

(push 1)

(assert (not b!1500199))

(assert (not b!1500197))

(assert (not b!1500190))

(assert (not start!127730))

(assert (not b!1500196))

(assert (not b!1500193))

(assert (not b!1500194))

(assert (not b!1500191))

(check-sat)

