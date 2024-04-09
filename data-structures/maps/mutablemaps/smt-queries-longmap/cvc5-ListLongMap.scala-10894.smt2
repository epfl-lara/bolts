; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127672 () Bool)

(assert start!127672)

(declare-fun res!1020474 () Bool)

(declare-fun e!839281 () Bool)

(assert (=> start!127672 (=> (not res!1020474) (not e!839281))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127672 (= res!1020474 (validMask!0 mask!2661))))

(assert (=> start!127672 e!839281))

(assert (=> start!127672 true))

(declare-datatypes ((array!99966 0))(
  ( (array!99967 (arr!48238 (Array (_ BitVec 32) (_ BitVec 64))) (size!48789 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99966)

(declare-fun array_inv!37183 (array!99966) Bool)

(assert (=> start!127672 (array_inv!37183 a!2850)))

(declare-fun b!1499320 () Bool)

(declare-fun res!1020472 () Bool)

(assert (=> b!1499320 (=> (not res!1020472) (not e!839281))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499320 (= res!1020472 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48789 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48789 a!2850)) (= (select (arr!48238 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48238 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48789 a!2850))))))

(declare-fun b!1499321 () Bool)

(declare-fun res!1020477 () Bool)

(assert (=> b!1499321 (=> (not res!1020477) (not e!839281))))

(declare-datatypes ((List!34910 0))(
  ( (Nil!34907) (Cons!34906 (h!36304 (_ BitVec 64)) (t!49611 List!34910)) )
))
(declare-fun arrayNoDuplicates!0 (array!99966 (_ BitVec 32) List!34910) Bool)

(assert (=> b!1499321 (= res!1020477 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34907))))

(declare-fun b!1499322 () Bool)

(declare-fun e!839280 () Bool)

(assert (=> b!1499322 (= e!839280 false)))

(declare-datatypes ((SeekEntryResult!12467 0))(
  ( (MissingZero!12467 (index!52259 (_ BitVec 32))) (Found!12467 (index!52260 (_ BitVec 32))) (Intermediate!12467 (undefined!13279 Bool) (index!52261 (_ BitVec 32)) (x!133962 (_ BitVec 32))) (Undefined!12467) (MissingVacant!12467 (index!52262 (_ BitVec 32))) )
))
(declare-fun lt!652684 () SeekEntryResult!12467)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun lt!652683 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99966 (_ BitVec 32)) SeekEntryResult!12467)

(assert (=> b!1499322 (= lt!652684 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652683 vacantBefore!10 (select (arr!48238 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499323 () Bool)

(declare-fun res!1020473 () Bool)

(assert (=> b!1499323 (=> (not res!1020473) (not e!839281))))

(assert (=> b!1499323 (= res!1020473 (not (= (select (arr!48238 a!2850) index!625) (select (arr!48238 a!2850) j!87))))))

(declare-fun b!1499324 () Bool)

(declare-fun res!1020468 () Bool)

(assert (=> b!1499324 (=> (not res!1020468) (not e!839281))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499324 (= res!1020468 (validKeyInArray!0 (select (arr!48238 a!2850) j!87)))))

(declare-fun b!1499325 () Bool)

(assert (=> b!1499325 (= e!839281 e!839280)))

(declare-fun res!1020476 () Bool)

(assert (=> b!1499325 (=> (not res!1020476) (not e!839280))))

(assert (=> b!1499325 (= res!1020476 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652683 #b00000000000000000000000000000000) (bvslt lt!652683 (size!48789 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499325 (= lt!652683 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499326 () Bool)

(declare-fun res!1020475 () Bool)

(assert (=> b!1499326 (=> (not res!1020475) (not e!839281))))

(assert (=> b!1499326 (= res!1020475 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48238 a!2850) j!87) a!2850 mask!2661) (Found!12467 j!87)))))

(declare-fun b!1499327 () Bool)

(declare-fun res!1020471 () Bool)

(assert (=> b!1499327 (=> (not res!1020471) (not e!839281))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99966 (_ BitVec 32)) Bool)

(assert (=> b!1499327 (= res!1020471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499328 () Bool)

(declare-fun res!1020470 () Bool)

(assert (=> b!1499328 (=> (not res!1020470) (not e!839281))))

(assert (=> b!1499328 (= res!1020470 (and (= (size!48789 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48789 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48789 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499329 () Bool)

(declare-fun res!1020469 () Bool)

(assert (=> b!1499329 (=> (not res!1020469) (not e!839281))))

(assert (=> b!1499329 (= res!1020469 (validKeyInArray!0 (select (arr!48238 a!2850) i!996)))))

(assert (= (and start!127672 res!1020474) b!1499328))

(assert (= (and b!1499328 res!1020470) b!1499329))

(assert (= (and b!1499329 res!1020469) b!1499324))

(assert (= (and b!1499324 res!1020468) b!1499327))

(assert (= (and b!1499327 res!1020471) b!1499321))

(assert (= (and b!1499321 res!1020477) b!1499320))

(assert (= (and b!1499320 res!1020472) b!1499326))

(assert (= (and b!1499326 res!1020475) b!1499323))

(assert (= (and b!1499323 res!1020473) b!1499325))

(assert (= (and b!1499325 res!1020476) b!1499322))

(declare-fun m!1382571 () Bool)

(assert (=> b!1499321 m!1382571))

(declare-fun m!1382573 () Bool)

(assert (=> b!1499323 m!1382573))

(declare-fun m!1382575 () Bool)

(assert (=> b!1499323 m!1382575))

(assert (=> b!1499326 m!1382575))

(assert (=> b!1499326 m!1382575))

(declare-fun m!1382577 () Bool)

(assert (=> b!1499326 m!1382577))

(assert (=> b!1499324 m!1382575))

(assert (=> b!1499324 m!1382575))

(declare-fun m!1382579 () Bool)

(assert (=> b!1499324 m!1382579))

(declare-fun m!1382581 () Bool)

(assert (=> b!1499325 m!1382581))

(declare-fun m!1382583 () Bool)

(assert (=> b!1499329 m!1382583))

(assert (=> b!1499329 m!1382583))

(declare-fun m!1382585 () Bool)

(assert (=> b!1499329 m!1382585))

(declare-fun m!1382587 () Bool)

(assert (=> start!127672 m!1382587))

(declare-fun m!1382589 () Bool)

(assert (=> start!127672 m!1382589))

(assert (=> b!1499322 m!1382575))

(assert (=> b!1499322 m!1382575))

(declare-fun m!1382591 () Bool)

(assert (=> b!1499322 m!1382591))

(declare-fun m!1382593 () Bool)

(assert (=> b!1499320 m!1382593))

(declare-fun m!1382595 () Bool)

(assert (=> b!1499320 m!1382595))

(declare-fun m!1382597 () Bool)

(assert (=> b!1499320 m!1382597))

(declare-fun m!1382599 () Bool)

(assert (=> b!1499327 m!1382599))

(push 1)

