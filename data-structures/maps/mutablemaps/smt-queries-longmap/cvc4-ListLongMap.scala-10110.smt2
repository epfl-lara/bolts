; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119198 () Bool)

(assert start!119198)

(declare-fun b!1389949 () Bool)

(declare-fun res!930221 () Bool)

(declare-fun e!787228 () Bool)

(assert (=> b!1389949 (=> (not res!930221) (not e!787228))))

(declare-datatypes ((array!95053 0))(
  ( (array!95054 (arr!45888 (Array (_ BitVec 32) (_ BitVec 64))) (size!46439 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95053)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95053 (_ BitVec 32)) Bool)

(assert (=> b!1389949 (= res!930221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389950 () Bool)

(declare-fun e!787227 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10227 0))(
  ( (MissingZero!10227 (index!43278 (_ BitVec 32))) (Found!10227 (index!43279 (_ BitVec 32))) (Intermediate!10227 (undefined!11039 Bool) (index!43280 (_ BitVec 32)) (x!124964 (_ BitVec 32))) (Undefined!10227) (MissingVacant!10227 (index!43281 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95053 (_ BitVec 32)) SeekEntryResult!10227)

(assert (=> b!1389950 (= e!787227 (= (seekEntryOrOpen!0 (select (arr!45888 a!2901) j!112) a!2901 mask!2840) (Found!10227 j!112)))))

(declare-fun b!1389951 () Bool)

(declare-fun res!930224 () Bool)

(assert (=> b!1389951 (=> (not res!930224) (not e!787228))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389951 (= res!930224 (validKeyInArray!0 (select (arr!45888 a!2901) i!1037)))))

(declare-fun res!930223 () Bool)

(assert (=> start!119198 (=> (not res!930223) (not e!787228))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119198 (= res!930223 (validMask!0 mask!2840))))

(assert (=> start!119198 e!787228))

(assert (=> start!119198 true))

(declare-fun array_inv!34833 (array!95053) Bool)

(assert (=> start!119198 (array_inv!34833 a!2901)))

(declare-fun b!1389952 () Bool)

(assert (=> b!1389952 (= e!787228 (not true))))

(assert (=> b!1389952 e!787227))

(declare-fun res!930219 () Bool)

(assert (=> b!1389952 (=> (not res!930219) (not e!787227))))

(assert (=> b!1389952 (= res!930219 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46408 0))(
  ( (Unit!46409) )
))
(declare-fun lt!610648 () Unit!46408)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95053 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46408)

(assert (=> b!1389952 (= lt!610648 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610647 () SeekEntryResult!10227)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95053 (_ BitVec 32)) SeekEntryResult!10227)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389952 (= lt!610647 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45888 a!2901) j!112) mask!2840) (select (arr!45888 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389953 () Bool)

(declare-fun res!930225 () Bool)

(assert (=> b!1389953 (=> (not res!930225) (not e!787228))))

(assert (=> b!1389953 (= res!930225 (validKeyInArray!0 (select (arr!45888 a!2901) j!112)))))

(declare-fun b!1389954 () Bool)

(declare-fun res!930222 () Bool)

(assert (=> b!1389954 (=> (not res!930222) (not e!787228))))

(assert (=> b!1389954 (= res!930222 (and (= (size!46439 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46439 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46439 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389955 () Bool)

(declare-fun res!930220 () Bool)

(assert (=> b!1389955 (=> (not res!930220) (not e!787228))))

(declare-datatypes ((List!32587 0))(
  ( (Nil!32584) (Cons!32583 (h!33801 (_ BitVec 64)) (t!47288 List!32587)) )
))
(declare-fun arrayNoDuplicates!0 (array!95053 (_ BitVec 32) List!32587) Bool)

(assert (=> b!1389955 (= res!930220 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32584))))

(assert (= (and start!119198 res!930223) b!1389954))

(assert (= (and b!1389954 res!930222) b!1389951))

(assert (= (and b!1389951 res!930224) b!1389953))

(assert (= (and b!1389953 res!930225) b!1389949))

(assert (= (and b!1389949 res!930221) b!1389955))

(assert (= (and b!1389955 res!930220) b!1389952))

(assert (= (and b!1389952 res!930219) b!1389950))

(declare-fun m!1275759 () Bool)

(assert (=> b!1389951 m!1275759))

(assert (=> b!1389951 m!1275759))

(declare-fun m!1275761 () Bool)

(assert (=> b!1389951 m!1275761))

(declare-fun m!1275763 () Bool)

(assert (=> b!1389949 m!1275763))

(declare-fun m!1275765 () Bool)

(assert (=> b!1389950 m!1275765))

(assert (=> b!1389950 m!1275765))

(declare-fun m!1275767 () Bool)

(assert (=> b!1389950 m!1275767))

(declare-fun m!1275769 () Bool)

(assert (=> start!119198 m!1275769))

(declare-fun m!1275771 () Bool)

(assert (=> start!119198 m!1275771))

(assert (=> b!1389953 m!1275765))

(assert (=> b!1389953 m!1275765))

(declare-fun m!1275773 () Bool)

(assert (=> b!1389953 m!1275773))

(assert (=> b!1389952 m!1275765))

(declare-fun m!1275775 () Bool)

(assert (=> b!1389952 m!1275775))

(assert (=> b!1389952 m!1275765))

(declare-fun m!1275777 () Bool)

(assert (=> b!1389952 m!1275777))

(assert (=> b!1389952 m!1275775))

(assert (=> b!1389952 m!1275765))

(declare-fun m!1275779 () Bool)

(assert (=> b!1389952 m!1275779))

(declare-fun m!1275781 () Bool)

(assert (=> b!1389952 m!1275781))

(declare-fun m!1275783 () Bool)

(assert (=> b!1389955 m!1275783))

(push 1)

(assert (not b!1389953))

(assert (not b!1389952))

(assert (not b!1389951))

(assert (not start!119198))

(assert (not b!1389949))

(assert (not b!1389955))

(assert (not b!1389950))

(check-sat)

(pop 1)

(push 1)

