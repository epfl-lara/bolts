; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128030 () Bool)

(assert start!128030)

(declare-fun b!1503521 () Bool)

(declare-fun e!840649 () Bool)

(assert (=> b!1503521 (= e!840649 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun lt!653503 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503521 (= lt!653503 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503522 () Bool)

(declare-fun res!1024471 () Bool)

(assert (=> b!1503522 (=> (not res!1024471) (not e!840649))))

(declare-datatypes ((array!100258 0))(
  ( (array!100259 (arr!48381 (Array (_ BitVec 32) (_ BitVec 64))) (size!48932 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100258)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503522 (= res!1024471 (validKeyInArray!0 (select (arr!48381 a!2850) j!87)))))

(declare-fun b!1503523 () Bool)

(declare-fun res!1024473 () Bool)

(assert (=> b!1503523 (=> (not res!1024473) (not e!840649))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1503523 (= res!1024473 (and (= (size!48932 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48932 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48932 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503524 () Bool)

(declare-fun res!1024476 () Bool)

(assert (=> b!1503524 (=> (not res!1024476) (not e!840649))))

(declare-datatypes ((List!35053 0))(
  ( (Nil!35050) (Cons!35049 (h!36447 (_ BitVec 64)) (t!49754 List!35053)) )
))
(declare-fun arrayNoDuplicates!0 (array!100258 (_ BitVec 32) List!35053) Bool)

(assert (=> b!1503524 (= res!1024476 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35050))))

(declare-fun b!1503525 () Bool)

(declare-fun res!1024472 () Bool)

(assert (=> b!1503525 (=> (not res!1024472) (not e!840649))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100258 (_ BitVec 32)) Bool)

(assert (=> b!1503525 (= res!1024472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503526 () Bool)

(declare-fun res!1024474 () Bool)

(assert (=> b!1503526 (=> (not res!1024474) (not e!840649))))

(assert (=> b!1503526 (= res!1024474 (validKeyInArray!0 (select (arr!48381 a!2850) i!996)))))

(declare-fun b!1503527 () Bool)

(declare-fun res!1024478 () Bool)

(assert (=> b!1503527 (=> (not res!1024478) (not e!840649))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12598 0))(
  ( (MissingZero!12598 (index!52783 (_ BitVec 32))) (Found!12598 (index!52784 (_ BitVec 32))) (Intermediate!12598 (undefined!13410 Bool) (index!52785 (_ BitVec 32)) (x!134475 (_ BitVec 32))) (Undefined!12598) (MissingVacant!12598 (index!52786 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100258 (_ BitVec 32)) SeekEntryResult!12598)

(assert (=> b!1503527 (= res!1024478 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48381 a!2850) j!87) a!2850 mask!2661) (Found!12598 j!87)))))

(declare-fun b!1503528 () Bool)

(declare-fun res!1024479 () Bool)

(assert (=> b!1503528 (=> (not res!1024479) (not e!840649))))

(assert (=> b!1503528 (= res!1024479 (not (= (select (arr!48381 a!2850) index!625) (select (arr!48381 a!2850) j!87))))))

(declare-fun res!1024477 () Bool)

(assert (=> start!128030 (=> (not res!1024477) (not e!840649))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128030 (= res!1024477 (validMask!0 mask!2661))))

(assert (=> start!128030 e!840649))

(assert (=> start!128030 true))

(declare-fun array_inv!37326 (array!100258) Bool)

(assert (=> start!128030 (array_inv!37326 a!2850)))

(declare-fun b!1503529 () Bool)

(declare-fun res!1024475 () Bool)

(assert (=> b!1503529 (=> (not res!1024475) (not e!840649))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503529 (= res!1024475 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48932 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48932 a!2850)) (= (select (arr!48381 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48381 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48932 a!2850))))))

(assert (= (and start!128030 res!1024477) b!1503523))

(assert (= (and b!1503523 res!1024473) b!1503526))

(assert (= (and b!1503526 res!1024474) b!1503522))

(assert (= (and b!1503522 res!1024471) b!1503525))

(assert (= (and b!1503525 res!1024472) b!1503524))

(assert (= (and b!1503524 res!1024476) b!1503529))

(assert (= (and b!1503529 res!1024475) b!1503527))

(assert (= (and b!1503527 res!1024478) b!1503528))

(assert (= (and b!1503528 res!1024479) b!1503521))

(declare-fun m!1386833 () Bool)

(assert (=> b!1503527 m!1386833))

(assert (=> b!1503527 m!1386833))

(declare-fun m!1386835 () Bool)

(assert (=> b!1503527 m!1386835))

(declare-fun m!1386837 () Bool)

(assert (=> b!1503525 m!1386837))

(assert (=> b!1503522 m!1386833))

(assert (=> b!1503522 m!1386833))

(declare-fun m!1386839 () Bool)

(assert (=> b!1503522 m!1386839))

(declare-fun m!1386841 () Bool)

(assert (=> start!128030 m!1386841))

(declare-fun m!1386843 () Bool)

(assert (=> start!128030 m!1386843))

(declare-fun m!1386845 () Bool)

(assert (=> b!1503521 m!1386845))

(declare-fun m!1386847 () Bool)

(assert (=> b!1503528 m!1386847))

(assert (=> b!1503528 m!1386833))

(declare-fun m!1386849 () Bool)

(assert (=> b!1503524 m!1386849))

(declare-fun m!1386851 () Bool)

(assert (=> b!1503526 m!1386851))

(assert (=> b!1503526 m!1386851))

(declare-fun m!1386853 () Bool)

(assert (=> b!1503526 m!1386853))

(declare-fun m!1386855 () Bool)

(assert (=> b!1503529 m!1386855))

(declare-fun m!1386857 () Bool)

(assert (=> b!1503529 m!1386857))

(declare-fun m!1386859 () Bool)

(assert (=> b!1503529 m!1386859))

(push 1)

(assert (not b!1503522))

(assert (not b!1503524))

(assert (not b!1503525))

