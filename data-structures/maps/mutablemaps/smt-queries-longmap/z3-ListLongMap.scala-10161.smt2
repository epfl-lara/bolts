; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119772 () Bool)

(assert start!119772)

(declare-fun res!934234 () Bool)

(declare-fun e!789648 () Bool)

(assert (=> start!119772 (=> (not res!934234) (not e!789648))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119772 (= res!934234 (validMask!0 mask!2840))))

(assert (=> start!119772 e!789648))

(assert (=> start!119772 true))

(declare-datatypes ((array!95372 0))(
  ( (array!95373 (arr!46040 (Array (_ BitVec 32) (_ BitVec 64))) (size!46591 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95372)

(declare-fun array_inv!34985 (array!95372) Bool)

(assert (=> start!119772 (array_inv!34985 a!2901)))

(declare-fun b!1394710 () Bool)

(declare-fun e!789646 () Bool)

(declare-fun e!789647 () Bool)

(assert (=> b!1394710 (= e!789646 e!789647)))

(declare-fun res!934227 () Bool)

(assert (=> b!1394710 (=> res!934227 e!789647)))

(assert (=> b!1394710 (= res!934227 (bvslt mask!2840 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!10379 0))(
  ( (MissingZero!10379 (index!43886 (_ BitVec 32))) (Found!10379 (index!43887 (_ BitVec 32))) (Intermediate!10379 (undefined!11191 Bool) (index!43888 (_ BitVec 32)) (x!125554 (_ BitVec 32))) (Undefined!10379) (MissingVacant!10379 (index!43889 (_ BitVec 32))) )
))
(declare-fun lt!612683 () SeekEntryResult!10379)

(declare-fun lt!612688 () array!95372)

(declare-fun lt!612686 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95372 (_ BitVec 32)) SeekEntryResult!10379)

(assert (=> b!1394710 (= lt!612683 (seekEntryOrOpen!0 lt!612686 lt!612688 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!612685 () SeekEntryResult!10379)

(declare-datatypes ((Unit!46712 0))(
  ( (Unit!46713) )
))
(declare-fun lt!612684 () Unit!46712)

(declare-fun lt!612687 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95372 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46712)

(assert (=> b!1394710 (= lt!612684 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612687 (x!125554 lt!612685) (index!43888 lt!612685) mask!2840))))

(declare-fun b!1394711 () Bool)

(declare-fun res!934228 () Bool)

(assert (=> b!1394711 (=> res!934228 e!789646)))

(assert (=> b!1394711 (= res!934228 (or (bvslt (x!125554 lt!612685) #b00000000000000000000000000000000) (bvsgt (x!125554 lt!612685) #b01111111111111111111111111111110) (bvslt lt!612687 #b00000000000000000000000000000000) (bvsge lt!612687 (size!46591 a!2901)) (bvslt (index!43888 lt!612685) #b00000000000000000000000000000000) (bvsge (index!43888 lt!612685) (size!46591 a!2901)) (not (= lt!612685 (Intermediate!10379 false (index!43888 lt!612685) (x!125554 lt!612685))))))))

(declare-fun b!1394712 () Bool)

(declare-fun res!934231 () Bool)

(assert (=> b!1394712 (=> (not res!934231) (not e!789648))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95372 (_ BitVec 32)) Bool)

(assert (=> b!1394712 (= res!934231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394713 () Bool)

(declare-fun e!789649 () Bool)

(assert (=> b!1394713 (= e!789649 e!789646)))

(declare-fun res!934236 () Bool)

(assert (=> b!1394713 (=> res!934236 e!789646)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95372 (_ BitVec 32)) SeekEntryResult!10379)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394713 (= res!934236 (not (= lt!612685 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612686 mask!2840) lt!612686 lt!612688 mask!2840))))))

(assert (=> b!1394713 (= lt!612686 (select (store (arr!46040 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394713 (= lt!612688 (array!95373 (store (arr!46040 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46591 a!2901)))))

(declare-fun b!1394714 () Bool)

(declare-fun res!934232 () Bool)

(assert (=> b!1394714 (=> (not res!934232) (not e!789648))))

(declare-datatypes ((List!32739 0))(
  ( (Nil!32736) (Cons!32735 (h!33968 (_ BitVec 64)) (t!47440 List!32739)) )
))
(declare-fun arrayNoDuplicates!0 (array!95372 (_ BitVec 32) List!32739) Bool)

(assert (=> b!1394714 (= res!934232 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32736))))

(declare-fun b!1394715 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394715 (= e!789647 (validKeyInArray!0 lt!612686))))

(declare-fun b!1394716 () Bool)

(assert (=> b!1394716 (= e!789648 (not e!789649))))

(declare-fun res!934233 () Bool)

(assert (=> b!1394716 (=> res!934233 e!789649)))

(get-info :version)

(assert (=> b!1394716 (= res!934233 (or (not ((_ is Intermediate!10379) lt!612685)) (undefined!11191 lt!612685)))))

(assert (=> b!1394716 (= lt!612683 (Found!10379 j!112))))

(assert (=> b!1394716 (= lt!612683 (seekEntryOrOpen!0 (select (arr!46040 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394716 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!612682 () Unit!46712)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95372 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46712)

(assert (=> b!1394716 (= lt!612682 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1394716 (= lt!612685 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612687 (select (arr!46040 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394716 (= lt!612687 (toIndex!0 (select (arr!46040 a!2901) j!112) mask!2840))))

(declare-fun b!1394717 () Bool)

(declare-fun res!934229 () Bool)

(assert (=> b!1394717 (=> (not res!934229) (not e!789648))))

(assert (=> b!1394717 (= res!934229 (validKeyInArray!0 (select (arr!46040 a!2901) i!1037)))))

(declare-fun b!1394718 () Bool)

(declare-fun res!934235 () Bool)

(assert (=> b!1394718 (=> (not res!934235) (not e!789648))))

(assert (=> b!1394718 (= res!934235 (validKeyInArray!0 (select (arr!46040 a!2901) j!112)))))

(declare-fun b!1394719 () Bool)

(declare-fun res!934230 () Bool)

(assert (=> b!1394719 (=> (not res!934230) (not e!789648))))

(assert (=> b!1394719 (= res!934230 (and (= (size!46591 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46591 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46591 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119772 res!934234) b!1394719))

(assert (= (and b!1394719 res!934230) b!1394717))

(assert (= (and b!1394717 res!934229) b!1394718))

(assert (= (and b!1394718 res!934235) b!1394712))

(assert (= (and b!1394712 res!934231) b!1394714))

(assert (= (and b!1394714 res!934232) b!1394716))

(assert (= (and b!1394716 (not res!934233)) b!1394713))

(assert (= (and b!1394713 (not res!934236)) b!1394711))

(assert (= (and b!1394711 (not res!934228)) b!1394710))

(assert (= (and b!1394710 (not res!934227)) b!1394715))

(declare-fun m!1281231 () Bool)

(assert (=> b!1394714 m!1281231))

(declare-fun m!1281233 () Bool)

(assert (=> start!119772 m!1281233))

(declare-fun m!1281235 () Bool)

(assert (=> start!119772 m!1281235))

(declare-fun m!1281237 () Bool)

(assert (=> b!1394716 m!1281237))

(declare-fun m!1281239 () Bool)

(assert (=> b!1394716 m!1281239))

(assert (=> b!1394716 m!1281237))

(assert (=> b!1394716 m!1281237))

(declare-fun m!1281241 () Bool)

(assert (=> b!1394716 m!1281241))

(declare-fun m!1281243 () Bool)

(assert (=> b!1394716 m!1281243))

(assert (=> b!1394716 m!1281237))

(declare-fun m!1281245 () Bool)

(assert (=> b!1394716 m!1281245))

(declare-fun m!1281247 () Bool)

(assert (=> b!1394716 m!1281247))

(declare-fun m!1281249 () Bool)

(assert (=> b!1394710 m!1281249))

(declare-fun m!1281251 () Bool)

(assert (=> b!1394710 m!1281251))

(declare-fun m!1281253 () Bool)

(assert (=> b!1394712 m!1281253))

(declare-fun m!1281255 () Bool)

(assert (=> b!1394715 m!1281255))

(assert (=> b!1394718 m!1281237))

(assert (=> b!1394718 m!1281237))

(declare-fun m!1281257 () Bool)

(assert (=> b!1394718 m!1281257))

(declare-fun m!1281259 () Bool)

(assert (=> b!1394713 m!1281259))

(assert (=> b!1394713 m!1281259))

(declare-fun m!1281261 () Bool)

(assert (=> b!1394713 m!1281261))

(declare-fun m!1281263 () Bool)

(assert (=> b!1394713 m!1281263))

(declare-fun m!1281265 () Bool)

(assert (=> b!1394713 m!1281265))

(declare-fun m!1281267 () Bool)

(assert (=> b!1394717 m!1281267))

(assert (=> b!1394717 m!1281267))

(declare-fun m!1281269 () Bool)

(assert (=> b!1394717 m!1281269))

(check-sat (not b!1394710) (not start!119772) (not b!1394718) (not b!1394715) (not b!1394712) (not b!1394714) (not b!1394716) (not b!1394713) (not b!1394717))
(check-sat)
