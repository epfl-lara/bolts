; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120456 () Bool)

(assert start!120456)

(declare-fun b!1401786 () Bool)

(declare-fun res!940415 () Bool)

(declare-fun e!793793 () Bool)

(assert (=> b!1401786 (=> (not res!940415) (not e!793793))))

(declare-datatypes ((array!95783 0))(
  ( (array!95784 (arr!46238 (Array (_ BitVec 32) (_ BitVec 64))) (size!46789 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95783)

(declare-datatypes ((List!32937 0))(
  ( (Nil!32934) (Cons!32933 (h!34181 (_ BitVec 64)) (t!47638 List!32937)) )
))
(declare-fun arrayNoDuplicates!0 (array!95783 (_ BitVec 32) List!32937) Bool)

(assert (=> b!1401786 (= res!940415 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32934))))

(declare-fun res!940411 () Bool)

(assert (=> start!120456 (=> (not res!940411) (not e!793793))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120456 (= res!940411 (validMask!0 mask!2840))))

(assert (=> start!120456 e!793793))

(assert (=> start!120456 true))

(declare-fun array_inv!35183 (array!95783) Bool)

(assert (=> start!120456 (array_inv!35183 a!2901)))

(declare-fun b!1401787 () Bool)

(declare-fun res!940414 () Bool)

(assert (=> b!1401787 (=> (not res!940414) (not e!793793))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401787 (= res!940414 (and (= (size!46789 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46789 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46789 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401788 () Bool)

(declare-fun e!793791 () Bool)

(declare-datatypes ((SeekEntryResult!10577 0))(
  ( (MissingZero!10577 (index!44684 (_ BitVec 32))) (Found!10577 (index!44685 (_ BitVec 32))) (Intermediate!10577 (undefined!11389 Bool) (index!44686 (_ BitVec 32)) (x!126319 (_ BitVec 32))) (Undefined!10577) (MissingVacant!10577 (index!44687 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95783 (_ BitVec 32)) SeekEntryResult!10577)

(assert (=> b!1401788 (= e!793791 (= (seekEntryOrOpen!0 (select (arr!46238 a!2901) j!112) a!2901 mask!2840) (Found!10577 j!112)))))

(declare-fun lt!617190 () SeekEntryResult!10577)

(declare-fun e!793790 () Bool)

(declare-fun lt!617188 () array!95783)

(declare-fun b!1401789 () Bool)

(declare-fun lt!617189 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95783 (_ BitVec 32)) SeekEntryResult!10577)

(assert (=> b!1401789 (= e!793790 (= (seekEntryOrOpen!0 lt!617189 lt!617188 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126319 lt!617190) (index!44686 lt!617190) (index!44686 lt!617190) (select (arr!46238 a!2901) j!112) lt!617188 mask!2840)))))

(declare-fun b!1401790 () Bool)

(declare-fun res!940409 () Bool)

(assert (=> b!1401790 (=> (not res!940409) (not e!793793))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95783 (_ BitVec 32)) Bool)

(assert (=> b!1401790 (= res!940409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401791 () Bool)

(declare-fun res!940416 () Bool)

(assert (=> b!1401791 (=> (not res!940416) (not e!793793))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401791 (= res!940416 (validKeyInArray!0 (select (arr!46238 a!2901) i!1037)))))

(declare-fun b!1401792 () Bool)

(declare-fun e!793794 () Bool)

(declare-fun e!793795 () Bool)

(assert (=> b!1401792 (= e!793794 e!793795)))

(declare-fun res!940410 () Bool)

(assert (=> b!1401792 (=> res!940410 e!793795)))

(declare-fun lt!617184 () SeekEntryResult!10577)

(declare-fun lt!617186 () (_ BitVec 32))

(assert (=> b!1401792 (= res!940410 (or (bvslt (x!126319 lt!617184) #b00000000000000000000000000000000) (bvsgt (x!126319 lt!617184) #b01111111111111111111111111111110) (bvslt (x!126319 lt!617190) #b00000000000000000000000000000000) (bvsgt (x!126319 lt!617190) #b01111111111111111111111111111110) (bvslt lt!617186 #b00000000000000000000000000000000) (bvsge lt!617186 (size!46789 a!2901)) (bvslt (index!44686 lt!617184) #b00000000000000000000000000000000) (bvsge (index!44686 lt!617184) (size!46789 a!2901)) (bvslt (index!44686 lt!617190) #b00000000000000000000000000000000) (bvsge (index!44686 lt!617190) (size!46789 a!2901)) (not (= lt!617184 (Intermediate!10577 false (index!44686 lt!617184) (x!126319 lt!617184)))) (not (= lt!617190 (Intermediate!10577 false (index!44686 lt!617190) (x!126319 lt!617190))))))))

(assert (=> b!1401792 e!793790))

(declare-fun res!940413 () Bool)

(assert (=> b!1401792 (=> (not res!940413) (not e!793790))))

(assert (=> b!1401792 (= res!940413 (and (not (undefined!11389 lt!617190)) (= (index!44686 lt!617190) i!1037) (bvslt (x!126319 lt!617190) (x!126319 lt!617184)) (= (select (store (arr!46238 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44686 lt!617190)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47108 0))(
  ( (Unit!47109) )
))
(declare-fun lt!617185 () Unit!47108)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95783 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47108)

(assert (=> b!1401792 (= lt!617185 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617186 (x!126319 lt!617184) (index!44686 lt!617184) (x!126319 lt!617190) (index!44686 lt!617190) (undefined!11389 lt!617190) mask!2840))))

(declare-fun b!1401793 () Bool)

(declare-fun e!793792 () Bool)

(assert (=> b!1401793 (= e!793792 e!793794)))

(declare-fun res!940407 () Bool)

(assert (=> b!1401793 (=> res!940407 e!793794)))

(get-info :version)

(assert (=> b!1401793 (= res!940407 (or (= lt!617184 lt!617190) (not ((_ is Intermediate!10577) lt!617190))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95783 (_ BitVec 32)) SeekEntryResult!10577)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401793 (= lt!617190 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617189 mask!2840) lt!617189 lt!617188 mask!2840))))

(assert (=> b!1401793 (= lt!617189 (select (store (arr!46238 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401793 (= lt!617188 (array!95784 (store (arr!46238 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46789 a!2901)))))

(declare-fun b!1401794 () Bool)

(assert (=> b!1401794 (= e!793793 (not e!793792))))

(declare-fun res!940406 () Bool)

(assert (=> b!1401794 (=> res!940406 e!793792)))

(assert (=> b!1401794 (= res!940406 (or (not ((_ is Intermediate!10577) lt!617184)) (undefined!11389 lt!617184)))))

(assert (=> b!1401794 e!793791))

(declare-fun res!940412 () Bool)

(assert (=> b!1401794 (=> (not res!940412) (not e!793791))))

(assert (=> b!1401794 (= res!940412 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!617191 () Unit!47108)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95783 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47108)

(assert (=> b!1401794 (= lt!617191 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1401794 (= lt!617184 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617186 (select (arr!46238 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401794 (= lt!617186 (toIndex!0 (select (arr!46238 a!2901) j!112) mask!2840))))

(declare-fun b!1401795 () Bool)

(assert (=> b!1401795 (= e!793795 true)))

(declare-fun lt!617187 () SeekEntryResult!10577)

(assert (=> b!1401795 (= lt!617187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617186 lt!617189 lt!617188 mask!2840))))

(declare-fun b!1401796 () Bool)

(declare-fun res!940408 () Bool)

(assert (=> b!1401796 (=> (not res!940408) (not e!793793))))

(assert (=> b!1401796 (= res!940408 (validKeyInArray!0 (select (arr!46238 a!2901) j!112)))))

(assert (= (and start!120456 res!940411) b!1401787))

(assert (= (and b!1401787 res!940414) b!1401791))

(assert (= (and b!1401791 res!940416) b!1401796))

(assert (= (and b!1401796 res!940408) b!1401790))

(assert (= (and b!1401790 res!940409) b!1401786))

(assert (= (and b!1401786 res!940415) b!1401794))

(assert (= (and b!1401794 res!940412) b!1401788))

(assert (= (and b!1401794 (not res!940406)) b!1401793))

(assert (= (and b!1401793 (not res!940407)) b!1401792))

(assert (= (and b!1401792 res!940413) b!1401789))

(assert (= (and b!1401792 (not res!940410)) b!1401795))

(declare-fun m!1289773 () Bool)

(assert (=> b!1401790 m!1289773))

(declare-fun m!1289775 () Bool)

(assert (=> b!1401796 m!1289775))

(assert (=> b!1401796 m!1289775))

(declare-fun m!1289777 () Bool)

(assert (=> b!1401796 m!1289777))

(declare-fun m!1289779 () Bool)

(assert (=> b!1401789 m!1289779))

(assert (=> b!1401789 m!1289775))

(assert (=> b!1401789 m!1289775))

(declare-fun m!1289781 () Bool)

(assert (=> b!1401789 m!1289781))

(declare-fun m!1289783 () Bool)

(assert (=> b!1401792 m!1289783))

(declare-fun m!1289785 () Bool)

(assert (=> b!1401792 m!1289785))

(declare-fun m!1289787 () Bool)

(assert (=> b!1401792 m!1289787))

(assert (=> b!1401788 m!1289775))

(assert (=> b!1401788 m!1289775))

(declare-fun m!1289789 () Bool)

(assert (=> b!1401788 m!1289789))

(declare-fun m!1289791 () Bool)

(assert (=> start!120456 m!1289791))

(declare-fun m!1289793 () Bool)

(assert (=> start!120456 m!1289793))

(declare-fun m!1289795 () Bool)

(assert (=> b!1401795 m!1289795))

(declare-fun m!1289797 () Bool)

(assert (=> b!1401791 m!1289797))

(assert (=> b!1401791 m!1289797))

(declare-fun m!1289799 () Bool)

(assert (=> b!1401791 m!1289799))

(assert (=> b!1401794 m!1289775))

(declare-fun m!1289801 () Bool)

(assert (=> b!1401794 m!1289801))

(assert (=> b!1401794 m!1289775))

(assert (=> b!1401794 m!1289775))

(declare-fun m!1289803 () Bool)

(assert (=> b!1401794 m!1289803))

(declare-fun m!1289805 () Bool)

(assert (=> b!1401794 m!1289805))

(declare-fun m!1289807 () Bool)

(assert (=> b!1401794 m!1289807))

(declare-fun m!1289809 () Bool)

(assert (=> b!1401786 m!1289809))

(declare-fun m!1289811 () Bool)

(assert (=> b!1401793 m!1289811))

(assert (=> b!1401793 m!1289811))

(declare-fun m!1289813 () Bool)

(assert (=> b!1401793 m!1289813))

(assert (=> b!1401793 m!1289783))

(declare-fun m!1289815 () Bool)

(assert (=> b!1401793 m!1289815))

(check-sat (not b!1401795) (not b!1401793) (not b!1401786) (not b!1401792) (not b!1401790) (not start!120456) (not b!1401791) (not b!1401794) (not b!1401796) (not b!1401789) (not b!1401788))
(check-sat)
