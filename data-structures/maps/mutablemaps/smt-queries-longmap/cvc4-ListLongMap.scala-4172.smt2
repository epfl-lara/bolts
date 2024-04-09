; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56842 () Bool)

(assert start!56842)

(declare-fun b!629323 () Bool)

(declare-fun res!406901 () Bool)

(declare-fun e!359893 () Bool)

(assert (=> b!629323 (=> (not res!406901) (not e!359893))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37993 0))(
  ( (array!37994 (arr!18230 (Array (_ BitVec 32) (_ BitVec 64))) (size!18594 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37993)

(assert (=> b!629323 (= res!406901 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18230 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18230 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!629324 () Bool)

(declare-fun res!406905 () Bool)

(assert (=> b!629324 (=> (not res!406905) (not e!359893))))

(declare-datatypes ((List!12324 0))(
  ( (Nil!12321) (Cons!12320 (h!13365 (_ BitVec 64)) (t!18560 List!12324)) )
))
(declare-fun arrayNoDuplicates!0 (array!37993 (_ BitVec 32) List!12324) Bool)

(assert (=> b!629324 (= res!406905 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12321))))

(declare-fun b!629325 () Bool)

(declare-fun res!406903 () Bool)

(declare-fun e!359892 () Bool)

(assert (=> b!629325 (=> (not res!406903) (not e!359892))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629325 (= res!406903 (validKeyInArray!0 k!1786))))

(declare-fun b!629326 () Bool)

(assert (=> b!629326 (= e!359892 e!359893)))

(declare-fun res!406904 () Bool)

(assert (=> b!629326 (=> (not res!406904) (not e!359893))))

(declare-datatypes ((SeekEntryResult!6677 0))(
  ( (MissingZero!6677 (index!28991 (_ BitVec 32))) (Found!6677 (index!28992 (_ BitVec 32))) (Intermediate!6677 (undefined!7489 Bool) (index!28993 (_ BitVec 32)) (x!57750 (_ BitVec 32))) (Undefined!6677) (MissingVacant!6677 (index!28994 (_ BitVec 32))) )
))
(declare-fun lt!290722 () SeekEntryResult!6677)

(assert (=> b!629326 (= res!406904 (or (= lt!290722 (MissingZero!6677 i!1108)) (= lt!290722 (MissingVacant!6677 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37993 (_ BitVec 32)) SeekEntryResult!6677)

(assert (=> b!629326 (= lt!290722 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!629327 () Bool)

(declare-fun res!406902 () Bool)

(assert (=> b!629327 (=> (not res!406902) (not e!359893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37993 (_ BitVec 32)) Bool)

(assert (=> b!629327 (= res!406902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!406900 () Bool)

(assert (=> start!56842 (=> (not res!406900) (not e!359892))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56842 (= res!406900 (validMask!0 mask!3053))))

(assert (=> start!56842 e!359892))

(assert (=> start!56842 true))

(declare-fun array_inv!14004 (array!37993) Bool)

(assert (=> start!56842 (array_inv!14004 a!2986)))

(declare-fun b!629328 () Bool)

(declare-fun res!406898 () Bool)

(assert (=> b!629328 (=> (not res!406898) (not e!359892))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!629328 (= res!406898 (validKeyInArray!0 (select (arr!18230 a!2986) j!136)))))

(declare-fun b!629329 () Bool)

(declare-fun res!406906 () Bool)

(assert (=> b!629329 (=> (not res!406906) (not e!359893))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37993 (_ BitVec 32)) SeekEntryResult!6677)

(assert (=> b!629329 (= res!406906 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18230 a!2986) j!136) a!2986 mask!3053) (Found!6677 j!136)))))

(declare-fun b!629330 () Bool)

(declare-fun res!406899 () Bool)

(assert (=> b!629330 (=> (not res!406899) (not e!359893))))

(assert (=> b!629330 (= res!406899 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18230 a!2986) index!984) (select (arr!18230 a!2986) j!136))) (not (= (select (arr!18230 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!629331 () Bool)

(declare-fun res!406907 () Bool)

(assert (=> b!629331 (=> (not res!406907) (not e!359892))))

(declare-fun arrayContainsKey!0 (array!37993 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629331 (= res!406907 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629332 () Bool)

(assert (=> b!629332 (= e!359893 (not true))))

(declare-fun lt!290724 () (_ BitVec 32))

(assert (=> b!629332 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290724 vacantSpotIndex!68 (select (arr!18230 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290724 vacantSpotIndex!68 (select (store (arr!18230 a!2986) i!1108 k!1786) j!136) (array!37994 (store (arr!18230 a!2986) i!1108 k!1786) (size!18594 a!2986)) mask!3053))))

(declare-datatypes ((Unit!21098 0))(
  ( (Unit!21099) )
))
(declare-fun lt!290723 () Unit!21098)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37993 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21098)

(assert (=> b!629332 (= lt!290723 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290724 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629332 (= lt!290724 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!629333 () Bool)

(declare-fun res!406897 () Bool)

(assert (=> b!629333 (=> (not res!406897) (not e!359892))))

(assert (=> b!629333 (= res!406897 (and (= (size!18594 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18594 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18594 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!56842 res!406900) b!629333))

(assert (= (and b!629333 res!406897) b!629328))

(assert (= (and b!629328 res!406898) b!629325))

(assert (= (and b!629325 res!406903) b!629331))

(assert (= (and b!629331 res!406907) b!629326))

(assert (= (and b!629326 res!406904) b!629327))

(assert (= (and b!629327 res!406902) b!629324))

(assert (= (and b!629324 res!406905) b!629323))

(assert (= (and b!629323 res!406901) b!629329))

(assert (= (and b!629329 res!406906) b!629330))

(assert (= (and b!629330 res!406899) b!629332))

(declare-fun m!604405 () Bool)

(assert (=> start!56842 m!604405))

(declare-fun m!604407 () Bool)

(assert (=> start!56842 m!604407))

(declare-fun m!604409 () Bool)

(assert (=> b!629332 m!604409))

(declare-fun m!604411 () Bool)

(assert (=> b!629332 m!604411))

(declare-fun m!604413 () Bool)

(assert (=> b!629332 m!604413))

(declare-fun m!604415 () Bool)

(assert (=> b!629332 m!604415))

(declare-fun m!604417 () Bool)

(assert (=> b!629332 m!604417))

(declare-fun m!604419 () Bool)

(assert (=> b!629332 m!604419))

(assert (=> b!629332 m!604415))

(assert (=> b!629332 m!604411))

(declare-fun m!604421 () Bool)

(assert (=> b!629332 m!604421))

(declare-fun m!604423 () Bool)

(assert (=> b!629324 m!604423))

(declare-fun m!604425 () Bool)

(assert (=> b!629326 m!604425))

(assert (=> b!629329 m!604411))

(assert (=> b!629329 m!604411))

(declare-fun m!604427 () Bool)

(assert (=> b!629329 m!604427))

(declare-fun m!604429 () Bool)

(assert (=> b!629323 m!604429))

(assert (=> b!629323 m!604413))

(declare-fun m!604431 () Bool)

(assert (=> b!629323 m!604431))

(assert (=> b!629328 m!604411))

(assert (=> b!629328 m!604411))

(declare-fun m!604433 () Bool)

(assert (=> b!629328 m!604433))

(declare-fun m!604435 () Bool)

(assert (=> b!629327 m!604435))

(declare-fun m!604437 () Bool)

(assert (=> b!629330 m!604437))

(assert (=> b!629330 m!604411))

(declare-fun m!604439 () Bool)

(assert (=> b!629331 m!604439))

(declare-fun m!604441 () Bool)

(assert (=> b!629325 m!604441))

(push 1)

(assert (not b!629326))

