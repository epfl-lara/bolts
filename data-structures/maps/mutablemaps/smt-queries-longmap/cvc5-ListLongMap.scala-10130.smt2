; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119476 () Bool)

(assert start!119476)

(declare-fun b!1391871 () Bool)

(declare-fun res!931706 () Bool)

(declare-fun e!788201 () Bool)

(assert (=> b!1391871 (=> (not res!931706) (not e!788201))))

(declare-datatypes ((array!95178 0))(
  ( (array!95179 (arr!45946 (Array (_ BitVec 32) (_ BitVec 64))) (size!46497 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95178)

(declare-datatypes ((List!32645 0))(
  ( (Nil!32642) (Cons!32641 (h!33868 (_ BitVec 64)) (t!47346 List!32645)) )
))
(declare-fun arrayNoDuplicates!0 (array!95178 (_ BitVec 32) List!32645) Bool)

(assert (=> b!1391871 (= res!931706 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32642))))

(declare-fun b!1391872 () Bool)

(declare-fun res!931704 () Bool)

(assert (=> b!1391872 (=> (not res!931704) (not e!788201))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391872 (= res!931704 (validKeyInArray!0 (select (arr!45946 a!2901) i!1037)))))

(declare-fun res!931707 () Bool)

(assert (=> start!119476 (=> (not res!931707) (not e!788201))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119476 (= res!931707 (validMask!0 mask!2840))))

(assert (=> start!119476 e!788201))

(assert (=> start!119476 true))

(declare-fun array_inv!34891 (array!95178) Bool)

(assert (=> start!119476 (array_inv!34891 a!2901)))

(declare-fun b!1391873 () Bool)

(declare-fun res!931705 () Bool)

(assert (=> b!1391873 (=> (not res!931705) (not e!788201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95178 (_ BitVec 32)) Bool)

(assert (=> b!1391873 (= res!931705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391874 () Bool)

(declare-fun res!931700 () Bool)

(assert (=> b!1391874 (=> (not res!931700) (not e!788201))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1391874 (= res!931700 (and (= (size!46497 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46497 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46497 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391875 () Bool)

(declare-fun e!788204 () Bool)

(assert (=> b!1391875 (= e!788201 (not e!788204))))

(declare-fun res!931701 () Bool)

(assert (=> b!1391875 (=> res!931701 e!788204)))

(declare-datatypes ((SeekEntryResult!10285 0))(
  ( (MissingZero!10285 (index!43510 (_ BitVec 32))) (Found!10285 (index!43511 (_ BitVec 32))) (Intermediate!10285 (undefined!11097 Bool) (index!43512 (_ BitVec 32)) (x!125200 (_ BitVec 32))) (Undefined!10285) (MissingVacant!10285 (index!43513 (_ BitVec 32))) )
))
(declare-fun lt!611349 () SeekEntryResult!10285)

(assert (=> b!1391875 (= res!931701 (or (not (is-Intermediate!10285 lt!611349)) (undefined!11097 lt!611349)))))

(declare-fun e!788203 () Bool)

(assert (=> b!1391875 e!788203))

(declare-fun res!931703 () Bool)

(assert (=> b!1391875 (=> (not res!931703) (not e!788203))))

(assert (=> b!1391875 (= res!931703 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46524 0))(
  ( (Unit!46525) )
))
(declare-fun lt!611350 () Unit!46524)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95178 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46524)

(assert (=> b!1391875 (= lt!611350 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95178 (_ BitVec 32)) SeekEntryResult!10285)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391875 (= lt!611349 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45946 a!2901) j!112) mask!2840) (select (arr!45946 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391876 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95178 (_ BitVec 32)) SeekEntryResult!10285)

(assert (=> b!1391876 (= e!788203 (= (seekEntryOrOpen!0 (select (arr!45946 a!2901) j!112) a!2901 mask!2840) (Found!10285 j!112)))))

(declare-fun b!1391877 () Bool)

(declare-fun res!931702 () Bool)

(assert (=> b!1391877 (=> (not res!931702) (not e!788201))))

(assert (=> b!1391877 (= res!931702 (validKeyInArray!0 (select (arr!45946 a!2901) j!112)))))

(declare-fun b!1391878 () Bool)

(assert (=> b!1391878 (= e!788204 true)))

(declare-fun lt!611348 () (_ BitVec 32))

(assert (=> b!1391878 (= lt!611348 (toIndex!0 (select (store (arr!45946 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(assert (= (and start!119476 res!931707) b!1391874))

(assert (= (and b!1391874 res!931700) b!1391872))

(assert (= (and b!1391872 res!931704) b!1391877))

(assert (= (and b!1391877 res!931702) b!1391873))

(assert (= (and b!1391873 res!931705) b!1391871))

(assert (= (and b!1391871 res!931706) b!1391875))

(assert (= (and b!1391875 res!931703) b!1391876))

(assert (= (and b!1391875 (not res!931701)) b!1391878))

(declare-fun m!1277687 () Bool)

(assert (=> b!1391876 m!1277687))

(assert (=> b!1391876 m!1277687))

(declare-fun m!1277689 () Bool)

(assert (=> b!1391876 m!1277689))

(declare-fun m!1277691 () Bool)

(assert (=> b!1391872 m!1277691))

(assert (=> b!1391872 m!1277691))

(declare-fun m!1277693 () Bool)

(assert (=> b!1391872 m!1277693))

(assert (=> b!1391877 m!1277687))

(assert (=> b!1391877 m!1277687))

(declare-fun m!1277695 () Bool)

(assert (=> b!1391877 m!1277695))

(declare-fun m!1277697 () Bool)

(assert (=> b!1391871 m!1277697))

(declare-fun m!1277699 () Bool)

(assert (=> b!1391873 m!1277699))

(assert (=> b!1391875 m!1277687))

(declare-fun m!1277701 () Bool)

(assert (=> b!1391875 m!1277701))

(assert (=> b!1391875 m!1277687))

(declare-fun m!1277703 () Bool)

(assert (=> b!1391875 m!1277703))

(assert (=> b!1391875 m!1277701))

(assert (=> b!1391875 m!1277687))

(declare-fun m!1277705 () Bool)

(assert (=> b!1391875 m!1277705))

(declare-fun m!1277707 () Bool)

(assert (=> b!1391875 m!1277707))

(declare-fun m!1277709 () Bool)

(assert (=> start!119476 m!1277709))

(declare-fun m!1277711 () Bool)

(assert (=> start!119476 m!1277711))

(declare-fun m!1277713 () Bool)

(assert (=> b!1391878 m!1277713))

(declare-fun m!1277715 () Bool)

(assert (=> b!1391878 m!1277715))

(assert (=> b!1391878 m!1277715))

(declare-fun m!1277717 () Bool)

(assert (=> b!1391878 m!1277717))

(push 1)

(assert (not b!1391871))

(assert (not start!119476))

(assert (not b!1391877))

(assert (not b!1391872))

(assert (not b!1391876))

(assert (not b!1391873))

(assert (not b!1391878))

(assert (not b!1391875))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

