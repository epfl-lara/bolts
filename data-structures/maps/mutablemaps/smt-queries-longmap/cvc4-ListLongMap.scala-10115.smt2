; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119228 () Bool)

(assert start!119228)

(declare-fun b!1390264 () Bool)

(declare-fun res!930536 () Bool)

(declare-fun e!787363 () Bool)

(assert (=> b!1390264 (=> (not res!930536) (not e!787363))))

(declare-datatypes ((array!95083 0))(
  ( (array!95084 (arr!45903 (Array (_ BitVec 32) (_ BitVec 64))) (size!46454 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95083)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95083 (_ BitVec 32)) Bool)

(assert (=> b!1390264 (= res!930536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390265 () Bool)

(declare-fun res!930535 () Bool)

(assert (=> b!1390265 (=> (not res!930535) (not e!787363))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390265 (= res!930535 (validKeyInArray!0 (select (arr!45903 a!2901) i!1037)))))

(declare-fun e!787362 () Bool)

(declare-fun b!1390266 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10242 0))(
  ( (MissingZero!10242 (index!43338 (_ BitVec 32))) (Found!10242 (index!43339 (_ BitVec 32))) (Intermediate!10242 (undefined!11054 Bool) (index!43340 (_ BitVec 32)) (x!125019 (_ BitVec 32))) (Undefined!10242) (MissingVacant!10242 (index!43341 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95083 (_ BitVec 32)) SeekEntryResult!10242)

(assert (=> b!1390266 (= e!787362 (= (seekEntryOrOpen!0 (select (arr!45903 a!2901) j!112) a!2901 mask!2840) (Found!10242 j!112)))))

(declare-fun b!1390267 () Bool)

(declare-fun res!930539 () Bool)

(assert (=> b!1390267 (=> (not res!930539) (not e!787363))))

(assert (=> b!1390267 (= res!930539 (validKeyInArray!0 (select (arr!45903 a!2901) j!112)))))

(declare-fun b!1390268 () Bool)

(assert (=> b!1390268 (= e!787363 (not true))))

(assert (=> b!1390268 e!787362))

(declare-fun res!930537 () Bool)

(assert (=> b!1390268 (=> (not res!930537) (not e!787362))))

(assert (=> b!1390268 (= res!930537 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46438 0))(
  ( (Unit!46439) )
))
(declare-fun lt!610737 () Unit!46438)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95083 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46438)

(assert (=> b!1390268 (= lt!610737 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610738 () SeekEntryResult!10242)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95083 (_ BitVec 32)) SeekEntryResult!10242)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390268 (= lt!610738 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45903 a!2901) j!112) mask!2840) (select (arr!45903 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390269 () Bool)

(declare-fun res!930534 () Bool)

(assert (=> b!1390269 (=> (not res!930534) (not e!787363))))

(declare-datatypes ((List!32602 0))(
  ( (Nil!32599) (Cons!32598 (h!33816 (_ BitVec 64)) (t!47303 List!32602)) )
))
(declare-fun arrayNoDuplicates!0 (array!95083 (_ BitVec 32) List!32602) Bool)

(assert (=> b!1390269 (= res!930534 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32599))))

(declare-fun res!930538 () Bool)

(assert (=> start!119228 (=> (not res!930538) (not e!787363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119228 (= res!930538 (validMask!0 mask!2840))))

(assert (=> start!119228 e!787363))

(assert (=> start!119228 true))

(declare-fun array_inv!34848 (array!95083) Bool)

(assert (=> start!119228 (array_inv!34848 a!2901)))

(declare-fun b!1390270 () Bool)

(declare-fun res!930540 () Bool)

(assert (=> b!1390270 (=> (not res!930540) (not e!787363))))

(assert (=> b!1390270 (= res!930540 (and (= (size!46454 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46454 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46454 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119228 res!930538) b!1390270))

(assert (= (and b!1390270 res!930540) b!1390265))

(assert (= (and b!1390265 res!930535) b!1390267))

(assert (= (and b!1390267 res!930539) b!1390264))

(assert (= (and b!1390264 res!930536) b!1390269))

(assert (= (and b!1390269 res!930534) b!1390268))

(assert (= (and b!1390268 res!930537) b!1390266))

(declare-fun m!1276149 () Bool)

(assert (=> b!1390269 m!1276149))

(declare-fun m!1276151 () Bool)

(assert (=> b!1390268 m!1276151))

(declare-fun m!1276153 () Bool)

(assert (=> b!1390268 m!1276153))

(assert (=> b!1390268 m!1276151))

(declare-fun m!1276155 () Bool)

(assert (=> b!1390268 m!1276155))

(assert (=> b!1390268 m!1276153))

(assert (=> b!1390268 m!1276151))

(declare-fun m!1276157 () Bool)

(assert (=> b!1390268 m!1276157))

(declare-fun m!1276159 () Bool)

(assert (=> b!1390268 m!1276159))

(assert (=> b!1390267 m!1276151))

(assert (=> b!1390267 m!1276151))

(declare-fun m!1276161 () Bool)

(assert (=> b!1390267 m!1276161))

(declare-fun m!1276163 () Bool)

(assert (=> start!119228 m!1276163))

(declare-fun m!1276165 () Bool)

(assert (=> start!119228 m!1276165))

(declare-fun m!1276167 () Bool)

(assert (=> b!1390264 m!1276167))

(declare-fun m!1276169 () Bool)

(assert (=> b!1390265 m!1276169))

(assert (=> b!1390265 m!1276169))

(declare-fun m!1276171 () Bool)

(assert (=> b!1390265 m!1276171))

(assert (=> b!1390266 m!1276151))

(assert (=> b!1390266 m!1276151))

(declare-fun m!1276173 () Bool)

(assert (=> b!1390266 m!1276173))

(push 1)

(assert (not start!119228))

(assert (not b!1390267))

(assert (not b!1390268))

(assert (not b!1390264))

(assert (not b!1390266))

(assert (not b!1390269))

(assert (not b!1390265))

(check-sat)

(pop 1)

(push 1)

(check-sat)

