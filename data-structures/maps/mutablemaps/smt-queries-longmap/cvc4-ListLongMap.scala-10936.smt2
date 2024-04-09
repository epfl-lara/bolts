; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128000 () Bool)

(assert start!128000)

(declare-fun res!1024068 () Bool)

(declare-fun e!840560 () Bool)

(assert (=> start!128000 (=> (not res!1024068) (not e!840560))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128000 (= res!1024068 (validMask!0 mask!2661))))

(assert (=> start!128000 e!840560))

(assert (=> start!128000 true))

(declare-datatypes ((array!100228 0))(
  ( (array!100229 (arr!48366 (Array (_ BitVec 32) (_ BitVec 64))) (size!48917 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100228)

(declare-fun array_inv!37311 (array!100228) Bool)

(assert (=> start!128000 (array_inv!37311 a!2850)))

(declare-fun b!1503116 () Bool)

(declare-fun res!1024073 () Bool)

(assert (=> b!1503116 (=> (not res!1024073) (not e!840560))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503116 (= res!1024073 (validKeyInArray!0 (select (arr!48366 a!2850) i!996)))))

(declare-fun b!1503117 () Bool)

(assert (=> b!1503117 (= e!840560 false)))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!653458 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503117 (= lt!653458 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503118 () Bool)

(declare-fun res!1024069 () Bool)

(assert (=> b!1503118 (=> (not res!1024069) (not e!840560))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12583 0))(
  ( (MissingZero!12583 (index!52723 (_ BitVec 32))) (Found!12583 (index!52724 (_ BitVec 32))) (Intermediate!12583 (undefined!13395 Bool) (index!52725 (_ BitVec 32)) (x!134420 (_ BitVec 32))) (Undefined!12583) (MissingVacant!12583 (index!52726 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100228 (_ BitVec 32)) SeekEntryResult!12583)

(assert (=> b!1503118 (= res!1024069 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48366 a!2850) j!87) a!2850 mask!2661) (Found!12583 j!87)))))

(declare-fun b!1503119 () Bool)

(declare-fun res!1024066 () Bool)

(assert (=> b!1503119 (=> (not res!1024066) (not e!840560))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503119 (= res!1024066 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48917 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48917 a!2850)) (= (select (arr!48366 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48366 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48917 a!2850))))))

(declare-fun b!1503120 () Bool)

(declare-fun res!1024070 () Bool)

(assert (=> b!1503120 (=> (not res!1024070) (not e!840560))))

(assert (=> b!1503120 (= res!1024070 (not (= (select (arr!48366 a!2850) index!625) (select (arr!48366 a!2850) j!87))))))

(declare-fun b!1503121 () Bool)

(declare-fun res!1024072 () Bool)

(assert (=> b!1503121 (=> (not res!1024072) (not e!840560))))

(assert (=> b!1503121 (= res!1024072 (validKeyInArray!0 (select (arr!48366 a!2850) j!87)))))

(declare-fun b!1503122 () Bool)

(declare-fun res!1024067 () Bool)

(assert (=> b!1503122 (=> (not res!1024067) (not e!840560))))

(declare-datatypes ((List!35038 0))(
  ( (Nil!35035) (Cons!35034 (h!36432 (_ BitVec 64)) (t!49739 List!35038)) )
))
(declare-fun arrayNoDuplicates!0 (array!100228 (_ BitVec 32) List!35038) Bool)

(assert (=> b!1503122 (= res!1024067 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35035))))

(declare-fun b!1503123 () Bool)

(declare-fun res!1024074 () Bool)

(assert (=> b!1503123 (=> (not res!1024074) (not e!840560))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100228 (_ BitVec 32)) Bool)

(assert (=> b!1503123 (= res!1024074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503124 () Bool)

(declare-fun res!1024071 () Bool)

(assert (=> b!1503124 (=> (not res!1024071) (not e!840560))))

(assert (=> b!1503124 (= res!1024071 (and (= (size!48917 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48917 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48917 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!128000 res!1024068) b!1503124))

(assert (= (and b!1503124 res!1024071) b!1503116))

(assert (= (and b!1503116 res!1024073) b!1503121))

(assert (= (and b!1503121 res!1024072) b!1503123))

(assert (= (and b!1503123 res!1024074) b!1503122))

(assert (= (and b!1503122 res!1024067) b!1503119))

(assert (= (and b!1503119 res!1024066) b!1503118))

(assert (= (and b!1503118 res!1024069) b!1503120))

(assert (= (and b!1503120 res!1024070) b!1503117))

(declare-fun m!1386413 () Bool)

(assert (=> b!1503118 m!1386413))

(assert (=> b!1503118 m!1386413))

(declare-fun m!1386415 () Bool)

(assert (=> b!1503118 m!1386415))

(declare-fun m!1386417 () Bool)

(assert (=> b!1503119 m!1386417))

(declare-fun m!1386419 () Bool)

(assert (=> b!1503119 m!1386419))

(declare-fun m!1386421 () Bool)

(assert (=> b!1503119 m!1386421))

(declare-fun m!1386423 () Bool)

(assert (=> b!1503123 m!1386423))

(declare-fun m!1386425 () Bool)

(assert (=> b!1503122 m!1386425))

(declare-fun m!1386427 () Bool)

(assert (=> b!1503116 m!1386427))

(assert (=> b!1503116 m!1386427))

(declare-fun m!1386429 () Bool)

(assert (=> b!1503116 m!1386429))

(declare-fun m!1386431 () Bool)

(assert (=> b!1503120 m!1386431))

(assert (=> b!1503120 m!1386413))

(assert (=> b!1503121 m!1386413))

(assert (=> b!1503121 m!1386413))

(declare-fun m!1386433 () Bool)

(assert (=> b!1503121 m!1386433))

(declare-fun m!1386435 () Bool)

(assert (=> start!128000 m!1386435))

(declare-fun m!1386437 () Bool)

(assert (=> start!128000 m!1386437))

(declare-fun m!1386439 () Bool)

(assert (=> b!1503117 m!1386439))

(push 1)

(assert (not start!128000))

(assert (not b!1503118))

(assert (not b!1503123))

(assert (not b!1503116))

(assert (not b!1503121))

(assert (not b!1503117))

