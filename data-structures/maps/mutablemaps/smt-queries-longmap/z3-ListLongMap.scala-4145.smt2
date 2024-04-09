; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56522 () Bool)

(assert start!56522)

(declare-fun b!626045 () Bool)

(declare-fun res!404075 () Bool)

(declare-fun e!358703 () Bool)

(assert (=> b!626045 (=> (not res!404075) (not e!358703))))

(declare-datatypes ((array!37820 0))(
  ( (array!37821 (arr!18148 (Array (_ BitVec 32) (_ BitVec 64))) (size!18512 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37820)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626045 (= res!404075 (validKeyInArray!0 (select (arr!18148 a!2986) j!136)))))

(declare-fun e!358704 () Bool)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun b!626046 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!626046 (= e!358704 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18148 a!2986) index!984) (select (arr!18148 a!2986) j!136))) (= (select (arr!18148 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626047 () Bool)

(declare-fun res!404078 () Bool)

(assert (=> b!626047 (=> (not res!404078) (not e!358703))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!626047 (= res!404078 (and (= (size!18512 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18512 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18512 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626048 () Bool)

(assert (=> b!626048 (= e!358703 e!358704)))

(declare-fun res!404073 () Bool)

(assert (=> b!626048 (=> (not res!404073) (not e!358704))))

(declare-datatypes ((SeekEntryResult!6595 0))(
  ( (MissingZero!6595 (index!28663 (_ BitVec 32))) (Found!6595 (index!28664 (_ BitVec 32))) (Intermediate!6595 (undefined!7407 Bool) (index!28665 (_ BitVec 32)) (x!57437 (_ BitVec 32))) (Undefined!6595) (MissingVacant!6595 (index!28666 (_ BitVec 32))) )
))
(declare-fun lt!289959 () SeekEntryResult!6595)

(assert (=> b!626048 (= res!404073 (or (= lt!289959 (MissingZero!6595 i!1108)) (= lt!289959 (MissingVacant!6595 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37820 (_ BitVec 32)) SeekEntryResult!6595)

(assert (=> b!626048 (= lt!289959 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!626050 () Bool)

(declare-fun res!404070 () Bool)

(assert (=> b!626050 (=> (not res!404070) (not e!358703))))

(assert (=> b!626050 (= res!404070 (validKeyInArray!0 k0!1786))))

(declare-fun b!626051 () Bool)

(declare-fun res!404076 () Bool)

(assert (=> b!626051 (=> (not res!404076) (not e!358704))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37820 (_ BitVec 32)) SeekEntryResult!6595)

(assert (=> b!626051 (= res!404076 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18148 a!2986) j!136) a!2986 mask!3053) (Found!6595 j!136)))))

(declare-fun b!626052 () Bool)

(declare-fun res!404074 () Bool)

(assert (=> b!626052 (=> (not res!404074) (not e!358703))))

(declare-fun arrayContainsKey!0 (array!37820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626052 (= res!404074 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626053 () Bool)

(declare-fun res!404071 () Bool)

(assert (=> b!626053 (=> (not res!404071) (not e!358704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37820 (_ BitVec 32)) Bool)

(assert (=> b!626053 (= res!404071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626054 () Bool)

(declare-fun res!404077 () Bool)

(assert (=> b!626054 (=> (not res!404077) (not e!358704))))

(assert (=> b!626054 (= res!404077 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18148 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18148 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626049 () Bool)

(declare-fun res!404069 () Bool)

(assert (=> b!626049 (=> (not res!404069) (not e!358704))))

(declare-datatypes ((List!12242 0))(
  ( (Nil!12239) (Cons!12238 (h!13283 (_ BitVec 64)) (t!18478 List!12242)) )
))
(declare-fun arrayNoDuplicates!0 (array!37820 (_ BitVec 32) List!12242) Bool)

(assert (=> b!626049 (= res!404069 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12239))))

(declare-fun res!404072 () Bool)

(assert (=> start!56522 (=> (not res!404072) (not e!358703))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56522 (= res!404072 (validMask!0 mask!3053))))

(assert (=> start!56522 e!358703))

(assert (=> start!56522 true))

(declare-fun array_inv!13922 (array!37820) Bool)

(assert (=> start!56522 (array_inv!13922 a!2986)))

(assert (= (and start!56522 res!404072) b!626047))

(assert (= (and b!626047 res!404078) b!626045))

(assert (= (and b!626045 res!404075) b!626050))

(assert (= (and b!626050 res!404070) b!626052))

(assert (= (and b!626052 res!404074) b!626048))

(assert (= (and b!626048 res!404073) b!626053))

(assert (= (and b!626053 res!404071) b!626049))

(assert (= (and b!626049 res!404069) b!626054))

(assert (= (and b!626054 res!404077) b!626051))

(assert (= (and b!626051 res!404076) b!626046))

(declare-fun m!601567 () Bool)

(assert (=> b!626049 m!601567))

(declare-fun m!601569 () Bool)

(assert (=> b!626051 m!601569))

(assert (=> b!626051 m!601569))

(declare-fun m!601571 () Bool)

(assert (=> b!626051 m!601571))

(declare-fun m!601573 () Bool)

(assert (=> b!626052 m!601573))

(declare-fun m!601575 () Bool)

(assert (=> b!626053 m!601575))

(assert (=> b!626045 m!601569))

(assert (=> b!626045 m!601569))

(declare-fun m!601577 () Bool)

(assert (=> b!626045 m!601577))

(declare-fun m!601579 () Bool)

(assert (=> b!626048 m!601579))

(declare-fun m!601581 () Bool)

(assert (=> start!56522 m!601581))

(declare-fun m!601583 () Bool)

(assert (=> start!56522 m!601583))

(declare-fun m!601585 () Bool)

(assert (=> b!626046 m!601585))

(assert (=> b!626046 m!601569))

(declare-fun m!601587 () Bool)

(assert (=> b!626054 m!601587))

(declare-fun m!601589 () Bool)

(assert (=> b!626054 m!601589))

(declare-fun m!601591 () Bool)

(assert (=> b!626054 m!601591))

(declare-fun m!601593 () Bool)

(assert (=> b!626050 m!601593))

(check-sat (not start!56522) (not b!626049) (not b!626051) (not b!626053) (not b!626052) (not b!626048) (not b!626050) (not b!626045))
(check-sat)
(get-model)

(declare-fun d!88765 () Bool)

(assert (=> d!88765 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!56522 d!88765))

(declare-fun d!88767 () Bool)

(assert (=> d!88767 (= (array_inv!13922 a!2986) (bvsge (size!18512 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!56522 d!88767))

(declare-fun lt!289967 () SeekEntryResult!6595)

(declare-fun d!88769 () Bool)

(get-info :version)

(assert (=> d!88769 (and (or ((_ is Undefined!6595) lt!289967) (not ((_ is Found!6595) lt!289967)) (and (bvsge (index!28664 lt!289967) #b00000000000000000000000000000000) (bvslt (index!28664 lt!289967) (size!18512 a!2986)))) (or ((_ is Undefined!6595) lt!289967) ((_ is Found!6595) lt!289967) (not ((_ is MissingVacant!6595) lt!289967)) (not (= (index!28666 lt!289967) vacantSpotIndex!68)) (and (bvsge (index!28666 lt!289967) #b00000000000000000000000000000000) (bvslt (index!28666 lt!289967) (size!18512 a!2986)))) (or ((_ is Undefined!6595) lt!289967) (ite ((_ is Found!6595) lt!289967) (= (select (arr!18148 a!2986) (index!28664 lt!289967)) (select (arr!18148 a!2986) j!136)) (and ((_ is MissingVacant!6595) lt!289967) (= (index!28666 lt!289967) vacantSpotIndex!68) (= (select (arr!18148 a!2986) (index!28666 lt!289967)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!358730 () SeekEntryResult!6595)

(assert (=> d!88769 (= lt!289967 e!358730)))

(declare-fun c!71363 () Bool)

(assert (=> d!88769 (= c!71363 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!289968 () (_ BitVec 64))

(assert (=> d!88769 (= lt!289968 (select (arr!18148 a!2986) index!984))))

(assert (=> d!88769 (validMask!0 mask!3053)))

(assert (=> d!88769 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18148 a!2986) j!136) a!2986 mask!3053) lt!289967)))

(declare-fun b!626107 () Bool)

(declare-fun e!358729 () SeekEntryResult!6595)

(assert (=> b!626107 (= e!358729 (Found!6595 index!984))))

(declare-fun b!626108 () Bool)

(assert (=> b!626108 (= e!358730 Undefined!6595)))

(declare-fun e!358731 () SeekEntryResult!6595)

(declare-fun b!626109 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!626109 (= e!358731 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18148 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!626110 () Bool)

(declare-fun c!71365 () Bool)

(assert (=> b!626110 (= c!71365 (= lt!289968 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!626110 (= e!358729 e!358731)))

(declare-fun b!626111 () Bool)

(assert (=> b!626111 (= e!358731 (MissingVacant!6595 vacantSpotIndex!68))))

(declare-fun b!626112 () Bool)

(assert (=> b!626112 (= e!358730 e!358729)))

(declare-fun c!71364 () Bool)

(assert (=> b!626112 (= c!71364 (= lt!289968 (select (arr!18148 a!2986) j!136)))))

(assert (= (and d!88769 c!71363) b!626108))

(assert (= (and d!88769 (not c!71363)) b!626112))

(assert (= (and b!626112 c!71364) b!626107))

(assert (= (and b!626112 (not c!71364)) b!626110))

(assert (= (and b!626110 c!71365) b!626111))

(assert (= (and b!626110 (not c!71365)) b!626109))

(declare-fun m!601623 () Bool)

(assert (=> d!88769 m!601623))

(declare-fun m!601625 () Bool)

(assert (=> d!88769 m!601625))

(assert (=> d!88769 m!601585))

(assert (=> d!88769 m!601581))

(declare-fun m!601627 () Bool)

(assert (=> b!626109 m!601627))

(assert (=> b!626109 m!601627))

(assert (=> b!626109 m!601569))

(declare-fun m!601629 () Bool)

(assert (=> b!626109 m!601629))

(assert (=> b!626051 d!88769))

(declare-fun d!88773 () Bool)

(assert (=> d!88773 (= (validKeyInArray!0 (select (arr!18148 a!2986) j!136)) (and (not (= (select (arr!18148 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18148 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!626045 d!88773))

(declare-fun d!88777 () Bool)

(assert (=> d!88777 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!626050 d!88777))

(declare-fun b!626136 () Bool)

(declare-fun e!358750 () Bool)

(declare-fun e!358751 () Bool)

(assert (=> b!626136 (= e!358750 e!358751)))

(declare-fun res!404128 () Bool)

(assert (=> b!626136 (=> (not res!404128) (not e!358751))))

(declare-fun e!358753 () Bool)

(assert (=> b!626136 (= res!404128 (not e!358753))))

(declare-fun res!404130 () Bool)

(assert (=> b!626136 (=> (not res!404130) (not e!358753))))

(assert (=> b!626136 (= res!404130 (validKeyInArray!0 (select (arr!18148 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!88779 () Bool)

(declare-fun res!404129 () Bool)

(assert (=> d!88779 (=> res!404129 e!358750)))

(assert (=> d!88779 (= res!404129 (bvsge #b00000000000000000000000000000000 (size!18512 a!2986)))))

(assert (=> d!88779 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12239) e!358750)))

(declare-fun bm!33233 () Bool)

(declare-fun call!33236 () Bool)

(declare-fun c!71371 () Bool)

(assert (=> bm!33233 (= call!33236 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71371 (Cons!12238 (select (arr!18148 a!2986) #b00000000000000000000000000000000) Nil!12239) Nil!12239)))))

(declare-fun b!626137 () Bool)

(declare-fun e!358752 () Bool)

(assert (=> b!626137 (= e!358752 call!33236)))

(declare-fun b!626138 () Bool)

(assert (=> b!626138 (= e!358752 call!33236)))

(declare-fun b!626139 () Bool)

(assert (=> b!626139 (= e!358751 e!358752)))

(assert (=> b!626139 (= c!71371 (validKeyInArray!0 (select (arr!18148 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!626140 () Bool)

(declare-fun contains!3081 (List!12242 (_ BitVec 64)) Bool)

(assert (=> b!626140 (= e!358753 (contains!3081 Nil!12239 (select (arr!18148 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!88779 (not res!404129)) b!626136))

(assert (= (and b!626136 res!404130) b!626140))

(assert (= (and b!626136 res!404128) b!626139))

(assert (= (and b!626139 c!71371) b!626138))

(assert (= (and b!626139 (not c!71371)) b!626137))

(assert (= (or b!626138 b!626137) bm!33233))

(declare-fun m!601639 () Bool)

(assert (=> b!626136 m!601639))

(assert (=> b!626136 m!601639))

(declare-fun m!601641 () Bool)

(assert (=> b!626136 m!601641))

(assert (=> bm!33233 m!601639))

(declare-fun m!601643 () Bool)

(assert (=> bm!33233 m!601643))

(assert (=> b!626139 m!601639))

(assert (=> b!626139 m!601639))

(assert (=> b!626139 m!601641))

(assert (=> b!626140 m!601639))

(assert (=> b!626140 m!601639))

(declare-fun m!601645 () Bool)

(assert (=> b!626140 m!601645))

(assert (=> b!626049 d!88779))

(declare-fun b!626202 () Bool)

(declare-fun e!358790 () SeekEntryResult!6595)

(declare-fun lt!290001 () SeekEntryResult!6595)

(assert (=> b!626202 (= e!358790 (Found!6595 (index!28665 lt!290001)))))

(declare-fun d!88783 () Bool)

(declare-fun lt!289999 () SeekEntryResult!6595)

(assert (=> d!88783 (and (or ((_ is Undefined!6595) lt!289999) (not ((_ is Found!6595) lt!289999)) (and (bvsge (index!28664 lt!289999) #b00000000000000000000000000000000) (bvslt (index!28664 lt!289999) (size!18512 a!2986)))) (or ((_ is Undefined!6595) lt!289999) ((_ is Found!6595) lt!289999) (not ((_ is MissingZero!6595) lt!289999)) (and (bvsge (index!28663 lt!289999) #b00000000000000000000000000000000) (bvslt (index!28663 lt!289999) (size!18512 a!2986)))) (or ((_ is Undefined!6595) lt!289999) ((_ is Found!6595) lt!289999) ((_ is MissingZero!6595) lt!289999) (not ((_ is MissingVacant!6595) lt!289999)) (and (bvsge (index!28666 lt!289999) #b00000000000000000000000000000000) (bvslt (index!28666 lt!289999) (size!18512 a!2986)))) (or ((_ is Undefined!6595) lt!289999) (ite ((_ is Found!6595) lt!289999) (= (select (arr!18148 a!2986) (index!28664 lt!289999)) k0!1786) (ite ((_ is MissingZero!6595) lt!289999) (= (select (arr!18148 a!2986) (index!28663 lt!289999)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6595) lt!289999) (= (select (arr!18148 a!2986) (index!28666 lt!289999)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!358791 () SeekEntryResult!6595)

(assert (=> d!88783 (= lt!289999 e!358791)))

(declare-fun c!71399 () Bool)

(assert (=> d!88783 (= c!71399 (and ((_ is Intermediate!6595) lt!290001) (undefined!7407 lt!290001)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37820 (_ BitVec 32)) SeekEntryResult!6595)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88783 (= lt!290001 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!88783 (validMask!0 mask!3053)))

(assert (=> d!88783 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!289999)))

(declare-fun b!626203 () Bool)

(declare-fun e!358792 () SeekEntryResult!6595)

(assert (=> b!626203 (= e!358792 (seekKeyOrZeroReturnVacant!0 (x!57437 lt!290001) (index!28665 lt!290001) (index!28665 lt!290001) k0!1786 a!2986 mask!3053))))

(declare-fun b!626204 () Bool)

(declare-fun c!71398 () Bool)

(declare-fun lt!290000 () (_ BitVec 64))

(assert (=> b!626204 (= c!71398 (= lt!290000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!626204 (= e!358790 e!358792)))

(declare-fun b!626205 () Bool)

(assert (=> b!626205 (= e!358791 Undefined!6595)))

(declare-fun b!626206 () Bool)

(assert (=> b!626206 (= e!358792 (MissingZero!6595 (index!28665 lt!290001)))))

(declare-fun b!626207 () Bool)

(assert (=> b!626207 (= e!358791 e!358790)))

(assert (=> b!626207 (= lt!290000 (select (arr!18148 a!2986) (index!28665 lt!290001)))))

(declare-fun c!71397 () Bool)

(assert (=> b!626207 (= c!71397 (= lt!290000 k0!1786))))

(assert (= (and d!88783 c!71399) b!626205))

(assert (= (and d!88783 (not c!71399)) b!626207))

(assert (= (and b!626207 c!71397) b!626202))

(assert (= (and b!626207 (not c!71397)) b!626204))

(assert (= (and b!626204 c!71398) b!626206))

(assert (= (and b!626204 (not c!71398)) b!626203))

(assert (=> d!88783 m!601581))

(declare-fun m!601675 () Bool)

(assert (=> d!88783 m!601675))

(declare-fun m!601679 () Bool)

(assert (=> d!88783 m!601679))

(declare-fun m!601681 () Bool)

(assert (=> d!88783 m!601681))

(declare-fun m!601683 () Bool)

(assert (=> d!88783 m!601683))

(declare-fun m!601685 () Bool)

(assert (=> d!88783 m!601685))

(assert (=> d!88783 m!601681))

(declare-fun m!601687 () Bool)

(assert (=> b!626203 m!601687))

(declare-fun m!601689 () Bool)

(assert (=> b!626207 m!601689))

(assert (=> b!626048 d!88783))

(declare-fun d!88791 () Bool)

(declare-fun res!404158 () Bool)

(declare-fun e!358818 () Bool)

(assert (=> d!88791 (=> res!404158 e!358818)))

(assert (=> d!88791 (= res!404158 (bvsge #b00000000000000000000000000000000 (size!18512 a!2986)))))

(assert (=> d!88791 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!358818)))

(declare-fun b!626240 () Bool)

(declare-fun e!358819 () Bool)

(declare-fun call!33248 () Bool)

(assert (=> b!626240 (= e!358819 call!33248)))

(declare-fun bm!33245 () Bool)

(assert (=> bm!33245 (= call!33248 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!626241 () Bool)

(declare-fun e!358817 () Bool)

(assert (=> b!626241 (= e!358818 e!358817)))

(declare-fun c!71408 () Bool)

(assert (=> b!626241 (= c!71408 (validKeyInArray!0 (select (arr!18148 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!626242 () Bool)

(assert (=> b!626242 (= e!358817 e!358819)))

(declare-fun lt!290021 () (_ BitVec 64))

(assert (=> b!626242 (= lt!290021 (select (arr!18148 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!21074 0))(
  ( (Unit!21075) )
))
(declare-fun lt!290020 () Unit!21074)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37820 (_ BitVec 64) (_ BitVec 32)) Unit!21074)

(assert (=> b!626242 (= lt!290020 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!290021 #b00000000000000000000000000000000))))

(assert (=> b!626242 (arrayContainsKey!0 a!2986 lt!290021 #b00000000000000000000000000000000)))

(declare-fun lt!290022 () Unit!21074)

(assert (=> b!626242 (= lt!290022 lt!290020)))

(declare-fun res!404159 () Bool)

(assert (=> b!626242 (= res!404159 (= (seekEntryOrOpen!0 (select (arr!18148 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6595 #b00000000000000000000000000000000)))))

(assert (=> b!626242 (=> (not res!404159) (not e!358819))))

(declare-fun b!626243 () Bool)

(assert (=> b!626243 (= e!358817 call!33248)))

(assert (= (and d!88791 (not res!404158)) b!626241))

(assert (= (and b!626241 c!71408) b!626242))

(assert (= (and b!626241 (not c!71408)) b!626243))

(assert (= (and b!626242 res!404159) b!626240))

(assert (= (or b!626240 b!626243) bm!33245))

(declare-fun m!601709 () Bool)

(assert (=> bm!33245 m!601709))

(assert (=> b!626241 m!601639))

(assert (=> b!626241 m!601639))

(assert (=> b!626241 m!601641))

(assert (=> b!626242 m!601639))

(declare-fun m!601717 () Bool)

(assert (=> b!626242 m!601717))

(declare-fun m!601719 () Bool)

(assert (=> b!626242 m!601719))

(assert (=> b!626242 m!601639))

(declare-fun m!601721 () Bool)

(assert (=> b!626242 m!601721))

(assert (=> b!626053 d!88791))

(declare-fun d!88801 () Bool)

(declare-fun res!404170 () Bool)

(declare-fun e!358830 () Bool)

(assert (=> d!88801 (=> res!404170 e!358830)))

(assert (=> d!88801 (= res!404170 (= (select (arr!18148 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!88801 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!358830)))

(declare-fun b!626254 () Bool)

(declare-fun e!358831 () Bool)

(assert (=> b!626254 (= e!358830 e!358831)))

(declare-fun res!404171 () Bool)

(assert (=> b!626254 (=> (not res!404171) (not e!358831))))

(assert (=> b!626254 (= res!404171 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18512 a!2986)))))

(declare-fun b!626255 () Bool)

(assert (=> b!626255 (= e!358831 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88801 (not res!404170)) b!626254))

(assert (= (and b!626254 res!404171) b!626255))

(assert (=> d!88801 m!601639))

(declare-fun m!601725 () Bool)

(assert (=> b!626255 m!601725))

(assert (=> b!626052 d!88801))

(check-sat (not bm!33245) (not b!626136) (not d!88783) (not bm!33233) (not b!626241) (not b!626139) (not b!626242) (not b!626140) (not b!626109) (not d!88769) (not b!626203) (not b!626255))
(check-sat)
