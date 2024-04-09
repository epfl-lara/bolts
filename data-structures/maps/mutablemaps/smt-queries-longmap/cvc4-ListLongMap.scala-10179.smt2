; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120044 () Bool)

(assert start!120044)

(declare-fun b!1396928 () Bool)

(declare-fun res!935953 () Bool)

(declare-fun e!790879 () Bool)

(assert (=> b!1396928 (=> (not res!935953) (not e!790879))))

(declare-datatypes ((array!95491 0))(
  ( (array!95492 (arr!46095 (Array (_ BitVec 32) (_ BitVec 64))) (size!46646 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95491)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396928 (= res!935953 (validKeyInArray!0 (select (arr!46095 a!2901) j!112)))))

(declare-fun b!1396929 () Bool)

(declare-fun res!935955 () Bool)

(assert (=> b!1396929 (=> (not res!935955) (not e!790879))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1396929 (= res!935955 (validKeyInArray!0 (select (arr!46095 a!2901) i!1037)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!790878 () Bool)

(declare-fun b!1396931 () Bool)

(declare-datatypes ((SeekEntryResult!10434 0))(
  ( (MissingZero!10434 (index!44106 (_ BitVec 32))) (Found!10434 (index!44107 (_ BitVec 32))) (Intermediate!10434 (undefined!11246 Bool) (index!44108 (_ BitVec 32)) (x!125771 (_ BitVec 32))) (Undefined!10434) (MissingVacant!10434 (index!44109 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95491 (_ BitVec 32)) SeekEntryResult!10434)

(assert (=> b!1396931 (= e!790878 (= (seekEntryOrOpen!0 (select (arr!46095 a!2901) j!112) a!2901 mask!2840) (Found!10434 j!112)))))

(declare-fun b!1396932 () Bool)

(declare-fun res!935956 () Bool)

(assert (=> b!1396932 (=> (not res!935956) (not e!790879))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95491 (_ BitVec 32)) Bool)

(assert (=> b!1396932 (= res!935956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396933 () Bool)

(declare-fun e!790876 () Bool)

(assert (=> b!1396933 (= e!790876 true)))

(declare-fun lt!613810 () (_ BitVec 64))

(declare-fun lt!613813 () array!95491)

(declare-fun lt!613814 () SeekEntryResult!10434)

(declare-fun lt!613815 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95491 (_ BitVec 32)) SeekEntryResult!10434)

(assert (=> b!1396933 (= lt!613814 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613815 lt!613810 lt!613813 mask!2840))))

(declare-fun b!1396934 () Bool)

(declare-fun res!935958 () Bool)

(assert (=> b!1396934 (=> (not res!935958) (not e!790879))))

(assert (=> b!1396934 (= res!935958 (and (= (size!46646 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46646 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46646 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!935950 () Bool)

(assert (=> start!120044 (=> (not res!935950) (not e!790879))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120044 (= res!935950 (validMask!0 mask!2840))))

(assert (=> start!120044 e!790879))

(assert (=> start!120044 true))

(declare-fun array_inv!35040 (array!95491) Bool)

(assert (=> start!120044 (array_inv!35040 a!2901)))

(declare-fun b!1396930 () Bool)

(declare-fun e!790880 () Bool)

(assert (=> b!1396930 (= e!790879 (not e!790880))))

(declare-fun res!935952 () Bool)

(assert (=> b!1396930 (=> res!935952 e!790880)))

(declare-fun lt!613816 () SeekEntryResult!10434)

(assert (=> b!1396930 (= res!935952 (or (not (is-Intermediate!10434 lt!613816)) (undefined!11246 lt!613816)))))

(assert (=> b!1396930 e!790878))

(declare-fun res!935951 () Bool)

(assert (=> b!1396930 (=> (not res!935951) (not e!790878))))

(assert (=> b!1396930 (= res!935951 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46822 0))(
  ( (Unit!46823) )
))
(declare-fun lt!613811 () Unit!46822)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95491 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46822)

(assert (=> b!1396930 (= lt!613811 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1396930 (= lt!613816 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613815 (select (arr!46095 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396930 (= lt!613815 (toIndex!0 (select (arr!46095 a!2901) j!112) mask!2840))))

(declare-fun b!1396935 () Bool)

(declare-fun res!935954 () Bool)

(assert (=> b!1396935 (=> (not res!935954) (not e!790879))))

(declare-datatypes ((List!32794 0))(
  ( (Nil!32791) (Cons!32790 (h!34032 (_ BitVec 64)) (t!47495 List!32794)) )
))
(declare-fun arrayNoDuplicates!0 (array!95491 (_ BitVec 32) List!32794) Bool)

(assert (=> b!1396935 (= res!935954 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32791))))

(declare-fun b!1396936 () Bool)

(assert (=> b!1396936 (= e!790880 e!790876)))

(declare-fun res!935957 () Bool)

(assert (=> b!1396936 (=> res!935957 e!790876)))

(declare-fun lt!613812 () SeekEntryResult!10434)

(assert (=> b!1396936 (= res!935957 (or (= lt!613816 lt!613812) (not (is-Intermediate!10434 lt!613812)) (bvslt (x!125771 lt!613816) #b00000000000000000000000000000000) (bvsgt (x!125771 lt!613816) #b01111111111111111111111111111110) (bvslt lt!613815 #b00000000000000000000000000000000) (bvsge lt!613815 (size!46646 a!2901)) (bvslt (index!44108 lt!613816) #b00000000000000000000000000000000) (bvsge (index!44108 lt!613816) (size!46646 a!2901)) (not (= lt!613816 (Intermediate!10434 false (index!44108 lt!613816) (x!125771 lt!613816)))) (not (= lt!613812 (Intermediate!10434 (undefined!11246 lt!613812) (index!44108 lt!613812) (x!125771 lt!613812))))))))

(assert (=> b!1396936 (= lt!613812 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613810 mask!2840) lt!613810 lt!613813 mask!2840))))

(assert (=> b!1396936 (= lt!613810 (select (store (arr!46095 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396936 (= lt!613813 (array!95492 (store (arr!46095 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46646 a!2901)))))

(assert (= (and start!120044 res!935950) b!1396934))

(assert (= (and b!1396934 res!935958) b!1396929))

(assert (= (and b!1396929 res!935955) b!1396928))

(assert (= (and b!1396928 res!935953) b!1396932))

(assert (= (and b!1396932 res!935956) b!1396935))

(assert (= (and b!1396935 res!935954) b!1396930))

(assert (= (and b!1396930 res!935951) b!1396931))

(assert (= (and b!1396930 (not res!935952)) b!1396936))

(assert (= (and b!1396936 (not res!935957)) b!1396933))

(declare-fun m!1283615 () Bool)

(assert (=> b!1396931 m!1283615))

(assert (=> b!1396931 m!1283615))

(declare-fun m!1283617 () Bool)

(assert (=> b!1396931 m!1283617))

(declare-fun m!1283619 () Bool)

(assert (=> b!1396929 m!1283619))

(assert (=> b!1396929 m!1283619))

(declare-fun m!1283621 () Bool)

(assert (=> b!1396929 m!1283621))

(assert (=> b!1396928 m!1283615))

(assert (=> b!1396928 m!1283615))

(declare-fun m!1283623 () Bool)

(assert (=> b!1396928 m!1283623))

(declare-fun m!1283625 () Bool)

(assert (=> start!120044 m!1283625))

(declare-fun m!1283627 () Bool)

(assert (=> start!120044 m!1283627))

(declare-fun m!1283629 () Bool)

(assert (=> b!1396932 m!1283629))

(declare-fun m!1283631 () Bool)

(assert (=> b!1396933 m!1283631))

(assert (=> b!1396930 m!1283615))

(declare-fun m!1283633 () Bool)

(assert (=> b!1396930 m!1283633))

(assert (=> b!1396930 m!1283615))

(declare-fun m!1283635 () Bool)

(assert (=> b!1396930 m!1283635))

(assert (=> b!1396930 m!1283615))

(declare-fun m!1283637 () Bool)

(assert (=> b!1396930 m!1283637))

(declare-fun m!1283639 () Bool)

(assert (=> b!1396930 m!1283639))

(declare-fun m!1283641 () Bool)

(assert (=> b!1396935 m!1283641))

(declare-fun m!1283643 () Bool)

(assert (=> b!1396936 m!1283643))

(assert (=> b!1396936 m!1283643))

(declare-fun m!1283645 () Bool)

(assert (=> b!1396936 m!1283645))

(declare-fun m!1283647 () Bool)

(assert (=> b!1396936 m!1283647))

(declare-fun m!1283649 () Bool)

(assert (=> b!1396936 m!1283649))

(push 1)

