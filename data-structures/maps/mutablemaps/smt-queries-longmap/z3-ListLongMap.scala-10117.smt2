; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119238 () Bool)

(assert start!119238)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95093 0))(
  ( (array!95094 (arr!45908 (Array (_ BitVec 32) (_ BitVec 64))) (size!46459 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95093)

(declare-fun e!787408 () Bool)

(declare-fun b!1390369 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10247 0))(
  ( (MissingZero!10247 (index!43358 (_ BitVec 32))) (Found!10247 (index!43359 (_ BitVec 32))) (Intermediate!10247 (undefined!11059 Bool) (index!43360 (_ BitVec 32)) (x!125040 (_ BitVec 32))) (Undefined!10247) (MissingVacant!10247 (index!43361 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95093 (_ BitVec 32)) SeekEntryResult!10247)

(assert (=> b!1390369 (= e!787408 (= (seekEntryOrOpen!0 (select (arr!45908 a!2901) j!112) a!2901 mask!2840) (Found!10247 j!112)))))

(declare-fun res!930645 () Bool)

(declare-fun e!787409 () Bool)

(assert (=> start!119238 (=> (not res!930645) (not e!787409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119238 (= res!930645 (validMask!0 mask!2840))))

(assert (=> start!119238 e!787409))

(assert (=> start!119238 true))

(declare-fun array_inv!34853 (array!95093) Bool)

(assert (=> start!119238 (array_inv!34853 a!2901)))

(declare-fun b!1390370 () Bool)

(declare-fun res!930644 () Bool)

(assert (=> b!1390370 (=> (not res!930644) (not e!787409))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390370 (= res!930644 (validKeyInArray!0 (select (arr!45908 a!2901) j!112)))))

(declare-fun b!1390371 () Bool)

(assert (=> b!1390371 (= e!787409 (not true))))

(assert (=> b!1390371 e!787408))

(declare-fun res!930640 () Bool)

(assert (=> b!1390371 (=> (not res!930640) (not e!787408))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95093 (_ BitVec 32)) Bool)

(assert (=> b!1390371 (= res!930640 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46448 0))(
  ( (Unit!46449) )
))
(declare-fun lt!610767 () Unit!46448)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95093 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46448)

(assert (=> b!1390371 (= lt!610767 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610768 () SeekEntryResult!10247)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95093 (_ BitVec 32)) SeekEntryResult!10247)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390371 (= lt!610768 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45908 a!2901) j!112) mask!2840) (select (arr!45908 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390372 () Bool)

(declare-fun res!930641 () Bool)

(assert (=> b!1390372 (=> (not res!930641) (not e!787409))))

(declare-datatypes ((List!32607 0))(
  ( (Nil!32604) (Cons!32603 (h!33821 (_ BitVec 64)) (t!47308 List!32607)) )
))
(declare-fun arrayNoDuplicates!0 (array!95093 (_ BitVec 32) List!32607) Bool)

(assert (=> b!1390372 (= res!930641 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32604))))

(declare-fun b!1390373 () Bool)

(declare-fun res!930639 () Bool)

(assert (=> b!1390373 (=> (not res!930639) (not e!787409))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390373 (= res!930639 (validKeyInArray!0 (select (arr!45908 a!2901) i!1037)))))

(declare-fun b!1390374 () Bool)

(declare-fun res!930642 () Bool)

(assert (=> b!1390374 (=> (not res!930642) (not e!787409))))

(assert (=> b!1390374 (= res!930642 (and (= (size!46459 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46459 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46459 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390375 () Bool)

(declare-fun res!930643 () Bool)

(assert (=> b!1390375 (=> (not res!930643) (not e!787409))))

(assert (=> b!1390375 (= res!930643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119238 res!930645) b!1390374))

(assert (= (and b!1390374 res!930642) b!1390373))

(assert (= (and b!1390373 res!930639) b!1390370))

(assert (= (and b!1390370 res!930644) b!1390375))

(assert (= (and b!1390375 res!930643) b!1390372))

(assert (= (and b!1390372 res!930641) b!1390371))

(assert (= (and b!1390371 res!930640) b!1390369))

(declare-fun m!1276279 () Bool)

(assert (=> b!1390375 m!1276279))

(declare-fun m!1276281 () Bool)

(assert (=> b!1390373 m!1276281))

(assert (=> b!1390373 m!1276281))

(declare-fun m!1276283 () Bool)

(assert (=> b!1390373 m!1276283))

(declare-fun m!1276285 () Bool)

(assert (=> b!1390372 m!1276285))

(declare-fun m!1276287 () Bool)

(assert (=> start!119238 m!1276287))

(declare-fun m!1276289 () Bool)

(assert (=> start!119238 m!1276289))

(declare-fun m!1276291 () Bool)

(assert (=> b!1390370 m!1276291))

(assert (=> b!1390370 m!1276291))

(declare-fun m!1276293 () Bool)

(assert (=> b!1390370 m!1276293))

(assert (=> b!1390371 m!1276291))

(declare-fun m!1276295 () Bool)

(assert (=> b!1390371 m!1276295))

(assert (=> b!1390371 m!1276291))

(declare-fun m!1276297 () Bool)

(assert (=> b!1390371 m!1276297))

(assert (=> b!1390371 m!1276295))

(assert (=> b!1390371 m!1276291))

(declare-fun m!1276299 () Bool)

(assert (=> b!1390371 m!1276299))

(declare-fun m!1276301 () Bool)

(assert (=> b!1390371 m!1276301))

(assert (=> b!1390369 m!1276291))

(assert (=> b!1390369 m!1276291))

(declare-fun m!1276303 () Bool)

(assert (=> b!1390369 m!1276303))

(check-sat (not b!1390371) (not b!1390373) (not start!119238) (not b!1390369) (not b!1390370) (not b!1390372) (not b!1390375))
