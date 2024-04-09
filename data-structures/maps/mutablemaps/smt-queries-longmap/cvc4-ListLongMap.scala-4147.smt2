; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56584 () Bool)

(assert start!56584)

(declare-fun b!626445 () Bool)

(declare-fun res!404327 () Bool)

(declare-fun e!358901 () Bool)

(assert (=> b!626445 (=> (not res!404327) (not e!358901))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37837 0))(
  ( (array!37838 (arr!18155 (Array (_ BitVec 32) (_ BitVec 64))) (size!18519 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37837)

(assert (=> b!626445 (= res!404327 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18155 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18155 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626446 () Bool)

(declare-fun res!404328 () Bool)

(declare-fun e!358903 () Bool)

(assert (=> b!626446 (=> (not res!404328) (not e!358903))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!626446 (= res!404328 (and (= (size!18519 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18519 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18519 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626447 () Bool)

(declare-fun res!404325 () Bool)

(assert (=> b!626447 (=> (not res!404325) (not e!358903))))

(declare-fun arrayContainsKey!0 (array!37837 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626447 (= res!404325 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626448 () Bool)

(assert (=> b!626448 (= e!358901 false)))

(declare-datatypes ((SeekEntryResult!6602 0))(
  ( (MissingZero!6602 (index!28691 (_ BitVec 32))) (Found!6602 (index!28692 (_ BitVec 32))) (Intermediate!6602 (undefined!7414 Bool) (index!28693 (_ BitVec 32)) (x!57463 (_ BitVec 32))) (Undefined!6602) (MissingVacant!6602 (index!28694 (_ BitVec 32))) )
))
(declare-fun lt!290070 () SeekEntryResult!6602)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37837 (_ BitVec 32)) SeekEntryResult!6602)

(assert (=> b!626448 (= lt!290070 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18155 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!404331 () Bool)

(assert (=> start!56584 (=> (not res!404331) (not e!358903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56584 (= res!404331 (validMask!0 mask!3053))))

(assert (=> start!56584 e!358903))

(assert (=> start!56584 true))

(declare-fun array_inv!13929 (array!37837) Bool)

(assert (=> start!56584 (array_inv!13929 a!2986)))

(declare-fun b!626449 () Bool)

(declare-fun res!404333 () Bool)

(assert (=> b!626449 (=> (not res!404333) (not e!358901))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37837 (_ BitVec 32)) Bool)

(assert (=> b!626449 (= res!404333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626450 () Bool)

(declare-fun res!404332 () Bool)

(assert (=> b!626450 (=> (not res!404332) (not e!358903))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626450 (= res!404332 (validKeyInArray!0 k!1786))))

(declare-fun b!626451 () Bool)

(declare-fun res!404329 () Bool)

(assert (=> b!626451 (=> (not res!404329) (not e!358903))))

(assert (=> b!626451 (= res!404329 (validKeyInArray!0 (select (arr!18155 a!2986) j!136)))))

(declare-fun b!626452 () Bool)

(declare-fun res!404326 () Bool)

(assert (=> b!626452 (=> (not res!404326) (not e!358901))))

(declare-datatypes ((List!12249 0))(
  ( (Nil!12246) (Cons!12245 (h!13290 (_ BitVec 64)) (t!18485 List!12249)) )
))
(declare-fun arrayNoDuplicates!0 (array!37837 (_ BitVec 32) List!12249) Bool)

(assert (=> b!626452 (= res!404326 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12246))))

(declare-fun b!626453 () Bool)

(assert (=> b!626453 (= e!358903 e!358901)))

(declare-fun res!404330 () Bool)

(assert (=> b!626453 (=> (not res!404330) (not e!358901))))

(declare-fun lt!290069 () SeekEntryResult!6602)

(assert (=> b!626453 (= res!404330 (or (= lt!290069 (MissingZero!6602 i!1108)) (= lt!290069 (MissingVacant!6602 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37837 (_ BitVec 32)) SeekEntryResult!6602)

(assert (=> b!626453 (= lt!290069 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!56584 res!404331) b!626446))

(assert (= (and b!626446 res!404328) b!626451))

(assert (= (and b!626451 res!404329) b!626450))

(assert (= (and b!626450 res!404332) b!626447))

(assert (= (and b!626447 res!404325) b!626453))

(assert (= (and b!626453 res!404330) b!626449))

(assert (= (and b!626449 res!404333) b!626452))

(assert (= (and b!626452 res!404326) b!626445))

(assert (= (and b!626445 res!404327) b!626448))

(declare-fun m!601873 () Bool)

(assert (=> b!626450 m!601873))

(declare-fun m!601875 () Bool)

(assert (=> b!626448 m!601875))

(assert (=> b!626448 m!601875))

(declare-fun m!601877 () Bool)

(assert (=> b!626448 m!601877))

(declare-fun m!601879 () Bool)

(assert (=> b!626445 m!601879))

(declare-fun m!601881 () Bool)

(assert (=> b!626445 m!601881))

(declare-fun m!601883 () Bool)

(assert (=> b!626445 m!601883))

(declare-fun m!601885 () Bool)

(assert (=> b!626453 m!601885))

(declare-fun m!601887 () Bool)

(assert (=> b!626449 m!601887))

(declare-fun m!601889 () Bool)

(assert (=> b!626452 m!601889))

(assert (=> b!626451 m!601875))

(assert (=> b!626451 m!601875))

(declare-fun m!601891 () Bool)

(assert (=> b!626451 m!601891))

(declare-fun m!601893 () Bool)

(assert (=> b!626447 m!601893))

(declare-fun m!601895 () Bool)

(assert (=> start!56584 m!601895))

(declare-fun m!601897 () Bool)

(assert (=> start!56584 m!601897))

(push 1)

(assert (not b!626448))

(assert (not b!626450))

(assert (not start!56584))

(assert (not b!626452))

(assert (not b!626453))

(assert (not b!626451))

(assert (not b!626447))

(assert (not b!626449))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

