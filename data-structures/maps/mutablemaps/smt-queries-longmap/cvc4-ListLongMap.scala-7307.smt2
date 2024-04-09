; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93484 () Bool)

(assert start!93484)

(declare-datatypes ((array!66735 0))(
  ( (array!66736 (arr!32082 (Array (_ BitVec 32) (_ BitVec 64))) (size!32619 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66735)

(declare-fun b!1058440 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun e!602201 () Bool)

(declare-fun arrayContainsKey!0 (array!66735 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058440 (= e!602201 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1058441 () Bool)

(declare-fun e!602199 () Bool)

(assert (=> b!1058441 (= e!602199 true)))

(declare-fun lt!466907 () (_ BitVec 32))

(assert (=> b!1058441 (not (= (select (arr!32082 a!3488) lt!466907) k!2747))))

(declare-datatypes ((Unit!34695 0))(
  ( (Unit!34696) )
))
(declare-fun lt!466904 () Unit!34695)

(declare-datatypes ((List!22525 0))(
  ( (Nil!22522) (Cons!22521 (h!23730 (_ BitVec 64)) (t!31839 List!22525)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66735 (_ BitVec 64) (_ BitVec 32) List!22525) Unit!34695)

(assert (=> b!1058441 (= lt!466904 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 lt!466907 Nil!22522))))

(declare-fun lt!466906 () (_ BitVec 32))

(assert (=> b!1058441 (arrayContainsKey!0 a!3488 k!2747 lt!466906)))

(declare-fun lt!466909 () Unit!34695)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66735 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34695)

(assert (=> b!1058441 (= lt!466909 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466906))))

(assert (=> b!1058441 (= lt!466906 (bvadd #b00000000000000000000000000000001 lt!466907))))

(declare-fun arrayNoDuplicates!0 (array!66735 (_ BitVec 32) List!22525) Bool)

(assert (=> b!1058441 (arrayNoDuplicates!0 a!3488 lt!466907 Nil!22522)))

(declare-fun lt!466905 () Unit!34695)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66735 (_ BitVec 32) (_ BitVec 32)) Unit!34695)

(assert (=> b!1058441 (= lt!466905 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466907))))

(declare-fun b!1058442 () Bool)

(declare-fun e!602200 () Bool)

(assert (=> b!1058442 (= e!602200 e!602201)))

(declare-fun res!707124 () Bool)

(assert (=> b!1058442 (=> res!707124 e!602201)))

(assert (=> b!1058442 (= res!707124 (or (bvsgt lt!466907 i!1381) (bvsle i!1381 lt!466907)))))

(declare-fun b!1058443 () Bool)

(declare-fun e!602202 () Bool)

(declare-fun e!602205 () Bool)

(assert (=> b!1058443 (= e!602202 e!602205)))

(declare-fun res!707126 () Bool)

(assert (=> b!1058443 (=> (not res!707126) (not e!602205))))

(declare-fun lt!466908 () array!66735)

(assert (=> b!1058443 (= res!707126 (arrayContainsKey!0 lt!466908 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058443 (= lt!466908 (array!66736 (store (arr!32082 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32619 a!3488)))))

(declare-fun b!1058444 () Bool)

(declare-fun e!602204 () Bool)

(assert (=> b!1058444 (= e!602205 e!602204)))

(declare-fun res!707123 () Bool)

(assert (=> b!1058444 (=> (not res!707123) (not e!602204))))

(assert (=> b!1058444 (= res!707123 (not (= lt!466907 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66735 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058444 (= lt!466907 (arrayScanForKey!0 lt!466908 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!707129 () Bool)

(assert (=> start!93484 (=> (not res!707129) (not e!602202))))

(assert (=> start!93484 (= res!707129 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32619 a!3488)) (bvslt (size!32619 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93484 e!602202))

(assert (=> start!93484 true))

(declare-fun array_inv!24704 (array!66735) Bool)

(assert (=> start!93484 (array_inv!24704 a!3488)))

(declare-fun b!1058445 () Bool)

(declare-fun res!707127 () Bool)

(assert (=> b!1058445 (=> (not res!707127) (not e!602202))))

(assert (=> b!1058445 (= res!707127 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22522))))

(declare-fun b!1058446 () Bool)

(declare-fun res!707130 () Bool)

(assert (=> b!1058446 (=> (not res!707130) (not e!602202))))

(assert (=> b!1058446 (= res!707130 (= (select (arr!32082 a!3488) i!1381) k!2747))))

(declare-fun b!1058447 () Bool)

(assert (=> b!1058447 (= e!602204 (not e!602199))))

(declare-fun res!707125 () Bool)

(assert (=> b!1058447 (=> res!707125 e!602199)))

(assert (=> b!1058447 (= res!707125 (or (bvsgt lt!466907 i!1381) (bvsle i!1381 lt!466907)))))

(assert (=> b!1058447 e!602200))

(declare-fun res!707128 () Bool)

(assert (=> b!1058447 (=> (not res!707128) (not e!602200))))

(assert (=> b!1058447 (= res!707128 (= (select (store (arr!32082 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466907) k!2747))))

(declare-fun b!1058448 () Bool)

(declare-fun res!707131 () Bool)

(assert (=> b!1058448 (=> (not res!707131) (not e!602202))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058448 (= res!707131 (validKeyInArray!0 k!2747))))

(assert (= (and start!93484 res!707129) b!1058445))

(assert (= (and b!1058445 res!707127) b!1058448))

(assert (= (and b!1058448 res!707131) b!1058446))

(assert (= (and b!1058446 res!707130) b!1058443))

(assert (= (and b!1058443 res!707126) b!1058444))

(assert (= (and b!1058444 res!707123) b!1058447))

(assert (= (and b!1058447 res!707128) b!1058442))

(assert (= (and b!1058442 (not res!707124)) b!1058440))

(assert (= (and b!1058447 (not res!707125)) b!1058441))

(declare-fun m!978219 () Bool)

(assert (=> b!1058446 m!978219))

(declare-fun m!978221 () Bool)

(assert (=> b!1058443 m!978221))

(declare-fun m!978223 () Bool)

(assert (=> b!1058443 m!978223))

(declare-fun m!978225 () Bool)

(assert (=> b!1058448 m!978225))

(assert (=> b!1058447 m!978223))

(declare-fun m!978227 () Bool)

(assert (=> b!1058447 m!978227))

(declare-fun m!978229 () Bool)

(assert (=> b!1058440 m!978229))

(declare-fun m!978231 () Bool)

(assert (=> start!93484 m!978231))

(declare-fun m!978233 () Bool)

(assert (=> b!1058444 m!978233))

(declare-fun m!978235 () Bool)

(assert (=> b!1058445 m!978235))

(declare-fun m!978237 () Bool)

(assert (=> b!1058441 m!978237))

(declare-fun m!978239 () Bool)

(assert (=> b!1058441 m!978239))

(declare-fun m!978241 () Bool)

(assert (=> b!1058441 m!978241))

(declare-fun m!978243 () Bool)

(assert (=> b!1058441 m!978243))

(declare-fun m!978245 () Bool)

(assert (=> b!1058441 m!978245))

(declare-fun m!978247 () Bool)

(assert (=> b!1058441 m!978247))

(push 1)

