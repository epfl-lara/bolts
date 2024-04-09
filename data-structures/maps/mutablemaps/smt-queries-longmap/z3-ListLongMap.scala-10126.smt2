; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119400 () Bool)

(assert start!119400)

(declare-fun b!1391392 () Bool)

(declare-fun e!787938 () Bool)

(declare-datatypes ((SeekEntryResult!10274 0))(
  ( (MissingZero!10274 (index!43466 (_ BitVec 32))) (Found!10274 (index!43467 (_ BitVec 32))) (Intermediate!10274 (undefined!11086 Bool) (index!43468 (_ BitVec 32)) (x!125151 (_ BitVec 32))) (Undefined!10274) (MissingVacant!10274 (index!43469 (_ BitVec 32))) )
))
(declare-fun lt!611154 () SeekEntryResult!10274)

(declare-fun mask!2840 () (_ BitVec 32))

(get-info :version)

(assert (=> b!1391392 (= e!787938 (not (or (not ((_ is Intermediate!10274) lt!611154)) (undefined!11086 lt!611154) (bvsge mask!2840 #b00000000000000000000000000000000))))))

(declare-fun e!787939 () Bool)

(assert (=> b!1391392 e!787939))

(declare-fun res!931373 () Bool)

(assert (=> b!1391392 (=> (not res!931373) (not e!787939))))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((array!95153 0))(
  ( (array!95154 (arr!45935 (Array (_ BitVec 32) (_ BitVec 64))) (size!46486 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95153)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95153 (_ BitVec 32)) Bool)

(assert (=> b!1391392 (= res!931373 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46502 0))(
  ( (Unit!46503) )
))
(declare-fun lt!611155 () Unit!46502)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95153 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46502)

(assert (=> b!1391392 (= lt!611155 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95153 (_ BitVec 32)) SeekEntryResult!10274)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391392 (= lt!611154 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45935 a!2901) j!112) mask!2840) (select (arr!45935 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391393 () Bool)

(declare-fun res!931371 () Bool)

(assert (=> b!1391393 (=> (not res!931371) (not e!787938))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391393 (= res!931371 (validKeyInArray!0 (select (arr!45935 a!2901) j!112)))))

(declare-fun b!1391394 () Bool)

(declare-fun res!931372 () Bool)

(assert (=> b!1391394 (=> (not res!931372) (not e!787938))))

(assert (=> b!1391394 (= res!931372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391395 () Bool)

(declare-fun res!931368 () Bool)

(assert (=> b!1391395 (=> (not res!931368) (not e!787938))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1391395 (= res!931368 (and (= (size!46486 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46486 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46486 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391396 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95153 (_ BitVec 32)) SeekEntryResult!10274)

(assert (=> b!1391396 (= e!787939 (= (seekEntryOrOpen!0 (select (arr!45935 a!2901) j!112) a!2901 mask!2840) (Found!10274 j!112)))))

(declare-fun res!931369 () Bool)

(assert (=> start!119400 (=> (not res!931369) (not e!787938))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119400 (= res!931369 (validMask!0 mask!2840))))

(assert (=> start!119400 e!787938))

(assert (=> start!119400 true))

(declare-fun array_inv!34880 (array!95153) Bool)

(assert (=> start!119400 (array_inv!34880 a!2901)))

(declare-fun b!1391397 () Bool)

(declare-fun res!931370 () Bool)

(assert (=> b!1391397 (=> (not res!931370) (not e!787938))))

(declare-datatypes ((List!32634 0))(
  ( (Nil!32631) (Cons!32630 (h!33854 (_ BitVec 64)) (t!47335 List!32634)) )
))
(declare-fun arrayNoDuplicates!0 (array!95153 (_ BitVec 32) List!32634) Bool)

(assert (=> b!1391397 (= res!931370 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32631))))

(declare-fun b!1391398 () Bool)

(declare-fun res!931374 () Bool)

(assert (=> b!1391398 (=> (not res!931374) (not e!787938))))

(assert (=> b!1391398 (= res!931374 (validKeyInArray!0 (select (arr!45935 a!2901) i!1037)))))

(assert (= (and start!119400 res!931369) b!1391395))

(assert (= (and b!1391395 res!931368) b!1391398))

(assert (= (and b!1391398 res!931374) b!1391393))

(assert (= (and b!1391393 res!931371) b!1391394))

(assert (= (and b!1391394 res!931372) b!1391397))

(assert (= (and b!1391397 res!931370) b!1391392))

(assert (= (and b!1391392 res!931373) b!1391396))

(declare-fun m!1277239 () Bool)

(assert (=> start!119400 m!1277239))

(declare-fun m!1277241 () Bool)

(assert (=> start!119400 m!1277241))

(declare-fun m!1277243 () Bool)

(assert (=> b!1391396 m!1277243))

(assert (=> b!1391396 m!1277243))

(declare-fun m!1277245 () Bool)

(assert (=> b!1391396 m!1277245))

(assert (=> b!1391393 m!1277243))

(assert (=> b!1391393 m!1277243))

(declare-fun m!1277247 () Bool)

(assert (=> b!1391393 m!1277247))

(declare-fun m!1277249 () Bool)

(assert (=> b!1391398 m!1277249))

(assert (=> b!1391398 m!1277249))

(declare-fun m!1277251 () Bool)

(assert (=> b!1391398 m!1277251))

(declare-fun m!1277253 () Bool)

(assert (=> b!1391394 m!1277253))

(declare-fun m!1277255 () Bool)

(assert (=> b!1391397 m!1277255))

(assert (=> b!1391392 m!1277243))

(declare-fun m!1277257 () Bool)

(assert (=> b!1391392 m!1277257))

(assert (=> b!1391392 m!1277243))

(declare-fun m!1277259 () Bool)

(assert (=> b!1391392 m!1277259))

(assert (=> b!1391392 m!1277257))

(assert (=> b!1391392 m!1277243))

(declare-fun m!1277261 () Bool)

(assert (=> b!1391392 m!1277261))

(declare-fun m!1277263 () Bool)

(assert (=> b!1391392 m!1277263))

(check-sat (not b!1391392) (not b!1391396) (not b!1391393) (not b!1391397) (not start!119400) (not b!1391398) (not b!1391394))
(check-sat)
