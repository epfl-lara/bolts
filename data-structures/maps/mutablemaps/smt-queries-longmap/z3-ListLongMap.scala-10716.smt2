; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125478 () Bool)

(assert start!125478)

(declare-fun res!996043 () Bool)

(declare-fun e!824267 () Bool)

(assert (=> start!125478 (=> (not res!996043) (not e!824267))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125478 (= res!996043 (validMask!0 mask!2687))))

(assert (=> start!125478 e!824267))

(assert (=> start!125478 true))

(declare-datatypes ((array!98843 0))(
  ( (array!98844 (arr!47705 (Array (_ BitVec 32) (_ BitVec 64))) (size!48256 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98843)

(declare-fun array_inv!36650 (array!98843) Bool)

(assert (=> start!125478 (array_inv!36650 a!2862)))

(declare-fun b!1467393 () Bool)

(declare-fun res!996042 () Bool)

(assert (=> b!1467393 (=> (not res!996042) (not e!824267))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98843 (_ BitVec 32)) Bool)

(assert (=> b!1467393 (= res!996042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467394 () Bool)

(declare-fun res!996041 () Bool)

(assert (=> b!1467394 (=> (not res!996041) (not e!824267))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467394 (= res!996041 (and (= (size!48256 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48256 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48256 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467395 () Bool)

(assert (=> b!1467395 (= e!824267 false)))

(declare-fun lt!642046 () Bool)

(declare-datatypes ((List!34386 0))(
  ( (Nil!34383) (Cons!34382 (h!35732 (_ BitVec 64)) (t!49087 List!34386)) )
))
(declare-fun arrayNoDuplicates!0 (array!98843 (_ BitVec 32) List!34386) Bool)

(assert (=> b!1467395 (= lt!642046 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34383))))

(declare-fun b!1467396 () Bool)

(declare-fun res!996045 () Bool)

(assert (=> b!1467396 (=> (not res!996045) (not e!824267))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467396 (= res!996045 (validKeyInArray!0 (select (arr!47705 a!2862) j!93)))))

(declare-fun b!1467397 () Bool)

(declare-fun res!996044 () Bool)

(assert (=> b!1467397 (=> (not res!996044) (not e!824267))))

(assert (=> b!1467397 (= res!996044 (validKeyInArray!0 (select (arr!47705 a!2862) i!1006)))))

(assert (= (and start!125478 res!996043) b!1467394))

(assert (= (and b!1467394 res!996041) b!1467397))

(assert (= (and b!1467397 res!996044) b!1467396))

(assert (= (and b!1467396 res!996045) b!1467393))

(assert (= (and b!1467393 res!996042) b!1467395))

(declare-fun m!1354393 () Bool)

(assert (=> b!1467397 m!1354393))

(assert (=> b!1467397 m!1354393))

(declare-fun m!1354395 () Bool)

(assert (=> b!1467397 m!1354395))

(declare-fun m!1354397 () Bool)

(assert (=> start!125478 m!1354397))

(declare-fun m!1354399 () Bool)

(assert (=> start!125478 m!1354399))

(declare-fun m!1354401 () Bool)

(assert (=> b!1467396 m!1354401))

(assert (=> b!1467396 m!1354401))

(declare-fun m!1354403 () Bool)

(assert (=> b!1467396 m!1354403))

(declare-fun m!1354405 () Bool)

(assert (=> b!1467393 m!1354405))

(declare-fun m!1354407 () Bool)

(assert (=> b!1467395 m!1354407))

(check-sat (not b!1467393) (not start!125478) (not b!1467397) (not b!1467395) (not b!1467396))
