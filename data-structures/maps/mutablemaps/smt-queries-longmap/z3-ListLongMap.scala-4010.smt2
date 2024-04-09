; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54542 () Bool)

(assert start!54542)

(declare-fun b!595558 () Bool)

(declare-fun e!340282 () Bool)

(assert (=> b!595558 (= e!340282 true)))

(declare-fun lt!270502 () Bool)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((List!11837 0))(
  ( (Nil!11834) (Cons!11833 (h!12878 (_ BitVec 64)) (t!18073 List!11837)) )
))
(declare-fun contains!2941 (List!11837 (_ BitVec 64)) Bool)

(assert (=> b!595558 (= lt!270502 (contains!2941 Nil!11834 k0!1786))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!595559 () Bool)

(declare-datatypes ((array!36965 0))(
  ( (array!36966 (arr!17743 (Array (_ BitVec 32) (_ BitVec 64))) (size!18107 (_ BitVec 32))) )
))
(declare-fun lt!270498 () array!36965)

(declare-fun e!340280 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!36965)

(declare-fun arrayContainsKey!0 (array!36965 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!595559 (= e!340280 (arrayContainsKey!0 lt!270498 (select (arr!17743 a!2986) j!136) index!984))))

(declare-fun b!595560 () Bool)

(declare-fun e!340278 () Bool)

(declare-datatypes ((SeekEntryResult!6190 0))(
  ( (MissingZero!6190 (index!27007 (_ BitVec 32))) (Found!6190 (index!27008 (_ BitVec 32))) (Intermediate!6190 (undefined!7002 Bool) (index!27009 (_ BitVec 32)) (x!55835 (_ BitVec 32))) (Undefined!6190) (MissingVacant!6190 (index!27010 (_ BitVec 32))) )
))
(declare-fun lt!270501 () SeekEntryResult!6190)

(declare-fun lt!270503 () SeekEntryResult!6190)

(assert (=> b!595560 (= e!340278 (= lt!270501 lt!270503))))

(declare-fun b!595562 () Bool)

(declare-fun res!381595 () Bool)

(assert (=> b!595562 (=> res!381595 e!340282)))

(assert (=> b!595562 (= res!381595 (contains!2941 Nil!11834 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595563 () Bool)

(declare-fun res!381599 () Bool)

(declare-fun e!340277 () Bool)

(assert (=> b!595563 (=> (not res!381599) (not e!340277))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36965 (_ BitVec 32)) Bool)

(assert (=> b!595563 (= res!381599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!595564 () Bool)

(declare-fun res!381590 () Bool)

(declare-fun e!340279 () Bool)

(assert (=> b!595564 (=> (not res!381590) (not e!340279))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!595564 (= res!381590 (and (= (size!18107 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18107 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18107 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!595565 () Bool)

(declare-fun e!340273 () Bool)

(declare-fun e!340272 () Bool)

(assert (=> b!595565 (= e!340273 e!340272)))

(declare-fun res!381585 () Bool)

(assert (=> b!595565 (=> res!381585 e!340272)))

(declare-fun lt!270497 () (_ BitVec 64))

(declare-fun lt!270499 () (_ BitVec 64))

(assert (=> b!595565 (= res!381585 (or (not (= (select (arr!17743 a!2986) j!136) lt!270497)) (not (= (select (arr!17743 a!2986) j!136) lt!270499)) (bvsge j!136 index!984)))))

(declare-fun b!595566 () Bool)

(declare-fun res!381602 () Bool)

(assert (=> b!595566 (=> (not res!381602) (not e!340279))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!595566 (= res!381602 (validKeyInArray!0 k0!1786))))

(declare-fun b!595567 () Bool)

(declare-fun e!340276 () Bool)

(declare-fun e!340270 () Bool)

(assert (=> b!595567 (= e!340276 (not e!340270))))

(declare-fun res!381583 () Bool)

(assert (=> b!595567 (=> res!381583 e!340270)))

(declare-fun lt!270496 () SeekEntryResult!6190)

(assert (=> b!595567 (= res!381583 (not (= lt!270496 (Found!6190 index!984))))))

(declare-datatypes ((Unit!18704 0))(
  ( (Unit!18705) )
))
(declare-fun lt!270495 () Unit!18704)

(declare-fun e!340281 () Unit!18704)

(assert (=> b!595567 (= lt!270495 e!340281)))

(declare-fun c!67355 () Bool)

(assert (=> b!595567 (= c!67355 (= lt!270496 Undefined!6190))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36965 (_ BitVec 32)) SeekEntryResult!6190)

(assert (=> b!595567 (= lt!270496 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270497 lt!270498 mask!3053))))

(assert (=> b!595567 e!340278))

(declare-fun res!381582 () Bool)

(assert (=> b!595567 (=> (not res!381582) (not e!340278))))

(declare-fun lt!270494 () (_ BitVec 32))

(assert (=> b!595567 (= res!381582 (= lt!270503 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270494 vacantSpotIndex!68 lt!270497 lt!270498 mask!3053)))))

(assert (=> b!595567 (= lt!270503 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270494 vacantSpotIndex!68 (select (arr!17743 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!595567 (= lt!270497 (select (store (arr!17743 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!270500 () Unit!18704)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36965 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18704)

(assert (=> b!595567 (= lt!270500 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270494 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!595567 (= lt!270494 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!595568 () Bool)

(declare-fun e!340275 () Bool)

(assert (=> b!595568 (= e!340275 e!340276)))

(declare-fun res!381592 () Bool)

(assert (=> b!595568 (=> (not res!381592) (not e!340276))))

(assert (=> b!595568 (= res!381592 (and (= lt!270501 (Found!6190 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17743 a!2986) index!984) (select (arr!17743 a!2986) j!136))) (not (= (select (arr!17743 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!595568 (= lt!270501 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17743 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!595569 () Bool)

(declare-fun Unit!18706 () Unit!18704)

(assert (=> b!595569 (= e!340281 Unit!18706)))

(assert (=> b!595569 false))

(declare-fun b!595570 () Bool)

(declare-fun res!381601 () Bool)

(assert (=> b!595570 (=> (not res!381601) (not e!340279))))

(assert (=> b!595570 (= res!381601 (validKeyInArray!0 (select (arr!17743 a!2986) j!136)))))

(declare-fun res!381586 () Bool)

(assert (=> start!54542 (=> (not res!381586) (not e!340279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54542 (= res!381586 (validMask!0 mask!3053))))

(assert (=> start!54542 e!340279))

(assert (=> start!54542 true))

(declare-fun array_inv!13517 (array!36965) Bool)

(assert (=> start!54542 (array_inv!13517 a!2986)))

(declare-fun b!595561 () Bool)

(assert (=> b!595561 (= e!340272 e!340280)))

(declare-fun res!381598 () Bool)

(assert (=> b!595561 (=> (not res!381598) (not e!340280))))

(assert (=> b!595561 (= res!381598 (arrayContainsKey!0 lt!270498 (select (arr!17743 a!2986) j!136) j!136))))

(declare-fun b!595571 () Bool)

(declare-fun e!340271 () Bool)

(assert (=> b!595571 (= e!340270 e!340271)))

(declare-fun res!381588 () Bool)

(assert (=> b!595571 (=> res!381588 e!340271)))

(assert (=> b!595571 (= res!381588 (or (not (= (select (arr!17743 a!2986) j!136) lt!270497)) (not (= (select (arr!17743 a!2986) j!136) lt!270499)) (bvsge j!136 index!984)))))

(assert (=> b!595571 e!340273))

(declare-fun res!381591 () Bool)

(assert (=> b!595571 (=> (not res!381591) (not e!340273))))

(assert (=> b!595571 (= res!381591 (= lt!270499 (select (arr!17743 a!2986) j!136)))))

(assert (=> b!595571 (= lt!270499 (select (store (arr!17743 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!595572 () Bool)

(assert (=> b!595572 (= e!340277 e!340275)))

(declare-fun res!381596 () Bool)

(assert (=> b!595572 (=> (not res!381596) (not e!340275))))

(assert (=> b!595572 (= res!381596 (= (select (store (arr!17743 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!595572 (= lt!270498 (array!36966 (store (arr!17743 a!2986) i!1108 k0!1786) (size!18107 a!2986)))))

(declare-fun b!595573 () Bool)

(declare-fun res!381600 () Bool)

(assert (=> b!595573 (=> (not res!381600) (not e!340279))))

(assert (=> b!595573 (= res!381600 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!595574 () Bool)

(declare-fun res!381594 () Bool)

(assert (=> b!595574 (=> res!381594 e!340282)))

(assert (=> b!595574 (= res!381594 (contains!2941 Nil!11834 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595575 () Bool)

(declare-fun res!381587 () Bool)

(assert (=> b!595575 (=> (not res!381587) (not e!340277))))

(declare-fun arrayNoDuplicates!0 (array!36965 (_ BitVec 32) List!11837) Bool)

(assert (=> b!595575 (= res!381587 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11834))))

(declare-fun b!595576 () Bool)

(assert (=> b!595576 (= e!340271 e!340282)))

(declare-fun res!381593 () Bool)

(assert (=> b!595576 (=> res!381593 e!340282)))

(assert (=> b!595576 (= res!381593 (or (bvsge (size!18107 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18107 a!2986))))))

(assert (=> b!595576 (arrayContainsKey!0 lt!270498 (select (arr!17743 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270504 () Unit!18704)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36965 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18704)

(assert (=> b!595576 (= lt!270504 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270498 (select (arr!17743 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!595577 () Bool)

(assert (=> b!595577 (= e!340279 e!340277)))

(declare-fun res!381597 () Bool)

(assert (=> b!595577 (=> (not res!381597) (not e!340277))))

(declare-fun lt!270493 () SeekEntryResult!6190)

(assert (=> b!595577 (= res!381597 (or (= lt!270493 (MissingZero!6190 i!1108)) (= lt!270493 (MissingVacant!6190 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36965 (_ BitVec 32)) SeekEntryResult!6190)

(assert (=> b!595577 (= lt!270493 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!595578 () Bool)

(declare-fun res!381589 () Bool)

(assert (=> b!595578 (=> (not res!381589) (not e!340277))))

(assert (=> b!595578 (= res!381589 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17743 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!595579 () Bool)

(declare-fun res!381584 () Bool)

(assert (=> b!595579 (=> res!381584 e!340282)))

(declare-fun noDuplicate!257 (List!11837) Bool)

(assert (=> b!595579 (= res!381584 (not (noDuplicate!257 Nil!11834)))))

(declare-fun b!595580 () Bool)

(declare-fun Unit!18707 () Unit!18704)

(assert (=> b!595580 (= e!340281 Unit!18707)))

(assert (= (and start!54542 res!381586) b!595564))

(assert (= (and b!595564 res!381590) b!595570))

(assert (= (and b!595570 res!381601) b!595566))

(assert (= (and b!595566 res!381602) b!595573))

(assert (= (and b!595573 res!381600) b!595577))

(assert (= (and b!595577 res!381597) b!595563))

(assert (= (and b!595563 res!381599) b!595575))

(assert (= (and b!595575 res!381587) b!595578))

(assert (= (and b!595578 res!381589) b!595572))

(assert (= (and b!595572 res!381596) b!595568))

(assert (= (and b!595568 res!381592) b!595567))

(assert (= (and b!595567 res!381582) b!595560))

(assert (= (and b!595567 c!67355) b!595569))

(assert (= (and b!595567 (not c!67355)) b!595580))

(assert (= (and b!595567 (not res!381583)) b!595571))

(assert (= (and b!595571 res!381591) b!595565))

(assert (= (and b!595565 (not res!381585)) b!595561))

(assert (= (and b!595561 res!381598) b!595559))

(assert (= (and b!595571 (not res!381588)) b!595576))

(assert (= (and b!595576 (not res!381593)) b!595579))

(assert (= (and b!595579 (not res!381584)) b!595574))

(assert (= (and b!595574 (not res!381594)) b!595562))

(assert (= (and b!595562 (not res!381595)) b!595558))

(declare-fun m!573205 () Bool)

(assert (=> b!595567 m!573205))

(declare-fun m!573207 () Bool)

(assert (=> b!595567 m!573207))

(declare-fun m!573209 () Bool)

(assert (=> b!595567 m!573209))

(declare-fun m!573211 () Bool)

(assert (=> b!595567 m!573211))

(declare-fun m!573213 () Bool)

(assert (=> b!595567 m!573213))

(declare-fun m!573215 () Bool)

(assert (=> b!595567 m!573215))

(declare-fun m!573217 () Bool)

(assert (=> b!595567 m!573217))

(assert (=> b!595567 m!573209))

(declare-fun m!573219 () Bool)

(assert (=> b!595567 m!573219))

(assert (=> b!595561 m!573209))

(assert (=> b!595561 m!573209))

(declare-fun m!573221 () Bool)

(assert (=> b!595561 m!573221))

(assert (=> b!595570 m!573209))

(assert (=> b!595570 m!573209))

(declare-fun m!573223 () Bool)

(assert (=> b!595570 m!573223))

(declare-fun m!573225 () Bool)

(assert (=> b!595566 m!573225))

(declare-fun m!573227 () Bool)

(assert (=> start!54542 m!573227))

(declare-fun m!573229 () Bool)

(assert (=> start!54542 m!573229))

(declare-fun m!573231 () Bool)

(assert (=> b!595577 m!573231))

(assert (=> b!595576 m!573209))

(assert (=> b!595576 m!573209))

(declare-fun m!573233 () Bool)

(assert (=> b!595576 m!573233))

(assert (=> b!595576 m!573209))

(declare-fun m!573235 () Bool)

(assert (=> b!595576 m!573235))

(assert (=> b!595559 m!573209))

(assert (=> b!595559 m!573209))

(declare-fun m!573237 () Bool)

(assert (=> b!595559 m!573237))

(declare-fun m!573239 () Bool)

(assert (=> b!595578 m!573239))

(declare-fun m!573241 () Bool)

(assert (=> b!595558 m!573241))

(declare-fun m!573243 () Bool)

(assert (=> b!595568 m!573243))

(assert (=> b!595568 m!573209))

(assert (=> b!595568 m!573209))

(declare-fun m!573245 () Bool)

(assert (=> b!595568 m!573245))

(declare-fun m!573247 () Bool)

(assert (=> b!595579 m!573247))

(declare-fun m!573249 () Bool)

(assert (=> b!595573 m!573249))

(assert (=> b!595572 m!573217))

(declare-fun m!573251 () Bool)

(assert (=> b!595572 m!573251))

(assert (=> b!595565 m!573209))

(assert (=> b!595571 m!573209))

(assert (=> b!595571 m!573217))

(declare-fun m!573253 () Bool)

(assert (=> b!595571 m!573253))

(declare-fun m!573255 () Bool)

(assert (=> b!595563 m!573255))

(declare-fun m!573257 () Bool)

(assert (=> b!595562 m!573257))

(declare-fun m!573259 () Bool)

(assert (=> b!595574 m!573259))

(declare-fun m!573261 () Bool)

(assert (=> b!595575 m!573261))

(check-sat (not b!595558) (not b!595568) (not b!595574) (not b!595579) (not b!595559) (not b!595573) (not b!595570) (not b!595576) (not b!595577) (not b!595562) (not b!595567) (not b!595563) (not start!54542) (not b!595575) (not b!595561) (not b!595566))
(check-sat)
