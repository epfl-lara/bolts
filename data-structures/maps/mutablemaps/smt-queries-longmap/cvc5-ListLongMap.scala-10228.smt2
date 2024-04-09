; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120460 () Bool)

(assert start!120460)

(declare-fun res!940472 () Bool)

(declare-fun e!793837 () Bool)

(assert (=> start!120460 (=> (not res!940472) (not e!793837))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120460 (= res!940472 (validMask!0 mask!2840))))

(assert (=> start!120460 e!793837))

(assert (=> start!120460 true))

(declare-datatypes ((array!95787 0))(
  ( (array!95788 (arr!46240 (Array (_ BitVec 32) (_ BitVec 64))) (size!46791 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95787)

(declare-fun array_inv!35185 (array!95787) Bool)

(assert (=> start!120460 (array_inv!35185 a!2901)))

(declare-fun b!1401852 () Bool)

(declare-fun res!940475 () Bool)

(assert (=> b!1401852 (=> (not res!940475) (not e!793837))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95787 (_ BitVec 32)) Bool)

(assert (=> b!1401852 (= res!940475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401853 () Bool)

(declare-fun res!940477 () Bool)

(assert (=> b!1401853 (=> (not res!940477) (not e!793837))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401853 (= res!940477 (validKeyInArray!0 (select (arr!46240 a!2901) i!1037)))))

(declare-fun e!793832 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1401854 () Bool)

(declare-datatypes ((SeekEntryResult!10579 0))(
  ( (MissingZero!10579 (index!44692 (_ BitVec 32))) (Found!10579 (index!44693 (_ BitVec 32))) (Intermediate!10579 (undefined!11391 Bool) (index!44694 (_ BitVec 32)) (x!126329 (_ BitVec 32))) (Undefined!10579) (MissingVacant!10579 (index!44695 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95787 (_ BitVec 32)) SeekEntryResult!10579)

(assert (=> b!1401854 (= e!793832 (= (seekEntryOrOpen!0 (select (arr!46240 a!2901) j!112) a!2901 mask!2840) (Found!10579 j!112)))))

(declare-fun b!1401855 () Bool)

(declare-fun e!793833 () Bool)

(assert (=> b!1401855 (= e!793837 (not e!793833))))

(declare-fun res!940482 () Bool)

(assert (=> b!1401855 (=> res!940482 e!793833)))

(declare-fun lt!617238 () SeekEntryResult!10579)

(assert (=> b!1401855 (= res!940482 (or (not (is-Intermediate!10579 lt!617238)) (undefined!11391 lt!617238)))))

(assert (=> b!1401855 e!793832))

(declare-fun res!940473 () Bool)

(assert (=> b!1401855 (=> (not res!940473) (not e!793832))))

(assert (=> b!1401855 (= res!940473 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47112 0))(
  ( (Unit!47113) )
))
(declare-fun lt!617237 () Unit!47112)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95787 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47112)

(assert (=> b!1401855 (= lt!617237 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!617235 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95787 (_ BitVec 32)) SeekEntryResult!10579)

(assert (=> b!1401855 (= lt!617238 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617235 (select (arr!46240 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401855 (= lt!617235 (toIndex!0 (select (arr!46240 a!2901) j!112) mask!2840))))

(declare-fun b!1401856 () Bool)

(declare-fun e!793838 () Bool)

(declare-fun e!793834 () Bool)

(assert (=> b!1401856 (= e!793838 e!793834)))

(declare-fun res!940478 () Bool)

(assert (=> b!1401856 (=> res!940478 e!793834)))

(declare-fun lt!617232 () SeekEntryResult!10579)

(assert (=> b!1401856 (= res!940478 (or (bvslt (x!126329 lt!617238) #b00000000000000000000000000000000) (bvsgt (x!126329 lt!617238) #b01111111111111111111111111111110) (bvslt (x!126329 lt!617232) #b00000000000000000000000000000000) (bvsgt (x!126329 lt!617232) #b01111111111111111111111111111110) (bvslt lt!617235 #b00000000000000000000000000000000) (bvsge lt!617235 (size!46791 a!2901)) (bvslt (index!44694 lt!617238) #b00000000000000000000000000000000) (bvsge (index!44694 lt!617238) (size!46791 a!2901)) (bvslt (index!44694 lt!617232) #b00000000000000000000000000000000) (bvsge (index!44694 lt!617232) (size!46791 a!2901)) (not (= lt!617238 (Intermediate!10579 false (index!44694 lt!617238) (x!126329 lt!617238)))) (not (= lt!617232 (Intermediate!10579 false (index!44694 lt!617232) (x!126329 lt!617232))))))))

(declare-fun e!793836 () Bool)

(assert (=> b!1401856 e!793836))

(declare-fun res!940476 () Bool)

(assert (=> b!1401856 (=> (not res!940476) (not e!793836))))

(assert (=> b!1401856 (= res!940476 (and (not (undefined!11391 lt!617232)) (= (index!44694 lt!617232) i!1037) (bvslt (x!126329 lt!617232) (x!126329 lt!617238)) (= (select (store (arr!46240 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44694 lt!617232)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!617234 () Unit!47112)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95787 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47112)

(assert (=> b!1401856 (= lt!617234 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617235 (x!126329 lt!617238) (index!44694 lt!617238) (x!126329 lt!617232) (index!44694 lt!617232) (undefined!11391 lt!617232) mask!2840))))

(declare-fun b!1401857 () Bool)

(assert (=> b!1401857 (= e!793833 e!793838)))

(declare-fun res!940474 () Bool)

(assert (=> b!1401857 (=> res!940474 e!793838)))

(assert (=> b!1401857 (= res!940474 (or (= lt!617238 lt!617232) (not (is-Intermediate!10579 lt!617232))))))

(declare-fun lt!617239 () array!95787)

(declare-fun lt!617233 () (_ BitVec 64))

(assert (=> b!1401857 (= lt!617232 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617233 mask!2840) lt!617233 lt!617239 mask!2840))))

(assert (=> b!1401857 (= lt!617233 (select (store (arr!46240 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401857 (= lt!617239 (array!95788 (store (arr!46240 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46791 a!2901)))))

(declare-fun b!1401858 () Bool)

(declare-fun res!940481 () Bool)

(assert (=> b!1401858 (=> (not res!940481) (not e!793837))))

(declare-datatypes ((List!32939 0))(
  ( (Nil!32936) (Cons!32935 (h!34183 (_ BitVec 64)) (t!47640 List!32939)) )
))
(declare-fun arrayNoDuplicates!0 (array!95787 (_ BitVec 32) List!32939) Bool)

(assert (=> b!1401858 (= res!940481 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32936))))

(declare-fun b!1401859 () Bool)

(assert (=> b!1401859 (= e!793834 true)))

(declare-fun lt!617236 () SeekEntryResult!10579)

(assert (=> b!1401859 (= lt!617236 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617235 lt!617233 lt!617239 mask!2840))))

(declare-fun b!1401860 () Bool)

(declare-fun res!940480 () Bool)

(assert (=> b!1401860 (=> (not res!940480) (not e!793837))))

(assert (=> b!1401860 (= res!940480 (and (= (size!46791 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46791 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46791 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401861 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95787 (_ BitVec 32)) SeekEntryResult!10579)

(assert (=> b!1401861 (= e!793836 (= (seekEntryOrOpen!0 lt!617233 lt!617239 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126329 lt!617232) (index!44694 lt!617232) (index!44694 lt!617232) (select (arr!46240 a!2901) j!112) lt!617239 mask!2840)))))

(declare-fun b!1401862 () Bool)

(declare-fun res!940479 () Bool)

(assert (=> b!1401862 (=> (not res!940479) (not e!793837))))

(assert (=> b!1401862 (= res!940479 (validKeyInArray!0 (select (arr!46240 a!2901) j!112)))))

(assert (= (and start!120460 res!940472) b!1401860))

(assert (= (and b!1401860 res!940480) b!1401853))

(assert (= (and b!1401853 res!940477) b!1401862))

(assert (= (and b!1401862 res!940479) b!1401852))

(assert (= (and b!1401852 res!940475) b!1401858))

(assert (= (and b!1401858 res!940481) b!1401855))

(assert (= (and b!1401855 res!940473) b!1401854))

(assert (= (and b!1401855 (not res!940482)) b!1401857))

(assert (= (and b!1401857 (not res!940474)) b!1401856))

(assert (= (and b!1401856 res!940476) b!1401861))

(assert (= (and b!1401856 (not res!940478)) b!1401859))

(declare-fun m!1289861 () Bool)

(assert (=> b!1401855 m!1289861))

(declare-fun m!1289863 () Bool)

(assert (=> b!1401855 m!1289863))

(assert (=> b!1401855 m!1289861))

(declare-fun m!1289865 () Bool)

(assert (=> b!1401855 m!1289865))

(declare-fun m!1289867 () Bool)

(assert (=> b!1401855 m!1289867))

(assert (=> b!1401855 m!1289861))

(declare-fun m!1289869 () Bool)

(assert (=> b!1401855 m!1289869))

(declare-fun m!1289871 () Bool)

(assert (=> b!1401852 m!1289871))

(declare-fun m!1289873 () Bool)

(assert (=> b!1401859 m!1289873))

(assert (=> b!1401854 m!1289861))

(assert (=> b!1401854 m!1289861))

(declare-fun m!1289875 () Bool)

(assert (=> b!1401854 m!1289875))

(declare-fun m!1289877 () Bool)

(assert (=> b!1401856 m!1289877))

(declare-fun m!1289879 () Bool)

(assert (=> b!1401856 m!1289879))

(declare-fun m!1289881 () Bool)

(assert (=> b!1401856 m!1289881))

(declare-fun m!1289883 () Bool)

(assert (=> b!1401861 m!1289883))

(assert (=> b!1401861 m!1289861))

(assert (=> b!1401861 m!1289861))

(declare-fun m!1289885 () Bool)

(assert (=> b!1401861 m!1289885))

(assert (=> b!1401862 m!1289861))

(assert (=> b!1401862 m!1289861))

(declare-fun m!1289887 () Bool)

(assert (=> b!1401862 m!1289887))

(declare-fun m!1289889 () Bool)

(assert (=> b!1401857 m!1289889))

(assert (=> b!1401857 m!1289889))

(declare-fun m!1289891 () Bool)

(assert (=> b!1401857 m!1289891))

(assert (=> b!1401857 m!1289877))

(declare-fun m!1289893 () Bool)

(assert (=> b!1401857 m!1289893))

(declare-fun m!1289895 () Bool)

(assert (=> b!1401853 m!1289895))

(assert (=> b!1401853 m!1289895))

(declare-fun m!1289897 () Bool)

(assert (=> b!1401853 m!1289897))

(declare-fun m!1289899 () Bool)

(assert (=> start!120460 m!1289899))

(declare-fun m!1289901 () Bool)

(assert (=> start!120460 m!1289901))

(declare-fun m!1289903 () Bool)

(assert (=> b!1401858 m!1289903))

(push 1)

