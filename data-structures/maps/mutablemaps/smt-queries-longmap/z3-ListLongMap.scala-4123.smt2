; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56294 () Bool)

(assert start!56294)

(declare-fun b!623766 () Bool)

(declare-fun res!402128 () Bool)

(declare-fun e!357763 () Bool)

(assert (=> b!623766 (=> (not res!402128) (not e!357763))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37682 0))(
  ( (array!37683 (arr!18082 (Array (_ BitVec 32) (_ BitVec 64))) (size!18446 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37682)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!623766 (= res!402128 (and (= (size!18446 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18446 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18446 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!402125 () Bool)

(assert (=> start!56294 (=> (not res!402125) (not e!357763))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56294 (= res!402125 (validMask!0 mask!3053))))

(assert (=> start!56294 e!357763))

(assert (=> start!56294 true))

(declare-fun array_inv!13856 (array!37682) Bool)

(assert (=> start!56294 (array_inv!13856 a!2986)))

(declare-fun b!623767 () Bool)

(declare-fun res!402126 () Bool)

(declare-fun e!357758 () Bool)

(assert (=> b!623767 (=> (not res!402126) (not e!357758))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!623767 (= res!402126 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18082 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!623768 () Bool)

(declare-fun e!357756 () Bool)

(assert (=> b!623768 (= e!357758 e!357756)))

(declare-fun res!402129 () Bool)

(assert (=> b!623768 (=> (not res!402129) (not e!357756))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!623768 (= res!402129 (= (select (store (arr!18082 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!289376 () array!37682)

(assert (=> b!623768 (= lt!289376 (array!37683 (store (arr!18082 a!2986) i!1108 k0!1786) (size!18446 a!2986)))))

(declare-fun b!623769 () Bool)

(declare-fun res!402127 () Bool)

(assert (=> b!623769 (=> (not res!402127) (not e!357758))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37682 (_ BitVec 32)) Bool)

(assert (=> b!623769 (= res!402127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun e!357761 () Bool)

(declare-fun lt!289374 () (_ BitVec 64))

(declare-fun b!623770 () Bool)

(assert (=> b!623770 (= e!357761 (= (select (arr!18082 a!2986) j!136) lt!289374))))

(assert (=> b!623770 (= (select (store (arr!18082 a!2986) i!1108 k0!1786) index!984) (select (arr!18082 a!2986) j!136))))

(declare-fun b!623771 () Bool)

(declare-fun e!357762 () Bool)

(assert (=> b!623771 (= e!357756 e!357762)))

(declare-fun res!402132 () Bool)

(assert (=> b!623771 (=> (not res!402132) (not e!357762))))

(declare-datatypes ((SeekEntryResult!6529 0))(
  ( (MissingZero!6529 (index!28399 (_ BitVec 32))) (Found!6529 (index!28400 (_ BitVec 32))) (Intermediate!6529 (undefined!7341 Bool) (index!28401 (_ BitVec 32)) (x!57189 (_ BitVec 32))) (Undefined!6529) (MissingVacant!6529 (index!28402 (_ BitVec 32))) )
))
(declare-fun lt!289373 () SeekEntryResult!6529)

(assert (=> b!623771 (= res!402132 (and (= lt!289373 (Found!6529 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18082 a!2986) index!984) (select (arr!18082 a!2986) j!136))) (not (= (select (arr!18082 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37682 (_ BitVec 32)) SeekEntryResult!6529)

(assert (=> b!623771 (= lt!289373 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18082 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!623772 () Bool)

(declare-fun e!357759 () Bool)

(declare-fun lt!289372 () SeekEntryResult!6529)

(assert (=> b!623772 (= e!357759 (= lt!289373 lt!289372))))

(declare-fun b!623773 () Bool)

(declare-fun res!402122 () Bool)

(assert (=> b!623773 (=> (not res!402122) (not e!357763))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!623773 (= res!402122 (validKeyInArray!0 (select (arr!18082 a!2986) j!136)))))

(declare-fun b!623774 () Bool)

(declare-fun res!402130 () Bool)

(assert (=> b!623774 (=> (not res!402130) (not e!357758))))

(declare-datatypes ((List!12176 0))(
  ( (Nil!12173) (Cons!12172 (h!13217 (_ BitVec 64)) (t!18412 List!12176)) )
))
(declare-fun arrayNoDuplicates!0 (array!37682 (_ BitVec 32) List!12176) Bool)

(assert (=> b!623774 (= res!402130 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12173))))

(declare-fun b!623775 () Bool)

(assert (=> b!623775 (= e!357763 e!357758)))

(declare-fun res!402134 () Bool)

(assert (=> b!623775 (=> (not res!402134) (not e!357758))))

(declare-fun lt!289378 () SeekEntryResult!6529)

(assert (=> b!623775 (= res!402134 (or (= lt!289378 (MissingZero!6529 i!1108)) (= lt!289378 (MissingVacant!6529 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37682 (_ BitVec 32)) SeekEntryResult!6529)

(assert (=> b!623775 (= lt!289378 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!623776 () Bool)

(declare-fun res!402123 () Bool)

(assert (=> b!623776 (=> (not res!402123) (not e!357763))))

(assert (=> b!623776 (= res!402123 (validKeyInArray!0 k0!1786))))

(declare-fun b!623777 () Bool)

(assert (=> b!623777 (= e!357762 (not e!357761))))

(declare-fun res!402124 () Bool)

(assert (=> b!623777 (=> res!402124 e!357761)))

(declare-fun lt!289375 () SeekEntryResult!6529)

(assert (=> b!623777 (= res!402124 (not (= lt!289375 (Found!6529 index!984))))))

(declare-datatypes ((Unit!21046 0))(
  ( (Unit!21047) )
))
(declare-fun lt!289379 () Unit!21046)

(declare-fun e!357757 () Unit!21046)

(assert (=> b!623777 (= lt!289379 e!357757)))

(declare-fun c!71189 () Bool)

(assert (=> b!623777 (= c!71189 (= lt!289375 Undefined!6529))))

(assert (=> b!623777 (= lt!289375 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!289374 lt!289376 mask!3053))))

(assert (=> b!623777 e!357759))

(declare-fun res!402131 () Bool)

(assert (=> b!623777 (=> (not res!402131) (not e!357759))))

(declare-fun lt!289380 () (_ BitVec 32))

(assert (=> b!623777 (= res!402131 (= lt!289372 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289380 vacantSpotIndex!68 lt!289374 lt!289376 mask!3053)))))

(assert (=> b!623777 (= lt!289372 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289380 vacantSpotIndex!68 (select (arr!18082 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!623777 (= lt!289374 (select (store (arr!18082 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!289377 () Unit!21046)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37682 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21046)

(assert (=> b!623777 (= lt!289377 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!289380 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!623777 (= lt!289380 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!623778 () Bool)

(declare-fun res!402133 () Bool)

(assert (=> b!623778 (=> (not res!402133) (not e!357763))))

(declare-fun arrayContainsKey!0 (array!37682 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!623778 (= res!402133 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!623779 () Bool)

(declare-fun Unit!21048 () Unit!21046)

(assert (=> b!623779 (= e!357757 Unit!21048)))

(declare-fun b!623780 () Bool)

(declare-fun Unit!21049 () Unit!21046)

(assert (=> b!623780 (= e!357757 Unit!21049)))

(assert (=> b!623780 false))

(assert (= (and start!56294 res!402125) b!623766))

(assert (= (and b!623766 res!402128) b!623773))

(assert (= (and b!623773 res!402122) b!623776))

(assert (= (and b!623776 res!402123) b!623778))

(assert (= (and b!623778 res!402133) b!623775))

(assert (= (and b!623775 res!402134) b!623769))

(assert (= (and b!623769 res!402127) b!623774))

(assert (= (and b!623774 res!402130) b!623767))

(assert (= (and b!623767 res!402126) b!623768))

(assert (= (and b!623768 res!402129) b!623771))

(assert (= (and b!623771 res!402132) b!623777))

(assert (= (and b!623777 res!402131) b!623772))

(assert (= (and b!623777 c!71189) b!623780))

(assert (= (and b!623777 (not c!71189)) b!623779))

(assert (= (and b!623777 (not res!402124)) b!623770))

(declare-fun m!599565 () Bool)

(assert (=> b!623775 m!599565))

(declare-fun m!599567 () Bool)

(assert (=> b!623777 m!599567))

(declare-fun m!599569 () Bool)

(assert (=> b!623777 m!599569))

(declare-fun m!599571 () Bool)

(assert (=> b!623777 m!599571))

(declare-fun m!599573 () Bool)

(assert (=> b!623777 m!599573))

(declare-fun m!599575 () Bool)

(assert (=> b!623777 m!599575))

(declare-fun m!599577 () Bool)

(assert (=> b!623777 m!599577))

(assert (=> b!623777 m!599571))

(declare-fun m!599579 () Bool)

(assert (=> b!623777 m!599579))

(declare-fun m!599581 () Bool)

(assert (=> b!623777 m!599581))

(declare-fun m!599583 () Bool)

(assert (=> b!623778 m!599583))

(declare-fun m!599585 () Bool)

(assert (=> b!623771 m!599585))

(assert (=> b!623771 m!599571))

(assert (=> b!623771 m!599571))

(declare-fun m!599587 () Bool)

(assert (=> b!623771 m!599587))

(declare-fun m!599589 () Bool)

(assert (=> b!623767 m!599589))

(declare-fun m!599591 () Bool)

(assert (=> b!623776 m!599591))

(assert (=> b!623770 m!599571))

(assert (=> b!623770 m!599573))

(declare-fun m!599593 () Bool)

(assert (=> b!623770 m!599593))

(declare-fun m!599595 () Bool)

(assert (=> b!623774 m!599595))

(declare-fun m!599597 () Bool)

(assert (=> start!56294 m!599597))

(declare-fun m!599599 () Bool)

(assert (=> start!56294 m!599599))

(assert (=> b!623768 m!599573))

(declare-fun m!599601 () Bool)

(assert (=> b!623768 m!599601))

(declare-fun m!599603 () Bool)

(assert (=> b!623769 m!599603))

(assert (=> b!623773 m!599571))

(assert (=> b!623773 m!599571))

(declare-fun m!599605 () Bool)

(assert (=> b!623773 m!599605))

(check-sat (not b!623778) (not start!56294) (not b!623774) (not b!623769) (not b!623777) (not b!623771) (not b!623775) (not b!623776) (not b!623773))
(check-sat)
