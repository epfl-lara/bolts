; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120448 () Bool)

(assert start!120448)

(declare-fun b!1401654 () Bool)

(declare-fun res!940282 () Bool)

(declare-fun e!793710 () Bool)

(assert (=> b!1401654 (=> (not res!940282) (not e!793710))))

(declare-datatypes ((array!95775 0))(
  ( (array!95776 (arr!46234 (Array (_ BitVec 32) (_ BitVec 64))) (size!46785 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95775)

(declare-datatypes ((List!32933 0))(
  ( (Nil!32930) (Cons!32929 (h!34177 (_ BitVec 64)) (t!47634 List!32933)) )
))
(declare-fun arrayNoDuplicates!0 (array!95775 (_ BitVec 32) List!32933) Bool)

(assert (=> b!1401654 (= res!940282 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32930))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1401655 () Bool)

(declare-fun e!793711 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10573 0))(
  ( (MissingZero!10573 (index!44668 (_ BitVec 32))) (Found!10573 (index!44669 (_ BitVec 32))) (Intermediate!10573 (undefined!11385 Bool) (index!44670 (_ BitVec 32)) (x!126307 (_ BitVec 32))) (Undefined!10573) (MissingVacant!10573 (index!44671 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95775 (_ BitVec 32)) SeekEntryResult!10573)

(assert (=> b!1401655 (= e!793711 (= (seekEntryOrOpen!0 (select (arr!46234 a!2901) j!112) a!2901 mask!2840) (Found!10573 j!112)))))

(declare-fun b!1401656 () Bool)

(declare-fun res!940284 () Bool)

(assert (=> b!1401656 (=> (not res!940284) (not e!793710))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401656 (= res!940284 (validKeyInArray!0 (select (arr!46234 a!2901) i!1037)))))

(declare-fun e!793708 () Bool)

(declare-fun b!1401657 () Bool)

(declare-fun lt!617095 () SeekEntryResult!10573)

(declare-fun lt!617091 () (_ BitVec 64))

(declare-fun lt!617090 () array!95775)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95775 (_ BitVec 32)) SeekEntryResult!10573)

(assert (=> b!1401657 (= e!793708 (= (seekEntryOrOpen!0 lt!617091 lt!617090 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126307 lt!617095) (index!44670 lt!617095) (index!44670 lt!617095) (select (arr!46234 a!2901) j!112) lt!617090 mask!2840)))))

(declare-fun b!1401658 () Bool)

(declare-fun e!793706 () Bool)

(declare-fun e!793709 () Bool)

(assert (=> b!1401658 (= e!793706 e!793709)))

(declare-fun res!940276 () Bool)

(assert (=> b!1401658 (=> res!940276 e!793709)))

(declare-fun lt!617093 () SeekEntryResult!10573)

(assert (=> b!1401658 (= res!940276 (or (= lt!617093 lt!617095) (not (is-Intermediate!10573 lt!617095))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95775 (_ BitVec 32)) SeekEntryResult!10573)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401658 (= lt!617095 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617091 mask!2840) lt!617091 lt!617090 mask!2840))))

(assert (=> b!1401658 (= lt!617091 (select (store (arr!46234 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401658 (= lt!617090 (array!95776 (store (arr!46234 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46785 a!2901)))))

(declare-fun b!1401659 () Bool)

(assert (=> b!1401659 (= e!793710 (not e!793706))))

(declare-fun res!940281 () Bool)

(assert (=> b!1401659 (=> res!940281 e!793706)))

(assert (=> b!1401659 (= res!940281 (or (not (is-Intermediate!10573 lt!617093)) (undefined!11385 lt!617093)))))

(assert (=> b!1401659 e!793711))

(declare-fun res!940283 () Bool)

(assert (=> b!1401659 (=> (not res!940283) (not e!793711))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95775 (_ BitVec 32)) Bool)

(assert (=> b!1401659 (= res!940283 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47100 0))(
  ( (Unit!47101) )
))
(declare-fun lt!617088 () Unit!47100)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95775 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47100)

(assert (=> b!1401659 (= lt!617088 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!617089 () (_ BitVec 32))

(assert (=> b!1401659 (= lt!617093 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617089 (select (arr!46234 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401659 (= lt!617089 (toIndex!0 (select (arr!46234 a!2901) j!112) mask!2840))))

(declare-fun b!1401660 () Bool)

(declare-fun res!940277 () Bool)

(assert (=> b!1401660 (=> (not res!940277) (not e!793710))))

(assert (=> b!1401660 (= res!940277 (validKeyInArray!0 (select (arr!46234 a!2901) j!112)))))

(declare-fun res!940275 () Bool)

(assert (=> start!120448 (=> (not res!940275) (not e!793710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120448 (= res!940275 (validMask!0 mask!2840))))

(assert (=> start!120448 e!793710))

(assert (=> start!120448 true))

(declare-fun array_inv!35179 (array!95775) Bool)

(assert (=> start!120448 (array_inv!35179 a!2901)))

(declare-fun b!1401661 () Bool)

(declare-fun e!793707 () Bool)

(assert (=> b!1401661 (= e!793707 true)))

(declare-fun lt!617094 () SeekEntryResult!10573)

(assert (=> b!1401661 (= lt!617094 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617089 lt!617091 lt!617090 mask!2840))))

(declare-fun b!1401662 () Bool)

(assert (=> b!1401662 (= e!793709 e!793707)))

(declare-fun res!940274 () Bool)

(assert (=> b!1401662 (=> res!940274 e!793707)))

(assert (=> b!1401662 (= res!940274 (or (bvslt (x!126307 lt!617093) #b00000000000000000000000000000000) (bvsgt (x!126307 lt!617093) #b01111111111111111111111111111110) (bvslt (x!126307 lt!617095) #b00000000000000000000000000000000) (bvsgt (x!126307 lt!617095) #b01111111111111111111111111111110) (bvslt lt!617089 #b00000000000000000000000000000000) (bvsge lt!617089 (size!46785 a!2901)) (bvslt (index!44670 lt!617093) #b00000000000000000000000000000000) (bvsge (index!44670 lt!617093) (size!46785 a!2901)) (bvslt (index!44670 lt!617095) #b00000000000000000000000000000000) (bvsge (index!44670 lt!617095) (size!46785 a!2901)) (not (= lt!617093 (Intermediate!10573 false (index!44670 lt!617093) (x!126307 lt!617093)))) (not (= lt!617095 (Intermediate!10573 false (index!44670 lt!617095) (x!126307 lt!617095))))))))

(assert (=> b!1401662 e!793708))

(declare-fun res!940280 () Bool)

(assert (=> b!1401662 (=> (not res!940280) (not e!793708))))

(assert (=> b!1401662 (= res!940280 (and (not (undefined!11385 lt!617095)) (= (index!44670 lt!617095) i!1037) (bvslt (x!126307 lt!617095) (x!126307 lt!617093)) (= (select (store (arr!46234 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44670 lt!617095)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!617092 () Unit!47100)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95775 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47100)

(assert (=> b!1401662 (= lt!617092 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617089 (x!126307 lt!617093) (index!44670 lt!617093) (x!126307 lt!617095) (index!44670 lt!617095) (undefined!11385 lt!617095) mask!2840))))

(declare-fun b!1401663 () Bool)

(declare-fun res!940278 () Bool)

(assert (=> b!1401663 (=> (not res!940278) (not e!793710))))

(assert (=> b!1401663 (= res!940278 (and (= (size!46785 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46785 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46785 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401664 () Bool)

(declare-fun res!940279 () Bool)

(assert (=> b!1401664 (=> (not res!940279) (not e!793710))))

(assert (=> b!1401664 (= res!940279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120448 res!940275) b!1401663))

(assert (= (and b!1401663 res!940278) b!1401656))

(assert (= (and b!1401656 res!940284) b!1401660))

(assert (= (and b!1401660 res!940277) b!1401664))

(assert (= (and b!1401664 res!940279) b!1401654))

(assert (= (and b!1401654 res!940282) b!1401659))

(assert (= (and b!1401659 res!940283) b!1401655))

(assert (= (and b!1401659 (not res!940281)) b!1401658))

(assert (= (and b!1401658 (not res!940276)) b!1401662))

(assert (= (and b!1401662 res!940280) b!1401657))

(assert (= (and b!1401662 (not res!940274)) b!1401661))

(declare-fun m!1289597 () Bool)

(assert (=> b!1401657 m!1289597))

(declare-fun m!1289599 () Bool)

(assert (=> b!1401657 m!1289599))

(assert (=> b!1401657 m!1289599))

(declare-fun m!1289601 () Bool)

(assert (=> b!1401657 m!1289601))

(declare-fun m!1289603 () Bool)

(assert (=> b!1401662 m!1289603))

(declare-fun m!1289605 () Bool)

(assert (=> b!1401662 m!1289605))

(declare-fun m!1289607 () Bool)

(assert (=> b!1401662 m!1289607))

(declare-fun m!1289609 () Bool)

(assert (=> b!1401661 m!1289609))

(declare-fun m!1289611 () Bool)

(assert (=> b!1401664 m!1289611))

(assert (=> b!1401655 m!1289599))

(assert (=> b!1401655 m!1289599))

(declare-fun m!1289613 () Bool)

(assert (=> b!1401655 m!1289613))

(assert (=> b!1401659 m!1289599))

(declare-fun m!1289615 () Bool)

(assert (=> b!1401659 m!1289615))

(declare-fun m!1289617 () Bool)

(assert (=> b!1401659 m!1289617))

(assert (=> b!1401659 m!1289599))

(declare-fun m!1289619 () Bool)

(assert (=> b!1401659 m!1289619))

(assert (=> b!1401659 m!1289599))

(declare-fun m!1289621 () Bool)

(assert (=> b!1401659 m!1289621))

(assert (=> b!1401660 m!1289599))

(assert (=> b!1401660 m!1289599))

(declare-fun m!1289623 () Bool)

(assert (=> b!1401660 m!1289623))

(declare-fun m!1289625 () Bool)

(assert (=> b!1401658 m!1289625))

(assert (=> b!1401658 m!1289625))

(declare-fun m!1289627 () Bool)

(assert (=> b!1401658 m!1289627))

(assert (=> b!1401658 m!1289603))

(declare-fun m!1289629 () Bool)

(assert (=> b!1401658 m!1289629))

(declare-fun m!1289631 () Bool)

(assert (=> b!1401654 m!1289631))

(declare-fun m!1289633 () Bool)

(assert (=> start!120448 m!1289633))

(declare-fun m!1289635 () Bool)

(assert (=> start!120448 m!1289635))

(declare-fun m!1289637 () Bool)

(assert (=> b!1401656 m!1289637))

(assert (=> b!1401656 m!1289637))

(declare-fun m!1289639 () Bool)

(assert (=> b!1401656 m!1289639))

(push 1)

