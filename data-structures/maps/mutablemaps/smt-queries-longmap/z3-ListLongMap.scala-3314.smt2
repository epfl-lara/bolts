; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45840 () Bool)

(assert start!45840)

(declare-fun b!507283 () Bool)

(declare-fun res!308398 () Bool)

(declare-fun e!296881 () Bool)

(assert (=> b!507283 (=> (not res!308398) (not e!296881))))

(declare-datatypes ((array!32556 0))(
  ( (array!32557 (arr!15655 (Array (_ BitVec 32) (_ BitVec 64))) (size!16019 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32556)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32556 (_ BitVec 32)) Bool)

(assert (=> b!507283 (= res!308398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507284 () Bool)

(declare-fun e!296879 () Bool)

(declare-fun e!296876 () Bool)

(assert (=> b!507284 (= e!296879 e!296876)))

(declare-fun res!308392 () Bool)

(assert (=> b!507284 (=> res!308392 e!296876)))

(declare-fun lt!231725 () Bool)

(declare-datatypes ((SeekEntryResult!4129 0))(
  ( (MissingZero!4129 (index!18704 (_ BitVec 32))) (Found!4129 (index!18705 (_ BitVec 32))) (Intermediate!4129 (undefined!4941 Bool) (index!18706 (_ BitVec 32)) (x!47725 (_ BitVec 32))) (Undefined!4129) (MissingVacant!4129 (index!18707 (_ BitVec 32))) )
))
(declare-fun lt!231721 () SeekEntryResult!4129)

(assert (=> b!507284 (= res!308392 (or (and (not lt!231725) (undefined!4941 lt!231721)) (and (not lt!231725) (not (undefined!4941 lt!231721)))))))

(get-info :version)

(assert (=> b!507284 (= lt!231725 (not ((_ is Intermediate!4129) lt!231721)))))

(declare-fun b!507285 () Bool)

(declare-fun res!308393 () Bool)

(declare-fun e!296880 () Bool)

(assert (=> b!507285 (=> (not res!308393) (not e!296880))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!507285 (= res!308393 (and (= (size!16019 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16019 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16019 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507286 () Bool)

(declare-fun res!308402 () Bool)

(assert (=> b!507286 (=> (not res!308402) (not e!296881))))

(declare-datatypes ((List!9866 0))(
  ( (Nil!9863) (Cons!9862 (h!10739 (_ BitVec 64)) (t!16102 List!9866)) )
))
(declare-fun arrayNoDuplicates!0 (array!32556 (_ BitVec 32) List!9866) Bool)

(assert (=> b!507286 (= res!308402 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9863))))

(declare-fun b!507287 () Bool)

(declare-fun res!308400 () Bool)

(assert (=> b!507287 (=> (not res!308400) (not e!296880))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507287 (= res!308400 (validKeyInArray!0 k0!2280))))

(declare-fun b!507288 () Bool)

(assert (=> b!507288 (= e!296880 e!296881)))

(declare-fun res!308395 () Bool)

(assert (=> b!507288 (=> (not res!308395) (not e!296881))))

(declare-fun lt!231718 () SeekEntryResult!4129)

(assert (=> b!507288 (= res!308395 (or (= lt!231718 (MissingZero!4129 i!1204)) (= lt!231718 (MissingVacant!4129 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32556 (_ BitVec 32)) SeekEntryResult!4129)

(assert (=> b!507288 (= lt!231718 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!507289 () Bool)

(declare-fun e!296878 () Bool)

(assert (=> b!507289 (= e!296878 (= (seekEntryOrOpen!0 (select (arr!15655 a!3235) j!176) a!3235 mask!3524) (Found!4129 j!176)))))

(declare-fun res!308397 () Bool)

(assert (=> start!45840 (=> (not res!308397) (not e!296880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45840 (= res!308397 (validMask!0 mask!3524))))

(assert (=> start!45840 e!296880))

(assert (=> start!45840 true))

(declare-fun array_inv!11429 (array!32556) Bool)

(assert (=> start!45840 (array_inv!11429 a!3235)))

(declare-fun b!507290 () Bool)

(assert (=> b!507290 (= e!296881 (not e!296879))))

(declare-fun res!308401 () Bool)

(assert (=> b!507290 (=> res!308401 e!296879)))

(declare-fun lt!231717 () (_ BitVec 32))

(declare-fun lt!231723 () array!32556)

(declare-fun lt!231720 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32556 (_ BitVec 32)) SeekEntryResult!4129)

(assert (=> b!507290 (= res!308401 (= lt!231721 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231717 lt!231720 lt!231723 mask!3524)))))

(declare-fun lt!231722 () (_ BitVec 32))

(assert (=> b!507290 (= lt!231721 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231722 (select (arr!15655 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507290 (= lt!231717 (toIndex!0 lt!231720 mask!3524))))

(assert (=> b!507290 (= lt!231720 (select (store (arr!15655 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!507290 (= lt!231722 (toIndex!0 (select (arr!15655 a!3235) j!176) mask!3524))))

(assert (=> b!507290 (= lt!231723 (array!32557 (store (arr!15655 a!3235) i!1204 k0!2280) (size!16019 a!3235)))))

(assert (=> b!507290 e!296878))

(declare-fun res!308399 () Bool)

(assert (=> b!507290 (=> (not res!308399) (not e!296878))))

(assert (=> b!507290 (= res!308399 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15538 0))(
  ( (Unit!15539) )
))
(declare-fun lt!231724 () Unit!15538)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32556 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15538)

(assert (=> b!507290 (= lt!231724 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!507291 () Bool)

(assert (=> b!507291 (= e!296876 true)))

(declare-fun lt!231719 () SeekEntryResult!4129)

(assert (=> b!507291 (= lt!231719 (seekEntryOrOpen!0 lt!231720 lt!231723 mask!3524))))

(assert (=> b!507291 false))

(declare-fun b!507292 () Bool)

(declare-fun res!308394 () Bool)

(assert (=> b!507292 (=> (not res!308394) (not e!296880))))

(assert (=> b!507292 (= res!308394 (validKeyInArray!0 (select (arr!15655 a!3235) j!176)))))

(declare-fun b!507293 () Bool)

(declare-fun res!308396 () Bool)

(assert (=> b!507293 (=> (not res!308396) (not e!296880))))

(declare-fun arrayContainsKey!0 (array!32556 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507293 (= res!308396 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45840 res!308397) b!507285))

(assert (= (and b!507285 res!308393) b!507292))

(assert (= (and b!507292 res!308394) b!507287))

(assert (= (and b!507287 res!308400) b!507293))

(assert (= (and b!507293 res!308396) b!507288))

(assert (= (and b!507288 res!308395) b!507283))

(assert (= (and b!507283 res!308398) b!507286))

(assert (= (and b!507286 res!308402) b!507290))

(assert (= (and b!507290 res!308399) b!507289))

(assert (= (and b!507290 (not res!308401)) b!507284))

(assert (= (and b!507284 (not res!308392)) b!507291))

(declare-fun m!488097 () Bool)

(assert (=> b!507289 m!488097))

(assert (=> b!507289 m!488097))

(declare-fun m!488099 () Bool)

(assert (=> b!507289 m!488099))

(declare-fun m!488101 () Bool)

(assert (=> b!507286 m!488101))

(declare-fun m!488103 () Bool)

(assert (=> b!507293 m!488103))

(declare-fun m!488105 () Bool)

(assert (=> b!507283 m!488105))

(declare-fun m!488107 () Bool)

(assert (=> b!507287 m!488107))

(assert (=> b!507292 m!488097))

(assert (=> b!507292 m!488097))

(declare-fun m!488109 () Bool)

(assert (=> b!507292 m!488109))

(declare-fun m!488111 () Bool)

(assert (=> start!45840 m!488111))

(declare-fun m!488113 () Bool)

(assert (=> start!45840 m!488113))

(declare-fun m!488115 () Bool)

(assert (=> b!507288 m!488115))

(assert (=> b!507290 m!488097))

(declare-fun m!488117 () Bool)

(assert (=> b!507290 m!488117))

(declare-fun m!488119 () Bool)

(assert (=> b!507290 m!488119))

(declare-fun m!488121 () Bool)

(assert (=> b!507290 m!488121))

(declare-fun m!488123 () Bool)

(assert (=> b!507290 m!488123))

(declare-fun m!488125 () Bool)

(assert (=> b!507290 m!488125))

(assert (=> b!507290 m!488097))

(declare-fun m!488127 () Bool)

(assert (=> b!507290 m!488127))

(assert (=> b!507290 m!488097))

(declare-fun m!488129 () Bool)

(assert (=> b!507290 m!488129))

(declare-fun m!488131 () Bool)

(assert (=> b!507290 m!488131))

(declare-fun m!488133 () Bool)

(assert (=> b!507291 m!488133))

(check-sat (not b!507288) (not b!507291) (not b!507283) (not b!507292) (not start!45840) (not b!507286) (not b!507290) (not b!507293) (not b!507289) (not b!507287))
(check-sat)
