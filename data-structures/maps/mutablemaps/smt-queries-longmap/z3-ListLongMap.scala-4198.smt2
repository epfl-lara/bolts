; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57356 () Bool)

(assert start!57356)

(declare-fun b!634359 () Bool)

(declare-fun e!362779 () Bool)

(declare-fun e!362776 () Bool)

(assert (=> b!634359 (= e!362779 e!362776)))

(declare-fun res!410393 () Bool)

(assert (=> b!634359 (=> (not res!410393) (not e!362776))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38165 0))(
  ( (array!38166 (arr!18307 (Array (_ BitVec 32) (_ BitVec 64))) (size!18671 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38165)

(declare-fun lt!293298 () array!38165)

(declare-fun arrayContainsKey!0 (array!38165 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!634359 (= res!410393 (arrayContainsKey!0 lt!293298 (select (arr!18307 a!2986) j!136) j!136))))

(declare-fun b!634360 () Bool)

(declare-fun res!410406 () Bool)

(declare-fun e!362770 () Bool)

(assert (=> b!634360 (=> (not res!410406) (not e!362770))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38165 (_ BitVec 32)) Bool)

(assert (=> b!634360 (= res!410406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!634361 () Bool)

(declare-fun e!362772 () Bool)

(declare-datatypes ((SeekEntryResult!6754 0))(
  ( (MissingZero!6754 (index!29317 (_ BitVec 32))) (Found!6754 (index!29318 (_ BitVec 32))) (Intermediate!6754 (undefined!7566 Bool) (index!29319 (_ BitVec 32)) (x!58089 (_ BitVec 32))) (Undefined!6754) (MissingVacant!6754 (index!29320 (_ BitVec 32))) )
))
(declare-fun lt!293297 () SeekEntryResult!6754)

(declare-fun lt!293296 () SeekEntryResult!6754)

(assert (=> b!634361 (= e!362772 (= lt!293297 lt!293296))))

(declare-fun b!634362 () Bool)

(declare-fun e!362778 () Bool)

(assert (=> b!634362 (= e!362778 e!362779)))

(declare-fun res!410401 () Bool)

(assert (=> b!634362 (=> res!410401 e!362779)))

(declare-fun lt!293292 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lt!293295 () (_ BitVec 64))

(assert (=> b!634362 (= res!410401 (or (not (= (select (arr!18307 a!2986) j!136) lt!293295)) (not (= (select (arr!18307 a!2986) j!136) lt!293292)) (bvsge j!136 index!984)))))

(declare-fun b!634363 () Bool)

(declare-fun e!362777 () Bool)

(assert (=> b!634363 (= e!362770 e!362777)))

(declare-fun res!410408 () Bool)

(assert (=> b!634363 (=> (not res!410408) (not e!362777))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!634363 (= res!410408 (= (select (store (arr!18307 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!634363 (= lt!293298 (array!38166 (store (arr!18307 a!2986) i!1108 k0!1786) (size!18671 a!2986)))))

(declare-fun b!634364 () Bool)

(declare-fun res!410395 () Bool)

(declare-fun e!362769 () Bool)

(assert (=> b!634364 (=> (not res!410395) (not e!362769))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!634364 (= res!410395 (validKeyInArray!0 (select (arr!18307 a!2986) j!136)))))

(declare-fun b!634365 () Bool)

(assert (=> b!634365 (= e!362769 e!362770)))

(declare-fun res!410400 () Bool)

(assert (=> b!634365 (=> (not res!410400) (not e!362770))))

(declare-fun lt!293290 () SeekEntryResult!6754)

(assert (=> b!634365 (= res!410400 (or (= lt!293290 (MissingZero!6754 i!1108)) (= lt!293290 (MissingVacant!6754 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38165 (_ BitVec 32)) SeekEntryResult!6754)

(assert (=> b!634365 (= lt!293290 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!410405 () Bool)

(assert (=> start!57356 (=> (not res!410405) (not e!362769))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57356 (= res!410405 (validMask!0 mask!3053))))

(assert (=> start!57356 e!362769))

(assert (=> start!57356 true))

(declare-fun array_inv!14081 (array!38165) Bool)

(assert (=> start!57356 (array_inv!14081 a!2986)))

(declare-fun b!634366 () Bool)

(declare-fun e!362775 () Bool)

(declare-fun e!362774 () Bool)

(assert (=> b!634366 (= e!362775 (not e!362774))))

(declare-fun res!410403 () Bool)

(assert (=> b!634366 (=> res!410403 e!362774)))

(declare-fun lt!293291 () SeekEntryResult!6754)

(assert (=> b!634366 (= res!410403 (not (= lt!293291 (Found!6754 index!984))))))

(declare-datatypes ((Unit!21374 0))(
  ( (Unit!21375) )
))
(declare-fun lt!293289 () Unit!21374)

(declare-fun e!362773 () Unit!21374)

(assert (=> b!634366 (= lt!293289 e!362773)))

(declare-fun c!72350 () Bool)

(assert (=> b!634366 (= c!72350 (= lt!293291 Undefined!6754))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38165 (_ BitVec 32)) SeekEntryResult!6754)

(assert (=> b!634366 (= lt!293291 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293295 lt!293298 mask!3053))))

(assert (=> b!634366 e!362772))

(declare-fun res!410396 () Bool)

(assert (=> b!634366 (=> (not res!410396) (not e!362772))))

(declare-fun lt!293294 () (_ BitVec 32))

(assert (=> b!634366 (= res!410396 (= lt!293296 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293294 vacantSpotIndex!68 lt!293295 lt!293298 mask!3053)))))

(assert (=> b!634366 (= lt!293296 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293294 vacantSpotIndex!68 (select (arr!18307 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!634366 (= lt!293295 (select (store (arr!18307 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!293293 () Unit!21374)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38165 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21374)

(assert (=> b!634366 (= lt!293293 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293294 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!634366 (= lt!293294 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!634367 () Bool)

(assert (=> b!634367 (= e!362777 e!362775)))

(declare-fun res!410399 () Bool)

(assert (=> b!634367 (=> (not res!410399) (not e!362775))))

(assert (=> b!634367 (= res!410399 (and (= lt!293297 (Found!6754 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18307 a!2986) index!984) (select (arr!18307 a!2986) j!136))) (not (= (select (arr!18307 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!634367 (= lt!293297 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18307 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!634368 () Bool)

(declare-fun Unit!21376 () Unit!21374)

(assert (=> b!634368 (= e!362773 Unit!21376)))

(assert (=> b!634368 false))

(declare-fun b!634369 () Bool)

(declare-fun res!410397 () Bool)

(assert (=> b!634369 (=> (not res!410397) (not e!362770))))

(declare-datatypes ((List!12401 0))(
  ( (Nil!12398) (Cons!12397 (h!13442 (_ BitVec 64)) (t!18637 List!12401)) )
))
(declare-fun arrayNoDuplicates!0 (array!38165 (_ BitVec 32) List!12401) Bool)

(assert (=> b!634369 (= res!410397 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12398))))

(declare-fun b!634370 () Bool)

(declare-fun res!410398 () Bool)

(assert (=> b!634370 (=> (not res!410398) (not e!362769))))

(assert (=> b!634370 (= res!410398 (validKeyInArray!0 k0!1786))))

(declare-fun b!634371 () Bool)

(assert (=> b!634371 (= e!362776 (arrayContainsKey!0 lt!293298 (select (arr!18307 a!2986) j!136) index!984))))

(declare-fun b!634372 () Bool)

(declare-fun res!410394 () Bool)

(assert (=> b!634372 (=> (not res!410394) (not e!362770))))

(assert (=> b!634372 (= res!410394 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18307 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!634373 () Bool)

(declare-fun res!410402 () Bool)

(assert (=> b!634373 (=> (not res!410402) (not e!362769))))

(assert (=> b!634373 (= res!410402 (and (= (size!18671 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18671 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18671 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!634374 () Bool)

(declare-fun res!410407 () Bool)

(assert (=> b!634374 (=> (not res!410407) (not e!362769))))

(assert (=> b!634374 (= res!410407 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!634375 () Bool)

(assert (=> b!634375 (= e!362774 true)))

(assert (=> b!634375 e!362778))

(declare-fun res!410404 () Bool)

(assert (=> b!634375 (=> (not res!410404) (not e!362778))))

(assert (=> b!634375 (= res!410404 (= lt!293292 (select (arr!18307 a!2986) j!136)))))

(assert (=> b!634375 (= lt!293292 (select (store (arr!18307 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!634376 () Bool)

(declare-fun Unit!21377 () Unit!21374)

(assert (=> b!634376 (= e!362773 Unit!21377)))

(assert (= (and start!57356 res!410405) b!634373))

(assert (= (and b!634373 res!410402) b!634364))

(assert (= (and b!634364 res!410395) b!634370))

(assert (= (and b!634370 res!410398) b!634374))

(assert (= (and b!634374 res!410407) b!634365))

(assert (= (and b!634365 res!410400) b!634360))

(assert (= (and b!634360 res!410406) b!634369))

(assert (= (and b!634369 res!410397) b!634372))

(assert (= (and b!634372 res!410394) b!634363))

(assert (= (and b!634363 res!410408) b!634367))

(assert (= (and b!634367 res!410399) b!634366))

(assert (= (and b!634366 res!410396) b!634361))

(assert (= (and b!634366 c!72350) b!634368))

(assert (= (and b!634366 (not c!72350)) b!634376))

(assert (= (and b!634366 (not res!410403)) b!634375))

(assert (= (and b!634375 res!410404) b!634362))

(assert (= (and b!634362 (not res!410401)) b!634359))

(assert (= (and b!634359 res!410393) b!634371))

(declare-fun m!608905 () Bool)

(assert (=> b!634360 m!608905))

(declare-fun m!608907 () Bool)

(assert (=> b!634369 m!608907))

(declare-fun m!608909 () Bool)

(assert (=> b!634374 m!608909))

(declare-fun m!608911 () Bool)

(assert (=> b!634359 m!608911))

(assert (=> b!634359 m!608911))

(declare-fun m!608913 () Bool)

(assert (=> b!634359 m!608913))

(declare-fun m!608915 () Bool)

(assert (=> b!634365 m!608915))

(declare-fun m!608917 () Bool)

(assert (=> b!634363 m!608917))

(declare-fun m!608919 () Bool)

(assert (=> b!634363 m!608919))

(assert (=> b!634375 m!608911))

(assert (=> b!634375 m!608917))

(declare-fun m!608921 () Bool)

(assert (=> b!634375 m!608921))

(declare-fun m!608923 () Bool)

(assert (=> b!634372 m!608923))

(assert (=> b!634371 m!608911))

(assert (=> b!634371 m!608911))

(declare-fun m!608925 () Bool)

(assert (=> b!634371 m!608925))

(assert (=> b!634364 m!608911))

(assert (=> b!634364 m!608911))

(declare-fun m!608927 () Bool)

(assert (=> b!634364 m!608927))

(declare-fun m!608929 () Bool)

(assert (=> start!57356 m!608929))

(declare-fun m!608931 () Bool)

(assert (=> start!57356 m!608931))

(declare-fun m!608933 () Bool)

(assert (=> b!634367 m!608933))

(assert (=> b!634367 m!608911))

(assert (=> b!634367 m!608911))

(declare-fun m!608935 () Bool)

(assert (=> b!634367 m!608935))

(assert (=> b!634362 m!608911))

(declare-fun m!608937 () Bool)

(assert (=> b!634366 m!608937))

(declare-fun m!608939 () Bool)

(assert (=> b!634366 m!608939))

(assert (=> b!634366 m!608911))

(declare-fun m!608941 () Bool)

(assert (=> b!634366 m!608941))

(assert (=> b!634366 m!608911))

(assert (=> b!634366 m!608917))

(declare-fun m!608943 () Bool)

(assert (=> b!634366 m!608943))

(declare-fun m!608945 () Bool)

(assert (=> b!634366 m!608945))

(declare-fun m!608947 () Bool)

(assert (=> b!634366 m!608947))

(declare-fun m!608949 () Bool)

(assert (=> b!634370 m!608949))

(check-sat (not b!634366) (not b!634369) (not b!634374) (not b!634365) (not b!634360) (not b!634367) (not b!634370) (not start!57356) (not b!634371) (not b!634364) (not b!634359))
(check-sat)
