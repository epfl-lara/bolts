; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56154 () Bool)

(assert start!56154)

(declare-fun b!620535 () Bool)

(declare-datatypes ((Unit!20650 0))(
  ( (Unit!20651) )
))
(declare-fun e!355910 () Unit!20650)

(declare-fun Unit!20652 () Unit!20650)

(assert (=> b!620535 (= e!355910 Unit!20652)))

(declare-fun b!620536 () Bool)

(declare-fun res!399965 () Bool)

(declare-fun e!355908 () Bool)

(assert (=> b!620536 (=> (not res!399965) (not e!355908))))

(declare-datatypes ((array!37587 0))(
  ( (array!37588 (arr!18036 (Array (_ BitVec 32) (_ BitVec 64))) (size!18400 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37587)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37587 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!620536 (= res!399965 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!620537 () Bool)

(declare-fun e!355920 () Bool)

(assert (=> b!620537 (= e!355908 e!355920)))

(declare-fun res!399975 () Bool)

(assert (=> b!620537 (=> (not res!399975) (not e!355920))))

(declare-datatypes ((SeekEntryResult!6483 0))(
  ( (MissingZero!6483 (index!28215 (_ BitVec 32))) (Found!6483 (index!28216 (_ BitVec 32))) (Intermediate!6483 (undefined!7295 Bool) (index!28217 (_ BitVec 32)) (x!57020 (_ BitVec 32))) (Undefined!6483) (MissingVacant!6483 (index!28218 (_ BitVec 32))) )
))
(declare-fun lt!286949 () SeekEntryResult!6483)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!620537 (= res!399975 (or (= lt!286949 (MissingZero!6483 i!1108)) (= lt!286949 (MissingVacant!6483 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37587 (_ BitVec 32)) SeekEntryResult!6483)

(assert (=> b!620537 (= lt!286949 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!620538 () Bool)

(declare-fun e!355913 () Bool)

(declare-fun e!355915 () Bool)

(assert (=> b!620538 (= e!355913 e!355915)))

(declare-fun res!399978 () Bool)

(assert (=> b!620538 (=> (not res!399978) (not e!355915))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lt!286948 () SeekEntryResult!6483)

(assert (=> b!620538 (= res!399978 (and (= lt!286948 (Found!6483 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18036 a!2986) index!984) (select (arr!18036 a!2986) j!136))) (not (= (select (arr!18036 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37587 (_ BitVec 32)) SeekEntryResult!6483)

(assert (=> b!620538 (= lt!286948 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18036 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!620539 () Bool)

(declare-fun e!355919 () Unit!20650)

(declare-fun Unit!20653 () Unit!20650)

(assert (=> b!620539 (= e!355919 Unit!20653)))

(declare-fun b!620540 () Bool)

(assert (=> b!620540 false))

(declare-fun lt!286938 () Unit!20650)

(declare-fun lt!286956 () array!37587)

(declare-datatypes ((List!12130 0))(
  ( (Nil!12127) (Cons!12126 (h!13171 (_ BitVec 64)) (t!18366 List!12130)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37587 (_ BitVec 64) (_ BitVec 32) List!12130) Unit!20650)

(assert (=> b!620540 (= lt!286938 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286956 (select (arr!18036 a!2986) j!136) j!136 Nil!12127))))

(declare-fun arrayNoDuplicates!0 (array!37587 (_ BitVec 32) List!12130) Bool)

(assert (=> b!620540 (arrayNoDuplicates!0 lt!286956 j!136 Nil!12127)))

(declare-fun lt!286947 () Unit!20650)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37587 (_ BitVec 32) (_ BitVec 32)) Unit!20650)

(assert (=> b!620540 (= lt!286947 (lemmaNoDuplicateFromThenFromBigger!0 lt!286956 #b00000000000000000000000000000000 j!136))))

(assert (=> b!620540 (arrayNoDuplicates!0 lt!286956 #b00000000000000000000000000000000 Nil!12127)))

(declare-fun lt!286941 () Unit!20650)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37587 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12130) Unit!20650)

(assert (=> b!620540 (= lt!286941 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12127))))

(assert (=> b!620540 (arrayContainsKey!0 lt!286956 (select (arr!18036 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!286952 () Unit!20650)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37587 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20650)

(assert (=> b!620540 (= lt!286952 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286956 (select (arr!18036 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!355917 () Unit!20650)

(declare-fun Unit!20654 () Unit!20650)

(assert (=> b!620540 (= e!355917 Unit!20654)))

(declare-fun b!620541 () Bool)

(assert (=> b!620541 (= e!355920 e!355913)))

(declare-fun res!399979 () Bool)

(assert (=> b!620541 (=> (not res!399979) (not e!355913))))

(assert (=> b!620541 (= res!399979 (= (select (store (arr!18036 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!620541 (= lt!286956 (array!37588 (store (arr!18036 a!2986) i!1108 k!1786) (size!18400 a!2986)))))

(declare-fun b!620542 () Bool)

(declare-fun res!399970 () Bool)

(assert (=> b!620542 (=> (not res!399970) (not e!355908))))

(assert (=> b!620542 (= res!399970 (and (= (size!18400 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18400 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18400 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!620543 () Bool)

(declare-fun res!399969 () Bool)

(assert (=> b!620543 (=> (not res!399969) (not e!355920))))

(assert (=> b!620543 (= res!399969 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18036 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!620544 () Bool)

(declare-fun res!399980 () Bool)

(assert (=> b!620544 (=> (not res!399980) (not e!355920))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37587 (_ BitVec 32)) Bool)

(assert (=> b!620544 (= res!399980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!620545 () Bool)

(declare-fun res!399974 () Bool)

(assert (=> b!620545 (= res!399974 (arrayContainsKey!0 lt!286956 (select (arr!18036 a!2986) j!136) j!136))))

(declare-fun e!355912 () Bool)

(assert (=> b!620545 (=> (not res!399974) (not e!355912))))

(declare-fun e!355918 () Bool)

(assert (=> b!620545 (= e!355918 e!355912)))

(declare-fun b!620546 () Bool)

(declare-fun e!355909 () Unit!20650)

(declare-fun Unit!20655 () Unit!20650)

(assert (=> b!620546 (= e!355909 Unit!20655)))

(declare-fun b!620547 () Bool)

(declare-fun Unit!20656 () Unit!20650)

(assert (=> b!620547 (= e!355910 Unit!20656)))

(declare-fun res!399972 () Bool)

(assert (=> b!620547 (= res!399972 (= (select (store (arr!18036 a!2986) i!1108 k!1786) index!984) (select (arr!18036 a!2986) j!136)))))

(declare-fun e!355921 () Bool)

(assert (=> b!620547 (=> (not res!399972) (not e!355921))))

(assert (=> b!620547 e!355921))

(declare-fun c!70655 () Bool)

(assert (=> b!620547 (= c!70655 (bvslt j!136 index!984))))

(declare-fun lt!286939 () Unit!20650)

(assert (=> b!620547 (= lt!286939 e!355917)))

(declare-fun c!70652 () Bool)

(assert (=> b!620547 (= c!70652 (bvslt index!984 j!136))))

(declare-fun lt!286944 () Unit!20650)

(assert (=> b!620547 (= lt!286944 e!355919)))

(assert (=> b!620547 false))

(declare-fun b!620548 () Bool)

(assert (=> b!620548 false))

(declare-fun lt!286950 () Unit!20650)

(assert (=> b!620548 (= lt!286950 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286956 (select (arr!18036 a!2986) j!136) index!984 Nil!12127))))

(assert (=> b!620548 (arrayNoDuplicates!0 lt!286956 index!984 Nil!12127)))

(declare-fun lt!286940 () Unit!20650)

(assert (=> b!620548 (= lt!286940 (lemmaNoDuplicateFromThenFromBigger!0 lt!286956 #b00000000000000000000000000000000 index!984))))

(assert (=> b!620548 (arrayNoDuplicates!0 lt!286956 #b00000000000000000000000000000000 Nil!12127)))

(declare-fun lt!286955 () Unit!20650)

(assert (=> b!620548 (= lt!286955 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12127))))

(assert (=> b!620548 (arrayContainsKey!0 lt!286956 (select (arr!18036 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!286942 () Unit!20650)

(assert (=> b!620548 (= lt!286942 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286956 (select (arr!18036 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!355911 () Bool)

(assert (=> b!620548 e!355911))

(declare-fun res!399971 () Bool)

(assert (=> b!620548 (=> (not res!399971) (not e!355911))))

(assert (=> b!620548 (= res!399971 (arrayContainsKey!0 lt!286956 (select (arr!18036 a!2986) j!136) j!136))))

(declare-fun Unit!20657 () Unit!20650)

(assert (=> b!620548 (= e!355919 Unit!20657)))

(declare-fun b!620549 () Bool)

(declare-fun e!355914 () Bool)

(declare-fun lt!286954 () SeekEntryResult!6483)

(assert (=> b!620549 (= e!355914 (= lt!286948 lt!286954))))

(declare-fun b!620550 () Bool)

(declare-fun res!399976 () Bool)

(assert (=> b!620550 (=> (not res!399976) (not e!355920))))

(assert (=> b!620550 (= res!399976 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12127))))

(declare-fun b!620551 () Bool)

(declare-fun res!399973 () Bool)

(assert (=> b!620551 (=> (not res!399973) (not e!355908))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!620551 (= res!399973 (validKeyInArray!0 k!1786))))

(declare-fun b!620552 () Bool)

(declare-fun res!399967 () Bool)

(assert (=> b!620552 (= res!399967 (bvsge j!136 index!984))))

(assert (=> b!620552 (=> res!399967 e!355918)))

(assert (=> b!620552 (= e!355921 e!355918)))

(declare-fun b!620553 () Bool)

(declare-fun res!399966 () Bool)

(assert (=> b!620553 (=> (not res!399966) (not e!355908))))

(assert (=> b!620553 (= res!399966 (validKeyInArray!0 (select (arr!18036 a!2986) j!136)))))

(declare-fun res!399977 () Bool)

(assert (=> start!56154 (=> (not res!399977) (not e!355908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56154 (= res!399977 (validMask!0 mask!3053))))

(assert (=> start!56154 e!355908))

(assert (=> start!56154 true))

(declare-fun array_inv!13810 (array!37587) Bool)

(assert (=> start!56154 (array_inv!13810 a!2986)))

(declare-fun b!620554 () Bool)

(declare-fun Unit!20658 () Unit!20650)

(assert (=> b!620554 (= e!355909 Unit!20658)))

(assert (=> b!620554 false))

(declare-fun b!620555 () Bool)

(assert (=> b!620555 (= e!355912 (arrayContainsKey!0 lt!286956 (select (arr!18036 a!2986) j!136) index!984))))

(declare-fun b!620556 () Bool)

(declare-fun Unit!20659 () Unit!20650)

(assert (=> b!620556 (= e!355917 Unit!20659)))

(declare-fun b!620557 () Bool)

(assert (=> b!620557 (= e!355915 (not true))))

(declare-fun lt!286951 () Unit!20650)

(assert (=> b!620557 (= lt!286951 e!355910)))

(declare-fun c!70654 () Bool)

(declare-fun lt!286953 () SeekEntryResult!6483)

(assert (=> b!620557 (= c!70654 (= lt!286953 (Found!6483 index!984)))))

(declare-fun lt!286937 () Unit!20650)

(assert (=> b!620557 (= lt!286937 e!355909)))

(declare-fun c!70653 () Bool)

(assert (=> b!620557 (= c!70653 (= lt!286953 Undefined!6483))))

(declare-fun lt!286945 () (_ BitVec 64))

(assert (=> b!620557 (= lt!286953 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!286945 lt!286956 mask!3053))))

(assert (=> b!620557 e!355914))

(declare-fun res!399968 () Bool)

(assert (=> b!620557 (=> (not res!399968) (not e!355914))))

(declare-fun lt!286946 () (_ BitVec 32))

(assert (=> b!620557 (= res!399968 (= lt!286954 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286946 vacantSpotIndex!68 lt!286945 lt!286956 mask!3053)))))

(assert (=> b!620557 (= lt!286954 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286946 vacantSpotIndex!68 (select (arr!18036 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!620557 (= lt!286945 (select (store (arr!18036 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!286943 () Unit!20650)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37587 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20650)

(assert (=> b!620557 (= lt!286943 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!286946 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!620557 (= lt!286946 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!620558 () Bool)

(assert (=> b!620558 (= e!355911 (arrayContainsKey!0 lt!286956 (select (arr!18036 a!2986) j!136) index!984))))

(assert (= (and start!56154 res!399977) b!620542))

(assert (= (and b!620542 res!399970) b!620553))

(assert (= (and b!620553 res!399966) b!620551))

(assert (= (and b!620551 res!399973) b!620536))

(assert (= (and b!620536 res!399965) b!620537))

(assert (= (and b!620537 res!399975) b!620544))

(assert (= (and b!620544 res!399980) b!620550))

(assert (= (and b!620550 res!399976) b!620543))

(assert (= (and b!620543 res!399969) b!620541))

(assert (= (and b!620541 res!399979) b!620538))

(assert (= (and b!620538 res!399978) b!620557))

(assert (= (and b!620557 res!399968) b!620549))

(assert (= (and b!620557 c!70653) b!620554))

(assert (= (and b!620557 (not c!70653)) b!620546))

(assert (= (and b!620557 c!70654) b!620547))

(assert (= (and b!620557 (not c!70654)) b!620535))

(assert (= (and b!620547 res!399972) b!620552))

(assert (= (and b!620552 (not res!399967)) b!620545))

(assert (= (and b!620545 res!399974) b!620555))

(assert (= (and b!620547 c!70655) b!620540))

(assert (= (and b!620547 (not c!70655)) b!620556))

(assert (= (and b!620547 c!70652) b!620548))

(assert (= (and b!620547 (not c!70652)) b!620539))

(assert (= (and b!620548 res!399971) b!620558))

(declare-fun m!596499 () Bool)

(assert (=> b!620538 m!596499))

(declare-fun m!596501 () Bool)

(assert (=> b!620538 m!596501))

(assert (=> b!620538 m!596501))

(declare-fun m!596503 () Bool)

(assert (=> b!620538 m!596503))

(declare-fun m!596505 () Bool)

(assert (=> b!620544 m!596505))

(declare-fun m!596507 () Bool)

(assert (=> b!620541 m!596507))

(declare-fun m!596509 () Bool)

(assert (=> b!620541 m!596509))

(declare-fun m!596511 () Bool)

(assert (=> b!620551 m!596511))

(assert (=> b!620540 m!596501))

(declare-fun m!596513 () Bool)

(assert (=> b!620540 m!596513))

(assert (=> b!620540 m!596501))

(declare-fun m!596515 () Bool)

(assert (=> b!620540 m!596515))

(declare-fun m!596517 () Bool)

(assert (=> b!620540 m!596517))

(declare-fun m!596519 () Bool)

(assert (=> b!620540 m!596519))

(assert (=> b!620540 m!596501))

(assert (=> b!620540 m!596501))

(declare-fun m!596521 () Bool)

(assert (=> b!620540 m!596521))

(declare-fun m!596523 () Bool)

(assert (=> b!620540 m!596523))

(declare-fun m!596525 () Bool)

(assert (=> b!620540 m!596525))

(assert (=> b!620548 m!596501))

(declare-fun m!596527 () Bool)

(assert (=> b!620548 m!596527))

(assert (=> b!620548 m!596501))

(declare-fun m!596529 () Bool)

(assert (=> b!620548 m!596529))

(assert (=> b!620548 m!596501))

(declare-fun m!596531 () Bool)

(assert (=> b!620548 m!596531))

(declare-fun m!596533 () Bool)

(assert (=> b!620548 m!596533))

(assert (=> b!620548 m!596501))

(declare-fun m!596535 () Bool)

(assert (=> b!620548 m!596535))

(assert (=> b!620548 m!596525))

(assert (=> b!620548 m!596501))

(declare-fun m!596537 () Bool)

(assert (=> b!620548 m!596537))

(assert (=> b!620548 m!596519))

(assert (=> b!620545 m!596501))

(assert (=> b!620545 m!596501))

(assert (=> b!620545 m!596527))

(declare-fun m!596539 () Bool)

(assert (=> start!56154 m!596539))

(declare-fun m!596541 () Bool)

(assert (=> start!56154 m!596541))

(declare-fun m!596543 () Bool)

(assert (=> b!620543 m!596543))

(declare-fun m!596545 () Bool)

(assert (=> b!620550 m!596545))

(assert (=> b!620555 m!596501))

(assert (=> b!620555 m!596501))

(declare-fun m!596547 () Bool)

(assert (=> b!620555 m!596547))

(declare-fun m!596549 () Bool)

(assert (=> b!620557 m!596549))

(declare-fun m!596551 () Bool)

(assert (=> b!620557 m!596551))

(declare-fun m!596553 () Bool)

(assert (=> b!620557 m!596553))

(assert (=> b!620557 m!596501))

(assert (=> b!620557 m!596507))

(declare-fun m!596555 () Bool)

(assert (=> b!620557 m!596555))

(declare-fun m!596557 () Bool)

(assert (=> b!620557 m!596557))

(assert (=> b!620557 m!596501))

(declare-fun m!596559 () Bool)

(assert (=> b!620557 m!596559))

(assert (=> b!620558 m!596501))

(assert (=> b!620558 m!596501))

(assert (=> b!620558 m!596547))

(assert (=> b!620553 m!596501))

(assert (=> b!620553 m!596501))

(declare-fun m!596561 () Bool)

(assert (=> b!620553 m!596561))

(declare-fun m!596563 () Bool)

(assert (=> b!620536 m!596563))

(assert (=> b!620547 m!596507))

(declare-fun m!596565 () Bool)

(assert (=> b!620547 m!596565))

(assert (=> b!620547 m!596501))

(declare-fun m!596567 () Bool)

(assert (=> b!620537 m!596567))

(push 1)

