; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53584 () Bool)

(assert start!53584)

(declare-fun b!582996 () Bool)

(declare-fun res!370968 () Bool)

(declare-fun e!334131 () Bool)

(assert (=> b!582996 (=> (not res!370968) (not e!334131))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36439 0))(
  ( (array!36440 (arr!17490 (Array (_ BitVec 32) (_ BitVec 64))) (size!17854 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36439)

(assert (=> b!582996 (= res!370968 (and (= (size!17854 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17854 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17854 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582997 () Bool)

(declare-fun res!370962 () Bool)

(assert (=> b!582997 (=> (not res!370962) (not e!334131))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582997 (= res!370962 (validKeyInArray!0 k!1786))))

(declare-fun b!582998 () Bool)

(declare-fun res!370967 () Bool)

(declare-fun e!334132 () Bool)

(assert (=> b!582998 (=> (not res!370967) (not e!334132))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582998 (= res!370967 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17490 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17490 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582999 () Bool)

(declare-fun res!370964 () Bool)

(assert (=> b!582999 (=> (not res!370964) (not e!334131))))

(declare-fun arrayContainsKey!0 (array!36439 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582999 (= res!370964 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583001 () Bool)

(declare-fun res!370965 () Bool)

(assert (=> b!583001 (=> (not res!370965) (not e!334131))))

(assert (=> b!583001 (= res!370965 (validKeyInArray!0 (select (arr!17490 a!2986) j!136)))))

(declare-fun b!583002 () Bool)

(declare-fun res!370966 () Bool)

(assert (=> b!583002 (=> (not res!370966) (not e!334132))))

(declare-datatypes ((List!11584 0))(
  ( (Nil!11581) (Cons!11580 (h!12625 (_ BitVec 64)) (t!17820 List!11584)) )
))
(declare-fun arrayNoDuplicates!0 (array!36439 (_ BitVec 32) List!11584) Bool)

(assert (=> b!583002 (= res!370966 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11581))))

(declare-fun b!583003 () Bool)

(assert (=> b!583003 (= e!334132 false)))

(declare-datatypes ((SeekEntryResult!5937 0))(
  ( (MissingZero!5937 (index!25975 (_ BitVec 32))) (Found!5937 (index!25976 (_ BitVec 32))) (Intermediate!5937 (undefined!6749 Bool) (index!25977 (_ BitVec 32)) (x!54849 (_ BitVec 32))) (Undefined!5937) (MissingVacant!5937 (index!25978 (_ BitVec 32))) )
))
(declare-fun lt!265243 () SeekEntryResult!5937)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36439 (_ BitVec 32)) SeekEntryResult!5937)

(assert (=> b!583003 (= lt!265243 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17490 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583004 () Bool)

(assert (=> b!583004 (= e!334131 e!334132)))

(declare-fun res!370963 () Bool)

(assert (=> b!583004 (=> (not res!370963) (not e!334132))))

(declare-fun lt!265244 () SeekEntryResult!5937)

(assert (=> b!583004 (= res!370963 (or (= lt!265244 (MissingZero!5937 i!1108)) (= lt!265244 (MissingVacant!5937 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36439 (_ BitVec 32)) SeekEntryResult!5937)

(assert (=> b!583004 (= lt!265244 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!583000 () Bool)

(declare-fun res!370969 () Bool)

(assert (=> b!583000 (=> (not res!370969) (not e!334132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36439 (_ BitVec 32)) Bool)

(assert (=> b!583000 (= res!370969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!370970 () Bool)

(assert (=> start!53584 (=> (not res!370970) (not e!334131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53584 (= res!370970 (validMask!0 mask!3053))))

(assert (=> start!53584 e!334131))

(assert (=> start!53584 true))

(declare-fun array_inv!13264 (array!36439) Bool)

(assert (=> start!53584 (array_inv!13264 a!2986)))

(assert (= (and start!53584 res!370970) b!582996))

(assert (= (and b!582996 res!370968) b!583001))

(assert (= (and b!583001 res!370965) b!582997))

(assert (= (and b!582997 res!370962) b!582999))

(assert (= (and b!582999 res!370964) b!583004))

(assert (= (and b!583004 res!370963) b!583000))

(assert (= (and b!583000 res!370969) b!583002))

(assert (= (and b!583002 res!370966) b!582998))

(assert (= (and b!582998 res!370967) b!583003))

(declare-fun m!561523 () Bool)

(assert (=> b!583004 m!561523))

(declare-fun m!561525 () Bool)

(assert (=> start!53584 m!561525))

(declare-fun m!561527 () Bool)

(assert (=> start!53584 m!561527))

(declare-fun m!561529 () Bool)

(assert (=> b!582999 m!561529))

(declare-fun m!561531 () Bool)

(assert (=> b!582998 m!561531))

(declare-fun m!561533 () Bool)

(assert (=> b!582998 m!561533))

(declare-fun m!561535 () Bool)

(assert (=> b!582998 m!561535))

(declare-fun m!561537 () Bool)

(assert (=> b!583003 m!561537))

(assert (=> b!583003 m!561537))

(declare-fun m!561539 () Bool)

(assert (=> b!583003 m!561539))

(declare-fun m!561541 () Bool)

(assert (=> b!582997 m!561541))

(declare-fun m!561543 () Bool)

(assert (=> b!583002 m!561543))

(declare-fun m!561545 () Bool)

(assert (=> b!583000 m!561545))

(assert (=> b!583001 m!561537))

(assert (=> b!583001 m!561537))

(declare-fun m!561547 () Bool)

(assert (=> b!583001 m!561547))

(push 1)

