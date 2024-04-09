; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53566 () Bool)

(assert start!53566)

(declare-fun res!370719 () Bool)

(declare-fun e!334051 () Bool)

(assert (=> start!53566 (=> (not res!370719) (not e!334051))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53566 (= res!370719 (validMask!0 mask!3053))))

(assert (=> start!53566 e!334051))

(assert (=> start!53566 true))

(declare-datatypes ((array!36421 0))(
  ( (array!36422 (arr!17481 (Array (_ BitVec 32) (_ BitVec 64))) (size!17845 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36421)

(declare-fun array_inv!13255 (array!36421) Bool)

(assert (=> start!53566 (array_inv!13255 a!2986)))

(declare-fun b!582753 () Bool)

(declare-fun res!370721 () Bool)

(declare-fun e!334050 () Bool)

(assert (=> b!582753 (=> (not res!370721) (not e!334050))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36421 (_ BitVec 32)) Bool)

(assert (=> b!582753 (= res!370721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582754 () Bool)

(declare-fun res!370722 () Bool)

(assert (=> b!582754 (=> (not res!370722) (not e!334051))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36421 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582754 (= res!370722 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582755 () Bool)

(declare-fun res!370724 () Bool)

(assert (=> b!582755 (=> (not res!370724) (not e!334051))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582755 (= res!370724 (validKeyInArray!0 k!1786))))

(declare-fun b!582756 () Bool)

(assert (=> b!582756 (= e!334051 e!334050)))

(declare-fun res!370727 () Bool)

(assert (=> b!582756 (=> (not res!370727) (not e!334050))))

(declare-datatypes ((SeekEntryResult!5928 0))(
  ( (MissingZero!5928 (index!25939 (_ BitVec 32))) (Found!5928 (index!25940 (_ BitVec 32))) (Intermediate!5928 (undefined!6740 Bool) (index!25941 (_ BitVec 32)) (x!54816 (_ BitVec 32))) (Undefined!5928) (MissingVacant!5928 (index!25942 (_ BitVec 32))) )
))
(declare-fun lt!265190 () SeekEntryResult!5928)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582756 (= res!370727 (or (= lt!265190 (MissingZero!5928 i!1108)) (= lt!265190 (MissingVacant!5928 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36421 (_ BitVec 32)) SeekEntryResult!5928)

(assert (=> b!582756 (= lt!265190 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!582757 () Bool)

(declare-fun res!370720 () Bool)

(assert (=> b!582757 (=> (not res!370720) (not e!334050))))

(declare-datatypes ((List!11575 0))(
  ( (Nil!11572) (Cons!11571 (h!12616 (_ BitVec 64)) (t!17811 List!11575)) )
))
(declare-fun arrayNoDuplicates!0 (array!36421 (_ BitVec 32) List!11575) Bool)

(assert (=> b!582757 (= res!370720 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11572))))

(declare-fun b!582758 () Bool)

(declare-fun res!370725 () Bool)

(assert (=> b!582758 (=> (not res!370725) (not e!334050))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582758 (= res!370725 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17481 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17481 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582759 () Bool)

(assert (=> b!582759 (= e!334050 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!265189 () SeekEntryResult!5928)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36421 (_ BitVec 32)) SeekEntryResult!5928)

(assert (=> b!582759 (= lt!265189 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17481 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582760 () Bool)

(declare-fun res!370723 () Bool)

(assert (=> b!582760 (=> (not res!370723) (not e!334051))))

(assert (=> b!582760 (= res!370723 (validKeyInArray!0 (select (arr!17481 a!2986) j!136)))))

(declare-fun b!582761 () Bool)

(declare-fun res!370726 () Bool)

(assert (=> b!582761 (=> (not res!370726) (not e!334051))))

(assert (=> b!582761 (= res!370726 (and (= (size!17845 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17845 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17845 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53566 res!370719) b!582761))

(assert (= (and b!582761 res!370726) b!582760))

(assert (= (and b!582760 res!370723) b!582755))

(assert (= (and b!582755 res!370724) b!582754))

(assert (= (and b!582754 res!370722) b!582756))

(assert (= (and b!582756 res!370727) b!582753))

(assert (= (and b!582753 res!370721) b!582757))

(assert (= (and b!582757 res!370720) b!582758))

(assert (= (and b!582758 res!370725) b!582759))

(declare-fun m!561289 () Bool)

(assert (=> b!582757 m!561289))

(declare-fun m!561291 () Bool)

(assert (=> b!582754 m!561291))

(declare-fun m!561293 () Bool)

(assert (=> b!582753 m!561293))

(declare-fun m!561295 () Bool)

(assert (=> b!582756 m!561295))

(declare-fun m!561297 () Bool)

(assert (=> b!582759 m!561297))

(assert (=> b!582759 m!561297))

(declare-fun m!561299 () Bool)

(assert (=> b!582759 m!561299))

(declare-fun m!561301 () Bool)

(assert (=> start!53566 m!561301))

(declare-fun m!561303 () Bool)

(assert (=> start!53566 m!561303))

(declare-fun m!561305 () Bool)

(assert (=> b!582755 m!561305))

(declare-fun m!561307 () Bool)

(assert (=> b!582758 m!561307))

(declare-fun m!561309 () Bool)

(assert (=> b!582758 m!561309))

(declare-fun m!561311 () Bool)

(assert (=> b!582758 m!561311))

(assert (=> b!582760 m!561297))

(assert (=> b!582760 m!561297))

(declare-fun m!561313 () Bool)

(assert (=> b!582760 m!561313))

(push 1)

