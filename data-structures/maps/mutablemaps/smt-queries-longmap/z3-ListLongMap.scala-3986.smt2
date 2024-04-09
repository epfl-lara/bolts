; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54006 () Bool)

(assert start!54006)

(declare-fun b!589623 () Bool)

(declare-fun res!377238 () Bool)

(declare-fun e!336618 () Bool)

(assert (=> b!589623 (=> (not res!377238) (not e!336618))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36804 0))(
  ( (array!36805 (arr!17671 (Array (_ BitVec 32) (_ BitVec 64))) (size!18035 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36804)

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!589623 (= res!377238 (and (= (size!18035 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18035 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18035 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!589624 () Bool)

(declare-fun e!336612 () Bool)

(declare-datatypes ((SeekEntryResult!6118 0))(
  ( (MissingZero!6118 (index!26702 (_ BitVec 32))) (Found!6118 (index!26703 (_ BitVec 32))) (Intermediate!6118 (undefined!6930 Bool) (index!26704 (_ BitVec 32)) (x!55519 (_ BitVec 32))) (Undefined!6118) (MissingVacant!6118 (index!26705 (_ BitVec 32))) )
))
(declare-fun lt!267519 () SeekEntryResult!6118)

(declare-fun lt!267525 () SeekEntryResult!6118)

(assert (=> b!589624 (= e!336612 (= lt!267519 lt!267525))))

(declare-fun b!589625 () Bool)

(declare-datatypes ((Unit!18416 0))(
  ( (Unit!18417) )
))
(declare-fun e!336615 () Unit!18416)

(declare-fun Unit!18418 () Unit!18416)

(assert (=> b!589625 (= e!336615 Unit!18418)))

(declare-fun b!589626 () Bool)

(declare-fun res!377240 () Bool)

(assert (=> b!589626 (=> (not res!377240) (not e!336618))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36804 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589626 (= res!377240 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!589628 () Bool)

(declare-fun e!336614 () Bool)

(declare-fun e!336619 () Bool)

(assert (=> b!589628 (= e!336614 e!336619)))

(declare-fun res!377239 () Bool)

(assert (=> b!589628 (=> (not res!377239) (not e!336619))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!589628 (= res!377239 (= (select (store (arr!17671 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!267524 () array!36804)

(assert (=> b!589628 (= lt!267524 (array!36805 (store (arr!17671 a!2986) i!1108 k0!1786) (size!18035 a!2986)))))

(declare-fun b!589629 () Bool)

(assert (=> b!589629 (= e!336618 e!336614)))

(declare-fun res!377242 () Bool)

(assert (=> b!589629 (=> (not res!377242) (not e!336614))))

(declare-fun lt!267527 () SeekEntryResult!6118)

(assert (=> b!589629 (= res!377242 (or (= lt!267527 (MissingZero!6118 i!1108)) (= lt!267527 (MissingVacant!6118 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36804 (_ BitVec 32)) SeekEntryResult!6118)

(assert (=> b!589629 (= lt!267527 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!589630 () Bool)

(declare-fun e!336613 () Bool)

(declare-fun e!336617 () Bool)

(assert (=> b!589630 (= e!336613 (not e!336617))))

(declare-fun res!377243 () Bool)

(assert (=> b!589630 (=> res!377243 e!336617)))

(declare-fun lt!267523 () SeekEntryResult!6118)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!589630 (= res!377243 (not (= lt!267523 (Found!6118 index!984))))))

(declare-fun lt!267526 () Unit!18416)

(assert (=> b!589630 (= lt!267526 e!336615)))

(declare-fun c!66560 () Bool)

(assert (=> b!589630 (= c!66560 (= lt!267523 Undefined!6118))))

(declare-fun lt!267521 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36804 (_ BitVec 32)) SeekEntryResult!6118)

(assert (=> b!589630 (= lt!267523 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267521 lt!267524 mask!3053))))

(assert (=> b!589630 e!336612))

(declare-fun res!377241 () Bool)

(assert (=> b!589630 (=> (not res!377241) (not e!336612))))

(declare-fun lt!267522 () (_ BitVec 32))

(assert (=> b!589630 (= res!377241 (= lt!267525 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267522 vacantSpotIndex!68 lt!267521 lt!267524 mask!3053)))))

(assert (=> b!589630 (= lt!267525 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267522 vacantSpotIndex!68 (select (arr!17671 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!589630 (= lt!267521 (select (store (arr!17671 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!267520 () Unit!18416)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36804 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18416)

(assert (=> b!589630 (= lt!267520 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267522 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589630 (= lt!267522 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!589631 () Bool)

(declare-fun res!377247 () Bool)

(assert (=> b!589631 (=> (not res!377247) (not e!336614))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36804 (_ BitVec 32)) Bool)

(assert (=> b!589631 (= res!377247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!589632 () Bool)

(assert (=> b!589632 (= e!336617 true)))

(assert (=> b!589632 (= (select (store (arr!17671 a!2986) i!1108 k0!1786) index!984) (select (arr!17671 a!2986) j!136))))

(declare-fun b!589633 () Bool)

(assert (=> b!589633 (= e!336619 e!336613)))

(declare-fun res!377244 () Bool)

(assert (=> b!589633 (=> (not res!377244) (not e!336613))))

(assert (=> b!589633 (= res!377244 (and (= lt!267519 (Found!6118 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17671 a!2986) index!984) (select (arr!17671 a!2986) j!136))) (not (= (select (arr!17671 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!589633 (= lt!267519 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17671 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!589634 () Bool)

(declare-fun res!377246 () Bool)

(assert (=> b!589634 (=> (not res!377246) (not e!336614))))

(assert (=> b!589634 (= res!377246 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17671 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!589635 () Bool)

(declare-fun res!377237 () Bool)

(assert (=> b!589635 (=> (not res!377237) (not e!336618))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589635 (= res!377237 (validKeyInArray!0 k0!1786))))

(declare-fun b!589636 () Bool)

(declare-fun res!377245 () Bool)

(assert (=> b!589636 (=> (not res!377245) (not e!336614))))

(declare-datatypes ((List!11765 0))(
  ( (Nil!11762) (Cons!11761 (h!12806 (_ BitVec 64)) (t!18001 List!11765)) )
))
(declare-fun arrayNoDuplicates!0 (array!36804 (_ BitVec 32) List!11765) Bool)

(assert (=> b!589636 (= res!377245 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11762))))

(declare-fun b!589637 () Bool)

(declare-fun res!377248 () Bool)

(assert (=> b!589637 (=> (not res!377248) (not e!336618))))

(assert (=> b!589637 (= res!377248 (validKeyInArray!0 (select (arr!17671 a!2986) j!136)))))

(declare-fun b!589627 () Bool)

(declare-fun Unit!18419 () Unit!18416)

(assert (=> b!589627 (= e!336615 Unit!18419)))

(assert (=> b!589627 false))

(declare-fun res!377249 () Bool)

(assert (=> start!54006 (=> (not res!377249) (not e!336618))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54006 (= res!377249 (validMask!0 mask!3053))))

(assert (=> start!54006 e!336618))

(assert (=> start!54006 true))

(declare-fun array_inv!13445 (array!36804) Bool)

(assert (=> start!54006 (array_inv!13445 a!2986)))

(assert (= (and start!54006 res!377249) b!589623))

(assert (= (and b!589623 res!377238) b!589637))

(assert (= (and b!589637 res!377248) b!589635))

(assert (= (and b!589635 res!377237) b!589626))

(assert (= (and b!589626 res!377240) b!589629))

(assert (= (and b!589629 res!377242) b!589631))

(assert (= (and b!589631 res!377247) b!589636))

(assert (= (and b!589636 res!377245) b!589634))

(assert (= (and b!589634 res!377246) b!589628))

(assert (= (and b!589628 res!377239) b!589633))

(assert (= (and b!589633 res!377244) b!589630))

(assert (= (and b!589630 res!377241) b!589624))

(assert (= (and b!589630 c!66560) b!589627))

(assert (= (and b!589630 (not c!66560)) b!589625))

(assert (= (and b!589630 (not res!377243)) b!589632))

(declare-fun m!568177 () Bool)

(assert (=> b!589626 m!568177))

(declare-fun m!568179 () Bool)

(assert (=> b!589629 m!568179))

(declare-fun m!568181 () Bool)

(assert (=> b!589637 m!568181))

(assert (=> b!589637 m!568181))

(declare-fun m!568183 () Bool)

(assert (=> b!589637 m!568183))

(declare-fun m!568185 () Bool)

(assert (=> b!589628 m!568185))

(declare-fun m!568187 () Bool)

(assert (=> b!589628 m!568187))

(declare-fun m!568189 () Bool)

(assert (=> start!54006 m!568189))

(declare-fun m!568191 () Bool)

(assert (=> start!54006 m!568191))

(declare-fun m!568193 () Bool)

(assert (=> b!589635 m!568193))

(declare-fun m!568195 () Bool)

(assert (=> b!589630 m!568195))

(declare-fun m!568197 () Bool)

(assert (=> b!589630 m!568197))

(assert (=> b!589630 m!568181))

(assert (=> b!589630 m!568185))

(declare-fun m!568199 () Bool)

(assert (=> b!589630 m!568199))

(assert (=> b!589630 m!568181))

(declare-fun m!568201 () Bool)

(assert (=> b!589630 m!568201))

(declare-fun m!568203 () Bool)

(assert (=> b!589630 m!568203))

(declare-fun m!568205 () Bool)

(assert (=> b!589630 m!568205))

(declare-fun m!568207 () Bool)

(assert (=> b!589633 m!568207))

(assert (=> b!589633 m!568181))

(assert (=> b!589633 m!568181))

(declare-fun m!568209 () Bool)

(assert (=> b!589633 m!568209))

(declare-fun m!568211 () Bool)

(assert (=> b!589631 m!568211))

(assert (=> b!589632 m!568185))

(declare-fun m!568213 () Bool)

(assert (=> b!589632 m!568213))

(assert (=> b!589632 m!568181))

(declare-fun m!568215 () Bool)

(assert (=> b!589634 m!568215))

(declare-fun m!568217 () Bool)

(assert (=> b!589636 m!568217))

(check-sat (not b!589635) (not b!589629) (not start!54006) (not b!589630) (not b!589626) (not b!589636) (not b!589631) (not b!589633) (not b!589637))
(check-sat)
