; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120090 () Bool)

(assert start!120090)

(declare-fun b!1397549 () Bool)

(declare-fun e!791221 () Bool)

(assert (=> b!1397549 (= e!791221 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95537 0))(
  ( (array!95538 (arr!46118 (Array (_ BitVec 32) (_ BitVec 64))) (size!46669 (_ BitVec 32))) )
))
(declare-fun lt!614296 () array!95537)

(declare-fun lt!614293 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10457 0))(
  ( (MissingZero!10457 (index!44198 (_ BitVec 32))) (Found!10457 (index!44199 (_ BitVec 32))) (Intermediate!10457 (undefined!11269 Bool) (index!44200 (_ BitVec 32)) (x!125858 (_ BitVec 32))) (Undefined!10457) (MissingVacant!10457 (index!44201 (_ BitVec 32))) )
))
(declare-fun lt!614295 () SeekEntryResult!10457)

(declare-fun lt!614298 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95537 (_ BitVec 32)) SeekEntryResult!10457)

(assert (=> b!1397549 (= lt!614295 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614293 lt!614298 lt!614296 mask!2840))))

(declare-fun b!1397550 () Bool)

(declare-fun res!936579 () Bool)

(declare-fun e!791224 () Bool)

(assert (=> b!1397550 (=> (not res!936579) (not e!791224))))

(declare-fun a!2901 () array!95537)

(declare-datatypes ((List!32817 0))(
  ( (Nil!32814) (Cons!32813 (h!34055 (_ BitVec 64)) (t!47518 List!32817)) )
))
(declare-fun arrayNoDuplicates!0 (array!95537 (_ BitVec 32) List!32817) Bool)

(assert (=> b!1397550 (= res!936579 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32814))))

(declare-fun b!1397552 () Bool)

(declare-fun e!791225 () Bool)

(assert (=> b!1397552 (= e!791224 (not e!791225))))

(declare-fun res!936574 () Bool)

(assert (=> b!1397552 (=> res!936574 e!791225)))

(declare-fun lt!614299 () SeekEntryResult!10457)

(get-info :version)

(assert (=> b!1397552 (= res!936574 (or (not ((_ is Intermediate!10457) lt!614299)) (undefined!11269 lt!614299)))))

(declare-fun e!791222 () Bool)

(assert (=> b!1397552 e!791222))

(declare-fun res!936576 () Bool)

(assert (=> b!1397552 (=> (not res!936576) (not e!791222))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95537 (_ BitVec 32)) Bool)

(assert (=> b!1397552 (= res!936576 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46868 0))(
  ( (Unit!46869) )
))
(declare-fun lt!614297 () Unit!46868)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95537 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46868)

(assert (=> b!1397552 (= lt!614297 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397552 (= lt!614299 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614293 (select (arr!46118 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397552 (= lt!614293 (toIndex!0 (select (arr!46118 a!2901) j!112) mask!2840))))

(declare-fun b!1397553 () Bool)

(declare-fun res!936571 () Bool)

(assert (=> b!1397553 (=> (not res!936571) (not e!791224))))

(assert (=> b!1397553 (= res!936571 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397554 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95537 (_ BitVec 32)) SeekEntryResult!10457)

(assert (=> b!1397554 (= e!791222 (= (seekEntryOrOpen!0 (select (arr!46118 a!2901) j!112) a!2901 mask!2840) (Found!10457 j!112)))))

(declare-fun b!1397555 () Bool)

(declare-fun res!936572 () Bool)

(assert (=> b!1397555 (=> (not res!936572) (not e!791224))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397555 (= res!936572 (and (= (size!46669 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46669 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46669 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397556 () Bool)

(declare-fun res!936578 () Bool)

(assert (=> b!1397556 (=> (not res!936578) (not e!791224))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397556 (= res!936578 (validKeyInArray!0 (select (arr!46118 a!2901) i!1037)))))

(declare-fun b!1397557 () Bool)

(assert (=> b!1397557 (= e!791225 e!791221)))

(declare-fun res!936573 () Bool)

(assert (=> b!1397557 (=> res!936573 e!791221)))

(declare-fun lt!614294 () SeekEntryResult!10457)

(assert (=> b!1397557 (= res!936573 (or (= lt!614299 lt!614294) (not ((_ is Intermediate!10457) lt!614294)) (bvslt (x!125858 lt!614299) #b00000000000000000000000000000000) (bvsgt (x!125858 lt!614299) #b01111111111111111111111111111110) (bvslt lt!614293 #b00000000000000000000000000000000) (bvsge lt!614293 (size!46669 a!2901)) (bvslt (index!44200 lt!614299) #b00000000000000000000000000000000) (bvsge (index!44200 lt!614299) (size!46669 a!2901)) (not (= lt!614299 (Intermediate!10457 false (index!44200 lt!614299) (x!125858 lt!614299)))) (not (= lt!614294 (Intermediate!10457 (undefined!11269 lt!614294) (index!44200 lt!614294) (x!125858 lt!614294))))))))

(assert (=> b!1397557 (= lt!614294 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614298 mask!2840) lt!614298 lt!614296 mask!2840))))

(assert (=> b!1397557 (= lt!614298 (select (store (arr!46118 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397557 (= lt!614296 (array!95538 (store (arr!46118 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46669 a!2901)))))

(declare-fun res!936575 () Bool)

(assert (=> start!120090 (=> (not res!936575) (not e!791224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120090 (= res!936575 (validMask!0 mask!2840))))

(assert (=> start!120090 e!791224))

(assert (=> start!120090 true))

(declare-fun array_inv!35063 (array!95537) Bool)

(assert (=> start!120090 (array_inv!35063 a!2901)))

(declare-fun b!1397551 () Bool)

(declare-fun res!936577 () Bool)

(assert (=> b!1397551 (=> (not res!936577) (not e!791224))))

(assert (=> b!1397551 (= res!936577 (validKeyInArray!0 (select (arr!46118 a!2901) j!112)))))

(assert (= (and start!120090 res!936575) b!1397555))

(assert (= (and b!1397555 res!936572) b!1397556))

(assert (= (and b!1397556 res!936578) b!1397551))

(assert (= (and b!1397551 res!936577) b!1397553))

(assert (= (and b!1397553 res!936571) b!1397550))

(assert (= (and b!1397550 res!936579) b!1397552))

(assert (= (and b!1397552 res!936576) b!1397554))

(assert (= (and b!1397552 (not res!936574)) b!1397557))

(assert (= (and b!1397557 (not res!936573)) b!1397549))

(declare-fun m!1284443 () Bool)

(assert (=> b!1397550 m!1284443))

(declare-fun m!1284445 () Bool)

(assert (=> start!120090 m!1284445))

(declare-fun m!1284447 () Bool)

(assert (=> start!120090 m!1284447))

(declare-fun m!1284449 () Bool)

(assert (=> b!1397551 m!1284449))

(assert (=> b!1397551 m!1284449))

(declare-fun m!1284451 () Bool)

(assert (=> b!1397551 m!1284451))

(assert (=> b!1397552 m!1284449))

(declare-fun m!1284453 () Bool)

(assert (=> b!1397552 m!1284453))

(assert (=> b!1397552 m!1284449))

(declare-fun m!1284455 () Bool)

(assert (=> b!1397552 m!1284455))

(assert (=> b!1397552 m!1284449))

(declare-fun m!1284457 () Bool)

(assert (=> b!1397552 m!1284457))

(declare-fun m!1284459 () Bool)

(assert (=> b!1397552 m!1284459))

(declare-fun m!1284461 () Bool)

(assert (=> b!1397556 m!1284461))

(assert (=> b!1397556 m!1284461))

(declare-fun m!1284463 () Bool)

(assert (=> b!1397556 m!1284463))

(declare-fun m!1284465 () Bool)

(assert (=> b!1397553 m!1284465))

(declare-fun m!1284467 () Bool)

(assert (=> b!1397549 m!1284467))

(assert (=> b!1397554 m!1284449))

(assert (=> b!1397554 m!1284449))

(declare-fun m!1284469 () Bool)

(assert (=> b!1397554 m!1284469))

(declare-fun m!1284471 () Bool)

(assert (=> b!1397557 m!1284471))

(assert (=> b!1397557 m!1284471))

(declare-fun m!1284473 () Bool)

(assert (=> b!1397557 m!1284473))

(declare-fun m!1284475 () Bool)

(assert (=> b!1397557 m!1284475))

(declare-fun m!1284477 () Bool)

(assert (=> b!1397557 m!1284477))

(check-sat (not b!1397556) (not b!1397552) (not b!1397557) (not b!1397550) (not b!1397554) (not b!1397549) (not b!1397551) (not start!120090) (not b!1397553))
(check-sat)
