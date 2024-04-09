; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128114 () Bool)

(assert start!128114)

(declare-fun b!1504223 () Bool)

(declare-fun res!1025085 () Bool)

(declare-fun e!840865 () Bool)

(assert (=> b!1504223 (=> (not res!1025085) (not e!840865))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100303 0))(
  ( (array!100304 (arr!48402 (Array (_ BitVec 32) (_ BitVec 64))) (size!48953 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100303)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12619 0))(
  ( (MissingZero!12619 (index!52867 (_ BitVec 32))) (Found!12619 (index!52868 (_ BitVec 32))) (Intermediate!12619 (undefined!13431 Bool) (index!52869 (_ BitVec 32)) (x!134558 (_ BitVec 32))) (Undefined!12619) (MissingVacant!12619 (index!52870 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100303 (_ BitVec 32)) SeekEntryResult!12619)

(assert (=> b!1504223 (= res!1025085 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48402 a!2850) j!87) a!2850 mask!2661) (Found!12619 j!87)))))

(declare-fun b!1504224 () Bool)

(declare-fun res!1025087 () Bool)

(assert (=> b!1504224 (=> (not res!1025087) (not e!840865))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504224 (= res!1025087 (validKeyInArray!0 (select (arr!48402 a!2850) i!996)))))

(declare-fun b!1504225 () Bool)

(declare-fun res!1025086 () Bool)

(assert (=> b!1504225 (=> (not res!1025086) (not e!840865))))

(assert (=> b!1504225 (= res!1025086 (and (= (size!48953 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48953 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48953 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504226 () Bool)

(assert (=> b!1504226 (= e!840865 false)))

(declare-fun lt!653620 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504226 (= lt!653620 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504227 () Bool)

(declare-fun res!1025088 () Bool)

(assert (=> b!1504227 (=> (not res!1025088) (not e!840865))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1504227 (= res!1025088 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48953 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48953 a!2850)) (= (select (arr!48402 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48402 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48953 a!2850))))))

(declare-fun b!1504228 () Bool)

(declare-fun res!1025089 () Bool)

(assert (=> b!1504228 (=> (not res!1025089) (not e!840865))))

(declare-datatypes ((List!35074 0))(
  ( (Nil!35071) (Cons!35070 (h!36468 (_ BitVec 64)) (t!49775 List!35074)) )
))
(declare-fun arrayNoDuplicates!0 (array!100303 (_ BitVec 32) List!35074) Bool)

(assert (=> b!1504228 (= res!1025089 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35071))))

(declare-fun b!1504229 () Bool)

(declare-fun res!1025083 () Bool)

(assert (=> b!1504229 (=> (not res!1025083) (not e!840865))))

(assert (=> b!1504229 (= res!1025083 (validKeyInArray!0 (select (arr!48402 a!2850) j!87)))))

(declare-fun b!1504230 () Bool)

(declare-fun res!1025084 () Bool)

(assert (=> b!1504230 (=> (not res!1025084) (not e!840865))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100303 (_ BitVec 32)) Bool)

(assert (=> b!1504230 (= res!1025084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1504231 () Bool)

(declare-fun res!1025090 () Bool)

(assert (=> b!1504231 (=> (not res!1025090) (not e!840865))))

(assert (=> b!1504231 (= res!1025090 (not (= (select (arr!48402 a!2850) index!625) (select (arr!48402 a!2850) j!87))))))

(declare-fun res!1025091 () Bool)

(assert (=> start!128114 (=> (not res!1025091) (not e!840865))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128114 (= res!1025091 (validMask!0 mask!2661))))

(assert (=> start!128114 e!840865))

(assert (=> start!128114 true))

(declare-fun array_inv!37347 (array!100303) Bool)

(assert (=> start!128114 (array_inv!37347 a!2850)))

(assert (= (and start!128114 res!1025091) b!1504225))

(assert (= (and b!1504225 res!1025086) b!1504224))

(assert (= (and b!1504224 res!1025087) b!1504229))

(assert (= (and b!1504229 res!1025083) b!1504230))

(assert (= (and b!1504230 res!1025084) b!1504228))

(assert (= (and b!1504228 res!1025089) b!1504227))

(assert (= (and b!1504227 res!1025088) b!1504223))

(assert (= (and b!1504223 res!1025085) b!1504231))

(assert (= (and b!1504231 res!1025090) b!1504226))

(declare-fun m!1387493 () Bool)

(assert (=> start!128114 m!1387493))

(declare-fun m!1387495 () Bool)

(assert (=> start!128114 m!1387495))

(declare-fun m!1387497 () Bool)

(assert (=> b!1504229 m!1387497))

(assert (=> b!1504229 m!1387497))

(declare-fun m!1387499 () Bool)

(assert (=> b!1504229 m!1387499))

(declare-fun m!1387501 () Bool)

(assert (=> b!1504230 m!1387501))

(declare-fun m!1387503 () Bool)

(assert (=> b!1504228 m!1387503))

(assert (=> b!1504223 m!1387497))

(assert (=> b!1504223 m!1387497))

(declare-fun m!1387505 () Bool)

(assert (=> b!1504223 m!1387505))

(declare-fun m!1387507 () Bool)

(assert (=> b!1504224 m!1387507))

(assert (=> b!1504224 m!1387507))

(declare-fun m!1387509 () Bool)

(assert (=> b!1504224 m!1387509))

(declare-fun m!1387511 () Bool)

(assert (=> b!1504227 m!1387511))

(declare-fun m!1387513 () Bool)

(assert (=> b!1504227 m!1387513))

(declare-fun m!1387515 () Bool)

(assert (=> b!1504227 m!1387515))

(declare-fun m!1387517 () Bool)

(assert (=> b!1504231 m!1387517))

(assert (=> b!1504231 m!1387497))

(declare-fun m!1387519 () Bool)

(assert (=> b!1504226 m!1387519))

(push 1)

(assert (not b!1504228))

(assert (not b!1504226))

(assert (not b!1504224))

(assert (not b!1504223))

(assert (not b!1504229))

(assert (not b!1504230))

(assert (not start!128114))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

