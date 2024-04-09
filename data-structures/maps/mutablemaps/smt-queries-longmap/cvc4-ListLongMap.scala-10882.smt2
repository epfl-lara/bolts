; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127604 () Bool)

(assert start!127604)

(declare-fun res!1019671 () Bool)

(declare-fun e!839065 () Bool)

(assert (=> start!127604 (=> (not res!1019671) (not e!839065))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127604 (= res!1019671 (validMask!0 mask!2661))))

(assert (=> start!127604 e!839065))

(assert (=> start!127604 true))

(declare-datatypes ((array!99898 0))(
  ( (array!99899 (arr!48204 (Array (_ BitVec 32) (_ BitVec 64))) (size!48755 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99898)

(declare-fun array_inv!37149 (array!99898) Bool)

(assert (=> start!127604 (array_inv!37149 a!2850)))

(declare-fun b!1498518 () Bool)

(declare-fun res!1019670 () Bool)

(assert (=> b!1498518 (=> (not res!1019670) (not e!839065))))

(declare-datatypes ((List!34876 0))(
  ( (Nil!34873) (Cons!34872 (h!36270 (_ BitVec 64)) (t!49577 List!34876)) )
))
(declare-fun arrayNoDuplicates!0 (array!99898 (_ BitVec 32) List!34876) Bool)

(assert (=> b!1498518 (= res!1019670 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34873))))

(declare-fun b!1498519 () Bool)

(declare-fun res!1019668 () Bool)

(assert (=> b!1498519 (=> (not res!1019668) (not e!839065))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498519 (= res!1019668 (and (= (size!48755 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48755 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48755 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498520 () Bool)

(declare-fun res!1019667 () Bool)

(assert (=> b!1498520 (=> (not res!1019667) (not e!839065))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12433 0))(
  ( (MissingZero!12433 (index!52123 (_ BitVec 32))) (Found!12433 (index!52124 (_ BitVec 32))) (Intermediate!12433 (undefined!13245 Bool) (index!52125 (_ BitVec 32)) (x!133832 (_ BitVec 32))) (Undefined!12433) (MissingVacant!12433 (index!52126 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99898 (_ BitVec 32)) SeekEntryResult!12433)

(assert (=> b!1498520 (= res!1019667 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48204 a!2850) j!87) a!2850 mask!2661) (Found!12433 j!87)))))

(declare-fun b!1498521 () Bool)

(declare-fun res!1019666 () Bool)

(assert (=> b!1498521 (=> (not res!1019666) (not e!839065))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498521 (= res!1019666 (validKeyInArray!0 (select (arr!48204 a!2850) i!996)))))

(declare-fun b!1498522 () Bool)

(declare-fun res!1019669 () Bool)

(assert (=> b!1498522 (=> (not res!1019669) (not e!839065))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498522 (= res!1019669 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48755 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48755 a!2850)) (= (select (arr!48204 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48204 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48755 a!2850))))))

(declare-fun b!1498523 () Bool)

(assert (=> b!1498523 (= e!839065 (and (= (select (arr!48204 a!2850) index!625) (select (arr!48204 a!2850) j!87)) (= j!87 index!625) (bvslt mask!2661 #b00000000000000000000000000000000)))))

(declare-fun b!1498524 () Bool)

(declare-fun res!1019672 () Bool)

(assert (=> b!1498524 (=> (not res!1019672) (not e!839065))))

(assert (=> b!1498524 (= res!1019672 (validKeyInArray!0 (select (arr!48204 a!2850) j!87)))))

(declare-fun b!1498525 () Bool)

(declare-fun res!1019673 () Bool)

(assert (=> b!1498525 (=> (not res!1019673) (not e!839065))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99898 (_ BitVec 32)) Bool)

(assert (=> b!1498525 (= res!1019673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127604 res!1019671) b!1498519))

(assert (= (and b!1498519 res!1019668) b!1498521))

(assert (= (and b!1498521 res!1019666) b!1498524))

(assert (= (and b!1498524 res!1019672) b!1498525))

(assert (= (and b!1498525 res!1019673) b!1498518))

(assert (= (and b!1498518 res!1019670) b!1498522))

(assert (= (and b!1498522 res!1019669) b!1498520))

(assert (= (and b!1498520 res!1019667) b!1498523))

(declare-fun m!1381693 () Bool)

(assert (=> b!1498524 m!1381693))

(assert (=> b!1498524 m!1381693))

(declare-fun m!1381695 () Bool)

(assert (=> b!1498524 m!1381695))

(declare-fun m!1381697 () Bool)

(assert (=> b!1498523 m!1381697))

(assert (=> b!1498523 m!1381693))

(declare-fun m!1381699 () Bool)

(assert (=> b!1498518 m!1381699))

(assert (=> b!1498520 m!1381693))

(assert (=> b!1498520 m!1381693))

(declare-fun m!1381701 () Bool)

(assert (=> b!1498520 m!1381701))

(declare-fun m!1381703 () Bool)

(assert (=> b!1498525 m!1381703))

(declare-fun m!1381705 () Bool)

(assert (=> b!1498521 m!1381705))

(assert (=> b!1498521 m!1381705))

(declare-fun m!1381707 () Bool)

(assert (=> b!1498521 m!1381707))

(declare-fun m!1381709 () Bool)

(assert (=> start!127604 m!1381709))

(declare-fun m!1381711 () Bool)

(assert (=> start!127604 m!1381711))

(declare-fun m!1381713 () Bool)

(assert (=> b!1498522 m!1381713))

(declare-fun m!1381715 () Bool)

(assert (=> b!1498522 m!1381715))

(declare-fun m!1381717 () Bool)

(assert (=> b!1498522 m!1381717))

(push 1)

(assert (not b!1498521))

(assert (not b!1498524))

(assert (not b!1498520))

(assert (not b!1498525))

(assert (not b!1498518))

(assert (not start!127604))

(check-sat)

(pop 1)

(push 1)

(check-sat)

