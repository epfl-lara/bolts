; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120100 () Bool)

(assert start!120100)

(declare-fun b!1397685 () Bool)

(declare-fun e!791296 () Bool)

(declare-fun e!791300 () Bool)

(assert (=> b!1397685 (= e!791296 (not e!791300))))

(declare-fun res!936714 () Bool)

(assert (=> b!1397685 (=> res!936714 e!791300)))

(declare-datatypes ((SeekEntryResult!10462 0))(
  ( (MissingZero!10462 (index!44218 (_ BitVec 32))) (Found!10462 (index!44219 (_ BitVec 32))) (Intermediate!10462 (undefined!11274 Bool) (index!44220 (_ BitVec 32)) (x!125879 (_ BitVec 32))) (Undefined!10462) (MissingVacant!10462 (index!44221 (_ BitVec 32))) )
))
(declare-fun lt!614400 () SeekEntryResult!10462)

(assert (=> b!1397685 (= res!936714 (or (not (is-Intermediate!10462 lt!614400)) (undefined!11274 lt!614400)))))

(declare-fun e!791299 () Bool)

(assert (=> b!1397685 e!791299))

(declare-fun res!936709 () Bool)

(assert (=> b!1397685 (=> (not res!936709) (not e!791299))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95547 0))(
  ( (array!95548 (arr!46123 (Array (_ BitVec 32) (_ BitVec 64))) (size!46674 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95547)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95547 (_ BitVec 32)) Bool)

(assert (=> b!1397685 (= res!936709 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46878 0))(
  ( (Unit!46879) )
))
(declare-fun lt!614399 () Unit!46878)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95547 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46878)

(assert (=> b!1397685 (= lt!614399 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614404 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95547 (_ BitVec 32)) SeekEntryResult!10462)

(assert (=> b!1397685 (= lt!614400 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614404 (select (arr!46123 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397685 (= lt!614404 (toIndex!0 (select (arr!46123 a!2901) j!112) mask!2840))))

(declare-fun b!1397686 () Bool)

(declare-fun res!936711 () Bool)

(assert (=> b!1397686 (=> (not res!936711) (not e!791296))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397686 (= res!936711 (and (= (size!46674 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46674 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46674 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397687 () Bool)

(declare-fun res!936707 () Bool)

(assert (=> b!1397687 (=> (not res!936707) (not e!791296))))

(assert (=> b!1397687 (= res!936707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397688 () Bool)

(declare-fun res!936706 () Bool)

(assert (=> b!1397688 (=> (not res!936706) (not e!791296))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397688 (= res!936706 (validKeyInArray!0 (select (arr!46123 a!2901) j!112)))))

(declare-fun b!1397689 () Bool)

(declare-fun res!936708 () Bool)

(assert (=> b!1397689 (=> (not res!936708) (not e!791296))))

(assert (=> b!1397689 (= res!936708 (validKeyInArray!0 (select (arr!46123 a!2901) i!1037)))))

(declare-fun b!1397690 () Bool)

(declare-fun e!791297 () Bool)

(assert (=> b!1397690 (= e!791297 true)))

(declare-fun lt!614401 () array!95547)

(declare-fun lt!614403 () SeekEntryResult!10462)

(declare-fun lt!614398 () (_ BitVec 64))

(assert (=> b!1397690 (= lt!614403 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614404 lt!614398 lt!614401 mask!2840))))

(declare-fun b!1397684 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95547 (_ BitVec 32)) SeekEntryResult!10462)

(assert (=> b!1397684 (= e!791299 (= (seekEntryOrOpen!0 (select (arr!46123 a!2901) j!112) a!2901 mask!2840) (Found!10462 j!112)))))

(declare-fun res!936713 () Bool)

(assert (=> start!120100 (=> (not res!936713) (not e!791296))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120100 (= res!936713 (validMask!0 mask!2840))))

(assert (=> start!120100 e!791296))

(assert (=> start!120100 true))

(declare-fun array_inv!35068 (array!95547) Bool)

(assert (=> start!120100 (array_inv!35068 a!2901)))

(declare-fun b!1397691 () Bool)

(assert (=> b!1397691 (= e!791300 e!791297)))

(declare-fun res!936710 () Bool)

(assert (=> b!1397691 (=> res!936710 e!791297)))

(declare-fun lt!614402 () SeekEntryResult!10462)

(assert (=> b!1397691 (= res!936710 (or (= lt!614400 lt!614402) (not (is-Intermediate!10462 lt!614402)) (bvslt (x!125879 lt!614400) #b00000000000000000000000000000000) (bvsgt (x!125879 lt!614400) #b01111111111111111111111111111110) (bvslt lt!614404 #b00000000000000000000000000000000) (bvsge lt!614404 (size!46674 a!2901)) (bvslt (index!44220 lt!614400) #b00000000000000000000000000000000) (bvsge (index!44220 lt!614400) (size!46674 a!2901)) (not (= lt!614400 (Intermediate!10462 false (index!44220 lt!614400) (x!125879 lt!614400)))) (not (= lt!614402 (Intermediate!10462 (undefined!11274 lt!614402) (index!44220 lt!614402) (x!125879 lt!614402))))))))

(assert (=> b!1397691 (= lt!614402 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614398 mask!2840) lt!614398 lt!614401 mask!2840))))

(assert (=> b!1397691 (= lt!614398 (select (store (arr!46123 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397691 (= lt!614401 (array!95548 (store (arr!46123 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46674 a!2901)))))

(declare-fun b!1397692 () Bool)

(declare-fun res!936712 () Bool)

(assert (=> b!1397692 (=> (not res!936712) (not e!791296))))

(declare-datatypes ((List!32822 0))(
  ( (Nil!32819) (Cons!32818 (h!34060 (_ BitVec 64)) (t!47523 List!32822)) )
))
(declare-fun arrayNoDuplicates!0 (array!95547 (_ BitVec 32) List!32822) Bool)

(assert (=> b!1397692 (= res!936712 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32819))))

(assert (= (and start!120100 res!936713) b!1397686))

(assert (= (and b!1397686 res!936711) b!1397689))

(assert (= (and b!1397689 res!936708) b!1397688))

(assert (= (and b!1397688 res!936706) b!1397687))

(assert (= (and b!1397687 res!936707) b!1397692))

(assert (= (and b!1397692 res!936712) b!1397685))

(assert (= (and b!1397685 res!936709) b!1397684))

(assert (= (and b!1397685 (not res!936714)) b!1397691))

(assert (= (and b!1397691 (not res!936710)) b!1397690))

(declare-fun m!1284623 () Bool)

(assert (=> b!1397685 m!1284623))

(declare-fun m!1284625 () Bool)

(assert (=> b!1397685 m!1284625))

(assert (=> b!1397685 m!1284623))

(assert (=> b!1397685 m!1284623))

(declare-fun m!1284627 () Bool)

(assert (=> b!1397685 m!1284627))

(declare-fun m!1284629 () Bool)

(assert (=> b!1397685 m!1284629))

(declare-fun m!1284631 () Bool)

(assert (=> b!1397685 m!1284631))

(assert (=> b!1397684 m!1284623))

(assert (=> b!1397684 m!1284623))

(declare-fun m!1284633 () Bool)

(assert (=> b!1397684 m!1284633))

(declare-fun m!1284635 () Bool)

(assert (=> b!1397692 m!1284635))

(assert (=> b!1397688 m!1284623))

(assert (=> b!1397688 m!1284623))

(declare-fun m!1284637 () Bool)

(assert (=> b!1397688 m!1284637))

(declare-fun m!1284639 () Bool)

(assert (=> b!1397689 m!1284639))

(assert (=> b!1397689 m!1284639))

(declare-fun m!1284641 () Bool)

(assert (=> b!1397689 m!1284641))

(declare-fun m!1284643 () Bool)

(assert (=> b!1397690 m!1284643))

(declare-fun m!1284645 () Bool)

(assert (=> start!120100 m!1284645))

(declare-fun m!1284647 () Bool)

(assert (=> start!120100 m!1284647))

(declare-fun m!1284649 () Bool)

(assert (=> b!1397687 m!1284649))

(declare-fun m!1284651 () Bool)

(assert (=> b!1397691 m!1284651))

(assert (=> b!1397691 m!1284651))

(declare-fun m!1284653 () Bool)

(assert (=> b!1397691 m!1284653))

(declare-fun m!1284655 () Bool)

(assert (=> b!1397691 m!1284655))

(declare-fun m!1284657 () Bool)

(assert (=> b!1397691 m!1284657))

(push 1)

