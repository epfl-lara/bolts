; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128002 () Bool)

(assert start!128002)

(declare-fun b!1503143 () Bool)

(declare-fun res!1024094 () Bool)

(declare-fun e!840565 () Bool)

(assert (=> b!1503143 (=> (not res!1024094) (not e!840565))))

(declare-datatypes ((array!100230 0))(
  ( (array!100231 (arr!48367 (Array (_ BitVec 32) (_ BitVec 64))) (size!48918 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100230)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503143 (= res!1024094 (validKeyInArray!0 (select (arr!48367 a!2850) j!87)))))

(declare-fun res!1024098 () Bool)

(assert (=> start!128002 (=> (not res!1024098) (not e!840565))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128002 (= res!1024098 (validMask!0 mask!2661))))

(assert (=> start!128002 e!840565))

(assert (=> start!128002 true))

(declare-fun array_inv!37312 (array!100230) Bool)

(assert (=> start!128002 (array_inv!37312 a!2850)))

(declare-fun b!1503144 () Bool)

(declare-fun res!1024096 () Bool)

(assert (=> b!1503144 (=> (not res!1024096) (not e!840565))))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1503144 (= res!1024096 (not (= (select (arr!48367 a!2850) index!625) (select (arr!48367 a!2850) j!87))))))

(declare-fun b!1503145 () Bool)

(declare-fun res!1024093 () Bool)

(assert (=> b!1503145 (=> (not res!1024093) (not e!840565))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503145 (= res!1024093 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48918 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48918 a!2850)) (= (select (arr!48367 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48367 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48918 a!2850))))))

(declare-fun b!1503146 () Bool)

(declare-fun res!1024100 () Bool)

(assert (=> b!1503146 (=> (not res!1024100) (not e!840565))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100230 (_ BitVec 32)) Bool)

(assert (=> b!1503146 (= res!1024100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503147 () Bool)

(declare-fun res!1024095 () Bool)

(assert (=> b!1503147 (=> (not res!1024095) (not e!840565))))

(declare-datatypes ((List!35039 0))(
  ( (Nil!35036) (Cons!35035 (h!36433 (_ BitVec 64)) (t!49740 List!35039)) )
))
(declare-fun arrayNoDuplicates!0 (array!100230 (_ BitVec 32) List!35039) Bool)

(assert (=> b!1503147 (= res!1024095 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35036))))

(declare-fun b!1503148 () Bool)

(declare-fun res!1024099 () Bool)

(assert (=> b!1503148 (=> (not res!1024099) (not e!840565))))

(assert (=> b!1503148 (= res!1024099 (validKeyInArray!0 (select (arr!48367 a!2850) i!996)))))

(declare-fun b!1503149 () Bool)

(declare-fun res!1024097 () Bool)

(assert (=> b!1503149 (=> (not res!1024097) (not e!840565))))

(declare-datatypes ((SeekEntryResult!12584 0))(
  ( (MissingZero!12584 (index!52727 (_ BitVec 32))) (Found!12584 (index!52728 (_ BitVec 32))) (Intermediate!12584 (undefined!13396 Bool) (index!52729 (_ BitVec 32)) (x!134429 (_ BitVec 32))) (Undefined!12584) (MissingVacant!12584 (index!52730 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100230 (_ BitVec 32)) SeekEntryResult!12584)

(assert (=> b!1503149 (= res!1024097 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48367 a!2850) j!87) a!2850 mask!2661) (Found!12584 j!87)))))

(declare-fun b!1503150 () Bool)

(declare-fun res!1024101 () Bool)

(assert (=> b!1503150 (=> (not res!1024101) (not e!840565))))

(assert (=> b!1503150 (= res!1024101 (and (= (size!48918 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48918 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48918 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503151 () Bool)

(assert (=> b!1503151 (= e!840565 false)))

(declare-fun lt!653461 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503151 (= lt!653461 (nextIndex!0 index!625 x!647 mask!2661))))

(assert (= (and start!128002 res!1024098) b!1503150))

(assert (= (and b!1503150 res!1024101) b!1503148))

(assert (= (and b!1503148 res!1024099) b!1503143))

(assert (= (and b!1503143 res!1024094) b!1503146))

(assert (= (and b!1503146 res!1024100) b!1503147))

(assert (= (and b!1503147 res!1024095) b!1503145))

(assert (= (and b!1503145 res!1024093) b!1503149))

(assert (= (and b!1503149 res!1024097) b!1503144))

(assert (= (and b!1503144 res!1024096) b!1503151))

(declare-fun m!1386441 () Bool)

(assert (=> b!1503147 m!1386441))

(declare-fun m!1386443 () Bool)

(assert (=> b!1503145 m!1386443))

(declare-fun m!1386445 () Bool)

(assert (=> b!1503145 m!1386445))

(declare-fun m!1386447 () Bool)

(assert (=> b!1503145 m!1386447))

(declare-fun m!1386449 () Bool)

(assert (=> b!1503146 m!1386449))

(declare-fun m!1386451 () Bool)

(assert (=> b!1503149 m!1386451))

(assert (=> b!1503149 m!1386451))

(declare-fun m!1386453 () Bool)

(assert (=> b!1503149 m!1386453))

(declare-fun m!1386455 () Bool)

(assert (=> start!128002 m!1386455))

(declare-fun m!1386457 () Bool)

(assert (=> start!128002 m!1386457))

(declare-fun m!1386459 () Bool)

(assert (=> b!1503151 m!1386459))

(declare-fun m!1386461 () Bool)

(assert (=> b!1503148 m!1386461))

(assert (=> b!1503148 m!1386461))

(declare-fun m!1386463 () Bool)

(assert (=> b!1503148 m!1386463))

(declare-fun m!1386465 () Bool)

(assert (=> b!1503144 m!1386465))

(assert (=> b!1503144 m!1386451))

(assert (=> b!1503143 m!1386451))

(assert (=> b!1503143 m!1386451))

(declare-fun m!1386467 () Bool)

(assert (=> b!1503143 m!1386467))

(push 1)

(assert (not b!1503149))

(assert (not start!128002))

(assert (not b!1503147))

(assert (not b!1503148))

(assert (not b!1503146))

(assert (not b!1503151))

(assert (not b!1503143))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

