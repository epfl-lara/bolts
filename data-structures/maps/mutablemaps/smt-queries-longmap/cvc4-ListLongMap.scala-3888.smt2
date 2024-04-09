; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53360 () Bool)

(assert start!53360)

(declare-fun res!367905 () Bool)

(declare-fun e!333123 () Bool)

(assert (=> start!53360 (=> (not res!367905) (not e!333123))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53360 (= res!367905 (validMask!0 mask!3053))))

(assert (=> start!53360 e!333123))

(assert (=> start!53360 true))

(declare-datatypes ((array!36215 0))(
  ( (array!36216 (arr!17378 (Array (_ BitVec 32) (_ BitVec 64))) (size!17742 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36215)

(declare-fun array_inv!13152 (array!36215) Bool)

(assert (=> start!53360 (array_inv!13152 a!2986)))

(declare-fun b!579936 () Bool)

(declare-fun e!333122 () Bool)

(assert (=> b!579936 (= e!333122 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5825 0))(
  ( (MissingZero!5825 (index!25527 (_ BitVec 32))) (Found!5825 (index!25528 (_ BitVec 32))) (Intermediate!5825 (undefined!6637 Bool) (index!25529 (_ BitVec 32)) (x!54433 (_ BitVec 32))) (Undefined!5825) (MissingVacant!5825 (index!25530 (_ BitVec 32))) )
))
(declare-fun lt!264599 () SeekEntryResult!5825)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36215 (_ BitVec 32)) SeekEntryResult!5825)

(assert (=> b!579936 (= lt!264599 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17378 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579937 () Bool)

(declare-fun res!367903 () Bool)

(assert (=> b!579937 (=> (not res!367903) (not e!333122))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36215 (_ BitVec 32)) Bool)

(assert (=> b!579937 (= res!367903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579938 () Bool)

(declare-fun res!367910 () Bool)

(assert (=> b!579938 (=> (not res!367910) (not e!333122))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!579938 (= res!367910 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17378 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17378 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579939 () Bool)

(declare-fun res!367908 () Bool)

(assert (=> b!579939 (=> (not res!367908) (not e!333122))))

(declare-datatypes ((List!11472 0))(
  ( (Nil!11469) (Cons!11468 (h!12513 (_ BitVec 64)) (t!17708 List!11472)) )
))
(declare-fun arrayNoDuplicates!0 (array!36215 (_ BitVec 32) List!11472) Bool)

(assert (=> b!579939 (= res!367908 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11469))))

(declare-fun b!579940 () Bool)

(assert (=> b!579940 (= e!333123 e!333122)))

(declare-fun res!367902 () Bool)

(assert (=> b!579940 (=> (not res!367902) (not e!333122))))

(declare-fun lt!264598 () SeekEntryResult!5825)

(assert (=> b!579940 (= res!367902 (or (= lt!264598 (MissingZero!5825 i!1108)) (= lt!264598 (MissingVacant!5825 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36215 (_ BitVec 32)) SeekEntryResult!5825)

(assert (=> b!579940 (= lt!264598 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579941 () Bool)

(declare-fun res!367904 () Bool)

(assert (=> b!579941 (=> (not res!367904) (not e!333123))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579941 (= res!367904 (validKeyInArray!0 k!1786))))

(declare-fun b!579942 () Bool)

(declare-fun res!367907 () Bool)

(assert (=> b!579942 (=> (not res!367907) (not e!333123))))

(assert (=> b!579942 (= res!367907 (and (= (size!17742 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17742 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17742 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579943 () Bool)

(declare-fun res!367909 () Bool)

(assert (=> b!579943 (=> (not res!367909) (not e!333123))))

(declare-fun arrayContainsKey!0 (array!36215 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579943 (= res!367909 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579944 () Bool)

(declare-fun res!367906 () Bool)

(assert (=> b!579944 (=> (not res!367906) (not e!333123))))

(assert (=> b!579944 (= res!367906 (validKeyInArray!0 (select (arr!17378 a!2986) j!136)))))

(assert (= (and start!53360 res!367905) b!579942))

(assert (= (and b!579942 res!367907) b!579944))

(assert (= (and b!579944 res!367906) b!579941))

(assert (= (and b!579941 res!367904) b!579943))

(assert (= (and b!579943 res!367909) b!579940))

(assert (= (and b!579940 res!367902) b!579937))

(assert (= (and b!579937 res!367903) b!579939))

(assert (= (and b!579939 res!367908) b!579938))

(assert (= (and b!579938 res!367910) b!579936))

(declare-fun m!558581 () Bool)

(assert (=> b!579943 m!558581))

(declare-fun m!558583 () Bool)

(assert (=> start!53360 m!558583))

(declare-fun m!558585 () Bool)

(assert (=> start!53360 m!558585))

(declare-fun m!558587 () Bool)

(assert (=> b!579939 m!558587))

(declare-fun m!558589 () Bool)

(assert (=> b!579944 m!558589))

(assert (=> b!579944 m!558589))

(declare-fun m!558591 () Bool)

(assert (=> b!579944 m!558591))

(declare-fun m!558593 () Bool)

(assert (=> b!579937 m!558593))

(declare-fun m!558595 () Bool)

(assert (=> b!579938 m!558595))

(declare-fun m!558597 () Bool)

(assert (=> b!579938 m!558597))

(declare-fun m!558599 () Bool)

(assert (=> b!579938 m!558599))

(declare-fun m!558601 () Bool)

(assert (=> b!579940 m!558601))

(declare-fun m!558603 () Bool)

(assert (=> b!579941 m!558603))

(assert (=> b!579936 m!558589))

(assert (=> b!579936 m!558589))

(declare-fun m!558605 () Bool)

(assert (=> b!579936 m!558605))

(push 1)

(assert (not b!579941))

(assert (not b!579940))

(assert (not start!53360))

(assert (not b!579939))

(assert (not b!579943))

(assert (not b!579944))

(assert (not b!579936))

(assert (not b!579937))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

