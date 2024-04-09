; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120006 () Bool)

(assert start!120006)

(declare-fun b!1396415 () Bool)

(declare-fun e!790592 () Bool)

(assert (=> b!1396415 (= e!790592 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!613415 () (_ BitVec 64))

(declare-fun lt!613416 () (_ BitVec 32))

(declare-datatypes ((array!95453 0))(
  ( (array!95454 (arr!46076 (Array (_ BitVec 32) (_ BitVec 64))) (size!46627 (_ BitVec 32))) )
))
(declare-fun lt!613412 () array!95453)

(declare-datatypes ((SeekEntryResult!10415 0))(
  ( (MissingZero!10415 (index!44030 (_ BitVec 32))) (Found!10415 (index!44031 (_ BitVec 32))) (Intermediate!10415 (undefined!11227 Bool) (index!44032 (_ BitVec 32)) (x!125704 (_ BitVec 32))) (Undefined!10415) (MissingVacant!10415 (index!44033 (_ BitVec 32))) )
))
(declare-fun lt!613417 () SeekEntryResult!10415)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95453 (_ BitVec 32)) SeekEntryResult!10415)

(assert (=> b!1396415 (= lt!613417 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613416 lt!613415 lt!613412 mask!2840))))

(declare-fun res!935444 () Bool)

(declare-fun e!790595 () Bool)

(assert (=> start!120006 (=> (not res!935444) (not e!790595))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120006 (= res!935444 (validMask!0 mask!2840))))

(assert (=> start!120006 e!790595))

(assert (=> start!120006 true))

(declare-fun a!2901 () array!95453)

(declare-fun array_inv!35021 (array!95453) Bool)

(assert (=> start!120006 (array_inv!35021 a!2901)))

(declare-fun b!1396416 () Bool)

(declare-fun res!935437 () Bool)

(assert (=> b!1396416 (=> (not res!935437) (not e!790595))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396416 (= res!935437 (validKeyInArray!0 (select (arr!46076 a!2901) i!1037)))))

(declare-fun b!1396417 () Bool)

(declare-fun res!935441 () Bool)

(assert (=> b!1396417 (=> (not res!935441) (not e!790595))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1396417 (= res!935441 (and (= (size!46627 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46627 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46627 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396418 () Bool)

(declare-fun e!790594 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95453 (_ BitVec 32)) SeekEntryResult!10415)

(assert (=> b!1396418 (= e!790594 (= (seekEntryOrOpen!0 (select (arr!46076 a!2901) j!112) a!2901 mask!2840) (Found!10415 j!112)))))

(declare-fun b!1396419 () Bool)

(declare-fun res!935440 () Bool)

(assert (=> b!1396419 (=> (not res!935440) (not e!790595))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95453 (_ BitVec 32)) Bool)

(assert (=> b!1396419 (= res!935440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396420 () Bool)

(declare-fun e!790593 () Bool)

(assert (=> b!1396420 (= e!790593 e!790592)))

(declare-fun res!935445 () Bool)

(assert (=> b!1396420 (=> res!935445 e!790592)))

(declare-fun lt!613413 () SeekEntryResult!10415)

(declare-fun lt!613414 () SeekEntryResult!10415)

(get-info :version)

(assert (=> b!1396420 (= res!935445 (or (= lt!613413 lt!613414) (not ((_ is Intermediate!10415) lt!613414)) (bvslt (x!125704 lt!613413) #b00000000000000000000000000000000) (bvsgt (x!125704 lt!613413) #b01111111111111111111111111111110) (bvslt lt!613416 #b00000000000000000000000000000000) (bvsge lt!613416 (size!46627 a!2901)) (bvslt (index!44032 lt!613413) #b00000000000000000000000000000000) (bvsge (index!44032 lt!613413) (size!46627 a!2901)) (not (= lt!613413 (Intermediate!10415 false (index!44032 lt!613413) (x!125704 lt!613413)))) (not (= lt!613414 (Intermediate!10415 (undefined!11227 lt!613414) (index!44032 lt!613414) (x!125704 lt!613414))))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396420 (= lt!613414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613415 mask!2840) lt!613415 lt!613412 mask!2840))))

(assert (=> b!1396420 (= lt!613415 (select (store (arr!46076 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396420 (= lt!613412 (array!95454 (store (arr!46076 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46627 a!2901)))))

(declare-fun b!1396421 () Bool)

(declare-fun res!935439 () Bool)

(assert (=> b!1396421 (=> (not res!935439) (not e!790595))))

(assert (=> b!1396421 (= res!935439 (validKeyInArray!0 (select (arr!46076 a!2901) j!112)))))

(declare-fun b!1396422 () Bool)

(assert (=> b!1396422 (= e!790595 (not e!790593))))

(declare-fun res!935438 () Bool)

(assert (=> b!1396422 (=> res!935438 e!790593)))

(assert (=> b!1396422 (= res!935438 (or (not ((_ is Intermediate!10415) lt!613413)) (undefined!11227 lt!613413)))))

(assert (=> b!1396422 e!790594))

(declare-fun res!935442 () Bool)

(assert (=> b!1396422 (=> (not res!935442) (not e!790594))))

(assert (=> b!1396422 (= res!935442 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46784 0))(
  ( (Unit!46785) )
))
(declare-fun lt!613411 () Unit!46784)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95453 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46784)

(assert (=> b!1396422 (= lt!613411 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1396422 (= lt!613413 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613416 (select (arr!46076 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1396422 (= lt!613416 (toIndex!0 (select (arr!46076 a!2901) j!112) mask!2840))))

(declare-fun b!1396423 () Bool)

(declare-fun res!935443 () Bool)

(assert (=> b!1396423 (=> (not res!935443) (not e!790595))))

(declare-datatypes ((List!32775 0))(
  ( (Nil!32772) (Cons!32771 (h!34013 (_ BitVec 64)) (t!47476 List!32775)) )
))
(declare-fun arrayNoDuplicates!0 (array!95453 (_ BitVec 32) List!32775) Bool)

(assert (=> b!1396423 (= res!935443 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32772))))

(assert (= (and start!120006 res!935444) b!1396417))

(assert (= (and b!1396417 res!935441) b!1396416))

(assert (= (and b!1396416 res!935437) b!1396421))

(assert (= (and b!1396421 res!935439) b!1396419))

(assert (= (and b!1396419 res!935440) b!1396423))

(assert (= (and b!1396423 res!935443) b!1396422))

(assert (= (and b!1396422 res!935442) b!1396418))

(assert (= (and b!1396422 (not res!935438)) b!1396420))

(assert (= (and b!1396420 (not res!935445)) b!1396415))

(declare-fun m!1282931 () Bool)

(assert (=> b!1396418 m!1282931))

(assert (=> b!1396418 m!1282931))

(declare-fun m!1282933 () Bool)

(assert (=> b!1396418 m!1282933))

(assert (=> b!1396421 m!1282931))

(assert (=> b!1396421 m!1282931))

(declare-fun m!1282935 () Bool)

(assert (=> b!1396421 m!1282935))

(assert (=> b!1396422 m!1282931))

(declare-fun m!1282937 () Bool)

(assert (=> b!1396422 m!1282937))

(assert (=> b!1396422 m!1282931))

(declare-fun m!1282939 () Bool)

(assert (=> b!1396422 m!1282939))

(assert (=> b!1396422 m!1282931))

(declare-fun m!1282941 () Bool)

(assert (=> b!1396422 m!1282941))

(declare-fun m!1282943 () Bool)

(assert (=> b!1396422 m!1282943))

(declare-fun m!1282945 () Bool)

(assert (=> b!1396423 m!1282945))

(declare-fun m!1282947 () Bool)

(assert (=> b!1396419 m!1282947))

(declare-fun m!1282949 () Bool)

(assert (=> b!1396416 m!1282949))

(assert (=> b!1396416 m!1282949))

(declare-fun m!1282951 () Bool)

(assert (=> b!1396416 m!1282951))

(declare-fun m!1282953 () Bool)

(assert (=> b!1396420 m!1282953))

(assert (=> b!1396420 m!1282953))

(declare-fun m!1282955 () Bool)

(assert (=> b!1396420 m!1282955))

(declare-fun m!1282957 () Bool)

(assert (=> b!1396420 m!1282957))

(declare-fun m!1282959 () Bool)

(assert (=> b!1396420 m!1282959))

(declare-fun m!1282961 () Bool)

(assert (=> b!1396415 m!1282961))

(declare-fun m!1282963 () Bool)

(assert (=> start!120006 m!1282963))

(declare-fun m!1282965 () Bool)

(assert (=> start!120006 m!1282965))

(check-sat (not b!1396418) (not b!1396423) (not b!1396421) (not b!1396420) (not b!1396419) (not b!1396422) (not b!1396416) (not b!1396415) (not start!120006))
(check-sat)
