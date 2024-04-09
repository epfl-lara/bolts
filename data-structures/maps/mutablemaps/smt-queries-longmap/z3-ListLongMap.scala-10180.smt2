; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120048 () Bool)

(assert start!120048)

(declare-fun b!1396982 () Bool)

(declare-fun res!936010 () Bool)

(declare-fun e!790910 () Bool)

(assert (=> b!1396982 (=> (not res!936010) (not e!790910))))

(declare-datatypes ((array!95495 0))(
  ( (array!95496 (arr!46097 (Array (_ BitVec 32) (_ BitVec 64))) (size!46648 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95495)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396982 (= res!936010 (validKeyInArray!0 (select (arr!46097 a!2901) j!112)))))

(declare-fun b!1396983 () Bool)

(declare-fun e!790906 () Bool)

(assert (=> b!1396983 (= e!790906 true)))

(declare-fun lt!613857 () array!95495)

(declare-fun lt!613855 () (_ BitVec 32))

(declare-fun lt!613852 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!10436 0))(
  ( (MissingZero!10436 (index!44114 (_ BitVec 32))) (Found!10436 (index!44115 (_ BitVec 32))) (Intermediate!10436 (undefined!11248 Bool) (index!44116 (_ BitVec 32)) (x!125781 (_ BitVec 32))) (Undefined!10436) (MissingVacant!10436 (index!44117 (_ BitVec 32))) )
))
(declare-fun lt!613853 () SeekEntryResult!10436)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95495 (_ BitVec 32)) SeekEntryResult!10436)

(assert (=> b!1396983 (= lt!613853 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613855 lt!613852 lt!613857 mask!2840))))

(declare-fun b!1396984 () Bool)

(declare-fun e!790908 () Bool)

(assert (=> b!1396984 (= e!790908 e!790906)))

(declare-fun res!936006 () Bool)

(assert (=> b!1396984 (=> res!936006 e!790906)))

(declare-fun lt!613858 () SeekEntryResult!10436)

(declare-fun lt!613856 () SeekEntryResult!10436)

(get-info :version)

(assert (=> b!1396984 (= res!936006 (or (= lt!613858 lt!613856) (not ((_ is Intermediate!10436) lt!613856)) (bvslt (x!125781 lt!613858) #b00000000000000000000000000000000) (bvsgt (x!125781 lt!613858) #b01111111111111111111111111111110) (bvslt lt!613855 #b00000000000000000000000000000000) (bvsge lt!613855 (size!46648 a!2901)) (bvslt (index!44116 lt!613858) #b00000000000000000000000000000000) (bvsge (index!44116 lt!613858) (size!46648 a!2901)) (not (= lt!613858 (Intermediate!10436 false (index!44116 lt!613858) (x!125781 lt!613858)))) (not (= lt!613856 (Intermediate!10436 (undefined!11248 lt!613856) (index!44116 lt!613856) (x!125781 lt!613856))))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396984 (= lt!613856 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613852 mask!2840) lt!613852 lt!613857 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1396984 (= lt!613852 (select (store (arr!46097 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396984 (= lt!613857 (array!95496 (store (arr!46097 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46648 a!2901)))))

(declare-fun res!936007 () Bool)

(assert (=> start!120048 (=> (not res!936007) (not e!790910))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120048 (= res!936007 (validMask!0 mask!2840))))

(assert (=> start!120048 e!790910))

(assert (=> start!120048 true))

(declare-fun array_inv!35042 (array!95495) Bool)

(assert (=> start!120048 (array_inv!35042 a!2901)))

(declare-fun b!1396985 () Bool)

(assert (=> b!1396985 (= e!790910 (not e!790908))))

(declare-fun res!936008 () Bool)

(assert (=> b!1396985 (=> res!936008 e!790908)))

(assert (=> b!1396985 (= res!936008 (or (not ((_ is Intermediate!10436) lt!613858)) (undefined!11248 lt!613858)))))

(declare-fun e!790907 () Bool)

(assert (=> b!1396985 e!790907))

(declare-fun res!936012 () Bool)

(assert (=> b!1396985 (=> (not res!936012) (not e!790907))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95495 (_ BitVec 32)) Bool)

(assert (=> b!1396985 (= res!936012 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46826 0))(
  ( (Unit!46827) )
))
(declare-fun lt!613854 () Unit!46826)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95495 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46826)

(assert (=> b!1396985 (= lt!613854 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1396985 (= lt!613858 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613855 (select (arr!46097 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1396985 (= lt!613855 (toIndex!0 (select (arr!46097 a!2901) j!112) mask!2840))))

(declare-fun b!1396986 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95495 (_ BitVec 32)) SeekEntryResult!10436)

(assert (=> b!1396986 (= e!790907 (= (seekEntryOrOpen!0 (select (arr!46097 a!2901) j!112) a!2901 mask!2840) (Found!10436 j!112)))))

(declare-fun b!1396987 () Bool)

(declare-fun res!936004 () Bool)

(assert (=> b!1396987 (=> (not res!936004) (not e!790910))))

(assert (=> b!1396987 (= res!936004 (and (= (size!46648 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46648 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46648 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396988 () Bool)

(declare-fun res!936005 () Bool)

(assert (=> b!1396988 (=> (not res!936005) (not e!790910))))

(assert (=> b!1396988 (= res!936005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396989 () Bool)

(declare-fun res!936011 () Bool)

(assert (=> b!1396989 (=> (not res!936011) (not e!790910))))

(declare-datatypes ((List!32796 0))(
  ( (Nil!32793) (Cons!32792 (h!34034 (_ BitVec 64)) (t!47497 List!32796)) )
))
(declare-fun arrayNoDuplicates!0 (array!95495 (_ BitVec 32) List!32796) Bool)

(assert (=> b!1396989 (= res!936011 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32793))))

(declare-fun b!1396990 () Bool)

(declare-fun res!936009 () Bool)

(assert (=> b!1396990 (=> (not res!936009) (not e!790910))))

(assert (=> b!1396990 (= res!936009 (validKeyInArray!0 (select (arr!46097 a!2901) i!1037)))))

(assert (= (and start!120048 res!936007) b!1396987))

(assert (= (and b!1396987 res!936004) b!1396990))

(assert (= (and b!1396990 res!936009) b!1396982))

(assert (= (and b!1396982 res!936010) b!1396988))

(assert (= (and b!1396988 res!936005) b!1396989))

(assert (= (and b!1396989 res!936011) b!1396985))

(assert (= (and b!1396985 res!936012) b!1396986))

(assert (= (and b!1396985 (not res!936008)) b!1396984))

(assert (= (and b!1396984 (not res!936006)) b!1396983))

(declare-fun m!1283687 () Bool)

(assert (=> b!1396985 m!1283687))

(declare-fun m!1283689 () Bool)

(assert (=> b!1396985 m!1283689))

(assert (=> b!1396985 m!1283687))

(assert (=> b!1396985 m!1283687))

(declare-fun m!1283691 () Bool)

(assert (=> b!1396985 m!1283691))

(declare-fun m!1283693 () Bool)

(assert (=> b!1396985 m!1283693))

(declare-fun m!1283695 () Bool)

(assert (=> b!1396985 m!1283695))

(declare-fun m!1283697 () Bool)

(assert (=> b!1396988 m!1283697))

(declare-fun m!1283699 () Bool)

(assert (=> b!1396983 m!1283699))

(declare-fun m!1283701 () Bool)

(assert (=> start!120048 m!1283701))

(declare-fun m!1283703 () Bool)

(assert (=> start!120048 m!1283703))

(declare-fun m!1283705 () Bool)

(assert (=> b!1396990 m!1283705))

(assert (=> b!1396990 m!1283705))

(declare-fun m!1283707 () Bool)

(assert (=> b!1396990 m!1283707))

(declare-fun m!1283709 () Bool)

(assert (=> b!1396984 m!1283709))

(assert (=> b!1396984 m!1283709))

(declare-fun m!1283711 () Bool)

(assert (=> b!1396984 m!1283711))

(declare-fun m!1283713 () Bool)

(assert (=> b!1396984 m!1283713))

(declare-fun m!1283715 () Bool)

(assert (=> b!1396984 m!1283715))

(assert (=> b!1396986 m!1283687))

(assert (=> b!1396986 m!1283687))

(declare-fun m!1283717 () Bool)

(assert (=> b!1396986 m!1283717))

(declare-fun m!1283719 () Bool)

(assert (=> b!1396989 m!1283719))

(assert (=> b!1396982 m!1283687))

(assert (=> b!1396982 m!1283687))

(declare-fun m!1283721 () Bool)

(assert (=> b!1396982 m!1283721))

(check-sat (not b!1396983) (not b!1396989) (not b!1396986) (not b!1396988) (not b!1396982) (not b!1396984) (not start!120048) (not b!1396990) (not b!1396985))
(check-sat)
