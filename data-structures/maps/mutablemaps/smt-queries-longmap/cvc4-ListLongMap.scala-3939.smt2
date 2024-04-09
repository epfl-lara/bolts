; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53666 () Bool)

(assert start!53666)

(declare-fun b!584379 () Bool)

(declare-fun res!372346 () Bool)

(declare-fun e!334590 () Bool)

(assert (=> b!584379 (=> (not res!372346) (not e!334590))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36521 0))(
  ( (array!36522 (arr!17531 (Array (_ BitVec 32) (_ BitVec 64))) (size!17895 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36521)

(assert (=> b!584379 (= res!372346 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17531 a!2986) index!984) (select (arr!17531 a!2986) j!136))) (not (= (select (arr!17531 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584380 () Bool)

(declare-fun e!334589 () Bool)

(assert (=> b!584380 (= e!334589 e!334590)))

(declare-fun res!372348 () Bool)

(assert (=> b!584380 (=> (not res!372348) (not e!334590))))

(declare-datatypes ((SeekEntryResult!5978 0))(
  ( (MissingZero!5978 (index!26139 (_ BitVec 32))) (Found!5978 (index!26140 (_ BitVec 32))) (Intermediate!5978 (undefined!6790 Bool) (index!26141 (_ BitVec 32)) (x!54994 (_ BitVec 32))) (Undefined!5978) (MissingVacant!5978 (index!26142 (_ BitVec 32))) )
))
(declare-fun lt!265571 () SeekEntryResult!5978)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584380 (= res!372348 (or (= lt!265571 (MissingZero!5978 i!1108)) (= lt!265571 (MissingVacant!5978 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36521 (_ BitVec 32)) SeekEntryResult!5978)

(assert (=> b!584380 (= lt!265571 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!584381 () Bool)

(declare-fun res!372354 () Bool)

(assert (=> b!584381 (=> (not res!372354) (not e!334590))))

(declare-datatypes ((List!11625 0))(
  ( (Nil!11622) (Cons!11621 (h!12666 (_ BitVec 64)) (t!17861 List!11625)) )
))
(declare-fun arrayNoDuplicates!0 (array!36521 (_ BitVec 32) List!11625) Bool)

(assert (=> b!584381 (= res!372354 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11622))))

(declare-fun b!584382 () Bool)

(declare-fun res!372350 () Bool)

(assert (=> b!584382 (=> (not res!372350) (not e!334589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584382 (= res!372350 (validKeyInArray!0 (select (arr!17531 a!2986) j!136)))))

(declare-fun b!584383 () Bool)

(declare-fun res!372352 () Bool)

(assert (=> b!584383 (=> (not res!372352) (not e!334589))))

(declare-fun arrayContainsKey!0 (array!36521 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584383 (= res!372352 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584384 () Bool)

(declare-fun e!334591 () Bool)

(assert (=> b!584384 (= e!334591 false)))

(declare-fun lt!265569 () SeekEntryResult!5978)

(declare-fun lt!265570 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36521 (_ BitVec 32)) SeekEntryResult!5978)

(assert (=> b!584384 (= lt!265569 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265570 vacantSpotIndex!68 (select (arr!17531 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584385 () Bool)

(declare-fun res!372351 () Bool)

(assert (=> b!584385 (=> (not res!372351) (not e!334590))))

(assert (=> b!584385 (= res!372351 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17531 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17531 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584386 () Bool)

(declare-fun res!372347 () Bool)

(assert (=> b!584386 (=> (not res!372347) (not e!334590))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36521 (_ BitVec 32)) Bool)

(assert (=> b!584386 (= res!372347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584387 () Bool)

(assert (=> b!584387 (= e!334590 e!334591)))

(declare-fun res!372345 () Bool)

(assert (=> b!584387 (=> (not res!372345) (not e!334591))))

(assert (=> b!584387 (= res!372345 (and (bvsge lt!265570 #b00000000000000000000000000000000) (bvslt lt!265570 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584387 (= lt!265570 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584389 () Bool)

(declare-fun res!372349 () Bool)

(assert (=> b!584389 (=> (not res!372349) (not e!334589))))

(assert (=> b!584389 (= res!372349 (and (= (size!17895 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17895 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17895 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584390 () Bool)

(declare-fun res!372356 () Bool)

(assert (=> b!584390 (=> (not res!372356) (not e!334590))))

(assert (=> b!584390 (= res!372356 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17531 a!2986) j!136) a!2986 mask!3053) (Found!5978 j!136)))))

(declare-fun res!372355 () Bool)

(assert (=> start!53666 (=> (not res!372355) (not e!334589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53666 (= res!372355 (validMask!0 mask!3053))))

(assert (=> start!53666 e!334589))

(assert (=> start!53666 true))

(declare-fun array_inv!13305 (array!36521) Bool)

(assert (=> start!53666 (array_inv!13305 a!2986)))

(declare-fun b!584388 () Bool)

(declare-fun res!372353 () Bool)

(assert (=> b!584388 (=> (not res!372353) (not e!334589))))

(assert (=> b!584388 (= res!372353 (validKeyInArray!0 k!1786))))

(assert (= (and start!53666 res!372355) b!584389))

(assert (= (and b!584389 res!372349) b!584382))

(assert (= (and b!584382 res!372350) b!584388))

(assert (= (and b!584388 res!372353) b!584383))

(assert (= (and b!584383 res!372352) b!584380))

(assert (= (and b!584380 res!372348) b!584386))

(assert (= (and b!584386 res!372347) b!584381))

(assert (= (and b!584381 res!372354) b!584385))

(assert (= (and b!584385 res!372351) b!584390))

(assert (= (and b!584390 res!372356) b!584379))

(assert (= (and b!584379 res!372346) b!584387))

(assert (= (and b!584387 res!372345) b!584384))

(declare-fun m!562769 () Bool)

(assert (=> b!584382 m!562769))

(assert (=> b!584382 m!562769))

(declare-fun m!562771 () Bool)

(assert (=> b!584382 m!562771))

(declare-fun m!562773 () Bool)

(assert (=> b!584385 m!562773))

(declare-fun m!562775 () Bool)

(assert (=> b!584385 m!562775))

(declare-fun m!562777 () Bool)

(assert (=> b!584385 m!562777))

(assert (=> b!584390 m!562769))

(assert (=> b!584390 m!562769))

(declare-fun m!562779 () Bool)

(assert (=> b!584390 m!562779))

(assert (=> b!584384 m!562769))

(assert (=> b!584384 m!562769))

(declare-fun m!562781 () Bool)

(assert (=> b!584384 m!562781))

(declare-fun m!562783 () Bool)

(assert (=> b!584381 m!562783))

(declare-fun m!562785 () Bool)

(assert (=> start!53666 m!562785))

(declare-fun m!562787 () Bool)

(assert (=> start!53666 m!562787))

(declare-fun m!562789 () Bool)

(assert (=> b!584379 m!562789))

(assert (=> b!584379 m!562769))

(declare-fun m!562791 () Bool)

(assert (=> b!584386 m!562791))

(declare-fun m!562793 () Bool)

(assert (=> b!584387 m!562793))

(declare-fun m!562795 () Bool)

(assert (=> b!584388 m!562795))

(declare-fun m!562797 () Bool)

(assert (=> b!584383 m!562797))

(declare-fun m!562799 () Bool)

(assert (=> b!584380 m!562799))

(push 1)

(assert (not b!584388))

