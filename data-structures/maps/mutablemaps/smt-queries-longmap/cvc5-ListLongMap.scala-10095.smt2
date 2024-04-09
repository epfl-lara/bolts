; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119068 () Bool)

(assert start!119068)

(declare-fun b!1389014 () Bool)

(declare-fun res!929320 () Bool)

(declare-fun e!786874 () Bool)

(assert (=> b!1389014 (=> (not res!929320) (not e!786874))))

(declare-datatypes ((array!94956 0))(
  ( (array!94957 (arr!45841 (Array (_ BitVec 32) (_ BitVec 64))) (size!46392 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94956)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94956 (_ BitVec 32)) Bool)

(assert (=> b!1389014 (= res!929320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389015 () Bool)

(assert (=> b!1389015 (= e!786874 false)))

(declare-fun lt!610417 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389015 (= lt!610417 (toIndex!0 (select (arr!45841 a!2901) j!112) mask!2840))))

(declare-fun b!1389016 () Bool)

(declare-fun res!929318 () Bool)

(assert (=> b!1389016 (=> (not res!929318) (not e!786874))))

(declare-datatypes ((List!32540 0))(
  ( (Nil!32537) (Cons!32536 (h!33751 (_ BitVec 64)) (t!47241 List!32540)) )
))
(declare-fun arrayNoDuplicates!0 (array!94956 (_ BitVec 32) List!32540) Bool)

(assert (=> b!1389016 (= res!929318 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32537))))

(declare-fun b!1389017 () Bool)

(declare-fun res!929319 () Bool)

(assert (=> b!1389017 (=> (not res!929319) (not e!786874))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389017 (= res!929319 (and (= (size!46392 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46392 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46392 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389018 () Bool)

(declare-fun res!929317 () Bool)

(assert (=> b!1389018 (=> (not res!929317) (not e!786874))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389018 (= res!929317 (validKeyInArray!0 (select (arr!45841 a!2901) i!1037)))))

(declare-fun res!929322 () Bool)

(assert (=> start!119068 (=> (not res!929322) (not e!786874))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119068 (= res!929322 (validMask!0 mask!2840))))

(assert (=> start!119068 e!786874))

(assert (=> start!119068 true))

(declare-fun array_inv!34786 (array!94956) Bool)

(assert (=> start!119068 (array_inv!34786 a!2901)))

(declare-fun b!1389019 () Bool)

(declare-fun res!929321 () Bool)

(assert (=> b!1389019 (=> (not res!929321) (not e!786874))))

(assert (=> b!1389019 (= res!929321 (validKeyInArray!0 (select (arr!45841 a!2901) j!112)))))

(assert (= (and start!119068 res!929322) b!1389017))

(assert (= (and b!1389017 res!929319) b!1389018))

(assert (= (and b!1389018 res!929317) b!1389019))

(assert (= (and b!1389019 res!929321) b!1389014))

(assert (= (and b!1389014 res!929320) b!1389016))

(assert (= (and b!1389016 res!929318) b!1389015))

(declare-fun m!1274747 () Bool)

(assert (=> b!1389015 m!1274747))

(assert (=> b!1389015 m!1274747))

(declare-fun m!1274749 () Bool)

(assert (=> b!1389015 m!1274749))

(declare-fun m!1274751 () Bool)

(assert (=> start!119068 m!1274751))

(declare-fun m!1274753 () Bool)

(assert (=> start!119068 m!1274753))

(declare-fun m!1274755 () Bool)

(assert (=> b!1389014 m!1274755))

(declare-fun m!1274757 () Bool)

(assert (=> b!1389016 m!1274757))

(assert (=> b!1389019 m!1274747))

(assert (=> b!1389019 m!1274747))

(declare-fun m!1274759 () Bool)

(assert (=> b!1389019 m!1274759))

(declare-fun m!1274761 () Bool)

(assert (=> b!1389018 m!1274761))

(assert (=> b!1389018 m!1274761))

(declare-fun m!1274763 () Bool)

(assert (=> b!1389018 m!1274763))

(push 1)

(assert (not b!1389018))

(assert (not b!1389014))

(assert (not b!1389015))

(assert (not start!119068))

(assert (not b!1389019))

(assert (not b!1389016))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

