; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46998 () Bool)

(assert start!46998)

(declare-fun b!517873 () Bool)

(declare-fun res!317044 () Bool)

(declare-fun e!302197 () Bool)

(assert (=> b!517873 (=> (not res!317044) (not e!302197))))

(declare-datatypes ((array!33099 0))(
  ( (array!33100 (arr!15910 (Array (_ BitVec 32) (_ BitVec 64))) (size!16274 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33099)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!517873 (= res!317044 (validKeyInArray!0 (select (arr!15910 a!3235) j!176)))))

(declare-fun b!517874 () Bool)

(declare-fun res!317039 () Bool)

(declare-fun e!302199 () Bool)

(assert (=> b!517874 (=> res!317039 e!302199)))

(declare-datatypes ((SeekEntryResult!4384 0))(
  ( (MissingZero!4384 (index!19724 (_ BitVec 32))) (Found!4384 (index!19725 (_ BitVec 32))) (Intermediate!4384 (undefined!5196 Bool) (index!19726 (_ BitVec 32)) (x!48720 (_ BitVec 32))) (Undefined!4384) (MissingVacant!4384 (index!19727 (_ BitVec 32))) )
))
(declare-fun lt!237113 () SeekEntryResult!4384)

(get-info :version)

(assert (=> b!517874 (= res!317039 (or (undefined!5196 lt!237113) (not ((_ is Intermediate!4384) lt!237113))))))

(declare-fun b!517875 () Bool)

(declare-fun e!302198 () Bool)

(assert (=> b!517875 (= e!302197 e!302198)))

(declare-fun res!317045 () Bool)

(assert (=> b!517875 (=> (not res!317045) (not e!302198))))

(declare-fun lt!237109 () SeekEntryResult!4384)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!517875 (= res!317045 (or (= lt!237109 (MissingZero!4384 i!1204)) (= lt!237109 (MissingVacant!4384 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33099 (_ BitVec 32)) SeekEntryResult!4384)

(assert (=> b!517875 (= lt!237109 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!517876 () Bool)

(declare-fun res!317041 () Bool)

(assert (=> b!517876 (=> (not res!317041) (not e!302197))))

(declare-fun arrayContainsKey!0 (array!33099 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!517876 (= res!317041 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun lt!237112 () (_ BitVec 32))

(declare-fun b!517877 () Bool)

(assert (=> b!517877 (= e!302199 (or (not (= (select (arr!15910 a!3235) (index!19726 lt!237113)) (select (arr!15910 a!3235) j!176))) (bvsgt (x!48720 lt!237113) #b01111111111111111111111111111110) (bvsgt #b00000000000000000000000000000000 (x!48720 lt!237113)) (bvslt lt!237112 #b00000000000000000000000000000000) (bvsge lt!237112 (size!16274 a!3235)) (bvslt (index!19726 lt!237113) #b00000000000000000000000000000000) (bvsge (index!19726 lt!237113) (size!16274 a!3235)) (= lt!237113 (Intermediate!4384 false (index!19726 lt!237113) (x!48720 lt!237113)))))))

(assert (=> b!517877 (and (bvslt (x!48720 lt!237113) #b01111111111111111111111111111110) (or (= (select (arr!15910 a!3235) (index!19726 lt!237113)) (select (arr!15910 a!3235) j!176)) (= (select (arr!15910 a!3235) (index!19726 lt!237113)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15910 a!3235) (index!19726 lt!237113)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!517878 () Bool)

(declare-fun res!317048 () Bool)

(assert (=> b!517878 (=> (not res!317048) (not e!302198))))

(declare-datatypes ((List!10121 0))(
  ( (Nil!10118) (Cons!10117 (h!11024 (_ BitVec 64)) (t!16357 List!10121)) )
))
(declare-fun arrayNoDuplicates!0 (array!33099 (_ BitVec 32) List!10121) Bool)

(assert (=> b!517878 (= res!317048 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10118))))

(declare-fun b!517879 () Bool)

(declare-fun res!317038 () Bool)

(assert (=> b!517879 (=> (not res!317038) (not e!302198))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33099 (_ BitVec 32)) Bool)

(assert (=> b!517879 (= res!317038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!317046 () Bool)

(assert (=> start!46998 (=> (not res!317046) (not e!302197))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46998 (= res!317046 (validMask!0 mask!3524))))

(assert (=> start!46998 e!302197))

(assert (=> start!46998 true))

(declare-fun array_inv!11684 (array!33099) Bool)

(assert (=> start!46998 (array_inv!11684 a!3235)))

(declare-fun b!517880 () Bool)

(declare-fun res!317047 () Bool)

(assert (=> b!517880 (=> (not res!317047) (not e!302197))))

(assert (=> b!517880 (= res!317047 (validKeyInArray!0 k0!2280))))

(declare-fun b!517881 () Bool)

(declare-fun e!302200 () Bool)

(assert (=> b!517881 (= e!302200 (= (seekEntryOrOpen!0 (select (arr!15910 a!3235) j!176) a!3235 mask!3524) (Found!4384 j!176)))))

(declare-fun b!517882 () Bool)

(assert (=> b!517882 (= e!302198 (not e!302199))))

(declare-fun res!317043 () Bool)

(assert (=> b!517882 (=> res!317043 e!302199)))

(declare-fun lt!237110 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33099 (_ BitVec 32)) SeekEntryResult!4384)

(assert (=> b!517882 (= res!317043 (= lt!237113 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237110 (select (store (arr!15910 a!3235) i!1204 k0!2280) j!176) (array!33100 (store (arr!15910 a!3235) i!1204 k0!2280) (size!16274 a!3235)) mask!3524)))))

(assert (=> b!517882 (= lt!237113 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237112 (select (arr!15910 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!517882 (= lt!237110 (toIndex!0 (select (store (arr!15910 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!517882 (= lt!237112 (toIndex!0 (select (arr!15910 a!3235) j!176) mask!3524))))

(assert (=> b!517882 e!302200))

(declare-fun res!317042 () Bool)

(assert (=> b!517882 (=> (not res!317042) (not e!302200))))

(assert (=> b!517882 (= res!317042 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16018 0))(
  ( (Unit!16019) )
))
(declare-fun lt!237111 () Unit!16018)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33099 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16018)

(assert (=> b!517882 (= lt!237111 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!517883 () Bool)

(declare-fun res!317040 () Bool)

(assert (=> b!517883 (=> (not res!317040) (not e!302197))))

(assert (=> b!517883 (= res!317040 (and (= (size!16274 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16274 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16274 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!46998 res!317046) b!517883))

(assert (= (and b!517883 res!317040) b!517873))

(assert (= (and b!517873 res!317044) b!517880))

(assert (= (and b!517880 res!317047) b!517876))

(assert (= (and b!517876 res!317041) b!517875))

(assert (= (and b!517875 res!317045) b!517879))

(assert (= (and b!517879 res!317038) b!517878))

(assert (= (and b!517878 res!317048) b!517882))

(assert (= (and b!517882 res!317042) b!517881))

(assert (= (and b!517882 (not res!317043)) b!517874))

(assert (= (and b!517874 (not res!317039)) b!517877))

(declare-fun m!499251 () Bool)

(assert (=> b!517881 m!499251))

(assert (=> b!517881 m!499251))

(declare-fun m!499253 () Bool)

(assert (=> b!517881 m!499253))

(declare-fun m!499255 () Bool)

(assert (=> b!517878 m!499255))

(declare-fun m!499257 () Bool)

(assert (=> b!517880 m!499257))

(declare-fun m!499259 () Bool)

(assert (=> b!517877 m!499259))

(assert (=> b!517877 m!499251))

(assert (=> b!517873 m!499251))

(assert (=> b!517873 m!499251))

(declare-fun m!499261 () Bool)

(assert (=> b!517873 m!499261))

(declare-fun m!499263 () Bool)

(assert (=> b!517882 m!499263))

(declare-fun m!499265 () Bool)

(assert (=> b!517882 m!499265))

(declare-fun m!499267 () Bool)

(assert (=> b!517882 m!499267))

(assert (=> b!517882 m!499251))

(declare-fun m!499269 () Bool)

(assert (=> b!517882 m!499269))

(declare-fun m!499271 () Bool)

(assert (=> b!517882 m!499271))

(assert (=> b!517882 m!499267))

(declare-fun m!499273 () Bool)

(assert (=> b!517882 m!499273))

(assert (=> b!517882 m!499267))

(declare-fun m!499275 () Bool)

(assert (=> b!517882 m!499275))

(assert (=> b!517882 m!499251))

(declare-fun m!499277 () Bool)

(assert (=> b!517882 m!499277))

(assert (=> b!517882 m!499251))

(declare-fun m!499279 () Bool)

(assert (=> start!46998 m!499279))

(declare-fun m!499281 () Bool)

(assert (=> start!46998 m!499281))

(declare-fun m!499283 () Bool)

(assert (=> b!517875 m!499283))

(declare-fun m!499285 () Bool)

(assert (=> b!517876 m!499285))

(declare-fun m!499287 () Bool)

(assert (=> b!517879 m!499287))

(check-sat (not b!517881) (not b!517880) (not b!517879) (not b!517878) (not b!517875) (not start!46998) (not b!517876) (not b!517873) (not b!517882))
(check-sat)
