; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119226 () Bool)

(assert start!119226)

(declare-fun b!1390243 () Bool)

(declare-fun res!930519 () Bool)

(declare-fun e!787354 () Bool)

(assert (=> b!1390243 (=> (not res!930519) (not e!787354))))

(declare-datatypes ((array!95081 0))(
  ( (array!95082 (arr!45902 (Array (_ BitVec 32) (_ BitVec 64))) (size!46453 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95081)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390243 (= res!930519 (validKeyInArray!0 (select (arr!45902 a!2901) j!112)))))

(declare-fun b!1390244 () Bool)

(declare-fun res!930517 () Bool)

(assert (=> b!1390244 (=> (not res!930517) (not e!787354))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390244 (= res!930517 (validKeyInArray!0 (select (arr!45902 a!2901) i!1037)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1390245 () Bool)

(declare-fun e!787353 () Bool)

(declare-datatypes ((SeekEntryResult!10241 0))(
  ( (MissingZero!10241 (index!43334 (_ BitVec 32))) (Found!10241 (index!43335 (_ BitVec 32))) (Intermediate!10241 (undefined!11053 Bool) (index!43336 (_ BitVec 32)) (x!125018 (_ BitVec 32))) (Undefined!10241) (MissingVacant!10241 (index!43337 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95081 (_ BitVec 32)) SeekEntryResult!10241)

(assert (=> b!1390245 (= e!787353 (= (seekEntryOrOpen!0 (select (arr!45902 a!2901) j!112) a!2901 mask!2840) (Found!10241 j!112)))))

(declare-fun b!1390246 () Bool)

(declare-fun res!930514 () Bool)

(assert (=> b!1390246 (=> (not res!930514) (not e!787354))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95081 (_ BitVec 32)) Bool)

(assert (=> b!1390246 (= res!930514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390247 () Bool)

(assert (=> b!1390247 (= e!787354 (not true))))

(assert (=> b!1390247 e!787353))

(declare-fun res!930516 () Bool)

(assert (=> b!1390247 (=> (not res!930516) (not e!787353))))

(assert (=> b!1390247 (= res!930516 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46436 0))(
  ( (Unit!46437) )
))
(declare-fun lt!610731 () Unit!46436)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95081 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46436)

(assert (=> b!1390247 (= lt!610731 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610732 () SeekEntryResult!10241)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95081 (_ BitVec 32)) SeekEntryResult!10241)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390247 (= lt!610732 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45902 a!2901) j!112) mask!2840) (select (arr!45902 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!930518 () Bool)

(assert (=> start!119226 (=> (not res!930518) (not e!787354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119226 (= res!930518 (validMask!0 mask!2840))))

(assert (=> start!119226 e!787354))

(assert (=> start!119226 true))

(declare-fun array_inv!34847 (array!95081) Bool)

(assert (=> start!119226 (array_inv!34847 a!2901)))

(declare-fun b!1390248 () Bool)

(declare-fun res!930513 () Bool)

(assert (=> b!1390248 (=> (not res!930513) (not e!787354))))

(declare-datatypes ((List!32601 0))(
  ( (Nil!32598) (Cons!32597 (h!33815 (_ BitVec 64)) (t!47302 List!32601)) )
))
(declare-fun arrayNoDuplicates!0 (array!95081 (_ BitVec 32) List!32601) Bool)

(assert (=> b!1390248 (= res!930513 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32598))))

(declare-fun b!1390249 () Bool)

(declare-fun res!930515 () Bool)

(assert (=> b!1390249 (=> (not res!930515) (not e!787354))))

(assert (=> b!1390249 (= res!930515 (and (= (size!46453 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46453 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46453 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119226 res!930518) b!1390249))

(assert (= (and b!1390249 res!930515) b!1390244))

(assert (= (and b!1390244 res!930517) b!1390243))

(assert (= (and b!1390243 res!930519) b!1390246))

(assert (= (and b!1390246 res!930514) b!1390248))

(assert (= (and b!1390248 res!930513) b!1390247))

(assert (= (and b!1390247 res!930516) b!1390245))

(declare-fun m!1276123 () Bool)

(assert (=> start!119226 m!1276123))

(declare-fun m!1276125 () Bool)

(assert (=> start!119226 m!1276125))

(declare-fun m!1276127 () Bool)

(assert (=> b!1390244 m!1276127))

(assert (=> b!1390244 m!1276127))

(declare-fun m!1276129 () Bool)

(assert (=> b!1390244 m!1276129))

(declare-fun m!1276131 () Bool)

(assert (=> b!1390246 m!1276131))

(declare-fun m!1276133 () Bool)

(assert (=> b!1390248 m!1276133))

(declare-fun m!1276135 () Bool)

(assert (=> b!1390245 m!1276135))

(assert (=> b!1390245 m!1276135))

(declare-fun m!1276137 () Bool)

(assert (=> b!1390245 m!1276137))

(assert (=> b!1390243 m!1276135))

(assert (=> b!1390243 m!1276135))

(declare-fun m!1276139 () Bool)

(assert (=> b!1390243 m!1276139))

(assert (=> b!1390247 m!1276135))

(declare-fun m!1276141 () Bool)

(assert (=> b!1390247 m!1276141))

(assert (=> b!1390247 m!1276135))

(declare-fun m!1276143 () Bool)

(assert (=> b!1390247 m!1276143))

(assert (=> b!1390247 m!1276141))

(assert (=> b!1390247 m!1276135))

(declare-fun m!1276145 () Bool)

(assert (=> b!1390247 m!1276145))

(declare-fun m!1276147 () Bool)

(assert (=> b!1390247 m!1276147))

(check-sat (not b!1390246) (not b!1390245) (not b!1390247) (not b!1390243) (not start!119226) (not b!1390248) (not b!1390244))
