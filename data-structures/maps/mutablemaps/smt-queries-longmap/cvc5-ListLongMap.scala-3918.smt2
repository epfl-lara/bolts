; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53536 () Bool)

(assert start!53536)

(declare-fun b!582349 () Bool)

(declare-fun res!370317 () Bool)

(declare-fun e!333915 () Bool)

(assert (=> b!582349 (=> (not res!370317) (not e!333915))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36391 0))(
  ( (array!36392 (arr!17466 (Array (_ BitVec 32) (_ BitVec 64))) (size!17830 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36391)

(assert (=> b!582349 (= res!370317 (and (= (size!17830 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17830 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17830 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582350 () Bool)

(declare-fun res!370320 () Bool)

(declare-fun e!333914 () Bool)

(assert (=> b!582350 (=> (not res!370320) (not e!333914))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582350 (= res!370320 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17466 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17466 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582351 () Bool)

(assert (=> b!582351 (= e!333914 false)))

(declare-datatypes ((SeekEntryResult!5913 0))(
  ( (MissingZero!5913 (index!25879 (_ BitVec 32))) (Found!5913 (index!25880 (_ BitVec 32))) (Intermediate!5913 (undefined!6725 Bool) (index!25881 (_ BitVec 32)) (x!54761 (_ BitVec 32))) (Undefined!5913) (MissingVacant!5913 (index!25882 (_ BitVec 32))) )
))
(declare-fun lt!265100 () SeekEntryResult!5913)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36391 (_ BitVec 32)) SeekEntryResult!5913)

(assert (=> b!582351 (= lt!265100 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17466 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582352 () Bool)

(declare-fun res!370315 () Bool)

(assert (=> b!582352 (=> (not res!370315) (not e!333914))))

(declare-datatypes ((List!11560 0))(
  ( (Nil!11557) (Cons!11556 (h!12601 (_ BitVec 64)) (t!17796 List!11560)) )
))
(declare-fun arrayNoDuplicates!0 (array!36391 (_ BitVec 32) List!11560) Bool)

(assert (=> b!582352 (= res!370315 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11557))))

(declare-fun b!582353 () Bool)

(declare-fun res!370321 () Bool)

(assert (=> b!582353 (=> (not res!370321) (not e!333914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36391 (_ BitVec 32)) Bool)

(assert (=> b!582353 (= res!370321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582354 () Bool)

(declare-fun res!370322 () Bool)

(assert (=> b!582354 (=> (not res!370322) (not e!333915))))

(declare-fun arrayContainsKey!0 (array!36391 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582354 (= res!370322 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582348 () Bool)

(declare-fun res!370314 () Bool)

(assert (=> b!582348 (=> (not res!370314) (not e!333915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582348 (= res!370314 (validKeyInArray!0 k!1786))))

(declare-fun res!370316 () Bool)

(assert (=> start!53536 (=> (not res!370316) (not e!333915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53536 (= res!370316 (validMask!0 mask!3053))))

(assert (=> start!53536 e!333915))

(assert (=> start!53536 true))

(declare-fun array_inv!13240 (array!36391) Bool)

(assert (=> start!53536 (array_inv!13240 a!2986)))

(declare-fun b!582355 () Bool)

(assert (=> b!582355 (= e!333915 e!333914)))

(declare-fun res!370318 () Bool)

(assert (=> b!582355 (=> (not res!370318) (not e!333914))))

(declare-fun lt!265099 () SeekEntryResult!5913)

(assert (=> b!582355 (= res!370318 (or (= lt!265099 (MissingZero!5913 i!1108)) (= lt!265099 (MissingVacant!5913 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36391 (_ BitVec 32)) SeekEntryResult!5913)

(assert (=> b!582355 (= lt!265099 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!582356 () Bool)

(declare-fun res!370319 () Bool)

(assert (=> b!582356 (=> (not res!370319) (not e!333915))))

(assert (=> b!582356 (= res!370319 (validKeyInArray!0 (select (arr!17466 a!2986) j!136)))))

(assert (= (and start!53536 res!370316) b!582349))

(assert (= (and b!582349 res!370317) b!582356))

(assert (= (and b!582356 res!370319) b!582348))

(assert (= (and b!582348 res!370314) b!582354))

(assert (= (and b!582354 res!370322) b!582355))

(assert (= (and b!582355 res!370318) b!582353))

(assert (= (and b!582353 res!370321) b!582352))

(assert (= (and b!582352 res!370315) b!582350))

(assert (= (and b!582350 res!370320) b!582351))

(declare-fun m!560899 () Bool)

(assert (=> b!582348 m!560899))

(declare-fun m!560901 () Bool)

(assert (=> b!582350 m!560901))

(declare-fun m!560903 () Bool)

(assert (=> b!582350 m!560903))

(declare-fun m!560905 () Bool)

(assert (=> b!582350 m!560905))

(declare-fun m!560907 () Bool)

(assert (=> b!582355 m!560907))

(declare-fun m!560909 () Bool)

(assert (=> b!582354 m!560909))

(declare-fun m!560911 () Bool)

(assert (=> b!582353 m!560911))

(declare-fun m!560913 () Bool)

(assert (=> start!53536 m!560913))

(declare-fun m!560915 () Bool)

(assert (=> start!53536 m!560915))

(declare-fun m!560917 () Bool)

(assert (=> b!582351 m!560917))

(assert (=> b!582351 m!560917))

(declare-fun m!560919 () Bool)

(assert (=> b!582351 m!560919))

(declare-fun m!560921 () Bool)

(assert (=> b!582352 m!560921))

(assert (=> b!582356 m!560917))

(assert (=> b!582356 m!560917))

(declare-fun m!560923 () Bool)

(assert (=> b!582356 m!560923))

(push 1)

