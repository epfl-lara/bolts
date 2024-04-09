; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120390 () Bool)

(assert start!120390)

(declare-fun res!939322 () Bool)

(declare-fun e!793102 () Bool)

(assert (=> start!120390 (=> (not res!939322) (not e!793102))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120390 (= res!939322 (validMask!0 mask!2840))))

(assert (=> start!120390 e!793102))

(assert (=> start!120390 true))

(declare-datatypes ((array!95717 0))(
  ( (array!95718 (arr!46205 (Array (_ BitVec 32) (_ BitVec 64))) (size!46756 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95717)

(declare-fun array_inv!35150 (array!95717) Bool)

(assert (=> start!120390 (array_inv!35150 a!2901)))

(declare-datatypes ((SeekEntryResult!10544 0))(
  ( (MissingZero!10544 (index!44552 (_ BitVec 32))) (Found!10544 (index!44553 (_ BitVec 32))) (Intermediate!10544 (undefined!11356 Bool) (index!44554 (_ BitVec 32)) (x!126198 (_ BitVec 32))) (Undefined!10544) (MissingVacant!10544 (index!44555 (_ BitVec 32))) )
))
(declare-fun lt!616393 () SeekEntryResult!10544)

(declare-fun e!793103 () Bool)

(declare-fun b!1400697 () Bool)

(declare-fun lt!616396 () (_ BitVec 64))

(declare-fun lt!616394 () array!95717)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95717 (_ BitVec 32)) SeekEntryResult!10544)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95717 (_ BitVec 32)) SeekEntryResult!10544)

(assert (=> b!1400697 (= e!793103 (= (seekEntryOrOpen!0 lt!616396 lt!616394 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126198 lt!616393) (index!44554 lt!616393) (index!44554 lt!616393) (select (arr!46205 a!2901) j!112) lt!616394 mask!2840)))))

(declare-fun b!1400698 () Bool)

(declare-fun res!939326 () Bool)

(assert (=> b!1400698 (=> (not res!939326) (not e!793102))))

(declare-datatypes ((List!32904 0))(
  ( (Nil!32901) (Cons!32900 (h!34148 (_ BitVec 64)) (t!47605 List!32904)) )
))
(declare-fun arrayNoDuplicates!0 (array!95717 (_ BitVec 32) List!32904) Bool)

(assert (=> b!1400698 (= res!939326 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32901))))

(declare-fun b!1400699 () Bool)

(declare-fun res!939320 () Bool)

(assert (=> b!1400699 (=> (not res!939320) (not e!793102))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400699 (= res!939320 (and (= (size!46756 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46756 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46756 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400700 () Bool)

(declare-fun e!793098 () Bool)

(assert (=> b!1400700 (= e!793102 (not e!793098))))

(declare-fun res!939319 () Bool)

(assert (=> b!1400700 (=> res!939319 e!793098)))

(declare-fun lt!616392 () SeekEntryResult!10544)

(get-info :version)

(assert (=> b!1400700 (= res!939319 (or (not ((_ is Intermediate!10544) lt!616392)) (undefined!11356 lt!616392)))))

(declare-fun e!793099 () Bool)

(assert (=> b!1400700 e!793099))

(declare-fun res!939318 () Bool)

(assert (=> b!1400700 (=> (not res!939318) (not e!793099))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95717 (_ BitVec 32)) Bool)

(assert (=> b!1400700 (= res!939318 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47042 0))(
  ( (Unit!47043) )
))
(declare-fun lt!616395 () Unit!47042)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95717 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47042)

(assert (=> b!1400700 (= lt!616395 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616398 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95717 (_ BitVec 32)) SeekEntryResult!10544)

(assert (=> b!1400700 (= lt!616392 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616398 (select (arr!46205 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400700 (= lt!616398 (toIndex!0 (select (arr!46205 a!2901) j!112) mask!2840))))

(declare-fun b!1400701 () Bool)

(declare-fun res!939327 () Bool)

(assert (=> b!1400701 (=> (not res!939327) (not e!793102))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400701 (= res!939327 (validKeyInArray!0 (select (arr!46205 a!2901) i!1037)))))

(declare-fun b!1400702 () Bool)

(declare-fun e!793100 () Bool)

(assert (=> b!1400702 (= e!793098 e!793100)))

(declare-fun res!939324 () Bool)

(assert (=> b!1400702 (=> res!939324 e!793100)))

(assert (=> b!1400702 (= res!939324 (or (= lt!616392 lt!616393) (not ((_ is Intermediate!10544) lt!616393))))))

(assert (=> b!1400702 (= lt!616393 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616396 mask!2840) lt!616396 lt!616394 mask!2840))))

(assert (=> b!1400702 (= lt!616396 (select (store (arr!46205 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400702 (= lt!616394 (array!95718 (store (arr!46205 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46756 a!2901)))))

(declare-fun b!1400703 () Bool)

(declare-fun e!793101 () Bool)

(assert (=> b!1400703 (= e!793101 true)))

(declare-fun lt!616399 () SeekEntryResult!10544)

(assert (=> b!1400703 (= lt!616399 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616398 lt!616396 lt!616394 mask!2840))))

(declare-fun b!1400704 () Bool)

(declare-fun res!939323 () Bool)

(assert (=> b!1400704 (=> (not res!939323) (not e!793102))))

(assert (=> b!1400704 (= res!939323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400705 () Bool)

(declare-fun res!939317 () Bool)

(assert (=> b!1400705 (=> (not res!939317) (not e!793102))))

(assert (=> b!1400705 (= res!939317 (validKeyInArray!0 (select (arr!46205 a!2901) j!112)))))

(declare-fun b!1400706 () Bool)

(assert (=> b!1400706 (= e!793100 e!793101)))

(declare-fun res!939321 () Bool)

(assert (=> b!1400706 (=> res!939321 e!793101)))

(assert (=> b!1400706 (= res!939321 (or (bvslt (x!126198 lt!616392) #b00000000000000000000000000000000) (bvsgt (x!126198 lt!616392) #b01111111111111111111111111111110) (bvslt (x!126198 lt!616393) #b00000000000000000000000000000000) (bvsgt (x!126198 lt!616393) #b01111111111111111111111111111110) (bvslt lt!616398 #b00000000000000000000000000000000) (bvsge lt!616398 (size!46756 a!2901)) (bvslt (index!44554 lt!616392) #b00000000000000000000000000000000) (bvsge (index!44554 lt!616392) (size!46756 a!2901)) (bvslt (index!44554 lt!616393) #b00000000000000000000000000000000) (bvsge (index!44554 lt!616393) (size!46756 a!2901)) (not (= lt!616392 (Intermediate!10544 false (index!44554 lt!616392) (x!126198 lt!616392)))) (not (= lt!616393 (Intermediate!10544 false (index!44554 lt!616393) (x!126198 lt!616393))))))))

(assert (=> b!1400706 e!793103))

(declare-fun res!939325 () Bool)

(assert (=> b!1400706 (=> (not res!939325) (not e!793103))))

(assert (=> b!1400706 (= res!939325 (and (not (undefined!11356 lt!616393)) (= (index!44554 lt!616393) i!1037) (bvslt (x!126198 lt!616393) (x!126198 lt!616392)) (= (select (store (arr!46205 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44554 lt!616393)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616397 () Unit!47042)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95717 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47042)

(assert (=> b!1400706 (= lt!616397 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616398 (x!126198 lt!616392) (index!44554 lt!616392) (x!126198 lt!616393) (index!44554 lt!616393) (undefined!11356 lt!616393) mask!2840))))

(declare-fun b!1400707 () Bool)

(assert (=> b!1400707 (= e!793099 (= (seekEntryOrOpen!0 (select (arr!46205 a!2901) j!112) a!2901 mask!2840) (Found!10544 j!112)))))

(assert (= (and start!120390 res!939322) b!1400699))

(assert (= (and b!1400699 res!939320) b!1400701))

(assert (= (and b!1400701 res!939327) b!1400705))

(assert (= (and b!1400705 res!939317) b!1400704))

(assert (= (and b!1400704 res!939323) b!1400698))

(assert (= (and b!1400698 res!939326) b!1400700))

(assert (= (and b!1400700 res!939318) b!1400707))

(assert (= (and b!1400700 (not res!939319)) b!1400702))

(assert (= (and b!1400702 (not res!939324)) b!1400706))

(assert (= (and b!1400706 res!939325) b!1400697))

(assert (= (and b!1400706 (not res!939321)) b!1400703))

(declare-fun m!1288321 () Bool)

(assert (=> b!1400700 m!1288321))

(declare-fun m!1288323 () Bool)

(assert (=> b!1400700 m!1288323))

(assert (=> b!1400700 m!1288321))

(declare-fun m!1288325 () Bool)

(assert (=> b!1400700 m!1288325))

(assert (=> b!1400700 m!1288321))

(declare-fun m!1288327 () Bool)

(assert (=> b!1400700 m!1288327))

(declare-fun m!1288329 () Bool)

(assert (=> b!1400700 m!1288329))

(declare-fun m!1288331 () Bool)

(assert (=> b!1400697 m!1288331))

(assert (=> b!1400697 m!1288321))

(assert (=> b!1400697 m!1288321))

(declare-fun m!1288333 () Bool)

(assert (=> b!1400697 m!1288333))

(declare-fun m!1288335 () Bool)

(assert (=> start!120390 m!1288335))

(declare-fun m!1288337 () Bool)

(assert (=> start!120390 m!1288337))

(declare-fun m!1288339 () Bool)

(assert (=> b!1400698 m!1288339))

(declare-fun m!1288341 () Bool)

(assert (=> b!1400701 m!1288341))

(assert (=> b!1400701 m!1288341))

(declare-fun m!1288343 () Bool)

(assert (=> b!1400701 m!1288343))

(declare-fun m!1288345 () Bool)

(assert (=> b!1400704 m!1288345))

(declare-fun m!1288347 () Bool)

(assert (=> b!1400702 m!1288347))

(assert (=> b!1400702 m!1288347))

(declare-fun m!1288349 () Bool)

(assert (=> b!1400702 m!1288349))

(declare-fun m!1288351 () Bool)

(assert (=> b!1400702 m!1288351))

(declare-fun m!1288353 () Bool)

(assert (=> b!1400702 m!1288353))

(assert (=> b!1400706 m!1288351))

(declare-fun m!1288355 () Bool)

(assert (=> b!1400706 m!1288355))

(declare-fun m!1288357 () Bool)

(assert (=> b!1400706 m!1288357))

(assert (=> b!1400705 m!1288321))

(assert (=> b!1400705 m!1288321))

(declare-fun m!1288359 () Bool)

(assert (=> b!1400705 m!1288359))

(declare-fun m!1288361 () Bool)

(assert (=> b!1400703 m!1288361))

(assert (=> b!1400707 m!1288321))

(assert (=> b!1400707 m!1288321))

(declare-fun m!1288363 () Bool)

(assert (=> b!1400707 m!1288363))

(check-sat (not b!1400707) (not b!1400697) (not start!120390) (not b!1400705) (not b!1400703) (not b!1400702) (not b!1400698) (not b!1400700) (not b!1400701) (not b!1400704) (not b!1400706))
(check-sat)
