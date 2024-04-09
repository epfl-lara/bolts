; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127922 () Bool)

(assert start!127922)

(declare-fun b!1502416 () Bool)

(declare-fun res!1023474 () Bool)

(declare-fun e!840326 () Bool)

(assert (=> b!1502416 (=> (not res!1023474) (not e!840326))))

(declare-datatypes ((array!100183 0))(
  ( (array!100184 (arr!48345 (Array (_ BitVec 32) (_ BitVec 64))) (size!48896 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100183)

(declare-datatypes ((List!35017 0))(
  ( (Nil!35014) (Cons!35013 (h!36411 (_ BitVec 64)) (t!49718 List!35017)) )
))
(declare-fun arrayNoDuplicates!0 (array!100183 (_ BitVec 32) List!35017) Bool)

(assert (=> b!1502416 (= res!1023474 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35014))))

(declare-fun res!1023478 () Bool)

(assert (=> start!127922 (=> (not res!1023478) (not e!840326))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127922 (= res!1023478 (validMask!0 mask!2661))))

(assert (=> start!127922 e!840326))

(assert (=> start!127922 true))

(declare-fun array_inv!37290 (array!100183) Bool)

(assert (=> start!127922 (array_inv!37290 a!2850)))

(declare-fun b!1502417 () Bool)

(declare-fun res!1023479 () Bool)

(assert (=> b!1502417 (=> (not res!1023479) (not e!840326))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1502417 (= res!1023479 (and (= (size!48896 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48896 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48896 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502418 () Bool)

(assert (=> b!1502418 (= e!840326 false)))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12562 0))(
  ( (MissingZero!12562 (index!52639 (_ BitVec 32))) (Found!12562 (index!52640 (_ BitVec 32))) (Intermediate!12562 (undefined!13374 Bool) (index!52641 (_ BitVec 32)) (x!134340 (_ BitVec 32))) (Undefined!12562) (MissingVacant!12562 (index!52642 (_ BitVec 32))) )
))
(declare-fun lt!653344 () SeekEntryResult!12562)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100183 (_ BitVec 32)) SeekEntryResult!12562)

(assert (=> b!1502418 (= lt!653344 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48345 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1502419 () Bool)

(declare-fun res!1023475 () Bool)

(assert (=> b!1502419 (=> (not res!1023475) (not e!840326))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502419 (= res!1023475 (validKeyInArray!0 (select (arr!48345 a!2850) i!996)))))

(declare-fun b!1502420 () Bool)

(declare-fun res!1023480 () Bool)

(assert (=> b!1502420 (=> (not res!1023480) (not e!840326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100183 (_ BitVec 32)) Bool)

(assert (=> b!1502420 (= res!1023480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1502421 () Bool)

(declare-fun res!1023477 () Bool)

(assert (=> b!1502421 (=> (not res!1023477) (not e!840326))))

(assert (=> b!1502421 (= res!1023477 (validKeyInArray!0 (select (arr!48345 a!2850) j!87)))))

(declare-fun b!1502422 () Bool)

(declare-fun res!1023476 () Bool)

(assert (=> b!1502422 (=> (not res!1023476) (not e!840326))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502422 (= res!1023476 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48896 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48896 a!2850)) (= (select (arr!48345 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48345 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48896 a!2850))))))

(assert (= (and start!127922 res!1023478) b!1502417))

(assert (= (and b!1502417 res!1023479) b!1502419))

(assert (= (and b!1502419 res!1023475) b!1502421))

(assert (= (and b!1502421 res!1023477) b!1502420))

(assert (= (and b!1502420 res!1023480) b!1502416))

(assert (= (and b!1502416 res!1023474) b!1502422))

(assert (= (and b!1502422 res!1023476) b!1502418))

(declare-fun m!1385739 () Bool)

(assert (=> b!1502422 m!1385739))

(declare-fun m!1385741 () Bool)

(assert (=> b!1502422 m!1385741))

(declare-fun m!1385743 () Bool)

(assert (=> b!1502422 m!1385743))

(declare-fun m!1385745 () Bool)

(assert (=> b!1502418 m!1385745))

(assert (=> b!1502418 m!1385745))

(declare-fun m!1385747 () Bool)

(assert (=> b!1502418 m!1385747))

(declare-fun m!1385749 () Bool)

(assert (=> start!127922 m!1385749))

(declare-fun m!1385751 () Bool)

(assert (=> start!127922 m!1385751))

(declare-fun m!1385753 () Bool)

(assert (=> b!1502416 m!1385753))

(assert (=> b!1502421 m!1385745))

(assert (=> b!1502421 m!1385745))

(declare-fun m!1385755 () Bool)

(assert (=> b!1502421 m!1385755))

(declare-fun m!1385757 () Bool)

(assert (=> b!1502419 m!1385757))

(assert (=> b!1502419 m!1385757))

(declare-fun m!1385759 () Bool)

(assert (=> b!1502419 m!1385759))

(declare-fun m!1385761 () Bool)

(assert (=> b!1502420 m!1385761))

(push 1)

(assert (not b!1502421))

(assert (not start!127922))

(assert (not b!1502419))

(assert (not b!1502418))

(assert (not b!1502420))

(assert (not b!1502416))

(check-sat)

(pop 1)

