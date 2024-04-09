; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128298 () Bool)

(assert start!128298)

(declare-fun b!1505454 () Bool)

(declare-fun e!841454 () Bool)

(declare-datatypes ((array!100364 0))(
  ( (array!100365 (arr!48428 (Array (_ BitVec 32) (_ BitVec 64))) (size!48979 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100364)

(assert (=> b!1505454 (= e!841454 (bvsgt #b00000000000000000000000000000000 (size!48979 a!2804)))))

(declare-fun res!1025975 () Bool)

(assert (=> start!128298 (=> (not res!1025975) (not e!841454))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128298 (= res!1025975 (validMask!0 mask!2512))))

(assert (=> start!128298 e!841454))

(assert (=> start!128298 true))

(declare-fun array_inv!37373 (array!100364) Bool)

(assert (=> start!128298 (array_inv!37373 a!2804)))

(declare-fun b!1505455 () Bool)

(declare-fun res!1025972 () Bool)

(assert (=> b!1505455 (=> (not res!1025972) (not e!841454))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505455 (= res!1025972 (validKeyInArray!0 (select (arr!48428 a!2804) j!70)))))

(declare-fun b!1505456 () Bool)

(declare-fun res!1025974 () Bool)

(assert (=> b!1505456 (=> (not res!1025974) (not e!841454))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1505456 (= res!1025974 (and (= (size!48979 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48979 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48979 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1505457 () Bool)

(declare-fun res!1025973 () Bool)

(assert (=> b!1505457 (=> (not res!1025973) (not e!841454))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100364 (_ BitVec 32)) Bool)

(assert (=> b!1505457 (= res!1025973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1505458 () Bool)

(declare-fun res!1025976 () Bool)

(assert (=> b!1505458 (=> (not res!1025976) (not e!841454))))

(assert (=> b!1505458 (= res!1025976 (validKeyInArray!0 (select (arr!48428 a!2804) i!961)))))

(assert (= (and start!128298 res!1025975) b!1505456))

(assert (= (and b!1505456 res!1025974) b!1505458))

(assert (= (and b!1505458 res!1025976) b!1505455))

(assert (= (and b!1505455 res!1025972) b!1505457))

(assert (= (and b!1505457 res!1025973) b!1505454))

(declare-fun m!1388609 () Bool)

(assert (=> start!128298 m!1388609))

(declare-fun m!1388611 () Bool)

(assert (=> start!128298 m!1388611))

(declare-fun m!1388613 () Bool)

(assert (=> b!1505455 m!1388613))

(assert (=> b!1505455 m!1388613))

(declare-fun m!1388615 () Bool)

(assert (=> b!1505455 m!1388615))

(declare-fun m!1388617 () Bool)

(assert (=> b!1505457 m!1388617))

(declare-fun m!1388619 () Bool)

(assert (=> b!1505458 m!1388619))

(assert (=> b!1505458 m!1388619))

(declare-fun m!1388621 () Bool)

(assert (=> b!1505458 m!1388621))

(check-sat (not b!1505458) (not b!1505457) (not b!1505455) (not start!128298))
(check-sat)
