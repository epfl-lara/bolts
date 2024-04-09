; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127868 () Bool)

(assert start!127868)

(declare-fun b!1502083 () Bool)

(declare-fun res!1023231 () Bool)

(declare-fun e!840181 () Bool)

(assert (=> b!1502083 (=> (not res!1023231) (not e!840181))))

(declare-datatypes ((array!100162 0))(
  ( (array!100163 (arr!48336 (Array (_ BitVec 32) (_ BitVec 64))) (size!48887 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100162)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502083 (= res!1023231 (validKeyInArray!0 (select (arr!48336 a!2850) j!87)))))

(declare-fun b!1502084 () Bool)

(declare-fun res!1023235 () Bool)

(assert (=> b!1502084 (=> (not res!1023235) (not e!840181))))

(declare-datatypes ((List!35008 0))(
  ( (Nil!35005) (Cons!35004 (h!36402 (_ BitVec 64)) (t!49709 List!35008)) )
))
(declare-fun arrayNoDuplicates!0 (array!100162 (_ BitVec 32) List!35008) Bool)

(assert (=> b!1502084 (= res!1023235 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35005))))

(declare-fun b!1502085 () Bool)

(assert (=> b!1502085 (= e!840181 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12553 0))(
  ( (MissingZero!12553 (index!52603 (_ BitVec 32))) (Found!12553 (index!52604 (_ BitVec 32))) (Intermediate!12553 (undefined!13365 Bool) (index!52605 (_ BitVec 32)) (x!134304 (_ BitVec 32))) (Undefined!12553) (MissingVacant!12553 (index!52606 (_ BitVec 32))) )
))
(declare-fun lt!653281 () SeekEntryResult!12553)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100162 (_ BitVec 32)) SeekEntryResult!12553)

(assert (=> b!1502085 (= lt!653281 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48336 a!2850) j!87) a!2850 mask!2661))))

(declare-fun res!1023236 () Bool)

(assert (=> start!127868 (=> (not res!1023236) (not e!840181))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127868 (= res!1023236 (validMask!0 mask!2661))))

(assert (=> start!127868 e!840181))

(assert (=> start!127868 true))

(declare-fun array_inv!37281 (array!100162) Bool)

(assert (=> start!127868 (array_inv!37281 a!2850)))

(declare-fun b!1502086 () Bool)

(declare-fun res!1023232 () Bool)

(assert (=> b!1502086 (=> (not res!1023232) (not e!840181))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1502086 (= res!1023232 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48887 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48887 a!2850)) (= (select (arr!48336 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48336 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48887 a!2850))))))

(declare-fun b!1502087 () Bool)

(declare-fun res!1023234 () Bool)

(assert (=> b!1502087 (=> (not res!1023234) (not e!840181))))

(assert (=> b!1502087 (= res!1023234 (validKeyInArray!0 (select (arr!48336 a!2850) i!996)))))

(declare-fun b!1502088 () Bool)

(declare-fun res!1023237 () Bool)

(assert (=> b!1502088 (=> (not res!1023237) (not e!840181))))

(assert (=> b!1502088 (= res!1023237 (and (= (size!48887 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48887 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48887 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502089 () Bool)

(declare-fun res!1023233 () Bool)

(assert (=> b!1502089 (=> (not res!1023233) (not e!840181))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100162 (_ BitVec 32)) Bool)

(assert (=> b!1502089 (= res!1023233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127868 res!1023236) b!1502088))

(assert (= (and b!1502088 res!1023237) b!1502087))

(assert (= (and b!1502087 res!1023234) b!1502083))

(assert (= (and b!1502083 res!1023231) b!1502089))

(assert (= (and b!1502089 res!1023233) b!1502084))

(assert (= (and b!1502084 res!1023235) b!1502086))

(assert (= (and b!1502086 res!1023232) b!1502085))

(declare-fun m!1385445 () Bool)

(assert (=> b!1502085 m!1385445))

(assert (=> b!1502085 m!1385445))

(declare-fun m!1385447 () Bool)

(assert (=> b!1502085 m!1385447))

(declare-fun m!1385449 () Bool)

(assert (=> start!127868 m!1385449))

(declare-fun m!1385451 () Bool)

(assert (=> start!127868 m!1385451))

(declare-fun m!1385453 () Bool)

(assert (=> b!1502089 m!1385453))

(declare-fun m!1385455 () Bool)

(assert (=> b!1502086 m!1385455))

(declare-fun m!1385457 () Bool)

(assert (=> b!1502086 m!1385457))

(declare-fun m!1385459 () Bool)

(assert (=> b!1502086 m!1385459))

(assert (=> b!1502083 m!1385445))

(assert (=> b!1502083 m!1385445))

(declare-fun m!1385461 () Bool)

(assert (=> b!1502083 m!1385461))

(declare-fun m!1385463 () Bool)

(assert (=> b!1502087 m!1385463))

(assert (=> b!1502087 m!1385463))

(declare-fun m!1385465 () Bool)

(assert (=> b!1502087 m!1385465))

(declare-fun m!1385467 () Bool)

(assert (=> b!1502084 m!1385467))

(push 1)

(assert (not start!127868))

(assert (not b!1502087))

(assert (not b!1502085))

(assert (not b!1502089))

(assert (not b!1502084))

(assert (not b!1502083))

(check-sat)

