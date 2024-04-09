; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122046 () Bool)

(assert start!122046)

(declare-fun b!1415995 () Bool)

(declare-fun res!952153 () Bool)

(declare-fun e!801463 () Bool)

(assert (=> b!1415995 (=> (not res!952153) (not e!801463))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96650 0))(
  ( (array!96651 (arr!46652 (Array (_ BitVec 32) (_ BitVec 64))) (size!47203 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96650)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1415995 (= res!952153 (and (= (size!47203 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47203 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47203 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415996 () Bool)

(declare-fun e!801462 () Bool)

(assert (=> b!1415996 (= e!801462 true)))

(declare-datatypes ((SeekEntryResult!10985 0))(
  ( (MissingZero!10985 (index!46331 (_ BitVec 32))) (Found!10985 (index!46332 (_ BitVec 32))) (Intermediate!10985 (undefined!11797 Bool) (index!46333 (_ BitVec 32)) (x!127939 (_ BitVec 32))) (Undefined!10985) (MissingVacant!10985 (index!46334 (_ BitVec 32))) )
))
(declare-fun lt!624578 () SeekEntryResult!10985)

(declare-fun lt!624574 () SeekEntryResult!10985)

(assert (=> b!1415996 (= lt!624578 lt!624574)))

(declare-fun lt!624579 () (_ BitVec 32))

(declare-datatypes ((Unit!47894 0))(
  ( (Unit!47895) )
))
(declare-fun lt!624573 () Unit!47894)

(declare-fun lt!624575 () SeekEntryResult!10985)

(declare-fun lt!624576 () SeekEntryResult!10985)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!96650 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47894)

(assert (=> b!1415996 (= lt!624573 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624579 (x!127939 lt!624575) (index!46333 lt!624575) (x!127939 lt!624576) (index!46333 lt!624576) mask!2840))))

(declare-fun b!1415997 () Bool)

(declare-fun res!952148 () Bool)

(assert (=> b!1415997 (=> (not res!952148) (not e!801463))))

(declare-datatypes ((List!33351 0))(
  ( (Nil!33348) (Cons!33347 (h!34634 (_ BitVec 64)) (t!48052 List!33351)) )
))
(declare-fun arrayNoDuplicates!0 (array!96650 (_ BitVec 32) List!33351) Bool)

(assert (=> b!1415997 (= res!952148 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33348))))

(declare-fun b!1415998 () Bool)

(declare-fun e!801460 () Bool)

(declare-fun e!801464 () Bool)

(assert (=> b!1415998 (= e!801460 e!801464)))

(declare-fun res!952149 () Bool)

(assert (=> b!1415998 (=> res!952149 e!801464)))

(get-info :version)

(assert (=> b!1415998 (= res!952149 (or (= lt!624575 lt!624576) (not ((_ is Intermediate!10985) lt!624576))))))

(declare-fun lt!624580 () array!96650)

(declare-fun lt!624577 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96650 (_ BitVec 32)) SeekEntryResult!10985)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415998 (= lt!624576 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624577 mask!2840) lt!624577 lt!624580 mask!2840))))

(assert (=> b!1415998 (= lt!624577 (select (store (arr!46652 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415998 (= lt!624580 (array!96651 (store (arr!46652 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47203 a!2901)))))

(declare-fun res!952154 () Bool)

(assert (=> start!122046 (=> (not res!952154) (not e!801463))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122046 (= res!952154 (validMask!0 mask!2840))))

(assert (=> start!122046 e!801463))

(assert (=> start!122046 true))

(declare-fun array_inv!35597 (array!96650) Bool)

(assert (=> start!122046 (array_inv!35597 a!2901)))

(declare-fun b!1415999 () Bool)

(assert (=> b!1415999 (= e!801463 (not e!801460))))

(declare-fun res!952152 () Bool)

(assert (=> b!1415999 (=> res!952152 e!801460)))

(assert (=> b!1415999 (= res!952152 (or (not ((_ is Intermediate!10985) lt!624575)) (undefined!11797 lt!624575)))))

(assert (=> b!1415999 (= lt!624578 (Found!10985 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96650 (_ BitVec 32)) SeekEntryResult!10985)

(assert (=> b!1415999 (= lt!624578 (seekEntryOrOpen!0 (select (arr!46652 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96650 (_ BitVec 32)) Bool)

(assert (=> b!1415999 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!624571 () Unit!47894)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96650 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47894)

(assert (=> b!1415999 (= lt!624571 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1415999 (= lt!624575 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624579 (select (arr!46652 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415999 (= lt!624579 (toIndex!0 (select (arr!46652 a!2901) j!112) mask!2840))))

(declare-fun b!1416000 () Bool)

(declare-fun res!952147 () Bool)

(assert (=> b!1416000 (=> res!952147 e!801462)))

(assert (=> b!1416000 (= res!952147 (not (= lt!624576 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624579 lt!624577 lt!624580 mask!2840))))))

(declare-fun b!1416001 () Bool)

(assert (=> b!1416001 (= e!801464 e!801462)))

(declare-fun res!952155 () Bool)

(assert (=> b!1416001 (=> res!952155 e!801462)))

(assert (=> b!1416001 (= res!952155 (or (bvslt (x!127939 lt!624575) #b00000000000000000000000000000000) (bvsgt (x!127939 lt!624575) #b01111111111111111111111111111110) (bvslt (x!127939 lt!624576) #b00000000000000000000000000000000) (bvsgt (x!127939 lt!624576) #b01111111111111111111111111111110) (bvslt lt!624579 #b00000000000000000000000000000000) (bvsge lt!624579 (size!47203 a!2901)) (bvslt (index!46333 lt!624575) #b00000000000000000000000000000000) (bvsge (index!46333 lt!624575) (size!47203 a!2901)) (bvslt (index!46333 lt!624576) #b00000000000000000000000000000000) (bvsge (index!46333 lt!624576) (size!47203 a!2901)) (not (= lt!624575 (Intermediate!10985 false (index!46333 lt!624575) (x!127939 lt!624575)))) (not (= lt!624576 (Intermediate!10985 false (index!46333 lt!624576) (x!127939 lt!624576))))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96650 (_ BitVec 32)) SeekEntryResult!10985)

(assert (=> b!1416001 (= lt!624574 (seekKeyOrZeroReturnVacant!0 (x!127939 lt!624576) (index!46333 lt!624576) (index!46333 lt!624576) (select (arr!46652 a!2901) j!112) lt!624580 mask!2840))))

(assert (=> b!1416001 (= lt!624574 (seekEntryOrOpen!0 lt!624577 lt!624580 mask!2840))))

(assert (=> b!1416001 (and (not (undefined!11797 lt!624576)) (= (index!46333 lt!624576) i!1037) (bvslt (x!127939 lt!624576) (x!127939 lt!624575)) (= (select (store (arr!46652 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46333 lt!624576)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!624572 () Unit!47894)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96650 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47894)

(assert (=> b!1416001 (= lt!624572 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624579 (x!127939 lt!624575) (index!46333 lt!624575) (x!127939 lt!624576) (index!46333 lt!624576) (undefined!11797 lt!624576) mask!2840))))

(declare-fun b!1416002 () Bool)

(declare-fun res!952151 () Bool)

(assert (=> b!1416002 (=> (not res!952151) (not e!801463))))

(assert (=> b!1416002 (= res!952151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416003 () Bool)

(declare-fun res!952150 () Bool)

(assert (=> b!1416003 (=> (not res!952150) (not e!801463))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416003 (= res!952150 (validKeyInArray!0 (select (arr!46652 a!2901) i!1037)))))

(declare-fun b!1416004 () Bool)

(declare-fun res!952146 () Bool)

(assert (=> b!1416004 (=> (not res!952146) (not e!801463))))

(assert (=> b!1416004 (= res!952146 (validKeyInArray!0 (select (arr!46652 a!2901) j!112)))))

(assert (= (and start!122046 res!952154) b!1415995))

(assert (= (and b!1415995 res!952153) b!1416003))

(assert (= (and b!1416003 res!952150) b!1416004))

(assert (= (and b!1416004 res!952146) b!1416002))

(assert (= (and b!1416002 res!952151) b!1415997))

(assert (= (and b!1415997 res!952148) b!1415999))

(assert (= (and b!1415999 (not res!952152)) b!1415998))

(assert (= (and b!1415998 (not res!952149)) b!1416001))

(assert (= (and b!1416001 (not res!952155)) b!1416000))

(assert (= (and b!1416000 (not res!952147)) b!1415996))

(declare-fun m!1306587 () Bool)

(assert (=> b!1416000 m!1306587))

(declare-fun m!1306589 () Bool)

(assert (=> b!1416001 m!1306589))

(assert (=> b!1416001 m!1306589))

(declare-fun m!1306591 () Bool)

(assert (=> b!1416001 m!1306591))

(declare-fun m!1306593 () Bool)

(assert (=> b!1416001 m!1306593))

(declare-fun m!1306595 () Bool)

(assert (=> b!1416001 m!1306595))

(declare-fun m!1306597 () Bool)

(assert (=> b!1416001 m!1306597))

(declare-fun m!1306599 () Bool)

(assert (=> b!1416001 m!1306599))

(declare-fun m!1306601 () Bool)

(assert (=> b!1415997 m!1306601))

(assert (=> b!1415999 m!1306589))

(declare-fun m!1306603 () Bool)

(assert (=> b!1415999 m!1306603))

(assert (=> b!1415999 m!1306589))

(assert (=> b!1415999 m!1306589))

(declare-fun m!1306605 () Bool)

(assert (=> b!1415999 m!1306605))

(declare-fun m!1306607 () Bool)

(assert (=> b!1415999 m!1306607))

(assert (=> b!1415999 m!1306589))

(declare-fun m!1306609 () Bool)

(assert (=> b!1415999 m!1306609))

(declare-fun m!1306611 () Bool)

(assert (=> b!1415999 m!1306611))

(declare-fun m!1306613 () Bool)

(assert (=> b!1416002 m!1306613))

(assert (=> b!1416004 m!1306589))

(assert (=> b!1416004 m!1306589))

(declare-fun m!1306615 () Bool)

(assert (=> b!1416004 m!1306615))

(declare-fun m!1306617 () Bool)

(assert (=> b!1416003 m!1306617))

(assert (=> b!1416003 m!1306617))

(declare-fun m!1306619 () Bool)

(assert (=> b!1416003 m!1306619))

(declare-fun m!1306621 () Bool)

(assert (=> b!1415996 m!1306621))

(declare-fun m!1306623 () Bool)

(assert (=> b!1415998 m!1306623))

(assert (=> b!1415998 m!1306623))

(declare-fun m!1306625 () Bool)

(assert (=> b!1415998 m!1306625))

(assert (=> b!1415998 m!1306599))

(declare-fun m!1306627 () Bool)

(assert (=> b!1415998 m!1306627))

(declare-fun m!1306629 () Bool)

(assert (=> start!122046 m!1306629))

(declare-fun m!1306631 () Bool)

(assert (=> start!122046 m!1306631))

(check-sat (not b!1415998) (not b!1416003) (not b!1415999) (not b!1416002) (not b!1416001) (not b!1416000) (not start!122046) (not b!1415997) (not b!1416004) (not b!1415996))
(check-sat)
