; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120104 () Bool)

(assert start!120104)

(declare-fun b!1397738 () Bool)

(declare-fun e!791328 () Bool)

(assert (=> b!1397738 (= e!791328 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95551 0))(
  ( (array!95552 (arr!46125 (Array (_ BitVec 32) (_ BitVec 64))) (size!46676 (_ BitVec 32))) )
))
(declare-fun lt!614440 () array!95551)

(declare-datatypes ((SeekEntryResult!10464 0))(
  ( (MissingZero!10464 (index!44226 (_ BitVec 32))) (Found!10464 (index!44227 (_ BitVec 32))) (Intermediate!10464 (undefined!11276 Bool) (index!44228 (_ BitVec 32)) (x!125881 (_ BitVec 32))) (Undefined!10464) (MissingVacant!10464 (index!44229 (_ BitVec 32))) )
))
(declare-fun lt!614445 () SeekEntryResult!10464)

(declare-fun lt!614443 () (_ BitVec 64))

(declare-fun lt!614444 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95551 (_ BitVec 32)) SeekEntryResult!10464)

(assert (=> b!1397738 (= lt!614445 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614444 lt!614443 lt!614440 mask!2840))))

(declare-fun res!936762 () Bool)

(declare-fun e!791326 () Bool)

(assert (=> start!120104 (=> (not res!936762) (not e!791326))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120104 (= res!936762 (validMask!0 mask!2840))))

(assert (=> start!120104 e!791326))

(assert (=> start!120104 true))

(declare-fun a!2901 () array!95551)

(declare-fun array_inv!35070 (array!95551) Bool)

(assert (=> start!120104 (array_inv!35070 a!2901)))

(declare-fun b!1397739 () Bool)

(declare-fun res!936760 () Bool)

(assert (=> b!1397739 (=> (not res!936760) (not e!791326))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397739 (= res!936760 (validKeyInArray!0 (select (arr!46125 a!2901) j!112)))))

(declare-fun b!1397740 () Bool)

(declare-fun res!936765 () Bool)

(assert (=> b!1397740 (=> (not res!936765) (not e!791326))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397740 (= res!936765 (validKeyInArray!0 (select (arr!46125 a!2901) i!1037)))))

(declare-fun b!1397741 () Bool)

(declare-fun e!791330 () Bool)

(assert (=> b!1397741 (= e!791326 (not e!791330))))

(declare-fun res!936764 () Bool)

(assert (=> b!1397741 (=> res!936764 e!791330)))

(declare-fun lt!614446 () SeekEntryResult!10464)

(assert (=> b!1397741 (= res!936764 (or (not (is-Intermediate!10464 lt!614446)) (undefined!11276 lt!614446)))))

(declare-fun e!791329 () Bool)

(assert (=> b!1397741 e!791329))

(declare-fun res!936768 () Bool)

(assert (=> b!1397741 (=> (not res!936768) (not e!791329))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95551 (_ BitVec 32)) Bool)

(assert (=> b!1397741 (= res!936768 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46882 0))(
  ( (Unit!46883) )
))
(declare-fun lt!614441 () Unit!46882)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95551 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46882)

(assert (=> b!1397741 (= lt!614441 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397741 (= lt!614446 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614444 (select (arr!46125 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397741 (= lt!614444 (toIndex!0 (select (arr!46125 a!2901) j!112) mask!2840))))

(declare-fun b!1397742 () Bool)

(declare-fun res!936761 () Bool)

(assert (=> b!1397742 (=> (not res!936761) (not e!791326))))

(assert (=> b!1397742 (= res!936761 (and (= (size!46676 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46676 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46676 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397743 () Bool)

(declare-fun res!936767 () Bool)

(assert (=> b!1397743 (=> (not res!936767) (not e!791326))))

(declare-datatypes ((List!32824 0))(
  ( (Nil!32821) (Cons!32820 (h!34062 (_ BitVec 64)) (t!47525 List!32824)) )
))
(declare-fun arrayNoDuplicates!0 (array!95551 (_ BitVec 32) List!32824) Bool)

(assert (=> b!1397743 (= res!936767 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32821))))

(declare-fun b!1397744 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95551 (_ BitVec 32)) SeekEntryResult!10464)

(assert (=> b!1397744 (= e!791329 (= (seekEntryOrOpen!0 (select (arr!46125 a!2901) j!112) a!2901 mask!2840) (Found!10464 j!112)))))

(declare-fun b!1397745 () Bool)

(declare-fun res!936766 () Bool)

(assert (=> b!1397745 (=> (not res!936766) (not e!791326))))

(assert (=> b!1397745 (= res!936766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397746 () Bool)

(assert (=> b!1397746 (= e!791330 e!791328)))

(declare-fun res!936763 () Bool)

(assert (=> b!1397746 (=> res!936763 e!791328)))

(declare-fun lt!614442 () SeekEntryResult!10464)

(assert (=> b!1397746 (= res!936763 (or (= lt!614446 lt!614442) (not (is-Intermediate!10464 lt!614442)) (bvslt (x!125881 lt!614446) #b00000000000000000000000000000000) (bvsgt (x!125881 lt!614446) #b01111111111111111111111111111110) (bvslt lt!614444 #b00000000000000000000000000000000) (bvsge lt!614444 (size!46676 a!2901)) (bvslt (index!44228 lt!614446) #b00000000000000000000000000000000) (bvsge (index!44228 lt!614446) (size!46676 a!2901)) (not (= lt!614446 (Intermediate!10464 false (index!44228 lt!614446) (x!125881 lt!614446)))) (not (= lt!614442 (Intermediate!10464 (undefined!11276 lt!614442) (index!44228 lt!614442) (x!125881 lt!614442))))))))

(assert (=> b!1397746 (= lt!614442 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614443 mask!2840) lt!614443 lt!614440 mask!2840))))

(assert (=> b!1397746 (= lt!614443 (select (store (arr!46125 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397746 (= lt!614440 (array!95552 (store (arr!46125 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46676 a!2901)))))

(assert (= (and start!120104 res!936762) b!1397742))

(assert (= (and b!1397742 res!936761) b!1397740))

(assert (= (and b!1397740 res!936765) b!1397739))

(assert (= (and b!1397739 res!936760) b!1397745))

(assert (= (and b!1397745 res!936766) b!1397743))

(assert (= (and b!1397743 res!936767) b!1397741))

(assert (= (and b!1397741 res!936768) b!1397744))

(assert (= (and b!1397741 (not res!936764)) b!1397746))

(assert (= (and b!1397746 (not res!936763)) b!1397738))

(declare-fun m!1284695 () Bool)

(assert (=> b!1397744 m!1284695))

(assert (=> b!1397744 m!1284695))

(declare-fun m!1284697 () Bool)

(assert (=> b!1397744 m!1284697))

(declare-fun m!1284699 () Bool)

(assert (=> b!1397738 m!1284699))

(assert (=> b!1397739 m!1284695))

(assert (=> b!1397739 m!1284695))

(declare-fun m!1284701 () Bool)

(assert (=> b!1397739 m!1284701))

(declare-fun m!1284703 () Bool)

(assert (=> b!1397740 m!1284703))

(assert (=> b!1397740 m!1284703))

(declare-fun m!1284705 () Bool)

(assert (=> b!1397740 m!1284705))

(assert (=> b!1397741 m!1284695))

(declare-fun m!1284707 () Bool)

(assert (=> b!1397741 m!1284707))

(assert (=> b!1397741 m!1284695))

(declare-fun m!1284709 () Bool)

(assert (=> b!1397741 m!1284709))

(assert (=> b!1397741 m!1284695))

(declare-fun m!1284711 () Bool)

(assert (=> b!1397741 m!1284711))

(declare-fun m!1284713 () Bool)

(assert (=> b!1397741 m!1284713))

(declare-fun m!1284715 () Bool)

(assert (=> b!1397745 m!1284715))

(declare-fun m!1284717 () Bool)

(assert (=> b!1397743 m!1284717))

(declare-fun m!1284719 () Bool)

(assert (=> start!120104 m!1284719))

(declare-fun m!1284721 () Bool)

(assert (=> start!120104 m!1284721))

(declare-fun m!1284723 () Bool)

(assert (=> b!1397746 m!1284723))

(assert (=> b!1397746 m!1284723))

(declare-fun m!1284725 () Bool)

(assert (=> b!1397746 m!1284725))

(declare-fun m!1284727 () Bool)

(assert (=> b!1397746 m!1284727))

(declare-fun m!1284729 () Bool)

(assert (=> b!1397746 m!1284729))

(push 1)

