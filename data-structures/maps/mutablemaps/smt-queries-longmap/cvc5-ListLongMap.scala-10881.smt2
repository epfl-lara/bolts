; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127594 () Bool)

(assert start!127594)

(declare-fun b!1498405 () Bool)

(declare-fun res!1019556 () Bool)

(declare-fun e!839035 () Bool)

(assert (=> b!1498405 (=> (not res!1019556) (not e!839035))))

(declare-datatypes ((array!99888 0))(
  ( (array!99889 (arr!48199 (Array (_ BitVec 32) (_ BitVec 64))) (size!48750 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99888)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498405 (= res!1019556 (validKeyInArray!0 (select (arr!48199 a!2850) j!87)))))

(declare-fun b!1498406 () Bool)

(assert (=> b!1498406 (= e!839035 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12428 0))(
  ( (MissingZero!12428 (index!52103 (_ BitVec 32))) (Found!12428 (index!52104 (_ BitVec 32))) (Intermediate!12428 (undefined!13240 Bool) (index!52105 (_ BitVec 32)) (x!133819 (_ BitVec 32))) (Undefined!12428) (MissingVacant!12428 (index!52106 (_ BitVec 32))) )
))
(declare-fun lt!652609 () SeekEntryResult!12428)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99888 (_ BitVec 32)) SeekEntryResult!12428)

(assert (=> b!1498406 (= lt!652609 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48199 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1498407 () Bool)

(declare-fun res!1019554 () Bool)

(assert (=> b!1498407 (=> (not res!1019554) (not e!839035))))

(declare-datatypes ((List!34871 0))(
  ( (Nil!34868) (Cons!34867 (h!36265 (_ BitVec 64)) (t!49572 List!34871)) )
))
(declare-fun arrayNoDuplicates!0 (array!99888 (_ BitVec 32) List!34871) Bool)

(assert (=> b!1498407 (= res!1019554 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34868))))

(declare-fun b!1498409 () Bool)

(declare-fun res!1019559 () Bool)

(assert (=> b!1498409 (=> (not res!1019559) (not e!839035))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1498409 (= res!1019559 (validKeyInArray!0 (select (arr!48199 a!2850) i!996)))))

(declare-fun b!1498410 () Bool)

(declare-fun res!1019558 () Bool)

(assert (=> b!1498410 (=> (not res!1019558) (not e!839035))))

(assert (=> b!1498410 (= res!1019558 (and (= (size!48750 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48750 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48750 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498411 () Bool)

(declare-fun res!1019557 () Bool)

(assert (=> b!1498411 (=> (not res!1019557) (not e!839035))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498411 (= res!1019557 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48750 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48750 a!2850)) (= (select (arr!48199 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48199 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48750 a!2850))))))

(declare-fun b!1498408 () Bool)

(declare-fun res!1019553 () Bool)

(assert (=> b!1498408 (=> (not res!1019553) (not e!839035))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99888 (_ BitVec 32)) Bool)

(assert (=> b!1498408 (= res!1019553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1019555 () Bool)

(assert (=> start!127594 (=> (not res!1019555) (not e!839035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127594 (= res!1019555 (validMask!0 mask!2661))))

(assert (=> start!127594 e!839035))

(assert (=> start!127594 true))

(declare-fun array_inv!37144 (array!99888) Bool)

(assert (=> start!127594 (array_inv!37144 a!2850)))

(assert (= (and start!127594 res!1019555) b!1498410))

(assert (= (and b!1498410 res!1019558) b!1498409))

(assert (= (and b!1498409 res!1019559) b!1498405))

(assert (= (and b!1498405 res!1019556) b!1498408))

(assert (= (and b!1498408 res!1019553) b!1498407))

(assert (= (and b!1498407 res!1019554) b!1498411))

(assert (= (and b!1498411 res!1019557) b!1498406))

(declare-fun m!1381569 () Bool)

(assert (=> b!1498407 m!1381569))

(declare-fun m!1381571 () Bool)

(assert (=> b!1498406 m!1381571))

(assert (=> b!1498406 m!1381571))

(declare-fun m!1381573 () Bool)

(assert (=> b!1498406 m!1381573))

(declare-fun m!1381575 () Bool)

(assert (=> b!1498409 m!1381575))

(assert (=> b!1498409 m!1381575))

(declare-fun m!1381577 () Bool)

(assert (=> b!1498409 m!1381577))

(assert (=> b!1498405 m!1381571))

(assert (=> b!1498405 m!1381571))

(declare-fun m!1381579 () Bool)

(assert (=> b!1498405 m!1381579))

(declare-fun m!1381581 () Bool)

(assert (=> b!1498411 m!1381581))

(declare-fun m!1381583 () Bool)

(assert (=> b!1498411 m!1381583))

(declare-fun m!1381585 () Bool)

(assert (=> b!1498411 m!1381585))

(declare-fun m!1381587 () Bool)

(assert (=> start!127594 m!1381587))

(declare-fun m!1381589 () Bool)

(assert (=> start!127594 m!1381589))

(declare-fun m!1381591 () Bool)

(assert (=> b!1498408 m!1381591))

(push 1)

(assert (not b!1498407))

(assert (not b!1498405))

(assert (not b!1498406))

(assert (not b!1498408))

(assert (not b!1498409))

(assert (not start!127594))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

