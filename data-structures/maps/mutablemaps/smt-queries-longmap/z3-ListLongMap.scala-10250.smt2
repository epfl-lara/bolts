; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120594 () Bool)

(assert start!120594)

(declare-fun b!1403656 () Bool)

(declare-fun res!942276 () Bool)

(declare-fun e!794761 () Bool)

(assert (=> b!1403656 (=> (not res!942276) (not e!794761))))

(declare-datatypes ((array!95921 0))(
  ( (array!95922 (arr!46307 (Array (_ BitVec 32) (_ BitVec 64))) (size!46858 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95921)

(declare-datatypes ((List!33006 0))(
  ( (Nil!33003) (Cons!33002 (h!34250 (_ BitVec 64)) (t!47707 List!33006)) )
))
(declare-fun arrayNoDuplicates!0 (array!95921 (_ BitVec 32) List!33006) Bool)

(assert (=> b!1403656 (= res!942276 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33003))))

(declare-fun b!1403657 () Bool)

(declare-fun res!942279 () Bool)

(assert (=> b!1403657 (=> (not res!942279) (not e!794761))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95921 (_ BitVec 32)) Bool)

(assert (=> b!1403657 (= res!942279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403658 () Bool)

(declare-fun res!942281 () Bool)

(assert (=> b!1403658 (=> (not res!942281) (not e!794761))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1403658 (= res!942281 (and (= (size!46858 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46858 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46858 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!942282 () Bool)

(assert (=> start!120594 (=> (not res!942282) (not e!794761))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120594 (= res!942282 (validMask!0 mask!2840))))

(assert (=> start!120594 e!794761))

(assert (=> start!120594 true))

(declare-fun array_inv!35252 (array!95921) Bool)

(assert (=> start!120594 (array_inv!35252 a!2901)))

(declare-fun b!1403659 () Bool)

(declare-fun res!942280 () Bool)

(assert (=> b!1403659 (=> (not res!942280) (not e!794761))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403659 (= res!942280 (validKeyInArray!0 (select (arr!46307 a!2901) j!112)))))

(declare-fun b!1403660 () Bool)

(assert (=> b!1403660 (= e!794761 (not true))))

(declare-fun e!794762 () Bool)

(assert (=> b!1403660 e!794762))

(declare-fun res!942277 () Bool)

(assert (=> b!1403660 (=> (not res!942277) (not e!794762))))

(assert (=> b!1403660 (= res!942277 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47246 0))(
  ( (Unit!47247) )
))
(declare-fun lt!618432 () Unit!47246)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95921 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47246)

(assert (=> b!1403660 (= lt!618432 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10646 0))(
  ( (MissingZero!10646 (index!44960 (_ BitVec 32))) (Found!10646 (index!44961 (_ BitVec 32))) (Intermediate!10646 (undefined!11458 Bool) (index!44962 (_ BitVec 32)) (x!126572 (_ BitVec 32))) (Undefined!10646) (MissingVacant!10646 (index!44963 (_ BitVec 32))) )
))
(declare-fun lt!618433 () SeekEntryResult!10646)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95921 (_ BitVec 32)) SeekEntryResult!10646)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403660 (= lt!618433 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46307 a!2901) j!112) mask!2840) (select (arr!46307 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403661 () Bool)

(declare-fun res!942278 () Bool)

(assert (=> b!1403661 (=> (not res!942278) (not e!794761))))

(assert (=> b!1403661 (= res!942278 (validKeyInArray!0 (select (arr!46307 a!2901) i!1037)))))

(declare-fun b!1403662 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95921 (_ BitVec 32)) SeekEntryResult!10646)

(assert (=> b!1403662 (= e!794762 (= (seekEntryOrOpen!0 (select (arr!46307 a!2901) j!112) a!2901 mask!2840) (Found!10646 j!112)))))

(assert (= (and start!120594 res!942282) b!1403658))

(assert (= (and b!1403658 res!942281) b!1403661))

(assert (= (and b!1403661 res!942278) b!1403659))

(assert (= (and b!1403659 res!942280) b!1403657))

(assert (= (and b!1403657 res!942279) b!1403656))

(assert (= (and b!1403656 res!942276) b!1403660))

(assert (= (and b!1403660 res!942277) b!1403662))

(declare-fun m!1292443 () Bool)

(assert (=> b!1403660 m!1292443))

(declare-fun m!1292445 () Bool)

(assert (=> b!1403660 m!1292445))

(assert (=> b!1403660 m!1292443))

(declare-fun m!1292447 () Bool)

(assert (=> b!1403660 m!1292447))

(assert (=> b!1403660 m!1292445))

(assert (=> b!1403660 m!1292443))

(declare-fun m!1292449 () Bool)

(assert (=> b!1403660 m!1292449))

(declare-fun m!1292451 () Bool)

(assert (=> b!1403660 m!1292451))

(declare-fun m!1292453 () Bool)

(assert (=> b!1403661 m!1292453))

(assert (=> b!1403661 m!1292453))

(declare-fun m!1292455 () Bool)

(assert (=> b!1403661 m!1292455))

(declare-fun m!1292457 () Bool)

(assert (=> start!120594 m!1292457))

(declare-fun m!1292459 () Bool)

(assert (=> start!120594 m!1292459))

(assert (=> b!1403659 m!1292443))

(assert (=> b!1403659 m!1292443))

(declare-fun m!1292461 () Bool)

(assert (=> b!1403659 m!1292461))

(declare-fun m!1292463 () Bool)

(assert (=> b!1403657 m!1292463))

(assert (=> b!1403662 m!1292443))

(assert (=> b!1403662 m!1292443))

(declare-fun m!1292465 () Bool)

(assert (=> b!1403662 m!1292465))

(declare-fun m!1292467 () Bool)

(assert (=> b!1403656 m!1292467))

(check-sat (not start!120594) (not b!1403661) (not b!1403657) (not b!1403656) (not b!1403660) (not b!1403659) (not b!1403662))
(check-sat)
