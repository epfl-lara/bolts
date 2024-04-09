; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119394 () Bool)

(assert start!119394)

(declare-fun b!1391329 () Bool)

(declare-fun res!931307 () Bool)

(declare-fun e!787911 () Bool)

(assert (=> b!1391329 (=> (not res!931307) (not e!787911))))

(declare-datatypes ((array!95147 0))(
  ( (array!95148 (arr!45932 (Array (_ BitVec 32) (_ BitVec 64))) (size!46483 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95147)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391329 (= res!931307 (validKeyInArray!0 (select (arr!45932 a!2901) j!112)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!787912 () Bool)

(declare-fun b!1391330 () Bool)

(declare-datatypes ((SeekEntryResult!10271 0))(
  ( (MissingZero!10271 (index!43454 (_ BitVec 32))) (Found!10271 (index!43455 (_ BitVec 32))) (Intermediate!10271 (undefined!11083 Bool) (index!43456 (_ BitVec 32)) (x!125140 (_ BitVec 32))) (Undefined!10271) (MissingVacant!10271 (index!43457 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95147 (_ BitVec 32)) SeekEntryResult!10271)

(assert (=> b!1391330 (= e!787912 (= (seekEntryOrOpen!0 (select (arr!45932 a!2901) j!112) a!2901 mask!2840) (Found!10271 j!112)))))

(declare-fun b!1391331 () Bool)

(declare-fun res!931308 () Bool)

(assert (=> b!1391331 (=> (not res!931308) (not e!787911))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1391331 (= res!931308 (and (= (size!46483 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46483 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46483 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391332 () Bool)

(assert (=> b!1391332 (= e!787911 (not true))))

(assert (=> b!1391332 e!787912))

(declare-fun res!931309 () Bool)

(assert (=> b!1391332 (=> (not res!931309) (not e!787912))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95147 (_ BitVec 32)) Bool)

(assert (=> b!1391332 (= res!931309 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46496 0))(
  ( (Unit!46497) )
))
(declare-fun lt!611136 () Unit!46496)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95147 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46496)

(assert (=> b!1391332 (= lt!611136 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!611137 () SeekEntryResult!10271)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95147 (_ BitVec 32)) SeekEntryResult!10271)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391332 (= lt!611137 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45932 a!2901) j!112) mask!2840) (select (arr!45932 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391333 () Bool)

(declare-fun res!931305 () Bool)

(assert (=> b!1391333 (=> (not res!931305) (not e!787911))))

(assert (=> b!1391333 (= res!931305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391334 () Bool)

(declare-fun res!931311 () Bool)

(assert (=> b!1391334 (=> (not res!931311) (not e!787911))))

(assert (=> b!1391334 (= res!931311 (validKeyInArray!0 (select (arr!45932 a!2901) i!1037)))))

(declare-fun res!931306 () Bool)

(assert (=> start!119394 (=> (not res!931306) (not e!787911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119394 (= res!931306 (validMask!0 mask!2840))))

(assert (=> start!119394 e!787911))

(assert (=> start!119394 true))

(declare-fun array_inv!34877 (array!95147) Bool)

(assert (=> start!119394 (array_inv!34877 a!2901)))

(declare-fun b!1391335 () Bool)

(declare-fun res!931310 () Bool)

(assert (=> b!1391335 (=> (not res!931310) (not e!787911))))

(declare-datatypes ((List!32631 0))(
  ( (Nil!32628) (Cons!32627 (h!33851 (_ BitVec 64)) (t!47332 List!32631)) )
))
(declare-fun arrayNoDuplicates!0 (array!95147 (_ BitVec 32) List!32631) Bool)

(assert (=> b!1391335 (= res!931310 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32628))))

(assert (= (and start!119394 res!931306) b!1391331))

(assert (= (and b!1391331 res!931308) b!1391334))

(assert (= (and b!1391334 res!931311) b!1391329))

(assert (= (and b!1391329 res!931307) b!1391333))

(assert (= (and b!1391333 res!931305) b!1391335))

(assert (= (and b!1391335 res!931310) b!1391332))

(assert (= (and b!1391332 res!931309) b!1391330))

(declare-fun m!1277161 () Bool)

(assert (=> b!1391329 m!1277161))

(assert (=> b!1391329 m!1277161))

(declare-fun m!1277163 () Bool)

(assert (=> b!1391329 m!1277163))

(declare-fun m!1277165 () Bool)

(assert (=> start!119394 m!1277165))

(declare-fun m!1277167 () Bool)

(assert (=> start!119394 m!1277167))

(assert (=> b!1391330 m!1277161))

(assert (=> b!1391330 m!1277161))

(declare-fun m!1277169 () Bool)

(assert (=> b!1391330 m!1277169))

(declare-fun m!1277171 () Bool)

(assert (=> b!1391333 m!1277171))

(assert (=> b!1391332 m!1277161))

(declare-fun m!1277173 () Bool)

(assert (=> b!1391332 m!1277173))

(assert (=> b!1391332 m!1277161))

(declare-fun m!1277175 () Bool)

(assert (=> b!1391332 m!1277175))

(assert (=> b!1391332 m!1277173))

(assert (=> b!1391332 m!1277161))

(declare-fun m!1277177 () Bool)

(assert (=> b!1391332 m!1277177))

(declare-fun m!1277179 () Bool)

(assert (=> b!1391332 m!1277179))

(declare-fun m!1277181 () Bool)

(assert (=> b!1391335 m!1277181))

(declare-fun m!1277183 () Bool)

(assert (=> b!1391334 m!1277183))

(assert (=> b!1391334 m!1277183))

(declare-fun m!1277185 () Bool)

(assert (=> b!1391334 m!1277185))

(check-sat (not b!1391330) (not b!1391329) (not b!1391333) (not b!1391334) (not b!1391332) (not start!119394) (not b!1391335))
(check-sat)
