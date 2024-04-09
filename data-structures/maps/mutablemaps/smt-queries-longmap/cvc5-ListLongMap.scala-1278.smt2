; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26236 () Bool)

(assert start!26236)

(declare-fun b!271290 () Bool)

(declare-fun e!174514 () Bool)

(assert (=> b!271290 (= e!174514 false)))

(declare-fun lt!135809 () Bool)

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((List!4139 0))(
  ( (Nil!4136) (Cons!4135 (h!4802 (_ BitVec 64)) (t!9229 List!4139)) )
))
(declare-fun contains!1948 (List!4139 (_ BitVec 64)) Bool)

(assert (=> b!271290 (= lt!135809 (contains!1948 Nil!4136 k!2581))))

(declare-fun b!271291 () Bool)

(declare-fun res!135324 () Bool)

(assert (=> b!271291 (=> (not res!135324) (not e!174514))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271291 (= res!135324 (not (= startIndex!26 i!1267)))))

(declare-fun b!271292 () Bool)

(declare-fun res!135323 () Bool)

(assert (=> b!271292 (=> (not res!135323) (not e!174514))))

(assert (=> b!271292 (= res!135323 (not (contains!1948 Nil!4136 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271293 () Bool)

(declare-fun res!135329 () Bool)

(assert (=> b!271293 (=> (not res!135329) (not e!174514))))

(declare-fun noDuplicate!137 (List!4139) Bool)

(assert (=> b!271293 (= res!135329 (noDuplicate!137 Nil!4136))))

(declare-fun b!271294 () Bool)

(declare-fun res!135318 () Bool)

(assert (=> b!271294 (=> (not res!135318) (not e!174514))))

(declare-datatypes ((array!13322 0))(
  ( (array!13323 (arr!6310 (Array (_ BitVec 32) (_ BitVec 64))) (size!6662 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13322)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13322 (_ BitVec 32)) Bool)

(assert (=> b!271294 (= res!135318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271295 () Bool)

(declare-fun res!135325 () Bool)

(declare-fun e!174512 () Bool)

(assert (=> b!271295 (=> (not res!135325) (not e!174512))))

(declare-fun arrayContainsKey!0 (array!13322 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271295 (= res!135325 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271296 () Bool)

(declare-fun res!135319 () Bool)

(assert (=> b!271296 (=> (not res!135319) (not e!174512))))

(assert (=> b!271296 (= res!135319 (and (= (size!6662 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6662 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6662 a!3325))))))

(declare-fun b!271297 () Bool)

(declare-fun res!135330 () Bool)

(assert (=> b!271297 (=> (not res!135330) (not e!174514))))

(assert (=> b!271297 (= res!135330 (not (contains!1948 Nil!4136 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271298 () Bool)

(declare-fun res!135326 () Bool)

(assert (=> b!271298 (=> (not res!135326) (not e!174514))))

(assert (=> b!271298 (= res!135326 (and (bvslt (size!6662 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6662 a!3325))))))

(declare-fun b!271299 () Bool)

(declare-fun res!135320 () Bool)

(assert (=> b!271299 (=> (not res!135320) (not e!174514))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271299 (= res!135320 (validKeyInArray!0 (select (arr!6310 a!3325) startIndex!26)))))

(declare-fun b!271300 () Bool)

(assert (=> b!271300 (= e!174512 e!174514)))

(declare-fun res!135327 () Bool)

(assert (=> b!271300 (=> (not res!135327) (not e!174514))))

(declare-datatypes ((SeekEntryResult!1479 0))(
  ( (MissingZero!1479 (index!8086 (_ BitVec 32))) (Found!1479 (index!8087 (_ BitVec 32))) (Intermediate!1479 (undefined!2291 Bool) (index!8088 (_ BitVec 32)) (x!26388 (_ BitVec 32))) (Undefined!1479) (MissingVacant!1479 (index!8089 (_ BitVec 32))) )
))
(declare-fun lt!135808 () SeekEntryResult!1479)

(assert (=> b!271300 (= res!135327 (or (= lt!135808 (MissingZero!1479 i!1267)) (= lt!135808 (MissingVacant!1479 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13322 (_ BitVec 32)) SeekEntryResult!1479)

(assert (=> b!271300 (= lt!135808 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!271301 () Bool)

(declare-fun res!135321 () Bool)

(assert (=> b!271301 (=> (not res!135321) (not e!174512))))

(declare-fun arrayNoDuplicates!0 (array!13322 (_ BitVec 32) List!4139) Bool)

(assert (=> b!271301 (= res!135321 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4136))))

(declare-fun b!271302 () Bool)

(declare-fun res!135322 () Bool)

(assert (=> b!271302 (=> (not res!135322) (not e!174512))))

(assert (=> b!271302 (= res!135322 (validKeyInArray!0 k!2581))))

(declare-fun res!135328 () Bool)

(assert (=> start!26236 (=> (not res!135328) (not e!174512))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26236 (= res!135328 (validMask!0 mask!3868))))

(assert (=> start!26236 e!174512))

(declare-fun array_inv!4264 (array!13322) Bool)

(assert (=> start!26236 (array_inv!4264 a!3325)))

(assert (=> start!26236 true))

(assert (= (and start!26236 res!135328) b!271296))

(assert (= (and b!271296 res!135319) b!271302))

(assert (= (and b!271302 res!135322) b!271301))

(assert (= (and b!271301 res!135321) b!271295))

(assert (= (and b!271295 res!135325) b!271300))

(assert (= (and b!271300 res!135327) b!271294))

(assert (= (and b!271294 res!135318) b!271291))

(assert (= (and b!271291 res!135324) b!271299))

(assert (= (and b!271299 res!135320) b!271298))

(assert (= (and b!271298 res!135326) b!271293))

(assert (= (and b!271293 res!135329) b!271292))

(assert (= (and b!271292 res!135323) b!271297))

(assert (= (and b!271297 res!135330) b!271290))

(declare-fun m!286651 () Bool)

(assert (=> b!271290 m!286651))

(declare-fun m!286653 () Bool)

(assert (=> b!271297 m!286653))

(declare-fun m!286655 () Bool)

(assert (=> b!271292 m!286655))

(declare-fun m!286657 () Bool)

(assert (=> b!271301 m!286657))

(declare-fun m!286659 () Bool)

(assert (=> b!271295 m!286659))

(declare-fun m!286661 () Bool)

(assert (=> b!271300 m!286661))

(declare-fun m!286663 () Bool)

(assert (=> b!271294 m!286663))

(declare-fun m!286665 () Bool)

(assert (=> start!26236 m!286665))

(declare-fun m!286667 () Bool)

(assert (=> start!26236 m!286667))

(declare-fun m!286669 () Bool)

(assert (=> b!271293 m!286669))

(declare-fun m!286671 () Bool)

(assert (=> b!271299 m!286671))

(assert (=> b!271299 m!286671))

(declare-fun m!286673 () Bool)

(assert (=> b!271299 m!286673))

(declare-fun m!286675 () Bool)

(assert (=> b!271302 m!286675))

(push 1)

