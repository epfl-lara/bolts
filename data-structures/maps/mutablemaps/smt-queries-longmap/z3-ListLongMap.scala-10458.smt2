; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122952 () Bool)

(assert start!122952)

(declare-fun b!1425583 () Bool)

(declare-fun res!961126 () Bool)

(declare-fun e!805401 () Bool)

(assert (=> b!1425583 (=> (not res!961126) (not e!805401))))

(declare-datatypes ((array!97235 0))(
  ( (array!97236 (arr!46931 (Array (_ BitVec 32) (_ BitVec 64))) (size!47482 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97235)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97235 (_ BitVec 32)) Bool)

(assert (=> b!1425583 (= res!961126 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425584 () Bool)

(declare-fun res!961127 () Bool)

(assert (=> b!1425584 (=> (not res!961127) (not e!805401))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425584 (= res!961127 (validKeyInArray!0 (select (arr!46931 a!2831) j!81)))))

(declare-fun b!1425585 () Bool)

(declare-fun res!961125 () Bool)

(assert (=> b!1425585 (=> (not res!961125) (not e!805401))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1425585 (= res!961125 (and (= (size!47482 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47482 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47482 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425586 () Bool)

(declare-fun res!961131 () Bool)

(assert (=> b!1425586 (=> (not res!961131) (not e!805401))))

(declare-datatypes ((List!33621 0))(
  ( (Nil!33618) (Cons!33617 (h!34919 (_ BitVec 64)) (t!48322 List!33621)) )
))
(declare-fun arrayNoDuplicates!0 (array!97235 (_ BitVec 32) List!33621) Bool)

(assert (=> b!1425586 (= res!961131 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33618))))

(declare-fun b!1425587 () Bool)

(declare-fun res!961132 () Bool)

(assert (=> b!1425587 (=> (not res!961132) (not e!805401))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425587 (= res!961132 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47482 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47482 a!2831))))))

(declare-fun b!1425588 () Bool)

(declare-fun e!805400 () Bool)

(assert (=> b!1425588 (= e!805401 e!805400)))

(declare-fun res!961128 () Bool)

(assert (=> b!1425588 (=> (not res!961128) (not e!805400))))

(declare-datatypes ((SeekEntryResult!11232 0))(
  ( (MissingZero!11232 (index!47319 (_ BitVec 32))) (Found!11232 (index!47320 (_ BitVec 32))) (Intermediate!11232 (undefined!12044 Bool) (index!47321 (_ BitVec 32)) (x!128957 (_ BitVec 32))) (Undefined!11232) (MissingVacant!11232 (index!47322 (_ BitVec 32))) )
))
(declare-fun lt!627793 () SeekEntryResult!11232)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97235 (_ BitVec 32)) SeekEntryResult!11232)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425588 (= res!961128 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46931 a!2831) j!81) mask!2608) (select (arr!46931 a!2831) j!81) a!2831 mask!2608) lt!627793))))

(assert (=> b!1425588 (= lt!627793 (Intermediate!11232 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1425589 () Bool)

(declare-fun res!961129 () Bool)

(assert (=> b!1425589 (=> (not res!961129) (not e!805401))))

(assert (=> b!1425589 (= res!961129 (validKeyInArray!0 (select (arr!46931 a!2831) i!982)))))

(declare-fun b!1425590 () Bool)

(declare-fun res!961130 () Bool)

(declare-fun e!805403 () Bool)

(assert (=> b!1425590 (=> (not res!961130) (not e!805403))))

(assert (=> b!1425590 (= res!961130 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46931 a!2831) j!81) a!2831 mask!2608) lt!627793))))

(declare-fun b!1425591 () Bool)

(assert (=> b!1425591 (= e!805403 false)))

(declare-fun lt!627796 () SeekEntryResult!11232)

(declare-fun lt!627795 () array!97235)

(declare-fun lt!627794 () (_ BitVec 64))

(assert (=> b!1425591 (= lt!627796 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627794 lt!627795 mask!2608))))

(declare-fun b!1425592 () Bool)

(assert (=> b!1425592 (= e!805400 e!805403)))

(declare-fun res!961134 () Bool)

(assert (=> b!1425592 (=> (not res!961134) (not e!805403))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1425592 (= res!961134 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627794 mask!2608) lt!627794 lt!627795 mask!2608) (Intermediate!11232 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1425592 (= lt!627794 (select (store (arr!46931 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1425592 (= lt!627795 (array!97236 (store (arr!46931 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47482 a!2831)))))

(declare-fun res!961133 () Bool)

(assert (=> start!122952 (=> (not res!961133) (not e!805401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122952 (= res!961133 (validMask!0 mask!2608))))

(assert (=> start!122952 e!805401))

(assert (=> start!122952 true))

(declare-fun array_inv!35876 (array!97235) Bool)

(assert (=> start!122952 (array_inv!35876 a!2831)))

(assert (= (and start!122952 res!961133) b!1425585))

(assert (= (and b!1425585 res!961125) b!1425589))

(assert (= (and b!1425589 res!961129) b!1425584))

(assert (= (and b!1425584 res!961127) b!1425583))

(assert (= (and b!1425583 res!961126) b!1425586))

(assert (= (and b!1425586 res!961131) b!1425587))

(assert (= (and b!1425587 res!961132) b!1425588))

(assert (= (and b!1425588 res!961128) b!1425592))

(assert (= (and b!1425592 res!961134) b!1425590))

(assert (= (and b!1425590 res!961130) b!1425591))

(declare-fun m!1316239 () Bool)

(assert (=> b!1425588 m!1316239))

(assert (=> b!1425588 m!1316239))

(declare-fun m!1316241 () Bool)

(assert (=> b!1425588 m!1316241))

(assert (=> b!1425588 m!1316241))

(assert (=> b!1425588 m!1316239))

(declare-fun m!1316243 () Bool)

(assert (=> b!1425588 m!1316243))

(declare-fun m!1316245 () Bool)

(assert (=> b!1425591 m!1316245))

(declare-fun m!1316247 () Bool)

(assert (=> b!1425586 m!1316247))

(declare-fun m!1316249 () Bool)

(assert (=> b!1425583 m!1316249))

(declare-fun m!1316251 () Bool)

(assert (=> b!1425592 m!1316251))

(assert (=> b!1425592 m!1316251))

(declare-fun m!1316253 () Bool)

(assert (=> b!1425592 m!1316253))

(declare-fun m!1316255 () Bool)

(assert (=> b!1425592 m!1316255))

(declare-fun m!1316257 () Bool)

(assert (=> b!1425592 m!1316257))

(assert (=> b!1425590 m!1316239))

(assert (=> b!1425590 m!1316239))

(declare-fun m!1316259 () Bool)

(assert (=> b!1425590 m!1316259))

(assert (=> b!1425584 m!1316239))

(assert (=> b!1425584 m!1316239))

(declare-fun m!1316261 () Bool)

(assert (=> b!1425584 m!1316261))

(declare-fun m!1316263 () Bool)

(assert (=> start!122952 m!1316263))

(declare-fun m!1316265 () Bool)

(assert (=> start!122952 m!1316265))

(declare-fun m!1316267 () Bool)

(assert (=> b!1425589 m!1316267))

(assert (=> b!1425589 m!1316267))

(declare-fun m!1316269 () Bool)

(assert (=> b!1425589 m!1316269))

(check-sat (not b!1425592) (not b!1425590) (not start!122952) (not b!1425589) (not b!1425586) (not b!1425584) (not b!1425591) (not b!1425588) (not b!1425583))
(check-sat)
