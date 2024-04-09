; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56644 () Bool)

(assert start!56644)

(declare-fun b!627379 () Bool)

(declare-fun e!359173 () Bool)

(declare-fun e!359172 () Bool)

(assert (=> b!627379 (= e!359173 e!359172)))

(declare-fun res!405267 () Bool)

(assert (=> b!627379 (=> (not res!405267) (not e!359172))))

(declare-datatypes ((SeekEntryResult!6632 0))(
  ( (MissingZero!6632 (index!28811 (_ BitVec 32))) (Found!6632 (index!28812 (_ BitVec 32))) (Intermediate!6632 (undefined!7444 Bool) (index!28813 (_ BitVec 32)) (x!57573 (_ BitVec 32))) (Undefined!6632) (MissingVacant!6632 (index!28814 (_ BitVec 32))) )
))
(declare-fun lt!290250 () SeekEntryResult!6632)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627379 (= res!405267 (or (= lt!290250 (MissingZero!6632 i!1108)) (= lt!290250 (MissingVacant!6632 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37897 0))(
  ( (array!37898 (arr!18185 (Array (_ BitVec 32) (_ BitVec 64))) (size!18549 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37897)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37897 (_ BitVec 32)) SeekEntryResult!6632)

(assert (=> b!627379 (= lt!290250 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627380 () Bool)

(declare-fun res!405269 () Bool)

(assert (=> b!627380 (=> (not res!405269) (not e!359172))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37897 (_ BitVec 32)) Bool)

(assert (=> b!627380 (= res!405269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627381 () Bool)

(declare-fun res!405264 () Bool)

(assert (=> b!627381 (=> (not res!405264) (not e!359172))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!627381 (= res!405264 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18185 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18185 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627382 () Bool)

(assert (=> b!627382 (= e!359172 false)))

(declare-fun lt!290249 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627382 (= lt!290249 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627383 () Bool)

(declare-fun res!405266 () Bool)

(assert (=> b!627383 (=> (not res!405266) (not e!359173))))

(declare-fun arrayContainsKey!0 (array!37897 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627383 (= res!405266 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!405260 () Bool)

(assert (=> start!56644 (=> (not res!405260) (not e!359173))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56644 (= res!405260 (validMask!0 mask!3053))))

(assert (=> start!56644 e!359173))

(assert (=> start!56644 true))

(declare-fun array_inv!13959 (array!37897) Bool)

(assert (=> start!56644 (array_inv!13959 a!2986)))

(declare-fun b!627384 () Bool)

(declare-fun res!405263 () Bool)

(assert (=> b!627384 (=> (not res!405263) (not e!359172))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37897 (_ BitVec 32)) SeekEntryResult!6632)

(assert (=> b!627384 (= res!405263 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18185 a!2986) j!136) a!2986 mask!3053) (Found!6632 j!136)))))

(declare-fun b!627385 () Bool)

(declare-fun res!405268 () Bool)

(assert (=> b!627385 (=> (not res!405268) (not e!359172))))

(assert (=> b!627385 (= res!405268 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18185 a!2986) index!984) (select (arr!18185 a!2986) j!136))) (not (= (select (arr!18185 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627386 () Bool)

(declare-fun res!405261 () Bool)

(assert (=> b!627386 (=> (not res!405261) (not e!359173))))

(assert (=> b!627386 (= res!405261 (and (= (size!18549 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18549 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18549 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627387 () Bool)

(declare-fun res!405259 () Bool)

(assert (=> b!627387 (=> (not res!405259) (not e!359172))))

(declare-datatypes ((List!12279 0))(
  ( (Nil!12276) (Cons!12275 (h!13320 (_ BitVec 64)) (t!18515 List!12279)) )
))
(declare-fun arrayNoDuplicates!0 (array!37897 (_ BitVec 32) List!12279) Bool)

(assert (=> b!627387 (= res!405259 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12276))))

(declare-fun b!627388 () Bool)

(declare-fun res!405262 () Bool)

(assert (=> b!627388 (=> (not res!405262) (not e!359173))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627388 (= res!405262 (validKeyInArray!0 k!1786))))

(declare-fun b!627389 () Bool)

(declare-fun res!405265 () Bool)

(assert (=> b!627389 (=> (not res!405265) (not e!359173))))

(assert (=> b!627389 (= res!405265 (validKeyInArray!0 (select (arr!18185 a!2986) j!136)))))

(assert (= (and start!56644 res!405260) b!627386))

(assert (= (and b!627386 res!405261) b!627389))

(assert (= (and b!627389 res!405265) b!627388))

(assert (= (and b!627388 res!405262) b!627383))

(assert (= (and b!627383 res!405266) b!627379))

(assert (= (and b!627379 res!405267) b!627380))

(assert (= (and b!627380 res!405269) b!627387))

(assert (= (and b!627387 res!405259) b!627381))

(assert (= (and b!627381 res!405264) b!627384))

(assert (= (and b!627384 res!405263) b!627385))

(assert (= (and b!627385 res!405268) b!627382))

(declare-fun m!602733 () Bool)

(assert (=> b!627383 m!602733))

(declare-fun m!602735 () Bool)

(assert (=> b!627389 m!602735))

(assert (=> b!627389 m!602735))

(declare-fun m!602737 () Bool)

(assert (=> b!627389 m!602737))

(declare-fun m!602739 () Bool)

(assert (=> b!627382 m!602739))

(declare-fun m!602741 () Bool)

(assert (=> b!627380 m!602741))

(declare-fun m!602743 () Bool)

(assert (=> b!627385 m!602743))

(assert (=> b!627385 m!602735))

(declare-fun m!602745 () Bool)

(assert (=> b!627388 m!602745))

(assert (=> b!627384 m!602735))

(assert (=> b!627384 m!602735))

(declare-fun m!602747 () Bool)

(assert (=> b!627384 m!602747))

(declare-fun m!602749 () Bool)

(assert (=> b!627381 m!602749))

(declare-fun m!602751 () Bool)

(assert (=> b!627381 m!602751))

(declare-fun m!602753 () Bool)

(assert (=> b!627381 m!602753))

(declare-fun m!602755 () Bool)

(assert (=> b!627379 m!602755))

(declare-fun m!602757 () Bool)

(assert (=> start!56644 m!602757))

(declare-fun m!602759 () Bool)

(assert (=> start!56644 m!602759))

(declare-fun m!602761 () Bool)

(assert (=> b!627387 m!602761))

(push 1)

(assert (not b!627388))

(assert (not b!627379))

