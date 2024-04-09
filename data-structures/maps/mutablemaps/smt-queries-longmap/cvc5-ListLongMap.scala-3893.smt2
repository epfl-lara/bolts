; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53386 () Bool)

(assert start!53386)

(declare-fun b!580287 () Bool)

(declare-fun res!368259 () Bool)

(declare-fun e!333241 () Bool)

(assert (=> b!580287 (=> (not res!368259) (not e!333241))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580287 (= res!368259 (validKeyInArray!0 k!1786))))

(declare-fun b!580288 () Bool)

(declare-fun res!368253 () Bool)

(assert (=> b!580288 (=> (not res!368253) (not e!333241))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36241 0))(
  ( (array!36242 (arr!17391 (Array (_ BitVec 32) (_ BitVec 64))) (size!17755 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36241)

(assert (=> b!580288 (= res!368253 (and (= (size!17755 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17755 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17755 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580289 () Bool)

(declare-fun res!368254 () Bool)

(declare-fun e!333240 () Bool)

(assert (=> b!580289 (=> (not res!368254) (not e!333240))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!580289 (= res!368254 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17391 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17391 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580290 () Bool)

(assert (=> b!580290 (= e!333241 e!333240)))

(declare-fun res!368256 () Bool)

(assert (=> b!580290 (=> (not res!368256) (not e!333240))))

(declare-datatypes ((SeekEntryResult!5838 0))(
  ( (MissingZero!5838 (index!25579 (_ BitVec 32))) (Found!5838 (index!25580 (_ BitVec 32))) (Intermediate!5838 (undefined!6650 Bool) (index!25581 (_ BitVec 32)) (x!54486 (_ BitVec 32))) (Undefined!5838) (MissingVacant!5838 (index!25582 (_ BitVec 32))) )
))
(declare-fun lt!264676 () SeekEntryResult!5838)

(assert (=> b!580290 (= res!368256 (or (= lt!264676 (MissingZero!5838 i!1108)) (= lt!264676 (MissingVacant!5838 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36241 (_ BitVec 32)) SeekEntryResult!5838)

(assert (=> b!580290 (= lt!264676 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!368258 () Bool)

(assert (=> start!53386 (=> (not res!368258) (not e!333241))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53386 (= res!368258 (validMask!0 mask!3053))))

(assert (=> start!53386 e!333241))

(assert (=> start!53386 true))

(declare-fun array_inv!13165 (array!36241) Bool)

(assert (=> start!53386 (array_inv!13165 a!2986)))

(declare-fun b!580291 () Bool)

(declare-fun res!368257 () Bool)

(assert (=> b!580291 (=> (not res!368257) (not e!333241))))

(assert (=> b!580291 (= res!368257 (validKeyInArray!0 (select (arr!17391 a!2986) j!136)))))

(declare-fun b!580292 () Bool)

(declare-fun res!368260 () Bool)

(assert (=> b!580292 (=> (not res!368260) (not e!333241))))

(declare-fun arrayContainsKey!0 (array!36241 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580292 (= res!368260 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580293 () Bool)

(declare-fun res!368261 () Bool)

(assert (=> b!580293 (=> (not res!368261) (not e!333240))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36241 (_ BitVec 32)) Bool)

(assert (=> b!580293 (= res!368261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580294 () Bool)

(assert (=> b!580294 (= e!333240 false)))

(declare-fun lt!264677 () SeekEntryResult!5838)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36241 (_ BitVec 32)) SeekEntryResult!5838)

(assert (=> b!580294 (= lt!264677 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17391 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580295 () Bool)

(declare-fun res!368255 () Bool)

(assert (=> b!580295 (=> (not res!368255) (not e!333240))))

(declare-datatypes ((List!11485 0))(
  ( (Nil!11482) (Cons!11481 (h!12526 (_ BitVec 64)) (t!17721 List!11485)) )
))
(declare-fun arrayNoDuplicates!0 (array!36241 (_ BitVec 32) List!11485) Bool)

(assert (=> b!580295 (= res!368255 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11482))))

(assert (= (and start!53386 res!368258) b!580288))

(assert (= (and b!580288 res!368253) b!580291))

(assert (= (and b!580291 res!368257) b!580287))

(assert (= (and b!580287 res!368259) b!580292))

(assert (= (and b!580292 res!368260) b!580290))

(assert (= (and b!580290 res!368256) b!580293))

(assert (= (and b!580293 res!368261) b!580295))

(assert (= (and b!580295 res!368255) b!580289))

(assert (= (and b!580289 res!368254) b!580294))

(declare-fun m!558919 () Bool)

(assert (=> b!580294 m!558919))

(assert (=> b!580294 m!558919))

(declare-fun m!558921 () Bool)

(assert (=> b!580294 m!558921))

(declare-fun m!558923 () Bool)

(assert (=> b!580295 m!558923))

(assert (=> b!580291 m!558919))

(assert (=> b!580291 m!558919))

(declare-fun m!558925 () Bool)

(assert (=> b!580291 m!558925))

(declare-fun m!558927 () Bool)

(assert (=> b!580293 m!558927))

(declare-fun m!558929 () Bool)

(assert (=> b!580290 m!558929))

(declare-fun m!558931 () Bool)

(assert (=> b!580287 m!558931))

(declare-fun m!558933 () Bool)

(assert (=> b!580292 m!558933))

(declare-fun m!558935 () Bool)

(assert (=> b!580289 m!558935))

(declare-fun m!558937 () Bool)

(assert (=> b!580289 m!558937))

(declare-fun m!558939 () Bool)

(assert (=> b!580289 m!558939))

(declare-fun m!558941 () Bool)

(assert (=> start!53386 m!558941))

(declare-fun m!558943 () Bool)

(assert (=> start!53386 m!558943))

(push 1)

