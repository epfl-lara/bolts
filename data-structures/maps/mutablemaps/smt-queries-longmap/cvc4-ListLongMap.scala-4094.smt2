; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56074 () Bool)

(assert start!56074)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!617564 () Bool)

(declare-fun e!354146 () Bool)

(declare-datatypes ((array!37507 0))(
  ( (array!37508 (arr!17996 (Array (_ BitVec 32) (_ BitVec 64))) (size!18360 (_ BitVec 32))) )
))
(declare-fun lt!284542 () array!37507)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37507)

(declare-fun arrayContainsKey!0 (array!37507 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!617564 (= e!354146 (arrayContainsKey!0 lt!284542 (select (arr!17996 a!2986) j!136) index!984))))

(declare-fun b!617565 () Bool)

(declare-fun res!397965 () Bool)

(declare-fun e!354139 () Bool)

(assert (=> b!617565 (=> (not res!397965) (not e!354139))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37507 (_ BitVec 32)) Bool)

(assert (=> b!617565 (= res!397965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!617567 () Bool)

(declare-datatypes ((Unit!20250 0))(
  ( (Unit!20251) )
))
(declare-fun e!354148 () Unit!20250)

(declare-fun Unit!20252 () Unit!20250)

(assert (=> b!617567 (= e!354148 Unit!20252)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun res!397964 () Bool)

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!617567 (= res!397964 (= (select (store (arr!17996 a!2986) i!1108 k!1786) index!984) (select (arr!17996 a!2986) j!136)))))

(declare-fun e!354138 () Bool)

(assert (=> b!617567 (=> (not res!397964) (not e!354138))))

(assert (=> b!617567 e!354138))

(declare-fun c!70172 () Bool)

(assert (=> b!617567 (= c!70172 (bvslt j!136 index!984))))

(declare-fun lt!284545 () Unit!20250)

(declare-fun e!354141 () Unit!20250)

(assert (=> b!617567 (= lt!284545 e!354141)))

(declare-fun c!70173 () Bool)

(assert (=> b!617567 (= c!70173 (bvslt index!984 j!136))))

(declare-fun lt!284547 () Unit!20250)

(declare-fun e!354144 () Unit!20250)

(assert (=> b!617567 (= lt!284547 e!354144)))

(assert (=> b!617567 false))

(declare-fun b!617568 () Bool)

(declare-fun e!354137 () Unit!20250)

(declare-fun Unit!20253 () Unit!20250)

(assert (=> b!617568 (= e!354137 Unit!20253)))

(declare-fun b!617569 () Bool)

(declare-fun Unit!20254 () Unit!20250)

(assert (=> b!617569 (= e!354137 Unit!20254)))

(assert (=> b!617569 false))

(declare-fun b!617570 () Bool)

(declare-fun e!354149 () Bool)

(assert (=> b!617570 (= e!354139 e!354149)))

(declare-fun res!397957 () Bool)

(assert (=> b!617570 (=> (not res!397957) (not e!354149))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!617570 (= res!397957 (= (select (store (arr!17996 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!617570 (= lt!284542 (array!37508 (store (arr!17996 a!2986) i!1108 k!1786) (size!18360 a!2986)))))

(declare-fun b!617571 () Bool)

(declare-fun res!397961 () Bool)

(assert (=> b!617571 (= res!397961 (arrayContainsKey!0 lt!284542 (select (arr!17996 a!2986) j!136) j!136))))

(assert (=> b!617571 (=> (not res!397961) (not e!354146))))

(declare-fun e!354142 () Bool)

(assert (=> b!617571 (= e!354142 e!354146)))

(declare-fun b!617572 () Bool)

(declare-fun Unit!20255 () Unit!20250)

(assert (=> b!617572 (= e!354144 Unit!20255)))

(declare-fun b!617573 () Bool)

(declare-fun res!397956 () Bool)

(assert (=> b!617573 (= res!397956 (bvsge j!136 index!984))))

(assert (=> b!617573 (=> res!397956 e!354142)))

(assert (=> b!617573 (= e!354138 e!354142)))

(declare-fun b!617574 () Bool)

(declare-fun e!354143 () Bool)

(assert (=> b!617574 (= e!354143 e!354139)))

(declare-fun res!397970 () Bool)

(assert (=> b!617574 (=> (not res!397970) (not e!354139))))

(declare-datatypes ((SeekEntryResult!6443 0))(
  ( (MissingZero!6443 (index!28055 (_ BitVec 32))) (Found!6443 (index!28056 (_ BitVec 32))) (Intermediate!6443 (undefined!7255 Bool) (index!28057 (_ BitVec 32)) (x!56868 (_ BitVec 32))) (Undefined!6443) (MissingVacant!6443 (index!28058 (_ BitVec 32))) )
))
(declare-fun lt!284541 () SeekEntryResult!6443)

(assert (=> b!617574 (= res!397970 (or (= lt!284541 (MissingZero!6443 i!1108)) (= lt!284541 (MissingVacant!6443 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37507 (_ BitVec 32)) SeekEntryResult!6443)

(assert (=> b!617574 (= lt!284541 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!617575 () Bool)

(declare-fun Unit!20256 () Unit!20250)

(assert (=> b!617575 (= e!354148 Unit!20256)))

(declare-fun b!617576 () Bool)

(declare-fun res!397966 () Bool)

(assert (=> b!617576 (=> (not res!397966) (not e!354139))))

(declare-datatypes ((List!12090 0))(
  ( (Nil!12087) (Cons!12086 (h!13131 (_ BitVec 64)) (t!18326 List!12090)) )
))
(declare-fun arrayNoDuplicates!0 (array!37507 (_ BitVec 32) List!12090) Bool)

(assert (=> b!617576 (= res!397966 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12087))))

(declare-fun res!397967 () Bool)

(assert (=> start!56074 (=> (not res!397967) (not e!354143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56074 (= res!397967 (validMask!0 mask!3053))))

(assert (=> start!56074 e!354143))

(assert (=> start!56074 true))

(declare-fun array_inv!13770 (array!37507) Bool)

(assert (=> start!56074 (array_inv!13770 a!2986)))

(declare-fun b!617566 () Bool)

(declare-fun e!354147 () Bool)

(declare-fun lt!284549 () SeekEntryResult!6443)

(declare-fun lt!284553 () SeekEntryResult!6443)

(assert (=> b!617566 (= e!354147 (= lt!284549 lt!284553))))

(declare-fun b!617577 () Bool)

(declare-fun e!354151 () Bool)

(assert (=> b!617577 (= e!354149 e!354151)))

(declare-fun res!397960 () Bool)

(assert (=> b!617577 (=> (not res!397960) (not e!354151))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!617577 (= res!397960 (and (= lt!284549 (Found!6443 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17996 a!2986) index!984) (select (arr!17996 a!2986) j!136))) (not (= (select (arr!17996 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37507 (_ BitVec 32)) SeekEntryResult!6443)

(assert (=> b!617577 (= lt!284549 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17996 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!617578 () Bool)

(declare-fun e!354145 () Bool)

(assert (=> b!617578 (= e!354145 (arrayContainsKey!0 lt!284542 (select (arr!17996 a!2986) j!136) index!984))))

(declare-fun b!617579 () Bool)

(assert (=> b!617579 false))

(declare-fun lt!284543 () Unit!20250)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37507 (_ BitVec 64) (_ BitVec 32) List!12090) Unit!20250)

(assert (=> b!617579 (= lt!284543 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284542 (select (arr!17996 a!2986) j!136) index!984 Nil!12087))))

(assert (=> b!617579 (arrayNoDuplicates!0 lt!284542 index!984 Nil!12087)))

(declare-fun lt!284551 () Unit!20250)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37507 (_ BitVec 32) (_ BitVec 32)) Unit!20250)

(assert (=> b!617579 (= lt!284551 (lemmaNoDuplicateFromThenFromBigger!0 lt!284542 #b00000000000000000000000000000000 index!984))))

(assert (=> b!617579 (arrayNoDuplicates!0 lt!284542 #b00000000000000000000000000000000 Nil!12087)))

(declare-fun lt!284546 () Unit!20250)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37507 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12090) Unit!20250)

(assert (=> b!617579 (= lt!284546 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12087))))

(assert (=> b!617579 (arrayContainsKey!0 lt!284542 (select (arr!17996 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!284544 () Unit!20250)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37507 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20250)

(assert (=> b!617579 (= lt!284544 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284542 (select (arr!17996 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!617579 e!354145))

(declare-fun res!397955 () Bool)

(assert (=> b!617579 (=> (not res!397955) (not e!354145))))

(assert (=> b!617579 (= res!397955 (arrayContainsKey!0 lt!284542 (select (arr!17996 a!2986) j!136) j!136))))

(declare-fun Unit!20257 () Unit!20250)

(assert (=> b!617579 (= e!354144 Unit!20257)))

(declare-fun b!617580 () Bool)

(declare-fun res!397962 () Bool)

(assert (=> b!617580 (=> (not res!397962) (not e!354143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!617580 (= res!397962 (validKeyInArray!0 k!1786))))

(declare-fun b!617581 () Bool)

(assert (=> b!617581 false))

(declare-fun lt!284554 () Unit!20250)

(assert (=> b!617581 (= lt!284554 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284542 (select (arr!17996 a!2986) j!136) j!136 Nil!12087))))

(assert (=> b!617581 (arrayNoDuplicates!0 lt!284542 j!136 Nil!12087)))

(declare-fun lt!284539 () Unit!20250)

(assert (=> b!617581 (= lt!284539 (lemmaNoDuplicateFromThenFromBigger!0 lt!284542 #b00000000000000000000000000000000 j!136))))

(assert (=> b!617581 (arrayNoDuplicates!0 lt!284542 #b00000000000000000000000000000000 Nil!12087)))

(declare-fun lt!284552 () Unit!20250)

(assert (=> b!617581 (= lt!284552 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12087))))

(assert (=> b!617581 (arrayContainsKey!0 lt!284542 (select (arr!17996 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!284548 () Unit!20250)

(assert (=> b!617581 (= lt!284548 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284542 (select (arr!17996 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20258 () Unit!20250)

(assert (=> b!617581 (= e!354141 Unit!20258)))

(declare-fun b!617582 () Bool)

(declare-fun e!354150 () Bool)

(assert (=> b!617582 (= e!354151 (not e!354150))))

(declare-fun res!397959 () Bool)

(assert (=> b!617582 (=> res!397959 e!354150)))

(declare-fun lt!284550 () SeekEntryResult!6443)

(assert (=> b!617582 (= res!397959 (not (= lt!284550 (MissingVacant!6443 vacantSpotIndex!68))))))

(declare-fun lt!284556 () Unit!20250)

(assert (=> b!617582 (= lt!284556 e!354148)))

(declare-fun c!70175 () Bool)

(assert (=> b!617582 (= c!70175 (= lt!284550 (Found!6443 index!984)))))

(declare-fun lt!284538 () Unit!20250)

(assert (=> b!617582 (= lt!284538 e!354137)))

(declare-fun c!70174 () Bool)

(assert (=> b!617582 (= c!70174 (= lt!284550 Undefined!6443))))

(declare-fun lt!284537 () (_ BitVec 64))

(assert (=> b!617582 (= lt!284550 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!284537 lt!284542 mask!3053))))

(assert (=> b!617582 e!354147))

(declare-fun res!397954 () Bool)

(assert (=> b!617582 (=> (not res!397954) (not e!354147))))

(declare-fun lt!284540 () (_ BitVec 32))

(assert (=> b!617582 (= res!397954 (= lt!284553 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284540 vacantSpotIndex!68 lt!284537 lt!284542 mask!3053)))))

(assert (=> b!617582 (= lt!284553 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284540 vacantSpotIndex!68 (select (arr!17996 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!617582 (= lt!284537 (select (store (arr!17996 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!284555 () Unit!20250)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37507 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20250)

(assert (=> b!617582 (= lt!284555 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!284540 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!617582 (= lt!284540 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!617583 () Bool)

(declare-fun res!397969 () Bool)

(assert (=> b!617583 (=> (not res!397969) (not e!354143))))

(assert (=> b!617583 (= res!397969 (validKeyInArray!0 (select (arr!17996 a!2986) j!136)))))

(declare-fun b!617584 () Bool)

(declare-fun res!397968 () Bool)

(assert (=> b!617584 (=> (not res!397968) (not e!354139))))

(assert (=> b!617584 (= res!397968 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17996 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!617585 () Bool)

(declare-fun res!397958 () Bool)

(assert (=> b!617585 (=> (not res!397958) (not e!354143))))

(assert (=> b!617585 (= res!397958 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!617586 () Bool)

(assert (=> b!617586 (= e!354150 true)))

(assert (=> b!617586 (= (select (store (arr!17996 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!617587 () Bool)

(declare-fun res!397963 () Bool)

(assert (=> b!617587 (=> (not res!397963) (not e!354143))))

(assert (=> b!617587 (= res!397963 (and (= (size!18360 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18360 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18360 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!617588 () Bool)

(declare-fun Unit!20259 () Unit!20250)

(assert (=> b!617588 (= e!354141 Unit!20259)))

(assert (= (and start!56074 res!397967) b!617587))

(assert (= (and b!617587 res!397963) b!617583))

(assert (= (and b!617583 res!397969) b!617580))

(assert (= (and b!617580 res!397962) b!617585))

(assert (= (and b!617585 res!397958) b!617574))

(assert (= (and b!617574 res!397970) b!617565))

(assert (= (and b!617565 res!397965) b!617576))

(assert (= (and b!617576 res!397966) b!617584))

(assert (= (and b!617584 res!397968) b!617570))

(assert (= (and b!617570 res!397957) b!617577))

(assert (= (and b!617577 res!397960) b!617582))

(assert (= (and b!617582 res!397954) b!617566))

(assert (= (and b!617582 c!70174) b!617569))

(assert (= (and b!617582 (not c!70174)) b!617568))

(assert (= (and b!617582 c!70175) b!617567))

(assert (= (and b!617582 (not c!70175)) b!617575))

(assert (= (and b!617567 res!397964) b!617573))

(assert (= (and b!617573 (not res!397956)) b!617571))

(assert (= (and b!617571 res!397961) b!617564))

(assert (= (and b!617567 c!70172) b!617581))

(assert (= (and b!617567 (not c!70172)) b!617588))

(assert (= (and b!617567 c!70173) b!617579))

(assert (= (and b!617567 (not c!70173)) b!617572))

(assert (= (and b!617579 res!397955) b!617578))

(assert (= (and b!617582 (not res!397959)) b!617586))

(declare-fun m!593699 () Bool)

(assert (=> b!617583 m!593699))

(assert (=> b!617583 m!593699))

(declare-fun m!593701 () Bool)

(assert (=> b!617583 m!593701))

(declare-fun m!593703 () Bool)

(assert (=> b!617584 m!593703))

(declare-fun m!593705 () Bool)

(assert (=> b!617567 m!593705))

(declare-fun m!593707 () Bool)

(assert (=> b!617567 m!593707))

(assert (=> b!617567 m!593699))

(declare-fun m!593709 () Bool)

(assert (=> b!617577 m!593709))

(assert (=> b!617577 m!593699))

(assert (=> b!617577 m!593699))

(declare-fun m!593711 () Bool)

(assert (=> b!617577 m!593711))

(assert (=> b!617571 m!593699))

(assert (=> b!617571 m!593699))

(declare-fun m!593713 () Bool)

(assert (=> b!617571 m!593713))

(assert (=> b!617578 m!593699))

(assert (=> b!617578 m!593699))

(declare-fun m!593715 () Bool)

(assert (=> b!617578 m!593715))

(assert (=> b!617564 m!593699))

(assert (=> b!617564 m!593699))

(assert (=> b!617564 m!593715))

(declare-fun m!593717 () Bool)

(assert (=> b!617565 m!593717))

(declare-fun m!593719 () Bool)

(assert (=> start!56074 m!593719))

(declare-fun m!593721 () Bool)

(assert (=> start!56074 m!593721))

(declare-fun m!593723 () Bool)

(assert (=> b!617585 m!593723))

(declare-fun m!593725 () Bool)

(assert (=> b!617579 m!593725))

(assert (=> b!617579 m!593699))

(assert (=> b!617579 m!593699))

(declare-fun m!593727 () Bool)

(assert (=> b!617579 m!593727))

(declare-fun m!593729 () Bool)

(assert (=> b!617579 m!593729))

(assert (=> b!617579 m!593699))

(declare-fun m!593731 () Bool)

(assert (=> b!617579 m!593731))

(assert (=> b!617579 m!593699))

(declare-fun m!593733 () Bool)

(assert (=> b!617579 m!593733))

(declare-fun m!593735 () Bool)

(assert (=> b!617579 m!593735))

(assert (=> b!617579 m!593699))

(assert (=> b!617579 m!593713))

(declare-fun m!593737 () Bool)

(assert (=> b!617579 m!593737))

(assert (=> b!617581 m!593699))

(declare-fun m!593739 () Bool)

(assert (=> b!617581 m!593739))

(assert (=> b!617581 m!593699))

(declare-fun m!593741 () Bool)

(assert (=> b!617581 m!593741))

(assert (=> b!617581 m!593737))

(assert (=> b!617581 m!593735))

(assert (=> b!617581 m!593699))

(declare-fun m!593743 () Bool)

(assert (=> b!617581 m!593743))

(assert (=> b!617581 m!593699))

(declare-fun m!593745 () Bool)

(assert (=> b!617581 m!593745))

(declare-fun m!593747 () Bool)

(assert (=> b!617581 m!593747))

(assert (=> b!617570 m!593705))

(declare-fun m!593749 () Bool)

(assert (=> b!617570 m!593749))

(declare-fun m!593751 () Bool)

(assert (=> b!617582 m!593751))

(declare-fun m!593753 () Bool)

(assert (=> b!617582 m!593753))

(declare-fun m!593755 () Bool)

(assert (=> b!617582 m!593755))

(assert (=> b!617582 m!593699))

(declare-fun m!593757 () Bool)

(assert (=> b!617582 m!593757))

(assert (=> b!617582 m!593705))

(declare-fun m!593759 () Bool)

(assert (=> b!617582 m!593759))

(assert (=> b!617582 m!593699))

(declare-fun m!593761 () Bool)

(assert (=> b!617582 m!593761))

(declare-fun m!593763 () Bool)

(assert (=> b!617576 m!593763))

(declare-fun m!593765 () Bool)

(assert (=> b!617580 m!593765))

(assert (=> b!617586 m!593705))

(assert (=> b!617586 m!593707))

(declare-fun m!593767 () Bool)

(assert (=> b!617574 m!593767))

(push 1)

(assert (not b!617577))

(assert (not b!617581))

(assert (not b!617576))

(assert (not b!617565))

(assert (not start!56074))

(assert (not b!617578))

(assert (not b!617574))

(assert (not b!617582))

(assert (not b!617571))

(assert (not b!617564))

(assert (not b!617580))

(assert (not b!617583))

(assert (not b!617579))

(assert (not b!617585))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

