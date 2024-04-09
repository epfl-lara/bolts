; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119720 () Bool)

(assert start!119720)

(declare-fun b!1394013 () Bool)

(declare-fun res!933533 () Bool)

(declare-fun e!789330 () Bool)

(assert (=> b!1394013 (=> (not res!933533) (not e!789330))))

(declare-datatypes ((array!95320 0))(
  ( (array!95321 (arr!46014 (Array (_ BitVec 32) (_ BitVec 64))) (size!46565 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95320)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394013 (= res!933533 (validKeyInArray!0 (select (arr!46014 a!2901) j!112)))))

(declare-fun b!1394014 () Bool)

(declare-fun res!933530 () Bool)

(assert (=> b!1394014 (=> (not res!933530) (not e!789330))))

(declare-datatypes ((List!32713 0))(
  ( (Nil!32710) (Cons!32709 (h!33942 (_ BitVec 64)) (t!47414 List!32713)) )
))
(declare-fun arrayNoDuplicates!0 (array!95320 (_ BitVec 32) List!32713) Bool)

(assert (=> b!1394014 (= res!933530 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32710))))

(declare-fun b!1394015 () Bool)

(declare-fun res!933535 () Bool)

(assert (=> b!1394015 (=> (not res!933535) (not e!789330))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1394015 (= res!933535 (and (= (size!46565 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46565 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46565 a!2901)) (not (= i!1037 j!112))))))

(declare-fun e!789332 () Bool)

(declare-fun b!1394016 () Bool)

(declare-datatypes ((SeekEntryResult!10353 0))(
  ( (MissingZero!10353 (index!43782 (_ BitVec 32))) (Found!10353 (index!43783 (_ BitVec 32))) (Intermediate!10353 (undefined!11165 Bool) (index!43784 (_ BitVec 32)) (x!125456 (_ BitVec 32))) (Undefined!10353) (MissingVacant!10353 (index!43785 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95320 (_ BitVec 32)) SeekEntryResult!10353)

(assert (=> b!1394016 (= e!789332 (= (seekEntryOrOpen!0 (select (arr!46014 a!2901) j!112) a!2901 mask!2840) (Found!10353 j!112)))))

(declare-fun b!1394017 () Bool)

(declare-fun res!933534 () Bool)

(assert (=> b!1394017 (=> (not res!933534) (not e!789330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95320 (_ BitVec 32)) Bool)

(assert (=> b!1394017 (= res!933534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394018 () Bool)

(declare-fun res!933531 () Bool)

(assert (=> b!1394018 (=> (not res!933531) (not e!789330))))

(assert (=> b!1394018 (= res!933531 (validKeyInArray!0 (select (arr!46014 a!2901) i!1037)))))

(declare-fun res!933537 () Bool)

(assert (=> start!119720 (=> (not res!933537) (not e!789330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119720 (= res!933537 (validMask!0 mask!2840))))

(assert (=> start!119720 e!789330))

(assert (=> start!119720 true))

(declare-fun array_inv!34959 (array!95320) Bool)

(assert (=> start!119720 (array_inv!34959 a!2901)))

(declare-fun b!1394019 () Bool)

(declare-fun e!789329 () Bool)

(assert (=> b!1394019 (= e!789329 true)))

(declare-fun lt!612176 () SeekEntryResult!10353)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95320 (_ BitVec 32)) SeekEntryResult!10353)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394019 (= lt!612176 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46014 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46014 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95321 (store (arr!46014 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46565 a!2901)) mask!2840))))

(declare-fun b!1394020 () Bool)

(assert (=> b!1394020 (= e!789330 (not e!789329))))

(declare-fun res!933532 () Bool)

(assert (=> b!1394020 (=> res!933532 e!789329)))

(declare-fun lt!612177 () SeekEntryResult!10353)

(assert (=> b!1394020 (= res!933532 (or (not (is-Intermediate!10353 lt!612177)) (undefined!11165 lt!612177)))))

(assert (=> b!1394020 e!789332))

(declare-fun res!933536 () Bool)

(assert (=> b!1394020 (=> (not res!933536) (not e!789332))))

(assert (=> b!1394020 (= res!933536 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46660 0))(
  ( (Unit!46661) )
))
(declare-fun lt!612178 () Unit!46660)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95320 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46660)

(assert (=> b!1394020 (= lt!612178 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1394020 (= lt!612177 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46014 a!2901) j!112) mask!2840) (select (arr!46014 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119720 res!933537) b!1394015))

(assert (= (and b!1394015 res!933535) b!1394018))

(assert (= (and b!1394018 res!933531) b!1394013))

(assert (= (and b!1394013 res!933533) b!1394017))

(assert (= (and b!1394017 res!933534) b!1394014))

(assert (= (and b!1394014 res!933530) b!1394020))

(assert (= (and b!1394020 res!933536) b!1394016))

(assert (= (and b!1394020 (not res!933532)) b!1394019))

(declare-fun m!1280257 () Bool)

(assert (=> b!1394016 m!1280257))

(assert (=> b!1394016 m!1280257))

(declare-fun m!1280259 () Bool)

(assert (=> b!1394016 m!1280259))

(assert (=> b!1394020 m!1280257))

(declare-fun m!1280261 () Bool)

(assert (=> b!1394020 m!1280261))

(assert (=> b!1394020 m!1280257))

(declare-fun m!1280263 () Bool)

(assert (=> b!1394020 m!1280263))

(assert (=> b!1394020 m!1280261))

(assert (=> b!1394020 m!1280257))

(declare-fun m!1280265 () Bool)

(assert (=> b!1394020 m!1280265))

(declare-fun m!1280267 () Bool)

(assert (=> b!1394020 m!1280267))

(declare-fun m!1280269 () Bool)

(assert (=> start!119720 m!1280269))

(declare-fun m!1280271 () Bool)

(assert (=> start!119720 m!1280271))

(declare-fun m!1280273 () Bool)

(assert (=> b!1394019 m!1280273))

(declare-fun m!1280275 () Bool)

(assert (=> b!1394019 m!1280275))

(assert (=> b!1394019 m!1280275))

(declare-fun m!1280277 () Bool)

(assert (=> b!1394019 m!1280277))

(assert (=> b!1394019 m!1280277))

(assert (=> b!1394019 m!1280275))

(declare-fun m!1280279 () Bool)

(assert (=> b!1394019 m!1280279))

(assert (=> b!1394013 m!1280257))

(assert (=> b!1394013 m!1280257))

(declare-fun m!1280281 () Bool)

(assert (=> b!1394013 m!1280281))

(declare-fun m!1280283 () Bool)

(assert (=> b!1394014 m!1280283))

(declare-fun m!1280285 () Bool)

(assert (=> b!1394017 m!1280285))

(declare-fun m!1280287 () Bool)

(assert (=> b!1394018 m!1280287))

(assert (=> b!1394018 m!1280287))

(declare-fun m!1280289 () Bool)

(assert (=> b!1394018 m!1280289))

(push 1)

(assert (not b!1394019))

(assert (not b!1394020))

(assert (not b!1394014))

(assert (not b!1394018))

(assert (not start!119720))

(assert (not b!1394013))

(assert (not b!1394017))

(assert (not b!1394016))

(check-sat)

