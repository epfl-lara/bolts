; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120042 () Bool)

(assert start!120042)

(declare-fun b!1396901 () Bool)

(declare-fun res!935926 () Bool)

(declare-fun e!790861 () Bool)

(assert (=> b!1396901 (=> (not res!935926) (not e!790861))))

(declare-datatypes ((array!95489 0))(
  ( (array!95490 (arr!46094 (Array (_ BitVec 32) (_ BitVec 64))) (size!46645 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95489)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95489 (_ BitVec 32)) Bool)

(assert (=> b!1396901 (= res!935926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396902 () Bool)

(declare-fun res!935924 () Bool)

(assert (=> b!1396902 (=> (not res!935924) (not e!790861))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1396902 (= res!935924 (and (= (size!46645 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46645 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46645 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396903 () Bool)

(declare-fun res!935929 () Bool)

(assert (=> b!1396903 (=> (not res!935929) (not e!790861))))

(declare-datatypes ((List!32793 0))(
  ( (Nil!32790) (Cons!32789 (h!34031 (_ BitVec 64)) (t!47494 List!32793)) )
))
(declare-fun arrayNoDuplicates!0 (array!95489 (_ BitVec 32) List!32793) Bool)

(assert (=> b!1396903 (= res!935929 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32790))))

(declare-fun e!790865 () Bool)

(declare-fun b!1396904 () Bool)

(declare-datatypes ((SeekEntryResult!10433 0))(
  ( (MissingZero!10433 (index!44102 (_ BitVec 32))) (Found!10433 (index!44103 (_ BitVec 32))) (Intermediate!10433 (undefined!11245 Bool) (index!44104 (_ BitVec 32)) (x!125770 (_ BitVec 32))) (Undefined!10433) (MissingVacant!10433 (index!44105 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95489 (_ BitVec 32)) SeekEntryResult!10433)

(assert (=> b!1396904 (= e!790865 (= (seekEntryOrOpen!0 (select (arr!46094 a!2901) j!112) a!2901 mask!2840) (Found!10433 j!112)))))

(declare-fun b!1396905 () Bool)

(declare-fun res!935925 () Bool)

(assert (=> b!1396905 (=> (not res!935925) (not e!790861))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396905 (= res!935925 (validKeyInArray!0 (select (arr!46094 a!2901) i!1037)))))

(declare-fun b!1396906 () Bool)

(declare-fun e!790862 () Bool)

(declare-fun e!790863 () Bool)

(assert (=> b!1396906 (= e!790862 e!790863)))

(declare-fun res!935927 () Bool)

(assert (=> b!1396906 (=> res!935927 e!790863)))

(declare-fun lt!613790 () SeekEntryResult!10433)

(declare-fun lt!613793 () SeekEntryResult!10433)

(declare-fun lt!613789 () (_ BitVec 32))

(get-info :version)

(assert (=> b!1396906 (= res!935927 (or (= lt!613790 lt!613793) (not ((_ is Intermediate!10433) lt!613793)) (bvslt (x!125770 lt!613790) #b00000000000000000000000000000000) (bvsgt (x!125770 lt!613790) #b01111111111111111111111111111110) (bvslt lt!613789 #b00000000000000000000000000000000) (bvsge lt!613789 (size!46645 a!2901)) (bvslt (index!44104 lt!613790) #b00000000000000000000000000000000) (bvsge (index!44104 lt!613790) (size!46645 a!2901)) (not (= lt!613790 (Intermediate!10433 false (index!44104 lt!613790) (x!125770 lt!613790)))) (not (= lt!613793 (Intermediate!10433 (undefined!11245 lt!613793) (index!44104 lt!613793) (x!125770 lt!613793))))))))

(declare-fun lt!613792 () (_ BitVec 64))

(declare-fun lt!613794 () array!95489)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95489 (_ BitVec 32)) SeekEntryResult!10433)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396906 (= lt!613793 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613792 mask!2840) lt!613792 lt!613794 mask!2840))))

(assert (=> b!1396906 (= lt!613792 (select (store (arr!46094 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396906 (= lt!613794 (array!95490 (store (arr!46094 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46645 a!2901)))))

(declare-fun b!1396907 () Bool)

(assert (=> b!1396907 (= e!790861 (not e!790862))))

(declare-fun res!935930 () Bool)

(assert (=> b!1396907 (=> res!935930 e!790862)))

(assert (=> b!1396907 (= res!935930 (or (not ((_ is Intermediate!10433) lt!613790)) (undefined!11245 lt!613790)))))

(assert (=> b!1396907 e!790865))

(declare-fun res!935928 () Bool)

(assert (=> b!1396907 (=> (not res!935928) (not e!790865))))

(assert (=> b!1396907 (= res!935928 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46820 0))(
  ( (Unit!46821) )
))
(declare-fun lt!613791 () Unit!46820)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95489 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46820)

(assert (=> b!1396907 (= lt!613791 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1396907 (= lt!613790 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613789 (select (arr!46094 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1396907 (= lt!613789 (toIndex!0 (select (arr!46094 a!2901) j!112) mask!2840))))

(declare-fun b!1396908 () Bool)

(assert (=> b!1396908 (= e!790863 true)))

(declare-fun lt!613795 () SeekEntryResult!10433)

(assert (=> b!1396908 (= lt!613795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613789 lt!613792 lt!613794 mask!2840))))

(declare-fun res!935923 () Bool)

(assert (=> start!120042 (=> (not res!935923) (not e!790861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120042 (= res!935923 (validMask!0 mask!2840))))

(assert (=> start!120042 e!790861))

(assert (=> start!120042 true))

(declare-fun array_inv!35039 (array!95489) Bool)

(assert (=> start!120042 (array_inv!35039 a!2901)))

(declare-fun b!1396909 () Bool)

(declare-fun res!935931 () Bool)

(assert (=> b!1396909 (=> (not res!935931) (not e!790861))))

(assert (=> b!1396909 (= res!935931 (validKeyInArray!0 (select (arr!46094 a!2901) j!112)))))

(assert (= (and start!120042 res!935923) b!1396902))

(assert (= (and b!1396902 res!935924) b!1396905))

(assert (= (and b!1396905 res!935925) b!1396909))

(assert (= (and b!1396909 res!935931) b!1396901))

(assert (= (and b!1396901 res!935926) b!1396903))

(assert (= (and b!1396903 res!935929) b!1396907))

(assert (= (and b!1396907 res!935928) b!1396904))

(assert (= (and b!1396907 (not res!935930)) b!1396906))

(assert (= (and b!1396906 (not res!935927)) b!1396908))

(declare-fun m!1283579 () Bool)

(assert (=> b!1396905 m!1283579))

(assert (=> b!1396905 m!1283579))

(declare-fun m!1283581 () Bool)

(assert (=> b!1396905 m!1283581))

(declare-fun m!1283583 () Bool)

(assert (=> b!1396909 m!1283583))

(assert (=> b!1396909 m!1283583))

(declare-fun m!1283585 () Bool)

(assert (=> b!1396909 m!1283585))

(assert (=> b!1396907 m!1283583))

(declare-fun m!1283587 () Bool)

(assert (=> b!1396907 m!1283587))

(assert (=> b!1396907 m!1283583))

(declare-fun m!1283589 () Bool)

(assert (=> b!1396907 m!1283589))

(declare-fun m!1283591 () Bool)

(assert (=> b!1396907 m!1283591))

(assert (=> b!1396907 m!1283583))

(declare-fun m!1283593 () Bool)

(assert (=> b!1396907 m!1283593))

(assert (=> b!1396904 m!1283583))

(assert (=> b!1396904 m!1283583))

(declare-fun m!1283595 () Bool)

(assert (=> b!1396904 m!1283595))

(declare-fun m!1283597 () Bool)

(assert (=> b!1396908 m!1283597))

(declare-fun m!1283599 () Bool)

(assert (=> b!1396901 m!1283599))

(declare-fun m!1283601 () Bool)

(assert (=> b!1396906 m!1283601))

(assert (=> b!1396906 m!1283601))

(declare-fun m!1283603 () Bool)

(assert (=> b!1396906 m!1283603))

(declare-fun m!1283605 () Bool)

(assert (=> b!1396906 m!1283605))

(declare-fun m!1283607 () Bool)

(assert (=> b!1396906 m!1283607))

(declare-fun m!1283609 () Bool)

(assert (=> b!1396903 m!1283609))

(declare-fun m!1283611 () Bool)

(assert (=> start!120042 m!1283611))

(declare-fun m!1283613 () Bool)

(assert (=> start!120042 m!1283613))

(check-sat (not b!1396907) (not b!1396905) (not b!1396901) (not b!1396908) (not start!120042) (not b!1396906) (not b!1396903) (not b!1396909) (not b!1396904))
(check-sat)
