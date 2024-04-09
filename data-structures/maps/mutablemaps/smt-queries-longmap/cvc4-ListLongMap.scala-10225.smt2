; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120446 () Bool)

(assert start!120446)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1401621 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!793691 () Bool)

(declare-datatypes ((array!95773 0))(
  ( (array!95774 (arr!46233 (Array (_ BitVec 32) (_ BitVec 64))) (size!46784 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95773)

(declare-datatypes ((SeekEntryResult!10572 0))(
  ( (MissingZero!10572 (index!44664 (_ BitVec 32))) (Found!10572 (index!44665 (_ BitVec 32))) (Intermediate!10572 (undefined!11384 Bool) (index!44666 (_ BitVec 32)) (x!126298 (_ BitVec 32))) (Undefined!10572) (MissingVacant!10572 (index!44667 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95773 (_ BitVec 32)) SeekEntryResult!10572)

(assert (=> b!1401621 (= e!793691 (= (seekEntryOrOpen!0 (select (arr!46233 a!2901) j!112) a!2901 mask!2840) (Found!10572 j!112)))))

(declare-fun b!1401622 () Bool)

(declare-fun res!940249 () Bool)

(declare-fun e!793690 () Bool)

(assert (=> b!1401622 (=> (not res!940249) (not e!793690))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401622 (= res!940249 (validKeyInArray!0 (select (arr!46233 a!2901) i!1037)))))

(declare-fun b!1401623 () Bool)

(declare-fun res!940241 () Bool)

(assert (=> b!1401623 (=> (not res!940241) (not e!793690))))

(declare-datatypes ((List!32932 0))(
  ( (Nil!32929) (Cons!32928 (h!34176 (_ BitVec 64)) (t!47633 List!32932)) )
))
(declare-fun arrayNoDuplicates!0 (array!95773 (_ BitVec 32) List!32932) Bool)

(assert (=> b!1401623 (= res!940241 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32929))))

(declare-fun b!1401624 () Bool)

(declare-fun res!940244 () Bool)

(assert (=> b!1401624 (=> (not res!940244) (not e!793690))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95773 (_ BitVec 32)) Bool)

(assert (=> b!1401624 (= res!940244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401625 () Bool)

(declare-fun res!940242 () Bool)

(assert (=> b!1401625 (=> (not res!940242) (not e!793690))))

(assert (=> b!1401625 (= res!940242 (and (= (size!46784 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46784 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46784 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401626 () Bool)

(declare-fun e!793688 () Bool)

(assert (=> b!1401626 (= e!793688 true)))

(declare-fun lt!617067 () array!95773)

(declare-fun lt!617066 () SeekEntryResult!10572)

(declare-fun lt!617064 () (_ BitVec 32))

(declare-fun lt!617071 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95773 (_ BitVec 32)) SeekEntryResult!10572)

(assert (=> b!1401626 (= lt!617066 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617064 lt!617071 lt!617067 mask!2840))))

(declare-fun e!793689 () Bool)

(declare-fun lt!617070 () SeekEntryResult!10572)

(declare-fun b!1401627 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95773 (_ BitVec 32)) SeekEntryResult!10572)

(assert (=> b!1401627 (= e!793689 (= (seekEntryOrOpen!0 lt!617071 lt!617067 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126298 lt!617070) (index!44666 lt!617070) (index!44666 lt!617070) (select (arr!46233 a!2901) j!112) lt!617067 mask!2840)))))

(declare-fun res!940247 () Bool)

(assert (=> start!120446 (=> (not res!940247) (not e!793690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120446 (= res!940247 (validMask!0 mask!2840))))

(assert (=> start!120446 e!793690))

(assert (=> start!120446 true))

(declare-fun array_inv!35178 (array!95773) Bool)

(assert (=> start!120446 (array_inv!35178 a!2901)))

(declare-fun b!1401628 () Bool)

(declare-fun e!793686 () Bool)

(declare-fun e!793687 () Bool)

(assert (=> b!1401628 (= e!793686 e!793687)))

(declare-fun res!940243 () Bool)

(assert (=> b!1401628 (=> res!940243 e!793687)))

(declare-fun lt!617065 () SeekEntryResult!10572)

(assert (=> b!1401628 (= res!940243 (or (= lt!617065 lt!617070) (not (is-Intermediate!10572 lt!617070))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401628 (= lt!617070 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617071 mask!2840) lt!617071 lt!617067 mask!2840))))

(assert (=> b!1401628 (= lt!617071 (select (store (arr!46233 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401628 (= lt!617067 (array!95774 (store (arr!46233 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46784 a!2901)))))

(declare-fun b!1401629 () Bool)

(assert (=> b!1401629 (= e!793687 e!793688)))

(declare-fun res!940246 () Bool)

(assert (=> b!1401629 (=> res!940246 e!793688)))

(assert (=> b!1401629 (= res!940246 (or (bvslt (x!126298 lt!617065) #b00000000000000000000000000000000) (bvsgt (x!126298 lt!617065) #b01111111111111111111111111111110) (bvslt (x!126298 lt!617070) #b00000000000000000000000000000000) (bvsgt (x!126298 lt!617070) #b01111111111111111111111111111110) (bvslt lt!617064 #b00000000000000000000000000000000) (bvsge lt!617064 (size!46784 a!2901)) (bvslt (index!44666 lt!617065) #b00000000000000000000000000000000) (bvsge (index!44666 lt!617065) (size!46784 a!2901)) (bvslt (index!44666 lt!617070) #b00000000000000000000000000000000) (bvsge (index!44666 lt!617070) (size!46784 a!2901)) (not (= lt!617065 (Intermediate!10572 false (index!44666 lt!617065) (x!126298 lt!617065)))) (not (= lt!617070 (Intermediate!10572 false (index!44666 lt!617070) (x!126298 lt!617070))))))))

(assert (=> b!1401629 e!793689))

(declare-fun res!940248 () Bool)

(assert (=> b!1401629 (=> (not res!940248) (not e!793689))))

(assert (=> b!1401629 (= res!940248 (and (not (undefined!11384 lt!617070)) (= (index!44666 lt!617070) i!1037) (bvslt (x!126298 lt!617070) (x!126298 lt!617065)) (= (select (store (arr!46233 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44666 lt!617070)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47098 0))(
  ( (Unit!47099) )
))
(declare-fun lt!617068 () Unit!47098)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95773 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47098)

(assert (=> b!1401629 (= lt!617068 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617064 (x!126298 lt!617065) (index!44666 lt!617065) (x!126298 lt!617070) (index!44666 lt!617070) (undefined!11384 lt!617070) mask!2840))))

(declare-fun b!1401630 () Bool)

(assert (=> b!1401630 (= e!793690 (not e!793686))))

(declare-fun res!940245 () Bool)

(assert (=> b!1401630 (=> res!940245 e!793686)))

(assert (=> b!1401630 (= res!940245 (or (not (is-Intermediate!10572 lt!617065)) (undefined!11384 lt!617065)))))

(assert (=> b!1401630 e!793691))

(declare-fun res!940250 () Bool)

(assert (=> b!1401630 (=> (not res!940250) (not e!793691))))

(assert (=> b!1401630 (= res!940250 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!617069 () Unit!47098)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95773 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47098)

(assert (=> b!1401630 (= lt!617069 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1401630 (= lt!617065 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617064 (select (arr!46233 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401630 (= lt!617064 (toIndex!0 (select (arr!46233 a!2901) j!112) mask!2840))))

(declare-fun b!1401631 () Bool)

(declare-fun res!940251 () Bool)

(assert (=> b!1401631 (=> (not res!940251) (not e!793690))))

(assert (=> b!1401631 (= res!940251 (validKeyInArray!0 (select (arr!46233 a!2901) j!112)))))

(assert (= (and start!120446 res!940247) b!1401625))

(assert (= (and b!1401625 res!940242) b!1401622))

(assert (= (and b!1401622 res!940249) b!1401631))

(assert (= (and b!1401631 res!940251) b!1401624))

(assert (= (and b!1401624 res!940244) b!1401623))

(assert (= (and b!1401623 res!940241) b!1401630))

(assert (= (and b!1401630 res!940250) b!1401621))

(assert (= (and b!1401630 (not res!940245)) b!1401628))

(assert (= (and b!1401628 (not res!940243)) b!1401629))

(assert (= (and b!1401629 res!940248) b!1401627))

(assert (= (and b!1401629 (not res!940246)) b!1401626))

(declare-fun m!1289553 () Bool)

(assert (=> b!1401628 m!1289553))

(assert (=> b!1401628 m!1289553))

(declare-fun m!1289555 () Bool)

(assert (=> b!1401628 m!1289555))

(declare-fun m!1289557 () Bool)

(assert (=> b!1401628 m!1289557))

(declare-fun m!1289559 () Bool)

(assert (=> b!1401628 m!1289559))

(declare-fun m!1289561 () Bool)

(assert (=> b!1401622 m!1289561))

(assert (=> b!1401622 m!1289561))

(declare-fun m!1289563 () Bool)

(assert (=> b!1401622 m!1289563))

(declare-fun m!1289565 () Bool)

(assert (=> b!1401626 m!1289565))

(declare-fun m!1289567 () Bool)

(assert (=> b!1401623 m!1289567))

(declare-fun m!1289569 () Bool)

(assert (=> b!1401624 m!1289569))

(assert (=> b!1401629 m!1289557))

(declare-fun m!1289571 () Bool)

(assert (=> b!1401629 m!1289571))

(declare-fun m!1289573 () Bool)

(assert (=> b!1401629 m!1289573))

(declare-fun m!1289575 () Bool)

(assert (=> b!1401627 m!1289575))

(declare-fun m!1289577 () Bool)

(assert (=> b!1401627 m!1289577))

(assert (=> b!1401627 m!1289577))

(declare-fun m!1289579 () Bool)

(assert (=> b!1401627 m!1289579))

(assert (=> b!1401630 m!1289577))

(declare-fun m!1289581 () Bool)

(assert (=> b!1401630 m!1289581))

(assert (=> b!1401630 m!1289577))

(declare-fun m!1289583 () Bool)

(assert (=> b!1401630 m!1289583))

(declare-fun m!1289585 () Bool)

(assert (=> b!1401630 m!1289585))

(assert (=> b!1401630 m!1289577))

(declare-fun m!1289587 () Bool)

(assert (=> b!1401630 m!1289587))

(declare-fun m!1289589 () Bool)

(assert (=> start!120446 m!1289589))

(declare-fun m!1289591 () Bool)

(assert (=> start!120446 m!1289591))

(assert (=> b!1401621 m!1289577))

(assert (=> b!1401621 m!1289577))

(declare-fun m!1289593 () Bool)

(assert (=> b!1401621 m!1289593))

(assert (=> b!1401631 m!1289577))

(assert (=> b!1401631 m!1289577))

(declare-fun m!1289595 () Bool)

(assert (=> b!1401631 m!1289595))

(push 1)

