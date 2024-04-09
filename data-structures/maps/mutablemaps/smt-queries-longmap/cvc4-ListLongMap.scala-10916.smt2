; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127808 () Bool)

(assert start!127808)

(declare-fun b!1501404 () Bool)

(declare-fun e!839936 () Bool)

(declare-fun e!839939 () Bool)

(assert (=> b!1501404 (= e!839936 e!839939)))

(declare-fun res!1022561 () Bool)

(assert (=> b!1501404 (=> (not res!1022561) (not e!839939))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100102 0))(
  ( (array!100103 (arr!48306 (Array (_ BitVec 32) (_ BitVec 64))) (size!48857 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100102)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12535 0))(
  ( (MissingZero!12535 (index!52531 (_ BitVec 32))) (Found!12535 (index!52532 (_ BitVec 32))) (Intermediate!12535 (undefined!13347 Bool) (index!52533 (_ BitVec 32)) (x!134206 (_ BitVec 32))) (Undefined!12535) (MissingVacant!12535 (index!52534 (_ BitVec 32))) )
))
(declare-fun lt!653136 () SeekEntryResult!12535)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100102 (_ BitVec 32)) SeekEntryResult!12535)

(assert (=> b!1501404 (= res!1022561 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48306 a!2850) j!87) a!2850 mask!2661) lt!653136))))

(assert (=> b!1501404 (= lt!653136 (Found!12535 j!87))))

(declare-fun res!1022559 () Bool)

(assert (=> start!127808 (=> (not res!1022559) (not e!839936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127808 (= res!1022559 (validMask!0 mask!2661))))

(assert (=> start!127808 e!839936))

(assert (=> start!127808 true))

(declare-fun array_inv!37251 (array!100102) Bool)

(assert (=> start!127808 (array_inv!37251 a!2850)))

(declare-fun b!1501405 () Bool)

(declare-fun res!1022556 () Bool)

(assert (=> b!1501405 (=> (not res!1022556) (not e!839936))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1501405 (= res!1022556 (and (= (size!48857 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48857 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48857 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501406 () Bool)

(declare-fun res!1022560 () Bool)

(assert (=> b!1501406 (=> (not res!1022560) (not e!839936))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100102 (_ BitVec 32)) Bool)

(assert (=> b!1501406 (= res!1022560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501407 () Bool)

(declare-fun res!1022553 () Bool)

(declare-fun e!839938 () Bool)

(assert (=> b!1501407 (=> (not res!1022553) (not e!839938))))

(declare-fun lt!653137 () (_ BitVec 32))

(assert (=> b!1501407 (= res!1022553 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653137 vacantBefore!10 (select (arr!48306 a!2850) j!87) a!2850 mask!2661) lt!653136))))

(declare-fun b!1501408 () Bool)

(declare-fun res!1022552 () Bool)

(assert (=> b!1501408 (=> (not res!1022552) (not e!839939))))

(assert (=> b!1501408 (= res!1022552 (not (= (select (arr!48306 a!2850) index!625) (select (arr!48306 a!2850) j!87))))))

(declare-fun b!1501409 () Bool)

(assert (=> b!1501409 (= e!839938 (not true))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501409 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653137 vacantAfter!10 (select (store (arr!48306 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100103 (store (arr!48306 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48857 a!2850)) mask!2661) lt!653136)))

(declare-datatypes ((Unit!50178 0))(
  ( (Unit!50179) )
))
(declare-fun lt!653135 () Unit!50178)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100102 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50178)

(assert (=> b!1501409 (= lt!653135 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653137 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501410 () Bool)

(assert (=> b!1501410 (= e!839939 e!839938)))

(declare-fun res!1022562 () Bool)

(assert (=> b!1501410 (=> (not res!1022562) (not e!839938))))

(assert (=> b!1501410 (= res!1022562 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653137 #b00000000000000000000000000000000) (bvslt lt!653137 (size!48857 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501410 (= lt!653137 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1501411 () Bool)

(declare-fun res!1022554 () Bool)

(assert (=> b!1501411 (=> (not res!1022554) (not e!839936))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501411 (= res!1022554 (validKeyInArray!0 (select (arr!48306 a!2850) j!87)))))

(declare-fun b!1501412 () Bool)

(declare-fun res!1022558 () Bool)

(assert (=> b!1501412 (=> (not res!1022558) (not e!839936))))

(declare-datatypes ((List!34978 0))(
  ( (Nil!34975) (Cons!34974 (h!36372 (_ BitVec 64)) (t!49679 List!34978)) )
))
(declare-fun arrayNoDuplicates!0 (array!100102 (_ BitVec 32) List!34978) Bool)

(assert (=> b!1501412 (= res!1022558 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34975))))

(declare-fun b!1501413 () Bool)

(declare-fun res!1022557 () Bool)

(assert (=> b!1501413 (=> (not res!1022557) (not e!839936))))

(assert (=> b!1501413 (= res!1022557 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48857 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48857 a!2850)) (= (select (arr!48306 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48306 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48857 a!2850))))))

(declare-fun b!1501414 () Bool)

(declare-fun res!1022555 () Bool)

(assert (=> b!1501414 (=> (not res!1022555) (not e!839936))))

(assert (=> b!1501414 (= res!1022555 (validKeyInArray!0 (select (arr!48306 a!2850) i!996)))))

(assert (= (and start!127808 res!1022559) b!1501405))

(assert (= (and b!1501405 res!1022556) b!1501414))

(assert (= (and b!1501414 res!1022555) b!1501411))

(assert (= (and b!1501411 res!1022554) b!1501406))

(assert (= (and b!1501406 res!1022560) b!1501412))

(assert (= (and b!1501412 res!1022558) b!1501413))

(assert (= (and b!1501413 res!1022557) b!1501404))

(assert (= (and b!1501404 res!1022561) b!1501408))

(assert (= (and b!1501408 res!1022552) b!1501410))

(assert (= (and b!1501410 res!1022562) b!1501407))

(assert (= (and b!1501407 res!1022553) b!1501409))

(declare-fun m!1384695 () Bool)

(assert (=> b!1501412 m!1384695))

(declare-fun m!1384697 () Bool)

(assert (=> b!1501411 m!1384697))

(assert (=> b!1501411 m!1384697))

(declare-fun m!1384699 () Bool)

(assert (=> b!1501411 m!1384699))

(declare-fun m!1384701 () Bool)

(assert (=> b!1501409 m!1384701))

(declare-fun m!1384703 () Bool)

(assert (=> b!1501409 m!1384703))

(assert (=> b!1501409 m!1384703))

(declare-fun m!1384705 () Bool)

(assert (=> b!1501409 m!1384705))

(declare-fun m!1384707 () Bool)

(assert (=> b!1501409 m!1384707))

(assert (=> b!1501407 m!1384697))

(assert (=> b!1501407 m!1384697))

(declare-fun m!1384709 () Bool)

(assert (=> b!1501407 m!1384709))

(declare-fun m!1384711 () Bool)

(assert (=> b!1501413 m!1384711))

(assert (=> b!1501413 m!1384701))

(declare-fun m!1384713 () Bool)

(assert (=> b!1501413 m!1384713))

(assert (=> b!1501404 m!1384697))

(assert (=> b!1501404 m!1384697))

(declare-fun m!1384715 () Bool)

(assert (=> b!1501404 m!1384715))

(declare-fun m!1384717 () Bool)

(assert (=> b!1501410 m!1384717))

(declare-fun m!1384719 () Bool)

(assert (=> b!1501408 m!1384719))

(assert (=> b!1501408 m!1384697))

(declare-fun m!1384721 () Bool)

(assert (=> b!1501406 m!1384721))

(declare-fun m!1384723 () Bool)

(assert (=> start!127808 m!1384723))

(declare-fun m!1384725 () Bool)

(assert (=> start!127808 m!1384725))

(declare-fun m!1384727 () Bool)

(assert (=> b!1501414 m!1384727))

(assert (=> b!1501414 m!1384727))

(declare-fun m!1384729 () Bool)

(assert (=> b!1501414 m!1384729))

(push 1)

(assert (not b!1501409))

(assert (not b!1501411))

(assert (not b!1501414))

(assert (not b!1501404))

(assert (not b!1501412))

