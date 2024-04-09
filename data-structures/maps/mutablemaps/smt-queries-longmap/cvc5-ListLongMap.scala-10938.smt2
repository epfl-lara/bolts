; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128008 () Bool)

(assert start!128008)

(declare-fun b!1503225 () Bool)

(declare-fun res!1024176 () Bool)

(declare-fun e!840583 () Bool)

(assert (=> b!1503225 (=> (not res!1024176) (not e!840583))))

(declare-datatypes ((array!100236 0))(
  ( (array!100237 (arr!48370 (Array (_ BitVec 32) (_ BitVec 64))) (size!48921 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100236)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100236 (_ BitVec 32)) Bool)

(assert (=> b!1503225 (= res!1024176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503226 () Bool)

(declare-fun res!1024177 () Bool)

(assert (=> b!1503226 (=> (not res!1024177) (not e!840583))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503226 (= res!1024177 (and (= (size!48921 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48921 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48921 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503227 () Bool)

(declare-fun res!1024179 () Bool)

(assert (=> b!1503227 (=> (not res!1024179) (not e!840583))))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1503227 (= res!1024179 (not (= (select (arr!48370 a!2850) index!625) (select (arr!48370 a!2850) j!87))))))

(declare-fun b!1503228 () Bool)

(declare-fun res!1024174 () Bool)

(assert (=> b!1503228 (=> (not res!1024174) (not e!840583))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503228 (= res!1024174 (validKeyInArray!0 (select (arr!48370 a!2850) j!87)))))

(declare-fun b!1503229 () Bool)

(declare-fun res!1024178 () Bool)

(assert (=> b!1503229 (=> (not res!1024178) (not e!840583))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503229 (= res!1024178 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48921 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48921 a!2850)) (= (select (arr!48370 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48370 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48921 a!2850))))))

(declare-fun b!1503230 () Bool)

(assert (=> b!1503230 (= e!840583 false)))

(declare-fun lt!653470 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503230 (= lt!653470 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503231 () Bool)

(declare-fun res!1024182 () Bool)

(assert (=> b!1503231 (=> (not res!1024182) (not e!840583))))

(declare-datatypes ((List!35042 0))(
  ( (Nil!35039) (Cons!35038 (h!36436 (_ BitVec 64)) (t!49743 List!35042)) )
))
(declare-fun arrayNoDuplicates!0 (array!100236 (_ BitVec 32) List!35042) Bool)

(assert (=> b!1503231 (= res!1024182 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35039))))

(declare-fun b!1503232 () Bool)

(declare-fun res!1024180 () Bool)

(assert (=> b!1503232 (=> (not res!1024180) (not e!840583))))

(assert (=> b!1503232 (= res!1024180 (validKeyInArray!0 (select (arr!48370 a!2850) i!996)))))

(declare-fun b!1503224 () Bool)

(declare-fun res!1024175 () Bool)

(assert (=> b!1503224 (=> (not res!1024175) (not e!840583))))

(declare-datatypes ((SeekEntryResult!12587 0))(
  ( (MissingZero!12587 (index!52739 (_ BitVec 32))) (Found!12587 (index!52740 (_ BitVec 32))) (Intermediate!12587 (undefined!13399 Bool) (index!52741 (_ BitVec 32)) (x!134440 (_ BitVec 32))) (Undefined!12587) (MissingVacant!12587 (index!52742 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100236 (_ BitVec 32)) SeekEntryResult!12587)

(assert (=> b!1503224 (= res!1024175 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48370 a!2850) j!87) a!2850 mask!2661) (Found!12587 j!87)))))

(declare-fun res!1024181 () Bool)

(assert (=> start!128008 (=> (not res!1024181) (not e!840583))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128008 (= res!1024181 (validMask!0 mask!2661))))

(assert (=> start!128008 e!840583))

(assert (=> start!128008 true))

(declare-fun array_inv!37315 (array!100236) Bool)

(assert (=> start!128008 (array_inv!37315 a!2850)))

(assert (= (and start!128008 res!1024181) b!1503226))

(assert (= (and b!1503226 res!1024177) b!1503232))

(assert (= (and b!1503232 res!1024180) b!1503228))

(assert (= (and b!1503228 res!1024174) b!1503225))

(assert (= (and b!1503225 res!1024176) b!1503231))

(assert (= (and b!1503231 res!1024182) b!1503229))

(assert (= (and b!1503229 res!1024178) b!1503224))

(assert (= (and b!1503224 res!1024175) b!1503227))

(assert (= (and b!1503227 res!1024179) b!1503230))

(declare-fun m!1386525 () Bool)

(assert (=> b!1503227 m!1386525))

(declare-fun m!1386527 () Bool)

(assert (=> b!1503227 m!1386527))

(declare-fun m!1386529 () Bool)

(assert (=> b!1503229 m!1386529))

(declare-fun m!1386531 () Bool)

(assert (=> b!1503229 m!1386531))

(declare-fun m!1386533 () Bool)

(assert (=> b!1503229 m!1386533))

(declare-fun m!1386535 () Bool)

(assert (=> start!128008 m!1386535))

(declare-fun m!1386537 () Bool)

(assert (=> start!128008 m!1386537))

(declare-fun m!1386539 () Bool)

(assert (=> b!1503230 m!1386539))

(declare-fun m!1386541 () Bool)

(assert (=> b!1503225 m!1386541))

(declare-fun m!1386543 () Bool)

(assert (=> b!1503231 m!1386543))

(assert (=> b!1503228 m!1386527))

(assert (=> b!1503228 m!1386527))

(declare-fun m!1386545 () Bool)

(assert (=> b!1503228 m!1386545))

(declare-fun m!1386547 () Bool)

(assert (=> b!1503232 m!1386547))

(assert (=> b!1503232 m!1386547))

(declare-fun m!1386549 () Bool)

(assert (=> b!1503232 m!1386549))

(assert (=> b!1503224 m!1386527))

(assert (=> b!1503224 m!1386527))

(declare-fun m!1386551 () Bool)

(assert (=> b!1503224 m!1386551))

(push 1)

(assert (not b!1503228))

(assert (not b!1503232))

(assert (not b!1503225))

(assert (not b!1503231))

(assert (not b!1503230))

(assert (not start!128008))

(assert (not b!1503224))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

