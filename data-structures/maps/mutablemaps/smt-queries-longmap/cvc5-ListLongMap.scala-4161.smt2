; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56664 () Bool)

(assert start!56664)

(declare-fun b!627709 () Bool)

(declare-fun res!405589 () Bool)

(declare-fun e!359261 () Bool)

(assert (=> b!627709 (=> (not res!405589) (not e!359261))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627709 (= res!405589 (validKeyInArray!0 k!1786))))

(declare-fun b!627710 () Bool)

(declare-fun res!405591 () Bool)

(declare-fun e!359262 () Bool)

(assert (=> b!627710 (=> (not res!405591) (not e!359262))))

(declare-datatypes ((array!37917 0))(
  ( (array!37918 (arr!18195 (Array (_ BitVec 32) (_ BitVec 64))) (size!18559 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37917)

(declare-datatypes ((List!12289 0))(
  ( (Nil!12286) (Cons!12285 (h!13330 (_ BitVec 64)) (t!18525 List!12289)) )
))
(declare-fun arrayNoDuplicates!0 (array!37917 (_ BitVec 32) List!12289) Bool)

(assert (=> b!627710 (= res!405591 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12286))))

(declare-fun b!627712 () Bool)

(declare-fun res!405597 () Bool)

(assert (=> b!627712 (=> (not res!405597) (not e!359262))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37917 (_ BitVec 32)) Bool)

(assert (=> b!627712 (= res!405597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627713 () Bool)

(declare-fun res!405598 () Bool)

(assert (=> b!627713 (=> (not res!405598) (not e!359261))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!627713 (= res!405598 (validKeyInArray!0 (select (arr!18195 a!2986) j!136)))))

(declare-fun b!627714 () Bool)

(declare-fun res!405590 () Bool)

(assert (=> b!627714 (=> (not res!405590) (not e!359261))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627714 (= res!405590 (and (= (size!18559 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18559 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18559 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627715 () Bool)

(assert (=> b!627715 (= e!359262 false)))

(declare-fun lt!290310 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627715 (= lt!290310 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627716 () Bool)

(declare-fun res!405596 () Bool)

(assert (=> b!627716 (=> (not res!405596) (not e!359262))))

(assert (=> b!627716 (= res!405596 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18195 a!2986) index!984) (select (arr!18195 a!2986) j!136))) (not (= (select (arr!18195 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627717 () Bool)

(assert (=> b!627717 (= e!359261 e!359262)))

(declare-fun res!405592 () Bool)

(assert (=> b!627717 (=> (not res!405592) (not e!359262))))

(declare-datatypes ((SeekEntryResult!6642 0))(
  ( (MissingZero!6642 (index!28851 (_ BitVec 32))) (Found!6642 (index!28852 (_ BitVec 32))) (Intermediate!6642 (undefined!7454 Bool) (index!28853 (_ BitVec 32)) (x!57615 (_ BitVec 32))) (Undefined!6642) (MissingVacant!6642 (index!28854 (_ BitVec 32))) )
))
(declare-fun lt!290309 () SeekEntryResult!6642)

(assert (=> b!627717 (= res!405592 (or (= lt!290309 (MissingZero!6642 i!1108)) (= lt!290309 (MissingVacant!6642 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37917 (_ BitVec 32)) SeekEntryResult!6642)

(assert (=> b!627717 (= lt!290309 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627718 () Bool)

(declare-fun res!405593 () Bool)

(assert (=> b!627718 (=> (not res!405593) (not e!359262))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!627718 (= res!405593 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18195 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18195 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627719 () Bool)

(declare-fun res!405595 () Bool)

(assert (=> b!627719 (=> (not res!405595) (not e!359262))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37917 (_ BitVec 32)) SeekEntryResult!6642)

(assert (=> b!627719 (= res!405595 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18195 a!2986) j!136) a!2986 mask!3053) (Found!6642 j!136)))))

(declare-fun b!627711 () Bool)

(declare-fun res!405599 () Bool)

(assert (=> b!627711 (=> (not res!405599) (not e!359261))))

(declare-fun arrayContainsKey!0 (array!37917 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627711 (= res!405599 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!405594 () Bool)

(assert (=> start!56664 (=> (not res!405594) (not e!359261))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56664 (= res!405594 (validMask!0 mask!3053))))

(assert (=> start!56664 e!359261))

(assert (=> start!56664 true))

(declare-fun array_inv!13969 (array!37917) Bool)

(assert (=> start!56664 (array_inv!13969 a!2986)))

(assert (= (and start!56664 res!405594) b!627714))

(assert (= (and b!627714 res!405590) b!627713))

(assert (= (and b!627713 res!405598) b!627709))

(assert (= (and b!627709 res!405589) b!627711))

(assert (= (and b!627711 res!405599) b!627717))

(assert (= (and b!627717 res!405592) b!627712))

(assert (= (and b!627712 res!405597) b!627710))

(assert (= (and b!627710 res!405591) b!627718))

(assert (= (and b!627718 res!405593) b!627719))

(assert (= (and b!627719 res!405595) b!627716))

(assert (= (and b!627716 res!405596) b!627715))

(declare-fun m!603033 () Bool)

(assert (=> b!627715 m!603033))

(declare-fun m!603035 () Bool)

(assert (=> b!627719 m!603035))

(assert (=> b!627719 m!603035))

(declare-fun m!603037 () Bool)

(assert (=> b!627719 m!603037))

(declare-fun m!603039 () Bool)

(assert (=> b!627710 m!603039))

(declare-fun m!603041 () Bool)

(assert (=> b!627711 m!603041))

(declare-fun m!603043 () Bool)

(assert (=> b!627712 m!603043))

(declare-fun m!603045 () Bool)

(assert (=> b!627718 m!603045))

(declare-fun m!603047 () Bool)

(assert (=> b!627718 m!603047))

(declare-fun m!603049 () Bool)

(assert (=> b!627718 m!603049))

(declare-fun m!603051 () Bool)

(assert (=> start!56664 m!603051))

(declare-fun m!603053 () Bool)

(assert (=> start!56664 m!603053))

(declare-fun m!603055 () Bool)

(assert (=> b!627716 m!603055))

(assert (=> b!627716 m!603035))

(declare-fun m!603057 () Bool)

(assert (=> b!627709 m!603057))

(assert (=> b!627713 m!603035))

(assert (=> b!627713 m!603035))

(declare-fun m!603059 () Bool)

(assert (=> b!627713 m!603059))

(declare-fun m!603061 () Bool)

(assert (=> b!627717 m!603061))

(push 1)

