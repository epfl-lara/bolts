; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56344 () Bool)

(assert start!56344)

(declare-fun b!624473 () Bool)

(declare-fun res!402808 () Bool)

(declare-fun e!358046 () Bool)

(assert (=> b!624473 (=> (not res!402808) (not e!358046))))

(declare-datatypes ((array!37732 0))(
  ( (array!37733 (arr!18107 (Array (_ BitVec 32) (_ BitVec 64))) (size!18471 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37732)

(declare-datatypes ((List!12201 0))(
  ( (Nil!12198) (Cons!12197 (h!13242 (_ BitVec 64)) (t!18437 List!12201)) )
))
(declare-fun arrayNoDuplicates!0 (array!37732 (_ BitVec 32) List!12201) Bool)

(assert (=> b!624473 (= res!402808 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12198))))

(declare-fun res!402807 () Bool)

(declare-fun e!358047 () Bool)

(assert (=> start!56344 (=> (not res!402807) (not e!358047))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56344 (= res!402807 (validMask!0 mask!3053))))

(assert (=> start!56344 e!358047))

(assert (=> start!56344 true))

(declare-fun array_inv!13881 (array!37732) Bool)

(assert (=> start!56344 (array_inv!13881 a!2986)))

(declare-fun b!624474 () Bool)

(declare-fun res!402811 () Bool)

(assert (=> b!624474 (=> (not res!402811) (not e!358047))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624474 (= res!402811 (and (= (size!18471 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18471 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18471 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624475 () Bool)

(declare-fun res!402803 () Bool)

(assert (=> b!624475 (=> (not res!402803) (not e!358046))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!624475 (= res!402803 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18107 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18107 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!624476 () Bool)

(declare-fun res!402804 () Bool)

(assert (=> b!624476 (=> (not res!402804) (not e!358047))))

(declare-fun arrayContainsKey!0 (array!37732 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624476 (= res!402804 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624477 () Bool)

(declare-fun res!402809 () Bool)

(assert (=> b!624477 (=> (not res!402809) (not e!358046))))

(declare-datatypes ((SeekEntryResult!6554 0))(
  ( (MissingZero!6554 (index!28499 (_ BitVec 32))) (Found!6554 (index!28500 (_ BitVec 32))) (Intermediate!6554 (undefined!7366 Bool) (index!28501 (_ BitVec 32)) (x!57278 (_ BitVec 32))) (Undefined!6554) (MissingVacant!6554 (index!28502 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37732 (_ BitVec 32)) SeekEntryResult!6554)

(assert (=> b!624477 (= res!402809 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18107 a!2986) j!136) a!2986 mask!3053) (Found!6554 j!136)))))

(declare-fun b!624478 () Bool)

(declare-fun res!402812 () Bool)

(assert (=> b!624478 (=> (not res!402812) (not e!358047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624478 (= res!402812 (validKeyInArray!0 (select (arr!18107 a!2986) j!136)))))

(declare-fun b!624479 () Bool)

(assert (=> b!624479 (= e!358047 e!358046)))

(declare-fun res!402810 () Bool)

(assert (=> b!624479 (=> (not res!402810) (not e!358046))))

(declare-fun lt!289587 () SeekEntryResult!6554)

(assert (=> b!624479 (= res!402810 (or (= lt!289587 (MissingZero!6554 i!1108)) (= lt!289587 (MissingVacant!6554 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37732 (_ BitVec 32)) SeekEntryResult!6554)

(assert (=> b!624479 (= lt!289587 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!624480 () Bool)

(declare-fun res!402806 () Bool)

(assert (=> b!624480 (=> (not res!402806) (not e!358046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37732 (_ BitVec 32)) Bool)

(assert (=> b!624480 (= res!402806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624481 () Bool)

(declare-fun res!402805 () Bool)

(assert (=> b!624481 (=> (not res!402805) (not e!358047))))

(assert (=> b!624481 (= res!402805 (validKeyInArray!0 k!1786))))

(declare-fun b!624482 () Bool)

(assert (=> b!624482 (= e!358046 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (= (and start!56344 res!402807) b!624474))

(assert (= (and b!624474 res!402811) b!624478))

(assert (= (and b!624478 res!402812) b!624481))

(assert (= (and b!624481 res!402805) b!624476))

(assert (= (and b!624476 res!402804) b!624479))

(assert (= (and b!624479 res!402810) b!624480))

(assert (= (and b!624480 res!402806) b!624473))

(assert (= (and b!624473 res!402808) b!624475))

(assert (= (and b!624475 res!402803) b!624477))

(assert (= (and b!624477 res!402809) b!624482))

(declare-fun m!600205 () Bool)

(assert (=> b!624477 m!600205))

(assert (=> b!624477 m!600205))

(declare-fun m!600207 () Bool)

(assert (=> b!624477 m!600207))

(declare-fun m!600209 () Bool)

(assert (=> start!56344 m!600209))

(declare-fun m!600211 () Bool)

(assert (=> start!56344 m!600211))

(declare-fun m!600213 () Bool)

(assert (=> b!624476 m!600213))

(declare-fun m!600215 () Bool)

(assert (=> b!624475 m!600215))

(declare-fun m!600217 () Bool)

(assert (=> b!624475 m!600217))

(declare-fun m!600219 () Bool)

(assert (=> b!624475 m!600219))

(declare-fun m!600221 () Bool)

(assert (=> b!624480 m!600221))

(declare-fun m!600223 () Bool)

(assert (=> b!624479 m!600223))

(declare-fun m!600225 () Bool)

(assert (=> b!624481 m!600225))

(declare-fun m!600227 () Bool)

(assert (=> b!624473 m!600227))

(assert (=> b!624478 m!600205))

(assert (=> b!624478 m!600205))

(declare-fun m!600229 () Bool)

(assert (=> b!624478 m!600229))

(push 1)

(assert (not b!624477))

(assert (not b!624476))

(assert (not start!56344))

(assert (not b!624478))

(assert (not b!624479))

(assert (not b!624480))

(assert (not b!624481))

(assert (not b!624473))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!88633 () Bool)

(assert (=> d!88633 (= (validKeyInArray!0 (select (arr!18107 a!2986) j!136)) (and (not (= (select (arr!18107 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18107 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!624478 d!88633))

(declare-fun b!624529 () Bool)

(declare-fun e!358083 () Bool)

(declare-fun contains!3078 (List!12201 (_ BitVec 64)) Bool)

(assert (=> b!624529 (= e!358083 (contains!3078 Nil!12198 (select (arr!18107 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!624530 () Bool)

(declare-fun e!358081 () Bool)

(declare-fun e!358082 () Bool)

(assert (=> b!624530 (= e!358081 e!358082)))

(declare-fun c!71216 () Bool)

(assert (=> b!624530 (= c!71216 (validKeyInArray!0 (select (arr!18107 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!624531 () Bool)

(declare-fun call!33200 () Bool)

(assert (=> b!624531 (= e!358082 call!33200)))

(declare-fun d!88637 () Bool)

(declare-fun res!402833 () Bool)

(declare-fun e!358084 () Bool)

(assert (=> d!88637 (=> res!402833 e!358084)))

(assert (=> d!88637 (= res!402833 (bvsge #b00000000000000000000000000000000 (size!18471 a!2986)))))

(assert (=> d!88637 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12198) e!358084)))

(declare-fun bm!33197 () Bool)

(assert (=> bm!33197 (= call!33200 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71216 (Cons!12197 (select (arr!18107 a!2986) #b00000000000000000000000000000000) Nil!12198) Nil!12198)))))

(declare-fun b!624532 () Bool)

(assert (=> b!624532 (= e!358082 call!33200)))

(declare-fun b!624533 () Bool)

(assert (=> b!624533 (= e!358084 e!358081)))

(declare-fun res!402831 () Bool)

(assert (=> b!624533 (=> (not res!402831) (not e!358081))))

(assert (=> b!624533 (= res!402831 (not e!358083))))

(declare-fun res!402832 () Bool)

(assert (=> b!624533 (=> (not res!402832) (not e!358083))))

(assert (=> b!624533 (= res!402832 (validKeyInArray!0 (select (arr!18107 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!88637 (not res!402833)) b!624533))

(assert (= (and b!624533 res!402832) b!624529))

(assert (= (and b!624533 res!402831) b!624530))

(assert (= (and b!624530 c!71216) b!624532))

(assert (= (and b!624530 (not c!71216)) b!624531))

(assert (= (or b!624532 b!624531) bm!33197))

(declare-fun m!600261 () Bool)

(assert (=> b!624529 m!600261))

(assert (=> b!624529 m!600261))

(declare-fun m!600263 () Bool)

(assert (=> b!624529 m!600263))

(assert (=> b!624530 m!600261))

(assert (=> b!624530 m!600261))

(declare-fun m!600265 () Bool)

(assert (=> b!624530 m!600265))

(assert (=> bm!33197 m!600261))

(declare-fun m!600267 () Bool)

(assert (=> bm!33197 m!600267))

(assert (=> b!624533 m!600261))

(assert (=> b!624533 m!600261))

(assert (=> b!624533 m!600265))

(assert (=> b!624473 d!88637))

(declare-fun b!624591 () Bool)

(declare-fun e!358121 () SeekEntryResult!6554)

(declare-fun lt!289627 () SeekEntryResult!6554)

(assert (=> b!624591 (= e!358121 (Found!6554 (index!28501 lt!289627)))))

(declare-fun b!624592 () Bool)

(declare-fun e!358123 () SeekEntryResult!6554)

(assert (=> b!624592 (= e!358123 (seekKeyOrZeroReturnVacant!0 (x!57278 lt!289627) (index!28501 lt!289627) (index!28501 lt!289627) k!1786 a!2986 mask!3053))))

(declare-fun b!624593 () Bool)

(declare-fun c!71238 () Bool)

(declare-fun lt!289629 () (_ BitVec 64))

(assert (=> b!624593 (= c!71238 (= lt!289629 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!624593 (= e!358121 e!358123)))

(declare-fun b!624594 () Bool)

(declare-fun e!358122 () SeekEntryResult!6554)

(assert (=> b!624594 (= e!358122 e!358121)))

(assert (=> b!624594 (= lt!289629 (select (arr!18107 a!2986) (index!28501 lt!289627)))))

(declare-fun c!71240 () Bool)

(assert (=> b!624594 (= c!71240 (= lt!289629 k!1786))))

(declare-fun d!88639 () Bool)

(declare-fun lt!289628 () SeekEntryResult!6554)

(assert (=> d!88639 (and (or (is-Undefined!6554 lt!289628) (not (is-Found!6554 lt!289628)) (and (bvsge (index!28500 lt!289628) #b00000000000000000000000000000000) (bvslt (index!28500 lt!289628) (size!18471 a!2986)))) (or (is-Undefined!6554 lt!289628) (is-Found!6554 lt!289628) (not (is-MissingZero!6554 lt!289628)) (and (bvsge (index!28499 lt!289628) #b00000000000000000000000000000000) (bvslt (index!28499 lt!289628) (size!18471 a!2986)))) (or (is-Undefined!6554 lt!289628) (is-Found!6554 lt!289628) (is-MissingZero!6554 lt!289628) (not (is-MissingVacant!6554 lt!289628)) (and (bvsge (index!28502 lt!289628) #b00000000000000000000000000000000) (bvslt (index!28502 lt!289628) (size!18471 a!2986)))) (or (is-Undefined!6554 lt!289628) (ite (is-Found!6554 lt!289628) (= (select (arr!18107 a!2986) (index!28500 lt!289628)) k!1786) (ite (is-MissingZero!6554 lt!289628) (= (select (arr!18107 a!2986) (index!28499 lt!289628)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6554 lt!289628) (= (select (arr!18107 a!2986) (index!28502 lt!289628)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

