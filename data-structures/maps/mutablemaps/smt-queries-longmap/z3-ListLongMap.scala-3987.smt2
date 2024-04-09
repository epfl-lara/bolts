; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54012 () Bool)

(assert start!54012)

(declare-fun res!377361 () Bool)

(declare-fun e!336684 () Bool)

(assert (=> start!54012 (=> (not res!377361) (not e!336684))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54012 (= res!377361 (validMask!0 mask!3053))))

(assert (=> start!54012 e!336684))

(assert (=> start!54012 true))

(declare-datatypes ((array!36810 0))(
  ( (array!36811 (arr!17674 (Array (_ BitVec 32) (_ BitVec 64))) (size!18038 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36810)

(declare-fun array_inv!13448 (array!36810) Bool)

(assert (=> start!54012 (array_inv!13448 a!2986)))

(declare-fun b!589758 () Bool)

(declare-fun res!377364 () Bool)

(assert (=> b!589758 (=> (not res!377364) (not e!336684))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589758 (= res!377364 (validKeyInArray!0 k0!1786))))

(declare-fun b!589759 () Bool)

(declare-fun res!377356 () Bool)

(declare-fun e!336691 () Bool)

(assert (=> b!589759 (=> (not res!377356) (not e!336691))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!589759 (= res!377356 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17674 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!589760 () Bool)

(declare-fun res!377359 () Bool)

(assert (=> b!589760 (=> (not res!377359) (not e!336684))))

(declare-fun arrayContainsKey!0 (array!36810 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589760 (= res!377359 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!589761 () Bool)

(declare-fun e!336685 () Bool)

(declare-fun e!336686 () Bool)

(assert (=> b!589761 (= e!336685 e!336686)))

(declare-fun res!377365 () Bool)

(assert (=> b!589761 (=> (not res!377365) (not e!336686))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6121 0))(
  ( (MissingZero!6121 (index!26714 (_ BitVec 32))) (Found!6121 (index!26715 (_ BitVec 32))) (Intermediate!6121 (undefined!6933 Bool) (index!26716 (_ BitVec 32)) (x!55530 (_ BitVec 32))) (Undefined!6121) (MissingVacant!6121 (index!26717 (_ BitVec 32))) )
))
(declare-fun lt!267601 () SeekEntryResult!6121)

(assert (=> b!589761 (= res!377365 (and (= lt!267601 (Found!6121 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17674 a!2986) index!984) (select (arr!17674 a!2986) j!136))) (not (= (select (arr!17674 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36810 (_ BitVec 32)) SeekEntryResult!6121)

(assert (=> b!589761 (= lt!267601 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17674 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!589762 () Bool)

(declare-datatypes ((Unit!18428 0))(
  ( (Unit!18429) )
))
(declare-fun e!336688 () Unit!18428)

(declare-fun Unit!18430 () Unit!18428)

(assert (=> b!589762 (= e!336688 Unit!18430)))

(declare-fun b!589763 () Bool)

(declare-fun e!336689 () Bool)

(assert (=> b!589763 (= e!336686 (not e!336689))))

(declare-fun res!377355 () Bool)

(assert (=> b!589763 (=> res!377355 e!336689)))

(declare-fun lt!267608 () SeekEntryResult!6121)

(assert (=> b!589763 (= res!377355 (not (= lt!267608 (Found!6121 index!984))))))

(declare-fun lt!267603 () Unit!18428)

(assert (=> b!589763 (= lt!267603 e!336688)))

(declare-fun c!66569 () Bool)

(assert (=> b!589763 (= c!66569 (= lt!267608 Undefined!6121))))

(declare-fun lt!267605 () (_ BitVec 64))

(declare-fun lt!267600 () array!36810)

(assert (=> b!589763 (= lt!267608 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267605 lt!267600 mask!3053))))

(declare-fun e!336687 () Bool)

(assert (=> b!589763 e!336687))

(declare-fun res!377363 () Bool)

(assert (=> b!589763 (=> (not res!377363) (not e!336687))))

(declare-fun lt!267604 () (_ BitVec 32))

(declare-fun lt!267602 () SeekEntryResult!6121)

(assert (=> b!589763 (= res!377363 (= lt!267602 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267604 vacantSpotIndex!68 lt!267605 lt!267600 mask!3053)))))

(assert (=> b!589763 (= lt!267602 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267604 vacantSpotIndex!68 (select (arr!17674 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!589763 (= lt!267605 (select (store (arr!17674 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!267607 () Unit!18428)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36810 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18428)

(assert (=> b!589763 (= lt!267607 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267604 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589763 (= lt!267604 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!589764 () Bool)

(declare-fun res!377358 () Bool)

(assert (=> b!589764 (=> (not res!377358) (not e!336691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36810 (_ BitVec 32)) Bool)

(assert (=> b!589764 (= res!377358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!589765 () Bool)

(assert (=> b!589765 (= e!336689 (or (not (= (select (arr!17674 a!2986) j!136) lt!267605)) (not (= (select (arr!17674 a!2986) j!136) (select (store (arr!17674 a!2986) i!1108 k0!1786) index!984))) (bvsge j!136 index!984) (bvslt (size!18038 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!589765 (= (select (store (arr!17674 a!2986) i!1108 k0!1786) index!984) (select (arr!17674 a!2986) j!136))))

(declare-fun b!589766 () Bool)

(assert (=> b!589766 (= e!336691 e!336685)))

(declare-fun res!377354 () Bool)

(assert (=> b!589766 (=> (not res!377354) (not e!336685))))

(assert (=> b!589766 (= res!377354 (= (select (store (arr!17674 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!589766 (= lt!267600 (array!36811 (store (arr!17674 a!2986) i!1108 k0!1786) (size!18038 a!2986)))))

(declare-fun b!589767 () Bool)

(assert (=> b!589767 (= e!336684 e!336691)))

(declare-fun res!377360 () Bool)

(assert (=> b!589767 (=> (not res!377360) (not e!336691))))

(declare-fun lt!267606 () SeekEntryResult!6121)

(assert (=> b!589767 (= res!377360 (or (= lt!267606 (MissingZero!6121 i!1108)) (= lt!267606 (MissingVacant!6121 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36810 (_ BitVec 32)) SeekEntryResult!6121)

(assert (=> b!589767 (= lt!267606 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!589768 () Bool)

(declare-fun res!377366 () Bool)

(assert (=> b!589768 (=> (not res!377366) (not e!336684))))

(assert (=> b!589768 (= res!377366 (and (= (size!18038 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18038 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18038 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!589769 () Bool)

(declare-fun Unit!18431 () Unit!18428)

(assert (=> b!589769 (= e!336688 Unit!18431)))

(assert (=> b!589769 false))

(declare-fun b!589770 () Bool)

(declare-fun res!377357 () Bool)

(assert (=> b!589770 (=> (not res!377357) (not e!336691))))

(declare-datatypes ((List!11768 0))(
  ( (Nil!11765) (Cons!11764 (h!12809 (_ BitVec 64)) (t!18004 List!11768)) )
))
(declare-fun arrayNoDuplicates!0 (array!36810 (_ BitVec 32) List!11768) Bool)

(assert (=> b!589770 (= res!377357 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11765))))

(declare-fun b!589771 () Bool)

(assert (=> b!589771 (= e!336687 (= lt!267601 lt!267602))))

(declare-fun b!589772 () Bool)

(declare-fun res!377362 () Bool)

(assert (=> b!589772 (=> (not res!377362) (not e!336684))))

(assert (=> b!589772 (= res!377362 (validKeyInArray!0 (select (arr!17674 a!2986) j!136)))))

(assert (= (and start!54012 res!377361) b!589768))

(assert (= (and b!589768 res!377366) b!589772))

(assert (= (and b!589772 res!377362) b!589758))

(assert (= (and b!589758 res!377364) b!589760))

(assert (= (and b!589760 res!377359) b!589767))

(assert (= (and b!589767 res!377360) b!589764))

(assert (= (and b!589764 res!377358) b!589770))

(assert (= (and b!589770 res!377357) b!589759))

(assert (= (and b!589759 res!377356) b!589766))

(assert (= (and b!589766 res!377354) b!589761))

(assert (= (and b!589761 res!377365) b!589763))

(assert (= (and b!589763 res!377363) b!589771))

(assert (= (and b!589763 c!66569) b!589769))

(assert (= (and b!589763 (not c!66569)) b!589762))

(assert (= (and b!589763 (not res!377355)) b!589765))

(declare-fun m!568303 () Bool)

(assert (=> start!54012 m!568303))

(declare-fun m!568305 () Bool)

(assert (=> start!54012 m!568305))

(declare-fun m!568307 () Bool)

(assert (=> b!589761 m!568307))

(declare-fun m!568309 () Bool)

(assert (=> b!589761 m!568309))

(assert (=> b!589761 m!568309))

(declare-fun m!568311 () Bool)

(assert (=> b!589761 m!568311))

(declare-fun m!568313 () Bool)

(assert (=> b!589764 m!568313))

(declare-fun m!568315 () Bool)

(assert (=> b!589770 m!568315))

(declare-fun m!568317 () Bool)

(assert (=> b!589759 m!568317))

(declare-fun m!568319 () Bool)

(assert (=> b!589758 m!568319))

(declare-fun m!568321 () Bool)

(assert (=> b!589760 m!568321))

(assert (=> b!589772 m!568309))

(assert (=> b!589772 m!568309))

(declare-fun m!568323 () Bool)

(assert (=> b!589772 m!568323))

(declare-fun m!568325 () Bool)

(assert (=> b!589767 m!568325))

(declare-fun m!568327 () Bool)

(assert (=> b!589766 m!568327))

(declare-fun m!568329 () Bool)

(assert (=> b!589766 m!568329))

(declare-fun m!568331 () Bool)

(assert (=> b!589763 m!568331))

(declare-fun m!568333 () Bool)

(assert (=> b!589763 m!568333))

(assert (=> b!589763 m!568309))

(assert (=> b!589763 m!568327))

(declare-fun m!568335 () Bool)

(assert (=> b!589763 m!568335))

(assert (=> b!589763 m!568309))

(declare-fun m!568337 () Bool)

(assert (=> b!589763 m!568337))

(declare-fun m!568339 () Bool)

(assert (=> b!589763 m!568339))

(declare-fun m!568341 () Bool)

(assert (=> b!589763 m!568341))

(assert (=> b!589765 m!568309))

(assert (=> b!589765 m!568327))

(declare-fun m!568343 () Bool)

(assert (=> b!589765 m!568343))

(check-sat (not b!589761) (not b!589760) (not b!589758) (not b!589764) (not b!589763) (not start!54012) (not b!589772) (not b!589770) (not b!589767))
(check-sat)
(get-model)

(declare-fun d!85915 () Bool)

(assert (=> d!85915 (= (validKeyInArray!0 (select (arr!17674 a!2986) j!136)) (and (not (= (select (arr!17674 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17674 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!589772 d!85915))

(declare-fun b!589830 () Bool)

(declare-fun e!336722 () SeekEntryResult!6121)

(assert (=> b!589830 (= e!336722 Undefined!6121)))

(declare-fun b!589831 () Bool)

(declare-fun e!336724 () SeekEntryResult!6121)

(declare-fun lt!267643 () SeekEntryResult!6121)

(assert (=> b!589831 (= e!336724 (Found!6121 (index!26716 lt!267643)))))

(declare-fun b!589832 () Bool)

(declare-fun e!336723 () SeekEntryResult!6121)

(assert (=> b!589832 (= e!336723 (MissingZero!6121 (index!26716 lt!267643)))))

(declare-fun b!589833 () Bool)

(assert (=> b!589833 (= e!336722 e!336724)))

(declare-fun lt!267644 () (_ BitVec 64))

(assert (=> b!589833 (= lt!267644 (select (arr!17674 a!2986) (index!26716 lt!267643)))))

(declare-fun c!66581 () Bool)

(assert (=> b!589833 (= c!66581 (= lt!267644 k0!1786))))

(declare-fun d!85917 () Bool)

(declare-fun lt!267642 () SeekEntryResult!6121)

(get-info :version)

(assert (=> d!85917 (and (or ((_ is Undefined!6121) lt!267642) (not ((_ is Found!6121) lt!267642)) (and (bvsge (index!26715 lt!267642) #b00000000000000000000000000000000) (bvslt (index!26715 lt!267642) (size!18038 a!2986)))) (or ((_ is Undefined!6121) lt!267642) ((_ is Found!6121) lt!267642) (not ((_ is MissingZero!6121) lt!267642)) (and (bvsge (index!26714 lt!267642) #b00000000000000000000000000000000) (bvslt (index!26714 lt!267642) (size!18038 a!2986)))) (or ((_ is Undefined!6121) lt!267642) ((_ is Found!6121) lt!267642) ((_ is MissingZero!6121) lt!267642) (not ((_ is MissingVacant!6121) lt!267642)) (and (bvsge (index!26717 lt!267642) #b00000000000000000000000000000000) (bvslt (index!26717 lt!267642) (size!18038 a!2986)))) (or ((_ is Undefined!6121) lt!267642) (ite ((_ is Found!6121) lt!267642) (= (select (arr!17674 a!2986) (index!26715 lt!267642)) k0!1786) (ite ((_ is MissingZero!6121) lt!267642) (= (select (arr!17674 a!2986) (index!26714 lt!267642)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6121) lt!267642) (= (select (arr!17674 a!2986) (index!26717 lt!267642)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!85917 (= lt!267642 e!336722)))

(declare-fun c!66580 () Bool)

(assert (=> d!85917 (= c!66580 (and ((_ is Intermediate!6121) lt!267643) (undefined!6933 lt!267643)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36810 (_ BitVec 32)) SeekEntryResult!6121)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!85917 (= lt!267643 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!85917 (validMask!0 mask!3053)))

(assert (=> d!85917 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!267642)))

(declare-fun b!589834 () Bool)

(assert (=> b!589834 (= e!336723 (seekKeyOrZeroReturnVacant!0 (x!55530 lt!267643) (index!26716 lt!267643) (index!26716 lt!267643) k0!1786 a!2986 mask!3053))))

(declare-fun b!589835 () Bool)

(declare-fun c!66579 () Bool)

(assert (=> b!589835 (= c!66579 (= lt!267644 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!589835 (= e!336724 e!336723)))

(assert (= (and d!85917 c!66580) b!589830))

(assert (= (and d!85917 (not c!66580)) b!589833))

(assert (= (and b!589833 c!66581) b!589831))

(assert (= (and b!589833 (not c!66581)) b!589835))

(assert (= (and b!589835 c!66579) b!589832))

(assert (= (and b!589835 (not c!66579)) b!589834))

(declare-fun m!568387 () Bool)

(assert (=> b!589833 m!568387))

(declare-fun m!568389 () Bool)

(assert (=> d!85917 m!568389))

(declare-fun m!568391 () Bool)

(assert (=> d!85917 m!568391))

(declare-fun m!568393 () Bool)

(assert (=> d!85917 m!568393))

(declare-fun m!568395 () Bool)

(assert (=> d!85917 m!568395))

(declare-fun m!568397 () Bool)

(assert (=> d!85917 m!568397))

(assert (=> d!85917 m!568391))

(assert (=> d!85917 m!568303))

(declare-fun m!568399 () Bool)

(assert (=> b!589834 m!568399))

(assert (=> b!589767 d!85917))

(declare-fun e!336732 () SeekEntryResult!6121)

(declare-fun b!589848 () Bool)

(assert (=> b!589848 (= e!336732 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17674 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!85919 () Bool)

(declare-fun lt!267649 () SeekEntryResult!6121)

(assert (=> d!85919 (and (or ((_ is Undefined!6121) lt!267649) (not ((_ is Found!6121) lt!267649)) (and (bvsge (index!26715 lt!267649) #b00000000000000000000000000000000) (bvslt (index!26715 lt!267649) (size!18038 a!2986)))) (or ((_ is Undefined!6121) lt!267649) ((_ is Found!6121) lt!267649) (not ((_ is MissingVacant!6121) lt!267649)) (not (= (index!26717 lt!267649) vacantSpotIndex!68)) (and (bvsge (index!26717 lt!267649) #b00000000000000000000000000000000) (bvslt (index!26717 lt!267649) (size!18038 a!2986)))) (or ((_ is Undefined!6121) lt!267649) (ite ((_ is Found!6121) lt!267649) (= (select (arr!17674 a!2986) (index!26715 lt!267649)) (select (arr!17674 a!2986) j!136)) (and ((_ is MissingVacant!6121) lt!267649) (= (index!26717 lt!267649) vacantSpotIndex!68) (= (select (arr!17674 a!2986) (index!26717 lt!267649)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!336731 () SeekEntryResult!6121)

(assert (=> d!85919 (= lt!267649 e!336731)))

(declare-fun c!66590 () Bool)

(assert (=> d!85919 (= c!66590 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!267650 () (_ BitVec 64))

(assert (=> d!85919 (= lt!267650 (select (arr!17674 a!2986) index!984))))

(assert (=> d!85919 (validMask!0 mask!3053)))

(assert (=> d!85919 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17674 a!2986) j!136) a!2986 mask!3053) lt!267649)))

(declare-fun b!589849 () Bool)

(assert (=> b!589849 (= e!336731 Undefined!6121)))

(declare-fun b!589850 () Bool)

(declare-fun c!66589 () Bool)

(assert (=> b!589850 (= c!66589 (= lt!267650 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!336733 () SeekEntryResult!6121)

(assert (=> b!589850 (= e!336733 e!336732)))

(declare-fun b!589851 () Bool)

(assert (=> b!589851 (= e!336731 e!336733)))

(declare-fun c!66588 () Bool)

(assert (=> b!589851 (= c!66588 (= lt!267650 (select (arr!17674 a!2986) j!136)))))

(declare-fun b!589852 () Bool)

(assert (=> b!589852 (= e!336732 (MissingVacant!6121 vacantSpotIndex!68))))

(declare-fun b!589853 () Bool)

(assert (=> b!589853 (= e!336733 (Found!6121 index!984))))

(assert (= (and d!85919 c!66590) b!589849))

(assert (= (and d!85919 (not c!66590)) b!589851))

(assert (= (and b!589851 c!66588) b!589853))

(assert (= (and b!589851 (not c!66588)) b!589850))

(assert (= (and b!589850 c!66589) b!589852))

(assert (= (and b!589850 (not c!66589)) b!589848))

(assert (=> b!589848 m!568331))

(assert (=> b!589848 m!568331))

(assert (=> b!589848 m!568309))

(declare-fun m!568401 () Bool)

(assert (=> b!589848 m!568401))

(declare-fun m!568403 () Bool)

(assert (=> d!85919 m!568403))

(declare-fun m!568405 () Bool)

(assert (=> d!85919 m!568405))

(assert (=> d!85919 m!568307))

(assert (=> d!85919 m!568303))

(assert (=> b!589761 d!85919))

(declare-fun b!589854 () Bool)

(declare-fun e!336735 () SeekEntryResult!6121)

(assert (=> b!589854 (= e!336735 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!267604 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!267605 lt!267600 mask!3053))))

(declare-fun d!85921 () Bool)

(declare-fun lt!267651 () SeekEntryResult!6121)

(assert (=> d!85921 (and (or ((_ is Undefined!6121) lt!267651) (not ((_ is Found!6121) lt!267651)) (and (bvsge (index!26715 lt!267651) #b00000000000000000000000000000000) (bvslt (index!26715 lt!267651) (size!18038 lt!267600)))) (or ((_ is Undefined!6121) lt!267651) ((_ is Found!6121) lt!267651) (not ((_ is MissingVacant!6121) lt!267651)) (not (= (index!26717 lt!267651) vacantSpotIndex!68)) (and (bvsge (index!26717 lt!267651) #b00000000000000000000000000000000) (bvslt (index!26717 lt!267651) (size!18038 lt!267600)))) (or ((_ is Undefined!6121) lt!267651) (ite ((_ is Found!6121) lt!267651) (= (select (arr!17674 lt!267600) (index!26715 lt!267651)) lt!267605) (and ((_ is MissingVacant!6121) lt!267651) (= (index!26717 lt!267651) vacantSpotIndex!68) (= (select (arr!17674 lt!267600) (index!26717 lt!267651)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!336734 () SeekEntryResult!6121)

(assert (=> d!85921 (= lt!267651 e!336734)))

(declare-fun c!66593 () Bool)

(assert (=> d!85921 (= c!66593 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!267652 () (_ BitVec 64))

(assert (=> d!85921 (= lt!267652 (select (arr!17674 lt!267600) lt!267604))))

(assert (=> d!85921 (validMask!0 mask!3053)))

(assert (=> d!85921 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267604 vacantSpotIndex!68 lt!267605 lt!267600 mask!3053) lt!267651)))

(declare-fun b!589855 () Bool)

(assert (=> b!589855 (= e!336734 Undefined!6121)))

(declare-fun b!589856 () Bool)

(declare-fun c!66592 () Bool)

(assert (=> b!589856 (= c!66592 (= lt!267652 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!336736 () SeekEntryResult!6121)

(assert (=> b!589856 (= e!336736 e!336735)))

(declare-fun b!589857 () Bool)

(assert (=> b!589857 (= e!336734 e!336736)))

(declare-fun c!66591 () Bool)

(assert (=> b!589857 (= c!66591 (= lt!267652 lt!267605))))

(declare-fun b!589858 () Bool)

(assert (=> b!589858 (= e!336735 (MissingVacant!6121 vacantSpotIndex!68))))

(declare-fun b!589859 () Bool)

(assert (=> b!589859 (= e!336736 (Found!6121 lt!267604))))

(assert (= (and d!85921 c!66593) b!589855))

(assert (= (and d!85921 (not c!66593)) b!589857))

(assert (= (and b!589857 c!66591) b!589859))

(assert (= (and b!589857 (not c!66591)) b!589856))

(assert (= (and b!589856 c!66592) b!589858))

(assert (= (and b!589856 (not c!66592)) b!589854))

(declare-fun m!568407 () Bool)

(assert (=> b!589854 m!568407))

(assert (=> b!589854 m!568407))

(declare-fun m!568409 () Bool)

(assert (=> b!589854 m!568409))

(declare-fun m!568411 () Bool)

(assert (=> d!85921 m!568411))

(declare-fun m!568413 () Bool)

(assert (=> d!85921 m!568413))

(declare-fun m!568415 () Bool)

(assert (=> d!85921 m!568415))

(assert (=> d!85921 m!568303))

(assert (=> b!589763 d!85921))

(declare-fun d!85923 () Bool)

(declare-fun lt!267655 () (_ BitVec 32))

(assert (=> d!85923 (and (bvsge lt!267655 #b00000000000000000000000000000000) (bvslt lt!267655 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!85923 (= lt!267655 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!85923 (validMask!0 mask!3053)))

(assert (=> d!85923 (= (nextIndex!0 index!984 x!910 mask!3053) lt!267655)))

(declare-fun bs!18243 () Bool)

(assert (= bs!18243 d!85923))

(declare-fun m!568417 () Bool)

(assert (=> bs!18243 m!568417))

(assert (=> bs!18243 m!568303))

(assert (=> b!589763 d!85923))

(declare-fun e!336738 () SeekEntryResult!6121)

(declare-fun b!589860 () Bool)

(assert (=> b!589860 (= e!336738 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!267604 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17674 a!2986) j!136) a!2986 mask!3053))))

(declare-fun lt!267656 () SeekEntryResult!6121)

(declare-fun d!85927 () Bool)

(assert (=> d!85927 (and (or ((_ is Undefined!6121) lt!267656) (not ((_ is Found!6121) lt!267656)) (and (bvsge (index!26715 lt!267656) #b00000000000000000000000000000000) (bvslt (index!26715 lt!267656) (size!18038 a!2986)))) (or ((_ is Undefined!6121) lt!267656) ((_ is Found!6121) lt!267656) (not ((_ is MissingVacant!6121) lt!267656)) (not (= (index!26717 lt!267656) vacantSpotIndex!68)) (and (bvsge (index!26717 lt!267656) #b00000000000000000000000000000000) (bvslt (index!26717 lt!267656) (size!18038 a!2986)))) (or ((_ is Undefined!6121) lt!267656) (ite ((_ is Found!6121) lt!267656) (= (select (arr!17674 a!2986) (index!26715 lt!267656)) (select (arr!17674 a!2986) j!136)) (and ((_ is MissingVacant!6121) lt!267656) (= (index!26717 lt!267656) vacantSpotIndex!68) (= (select (arr!17674 a!2986) (index!26717 lt!267656)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!336737 () SeekEntryResult!6121)

(assert (=> d!85927 (= lt!267656 e!336737)))

(declare-fun c!66596 () Bool)

(assert (=> d!85927 (= c!66596 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!267657 () (_ BitVec 64))

(assert (=> d!85927 (= lt!267657 (select (arr!17674 a!2986) lt!267604))))

(assert (=> d!85927 (validMask!0 mask!3053)))

(assert (=> d!85927 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267604 vacantSpotIndex!68 (select (arr!17674 a!2986) j!136) a!2986 mask!3053) lt!267656)))

(declare-fun b!589861 () Bool)

(assert (=> b!589861 (= e!336737 Undefined!6121)))

(declare-fun b!589862 () Bool)

(declare-fun c!66595 () Bool)

(assert (=> b!589862 (= c!66595 (= lt!267657 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!336739 () SeekEntryResult!6121)

(assert (=> b!589862 (= e!336739 e!336738)))

(declare-fun b!589863 () Bool)

(assert (=> b!589863 (= e!336737 e!336739)))

(declare-fun c!66594 () Bool)

(assert (=> b!589863 (= c!66594 (= lt!267657 (select (arr!17674 a!2986) j!136)))))

(declare-fun b!589864 () Bool)

(assert (=> b!589864 (= e!336738 (MissingVacant!6121 vacantSpotIndex!68))))

(declare-fun b!589865 () Bool)

(assert (=> b!589865 (= e!336739 (Found!6121 lt!267604))))

(assert (= (and d!85927 c!66596) b!589861))

(assert (= (and d!85927 (not c!66596)) b!589863))

(assert (= (and b!589863 c!66594) b!589865))

(assert (= (and b!589863 (not c!66594)) b!589862))

(assert (= (and b!589862 c!66595) b!589864))

(assert (= (and b!589862 (not c!66595)) b!589860))

(assert (=> b!589860 m!568407))

(assert (=> b!589860 m!568407))

(assert (=> b!589860 m!568309))

(declare-fun m!568419 () Bool)

(assert (=> b!589860 m!568419))

(declare-fun m!568421 () Bool)

(assert (=> d!85927 m!568421))

(declare-fun m!568423 () Bool)

(assert (=> d!85927 m!568423))

(declare-fun m!568425 () Bool)

(assert (=> d!85927 m!568425))

(assert (=> d!85927 m!568303))

(assert (=> b!589763 d!85927))

(declare-fun e!336741 () SeekEntryResult!6121)

(declare-fun b!589866 () Bool)

(assert (=> b!589866 (= e!336741 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!267605 lt!267600 mask!3053))))

(declare-fun d!85929 () Bool)

(declare-fun lt!267658 () SeekEntryResult!6121)

(assert (=> d!85929 (and (or ((_ is Undefined!6121) lt!267658) (not ((_ is Found!6121) lt!267658)) (and (bvsge (index!26715 lt!267658) #b00000000000000000000000000000000) (bvslt (index!26715 lt!267658) (size!18038 lt!267600)))) (or ((_ is Undefined!6121) lt!267658) ((_ is Found!6121) lt!267658) (not ((_ is MissingVacant!6121) lt!267658)) (not (= (index!26717 lt!267658) vacantSpotIndex!68)) (and (bvsge (index!26717 lt!267658) #b00000000000000000000000000000000) (bvslt (index!26717 lt!267658) (size!18038 lt!267600)))) (or ((_ is Undefined!6121) lt!267658) (ite ((_ is Found!6121) lt!267658) (= (select (arr!17674 lt!267600) (index!26715 lt!267658)) lt!267605) (and ((_ is MissingVacant!6121) lt!267658) (= (index!26717 lt!267658) vacantSpotIndex!68) (= (select (arr!17674 lt!267600) (index!26717 lt!267658)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!336740 () SeekEntryResult!6121)

(assert (=> d!85929 (= lt!267658 e!336740)))

(declare-fun c!66599 () Bool)

(assert (=> d!85929 (= c!66599 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!267659 () (_ BitVec 64))

(assert (=> d!85929 (= lt!267659 (select (arr!17674 lt!267600) index!984))))

(assert (=> d!85929 (validMask!0 mask!3053)))

(assert (=> d!85929 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267605 lt!267600 mask!3053) lt!267658)))

(declare-fun b!589867 () Bool)

(assert (=> b!589867 (= e!336740 Undefined!6121)))

(declare-fun b!589868 () Bool)

(declare-fun c!66598 () Bool)

(assert (=> b!589868 (= c!66598 (= lt!267659 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!336742 () SeekEntryResult!6121)

(assert (=> b!589868 (= e!336742 e!336741)))

(declare-fun b!589869 () Bool)

(assert (=> b!589869 (= e!336740 e!336742)))

(declare-fun c!66597 () Bool)

(assert (=> b!589869 (= c!66597 (= lt!267659 lt!267605))))

(declare-fun b!589870 () Bool)

(assert (=> b!589870 (= e!336741 (MissingVacant!6121 vacantSpotIndex!68))))

(declare-fun b!589871 () Bool)

(assert (=> b!589871 (= e!336742 (Found!6121 index!984))))

(assert (= (and d!85929 c!66599) b!589867))

(assert (= (and d!85929 (not c!66599)) b!589869))

(assert (= (and b!589869 c!66597) b!589871))

(assert (= (and b!589869 (not c!66597)) b!589868))

(assert (= (and b!589868 c!66598) b!589870))

(assert (= (and b!589868 (not c!66598)) b!589866))

(assert (=> b!589866 m!568331))

(assert (=> b!589866 m!568331))

(declare-fun m!568427 () Bool)

(assert (=> b!589866 m!568427))

(declare-fun m!568429 () Bool)

(assert (=> d!85929 m!568429))

(declare-fun m!568431 () Bool)

(assert (=> d!85929 m!568431))

(declare-fun m!568433 () Bool)

(assert (=> d!85929 m!568433))

(assert (=> d!85929 m!568303))

(assert (=> b!589763 d!85929))

(declare-fun d!85931 () Bool)

(declare-fun e!336749 () Bool)

(assert (=> d!85931 e!336749))

(declare-fun res!377410 () Bool)

(assert (=> d!85931 (=> (not res!377410) (not e!336749))))

(assert (=> d!85931 (= res!377410 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18038 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18038 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18038 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18038 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18038 a!2986))))))

(declare-fun lt!267669 () Unit!18428)

(declare-fun choose!9 (array!36810 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18428)

(assert (=> d!85931 (= lt!267669 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267604 vacantSpotIndex!68 mask!3053))))

(assert (=> d!85931 (validMask!0 mask!3053)))

(assert (=> d!85931 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267604 vacantSpotIndex!68 mask!3053) lt!267669)))

(declare-fun b!589880 () Bool)

(assert (=> b!589880 (= e!336749 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267604 vacantSpotIndex!68 (select (arr!17674 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267604 vacantSpotIndex!68 (select (store (arr!17674 a!2986) i!1108 k0!1786) j!136) (array!36811 (store (arr!17674 a!2986) i!1108 k0!1786) (size!18038 a!2986)) mask!3053)))))

(assert (= (and d!85931 res!377410) b!589880))

(declare-fun m!568437 () Bool)

(assert (=> d!85931 m!568437))

(assert (=> d!85931 m!568303))

(assert (=> b!589880 m!568327))

(assert (=> b!589880 m!568341))

(assert (=> b!589880 m!568341))

(declare-fun m!568439 () Bool)

(assert (=> b!589880 m!568439))

(assert (=> b!589880 m!568309))

(assert (=> b!589880 m!568337))

(assert (=> b!589880 m!568309))

(assert (=> b!589763 d!85931))

(declare-fun d!85937 () Bool)

(assert (=> d!85937 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!54012 d!85937))

(declare-fun d!85941 () Bool)

(assert (=> d!85941 (= (array_inv!13448 a!2986) (bvsge (size!18038 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!54012 d!85941))

(declare-fun d!85945 () Bool)

(declare-fun res!377425 () Bool)

(declare-fun e!336784 () Bool)

(assert (=> d!85945 (=> res!377425 e!336784)))

(assert (=> d!85945 (= res!377425 (bvsge #b00000000000000000000000000000000 (size!18038 a!2986)))))

(assert (=> d!85945 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!336784)))

(declare-fun b!589931 () Bool)

(declare-fun e!336782 () Bool)

(assert (=> b!589931 (= e!336784 e!336782)))

(declare-fun c!66620 () Bool)

(assert (=> b!589931 (= c!66620 (validKeyInArray!0 (select (arr!17674 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!589932 () Bool)

(declare-fun e!336783 () Bool)

(assert (=> b!589932 (= e!336782 e!336783)))

(declare-fun lt!267693 () (_ BitVec 64))

(assert (=> b!589932 (= lt!267693 (select (arr!17674 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!267692 () Unit!18428)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36810 (_ BitVec 64) (_ BitVec 32)) Unit!18428)

(assert (=> b!589932 (= lt!267692 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!267693 #b00000000000000000000000000000000))))

(assert (=> b!589932 (arrayContainsKey!0 a!2986 lt!267693 #b00000000000000000000000000000000)))

(declare-fun lt!267691 () Unit!18428)

(assert (=> b!589932 (= lt!267691 lt!267692)))

(declare-fun res!377426 () Bool)

(assert (=> b!589932 (= res!377426 (= (seekEntryOrOpen!0 (select (arr!17674 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6121 #b00000000000000000000000000000000)))))

(assert (=> b!589932 (=> (not res!377426) (not e!336783))))

(declare-fun bm!32795 () Bool)

(declare-fun call!32798 () Bool)

(assert (=> bm!32795 (= call!32798 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!589933 () Bool)

(assert (=> b!589933 (= e!336782 call!32798)))

(declare-fun b!589934 () Bool)

(assert (=> b!589934 (= e!336783 call!32798)))

(assert (= (and d!85945 (not res!377425)) b!589931))

(assert (= (and b!589931 c!66620) b!589932))

(assert (= (and b!589931 (not c!66620)) b!589933))

(assert (= (and b!589932 res!377426) b!589934))

(assert (= (or b!589934 b!589933) bm!32795))

(declare-fun m!568481 () Bool)

(assert (=> b!589931 m!568481))

(assert (=> b!589931 m!568481))

(declare-fun m!568483 () Bool)

(assert (=> b!589931 m!568483))

(assert (=> b!589932 m!568481))

(declare-fun m!568485 () Bool)

(assert (=> b!589932 m!568485))

(declare-fun m!568487 () Bool)

(assert (=> b!589932 m!568487))

(assert (=> b!589932 m!568481))

(declare-fun m!568489 () Bool)

(assert (=> b!589932 m!568489))

(declare-fun m!568491 () Bool)

(assert (=> bm!32795 m!568491))

(assert (=> b!589764 d!85945))

(declare-fun d!85953 () Bool)

(assert (=> d!85953 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!589758 d!85953))

(declare-fun d!85955 () Bool)

(declare-fun res!377431 () Bool)

(declare-fun e!336789 () Bool)

(assert (=> d!85955 (=> res!377431 e!336789)))

(assert (=> d!85955 (= res!377431 (= (select (arr!17674 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!85955 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!336789)))

(declare-fun b!589939 () Bool)

(declare-fun e!336790 () Bool)

(assert (=> b!589939 (= e!336789 e!336790)))

(declare-fun res!377432 () Bool)

(assert (=> b!589939 (=> (not res!377432) (not e!336790))))

(assert (=> b!589939 (= res!377432 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18038 a!2986)))))

(declare-fun b!589940 () Bool)

(assert (=> b!589940 (= e!336790 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85955 (not res!377431)) b!589939))

(assert (= (and b!589939 res!377432) b!589940))

(assert (=> d!85955 m!568481))

(declare-fun m!568493 () Bool)

(assert (=> b!589940 m!568493))

(assert (=> b!589760 d!85955))

(declare-fun bm!32798 () Bool)

(declare-fun call!32801 () Bool)

(declare-fun c!66623 () Bool)

(assert (=> bm!32798 (= call!32801 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!66623 (Cons!11764 (select (arr!17674 a!2986) #b00000000000000000000000000000000) Nil!11765) Nil!11765)))))

(declare-fun b!589951 () Bool)

(declare-fun e!336800 () Bool)

(assert (=> b!589951 (= e!336800 call!32801)))

(declare-fun b!589952 () Bool)

(declare-fun e!336799 () Bool)

(assert (=> b!589952 (= e!336799 e!336800)))

(assert (=> b!589952 (= c!66623 (validKeyInArray!0 (select (arr!17674 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!589953 () Bool)

(declare-fun e!336802 () Bool)

(declare-fun contains!2911 (List!11768 (_ BitVec 64)) Bool)

(assert (=> b!589953 (= e!336802 (contains!2911 Nil!11765 (select (arr!17674 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!85957 () Bool)

(declare-fun res!377440 () Bool)

(declare-fun e!336801 () Bool)

(assert (=> d!85957 (=> res!377440 e!336801)))

(assert (=> d!85957 (= res!377440 (bvsge #b00000000000000000000000000000000 (size!18038 a!2986)))))

(assert (=> d!85957 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11765) e!336801)))

(declare-fun b!589954 () Bool)

(assert (=> b!589954 (= e!336801 e!336799)))

(declare-fun res!377441 () Bool)

(assert (=> b!589954 (=> (not res!377441) (not e!336799))))

(assert (=> b!589954 (= res!377441 (not e!336802))))

(declare-fun res!377439 () Bool)

(assert (=> b!589954 (=> (not res!377439) (not e!336802))))

(assert (=> b!589954 (= res!377439 (validKeyInArray!0 (select (arr!17674 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!589955 () Bool)

(assert (=> b!589955 (= e!336800 call!32801)))

(assert (= (and d!85957 (not res!377440)) b!589954))

(assert (= (and b!589954 res!377439) b!589953))

(assert (= (and b!589954 res!377441) b!589952))

(assert (= (and b!589952 c!66623) b!589955))

(assert (= (and b!589952 (not c!66623)) b!589951))

(assert (= (or b!589955 b!589951) bm!32798))

(assert (=> bm!32798 m!568481))

(declare-fun m!568495 () Bool)

(assert (=> bm!32798 m!568495))

(assert (=> b!589952 m!568481))

(assert (=> b!589952 m!568481))

(assert (=> b!589952 m!568483))

(assert (=> b!589953 m!568481))

(assert (=> b!589953 m!568481))

(declare-fun m!568497 () Bool)

(assert (=> b!589953 m!568497))

(assert (=> b!589954 m!568481))

(assert (=> b!589954 m!568481))

(assert (=> b!589954 m!568483))

(assert (=> b!589770 d!85957))

(check-sat (not b!589931) (not d!85931) (not bm!32798) (not d!85917) (not b!589854) (not bm!32795) (not d!85927) (not b!589932) (not b!589954) (not b!589953) (not b!589940) (not b!589860) (not b!589866) (not b!589834) (not d!85921) (not b!589848) (not b!589880) (not d!85919) (not b!589952) (not d!85923) (not d!85929))
(check-sat)
