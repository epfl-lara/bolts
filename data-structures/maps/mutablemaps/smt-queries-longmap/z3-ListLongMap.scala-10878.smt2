; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127578 () Bool)

(assert start!127578)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!99872 0))(
  ( (array!99873 (arr!48191 (Array (_ BitVec 32) (_ BitVec 64))) (size!48742 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99872)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun b!1498277 () Bool)

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun e!838988 () Bool)

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1498277 (= e!838988 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48742 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48742 a!2850)) (= (select (arr!48191 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48191 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48742 a!2850)) (bvsge mask!2661 #b00000000000000000000000000000000) (bvslt index!625 (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge vacantBefore!10 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(declare-fun b!1498278 () Bool)

(declare-fun res!1019425 () Bool)

(assert (=> b!1498278 (=> (not res!1019425) (not e!838988))))

(declare-datatypes ((List!34863 0))(
  ( (Nil!34860) (Cons!34859 (h!36257 (_ BitVec 64)) (t!49564 List!34863)) )
))
(declare-fun arrayNoDuplicates!0 (array!99872 (_ BitVec 32) List!34863) Bool)

(assert (=> b!1498278 (= res!1019425 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34860))))

(declare-fun b!1498279 () Bool)

(declare-fun res!1019429 () Bool)

(assert (=> b!1498279 (=> (not res!1019429) (not e!838988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498279 (= res!1019429 (validKeyInArray!0 (select (arr!48191 a!2850) i!996)))))

(declare-fun b!1498280 () Bool)

(declare-fun res!1019430 () Bool)

(assert (=> b!1498280 (=> (not res!1019430) (not e!838988))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498280 (= res!1019430 (validKeyInArray!0 (select (arr!48191 a!2850) j!87)))))

(declare-fun b!1498281 () Bool)

(declare-fun res!1019427 () Bool)

(assert (=> b!1498281 (=> (not res!1019427) (not e!838988))))

(assert (=> b!1498281 (= res!1019427 (and (= (size!48742 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48742 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48742 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498282 () Bool)

(declare-fun res!1019428 () Bool)

(assert (=> b!1498282 (=> (not res!1019428) (not e!838988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99872 (_ BitVec 32)) Bool)

(assert (=> b!1498282 (= res!1019428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1019426 () Bool)

(assert (=> start!127578 (=> (not res!1019426) (not e!838988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127578 (= res!1019426 (validMask!0 mask!2661))))

(assert (=> start!127578 e!838988))

(assert (=> start!127578 true))

(declare-fun array_inv!37136 (array!99872) Bool)

(assert (=> start!127578 (array_inv!37136 a!2850)))

(assert (= (and start!127578 res!1019426) b!1498281))

(assert (= (and b!1498281 res!1019427) b!1498279))

(assert (= (and b!1498279 res!1019429) b!1498280))

(assert (= (and b!1498280 res!1019430) b!1498282))

(assert (= (and b!1498282 res!1019428) b!1498278))

(assert (= (and b!1498278 res!1019425) b!1498277))

(declare-fun m!1381429 () Bool)

(assert (=> b!1498280 m!1381429))

(assert (=> b!1498280 m!1381429))

(declare-fun m!1381431 () Bool)

(assert (=> b!1498280 m!1381431))

(declare-fun m!1381433 () Bool)

(assert (=> b!1498279 m!1381433))

(assert (=> b!1498279 m!1381433))

(declare-fun m!1381435 () Bool)

(assert (=> b!1498279 m!1381435))

(declare-fun m!1381437 () Bool)

(assert (=> b!1498277 m!1381437))

(declare-fun m!1381439 () Bool)

(assert (=> b!1498277 m!1381439))

(declare-fun m!1381441 () Bool)

(assert (=> b!1498277 m!1381441))

(declare-fun m!1381443 () Bool)

(assert (=> start!127578 m!1381443))

(declare-fun m!1381445 () Bool)

(assert (=> start!127578 m!1381445))

(declare-fun m!1381447 () Bool)

(assert (=> b!1498278 m!1381447))

(declare-fun m!1381449 () Bool)

(assert (=> b!1498282 m!1381449))

(check-sat (not b!1498282) (not start!127578) (not b!1498278) (not b!1498280) (not b!1498279))
(check-sat)
