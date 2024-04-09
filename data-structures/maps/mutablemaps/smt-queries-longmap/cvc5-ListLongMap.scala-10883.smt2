; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127606 () Bool)

(assert start!127606)

(declare-fun b!1498540 () Bool)

(declare-fun res!1019690 () Bool)

(declare-fun e!839072 () Bool)

(assert (=> b!1498540 (=> (not res!1019690) (not e!839072))))

(declare-datatypes ((array!99900 0))(
  ( (array!99901 (arr!48205 (Array (_ BitVec 32) (_ BitVec 64))) (size!48756 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99900)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99900 (_ BitVec 32)) Bool)

(assert (=> b!1498540 (= res!1019690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498541 () Bool)

(declare-fun res!1019694 () Bool)

(assert (=> b!1498541 (=> (not res!1019694) (not e!839072))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498541 (= res!1019694 (validKeyInArray!0 (select (arr!48205 a!2850) i!996)))))

(declare-fun b!1498542 () Bool)

(declare-fun res!1019691 () Bool)

(assert (=> b!1498542 (=> (not res!1019691) (not e!839072))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498542 (= res!1019691 (and (= (size!48756 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48756 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48756 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498544 () Bool)

(declare-fun res!1019693 () Bool)

(assert (=> b!1498544 (=> (not res!1019693) (not e!839072))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1498544 (= res!1019693 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48756 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48756 a!2850)) (= (select (arr!48205 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48205 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48756 a!2850))))))

(declare-fun b!1498545 () Bool)

(assert (=> b!1498545 (= e!839072 false)))

(declare-datatypes ((SeekEntryResult!12434 0))(
  ( (MissingZero!12434 (index!52127 (_ BitVec 32))) (Found!12434 (index!52128 (_ BitVec 32))) (Intermediate!12434 (undefined!13246 Bool) (index!52129 (_ BitVec 32)) (x!133841 (_ BitVec 32))) (Undefined!12434) (MissingVacant!12434 (index!52130 (_ BitVec 32))) )
))
(declare-fun lt!652618 () SeekEntryResult!12434)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99900 (_ BitVec 32)) SeekEntryResult!12434)

(assert (=> b!1498545 (= lt!652618 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48205 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1498546 () Bool)

(declare-fun res!1019689 () Bool)

(assert (=> b!1498546 (=> (not res!1019689) (not e!839072))))

(declare-datatypes ((List!34877 0))(
  ( (Nil!34874) (Cons!34873 (h!36271 (_ BitVec 64)) (t!49578 List!34877)) )
))
(declare-fun arrayNoDuplicates!0 (array!99900 (_ BitVec 32) List!34877) Bool)

(assert (=> b!1498546 (= res!1019689 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34874))))

(declare-fun res!1019688 () Bool)

(assert (=> start!127606 (=> (not res!1019688) (not e!839072))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127606 (= res!1019688 (validMask!0 mask!2661))))

(assert (=> start!127606 e!839072))

(assert (=> start!127606 true))

(declare-fun array_inv!37150 (array!99900) Bool)

(assert (=> start!127606 (array_inv!37150 a!2850)))

(declare-fun b!1498543 () Bool)

(declare-fun res!1019692 () Bool)

(assert (=> b!1498543 (=> (not res!1019692) (not e!839072))))

(assert (=> b!1498543 (= res!1019692 (validKeyInArray!0 (select (arr!48205 a!2850) j!87)))))

(assert (= (and start!127606 res!1019688) b!1498542))

(assert (= (and b!1498542 res!1019691) b!1498541))

(assert (= (and b!1498541 res!1019694) b!1498543))

(assert (= (and b!1498543 res!1019692) b!1498540))

(assert (= (and b!1498540 res!1019690) b!1498546))

(assert (= (and b!1498546 res!1019689) b!1498544))

(assert (= (and b!1498544 res!1019693) b!1498545))

(declare-fun m!1381719 () Bool)

(assert (=> b!1498545 m!1381719))

(assert (=> b!1498545 m!1381719))

(declare-fun m!1381721 () Bool)

(assert (=> b!1498545 m!1381721))

(declare-fun m!1381723 () Bool)

(assert (=> start!127606 m!1381723))

(declare-fun m!1381725 () Bool)

(assert (=> start!127606 m!1381725))

(declare-fun m!1381727 () Bool)

(assert (=> b!1498540 m!1381727))

(declare-fun m!1381729 () Bool)

(assert (=> b!1498541 m!1381729))

(assert (=> b!1498541 m!1381729))

(declare-fun m!1381731 () Bool)

(assert (=> b!1498541 m!1381731))

(declare-fun m!1381733 () Bool)

(assert (=> b!1498546 m!1381733))

(assert (=> b!1498543 m!1381719))

(assert (=> b!1498543 m!1381719))

(declare-fun m!1381735 () Bool)

(assert (=> b!1498543 m!1381735))

(declare-fun m!1381737 () Bool)

(assert (=> b!1498544 m!1381737))

(declare-fun m!1381739 () Bool)

(assert (=> b!1498544 m!1381739))

(declare-fun m!1381741 () Bool)

(assert (=> b!1498544 m!1381741))

(push 1)

(assert (not b!1498545))

(assert (not b!1498541))

(assert (not b!1498546))

(assert (not start!127606))

(assert (not b!1498540))

(assert (not b!1498543))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

