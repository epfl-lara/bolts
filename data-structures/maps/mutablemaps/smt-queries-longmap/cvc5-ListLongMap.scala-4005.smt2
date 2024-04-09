; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54510 () Bool)

(assert start!54510)

(declare-fun res!380578 () Bool)

(declare-fun e!339652 () Bool)

(assert (=> start!54510 (=> (not res!380578) (not e!339652))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54510 (= res!380578 (validMask!0 mask!3053))))

(assert (=> start!54510 e!339652))

(assert (=> start!54510 true))

(declare-datatypes ((array!36933 0))(
  ( (array!36934 (arr!17727 (Array (_ BitVec 32) (_ BitVec 64))) (size!18091 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36933)

(declare-fun array_inv!13501 (array!36933) Bool)

(assert (=> start!54510 (array_inv!13501 a!2986)))

(declare-fun b!594454 () Bool)

(declare-fun e!339653 () Bool)

(declare-datatypes ((SeekEntryResult!6174 0))(
  ( (MissingZero!6174 (index!26943 (_ BitVec 32))) (Found!6174 (index!26944 (_ BitVec 32))) (Intermediate!6174 (undefined!6986 Bool) (index!26945 (_ BitVec 32)) (x!55779 (_ BitVec 32))) (Undefined!6174) (MissingVacant!6174 (index!26946 (_ BitVec 32))) )
))
(declare-fun lt!269927 () SeekEntryResult!6174)

(declare-fun lt!269924 () SeekEntryResult!6174)

(assert (=> b!594454 (= e!339653 (= lt!269927 lt!269924))))

(declare-fun b!594455 () Bool)

(declare-fun e!339655 () Bool)

(assert (=> b!594455 (= e!339652 e!339655)))

(declare-fun res!380579 () Bool)

(assert (=> b!594455 (=> (not res!380579) (not e!339655))))

(declare-fun lt!269922 () SeekEntryResult!6174)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!594455 (= res!380579 (or (= lt!269922 (MissingZero!6174 i!1108)) (= lt!269922 (MissingVacant!6174 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36933 (_ BitVec 32)) SeekEntryResult!6174)

(assert (=> b!594455 (= lt!269922 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!594456 () Bool)

(declare-fun res!380588 () Bool)

(assert (=> b!594456 (=> (not res!380588) (not e!339652))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!594456 (= res!380588 (and (= (size!18091 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18091 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18091 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!594457 () Bool)

(declare-fun res!380575 () Bool)

(declare-fun e!339656 () Bool)

(assert (=> b!594457 (=> res!380575 e!339656)))

(declare-datatypes ((List!11821 0))(
  ( (Nil!11818) (Cons!11817 (h!12862 (_ BitVec 64)) (t!18057 List!11821)) )
))
(declare-fun noDuplicate!241 (List!11821) Bool)

(assert (=> b!594457 (= res!380575 (not (noDuplicate!241 Nil!11818)))))

(declare-fun b!594458 () Bool)

(declare-fun e!339658 () Bool)

(assert (=> b!594458 (= e!339658 e!339656)))

(declare-fun res!380581 () Bool)

(assert (=> b!594458 (=> res!380581 e!339656)))

(assert (=> b!594458 (= res!380581 (or (bvsge (size!18091 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18091 a!2986))))))

(declare-fun lt!269920 () array!36933)

(declare-fun arrayContainsKey!0 (array!36933 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!594458 (arrayContainsKey!0 lt!269920 (select (arr!17727 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-datatypes ((Unit!18640 0))(
  ( (Unit!18641) )
))
(declare-fun lt!269918 () Unit!18640)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36933 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18640)

(assert (=> b!594458 (= lt!269918 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269920 (select (arr!17727 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!594459 () Bool)

(declare-fun e!339648 () Bool)

(declare-fun e!339646 () Bool)

(assert (=> b!594459 (= e!339648 e!339646)))

(declare-fun res!380583 () Bool)

(assert (=> b!594459 (=> res!380583 e!339646)))

(declare-fun lt!269921 () (_ BitVec 64))

(declare-fun lt!269919 () (_ BitVec 64))

(assert (=> b!594459 (= res!380583 (or (not (= (select (arr!17727 a!2986) j!136) lt!269919)) (not (= (select (arr!17727 a!2986) j!136) lt!269921)) (bvsge j!136 index!984)))))

(declare-fun b!594460 () Bool)

(declare-fun res!380591 () Bool)

(assert (=> b!594460 (=> (not res!380591) (not e!339652))))

(assert (=> b!594460 (= res!380591 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!594461 () Bool)

(declare-fun e!339649 () Bool)

(declare-fun e!339657 () Bool)

(assert (=> b!594461 (= e!339649 (not e!339657))))

(declare-fun res!380592 () Bool)

(assert (=> b!594461 (=> res!380592 e!339657)))

(declare-fun lt!269928 () SeekEntryResult!6174)

(assert (=> b!594461 (= res!380592 (not (= lt!269928 (Found!6174 index!984))))))

(declare-fun lt!269923 () Unit!18640)

(declare-fun e!339654 () Unit!18640)

(assert (=> b!594461 (= lt!269923 e!339654)))

(declare-fun c!67307 () Bool)

(assert (=> b!594461 (= c!67307 (= lt!269928 Undefined!6174))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36933 (_ BitVec 32)) SeekEntryResult!6174)

(assert (=> b!594461 (= lt!269928 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269919 lt!269920 mask!3053))))

(assert (=> b!594461 e!339653))

(declare-fun res!380577 () Bool)

(assert (=> b!594461 (=> (not res!380577) (not e!339653))))

(declare-fun lt!269925 () (_ BitVec 32))

(assert (=> b!594461 (= res!380577 (= lt!269924 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269925 vacantSpotIndex!68 lt!269919 lt!269920 mask!3053)))))

(assert (=> b!594461 (= lt!269924 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269925 vacantSpotIndex!68 (select (arr!17727 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!594461 (= lt!269919 (select (store (arr!17727 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!269926 () Unit!18640)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36933 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18640)

(assert (=> b!594461 (= lt!269926 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269925 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!594461 (= lt!269925 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!594462 () Bool)

(declare-fun res!380587 () Bool)

(assert (=> b!594462 (=> (not res!380587) (not e!339655))))

(assert (=> b!594462 (= res!380587 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17727 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!594463 () Bool)

(declare-fun e!339651 () Bool)

(assert (=> b!594463 (= e!339651 e!339649)))

(declare-fun res!380593 () Bool)

(assert (=> b!594463 (=> (not res!380593) (not e!339649))))

(assert (=> b!594463 (= res!380593 (and (= lt!269927 (Found!6174 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17727 a!2986) index!984) (select (arr!17727 a!2986) j!136))) (not (= (select (arr!17727 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!594463 (= lt!269927 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17727 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!594464 () Bool)

(declare-fun res!380585 () Bool)

(assert (=> b!594464 (=> (not res!380585) (not e!339652))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!594464 (= res!380585 (validKeyInArray!0 (select (arr!17727 a!2986) j!136)))))

(declare-fun b!594465 () Bool)

(assert (=> b!594465 (= e!339657 e!339658)))

(declare-fun res!380594 () Bool)

(assert (=> b!594465 (=> res!380594 e!339658)))

(assert (=> b!594465 (= res!380594 (or (not (= (select (arr!17727 a!2986) j!136) lt!269919)) (not (= (select (arr!17727 a!2986) j!136) lt!269921)) (bvsge j!136 index!984)))))

(assert (=> b!594465 e!339648))

(declare-fun res!380580 () Bool)

(assert (=> b!594465 (=> (not res!380580) (not e!339648))))

(assert (=> b!594465 (= res!380580 (= lt!269921 (select (arr!17727 a!2986) j!136)))))

(assert (=> b!594465 (= lt!269921 (select (store (arr!17727 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!594466 () Bool)

(assert (=> b!594466 (= e!339656 true)))

(declare-fun lt!269917 () Bool)

(declare-fun contains!2925 (List!11821 (_ BitVec 64)) Bool)

(assert (=> b!594466 (= lt!269917 (contains!2925 Nil!11818 k!1786))))

(declare-fun b!594467 () Bool)

(declare-fun res!380584 () Bool)

(assert (=> b!594467 (=> (not res!380584) (not e!339655))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36933 (_ BitVec 32)) Bool)

(assert (=> b!594467 (= res!380584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!594468 () Bool)

(declare-fun res!380589 () Bool)

(assert (=> b!594468 (=> res!380589 e!339656)))

(assert (=> b!594468 (= res!380589 (contains!2925 Nil!11818 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594469 () Bool)

(declare-fun Unit!18642 () Unit!18640)

(assert (=> b!594469 (= e!339654 Unit!18642)))

(assert (=> b!594469 false))

(declare-fun b!594470 () Bool)

(declare-fun e!339647 () Bool)

(assert (=> b!594470 (= e!339647 (arrayContainsKey!0 lt!269920 (select (arr!17727 a!2986) j!136) index!984))))

(declare-fun b!594471 () Bool)

(declare-fun res!380576 () Bool)

(assert (=> b!594471 (=> (not res!380576) (not e!339652))))

(assert (=> b!594471 (= res!380576 (validKeyInArray!0 k!1786))))

(declare-fun b!594472 () Bool)

(assert (=> b!594472 (= e!339646 e!339647)))

(declare-fun res!380574 () Bool)

(assert (=> b!594472 (=> (not res!380574) (not e!339647))))

(assert (=> b!594472 (= res!380574 (arrayContainsKey!0 lt!269920 (select (arr!17727 a!2986) j!136) j!136))))

(declare-fun b!594473 () Bool)

(assert (=> b!594473 (= e!339655 e!339651)))

(declare-fun res!380582 () Bool)

(assert (=> b!594473 (=> (not res!380582) (not e!339651))))

(assert (=> b!594473 (= res!380582 (= (select (store (arr!17727 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!594473 (= lt!269920 (array!36934 (store (arr!17727 a!2986) i!1108 k!1786) (size!18091 a!2986)))))

(declare-fun b!594474 () Bool)

(declare-fun res!380590 () Bool)

(assert (=> b!594474 (=> (not res!380590) (not e!339655))))

(declare-fun arrayNoDuplicates!0 (array!36933 (_ BitVec 32) List!11821) Bool)

(assert (=> b!594474 (= res!380590 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11818))))

(declare-fun b!594475 () Bool)

(declare-fun res!380586 () Bool)

(assert (=> b!594475 (=> res!380586 e!339656)))

(assert (=> b!594475 (= res!380586 (contains!2925 Nil!11818 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594476 () Bool)

(declare-fun Unit!18643 () Unit!18640)

(assert (=> b!594476 (= e!339654 Unit!18643)))

(assert (= (and start!54510 res!380578) b!594456))

(assert (= (and b!594456 res!380588) b!594464))

(assert (= (and b!594464 res!380585) b!594471))

(assert (= (and b!594471 res!380576) b!594460))

(assert (= (and b!594460 res!380591) b!594455))

(assert (= (and b!594455 res!380579) b!594467))

(assert (= (and b!594467 res!380584) b!594474))

(assert (= (and b!594474 res!380590) b!594462))

(assert (= (and b!594462 res!380587) b!594473))

(assert (= (and b!594473 res!380582) b!594463))

(assert (= (and b!594463 res!380593) b!594461))

(assert (= (and b!594461 res!380577) b!594454))

(assert (= (and b!594461 c!67307) b!594469))

(assert (= (and b!594461 (not c!67307)) b!594476))

(assert (= (and b!594461 (not res!380592)) b!594465))

(assert (= (and b!594465 res!380580) b!594459))

(assert (= (and b!594459 (not res!380583)) b!594472))

(assert (= (and b!594472 res!380574) b!594470))

(assert (= (and b!594465 (not res!380594)) b!594458))

(assert (= (and b!594458 (not res!380581)) b!594457))

(assert (= (and b!594457 (not res!380575)) b!594468))

(assert (= (and b!594468 (not res!380589)) b!594475))

(assert (= (and b!594475 (not res!380586)) b!594466))

(declare-fun m!572277 () Bool)

(assert (=> b!594464 m!572277))

(assert (=> b!594464 m!572277))

(declare-fun m!572279 () Bool)

(assert (=> b!594464 m!572279))

(declare-fun m!572281 () Bool)

(assert (=> b!594466 m!572281))

(declare-fun m!572283 () Bool)

(assert (=> b!594468 m!572283))

(declare-fun m!572285 () Bool)

(assert (=> b!594475 m!572285))

(declare-fun m!572287 () Bool)

(assert (=> b!594474 m!572287))

(assert (=> b!594459 m!572277))

(declare-fun m!572289 () Bool)

(assert (=> b!594461 m!572289))

(declare-fun m!572291 () Bool)

(assert (=> b!594461 m!572291))

(declare-fun m!572293 () Bool)

(assert (=> b!594461 m!572293))

(declare-fun m!572295 () Bool)

(assert (=> b!594461 m!572295))

(declare-fun m!572297 () Bool)

(assert (=> b!594461 m!572297))

(declare-fun m!572299 () Bool)

(assert (=> b!594461 m!572299))

(assert (=> b!594461 m!572277))

(declare-fun m!572301 () Bool)

(assert (=> b!594461 m!572301))

(assert (=> b!594461 m!572277))

(declare-fun m!572303 () Bool)

(assert (=> b!594467 m!572303))

(declare-fun m!572305 () Bool)

(assert (=> start!54510 m!572305))

(declare-fun m!572307 () Bool)

(assert (=> start!54510 m!572307))

(declare-fun m!572309 () Bool)

(assert (=> b!594460 m!572309))

(declare-fun m!572311 () Bool)

(assert (=> b!594462 m!572311))

(assert (=> b!594458 m!572277))

(assert (=> b!594458 m!572277))

(declare-fun m!572313 () Bool)

(assert (=> b!594458 m!572313))

(assert (=> b!594458 m!572277))

(declare-fun m!572315 () Bool)

(assert (=> b!594458 m!572315))

(assert (=> b!594470 m!572277))

(assert (=> b!594470 m!572277))

(declare-fun m!572317 () Bool)

(assert (=> b!594470 m!572317))

(declare-fun m!572319 () Bool)

(assert (=> b!594463 m!572319))

(assert (=> b!594463 m!572277))

(assert (=> b!594463 m!572277))

(declare-fun m!572321 () Bool)

(assert (=> b!594463 m!572321))

(assert (=> b!594465 m!572277))

(assert (=> b!594465 m!572291))

(declare-fun m!572323 () Bool)

(assert (=> b!594465 m!572323))

(declare-fun m!572325 () Bool)

(assert (=> b!594457 m!572325))

(assert (=> b!594473 m!572291))

(declare-fun m!572327 () Bool)

(assert (=> b!594473 m!572327))

(declare-fun m!572329 () Bool)

(assert (=> b!594455 m!572329))

(declare-fun m!572331 () Bool)

(assert (=> b!594471 m!572331))

(assert (=> b!594472 m!572277))

(assert (=> b!594472 m!572277))

(declare-fun m!572333 () Bool)

(assert (=> b!594472 m!572333))

(push 1)

