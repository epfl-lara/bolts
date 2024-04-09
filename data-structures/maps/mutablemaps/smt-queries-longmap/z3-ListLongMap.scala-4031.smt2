; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54902 () Bool)

(assert start!54902)

(declare-fun b!600545 () Bool)

(declare-datatypes ((Unit!18956 0))(
  ( (Unit!18957) )
))
(declare-fun e!343363 () Unit!18956)

(declare-fun Unit!18958 () Unit!18956)

(assert (=> b!600545 (= e!343363 Unit!18958)))

(declare-fun b!600546 () Bool)

(declare-fun e!343364 () Bool)

(declare-fun e!343366 () Bool)

(assert (=> b!600546 (= e!343364 (not e!343366))))

(declare-fun res!385589 () Bool)

(assert (=> b!600546 (=> res!385589 e!343366)))

(declare-datatypes ((SeekEntryResult!6253 0))(
  ( (MissingZero!6253 (index!27268 (_ BitVec 32))) (Found!6253 (index!27269 (_ BitVec 32))) (Intermediate!6253 (undefined!7065 Bool) (index!27270 (_ BitVec 32)) (x!56093 (_ BitVec 32))) (Undefined!6253) (MissingVacant!6253 (index!27271 (_ BitVec 32))) )
))
(declare-fun lt!273297 () SeekEntryResult!6253)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!600546 (= res!385589 (not (= lt!273297 (Found!6253 index!984))))))

(declare-fun lt!273288 () Unit!18956)

(assert (=> b!600546 (= lt!273288 e!343363)))

(declare-fun c!67850 () Bool)

(assert (=> b!600546 (= c!67850 (= lt!273297 Undefined!6253))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!37100 0))(
  ( (array!37101 (arr!17806 (Array (_ BitVec 32) (_ BitVec 64))) (size!18170 (_ BitVec 32))) )
))
(declare-fun lt!273299 () array!37100)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!273298 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37100 (_ BitVec 32)) SeekEntryResult!6253)

(assert (=> b!600546 (= lt!273297 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273298 lt!273299 mask!3053))))

(declare-fun e!343368 () Bool)

(assert (=> b!600546 e!343368))

(declare-fun res!385579 () Bool)

(assert (=> b!600546 (=> (not res!385579) (not e!343368))))

(declare-fun lt!273289 () (_ BitVec 32))

(declare-fun lt!273296 () SeekEntryResult!6253)

(assert (=> b!600546 (= res!385579 (= lt!273296 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273289 vacantSpotIndex!68 lt!273298 lt!273299 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37100)

(assert (=> b!600546 (= lt!273296 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273289 vacantSpotIndex!68 (select (arr!17806 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!600546 (= lt!273298 (select (store (arr!17806 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!273295 () Unit!18956)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37100 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18956)

(assert (=> b!600546 (= lt!273295 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273289 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!600546 (= lt!273289 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!600547 () Bool)

(declare-fun res!385588 () Bool)

(declare-fun e!343374 () Bool)

(assert (=> b!600547 (=> (not res!385588) (not e!343374))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37100 (_ BitVec 32)) Bool)

(assert (=> b!600547 (= res!385588 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!600548 () Bool)

(declare-fun e!343370 () Bool)

(declare-fun arrayContainsKey!0 (array!37100 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!600548 (= e!343370 (arrayContainsKey!0 lt!273299 (select (arr!17806 a!2986) j!136) index!984))))

(declare-fun b!600549 () Bool)

(declare-fun Unit!18959 () Unit!18956)

(assert (=> b!600549 (= e!343363 Unit!18959)))

(assert (=> b!600549 false))

(declare-fun res!385587 () Bool)

(declare-fun e!343371 () Bool)

(assert (=> start!54902 (=> (not res!385587) (not e!343371))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54902 (= res!385587 (validMask!0 mask!3053))))

(assert (=> start!54902 e!343371))

(assert (=> start!54902 true))

(declare-fun array_inv!13580 (array!37100) Bool)

(assert (=> start!54902 (array_inv!13580 a!2986)))

(declare-fun b!600550 () Bool)

(assert (=> b!600550 (= e!343371 e!343374)))

(declare-fun res!385598 () Bool)

(assert (=> b!600550 (=> (not res!385598) (not e!343374))))

(declare-fun lt!273291 () SeekEntryResult!6253)

(assert (=> b!600550 (= res!385598 (or (= lt!273291 (MissingZero!6253 i!1108)) (= lt!273291 (MissingVacant!6253 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37100 (_ BitVec 32)) SeekEntryResult!6253)

(assert (=> b!600550 (= lt!273291 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!600551 () Bool)

(declare-fun e!343375 () Bool)

(assert (=> b!600551 (= e!343366 e!343375)))

(declare-fun res!385590 () Bool)

(assert (=> b!600551 (=> res!385590 e!343375)))

(declare-fun lt!273300 () (_ BitVec 64))

(assert (=> b!600551 (= res!385590 (or (not (= (select (arr!17806 a!2986) j!136) lt!273298)) (not (= (select (arr!17806 a!2986) j!136) lt!273300)) (bvsge j!136 index!984)))))

(declare-fun e!343367 () Bool)

(assert (=> b!600551 e!343367))

(declare-fun res!385582 () Bool)

(assert (=> b!600551 (=> (not res!385582) (not e!343367))))

(assert (=> b!600551 (= res!385582 (= lt!273300 (select (arr!17806 a!2986) j!136)))))

(assert (=> b!600551 (= lt!273300 (select (store (arr!17806 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!600552 () Bool)

(declare-fun res!385581 () Bool)

(assert (=> b!600552 (=> (not res!385581) (not e!343371))))

(assert (=> b!600552 (= res!385581 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!600553 () Bool)

(declare-fun res!385594 () Bool)

(declare-fun e!343365 () Bool)

(assert (=> b!600553 (=> res!385594 e!343365)))

(declare-datatypes ((List!11900 0))(
  ( (Nil!11897) (Cons!11896 (h!12941 (_ BitVec 64)) (t!18136 List!11900)) )
))
(declare-fun noDuplicate!299 (List!11900) Bool)

(assert (=> b!600553 (= res!385594 (not (noDuplicate!299 Nil!11897)))))

(declare-fun b!600554 () Bool)

(declare-fun lt!273292 () SeekEntryResult!6253)

(assert (=> b!600554 (= e!343368 (= lt!273292 lt!273296))))

(declare-fun b!600555 () Bool)

(declare-fun e!343372 () Bool)

(assert (=> b!600555 (= e!343367 e!343372)))

(declare-fun res!385585 () Bool)

(assert (=> b!600555 (=> res!385585 e!343372)))

(assert (=> b!600555 (= res!385585 (or (not (= (select (arr!17806 a!2986) j!136) lt!273298)) (not (= (select (arr!17806 a!2986) j!136) lt!273300)) (bvsge j!136 index!984)))))

(declare-fun b!600556 () Bool)

(assert (=> b!600556 (= e!343375 e!343365)))

(declare-fun res!385583 () Bool)

(assert (=> b!600556 (=> res!385583 e!343365)))

(assert (=> b!600556 (= res!385583 (or (bvsge (size!18170 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18170 a!2986))))))

(declare-fun arrayNoDuplicates!0 (array!37100 (_ BitVec 32) List!11900) Bool)

(assert (=> b!600556 (arrayNoDuplicates!0 lt!273299 j!136 Nil!11897)))

(declare-fun lt!273287 () Unit!18956)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37100 (_ BitVec 32) (_ BitVec 32)) Unit!18956)

(assert (=> b!600556 (= lt!273287 (lemmaNoDuplicateFromThenFromBigger!0 lt!273299 #b00000000000000000000000000000000 j!136))))

(assert (=> b!600556 (arrayNoDuplicates!0 lt!273299 #b00000000000000000000000000000000 Nil!11897)))

(declare-fun lt!273294 () Unit!18956)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37100 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11900) Unit!18956)

(assert (=> b!600556 (= lt!273294 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11897))))

(assert (=> b!600556 (arrayContainsKey!0 lt!273299 (select (arr!17806 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!273293 () Unit!18956)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37100 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18956)

(assert (=> b!600556 (= lt!273293 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273299 (select (arr!17806 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!600557 () Bool)

(assert (=> b!600557 (= e!343365 true)))

(declare-fun lt!273290 () Bool)

(declare-fun contains!2985 (List!11900 (_ BitVec 64)) Bool)

(assert (=> b!600557 (= lt!273290 (contains!2985 Nil!11897 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600558 () Bool)

(declare-fun e!343369 () Bool)

(assert (=> b!600558 (= e!343369 e!343364)))

(declare-fun res!385596 () Bool)

(assert (=> b!600558 (=> (not res!385596) (not e!343364))))

(assert (=> b!600558 (= res!385596 (and (= lt!273292 (Found!6253 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17806 a!2986) index!984) (select (arr!17806 a!2986) j!136))) (not (= (select (arr!17806 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!600558 (= lt!273292 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17806 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!600559 () Bool)

(declare-fun res!385586 () Bool)

(assert (=> b!600559 (=> (not res!385586) (not e!343371))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!600559 (= res!385586 (validKeyInArray!0 k0!1786))))

(declare-fun b!600560 () Bool)

(assert (=> b!600560 (= e!343374 e!343369)))

(declare-fun res!385597 () Bool)

(assert (=> b!600560 (=> (not res!385597) (not e!343369))))

(assert (=> b!600560 (= res!385597 (= (select (store (arr!17806 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!600560 (= lt!273299 (array!37101 (store (arr!17806 a!2986) i!1108 k0!1786) (size!18170 a!2986)))))

(declare-fun b!600561 () Bool)

(declare-fun res!385584 () Bool)

(assert (=> b!600561 (=> (not res!385584) (not e!343371))))

(assert (=> b!600561 (= res!385584 (validKeyInArray!0 (select (arr!17806 a!2986) j!136)))))

(declare-fun b!600562 () Bool)

(assert (=> b!600562 (= e!343372 e!343370)))

(declare-fun res!385580 () Bool)

(assert (=> b!600562 (=> (not res!385580) (not e!343370))))

(assert (=> b!600562 (= res!385580 (arrayContainsKey!0 lt!273299 (select (arr!17806 a!2986) j!136) j!136))))

(declare-fun b!600563 () Bool)

(declare-fun res!385595 () Bool)

(assert (=> b!600563 (=> res!385595 e!343365)))

(assert (=> b!600563 (= res!385595 (contains!2985 Nil!11897 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600564 () Bool)

(declare-fun res!385591 () Bool)

(assert (=> b!600564 (=> (not res!385591) (not e!343371))))

(assert (=> b!600564 (= res!385591 (and (= (size!18170 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18170 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18170 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!600565 () Bool)

(declare-fun res!385593 () Bool)

(assert (=> b!600565 (=> (not res!385593) (not e!343374))))

(assert (=> b!600565 (= res!385593 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17806 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!600566 () Bool)

(declare-fun res!385592 () Bool)

(assert (=> b!600566 (=> (not res!385592) (not e!343374))))

(assert (=> b!600566 (= res!385592 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11897))))

(assert (= (and start!54902 res!385587) b!600564))

(assert (= (and b!600564 res!385591) b!600561))

(assert (= (and b!600561 res!385584) b!600559))

(assert (= (and b!600559 res!385586) b!600552))

(assert (= (and b!600552 res!385581) b!600550))

(assert (= (and b!600550 res!385598) b!600547))

(assert (= (and b!600547 res!385588) b!600566))

(assert (= (and b!600566 res!385592) b!600565))

(assert (= (and b!600565 res!385593) b!600560))

(assert (= (and b!600560 res!385597) b!600558))

(assert (= (and b!600558 res!385596) b!600546))

(assert (= (and b!600546 res!385579) b!600554))

(assert (= (and b!600546 c!67850) b!600549))

(assert (= (and b!600546 (not c!67850)) b!600545))

(assert (= (and b!600546 (not res!385589)) b!600551))

(assert (= (and b!600551 res!385582) b!600555))

(assert (= (and b!600555 (not res!385585)) b!600562))

(assert (= (and b!600562 res!385580) b!600548))

(assert (= (and b!600551 (not res!385590)) b!600556))

(assert (= (and b!600556 (not res!385583)) b!600553))

(assert (= (and b!600553 (not res!385594)) b!600563))

(assert (= (and b!600563 (not res!385595)) b!600557))

(declare-fun m!577807 () Bool)

(assert (=> b!600552 m!577807))

(declare-fun m!577809 () Bool)

(assert (=> b!600559 m!577809))

(declare-fun m!577811 () Bool)

(assert (=> start!54902 m!577811))

(declare-fun m!577813 () Bool)

(assert (=> start!54902 m!577813))

(declare-fun m!577815 () Bool)

(assert (=> b!600560 m!577815))

(declare-fun m!577817 () Bool)

(assert (=> b!600560 m!577817))

(declare-fun m!577819 () Bool)

(assert (=> b!600546 m!577819))

(declare-fun m!577821 () Bool)

(assert (=> b!600546 m!577821))

(declare-fun m!577823 () Bool)

(assert (=> b!600546 m!577823))

(assert (=> b!600546 m!577815))

(declare-fun m!577825 () Bool)

(assert (=> b!600546 m!577825))

(assert (=> b!600546 m!577823))

(declare-fun m!577827 () Bool)

(assert (=> b!600546 m!577827))

(declare-fun m!577829 () Bool)

(assert (=> b!600546 m!577829))

(declare-fun m!577831 () Bool)

(assert (=> b!600546 m!577831))

(declare-fun m!577833 () Bool)

(assert (=> b!600550 m!577833))

(assert (=> b!600556 m!577823))

(declare-fun m!577835 () Bool)

(assert (=> b!600556 m!577835))

(assert (=> b!600556 m!577823))

(declare-fun m!577837 () Bool)

(assert (=> b!600556 m!577837))

(assert (=> b!600556 m!577823))

(declare-fun m!577839 () Bool)

(assert (=> b!600556 m!577839))

(declare-fun m!577841 () Bool)

(assert (=> b!600556 m!577841))

(declare-fun m!577843 () Bool)

(assert (=> b!600556 m!577843))

(declare-fun m!577845 () Bool)

(assert (=> b!600556 m!577845))

(assert (=> b!600551 m!577823))

(assert (=> b!600551 m!577815))

(declare-fun m!577847 () Bool)

(assert (=> b!600551 m!577847))

(assert (=> b!600548 m!577823))

(assert (=> b!600548 m!577823))

(declare-fun m!577849 () Bool)

(assert (=> b!600548 m!577849))

(declare-fun m!577851 () Bool)

(assert (=> b!600566 m!577851))

(assert (=> b!600561 m!577823))

(assert (=> b!600561 m!577823))

(declare-fun m!577853 () Bool)

(assert (=> b!600561 m!577853))

(declare-fun m!577855 () Bool)

(assert (=> b!600547 m!577855))

(declare-fun m!577857 () Bool)

(assert (=> b!600557 m!577857))

(declare-fun m!577859 () Bool)

(assert (=> b!600553 m!577859))

(assert (=> b!600555 m!577823))

(declare-fun m!577861 () Bool)

(assert (=> b!600563 m!577861))

(declare-fun m!577863 () Bool)

(assert (=> b!600565 m!577863))

(declare-fun m!577865 () Bool)

(assert (=> b!600558 m!577865))

(assert (=> b!600558 m!577823))

(assert (=> b!600558 m!577823))

(declare-fun m!577867 () Bool)

(assert (=> b!600558 m!577867))

(assert (=> b!600562 m!577823))

(assert (=> b!600562 m!577823))

(declare-fun m!577869 () Bool)

(assert (=> b!600562 m!577869))

(check-sat (not b!600547) (not b!600563) (not b!600556) (not b!600546) (not b!600552) (not b!600559) (not start!54902) (not b!600566) (not b!600561) (not b!600557) (not b!600558) (not b!600562) (not b!600550) (not b!600553) (not b!600548))
(check-sat)
