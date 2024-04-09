; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120094 () Bool)

(assert start!120094)

(declare-fun b!1397603 () Bool)

(declare-fun e!791252 () Bool)

(declare-fun e!791254 () Bool)

(assert (=> b!1397603 (= e!791252 (not e!791254))))

(declare-fun res!936625 () Bool)

(assert (=> b!1397603 (=> res!936625 e!791254)))

(declare-datatypes ((SeekEntryResult!10459 0))(
  ( (MissingZero!10459 (index!44206 (_ BitVec 32))) (Found!10459 (index!44207 (_ BitVec 32))) (Intermediate!10459 (undefined!11271 Bool) (index!44208 (_ BitVec 32)) (x!125868 (_ BitVec 32))) (Undefined!10459) (MissingVacant!10459 (index!44209 (_ BitVec 32))) )
))
(declare-fun lt!614335 () SeekEntryResult!10459)

(assert (=> b!1397603 (= res!936625 (or (not (is-Intermediate!10459 lt!614335)) (undefined!11271 lt!614335)))))

(declare-fun e!791255 () Bool)

(assert (=> b!1397603 e!791255))

(declare-fun res!936633 () Bool)

(assert (=> b!1397603 (=> (not res!936633) (not e!791255))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95541 0))(
  ( (array!95542 (arr!46120 (Array (_ BitVec 32) (_ BitVec 64))) (size!46671 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95541)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95541 (_ BitVec 32)) Bool)

(assert (=> b!1397603 (= res!936633 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46872 0))(
  ( (Unit!46873) )
))
(declare-fun lt!614338 () Unit!46872)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95541 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46872)

(assert (=> b!1397603 (= lt!614338 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614341 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95541 (_ BitVec 32)) SeekEntryResult!10459)

(assert (=> b!1397603 (= lt!614335 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614341 (select (arr!46120 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397603 (= lt!614341 (toIndex!0 (select (arr!46120 a!2901) j!112) mask!2840))))

(declare-fun b!1397604 () Bool)

(declare-fun res!936628 () Bool)

(assert (=> b!1397604 (=> (not res!936628) (not e!791252))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397604 (= res!936628 (validKeyInArray!0 (select (arr!46120 a!2901) i!1037)))))

(declare-fun b!1397605 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95541 (_ BitVec 32)) SeekEntryResult!10459)

(assert (=> b!1397605 (= e!791255 (= (seekEntryOrOpen!0 (select (arr!46120 a!2901) j!112) a!2901 mask!2840) (Found!10459 j!112)))))

(declare-fun res!936629 () Bool)

(assert (=> start!120094 (=> (not res!936629) (not e!791252))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120094 (= res!936629 (validMask!0 mask!2840))))

(assert (=> start!120094 e!791252))

(assert (=> start!120094 true))

(declare-fun array_inv!35065 (array!95541) Bool)

(assert (=> start!120094 (array_inv!35065 a!2901)))

(declare-fun b!1397606 () Bool)

(declare-fun res!936631 () Bool)

(assert (=> b!1397606 (=> (not res!936631) (not e!791252))))

(assert (=> b!1397606 (= res!936631 (validKeyInArray!0 (select (arr!46120 a!2901) j!112)))))

(declare-fun b!1397607 () Bool)

(declare-fun e!791251 () Bool)

(assert (=> b!1397607 (= e!791251 true)))

(declare-fun lt!614336 () SeekEntryResult!10459)

(declare-fun lt!614340 () (_ BitVec 64))

(declare-fun lt!614339 () array!95541)

(assert (=> b!1397607 (= lt!614336 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614341 lt!614340 lt!614339 mask!2840))))

(declare-fun b!1397608 () Bool)

(assert (=> b!1397608 (= e!791254 e!791251)))

(declare-fun res!936626 () Bool)

(assert (=> b!1397608 (=> res!936626 e!791251)))

(declare-fun lt!614337 () SeekEntryResult!10459)

(assert (=> b!1397608 (= res!936626 (or (= lt!614335 lt!614337) (not (is-Intermediate!10459 lt!614337)) (bvslt (x!125868 lt!614335) #b00000000000000000000000000000000) (bvsgt (x!125868 lt!614335) #b01111111111111111111111111111110) (bvslt lt!614341 #b00000000000000000000000000000000) (bvsge lt!614341 (size!46671 a!2901)) (bvslt (index!44208 lt!614335) #b00000000000000000000000000000000) (bvsge (index!44208 lt!614335) (size!46671 a!2901)) (not (= lt!614335 (Intermediate!10459 false (index!44208 lt!614335) (x!125868 lt!614335)))) (not (= lt!614337 (Intermediate!10459 (undefined!11271 lt!614337) (index!44208 lt!614337) (x!125868 lt!614337))))))))

(assert (=> b!1397608 (= lt!614337 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614340 mask!2840) lt!614340 lt!614339 mask!2840))))

(assert (=> b!1397608 (= lt!614340 (select (store (arr!46120 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397608 (= lt!614339 (array!95542 (store (arr!46120 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46671 a!2901)))))

(declare-fun b!1397609 () Bool)

(declare-fun res!936627 () Bool)

(assert (=> b!1397609 (=> (not res!936627) (not e!791252))))

(declare-datatypes ((List!32819 0))(
  ( (Nil!32816) (Cons!32815 (h!34057 (_ BitVec 64)) (t!47520 List!32819)) )
))
(declare-fun arrayNoDuplicates!0 (array!95541 (_ BitVec 32) List!32819) Bool)

(assert (=> b!1397609 (= res!936627 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32816))))

(declare-fun b!1397610 () Bool)

(declare-fun res!936630 () Bool)

(assert (=> b!1397610 (=> (not res!936630) (not e!791252))))

(assert (=> b!1397610 (= res!936630 (and (= (size!46671 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46671 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46671 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397611 () Bool)

(declare-fun res!936632 () Bool)

(assert (=> b!1397611 (=> (not res!936632) (not e!791252))))

(assert (=> b!1397611 (= res!936632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120094 res!936629) b!1397610))

(assert (= (and b!1397610 res!936630) b!1397604))

(assert (= (and b!1397604 res!936628) b!1397606))

(assert (= (and b!1397606 res!936631) b!1397611))

(assert (= (and b!1397611 res!936632) b!1397609))

(assert (= (and b!1397609 res!936627) b!1397603))

(assert (= (and b!1397603 res!936633) b!1397605))

(assert (= (and b!1397603 (not res!936625)) b!1397608))

(assert (= (and b!1397608 (not res!936626)) b!1397607))

(declare-fun m!1284515 () Bool)

(assert (=> b!1397606 m!1284515))

(assert (=> b!1397606 m!1284515))

(declare-fun m!1284517 () Bool)

(assert (=> b!1397606 m!1284517))

(assert (=> b!1397605 m!1284515))

(assert (=> b!1397605 m!1284515))

(declare-fun m!1284519 () Bool)

(assert (=> b!1397605 m!1284519))

(declare-fun m!1284521 () Bool)

(assert (=> b!1397604 m!1284521))

(assert (=> b!1397604 m!1284521))

(declare-fun m!1284523 () Bool)

(assert (=> b!1397604 m!1284523))

(declare-fun m!1284525 () Bool)

(assert (=> b!1397608 m!1284525))

(assert (=> b!1397608 m!1284525))

(declare-fun m!1284527 () Bool)

(assert (=> b!1397608 m!1284527))

(declare-fun m!1284529 () Bool)

(assert (=> b!1397608 m!1284529))

(declare-fun m!1284531 () Bool)

(assert (=> b!1397608 m!1284531))

(declare-fun m!1284533 () Bool)

(assert (=> b!1397609 m!1284533))

(declare-fun m!1284535 () Bool)

(assert (=> b!1397611 m!1284535))

(assert (=> b!1397603 m!1284515))

(declare-fun m!1284537 () Bool)

(assert (=> b!1397603 m!1284537))

(assert (=> b!1397603 m!1284515))

(assert (=> b!1397603 m!1284515))

(declare-fun m!1284539 () Bool)

(assert (=> b!1397603 m!1284539))

(declare-fun m!1284541 () Bool)

(assert (=> b!1397603 m!1284541))

(declare-fun m!1284543 () Bool)

(assert (=> b!1397603 m!1284543))

(declare-fun m!1284545 () Bool)

(assert (=> b!1397607 m!1284545))

(declare-fun m!1284547 () Bool)

(assert (=> start!120094 m!1284547))

(declare-fun m!1284549 () Bool)

(assert (=> start!120094 m!1284549))

(push 1)

