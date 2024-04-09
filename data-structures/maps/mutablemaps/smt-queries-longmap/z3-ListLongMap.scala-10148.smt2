; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119694 () Bool)

(assert start!119694)

(declare-fun b!1393701 () Bool)

(declare-fun res!933225 () Bool)

(declare-fun e!789173 () Bool)

(assert (=> b!1393701 (=> (not res!933225) (not e!789173))))

(declare-datatypes ((array!95294 0))(
  ( (array!95295 (arr!46001 (Array (_ BitVec 32) (_ BitVec 64))) (size!46552 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95294)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393701 (= res!933225 (validKeyInArray!0 (select (arr!46001 a!2901) j!112)))))

(declare-fun res!933222 () Bool)

(assert (=> start!119694 (=> (not res!933222) (not e!789173))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119694 (= res!933222 (validMask!0 mask!2840))))

(assert (=> start!119694 e!789173))

(assert (=> start!119694 true))

(declare-fun array_inv!34946 (array!95294) Bool)

(assert (=> start!119694 (array_inv!34946 a!2901)))

(declare-fun b!1393702 () Bool)

(declare-fun res!933218 () Bool)

(assert (=> b!1393702 (=> (not res!933218) (not e!789173))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95294 (_ BitVec 32)) Bool)

(assert (=> b!1393702 (= res!933218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun e!789175 () Bool)

(declare-fun b!1393703 () Bool)

(declare-datatypes ((SeekEntryResult!10340 0))(
  ( (MissingZero!10340 (index!43730 (_ BitVec 32))) (Found!10340 (index!43731 (_ BitVec 32))) (Intermediate!10340 (undefined!11152 Bool) (index!43732 (_ BitVec 32)) (x!125411 (_ BitVec 32))) (Undefined!10340) (MissingVacant!10340 (index!43733 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95294 (_ BitVec 32)) SeekEntryResult!10340)

(assert (=> b!1393703 (= e!789175 (= (seekEntryOrOpen!0 (select (arr!46001 a!2901) j!112) a!2901 mask!2840) (Found!10340 j!112)))))

(declare-fun b!1393704 () Bool)

(declare-fun res!933221 () Bool)

(assert (=> b!1393704 (=> (not res!933221) (not e!789173))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1393704 (= res!933221 (validKeyInArray!0 (select (arr!46001 a!2901) i!1037)))))

(declare-fun b!1393705 () Bool)

(declare-fun res!933220 () Bool)

(assert (=> b!1393705 (=> (not res!933220) (not e!789173))))

(declare-datatypes ((List!32700 0))(
  ( (Nil!32697) (Cons!32696 (h!33929 (_ BitVec 64)) (t!47401 List!32700)) )
))
(declare-fun arrayNoDuplicates!0 (array!95294 (_ BitVec 32) List!32700) Bool)

(assert (=> b!1393705 (= res!933220 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32697))))

(declare-fun b!1393706 () Bool)

(declare-fun e!789174 () Bool)

(assert (=> b!1393706 (= e!789174 true)))

(declare-fun lt!612061 () SeekEntryResult!10340)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95294 (_ BitVec 32)) SeekEntryResult!10340)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393706 (= lt!612061 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46001 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46001 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95295 (store (arr!46001 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46552 a!2901)) mask!2840))))

(declare-fun b!1393707 () Bool)

(assert (=> b!1393707 (= e!789173 (not e!789174))))

(declare-fun res!933224 () Bool)

(assert (=> b!1393707 (=> res!933224 e!789174)))

(declare-fun lt!612060 () SeekEntryResult!10340)

(get-info :version)

(assert (=> b!1393707 (= res!933224 (or (not ((_ is Intermediate!10340) lt!612060)) (undefined!11152 lt!612060)))))

(assert (=> b!1393707 e!789175))

(declare-fun res!933219 () Bool)

(assert (=> b!1393707 (=> (not res!933219) (not e!789175))))

(assert (=> b!1393707 (= res!933219 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46634 0))(
  ( (Unit!46635) )
))
(declare-fun lt!612059 () Unit!46634)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95294 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46634)

(assert (=> b!1393707 (= lt!612059 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393707 (= lt!612060 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46001 a!2901) j!112) mask!2840) (select (arr!46001 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393708 () Bool)

(declare-fun res!933223 () Bool)

(assert (=> b!1393708 (=> (not res!933223) (not e!789173))))

(assert (=> b!1393708 (= res!933223 (and (= (size!46552 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46552 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46552 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119694 res!933222) b!1393708))

(assert (= (and b!1393708 res!933223) b!1393704))

(assert (= (and b!1393704 res!933221) b!1393701))

(assert (= (and b!1393701 res!933225) b!1393702))

(assert (= (and b!1393702 res!933218) b!1393705))

(assert (= (and b!1393705 res!933220) b!1393707))

(assert (= (and b!1393707 res!933219) b!1393703))

(assert (= (and b!1393707 (not res!933224)) b!1393706))

(declare-fun m!1279815 () Bool)

(assert (=> b!1393703 m!1279815))

(assert (=> b!1393703 m!1279815))

(declare-fun m!1279817 () Bool)

(assert (=> b!1393703 m!1279817))

(assert (=> b!1393701 m!1279815))

(assert (=> b!1393701 m!1279815))

(declare-fun m!1279819 () Bool)

(assert (=> b!1393701 m!1279819))

(declare-fun m!1279821 () Bool)

(assert (=> start!119694 m!1279821))

(declare-fun m!1279823 () Bool)

(assert (=> start!119694 m!1279823))

(declare-fun m!1279825 () Bool)

(assert (=> b!1393702 m!1279825))

(declare-fun m!1279827 () Bool)

(assert (=> b!1393706 m!1279827))

(declare-fun m!1279829 () Bool)

(assert (=> b!1393706 m!1279829))

(assert (=> b!1393706 m!1279829))

(declare-fun m!1279831 () Bool)

(assert (=> b!1393706 m!1279831))

(assert (=> b!1393706 m!1279831))

(assert (=> b!1393706 m!1279829))

(declare-fun m!1279833 () Bool)

(assert (=> b!1393706 m!1279833))

(declare-fun m!1279835 () Bool)

(assert (=> b!1393705 m!1279835))

(assert (=> b!1393707 m!1279815))

(declare-fun m!1279837 () Bool)

(assert (=> b!1393707 m!1279837))

(assert (=> b!1393707 m!1279815))

(declare-fun m!1279839 () Bool)

(assert (=> b!1393707 m!1279839))

(assert (=> b!1393707 m!1279837))

(assert (=> b!1393707 m!1279815))

(declare-fun m!1279841 () Bool)

(assert (=> b!1393707 m!1279841))

(declare-fun m!1279843 () Bool)

(assert (=> b!1393707 m!1279843))

(declare-fun m!1279845 () Bool)

(assert (=> b!1393704 m!1279845))

(assert (=> b!1393704 m!1279845))

(declare-fun m!1279847 () Bool)

(assert (=> b!1393704 m!1279847))

(check-sat (not b!1393702) (not b!1393704) (not b!1393705) (not start!119694) (not b!1393701) (not b!1393703) (not b!1393706) (not b!1393707))
