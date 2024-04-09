; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127600 () Bool)

(assert start!127600)

(declare-fun res!1019625 () Bool)

(declare-fun e!839053 () Bool)

(assert (=> start!127600 (=> (not res!1019625) (not e!839053))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127600 (= res!1019625 (validMask!0 mask!2661))))

(assert (=> start!127600 e!839053))

(assert (=> start!127600 true))

(declare-datatypes ((array!99894 0))(
  ( (array!99895 (arr!48202 (Array (_ BitVec 32) (_ BitVec 64))) (size!48753 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99894)

(declare-fun array_inv!37147 (array!99894) Bool)

(assert (=> start!127600 (array_inv!37147 a!2850)))

(declare-fun b!1498470 () Bool)

(declare-fun res!1019624 () Bool)

(assert (=> b!1498470 (=> (not res!1019624) (not e!839053))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498470 (= res!1019624 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48753 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48753 a!2850)) (= (select (arr!48202 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48202 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48753 a!2850))))))

(declare-fun b!1498471 () Bool)

(declare-fun res!1019623 () Bool)

(assert (=> b!1498471 (=> (not res!1019623) (not e!839053))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498471 (= res!1019623 (validKeyInArray!0 (select (arr!48202 a!2850) j!87)))))

(declare-fun b!1498472 () Bool)

(assert (=> b!1498472 (= e!839053 (and (= (select (arr!48202 a!2850) index!625) (select (arr!48202 a!2850) j!87)) (= j!87 index!625) (bvslt mask!2661 #b00000000000000000000000000000000)))))

(declare-fun b!1498473 () Bool)

(declare-fun res!1019619 () Bool)

(assert (=> b!1498473 (=> (not res!1019619) (not e!839053))))

(declare-datatypes ((SeekEntryResult!12431 0))(
  ( (MissingZero!12431 (index!52115 (_ BitVec 32))) (Found!12431 (index!52116 (_ BitVec 32))) (Intermediate!12431 (undefined!13243 Bool) (index!52117 (_ BitVec 32)) (x!133830 (_ BitVec 32))) (Undefined!12431) (MissingVacant!12431 (index!52118 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99894 (_ BitVec 32)) SeekEntryResult!12431)

(assert (=> b!1498473 (= res!1019619 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48202 a!2850) j!87) a!2850 mask!2661) (Found!12431 j!87)))))

(declare-fun b!1498474 () Bool)

(declare-fun res!1019618 () Bool)

(assert (=> b!1498474 (=> (not res!1019618) (not e!839053))))

(assert (=> b!1498474 (= res!1019618 (validKeyInArray!0 (select (arr!48202 a!2850) i!996)))))

(declare-fun b!1498475 () Bool)

(declare-fun res!1019620 () Bool)

(assert (=> b!1498475 (=> (not res!1019620) (not e!839053))))

(declare-datatypes ((List!34874 0))(
  ( (Nil!34871) (Cons!34870 (h!36268 (_ BitVec 64)) (t!49575 List!34874)) )
))
(declare-fun arrayNoDuplicates!0 (array!99894 (_ BitVec 32) List!34874) Bool)

(assert (=> b!1498475 (= res!1019620 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34871))))

(declare-fun b!1498476 () Bool)

(declare-fun res!1019622 () Bool)

(assert (=> b!1498476 (=> (not res!1019622) (not e!839053))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99894 (_ BitVec 32)) Bool)

(assert (=> b!1498476 (= res!1019622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498477 () Bool)

(declare-fun res!1019621 () Bool)

(assert (=> b!1498477 (=> (not res!1019621) (not e!839053))))

(assert (=> b!1498477 (= res!1019621 (and (= (size!48753 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48753 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48753 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127600 res!1019625) b!1498477))

(assert (= (and b!1498477 res!1019621) b!1498474))

(assert (= (and b!1498474 res!1019618) b!1498471))

(assert (= (and b!1498471 res!1019623) b!1498476))

(assert (= (and b!1498476 res!1019622) b!1498475))

(assert (= (and b!1498475 res!1019620) b!1498470))

(assert (= (and b!1498470 res!1019624) b!1498473))

(assert (= (and b!1498473 res!1019619) b!1498472))

(declare-fun m!1381641 () Bool)

(assert (=> b!1498474 m!1381641))

(assert (=> b!1498474 m!1381641))

(declare-fun m!1381643 () Bool)

(assert (=> b!1498474 m!1381643))

(declare-fun m!1381645 () Bool)

(assert (=> b!1498470 m!1381645))

(declare-fun m!1381647 () Bool)

(assert (=> b!1498470 m!1381647))

(declare-fun m!1381649 () Bool)

(assert (=> b!1498470 m!1381649))

(declare-fun m!1381651 () Bool)

(assert (=> b!1498471 m!1381651))

(assert (=> b!1498471 m!1381651))

(declare-fun m!1381653 () Bool)

(assert (=> b!1498471 m!1381653))

(declare-fun m!1381655 () Bool)

(assert (=> b!1498476 m!1381655))

(declare-fun m!1381657 () Bool)

(assert (=> b!1498475 m!1381657))

(assert (=> b!1498473 m!1381651))

(assert (=> b!1498473 m!1381651))

(declare-fun m!1381659 () Bool)

(assert (=> b!1498473 m!1381659))

(declare-fun m!1381661 () Bool)

(assert (=> b!1498472 m!1381661))

(assert (=> b!1498472 m!1381651))

(declare-fun m!1381663 () Bool)

(assert (=> start!127600 m!1381663))

(declare-fun m!1381665 () Bool)

(assert (=> start!127600 m!1381665))

(push 1)

(assert (not b!1498476))

(assert (not b!1498474))

(assert (not b!1498475))

(assert (not b!1498473))

(assert (not start!127600))

(assert (not b!1498471))

(check-sat)

