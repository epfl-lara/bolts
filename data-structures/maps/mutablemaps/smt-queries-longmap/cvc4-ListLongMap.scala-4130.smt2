; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56338 () Bool)

(assert start!56338)

(declare-fun b!624384 () Bool)

(declare-fun res!402716 () Bool)

(declare-fun e!358021 () Bool)

(assert (=> b!624384 (=> (not res!402716) (not e!358021))))

(declare-datatypes ((array!37726 0))(
  ( (array!37727 (arr!18104 (Array (_ BitVec 32) (_ BitVec 64))) (size!18468 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37726)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37726 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624384 (= res!402716 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624385 () Bool)

(declare-fun res!402717 () Bool)

(assert (=> b!624385 (=> (not res!402717) (not e!358021))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624385 (= res!402717 (validKeyInArray!0 (select (arr!18104 a!2986) j!136)))))

(declare-fun b!624386 () Bool)

(declare-fun res!402722 () Bool)

(assert (=> b!624386 (=> (not res!402722) (not e!358021))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624386 (= res!402722 (and (= (size!18468 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18468 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18468 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624387 () Bool)

(declare-fun res!402714 () Bool)

(declare-fun e!358020 () Bool)

(assert (=> b!624387 (=> (not res!402714) (not e!358020))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37726 (_ BitVec 32)) Bool)

(assert (=> b!624387 (= res!402714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!402721 () Bool)

(assert (=> start!56338 (=> (not res!402721) (not e!358021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56338 (= res!402721 (validMask!0 mask!3053))))

(assert (=> start!56338 e!358021))

(assert (=> start!56338 true))

(declare-fun array_inv!13878 (array!37726) Bool)

(assert (=> start!56338 (array_inv!13878 a!2986)))

(declare-fun b!624388 () Bool)

(assert (=> b!624388 (= e!358020 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6551 0))(
  ( (MissingZero!6551 (index!28487 (_ BitVec 32))) (Found!6551 (index!28488 (_ BitVec 32))) (Intermediate!6551 (undefined!7363 Bool) (index!28489 (_ BitVec 32)) (x!57267 (_ BitVec 32))) (Undefined!6551) (MissingVacant!6551 (index!28490 (_ BitVec 32))) )
))
(declare-fun lt!289578 () SeekEntryResult!6551)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37726 (_ BitVec 32)) SeekEntryResult!6551)

(assert (=> b!624388 (= lt!289578 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18104 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!624389 () Bool)

(declare-fun res!402715 () Bool)

(assert (=> b!624389 (=> (not res!402715) (not e!358020))))

(assert (=> b!624389 (= res!402715 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18104 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18104 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!624390 () Bool)

(declare-fun res!402719 () Bool)

(assert (=> b!624390 (=> (not res!402719) (not e!358020))))

(declare-datatypes ((List!12198 0))(
  ( (Nil!12195) (Cons!12194 (h!13239 (_ BitVec 64)) (t!18434 List!12198)) )
))
(declare-fun arrayNoDuplicates!0 (array!37726 (_ BitVec 32) List!12198) Bool)

(assert (=> b!624390 (= res!402719 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12195))))

(declare-fun b!624391 () Bool)

(declare-fun res!402720 () Bool)

(assert (=> b!624391 (=> (not res!402720) (not e!358021))))

(assert (=> b!624391 (= res!402720 (validKeyInArray!0 k!1786))))

(declare-fun b!624392 () Bool)

(assert (=> b!624392 (= e!358021 e!358020)))

(declare-fun res!402718 () Bool)

(assert (=> b!624392 (=> (not res!402718) (not e!358020))))

(declare-fun lt!289577 () SeekEntryResult!6551)

(assert (=> b!624392 (= res!402718 (or (= lt!289577 (MissingZero!6551 i!1108)) (= lt!289577 (MissingVacant!6551 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37726 (_ BitVec 32)) SeekEntryResult!6551)

(assert (=> b!624392 (= lt!289577 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!56338 res!402721) b!624386))

(assert (= (and b!624386 res!402722) b!624385))

(assert (= (and b!624385 res!402717) b!624391))

(assert (= (and b!624391 res!402720) b!624384))

(assert (= (and b!624384 res!402716) b!624392))

(assert (= (and b!624392 res!402718) b!624387))

(assert (= (and b!624387 res!402714) b!624390))

(assert (= (and b!624390 res!402719) b!624389))

(assert (= (and b!624389 res!402715) b!624388))

(declare-fun m!600127 () Bool)

(assert (=> start!56338 m!600127))

(declare-fun m!600129 () Bool)

(assert (=> start!56338 m!600129))

(declare-fun m!600131 () Bool)

(assert (=> b!624389 m!600131))

(declare-fun m!600133 () Bool)

(assert (=> b!624389 m!600133))

(declare-fun m!600135 () Bool)

(assert (=> b!624389 m!600135))

(declare-fun m!600137 () Bool)

(assert (=> b!624385 m!600137))

(assert (=> b!624385 m!600137))

(declare-fun m!600139 () Bool)

(assert (=> b!624385 m!600139))

(declare-fun m!600141 () Bool)

(assert (=> b!624384 m!600141))

(declare-fun m!600143 () Bool)

(assert (=> b!624391 m!600143))

(assert (=> b!624388 m!600137))

(assert (=> b!624388 m!600137))

(declare-fun m!600145 () Bool)

(assert (=> b!624388 m!600145))

(declare-fun m!600147 () Bool)

(assert (=> b!624387 m!600147))

(declare-fun m!600149 () Bool)

(assert (=> b!624392 m!600149))

(declare-fun m!600151 () Bool)

(assert (=> b!624390 m!600151))

(push 1)

(assert (not b!624387))

(assert (not b!624385))

(assert (not b!624390))

(assert (not b!624392))

(assert (not b!624384))

(assert (not start!56338))

(assert (not b!624388))

(assert (not b!624391))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

