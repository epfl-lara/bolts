; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53310 () Bool)

(assert start!53310)

(declare-fun b!579261 () Bool)

(declare-fun res!367235 () Bool)

(declare-fun e!332897 () Bool)

(assert (=> b!579261 (=> (not res!367235) (not e!332897))))

(declare-datatypes ((array!36165 0))(
  ( (array!36166 (arr!17353 (Array (_ BitVec 32) (_ BitVec 64))) (size!17717 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36165)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36165 (_ BitVec 32)) Bool)

(assert (=> b!579261 (= res!367235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579262 () Bool)

(declare-fun res!367232 () Bool)

(assert (=> b!579262 (=> (not res!367232) (not e!332897))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!579262 (= res!367232 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17353 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17353 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579264 () Bool)

(declare-fun res!367231 () Bool)

(declare-fun e!332899 () Bool)

(assert (=> b!579264 (=> (not res!367231) (not e!332899))))

(declare-fun arrayContainsKey!0 (array!36165 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579264 (= res!367231 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579265 () Bool)

(assert (=> b!579265 (= e!332899 e!332897)))

(declare-fun res!367228 () Bool)

(assert (=> b!579265 (=> (not res!367228) (not e!332897))))

(declare-datatypes ((SeekEntryResult!5800 0))(
  ( (MissingZero!5800 (index!25427 (_ BitVec 32))) (Found!5800 (index!25428 (_ BitVec 32))) (Intermediate!5800 (undefined!6612 Bool) (index!25429 (_ BitVec 32)) (x!54344 (_ BitVec 32))) (Undefined!5800) (MissingVacant!5800 (index!25430 (_ BitVec 32))) )
))
(declare-fun lt!264449 () SeekEntryResult!5800)

(assert (=> b!579265 (= res!367228 (or (= lt!264449 (MissingZero!5800 i!1108)) (= lt!264449 (MissingVacant!5800 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36165 (_ BitVec 32)) SeekEntryResult!5800)

(assert (=> b!579265 (= lt!264449 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!579266 () Bool)

(declare-fun res!367229 () Bool)

(assert (=> b!579266 (=> (not res!367229) (not e!332899))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579266 (= res!367229 (validKeyInArray!0 k0!1786))))

(declare-fun b!579267 () Bool)

(assert (=> b!579267 (= e!332897 false)))

(declare-fun lt!264448 () SeekEntryResult!5800)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36165 (_ BitVec 32)) SeekEntryResult!5800)

(assert (=> b!579267 (= lt!264448 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17353 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579268 () Bool)

(declare-fun res!367230 () Bool)

(assert (=> b!579268 (=> (not res!367230) (not e!332897))))

(declare-datatypes ((List!11447 0))(
  ( (Nil!11444) (Cons!11443 (h!12488 (_ BitVec 64)) (t!17683 List!11447)) )
))
(declare-fun arrayNoDuplicates!0 (array!36165 (_ BitVec 32) List!11447) Bool)

(assert (=> b!579268 (= res!367230 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11444))))

(declare-fun b!579269 () Bool)

(declare-fun res!367227 () Bool)

(assert (=> b!579269 (=> (not res!367227) (not e!332899))))

(assert (=> b!579269 (= res!367227 (validKeyInArray!0 (select (arr!17353 a!2986) j!136)))))

(declare-fun b!579263 () Bool)

(declare-fun res!367233 () Bool)

(assert (=> b!579263 (=> (not res!367233) (not e!332899))))

(assert (=> b!579263 (= res!367233 (and (= (size!17717 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17717 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17717 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!367234 () Bool)

(assert (=> start!53310 (=> (not res!367234) (not e!332899))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53310 (= res!367234 (validMask!0 mask!3053))))

(assert (=> start!53310 e!332899))

(assert (=> start!53310 true))

(declare-fun array_inv!13127 (array!36165) Bool)

(assert (=> start!53310 (array_inv!13127 a!2986)))

(assert (= (and start!53310 res!367234) b!579263))

(assert (= (and b!579263 res!367233) b!579269))

(assert (= (and b!579269 res!367227) b!579266))

(assert (= (and b!579266 res!367229) b!579264))

(assert (= (and b!579264 res!367231) b!579265))

(assert (= (and b!579265 res!367228) b!579261))

(assert (= (and b!579261 res!367235) b!579268))

(assert (= (and b!579268 res!367230) b!579262))

(assert (= (and b!579262 res!367232) b!579267))

(declare-fun m!557931 () Bool)

(assert (=> b!579267 m!557931))

(assert (=> b!579267 m!557931))

(declare-fun m!557933 () Bool)

(assert (=> b!579267 m!557933))

(declare-fun m!557935 () Bool)

(assert (=> b!579265 m!557935))

(declare-fun m!557937 () Bool)

(assert (=> b!579266 m!557937))

(declare-fun m!557939 () Bool)

(assert (=> b!579268 m!557939))

(declare-fun m!557941 () Bool)

(assert (=> start!53310 m!557941))

(declare-fun m!557943 () Bool)

(assert (=> start!53310 m!557943))

(assert (=> b!579269 m!557931))

(assert (=> b!579269 m!557931))

(declare-fun m!557945 () Bool)

(assert (=> b!579269 m!557945))

(declare-fun m!557947 () Bool)

(assert (=> b!579262 m!557947))

(declare-fun m!557949 () Bool)

(assert (=> b!579262 m!557949))

(declare-fun m!557951 () Bool)

(assert (=> b!579262 m!557951))

(declare-fun m!557953 () Bool)

(assert (=> b!579261 m!557953))

(declare-fun m!557955 () Bool)

(assert (=> b!579264 m!557955))

(check-sat (not start!53310) (not b!579265) (not b!579267) (not b!579269) (not b!579268) (not b!579261) (not b!579266) (not b!579264))
(check-sat)
