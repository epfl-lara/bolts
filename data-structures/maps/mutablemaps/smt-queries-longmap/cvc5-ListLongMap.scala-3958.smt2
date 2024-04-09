; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53776 () Bool)

(assert start!53776)

(declare-fun b!586276 () Bool)

(declare-fun res!374244 () Bool)

(declare-fun e!335165 () Bool)

(assert (=> b!586276 (=> (not res!374244) (not e!335165))))

(declare-datatypes ((array!36631 0))(
  ( (array!36632 (arr!17586 (Array (_ BitVec 32) (_ BitVec 64))) (size!17950 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36631)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586276 (= res!374244 (validKeyInArray!0 (select (arr!17586 a!2986) j!136)))))

(declare-fun b!586277 () Bool)

(declare-fun res!374246 () Bool)

(declare-fun e!335166 () Bool)

(assert (=> b!586277 (=> (not res!374246) (not e!335166))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!586277 (= res!374246 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17586 a!2986) index!984) (select (arr!17586 a!2986) j!136))) (not (= (select (arr!17586 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun res!374251 () Bool)

(assert (=> start!53776 (=> (not res!374251) (not e!335165))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53776 (= res!374251 (validMask!0 mask!3053))))

(assert (=> start!53776 e!335165))

(assert (=> start!53776 true))

(declare-fun array_inv!13360 (array!36631) Bool)

(assert (=> start!53776 (array_inv!13360 a!2986)))

(declare-fun b!586278 () Bool)

(assert (=> b!586278 (= e!335166 (not (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!266065 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6033 0))(
  ( (MissingZero!6033 (index!26359 (_ BitVec 32))) (Found!6033 (index!26360 (_ BitVec 32))) (Intermediate!6033 (undefined!6845 Bool) (index!26361 (_ BitVec 32)) (x!55201 (_ BitVec 32))) (Undefined!6033) (MissingVacant!6033 (index!26362 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36631 (_ BitVec 32)) SeekEntryResult!6033)

(assert (=> b!586278 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266065 vacantSpotIndex!68 (select (arr!17586 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266065 vacantSpotIndex!68 (select (store (arr!17586 a!2986) i!1108 k!1786) j!136) (array!36632 (store (arr!17586 a!2986) i!1108 k!1786) (size!17950 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18190 0))(
  ( (Unit!18191) )
))
(declare-fun lt!266066 () Unit!18190)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36631 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18190)

(assert (=> b!586278 (= lt!266066 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266065 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586278 (= lt!266065 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586279 () Bool)

(declare-fun res!374248 () Bool)

(assert (=> b!586279 (=> (not res!374248) (not e!335166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36631 (_ BitVec 32)) Bool)

(assert (=> b!586279 (= res!374248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586280 () Bool)

(declare-fun res!374250 () Bool)

(assert (=> b!586280 (=> (not res!374250) (not e!335165))))

(declare-fun arrayContainsKey!0 (array!36631 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586280 (= res!374250 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586281 () Bool)

(declare-fun res!374242 () Bool)

(assert (=> b!586281 (=> (not res!374242) (not e!335166))))

(assert (=> b!586281 (= res!374242 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17586 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17586 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586282 () Bool)

(declare-fun res!374245 () Bool)

(assert (=> b!586282 (=> (not res!374245) (not e!335165))))

(assert (=> b!586282 (= res!374245 (validKeyInArray!0 k!1786))))

(declare-fun b!586283 () Bool)

(assert (=> b!586283 (= e!335165 e!335166)))

(declare-fun res!374243 () Bool)

(assert (=> b!586283 (=> (not res!374243) (not e!335166))))

(declare-fun lt!266064 () SeekEntryResult!6033)

(assert (=> b!586283 (= res!374243 (or (= lt!266064 (MissingZero!6033 i!1108)) (= lt!266064 (MissingVacant!6033 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36631 (_ BitVec 32)) SeekEntryResult!6033)

(assert (=> b!586283 (= lt!266064 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!586284 () Bool)

(declare-fun res!374247 () Bool)

(assert (=> b!586284 (=> (not res!374247) (not e!335165))))

(assert (=> b!586284 (= res!374247 (and (= (size!17950 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17950 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17950 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586285 () Bool)

(declare-fun res!374252 () Bool)

(assert (=> b!586285 (=> (not res!374252) (not e!335166))))

(assert (=> b!586285 (= res!374252 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17586 a!2986) j!136) a!2986 mask!3053) (Found!6033 j!136)))))

(declare-fun b!586286 () Bool)

(declare-fun res!374249 () Bool)

(assert (=> b!586286 (=> (not res!374249) (not e!335166))))

(declare-datatypes ((List!11680 0))(
  ( (Nil!11677) (Cons!11676 (h!12721 (_ BitVec 64)) (t!17916 List!11680)) )
))
(declare-fun arrayNoDuplicates!0 (array!36631 (_ BitVec 32) List!11680) Bool)

(assert (=> b!586286 (= res!374249 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11677))))

(assert (= (and start!53776 res!374251) b!586284))

(assert (= (and b!586284 res!374247) b!586276))

(assert (= (and b!586276 res!374244) b!586282))

(assert (= (and b!586282 res!374245) b!586280))

(assert (= (and b!586280 res!374250) b!586283))

(assert (= (and b!586283 res!374243) b!586279))

(assert (= (and b!586279 res!374248) b!586286))

(assert (= (and b!586286 res!374249) b!586281))

(assert (= (and b!586281 res!374242) b!586285))

(assert (= (and b!586285 res!374252) b!586277))

(assert (= (and b!586277 res!374246) b!586278))

(declare-fun m!564691 () Bool)

(assert (=> b!586282 m!564691))

(declare-fun m!564693 () Bool)

(assert (=> b!586279 m!564693))

(declare-fun m!564695 () Bool)

(assert (=> b!586278 m!564695))

(declare-fun m!564697 () Bool)

(assert (=> b!586278 m!564697))

(declare-fun m!564699 () Bool)

(assert (=> b!586278 m!564699))

(declare-fun m!564701 () Bool)

(assert (=> b!586278 m!564701))

(declare-fun m!564703 () Bool)

(assert (=> b!586278 m!564703))

(assert (=> b!586278 m!564697))

(declare-fun m!564705 () Bool)

(assert (=> b!586278 m!564705))

(assert (=> b!586278 m!564699))

(declare-fun m!564707 () Bool)

(assert (=> b!586278 m!564707))

(declare-fun m!564709 () Bool)

(assert (=> b!586283 m!564709))

(assert (=> b!586276 m!564699))

(assert (=> b!586276 m!564699))

(declare-fun m!564711 () Bool)

(assert (=> b!586276 m!564711))

(assert (=> b!586285 m!564699))

(assert (=> b!586285 m!564699))

(declare-fun m!564713 () Bool)

(assert (=> b!586285 m!564713))

(declare-fun m!564715 () Bool)

(assert (=> b!586277 m!564715))

(assert (=> b!586277 m!564699))

(declare-fun m!564717 () Bool)

(assert (=> start!53776 m!564717))

(declare-fun m!564719 () Bool)

(assert (=> start!53776 m!564719))

(declare-fun m!564721 () Bool)

(assert (=> b!586281 m!564721))

(assert (=> b!586281 m!564701))

(declare-fun m!564723 () Bool)

(assert (=> b!586281 m!564723))

(declare-fun m!564725 () Bool)

(assert (=> b!586286 m!564725))

(declare-fun m!564727 () Bool)

(assert (=> b!586280 m!564727))

(push 1)

